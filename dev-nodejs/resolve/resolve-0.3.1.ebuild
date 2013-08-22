# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Resolve like require.resolve() on behalf of files asynchronously
and synchronously."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

RDEPEND=">=net-libs/nodejs-0.8.10"
DEPEND=""

src_install() {
	npm_src_install

	if use example; then
		dodoc -r example
	fi
}
