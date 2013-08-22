# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Light-weight option parsing with an argv hash. No optstrings
attached."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=""
RDEPEND=">=dev-nodejs/wordwrap-0.0.2
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

src_install() {
	npm_src_install

	dodoc LICENSE

	if use example; then
		dodoc example
	fi
}
