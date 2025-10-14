#!/bin/bash

dd=$(date +"Year: %y, Month: %m, Day: %d")
dd=$(date +"M%mD%dY%y")
echo $dd

if [ "$1" = "" ]; then
  echo
  echo "directorio para sacar"
  echo
else
  if [ "$2" = "" ]; then
    echo
    echo "nombre del archivo"
    echo
  else
    echo "bien"
    echo $1 > $2"_"$dd".txt"
    ls -1 $1/ >> $2"_"$dd".txt"
  fi
fi

