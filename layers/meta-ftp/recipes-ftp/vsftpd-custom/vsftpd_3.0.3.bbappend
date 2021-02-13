SUMMARY = "custom vsftpd.conf"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://vsftpd.conf"

do_install_append() {
	echo "is this working"
        install -m 0755 ${WORKDIR}/vsftpd.conf ${D}/etc
	install -m 0755 -d ${D}/ftp
}

FILES_${PN} += "/ftp"
