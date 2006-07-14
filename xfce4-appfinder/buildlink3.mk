# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/07/14 10:43:16 thomasklausner Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
XFCE4_APPFINDER_BUILDLINK3_MK:=	${XFCE4_APPFINDER_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	xfce4-appfinder
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nxfce4-appfinder}
BUILDLINK_PACKAGES+=	xfce4-appfinder
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}xfce4-appfinder

.if ${XFCE4_APPFINDER_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.xfce4-appfinder+=	xfce4-appfinder>=4.3.90.2
BUILDLINK_PKGSRCDIR.xfce4-appfinder?=	../../wip/xfce4-appfinder
.endif	# XFCE4_APPFINDER_BUILDLINK3_MK

.include "../../wip/libxfce4gui/buildlink3.mk"
.include "../../wip/xfce4-dev-tools/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
