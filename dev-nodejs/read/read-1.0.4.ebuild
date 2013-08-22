# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="read(1) for Node.js programs"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=""
RDEPEND=">=dev-nodejs/mute-stream-0.0.3
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

src_install() {
	npm_src_install

	if use example; then
		dodoc -r example
	fi
}
