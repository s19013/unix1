for file in $@
do
  if [ -f "$file" ];  then
    du -h "$file"
  else
    echo "${file}: 通常のファイルではない"
  fi
done
