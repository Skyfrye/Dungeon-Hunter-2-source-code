; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00478004, declared_size=752, range_size=752, mode=arm
; class-group: AnchorGroup
; alias: _ZN11AnchorGroup7_UpdateEPS_
; demangled: AnchorGroup::_Update(AnchorGroup*)
; decoder-mode: arm
00478004  d4 12 9f e5                                      ldr r1, [pc, #0x2d4]
00478008  d4 32 9f e5                                      ldr r3, [pc, #0x2d4]
0047800c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00478010  01 10 8f e0                                      add r1, pc, r1
00478014  03 20 91 e7                                      ldr r2, [r1, r3]
00478018  c8 32 9f e5                                      ldr r3, [pc, #0x2c8]
0047801c  34 d0 4d e2                                      sub sp, sp, #0x34
00478020  04 10 8d e5                                      str r1, [sp, #4]
00478024  03 30 91 e7                                      ldr r3, [r1, r3]
00478028  70 20 92 e5                                      ldr r2, [r2, #0x70]
0047802c  14 00 8d e5                                      str r0, [sp, #0x14]
00478030  00 10 93 e5                                      ldr r1, [r3]
00478034  02 00 51 e1                                      cmp r1, r2
00478038  a3 00 00 0a                                      beq #0x4782cc
0047803c  00 20 83 e5                                      str r2, [r3]
00478040  a4 32 9f e5                                      ldr r3, [pc, #0x2a4]
00478044  04 20 9d e5                                      ldr r2, [sp, #4]
00478048  00 10 a0 e3                                      mov r1, #0
0047804c  01 60 a0 e1                                      mov r6, r1
00478050  03 30 92 e7                                      ldr r3, [r2, r3]
00478054  18 10 8d e5                                      str r1, [sp, #0x18]
00478058  1c 10 8d e5                                      str r1, [sp, #0x1c]
0047805c  00 40 93 e5                                      ldr r4, [r3]
00478060  03 70 a0 e1                                      mov r7, r3
00478064  20 10 8d e5                                      str r1, [sp, #0x20]
00478068  24 10 8d e5                                      str r1, [sp, #0x24]
0047806c  28 10 8d e5                                      str r1, [sp, #0x28]
00478070  2c 10 8d e5                                      str r1, [sp, #0x2c]
00478074  01 90 a0 e1                                      mov sb, r1
00478078  01 b0 a0 e1                                      mov fp, r1
0047807c  01 a0 a0 e1                                      mov sl, r1
00478080  01 80 a0 e1                                      mov r8, r1
00478084  00 10 8d e5                                      str r1, [sp]
00478088  07 00 54 e1                                      cmp r4, r7
0047808c  00 10 a0 e3                                      mov r1, #0
00478090  10 10 8d e5                                      str r1, [sp, #0x10]
00478094  3d 00 00 0a                                      beq #0x478190
00478098  08 50 94 e5                                      ldr r5, [r4, #8]
0047809c  08 30 95 e5                                      ldr r3, [r5, #8]
004780a0  03 00 a0 e1                                      mov r0, r3
004780a4  00 30 93 e5                                      ldr r3, [r3]
004780a8  0f e0 a0 e1                                      mov lr, pc
004780ac  34 f0 93 e5                                      ldr pc, [r3, #0x34]
004780b0  00 00 50 e3                                      cmp r0, #0
004780b4  32 00 00 1a                                      bne #0x478184
004780b8  10 30 9d e5                                      ldr r3, [sp, #0x10]
004780bc  08 50 95 e5                                      ldr r5, [r5, #8]
004780c0  00 00 53 e3                                      cmp r3, #0
004780c4  5b 00 00 1a                                      bne #0x478238
004780c8  09 10 a0 e1                                      mov r1, sb
004780cc  06 00 a0 e1                                      mov r0, r6
004780d0  b5 58 fa eb                                      bl #0x30e3ac
004780d4  3f 14 a0 e3                                      mov r1, #0x3f000000
004780d8  23 5b fa eb                                      bl #0x30ed6c
004780dc  0a 10 a0 e1                                      mov r1, sl
004780e0  00 60 a0 e1                                      mov r6, r0
004780e4  0b 00 a0 e1                                      mov r0, fp
004780e8  af 58 fa eb                                      bl #0x30e3ac
004780ec  3f 14 a0 e3                                      mov r1, #0x3f000000
004780f0  1d 5b fa eb                                      bl #0x30ed6c
004780f4  08 10 a0 e1                                      mov r1, r8
004780f8  00 b0 a0 e1                                      mov fp, r0
004780fc  00 00 9d e5                                      ldr r0, [sp]
00478100  a9 58 fa eb                                      bl #0x30e3ac
00478104  3f 14 a0 e3                                      mov r1, #0x3f000000
00478108  17 5b fa eb                                      bl #0x30ed6c
0047810c  00 00 8d e5                                      str r0, [sp]
00478110  60 81 95 e5                                      ldr r8, [r5, #0x160]
00478114  01 20 a0 e3                                      mov r2, #1
00478118  06 10 a0 e1                                      mov r1, r6
0047811c  08 00 a0 e1                                      mov r0, r8
00478120  10 20 8d e5                                      str r2, [sp, #0x10]
00478124  a0 58 fa eb                                      bl #0x30e3ac
00478128  08 10 a0 e1                                      mov r1, r8
0047812c  00 90 a0 e1                                      mov sb, r0
00478130  06 00 a0 e1                                      mov r0, r6
00478134  9a 5a fa eb                                      bl #0x30eba4
00478138  64 81 95 e5                                      ldr r8, [r5, #0x164]
0047813c  0b 10 a0 e1                                      mov r1, fp
00478140  00 60 a0 e1                                      mov r6, r0
00478144  08 00 a0 e1                                      mov r0, r8
00478148  97 58 fa eb                                      bl #0x30e3ac
0047814c  08 10 a0 e1                                      mov r1, r8
00478150  00 a0 a0 e1                                      mov sl, r0
00478154  0b 00 a0 e1                                      mov r0, fp
00478158  91 5a fa eb                                      bl #0x30eba4
0047815c  68 51 95 e5                                      ldr r5, [r5, #0x168]
00478160  00 10 9d e5                                      ldr r1, [sp]
00478164  00 b0 a0 e1                                      mov fp, r0
00478168  05 00 a0 e1                                      mov r0, r5
0047816c  8e 58 fa eb                                      bl #0x30e3ac
00478170  05 10 a0 e1                                      mov r1, r5
00478174  00 80 a0 e1                                      mov r8, r0
00478178  00 00 9d e5                                      ldr r0, [sp]
0047817c  88 5a fa eb                                      bl #0x30eba4
00478180  00 00 8d e5                                      str r0, [sp]
00478184  00 40 94 e5                                      ldr r4, [r4]
00478188  07 00 54 e1                                      cmp r4, r7
0047818c  c1 ff ff 1a                                      bne #0x478098
00478190  06 00 a0 e1                                      mov r0, r6
00478194  09 10 a0 e1                                      mov r1, sb
00478198  83 58 fa eb                                      bl #0x30e3ac
0047819c  3f 14 a0 e3                                      mov r1, #0x3f000000
004781a0  f1 5a fa eb                                      bl #0x30ed6c
004781a4  00 10 a0 e1                                      mov r1, r0
004781a8  09 00 a0 e1                                      mov r0, sb
004781ac  7c 5a fa eb                                      bl #0x30eba4
004781b0  38 51 9f e5                                      ldr r5, [pc, #0x138]
004781b4  04 20 9d e5                                      ldr r2, [sp, #4]
004781b8  00 60 a0 e1                                      mov r6, r0
004781bc  0a 10 a0 e1                                      mov r1, sl
004781c0  05 40 92 e7                                      ldr r4, [r2, r5]
004781c4  0b 00 a0 e1                                      mov r0, fp
004781c8  00 60 84 e5                                      str r6, [r4]
004781cc  76 58 fa eb                                      bl #0x30e3ac
004781d0  3f 14 a0 e3                                      mov r1, #0x3f000000
004781d4  e4 5a fa eb                                      bl #0x30ed6c
004781d8  00 10 a0 e1                                      mov r1, r0
004781dc  0a 00 a0 e1                                      mov r0, sl
004781e0  6f 5a fa eb                                      bl #0x30eba4
004781e4  08 10 a0 e1                                      mov r1, r8
004781e8  04 00 84 e5                                      str r0, [r4, #4]
004781ec  00 00 9d e5                                      ldr r0, [sp]
004781f0  6d 58 fa eb                                      bl #0x30e3ac
004781f4  3f 14 a0 e3                                      mov r1, #0x3f000000
004781f8  db 5a fa eb                                      bl #0x30ed6c
004781fc  00 10 a0 e1                                      mov r1, r0
00478200  08 00 a0 e1                                      mov r0, r8
00478204  66 5a fa eb                                      bl #0x30eba4
00478208  08 00 84 e5                                      str r0, [r4, #8]
0047820c  04 10 9d e5                                      ldr r1, [sp, #4]
00478210  14 20 9d e5                                      ldr r2, [sp, #0x14]
00478214  05 30 91 e7                                      ldr r3, [r1, r5]
00478218  0c 60 82 e5                                      str r6, [r2, #0xc]
0047821c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00478220  04 20 93 e5                                      ldr r2, [r3, #4]
00478224  10 20 81 e5                                      str r2, [r1, #0x10]
00478228  08 30 93 e5                                      ldr r3, [r3, #8]
0047822c  14 30 81 e5                                      str r3, [r1, #0x14]
00478230  34 d0 8d e2                                      add sp, sp, #0x34
00478234  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00478238  60 31 95 e5                                      ldr r3, [r5, #0x160]
0047823c  09 10 a0 e1                                      mov r1, sb
00478240  03 00 a0 e1                                      mov r0, r3
00478244  0c 30 8d e5                                      str r3, [sp, #0xc]
00478248  2f 59 fa eb                                      bl #0x30e70c
0047824c  64 11 95 e5                                      ldr r1, [r5, #0x164]
00478250  00 00 50 e3                                      cmp r0, #0
00478254  0c 90 9d 15                                      ldrne sb, [sp, #0xc]
00478258  08 10 8d e5                                      str r1, [sp, #8]
0047825c  08 00 9d e5                                      ldr r0, [sp, #8]
00478260  0a 10 a0 e1                                      mov r1, sl
00478264  28 59 fa eb                                      bl #0x30e70c
00478268  68 51 95 e5                                      ldr r5, [r5, #0x168]
0047826c  00 00 50 e3                                      cmp r0, #0
00478270  08 10 a0 e1                                      mov r1, r8
00478274  05 00 a0 e1                                      mov r0, r5
00478278  08 a0 9d 15                                      ldrne sl, [sp, #8]
0047827c  22 59 fa eb                                      bl #0x30e70c
00478280  06 10 a0 e1                                      mov r1, r6
00478284  00 00 50 e3                                      cmp r0, #0
00478288  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0047828c  05 80 a0 11                                      movne r8, r5
00478290  18 58 fa eb                                      bl #0x30e2f8
00478294  0b 10 a0 e1                                      mov r1, fp
00478298  00 00 50 e3                                      cmp r0, #0
0047829c  08 00 9d e5                                      ldr r0, [sp, #8]
004782a0  0c 60 9d 15                                      ldrne r6, [sp, #0xc]
004782a4  13 58 fa eb                                      bl #0x30e2f8
004782a8  00 10 9d e5                                      ldr r1, [sp]
004782ac  00 00 50 e3                                      cmp r0, #0
004782b0  05 00 a0 e1                                      mov r0, r5
004782b4  08 b0 9d 15                                      ldrne fp, [sp, #8]
004782b8  0e 58 fa eb                                      bl #0x30e2f8
004782bc  00 00 50 e3                                      cmp r0, #0
004782c0  00 50 8d 15                                      strne r5, [sp]
004782c4  00 40 94 e5                                      ldr r4, [r4]
004782c8  ae ff ff ea                                      b #0x478188
004782cc  1c 50 9f e5                                      ldr r5, [pc, #0x1c]
004782d0  04 20 9d e5                                      ldr r2, [sp, #4]
004782d4  05 30 92 e7                                      ldr r3, [r2, r5]
004782d8  00 60 93 e5                                      ldr r6, [r3]
004782dc  ca ff ff ea                                      b #0x47820c
; mapping-symbol data/literal pool
004782e0  80 ca 51 00 f4 37 00 00 50 44 00 00 74 0e 00 00  .byte 0x80, 0xca, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x50, 0x44, 0x00, 0x00, 0x74, 0x0e, 0x00, 0x00
004782f0  98 0a 00 00                                      .byte 0x98, 0x0a, 0x00, 0x00

; FUNCTION 0x004782f4, declared_size=4, range_size=4, mode=arm
; class-group: AnchorGroup
; alias: _ZN11AnchorGroup6UpdateEv
; demangled: AnchorGroup::Update()
; decoder-mode: arm
004782f4  42 ff ff ea                                      b #0x478004

; FUNCTION 0x004782f8, declared_size=4, range_size=4, mode=arm
; class-group: AnchorGroup
; alias: _ZN11AnchorGroup5ResetEv
; demangled: AnchorGroup::Reset()
; decoder-mode: arm
004782f8  5d fb ff ea                                      b #0x477074

; FUNCTION 0x00478420, declared_size=108, range_size=108, mode=arm
; class-group: AnchorGroup
; alias: _ZN11AnchorGroup13_RemoveAnchorEPS_
; demangled: AnchorGroup::_RemoveAnchor(AnchorGroup*)
; decoder-mode: arm
00478420  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00478424  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00478428  70 40 2d e9                                      push {r4, r5, r6, lr}
0047842c  03 30 8f e0                                      add r3, pc, r3
00478430  02 20 93 e7                                      ldr r2, [r3, r2]
00478434  00 60 a0 e1                                      mov r6, r0
00478438  00 00 92 e5                                      ldr r0, [r2]
0047843c  02 50 a0 e1                                      mov r5, r2
00478440  05 00 50 e1                                      cmp r0, r5
00478444  06 00 00 0a                                      beq #0x478464
00478448  08 30 90 e5                                      ldr r3, [r0, #8]
0047844c  00 40 90 e5                                      ldr r4, [r0]
00478450  03 00 56 e1                                      cmp r6, r3
00478454  03 00 00 0a                                      beq #0x478468
00478458  04 00 a0 e1                                      mov r0, r4
0047845c  05 00 50 e1                                      cmp r0, r5
00478460  f8 ff ff 1a                                      bne #0x478448
00478464  70 80 bd e8                                      pop {r4, r5, r6, pc}
00478468  04 30 90 e5                                      ldr r3, [r0, #4]
0047846c  0c 10 a0 e3                                      mov r1, #0xc
00478470  00 40 83 e5                                      str r4, [r3]
00478474  04 30 84 e5                                      str r3, [r4, #4]
00478478  a0 42 0a eb                                      bl #0x708f00
0047847c  04 00 a0 e1                                      mov r0, r4
00478480  f5 ff ff ea                                      b #0x47845c
; mapping-symbol data/literal pool
00478484  64 c6 51 00 74 0e 00 00                          .byte 0x64, 0xc6, 0x51, 0x00, 0x74, 0x0e, 0x00, 0x00

; FUNCTION 0x0047848c, declared_size=60, range_size=60, mode=arm
; class-group: AnchorGroup
; alias: _ZN11AnchorGroupD1Ev
; demangled: AnchorGroup::~AnchorGroup()
; decoder-mode: arm
0047848c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00478490  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00478494  10 40 2d e9                                      push {r4, lr}
00478498  03 30 8f e0                                      add r3, pc, r3
0047849c  02 20 93 e7                                      ldr r2, [r3, r2]
004784a0  00 40 a0 e1                                      mov r4, r0
004784a4  08 20 82 e2                                      add r2, r2, #8
004784a8  00 20 80 e5                                      str r2, [r0]
004784ac  db ff ff eb                                      bl #0x478420
004784b0  04 00 a0 e1                                      mov r0, r4
004784b4  ec fa ff eb                                      bl #0x47706c
004784b8  04 00 a0 e1                                      mov r0, r4
004784bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004784c0  f8 c5 51 00 80 42 00 00                          .byte 0xf8, 0xc5, 0x51, 0x00, 0x80, 0x42, 0x00, 0x00

; FUNCTION 0x004784c8, declared_size=28, range_size=28, mode=arm
; class-group: AnchorGroup
; alias: _ZN11AnchorGroupD0Ev
; demangled: AnchorGroup::~AnchorGroup()
; decoder-mode: arm
004784c8  10 40 2d e9                                      push {r4, lr}
004784cc  00 40 a0 e1                                      mov r4, r0
004784d0  ed ff ff eb                                      bl #0x47848c
004784d4  04 00 a0 e1                                      mov r0, r4
004784d8  d8 5f fa eb                                      bl #0x310440
004784dc  04 00 a0 e1                                      mov r0, r4
004784e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004784e4, declared_size=60, range_size=60, mode=arm
; class-group: AnchorGroup
; alias: _ZN11AnchorGroupD2Ev
; demangled: AnchorGroup::~AnchorGroup()
; decoder-mode: arm
004784e4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004784e8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004784ec  10 40 2d e9                                      push {r4, lr}
004784f0  03 30 8f e0                                      add r3, pc, r3
004784f4  02 20 93 e7                                      ldr r2, [r3, r2]
004784f8  00 40 a0 e1                                      mov r4, r0
004784fc  08 20 82 e2                                      add r2, r2, #8
00478500  00 20 80 e5                                      str r2, [r0]
00478504  c5 ff ff eb                                      bl #0x478420
00478508  04 00 a0 e1                                      mov r0, r4
0047850c  d6 fa ff eb                                      bl #0x47706c
00478510  04 00 a0 e1                                      mov r0, r4
00478514  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00478518  a0 c5 51 00 80 42 00 00                          .byte 0xa0, 0xc5, 0x51, 0x00, 0x80, 0x42, 0x00, 0x00

; FUNCTION 0x00478520, declared_size=88, range_size=88, mode=arm
; class-group: AnchorGroup
; alias: _ZN11AnchorGroup10_AddAnchorEPS_
; demangled: AnchorGroup::_AddAnchor(AnchorGroup*)
; decoder-mode: arm
00478520  30 40 2d e9                                      push {r4, r5, lr}
00478524  0c d0 4d e2                                      sub sp, sp, #0xc
00478528  08 30 8d e2                                      add r3, sp, #8
0047852c  0c 20 a0 e3                                      mov r2, #0xc
00478530  04 20 23 e5                                      str r2, [r3, #-4]!
00478534  00 50 a0 e1                                      mov r5, r0
00478538  03 00 a0 e1                                      mov r0, r3
0047853c  5f 42 0a eb                                      bl #0x708ec0
00478540  28 40 9f e5                                      ldr r4, [pc, #0x28]
00478544  28 30 9f e5                                      ldr r3, [pc, #0x28]
00478548  08 50 80 e5                                      str r5, [r0, #8]
0047854c  04 40 8f e0                                      add r4, pc, r4
00478550  03 30 94 e7                                      ldr r3, [r4, r3]
00478554  04 20 93 e5                                      ldr r2, [r3, #4]
00478558  00 30 80 e5                                      str r3, [r0]
0047855c  04 20 80 e5                                      str r2, [r0, #4]
00478560  00 00 82 e5                                      str r0, [r2]
00478564  04 00 83 e5                                      str r0, [r3, #4]
00478568  0c d0 8d e2                                      add sp, sp, #0xc
0047856c  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00478570  44 c5 51 00 74 0e 00 00                          .byte 0x44, 0xc5, 0x51, 0x00, 0x74, 0x0e, 0x00, 0x00

; FUNCTION 0x00478578, declared_size=60, range_size=60, mode=arm
; class-group: AnchorGroup
; alias: _ZN11AnchorGroupC1EP10GameObjectN10AnchorBase10AnchorTypeE
; demangled: AnchorGroup::AnchorGroup(GameObject*, AnchorBase::AnchorType)
; decoder-mode: arm
00478578  70 40 2d e9                                      push {r4, r5, r6, lr}
0047857c  28 40 9f e5                                      ldr r4, [pc, #0x28]
00478580  00 50 a0 e1                                      mov r5, r0
00478584  05 fb ff eb                                      bl #0x4771a0
00478588  20 30 9f e5                                      ldr r3, [pc, #0x20]
0047858c  04 40 8f e0                                      add r4, pc, r4
00478590  05 00 a0 e1                                      mov r0, r5
00478594  03 30 94 e7                                      ldr r3, [r4, r3]
00478598  08 30 83 e2                                      add r3, r3, #8
0047859c  00 30 85 e5                                      str r3, [r5]
004785a0  de ff ff eb                                      bl #0x478520
004785a4  05 00 a0 e1                                      mov r0, r5
004785a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004785ac  04 c5 51 00 80 42 00 00                          .byte 0x04, 0xc5, 0x51, 0x00, 0x80, 0x42, 0x00, 0x00

; FUNCTION 0x004785b4, declared_size=60, range_size=60, mode=arm
; class-group: AnchorGroup
; alias: _ZN11AnchorGroupC2EP10GameObjectN10AnchorBase10AnchorTypeE
; demangled: AnchorGroup::AnchorGroup(GameObject*, AnchorBase::AnchorType)
; decoder-mode: arm
004785b4  70 40 2d e9                                      push {r4, r5, r6, lr}
004785b8  28 40 9f e5                                      ldr r4, [pc, #0x28]
004785bc  00 50 a0 e1                                      mov r5, r0
004785c0  f6 fa ff eb                                      bl #0x4771a0
004785c4  20 30 9f e5                                      ldr r3, [pc, #0x20]
004785c8  04 40 8f e0                                      add r4, pc, r4
004785cc  05 00 a0 e1                                      mov r0, r5
004785d0  03 30 94 e7                                      ldr r3, [r4, r3]
004785d4  08 30 83 e2                                      add r3, r3, #8
004785d8  00 30 85 e5                                      str r3, [r5]
004785dc  cf ff ff eb                                      bl #0x478520
004785e0  05 00 a0 e1                                      mov r0, r5
004785e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004785e8  c8 c4 51 00 80 42 00 00                          .byte 0xc8, 0xc4, 0x51, 0x00, 0x80, 0x42, 0x00, 0x00
