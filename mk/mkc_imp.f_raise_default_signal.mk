# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_RAISE_DEFAULT_SIGNAL_MK
_MKC_IMP_F_RAISE_DEFAULT_SIGNAL_MK := 1

MKC_CHECK_FUNCS1   +=	raise_default_signal:util.h
MKC_CHECK_FUNCLIBS +=	raise_default_signal:util

.include <mkc.conf.mk>

. if ${HAVE_FUNCLIB.raise_default_signal.util:U} == 0 && \
    ${.CURDIR:T} == "compatlib"
SRCS +=	${SRCDIR_compatlib}/mkc_raise_default_signal.c
. endif

CPPFLAGS +=	-D_MKC_CHECK_RAISE_DEFAULT_SIGNAL

.endif #_MKC_IMP_F_RAISE_DEFAULT_SIGNAL_MK
