; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033e218, declared_size=44, range_size=44, mode=arm
; class-group: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN18SimpleTypePropertyISsE8ToStringEPv
; demangled: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::ToString(void*)
; decoder-mode: arm
0033e218  10 40 2d e9                                      push {r4, lr}
0033e21c  04 30 91 e5                                      ldr r3, [r1, #4]
0033e220  00 40 a0 e1                                      mov r4, r0
0033e224  10 00 84 e5                                      str r0, [r4, #0x10]
0033e228  14 00 84 e5                                      str r0, [r4, #0x14]
0033e22c  03 30 82 e0                                      add r3, r2, r3
0033e230  10 20 93 e5                                      ldr r2, [r3, #0x10]
0033e234  14 10 93 e5                                      ldr r1, [r3, #0x14]
0033e238  2a 4d ff eb                                      bl #0x3116e8
0033e23c  04 00 a0 e1                                      mov r0, r4
0033e240  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033e244, declared_size=84, range_size=84, mode=arm
; class-group: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN18SimpleTypePropertyISsEaSERKS0_
; demangled: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::operator=(SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&)
; decoder-mode: arm
0033e244  70 40 2d e9                                      push {r4, r5, r6, lr}
0033e248  04 30 91 e5                                      ldr r3, [r1, #4]
0033e24c  00 50 a0 e1                                      mov r5, r0
0033e250  08 20 81 e2                                      add r2, r1, #8
0033e254  08 00 80 e2                                      add r0, r0, #8
0033e258  02 00 50 e1                                      cmp r0, r2
0033e25c  01 40 a0 e1                                      mov r4, r1
0033e260  04 30 85 e5                                      str r3, [r5, #4]
0033e264  02 00 00 0a                                      beq #0x33e274
0033e268  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
0033e26c  18 20 94 e5                                      ldr r2, [r4, #0x18]
0033e270  da 49 ff eb                                      bl #0x3109e0
0033e274  20 00 85 e2                                      add r0, r5, #0x20
0033e278  20 30 84 e2                                      add r3, r4, #0x20
0033e27c  03 00 50 e1                                      cmp r0, r3
0033e280  02 00 00 0a                                      beq #0x33e290
0033e284  30 20 94 e5                                      ldr r2, [r4, #0x30]
0033e288  34 10 94 e5                                      ldr r1, [r4, #0x34]
0033e28c  d3 49 ff eb                                      bl #0x3109e0
0033e290  05 00 a0 e1                                      mov r0, r5
0033e294  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0033e298, declared_size=36, range_size=36, mode=arm
; class-group: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN18SimpleTypePropertyISsE17SetToDefaultValueEPv
; demangled: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::SetToDefaultValue(void*)
; decoder-mode: arm
0033e298  00 30 a0 e1                                      mov r3, r0
0033e29c  04 00 90 e5                                      ldr r0, [r0, #4]
0033e2a0  20 20 83 e2                                      add r2, r3, #0x20
0033e2a4  00 00 81 e0                                      add r0, r1, r0
0033e2a8  02 00 50 e1                                      cmp r0, r2
0033e2ac  1e ff 2f 01                                      bxeq lr
0033e2b0  30 20 93 e5                                      ldr r2, [r3, #0x30]
0033e2b4  34 10 93 e5                                      ldr r1, [r3, #0x34]
0033e2b8  c8 49 ff ea                                      b #0x3109e0

; FUNCTION 0x0033e358, declared_size=40, range_size=40, mode=arm
; class-group: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN18SimpleTypePropertyISsE25SetDefaultValueFromStringEPKc
; demangled: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::SetDefaultValueFromString(char const*)
; decoder-mode: arm
0033e358  70 40 2d e9                                      push {r4, r5, r6, lr}
0033e35c  00 40 a0 e1                                      mov r4, r0
0033e360  01 00 a0 e1                                      mov r0, r1
0033e364  01 50 a0 e1                                      mov r5, r1
0033e368  b9 3e ff eb                                      bl #0x30de54
0033e36c  05 10 a0 e1                                      mov r1, r5
0033e370  00 20 85 e0                                      add r2, r5, r0
0033e374  20 00 84 e2                                      add r0, r4, #0x20
0033e378  70 40 bd e8                                      pop {r4, r5, r6, lr}
0033e37c  97 49 ff ea                                      b #0x3109e0

; FUNCTION 0x0033e380, declared_size=132, range_size=132, mode=arm
; class-group: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN18SimpleTypePropertyISsEC1EPvPKcPSsSs
; demangled: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::SimpleTypeProperty(void*, char const*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
0033e380  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033e384  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
0033e388  6c c0 9f e5                                      ldr ip, [pc, #0x6c]
0033e38c  08 d0 4d e2                                      sub sp, sp, #8
0033e390  05 50 8f e0                                      add r5, pc, r5
0033e394  0c c0 95 e7                                      ldr ip, [r5, ip]
0033e398  00 40 a0 e1                                      mov r4, r0
0033e39c  01 60 a0 e1                                      mov r6, r1
0033e3a0  08 c0 8c e2                                      add ip, ip, #8
0033e3a4  08 c0 80 e4                                      str ip, [r0], #8
0033e3a8  02 10 a0 e1                                      mov r1, r2
0033e3ac  04 20 8d e2                                      add r2, sp, #4
0033e3b0  03 80 a0 e1                                      mov r8, r3
0033e3b4  20 70 9d e5                                      ldr r7, [sp, #0x20]
0033e3b8  4b 57 ff eb                                      bl #0x3140ec
0033e3bc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0033e3c0  04 00 a0 e1                                      mov r0, r4
0033e3c4  08 60 66 e0                                      rsb r6, r6, r8
0033e3c8  03 30 95 e7                                      ldr r3, [r5, r3]
0033e3cc  04 60 84 e5                                      str r6, [r4, #4]
0033e3d0  08 30 83 e2                                      add r3, r3, #8
0033e3d4  20 30 80 e4                                      str r3, [r0], #0x20
0033e3d8  30 00 84 e5                                      str r0, [r4, #0x30]
0033e3dc  34 00 84 e5                                      str r0, [r4, #0x34]
0033e3e0  10 20 97 e5                                      ldr r2, [r7, #0x10]
0033e3e4  14 10 97 e5                                      ldr r1, [r7, #0x14]
0033e3e8  be 4c ff eb                                      bl #0x3116e8
0033e3ec  04 00 a0 e1                                      mov r0, r4
0033e3f0  08 d0 8d e2                                      add sp, sp, #8
0033e3f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0033e3f8  00 67 65 00 30 23 00 00 94 34 00 00              .byte 0x00, 0x67, 0x65, 0x00, 0x30, 0x23, 0x00, 0x00, 0x94, 0x34, 0x00, 0x00

; FUNCTION 0x0033e538, declared_size=72, range_size=72, mode=arm
; class-group: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN18SimpleTypePropertyISsE14IsDefaultValueEPv
; demangled: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::IsDefaultValue(void*)
; decoder-mode: arm
0033e538  10 40 2d e9                                      push {r4, lr}
0033e53c  04 20 90 e5                                      ldr r2, [r0, #4]
0033e540  30 c0 90 e5                                      ldr ip, [r0, #0x30]
0033e544  34 30 90 e5                                      ldr r3, [r0, #0x34]
0033e548  02 10 81 e0                                      add r1, r1, r2
0033e54c  10 20 91 e5                                      ldr r2, [r1, #0x10]
0033e550  14 00 91 e5                                      ldr r0, [r1, #0x14]
0033e554  0c c0 63 e0                                      rsb ip, r3, ip
0033e558  02 20 60 e0                                      rsb r2, r0, r2
0033e55c  0c 00 52 e1                                      cmp r2, ip
0033e560  01 00 00 0a                                      beq #0x33e56c
0033e564  00 00 a0 e3                                      mov r0, #0
0033e568  10 80 bd e8                                      pop {r4, pc}
0033e56c  03 10 a0 e1                                      mov r1, r3
0033e570  1a 40 ff eb                                      bl #0x30e5e0
0033e574  01 00 70 e2                                      rsbs r0, r0, #1
0033e578  00 00 a0 33                                      movlo r0, #0
0033e57c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033ee34, declared_size=164, range_size=164, mode=arm
; class-group: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN18SimpleTypePropertyISsE5CloneEv
; demangled: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::Clone()
; decoder-mode: arm
0033ee34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033ee38  00 10 a0 e3                                      mov r1, #0
0033ee3c  00 70 a0 e1                                      mov r7, r0
0033ee40  38 00 a0 e3                                      mov r0, #0x38
0033ee44  c9 45 ff eb                                      bl #0x310570
0033ee48  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
0033ee4c  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0033ee50  00 30 a0 e1                                      mov r3, r0
0033ee54  05 50 8f e0                                      add r5, pc, r5
0033ee58  02 20 95 e7                                      ldr r2, [r5, r2]
0033ee5c  00 40 a0 e1                                      mov r4, r0
0033ee60  10 10 a0 e3                                      mov r1, #0x10
0033ee64  08 20 82 e2                                      add r2, r2, #8
0033ee68  08 20 83 e4                                      str r2, [r3], #8
0033ee6c  03 00 a0 e1                                      mov r0, r3
0033ee70  18 30 84 e5                                      str r3, [r4, #0x18]
0033ee74  1c 30 84 e5                                      str r3, [r4, #0x1c]
0033ee78  ff 49 ff eb                                      bl #0x31167c
0033ee7c  50 20 9f e5                                      ldr r2, [pc, #0x50]
0033ee80  18 10 94 e5                                      ldr r1, [r4, #0x18]
0033ee84  04 30 a0 e1                                      mov r3, r4
0033ee88  02 20 95 e7                                      ldr r2, [r5, r2]
0033ee8c  00 60 a0 e3                                      mov r6, #0
0033ee90  00 60 c1 e5                                      strb r6, [r1]
0033ee94  08 20 82 e2                                      add r2, r2, #8
0033ee98  20 20 83 e4                                      str r2, [r3], #0x20
0033ee9c  03 00 a0 e1                                      mov r0, r3
0033eea0  30 30 84 e5                                      str r3, [r4, #0x30]
0033eea4  34 30 84 e5                                      str r3, [r4, #0x34]
0033eea8  10 10 a0 e3                                      mov r1, #0x10
0033eeac  f2 49 ff eb                                      bl #0x31167c
0033eeb0  30 30 94 e5                                      ldr r3, [r4, #0x30]
0033eeb4  07 10 a0 e1                                      mov r1, r7
0033eeb8  04 00 a0 e1                                      mov r0, r4
0033eebc  00 60 c3 e5                                      strb r6, [r3]
0033eec0  df fc ff eb                                      bl #0x33e244
0033eec4  04 00 a0 e1                                      mov r0, r4
0033eec8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0033eecc  3c 5c 65 00 30 23 00 00 94 34 00 00              .byte 0x3c, 0x5c, 0x65, 0x00, 0x30, 0x23, 0x00, 0x00, 0x94, 0x34, 0x00, 0x00

; FUNCTION 0x0033f4c4, declared_size=48, range_size=48, mode=arm
; class-group: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN18SimpleTypePropertyISsE10FromStringEPvPKc
; demangled: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::FromString(void*, char const*)
; decoder-mode: arm
0033f4c4  70 40 2d e9                                      push {r4, r5, r6, lr}
0033f4c8  00 60 a0 e1                                      mov r6, r0
0033f4cc  02 00 a0 e1                                      mov r0, r2
0033f4d0  02 40 a0 e1                                      mov r4, r2
0033f4d4  01 50 a0 e1                                      mov r5, r1
0033f4d8  5d 3a ff eb                                      bl #0x30de54
0033f4dc  04 30 96 e5                                      ldr r3, [r6, #4]
0033f4e0  00 20 84 e0                                      add r2, r4, r0
0033f4e4  04 10 a0 e1                                      mov r1, r4
0033f4e8  03 00 85 e0                                      add r0, r5, r3
0033f4ec  70 40 bd e8                                      pop {r4, r5, r6, lr}
0033f4f0  3a 45 ff ea                                      b #0x3109e0

; FUNCTION 0x00394f10, declared_size=136, range_size=136, mode=arm
; class-group: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN18SimpleTypePropertyISsEC1Ev
; demangled: SimpleTypeProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::SimpleTypeProperty()
; decoder-mode: arm
00394f10  70 40 2d e9                                      push {r4, r5, r6, lr}
00394f14  70 50 9f e5                                      ldr r5, [pc, #0x70]
00394f18  70 20 9f e5                                      ldr r2, [pc, #0x70]
00394f1c  00 30 a0 e1                                      mov r3, r0
00394f20  05 50 8f e0                                      add r5, pc, r5
00394f24  02 20 95 e7                                      ldr r2, [r5, r2]
00394f28  00 40 a0 e1                                      mov r4, r0
00394f2c  10 10 a0 e3                                      mov r1, #0x10
00394f30  08 20 82 e2                                      add r2, r2, #8
00394f34  08 20 83 e4                                      str r2, [r3], #8
00394f38  03 00 a0 e1                                      mov r0, r3
00394f3c  18 30 84 e5                                      str r3, [r4, #0x18]
00394f40  1c 30 84 e5                                      str r3, [r4, #0x1c]
00394f44  cc f1 fd eb                                      bl #0x31167c
00394f48  44 20 9f e5                                      ldr r2, [pc, #0x44]
00394f4c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00394f50  04 30 a0 e1                                      mov r3, r4
00394f54  02 20 95 e7                                      ldr r2, [r5, r2]
00394f58  00 50 a0 e3                                      mov r5, #0
00394f5c  00 50 c1 e5                                      strb r5, [r1]
00394f60  08 20 82 e2                                      add r2, r2, #8
00394f64  20 20 83 e4                                      str r2, [r3], #0x20
00394f68  03 00 a0 e1                                      mov r0, r3
00394f6c  30 30 84 e5                                      str r3, [r4, #0x30]
00394f70  34 30 84 e5                                      str r3, [r4, #0x34]
00394f74  10 10 a0 e3                                      mov r1, #0x10
00394f78  bf f1 fd eb                                      bl #0x31167c
00394f7c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00394f80  04 00 a0 e1                                      mov r0, r4
00394f84  00 50 c3 e5                                      strb r5, [r3]
00394f88  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00394f8c  70 fb 5f 00 30 23 00 00 94 34 00 00              .byte 0x70, 0xfb, 0x5f, 0x00, 0x30, 0x23, 0x00, 0x00, 0x94, 0x34, 0x00, 0x00
