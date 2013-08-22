# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
MY_PN="${PN/_/.}"
MY_P="${MY_PN}-${PV}"
NODEJS_MODULE=${MY_PN}

inherit npm

DESCRIPTION="A mustache compiler."
SRC_URI="http://registry.npmjs.org/${MY_PN}/-/${MY_P}.tgz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=net-libs/nodejs-0.8.10"
DEPEND=""

NPM_EXTRA_FILES="tools web wrappers"

src_install() {
	npm_src_install

	dobin bin/*
}
