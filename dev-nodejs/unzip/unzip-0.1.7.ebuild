# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Unzip cross-platform streaming API compatible with fstream and fs.ReadStream"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/fstream-0.1.21
	>=dev-nodejs/pullstream-0.4.0
	>=dev-nodejs/binary-0.3.0
	>=dev-nodejs/readable-stream-1.0.0
	>=dev-nodejs/setimmediate-1.0.1
	>=dev-nodejs/match-stream-0.0.2
	${DEPEND}"
