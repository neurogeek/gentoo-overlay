# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Pipe data through a stream until some fixed length is reached,
then callback."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/readable-stream-1.0.2
	${DEPEND}"

NPM_EXTRA_FILES="${PN/-/}.js"

src_install() {
	npm_src_install

	if use example; then
		dodoc -r example
	fi
}
