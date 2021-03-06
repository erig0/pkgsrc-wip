$NetBSD$

--- services/service_manager/embedder/main.cc.orig	2020-07-15 18:56:47.000000000 +0000
+++ services/service_manager/embedder/main.cc
@@ -275,7 +275,7 @@ int Main(const MainParams& params) {
 #endif
     base::EnableTerminationOnOutOfMemory();
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
     // The various desktop environments set this environment variable that
     // allows the dbus client library to connect directly to the bus. When this
     // variable is not set (test environments like xvfb-run), the dbus client
