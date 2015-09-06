# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit npm

DESCRIPTION="A low-level utility library delivering consistency, customization,
performace and extra features."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
		>=net-libs/nodejs-0.8.10"

NPM_EXTRA_FILES="build.js build dist vendor"
