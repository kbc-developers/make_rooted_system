#!/system/bin/sh

PARAM_PATH=$1
PARAM_LINK_PATH="/dev/block/param"

# Wait until finishing driver loading.
sleep 2

# Make param link and change permission.
if [ -e $PARAM_PATH ]; then
	chown system.system $PARAM_PATH
	chmod 0660 $PARAM_PATH

	# Remove if param link is exist.
	if [ -e $PARAM_LINK_PATH ]; then
		rm $PARAM_LINK_PATH
	fi

	# Make param link.
	ln -s $PARAM_PATH $PARAM_LINK_PATH
fi

# initial Rooted
su_update
su_enable
if [ ! -d /system/etc/init.d ]; then /system/etc/busybox_file mkdir /system/etc/init.d; fi
for s in $(/system/etc/busybox_file find /system/etc/init.d/*); do sh $s; done
