# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Like JSON.stringify, but doesn't blow up on circular refs"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	${DEPEND}"

NPM_EXTRA_FILES="stringify.js"
