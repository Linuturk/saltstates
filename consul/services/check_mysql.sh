#!/bin/bash

if [ `nc -z localhost 3306` ]; then
    exit 0;
fi

exit 2
