# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Wrapper around miniglob / minimatch combo to allow multiple
patterns matching and include-exclude ability."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/minimatch-0.2.12
	>=dev-nodejs/glob-3.2.1
	>=net-libs/nodejs-0.8.10"
