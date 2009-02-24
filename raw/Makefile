#
DPKG?=		/usr/bin/dpkg
MV?=		/bin/mv

#
all: update

install:
	${MV} *.deb ../binary

update:
	${DPKG} -b allinone
