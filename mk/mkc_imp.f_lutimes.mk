# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_LUTIMES_MK
_MKC_IMP_F_LUTIMES_MK := 1

MKC_CHECK_FUNCS2 +=	lutimes:sys/time.h
CPPFLAGS +=	-D_MKC_CHECK_LUTIMES

.endif #_MKC_IMP_F_LUTIMES_MK
