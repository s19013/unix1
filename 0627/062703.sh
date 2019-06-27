#!/bin/bash

in=$1
if [ -d "$in" ]; then
    file=`find $in -type f | wc -l`
    echo "file =>${file}"
    d=`find $in -type d | wc -l`
    echo "directory =>${d}"
else
  echo "${in}: ディレクトリではない"
fi
