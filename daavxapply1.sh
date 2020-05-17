#!/bin/bash
cw="${PWD}"
echo "$1"
cd "$1"
filter=$2
level=$3
tone=$4
echo ${@:5}
for f in *.flac
do
 file="$(basename "${f}" .flac)"
 echo "${file}"
 echo "filter= ${filter} Level= ${level} Tone= ${tone} ${@:5}"
 daavxpipe.sh "$file" "$filter" "$level" "$tone" ${@:5}
done
cd "${cw}"
