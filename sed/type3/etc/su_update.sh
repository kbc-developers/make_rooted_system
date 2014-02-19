#!/system/bin/sh

tmp_dir=/data/local/tmp/su_update_tmp
tmp_apk=superuser.apk

apk_su=assets/armeabi/su
curr_su_deamon=/system/bin/.kbc/.superuser_su
curr_su=/system/xbin/su
#------------------------------------------
cleanup()
{
	/system/etc/su_client -c "/system/etc/busybox_file rm -rf $tmp_dir"
	exit $1
}

get_install_apk()
{
	apk_path=`pm path com.koushikdutta.superuser | cut -c9-`
	if [ -d "$tmp_dir" ] ; then
		/system/etc/su_client -c "/system/etc/busybox_file rm -rf $tmp_dir"
	fi

	if [ ! -z "$apk_path" ] ;then
	
		/system/etc/su_client -c "/system/etc/busybox_file mkdir -p $tmp_dir"
		/system/etc/su_client -c "/system/etc/busybox_file chmod 755 $tmp_dir"
	
		/system/etc/su_client -c "/system/etc/busybox_file cp $apk_path $tmp_dir/$tmp_apk"
		/system/etc/su_client -c "chmod 666 $tmp_dir/$tmp_apk"
		if [ -f "$tmp_dir/$tmp_apk" ] ;then
			echo $apk_path detect
		else
			echo supersu not installed
			cleanup 1
		fi
	else
		echo supersu not installed
		cleanup 2
	fi
}

get_apk_su()
{
	/system/etc/su_client -c "/system/etc/busybox_file unzip -q $tmp_dir/$tmp_apk -d $tmp_dir"
	/system/etc/su_client -c "/system/etc/busybox_file chmod 755 $tmp_dir/$apk_su"
	/system/etc/su_client -c "/system/etc/busybox_file chown 0.0 $tmp_dir/$apk_su"
	if [ -f "$tmp_dir/$apk_su" ] ;then
		echo new su binary extracted
	else
		echo extract error new su binary!!
		cleanup 3
	fi
}

check_update()
{
	tmp_ver=`$tmp_dir/$apk_su -V`
	cur_ver=`$curr_su_deamon -V`
	echo tmp_ver: $tmp_ver
	echo cur_ver: $cur_ver
	if [ $tmp_ver -gt $cur_ver ] ;then
		echo DETECT UPDATE SuperSU!!!
	else
		cleanup 4
	fi
}

replace_su_binary()
{
	/system/etc/su_client -c "/system/etc/busybox_file rm -f $curr_su_deamon"
	/system/etc/su_client -c "/system/etc/busybox_file rm -f $curr_su"
	/system/etc/su_client -c "/system/etc/busybox_file cp -av $tmp_dir/$apk_su $curr_su_deamon"
	/system/etc/su_client -c "/system/etc/busybox_file cp -av $tmp_dir/$apk_su $curr_su"
	sync;sync;sync
}


get_install_apk
get_apk_su
check_update
replace_su_binary
cleanup 0
