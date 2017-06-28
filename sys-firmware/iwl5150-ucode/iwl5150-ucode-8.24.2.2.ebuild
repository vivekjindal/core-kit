# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-firmware/iwl5150-ucode/Attic/iwl5150-ucode-8.24.2.2.ebuild,v 1.3 2015/02/03 15:03:02 pacho dead $

MY_PN="iwlwifi-5150-ucode"

DESCRIPTION="Intel (R) Wireless WiFi Link 5150-AGN ucode"
HOMEPAGE="http://linuxwireless.org/en/users/Drivers/iwlwifi"
SRC_URI="http://linuxwireless.org/attachments/en/users/Drivers/iwlwifi/${MY_PN}-${PV}.tgz"

LICENSE="ipw3945"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/${MY_PN}-${PV}"

src_compile() {
	true;
}

src_install() {
	insinto /lib/firmware
	doins "${S}/iwlwifi-5150-2.ucode"

	dodoc README* || die "dodoc failed"
}
