#!/bin/sh

set -e

3DPrinter_IP=${3DPrinter_IP:0.0.0.0}
3DPrinter_CODE=${3DPrinter_CODE:xxxxxx}

mkdir work
cd work

wget https://public-cdn.bambulab.com/upgrade/studio/plugins/01.04.00.15/linux_01.04.00.15.zip
unzip linux_01.04.00.15.zip

wget https://github.com/AlexxIT/go2rtc/releases/download/v1.6.2/go2rtc_linux_amd64
chmod a+x go2rtc_linux_amd64

