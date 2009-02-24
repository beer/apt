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
	${DPKG} -b pixpub-shells
