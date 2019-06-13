#!/bin/bash

cd /tmp
tar czf .tar home- `date '+%Y%m%d'`.tar.gz -x ~/ex.conf "$HOME"
#ex.conf を読み込む
