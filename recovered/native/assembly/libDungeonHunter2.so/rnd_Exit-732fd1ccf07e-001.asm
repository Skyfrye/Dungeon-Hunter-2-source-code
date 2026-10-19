; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00489ddc, declared_size=176, range_size=176, mode=arm
; class-group: rnd::Exit
; alias: _ZN3rnd4Exit20GetBlockUnitPositionER7Point3DIfEPNS_5BlockE
; demangled: rnd::Exit::GetBlockUnitPosition(Point3D<float>&, rnd::Block*)
; decoder-mode: arm
00489ddc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00489de0  02 40 a0 e1                                      mov r4, r2
00489de4  00 50 a0 e1                                      mov r5, r0
00489de8  58 00 92 e5                                      ldr r0, [r2, #0x58]
00489dec  01 70 a0 e1                                      mov r7, r1
00489df0  db 12 fa eb                                      bl #0x30e964
00489df4  50 10 94 e5                                      ldr r1, [r4, #0x50]
00489df8  db 13 fa eb                                      bl #0x30ed6c
00489dfc  3f 14 a0 e3                                      mov r1, #0x3f000000
00489e00  d9 13 fa eb                                      bl #0x30ed6c
00489e04  00 80 a0 e1                                      mov r8, r0
00489e08  54 00 94 e5                                      ldr r0, [r4, #0x54]
00489e0c  4c 60 94 e5                                      ldr r6, [r4, #0x4c]
00489e10  00 00 60 e2                                      rsb r0, r0, #0
00489e14  d2 12 fa eb                                      bl #0x30e964
00489e18  06 10 a0 e1                                      mov r1, r6
00489e1c  d2 13 fa eb                                      bl #0x30ed6c
00489e20  3f 14 a0 e3                                      mov r1, #0x3f000000
00489e24  d0 13 fa eb                                      bl #0x30ed6c
00489e28  00 10 a0 e1                                      mov r1, r0
00489e2c  00 00 97 e5                                      ldr r0, [r7]
00489e30  5d 11 fa eb                                      bl #0x30e3ac
00489e34  06 10 a0 e1                                      mov r1, r6
00489e38  95 13 fa eb                                      bl #0x30ec94
00489e3c  b4 11 fa eb                                      bl #0x30e514
00489e40  fe 15 a0 e3                                      mov r1, #0x3f800000
00489e44  58 11 fa eb                                      bl #0x30e3ac
00489e48  9f 11 fa eb                                      bl #0x30e4cc
00489e4c  08 00 85 e5                                      str r0, [r5, #8]
00489e50  04 10 97 e5                                      ldr r1, [r7, #4]
00489e54  00 60 a0 e1                                      mov r6, r0
00489e58  08 00 a0 e1                                      mov r0, r8
00489e5c  52 11 fa eb                                      bl #0x30e3ac
00489e60  50 10 94 e5                                      ldr r1, [r4, #0x50]
00489e64  8a 13 fa eb                                      bl #0x30ec94
00489e68  c6 6f c6 e1                                      bic r6, r6, r6, asr #31
00489e6c  a8 11 fa eb                                      bl #0x30e514
00489e70  fe 15 a0 e3                                      mov r1, #0x3f800000
00489e74  08 60 85 e5                                      str r6, [r5, #8]
00489e78  4b 11 fa eb                                      bl #0x30e3ac
00489e7c  92 11 fa eb                                      bl #0x30e4cc
00489e80  c0 0f c0 e1                                      bic r0, r0, r0, asr #31
00489e84  0c 00 85 e5                                      str r0, [r5, #0xc]
00489e88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0048a380, declared_size=84, range_size=84, mode=arm
; class-group: rnd::Exit
; alias: _ZN3rnd4ExitC1ERKNS_9DirectionEPNS_5BlockEiifiRSt6vectorISsSaISsEE
; demangled: rnd::Exit::Exit(rnd::Direction const&, rnd::Block*, int, int, float, int, std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&)
; decoder-mode: arm
0048a380  70 40 2d e9                                      push {r4, r5, r6, lr}
0048a384  14 10 80 e5                                      str r1, [r0, #0x14]
0048a388  08 30 80 e5                                      str r3, [r0, #8]
0048a38c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0048a390  00 40 a0 e1                                      mov r4, r0
0048a394  02 50 a0 e1                                      mov r5, r2
0048a398  0c 30 80 e5                                      str r3, [r0, #0xc]
0048a39c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0048a3a0  10 30 80 e5                                      str r3, [r0, #0x10]
0048a3a4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0048a3a8  18 30 80 e5                                      str r3, [r0, #0x18]
0048a3ac  04 20 84 e5                                      str r2, [r4, #4]
0048a3b0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0048a3b4  1c 00 80 e2                                      add r0, r0, #0x1c
0048a3b8  cc ff ff eb                                      bl #0x48a2f0
0048a3bc  00 30 a0 e3                                      mov r3, #0
0048a3c0  28 30 84 e5                                      str r3, [r4, #0x28]
0048a3c4  18 30 95 e5                                      ldr r3, [r5, #0x18]
0048a3c8  04 00 a0 e1                                      mov r0, r4
0048a3cc  00 30 84 e5                                      str r3, [r4]
0048a3d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048a3d4, declared_size=84, range_size=84, mode=arm
; class-group: rnd::Exit
; alias: _ZN3rnd4ExitC2ERKNS_9DirectionEPNS_5BlockEiifiRSt6vectorISsSaISsEE
; demangled: rnd::Exit::Exit(rnd::Direction const&, rnd::Block*, int, int, float, int, std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&)
; decoder-mode: arm
0048a3d4  70 40 2d e9                                      push {r4, r5, r6, lr}
0048a3d8  14 10 80 e5                                      str r1, [r0, #0x14]
0048a3dc  08 30 80 e5                                      str r3, [r0, #8]
0048a3e0  10 30 9d e5                                      ldr r3, [sp, #0x10]
0048a3e4  00 40 a0 e1                                      mov r4, r0
0048a3e8  02 50 a0 e1                                      mov r5, r2
0048a3ec  0c 30 80 e5                                      str r3, [r0, #0xc]
0048a3f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
0048a3f4  10 30 80 e5                                      str r3, [r0, #0x10]
0048a3f8  18 30 9d e5                                      ldr r3, [sp, #0x18]
0048a3fc  18 30 80 e5                                      str r3, [r0, #0x18]
0048a400  04 20 84 e5                                      str r2, [r4, #4]
0048a404  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0048a408  1c 00 80 e2                                      add r0, r0, #0x1c
0048a40c  b7 ff ff eb                                      bl #0x48a2f0
0048a410  00 30 a0 e3                                      mov r3, #0
0048a414  28 30 84 e5                                      str r3, [r4, #0x28]
0048a418  18 30 95 e5                                      ldr r3, [r5, #0x18]
0048a41c  04 00 a0 e1                                      mov r0, r4
0048a420  00 30 84 e5                                      str r3, [r4]
0048a424  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048a5d0, declared_size=828, range_size=828, mode=arm
; class-group: rnd::Exit
; alias: _ZN3rnd4Exit11LoadFromXmlE11TiXmlHandlePNS_5BlockEi
; demangled: rnd::Exit::LoadFromXml(TiXmlHandle, rnd::Block*, int)
; decoder-mode: arm
0048a5d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048a5d4  18 a3 9f e5                                      ldr sl, [pc, #0x318]
0048a5d8  18 c3 9f e5                                      ldr ip, [pc, #0x318]
0048a5dc  9c d0 4d e2                                      sub sp, sp, #0x9c
0048a5e0  0a a0 8f e0                                      add sl, pc, sl
0048a5e4  14 c0 8d e5                                      str ip, [sp, #0x14]
0048a5e8  0c c0 9a e7                                      ldr ip, [sl, ip]
0048a5ec  20 20 8d e5                                      str r2, [sp, #0x20]
0048a5f0  18 00 8d e5                                      str r0, [sp, #0x18]
0048a5f4  00 20 9c e5                                      ldr r2, [ip]
0048a5f8  01 00 a0 e1                                      mov r0, r1
0048a5fc  24 30 8d e5                                      str r3, [sp, #0x24]
0048a600  94 20 8d e5                                      str r2, [sp, #0x94]
0048a604  0f e5 ff eb                                      bl #0x483a48
0048a608  ec 12 9f e5                                      ldr r1, [pc, #0x2ec]
0048a60c  1c 00 8d e5                                      str r0, [sp, #0x1c]
0048a610  7c 40 8d e2                                      add r4, sp, #0x7c
0048a614  01 10 8f e0                                      add r1, pc, r1
0048a618  94 29 02 eb                                      bl #0x514c70
0048a61c  10 10 a0 e3                                      mov r1, #0x10
0048a620  00 50 a0 e1                                      mov r5, r0
0048a624  04 00 a0 e1                                      mov r0, r4
0048a628  8c 40 8d e5                                      str r4, [sp, #0x8c]
0048a62c  90 40 8d e5                                      str r4, [sp, #0x90]
0048a630  11 1c fa eb                                      bl #0x31167c
0048a634  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
0048a638  00 30 a0 e3                                      mov r3, #0
0048a63c  00 00 55 e3                                      cmp r5, #0
0048a640  00 30 c2 e5                                      strb r3, [r2]
0048a644  38 80 8d 02                                      addeq r8, sp, #0x38
0048a648  40 30 8d e5                                      str r3, [sp, #0x40]
0048a64c  38 30 8d e5                                      str r3, [sp, #0x38]
0048a650  3c 30 8d e5                                      str r3, [sp, #0x3c]
0048a654  56 00 00 0a                                      beq #0x48a7b4
0048a658  05 00 a0 e1                                      mov r0, r5
0048a65c  fc 0d fa eb                                      bl #0x30de54
0048a660  05 10 a0 e1                                      mov r1, r5
0048a664  00 20 85 e0                                      add r2, r5, r0
0048a668  04 00 a0 e1                                      mov r0, r4
0048a66c  db 18 fa eb                                      bl #0x3109e0
0048a670  90 00 9d e5                                      ldr r0, [sp, #0x90]
0048a674  8c 50 9d e5                                      ldr r5, [sp, #0x8c]
0048a678  20 10 a0 e3                                      mov r1, #0x20
0048a67c  05 20 60 e0                                      rsb r2, r0, r5
0048a680  cd 0f fa eb                                      bl #0x30e5bc
0048a684  00 00 50 e3                                      cmp r0, #0
0048a688  0c 00 00 0a                                      beq #0x48a6c0
0048a68c  00 00 55 e1                                      cmp r5, r0
0048a690  0a 00 00 0a                                      beq #0x48a6c0
0048a694  01 30 80 e2                                      add r3, r0, #1
0048a698  03 00 55 e1                                      cmp r5, r3
0048a69c  07 00 00 0a                                      beq #0x48a6c0
0048a6a0  01 50 45 e2                                      sub r5, r5, #1
0048a6a4  00 30 a0 e1                                      mov r3, r0
0048a6a8  01 20 d3 e5                                      ldrb r2, [r3, #1]
0048a6ac  01 30 83 e2                                      add r3, r3, #1
0048a6b0  20 00 52 e3                                      cmp r2, #0x20
0048a6b4  01 20 c0 14                                      strbne r2, [r0], #1
0048a6b8  05 00 53 e1                                      cmp r3, r5
0048a6bc  f9 ff ff 1a                                      bne #0x48a6a8
0048a6c0  04 00 a0 e1                                      mov r0, r4
0048a6c4  12 fe ff eb                                      bl #0x489f14
0048a6c8  01 00 70 e3                                      cmn r0, #1
0048a6cc  00 50 a0 e1                                      mov r5, r0
0048a6d0  38 80 8d 02                                      addeq r8, sp, #0x38
0048a6d4  33 00 00 0a                                      beq #0x48a7a8
0048a6d8  64 60 8d e2                                      add r6, sp, #0x64
0048a6dc  48 90 8d e2                                      add sb, sp, #0x48
0048a6e0  38 80 8d e2                                      add r8, sp, #0x38
0048a6e4  4c 70 8d e2                                      add r7, sp, #0x4c
0048a6e8  44 b0 8d e2                                      add fp, sp, #0x44
0048a6ec  19 00 00 ea                                      b #0x48a758
0048a6f0  02 fa 09 eb                                      bl #0x708f00
0048a6f4  01 20 85 e2                                      add r2, r5, #1
0048a6f8  04 10 a0 e1                                      mov r1, r4
0048a6fc  00 30 e0 e3                                      mvn r3, #0
0048a700  07 00 a0 e1                                      mov r0, r7
0048a704  00 b0 8d e5                                      str fp, [sp]
0048a708  72 2d fe eb                                      bl #0x415cd8
0048a70c  04 00 a0 e1                                      mov r0, r4
0048a710  60 10 9d e5                                      ldr r1, [sp, #0x60]
0048a714  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0048a718  b0 18 fa eb                                      bl #0x3109e0
0048a71c  60 00 9d e5                                      ldr r0, [sp, #0x60]
0048a720  07 00 50 e1                                      cmp r0, r7
0048a724  06 00 00 0a                                      beq #0x48a744
0048a728  00 00 50 e3                                      cmp r0, #0
0048a72c  04 00 00 0a                                      beq #0x48a744
0048a730  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0048a734  01 10 60 e0                                      rsb r1, r0, r1
0048a738  80 00 51 e3                                      cmp r1, #0x80
0048a73c  65 00 00 8a                                      bhi #0x48a8d8
0048a740  ee f9 09 eb                                      bl #0x708f00
0048a744  04 00 a0 e1                                      mov r0, r4
0048a748  f1 fd ff eb                                      bl #0x489f14
0048a74c  01 00 70 e3                                      cmn r0, #1
0048a750  00 50 a0 e1                                      mov r5, r0
0048a754  13 00 00 0a                                      beq #0x48a7a8
0048a758  00 20 a0 e3                                      mov r2, #0
0048a75c  05 30 a0 e1                                      mov r3, r5
0048a760  04 10 a0 e1                                      mov r1, r4
0048a764  06 00 a0 e1                                      mov r0, r6
0048a768  00 90 8d e5                                      str sb, [sp]
0048a76c  59 2d fe eb                                      bl #0x415cd8
0048a770  08 00 a0 e1                                      mov r0, r8
0048a774  06 10 a0 e1                                      mov r1, r6
0048a778  d6 84 fa eb                                      bl #0x32bad8
0048a77c  78 00 9d e5                                      ldr r0, [sp, #0x78]
0048a780  06 00 50 e1                                      cmp r0, r6
0048a784  da ff ff 0a                                      beq #0x48a6f4
0048a788  00 00 50 e3                                      cmp r0, #0
0048a78c  d8 ff ff 0a                                      beq #0x48a6f4
0048a790  64 10 9d e5                                      ldr r1, [sp, #0x64]
0048a794  01 10 60 e0                                      rsb r1, r0, r1
0048a798  80 00 51 e3                                      cmp r1, #0x80
0048a79c  d3 ff ff 9a                                      bls #0x48a6f0
0048a7a0  26 17 fa eb                                      bl #0x310440
0048a7a4  d2 ff ff ea                                      b #0x48a6f4
0048a7a8  08 00 a0 e1                                      mov r0, r8
0048a7ac  04 10 a0 e1                                      mov r1, r4
0048a7b0  c8 84 fa eb                                      bl #0x32bad8
0048a7b4  44 11 9f e5                                      ldr r1, [pc, #0x144]
0048a7b8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0048a7bc  01 10 8f e0                                      add r1, pc, r1
0048a7c0  2a 29 02 eb                                      bl #0x514c70
0048a7c4  00 70 50 e2                                      subs r7, r0, #0
0048a7c8  44 00 00 0a                                      beq #0x48a8e0
0048a7cc  90 00 9d e5                                      ldr r0, [sp, #0x90]
0048a7d0  b3 fc ff eb                                      bl #0x489aa4
0048a7d4  00 60 50 e2                                      subs r6, r0, #0
0048a7d8  40 00 00 1a                                      bne #0x48a8e0
0048a7dc  20 b1 9f e5                                      ldr fp, [pc, #0x120]
0048a7e0  0b 90 9a e7                                      ldr sb, [sl, fp]
0048a7e4  06 52 a0 e1                                      lsl r5, r6, #4
0048a7e8  05 30 89 e0                                      add r3, sb, r5
0048a7ec  04 10 93 e5                                      ldr r1, [r3, #4]
0048a7f0  07 00 a0 e1                                      mov r0, r7
0048a7f4  bb 0f fa eb                                      bl #0x30e6e8
0048a7f8  00 00 50 e3                                      cmp r0, #0
0048a7fc  03 00 00 0a                                      beq #0x48a810
0048a800  01 60 86 e2                                      add r6, r6, #1
0048a804  04 00 56 e3                                      cmp r6, #4
0048a808  f5 ff ff 1a                                      bne #0x48a7e4
0048a80c  40 50 a0 e3                                      mov r5, #0x40
0048a810  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0048a814  00 30 a0 e3                                      mov r3, #0
0048a818  2c 60 8d e2                                      add r6, sp, #0x2c
0048a81c  01 10 8f e0                                      add r1, pc, r1
0048a820  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0048a824  34 30 8d e5                                      str r3, [sp, #0x34]
0048a828  2c 30 8d e5                                      str r3, [sp, #0x2c]
0048a82c  30 30 8d e5                                      str r3, [sp, #0x30]
0048a830  0e 29 02 eb                                      bl #0x514c70
0048a834  06 10 a0 e1                                      mov r1, r6
0048a838  67 12 fa eb                                      bl #0x30f1dc
0048a83c  18 00 9d e5                                      ldr r0, [sp, #0x18]
0048a840  06 10 a0 e1                                      mov r1, r6
0048a844  20 20 9d e5                                      ldr r2, [sp, #0x20]
0048a848  63 fd ff eb                                      bl #0x489ddc
0048a84c  18 00 9d e5                                      ldr r0, [sp, #0x18]
0048a850  0b 10 9a e7                                      ldr r1, [sl, fp]
0048a854  20 20 9d e5                                      ldr r2, [sp, #0x20]
0048a858  0c c0 90 e5                                      ldr ip, [r0, #0xc]
0048a85c  08 30 90 e5                                      ldr r3, [r0, #8]
0048a860  05 10 81 e0                                      add r1, r1, r5
0048a864  00 c0 8d e5                                      str ip, [sp]
0048a868  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0048a86c  0c 80 8d e5                                      str r8, [sp, #0xc]
0048a870  01 50 a0 e3                                      mov r5, #1
0048a874  04 c0 8d e5                                      str ip, [sp, #4]
0048a878  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0048a87c  08 c0 8d e5                                      str ip, [sp, #8]
0048a880  be fe ff eb                                      bl #0x48a380
0048a884  08 00 a0 e1                                      mov r0, r8
0048a888  a8 25 fa eb                                      bl #0x313f30
0048a88c  90 00 9d e5                                      ldr r0, [sp, #0x90]
0048a890  04 00 50 e1                                      cmp r0, r4
0048a894  06 00 00 0a                                      beq #0x48a8b4
0048a898  00 00 50 e3                                      cmp r0, #0
0048a89c  04 00 00 0a                                      beq #0x48a8b4
0048a8a0  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
0048a8a4  01 10 60 e0                                      rsb r1, r0, r1
0048a8a8  80 00 51 e3                                      cmp r1, #0x80
0048a8ac  0d 00 00 8a                                      bhi #0x48a8e8
0048a8b0  92 f9 09 eb                                      bl #0x708f00
0048a8b4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0048a8b8  94 20 9d e5                                      ldr r2, [sp, #0x94]
0048a8bc  00 30 9a e7                                      ldr r3, [sl, r0]
0048a8c0  05 00 a0 e1                                      mov r0, r5
0048a8c4  00 30 93 e5                                      ldr r3, [r3]
0048a8c8  03 00 52 e1                                      cmp r2, r3
0048a8cc  07 00 00 1a                                      bne #0x48a8f0
0048a8d0  9c d0 8d e2                                      add sp, sp, #0x9c
0048a8d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048a8d8  d8 16 fa eb                                      bl #0x310440
0048a8dc  98 ff ff ea                                      b #0x48a744
0048a8e0  00 50 a0 e3                                      mov r5, #0
0048a8e4  e6 ff ff ea                                      b #0x48a884
0048a8e8  d4 16 fa eb                                      bl #0x310440
0048a8ec  f0 ff ff ea                                      b #0x48a8b4
0048a8f0  86 0e fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0048a8f4  b0 a4 50 00 ac 40 00 00 e4 a6 44 00 4c a5 44 00  .byte 0xb0, 0xa4, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0xa6, 0x44, 0x00, 0x4c, 0xa5, 0x44, 0x00
0048a904  fc 43 00 00 0c 7a 43 00                          .byte 0xfc, 0x43, 0x00, 0x00, 0x0c, 0x7a, 0x43, 0x00
