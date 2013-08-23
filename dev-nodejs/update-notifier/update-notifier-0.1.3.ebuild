# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Update notifier for your package"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/request-2.22.0
	>=dev-nodejs/configstore-0.1.0
	>=dev-nodejs/semver-2.0.0
	>=dev-nodejs/chalk-0.1.0
	${DEPEND}"
