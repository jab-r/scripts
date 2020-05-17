#!/bin/bash
for f in *.flac
 do
 file=$(basename "$f" .flac)
     echo "$file"
     parallel daavxpipe.sh "$file" ::: a b c D ::: 2 3 4 X  ::: 12.85 13.40 14.25
 done
