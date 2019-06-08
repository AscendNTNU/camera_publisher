#! /bin/bash
CAMERA=/dev/video1

v4l2-ctl -d $CAMERA --set-ctrl exposure_auto=1
v4l2-ctl -d $CAMERA --set-ctrl exposure_absolute=80
#v4l2-ctl -d $CAMERA -p 5 # This doesnt work

