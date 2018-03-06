#!/bin/bash

android_studio_home=$HOME/.docker-android-studio
mkdir -p $android_studio_home

image_name=android-studio

docker run -it --rm \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v /tmp:/tmp \
	-v ${android_studio_home}:/home/devuser \
	$image_name
