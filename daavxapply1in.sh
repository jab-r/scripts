#!/bin/bash
dir=$1
echo "$1"
shift
filt=$1
echo "$filt"
shift
val=$1
echo "$val"
shift
for i in $@ 
do
daavxapply1.sh "$dir" $filt $val  $i
done

