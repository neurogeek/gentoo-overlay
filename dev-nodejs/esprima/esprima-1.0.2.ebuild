# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="ECMAScript parsing infrastructure for multipurpose analysis."
HOMEPAGE="https://npmjs.org/package/esprima"
SRC_URI="http://registry.npmjs.org/${PN}/${PV}/${P}.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc example"

RDEPEND=">=net-libs/nodejs-0.8.10"
DEPEND=""

NPM_EXTRA_FILES="component.json"

src_install() {

	npm_src_install

	dobin bin/*

	if use doc; then
		dodoc -r doc/*
	fi

	if use example; then
		dodoc -r examples
	fi
}
