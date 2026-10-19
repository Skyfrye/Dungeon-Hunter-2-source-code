; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006cb418, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorDelete
; alias: _ZNK6glitch5scene24CSceneNodeAnimatorDelete7getTypeEv
; demangled: glitch::scene::CSceneNodeAnimatorDelete::getType() const
; decoder-mode: arm
006cb418  05 00 a0 e3                                      mov r0, #5
006cb41c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006cb440, declared_size=96, range_size=96, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorDelete
; alias: _ZN6glitch5scene24CSceneNodeAnimatorDelete11animateNodeEPNS0_10ISceneNodeEj
; demangled: glitch::scene::CSceneNodeAnimatorDelete::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
006cb440  70 40 2d e9                                      push {r4, r5, r6, lr}
006cb444  0c 30 90 e5                                      ldr r3, [r0, #0xc]
006cb448  00 40 a0 e1                                      mov r4, r0
006cb44c  01 50 a0 e1                                      mov r5, r1
006cb450  00 00 51 e3                                      cmp r1, #0
006cb454  02 00 53 11                                      cmpne r3, r2
006cb458  0a 00 00 2a                                      bhs #0x6cb488
006cb45c  10 30 90 e5                                      ldr r3, [r0, #0x10]
006cb460  00 00 53 e3                                      cmp r3, #0
006cb464  07 00 00 0a                                      beq #0x6cb488
006cb468  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
006cb46c  45 0f 83 e2                                      add r0, r3, #0x114
006cb470  14 31 93 e5                                      ldr r3, [r3, #0x114]
006cb474  01 10 8f e0                                      add r1, pc, r1
006cb478  0f e0 a0 e1                                      mov lr, pc
006cb47c  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006cb480  00 00 50 e3                                      cmp r0, #0
006cb484  00 00 00 0a                                      beq #0x6cb48c
006cb488  70 80 bd e8                                      pop {r4, r5, r6, pc}
006cb48c  10 00 94 e5                                      ldr r0, [r4, #0x10]
006cb490  05 10 a0 e1                                      mov r1, r5
006cb494  70 40 bd e8                                      pop {r4, r5, r6, lr}
006cb498  10 00 fb ea                                      b #0x58b4e0
; mapping-symbol data/literal pool
006cb49c  9c ff 21 00                                      .byte 0x9c, 0xff, 0x21, 0x00

; FUNCTION 0x006cb4a0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorDelete
; alias: _ZThn4_N6glitch5scene24CSceneNodeAnimatorDeleteD1Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete()
; decoder-mode: arm
006cb4a0  04 00 40 e2                                      sub r0, r0, #4
006cb4a4  ff ff ff ea                                      b #0x6cb4a8

; FUNCTION 0x006cb4a8, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorDelete
; alias: _ZN6glitch5scene24CSceneNodeAnimatorDeleteD1Ev
; demangled: glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete()
; decoder-mode: arm
006cb4a8  40 30 9f e5                                      ldr r3, [pc, #0x40]
006cb4ac  40 20 9f e5                                      ldr r2, [pc, #0x40]
006cb4b0  40 10 9f e5                                      ldr r1, [pc, #0x40]
006cb4b4  03 30 8f e0                                      add r3, pc, r3
006cb4b8  02 20 93 e7                                      ldr r2, [r3, r2]
006cb4bc  01 10 93 e7                                      ldr r1, [r3, r1]
006cb4c0  10 40 2d e9                                      push {r4, lr}
006cb4c4  68 c0 82 e2                                      add ip, r2, #0x68
006cb4c8  0c e0 82 e2                                      add lr, r2, #0xc
006cb4cc  84 20 82 e2                                      add r2, r2, #0x84
006cb4d0  00 40 a0 e1                                      mov r4, r0
006cb4d4  00 e0 80 e5                                      str lr, [r0]
006cb4d8  14 20 80 e5                                      str r2, [r0, #0x14]
006cb4dc  04 c0 80 e5                                      str ip, [r0, #4]
006cb4e0  04 10 81 e2                                      add r1, r1, #4
006cb4e4  13 39 fb eb                                      bl #0x599938
006cb4e8  04 00 a0 e1                                      mov r0, r4
006cb4ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006cb4f0  dc 95 2c 00 ec 48 00 00 40 2f 00 00              .byte 0xdc, 0x95, 0x2c, 0x00, 0xec, 0x48, 0x00, 0x00, 0x40, 0x2f, 0x00, 0x00

; FUNCTION 0x006cb4fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorDelete
; alias: _ZThn4_N6glitch5scene24CSceneNodeAnimatorDeleteD0Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete()
; decoder-mode: arm
006cb4fc  04 00 40 e2                                      sub r0, r0, #4
006cb500  ff ff ff ea                                      b #0x6cb504

; FUNCTION 0x006cb504, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorDelete
; alias: _ZN6glitch5scene24CSceneNodeAnimatorDeleteD0Ev
; demangled: glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete()
; decoder-mode: arm
006cb504  10 40 2d e9                                      push {r4, lr}
006cb508  00 40 a0 e1                                      mov r4, r0
006cb50c  e5 ff ff eb                                      bl #0x6cb4a8
006cb510  04 00 a0 e1                                      mov r0, r4
006cb514  65 0b f1 eb                                      bl #0x30e2b0
006cb518  04 00 a0 e1                                      mov r0, r4
006cb51c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006cb520, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorDelete
; alias: _ZN6glitch5scene24CSceneNodeAnimatorDeleteD2Ev
; demangled: glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete()
; decoder-mode: arm
006cb520  10 40 2d e9                                      push {r4, lr}
006cb524  38 30 9f e5                                      ldr r3, [pc, #0x38]
006cb528  00 c0 91 e5                                      ldr ip, [r1]
006cb52c  34 20 9f e5                                      ldr r2, [pc, #0x34]
006cb530  03 30 8f e0                                      add r3, pc, r3
006cb534  00 c0 80 e5                                      str ip, [r0]
006cb538  02 20 93 e7                                      ldr r2, [r3, r2]
006cb53c  14 e0 91 e5                                      ldr lr, [r1, #0x14]
006cb540  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
006cb544  68 20 82 e2                                      add r2, r2, #0x68
006cb548  00 40 a0 e1                                      mov r4, r0
006cb54c  0c e0 80 e7                                      str lr, [r0, ip]
006cb550  04 10 81 e2                                      add r1, r1, #4
006cb554  04 20 80 e5                                      str r2, [r0, #4]
006cb558  f6 38 fb eb                                      bl #0x599938
006cb55c  04 00 a0 e1                                      mov r0, r4
006cb560  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006cb564  60 95 2c 00 ec 48 00 00                          .byte 0x60, 0x95, 0x2c, 0x00, 0xec, 0x48, 0x00, 0x00

; FUNCTION 0x006cb56c, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorDelete
; alias: _ZN6glitch5scene24CSceneNodeAnimatorDeleteC1EPNS0_13CSceneManagerEj
; demangled: glitch::scene::CSceneNodeAnimatorDelete::CSceneNodeAnimatorDelete(glitch::scene::CSceneManager*, unsigned int)
; decoder-mode: arm
006cb56c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006cb570  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
006cb574  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
006cb578  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
006cb57c  05 50 8f e0                                      add r5, pc, r5
006cb580  03 60 95 e7                                      ldr r6, [r5, r3]
006cb584  0c c0 95 e7                                      ldr ip, [r5, ip]
006cb588  94 30 9f e5                                      ldr r3, [pc, #0x94]
006cb58c  08 e0 96 e5                                      ldr lr, [r6, #8]
006cb590  08 c0 8c e2                                      add ip, ip, #8
006cb594  01 70 a0 e3                                      mov r7, #1
006cb598  18 70 80 e5                                      str r7, [r0, #0x18]
006cb59c  00 e0 80 e5                                      str lr, [r0]
006cb5a0  14 c0 80 e5                                      str ip, [r0, #0x14]
006cb5a4  03 30 95 e7                                      ldr r3, [r5, r3]
006cb5a8  0c c0 1e e5                                      ldr ip, [lr, #-0xc]
006cb5ac  0c e0 96 e5                                      ldr lr, [r6, #0xc]
006cb5b0  08 30 83 e2                                      add r3, r3, #8
006cb5b4  00 40 a0 e1                                      mov r4, r0
006cb5b8  0c e0 80 e7                                      str lr, [r0, ip]
006cb5bc  04 30 80 e5                                      str r3, [r0, #4]
006cb5c0  01 70 a0 e1                                      mov r7, r1
006cb5c4  02 80 a0 e1                                      mov r8, r2
006cb5c8  ef 56 ff eb                                      bl #0x6a118c
006cb5cc  04 20 96 e5                                      ldr r2, [r6, #4]
006cb5d0  50 30 9f e5                                      ldr r3, [pc, #0x50]
006cb5d4  10 c0 96 e5                                      ldr ip, [r6, #0x10]
006cb5d8  00 20 84 e5                                      str r2, [r4]
006cb5dc  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006cb5e0  03 30 95 e7                                      ldr r3, [r5, r3]
006cb5e4  00 c0 84 e7                                      str ip, [r4, r0]
006cb5e8  68 20 83 e2                                      add r2, r3, #0x68
006cb5ec  0c 10 83 e2                                      add r1, r3, #0xc
006cb5f0  00 00 a0 e3                                      mov r0, #0
006cb5f4  84 30 83 e2                                      add r3, r3, #0x84
006cb5f8  08 00 84 e5                                      str r0, [r4, #8]
006cb5fc  00 10 84 e5                                      str r1, [r4]
006cb600  14 30 84 e5                                      str r3, [r4, #0x14]
006cb604  04 20 84 e5                                      str r2, [r4, #4]
006cb608  0c 80 84 e5                                      str r8, [r4, #0xc]
006cb60c  10 70 84 e5                                      str r7, [r4, #0x10]
006cb610  04 00 a0 e1                                      mov r0, r4
006cb614  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006cb618  14 95 2c 00 40 2f 00 00 44 2b 00 00 4c 27 00 00  .byte 0x14, 0x95, 0x2c, 0x00, 0x40, 0x2f, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00
006cb628  ec 48 00 00                                      .byte 0xec, 0x48, 0x00, 0x00

; FUNCTION 0x006cb62c, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorDelete
; alias: _ZN6glitch5scene24CSceneNodeAnimatorDelete11createCloneEv
; demangled: glitch::scene::CSceneNodeAnimatorDelete::createClone()
; decoder-mode: arm
006cb62c  70 40 2d e9                                      push {r4, r5, r6, lr}
006cb630  00 10 a0 e3                                      mov r1, #0
006cb634  00 40 a0 e1                                      mov r4, r0
006cb638  1c 00 a0 e3                                      mov r0, #0x1c
006cb63c  da a2 f9 eb                                      bl #0x5341ac
006cb640  0c 20 94 e5                                      ldr r2, [r4, #0xc]
006cb644  00 50 a0 e1                                      mov r5, r0
006cb648  10 10 94 e5                                      ldr r1, [r4, #0x10]
006cb64c  c6 ff ff eb                                      bl #0x6cb56c
006cb650  05 00 a0 e1                                      mov r0, r5
006cb654  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006cb658, declared_size=184, range_size=184, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorDelete
; alias: _ZN6glitch5scene24CSceneNodeAnimatorDeleteC2EPNS0_13CSceneManagerEj
; demangled: glitch::scene::CSceneNodeAnimatorDelete::CSceneNodeAnimatorDelete(glitch::scene::CSceneManager*, unsigned int)
; decoder-mode: arm
006cb658  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006cb65c  04 70 81 e2                                      add r7, r1, #4
006cb660  98 50 9f e5                                      ldr r5, [pc, #0x98]
006cb664  04 c0 97 e5                                      ldr ip, [r7, #4]
006cb668  01 60 a0 e1                                      mov r6, r1
006cb66c  90 10 9f e5                                      ldr r1, [pc, #0x90]
006cb670  05 50 8f e0                                      add r5, pc, r5
006cb674  00 c0 80 e5                                      str ip, [r0]
006cb678  01 10 95 e7                                      ldr r1, [r5, r1]
006cb67c  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
006cb680  08 e0 97 e5                                      ldr lr, [r7, #8]
006cb684  08 10 81 e2                                      add r1, r1, #8
006cb688  00 40 a0 e1                                      mov r4, r0
006cb68c  0c e0 80 e7                                      str lr, [r0, ip]
006cb690  04 10 80 e5                                      str r1, [r0, #4]
006cb694  02 80 a0 e1                                      mov r8, r2
006cb698  03 a0 a0 e1                                      mov sl, r3
006cb69c  ba 56 ff eb                                      bl #0x6a118c
006cb6a0  04 20 96 e5                                      ldr r2, [r6, #4]
006cb6a4  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
006cb6a8  00 20 84 e5                                      str r2, [r4]
006cb6ac  03 30 95 e7                                      ldr r3, [r5, r3]
006cb6b0  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
006cb6b4  0c 00 97 e5                                      ldr r0, [r7, #0xc]
006cb6b8  68 30 83 e2                                      add r3, r3, #0x68
006cb6bc  48 20 9f e5                                      ldr r2, [pc, #0x48]
006cb6c0  01 00 84 e7                                      str r0, [r4, r1]
006cb6c4  04 30 84 e5                                      str r3, [r4, #4]
006cb6c8  00 30 a0 e3                                      mov r3, #0
006cb6cc  08 30 84 e5                                      str r3, [r4, #8]
006cb6d0  00 10 96 e5                                      ldr r1, [r6]
006cb6d4  02 20 95 e7                                      ldr r2, [r5, r2]
006cb6d8  04 00 a0 e1                                      mov r0, r4
006cb6dc  00 10 84 e5                                      str r1, [r4]
006cb6e0  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
006cb6e4  14 10 96 e5                                      ldr r1, [r6, #0x14]
006cb6e8  68 20 82 e2                                      add r2, r2, #0x68
006cb6ec  03 10 84 e7                                      str r1, [r4, r3]
006cb6f0  04 20 84 e5                                      str r2, [r4, #4]
006cb6f4  0c a0 84 e5                                      str sl, [r4, #0xc]
006cb6f8  10 80 84 e5                                      str r8, [r4, #0x10]
006cb6fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006cb700  20 94 2c 00 4c 27 00 00 08 23 00 00 ec 48 00 00  .byte 0x20, 0x94, 0x2c, 0x00, 0x4c, 0x27, 0x00, 0x00, 0x08, 0x23, 0x00, 0x00, 0xec, 0x48, 0x00, 0x00

; FUNCTION 0x006cb710, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorDelete
; alias: _ZTv0_n12_N6glitch5scene24CSceneNodeAnimatorDeleteD0Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete()
; decoder-mode: arm
006cb710  00 30 90 e5                                      ldr r3, [r0]
006cb714  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cb718  03 00 80 e0                                      add r0, r0, r3
006cb71c  78 ff ff ea                                      b #0x6cb504

; FUNCTION 0x006cb720, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorDelete
; alias: _ZTv0_n12_N6glitch5scene24CSceneNodeAnimatorDeleteD1Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete()
; decoder-mode: arm
006cb720  00 30 90 e5                                      ldr r3, [r0]
006cb724  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cb728  03 00 80 e0                                      add r0, r0, r3
006cb72c  5d ff ff ea                                      b #0x6cb4a8
