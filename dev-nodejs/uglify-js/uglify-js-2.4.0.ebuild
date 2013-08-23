# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="JavaScript parser, mangler/compressor and beautifier toolkit."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/async-0.2.6
	>=dev-nodejs/source-map-0.1.7
	>=dev-nodejs/optimist-0.3.5
	${DEPEND}"

NPM_EXTRA_FILES="tools"

src_install() {
	npm_src_install

	dobin bin/${PN/-/}
}
