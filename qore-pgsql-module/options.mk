# $NetBSD: options.mk,v 1.1 2014/02/16 17:20:26 nros Exp $
#

PKG_OPTIONS_VAR=	PKG_OPTIONS.qore-pgsql-module
PKG_SUPPORTED_OPTIONS=	debug
.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+=        --enable-debug
.else
CONFIGURE_ARGS+=        --disable-debug
.endif
