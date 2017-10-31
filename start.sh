#!/bin/bash

# test for our env

if [ -z $THREADS ]; then
    echo "\$THREADS is unset - defaulting to 1"
    THREADS=1
fi

if [ -z $ZEN_ADDR ]; then
    echo "\$ZEN_ADDR unset. Exiting."
    exit 1
fi

if [ -z $NH_REGION ]; then
    echo "\$NH_REGION unset - defaulting to usa"
    NH_REGION=usa
fi

if [ -z $WORKER_NAME ]; then
    echo "\$WORKER_NAME unset - defaulting to w01"
fi

./nheqminer_cpu -l ${NH_REGION}.zenmine.pro:9009 -u ${ZEN_ADDR}.${WORKER_NAME} -t ${THREADS}
