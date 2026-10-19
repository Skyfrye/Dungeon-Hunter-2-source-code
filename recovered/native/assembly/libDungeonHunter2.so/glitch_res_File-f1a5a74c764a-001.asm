; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00657fa0, declared_size=168, range_size=168, mode=arm
; class-group: glitch::res::File
; alias: _ZN6glitch3res4File4InitEPv
; demangled: glitch::res::File::Init(void*)
; decoder-mode: arm
00657fa0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00657fa4  00 30 a0 e3                                      mov r3, #0
00657fa8  30 d0 4d e2                                      sub sp, sp, #0x30
00657fac  00 00 51 e3                                      cmp r1, #0
00657fb0  28 30 cd e5                                      strb r3, [sp, #0x28]
00657fb4  00 40 a0 e1                                      mov r4, r0
00657fb8  04 10 8d e5                                      str r1, [sp, #4]
00657fbc  08 30 cd e5                                      strb r3, [sp, #8]
00657fc0  0c 30 8d e5                                      str r3, [sp, #0xc]
00657fc4  20 30 8d e5                                      str r3, [sp, #0x20]
00657fc8  24 30 8d e5                                      str r3, [sp, #0x24]
00657fcc  05 00 00 0a                                      beq #0x657fe8
00657fd0  04 00 8d e2                                      add r0, sp, #4
00657fd4  0c 09 01 eb                                      bl #0x69a40c
00657fd8  04 10 9d e5                                      ldr r1, [sp, #4]
00657fdc  01 00 70 e2                                      rsbs r0, r0, #1
00657fe0  00 00 a0 33                                      movlo r0, #0
00657fe4  08 00 cd e5                                      strb r0, [sp, #8]
00657fe8  08 00 dd e5                                      ldrb r0, [sp, #8]
00657fec  0c 90 9d e5                                      ldr sb, [sp, #0xc]
00657ff0  10 80 9d e5                                      ldr r8, [sp, #0x10]
00657ff4  14 70 9d e5                                      ldr r7, [sp, #0x14]
00657ff8  18 60 9d e5                                      ldr r6, [sp, #0x18]
00657ffc  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
00658000  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00658004  24 20 9d e5                                      ldr r2, [sp, #0x24]
00658008  28 30 dd e5                                      ldrb r3, [sp, #0x28]
0065800c  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
00658010  04 00 c4 e5                                      strb r0, [r4, #4]
00658014  00 10 84 e5                                      str r1, [r4]
00658018  08 90 84 e5                                      str sb, [r4, #8]
0065801c  28 a0 84 e5                                      str sl, [r4, #0x28]
00658020  0c 80 84 e5                                      str r8, [r4, #0xc]
00658024  10 70 84 e5                                      str r7, [r4, #0x10]
00658028  14 60 84 e5                                      str r6, [r4, #0x14]
0065802c  18 50 84 e5                                      str r5, [r4, #0x18]
00658030  1c c0 84 e5                                      str ip, [r4, #0x1c]
00658034  20 20 84 e5                                      str r2, [r4, #0x20]
00658038  24 30 c4 e5                                      strb r3, [r4, #0x24]
0065803c  01 00 20 e2                                      eor r0, r0, #1
00658040  30 d0 8d e2                                      add sp, sp, #0x30
00658044  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0069a40c, declared_size=1108, range_size=1108, mode=arm
; class-group: glitch::res::File
; alias: _ZN6glitch3res4File4InitEv
; demangled: glitch::res::File::Init()
; decoder-mode: arm
0069a40c  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
0069a410  00 30 90 e5                                      ldr r3, [r0]
0069a414  34 24 9f e5                                      ldr r2, [pc, #0x434]
0069a418  34 14 9f e5                                      ldr r1, [pc, #0x434]
0069a41c  0c 40 93 e5                                      ldr r4, [r3, #0xc]
0069a420  02 20 8f e0                                      add r2, pc, r2
0069a424  01 50 92 e7                                      ldr r5, [r2, r1]
0069a428  0c 40 80 e5                                      str r4, [r0, #0xc]
0069a42c  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0069a430  28 d0 4d e2                                      sub sp, sp, #0x28
0069a434  28 c0 80 e5                                      str ip, [r0, #0x28]
0069a438  2c c0 93 e5                                      ldr ip, [r3, #0x2c]
0069a43c  10 c0 80 e5                                      str ip, [r0, #0x10]
0069a440  38 60 93 e5                                      ldr r6, [r3, #0x38]
0069a444  04 c0 6c e0                                      rsb ip, ip, r4
0069a448  0c c0 66 e0                                      rsb ip, r6, ip
0069a44c  18 c0 80 e5                                      str ip, [r0, #0x18]
0069a450  30 c0 93 e5                                      ldr ip, [r3, #0x30]
0069a454  14 c0 80 e5                                      str ip, [r0, #0x14]
0069a458  14 c0 93 e5                                      ldr ip, [r3, #0x14]
0069a45c  ac cf a0 e1                                      lsr ip, ip, #0x1f
0069a460  0c 31 85 e7                                      str r3, [r5, ip, lsl #2]
0069a464  d0 c0 d3 e1                                      ldrsb ip, [r3]
0069a468  42 00 5c e3                                      cmp ip, #0x42
0069a46c  03 00 00 0a                                      beq #0x69a480
0069a470  00 00 e0 e3                                      mvn r0, #0
0069a474  28 d0 8d e2                                      add sp, sp, #0x28
0069a478  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
0069a47c  1e ff 2f e1                                      bx lr
0069a480  d1 c0 d3 e1                                      ldrsb ip, [r3, #1]
0069a484  52 00 5c e3                                      cmp ip, #0x52
0069a488  f8 ff ff 1a                                      bne #0x69a470
0069a48c  d2 c0 d3 e1                                      ldrsb ip, [r3, #2]
0069a490  45 00 5c e3                                      cmp ip, #0x45
0069a494  f5 ff ff 1a                                      bne #0x69a470
0069a498  d3 c0 d3 e1                                      ldrsb ip, [r3, #3]
0069a49c  53 00 5c e3                                      cmp ip, #0x53
0069a4a0  f2 ff ff 1a                                      bne #0x69a470
0069a4a4  b6 c0 d3 e1                                      ldrh ip, [r3, #6]
0069a4a8  02 09 1c e3                                      tst ip, #0x8000
0069a4ac  e5 00 00 1a                                      bne #0x69a848
0069a4b0  8c c8 e0 e1                                      mvn ip, ip, lsl #17
0069a4b4  ac c8 e0 e1                                      mvn ip, ip, lsr #17
0069a4b8  b6 c0 c3 e1                                      strh ip, [r3, #6]
0069a4bc  08 c0 90 e5                                      ldr ip, [r0, #8]
0069a4c0  00 00 5c e3                                      cmp ip, #0
0069a4c4  ce 00 00 0a                                      beq #0x69a804
0069a4c8  88 43 9f e5                                      ldr r4, [pc, #0x388]
0069a4cc  88 53 9f e5                                      ldr r5, [pc, #0x388]
0069a4d0  18 40 8d e5                                      str r4, [sp, #0x18]
0069a4d4  18 60 9d e5                                      ldr r6, [sp, #0x18]
0069a4d8  08 40 93 e5                                      ldr r4, [r3, #8]
0069a4dc  1c 50 8d e5                                      str r5, [sp, #0x1c]
0069a4e0  06 50 92 e7                                      ldr r5, [r2, r6]
0069a4e4  18 c0 83 e5                                      str ip, [r3, #0x18]
0069a4e8  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
0069a4ec  10 60 93 e5                                      ldr r6, [r3, #0x10]
0069a4f0  00 40 85 e5                                      str r4, [r5]
0069a4f4  14 50 93 e5                                      ldr r5, [r3, #0x14]
0069a4f8  07 c0 92 e7                                      ldr ip, [r2, r7]
0069a4fc  06 61 84 e0                                      add r6, r4, r6, lsl #2
0069a500  a5 4f a0 e1                                      lsr r4, r5, #0x1f
0069a504  14 60 8d e5                                      str r6, [sp, #0x14]
0069a508  04 61 8c e7                                      str r6, [ip, r4, lsl #2]
0069a50c  10 40 93 e5                                      ldr r4, [r3, #0x10]
0069a510  00 50 a0 e3                                      mov r5, #0
0069a514  04 00 55 e1                                      cmp r5, r4
0069a518  ca 00 00 2a                                      bhs #0x69a848
0069a51c  18 70 93 e5                                      ldr r7, [r3, #0x18]
0069a520  14 80 93 e5                                      ldr r8, [r3, #0x14]
0069a524  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0069a528  05 61 97 e7                                      ldr r6, [r7, r5, lsl #2]
0069a52c  14 90 9d e5                                      ldr sb, [sp, #0x14]
0069a530  05 b1 a0 e1                                      lsl fp, r5, #2
0069a534  06 c0 68 e0                                      rsb ip, r8, r6
0069a538  0a 00 5c e1                                      cmp ip, sl
0069a53c  10 90 8d e5                                      str sb, [sp, #0x10]
0069a540  a1 00 00 8a                                      bhi #0x69a7cc
0069a544  09 a0 a0 e1                                      mov sl, sb
0069a548  00 90 a0 e3                                      mov sb, #0
0069a54c  24 30 8d e5                                      str r3, [sp, #0x24]
0069a550  20 90 8d e5                                      str sb, [sp, #0x20]
0069a554  0c 00 5a e1                                      cmp sl, ip
0069a558  4f 00 00 8a                                      bhi #0x69a69c
0069a55c  18 90 90 e5                                      ldr sb, [r0, #0x18]
0069a560  09 00 5c e1                                      cmp ip, sb
0069a564  0c 90 8d e5                                      str sb, [sp, #0xc]
0069a568  7b 00 00 9a                                      bls #0x69a75c
0069a56c  fc 8f 0f e3                                      movw r8, #0xfffc
0069a570  ff 8f 4f e3                                      movt r8, #0xffff
0069a574  14 a0 90 e5                                      ldr sl, [r0, #0x14]
0069a578  08 80 69 e0                                      rsb r8, sb, r8
0069a57c  0c 80 88 e0                                      add r8, r8, ip
0069a580  a8 01 5a e1                                      cmp sl, r8, lsr #3
0069a584  42 00 00 aa                                      bge #0x69a694
0069a588  01 a0 4a e2                                      sub sl, sl, #1
0069a58c  24 a0 8d e5                                      str sl, [sp, #0x24]
0069a590  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
0069a594  04 a0 a0 e3                                      mov sl, #4
0069a598  00 80 a0 e3                                      mov r8, #0
0069a59c  05 90 a0 e1                                      mov sb, r5
0069a5a0  04 30 8d e5                                      str r3, [sp, #4]
0069a5a4  24 30 9d e5                                      ldr r3, [sp, #0x24]
0069a5a8  0a 50 84 e0                                      add r5, r4, sl
0069a5ac  0c 50 8d e5                                      str r5, [sp, #0xc]
0069a5b0  03 00 58 e1                                      cmp r8, r3
0069a5b4  09 00 00 aa                                      bge #0x69a5e0
0069a5b8  0a 50 94 e7                                      ldr r5, [r4, sl]
0069a5bc  08 a0 8a e2                                      add sl, sl, #8
0069a5c0  05 00 5c e1                                      cmp ip, r5
0069a5c4  03 00 00 9a                                      bls #0x69a5d8
0069a5c8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0069a5cc  08 50 93 e5                                      ldr r5, [r3, #8]
0069a5d0  05 00 5c e1                                      cmp ip, r5
0069a5d4  01 00 00 3a                                      blo #0x69a5e0
0069a5d8  01 80 88 e2                                      add r8, r8, #1
0069a5dc  f0 ff ff ea                                      b #0x69a5a4
0069a5e0  20 a0 90 e5                                      ldr sl, [r0, #0x20]
0069a5e4  88 41 84 e0                                      add r4, r4, r8, lsl #3
0069a5e8  04 40 94 e5                                      ldr r4, [r4, #4]
0069a5ec  08 81 9a e7                                      ldr r8, [sl, r8, lsl #2]
0069a5f0  04 30 9d e5                                      ldr r3, [sp, #4]
0069a5f4  09 50 a0 e1                                      mov r5, sb
0069a5f8  08 80 64 e0                                      rsb r8, r4, r8
0069a5fc  06 40 88 e0                                      add r4, r8, r6
0069a600  0b 40 87 e7                                      str r4, [r7, fp]
0069a604  06 40 98 e7                                      ldr r4, [r8, r6]
0069a608  0c 40 8d e5                                      str r4, [sp, #0xc]
0069a60c  14 40 93 e5                                      ldr r4, [r3, #0x14]
0069a610  0c 90 9d e5                                      ldr sb, [sp, #0xc]
0069a614  18 a0 90 e5                                      ldr sl, [r0, #0x18]
0069a618  09 40 64 e0                                      rsb r4, r4, sb
0069a61c  0a 00 54 e1                                      cmp r4, sl
0069a620  21 00 00 9a                                      bls #0x69a6ac
0069a624  14 40 90 e5                                      ldr r4, [r0, #0x14]
0069a628  04 a0 a0 e3                                      mov sl, #4
0069a62c  00 70 a0 e3                                      mov r7, #0
0069a630  01 40 44 e2                                      sub r4, r4, #1
0069a634  10 40 8d e5                                      str r4, [sp, #0x10]
0069a638  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
0069a63c  10 90 9d e5                                      ldr sb, [sp, #0x10]
0069a640  0a b0 84 e0                                      add fp, r4, sl
0069a644  09 00 57 e1                                      cmp r7, sb
0069a648  08 00 00 aa                                      bge #0x69a670
0069a64c  0a 90 94 e7                                      ldr sb, [r4, sl]
0069a650  08 a0 8a e2                                      add sl, sl, #8
0069a654  09 00 5c e1                                      cmp ip, sb
0069a658  02 00 00 9a                                      bls #0x69a668
0069a65c  08 90 9b e5                                      ldr sb, [fp, #8]
0069a660  09 00 5c e1                                      cmp ip, sb
0069a664  01 00 00 3a                                      blo #0x69a670
0069a668  01 70 87 e2                                      add r7, r7, #1
0069a66c  f2 ff ff ea                                      b #0x69a63c
0069a670  20 c0 90 e5                                      ldr ip, [r0, #0x20]
0069a674  87 41 84 e0                                      add r4, r4, r7, lsl #3
0069a678  04 40 94 e5                                      ldr r4, [r4, #4]
0069a67c  07 c1 9c e7                                      ldr ip, [ip, r7, lsl #2]
0069a680  0c a0 9d e5                                      ldr sl, [sp, #0xc]
0069a684  0c c0 64 e0                                      rsb ip, r4, ip
0069a688  0a c0 8c e0                                      add ip, ip, sl
0069a68c  06 c0 88 e7                                      str ip, [r8, r6]
0069a690  10 40 93 e5                                      ldr r4, [r3, #0x10]
0069a694  01 50 85 e2                                      add r5, r5, #1
0069a698  9d ff ff ea                                      b #0x69a514
0069a69c  24 a0 9d e5                                      ldr sl, [sp, #0x24]
0069a6a0  0a 80 68 e0                                      rsb r8, r8, sl
0069a6a4  06 60 88 e0                                      add r6, r8, r6
0069a6a8  0b 60 87 e7                                      str r6, [r7, fp]
0069a6ac  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0069a6b0  00 00 5c e3                                      cmp ip, #0
0069a6b4  3b 00 00 1a                                      bne #0x69a7a8
0069a6b8  00 00 55 e3                                      cmp r5, #0
0069a6bc  39 00 00 0a                                      beq #0x69a7a8
0069a6c0  0b 60 97 e7                                      ldr r6, [r7, fp]
0069a6c4  14 40 93 e5                                      ldr r4, [r3, #0x14]
0069a6c8  0c 80 90 e5                                      ldr r8, [r0, #0xc]
0069a6cc  00 70 96 e5                                      ldr r7, [r6]
0069a6d0  07 c0 64 e0                                      rsb ip, r4, r7
0069a6d4  08 00 5c e1                                      cmp ip, r8
0069a6d8  1c 90 9d 85                                      ldrhi sb, [sp, #0x1c]
0069a6dc  04 c0 8c 80                                      addhi ip, ip, r4
0069a6e0  ac 4f a0 81                                      lsrhi r4, ip, #0x1f
0069a6e4  09 a0 92 87                                      ldrhi sl, [r2, sb]
0069a6e8  01 80 92 87                                      ldrhi r8, [r2, r1]
0069a6ec  03 80 a0 91                                      movls r8, r3
0069a6f0  04 a1 9a 87                                      ldrhi sl, [sl, r4, lsl #2]
0069a6f4  04 81 98 87                                      ldrhi r8, [r8, r4, lsl #2]
0069a6f8  02 41 0c 82                                      andhi r4, ip, #0x80000000
0069a6fc  10 a0 8d 85                                      strhi sl, [sp, #0x10]
0069a700  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0069a704  0c 00 5a e1                                      cmp sl, ip
0069a708  08 40 64 80                                      rsbhi r4, r4, r8
0069a70c  07 70 84 80                                      addhi r7, r4, r7
0069a710  00 70 86 85                                      strhi r7, [r6]
0069a714  23 00 00 8a                                      bhi #0x69a7a8
0069a718  18 a0 90 e5                                      ldr sl, [r0, #0x18]
0069a71c  0a 00 5c e1                                      cmp ip, sl
0069a720  14 a0 90 85                                      ldrhi sl, [r0, #0x14]
0069a724  04 80 a0 83                                      movhi r8, #4
0069a728  00 40 a0 83                                      movhi r4, #0
0069a72c  14 00 00 8a                                      bhi #0x69a784
0069a730  18 90 9d e5                                      ldr sb, [sp, #0x18]
0069a734  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0069a738  09 c0 92 e7                                      ldr ip, [r2, sb]
0069a73c  00 c0 9c e5                                      ldr ip, [ip]
0069a740  0c c0 6a e0                                      rsb ip, sl, ip
0069a744  0c c0 64 e0                                      rsb ip, r4, ip
0069a748  0c 80 88 e0                                      add r8, r8, ip
0069a74c  07 70 88 e0                                      add r7, r8, r7
0069a750  00 70 86 e5                                      str r7, [r6]
0069a754  10 40 93 e5                                      ldr r4, [r3, #0x10]
0069a758  cd ff ff ea                                      b #0x69a694
0069a75c  18 40 9d e5                                      ldr r4, [sp, #0x18]
0069a760  24 90 9d e5                                      ldr sb, [sp, #0x24]
0069a764  04 c0 92 e7                                      ldr ip, [r2, r4]
0069a768  00 c0 9c e5                                      ldr ip, [ip]
0069a76c  0c c0 6a e0                                      rsb ip, sl, ip
0069a770  0c c0 68 e0                                      rsb ip, r8, ip
0069a774  0c c0 89 e0                                      add ip, sb, ip
0069a778  06 c0 8c e0                                      add ip, ip, r6
0069a77c  0b c0 87 e7                                      str ip, [r7, fp]
0069a780  c9 ff ff ea                                      b #0x69a6ac
0069a784  0a 00 54 e1                                      cmp r4, sl
0069a788  08 00 00 aa                                      bge #0x69a7b0
0069a78c  1c 90 90 e5                                      ldr sb, [r0, #0x1c]
0069a790  08 90 99 e7                                      ldr sb, [sb, r8]
0069a794  08 80 88 e2                                      add r8, r8, #8
0069a798  0c 00 59 e1                                      cmp sb, ip
0069a79c  03 00 00 0a                                      beq #0x69a7b0
0069a7a0  01 40 84 e2                                      add r4, r4, #1
0069a7a4  f6 ff ff ea                                      b #0x69a784
0069a7a8  10 40 93 e5                                      ldr r4, [r3, #0x10]
0069a7ac  b8 ff ff ea                                      b #0x69a694
0069a7b0  20 80 90 e5                                      ldr r8, [r0, #0x20]
0069a7b4  04 41 98 e7                                      ldr r4, [r8, r4, lsl #2]
0069a7b8  04 c0 6c e0                                      rsb ip, ip, r4
0069a7bc  07 70 8c e0                                      add r7, ip, r7
0069a7c0  00 70 86 e5                                      str r7, [r6]
0069a7c4  10 40 93 e5                                      ldr r4, [r3, #0x10]
0069a7c8  b1 ff ff ea                                      b #0x69a694
0069a7cc  01 a0 92 e7                                      ldr sl, [r2, r1]
0069a7d0  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
0069a7d4  08 c0 8c e0                                      add ip, ip, r8
0069a7d8  0c a0 8d e5                                      str sl, [sp, #0xc]
0069a7dc  09 a0 92 e7                                      ldr sl, [r2, sb]
0069a7e0  0c 90 9d e5                                      ldr sb, [sp, #0xc]
0069a7e4  ac 8f a0 e1                                      lsr r8, ip, #0x1f
0069a7e8  08 a1 9a e7                                      ldr sl, [sl, r8, lsl #2]
0069a7ec  08 81 99 e7                                      ldr r8, [sb, r8, lsl #2]
0069a7f0  01 90 a0 e3                                      mov sb, #1
0069a7f4  20 90 8d e5                                      str sb, [sp, #0x20]
0069a7f8  24 80 8d e5                                      str r8, [sp, #0x24]
0069a7fc  02 81 0c e2                                      and r8, ip, #0x80000000
0069a800  53 ff ff ea                                      b #0x69a554
0069a804  18 10 93 e5                                      ldr r1, [r3, #0x18]
0069a808  0c 20 a0 e1                                      mov r2, ip
0069a80c  01 10 83 e0                                      add r1, r3, r1
0069a810  18 10 83 e5                                      str r1, [r3, #0x18]
0069a814  10 10 93 e5                                      ldr r1, [r3, #0x10]
0069a818  01 00 52 e1                                      cmp r2, r1
0069a81c  09 00 00 2a                                      bhs #0x69a848
0069a820  18 00 93 e5                                      ldr r0, [r3, #0x18]
0069a824  00 00 52 e3                                      cmp r2, #0
0069a828  02 11 90 e7                                      ldr r1, [r0, r2, lsl #2]
0069a82c  01 c0 83 e0                                      add ip, r3, r1
0069a830  02 c1 80 e7                                      str ip, [r0, r2, lsl #2]
0069a834  01 00 93 17                                      ldrne r0, [r3, r1]
0069a838  01 20 82 e2                                      add r2, r2, #1
0069a83c  00 00 83 10                                      addne r0, r3, r0
0069a840  01 00 83 17                                      strne r0, [r3, r1]
0069a844  f2 ff ff ea                                      b #0x69a814
0069a848  00 00 a0 e3                                      mov r0, #0
0069a84c  08 ff ff ea                                      b #0x69a474
; mapping-symbol data/literal pool
0069a850  70 a6 2f 00 b4 22 00 00 84 10 00 00 34 39 00 00  .byte 0x70, 0xa6, 0x2f, 0x00, 0xb4, 0x22, 0x00, 0x00, 0x84, 0x10, 0x00, 0x00, 0x34, 0x39, 0x00, 0x00

; FUNCTION 0x0069a880, declared_size=1036, range_size=1036, mode=arm
; class-group: glitch::res::File
; alias: _ZN6glitch3res4File4InitEPNS0_10FileReaderE
; demangled: glitch::res::File::Init(glitch::res::FileReader*)
; decoder-mode: arm
0069a880  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0069a884  f4 83 9f e5                                      ldr r8, [pc, #0x3f4]
0069a888  f4 23 9f e5                                      ldr r2, [pc, #0x3f4]
0069a88c  53 df 4d e2                                      sub sp, sp, #0x14c
0069a890  08 80 8f e0                                      add r8, pc, r8
0069a894  0c 20 8d e5                                      str r2, [sp, #0xc]
0069a898  02 20 98 e7                                      ldr r2, [r8, r2]
0069a89c  00 30 91 e5                                      ldr r3, [r1]
0069a8a0  00 40 a0 e1                                      mov r4, r0
0069a8a4  00 20 92 e5                                      ldr r2, [r2]
0069a8a8  01 00 a0 e1                                      mov r0, r1
0069a8ac  01 60 a0 e1                                      mov r6, r1
0069a8b0  44 21 8d e5                                      str r2, [sp, #0x144]
0069a8b4  0f e0 a0 e1                                      mov lr, pc
0069a8b8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0069a8bc  0c 00 84 e5                                      str r0, [r4, #0xc]
0069a8c0  00 10 a0 e3                                      mov r1, #0
0069a8c4  3c 00 a0 e3                                      mov r0, #0x3c
0069a8c8  37 66 fa eb                                      bl #0x5341ac
0069a8cc  00 70 a0 e1                                      mov r7, r0
0069a8d0  00 30 96 e5                                      ldr r3, [r6]
0069a8d4  06 00 a0 e1                                      mov r0, r6
0069a8d8  07 10 a0 e1                                      mov r1, r7
0069a8dc  3c 20 a0 e3                                      mov r2, #0x3c
0069a8e0  0f e0 a0 e1                                      mov lr, pc
0069a8e4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0069a8e8  14 50 97 e5                                      ldr r5, [r7, #0x14]
0069a8ec  24 a0 97 e5                                      ldr sl, [r7, #0x24]
0069a8f0  00 00 55 e3                                      cmp r5, #0
0069a8f4  97 00 00 0a                                      beq #0x69ab58
0069a8f8  00 20 a0 e3                                      mov r2, #0
0069a8fc  3c 10 a0 e3                                      mov r1, #0x3c
0069a900  00 30 96 e5                                      ldr r3, [r6]
0069a904  06 00 a0 e1                                      mov r0, r6
0069a908  0f e0 a0 e1                                      mov lr, pc
0069a90c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0069a910  2c 10 97 e5                                      ldr r1, [r7, #0x2c]
0069a914  10 50 97 e5                                      ldr r5, [r7, #0x10]
0069a918  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0069a91c  10 10 84 e5                                      str r1, [r4, #0x10]
0069a920  30 20 97 e5                                      ldr r2, [r7, #0x30]
0069a924  05 51 a0 e1                                      lsl r5, r5, #2
0069a928  03 30 65 e0                                      rsb r3, r5, r3
0069a92c  14 20 84 e5                                      str r2, [r4, #0x14]
0069a930  38 20 97 e5                                      ldr r2, [r7, #0x38]
0069a934  03 30 61 e0                                      rsb r3, r1, r3
0069a938  00 10 a0 e3                                      mov r1, #0
0069a93c  03 30 62 e0                                      rsb r3, r2, r3
0069a940  18 30 84 e5                                      str r3, [r4, #0x18]
0069a944  34 30 97 e5                                      ldr r3, [r7, #0x34]
0069a948  05 00 a0 e1                                      mov r0, r5
0069a94c  01 90 a0 e1                                      mov sb, r1
0069a950  01 30 53 e0                                      subs r3, r3, r1
0069a954  01 30 a0 13                                      movne r3, #1
0069a958  24 30 c4 e5                                      strb r3, [r4, #0x24]
0069a95c  11 66 fa eb                                      bl #0x5341a8
0069a960  01 1b a0 e3                                      mov r1, #0x400
0069a964  00 a0 a0 e1                                      mov sl, r0
0069a968  18 00 94 e5                                      ldr r0, [r4, #0x18]
0069a96c  fd d6 f1 eb                                      bl #0x310568
0069a970  07 10 a0 e1                                      mov r1, r7
0069a974  3c 20 a0 e3                                      mov r2, #0x3c
0069a978  00 b0 a0 e1                                      mov fp, r0
0069a97c  b9 cf f1 eb                                      bl #0x30e868
0069a980  05 20 a0 e1                                      mov r2, r5
0069a984  0a 10 a0 e1                                      mov r1, sl
0069a988  00 30 96 e5                                      ldr r3, [r6]
0069a98c  06 00 a0 e1                                      mov r0, r6
0069a990  0f e0 a0 e1                                      mov lr, pc
0069a994  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0069a998  18 20 94 e5                                      ldr r2, [r4, #0x18]
0069a99c  00 30 96 e5                                      ldr r3, [r6]
0069a9a0  06 00 a0 e1                                      mov r0, r6
0069a9a4  3c 20 42 e2                                      sub r2, r2, #0x3c
0069a9a8  3c 10 8b e2                                      add r1, fp, #0x3c
0069a9ac  0f e0 a0 e1                                      mov lr, pc
0069a9b0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0069a9b4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0069a9b8  20 90 84 e5                                      str sb, [r4, #0x20]
0069a9bc  09 00 53 e1                                      cmp r3, sb
0069a9c0  29 00 00 da                                      ble #0x69aa6c
0069a9c4  14 00 94 e5                                      ldr r0, [r4, #0x14]
0069a9c8  09 10 a0 e1                                      mov r1, sb
0069a9cc  00 01 a0 e1                                      lsl r0, r0, #2
0069a9d0  f4 65 fa eb                                      bl #0x5341a8
0069a9d4  14 30 94 e5                                      ldr r3, [r4, #0x14]
0069a9d8  20 00 84 e5                                      str r0, [r4, #0x20]
0069a9dc  09 10 a0 e1                                      mov r1, sb
0069a9e0  83 01 a0 e1                                      lsl r0, r3, #3
0069a9e4  ef 65 fa eb                                      bl #0x5341a8
0069a9e8  14 20 94 e5                                      ldr r2, [r4, #0x14]
0069a9ec  1c 00 84 e5                                      str r0, [r4, #0x1c]
0069a9f0  00 10 a0 e1                                      mov r1, r0
0069a9f4  82 21 a0 e1                                      lsl r2, r2, #3
0069a9f8  00 30 96 e5                                      ldr r3, [r6]
0069a9fc  06 00 a0 e1                                      mov r0, r6
0069aa00  0f e0 a0 e1                                      mov lr, pc
0069aa04  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0069aa08  24 10 d4 e5                                      ldrb r1, [r4, #0x24]
0069aa0c  09 00 51 e1                                      cmp r1, sb
0069aa10  77 00 00 0a                                      beq #0x69abf4
0069aa14  14 30 94 e5                                      ldr r3, [r4, #0x14]
0069aa18  09 00 53 e1                                      cmp r3, sb
0069aa1c  12 00 00 da                                      ble #0x69aa6c
0069aa20  09 50 a0 e1                                      mov r5, sb
0069aa24  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0069aa28  00 10 a0 e3                                      mov r1, #0
0069aa2c  20 90 94 e5                                      ldr sb, [r4, #0x20]
0069aa30  85 01 93 e7                                      ldr r0, [r3, r5, lsl #3]
0069aa34  db 65 fa eb                                      bl #0x5341a8
0069aa38  05 01 89 e7                                      str r0, [sb, r5, lsl #2]
0069aa3c  20 10 94 e5                                      ldr r1, [r4, #0x20]
0069aa40  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0069aa44  00 30 96 e5                                      ldr r3, [r6]
0069aa48  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
0069aa4c  85 21 92 e7                                      ldr r2, [r2, r5, lsl #3]
0069aa50  06 00 a0 e1                                      mov r0, r6
0069aa54  0f e0 a0 e1                                      mov lr, pc
0069aa58  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0069aa5c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0069aa60  01 50 85 e2                                      add r5, r5, #1
0069aa64  05 00 53 e1                                      cmp r3, r5
0069aa68  ed ff ff ca                                      bgt #0x69aa24
0069aa6c  07 00 a0 e1                                      mov r0, r7
0069aa70  0e ce f1 eb                                      bl #0x30e2b0
0069aa74  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0069aa78  20 20 94 e5                                      ldr r2, [r4, #0x20]
0069aa7c  24 30 d4 e5                                      ldrb r3, [r4, #0x24]
0069aa80  00 00 a0 e3                                      mov r0, #0
0069aa84  00 00 5b e3                                      cmp fp, #0
0069aa88  18 00 cd e5                                      strb r0, [sp, #0x18]
0069aa8c  30 10 8d e5                                      str r1, [sp, #0x30]
0069aa90  34 20 8d e5                                      str r2, [sp, #0x34]
0069aa94  38 30 cd e5                                      strb r3, [sp, #0x38]
0069aa98  14 b0 8d e5                                      str fp, [sp, #0x14]
0069aa9c  1c a0 8d e5                                      str sl, [sp, #0x1c]
0069aaa0  05 00 00 0a                                      beq #0x69aabc
0069aaa4  14 00 8d e2                                      add r0, sp, #0x14
0069aaa8  57 fe ff eb                                      bl #0x69a40c
0069aaac  14 b0 9d e5                                      ldr fp, [sp, #0x14]
0069aab0  01 00 70 e2                                      rsbs r0, r0, #1
0069aab4  00 00 a0 33                                      movlo r0, #0
0069aab8  18 00 cd e5                                      strb r0, [sp, #0x18]
0069aabc  34 30 9d e5                                      ldr r3, [sp, #0x34]
0069aac0  30 20 9d e5                                      ldr r2, [sp, #0x30]
0069aac4  18 70 dd e5                                      ldrb r7, [sp, #0x18]
0069aac8  04 30 8d e5                                      str r3, [sp, #4]
0069aacc  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
0069aad0  20 50 9d e5                                      ldr r5, [sp, #0x20]
0069aad4  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0069aad8  28 00 9d e5                                      ldr r0, [sp, #0x28]
0069aadc  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0069aae0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0069aae4  38 90 dd e5                                      ldrb sb, [sp, #0x38]
0069aae8  00 b0 84 e5                                      str fp, [r4]
0069aaec  28 30 84 e5                                      str r3, [r4, #0x28]
0069aaf0  04 70 c4 e5                                      strb r7, [r4, #4]
0069aaf4  08 60 84 e5                                      str r6, [r4, #8]
0069aaf8  0c 50 84 e5                                      str r5, [r4, #0xc]
0069aafc  10 c0 84 e5                                      str ip, [r4, #0x10]
0069ab00  14 00 84 e5                                      str r0, [r4, #0x14]
0069ab04  18 10 84 e5                                      str r1, [r4, #0x18]
0069ab08  1c 20 84 e5                                      str r2, [r4, #0x1c]
0069ab0c  04 20 9d e5                                      ldr r2, [sp, #4]
0069ab10  00 00 5a e3                                      cmp sl, #0
0069ab14  24 90 c4 e5                                      strb sb, [r4, #0x24]
0069ab18  20 20 84 e5                                      str r2, [r4, #0x20]
0069ab1c  01 00 00 0a                                      beq #0x69ab28
0069ab20  0a 00 a0 e1                                      mov r0, sl
0069ab24  63 cd f1 eb                                      bl #0x30e0b8
0069ab28  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0069ab2c  04 00 d4 e5                                      ldrb r0, [r4, #4]
0069ab30  02 30 98 e7                                      ldr r3, [r8, r2]
0069ab34  00 20 a0 e3                                      mov r2, #0
0069ab38  08 20 84 e5                                      str r2, [r4, #8]
0069ab3c  44 21 9d e5                                      ldr r2, [sp, #0x144]
0069ab40  00 30 93 e5                                      ldr r3, [r3]
0069ab44  01 00 20 e2                                      eor r0, r0, #1
0069ab48  03 00 52 e1                                      cmp r2, r3
0069ab4c  4a 00 00 1a                                      bne #0x69ac7c
0069ab50  53 df 8d e2                                      add sp, sp, #0x14c
0069ab54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0069ab58  52 9f 8d e2                                      add sb, sp, #0x148
0069ab5c  08 51 29 e5                                      str r5, [sb, #-0x108]!
0069ab60  0a 10 a0 e1                                      mov r1, sl
0069ab64  05 20 a0 e1                                      mov r2, r5
0069ab68  00 30 96 e5                                      ldr r3, [r6]
0069ab6c  06 00 a0 e1                                      mov r0, r6
0069ab70  0f e0 a0 e1                                      mov lr, pc
0069ab74  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0069ab78  00 30 96 e5                                      ldr r3, [r6]
0069ab7c  09 10 a0 e1                                      mov r1, sb
0069ab80  06 00 a0 e1                                      mov r0, r6
0069ab84  04 20 a0 e3                                      mov r2, #4
0069ab88  0f e0 a0 e1                                      mov lr, pc
0069ab8c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0069ab90  40 30 9d e5                                      ldr r3, [sp, #0x40]
0069ab94  01 00 53 e3                                      cmp r3, #1
0069ab98  56 ff ff da                                      ble #0x69a8f8
0069ab9c  04 10 8a e2                                      add r1, sl, #4
0069aba0  05 20 a0 e1                                      mov r2, r5
0069aba4  00 30 96 e5                                      ldr r3, [r6]
0069aba8  06 00 a0 e1                                      mov r0, r6
0069abac  0f e0 a0 e1                                      mov lr, pc
0069abb0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0069abb4  40 20 9d e5                                      ldr r2, [sp, #0x40]
0069abb8  44 50 8d e2                                      add r5, sp, #0x44
0069abbc  05 10 a0 e1                                      mov r1, r5
0069abc0  03 20 82 e2                                      add r2, r2, #3
0069abc4  00 30 96 e5                                      ldr r3, [r6]
0069abc8  03 20 c2 e3                                      bic r2, r2, #3
0069abcc  06 00 a0 e1                                      mov r0, r6
0069abd0  0f e0 a0 e1                                      mov lr, pc
0069abd4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0069abd8  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0069abdc  05 10 a0 e1                                      mov r1, r5
0069abe0  01 20 a0 e3                                      mov r2, #1
0069abe4  03 30 98 e7                                      ldr r3, [r8, r3]
0069abe8  00 00 93 e5                                      ldr r0, [r3]
0069abec  6d ff fe eb                                      bl #0x65a9a8
0069abf0  40 ff ff ea                                      b #0x69a8f8
0069abf4  14 30 94 e5                                      ldr r3, [r4, #0x14]
0069abf8  10 00 94 e5                                      ldr r0, [r4, #0x10]
0069abfc  20 50 94 e5                                      ldr r5, [r4, #0x20]
0069ac00  83 01 40 e0                                      sub r0, r0, r3, lsl #3
0069ac04  67 65 fa eb                                      bl #0x5341a8
0069ac08  00 00 85 e5                                      str r0, [r5]
0069ac0c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0069ac10  20 10 94 e5                                      ldr r1, [r4, #0x20]
0069ac14  10 20 94 e5                                      ldr r2, [r4, #0x10]
0069ac18  06 00 a0 e1                                      mov r0, r6
0069ac1c  00 10 91 e5                                      ldr r1, [r1]
0069ac20  83 21 42 e0                                      sub r2, r2, r3, lsl #3
0069ac24  00 30 96 e5                                      ldr r3, [r6]
0069ac28  0f e0 a0 e1                                      mov lr, pc
0069ac2c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0069ac30  14 30 94 e5                                      ldr r3, [r4, #0x14]
0069ac34  01 00 53 e3                                      cmp r3, #1
0069ac38  8b ff ff da                                      ble #0x69aa6c
0069ac3c  0c 20 a0 e3                                      mov r2, #0xc
0069ac40  01 30 a0 e3                                      mov r3, #1
0069ac44  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0069ac48  20 10 94 e5                                      ldr r1, [r4, #0x20]
0069ac4c  04 e0 90 e5                                      ldr lr, [r0, #4]
0069ac50  02 00 90 e7                                      ldr r0, [r0, r2]
0069ac54  00 c0 91 e5                                      ldr ip, [r1]
0069ac58  08 20 82 e2                                      add r2, r2, #8
0069ac5c  00 00 6e e0                                      rsb r0, lr, r0
0069ac60  00 00 8c e0                                      add r0, ip, r0
0069ac64  03 01 81 e7                                      str r0, [r1, r3, lsl #2]
0069ac68  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069ac6c  01 30 83 e2                                      add r3, r3, #1
0069ac70  03 00 51 e1                                      cmp r1, r3
0069ac74  f2 ff ff ca                                      bgt #0x69ac44
0069ac78  7b ff ff ea                                      b #0x69aa6c
0069ac7c  a3 cd f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0069ac80  00 a2 2f 00 ac 40 00 00 48 44 00 00              .byte 0x00, 0xa2, 0x2f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00
