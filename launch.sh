#!/bin/sh

docker build -f kicad9.Dockerfile -t kicad9 .

xhost +SI:localuser:root
xhost +local:docker

docker run --rm \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /usr/share/fonts:/usr/share/fonts \
  -v $HOME/kicad/config:/root/config/ \
  -v $HOME/kicad/projects:/root/projects/ \
  --device /dev/dri \
  --group-add video \
  kicad9 "$@"
