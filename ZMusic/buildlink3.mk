# $NetBSD$

BUILDLINK_TREE+=	ZMusic

.if !defined(ZMUSIC_BUILDLINK3_MK)
ZMUSIC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ZMusic+=	ZMusic>=1.1.3
BUILDLINK_PKGSRCDIR.ZMusic?=	../../wip/ZMusic
.endif # ZMUSIC_BUILDLINK3_MK

BUILDLINK_TREE+=	-ZMusic
