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

CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--modules=libexec/unit/modules \
		--state=libexec/unit \
		--pid=/var/run/unit.pid \
		--log=/var/log/unit.log \
		--control=/var/run/control.unit.sock

post-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/libexec/unit/modules

.include <bsd.port.mk>
