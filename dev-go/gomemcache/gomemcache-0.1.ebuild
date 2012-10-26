# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
REV="e9410d3"

inherit multilib

DESCRIPTION="Memcache client for the Go programming language."
HOMEPAGE="https://github.com/kklis/gomemcache"
SRC_URI="https://github.com/kklis/${PN}/tarball/${REV} -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

DEPEND=">=dev-lang/go-1.0.2"
RDEPEND="${DEPEND}"

GOROOT="${ED}usr/$(get_libdir)/go"
GOPKG="${PN}"

S="${WORKDIR}/kklis-${GOPKG}-${REV}"

src_prepare() {

	if use examples; then
		for src in $(find . -name \*.go)
		do
		   sed -r "s/github.com\/kklis\///" -i ${src}
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

			GOPATH="${build_dir}:" go build *go

			popd >/dev/null

			rm -rf $build_dir
		}

		go_examples_compile "" example
	fi
}

src_install() {

	dodoc AUTHORS COPYING LICENSE README

	if use examples; then
		insinto "/usr/share/doc/${PF}/example"
		doins example/*

		rm -rf example
	fi

	insinto "/usr/$(get_libdir)/go/src/pkg/${GOPKG}"
	doins -r *.go

}
