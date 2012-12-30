# Copyright 2011 sakuramilk
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

#!/bin/sh

echo "===== ROOTED FACTROYFS make start ====="

FACTORYFS_DIR=tmp/factoryfs

# initialize
if [ -d ./out ]; then
	sudo rm -rf ./out
fi
if [ -d ./tmp ]; then
	sudo rm -rf ./tmp
fi

echo ">>>>> checking file..."
# check factoryfs.img file
if [ ! -e ./system.img.ext4 ]; then
	echo "ERR: Not found system.img.ext4"
	exit
fi

# make simg2img
if [ ! -e ./bin/ext4_utils/simg2img ]; then
    echo ">>>>> make simg2img binary..."
	make -C ./bin/ext4_utils/
fi

# extract factoryfs files
echo ">>>>> extract factroyfs files. wait a few minuts..."
if [ ! -d ./tmp/mnt ]; then
	mkdir -p ./tmp/mnt
fi
if [ -d $FACTORYFS_DIR ]; then
	sudo rm -rf $FACTORYFS_DIR
fi
mkdir -p $FACTORYFS_DIR

./bin/ext4_utils/simg2img system.img.ext4 ./tmp/output.img
sudo mount -o loop,ro,noexec,noload ./tmp/output.img ./tmp/mnt
sudo rsync -av tmp/mnt/ $FACTORYFS_DIR
sudo umount ./tmp/mnt

# install su
echo ">>>>> su package insall..."
sudo cp -av sed/su $FACTORYFS_DIR/xbin/su
sudo cp -av sed/Superuser.apk $FACTORYFS_DIR/app/Superuser.apk
sudo chown 0.0 $FACTORYFS_DIR/xbin/su
sudo chmod 6755 $FACTORYFS_DIR/xbin/su
sudo chown 0.0 $FACTORYFS_DIR/app/Superuser.apk
sudo chmod 644 $FACTORYFS_DIR/app/Superuser.apk

# repack
echo ">>>>> repack factroyfs.img..."
if [ -d ./out ]; then
	sudo rm -rf ./out
fi
mkdir -p ./out
cd ./bin/ext4_utils
sudo ./make_ext4fs -s -l 744488960 -a system ../../out/system.img.ext4 ../../$FACTORYFS_DIR

cd ../../

# make package
echo ">>>>> make odin package..."
cd out
tar cvf SC03D-ROOTED-system.tar system.img.ext4
md5sum -t SC03D-ROOTED-system.tar >> SC03D-ROOTED-system.tar
mv SC03D-ROOTED-system.tar SC03D-ROOTED-system.tar.md5
sudo rm system.img.ext4
cd ../

# cleanup
echo ">>>>> cleanup..."
sudo rm -rf ./tmp

echo "===== ROOTED FACTROYFS make end ====="
