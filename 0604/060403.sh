if [ -d "$1" ];  then
  for file in $(find "$1" -maxdepth 1 -type f)
  do
    if [ -x "${1}/${file}" ]; then
      echo $(basename "$file")
    fi
  done
else
  echo "${1}: ディレクトリではない"
fi
