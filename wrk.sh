#!/bin/sh

ECHO=
DIR=
THREAD=$1
CUNCURENT=$2
TW=$3
TIMEOUT=5
UA=
DATE=`date "+%Y%m%d%H%M%S"`
URL="http://<YOUR TARGET>"
PROXY="http://<YOUR PROXY>:8080"
FILE="/var/tmp/result_$DATE\.txt"

cd $DIR
$ECHO ./wrk -t${THREAD} -c${CUNCURENT} -d${TW}s -H"User-Agent: SampleTools" --latency --timeout ${TIMEOUT} ${PROXY} -s script/proxy.lua -- ${URL} >& ${FILE}
