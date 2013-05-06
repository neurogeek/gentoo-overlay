# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
NODEJS_MODULE=${PN}

inherit multilib

DESCRIPTION="Copy files and folders."
HOMEPAGE="https://npmjs.org/package/grunt-contrib-copy"
SRC_URI="http://registry.npmjs.org/${PN}/-/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="doc"

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND=">=dev-nodejs/grunt-0.4.1
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

	dodoc README* LICENSE-MIT AUTHORS  CHANGELOG  CONTRIBUTING.md

	if use doc; then
		dodoc -r docs
	fi
}
