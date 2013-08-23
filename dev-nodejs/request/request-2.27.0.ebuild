# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Simplified HTTP request client."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=""
RDEPEND=">=net-libs/nodejs-0.8.10
	>=dev-nodejs/qs-0.6.0
	>=dev-nodejs/json-stringify-safe-5.0.0
	>=dev-nodejs/forever-agent-0.5.0
	>=dev-nodejs/tunnel-agent-0.3.0
	>=dev-nodejs/http-signature-0.10.0
	>=dev-nodejs/hawk-1.0.0
	>=dev-nodejs/aws-sign-0.3.0
	>=dev-nodejs/oauth-sign-0.3.0
	>=dev-nodejs/cookie-jar-0.3.0
	>=dev-nodejs/node-uuid-1.4.0
	>=dev-nodejs/mime-1.2.9
	>=dev-nodejs/form-data-0.1.0
	${DEPEND}"
