#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#1f1d2e/g' \
         -e 's/rgb(100%,100%,100%)/#f0f0f3/g' \
    -e 's/rgb(50%,0%,0%)/#191724/g' \
     -e 's/rgb(0%,50%,0%)/#c4a7e7/g' \
 -e 's/rgb(0%,50.196078%,0%)/#c4a7e7/g' \
     -e 's/rgb(50%,0%,50%)/#26233a/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#26233a/g' \
     -e 's/rgb(0%,0%,50%)/#c5c3ce/g' \
	"$@"
