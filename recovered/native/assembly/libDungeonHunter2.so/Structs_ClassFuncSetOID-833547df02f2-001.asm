; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c56d0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncSetOID
; alias: _ZN7Structs15ClassFuncSetOIDD2Ev
; demangled: Structs::ClassFuncSetOID::~ClassFuncSetOID()
; decoder-mode: arm
004c56d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56d4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncSetOID
; alias: _ZN7Structs15ClassFuncSetOIDD1Ev
; demangled: Structs::ClassFuncSetOID::~ClassFuncSetOID()
; decoder-mode: arm
004c56d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56d8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncSetOID
; alias: _ZN7Structs15ClassFuncSetOID8finalizeEv
; demangled: Structs::ClassFuncSetOID::finalize()
; decoder-mode: arm
004c56d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cea74, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFuncSetOID
; alias: _ZN7Structs15ClassFuncSetOIDD0Ev
; demangled: Structs::ClassFuncSetOID::~ClassFuncSetOID()
; decoder-mode: arm
004cea74  10 40 2d e9                                      push {r4, lr}
004cea78  00 40 a0 e1                                      mov r4, r0
004cea7c  14 db ff eb                                      bl #0x4c56d4
004cea80  04 00 a0 e1                                      mov r0, r4
004cea84  6d 06 f9 eb                                      bl #0x310440
004cea88  04 00 a0 e1                                      mov r0, r4
004cea8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f1430, declared_size=484, range_size=484, mode=arm
; class-group: Structs::ClassFuncSetOID
; alias: _ZN7Structs15ClassFuncSetOID4readEP11IStreamBase
; demangled: Structs::ClassFuncSetOID::read(IStreamBase*)
; decoder-mode: arm
004f1430  30 40 2d e9                                      push {r4, r5, lr}
004f1434  00 40 a0 e1                                      mov r4, r0
004f1438  0c d0 4d e2                                      sub sp, sp, #0xc
004f143c  01 00 a0 e1                                      mov r0, r1
004f1440  01 50 a0 e1                                      mov r5, r1
004f1444  04 10 84 e2                                      add r1, r4, #4
004f1448  10 9f fd eb                                      bl #0x459090
004f144c  01 30 a0 e3                                      mov r3, #1
004f1450  00 00 53 e3                                      cmp r3, #0
004f1454  04 30 8d e5                                      str r3, [sp, #4]
004f1458  0f 00 00 1a                                      bne #0x4f149c
004f145c  05 30 84 e2                                      add r3, r4, #5
004f1460  06 20 84 e2                                      add r2, r4, #6
004f1464  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1468  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f146c  03 00 52 e1                                      cmp r2, r3
004f1470  01 10 20 e0                                      eor r1, r0, r1
004f1474  01 10 43 e5                                      strb r1, [r3, #-1]
004f1478  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f147c  00 10 21 e0                                      eor r1, r1, r0
004f1480  01 10 c2 e5                                      strb r1, [r2, #1]
004f1484  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1488  01 20 42 e2                                      sub r2, r2, #1
004f148c  00 10 21 e0                                      eor r1, r1, r0
004f1490  01 10 43 e5                                      strb r1, [r3, #-1]
004f1494  01 30 83 e2                                      add r3, r3, #1
004f1498  f1 ff ff 8a                                      bhi #0x4f1464
004f149c  05 00 a0 e1                                      mov r0, r5
004f14a0  08 10 84 e2                                      add r1, r4, #8
004f14a4  f9 9e fd eb                                      bl #0x459090
004f14a8  01 30 a0 e3                                      mov r3, #1
004f14ac  00 00 53 e3                                      cmp r3, #0
004f14b0  04 30 8d e5                                      str r3, [sp, #4]
004f14b4  0f 00 00 1a                                      bne #0x4f14f8
004f14b8  09 30 84 e2                                      add r3, r4, #9
004f14bc  0a 20 84 e2                                      add r2, r4, #0xa
004f14c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f14c4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f14c8  03 00 52 e1                                      cmp r2, r3
004f14cc  01 10 20 e0                                      eor r1, r0, r1
004f14d0  01 10 43 e5                                      strb r1, [r3, #-1]
004f14d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f14d8  00 10 21 e0                                      eor r1, r1, r0
004f14dc  01 10 c2 e5                                      strb r1, [r2, #1]
004f14e0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f14e4  01 20 42 e2                                      sub r2, r2, #1
004f14e8  00 10 21 e0                                      eor r1, r1, r0
004f14ec  01 10 43 e5                                      strb r1, [r3, #-1]
004f14f0  01 30 83 e2                                      add r3, r3, #1
004f14f4  f1 ff ff 8a                                      bhi #0x4f14c0
004f14f8  05 00 a0 e1                                      mov r0, r5
004f14fc  0c 10 84 e2                                      add r1, r4, #0xc
004f1500  e2 9e fd eb                                      bl #0x459090
004f1504  01 30 a0 e3                                      mov r3, #1
004f1508  00 00 53 e3                                      cmp r3, #0
004f150c  04 30 8d e5                                      str r3, [sp, #4]
004f1510  0f 00 00 1a                                      bne #0x4f1554
004f1514  0d 30 84 e2                                      add r3, r4, #0xd
004f1518  0e 20 84 e2                                      add r2, r4, #0xe
004f151c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1520  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1524  03 00 52 e1                                      cmp r2, r3
004f1528  01 10 20 e0                                      eor r1, r0, r1
004f152c  01 10 43 e5                                      strb r1, [r3, #-1]
004f1530  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1534  00 10 21 e0                                      eor r1, r1, r0
004f1538  01 10 c2 e5                                      strb r1, [r2, #1]
004f153c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1540  01 20 42 e2                                      sub r2, r2, #1
004f1544  00 10 21 e0                                      eor r1, r1, r0
004f1548  01 10 43 e5                                      strb r1, [r3, #-1]
004f154c  01 30 83 e2                                      add r3, r3, #1
004f1550  f1 ff ff 8a                                      bhi #0x4f151c
004f1554  05 00 a0 e1                                      mov r0, r5
004f1558  10 10 84 e2                                      add r1, r4, #0x10
004f155c  cb 9e fd eb                                      bl #0x459090
004f1560  01 30 a0 e3                                      mov r3, #1
004f1564  00 00 53 e3                                      cmp r3, #0
004f1568  04 30 8d e5                                      str r3, [sp, #4]
004f156c  0f 00 00 1a                                      bne #0x4f15b0
004f1570  11 30 84 e2                                      add r3, r4, #0x11
004f1574  12 20 84 e2                                      add r2, r4, #0x12
004f1578  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f157c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1580  03 00 52 e1                                      cmp r2, r3
004f1584  01 10 20 e0                                      eor r1, r0, r1
004f1588  01 10 43 e5                                      strb r1, [r3, #-1]
004f158c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1590  00 10 21 e0                                      eor r1, r1, r0
004f1594  01 10 c2 e5                                      strb r1, [r2, #1]
004f1598  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f159c  01 20 42 e2                                      sub r2, r2, #1
004f15a0  00 10 21 e0                                      eor r1, r1, r0
004f15a4  01 10 43 e5                                      strb r1, [r3, #-1]
004f15a8  01 30 83 e2                                      add r3, r3, #1
004f15ac  f1 ff ff 8a                                      bhi #0x4f1578
004f15b0  05 00 a0 e1                                      mov r0, r5
004f15b4  14 10 84 e2                                      add r1, r4, #0x14
004f15b8  b4 9e fd eb                                      bl #0x459090
004f15bc  01 30 a0 e3                                      mov r3, #1
004f15c0  00 00 53 e3                                      cmp r3, #0
004f15c4  04 30 8d e5                                      str r3, [sp, #4]
004f15c8  0f 00 00 1a                                      bne #0x4f160c
004f15cc  16 30 84 e2                                      add r3, r4, #0x16
004f15d0  15 40 84 e2                                      add r4, r4, #0x15
004f15d4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f15d8  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f15dc  04 00 53 e1                                      cmp r3, r4
004f15e0  02 20 21 e0                                      eor r2, r1, r2
004f15e4  01 20 44 e5                                      strb r2, [r4, #-1]
004f15e8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f15ec  01 20 22 e0                                      eor r2, r2, r1
004f15f0  01 20 c3 e5                                      strb r2, [r3, #1]
004f15f4  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f15f8  01 30 43 e2                                      sub r3, r3, #1
004f15fc  01 20 22 e0                                      eor r2, r2, r1
004f1600  01 20 44 e5                                      strb r2, [r4, #-1]
004f1604  01 40 84 e2                                      add r4, r4, #1
004f1608  f1 ff ff 8a                                      bhi #0x4f15d4
004f160c  0c d0 8d e2                                      add sp, sp, #0xc
004f1610  30 80 bd e8                                      pop {r4, r5, pc}
