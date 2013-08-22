# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Standards-compliant WebSocket server and client."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/websocket-driver-0.1.0"
DEPEND=""

src_install() {
	npm_src_install

	if use example; then
		dodoc -r examples
	fi
}
