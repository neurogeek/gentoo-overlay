# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Option parsing for Node, supporting types, shorthands, etc."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/abbrev-1.0.4
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

src_install() {
	npm_src_install

	dobin bin/nopt.js
}
