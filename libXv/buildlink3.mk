# $NetBSD: buildlink3.mk,v 1.5 2006/04/18 18:27:51 jeremy-c-reed Exp $
#
# This Makefile fragment is included by packages that use libXv.
#

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBXV_BUILDLINK3_MK:=	${LIBXV_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libXv
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NlibXv}
BUILDLINK_PACKAGES+=	libXv

.if !empty(LIBXV_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libXv?=		libXv>=1.0.1
BUILDLINK_PKGSRCDIR.libXv?=		../../wip/libXv
.endif # LIBXV_BUILDLINK3_MK

.include "../../wip/libX11/buildlink3.mk"
.include "../../wip/libXext/buildlink3.mk"
.include "../../wip/videoproto/buildlink3.mk"
.include "../../x11/xproto/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
