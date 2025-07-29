# Schneider Modbus Demo IOC
An [EPICS](https://epics-controls.org) [Modbus](https://github.com/epics-modules/modbus) IOC for the Schneider Modicon Quantum PAC [140CPU67160](https://www.se.com/us/en/product/140CPU67160/unity-hot-standby-processor-with-multimode-ethernet-1024-kb-266-mhz/).

The PLC is using simulated digital and analog inputs to demonstrate modbus communication through EPICS, this is the modbus mapping running in the PLC:


| Variable Name  | Type | Modbus Address | Remark|
| ------------- | ------------- | ------------- | ------------- |
| DOUT0	| BOOL|	000163|	Write to this address, mirrored to 000179 |
| DOUT1 | BOOL|	000164|	Write to this address, mirrored to 000180 |
|DOUT2	|BOOL	|000165	|Write to this address, mirrored to 000181|
|DOUT3	|BOOL	|000166	|Write to this address, mirrored to 000182|
|DOUT4	|BOOL	|000167	|Write to this address, mirrored to 000183|
|DOUT5	|BOOL	|000168|	Write to this address, mirrored to 000184|
|DOUT6	|BOOL	|000169|	Write to this address, mirrored to 000185|
|DOUT7	|BOOL	|000170|	Write to this address, mirrored to 000186|
|DOUT8	|BOOL	|000171|	Write to this address, mirrored to 000187|
|DOUT9	|BOOL	|000172|	Write to this address, mirrored to 000188|
|DOUT10	|BOOL	|000173|	Write to this address, mirrored to 000189|
|DOUT11	|BOOL	|000174|	Write to this address, mirrored to 000190|
|DOUT12	|BOOL	|000175|	Write to this address, mirrored to 000191|
|DOUT13	|BOOL	|000176|	Write to this address, mirrored to 000192|
|DOUT14	|BOOL	|000177|	Write to this address, mirrored to 000193|
|DOUT15	|BOOL	|000178|	Write to this address, mirrored to 000194|
|DIN0	|BOOL|	000179	||
|DIN1	|BOOL|	000180	||
|DIN2	|BOOL|	000181	||
|DIN3	|BOOL|	000182	||
|DIN4	|BOOL|	000183	||
|DIN5	|BOOL|	000184	||
|DIN6	|BOOL|	000185	||
|DIN7	|BOOL|	000186	||
|DIN8	|BOOL|	000187	||
|DIN9	|BOOL|	000188	||
|DIN10	|BOOL|	000189	||
|DIN11	|BOOL|	000190	||
|DIN12	|BOOL|	000191	||
|DIN13	|BOOL|	000192	||
|DIN14	|BOOL|	000193	||
|DIN15	|BOOL|	000194	||
|AIN0	|REAL|	400163|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN1	|REAL|	400165|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN2	|REAL|	400167|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN3	|REAL|	400169|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN4	|REAL|	400171|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN5	|REAL|	400173|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN6	|REAL|	400175|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN7	|REAL|	400177|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN8	|REAL|	400179|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN9	|REAL|	400181|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN10	|REAL|	400183|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN11	|REAL|	400185|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN12	|REAL|	400187|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN13	|REAL|	400189|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN14	|REAL|	400191|	32-bit IEEE 754 Floating Point, 2 Words|
|AIN15	|REAL|	400193|	32-bit IEEE 754 Floating Point, 2 Words|
