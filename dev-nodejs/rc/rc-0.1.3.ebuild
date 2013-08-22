# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Hardwired configuration loader."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/optimist-0.4.0
	>=dev-nodejs/deep-extend-0.2.5
	>=dev-nodejs/ini-1.1.0	
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

NPM_EXTRA_FILES="browser.js"
