CPM M80.COM =DISKS0
CPM M80.COM =DISKS1
CPM M80.COM =DISKS2
CPM L80.COM DISKS0/X/E/N/P:4000,DISKS0
CPM L80.COM DISKS1/X/E/N/P:4000,DISKS1
CPM L80.COM DISKS2/X/E/N/P:4000,DISKS2
HEX2BIN DISKS0.HEX
HEX2BIN DISKS1.HEX
HEX2BIN DISKS2.HEX
COPY /B DISKS0.BIN+DISKS1.BIN+DISKS2.BIN+DISKS3.BIN DISK.ROM
DEL DISKS0.BIN
DEL DISKS1.BIN
DEL DISKS2.BIN