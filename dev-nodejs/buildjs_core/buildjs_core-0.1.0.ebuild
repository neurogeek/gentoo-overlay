# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
MY_PN="${PN/_/.}"
MY_P="${MY_PN}-${PV}"
NODEJS_MODULE=${MY_PN}

inherit npm

DESCRIPTION="JS/CSS files compress/optimizer."
HOMEPAGE="https://npmjs.org/package/buildjs.core"
SRC_URI="http://registry.npmjs.org/${MY_PN}/-/${MY_P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND="${DEPEND}"

NPM_EXTRA_FILES="aliases.js 
	formatters.js 
	platform.js 
	regexes.js"
