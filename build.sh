#!/bin/bash

#Mysteryagr
#Compile kernel with a build script to make things simple

export KBUILD_BUILD_USER="NasreIrma"
export KBUILD_BUILD_HOST="TEAM-HOT"

mkdir -p out

export USE_CCACHE=1

export ARCH=arm ARCH_MTK_PLATFORM=mt6735
export SUBARCH=arm64

#Defconfig for HOT 4 PRO
make -C $PWD O=$PWD/out ARCH=arm64 rlk6737m_open_n_defconfig
#make ARCH=arm wt6737m_n_defconfig

make -j4 -C $PWD O=$PWD/out ARCH=arm64
#make -j4 ARCH=arm64
