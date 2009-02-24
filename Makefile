#
SCANPKG?=	/usr/bin/dpkg-scanpackages
SCANSRC?=	/usr/bin/dpkg-scansources
GZIP?=		/bin/gzip

# for BSD make compatible
CURDIR?=	${.CURDIR}

#
all: update

update:
	${SCANPKG} binary /dev/null | ${GZIP} -9c > binary/Packages.gz
	${SCANSRC} source /dev/null | ${GZIP} -9c > source/Sources.gz
