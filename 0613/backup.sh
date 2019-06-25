#!/bin/bash

#cd /tmp
#tar czf .tar home- `date '+%Y%m%d'`.tar.gz -x ~/ex.conf "$HOME"
#ex.conf を読み込む

day=$(date +'%Y%m%d')
#tar cf - ~ -X ~/ex.cnf | gzip -c > /tmp/home-${day}.tar.gz
tar czf /tmp/home-${day}.tar.gz -X ~/ex.cnf ~/
