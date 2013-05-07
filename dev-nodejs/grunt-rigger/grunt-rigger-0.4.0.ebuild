# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
NODEJS_MODULE=${PN}

inherit multilib

DESCRIPTION="Rigging tasks for elegant includes."
HOMEPAGE="https://npmjs.org/package/grunt-rigger"
SRC_URI="http://registry.npmjs.org/${PN}/-/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND=">=dev-nodejs/rigger-0.5.4
		 >=dev-nodejs/grunt-0.4.1
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
	cp -r ${S}/{tasks,Gruntfile.js,package.json} ${node_modules}

	dodoc README* LICENSE-MIT AUTHORS
}

AUTHORS  Gruntfile.js  LICENSE-MIT  package.json  README.md  tasks  test
