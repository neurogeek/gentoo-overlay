# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Tar for node."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/inherits-1.0.0
	>=dev-nodejs/block-stream-0.0.7
	>=dev-nodejs/fstream-0.1.8
	${DEPEND}"

src_install() {
	npm_src_install

	if use example; then
		dodoc -r examples
	fi
}
