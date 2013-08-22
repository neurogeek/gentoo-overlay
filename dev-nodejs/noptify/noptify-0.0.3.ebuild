# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="nopt wrapper with commander-like API"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/nopt-2.1.1
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

NPM_EXTRA_FILES="actions util"
