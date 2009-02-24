#
SCANPKG?=	/usr/bin/dpkg-scanpackages
SCANSRC?=	/usr/bin/dpkg-scansources
GZIP?=		/bin/gzip

# for BSD make compatible
CURDIR?=	${.CURDIR}

#
all: update

update:
	${SCANPKG} binary /dev/null > binary/Packages
	${GZIP} -9c binary/Packages > binary/Packages.gz
	${SCANSRC} source /dev/null > source/Sources
	${GZIP} -9c source/Sources > source/Sources.gz
