# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
MY_PN="${PN/_/.}"
MY_P="${MY_PN}-${PV}"
NODEJS_MODULE=${MY_PN}

inherit multilib

DESCRIPTION="JS/CSS files compress/optimizer."
HOMEPAGE="https://npmjs.org/package/buildjs"
SRC_URI="http://registry.npmjs.org/${MY_PN}/-/${MY_P}.tgz"

LICENSE="MIT"
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
	cp -r ${S}/{aliases.js,formatters.js,index.js,platform.js,regexes.js,package.json} ${node_modules}

	dodoc README*
}
