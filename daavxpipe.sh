#!/bin/bash
mkdir -p "f$2$3t$4" 
sox "$1.flac" --type=wav -  | da-avx  --info=1 --f$2=$3 --tone=-$4 --xpp ${@:5} | sox --type=wav - "f$2$3t$4/$1.flac"
