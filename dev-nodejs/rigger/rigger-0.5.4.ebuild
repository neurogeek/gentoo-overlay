# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Javascript file parser and include engine."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/async-0.2.7
	>=dev-nodejs/buildjs_core-0.1.0
	>=dev-nodejs/debug-0.7.2
	>=dev-nodejs/getit-0.3.1
	>=dev-nodejs/underscore-1.4.4
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

NPM_EXTRA_FILES="build.js converters directives plugins"

src_install() {
	npm_src_install

	dobin bin/*
}
