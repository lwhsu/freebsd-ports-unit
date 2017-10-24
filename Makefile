# Created by: Li-Wen Hsu <lwhsu@FreeBSD.org>
# $FreeBSD$

PORTNAME=	unit
PORTVERSION=	0.2
CATEGORIES=	www
MASTER_SITES=	https://unit.nginx.org/download/

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Application server that speaks your language

LICENSE=	APACHE20

HAS_CONFIGURE=	yes

CONFIGURE_ARGS=	--prefix=${PREFIX}

PLIST_FILES=	sbin/unitd

post-install:
	${RMDIR} ${STAGEDIR}${PREFIX}/build

.include <bsd.port.mk>
