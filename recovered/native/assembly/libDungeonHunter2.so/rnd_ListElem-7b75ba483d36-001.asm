; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004881d0, declared_size=176, range_size=176, mode=arm
; class-group: rnd::ListElem
; alias: _ZN3rnd8ListElemD1Ev
; demangled: rnd::ListElem::~ListElem()
; decoder-mode: arm
004881d0  10 40 2d e9                                      push {r4, lr}
004881d4  34 30 80 e2                                      add r3, r0, #0x34
004881d8  00 40 a0 e1                                      mov r4, r0
004881dc  14 00 93 e5                                      ldr r0, [r3, #0x14]
004881e0  03 00 50 e1                                      cmp r0, r3
004881e4  06 00 00 0a                                      beq #0x488204
004881e8  00 00 50 e3                                      cmp r0, #0
004881ec  04 00 00 0a                                      beq #0x488204
004881f0  34 10 94 e5                                      ldr r1, [r4, #0x34]
004881f4  01 10 60 e0                                      rsb r1, r0, r1
004881f8  80 00 51 e3                                      cmp r1, #0x80
004881fc  18 00 00 8a                                      bhi #0x488264
00488200  3e 03 0a eb                                      bl #0x708f00
00488204  1c 30 84 e2                                      add r3, r4, #0x1c
00488208  14 00 93 e5                                      ldr r0, [r3, #0x14]
0048820c  03 00 50 e1                                      cmp r0, r3
00488210  06 00 00 0a                                      beq #0x488230
00488214  00 00 50 e3                                      cmp r0, #0
00488218  04 00 00 0a                                      beq #0x488230
0048821c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00488220  01 10 60 e0                                      rsb r1, r0, r1
00488224  80 00 51 e3                                      cmp r1, #0x80
00488228  0f 00 00 8a                                      bhi #0x48826c
0048822c  33 03 0a eb                                      bl #0x708f00
00488230  04 30 84 e2                                      add r3, r4, #4
00488234  14 00 93 e5                                      ldr r0, [r3, #0x14]
00488238  03 00 50 e1                                      cmp r0, r3
0048823c  06 00 00 0a                                      beq #0x48825c
00488240  00 00 50 e3                                      cmp r0, #0
00488244  04 00 00 0a                                      beq #0x48825c
00488248  04 10 94 e5                                      ldr r1, [r4, #4]
0048824c  01 10 60 e0                                      rsb r1, r0, r1
00488250  80 00 51 e3                                      cmp r1, #0x80
00488254  06 00 00 8a                                      bhi #0x488274
00488258  28 03 0a eb                                      bl #0x708f00
0048825c  04 00 a0 e1                                      mov r0, r4
00488260  10 80 bd e8                                      pop {r4, pc}
00488264  75 20 fa eb                                      bl #0x310440
00488268  e5 ff ff ea                                      b #0x488204
0048826c  73 20 fa eb                                      bl #0x310440
00488270  ee ff ff ea                                      b #0x488230
00488274  71 20 fa eb                                      bl #0x310440
00488278  04 00 a0 e1                                      mov r0, r4
0048827c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0048c0bc, declared_size=116, range_size=116, mode=arm
; class-group: rnd::ListElem
; alias: _ZN3rnd8ListElemaSERKS0_
; demangled: rnd::ListElem::operator=(rnd::ListElem const&)
; decoder-mode: arm
0048c0bc  70 40 2d e9                                      push {r4, r5, r6, lr}
0048c0c0  01 30 a0 e1                                      mov r3, r1
0048c0c4  04 20 93 e4                                      ldr r2, [r3], #4
0048c0c8  00 50 a0 e1                                      mov r5, r0
0048c0cc  01 40 a0 e1                                      mov r4, r1
0048c0d0  04 20 80 e4                                      str r2, [r0], #4
0048c0d4  03 00 50 e1                                      cmp r0, r3
0048c0d8  02 00 00 0a                                      beq #0x48c0e8
0048c0dc  18 10 91 e5                                      ldr r1, [r1, #0x18]
0048c0e0  14 20 94 e5                                      ldr r2, [r4, #0x14]
0048c0e4  3d 12 fa eb                                      bl #0x3109e0
0048c0e8  1c 00 85 e2                                      add r0, r5, #0x1c
0048c0ec  1c 30 84 e2                                      add r3, r4, #0x1c
0048c0f0  03 00 50 e1                                      cmp r0, r3
0048c0f4  02 00 00 0a                                      beq #0x48c104
0048c0f8  30 10 94 e5                                      ldr r1, [r4, #0x30]
0048c0fc  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0048c100  36 12 fa eb                                      bl #0x3109e0
0048c104  34 00 85 e2                                      add r0, r5, #0x34
0048c108  34 30 84 e2                                      add r3, r4, #0x34
0048c10c  03 00 50 e1                                      cmp r0, r3
0048c110  02 00 00 0a                                      beq #0x48c120
0048c114  48 10 94 e5                                      ldr r1, [r4, #0x48]
0048c118  44 20 94 e5                                      ldr r2, [r4, #0x44]
0048c11c  2f 12 fa eb                                      bl #0x3109e0
0048c120  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0048c124  05 00 a0 e1                                      mov r0, r5
0048c128  4c 30 85 e5                                      str r3, [r5, #0x4c]
0048c12c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048c51c, declared_size=284, range_size=284, mode=arm
; class-group: rnd::ListElem
; alias: _ZN3rnd8ListElem11LoadFromXmlEP9TiXmlNode
; demangled: rnd::ListElem::LoadFromXml(TiXmlNode*)
; decoder-mode: arm
0048c51c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048c520  00 40 a0 e1                                      mov r4, r0
0048c524  00 30 91 e5                                      ldr r3, [r1]
0048c528  01 00 a0 e1                                      mov r0, r1
0048c52c  0f e0 a0 e1                                      mov lr, pc
0048c530  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0048c534  00 50 50 e2                                      subs r5, r0, #0
0048c538  2a 00 00 0a                                      beq #0x48c5e8
0048c53c  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0048c540  04 60 84 e2                                      add r6, r4, #4
0048c544  01 10 8f e0                                      add r1, pc, r1
0048c548  c8 21 02 eb                                      bl #0x514c70
0048c54c  00 70 50 e2                                      subs r7, r0, #0
0048c550  25 00 00 0a                                      beq #0x48c5ec
0048c554  3e 06 fa eb                                      bl #0x30de54
0048c558  00 20 87 e0                                      add r2, r7, r0
0048c55c  07 10 a0 e1                                      mov r1, r7
0048c560  06 00 a0 e1                                      mov r0, r6
0048c564  1d 11 fa eb                                      bl #0x3109e0
0048c568  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0048c56c  05 00 a0 e1                                      mov r0, r5
0048c570  1c 60 84 e2                                      add r6, r4, #0x1c
0048c574  01 10 8f e0                                      add r1, pc, r1
0048c578  bc 21 02 eb                                      bl #0x514c70
0048c57c  00 70 50 e2                                      subs r7, r0, #0
0048c580  1d 00 00 0a                                      beq #0x48c5fc
0048c584  32 06 fa eb                                      bl #0x30de54
0048c588  00 20 87 e0                                      add r2, r7, r0
0048c58c  07 10 a0 e1                                      mov r1, r7
0048c590  06 00 a0 e1                                      mov r0, r6
0048c594  11 11 fa eb                                      bl #0x3109e0
0048c598  84 10 9f e5                                      ldr r1, [pc, #0x84]
0048c59c  05 00 a0 e1                                      mov r0, r5
0048c5a0  34 60 84 e2                                      add r6, r4, #0x34
0048c5a4  01 10 8f e0                                      add r1, pc, r1
0048c5a8  b0 21 02 eb                                      bl #0x514c70
0048c5ac  00 70 50 e2                                      subs r7, r0, #0
0048c5b0  15 00 00 0a                                      beq #0x48c60c
0048c5b4  26 06 fa eb                                      bl #0x30de54
0048c5b8  00 20 87 e0                                      add r2, r7, r0
0048c5bc  07 10 a0 e1                                      mov r1, r7
0048c5c0  06 00 a0 e1                                      mov r0, r6
0048c5c4  05 11 fa eb                                      bl #0x3109e0
0048c5c8  58 10 9f e5                                      ldr r1, [pc, #0x58]
0048c5cc  05 00 a0 e1                                      mov r0, r5
0048c5d0  4c 20 84 e2                                      add r2, r4, #0x4c
0048c5d4  01 10 8f e0                                      add r1, pc, r1
0048c5d8  84 24 02 eb                                      bl #0x5157f0
0048c5dc  00 00 50 e3                                      cmp r0, #0
0048c5e0  64 30 a0 13                                      movne r3, #0x64
0048c5e4  4c 30 84 15                                      strne r3, [r4, #0x4c]
0048c5e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0048c5ec  38 20 9f e5                                      ldr r2, [pc, #0x38]
0048c5f0  02 20 8f e0                                      add r2, pc, r2
0048c5f4  02 70 a0 e1                                      mov r7, r2
0048c5f8  d7 ff ff ea                                      b #0x48c55c
0048c5fc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048c600  02 20 8f e0                                      add r2, pc, r2
0048c604  02 70 a0 e1                                      mov r7, r2
0048c608  df ff ff ea                                      b #0x48c58c
0048c60c  20 20 9f e5                                      ldr r2, [pc, #0x20]
0048c610  02 20 8f e0                                      add r2, pc, r2
0048c614  02 70 a0 e1                                      mov r7, r2
0048c618  e7 ff ff ea                                      b #0x48c5bc
; mapping-symbol data/literal pool
0048c61c  a4 4b 45 00 7c 88 44 00 5c 88 44 00 34 88 44 00  .byte 0xa4, 0x4b, 0x45, 0x00, 0x7c, 0x88, 0x44, 0x00, 0x5c, 0x88, 0x44, 0x00, 0x34, 0x88, 0x44, 0x00
0048c62c  18 f2 43 00 08 f2 43 00 f8 f1 43 00              .byte 0x18, 0xf2, 0x43, 0x00, 0x08, 0xf2, 0x43, 0x00, 0xf8, 0xf1, 0x43, 0x00

; FUNCTION 0x0048e080, declared_size=96, range_size=96, mode=arm
; class-group: rnd::ListElem
; alias: _ZN3rnd8ListElemC1Ev
; demangled: rnd::ListElem::ListElem()
; decoder-mode: arm
0048e080  30 40 2d e9                                      push {r4, r5, lr}
0048e084  50 50 9f e5                                      ldr r5, [pc, #0x50]
0048e088  14 d0 4d e2                                      sub sp, sp, #0x14
0048e08c  00 30 a0 e3                                      mov r3, #0
0048e090  05 50 8f e0                                      add r5, pc, r5
0048e094  00 40 a0 e1                                      mov r4, r0
0048e098  05 10 a0 e1                                      mov r1, r5
0048e09c  04 30 80 e4                                      str r3, [r0], #4
0048e0a0  0c 20 8d e2                                      add r2, sp, #0xc
0048e0a4  10 18 fa eb                                      bl #0x3140ec
0048e0a8  05 10 a0 e1                                      mov r1, r5
0048e0ac  08 20 8d e2                                      add r2, sp, #8
0048e0b0  1c 00 84 e2                                      add r0, r4, #0x1c
0048e0b4  0c 18 fa eb                                      bl #0x3140ec
0048e0b8  05 10 a0 e1                                      mov r1, r5
0048e0bc  34 00 84 e2                                      add r0, r4, #0x34
0048e0c0  04 20 8d e2                                      add r2, sp, #4
0048e0c4  08 18 fa eb                                      bl #0x3140ec
0048e0c8  64 30 a0 e3                                      mov r3, #0x64
0048e0cc  4c 30 84 e5                                      str r3, [r4, #0x4c]
0048e0d0  04 00 a0 e1                                      mov r0, r4
0048e0d4  14 d0 8d e2                                      add sp, sp, #0x14
0048e0d8  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0048e0dc  78 d7 43 00                                      .byte 0x78, 0xd7, 0x43, 0x00

; FUNCTION 0x0048e128, declared_size=92, range_size=92, mode=arm
; class-group: rnd::ListElem
; alias: _ZN3rnd8ListElemC1EPNS_8ListRuleE
; demangled: rnd::ListElem::ListElem(rnd::ListRule*)
; decoder-mode: arm
0048e128  30 40 2d e9                                      push {r4, r5, lr}
0048e12c  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
0048e130  14 d0 4d e2                                      sub sp, sp, #0x14
0048e134  00 40 a0 e1                                      mov r4, r0
0048e138  05 50 8f e0                                      add r5, pc, r5
0048e13c  0c 20 8d e2                                      add r2, sp, #0xc
0048e140  04 10 80 e4                                      str r1, [r0], #4
0048e144  05 10 a0 e1                                      mov r1, r5
0048e148  e7 17 fa eb                                      bl #0x3140ec
0048e14c  05 10 a0 e1                                      mov r1, r5
0048e150  08 20 8d e2                                      add r2, sp, #8
0048e154  1c 00 84 e2                                      add r0, r4, #0x1c
0048e158  e3 17 fa eb                                      bl #0x3140ec
0048e15c  05 10 a0 e1                                      mov r1, r5
0048e160  34 00 84 e2                                      add r0, r4, #0x34
0048e164  04 20 8d e2                                      add r2, sp, #4
0048e168  df 17 fa eb                                      bl #0x3140ec
0048e16c  64 30 a0 e3                                      mov r3, #0x64
0048e170  4c 30 84 e5                                      str r3, [r4, #0x4c]
0048e174  04 00 a0 e1                                      mov r0, r4
0048e178  14 d0 8d e2                                      add sp, sp, #0x14
0048e17c  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0048e180  d0 d6 43 00                                      .byte 0xd0, 0xd6, 0x43, 0x00

; FUNCTION 0x0048e280, declared_size=64, range_size=64, mode=arm
; class-group: rnd::ListElem
; alias: _ZN3rnd8ListElemC1ERKS0_
; demangled: rnd::ListElem::ListElem(rnd::ListElem const&)
; decoder-mode: arm
0048e280  70 40 2d e9                                      push {r4, r5, r6, lr}
0048e284  01 50 a0 e1                                      mov r5, r1
0048e288  04 30 91 e4                                      ldr r3, [r1], #4
0048e28c  00 40 a0 e1                                      mov r4, r0
0048e290  04 30 80 e4                                      str r3, [r0], #4
0048e294  9f 75 fa eb                                      bl #0x32b918
0048e298  1c 10 85 e2                                      add r1, r5, #0x1c
0048e29c  1c 00 84 e2                                      add r0, r4, #0x1c
0048e2a0  9c 75 fa eb                                      bl #0x32b918
0048e2a4  34 00 84 e2                                      add r0, r4, #0x34
0048e2a8  34 10 85 e2                                      add r1, r5, #0x34
0048e2ac  99 75 fa eb                                      bl #0x32b918
0048e2b0  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
0048e2b4  04 00 a0 e1                                      mov r0, r4
0048e2b8  4c 30 84 e5                                      str r3, [r4, #0x4c]
0048e2bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
