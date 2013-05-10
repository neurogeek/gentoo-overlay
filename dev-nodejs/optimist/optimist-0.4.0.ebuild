# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
NODEJS_MODULE=${PN}

inherit multilib

DESCRIPTION="Light-weight option parsing with an argv hash. No optstrings
attached."
HOMEPAGE="https://npmjs.org/package/optimist"
SRC_URI="http://registry.npmjs.org/${PN}/-/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="example"

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND=">=dev-nodejs/wordwrap-0.0.2
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
	cp -r ${S}/{index.js,package.json} ${node_modules}

	dodoc LICENSE

	if use example; then
		dodoc example
	fi
}
