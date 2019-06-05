if [ -f "$1" ];  then
  du -h $1
else
  echo "${1}: 通常のファイルではない"
fi
