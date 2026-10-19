; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c56dc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncAddValue
; alias: _ZN7Structs17ClassFuncAddValueD2Ev
; demangled: Structs::ClassFuncAddValue::~ClassFuncAddValue()
; decoder-mode: arm
004c56dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56e0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncAddValue
; alias: _ZN7Structs17ClassFuncAddValueD1Ev
; demangled: Structs::ClassFuncAddValue::~ClassFuncAddValue()
; decoder-mode: arm
004c56e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56e4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncAddValue
; alias: _ZN7Structs17ClassFuncAddValue8finalizeEv
; demangled: Structs::ClassFuncAddValue::finalize()
; decoder-mode: arm
004c56e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cea58, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFuncAddValue
; alias: _ZN7Structs17ClassFuncAddValueD0Ev
; demangled: Structs::ClassFuncAddValue::~ClassFuncAddValue()
; decoder-mode: arm
004cea58  10 40 2d e9                                      push {r4, lr}
004cea5c  00 40 a0 e1                                      mov r4, r0
004cea60  1e db ff eb                                      bl #0x4c56e0
004cea64  04 00 a0 e1                                      mov r0, r4
004cea68  74 06 f9 eb                                      bl #0x310440
004cea6c  04 00 a0 e1                                      mov r0, r4
004cea70  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f124c, declared_size=484, range_size=484, mode=arm
; class-group: Structs::ClassFuncAddValue
; alias: _ZN7Structs17ClassFuncAddValue4readEP11IStreamBase
; demangled: Structs::ClassFuncAddValue::read(IStreamBase*)
; decoder-mode: arm
004f124c  30 40 2d e9                                      push {r4, r5, lr}
004f1250  00 40 a0 e1                                      mov r4, r0
004f1254  0c d0 4d e2                                      sub sp, sp, #0xc
004f1258  01 00 a0 e1                                      mov r0, r1
004f125c  01 50 a0 e1                                      mov r5, r1
004f1260  04 10 84 e2                                      add r1, r4, #4
004f1264  89 9f fd eb                                      bl #0x459090
004f1268  01 30 a0 e3                                      mov r3, #1
004f126c  00 00 53 e3                                      cmp r3, #0
004f1270  04 30 8d e5                                      str r3, [sp, #4]
004f1274  0f 00 00 1a                                      bne #0x4f12b8
004f1278  05 30 84 e2                                      add r3, r4, #5
004f127c  06 20 84 e2                                      add r2, r4, #6
004f1280  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1284  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1288  03 00 52 e1                                      cmp r2, r3
004f128c  01 10 20 e0                                      eor r1, r0, r1
004f1290  01 10 43 e5                                      strb r1, [r3, #-1]
004f1294  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1298  00 10 21 e0                                      eor r1, r1, r0
004f129c  01 10 c2 e5                                      strb r1, [r2, #1]
004f12a0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f12a4  01 20 42 e2                                      sub r2, r2, #1
004f12a8  00 10 21 e0                                      eor r1, r1, r0
004f12ac  01 10 43 e5                                      strb r1, [r3, #-1]
004f12b0  01 30 83 e2                                      add r3, r3, #1
004f12b4  f1 ff ff 8a                                      bhi #0x4f1280
004f12b8  05 00 a0 e1                                      mov r0, r5
004f12bc  08 10 84 e2                                      add r1, r4, #8
004f12c0  72 9f fd eb                                      bl #0x459090
004f12c4  01 30 a0 e3                                      mov r3, #1
004f12c8  00 00 53 e3                                      cmp r3, #0
004f12cc  04 30 8d e5                                      str r3, [sp, #4]
004f12d0  0f 00 00 1a                                      bne #0x4f1314
004f12d4  09 30 84 e2                                      add r3, r4, #9
004f12d8  0a 20 84 e2                                      add r2, r4, #0xa
004f12dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f12e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f12e4  03 00 52 e1                                      cmp r2, r3
004f12e8  01 10 20 e0                                      eor r1, r0, r1
004f12ec  01 10 43 e5                                      strb r1, [r3, #-1]
004f12f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f12f4  00 10 21 e0                                      eor r1, r1, r0
004f12f8  01 10 c2 e5                                      strb r1, [r2, #1]
004f12fc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1300  01 20 42 e2                                      sub r2, r2, #1
004f1304  00 10 21 e0                                      eor r1, r1, r0
004f1308  01 10 43 e5                                      strb r1, [r3, #-1]
004f130c  01 30 83 e2                                      add r3, r3, #1
004f1310  f1 ff ff 8a                                      bhi #0x4f12dc
004f1314  05 00 a0 e1                                      mov r0, r5
004f1318  0c 10 84 e2                                      add r1, r4, #0xc
004f131c  5b 9f fd eb                                      bl #0x459090
004f1320  01 30 a0 e3                                      mov r3, #1
004f1324  00 00 53 e3                                      cmp r3, #0
004f1328  04 30 8d e5                                      str r3, [sp, #4]
004f132c  0f 00 00 1a                                      bne #0x4f1370
004f1330  0d 30 84 e2                                      add r3, r4, #0xd
004f1334  0e 20 84 e2                                      add r2, r4, #0xe
004f1338  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f133c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1340  03 00 52 e1                                      cmp r2, r3
004f1344  01 10 20 e0                                      eor r1, r0, r1
004f1348  01 10 43 e5                                      strb r1, [r3, #-1]
004f134c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1350  00 10 21 e0                                      eor r1, r1, r0
004f1354  01 10 c2 e5                                      strb r1, [r2, #1]
004f1358  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f135c  01 20 42 e2                                      sub r2, r2, #1
004f1360  00 10 21 e0                                      eor r1, r1, r0
004f1364  01 10 43 e5                                      strb r1, [r3, #-1]
004f1368  01 30 83 e2                                      add r3, r3, #1
004f136c  f1 ff ff 8a                                      bhi #0x4f1338
004f1370  05 00 a0 e1                                      mov r0, r5
004f1374  10 10 84 e2                                      add r1, r4, #0x10
004f1378  44 9f fd eb                                      bl #0x459090
004f137c  01 30 a0 e3                                      mov r3, #1
004f1380  00 00 53 e3                                      cmp r3, #0
004f1384  04 30 8d e5                                      str r3, [sp, #4]
004f1388  0f 00 00 1a                                      bne #0x4f13cc
004f138c  11 30 84 e2                                      add r3, r4, #0x11
004f1390  12 20 84 e2                                      add r2, r4, #0x12
004f1394  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1398  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f139c  03 00 52 e1                                      cmp r2, r3
004f13a0  01 10 20 e0                                      eor r1, r0, r1
004f13a4  01 10 43 e5                                      strb r1, [r3, #-1]
004f13a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f13ac  00 10 21 e0                                      eor r1, r1, r0
004f13b0  01 10 c2 e5                                      strb r1, [r2, #1]
004f13b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f13b8  01 20 42 e2                                      sub r2, r2, #1
004f13bc  00 10 21 e0                                      eor r1, r1, r0
004f13c0  01 10 43 e5                                      strb r1, [r3, #-1]
004f13c4  01 30 83 e2                                      add r3, r3, #1
004f13c8  f1 ff ff 8a                                      bhi #0x4f1394
004f13cc  05 00 a0 e1                                      mov r0, r5
004f13d0  14 10 84 e2                                      add r1, r4, #0x14
004f13d4  2d 9f fd eb                                      bl #0x459090
004f13d8  01 30 a0 e3                                      mov r3, #1
004f13dc  00 00 53 e3                                      cmp r3, #0
004f13e0  04 30 8d e5                                      str r3, [sp, #4]
004f13e4  0f 00 00 1a                                      bne #0x4f1428
004f13e8  16 30 84 e2                                      add r3, r4, #0x16
004f13ec  15 40 84 e2                                      add r4, r4, #0x15
004f13f0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f13f4  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f13f8  04 00 53 e1                                      cmp r3, r4
004f13fc  02 20 21 e0                                      eor r2, r1, r2
004f1400  01 20 44 e5                                      strb r2, [r4, #-1]
004f1404  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1408  01 20 22 e0                                      eor r2, r2, r1
004f140c  01 20 c3 e5                                      strb r2, [r3, #1]
004f1410  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f1414  01 30 43 e2                                      sub r3, r3, #1
004f1418  01 20 22 e0                                      eor r2, r2, r1
004f141c  01 20 44 e5                                      strb r2, [r4, #-1]
004f1420  01 40 84 e2                                      add r4, r4, #1
004f1424  f1 ff ff 8a                                      bhi #0x4f13f0
004f1428  0c d0 8d e2                                      add sp, sp, #0xc
004f142c  30 80 bd e8                                      pop {r4, r5, pc}
