# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Colors, formatting and other tools for the console."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/es5-ext-0.9.1
	>=dev-nodejs/memoizee-0.2.0
	${DEPEND}"

src_install() {
	npm_src_install

	dobin bin/*
}
