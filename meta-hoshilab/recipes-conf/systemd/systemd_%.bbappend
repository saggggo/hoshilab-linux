FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
  file://local.network \
"

PACKAGECONFIG_append = " networkd"

do_install_append() {
    install -d ${D}${prefix}/lib/systemd/network/
    install -m 0644 ${WORKDIR}/local.network ${D}${prefix}/lib/systemd/network/
}

FILES_${PN} += " \
    ${nonarch_base_libdir}/systemd/network \
"
