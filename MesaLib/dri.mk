# $NetBSD: dri.mk,v 1.1 2008/02/26 06:47:36 bsadewitz Exp $
#
# Currently, this is for convenience only.
#
.if !defined(DRI_MK)
DRI_MK= 	# defined

.  include "../../textproc/expat/buildlink3.mk"
.  include "../../x11/glproto/buildlink3.mk"
.  include "../../x11/libXdamage/buildlink3.mk"
.  include "../../x11/libXfixes/buildlink3.mk"
.  include "../../x11/libdrm/buildlink3.mk"
.  include "../../x11/libXxf86vm/buildlink3.mk"
.  include "../../x11/xf86driproto/buildlink3.mk"
.  include "../../x11/xf86vidmodeproto/buildlink3.mk"
.endif
