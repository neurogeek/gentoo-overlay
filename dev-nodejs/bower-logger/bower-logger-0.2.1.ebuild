# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="The logger used in the various architecture components of Bower."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	
	${DEPEND}"
