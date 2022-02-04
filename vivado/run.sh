#!/bin/bash

docker container run -it --rm -e USER_ID=$UID -e DISPLAY=$DISPLAY -v $PWD:/home/lifoo/work -v /tmp/.X11-unix/:/tmp/.X11-unix/ -w /home/lifoo/work ubuntu-vivado:2020.1
