# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit git-r3

DESCRIPTION="Symfony2 PHP CodeSniffer Coding Standard"
HOMEPAGE="https://github.com/escapestudios/Symfony2-coding-standard"
SRC_URI=""

EGIT_REPO_URI="	git://github.com/escapestudios/Symfony2-coding-standard.git
				https://github.com/escapestudios/Symfony2-coding-standard.git"
EGIT_COMMIT="2.0.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND=">=dev-php/PEAR-PHP_CodeSniffer-2.3.0"
DEPEND="${RDEPEND}
		>=dev-vcs/git-2.0.5
		>=dev-php/pear-1.9.4"

src_unpack() {
	git-r3_fetch
	git-r3_checkout
}

src_install() {
	php_dir=$(pear config-get php_dir)
	dodir "${php_dir}/PHP/CodeSniffer/Standards/Symfony2"
	insinto "${php_dir}/PHP/CodeSniffer/Standards/Symfony2"
	doins -r "${S}/Sniffs"
	doins -r "${S}/Tests"
	doins "${S}/ruleset.xml"
}
