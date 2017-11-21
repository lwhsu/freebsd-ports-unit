# Created by: Li-Wen Hsu <lwhsu@FreeBSD.org>
# $FreeBSD$

PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
PKGNAMESUFFIX=	-python

COMMENT=	Python ${PYTHON_VER} module for NGINX Unit

USES?=		python gettext-runtime

PLIST_FILES=	libexec/unit/modules/python%%PYTHON_VER%%.unit.so

USE_RC_SUBR?=	# reset to empty

MASTERDIR=	${.CURDIR}/../unit

post-configure:
	cd ${CONFIGURE_WRKSRC} && \
	./configure python --module=${PYTHON_VERSION} \
			--config=${PYTHON_CMD}-config
do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/libexec/unit/modules/
	${INSTALL_LIB} ${WRKSRC}/build/${PYTHON_VERSION}.unit.so \
		${STAGEDIR}${PREFIX}/libexec/unit/modules/

.include "${MASTERDIR}/Makefile"
