# Created by: Li-Wen Hsu <lwhsu@FreeBSD.org>
# $FreeBSD$

PKGNAMESUFFIX=	-go

COMMENT=	Go module for NGINX Unit

USES?=		go

PLIST_FILES=	# empty
PLIST=	${.CURDIR}/pkg-plist

MASTERDIR=	${.CURDIR}/../unit

post-configure:
	cd ${CONFIGURE_WRKSRC} && \
	env ${GO_ENV} ./configure go

#do-build:
#	cd ${WRKSRC} && make all
#
#do-install:
#	cd ${WRKSRC} && make go-install

.include "${MASTERDIR}/Makefile"
