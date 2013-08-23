# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="A collection of common interactive command line user interfaces."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/lodash-1.2.1
	>=dev-nodejs/async-0.2.8
	>=dev-nodejs/cli-color-0.2.2
	>=dev-nodejs/mute-stream-0.0.3
	${DEPEND}"
