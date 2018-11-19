#!/bin/sh
export LD_LIBRARY_PATH=./
export DISPLAY=:0.0
export QT_GSTREAMER_CAMERA_ROTATION=left
export QT_GSTREAMER_CAMERABIN_VIDEOSRC=imxv4l2src
export QT_GSTREAMER_WIDGET_VIDEOSINK=overlaysink
#export QT_GSTREAMER_OVERLAYSINK_ROTATION=left
export LANG=zh_CN.UTF-8
if [ ! -d "$myPath"]; then
	mkdir /ramfs
	mount -t ramfs none /ramfs
fi
while true
do
	/home/root/xboard
	sleep 2
done
