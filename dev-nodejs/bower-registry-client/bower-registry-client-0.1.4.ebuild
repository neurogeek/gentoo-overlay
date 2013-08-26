# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Provides easy interaction with the Bower registry."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/async-0.2.8
	>=dev-nodejs/bower-config-0.4.3
	>=dev-nodejs/graceful-fs-2.0.0
	>=dev-nodejs/lru-cache-2.3.0
	>=dev-nodejs/request-2.27.0
	>=dev-nodejs/request-replay-0.2.0
	>=dev-nodejs/rimraf-2.2.0
	>=dev-nodejs/mkdirp-0.3.5
	${DEPEND}"

NPM_EXTRA_FILES="Client.js Gruntfile.js"
