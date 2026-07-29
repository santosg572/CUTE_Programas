#!/bin/bash

rm $1".png"
Rscript $1".R"
open $1".png"

