#!/bin/bash

set -e

./configure --prefix=/opt/nginx

make

echo "make done"
