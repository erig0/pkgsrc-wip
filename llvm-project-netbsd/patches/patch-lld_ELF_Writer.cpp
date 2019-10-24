$NetBSD$

--- lld/ELF/Writer.cpp.orig	2019-10-23 20:24:31.984556869 +0000
+++ lld/ELF/Writer.cpp
@@ -2172,14 +2172,16 @@ std::vector<PhdrEntry *> Writer<ELFT>::c
   if (OutputSection *cmd = findSection(".openbsd.randomdata", partNo))
     addHdr(PT_OPENBSD_RANDOMIZE, cmd->getPhdrFlags())->add(cmd);
 
-  // PT_GNU_STACK is a special section to tell the loader to make the
-  // pages for the stack non-executable. If you really want an executable
-  // stack, you can pass -z execstack, but that's not recommended for
-  // security reasons.
-  unsigned perm = PF_R | PF_W;
-  if (config->zExecstack)
-    perm |= PF_X;
-  addHdr(PT_GNU_STACK, perm)->p_memsz = config->zStackSize;
+  if (config->zGnustack != GnuStackKind::None) {
+    // PT_GNU_STACK is a special section to tell the loader to make the
+    // pages for the stack non-executable. If you really want an executable
+    // stack, you can pass -z execstack, but that's not recommended for
+    // security reasons.
+    unsigned perm = PF_R | PF_W;
+    if (config->zGnustack == GnuStackKind::Exec)
+      perm |= PF_X;
+    addHdr(PT_GNU_STACK, perm)->p_memsz = config->zStackSize;
+  }
 
   // PT_OPENBSD_WXNEEDED is a OpenBSD-specific header to mark the executable
   // is expected to perform W^X violations, such as calling mprotect(2) or