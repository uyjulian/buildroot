################################################################################
#
# fakeroot
#
################################################################################

FAKEROOT_VERSION = 1.26
FAKEROOT_SOURCE = fakeroot_$(FAKEROOT_VERSION).orig.tar.gz
FAKEROOT_SITE = https://snapshot.debian.org/archive/debian/20210907T092512Z/pool/main/f/fakeroot

HOST_FAKEROOT_DEPENDENCIES = host-acl
# Force capabilities detection off
# For now these are process capabilities (faked) rather than file
# so they're of no real use
HOST_FAKEROOT_CONF_ENV = \
	ac_cv_header_sys_capability_h=no \
	ac_cv_func_capset=no

FAKEROOT_LICENSE = GPLv3+
FAKEROOT_LICENSE_FILES = COPYING

$(eval $(host-autotools-package))
