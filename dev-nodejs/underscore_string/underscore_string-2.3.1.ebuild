# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
MY_PN=${PN/_/.}
MY_P=${MY_PN}-${PV}
NODEJS_MODULE=${MY_PN}

inherit npm

DESCRIPTION="String manipulation extensions for Underscore.js"
HOMEPAGE="https://npmjs.org/package/underscore.string"
SRC_URI="http://registry.npmjs.org/${MY_PN}/-/${MY_P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/underscore-1.4.4
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

S="${WORKDIR}/${MY_P}"
