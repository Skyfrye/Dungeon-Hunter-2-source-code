; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0010, declared_size=4, range_size=4, mode=arm
; class-group: CSAttack
; alias: _ZN8CSAttackD1Ev
; demangled: CSAttack::~CSAttack()
; decoder-mode: arm
003c0010  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0990, declared_size=52, range_size=52, mode=arm
; class-group: CSAttack
; alias: _ZN8CSAttackD0Ev
; demangled: CSAttack::~CSAttack()
; decoder-mode: arm
003c0990  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c0994  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c0998  10 40 2d e9                                      push {r4, lr}
003c099c  03 30 8f e0                                      add r3, pc, r3
003c09a0  02 20 93 e7                                      ldr r2, [r3, r2]
003c09a4  00 40 a0 e1                                      mov r4, r0
003c09a8  08 20 82 e2                                      add r2, r2, #8
003c09ac  00 20 80 e5                                      str r2, [r0]
003c09b0  a2 3e fd eb                                      bl #0x310440
003c09b4  04 00 a0 e1                                      mov r0, r4
003c09b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c09bc  f4 40 5d 00 08 2a 00 00                          .byte 0xf4, 0x40, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c1288, declared_size=624, range_size=624, mode=arm
; class-group: CSAttack
; alias: _ZN8CSAttack7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSAttack::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c1288  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c128c  20 30 9d e5                                      ldr r3, [sp, #0x20]
003c1290  34 42 9f e5                                      ldr r4, [pc, #0x234]
003c1294  02 50 a0 e1                                      mov r5, r2
003c1298  1a 00 53 e3                                      cmp r3, #0x1a
003c129c  04 40 8f e0                                      add r4, pc, r4
003c12a0  02 00 00 0a                                      beq #0x3c12b0
003c12a4  1c 00 53 e3                                      cmp r3, #0x1c
003c12a8  08 00 00 0a                                      beq #0x3c12d0
003c12ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003c12b0  08 04 92 e5                                      ldr r0, [r2, #0x408]
003c12b4  00 00 50 e3                                      cmp r0, #0
003c12b8  3b 00 00 0a                                      beq #0x3c13ac
003c12bc  c6 48 ff eb                                      bl #0x3935dc
003c12c0  00 10 a0 e1                                      mov r1, r0
003c12c4  05 00 a0 e1                                      mov r0, r5
003c12c8  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c12cc  86 4a ff ea                                      b #0x393cec
003c12d0  00 30 92 e5                                      ldr r3, [r2]
003c12d4  02 00 a0 e1                                      mov r0, r2
003c12d8  0f e0 a0 e1                                      mov lr, pc
003c12dc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c12e0  00 00 50 e3                                      cmp r0, #0
003c12e4  f0 ff ff 0a                                      beq #0x3c12ac
003c12e8  b5 31 d5 e5                                      ldrb r3, [r5, #0x1b5]
003c12ec  00 00 53 e3                                      cmp r3, #0
003c12f0  39 00 00 0a                                      beq #0x3c13dc
003c12f4  d4 71 9f e5                                      ldr r7, [pc, #0x1d4]
003c12f8  05 00 a0 e1                                      mov r0, r5
003c12fc  d0 61 9f e5                                      ldr r6, [pc, #0x1d0]
003c1300  07 30 94 e7                                      ldr r3, [r4, r7]
003c1304  49 8e 85 e2                                      add r8, r5, #0x490
003c1308  0c 80 88 e2                                      add r8, r8, #0xc
003c130c  00 a0 93 e5                                      ldr sl, [r3]
003c1310  c4 87 ff eb                                      bl #0x3a3228
003c1314  06 20 94 e7                                      ldr r2, [r4, r6]
003c1318  a0 30 a0 e3                                      mov r3, #0xa0
003c131c  93 a0 23 e0                                      mla r3, r3, r0, sl
003c1320  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
003c1324  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c1328  ac 21 9f e5                                      ldr r2, [pc, #0x1ac]
003c132c  01 10 8f e0                                      add r1, pc, r1
003c1330  04 a0 93 e5                                      ldr sl, [r3, #4]
003c1334  02 20 8f e0                                      add r2, pc, r2
003c1338  27 0e 04 eb                                      bl #0x4c4bdc
003c133c  40 20 10 e2                                      ands r2, r0, #0x40
003c1340  56 00 00 1a                                      bne #0x3c14a0
003c1344  07 30 94 e7                                      ldr r3, [r4, r7]
003c1348  05 00 a0 e1                                      mov r0, r5
003c134c  0a 70 82 e0                                      add r7, r2, sl
003c1350  00 a0 93 e5                                      ldr sl, [r3]
003c1354  b3 87 ff eb                                      bl #0x3a3228
003c1358  06 20 94 e7                                      ldr r2, [r4, r6]
003c135c  a0 30 a0 e3                                      mov r3, #0xa0
003c1360  93 a0 23 e0                                      mla r3, r3, r0, sl
003c1364  74 11 9f e5                                      ldr r1, [pc, #0x174]
003c1368  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c136c  70 21 9f e5                                      ldr r2, [pc, #0x170]
003c1370  01 10 8f e0                                      add r1, pc, r1
003c1374  08 40 93 e5                                      ldr r4, [r3, #8]
003c1378  02 20 8f e0                                      add r2, pc, r2
003c137c  16 0e 04 eb                                      bl #0x4c4bdc
003c1380  80 00 10 e2                                      ands r0, r0, #0x80
003c1384  42 00 00 1a                                      bne #0x3c1494
003c1388  04 20 80 e0                                      add r2, r0, r4
003c138c  07 10 a0 e1                                      mov r1, r7
003c1390  08 00 a0 e1                                      mov r0, r8
003c1394  4c 26 00 eb                                      bl #0x3caccc
003c1398  dc 02 95 e5                                      ldr r0, [r5, #0x2dc]
003c139c  00 00 50 e3                                      cmp r0, #0
003c13a0  c1 ff ff 0a                                      beq #0x3c12ac
003c13a4  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c13a8  cc b5 02 ea                                      b #0x46eae0
003c13ac  df 0f 82 e2                                      add r0, r2, #0x37c
003c13b0  fb fa 00 eb                                      bl #0x3fffa4
003c13b4  00 00 50 e3                                      cmp r0, #0
003c13b8  bb ff ff 0a                                      beq #0x3c12ac
003c13bc  b5 31 d5 e5                                      ldrb r3, [r5, #0x1b5]
003c13c0  00 00 53 e3                                      cmp r3, #0
003c13c4  b8 ff ff 0a                                      beq #0x3c12ac
003c13c8  05 00 a0 e1                                      mov r0, r5
003c13cc  6e 1f 85 e2                                      add r1, r5, #0x1b8
003c13d0  01 20 a0 e3                                      mov r2, #1
003c13d4  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c13d8  02 4a ff ea                                      b #0x393be8
003c13dc  ec 70 9f e5                                      ldr r7, [pc, #0xec]
003c13e0  05 00 a0 e1                                      mov r0, r5
003c13e4  e8 60 9f e5                                      ldr r6, [pc, #0xe8]
003c13e8  07 30 94 e7                                      ldr r3, [r4, r7]
003c13ec  49 8e 85 e2                                      add r8, r5, #0x490
003c13f0  0c 80 88 e2                                      add r8, r8, #0xc
003c13f4  00 a0 93 e5                                      ldr sl, [r3]
003c13f8  8a 87 ff eb                                      bl #0x3a3228
003c13fc  06 20 94 e7                                      ldr r2, [r4, r6]
003c1400  a0 30 a0 e3                                      mov r3, #0xa0
003c1404  93 a0 23 e0                                      mla r3, r3, r0, sl
003c1408  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
003c140c  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c1410  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
003c1414  01 10 8f e0                                      add r1, pc, r1
003c1418  08 a0 93 e5                                      ldr sl, [r3, #8]
003c141c  02 20 8f e0                                      add r2, pc, r2
003c1420  ed 0d 04 eb                                      bl #0x4c4bdc
003c1424  80 20 10 e2                                      ands r2, r0, #0x80
003c1428  23 00 00 1a                                      bne #0x3c14bc
003c142c  07 30 94 e7                                      ldr r3, [r4, r7]
003c1430  05 00 a0 e1                                      mov r0, r5
003c1434  0a 70 82 e0                                      add r7, r2, sl
003c1438  00 a0 93 e5                                      ldr sl, [r3]
003c143c  79 87 ff eb                                      bl #0x3a3228
003c1440  06 20 94 e7                                      ldr r2, [r4, r6]
003c1444  a0 30 a0 e3                                      mov r3, #0xa0
003c1448  93 a0 23 e0                                      mla r3, r3, r0, sl
003c144c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
003c1450  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c1454  98 20 9f e5                                      ldr r2, [pc, #0x98]
003c1458  01 10 8f e0                                      add r1, pc, r1
003c145c  04 40 93 e5                                      ldr r4, [r3, #4]
003c1460  02 20 8f e0                                      add r2, pc, r2
003c1464  dc 0d 04 eb                                      bl #0x4c4bdc
003c1468  40 00 10 e2                                      ands r0, r0, #0x40
003c146c  0f 00 00 1a                                      bne #0x3c14b0
003c1470  04 20 80 e0                                      add r2, r0, r4
003c1474  07 10 a0 e1                                      mov r1, r7
003c1478  08 00 a0 e1                                      mov r0, r8
003c147c  12 26 00 eb                                      bl #0x3caccc
003c1480  dc 02 95 e5                                      ldr r0, [r5, #0x2dc]
003c1484  00 00 50 e3                                      cmp r0, #0
003c1488  87 ff ff 0a                                      beq #0x3c12ac
003c148c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c1490  a2 b5 02 ea                                      b #0x46eb20
003c1494  05 00 a0 e1                                      mov r0, r5
003c1498  d0 8f ff eb                                      bl #0x3a53e0
003c149c  b9 ff ff ea                                      b #0x3c1388
003c14a0  05 00 a0 e1                                      mov r0, r5
003c14a4  cd 8f ff eb                                      bl #0x3a53e0
003c14a8  00 20 a0 e1                                      mov r2, r0
003c14ac  a4 ff ff ea                                      b #0x3c1344
003c14b0  05 00 a0 e1                                      mov r0, r5
003c14b4  c9 8f ff eb                                      bl #0x3a53e0
003c14b8  ec ff ff ea                                      b #0x3c1470
003c14bc  05 00 a0 e1                                      mov r0, r5
003c14c0  c6 8f ff eb                                      bl #0x3a53e0
003c14c4  00 20 a0 e1                                      mov r2, r0
003c14c8  d7 ff ff ea                                      b #0x3c142c
; mapping-symbol data/literal pool
003c14cc  f4 37 5d 00 44 48 00 00 f4 37 00 00 8c 38 50 00  .byte 0xf4, 0x37, 0x5d, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x8c, 0x38, 0x50, 0x00
003c14dc  94 38 50 00 48 38 50 00 50 38 50 00 a4 37 50 00  .byte 0x94, 0x38, 0x50, 0x00, 0x48, 0x38, 0x50, 0x00, 0x50, 0x38, 0x50, 0x00, 0xa4, 0x37, 0x50, 0x00
003c14ec  ac 37 50 00 60 37 50 00 68 37 50 00              .byte 0xac, 0x37, 0x50, 0x00, 0x60, 0x37, 0x50, 0x00, 0x68, 0x37, 0x50, 0x00

; FUNCTION 0x003c14f8, declared_size=96, range_size=96, mode=arm
; class-group: CSAttack
; alias: _ZN8CSAttack8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSAttack::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c14f8  70 40 2d e9                                      push {r4, r5, r6, lr}
003c14fc  08 14 92 e5                                      ldr r1, [r2, #0x408]
003c1500  02 40 a0 e1                                      mov r4, r2
003c1504  02 00 a0 e1                                      mov r0, r2
003c1508  0e 4a ff eb                                      bl #0x393d48
003c150c  56 0e 84 e2                                      add r0, r4, #0x560
003c1510  8d 74 00 eb                                      bl #0x3de74c
003c1514  00 10 a0 e1                                      mov r1, r0
003c1518  00 50 a0 e1                                      mov r5, r0
003c151c  2c 05 94 e5                                      ldr r0, [r4, #0x52c]
003c1520  a1 33 fd eb                                      bl #0x30e3ac
003c1524  17 17 0b e3                                      movw r1, #0xb717
003c1528  02 01 c0 e3                                      bic r0, r0, #0x80000000
003c152c  d1 18 43 e3                                      movt r1, #0x38d1
003c1530  75 34 fd eb                                      bl #0x30e70c
003c1534  00 00 50 e3                                      cmp r0, #0
003c1538  00 00 00 0a                                      beq #0x3c1540
003c153c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c1540  49 0e 84 e2                                      add r0, r4, #0x490
003c1544  0c 00 80 e2                                      add r0, r0, #0xc
003c1548  05 10 a0 e1                                      mov r1, r5
003c154c  2c 55 84 e5                                      str r5, [r4, #0x52c]
003c1550  70 40 bd e8                                      pop {r4, r5, r6, lr}
003c1554  a8 1f 00 ea                                      b #0x3c93fc

; FUNCTION 0x003c3f74, declared_size=216, range_size=216, mode=arm
; class-group: CSAttack
; alias: _ZN8CSAttack6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSAttack::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c3f74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c3f78  bc 40 9f e5                                      ldr r4, [pc, #0xbc]
003c3f7c  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
003c3f80  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
003c3f84  04 40 8f e0                                      add r4, pc, r4
003c3f88  06 30 94 e7                                      ldr r3, [r4, r6]
003c3f8c  01 80 94 e7                                      ldr r8, [r4, r1]
003c3f90  28 d0 4d e2                                      sub sp, sp, #0x28
003c3f94  00 30 93 e5                                      ldr r3, [r3]
003c3f98  08 00 a0 e1                                      mov r0, r8
003c3f9c  02 50 a0 e1                                      mov r5, r2
003c3fa0  24 30 8d e5                                      str r3, [sp, #0x24]
003c3fa4  37 ce fd eb                                      bl #0x337888
003c3fa8  98 10 9f e5                                      ldr r1, [pc, #0x98]
003c3fac  0c 70 8d e2                                      add r7, sp, #0xc
003c3fb0  08 20 8d e2                                      add r2, sp, #8
003c3fb4  01 10 8f e0                                      add r1, pc, r1
003c3fb8  07 00 a0 e1                                      mov r0, r7
003c3fbc  4a 40 fd eb                                      bl #0x3140ec
003c3fc0  07 10 a0 e1                                      mov r1, r7
003c3fc4  08 00 a0 e1                                      mov r0, r8
003c3fc8  ae ce fd eb                                      bl #0x337a88
003c3fcc  07 00 a0 e1                                      mov r0, r7
003c3fd0  9f 50 fd eb                                      bl #0x318254
003c3fd4  05 00 a0 e1                                      mov r0, r5
003c3fd8  16 7d ff eb                                      bl #0x3a3438
003c3fdc  00 00 50 e3                                      cmp r0, #0
003c3fe0  0a 00 00 1a                                      bne #0x3c4010
003c3fe4  dc 02 95 e5                                      ldr r0, [r5, #0x2dc]
003c3fe8  00 00 50 e3                                      cmp r0, #0
003c3fec  00 00 00 0a                                      beq #0x3c3ff4
003c3ff0  ca aa 02 eb                                      bl #0x46eb20
003c3ff4  06 30 94 e7                                      ldr r3, [r4, r6]
003c3ff8  24 20 9d e5                                      ldr r2, [sp, #0x24]
003c3ffc  00 30 93 e5                                      ldr r3, [r3]
003c4000  03 00 52 e1                                      cmp r2, r3
003c4004  0b 00 00 1a                                      bne #0x3c4038
003c4008  28 d0 8d e2                                      add sp, sp, #0x28
003c400c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c4010  05 00 a0 e1                                      mov r0, r5
003c4014  07 7d ff eb                                      bl #0x3a3438
003c4018  00 c0 a0 e3                                      mov ip, #0
003c401c  00 10 a0 e1                                      mov r1, r0
003c4020  0c 20 a0 e1                                      mov r2, ip
003c4024  ed 0f 85 e2                                      add r0, r5, #0x3b4
003c4028  2a 30 a0 e3                                      mov r3, #0x2a
003c402c  00 c0 8d e5                                      str ip, [sp]
003c4030  7b 5f 00 eb                                      bl #0x3dbe24
003c4034  ea ff ff ea                                      b #0x3c3fe4
003c4038  b4 28 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c403c  0c 0b 5d 00 ac 40 00 00 84 08 00 00 9c 0e 50 00  .byte 0x0c, 0x0b, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x9c, 0x0e, 0x50, 0x00

; FUNCTION 0x003c404c, declared_size=768, range_size=768, mode=arm
; class-group: CSAttack
; alias: _ZN8CSAttack7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSAttack::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c404c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c4050  b4 52 9f e5                                      ldr r5, [pc, #0x2b4]
003c4054  b4 72 9f e5                                      ldr r7, [pc, #0x2b4]
003c4058  b4 12 9f e5                                      ldr r1, [pc, #0x2b4]
003c405c  05 50 8f e0                                      add r5, pc, r5
003c4060  07 30 95 e7                                      ldr r3, [r5, r7]
003c4064  01 80 95 e7                                      ldr r8, [r5, r1]
003c4068  24 d0 4d e2                                      sub sp, sp, #0x24
003c406c  00 30 93 e5                                      ldr r3, [r3]
003c4070  08 00 a0 e1                                      mov r0, r8
003c4074  02 40 a0 e1                                      mov r4, r2
003c4078  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c407c  01 ce fd eb                                      bl #0x337888
003c4080  90 12 9f e5                                      ldr r1, [pc, #0x290]
003c4084  04 60 8d e2                                      add r6, sp, #4
003c4088  0d 20 a0 e1                                      mov r2, sp
003c408c  01 10 8f e0                                      add r1, pc, r1
003c4090  06 00 a0 e1                                      mov r0, r6
003c4094  14 40 fd eb                                      bl #0x3140ec
003c4098  06 10 a0 e1                                      mov r1, r6
003c409c  08 00 a0 e1                                      mov r0, r8
003c40a0  78 ce fd eb                                      bl #0x337a88
003c40a4  06 00 a0 e1                                      mov r0, r6
003c40a8  69 50 fd eb                                      bl #0x318254
003c40ac  41 33 02 e3                                      movw r3, #0x2341
003c40b0  20 35 84 e5                                      str r3, [r4, #0x520]
003c40b4  04 00 a0 e1                                      mov r0, r4
003c40b8  de 7c ff eb                                      bl #0x3a3438
003c40bc  00 00 50 e3                                      cmp r0, #0
003c40c0  28 35 94 15                                      ldrne r3, [r4, #0x528]
003c40c4  04 00 a0 e1                                      mov r0, r4
003c40c8  01 30 83 13                                      orrne r3, r3, #1
003c40cc  28 35 84 15                                      strne r3, [r4, #0x528]
003c40d0  00 30 94 e5                                      ldr r3, [r4]
003c40d4  0f e0 a0 e1                                      mov lr, pc
003c40d8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c40dc  00 00 50 e3                                      cmp r0, #0
003c40e0  37 00 00 0a                                      beq #0x3c41c4
003c40e4  40 30 9d e5                                      ldr r3, [sp, #0x40]
003c40e8  04 00 53 e3                                      cmp r3, #4
003c40ec  55 00 00 0a                                      beq #0x3c4248
003c40f0  24 82 9f e5                                      ldr r8, [pc, #0x224]
003c40f4  04 00 a0 e1                                      mov r0, r4
003c40f8  4a 7c ff eb                                      bl #0x3a3228
003c40fc  08 30 95 e7                                      ldr r3, [r5, r8]
003c4100  18 12 9f e5                                      ldr r1, [pc, #0x218]
003c4104  18 22 9f e5                                      ldr r2, [pc, #0x218]
003c4108  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003c410c  01 10 8f e0                                      add r1, pc, r1
003c4110  02 20 8f e0                                      add r2, pc, r2
003c4114  b0 02 04 eb                                      bl #0x4c4bdc
003c4118  80 00 10 e3                                      tst r0, #0x80
003c411c  46 00 00 1a                                      bne #0x3c423c
003c4120  00 32 9f e5                                      ldr r3, [pc, #0x200]
003c4124  04 00 a0 e1                                      mov r0, r4
003c4128  49 6e 84 e2                                      add r6, r4, #0x490
003c412c  03 30 95 e7                                      ldr r3, [r5, r3]
003c4130  0c 60 86 e2                                      add r6, r6, #0xc
003c4134  00 a0 93 e5                                      ldr sl, [r3]
003c4138  3a 7c ff eb                                      bl #0x3a3228
003c413c  08 20 95 e7                                      ldr r2, [r5, r8]
003c4140  a0 30 a0 e3                                      mov r3, #0xa0
003c4144  93 a0 23 e0                                      mla r3, r3, r0, sl
003c4148  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
003c414c  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c4150  d8 21 9f e5                                      ldr r2, [pc, #0x1d8]
003c4154  01 10 8f e0                                      add r1, pc, r1
003c4158  08 80 93 e5                                      ldr r8, [r3, #8]
003c415c  02 20 8f e0                                      add r2, pc, r2
003c4160  9d 02 04 eb                                      bl #0x4c4bdc
003c4164  80 00 10 e2                                      ands r0, r0, #0x80
003c4168  30 00 00 1a                                      bne #0x3c4230
003c416c  08 10 80 e0                                      add r1, r0, r8
003c4170  06 00 a0 e1                                      mov r0, r6
003c4174  cd 1a 00 eb                                      bl #0x3cacb0
003c4178  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
003c417c  00 00 50 e3                                      cmp r0, #0
003c4180  00 00 00 0a                                      beq #0x3c4188
003c4184  65 aa 02 eb                                      bl #0x46eb20
003c4188  56 0e 84 e2                                      add r0, r4, #0x560
003c418c  6e 69 00 eb                                      bl #0x3de74c
003c4190  00 10 a0 e1                                      mov r1, r0
003c4194  2c 05 84 e5                                      str r0, [r4, #0x52c]
003c4198  06 00 a0 e1                                      mov r0, r6
003c419c  96 14 00 eb                                      bl #0x3c93fc
003c41a0  04 00 a0 e1                                      mov r0, r4
003c41a4  43 e1 ff eb                                      bl #0x3bc6b8
003c41a8  07 30 95 e7                                      ldr r3, [r5, r7]
003c41ac  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c41b0  00 30 93 e5                                      ldr r3, [r3]
003c41b4  03 00 52 e1                                      cmp r2, r3
003c41b8  52 00 00 1a                                      bne #0x3c4308
003c41bc  24 d0 8d e2                                      add sp, sp, #0x24
003c41c0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c41c4  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
003c41c8  04 00 a0 e1                                      mov r0, r4
003c41cc  a0 60 a0 e3                                      mov r6, #0xa0
003c41d0  03 80 95 e7                                      ldr r8, [r5, r3]
003c41d4  00 a0 98 e5                                      ldr sl, [r8]
003c41d8  12 7c ff eb                                      bl #0x3a3228
003c41dc  96 a0 20 e0                                      mla r0, r6, r0, sl
003c41e0  08 30 90 e5                                      ldr r3, [r0, #8]
003c41e4  01 00 73 e3                                      cmn r3, #1
003c41e8  32 00 00 0a                                      beq #0x3c42b8
003c41ec  04 00 a0 e1                                      mov r0, r4
003c41f0  00 80 98 e5                                      ldr r8, [r8]
003c41f4  0b 7c ff eb                                      bl #0x3a3228
003c41f8  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
003c41fc  30 11 9f e5                                      ldr r1, [pc, #0x130]
003c4200  03 20 95 e7                                      ldr r2, [r5, r3]
003c4204  96 80 23 e0                                      mla r3, r6, r0, r8
003c4208  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c420c  24 21 9f e5                                      ldr r2, [pc, #0x124]
003c4210  01 10 8f e0                                      add r1, pc, r1
003c4214  08 80 93 e5                                      ldr r8, [r3, #8]
003c4218  02 20 8f e0                                      add r2, pc, r2
003c421c  6e 02 04 eb                                      bl #0x4c4bdc
003c4220  49 6e 84 e2                                      add r6, r4, #0x490
003c4224  80 00 10 e2                                      ands r0, r0, #0x80
003c4228  0c 60 86 e2                                      add r6, r6, #0xc
003c422c  ce ff ff 0a                                      beq #0x3c416c
003c4230  04 00 a0 e1                                      mov r0, r4
003c4234  69 84 ff eb                                      bl #0x3a53e0
003c4238  cb ff ff ea                                      b #0x3c416c
003c423c  04 00 a0 e1                                      mov r0, r4
003c4240  66 84 ff eb                                      bl #0x3a53e0
003c4244  b5 ff ff ea                                      b #0x3c4120
003c4248  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
003c424c  04 00 a0 e1                                      mov r0, r4
003c4250  49 6e 84 e2                                      add r6, r4, #0x490
003c4254  03 30 95 e7                                      ldr r3, [r5, r3]
003c4258  0c 60 86 e2                                      add r6, r6, #0xc
003c425c  00 80 93 e5                                      ldr r8, [r3]
003c4260  f0 7b ff eb                                      bl #0x3a3228
003c4264  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
003c4268  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
003c426c  03 20 95 e7                                      ldr r2, [r5, r3]
003c4270  a0 30 a0 e3                                      mov r3, #0xa0
003c4274  93 80 23 e0                                      mla r3, r3, r0, r8
003c4278  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c427c  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
003c4280  01 10 8f e0                                      add r1, pc, r1
003c4284  04 80 93 e5                                      ldr r8, [r3, #4]
003c4288  02 20 8f e0                                      add r2, pc, r2
003c428c  52 02 04 eb                                      bl #0x4c4bdc
003c4290  40 00 10 e2                                      ands r0, r0, #0x40
003c4294  18 00 00 1a                                      bne #0x3c42fc
003c4298  08 10 80 e0                                      add r1, r0, r8
003c429c  06 00 a0 e1                                      mov r0, r6
003c42a0  82 1a 00 eb                                      bl #0x3cacb0
003c42a4  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
003c42a8  00 00 50 e3                                      cmp r0, #0
003c42ac  b5 ff ff 0a                                      beq #0x3c4188
003c42b0  0a aa 02 eb                                      bl #0x46eae0
003c42b4  b3 ff ff ea                                      b #0x3c4188
003c42b8  04 00 a0 e1                                      mov r0, r4
003c42bc  00 80 98 e5                                      ldr r8, [r8]
003c42c0  d8 7b ff eb                                      bl #0x3a3228
003c42c4  50 30 9f e5                                      ldr r3, [pc, #0x50]
003c42c8  74 10 9f e5                                      ldr r1, [pc, #0x74]
003c42cc  03 20 95 e7                                      ldr r2, [r5, r3]
003c42d0  96 80 23 e0                                      mla r3, r6, r0, r8
003c42d4  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c42d8  68 20 9f e5                                      ldr r2, [pc, #0x68]
003c42dc  01 10 8f e0                                      add r1, pc, r1
003c42e0  04 80 93 e5                                      ldr r8, [r3, #4]
003c42e4  02 20 8f e0                                      add r2, pc, r2
003c42e8  3b 02 04 eb                                      bl #0x4c4bdc
003c42ec  49 6e 84 e2                                      add r6, r4, #0x490
003c42f0  40 00 10 e2                                      ands r0, r0, #0x40
003c42f4  0c 60 86 e2                                      add r6, r6, #0xc
003c42f8  e6 ff ff 0a                                      beq #0x3c4298
003c42fc  04 00 a0 e1                                      mov r0, r4
003c4300  36 84 ff eb                                      bl #0x3a53e0
003c4304  e3 ff ff ea                                      b #0x3c4298
003c4308  00 28 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c430c  34 0a 5d 00 ac 40 00 00 84 08 00 00 c4 0d 50 00  .byte 0x34, 0x0a, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0x0d, 0x50, 0x00
003c431c  f4 37 00 00 ac 0a 50 00 b8 0a 50 00 44 48 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xac, 0x0a, 0x50, 0x00, 0xb8, 0x0a, 0x50, 0x00, 0x44, 0x48, 0x00, 0x00
003c432c  64 0a 50 00 6c 0a 50 00 a8 09 50 00 b0 09 50 00  .byte 0x64, 0x0a, 0x50, 0x00, 0x6c, 0x0a, 0x50, 0x00, 0xa8, 0x09, 0x50, 0x00, 0xb0, 0x09, 0x50, 0x00
003c433c  38 09 50 00 40 09 50 00 dc 08 50 00 e4 08 50 00  .byte 0x38, 0x09, 0x50, 0x00, 0x40, 0x09, 0x50, 0x00, 0xdc, 0x08, 0x50, 0x00, 0xe4, 0x08, 0x50, 0x00

; FUNCTION 0x003c8284, declared_size=436, range_size=436, mode=arm
; class-group: CSAttack
; alias: _ZN8CSAttack6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSAttack::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c8284  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c8288  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c828c  0c 50 85 e2                                      add r5, r5, #0xc
003c8290  58 d0 4d e2                                      sub sp, sp, #0x58
003c8294  00 40 a0 e3                                      mov r4, #0
003c8298  01 60 a0 e1                                      mov r6, r1
003c829c  05 00 a0 e1                                      mov r0, r5
003c82a0  22 20 a0 e3                                      mov r2, #0x22
003c82a4  03 30 a0 e3                                      mov r3, #3
003c82a8  50 40 8d e5                                      str r4, [sp, #0x50]
003c82ac  54 40 8d e5                                      str r4, [sp, #0x54]
003c82b0  00 40 8d e5                                      str r4, [sp]
003c82b4  04 40 8d e5                                      str r4, [sp, #4]
003c82b8  16 fe ff eb                                      bl #0x3c7b18
003c82bc  05 00 a0 e1                                      mov r0, r5
003c82c0  06 10 a0 e1                                      mov r1, r6
003c82c4  58 23 0c e3                                      movw r2, #0xc358
003c82c8  0c 30 a0 e3                                      mov r3, #0xc
003c82cc  48 40 8d e5                                      str r4, [sp, #0x48]
003c82d0  4c 40 8d e5                                      str r4, [sp, #0x4c]
003c82d4  00 40 8d e5                                      str r4, [sp]
003c82d8  04 40 8d e5                                      str r4, [sp, #4]
003c82dc  0d fe ff eb                                      bl #0x3c7b18
003c82e0  05 00 a0 e1                                      mov r0, r5
003c82e4  06 10 a0 e1                                      mov r1, r6
003c82e8  55 23 0c e3                                      movw r2, #0xc355
003c82ec  06 30 a0 e3                                      mov r3, #6
003c82f0  40 40 8d e5                                      str r4, [sp, #0x40]
003c82f4  44 40 8d e5                                      str r4, [sp, #0x44]
003c82f8  00 40 8d e5                                      str r4, [sp]
003c82fc  04 40 8d e5                                      str r4, [sp, #4]
003c8300  20 81 9f e5                                      ldr r8, [pc, #0x120]
003c8304  03 fe ff eb                                      bl #0x3c7b18
003c8308  05 00 a0 e1                                      mov r0, r5
003c830c  06 10 a0 e1                                      mov r1, r6
003c8310  56 23 0c e3                                      movw r2, #0xc356
003c8314  07 30 a0 e3                                      mov r3, #7
003c8318  38 40 8d e5                                      str r4, [sp, #0x38]
003c831c  3c 40 8d e5                                      str r4, [sp, #0x3c]
003c8320  00 40 8d e5                                      str r4, [sp]
003c8324  04 40 8d e5                                      str r4, [sp, #4]
003c8328  fa fd ff eb                                      bl #0x3c7b18
003c832c  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
003c8330  08 80 8f e0                                      add r8, pc, r8
003c8334  05 00 a0 e1                                      mov r0, r5
003c8338  03 c0 98 e7                                      ldr ip, [r8, r3]
003c833c  06 10 a0 e1                                      mov r1, r6
003c8340  5a 23 0c e3                                      movw r2, #0xc35a
003c8344  0b 30 a0 e3                                      mov r3, #0xb
003c8348  00 c0 8d e5                                      str ip, [sp]
003c834c  30 c0 8d e5                                      str ip, [sp, #0x30]
003c8350  34 40 8d e5                                      str r4, [sp, #0x34]
003c8354  04 40 8d e5                                      str r4, [sp, #4]
003c8358  ee fd ff eb                                      bl #0x3c7b18
003c835c  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
003c8360  05 00 a0 e1                                      mov r0, r5
003c8364  06 10 a0 e1                                      mov r1, r6
003c8368  03 70 98 e7                                      ldr r7, [r8, r3]
003c836c  5b 23 0c e3                                      movw r2, #0xc35b
003c8370  0a 30 a0 e3                                      mov r3, #0xa
003c8374  28 70 8d e5                                      str r7, [sp, #0x28]
003c8378  2c 40 8d e5                                      str r4, [sp, #0x2c]
003c837c  00 70 8d e5                                      str r7, [sp]
003c8380  04 40 8d e5                                      str r4, [sp, #4]
003c8384  e3 fd ff eb                                      bl #0x3c7b18
003c8388  05 00 a0 e1                                      mov r0, r5
003c838c  06 10 a0 e1                                      mov r1, r6
003c8390  5c 23 0c e3                                      movw r2, #0xc35c
003c8394  09 30 a0 e3                                      mov r3, #9
003c8398  20 70 8d e5                                      str r7, [sp, #0x20]
003c839c  24 40 8d e5                                      str r4, [sp, #0x24]
003c83a0  00 70 8d e5                                      str r7, [sp]
003c83a4  04 40 8d e5                                      str r4, [sp, #4]
003c83a8  da fd ff eb                                      bl #0x3c7b18
003c83ac  05 00 a0 e1                                      mov r0, r5
003c83b0  06 10 a0 e1                                      mov r1, r6
003c83b4  5d 23 0c e3                                      movw r2, #0xc35d
003c83b8  08 30 a0 e3                                      mov r3, #8
003c83bc  00 70 8d e5                                      str r7, [sp]
003c83c0  18 70 8d e5                                      str r7, [sp, #0x18]
003c83c4  1c 40 8d e5                                      str r4, [sp, #0x1c]
003c83c8  04 40 8d e5                                      str r4, [sp, #4]
003c83cc  d1 fd ff eb                                      bl #0x3c7b18
003c83d0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003c83d4  05 00 a0 e1                                      mov r0, r5
003c83d8  06 10 a0 e1                                      mov r1, r6
003c83dc  03 c0 98 e7                                      ldr ip, [r8, r3]
003c83e0  51 23 0c e3                                      movw r2, #0xc351
003c83e4  04 30 a0 e3                                      mov r3, #4
003c83e8  00 c0 8d e5                                      str ip, [sp]
003c83ec  10 c0 8d e5                                      str ip, [sp, #0x10]
003c83f0  14 40 8d e5                                      str r4, [sp, #0x14]
003c83f4  04 40 8d e5                                      str r4, [sp, #4]
003c83f8  c6 fd ff eb                                      bl #0x3c7b18
003c83fc  05 00 a0 e1                                      mov r0, r5
003c8400  06 10 a0 e1                                      mov r1, r6
003c8404  57 23 0c e3                                      movw r2, #0xc357
003c8408  0f 30 a0 e3                                      mov r3, #0xf
003c840c  04 40 8d e5                                      str r4, [sp, #4]
003c8410  08 40 8d e5                                      str r4, [sp, #8]
003c8414  0c 40 8d e5                                      str r4, [sp, #0xc]
003c8418  00 40 8d e5                                      str r4, [sp]
003c841c  bd fd ff eb                                      bl #0x3c7b18
003c8420  58 d0 8d e2                                      add sp, sp, #0x58
003c8424  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003c8428  60 c7 5c 00 84 2e 00 00 cc 34 00 00 84 33 00 00  .byte 0x60, 0xc7, 0x5c, 0x00, 0x84, 0x2e, 0x00, 0x00, 0xcc, 0x34, 0x00, 0x00, 0x84, 0x33, 0x00, 0x00
