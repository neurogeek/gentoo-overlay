# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="A module to create readable 'multipart/form-data' streams."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/combined-stream-0.0.4
	>=dev-nodejs/mime-1.2.9
	>=dev-nodejs/async-0.2.9
	${DEPEND}"
