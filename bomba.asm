
Bomba:     formato del fichero elf64-x86-64


Desensamblado de la sección .init:

0000000000001000 <.init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <rand@plt+0x2e58>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <__cxa_finalize@plt-0xca>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Desensamblado de la sección .plt: ;procedure linkage table

0000000000001020 <.plt>:
    1020:	ff 35 4a 2f 00 00    	push   0x2f4a(%rip)        # 3f70 <rand@plt+0x2de0>
    1026:	ff 25 4c 2f 00 00    	jmp    *0x2f4c(%rip)        # 3f78 <rand@plt+0x2de8>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    103e:	66 90                	xchg   %ax,%ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    106e:	66 90                	xchg   %ax,%ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    107e:	66 90                	xchg   %ax,%ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    108e:	66 90                	xchg   %ax,%ax
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    109e:	66 90                	xchg   %ax,%ax
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	e9 72 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    10ae:	66 90                	xchg   %ax,%ax
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	e9 62 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    10be:	66 90                	xchg   %ax,%ax
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	e9 52 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    10ce:	66 90                	xchg   %ax,%ax
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	e9 42 ff ff ff       	jmp    1020 <__cxa_finalize@plt-0xc0>
    10de:	66 90                	xchg   %ax,%ax

Desensamblado de la sección .plt.got:

00000000000010e0 <__cxa_finalize@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	ff 25 0e 2f 00 00    	jmp    *0x2f0e(%rip)        # 3ff8 <rand@plt+0x2e68>
    10ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Desensamblado de la sección .plt.sec:

00000000000010f0 <puts@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	ff 25 86 2e 00 00    	jmp    *0x2e86(%rip)        # 3f80 <rand@plt+0x2df0>
    10fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001100 <__stack_chk_fail@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	ff 25 7e 2e 00 00    	jmp    *0x2e7e(%rip)        # 3f88 <rand@plt+0x2df8>
    110a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001110 <strcspn@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 76 2e 00 00    	jmp    *0x2e76(%rip)        # 3f90 <rand@plt+0x2e00>
    111a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001120 <srand@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 6e 2e 00 00    	jmp    *0x2e6e(%rip)        # 3f98 <rand@plt+0x2e08>
    112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001130 <fgets@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 66 2e 00 00    	jmp    *0x2e66(%rip)        # 3fa0 <rand@plt+0x2e10>
    113a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001140 <strcmp@plt>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	ff 25 5e 2e 00 00    	jmp    *0x2e5e(%rip)        # 3fa8 <rand@plt+0x2e18>
    114a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001150 <time@plt>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	ff 25 56 2e 00 00    	jmp    *0x2e56(%rip)        # 3fb0 <rand@plt+0x2e20>
    115a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001160 <__isoc99_sscanf@plt>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	ff 25 4e 2e 00 00    	jmp    *0x2e4e(%rip)        # 3fb8 <rand@plt+0x2e28>
    116a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001170 <__printf_chk@plt>:
    1170:	f3 0f 1e fa          	endbr64
    1174:	ff 25 46 2e 00 00    	jmp    *0x2e46(%rip)        # 3fc0 <rand@plt+0x2e30>
    117a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001180 <exit@plt>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	ff 25 3e 2e 00 00    	jmp    *0x2e3e(%rip)        # 3fc8 <rand@plt+0x2e38>
    118a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001190 <rand@plt>:
    1190:	f3 0f 1e fa          	endbr64
    1194:	ff 25 36 2e 00 00    	jmp    *0x2e36(%rip)        # 3fd0 <rand@plt+0x2e40>
    119a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Desensamblado de la sección .text:

