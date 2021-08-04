#!/usr/bin/env bash

export WINEARCH=win32

winetricks --self-update

winetricks -q gdiplus msls31 msxml3

mkdir -p $HOME/Desktop \
  && cd $HOME/Desktop \
  && wget -O iTunesSetup.exe \
    https://secure-appldnld.apple.com/itunes12/091-81691-20180709-C98EBAE5-D5C5-41EC-9847-A5F71D9C4437/iTunesSetup.exe

wget -q -O setup.sh https://raw.githubusercontent.com/au5ton/iTunesDocker/main/setup.sh
wget -q -O open-itunes.sh https://raw.githubusercontent.com/au5ton/iTunesDocker/main/open-itunes.sh 
