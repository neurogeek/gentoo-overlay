# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
NODEJS_MODULE=${PN}

inherit multilib

DESCRIPTION="YAML 1.2 parser and serializer."
HOMEPAGE="https://npmjs.org/package/js-yaml"
SRC_URI="http://registry.npmjs.org/${PN}/-/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="example"

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND=">=dev-nodejs/argparse-0.1.13
         >=dev-nodejs/esprima-1.0.2
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

	dobin bin/${PN}.js
	dodoc README* LICENSE HISTORY.md index.js

	if use example; then
		dodoc -r examples
	fi
}
