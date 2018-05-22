#!/bin/sh

if [ $SECRET ]; then
    echo "rpc-secret=${SECRET}" >> /conf/aria2.conf
fi

touch /conf/aria2.session

darkhttpd /app --port 80 &
aria2c --conf-path=/conf/aria2.conf