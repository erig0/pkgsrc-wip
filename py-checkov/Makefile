# $NetBSD$

DISTNAME=	checkov-1.0.674
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=c/checkov/}

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	https://github.com/bridgecrewio/checkov
COMMENT=	Infrastructure as code static analysis
LICENSE=	apache-2.0

PYTHON_VERSIONS_INCOMPATIBLE+=	27
PYTHON_VERSIONS_INCOMPATIBLE+=	36

DEPENDS+=	${PYPKGPREFIX}-packaging>=19.2:../../devel/py-packaging
DEPENDS+=	${PYPKGPREFIX}-colorama>=0.4.3:../../comms/py-colorama
DEPENDS+=	${PYPKGPREFIX}-termcolor>=1.1.0:../../devel/py-termcolor
DEPENDS+=	${PYPKGPREFIX}-gitpython>=3.1.7:../../devel/py-gitpython
DEPENDS+=	${PYPKGPREFIX}-semantic_version>=2.8.5:../../devel/py-semantic_version
DEPENDS+=	${PYPKGPREFIX}-six>=1.15.0:../../lang/py-six
DEPENDS+=	${PYPKGPREFIX}-tqdm>=4.49.0:../../misc/py-tqdm
DEPENDS+=	${PYPKGPREFIX}-boto3>=1.12.43:../../net/py-boto3
DEPENDS+=	${PYPKGPREFIX}-jmespath>=0.10.0:../../textproc/py-jmespath
DEPENDS+=	${PYPKGPREFIX}-tabulate>=0.8.6:../../textproc/py-tabulate
DEPENDS+=	${PYPKGPREFIX}-yaml>=5.1:../../textproc/py-yaml
DEPENDS+=	${PYPKGPREFIX}-bc-python-hcl2>=0.3.1:../../wip/py-bc-python-hcl2
DEPENDS+=	${PYPKGPREFIX}-deep-merge>=0.0.4:../../wip/py-deep-merge
DEPENDS+=	${PYPKGPREFIX}-junit-xml>=1.9:../../wip/py-junit-xml
DEPENDS+=	${PYPKGPREFIX}-dpath>=1.5.0:../../wip/py-dpath
DEPENDS+=	${PYPKGPREFIX}-update-checker-[0-9]*:../../wip/py-update-checker
DEPENDS+=	${PYPKGPREFIX}-requests>=1.2.0:../../devel/py-requests
DEPENDS+=	${PYPKGPREFIX}-urllib3>=1.25.10:../../www/py-urllib3

post-extract:
	${MV} ${WRKSRC}/bin/checkov ${WRKSRC}/bin/checkov${PYVERSSUFFIX}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
