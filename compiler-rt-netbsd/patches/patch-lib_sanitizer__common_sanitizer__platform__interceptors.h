$NetBSD$

--- lib/sanitizer_common/sanitizer_platform_interceptors.h.orig	2018-04-25 21:13:40.000000000 +0000
+++ lib/sanitizer_common/sanitizer_platform_interceptors.h
@@ -495,4 +495,10 @@
 #define SANITIZER_INTERCEPT_PROTOENT SI_NETBSD
 #define SANITIZER_INTERCEPT_NETENT SI_NETBSD
 
+#define SANITIZER_INTERCEPT_KVM SI_NETBSD
+#define SANITIZER_INTERCEPT_SYSCTL SI_NETBSD
+#define SANITIZER_INTERCEPT_ATOF SI_NETBSD
+#define SANITIZER_INTERCEPT_FTS SI_NETBSD
+#define SANITIZER_INTERCEPT_REGEX SI_NETBSD
+
 #endif  // #ifndef SANITIZER_PLATFORM_INTERCEPTORS_H
