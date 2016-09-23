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

if [ -z $3 ]; then
    dir=/
else
    dir=$3
fi

for i in $(seq $from $to); do
    wget -nc -nv -P $dir https://earthview.withgoogle.com/download/$i.jpg
done
