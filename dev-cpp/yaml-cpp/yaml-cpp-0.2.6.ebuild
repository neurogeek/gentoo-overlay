# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
inherit cmake-utils

DESCRIPTION="Library for parsing and emitting YAML with C++"
HOMEPAGE="http://code.google.com/p/yaml-cpp/"
SRC_URI="http://yaml-cpp.googlecode.com/files/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}"

MYCMAKEARGS="-DBUILD_SHARED_LIBS=ON"
