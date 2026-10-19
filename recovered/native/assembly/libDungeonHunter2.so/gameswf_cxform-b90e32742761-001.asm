; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00794d38, declared_size=596, range_size=596, mode=arm
; class-group: gameswf::cxform
; alias: _ZN7gameswf6cxform11concatenateERKS0_
; demangled: gameswf::cxform::concatenate(gameswf::cxform const&)
; decoder-mode: arm
00794d38  70 40 2d e9                                      push {r4, r5, r6, lr}
00794d3c  00 40 a0 e1                                      mov r4, r0
00794d40  01 50 a0 e1                                      mov r5, r1
00794d44  00 00 90 e5                                      ldr r0, [r0]
00794d48  04 10 91 e5                                      ldr r1, [r1, #4]
00794d4c  06 e8 ed eb                                      bl #0x30ed6c
00794d50  04 10 94 e5                                      ldr r1, [r4, #4]
00794d54  92 e7 ed eb                                      bl #0x30eba4
00794d58  02 15 e0 e3                                      mvn r1, #0x800000
00794d5c  00 60 a0 e1                                      mov r6, r0
00794d60  d3 e5 ed eb                                      bl #0x30e4b4
00794d64  00 00 50 e3                                      cmp r0, #0
00794d68  82 00 00 0a                                      beq #0x794f78
00794d6c  02 11 e0 e3                                      mvn r1, #0x80000000
00794d70  06 00 a0 e1                                      mov r0, r6
00794d74  02 15 41 e2                                      sub r1, r1, #0x800000
00794d78  0b e7 ed eb                                      bl #0x30e9ac
00794d7c  00 00 50 e3                                      cmp r0, #0
00794d80  7c 00 00 0a                                      beq #0x794f78
00794d84  04 60 84 e5                                      str r6, [r4, #4]
00794d88  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00794d8c  08 00 94 e5                                      ldr r0, [r4, #8]
00794d90  f5 e7 ed eb                                      bl #0x30ed6c
00794d94  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00794d98  81 e7 ed eb                                      bl #0x30eba4
00794d9c  02 15 e0 e3                                      mvn r1, #0x800000
00794da0  00 60 a0 e1                                      mov r6, r0
00794da4  c2 e5 ed eb                                      bl #0x30e4b4
00794da8  00 00 50 e3                                      cmp r0, #0
00794dac  6f 00 00 0a                                      beq #0x794f70
00794db0  02 11 e0 e3                                      mvn r1, #0x80000000
00794db4  06 00 a0 e1                                      mov r0, r6
00794db8  02 15 41 e2                                      sub r1, r1, #0x800000
00794dbc  fa e6 ed eb                                      bl #0x30e9ac
00794dc0  00 00 50 e3                                      cmp r0, #0
00794dc4  69 00 00 0a                                      beq #0x794f70
00794dc8  0c 60 84 e5                                      str r6, [r4, #0xc]
00794dcc  14 10 95 e5                                      ldr r1, [r5, #0x14]
00794dd0  10 00 94 e5                                      ldr r0, [r4, #0x10]
00794dd4  e4 e7 ed eb                                      bl #0x30ed6c
00794dd8  14 10 94 e5                                      ldr r1, [r4, #0x14]
00794ddc  70 e7 ed eb                                      bl #0x30eba4
00794de0  02 15 e0 e3                                      mvn r1, #0x800000
00794de4  00 60 a0 e1                                      mov r6, r0
00794de8  b1 e5 ed eb                                      bl #0x30e4b4
00794dec  00 00 50 e3                                      cmp r0, #0
00794df0  5c 00 00 0a                                      beq #0x794f68
00794df4  02 11 e0 e3                                      mvn r1, #0x80000000
00794df8  06 00 a0 e1                                      mov r0, r6
00794dfc  02 15 41 e2                                      sub r1, r1, #0x800000
00794e00  e9 e6 ed eb                                      bl #0x30e9ac
00794e04  00 00 50 e3                                      cmp r0, #0
00794e08  56 00 00 0a                                      beq #0x794f68
00794e0c  14 60 84 e5                                      str r6, [r4, #0x14]
00794e10  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00794e14  18 00 94 e5                                      ldr r0, [r4, #0x18]
00794e18  d3 e7 ed eb                                      bl #0x30ed6c
00794e1c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00794e20  5f e7 ed eb                                      bl #0x30eba4
00794e24  02 15 e0 e3                                      mvn r1, #0x800000
00794e28  00 60 a0 e1                                      mov r6, r0
00794e2c  a0 e5 ed eb                                      bl #0x30e4b4
00794e30  00 00 50 e3                                      cmp r0, #0
00794e34  49 00 00 0a                                      beq #0x794f60
00794e38  02 11 e0 e3                                      mvn r1, #0x80000000
00794e3c  06 00 a0 e1                                      mov r0, r6
00794e40  02 15 41 e2                                      sub r1, r1, #0x800000
00794e44  d8 e6 ed eb                                      bl #0x30e9ac
00794e48  00 00 50 e3                                      cmp r0, #0
00794e4c  43 00 00 0a                                      beq #0x794f60
00794e50  1c 60 84 e5                                      str r6, [r4, #0x1c]
00794e54  00 10 94 e5                                      ldr r1, [r4]
00794e58  00 00 95 e5                                      ldr r0, [r5]
00794e5c  c2 e7 ed eb                                      bl #0x30ed6c
00794e60  02 15 e0 e3                                      mvn r1, #0x800000
00794e64  00 60 a0 e1                                      mov r6, r0
00794e68  91 e5 ed eb                                      bl #0x30e4b4
00794e6c  00 00 50 e3                                      cmp r0, #0
00794e70  38 00 00 0a                                      beq #0x794f58
00794e74  02 11 e0 e3                                      mvn r1, #0x80000000
00794e78  06 00 a0 e1                                      mov r0, r6
00794e7c  02 15 41 e2                                      sub r1, r1, #0x800000
00794e80  c9 e6 ed eb                                      bl #0x30e9ac
00794e84  00 00 50 e3                                      cmp r0, #0
00794e88  32 00 00 0a                                      beq #0x794f58
00794e8c  00 60 84 e5                                      str r6, [r4]
00794e90  08 10 94 e5                                      ldr r1, [r4, #8]
00794e94  08 00 95 e5                                      ldr r0, [r5, #8]
00794e98  b3 e7 ed eb                                      bl #0x30ed6c
00794e9c  02 15 e0 e3                                      mvn r1, #0x800000
00794ea0  00 60 a0 e1                                      mov r6, r0
00794ea4  82 e5 ed eb                                      bl #0x30e4b4
00794ea8  00 00 50 e3                                      cmp r0, #0
00794eac  27 00 00 0a                                      beq #0x794f50
00794eb0  02 11 e0 e3                                      mvn r1, #0x80000000
00794eb4  06 00 a0 e1                                      mov r0, r6
00794eb8  02 15 41 e2                                      sub r1, r1, #0x800000
00794ebc  ba e6 ed eb                                      bl #0x30e9ac
00794ec0  00 00 50 e3                                      cmp r0, #0
00794ec4  21 00 00 0a                                      beq #0x794f50
00794ec8  08 60 84 e5                                      str r6, [r4, #8]
00794ecc  10 10 94 e5                                      ldr r1, [r4, #0x10]
00794ed0  10 00 95 e5                                      ldr r0, [r5, #0x10]
00794ed4  a4 e7 ed eb                                      bl #0x30ed6c
00794ed8  02 15 e0 e3                                      mvn r1, #0x800000
00794edc  00 60 a0 e1                                      mov r6, r0
00794ee0  73 e5 ed eb                                      bl #0x30e4b4
00794ee4  00 00 50 e3                                      cmp r0, #0
00794ee8  16 00 00 0a                                      beq #0x794f48
00794eec  02 11 e0 e3                                      mvn r1, #0x80000000
00794ef0  06 00 a0 e1                                      mov r0, r6
00794ef4  02 15 41 e2                                      sub r1, r1, #0x800000
00794ef8  ab e6 ed eb                                      bl #0x30e9ac
00794efc  00 00 50 e3                                      cmp r0, #0
00794f00  10 00 00 0a                                      beq #0x794f48
00794f04  10 60 84 e5                                      str r6, [r4, #0x10]
00794f08  18 00 95 e5                                      ldr r0, [r5, #0x18]
00794f0c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00794f10  95 e7 ed eb                                      bl #0x30ed6c
00794f14  02 15 e0 e3                                      mvn r1, #0x800000
00794f18  00 50 a0 e1                                      mov r5, r0
00794f1c  64 e5 ed eb                                      bl #0x30e4b4
00794f20  00 00 50 e3                                      cmp r0, #0
00794f24  15 00 00 0a                                      beq #0x794f80
00794f28  02 11 e0 e3                                      mvn r1, #0x80000000
00794f2c  05 00 a0 e1                                      mov r0, r5
00794f30  02 15 41 e2                                      sub r1, r1, #0x800000
00794f34  9c e6 ed eb                                      bl #0x30e9ac
00794f38  00 00 50 e3                                      cmp r0, #0
00794f3c  0f 00 00 0a                                      beq #0x794f80
00794f40  18 50 84 e5                                      str r5, [r4, #0x18]
00794f44  70 80 bd e8                                      pop {r4, r5, r6, pc}
00794f48  00 60 a0 e3                                      mov r6, #0
00794f4c  ec ff ff ea                                      b #0x794f04
00794f50  00 60 a0 e3                                      mov r6, #0
00794f54  db ff ff ea                                      b #0x794ec8
00794f58  00 60 a0 e3                                      mov r6, #0
00794f5c  ca ff ff ea                                      b #0x794e8c
00794f60  00 60 a0 e3                                      mov r6, #0
00794f64  b9 ff ff ea                                      b #0x794e50
00794f68  00 60 a0 e3                                      mov r6, #0
00794f6c  a6 ff ff ea                                      b #0x794e0c
00794f70  00 60 a0 e3                                      mov r6, #0
00794f74  93 ff ff ea                                      b #0x794dc8
00794f78  00 60 a0 e3                                      mov r6, #0
00794f7c  80 ff ff ea                                      b #0x794d84
00794f80  00 50 a0 e3                                      mov r5, #0
00794f84  18 50 84 e5                                      str r5, [r4, #0x18]
00794f88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00794f8c, declared_size=420, range_size=420, mode=arm
; class-group: gameswf::cxform
; alias: _ZNK7gameswf6cxform9transformENS_4rgbaE
; demangled: gameswf::cxform::transform(gameswf::rgba) const
; decoder-mode: arm
00794f8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00794f90  00 40 a0 e1                                      mov r4, r0
00794f94  10 d0 4d e2                                      sub sp, sp, #0x10
00794f98  71 00 ef e6                                      uxtb r0, r1
00794f9c  51 64 e7 e7                                      ubfx r6, r1, #8, #8
00794fa0  51 58 e7 e7                                      ubfx r5, r1, #0x10, #8
00794fa4  21 8c a0 e1                                      lsr r8, r1, #0x18
00794fa8  6d e6 ed eb                                      bl #0x30e964
00794fac  00 10 94 e5                                      ldr r1, [r4]
00794fb0  6d e7 ed eb                                      bl #0x30ed6c
00794fb4  04 10 94 e5                                      ldr r1, [r4, #4]
00794fb8  f9 e6 ed eb                                      bl #0x30eba4
00794fbc  43 14 a0 e3                                      mov r1, #0x43000000
00794fc0  7f 18 81 e2                                      add r1, r1, #0x7f0000
00794fc4  00 70 a0 e1                                      mov r7, r0
00794fc8  cf e5 ed eb                                      bl #0x30e70c
00794fcc  00 00 50 e3                                      cmp r0, #0
00794fd0  ff 70 a0 03                                      moveq r7, #0xff
00794fd4  05 00 00 0a                                      beq #0x794ff0
00794fd8  07 00 a0 e1                                      mov r0, r7
00794fdc  00 10 a0 e3                                      mov r1, #0
00794fe0  c4 e4 ed eb                                      bl #0x30e2f8
00794fe4  00 00 50 e3                                      cmp r0, #0
00794fe8  00 70 a0 03                                      moveq r7, #0
00794fec  3f 00 00 1a                                      bne #0x7950f0
00794ff0  06 00 a0 e1                                      mov r0, r6
00794ff4  5a e6 ed eb                                      bl #0x30e964
00794ff8  08 10 94 e5                                      ldr r1, [r4, #8]
00794ffc  5a e7 ed eb                                      bl #0x30ed6c
00795000  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00795004  e6 e6 ed eb                                      bl #0x30eba4
00795008  43 14 a0 e3                                      mov r1, #0x43000000
0079500c  7f 18 81 e2                                      add r1, r1, #0x7f0000
00795010  00 60 a0 e1                                      mov r6, r0
00795014  bc e5 ed eb                                      bl #0x30e70c
00795018  00 00 50 e3                                      cmp r0, #0
0079501c  ff 60 a0 03                                      moveq r6, #0xff
00795020  05 00 00 0a                                      beq #0x79503c
00795024  06 00 a0 e1                                      mov r0, r6
00795028  00 10 a0 e3                                      mov r1, #0
0079502c  b1 e4 ed eb                                      bl #0x30e2f8
00795030  00 00 50 e3                                      cmp r0, #0
00795034  00 60 a0 03                                      moveq r6, #0
00795038  38 00 00 1a                                      bne #0x795120
0079503c  05 00 a0 e1                                      mov r0, r5
00795040  47 e6 ed eb                                      bl #0x30e964
00795044  10 10 94 e5                                      ldr r1, [r4, #0x10]
00795048  47 e7 ed eb                                      bl #0x30ed6c
0079504c  14 10 94 e5                                      ldr r1, [r4, #0x14]
00795050  d3 e6 ed eb                                      bl #0x30eba4
00795054  43 14 a0 e3                                      mov r1, #0x43000000
00795058  7f 18 81 e2                                      add r1, r1, #0x7f0000
0079505c  00 50 a0 e1                                      mov r5, r0
00795060  a9 e5 ed eb                                      bl #0x30e70c
00795064  00 00 50 e3                                      cmp r0, #0
00795068  ff 50 a0 03                                      moveq r5, #0xff
0079506c  05 00 00 0a                                      beq #0x795088
00795070  05 00 a0 e1                                      mov r0, r5
00795074  00 10 a0 e3                                      mov r1, #0
00795078  9e e4 ed eb                                      bl #0x30e2f8
0079507c  00 00 50 e3                                      cmp r0, #0
00795080  00 50 a0 03                                      moveq r5, #0
00795084  21 00 00 1a                                      bne #0x795110
00795088  08 00 a0 e1                                      mov r0, r8
0079508c  34 e6 ed eb                                      bl #0x30e964
00795090  18 10 94 e5                                      ldr r1, [r4, #0x18]
00795094  34 e7 ed eb                                      bl #0x30ed6c
00795098  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0079509c  c0 e6 ed eb                                      bl #0x30eba4
007950a0  43 14 a0 e3                                      mov r1, #0x43000000
007950a4  7f 18 81 e2                                      add r1, r1, #0x7f0000
007950a8  00 40 a0 e1                                      mov r4, r0
007950ac  96 e5 ed eb                                      bl #0x30e70c
007950b0  00 00 50 e3                                      cmp r0, #0
007950b4  ff 30 a0 03                                      moveq r3, #0xff
007950b8  05 00 00 0a                                      beq #0x7950d4
007950bc  04 00 a0 e1                                      mov r0, r4
007950c0  00 10 a0 e3                                      mov r1, #0
007950c4  8b e4 ed eb                                      bl #0x30e2f8
007950c8  00 00 50 e3                                      cmp r0, #0
007950cc  00 30 a0 03                                      moveq r3, #0
007950d0  0a 00 00 1a                                      bne #0x795100
007950d4  00 00 a0 e3                                      mov r0, #0
007950d8  17 00 c7 e7                                      bfi r0, r7, #0, #8
007950dc  16 04 cf e7                                      bfi r0, r6, #8, #8
007950e0  15 08 d7 e7                                      bfi r0, r5, #0x10, #8
007950e4  13 0c df e7                                      bfi r0, r3, #0x18, #8
007950e8  10 d0 8d e2                                      add sp, sp, #0x10
007950ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007950f0  07 00 a0 e1                                      mov r0, r7
007950f4  69 a4 04 eb                                      bl #0x8be2a0
007950f8  70 70 ef e6                                      uxtb r7, r0
007950fc  bb ff ff ea                                      b #0x794ff0
00795100  04 00 a0 e1                                      mov r0, r4
00795104  65 a4 04 eb                                      bl #0x8be2a0
00795108  70 30 ef e6                                      uxtb r3, r0
0079510c  f0 ff ff ea                                      b #0x7950d4
00795110  05 00 a0 e1                                      mov r0, r5
00795114  61 a4 04 eb                                      bl #0x8be2a0
00795118  70 50 ef e6                                      uxtb r5, r0
0079511c  d9 ff ff ea                                      b #0x795088
00795120  06 00 a0 e1                                      mov r0, r6
00795124  5d a4 04 eb                                      bl #0x8be2a0
00795128  70 60 ef e6                                      uxtb r6, r0
0079512c  c2 ff ff ea                                      b #0x79503c

; FUNCTION 0x00795130, declared_size=936, range_size=936, mode=arm
; class-group: gameswf::cxform
; alias: _ZN7gameswf6cxform5clampEv
; demangled: gameswf::cxform::clamp()
; decoder-mode: arm
00795130  70 40 2d e9                                      push {r4, r5, r6, lr}
00795134  00 50 90 e5                                      ldr r5, [r0]
00795138  00 40 a0 e1                                      mov r4, r0
0079513c  fe 15 a0 e3                                      mov r1, #0x3f800000
00795140  05 00 a0 e1                                      mov r0, r5
00795144  70 e5 ed eb                                      bl #0x30e70c
00795148  00 00 50 e3                                      cmp r0, #0
0079514c  fe 55 a0 03                                      moveq r5, #0x3f800000
00795150  05 00 00 0a                                      beq #0x79516c
00795154  05 00 a0 e1                                      mov r0, r5
00795158  00 10 a0 e3                                      mov r1, #0
0079515c  65 e4 ed eb                                      bl #0x30e2f8
00795160  00 00 50 e3                                      cmp r0, #0
00795164  74 00 00 1a                                      bne #0x79533c
00795168  00 50 a0 e3                                      mov r5, #0
0079516c  08 60 94 e5                                      ldr r6, [r4, #8]
00795170  00 50 84 e5                                      str r5, [r4]
00795174  fe 15 a0 e3                                      mov r1, #0x3f800000
00795178  06 00 a0 e1                                      mov r0, r6
0079517c  62 e5 ed eb                                      bl #0x30e70c
00795180  00 00 50 e3                                      cmp r0, #0
00795184  fe 65 a0 03                                      moveq r6, #0x3f800000
00795188  05 00 00 0a                                      beq #0x7951a4
0079518c  06 00 a0 e1                                      mov r0, r6
00795190  00 10 a0 e3                                      mov r1, #0
00795194  57 e4 ed eb                                      bl #0x30e2f8
00795198  00 00 50 e3                                      cmp r0, #0
0079519c  c1 00 00 1a                                      bne #0x7954a8
007951a0  00 60 a0 e3                                      mov r6, #0
007951a4  10 50 94 e5                                      ldr r5, [r4, #0x10]
007951a8  08 60 84 e5                                      str r6, [r4, #8]
007951ac  fe 15 a0 e3                                      mov r1, #0x3f800000
007951b0  05 00 a0 e1                                      mov r0, r5
007951b4  54 e5 ed eb                                      bl #0x30e70c
007951b8  00 00 50 e3                                      cmp r0, #0
007951bc  fe 55 a0 03                                      moveq r5, #0x3f800000
007951c0  05 00 00 0a                                      beq #0x7951dc
007951c4  05 00 a0 e1                                      mov r0, r5
007951c8  00 10 a0 e3                                      mov r1, #0
007951cc  49 e4 ed eb                                      bl #0x30e2f8
007951d0  00 00 50 e3                                      cmp r0, #0
007951d4  a7 00 00 1a                                      bne #0x795478
007951d8  00 50 a0 e3                                      mov r5, #0
007951dc  18 60 94 e5                                      ldr r6, [r4, #0x18]
007951e0  10 50 84 e5                                      str r5, [r4, #0x10]
007951e4  fe 15 a0 e3                                      mov r1, #0x3f800000
007951e8  06 00 a0 e1                                      mov r0, r6
007951ec  46 e5 ed eb                                      bl #0x30e70c
007951f0  00 00 50 e3                                      cmp r0, #0
007951f4  fe 65 a0 03                                      moveq r6, #0x3f800000
007951f8  05 00 00 0a                                      beq #0x795214
007951fc  06 00 a0 e1                                      mov r0, r6
00795200  00 10 a0 e3                                      mov r1, #0
00795204  3b e4 ed eb                                      bl #0x30e2f8
00795208  00 00 50 e3                                      cmp r0, #0
0079520c  8d 00 00 1a                                      bne #0x795448
00795210  00 60 a0 e3                                      mov r6, #0
00795214  04 50 94 e5                                      ldr r5, [r4, #4]
00795218  43 14 a0 e3                                      mov r1, #0x43000000
0079521c  18 60 84 e5                                      str r6, [r4, #0x18]
00795220  05 00 a0 e1                                      mov r0, r5
00795224  7f 18 81 e2                                      add r1, r1, #0x7f0000
00795228  37 e5 ed eb                                      bl #0x30e70c
0079522c  00 00 50 e3                                      cmp r0, #0
00795230  43 54 a0 03                                      moveq r5, #0x43000000
00795234  7f 58 85 02                                      addeq r5, r5, #0x7f0000
00795238  07 00 00 0a                                      beq #0x79525c
0079523c  c3 14 a0 e3                                      mov r1, #0xc3000000
00795240  05 00 a0 e1                                      mov r0, r5
00795244  7f 18 81 e2                                      add r1, r1, #0x7f0000
00795248  2a e4 ed eb                                      bl #0x30e2f8
0079524c  00 00 50 e3                                      cmp r0, #0
00795250  c3 54 a0 03                                      moveq r5, #0xc3000000
00795254  7f 58 85 02                                      addeq r5, r5, #0x7f0000
00795258  6d 00 00 1a                                      bne #0x795414
0079525c  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00795260  43 14 a0 e3                                      mov r1, #0x43000000
00795264  04 50 84 e5                                      str r5, [r4, #4]
00795268  06 00 a0 e1                                      mov r0, r6
0079526c  7f 18 81 e2                                      add r1, r1, #0x7f0000
00795270  25 e5 ed eb                                      bl #0x30e70c
00795274  00 00 50 e3                                      cmp r0, #0
00795278  43 64 a0 03                                      moveq r6, #0x43000000
0079527c  7f 68 86 02                                      addeq r6, r6, #0x7f0000
00795280  07 00 00 0a                                      beq #0x7952a4
00795284  c3 14 a0 e3                                      mov r1, #0xc3000000
00795288  06 00 a0 e1                                      mov r0, r6
0079528c  7f 18 81 e2                                      add r1, r1, #0x7f0000
00795290  18 e4 ed eb                                      bl #0x30e2f8
00795294  00 00 50 e3                                      cmp r0, #0
00795298  c3 64 a0 03                                      moveq r6, #0xc3000000
0079529c  7f 68 86 02                                      addeq r6, r6, #0x7f0000
007952a0  4e 00 00 1a                                      bne #0x7953e0
007952a4  14 50 94 e5                                      ldr r5, [r4, #0x14]
007952a8  43 14 a0 e3                                      mov r1, #0x43000000
007952ac  0c 60 84 e5                                      str r6, [r4, #0xc]
007952b0  05 00 a0 e1                                      mov r0, r5
007952b4  7f 18 81 e2                                      add r1, r1, #0x7f0000
007952b8  13 e5 ed eb                                      bl #0x30e70c
007952bc  00 00 50 e3                                      cmp r0, #0
007952c0  43 54 a0 03                                      moveq r5, #0x43000000
007952c4  7f 58 85 02                                      addeq r5, r5, #0x7f0000
007952c8  07 00 00 0a                                      beq #0x7952ec
007952cc  c3 14 a0 e3                                      mov r1, #0xc3000000
007952d0  05 00 a0 e1                                      mov r0, r5
007952d4  7f 18 81 e2                                      add r1, r1, #0x7f0000
007952d8  06 e4 ed eb                                      bl #0x30e2f8
007952dc  00 00 50 e3                                      cmp r0, #0
007952e0  c3 54 a0 03                                      moveq r5, #0xc3000000
007952e4  7f 58 85 02                                      addeq r5, r5, #0x7f0000
007952e8  2f 00 00 1a                                      bne #0x7953ac
007952ec  1c 60 94 e5                                      ldr r6, [r4, #0x1c]
007952f0  43 14 a0 e3                                      mov r1, #0x43000000
007952f4  14 50 84 e5                                      str r5, [r4, #0x14]
007952f8  06 00 a0 e1                                      mov r0, r6
007952fc  7f 18 81 e2                                      add r1, r1, #0x7f0000
00795300  01 e5 ed eb                                      bl #0x30e70c
00795304  00 00 50 e3                                      cmp r0, #0
00795308  43 64 a0 03                                      moveq r6, #0x43000000
0079530c  7f 68 86 02                                      addeq r6, r6, #0x7f0000
00795310  07 00 00 0a                                      beq #0x795334
00795314  c3 14 a0 e3                                      mov r1, #0xc3000000
00795318  06 00 a0 e1                                      mov r0, r6
0079531c  7f 18 81 e2                                      add r1, r1, #0x7f0000
00795320  f4 e3 ed eb                                      bl #0x30e2f8
00795324  00 00 50 e3                                      cmp r0, #0
00795328  c3 64 a0 03                                      moveq r6, #0xc3000000
0079532c  7f 68 86 02                                      addeq r6, r6, #0x7f0000
00795330  0d 00 00 1a                                      bne #0x79536c
00795334  1c 60 84 e5                                      str r6, [r4, #0x1c]
00795338  70 80 bd e8                                      pop {r4, r5, r6, pc}
0079533c  05 00 a0 e1                                      mov r0, r5
00795340  02 15 e0 e3                                      mvn r1, #0x800000
00795344  5a e4 ed eb                                      bl #0x30e4b4
00795348  00 00 50 e3                                      cmp r0, #0
0079534c  85 ff ff 0a                                      beq #0x795168
00795350  02 11 e0 e3                                      mvn r1, #0x80000000
00795354  05 00 a0 e1                                      mov r0, r5
00795358  02 15 41 e2                                      sub r1, r1, #0x800000
0079535c  92 e5 ed eb                                      bl #0x30e9ac
00795360  00 00 50 e3                                      cmp r0, #0
00795364  7f ff ff 0a                                      beq #0x795168
00795368  7f ff ff ea                                      b #0x79516c
0079536c  06 00 a0 e1                                      mov r0, r6
00795370  02 15 e0 e3                                      mvn r1, #0x800000
00795374  4e e4 ed eb                                      bl #0x30e4b4
00795378  00 00 50 e3                                      cmp r0, #0
0079537c  02 00 00 1a                                      bne #0x79538c
00795380  00 60 a0 e3                                      mov r6, #0
00795384  1c 60 84 e5                                      str r6, [r4, #0x1c]
00795388  70 80 bd e8                                      pop {r4, r5, r6, pc}
0079538c  02 11 e0 e3                                      mvn r1, #0x80000000
00795390  06 00 a0 e1                                      mov r0, r6
00795394  02 15 41 e2                                      sub r1, r1, #0x800000
00795398  83 e5 ed eb                                      bl #0x30e9ac
0079539c  00 00 50 e3                                      cmp r0, #0
007953a0  e3 ff ff 1a                                      bne #0x795334
007953a4  00 60 a0 e3                                      mov r6, #0
007953a8  f5 ff ff ea                                      b #0x795384
007953ac  05 00 a0 e1                                      mov r0, r5
007953b0  02 15 e0 e3                                      mvn r1, #0x800000
007953b4  3e e4 ed eb                                      bl #0x30e4b4
007953b8  00 00 50 e3                                      cmp r0, #0
007953bc  00 50 a0 03                                      moveq r5, #0
007953c0  c9 ff ff 0a                                      beq #0x7952ec
007953c4  02 11 e0 e3                                      mvn r1, #0x80000000
007953c8  05 00 a0 e1                                      mov r0, r5
007953cc  02 15 41 e2                                      sub r1, r1, #0x800000
007953d0  75 e5 ed eb                                      bl #0x30e9ac
007953d4  00 00 50 e3                                      cmp r0, #0
007953d8  00 50 a0 03                                      moveq r5, #0
007953dc  c2 ff ff ea                                      b #0x7952ec
007953e0  06 00 a0 e1                                      mov r0, r6
007953e4  02 15 e0 e3                                      mvn r1, #0x800000
007953e8  31 e4 ed eb                                      bl #0x30e4b4
007953ec  00 00 50 e3                                      cmp r0, #0
007953f0  00 60 a0 03                                      moveq r6, #0
007953f4  aa ff ff 0a                                      beq #0x7952a4
007953f8  02 11 e0 e3                                      mvn r1, #0x80000000
007953fc  06 00 a0 e1                                      mov r0, r6
00795400  02 15 41 e2                                      sub r1, r1, #0x800000
00795404  68 e5 ed eb                                      bl #0x30e9ac
00795408  00 00 50 e3                                      cmp r0, #0
0079540c  00 60 a0 03                                      moveq r6, #0
00795410  a3 ff ff ea                                      b #0x7952a4
00795414  05 00 a0 e1                                      mov r0, r5
00795418  02 15 e0 e3                                      mvn r1, #0x800000
0079541c  24 e4 ed eb                                      bl #0x30e4b4
00795420  00 00 50 e3                                      cmp r0, #0
00795424  00 50 a0 03                                      moveq r5, #0
00795428  8b ff ff 0a                                      beq #0x79525c
0079542c  02 11 e0 e3                                      mvn r1, #0x80000000
00795430  05 00 a0 e1                                      mov r0, r5
00795434  02 15 41 e2                                      sub r1, r1, #0x800000
00795438  5b e5 ed eb                                      bl #0x30e9ac
0079543c  00 00 50 e3                                      cmp r0, #0
00795440  00 50 a0 03                                      moveq r5, #0
00795444  84 ff ff ea                                      b #0x79525c
00795448  06 00 a0 e1                                      mov r0, r6
0079544c  02 15 e0 e3                                      mvn r1, #0x800000
00795450  17 e4 ed eb                                      bl #0x30e4b4
00795454  00 00 50 e3                                      cmp r0, #0
00795458  6c ff ff 0a                                      beq #0x795210
0079545c  02 11 e0 e3                                      mvn r1, #0x80000000
00795460  06 00 a0 e1                                      mov r0, r6
00795464  02 15 41 e2                                      sub r1, r1, #0x800000
00795468  4f e5 ed eb                                      bl #0x30e9ac
0079546c  00 00 50 e3                                      cmp r0, #0
00795470  66 ff ff 0a                                      beq #0x795210
00795474  66 ff ff ea                                      b #0x795214
00795478  05 00 a0 e1                                      mov r0, r5
0079547c  02 15 e0 e3                                      mvn r1, #0x800000
00795480  0b e4 ed eb                                      bl #0x30e4b4
00795484  00 00 50 e3                                      cmp r0, #0
00795488  52 ff ff 0a                                      beq #0x7951d8
0079548c  02 11 e0 e3                                      mvn r1, #0x80000000
00795490  05 00 a0 e1                                      mov r0, r5
00795494  02 15 41 e2                                      sub r1, r1, #0x800000
00795498  43 e5 ed eb                                      bl #0x30e9ac
0079549c  00 00 50 e3                                      cmp r0, #0
007954a0  4c ff ff 0a                                      beq #0x7951d8
007954a4  4c ff ff ea                                      b #0x7951dc
007954a8  06 00 a0 e1                                      mov r0, r6
007954ac  02 15 e0 e3                                      mvn r1, #0x800000
007954b0  ff e3 ed eb                                      bl #0x30e4b4
007954b4  00 00 50 e3                                      cmp r0, #0
007954b8  38 ff ff 0a                                      beq #0x7951a0
007954bc  02 11 e0 e3                                      mvn r1, #0x80000000
007954c0  06 00 a0 e1                                      mov r0, r6
007954c4  02 15 41 e2                                      sub r1, r1, #0x800000
007954c8  37 e5 ed eb                                      bl #0x30e9ac
007954cc  00 00 50 e3                                      cmp r0, #0
007954d0  32 ff ff 0a                                      beq #0x7951a0
007954d4  32 ff ff ea                                      b #0x7951a4

; FUNCTION 0x00795e64, declared_size=224, range_size=224, mode=arm
; class-group: gameswf::cxform
; alias: _ZNK7gameswf6cxform5printEv
; demangled: gameswf::cxform::print() const
; decoder-mode: arm
00795e64  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00795e68  00 40 a0 e1                                      mov r4, r0
00795e6c  c8 00 9f e5                                      ldr r0, [pc, #0xc8]
00795e70  0c d0 4d e2                                      sub sp, sp, #0xc
00795e74  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
00795e78  00 00 8f e0                                      add r0, pc, r0
00795e7c  db 2c ff eb                                      bl #0x7611f0
00795e80  00 00 94 e5                                      ldr r0, [r4]
00795e84  86 e2 ed eb                                      bl #0x30e8a4
00795e88  00 60 a0 e1                                      mov r6, r0
00795e8c  04 00 94 e5                                      ldr r0, [r4, #4]
00795e90  01 70 a0 e1                                      mov r7, r1
00795e94  82 e2 ed eb                                      bl #0x30e8a4
00795e98  05 50 8f e0                                      add r5, pc, r5
00795e9c  06 20 a0 e1                                      mov r2, r6
00795ea0  07 30 a0 e1                                      mov r3, r7
00795ea4  f0 00 cd e1                                      strd r0, r1, [sp]
00795ea8  05 00 a0 e1                                      mov r0, r5
00795eac  cf 2c ff eb                                      bl #0x7611f0
00795eb0  08 00 94 e5                                      ldr r0, [r4, #8]
00795eb4  7a e2 ed eb                                      bl #0x30e8a4
00795eb8  00 60 a0 e1                                      mov r6, r0
00795ebc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00795ec0  01 70 a0 e1                                      mov r7, r1
00795ec4  76 e2 ed eb                                      bl #0x30e8a4
00795ec8  06 20 a0 e1                                      mov r2, r6
00795ecc  07 30 a0 e1                                      mov r3, r7
00795ed0  f0 00 cd e1                                      strd r0, r1, [sp]
00795ed4  05 00 a0 e1                                      mov r0, r5
00795ed8  c4 2c ff eb                                      bl #0x7611f0
00795edc  10 00 94 e5                                      ldr r0, [r4, #0x10]
00795ee0  6f e2 ed eb                                      bl #0x30e8a4
00795ee4  00 60 a0 e1                                      mov r6, r0
00795ee8  14 00 94 e5                                      ldr r0, [r4, #0x14]
00795eec  01 70 a0 e1                                      mov r7, r1
00795ef0  6b e2 ed eb                                      bl #0x30e8a4
00795ef4  06 20 a0 e1                                      mov r2, r6
00795ef8  07 30 a0 e1                                      mov r3, r7
00795efc  f0 00 cd e1                                      strd r0, r1, [sp]
00795f00  05 00 a0 e1                                      mov r0, r5
00795f04  b9 2c ff eb                                      bl #0x7611f0
00795f08  18 00 94 e5                                      ldr r0, [r4, #0x18]
00795f0c  64 e2 ed eb                                      bl #0x30e8a4
00795f10  00 60 a0 e1                                      mov r6, r0
00795f14  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00795f18  01 70 a0 e1                                      mov r7, r1
00795f1c  60 e2 ed eb                                      bl #0x30e8a4
00795f20  06 20 a0 e1                                      mov r2, r6
00795f24  f0 00 cd e1                                      strd r0, r1, [sp]
00795f28  07 30 a0 e1                                      mov r3, r7
00795f2c  05 00 a0 e1                                      mov r0, r5
00795f30  ae 2c ff eb                                      bl #0x7611f0
00795f34  0c d0 8d e2                                      add sp, sp, #0xc
00795f38  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00795f3c  d8 41 17 00 d0 41 17 00                          .byte 0xd8, 0x41, 0x17, 0x00, 0xd0, 0x41, 0x17, 0x00

; FUNCTION 0x00796064, declared_size=756, range_size=756, mode=arm
; class-group: gameswf::cxform
; alias: _ZN7gameswf6cxform9read_rgbaEPNS_6streamE
; demangled: gameswf::cxform::read_rgba(gameswf::stream*)
; decoder-mode: arm
00796064  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00796068  01 50 a0 e1                                      mov r5, r1
0079606c  00 40 a0 e1                                      mov r4, r0
00796070  01 00 a0 e1                                      mov r0, r1
00796074  a7 b6 ff eb                                      bl #0x783b18
00796078  01 10 a0 e3                                      mov r1, #1
0079607c  05 00 a0 e1                                      mov r0, r5
00796080  47 b6 ff eb                                      bl #0x7839a4
00796084  01 10 a0 e3                                      mov r1, #1
00796088  00 70 a0 e1                                      mov r7, r0
0079608c  05 00 a0 e1                                      mov r0, r5
00796090  43 b6 ff eb                                      bl #0x7839a4
00796094  04 10 a0 e3                                      mov r1, #4
00796098  00 80 a0 e1                                      mov r8, r0
0079609c  05 00 a0 e1                                      mov r0, r5
007960a0  3f b6 ff eb                                      bl #0x7839a4
007960a4  00 00 58 e3                                      cmp r8, #0
007960a8  00 60 a0 e1                                      mov r6, r0
007960ac  0c 00 00 1a                                      bne #0x7960e4
007960b0  fe 35 a0 e3                                      mov r3, #0x3f800000
007960b4  00 00 57 e3                                      cmp r7, #0
007960b8  18 30 84 e5                                      str r3, [r4, #0x18]
007960bc  00 30 84 e5                                      str r3, [r4]
007960c0  08 30 84 e5                                      str r3, [r4, #8]
007960c4  10 30 84 e5                                      str r3, [r4, #0x10]
007960c8  40 00 00 1a                                      bne #0x7961d0
007960cc  00 30 a0 e3                                      mov r3, #0
007960d0  1c 30 84 e5                                      str r3, [r4, #0x1c]
007960d4  04 30 84 e5                                      str r3, [r4, #4]
007960d8  0c 30 84 e5                                      str r3, [r4, #0xc]
007960dc  14 30 84 e5                                      str r3, [r4, #0x14]
007960e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007960e4  00 10 a0 e1                                      mov r1, r0
007960e8  05 00 a0 e1                                      mov r0, r5
007960ec  5d b6 ff eb                                      bl #0x783a68
007960f0  1b e2 ed eb                                      bl #0x30e964
007960f4  ee 15 a0 e3                                      mov r1, #0x3b800000
007960f8  1b e3 ed eb                                      bl #0x30ed6c
007960fc  02 15 e0 e3                                      mvn r1, #0x800000
00796100  00 80 a0 e1                                      mov r8, r0
00796104  ea e0 ed eb                                      bl #0x30e4b4
00796108  00 00 50 e3                                      cmp r0, #0
0079610c  87 00 00 1a                                      bne #0x796330
00796110  00 80 a0 e3                                      mov r8, #0
00796114  06 10 a0 e1                                      mov r1, r6
00796118  00 80 84 e5                                      str r8, [r4]
0079611c  05 00 a0 e1                                      mov r0, r5
00796120  50 b6 ff eb                                      bl #0x783a68
00796124  0e e2 ed eb                                      bl #0x30e964
00796128  ee 15 a0 e3                                      mov r1, #0x3b800000
0079612c  0e e3 ed eb                                      bl #0x30ed6c
00796130  02 15 e0 e3                                      mvn r1, #0x800000
00796134  00 80 a0 e1                                      mov r8, r0
00796138  dd e0 ed eb                                      bl #0x30e4b4
0079613c  00 00 50 e3                                      cmp r0, #0
00796140  73 00 00 1a                                      bne #0x796314
00796144  00 80 a0 e3                                      mov r8, #0
00796148  06 10 a0 e1                                      mov r1, r6
0079614c  08 80 84 e5                                      str r8, [r4, #8]
00796150  05 00 a0 e1                                      mov r0, r5
00796154  43 b6 ff eb                                      bl #0x783a68
00796158  01 e2 ed eb                                      bl #0x30e964
0079615c  ee 15 a0 e3                                      mov r1, #0x3b800000
00796160  01 e3 ed eb                                      bl #0x30ed6c
00796164  02 15 e0 e3                                      mvn r1, #0x800000
00796168  00 80 a0 e1                                      mov r8, r0
0079616c  d0 e0 ed eb                                      bl #0x30e4b4
00796170  00 00 50 e3                                      cmp r0, #0
00796174  5f 00 00 1a                                      bne #0x7962f8
00796178  00 80 a0 e3                                      mov r8, #0
0079617c  06 10 a0 e1                                      mov r1, r6
00796180  10 80 84 e5                                      str r8, [r4, #0x10]
00796184  05 00 a0 e1                                      mov r0, r5
00796188  36 b6 ff eb                                      bl #0x783a68
0079618c  f4 e1 ed eb                                      bl #0x30e964
00796190  ee 15 a0 e3                                      mov r1, #0x3b800000
00796194  f4 e2 ed eb                                      bl #0x30ed6c
00796198  02 15 e0 e3                                      mvn r1, #0x800000
0079619c  00 80 a0 e1                                      mov r8, r0
007961a0  c3 e0 ed eb                                      bl #0x30e4b4
007961a4  00 00 50 e3                                      cmp r0, #0
007961a8  3a 00 00 0a                                      beq #0x796298
007961ac  02 11 e0 e3                                      mvn r1, #0x80000000
007961b0  08 00 a0 e1                                      mov r0, r8
007961b4  02 15 41 e2                                      sub r1, r1, #0x800000
007961b8  fb e1 ed eb                                      bl #0x30e9ac
007961bc  00 00 50 e3                                      cmp r0, #0
007961c0  34 00 00 0a                                      beq #0x796298
007961c4  18 80 84 e5                                      str r8, [r4, #0x18]
007961c8  00 00 57 e3                                      cmp r7, #0
007961cc  be ff ff 0a                                      beq #0x7960cc
007961d0  06 10 a0 e1                                      mov r1, r6
007961d4  05 00 a0 e1                                      mov r0, r5
007961d8  22 b6 ff eb                                      bl #0x783a68
007961dc  e0 e1 ed eb                                      bl #0x30e964
007961e0  02 15 e0 e3                                      mvn r1, #0x800000
007961e4  00 70 a0 e1                                      mov r7, r0
007961e8  b1 e0 ed eb                                      bl #0x30e4b4
007961ec  00 00 50 e3                                      cmp r0, #0
007961f0  39 00 00 1a                                      bne #0x7962dc
007961f4  00 70 a0 e3                                      mov r7, #0
007961f8  06 10 a0 e1                                      mov r1, r6
007961fc  04 70 84 e5                                      str r7, [r4, #4]
00796200  05 00 a0 e1                                      mov r0, r5
00796204  17 b6 ff eb                                      bl #0x783a68
00796208  d5 e1 ed eb                                      bl #0x30e964
0079620c  02 15 e0 e3                                      mvn r1, #0x800000
00796210  00 70 a0 e1                                      mov r7, r0
00796214  a6 e0 ed eb                                      bl #0x30e4b4
00796218  00 00 50 e3                                      cmp r0, #0
0079621c  27 00 00 1a                                      bne #0x7962c0
00796220  00 70 a0 e3                                      mov r7, #0
00796224  06 10 a0 e1                                      mov r1, r6
00796228  0c 70 84 e5                                      str r7, [r4, #0xc]
0079622c  05 00 a0 e1                                      mov r0, r5
00796230  0c b6 ff eb                                      bl #0x783a68
00796234  ca e1 ed eb                                      bl #0x30e964
00796238  02 15 e0 e3                                      mvn r1, #0x800000
0079623c  00 70 a0 e1                                      mov r7, r0
00796240  9b e0 ed eb                                      bl #0x30e4b4
00796244  00 00 50 e3                                      cmp r0, #0
00796248  15 00 00 1a                                      bne #0x7962a4
0079624c  00 70 a0 e3                                      mov r7, #0
00796250  06 10 a0 e1                                      mov r1, r6
00796254  05 00 a0 e1                                      mov r0, r5
00796258  14 70 84 e5                                      str r7, [r4, #0x14]
0079625c  01 b6 ff eb                                      bl #0x783a68
00796260  bf e1 ed eb                                      bl #0x30e964
00796264  02 15 e0 e3                                      mvn r1, #0x800000
00796268  00 50 a0 e1                                      mov r5, r0
0079626c  90 e0 ed eb                                      bl #0x30e4b4
00796270  00 00 50 e3                                      cmp r0, #0
00796274  34 00 00 0a                                      beq #0x79634c
00796278  02 11 e0 e3                                      mvn r1, #0x80000000
0079627c  05 00 a0 e1                                      mov r0, r5
00796280  02 15 41 e2                                      sub r1, r1, #0x800000
00796284  c8 e1 ed eb                                      bl #0x30e9ac
00796288  00 00 50 e3                                      cmp r0, #0
0079628c  2e 00 00 0a                                      beq #0x79634c
00796290  1c 50 84 e5                                      str r5, [r4, #0x1c]
00796294  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00796298  00 80 a0 e3                                      mov r8, #0
0079629c  18 80 84 e5                                      str r8, [r4, #0x18]
007962a0  c8 ff ff ea                                      b #0x7961c8
007962a4  02 11 e0 e3                                      mvn r1, #0x80000000
007962a8  07 00 a0 e1                                      mov r0, r7
007962ac  02 15 41 e2                                      sub r1, r1, #0x800000
007962b0  bd e1 ed eb                                      bl #0x30e9ac
007962b4  00 00 50 e3                                      cmp r0, #0
007962b8  e4 ff ff 1a                                      bne #0x796250
007962bc  e2 ff ff ea                                      b #0x79624c
007962c0  02 11 e0 e3                                      mvn r1, #0x80000000
007962c4  07 00 a0 e1                                      mov r0, r7
007962c8  02 15 41 e2                                      sub r1, r1, #0x800000
007962cc  b6 e1 ed eb                                      bl #0x30e9ac
007962d0  00 00 50 e3                                      cmp r0, #0
007962d4  d2 ff ff 1a                                      bne #0x796224
007962d8  d0 ff ff ea                                      b #0x796220
007962dc  02 11 e0 e3                                      mvn r1, #0x80000000
007962e0  07 00 a0 e1                                      mov r0, r7
007962e4  02 15 41 e2                                      sub r1, r1, #0x800000
007962e8  af e1 ed eb                                      bl #0x30e9ac
007962ec  00 00 50 e3                                      cmp r0, #0
007962f0  c0 ff ff 1a                                      bne #0x7961f8
007962f4  be ff ff ea                                      b #0x7961f4
007962f8  02 11 e0 e3                                      mvn r1, #0x80000000
007962fc  08 00 a0 e1                                      mov r0, r8
00796300  02 15 41 e2                                      sub r1, r1, #0x800000
00796304  a8 e1 ed eb                                      bl #0x30e9ac
00796308  00 00 50 e3                                      cmp r0, #0
0079630c  9a ff ff 1a                                      bne #0x79617c
00796310  98 ff ff ea                                      b #0x796178
00796314  02 11 e0 e3                                      mvn r1, #0x80000000
00796318  08 00 a0 e1                                      mov r0, r8
0079631c  02 15 41 e2                                      sub r1, r1, #0x800000
00796320  a1 e1 ed eb                                      bl #0x30e9ac
00796324  00 00 50 e3                                      cmp r0, #0
00796328  86 ff ff 1a                                      bne #0x796148
0079632c  84 ff ff ea                                      b #0x796144
00796330  02 11 e0 e3                                      mvn r1, #0x80000000
00796334  08 00 a0 e1                                      mov r0, r8
00796338  02 15 41 e2                                      sub r1, r1, #0x800000
0079633c  9a e1 ed eb                                      bl #0x30e9ac
00796340  00 00 50 e3                                      cmp r0, #0
00796344  72 ff ff 1a                                      bne #0x796114
00796348  70 ff ff ea                                      b #0x796110
0079634c  00 50 a0 e3                                      mov r5, #0
00796350  1c 50 84 e5                                      str r5, [r4, #0x1c]
00796354  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00796358, declared_size=636, range_size=636, mode=arm
; class-group: gameswf::cxform
; alias: _ZN7gameswf6cxform8read_rgbEPNS_6streamE
; demangled: gameswf::cxform::read_rgb(gameswf::stream*)
; decoder-mode: arm
00796358  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0079635c  01 50 a0 e1                                      mov r5, r1
00796360  00 40 a0 e1                                      mov r4, r0
00796364  01 00 a0 e1                                      mov r0, r1
00796368  ea b5 ff eb                                      bl #0x783b18
0079636c  01 10 a0 e3                                      mov r1, #1
00796370  05 00 a0 e1                                      mov r0, r5
00796374  8a b5 ff eb                                      bl #0x7839a4
00796378  01 10 a0 e3                                      mov r1, #1
0079637c  00 70 a0 e1                                      mov r7, r0
00796380  05 00 a0 e1                                      mov r0, r5
00796384  86 b5 ff eb                                      bl #0x7839a4
00796388  04 10 a0 e3                                      mov r1, #4
0079638c  00 80 a0 e1                                      mov r8, r0
00796390  05 00 a0 e1                                      mov r0, r5
00796394  82 b5 ff eb                                      bl #0x7839a4
00796398  00 00 58 e3                                      cmp r8, #0
0079639c  00 60 a0 e1                                      mov r6, r0
007963a0  0c 00 00 1a                                      bne #0x7963d8
007963a4  fe 35 a0 e3                                      mov r3, #0x3f800000
007963a8  00 00 57 e3                                      cmp r7, #0
007963ac  18 30 84 e5                                      str r3, [r4, #0x18]
007963b0  00 30 84 e5                                      str r3, [r4]
007963b4  08 30 84 e5                                      str r3, [r4, #8]
007963b8  10 30 84 e5                                      str r3, [r4, #0x10]
007963bc  33 00 00 1a                                      bne #0x796490
007963c0  00 30 a0 e3                                      mov r3, #0
007963c4  1c 30 84 e5                                      str r3, [r4, #0x1c]
007963c8  04 30 84 e5                                      str r3, [r4, #4]
007963cc  0c 30 84 e5                                      str r3, [r4, #0xc]
007963d0  14 30 84 e5                                      str r3, [r4, #0x14]
007963d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007963d8  00 10 a0 e1                                      mov r1, r0
007963dc  05 00 a0 e1                                      mov r0, r5
007963e0  a0 b5 ff eb                                      bl #0x783a68
007963e4  5e e1 ed eb                                      bl #0x30e964
007963e8  43 14 a0 e3                                      mov r1, #0x43000000
007963ec  7f 18 81 e2                                      add r1, r1, #0x7f0000
007963f0  27 e2 ed eb                                      bl #0x30ec94
007963f4  02 15 e0 e3                                      mvn r1, #0x800000
007963f8  00 80 a0 e1                                      mov r8, r0
007963fc  2c e0 ed eb                                      bl #0x30e4b4
00796400  00 00 50 e3                                      cmp r0, #0
00796404  66 00 00 1a                                      bne #0x7965a4
00796408  00 80 a0 e3                                      mov r8, #0
0079640c  06 10 a0 e1                                      mov r1, r6
00796410  00 80 84 e5                                      str r8, [r4]
00796414  05 00 a0 e1                                      mov r0, r5
00796418  92 b5 ff eb                                      bl #0x783a68
0079641c  50 e1 ed eb                                      bl #0x30e964
00796420  43 14 a0 e3                                      mov r1, #0x43000000
00796424  7f 18 81 e2                                      add r1, r1, #0x7f0000
00796428  19 e2 ed eb                                      bl #0x30ec94
0079642c  02 15 e0 e3                                      mvn r1, #0x800000
00796430  00 80 a0 e1                                      mov r8, r0
00796434  1e e0 ed eb                                      bl #0x30e4b4
00796438  00 00 50 e3                                      cmp r0, #0
0079643c  51 00 00 1a                                      bne #0x796588
00796440  00 80 a0 e3                                      mov r8, #0
00796444  06 10 a0 e1                                      mov r1, r6
00796448  08 80 84 e5                                      str r8, [r4, #8]
0079644c  05 00 a0 e1                                      mov r0, r5
00796450  84 b5 ff eb                                      bl #0x783a68
00796454  42 e1 ed eb                                      bl #0x30e964
00796458  43 14 a0 e3                                      mov r1, #0x43000000
0079645c  7f 18 81 e2                                      add r1, r1, #0x7f0000
00796460  0b e2 ed eb                                      bl #0x30ec94
00796464  02 15 e0 e3                                      mvn r1, #0x800000
00796468  00 80 a0 e1                                      mov r8, r0
0079646c  10 e0 ed eb                                      bl #0x30e4b4
00796470  00 00 50 e3                                      cmp r0, #0
00796474  3c 00 00 1a                                      bne #0x79656c
00796478  00 80 a0 e3                                      mov r8, #0
0079647c  fe 35 a0 e3                                      mov r3, #0x3f800000
00796480  00 00 57 e3                                      cmp r7, #0
00796484  10 80 84 e5                                      str r8, [r4, #0x10]
00796488  18 30 84 e5                                      str r3, [r4, #0x18]
0079648c  cb ff ff 0a                                      beq #0x7963c0
00796490  06 10 a0 e1                                      mov r1, r6
00796494  05 00 a0 e1                                      mov r0, r5
00796498  72 b5 ff eb                                      bl #0x783a68
0079649c  30 e1 ed eb                                      bl #0x30e964
007964a0  02 15 e0 e3                                      mvn r1, #0x800000
007964a4  00 70 a0 e1                                      mov r7, r0
007964a8  01 e0 ed eb                                      bl #0x30e4b4
007964ac  00 00 50 e3                                      cmp r0, #0
007964b0  26 00 00 1a                                      bne #0x796550
007964b4  00 70 a0 e3                                      mov r7, #0
007964b8  06 10 a0 e1                                      mov r1, r6
007964bc  04 70 84 e5                                      str r7, [r4, #4]
007964c0  05 00 a0 e1                                      mov r0, r5
007964c4  67 b5 ff eb                                      bl #0x783a68
007964c8  25 e1 ed eb                                      bl #0x30e964
007964cc  02 15 e0 e3                                      mvn r1, #0x800000
007964d0  00 70 a0 e1                                      mov r7, r0
007964d4  f6 df ed eb                                      bl #0x30e4b4
007964d8  00 00 50 e3                                      cmp r0, #0
007964dc  14 00 00 1a                                      bne #0x796534
007964e0  00 70 a0 e3                                      mov r7, #0
007964e4  06 10 a0 e1                                      mov r1, r6
007964e8  05 00 a0 e1                                      mov r0, r5
007964ec  0c 70 84 e5                                      str r7, [r4, #0xc]
007964f0  5c b5 ff eb                                      bl #0x783a68
007964f4  1a e1 ed eb                                      bl #0x30e964
007964f8  02 15 e0 e3                                      mvn r1, #0x800000
007964fc  00 50 a0 e1                                      mov r5, r0
00796500  eb df ed eb                                      bl #0x30e4b4
00796504  00 00 50 e3                                      cmp r0, #0
00796508  2c 00 00 0a                                      beq #0x7965c0
0079650c  02 11 e0 e3                                      mvn r1, #0x80000000
00796510  05 00 a0 e1                                      mov r0, r5
00796514  02 15 41 e2                                      sub r1, r1, #0x800000
00796518  23 e1 ed eb                                      bl #0x30e9ac
0079651c  00 00 50 e3                                      cmp r0, #0
00796520  26 00 00 0a                                      beq #0x7965c0
00796524  fe 35 a0 e3                                      mov r3, #0x3f800000
00796528  14 50 84 e5                                      str r5, [r4, #0x14]
0079652c  1c 30 84 e5                                      str r3, [r4, #0x1c]
00796530  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00796534  02 11 e0 e3                                      mvn r1, #0x80000000
00796538  07 00 a0 e1                                      mov r0, r7
0079653c  02 15 41 e2                                      sub r1, r1, #0x800000
00796540  19 e1 ed eb                                      bl #0x30e9ac
00796544  00 00 50 e3                                      cmp r0, #0
00796548  e5 ff ff 1a                                      bne #0x7964e4
0079654c  e3 ff ff ea                                      b #0x7964e0
00796550  02 11 e0 e3                                      mvn r1, #0x80000000
00796554  07 00 a0 e1                                      mov r0, r7
00796558  02 15 41 e2                                      sub r1, r1, #0x800000
0079655c  12 e1 ed eb                                      bl #0x30e9ac
00796560  00 00 50 e3                                      cmp r0, #0
00796564  d3 ff ff 1a                                      bne #0x7964b8
00796568  d1 ff ff ea                                      b #0x7964b4
0079656c  02 11 e0 e3                                      mvn r1, #0x80000000
00796570  08 00 a0 e1                                      mov r0, r8
00796574  02 15 41 e2                                      sub r1, r1, #0x800000
00796578  0b e1 ed eb                                      bl #0x30e9ac
0079657c  00 00 50 e3                                      cmp r0, #0
00796580  bd ff ff 1a                                      bne #0x79647c
00796584  bb ff ff ea                                      b #0x796478
00796588  02 11 e0 e3                                      mvn r1, #0x80000000
0079658c  08 00 a0 e1                                      mov r0, r8
00796590  02 15 41 e2                                      sub r1, r1, #0x800000
00796594  04 e1 ed eb                                      bl #0x30e9ac
00796598  00 00 50 e3                                      cmp r0, #0
0079659c  a8 ff ff 1a                                      bne #0x796444
007965a0  a6 ff ff ea                                      b #0x796440
007965a4  02 11 e0 e3                                      mvn r1, #0x80000000
007965a8  08 00 a0 e1                                      mov r0, r8
007965ac  02 15 41 e2                                      sub r1, r1, #0x800000
007965b0  fd e0 ed eb                                      bl #0x30e9ac
007965b4  00 00 50 e3                                      cmp r0, #0
007965b8  93 ff ff 1a                                      bne #0x79640c
007965bc  91 ff ff ea                                      b #0x796408
007965c0  00 50 a0 e3                                      mov r5, #0
007965c4  fe 35 a0 e3                                      mov r3, #0x3f800000
007965c8  14 50 84 e5                                      str r5, [r4, #0x14]
007965cc  1c 30 84 e5                                      str r3, [r4, #0x1c]
007965d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
