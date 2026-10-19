; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038c900, declared_size=104, range_size=104, mode=arm
; class-group: ObjectSearcher::BackupObjectList
; alias: _ZN14ObjectSearcher16BackupObjectListD1Ev
; demangled: ObjectSearcher::BackupObjectList::~BackupObjectList()
; decoder-mode: arm
0038c900  58 30 9f e5                                      ldr r3, [pc, #0x58]
0038c904  58 20 9f e5                                      ldr r2, [pc, #0x58]
0038c908  70 40 2d e9                                      push {r4, r5, r6, lr}
0038c90c  03 30 8f e0                                      add r3, pc, r3
0038c910  02 20 93 e7                                      ldr r2, [r3, r2]
0038c914  00 50 a0 e1                                      mov r5, r0
0038c918  00 40 a0 e1                                      mov r4, r0
0038c91c  08 20 82 e2                                      add r2, r2, #8
0038c920  04 20 85 e4                                      str r2, [r5], #4
0038c924  33 54 04 eb                                      bl #0x4a19f8
0038c928  04 00 94 e5                                      ldr r0, [r4, #4]
0038c92c  00 00 50 e3                                      cmp r0, #0
0038c930  05 00 00 0a                                      beq #0x38c94c
0038c934  08 10 95 e5                                      ldr r1, [r5, #8]
0038c938  01 10 60 e0                                      rsb r1, r0, r1
0038c93c  03 10 c1 e3                                      bic r1, r1, #3
0038c940  80 00 51 e3                                      cmp r1, #0x80
0038c944  02 00 00 8a                                      bhi #0x38c954
0038c948  6c f1 0d eb                                      bl #0x708f00
0038c94c  04 00 a0 e1                                      mov r0, r4
0038c950  70 80 bd e8                                      pop {r4, r5, r6, pc}
0038c954  b9 0e fe eb                                      bl #0x310440
0038c958  04 00 a0 e1                                      mov r0, r4
0038c95c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0038c960  84 81 60 00 60 1a 00 00                          .byte 0x84, 0x81, 0x60, 0x00, 0x60, 0x1a, 0x00, 0x00

; FUNCTION 0x004a184c, declared_size=16, range_size=16, mode=arm
; class-group: ObjectSearcher::BackupObjectList
; alias: _ZN14ObjectSearcher16BackupObjectList5ResetEv
; demangled: ObjectSearcher::BackupObjectList::Reset()
; decoder-mode: arm
004a184c  0c 00 90 e9                                      ldmib r0, {r2, r3}
004a1850  10 20 80 e5                                      str r2, [r0, #0x10]
004a1854  14 30 80 e5                                      str r3, [r0, #0x14]
004a1858  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a185c, declared_size=24, range_size=24, mode=arm
; class-group: ObjectSearcher::BackupObjectList
; alias: _ZN14ObjectSearcher16BackupObjectList5AtEndEv
; demangled: ObjectSearcher::BackupObjectList::AtEnd()
; decoder-mode: arm
004a185c  14 30 90 e5                                      ldr r3, [r0, #0x14]
004a1860  10 00 90 e5                                      ldr r0, [r0, #0x10]
004a1864  03 00 50 e1                                      cmp r0, r3
004a1868  00 00 a0 13                                      movne r0, #0
004a186c  01 00 a0 03                                      moveq r0, #1
004a1870  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a1874, declared_size=16, range_size=16, mode=arm
; class-group: ObjectSearcher::BackupObjectList
; alias: _ZN14ObjectSearcher16BackupObjectList4NextEv
; demangled: ObjectSearcher::BackupObjectList::Next()
; decoder-mode: arm
004a1874  10 30 90 e5                                      ldr r3, [r0, #0x10]
004a1878  04 30 83 e2                                      add r3, r3, #4
004a187c  10 30 80 e5                                      str r3, [r0, #0x10]
004a1880  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a1884, declared_size=20, range_size=20, mode=arm
; class-group: ObjectSearcher::BackupObjectList
; alias: _ZN14ObjectSearcher16BackupObjectList4SizeEv
; demangled: ObjectSearcher::BackupObjectList::Size()
; decoder-mode: arm
004a1884  04 30 90 e5                                      ldr r3, [r0, #4]
004a1888  08 00 90 e5                                      ldr r0, [r0, #8]
004a188c  00 00 63 e0                                      rsb r0, r3, r0
004a1890  40 01 a0 e1                                      asr r0, r0, #2
004a1894  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a1898, declared_size=12, range_size=12, mode=arm
; class-group: ObjectSearcher::BackupObjectList
; alias: _ZN14ObjectSearcher16BackupObjectList3GetEv
; demangled: ObjectSearcher::BackupObjectList::Get()
; decoder-mode: arm
004a1898  10 30 90 e5                                      ldr r3, [r0, #0x10]
004a189c  00 00 93 e5                                      ldr r0, [r3]
004a18a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a19f8, declared_size=64, range_size=64, mode=arm
; class-group: ObjectSearcher::BackupObjectList
; alias: _ZN14ObjectSearcher16BackupObjectList6_ClearEv
; demangled: ObjectSearcher::BackupObjectList::_Clear()
; decoder-mode: arm
004a19f8  08 10 90 e9                                      ldmib r0, {r3, ip}
004a19fc  0c 00 53 e1                                      cmp r3, ip
004a1a00  1e ff 2f 01                                      bxeq lr
004a1a04  00 20 93 e5                                      ldr r2, [r3]
004a1a08  04 30 83 e2                                      add r3, r3, #4
004a1a0c  29 10 d2 e5                                      ldrb r1, [r2, #0x29]
004a1a10  00 00 51 e3                                      cmp r1, #0
004a1a14  01 10 41 12                                      subne r1, r1, #1
004a1a18  29 10 c2 15                                      strbne r1, [r2, #0x29]
004a1a1c  0c 00 53 e1                                      cmp r3, ip
004a1a20  f7 ff ff 1a                                      bne #0x4a1a04
004a1a24  04 30 90 e5                                      ldr r3, [r0, #4]
004a1a28  08 20 90 e5                                      ldr r2, [r0, #8]
004a1a2c  02 00 53 e1                                      cmp r3, r2
004a1a30  08 30 80 15                                      strne r3, [r0, #8]
004a1a34  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a1cc8, declared_size=52, range_size=52, mode=arm
; class-group: ObjectSearcher::BackupObjectList
; alias: _ZN14ObjectSearcher16BackupObjectList7GetCharEv
; demangled: ObjectSearcher::BackupObjectList::GetChar()
; decoder-mode: arm
004a1cc8  10 40 2d e9                                      push {r4, lr}
004a1ccc  10 d0 4d e2                                      sub sp, sp, #0x10
004a1cd0  00 30 90 e5                                      ldr r3, [r0]
004a1cd4  0f e0 a0 e1                                      mov lr, pc
004a1cd8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
004a1cdc  04 40 8d e2                                      add r4, sp, #4
004a1ce0  00 10 a0 e1                                      mov r1, r0
004a1ce4  04 00 a0 e1                                      mov r0, r4
004a1ce8  0f 70 fa eb                                      bl #0x33dd2c
004a1cec  04 00 a0 e1                                      mov r0, r4
004a1cf0  97 78 fa eb                                      bl #0x33ff54
004a1cf4  10 d0 8d e2                                      add sp, sp, #0x10
004a1cf8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004a1fcc, declared_size=28, range_size=28, mode=arm
; class-group: ObjectSearcher::BackupObjectList
; alias: _ZN14ObjectSearcher16BackupObjectListD0Ev
; demangled: ObjectSearcher::BackupObjectList::~BackupObjectList()
; decoder-mode: arm
004a1fcc  10 40 2d e9                                      push {r4, lr}
004a1fd0  00 40 a0 e1                                      mov r4, r0
004a1fd4  49 aa fb eb                                      bl #0x38c900
004a1fd8  04 00 a0 e1                                      mov r0, r4
004a1fdc  17 b9 f9 eb                                      bl #0x310440
004a1fe0  04 00 a0 e1                                      mov r0, r4
004a1fe4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004a20f0, declared_size=240, range_size=240, mode=arm
; class-group: ObjectSearcher::BackupObjectList
; alias: _ZN14ObjectSearcher16BackupObjectList4_AddEP10GameObject
; demangled: ObjectSearcher::BackupObjectList::_Add(GameObject*)
; decoder-mode: arm
004a20f0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004a20f4  08 60 90 e5                                      ldr r6, [r0, #8]
004a20f8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004a20fc  0c d0 4d e2                                      sub sp, sp, #0xc
004a2100  00 40 a0 e1                                      mov r4, r0
004a2104  03 00 56 e1                                      cmp r6, r3
004a2108  01 50 a0 e1                                      mov r5, r1
004a210c  08 00 00 0a                                      beq #0x4a2134
004a2110  00 10 86 e5                                      str r1, [r6]
004a2114  08 30 90 e5                                      ldr r3, [r0, #8]
004a2118  04 30 83 e2                                      add r3, r3, #4
004a211c  08 30 80 e5                                      str r3, [r0, #8]
004a2120  29 30 d5 e5                                      ldrb r3, [r5, #0x29]
004a2124  01 30 83 e2                                      add r3, r3, #1
004a2128  29 30 c5 e5                                      strb r3, [r5, #0x29]
004a212c  0c d0 8d e2                                      add sp, sp, #0xc
004a2130  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004a2134  04 30 90 e5                                      ldr r3, [r0, #4]
004a2138  06 30 63 e0                                      rsb r3, r3, r6
004a213c  43 31 a0 e1                                      asr r3, r3, #2
004a2140  01 00 53 e3                                      cmp r3, #1
004a2144  03 10 83 20                                      addhs r1, r3, r3
004a2148  01 10 83 32                                      addlo r1, r3, #1
004a214c  07 01 71 e3                                      cmn r1, #0xc0000001
004a2150  1a 00 00 8a                                      bhi #0x4a21c0
004a2154  01 00 53 e1                                      cmp r3, r1
004a2158  18 00 00 8a                                      bhi #0x4a21c0
004a215c  08 20 8d e2                                      add r2, sp, #8
004a2160  04 10 22 e5                                      str r1, [r2, #-4]!
004a2164  0c 00 84 e2                                      add r0, r4, #0xc
004a2168  28 b1 fb eb                                      bl #0x38e610
004a216c  04 10 94 e5                                      ldr r1, [r4, #4]
004a2170  00 70 a0 e1                                      mov r7, r0
004a2174  01 60 56 e0                                      subs r6, r6, r1
004a2178  00 60 a0 01                                      moveq r6, r0
004a217c  13 00 00 1a                                      bne #0x4a21d0
004a2180  04 50 86 e4                                      str r5, [r6], #4
004a2184  04 00 94 e5                                      ldr r0, [r4, #4]
004a2188  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004a218c  00 00 50 e3                                      cmp r0, #0
004a2190  04 00 00 0a                                      beq #0x4a21a8
004a2194  01 10 60 e0                                      rsb r1, r0, r1
004a2198  03 10 c1 e3                                      bic r1, r1, #3
004a219c  80 00 51 e3                                      cmp r1, #0x80
004a21a0  08 00 00 8a                                      bhi #0x4a21c8
004a21a4  55 9b 09 eb                                      bl #0x708f00
004a21a8  04 30 9d e5                                      ldr r3, [sp, #4]
004a21ac  04 70 84 e5                                      str r7, [r4, #4]
004a21b0  08 60 84 e5                                      str r6, [r4, #8]
004a21b4  03 71 87 e0                                      add r7, r7, r3, lsl #2
004a21b8  0c 70 84 e5                                      str r7, [r4, #0xc]
004a21bc  d7 ff ff ea                                      b #0x4a2120
004a21c0  03 11 e0 e3                                      mvn r1, #0xc0000000
004a21c4  e4 ff ff ea                                      b #0x4a215c
004a21c8  9c b8 f9 eb                                      bl #0x310440
004a21cc  f5 ff ff ea                                      b #0x4a21a8
004a21d0  06 20 a0 e1                                      mov r2, r6
004a21d4  57 af f9 eb                                      bl #0x30df38
004a21d8  06 60 80 e0                                      add r6, r0, r6
004a21dc  e7 ff ff ea                                      b #0x4a2180
