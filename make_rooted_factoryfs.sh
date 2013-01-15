# Copyright 2011-2013 sakuramilk ma34
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
#!/bin/bash
# -------------------------------------------------------
FACTORYFS_DIR=tmp/factoryfs


# -------------------------------------------------------
func_init()
{
	if [ -d ./out ]; then
		sudo rm -rf ./out
	fi
	if [ -d ./tmp ]; then
		sudo rm -rf ./tmp
	fi
}


# -------------------------------------------------------
func_make_model_select()
{
	MODEL=""

	_CONFIGS=`ls ./config | grep config_`

	if [ ! -n "$1" ]; then
		_IDX=1
		for _CONF in $_CONFIGS; do

			_SEL_ITEM=`echo $_CONF | cut -d'_' -f2`
			echo "$_IDX) $_SEL_ITEM"
		   
		   _IDX=`expr $_IDX + 1`
		done

		_IDX=`expr $_IDX - 1`
		read -p "chose model [1-$_IDX] : " _SEL_NUM
		MODEL=`echo $_CONFIGS | cut -d' ' -f$_SEL_NUM | cut -d'_' -f2`
	else
		for _CONF in $_CONFIGS; do
			_SEL_ITEM=`echo $_CONF | cut -d'_' -f2`
			if [ "$1" = "$_SEL_ITEM" ]; then
				MODEL=$1
				break
			fi
		done
	fi
}
# -------------------------------------------------------
func_make_build_select()
{
	if [ ! -n "$1" ]; then
	  echo ""
	  read -p "select build? [(r)ooted/(d)el_preinstall_only default:del_preinstall_only] " BUILD_SELECT
	else
	  BUILD_SELECT=$1
	fi

	if [ "$BUILD_SELECT" = 'rooted' -o "$BUILD_SELECT" = 'r' ]; then
		IMAGE_FILE=$MODEL-ROOTED
	else
		IMAGE_FILE=$MODEL-CUSTOM
	fi
}
# -------------------------------------------------------
func_make_simg2img()
{
	if [ ! -e ./bin/ext4_utils/simg2img ]; then
	    echo ">>>>> make simg2img binary..."
		make -C ./bin/ext4_utils/
	fi
}
# -------------------------------------------------------
func_extract_factoryfs_files()
{
	_FACTORYFS_DIR=$1
	_FACTORYFS_IMG=$2
	
	# extract factoryfs files
	echo ">>>>> extract factroyfs files. wait a few minuts..."
	if [ ! -d ./tmp/mnt ]; then
		mkdir -p ./tmp/mnt
	fi
	if [ -d $_FACTORYFS_DIR ]; then
		sudo rm -rf $_FACTORYFS_DIR
	fi
	mkdir -p $_FACTORYFS_DIR

	./bin/ext4_utils/simg2img $_FACTORYFS_IMG ./tmp/output.img
	sudo mount -o loop,ro,noexec,noload ./tmp/output.img ./tmp/mnt
	sudo rsync -av tmp/mnt/ $_FACTORYFS_DIR
	sudo umount ./tmp/mnt
}
# -------------------------------------------------------
func_delete_preinstall_files()
{
	_FACTORYFS_DIR=$1
	_LIST_FILE="./config/list_$2"                 
	
	if [ -e $_LIST_FILE ]; then
		for FILE_ in `egrep -v '(^#|^$)' $_LIST_FILE`; do
		   sudo rm -f $_FACTORYFS_DIR/$FILE_
		   echo removed $_FACTORYFS_DIR/$FILE_
		done
	else
		echo "can't read list of removing pre-install files"
		echo "skip delete pre-install files"
	fi
}
# -------------------------------------------------------
func_repack_factoryfs_files()
{
	_FACTORYFS_DIR=$1
	_FACTORYFS_IMG=$2
	_FACTORYFS_IMG_SIZE=$3
	echo ">>>>> repack factroyfs.img..."
	if [ -d ./out ]; then
		sudo rm -rf ./out
	fi
	mkdir -p ./out
	cd ./bin/ext4_utils
	sudo ./make_ext4fs -s -l $_FACTORYFS_IMG_SIZE -a system ../../out/$_FACTORYFS_IMG ../../$_FACTORYFS_DIR
	cd ../../
}
# -------------------------------------------------------
func_make_odin_package()
{
	_FACTORYFS_IMG=$1
	_IMAGE_FILE=$2
	_OPT_FILES=$3
	echo ">>>>> make odin package..."
	cd out
	if [ ! -z $_OPT_FILES ]; then
		cp ../$_OPT_FILES ./
	fi
	
	tar cvf $_IMAGE_FILE-system.tar $_FACTORYFS_IMG $_OPT_FILES
	md5sum -t $_IMAGE_FILE-system.tar >> $_IMAGE_FILE-system.tar
	mv $_IMAGE_FILE-system.tar $_IMAGE_FILE-system.tar.md5
	sudo rm $_FACTORYFS_IMG
	if [ ! -z $_OPT_FILES ]; then
		sudo rm $_OPT_FILES
	fi
	cd ../
}
# -------------------------------------------------------
func_user_process()
{
	_FACTORYFS=$1
	_MODEL=$2
	for _DIR in `ls user/$_MODEL`; do

		if [ -f user/$_MODEL/$_DIR/install.sh ]; then
			sh user/$_MODEL/$_DIR/install.sh $_FACTORYFS
		fi
	done

	# call user custom
	sh ./user_custom.sh $_FACTORYFS $_MODEL
}
# -------------------------------------------------------
func_cleanup()
{
	echo ">>>>> cleanup..."
	sudo rm -rf ./tmp
}
# -------------------------------------------------------
#inport install su functions
. ./install_su

#============================================================================
_MODEL_SEL=$1
_BUILD_SEL=$2

func_make_model_select $_MODEL_SEL
if [ -z "$MODEL" ]; then
	echo "error: not found MODEL" && exit -1
fi
#inport model config
. ./config/config_$MODEL

func_make_build_select $_BUILD_SEL
echo "===== $IMAGE_FILE FACTROYFS make start ====="


# make simg2img
func_make_simg2img

# extract factoryfs files
func_extract_factoryfs_files $FACTORYFS_DIR $FACTORYFS_IMG

# install delete pre-install files
func_delete_preinstall_files $FACTORYFS_DIR $MODEL

# install su
if [ "$BUILD_SELECT" = 'rooted' -o "$BUILD_SELECT" = 'r' ]; then
	$SU_INSTALL_FUNC $FACTORYFS_DIR
fi

# call user custom
func_user_process $FACTORYFS_DIR $MODEL



# repack
func_repack_factoryfs_files $FACTORYFS_DIR $FACTORYFS_IMG $FACTORYFS_IMG_SIZE
# make package
func_make_odin_package $FACTORYFS_IMG $IMAGE_FILE $OPT_FILES

# cleanup
func_cleanup

echo "===== $IMAGE_FILE FACTROYFS make end ====="
