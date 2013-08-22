# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Retrieve local and remote files through a simple interface."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/debug-0.7.2
	>=dev-nodejs/hyperquest-0.1.5
	>=dev-nodejs/mkdirp-0.3.5
	>=net-libs/nodejs-0.8.10
	${DEPEND}"
