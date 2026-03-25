#!/bin/bash

dd=$(date +"Year: %y, Month: %m, Day: %d")
dd=$(date +"M%mD%dY%y")
echo "Fecha de hoy: "$dd

if [ $# -ne 2 ]; then
  echo "introduce path y nombre de archivo"
else
    echo "bien"
    echo $1 > $2".txt"
    ls -1 $1 >> $2".txt"
fi

