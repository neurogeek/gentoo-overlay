# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="HTTP Hawk Authentication Scheme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/hoek-0.9.0
	>=dev-nodejs/boom-0.4.0
	>=dev-nodejs/cryptiles-0.2.0
	>=dev-nodejs/sntp-0.2.0
	${DEPEND}"

src_install() {
	npm_src_install

	if use example; then
		dodoc -r example
	fi
}
