# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Takes JavaScript code, along with a config and returns the
original code with tokens wrapped as configured."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/esprima-1.0.0
	${DEPEND}"

NPM_EXTRA_FILES="config.js"

src_install() {
	npm_src_install

	if use example; then
		dodoc -r example
	fi
}
