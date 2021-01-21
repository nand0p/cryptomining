#!/bin/bash

sed -i "s/SEDME/$(date | md5sum | cut -d' ' -f1 | head -c16)/g" config.ini

cat config.ini

./nanominer
