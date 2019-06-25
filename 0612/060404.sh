#ディレクトリの場合配下のファイルで読み取りができないファイルを表示
#$fileはファイル名だけなので　! -r のとこでは絶対パスで入力している
#！ディレクトリでない場合”${1}:ディレクトリではありません”と表示
#usage()
#{
#cat << END
#DIRPATHで指定したディレクトリ下の読み取り不可ファイルの一覧表示
#FILEPATH-読み取り不可ファイルの一覧表表示を行うディレクトリを指定
#END
#}
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
