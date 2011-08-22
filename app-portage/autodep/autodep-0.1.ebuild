# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

PYTHON_DEPEND="2:2.6"
RESTRICT_PYTHON_ABIS='2.4 2.5 3.*'

inherit python

DESCRIPTION="Auto dependency analyser for Gentoo"
HOMEPAGE="http://soc.dev.gentoo.org/~bay/autodep/"
SRC_URI="http://soc.dev.gentoo.org/~bay/autodep/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="sys-fs/fuse
	dev-util/pkgconfig"
RDEPEND="sys-fs/fuse
	app-portage/portage-utils"

src_compile() {
    emake || die
}

src_install() {
    emake DESTDIR="${D}" install || die
}
