#!/bin/bash

in=$1

if [ "$#" -eq 0 ]; then
  echo "使い方：062703.sh  DIRPATH ..."
  echo "DIRPATHで指定したディレクトリ下の実行可能ファイル数/ディレクトリ数を表示"
  echo "DIRPATH - ファイル数/ディレクトリ数を表示するディレクトリパスを指定"
fi


if [ -d "$in" ]; then
    file=`find $in -type f | wc -l`
    echo "file =>${file}"
    d=`find $in -type d | wc -l`
    echo "directory =>${d}"
else
  echo "${in}: ディレクトリではない"
fi
