#!../../bin/linux-x86_64/LinuxMonitor

#- You may have to change LinuxMonitor to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/LinuxMonitor.dbd"
LinuxMonitor_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=yangs1")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=yangs1"
