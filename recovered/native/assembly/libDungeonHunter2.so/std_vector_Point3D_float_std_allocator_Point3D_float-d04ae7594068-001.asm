; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003424b8, declared_size=216, range_size=216, mode=arm
; class-group: std::vector<Point3D<float>, std::allocator<Point3D<float> > >
; alias: _ZNSt6vectorI7Point3DIfESaIS1_EEC1ERKS3_
; demangled: std::vector<Point3D<float>, std::allocator<Point3D<float> > >::vector(std::vector<Point3D<float>, std::allocator<Point3D<float> > > const&)
; decoder-mode: arm
003424b8  30 40 2d e9                                      push {r4, r5, lr}
003424bc  01 50 a0 e1                                      mov r5, r1
003424c0  00 30 95 e5                                      ldr r3, [r5]
003424c4  04 10 91 e5                                      ldr r1, [r1, #4]
003424c8  0c d0 4d e2                                      sub sp, sp, #0xc
003424cc  00 40 a0 e1                                      mov r4, r0
003424d0  01 30 63 e0                                      rsb r3, r3, r1
003424d4  43 31 a0 e1                                      asr r3, r3, #2
003424d8  00 c0 a0 e3                                      mov ip, #0
003424dc  03 11 83 e0                                      add r1, r3, r3, lsl #2
003424e0  08 20 8d e2                                      add r2, sp, #8
003424e4  01 12 81 e0                                      add r1, r1, r1, lsl #4
003424e8  00 c0 84 e5                                      str ip, [r4]
003424ec  01 14 81 e0                                      add r1, r1, r1, lsl #8
003424f0  04 c0 84 e5                                      str ip, [r4, #4]
003424f4  01 18 81 e0                                      add r1, r1, r1, lsl #16
003424f8  08 c0 a0 e5                                      str ip, [r0, #8]!
003424fc  81 10 83 e0                                      add r1, r3, r1, lsl #1
00342500  04 10 22 e5                                      str r1, [r2, #-4]!
00342504  64 42 ff eb                                      bl #0x312e9c
00342508  04 30 9d e5                                      ldr r3, [sp, #4]
0034250c  0c 20 a0 e3                                      mov r2, #0xc
00342510  00 00 84 e5                                      str r0, [r4]
00342514  92 03 23 e0                                      mla r3, r2, r3, r0
00342518  09 00 84 e9                                      stmib r4, {r0, r3}
0034251c  04 20 95 e5                                      ldr r2, [r5, #4]
00342520  00 30 95 e5                                      ldr r3, [r5]
00342524  02 20 63 e0                                      rsb r2, r3, r2
00342528  42 21 a0 e1                                      asr r2, r2, #2
0034252c  02 51 82 e0                                      add r5, r2, r2, lsl #2
00342530  05 52 85 e0                                      add r5, r5, r5, lsl #4
00342534  05 54 85 e0                                      add r5, r5, r5, lsl #8
00342538  05 58 85 e0                                      add r5, r5, r5, lsl #16
0034253c  85 50 82 e0                                      add r5, r2, r5, lsl #1
00342540  00 00 55 e3                                      cmp r5, #0
00342544  0d 00 00 da                                      ble #0x342580
00342548  05 10 a0 e1                                      mov r1, r5
0034254c  00 20 a0 e1                                      mov r2, r0
00342550  00 c0 93 e5                                      ldr ip, [r3]
00342554  01 10 51 e2                                      subs r1, r1, #1
00342558  00 c0 82 e5                                      str ip, [r2]
0034255c  04 c0 93 e5                                      ldr ip, [r3, #4]
00342560  04 c0 82 e5                                      str ip, [r2, #4]
00342564  08 c0 93 e5                                      ldr ip, [r3, #8]
00342568  0c 30 83 e2                                      add r3, r3, #0xc
0034256c  08 c0 82 e5                                      str ip, [r2, #8]
00342570  0c 20 82 e2                                      add r2, r2, #0xc
00342574  f5 ff ff 1a                                      bne #0x342550
00342578  0c 30 a0 e3                                      mov r3, #0xc
0034257c  93 05 20 e0                                      mla r0, r3, r5, r0
00342580  04 00 84 e5                                      str r0, [r4, #4]
00342584  04 00 a0 e1                                      mov r0, r4
00342588  0c d0 8d e2                                      add sp, sp, #0xc
0034258c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0034611c, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<Point3D<float>, std::allocator<Point3D<float> > >
; alias: _ZNSt6vectorI7Point3DIfESaIS1_EED1Ev
; demangled: std::vector<Point3D<float>, std::allocator<Point3D<float> > >::~vector()
; decoder-mode: arm
0034611c  10 40 2d e9                                      push {r4, lr}
00346120  00 40 a0 e1                                      mov r4, r0
00346124  00 00 90 e5                                      ldr r0, [r0]
00346128  00 00 50 e3                                      cmp r0, #0
0034612c  0c 00 00 0a                                      beq #0x346164
00346130  08 30 94 e5                                      ldr r3, [r4, #8]
00346134  03 30 60 e0                                      rsb r3, r0, r3
00346138  43 31 a0 e1                                      asr r3, r3, #2
0034613c  03 11 83 e0                                      add r1, r3, r3, lsl #2
00346140  01 12 81 e0                                      add r1, r1, r1, lsl #4
00346144  01 14 81 e0                                      add r1, r1, r1, lsl #8
00346148  01 18 81 e0                                      add r1, r1, r1, lsl #16
0034614c  81 30 83 e0                                      add r3, r3, r1, lsl #1
00346150  0c 10 a0 e3                                      mov r1, #0xc
00346154  91 03 01 e0                                      mul r1, r1, r3
00346158  80 00 51 e3                                      cmp r1, #0x80
0034615c  02 00 00 8a                                      bhi #0x34616c
00346160  66 0b 0f eb                                      bl #0x708f00
00346164  04 00 a0 e1                                      mov r0, r4
00346168  10 80 bd e8                                      pop {r4, pc}
0034616c  b3 28 ff eb                                      bl #0x310440
00346170  04 00 a0 e1                                      mov r0, r4
00346174  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003f8c40, declared_size=628, range_size=628, mode=arm
; class-group: std::vector<Point3D<float>, std::allocator<Point3D<float> > >
; alias: _ZNSt6vectorI7Point3DIfESaIS1_EEaSERKS3_
; demangled: std::vector<Point3D<float>, std::allocator<Point3D<float> > >::operator=(std::vector<Point3D<float>, std::allocator<Point3D<float> > > const&)
; decoder-mode: arm
003f8c40  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003f8c44  00 00 51 e1                                      cmp r1, r0
003f8c48  0c d0 4d e2                                      sub sp, sp, #0xc
003f8c4c  00 40 a0 e1                                      mov r4, r0
003f8c50  2e 00 00 0a                                      beq #0x3f8d10
003f8c54  00 c0 90 e5                                      ldr ip, [r0]
003f8c58  0c 00 91 e8                                      ldm r1, {r2, r3}
003f8c5c  08 70 90 e5                                      ldr r7, [r0, #8]
003f8c60  0c 60 a0 e1                                      mov r6, ip
003f8c64  03 80 62 e0                                      rsb r8, r2, r3
003f8c68  07 70 6c e0                                      rsb r7, ip, r7
003f8c6c  48 81 a0 e1                                      asr r8, r8, #2
003f8c70  47 71 a0 e1                                      asr r7, r7, #2
003f8c74  08 51 88 e0                                      add r5, r8, r8, lsl #2
003f8c78  07 a1 87 e0                                      add sl, r7, r7, lsl #2
003f8c7c  05 52 85 e0                                      add r5, r5, r5, lsl #4
003f8c80  0a a2 8a e0                                      add sl, sl, sl, lsl #4
003f8c84  05 54 85 e0                                      add r5, r5, r5, lsl #8
003f8c88  0a a4 8a e0                                      add sl, sl, sl, lsl #8
003f8c8c  05 58 85 e0                                      add r5, r5, r5, lsl #16
003f8c90  0a a8 8a e0                                      add sl, sl, sl, lsl #16
003f8c94  85 50 88 e0                                      add r5, r8, r5, lsl #1
003f8c98  8a 70 87 e0                                      add r7, r7, sl, lsl #1
003f8c9c  07 00 55 e1                                      cmp r5, r7
003f8ca0  05 70 a0 e1                                      mov r7, r5
003f8ca4  54 00 00 8a                                      bhi #0x3f8dfc
003f8ca8  04 a0 90 e5                                      ldr sl, [r0, #4]
003f8cac  0a 80 6c e0                                      rsb r8, ip, sl
003f8cb0  48 81 a0 e1                                      asr r8, r8, #2
003f8cb4  08 01 88 e0                                      add r0, r8, r8, lsl #2
003f8cb8  00 02 80 e0                                      add r0, r0, r0, lsl #4
003f8cbc  00 04 80 e0                                      add r0, r0, r0, lsl #8
003f8cc0  00 08 80 e0                                      add r0, r0, r0, lsl #16
003f8cc4  80 80 88 e0                                      add r8, r8, r0, lsl #1
003f8cc8  08 00 55 e1                                      cmp r5, r8
003f8ccc  12 00 00 8a                                      bhi #0x3f8d1c
003f8cd0  00 00 55 e3                                      cmp r5, #0
003f8cd4  0a 00 00 da                                      ble #0x3f8d04
003f8cd8  00 30 92 e5                                      ldr r3, [r2]
003f8cdc  01 70 57 e2                                      subs r7, r7, #1
003f8ce0  00 30 8c e5                                      str r3, [ip]
003f8ce4  04 30 92 e5                                      ldr r3, [r2, #4]
003f8ce8  04 30 8c e5                                      str r3, [ip, #4]
003f8cec  08 30 92 e5                                      ldr r3, [r2, #8]
003f8cf0  0c 20 82 e2                                      add r2, r2, #0xc
003f8cf4  08 30 8c e5                                      str r3, [ip, #8]
003f8cf8  0c c0 8c e2                                      add ip, ip, #0xc
003f8cfc  f5 ff ff 1a                                      bne #0x3f8cd8
003f8d00  00 60 94 e5                                      ldr r6, [r4]
003f8d04  0c 30 a0 e3                                      mov r3, #0xc
003f8d08  93 65 25 e0                                      mla r5, r3, r5, r6
003f8d0c  04 50 84 e5                                      str r5, [r4, #4]
003f8d10  04 00 a0 e1                                      mov r0, r4
003f8d14  0c d0 8d e2                                      add sp, sp, #0xc
003f8d18  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003f8d1c  0c 00 a0 e3                                      mov r0, #0xc
003f8d20  90 28 20 e0                                      mla r0, r0, r8, r2
003f8d24  00 70 62 e0                                      rsb r7, r2, r0
003f8d28  47 71 a0 e1                                      asr r7, r7, #2
003f8d2c  07 61 87 e0                                      add r6, r7, r7, lsl #2
003f8d30  06 62 86 e0                                      add r6, r6, r6, lsl #4
003f8d34  06 64 86 e0                                      add r6, r6, r6, lsl #8
003f8d38  06 68 86 e0                                      add r6, r6, r6, lsl #16
003f8d3c  86 60 87 e0                                      add r6, r7, r6, lsl #1
003f8d40  00 00 56 e3                                      cmp r6, #0
003f8d44  0a 20 a0 d1                                      movle r2, sl
003f8d48  16 00 00 da                                      ble #0x3f8da8
003f8d4c  00 30 92 e5                                      ldr r3, [r2]
003f8d50  01 60 56 e2                                      subs r6, r6, #1
003f8d54  00 30 8c e5                                      str r3, [ip]
003f8d58  04 30 92 e5                                      ldr r3, [r2, #4]
003f8d5c  04 30 8c e5                                      str r3, [ip, #4]
003f8d60  08 30 92 e5                                      ldr r3, [r2, #8]
003f8d64  0c 20 82 e2                                      add r2, r2, #0xc
003f8d68  08 30 8c e5                                      str r3, [ip, #8]
003f8d6c  0c c0 8c e2                                      add ip, ip, #0xc
003f8d70  f5 ff ff 1a                                      bne #0x3f8d4c
003f8d74  04 20 94 e5                                      ldr r2, [r4, #4]
003f8d78  00 c0 94 e5                                      ldr ip, [r4]
003f8d7c  00 70 91 e5                                      ldr r7, [r1]
003f8d80  04 30 91 e5                                      ldr r3, [r1, #4]
003f8d84  02 60 6c e0                                      rsb r6, ip, r2
003f8d88  46 61 a0 e1                                      asr r6, r6, #2
003f8d8c  0c 00 a0 e3                                      mov r0, #0xc
003f8d90  06 11 86 e0                                      add r1, r6, r6, lsl #2
003f8d94  01 12 81 e0                                      add r1, r1, r1, lsl #4
003f8d98  01 14 81 e0                                      add r1, r1, r1, lsl #8
003f8d9c  01 18 81 e0                                      add r1, r1, r1, lsl #16
003f8da0  81 60 86 e0                                      add r6, r6, r1, lsl #1
003f8da4  90 76 20 e0                                      mla r0, r0, r6, r7
003f8da8  03 30 60 e0                                      rsb r3, r0, r3
003f8dac  43 11 a0 e1                                      asr r1, r3, #2
003f8db0  01 31 81 e0                                      add r3, r1, r1, lsl #2
003f8db4  03 32 83 e0                                      add r3, r3, r3, lsl #4
003f8db8  03 34 83 e0                                      add r3, r3, r3, lsl #8
003f8dbc  03 38 83 e0                                      add r3, r3, r3, lsl #16
003f8dc0  83 30 81 e0                                      add r3, r1, r3, lsl #1
003f8dc4  00 00 53 e3                                      cmp r3, #0
003f8dc8  0c 60 a0 d1                                      movle r6, ip
003f8dcc  cc ff ff da                                      ble #0x3f8d04
003f8dd0  00 10 90 e5                                      ldr r1, [r0]
003f8dd4  01 30 53 e2                                      subs r3, r3, #1
003f8dd8  00 10 82 e5                                      str r1, [r2]
003f8ddc  04 10 90 e5                                      ldr r1, [r0, #4]
003f8de0  04 10 82 e5                                      str r1, [r2, #4]
003f8de4  08 10 90 e5                                      ldr r1, [r0, #8]
003f8de8  0c 00 80 e2                                      add r0, r0, #0xc
003f8dec  08 10 82 e5                                      str r1, [r2, #8]
003f8df0  0c 20 82 e2                                      add r2, r2, #0xc
003f8df4  f5 ff ff 1a                                      bne #0x3f8dd0
003f8df8  c0 ff ff ea                                      b #0x3f8d00
003f8dfc  08 10 8d e2                                      add r1, sp, #8
003f8e00  04 50 21 e5                                      str r5, [r1, #-4]!
003f8e04  c1 e2 ff eb                                      bl #0x3f1910
003f8e08  04 30 94 e5                                      ldr r3, [r4, #4]
003f8e0c  00 60 a0 e1                                      mov r6, r0
003f8e10  00 00 94 e5                                      ldr r0, [r4]
003f8e14  00 00 53 e1                                      cmp r3, r0
003f8e18  0e 00 00 0a                                      beq #0x3f8e58
003f8e1c  0c 20 43 e2                                      sub r2, r3, #0xc
003f8e20  02 20 60 e0                                      rsb r2, r0, r2
003f8e24  22 21 a0 e1                                      lsr r2, r2, #2
003f8e28  02 11 82 e0                                      add r1, r2, r2, lsl #2
003f8e2c  81 12 81 e0                                      add r1, r1, r1, lsl #5
003f8e30  81 10 82 e0                                      add r1, r2, r1, lsl #1
003f8e34  81 12 81 e0                                      add r1, r1, r1, lsl #5
003f8e38  81 c7 a0 e1                                      lsl ip, r1, #0xf
003f8e3c  0c 10 61 e0                                      rsb r1, r1, ip
003f8e40  81 20 82 e0                                      add r2, r2, r1, lsl #1
003f8e44  03 21 c2 e3                                      bic r2, r2, #0xc0000000
003f8e48  0b 10 e0 e3                                      mvn r1, #0xb
003f8e4c  91 02 02 e0                                      mul r2, r1, r2
003f8e50  01 20 82 e0                                      add r2, r2, r1
003f8e54  02 30 83 e0                                      add r3, r3, r2
003f8e58  00 00 53 e3                                      cmp r3, #0
003f8e5c  08 20 94 e5                                      ldr r2, [r4, #8]
003f8e60  0b 00 00 0a                                      beq #0x3f8e94
003f8e64  02 30 63 e0                                      rsb r3, r3, r2
003f8e68  43 31 a0 e1                                      asr r3, r3, #2
003f8e6c  03 11 83 e0                                      add r1, r3, r3, lsl #2
003f8e70  01 12 81 e0                                      add r1, r1, r1, lsl #4
003f8e74  01 14 81 e0                                      add r1, r1, r1, lsl #8
003f8e78  01 18 81 e0                                      add r1, r1, r1, lsl #16
003f8e7c  81 30 83 e0                                      add r3, r3, r1, lsl #1
003f8e80  0c 10 a0 e3                                      mov r1, #0xc
003f8e84  91 03 01 e0                                      mul r1, r1, r3
003f8e88  80 00 51 e3                                      cmp r1, #0x80
003f8e8c  06 00 00 8a                                      bhi #0x3f8eac
003f8e90  1a 40 0c eb                                      bl #0x708f00
003f8e94  04 30 9d e5                                      ldr r3, [sp, #4]
003f8e98  0c 20 a0 e3                                      mov r2, #0xc
003f8e9c  00 60 84 e5                                      str r6, [r4]
003f8ea0  92 63 23 e0                                      mla r3, r2, r3, r6
003f8ea4  08 30 84 e5                                      str r3, [r4, #8]
003f8ea8  95 ff ff ea                                      b #0x3f8d04
003f8eac  63 5d fc eb                                      bl #0x310440
003f8eb0  f7 ff ff ea                                      b #0x3f8e94
