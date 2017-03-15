#!/bin/bash
#
# Release OpenResty package.
#

set -e

function usage() {
    echo "Usage: $0 PACKAGE"
}

if [ -z "$1" ]; then
    echo "please specify release package name (.tar.gz)"
    usage
    exit
fi
PACKAGE="$1"

rm -rf release

mkdir -p release/{sbin,logs}
cp build/nginx-1.11.2/objs/nginx release/sbin/openresty

tar -C release -czvf "$PACKAGE" logs sbin
echo "released: $PACKAGE"
