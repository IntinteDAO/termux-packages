TERMUX_PKG_HOMEPAGE=https://github.com/scim-im/scim
TERMUX_PKG_DESCRIPTION="Smart Common Input Method (SCIM) is an input method (IM) platform."
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=1.4.18+git20211204
TERMUX_PKG_SRCURL=http://deb.debian.org/debian/pool/main/s/scim/scim_${TERMUX_PKG_VERSION}.orig.tar.gz
TERMUX_PKG_SHA256=d16f11b1a88f4d2375fbfe64128fd68afb91fb1e8a38e98dbdb32cde03c94cc5
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="ac_cv_func_bcopy=yes"

termux_step_pre_configure() {
    autoreconf -fi
}
