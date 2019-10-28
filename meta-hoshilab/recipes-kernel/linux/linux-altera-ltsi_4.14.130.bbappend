FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "\
      file://socfpga_cyclone5_sockit.dts \
      file://fragment.cfg \
      "
KERNEL_DEVICETREE = "socfpga_cyclone5_sockit.dtb"

do_configure_prepend() {
      cp ${WORKDIR}/socfpga_cyclone5_sockit.dts ${S}/arch/arm/boot/dts
}
