
Bomba:     formato del fichero elf64-x86-64


Desensamblado de la sección .init:

0000000000001000 <.init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <rand@plt+0x2e58>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <__cxa_finalize@plt-0xca>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Desensamblado de la sección .plt:

0000000000001020 <.plt>:
    1020:	ff 35 4a 2f 00 00    	push   QWORD PTR [rip+0x2f4a]        # 3f70 <rand@plt+0x2de0>
    1026:	ff 25 4c 2f 00 00    	jmp    QWORD PTR [rip+0x2f4c]        # 3f78 <rand@plt+0x2de8>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    103e:	66 90                	xchg   ax,ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    104e:	66 90                	xchg   ax,ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    105e:	66 90                	xchg   ax,ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    106e:	66 90                	xchg   ax,ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    107e:	66 90                	xchg   ax,ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    108e:	66 90                	xchg   ax,ax
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    109e:	66 90                	xchg   ax,ax
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   0x7
    10a9:	e9 72 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    10ae:	66 90                	xchg   ax,ax
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   0x8
    10b9:	e9 62 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    10be:	66 90                	xchg   ax,ax
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   0x9
    10c9:	e9 52 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    10ce:	66 90                	xchg   ax,ax
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   0xa
    10d9:	e9 42 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    10de:	66 90                	xchg   ax,ax

Desensamblado de la sección .plt.got:

00000000000010e0 <__cxa_finalize@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	ff 25 0e 2f 00 00    	jmp    QWORD PTR [rip+0x2f0e]        # 3ff8 <rand@plt+0x2e68>
    10ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Desensamblado de la sección .plt.sec:

00000000000010f0 <puts@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	ff 25 86 2e 00 00    	jmp    QWORD PTR [rip+0x2e86]        # 3f80 <rand@plt+0x2df0>
    10fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001100 <__stack_chk_fail@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	ff 25 7e 2e 00 00    	jmp    QWORD PTR [rip+0x2e7e]        # 3f88 <rand@plt+0x2df8>
    110a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001110 <strcspn@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 76 2e 00 00    	jmp    QWORD PTR [rip+0x2e76]        # 3f90 <rand@plt+0x2e00>
    111a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001120 <srand@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 6e 2e 00 00    	jmp    QWORD PTR [rip+0x2e6e]        # 3f98 <rand@plt+0x2e08>
    112a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001130 <fgets@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 66 2e 00 00    	jmp    QWORD PTR [rip+0x2e66]        # 3fa0 <rand@plt+0x2e10>
    113a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001140 <strcmp@plt>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	ff 25 5e 2e 00 00    	jmp    QWORD PTR [rip+0x2e5e]        # 3fa8 <rand@plt+0x2e18>
    114a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001150 <time@plt>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	ff 25 56 2e 00 00    	jmp    QWORD PTR [rip+0x2e56]        # 3fb0 <rand@plt+0x2e20>
    115a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001160 <__isoc99_sscanf@plt>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	ff 25 4e 2e 00 00    	jmp    QWORD PTR [rip+0x2e4e]        # 3fb8 <rand@plt+0x2e28>
    116a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001170 <__printf_chk@plt>:
    1170:	f3 0f 1e fa          	endbr64
    1174:	ff 25 46 2e 00 00    	jmp    QWORD PTR [rip+0x2e46]        # 3fc0 <rand@plt+0x2e30>
    117a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001180 <exit@plt>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	ff 25 3e 2e 00 00    	jmp    QWORD PTR [rip+0x2e3e]        # 3fc8 <rand@plt+0x2e38>
    118a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001190 <rand@plt>:
    1190:	f3 0f 1e fa          	endbr64
    1194:	ff 25 36 2e 00 00    	jmp    QWORD PTR [rip+0x2e36]        # 3fd0 <rand@plt+0x2e40>
    119a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Desensamblado de la sección .text:

