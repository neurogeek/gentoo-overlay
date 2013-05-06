# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
NODEJS_MODULE=${PN}

inherit multilib

DESCRIPTION="ECMAScript parsing infrastructure for multipurpose analysis."
HOMEPAGE="https://npmjs.org/package/esprima"
SRC_URI="http://registry.npmjs.org/${PN}/-/${P}.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="doc example"

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
	cp -r ${S}/{${PN}.js,component.json,package.json} ${node_modules}

	dobin bin/*
	dodoc README* LICENSE.BSD

	if use doc; then
		dodoc -r doc/*
	fi

	if use example; then
		dodoc -r examples
	fi
}
