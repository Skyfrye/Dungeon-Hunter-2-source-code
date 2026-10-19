; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00779c7c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::mesh_set::layer>
; alias: _ZN7gameswf5arrayINS_8mesh_set5layerEE7reserveEi
; demangled: gameswf::array<gameswf::mesh_set::layer>::reserve(int)
; decoder-mode: arm
00779c7c  10 40 2d e9                                      push {r4, lr}
00779c80  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00779c84  00 40 a0 e1                                      mov r4, r0
00779c88  00 00 53 e3                                      cmp r3, #0
00779c8c  0f 00 00 1a                                      bne #0x779cd0
00779c90  00 00 51 e3                                      cmp r1, #0
00779c94  08 20 90 e5                                      ldr r2, [r0, #8]
00779c98  08 10 80 e5                                      str r1, [r0, #8]
00779c9c  0c 00 00 1a                                      bne #0x779cd4
00779ca0  00 00 90 e5                                      ldr r0, [r0]
00779ca4  00 00 50 e3                                      cmp r0, #0
00779ca8  01 00 00 0a                                      beq #0x779cb4
00779cac  82 12 a0 e1                                      lsl r1, r2, #5
00779cb0  a0 63 ff eb                                      bl #0x752b38
00779cb4  00 30 a0 e3                                      mov r3, #0
00779cb8  00 30 84 e5                                      str r3, [r4]
00779cbc  10 80 bd e8                                      pop {r4, pc}
00779cc0  81 02 a0 e1                                      lsl r0, r1, #5
00779cc4  0c 10 a0 e1                                      mov r1, ip
00779cc8  b3 63 ff eb                                      bl #0x752b9c
00779ccc  00 00 84 e5                                      str r0, [r4]
00779cd0  10 80 bd e8                                      pop {r4, pc}
00779cd4  00 c0 90 e5                                      ldr ip, [r0]
00779cd8  00 00 5c e3                                      cmp ip, #0
00779cdc  f7 ff ff 0a                                      beq #0x779cc0
00779ce0  0c 00 a0 e1                                      mov r0, ip
00779ce4  81 12 a0 e1                                      lsl r1, r1, #5
00779ce8  82 22 a0 e1                                      lsl r2, r2, #5
00779cec  ae 63 ff eb                                      bl #0x752bac
00779cf0  00 00 84 e5                                      str r0, [r4]
00779cf4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077c16c, declared_size=180, range_size=180, mode=arm
; class-group: gameswf::array<gameswf::mesh_set::layer>
; alias: _ZN7gameswf5arrayINS_8mesh_set5layerEE6resizeEi
; demangled: gameswf::array<gameswf::mesh_set::layer>::resize(int)
; decoder-mode: arm
0077c16c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077c170  04 60 90 e5                                      ldr r6, [r0, #4]
0077c174  00 40 a0 e1                                      mov r4, r0
0077c178  01 50 a0 e1                                      mov r5, r1
0077c17c  01 00 56 e1                                      cmp r6, r1
0077c180  08 00 00 da                                      ble #0x77c1a8
0077c184  81 82 a0 e1                                      lsl r8, r1, #5
0077c188  01 70 a0 e1                                      mov r7, r1
0077c18c  00 00 94 e5                                      ldr r0, [r4]
0077c190  01 70 87 e2                                      add r7, r7, #1
0077c194  08 00 80 e0                                      add r0, r0, r8
0077c198  99 ff ff eb                                      bl #0x77c004
0077c19c  06 00 57 e1                                      cmp r7, r6
0077c1a0  20 80 88 e2                                      add r8, r8, #0x20
0077c1a4  f8 ff ff 1a                                      bne #0x77c18c
0077c1a8  00 00 55 e3                                      cmp r5, #0
0077c1ac  02 00 00 0a                                      beq #0x77c1bc
0077c1b0  08 30 94 e5                                      ldr r3, [r4, #8]
0077c1b4  03 00 55 e1                                      cmp r5, r3
0077c1b8  14 00 00 ca                                      bgt #0x77c210
0077c1bc  05 00 56 e1                                      cmp r6, r5
0077c1c0  10 00 00 aa                                      bge #0x77c208
0077c1c4  06 10 a0 e1                                      mov r1, r6
0077c1c8  00 30 a0 e3                                      mov r3, #0
0077c1cc  86 62 a0 e1                                      lsl r6, r6, #5
0077c1d0  00 00 94 e5                                      ldr r0, [r4]
0077c1d4  01 10 81 e2                                      add r1, r1, #1
0077c1d8  05 00 51 e1                                      cmp r1, r5
0077c1dc  06 20 80 e0                                      add r2, r0, r6
0077c1e0  06 30 80 e7                                      str r3, [r0, r6]
0077c1e4  1c 30 c2 e5                                      strb r3, [r2, #0x1c]
0077c1e8  04 30 82 e5                                      str r3, [r2, #4]
0077c1ec  08 30 82 e5                                      str r3, [r2, #8]
0077c1f0  0c 30 c2 e5                                      strb r3, [r2, #0xc]
0077c1f4  10 30 82 e5                                      str r3, [r2, #0x10]
0077c1f8  14 30 82 e5                                      str r3, [r2, #0x14]
0077c1fc  18 30 82 e5                                      str r3, [r2, #0x18]
0077c200  20 60 86 e2                                      add r6, r6, #0x20
0077c204  f1 ff ff 1a                                      bne #0x77c1d0
0077c208  04 50 84 e5                                      str r5, [r4, #4]
0077c20c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0077c210  04 00 a0 e1                                      mov r0, r4
0077c214  c5 10 85 e0                                      add r1, r5, r5, asr #1
0077c218  97 f6 ff eb                                      bl #0x779c7c
0077c21c  e6 ff ff ea                                      b #0x77c1bc
