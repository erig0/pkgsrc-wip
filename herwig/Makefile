# $NetBSD: Makefile,v 1.3 2012/11/14 00:16:09 othyro Exp $
#

DISTNAME=	herwig6510
PKGNAME=	herwig-6.510
CATEGORIES=	math
MASTER_SITES=	http://hepwww.rl.ac.uk/theory/seymour/herwig/
EXTRACT_SUFX=	.f

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://hepwww.rl.ac.uk/theory/seymour/herwig/
COMMENT=	Monte Carlo package for simulating Hadron Emission Reactions

WRKSRC=		${WRKDIR}/herwig6510.f

NO_BUILD=	yes
USE_LANGUAGES=	# none

INSTALLATION_DIRS=	lib

do-install:
	${INSTALL_DATA} ${WRKDIR}/herwig6510.f ${DESTDIR}${PREFIX}/lib/herwig6510.f

.include "../../mk/bsd.pkg.mk"
