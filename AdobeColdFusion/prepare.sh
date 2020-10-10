#!/bin/sh

cd $(dirname "$0")
cd build/install

if [ ! -f "coldfusion-801-lin64.bin" ]
then
	wget http://trials.adobe.com/Applications/ColdFusion/801WWE/coldfusion-801-lin64.bin
	chmod 755 coldfusion-801-lin64.bin
fi
