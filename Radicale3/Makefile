# $NetBSD: Makefile,v 1.10 2020/07/13 20:05:12 wiz Exp $

DISTNAME=	Radicale-3.0.6
CATEGORIES=	net time www
MASTER_SITES=	${MASTER_SITE_PYPI:=R/Radicale/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://radicale.org/
COMMENT=	CalDAV (calendar) and CardDAV (contact) server
LICENSE=	gnu-gpl-v3

EGDIR=			share/examples/radicale

RADICALE_USER?=			www
RADICALE_GROUP?=		www
PKG_GROUPS=			${RADICALE_GROUP}
PKG_USERS=			${RADICALE_USER}:${RADICALE_GROUP}
PYTHON_VERSIONS_INCOMPATIBLE=	27

INSTALLATION_DIRS=	${EGDIR}
OWN_DIRS=		${PKG_SYSCONFDIR}/radicale
CONF_FILES+=		${EGDIR}/config ${PKG_SYSCONFDIR}/radicale/config
RCD_SCRIPTS=		radicale
FILES_SUBST+=		RADICALE_USER=${RADICALE_USER}
FILES_SUBST+=		RADICALE_GROUP=${RADICALE_GROUP}
FILES_SUBST+=		PYTHONBIN=${PYTHONBIN}

SUBST_CLASSES+=		config
SUBST_SED.config+=	-e 's,/etc,${PKG_SYSCONFDIR},g'
SUBST_SED.config+=	-e 's,/var/lib,${PREFIX}/share,g'
SUBST_FILES.config+=	radicale/config.py config rights
SUBST_STAGE.config=	pre-configure
SUBST_MESSAGE.config=	Fixing path to configuration file.

SUBST_CLASSES+=		server
SUBST_SED.server+=	-e 's,\#filesystem_folder,filesystem_folder,'
SUBST_FILES.server+=	config
SUBST_STAGE.server=	pre-configure
SUBST_MESSAGE.server=	Override default collection location

DEPENDS+=		${PYPKGPREFIX}-vobject-[0-9]*:../../textproc/py-vobject
DEPENDS+=		${PYPKGPREFIX}-defusedxml-[0-9]*:../../textproc/py-defusedxml
DEPENDS+=		${PYPKGPREFIX}-dateutil-[0-9]*:../../time/py-dateutil

# for md5 htpasswd_encryption method
DEPENDS+=		${PYPKGPREFIX}-passlib-[0-9]*:../../security/py-passlib

post-install:
	${INSTALL_DATA} ${WRKSRC}/config ${DESTDIR}${PREFIX}/${EGDIR}/config
	${INSTALL_DATA} ${WRKSRC}/rights ${DESTDIR}${PREFIX}/${EGDIR}/rights

PYTHON_VERSIONED_DEPENDENCIES+=	setuptools

.include "../../lang/python/egg.mk"
.include "../../lang/python/versioned_dependencies.mk"
.include "../../mk/bsd.pkg.mk"
