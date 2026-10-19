; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00785b08, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::triangle_intersector
; alias: _ZN7gameswf20triangle_intersectorC1Ev
; demangled: gameswf::triangle_intersector::triangle_intersector()
; decoder-mode: arm
00785b08  70 40 2d e9                                      push {r4, r5, r6, lr}
00785b0c  00 10 a0 e3                                      mov r1, #0
00785b10  00 40 a0 e1                                      mov r4, r0
00785b14  3c 00 a0 e3                                      mov r0, #0x3c
00785b18  22 34 ff eb                                      bl #0x752ba8
00785b1c  01 10 a0 e3                                      mov r1, #1
00785b20  00 50 a0 e1                                      mov r5, r0
00785b24  00 20 a0 e3                                      mov r2, #0
00785b28  01 30 a0 e1                                      mov r3, r1
00785b2c  9b ff ff eb                                      bl #0x7859a0
00785b30  00 50 84 e5                                      str r5, [r4]
00785b34  04 00 a0 e1                                      mov r0, r4
00785b38  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00785b3c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::triangle_intersector
; alias: _ZN7gameswf20triangle_intersectorC2Ev
; demangled: gameswf::triangle_intersector::triangle_intersector()
; decoder-mode: arm
00785b3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00785b40  00 10 a0 e3                                      mov r1, #0
00785b44  00 40 a0 e1                                      mov r4, r0
00785b48  3c 00 a0 e3                                      mov r0, #0x3c
00785b4c  15 34 ff eb                                      bl #0x752ba8
00785b50  01 10 a0 e3                                      mov r1, #1
00785b54  00 50 a0 e1                                      mov r5, r0
00785b58  00 20 a0 e3                                      mov r2, #0
00785b5c  01 30 a0 e1                                      mov r3, r1
00785b60  8e ff ff eb                                      bl #0x7859a0
00785b64  00 50 84 e5                                      str r5, [r4]
00785b68  04 00 a0 e1                                      mov r0, r4
00785b6c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00788204, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::triangle_intersector
; alias: _ZN7gameswf20triangle_intersectorD2Ev
; demangled: gameswf::triangle_intersector::~triangle_intersector()
; decoder-mode: arm
00788204  70 40 2d e9                                      push {r4, r5, r6, lr}
00788208  00 50 90 e5                                      ldr r5, [r0]
0078820c  00 40 a0 e1                                      mov r4, r0
00788210  00 00 55 e3                                      cmp r5, #0
00788214  04 00 00 0a                                      beq #0x78822c
00788218  05 00 a0 e1                                      mov r0, r5
0078821c  ba ff ff eb                                      bl #0x78810c
00788220  05 00 a0 e1                                      mov r0, r5
00788224  00 10 a0 e3                                      mov r1, #0
00788228  42 2a ff eb                                      bl #0x752b38
0078822c  04 00 a0 e1                                      mov r0, r4
00788230  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00788234, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::triangle_intersector
; alias: _ZN7gameswf20triangle_intersectorD1Ev
; demangled: gameswf::triangle_intersector::~triangle_intersector()
; decoder-mode: arm
00788234  70 40 2d e9                                      push {r4, r5, r6, lr}
00788238  00 50 90 e5                                      ldr r5, [r0]
0078823c  00 40 a0 e1                                      mov r4, r0
00788240  00 00 55 e3                                      cmp r5, #0
00788244  04 00 00 0a                                      beq #0x78825c
00788248  05 00 a0 e1                                      mov r0, r5
0078824c  ae ff ff eb                                      bl #0x78810c
00788250  05 00 a0 e1                                      mov r0, r5
00788254  00 10 a0 e3                                      mov r1, #0
00788258  36 2a ff eb                                      bl #0x752b38
0078825c  04 00 a0 e1                                      mov r0, r4
00788260  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007889ec, declared_size=704, range_size=704, mode=arm
; class-group: gameswf::triangle_intersector
; alias: _ZN7gameswf20triangle_intersector7processEPNS_5pointES2_RNS_5arrayIS1_EE
; demangled: gameswf::triangle_intersector::process(gameswf::point*, gameswf::point*, gameswf::array<gameswf::point>&)
; decoder-mode: arm
007889ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007889f0  00 40 a0 e1                                      mov r4, r0
007889f4  1c d0 4d e2                                      sub sp, sp, #0x1c
007889f8  00 00 90 e5                                      ldr r0, [r0]
007889fc  01 50 a0 e1                                      mov r5, r1
00788a00  04 30 8d e5                                      str r3, [sp, #4]
00788a04  02 60 a0 e1                                      mov r6, r2
00788a08  da fa ff eb                                      bl #0x787578
00788a0c  00 70 94 e5                                      ldr r7, [r4]
00788a10  38 00 97 e5                                      ldr r0, [r7, #0x38]
00788a14  07 10 a0 e1                                      mov r1, r7
00788a18  81 9a 00 eb                                      bl #0x7af424
00788a1c  34 30 d7 e5                                      ldrb r3, [r7, #0x34]
00788a20  00 00 53 e3                                      cmp r3, #0
00788a24  83 00 00 1a                                      bne #0x788c38
00788a28  00 80 95 e5                                      ldr r8, [r5]
00788a2c  08 00 95 e5                                      ldr r0, [r5, #8]
00788a30  08 a0 85 e2                                      add sl, r5, #8
00788a34  08 10 a0 e1                                      mov r1, r8
00788a38  5b 16 ee eb                                      bl #0x30e3ac
00788a3c  04 70 95 e5                                      ldr r7, [r5, #4]
00788a40  00 90 a0 e1                                      mov sb, r0
00788a44  04 00 9a e5                                      ldr r0, [sl, #4]
00788a48  07 10 a0 e1                                      mov r1, r7
00788a4c  56 16 ee eb                                      bl #0x30e3ac
00788a50  08 10 a0 e1                                      mov r1, r8
00788a54  00 a0 a0 e1                                      mov sl, r0
00788a58  10 00 95 e5                                      ldr r0, [r5, #0x10]
00788a5c  52 16 ee eb                                      bl #0x30e3ac
00788a60  10 b0 85 e2                                      add fp, r5, #0x10
00788a64  00 80 a0 e1                                      mov r8, r0
00788a68  07 10 a0 e1                                      mov r1, r7
00788a6c  04 00 9b e5                                      ldr r0, [fp, #4]
00788a70  4d 16 ee eb                                      bl #0x30e3ac
00788a74  02 11 89 e2                                      add r1, sb, #0x80000000
00788a78  bb 18 ee eb                                      bl #0x30ed6c
00788a7c  08 10 a0 e1                                      mov r1, r8
00788a80  00 70 a0 e1                                      mov r7, r0
00788a84  0a 00 a0 e1                                      mov r0, sl
00788a88  b7 18 ee eb                                      bl #0x30ed6c
00788a8c  00 10 a0 e1                                      mov r1, r0
00788a90  07 00 a0 e1                                      mov r0, r7
00788a94  42 18 ee eb                                      bl #0x30eba4
00788a98  00 80 96 e5                                      ldr r8, [r6]
00788a9c  00 30 a0 e1                                      mov r3, r0
00788aa0  08 00 96 e5                                      ldr r0, [r6, #8]
00788aa4  08 10 a0 e1                                      mov r1, r8
00788aa8  00 30 8d e5                                      str r3, [sp]
00788aac  3e 16 ee eb                                      bl #0x30e3ac
00788ab0  04 70 96 e5                                      ldr r7, [r6, #4]
00788ab4  08 a0 86 e2                                      add sl, r6, #8
00788ab8  00 b0 a0 e1                                      mov fp, r0
00788abc  07 10 a0 e1                                      mov r1, r7
00788ac0  04 00 9a e5                                      ldr r0, [sl, #4]
00788ac4  38 16 ee eb                                      bl #0x30e3ac
00788ac8  08 10 a0 e1                                      mov r1, r8
00788acc  00 90 a0 e1                                      mov sb, r0
00788ad0  10 00 96 e5                                      ldr r0, [r6, #0x10]
00788ad4  34 16 ee eb                                      bl #0x30e3ac
00788ad8  10 a0 86 e2                                      add sl, r6, #0x10
00788adc  00 80 a0 e1                                      mov r8, r0
00788ae0  07 10 a0 e1                                      mov r1, r7
00788ae4  04 00 9a e5                                      ldr r0, [sl, #4]
00788ae8  2f 16 ee eb                                      bl #0x30e3ac
00788aec  02 11 8b e2                                      add r1, fp, #0x80000000
00788af0  9d 18 ee eb                                      bl #0x30ed6c
00788af4  08 10 a0 e1                                      mov r1, r8
00788af8  00 70 a0 e1                                      mov r7, r0
00788afc  09 00 a0 e1                                      mov r0, sb
00788b00  99 18 ee eb                                      bl #0x30ed6c
00788b04  00 10 a0 e1                                      mov r1, r0
00788b08  07 00 a0 e1                                      mov r0, r7
00788b0c  24 18 ee eb                                      bl #0x30eba4
00788b10  00 30 9d e5                                      ldr r3, [sp]
00788b14  00 10 a0 e1                                      mov r1, r0
00788b18  00 80 a0 e3                                      mov r8, #0
00788b1c  03 00 a0 e1                                      mov r0, r3
00788b20  91 18 ee eb                                      bl #0x30ed6c
00788b24  00 10 a0 e3                                      mov r1, #0
00788b28  61 16 ee eb                                      bl #0x30e4b4
00788b2c  00 30 94 e5                                      ldr r3, [r4]
00788b30  00 00 50 e3                                      cmp r0, #0
00788b34  01 80 a0 13                                      movne r8, #1
00788b38  38 00 93 e5                                      ldr r0, [r3, #0x38]
00788b3c  78 80 ef e6                                      uxtb r8, r8
00788b40  00 70 a0 e3                                      mov r7, #0
00788b44  20 9a 00 eb                                      bl #0x7af3cc
00788b48  07 10 85 e0                                      add r1, r5, r7
00788b4c  00 00 94 e5                                      ldr r0, [r4]
00788b50  08 70 87 e2                                      add r7, r7, #8
00788b54  c2 fd ff eb                                      bl #0x788264
00788b58  18 00 57 e3                                      cmp r7, #0x18
00788b5c  f9 ff ff 1a                                      bne #0x788b48
00788b60  00 30 94 e5                                      ldr r3, [r4]
00788b64  38 00 93 e5                                      ldr r0, [r3, #0x38]
00788b68  0d 9a 00 eb                                      bl #0x7af3a4
00788b6c  00 30 94 e5                                      ldr r3, [r4]
00788b70  38 00 93 e5                                      ldr r0, [r3, #0x38]
00788b74  14 9a 00 eb                                      bl #0x7af3cc
00788b78  00 00 58 e3                                      cmp r8, #0
00788b7c  02 50 a0 03                                      moveq r5, #2
00788b80  1d 00 00 0a                                      beq #0x788bfc
00788b84  00 50 a0 e3                                      mov r5, #0
00788b88  05 10 86 e0                                      add r1, r6, r5
00788b8c  00 00 94 e5                                      ldr r0, [r4]
00788b90  08 50 85 e2                                      add r5, r5, #8
00788b94  b2 fd ff eb                                      bl #0x788264
00788b98  18 00 55 e3                                      cmp r5, #0x18
00788b9c  f9 ff ff 1a                                      bne #0x788b88
00788ba0  00 30 94 e5                                      ldr r3, [r4]
00788ba4  08 50 8d e2                                      add r5, sp, #8
00788ba8  38 00 93 e5                                      ldr r0, [r3, #0x38]
00788bac  fc 99 00 eb                                      bl #0x7af3a4
00788bb0  00 30 a0 e3                                      mov r3, #0
00788bb4  00 00 94 e5                                      ldr r0, [r4]
00788bb8  04 10 9d e5                                      ldr r1, [sp, #4]
00788bbc  05 20 a0 e1                                      mov r2, r5
00788bc0  14 30 cd e5                                      strb r3, [sp, #0x14]
00788bc4  08 30 8d e5                                      str r3, [sp, #8]
00788bc8  0c 30 8d e5                                      str r3, [sp, #0xc]
00788bcc  10 30 8d e5                                      str r3, [sp, #0x10]
00788bd0  f4 fe ff eb                                      bl #0x7887a8
00788bd4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00788bd8  00 00 53 e3                                      cmp r3, #0
00788bdc  1e 00 00 da                                      ble #0x788c5c
00788be0  00 30 a0 e3                                      mov r3, #0
00788be4  05 00 a0 e1                                      mov r0, r5
00788be8  03 10 a0 e1                                      mov r1, r3
00788bec  0c 30 8d e5                                      str r3, [sp, #0xc]
00788bf0  a1 c4 ff eb                                      bl #0x779e7c
00788bf4  1c d0 8d e2                                      add sp, sp, #0x1c
00788bf8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00788bfc  0a 10 a0 e1                                      mov r1, sl
00788c00  01 50 45 e2                                      sub r5, r5, #1
00788c04  00 00 94 e5                                      ldr r0, [r4]
00788c08  95 fd ff eb                                      bl #0x788264
00788c0c  01 00 75 e3                                      cmn r5, #1
00788c10  08 a0 4a e2                                      sub sl, sl, #8
00788c14  e1 ff ff 0a                                      beq #0x788ba0
00788c18  0a 10 a0 e1                                      mov r1, sl
00788c1c  01 50 45 e2                                      sub r5, r5, #1
00788c20  00 00 94 e5                                      ldr r0, [r4]
00788c24  8e fd ff eb                                      bl #0x788264
00788c28  01 00 75 e3                                      cmn r5, #1
00788c2c  08 a0 4a e2                                      sub sl, sl, #8
00788c30  f1 ff ff 1a                                      bne #0x788bfc
00788c34  d9 ff ff ea                                      b #0x788ba0
00788c38  07 e0 a0 e1                                      mov lr, r7
00788c3c  03 30 a0 e3                                      mov r3, #3
00788c40  04 30 8e e4                                      str r3, [lr], #4
00788c44  08 20 97 e5                                      ldr r2, [r7, #8]
00788c48  00 00 52 e3                                      cmp r2, #0
00788c4c  0b 00 00 da                                      ble #0x788c80
00788c50  00 30 a0 e3                                      mov r3, #0
00788c54  08 30 87 e5                                      str r3, [r7, #8]
00788c58  72 ff ff ea                                      b #0x788a28
00788c5c  df ff ff aa                                      bge #0x788be0
00788c60  83 20 a0 e1                                      lsl r2, r3, #1
00788c64  08 10 9d e5                                      ldr r1, [sp, #8]
00788c68  00 00 a0 e3                                      mov r0, #0
00788c6c  01 30 93 e2                                      adds r3, r3, #1
00788c70  b2 00 81 e1                                      strh r0, [r1, r2]
00788c74  02 20 82 e2                                      add r2, r2, #2
00788c78  f9 ff ff 1a                                      bne #0x788c64
00788c7c  d7 ff ff ea                                      b #0x788be0
00788c80  f2 ff ff aa                                      bge #0x788c50
00788c84  12 33 a0 e1                                      lsl r3, r2, r3
00788c88  00 00 a0 e3                                      mov r0, #0
00788c8c  00 10 9e e5                                      ldr r1, [lr]
00788c90  01 20 92 e2                                      adds r2, r2, #1
00788c94  03 c0 81 e0                                      add ip, r1, r3
00788c98  03 00 81 e7                                      str r0, [r1, r3]
00788c9c  04 00 8c e5                                      str r0, [ip, #4]
00788ca0  08 30 83 e2                                      add r3, r3, #8
00788ca4  f8 ff ff 1a                                      bne #0x788c8c
00788ca8  e8 ff ff ea                                      b #0x788c50
