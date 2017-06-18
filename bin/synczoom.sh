#!/bin/sh

# sync zoom r16 data

# TODO: make generic. rename to syncmount
# TODO: read environment variables or arguments
DIR_MOUNT="/mnt/zoom/"
DIR_LOCAL="${HOME}/sound/zoom-r16/"

set -o errexit
set -o nounset

mount $DIR_MOUNT || echo "zoom already mounted"
rsync -av $DIR_MOUNT $DIR_LOCAL
umount $DIR_MOUNT
