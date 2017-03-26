# will not be supported: chio db mt ps

#PROJECTS = bdes							\
  csh									\
  db									\
  ksh rcmd rcp								\
  sh sync								\
									\
									\
  asa at checknr chflags cleantagsCVS/ cleantagscleantags.sh colcrt	\
  crunch du fgen flock fpr from fsplit ftp gcore	\
  getaddrinfo getconf getent hexdump iconv id indent	\
  infocmp ipcrm ipcs jot leave locate lock logger logname	\
  look lorder machine menuc mkstr msgc nbperf	\
  nice nohup pr qsubst rdist renice	\
  rev rlogin rs rsh rup ruptime rusers rwall rwho script sdiff	\
  seq shar shlock shuffle soelim sort split stat tabs test	\
  time timeout touch tsort tty ul uname unexpand unifdef	\
  units uudecode uuencode uuidgen vgrind what whereis	\
  whois xargs xinstall xlint xstr

PROJECTS  =	apply nawk/bin banner basename cat chmod cleantags \
  cmp col colrm column comm compress cp csplit \
  ctags cut deroff dd dirname \
  domainname echo \
  ed env error \
  expand expr false find fmt fold getopt grep head hostname join kill \
  lam ln ls m4 mkdep mkdir mkfifo mktemp mv nl paste patch pax printenv \
  printf pwd rm rmdir sed \
  sleep stty tail tee testcmd tr true \
  uniq unvis vis wc yes

MKC_CHECK_HEADERS = tzfile.h md2.h db.h

.include <mkc.configure.mk>

.if ${HAVE_HEADER.tzfile_h:U} == 1
PROJECTS += cal
PROJECTS += calendar
PROJECTS += date
.endif

.if ${HAVE_HEADER.md2_h:U} == 1
PROJECTS += cksum
.endif

#.if ${HAVE_HEADER.db_h:U} == 1
#PROJECTS += db
#.endif

#.if ${HAVE_MEMBER.struct_statvfs_f_mntfromname.sys_statvfs_h:U} == 1
#PROJECTS += df
#.endif

LIBDEPS   =	${PROJECTS:S/^/compatlib:/}
SUBPRJ    =	doc nawk/bin:awk

MKC_REQD  =	0.29.1
COMPATLIB =	compatlib

.include <mkc.mk>
