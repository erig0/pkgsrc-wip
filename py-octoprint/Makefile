# $NetBSD$

DISTNAME=	${GITHUB_PROJECT}-${PKGVERSION_NOREV}
PKGNAME=	${PYPKGPREFIX}-octoprint-1.5.2
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_GITHUB:=OctoPrint/}
GITHUB_PROJECT=	OctoPrint
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	khorben@defora.org
HOMEPAGE=	https://github.com/OctoPrint/OctoPrint/
COMMENT=	Snappy web interface for 3D printers
LICENSE=	gnu-agpl-v3

RCD_SCRIPTS=	octoprint

PYTHON_VERSIONS_ACCEPTED=	37 36

DEPENDS+=	${PYPKGPREFIX}-blinker>=1.4:../../devel/py-blinker
DEPENDS+=	${PYPKGPREFIX}-cachelib>=0.1:../../wip/py-cachelib
DEPENDS+=	${PYPKGPREFIX}-click>=7.1.2:../../devel/py-click
DEPENDS+=	${PYPKGPREFIX}-emoji>=0.5.4:../../converters/py-emoji
DEPENDS+=	${PYPKGPREFIX}-feedparser>=6.0.2:../../textproc/py-feedparser
DEPENDS+=	${PYPKGPREFIX}-filetype>=1.0.7:../../sysutils/py-filetype
DEPENDS+=	${PYPKGPREFIX}-flask>=1.1.2:../../www/py-flask
DEPENDS+=	${PYPKGPREFIX}-flask-assets>=2.0:../../www/py-flask-assets
DEPENDS+=	${PYPKGPREFIX}-flask-babel>=1.0:../../www/py-flask-babel
DEPENDS+=	${PYPKGPREFIX}-flask-login>=0.5:../../www/py-flask-login
DEPENDS+=	${PYPKGPREFIX}-frozendict>=1.2:../../devel/py-frozendict
DEPENDS+=	${PYPKGPREFIX}-future>=0.18.2:../../devel/py-future
DEPENDS+=	${PYPKGPREFIX}-importlib-metadata>=0.18.2:../../devel/py-importlib-metadata
DEPENDS+=	${PYPKGPREFIX}-jinja2>=2.11.2:../../textproc/py-jinja2
DEPENDS+=	${PYPKGPREFIX}-markdown>=3.1:../../textproc/py-markdown
DEPENDS+=	${PYPKGPREFIX}-netaddr>=0.7.19:../../net/py-netaddr
DEPENDS+=	${PYPKGPREFIX}-netifaces>=0.10.9:../../net/py-netifaces
DEPENDS+=	${PYPKGPREFIX}-octoprint-filecheck>=2020.8.7:../../wip/py-octoprint-filecheck
DEPENDS+=	${PYPKGPREFIX}-octoprint-firmwarecheck>=2020.9.23:../../wip/py-octoprint-firmwarecheck
DEPENDS+=	${PYPKGPREFIX}-pkginfo>=1.5.0.1:../../devel/py-pkginfo
DEPENDS+=	${PYPKGPREFIX}-psutil>=5.7:../../sysutils/py-psutil
DEPENDS+=	${PYPKGPREFIX}-pylru>=1.2:../../wip/py-pylru
DEPENDS+=	${PYPKGPREFIX}-regex>2018.11.6:../../textproc/py-regex
DEPENDS+=	${PYPKGPREFIX}-requests>=2.23.0:../../devel/py-requests
DEPENDS+=	${PYPKGPREFIX}-rsa>=4.0:../../security/py-rsa
DEPENDS+=	${PYPKGPREFIX}-sarge>=0.1.5:../../wip/py-sarge
DEPENDS+=	${PYPKGPREFIX}-semantic_version>=2.8.5:../../devel/py-semantic_version
DEPENDS+=	${PYPKGPREFIX}-serial>=3.4:../../comms/py-serial
DEPENDS+=	${PYPKGPREFIX}-sentry-sdk>=0.15.1:../../wip/py-sentry-sdk
DEPENDS+=	${PYPKGPREFIX}-tornado>=5.1.1:../../www/py-tornado
DEPENDS+=	${PYPKGPREFIX}-Unidecode>=0.04.14:../../textproc/py-Unidecode
DEPENDS+=	${PYPKGPREFIX}-watchdog>=0.10.2:../../sysutils/py-watchdog
DEPENDS+=	${PYPKGPREFIX}-websocket-client>=0.57:../../www/py-websocket-client
DEPENDS+=	${PYPKGPREFIX}-werkzeug>=1.0.1:../../www/py-werkzeug
DEPENDS+=	${PYPKGPREFIX}-wrapt>=1.12.1:../../devel/py-wrapt
DEPENDS+=	${PYPKGPREFIX}-yaml>=5.3.1:../../textproc/py-yaml
DEPENDS+=	${PYPKGPREFIX}-zeroconf>=0.24:../../net/py-zeroconf

post-install:
	${MV} ${DESTDIR}${PREFIX}/bin/octoprint \
		${DESTDIR}${PREFIX}/bin/octoprint-${PYVERSSUFFIX} || ${TRUE}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
