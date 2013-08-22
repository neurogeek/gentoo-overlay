# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Make streaming http requests."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=""
RDEPEND=">=dev-nodejs/through-2.3.4
	>=dev-nodejs/duplexer-0.1.1
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

NPM_DOCS="readme*"

src_install() {
	npm_src_install

	if use example; then
		dodoc -r example
	fi
}
