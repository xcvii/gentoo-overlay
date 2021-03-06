# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-misc/sks/sks-1.1.4-r1.ebuild,v 1.2 2013/12/13 09:29:03 patrick Exp $

EAPI=5

inherit rpm

DESCRIPTION="PicoScope is the standard in PC Oscilloscope software"
HOMEPAGE="http://www.picotech.com/picoscope-oscilloscope-software.html"
MY_V=(${PV//./ })
MY_PV=${MY_V[0]}"."${MY_V[1]}"."${MY_V[2]}"-"${MY_V[3]}"r"${MY_V[4]}
SRC_URI="amd64? ( http://labs.picotech.com/rpm/x86_64/libusbpt104-${MY_PV}.x86_64.rpm )"
LICENSE="PICO"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

CDEPEND=""
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

S="${WORKDIR}/"

src_unpack()
{
    rpm_src_unpack ${A}
}

src_install()
{
	insinto "/opt"
	doins -r opt/*
}
