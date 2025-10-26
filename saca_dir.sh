#!/bin/bash

dd=$(date +"Year: %y, Month: %m, Day: %d")
dd=$(date +"M%mD%dY%y")
echo $dd

dd="cute"

echo `pwd` > $dd".txt"
ls -1 `pwd` >> $dd".txt"

python creaHTML.py




