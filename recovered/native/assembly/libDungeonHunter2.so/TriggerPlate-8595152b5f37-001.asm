; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039a394, declared_size=8, range_size=8, mode=arm
; class-group: TriggerPlate
; alias: _ZNK12TriggerPlate10IsAnimatedEv
; demangled: TriggerPlate::IsAnimated() const
; decoder-mode: arm
0039a394  01 00 a0 e3                                      mov r0, #1
0039a398  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039a39c, declared_size=8, range_size=8, mode=arm
; class-group: TriggerPlate
; alias: _ZNK12TriggerPlate11IsUpdatableEv
; demangled: TriggerPlate::IsUpdatable() const
; decoder-mode: arm
0039a39c  01 00 a0 e3                                      mov r0, #1
0039a3a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039a3a4, declared_size=52, range_size=52, mode=arm
; class-group: TriggerPlate
; alias: _ZNK12TriggerPlate9GetVisualEv
; demangled: TriggerPlate::GetVisual() const
; decoder-mode: arm
0039a3a4  30 07 90 e5                                      ldr r0, [r0, #0x730]
0039a3a8  20 30 9f e5                                      ldr r3, [pc, #0x20]
0039a3ac  01 00 70 e3                                      cmn r0, #1
0039a3b0  03 30 8f e0                                      add r3, pc, r3
0039a3b4  1e ff 2f 01                                      bxeq lr
0039a3b8  14 20 9f e5                                      ldr r2, [pc, #0x14]
0039a3bc  02 30 93 e7                                      ldr r3, [r3, r2]
0039a3c0  00 30 93 e5                                      ldr r3, [r3]
0039a3c4  80 02 83 e0                                      add r0, r3, r0, lsl #5
0039a3c8  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0039a3cc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039a3d0  e0 a6 5f 00 70 0a 00 00                          .byte 0xe0, 0xa6, 0x5f, 0x00, 0x70, 0x0a, 0x00, 0x00

; FUNCTION 0x0039a3d8, declared_size=52, range_size=52, mode=arm
; class-group: TriggerPlate
; alias: _ZNK12TriggerPlate10GetSoundOnEv
; demangled: TriggerPlate::GetSoundOn() const
; decoder-mode: arm
0039a3d8  30 07 90 e5                                      ldr r0, [r0, #0x730]
0039a3dc  20 30 9f e5                                      ldr r3, [pc, #0x20]
0039a3e0  01 00 70 e3                                      cmn r0, #1
0039a3e4  03 30 8f e0                                      add r3, pc, r3
0039a3e8  1e ff 2f 01                                      bxeq lr
0039a3ec  14 20 9f e5                                      ldr r2, [pc, #0x14]
0039a3f0  02 30 93 e7                                      ldr r3, [r3, r2]
0039a3f4  00 30 93 e5                                      ldr r3, [r3]
0039a3f8  80 02 83 e0                                      add r0, r3, r0, lsl #5
0039a3fc  10 00 90 e5                                      ldr r0, [r0, #0x10]
0039a400  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039a404  ac a6 5f 00 70 0a 00 00                          .byte 0xac, 0xa6, 0x5f, 0x00, 0x70, 0x0a, 0x00, 0x00

; FUNCTION 0x0039a40c, declared_size=52, range_size=52, mode=arm
; class-group: TriggerPlate
; alias: _ZNK12TriggerPlate11GetSoundOffEv
; demangled: TriggerPlate::GetSoundOff() const
; decoder-mode: arm
0039a40c  30 07 90 e5                                      ldr r0, [r0, #0x730]
0039a410  20 30 9f e5                                      ldr r3, [pc, #0x20]
0039a414  01 00 70 e3                                      cmn r0, #1
0039a418  03 30 8f e0                                      add r3, pc, r3
0039a41c  1e ff 2f 01                                      bxeq lr
0039a420  14 20 9f e5                                      ldr r2, [pc, #0x14]
0039a424  02 30 93 e7                                      ldr r3, [r3, r2]
0039a428  00 30 93 e5                                      ldr r3, [r3]
0039a42c  80 02 83 e0                                      add r0, r3, r0, lsl #5
0039a430  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0039a434  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039a438  78 a6 5f 00 70 0a 00 00                          .byte 0x78, 0xa6, 0x5f, 0x00, 0x70, 0x0a, 0x00, 0x00

; FUNCTION 0x0039a440, declared_size=52, range_size=52, mode=arm
; class-group: TriggerPlate
; alias: _ZNK12TriggerPlate14GetTriggerTypeEv
; demangled: TriggerPlate::GetTriggerType() const
; decoder-mode: arm
0039a440  30 07 90 e5                                      ldr r0, [r0, #0x730]
0039a444  20 30 9f e5                                      ldr r3, [pc, #0x20]
0039a448  01 00 70 e3                                      cmn r0, #1
0039a44c  03 30 8f e0                                      add r3, pc, r3
0039a450  1e ff 2f 01                                      bxeq lr
0039a454  14 20 9f e5                                      ldr r2, [pc, #0x14]
0039a458  02 30 93 e7                                      ldr r3, [r3, r2]
0039a45c  00 30 93 e5                                      ldr r3, [r3]
0039a460  80 02 83 e0                                      add r0, r3, r0, lsl #5
0039a464  18 00 90 e5                                      ldr r0, [r0, #0x18]
0039a468  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039a46c  44 a6 5f 00 70 0a 00 00                          .byte 0x44, 0xa6, 0x5f, 0x00, 0x70, 0x0a, 0x00, 0x00

; FUNCTION 0x0039a474, declared_size=52, range_size=52, mode=arm
; class-group: TriggerPlate
; alias: _ZNK12TriggerPlate11GetBehaviorEv
; demangled: TriggerPlate::GetBehavior() const
; decoder-mode: arm
0039a474  30 07 90 e5                                      ldr r0, [r0, #0x730]
0039a478  20 30 9f e5                                      ldr r3, [pc, #0x20]
0039a47c  01 00 70 e3                                      cmn r0, #1
0039a480  03 30 8f e0                                      add r3, pc, r3
0039a484  1e ff 2f 01                                      bxeq lr
0039a488  14 20 9f e5                                      ldr r2, [pc, #0x14]
0039a48c  02 30 93 e7                                      ldr r3, [r3, r2]
0039a490  00 30 93 e5                                      ldr r3, [r3]
0039a494  80 02 83 e0                                      add r0, r3, r0, lsl #5
0039a498  04 00 90 e5                                      ldr r0, [r0, #4]
0039a49c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039a4a0  10 a6 5f 00 70 0a 00 00                          .byte 0x10, 0xa6, 0x5f, 0x00, 0x70, 0x0a, 0x00, 0x00

; FUNCTION 0x0039a4a8, declared_size=52, range_size=52, mode=arm
; class-group: TriggerPlate
; alias: _ZNK12TriggerPlate17GetSpecificObjectEv
; demangled: TriggerPlate::GetSpecificObject() const
; decoder-mode: arm
0039a4a8  30 07 90 e5                                      ldr r0, [r0, #0x730]
0039a4ac  20 30 9f e5                                      ldr r3, [pc, #0x20]
0039a4b0  01 00 70 e3                                      cmn r0, #1
0039a4b4  03 30 8f e0                                      add r3, pc, r3
0039a4b8  1e ff 2f 01                                      bxeq lr
0039a4bc  14 20 9f e5                                      ldr r2, [pc, #0x14]
0039a4c0  02 30 93 e7                                      ldr r3, [r3, r2]
0039a4c4  00 30 93 e5                                      ldr r3, [r3]
0039a4c8  80 02 83 e0                                      add r0, r3, r0, lsl #5
0039a4cc  14 00 90 e5                                      ldr r0, [r0, #0x14]
0039a4d0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039a4d4  dc a5 5f 00 70 0a 00 00                          .byte 0xdc, 0xa5, 0x5f, 0x00, 0x70, 0x0a, 0x00, 0x00

; FUNCTION 0x0039a510, declared_size=220, range_size=220, mode=arm
; class-group: TriggerPlate
; alias: _ZNK12TriggerPlate18IsObjectActivatingEi
; demangled: TriggerPlate::IsObjectActivating(int) const
; decoder-mode: arm
0039a510  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0039a514  01 00 71 e3                                      cmn r1, #1
0039a518  14 d0 4d e2                                      sub sp, sp, #0x14
0039a51c  01 70 a0 e1                                      mov r7, r1
0039a520  1a 00 00 0a                                      beq #0x39a590
0039a524  90 43 90 e5                                      ldr r4, [r0, #0x390]
0039a528  e2 6f 80 e2                                      add r6, r0, #0x388
0039a52c  04 00 56 e1                                      cmp r6, r4
0039a530  16 00 00 0a                                      beq #0x39a590
0039a534  04 50 8d e2                                      add r5, sp, #4
0039a538  10 10 94 e5                                      ldr r1, [r4, #0x10]
0039a53c  05 00 a0 e1                                      mov r0, r5
0039a540  f9 8d fe eb                                      bl #0x33dd2c
0039a544  05 00 a0 e1                                      mov r0, r5
0039a548  00 10 a0 e3                                      mov r1, #0
0039a54c  1b 96 fe eb                                      bl #0x33fdc0
0039a550  00 30 50 e2                                      subs r3, r0, #0
0039a554  02 00 00 0a                                      beq #0x39a564
0039a558  f4 20 93 e5                                      ldr r2, [r3, #0xf4]
0039a55c  06 00 52 e3                                      cmp r2, #6
0039a560  0c 00 00 0a                                      beq #0x39a598
0039a564  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0039a568  00 00 52 e3                                      cmp r2, #0
0039a56c  01 00 00 1a                                      bne #0x39a578
0039a570  10 00 00 ea                                      b #0x39a5b8
0039a574  03 20 a0 e1                                      mov r2, r3
0039a578  08 30 92 e5                                      ldr r3, [r2, #8]
0039a57c  00 00 53 e3                                      cmp r3, #0
0039a580  fb ff ff 1a                                      bne #0x39a574
0039a584  02 40 a0 e1                                      mov r4, r2
0039a588  04 00 56 e1                                      cmp r6, r4
0039a58c  e9 ff ff 1a                                      bne #0x39a538
0039a590  00 00 a0 e3                                      mov r0, #0
0039a594  05 00 00 ea                                      b #0x39a5b0
0039a598  00 30 93 e5                                      ldr r3, [r3]
0039a59c  0f e0 a0 e1                                      mov lr, pc
0039a5a0  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
0039a5a4  07 00 50 e1                                      cmp r0, r7
0039a5a8  ed ff ff 1a                                      bne #0x39a564
0039a5ac  01 00 a0 e3                                      mov r0, #1
0039a5b0  14 d0 8d e2                                      add sp, sp, #0x14
0039a5b4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0039a5b8  04 30 94 e5                                      ldr r3, [r4, #4]
0039a5bc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0039a5c0  04 00 51 e1                                      cmp r1, r4
0039a5c4  05 00 00 1a                                      bne #0x39a5e0
0039a5c8  03 40 a0 e1                                      mov r4, r3
0039a5cc  04 30 93 e5                                      ldr r3, [r3, #4]
0039a5d0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0039a5d4  04 00 52 e1                                      cmp r2, r4
0039a5d8  fa ff ff 0a                                      beq #0x39a5c8
0039a5dc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0039a5e0  03 00 52 e1                                      cmp r2, r3
0039a5e4  03 40 a0 11                                      movne r4, r3
0039a5e8  e6 ff ff ea                                      b #0x39a588

; FUNCTION 0x0039a5ec, declared_size=124, range_size=124, mode=arm
; class-group: TriggerPlate
; alias: _ZNK12TriggerPlate29GetNumValidContactsActivatingEv
; demangled: TriggerPlate::GetNumValidContactsActivating() const
; decoder-mode: arm
0039a5ec  10 40 2d e9                                      push {r4, lr}
0039a5f0  00 30 90 e5                                      ldr r3, [r0]
0039a5f4  00 40 a0 e1                                      mov r4, r0
0039a5f8  0f e0 a0 e1                                      mov lr, pc
0039a5fc  e8 f0 93 e5                                      ldr pc, [r3, #0xe8]
0039a600  04 00 50 e3                                      cmp r0, #4
0039a604  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
0039a608  14 00 00 ea                                      b #0x39a660
0039a60c  11 00 00 ea                                      b #0x39a658
0039a610  0d 00 00 ea                                      b #0x39a64c
0039a614  0c 00 00 ea                                      b #0x39a64c
0039a618  08 00 00 ea                                      b #0x39a640
0039a61c  ff ff ff ea                                      b #0x39a620
0039a620  00 30 94 e5                                      ldr r3, [r4]
0039a624  04 00 a0 e1                                      mov r0, r4
0039a628  0f e0 a0 e1                                      mov lr, pc
0039a62c  f0 f0 93 e5                                      ldr pc, [r3, #0xf0]
0039a630  00 10 a0 e1                                      mov r1, r0
0039a634  04 00 a0 e1                                      mov r0, r4
0039a638  b4 ff ff eb                                      bl #0x39a510
0039a63c  10 80 bd e8                                      pop {r4, pc}
0039a640  04 00 a0 e1                                      mov r0, r4
0039a644  10 40 bd e8                                      pop {r4, lr}
0039a648  17 f6 ff ea                                      b #0x397eac
0039a64c  04 00 a0 e1                                      mov r0, r4
0039a650  10 40 bd e8                                      pop {r4, lr}
0039a654  12 f6 ff ea                                      b #0x397ea4
0039a658  98 03 94 e5                                      ldr r0, [r4, #0x398]
0039a65c  10 80 bd e8                                      pop {r4, pc}
0039a660  00 00 a0 e3                                      mov r0, #0
0039a664  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0039a668, declared_size=1024, range_size=1024, mode=arm
; class-group: TriggerPlate
; alias: _ZN12TriggerPlate6UpdateEv
; demangled: TriggerPlate::Update()
; decoder-mode: arm
0039a668  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0039a66c  79 37 d0 e5                                      ldrb r3, [r0, #0x779]
0039a670  b4 53 9f e5                                      ldr r5, [pc, #0x3b4]
0039a674  48 d0 4d e2                                      sub sp, sp, #0x48
0039a678  00 00 53 e3                                      cmp r3, #0
0039a67c  00 40 a0 e1                                      mov r4, r0
0039a680  05 50 8f e0                                      add r5, pc, r5
0039a684  1a 00 00 0a                                      beq #0x39a6f4
0039a688  78 37 d0 e5                                      ldrb r3, [r0, #0x778]
0039a68c  00 00 53 e3                                      cmp r3, #0
0039a690  19 00 00 1a                                      bne #0x39a6fc
0039a694  04 00 a0 e1                                      mov r0, r4
0039a698  82 f6 ff eb                                      bl #0x3980a8
0039a69c  00 30 94 e5                                      ldr r3, [r4]
0039a6a0  04 00 a0 e1                                      mov r0, r4
0039a6a4  0f e0 a0 e1                                      mov lr, pc
0039a6a8  e8 f0 93 e5                                      ldr pc, [r3, #0xe8]
0039a6ac  02 00 50 e3                                      cmp r0, #2
0039a6b0  61 00 00 0a                                      beq #0x39a83c
0039a6b4  36 8c 11 eb                                      bl #0x7fd794
0039a6b8  05 30 d0 e5                                      ldrb r3, [r0, #5]
0039a6bc  00 00 53 e3                                      cmp r3, #0
0039a6c0  13 00 00 1a                                      bne #0x39a714
0039a6c4  04 00 a0 e1                                      mov r0, r4
0039a6c8  c7 ff ff eb                                      bl #0x39a5ec
0039a6cc  00 60 a0 e1                                      mov r6, r0
0039a6d0  c0 03 84 e5                                      str r0, [r4, #0x3c0]
0039a6d4  34 37 94 e5                                      ldr r3, [r4, #0x734]
0039a6d8  06 00 53 e1                                      cmp r3, r6
0039a6dc  14 00 00 da                                      ble #0x39a734
0039a6e0  04 00 a0 e1                                      mov r0, r4
0039a6e4  44 f8 ff eb                                      bl #0x3987fc
0039a6e8  b8 33 94 e5                                      ldr r3, [r4, #0x3b8]
0039a6ec  00 00 53 e3                                      cmp r3, #0
0039a6f0  0f 00 00 da                                      ble #0x39a734
0039a6f4  48 d0 8d e2                                      add sp, sp, #0x48
0039a6f8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0039a6fc  00 30 90 e5                                      ldr r3, [r0]
0039a700  0f e0 a0 e1                                      mov lr, pc
0039a704  ec f0 93 e5                                      ldr pc, [r3, #0xec]
0039a708  05 00 50 e3                                      cmp r0, #5
0039a70c  e0 ff ff 1a                                      bne #0x39a694
0039a710  f7 ff ff ea                                      b #0x39a6f4
0039a714  00 30 94 e5                                      ldr r3, [r4]
0039a718  04 00 a0 e1                                      mov r0, r4
0039a71c  0f e0 a0 e1                                      mov lr, pc
0039a720  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0039a724  00 00 50 e3                                      cmp r0, #0
0039a728  c0 63 94 15                                      ldrne r6, [r4, #0x3c0]
0039a72c  e8 ff ff 1a                                      bne #0x39a6d4
0039a730  e3 ff ff ea                                      b #0x39a6c4
0039a734  04 00 a0 e1                                      mov r0, r4
0039a738  1b f8 ff eb                                      bl #0x3987ac
0039a73c  00 00 50 e3                                      cmp r0, #0
0039a740  3a 00 00 0a                                      beq #0x39a830
0039a744  74 37 94 e5                                      ldr r3, [r4, #0x774]
0039a748  06 00 53 e1                                      cmp r3, r6
0039a74c  37 00 00 0a                                      beq #0x39a830
0039a750  34 27 94 e5                                      ldr r2, [r4, #0x734]
0039a754  06 00 52 e1                                      cmp r2, r6
0039a758  3d 00 00 da                                      ble #0x39a854
0039a75c  02 00 53 e1                                      cmp r3, r2
0039a760  31 00 00 ba                                      blt #0x39a82c
0039a764  30 37 94 e5                                      ldr r3, [r4, #0x730]
0039a768  01 00 73 e3                                      cmn r3, #1
0039a76c  17 00 00 0a                                      beq #0x39a7d0
0039a770  b8 22 9f e5                                      ldr r2, [pc, #0x2b8]
0039a774  00 30 94 e5                                      ldr r3, [r4]
0039a778  04 00 a0 e1                                      mov r0, r4
0039a77c  02 20 95 e7                                      ldr r2, [r5, r2]
0039a780  00 a0 92 e5                                      ldr sl, [r2]
0039a784  0f e0 a0 e1                                      mov lr, pc
0039a788  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
0039a78c  68 e1 94 e5                                      ldr lr, [r4, #0x168]
0039a790  64 71 94 e5                                      ldr r7, [r4, #0x164]
0039a794  60 81 94 e5                                      ldr r8, [r4, #0x160]
0039a798  bf c4 a0 e3                                      mov ip, #0xbf000000
0039a79c  02 c5 8c e2                                      add ip, ip, #0x800000
0039a7a0  00 10 a0 e1                                      mov r1, r0
0039a7a4  44 e0 8d e5                                      str lr, [sp, #0x44]
0039a7a8  0a 00 a0 e1                                      mov r0, sl
0039a7ac  01 e0 a0 e3                                      mov lr, #1
0039a7b0  3c 20 8d e2                                      add r2, sp, #0x3c
0039a7b4  00 30 a0 e3                                      mov r3, #0
0039a7b8  3c 80 8d e5                                      str r8, [sp, #0x3c]
0039a7bc  40 70 8d e5                                      str r7, [sp, #0x40]
0039a7c0  00 e0 8d e5                                      str lr, [sp]
0039a7c4  08 c0 8d e5                                      str ip, [sp, #8]
0039a7c8  04 c0 8d e5                                      str ip, [sp, #4]
0039a7cc  81 43 ff eb                                      bl #0x36b5d8
0039a7d0  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
0039a7d4  00 00 53 e3                                      cmp r3, #0
0039a7d8  09 00 00 0a                                      beq #0x39a804
0039a7dc  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0039a7e0  4c 12 9f e5                                      ldr r1, [pc, #0x24c]
0039a7e4  00 30 a0 e3                                      mov r3, #0
0039a7e8  0c 00 a0 e1                                      mov r0, ip
0039a7ec  03 20 a0 e1                                      mov r2, r3
0039a7f0  00 c0 9c e5                                      ldr ip, [ip]
0039a7f4  01 10 8f e0                                      add r1, pc, r1
0039a7f8  00 30 8d e5                                      str r3, [sp]
0039a7fc  0f e0 a0 e1                                      mov lr, pc
0039a800  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039a804  70 17 94 e5                                      ldr r1, [r4, #0x770]
0039a808  01 00 71 e3                                      cmn r1, #1
0039a80c  04 00 00 0a                                      beq #0x39a824
0039a810  20 32 9f e5                                      ldr r3, [pc, #0x220]
0039a814  64 20 94 e5                                      ldr r2, [r4, #0x64]
0039a818  03 00 95 e7                                      ldr r0, [r5, r3]
0039a81c  00 30 a0 e3                                      mov r3, #0
0039a820  66 17 03 eb                                      bl #0x4605c0
0039a824  00 30 a0 e3                                      mov r3, #0
0039a828  78 37 c4 e5                                      strb r3, [r4, #0x778]
0039a82c  74 67 84 e5                                      str r6, [r4, #0x774]
0039a830  04 00 a0 e1                                      mov r0, r4
0039a834  1f c4 ff eb                                      bl #0x38b8b8
0039a838  ad ff ff ea                                      b #0x39a6f4
0039a83c  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
0039a840  03 30 95 e7                                      ldr r3, [r5, r3]
0039a844  40 00 93 e5                                      ldr r0, [r3, #0x40]
0039a848  d6 4b ff eb                                      bl #0x36d7a8
0039a84c  34 07 84 e5                                      str r0, [r4, #0x734]
0039a850  97 ff ff ea                                      b #0x39a6b4
0039a854  02 00 53 e1                                      cmp r3, r2
0039a858  f3 ff ff aa                                      bge #0x39a82c
0039a85c  78 37 d4 e5                                      ldrb r3, [r4, #0x778]
0039a860  00 00 53 e3                                      cmp r3, #0
0039a864  f0 ff ff 1a                                      bne #0x39a82c
0039a868  cc 71 9f e5                                      ldr r7, [pc, #0x1cc]
0039a86c  04 00 a0 e1                                      mov r0, r4
0039a870  c7 f7 ff eb                                      bl #0x398794
0039a874  07 00 95 e7                                      ldr r0, [r5, r7]
0039a878  45 13 fe eb                                      bl #0x31f594
0039a87c  00 80 50 e2                                      subs r8, r0, #0
0039a880  54 00 00 0a                                      beq #0x39a9d8
0039a884  00 30 94 e5                                      ldr r3, [r4]
0039a888  04 00 a0 e1                                      mov r0, r4
0039a88c  0f e0 a0 e1                                      mov lr, pc
0039a890  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
0039a894  07 30 95 e7                                      ldr r3, [r5, r7]
0039a898  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
0039a89c  a0 21 9f e5                                      ldr r2, [pc, #0x1a0]
0039a8a0  00 a0 a0 e1                                      mov sl, r0
0039a8a4  01 10 8f e0                                      add r1, pc, r1
0039a8a8  02 20 8f e0                                      add r2, pc, r2
0039a8ac  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0039a8b0  64 70 94 e5                                      ldr r7, [r4, #0x64]
0039a8b4  c8 a8 04 eb                                      bl #0x4c4bdc
0039a8b8  88 31 9f e5                                      ldr r3, [pc, #0x188]
0039a8bc  48 10 8d e2                                      add r1, sp, #0x48
0039a8c0  18 00 8d e5                                      str r0, [sp, #0x18]
0039a8c4  03 30 95 e7                                      ldr r3, [r5, r3]
0039a8c8  08 00 a0 e1                                      mov r0, r8
0039a8cc  00 80 a0 e3                                      mov r8, #0
0039a8d0  08 30 83 e2                                      add r3, r3, #8
0039a8d4  34 30 21 e5                                      str r3, [r1, #-0x34]!
0039a8d8  00 30 e0 e3                                      mvn r3, #0
0039a8dc  28 30 8d e5                                      str r3, [sp, #0x28]
0039a8e0  20 70 8d e5                                      str r7, [sp, #0x20]
0039a8e4  2c a0 8d e5                                      str sl, [sp, #0x2c]
0039a8e8  1c 80 8d e5                                      str r8, [sp, #0x1c]
0039a8ec  24 80 cd e5                                      strb r8, [sp, #0x24]
0039a8f0  25 80 cd e5                                      strb r8, [sp, #0x25]
0039a8f4  e5 79 fe eb                                      bl #0x339090
0039a8f8  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
0039a8fc  30 27 94 e5                                      ldr r2, [r4, #0x730]
0039a900  03 30 95 e7                                      ldr r3, [r5, r3]
0039a904  01 00 72 e3                                      cmn r2, #1
0039a908  08 30 83 e2                                      add r3, r3, #8
0039a90c  14 30 8d e5                                      str r3, [sp, #0x14]
0039a910  17 00 00 0a                                      beq #0x39a974
0039a914  14 21 9f e5                                      ldr r2, [pc, #0x114]
0039a918  00 30 94 e5                                      ldr r3, [r4]
0039a91c  04 00 a0 e1                                      mov r0, r4
0039a920  02 20 95 e7                                      ldr r2, [r5, r2]
0039a924  00 90 92 e5                                      ldr sb, [r2]
0039a928  0f e0 a0 e1                                      mov lr, pc
0039a92c  e0 f0 93 e5                                      ldr pc, [r3, #0xe0]
0039a930  64 e1 94 e5                                      ldr lr, [r4, #0x164]
0039a934  68 71 94 e5                                      ldr r7, [r4, #0x168]
0039a938  60 a1 94 e5                                      ldr sl, [r4, #0x160]
0039a93c  bf c4 a0 e3                                      mov ip, #0xbf000000
0039a940  02 c5 8c e2                                      add ip, ip, #0x800000
0039a944  00 10 a0 e1                                      mov r1, r0
0039a948  34 e0 8d e5                                      str lr, [sp, #0x34]
0039a94c  09 00 a0 e1                                      mov r0, sb
0039a950  01 e0 a0 e3                                      mov lr, #1
0039a954  08 30 a0 e1                                      mov r3, r8
0039a958  30 20 8d e2                                      add r2, sp, #0x30
0039a95c  30 a0 8d e5                                      str sl, [sp, #0x30]
0039a960  38 70 8d e5                                      str r7, [sp, #0x38]
0039a964  00 e0 8d e5                                      str lr, [sp]
0039a968  08 c0 8d e5                                      str ip, [sp, #8]
0039a96c  04 c0 8d e5                                      str ip, [sp, #4]
0039a970  18 43 ff eb                                      bl #0x36b5d8
0039a974  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
0039a978  00 00 53 e3                                      cmp r3, #0
0039a97c  09 00 00 0a                                      beq #0x39a9a8
0039a980  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0039a984  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
0039a988  00 30 a0 e3                                      mov r3, #0
0039a98c  0c 00 a0 e1                                      mov r0, ip
0039a990  03 20 a0 e1                                      mov r2, r3
0039a994  00 c0 9c e5                                      ldr ip, [ip]
0039a998  01 10 8f e0                                      add r1, pc, r1
0039a99c  00 30 8d e5                                      str r3, [sp]
0039a9a0  0f e0 a0 e1                                      mov lr, pc
0039a9a4  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039a9a8  6c 17 94 e5                                      ldr r1, [r4, #0x76c]
0039a9ac  01 00 71 e3                                      cmn r1, #1
0039a9b0  04 00 00 0a                                      beq #0x39a9c8
0039a9b4  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0039a9b8  64 20 94 e5                                      ldr r2, [r4, #0x64]
0039a9bc  03 00 95 e7                                      ldr r0, [r5, r3]
0039a9c0  00 30 a0 e3                                      mov r3, #0
0039a9c4  fd 16 03 eb                                      bl #0x4605c0
0039a9c8  01 30 a0 e3                                      mov r3, #1
0039a9cc  78 37 c4 e5                                      strb r3, [r4, #0x778]
0039a9d0  74 67 84 e5                                      str r6, [r4, #0x774]
0039a9d4  95 ff ff ea                                      b #0x39a830
0039a9d8  74 30 9f e5                                      ldr r3, [pc, #0x74]
0039a9dc  03 30 95 e7                                      ldr r3, [r5, r3]
0039a9e0  00 30 93 e5                                      ldr r3, [r3]
0039a9e4  02 00 53 e3                                      cmp r3, #2
0039a9e8  00 80 88 05                                      streq r8, [r8]
0039a9ec  a4 ff ff 0a                                      beq #0x39a884
0039a9f0  01 00 53 e3                                      cmp r3, #1
0039a9f4  a2 ff ff 1a                                      bne #0x39a884
0039a9f8  58 00 9f e5                                      ldr r0, [pc, #0x58]
0039a9fc  58 10 9f e5                                      ldr r1, [pc, #0x58]
0039aa00  58 20 9f e5                                      ldr r2, [pc, #0x58]
0039aa04  00 00 95 e7                                      ldr r0, [r5, r0]
0039aa08  54 30 9f e5                                      ldr r3, [pc, #0x54]
0039aa0c  e6 c0 a0 e3                                      mov ip, #0xe6
0039aa10  01 10 8f e0                                      add r1, pc, r1
0039aa14  02 20 8f e0                                      add r2, pc, r2
0039aa18  03 30 8f e0                                      add r3, pc, r3
0039aa1c  a8 00 80 e2                                      add r0, r0, #0xa8
0039aa20  00 c0 8d e5                                      str ip, [sp]
0039aa24  76 cd fd eb                                      bl #0x30e004
0039aa28  95 ff ff ea                                      b #0x39a884
; mapping-symbol data/literal pool
0039aa2c  10 a4 5f 00 a4 0d 00 00 a4 83 52 00 20 1a 00 00  .byte 0x10, 0xa4, 0x5f, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xa4, 0x83, 0x52, 0x00, 0x20, 0x1a, 0x00, 0x00
0039aa3c  f4 37 00 00 c4 80 52 00 50 5c 52 00 a4 09 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xc4, 0x80, 0x52, 0x00, 0x50, 0x5c, 0x52, 0x00, 0xa4, 0x09, 0x00, 0x00
0039aa4c  b0 0b 00 00 40 81 52 00 c0 39 00 00 c0 19 00 00  .byte 0xb0, 0x0b, 0x00, 0x00, 0x40, 0x81, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0039aa5c  c8 39 52 00 44 4f 57 00 90 81 52 00              .byte 0xc8, 0x39, 0x52, 0x00, 0x44, 0x4f, 0x57, 0x00, 0x90, 0x81, 0x52, 0x00

; FUNCTION 0x0039aa68, declared_size=116, range_size=116, mode=arm
; class-group: TriggerPlate
; alias: _ZNK12TriggerPlate9GetDataIdEv
; demangled: TriggerPlate::GetDataId() const
; decoder-mode: arm
0039aa68  60 30 9f e5                                      ldr r3, [pc, #0x60]
0039aa6c  60 20 9f e5                                      ldr r2, [pc, #0x60]
0039aa70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0039aa74  03 30 8f e0                                      add r3, pc, r3
0039aa78  02 20 93 e7                                      ldr r2, [r3, r2]
0039aa7c  2c 67 90 e5                                      ldr r6, [r0, #0x72c]
0039aa80  00 50 92 e5                                      ldr r5, [r2]
0039aa84  00 00 55 e3                                      cmp r5, #0
0039aa88  0e 00 00 0a                                      beq #0x39aac8
0039aa8c  44 20 9f e5                                      ldr r2, [pc, #0x44]
0039aa90  00 40 a0 e3                                      mov r4, #0
0039aa94  02 30 93 e7                                      ldr r3, [r3, r2]
0039aa98  00 70 93 e5                                      ldr r7, [r3]
0039aa9c  02 00 00 ea                                      b #0x39aaac
0039aaa0  01 40 84 e2                                      add r4, r4, #1
0039aaa4  05 00 54 e1                                      cmp r4, r5
0039aaa8  06 00 00 0a                                      beq #0x39aac8
0039aaac  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
0039aab0  06 00 a0 e1                                      mov r0, r6
0039aab4  18 ce fd eb                                      bl #0x30e31c
0039aab8  00 00 50 e3                                      cmp r0, #0
0039aabc  f7 ff ff 1a                                      bne #0x39aaa0
0039aac0  04 00 a0 e1                                      mov r0, r4
0039aac4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0039aac8  00 00 e0 e3                                      mvn r0, #0
0039aacc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0039aad0  1c a0 5f 00 c8 27 00 00 48 15 00 00              .byte 0x1c, 0xa0, 0x5f, 0x00, 0xc8, 0x27, 0x00, 0x00, 0x48, 0x15, 0x00, 0x00

; FUNCTION 0x0039aadc, declared_size=8, range_size=8, mode=arm
; class-group: TriggerPlate
; alias: _ZThn36_N12TriggerPlateD1Ev
; demangled: non-virtual thunk to TriggerPlate::~TriggerPlate()
; decoder-mode: arm
0039aadc  24 00 40 e2                                      sub r0, r0, #0x24
0039aae0  ff ff ff ea                                      b #0x39aae4

; FUNCTION 0x0039aae4, declared_size=100, range_size=100, mode=arm
; class-group: TriggerPlate
; alias: _ZN12TriggerPlateD1Ev
; demangled: TriggerPlate::~TriggerPlate()
; decoder-mode: arm
0039aae4  54 20 9f e5                                      ldr r2, [pc, #0x54]
0039aae8  54 30 9f e5                                      ldr r3, [pc, #0x54]
0039aaec  10 40 2d e9                                      push {r4, lr}
0039aaf0  02 20 8f e0                                      add r2, pc, r2
0039aaf4  03 30 92 e7                                      ldr r3, [r2, r3]
0039aaf8  00 40 a0 e1                                      mov r4, r0
0039aafc  75 0e 80 e2                                      add r0, r0, #0x750
0039ab00  11 2e 83 e2                                      add r2, r3, #0x110
0039ab04  08 10 83 e2                                      add r1, r3, #8
0039ab08  41 3f 83 e2                                      add r3, r3, #0x104
0039ab0c  0a 00 84 e8                                      stm r4, {r1, r3}
0039ab10  24 20 84 e5                                      str r2, [r4, #0x24]
0039ab14  a4 e3 fd eb                                      bl #0x3139ac
0039ab18  73 0e 84 e2                                      add r0, r4, #0x730
0039ab1c  08 00 80 e2                                      add r0, r0, #8
0039ab20  a1 e3 fd eb                                      bl #0x3139ac
0039ab24  71 0e 84 e2                                      add r0, r4, #0x710
0039ab28  08 00 80 e2                                      add r0, r0, #8
0039ab2c  9e e3 fd eb                                      bl #0x3139ac
0039ab30  04 00 a0 e1                                      mov r0, r4
0039ab34  b6 f9 ff eb                                      bl #0x399214
0039ab38  04 00 a0 e1                                      mov r0, r4
0039ab3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039ab40  a0 9f 5f 00 58 21 00 00                          .byte 0xa0, 0x9f, 0x5f, 0x00, 0x58, 0x21, 0x00, 0x00

; FUNCTION 0x0039ab48, declared_size=8, range_size=8, mode=arm
; class-group: TriggerPlate
; alias: _ZThn36_N12TriggerPlateD0Ev
; demangled: non-virtual thunk to TriggerPlate::~TriggerPlate()
; decoder-mode: arm
0039ab48  24 00 40 e2                                      sub r0, r0, #0x24
0039ab4c  ff ff ff ea                                      b #0x39ab50

; FUNCTION 0x0039ab50, declared_size=28, range_size=28, mode=arm
; class-group: TriggerPlate
; alias: _ZN12TriggerPlateD0Ev
; demangled: TriggerPlate::~TriggerPlate()
; decoder-mode: arm
0039ab50  10 40 2d e9                                      push {r4, lr}
0039ab54  00 40 a0 e1                                      mov r4, r0
0039ab58  e1 ff ff eb                                      bl #0x39aae4
0039ab5c  04 00 a0 e1                                      mov r0, r4
0039ab60  36 d6 fd eb                                      bl #0x310440
0039ab64  04 00 a0 e1                                      mov r0, r4
0039ab68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0039ab6c, declared_size=100, range_size=100, mode=arm
; class-group: TriggerPlate
; alias: _ZN12TriggerPlateD2Ev
; demangled: TriggerPlate::~TriggerPlate()
; decoder-mode: arm
0039ab6c  54 20 9f e5                                      ldr r2, [pc, #0x54]
0039ab70  54 30 9f e5                                      ldr r3, [pc, #0x54]
0039ab74  10 40 2d e9                                      push {r4, lr}
0039ab78  02 20 8f e0                                      add r2, pc, r2
0039ab7c  03 30 92 e7                                      ldr r3, [r2, r3]
0039ab80  00 40 a0 e1                                      mov r4, r0
0039ab84  75 0e 80 e2                                      add r0, r0, #0x750
0039ab88  11 2e 83 e2                                      add r2, r3, #0x110
0039ab8c  08 10 83 e2                                      add r1, r3, #8
0039ab90  41 3f 83 e2                                      add r3, r3, #0x104
0039ab94  0a 00 84 e8                                      stm r4, {r1, r3}
0039ab98  24 20 84 e5                                      str r2, [r4, #0x24]
0039ab9c  82 e3 fd eb                                      bl #0x3139ac
0039aba0  73 0e 84 e2                                      add r0, r4, #0x730
0039aba4  08 00 80 e2                                      add r0, r0, #8
0039aba8  7f e3 fd eb                                      bl #0x3139ac
0039abac  71 0e 84 e2                                      add r0, r4, #0x710
0039abb0  08 00 80 e2                                      add r0, r0, #8
0039abb4  7c e3 fd eb                                      bl #0x3139ac
0039abb8  04 00 a0 e1                                      mov r0, r4
0039abbc  94 f9 ff eb                                      bl #0x399214
0039abc0  04 00 a0 e1                                      mov r0, r4
0039abc4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039abc8  18 9f 5f 00 58 21 00 00                          .byte 0x18, 0x9f, 0x5f, 0x00, 0x58, 0x21, 0x00, 0x00

; FUNCTION 0x0039ae5c, declared_size=8, range_size=8, mode=arm
; class-group: TriggerPlate
; alias: _ZThn4_N12TriggerPlate17DeclarePropertiesEv
; demangled: non-virtual thunk to TriggerPlate::DeclareProperties()
; decoder-mode: arm
0039ae5c  04 00 40 e2                                      sub r0, r0, #4
0039ae60  ff ff ff ea                                      b #0x39ae64

; FUNCTION 0x0039ae64, declared_size=160, range_size=160, mode=arm
; class-group: TriggerPlate
; alias: _ZN12TriggerPlate17DeclarePropertiesEv
; demangled: TriggerPlate::DeclareProperties()
; decoder-mode: arm
0039ae64  70 40 2d e9                                      push {r4, r5, r6, lr}
0039ae68  00 50 a0 e1                                      mov r5, r0
0039ae6c  05 f7 ff eb                                      bl #0x398a88
0039ae70  78 10 9f e5                                      ldr r1, [pc, #0x78]
0039ae74  04 40 85 e2                                      add r4, r5, #4
0039ae78  71 2e 85 e2                                      add r2, r5, #0x710
0039ae7c  04 00 a0 e1                                      mov r0, r4
0039ae80  01 10 8f e0                                      add r1, pc, r1
0039ae84  08 20 82 e2                                      add r2, r2, #8
0039ae88  3b 90 fe eb                                      bl #0x33ef7c
0039ae8c  60 10 9f e5                                      ldr r1, [pc, #0x60]
0039ae90  73 6e 85 e2                                      add r6, r5, #0x730
0039ae94  01 30 a0 e3                                      mov r3, #1
0039ae98  04 00 a0 e1                                      mov r0, r4
0039ae9c  04 20 86 e2                                      add r2, r6, #4
0039aea0  01 10 8f e0                                      add r1, pc, r1
0039aea4  73 f6 ff eb                                      bl #0x398878
0039aea8  48 10 9f e5                                      ldr r1, [pc, #0x48]
0039aeac  08 20 86 e2                                      add r2, r6, #8
0039aeb0  04 00 a0 e1                                      mov r0, r4
0039aeb4  01 10 8f e0                                      add r1, pc, r1
0039aeb8  2f 90 fe eb                                      bl #0x33ef7c
0039aebc  38 10 9f e5                                      ldr r1, [pc, #0x38]
0039aec0  04 00 a0 e1                                      mov r0, r4
0039aec4  75 2e 85 e2                                      add r2, r5, #0x750
0039aec8  01 10 8f e0                                      add r1, pc, r1
0039aecc  2a 90 fe eb                                      bl #0x33ef7c
0039aed0  28 10 9f e5                                      ldr r1, [pc, #0x28]
0039aed4  76 2e 85 e2                                      add r2, r5, #0x760
0039aed8  04 00 a0 e1                                      mov r0, r4
0039aedc  01 10 8f e0                                      add r1, pc, r1
0039aee0  08 20 82 e2                                      add r2, r2, #8
0039aee4  00 30 a0 e3                                      mov r3, #0
0039aee8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0039aeec  61 f6 ff ea                                      b #0x398878
; mapping-symbol data/literal pool
0039aef0  d8 7c 52 00 58 7d 52 00 5c 7d 52 00 58 7d 52 00  .byte 0xd8, 0x7c, 0x52, 0x00, 0x58, 0x7d, 0x52, 0x00, 0x5c, 0x7d, 0x52, 0x00, 0x58, 0x7d, 0x52, 0x00
0039af00  54 7d 52 00                                      .byte 0x54, 0x7d, 0x52, 0x00

; FUNCTION 0x0039af04, declared_size=220, range_size=220, mode=arm
; class-group: TriggerPlate
; alias: _ZN12TriggerPlateC1EN10ObjectBase6GO_IDSE
; demangled: TriggerPlate::TriggerPlate(ObjectBase::GO_IDS)
; decoder-mode: arm
0039af04  70 40 2d e9                                      push {r4, r5, r6, lr}
0039af08  01 20 a0 e3                                      mov r2, #1
0039af0c  00 30 a0 e3                                      mov r3, #0
0039af10  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
0039af14  00 40 a0 e1                                      mov r4, r0
0039af18  2d f8 ff eb                                      bl #0x398fd4
0039af1c  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0039af20  05 50 8f e0                                      add r5, pc, r5
0039af24  71 3e 84 e2                                      add r3, r4, #0x710
0039af28  02 20 95 e7                                      ldr r2, [r5, r2]
0039af2c  08 30 83 e2                                      add r3, r3, #8
0039af30  03 00 a0 e1                                      mov r0, r3
0039af34  08 c0 82 e2                                      add ip, r2, #8
0039af38  11 1e 82 e2                                      add r1, r2, #0x110
0039af3c  41 2f 82 e2                                      add r2, r2, #0x104
0039af40  00 c0 84 e5                                      str ip, [r4]
0039af44  04 20 84 e5                                      str r2, [r4, #4]
0039af48  24 10 84 e5                                      str r1, [r4, #0x24]
0039af4c  28 37 84 e5                                      str r3, [r4, #0x728]
0039af50  2c 37 84 e5                                      str r3, [r4, #0x72c]
0039af54  10 10 a0 e3                                      mov r1, #0x10
0039af58  c7 d9 fd eb                                      bl #0x31167c
0039af5c  28 27 94 e5                                      ldr r2, [r4, #0x728]
0039af60  00 50 a0 e3                                      mov r5, #0
0039af64  73 3e 84 e2                                      add r3, r4, #0x730
0039af68  00 50 c2 e5                                      strb r5, [r2]
0039af6c  08 30 83 e2                                      add r3, r3, #8
0039af70  00 60 e0 e3                                      mvn r6, #0
0039af74  01 20 a0 e3                                      mov r2, #1
0039af78  34 27 84 e5                                      str r2, [r4, #0x734]
0039af7c  03 00 a0 e1                                      mov r0, r3
0039af80  48 37 84 e5                                      str r3, [r4, #0x748]
0039af84  4c 37 84 e5                                      str r3, [r4, #0x74c]
0039af88  30 67 84 e5                                      str r6, [r4, #0x730]
0039af8c  10 10 a0 e3                                      mov r1, #0x10
0039af90  b9 d9 fd eb                                      bl #0x31167c
0039af94  48 27 94 e5                                      ldr r2, [r4, #0x748]
0039af98  75 3e 84 e2                                      add r3, r4, #0x750
0039af9c  03 00 a0 e1                                      mov r0, r3
0039afa0  00 50 c2 e5                                      strb r5, [r2]
0039afa4  10 10 a0 e3                                      mov r1, #0x10
0039afa8  60 37 84 e5                                      str r3, [r4, #0x760]
0039afac  64 37 84 e5                                      str r3, [r4, #0x764]
0039afb0  b1 d9 fd eb                                      bl #0x31167c
0039afb4  60 37 94 e5                                      ldr r3, [r4, #0x760]
0039afb8  04 00 a0 e1                                      mov r0, r4
0039afbc  00 50 c3 e5                                      strb r5, [r3]
0039afc0  70 67 84 e5                                      str r6, [r4, #0x770]
0039afc4  78 57 c4 e5                                      strb r5, [r4, #0x778]
0039afc8  68 67 84 e5                                      str r6, [r4, #0x768]
0039afcc  6c 67 84 e5                                      str r6, [r4, #0x76c]
0039afd0  74 57 84 e5                                      str r5, [r4, #0x774]
0039afd4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039afd8  70 9b 5f 00 58 21 00 00                          .byte 0x70, 0x9b, 0x5f, 0x00, 0x58, 0x21, 0x00, 0x00

; FUNCTION 0x0039afe0, declared_size=220, range_size=220, mode=arm
; class-group: TriggerPlate
; alias: _ZN12TriggerPlateC2EN10ObjectBase6GO_IDSE
; demangled: TriggerPlate::TriggerPlate(ObjectBase::GO_IDS)
; decoder-mode: arm
0039afe0  70 40 2d e9                                      push {r4, r5, r6, lr}
0039afe4  01 20 a0 e3                                      mov r2, #1
0039afe8  00 30 a0 e3                                      mov r3, #0
0039afec  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
0039aff0  00 40 a0 e1                                      mov r4, r0
0039aff4  f6 f7 ff eb                                      bl #0x398fd4
0039aff8  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0039affc  05 50 8f e0                                      add r5, pc, r5
0039b000  71 3e 84 e2                                      add r3, r4, #0x710
0039b004  02 20 95 e7                                      ldr r2, [r5, r2]
0039b008  08 30 83 e2                                      add r3, r3, #8
0039b00c  03 00 a0 e1                                      mov r0, r3
0039b010  08 c0 82 e2                                      add ip, r2, #8
0039b014  11 1e 82 e2                                      add r1, r2, #0x110
0039b018  41 2f 82 e2                                      add r2, r2, #0x104
0039b01c  00 c0 84 e5                                      str ip, [r4]
0039b020  04 20 84 e5                                      str r2, [r4, #4]
0039b024  24 10 84 e5                                      str r1, [r4, #0x24]
0039b028  28 37 84 e5                                      str r3, [r4, #0x728]
0039b02c  2c 37 84 e5                                      str r3, [r4, #0x72c]
0039b030  10 10 a0 e3                                      mov r1, #0x10
0039b034  90 d9 fd eb                                      bl #0x31167c
0039b038  28 27 94 e5                                      ldr r2, [r4, #0x728]
0039b03c  00 50 a0 e3                                      mov r5, #0
0039b040  73 3e 84 e2                                      add r3, r4, #0x730
0039b044  00 50 c2 e5                                      strb r5, [r2]
0039b048  08 30 83 e2                                      add r3, r3, #8
0039b04c  00 60 e0 e3                                      mvn r6, #0
0039b050  01 20 a0 e3                                      mov r2, #1
0039b054  34 27 84 e5                                      str r2, [r4, #0x734]
0039b058  03 00 a0 e1                                      mov r0, r3
0039b05c  48 37 84 e5                                      str r3, [r4, #0x748]
0039b060  4c 37 84 e5                                      str r3, [r4, #0x74c]
0039b064  30 67 84 e5                                      str r6, [r4, #0x730]
0039b068  10 10 a0 e3                                      mov r1, #0x10
0039b06c  82 d9 fd eb                                      bl #0x31167c
0039b070  48 27 94 e5                                      ldr r2, [r4, #0x748]
0039b074  75 3e 84 e2                                      add r3, r4, #0x750
0039b078  03 00 a0 e1                                      mov r0, r3
0039b07c  00 50 c2 e5                                      strb r5, [r2]
0039b080  10 10 a0 e3                                      mov r1, #0x10
0039b084  60 37 84 e5                                      str r3, [r4, #0x760]
0039b088  64 37 84 e5                                      str r3, [r4, #0x764]
0039b08c  7a d9 fd eb                                      bl #0x31167c
0039b090  60 37 94 e5                                      ldr r3, [r4, #0x760]
0039b094  04 00 a0 e1                                      mov r0, r4
0039b098  00 50 c3 e5                                      strb r5, [r3]
0039b09c  70 67 84 e5                                      str r6, [r4, #0x770]
0039b0a0  78 57 c4 e5                                      strb r5, [r4, #0x778]
0039b0a4  68 67 84 e5                                      str r6, [r4, #0x768]
0039b0a8  6c 67 84 e5                                      str r6, [r4, #0x76c]
0039b0ac  74 57 84 e5                                      str r5, [r4, #0x774]
0039b0b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039b0b4  94 9a 5f 00 58 21 00 00                          .byte 0x94, 0x9a, 0x5f, 0x00, 0x58, 0x21, 0x00, 0x00

; FUNCTION 0x0039b0bc, declared_size=432, range_size=432, mode=arm
; class-group: TriggerPlate
; alias: _ZN12TriggerPlate8InitPostEv
; demangled: TriggerPlate::InitPost()
; decoder-mode: arm
0039b0bc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0039b0c0  0c d0 4d e2                                      sub sp, sp, #0xc
0039b0c4  00 40 a0 e1                                      mov r4, r0
0039b0c8  25 c3 ff eb                                      bl #0x38bd64
0039b0cc  74 32 94 e5                                      ldr r3, [r4, #0x274]
0039b0d0  78 51 9f e5                                      ldr r5, [pc, #0x178]
0039b0d4  03 00 50 e1                                      cmp r0, r3
0039b0d8  05 50 8f e0                                      add r5, pc, r5
0039b0dc  56 00 00 aa                                      bge #0x39b23c
0039b0e0  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
0039b0e4  00 60 a0 e3                                      mov r6, #0
0039b0e8  00 20 e0 e3                                      mvn r2, #0
0039b0ec  03 30 95 e7                                      ldr r3, [r5, r3]
0039b0f0  a8 23 84 e5                                      str r2, [r4, #0x3a8]
0039b0f4  81 63 c4 e5                                      strb r6, [r4, #0x381]
0039b0f8  00 70 93 e5                                      ldr r7, [r3]
0039b0fc  2c 87 94 e5                                      ldr r8, [r4, #0x72c]
0039b100  06 00 57 e1                                      cmp r7, r6
0039b104  4e 00 00 0a                                      beq #0x39b244
0039b108  48 31 9f e5                                      ldr r3, [pc, #0x148]
0039b10c  03 30 95 e7                                      ldr r3, [r5, r3]
0039b110  00 a0 93 e5                                      ldr sl, [r3]
0039b114  02 00 00 ea                                      b #0x39b124
0039b118  01 60 86 e2                                      add r6, r6, #1
0039b11c  07 00 56 e1                                      cmp r6, r7
0039b120  47 00 00 0a                                      beq #0x39b244
0039b124  06 11 9a e7                                      ldr r1, [sl, r6, lsl #2]
0039b128  08 00 a0 e1                                      mov r0, r8
0039b12c  7a cc fd eb                                      bl #0x30e31c
0039b130  00 00 50 e3                                      cmp r0, #0
0039b134  f7 ff ff 1a                                      bne #0x39b118
0039b138  01 00 76 e3                                      cmn r6, #1
0039b13c  30 67 84 e5                                      str r6, [r4, #0x730]
0039b140  12 00 00 0a                                      beq #0x39b190
0039b144  10 31 9f e5                                      ldr r3, [pc, #0x110]
0039b148  03 30 95 e7                                      ldr r3, [r5, r3]
0039b14c  00 30 93 e5                                      ldr r3, [r3]
0039b150  86 62 83 e0                                      add r6, r3, r6, lsl #5
0039b154  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
0039b158  01 00 73 e3                                      cmn r3, #1
0039b15c  0b 00 00 0a                                      beq #0x39b190
0039b160  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
0039b164  0c 10 a0 e3                                      mov r1, #0xc
0039b168  02 20 95 e7                                      ldr r2, [r5, r2]
0039b16c  00 20 92 e5                                      ldr r2, [r2]
0039b170  91 23 23 e0                                      mla r3, r1, r3, r2
0039b174  08 60 93 e5                                      ldr r6, [r3, #8]
0039b178  06 00 a0 e1                                      mov r0, r6
0039b17c  34 cb fd eb                                      bl #0x30de54
0039b180  06 10 a0 e1                                      mov r1, r6
0039b184  00 20 86 e0                                      add r2, r6, r0
0039b188  29 0e 84 e2                                      add r0, r4, #0x290
0039b18c  13 d6 fd eb                                      bl #0x3109e0
0039b190  04 00 a0 e1                                      mov r0, r4
0039b194  b6 f5 ff eb                                      bl #0x398874
0039b198  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0039b19c  4c 17 94 e5                                      ldr r1, [r4, #0x74c]
0039b1a0  00 20 a0 e3                                      mov r2, #0
0039b1a4  03 60 95 e7                                      ldr r6, [r5, r3]
0039b1a8  06 00 a0 e1                                      mov r0, r6
0039b1ac  0f f8 02 eb                                      bl #0x4591f0
0039b1b0  64 17 94 e5                                      ldr r1, [r4, #0x764]
0039b1b4  6c 07 84 e5                                      str r0, [r4, #0x76c]
0039b1b8  00 20 a0 e3                                      mov r2, #0
0039b1bc  06 00 a0 e1                                      mov r0, r6
0039b1c0  0a f8 02 eb                                      bl #0x4591f0
0039b1c4  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
0039b1c8  70 07 84 e5                                      str r0, [r4, #0x770]
0039b1cc  00 00 53 e3                                      cmp r3, #0
0039b1d0  0a 00 00 0a                                      beq #0x39b200
0039b1d4  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0039b1d8  88 10 9f e5                                      ldr r1, [pc, #0x88]
0039b1dc  00 20 a0 e3                                      mov r2, #0
0039b1e0  0c 00 a0 e1                                      mov r0, ip
0039b1e4  02 30 a0 e1                                      mov r3, r2
0039b1e8  00 c0 9c e5                                      ldr ip, [ip]
0039b1ec  01 10 8f e0                                      add r1, pc, r1
0039b1f0  00 20 8d e5                                      str r2, [sp]
0039b1f4  01 20 a0 e3                                      mov r2, #1
0039b1f8  0f e0 a0 e1                                      mov lr, pc
0039b1fc  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039b200  30 37 94 e5                                      ldr r3, [r4, #0x730]
0039b204  00 00 53 e3                                      cmp r3, #0
0039b208  05 00 00 ba                                      blt #0x39b224
0039b20c  48 20 9f e5                                      ldr r2, [pc, #0x48]
0039b210  02 20 95 e7                                      ldr r2, [r5, r2]
0039b214  00 20 92 e5                                      ldr r2, [r2]
0039b218  83 32 82 e0                                      add r3, r2, r3, lsl #5
0039b21c  08 30 d3 e5                                      ldrb r3, [r3, #8]
0039b220  79 37 c4 e5                                      strb r3, [r4, #0x779]
0039b224  00 30 94 e5                                      ldr r3, [r4]
0039b228  04 00 a0 e1                                      mov r0, r4
0039b22c  0f e0 a0 e1                                      mov lr, pc
0039b230  e8 f0 93 e5                                      ldr pc, [r3, #0xe8]
0039b234  01 00 50 e3                                      cmp r0, #1
0039b238  34 07 84 05                                      streq r0, [r4, #0x734]
0039b23c  0c d0 8d e2                                      add sp, sp, #0xc
0039b240  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0039b244  00 30 e0 e3                                      mvn r3, #0
0039b248  30 37 84 e5                                      str r3, [r4, #0x730]
0039b24c  cf ff ff ea                                      b #0x39b190
; mapping-symbol data/literal pool
0039b250  b8 99 5f 00 c8 27 00 00 48 15 00 00 70 0a 00 00  .byte 0xb8, 0x99, 0x5f, 0x00, 0xc8, 0x27, 0x00, 0x00, 0x48, 0x15, 0x00, 0x00, 0x70, 0x0a, 0x00, 0x00
0039b260  a8 1c 00 00 20 1a 00 00 c4 70 52 00              .byte 0xa8, 0x1c, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00, 0xc4, 0x70, 0x52, 0x00
