; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00330740, declared_size=44, range_size=44, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitches11GetInstanceEv
; demangled: DebugSwitches::GetInstance()
; decoder-mode: arm
00330740  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00330744  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00330748  10 40 2d e9                                      push {r4, lr}
0033074c  03 30 8f e0                                      add r3, pc, r3
00330750  02 40 93 e7                                      ldr r4, [r3, r2]
00330754  04 00 a0 e1                                      mov r0, r4
00330758  4a 1c 00 eb                                      bl #0x337888
0033075c  04 00 a0 e1                                      mov r0, r4
00330760  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00330764  44 43 66 00 84 08 00 00                          .byte 0x44, 0x43, 0x66, 0x00, 0x84, 0x08, 0x00, 0x00

; FUNCTION 0x00335f94, declared_size=56, range_size=56, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitchesC2Ev
; demangled: DebugSwitches::DebugSwitches()
; decoder-mode: arm
00335f94  00 20 a0 e3                                      mov r2, #0
00335f98  00 10 a0 e1                                      mov r1, r0
00335f9c  00 30 a0 e1                                      mov r3, r0
00335fa0  04 20 80 e5                                      str r2, [r0, #4]
00335fa4  00 20 c0 e5                                      strb r2, [r0]
00335fa8  08 00 83 e5                                      str r0, [r3, #8]
00335fac  0c 00 83 e5                                      str r0, [r3, #0xc]
00335fb0  10 20 80 e5                                      str r2, [r0, #0x10]
00335fb4  1c 20 80 e5                                      str r2, [r0, #0x1c]
00335fb8  18 20 e1 e5                                      strb r2, [r1, #0x18]!
00335fbc  24 10 80 e5                                      str r1, [r0, #0x24]
00335fc0  28 20 80 e5                                      str r2, [r0, #0x28]
00335fc4  20 10 80 e5                                      str r1, [r0, #0x20]
00335fc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00335fcc, declared_size=56, range_size=56, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitchesC1Ev
; demangled: DebugSwitches::DebugSwitches()
; decoder-mode: arm
00335fcc  00 20 a0 e3                                      mov r2, #0
00335fd0  00 10 a0 e1                                      mov r1, r0
00335fd4  00 30 a0 e1                                      mov r3, r0
00335fd8  04 20 80 e5                                      str r2, [r0, #4]
00335fdc  00 20 c0 e5                                      strb r2, [r0]
00335fe0  08 00 83 e5                                      str r0, [r3, #8]
00335fe4  0c 00 83 e5                                      str r0, [r3, #0xc]
00335fe8  10 20 80 e5                                      str r2, [r0, #0x10]
00335fec  1c 20 80 e5                                      str r2, [r0, #0x1c]
00335ff0  18 20 e1 e5                                      strb r2, [r1, #0x18]!
00335ff4  24 10 80 e5                                      str r1, [r0, #0x24]
00335ff8  28 20 80 e5                                      str r2, [r0, #0x28]
00335ffc  20 10 80 e5                                      str r1, [r0, #0x20]
00336000  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033688c, declared_size=104, range_size=104, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitchesD1Ev
; demangled: DebugSwitches::~DebugSwitches()
; decoder-mode: arm
0033688c  70 40 2d e9                                      push {r4, r5, r6, lr}
00336890  28 30 90 e5                                      ldr r3, [r0, #0x28]
00336894  00 40 a0 e1                                      mov r4, r0
00336898  00 00 53 e3                                      cmp r3, #0
0033689c  08 00 00 0a                                      beq #0x3368c4
003368a0  18 50 80 e2                                      add r5, r0, #0x18
003368a4  05 00 a0 e1                                      mov r0, r5
003368a8  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
003368ac  bf e8 ff eb                                      bl #0x330bb0
003368b0  00 30 a0 e3                                      mov r3, #0
003368b4  24 50 84 e5                                      str r5, [r4, #0x24]
003368b8  28 30 84 e5                                      str r3, [r4, #0x28]
003368bc  20 50 84 e5                                      str r5, [r4, #0x20]
003368c0  1c 30 84 e5                                      str r3, [r4, #0x1c]
003368c4  10 30 94 e5                                      ldr r3, [r4, #0x10]
003368c8  00 00 53 e3                                      cmp r3, #0
003368cc  06 00 00 0a                                      beq #0x3368ec
003368d0  04 00 a0 e1                                      mov r0, r4
003368d4  04 10 94 e5                                      ldr r1, [r4, #4]
003368d8  b4 e8 ff eb                                      bl #0x330bb0
003368dc  00 30 a0 e3                                      mov r3, #0
003368e0  10 30 84 e5                                      str r3, [r4, #0x10]
003368e4  18 00 84 e9                                      stmib r4, {r3, r4}
003368e8  0c 40 84 e5                                      str r4, [r4, #0xc]
003368ec  04 00 a0 e1                                      mov r0, r4
003368f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003368f4, declared_size=104, range_size=104, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitchesD2Ev
; demangled: DebugSwitches::~DebugSwitches()
; decoder-mode: arm
003368f4  70 40 2d e9                                      push {r4, r5, r6, lr}
003368f8  28 30 90 e5                                      ldr r3, [r0, #0x28]
003368fc  00 40 a0 e1                                      mov r4, r0
00336900  00 00 53 e3                                      cmp r3, #0
00336904  08 00 00 0a                                      beq #0x33692c
00336908  18 50 80 e2                                      add r5, r0, #0x18
0033690c  05 00 a0 e1                                      mov r0, r5
00336910  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00336914  a5 e8 ff eb                                      bl #0x330bb0
00336918  00 30 a0 e3                                      mov r3, #0
0033691c  24 50 84 e5                                      str r5, [r4, #0x24]
00336920  28 30 84 e5                                      str r3, [r4, #0x28]
00336924  20 50 84 e5                                      str r5, [r4, #0x20]
00336928  1c 30 84 e5                                      str r3, [r4, #0x1c]
0033692c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00336930  00 00 53 e3                                      cmp r3, #0
00336934  06 00 00 0a                                      beq #0x336954
00336938  04 00 a0 e1                                      mov r0, r4
0033693c  04 10 94 e5                                      ldr r1, [r4, #4]
00336940  9a e8 ff eb                                      bl #0x330bb0
00336944  00 30 a0 e3                                      mov r3, #0
00336948  10 30 84 e5                                      str r3, [r4, #0x10]
0033694c  18 00 84 e9                                      stmib r4, {r3, r4}
00336950  0c 40 84 e5                                      str r4, [r4, #0xc]
00336954  04 00 a0 e1                                      mov r0, r4
00336958  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00337404, declared_size=224, range_size=224, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitches9SetModuleERKSsb
; demangled: DebugSwitches::SetModule(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, bool)
; decoder-mode: arm
00337404  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00337408  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
0033740c  c4 60 9f e5                                      ldr r6, [pc, #0xc4]
00337410  18 70 80 e2                                      add r7, r0, #0x18
00337414  04 40 8f e0                                      add r4, pc, r4
00337418  06 30 94 e7                                      ldr r3, [r4, r6]
0033741c  20 d0 4d e2                                      sub sp, sp, #0x20
00337420  00 80 a0 e1                                      mov r8, r0
00337424  00 30 93 e5                                      ldr r3, [r3]
00337428  07 00 a0 e1                                      mov r0, r7
0033742c  02 90 a0 e1                                      mov sb, r2
00337430  01 a0 a0 e1                                      mov sl, r1
00337434  1c 30 8d e5                                      str r3, [sp, #0x1c]
00337438  5a fd ff eb                                      bl #0x3369a8
0033743c  07 00 50 e1                                      cmp r0, r7
00337440  00 50 a0 e1                                      mov r5, r0
00337444  0c 00 00 0a                                      beq #0x33747c
00337448  28 30 d0 e5                                      ldrb r3, [r0, #0x28]
0033744c  09 00 53 e1                                      cmp r3, sb
00337450  02 00 00 0a                                      beq #0x337460
00337454  28 90 c0 e5                                      strb sb, [r0, #0x28]
00337458  08 00 a0 e1                                      mov r0, r8
0033745c  3c 02 00 eb                                      bl #0x337d54
00337460  06 30 94 e7                                      ldr r3, [r4, r6]
00337464  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00337468  00 30 93 e5                                      ldr r3, [r3]
0033746c  03 00 52 e1                                      cmp r2, r3
00337470  16 00 00 1a                                      bne #0x3374d0
00337474  20 d0 8d e2                                      add sp, sp, #0x20
00337478  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033747c  58 30 9f e5                                      ldr r3, [pc, #0x58]
00337480  04 70 8d e2                                      add r7, sp, #4
00337484  03 80 94 e7                                      ldr r8, [r4, r3]
00337488  08 00 a0 e1                                      mov r0, r8
0033748c  fd 00 00 eb                                      bl #0x337888
00337490  48 10 9f e5                                      ldr r1, [pc, #0x48]
00337494  0d 20 a0 e1                                      mov r2, sp
00337498  07 00 a0 e1                                      mov r0, r7
0033749c  01 10 8f e0                                      add r1, pc, r1
003374a0  11 73 ff eb                                      bl #0x3140ec
003374a4  07 10 a0 e1                                      mov r1, r7
003374a8  08 00 a0 e1                                      mov r0, r8
003374ac  75 01 00 eb                                      bl #0x337a88
003374b0  07 00 a0 e1                                      mov r0, r7
003374b4  66 83 ff eb                                      bl #0x318254
003374b8  05 00 a0 e1                                      mov r0, r5
003374bc  0a 10 a0 e1                                      mov r1, sl
003374c0  70 ff ff eb                                      bl #0x337288
003374c4  01 30 a0 e3                                      mov r3, #1
003374c8  00 30 c0 e5                                      strb r3, [r0]
003374cc  e3 ff ff ea                                      b #0x337460
003374d0  8e 5b ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003374d4  7c d6 65 00 ac 40 00 00 84 08 00 00 e4 88 58 00  .byte 0x7c, 0xd6, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xe4, 0x88, 0x58, 0x00

; FUNCTION 0x003374e4, declared_size=932, range_size=932, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitches13_loadSwitchesEP11IFileStream
; demangled: DebugSwitches::_loadSwitches(IFileStream*)
; decoder-mode: arm
003374e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003374e8  6c 43 9f e5                                      ldr r4, [pc, #0x36c]
003374ec  6c 63 9f e5                                      ldr r6, [pc, #0x36c]
003374f0  77 df 4d e2                                      sub sp, sp, #0x1dc
003374f4  04 40 8f e0                                      add r4, pc, r4
003374f8  06 30 94 e7                                      ldr r3, [r4, r6]
003374fc  00 50 51 e2                                      subs r5, r1, #0
00337500  00 70 a0 e1                                      mov r7, r0
00337504  00 30 93 e5                                      ldr r3, [r3]
00337508  d4 31 8d e5                                      str r3, [sp, #0x1d4]
0033750c  2f 00 00 0a                                      beq #0x3375d0
00337510  00 30 95 e5                                      ldr r3, [r5]
00337514  05 00 a0 e1                                      mov r0, r5
00337518  0f e0 a0 e1                                      mov lr, pc
0033751c  08 f0 93 e5                                      ldr pc, [r3, #8]
00337520  00 30 95 e5                                      ldr r3, [r5]
00337524  00 80 a0 e1                                      mov r8, r0
00337528  05 00 a0 e1                                      mov r0, r5
0033752c  01 90 a0 e1                                      mov sb, r1
00337530  0f e0 a0 e1                                      mov lr, pc
00337534  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00337538  08 20 a0 e1                                      mov r2, r8
0033753c  09 30 a0 e1                                      mov r3, sb
00337540  00 20 52 e0                                      subs r2, r2, r0
00337544  01 30 c3 e0                                      sbc r3, r3, r1
00337548  00 00 53 e3                                      cmp r3, #0
0033754c  26 00 00 0a                                      beq #0x3375ec
00337550  05 00 a0 e1                                      mov r0, r5
00337554  e4 fb ff eb                                      bl #0x3364ec
00337558  57 33 05 e3                                      movw r3, #0x5357
0033755c  42 34 44 e3                                      movt r3, #0x4442
00337560  03 00 50 e1                                      cmp r0, r3
00337564  23 00 00 0a                                      beq #0x3375f8
00337568  f4 32 9f e5                                      ldr r3, [pc, #0x2f4]
0033756c  51 7f 8d e2                                      add r7, sp, #0x144
00337570  03 80 94 e7                                      ldr r8, [r4, r3]
00337574  08 00 a0 e1                                      mov r0, r8
00337578  c2 00 00 eb                                      bl #0x337888
0033757c  e4 12 9f e5                                      ldr r1, [pc, #0x2e4]
00337580  2c 20 8d e2                                      add r2, sp, #0x2c
00337584  07 00 a0 e1                                      mov r0, r7
00337588  01 10 8f e0                                      add r1, pc, r1
0033758c  d6 72 ff eb                                      bl #0x3140ec
00337590  07 10 a0 e1                                      mov r1, r7
00337594  08 00 a0 e1                                      mov r0, r8
00337598  3a 01 00 eb                                      bl #0x337a88
0033759c  07 00 a0 e1                                      mov r0, r7
003375a0  2b 83 ff eb                                      bl #0x318254
003375a4  00 30 95 e5                                      ldr r3, [r5]
003375a8  05 00 a0 e1                                      mov r0, r5
003375ac  20 70 93 e5                                      ldr r7, [r3, #0x20]
003375b0  0f e0 a0 e1                                      mov lr, pc
003375b4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003375b8  03 20 e0 e3                                      mvn r2, #3
003375bc  00 20 92 e0                                      adds r2, r2, r0
003375c0  00 30 e0 e3                                      mvn r3, #0
003375c4  01 30 a3 e0                                      adc r3, r3, r1
003375c8  05 00 a0 e1                                      mov r0, r5
003375cc  37 ff 2f e1                                      blx r7
003375d0  06 30 94 e7                                      ldr r3, [r4, r6]
003375d4  d4 21 9d e5                                      ldr r2, [sp, #0x1d4]
003375d8  00 30 93 e5                                      ldr r3, [r3]
003375dc  03 00 52 e1                                      cmp r2, r3
003375e0  9c 00 00 1a                                      bne #0x337858
003375e4  77 df 8d e2                                      add sp, sp, #0x1dc
003375e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003375ec  0b 00 52 e3                                      cmp r2, #0xb
003375f0  f6 ff ff 9a                                      bls #0x3375d0
003375f4  d5 ff ff ea                                      b #0x337550
003375f8  05 00 a0 e1                                      mov r0, r5
003375fc  ba fb ff eb                                      bl #0x3364ec
00337600  02 08 50 e3                                      cmp r0, #0x20000
00337604  33 00 00 aa                                      bge #0x3376d8
00337608  01 08 50 e3                                      cmp r0, #0x10000
0033760c  54 00 00 aa                                      bge #0x337764
00337610  4c 32 9f e5                                      ldr r3, [pc, #0x24c]
00337614  50 72 9f e5                                      ldr r7, [pc, #0x250]
00337618  5d af 8d e2                                      add sl, sp, #0x174
0033761c  03 50 94 e7                                      ldr r5, [r4, r3]
00337620  07 70 8f e0                                      add r7, pc, r7
00337624  57 8f 8d e2                                      add r8, sp, #0x15c
00337628  05 00 a0 e1                                      mov r0, r5
0033762c  95 00 00 eb                                      bl #0x337888
00337630  34 20 8d e2                                      add r2, sp, #0x34
00337634  07 10 a0 e1                                      mov r1, r7
00337638  0a 00 a0 e1                                      mov r0, sl
0033763c  aa 72 ff eb                                      bl #0x3140ec
00337640  0a 10 a0 e1                                      mov r1, sl
00337644  05 00 a0 e1                                      mov r0, r5
00337648  0e 01 00 eb                                      bl #0x337a88
0033764c  0a 00 a0 e1                                      mov r0, sl
00337650  ff 82 ff eb                                      bl #0x318254
00337654  05 00 a0 e1                                      mov r0, r5
00337658  8a 00 00 eb                                      bl #0x337888
0033765c  30 20 8d e2                                      add r2, sp, #0x30
00337660  07 10 a0 e1                                      mov r1, r7
00337664  08 00 a0 e1                                      mov r0, r8
00337668  9f 72 ff eb                                      bl #0x3140ec
0033766c  08 10 a0 e1                                      mov r1, r8
00337670  05 00 a0 e1                                      mov r0, r5
00337674  03 01 00 eb                                      bl #0x337a88
00337678  08 00 a0 e1                                      mov r0, r8
0033767c  f4 82 ff eb                                      bl #0x318254
00337680  e8 31 9f e5                                      ldr r3, [pc, #0x1e8]
00337684  03 30 94 e7                                      ldr r3, [r4, r3]
00337688  00 30 93 e5                                      ldr r3, [r3]
0033768c  02 00 53 e3                                      cmp r3, #2
00337690  00 30 a0 03                                      moveq r3, #0
00337694  00 30 83 05                                      streq r3, [r3]
00337698  cc ff ff 0a                                      beq #0x3375d0
0033769c  01 00 53 e3                                      cmp r3, #1
003376a0  ca ff ff 1a                                      bne #0x3375d0
003376a4  c8 01 9f e5                                      ldr r0, [pc, #0x1c8]
003376a8  c8 11 9f e5                                      ldr r1, [pc, #0x1c8]
003376ac  c8 21 9f e5                                      ldr r2, [pc, #0x1c8]
003376b0  00 00 94 e7                                      ldr r0, [r4, r0]
003376b4  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
003376b8  0d c1 00 e3                                      movw ip, #0x10d
003376bc  01 10 8f e0                                      add r1, pc, r1
003376c0  02 20 8f e0                                      add r2, pc, r2
003376c4  03 30 8f e0                                      add r3, pc, r3
003376c8  a8 00 80 e2                                      add r0, r0, #0xa8
003376cc  00 c0 8d e5                                      str ip, [sp]
003376d0  4b 5a ff eb                                      bl #0x30e004
003376d4  bd ff ff ea                                      b #0x3375d0
003376d8  05 00 a0 e1                                      mov r0, r5
003376dc  82 fb ff eb                                      bl #0x3364ec
003376e0  00 a0 50 e2                                      subs sl, r0, #0
003376e4  1e 00 00 da                                      ble #0x337764
003376e8  40 30 8d e2                                      add r3, sp, #0x40
003376ec  10 60 8d e5                                      str r6, [sp, #0x10]
003376f0  00 90 a0 e3                                      mov sb, #0
003376f4  44 80 8d e2                                      add r8, sp, #0x44
003376f8  6f bf 8d e2                                      add fp, sp, #0x1bc
003376fc  0c 40 8d e5                                      str r4, [sp, #0xc]
00337700  03 60 a0 e1                                      mov r6, r3
00337704  00 30 a0 e3                                      mov r3, #0
00337708  ff 20 a0 e3                                      mov r2, #0xff
0033770c  08 10 a0 e1                                      mov r1, r8
00337710  05 00 a0 e1                                      mov r0, r5
00337714  06 80 ff eb                                      bl #0x317734
00337718  05 00 a0 e1                                      mov r0, r5
0033771c  a0 fb ff eb                                      bl #0x3365a4
00337720  08 10 a0 e1                                      mov r1, r8
00337724  00 40 a0 e1                                      mov r4, r0
00337728  06 20 a0 e1                                      mov r2, r6
0033772c  0b 00 a0 e1                                      mov r0, fp
00337730  6d 72 ff eb                                      bl #0x3140ec
00337734  00 20 54 e2                                      subs r2, r4, #0
00337738  01 20 a0 13                                      movne r2, #1
0033773c  07 00 a0 e1                                      mov r0, r7
00337740  0b 10 a0 e1                                      mov r1, fp
00337744  2e ff ff eb                                      bl #0x337404
00337748  01 90 89 e2                                      add sb, sb, #1
0033774c  0b 00 a0 e1                                      mov r0, fp
00337750  bf 82 ff eb                                      bl #0x318254
00337754  0a 00 59 e1                                      cmp sb, sl
00337758  e9 ff ff 1a                                      bne #0x337704
0033775c  0c 40 9d e5                                      ldr r4, [sp, #0xc]
00337760  10 60 9d e5                                      ldr r6, [sp, #0x10]
00337764  05 00 a0 e1                                      mov r0, r5
00337768  5f fb ff eb                                      bl #0x3364ec
0033776c  00 00 50 e3                                      cmp r0, #0
00337770  0c 00 8d e5                                      str r0, [sp, #0xc]
00337774  95 ff ff da                                      ble #0x3375d0
00337778  04 31 9f e5                                      ldr r3, [pc, #0x104]
0033777c  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
00337780  04 a0 a0 e1                                      mov sl, r4
00337784  03 30 8f e0                                      add r3, pc, r3
00337788  1c 30 8d e5                                      str r3, [sp, #0x1c]
0033778c  3c 30 8d e2                                      add r3, sp, #0x3c
00337790  18 20 8d e5                                      str r2, [sp, #0x18]
00337794  14 30 8d e5                                      str r3, [sp, #0x14]
00337798  38 20 8d e2                                      add r2, sp, #0x38
0033779c  63 3f 8d e2                                      add r3, sp, #0x18c
003377a0  00 90 a0 e3                                      mov sb, #0
003377a4  44 80 8d e2                                      add r8, sp, #0x44
003377a8  69 bf 8d e2                                      add fp, sp, #0x1a4
003377ac  10 20 8d e5                                      str r2, [sp, #0x10]
003377b0  20 70 8d e5                                      str r7, [sp, #0x20]
003377b4  24 60 8d e5                                      str r6, [sp, #0x24]
003377b8  03 40 a0 e1                                      mov r4, r3
003377bc  ff 20 a0 e3                                      mov r2, #0xff
003377c0  08 10 a0 e1                                      mov r1, r8
003377c4  00 30 a0 e3                                      mov r3, #0
003377c8  05 00 a0 e1                                      mov r0, r5
003377cc  d8 7f ff eb                                      bl #0x317734
003377d0  05 00 a0 e1                                      mov r0, r5
003377d4  72 fb ff eb                                      bl #0x3365a4
003377d8  18 30 9d e5                                      ldr r3, [sp, #0x18]
003377dc  00 70 a0 e1                                      mov r7, r0
003377e0  01 90 89 e2                                      add sb, sb, #1
003377e4  03 60 9a e7                                      ldr r6, [sl, r3]
003377e8  06 00 a0 e1                                      mov r0, r6
003377ec  25 00 00 eb                                      bl #0x337888
003377f0  14 20 9d e5                                      ldr r2, [sp, #0x14]
003377f4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003377f8  0b 00 a0 e1                                      mov r0, fp
003377fc  3a 72 ff eb                                      bl #0x3140ec
00337800  0b 10 a0 e1                                      mov r1, fp
00337804  06 00 a0 e1                                      mov r0, r6
00337808  9e 00 00 eb                                      bl #0x337a88
0033780c  0b 00 a0 e1                                      mov r0, fp
00337810  8f 82 ff eb                                      bl #0x318254
00337814  08 10 a0 e1                                      mov r1, r8
00337818  10 20 9d e5                                      ldr r2, [sp, #0x10]
0033781c  04 00 a0 e1                                      mov r0, r4
00337820  31 72 ff eb                                      bl #0x3140ec
00337824  00 20 57 e2                                      subs r2, r7, #0
00337828  01 20 a0 13                                      movne r2, #1
0033782c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00337830  04 10 a0 e1                                      mov r1, r4
00337834  68 01 00 eb                                      bl #0x337ddc
00337838  04 00 a0 e1                                      mov r0, r4
0033783c  84 82 ff eb                                      bl #0x318254
00337840  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00337844  02 00 59 e1                                      cmp sb, r2
00337848  db ff ff 1a                                      bne #0x3377bc
0033784c  0a 40 a0 e1                                      mov r4, sl
00337850  24 60 9d e5                                      ldr r6, [sp, #0x24]
00337854  5d ff ff ea                                      b #0x3375d0
00337858  ac 5a ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033785c  9c d5 65 00 ac 40 00 00 84 08 00 00 10 88 58 00  .byte 0x9c, 0xd5, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x10, 0x88, 0x58, 0x00
0033786c  78 87 58 00 c0 39 00 00 c0 19 00 00 1c 6d 58 00  .byte 0x78, 0x87, 0x58, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x1c, 0x6d, 0x58, 0x00
0033787c  f8 86 58 00 2c 87 58 00 14 86 58 00              .byte 0xf8, 0x86, 0x58, 0x00, 0x2c, 0x87, 0x58, 0x00, 0x14, 0x86, 0x58, 0x00

; FUNCTION 0x00337888, declared_size=512, range_size=512, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitches4loadEv
; demangled: DebugSwitches::load()
; decoder-mode: arm
00337888  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033788c  c8 41 9f e5                                      ldr r4, [pc, #0x1c8]
00337890  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
00337894  c8 61 9f e5                                      ldr r6, [pc, #0x1c8]
00337898  04 40 8f e0                                      add r4, pc, r4
0033789c  03 30 94 e7                                      ldr r3, [r4, r3]
003378a0  06 10 94 e7                                      ldr r1, [r4, r6]
003378a4  98 d0 4d e2                                      sub sp, sp, #0x98
003378a8  00 20 d3 e5                                      ldrb r2, [r3]
003378ac  00 10 91 e5                                      ldr r1, [r1]
003378b0  00 70 a0 e1                                      mov r7, r0
003378b4  00 00 52 e3                                      cmp r2, #0
003378b8  94 10 8d e5                                      str r1, [sp, #0x94]
003378bc  5e 00 00 1a                                      bne #0x337a3c
003378c0  01 10 a0 e3                                      mov r1, #1
003378c4  00 10 c3 e5                                      strb r1, [r3]
003378c8  98 31 9f e5                                      ldr r3, [pc, #0x198]
003378cc  03 30 94 e7                                      ldr r3, [r4, r3]
003378d0  10 30 93 e5                                      ldr r3, [r3, #0x10]
003378d4  34 50 93 e5                                      ldr r5, [r3, #0x34]
003378d8  00 00 55 e3                                      cmp r5, #0
003378dc  10 00 00 0a                                      beq #0x337924
003378e0  84 11 9f e5                                      ldr r1, [pc, #0x184]
003378e4  00 30 95 e5                                      ldr r3, [r5]
003378e8  05 00 a0 e1                                      mov r0, r5
003378ec  01 10 8f e0                                      add r1, pc, r1
003378f0  0f e0 a0 e1                                      mov lr, pc
003378f4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
003378f8  00 00 50 e3                                      cmp r0, #0
003378fc  00 10 a0 e1                                      mov r1, r0
00337900  04 00 8d e5                                      str r0, [sp, #4]
00337904  06 00 00 0a                                      beq #0x337924
00337908  07 00 a0 e1                                      mov r0, r7
0033790c  f4 fe ff eb                                      bl #0x3374e4
00337910  05 00 a0 e1                                      mov r0, r5
00337914  00 30 95 e5                                      ldr r3, [r5]
00337918  04 10 8d e2                                      add r1, sp, #4
0033791c  0f e0 a0 e1                                      mov lr, pc
00337920  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00337924  44 31 9f e5                                      ldr r3, [pc, #0x144]
00337928  7c a0 8d e2                                      add sl, sp, #0x7c
0033792c  64 80 8d e2                                      add r8, sp, #0x64
00337930  03 50 94 e7                                      ldr r5, [r4, r3]
00337934  4c 70 8d e2                                      add r7, sp, #0x4c
00337938  34 90 8d e2                                      add sb, sp, #0x34
0033793c  05 00 a0 e1                                      mov r0, r5
00337940  d0 ff ff eb                                      bl #0x337888
00337944  28 11 9f e5                                      ldr r1, [pc, #0x128]
00337948  18 20 8d e2                                      add r2, sp, #0x18
0033794c  0a 00 a0 e1                                      mov r0, sl
00337950  01 10 8f e0                                      add r1, pc, r1
00337954  e4 71 ff eb                                      bl #0x3140ec
00337958  0a 10 a0 e1                                      mov r1, sl
0033795c  00 20 a0 e3                                      mov r2, #0
00337960  05 00 a0 e1                                      mov r0, r5
00337964  1c 01 00 eb                                      bl #0x337ddc
00337968  0a 00 a0 e1                                      mov r0, sl
0033796c  38 82 ff eb                                      bl #0x318254
00337970  05 00 a0 e1                                      mov r0, r5
00337974  c3 ff ff eb                                      bl #0x337888
00337978  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
0033797c  14 20 8d e2                                      add r2, sp, #0x14
00337980  08 00 a0 e1                                      mov r0, r8
00337984  01 10 8f e0                                      add r1, pc, r1
00337988  d7 71 ff eb                                      bl #0x3140ec
0033798c  08 10 a0 e1                                      mov r1, r8
00337990  00 20 a0 e3                                      mov r2, #0
00337994  05 00 a0 e1                                      mov r0, r5
00337998  0f 01 00 eb                                      bl #0x337ddc
0033799c  08 00 a0 e1                                      mov r0, r8
003379a0  2b 82 ff eb                                      bl #0x318254
003379a4  05 00 a0 e1                                      mov r0, r5
003379a8  b6 ff ff eb                                      bl #0x337888
003379ac  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
003379b0  10 20 8d e2                                      add r2, sp, #0x10
003379b4  07 00 a0 e1                                      mov r0, r7
003379b8  01 10 8f e0                                      add r1, pc, r1
003379bc  ca 71 ff eb                                      bl #0x3140ec
003379c0  07 10 a0 e1                                      mov r1, r7
003379c4  00 20 a0 e3                                      mov r2, #0
003379c8  05 00 a0 e1                                      mov r0, r5
003379cc  02 01 00 eb                                      bl #0x337ddc
003379d0  07 00 a0 e1                                      mov r0, r7
003379d4  1e 82 ff eb                                      bl #0x318254
003379d8  05 00 a0 e1                                      mov r0, r5
003379dc  a9 ff ff eb                                      bl #0x337888
003379e0  98 10 9f e5                                      ldr r1, [pc, #0x98]
003379e4  0c 20 8d e2                                      add r2, sp, #0xc
003379e8  09 00 a0 e1                                      mov r0, sb
003379ec  01 10 8f e0                                      add r1, pc, r1
003379f0  bd 71 ff eb                                      bl #0x3140ec
003379f4  09 10 a0 e1                                      mov r1, sb
003379f8  05 00 a0 e1                                      mov r0, r5
003379fc  21 00 00 eb                                      bl #0x337a88
00337a00  09 00 a0 e1                                      mov r0, sb
00337a04  12 82 ff eb                                      bl #0x318254
00337a08  05 00 a0 e1                                      mov r0, r5
00337a0c  9d ff ff eb                                      bl #0x337888
00337a10  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00337a14  1c 70 8d e2                                      add r7, sp, #0x1c
00337a18  08 20 8d e2                                      add r2, sp, #8
00337a1c  01 10 8f e0                                      add r1, pc, r1
00337a20  07 00 a0 e1                                      mov r0, r7
00337a24  b0 71 ff eb                                      bl #0x3140ec
00337a28  05 00 a0 e1                                      mov r0, r5
00337a2c  07 10 a0 e1                                      mov r1, r7
00337a30  14 00 00 eb                                      bl #0x337a88
00337a34  07 00 a0 e1                                      mov r0, r7
00337a38  05 82 ff eb                                      bl #0x318254
00337a3c  06 30 94 e7                                      ldr r3, [r4, r6]
00337a40  94 20 9d e5                                      ldr r2, [sp, #0x94]
00337a44  00 30 93 e5                                      ldr r3, [r3]
00337a48  03 00 52 e1                                      cmp r2, r3
00337a4c  01 00 00 1a                                      bne #0x337a58
00337a50  98 d0 8d e2                                      add sp, sp, #0x98
00337a54  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00337a58  2c 5a ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00337a5c  f8 d1 65 00 50 3e 00 00 ac 40 00 00 f4 37 00 00  .byte 0xf8, 0xd1, 0x65, 0x00, 0x50, 0x3e, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
00337a6c  4c 85 58 00 84 08 00 00 00 85 58 00 ec 84 58 00  .byte 0x4c, 0x85, 0x58, 0x00, 0x84, 0x08, 0x00, 0x00, 0x00, 0x85, 0x58, 0x00, 0xec, 0x84, 0x58, 0x00
00337a7c  d8 84 58 00 c4 84 58 00 ac 84 58 00              .byte 0xd8, 0x84, 0x58, 0x00, 0xc4, 0x84, 0x58, 0x00, 0xac, 0x84, 0x58, 0x00

; FUNCTION 0x00337a88, declared_size=196, range_size=196, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitches9GetSwitchERKSs
; demangled: DebugSwitches::GetSwitch(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00337a88  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00337a8c  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
00337a90  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
00337a94  24 d0 4d e2                                      sub sp, sp, #0x24
00337a98  04 40 8f e0                                      add r4, pc, r4
00337a9c  05 30 94 e7                                      ldr r3, [r4, r5]
00337aa0  00 60 a0 e1                                      mov r6, r0
00337aa4  01 70 a0 e1                                      mov r7, r1
00337aa8  00 30 93 e5                                      ldr r3, [r3]
00337aac  1c 30 8d e5                                      str r3, [sp, #0x1c]
00337ab0  bc fb ff eb                                      bl #0x3369a8
00337ab4  00 00 56 e1                                      cmp r6, r0
00337ab8  0a 00 00 0a                                      beq #0x337ae8
00337abc  06 00 a0 e1                                      mov r0, r6
00337ac0  07 10 a0 e1                                      mov r1, r7
00337ac4  ef fd ff eb                                      bl #0x337288
00337ac8  05 30 94 e7                                      ldr r3, [r4, r5]
00337acc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00337ad0  00 00 d0 e5                                      ldrb r0, [r0]
00337ad4  00 30 93 e5                                      ldr r3, [r3]
00337ad8  03 00 52 e1                                      cmp r2, r3
00337adc  15 00 00 1a                                      bne #0x337b38
00337ae0  24 d0 8d e2                                      add sp, sp, #0x24
00337ae4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00337ae8  07 10 a0 e1                                      mov r1, r7
00337aec  e5 fd ff eb                                      bl #0x337288
00337af0  00 30 a0 e3                                      mov r3, #0
00337af4  00 30 c0 e5                                      strb r3, [r0]
00337af8  44 30 9f e5                                      ldr r3, [pc, #0x44]
00337afc  04 80 8d e2                                      add r8, sp, #4
00337b00  03 a0 94 e7                                      ldr sl, [r4, r3]
00337b04  0a 00 a0 e1                                      mov r0, sl
00337b08  5e ff ff eb                                      bl #0x337888
00337b0c  34 10 9f e5                                      ldr r1, [pc, #0x34]
00337b10  0d 20 a0 e1                                      mov r2, sp
00337b14  08 00 a0 e1                                      mov r0, r8
00337b18  01 10 8f e0                                      add r1, pc, r1
00337b1c  72 71 ff eb                                      bl #0x3140ec
00337b20  0a 00 a0 e1                                      mov r0, sl
00337b24  08 10 a0 e1                                      mov r1, r8
00337b28  d6 ff ff eb                                      bl #0x337a88
00337b2c  08 00 a0 e1                                      mov r0, r8
00337b30  c7 81 ff eb                                      bl #0x318254
00337b34  e0 ff ff ea                                      b #0x337abc
00337b38  f4 59 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00337b3c  f8 cf 65 00 ac 40 00 00 84 08 00 00 68 82 58 00  .byte 0xf8, 0xcf, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x68, 0x82, 0x58, 0x00

; FUNCTION 0x00337b4c, declared_size=520, range_size=520, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitches13_saveSwitchesEP11IFileStream
; demangled: DebugSwitches::_saveSwitches(IFileStream*)
; decoder-mode: arm
00337b4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00337b50  ec b1 9f e5                                      ldr fp, [pc, #0x1ec]
00337b54  ec 21 9f e5                                      ldr r2, [pc, #0x1ec]
00337b58  2c d0 4d e2                                      sub sp, sp, #0x2c
00337b5c  0b b0 8f e0                                      add fp, pc, fp
00337b60  02 30 9b e7                                      ldr r3, [fp, r2]
00337b64  00 50 51 e2                                      subs r5, r1, #0
00337b68  04 20 8d e5                                      str r2, [sp, #4]
00337b6c  00 30 93 e5                                      ldr r3, [r3]
00337b70  00 80 a0 e1                                      mov r8, r0
00337b74  24 30 8d e5                                      str r3, [sp, #0x24]
00337b78  4c 00 00 0a                                      beq #0x337cb0
00337b7c  57 13 05 e3                                      movw r1, #0x5357
00337b80  42 14 44 e3                                      movt r1, #0x4442
00337b84  05 00 a0 e1                                      mov r0, r5
00337b88  b3 fa ff eb                                      bl #0x33665c
00337b8c  05 00 a0 e1                                      mov r0, r5
00337b90  02 18 a0 e3                                      mov r1, #0x20000
00337b94  b0 fa ff eb                                      bl #0x33665c
00337b98  05 00 a0 e1                                      mov r0, r5
00337b9c  28 10 98 e5                                      ldr r1, [r8, #0x28]
00337ba0  ad fa ff eb                                      bl #0x33665c
00337ba4  20 40 98 e5                                      ldr r4, [r8, #0x20]
00337ba8  18 60 88 e2                                      add r6, r8, #0x18
00337bac  06 00 54 e1                                      cmp r4, r6
00337bb0  13 00 00 0a                                      beq #0x337c04
00337bb4  24 10 94 e5                                      ldr r1, [r4, #0x24]
00337bb8  20 20 94 e5                                      ldr r2, [r4, #0x20]
00337bbc  00 30 a0 e3                                      mov r3, #0
00337bc0  05 00 a0 e1                                      mov r0, r5
00337bc4  02 20 61 e0                                      rsb r2, r1, r2
00337bc8  30 7e ff eb                                      bl #0x317490
00337bcc  05 00 a0 e1                                      mov r0, r5
00337bd0  28 10 d4 e5                                      ldrb r1, [r4, #0x28]
00337bd4  cf fa ff eb                                      bl #0x336718
00337bd8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00337bdc  00 00 52 e3                                      cmp r2, #0
00337be0  01 00 00 1a                                      bne #0x337bec
00337be4  39 00 00 ea                                      b #0x337cd0
00337be8  03 20 a0 e1                                      mov r2, r3
00337bec  08 30 92 e5                                      ldr r3, [r2, #8]
00337bf0  00 00 53 e3                                      cmp r3, #0
00337bf4  fb ff ff 1a                                      bne #0x337be8
00337bf8  02 40 a0 e1                                      mov r4, r2
00337bfc  04 00 56 e1                                      cmp r6, r4
00337c00  eb ff ff 1a                                      bne #0x337bb4
00337c04  05 00 a0 e1                                      mov r0, r5
00337c08  10 10 98 e5                                      ldr r1, [r8, #0x10]
00337c0c  92 fa ff eb                                      bl #0x33665c
00337c10  08 40 98 e5                                      ldr r4, [r8, #8]
00337c14  08 00 54 e1                                      cmp r4, r8
00337c18  24 00 00 0a                                      beq #0x337cb0
00337c1c  28 31 9f e5                                      ldr r3, [pc, #0x128]
00337c20  28 a1 9f e5                                      ldr sl, [pc, #0x128]
00337c24  0c 60 8d e2                                      add r6, sp, #0xc
00337c28  03 70 9b e7                                      ldr r7, [fp, r3]
00337c2c  0a a0 8f e0                                      add sl, pc, sl
00337c30  08 90 8d e2                                      add sb, sp, #8
00337c34  07 00 a0 e1                                      mov r0, r7
00337c38  12 ff ff eb                                      bl #0x337888
00337c3c  09 20 a0 e1                                      mov r2, sb
00337c40  0a 10 a0 e1                                      mov r1, sl
00337c44  06 00 a0 e1                                      mov r0, r6
00337c48  27 71 ff eb                                      bl #0x3140ec
00337c4c  06 10 a0 e1                                      mov r1, r6
00337c50  07 00 a0 e1                                      mov r0, r7
00337c54  8b ff ff eb                                      bl #0x337a88
00337c58  06 00 a0 e1                                      mov r0, r6
00337c5c  7c 81 ff eb                                      bl #0x318254
00337c60  24 10 94 e5                                      ldr r1, [r4, #0x24]
00337c64  20 20 94 e5                                      ldr r2, [r4, #0x20]
00337c68  00 30 a0 e3                                      mov r3, #0
00337c6c  05 00 a0 e1                                      mov r0, r5
00337c70  02 20 61 e0                                      rsb r2, r1, r2
00337c74  05 7e ff eb                                      bl #0x317490
00337c78  05 00 a0 e1                                      mov r0, r5
00337c7c  28 10 d4 e5                                      ldrb r1, [r4, #0x28]
00337c80  a4 fa ff eb                                      bl #0x336718
00337c84  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00337c88  00 00 52 e3                                      cmp r2, #0
00337c8c  1c 00 00 0a                                      beq #0x337d04
00337c90  02 40 a0 e1                                      mov r4, r2
00337c94  00 00 00 ea                                      b #0x337c9c
00337c98  03 40 a0 e1                                      mov r4, r3
00337c9c  08 30 94 e5                                      ldr r3, [r4, #8]
00337ca0  00 00 53 e3                                      cmp r3, #0
00337ca4  fb ff ff 1a                                      bne #0x337c98
00337ca8  08 00 54 e1                                      cmp r4, r8
00337cac  e0 ff ff 1a                                      bne #0x337c34
00337cb0  04 20 9d e5                                      ldr r2, [sp, #4]
00337cb4  02 30 9b e7                                      ldr r3, [fp, r2]
00337cb8  24 20 9d e5                                      ldr r2, [sp, #0x24]
00337cbc  00 30 93 e5                                      ldr r3, [r3]
00337cc0  03 00 52 e1                                      cmp r2, r3
00337cc4  1d 00 00 1a                                      bne #0x337d40
00337cc8  2c d0 8d e2                                      add sp, sp, #0x2c
00337ccc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00337cd0  04 30 94 e5                                      ldr r3, [r4, #4]
00337cd4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00337cd8  01 00 54 e1                                      cmp r4, r1
00337cdc  05 00 00 1a                                      bne #0x337cf8
00337ce0  03 40 a0 e1                                      mov r4, r3
00337ce4  04 30 93 e5                                      ldr r3, [r3, #4]
00337ce8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00337cec  04 00 52 e1                                      cmp r2, r4
00337cf0  fa ff ff 0a                                      beq #0x337ce0
00337cf4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00337cf8  02 00 53 e1                                      cmp r3, r2
00337cfc  03 40 a0 11                                      movne r4, r3
00337d00  bd ff ff ea                                      b #0x337bfc
00337d04  04 30 94 e5                                      ldr r3, [r4, #4]
00337d08  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00337d0c  04 00 51 e1                                      cmp r1, r4
00337d10  05 00 00 1a                                      bne #0x337d2c
00337d14  03 40 a0 e1                                      mov r4, r3
00337d18  04 30 93 e5                                      ldr r3, [r3, #4]
00337d1c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00337d20  04 00 52 e1                                      cmp r2, r4
00337d24  fa ff ff 0a                                      beq #0x337d14
00337d28  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00337d2c  02 00 53 e1                                      cmp r3, r2
00337d30  03 40 a0 11                                      movne r4, r3
00337d34  08 00 54 e1                                      cmp r4, r8
00337d38  bd ff ff 1a                                      bne #0x337c34
00337d3c  db ff ff ea                                      b #0x337cb0
00337d40  72 59 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00337d44  34 cf 65 00 ac 40 00 00 84 08 00 00 6c 81 58 00  .byte 0x34, 0xcf, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x6c, 0x81, 0x58, 0x00

; FUNCTION 0x00337d54, declared_size=136, range_size=136, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitches4saveEv
; demangled: DebugSwitches::save()
; decoder-mode: arm
00337d54  74 30 9f e5                                      ldr r3, [pc, #0x74]
00337d58  74 20 9f e5                                      ldr r2, [pc, #0x74]
00337d5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00337d60  03 30 8f e0                                      add r3, pc, r3
00337d64  02 20 93 e7                                      ldr r2, [r3, r2]
00337d68  08 d0 4d e2                                      sub sp, sp, #8
00337d6c  00 50 a0 e1                                      mov r5, r0
00337d70  10 30 92 e5                                      ldr r3, [r2, #0x10]
00337d74  34 40 93 e5                                      ldr r4, [r3, #0x34]
00337d78  00 00 54 e3                                      cmp r4, #0
00337d7c  11 00 00 0a                                      beq #0x337dc8
00337d80  50 10 9f e5                                      ldr r1, [pc, #0x50]
00337d84  00 30 94 e5                                      ldr r3, [r4]
00337d88  04 00 a0 e1                                      mov r0, r4
00337d8c  01 10 8f e0                                      add r1, pc, r1
00337d90  01 20 a0 e3                                      mov r2, #1
00337d94  0f e0 a0 e1                                      mov lr, pc
00337d98  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00337d9c  00 10 50 e2                                      subs r1, r0, #0
00337da0  08 00 00 0a                                      beq #0x337dc8
00337da4  08 60 8d e2                                      add r6, sp, #8
00337da8  04 10 26 e5                                      str r1, [r6, #-4]!
00337dac  05 00 a0 e1                                      mov r0, r5
00337db0  65 ff ff eb                                      bl #0x337b4c
00337db4  04 00 a0 e1                                      mov r0, r4
00337db8  06 10 a0 e1                                      mov r1, r6
00337dbc  00 30 94 e5                                      ldr r3, [r4]
00337dc0  0f e0 a0 e1                                      mov lr, pc
00337dc4  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00337dc8  08 d0 8d e2                                      add sp, sp, #8
00337dcc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00337dd0  30 cd 65 00 f4 37 00 00 ac 80 58 00              .byte 0x30, 0xcd, 0x65, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xac, 0x80, 0x58, 0x00

; FUNCTION 0x00337ddc, declared_size=236, range_size=236, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitches9SetSwitchERKSsb
; demangled: DebugSwitches::SetSwitch(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, bool)
; decoder-mode: arm
00337ddc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00337de0  d0 40 9f e5                                      ldr r4, [pc, #0xd0]
00337de4  d0 60 9f e5                                      ldr r6, [pc, #0xd0]
00337de8  20 d0 4d e2                                      sub sp, sp, #0x20
00337dec  04 40 8f e0                                      add r4, pc, r4
00337df0  06 30 94 e7                                      ldr r3, [r4, r6]
00337df4  00 50 a0 e1                                      mov r5, r0
00337df8  02 80 a0 e1                                      mov r8, r2
00337dfc  00 30 93 e5                                      ldr r3, [r3]
00337e00  01 70 a0 e1                                      mov r7, r1
00337e04  1c 30 8d e5                                      str r3, [sp, #0x1c]
00337e08  e6 fa ff eb                                      bl #0x3369a8
00337e0c  00 00 55 e1                                      cmp r5, r0
00337e10  12 00 00 0a                                      beq #0x337e60
00337e14  05 00 a0 e1                                      mov r0, r5
00337e18  07 10 a0 e1                                      mov r1, r7
00337e1c  19 fd ff eb                                      bl #0x337288
00337e20  00 30 d0 e5                                      ldrb r3, [r0]
00337e24  08 00 53 e1                                      cmp r3, r8
00337e28  05 00 00 0a                                      beq #0x337e44
00337e2c  07 10 a0 e1                                      mov r1, r7
00337e30  05 00 a0 e1                                      mov r0, r5
00337e34  13 fd ff eb                                      bl #0x337288
00337e38  00 80 c0 e5                                      strb r8, [r0]
00337e3c  05 00 a0 e1                                      mov r0, r5
00337e40  c3 ff ff eb                                      bl #0x337d54
00337e44  06 30 94 e7                                      ldr r3, [r4, r6]
00337e48  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00337e4c  00 30 93 e5                                      ldr r3, [r3]
00337e50  03 00 52 e1                                      cmp r2, r3
00337e54  16 00 00 1a                                      bne #0x337eb4
00337e58  20 d0 8d e2                                      add sp, sp, #0x20
00337e5c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00337e60  58 30 9f e5                                      ldr r3, [pc, #0x58]
00337e64  04 a0 8d e2                                      add sl, sp, #4
00337e68  03 90 94 e7                                      ldr sb, [r4, r3]
00337e6c  09 00 a0 e1                                      mov r0, sb
00337e70  84 fe ff eb                                      bl #0x337888
00337e74  48 10 9f e5                                      ldr r1, [pc, #0x48]
00337e78  0d 20 a0 e1                                      mov r2, sp
00337e7c  0a 00 a0 e1                                      mov r0, sl
00337e80  01 10 8f e0                                      add r1, pc, r1
00337e84  98 70 ff eb                                      bl #0x3140ec
00337e88  0a 10 a0 e1                                      mov r1, sl
00337e8c  09 00 a0 e1                                      mov r0, sb
00337e90  fc fe ff eb                                      bl #0x337a88
00337e94  0a 00 a0 e1                                      mov r0, sl
00337e98  ed 80 ff eb                                      bl #0x318254
00337e9c  05 00 a0 e1                                      mov r0, r5
00337ea0  07 10 a0 e1                                      mov r1, r7
00337ea4  f7 fc ff eb                                      bl #0x337288
00337ea8  00 30 a0 e3                                      mov r3, #0
00337eac  00 30 c0 e5                                      strb r3, [r0]
00337eb0  d7 ff ff ea                                      b #0x337e14
00337eb4  15 59 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00337eb8  a4 cc 65 00 ac 40 00 00 84 08 00 00 00 7f 58 00  .byte 0xa4, 0xcc, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x00, 0x7f, 0x58, 0x00

; FUNCTION 0x00337ec8, declared_size=200, range_size=200, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitches9GetModuleERKSs
; demangled: DebugSwitches::GetModule(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00337ec8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00337ecc  ac 40 9f e5                                      ldr r4, [pc, #0xac]
00337ed0  ac 50 9f e5                                      ldr r5, [pc, #0xac]
00337ed4  18 80 80 e2                                      add r8, r0, #0x18
00337ed8  04 40 8f e0                                      add r4, pc, r4
00337edc  05 30 94 e7                                      ldr r3, [r4, r5]
00337ee0  24 d0 4d e2                                      sub sp, sp, #0x24
00337ee4  08 00 a0 e1                                      mov r0, r8
00337ee8  00 30 93 e5                                      ldr r3, [r3]
00337eec  01 70 a0 e1                                      mov r7, r1
00337ef0  1c 30 8d e5                                      str r3, [sp, #0x1c]
00337ef4  ab fa ff eb                                      bl #0x3369a8
00337ef8  08 00 50 e1                                      cmp r0, r8
00337efc  00 60 a0 e1                                      mov r6, r0
00337f00  28 00 d0 15                                      ldrbne r0, [r0, #0x28]
00337f04  06 00 00 0a                                      beq #0x337f24
00337f08  05 30 94 e7                                      ldr r3, [r4, r5]
00337f0c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00337f10  00 30 93 e5                                      ldr r3, [r3]
00337f14  03 00 52 e1                                      cmp r2, r3
00337f18  17 00 00 1a                                      bne #0x337f7c
00337f1c  24 d0 8d e2                                      add sp, sp, #0x24
00337f20  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00337f24  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00337f28  04 80 8d e2                                      add r8, sp, #4
00337f2c  03 a0 94 e7                                      ldr sl, [r4, r3]
00337f30  0a 00 a0 e1                                      mov r0, sl
00337f34  53 fe ff eb                                      bl #0x337888
00337f38  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
00337f3c  0d 20 a0 e1                                      mov r2, sp
00337f40  08 00 a0 e1                                      mov r0, r8
00337f44  01 10 8f e0                                      add r1, pc, r1
00337f48  67 70 ff eb                                      bl #0x3140ec
00337f4c  08 10 a0 e1                                      mov r1, r8
00337f50  0a 00 a0 e1                                      mov r0, sl
00337f54  cb fe ff eb                                      bl #0x337a88
00337f58  08 00 a0 e1                                      mov r0, r8
00337f5c  bc 80 ff eb                                      bl #0x318254
00337f60  06 00 a0 e1                                      mov r0, r6
00337f64  07 10 a0 e1                                      mov r1, r7
00337f68  c6 fc ff eb                                      bl #0x337288
00337f6c  01 30 a0 e3                                      mov r3, #1
00337f70  00 30 c0 e5                                      strb r3, [r0]
00337f74  03 00 a0 e1                                      mov r0, r3
00337f78  e2 ff ff ea                                      b #0x337f08
00337f7c  e3 58 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00337f80  b8 cb 65 00 ac 40 00 00 84 08 00 00 3c 7e 58 00  .byte 0xb8, 0xcb, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x3c, 0x7e, 0x58, 0x00

; FUNCTION 0x00337f90, declared_size=204, range_size=204, mode=arm
; class-group: DebugSwitches
; alias: _ZN13DebugSwitches9DelSwitchERKSs
; demangled: DebugSwitches::DelSwitch(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00337f90  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00337f94  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
00337f98  b0 50 9f e5                                      ldr r5, [pc, #0xb0]
00337f9c  2c d0 4d e2                                      sub sp, sp, #0x2c
00337fa0  04 40 8f e0                                      add r4, pc, r4
00337fa4  05 30 94 e7                                      ldr r3, [r4, r5]
00337fa8  00 80 a0 e1                                      mov r8, r0
00337fac  01 70 a0 e1                                      mov r7, r1
00337fb0  00 30 93 e5                                      ldr r3, [r3]
00337fb4  24 30 8d e5                                      str r3, [sp, #0x24]
00337fb8  7a fa ff eb                                      bl #0x3369a8
00337fbc  08 00 50 e1                                      cmp r0, r8
00337fc0  00 60 a0 e1                                      mov r6, r0
00337fc4  0a 00 00 0a                                      beq #0x337ff4
00337fc8  28 10 8d e2                                      add r1, sp, #0x28
00337fcc  24 00 21 e5                                      str r0, [r1, #-0x24]!
00337fd0  08 00 a0 e1                                      mov r0, r8
00337fd4  60 fa ff eb                                      bl #0x33695c
00337fd8  05 30 94 e7                                      ldr r3, [r4, r5]
00337fdc  24 20 9d e5                                      ldr r2, [sp, #0x24]
00337fe0  00 30 93 e5                                      ldr r3, [r3]
00337fe4  03 00 52 e1                                      cmp r2, r3
00337fe8  16 00 00 1a                                      bne #0x338048
00337fec  2c d0 8d e2                                      add sp, sp, #0x2c
00337ff0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00337ff4  58 30 9f e5                                      ldr r3, [pc, #0x58]
00337ff8  0c 80 8d e2                                      add r8, sp, #0xc
00337ffc  03 a0 94 e7                                      ldr sl, [r4, r3]
00338000  0a 00 a0 e1                                      mov r0, sl
00338004  1f fe ff eb                                      bl #0x337888
00338008  48 10 9f e5                                      ldr r1, [pc, #0x48]
0033800c  08 20 8d e2                                      add r2, sp, #8
00338010  08 00 a0 e1                                      mov r0, r8
00338014  01 10 8f e0                                      add r1, pc, r1
00338018  33 70 ff eb                                      bl #0x3140ec
0033801c  08 10 a0 e1                                      mov r1, r8
00338020  0a 00 a0 e1                                      mov r0, sl
00338024  97 fe ff eb                                      bl #0x337a88
00338028  08 00 a0 e1                                      mov r0, r8
0033802c  88 80 ff eb                                      bl #0x318254
00338030  06 00 a0 e1                                      mov r0, r6
00338034  07 10 a0 e1                                      mov r1, r7
00338038  92 fc ff eb                                      bl #0x337288
0033803c  00 30 a0 e3                                      mov r3, #0
00338040  00 30 c0 e5                                      strb r3, [r0]
00338044  e3 ff ff ea                                      b #0x337fd8
00338048  b0 58 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033804c  f0 ca 65 00 ac 40 00 00 84 08 00 00 6c 7d 58 00  .byte 0xf0, 0xca, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x6c, 0x7d, 0x58, 0x00
