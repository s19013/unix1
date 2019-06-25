#ディレクトリの場合配下の実行できるファイルを表示
#！”${file}:ディレクトリではありません”
#usage()
#{
#cat << END
#DIRPATHで指定したディレクトリ下の実行可能ファイルの一覧表示
#FILEPATH-実行可能ファイルの一覧表示を行うディレクトリパスを指定
#END
#}

if [ "$#" -eq 0 ]; then
  echo "使い方：060403.sh  DIRPATH ..."
  echo "DIRPATHで指定したディレクトリ下の実行可能ファイルの一覧表示"
  echo "FILEPATH - 実行可能ファイルの一覧表示を行うダイレクトリプリパスを指定"
fi


if [ -d "$1" ];  then
  for file in $(find "$1" -maxdepth 1 -type f)
  do
    if [ -x "${file}" ]; then
      echo $(basename "$file")
    fi
  done
else
  echo "${1}: ディレクトリではない"
fi
