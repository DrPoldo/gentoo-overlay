# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
DESCRIPTION="Featureful FUSE-based union filesystem"
HOMEPAGE="https://github.com/trapexit/mergerfs"
LICENSE="ISC"
SLOT=0

SRC_URI="https://github.com/trapexit/mergerfs/archive/${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

RDEPEND="sys-apps/attr:=
		>=sys-apps/util-linux-2.18
		sys-devel/gettext:="
DEPEND="app-text/pandoc
		${RDEPEND}"

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX%/}/usr" install
	einstalldocs
}