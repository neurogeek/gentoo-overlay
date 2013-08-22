# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Rigging tasks for elegant includes."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/rigger-0.5.4
	>=dev-nodejs/grunt-0.4.1
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

NPM_EXTRA_FILES="tasks Grunfile.js"
