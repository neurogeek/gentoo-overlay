# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="The lord of tmp."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=""
RDEPEND=">=dev-nodejs/package-1.0.1
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

NPM_EXTRA_FILES="dir.js file.js"

src_install() {
	npm_src_install

	if use example; then
		dodoc -r examples
	fi
}
