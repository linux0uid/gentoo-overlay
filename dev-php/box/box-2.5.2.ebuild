# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit git-r3

UpPN="box2"

DESCRIPTION="An application for building and managing Phars"
HOMEPAGE="http://box-project.org"
EGIT_REPO_URI="git://github.com/box-project/${UpPN}.git
				https://github.com/box-project/${UpPN}.git"

EGIT_COMMIT="046900a936a3272990f9978a69e64094e32fd76c"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-lang/php[phar]"
DEPEND="${DEPEND}
		>=dev-php/composer-1.0.0_alpha10"

src_unpack() {
	git-r3_fetch
	git-r3_checkout
}

src_prepare() {
	composer require kherge/box --prefer-source
	php bin/box build
	mv "${P}.phar" ${PN}
}
src_install() {
	insinto "/usr/bin"
	doins "${PN}"
	dobin "${PN}"
}
