#!/bin/bash

rm dir.txt
echo $1 > dir.txt
ls $1 >> dir.txt


