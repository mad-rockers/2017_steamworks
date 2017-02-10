#!/bin/bash
set -xe
mjpg_streamer -i "input_uvc.so -d /dev/video0 -n -f 10 -r 640x480" -o "output_http.so -p 8080 -w /tmp/www"
