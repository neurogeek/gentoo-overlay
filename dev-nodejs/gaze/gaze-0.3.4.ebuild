# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="A globbing fs.watch wrapper built from the best parts of other fine
watch libs."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/minimatch-0.2.12
	>=dev-nodejs/fileset-0.1.5
	>=net-libs/nodejs-0.8.10"

NPM_EXTRA_FILES="Gruntfile.js"
