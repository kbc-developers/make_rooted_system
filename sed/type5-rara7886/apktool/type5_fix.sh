#!/bin/bash
_FACTORYFS_DIR=$1
apk_fix=$2/apkfix
BOOT=:core.jar:core-junit.jar:bouncycastle.jar:ext.jar:framework.jar:framework2.jar:telephony-common.jar:voip-common.jar:mms-common.jar:android.policy.jar:services.jar:apache-xml.jar:sec_edm.jar:seccamera.jar:scrollpause.jar:stayrotation.jar:smartfaceservice.jar:secocsp.jar:sc.jar:commonimsinterface.jar

#Patching SecSettings
sudo mkdir $apk_fix

sudo java -jar baksmali-2.0.3.jar -c $BOOT -d $_FACTORYFS_DIR/framework -x $_FACTORYFS_DIR/app/SecSettings.odex -o $apk_fix/SecSettings

sudo patch -d $apk_fix/SecSettings/com/android/settings/deviceinfo/ < Status.smali.patch

sudo java -jar smali-2.0.3.jar $apk_fix/SecSettings -o ./classes.dex

sudo 7z a -mx=0 -tzip $_FACTORYFS_DIR/app/SecSettings.apk ./classes.dex

sudo rm $_FACTORYFS_DIR/app/SecSettings.odex
sudo rm ./classes.dex

sudo rm -rf $apk_fix

#deleate SysScope's META-INF

sudo mkdir $apk_fix

sudo unzip $_FACTORYFS_DIR/app/SysScope.apk -d $apk_fix

sudo rm -rf $apk_fix/META-INF

sudo 7z a -mx=0 -tzip $_FACTORYFS_DIR/app/SysScope.apk $apk_fix/*

sudo rm -r $apk_fix

exit



