; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003404a4, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<Module*, std::allocator<Module*> >
; alias: _ZNSt6vectorIP6ModuleSaIS1_EE18_M_fill_insert_auxEPS1_jRKS1_RKSt12__false_type
; demangled: std::vector<Module*, std::allocator<Module*> >::_M_fill_insert_aux(Module**, unsigned int, Module* const&, std::__false_type const&)
; decoder-mode: arm
003404a4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003404a8  00 c0 90 e5                                      ldr ip, [r0]
003404ac  03 50 a0 e1                                      mov r5, r3
003404b0  14 d0 4d e2                                      sub sp, sp, #0x14
003404b4  0c 00 53 e1                                      cmp r3, ip
003404b8  00 40 a0 e1                                      mov r4, r0
003404bc  01 60 a0 e1                                      mov r6, r1
003404c0  02 30 a0 e1                                      mov r3, r2
003404c4  04 70 90 35                                      ldrlo r7, [r0, #4]
003404c8  0a 00 00 3a                                      blo #0x3404f8
003404cc  04 70 90 e5                                      ldr r7, [r0, #4]
003404d0  07 00 55 e1                                      cmp r5, r7
003404d4  07 00 00 2a                                      bhs #0x3404f8
003404d8  00 c0 95 e5                                      ldr ip, [r5]
003404dc  10 30 8d e2                                      add r3, sp, #0x10
003404e0  08 c0 23 e5                                      str ip, [r3, #-8]!
003404e4  0c c0 8d e2                                      add ip, sp, #0xc
003404e8  00 c0 8d e5                                      str ip, [sp]
003404ec  ec ff ff eb                                      bl #0x3404a4
003404f0  14 d0 8d e2                                      add sp, sp, #0x14
003404f4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003404f8  07 20 66 e0                                      rsb r2, r6, r7
003404fc  42 81 a0 e1                                      asr r8, r2, #2
00340500  08 00 53 e1                                      cmp r3, r8
00340504  1c 00 00 2a                                      bhs #0x34057c
00340508  03 81 a0 e1                                      lsl r8, r3, #2
0034050c  07 30 68 e0                                      rsb r3, r8, r7
00340510  07 00 53 e1                                      cmp r3, r7
00340514  07 a0 a0 01                                      moveq sl, r7
00340518  05 00 00 0a                                      beq #0x340534
0034051c  03 10 a0 e1                                      mov r1, r3
00340520  07 20 63 e0                                      rsb r2, r3, r7
00340524  07 00 a0 e1                                      mov r0, r7
00340528  03 a0 a0 e1                                      mov sl, r3
0034052c  cd 38 ff eb                                      bl #0x30e868
00340530  04 30 94 e5                                      ldr r3, [r4, #4]
00340534  0a 20 66 e0                                      rsb r2, r6, sl
00340538  08 30 83 e0                                      add r3, r3, r8
0034053c  00 00 52 e3                                      cmp r2, #0
00340540  04 30 84 e5                                      str r3, [r4, #4]
00340544  02 00 00 da                                      ble #0x340554
00340548  07 00 62 e0                                      rsb r0, r2, r7
0034054c  06 10 a0 e1                                      mov r1, r6
00340550  78 36 ff eb                                      bl #0x30df38
00340554  48 81 a0 e1                                      asr r8, r8, #2
00340558  00 00 58 e3                                      cmp r8, #0
0034055c  e3 ff ff da                                      ble #0x3404f0
00340560  00 20 a0 e3                                      mov r2, #0
00340564  00 10 95 e5                                      ldr r1, [r5]
00340568  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
0034056c  01 20 82 e2                                      add r2, r2, #1
00340570  08 00 52 e1                                      cmp r2, r8
00340574  fa ff ff 1a                                      bne #0x340564
00340578  dc ff ff ea                                      b #0x3404f0
0034057c  03 30 68 e0                                      rsb r3, r8, r3
00340580  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
00340584  00 00 5a e3                                      cmp sl, #0
00340588  03 01 87 e0                                      add r0, r7, r3, lsl #2
0034058c  05 00 00 da                                      ble #0x3405a8
00340590  00 10 a0 e3                                      mov r1, #0
00340594  00 c0 95 e5                                      ldr ip, [r5]
00340598  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
0034059c  01 10 81 e2                                      add r1, r1, #1
003405a0  0a 00 51 e1                                      cmp r1, sl
003405a4  fa ff ff 1a                                      bne #0x340594
003405a8  07 00 56 e1                                      cmp r6, r7
003405ac  04 00 84 e5                                      str r0, [r4, #4]
003405b0  02 00 00 0a                                      beq #0x3405c0
003405b4  06 10 a0 e1                                      mov r1, r6
003405b8  aa 38 ff eb                                      bl #0x30e868
003405bc  04 00 94 e5                                      ldr r0, [r4, #4]
003405c0  08 01 80 e0                                      add r0, r0, r8, lsl #2
003405c4  00 00 58 e3                                      cmp r8, #0
003405c8  04 00 84 e5                                      str r0, [r4, #4]
003405cc  c7 ff ff da                                      ble #0x3404f0
003405d0  00 30 a0 e3                                      mov r3, #0
003405d4  00 20 95 e5                                      ldr r2, [r5]
003405d8  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
003405dc  01 30 83 e2                                      add r3, r3, #1
003405e0  03 00 58 e1                                      cmp r8, r3
003405e4  fa ff ff 1a                                      bne #0x3405d4
003405e8  c0 ff ff ea                                      b #0x3404f0

; FUNCTION 0x003405ec, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<Module*, std::allocator<Module*> >
; alias: _ZNSt6vectorIP6ModuleSaIS1_EE20_M_compute_next_sizeEj
; demangled: std::vector<Module*, std::allocator<Module*> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
003405ec  70 40 2d e9                                      push {r4, r5, r6, lr}
003405f0  14 00 90 e8                                      ldm r0, {r2, r4}
003405f4  ff 3f 0f e3                                      movw r3, #0xffff
003405f8  ff 3f 43 e3                                      movt r3, #0x3fff
003405fc  04 40 62 e0                                      rsb r4, r2, r4
00340600  44 41 a0 e1                                      asr r4, r4, #2
00340604  03 30 64 e0                                      rsb r3, r4, r3
00340608  01 00 53 e1                                      cmp r3, r1
0034060c  01 50 a0 e1                                      mov r5, r1
00340610  08 00 00 3a                                      blo #0x340638
00340614  05 00 54 e1                                      cmp r4, r5
00340618  04 00 84 20                                      addhs r0, r4, r4
0034061c  05 00 84 30                                      addlo r0, r4, r5
00340620  07 01 70 e3                                      cmn r0, #0xc0000001
00340624  01 00 00 8a                                      bhi #0x340630
00340628  04 00 50 e1                                      cmp r0, r4
0034062c  00 00 00 2a                                      bhs #0x340634
00340630  03 01 e0 e3                                      mvn r0, #0xc0000000
00340634  70 80 bd e8                                      pop {r4, r5, r6, pc}
00340638  08 00 9f e5                                      ldr r0, [pc, #8]
0034063c  00 00 8f e0                                      add r0, pc, r0
00340640  fe 21 0f eb                                      bl #0x708e40
00340644  f2 ff ff ea                                      b #0x340614
; mapping-symbol data/literal pool
00340648  2c de 57 00                                      .byte 0x2c, 0xde, 0x57, 0x00

; FUNCTION 0x00346314, declared_size=284, range_size=284, mode=arm
; class-group: std::vector<Module*, std::allocator<Module*> >
; alias: _ZNSt6vectorIP6ModuleSaIS1_EE14_M_fill_insertEPS1_jRKS1_
; demangled: std::vector<Module*, std::allocator<Module*> >::_M_fill_insert(Module**, unsigned int, Module* const&)
; decoder-mode: arm
00346314  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00346318  00 60 52 e2                                      subs r6, r2, #0
0034631c  14 d0 4d e2                                      sub sp, sp, #0x14
00346320  00 40 a0 e1                                      mov r4, r0
00346324  01 70 a0 e1                                      mov r7, r1
00346328  03 50 a0 e1                                      mov r5, r3
0034632c  28 00 00 0a                                      beq #0x3463d4
00346330  00 50 90 e9                                      ldmib r0, {ip, lr}
00346334  0e c0 6c e0                                      rsb ip, ip, lr
00346338  4c 01 56 e1                                      cmp r6, ip, asr #2
0034633c  26 00 00 9a                                      bls #0x3463dc
00346340  06 10 a0 e1                                      mov r1, r6
00346344  a8 e8 ff eb                                      bl #0x3405ec
00346348  10 20 8d e2                                      add r2, sp, #0x10
0034634c  00 10 a0 e1                                      mov r1, r0
00346350  08 00 22 e5                                      str r0, [r2, #-8]!
00346354  08 00 84 e2                                      add r0, r4, #8
00346358  8c f0 ff eb                                      bl #0x342590
0034635c  00 10 94 e5                                      ldr r1, [r4]
00346360  00 80 a0 e1                                      mov r8, r0
00346364  01 a0 57 e0                                      subs sl, r7, r1
00346368  00 00 a0 01                                      moveq r0, r0
0034636c  2b 00 00 1a                                      bne #0x346420
00346370  06 20 a0 e1                                      mov r2, r6
00346374  00 30 a0 e3                                      mov r3, #0
00346378  00 10 95 e5                                      ldr r1, [r5]
0034637c  01 20 52 e2                                      subs r2, r2, #1
00346380  03 10 80 e7                                      str r1, [r0, r3]
00346384  04 30 83 e2                                      add r3, r3, #4
00346388  fa ff ff 1a                                      bne #0x346378
0034638c  04 30 94 e5                                      ldr r3, [r4, #4]
00346390  06 61 80 e0                                      add r6, r0, r6, lsl #2
00346394  07 50 53 e0                                      subs r5, r3, r7
00346398  1a 00 00 1a                                      bne #0x346408
0034639c  00 00 94 e5                                      ldr r0, [r4]
003463a0  08 10 94 e5                                      ldr r1, [r4, #8]
003463a4  00 00 50 e3                                      cmp r0, #0
003463a8  04 00 00 0a                                      beq #0x3463c0
003463ac  01 10 60 e0                                      rsb r1, r0, r1
003463b0  03 10 c1 e3                                      bic r1, r1, #3
003463b4  80 00 51 e3                                      cmp r1, #0x80
003463b8  0b 00 00 8a                                      bhi #0x3463ec
003463bc  cf 0a 0f eb                                      bl #0x708f00
003463c0  08 30 9d e5                                      ldr r3, [sp, #8]
003463c4  00 80 84 e5                                      str r8, [r4]
003463c8  04 60 84 e5                                      str r6, [r4, #4]
003463cc  03 81 88 e0                                      add r8, r8, r3, lsl #2
003463d0  08 80 84 e5                                      str r8, [r4, #8]
003463d4  14 d0 8d e2                                      add sp, sp, #0x14
003463d8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003463dc  0c c0 8d e2                                      add ip, sp, #0xc
003463e0  00 c0 8d e5                                      str ip, [sp]
003463e4  2e e8 ff eb                                      bl #0x3404a4
003463e8  f9 ff ff ea                                      b #0x3463d4
003463ec  13 28 ff eb                                      bl #0x310440
003463f0  08 30 9d e5                                      ldr r3, [sp, #8]
003463f4  00 80 84 e5                                      str r8, [r4]
003463f8  04 60 84 e5                                      str r6, [r4, #4]
003463fc  03 81 88 e0                                      add r8, r8, r3, lsl #2
00346400  08 80 84 e5                                      str r8, [r4, #8]
00346404  f2 ff ff ea                                      b #0x3463d4
00346408  06 00 a0 e1                                      mov r0, r6
0034640c  07 10 a0 e1                                      mov r1, r7
00346410  05 20 a0 e1                                      mov r2, r5
00346414  c7 1e ff eb                                      bl #0x30df38
00346418  05 60 80 e0                                      add r6, r0, r5
0034641c  de ff ff ea                                      b #0x34639c
00346420  0a 20 a0 e1                                      mov r2, sl
00346424  c3 1e ff eb                                      bl #0x30df38
00346428  0a 00 80 e0                                      add r0, r0, sl
0034642c  cf ff ff ea                                      b #0x346370

; FUNCTION 0x00346430, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<Module*, std::allocator<Module*> >
; alias: _ZNSt6vectorIP6ModuleSaIS1_EE6resizeEjRKS1_
; demangled: std::vector<Module*, std::allocator<Module*> >::resize(unsigned int, Module* const&)
; decoder-mode: arm
00346430  30 00 2d e9                                      push {r4, r5}
00346434  04 40 90 e5                                      ldr r4, [r0, #4]
00346438  00 50 90 e5                                      ldr r5, [r0]
0034643c  02 30 a0 e1                                      mov r3, r2
00346440  04 20 65 e0                                      rsb r2, r5, r4
00346444  42 21 a0 e1                                      asr r2, r2, #2
00346448  02 00 51 e1                                      cmp r1, r2
0034644c  04 00 00 2a                                      bhs #0x346464
00346450  01 51 85 e0                                      add r5, r5, r1, lsl #2
00346454  04 00 55 e1                                      cmp r5, r4
00346458  04 50 80 15                                      strne r5, [r0, #4]
0034645c  30 00 bd e8                                      pop {r4, r5}
00346460  1e ff 2f e1                                      bx lr
00346464  01 20 62 e0                                      rsb r2, r2, r1
00346468  04 10 a0 e1                                      mov r1, r4
0034646c  30 00 bd e8                                      pop {r4, r5}
00346470  a7 ff ff ea                                      b #0x346314
