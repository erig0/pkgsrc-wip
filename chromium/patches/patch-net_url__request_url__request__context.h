$NetBSD$

--- net/url_request/url_request_context.h.orig	2020-07-15 18:56:00.000000000 +0000
+++ net/url_request/url_request_context.h
@@ -82,7 +82,7 @@ class NET_EXPORT URLRequestContext
   // session.
   const HttpNetworkSession::Context* GetNetworkSessionContext() const;
 
-#if (!defined(OS_WIN) && !defined(OS_LINUX)) || defined(OS_CHROMEOS)
+#if (!defined(OS_WIN) && !defined(OS_LINUX) && !defined(OS_BSD)) || defined(OS_CHROMEOS)
   // This function should not be used in Chromium, please use the version with
   // NetworkTrafficAnnotationTag in the future.
   //
