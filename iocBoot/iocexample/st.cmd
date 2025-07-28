#!../../bin/linux-x86_64/mbus

epicsEnvSet("DEVICE_ADDR", "192.168.79.45:502")
epicsEnvSet("DEVICE_POLL", "250") # polling interval (ms)
epicsEnvSet("DEVICE_TIMEOUT", "500") # ms

epicsEnvSet("EPICS_DB_INCLUDE_PATH", "../../db")

## Register all support components
dbLoadDatabase "../../dbd/mbus.dbd"
mbus_registerRecordDeviceDriver(pdbbase) 

# Configure communication with a server
drvAsynIPPortConfigure("DEV", "$(DEVICE_ADDR)")
asynSetOption("DEV",0, "disconnectOnReadTimeout", "Y")
modbusInterposeConfig("DEV", 0, $(DEVICE_TIMEOUT))

# Debug flags
#asynSetTraceMask("DEV", 0, device|driver)
#asynSetTraceIOMask("DEV", 0, ascii|hex)

# Configure register range(s)
# modbus function codes:
#  3 - read holder registers
#  6 - write single register
#drvModbusAsynConfigure(portName,
#                       tcpPortName,
#                       slaveAddress,
#                       modbusFunction,
#                       modbusStartAddress,
#                       modbusLength,
#                       dataType,
#                       pollMsec,
#                       plcType);

drvModbusAsynConfigure("DEV_R_163",    "DEV", 0, 5,    162, 16, 0, $(DEVICE_POLL))
drvModbusAsynConfigure("DEV_R_179",    "DEV", 0, 1,    178, 16, 0, $(DEVICE_POLL))
drvModbusAsynConfigure("DEV_R_400163", "DEV", 0, 3,    162, 32, "FLOAT32_LE", $(DEVICE_POLL))

dbLoadRecords("modbus-server.db", "PORT=DEV_HR,P=TST:")

iocInit()
