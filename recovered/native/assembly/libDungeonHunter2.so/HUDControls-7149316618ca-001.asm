; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00418238, declared_size=8, range_size=8, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls11hasInstanceEv
; demangled: HUDControls::hasInstance()
; decoder-mode: arm
00418238  01 00 a0 e3                                      mov r0, #1
0041823c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00418240, declared_size=4, range_size=4, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls5FlushEv
; demangled: HUDControls::Flush()
; decoder-mode: arm
00418240  1e ff 2f e1                                      bx lr

; FUNCTION 0x00418244, declared_size=4, range_size=4, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls4DrawEv
; demangled: HUDControls::Draw()
; decoder-mode: arm
00418244  1e ff 2f e1                                      bx lr

; FUNCTION 0x00418248, declared_size=8, range_size=8, mode=arm
; class-group: HUDControls
; alias: _ZThn4_N11HUDControls7onEventERKN6glitch6SEventE
; demangled: non-virtual thunk to HUDControls::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00418248  04 00 40 e2                                      sub r0, r0, #4
0041824c  ff ff ff ea                                      b #0x418250

; FUNCTION 0x00418250, declared_size=8, range_size=8, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls7onEventERKN6glitch6SEventE
; demangled: HUDControls::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00418250  00 00 a0 e3                                      mov r0, #0
00418254  1e ff 2f e1                                      bx lr