00000000000011a0 <.text>:
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	41 57                	push   %r15
    11a6:	31 ff                	xor    %edi,%edi
    11a8:	41 56                	push   %r14
    11aa:	41 55                	push   %r13
    11ac:	41 54                	push   %r12
    11ae:	55                   	push   %rbp
    11af:	53                   	push   %rbx
    11b0:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
    11b7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11be:	00 00 
    11c0:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
    11c7:	00 
    11c8:	31 c0                	xor    %eax,%eax        ;con esta instrucción xor, eax contiene 0
    11ca:	e8 81 ff ff ff       	call   1150 <time@plt>  ;llamada a la función time, esta deje el tiempo transcurrido en seg. en eax
    11cf:	89 c7                	mov    %eax,%edi        ;se mueve el contenido de eax a edi
    11d1:	e8 4a ff ff ff       	call   1120 <srand@plt> ;llamada a srand con la semilla en edi
    11d6:	e8 b5 ff ff ff       	call   1190 <rand@plt>  ;llamada a rand, se alamcena el retorno en eax.
    11db:	89 44 24 18          	mov    %eax,0x18(%rsp)  
    11df:	e8 ac ff ff ff       	call   1190 <rand@plt>
    11e4:	89 44 24 14          	mov    %eax,0x14(%rsp)
    11e8:	e8 a3 ff ff ff       	call   1190 <rand@plt>
    11ed:	41 89 c6             	mov    %eax,%r14d
    11f0:	e8 9b ff ff ff       	call   1190 <rand@plt>
    11f5:	41 89 c7             	mov    %eax,%r15d
    11f8:	e8 93 ff ff ff       	call   1190 <rand@plt>
    11fd:	66 0f ef c0          	pxor   %xmm0,%xmm0      ;xor para registros con numeros de punto flotante, alamcena 0 en xmm0
    1201:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0     ;convierte entero a float.
    1205:	f3 0f 5e 05 f7 0d 00 	divss  0xdf7(%rip),%xmm0        # 2004 <rand@plt+0xe74> ;divide el valor en xmm0 por el valor en 0xdf7(%rip)
    120c:	00 
    120d:	f3 0f 11 44 24 1c    	movss  %xmm0,0x1c(%rsp) ;acá se guarda la segunda clave (que es float), ver linea 17c2
    1213:	e8 78 ff ff ff       	call   1190 <rand@plt>
    1218:	48 63 f0             	movslq %eax,%rsi
    121b:	48 89 f3             	mov    %rsi,%rbx 
    121e:	48 c1 e3 1e          	shl    $0x1e,%rbx   ; shift lef desplazamiento de bits.
    1222:	48 01 f3             	add    %rsi,%rbx
    1225:	89 c6                	mov    %eax,%esi
    1227:	c1 fe 1f             	sar    $0x1f,%esi   ;shift arithmetic right
    122a:	48 c1 fb 3d          	sar    $0x3d,%rbx
    122e:	29 f3                	sub    %esi,%ebx
    1230:	89 de                	mov    %ebx,%esi
    1232:	c1 e6 1f             	shl    $0x1f,%esi
    1235:	29 de                	sub    %ebx,%esi
    1237:	29 f0                	sub    %esi,%eax
    1239:	89 c3                	mov    %eax,%ebx
    123b:	e8 50 ff ff ff       	call   1190 <rand@plt>
    1240:	48 63 f8             	movslq %eax,%rdi
    1243:	48 89 fe             	mov    %rdi,%rsi
    1246:	48 c1 e6 1e          	shl    $0x1e,%rsi
    124a:	48 01 fe             	add    %rdi,%rsi
    124d:	89 c7                	mov    %eax,%edi
    124f:	c1 ff 1f             	sar    $0x1f,%edi
    1252:	48 c1 fe 3d          	sar    $0x3d,%rsi
    1256:	29 fe                	sub    %edi,%esi
    1258:	89 f1                	mov    %esi,%ecx
    125a:	c1 e6 1f             	shl    $0x1f,%esi
    125d:	29 ce                	sub    %ecx,%esi
    125f:	29 f0                	sub    %esi,%eax
    1261:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1265:	e8 26 ff ff ff       	call   1190 <rand@plt>
    126a:	48 63 f8             	movslq %eax,%rdi
    126d:	48 89 fe             	mov    %rdi,%rsi
    1270:	48 c1 e6 1e          	shl    $0x1e,%rsi
    1274:	48 01 fe             	add    %rdi,%rsi
    1277:	89 c7                	mov    %eax,%edi
    1279:	48 c1 fe 3d          	sar    $0x3d,%rsi
    127d:	c1 ff 1f             	sar    $0x1f,%edi
    1280:	29 fe                	sub    %edi,%esi
    1282:	89 f1                	mov    %esi,%ecx
    1284:	c1 e6 1f             	shl    $0x1f,%esi
    1287:	29 ce                	sub    %ecx,%esi
    1289:	29 f0                	sub    %esi,%eax
    128b:	89 44 24 24          	mov    %eax,0x24(%rsp)
    128f:	e8 fc fe ff ff       	call   1190 <rand@plt>
    1294:	48 63 f8             	movslq %eax,%rdi
    1297:	48 89 fe             	mov    %rdi,%rsi
    129a:	48 c1 e6 1e          	shl    $0x1e,%rsi
    129e:	48 01 fe             	add    %rdi,%rsi
    12a1:	89 c7                	mov    %eax,%edi
    12a3:	c1 ff 1f             	sar    $0x1f,%edi
    12a6:	48 c1 fe 3d          	sar    $0x3d,%rsi
    12aa:	29 fe                	sub    %edi,%esi
    12ac:	89 f1                	mov    %esi,%ecx
    12ae:	c1 e6 1f             	shl    $0x1f,%esi
    12b1:	29 ce                	sub    %ecx,%esi
    12b3:	29 f0                	sub    %esi,%eax
    12b5:	89 44 24 28          	mov    %eax,0x28(%rsp)
    12b9:	e8 d2 fe ff ff       	call   1190 <rand@plt>
    12be:	89 44 24 10          	mov    %eax,0x10(%rsp)
    12c2:	e8 c9 fe ff ff       	call   1190 <rand@plt>
    12c7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    12cb:	e8 c0 fe ff ff       	call   1190 <rand@plt>
    12d0:	89 44 24 08          	mov    %eax,0x8(%rsp)
    12d4:	e8 b7 fe ff ff       	call   1190 <rand@plt>
    12d9:	89 c5                	mov    %eax,%ebp
    12db:	e8 b0 fe ff ff       	call   1190 <rand@plt>
    12e0:	41 89 c4             	mov    %eax,%r12d
    12e3:	e8 a8 fe ff ff       	call   1190 <rand@plt>
    12e8:	41 89 c5             	mov    %eax,%r13d
    12eb:	e8 a0 fe ff ff       	call   1190 <rand@plt>
    12f0:	89 44 24 04          	mov    %eax,0x4(%rsp)
    12f4:	e8 97 fe ff ff       	call   1190 <rand@plt>
    12f9:	48 63 7c 24 10       	movslq 0x10(%rsp),%rdi
    12fe:	f3 0f 7e 05 92 0e 00 	movq   0xe92(%rip),%xmm0        # 2198 <rand@plt+0x1008>
    1305:	00 
    1306:	49 89 fa             	mov    %rdi,%r10
    1309:	48 69 ff c1 02 0b 2c 	imul   $0x2c0b02c1,%rdi,%rdi
    1310:	45 89 d3             	mov    %r10d,%r11d
    1313:	41 c1 fb 1f          	sar    $0x1f,%r11d
    1317:	48 c1 ff 24          	sar    $0x24,%rdi
    131b:	44 29 df             	sub    %r11d,%edi
    131e:	45 89 d3             	mov    %r10d,%r11d
    1321:	6b ff 5d             	imul   $0x5d,%edi,%edi
    1324:	41 29 fb             	sub    %edi,%r11d
    1327:	48 63 7c 24 0c       	movslq 0xc(%rsp),%rdi
    132c:	45 0f b6 db          	movzbl %r11b,%r11d
    1330:	49 89 f9             	mov    %rdi,%r9
    1333:	48 69 ff c1 02 0b 2c 	imul   $0x2c0b02c1,%rdi,%rdi
    133a:	45 89 ca             	mov    %r9d,%r10d
    133d:	41 c1 fa 1f          	sar    $0x1f,%r10d
    1341:	48 c1 ff 24          	sar    $0x24,%rdi
    1345:	44 29 d7             	sub    %r10d,%edi
    1348:	45 89 ca             	mov    %r9d,%r10d
    134b:	6b ff 5d             	imul   $0x5d,%edi,%edi
    134e:	41 29 fa             	sub    %edi,%r10d
    1351:	48 63 7c 24 08       	movslq 0x8(%rsp),%rdi
    1356:	49 89 f8             	mov    %rdi,%r8
    1359:	48 69 ff c1 02 0b 2c 	imul   $0x2c0b02c1,%rdi,%rdi
    1360:	45 89 c1             	mov    %r8d,%r9d
    1363:	41 c1 f9 1f          	sar    $0x1f,%r9d
    1367:	48 c1 ff 24          	sar    $0x24,%rdi
    136b:	44 29 cf             	sub    %r9d,%edi
    136e:	6b ff 5d             	imul   $0x5d,%edi,%edi
    1371:	41 29 f8             	sub    %edi,%r8d
    1374:	48 63 fd             	movslq %ebp,%rdi
    1377:	48 69 ff c1 02 0b 2c 	imul   $0x2c0b02c1,%rdi,%rdi
    137e:	45 89 c1             	mov    %r8d,%r9d
    1381:	41 89 e8             	mov    %ebp,%r8d
    1384:	41 c1 f8 1f          	sar    $0x1f,%r8d
    1388:	48 c1 ff 24          	sar    $0x24,%rdi
    138c:	44 29 c7             	sub    %r8d,%edi
    138f:	45 89 e0             	mov    %r12d,%r8d
    1392:	6b ff 5d             	imul   $0x5d,%edi,%edi
    1395:	41 c1 f8 1f          	sar    $0x1f,%r8d
    1399:	29 fd                	sub    %edi,%ebp
    139b:	49 63 fc             	movslq %r12d,%rdi
    139e:	48 69 ff c1 02 0b 2c 	imul   $0x2c0b02c1,%rdi,%rdi
    13a5:	48 c1 ff 24          	sar    $0x24,%rdi
    13a9:	44 29 c7             	sub    %r8d,%edi
    13ac:	45 89 e8             	mov    %r13d,%r8d
    13af:	6b ff 5d             	imul   $0x5d,%edi,%edi
    13b2:	41 c1 f8 1f          	sar    $0x1f,%r8d
    13b6:	41 29 fc             	sub    %edi,%r12d
    13b9:	49 63 fd             	movslq %r13d,%rdi
    13bc:	48 69 ff c1 02 0b 2c 	imul   $0x2c0b02c1,%rdi,%rdi
    13c3:	45 0f b6 e4          	movzbl %r12b,%r12d
    13c7:	48 c1 ff 24          	sar    $0x24,%rdi
    13cb:	44 29 c7             	sub    %r8d,%edi
    13ce:	6b ff 5d             	imul   $0x5d,%edi,%edi
    13d1:	41 29 fd             	sub    %edi,%r13d
    13d4:	48 63 7c 24 04       	movslq 0x4(%rsp),%rdi
    13d9:	45 0f b6 ed          	movzbl %r13b,%r13d
    13dd:	48 89 fe             	mov    %rdi,%rsi
    13e0:	48 69 ff c1 02 0b 2c 	imul   $0x2c0b02c1,%rdi,%rdi
    13e7:	41 89 f0             	mov    %esi,%r8d
    13ea:	41 c1 f8 1f          	sar    $0x1f,%r8d
    13ee:	48 c1 ff 24          	sar    $0x24,%rdi
    13f2:	44 29 c7             	sub    %r8d,%edi
    13f5:	41 89 c0             	mov    %eax,%r8d
    13f8:	6b ff 5d             	imul   $0x5d,%edi,%edi
    13fb:	29 fe                	sub    %edi,%esi
    13fd:	48 63 f8             	movslq %eax,%rdi
    1400:	48 69 ff c1 02 0b 2c 	imul   $0x2c0b02c1,%rdi,%rdi
    1407:	41 c1 f8 1f          	sar    $0x1f,%r8d
    140b:	40 0f b6 f6          	movzbl %sil,%esi
    140f:	48 c1 ff 24          	sar    $0x24,%rdi
    1413:	44 29 c7             	sub    %r8d,%edi
    1416:	6b ff 5d             	imul   $0x5d,%edi,%edi
    1419:	29 f8                	sub    %edi,%eax
    141b:	0f b6 c0             	movzbl %al,%eax
    141e:	48 c1 e0 08          	shl    $0x8,%rax
    1422:	48 09 f0             	or     %rsi,%rax
    1425:	40 0f b6 f5          	movzbl %bpl,%esi
    1429:	48 c1 e0 08          	shl    $0x8,%rax
    142d:	4c 09 e8             	or     %r13,%rax
    1430:	48 c1 e0 08          	shl    $0x8,%rax
    1434:	4c 09 e0             	or     %r12,%rax
    1437:	48 c1 e0 08          	shl    $0x8,%rax
    143b:	48 89 c5             	mov    %rax,%rbp
    143e:	41 0f b6 c1          	movzbl %r9b,%eax
    1442:	48 09 f5             	or     %rsi,%rbp
    1445:	49 89 e9             	mov    %rbp,%r9
    1448:	49 c1 e1 08          	shl    $0x8,%r9
    144c:	49 09 c1             	or     %rax,%r9
    144f:	41 0f b6 c2          	movzbl %r10b,%eax
    1453:	4d 89 ca             	mov    %r9,%r10
    1456:	49 c1 e2 08          	shl    $0x8,%r10
    145a:	49 09 c2             	or     %rax,%r10
    145d:	49 c1 e2 08          	shl    $0x8,%r10
    1461:	4d 09 da             	or     %r11,%r10
    1464:	66 49 0f 6e ca       	movq   %r10,%xmm1
    1469:	66 0f fc c8          	paddb  %xmm0,%xmm1  ;packed add package bytes
    146d:	66 0f d6 4c 24 30    	movq   %xmm1,0x30(%rsp)
    1473:	e8 18 fd ff ff       	call   1190 <rand@plt>
    1478:	41 89 c5             	mov    %eax,%r13d
    147b:	e8 10 fd ff ff       	call   1190 <rand@plt>
    1480:	41 89 c4             	mov    %eax,%r12d
    1483:	e8 08 fd ff ff       	call   1190 <rand@plt>
    1488:	89 c5                	mov    %eax,%ebp
    148a:	e8 01 fd ff ff       	call   1190 <rand@plt>
    148f:	49 63 fd             	movslq %r13d,%rdi
    1492:	44 89 ee             	mov    %r13d,%esi
    1495:	4d 63 c4             	movslq %r12d,%r8
    1498:	48 69 ff c1 02 0b 2c 	imul   $0x2c0b02c1,%rdi,%rdi
    149f:	c1 fe 1f             	sar    $0x1f,%esi
    14a2:	4c 63 cd             	movslq %ebp,%r9
    14a5:	41 89 c2             	mov    %eax,%r10d
    14a8:	4d 69 c0 c1 02 0b 2c 	imul   $0x2c0b02c1,%r8,%r8
    14af:	66 0f 6e 05 e1 0c 00 	movd   0xce1(%rip),%xmm0        # 2198 <rand@plt+0x1008>
    14b6:	00 
    14b7:	48 c1 ff 24          	sar    $0x24,%rdi
    14bb:	29 f7                	sub    %esi,%edi
    14bd:	44 89 ee             	mov    %r13d,%esi
    14c0:	49 c1 f8 24          	sar    $0x24,%r8
    14c4:	6b ff 5d             	imul   $0x5d,%edi,%edi
    14c7:	29 fe                	sub    %edi,%esi
    14c9:	44 89 e7             	mov    %r12d,%edi
    14cc:	c1 ff 1f             	sar    $0x1f,%edi
    14cf:	4d 69 c9 c1 02 0b 2c 	imul   $0x2c0b02c1,%r9,%r9
    14d6:	41 c1 fa 1f          	sar    $0x1f,%r10d
    14da:	40 0f b6 f6          	movzbl %sil,%esi
    14de:	41 29 f8             	sub    %edi,%r8d
    14e1:	44 89 e7             	mov    %r12d,%edi
    14e4:	45 6b c0 5d          	imul   $0x5d,%r8d,%r8d
    14e8:	49 c1 f9 24          	sar    $0x24,%r9
    14ec:	44 29 c7             	sub    %r8d,%edi
    14ef:	41 89 e8             	mov    %ebp,%r8d
    14f2:	41 c1 f8 1f          	sar    $0x1f,%r8d
    14f6:	40 0f b6 ff          	movzbl %dil,%edi
    14fa:	45 29 c1             	sub    %r8d,%r9d
    14fd:	41 89 e8             	mov    %ebp,%r8d
    1500:	48 8d 6c 24 60       	lea    0x60(%rsp),%rbp
    1505:	45 6b c9 5d          	imul   $0x5d,%r9d,%r9d
    1509:	45 29 c8             	sub    %r9d,%r8d
    150c:	4c 63 c8             	movslq %eax,%r9
    150f:	4d 69 c9 c1 02 0b 2c 	imul   $0x2c0b02c1,%r9,%r9
    1516:	45 0f b6 c0          	movzbl %r8b,%r8d
    151a:	49 c1 f9 24          	sar    $0x24,%r9
    151e:	45 29 d1             	sub    %r10d,%r9d
    1521:	45 6b c9 5d          	imul   $0x5d,%r9d,%r9d
    1525:	44 29 c8             	sub    %r9d,%eax
    1528:	0f b6 c0             	movzbl %al,%eax
    152b:	c1 e0 08             	shl    $0x8,%eax
    152e:	44 09 c0             	or     %r8d,%eax
    1531:	c1 e0 08             	shl    $0x8,%eax
    1534:	09 f8                	or     %edi,%eax
    1536:	c1 e0 08             	shl    $0x8,%eax
    1539:	09 f0                	or     %esi,%eax
    153b:	66 0f 6e d0          	movd   %eax,%xmm2
    153f:	66 0f fc d0          	paddb  %xmm0,%xmm2
    1543:	66 0f 7e 54 24 38    	movd   %xmm2,0x38(%rsp)
    1549:	e8 42 fc ff ff       	call   1190 <rand@plt>
    154e:	89 c6                	mov    %eax,%esi
    1550:	48 98                	cltq                        ;convert long to quad
    1552:	48 69 c0 c1 02 0b 2c 	imul   $0x2c0b02c1,%rax,%rax
    1559:	89 f7                	mov    %esi,%edi
    155b:	c1 ff 1f             	sar    $0x1f,%edi
    155e:	48 c1 f8 24          	sar    $0x24,%rax
    1562:	29 f8                	sub    %edi,%eax
    1564:	6b c0 5d             	imul   $0x5d,%eax,%eax
    1567:	29 c6                	sub    %eax,%esi
    1569:	8d 46 21             	lea    0x21(%rsi),%eax
    156c:	88 44 24 04          	mov    %al,0x4(%rsp)
    1570:	e8 1b fc ff ff       	call   1190 <rand@plt>
    1575:	89 c6                	mov    %eax,%esi
    1577:	48 98                	cltq
    1579:	48 69 c0 c1 02 0b 2c 	imul   $0x2c0b02c1,%rax,%rax
    1580:	89 f7                	mov    %esi,%edi
    1582:	48 c1 f8 24          	sar    $0x24,%rax
    1586:	c1 ff 1f             	sar    $0x1f,%edi
    1589:	29 f8                	sub    %edi,%eax
    158b:	6b c0 5d             	imul   $0x5d,%eax,%eax
    158e:	29 c6                	sub    %eax,%esi
    1590:	8d 46 21             	lea    0x21(%rsi),%eax
    1593:	88 44 24 08          	mov    %al,0x8(%rsp)
    1597:	e8 f4 fb ff ff       	call   1190 <rand@plt>
    159c:	89 c6                	mov    %eax,%esi
    159e:	48 98                	cltq
    15a0:	48 69 c0 c1 02 0b 2c 	imul   $0x2c0b02c1,%rax,%rax
    15a7:	89 f7                	mov    %esi,%edi
    15a9:	c1 ff 1f             	sar    $0x1f,%edi
    15ac:	48 c1 f8 24          	sar    $0x24,%rax
    15b0:	29 f8                	sub    %edi,%eax
    15b2:	6b c0 5d             	imul   $0x5d,%eax,%eax
    15b5:	29 c6                	sub    %eax,%esi
    15b7:	8d 46 21             	lea    0x21(%rsi),%eax
    15ba:	88 44 24 0c          	mov    %al,0xc(%rsp)
    15be:	e8 cd fb ff ff       	call   1190 <rand@plt>
    15c3:	48 63 f0             	movslq %eax,%rsi
    15c6:	48 89 f7             	mov    %rsi,%rdi
    15c9:	48 c1 e7 1e          	shl    $0x1e,%rdi
    15cd:	48 01 f7             	add    %rsi,%rdi
    15d0:	89 c6                	mov    %eax,%esi
    15d2:	c1 fe 1f             	sar    $0x1f,%esi
    15d5:	48 c1 ff 3d          	sar    $0x3d,%rdi
    15d9:	29 f7                	sub    %esi,%edi
    15db:	89 fe                	mov    %edi,%esi
    15dd:	c1 e6 1f             	shl    $0x1f,%esi
    15e0:	29 fe                	sub    %edi,%esi
    15e2:	29 f0                	sub    %esi,%eax
    15e4:	89 44 24 10          	mov    %eax,0x10(%rsp)
    15e8:	e8 a3 fb ff ff       	call   1190 <rand@plt>
    15ed:	48 63 f0             	movslq %eax,%rsi
    15f0:	49 89 f4             	mov    %rsi,%r12
    15f3:	49 c1 e4 1e          	shl    $0x1e,%r12
    15f7:	49 01 f4             	add    %rsi,%r12
    15fa:	89 c6                	mov    %eax,%esi
    15fc:	c1 fe 1f             	sar    $0x1f,%esi
    15ff:	49 c1 fc 3d          	sar    $0x3d,%r12
    1603:	41 29 f4             	sub    %esi,%r12d
    1606:	44 89 e6             	mov    %r12d,%esi
    1609:	c1 e6 1f             	shl    $0x1f,%esi
    160c:	44 29 e6             	sub    %r12d,%esi
    160f:	29 f0                	sub    %esi,%eax
    1611:	41 89 c4             	mov    %eax,%r12d
    1614:	e8 77 fb ff ff       	call   1190 <rand@plt>
    1619:	48 63 f0             	movslq %eax,%rsi
    161c:	48 89 f7             	mov    %rsi,%rdi
    161f:	48 c1 e7 1e          	shl    $0x1e,%rdi
    1623:	48 01 f7             	add    %rsi,%rdi
    1626:	89 c6                	mov    %eax,%esi
    1628:	48 c1 ff 3d          	sar    $0x3d,%rdi
    162c:	c1 fe 1f             	sar    $0x1f,%esi
    162f:	29 f7                	sub    %esi,%edi
    1631:	89 fe                	mov    %edi,%esi
    1633:	c1 e6 1f             	shl    $0x1f,%esi
    1636:	29 fe                	sub    %edi,%esi
    1638:	29 f0                	sub    %esi,%eax
    163a:	41 89 c5             	mov    %eax,%r13d
    163d:	e8 4e fb ff ff       	call   1190 <rand@plt>
    1642:	48 63 f0             	movslq %eax,%rsi
    1645:	48 89 f7             	mov    %rsi,%rdi
    1648:	48 c1 e7 1e          	shl    $0x1e,%rdi
    164c:	48 01 f7             	add    %rsi,%rdi
    164f:	89 c6                	mov    %eax,%esi
    1651:	c1 fe 1f             	sar    $0x1f,%esi
    1654:	48 c1 ff 3d          	sar    $0x3d,%rdi
    1658:	29 f7                	sub    %esi,%edi
    165a:	89 fe                	mov    %edi,%esi
    165c:	c1 e6 1f             	shl    $0x1f,%esi
    165f:	29 fe                	sub    %edi,%esi
    1661:	29 f0                	sub    %esi,%eax
    1663:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
    1667:	e8 24 fb ff ff       	call   1190 <rand@plt>
    166c:	48 8d 3d d5 09 00 00 	lea    0x9d5(%rip),%rdi        # 2048 <rand@plt+0xeb8>
    1673:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1677:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    167b:	f3 0f 5e 05 81 09 00 	divss  0x981(%rip),%xmm0        # 2004 <rand@plt+0xe74>
    1682:	00 
    1683:	f3 0f 11 44 24 3c    	movss  %xmm0,0x3c(%rsp)
    1689:	e8 62 fa ff ff       	call   10f0 <puts@plt>
    168e:	48 63 44 24 18       	movslq 0x18(%rsp),%rax
    1693:	bf 02 00 00 00       	mov    $0x2,%edi
    1698:	48 89 c6             	mov    %rax,%rsi
    169b:	48 89 c1             	mov    %rax,%rcx
    169e:	48 c1 e6 1e          	shl    $0x1e,%rsi
    16a2:	48 01 c6             	add    %rax,%rsi
    16a5:	c1 f8 1f             	sar    $0x1f,%eax
    16a8:	48 c1 fe 3d          	sar    $0x3d,%rsi
    16ac:	29 c6                	sub    %eax,%esi
    16ae:	89 f0                	mov    %esi,%eax
    16b0:	c1 e0 1f             	shl    $0x1f,%eax
    16b3:	29 f0                	sub    %esi,%eax
    16b5:	49 63 f7             	movslq %r15d,%rsi
    16b8:	29 c1                	sub    %eax,%ecx
    16ba:	48 89 f0             	mov    %rsi,%rax
    16bd:	48 c1 e0 1e          	shl    $0x1e,%rax
    16c1:	48 01 f0             	add    %rsi,%rax
    16c4:	44 89 fe             	mov    %r15d,%esi
    16c7:	c1 fe 1f             	sar    $0x1f,%esi
    16ca:	48 c1 f8 3d          	sar    $0x3d,%rax
    16ce:	29 f0                	sub    %esi,%eax
    16d0:	89 c6                	mov    %eax,%esi
    16d2:	c1 e6 1f             	shl    $0x1f,%esi
    16d5:	29 c6                	sub    %eax,%esi
    16d7:	41 29 f7             	sub    %esi,%r15d
    16da:	48 8d 35 97 09 00 00 	lea    0x997(%rip),%rsi        # 2078 <rand@plt+0xee8>
    16e1:	41 31 cf             	xor    %ecx,%r15d
    16e4:	48 63 4c 24 14       	movslq 0x14(%rsp),%rcx
    16e9:	48 89 c8             	mov    %rcx,%rax
    16ec:	48 89 ca             	mov    %rcx,%rdx
    16ef:	48 c1 e0 1e          	shl    $0x1e,%rax
    16f3:	48 01 c8             	add    %rcx,%rax
    16f6:	c1 f9 1f             	sar    $0x1f,%ecx
    16f9:	48 c1 f8 3d          	sar    $0x3d,%rax
    16fd:	29 c8                	sub    %ecx,%eax
    16ff:	89 c1                	mov    %eax,%ecx
    1701:	c1 e1 1f             	shl    $0x1f,%ecx
    1704:	29 c1                	sub    %eax,%ecx
    1706:	29 ca                	sub    %ecx,%edx
    1708:	41 01 d7             	add    %edx,%r15d
    170b:	49 63 d6             	movslq %r14d,%rdx
    170e:	48 89 d0             	mov    %rdx,%rax
    1711:	48 c1 e0 1e          	shl    $0x1e,%rax
    1715:	48 01 d0             	add    %rdx,%rax
    1718:	44 89 f2             	mov    %r14d,%edx
    171b:	c1 fa 1f             	sar    $0x1f,%edx
    171e:	48 c1 f8 3d          	sar    $0x3d,%rax
    1722:	29 d0                	sub    %edx,%eax
    1724:	89 c2                	mov    %eax,%edx
    1726:	c1 e2 1f             	shl    $0x1f,%edx
    1729:	29 c2                	sub    %eax,%edx
    172b:	31 c0                	xor    %eax,%eax
    172d:	41 29 d6             	sub    %edx,%r14d
    1730:	e8 3b fa ff ff       	call   1170 <__printf_chk@plt>  ;primera llamada a printf
    1735:	45 31 f7             	xor    %r14d,%r15d
    1738:	be 64 00 00 00       	mov    $0x64,%esi
    173d:	48 89 ef             	mov    %rbp,%rdi
    1740:	48 8b 15 c9 28 00 00 	mov    0x28c9(%rip),%rdx        # 4010 <stdin@GLIBC_2.2.5>
    1747:	4c 8d 74 24 44       	lea    0x44(%rsp),%r14          ;load effectivxmm3e address.
    174c:	e8 df f9 ff ff       	call   1130 <fgets@plt>         ;primera llamada a fgets
    1751:	31 c0                	xor    %eax,%eax
    1753:	4c 89 f2             	mov    %r14,%rdx
    1756:	48 89 ef             	mov    %rbp,%rdi
    1759:	48 8d 35 c1 08 00 00 	lea    0x8c1(%rip),%rsi        # 2021 <rand@plt+0xe91>
    1760:	e8 fb f9 ff ff       	call   1160 <__isoc99_sscanf@plt>   ;primera llamada a sscanf
    1765:	83 f8 01             	cmp    $0x1,%eax                    ;valida que eax contenga 1 (cantidad de leidos por sscanf)
    1768:	0f 85 2d 02 00 00    	jne    199b <rand@plt+0x80b>        ;si sscanf no retorna exactamente 1, bifurca a 199b y finaliza el programa.
    176e:	44 39 7c 24 44       	cmp    %r15d,0x44(%rsp)             ;comparación de la respuesta ingresada (0x44(%rsp)) con la clave (%r15d)
    1773:	0f 85 22 02 00 00    	jne    199b <rand@plt+0x80b>
    1779:	48 8d 35 28 09 00 00 	lea    0x928(%rip),%rsi        # 20a8 <rand@plt+0xf18>
    1780:	bf 02 00 00 00       	mov    $0x2,%edi
    1785:	31 c0                	xor    %eax,%eax
    1787:	e8 e4 f9 ff ff       	call   1170 <__printf_chk@plt>      ;segunda llamada a printf
    178c:	48 8b 15 7d 28 00 00 	mov    0x287d(%rip),%rdx        # 4010 <stdin@GLIBC_2.2.5>
    1793:	be 64 00 00 00       	mov    $0x64,%esi
    1798:	48 89 ef             	mov    %rbp,%rdi
    179b:	4c 8d 3d 82 08 00 00 	lea    0x882(%rip),%r15        # 2024 <rand@plt+0xe94>
    17a2:	e8 89 f9 ff ff       	call   1130 <fgets@plt>             ;segunda llamada a fgets
    17a7:	31 c0                	xor    %eax,%eax
    17a9:	48 8d 54 24 48       	lea    0x48(%rsp),%rdx
    17ae:	4c 89 fe             	mov    %r15,%rsi
    17b1:	48 89 ef             	mov    %rbp,%rdi
    17b4:	e8 a7 f9 ff ff       	call   1160 <__isoc99_sscanf@plt>   ;segunda llamada a sscanf
    17b9:	83 f8 01             	cmp    $0x1,%eax                    ;valida que eax contenga 1 (cantidad de leidos por sscanf)
    17bc:	0f 85 d9 01 00 00    	jne    199b <rand@plt+0x80b>        ;si sscanf no retorna exactamente 1, bifurca a 199b y finaliza el programa.
    17c2:	f3 0f 10 5c 24 1c    	movss  0x1c(%rsp),%xmm3             ;comparación de la respuesta ingresada (0x1c(%rsp)) con la clave (%xmm3)
    17c8:	0f 2e 5c 24 48       	ucomiss 0x48(%rsp),%xmm3            ;ucomiss realiza la comparación de numeros float
    17cd:	0f 8a c8 01 00 00    	jp     199b <rand@plt+0x80b>
    17d3:	0f 85 c2 01 00 00    	jne    199b <rand@plt+0x80b>
    17d9:	8b 44 24 28          	mov    0x28(%rsp),%eax
    17dd:	48 8d 35 f4 08 00 00 	lea    0x8f4(%rip),%rsi        # 20d8 <rand@plt+0xf48>
    17e4:	bf 02 00 00 00       	mov    $0x2,%edi
    17e9:	31 c3                	xor    %eax,%ebx
    17eb:	8b 44 24 20          	mov    0x20(%rsp),%eax
    17ef:	01 c3                	add    %eax,%ebx
    17f1:	8b 44 24 24          	mov    0x24(%rsp),%eax
    17f5:	31 c3                	xor    %eax,%ebx
    17f7:	31 c0                	xor    %eax,%eax
    17f9:	e8 72 f9 ff ff       	call   1170 <__printf_chk@plt>  ;tercera llamada a printf
    17fe:	48 8b 15 0b 28 00 00 	mov    0x280b(%rip),%rdx        # 4010 <stdin@GLIBC_2.2.5>
    1805:	be 64 00 00 00       	mov    $0x64,%esi
    180a:	48 89 ef             	mov    %rbp,%rdi
    180d:	e8 1e f9 ff ff       	call   1130 <fgets@plt>         ;tercera llamada a fgets
    1812:	31 c0                	xor    %eax,%eax
    1814:	4c 89 f2             	mov    %r14,%rdx
    1817:	48 89 ef             	mov    %rbp,%rdi
    181a:	48 8d 35 00 08 00 00 	lea    0x800(%rip),%rsi        # 2021 <rand@plt+0xe91>
    1821:	e8 3a f9 ff ff       	call   1160 <__isoc99_sscanf@plt>   ;tercera llamada a sscanf
    1826:	83 f8 01             	cmp    $0x1,%eax
    1829:	0f 85 6c 01 00 00    	jne    199b <rand@plt+0x80b>
    182f:	39 5c 24 44          	cmp    %ebx,0x44(%rsp)              ;comparación de la respuesta ingresada (0x44(%rsp)) con la clave (%ebx)
    1833:	0f 85 62 01 00 00    	jne    199b <rand@plt+0x80b>
    1839:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    183e:	bf 02 00 00 00       	mov    $0x2,%edi
    1843:	c6 44 24 5f 00       	movb   $0x0,0x5f(%rsp)
    1848:	48 8d 35 b9 08 00 00 	lea    0x8b9(%rip),%rsi        # 2108 <rand@plt+0xf78>
    184f:	48 89 44 24 50       	mov    %rax,0x50(%rsp)    ;clave string inicio
    1854:	8b 44 24 38          	mov    0x38(%rsp),%eax
    1858:	89 44 24 58          	mov    %eax,0x58(%rsp)
    185c:	0f b6 44 24 04       	movzbl 0x4(%rsp),%eax
    1861:	88 44 24 5c          	mov    %al,0x5c(%rsp)
    1865:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
    186a:	88 44 24 5d          	mov    %al,0x5d(%rsp)
    186e:	0f b6 44 24 0c       	movzbl 0xc(%rsp),%eax
    1873:	88 44 24 5e          	mov    %al,0x5e(%rsp)    ;clave string fin
    1877:	31 c0                	xor    %eax,%eax
    1879:	e8 f2 f8 ff ff       	call   1170 <__printf_chk@plt>  ;cuarta llamada a printf
    187e:	48 8b 15 8b 27 00 00 	mov    0x278b(%rip),%rdx        # 4010 <stdin@GLIBC_2.2.5>
    1885:	be 64 00 00 00       	mov    $0x64,%esi
    188a:	48 89 ef             	mov    %rbp,%rdi
    188d:	e8 9e f8 ff ff       	call   1130 <fgets@plt>         ;cuarta llamada a fgets
    1892:	48 8d 35 8e 07 00 00 	lea    0x78e(%rip),%rsi        # 2027 <rand@plt+0xe97>
    1899:	48 89 ef             	mov    %rbp,%rdi
    189c:	e8 6f f8 ff ff       	call   1110 <strcspn@plt>
    18a1:	48 8d 74 24 50       	lea    0x50(%rsp),%rsi
    18a6:	48 89 ef             	mov    %rbp,%rdi
    18a9:	c6 44 04 60 00       	movb   $0x0,0x60(%rsp,%rax,1)
    18ae:	e8 8d f8 ff ff       	call   1140 <strcmp@plt>
    18b3:	85 c0                	test   %eax,%eax
    18b5:	0f 85 e0 00 00 00    	jne    199b <rand@plt+0x80b>
    18bb:	8b 5c 24 2c          	mov    0x2c(%rsp),%ebx
    18bf:	8b 44 24 10          	mov    0x10(%rsp),%eax
    18c3:	bf 02 00 00 00       	mov    $0x2,%edi
    18c8:	48 8d 35 69 08 00 00 	lea    0x869(%rip),%rsi        # 2138 <rand@plt+0xfa8>
    18cf:	31 d8                	xor    %ebx,%eax
    18d1:	44 01 e0             	add    %r12d,%eax
    18d4:	44 31 e8             	xor    %r13d,%eax
    18d7:	89 c3                	mov    %eax,%ebx
    18d9:	31 c0                	xor    %eax,%eax
    18db:	e8 90 f8 ff ff       	call   1170 <__printf_chk@plt>  ;quinta llamada a printf
    18e0:	48 8b 15 29 27 00 00 	mov    0x2729(%rip),%rdx        # 4010 <stdin@GLIBC_2.2.5>
    18e7:	be 64 00 00 00       	mov    $0x64,%esi
    18ec:	48 89 ef             	mov    %rbp,%rdi
    18ef:	e8 3c f8 ff ff       	call   1130 <fgets@plt>         ;quinta llamada a fgets
    18f4:	31 c0                	xor    %eax,%eax
    18f6:	4c 89 f2             	mov    %r14,%rdx
    18f9:	48 89 ef             	mov    %rbp,%rdi
    18fc:	48 8d 35 1e 07 00 00 	lea    0x71e(%rip),%rsi        # 2021 <rand@plt+0xe91>
    1903:	e8 58 f8 ff ff       	call   1160 <__isoc99_sscanf@plt>   ;quinta llamada a sscanf
    1908:	83 f8 01             	cmp    $0x1,%eax
    190b:	0f 85 8a 00 00 00    	jne    199b <rand@plt+0x80b>
    1911:	39 5c 24 44          	cmp    %ebx,0x44(%rsp)              ;comparación de la respuesta ingresada (0x44(%rsp)) con la clave (%ebx)
    1915:	0f 85 80 00 00 00    	jne    199b <rand@plt+0x80b>
    191b:	48 8d 35 46 08 00 00 	lea    0x846(%rip),%rsi        # 2168 <rand@plt+0xfd8>
    1922:	bf 02 00 00 00       	mov    $0x2,%edi
    1927:	31 c0                	xor    %eax,%eax
    1929:	e8 42 f8 ff ff       	call   1170 <__printf_chk@plt>  ;sexta llamada a printf
    192e:	48 8b 15 db 26 00 00 	mov    0x26db(%rip),%rdx        # 4010 <stdin@GLIBC_2.2.5>
    1935:	be 64 00 00 00       	mov    $0x64,%esi
    193a:	48 89 ef             	mov    %rbp,%rdi
    193d:	e8 ee f7 ff ff       	call   1130 <fgets@plt>         ;sexta llamada a fgets
    1942:	31 c0                	xor    %eax,%eax
    1944:	48 8d 54 24 4c       	lea    0x4c(%rsp),%rdx
    1949:	4c 89 fe             	mov    %r15,%rsi
    194c:	48 89 ef             	mov    %rbp,%rdi
    194f:	e8 0c f8 ff ff       	call   1160 <__isoc99_sscanf@plt>   ;sexta llamada a sscanf
    1954:	83 f8 01             	cmp    $0x1,%eax
    1957:	75 42                	jne    199b <rand@plt+0x80b>
    1959:	f3 0f 10 64 24 3c    	movss  0x3c(%rsp),%xmm4
    195f:	0f 2e 64 24 4c       	ucomiss 0x4c(%rsp),%xmm4            ;ucomiss realiza la comparación de numeros float
    1964:	7a 35                	jp     199b <rand@plt+0x80b>
    1966:	75 33                	jne    199b <rand@plt+0x80b>
    1968:	48 8d 3d ba 06 00 00 	lea    0x6ba(%rip),%rdi        # 2029 <rand@plt+0xe99>
    196f:	e8 7c f7 ff ff       	call   10f0 <puts@plt>
    1974:	48 8b 84 24 c8 00 00 	mov    0xc8(%rsp),%rax
    197b:	00 
    197c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1983:	00 00 
    1985:	75 1b                	jne    19a2 <rand@plt+0x812>
    1987:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
    198e:	31 c0                	xor    %eax,%eax
    1990:	5b                   	pop    %rbx
    1991:	5d                   	pop    %rbp
    1992:	41 5c                	pop    %r12
    1994:	41 5d                	pop    %r13
    1996:	41 5e                	pop    %r14
    1998:	41 5f                	pop    %r15
    199a:	c3                   	ret
    199b:	31 c0                	xor    %eax,%eax                    ;el programa bifurca a esta línea cuando ocurre un error o la clave no es correcta.
    199d:	e8 fe 00 00 00       	call   1aa0 <rand@plt+0x910>
    19a2:	e8 59 f7 ff ff       	call   1100 <__stack_chk_fail@plt>  ;llama a una función de seguridad para fallos por desbordamiento de pila.
    19a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    19ae:	00 00 
    19b0:	f3 0f 1e fa          	endbr64
    19b4:	31 ed                	xor    %ebp,%ebp
    19b6:	49 89 d1             	mov    %rdx,%r9
    19b9:	5e                   	pop    %rsi
    19ba:	48 89 e2             	mov    %rsp,%rdx
    19bd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    19c1:	50                   	push   %rax
    19c2:	54                   	push   %rsp
    19c3:	45 31 c0             	xor    %r8d,%r8d
    19c6:	31 c9                	xor    %ecx,%ecx
    19c8:	48 8d 3d d1 f7 ff ff 	lea    -0x82f(%rip),%rdi        # 11a0 <rand@plt+0x10>
    19cf:	ff 15 03 26 00 00    	call   *0x2603(%rip)        # 3fd8 <rand@plt+0x2e48>
    19d5:	f4                   	hlt
    19d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    19dd:	00 00 00 
    19e0:	48 8d 3d 29 26 00 00 	lea    0x2629(%rip),%rdi        # 4010 <stdin@GLIBC_2.2.5>
    19e7:	48 8d 05 22 26 00 00 	lea    0x2622(%rip),%rax        # 4010 <stdin@GLIBC_2.2.5>
    19ee:	48 39 f8             	cmp    %rdi,%rax
    19f1:	74 15                	je     1a08 <rand@plt+0x878>
    19f3:	48 8b 05 e6 25 00 00 	mov    0x25e6(%rip),%rax        # 3fe0 <rand@plt+0x2e50>
    19fa:	48 85 c0             	test   %rax,%rax
    19fd:	74 09                	je     1a08 <rand@plt+0x878>
    19ff:	ff e0                	jmp    *%rax
    1a01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a08:	c3                   	ret
    1a09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a10:	48 8d 3d f9 25 00 00 	lea    0x25f9(%rip),%rdi        # 4010 <stdin@GLIBC_2.2.5>
    1a17:	48 8d 35 f2 25 00 00 	lea    0x25f2(%rip),%rsi        # 4010 <stdin@GLIBC_2.2.5>
    1a1e:	48 29 fe             	sub    %rdi,%rsi
    1a21:	48 89 f0             	mov    %rsi,%rax
    1a24:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1a28:	48 c1 f8 03          	sar    $0x3,%rax
    1a2c:	48 01 c6             	add    %rax,%rsi
    1a2f:	48 d1 fe             	sar    $1,%rsi
    1a32:	74 14                	je     1a48 <rand@plt+0x8b8>
    1a34:	48 8b 05 b5 25 00 00 	mov    0x25b5(%rip),%rax        # 3ff0 <rand@plt+0x2e60>
    1a3b:	48 85 c0             	test   %rax,%rax
    1a3e:	74 08                	je     1a48 <rand@plt+0x8b8>
    1a40:	ff e0                	jmp    *%rax
    1a42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1a48:	c3                   	ret
    1a49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a50:	f3 0f 1e fa          	endbr64
    1a54:	80 3d bd 25 00 00 00 	cmpb   $0x0,0x25bd(%rip)        # 4018 <stdin@GLIBC_2.2.5+0x8>
    1a5b:	75 2b                	jne    1a88 <rand@plt+0x8f8>
    1a5d:	55                   	push   %rbp
    1a5e:	48 83 3d 92 25 00 00 	cmpq   $0x0,0x2592(%rip)        # 3ff8 <rand@plt+0x2e68>
    1a65:	00 
    1a66:	48 89 e5             	mov    %rsp,%rbp
    1a69:	74 0c                	je     1a77 <rand@plt+0x8e7>
    1a6b:	48 8b 3d 96 25 00 00 	mov    0x2596(%rip),%rdi        # 4008 <rand@plt+0x2e78>
    1a72:	e8 69 f6 ff ff       	call   10e0 <__cxa_finalize@plt>
    1a77:	e8 64 ff ff ff       	call   19e0 <rand@plt+0x850>
    1a7c:	c6 05 95 25 00 00 01 	movb   $0x1,0x2595(%rip)        # 4018 <stdin@GLIBC_2.2.5+0x8>
    1a83:	5d                   	pop    %rbp
    1a84:	c3                   	ret
    1a85:	0f 1f 00             	nopl   (%rax)
    1a88:	c3                   	ret
    1a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a90:	f3 0f 1e fa          	endbr64
    1a94:	e9 77 ff ff ff       	jmp    1a10 <rand@plt+0x880>
    1a99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1aa0:	f3 0f 1e fa          	endbr64
    1aa4:	50                   	push   %rax
    1aa5:	58                   	pop    %rax
    1aa6:	48 8d 3d 5b 05 00 00 	lea    0x55b(%rip),%rdi        # 2008 <rand@plt+0xe78>
    1aad:	48 83 ec 08          	sub    $0x8,%rsp
    1ab1:	e8 3a f6 ff ff       	call   10f0 <puts@plt>
    1ab6:	bf 01 00 00 00       	mov    $0x1,%edi
    1abb:	e8 c0 f6 ff ff       	call   1180 <exit@plt>

Desensamblado de la sección .fini:

0000000000001ac0 <.fini>:
    1ac0:	f3 0f 1e fa          	endbr64
    1ac4:	48 83 ec 08          	sub    $0x8,%rsp
    1ac8:	48 83 c4 08          	add    $0x8,%rsp
    1acc:	c3                   	ret
