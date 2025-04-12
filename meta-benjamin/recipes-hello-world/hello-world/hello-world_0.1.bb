SUMMARY = "Hello, World! recipe"
DESCRIPTION = "Simple recipe for educational purpose"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=85a7df83257cda6648ce80e06a9db0e8"

SRC_URI = "git://github.com/benjamin-bjornsson-ab/hello-world.git;branch=main;protocol=https"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/git"

inherit cmake

do_install:append() {
    install -d ${D}${bindir}
    install -m 0755 hello-world ${D}${bindir}/hello-world
}
