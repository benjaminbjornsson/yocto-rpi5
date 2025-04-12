SUMMARY = "Custom Yocto image"
LICENSE = "MIT"

inherit core-image

IMAGE_INSTALL:append = " \
    packagegroup-core-boot \
    hello-world \
"
