#!/bin/bash

if [ -z $1 ]; then
    from=1000
else
    from=$1
fi

if [ -z $2 ]; then
    to=2000
else
    to=$2
fi

for i in $(seq $from $to); do
    wget -nc -nv https://earthview.withgoogle.com/download/$i.jpg
done
