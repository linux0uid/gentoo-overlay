# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit git-r3

UpPN="symfony"

DESCRIPTION="The Symfony Installer"
HOMEPAGE="http://symfony.com"
EGIT_REPO_URI="git://github.com/symfony/${PN}.git
				https://github.com/symfony/${PN}.git"

EGIT_COMMIT="6a4aac6f13b8ed74f11fa9e855a0516fd56a910a"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-lang/php[phar]"
DEPEND="${DEPEND}
		>=dev-php/composer-1.0.0_alpha10
		>=dev-php/box-2.5.2"

src_unpack() {
	git-r3_fetch
	git-r3_checkout
}

src_prepare() {
	composer install
	box build
	mv "${UpPN}.phar" ${UpPN}
}
src_install() {
	insinto "/usr/bin"
	doins "${UpPN}"
	dobin "${UpPN}"
}
