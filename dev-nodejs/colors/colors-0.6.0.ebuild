# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
NODEJS_MODULE=${PN}
REV="1"

inherit multilib

DESCRIPTION="Higher-order functions and common patterns for asynchronous code"
HOMEPAGE="https://npmjs.org/package/colors"
SRC_URI="http://registry.npmjs.org/colors/-/${P}-${REV}.tgz"

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
	cp -r ${S}/{colors.js,package.json} ${node_modules}

	dodoc MIT-LICENSE.txt ReadMe.md
}