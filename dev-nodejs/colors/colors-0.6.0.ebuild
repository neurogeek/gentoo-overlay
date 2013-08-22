# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
REV="1"

inherit npm

DESCRIPTION="Adds colors to your node.js console"
HOMEPAGE="https://npmjs.org/package/colors"
SRC_URI="http://registry.npmjs.org/${PN}/-/${P}-${REV}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=net-libs/nodejs-0.8.10"
DEPEND=""

NPM_EXTRA_FILES="colors.js"
