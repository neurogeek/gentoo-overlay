# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Complete memoize/cache solution. Works with any type and length of
 function arguments"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/es5-ext-0.9.2
	>=dev-nodejs/event-emitter-0.2.2
	>=dev-nodejs/next-tick-0.1.0
	${DEPEND}"
