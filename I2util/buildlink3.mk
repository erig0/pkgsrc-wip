# $NetBSD: buildlink3.mk,v 1.1 2015/06/03 00:37:05 mbowie Exp $

BUILDLINK_TREE+=	I2util

.if !defined(I2UTIL_BUILDLINK3_MK)
I2UTIL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.I2util+=	I2util>=1.2
BUILDLINK_PKGSRCDIR.I2util?=	../../wip/I2util
.endif	# I2UTIL_BUILDLINK3_MK

BUILDLINK_TREE+=	-I2util
