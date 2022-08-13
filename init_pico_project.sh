#!/bin/bash +eux

if [ ! -f pico-sdk/pico_sdk_import.cmake ]; then
  git clone --recursive https://github.com/raspberrypi/pico-sdk.git
fi

name=$1
picosdk="../pico-sdk/external/pico_sdk_import.cmake"

mkdir $name
cd $name
touch $name\.c
cp $picosdk .

touch CMakeLists.txt
echo "cmake_minimum_required(VERSION 3.13) 

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# initialize the SDK based on PICO_SDK_PATH 
# note: this must happen before project() 
include(.pico_sdk_import.cmake) 

project($name C CXX ASM) 

# initialize the Raspberry Pi Pico SDK
pico_sdk_init()

# rest of your project" >> CMakeLists.txt
