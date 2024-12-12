# LinuxMonitor

Linux Monitor is an EPICS application used to monitor the system status of an OPI or IOC

The following process variables are provided by this application:

```
(Where $(NAME) is the host name of the OPI or IOC. ${NAME) is upper case even if the host name is not.)

$(NAME):CNT	Seconds since last reboot
$(NAME):HBT	Heartbeat (Increments from 0 to 98 at one beat per second)
$(NAME):HBTMOD	Heartbeat (Increments from 0 to 8 at one beat per second)
$(NAME):MEMAV	Available memory in Kilobytes (KB)
$(NAME):MEMUSED	Used memory in kilobytes (KB)
$(NAME):MEMFREE	Free memory in kilobytes (KB)
$(NAME):MEMFREEPCT	Free memory as percentage of available (%)
$(NAME):MEMSHRD	Shared memory in kilobytes (KB)
$(NAME):MEMBUFF	Buffer memory in kilobytes (KB)
$(NAME):MEMCACH	Cached memory in kilobytes (KB)
$(NAME):MEMAVPCT	Available memory (free and cached) (%)
$(NAME):SWAPAV	Swap available in kilobytes (KB)
$(NAME):SWAPUSED	Swap used in kilobytes (KB)
$(NAME):SWAPFREE	Swap free in kilobytes (KB)
$(NAME):SWAPFREEPCT	Swap free as percentage of available (%)
$(NAME):SWAPCACH	Swap cached in kilobytes (KB)
$(NAME):UPTIME	Elapsed time since system boot
$(NAME):TIME	Current system time
$(NAME):BOOTTIME	Time of system boot
$(NAME):LOAD1MIN	CPU load (1 minute average) (%)
$(NAME):LOAD5MIN	CPU load (5 minute average) (%)
$(NAME):LOAD15MIN	CPU load (15 minute average) (%)
$(NAME):CPUIDLE	CPU idle percentage (%)
$(NAME):CPUNICE	CPU nice usage percent (%)
$(NAME):CPUSYSTEM	CPU system usage percent (%)
$(NAME):CPUUSER	CPU user usage percent (%)
$(NAME):LOAD	CPU load percentage (%)
$(NAME):IPADDR	IP address of the system
$(NAME):SYSNAME	System name (ie 'uname -s')
$(NAME):RELEASE	System release (ie 'uname -r')
$(NAME):VERSION	System version (ie 'uname -v')
$(NAME):MACHINE	System architecture (ie 'uname -m')
$(NAME):PIDAV	Number of processes (PIDs) available
$(NAME):PIDUSED	Number of processes (PIDs) used
$(NAME):PIDFREE	Number of processes (PIDs) free
$(NAME):PIDFREEPCT	Number of processes (PIDs) free as percentage of available
$(NAME):SWAPINRATE	Rate pages are being swapped in (%)
$(NAME):SWAPOUTRATE	Rate pages are being swapped out (%)
$(NAME):SWAPACTIVEPCT	Swap active percentage (%)
```

## Acknowledgment
This project makes use of the LinuxSystemMonitor driver from PSI by Miroslaw Dach

