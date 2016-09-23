#!/bin/bash

from=1000
to=1500

if [ -z $1 ]; then
    from=$1
fi

if [ -z $2 ]; then
    to=$2
fi

for i in $(seq $from $to); do
    wget -nc https://earthview.withgoogle.com/download/$i.jpg
done
