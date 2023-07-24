#!/bin/sh

esxiuser=$1
esxihost=$2
workingdir=$3

echo "$(date): $0 sending poweroff command to ESXi host ${esxiuser} ${esxihost}"
ssh -o connecttimeout=10 ${esxiuser}@${esxihost} poweroff
echo "$(date): $0 completed"
