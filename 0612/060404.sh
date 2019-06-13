if [ "$#" -eq 0 ]; then
  echo "使い方：060404.sh FILEPATH ..."
  echo "DIRPATHで指定したディレクトリ下の読み取り不可ファイルの一覧表示"
  echo "FILEPATH - 読み取り不可ファイルの一覧表示を行うディクショナリを指定"
fi


if [ -d "$1" ];  then
  for file in $(ls "$1" )
  do
    if [ ! -r "${1}/${file}" ]; then
      echo "$file"
    fi
  done
else
  echo "${1}: ディレクトリではない"
fi
