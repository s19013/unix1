#usage()
#{
#cat << END
#FILEPATHで指定したファイルの容量を表示
#FILEPATH-容量を求めるファイルのパスを指定、複数指定可
#END
#}

if [ "$#" -eq 0 ]; then
  echo "使い方：060402.sh FILEPATH ..."
  echo "FILEPATHで指定したファイルの容量を表示"
  echo "FILEPATH - 容量を求めるファイルのパスを指定、複数指定可"
fi

for file in $@
do
  if [ -f "$file" ];  then
    du  "$file"
  else
    echo "${file}: 通常のファイルではない"
  fi
done
