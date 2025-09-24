#!/bin/bash

date=$(date '+%Y-%m-%d %H:%M:%S')
tiempo=$(date +%H:%M:%S)

dia=$(date '+M%mD%dA%y')

nombre=$(uname)

echo ${dia}_${tiempo}-${nombre} >> fecha_ultima.dat

