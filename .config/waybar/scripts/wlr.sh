#!/bin/sh

if ls /tmp/screencast.pid 1> /dev/null 2>&1; then
    echo 'RECORDING';
fi
