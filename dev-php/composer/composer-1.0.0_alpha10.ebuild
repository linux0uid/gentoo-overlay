# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Composer is a PHP package manager"
HOMEPAGE="https://getcomposer.org"
SRC_URI="https://getcomposer.org/download/${PV/_/-}/${PN}.phar -> ${P}.phar"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-lang/php[phar]"
RDEPEND="${DEPEND}"

src_unpack() {
	# Satisfy portage.
	mkdir ${P}
}

src_prepare() {
	cp "../../distdir/${P}.phar" composer
}

src_install() {
	dobin composer
}
