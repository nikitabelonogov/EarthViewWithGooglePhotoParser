#!/bin/bash

from=${1:-1000}
to=${2:-2000}
dir=${3:-/}

for i in $(seq $from $to); do
    wget -nc -nv -P $dir https://earthview.withgoogle.com/download/$i.jpg
done
