; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7cb0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Trophy
; alias: _ZN7Structs6TrophyD2Ev
; demangled: Structs::Trophy::~Trophy()
; decoder-mode: arm
004c7cb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7cb4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Trophy
; alias: _ZN7Structs6TrophyD1Ev
; demangled: Structs::Trophy::~Trophy()
; decoder-mode: arm
004c7cb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7cb8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Trophy
; alias: _ZN7Structs6Trophy8finalizeEv
; demangled: Structs::Trophy::finalize()
; decoder-mode: arm
004c7cb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cdc74, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Trophy
; alias: _ZN7Structs6TrophyD0Ev
; demangled: Structs::Trophy::~Trophy()
; decoder-mode: arm
004cdc74  10 40 2d e9                                      push {r4, lr}
004cdc78  00 40 a0 e1                                      mov r4, r0
004cdc7c  0c e8 ff eb                                      bl #0x4c7cb4
004cdc80  04 00 a0 e1                                      mov r0, r4
004cdc84  ed 09 f9 eb                                      bl #0x310440
004cdc88  04 00 a0 e1                                      mov r0, r4
004cdc8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005060e0, declared_size=668, range_size=668, mode=arm
; class-group: Structs::Trophy
; alias: _ZN7Structs6Trophy4readEP11IStreamBase
; demangled: Structs::Trophy::read(IStreamBase*)
; decoder-mode: arm
005060e0  30 40 2d e9                                      push {r4, r5, lr}
005060e4  00 40 a0 e1                                      mov r4, r0
005060e8  0c d0 4d e2                                      sub sp, sp, #0xc
005060ec  01 00 a0 e1                                      mov r0, r1
005060f0  01 50 a0 e1                                      mov r5, r1
005060f4  04 10 84 e2                                      add r1, r4, #4
005060f8  e4 4b fd eb                                      bl #0x459090
005060fc  01 30 a0 e3                                      mov r3, #1
00506100  00 00 53 e3                                      cmp r3, #0
00506104  04 30 8d e5                                      str r3, [sp, #4]
00506108  0f 00 00 1a                                      bne #0x50614c
0050610c  05 30 84 e2                                      add r3, r4, #5
00506110  06 20 84 e2                                      add r2, r4, #6
00506114  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506118  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050611c  02 00 53 e1                                      cmp r3, r2
00506120  01 10 20 e0                                      eor r1, r0, r1
00506124  01 10 43 e5                                      strb r1, [r3, #-1]
00506128  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050612c  00 10 21 e0                                      eor r1, r1, r0
00506130  01 10 c2 e5                                      strb r1, [r2, #1]
00506134  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506138  01 20 42 e2                                      sub r2, r2, #1
0050613c  00 10 21 e0                                      eor r1, r1, r0
00506140  01 10 43 e5                                      strb r1, [r3, #-1]
00506144  01 30 83 e2                                      add r3, r3, #1
00506148  f1 ff ff 3a                                      blo #0x506114
0050614c  05 00 a0 e1                                      mov r0, r5
00506150  08 10 84 e2                                      add r1, r4, #8
00506154  cd 4b fd eb                                      bl #0x459090
00506158  01 30 a0 e3                                      mov r3, #1
0050615c  00 00 53 e3                                      cmp r3, #0
00506160  04 30 8d e5                                      str r3, [sp, #4]
00506164  0f 00 00 1a                                      bne #0x5061a8
00506168  09 30 84 e2                                      add r3, r4, #9
0050616c  0a 20 84 e2                                      add r2, r4, #0xa
00506170  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506174  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506178  02 00 53 e1                                      cmp r3, r2
0050617c  01 10 20 e0                                      eor r1, r0, r1
00506180  01 10 43 e5                                      strb r1, [r3, #-1]
00506184  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506188  00 10 21 e0                                      eor r1, r1, r0
0050618c  01 10 c2 e5                                      strb r1, [r2, #1]
00506190  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506194  01 20 42 e2                                      sub r2, r2, #1
00506198  00 10 21 e0                                      eor r1, r1, r0
0050619c  01 10 43 e5                                      strb r1, [r3, #-1]
005061a0  01 30 83 e2                                      add r3, r3, #1
005061a4  f1 ff ff 3a                                      blo #0x506170
005061a8  05 00 a0 e1                                      mov r0, r5
005061ac  0c 10 84 e2                                      add r1, r4, #0xc
005061b0  b6 4b fd eb                                      bl #0x459090
005061b4  01 30 a0 e3                                      mov r3, #1
005061b8  00 00 53 e3                                      cmp r3, #0
005061bc  04 30 8d e5                                      str r3, [sp, #4]
005061c0  0f 00 00 1a                                      bne #0x506204
005061c4  0d 30 84 e2                                      add r3, r4, #0xd
005061c8  0e 20 84 e2                                      add r2, r4, #0xe
005061cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
005061d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
005061d4  02 00 53 e1                                      cmp r3, r2
005061d8  01 10 20 e0                                      eor r1, r0, r1
005061dc  01 10 43 e5                                      strb r1, [r3, #-1]
005061e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005061e4  00 10 21 e0                                      eor r1, r1, r0
005061e8  01 10 c2 e5                                      strb r1, [r2, #1]
005061ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
005061f0  01 20 42 e2                                      sub r2, r2, #1
005061f4  00 10 21 e0                                      eor r1, r1, r0
005061f8  01 10 43 e5                                      strb r1, [r3, #-1]
005061fc  01 30 83 e2                                      add r3, r3, #1
00506200  f1 ff ff 3a                                      blo #0x5061cc
00506204  05 00 a0 e1                                      mov r0, r5
00506208  10 10 84 e2                                      add r1, r4, #0x10
0050620c  9f 4b fd eb                                      bl #0x459090
00506210  01 30 a0 e3                                      mov r3, #1
00506214  00 00 53 e3                                      cmp r3, #0
00506218  04 30 8d e5                                      str r3, [sp, #4]
0050621c  0f 00 00 1a                                      bne #0x506260
00506220  11 30 84 e2                                      add r3, r4, #0x11
00506224  12 20 84 e2                                      add r2, r4, #0x12
00506228  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050622c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506230  02 00 53 e1                                      cmp r3, r2
00506234  01 10 20 e0                                      eor r1, r0, r1
00506238  01 10 43 e5                                      strb r1, [r3, #-1]
0050623c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506240  00 10 21 e0                                      eor r1, r1, r0
00506244  01 10 c2 e5                                      strb r1, [r2, #1]
00506248  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050624c  01 20 42 e2                                      sub r2, r2, #1
00506250  00 10 21 e0                                      eor r1, r1, r0
00506254  01 10 43 e5                                      strb r1, [r3, #-1]
00506258  01 30 83 e2                                      add r3, r3, #1
0050625c  f1 ff ff 3a                                      blo #0x506228
00506260  05 00 a0 e1                                      mov r0, r5
00506264  14 10 84 e2                                      add r1, r4, #0x14
00506268  88 4b fd eb                                      bl #0x459090
0050626c  01 30 a0 e3                                      mov r3, #1
00506270  00 00 53 e3                                      cmp r3, #0
00506274  04 30 8d e5                                      str r3, [sp, #4]
00506278  0f 00 00 1a                                      bne #0x5062bc
0050627c  15 30 84 e2                                      add r3, r4, #0x15
00506280  16 20 84 e2                                      add r2, r4, #0x16
00506284  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506288  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050628c  02 00 53 e1                                      cmp r3, r2
00506290  01 10 20 e0                                      eor r1, r0, r1
00506294  01 10 43 e5                                      strb r1, [r3, #-1]
00506298  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050629c  00 10 21 e0                                      eor r1, r1, r0
005062a0  01 10 c2 e5                                      strb r1, [r2, #1]
005062a4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005062a8  01 20 42 e2                                      sub r2, r2, #1
005062ac  00 10 21 e0                                      eor r1, r1, r0
005062b0  01 10 43 e5                                      strb r1, [r3, #-1]
005062b4  01 30 83 e2                                      add r3, r3, #1
005062b8  f1 ff ff 3a                                      blo #0x506284
005062bc  05 00 a0 e1                                      mov r0, r5
005062c0  18 10 84 e2                                      add r1, r4, #0x18
005062c4  71 4b fd eb                                      bl #0x459090
005062c8  01 30 a0 e3                                      mov r3, #1
005062cc  00 00 53 e3                                      cmp r3, #0
005062d0  04 30 8d e5                                      str r3, [sp, #4]
005062d4  0f 00 00 1a                                      bne #0x506318
005062d8  19 30 84 e2                                      add r3, r4, #0x19
005062dc  1a 20 84 e2                                      add r2, r4, #0x1a
005062e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005062e4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005062e8  02 00 53 e1                                      cmp r3, r2
005062ec  01 10 20 e0                                      eor r1, r0, r1
005062f0  01 10 43 e5                                      strb r1, [r3, #-1]
005062f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005062f8  00 10 21 e0                                      eor r1, r1, r0
005062fc  01 10 c2 e5                                      strb r1, [r2, #1]
00506300  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506304  01 20 42 e2                                      sub r2, r2, #1
00506308  00 10 21 e0                                      eor r1, r1, r0
0050630c  01 10 43 e5                                      strb r1, [r3, #-1]
00506310  01 30 83 e2                                      add r3, r3, #1
00506314  f1 ff ff 3a                                      blo #0x5062e0
00506318  05 00 a0 e1                                      mov r0, r5
0050631c  1c 10 84 e2                                      add r1, r4, #0x1c
00506320  5a 4b fd eb                                      bl #0x459090
00506324  01 30 a0 e3                                      mov r3, #1
00506328  00 00 53 e3                                      cmp r3, #0
0050632c  04 30 8d e5                                      str r3, [sp, #4]
00506330  0f 00 00 1a                                      bne #0x506374
00506334  1e 30 84 e2                                      add r3, r4, #0x1e
00506338  1d 40 84 e2                                      add r4, r4, #0x1d
0050633c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00506340  01 20 54 e5                                      ldrb r2, [r4, #-1]
00506344  03 00 54 e1                                      cmp r4, r3
00506348  02 20 21 e0                                      eor r2, r1, r2
0050634c  01 20 44 e5                                      strb r2, [r4, #-1]
00506350  01 10 d3 e5                                      ldrb r1, [r3, #1]
00506354  01 20 22 e0                                      eor r2, r2, r1
00506358  01 20 c3 e5                                      strb r2, [r3, #1]
0050635c  01 10 54 e5                                      ldrb r1, [r4, #-1]
00506360  01 30 43 e2                                      sub r3, r3, #1
00506364  01 20 22 e0                                      eor r2, r2, r1
00506368  01 20 44 e5                                      strb r2, [r4, #-1]
0050636c  01 40 84 e2                                      add r4, r4, #1
00506370  f1 ff ff 3a                                      blo #0x50633c
00506374  0c d0 8d e2                                      add sp, sp, #0xc
00506378  30 80 bd e8                                      pop {r4, r5, pc}
