#!/bin/bash

#set -e

#3DPrinter_IP=${3DPrinter_IP:"0.0.0.0"}
#3DPrinter_CODE=${3DPrinter_CODE:"xxxxxx"}

mkdir work
cd work

wget https://public-cdn.bambulab.com/upgrade/studio/plugins/01.04.00.15/linux_01.04.00.15.zip
unzip linux_01.04.00.15.zip

wget https://github.com/AlexxIT/go2rtc/releases/download/v1.6.2/go2rtc_linux_amd64
chmod a+x go2rtc_linux_amd64

mkdir /bambu_src
cd /bambu_src

wget https://raw.githubusercontent.com/hisptoot/BambuSource2Raw/main/BambuSource2Raw/bambusource2raw.cpp
wget https://raw.githubusercontent.com/hisptoot/BambuSource2Raw/main/BambuSource2Raw/BambuTunnel.h
wget https://raw.githubusercontent.com/DaveGamble/cJSON/master/cJSON.c
wget https://raw.githubusercontent.com/DaveGamble/cJSON/master/cJSON.h

gcc /bambu_src/bambusource2raw.cpp cJSON.c -lcurl -o /data/work/BambuP1SCam

mkdir /app
cp /data/work/BambuP1SCam /data/work/go2rtc_linux_amd64 /data/work/libBambuSource.so /app

tail -f /dev/null