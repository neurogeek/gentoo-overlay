# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="A thing for ignoring files based on globs"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/minimatch-0.2.0
	>=dev-nodejs/fstream-0.1.17
	>=dev-nodejs/inherits-2
	${DEPEND}"
