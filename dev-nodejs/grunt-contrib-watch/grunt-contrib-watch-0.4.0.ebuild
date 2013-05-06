# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
NODEJS_MODULE=${PN}

inherit multilib

DESCRIPTION="Run predefined tasks whenever watched file patterns are added,
changed or deleted."
HOMEPAGE="https://npmjs.org/package/grunt-contrib-watch"
SRC_URI="http://registry.npmjs.org/${PN}/-/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="doc"

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND=">=dev-nodejs/grunt-0.4.1
		 >=dev-nodejs/gaze-0.3.4
		 >=dev-nodejs/tiny-lr-0.0.4
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
	cp -r ${S}/{package.json,tasks,Gruntfile.js} ${node_modules}

	dodoc README* LICENSE-MIT AUTHORS CHANGELOG CONTRIBUTING.md

	if use doc; then
		dodoc -r docs
	fi
}
