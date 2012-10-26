# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
REV="109ffb8"

inherit multilib

DESCRIPTION="Redis client for Go."
HOMEPAGE="https://github.com/simonz05/godis"
SRC_URI="https://github.com/simonz05/${PN}/tarball/${REV} -> ${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

DEPEND=">=dev-lang/go-1.0.2"
RDEPEND="${DEPEND}"

S="${WORKDIR}/simonz05-${PN}-${REV}"

GOROOT="${ED}usr/$(get_libdir)/go"
GOPKG="${PN}"

src_prepare() {

	if use examples; then
		for src in $(find . -name \*.go)
		do
		   sed -r "s/github.com\/simonz05\///" -i ${src}
		done
	fi
}

src_compile() {

	if use examples; then

		go_examples_compile() {

			local build_dir gopath

			build_dir="${S}/build"
			gopath="${build_dir}/src/${GOPKG}"

			mkdir -p $gopath
			ln -s ${S}/$1 $gopath

			pushd $2 >/dev/null

			GOPATH="${build_dir}:" emake

			popd >/dev/null

			rm -rf $build_dir
		}

		go_examples_compile redis redis/example
	fi
}

src_install() {

	if use examples; then
		insinto "/usr/share/doc/${PF}/example"
		doins redis/example/*

		rm -rf redis/example
	fi

	insinto "/usr/$(get_libdir)/go/src/pkg/${GOPKG}"
	doins -r redis

}
