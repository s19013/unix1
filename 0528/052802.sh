cat /etc/services | awk '$1 ~ /^http$/{print $0}'
#cat /etc/services | grep -w "80/tcp"
#mine↑
