#!/bin/sh

set -xe

cd $1

(
cd deps/cl342
make
)

cmake \
	-DCMAKE_INSTALL_PREFIX:PATH=/opt/wwiv \
	-DCMAKE_BUILD_TYPE:STRING=Debug
make
