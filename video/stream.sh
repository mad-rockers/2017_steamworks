#!/bin/bash

# Force script to fail if any component command fails
set -e

# There can only be one camera.
CAMERA=("/dev/video"*)
echo "Video device: ${CAMERA[0]}"

mjpg_streamer -i "input_uvc.so -d ${CAMERA[0]} -n -f 10 -r 640x480" -o "output_http.so -p 8080 -w /tmp/www"
