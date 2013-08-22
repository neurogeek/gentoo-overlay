# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="A little globber."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/minimatch-0.2.12
	>=dev-nodejs/graceful-fs-1.2.1
	>=dev-nodejs/inherits-1.0.0
	>=net-libs/nodejs-0.8.10
	${DEPEND}"
