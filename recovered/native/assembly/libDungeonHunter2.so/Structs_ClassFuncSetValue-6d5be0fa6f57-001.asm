; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c56c4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncSetValue
; alias: _ZN7Structs17ClassFuncSetValueD2Ev
; demangled: Structs::ClassFuncSetValue::~ClassFuncSetValue()
; decoder-mode: arm
004c56c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56c8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncSetValue
; alias: _ZN7Structs17ClassFuncSetValueD1Ev
; demangled: Structs::ClassFuncSetValue::~ClassFuncSetValue()
; decoder-mode: arm
004c56c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56cc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncSetValue
; alias: _ZN7Structs17ClassFuncSetValue8finalizeEv
; demangled: Structs::ClassFuncSetValue::finalize()
; decoder-mode: arm
004c56cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cea90, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFuncSetValue
; alias: _ZN7Structs17ClassFuncSetValueD0Ev
; demangled: Structs::ClassFuncSetValue::~ClassFuncSetValue()
; decoder-mode: arm
004cea90  10 40 2d e9                                      push {r4, lr}
004cea94  00 40 a0 e1                                      mov r4, r0
004cea98  0a db ff eb                                      bl #0x4c56c8
004cea9c  04 00 a0 e1                                      mov r0, r4
004ceaa0  66 06 f9 eb                                      bl #0x310440
004ceaa4  04 00 a0 e1                                      mov r0, r4
004ceaa8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f1614, declared_size=484, range_size=484, mode=arm
; class-group: Structs::ClassFuncSetValue
; alias: _ZN7Structs17ClassFuncSetValue4readEP11IStreamBase
; demangled: Structs::ClassFuncSetValue::read(IStreamBase*)
; decoder-mode: arm
004f1614  30 40 2d e9                                      push {r4, r5, lr}
004f1618  00 40 a0 e1                                      mov r4, r0
004f161c  0c d0 4d e2                                      sub sp, sp, #0xc
004f1620  01 00 a0 e1                                      mov r0, r1
004f1624  01 50 a0 e1                                      mov r5, r1
004f1628  04 10 84 e2                                      add r1, r4, #4
004f162c  97 9e fd eb                                      bl #0x459090
004f1630  01 30 a0 e3                                      mov r3, #1
004f1634  00 00 53 e3                                      cmp r3, #0
004f1638  04 30 8d e5                                      str r3, [sp, #4]
004f163c  0f 00 00 1a                                      bne #0x4f1680
004f1640  05 30 84 e2                                      add r3, r4, #5
004f1644  06 20 84 e2                                      add r2, r4, #6
004f1648  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f164c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1650  03 00 52 e1                                      cmp r2, r3
004f1654  01 10 20 e0                                      eor r1, r0, r1
004f1658  01 10 43 e5                                      strb r1, [r3, #-1]
004f165c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1660  00 10 21 e0                                      eor r1, r1, r0
004f1664  01 10 c2 e5                                      strb r1, [r2, #1]
004f1668  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f166c  01 20 42 e2                                      sub r2, r2, #1
004f1670  00 10 21 e0                                      eor r1, r1, r0
004f1674  01 10 43 e5                                      strb r1, [r3, #-1]
004f1678  01 30 83 e2                                      add r3, r3, #1
004f167c  f1 ff ff 8a                                      bhi #0x4f1648
004f1680  05 00 a0 e1                                      mov r0, r5
004f1684  08 10 84 e2                                      add r1, r4, #8
004f1688  80 9e fd eb                                      bl #0x459090
004f168c  01 30 a0 e3                                      mov r3, #1
004f1690  00 00 53 e3                                      cmp r3, #0
004f1694  04 30 8d e5                                      str r3, [sp, #4]
004f1698  0f 00 00 1a                                      bne #0x4f16dc
004f169c  09 30 84 e2                                      add r3, r4, #9
004f16a0  0a 20 84 e2                                      add r2, r4, #0xa
004f16a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f16a8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f16ac  03 00 52 e1                                      cmp r2, r3
004f16b0  01 10 20 e0                                      eor r1, r0, r1
004f16b4  01 10 43 e5                                      strb r1, [r3, #-1]
004f16b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f16bc  00 10 21 e0                                      eor r1, r1, r0
004f16c0  01 10 c2 e5                                      strb r1, [r2, #1]
004f16c4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f16c8  01 20 42 e2                                      sub r2, r2, #1
004f16cc  00 10 21 e0                                      eor r1, r1, r0
004f16d0  01 10 43 e5                                      strb r1, [r3, #-1]
004f16d4  01 30 83 e2                                      add r3, r3, #1
004f16d8  f1 ff ff 8a                                      bhi #0x4f16a4
004f16dc  05 00 a0 e1                                      mov r0, r5
004f16e0  0c 10 84 e2                                      add r1, r4, #0xc
004f16e4  69 9e fd eb                                      bl #0x459090
004f16e8  01 30 a0 e3                                      mov r3, #1
004f16ec  00 00 53 e3                                      cmp r3, #0
004f16f0  04 30 8d e5                                      str r3, [sp, #4]
004f16f4  0f 00 00 1a                                      bne #0x4f1738
004f16f8  0d 30 84 e2                                      add r3, r4, #0xd
004f16fc  0e 20 84 e2                                      add r2, r4, #0xe
004f1700  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1704  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1708  03 00 52 e1                                      cmp r2, r3
004f170c  01 10 20 e0                                      eor r1, r0, r1
004f1710  01 10 43 e5                                      strb r1, [r3, #-1]
004f1714  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1718  00 10 21 e0                                      eor r1, r1, r0
004f171c  01 10 c2 e5                                      strb r1, [r2, #1]
004f1720  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1724  01 20 42 e2                                      sub r2, r2, #1
004f1728  00 10 21 e0                                      eor r1, r1, r0
004f172c  01 10 43 e5                                      strb r1, [r3, #-1]
004f1730  01 30 83 e2                                      add r3, r3, #1
004f1734  f1 ff ff 8a                                      bhi #0x4f1700
004f1738  05 00 a0 e1                                      mov r0, r5
004f173c  10 10 84 e2                                      add r1, r4, #0x10
004f1740  52 9e fd eb                                      bl #0x459090
004f1744  01 30 a0 e3                                      mov r3, #1
004f1748  00 00 53 e3                                      cmp r3, #0
004f174c  04 30 8d e5                                      str r3, [sp, #4]
004f1750  0f 00 00 1a                                      bne #0x4f1794
004f1754  11 30 84 e2                                      add r3, r4, #0x11
004f1758  12 20 84 e2                                      add r2, r4, #0x12
004f175c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1760  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1764  03 00 52 e1                                      cmp r2, r3
004f1768  01 10 20 e0                                      eor r1, r0, r1
004f176c  01 10 43 e5                                      strb r1, [r3, #-1]
004f1770  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1774  00 10 21 e0                                      eor r1, r1, r0
004f1778  01 10 c2 e5                                      strb r1, [r2, #1]
004f177c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1780  01 20 42 e2                                      sub r2, r2, #1
004f1784  00 10 21 e0                                      eor r1, r1, r0
004f1788  01 10 43 e5                                      strb r1, [r3, #-1]
004f178c  01 30 83 e2                                      add r3, r3, #1
004f1790  f1 ff ff 8a                                      bhi #0x4f175c
004f1794  05 00 a0 e1                                      mov r0, r5
004f1798  14 10 84 e2                                      add r1, r4, #0x14
004f179c  3b 9e fd eb                                      bl #0x459090
004f17a0  01 30 a0 e3                                      mov r3, #1
004f17a4  00 00 53 e3                                      cmp r3, #0
004f17a8  04 30 8d e5                                      str r3, [sp, #4]
004f17ac  0f 00 00 1a                                      bne #0x4f17f0
004f17b0  16 30 84 e2                                      add r3, r4, #0x16
004f17b4  15 40 84 e2                                      add r4, r4, #0x15
004f17b8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f17bc  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f17c0  04 00 53 e1                                      cmp r3, r4
004f17c4  02 20 21 e0                                      eor r2, r1, r2
004f17c8  01 20 44 e5                                      strb r2, [r4, #-1]
004f17cc  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f17d0  01 20 22 e0                                      eor r2, r2, r1
004f17d4  01 20 c3 e5                                      strb r2, [r3, #1]
004f17d8  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f17dc  01 30 43 e2                                      sub r3, r3, #1
004f17e0  01 20 22 e0                                      eor r2, r2, r1
004f17e4  01 20 44 e5                                      strb r2, [r4, #-1]
004f17e8  01 40 84 e2                                      add r4, r4, #1
004f17ec  f1 ff ff 8a                                      bhi #0x4f17b8
004f17f0  0c d0 8d e2                                      add sp, sp, #0xc
004f17f4  30 80 bd e8                                      pop {r4, r5, pc}
