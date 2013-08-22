# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
NODEJS_MODULE=${PN}

inherit npm

DESCRIPTION="JS/CSS files compress/optimizer."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND="${DEPEND}"

NPM_EXTRA_FILES="build.json"
