10 MAXFILES=1
11 INPUT"ROM FILE:";RM$
12 OPENRM$AS#1LEN=1
20 FIELD#1,1ASA$
30 GET#1,&H4011-&H4000+1:D1=ASC(A$)
31 GET#1,&H4012-&H4000+1:D1=D1+256*ASC(A$)
32 PRINT"DSKIO :";HEX$(D1)
33 GET#1,&H4014-&H4000+1:D2=ASC(A$)
34 GET#1,&H4015-&H4000+1:D2=D2+256*ASC(A$)
35 PRINT"DSKCHG:";HEX$(D2)
36 GET#1,&H4017-&H4000+1:D3=ASC(A$)
37 GET#1,&H4018-&H4000+1:D3=D3+256*ASC(A$)
38 PRINT"GETDPB:";HEX$(D3)
39 GET#1,&H401A-&H4000+1:D4=ASC(A$)
40 GET#1,&H401B-&H4000+1:D4=D4+256*ASC(A$)
41 PRINT"CHOICE:";HEX$(D4)
42 GET#1,&H401D-&H4000+1:D5=ASC(A$)
43 GET#1,&H401E-&H4000+1:D5=D5+256*ASC(A$)
44 PRINT"DSKFMT:";HEX$(D5)
45 GET#1,&H401F-&H4000+1:D6=ASC(A$)
51 IFD6=0THENPRINT"MTOFF :NOT IMPLEMENTED":GOTO60
52 GET#1,&H4020-&H4000+1:D6=ASC(A$)
53 GET#1,&H4021-&H4000+1:D6=D6+256*ASC(A$)
54 PRINT"MTOFF :";HEX$(D6)
60 GET#1,&H576F-&H4000+1:D7=ASC(A$)
61 IFD7<>&HCDTHENPRINT"INIHRD:NOT FOUND!":GOTO65
62 GET#1,&H5770-&H4000+1:D7=ASC(A$)
63 GET#1,&H5771-&H4000+1:D7=D7+256*ASC(A$)
64 PRINT"INIHRD:";HEX$(D7)
65 GET#1,&H581D-&H4000+1:D8=ASC(A$)
66 IFD8<>&H21THENPRINT"MYSIZE:NOT FOUND!":GOTO70
67 GET#1,&H581E-&H4000+1:D8=ASC(A$)
68 GET#1,&H581F-&H4000+1:D8=D8+256*ASC(A$)
69 PRINT"MYSIZE:";D8
70 GET#1,&H5850-&H4000+1:D9=ASC(A$)
71 IFD9<>&HCDTHENPRINT"DRIVES:NOT FOUND!":GOTO75
72 GET#1,&H5851-&H4000+1:D9=ASC(A$)
73 GET#1,&H5852-&H4000+1:D9=D9+256*ASC(A$)
74 PRINT"DRIVES:";HEX$(D9)
75 GET#1,&H5883-&H4000+1:D10=ASC(A$)
76 IFD10<>&H21THENPRINT"DEFDPB:NOT FOUND!":GOTO80
77 GET#1,&H5884-&H4000+1:D10=ASC(A$)
78 GET#1,&H5885-&H4000+1:D10=D10+256*ASC(A$)
79 GET#1,D10+1-&H4000+1:DM=ASC(A$):PRINT"GETDPB:";HEX$(D10);" (DEFAULT MEDIA:";HEX$(DM);")"
80 GET#1,&H588F-&H4000+1:D11=ASC(A$)
81 IFD11<>&HCDTHENPRINT"INIENV:NOT FOUND!":GOTO85
82 GET#1,&H5890-&H4000+1:D11=ASC(A$)
83 GET#1,&H5891-&H4000+1:D11=D11+256*ASC(A$)
84 PRINT"INIENV:";HEX$(D11)
85 GET#1,&H65AE-&H4000+1:D12=ASC(A$)
86 IFD12<>&HC3THENPRINT"OEMSTA:NOT FOUND!":GOTO90
87 GET#1,&H65AF-&H4000+1:D12=ASC(A$)
88 GET#1,&H65B0-&H4000+1:D12=D12+256*ASC(A$)
89 PRINT"OEMSTA:";HEX$(D12)
90 CLOSE#1
