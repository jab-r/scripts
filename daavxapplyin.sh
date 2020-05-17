#!/bin/bash
dir=$1
echo "$1"
shift
filt=$2
shift
val=$3
shift
for i in $@ 
do
 daavxapply.sh "$dir" $filt $val  $i
done

