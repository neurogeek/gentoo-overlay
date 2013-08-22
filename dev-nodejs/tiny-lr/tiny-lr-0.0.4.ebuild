# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Tiny LiveReload server, background-friendly."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/qs-0.6.3
	>=dev-nodejs/faye-websocket-0.5.0
	>=dev-nodejs/noptify-0.0.3
	>=dev-nodejs/debug-0.7.2
	>=net-libs/nodejs-0.8.10
	${DEPEND}"

NPM_EXTRA_FILES="tasks"

src_install() {
	npm_src_install

	dobin bin/*
}
