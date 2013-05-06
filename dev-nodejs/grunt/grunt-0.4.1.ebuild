# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
NODEJS_MODULE=${PN}

inherit multilib

DESCRIPTION="The JavaScript Task Runner"
HOMEPAGE="https://npmjs.org/package/grunt"
SRC_URI="http://registry.npmjs.org/${PN}/-/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="doc"

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND=">=dev-nodejs/async-0.1.22
		 >=dev-nodejs/coffee-script-1.3.3 
		 >=dev-nodejs/colors-0.6.0 
		 >=dev-nodejs/dateformat-1.0.2 
		 >=dev-nodejs/eventemitter2-0.4.9
		 >=dev-nodejs/findup-sync-0.1.0
		 >=dev-nodejs/glob-3.1.21
		 >=dev-nodejs/hooker-0.2.3
		 >=dev-nodejs/iconv-lite-0.2.5
		 >=dev-nodejs/minimatch-0.2.6
		 >=dev-nodejs/nopt-1.0.10 
		 >=dev-nodejs/rimraf-2.0.2 
		 >=dev-nodejs/lodash-0.9.0 
		 >=dev-nodejs/underscore_string-2.2
		 >=dev-nodejs/which-1.0.5
		 >=dev-nodejs/js-yaml-2.0.2
		 ${DEPEND}"

src_unpack() {
	unpack "${A}"
	mv "${WORKDIR}/package" ${S}
}

src_compile() {
	true
}

src_install() {
	local node_modules="${D}/usr/$(get_libdir)/node_modules/${NODEJS_MODULE}"

	mkdir -p ${node_modules} || die "Could not create DEST folder"
	cp -r ${S}/{lib,package.json} ${node_modules}

	dodoc README* LICENSE-MIT CHANGELOG AUTHORS CONTRIBUTING.md \
		custom-gruntfile.js Gruntfile.js

	if use doc; then
		dodoc -r docs
	fi
}
