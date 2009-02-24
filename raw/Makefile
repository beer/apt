#
DPKG?=		/usr/bin/dpkg
MV?=		/bin/mv

#
all: update

install:
	${MV} *.deb ../binary

update:
	${DPKG} -b pixpub-allinone
	${DPKG} -b pixpub-basicSoftware
	${DPKG} -b pixpub-ec2startup
	${DPKG} -b pixpub-languageMeta
	${DPKG} -b pixpub-mytop
	${DPKG} -b pixpub-shellMeta
	${DPKG} -b pixpub-vcsMeta
