# Created by: Li-Wen Hsu <lwhsu@FreeBSD.org>
# $FreeBSD$

PKGNAMESUFFIX=	-php${PHP_VER}

COMMENT=	PHP ${PHP_VERSION:R} module for NGINX Unit

PLIST_SUB=	PHP_VER=${PHP_VER}
PLIST_FILES=	libexec/unit/modules/php%%PHP_VER%%.unit.so

USES=		php:build,embed

MASTERDIR=	${.CURDIR}/../unit

post-configure:
	cd ${CONFIGURE_WRKSRC} && \
	./configure php --lib-path=${LOCALBASE}/lib \
			--module=php${PHP_VER}

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/libexec/unit/modules/
	${INSTALL_LIB} ${WRKSRC}/build/php${PHP_VER}.unit.so \
		${STAGEDIR}${PREFIX}/libexec/unit/modules/

.include "${MASTERDIR}/Makefile"
