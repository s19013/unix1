#if [ -f "$1" ];  then
#  du -h $1
#else
#  echo "${1}: 通常のファイルではない"
#fi

#!/bin/bash

file=$1
if [ -f "$file" ]; then
    du -b "$file"

else
    echo "通常のファイルではありません"

fi
