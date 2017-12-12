#!/bin/bash

#Mysteryagr
#Compile kernel with a build script to make things simple

mkdir -p out

export USE_CCACHE=1

export ARCH=arm ARCH_MTK_PLATFORM=mt6737M

#Defconfig for Moto C
make -C $PWD O=$PWD/out ARCH=arm64 rlk6737m_open_n_defconfig
#make ARCH=arm wt6737m_35_n_defconfig

make -j4 -C $PWD O=$PWD/out ARCH=arm64
#make -j4 ARCH=arm
