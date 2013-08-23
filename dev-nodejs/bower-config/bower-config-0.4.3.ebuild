# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="The Bower config reader and writer."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/graceful-fs-2.0.0
	>=dev-nodejs/mout-0.6.0
	>=dev-nodejs/optimist-0.6.0
	>=dev-nodejs/osenv-0.0.3
	${DEPEND}"
