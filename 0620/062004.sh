#!/bin/bash

link=$1
curl $link | grep -o 'href="[^"]*"' | grep http | sed 's/^href=//' | awk '{print "curl -f",$1,"> /dev/null"}' | tee list | bash -e