00000000000011a0 <.text>:
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	41 57                	push   r15
    11a6:	31 ff                	xor    edi,edi
    11a8:	41 56                	push   r14
    11aa:	41 55                	push   r13
    11ac:	41 54                	push   r12
    11ae:	55                   	push   rbp
    11af:	53                   	push   rbx
    11b0:	48 81 ec d8 00 00 00 	sub    rsp,0xd8
    11b7:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    11be:	00 00 
    11c0:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
    11c7:	00 
    11c8:	31 c0                	xor    eax,eax
    11ca:	e8 81 ff ff ff       	call   1150 <time@plt>
    11cf:	89 c7                	mov    edi,eax
    11d1:	e8 4a ff ff ff       	call   1120 <srand@plt>
    11d6:	e8 b5 ff ff ff       	call   1190 <rand@plt>
    11db:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
    11df:	e8 ac ff ff ff       	call   1190 <rand@plt>
    11e4:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
    11e8:	e8 a3 ff ff ff       	call   1190 <rand@plt>
    11ed:	41 89 c6             	mov    r14d,eax
    11f0:	e8 9b ff ff ff       	call   1190 <rand@plt>
    11f5:	41 89 c7             	mov    r15d,eax
    11f8:	e8 93 ff ff ff       	call   1190 <rand@plt>
    11fd:	66 0f ef c0          	pxor   xmm0,xmm0
    1201:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
    1205:	f3 0f 5e 05 f7 0d 00 	divss  xmm0,DWORD PTR [rip+0xdf7]        # 2004 <rand@plt+0xe74>
    120c:	00 
    120d:	f3 0f 11 44 24 1c    	movss  DWORD PTR [rsp+0x1c],xmm0
    1213:	e8 78 ff ff ff       	call   1190 <rand@plt>
    1218:	48 63 f0             	movsxd rsi,eax
    121b:	48 89 f3             	mov    rbx,rsi
    121e:	48 c1 e3 1e          	shl    rbx,0x1e
    1222:	48 01 f3             	add    rbx,rsi
    1225:	89 c6                	mov    esi,eax
    1227:	c1 fe 1f             	sar    esi,0x1f
    122a:	48 c1 fb 3d          	sar    rbx,0x3d
    122e:	29 f3                	sub    ebx,esi
    1230:	89 de                	mov    esi,ebx
    1232:	c1 e6 1f             	shl    esi,0x1f
    1235:	29 de                	sub    esi,ebx
    1237:	29 f0                	sub    eax,esi
    1239:	89 c3                	mov    ebx,eax
    123b:	e8 50 ff ff ff       	call   1190 <rand@plt>
    1240:	48 63 f8             	movsxd rdi,eax
    1243:	48 89 fe             	mov    rsi,rdi
    1246:	48 c1 e6 1e          	shl    rsi,0x1e
    124a:	48 01 fe             	add    rsi,rdi
    124d:	89 c7                	mov    edi,eax
    124f:	c1 ff 1f             	sar    edi,0x1f
    1252:	48 c1 fe 3d          	sar    rsi,0x3d
    1256:	29 fe                	sub    esi,edi
    1258:	89 f1                	mov    ecx,esi
    125a:	c1 e6 1f             	shl    esi,0x1f
    125d:	29 ce                	sub    esi,ecx
    125f:	29 f0                	sub    eax,esi
    1261:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
    1265:	e8 26 ff ff ff       	call   1190 <rand@plt>
    126a:	48 63 f8             	movsxd rdi,eax
    126d:	48 89 fe             	mov    rsi,rdi
    1270:	48 c1 e6 1e          	shl    rsi,0x1e
    1274:	48 01 fe             	add    rsi,rdi
    1277:	89 c7                	mov    edi,eax
    1279:	48 c1 fe 3d          	sar    rsi,0x3d
    127d:	c1 ff 1f             	sar    edi,0x1f
    1280:	29 fe                	sub    esi,edi
    1282:	89 f1                	mov    ecx,esi
    1284:	c1 e6 1f             	shl    esi,0x1f
    1287:	29 ce                	sub    esi,ecx
    1289:	29 f0                	sub    eax,esi
    128b:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
    128f:	e8 fc fe ff ff       	call   1190 <rand@plt>
    1294:	48 63 f8             	movsxd rdi,eax
    1297:	48 89 fe             	mov    rsi,rdi
    129a:	48 c1 e6 1e          	shl    rsi,0x1e
    129e:	48 01 fe             	add    rsi,rdi
    12a1:	89 c7                	mov    edi,eax
    12a3:	c1 ff 1f             	sar    edi,0x1f
    12a6:	48 c1 fe 3d          	sar    rsi,0x3d
    12aa:	29 fe                	sub    esi,edi
    12ac:	89 f1                	mov    ecx,esi
    12ae:	c1 e6 1f             	shl    esi,0x1f
    12b1:	29 ce                	sub    esi,ecx
    12b3:	29 f0                	sub    eax,esi
    12b5:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
    12b9:	e8 d2 fe ff ff       	call   1190 <rand@plt>
    12be:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
    12c2:	e8 c9 fe ff ff       	call   1190 <rand@plt>
    12c7:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    12cb:	e8 c0 fe ff ff       	call   1190 <rand@plt>
    12d0:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
    12d4:	e8 b7 fe ff ff       	call   1190 <rand@plt>
    12d9:	89 c5                	mov    ebp,eax
    12db:	e8 b0 fe ff ff       	call   1190 <rand@plt>
    12e0:	41 89 c4             	mov    r12d,eax
    12e3:	e8 a8 fe ff ff       	call   1190 <rand@plt>
    12e8:	41 89 c5             	mov    r13d,eax
    12eb:	e8 a0 fe ff ff       	call   1190 <rand@plt>
    12f0:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
    12f4:	e8 97 fe ff ff       	call   1190 <rand@plt>
    12f9:	48 63 7c 24 10       	movsxd rdi,DWORD PTR [rsp+0x10]
    12fe:	f3 0f 7e 05 92 0e 00 	movq   xmm0,QWORD PTR [rip+0xe92]        # 2198 <rand@plt+0x1008>
    1305:	00 
    1306:	49 89 fa             	mov    r10,rdi
    1309:	48 69 ff c1 02 0b 2c 	imul   rdi,rdi,0x2c0b02c1
    1310:	45 89 d3             	mov    r11d,r10d
    1313:	41 c1 fb 1f          	sar    r11d,0x1f
    1317:	48 c1 ff 24          	sar    rdi,0x24
    131b:	44 29 df             	sub    edi,r11d
    131e:	45 89 d3             	mov    r11d,r10d
    1321:	6b ff 5d             	imul   edi,edi,0x5d
    1324:	41 29 fb             	sub    r11d,edi
    1327:	48 63 7c 24 0c       	movsxd rdi,DWORD PTR [rsp+0xc]
    132c:	45 0f b6 db          	movzx  r11d,r11b
    1330:	49 89 f9             	mov    r9,rdi
    1333:	48 69 ff c1 02 0b 2c 	imul   rdi,rdi,0x2c0b02c1
    133a:	45 89 ca             	mov    r10d,r9d
    133d:	41 c1 fa 1f          	sar    r10d,0x1f
    1341:	48 c1 ff 24          	sar    rdi,0x24
    1345:	44 29 d7             	sub    edi,r10d
    1348:	45 89 ca             	mov    r10d,r9d
    134b:	6b ff 5d             	imul   edi,edi,0x5d
    134e:	41 29 fa             	sub    r10d,edi
    1351:	48 63 7c 24 08       	movsxd rdi,DWORD PTR [rsp+0x8]
    1356:	49 89 f8             	mov    r8,rdi
    1359:	48 69 ff c1 02 0b 2c 	imul   rdi,rdi,0x2c0b02c1
    1360:	45 89 c1             	mov    r9d,r8d
    1363:	41 c1 f9 1f          	sar    r9d,0x1f
    1367:	48 c1 ff 24          	sar    rdi,0x24
    136b:	44 29 cf             	sub    edi,r9d
    136e:	6b ff 5d             	imul   edi,edi,0x5d
    1371:	41 29 f8             	sub    r8d,edi
    1374:	48 63 fd             	movsxd rdi,ebp
    1377:	48 69 ff c1 02 0b 2c 	imul   rdi,rdi,0x2c0b02c1
    137e:	45 89 c1             	mov    r9d,r8d
    1381:	41 89 e8             	mov    r8d,ebp
    1384:	41 c1 f8 1f          	sar    r8d,0x1f
    1388:	48 c1 ff 24          	sar    rdi,0x24
    138c:	44 29 c7             	sub    edi,r8d
    138f:	45 89 e0             	mov    r8d,r12d
    1392:	6b ff 5d             	imul   edi,edi,0x5d
    1395:	41 c1 f8 1f          	sar    r8d,0x1f
    1399:	29 fd                	sub    ebp,edi
    139b:	49 63 fc             	movsxd rdi,r12d
    139e:	48 69 ff c1 02 0b 2c 	imul   rdi,rdi,0x2c0b02c1
    13a5:	48 c1 ff 24          	sar    rdi,0x24
    13a9:	44 29 c7             	sub    edi,r8d
    13ac:	45 89 e8             	mov    r8d,r13d
    13af:	6b ff 5d             	imul   edi,edi,0x5d
    13b2:	41 c1 f8 1f          	sar    r8d,0x1f
    13b6:	41 29 fc             	sub    r12d,edi
    13b9:	49 63 fd             	movsxd rdi,r13d
    13bc:	48 69 ff c1 02 0b 2c 	imul   rdi,rdi,0x2c0b02c1
    13c3:	45 0f b6 e4          	movzx  r12d,r12b
    13c7:	48 c1 ff 24          	sar    rdi,0x24
    13cb:	44 29 c7             	sub    edi,r8d
    13ce:	6b ff 5d             	imul   edi,edi,0x5d
    13d1:	41 29 fd             	sub    r13d,edi
    13d4:	48 63 7c 24 04       	movsxd rdi,DWORD PTR [rsp+0x4]
    13d9:	45 0f b6 ed          	movzx  r13d,r13b
    13dd:	48 89 fe             	mov    rsi,rdi
    13e0:	48 69 ff c1 02 0b 2c 	imul   rdi,rdi,0x2c0b02c1
    13e7:	41 89 f0             	mov    r8d,esi
    13ea:	41 c1 f8 1f          	sar    r8d,0x1f
    13ee:	48 c1 ff 24          	sar    rdi,0x24
    13f2:	44 29 c7             	sub    edi,r8d
    13f5:	41 89 c0             	mov    r8d,eax
    13f8:	6b ff 5d             	imul   edi,edi,0x5d
    13fb:	29 fe                	sub    esi,edi
    13fd:	48 63 f8             	movsxd rdi,eax
    1400:	48 69 ff c1 02 0b 2c 	imul   rdi,rdi,0x2c0b02c1
    1407:	41 c1 f8 1f          	sar    r8d,0x1f
    140b:	40 0f b6 f6          	movzx  esi,sil
    140f:	48 c1 ff 24          	sar    rdi,0x24
    1413:	44 29 c7             	sub    edi,r8d
    1416:	6b ff 5d             	imul   edi,edi,0x5d
    1419:	29 f8                	sub    eax,edi
    141b:	0f b6 c0             	movzx  eax,al
    141e:	48 c1 e0 08          	shl    rax,0x8
    1422:	48 09 f0             	or     rax,rsi
    1425:	40 0f b6 f5          	movzx  esi,bpl
    1429:	48 c1 e0 08          	shl    rax,0x8
    142d:	4c 09 e8             	or     rax,r13
    1430:	48 c1 e0 08          	shl    rax,0x8
    1434:	4c 09 e0             	or     rax,r12
    1437:	48 c1 e0 08          	shl    rax,0x8
    143b:	48 89 c5             	mov    rbp,rax
    143e:	41 0f b6 c1          	movzx  eax,r9b
    1442:	48 09 f5             	or     rbp,rsi
    1445:	49 89 e9             	mov    r9,rbp
    1448:	49 c1 e1 08          	shl    r9,0x8
    144c:	49 09 c1             	or     r9,rax
    144f:	41 0f b6 c2          	movzx  eax,r10b
    1453:	4d 89 ca             	mov    r10,r9
    1456:	49 c1 e2 08          	shl    r10,0x8
    145a:	49 09 c2             	or     r10,rax
    145d:	49 c1 e2 08          	shl    r10,0x8
    1461:	4d 09 da             	or     r10,r11
    1464:	66 49 0f 6e ca       	movq   xmm1,r10
    1469:	66 0f fc c8          	paddb  xmm1,xmm0
    146d:	66 0f d6 4c 24 30    	movq   QWORD PTR [rsp+0x30],xmm1
    1473:	e8 18 fd ff ff       	call   1190 <rand@plt>
    1478:	41 89 c5             	mov    r13d,eax
    147b:	e8 10 fd ff ff       	call   1190 <rand@plt>
    1480:	41 89 c4             	mov    r12d,eax
    1483:	e8 08 fd ff ff       	call   1190 <rand@plt>
    1488:	89 c5                	mov    ebp,eax
    148a:	e8 01 fd ff ff       	call   1190 <rand@plt>
    148f:	49 63 fd             	movsxd rdi,r13d
    1492:	44 89 ee             	mov    esi,r13d
    1495:	4d 63 c4             	movsxd r8,r12d
    1498:	48 69 ff c1 02 0b 2c 	imul   rdi,rdi,0x2c0b02c1
    149f:	c1 fe 1f             	sar    esi,0x1f
    14a2:	4c 63 cd             	movsxd r9,ebp
    14a5:	41 89 c2             	mov    r10d,eax
    14a8:	4d 69 c0 c1 02 0b 2c 	imul   r8,r8,0x2c0b02c1
    14af:	66 0f 6e 05 e1 0c 00 	movd   xmm0,DWORD PTR [rip+0xce1]        # 2198 <rand@plt+0x1008>
    14b6:	00 
    14b7:	48 c1 ff 24          	sar    rdi,0x24
    14bb:	29 f7                	sub    edi,esi
    14bd:	44 89 ee             	mov    esi,r13d
    14c0:	49 c1 f8 24          	sar    r8,0x24
    14c4:	6b ff 5d             	imul   edi,edi,0x5d
    14c7:	29 fe                	sub    esi,edi
    14c9:	44 89 e7             	mov    edi,r12d
    14cc:	c1 ff 1f             	sar    edi,0x1f
    14cf:	4d 69 c9 c1 02 0b 2c 	imul   r9,r9,0x2c0b02c1
    14d6:	41 c1 fa 1f          	sar    r10d,0x1f
    14da:	40 0f b6 f6          	movzx  esi,sil
    14de:	41 29 f8             	sub    r8d,edi
    14e1:	44 89 e7             	mov    edi,r12d
    14e4:	45 6b c0 5d          	imul   r8d,r8d,0x5d
    14e8:	49 c1 f9 24          	sar    r9,0x24
    14ec:	44 29 c7             	sub    edi,r8d
    14ef:	41 89 e8             	mov    r8d,ebp
    14f2:	41 c1 f8 1f          	sar    r8d,0x1f
    14f6:	40 0f b6 ff          	movzx  edi,dil
    14fa:	45 29 c1             	sub    r9d,r8d
    14fd:	41 89 e8             	mov    r8d,ebp
    1500:	48 8d 6c 24 60       	lea    rbp,[rsp+0x60]
    1505:	45 6b c9 5d          	imul   r9d,r9d,0x5d
    1509:	45 29 c8             	sub    r8d,r9d
    150c:	4c 63 c8             	movsxd r9,eax
    150f:	4d 69 c9 c1 02 0b 2c 	imul   r9,r9,0x2c0b02c1
    1516:	45 0f b6 c0          	movzx  r8d,r8b
    151a:	49 c1 f9 24          	sar    r9,0x24
    151e:	45 29 d1             	sub    r9d,r10d
    1521:	45 6b c9 5d          	imul   r9d,r9d,0x5d
    1525:	44 29 c8             	sub    eax,r9d
    1528:	0f b6 c0             	movzx  eax,al
    152b:	c1 e0 08             	shl    eax,0x8
    152e:	44 09 c0             	or     eax,r8d
    1531:	c1 e0 08             	shl    eax,0x8
    1534:	09 f8                	or     eax,edi
    1536:	c1 e0 08             	shl    eax,0x8
    1539:	09 f0                	or     eax,esi
    153b:	66 0f 6e d0          	movd   xmm2,eax
    153f:	66 0f fc d0          	paddb  xmm2,xmm0
    1543:	66 0f 7e 54 24 38    	movd   DWORD PTR [rsp+0x38],xmm2
    1549:	e8 42 fc ff ff       	call   1190 <rand@plt>
    154e:	89 c6                	mov    esi,eax
    1550:	48 98                	cdqe
    1552:	48 69 c0 c1 02 0b 2c 	imul   rax,rax,0x2c0b02c1
    1559:	89 f7                	mov    edi,esi
    155b:	c1 ff 1f             	sar    edi,0x1f
    155e:	48 c1 f8 24          	sar    rax,0x24
    1562:	29 f8                	sub    eax,edi
    1564:	6b c0 5d             	imul   eax,eax,0x5d
    1567:	29 c6                	sub    esi,eax
    1569:	8d 46 21             	lea    eax,[rsi+0x21]
    156c:	88 44 24 04          	mov    BYTE PTR [rsp+0x4],al
    1570:	e8 1b fc ff ff       	call   1190 <rand@plt>
    1575:	89 c6                	mov    esi,eax
    1577:	48 98                	cdqe
    1579:	48 69 c0 c1 02 0b 2c 	imul   rax,rax,0x2c0b02c1
    1580:	89 f7                	mov    edi,esi
    1582:	48 c1 f8 24          	sar    rax,0x24
    1586:	c1 ff 1f             	sar    edi,0x1f
    1589:	29 f8                	sub    eax,edi
    158b:	6b c0 5d             	imul   eax,eax,0x5d
    158e:	29 c6                	sub    esi,eax
    1590:	8d 46 21             	lea    eax,[rsi+0x21]
    1593:	88 44 24 08          	mov    BYTE PTR [rsp+0x8],al
    1597:	e8 f4 fb ff ff       	call   1190 <rand@plt>
    159c:	89 c6                	mov    esi,eax
    159e:	48 98                	cdqe
    15a0:	48 69 c0 c1 02 0b 2c 	imul   rax,rax,0x2c0b02c1
    15a7:	89 f7                	mov    edi,esi
    15a9:	c1 ff 1f             	sar    edi,0x1f
    15ac:	48 c1 f8 24          	sar    rax,0x24
    15b0:	29 f8                	sub    eax,edi
    15b2:	6b c0 5d             	imul   eax,eax,0x5d
    15b5:	29 c6                	sub    esi,eax
    15b7:	8d 46 21             	lea    eax,[rsi+0x21]
    15ba:	88 44 24 0c          	mov    BYTE PTR [rsp+0xc],al
    15be:	e8 cd fb ff ff       	call   1190 <rand@plt>
    15c3:	48 63 f0             	movsxd rsi,eax
    15c6:	48 89 f7             	mov    rdi,rsi
    15c9:	48 c1 e7 1e          	shl    rdi,0x1e
    15cd:	48 01 f7             	add    rdi,rsi
    15d0:	89 c6                	mov    esi,eax
    15d2:	c1 fe 1f             	sar    esi,0x1f
    15d5:	48 c1 ff 3d          	sar    rdi,0x3d
    15d9:	29 f7                	sub    edi,esi
    15db:	89 fe                	mov    esi,edi
    15dd:	c1 e6 1f             	shl    esi,0x1f
    15e0:	29 fe                	sub    esi,edi
    15e2:	29 f0                	sub    eax,esi
    15e4:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
    15e8:	e8 a3 fb ff ff       	call   1190 <rand@plt>
    15ed:	48 63 f0             	movsxd rsi,eax
    15f0:	49 89 f4             	mov    r12,rsi
    15f3:	49 c1 e4 1e          	shl    r12,0x1e
    15f7:	49 01 f4             	add    r12,rsi
    15fa:	89 c6                	mov    esi,eax
    15fc:	c1 fe 1f             	sar    esi,0x1f
    15ff:	49 c1 fc 3d          	sar    r12,0x3d
    1603:	41 29 f4             	sub    r12d,esi
    1606:	44 89 e6             	mov    esi,r12d
    1609:	c1 e6 1f             	shl    esi,0x1f
    160c:	44 29 e6             	sub    esi,r12d
    160f:	29 f0                	sub    eax,esi
    1611:	41 89 c4             	mov    r12d,eax
    1614:	e8 77 fb ff ff       	call   1190 <rand@plt>
    1619:	48 63 f0             	movsxd rsi,eax
    161c:	48 89 f7             	mov    rdi,rsi
    161f:	48 c1 e7 1e          	shl    rdi,0x1e
    1623:	48 01 f7             	add    rdi,rsi
    1626:	89 c6                	mov    esi,eax
    1628:	48 c1 ff 3d          	sar    rdi,0x3d
    162c:	c1 fe 1f             	sar    esi,0x1f
    162f:	29 f7                	sub    edi,esi
    1631:	89 fe                	mov    esi,edi
    1633:	c1 e6 1f             	shl    esi,0x1f
    1636:	29 fe                	sub    esi,edi
    1638:	29 f0                	sub    eax,esi
    163a:	41 89 c5             	mov    r13d,eax
    163d:	e8 4e fb ff ff       	call   1190 <rand@plt>
    1642:	48 63 f0             	movsxd rsi,eax
    1645:	48 89 f7             	mov    rdi,rsi
    1648:	48 c1 e7 1e          	shl    rdi,0x1e
    164c:	48 01 f7             	add    rdi,rsi
    164f:	89 c6                	mov    esi,eax
    1651:	c1 fe 1f             	sar    esi,0x1f
    1654:	48 c1 ff 3d          	sar    rdi,0x3d
    1658:	29 f7                	sub    edi,esi
    165a:	89 fe                	mov    esi,edi
    165c:	c1 e6 1f             	shl    esi,0x1f
    165f:	29 fe                	sub    esi,edi
    1661:	29 f0                	sub    eax,esi
    1663:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
    1667:	e8 24 fb ff ff       	call   1190 <rand@plt>
    166c:	48 8d 3d d5 09 00 00 	lea    rdi,[rip+0x9d5]        # 2048 <rand@plt+0xeb8>
    1673:	66 0f ef c0          	pxor   xmm0,xmm0
    1677:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
    167b:	f3 0f 5e 05 81 09 00 	divss  xmm0,DWORD PTR [rip+0x981]        # 2004 <rand@plt+0xe74>
    1682:	00 
    1683:	f3 0f 11 44 24 3c    	movss  DWORD PTR [rsp+0x3c],xmm0
    1689:	e8 62 fa ff ff       	call   10f0 <puts@plt>
    168e:	48 63 44 24 18       	movsxd rax,DWORD PTR [rsp+0x18]
    1693:	bf 02 00 00 00       	mov    edi,0x2
    1698:	48 89 c6             	mov    rsi,rax
    169b:	48 89 c1             	mov    rcx,rax
    169e:	48 c1 e6 1e          	shl    rsi,0x1e
    16a2:	48 01 c6             	add    rsi,rax
    16a5:	c1 f8 1f             	sar    eax,0x1f
    16a8:	48 c1 fe 3d          	sar    rsi,0x3d
    16ac:	29 c6                	sub    esi,eax
    16ae:	89 f0                	mov    eax,esi
    16b0:	c1 e0 1f             	shl    eax,0x1f
    16b3:	29 f0                	sub    eax,esi
    16b5:	49 63 f7             	movsxd rsi,r15d
    16b8:	29 c1                	sub    ecx,eax
    16ba:	48 89 f0             	mov    rax,rsi
    16bd:	48 c1 e0 1e          	shl    rax,0x1e
    16c1:	48 01 f0             	add    rax,rsi
    16c4:	44 89 fe             	mov    esi,r15d
    16c7:	c1 fe 1f             	sar    esi,0x1f
    16ca:	48 c1 f8 3d          	sar    rax,0x3d
    16ce:	29 f0                	sub    eax,esi
    16d0:	89 c6                	mov    esi,eax
    16d2:	c1 e6 1f             	shl    esi,0x1f
    16d5:	29 c6                	sub    esi,eax
    16d7:	41 29 f7             	sub    r15d,esi
    16da:	48 8d 35 97 09 00 00 	lea    rsi,[rip+0x997]        # 2078 <rand@plt+0xee8>
    16e1:	41 31 cf             	xor    r15d,ecx
    16e4:	48 63 4c 24 14       	movsxd rcx,DWORD PTR [rsp+0x14]
    16e9:	48 89 c8             	mov    rax,rcx
    16ec:	48 89 ca             	mov    rdx,rcx
    16ef:	48 c1 e0 1e          	shl    rax,0x1e
    16f3:	48 01 c8             	add    rax,rcx
    16f6:	c1 f9 1f             	sar    ecx,0x1f
    16f9:	48 c1 f8 3d          	sar    rax,0x3d
    16fd:	29 c8                	sub    eax,ecx
    16ff:	89 c1                	mov    ecx,eax
    1701:	c1 e1 1f             	shl    ecx,0x1f
    1704:	29 c1                	sub    ecx,eax
    1706:	29 ca                	sub    edx,ecx
    1708:	41 01 d7             	add    r15d,edx
    170b:	49 63 d6             	movsxd rdx,r14d
    170e:	48 89 d0             	mov    rax,rdx
    1711:	48 c1 e0 1e          	shl    rax,0x1e
    1715:	48 01 d0             	add    rax,rdx
    1718:	44 89 f2             	mov    edx,r14d
    171b:	c1 fa 1f             	sar    edx,0x1f
    171e:	48 c1 f8 3d          	sar    rax,0x3d
    1722:	29 d0                	sub    eax,edx
    1724:	89 c2                	mov    edx,eax
    1726:	c1 e2 1f             	shl    edx,0x1f
    1729:	29 c2                	sub    edx,eax
    172b:	31 c0                	xor    eax,eax
    172d:	41 29 d6             	sub    r14d,edx
    1730:	e8 3b fa ff ff       	call   1170 <__printf_chk@plt>
    1735:	45 31 f7             	xor    r15d,r14d
    1738:	be 64 00 00 00       	mov    esi,0x64
    173d:	48 89 ef             	mov    rdi,rbp
    1740:	48 8b 15 c9 28 00 00 	mov    rdx,QWORD PTR [rip+0x28c9]        # 4010 <stdin@GLIBC_2.2.5>
    1747:	4c 8d 74 24 44       	lea    r14,[rsp+0x44]
    174c:	e8 df f9 ff ff       	call   1130 <fgets@plt>
    1751:	31 c0                	xor    eax,eax
    1753:	4c 89 f2             	mov    rdx,r14
    1756:	48 89 ef             	mov    rdi,rbp
    1759:	48 8d 35 c1 08 00 00 	lea    rsi,[rip+0x8c1]        # 2021 <rand@plt+0xe91>
    1760:	e8 fb f9 ff ff       	call   1160 <__isoc99_sscanf@plt>
    1765:	83 f8 01             	cmp    eax,0x1
    1768:	0f 85 2d 02 00 00    	jne    199b <rand@plt+0x80b>
    176e:	44 39 7c 24 44       	cmp    DWORD PTR [rsp+0x44],r15d
    1773:	0f 85 22 02 00 00    	jne    199b <rand@plt+0x80b>
    1779:	48 8d 35 28 09 00 00 	lea    rsi,[rip+0x928]        # 20a8 <rand@plt+0xf18>
    1780:	bf 02 00 00 00       	mov    edi,0x2
    1785:	31 c0                	xor    eax,eax
    1787:	e8 e4 f9 ff ff       	call   1170 <__printf_chk@plt>
    178c:	48 8b 15 7d 28 00 00 	mov    rdx,QWORD PTR [rip+0x287d]        # 4010 <stdin@GLIBC_2.2.5>
    1793:	be 64 00 00 00       	mov    esi,0x64
    1798:	48 89 ef             	mov    rdi,rbp
    179b:	4c 8d 3d 82 08 00 00 	lea    r15,[rip+0x882]        # 2024 <rand@plt+0xe94>
    17a2:	e8 89 f9 ff ff       	call   1130 <fgets@plt>
    17a7:	31 c0                	xor    eax,eax
    17a9:	48 8d 54 24 48       	lea    rdx,[rsp+0x48]
    17ae:	4c 89 fe             	mov    rsi,r15
    17b1:	48 89 ef             	mov    rdi,rbp
    17b4:	e8 a7 f9 ff ff       	call   1160 <__isoc99_sscanf@plt>
    17b9:	83 f8 01             	cmp    eax,0x1
    17bc:	0f 85 d9 01 00 00    	jne    199b <rand@plt+0x80b>
    17c2:	f3 0f 10 5c 24 1c    	movss  xmm3,DWORD PTR [rsp+0x1c]
    17c8:	0f 2e 5c 24 48       	ucomiss xmm3,DWORD PTR [rsp+0x48]
    17cd:	0f 8a c8 01 00 00    	jp     199b <rand@plt+0x80b>
    17d3:	0f 85 c2 01 00 00    	jne    199b <rand@plt+0x80b>
    17d9:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
    17dd:	48 8d 35 f4 08 00 00 	lea    rsi,[rip+0x8f4]        # 20d8 <rand@plt+0xf48>
    17e4:	bf 02 00 00 00       	mov    edi,0x2
    17e9:	31 c3                	xor    ebx,eax
    17eb:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
    17ef:	01 c3                	add    ebx,eax
    17f1:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
    17f5:	31 c3                	xor    ebx,eax
    17f7:	31 c0                	xor    eax,eax
    17f9:	e8 72 f9 ff ff       	call   1170 <__printf_chk@plt>
    17fe:	48 8b 15 0b 28 00 00 	mov    rdx,QWORD PTR [rip+0x280b]        # 4010 <stdin@GLIBC_2.2.5>
    1805:	be 64 00 00 00       	mov    esi,0x64
    180a:	48 89 ef             	mov    rdi,rbp
    180d:	e8 1e f9 ff ff       	call   1130 <fgets@plt>
    1812:	31 c0                	xor    eax,eax
    1814:	4c 89 f2             	mov    rdx,r14
    1817:	48 89 ef             	mov    rdi,rbp
    181a:	48 8d 35 00 08 00 00 	lea    rsi,[rip+0x800]        # 2021 <rand@plt+0xe91>
    1821:	e8 3a f9 ff ff       	call   1160 <__isoc99_sscanf@plt>
    1826:	83 f8 01             	cmp    eax,0x1
    1829:	0f 85 6c 01 00 00    	jne    199b <rand@plt+0x80b>
    182f:	39 5c 24 44          	cmp    DWORD PTR [rsp+0x44],ebx
    1833:	0f 85 62 01 00 00    	jne    199b <rand@plt+0x80b>
    1839:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
    183e:	bf 02 00 00 00       	mov    edi,0x2
    1843:	c6 44 24 5f 00       	mov    BYTE PTR [rsp+0x5f],0x0
    1848:	48 8d 35 b9 08 00 00 	lea    rsi,[rip+0x8b9]        # 2108 <rand@plt+0xf78>
    184f:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
    1854:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
    1858:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
    185c:	0f b6 44 24 04       	movzx  eax,BYTE PTR [rsp+0x4]
    1861:	88 44 24 5c          	mov    BYTE PTR [rsp+0x5c],al
    1865:	0f b6 44 24 08       	movzx  eax,BYTE PTR [rsp+0x8]
    186a:	88 44 24 5d          	mov    BYTE PTR [rsp+0x5d],al
    186e:	0f b6 44 24 0c       	movzx  eax,BYTE PTR [rsp+0xc]
    1873:	88 44 24 5e          	mov    BYTE PTR [rsp+0x5e],al
    1877:	31 c0                	xor    eax,eax
    1879:	e8 f2 f8 ff ff       	call   1170 <__printf_chk@plt>
    187e:	48 8b 15 8b 27 00 00 	mov    rdx,QWORD PTR [rip+0x278b]        # 4010 <stdin@GLIBC_2.2.5>
    1885:	be 64 00 00 00       	mov    esi,0x64
    188a:	48 89 ef             	mov    rdi,rbp
    188d:	e8 9e f8 ff ff       	call   1130 <fgets@plt>
    1892:	48 8d 35 8e 07 00 00 	lea    rsi,[rip+0x78e]        # 2027 <rand@plt+0xe97>
    1899:	48 89 ef             	mov    rdi,rbp
    189c:	e8 6f f8 ff ff       	call   1110 <strcspn@plt>
    18a1:	48 8d 74 24 50       	lea    rsi,[rsp+0x50]
    18a6:	48 89 ef             	mov    rdi,rbp
    18a9:	c6 44 04 60 00       	mov    BYTE PTR [rsp+rax*1+0x60],0x0
    18ae:	e8 8d f8 ff ff       	call   1140 <strcmp@plt>
    18b3:	85 c0                	test   eax,eax
    18b5:	0f 85 e0 00 00 00    	jne    199b <rand@plt+0x80b>
    18bb:	8b 5c 24 2c          	mov    ebx,DWORD PTR [rsp+0x2c]
    18bf:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
    18c3:	bf 02 00 00 00       	mov    edi,0x2
    18c8:	48 8d 35 69 08 00 00 	lea    rsi,[rip+0x869]        # 2138 <rand@plt+0xfa8>
    18cf:	31 d8                	xor    eax,ebx
    18d1:	44 01 e0             	add    eax,r12d
    18d4:	44 31 e8             	xor    eax,r13d
    18d7:	89 c3                	mov    ebx,eax
    18d9:	31 c0                	xor    eax,eax
    18db:	e8 90 f8 ff ff       	call   1170 <__printf_chk@plt>
    18e0:	48 8b 15 29 27 00 00 	mov    rdx,QWORD PTR [rip+0x2729]        # 4010 <stdin@GLIBC_2.2.5>
    18e7:	be 64 00 00 00       	mov    esi,0x64
    18ec:	48 89 ef             	mov    rdi,rbp
    18ef:	e8 3c f8 ff ff       	call   1130 <fgets@plt>
    18f4:	31 c0                	xor    eax,eax
    18f6:	4c 89 f2             	mov    rdx,r14
    18f9:	48 89 ef             	mov    rdi,rbp
    18fc:	48 8d 35 1e 07 00 00 	lea    rsi,[rip+0x71e]        # 2021 <rand@plt+0xe91>
    1903:	e8 58 f8 ff ff       	call   1160 <__isoc99_sscanf@plt>
    1908:	83 f8 01             	cmp    eax,0x1
    190b:	0f 85 8a 00 00 00    	jne    199b <rand@plt+0x80b>
    1911:	39 5c 24 44          	cmp    DWORD PTR [rsp+0x44],ebx
    1915:	0f 85 80 00 00 00    	jne    199b <rand@plt+0x80b>
    191b:	48 8d 35 46 08 00 00 	lea    rsi,[rip+0x846]        # 2168 <rand@plt+0xfd8>
    1922:	bf 02 00 00 00       	mov    edi,0x2
    1927:	31 c0                	xor    eax,eax
    1929:	e8 42 f8 ff ff       	call   1170 <__printf_chk@plt>
    192e:	48 8b 15 db 26 00 00 	mov    rdx,QWORD PTR [rip+0x26db]        # 4010 <stdin@GLIBC_2.2.5>
    1935:	be 64 00 00 00       	mov    esi,0x64
    193a:	48 89 ef             	mov    rdi,rbp
    193d:	e8 ee f7 ff ff       	call   1130 <fgets@plt>
    1942:	31 c0                	xor    eax,eax
    1944:	48 8d 54 24 4c       	lea    rdx,[rsp+0x4c]
    1949:	4c 89 fe             	mov    rsi,r15
    194c:	48 89 ef             	mov    rdi,rbp
    194f:	e8 0c f8 ff ff       	call   1160 <__isoc99_sscanf@plt>
    1954:	83 f8 01             	cmp    eax,0x1
    1957:	75 42                	jne    199b <rand@plt+0x80b>
    1959:	f3 0f 10 64 24 3c    	movss  xmm4,DWORD PTR [rsp+0x3c]
    195f:	0f 2e 64 24 4c       	ucomiss xmm4,DWORD PTR [rsp+0x4c]
    1964:	7a 35                	jp     199b <rand@plt+0x80b>
    1966:	75 33                	jne    199b <rand@plt+0x80b>
    1968:	48 8d 3d ba 06 00 00 	lea    rdi,[rip+0x6ba]        # 2029 <rand@plt+0xe99>
    196f:	e8 7c f7 ff ff       	call   10f0 <puts@plt>
    1974:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
    197b:	00 
    197c:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1983:	00 00 
    1985:	75 1b                	jne    19a2 <rand@plt+0x812>
    1987:	48 81 c4 d8 00 00 00 	add    rsp,0xd8
    198e:	31 c0                	xor    eax,eax
    1990:	5b                   	pop    rbx
    1991:	5d                   	pop    rbp
    1992:	41 5c                	pop    r12
    1994:	41 5d                	pop    r13
    1996:	41 5e                	pop    r14
    1998:	41 5f                	pop    r15
    199a:	c3                   	ret
    199b:	31 c0                	xor    eax,eax
    199d:	e8 fe 00 00 00       	call   1aa0 <rand@plt+0x910>
    19a2:	e8 59 f7 ff ff       	call   1100 <__stack_chk_fail@plt>
    19a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    19ae:	00 00 
    19b0:	f3 0f 1e fa          	endbr64
    19b4:	31 ed                	xor    ebp,ebp
    19b6:	49 89 d1             	mov    r9,rdx
    19b9:	5e                   	pop    rsi
    19ba:	48 89 e2             	mov    rdx,rsp
    19bd:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    19c1:	50                   	push   rax
    19c2:	54                   	push   rsp
    19c3:	45 31 c0             	xor    r8d,r8d
    19c6:	31 c9                	xor    ecx,ecx
    19c8:	48 8d 3d d1 f7 ff ff 	lea    rdi,[rip+0xfffffffffffff7d1]        # 11a0 <rand@plt+0x10>
    19cf:	ff 15 03 26 00 00    	call   QWORD PTR [rip+0x2603]        # 3fd8 <rand@plt+0x2e48>
    19d5:	f4                   	hlt
    19d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    19dd:	00 00 00 
    19e0:	48 8d 3d 29 26 00 00 	lea    rdi,[rip+0x2629]        # 4010 <stdin@GLIBC_2.2.5>
    19e7:	48 8d 05 22 26 00 00 	lea    rax,[rip+0x2622]        # 4010 <stdin@GLIBC_2.2.5>
    19ee:	48 39 f8             	cmp    rax,rdi
    19f1:	74 15                	je     1a08 <rand@plt+0x878>
    19f3:	48 8b 05 e6 25 00 00 	mov    rax,QWORD PTR [rip+0x25e6]        # 3fe0 <rand@plt+0x2e50>
    19fa:	48 85 c0             	test   rax,rax
    19fd:	74 09                	je     1a08 <rand@plt+0x878>
    19ff:	ff e0                	jmp    rax
    1a01:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1a08:	c3                   	ret
    1a09:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1a10:	48 8d 3d f9 25 00 00 	lea    rdi,[rip+0x25f9]        # 4010 <stdin@GLIBC_2.2.5>
    1a17:	48 8d 35 f2 25 00 00 	lea    rsi,[rip+0x25f2]        # 4010 <stdin@GLIBC_2.2.5>
    1a1e:	48 29 fe             	sub    rsi,rdi
    1a21:	48 89 f0             	mov    rax,rsi
    1a24:	48 c1 ee 3f          	shr    rsi,0x3f
    1a28:	48 c1 f8 03          	sar    rax,0x3
    1a2c:	48 01 c6             	add    rsi,rax
    1a2f:	48 d1 fe             	sar    rsi,1
    1a32:	74 14                	je     1a48 <rand@plt+0x8b8>
    1a34:	48 8b 05 b5 25 00 00 	mov    rax,QWORD PTR [rip+0x25b5]        # 3ff0 <rand@plt+0x2e60>
    1a3b:	48 85 c0             	test   rax,rax
    1a3e:	74 08                	je     1a48 <rand@plt+0x8b8>
    1a40:	ff e0                	jmp    rax
    1a42:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1a48:	c3                   	ret
    1a49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1a50:	f3 0f 1e fa          	endbr64
    1a54:	80 3d bd 25 00 00 00 	cmp    BYTE PTR [rip+0x25bd],0x0        # 4018 <stdin@GLIBC_2.2.5+0x8>
    1a5b:	75 2b                	jne    1a88 <rand@plt+0x8f8>
    1a5d:	55                   	push   rbp
    1a5e:	48 83 3d 92 25 00 00 	cmp    QWORD PTR [rip+0x2592],0x0        # 3ff8 <rand@plt+0x2e68>
    1a65:	00 
    1a66:	48 89 e5             	mov    rbp,rsp
    1a69:	74 0c                	je     1a77 <rand@plt+0x8e7>
    1a6b:	48 8b 3d 96 25 00 00 	mov    rdi,QWORD PTR [rip+0x2596]        # 4008 <rand@plt+0x2e78>
    1a72:	e8 69 f6 ff ff       	call   10e0 <__cxa_finalize@plt>
    1a77:	e8 64 ff ff ff       	call   19e0 <rand@plt+0x850>
    1a7c:	c6 05 95 25 00 00 01 	mov    BYTE PTR [rip+0x2595],0x1        # 4018 <stdin@GLIBC_2.2.5+0x8>
    1a83:	5d                   	pop    rbp
    1a84:	c3                   	ret
    1a85:	0f 1f 00             	nop    DWORD PTR [rax]
    1a88:	c3                   	ret
    1a89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1a90:	f3 0f 1e fa          	endbr64
    1a94:	e9 77 ff ff ff       	jmp    1a10 <rand@plt+0x880>
    1a99:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1aa0:	f3 0f 1e fa          	endbr64
    1aa4:	50                   	push   rax
    1aa5:	58                   	pop    rax
    1aa6:	48 8d 3d 5b 05 00 00 	lea    rdi,[rip+0x55b]        # 2008 <rand@plt+0xe78>
    1aad:	48 83 ec 08          	sub    rsp,0x8
    1ab1:	e8 3a f6 ff ff       	call   10f0 <puts@plt>
    1ab6:	bf 01 00 00 00       	mov    edi,0x1
    1abb:	e8 c0 f6 ff ff       	call   1180 <exit@plt>

Desensamblado de la sección .fini:

0000000000001ac0 <.fini>:
    1ac0:	f3 0f 1e fa          	endbr64
    1ac4:	48 83 ec 08          	sub    rsp,0x8
    1ac8:	48 83 c4 08          	add    rsp,0x8
    1acc:	c3                   	ret
