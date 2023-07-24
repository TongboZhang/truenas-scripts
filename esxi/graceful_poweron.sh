#!/bin/sh

# Poweron HomeGen8
esxiuser="root"
esxihost="gen8.sys.ink"
logdir=/mnt/systempool/log/esxi
logfile=${logdir}/graceful_poweron_gen8.log
workingdir="/mnt/servicepool/service/home/scripts/esxi"

#echo "--------------------------------------------------------" >> ${logfile}
#echo "$(date): Start to power on host - ${esxihost}" >> ${logfile}
#curl -k -s --location 'https://oob-gen8.sys.ink/redfish/v1/Systems/1/Actions/ComputerSystem.Reset' --header 'Authorization: Basic enRiNTEyOTpPT0IvQ3ludGhpYS8wODA1' --header 'Content-Type: application/json' --data '{"ResetType": "On"}' >> ${logfile}
#echo >> ${logfile}
#echo "$(date): Power on host finished - ${esxihost}" >> ${logfile}

# Poweron HomeGen6
esxiuser="root"
esxihost="gen6.sys.ink"
logdir=/mnt/systempool/log/esxi
logfile=${logdir}/graceful_poweron_gen6.log
workingdir="/mnt/servicepool/service/home/scripts/esxi"

echo "--------------------------------------------------------" >> ${logfile}
echo "$(date): Start to power on host - ${esxihost}" >> ${logfile}
curl -k -s --location 'https://oob-gen6.sys.ink/redfish/v1/Systems/1/Actions/ComputerSystem.Reset' --header 'Authorization: Basic enRiNTEyOTpPT0IvQ3ludGhpYS8wODA1' --header 'Content-Type: application/json' --data '{"ResetType": "On"}' >> ${logfile}
echo >> ${logfile}
echo "$(date): Power on host finished - ${esxihost}" >> ${logfile}
