$NetBSD: patch-src_util_u__queue.c,v 1.2 2019/01/10 22:30:11 tnn Exp $

atexit() is not a good idea in shared libraries.

FreeBSD reported atexit bug for 10.6:
https://bugs.freedesktop.org/show_bug.cgi?id=91869

NetBSD option for pthread_setaffinity_np idiom.

--- src/util/u_queue.c.orig	2019-03-15 01:02:19.000000000 +0000
+++ src/util/u_queue.c
@@ -46,11 +46,22 @@ static once_flag atexit_once_flag = ONCE
 static struct list_head queue_list;
 static mtx_t exit_mutex = _MTX_INITIALIZER_NP;
 
+#if defined(HAVE_NOATEXIT)
+static int global_init_called = 0;
+
+static void __attribute__((__destructor__))
+#else
 static void
+#endif
 atexit_handler(void)
 {
    struct util_queue *iter;
 
+#if defined(HAVE_NOATEXIT)
+   if (!global_init_called)
+      return;
+#endif
+
    mtx_lock(&exit_mutex);
    /* Wait for all queues to assert idle. */
    LIST_FOR_EACH_ENTRY(iter, &queue_list, head) {
@@ -63,7 +74,11 @@ static void
 global_init(void)
 {
    LIST_INITHEAD(&queue_list);
+#if defined(HAVE_NOATEXIT)
+   global_init_called = 1;
+#else
    atexit(atexit_handler);
+#endif
 }
 
 static void
@@ -244,12 +259,25 @@ util_queue_thread_func(void *input)
       /* Don't inherit the thread affinity from the parent thread.
        * Set the full mask.
        */
+#if defined(__NetBSD__) && defined(SETAFFINITY_NP_NETBSD)
+      cpuset_t *cpuset;
+      cpuset = cpuset_create();
+      if (cpuset != NULL) {
+         cpuset_zero(cpuset);
+         for (unsigned i = 0; i < cpuset_size(cpuset); i++)
+            cpuset_set(i, cpuset);
+
+         pthread_setaffinity_np(pthread_self(), cpuset_size(cpuset), cpuset);
+         cpuset_destroy(cpuset);
+      }
+#else
       cpu_set_t cpuset;
       CPU_ZERO(&cpuset);
       for (unsigned i = 0; i < CPU_SETSIZE; i++)
          CPU_SET(i, &cpuset);
 
       pthread_setaffinity_np(pthread_self(), sizeof(cpuset), &cpuset);
+#endif
    }
 #endif
 
