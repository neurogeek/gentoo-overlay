# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
NODEJS_MODULE=${PN}

inherit multilib

DESCRIPTION="Javascript file parser and include engine."
HOMEPAGE="https://npmjs.org/package/rigger"
SRC_URI="http://registry.npmjs.org/${PN}/-/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND=">=dev-nodejs/async-0.2.7
		 >=dev-nodejs/buildjs_core-0.1.0
		 >=dev-nodejs/debug-0.7.2
		 >=dev-nodejs/getit-0.3.1
		 >=dev-nodejs/underscore-1.4.4
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
	cp -r ${S}/{build.js,converters,directives,index.js,plugins,package.json} ${node_modules}

	dobin bin/*
	dodoc README*
}
