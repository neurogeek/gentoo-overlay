# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Read bower.json files with semantics, normalisation, defaults and validation."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/deep-extend-0.2.5
	>=dev-nodejs/graceful-fs-2.0.0
	>=dev-nodejs/intersect-0.0.3
	${DEPEND}"
