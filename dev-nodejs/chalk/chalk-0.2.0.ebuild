# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Terminal string styling done right"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/has-color-0.1.0
	>=dev-nodejs/ansi-styles-0.2.0
	${DEPEND}"
