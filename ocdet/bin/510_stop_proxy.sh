#!/bin/sh
#stop proxy servers

echo "----- ${0##*/} -----"

echo "OCDET_CAPISTRANO:       " ${OCDET_CAPISTRANO:?"is not set"}

cd $OCDET_CAPISTRANO
HOSTROLEFILTER=proxy cap stop_swift -s _agent_type=proxy
