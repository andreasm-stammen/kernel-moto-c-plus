#!/bin/bash

#Compile script for kernel


#clean out dir
#rm -rf out
mkdir -p out


#ARCH
export ARCH=arm


#host and user
export KBUILD_BUILD_USER="Shripad"
export KBUILD_BUILD_HOST="XDA"

#export cross_compile
export CROSS_COMPILE=/home/shripad/Desktop/TOOLCHAIN/gcc4.9/bin/arm-linux-androideabi-

#Defconfig for Moto C plus
#make -C $PWD O=$PWD/out ARCH=arm A158_defconfig
make -C $PWD O=$PWD/out ARCH=arm A158_defconfig


#CompileNow
make -j4 -C $PWD O=$PWD/out ARCH=arm
