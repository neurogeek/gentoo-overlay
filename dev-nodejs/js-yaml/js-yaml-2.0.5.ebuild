# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="YAML 1.2 parser and serializer."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=""
RDEPEND=">=dev-nodejs/argparse-0.1.13
	>=dev-nodejs/esprima-1.0.2
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

src_install() {
	npm_src_install 

	dobin bin/${PN}.js

	if use example; then
		dodoc -r examples
	fi
}
