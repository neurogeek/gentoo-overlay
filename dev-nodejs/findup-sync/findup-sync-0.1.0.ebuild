# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Find the first file matching a given pattern in the current
directory or the nearest ancestor directory."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/glob-3.2.1"
DEPEND=""

NPM_EXTRA_FILES="Gruntfile.js"
