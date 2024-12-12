TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application
STATIC_BUILD = YES

PROD_IOC = LinuxMonitor
# LinuxMonitor.dbd will be created and installed
DBD += LinuxMonitor.dbd

# LinuxMonitor.dbd will be made up from these files:
LinuxMonitor_DBD += base.dbd

# Include dbd files from all support applications:
LinuxMonitor_DBD += LinuxSystemMonitor.dbd 

# Add all the support libraries needed by this IOC
LinuxMonitor_LIBS += LinuxSystemMonitor

# LinuxMonitor_registerRecordDeviceDriver.cpp derives from LinuxMonitor.dbd
LinuxMonitor_SRCS += LinuxMonitor_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
LinuxMonitor_SRCS_DEFAULT += LinuxMonitorMain.cpp
LinuxMonitor_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#LinuxMonitor_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
LinuxMonitor_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

# If compiles are failing due to errors associated with pthreads (i.e. linker
# cannot find pthread symbols), try modifying one of these.
ifeq ($(T_A),linux-armv5teb)
LinuxMonitor_SYS_LIBS += pthread
endif
ifeq ($(T_A),linux-armb)
LinuxMonitor_SYS_LIBS += pthread
endif

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

