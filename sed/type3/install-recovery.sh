#!/system/bin/sh

# remount /system
mount -o remount,rw /system


# busybox
dd if=/system/etc/busybox_file of=/system/xbin/busybox
chown root.shell /system/xbin/busybox
chmod 755 /system/xbin/busybox
busybox ln -sf busybox /system/xbin/[
busybox ln -sf busybox /system/xbin/[[
busybox ln -sf busybox /system/xbin/acpid
busybox ln -sf busybox /system/xbin/add-shell
busybox ln -sf busybox /system/xbin/addgroup
busybox ln -sf busybox /system/xbin/adduser
busybox ln -sf busybox /system/xbin/adjtimex
busybox ln -sf busybox /system/xbin/arp
busybox ln -sf busybox /system/xbin/arping
busybox ln -sf busybox /system/xbin/ash
busybox ln -sf busybox /system/xbin/awk
busybox ln -sf busybox /system/xbin/base64
busybox ln -sf busybox /system/xbin/basename
busybox ln -sf busybox /system/xbin/beep
busybox ln -sf busybox /system/xbin/blkid
busybox ln -sf busybox /system/xbin/blockdev
busybox ln -sf busybox /system/xbin/bootchartd
busybox ln -sf busybox /system/xbin/brctl
busybox ln -sf busybox /system/xbin/bunzip2
busybox ln -sf busybox /system/xbin/bzcat
busybox ln -sf busybox /system/xbin/bzip2
busybox ln -sf busybox /system/xbin/cal
busybox ln -sf busybox /system/xbin/cat
busybox ln -sf busybox /system/xbin/catv
busybox ln -sf busybox /system/xbin/chat
busybox ln -sf busybox /system/xbin/chattr
busybox ln -sf busybox /system/xbin/chgrp
busybox ln -sf busybox /system/xbin/chmod
busybox ln -sf busybox /system/xbin/chown
busybox ln -sf busybox /system/xbin/chpasswd
busybox ln -sf busybox /system/xbin/chpst
busybox ln -sf busybox /system/xbin/chroot
busybox ln -sf busybox /system/xbin/chrt
busybox ln -sf busybox /system/xbin/chvt
busybox ln -sf busybox /system/xbin/cksum
busybox ln -sf busybox /system/xbin/clear
busybox ln -sf busybox /system/xbin/cmp
busybox ln -sf busybox /system/xbin/comm
busybox ln -sf busybox /system/xbin/cp
busybox ln -sf busybox /system/xbin/cpio
busybox ln -sf busybox /system/xbin/crond
busybox ln -sf busybox /system/xbin/crontab
busybox ln -sf busybox /system/xbin/cryptpw
busybox ln -sf busybox /system/xbin/cttyhack
busybox ln -sf busybox /system/xbin/cut
busybox ln -sf busybox /system/xbin/date
busybox ln -sf busybox /system/xbin/dc
busybox ln -sf busybox /system/xbin/dd
busybox ln -sf busybox /system/xbin/deallocvt
busybox ln -sf busybox /system/xbin/delgroup
busybox ln -sf busybox /system/xbin/deluser
busybox ln -sf busybox /system/xbin/depmod
busybox ln -sf busybox /system/xbin/devmem
busybox ln -sf busybox /system/xbin/df
busybox ln -sf busybox /system/xbin/dhcprelay
busybox ln -sf busybox /system/xbin/diff
busybox ln -sf busybox /system/xbin/dirname
busybox ln -sf busybox /system/xbin/dmesg
busybox ln -sf busybox /system/xbin/dnsd
busybox ln -sf busybox /system/xbin/dnsdomainname
busybox ln -sf busybox /system/xbin/dos2unix
busybox ln -sf busybox /system/xbin/du
busybox ln -sf busybox /system/xbin/dumpkmap
busybox ln -sf busybox /system/xbin/dumpleases
busybox ln -sf busybox /system/xbin/echo
busybox ln -sf busybox /system/xbin/ed
busybox ln -sf busybox /system/xbin/egrep
busybox ln -sf busybox /system/xbin/eject
busybox ln -sf busybox /system/xbin/env
busybox ln -sf busybox /system/xbin/envdir
busybox ln -sf busybox /system/xbin/envuidgid
busybox ln -sf busybox /system/xbin/ether-wake
busybox ln -sf busybox /system/xbin/expand
busybox ln -sf busybox /system/xbin/expr
busybox ln -sf busybox /system/xbin/fakeidentd
busybox ln -sf busybox /system/xbin/false
busybox ln -sf busybox /system/xbin/fbset
busybox ln -sf busybox /system/xbin/fbsplash
busybox ln -sf busybox /system/xbin/fdflush
busybox ln -sf busybox /system/xbin/fdformat
busybox ln -sf busybox /system/xbin/fdisk
busybox ln -sf busybox /system/xbin/fgconsole
busybox ln -sf busybox /system/xbin/fgrep
busybox ln -sf busybox /system/xbin/find
busybox ln -sf busybox /system/xbin/findfs
busybox ln -sf busybox /system/xbin/flock
busybox ln -sf busybox /system/xbin/fold
busybox ln -sf busybox /system/xbin/free
busybox ln -sf busybox /system/xbin/freeramdisk
busybox ln -sf busybox /system/xbin/fsck
busybox ln -sf busybox /system/xbin/fsck.minix
busybox ln -sf busybox /system/xbin/fsync
busybox ln -sf busybox /system/xbin/ftpd
busybox ln -sf busybox /system/xbin/ftpget
busybox ln -sf busybox /system/xbin/ftpput
busybox ln -sf busybox /system/xbin/fuser
busybox ln -sf busybox /system/xbin/getopt
busybox ln -sf busybox /system/xbin/getty
busybox ln -sf busybox /system/xbin/grep
busybox ln -sf busybox /system/xbin/groups
busybox ln -sf busybox /system/xbin/gunzip
busybox ln -sf busybox /system/xbin/gzip
busybox ln -sf busybox /system/xbin/halt
busybox ln -sf busybox /system/xbin/hd
busybox ln -sf busybox /system/xbin/hdparm
busybox ln -sf busybox /system/xbin/head
busybox ln -sf busybox /system/xbin/hexdump
busybox ln -sf busybox /system/xbin/hostid
busybox ln -sf busybox /system/xbin/hostname
busybox ln -sf busybox /system/xbin/httpd
busybox ln -sf busybox /system/xbin/hush
busybox ln -sf busybox /system/xbin/hwclock
busybox ln -sf busybox /system/xbin/id
busybox ln -sf busybox /system/xbin/ifconfig
busybox ln -sf busybox /system/xbin/ifdown
busybox ln -sf busybox /system/xbin/ifenslave
busybox ln -sf busybox /system/xbin/ifplugd
busybox ln -sf busybox /system/xbin/ifup
busybox ln -sf busybox /system/xbin/inetd
busybox ln -sf busybox /system/xbin/init
busybox ln -sf busybox /system/xbin/insmod
busybox ln -sf busybox /system/xbin/install
busybox ln -sf busybox /system/xbin/ionice
busybox ln -sf busybox /system/xbin/iostat
busybox ln -sf busybox /system/xbin/ip
busybox ln -sf busybox /system/xbin/ipaddr
busybox ln -sf busybox /system/xbin/ipcalc
busybox ln -sf busybox /system/xbin/ipcrm
busybox ln -sf busybox /system/xbin/ipcs
busybox ln -sf busybox /system/xbin/iplink
busybox ln -sf busybox /system/xbin/iproute
busybox ln -sf busybox /system/xbin/iprule
busybox ln -sf busybox /system/xbin/iptunnel
busybox ln -sf busybox /system/xbin/kbd_mode
busybox ln -sf busybox /system/xbin/kill
busybox ln -sf busybox /system/xbin/killall
busybox ln -sf busybox /system/xbin/killall5
busybox ln -sf busybox /system/xbin/klogd
busybox ln -sf busybox /system/xbin/last
busybox ln -sf busybox /system/xbin/less
busybox ln -sf busybox /system/xbin/linux32
busybox ln -sf busybox /system/xbin/linux64
busybox ln -sf busybox /system/xbin/linuxrc
busybox ln -sf busybox /system/xbin/ln
busybox ln -sf busybox /system/xbin/loadfont
busybox ln -sf busybox /system/xbin/loadkmap
busybox ln -sf busybox /system/xbin/logger
busybox ln -sf busybox /system/xbin/login
busybox ln -sf busybox /system/xbin/logname
busybox ln -sf busybox /system/xbin/logread
busybox ln -sf busybox /system/xbin/losetup
busybox ln -sf busybox /system/xbin/lpd
busybox ln -sf busybox /system/xbin/lpq
busybox ln -sf busybox /system/xbin/lpr
busybox ln -sf busybox /system/xbin/ls
busybox ln -sf busybox /system/xbin/lsattr
busybox ln -sf busybox /system/xbin/lsmod
busybox ln -sf busybox /system/xbin/lspci
busybox ln -sf busybox /system/xbin/lsusb
busybox ln -sf busybox /system/xbin/lzcat
busybox ln -sf busybox /system/xbin/lzma
busybox ln -sf busybox /system/xbin/lzop
busybox ln -sf busybox /system/xbin/lzopcat
busybox ln -sf busybox /system/xbin/makedevs
busybox ln -sf busybox /system/xbin/makemime
busybox ln -sf busybox /system/xbin/man
busybox ln -sf busybox /system/xbin/md5sum
busybox ln -sf busybox /system/xbin/mdev
busybox ln -sf busybox /system/xbin/mesg
busybox ln -sf busybox /system/xbin/microcom
busybox ln -sf busybox /system/xbin/mkdir
busybox ln -sf busybox /system/xbin/mkdosfs
busybox ln -sf busybox /system/xbin/mke2fs
busybox ln -sf busybox /system/xbin/mkfifo
busybox ln -sf busybox /system/xbin/mkfs.ext2
busybox ln -sf busybox /system/xbin/mkfs.minix
busybox ln -sf busybox /system/xbin/mkfs.vfat
busybox ln -sf busybox /system/xbin/mknod
busybox ln -sf busybox /system/xbin/mkpasswd
busybox ln -sf busybox /system/xbin/mkswap
busybox ln -sf busybox /system/xbin/mktemp
busybox ln -sf busybox /system/xbin/modinfo
busybox ln -sf busybox /system/xbin/modprobe
busybox ln -sf busybox /system/xbin/more
busybox ln -sf busybox /system/xbin/mount
busybox ln -sf busybox /system/xbin/mountpoint
busybox ln -sf busybox /system/xbin/mpstat
busybox ln -sf busybox /system/xbin/mt
busybox ln -sf busybox /system/xbin/mv
busybox ln -sf busybox /system/xbin/nameif
busybox ln -sf busybox /system/xbin/nbd-client
busybox ln -sf busybox /system/xbin/nc
busybox ln -sf busybox /system/xbin/netstat
busybox ln -sf busybox /system/xbin/nice
busybox ln -sf busybox /system/xbin/nmeter
busybox ln -sf busybox /system/xbin/nohup
busybox ln -sf busybox /system/xbin/nslookup
busybox ln -sf busybox /system/xbin/ntpd
busybox ln -sf busybox /system/xbin/od
busybox ln -sf busybox /system/xbin/openvt
busybox ln -sf busybox /system/xbin/passwd
busybox ln -sf busybox /system/xbin/patch
busybox ln -sf busybox /system/xbin/pgrep
busybox ln -sf busybox /system/xbin/pidof
busybox ln -sf busybox /system/xbin/ping
busybox ln -sf busybox /system/xbin/ping6
busybox ln -sf busybox /system/xbin/pipe_progress
busybox ln -sf busybox /system/xbin/pivot_root
busybox ln -sf busybox /system/xbin/pkill
busybox ln -sf busybox /system/xbin/pmap
busybox ln -sf busybox /system/xbin/popmaildir
busybox ln -sf busybox /system/xbin/poweroff
busybox ln -sf busybox /system/xbin/powertop
busybox ln -sf busybox /system/xbin/printenv
busybox ln -sf busybox /system/xbin/printf
busybox ln -sf busybox /system/xbin/ps
busybox ln -sf busybox /system/xbin/pscan
busybox ln -sf busybox /system/xbin/pstree
busybox ln -sf busybox /system/xbin/pwd
busybox ln -sf busybox /system/xbin/pwdx
busybox ln -sf busybox /system/xbin/raidautorun
busybox ln -sf busybox /system/xbin/rdate
busybox ln -sf busybox /system/xbin/rdev
busybox ln -sf busybox /system/xbin/readahead
busybox ln -sf busybox /system/xbin/readlink
busybox ln -sf busybox /system/xbin/readprofile
busybox ln -sf busybox /system/xbin/realpath
busybox ln -sf busybox /system/xbin/reboot
busybox ln -sf busybox /system/xbin/reformime
busybox ln -sf busybox /system/xbin/remove-shell
busybox ln -sf busybox /system/xbin/renice
busybox ln -sf busybox /system/xbin/reset
busybox ln -sf busybox /system/xbin/resize
busybox ln -sf busybox /system/xbin/rev
busybox ln -sf busybox /system/xbin/rm
busybox ln -sf busybox /system/xbin/rmdir
busybox ln -sf busybox /system/xbin/rmmod
busybox ln -sf busybox /system/xbin/route
busybox ln -sf busybox /system/xbin/rpm
busybox ln -sf busybox /system/xbin/rpm2cpio
busybox ln -sf busybox /system/xbin/rtcwake
busybox ln -sf busybox /system/xbin/run-parts
busybox ln -sf busybox /system/xbin/runlevel
busybox ln -sf busybox /system/xbin/runsv
busybox ln -sf busybox /system/xbin/runsvdir
busybox ln -sf busybox /system/xbin/rx
busybox ln -sf busybox /system/xbin/script
busybox ln -sf busybox /system/xbin/scriptreplay
busybox ln -sf busybox /system/xbin/sed
busybox ln -sf busybox /system/xbin/sendmail
busybox ln -sf busybox /system/xbin/seq
busybox ln -sf busybox /system/xbin/setarch
busybox ln -sf busybox /system/xbin/setconsole
busybox ln -sf busybox /system/xbin/setfont
busybox ln -sf busybox /system/xbin/setkeycodes
busybox ln -sf busybox /system/xbin/setlogcons
busybox ln -sf busybox /system/xbin/setserial
busybox ln -sf busybox /system/xbin/setsid
busybox ln -sf busybox /system/xbin/setuidgid
busybox ln -sf busybox /system/xbin/sh
busybox ln -sf busybox /system/xbin/sha1sum
busybox ln -sf busybox /system/xbin/sha256sum
busybox ln -sf busybox /system/xbin/sha512sum
busybox ln -sf busybox /system/xbin/showkey
busybox ln -sf busybox /system/xbin/slattach
busybox ln -sf busybox /system/xbin/sleep
busybox ln -sf busybox /system/xbin/smemcap
busybox ln -sf busybox /system/xbin/softlimit
busybox ln -sf busybox /system/xbin/sort
busybox ln -sf busybox /system/xbin/split
busybox ln -sf busybox /system/xbin/start-stop-daemon
busybox ln -sf busybox /system/xbin/stat
busybox ln -sf busybox /system/xbin/strings
busybox ln -sf busybox /system/xbin/stty
busybox ln -sf busybox /system/xbin/su
busybox ln -sf busybox /system/xbin/sulogin
busybox ln -sf busybox /system/xbin/sum
busybox ln -sf busybox /system/xbin/sv
busybox ln -sf busybox /system/xbin/svlogd
busybox ln -sf busybox /system/xbin/swapoff
busybox ln -sf busybox /system/xbin/swapon
busybox ln -sf busybox /system/xbin/switch_root
busybox ln -sf busybox /system/xbin/sync
busybox ln -sf busybox /system/xbin/sysctl
busybox ln -sf busybox /system/xbin/syslogd
busybox ln -sf busybox /system/xbin/tac
busybox ln -sf busybox /system/xbin/tail
busybox ln -sf busybox /system/xbin/tar
busybox ln -sf busybox /system/xbin/tcpsvd
busybox ln -sf busybox /system/xbin/tee
busybox ln -sf busybox /system/xbin/telnet
busybox ln -sf busybox /system/xbin/telnetd
busybox ln -sf busybox /system/xbin/test
busybox ln -sf busybox /system/xbin/tftp
busybox ln -sf busybox /system/xbin/tftpd
busybox ln -sf busybox /system/xbin/time
busybox ln -sf busybox /system/xbin/timeout
busybox ln -sf busybox /system/xbin/top
busybox ln -sf busybox /system/xbin/touch
busybox ln -sf busybox /system/xbin/tr
busybox ln -sf busybox /system/xbin/traceroute
busybox ln -sf busybox /system/xbin/traceroute6
busybox ln -sf busybox /system/xbin/true
busybox ln -sf busybox /system/xbin/tty
busybox ln -sf busybox /system/xbin/ttysize
busybox ln -sf busybox /system/xbin/tunctl
busybox ln -sf busybox /system/xbin/ubiattach
busybox ln -sf busybox /system/xbin/ubidetach
busybox ln -sf busybox /system/xbin/ubimkvol
busybox ln -sf busybox /system/xbin/ubirmvol
busybox ln -sf busybox /system/xbin/ubirsvol
busybox ln -sf busybox /system/xbin/ubiupdatevol
busybox ln -sf busybox /system/xbin/udhcpc
busybox ln -sf busybox /system/xbin/udhcpd
busybox ln -sf busybox /system/xbin/udpsvd
busybox ln -sf busybox /system/xbin/umount
busybox ln -sf busybox /system/xbin/uname
busybox ln -sf busybox /system/xbin/unexpand
busybox ln -sf busybox /system/xbin/uniq
busybox ln -sf busybox /system/xbin/unix2dos
busybox ln -sf busybox /system/xbin/unlzma
busybox ln -sf busybox /system/xbin/unlzop
busybox ln -sf busybox /system/xbin/unxz
busybox ln -sf busybox /system/xbin/unzip
busybox ln -sf busybox /system/xbin/uptime
busybox ln -sf busybox /system/xbin/users
busybox ln -sf busybox /system/xbin/usleep
busybox ln -sf busybox /system/xbin/uudecode
busybox ln -sf busybox /system/xbin/uuencode
busybox ln -sf busybox /system/xbin/vconfig
busybox ln -sf busybox /system/xbin/vi
busybox ln -sf busybox /system/xbin/vlock
busybox ln -sf busybox /system/xbin/volname
busybox ln -sf busybox /system/xbin/wall
busybox ln -sf busybox /system/xbin/watch
busybox ln -sf busybox /system/xbin/watchdog
busybox ln -sf busybox /system/xbin/wc
busybox ln -sf busybox /system/xbin/wget
busybox ln -sf busybox /system/xbin/which
busybox ln -sf busybox /system/xbin/who
busybox ln -sf busybox /system/xbin/whoami
busybox ln -sf busybox /system/xbin/whois
busybox ln -sf busybox /system/xbin/xargs
busybox ln -sf busybox /system/xbin/xz
busybox ln -sf busybox /system/xbin/xzcat
busybox ln -sf busybox /system/xbin/yes
busybox ln -sf busybox /system/xbin/zcat
busybox ln -sf busybox /system/xbin/zcip


#su (for virifi 's method)
busybox cp /system/etc/su_client /system/xbin/su
chown root.root /system/xbin/su
chmod 6755 /system/xbin/su


chown root.root /system/xbin/superuser_su
chmod 6755 /system/xbin/superuser_su


mount -o remount,ro /system

