; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033e404, declared_size=168, range_size=168, mode=arm
; class-group: void PropertyMap
; alias: _ZN11PropertyMap11AddPropertyISsEEvPKcRT_S3_
; demangled: void PropertyMap::AddProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >(char const*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >&, std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
0033e404  98 c0 9f e5                                      ldr ip, [pc, #0x98]
0033e408  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0033e40c  94 e0 9f e5                                      ldr lr, [pc, #0x94]
0033e410  0c c0 8f e0                                      add ip, pc, ip
0033e414  2c d0 4d e2                                      sub sp, sp, #0x2c
0033e418  0e 50 9c e7                                      ldr r5, [ip, lr]
0033e41c  0c 40 8d e2                                      add r4, sp, #0xc
0033e420  00 70 a0 e1                                      mov r7, r0
0033e424  00 e0 95 e5                                      ldr lr, [r5]
0033e428  01 60 a0 e1                                      mov r6, r1
0033e42c  02 a0 a0 e1                                      mov sl, r2
0033e430  14 10 93 e5                                      ldr r1, [r3, #0x14]
0033e434  10 20 93 e5                                      ldr r2, [r3, #0x10]
0033e438  04 00 a0 e1                                      mov r0, r4
0033e43c  24 e0 8d e5                                      str lr, [sp, #0x24]
0033e440  1c 40 8d e5                                      str r4, [sp, #0x1c]
0033e444  20 40 8d e5                                      str r4, [sp, #0x20]
0033e448  a6 4c ff eb                                      bl #0x3116e8
0033e44c  00 10 a0 e3                                      mov r1, #0
0033e450  38 00 a0 e3                                      mov r0, #0x38
0033e454  45 48 ff eb                                      bl #0x310570
0033e458  0a 30 a0 e1                                      mov r3, sl
0033e45c  00 80 a0 e1                                      mov r8, r0
0033e460  07 10 a0 e1                                      mov r1, r7
0033e464  06 20 a0 e1                                      mov r2, r6
0033e468  00 40 8d e5                                      str r4, [sp]
0033e46c  c3 ff ff eb                                      bl #0x33e380
0033e470  08 20 a0 e1                                      mov r2, r8
0033e474  07 00 a0 e1                                      mov r0, r7
0033e478  06 10 a0 e1                                      mov r1, r6
0033e47c  18 56 07 eb                                      bl #0x513ce4
0033e480  04 00 a0 e1                                      mov r0, r4
0033e484  48 55 ff eb                                      bl #0x3139ac
0033e488  24 20 9d e5                                      ldr r2, [sp, #0x24]
0033e48c  00 30 95 e5                                      ldr r3, [r5]
0033e490  03 00 52 e1                                      cmp r2, r3
0033e494  01 00 00 1a                                      bne #0x33e4a0
0033e498  2c d0 8d e2                                      add sp, sp, #0x2c
0033e49c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0033e4a0  9a 3f ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033e4a4  80 66 65 00 ac 40 00 00                          .byte 0x80, 0x66, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0033e4ac, declared_size=140, range_size=140, mode=arm
; class-group: void PropertyMap
; alias: _ZN11PropertyMap11AddPropertyIbEEvPKcRT_S3_
; demangled: void PropertyMap::AddProperty<bool>(char const*, bool&, bool)
; decoder-mode: arm
0033e4ac  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0033e4b0  00 60 a0 e1                                      mov r6, r0
0033e4b4  0c d0 4d e2                                      sub sp, sp, #0xc
0033e4b8  01 50 a0 e1                                      mov r5, r1
0033e4bc  24 00 a0 e3                                      mov r0, #0x24
0033e4c0  00 10 a0 e3                                      mov r1, #0
0033e4c4  03 a0 a0 e1                                      mov sl, r3
0033e4c8  02 70 a0 e1                                      mov r7, r2
0033e4cc  27 48 ff eb                                      bl #0x310570
0033e4d0  54 40 9f e5                                      ldr r4, [pc, #0x54]
0033e4d4  54 30 9f e5                                      ldr r3, [pc, #0x54]
0033e4d8  00 80 a0 e1                                      mov r8, r0
0033e4dc  04 40 8f e0                                      add r4, pc, r4
0033e4e0  03 30 94 e7                                      ldr r3, [r4, r3]
0033e4e4  05 10 a0 e1                                      mov r1, r5
0033e4e8  04 20 8d e2                                      add r2, sp, #4
0033e4ec  08 30 83 e2                                      add r3, r3, #8
0033e4f0  08 30 80 e4                                      str r3, [r0], #8
0033e4f4  fc 56 ff eb                                      bl #0x3140ec
0033e4f8  34 30 9f e5                                      ldr r3, [pc, #0x34]
0033e4fc  07 70 66 e0                                      rsb r7, r6, r7
0033e500  04 70 88 e5                                      str r7, [r8, #4]
0033e504  03 30 94 e7                                      ldr r3, [r4, r3]
0033e508  20 a0 c8 e5                                      strb sl, [r8, #0x20]
0033e50c  06 00 a0 e1                                      mov r0, r6
0033e510  08 30 83 e2                                      add r3, r3, #8
0033e514  00 30 88 e5                                      str r3, [r8]
0033e518  05 10 a0 e1                                      mov r1, r5
0033e51c  08 20 a0 e1                                      mov r2, r8
0033e520  ef 55 07 eb                                      bl #0x513ce4
0033e524  0c d0 8d e2                                      add sp, sp, #0xc
0033e528  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0033e52c  b4 65 65 00 30 23 00 00 4c 3e 00 00              .byte 0xb4, 0x65, 0x65, 0x00, 0x30, 0x23, 0x00, 0x00, 0x4c, 0x3e, 0x00, 0x00

; FUNCTION 0x0033ef7c, declared_size=144, range_size=144, mode=arm
; class-group: void PropertyMap
; alias: _ZN11PropertyMap11AddPropertyISsEEvPKcRT_
; demangled: void PropertyMap::AddProperty<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >(char const*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
; decoder-mode: arm
0033ef7c  80 30 9f e5                                      ldr r3, [pc, #0x80]
0033ef80  80 c0 9f e5                                      ldr ip, [pc, #0x80]
0033ef84  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033ef88  03 30 8f e0                                      add r3, pc, r3
0033ef8c  0c 50 93 e7                                      ldr r5, [r3, ip]
0033ef90  20 d0 4d e2                                      sub sp, sp, #0x20
0033ef94  04 40 8d e2                                      add r4, sp, #4
0033ef98  00 c0 95 e5                                      ldr ip, [r5]
0033ef9c  00 60 a0 e1                                      mov r6, r0
0033efa0  01 70 a0 e1                                      mov r7, r1
0033efa4  04 00 a0 e1                                      mov r0, r4
0033efa8  10 10 a0 e3                                      mov r1, #0x10
0033efac  1c c0 8d e5                                      str ip, [sp, #0x1c]
0033efb0  02 80 a0 e1                                      mov r8, r2
0033efb4  14 40 8d e5                                      str r4, [sp, #0x14]
0033efb8  18 40 8d e5                                      str r4, [sp, #0x18]
0033efbc  ae 49 ff eb                                      bl #0x31167c
0033efc0  14 30 9d e5                                      ldr r3, [sp, #0x14]
0033efc4  00 20 a0 e3                                      mov r2, #0
0033efc8  07 10 a0 e1                                      mov r1, r7
0033efcc  00 20 c3 e5                                      strb r2, [r3]
0033efd0  06 00 a0 e1                                      mov r0, r6
0033efd4  08 20 a0 e1                                      mov r2, r8
0033efd8  04 30 a0 e1                                      mov r3, r4
0033efdc  08 fd ff eb                                      bl #0x33e404
0033efe0  04 00 a0 e1                                      mov r0, r4
0033efe4  70 52 ff eb                                      bl #0x3139ac
0033efe8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0033efec  00 30 95 e5                                      ldr r3, [r5]
0033eff0  03 00 52 e1                                      cmp r2, r3
0033eff4  01 00 00 1a                                      bne #0x33f000
0033eff8  20 d0 8d e2                                      add sp, sp, #0x20
0033effc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0033f000  c2 3c ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033f004  08 5b 65 00 ac 40 00 00                          .byte 0x08, 0x5b, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00389894, declared_size=156, range_size=156, mode=arm
; class-group: void PropertyMap
; alias: _ZN11PropertyMap11AddPropertyI7Point3DIfEEEvPKcRT_S5_
; demangled: void PropertyMap::AddProperty<Point3D<float> >(char const*, Point3D<float>&, Point3D<float>)
; decoder-mode: arm
00389894  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00389898  00 70 a0 e1                                      mov r7, r0
0038989c  0c d0 4d e2                                      sub sp, sp, #0xc
003898a0  01 60 a0 e1                                      mov r6, r1
003898a4  2c 00 a0 e3                                      mov r0, #0x2c
003898a8  00 10 a0 e3                                      mov r1, #0
003898ac  08 b0 93 e5                                      ldr fp, [r3, #8]
003898b0  00 80 93 e5                                      ldr r8, [r3]
003898b4  04 90 93 e5                                      ldr sb, [r3, #4]
003898b8  02 a0 a0 e1                                      mov sl, r2
003898bc  2b 1b fe eb                                      bl #0x310570
003898c0  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
003898c4  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003898c8  00 40 a0 e1                                      mov r4, r0
003898cc  05 50 8f e0                                      add r5, pc, r5
003898d0  03 30 95 e7                                      ldr r3, [r5, r3]
003898d4  06 10 a0 e1                                      mov r1, r6
003898d8  04 20 8d e2                                      add r2, sp, #4
003898dc  08 30 83 e2                                      add r3, r3, #8
003898e0  08 30 80 e4                                      str r3, [r0], #8
003898e4  00 2a fe eb                                      bl #0x3140ec
003898e8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003898ec  0a a0 67 e0                                      rsb sl, r7, sl
003898f0  04 a0 84 e5                                      str sl, [r4, #4]
003898f4  03 30 95 e7                                      ldr r3, [r5, r3]
003898f8  20 80 84 e5                                      str r8, [r4, #0x20]
003898fc  24 90 84 e5                                      str sb, [r4, #0x24]
00389900  08 30 83 e2                                      add r3, r3, #8
00389904  00 30 84 e5                                      str r3, [r4]
00389908  28 b0 84 e5                                      str fp, [r4, #0x28]
0038990c  07 00 a0 e1                                      mov r0, r7
00389910  06 10 a0 e1                                      mov r1, r6
00389914  04 20 a0 e1                                      mov r2, r4
00389918  f1 28 06 eb                                      bl #0x513ce4
0038991c  0c d0 8d e2                                      add sp, sp, #0xc
00389920  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00389924  c4 b1 60 00 30 23 00 00 44 0b 00 00              .byte 0xc4, 0xb1, 0x60, 0x00, 0x30, 0x23, 0x00, 0x00, 0x44, 0x0b, 0x00, 0x00

; FUNCTION 0x0039503c, declared_size=140, range_size=140, mode=arm
; class-group: void PropertyMap
; alias: _ZN11PropertyMap11AddPropertyIfEEvPKcRT_S3_
; demangled: void PropertyMap::AddProperty<float>(char const*, float&, float)
; decoder-mode: arm
0039503c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00395040  00 60 a0 e1                                      mov r6, r0
00395044  0c d0 4d e2                                      sub sp, sp, #0xc
00395048  01 50 a0 e1                                      mov r5, r1
0039504c  24 00 a0 e3                                      mov r0, #0x24
00395050  00 10 a0 e3                                      mov r1, #0
00395054  03 a0 a0 e1                                      mov sl, r3
00395058  02 70 a0 e1                                      mov r7, r2
0039505c  43 ed fd eb                                      bl #0x310570
00395060  54 40 9f e5                                      ldr r4, [pc, #0x54]
00395064  54 30 9f e5                                      ldr r3, [pc, #0x54]
00395068  00 80 a0 e1                                      mov r8, r0
0039506c  04 40 8f e0                                      add r4, pc, r4
00395070  03 30 94 e7                                      ldr r3, [r4, r3]
00395074  05 10 a0 e1                                      mov r1, r5
00395078  04 20 8d e2                                      add r2, sp, #4
0039507c  08 30 83 e2                                      add r3, r3, #8
00395080  08 30 80 e4                                      str r3, [r0], #8
00395084  18 fc fd eb                                      bl #0x3140ec
00395088  34 30 9f e5                                      ldr r3, [pc, #0x34]
0039508c  07 70 66 e0                                      rsb r7, r6, r7
00395090  04 70 88 e5                                      str r7, [r8, #4]
00395094  03 30 94 e7                                      ldr r3, [r4, r3]
00395098  20 a0 88 e5                                      str sl, [r8, #0x20]
0039509c  06 00 a0 e1                                      mov r0, r6
003950a0  08 30 83 e2                                      add r3, r3, #8
003950a4  00 30 88 e5                                      str r3, [r8]
003950a8  05 10 a0 e1                                      mov r1, r5
003950ac  08 20 a0 e1                                      mov r2, r8
003950b0  0b fb 05 eb                                      bl #0x513ce4
003950b4  0c d0 8d e2                                      add sp, sp, #0xc
003950b8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
003950bc  24 fa 5f 00 30 23 00 00 bc 24 00 00              .byte 0x24, 0xfa, 0x5f, 0x00, 0x30, 0x23, 0x00, 0x00, 0xbc, 0x24, 0x00, 0x00

; FUNCTION 0x00398878, declared_size=140, range_size=140, mode=arm
; class-group: void PropertyMap
; alias: _ZN11PropertyMap11AddPropertyIiEEvPKcRT_S3_
; demangled: void PropertyMap::AddProperty<int>(char const*, int&, int)
; decoder-mode: arm
00398878  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0039887c  00 60 a0 e1                                      mov r6, r0
00398880  0c d0 4d e2                                      sub sp, sp, #0xc
00398884  01 50 a0 e1                                      mov r5, r1
00398888  24 00 a0 e3                                      mov r0, #0x24
0039888c  00 10 a0 e3                                      mov r1, #0
00398890  03 a0 a0 e1                                      mov sl, r3
00398894  02 70 a0 e1                                      mov r7, r2
00398898  34 df fd eb                                      bl #0x310570
0039889c  54 40 9f e5                                      ldr r4, [pc, #0x54]
003988a0  54 30 9f e5                                      ldr r3, [pc, #0x54]
003988a4  00 80 a0 e1                                      mov r8, r0
003988a8  04 40 8f e0                                      add r4, pc, r4
003988ac  03 30 94 e7                                      ldr r3, [r4, r3]
003988b0  05 10 a0 e1                                      mov r1, r5
003988b4  04 20 8d e2                                      add r2, sp, #4
003988b8  08 30 83 e2                                      add r3, r3, #8
003988bc  08 30 80 e4                                      str r3, [r0], #8
003988c0  09 ee fd eb                                      bl #0x3140ec
003988c4  34 30 9f e5                                      ldr r3, [pc, #0x34]
003988c8  07 70 66 e0                                      rsb r7, r6, r7
003988cc  04 70 88 e5                                      str r7, [r8, #4]
003988d0  03 30 94 e7                                      ldr r3, [r4, r3]
003988d4  20 a0 88 e5                                      str sl, [r8, #0x20]
003988d8  06 00 a0 e1                                      mov r0, r6
003988dc  08 30 83 e2                                      add r3, r3, #8
003988e0  00 30 88 e5                                      str r3, [r8]
003988e4  05 10 a0 e1                                      mov r1, r5
003988e8  08 20 a0 e1                                      mov r2, r8
003988ec  fc ec 05 eb                                      bl #0x513ce4
003988f0  0c d0 8d e2                                      add sp, sp, #0xc
003988f4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
003988f8  e8 c1 5f 00 30 23 00 00 90 25 00 00              .byte 0xe8, 0xc1, 0x5f, 0x00, 0x30, 0x23, 0x00, 0x00, 0x90, 0x25, 0x00, 0x00

; FUNCTION 0x0039bf10, declared_size=140, range_size=140, mode=arm
; class-group: void PropertyMap
; alias: _ZN11PropertyMap11AddPropertyIiEEvPKcRT_S3_.clone.2
; demangled: void PropertyMap::AddProperty<int>(char const*, int&, int) [clone .clone.2]
; decoder-mode: arm
0039bf10  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0039bf14  00 70 a0 e1                                      mov r7, r0
0039bf18  08 d0 4d e2                                      sub sp, sp, #8
0039bf1c  01 60 a0 e1                                      mov r6, r1
0039bf20  24 00 a0 e3                                      mov r0, #0x24
0039bf24  00 10 a0 e3                                      mov r1, #0
0039bf28  02 80 a0 e1                                      mov r8, r2
0039bf2c  8f d1 fd eb                                      bl #0x310570
0039bf30  58 50 9f e5                                      ldr r5, [pc, #0x58]
0039bf34  58 30 9f e5                                      ldr r3, [pc, #0x58]
0039bf38  00 40 a0 e1                                      mov r4, r0
0039bf3c  05 50 8f e0                                      add r5, pc, r5
0039bf40  03 30 95 e7                                      ldr r3, [r5, r3]
0039bf44  06 10 a0 e1                                      mov r1, r6
0039bf48  04 20 8d e2                                      add r2, sp, #4
0039bf4c  08 30 83 e2                                      add r3, r3, #8
0039bf50  08 30 80 e4                                      str r3, [r0], #8
0039bf54  64 e0 fd eb                                      bl #0x3140ec
0039bf58  38 30 9f e5                                      ldr r3, [pc, #0x38]
0039bf5c  08 80 67 e0                                      rsb r8, r7, r8
0039bf60  00 20 e0 e3                                      mvn r2, #0
0039bf64  03 30 95 e7                                      ldr r3, [r5, r3]
0039bf68  20 20 84 e5                                      str r2, [r4, #0x20]
0039bf6c  04 80 84 e5                                      str r8, [r4, #4]
0039bf70  08 30 83 e2                                      add r3, r3, #8
0039bf74  00 30 84 e5                                      str r3, [r4]
0039bf78  07 00 a0 e1                                      mov r0, r7
0039bf7c  06 10 a0 e1                                      mov r1, r6
0039bf80  04 20 a0 e1                                      mov r2, r4
0039bf84  56 df 05 eb                                      bl #0x513ce4
0039bf88  08 d0 8d e2                                      add sp, sp, #8
0039bf8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0039bf90  54 8b 5f 00 30 23 00 00 90 25 00 00              .byte 0x54, 0x8b, 0x5f, 0x00, 0x30, 0x23, 0x00, 0x00, 0x90, 0x25, 0x00, 0x00

; FUNCTION 0x0039c83c, declared_size=140, range_size=140, mode=arm
; class-group: void PropertyMap
; alias: _ZN11PropertyMap11AddPropertyIiEEvPKcRT_S3_.clone.1
; demangled: void PropertyMap::AddProperty<int>(char const*, int&, int) [clone .clone.1]
; decoder-mode: arm
0039c83c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0039c840  00 70 a0 e1                                      mov r7, r0
0039c844  08 d0 4d e2                                      sub sp, sp, #8
0039c848  01 60 a0 e1                                      mov r6, r1
0039c84c  24 00 a0 e3                                      mov r0, #0x24
0039c850  00 10 a0 e3                                      mov r1, #0
0039c854  02 80 a0 e1                                      mov r8, r2
0039c858  44 cf fd eb                                      bl #0x310570
0039c85c  58 50 9f e5                                      ldr r5, [pc, #0x58]
0039c860  58 30 9f e5                                      ldr r3, [pc, #0x58]
0039c864  00 40 a0 e1                                      mov r4, r0
0039c868  05 50 8f e0                                      add r5, pc, r5
0039c86c  03 30 95 e7                                      ldr r3, [r5, r3]
0039c870  06 10 a0 e1                                      mov r1, r6
0039c874  04 20 8d e2                                      add r2, sp, #4
0039c878  08 30 83 e2                                      add r3, r3, #8
0039c87c  08 30 80 e4                                      str r3, [r0], #8
0039c880  19 de fd eb                                      bl #0x3140ec
0039c884  38 30 9f e5                                      ldr r3, [pc, #0x38]
0039c888  08 80 67 e0                                      rsb r8, r7, r8
0039c88c  00 20 e0 e3                                      mvn r2, #0
0039c890  03 30 95 e7                                      ldr r3, [r5, r3]
0039c894  20 20 84 e5                                      str r2, [r4, #0x20]
0039c898  04 80 84 e5                                      str r8, [r4, #4]
0039c89c  08 30 83 e2                                      add r3, r3, #8
0039c8a0  00 30 84 e5                                      str r3, [r4]
0039c8a4  07 00 a0 e1                                      mov r0, r7
0039c8a8  06 10 a0 e1                                      mov r1, r6
0039c8ac  04 20 a0 e1                                      mov r2, r4
0039c8b0  0b dd 05 eb                                      bl #0x513ce4
0039c8b4  08 d0 8d e2                                      add sp, sp, #8
0039c8b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0039c8bc  28 82 5f 00 30 23 00 00 90 25 00 00              .byte 0x28, 0x82, 0x5f, 0x00, 0x30, 0x23, 0x00, 0x00, 0x90, 0x25, 0x00, 0x00

; FUNCTION 0x003a92b4, declared_size=140, range_size=140, mode=arm
; class-group: void PropertyMap
; alias: _ZN11PropertyMap11AddPropertyIbEEvPKcRT_S3_.clone.21
; demangled: void PropertyMap::AddProperty<bool>(char const*, bool&, bool) [clone .clone.21]
; decoder-mode: arm
003a92b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003a92b8  00 70 a0 e1                                      mov r7, r0
003a92bc  08 d0 4d e2                                      sub sp, sp, #8
003a92c0  01 60 a0 e1                                      mov r6, r1
003a92c4  24 00 a0 e3                                      mov r0, #0x24
003a92c8  00 10 a0 e3                                      mov r1, #0
003a92cc  02 80 a0 e1                                      mov r8, r2
003a92d0  a6 9c fd eb                                      bl #0x310570
003a92d4  58 50 9f e5                                      ldr r5, [pc, #0x58]
003a92d8  58 30 9f e5                                      ldr r3, [pc, #0x58]
003a92dc  00 40 a0 e1                                      mov r4, r0
003a92e0  05 50 8f e0                                      add r5, pc, r5
003a92e4  03 30 95 e7                                      ldr r3, [r5, r3]
003a92e8  06 10 a0 e1                                      mov r1, r6
003a92ec  04 20 8d e2                                      add r2, sp, #4
003a92f0  08 30 83 e2                                      add r3, r3, #8
003a92f4  08 30 80 e4                                      str r3, [r0], #8
003a92f8  7b ab fd eb                                      bl #0x3140ec
003a92fc  38 30 9f e5                                      ldr r3, [pc, #0x38]
003a9300  08 80 67 e0                                      rsb r8, r7, r8
003a9304  01 20 a0 e3                                      mov r2, #1
003a9308  03 30 95 e7                                      ldr r3, [r5, r3]
003a930c  20 20 c4 e5                                      strb r2, [r4, #0x20]
003a9310  04 80 84 e5                                      str r8, [r4, #4]
003a9314  08 30 83 e2                                      add r3, r3, #8
003a9318  00 30 84 e5                                      str r3, [r4]
003a931c  07 00 a0 e1                                      mov r0, r7
003a9320  06 10 a0 e1                                      mov r1, r6
003a9324  04 20 a0 e1                                      mov r2, r4
003a9328  6d aa 05 eb                                      bl #0x513ce4
003a932c  08 d0 8d e2                                      add sp, sp, #8
003a9330  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003a9334  b0 b7 5e 00 30 23 00 00 4c 3e 00 00              .byte 0xb0, 0xb7, 0x5e, 0x00, 0x30, 0x23, 0x00, 0x00, 0x4c, 0x3e, 0x00, 0x00

; FUNCTION 0x003e7ffc, declared_size=140, range_size=140, mode=arm
; class-group: void PropertyMap
; alias: _ZN11PropertyMap11AddPropertyIbEEvPKcRT_S3_.clone.5
; demangled: void PropertyMap::AddProperty<bool>(char const*, bool&, bool) [clone .clone.5]
; decoder-mode: arm
003e7ffc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e8000  00 70 a0 e1                                      mov r7, r0
003e8004  08 d0 4d e2                                      sub sp, sp, #8
003e8008  01 60 a0 e1                                      mov r6, r1
003e800c  24 00 a0 e3                                      mov r0, #0x24
003e8010  00 10 a0 e3                                      mov r1, #0
003e8014  02 80 a0 e1                                      mov r8, r2
003e8018  54 a1 fc eb                                      bl #0x310570
003e801c  58 50 9f e5                                      ldr r5, [pc, #0x58]
003e8020  58 30 9f e5                                      ldr r3, [pc, #0x58]
003e8024  00 40 a0 e1                                      mov r4, r0
003e8028  05 50 8f e0                                      add r5, pc, r5
003e802c  03 30 95 e7                                      ldr r3, [r5, r3]
003e8030  06 10 a0 e1                                      mov r1, r6
003e8034  04 20 8d e2                                      add r2, sp, #4
003e8038  08 30 83 e2                                      add r3, r3, #8
003e803c  08 30 80 e4                                      str r3, [r0], #8
003e8040  29 b0 fc eb                                      bl #0x3140ec
003e8044  38 30 9f e5                                      ldr r3, [pc, #0x38]
003e8048  08 80 67 e0                                      rsb r8, r7, r8
003e804c  01 20 a0 e3                                      mov r2, #1
003e8050  03 30 95 e7                                      ldr r3, [r5, r3]
003e8054  20 20 c4 e5                                      strb r2, [r4, #0x20]
003e8058  04 80 84 e5                                      str r8, [r4, #4]
003e805c  08 30 83 e2                                      add r3, r3, #8
003e8060  00 30 84 e5                                      str r3, [r4]
003e8064  07 00 a0 e1                                      mov r0, r7
003e8068  06 10 a0 e1                                      mov r1, r6
003e806c  04 20 a0 e1                                      mov r2, r4
003e8070  1b af 04 eb                                      bl #0x513ce4
003e8074  08 d0 8d e2                                      add sp, sp, #8
003e8078  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003e807c  68 ca 5a 00 30 23 00 00 4c 3e 00 00              .byte 0x68, 0xca, 0x5a, 0x00, 0x30, 0x23, 0x00, 0x00, 0x4c, 0x3e, 0x00, 0x00
