; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056c960, declared_size=136, range_size=136, mode=arm
; class-group: glitch::io::CFile
; alias: _ZN6glitch2io5CFileC2EP7__sFILEPKcb
; demangled: glitch::io::CFile::CFile(__sFILE*, char const*, bool)
; decoder-mode: arm
0056c960  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c964  04 10 80 e5                                      str r1, [r0, #4]
0056c968  08 d0 4d e2                                      sub sp, sp, #8
0056c96c  08 50 80 e2                                      add r5, r0, #8
0056c970  00 10 a0 e3                                      mov r1, #0
0056c974  00 10 80 e5                                      str r1, [r0]
0056c978  03 60 a0 e1                                      mov r6, r3
0056c97c  02 10 a0 e1                                      mov r1, r2
0056c980  00 40 a0 e1                                      mov r4, r0
0056c984  04 20 8d e2                                      add r2, sp, #4
0056c988  05 00 a0 e1                                      mov r0, r5
0056c98c  aa e5 f6 eb                                      bl #0x32603c
0056c990  24 60 c4 e5                                      strb r6, [r4, #0x24]
0056c994  05 00 a0 e1                                      mov r0, r5
0056c998  a9 ff ff eb                                      bl #0x56c844
0056c99c  01 00 70 e3                                      cmn r0, #1
0056c9a0  07 00 00 0a                                      beq #0x56c9c4
0056c9a4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0056c9a8  18 20 94 e5                                      ldr r2, [r4, #0x18]
0056c9ac  01 50 80 e2                                      add r5, r0, #1
0056c9b0  02 20 63 e0                                      rsb r2, r3, r2
0056c9b4  02 00 55 e1                                      cmp r5, r2
0056c9b8  04 00 00 2a                                      bhs #0x56c9d0
0056c9bc  05 50 83 e0                                      add r5, r3, r5
0056c9c0  20 50 84 e5                                      str r5, [r4, #0x20]
0056c9c4  04 00 a0 e1                                      mov r0, r4
0056c9c8  08 d0 8d e2                                      add sp, sp, #8
0056c9cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0056c9d0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0056c9d4  00 00 8f e0                                      add r0, pc, r0
0056c9d8  34 71 06 eb                                      bl #0x708eb0
0056c9dc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0056c9e0  f5 ff ff ea                                      b #0x56c9bc
; mapping-symbol data/literal pool
0056c9e4  84 1a 35 00                                      .byte 0x84, 0x1a, 0x35, 0x00

; FUNCTION 0x0056c9e8, declared_size=136, range_size=136, mode=arm
; class-group: glitch::io::CFile
; alias: _ZN6glitch2io5CFileC1EP7__sFILEPKcb
; demangled: glitch::io::CFile::CFile(__sFILE*, char const*, bool)
; decoder-mode: arm
0056c9e8  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c9ec  04 10 80 e5                                      str r1, [r0, #4]
0056c9f0  08 d0 4d e2                                      sub sp, sp, #8
0056c9f4  08 50 80 e2                                      add r5, r0, #8
0056c9f8  00 10 a0 e3                                      mov r1, #0
0056c9fc  00 10 80 e5                                      str r1, [r0]
0056ca00  03 60 a0 e1                                      mov r6, r3
0056ca04  02 10 a0 e1                                      mov r1, r2
0056ca08  00 40 a0 e1                                      mov r4, r0
0056ca0c  04 20 8d e2                                      add r2, sp, #4
0056ca10  05 00 a0 e1                                      mov r0, r5
0056ca14  88 e5 f6 eb                                      bl #0x32603c
0056ca18  24 60 c4 e5                                      strb r6, [r4, #0x24]
0056ca1c  05 00 a0 e1                                      mov r0, r5
0056ca20  87 ff ff eb                                      bl #0x56c844
0056ca24  01 00 70 e3                                      cmn r0, #1
0056ca28  07 00 00 0a                                      beq #0x56ca4c
0056ca2c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0056ca30  18 20 94 e5                                      ldr r2, [r4, #0x18]
0056ca34  01 50 80 e2                                      add r5, r0, #1
0056ca38  02 20 63 e0                                      rsb r2, r3, r2
0056ca3c  02 00 55 e1                                      cmp r5, r2
0056ca40  04 00 00 2a                                      bhs #0x56ca58
0056ca44  05 50 83 e0                                      add r5, r3, r5
0056ca48  20 50 84 e5                                      str r5, [r4, #0x20]
0056ca4c  04 00 a0 e1                                      mov r0, r4
0056ca50  08 d0 8d e2                                      add sp, sp, #8
0056ca54  70 80 bd e8                                      pop {r4, r5, r6, pc}
0056ca58  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0056ca5c  00 00 8f e0                                      add r0, pc, r0
0056ca60  12 71 06 eb                                      bl #0x708eb0
0056ca64  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0056ca68  f5 ff ff ea                                      b #0x56ca44
; mapping-symbol data/literal pool
0056ca6c  fc 19 35 00                                      .byte 0xfc, 0x19, 0x35, 0x00

; FUNCTION 0x0056d108, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CFile
; alias: _ZN6glitch2io5CFileD1Ev
; demangled: glitch::io::CFile::~CFile()
; decoder-mode: arm
0056d108  10 40 2d e9                                      push {r4, lr}
0056d10c  00 40 a0 e1                                      mov r4, r0
0056d110  04 00 90 e5                                      ldr r0, [r0, #4]
0056d114  00 00 50 e3                                      cmp r0, #0
0056d118  00 00 00 0a                                      beq #0x56d120
0056d11c  7c 86 f6 eb                                      bl #0x30eb14
0056d120  08 30 84 e2                                      add r3, r4, #8
0056d124  14 00 93 e5                                      ldr r0, [r3, #0x14]
0056d128  03 00 50 e1                                      cmp r0, r3
0056d12c  02 00 00 0a                                      beq #0x56d13c
0056d130  00 00 50 e3                                      cmp r0, #0
0056d134  00 00 00 0a                                      beq #0x56d13c
0056d138  c4 8c f6 eb                                      bl #0x310450
0056d13c  04 00 a0 e1                                      mov r0, r4
0056d140  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056d144, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CFile
; alias: _ZN6glitch2io5CFileD2Ev
; demangled: glitch::io::CFile::~CFile()
; decoder-mode: arm
0056d144  10 40 2d e9                                      push {r4, lr}
0056d148  00 40 a0 e1                                      mov r4, r0
0056d14c  04 00 90 e5                                      ldr r0, [r0, #4]
0056d150  00 00 50 e3                                      cmp r0, #0
0056d154  00 00 00 0a                                      beq #0x56d15c
0056d158  6d 86 f6 eb                                      bl #0x30eb14
0056d15c  08 30 84 e2                                      add r3, r4, #8
0056d160  14 00 93 e5                                      ldr r0, [r3, #0x14]
0056d164  03 00 50 e1                                      cmp r0, r3
0056d168  02 00 00 0a                                      beq #0x56d178
0056d16c  00 00 50 e3                                      cmp r0, #0
0056d170  00 00 00 0a                                      beq #0x56d178
0056d174  b5 8c f6 eb                                      bl #0x310450
0056d178  04 00 a0 e1                                      mov r0, r4
0056d17c  10 80 bd e8                                      pop {r4, pc}
