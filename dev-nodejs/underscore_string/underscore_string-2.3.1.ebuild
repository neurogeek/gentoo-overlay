# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
MY_PN=${PN/_/.}
MY_P=${MY_PN}-${PV}
NODEJS_MODULE=${PN}

inherit multilib

DESCRIPTION="String manipulation extensions for Underscore.js"
HOMEPAGE="https://npmjs.org/package/underscore.string"
SRC_URI="http://registry.npmjs.org/${MY_PN}/-/${MY_P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND=">=dev-nodejs/underscore-1.4.4
		 ${DEPEND}"

S="${WORKDIR}/${MY_P}"

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

	dodoc README*
}
