# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
UPSTREAM="1.2.3"

inherit npm

DESCRIPTION="A package for Steven Levithan's excellent dateFormat() function."
SRC_URI="http://registry.npmjs.org/dateformat/-/${P}-${UPSTREAM}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=net-libs/nodejs-0.8.10"
DEPEND=""

src_install() {
	npm_src_install

	dodoc Readme*
}
