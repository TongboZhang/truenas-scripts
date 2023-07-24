#!/bin/sh

# Shutdown HomeGen8
esxiuser="root"
esxihost="gen8.sys.ink"
logdir=/mnt/systempool/log/esxi
logfile=${logdir}/graceful_shutdown_gen8.log
workingdir="/mnt/servicepool/service/home/scripts/esxi"

echo "--------------------------------------------------------" >> ${logfile}
echo "$(date): Start to shut down VMs - ${esxihost}" >> ${logfile}
${workingdir}/util_stop_all_vms.sh ${esxiuser} ${esxihost} ${workingdir} >> ${logfile}
echo "$(date): Shut down VMs finished - ${esxihost}" >> ${logfile}
echo "$(date): Start to shut down host - ${esxihost}" >> ${logfile}
${workingdir}/util_stop_host.sh ${esxiuser} ${esxihost} ${workingdir} >> ${logfile}
echo "$(date): Shut down host finished - ${esxihost}" >> ${logfile}

# Shutdown HomeGen6
esxiuser="root"
esxihost="gen6.sys.ink"
logdir=/mnt/systempool/log/esxi
logfile=${logdir}/graceful_shutdown_gen6.log
workingdir="/mnt/servicepool/service/home/scripts/esxi"

echo "--------------------------------------------------------" >> ${logfile}
echo "$(date): Start to shut down VMs - ${esxihost}" >> ${logfile}
${workingdir}/util_stop_all_vms.sh ${esxiuser} ${esxihost} ${workingdir} >> ${logfile}
echo "$(date): Shut down VMs finished - ${esxihost}" >> ${logfile}
echo "$(date): Start to shut down host - ${esxihost}" >> ${logfile}
${workingdir}/util_stop_host.sh ${esxiuser} ${esxihost} ${workingdir} >> ${logfile}
echo "$(date): Shut down host finished - ${esxihost}" >> ${logfile}
