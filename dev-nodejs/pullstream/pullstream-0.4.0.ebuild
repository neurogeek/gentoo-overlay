# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="A stream you can pull data from."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/over-0.0.5
	>=dev-nodejs/readable-stream-1.0.0
	>=dev-nodejs/setimmediate-1.0.1
	>=dev-nodejs/slice-stream-0.0.0
	${DEPEND}"

src_install() {
	npm_src_install

	if use example; then
		dodoc -r examples
	fi
}
