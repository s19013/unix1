for file in $@
do
  if [ -f "$file" ];  then
    du -b "$file"
  else
    echo "${file}: 通常のファイルではない"
  fi
done
