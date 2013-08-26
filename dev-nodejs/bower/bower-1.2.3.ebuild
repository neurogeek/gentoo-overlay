# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="The browser package manager."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/abbrev-1.0.4
	>=dev-nodejs/archy-0.0.2
	>=dev-nodejs/bower-config-0.4.3
	>=dev-nodejs/bower-endpoint-parser-0.2.0
	>=dev-nodejs/bower-json-0.4.0
	>=dev-nodejs/bower-logger-0.2.1
	>=dev-nodejs/bower-registry-client-0.1.4
	>=dev-nodejs/cardinal-0.4.0
	>=dev-nodejs/chalk-0.2.0
	>=dev-nodejs/chmodr-0.1.0
	>=dev-nodejs/fstream-0.1.22
	>=dev-nodejs/fstream-ignore-0.0.6
	>=dev-nodejs/glob-3.2.1
	>=dev-nodejs/graceful-fs-2.0.0
	>=dev-nodejs/handlebars-1.0.11
	>=dev-nodejs/inquirer-0.2.2
	>=dev-nodejs/junk-0.2.0
	>=dev-nodejs/mkdirp-0.3.5
	>=dev-nodejs/mout-0.6.0
	>=dev-nodejs/nopt-2.1.1
	>=dev-nodejs/lru-cache-2.3.0
	>=dev-nodejs/open-0.0.3
	>=dev-nodejs/promptly-0.2.0
	>=dev-nodejs/q-0.9.2
	>=dev-nodejs/request-2.27.0
	>=dev-nodejs/request-progress-0.2.0
	>=dev-nodejs/retry-0.6.0
	>=dev-nodejs/rimraf-2.2.0
	>=dev-nodejs/semver-2.1.0
	>=dev-nodejs/stringify-object-0.1.4
	>=dev-nodejs/sudo-block-0.2.0
	>=dev-nodejs/tar-0.1.17
	>=dev-nodejs/tmp-0.0.20
	>=dev-nodejs/unzip-0.1.7
	>=dev-nodejs/update-notifier-0.1.3
	>=dev-nodejs/which-1.0.5
	${DEPEND}"

NPM_EXTRA_FILES="Gruntfile.js templates"

src_install() {
	npm_src_install

	dobin bin/bower
}
