require recipes-sato/images/core-image-sato-sdk.bb

DESCRIPTION = "Hoshilab linux"

PACKAGE_INSTALL += " packagegroup-self-hosted-debug"
LICENSE = "MIT"
IMAGE_FSTYPES = "ext4"
