# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
MY_PN="${PN/_/.}"
MY_P="${MY_PN}-${PV}"
NODEJS_MODULE=${MY_PN}

inherit multilib

DESCRIPTION="A mustache compiler."
HOMEPAGE="https://npmjs.org/package/hogan.js"
SRC_URI="http://registry.npmjs.org/${MY_PN}/-/${MY_P}.tgz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND="${DEPEND}"

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
	cp -r ${S}/{lib,package.json,tools,web,wrappers} ${node_modules}

	dobin bin/*
	dodoc README* LICENSE
}
