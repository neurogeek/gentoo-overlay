# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Build chainable fluent interfaces the easy way...
with a freakin' chainsaw!"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/traverse-0.3.0
	${DEPEND}"

src_install() {
	npm_src_install

	if use example; then
		dodoc -r examples
	fi
}
