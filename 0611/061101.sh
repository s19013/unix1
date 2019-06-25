#!/bin/bash

#expr \( `date --date "20190901" +%s` - `date +%s` \) / 86400

day=$(date --date="2019/9/1" '+%s')
now=$(date '+%s')
echo $(((day - now) / 86400))
