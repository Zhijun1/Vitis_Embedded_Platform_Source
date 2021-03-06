#
SRC_URI += " \
	file://background.jpg \
"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

RDEPENDS_${PN} += "adwaita-icon-theme"

do_install_append() {
	cp ${WORKDIR}/weston.ini ${D}${sysconfdir}/xdg/weston/

	mkdir -p ${D}${datadir}/weston/
	cp ${WORKDIR}/background.jpg ${D}${datadir}/weston/
}

FILES_${PN} += "${datadir}/weston/*"
