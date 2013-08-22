# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="The Grunt command line interface."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/nopt-2.1.1
	>=dev-nodejs/findup-sync-0.1.0
	>=dev-nodejs/resolve-0.3.1
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

NPM_EXTRA_FILES="completion.js Gruntfile.js"

src_prepare() {
	local nodedir="${EROOT}usr\/$(get_libdir)\/node_modules\/${NPM_MODULE}\/lib"

	sed \
		"s:../lib:${nodedir}:g" \
			-i bin/grunt
}

src_install() {
	npm_src_install

	dobin bin/*
}
