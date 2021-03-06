# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Higher-order functions and common patterns for asynchronous code"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=dev-nodejs/lru-cache-2.3.0
	>=dev-nodejs/sigmund-1.0.0
	>=net-libs/nodejs-0.8.10
	${DEPEND}"
