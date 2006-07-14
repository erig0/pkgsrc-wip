# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/07/14 10:43:16 thomasklausner Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBXFCE4MCS_BUILDLINK3_MK:=	${LIBXFCE4MCS_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libxfce4mcs
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibxfce4mcs}
BUILDLINK_PACKAGES+=	libxfce4mcs
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libxfce4mcs

.if ${LIBXFCE4MCS_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libxfce4mcs+=	libxfce4mcs>=4.3.90.2
BUILDLINK_PKGSRCDIR.libxfce4mcs?=	../../wip/libxfce4mcs
.endif	# LIBXFCE4MCS_BUILDLINK3_MK

.include "../../wip/libxfce4util/buildlink3.mk"
.include "../../wip/xfce4-dev-tools/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
