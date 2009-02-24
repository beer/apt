#
S3CMD?=		s3cmd
SCANPKG?=	dpkg-scanpackages
SCANSRC?=	dpkg-scansources
GZIP?=		gzip

# for BSD make compatible
CURDIR?=	${.CURDIR}

#
all: update

s3:
	${S3CMD} sync --exclude=".git/*" . s3://s3-pixpub.pixnet.tw/

update:
	${SCANPKG} binary /dev/null > binary/Packages
	${GZIP} -9c binary/Packages > binary/Packages.gz
	${SCANSRC} source /dev/null > source/Sources
	${GZIP} -9c source/Sources > source/Sources.gz
