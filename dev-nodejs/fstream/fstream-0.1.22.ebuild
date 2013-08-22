# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Advanced file system stream things."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=""
RDEPEND=">=dev-nodejs/graceful-fs-1.2.1
	>=dev-nodejs/inherits-1.0.0
	>=dev-nodejs/mkdirp-0.3.5
	>=dev-nodejs/rimraf-2.1.4
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

src_install() {
	npm_src_install

	if use example; then
		dodoc -r examples
	fi
}
