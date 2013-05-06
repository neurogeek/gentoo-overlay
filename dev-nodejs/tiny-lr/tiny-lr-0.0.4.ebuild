# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
NODEJS_MODULE=${PN}

inherit multilib

DESCRIPTION="Tiny LiveReload server, background-friendly."
HOMEPAGE="https://npmjs.org/package/tiny-lr"
SRC_URI="http://registry.npmjs.org/${PN}/-/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND=">=dev-nodejs/qs-0.6.3
		 >=dev-nodejs/faye-websocket-0.5.0
		 >=dev-nodejs/noptify-0.0.3
		 >=dev-nodejs/debug-0.7.2
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
	cp -r ${S}/{lib,package.json,tasks} ${node_modules}

	dobin bin/*
	dodoc readme*
}
