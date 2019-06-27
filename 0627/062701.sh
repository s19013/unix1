#!/bin/bash

mkdir -p dir1/dir2/dir3
cd dir1/dir2
touch file0{1..5}
cd  dir3
touch file{06..10}
cd ../../..
tree dir1
rm -r dir1
