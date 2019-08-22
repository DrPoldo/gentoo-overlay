# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
DESCRIPTION="Featureful FUSE-based union filesystem"
HOMEPAGE="https://github.com/trapexit/mergerfs"
LICENSE="ISC"
SLOT=0


inherit git-r3
SRC_URI=""
EGIT_REPO_URI="https://github.com/trapexit/mergerfs"
KEYWORDS=""

TAG="${PV}"
REFS="refs/tags/${TAG}" 

RDEPEND="sys-apps/attr:=
		>=sys-apps/util-linux-2.18
		sys-devel/gettext:="
DEPEND="${RDEPEND}"

src_unpack() {
   git-r3_fetch ${EGIT_REPO_URI} ${REFS} ${TAG}
   git-r3_checkout ${EGIT_REPO_URI} ${WORKDIR}/${P} ${TAG}
}


src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX%/}/usr" install
	einstalldocs
}
