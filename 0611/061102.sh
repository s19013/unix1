#!/bin/bash

#expr \( `date +%s` - `date --date "20190507" +%s` \) / 86400
day=$(date --date="2019/5/7" '+%s')
now=$(date '+%s')
echo $(((now - day) / 86400))
