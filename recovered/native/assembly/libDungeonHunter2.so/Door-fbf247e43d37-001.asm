; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e7498, declared_size=8, range_size=8, mode=arm
; class-group: Door
; alias: _ZNK4Door11IsUpdatableEv
; demangled: Door::IsUpdatable() const
; decoder-mode: arm
003e7498  01 00 a0 e3                                      mov r0, #1
003e749c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e74a0, declared_size=8, range_size=8, mode=arm
; class-group: Door
; alias: _ZNK4Door10IsAnimatedEv
; demangled: Door::IsAnimated() const
; decoder-mode: arm
003e74a0  01 00 a0 e3                                      mov r0, #1
003e74a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e74a8, declared_size=8, range_size=8, mode=arm
; class-group: Door
; alias: _ZNK4Door13IsInteractiveEP10GameObject
; demangled: Door::IsInteractive(GameObject*) const
; decoder-mode: arm
003e74a8  00 00 a0 e3                                      mov r0, #0
003e74ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e74b0, declared_size=8, range_size=8, mode=arm
; class-group: Door
; alias: _ZNK4Door9IsZonableEv
; demangled: Door::IsZonable() const
; decoder-mode: arm
003e74b0  01 00 a0 e3                                      mov r0, #1
003e74b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e74b8, declared_size=16, range_size=16, mode=arm
; class-group: Door
; alias: _ZNK4Door13getUDTypeNameEv
; demangled: Door::getUDTypeName() const
; decoder-mode: arm
003e74b8  04 00 9f e5                                      ldr r0, [pc, #4]
003e74bc  00 00 8f e0                                      add r0, pc, r0
003e74c0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003e74c4  a4 90 4d 00                                      .byte 0xa4, 0x90, 0x4d, 0x00

; FUNCTION 0x003e74c8, declared_size=152, range_size=152, mode=arm
; class-group: Door
; alias: _ZN4Door14createBindingsERN3sfc6script3lua6BinderE
; demangled: Door::createBindings(sfc::script::lua::Binder&)
; decoder-mode: arm
003e74c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e74cc  78 40 9f e5                                      ldr r4, [pc, #0x78]
003e74d0  01 50 a0 e1                                      mov r5, r1
003e74d4  00 80 a0 e1                                      mov r8, r0
003e74d8  c3 98 fe eb                                      bl #0x38d7ec
003e74dc  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003e74e0  04 40 8f e0                                      add r4, pc, r4
003e74e4  68 60 9f e5                                      ldr r6, [pc, #0x68]
003e74e8  03 70 94 e7                                      ldr r7, [r4, r3]
003e74ec  05 00 a0 e1                                      mov r0, r5
003e74f0  06 60 8f e0                                      add r6, pc, r6
003e74f4  08 30 a0 e1                                      mov r3, r8
003e74f8  06 10 a0 e1                                      mov r1, r6
003e74fc  07 20 a0 e1                                      mov r2, r7
003e7500  f3 cb fc eb                                      bl #0x31a4d4
003e7504  05 00 a0 e1                                      mov r0, r5
003e7508  06 10 a0 e1                                      mov r1, r6
003e750c  07 20 a0 e1                                      mov r2, r7
003e7510  77 c9 fc eb                                      bl #0x319af4
003e7514  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003e7518  3c 60 9f e5                                      ldr r6, [pc, #0x3c]
003e751c  05 00 a0 e1                                      mov r0, r5
003e7520  02 40 94 e7                                      ldr r4, [r4, r2]
003e7524  06 60 8f e0                                      add r6, pc, r6
003e7528  06 10 a0 e1                                      mov r1, r6
003e752c  04 20 a0 e1                                      mov r2, r4
003e7530  08 30 a0 e1                                      mov r3, r8
003e7534  e6 cb fc eb                                      bl #0x31a4d4
003e7538  05 00 a0 e1                                      mov r0, r5
003e753c  06 10 a0 e1                                      mov r1, r6
003e7540  04 20 a0 e1                                      mov r2, r4
003e7544  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003e7548  69 c9 fc ea                                      b #0x319af4
; mapping-symbol data/literal pool
003e754c  b0 d5 5a 00 c4 3b 00 00 58 a1 4d 00 e8 3f 00 00  .byte 0xb0, 0xd5, 0x5a, 0x00, 0xc4, 0x3b, 0x00, 0x00, 0x58, 0xa1, 0x4d, 0x00, 0xe8, 0x3f, 0x00, 0x00
003e755c  9c eb 4d 00                                      .byte 0x9c, 0xeb, 0x4d, 0x00

; FUNCTION 0x003e7560, declared_size=56, range_size=56, mode=arm
; class-group: Door
; alias: _ZN4Door6UpdateEv
; demangled: Door::Update()
; decoder-mode: arm
003e7560  10 40 2d e9                                      push {r4, lr}
003e7564  37 3e a0 e3                                      mov r3, #0x370
003e7568  f3 30 90 e1                                      ldrsh r3, [r0, r3]
003e756c  00 40 a0 e1                                      mov r4, r0
003e7570  00 00 53 e3                                      cmp r3, #0
003e7574  00 00 00 ba                                      blt #0x3e757c
003e7578  2b 8e fe eb                                      bl #0x38ae2c
003e757c  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003e7580  00 00 50 e3                                      cmp r0, #0
003e7584  00 00 00 0a                                      beq #0x3e758c
003e7588  39 91 fe eb                                      bl #0x38ba74
003e758c  04 00 a0 e1                                      mov r0, r4
003e7590  10 40 bd e8                                      pop {r4, lr}
003e7594  c7 90 fe ea                                      b #0x38b8b8

; FUNCTION 0x003e7598, declared_size=164, range_size=164, mode=arm
; class-group: Door
; alias: _ZN4Door6ClosedEb
; demangled: Door::Closed(bool)
; decoder-mode: arm
003e7598  70 40 2d e9                                      push {r4, r5, r6, lr}
003e759c  d8 32 90 e5                                      ldr r3, [r0, #0x2d8]
003e75a0  88 50 9f e5                                      ldr r5, [pc, #0x88]
003e75a4  00 20 a0 e3                                      mov r2, #0
003e75a8  00 00 53 e3                                      cmp r3, #0
003e75ac  a8 23 80 e5                                      str r2, [r0, #0x3a8]
003e75b0  05 50 8f e0                                      add r5, pc, r5
003e75b4  08 d0 4d e2                                      sub sp, sp, #8
003e75b8  00 40 a0 e1                                      mov r4, r0
003e75bc  01 20 a0 e1                                      mov r2, r1
003e75c0  dc 62 90 e5                                      ldr r6, [r0, #0x2dc]
003e75c4  01 00 00 0a                                      beq #0x3e75d0
003e75c8  00 00 51 e3                                      cmp r1, #0
003e75cc  0c 00 00 0a                                      beq #0x3e7604
003e75d0  00 00 56 e3                                      cmp r6, #0
003e75d4  01 00 00 0a                                      beq #0x3e75e0
003e75d8  06 00 a0 e1                                      mov r0, r6
003e75dc  80 1d 02 eb                                      bl #0x46ebe4
003e75e0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003e75e4  72 1f 84 e2                                      add r1, r4, #0x1c8
003e75e8  01 20 a0 e3                                      mov r2, #1
003e75ec  03 00 95 e7                                      ldr r0, [r5, r3]
003e75f0  3d f7 04 eb                                      bl #0x5252ec
003e75f4  00 30 a0 e3                                      mov r3, #0
003e75f8  73 33 c4 e5                                      strb r3, [r4, #0x373]
003e75fc  08 d0 8d e2                                      add sp, sp, #8
003e7600  70 80 bd e8                                      pop {r4, r5, r6, pc}
003e7604  38 c0 93 e5                                      ldr ip, [r3, #0x38]
003e7608  01 30 a0 e1                                      mov r3, r1
003e760c  24 10 9f e5                                      ldr r1, [pc, #0x24]
003e7610  0c 00 a0 e1                                      mov r0, ip
003e7614  00 c0 9c e5                                      ldr ip, [ip]
003e7618  01 10 8f e0                                      add r1, pc, r1
003e761c  00 20 8d e5                                      str r2, [sp]
003e7620  01 20 a0 e3                                      mov r2, #1
003e7624  0f e0 a0 e1                                      mov lr, pc
003e7628  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003e762c  e7 ff ff ea                                      b #0x3e75d0
; mapping-symbol data/literal pool
003e7630  e0 d4 5a 00 04 12 00 00 b0 ea 4d 00              .byte 0xe0, 0xd4, 0x5a, 0x00, 0x04, 0x12, 0x00, 0x00, 0xb0, 0xea, 0x4d, 0x00

; FUNCTION 0x003e763c, declared_size=320, range_size=320, mode=arm
; class-group: Door
; alias: _ZN4Door5CloseEb
; demangled: Door::Close(bool)
; decoder-mode: arm
003e763c  70 40 2d e9                                      push {r4, r5, r6, lr}
003e7640  ac 33 d0 e5                                      ldrb r3, [r0, #0x3ac]
003e7644  20 41 9f e5                                      ldr r4, [pc, #0x120]
003e7648  20 d0 4d e2                                      sub sp, sp, #0x20
003e764c  00 00 53 e3                                      cmp r3, #0
003e7650  00 50 a0 e1                                      mov r5, r0
003e7654  04 40 8f e0                                      add r4, pc, r4
003e7658  02 00 00 1a                                      bne #0x3e7668
003e765c  a8 33 90 e5                                      ldr r3, [r0, #0x3a8]
003e7660  01 00 53 e3                                      cmp r3, #1
003e7664  01 00 00 0a                                      beq #0x3e7670
003e7668  20 d0 8d e2                                      add sp, sp, #0x20
003e766c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003e7670  d8 62 90 e5                                      ldr r6, [r0, #0x2d8]
003e7674  00 00 56 e3                                      cmp r6, #0
003e7678  0c 00 00 0a                                      beq #0x3e76b0
003e767c  00 00 51 e3                                      cmp r1, #0
003e7680  0a 00 00 1a                                      bne #0x3e76b0
003e7684  00 30 90 e5                                      ldr r3, [r0]
003e7688  0f e0 a0 e1                                      mov lr, pc
003e768c  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
003e7690  00 00 50 e3                                      cmp r0, #0
003e7694  24 00 00 0a                                      beq #0x3e772c
003e7698  ee 32 d5 e5                                      ldrb r3, [r5, #0x2ee]
003e769c  00 00 53 e3                                      cmp r3, #0
003e76a0  21 00 00 0a                                      beq #0x3e772c
003e76a4  f0 32 d5 e5                                      ldrb r3, [r5, #0x2f0]
003e76a8  00 00 53 e3                                      cmp r3, #0
003e76ac  1e 00 00 1a                                      bne #0x3e772c
003e76b0  05 00 a0 e1                                      mov r0, r5
003e76b4  00 10 a0 e3                                      mov r1, #0
003e76b8  b6 ff ff eb                                      bl #0x3e7598
003e76bc  a0 33 95 e5                                      ldr r3, [r5, #0x3a0]
003e76c0  01 00 73 e3                                      cmn r3, #1
003e76c4  e7 ff ff 0a                                      beq #0x3e7668
003e76c8  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
003e76cc  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
003e76d0  68 e1 95 e5                                      ldr lr, [r5, #0x168]
003e76d4  02 20 94 e7                                      ldr r2, [r4, r2]
003e76d8  01 10 94 e7                                      ldr r1, [r4, r1]
003e76dc  60 61 95 e5                                      ldr r6, [r5, #0x160]
003e76e0  00 20 92 e5                                      ldr r2, [r2]
003e76e4  00 00 91 e5                                      ldr r0, [r1]
003e76e8  18 10 a0 e3                                      mov r1, #0x18
003e76ec  91 23 23 e0                                      mla r3, r1, r3, r2
003e76f0  64 41 95 e5                                      ldr r4, [r5, #0x164]
003e76f4  bf c4 a0 e3                                      mov ip, #0xbf000000
003e76f8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003e76fc  02 c5 8c e2                                      add ip, ip, #0x800000
003e7700  1c e0 8d e5                                      str lr, [sp, #0x1c]
003e7704  14 20 8d e2                                      add r2, sp, #0x14
003e7708  01 e0 a0 e3                                      mov lr, #1
003e770c  00 30 a0 e3                                      mov r3, #0
003e7710  14 60 8d e5                                      str r6, [sp, #0x14]
003e7714  18 40 8d e5                                      str r4, [sp, #0x18]
003e7718  00 e0 8d e5                                      str lr, [sp]
003e771c  08 c0 8d e5                                      str ip, [sp, #8]
003e7720  04 c0 8d e5                                      str ip, [sp, #4]
003e7724  ab 0f fe eb                                      bl #0x36b5d8
003e7728  ce ff ff ea                                      b #0x3e7668
003e772c  02 20 a0 e3                                      mov r2, #2
003e7730  a8 23 85 e5                                      str r2, [r5, #0x3a8]
003e7734  00 30 a0 e3                                      mov r3, #0
003e7738  01 20 a0 e3                                      mov r2, #1
003e773c  ac 23 c5 e5                                      strb r2, [r5, #0x3ac]
003e7740  85 30 c5 e5                                      strb r3, [r5, #0x85]
003e7744  38 c0 96 e5                                      ldr ip, [r6, #0x38]
003e7748  28 10 9f e5                                      ldr r1, [pc, #0x28]
003e774c  03 20 a0 e1                                      mov r2, r3
003e7750  0c 00 a0 e1                                      mov r0, ip
003e7754  01 10 8f e0                                      add r1, pc, r1
003e7758  00 c0 9c e5                                      ldr ip, [ip]
003e775c  00 30 8d e5                                      str r3, [sp]
003e7760  0f e0 a0 e1                                      mov lr, pc
003e7764  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003e7768  d3 ff ff ea                                      b #0x3e76bc
; mapping-symbol data/literal pool
003e776c  3c d4 5a 00 08 1e 00 00 a4 0d 00 00 6c e9 4d 00  .byte 0x3c, 0xd4, 0x5a, 0x00, 0x08, 0x1e, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0x6c, 0xe9, 0x4d, 0x00

; FUNCTION 0x003e777c, declared_size=12, range_size=12, mode=arm
; class-group: Door
; alias: _ZN4Door6_CloseERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: Door::_Close(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
003e777c  02 00 a0 e1                                      mov r0, r2
003e7780  00 10 a0 e3                                      mov r1, #0
003e7784  ac ff ff ea                                      b #0x3e763c

; FUNCTION 0x003e7788, declared_size=160, range_size=160, mode=arm
; class-group: Door
; alias: _ZN4Door6OpenedEb
; demangled: Door::Opened(bool)
; decoder-mode: arm
003e7788  70 40 2d e9                                      push {r4, r5, r6, lr}
003e778c  d8 32 90 e5                                      ldr r3, [r0, #0x2d8]
003e7790  84 50 9f e5                                      ldr r5, [pc, #0x84]
003e7794  01 20 a0 e3                                      mov r2, #1
003e7798  00 00 53 e3                                      cmp r3, #0
003e779c  05 50 8f e0                                      add r5, pc, r5
003e77a0  08 d0 4d e2                                      sub sp, sp, #8
003e77a4  00 40 a0 e1                                      mov r4, r0
003e77a8  01 e0 a0 e1                                      mov lr, r1
003e77ac  a8 23 80 e5                                      str r2, [r0, #0x3a8]
003e77b0  dc 62 90 e5                                      ldr r6, [r0, #0x2dc]
003e77b4  01 00 00 0a                                      beq #0x3e77c0
003e77b8  00 00 51 e3                                      cmp r1, #0
003e77bc  0c 00 00 0a                                      beq #0x3e77f4
003e77c0  00 00 56 e3                                      cmp r6, #0
003e77c4  01 00 00 0a                                      beq #0x3e77d0
003e77c8  06 00 a0 e1                                      mov r0, r6
003e77cc  e7 1c 02 eb                                      bl #0x46eb70
003e77d0  48 30 9f e5                                      ldr r3, [pc, #0x48]
003e77d4  72 1f 84 e2                                      add r1, r4, #0x1c8
003e77d8  00 20 a0 e3                                      mov r2, #0
003e77dc  03 00 95 e7                                      ldr r0, [r5, r3]
003e77e0  c1 f6 04 eb                                      bl #0x5252ec
003e77e4  01 30 a0 e3                                      mov r3, #1
003e77e8  73 33 c4 e5                                      strb r3, [r4, #0x373]
003e77ec  08 d0 8d e2                                      add sp, sp, #8
003e77f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003e77f4  38 c0 93 e5                                      ldr ip, [r3, #0x38]
003e77f8  24 10 9f e5                                      ldr r1, [pc, #0x24]
003e77fc  0e 30 a0 e1                                      mov r3, lr
003e7800  0c 00 a0 e1                                      mov r0, ip
003e7804  01 10 8f e0                                      add r1, pc, r1
003e7808  00 c0 9c e5                                      ldr ip, [ip]
003e780c  00 e0 8d e5                                      str lr, [sp]
003e7810  0f e0 a0 e1                                      mov lr, pc
003e7814  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003e7818  e8 ff ff ea                                      b #0x3e77c0
; mapping-symbol data/literal pool
003e781c  f4 d2 5a 00 04 12 00 00 d4 e8 4d 00              .byte 0xf4, 0xd2, 0x5a, 0x00, 0x04, 0x12, 0x00, 0x00, 0xd4, 0xe8, 0x4d, 0x00

; FUNCTION 0x003e7828, declared_size=68, range_size=68, mode=arm
; class-group: Door
; alias: _ZN4Door26InterpretIncomingNetStructEb
; demangled: Door::InterpretIncomingNetStruct(bool)
; decoder-mode: arm
003e7828  00 00 51 e3                                      cmp r1, #0
003e782c  1e ff 2f 01                                      bxeq lr
003e7830  8d 16 d0 e5                                      ldrb r1, [r0, #0x68d]
003e7834  00 00 51 e3                                      cmp r1, #0
003e7838  06 00 00 0a                                      beq #0x3e7858
003e783c  a8 13 90 e5                                      ldr r1, [r0, #0x3a8]
003e7840  01 00 51 e3                                      cmp r1, #1
003e7844  03 00 51 13                                      cmpne r1, #3
003e7848  00 10 a0 13                                      movne r1, #0
003e784c  01 10 a0 03                                      moveq r1, #1
003e7850  1e ff 2f 01                                      bxeq lr
003e7854  cb ff ff ea                                      b #0x3e7788
003e7858  a8 33 90 e5                                      ldr r3, [r0, #0x3a8]
003e785c  01 00 53 e3                                      cmp r3, #1
003e7860  03 00 53 13                                      cmpne r3, #3
003e7864  1e ff 2f 11                                      bxne lr
003e7868  4a ff ff ea                                      b #0x3e7598

; FUNCTION 0x003e786c, declared_size=316, range_size=316, mode=arm
; class-group: Door
; alias: _ZN4Door4OpenEb
; demangled: Door::Open(bool)
; decoder-mode: arm
003e786c  70 40 2d e9                                      push {r4, r5, r6, lr}
003e7870  ac 33 d0 e5                                      ldrb r3, [r0, #0x3ac]
003e7874  1c 51 9f e5                                      ldr r5, [pc, #0x11c]
003e7878  20 d0 4d e2                                      sub sp, sp, #0x20
003e787c  00 00 53 e3                                      cmp r3, #0
003e7880  00 40 a0 e1                                      mov r4, r0
003e7884  05 50 8f e0                                      add r5, pc, r5
003e7888  25 00 00 1a                                      bne #0x3e7924
003e788c  a8 33 90 e5                                      ldr r3, [r0, #0x3a8]
003e7890  00 00 53 e3                                      cmp r3, #0
003e7894  22 00 00 1a                                      bne #0x3e7924
003e7898  d8 62 90 e5                                      ldr r6, [r0, #0x2d8]
003e789c  00 00 56 e3                                      cmp r6, #0
003e78a0  01 00 00 0a                                      beq #0x3e78ac
003e78a4  00 00 51 e3                                      cmp r1, #0
003e78a8  1f 00 00 0a                                      beq #0x3e792c
003e78ac  04 00 a0 e1                                      mov r0, r4
003e78b0  00 10 a0 e3                                      mov r1, #0
003e78b4  b3 ff ff eb                                      bl #0x3e7788
003e78b8  a0 33 94 e5                                      ldr r3, [r4, #0x3a0]
003e78bc  01 00 73 e3                                      cmn r3, #1
003e78c0  17 00 00 0a                                      beq #0x3e7924
003e78c4  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
003e78c8  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
003e78cc  68 e1 94 e5                                      ldr lr, [r4, #0x168]
003e78d0  02 20 95 e7                                      ldr r2, [r5, r2]
003e78d4  01 10 95 e7                                      ldr r1, [r5, r1]
003e78d8  60 61 94 e5                                      ldr r6, [r4, #0x160]
003e78dc  00 20 92 e5                                      ldr r2, [r2]
003e78e0  00 00 91 e5                                      ldr r0, [r1]
003e78e4  18 10 a0 e3                                      mov r1, #0x18
003e78e8  91 23 23 e0                                      mla r3, r1, r3, r2
003e78ec  64 51 94 e5                                      ldr r5, [r4, #0x164]
003e78f0  bf c4 a0 e3                                      mov ip, #0xbf000000
003e78f4  10 10 93 e5                                      ldr r1, [r3, #0x10]
003e78f8  02 c5 8c e2                                      add ip, ip, #0x800000
003e78fc  1c e0 8d e5                                      str lr, [sp, #0x1c]
003e7900  14 20 8d e2                                      add r2, sp, #0x14
003e7904  01 e0 a0 e3                                      mov lr, #1
003e7908  00 30 a0 e3                                      mov r3, #0
003e790c  14 60 8d e5                                      str r6, [sp, #0x14]
003e7910  18 50 8d e5                                      str r5, [sp, #0x18]
003e7914  00 e0 8d e5                                      str lr, [sp]
003e7918  08 c0 8d e5                                      str ip, [sp, #8]
003e791c  04 c0 8d e5                                      str ip, [sp, #4]
003e7920  2c 0f fe eb                                      bl #0x36b5d8
003e7924  20 d0 8d e2                                      add sp, sp, #0x20
003e7928  70 80 bd e8                                      pop {r4, r5, r6, pc}
003e792c  00 30 90 e5                                      ldr r3, [r0]
003e7930  0f e0 a0 e1                                      mov lr, pc
003e7934  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
003e7938  00 00 50 e3                                      cmp r0, #0
003e793c  05 00 00 0a                                      beq #0x3e7958
003e7940  ee 32 d4 e5                                      ldrb r3, [r4, #0x2ee]
003e7944  00 00 53 e3                                      cmp r3, #0
003e7948  02 00 00 0a                                      beq #0x3e7958
003e794c  f0 32 d4 e5                                      ldrb r3, [r4, #0x2f0]
003e7950  00 00 53 e3                                      cmp r3, #0
003e7954  d4 ff ff 0a                                      beq #0x3e78ac
003e7958  03 20 a0 e3                                      mov r2, #3
003e795c  a8 23 84 e5                                      str r2, [r4, #0x3a8]
003e7960  00 30 a0 e3                                      mov r3, #0
003e7964  01 20 a0 e3                                      mov r2, #1
003e7968  ac 23 c4 e5                                      strb r2, [r4, #0x3ac]
003e796c  85 30 c4 e5                                      strb r3, [r4, #0x85]
003e7970  38 c0 96 e5                                      ldr ip, [r6, #0x38]
003e7974  28 10 9f e5                                      ldr r1, [pc, #0x28]
003e7978  03 20 a0 e1                                      mov r2, r3
003e797c  0c 00 a0 e1                                      mov r0, ip
003e7980  01 10 8f e0                                      add r1, pc, r1
003e7984  00 c0 9c e5                                      ldr ip, [ip]
003e7988  00 30 8d e5                                      str r3, [sp]
003e798c  0f e0 a0 e1                                      mov lr, pc
003e7990  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003e7994  c7 ff ff ea                                      b #0x3e78b8
; mapping-symbol data/literal pool
003e7998  0c d2 5a 00 08 1e 00 00 a4 0d 00 00 c8 9c 4d 00  .byte 0x0c, 0xd2, 0x5a, 0x00, 0x08, 0x1e, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xc8, 0x9c, 0x4d, 0x00

; FUNCTION 0x003e79a8, declared_size=12, range_size=12, mode=arm
; class-group: Door
; alias: _ZN4Door5_OpenERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: Door::_Open(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
003e79a8  02 00 a0 e1                                      mov r0, r2
003e79ac  00 10 a0 e3                                      mov r1, #0
003e79b0  ad ff ff ea                                      b #0x3e786c

; FUNCTION 0x003e7a64, declared_size=8, range_size=8, mode=arm
; class-group: Door
; alias: _ZThn36_N4Door11DeserializeEP11IStreamBase
; demangled: non-virtual thunk to Door::Deserialize(IStreamBase*)
; decoder-mode: arm
003e7a64  24 00 40 e2                                      sub r0, r0, #0x24
003e7a68  ff ff ff ea                                      b #0x3e7a6c

; FUNCTION 0x003e7a6c, declared_size=80, range_size=80, mode=arm
; class-group: Door
; alias: _ZN4Door11DeserializeEP11IStreamBase
; demangled: Door::Deserialize(IStreamBase*)
; decoder-mode: arm
003e7a6c  70 40 2d e9                                      push {r4, r5, r6, lr}
003e7a70  00 40 a0 e1                                      mov r4, r0
003e7a74  01 50 a0 e1                                      mov r5, r1
003e7a78  a7 8f fe eb                                      bl #0x38b91c
003e7a7c  05 00 a0 e1                                      mov r0, r5
003e7a80  ea 1f 84 e2                                      add r1, r4, #0x3a8
003e7a84  ca ff ff eb                                      bl #0x3e79b4
003e7a88  a8 33 94 e5                                      ldr r3, [r4, #0x3a8]
003e7a8c  01 00 53 e3                                      cmp r3, #1
003e7a90  05 00 00 0a                                      beq #0x3e7aac
003e7a94  03 00 53 e3                                      cmp r3, #3
003e7a98  03 00 00 0a                                      beq #0x3e7aac
003e7a9c  04 00 a0 e1                                      mov r0, r4
003e7aa0  00 10 a0 e3                                      mov r1, #0
003e7aa4  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e7aa8  ba fe ff ea                                      b #0x3e7598
003e7aac  04 00 a0 e1                                      mov r0, r4
003e7ab0  00 10 a0 e3                                      mov r1, #0
003e7ab4  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e7ab8  32 ff ff ea                                      b #0x3e7788

; FUNCTION 0x003e7b6c, declared_size=8, range_size=8, mode=arm
; class-group: Door
; alias: _ZThn36_N4Door9SerializeEP11IStreamBase
; demangled: non-virtual thunk to Door::Serialize(IStreamBase*)
; decoder-mode: arm
003e7b6c  24 00 40 e2                                      sub r0, r0, #0x24
003e7b70  ff ff ff ea                                      b #0x3e7b74

; FUNCTION 0x003e7b74, declared_size=32, range_size=32, mode=arm
; class-group: Door
; alias: _ZN4Door9SerializeEP11IStreamBase
; demangled: Door::Serialize(IStreamBase*)
; decoder-mode: arm
003e7b74  70 40 2d e9                                      push {r4, r5, r6, lr}
003e7b78  00 40 a0 e1                                      mov r4, r0
003e7b7c  01 50 a0 e1                                      mov r5, r1
003e7b80  97 8f fe eb                                      bl #0x38b9e4
003e7b84  05 00 a0 e1                                      mov r0, r5
003e7b88  ea 1f 84 e2                                      add r1, r4, #0x3a8
003e7b8c  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e7b90  c9 ff ff ea                                      b #0x3e7abc

; FUNCTION 0x003e7b94, declared_size=68, range_size=68, mode=arm
; class-group: Door
; alias: _ZN4Door8DisabledEv
; demangled: Door::Disabled()
; decoder-mode: arm
003e7b94  10 40 2d e9                                      push {r4, lr}
003e7b98  00 40 a0 e1                                      mov r4, r0
003e7b9c  98 8f fe eb                                      bl #0x38ba04
003e7ba0  a8 23 94 e5                                      ldr r2, [r4, #0x3a8]
003e7ba4  24 30 9f e5                                      ldr r3, [pc, #0x24]
003e7ba8  01 00 52 e3                                      cmp r2, #1
003e7bac  03 30 8f e0                                      add r3, pc, r3
003e7bb0  05 00 00 0a                                      beq #0x3e7bcc
003e7bb4  18 00 9f e5                                      ldr r0, [pc, #0x18]
003e7bb8  72 1f 84 e2                                      add r1, r4, #0x1c8
003e7bbc  00 20 a0 e3                                      mov r2, #0
003e7bc0  00 00 93 e7                                      ldr r0, [r3, r0]
003e7bc4  10 40 bd e8                                      pop {r4, lr}
003e7bc8  c7 f5 04 ea                                      b #0x5252ec
003e7bcc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003e7bd0  e4 ce 5a 00 04 12 00 00                          .byte 0xe4, 0xce, 0x5a, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x003e7bd8, declared_size=68, range_size=68, mode=arm
; class-group: Door
; alias: _ZN4Door7EnabledEv
; demangled: Door::Enabled()
; decoder-mode: arm
003e7bd8  10 40 2d e9                                      push {r4, lr}
003e7bdc  00 40 a0 e1                                      mov r4, r0
003e7be0  94 8f fe eb                                      bl #0x38ba38
003e7be4  a8 23 94 e5                                      ldr r2, [r4, #0x3a8]
003e7be8  24 30 9f e5                                      ldr r3, [pc, #0x24]
003e7bec  01 00 52 e3                                      cmp r2, #1
003e7bf0  03 30 8f e0                                      add r3, pc, r3
003e7bf4  05 00 00 0a                                      beq #0x3e7c10
003e7bf8  18 00 9f e5                                      ldr r0, [pc, #0x18]
003e7bfc  72 1f 84 e2                                      add r1, r4, #0x1c8
003e7c00  01 20 a0 e3                                      mov r2, #1
003e7c04  00 00 93 e7                                      ldr r0, [r3, r0]
003e7c08  10 40 bd e8                                      pop {r4, lr}
003e7c0c  b6 f5 04 ea                                      b #0x5252ec
003e7c10  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003e7c14  a0 ce 5a 00 04 12 00 00                          .byte 0xa0, 0xce, 0x5a, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x003e7c1c, declared_size=92, range_size=92, mode=arm
; class-group: Door
; alias: _ZN4Door9InitFinalEv
; demangled: Door::InitFinal()
; decoder-mode: arm
003e7c1c  10 40 2d e9                                      push {r4, lr}
003e7c20  00 40 a0 e1                                      mov r4, r0
003e7c24  4e 90 fe eb                                      bl #0x38bd64
003e7c28  74 32 94 e5                                      ldr r3, [r4, #0x274]
003e7c2c  03 00 50 e1                                      cmp r0, r3
003e7c30  00 00 00 ba                                      blt #0x3e7c38
003e7c34  10 80 bd e8                                      pop {r4, pc}
003e7c38  04 00 a0 e1                                      mov r0, r4
003e7c3c  41 94 fe eb                                      bl #0x38cd48
003e7c40  04 00 a0 e1                                      mov r0, r4
003e7c44  c5 8b fe eb                                      bl #0x38ab60
003e7c48  00 00 50 e3                                      cmp r0, #0
003e7c4c  f8 ff ff 0a                                      beq #0x3e7c34
003e7c50  a4 13 d4 e5                                      ldrb r1, [r4, #0x3a4]
003e7c54  00 00 51 e3                                      cmp r1, #0
003e7c58  02 00 00 1a                                      bne #0x3e7c68
003e7c5c  04 00 a0 e1                                      mov r0, r4
003e7c60  10 40 bd e8                                      pop {r4, lr}
003e7c64  4b fe ff ea                                      b #0x3e7598
003e7c68  04 00 a0 e1                                      mov r0, r4
003e7c6c  00 10 a0 e3                                      mov r1, #0
003e7c70  10 40 bd e8                                      pop {r4, lr}
003e7c74  c3 fe ff ea                                      b #0x3e7788

; FUNCTION 0x003e7da8, declared_size=596, range_size=596, mode=arm
; class-group: Door
; alias: _ZN4Door8InitPostEv
; demangled: Door::InitPost()
; decoder-mode: arm
003e7da8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003e7dac  24 d0 4d e2                                      sub sp, sp, #0x24
003e7db0  00 40 a0 e1                                      mov r4, r0
003e7db4  ea 8f fe eb                                      bl #0x38bd64
003e7db8  74 32 94 e5                                      ldr r3, [r4, #0x274]
003e7dbc  10 52 9f e5                                      ldr r5, [pc, #0x210]
003e7dc0  03 00 50 e1                                      cmp r0, r3
003e7dc4  05 50 8f e0                                      add r5, pc, r5
003e7dc8  5d 00 00 aa                                      bge #0x3e7f44
003e7dcc  04 32 9f e5                                      ldr r3, [pc, #0x204]
003e7dd0  9c 83 94 e5                                      ldr r8, [r4, #0x39c]
003e7dd4  03 30 95 e7                                      ldr r3, [r5, r3]
003e7dd8  00 70 93 e5                                      ldr r7, [r3]
003e7ddc  00 00 57 e3                                      cmp r7, #0
003e7de0  59 00 00 0a                                      beq #0x3e7f4c
003e7de4  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
003e7de8  00 60 a0 e3                                      mov r6, #0
003e7dec  03 30 95 e7                                      ldr r3, [r5, r3]
003e7df0  00 a0 93 e5                                      ldr sl, [r3]
003e7df4  02 00 00 ea                                      b #0x3e7e04
003e7df8  01 60 86 e2                                      add r6, r6, #1
003e7dfc  07 00 56 e1                                      cmp r6, r7
003e7e00  51 00 00 0a                                      beq #0x3e7f4c
003e7e04  06 11 9a e7                                      ldr r1, [sl, r6, lsl #2]
003e7e08  08 00 a0 e1                                      mov r0, r8
003e7e0c  42 99 fc eb                                      bl #0x30e31c
003e7e10  00 00 50 e3                                      cmp r0, #0
003e7e14  f7 ff ff 1a                                      bne #0x3e7df8
003e7e18  01 00 76 e3                                      cmn r6, #1
003e7e1c  a0 63 84 e5                                      str r6, [r4, #0x3a0]
003e7e20  13 00 00 0a                                      beq #0x3e7e74
003e7e24  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
003e7e28  18 20 a0 e3                                      mov r2, #0x18
003e7e2c  03 30 95 e7                                      ldr r3, [r5, r3]
003e7e30  00 30 93 e5                                      ldr r3, [r3]
003e7e34  92 36 26 e0                                      mla r6, r2, r6, r3
003e7e38  14 30 96 e5                                      ldr r3, [r6, #0x14]
003e7e3c  01 00 73 e3                                      cmn r3, #1
003e7e40  0b 00 00 0a                                      beq #0x3e7e74
003e7e44  98 21 9f e5                                      ldr r2, [pc, #0x198]
003e7e48  0c 10 a0 e3                                      mov r1, #0xc
003e7e4c  02 20 95 e7                                      ldr r2, [r5, r2]
003e7e50  00 20 92 e5                                      ldr r2, [r2]
003e7e54  91 23 23 e0                                      mla r3, r1, r3, r2
003e7e58  08 60 93 e5                                      ldr r6, [r3, #8]
003e7e5c  06 00 a0 e1                                      mov r0, r6
003e7e60  fb 97 fc eb                                      bl #0x30de54
003e7e64  06 10 a0 e1                                      mov r1, r6
003e7e68  00 20 86 e0                                      add r2, r6, r0
003e7e6c  29 0e 84 e2                                      add r0, r4, #0x290
003e7e70  da a2 fc eb                                      bl #0x3109e0
003e7e74  04 00 a0 e1                                      mov r0, r4
003e7e78  27 be fe eb                                      bl #0x39771c
003e7e7c  04 00 a0 e1                                      mov r0, r4
003e7e80  36 8b fe eb                                      bl #0x38ab60
003e7e84  00 10 50 e2                                      subs r1, r0, #0
003e7e88  29 00 00 0a                                      beq #0x3e7f34
003e7e8c  d8 62 94 e5                                      ldr r6, [r4, #0x2d8]
003e7e90  00 00 56 e3                                      cmp r6, #0
003e7e94  0c 00 00 0a                                      beq #0x3e7ecc
003e7e98  48 31 9f e5                                      ldr r3, [pc, #0x148]
003e7e9c  38 20 96 e5                                      ldr r2, [r6, #0x38]
003e7ea0  03 10 95 e7                                      ldr r1, [r5, r3]
003e7ea4  40 31 9f e5                                      ldr r3, [pc, #0x140]
003e7ea8  02 00 a0 e1                                      mov r0, r2
003e7eac  00 c0 92 e5                                      ldr ip, [r2]
003e7eb0  03 30 95 e7                                      ldr r3, [r5, r3]
003e7eb4  00 40 8d e5                                      str r4, [sp]
003e7eb8  04 20 a0 e1                                      mov r2, r4
003e7ebc  0f e0 a0 e1                                      mov lr, pc
003e7ec0  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
003e7ec4  06 00 a0 e1                                      mov r0, r6
003e7ec8  e1 22 02 eb                                      bl #0x470a54
003e7ecc  a5 33 d4 e5                                      ldrb r3, [r4, #0x3a5]
003e7ed0  00 00 53 e3                                      cmp r3, #0
003e7ed4  1f 00 00 1a                                      bne #0x3e7f58
003e7ed8  a0 33 94 e5                                      ldr r3, [r4, #0x3a0]
003e7edc  01 00 73 e3                                      cmn r3, #1
003e7ee0  17 00 00 0a                                      beq #0x3e7f44
003e7ee4  04 21 9f e5                                      ldr r2, [pc, #0x104]
003e7ee8  02 60 95 e7                                      ldr r6, [r5, r2]
003e7eec  00 00 96 e5                                      ldr r0, [r6]
003e7ef0  00 00 50 e3                                      cmp r0, #0
003e7ef4  12 00 00 0a                                      beq #0x3e7f44
003e7ef8  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
003e7efc  18 70 a0 e3                                      mov r7, #0x18
003e7f00  02 50 95 e7                                      ldr r5, [r5, r2]
003e7f04  00 20 95 e5                                      ldr r2, [r5]
003e7f08  97 23 23 e0                                      mla r3, r7, r3, r2
003e7f0c  10 10 93 e5                                      ldr r1, [r3, #0x10]
003e7f10  b9 06 fe eb                                      bl #0x3699fc
003e7f14  a0 23 94 e5                                      ldr r2, [r4, #0x3a0]
003e7f18  00 30 95 e5                                      ldr r3, [r5]
003e7f1c  00 00 96 e5                                      ldr r0, [r6]
003e7f20  97 32 27 e0                                      mla r7, r7, r2, r3
003e7f24  0c 10 97 e5                                      ldr r1, [r7, #0xc]
003e7f28  24 d0 8d e2                                      add sp, sp, #0x24
003e7f2c  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
003e7f30  b1 06 fe ea                                      b #0x3699fc
003e7f34  04 00 a0 e1                                      mov r0, r4
003e7f38  00 30 94 e5                                      ldr r3, [r4]
003e7f3c  0f e0 a0 e1                                      mov lr, pc
003e7f40  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003e7f44  24 d0 8d e2                                      add sp, sp, #0x24
003e7f48  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003e7f4c  00 30 e0 e3                                      mvn r3, #0
003e7f50  a0 33 84 e5                                      str r3, [r4, #0x3a0]
003e7f54  c6 ff ff ea                                      b #0x3e7e74
003e7f58  94 30 9f e5                                      ldr r3, [pc, #0x94]
003e7f5c  00 10 a0 e3                                      mov r1, #0
003e7f60  28 00 a0 e3                                      mov r0, #0x28
003e7f64  03 30 95 e7                                      ldr r3, [r5, r3]
003e7f68  01 60 a0 e1                                      mov r6, r1
003e7f6c  44 80 93 e5                                      ldr r8, [r3, #0x44]
003e7f70  7e a1 fc eb                                      bl #0x310570
003e7f74  01 c0 a0 e3                                      mov ip, #1
003e7f78  02 e0 a0 e3                                      mov lr, #2
003e7f7c  08 10 a0 e1                                      mov r1, r8
003e7f80  0c 30 a0 e1                                      mov r3, ip
003e7f84  04 20 a0 e1                                      mov r2, r4
003e7f88  10 e0 8d e5                                      str lr, [sp, #0x10]
003e7f8c  ff ef 0f e3                                      movw lr, #0xffff
003e7f90  00 70 a0 e1                                      mov r7, r0
003e7f94  14 e0 8d e5                                      str lr, [sp, #0x14]
003e7f98  00 60 8d e5                                      str r6, [sp]
003e7f9c  04 60 8d e5                                      str r6, [sp, #4]
003e7fa0  08 60 8d e5                                      str r6, [sp, #8]
003e7fa4  0c 60 8d e5                                      str r6, [sp, #0xc]
003e7fa8  18 c0 8d e5                                      str ip, [sp, #0x18]
003e7fac  cf 1c 02 eb                                      bl #0x46f2f0
003e7fb0  40 30 9f e5                                      ldr r3, [pc, #0x40]
003e7fb4  07 10 a0 e1                                      mov r1, r7
003e7fb8  06 20 a0 e1                                      mov r2, r6
003e7fbc  03 30 95 e7                                      ldr r3, [r5, r3]
003e7fc0  04 00 a0 e1                                      mov r0, r4
003e7fc4  08 30 83 e2                                      add r3, r3, #8
003e7fc8  00 30 87 e5                                      str r3, [r7]
003e7fcc  09 b3 fe eb                                      bl #0x394bf8
003e7fd0  c0 ff ff ea                                      b #0x3e7ed8
; mapping-symbol data/literal pool
003e7fd4  cc cc 5a 00 f4 12 00 00 88 44 00 00 08 1e 00 00  .byte 0xcc, 0xcc, 0x5a, 0x00, 0xf4, 0x12, 0x00, 0x00, 0x88, 0x44, 0x00, 0x00, 0x08, 0x1e, 0x00, 0x00
003e7fe4  a8 1c 00 00 48 0a 00 00 84 3a 00 00 a4 0d 00 00  .byte 0xa8, 0x1c, 0x00, 0x00, 0x48, 0x0a, 0x00, 0x00, 0x84, 0x3a, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00
003e7ff4  f4 37 00 00 18 24 00 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0x18, 0x24, 0x00, 0x00

; FUNCTION 0x003e8088, declared_size=76, range_size=76, mode=arm
; class-group: Door
; alias: _ZN4Door25PopulateOutgoingNetStructEb
; demangled: Door::PopulateOutgoingNetStruct(bool)
; decoder-mode: arm
003e8088  00 00 51 e3                                      cmp r1, #0
003e808c  10 40 2d e9                                      push {r4, lr}
003e8090  00 40 a0 e1                                      mov r4, r0
003e8094  00 00 00 1a                                      bne #0x3e809c
003e8098  10 80 bd e8                                      pop {r4, pc}
003e809c  a8 33 90 e5                                      ldr r3, [r0, #0x3a8]
003e80a0  fd 24 d0 e5                                      ldrb r2, [r0, #0x4fd]
003e80a4  01 00 53 e3                                      cmp r3, #1
003e80a8  03 00 53 13                                      cmpne r3, #3
003e80ac  00 30 a0 13                                      movne r3, #0
003e80b0  01 30 a0 03                                      moveq r3, #1
003e80b4  03 00 52 e1                                      cmp r2, r3
003e80b8  02 00 00 0a                                      beq #0x3e80c8
003e80bc  fd 34 c0 e5                                      strb r3, [r0, #0x4fd]
003e80c0  4e 0e 80 e2                                      add r0, r0, #0x4e0
003e80c4  ae b3 10 eb                                      bl #0x814f84
003e80c8  3b 0e 84 e2                                      add r0, r4, #0x3b0
003e80cc  10 40 bd e8                                      pop {r4, lr}
003e80d0  e9 ac 10 ea                                      b #0x81347c

; FUNCTION 0x003e8274, declared_size=176, range_size=176, mode=arm
; class-group: Door
; alias: _ZN4DoorC1EN10ObjectBase6GO_IDSE
; demangled: Door::Door(ObjectBase::GO_IDS)
; decoder-mode: arm
003e8274  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e8278  00 20 a0 e3                                      mov r2, #0
003e827c  01 30 a0 e3                                      mov r3, #1
003e8280  94 50 9f e5                                      ldr r5, [pc, #0x94]
003e8284  00 40 a0 e1                                      mov r4, r0
003e8288  84 be fe eb                                      bl #0x397ca0
003e828c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003e8290  05 50 8f e0                                      add r5, pc, r5
003e8294  e2 2f 84 e2                                      add r2, r4, #0x388
003e8298  03 30 95 e7                                      ldr r3, [r5, r3]
003e829c  02 00 a0 e1                                      mov r0, r2
003e82a0  98 23 84 e5                                      str r2, [r4, #0x398]
003e82a4  08 c0 83 e2                                      add ip, r3, #8
003e82a8  f4 10 83 e2                                      add r1, r3, #0xf4
003e82ac  e8 30 83 e2                                      add r3, r3, #0xe8
003e82b0  00 c0 84 e5                                      str ip, [r4]
003e82b4  04 30 84 e5                                      str r3, [r4, #4]
003e82b8  24 10 84 e5                                      str r1, [r4, #0x24]
003e82bc  9c 23 84 e5                                      str r2, [r4, #0x39c]
003e82c0  10 10 a0 e3                                      mov r1, #0x10
003e82c4  ec a4 fc eb                                      bl #0x31167c
003e82c8  98 23 94 e5                                      ldr r2, [r4, #0x398]
003e82cc  00 30 a0 e3                                      mov r3, #0
003e82d0  01 70 a0 e3                                      mov r7, #1
003e82d4  3b 6e 84 e2                                      add r6, r4, #0x3b0
003e82d8  00 30 c2 e5                                      strb r3, [r2]
003e82dc  15 5d 84 e2                                      add r5, r4, #0x540
003e82e0  ac 33 c4 e5                                      strb r3, [r4, #0x3ac]
003e82e4  a4 33 c4 e5                                      strb r3, [r4, #0x3a4]
003e82e8  a8 33 84 e5                                      str r3, [r4, #0x3a8]
003e82ec  a5 73 c4 e5                                      strb r7, [r4, #0x3a5]
003e82f0  06 00 a0 e1                                      mov r0, r6
003e82f4  76 ff ff eb                                      bl #0x3e80d4
003e82f8  05 00 a0 e1                                      mov r0, r5
003e82fc  74 ff ff eb                                      bl #0x3e80d4
003e8300  03 30 a0 e3                                      mov r3, #3
003e8304  28 70 c4 e5                                      strb r7, [r4, #0x28]
003e8308  00 61 84 e5                                      str r6, [r4, #0x100]
003e830c  04 51 84 e5                                      str r5, [r4, #0x104]
003e8310  f8 30 c4 e5                                      strb r3, [r4, #0xf8]
003e8314  04 00 a0 e1                                      mov r0, r4
003e8318  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003e831c  00 c8 5a 00 84 49 00 00                          .byte 0x00, 0xc8, 0x5a, 0x00, 0x84, 0x49, 0x00, 0x00

; FUNCTION 0x003e8324, declared_size=176, range_size=176, mode=arm
; class-group: Door
; alias: _ZN4DoorC2EN10ObjectBase6GO_IDSE
; demangled: Door::Door(ObjectBase::GO_IDS)
; decoder-mode: arm
003e8324  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e8328  00 20 a0 e3                                      mov r2, #0
003e832c  01 30 a0 e3                                      mov r3, #1
003e8330  94 50 9f e5                                      ldr r5, [pc, #0x94]
003e8334  00 40 a0 e1                                      mov r4, r0
003e8338  58 be fe eb                                      bl #0x397ca0
003e833c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003e8340  05 50 8f e0                                      add r5, pc, r5
003e8344  e2 2f 84 e2                                      add r2, r4, #0x388
003e8348  03 30 95 e7                                      ldr r3, [r5, r3]
003e834c  02 00 a0 e1                                      mov r0, r2
003e8350  98 23 84 e5                                      str r2, [r4, #0x398]
003e8354  08 c0 83 e2                                      add ip, r3, #8
003e8358  f4 10 83 e2                                      add r1, r3, #0xf4
003e835c  e8 30 83 e2                                      add r3, r3, #0xe8
003e8360  00 c0 84 e5                                      str ip, [r4]
003e8364  04 30 84 e5                                      str r3, [r4, #4]
003e8368  24 10 84 e5                                      str r1, [r4, #0x24]
003e836c  9c 23 84 e5                                      str r2, [r4, #0x39c]
003e8370  10 10 a0 e3                                      mov r1, #0x10
003e8374  c0 a4 fc eb                                      bl #0x31167c
003e8378  98 23 94 e5                                      ldr r2, [r4, #0x398]
003e837c  00 30 a0 e3                                      mov r3, #0
003e8380  01 70 a0 e3                                      mov r7, #1
003e8384  3b 6e 84 e2                                      add r6, r4, #0x3b0
003e8388  00 30 c2 e5                                      strb r3, [r2]
003e838c  15 5d 84 e2                                      add r5, r4, #0x540
003e8390  ac 33 c4 e5                                      strb r3, [r4, #0x3ac]
003e8394  a4 33 c4 e5                                      strb r3, [r4, #0x3a4]
003e8398  a8 33 84 e5                                      str r3, [r4, #0x3a8]
003e839c  a5 73 c4 e5                                      strb r7, [r4, #0x3a5]
003e83a0  06 00 a0 e1                                      mov r0, r6
003e83a4  4a ff ff eb                                      bl #0x3e80d4
003e83a8  05 00 a0 e1                                      mov r0, r5
003e83ac  48 ff ff eb                                      bl #0x3e80d4
003e83b0  03 30 a0 e3                                      mov r3, #3
003e83b4  28 70 c4 e5                                      strb r7, [r4, #0x28]
003e83b8  00 61 84 e5                                      str r6, [r4, #0x100]
003e83bc  04 51 84 e5                                      str r5, [r4, #0x104]
003e83c0  f8 30 c4 e5                                      strb r3, [r4, #0xf8]
003e83c4  04 00 a0 e1                                      mov r0, r4
003e83c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003e83cc  50 c7 5a 00 84 49 00 00                          .byte 0x50, 0xc7, 0x5a, 0x00, 0x84, 0x49, 0x00, 0x00

; FUNCTION 0x003e8450, declared_size=280, range_size=280, mode=arm
; class-group: Door
; alias: _ZN4Door15__EventCallbackERKN6glitch7collada15STriggeredEventEPv
; demangled: Door::__EventCallback(glitch::collada::STriggeredEvent const&, void*)
; decoder-mode: arm
003e8450  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003e8454  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
003e8458  f4 60 9f e5                                      ldr r6, [pc, #0xf4]
003e845c  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
003e8460  04 40 8f e0                                      add r4, pc, r4
003e8464  06 30 94 e7                                      ldr r3, [r4, r6]
003e8468  02 70 94 e7                                      ldr r7, [r4, r2]
003e846c  24 d0 4d e2                                      sub sp, sp, #0x24
003e8470  00 30 93 e5                                      ldr r3, [r3]
003e8474  00 80 a0 e1                                      mov r8, r0
003e8478  07 00 a0 e1                                      mov r0, r7
003e847c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003e8480  01 a0 a0 e1                                      mov sl, r1
003e8484  ff 3c fd eb                                      bl #0x337888
003e8488  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
003e848c  04 50 8d e2                                      add r5, sp, #4
003e8490  0d 20 a0 e1                                      mov r2, sp
003e8494  01 10 8f e0                                      add r1, pc, r1
003e8498  05 00 a0 e1                                      mov r0, r5
003e849c  12 af fc eb                                      bl #0x3140ec
003e84a0  07 00 a0 e1                                      mov r0, r7
003e84a4  05 10 a0 e1                                      mov r1, r5
003e84a8  76 3d fd eb                                      bl #0x337a88
003e84ac  18 00 9d e5                                      ldr r0, [sp, #0x18]
003e84b0  05 00 50 e1                                      cmp r0, r5
003e84b4  06 00 00 0a                                      beq #0x3e84d4
003e84b8  00 00 50 e3                                      cmp r0, #0
003e84bc  04 00 00 0a                                      beq #0x3e84d4
003e84c0  04 10 9d e5                                      ldr r1, [sp, #4]
003e84c4  01 10 60 e0                                      rsb r1, r0, r1
003e84c8  80 00 51 e3                                      cmp r1, #0x80
003e84cc  1c 00 00 8a                                      bhi #0x3e8544
003e84d0  8a 82 0c eb                                      bl #0x708f00
003e84d4  04 50 98 e5                                      ldr r5, [r8, #4]
003e84d8  80 10 9f e5                                      ldr r1, [pc, #0x80]
003e84dc  05 00 a0 e1                                      mov r0, r5
003e84e0  01 10 8f e0                                      add r1, pc, r1
003e84e4  8c 97 fc eb                                      bl #0x30e31c
003e84e8  00 00 50 e3                                      cmp r0, #0
003e84ec  10 00 00 0a                                      beq #0x3e8534
003e84f0  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003e84f4  05 00 a0 e1                                      mov r0, r5
003e84f8  01 10 8f e0                                      add r1, pc, r1
003e84fc  86 97 fc eb                                      bl #0x30e31c
003e8500  00 00 50 e3                                      cmp r0, #0
003e8504  06 00 00 0a                                      beq #0x3e8524
003e8508  06 30 94 e7                                      ldr r3, [r4, r6]
003e850c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003e8510  00 30 93 e5                                      ldr r3, [r3]
003e8514  03 00 52 e1                                      cmp r2, r3
003e8518  0b 00 00 1a                                      bne #0x3e854c
003e851c  24 d0 8d e2                                      add sp, sp, #0x24
003e8520  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003e8524  0a 00 a0 e1                                      mov r0, sl
003e8528  01 10 a0 e3                                      mov r1, #1
003e852c  19 fc ff eb                                      bl #0x3e7598
003e8530  f4 ff ff ea                                      b #0x3e8508
003e8534  0a 00 a0 e1                                      mov r0, sl
003e8538  01 10 a0 e3                                      mov r1, #1
003e853c  91 fc ff eb                                      bl #0x3e7788
003e8540  f0 ff ff ea                                      b #0x3e8508
003e8544  bd 9f fc eb                                      bl #0x310440
003e8548  e1 ff ff ea                                      b #0x3e84d4
003e854c  6f 97 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003e8550  30 c6 5a 00 ac 40 00 00 84 08 00 00 54 dc 4d 00  .byte 0x30, 0xc6, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x54, 0xdc, 0x4d, 0x00
003e8560  a8 aa 4d 00 40 a8 4d 00                          .byte 0xa8, 0xaa, 0x4d, 0x00, 0x40, 0xa8, 0x4d, 0x00

; FUNCTION 0x003e8568, declared_size=240, range_size=240, mode=arm
; class-group: Door
; alias: _ZN4Door10__CallbackEPN6glitch5scene19ITimelineControllerEPv
; demangled: Door::__Callback(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
003e8568  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e856c  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
003e8570  d4 80 9f e5                                      ldr r8, [pc, #0xd4]
003e8574  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
003e8578  04 40 8f e0                                      add r4, pc, r4
003e857c  08 30 94 e7                                      ldr r3, [r4, r8]
003e8580  02 70 94 e7                                      ldr r7, [r4, r2]
003e8584  20 d0 4d e2                                      sub sp, sp, #0x20
003e8588  00 30 93 e5                                      ldr r3, [r3]
003e858c  07 00 a0 e1                                      mov r0, r7
003e8590  01 50 a0 e1                                      mov r5, r1
003e8594  1c 30 8d e5                                      str r3, [sp, #0x1c]
003e8598  ba 3c fd eb                                      bl #0x337888
003e859c  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
003e85a0  04 60 8d e2                                      add r6, sp, #4
003e85a4  0d 20 a0 e1                                      mov r2, sp
003e85a8  01 10 8f e0                                      add r1, pc, r1
003e85ac  06 00 a0 e1                                      mov r0, r6
003e85b0  cd ae fc eb                                      bl #0x3140ec
003e85b4  07 00 a0 e1                                      mov r0, r7
003e85b8  06 10 a0 e1                                      mov r1, r6
003e85bc  31 3d fd eb                                      bl #0x337a88
003e85c0  18 00 9d e5                                      ldr r0, [sp, #0x18]
003e85c4  06 00 50 e1                                      cmp r0, r6
003e85c8  06 00 00 0a                                      beq #0x3e85e8
003e85cc  00 00 50 e3                                      cmp r0, #0
003e85d0  04 00 00 0a                                      beq #0x3e85e8
003e85d4  04 10 9d e5                                      ldr r1, [sp, #4]
003e85d8  01 10 60 e0                                      rsb r1, r0, r1
003e85dc  80 00 51 e3                                      cmp r1, #0x80
003e85e0  15 00 00 8a                                      bhi #0x3e863c
003e85e4  45 82 0c eb                                      bl #0x708f00
003e85e8  a8 33 95 e5                                      ldr r3, [r5, #0x3a8]
003e85ec  00 10 a0 e3                                      mov r1, #0
003e85f0  01 20 a0 e3                                      mov r2, #1
003e85f4  02 00 53 e3                                      cmp r3, #2
003e85f8  85 20 c5 e5                                      strb r2, [r5, #0x85]
003e85fc  ac 13 c5 e5                                      strb r1, [r5, #0x3ac]
003e8600  0a 00 00 0a                                      beq #0x3e8630
003e8604  03 00 53 e3                                      cmp r3, #3
003e8608  01 00 00 1a                                      bne #0x3e8614
003e860c  05 00 a0 e1                                      mov r0, r5
003e8610  5c fc ff eb                                      bl #0x3e7788
003e8614  08 30 94 e7                                      ldr r3, [r4, r8]
003e8618  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003e861c  00 30 93 e5                                      ldr r3, [r3]
003e8620  03 00 52 e1                                      cmp r2, r3
003e8624  06 00 00 1a                                      bne #0x3e8644
003e8628  20 d0 8d e2                                      add sp, sp, #0x20
003e862c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003e8630  05 00 a0 e1                                      mov r0, r5
003e8634  d7 fb ff eb                                      bl #0x3e7598
003e8638  f5 ff ff ea                                      b #0x3e8614
003e863c  7f 9f fc eb                                      bl #0x310440
003e8640  e8 ff ff ea                                      b #0x3e85e8
003e8644  31 97 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003e8648  18 c5 5a 00 ac 40 00 00 84 08 00 00 40 db 4d 00  .byte 0x18, 0xc5, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x40, 0xdb, 0x4d, 0x00

; FUNCTION 0x003e8658, declared_size=320, range_size=320, mode=arm
; class-group: Door
; alias: _ZN4DoorD2Ev
; demangled: Door::~Door()
; decoder-mode: arm
003e8658  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003e865c  24 51 9f e5                                      ldr r5, [pc, #0x124]
003e8660  24 31 9f e5                                      ldr r3, [pc, #0x124]
003e8664  24 61 9f e5                                      ldr r6, [pc, #0x124]
003e8668  24 71 9f e5                                      ldr r7, [pc, #0x124]
003e866c  05 50 8f e0                                      add r5, pc, r5
003e8670  5c c6 90 e5                                      ldr ip, [r0, #0x65c]
003e8674  03 30 95 e7                                      ldr r3, [r5, r3]
003e8678  06 20 95 e7                                      ldr r2, [r5, r6]
003e867c  07 10 95 e7                                      ldr r1, [r5, r7]
003e8680  00 40 a0 e1                                      mov r4, r0
003e8684  08 20 82 e2                                      add r2, r2, #8
003e8688  f4 00 83 e2                                      add r0, r3, #0xf4
003e868c  00 00 5c e3                                      cmp ip, #0
003e8690  08 10 81 e2                                      add r1, r1, #8
003e8694  08 c0 83 e2                                      add ip, r3, #8
003e8698  e8 30 83 e2                                      add r3, r3, #0xe8
003e869c  00 c0 84 e5                                      str ip, [r4]
003e86a0  04 30 84 e5                                      str r3, [r4, #4]
003e86a4  24 00 84 e5                                      str r0, [r4, #0x24]
003e86a8  70 26 84 e5                                      str r2, [r4, #0x670]
003e86ac  40 15 84 e5                                      str r1, [r4, #0x540]
003e86b0  b0 26 84 e5                                      str r2, [r4, #0x6b0]
003e86b4  90 26 84 e5                                      str r2, [r4, #0x690]
003e86b8  15 8d 84 e2                                      add r8, r4, #0x540
003e86bc  08 00 00 0a                                      beq #0x3e86e4
003e86c0  43 af 88 e2                                      add sl, r8, #0x10c
003e86c4  0a 00 a0 e1                                      mov r0, sl
003e86c8  10 11 98 e5                                      ldr r1, [r8, #0x110]
003e86cc  3f 22 fe eb                                      bl #0x370fd0
003e86d0  00 30 a0 e3                                      mov r3, #0
003e86d4  54 a6 84 e5                                      str sl, [r4, #0x654]
003e86d8  10 31 88 e5                                      str r3, [r8, #0x110]
003e86dc  58 a6 84 e5                                      str sl, [r4, #0x658]
003e86e0  5c 36 84 e5                                      str r3, [r4, #0x65c]
003e86e4  07 20 95 e7                                      ldr r2, [r5, r7]
003e86e8  06 30 95 e7                                      ldr r3, [r5, r6]
003e86ec  cc 14 94 e5                                      ldr r1, [r4, #0x4cc]
003e86f0  08 20 82 e2                                      add r2, r2, #8
003e86f4  08 30 83 e2                                      add r3, r3, #8
003e86f8  00 00 51 e3                                      cmp r1, #0
003e86fc  e0 34 84 e5                                      str r3, [r4, #0x4e0]
003e8700  b0 23 84 e5                                      str r2, [r4, #0x3b0]
003e8704  20 35 84 e5                                      str r3, [r4, #0x520]
003e8708  00 35 84 e5                                      str r3, [r4, #0x500]
003e870c  3b 5e 84 e2                                      add r5, r4, #0x3b0
003e8710  08 00 00 0a                                      beq #0x3e8738
003e8714  43 6f 85 e2                                      add r6, r5, #0x10c
003e8718  06 00 a0 e1                                      mov r0, r6
003e871c  10 11 95 e5                                      ldr r1, [r5, #0x110]
003e8720  2a 22 fe eb                                      bl #0x370fd0
003e8724  00 30 a0 e3                                      mov r3, #0
003e8728  c4 64 84 e5                                      str r6, [r4, #0x4c4]
003e872c  10 31 85 e5                                      str r3, [r5, #0x110]
003e8730  c8 64 84 e5                                      str r6, [r4, #0x4c8]
003e8734  cc 34 84 e5                                      str r3, [r4, #0x4cc]
003e8738  e2 3f 84 e2                                      add r3, r4, #0x388
003e873c  14 00 93 e5                                      ldr r0, [r3, #0x14]
003e8740  03 00 50 e1                                      cmp r0, r3
003e8744  06 00 00 0a                                      beq #0x3e8764
003e8748  00 00 50 e3                                      cmp r0, #0
003e874c  04 00 00 0a                                      beq #0x3e8764
003e8750  88 13 94 e5                                      ldr r1, [r4, #0x388]
003e8754  01 10 60 e0                                      rsb r1, r0, r1
003e8758  80 00 51 e3                                      cmp r1, #0x80
003e875c  04 00 00 8a                                      bhi #0x3e8774
003e8760  e6 81 0c eb                                      bl #0x708f00
003e8764  04 00 a0 e1                                      mov r0, r4
003e8768  15 bd fe eb                                      bl #0x397bc4
003e876c  04 00 a0 e1                                      mov r0, r4
003e8770  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003e8774  31 9f fc eb                                      bl #0x310440
003e8778  04 00 a0 e1                                      mov r0, r4
003e877c  10 bd fe eb                                      bl #0x397bc4
003e8780  04 00 a0 e1                                      mov r0, r4
003e8784  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
003e8788  24 c4 5a 00 84 49 00 00 a8 10 00 00 c4 43 00 00  .byte 0x24, 0xc4, 0x5a, 0x00, 0x84, 0x49, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x003e881c, declared_size=8, range_size=8, mode=arm
; class-group: Door
; alias: _ZThn36_N4DoorD1Ev
; demangled: non-virtual thunk to Door::~Door()
; decoder-mode: arm
003e881c  24 00 40 e2                                      sub r0, r0, #0x24
003e8820  ff ff ff ea                                      b #0x3e8824

; FUNCTION 0x003e8824, declared_size=320, range_size=320, mode=arm
; class-group: Door
; alias: _ZN4DoorD1Ev
; demangled: Door::~Door()
; decoder-mode: arm
003e8824  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003e8828  24 51 9f e5                                      ldr r5, [pc, #0x124]
003e882c  24 31 9f e5                                      ldr r3, [pc, #0x124]
003e8830  24 61 9f e5                                      ldr r6, [pc, #0x124]
003e8834  24 71 9f e5                                      ldr r7, [pc, #0x124]
003e8838  05 50 8f e0                                      add r5, pc, r5
003e883c  5c c6 90 e5                                      ldr ip, [r0, #0x65c]
003e8840  03 30 95 e7                                      ldr r3, [r5, r3]
003e8844  06 20 95 e7                                      ldr r2, [r5, r6]
003e8848  07 10 95 e7                                      ldr r1, [r5, r7]
003e884c  00 40 a0 e1                                      mov r4, r0
003e8850  08 20 82 e2                                      add r2, r2, #8
003e8854  f4 00 83 e2                                      add r0, r3, #0xf4
003e8858  00 00 5c e3                                      cmp ip, #0
003e885c  08 10 81 e2                                      add r1, r1, #8
003e8860  08 c0 83 e2                                      add ip, r3, #8
003e8864  e8 30 83 e2                                      add r3, r3, #0xe8
003e8868  00 c0 84 e5                                      str ip, [r4]
003e886c  04 30 84 e5                                      str r3, [r4, #4]
003e8870  24 00 84 e5                                      str r0, [r4, #0x24]
003e8874  70 26 84 e5                                      str r2, [r4, #0x670]
003e8878  40 15 84 e5                                      str r1, [r4, #0x540]
003e887c  b0 26 84 e5                                      str r2, [r4, #0x6b0]
003e8880  90 26 84 e5                                      str r2, [r4, #0x690]
003e8884  15 8d 84 e2                                      add r8, r4, #0x540
003e8888  08 00 00 0a                                      beq #0x3e88b0
003e888c  43 af 88 e2                                      add sl, r8, #0x10c
003e8890  0a 00 a0 e1                                      mov r0, sl
003e8894  10 11 98 e5                                      ldr r1, [r8, #0x110]
003e8898  cc 21 fe eb                                      bl #0x370fd0
003e889c  00 30 a0 e3                                      mov r3, #0
003e88a0  54 a6 84 e5                                      str sl, [r4, #0x654]
003e88a4  10 31 88 e5                                      str r3, [r8, #0x110]
003e88a8  58 a6 84 e5                                      str sl, [r4, #0x658]
003e88ac  5c 36 84 e5                                      str r3, [r4, #0x65c]
003e88b0  07 20 95 e7                                      ldr r2, [r5, r7]
003e88b4  06 30 95 e7                                      ldr r3, [r5, r6]
003e88b8  cc 14 94 e5                                      ldr r1, [r4, #0x4cc]
003e88bc  08 20 82 e2                                      add r2, r2, #8
003e88c0  08 30 83 e2                                      add r3, r3, #8
003e88c4  00 00 51 e3                                      cmp r1, #0
003e88c8  e0 34 84 e5                                      str r3, [r4, #0x4e0]
003e88cc  b0 23 84 e5                                      str r2, [r4, #0x3b0]
003e88d0  20 35 84 e5                                      str r3, [r4, #0x520]
003e88d4  00 35 84 e5                                      str r3, [r4, #0x500]
003e88d8  3b 5e 84 e2                                      add r5, r4, #0x3b0
003e88dc  08 00 00 0a                                      beq #0x3e8904
003e88e0  43 6f 85 e2                                      add r6, r5, #0x10c
003e88e4  06 00 a0 e1                                      mov r0, r6
003e88e8  10 11 95 e5                                      ldr r1, [r5, #0x110]
003e88ec  b7 21 fe eb                                      bl #0x370fd0
003e88f0  00 30 a0 e3                                      mov r3, #0
003e88f4  c4 64 84 e5                                      str r6, [r4, #0x4c4]
003e88f8  10 31 85 e5                                      str r3, [r5, #0x110]
003e88fc  c8 64 84 e5                                      str r6, [r4, #0x4c8]
003e8900  cc 34 84 e5                                      str r3, [r4, #0x4cc]
003e8904  e2 3f 84 e2                                      add r3, r4, #0x388
003e8908  14 00 93 e5                                      ldr r0, [r3, #0x14]
003e890c  03 00 50 e1                                      cmp r0, r3
003e8910  06 00 00 0a                                      beq #0x3e8930
003e8914  00 00 50 e3                                      cmp r0, #0
003e8918  04 00 00 0a                                      beq #0x3e8930
003e891c  88 13 94 e5                                      ldr r1, [r4, #0x388]
003e8920  01 10 60 e0                                      rsb r1, r0, r1
003e8924  80 00 51 e3                                      cmp r1, #0x80
003e8928  04 00 00 8a                                      bhi #0x3e8940
003e892c  73 81 0c eb                                      bl #0x708f00
003e8930  04 00 a0 e1                                      mov r0, r4
003e8934  a2 bc fe eb                                      bl #0x397bc4
003e8938  04 00 a0 e1                                      mov r0, r4
003e893c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003e8940  be 9e fc eb                                      bl #0x310440
003e8944  04 00 a0 e1                                      mov r0, r4
003e8948  9d bc fe eb                                      bl #0x397bc4
003e894c  04 00 a0 e1                                      mov r0, r4
003e8950  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
003e8954  58 c2 5a 00 84 49 00 00 a8 10 00 00 c4 43 00 00  .byte 0x58, 0xc2, 0x5a, 0x00, 0x84, 0x49, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x003e8964, declared_size=8, range_size=8, mode=arm
; class-group: Door
; alias: _ZThn36_N4DoorD0Ev
; demangled: non-virtual thunk to Door::~Door()
; decoder-mode: arm
003e8964  24 00 40 e2                                      sub r0, r0, #0x24
003e8968  ff ff ff ea                                      b #0x3e896c

; FUNCTION 0x003e896c, declared_size=28, range_size=28, mode=arm
; class-group: Door
; alias: _ZN4DoorD0Ev
; demangled: Door::~Door()
; decoder-mode: arm
003e896c  10 40 2d e9                                      push {r4, lr}
003e8970  00 40 a0 e1                                      mov r4, r0
003e8974  aa ff ff eb                                      bl #0x3e8824
003e8978  04 00 a0 e1                                      mov r0, r4
003e897c  af 9e fc eb                                      bl #0x310440
003e8980  04 00 a0 e1                                      mov r0, r4
003e8984  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003e8988, declared_size=8, range_size=8, mode=arm
; class-group: Door
; alias: _ZThn4_N4Door17DeclarePropertiesEv
; demangled: non-virtual thunk to Door::DeclareProperties()
; decoder-mode: arm
003e8988  04 00 40 e2                                      sub r0, r0, #4
003e898c  ff ff ff ea                                      b #0x3e8990

; FUNCTION 0x003e8990, declared_size=428, range_size=428, mode=arm
; class-group: Door
; alias: _ZN4Door17DeclarePropertiesEv
; demangled: Door::DeclareProperties()
; decoder-mode: arm
003e8990  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e8994  84 41 9f e5                                      ldr r4, [pc, #0x184]
003e8998  84 b1 9f e5                                      ldr fp, [pc, #0x184]
003e899c  3c d0 4d e2                                      sub sp, sp, #0x3c
003e89a0  04 40 8f e0                                      add r4, pc, r4
003e89a4  0b 30 94 e7                                      ldr r3, [r4, fp]
003e89a8  1c 70 8d e2                                      add r7, sp, #0x1c
003e89ac  00 90 a0 e1                                      mov sb, r0
003e89b0  00 30 93 e5                                      ldr r3, [r3]
003e89b4  00 50 a0 e3                                      mov r5, #0
003e89b8  04 80 8d e2                                      add r8, sp, #4
003e89bc  34 30 8d e5                                      str r3, [sp, #0x34]
003e89c0  0c bd fe eb                                      bl #0x397df8
003e89c4  07 00 a0 e1                                      mov r0, r7
003e89c8  10 10 a0 e3                                      mov r1, #0x10
003e89cc  2c 70 8d e5                                      str r7, [sp, #0x2c]
003e89d0  30 70 8d e5                                      str r7, [sp, #0x30]
003e89d4  28 a3 fc eb                                      bl #0x31167c
003e89d8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
003e89dc  08 00 a0 e1                                      mov r0, r8
003e89e0  40 a1 9f e5                                      ldr sl, [pc, #0x140]
003e89e4  00 50 c3 e5                                      strb r5, [r3]
003e89e8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003e89ec  30 10 9d e5                                      ldr r1, [sp, #0x30]
003e89f0  14 80 8d e5                                      str r8, [sp, #0x14]
003e89f4  18 80 8d e5                                      str r8, [sp, #0x18]
003e89f8  3a a3 fc eb                                      bl #0x3116e8
003e89fc  05 10 a0 e1                                      mov r1, r5
003e8a00  38 00 a0 e3                                      mov r0, #0x38
003e8a04  d9 9e fc eb                                      bl #0x310570
003e8a08  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
003e8a0c  0a a0 8f e0                                      add sl, pc, sl
003e8a10  00 50 a0 e1                                      mov r5, r0
003e8a14  03 30 94 e7                                      ldr r3, [r4, r3]
003e8a18  0a 10 a0 e1                                      mov r1, sl
003e8a1c  0d 20 a0 e1                                      mov r2, sp
003e8a20  08 30 83 e2                                      add r3, r3, #8
003e8a24  08 30 80 e4                                      str r3, [r0], #8
003e8a28  af ad fc eb                                      bl #0x3140ec
003e8a2c  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
003e8a30  04 60 89 e2                                      add r6, sb, #4
003e8a34  e2 2f 89 e2                                      add r2, sb, #0x388
003e8a38  03 30 94 e7                                      ldr r3, [r4, r3]
003e8a3c  05 00 a0 e1                                      mov r0, r5
003e8a40  02 20 66 e0                                      rsb r2, r6, r2
003e8a44  08 30 83 e2                                      add r3, r3, #8
003e8a48  04 20 85 e5                                      str r2, [r5, #4]
003e8a4c  20 30 80 e4                                      str r3, [r0], #0x20
003e8a50  30 00 85 e5                                      str r0, [r5, #0x30]
003e8a54  34 00 85 e5                                      str r0, [r5, #0x34]
003e8a58  18 10 9d e5                                      ldr r1, [sp, #0x18]
003e8a5c  14 20 9d e5                                      ldr r2, [sp, #0x14]
003e8a60  20 a3 fc eb                                      bl #0x3116e8
003e8a64  06 00 a0 e1                                      mov r0, r6
003e8a68  0a 10 a0 e1                                      mov r1, sl
003e8a6c  05 20 a0 e1                                      mov r2, r5
003e8a70  9b ac 04 eb                                      bl #0x513ce4
003e8a74  18 00 9d e5                                      ldr r0, [sp, #0x18]
003e8a78  08 00 50 e1                                      cmp r0, r8
003e8a7c  06 00 00 0a                                      beq #0x3e8a9c
003e8a80  00 00 50 e3                                      cmp r0, #0
003e8a84  04 00 00 0a                                      beq #0x3e8a9c
003e8a88  04 10 9d e5                                      ldr r1, [sp, #4]
003e8a8c  01 10 60 e0                                      rsb r1, r0, r1
003e8a90  80 00 51 e3                                      cmp r1, #0x80
003e8a94  1e 00 00 8a                                      bhi #0x3e8b14
003e8a98  18 81 0c eb                                      bl #0x708f00
003e8a9c  30 00 9d e5                                      ldr r0, [sp, #0x30]
003e8aa0  07 00 50 e1                                      cmp r0, r7
003e8aa4  06 00 00 0a                                      beq #0x3e8ac4
003e8aa8  00 00 50 e3                                      cmp r0, #0
003e8aac  04 00 00 0a                                      beq #0x3e8ac4
003e8ab0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003e8ab4  01 10 60 e0                                      rsb r1, r0, r1
003e8ab8  80 00 51 e3                                      cmp r1, #0x80
003e8abc  12 00 00 8a                                      bhi #0x3e8b0c
003e8ac0  0e 81 0c eb                                      bl #0x708f00
003e8ac4  68 10 9f e5                                      ldr r1, [pc, #0x68]
003e8ac8  e9 9f 89 e2                                      add sb, sb, #0x3a4
003e8acc  06 00 a0 e1                                      mov r0, r6
003e8ad0  01 10 8f e0                                      add r1, pc, r1
003e8ad4  09 20 a0 e1                                      mov r2, sb
003e8ad8  47 fd ff eb                                      bl #0x3e7ffc
003e8adc  54 10 9f e5                                      ldr r1, [pc, #0x54]
003e8ae0  01 20 89 e2                                      add r2, sb, #1
003e8ae4  06 00 a0 e1                                      mov r0, r6
003e8ae8  01 10 8f e0                                      add r1, pc, r1
003e8aec  42 fd ff eb                                      bl #0x3e7ffc
003e8af0  0b 30 94 e7                                      ldr r3, [r4, fp]
003e8af4  34 20 9d e5                                      ldr r2, [sp, #0x34]
003e8af8  00 30 93 e5                                      ldr r3, [r3]
003e8afc  03 00 52 e1                                      cmp r2, r3
003e8b00  05 00 00 1a                                      bne #0x3e8b1c
003e8b04  3c d0 8d e2                                      add sp, sp, #0x3c
003e8b08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e8b0c  4b 9e fc eb                                      bl #0x310440
003e8b10  eb ff ff ea                                      b #0x3e8ac4
003e8b14  49 9e fc eb                                      bl #0x310440
003e8b18  df ff ff ea                                      b #0x3e8a9c
003e8b1c  fb 95 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003e8b20  f0 c0 5a 00 ac 40 00 00 4c a1 4d 00 30 23 00 00  .byte 0xf0, 0xc0, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x4c, 0xa1, 0x4d, 0x00, 0x30, 0x23, 0x00, 0x00
003e8b30  94 34 00 00 b8 a4 4d 00 10 d6 4d 00              .byte 0x94, 0x34, 0x00, 0x00, 0xb8, 0xa4, 0x4d, 0x00, 0x10, 0xd6, 0x4d, 0x00
