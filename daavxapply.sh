#!/bin/bash
cw="${PWD}"
echo "${cw}"
curdir="$1"
cd "${curdir}"
echo ${PWD}
DIRS=*
echo "${DIRS}"
filter=$2
level=$3
tone=$4
ext="f${filter}${level}t${tone}"
for d in $DIRS
do
echo "${d}"
e="${d}/${ext}"
if [[ ! -d ${d} ]]
then
 echo "skipping non directory ${d}"
 continue;
elif [[ -d ${e} ]]; then
 echo "${e}: isn't empty"
 continue
fi
 echo "${d}"
 cd "${d}"
 for f in *.flac
 do
   file="$(basename "${f}" .flac)"
   echo "${file}"
   daavxpipe.sh "$file" "$filter" "$level" "$tone" ${@:5}
 done
 cd ..
done
cd "${cw}"
