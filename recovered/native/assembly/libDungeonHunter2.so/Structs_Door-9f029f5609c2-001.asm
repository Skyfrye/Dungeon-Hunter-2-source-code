; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004da070, declared_size=40, range_size=40, mode=arm
; class-group: Structs::Door
; alias: _ZN7Structs4Door8finalizeEv
; demangled: Structs::Door::finalize()
; decoder-mode: arm
004da070  10 40 2d e9                                      push {r4, lr}
004da074  00 40 a0 e1                                      mov r4, r0
004da078  08 00 90 e5                                      ldr r0, [r0, #8]
004da07c  00 00 50 e3                                      cmp r0, #0
004da080  03 00 00 0a                                      beq #0x4da094
004da084  ed d8 f8 eb                                      bl #0x310440
004da088  00 30 a0 e3                                      mov r3, #0
004da08c  04 30 84 e5                                      str r3, [r4, #4]
004da090  08 30 84 e5                                      str r3, [r4, #8]
004da094  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da098, declared_size=64, range_size=64, mode=arm
; class-group: Structs::Door
; alias: _ZN7Structs4DoorD1Ev
; demangled: Structs::Door::~Door()
; decoder-mode: arm
004da098  10 40 2d e9                                      push {r4, lr}
004da09c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da0a0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da0a4  00 40 a0 e1                                      mov r4, r0
004da0a8  03 30 8f e0                                      add r3, pc, r3
004da0ac  08 00 90 e5                                      ldr r0, [r0, #8]
004da0b0  02 20 93 e7                                      ldr r2, [r3, r2]
004da0b4  00 00 50 e3                                      cmp r0, #0
004da0b8  08 20 82 e2                                      add r2, r2, #8
004da0bc  00 20 84 e5                                      str r2, [r4]
004da0c0  00 00 00 0a                                      beq #0x4da0c8
004da0c4  dd d8 f8 eb                                      bl #0x310440
004da0c8  04 00 a0 e1                                      mov r0, r4
004da0cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da0d0  e8 a9 4b 00 9c 29 00 00                          .byte 0xe8, 0xa9, 0x4b, 0x00, 0x9c, 0x29, 0x00, 0x00

; FUNCTION 0x004da0d8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Door
; alias: _ZN7Structs4DoorD0Ev
; demangled: Structs::Door::~Door()
; decoder-mode: arm
004da0d8  10 40 2d e9                                      push {r4, lr}
004da0dc  00 40 a0 e1                                      mov r4, r0
004da0e0  ec ff ff eb                                      bl #0x4da098
004da0e4  04 00 a0 e1                                      mov r0, r4
004da0e8  d4 d8 f8 eb                                      bl #0x310440
004da0ec  04 00 a0 e1                                      mov r0, r4
004da0f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da0f4, declared_size=64, range_size=64, mode=arm
; class-group: Structs::Door
; alias: _ZN7Structs4DoorD2Ev
; demangled: Structs::Door::~Door()
; decoder-mode: arm
004da0f4  10 40 2d e9                                      push {r4, lr}
004da0f8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da0fc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da100  00 40 a0 e1                                      mov r4, r0
004da104  03 30 8f e0                                      add r3, pc, r3
004da108  08 00 90 e5                                      ldr r0, [r0, #8]
004da10c  02 20 93 e7                                      ldr r2, [r3, r2]
004da110  00 00 50 e3                                      cmp r0, #0
004da114  08 20 82 e2                                      add r2, r2, #8
004da118  00 20 84 e5                                      str r2, [r4]
004da11c  00 00 00 0a                                      beq #0x4da124
004da120  c6 d8 f8 eb                                      bl #0x310440
004da124  04 00 a0 e1                                      mov r0, r4
004da128  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da12c  8c a9 4b 00 9c 29 00 00                          .byte 0x8c, 0xa9, 0x4b, 0x00, 0x9c, 0x29, 0x00, 0x00

; FUNCTION 0x004fe050, declared_size=464, range_size=464, mode=arm
; class-group: Structs::Door
; alias: _ZN7Structs4Door4readEP11IStreamBase
; demangled: Structs::Door::read(IStreamBase*)
; decoder-mode: arm
004fe050  70 40 2d e9                                      push {r4, r5, r6, lr}
004fe054  00 40 a0 e1                                      mov r4, r0
004fe058  08 d0 4d e2                                      sub sp, sp, #8
004fe05c  01 00 a0 e1                                      mov r0, r1
004fe060  01 50 a0 e1                                      mov r5, r1
004fe064  04 10 84 e2                                      add r1, r4, #4
004fe068  4c 84 fb eb                                      bl #0x3df1a0
004fe06c  01 30 a0 e3                                      mov r3, #1
004fe070  00 00 53 e3                                      cmp r3, #0
004fe074  04 30 8d e5                                      str r3, [sp, #4]
004fe078  0f 00 00 1a                                      bne #0x4fe0bc
004fe07c  05 30 84 e2                                      add r3, r4, #5
004fe080  06 20 84 e2                                      add r2, r4, #6
004fe084  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe088  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe08c  02 00 53 e1                                      cmp r3, r2
004fe090  01 10 20 e0                                      eor r1, r0, r1
004fe094  01 10 43 e5                                      strb r1, [r3, #-1]
004fe098  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe09c  00 10 21 e0                                      eor r1, r1, r0
004fe0a0  01 10 c2 e5                                      strb r1, [r2, #1]
004fe0a4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe0a8  01 20 42 e2                                      sub r2, r2, #1
004fe0ac  00 10 21 e0                                      eor r1, r1, r0
004fe0b0  01 10 43 e5                                      strb r1, [r3, #-1]
004fe0b4  01 30 83 e2                                      add r3, r3, #1
004fe0b8  f1 ff ff 3a                                      blo #0x4fe084
004fe0bc  08 00 94 e5                                      ldr r0, [r4, #8]
004fe0c0  00 00 50 e3                                      cmp r0, #0
004fe0c4  00 00 00 0a                                      beq #0x4fe0cc
004fe0c8  dc 48 f8 eb                                      bl #0x310440
004fe0cc  04 00 94 e5                                      ldr r0, [r4, #4]
004fe0d0  01 10 a0 e3                                      mov r1, #1
004fe0d4  00 60 a0 e3                                      mov r6, #0
004fe0d8  01 00 80 e0                                      add r0, r0, r1
004fe0dc  22 49 f8 eb                                      bl #0x31056c
004fe0e0  04 20 94 e5                                      ldr r2, [r4, #4]
004fe0e4  00 10 a0 e1                                      mov r1, r0
004fe0e8  08 00 84 e5                                      str r0, [r4, #8]
004fe0ec  06 30 a0 e1                                      mov r3, r6
004fe0f0  05 00 a0 e1                                      mov r0, r5
004fe0f4  d6 64 f8 eb                                      bl #0x317454
004fe0f8  04 30 94 e5                                      ldr r3, [r4, #4]
004fe0fc  08 20 94 e5                                      ldr r2, [r4, #8]
004fe100  05 00 a0 e1                                      mov r0, r5
004fe104  0c 10 84 e2                                      add r1, r4, #0xc
004fe108  03 60 c2 e7                                      strb r6, [r2, r3]
004fe10c  df 6b fd eb                                      bl #0x459090
004fe110  01 30 a0 e3                                      mov r3, #1
004fe114  06 00 53 e1                                      cmp r3, r6
004fe118  04 30 8d e5                                      str r3, [sp, #4]
004fe11c  0f 00 00 1a                                      bne #0x4fe160
004fe120  0d 30 84 e2                                      add r3, r4, #0xd
004fe124  0e 20 84 e2                                      add r2, r4, #0xe
004fe128  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe12c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe130  02 00 53 e1                                      cmp r3, r2
004fe134  01 10 20 e0                                      eor r1, r0, r1
004fe138  01 10 43 e5                                      strb r1, [r3, #-1]
004fe13c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe140  00 10 21 e0                                      eor r1, r1, r0
004fe144  01 10 c2 e5                                      strb r1, [r2, #1]
004fe148  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe14c  01 20 42 e2                                      sub r2, r2, #1
004fe150  00 10 21 e0                                      eor r1, r1, r0
004fe154  01 10 43 e5                                      strb r1, [r3, #-1]
004fe158  01 30 83 e2                                      add r3, r3, #1
004fe15c  f1 ff ff 3a                                      blo #0x4fe128
004fe160  05 00 a0 e1                                      mov r0, r5
004fe164  10 10 84 e2                                      add r1, r4, #0x10
004fe168  c8 6b fd eb                                      bl #0x459090
004fe16c  01 30 a0 e3                                      mov r3, #1
004fe170  00 00 53 e3                                      cmp r3, #0
004fe174  04 30 8d e5                                      str r3, [sp, #4]
004fe178  0f 00 00 1a                                      bne #0x4fe1bc
004fe17c  11 30 84 e2                                      add r3, r4, #0x11
004fe180  12 20 84 e2                                      add r2, r4, #0x12
004fe184  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe188  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe18c  03 00 52 e1                                      cmp r2, r3
004fe190  01 10 20 e0                                      eor r1, r0, r1
004fe194  01 10 43 e5                                      strb r1, [r3, #-1]
004fe198  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe19c  00 10 21 e0                                      eor r1, r1, r0
004fe1a0  01 10 c2 e5                                      strb r1, [r2, #1]
004fe1a4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe1a8  01 20 42 e2                                      sub r2, r2, #1
004fe1ac  00 10 21 e0                                      eor r1, r1, r0
004fe1b0  01 10 43 e5                                      strb r1, [r3, #-1]
004fe1b4  01 30 83 e2                                      add r3, r3, #1
004fe1b8  f1 ff ff 8a                                      bhi #0x4fe184
004fe1bc  05 00 a0 e1                                      mov r0, r5
004fe1c0  14 10 84 e2                                      add r1, r4, #0x14
004fe1c4  b1 6b fd eb                                      bl #0x459090
004fe1c8  01 30 a0 e3                                      mov r3, #1
004fe1cc  00 00 53 e3                                      cmp r3, #0
004fe1d0  04 30 8d e5                                      str r3, [sp, #4]
004fe1d4  0f 00 00 1a                                      bne #0x4fe218
004fe1d8  16 30 84 e2                                      add r3, r4, #0x16
004fe1dc  15 40 84 e2                                      add r4, r4, #0x15
004fe1e0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fe1e4  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fe1e8  04 00 53 e1                                      cmp r3, r4
004fe1ec  02 20 21 e0                                      eor r2, r1, r2
004fe1f0  01 20 44 e5                                      strb r2, [r4, #-1]
004fe1f4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fe1f8  01 20 22 e0                                      eor r2, r2, r1
004fe1fc  01 20 c3 e5                                      strb r2, [r3, #1]
004fe200  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fe204  01 30 43 e2                                      sub r3, r3, #1
004fe208  01 20 22 e0                                      eor r2, r2, r1
004fe20c  01 20 44 e5                                      strb r2, [r4, #-1]
004fe210  01 40 84 e2                                      add r4, r4, #1
004fe214  f1 ff ff 8a                                      bhi #0x4fe1e0
004fe218  08 d0 8d e2                                      add sp, sp, #8
004fe21c  70 80 bd e8                                      pop {r4, r5, r6, pc}