; FUNCTION 0x00418258, declared_size=212, range_size=212, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls7onEventEPK6IEventPK12EventManager
; demangled: HUDControls::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
00418258  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
0041825c  70 40 2d e9                                      push {r4, r5, r6, lr}
00418260  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
00418264  01 40 a0 e1                                      mov r4, r1
00418268  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0041826c  03 30 8f e0                                      add r3, pc, r3
00418270  00 50 a0 e1                                      mov r5, r0
00418274  01 10 8f e0                                      add r1, pc, r1
00418278  02 00 93 e7                                      ldr r0, [r3, r2]
0041827c  f0 22 fc eb                                      bl #0x320e44
00418280  00 00 50 e3                                      cmp r0, #0
00418284  02 00 00 1a                                      bne #0x418294
00418288  09 30 d5 e5                                      ldrb r3, [r5, #9]
0041828c  00 00 53 e3                                      cmp r3, #0
00418290  01 00 00 0a                                      beq #0x41829c
00418294  00 00 a0 e3                                      mov r0, #0
00418298  70 80 bd e8                                      pop {r4, r5, r6, pc}
0041829c  84 30 d5 e5                                      ldrb r3, [r5, #0x84]
004182a0  00 00 53 e3                                      cmp r3, #0
004182a4  fa ff ff 1a                                      bne #0x418294
004182a8  00 30 94 e5                                      ldr r3, [r4]
004182ac  04 00 a0 e1                                      mov r0, r4
004182b0  0f e0 a0 e1                                      mov lr, pc
004182b4  08 f0 93 e5                                      ldr pc, [r3, #8]
004182b8  04 00 50 e3                                      cmp r0, #4
004182bc  0c 00 00 1a                                      bne #0x4182f4
004182c0  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
004182c4  b8 10 d4 e1                                      ldrh r1, [r4, #8]
004182c8  ba 20 d4 e1                                      ldrh r2, [r4, #0xa]
004182cc  00 00 53 e3                                      cmp r3, #0
004182d0  00 30 e0 03                                      mvneq r3, #0
004182d4  71 10 bf 16                                      sxthne r1, r1
004182d8  72 20 bf 16                                      sxthne r2, r2
004182dc  80 20 85 15                                      strne r2, [r5, #0x80]
004182e0  7c 10 85 15                                      strne r1, [r5, #0x7c]
004182e4  80 30 85 05                                      streq r3, [r5, #0x80]
004182e8  7c 30 85 05                                      streq r3, [r5, #0x7c]
004182ec  00 00 a0 e3                                      mov r0, #0
004182f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
004182f4  00 30 94 e5                                      ldr r3, [r4]
004182f8  04 00 a0 e1                                      mov r0, r4
004182fc  0f e0 a0 e1                                      mov lr, pc
00418300  08 f0 93 e5                                      ldr pc, [r3, #8]
00418304  05 00 50 e3                                      cmp r0, #5
00418308  f8 20 d4 01                                      ldrsheq r2, [r4, #8]
0041830c  fa 30 d4 01                                      ldrsheq r3, [r4, #0xa]
00418310  00 00 a0 e3                                      mov r0, #0
00418314  7c 20 85 05                                      streq r2, [r5, #0x7c]
00418318  80 30 85 05                                      streq r3, [r5, #0x80]
0041831c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00418320  24 c8 57 00 f4 37 00 00 cc 69 4a 00              .byte 0x24, 0xc8, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xcc, 0x69, 0x4a, 0x00

; FUNCTION 0x0041832c, declared_size=52, range_size=52, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls11BeginCustomEv
; demangled: HUDControls::BeginCustom()
; decoder-mode: arm
0041832c  70 40 2d e9                                      push {r4, r5, r6, lr}
00418330  00 50 a0 e1                                      mov r5, r0
00418334  01 40 a0 e3                                      mov r4, #1
00418338  59 0e 80 e2                                      add r0, r0, #0x590
0041833c  6c 46 c5 e5                                      strb r4, [r5, #0x66c]
00418340  08 00 80 e2                                      add r0, r0, #8
00418344  81 3e 00 eb                                      bl #0x427d50
00418348  9b 40 c0 e5                                      strb r4, [r0, #0x9b]
0041834c  17 0d 85 e2                                      add r0, r5, #0x5c0
00418350  08 00 80 e2                                      add r0, r0, #8
00418354  7d 3e 00 eb                                      bl #0x427d50
00418358  9b 40 c0 e5                                      strb r4, [r0, #0x9b]
0041835c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00418360, declared_size=1088, range_size=1088, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls10SaveHUDPosEv
; demangled: HUDControls::SaveHUDPos()
; decoder-mode: arm
00418360  2c 34 9f e5                                      ldr r3, [pc, #0x42c]
00418364  2c 24 9f e5                                      ldr r2, [pc, #0x42c]
00418368  2c 14 9f e5                                      ldr r1, [pc, #0x42c]
0041836c  03 30 8f e0                                      add r3, pc, r3
00418370  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00418374  00 40 a0 e1                                      mov r4, r0
00418378  01 10 8f e0                                      add r1, pc, r1
0041837c  02 00 93 e7                                      ldr r0, [r3, r2]
00418380  af 22 fc eb                                      bl #0x320e44
00418384  00 00 50 e3                                      cmp r0, #0
00418388  80 00 00 0a                                      beq #0x418590
0041838c  4c 50 84 e2                                      add r5, r4, #0x4c
00418390  05 00 a0 e1                                      mov r0, r5
00418394  6d 3e 00 eb                                      bl #0x427d50
00418398  f5 ee 0c eb                                      bl #0x753f74
0041839c  08 30 90 e5                                      ldr r3, [r0, #8]
004183a0  05 00 a0 e1                                      mov r0, r5
004183a4  88 50 84 e2                                      add r5, r4, #0x88
004183a8  7c 37 84 e5                                      str r3, [r4, #0x77c]
004183ac  67 3e 00 eb                                      bl #0x427d50
004183b0  ef ee 0c eb                                      bl #0x753f74
004183b4  14 30 90 e5                                      ldr r3, [r0, #0x14]
004183b8  05 00 a0 e1                                      mov r0, r5
004183bc  ee 7f 84 e2                                      add r7, r4, #0x3b8
004183c0  80 37 84 e5                                      str r3, [r4, #0x780]
004183c4  61 3e 00 eb                                      bl #0x427d50
004183c8  e9 ee 0c eb                                      bl #0x753f74
004183cc  08 30 90 e5                                      ldr r3, [r0, #8]
004183d0  05 00 a0 e1                                      mov r0, r5
004183d4  fa 6f 84 e2                                      add r6, r4, #0x3e8
004183d8  84 37 84 e5                                      str r3, [r4, #0x784]
004183dc  5b 3e 00 eb                                      bl #0x427d50
004183e0  e3 ee 0c eb                                      bl #0x753f74
004183e4  14 30 90 e5                                      ldr r3, [r0, #0x14]
004183e8  07 00 a0 e1                                      mov r0, r7
004183ec  41 5e 84 e2                                      add r5, r4, #0x410
004183f0  88 37 84 e5                                      str r3, [r4, #0x788]
004183f4  55 3e 00 eb                                      bl #0x427d50
004183f8  dd ee 0c eb                                      bl #0x753f74
004183fc  08 30 90 e5                                      ldr r3, [r0, #8]
00418400  07 00 a0 e1                                      mov r0, r7
00418404  08 50 85 e2                                      add r5, r5, #8
00418408  8c 37 84 e5                                      str r3, [r4, #0x78c]
0041840c  4f 3e 00 eb                                      bl #0x427d50
00418410  d7 ee 0c eb                                      bl #0x753f74
00418414  14 30 90 e5                                      ldr r3, [r0, #0x14]
00418418  06 00 a0 e1                                      mov r0, r6
0041841c  11 7d 84 e2                                      add r7, r4, #0x440
00418420  90 37 84 e5                                      str r3, [r4, #0x790]
00418424  49 3e 00 eb                                      bl #0x427d50
00418428  d1 ee 0c eb                                      bl #0x753f74
0041842c  08 30 90 e5                                      ldr r3, [r0, #8]
00418430  06 00 a0 e1                                      mov r0, r6
00418434  08 70 87 e2                                      add r7, r7, #8
00418438  94 37 84 e5                                      str r3, [r4, #0x794]
0041843c  43 3e 00 eb                                      bl #0x427d50
00418440  cb ee 0c eb                                      bl #0x753f74
00418444  14 30 90 e5                                      ldr r3, [r0, #0x14]
00418448  05 00 a0 e1                                      mov r0, r5
0041844c  47 6e 84 e2                                      add r6, r4, #0x470
00418450  98 37 84 e5                                      str r3, [r4, #0x798]
00418454  3d 3e 00 eb                                      bl #0x427d50
00418458  c5 ee 0c eb                                      bl #0x753f74
0041845c  08 30 90 e5                                      ldr r3, [r0, #8]
00418460  05 00 a0 e1                                      mov r0, r5
00418464  08 60 86 e2                                      add r6, r6, #8
00418468  9c 37 84 e5                                      str r3, [r4, #0x79c]
0041846c  37 3e 00 eb                                      bl #0x427d50
00418470  bf ee 0c eb                                      bl #0x753f74
00418474  14 30 90 e5                                      ldr r3, [r0, #0x14]
00418478  07 00 a0 e1                                      mov r0, r7
0041847c  4d 5e 84 e2                                      add r5, r4, #0x4d0
00418480  a0 37 84 e5                                      str r3, [r4, #0x7a0]
00418484  31 3e 00 eb                                      bl #0x427d50
00418488  b9 ee 0c eb                                      bl #0x753f74
0041848c  08 30 90 e5                                      ldr r3, [r0, #8]
00418490  07 00 a0 e1                                      mov r0, r7
00418494  08 50 85 e2                                      add r5, r5, #8
00418498  a4 37 84 e5                                      str r3, [r4, #0x7a4]
0041849c  2b 3e 00 eb                                      bl #0x427d50
004184a0  b3 ee 0c eb                                      bl #0x753f74
004184a4  14 30 90 e5                                      ldr r3, [r0, #0x14]
004184a8  06 00 a0 e1                                      mov r0, r6
004184ac  4a 7e 84 e2                                      add r7, r4, #0x4a0
004184b0  a8 37 84 e5                                      str r3, [r4, #0x7a8]
004184b4  25 3e 00 eb                                      bl #0x427d50
004184b8  ad ee 0c eb                                      bl #0x753f74
004184bc  08 30 90 e5                                      ldr r3, [r0, #8]
004184c0  06 00 a0 e1                                      mov r0, r6
004184c4  08 70 87 e2                                      add r7, r7, #8
004184c8  ac 37 84 e5                                      str r3, [r4, #0x7ac]
004184cc  1f 3e 00 eb                                      bl #0x427d50
004184d0  a7 ee 0c eb                                      bl #0x753f74
004184d4  14 30 90 e5                                      ldr r3, [r0, #0x14]
004184d8  05 00 a0 e1                                      mov r0, r5
004184dc  05 6c 84 e2                                      add r6, r4, #0x500
004184e0  b0 37 84 e5                                      str r3, [r4, #0x7b0]
004184e4  19 3e 00 eb                                      bl #0x427d50
004184e8  a1 ee 0c eb                                      bl #0x753f74
004184ec  08 30 90 e5                                      ldr r3, [r0, #8]
004184f0  05 00 a0 e1                                      mov r0, r5
004184f4  08 60 86 e2                                      add r6, r6, #8
004184f8  b4 37 84 e5                                      str r3, [r4, #0x7b4]
004184fc  13 3e 00 eb                                      bl #0x427d50
00418500  9b ee 0c eb                                      bl #0x753f74
00418504  14 30 90 e5                                      ldr r3, [r0, #0x14]
00418508  07 00 a0 e1                                      mov r0, r7
0041850c  56 5e 84 e2                                      add r5, r4, #0x560
00418510  b8 37 84 e5                                      str r3, [r4, #0x7b8]
00418514  0d 3e 00 eb                                      bl #0x427d50
00418518  95 ee 0c eb                                      bl #0x753f74
0041851c  08 30 90 e5                                      ldr r3, [r0, #8]
00418520  07 00 a0 e1                                      mov r0, r7
00418524  08 50 85 e2                                      add r5, r5, #8
00418528  bc 37 84 e5                                      str r3, [r4, #0x7bc]
0041852c  07 3e 00 eb                                      bl #0x427d50
00418530  8f ee 0c eb                                      bl #0x753f74
00418534  14 30 90 e5                                      ldr r3, [r0, #0x14]
00418538  06 00 a0 e1                                      mov r0, r6
0041853c  c0 37 84 e5                                      str r3, [r4, #0x7c0]
00418540  02 3e 00 eb                                      bl #0x427d50
00418544  8a ee 0c eb                                      bl #0x753f74
00418548  08 30 90 e5                                      ldr r3, [r0, #8]
0041854c  06 00 a0 e1                                      mov r0, r6
00418550  c4 37 84 e5                                      str r3, [r4, #0x7c4]
00418554  fd 3d 00 eb                                      bl #0x427d50
00418558  85 ee 0c eb                                      bl #0x753f74
0041855c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00418560  05 00 a0 e1                                      mov r0, r5
00418564  c8 37 84 e5                                      str r3, [r4, #0x7c8]
00418568  f8 3d 00 eb                                      bl #0x427d50
0041856c  80 ee 0c eb                                      bl #0x753f74
00418570  08 30 90 e5                                      ldr r3, [r0, #8]
00418574  05 00 a0 e1                                      mov r0, r5
00418578  cc 37 84 e5                                      str r3, [r4, #0x7cc]
0041857c  f3 3d 00 eb                                      bl #0x427d50
00418580  7b ee 0c eb                                      bl #0x753f74
00418584  14 30 90 e5                                      ldr r3, [r0, #0x14]
00418588  d0 37 84 e5                                      str r3, [r4, #0x7d0]
0041858c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00418590  4c 50 84 e2                                      add r5, r4, #0x4c
00418594  05 00 a0 e1                                      mov r0, r5
00418598  ec 3d 00 eb                                      bl #0x427d50
0041859c  74 ee 0c eb                                      bl #0x753f74
004185a0  08 30 90 e5                                      ldr r3, [r0, #8]
004185a4  05 00 a0 e1                                      mov r0, r5
004185a8  88 50 84 e2                                      add r5, r4, #0x88
004185ac  24 37 84 e5                                      str r3, [r4, #0x724]
004185b0  e6 3d 00 eb                                      bl #0x427d50
004185b4  6e ee 0c eb                                      bl #0x753f74
004185b8  14 30 90 e5                                      ldr r3, [r0, #0x14]
004185bc  05 00 a0 e1                                      mov r0, r5
004185c0  ee 7f 84 e2                                      add r7, r4, #0x3b8
004185c4  28 37 84 e5                                      str r3, [r4, #0x728]
004185c8  e0 3d 00 eb                                      bl #0x427d50
004185cc  68 ee 0c eb                                      bl #0x753f74
004185d0  08 30 90 e5                                      ldr r3, [r0, #8]
004185d4  05 00 a0 e1                                      mov r0, r5
004185d8  fa 6f 84 e2                                      add r6, r4, #0x3e8
004185dc  2c 37 84 e5                                      str r3, [r4, #0x72c]
004185e0  da 3d 00 eb                                      bl #0x427d50
004185e4  62 ee 0c eb                                      bl #0x753f74
004185e8  14 30 90 e5                                      ldr r3, [r0, #0x14]
004185ec  07 00 a0 e1                                      mov r0, r7
004185f0  41 5e 84 e2                                      add r5, r4, #0x410
004185f4  30 37 84 e5                                      str r3, [r4, #0x730]
004185f8  d4 3d 00 eb                                      bl #0x427d50
004185fc  5c ee 0c eb                                      bl #0x753f74
00418600  08 30 90 e5                                      ldr r3, [r0, #8]
00418604  07 00 a0 e1                                      mov r0, r7
00418608  08 50 85 e2                                      add r5, r5, #8
0041860c  34 37 84 e5                                      str r3, [r4, #0x734]
00418610  ce 3d 00 eb                                      bl #0x427d50
00418614  56 ee 0c eb                                      bl #0x753f74
00418618  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041861c  06 00 a0 e1                                      mov r0, r6
00418620  11 7d 84 e2                                      add r7, r4, #0x440
00418624  38 37 84 e5                                      str r3, [r4, #0x738]
00418628  c8 3d 00 eb                                      bl #0x427d50
0041862c  50 ee 0c eb                                      bl #0x753f74
00418630  08 30 90 e5                                      ldr r3, [r0, #8]
00418634  06 00 a0 e1                                      mov r0, r6
00418638  08 70 87 e2                                      add r7, r7, #8
0041863c  3c 37 84 e5                                      str r3, [r4, #0x73c]
00418640  c2 3d 00 eb                                      bl #0x427d50
00418644  4a ee 0c eb                                      bl #0x753f74
00418648  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041864c  05 00 a0 e1                                      mov r0, r5
00418650  47 6e 84 e2                                      add r6, r4, #0x470
00418654  40 37 84 e5                                      str r3, [r4, #0x740]
00418658  bc 3d 00 eb                                      bl #0x427d50
0041865c  44 ee 0c eb                                      bl #0x753f74
00418660  08 30 90 e5                                      ldr r3, [r0, #8]
00418664  05 00 a0 e1                                      mov r0, r5
00418668  08 60 86 e2                                      add r6, r6, #8
0041866c  44 37 84 e5                                      str r3, [r4, #0x744]
00418670  b6 3d 00 eb                                      bl #0x427d50
00418674  3e ee 0c eb                                      bl #0x753f74
00418678  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041867c  07 00 a0 e1                                      mov r0, r7
00418680  4d 5e 84 e2                                      add r5, r4, #0x4d0
00418684  48 37 84 e5                                      str r3, [r4, #0x748]
00418688  b0 3d 00 eb                                      bl #0x427d50
0041868c  38 ee 0c eb                                      bl #0x753f74
00418690  08 30 90 e5                                      ldr r3, [r0, #8]
00418694  07 00 a0 e1                                      mov r0, r7
00418698  08 50 85 e2                                      add r5, r5, #8
0041869c  4c 37 84 e5                                      str r3, [r4, #0x74c]
004186a0  aa 3d 00 eb                                      bl #0x427d50
004186a4  32 ee 0c eb                                      bl #0x753f74
004186a8  14 30 90 e5                                      ldr r3, [r0, #0x14]
004186ac  06 00 a0 e1                                      mov r0, r6
004186b0  4a 7e 84 e2                                      add r7, r4, #0x4a0
004186b4  50 37 84 e5                                      str r3, [r4, #0x750]
004186b8  a4 3d 00 eb                                      bl #0x427d50
004186bc  2c ee 0c eb                                      bl #0x753f74
004186c0  08 30 90 e5                                      ldr r3, [r0, #8]
004186c4  06 00 a0 e1                                      mov r0, r6
004186c8  08 70 87 e2                                      add r7, r7, #8
004186cc  54 37 84 e5                                      str r3, [r4, #0x754]
004186d0  9e 3d 00 eb                                      bl #0x427d50
004186d4  26 ee 0c eb                                      bl #0x753f74
004186d8  14 30 90 e5                                      ldr r3, [r0, #0x14]
004186dc  05 00 a0 e1                                      mov r0, r5
004186e0  05 6c 84 e2                                      add r6, r4, #0x500
004186e4  58 37 84 e5                                      str r3, [r4, #0x758]
004186e8  98 3d 00 eb                                      bl #0x427d50
004186ec  20 ee 0c eb                                      bl #0x753f74
004186f0  08 30 90 e5                                      ldr r3, [r0, #8]
004186f4  05 00 a0 e1                                      mov r0, r5
004186f8  08 60 86 e2                                      add r6, r6, #8
004186fc  5c 37 84 e5                                      str r3, [r4, #0x75c]
00418700  92 3d 00 eb                                      bl #0x427d50
00418704  1a ee 0c eb                                      bl #0x753f74
00418708  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041870c  07 00 a0 e1                                      mov r0, r7
00418710  56 5e 84 e2                                      add r5, r4, #0x560
00418714  60 37 84 e5                                      str r3, [r4, #0x760]
00418718  8c 3d 00 eb                                      bl #0x427d50
0041871c  14 ee 0c eb                                      bl #0x753f74
00418720  08 30 90 e5                                      ldr r3, [r0, #8]
00418724  07 00 a0 e1                                      mov r0, r7
00418728  08 50 85 e2                                      add r5, r5, #8
0041872c  64 37 84 e5                                      str r3, [r4, #0x764]
00418730  86 3d 00 eb                                      bl #0x427d50
00418734  0e ee 0c eb                                      bl #0x753f74
00418738  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041873c  06 00 a0 e1                                      mov r0, r6
00418740  68 37 84 e5                                      str r3, [r4, #0x768]
00418744  81 3d 00 eb                                      bl #0x427d50
00418748  09 ee 0c eb                                      bl #0x753f74
0041874c  08 30 90 e5                                      ldr r3, [r0, #8]
00418750  06 00 a0 e1                                      mov r0, r6
00418754  6c 37 84 e5                                      str r3, [r4, #0x76c]
00418758  7c 3d 00 eb                                      bl #0x427d50
0041875c  04 ee 0c eb                                      bl #0x753f74
00418760  14 30 90 e5                                      ldr r3, [r0, #0x14]
00418764  05 00 a0 e1                                      mov r0, r5
00418768  70 37 84 e5                                      str r3, [r4, #0x770]
0041876c  77 3d 00 eb                                      bl #0x427d50
00418770  ff ed 0c eb                                      bl #0x753f74
00418774  08 30 90 e5                                      ldr r3, [r0, #8]
00418778  05 00 a0 e1                                      mov r0, r5
0041877c  74 37 84 e5                                      str r3, [r4, #0x774]
00418780  72 3d 00 eb                                      bl #0x427d50
00418784  fa ed 0c eb                                      bl #0x753f74
00418788  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041878c  78 37 84 e5                                      str r3, [r4, #0x778]
00418790  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00418794  24 c7 57 00 f4 37 00 00 80 92 4a 00              .byte 0x24, 0xc7, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x80, 0x92, 0x4a, 0x00

; FUNCTION 0x004187a0, declared_size=988, range_size=988, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls9SetHUDPosEPA2_fb
; demangled: HUDControls::SetHUDPos(float (*) [2], bool)
; decoder-mode: arm
004187a0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004187a4  00 50 a0 e1                                      mov r5, r0
004187a8  4c 00 80 e2                                      add r0, r0, #0x4c
004187ac  01 40 a0 e1                                      mov r4, r1
004187b0  02 60 a0 e1                                      mov r6, r2
004187b4  65 3d 00 eb                                      bl #0x427d50
004187b8  41 14 a0 e3                                      mov r1, #0x41000000
004187bc  0a 16 81 e2                                      add r1, r1, #0xa00000
004187c0  00 80 a0 e1                                      mov r8, r0
004187c4  00 00 94 e5                                      ldr r0, [r4]
004187c8  31 d9 fb eb                                      bl #0x30ec94
004187cc  3e d7 fb eb                                      bl #0x30e4cc
004187d0  63 d8 fb eb                                      bl #0x30e964
004187d4  41 14 a0 e3                                      mov r1, #0x41000000
004187d8  0a 16 81 e2                                      add r1, r1, #0xa00000
004187dc  00 70 a0 e1                                      mov r7, r0
004187e0  04 00 94 e5                                      ldr r0, [r4, #4]
004187e4  2a d9 fb eb                                      bl #0x30ec94
004187e8  37 d7 fb eb                                      bl #0x30e4cc
004187ec  5c d8 fb eb                                      bl #0x30e964
004187f0  07 10 a0 e1                                      mov r1, r7
004187f4  00 20 a0 e1                                      mov r2, r0
004187f8  08 00 a0 e1                                      mov r0, r8
004187fc  12 f8 ff eb                                      bl #0x41684c
00418800  88 00 85 e2                                      add r0, r5, #0x88
00418804  51 3d 00 eb                                      bl #0x427d50
00418808  41 14 a0 e3                                      mov r1, #0x41000000
0041880c  0a 16 81 e2                                      add r1, r1, #0xa00000
00418810  00 80 a0 e1                                      mov r8, r0
00418814  08 00 94 e5                                      ldr r0, [r4, #8]
00418818  1d d9 fb eb                                      bl #0x30ec94
0041881c  2a d7 fb eb                                      bl #0x30e4cc
00418820  4f d8 fb eb                                      bl #0x30e964
00418824  08 a0 84 e2                                      add sl, r4, #8
00418828  41 14 a0 e3                                      mov r1, #0x41000000
0041882c  0a 16 81 e2                                      add r1, r1, #0xa00000
00418830  00 70 a0 e1                                      mov r7, r0
00418834  04 00 9a e5                                      ldr r0, [sl, #4]
00418838  15 d9 fb eb                                      bl #0x30ec94
0041883c  22 d7 fb eb                                      bl #0x30e4cc
00418840  47 d8 fb eb                                      bl #0x30e964
00418844  07 10 a0 e1                                      mov r1, r7
00418848  00 20 a0 e1                                      mov r2, r0
0041884c  08 00 a0 e1                                      mov r0, r8
00418850  fd f7 ff eb                                      bl #0x41684c
00418854  ee 0f 85 e2                                      add r0, r5, #0x3b8
00418858  3c 3d 00 eb                                      bl #0x427d50
0041885c  41 14 a0 e3                                      mov r1, #0x41000000
00418860  0a 16 81 e2                                      add r1, r1, #0xa00000
00418864  00 80 a0 e1                                      mov r8, r0
00418868  10 00 94 e5                                      ldr r0, [r4, #0x10]
0041886c  08 d9 fb eb                                      bl #0x30ec94
00418870  15 d7 fb eb                                      bl #0x30e4cc
00418874  3a d8 fb eb                                      bl #0x30e964
00418878  10 a0 84 e2                                      add sl, r4, #0x10
0041887c  41 14 a0 e3                                      mov r1, #0x41000000
00418880  0a 16 81 e2                                      add r1, r1, #0xa00000
00418884  00 70 a0 e1                                      mov r7, r0
00418888  04 00 9a e5                                      ldr r0, [sl, #4]
0041888c  00 d9 fb eb                                      bl #0x30ec94
00418890  0d d7 fb eb                                      bl #0x30e4cc
00418894  32 d8 fb eb                                      bl #0x30e964
00418898  07 10 a0 e1                                      mov r1, r7
0041889c  00 20 a0 e1                                      mov r2, r0
004188a0  08 00 a0 e1                                      mov r0, r8
004188a4  e8 f7 ff eb                                      bl #0x41684c
004188a8  fa 0f 85 e2                                      add r0, r5, #0x3e8
004188ac  27 3d 00 eb                                      bl #0x427d50
004188b0  41 14 a0 e3                                      mov r1, #0x41000000
004188b4  0a 16 81 e2                                      add r1, r1, #0xa00000
004188b8  00 80 a0 e1                                      mov r8, r0
004188bc  18 00 94 e5                                      ldr r0, [r4, #0x18]
004188c0  f3 d8 fb eb                                      bl #0x30ec94
004188c4  00 d7 fb eb                                      bl #0x30e4cc
004188c8  25 d8 fb eb                                      bl #0x30e964
004188cc  18 a0 84 e2                                      add sl, r4, #0x18
004188d0  41 14 a0 e3                                      mov r1, #0x41000000
004188d4  0a 16 81 e2                                      add r1, r1, #0xa00000
004188d8  00 70 a0 e1                                      mov r7, r0
004188dc  04 00 9a e5                                      ldr r0, [sl, #4]
004188e0  eb d8 fb eb                                      bl #0x30ec94
004188e4  f8 d6 fb eb                                      bl #0x30e4cc
004188e8  1d d8 fb eb                                      bl #0x30e964
004188ec  07 10 a0 e1                                      mov r1, r7
004188f0  00 20 a0 e1                                      mov r2, r0
004188f4  08 00 a0 e1                                      mov r0, r8
004188f8  d3 f7 ff eb                                      bl #0x41684c
004188fc  41 0e 85 e2                                      add r0, r5, #0x410
00418900  08 00 80 e2                                      add r0, r0, #8
00418904  11 3d 00 eb                                      bl #0x427d50
00418908  41 14 a0 e3                                      mov r1, #0x41000000
0041890c  0a 16 81 e2                                      add r1, r1, #0xa00000
00418910  00 80 a0 e1                                      mov r8, r0
00418914  20 00 94 e5                                      ldr r0, [r4, #0x20]
00418918  dd d8 fb eb                                      bl #0x30ec94
0041891c  ea d6 fb eb                                      bl #0x30e4cc
00418920  0f d8 fb eb                                      bl #0x30e964
00418924  20 a0 84 e2                                      add sl, r4, #0x20
00418928  41 14 a0 e3                                      mov r1, #0x41000000
0041892c  0a 16 81 e2                                      add r1, r1, #0xa00000
00418930  00 70 a0 e1                                      mov r7, r0
00418934  04 00 9a e5                                      ldr r0, [sl, #4]
00418938  d5 d8 fb eb                                      bl #0x30ec94
0041893c  e2 d6 fb eb                                      bl #0x30e4cc
00418940  07 d8 fb eb                                      bl #0x30e964
00418944  07 10 a0 e1                                      mov r1, r7
00418948  00 20 a0 e1                                      mov r2, r0
0041894c  08 00 a0 e1                                      mov r0, r8
00418950  bd f7 ff eb                                      bl #0x41684c
00418954  11 0d 85 e2                                      add r0, r5, #0x440
00418958  08 00 80 e2                                      add r0, r0, #8
0041895c  fb 3c 00 eb                                      bl #0x427d50
00418960  41 14 a0 e3                                      mov r1, #0x41000000
00418964  0a 16 81 e2                                      add r1, r1, #0xa00000
00418968  00 80 a0 e1                                      mov r8, r0
0041896c  28 00 94 e5                                      ldr r0, [r4, #0x28]
00418970  c7 d8 fb eb                                      bl #0x30ec94
00418974  d4 d6 fb eb                                      bl #0x30e4cc
00418978  f9 d7 fb eb                                      bl #0x30e964
0041897c  28 a0 84 e2                                      add sl, r4, #0x28
00418980  41 14 a0 e3                                      mov r1, #0x41000000
00418984  0a 16 81 e2                                      add r1, r1, #0xa00000
00418988  00 70 a0 e1                                      mov r7, r0
0041898c  04 00 9a e5                                      ldr r0, [sl, #4]
00418990  bf d8 fb eb                                      bl #0x30ec94
00418994  cc d6 fb eb                                      bl #0x30e4cc
00418998  f1 d7 fb eb                                      bl #0x30e964
0041899c  07 10 a0 e1                                      mov r1, r7
004189a0  00 20 a0 e1                                      mov r2, r0
004189a4  08 00 a0 e1                                      mov r0, r8
004189a8  a7 f7 ff eb                                      bl #0x41684c
004189ac  47 0e 85 e2                                      add r0, r5, #0x470
004189b0  08 00 80 e2                                      add r0, r0, #8
004189b4  e5 3c 00 eb                                      bl #0x427d50
004189b8  41 14 a0 e3                                      mov r1, #0x41000000
004189bc  0a 16 81 e2                                      add r1, r1, #0xa00000
004189c0  00 80 a0 e1                                      mov r8, r0
004189c4  30 00 94 e5                                      ldr r0, [r4, #0x30]
004189c8  b1 d8 fb eb                                      bl #0x30ec94
004189cc  be d6 fb eb                                      bl #0x30e4cc
004189d0  e3 d7 fb eb                                      bl #0x30e964
004189d4  30 a0 84 e2                                      add sl, r4, #0x30
004189d8  41 14 a0 e3                                      mov r1, #0x41000000
004189dc  0a 16 81 e2                                      add r1, r1, #0xa00000
004189e0  00 70 a0 e1                                      mov r7, r0
004189e4  04 00 9a e5                                      ldr r0, [sl, #4]
004189e8  a9 d8 fb eb                                      bl #0x30ec94
004189ec  b6 d6 fb eb                                      bl #0x30e4cc
004189f0  db d7 fb eb                                      bl #0x30e964
004189f4  07 10 a0 e1                                      mov r1, r7
004189f8  00 20 a0 e1                                      mov r2, r0
004189fc  08 00 a0 e1                                      mov r0, r8
00418a00  91 f7 ff eb                                      bl #0x41684c
00418a04  4d 0e 85 e2                                      add r0, r5, #0x4d0
00418a08  08 00 80 e2                                      add r0, r0, #8
00418a0c  cf 3c 00 eb                                      bl #0x427d50
00418a10  41 14 a0 e3                                      mov r1, #0x41000000
00418a14  0a 16 81 e2                                      add r1, r1, #0xa00000
00418a18  00 80 a0 e1                                      mov r8, r0
00418a1c  38 00 94 e5                                      ldr r0, [r4, #0x38]
00418a20  9b d8 fb eb                                      bl #0x30ec94
00418a24  a8 d6 fb eb                                      bl #0x30e4cc
00418a28  cd d7 fb eb                                      bl #0x30e964
00418a2c  38 a0 84 e2                                      add sl, r4, #0x38
00418a30  41 14 a0 e3                                      mov r1, #0x41000000
00418a34  0a 16 81 e2                                      add r1, r1, #0xa00000
00418a38  00 70 a0 e1                                      mov r7, r0
00418a3c  04 00 9a e5                                      ldr r0, [sl, #4]
00418a40  93 d8 fb eb                                      bl #0x30ec94
00418a44  a0 d6 fb eb                                      bl #0x30e4cc
00418a48  c5 d7 fb eb                                      bl #0x30e964
00418a4c  07 10 a0 e1                                      mov r1, r7
00418a50  00 20 a0 e1                                      mov r2, r0
00418a54  08 00 a0 e1                                      mov r0, r8
00418a58  7b f7 ff eb                                      bl #0x41684c
00418a5c  4a 0e 85 e2                                      add r0, r5, #0x4a0
00418a60  08 00 80 e2                                      add r0, r0, #8
00418a64  b9 3c 00 eb                                      bl #0x427d50
00418a68  41 14 a0 e3                                      mov r1, #0x41000000
00418a6c  0a 16 81 e2                                      add r1, r1, #0xa00000
00418a70  00 80 a0 e1                                      mov r8, r0
00418a74  40 00 94 e5                                      ldr r0, [r4, #0x40]
00418a78  85 d8 fb eb                                      bl #0x30ec94
00418a7c  92 d6 fb eb                                      bl #0x30e4cc
00418a80  b7 d7 fb eb                                      bl #0x30e964
00418a84  40 a0 84 e2                                      add sl, r4, #0x40
00418a88  41 14 a0 e3                                      mov r1, #0x41000000
00418a8c  0a 16 81 e2                                      add r1, r1, #0xa00000
00418a90  00 70 a0 e1                                      mov r7, r0
00418a94  04 00 9a e5                                      ldr r0, [sl, #4]
00418a98  7d d8 fb eb                                      bl #0x30ec94
00418a9c  8a d6 fb eb                                      bl #0x30e4cc
00418aa0  af d7 fb eb                                      bl #0x30e964
00418aa4  07 10 a0 e1                                      mov r1, r7
00418aa8  00 20 a0 e1                                      mov r2, r0
00418aac  08 00 a0 e1                                      mov r0, r8
00418ab0  65 f7 ff eb                                      bl #0x41684c
00418ab4  05 0c 85 e2                                      add r0, r5, #0x500
00418ab8  08 00 80 e2                                      add r0, r0, #8
00418abc  a3 3c 00 eb                                      bl #0x427d50
00418ac0  41 14 a0 e3                                      mov r1, #0x41000000
00418ac4  0a 16 81 e2                                      add r1, r1, #0xa00000
00418ac8  00 80 a0 e1                                      mov r8, r0
00418acc  48 00 94 e5                                      ldr r0, [r4, #0x48]
00418ad0  6f d8 fb eb                                      bl #0x30ec94
00418ad4  7c d6 fb eb                                      bl #0x30e4cc
00418ad8  a1 d7 fb eb                                      bl #0x30e964
00418adc  48 a0 84 e2                                      add sl, r4, #0x48
00418ae0  41 14 a0 e3                                      mov r1, #0x41000000
00418ae4  0a 16 81 e2                                      add r1, r1, #0xa00000
00418ae8  00 70 a0 e1                                      mov r7, r0
00418aec  04 00 9a e5                                      ldr r0, [sl, #4]
00418af0  67 d8 fb eb                                      bl #0x30ec94
00418af4  74 d6 fb eb                                      bl #0x30e4cc
00418af8  99 d7 fb eb                                      bl #0x30e964
00418afc  07 10 a0 e1                                      mov r1, r7
00418b00  00 20 a0 e1                                      mov r2, r0
00418b04  08 00 a0 e1                                      mov r0, r8
00418b08  4f f7 ff eb                                      bl #0x41684c
00418b0c  56 0e 85 e2                                      add r0, r5, #0x560
00418b10  08 00 80 e2                                      add r0, r0, #8
00418b14  8d 3c 00 eb                                      bl #0x427d50
00418b18  41 14 a0 e3                                      mov r1, #0x41000000
00418b1c  0a 16 81 e2                                      add r1, r1, #0xa00000
00418b20  00 80 a0 e1                                      mov r8, r0
00418b24  50 00 94 e5                                      ldr r0, [r4, #0x50]
00418b28  59 d8 fb eb                                      bl #0x30ec94
00418b2c  66 d6 fb eb                                      bl #0x30e4cc
00418b30  8b d7 fb eb                                      bl #0x30e964
00418b34  50 40 84 e2                                      add r4, r4, #0x50
00418b38  41 14 a0 e3                                      mov r1, #0x41000000
00418b3c  0a 16 81 e2                                      add r1, r1, #0xa00000
00418b40  00 70 a0 e1                                      mov r7, r0
00418b44  04 00 94 e5                                      ldr r0, [r4, #4]
00418b48  51 d8 fb eb                                      bl #0x30ec94
00418b4c  5e d6 fb eb                                      bl #0x30e4cc
00418b50  83 d7 fb eb                                      bl #0x30e964
00418b54  07 10 a0 e1                                      mov r1, r7
00418b58  00 20 a0 e1                                      mov r2, r0
00418b5c  08 00 a0 e1                                      mov r0, r8
00418b60  39 f7 ff eb                                      bl #0x41684c
00418b64  00 00 56 e3                                      cmp r6, #0
00418b68  00 00 00 1a                                      bne #0x418b70
00418b6c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00418b70  05 00 a0 e1                                      mov r0, r5
00418b74  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00418b78  f8 fd ff ea                                      b #0x418360

; FUNCTION 0x00418b7c, declared_size=112, range_size=112, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls10RefreshHUDEv
; demangled: HUDControls::RefreshHUD()
; decoder-mode: arm
00418b7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00418b80  6c 36 d0 e5                                      ldrb r3, [r0, #0x66c]
00418b84  58 40 9f e5                                      ldr r4, [pc, #0x58]
00418b88  00 50 a0 e1                                      mov r5, r0
00418b8c  00 00 53 e3                                      cmp r3, #0
00418b90  04 40 8f e0                                      add r4, pc, r4
00418b94  11 00 00 0a                                      beq #0x418be0
00418b98  00 60 a0 e3                                      mov r6, #0
00418b9c  59 0e 80 e2                                      add r0, r0, #0x590
00418ba0  6c 66 c5 e5                                      strb r6, [r5, #0x66c]
00418ba4  08 00 80 e2                                      add r0, r0, #8
00418ba8  68 3c 00 eb                                      bl #0x427d50
00418bac  00 30 a0 e1                                      mov r3, r0
00418bb0  17 0d 85 e2                                      add r0, r5, #0x5c0
00418bb4  9b 60 c3 e5                                      strb r6, [r3, #0x9b]
00418bb8  08 00 80 e2                                      add r0, r0, #8
00418bbc  63 3c 00 eb                                      bl #0x427d50
00418bc0  9b 60 c0 e5                                      strb r6, [r0, #0x9b]
00418bc4  05 00 a0 e1                                      mov r0, r5
00418bc8  e4 fd ff eb                                      bl #0x418360
00418bcc  14 30 9f e5                                      ldr r3, [pc, #0x14]
00418bd0  03 00 94 e7                                      ldr r0, [r4, r3]
00418bd4  6e 1a fc eb                                      bl #0x31f594
00418bd8  00 00 50 e3                                      cmp r0, #0
00418bdc  a8 61 c0 15                                      strbne r6, [r0, #0x1a8]
00418be0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00418be4  00 bf 57 00 f4 37 00 00                          .byte 0x00, 0xbf, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00418bec, declared_size=92, range_size=92, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls5TouchEv
; demangled: HUDControls::Touch()
; decoder-mode: arm
00418bec  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00418bf0  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00418bf4  10 40 2d e9                                      push {r4, lr}
00418bf8  03 30 8f e0                                      add r3, pc, r3
00418bfc  02 20 93 e7                                      ldr r2, [r3, r2]
00418c00  00 10 a0 e3                                      mov r1, #0
00418c04  18 10 80 e5                                      str r1, [r0, #0x18]
00418c08  08 10 c0 e5                                      strb r1, [r0, #8]
00418c0c  09 10 c0 e5                                      strb r1, [r0, #9]
00418c10  0a 10 c0 e5                                      strb r1, [r0, #0xa]
00418c14  14 10 80 e5                                      str r1, [r0, #0x14]
00418c18  40 00 92 e5                                      ldr r0, [r2, #0x40]
00418c1c  01 20 a0 e1                                      mov r2, r1
00418c20  14 56 fd eb                                      bl #0x36e478
00418c24  60 36 90 e5                                      ldr r3, [r0, #0x660]
00418c28  00 00 53 e3                                      cmp r3, #0
00418c2c  02 00 00 0a                                      beq #0x418c3c
00418c30  78 03 93 e5                                      ldr r0, [r3, #0x378]
00418c34  10 40 bd e8                                      pop {r4, lr}
00418c38  57 b2 ff ea                                      b #0x40559c
00418c3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00418c40  98 be 57 00 f4 37 00 00                          .byte 0x98, 0xbe, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00418d28, declared_size=3620, range_size=3620, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls7OnEventERN8RenderFX5EventE
; demangled: HUDControls::OnEvent(RenderFX::Event&)
; decoder-mode: arm
00418d28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00418d2c  dc 8d 9f e5                                      ldr r8, [pc, #0xddc]
00418d30  dc ad 9f e5                                      ldr sl, [pc, #0xddc]
00418d34  01 40 a0 e1                                      mov r4, r1
00418d38  08 80 8f e0                                      add r8, pc, r8
00418d3c  0a 30 98 e7                                      ldr r3, [r8, sl]
00418d40  00 10 a0 e3                                      mov r1, #0
00418d44  44 d0 4d e2                                      sub sp, sp, #0x44
00418d48  00 50 a0 e1                                      mov r5, r0
00418d4c  01 20 a0 e1                                      mov r2, r1
00418d50  40 00 93 e5                                      ldr r0, [r3, #0x40]
00418d54  c7 55 fd eb                                      bl #0x36e478
00418d58  60 76 90 e5                                      ldr r7, [r0, #0x660]
00418d5c  e5 75 00 eb                                      bl #0x4364f8
00418d60  6c 66 d5 e5                                      ldrb r6, [r5, #0x66c]
00418d64  00 90 a0 e1                                      mov sb, r0
00418d68  00 00 56 e3                                      cmp r6, #0
00418d6c  0a 00 00 0a                                      beq #0x418d9c
00418d70  08 30 94 e5                                      ldr r3, [r4, #8]
00418d74  04 00 53 e3                                      cmp r3, #4
00418d78  c9 00 00 0a                                      beq #0x4190a4
00418d7c  05 00 53 e3                                      cmp r3, #5
00418d80  88 00 00 0a                                      beq #0x418fa8
00418d84  06 00 53 e3                                      cmp r3, #6
00418d88  6c 00 00 0a                                      beq #0x418f40
00418d8c  01 30 a0 e3                                      mov r3, #1
00418d90  24 30 c4 e5                                      strb r3, [r4, #0x24]
00418d94  44 d0 8d e2                                      add sp, sp, #0x44
00418d98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00418d9c  1c a0 85 e2                                      add sl, r5, #0x1c
00418da0  0a 00 a0 e1                                      mov r0, sl
00418da4  00 80 94 e5                                      ldr r8, [r4]
00418da8  e8 3b 00 eb                                      bl #0x427d50
00418dac  00 00 58 e1                                      cmp r8, r0
00418db0  f5 00 00 0a                                      beq #0x41918c
00418db4  88 00 85 e2                                      add r0, r5, #0x88
00418db8  00 70 94 e5                                      ldr r7, [r4]
00418dbc  e3 3b 00 eb                                      bl #0x427d50
00418dc0  00 00 57 e1                                      cmp r7, r0
00418dc4  51 00 00 0a                                      beq #0x418f10
00418dc8  e8 00 85 e2                                      add r0, r5, #0xe8
00418dcc  00 60 94 e5                                      ldr r6, [r4]
00418dd0  de 3b 00 eb                                      bl #0x427d50
00418dd4  00 00 56 e1                                      cmp r6, r0
00418dd8  46 00 00 0a                                      beq #0x418ef8
00418ddc  46 0f 85 e2                                      add r0, r5, #0x118
00418de0  00 60 94 e5                                      ldr r6, [r4]
00418de4  d9 3b 00 eb                                      bl #0x427d50
00418de8  00 00 56 e1                                      cmp r6, r0
00418dec  41 00 00 0a                                      beq #0x418ef8
00418df0  52 0f 85 e2                                      add r0, r5, #0x148
00418df4  00 60 94 e5                                      ldr r6, [r4]
00418df8  d4 3b 00 eb                                      bl #0x427d50
00418dfc  00 00 56 e1                                      cmp r6, r0
00418e00  3c 00 00 0a                                      beq #0x418ef8
00418e04  5e 0f 85 e2                                      add r0, r5, #0x178
00418e08  00 60 94 e5                                      ldr r6, [r4]
00418e0c  cf 3b 00 eb                                      bl #0x427d50
00418e10  00 00 56 e1                                      cmp r6, r0
00418e14  37 00 00 0a                                      beq #0x418ef8
00418e18  6a 0f 85 e2                                      add r0, r5, #0x1a8
00418e1c  00 60 94 e5                                      ldr r6, [r4]
00418e20  ca 3b 00 eb                                      bl #0x427d50
00418e24  00 00 56 e1                                      cmp r6, r0
00418e28  32 00 00 0a                                      beq #0x418ef8
00418e2c  76 0f 85 e2                                      add r0, r5, #0x1d8
00418e30  00 60 94 e5                                      ldr r6, [r4]
00418e34  c5 3b 00 eb                                      bl #0x427d50
00418e38  00 00 56 e1                                      cmp r6, r0
00418e3c  2d 00 00 0a                                      beq #0x418ef8
00418e40  82 0f 85 e2                                      add r0, r5, #0x208
00418e44  00 60 94 e5                                      ldr r6, [r4]
00418e48  c0 3b 00 eb                                      bl #0x427d50
00418e4c  00 00 56 e1                                      cmp r6, r0
00418e50  28 00 00 0a                                      beq #0x418ef8
00418e54  8e 0f 85 e2                                      add r0, r5, #0x238
00418e58  00 60 94 e5                                      ldr r6, [r4]
00418e5c  bb 3b 00 eb                                      bl #0x427d50
00418e60  00 00 56 e1                                      cmp r6, r0
00418e64  23 00 00 0a                                      beq #0x418ef8
00418e68  9a 0f 85 e2                                      add r0, r5, #0x268
00418e6c  00 60 94 e5                                      ldr r6, [r4]
00418e70  b6 3b 00 eb                                      bl #0x427d50
00418e74  00 00 56 e1                                      cmp r6, r0
00418e78  1e 00 00 0a                                      beq #0x418ef8
00418e7c  a6 0f 85 e2                                      add r0, r5, #0x298
00418e80  00 60 94 e5                                      ldr r6, [r4]
00418e84  b1 3b 00 eb                                      bl #0x427d50
00418e88  00 00 56 e1                                      cmp r6, r0
00418e8c  19 00 00 0a                                      beq #0x418ef8
00418e90  b2 0f 85 e2                                      add r0, r5, #0x2c8
00418e94  00 60 94 e5                                      ldr r6, [r4]
00418e98  ac 3b 00 eb                                      bl #0x427d50
00418e9c  00 00 56 e1                                      cmp r6, r0
00418ea0  14 00 00 0a                                      beq #0x418ef8
00418ea4  be 0f 85 e2                                      add r0, r5, #0x2f8
00418ea8  00 60 94 e5                                      ldr r6, [r4]
00418eac  a7 3b 00 eb                                      bl #0x427d50
00418eb0  00 00 56 e1                                      cmp r6, r0
00418eb4  0f 00 00 0a                                      beq #0x418ef8
00418eb8  ca 0f 85 e2                                      add r0, r5, #0x328
00418ebc  00 60 94 e5                                      ldr r6, [r4]
00418ec0  a2 3b 00 eb                                      bl #0x427d50
00418ec4  00 00 56 e1                                      cmp r6, r0
00418ec8  0a 00 00 0a                                      beq #0x418ef8
00418ecc  d6 0f 85 e2                                      add r0, r5, #0x358
00418ed0  00 40 94 e5                                      ldr r4, [r4]
00418ed4  9d 3b 00 eb                                      bl #0x427d50
00418ed8  00 00 54 e1                                      cmp r4, r0
00418edc  05 00 00 0a                                      beq #0x418ef8
00418ee0  00 00 59 e3                                      cmp sb, #0
00418ee4  aa ff ff 0a                                      beq #0x418d94
00418ee8  09 00 a0 e1                                      mov r0, sb
00418eec  40 19 00 eb                                      bl #0x41f3f4
00418ef0  00 00 50 e3                                      cmp r0, #0
00418ef4  a6 ff ff 0a                                      beq #0x418d94
00418ef8  00 30 e0 e3                                      mvn r3, #0
00418efc  01 20 a0 e3                                      mov r2, #1
00418f00  80 30 85 e5                                      str r3, [r5, #0x80]
00418f04  84 20 c5 e5                                      strb r2, [r5, #0x84]
00418f08  7c 30 85 e5                                      str r3, [r5, #0x7c]
00418f0c  a0 ff ff ea                                      b #0x418d94
00418f10  08 30 94 e5                                      ldr r3, [r4, #8]
00418f14  04 00 53 e3                                      cmp r3, #4
00418f18  01 30 a0 03                                      moveq r3, #1
00418f1c  09 30 c5 05                                      strbeq r3, [r5, #9]
00418f20  99 ff ff 0a                                      beq #0x418d8c
00418f24  06 30 43 e2                                      sub r3, r3, #6
00418f28  01 00 53 e3                                      cmp r3, #1
00418f2c  00 30 e0 93                                      mvnls r3, #0
00418f30  80 30 85 95                                      strls r3, [r5, #0x80]
00418f34  09 60 c5 95                                      strbls r6, [r5, #9]
00418f38  7c 30 85 95                                      strls r3, [r5, #0x7c]
00418f3c  92 ff ff ea                                      b #0x418d8c
00418f40  17 6d 85 e2                                      add r6, r5, #0x5c0
00418f44  08 60 86 e2                                      add r6, r6, #8
00418f48  06 00 a0 e1                                      mov r0, r6
00418f4c  00 70 94 e5                                      ldr r7, [r4]
00418f50  7e 3b 00 eb                                      bl #0x427d50
00418f54  00 00 57 e1                                      cmp r7, r0
00418f58  95 01 00 0a                                      beq #0x4195b4
00418f5c  59 0e 85 e2                                      add r0, r5, #0x590
00418f60  08 00 80 e2                                      add r0, r0, #8
00418f64  00 60 94 e5                                      ldr r6, [r4]
00418f68  78 3b 00 eb                                      bl #0x427d50
00418f6c  00 00 56 e1                                      cmp r6, r0
00418f70  85 ff ff 1a                                      bne #0x418d8c
00418f74  9c 1b 9f e5                                      ldr r1, [pc, #0xb9c]
00418f78  0a 00 98 e7                                      ldr r0, [r8, sl]
00418f7c  01 10 8f e0                                      add r1, pc, r1
00418f80  af 1f fc eb                                      bl #0x320e44
00418f84  00 00 50 e3                                      cmp r0, #0
00418f88  67 1e 85 02                                      addeq r1, r5, #0x670
00418f8c  1b 1d 85 12                                      addne r1, r5, #0x6c0
00418f90  05 00 a0 e1                                      mov r0, r5
00418f94  04 10 81 02                                      addeq r1, r1, #4
00418f98  0c 10 81 12                                      addne r1, r1, #0xc
00418f9c  01 20 a0 e3                                      mov r2, #1
00418fa0  fe fd ff eb                                      bl #0x4187a0
00418fa4  78 ff ff ea                                      b #0x418d8c
00418fa8  1c 00 85 e2                                      add r0, r5, #0x1c
00418fac  00 60 94 e5                                      ldr r6, [r4]
00418fb0  66 3b 00 eb                                      bl #0x427d50
00418fb4  00 00 56 e1                                      cmp r6, r0
00418fb8  cd 01 00 0a                                      beq #0x4196f4
00418fbc  88 90 85 e2                                      add sb, r5, #0x88
00418fc0  09 00 a0 e1                                      mov r0, sb
00418fc4  00 60 94 e5                                      ldr r6, [r4]
00418fc8  60 3b 00 eb                                      bl #0x427d50
00418fcc  00 00 56 e1                                      cmp r6, r0
00418fd0  63 01 00 0a                                      beq #0x419564
00418fd4  fa 3f 85 e2                                      add r3, r5, #0x3e8
00418fd8  10 30 8d e5                                      str r3, [sp, #0x10]
00418fdc  03 00 a0 e1                                      mov r0, r3
00418fe0  00 60 94 e5                                      ldr r6, [r4]
00418fe4  59 3b 00 eb                                      bl #0x427d50
00418fe8  00 00 56 e1                                      cmp r6, r0
00418fec  86 00 00 0a                                      beq #0x41920c
00418ff0  41 6e 85 e2                                      add r6, r5, #0x410
00418ff4  08 60 86 e2                                      add r6, r6, #8
00418ff8  06 00 a0 e1                                      mov r0, r6
00418ffc  00 70 94 e5                                      ldr r7, [r4]
00419000  52 3b 00 eb                                      bl #0x427d50
00419004  00 00 57 e1                                      cmp r7, r0
00419008  11 7d 85 02                                      addeq r7, r5, #0x440
0041900c  08 70 87 02                                      addeq r7, r7, #8
00419010  81 00 00 0a                                      beq #0x41921c
00419014  11 7d 85 e2                                      add r7, r5, #0x440
00419018  08 70 87 e2                                      add r7, r7, #8
0041901c  07 00 a0 e1                                      mov r0, r7
00419020  00 b0 94 e5                                      ldr fp, [r4]
00419024  49 3b 00 eb                                      bl #0x427d50
00419028  00 00 5b e1                                      cmp fp, r0
0041902c  7a 00 00 0a                                      beq #0x41921c
00419030  ee 6f 85 e2                                      add r6, r5, #0x3b8
00419034  06 00 a0 e1                                      mov r0, r6
00419038  00 70 94 e5                                      ldr r7, [r4]
0041903c  43 3b 00 eb                                      bl #0x427d50
00419040  00 00 57 e1                                      cmp r7, r0
00419044  4d 02 00 0a                                      beq #0x419980
00419048  47 6e 85 e2                                      add r6, r5, #0x470
0041904c  08 60 86 e2                                      add r6, r6, #8
00419050  06 00 a0 e1                                      mov r0, r6
00419054  00 70 94 e5                                      ldr r7, [r4]
00419058  3c 3b 00 eb                                      bl #0x427d50
0041905c  00 00 57 e1                                      cmp r7, r0
00419060  6c 02 00 0a                                      beq #0x419a18
00419064  4a 6e 85 e2                                      add r6, r5, #0x4a0
00419068  08 60 86 e2                                      add r6, r6, #8
0041906c  06 00 a0 e1                                      mov r0, r6
00419070  00 70 94 e5                                      ldr r7, [r4]
00419074  35 3b 00 eb                                      bl #0x427d50
00419078  00 00 57 e1                                      cmp r7, r0
0041907c  99 02 00 0a                                      beq #0x419ae8
00419080  05 6c 85 e2                                      add r6, r5, #0x500
00419084  08 60 86 e2                                      add r6, r6, #8
00419088  06 00 a0 e1                                      mov r0, r6
0041908c  00 70 94 e5                                      ldr r7, [r4]
00419090  2e 3b 00 eb                                      bl #0x427d50
00419094  00 00 57 e1                                      cmp r7, r0
00419098  0b 01 00 0a                                      beq #0x4194cc
0041909c  08 30 94 e5                                      ldr r3, [r4, #8]
004190a0  37 ff ff ea                                      b #0x418d84
004190a4  1c 00 85 e2                                      add r0, r5, #0x1c
004190a8  00 60 94 e5                                      ldr r6, [r4]
004190ac  27 3b 00 eb                                      bl #0x427d50
004190b0  00 00 56 e1                                      cmp r6, r0
004190b4  4c 00 00 0a                                      beq #0x4191ec
004190b8  88 00 85 e2                                      add r0, r5, #0x88
004190bc  00 60 94 e5                                      ldr r6, [r4]
004190c0  22 3b 00 eb                                      bl #0x427d50
004190c4  00 00 56 e1                                      cmp r6, r0
004190c8  47 00 00 0a                                      beq #0x4191ec
004190cc  ee 0f 85 e2                                      add r0, r5, #0x3b8
004190d0  00 60 94 e5                                      ldr r6, [r4]
004190d4  1d 3b 00 eb                                      bl #0x427d50
004190d8  00 00 56 e1                                      cmp r6, r0
004190dc  42 00 00 0a                                      beq #0x4191ec
004190e0  fa 0f 85 e2                                      add r0, r5, #0x3e8
004190e4  00 60 94 e5                                      ldr r6, [r4]
004190e8  18 3b 00 eb                                      bl #0x427d50
004190ec  00 00 56 e1                                      cmp r6, r0
004190f0  3d 00 00 0a                                      beq #0x4191ec
004190f4  41 0e 85 e2                                      add r0, r5, #0x410
004190f8  08 00 80 e2                                      add r0, r0, #8
004190fc  00 60 94 e5                                      ldr r6, [r4]
00419100  12 3b 00 eb                                      bl #0x427d50
00419104  00 00 56 e1                                      cmp r6, r0
00419108  37 00 00 0a                                      beq #0x4191ec
0041910c  11 0d 85 e2                                      add r0, r5, #0x440
00419110  08 00 80 e2                                      add r0, r0, #8
00419114  00 60 94 e5                                      ldr r6, [r4]
00419118  0c 3b 00 eb                                      bl #0x427d50
0041911c  00 00 56 e1                                      cmp r6, r0
00419120  31 00 00 0a                                      beq #0x4191ec
00419124  47 0e 85 e2                                      add r0, r5, #0x470
00419128  08 00 80 e2                                      add r0, r0, #8
0041912c  00 60 94 e5                                      ldr r6, [r4]
00419130  06 3b 00 eb                                      bl #0x427d50
00419134  00 00 56 e1                                      cmp r6, r0
00419138  2b 00 00 0a                                      beq #0x4191ec
0041913c  4a 0e 85 e2                                      add r0, r5, #0x4a0
00419140  08 00 80 e2                                      add r0, r0, #8
00419144  00 60 94 e5                                      ldr r6, [r4]
00419148  00 3b 00 eb                                      bl #0x427d50
0041914c  00 00 56 e1                                      cmp r6, r0
00419150  25 00 00 0a                                      beq #0x4191ec
00419154  05 0c 85 e2                                      add r0, r5, #0x500
00419158  08 00 80 e2                                      add r0, r0, #8
0041915c  00 60 94 e5                                      ldr r6, [r4]
00419160  fa 3a 00 eb                                      bl #0x427d50
00419164  00 00 56 e1                                      cmp r6, r0
00419168  1f 00 00 0a                                      beq #0x4191ec
0041916c  53 0e 85 e2                                      add r0, r5, #0x530
00419170  08 00 80 e2                                      add r0, r0, #8
00419174  00 60 94 e5                                      ldr r6, [r4]
00419178  f4 3a 00 eb                                      bl #0x427d50
0041917c  00 00 56 e1                                      cmp r6, r0
00419180  19 00 00 0a                                      beq #0x4191ec
00419184  08 30 94 e5                                      ldr r3, [r4, #8]
00419188  fb fe ff ea                                      b #0x418d7c
0041918c  08 30 94 e5                                      ldr r3, [r4, #8]
00419190  04 00 53 e3                                      cmp r3, #4
00419194  f9 00 00 0a                                      beq #0x419580
00419198  05 00 53 e3                                      cmp r3, #5
0041919c  70 01 00 0a                                      beq #0x419764
004191a0  06 30 43 e2                                      sub r3, r3, #6
004191a4  01 00 53 e3                                      cmp r3, #1
004191a8  f7 fe ff 8a                                      bhi #0x418d8c
004191ac  14 60 85 e5                                      str r6, [r5, #0x14]
004191b0  18 60 85 e5                                      str r6, [r5, #0x18]
004191b4  0a 00 a0 e1                                      mov r0, sl
004191b8  58 86 95 e5                                      ldr r8, [r5, #0x658]
004191bc  e3 3a 00 eb                                      bl #0x427d50
004191c0  06 20 a0 e1                                      mov r2, r6
004191c4  00 10 a0 e1                                      mov r1, r0
004191c8  06 30 a0 e1                                      mov r3, r6
004191cc  08 00 a0 e1                                      mov r0, r8
004191d0  86 44 0e eb                                      bl #0x7aa3f0
004191d4  00 00 57 e3                                      cmp r7, #0
004191d8  0a 60 c5 e5                                      strb r6, [r5, #0xa]
004191dc  ea fe ff 0a                                      beq #0x418d8c
004191e0  78 03 97 e5                                      ldr r0, [r7, #0x378]
004191e4  ec b0 ff eb                                      bl #0x40559c
004191e8  e7 fe ff ea                                      b #0x418d8c
004191ec  28 39 9f e5                                      ldr r3, [pc, #0x928]
004191f0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004191f4  03 30 8f e0                                      add r3, pc, r3
004191f8  00 20 83 e5                                      str r2, [r3]
004191fc  10 20 94 e5                                      ldr r2, [r4, #0x10]
00419200  04 20 83 e5                                      str r2, [r3, #4]
00419204  08 30 94 e5                                      ldr r3, [r4, #8]
00419208  db fe ff ea                                      b #0x418d7c
0041920c  41 6e 85 e2                                      add r6, r5, #0x410
00419210  11 7d 85 e2                                      add r7, r5, #0x440
00419214  08 60 86 e2                                      add r6, r6, #8
00419218  08 70 87 e2                                      add r7, r7, #8
0041921c  09 00 a0 e1                                      mov r0, sb
00419220  ca 3a 00 eb                                      bl #0x427d50
00419224  52 eb 0c eb                                      bl #0x753f74
00419228  f0 b8 9f e5                                      ldr fp, [pc, #0x8f0]
0041922c  14 10 90 e5                                      ldr r1, [r0, #0x14]
00419230  10 00 94 e5                                      ldr r0, [r4, #0x10]
00419234  0b b0 8f e0                                      add fp, pc, fp
00419238  59 d6 fb eb                                      bl #0x30eba4
0041923c  04 10 9b e5                                      ldr r1, [fp, #4]
00419240  59 d4 fb eb                                      bl #0x30e3ac
00419244  41 14 a0 e3                                      mov r1, #0x41000000
00419248  0a 16 81 e2                                      add r1, r1, #0xa00000
0041924c  90 d6 fb eb                                      bl #0x30ec94
00419250  9d d4 fb eb                                      bl #0x30e4cc
00419254  18 00 8d e5                                      str r0, [sp, #0x18]
00419258  09 00 a0 e1                                      mov r0, sb
0041925c  bb 3a 00 eb                                      bl #0x427d50
00419260  43 eb 0c eb                                      bl #0x753f74
00419264  08 10 90 e5                                      ldr r1, [r0, #8]
00419268  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0041926c  4c d6 fb eb                                      bl #0x30eba4
00419270  00 10 9b e5                                      ldr r1, [fp]
00419274  4c d4 fb eb                                      bl #0x30e3ac
00419278  41 14 a0 e3                                      mov r1, #0x41000000
0041927c  0a 16 81 e2                                      add r1, r1, #0xa00000
00419280  83 d6 fb eb                                      bl #0x30ec94
00419284  90 d4 fb eb                                      bl #0x30e4cc
00419288  94 18 9f e5                                      ldr r1, [pc, #0x894]
0041928c  14 00 8d e5                                      str r0, [sp, #0x14]
00419290  0a 00 98 e7                                      ldr r0, [r8, sl]
00419294  01 10 8f e0                                      add r1, pc, r1
00419298  e9 1e fc eb                                      bl #0x320e44
0041929c  00 00 50 e3                                      cmp r0, #0
004192a0  e7 00 00 1a                                      bne #0x419644
004192a4  7c b6 95 e5                                      ldr fp, [r5, #0x67c]
004192a8  8c 16 95 e5                                      ldr r1, [r5, #0x68c]
004192ac  0b 00 a0 e1                                      mov r0, fp
004192b0  3d d4 fb eb                                      bl #0x30e3ac
004192b4  41 14 a0 e3                                      mov r1, #0x41000000
004192b8  0a 16 81 e2                                      add r1, r1, #0xa00000
004192bc  74 d6 fb eb                                      bl #0x30ec94
004192c0  81 d4 fb eb                                      bl #0x30e4cc
004192c4  2c 00 8d e5                                      str r0, [sp, #0x2c]
004192c8  90 16 95 e5                                      ldr r1, [r5, #0x690]
004192cc  80 06 95 e5                                      ldr r0, [r5, #0x680]
004192d0  35 d4 fb eb                                      bl #0x30e3ac
004192d4  41 14 a0 e3                                      mov r1, #0x41000000
004192d8  0a 16 81 e2                                      add r1, r1, #0xa00000
004192dc  6c d6 fb eb                                      bl #0x30ec94
004192e0  79 d4 fb eb                                      bl #0x30e4cc
004192e4  28 00 8d e5                                      str r0, [sp, #0x28]
004192e8  94 16 95 e5                                      ldr r1, [r5, #0x694]
004192ec  0b 00 a0 e1                                      mov r0, fp
004192f0  2d d4 fb eb                                      bl #0x30e3ac
004192f4  41 14 a0 e3                                      mov r1, #0x41000000
004192f8  0a 16 81 e2                                      add r1, r1, #0xa00000
004192fc  64 d6 fb eb                                      bl #0x30ec94
00419300  71 d4 fb eb                                      bl #0x30e4cc
00419304  24 00 8d e5                                      str r0, [sp, #0x24]
00419308  98 16 95 e5                                      ldr r1, [r5, #0x698]
0041930c  80 06 95 e5                                      ldr r0, [r5, #0x680]
00419310  25 d4 fb eb                                      bl #0x30e3ac
00419314  41 14 a0 e3                                      mov r1, #0x41000000
00419318  0a 16 81 e2                                      add r1, r1, #0xa00000
0041931c  5c d6 fb eb                                      bl #0x30ec94
00419320  69 d4 fb eb                                      bl #0x30e4cc
00419324  20 00 8d e5                                      str r0, [sp, #0x20]
00419328  9c 16 95 e5                                      ldr r1, [r5, #0x69c]
0041932c  0b 00 a0 e1                                      mov r0, fp
00419330  1d d4 fb eb                                      bl #0x30e3ac
00419334  41 14 a0 e3                                      mov r1, #0x41000000
00419338  0a 16 81 e2                                      add r1, r1, #0xa00000
0041933c  54 d6 fb eb                                      bl #0x30ec94
00419340  61 d4 fb eb                                      bl #0x30e4cc
00419344  1c 00 8d e5                                      str r0, [sp, #0x1c]
00419348  80 06 95 e5                                      ldr r0, [r5, #0x680]
0041934c  a0 16 95 e5                                      ldr r1, [r5, #0x6a0]
00419350  15 d4 fb eb                                      bl #0x30e3ac
00419354  41 14 a0 e3                                      mov r1, #0x41000000
00419358  0a 16 81 e2                                      add r1, r1, #0xa00000
0041935c  4c d6 fb eb                                      bl #0x30ec94
00419360  59 d4 fb eb                                      bl #0x30e4cc
00419364  0c 00 8d e5                                      str r0, [sp, #0xc]
00419368  09 00 a0 e1                                      mov r0, sb
0041936c  77 3a 00 eb                                      bl #0x427d50
00419370  00 30 a0 e1                                      mov r3, r0
00419374  09 00 a0 e1                                      mov r0, sb
00419378  04 30 8d e5                                      str r3, [sp, #4]
0041937c  73 3a 00 eb                                      bl #0x427d50
00419380  fb ea 0c eb                                      bl #0x753f74
00419384  9c b7 9f e5                                      ldr fp, [pc, #0x79c]
00419388  08 10 90 e5                                      ldr r1, [r0, #8]
0041938c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00419390  0b b0 8f e0                                      add fp, pc, fp
00419394  02 d6 fb eb                                      bl #0x30eba4
00419398  00 10 9b e5                                      ldr r1, [fp]
0041939c  02 d4 fb eb                                      bl #0x30e3ac
004193a0  41 14 a0 e3                                      mov r1, #0x41000000
004193a4  0a 16 81 e2                                      add r1, r1, #0xa00000
004193a8  39 d6 fb eb                                      bl #0x30ec94
004193ac  46 d4 fb eb                                      bl #0x30e4cc
004193b0  6b d5 fb eb                                      bl #0x30e964
004193b4  00 c0 a0 e1                                      mov ip, r0
004193b8  09 00 a0 e1                                      mov r0, sb
004193bc  08 c0 8d e5                                      str ip, [sp, #8]
004193c0  62 3a 00 eb                                      bl #0x427d50
004193c4  ea ea 0c eb                                      bl #0x753f74
004193c8  14 10 90 e5                                      ldr r1, [r0, #0x14]
004193cc  10 00 94 e5                                      ldr r0, [r4, #0x10]
004193d0  f3 d5 fb eb                                      bl #0x30eba4
004193d4  04 10 9b e5                                      ldr r1, [fp, #4]
004193d8  f3 d3 fb eb                                      bl #0x30e3ac
004193dc  41 14 a0 e3                                      mov r1, #0x41000000
004193e0  0a 16 81 e2                                      add r1, r1, #0xa00000
004193e4  2a d6 fb eb                                      bl #0x30ec94
004193e8  37 d4 fb eb                                      bl #0x30e4cc
004193ec  5c d5 fb eb                                      bl #0x30e964
004193f0  08 10 9d e9                                      ldmib sp, {r3, ip}
004193f4  00 20 a0 e1                                      mov r2, r0
004193f8  0c 10 a0 e1                                      mov r1, ip
004193fc  03 00 a0 e1                                      mov r0, r3
00419400  11 f5 ff eb                                      bl #0x41684c
00419404  10 00 9d e5                                      ldr r0, [sp, #0x10]
00419408  50 3a 00 eb                                      bl #0x427d50
0041940c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00419410  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00419414  00 90 a0 e1                                      mov sb, r0
00419418  02 00 63 e0                                      rsb r0, r3, r2
0041941c  50 d5 fb eb                                      bl #0x30e964
00419420  28 30 9d e5                                      ldr r3, [sp, #0x28]
00419424  18 20 9d e5                                      ldr r2, [sp, #0x18]
00419428  00 b0 a0 e1                                      mov fp, r0
0041942c  02 00 63 e0                                      rsb r0, r3, r2
00419430  4b d5 fb eb                                      bl #0x30e964
00419434  0b 10 a0 e1                                      mov r1, fp
00419438  00 20 a0 e1                                      mov r2, r0
0041943c  09 00 a0 e1                                      mov r0, sb
00419440  01 f5 ff eb                                      bl #0x41684c
00419444  06 00 a0 e1                                      mov r0, r6
00419448  40 3a 00 eb                                      bl #0x427d50
0041944c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00419450  24 30 9d e5                                      ldr r3, [sp, #0x24]
00419454  00 90 a0 e1                                      mov sb, r0
00419458  02 00 63 e0                                      rsb r0, r3, r2
0041945c  40 d5 fb eb                                      bl #0x30e964
00419460  20 30 9d e5                                      ldr r3, [sp, #0x20]
00419464  18 20 9d e5                                      ldr r2, [sp, #0x18]
00419468  00 60 a0 e1                                      mov r6, r0
0041946c  02 00 63 e0                                      rsb r0, r3, r2
00419470  3b d5 fb eb                                      bl #0x30e964
00419474  06 10 a0 e1                                      mov r1, r6
00419478  00 20 a0 e1                                      mov r2, r0
0041947c  09 00 a0 e1                                      mov r0, sb
00419480  f1 f4 ff eb                                      bl #0x41684c
00419484  07 00 a0 e1                                      mov r0, r7
00419488  30 3a 00 eb                                      bl #0x427d50
0041948c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00419490  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00419494  00 60 a0 e1                                      mov r6, r0
00419498  02 00 63 e0                                      rsb r0, r3, r2
0041949c  30 d5 fb eb                                      bl #0x30e964
004194a0  18 20 9d e5                                      ldr r2, [sp, #0x18]
004194a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004194a8  00 70 a0 e1                                      mov r7, r0
004194ac  02 00 63 e0                                      rsb r0, r3, r2
004194b0  2b d5 fb eb                                      bl #0x30e964
004194b4  07 10 a0 e1                                      mov r1, r7
004194b8  00 20 a0 e1                                      mov r2, r0
004194bc  06 00 a0 e1                                      mov r0, r6
004194c0  e1 f4 ff eb                                      bl #0x41684c
004194c4  08 30 94 e5                                      ldr r3, [r4, #8]
004194c8  2d fe ff ea                                      b #0x418d84
004194cc  06 00 a0 e1                                      mov r0, r6
004194d0  1e 3a 00 eb                                      bl #0x427d50
004194d4  00 b0 a0 e1                                      mov fp, r0
004194d8  06 00 a0 e1                                      mov r0, r6
004194dc  1b 3a 00 eb                                      bl #0x427d50
004194e0  a3 ea 0c eb                                      bl #0x753f74
004194e4  40 76 9f e5                                      ldr r7, [pc, #0x640]
004194e8  08 10 90 e5                                      ldr r1, [r0, #8]
004194ec  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004194f0  07 70 8f e0                                      add r7, pc, r7
004194f4  aa d5 fb eb                                      bl #0x30eba4
004194f8  00 10 97 e5                                      ldr r1, [r7]
004194fc  aa d3 fb eb                                      bl #0x30e3ac
00419500  41 14 a0 e3                                      mov r1, #0x41000000
00419504  0a 16 81 e2                                      add r1, r1, #0xa00000
00419508  e1 d5 fb eb                                      bl #0x30ec94
0041950c  ee d3 fb eb                                      bl #0x30e4cc
00419510  13 d5 fb eb                                      bl #0x30e964
00419514  00 90 a0 e1                                      mov sb, r0
00419518  06 00 a0 e1                                      mov r0, r6
0041951c  0b 3a 00 eb                                      bl #0x427d50
00419520  93 ea 0c eb                                      bl #0x753f74
00419524  14 10 90 e5                                      ldr r1, [r0, #0x14]
00419528  10 00 94 e5                                      ldr r0, [r4, #0x10]
0041952c  9c d5 fb eb                                      bl #0x30eba4
00419530  04 10 97 e5                                      ldr r1, [r7, #4]
00419534  9c d3 fb eb                                      bl #0x30e3ac
00419538  41 14 a0 e3                                      mov r1, #0x41000000
0041953c  0a 16 81 e2                                      add r1, r1, #0xa00000
00419540  d3 d5 fb eb                                      bl #0x30ec94
00419544  e0 d3 fb eb                                      bl #0x30e4cc
00419548  05 d5 fb eb                                      bl #0x30e964
0041954c  09 10 a0 e1                                      mov r1, sb
00419550  00 20 a0 e1                                      mov r2, r0
00419554  0b 00 a0 e1                                      mov r0, fp
00419558  bb f4 ff eb                                      bl #0x41684c
0041955c  08 30 94 e5                                      ldr r3, [r4, #8]
00419560  07 fe ff ea                                      b #0x418d84
00419564  41 6e 85 e2                                      add r6, r5, #0x410
00419568  11 7d 85 e2                                      add r7, r5, #0x440
0041956c  fa 2f 85 e2                                      add r2, r5, #0x3e8
00419570  08 60 86 e2                                      add r6, r6, #8
00419574  08 70 87 e2                                      add r7, r7, #8
00419578  10 20 8d e5                                      str r2, [sp, #0x10]
0041957c  26 ff ff ea                                      b #0x41921c
00419580  41 14 a0 e3                                      mov r1, #0x41000000
00419584  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00419588  0a 16 81 e2                                      add r1, r1, #0xa00000
0041958c  c0 d5 fb eb                                      bl #0x30ec94
00419590  cd d3 fb eb                                      bl #0x30e4cc
00419594  41 14 a0 e3                                      mov r1, #0x41000000
00419598  14 00 85 e5                                      str r0, [r5, #0x14]
0041959c  10 00 94 e5                                      ldr r0, [r4, #0x10]
004195a0  0a 16 81 e2                                      add r1, r1, #0xa00000
004195a4  ba d5 fb eb                                      bl #0x30ec94
004195a8  c7 d3 fb eb                                      bl #0x30e4cc
004195ac  18 00 85 e5                                      str r0, [r5, #0x18]
004195b0  f5 fd ff ea                                      b #0x418d8c
004195b4  00 70 a0 e3                                      mov r7, #0
004195b8  59 0e 85 e2                                      add r0, r5, #0x590
004195bc  6c 76 c5 e5                                      strb r7, [r5, #0x66c]
004195c0  08 00 80 e2                                      add r0, r0, #8
004195c4  e1 39 00 eb                                      bl #0x427d50
004195c8  9b 70 c0 e5                                      strb r7, [r0, #0x9b]
004195cc  06 00 a0 e1                                      mov r0, r6
004195d0  de 39 00 eb                                      bl #0x427d50
004195d4  9b 70 c0 e5                                      strb r7, [r0, #0x9b]
004195d8  05 00 a0 e1                                      mov r0, r5
004195dc  5f fb ff eb                                      bl #0x418360
004195e0  48 15 9f e5                                      ldr r1, [pc, #0x548]
004195e4  0a 00 98 e7                                      ldr r0, [r8, sl]
004195e8  01 10 8f e0                                      add r1, pc, r1
004195ec  14 1e fc eb                                      bl #0x320e44
004195f0  01 30 a0 e3                                      mov r3, #1
004195f4  07 00 50 e1                                      cmp r0, r7
004195f8  6f 36 c5 05                                      strbeq r3, [r5, #0x66f]
004195fc  70 36 c5 15                                      strbne r3, [r5, #0x670]
00419600  0a 00 98 e7                                      ldr r0, [r8, sl]
00419604  e2 17 fc eb                                      bl #0x31f594
00419608  00 00 50 e3                                      cmp r0, #0
0041960c  00 30 a0 13                                      movne r3, #0
00419610  a8 31 c0 15                                      strbne r3, [r0, #0x1a8]
00419614  1c 4d 00 eb                                      bl #0x42ca8c
00419618  14 15 9f e5                                      ldr r1, [pc, #0x514]
0041961c  01 10 8f e0                                      add r1, pc, r1
00419620  f2 4e 00 eb                                      bl #0x42d1f0
00419624  0c 15 9f e5                                      ldr r1, [pc, #0x50c]
00419628  0a 30 98 e7                                      ldr r3, [r8, sl]
0041962c  00 20 a0 e3                                      mov r2, #0
00419630  01 10 98 e7                                      ldr r1, [r8, r1]
00419634  0c 00 81 e5                                      str r0, [r1, #0xc]
00419638  18 00 93 e5                                      ldr r0, [r3, #0x18]
0041963c  40 83 fc eb                                      bl #0x33a344
00419640  d1 fd ff ea                                      b #0x418d8c
00419644  d4 b6 95 e5                                      ldr fp, [r5, #0x6d4]
00419648  e4 16 95 e5                                      ldr r1, [r5, #0x6e4]
0041964c  0b 00 a0 e1                                      mov r0, fp
00419650  55 d3 fb eb                                      bl #0x30e3ac
00419654  41 14 a0 e3                                      mov r1, #0x41000000
00419658  0a 16 81 e2                                      add r1, r1, #0xa00000
0041965c  8c d5 fb eb                                      bl #0x30ec94
00419660  99 d3 fb eb                                      bl #0x30e4cc
00419664  2c 00 8d e5                                      str r0, [sp, #0x2c]
00419668  e8 16 95 e5                                      ldr r1, [r5, #0x6e8]
0041966c  d8 06 95 e5                                      ldr r0, [r5, #0x6d8]
00419670  4d d3 fb eb                                      bl #0x30e3ac
00419674  41 14 a0 e3                                      mov r1, #0x41000000
00419678  0a 16 81 e2                                      add r1, r1, #0xa00000
0041967c  84 d5 fb eb                                      bl #0x30ec94
00419680  91 d3 fb eb                                      bl #0x30e4cc
00419684  28 00 8d e5                                      str r0, [sp, #0x28]
00419688  ec 16 95 e5                                      ldr r1, [r5, #0x6ec]
0041968c  0b 00 a0 e1                                      mov r0, fp
00419690  45 d3 fb eb                                      bl #0x30e3ac
00419694  41 14 a0 e3                                      mov r1, #0x41000000
00419698  0a 16 81 e2                                      add r1, r1, #0xa00000
0041969c  7c d5 fb eb                                      bl #0x30ec94
004196a0  89 d3 fb eb                                      bl #0x30e4cc
004196a4  24 00 8d e5                                      str r0, [sp, #0x24]
004196a8  f0 16 95 e5                                      ldr r1, [r5, #0x6f0]
004196ac  d8 06 95 e5                                      ldr r0, [r5, #0x6d8]
004196b0  3d d3 fb eb                                      bl #0x30e3ac
004196b4  41 14 a0 e3                                      mov r1, #0x41000000
004196b8  0a 16 81 e2                                      add r1, r1, #0xa00000
004196bc  74 d5 fb eb                                      bl #0x30ec94
004196c0  81 d3 fb eb                                      bl #0x30e4cc
004196c4  20 00 8d e5                                      str r0, [sp, #0x20]
004196c8  f4 16 95 e5                                      ldr r1, [r5, #0x6f4]
004196cc  0b 00 a0 e1                                      mov r0, fp
004196d0  35 d3 fb eb                                      bl #0x30e3ac
004196d4  41 14 a0 e3                                      mov r1, #0x41000000
004196d8  0a 16 81 e2                                      add r1, r1, #0xa00000
004196dc  6c d5 fb eb                                      bl #0x30ec94
004196e0  79 d3 fb eb                                      bl #0x30e4cc
004196e4  1c 00 8d e5                                      str r0, [sp, #0x1c]
004196e8  d8 06 95 e5                                      ldr r0, [r5, #0x6d8]
004196ec  f8 16 95 e5                                      ldr r1, [r5, #0x6f8]
004196f0  16 ff ff ea                                      b #0x419350
004196f4  4c 70 85 e2                                      add r7, r5, #0x4c
004196f8  07 00 a0 e1                                      mov r0, r7
004196fc  93 39 00 eb                                      bl #0x427d50
00419700  00 b0 a0 e1                                      mov fp, r0
00419704  07 00 a0 e1                                      mov r0, r7
00419708  90 39 00 eb                                      bl #0x427d50
0041970c  18 ea 0c eb                                      bl #0x753f74
00419710  24 64 9f e5                                      ldr r6, [pc, #0x424]
00419714  08 10 90 e5                                      ldr r1, [r0, #8]
00419718  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0041971c  06 60 8f e0                                      add r6, pc, r6
00419720  1f d5 fb eb                                      bl #0x30eba4
00419724  00 10 96 e5                                      ldr r1, [r6]
00419728  1f d3 fb eb                                      bl #0x30e3ac
0041972c  41 14 a0 e3                                      mov r1, #0x41000000
00419730  0a 16 81 e2                                      add r1, r1, #0xa00000
00419734  56 d5 fb eb                                      bl #0x30ec94
00419738  63 d3 fb eb                                      bl #0x30e4cc
0041973c  88 d4 fb eb                                      bl #0x30e964
00419740  00 90 a0 e1                                      mov sb, r0
00419744  07 00 a0 e1                                      mov r0, r7
00419748  80 39 00 eb                                      bl #0x427d50
0041974c  08 ea 0c eb                                      bl #0x753f74
00419750  14 10 90 e5                                      ldr r1, [r0, #0x14]
00419754  10 00 94 e5                                      ldr r0, [r4, #0x10]
00419758  11 d5 fb eb                                      bl #0x30eba4
0041975c  04 10 96 e5                                      ldr r1, [r6, #4]
00419760  73 ff ff ea                                      b #0x419534
00419764  00 30 94 e5                                      ldr r3, [r4]
00419768  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0041976c  4c 60 93 e5                                      ldr r6, [r3, #0x4c]
00419770  08 10 96 e5                                      ldr r1, [r6, #8]
00419774  0a d5 fb eb                                      bl #0x30eba4
00419778  41 14 a0 e3                                      mov r1, #0x41000000
0041977c  0a 16 81 e2                                      add r1, r1, #0xa00000
00419780  43 d5 fb eb                                      bl #0x30ec94
00419784  00 80 a0 e1                                      mov r8, r0
00419788  14 00 95 e5                                      ldr r0, [r5, #0x14]
0041978c  74 d4 fb eb                                      bl #0x30e964
00419790  00 10 a0 e1                                      mov r1, r0
00419794  08 00 a0 e1                                      mov r0, r8
00419798  03 d3 fb eb                                      bl #0x30e3ac
0041979c  4a d3 fb eb                                      bl #0x30e4cc
004197a0  14 10 96 e5                                      ldr r1, [r6, #0x14]
004197a4  00 80 a0 e1                                      mov r8, r0
004197a8  10 00 94 e5                                      ldr r0, [r4, #0x10]
004197ac  fc d4 fb eb                                      bl #0x30eba4
004197b0  41 14 a0 e3                                      mov r1, #0x41000000
004197b4  0a 16 81 e2                                      add r1, r1, #0xa00000
004197b8  35 d5 fb eb                                      bl #0x30ec94
004197bc  00 60 a0 e1                                      mov r6, r0
004197c0  18 00 95 e5                                      ldr r0, [r5, #0x18]
004197c4  66 d4 fb eb                                      bl #0x30e964
004197c8  00 10 a0 e1                                      mov r1, r0
004197cc  06 00 a0 e1                                      mov r0, r6
004197d0  f5 d2 fb eb                                      bl #0x30e3ac
004197d4  3c d3 fb eb                                      bl #0x30e4cc
004197d8  00 b0 a0 e1                                      mov fp, r0
004197dc  60 d4 fb eb                                      bl #0x30e964
004197e0  00 60 a0 e1                                      mov r6, r0
004197e4  08 00 a0 e1                                      mov r0, r8
004197e8  5d d4 fb eb                                      bl #0x30e964
004197ec  00 10 a0 e1                                      mov r1, r0
004197f0  06 00 a0 e1                                      mov r0, r6
004197f4  6f d1 fb eb                                      bl #0x30ddb8
004197f8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004197fc  00 60 a0 e1                                      mov r6, r0
00419800  00 90 63 e2                                      rsb sb, r3, #0
00419804  09 00 58 e1                                      cmp r8, sb
00419808  02 00 00 ba                                      blt #0x419818
0041980c  03 00 58 e1                                      cmp r8, r3
00419810  08 90 a0 b1                                      movlt sb, r8
00419814  03 90 a0 a1                                      movge sb, r3
00419818  10 30 95 e5                                      ldr r3, [r5, #0x10]
0041981c  00 80 63 e2                                      rsb r8, r3, #0
00419820  08 00 5b e1                                      cmp fp, r8
00419824  02 00 00 ba                                      blt #0x419834
00419828  03 00 5b e1                                      cmp fp, r3
0041982c  0b 80 a0 b1                                      movlt r8, fp
00419830  03 80 a0 a1                                      movge r8, r3
00419834  09 00 a0 e1                                      mov r0, sb
00419838  49 d4 fb eb                                      bl #0x30e964
0041983c  00 10 a0 e1                                      mov r1, r0
00419840  49 d5 fb eb                                      bl #0x30ed6c
00419844  00 b0 a0 e1                                      mov fp, r0
00419848  98 08 00 e0                                      mul r0, r8, r8
0041984c  44 d4 fb eb                                      bl #0x30e964
00419850  00 10 a0 e1                                      mov r1, r0
00419854  0b 00 a0 e1                                      mov r0, fp
00419858  d1 d4 fb eb                                      bl #0x30eba4
0041985c  30 d2 fb eb                                      bl #0x30e124
00419860  00 30 a0 e1                                      mov r3, r0
00419864  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00419868  04 30 8d e5                                      str r3, [sp, #4]
0041986c  3c d4 fb eb                                      bl #0x30e964
00419870  04 30 9d e5                                      ldr r3, [sp, #4]
00419874  00 b0 a0 e1                                      mov fp, r0
00419878  0b 10 a0 e1                                      mov r1, fp
0041987c  03 00 a0 e1                                      mov r0, r3
00419880  03 d5 fb eb                                      bl #0x30ec94
00419884  fe 15 a0 e3                                      mov r1, #0x3f800000
00419888  68 06 85 e5                                      str r0, [r5, #0x668]
0041988c  99 d2 fb eb                                      bl #0x30e2f8
00419890  00 00 50 e3                                      cmp r0, #0
00419894  0f 00 00 0a                                      beq #0x4198d8
00419898  06 00 a0 e1                                      mov r0, r6
0041989c  99 d4 fb eb                                      bl #0x30eb08
004198a0  00 80 a0 e1                                      mov r8, r0
004198a4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004198a8  2d d4 fb eb                                      bl #0x30e964
004198ac  08 10 a0 e1                                      mov r1, r8
004198b0  2d d5 fb eb                                      bl #0x30ed6c
004198b4  04 d3 fb eb                                      bl #0x30e4cc
004198b8  00 80 a0 e1                                      mov r8, r0
004198bc  06 00 a0 e1                                      mov r0, r6
004198c0  a3 d3 fb eb                                      bl #0x30e754
004198c4  00 10 a0 e1                                      mov r1, r0
004198c8  0b 00 a0 e1                                      mov r0, fp
004198cc  26 d5 fb eb                                      bl #0x30ed6c
004198d0  fd d2 fb eb                                      bl #0x30e4cc
004198d4  00 90 a0 e1                                      mov sb, r0
004198d8  0a 00 a0 e1                                      mov r0, sl
004198dc  58 a6 95 e5                                      ldr sl, [r5, #0x658]
004198e0  1a 39 00 eb                                      bl #0x427d50
004198e4  09 20 a0 e1                                      mov r2, sb
004198e8  00 10 a0 e1                                      mov r1, r0
004198ec  08 30 a0 e1                                      mov r3, r8
004198f0  0a 00 a0 e1                                      mov r0, sl
004198f4  bd 42 0e eb                                      bl #0x7aa3f0
004198f8  00 00 57 e3                                      cmp r7, #0
004198fc  22 fd ff 0a                                      beq #0x418d8c
00419900  07 00 a0 e1                                      mov r0, r7
00419904  c9 4e fe eb                                      bl #0x3ad430
00419908  00 00 50 e3                                      cmp r0, #0
0041990c  1e fd ff 0a                                      beq #0x418d8c
00419910  fe 35 a0 e3                                      mov r3, #0x3f800000
00419914  5c 36 85 e5                                      str r3, [r5, #0x65c]
00419918  65 8e 85 e2                                      add r8, r5, #0x650
0041991c  bf 34 a0 e3                                      mov r3, #0xbf000000
00419920  02 35 83 e2                                      add r3, r3, #0x800000
00419924  00 70 a0 e3                                      mov r7, #0
00419928  0c 80 88 e2                                      add r8, r8, #0xc
0041992c  60 36 85 e5                                      str r3, [r5, #0x660]
00419930  64 76 85 e5                                      str r7, [r5, #0x664]
00419934  08 00 a0 e1                                      mov r0, r8
00419938  dc cd fc eb                                      bl #0x34d0b0
0041993c  e0 1e 02 e3                                      movw r1, #0x2ee0
00419940  65 12 4c e3                                      movt r1, #0xc265
00419944  06 00 a0 e1                                      mov r0, r6
00419948  07 d5 fb eb                                      bl #0x30ed6c
0041994c  42 14 a0 e3                                      mov r1, #0x42000000
00419950  2d 17 81 e2                                      add r1, r1, #0xb40000
00419954  92 d4 fb eb                                      bl #0x30eba4
00419958  34 20 8d e2                                      add r2, sp, #0x34
0041995c  00 10 a0 e1                                      mov r1, r0
00419960  08 00 a0 e1                                      mov r0, r8
00419964  3c 70 8d e5                                      str r7, [sp, #0x3c]
00419968  34 70 8d e5                                      str r7, [sp, #0x34]
0041996c  38 70 8d e5                                      str r7, [sp, #0x38]
00419970  b4 fc ff eb                                      bl #0x418c48
00419974  01 30 a0 e3                                      mov r3, #1
00419978  0a 30 c5 e5                                      strb r3, [r5, #0xa]
0041997c  02 fd ff ea                                      b #0x418d8c
00419980  06 00 a0 e1                                      mov r0, r6
00419984  f1 38 00 eb                                      bl #0x427d50
00419988  00 b0 a0 e1                                      mov fp, r0
0041998c  06 00 a0 e1                                      mov r0, r6
00419990  ee 38 00 eb                                      bl #0x427d50
00419994  76 e9 0c eb                                      bl #0x753f74
00419998  a0 71 9f e5                                      ldr r7, [pc, #0x1a0]
0041999c  08 10 90 e5                                      ldr r1, [r0, #8]
004199a0  07 70 8f e0                                      add r7, pc, r7
004199a4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004199a8  7d d4 fb eb                                      bl #0x30eba4
004199ac  00 10 97 e5                                      ldr r1, [r7]
004199b0  7d d2 fb eb                                      bl #0x30e3ac
004199b4  41 14 a0 e3                                      mov r1, #0x41000000
004199b8  0a 16 81 e2                                      add r1, r1, #0xa00000
004199bc  b4 d4 fb eb                                      bl #0x30ec94
004199c0  c1 d2 fb eb                                      bl #0x30e4cc
004199c4  e6 d3 fb eb                                      bl #0x30e964
004199c8  00 90 a0 e1                                      mov sb, r0
004199cc  06 00 a0 e1                                      mov r0, r6
004199d0  de 38 00 eb                                      bl #0x427d50
004199d4  66 e9 0c eb                                      bl #0x753f74
004199d8  14 10 90 e5                                      ldr r1, [r0, #0x14]
004199dc  10 00 94 e5                                      ldr r0, [r4, #0x10]
004199e0  6f d4 fb eb                                      bl #0x30eba4
004199e4  04 10 97 e5                                      ldr r1, [r7, #4]
004199e8  6f d2 fb eb                                      bl #0x30e3ac
004199ec  41 14 a0 e3                                      mov r1, #0x41000000
004199f0  0a 16 81 e2                                      add r1, r1, #0xa00000
004199f4  a6 d4 fb eb                                      bl #0x30ec94
004199f8  b3 d2 fb eb                                      bl #0x30e4cc
004199fc  d8 d3 fb eb                                      bl #0x30e964
00419a00  09 10 a0 e1                                      mov r1, sb
00419a04  00 20 a0 e1                                      mov r2, r0
00419a08  0b 00 a0 e1                                      mov r0, fp
00419a0c  8e f3 ff eb                                      bl #0x41684c
00419a10  08 30 94 e5                                      ldr r3, [r4, #8]
00419a14  da fc ff ea                                      b #0x418d84
00419a18  06 00 a0 e1                                      mov r0, r6
00419a1c  cb 38 00 eb                                      bl #0x427d50
00419a20  53 e9 0c eb                                      bl #0x753f74
00419a24  18 71 9f e5                                      ldr r7, [pc, #0x118]
00419a28  14 10 90 e5                                      ldr r1, [r0, #0x14]
00419a2c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00419a30  07 70 8f e0                                      add r7, pc, r7
00419a34  5a d4 fb eb                                      bl #0x30eba4
00419a38  04 10 97 e5                                      ldr r1, [r7, #4]
00419a3c  5a d2 fb eb                                      bl #0x30e3ac
00419a40  41 14 a0 e3                                      mov r1, #0x41000000
00419a44  0a 16 81 e2                                      add r1, r1, #0xa00000
00419a48  91 d4 fb eb                                      bl #0x30ec94
00419a4c  9e d2 fb eb                                      bl #0x30e4cc
00419a50  00 90 a0 e1                                      mov sb, r0
00419a54  06 00 a0 e1                                      mov r0, r6
00419a58  bc 38 00 eb                                      bl #0x427d50
00419a5c  44 e9 0c eb                                      bl #0x753f74
00419a60  08 10 90 e5                                      ldr r1, [r0, #8]
00419a64  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00419a68  4d d4 fb eb                                      bl #0x30eba4
00419a6c  00 10 97 e5                                      ldr r1, [r7]
00419a70  4d d2 fb eb                                      bl #0x30e3ac
00419a74  41 14 a0 e3                                      mov r1, #0x41000000
00419a78  0a 16 81 e2                                      add r1, r1, #0xa00000
00419a7c  84 d4 fb eb                                      bl #0x30ec94
00419a80  91 d2 fb eb                                      bl #0x30e4cc
00419a84  00 70 a0 e1                                      mov r7, r0
00419a88  4d 0e 85 e2                                      add r0, r5, #0x4d0
00419a8c  08 00 80 e2                                      add r0, r0, #8
00419a90  ae 38 00 eb                                      bl #0x427d50
00419a94  00 b0 a0 e1                                      mov fp, r0
00419a98  09 00 a0 e1                                      mov r0, sb
00419a9c  b0 d3 fb eb                                      bl #0x30e964
00419aa0  00 90 a0 e1                                      mov sb, r0
00419aa4  2b 00 47 e2                                      sub r0, r7, #0x2b
00419aa8  ad d3 fb eb                                      bl #0x30e964
00419aac  09 20 a0 e1                                      mov r2, sb
00419ab0  00 10 a0 e1                                      mov r1, r0
00419ab4  0b 00 a0 e1                                      mov r0, fp
00419ab8  63 f3 ff eb                                      bl #0x41684c
00419abc  06 00 a0 e1                                      mov r0, r6
00419ac0  a2 38 00 eb                                      bl #0x427d50
00419ac4  00 60 a0 e1                                      mov r6, r0
00419ac8  07 00 a0 e1                                      mov r0, r7
00419acc  a4 d3 fb eb                                      bl #0x30e964
00419ad0  09 20 a0 e1                                      mov r2, sb
00419ad4  00 10 a0 e1                                      mov r1, r0
00419ad8  06 00 a0 e1                                      mov r0, r6
00419adc  5a f3 ff eb                                      bl #0x41684c
00419ae0  08 30 94 e5                                      ldr r3, [r4, #8]
00419ae4  a6 fc ff ea                                      b #0x418d84
00419ae8  06 00 a0 e1                                      mov r0, r6
00419aec  97 38 00 eb                                      bl #0x427d50
00419af0  00 b0 a0 e1                                      mov fp, r0
00419af4  06 00 a0 e1                                      mov r0, r6
00419af8  94 38 00 eb                                      bl #0x427d50
00419afc  1c e9 0c eb                                      bl #0x753f74
00419b00  40 70 9f e5                                      ldr r7, [pc, #0x40]
00419b04  08 10 90 e5                                      ldr r1, [r0, #8]
00419b08  07 70 8f e0                                      add r7, pc, r7
00419b0c  a4 ff ff ea                                      b #0x4199a4
; mapping-symbol data/literal pool
00419b10  58 bd 57 00 f4 37 00 00 7c 86 4a 00 a0 a4 58 00  .byte 0x58, 0xbd, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x7c, 0x86, 0x4a, 0x00, 0xa0, 0xa4, 0x58, 0x00
00419b20  60 a4 58 00 64 83 4a 00 04 a3 58 00 a4 a1 58 00  .byte 0x60, 0xa4, 0x58, 0x00, 0x64, 0x83, 0x4a, 0x00, 0x04, 0xa3, 0x58, 0x00, 0xa4, 0xa1, 0x58, 0x00
00419b30  10 80 4a 00 fc 56 4a 00 54 21 00 00 78 9f 58 00  .byte 0x10, 0x80, 0x4a, 0x00, 0xfc, 0x56, 0x4a, 0x00, 0x54, 0x21, 0x00, 0x00, 0x78, 0x9f, 0x58, 0x00
00419b40  f4 9c 58 00 64 9c 58 00 8c 9b 58 00              .byte 0xf4, 0x9c, 0x58, 0x00, 0x64, 0x9c, 0x58, 0x00, 0x8c, 0x9b, 0x58, 0x00

; FUNCTION 0x00419b4c, declared_size=3124, range_size=3124, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls15initCachedCharsEv
; demangled: HUDControls::initCachedChars()
; decoder-mode: arm
00419b4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00419b50  94 6b 9f e5                                      ldr r6, [pc, #0xb94]
00419b54  94 2b 9f e5                                      ldr r2, [pc, #0xb94]
00419b58  54 d0 4d e2                                      sub sp, sp, #0x54
00419b5c  06 60 8f e0                                      add r6, pc, r6
00419b60  02 30 96 e7                                      ldr r3, [r6, r2]
00419b64  08 20 8d e5                                      str r2, [sp, #8]
00419b68  58 26 90 e5                                      ldr r2, [r0, #0x658]
00419b6c  00 30 93 e5                                      ldr r3, [r3]
00419b70  00 40 a0 e1                                      mov r4, r0
00419b74  00 00 52 e3                                      cmp r2, #0
00419b78  4c 30 8d e5                                      str r3, [sp, #0x4c]
00419b7c  ab 01 00 0a                                      beq #0x41a230
00419b80  6c 3b 9f e5                                      ldr r3, [pc, #0xb6c]
00419b84  6c 1b 9f e5                                      ldr r1, [pc, #0xb6c]
00419b88  38 50 8d e2                                      add r5, sp, #0x38
00419b8c  03 00 96 e7                                      ldr r0, [r6, r3]
00419b90  01 10 8f e0                                      add r1, pc, r1
00419b94  aa 1c fc eb                                      bl #0x320e44
00419b98  5c 1b 9f e5                                      ldr r1, [pc, #0xb5c]
00419b9c  00 20 a0 e1                                      mov r2, r0
00419ba0  0c 00 8d e5                                      str r0, [sp, #0xc]
00419ba4  01 10 8f e0                                      add r1, pc, r1
00419ba8  05 00 a0 e1                                      mov r0, r5
00419bac  cc d3 fb eb                                      bl #0x30eae4
00419bb0  05 10 a0 e1                                      mov r1, r5
00419bb4  58 06 94 e5                                      ldr r0, [r4, #0x658]
00419bb8  68 3d 0e eb                                      bl #0x7a9160
00419bbc  e2 5f 84 e2                                      add r5, r4, #0x388
00419bc0  00 10 a0 e1                                      mov r1, r0
00419bc4  58 26 94 e5                                      ldr r2, [r4, #0x658]
00419bc8  00 30 a0 e3                                      mov r3, #0
00419bcc  05 00 a0 e1                                      mov r0, r5
00419bd0  1b 38 00 eb                                      bl #0x427c44
00419bd4  05 00 a0 e1                                      mov r0, r5
00419bd8  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419bdc  5b 38 00 eb                                      bl #0x427d50
00419be0  18 1b 9f e5                                      ldr r1, [pc, #0xb18]
00419be4  1c 20 84 e2                                      add r2, r4, #0x1c
00419be8  28 20 8d e5                                      str r2, [sp, #0x28]
00419bec  00 30 a0 e1                                      mov r3, r0
00419bf0  07 20 a0 e1                                      mov r2, r7
00419bf4  01 10 8f e0                                      add r1, pc, r1
00419bf8  28 00 9d e5                                      ldr r0, [sp, #0x28]
00419bfc  27 38 00 eb                                      bl #0x427ca0
00419c00  05 00 a0 e1                                      mov r0, r5
00419c04  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419c08  50 38 00 eb                                      bl #0x427d50
00419c0c  f0 1a 9f e5                                      ldr r1, [pc, #0xaf0]
00419c10  88 20 84 e2                                      add r2, r4, #0x88
00419c14  34 20 8d e5                                      str r2, [sp, #0x34]
00419c18  00 30 a0 e1                                      mov r3, r0
00419c1c  07 20 a0 e1                                      mov r2, r7
00419c20  01 10 8f e0                                      add r1, pc, r1
00419c24  34 00 9d e5                                      ldr r0, [sp, #0x34]
00419c28  1c 38 00 eb                                      bl #0x427ca0
00419c2c  05 00 a0 e1                                      mov r0, r5
00419c30  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419c34  45 38 00 eb                                      bl #0x427d50
00419c38  c8 1a 9f e5                                      ldr r1, [pc, #0xac8]
00419c3c  4c 20 84 e2                                      add r2, r4, #0x4c
00419c40  24 20 8d e5                                      str r2, [sp, #0x24]
00419c44  00 30 a0 e1                                      mov r3, r0
00419c48  07 20 a0 e1                                      mov r2, r7
00419c4c  01 10 8f e0                                      add r1, pc, r1
00419c50  24 00 9d e5                                      ldr r0, [sp, #0x24]
00419c54  11 38 00 eb                                      bl #0x427ca0
00419c58  ac 1a 9f e5                                      ldr r1, [pc, #0xaac]
00419c5c  58 26 94 e5                                      ldr r2, [r4, #0x658]
00419c60  00 30 a0 e3                                      mov r3, #0
00419c64  01 10 8f e0                                      add r1, pc, r1
00419c68  b8 00 84 e2                                      add r0, r4, #0xb8
00419c6c  0b 38 00 eb                                      bl #0x427ca0
00419c70  05 00 a0 e1                                      mov r0, r5
00419c74  58 86 94 e5                                      ldr r8, [r4, #0x658]
00419c78  34 38 00 eb                                      bl #0x427d50
00419c7c  8c 7a 9f e5                                      ldr r7, [pc, #0xa8c]
00419c80  00 30 a0 e1                                      mov r3, r0
00419c84  08 20 a0 e1                                      mov r2, r8
00419c88  07 70 8f e0                                      add r7, pc, r7
00419c8c  07 10 a0 e1                                      mov r1, r7
00419c90  e8 00 84 e2                                      add r0, r4, #0xe8
00419c94  01 38 00 eb                                      bl #0x427ca0
00419c98  05 00 a0 e1                                      mov r0, r5
00419c9c  58 86 94 e5                                      ldr r8, [r4, #0x658]
00419ca0  2a 38 00 eb                                      bl #0x427d50
00419ca4  68 1a 9f e5                                      ldr r1, [pc, #0xa68]
00419ca8  ee 2f 84 e2                                      add r2, r4, #0x3b8
00419cac  30 20 8d e5                                      str r2, [sp, #0x30]
00419cb0  00 30 a0 e1                                      mov r3, r0
00419cb4  08 20 a0 e1                                      mov r2, r8
00419cb8  01 10 8f e0                                      add r1, pc, r1
00419cbc  30 00 9d e5                                      ldr r0, [sp, #0x30]
00419cc0  f6 37 00 eb                                      bl #0x427ca0
00419cc4  fa 3f 84 e2                                      add r3, r4, #0x3e8
00419cc8  05 00 a0 e1                                      mov r0, r5
00419ccc  58 a6 94 e5                                      ldr sl, [r4, #0x658]
00419cd0  2c 30 8d e5                                      str r3, [sp, #0x2c]
00419cd4  1d 38 00 eb                                      bl #0x427d50
00419cd8  38 8a 9f e5                                      ldr r8, [pc, #0xa38]
00419cdc  00 30 a0 e1                                      mov r3, r0
00419ce0  0a 20 a0 e1                                      mov r2, sl
00419ce4  08 80 8f e0                                      add r8, pc, r8
00419ce8  08 10 a0 e1                                      mov r1, r8
00419cec  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00419cf0  ea 37 00 eb                                      bl #0x427ca0
00419cf4  41 2e 84 e2                                      add r2, r4, #0x410
00419cf8  08 20 82 e2                                      add r2, r2, #8
00419cfc  05 00 a0 e1                                      mov r0, r5
00419d00  58 96 94 e5                                      ldr sb, [r4, #0x658]
00419d04  20 20 8d e5                                      str r2, [sp, #0x20]
00419d08  10 38 00 eb                                      bl #0x427d50
00419d0c  08 aa 9f e5                                      ldr sl, [pc, #0xa08]
00419d10  09 20 a0 e1                                      mov r2, sb
00419d14  00 30 a0 e1                                      mov r3, r0
00419d18  0a a0 8f e0                                      add sl, pc, sl
00419d1c  0a 10 a0 e1                                      mov r1, sl
00419d20  20 00 9d e5                                      ldr r0, [sp, #0x20]
00419d24  dd 37 00 eb                                      bl #0x427ca0
00419d28  11 3d 84 e2                                      add r3, r4, #0x440
00419d2c  08 30 83 e2                                      add r3, r3, #8
00419d30  05 00 a0 e1                                      mov r0, r5
00419d34  58 b6 94 e5                                      ldr fp, [r4, #0x658]
00419d38  1c 30 8d e5                                      str r3, [sp, #0x1c]
00419d3c  03 38 00 eb                                      bl #0x427d50
00419d40  d8 99 9f e5                                      ldr sb, [pc, #0x9d8]
00419d44  00 30 a0 e1                                      mov r3, r0
00419d48  0b 20 a0 e1                                      mov r2, fp
00419d4c  09 90 8f e0                                      add sb, pc, sb
00419d50  09 10 a0 e1                                      mov r1, sb
00419d54  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00419d58  d0 37 00 eb                                      bl #0x427ca0
00419d5c  05 00 a0 e1                                      mov r0, r5
00419d60  58 b6 94 e5                                      ldr fp, [r4, #0x658]
00419d64  f9 37 00 eb                                      bl #0x427d50
00419d68  47 2e 84 e2                                      add r2, r4, #0x470
00419d6c  b0 19 9f e5                                      ldr r1, [pc, #0x9b0]
00419d70  08 20 82 e2                                      add r2, r2, #8
00419d74  18 20 8d e5                                      str r2, [sp, #0x18]
00419d78  00 30 a0 e1                                      mov r3, r0
00419d7c  0b 20 a0 e1                                      mov r2, fp
00419d80  01 10 8f e0                                      add r1, pc, r1
00419d84  18 00 9d e5                                      ldr r0, [sp, #0x18]
00419d88  c4 37 00 eb                                      bl #0x427ca0
00419d8c  05 00 a0 e1                                      mov r0, r5
00419d90  58 b6 94 e5                                      ldr fp, [r4, #0x658]
00419d94  ed 37 00 eb                                      bl #0x427d50
00419d98  4a 2e 84 e2                                      add r2, r4, #0x4a0
00419d9c  84 19 9f e5                                      ldr r1, [pc, #0x984]
00419da0  08 20 82 e2                                      add r2, r2, #8
00419da4  04 20 8d e5                                      str r2, [sp, #4]
00419da8  00 30 a0 e1                                      mov r3, r0
00419dac  0b 20 a0 e1                                      mov r2, fp
00419db0  01 10 8f e0                                      add r1, pc, r1
00419db4  04 00 9d e5                                      ldr r0, [sp, #4]
00419db8  b8 37 00 eb                                      bl #0x427ca0
00419dbc  05 00 a0 e1                                      mov r0, r5
00419dc0  58 b6 94 e5                                      ldr fp, [r4, #0x658]
00419dc4  e1 37 00 eb                                      bl #0x427d50
00419dc8  4d 2e 84 e2                                      add r2, r4, #0x4d0
00419dcc  58 19 9f e5                                      ldr r1, [pc, #0x958]
00419dd0  08 20 82 e2                                      add r2, r2, #8
00419dd4  14 20 8d e5                                      str r2, [sp, #0x14]
00419dd8  00 30 a0 e1                                      mov r3, r0
00419ddc  0b 20 a0 e1                                      mov r2, fp
00419de0  01 10 8f e0                                      add r1, pc, r1
00419de4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00419de8  ac 37 00 eb                                      bl #0x427ca0
00419dec  05 3c 84 e2                                      add r3, r4, #0x500
00419df0  08 30 83 e2                                      add r3, r3, #8
00419df4  05 00 a0 e1                                      mov r0, r5
00419df8  58 b6 94 e5                                      ldr fp, [r4, #0x658]
00419dfc  10 30 8d e5                                      str r3, [sp, #0x10]
00419e00  d2 37 00 eb                                      bl #0x427d50
00419e04  07 10 a0 e1                                      mov r1, r7
00419e08  00 30 a0 e1                                      mov r3, r0
00419e0c  0b 20 a0 e1                                      mov r2, fp
00419e10  10 00 9d e5                                      ldr r0, [sp, #0x10]
00419e14  a1 37 00 eb                                      bl #0x427ca0
00419e18  05 00 a0 e1                                      mov r0, r5
00419e1c  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419e20  ca 37 00 eb                                      bl #0x427d50
00419e24  04 19 9f e5                                      ldr r1, [pc, #0x904]
00419e28  00 30 a0 e1                                      mov r3, r0
00419e2c  53 0e 84 e2                                      add r0, r4, #0x530
00419e30  07 20 a0 e1                                      mov r2, r7
00419e34  01 10 8f e0                                      add r1, pc, r1
00419e38  08 00 80 e2                                      add r0, r0, #8
00419e3c  97 37 00 eb                                      bl #0x427ca0
00419e40  05 00 a0 e1                                      mov r0, r5
00419e44  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419e48  c0 37 00 eb                                      bl #0x427d50
00419e4c  e0 18 9f e5                                      ldr r1, [pc, #0x8e0]
00419e50  56 be 84 e2                                      add fp, r4, #0x560
00419e54  08 b0 8b e2                                      add fp, fp, #8
00419e58  00 30 a0 e1                                      mov r3, r0
00419e5c  07 20 a0 e1                                      mov r2, r7
00419e60  01 10 8f e0                                      add r1, pc, r1
00419e64  0b 00 a0 e1                                      mov r0, fp
00419e68  8c 37 00 eb                                      bl #0x427ca0
00419e6c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00419e70  01 00 52 e3                                      cmp r2, #1
00419e74  1a 01 00 da                                      ble #0x41a2e4
00419e78  05 00 a0 e1                                      mov r0, r5
00419e7c  58 86 94 e5                                      ldr r8, [r4, #0x658]
00419e80  b2 37 00 eb                                      bl #0x427d50
00419e84  ac 78 9f e5                                      ldr r7, [pc, #0x8ac]
00419e88  00 30 a0 e1                                      mov r3, r0
00419e8c  08 20 a0 e1                                      mov r2, r8
00419e90  07 70 8f e0                                      add r7, pc, r7
00419e94  07 10 a0 e1                                      mov r1, r7
00419e98  46 0f 84 e2                                      add r0, r4, #0x118
00419e9c  7f 37 00 eb                                      bl #0x427ca0
00419ea0  05 00 a0 e1                                      mov r0, r5
00419ea4  58 86 94 e5                                      ldr r8, [r4, #0x658]
00419ea8  a8 37 00 eb                                      bl #0x427d50
00419eac  08 20 a0 e1                                      mov r2, r8
00419eb0  00 30 a0 e1                                      mov r3, r0
00419eb4  07 10 a0 e1                                      mov r1, r7
00419eb8  52 0f 84 e2                                      add r0, r4, #0x148
00419ebc  77 37 00 eb                                      bl #0x427ca0
00419ec0  05 00 a0 e1                                      mov r0, r5
00419ec4  58 86 94 e5                                      ldr r8, [r4, #0x658]
00419ec8  a0 37 00 eb                                      bl #0x427d50
00419ecc  07 10 a0 e1                                      mov r1, r7
00419ed0  00 30 a0 e1                                      mov r3, r0
00419ed4  08 20 a0 e1                                      mov r2, r8
00419ed8  5e 0f 84 e2                                      add r0, r4, #0x178
00419edc  6f 37 00 eb                                      bl #0x427ca0
00419ee0  05 00 a0 e1                                      mov r0, r5
00419ee4  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419ee8  98 37 00 eb                                      bl #0x427d50
00419eec  48 18 9f e5                                      ldr r1, [pc, #0x848]
00419ef0  00 30 a0 e1                                      mov r3, r0
00419ef4  07 20 a0 e1                                      mov r2, r7
00419ef8  01 10 8f e0                                      add r1, pc, r1
00419efc  6a 0f 84 e2                                      add r0, r4, #0x1a8
00419f00  66 37 00 eb                                      bl #0x427ca0
00419f04  05 00 a0 e1                                      mov r0, r5
00419f08  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419f0c  8f 37 00 eb                                      bl #0x427d50
00419f10  28 18 9f e5                                      ldr r1, [pc, #0x828]
00419f14  00 30 a0 e1                                      mov r3, r0
00419f18  07 20 a0 e1                                      mov r2, r7
00419f1c  01 10 8f e0                                      add r1, pc, r1
00419f20  76 0f 84 e2                                      add r0, r4, #0x1d8
00419f24  5d 37 00 eb                                      bl #0x427ca0
00419f28  05 00 a0 e1                                      mov r0, r5
00419f2c  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419f30  86 37 00 eb                                      bl #0x427d50
00419f34  08 18 9f e5                                      ldr r1, [pc, #0x808]
00419f38  00 30 a0 e1                                      mov r3, r0
00419f3c  07 20 a0 e1                                      mov r2, r7
00419f40  01 10 8f e0                                      add r1, pc, r1
00419f44  82 0f 84 e2                                      add r0, r4, #0x208
00419f48  54 37 00 eb                                      bl #0x427ca0
00419f4c  05 00 a0 e1                                      mov r0, r5
00419f50  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419f54  7d 37 00 eb                                      bl #0x427d50
00419f58  e8 17 9f e5                                      ldr r1, [pc, #0x7e8]
00419f5c  00 30 a0 e1                                      mov r3, r0
00419f60  07 20 a0 e1                                      mov r2, r7
00419f64  01 10 8f e0                                      add r1, pc, r1
00419f68  8e 0f 84 e2                                      add r0, r4, #0x238
00419f6c  4b 37 00 eb                                      bl #0x427ca0
00419f70  05 00 a0 e1                                      mov r0, r5
00419f74  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419f78  74 37 00 eb                                      bl #0x427d50
00419f7c  c8 17 9f e5                                      ldr r1, [pc, #0x7c8]
00419f80  00 30 a0 e1                                      mov r3, r0
00419f84  07 20 a0 e1                                      mov r2, r7
00419f88  01 10 8f e0                                      add r1, pc, r1
00419f8c  9a 0f 84 e2                                      add r0, r4, #0x268
00419f90  42 37 00 eb                                      bl #0x427ca0
00419f94  05 00 a0 e1                                      mov r0, r5
00419f98  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419f9c  6b 37 00 eb                                      bl #0x427d50
00419fa0  a8 17 9f e5                                      ldr r1, [pc, #0x7a8]
00419fa4  00 30 a0 e1                                      mov r3, r0
00419fa8  07 20 a0 e1                                      mov r2, r7
00419fac  01 10 8f e0                                      add r1, pc, r1
00419fb0  a6 0f 84 e2                                      add r0, r4, #0x298
00419fb4  39 37 00 eb                                      bl #0x427ca0
00419fb8  05 00 a0 e1                                      mov r0, r5
00419fbc  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419fc0  62 37 00 eb                                      bl #0x427d50
00419fc4  88 17 9f e5                                      ldr r1, [pc, #0x788]
00419fc8  00 30 a0 e1                                      mov r3, r0
00419fcc  07 20 a0 e1                                      mov r2, r7
00419fd0  01 10 8f e0                                      add r1, pc, r1
00419fd4  b2 0f 84 e2                                      add r0, r4, #0x2c8
00419fd8  30 37 00 eb                                      bl #0x427ca0
00419fdc  05 00 a0 e1                                      mov r0, r5
00419fe0  58 76 94 e5                                      ldr r7, [r4, #0x658]
00419fe4  59 37 00 eb                                      bl #0x427d50
00419fe8  68 17 9f e5                                      ldr r1, [pc, #0x768]
00419fec  00 30 a0 e1                                      mov r3, r0
00419ff0  07 20 a0 e1                                      mov r2, r7
00419ff4  01 10 8f e0                                      add r1, pc, r1
00419ff8  be 0f 84 e2                                      add r0, r4, #0x2f8
00419ffc  27 37 00 eb                                      bl #0x427ca0
0041a000  05 00 a0 e1                                      mov r0, r5
0041a004  58 76 94 e5                                      ldr r7, [r4, #0x658]
0041a008  50 37 00 eb                                      bl #0x427d50
0041a00c  48 17 9f e5                                      ldr r1, [pc, #0x748]
0041a010  00 30 a0 e1                                      mov r3, r0
0041a014  07 20 a0 e1                                      mov r2, r7
0041a018  01 10 8f e0                                      add r1, pc, r1
0041a01c  ca 0f 84 e2                                      add r0, r4, #0x328
0041a020  1e 37 00 eb                                      bl #0x427ca0
0041a024  34 17 9f e5                                      ldr r1, [pc, #0x734]
0041a028  00 30 a0 e3                                      mov r3, #0
0041a02c  58 26 94 e5                                      ldr r2, [r4, #0x658]
0041a030  01 10 8f e0                                      add r1, pc, r1
0041a034  d6 0f 84 e2                                      add r0, r4, #0x358
0041a038  18 37 00 eb                                      bl #0x427ca0
0041a03c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0041a040  58 76 94 e5                                      ldr r7, [r4, #0x658]
0041a044  41 37 00 eb                                      bl #0x427d50
0041a048  14 17 9f e5                                      ldr r1, [pc, #0x714]
0041a04c  00 20 a0 e1                                      mov r2, r0
0041a050  07 00 a0 e1                                      mov r0, r7
0041a054  01 10 8f e0                                      add r1, pc, r1
0041a058  89 3a 0e eb                                      bl #0x7a8a84
0041a05c  00 30 90 e5                                      ldr r3, [r0]
0041a060  0f e0 a0 e1                                      mov lr, pc
0041a064  28 f1 93 e5                                      ldr pc, [r3, #0x128]
0041a068  41 14 a0 e3                                      mov r1, #0x41000000
0041a06c  0a 16 81 e2                                      add r1, r1, #0xa00000
0041a070  07 d3 fb eb                                      bl #0x30ec94
0041a074  3f 14 a0 e3                                      mov r1, #0x3f000000
0041a078  3b d3 fb eb                                      bl #0x30ed6c
0041a07c  12 d1 fb eb                                      bl #0x30e4cc
0041a080  0c 00 84 e5                                      str r0, [r4, #0xc]
0041a084  10 00 84 e5                                      str r0, [r4, #0x10]
0041a088  28 00 9d e5                                      ldr r0, [sp, #0x28]
0041a08c  58 76 94 e5                                      ldr r7, [r4, #0x658]
0041a090  2e 37 00 eb                                      bl #0x427d50
0041a094  00 20 a0 e3                                      mov r2, #0
0041a098  02 30 a0 e1                                      mov r3, r2
0041a09c  00 10 a0 e1                                      mov r1, r0
0041a0a0  07 00 a0 e1                                      mov r0, r7
0041a0a4  d1 40 0e eb                                      bl #0x7aa3f0
0041a0a8  b8 16 9f e5                                      ldr r1, [pc, #0x6b8]
0041a0ac  58 06 94 e5                                      ldr r0, [r4, #0x658]
0041a0b0  59 7e 84 e2                                      add r7, r4, #0x590
0041a0b4  01 10 8f e0                                      add r1, pc, r1
0041a0b8  28 3c 0e eb                                      bl #0x7a9160
0041a0bc  58 26 94 e5                                      ldr r2, [r4, #0x658]
0041a0c0  00 10 a0 e1                                      mov r1, r0
0041a0c4  00 30 a0 e3                                      mov r3, #0
0041a0c8  05 00 a0 e1                                      mov r0, r5
0041a0cc  dc 36 00 eb                                      bl #0x427c44
0041a0d0  05 00 a0 e1                                      mov r0, r5
0041a0d4  58 86 94 e5                                      ldr r8, [r4, #0x658]
0041a0d8  1c 37 00 eb                                      bl #0x427d50
0041a0dc  88 16 9f e5                                      ldr r1, [pc, #0x688]
0041a0e0  08 70 87 e2                                      add r7, r7, #8
0041a0e4  00 30 a0 e1                                      mov r3, r0
0041a0e8  08 20 a0 e1                                      mov r2, r8
0041a0ec  01 10 8f e0                                      add r1, pc, r1
0041a0f0  07 00 a0 e1                                      mov r0, r7
0041a0f4  e9 36 00 eb                                      bl #0x427ca0
0041a0f8  05 00 a0 e1                                      mov r0, r5
0041a0fc  58 a6 94 e5                                      ldr sl, [r4, #0x658]
0041a100  12 37 00 eb                                      bl #0x427d50
0041a104  64 16 9f e5                                      ldr r1, [pc, #0x664]
0041a108  17 8d 84 e2                                      add r8, r4, #0x5c0
0041a10c  08 80 88 e2                                      add r8, r8, #8
0041a110  00 30 a0 e1                                      mov r3, r0
0041a114  0a 20 a0 e1                                      mov r2, sl
0041a118  01 10 8f e0                                      add r1, pc, r1
0041a11c  08 00 a0 e1                                      mov r0, r8
0041a120  de 36 00 eb                                      bl #0x427ca0
0041a124  05 00 a0 e1                                      mov r0, r5
0041a128  08 37 00 eb                                      bl #0x427d50
0041a12c  40 16 9f e5                                      ldr r1, [pc, #0x640]
0041a130  01 90 a0 e3                                      mov sb, #1
0041a134  9b 90 c0 e5                                      strb sb, [r0, #0x9b]
0041a138  01 10 8f e0                                      add r1, pc, r1
0041a13c  58 06 94 e5                                      ldr r0, [r4, #0x658]
0041a140  06 3c 0e eb                                      bl #0x7a9160
0041a144  00 30 a0 e3                                      mov r3, #0
0041a148  00 10 a0 e1                                      mov r1, r0
0041a14c  58 26 94 e5                                      ldr r2, [r4, #0x658]
0041a150  05 00 a0 e1                                      mov r0, r5
0041a154  ba 36 00 eb                                      bl #0x427c44
0041a158  58 26 94 e5                                      ldr r2, [r4, #0x658]
0041a15c  05 00 a0 e1                                      mov r0, r5
0041a160  5f ae 84 e2                                      add sl, r4, #0x5f0
0041a164  00 20 8d e5                                      str r2, [sp]
0041a168  f8 36 00 eb                                      bl #0x427d50
0041a16c  04 16 9f e5                                      ldr r1, [pc, #0x604]
0041a170  08 a0 8a e2                                      add sl, sl, #8
0041a174  00 30 a0 e1                                      mov r3, r0
0041a178  01 10 8f e0                                      add r1, pc, r1
0041a17c  00 20 9d e5                                      ldr r2, [sp]
0041a180  0a 00 a0 e1                                      mov r0, sl
0041a184  c5 36 00 eb                                      bl #0x427ca0
0041a188  58 26 94 e5                                      ldr r2, [r4, #0x658]
0041a18c  05 00 a0 e1                                      mov r0, r5
0041a190  62 5e 84 e2                                      add r5, r4, #0x620
0041a194  00 20 8d e5                                      str r2, [sp]
0041a198  ec 36 00 eb                                      bl #0x427d50
0041a19c  d8 15 9f e5                                      ldr r1, [pc, #0x5d8]
0041a1a0  08 50 85 e2                                      add r5, r5, #8
0041a1a4  00 30 a0 e1                                      mov r3, r0
0041a1a8  01 10 8f e0                                      add r1, pc, r1
0041a1ac  00 20 9d e5                                      ldr r2, [sp]
0041a1b0  05 00 a0 e1                                      mov r0, r5
0041a1b4  b9 36 00 eb                                      bl #0x427ca0
0041a1b8  6c 36 d4 e5                                      ldrb r3, [r4, #0x66c]
0041a1bc  00 00 53 e3                                      cmp r3, #0
0041a1c0  22 00 00 1a                                      bne #0x41a250
0041a1c4  07 00 a0 e1                                      mov r0, r7
0041a1c8  00 30 8d e5                                      str r3, [sp]
0041a1cc  df 36 00 eb                                      bl #0x427d50
0041a1d0  00 30 9d e5                                      ldr r3, [sp]
0041a1d4  9b 30 c0 e5                                      strb r3, [r0, #0x9b]
0041a1d8  08 00 a0 e1                                      mov r0, r8
0041a1dc  00 30 8d e5                                      str r3, [sp]
0041a1e0  da 36 00 eb                                      bl #0x427d50
0041a1e4  00 30 9d e5                                      ldr r3, [sp]
0041a1e8  9b 30 c0 e5                                      strb r3, [r0, #0x9b]
0041a1ec  04 00 9d e5                                      ldr r0, [sp, #4]
0041a1f0  d6 36 00 eb                                      bl #0x427d50
0041a1f4  9b 90 c0 e5                                      strb sb, [r0, #0x9b]
0041a1f8  0b 00 a0 e1                                      mov r0, fp
0041a1fc  d3 36 00 eb                                      bl #0x427d50
0041a200  9b 90 c0 e5                                      strb sb, [r0, #0x9b]
0041a204  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0041a208  00 00 53 e3                                      cmp r3, #0
0041a20c  25 00 00 1a                                      bne #0x41a2a8
0041a210  6d 36 d4 e5                                      ldrb r3, [r4, #0x66d]
0041a214  00 00 53 e3                                      cmp r3, #0
0041a218  c1 00 00 0a                                      beq #0x41a524
0041a21c  6f 36 d4 e5                                      ldrb r3, [r4, #0x66f]
0041a220  00 00 53 e3                                      cmp r3, #0
0041a224  b8 00 00 1a                                      bne #0x41a50c
0041a228  01 30 a0 e3                                      mov r3, #1
0041a22c  08 30 c4 e5                                      strb r3, [r4, #8]
0041a230  08 20 9d e5                                      ldr r2, [sp, #8]
0041a234  02 30 96 e7                                      ldr r3, [r6, r2]
0041a238  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0041a23c  00 30 93 e5                                      ldr r3, [r3]
0041a240  03 00 52 e1                                      cmp r2, r3
0041a244  27 01 00 1a                                      bne #0x41a6e8
0041a248  54 d0 8d e2                                      add sp, sp, #0x54
0041a24c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0041a250  07 00 a0 e1                                      mov r0, r7
0041a254  bd 36 00 eb                                      bl #0x427d50
0041a258  9b 90 c0 e5                                      strb sb, [r0, #0x9b]
0041a25c  08 00 a0 e1                                      mov r0, r8
0041a260  ba 36 00 eb                                      bl #0x427d50
0041a264  9b 90 c0 e5                                      strb sb, [r0, #0x9b]
0041a268  04 00 9d e5                                      ldr r0, [sp, #4]
0041a26c  b7 36 00 eb                                      bl #0x427d50
0041a270  00 70 a0 e3                                      mov r7, #0
0041a274  9b 70 c0 e5                                      strb r7, [r0, #0x9b]
0041a278  0b 00 a0 e1                                      mov r0, fp
0041a27c  b3 36 00 eb                                      bl #0x427d50
0041a280  9b 70 c0 e5                                      strb r7, [r0, #0x9b]
0041a284  0a 00 a0 e1                                      mov r0, sl
0041a288  b0 36 00 eb                                      bl #0x427d50
0041a28c  9b 70 c0 e5                                      strb r7, [r0, #0x9b]
0041a290  05 00 a0 e1                                      mov r0, r5
0041a294  ad 36 00 eb                                      bl #0x427d50
0041a298  9b 70 c0 e5                                      strb r7, [r0, #0x9b]
0041a29c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0041a2a0  00 00 53 e3                                      cmp r3, #0
0041a2a4  d9 ff ff 0a                                      beq #0x41a210
0041a2a8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0041a2ac  01 00 52 e3                                      cmp r2, #1
0041a2b0  dc ff ff 1a                                      bne #0x41a228
0041a2b4  6e 36 d4 e5                                      ldrb r3, [r4, #0x66e]
0041a2b8  00 00 53 e3                                      cmp r3, #0
0041a2bc  21 00 00 0a                                      beq #0x41a348
0041a2c0  70 36 d4 e5                                      ldrb r3, [r4, #0x670]
0041a2c4  00 00 53 e3                                      cmp r3, #0
0041a2c8  d6 ff ff 0a                                      beq #0x41a228
0041a2cc  77 1e 84 e2                                      add r1, r4, #0x770
0041a2d0  0c 10 81 e2                                      add r1, r1, #0xc
0041a2d4  04 00 a0 e1                                      mov r0, r4
0041a2d8  00 20 a0 e3                                      mov r2, #0
0041a2dc  2f f9 ff eb                                      bl #0x4187a0
0041a2e0  d0 ff ff ea                                      b #0x41a228
0041a2e4  05 00 a0 e1                                      mov r0, r5
0041a2e8  58 76 94 e5                                      ldr r7, [r4, #0x658]
0041a2ec  97 36 00 eb                                      bl #0x427d50
0041a2f0  08 10 a0 e1                                      mov r1, r8
0041a2f4  00 30 a0 e1                                      mov r3, r0
0041a2f8  07 20 a0 e1                                      mov r2, r7
0041a2fc  46 0f 84 e2                                      add r0, r4, #0x118
0041a300  66 36 00 eb                                      bl #0x427ca0
0041a304  05 00 a0 e1                                      mov r0, r5
0041a308  58 76 94 e5                                      ldr r7, [r4, #0x658]
0041a30c  8f 36 00 eb                                      bl #0x427d50
0041a310  0a 10 a0 e1                                      mov r1, sl
0041a314  00 30 a0 e1                                      mov r3, r0
0041a318  07 20 a0 e1                                      mov r2, r7
0041a31c  52 0f 84 e2                                      add r0, r4, #0x148
0041a320  5e 36 00 eb                                      bl #0x427ca0
0041a324  05 00 a0 e1                                      mov r0, r5
0041a328  58 76 94 e5                                      ldr r7, [r4, #0x658]
0041a32c  87 36 00 eb                                      bl #0x427d50
0041a330  09 10 a0 e1                                      mov r1, sb
0041a334  00 30 a0 e1                                      mov r3, r0
0041a338  07 20 a0 e1                                      mov r2, r7
0041a33c  5e 0f 84 e2                                      add r0, r4, #0x178
0041a340  56 36 00 eb                                      bl #0x427ca0
0041a344  e5 fe ff ea                                      b #0x419ee0
0041a348  24 00 9d e5                                      ldr r0, [sp, #0x24]
0041a34c  7f 36 00 eb                                      bl #0x427d50
0041a350  07 e7 0c eb                                      bl #0x753f74
0041a354  08 30 90 e5                                      ldr r3, [r0, #8]
0041a358  24 00 9d e5                                      ldr r0, [sp, #0x24]
0041a35c  cc 36 84 e5                                      str r3, [r4, #0x6cc]
0041a360  7a 36 00 eb                                      bl #0x427d50
0041a364  02 e7 0c eb                                      bl #0x753f74
0041a368  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a36c  34 00 9d e5                                      ldr r0, [sp, #0x34]
0041a370  d0 36 84 e5                                      str r3, [r4, #0x6d0]
0041a374  75 36 00 eb                                      bl #0x427d50
0041a378  fd e6 0c eb                                      bl #0x753f74
0041a37c  08 30 90 e5                                      ldr r3, [r0, #8]
0041a380  34 00 9d e5                                      ldr r0, [sp, #0x34]
0041a384  d4 36 84 e5                                      str r3, [r4, #0x6d4]
0041a388  70 36 00 eb                                      bl #0x427d50
0041a38c  f8 e6 0c eb                                      bl #0x753f74
0041a390  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a394  30 00 9d e5                                      ldr r0, [sp, #0x30]
0041a398  d8 36 84 e5                                      str r3, [r4, #0x6d8]
0041a39c  6b 36 00 eb                                      bl #0x427d50
0041a3a0  f3 e6 0c eb                                      bl #0x753f74
0041a3a4  08 30 90 e5                                      ldr r3, [r0, #8]
0041a3a8  30 00 9d e5                                      ldr r0, [sp, #0x30]
0041a3ac  dc 36 84 e5                                      str r3, [r4, #0x6dc]
0041a3b0  66 36 00 eb                                      bl #0x427d50
0041a3b4  ee e6 0c eb                                      bl #0x753f74
0041a3b8  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a3bc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0041a3c0  e0 36 84 e5                                      str r3, [r4, #0x6e0]
0041a3c4  61 36 00 eb                                      bl #0x427d50
0041a3c8  e9 e6 0c eb                                      bl #0x753f74
0041a3cc  08 30 90 e5                                      ldr r3, [r0, #8]
0041a3d0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0041a3d4  e4 36 84 e5                                      str r3, [r4, #0x6e4]
0041a3d8  5c 36 00 eb                                      bl #0x427d50
0041a3dc  e4 e6 0c eb                                      bl #0x753f74
0041a3e0  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a3e4  20 00 9d e5                                      ldr r0, [sp, #0x20]
0041a3e8  e8 36 84 e5                                      str r3, [r4, #0x6e8]
0041a3ec  57 36 00 eb                                      bl #0x427d50
0041a3f0  df e6 0c eb                                      bl #0x753f74
0041a3f4  08 30 90 e5                                      ldr r3, [r0, #8]
0041a3f8  20 00 9d e5                                      ldr r0, [sp, #0x20]
0041a3fc  ec 36 84 e5                                      str r3, [r4, #0x6ec]
0041a400  52 36 00 eb                                      bl #0x427d50
0041a404  da e6 0c eb                                      bl #0x753f74
0041a408  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a40c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0041a410  f0 36 84 e5                                      str r3, [r4, #0x6f0]
0041a414  4d 36 00 eb                                      bl #0x427d50
0041a418  d5 e6 0c eb                                      bl #0x753f74
0041a41c  08 30 90 e5                                      ldr r3, [r0, #8]
0041a420  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0041a424  f4 36 84 e5                                      str r3, [r4, #0x6f4]
0041a428  48 36 00 eb                                      bl #0x427d50
0041a42c  d0 e6 0c eb                                      bl #0x753f74
0041a430  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a434  18 00 9d e5                                      ldr r0, [sp, #0x18]
0041a438  f8 36 84 e5                                      str r3, [r4, #0x6f8]
0041a43c  43 36 00 eb                                      bl #0x427d50
0041a440  cb e6 0c eb                                      bl #0x753f74
0041a444  08 30 90 e5                                      ldr r3, [r0, #8]
0041a448  18 00 9d e5                                      ldr r0, [sp, #0x18]
0041a44c  fc 36 84 e5                                      str r3, [r4, #0x6fc]
0041a450  3e 36 00 eb                                      bl #0x427d50
0041a454  c6 e6 0c eb                                      bl #0x753f74
0041a458  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a45c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0041a460  00 37 84 e5                                      str r3, [r4, #0x700]
0041a464  39 36 00 eb                                      bl #0x427d50
0041a468  c1 e6 0c eb                                      bl #0x753f74
0041a46c  08 30 90 e5                                      ldr r3, [r0, #8]
0041a470  14 00 9d e5                                      ldr r0, [sp, #0x14]
0041a474  04 37 84 e5                                      str r3, [r4, #0x704]
0041a478  34 36 00 eb                                      bl #0x427d50
0041a47c  bc e6 0c eb                                      bl #0x753f74
0041a480  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a484  04 00 9d e5                                      ldr r0, [sp, #4]
0041a488  08 37 84 e5                                      str r3, [r4, #0x708]
0041a48c  2f 36 00 eb                                      bl #0x427d50
0041a490  b7 e6 0c eb                                      bl #0x753f74
0041a494  08 30 90 e5                                      ldr r3, [r0, #8]
0041a498  04 00 9d e5                                      ldr r0, [sp, #4]
0041a49c  0c 37 84 e5                                      str r3, [r4, #0x70c]
0041a4a0  2a 36 00 eb                                      bl #0x427d50
0041a4a4  b2 e6 0c eb                                      bl #0x753f74
0041a4a8  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a4ac  10 00 9d e5                                      ldr r0, [sp, #0x10]
0041a4b0  10 37 84 e5                                      str r3, [r4, #0x710]
0041a4b4  25 36 00 eb                                      bl #0x427d50
0041a4b8  ad e6 0c eb                                      bl #0x753f74
0041a4bc  08 30 90 e5                                      ldr r3, [r0, #8]
0041a4c0  10 00 9d e5                                      ldr r0, [sp, #0x10]
0041a4c4  14 37 84 e5                                      str r3, [r4, #0x714]
0041a4c8  20 36 00 eb                                      bl #0x427d50
0041a4cc  a8 e6 0c eb                                      bl #0x753f74
0041a4d0  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a4d4  0b 00 a0 e1                                      mov r0, fp
0041a4d8  18 37 84 e5                                      str r3, [r4, #0x718]
0041a4dc  1b 36 00 eb                                      bl #0x427d50
0041a4e0  a3 e6 0c eb                                      bl #0x753f74
0041a4e4  08 30 90 e5                                      ldr r3, [r0, #8]
0041a4e8  0b 00 a0 e1                                      mov r0, fp
0041a4ec  1c 37 84 e5                                      str r3, [r4, #0x71c]
0041a4f0  16 36 00 eb                                      bl #0x427d50
0041a4f4  9e e6 0c eb                                      bl #0x753f74
0041a4f8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0041a4fc  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a500  6e 26 c4 e5                                      strb r2, [r4, #0x66e]
0041a504  20 37 84 e5                                      str r3, [r4, #0x720]
0041a508  6c ff ff ea                                      b #0x41a2c0
0041a50c  72 1e 84 e2                                      add r1, r4, #0x720
0041a510  04 10 81 e2                                      add r1, r1, #4
0041a514  04 00 a0 e1                                      mov r0, r4
0041a518  00 20 a0 e3                                      mov r2, #0
0041a51c  9f f8 ff eb                                      bl #0x4187a0
0041a520  40 ff ff ea                                      b #0x41a228
0041a524  24 00 9d e5                                      ldr r0, [sp, #0x24]
0041a528  08 36 00 eb                                      bl #0x427d50
0041a52c  90 e6 0c eb                                      bl #0x753f74
0041a530  08 30 90 e5                                      ldr r3, [r0, #8]
0041a534  24 00 9d e5                                      ldr r0, [sp, #0x24]
0041a538  74 36 84 e5                                      str r3, [r4, #0x674]
0041a53c  03 36 00 eb                                      bl #0x427d50
0041a540  8b e6 0c eb                                      bl #0x753f74
0041a544  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a548  34 00 9d e5                                      ldr r0, [sp, #0x34]
0041a54c  78 36 84 e5                                      str r3, [r4, #0x678]
0041a550  fe 35 00 eb                                      bl #0x427d50
0041a554  86 e6 0c eb                                      bl #0x753f74
0041a558  08 30 90 e5                                      ldr r3, [r0, #8]
0041a55c  34 00 9d e5                                      ldr r0, [sp, #0x34]
0041a560  7c 36 84 e5                                      str r3, [r4, #0x67c]
0041a564  f9 35 00 eb                                      bl #0x427d50
0041a568  81 e6 0c eb                                      bl #0x753f74
0041a56c  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a570  30 00 9d e5                                      ldr r0, [sp, #0x30]
0041a574  80 36 84 e5                                      str r3, [r4, #0x680]
0041a578  f4 35 00 eb                                      bl #0x427d50
0041a57c  7c e6 0c eb                                      bl #0x753f74
0041a580  08 30 90 e5                                      ldr r3, [r0, #8]
0041a584  30 00 9d e5                                      ldr r0, [sp, #0x30]
0041a588  84 36 84 e5                                      str r3, [r4, #0x684]
0041a58c  ef 35 00 eb                                      bl #0x427d50
0041a590  77 e6 0c eb                                      bl #0x753f74
0041a594  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a598  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0041a59c  88 36 84 e5                                      str r3, [r4, #0x688]
0041a5a0  ea 35 00 eb                                      bl #0x427d50
0041a5a4  72 e6 0c eb                                      bl #0x753f74
0041a5a8  08 30 90 e5                                      ldr r3, [r0, #8]
0041a5ac  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0041a5b0  8c 36 84 e5                                      str r3, [r4, #0x68c]
0041a5b4  e5 35 00 eb                                      bl #0x427d50
0041a5b8  6d e6 0c eb                                      bl #0x753f74
0041a5bc  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a5c0  20 00 9d e5                                      ldr r0, [sp, #0x20]
0041a5c4  90 36 84 e5                                      str r3, [r4, #0x690]
0041a5c8  e0 35 00 eb                                      bl #0x427d50
0041a5cc  68 e6 0c eb                                      bl #0x753f74
0041a5d0  08 30 90 e5                                      ldr r3, [r0, #8]
0041a5d4  20 00 9d e5                                      ldr r0, [sp, #0x20]
0041a5d8  94 36 84 e5                                      str r3, [r4, #0x694]
0041a5dc  db 35 00 eb                                      bl #0x427d50
0041a5e0  63 e6 0c eb                                      bl #0x753f74
0041a5e4  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a5e8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0041a5ec  98 36 84 e5                                      str r3, [r4, #0x698]
0041a5f0  d6 35 00 eb                                      bl #0x427d50
0041a5f4  5e e6 0c eb                                      bl #0x753f74
0041a5f8  08 30 90 e5                                      ldr r3, [r0, #8]
0041a5fc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0041a600  9c 36 84 e5                                      str r3, [r4, #0x69c]
0041a604  d1 35 00 eb                                      bl #0x427d50
0041a608  59 e6 0c eb                                      bl #0x753f74
0041a60c  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a610  18 00 9d e5                                      ldr r0, [sp, #0x18]
0041a614  a0 36 84 e5                                      str r3, [r4, #0x6a0]
0041a618  cc 35 00 eb                                      bl #0x427d50
0041a61c  54 e6 0c eb                                      bl #0x753f74
0041a620  08 30 90 e5                                      ldr r3, [r0, #8]
0041a624  18 00 9d e5                                      ldr r0, [sp, #0x18]
0041a628  a4 36 84 e5                                      str r3, [r4, #0x6a4]
0041a62c  c7 35 00 eb                                      bl #0x427d50
0041a630  4f e6 0c eb                                      bl #0x753f74
0041a634  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a638  14 00 9d e5                                      ldr r0, [sp, #0x14]
0041a63c  a8 36 84 e5                                      str r3, [r4, #0x6a8]
0041a640  c2 35 00 eb                                      bl #0x427d50
0041a644  4a e6 0c eb                                      bl #0x753f74
0041a648  08 30 90 e5                                      ldr r3, [r0, #8]
0041a64c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0041a650  ac 36 84 e5                                      str r3, [r4, #0x6ac]
0041a654  bd 35 00 eb                                      bl #0x427d50
0041a658  45 e6 0c eb                                      bl #0x753f74
0041a65c  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a660  04 00 9d e5                                      ldr r0, [sp, #4]
0041a664  b0 36 84 e5                                      str r3, [r4, #0x6b0]
0041a668  b8 35 00 eb                                      bl #0x427d50
0041a66c  40 e6 0c eb                                      bl #0x753f74
0041a670  08 30 90 e5                                      ldr r3, [r0, #8]
0041a674  04 00 9d e5                                      ldr r0, [sp, #4]
0041a678  b4 36 84 e5                                      str r3, [r4, #0x6b4]
0041a67c  b3 35 00 eb                                      bl #0x427d50
0041a680  3b e6 0c eb                                      bl #0x753f74
0041a684  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a688  10 00 9d e5                                      ldr r0, [sp, #0x10]
0041a68c  b8 36 84 e5                                      str r3, [r4, #0x6b8]
0041a690  ae 35 00 eb                                      bl #0x427d50
0041a694  36 e6 0c eb                                      bl #0x753f74
0041a698  08 30 90 e5                                      ldr r3, [r0, #8]
0041a69c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0041a6a0  bc 36 84 e5                                      str r3, [r4, #0x6bc]
0041a6a4  a9 35 00 eb                                      bl #0x427d50
0041a6a8  31 e6 0c eb                                      bl #0x753f74
0041a6ac  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a6b0  0b 00 a0 e1                                      mov r0, fp
0041a6b4  c0 36 84 e5                                      str r3, [r4, #0x6c0]
0041a6b8  a4 35 00 eb                                      bl #0x427d50
0041a6bc  2c e6 0c eb                                      bl #0x753f74
0041a6c0  08 30 90 e5                                      ldr r3, [r0, #8]
0041a6c4  0b 00 a0 e1                                      mov r0, fp
0041a6c8  c4 36 84 e5                                      str r3, [r4, #0x6c4]
0041a6cc  9f 35 00 eb                                      bl #0x427d50
0041a6d0  27 e6 0c eb                                      bl #0x753f74
0041a6d4  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041a6d8  01 20 a0 e3                                      mov r2, #1
0041a6dc  6d 26 c4 e5                                      strb r2, [r4, #0x66d]
0041a6e0  c8 36 84 e5                                      str r3, [r4, #0x6c8]
0041a6e4  cc fe ff ea                                      b #0x41a21c
0041a6e8  08 cf fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0041a6ec  34 af 57 00 ac 40 00 00 f4 37 00 00 68 7a 4a 00  .byte 0x34, 0xaf, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x68, 0x7a, 0x4a, 0x00
0041a6fc  ac 74 4a 00 74 e8 4a 00 78 e8 4a 00 7c e8 4a 00  .byte 0xac, 0x74, 0x4a, 0x00, 0x74, 0xe8, 0x4a, 0x00, 0x78, 0xe8, 0x4a, 0x00, 0x7c, 0xe8, 0x4a, 0x00
0041a70c  8c e8 4a 00 70 e8 4a 00 68 e8 4a 00 64 e8 4a 00  .byte 0x8c, 0xe8, 0x4a, 0x00, 0x70, 0xe8, 0x4a, 0x00, 0x68, 0xe8, 0x4a, 0x00, 0x64, 0xe8, 0x4a, 0x00
0041a71c  60 e8 4a 00 5c e8 4a 00 58 e8 4a 00 48 e8 4a 00  .byte 0x60, 0xe8, 0x4a, 0x00, 0x5c, 0xe8, 0x4a, 0x00, 0x58, 0xe8, 0x4a, 0x00, 0x48, 0xe8, 0x4a, 0x00
0041a72c  38 e8 4a 00 04 e8 4a 00 00 e8 4a 00 f0 e7 4a 00  .byte 0x38, 0xe8, 0x4a, 0x00, 0x04, 0xe8, 0x4a, 0x00, 0x00, 0xe8, 0x4a, 0x00, 0xf0, 0xe7, 0x4a, 0x00
0041a73c  28 e6 4a 00 bc e6 4a 00 b8 e6 4a 00 d4 e6 4a 00  .byte 0x28, 0xe6, 0x4a, 0x00, 0xbc, 0xe6, 0x4a, 0x00, 0xb8, 0xe6, 0x4a, 0x00, 0xd4, 0xe6, 0x4a, 0x00
0041a74c  28 e7 4a 00 34 e7 4a 00 48 e7 4a 00 54 e7 4a 00  .byte 0x28, 0xe7, 0x4a, 0x00, 0x34, 0xe7, 0x4a, 0x00, 0x48, 0xe7, 0x4a, 0x00, 0x54, 0xe7, 0x4a, 0x00
0041a75c  68 e7 4a 00 88 e7 4a 00 84 e7 4a 00 2c e7 4a 00  .byte 0x68, 0xe7, 0x4a, 0x00, 0x88, 0xe7, 0x4a, 0x00, 0x84, 0xe7, 0x4a, 0x00, 0x2c, 0xe7, 0x4a, 0x00
0041a76c  0c e7 4a 00 f8 e6 4a 00 f0 e6 4a 00 c8 e6 4a 00  .byte 0x0c, 0xe7, 0x4a, 0x00, 0xf8, 0xe6, 0x4a, 0x00, 0xf0, 0xe6, 0x4a, 0x00, 0xc8, 0xe6, 0x4a, 0x00
0041a77c  a8 e6 4a 00                                      .byte 0xa8, 0xe6, 0x4a, 0x00

; FUNCTION 0x0041a780, declared_size=636, range_size=636, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls6UpdateEv
; demangled: HUDControls::Update()
; decoder-mode: arm
0041a780  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0041a784  5c 42 9f e5                                      ldr r4, [pc, #0x25c]
0041a788  5c 32 9f e5                                      ldr r3, [pc, #0x25c]
0041a78c  20 d0 4d e2                                      sub sp, sp, #0x20
0041a790  04 40 8f e0                                      add r4, pc, r4
0041a794  03 30 94 e7                                      ldr r3, [r4, r3]
0041a798  00 50 a0 e1                                      mov r5, r0
0041a79c  30 30 d3 e5                                      ldrb r3, [r3, #0x30]
0041a7a0  00 00 53 e3                                      cmp r3, #0
0041a7a4  59 00 00 0a                                      beq #0x41a910
0041a7a8  40 32 9f e5                                      ldr r3, [pc, #0x240]
0041a7ac  01 20 a0 e3                                      mov r2, #1
0041a7b0  03 30 94 e7                                      ldr r3, [r4, r3]
0041a7b4  00 20 c3 e5                                      strb r2, [r3]
0041a7b8  34 62 9f e5                                      ldr r6, [pc, #0x234]
0041a7bc  00 30 a0 e3                                      mov r3, #0
0041a7c0  84 30 c5 e5                                      strb r3, [r5, #0x84]
0041a7c4  06 00 94 e7                                      ldr r0, [r4, r6]
0041a7c8  71 13 fc eb                                      bl #0x31f594
0041a7cc  00 00 50 e3                                      cmp r0, #0
0041a7d0  02 00 00 0a                                      beq #0x41a7e0
0041a7d4  98 31 d0 e5                                      ldrb r3, [r0, #0x198]
0041a7d8  00 00 53 e3                                      cmp r3, #0
0041a7dc  4f 00 00 0a                                      beq #0x41a920
0041a7e0  58 36 95 e5                                      ldr r3, [r5, #0x658]
0041a7e4  00 00 53 e3                                      cmp r3, #0
0041a7e8  46 00 00 0a                                      beq #0x41a908
0041a7ec  08 30 d5 e5                                      ldrb r3, [r5, #8]
0041a7f0  00 00 53 e3                                      cmp r3, #0
0041a7f4  51 00 00 0a                                      beq #0x41a940
0041a7f8  06 30 94 e7                                      ldr r3, [r4, r6]
0041a7fc  00 10 a0 e3                                      mov r1, #0
0041a800  01 20 a0 e1                                      mov r2, r1
0041a804  40 00 93 e5                                      ldr r0, [r3, #0x40]
0041a808  1a 4f fd eb                                      bl #0x36e478
0041a80c  60 66 90 e5                                      ldr r6, [r0, #0x660]
0041a810  00 00 56 e3                                      cmp r6, #0
0041a814  3b 00 00 0a                                      beq #0x41a908
0041a818  09 30 d5 e5                                      ldrb r3, [r5, #9]
0041a81c  00 00 53 e3                                      cmp r3, #0
0041a820  06 00 00 0a                                      beq #0x41a840
0041a824  a4 34 01 e3                                      movw r3, #0x14a4
0041a828  03 10 96 e7                                      ldr r1, [r6, r3]
0041a82c  00 00 51 e3                                      cmp r1, #0
0041a830  68 00 00 0a                                      beq #0x41a9d8
0041a834  78 03 96 e5                                      ldr r0, [r6, #0x378]
0041a838  00 10 a0 e3                                      mov r1, #0
0041a83c  ee ab ff eb                                      bl #0x4057fc
0041a840  0a 30 d5 e5                                      ldrb r3, [r5, #0xa]
0041a844  00 00 53 e3                                      cmp r3, #0
0041a848  4a 00 00 1a                                      bne #0x41a978
0041a84c  09 70 d5 e5                                      ldrb r7, [r5, #9]
0041a850  00 00 57 e3                                      cmp r7, #0
0041a854  2b 00 00 1a                                      bne #0x41a908
0041a858  7c 00 95 e5                                      ldr r0, [r5, #0x7c]
0041a85c  00 00 50 e3                                      cmp r0, #0
0041a860  28 00 00 da                                      ble #0x41a908
0041a864  80 50 95 e5                                      ldr r5, [r5, #0x80]
0041a868  00 00 55 e3                                      cmp r5, #0
0041a86c  25 00 00 da                                      ble #0x41a908
0041a870  3b d0 fb eb                                      bl #0x30e964
0041a874  00 80 a0 e1                                      mov r8, r0
0041a878  05 00 a0 e1                                      mov r0, r5
0041a87c  38 d0 fb eb                                      bl #0x30e964
0041a880  70 21 9f e5                                      ldr r2, [pc, #0x170]
0041a884  00 30 a0 e3                                      mov r3, #0
0041a888  1c 00 8d e5                                      str r0, [sp, #0x1c]
0041a88c  18 10 8d e2                                      add r1, sp, #0x18
0041a890  02 00 94 e7                                      ldr r0, [r4, r2]
0041a894  0d 20 a0 e1                                      mov r2, sp
0041a898  08 30 8d e5                                      str r3, [sp, #8]
0041a89c  18 80 8d e5                                      str r8, [sp, #0x18]
0041a8a0  00 30 8d e5                                      str r3, [sp]
0041a8a4  04 30 8d e5                                      str r3, [sp, #4]
0041a8a8  f5 2b 04 eb                                      bl #0x525884
0041a8ac  00 00 50 e3                                      cmp r0, #0
0041a8b0  0d 50 a0 e1                                      mov r5, sp
0041a8b4  13 00 00 0a                                      beq #0x41a908
0041a8b8  9c 44 01 e3                                      movw r4, #0x149c
0041a8bc  04 00 96 e7                                      ldr r0, [r6, r4]
0041a8c0  00 10 9d e5                                      ldr r1, [sp]
0041a8c4  04 20 9d e5                                      ldr r2, [sp, #4]
0041a8c8  00 00 50 e3                                      cmp r0, #0
0041a8cc  08 30 9d e5                                      ldr r3, [sp, #8]
0041a8d0  09 00 00 0a                                      beq #0x41a8fc
0041a8d4  34 10 80 e5                                      str r1, [r0, #0x34]
0041a8d8  38 20 80 e5                                      str r2, [r0, #0x38]
0041a8dc  3c 30 80 e5                                      str r3, [r0, #0x3c]
0041a8e0  07 10 a0 e1                                      mov r1, r7
0041a8e4  6d e0 01 eb                                      bl #0x492aa0
0041a8e8  04 00 96 e7                                      ldr r0, [r6, r4]
0041a8ec  00 00 50 e3                                      cmp r0, #0
0041a8f0  01 00 00 0a                                      beq #0x41a8fc
0041a8f4  01 10 a0 e3                                      mov r1, #1
0041a8f8  7c e1 01 eb                                      bl #0x492ef0
0041a8fc  78 03 96 e5                                      ldr r0, [r6, #0x378]
0041a900  0d 10 a0 e1                                      mov r1, sp
0041a904  f6 aa ff eb                                      bl #0x4054e4
0041a908  20 d0 8d e2                                      add sp, sp, #0x20
0041a90c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0041a910  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
0041a914  02 20 94 e7                                      ldr r2, [r4, r2]
0041a918  00 30 c2 e5                                      strb r3, [r2]
0041a91c  a5 ff ff ea                                      b #0x41a7b8
0041a920  09 20 d5 e5                                      ldrb r2, [r5, #9]
0041a924  00 00 52 e3                                      cmp r2, #0
0041a928  09 30 c5 15                                      strbne r3, [r5, #9]
0041a92c  0a 30 d5 e5                                      ldrb r3, [r5, #0xa]
0041a930  00 00 53 e3                                      cmp r3, #0
0041a934  00 30 a0 13                                      movne r3, #0
0041a938  0a 30 c5 15                                      strbne r3, [r5, #0xa]
0041a93c  f1 ff ff ea                                      b #0x41a908
0041a940  05 00 a0 e1                                      mov r0, r5
0041a944  80 fc ff eb                                      bl #0x419b4c
0041a948  00 30 e0 e3                                      mvn r3, #0
0041a94c  80 30 85 e5                                      str r3, [r5, #0x80]
0041a950  7c 30 85 e5                                      str r3, [r5, #0x7c]
0041a954  06 30 94 e7                                      ldr r3, [r4, r6]
0041a958  00 10 a0 e3                                      mov r1, #0
0041a95c  01 20 a0 e1                                      mov r2, r1
0041a960  40 00 93 e5                                      ldr r0, [r3, #0x40]
0041a964  c3 4e fd eb                                      bl #0x36e478
0041a968  60 66 90 e5                                      ldr r6, [r0, #0x660]
0041a96c  00 00 56 e3                                      cmp r6, #0
0041a970  a8 ff ff 1a                                      bne #0x41a818
0041a974  e3 ff ff ea                                      b #0x41a908
0041a978  06 00 a0 e1                                      mov r0, r6
0041a97c  ab 4a fe eb                                      bl #0x3ad430
0041a980  00 00 50 e3                                      cmp r0, #0
0041a984  b0 ff ff 0a                                      beq #0x41a84c
0041a988  68 76 95 e5                                      ldr r7, [r5, #0x668]
0041a98c  60 16 95 e5                                      ldr r1, [r5, #0x660]
0041a990  78 93 96 e5                                      ldr sb, [r6, #0x378]
0041a994  07 00 a0 e1                                      mov r0, r7
0041a998  f3 d0 fb eb                                      bl #0x30ed6c
0041a99c  64 16 95 e5                                      ldr r1, [r5, #0x664]
0041a9a0  00 a0 a0 e1                                      mov sl, r0
0041a9a4  07 00 a0 e1                                      mov r0, r7
0041a9a8  ef d0 fb eb                                      bl #0x30ed6c
0041a9ac  07 10 a0 e1                                      mov r1, r7
0041a9b0  00 80 a0 e1                                      mov r8, r0
0041a9b4  5c 06 95 e5                                      ldr r0, [r5, #0x65c]
0041a9b8  eb d0 fb eb                                      bl #0x30ed6c
0041a9bc  0c 10 8d e2                                      add r1, sp, #0xc
0041a9c0  0c 00 8d e5                                      str r0, [sp, #0xc]
0041a9c4  09 00 a0 e1                                      mov r0, sb
0041a9c8  10 a0 8d e5                                      str sl, [sp, #0x10]
0041a9cc  14 80 8d e5                                      str r8, [sp, #0x14]
0041a9d0  67 aa ff eb                                      bl #0x405374
0041a9d4  9c ff ff ea                                      b #0x41a84c
0041a9d8  13 14 c6 e5                                      strb r1, [r6, #0x413]
0041a9dc  78 03 96 e5                                      ldr r0, [r6, #0x378]
0041a9e0  47 ac ff eb                                      bl #0x405b04
0041a9e4  95 ff ff ea                                      b #0x41a840
; mapping-symbol data/literal pool
0041a9e8  00 a3 57 00 20 1a 00 00 f8 38 00 00 f4 37 00 00  .byte 0x00, 0xa3, 0x57, 0x00, 0x20, 0x1a, 0x00, 0x00, 0xf8, 0x38, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
0041a9f8  04 12 00 00                                      .byte 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x0041aa38, declared_size=8, range_size=8, mode=arm
; class-group: HUDControls
; alias: _ZThn4_N11HUDControlsD1Ev
; demangled: non-virtual thunk to HUDControls::~HUDControls()
; decoder-mode: arm
0041aa38  04 00 40 e2                                      sub r0, r0, #4
0041aa3c  ff ff ff ea                                      b #0x41aa40

; FUNCTION 0x0041aa40, declared_size=428, range_size=428, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControlsD1Ev
; demangled: HUDControls::~HUDControls()
; decoder-mode: arm
0041aa40  98 31 9f e5                                      ldr r3, [pc, #0x198]
0041aa44  98 21 9f e5                                      ldr r2, [pc, #0x198]
0041aa48  98 11 9f e5                                      ldr r1, [pc, #0x198]
0041aa4c  03 30 8f e0                                      add r3, pc, r3
0041aa50  70 40 2d e9                                      push {r4, r5, r6, lr}
0041aa54  02 20 93 e7                                      ldr r2, [r3, r2]
0041aa58  01 50 93 e7                                      ldr r5, [r3, r1]
0041aa5c  00 40 a0 e1                                      mov r4, r0
0041aa60  24 10 82 e2                                      add r1, r2, #0x24
0041aa64  08 20 82 e2                                      add r2, r2, #8
0041aa68  00 20 80 e5                                      str r2, [r0]
0041aa6c  04 10 80 e5                                      str r1, [r0, #4]
0041aa70  14 00 95 e5                                      ldr r0, [r5, #0x14]
0041aa74  00 00 50 e3                                      cmp r0, #0
0041aa78  06 00 00 0a                                      beq #0x41aa98
0041aa7c  04 10 a0 e3                                      mov r1, #4
0041aa80  04 20 a0 e1                                      mov r2, r4
0041aa84  a4 75 fc eb                                      bl #0x33811c
0041aa88  14 00 95 e5                                      ldr r0, [r5, #0x14]
0041aa8c  05 10 a0 e3                                      mov r1, #5
0041aa90  04 20 a0 e1                                      mov r2, r4
0041aa94  a0 75 fc eb                                      bl #0x33811c
0041aa98  04 00 a0 e1                                      mov r0, r4
0041aa9c  e7 f5 ff eb                                      bl #0x418240
0041aaa0  62 0e 84 e2                                      add r0, r4, #0x620
0041aaa4  08 00 80 e2                                      add r0, r0, #8
0041aaa8  d3 ff ff eb                                      bl #0x41a9fc
0041aaac  5f 0e 84 e2                                      add r0, r4, #0x5f0
0041aab0  08 00 80 e2                                      add r0, r0, #8
0041aab4  d0 ff ff eb                                      bl #0x41a9fc
0041aab8  17 0d 84 e2                                      add r0, r4, #0x5c0
0041aabc  08 00 80 e2                                      add r0, r0, #8
0041aac0  cd ff ff eb                                      bl #0x41a9fc
0041aac4  59 0e 84 e2                                      add r0, r4, #0x590
0041aac8  08 00 80 e2                                      add r0, r0, #8
0041aacc  ca ff ff eb                                      bl #0x41a9fc
0041aad0  56 0e 84 e2                                      add r0, r4, #0x560
0041aad4  08 00 80 e2                                      add r0, r0, #8
0041aad8  c7 ff ff eb                                      bl #0x41a9fc
0041aadc  53 0e 84 e2                                      add r0, r4, #0x530
0041aae0  08 00 80 e2                                      add r0, r0, #8
0041aae4  c4 ff ff eb                                      bl #0x41a9fc
0041aae8  05 0c 84 e2                                      add r0, r4, #0x500
0041aaec  08 00 80 e2                                      add r0, r0, #8
0041aaf0  c1 ff ff eb                                      bl #0x41a9fc
0041aaf4  4d 0e 84 e2                                      add r0, r4, #0x4d0
0041aaf8  08 00 80 e2                                      add r0, r0, #8
0041aafc  be ff ff eb                                      bl #0x41a9fc
0041ab00  4a 0e 84 e2                                      add r0, r4, #0x4a0
0041ab04  08 00 80 e2                                      add r0, r0, #8
0041ab08  bb ff ff eb                                      bl #0x41a9fc
0041ab0c  47 0e 84 e2                                      add r0, r4, #0x470
0041ab10  08 00 80 e2                                      add r0, r0, #8
0041ab14  b8 ff ff eb                                      bl #0x41a9fc
0041ab18  11 0d 84 e2                                      add r0, r4, #0x440
0041ab1c  08 00 80 e2                                      add r0, r0, #8
0041ab20  b5 ff ff eb                                      bl #0x41a9fc
0041ab24  41 0e 84 e2                                      add r0, r4, #0x410
0041ab28  08 00 80 e2                                      add r0, r0, #8
0041ab2c  b2 ff ff eb                                      bl #0x41a9fc
0041ab30  fa 0f 84 e2                                      add r0, r4, #0x3e8
0041ab34  b0 ff ff eb                                      bl #0x41a9fc
0041ab38  ee 0f 84 e2                                      add r0, r4, #0x3b8
0041ab3c  ae ff ff eb                                      bl #0x41a9fc
0041ab40  e2 0f 84 e2                                      add r0, r4, #0x388
0041ab44  ac ff ff eb                                      bl #0x41a9fc
0041ab48  d6 0f 84 e2                                      add r0, r4, #0x358
0041ab4c  aa ff ff eb                                      bl #0x41a9fc
0041ab50  ca 0f 84 e2                                      add r0, r4, #0x328
0041ab54  a8 ff ff eb                                      bl #0x41a9fc
0041ab58  be 0f 84 e2                                      add r0, r4, #0x2f8
0041ab5c  a6 ff ff eb                                      bl #0x41a9fc
0041ab60  b2 0f 84 e2                                      add r0, r4, #0x2c8
0041ab64  a4 ff ff eb                                      bl #0x41a9fc
0041ab68  a6 0f 84 e2                                      add r0, r4, #0x298
0041ab6c  a2 ff ff eb                                      bl #0x41a9fc
0041ab70  9a 0f 84 e2                                      add r0, r4, #0x268
0041ab74  a0 ff ff eb                                      bl #0x41a9fc
0041ab78  8e 0f 84 e2                                      add r0, r4, #0x238
0041ab7c  9e ff ff eb                                      bl #0x41a9fc
0041ab80  82 0f 84 e2                                      add r0, r4, #0x208
0041ab84  9c ff ff eb                                      bl #0x41a9fc
0041ab88  76 0f 84 e2                                      add r0, r4, #0x1d8
0041ab8c  9a ff ff eb                                      bl #0x41a9fc
0041ab90  6a 0f 84 e2                                      add r0, r4, #0x1a8
0041ab94  98 ff ff eb                                      bl #0x41a9fc
0041ab98  5e 0f 84 e2                                      add r0, r4, #0x178
0041ab9c  96 ff ff eb                                      bl #0x41a9fc
0041aba0  52 0f 84 e2                                      add r0, r4, #0x148
0041aba4  94 ff ff eb                                      bl #0x41a9fc
0041aba8  46 0f 84 e2                                      add r0, r4, #0x118
0041abac  92 ff ff eb                                      bl #0x41a9fc
0041abb0  e8 00 84 e2                                      add r0, r4, #0xe8
0041abb4  90 ff ff eb                                      bl #0x41a9fc
0041abb8  b8 00 84 e2                                      add r0, r4, #0xb8
0041abbc  8e ff ff eb                                      bl #0x41a9fc
0041abc0  88 00 84 e2                                      add r0, r4, #0x88
0041abc4  8c ff ff eb                                      bl #0x41a9fc
0041abc8  4c 00 84 e2                                      add r0, r4, #0x4c
0041abcc  8a ff ff eb                                      bl #0x41a9fc
0041abd0  1c 00 84 e2                                      add r0, r4, #0x1c
0041abd4  88 ff ff eb                                      bl #0x41a9fc
0041abd8  04 00 a0 e1                                      mov r0, r4
0041abdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041abe0  44 a0 57 00 40 27 00 00 f4 37 00 00              .byte 0x44, 0xa0, 0x57, 0x00, 0x40, 0x27, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0041abec, declared_size=8, range_size=8, mode=arm
; class-group: HUDControls
; alias: _ZThn4_N11HUDControlsD0Ev
; demangled: non-virtual thunk to HUDControls::~HUDControls()
; decoder-mode: arm
0041abec  04 00 40 e2                                      sub r0, r0, #4
0041abf0  ff ff ff ea                                      b #0x41abf4

; FUNCTION 0x0041abf4, declared_size=28, range_size=28, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControlsD0Ev
; demangled: HUDControls::~HUDControls()
; decoder-mode: arm
0041abf4  10 40 2d e9                                      push {r4, lr}
0041abf8  00 40 a0 e1                                      mov r4, r0
0041abfc  8f ff ff eb                                      bl #0x41aa40
0041ac00  04 00 a0 e1                                      mov r0, r4
0041ac04  0d d6 fb eb                                      bl #0x310440
0041ac08  04 00 a0 e1                                      mov r0, r4
0041ac0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0041ac10, declared_size=428, range_size=428, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControlsD2Ev
; demangled: HUDControls::~HUDControls()
; decoder-mode: arm
0041ac10  98 31 9f e5                                      ldr r3, [pc, #0x198]
0041ac14  98 21 9f e5                                      ldr r2, [pc, #0x198]
0041ac18  98 11 9f e5                                      ldr r1, [pc, #0x198]
0041ac1c  03 30 8f e0                                      add r3, pc, r3
0041ac20  70 40 2d e9                                      push {r4, r5, r6, lr}
0041ac24  02 20 93 e7                                      ldr r2, [r3, r2]
0041ac28  01 50 93 e7                                      ldr r5, [r3, r1]
0041ac2c  00 40 a0 e1                                      mov r4, r0
0041ac30  24 10 82 e2                                      add r1, r2, #0x24
0041ac34  08 20 82 e2                                      add r2, r2, #8
0041ac38  00 20 80 e5                                      str r2, [r0]
0041ac3c  04 10 80 e5                                      str r1, [r0, #4]
0041ac40  14 00 95 e5                                      ldr r0, [r5, #0x14]
0041ac44  00 00 50 e3                                      cmp r0, #0
0041ac48  06 00 00 0a                                      beq #0x41ac68
0041ac4c  04 10 a0 e3                                      mov r1, #4
0041ac50  04 20 a0 e1                                      mov r2, r4
0041ac54  30 75 fc eb                                      bl #0x33811c
0041ac58  14 00 95 e5                                      ldr r0, [r5, #0x14]
0041ac5c  05 10 a0 e3                                      mov r1, #5
0041ac60  04 20 a0 e1                                      mov r2, r4
0041ac64  2c 75 fc eb                                      bl #0x33811c
0041ac68  04 00 a0 e1                                      mov r0, r4
0041ac6c  73 f5 ff eb                                      bl #0x418240
0041ac70  62 0e 84 e2                                      add r0, r4, #0x620
0041ac74  08 00 80 e2                                      add r0, r0, #8
0041ac78  5f ff ff eb                                      bl #0x41a9fc
0041ac7c  5f 0e 84 e2                                      add r0, r4, #0x5f0
0041ac80  08 00 80 e2                                      add r0, r0, #8
0041ac84  5c ff ff eb                                      bl #0x41a9fc
0041ac88  17 0d 84 e2                                      add r0, r4, #0x5c0
0041ac8c  08 00 80 e2                                      add r0, r0, #8
0041ac90  59 ff ff eb                                      bl #0x41a9fc
0041ac94  59 0e 84 e2                                      add r0, r4, #0x590
0041ac98  08 00 80 e2                                      add r0, r0, #8
0041ac9c  56 ff ff eb                                      bl #0x41a9fc
0041aca0  56 0e 84 e2                                      add r0, r4, #0x560
0041aca4  08 00 80 e2                                      add r0, r0, #8
0041aca8  53 ff ff eb                                      bl #0x41a9fc
0041acac  53 0e 84 e2                                      add r0, r4, #0x530
0041acb0  08 00 80 e2                                      add r0, r0, #8
0041acb4  50 ff ff eb                                      bl #0x41a9fc
0041acb8  05 0c 84 e2                                      add r0, r4, #0x500
0041acbc  08 00 80 e2                                      add r0, r0, #8
0041acc0  4d ff ff eb                                      bl #0x41a9fc
0041acc4  4d 0e 84 e2                                      add r0, r4, #0x4d0
0041acc8  08 00 80 e2                                      add r0, r0, #8
0041accc  4a ff ff eb                                      bl #0x41a9fc
0041acd0  4a 0e 84 e2                                      add r0, r4, #0x4a0
0041acd4  08 00 80 e2                                      add r0, r0, #8
0041acd8  47 ff ff eb                                      bl #0x41a9fc
0041acdc  47 0e 84 e2                                      add r0, r4, #0x470
0041ace0  08 00 80 e2                                      add r0, r0, #8
0041ace4  44 ff ff eb                                      bl #0x41a9fc
0041ace8  11 0d 84 e2                                      add r0, r4, #0x440
0041acec  08 00 80 e2                                      add r0, r0, #8
0041acf0  41 ff ff eb                                      bl #0x41a9fc
0041acf4  41 0e 84 e2                                      add r0, r4, #0x410
0041acf8  08 00 80 e2                                      add r0, r0, #8
0041acfc  3e ff ff eb                                      bl #0x41a9fc
0041ad00  fa 0f 84 e2                                      add r0, r4, #0x3e8
0041ad04  3c ff ff eb                                      bl #0x41a9fc
0041ad08  ee 0f 84 e2                                      add r0, r4, #0x3b8
0041ad0c  3a ff ff eb                                      bl #0x41a9fc
0041ad10  e2 0f 84 e2                                      add r0, r4, #0x388
0041ad14  38 ff ff eb                                      bl #0x41a9fc
0041ad18  d6 0f 84 e2                                      add r0, r4, #0x358
0041ad1c  36 ff ff eb                                      bl #0x41a9fc
0041ad20  ca 0f 84 e2                                      add r0, r4, #0x328
0041ad24  34 ff ff eb                                      bl #0x41a9fc
0041ad28  be 0f 84 e2                                      add r0, r4, #0x2f8
0041ad2c  32 ff ff eb                                      bl #0x41a9fc
0041ad30  b2 0f 84 e2                                      add r0, r4, #0x2c8
0041ad34  30 ff ff eb                                      bl #0x41a9fc
0041ad38  a6 0f 84 e2                                      add r0, r4, #0x298
0041ad3c  2e ff ff eb                                      bl #0x41a9fc
0041ad40  9a 0f 84 e2                                      add r0, r4, #0x268
0041ad44  2c ff ff eb                                      bl #0x41a9fc
0041ad48  8e 0f 84 e2                                      add r0, r4, #0x238
0041ad4c  2a ff ff eb                                      bl #0x41a9fc
0041ad50  82 0f 84 e2                                      add r0, r4, #0x208
0041ad54  28 ff ff eb                                      bl #0x41a9fc
0041ad58  76 0f 84 e2                                      add r0, r4, #0x1d8
0041ad5c  26 ff ff eb                                      bl #0x41a9fc
0041ad60  6a 0f 84 e2                                      add r0, r4, #0x1a8
0041ad64  24 ff ff eb                                      bl #0x41a9fc
0041ad68  5e 0f 84 e2                                      add r0, r4, #0x178
0041ad6c  22 ff ff eb                                      bl #0x41a9fc
0041ad70  52 0f 84 e2                                      add r0, r4, #0x148
0041ad74  20 ff ff eb                                      bl #0x41a9fc
0041ad78  46 0f 84 e2                                      add r0, r4, #0x118
0041ad7c  1e ff ff eb                                      bl #0x41a9fc
0041ad80  e8 00 84 e2                                      add r0, r4, #0xe8
0041ad84  1c ff ff eb                                      bl #0x41a9fc
0041ad88  b8 00 84 e2                                      add r0, r4, #0xb8
0041ad8c  1a ff ff eb                                      bl #0x41a9fc
0041ad90  88 00 84 e2                                      add r0, r4, #0x88
0041ad94  18 ff ff eb                                      bl #0x41a9fc
0041ad98  4c 00 84 e2                                      add r0, r4, #0x4c
0041ad9c  16 ff ff eb                                      bl #0x41a9fc
0041ada0  1c 00 84 e2                                      add r0, r4, #0x1c
0041ada4  14 ff ff eb                                      bl #0x41a9fc
0041ada8  04 00 a0 e1                                      mov r0, r4
0041adac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041adb0  74 9e 57 00 40 27 00 00 f4 37 00 00              .byte 0x74, 0x9e, 0x57, 0x00, 0x40, 0x27, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0041af1c, declared_size=512, range_size=512, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControlsC1Ev
; demangled: HUDControls::HUDControls()
; decoder-mode: arm
0041af1c  70 40 2d e9                                      push {r4, r5, r6, lr}
0041af20  e8 61 9f e5                                      ldr r6, [pc, #0x1e8]
0041af24  e8 31 9f e5                                      ldr r3, [pc, #0x1e8]
0041af28  00 50 a0 e3                                      mov r5, #0
0041af2c  06 60 8f e0                                      add r6, pc, r6
0041af30  03 30 96 e7                                      ldr r3, [r6, r3]
0041af34  00 40 a0 e1                                      mov r4, r0
0041af38  08 50 c0 e5                                      strb r5, [r0, #8]
0041af3c  24 20 83 e2                                      add r2, r3, #0x24
0041af40  08 30 83 e2                                      add r3, r3, #8
0041af44  04 20 80 e5                                      str r2, [r0, #4]
0041af48  00 30 80 e5                                      str r3, [r0]
0041af4c  09 50 c0 e5                                      strb r5, [r0, #9]
0041af50  0a 50 c0 e5                                      strb r5, [r0, #0xa]
0041af54  0c 50 80 e5                                      str r5, [r0, #0xc]
0041af58  10 50 80 e5                                      str r5, [r0, #0x10]
0041af5c  14 50 80 e5                                      str r5, [r0, #0x14]
0041af60  18 50 80 e5                                      str r5, [r0, #0x18]
0041af64  1c 00 80 e2                                      add r0, r0, #0x1c
0041af68  df ff ff eb                                      bl #0x41aeec
0041af6c  4c 00 84 e2                                      add r0, r4, #0x4c
0041af70  dd ff ff eb                                      bl #0x41aeec
0041af74  00 30 e0 e3                                      mvn r3, #0
0041af78  80 30 84 e5                                      str r3, [r4, #0x80]
0041af7c  7c 30 84 e5                                      str r3, [r4, #0x7c]
0041af80  84 50 c4 e5                                      strb r5, [r4, #0x84]
0041af84  88 00 84 e2                                      add r0, r4, #0x88
0041af88  d7 ff ff eb                                      bl #0x41aeec
0041af8c  b8 00 84 e2                                      add r0, r4, #0xb8
0041af90  d5 ff ff eb                                      bl #0x41aeec
0041af94  e8 00 84 e2                                      add r0, r4, #0xe8
0041af98  d3 ff ff eb                                      bl #0x41aeec
0041af9c  46 0f 84 e2                                      add r0, r4, #0x118
0041afa0  d1 ff ff eb                                      bl #0x41aeec
0041afa4  52 0f 84 e2                                      add r0, r4, #0x148
0041afa8  cf ff ff eb                                      bl #0x41aeec
0041afac  5e 0f 84 e2                                      add r0, r4, #0x178
0041afb0  cd ff ff eb                                      bl #0x41aeec
0041afb4  6a 0f 84 e2                                      add r0, r4, #0x1a8
0041afb8  cb ff ff eb                                      bl #0x41aeec
0041afbc  76 0f 84 e2                                      add r0, r4, #0x1d8
0041afc0  c9 ff ff eb                                      bl #0x41aeec
0041afc4  82 0f 84 e2                                      add r0, r4, #0x208
0041afc8  c7 ff ff eb                                      bl #0x41aeec
0041afcc  8e 0f 84 e2                                      add r0, r4, #0x238
0041afd0  c5 ff ff eb                                      bl #0x41aeec
0041afd4  9a 0f 84 e2                                      add r0, r4, #0x268
0041afd8  c3 ff ff eb                                      bl #0x41aeec
0041afdc  a6 0f 84 e2                                      add r0, r4, #0x298
0041afe0  c1 ff ff eb                                      bl #0x41aeec
0041afe4  b2 0f 84 e2                                      add r0, r4, #0x2c8
0041afe8  bf ff ff eb                                      bl #0x41aeec
0041afec  be 0f 84 e2                                      add r0, r4, #0x2f8
0041aff0  bd ff ff eb                                      bl #0x41aeec
0041aff4  ca 0f 84 e2                                      add r0, r4, #0x328
0041aff8  bb ff ff eb                                      bl #0x41aeec
0041affc  d6 0f 84 e2                                      add r0, r4, #0x358
0041b000  b9 ff ff eb                                      bl #0x41aeec
0041b004  e2 0f 84 e2                                      add r0, r4, #0x388
0041b008  b7 ff ff eb                                      bl #0x41aeec
0041b00c  ee 0f 84 e2                                      add r0, r4, #0x3b8
0041b010  b5 ff ff eb                                      bl #0x41aeec
0041b014  fa 0f 84 e2                                      add r0, r4, #0x3e8
0041b018  b3 ff ff eb                                      bl #0x41aeec
0041b01c  41 0e 84 e2                                      add r0, r4, #0x410
0041b020  08 00 80 e2                                      add r0, r0, #8
0041b024  b0 ff ff eb                                      bl #0x41aeec
0041b028  11 0d 84 e2                                      add r0, r4, #0x440
0041b02c  08 00 80 e2                                      add r0, r0, #8
0041b030  ad ff ff eb                                      bl #0x41aeec
0041b034  47 0e 84 e2                                      add r0, r4, #0x470
0041b038  08 00 80 e2                                      add r0, r0, #8
0041b03c  aa ff ff eb                                      bl #0x41aeec
0041b040  4a 0e 84 e2                                      add r0, r4, #0x4a0
0041b044  08 00 80 e2                                      add r0, r0, #8
0041b048  a7 ff ff eb                                      bl #0x41aeec
0041b04c  4d 0e 84 e2                                      add r0, r4, #0x4d0
0041b050  08 00 80 e2                                      add r0, r0, #8
0041b054  a4 ff ff eb                                      bl #0x41aeec
0041b058  05 0c 84 e2                                      add r0, r4, #0x500
0041b05c  08 00 80 e2                                      add r0, r0, #8
0041b060  a1 ff ff eb                                      bl #0x41aeec
0041b064  53 0e 84 e2                                      add r0, r4, #0x530
0041b068  08 00 80 e2                                      add r0, r0, #8
0041b06c  9e ff ff eb                                      bl #0x41aeec
0041b070  56 0e 84 e2                                      add r0, r4, #0x560
0041b074  08 00 80 e2                                      add r0, r0, #8
0041b078  9b ff ff eb                                      bl #0x41aeec
0041b07c  59 0e 84 e2                                      add r0, r4, #0x590
0041b080  08 00 80 e2                                      add r0, r0, #8
0041b084  98 ff ff eb                                      bl #0x41aeec
0041b088  17 0d 84 e2                                      add r0, r4, #0x5c0
0041b08c  08 00 80 e2                                      add r0, r0, #8
0041b090  95 ff ff eb                                      bl #0x41aeec
0041b094  5f 0e 84 e2                                      add r0, r4, #0x5f0
0041b098  08 00 80 e2                                      add r0, r0, #8
0041b09c  92 ff ff eb                                      bl #0x41aeec
0041b0a0  62 0e 84 e2                                      add r0, r4, #0x620
0041b0a4  08 00 80 e2                                      add r0, r0, #8
0041b0a8  8f ff ff eb                                      bl #0x41aeec
0041b0ac  64 20 9f e5                                      ldr r2, [pc, #0x64]
0041b0b0  00 30 a0 e3                                      mov r3, #0
0041b0b4  68 36 84 e5                                      str r3, [r4, #0x668]
0041b0b8  02 60 96 e7                                      ldr r6, [r6, r2]
0041b0bc  5c 36 84 e5                                      str r3, [r4, #0x65c]
0041b0c0  60 36 84 e5                                      str r3, [r4, #0x660]
0041b0c4  64 36 84 e5                                      str r3, [r4, #0x664]
0041b0c8  58 56 84 e5                                      str r5, [r4, #0x658]
0041b0cc  6c 56 c4 e5                                      strb r5, [r4, #0x66c]
0041b0d0  6d 56 c4 e5                                      strb r5, [r4, #0x66d]
0041b0d4  6e 56 c4 e5                                      strb r5, [r4, #0x66e]
0041b0d8  6f 56 c4 e5                                      strb r5, [r4, #0x66f]
0041b0dc  70 56 c4 e5                                      strb r5, [r4, #0x670]
0041b0e0  04 20 a0 e1                                      mov r2, r4
0041b0e4  05 30 a0 e1                                      mov r3, r5
0041b0e8  04 10 a0 e3                                      mov r1, #4
0041b0ec  14 00 96 e5                                      ldr r0, [r6, #0x14]
0041b0f0  2a 77 fc eb                                      bl #0x338da0
0041b0f4  14 00 96 e5                                      ldr r0, [r6, #0x14]
0041b0f8  05 30 a0 e1                                      mov r3, r5
0041b0fc  05 10 a0 e3                                      mov r1, #5
0041b100  04 20 a0 e1                                      mov r2, r4
0041b104  25 77 fc eb                                      bl #0x338da0
0041b108  04 00 a0 e1                                      mov r0, r4
0041b10c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041b110  64 9b 57 00 40 27 00 00 f4 37 00 00              .byte 0x64, 0x9b, 0x57, 0x00, 0x40, 0x27, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0041b11c, declared_size=136, range_size=136, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControls11GetInstanceEv
; demangled: HUDControls::GetInstance()
; decoder-mode: arm
0041b11c  70 40 2d e9                                      push {r4, r5, r6, lr}
0041b120  68 50 9f e5                                      ldr r5, [pc, #0x68]
0041b124  68 40 9f e5                                      ldr r4, [pc, #0x68]
0041b128  05 50 8f e0                                      add r5, pc, r5
0041b12c  14 30 95 e5                                      ldr r3, [r5, #0x14]
0041b130  04 40 8f e0                                      add r4, pc, r4
0041b134  01 00 13 e3                                      tst r3, #1
0041b138  03 00 00 0a                                      beq #0x41b14c
0041b13c  54 00 9f e5                                      ldr r0, [pc, #0x54]
0041b140  00 00 8f e0                                      add r0, pc, r0
0041b144  18 00 80 e2                                      add r0, r0, #0x18
0041b148  70 80 bd e8                                      pop {r4, r5, r6, pc}
0041b14c  14 60 85 e2                                      add r6, r5, #0x14
0041b150  06 00 a0 e1                                      mov r0, r6
0041b154  84 cd fb eb                                      bl #0x30e76c
0041b158  00 00 50 e3                                      cmp r0, #0
0041b15c  f6 ff ff 0a                                      beq #0x41b13c
0041b160  18 50 85 e2                                      add r5, r5, #0x18
0041b164  05 00 a0 e1                                      mov r0, r5
0041b168  6b ff ff eb                                      bl #0x41af1c
0041b16c  06 00 a0 e1                                      mov r0, r6
0041b170  31 ce fb eb                                      bl #0x30ea3c
0041b174  20 30 9f e5                                      ldr r3, [pc, #0x20]
0041b178  05 00 a0 e1                                      mov r0, r5
0041b17c  03 10 94 e7                                      ldr r1, [r4, r3]
0041b180  18 30 9f e5                                      ldr r3, [pc, #0x18]
0041b184  03 20 94 e7                                      ldr r2, [r4, r3]
0041b188  5d cc fb eb                                      bl #0x30e304
0041b18c  ea ff ff ea                                      b #0x41b13c
; mapping-symbol data/literal pool
0041b190  6c 85 58 00 60 99 57 00 54 85 58 00 b4 26 00 00  .byte 0x6c, 0x85, 0x58, 0x00, 0x60, 0x99, 0x57, 0x00, 0x54, 0x85, 0x58, 0x00, 0xb4, 0x26, 0x00, 0x00
0041b1a0  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0041b1a4, declared_size=512, range_size=512, mode=arm
; class-group: HUDControls
; alias: _ZN11HUDControlsC2Ev
; demangled: HUDControls::HUDControls()
; decoder-mode: arm
0041b1a4  70 40 2d e9                                      push {r4, r5, r6, lr}
0041b1a8  e8 61 9f e5                                      ldr r6, [pc, #0x1e8]
0041b1ac  e8 31 9f e5                                      ldr r3, [pc, #0x1e8]
0041b1b0  00 50 a0 e3                                      mov r5, #0
0041b1b4  06 60 8f e0                                      add r6, pc, r6
0041b1b8  03 30 96 e7                                      ldr r3, [r6, r3]
0041b1bc  00 40 a0 e1                                      mov r4, r0
0041b1c0  08 50 c0 e5                                      strb r5, [r0, #8]
0041b1c4  24 20 83 e2                                      add r2, r3, #0x24
0041b1c8  08 30 83 e2                                      add r3, r3, #8
0041b1cc  04 20 80 e5                                      str r2, [r0, #4]
0041b1d0  00 30 80 e5                                      str r3, [r0]
0041b1d4  09 50 c0 e5                                      strb r5, [r0, #9]
0041b1d8  0a 50 c0 e5                                      strb r5, [r0, #0xa]
0041b1dc  0c 50 80 e5                                      str r5, [r0, #0xc]
0041b1e0  10 50 80 e5                                      str r5, [r0, #0x10]
0041b1e4  14 50 80 e5                                      str r5, [r0, #0x14]
0041b1e8  18 50 80 e5                                      str r5, [r0, #0x18]
0041b1ec  1c 00 80 e2                                      add r0, r0, #0x1c
0041b1f0  3d ff ff eb                                      bl #0x41aeec
0041b1f4  4c 00 84 e2                                      add r0, r4, #0x4c
0041b1f8  3b ff ff eb                                      bl #0x41aeec
0041b1fc  00 30 e0 e3                                      mvn r3, #0
0041b200  80 30 84 e5                                      str r3, [r4, #0x80]
0041b204  7c 30 84 e5                                      str r3, [r4, #0x7c]
0041b208  84 50 c4 e5                                      strb r5, [r4, #0x84]
0041b20c  88 00 84 e2                                      add r0, r4, #0x88
0041b210  35 ff ff eb                                      bl #0x41aeec
0041b214  b8 00 84 e2                                      add r0, r4, #0xb8
0041b218  33 ff ff eb                                      bl #0x41aeec
0041b21c  e8 00 84 e2                                      add r0, r4, #0xe8
0041b220  31 ff ff eb                                      bl #0x41aeec
0041b224  46 0f 84 e2                                      add r0, r4, #0x118
0041b228  2f ff ff eb                                      bl #0x41aeec
0041b22c  52 0f 84 e2                                      add r0, r4, #0x148
0041b230  2d ff ff eb                                      bl #0x41aeec
0041b234  5e 0f 84 e2                                      add r0, r4, #0x178
0041b238  2b ff ff eb                                      bl #0x41aeec
0041b23c  6a 0f 84 e2                                      add r0, r4, #0x1a8
0041b240  29 ff ff eb                                      bl #0x41aeec
0041b244  76 0f 84 e2                                      add r0, r4, #0x1d8
0041b248  27 ff ff eb                                      bl #0x41aeec
0041b24c  82 0f 84 e2                                      add r0, r4, #0x208
0041b250  25 ff ff eb                                      bl #0x41aeec
0041b254  8e 0f 84 e2                                      add r0, r4, #0x238
0041b258  23 ff ff eb                                      bl #0x41aeec
0041b25c  9a 0f 84 e2                                      add r0, r4, #0x268
0041b260  21 ff ff eb                                      bl #0x41aeec
0041b264  a6 0f 84 e2                                      add r0, r4, #0x298
0041b268  1f ff ff eb                                      bl #0x41aeec
0041b26c  b2 0f 84 e2                                      add r0, r4, #0x2c8
0041b270  1d ff ff eb                                      bl #0x41aeec
0041b274  be 0f 84 e2                                      add r0, r4, #0x2f8
0041b278  1b ff ff eb                                      bl #0x41aeec
0041b27c  ca 0f 84 e2                                      add r0, r4, #0x328
0041b280  19 ff ff eb                                      bl #0x41aeec
0041b284  d6 0f 84 e2                                      add r0, r4, #0x358
0041b288  17 ff ff eb                                      bl #0x41aeec
0041b28c  e2 0f 84 e2                                      add r0, r4, #0x388
0041b290  15 ff ff eb                                      bl #0x41aeec
0041b294  ee 0f 84 e2                                      add r0, r4, #0x3b8
0041b298  13 ff ff eb                                      bl #0x41aeec
0041b29c  fa 0f 84 e2                                      add r0, r4, #0x3e8
0041b2a0  11 ff ff eb                                      bl #0x41aeec
0041b2a4  41 0e 84 e2                                      add r0, r4, #0x410
0041b2a8  08 00 80 e2                                      add r0, r0, #8
0041b2ac  0e ff ff eb                                      bl #0x41aeec
0041b2b0  11 0d 84 e2                                      add r0, r4, #0x440
0041b2b4  08 00 80 e2                                      add r0, r0, #8
0041b2b8  0b ff ff eb                                      bl #0x41aeec
0041b2bc  47 0e 84 e2                                      add r0, r4, #0x470
0041b2c0  08 00 80 e2                                      add r0, r0, #8
0041b2c4  08 ff ff eb                                      bl #0x41aeec
0041b2c8  4a 0e 84 e2                                      add r0, r4, #0x4a0
0041b2cc  08 00 80 e2                                      add r0, r0, #8
0041b2d0  05 ff ff eb                                      bl #0x41aeec
0041b2d4  4d 0e 84 e2                                      add r0, r4, #0x4d0
0041b2d8  08 00 80 e2                                      add r0, r0, #8
0041b2dc  02 ff ff eb                                      bl #0x41aeec
0041b2e0  05 0c 84 e2                                      add r0, r4, #0x500
0041b2e4  08 00 80 e2                                      add r0, r0, #8
0041b2e8  ff fe ff eb                                      bl #0x41aeec
0041b2ec  53 0e 84 e2                                      add r0, r4, #0x530
0041b2f0  08 00 80 e2                                      add r0, r0, #8
0041b2f4  fc fe ff eb                                      bl #0x41aeec
0041b2f8  56 0e 84 e2                                      add r0, r4, #0x560
0041b2fc  08 00 80 e2                                      add r0, r0, #8
0041b300  f9 fe ff eb                                      bl #0x41aeec
0041b304  59 0e 84 e2                                      add r0, r4, #0x590
0041b308  08 00 80 e2                                      add r0, r0, #8
0041b30c  f6 fe ff eb                                      bl #0x41aeec
0041b310  17 0d 84 e2                                      add r0, r4, #0x5c0
0041b314  08 00 80 e2                                      add r0, r0, #8
0041b318  f3 fe ff eb                                      bl #0x41aeec
0041b31c  5f 0e 84 e2                                      add r0, r4, #0x5f0
0041b320  08 00 80 e2                                      add r0, r0, #8
0041b324  f0 fe ff eb                                      bl #0x41aeec
0041b328  62 0e 84 e2                                      add r0, r4, #0x620
0041b32c  08 00 80 e2                                      add r0, r0, #8
0041b330  ed fe ff eb                                      bl #0x41aeec
0041b334  64 20 9f e5                                      ldr r2, [pc, #0x64]
0041b338  00 30 a0 e3                                      mov r3, #0
0041b33c  68 36 84 e5                                      str r3, [r4, #0x668]
0041b340  02 60 96 e7                                      ldr r6, [r6, r2]
0041b344  5c 36 84 e5                                      str r3, [r4, #0x65c]
0041b348  60 36 84 e5                                      str r3, [r4, #0x660]
0041b34c  64 36 84 e5                                      str r3, [r4, #0x664]
0041b350  58 56 84 e5                                      str r5, [r4, #0x658]
0041b354  6c 56 c4 e5                                      strb r5, [r4, #0x66c]
0041b358  6d 56 c4 e5                                      strb r5, [r4, #0x66d]
0041b35c  6e 56 c4 e5                                      strb r5, [r4, #0x66e]
0041b360  6f 56 c4 e5                                      strb r5, [r4, #0x66f]
0041b364  70 56 c4 e5                                      strb r5, [r4, #0x670]
0041b368  04 20 a0 e1                                      mov r2, r4
0041b36c  05 30 a0 e1                                      mov r3, r5
0041b370  04 10 a0 e3                                      mov r1, #4
0041b374  14 00 96 e5                                      ldr r0, [r6, #0x14]
0041b378  88 76 fc eb                                      bl #0x338da0
0041b37c  14 00 96 e5                                      ldr r0, [r6, #0x14]
0041b380  05 30 a0 e1                                      mov r3, r5
0041b384  05 10 a0 e3                                      mov r1, #5
0041b388  04 20 a0 e1                                      mov r2, r4
0041b38c  83 76 fc eb                                      bl #0x338da0
0041b390  04 00 a0 e1                                      mov r0, r4
0041b394  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041b398  dc 98 57 00 40 27 00 00 f4 37 00 00              .byte 0xdc, 0x98, 0x57, 0x00, 0x40, 0x27, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
