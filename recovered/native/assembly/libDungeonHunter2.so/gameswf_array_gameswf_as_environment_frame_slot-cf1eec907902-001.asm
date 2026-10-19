; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075a390, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::as_environment::frame_slot>
; alias: _ZN7gameswf5arrayINS_14as_environment10frame_slotEE7reserveEi
; demangled: gameswf::array<gameswf::as_environment::frame_slot>::reserve(int)
; decoder-mode: arm
0075a390  10 40 2d e9                                      push {r4, lr}
0075a394  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0075a398  00 40 a0 e1                                      mov r4, r0
0075a39c  00 00 53 e3                                      cmp r3, #0
0075a3a0  0f 00 00 1a                                      bne #0x75a3e4
0075a3a4  00 00 51 e3                                      cmp r1, #0
0075a3a8  08 20 90 e5                                      ldr r2, [r0, #8]
0075a3ac  08 10 80 e5                                      str r1, [r0, #8]
0075a3b0  0c 00 00 1a                                      bne #0x75a3e8
0075a3b4  00 00 90 e5                                      ldr r0, [r0]
0075a3b8  00 00 50 e3                                      cmp r0, #0
0075a3bc  01 00 00 0a                                      beq #0x75a3c8
0075a3c0  82 12 a0 e1                                      lsl r1, r2, #5
0075a3c4  db e1 ff eb                                      bl #0x752b38
0075a3c8  00 30 a0 e3                                      mov r3, #0
0075a3cc  00 30 84 e5                                      str r3, [r4]
0075a3d0  10 80 bd e8                                      pop {r4, pc}
0075a3d4  81 02 a0 e1                                      lsl r0, r1, #5
0075a3d8  0c 10 a0 e1                                      mov r1, ip
0075a3dc  ee e1 ff eb                                      bl #0x752b9c
0075a3e0  00 00 84 e5                                      str r0, [r4]
0075a3e4  10 80 bd e8                                      pop {r4, pc}
0075a3e8  00 c0 90 e5                                      ldr ip, [r0]
0075a3ec  00 00 5c e3                                      cmp ip, #0
0075a3f0  f7 ff ff 0a                                      beq #0x75a3d4
0075a3f4  0c 00 a0 e1                                      mov r0, ip
0075a3f8  81 12 a0 e1                                      lsl r1, r1, #5
0075a3fc  82 22 a0 e1                                      lsl r2, r2, #5
0075a400  e9 e1 ff eb                                      bl #0x752bac
0075a404  00 00 84 e5                                      str r0, [r4]
0075a408  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007d29d4, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::array<gameswf::as_environment::frame_slot>
; alias: _ZN7gameswf5arrayINS_14as_environment10frame_slotEE6resizeEi
; demangled: gameswf::array<gameswf::as_environment::frame_slot>::resize(int)
; decoder-mode: arm
007d29d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007d29d8  04 a0 90 e5                                      ldr sl, [r0, #4]
007d29dc  00 70 a0 e1                                      mov r7, r0
007d29e0  01 80 a0 e1                                      mov r8, r1
007d29e4  01 00 5a e1                                      cmp sl, r1
007d29e8  12 00 00 da                                      ble #0x7d2a38
007d29ec  81 42 a0 e1                                      lsl r4, r1, #5
007d29f0  01 50 a0 e1                                      mov r5, r1
007d29f4  01 00 00 ea                                      b #0x7d2a00
007d29f8  0a 00 55 e1                                      cmp r5, sl
007d29fc  0d 00 00 0a                                      beq #0x7d2a38
007d2a00  00 90 97 e5                                      ldr sb, [r7]
007d2a04  01 50 85 e2                                      add r5, r5, #1
007d2a08  04 60 89 e0                                      add r6, sb, r4
007d2a0c  14 00 86 e2                                      add r0, r6, #0x14
007d2a10  c3 11 ff eb                                      bl #0x797124
007d2a14  d4 30 99 e1                                      ldrsb r3, [sb, r4]
007d2a18  20 40 84 e2                                      add r4, r4, #0x20
007d2a1c  01 00 73 e3                                      cmn r3, #1
007d2a20  f4 ff ff 1a                                      bne #0x7d29f8
007d2a24  08 10 96 e5                                      ldr r1, [r6, #8]
007d2a28  0c 00 96 e5                                      ldr r0, [r6, #0xc]
007d2a2c  41 00 fe eb                                      bl #0x752b38
007d2a30  0a 00 55 e1                                      cmp r5, sl
007d2a34  f1 ff ff 1a                                      bne #0x7d2a00
007d2a38  00 00 58 e3                                      cmp r8, #0
007d2a3c  02 00 00 0a                                      beq #0x7d2a4c
007d2a40  08 30 97 e5                                      ldr r3, [r7, #8]
007d2a44  03 00 58 e1                                      cmp r8, r3
007d2a48  18 00 00 ca                                      bgt #0x7d2ab0
007d2a4c  08 00 5a e1                                      cmp sl, r8
007d2a50  14 00 00 aa                                      bge #0x7d2aa8
007d2a54  0a 00 a0 e1                                      mov r0, sl
007d2a58  01 50 a0 e3                                      mov r5, #1
007d2a5c  8a a2 a0 e1                                      lsl sl, sl, #5
007d2a60  00 10 a0 e3                                      mov r1, #0
007d2a64  00 40 e0 e3                                      mvn r4, #0
007d2a68  00 30 97 e5                                      ldr r3, [r7]
007d2a6c  01 00 80 e2                                      add r0, r0, #1
007d2a70  08 00 50 e1                                      cmp r0, r8
007d2a74  0a 50 c3 e7                                      strb r5, [r3, sl]
007d2a78  0a 30 83 e0                                      add r3, r3, sl
007d2a7c  10 20 93 e5                                      ldr r2, [r3, #0x10]
007d2a80  15 10 c3 e5                                      strb r1, [r3, #0x15]
007d2a84  01 10 c3 e5                                      strb r1, [r3, #1]
007d2a88  14 20 d7 e7                                      bfi r2, r4, #0, #0x18
007d2a8c  22 cc a0 e1                                      lsr ip, r2, #0x18
007d2a90  1f c0 c0 e7                                      bfc ip, #0, #1
007d2a94  10 20 83 e5                                      str r2, [r3, #0x10]
007d2a98  14 10 c3 e5                                      strb r1, [r3, #0x14]
007d2a9c  13 c0 c3 e5                                      strb ip, [r3, #0x13]
007d2aa0  20 a0 8a e2                                      add sl, sl, #0x20
007d2aa4  ef ff ff 1a                                      bne #0x7d2a68
007d2aa8  04 80 87 e5                                      str r8, [r7, #4]
007d2aac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007d2ab0  07 00 a0 e1                                      mov r0, r7
007d2ab4  c8 10 88 e0                                      add r1, r8, r8, asr #1
007d2ab8  34 1e fe eb                                      bl #0x75a390
007d2abc  e2 ff ff ea                                      b #0x7d2a4c
