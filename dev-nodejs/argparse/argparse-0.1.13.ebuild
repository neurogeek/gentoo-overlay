# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Very powerful CLI arguments parser. Native port of argparse -
python's options parsing library"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND=">=dev-nodejs/underscore-1.4.4
	     >=dev-nodejs/underscore_string-2.3.1
		 ${DEPEND}"

src_install() {
	npm-src_install 

	if use example; then
		dodoc -r examples
	fi
}
