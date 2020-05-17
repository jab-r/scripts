#!/bin/bash
cw="${PWD}"
echo "$1"
cd "$1"
filter=$2
level=$3
tone=$4
for d in *
do
if [[! -d ${d} ]]; then
 echo "Skipping non directory ${d}"
 continue
fi
echo "{d}"
cd "${d}/split"
for f in *.flac
do
 file="$(basename "${f}" .flac)"
 echo "${file}"
 echo "filter= ${filter} Level= ${level} Tone= ${tone}"
 daavxpipe.sh "$file" "$filter" "$level" "$tone" ${@:5}
done
cd ../..
done
cd "${cw}"
