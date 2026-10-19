; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006cc070, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZNK6glitch5scene29CSceneNodeAnimatorFlyStraight7getTypeEv
; demangled: glitch::scene::CSceneNodeAnimatorFlyStraight::getType() const
; decoder-mode: arm
006cc070  01 00 a0 e3                                      mov r0, #1
006cc074  1e ff 2f e1                                      bx lr

; FUNCTION 0x006cc078, declared_size=160, range_size=160, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZNK6glitch5scene29CSceneNodeAnimatorFlyStraight19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneNodeAnimatorFlyStraight::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006cc078  70 40 2d e9                                      push {r4, r5, r6, lr}
006cc07c  01 40 a0 e1                                      mov r4, r1
006cc080  80 10 9f e5                                      ldr r1, [pc, #0x80]
006cc084  00 50 a0 e1                                      mov r5, r0
006cc088  0c 20 85 e2                                      add r2, r5, #0xc
006cc08c  04 00 a0 e1                                      mov r0, r4
006cc090  00 c0 94 e5                                      ldr ip, [r4]
006cc094  01 10 8f e0                                      add r1, pc, r1
006cc098  00 30 a0 e3                                      mov r3, #0
006cc09c  0f e0 a0 e1                                      mov lr, pc
006cc0a0  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
006cc0a4  60 10 9f e5                                      ldr r1, [pc, #0x60]
006cc0a8  04 00 a0 e1                                      mov r0, r4
006cc0ac  18 20 85 e2                                      add r2, r5, #0x18
006cc0b0  00 c0 94 e5                                      ldr ip, [r4]
006cc0b4  01 10 8f e0                                      add r1, pc, r1
006cc0b8  00 30 a0 e3                                      mov r3, #0
006cc0bc  0f e0 a0 e1                                      mov lr, pc
006cc0c0  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
006cc0c4  44 10 9f e5                                      ldr r1, [pc, #0x44]
006cc0c8  04 00 a0 e1                                      mov r0, r4
006cc0cc  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
006cc0d0  00 c0 94 e5                                      ldr ip, [r4]
006cc0d4  01 10 8f e0                                      add r1, pc, r1
006cc0d8  00 30 a0 e3                                      mov r3, #0
006cc0dc  0f e0 a0 e1                                      mov lr, pc
006cc0e0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006cc0e4  28 10 9f e5                                      ldr r1, [pc, #0x28]
006cc0e8  04 00 a0 e1                                      mov r0, r4
006cc0ec  40 20 d5 e5                                      ldrb r2, [r5, #0x40]
006cc0f0  01 10 8f e0                                      add r1, pc, r1
006cc0f4  00 c0 94 e5                                      ldr ip, [r4]
006cc0f8  00 30 a0 e3                                      mov r3, #0
006cc0fc  0f e0 a0 e1                                      mov lr, pc
006cc100  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006cc104  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006cc108  94 97 21 00 24 3f 21 00 4c f3 21 00 10 d3 20 00  .byte 0x94, 0x97, 0x21, 0x00, 0x24, 0x3f, 0x21, 0x00, 0x4c, 0xf3, 0x21, 0x00, 0x10, 0xd3, 0x20, 0x00

; FUNCTION 0x006cc138, declared_size=300, range_size=300, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZN6glitch5scene29CSceneNodeAnimatorFlyStraight11animateNodeEPNS0_10ISceneNodeEj
; demangled: glitch::scene::CSceneNodeAnimatorFlyStraight::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
006cc138  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006cc13c  00 50 51 e2                                      subs r5, r1, #0
006cc140  14 d0 4d e2                                      sub sp, sp, #0x14
006cc144  00 40 a0 e1                                      mov r4, r0
006cc148  3a 00 00 0a                                      beq #0x6cc238
006cc14c  40 e0 d0 e5                                      ldrb lr, [r0, #0x40]
006cc150  0c c0 94 e5                                      ldr ip, [r4, #0xc]
006cc154  38 00 90 e5                                      ldr r0, [r0, #0x38]
006cc158  10 10 94 e5                                      ldr r1, [r4, #0x10]
006cc15c  14 30 94 e5                                      ldr r3, [r4, #0x14]
006cc160  00 00 5e e3                                      cmp lr, #0
006cc164  02 00 60 e0                                      rsb r0, r0, r2
006cc168  04 c0 8d e5                                      str ip, [sp, #4]
006cc16c  08 10 8d e5                                      str r1, [sp, #8]
006cc170  0c 30 8d e5                                      str r3, [sp, #0xc]
006cc174  38 00 00 1a                                      bne #0x6cc25c
006cc178  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
006cc17c  06 00 50 e1                                      cmp r0, r6
006cc180  2e 00 00 2a                                      bhs #0x6cc240
006cc184  55 08 f1 eb                                      bl #0x30e2e0
006cc188  00 70 a0 e1                                      mov r7, r0
006cc18c  06 00 a0 e1                                      mov r0, r6
006cc190  52 08 f1 eb                                      bl #0x30e2e0
006cc194  00 10 a0 e1                                      mov r1, r0
006cc198  07 00 a0 e1                                      mov r0, r7
006cc19c  93 09 f1 eb                                      bl #0x30e7f0
006cc1a0  28 10 94 e5                                      ldr r1, [r4, #0x28]
006cc1a4  00 70 a0 e1                                      mov r7, r0
006cc1a8  ef 0a f1 eb                                      bl #0x30ed6c
006cc1ac  34 60 94 e5                                      ldr r6, [r4, #0x34]
006cc1b0  00 10 a0 e1                                      mov r1, r0
006cc1b4  06 00 a0 e1                                      mov r0, r6
006cc1b8  eb 0a f1 eb                                      bl #0x30ed6c
006cc1bc  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
006cc1c0  00 a0 a0 e1                                      mov sl, r0
006cc1c4  07 00 a0 e1                                      mov r0, r7
006cc1c8  e7 0a f1 eb                                      bl #0x30ed6c
006cc1cc  00 10 a0 e1                                      mov r1, r0
006cc1d0  06 00 a0 e1                                      mov r0, r6
006cc1d4  e4 0a f1 eb                                      bl #0x30ed6c
006cc1d8  24 10 94 e5                                      ldr r1, [r4, #0x24]
006cc1dc  00 80 a0 e1                                      mov r8, r0
006cc1e0  07 00 a0 e1                                      mov r0, r7
006cc1e4  e0 0a f1 eb                                      bl #0x30ed6c
006cc1e8  00 10 a0 e1                                      mov r1, r0
006cc1ec  06 00 a0 e1                                      mov r0, r6
006cc1f0  dd 0a f1 eb                                      bl #0x30ed6c
006cc1f4  00 10 a0 e1                                      mov r1, r0
006cc1f8  04 00 9d e5                                      ldr r0, [sp, #4]
006cc1fc  68 0a f1 eb                                      bl #0x30eba4
006cc200  0a 10 a0 e1                                      mov r1, sl
006cc204  04 00 8d e5                                      str r0, [sp, #4]
006cc208  08 00 9d e5                                      ldr r0, [sp, #8]
006cc20c  64 0a f1 eb                                      bl #0x30eba4
006cc210  08 10 a0 e1                                      mov r1, r8
006cc214  08 00 8d e5                                      str r0, [sp, #8]
006cc218  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006cc21c  60 0a f1 eb                                      bl #0x30eba4
006cc220  0c 00 8d e5                                      str r0, [sp, #0xc]
006cc224  05 00 a0 e1                                      mov r0, r5
006cc228  00 30 95 e5                                      ldr r3, [r5]
006cc22c  04 10 8d e2                                      add r1, sp, #4
006cc230  0f e0 a0 e1                                      mov lr, pc
006cc234  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
006cc238  14 d0 8d e2                                      add sp, sp, #0x14
006cc23c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006cc240  20 10 94 e5                                      ldr r1, [r4, #0x20]
006cc244  18 20 94 e5                                      ldr r2, [r4, #0x18]
006cc248  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006cc24c  0c 10 8d e5                                      str r1, [sp, #0xc]
006cc250  04 20 8d e5                                      str r2, [sp, #4]
006cc254  08 30 8d e5                                      str r3, [sp, #8]
006cc258  f1 ff ff ea                                      b #0x6cc224
006cc25c  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
006cc260  c7 ff ff ea                                      b #0x6cc184

; FUNCTION 0x006cc264, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZThn4_N6glitch5scene29CSceneNodeAnimatorFlyStraightD1Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight()
; decoder-mode: arm
006cc264  04 00 40 e2                                      sub r0, r0, #4
006cc268  ff ff ff ea                                      b #0x6cc26c

; FUNCTION 0x006cc26c, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZN6glitch5scene29CSceneNodeAnimatorFlyStraightD1Ev
; demangled: glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight()
; decoder-mode: arm
006cc26c  40 30 9f e5                                      ldr r3, [pc, #0x40]
006cc270  40 20 9f e5                                      ldr r2, [pc, #0x40]
006cc274  40 10 9f e5                                      ldr r1, [pc, #0x40]
006cc278  03 30 8f e0                                      add r3, pc, r3
006cc27c  02 20 93 e7                                      ldr r2, [r3, r2]
006cc280  01 10 93 e7                                      ldr r1, [r3, r1]
006cc284  10 40 2d e9                                      push {r4, lr}
006cc288  68 c0 82 e2                                      add ip, r2, #0x68
006cc28c  0c e0 82 e2                                      add lr, r2, #0xc
006cc290  84 20 82 e2                                      add r2, r2, #0x84
006cc294  00 40 a0 e1                                      mov r4, r0
006cc298  00 e0 80 e5                                      str lr, [r0]
006cc29c  44 20 80 e5                                      str r2, [r0, #0x44]
006cc2a0  04 c0 80 e5                                      str ip, [r0, #4]
006cc2a4  04 10 81 e2                                      add r1, r1, #4
006cc2a8  a2 35 fb eb                                      bl #0x599938
006cc2ac  04 00 a0 e1                                      mov r0, r4
006cc2b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006cc2b4  18 88 2c 00 48 37 00 00 fc 34 00 00              .byte 0x18, 0x88, 0x2c, 0x00, 0x48, 0x37, 0x00, 0x00, 0xfc, 0x34, 0x00, 0x00

; FUNCTION 0x006cc2c0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZThn4_N6glitch5scene29CSceneNodeAnimatorFlyStraightD0Ev
; demangled: non-virtual thunk to glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight()
; decoder-mode: arm
006cc2c0  04 00 40 e2                                      sub r0, r0, #4
006cc2c4  ff ff ff ea                                      b #0x6cc2c8

; FUNCTION 0x006cc2c8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZN6glitch5scene29CSceneNodeAnimatorFlyStraightD0Ev
; demangled: glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight()
; decoder-mode: arm
006cc2c8  10 40 2d e9                                      push {r4, lr}
006cc2cc  00 40 a0 e1                                      mov r4, r0
006cc2d0  e5 ff ff eb                                      bl #0x6cc26c
006cc2d4  04 00 a0 e1                                      mov r0, r4
006cc2d8  f4 07 f1 eb                                      bl #0x30e2b0
006cc2dc  04 00 a0 e1                                      mov r0, r4
006cc2e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006cc2e4, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZN6glitch5scene29CSceneNodeAnimatorFlyStraightD2Ev
; demangled: glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight()
; decoder-mode: arm
006cc2e4  10 40 2d e9                                      push {r4, lr}
006cc2e8  38 30 9f e5                                      ldr r3, [pc, #0x38]
006cc2ec  00 c0 91 e5                                      ldr ip, [r1]
006cc2f0  34 20 9f e5                                      ldr r2, [pc, #0x34]
006cc2f4  03 30 8f e0                                      add r3, pc, r3
006cc2f8  00 c0 80 e5                                      str ip, [r0]
006cc2fc  02 20 93 e7                                      ldr r2, [r3, r2]
006cc300  14 e0 91 e5                                      ldr lr, [r1, #0x14]
006cc304  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
006cc308  68 20 82 e2                                      add r2, r2, #0x68
006cc30c  00 40 a0 e1                                      mov r4, r0
006cc310  0c e0 80 e7                                      str lr, [r0, ip]
006cc314  04 10 81 e2                                      add r1, r1, #4
006cc318  04 20 80 e5                                      str r2, [r0, #4]
006cc31c  85 35 fb eb                                      bl #0x599938
006cc320  04 00 a0 e1                                      mov r0, r4
006cc324  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006cc328  9c 87 2c 00 48 37 00 00                          .byte 0x9c, 0x87, 0x2c, 0x00, 0x48, 0x37, 0x00, 0x00

; FUNCTION 0x006cc330, declared_size=188, range_size=188, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZN6glitch5scene29CSceneNodeAnimatorFlyStraight25recalculateImidiateValuesEv
; demangled: glitch::scene::CSceneNodeAnimatorFlyStraight::recalculateImidiateValues()
; decoder-mode: arm
006cc330  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006cc334  00 40 a0 e1                                      mov r4, r0
006cc338  0c 10 90 e5                                      ldr r1, [r0, #0xc]
006cc33c  18 00 90 e5                                      ldr r0, [r0, #0x18]
006cc340  19 08 f1 eb                                      bl #0x30e3ac
006cc344  10 10 94 e5                                      ldr r1, [r4, #0x10]
006cc348  00 70 a0 e1                                      mov r7, r0
006cc34c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
006cc350  15 08 f1 eb                                      bl #0x30e3ac
006cc354  14 10 94 e5                                      ldr r1, [r4, #0x14]
006cc358  00 60 a0 e1                                      mov r6, r0
006cc35c  20 00 94 e5                                      ldr r0, [r4, #0x20]
006cc360  11 08 f1 eb                                      bl #0x30e3ac
006cc364  00 50 a0 e1                                      mov r5, r0
006cc368  07 10 a0 e1                                      mov r1, r7
006cc36c  07 00 a0 e1                                      mov r0, r7
006cc370  24 70 84 e5                                      str r7, [r4, #0x24]
006cc374  28 60 84 e5                                      str r6, [r4, #0x28]
006cc378  2c 50 84 e5                                      str r5, [r4, #0x2c]
006cc37c  7a 0a f1 eb                                      bl #0x30ed6c
006cc380  06 10 a0 e1                                      mov r1, r6
006cc384  00 70 a0 e1                                      mov r7, r0
006cc388  06 00 a0 e1                                      mov r0, r6
006cc38c  76 0a f1 eb                                      bl #0x30ed6c
006cc390  00 10 a0 e1                                      mov r1, r0
006cc394  07 00 a0 e1                                      mov r0, r7
006cc398  01 0a f1 eb                                      bl #0x30eba4
006cc39c  05 10 a0 e1                                      mov r1, r5
006cc3a0  00 60 a0 e1                                      mov r6, r0
006cc3a4  05 00 a0 e1                                      mov r0, r5
006cc3a8  6f 0a f1 eb                                      bl #0x30ed6c
006cc3ac  00 10 a0 e1                                      mov r1, r0
006cc3b0  06 00 a0 e1                                      mov r0, r6
006cc3b4  fa 09 f1 eb                                      bl #0x30eba4
006cc3b8  39 09 f1 eb                                      bl #0x30e8a4
006cc3bc  7f 07 f1 eb                                      bl #0x30e1c0
006cc3c0  b6 08 f1 eb                                      bl #0x30e6a0
006cc3c4  30 00 84 e5                                      str r0, [r4, #0x30]
006cc3c8  24 00 84 e2                                      add r0, r4, #0x24
006cc3cc  43 49 f2 eb                                      bl #0x35e8e0
006cc3d0  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
006cc3d4  c1 07 f1 eb                                      bl #0x30e2e0
006cc3d8  00 10 a0 e1                                      mov r1, r0
006cc3dc  30 00 94 e5                                      ldr r0, [r4, #0x30]
006cc3e0  2b 0a f1 eb                                      bl #0x30ec94
006cc3e4  34 00 84 e5                                      str r0, [r4, #0x34]
006cc3e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006cc3ec, declared_size=204, range_size=204, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZN6glitch5scene29CSceneNodeAnimatorFlyStraight21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneNodeAnimatorFlyStraight::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006cc3ec  30 40 2d e9                                      push {r4, r5, lr}
006cc3f0  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
006cc3f4  1c d0 4d e2                                      sub sp, sp, #0x1c
006cc3f8  00 40 a0 e1                                      mov r4, r0
006cc3fc  00 30 91 e5                                      ldr r3, [r1]
006cc400  0c 00 8d e2                                      add r0, sp, #0xc
006cc404  02 20 8f e0                                      add r2, pc, r2
006cc408  01 50 a0 e1                                      mov r5, r1
006cc40c  0f e0 a0 e1                                      mov lr, pc
006cc410  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
006cc414  10 20 9d e5                                      ldr r2, [sp, #0x10]
006cc418  14 30 9d e5                                      ldr r3, [sp, #0x14]
006cc41c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006cc420  10 20 84 e5                                      str r2, [r4, #0x10]
006cc424  80 20 9f e5                                      ldr r2, [pc, #0x80]
006cc428  0c 10 84 e5                                      str r1, [r4, #0xc]
006cc42c  14 30 84 e5                                      str r3, [r4, #0x14]
006cc430  0d 00 a0 e1                                      mov r0, sp
006cc434  05 10 a0 e1                                      mov r1, r5
006cc438  00 30 95 e5                                      ldr r3, [r5]
006cc43c  02 20 8f e0                                      add r2, pc, r2
006cc440  0f e0 a0 e1                                      mov lr, pc
006cc444  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
006cc448  00 10 9d e5                                      ldr r1, [sp]
006cc44c  04 20 9d e5                                      ldr r2, [sp, #4]
006cc450  08 30 9d e5                                      ldr r3, [sp, #8]
006cc454  18 10 84 e5                                      str r1, [r4, #0x18]
006cc458  50 10 9f e5                                      ldr r1, [pc, #0x50]
006cc45c  1c 20 84 e5                                      str r2, [r4, #0x1c]
006cc460  20 30 84 e5                                      str r3, [r4, #0x20]
006cc464  00 30 95 e5                                      ldr r3, [r5]
006cc468  01 10 8f e0                                      add r1, pc, r1
006cc46c  05 00 a0 e1                                      mov r0, r5
006cc470  0f e0 a0 e1                                      mov lr, pc
006cc474  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006cc478  34 10 9f e5                                      ldr r1, [pc, #0x34]
006cc47c  3c 00 84 e5                                      str r0, [r4, #0x3c]
006cc480  00 30 95 e5                                      ldr r3, [r5]
006cc484  05 00 a0 e1                                      mov r0, r5
006cc488  01 10 8f e0                                      add r1, pc, r1
006cc48c  0f e0 a0 e1                                      mov lr, pc
006cc490  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006cc494  40 00 c4 e5                                      strb r0, [r4, #0x40]
006cc498  04 00 a0 e1                                      mov r0, r4
006cc49c  a3 ff ff eb                                      bl #0x6cc330
006cc4a0  1c d0 8d e2                                      add sp, sp, #0x1c
006cc4a4  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
006cc4a8  24 94 21 00 9c 3b 21 00 b8 ef 21 00 78 cf 20 00  .byte 0x24, 0x94, 0x21, 0x00, 0x9c, 0x3b, 0x21, 0x00, 0xb8, 0xef, 0x21, 0x00, 0x78, 0xcf, 0x20, 0x00

; FUNCTION 0x006cc4b8, declared_size=284, range_size=284, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZN6glitch5scene29CSceneNodeAnimatorFlyStraightC1ERKNS_4core8vector3dIfEES6_jbj
; demangled: glitch::scene::CSceneNodeAnimatorFlyStraight::CSceneNodeAnimatorFlyStraight(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, unsigned int, bool, unsigned int)
; decoder-mode: arm
006cc4b8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006cc4bc  fc 50 9f e5                                      ldr r5, [pc, #0xfc]
006cc4c0  fc c0 9f e5                                      ldr ip, [pc, #0xfc]
006cc4c4  fc e0 9f e5                                      ldr lr, [pc, #0xfc]
006cc4c8  05 50 8f e0                                      add r5, pc, r5
006cc4cc  0c 60 95 e7                                      ldr r6, [r5, ip]
006cc4d0  0e e0 95 e7                                      ldr lr, [r5, lr]
006cc4d4  f0 c0 9f e5                                      ldr ip, [pc, #0xf0]
006cc4d8  08 80 96 e5                                      ldr r8, [r6, #8]
006cc4dc  08 e0 8e e2                                      add lr, lr, #8
006cc4e0  01 70 a0 e3                                      mov r7, #1
006cc4e4  48 70 80 e5                                      str r7, [r0, #0x48]
006cc4e8  00 80 80 e5                                      str r8, [r0]
006cc4ec  44 e0 80 e5                                      str lr, [r0, #0x44]
006cc4f0  0c c0 95 e7                                      ldr ip, [r5, ip]
006cc4f4  0c e0 18 e5                                      ldr lr, [r8, #-0xc]
006cc4f8  0c 80 96 e5                                      ldr r8, [r6, #0xc]
006cc4fc  08 c0 8c e2                                      add ip, ip, #8
006cc500  00 40 a0 e1                                      mov r4, r0
006cc504  0e 80 80 e7                                      str r8, [r0, lr]
006cc508  04 c0 80 e5                                      str ip, [r0, #4]
006cc50c  01 70 a0 e1                                      mov r7, r1
006cc510  02 80 a0 e1                                      mov r8, r2
006cc514  03 90 a0 e1                                      mov sb, r3
006cc518  20 a0 dd e5                                      ldrb sl, [sp, #0x20]
006cc51c  1a 53 ff eb                                      bl #0x6a118c
006cc520  04 20 96 e5                                      ldr r2, [r6, #4]
006cc524  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
006cc528  10 c0 96 e5                                      ldr ip, [r6, #0x10]
006cc52c  00 20 84 e5                                      str r2, [r4]
006cc530  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006cc534  03 30 95 e7                                      ldr r3, [r5, r3]
006cc538  00 c0 84 e7                                      str ip, [r4, r0]
006cc53c  68 20 83 e2                                      add r2, r3, #0x68
006cc540  0c 10 83 e2                                      add r1, r3, #0xc
006cc544  00 00 a0 e3                                      mov r0, #0
006cc548  84 30 83 e2                                      add r3, r3, #0x84
006cc54c  08 00 84 e5                                      str r0, [r4, #8]
006cc550  44 30 84 e5                                      str r3, [r4, #0x44]
006cc554  06 00 84 e8                                      stm r4, {r1, r2}
006cc558  00 20 97 e5                                      ldr r2, [r7]
006cc55c  00 30 a0 e3                                      mov r3, #0
006cc560  04 00 a0 e1                                      mov r0, r4
006cc564  0c 20 84 e5                                      str r2, [r4, #0xc]
006cc568  04 20 97 e5                                      ldr r2, [r7, #4]
006cc56c  10 20 84 e5                                      str r2, [r4, #0x10]
006cc570  08 20 97 e5                                      ldr r2, [r7, #8]
006cc574  14 20 84 e5                                      str r2, [r4, #0x14]
006cc578  00 20 98 e5                                      ldr r2, [r8]
006cc57c  18 20 84 e5                                      str r2, [r4, #0x18]
006cc580  04 20 98 e5                                      ldr r2, [r8, #4]
006cc584  1c 20 84 e5                                      str r2, [r4, #0x1c]
006cc588  08 20 98 e5                                      ldr r2, [r8, #8]
006cc58c  34 30 84 e5                                      str r3, [r4, #0x34]
006cc590  24 10 9d e5                                      ldr r1, [sp, #0x24]
006cc594  20 20 84 e5                                      str r2, [r4, #0x20]
006cc598  3c 90 84 e5                                      str sb, [r4, #0x3c]
006cc59c  38 10 84 e5                                      str r1, [r4, #0x38]
006cc5a0  40 a0 c4 e5                                      strb sl, [r4, #0x40]
006cc5a4  24 30 84 e5                                      str r3, [r4, #0x24]
006cc5a8  28 30 84 e5                                      str r3, [r4, #0x28]
006cc5ac  2c 30 84 e5                                      str r3, [r4, #0x2c]
006cc5b0  30 30 84 e5                                      str r3, [r4, #0x30]
006cc5b4  5d ff ff eb                                      bl #0x6cc330
006cc5b8  04 00 a0 e1                                      mov r0, r4
006cc5bc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006cc5c0  c8 85 2c 00 fc 34 00 00 44 2b 00 00 4c 27 00 00  .byte 0xc8, 0x85, 0x2c, 0x00, 0xfc, 0x34, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00
006cc5d0  48 37 00 00                                      .byte 0x48, 0x37, 0x00, 0x00

; FUNCTION 0x006cc5d4, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZN6glitch5scene29CSceneNodeAnimatorFlyStraight11createCloneEv
; demangled: glitch::scene::CSceneNodeAnimatorFlyStraight::createClone()
; decoder-mode: arm
006cc5d4  30 40 2d e9                                      push {r4, r5, lr}
006cc5d8  00 10 a0 e3                                      mov r1, #0
006cc5dc  00 40 a0 e1                                      mov r4, r0
006cc5e0  0c d0 4d e2                                      sub sp, sp, #0xc
006cc5e4  4c 00 a0 e3                                      mov r0, #0x4c
006cc5e8  ef 9e f9 eb                                      bl #0x5341ac
006cc5ec  40 e0 d4 e5                                      ldrb lr, [r4, #0x40]
006cc5f0  38 c0 94 e5                                      ldr ip, [r4, #0x38]
006cc5f4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006cc5f8  00 50 a0 e1                                      mov r5, r0
006cc5fc  18 20 84 e2                                      add r2, r4, #0x18
006cc600  0c 10 84 e2                                      add r1, r4, #0xc
006cc604  00 e0 8d e5                                      str lr, [sp]
006cc608  04 c0 8d e5                                      str ip, [sp, #4]
006cc60c  a9 ff ff eb                                      bl #0x6cc4b8
006cc610  05 00 a0 e1                                      mov r0, r5
006cc614  0c d0 8d e2                                      add sp, sp, #0xc
006cc618  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006cc61c, declared_size=280, range_size=280, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZN6glitch5scene29CSceneNodeAnimatorFlyStraightC2ERKNS_4core8vector3dIfEES6_jbj
; demangled: glitch::scene::CSceneNodeAnimatorFlyStraight::CSceneNodeAnimatorFlyStraight(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, unsigned int, bool, unsigned int)
; decoder-mode: arm
006cc61c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006cc620  04 70 81 e2                                      add r7, r1, #4
006cc624  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
006cc628  04 c0 97 e5                                      ldr ip, [r7, #4]
006cc62c  01 60 a0 e1                                      mov r6, r1
006cc630  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
006cc634  05 50 8f e0                                      add r5, pc, r5
006cc638  00 c0 80 e5                                      str ip, [r0]
006cc63c  01 10 95 e7                                      ldr r1, [r5, r1]
006cc640  08 e0 97 e5                                      ldr lr, [r7, #8]
006cc644  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
006cc648  08 10 81 e2                                      add r1, r1, #8
006cc64c  00 40 a0 e1                                      mov r4, r0
006cc650  0c e0 80 e7                                      str lr, [r0, ip]
006cc654  04 10 80 e5                                      str r1, [r0, #4]
006cc658  02 80 a0 e1                                      mov r8, r2
006cc65c  03 a0 a0 e1                                      mov sl, r3
006cc660  24 90 dd e5                                      ldrb sb, [sp, #0x24]
006cc664  c8 52 ff eb                                      bl #0x6a118c
006cc668  04 20 96 e5                                      ldr r2, [r6, #4]
006cc66c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
006cc670  00 20 84 e5                                      str r2, [r4]
006cc674  03 30 95 e7                                      ldr r3, [r5, r3]
006cc678  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
006cc67c  0c 00 97 e5                                      ldr r0, [r7, #0xc]
006cc680  68 30 83 e2                                      add r3, r3, #0x68
006cc684  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
006cc688  01 00 84 e7                                      str r0, [r4, r1]
006cc68c  04 30 84 e5                                      str r3, [r4, #4]
006cc690  00 30 a0 e3                                      mov r3, #0
006cc694  08 30 84 e5                                      str r3, [r4, #8]
006cc698  00 10 96 e5                                      ldr r1, [r6]
006cc69c  02 20 95 e7                                      ldr r2, [r5, r2]
006cc6a0  00 30 a0 e3                                      mov r3, #0
006cc6a4  00 10 84 e5                                      str r1, [r4]
006cc6a8  14 c0 96 e5                                      ldr ip, [r6, #0x14]
006cc6ac  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
006cc6b0  68 20 82 e2                                      add r2, r2, #0x68
006cc6b4  04 00 a0 e1                                      mov r0, r4
006cc6b8  01 c0 84 e7                                      str ip, [r4, r1]
006cc6bc  04 20 84 e5                                      str r2, [r4, #4]
006cc6c0  00 20 98 e5                                      ldr r2, [r8]
006cc6c4  0c 20 84 e5                                      str r2, [r4, #0xc]
006cc6c8  04 20 98 e5                                      ldr r2, [r8, #4]
006cc6cc  10 20 84 e5                                      str r2, [r4, #0x10]
006cc6d0  08 20 98 e5                                      ldr r2, [r8, #8]
006cc6d4  14 20 84 e5                                      str r2, [r4, #0x14]
006cc6d8  00 20 9a e5                                      ldr r2, [sl]
006cc6dc  18 20 84 e5                                      str r2, [r4, #0x18]
006cc6e0  04 20 9a e5                                      ldr r2, [sl, #4]
006cc6e4  1c 20 84 e5                                      str r2, [r4, #0x1c]
006cc6e8  08 20 9a e5                                      ldr r2, [sl, #8]
006cc6ec  34 30 84 e5                                      str r3, [r4, #0x34]
006cc6f0  28 10 9d e5                                      ldr r1, [sp, #0x28]
006cc6f4  20 20 84 e5                                      str r2, [r4, #0x20]
006cc6f8  24 30 84 e5                                      str r3, [r4, #0x24]
006cc6fc  38 10 84 e5                                      str r1, [r4, #0x38]
006cc700  28 30 84 e5                                      str r3, [r4, #0x28]
006cc704  2c 30 84 e5                                      str r3, [r4, #0x2c]
006cc708  30 30 84 e5                                      str r3, [r4, #0x30]
006cc70c  20 30 9d e5                                      ldr r3, [sp, #0x20]
006cc710  40 90 c4 e5                                      strb sb, [r4, #0x40]
006cc714  3c 30 84 e5                                      str r3, [r4, #0x3c]
006cc718  04 ff ff eb                                      bl #0x6cc330
006cc71c  04 00 a0 e1                                      mov r0, r4
006cc720  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006cc724  5c 84 2c 00 4c 27 00 00 08 23 00 00 48 37 00 00  .byte 0x5c, 0x84, 0x2c, 0x00, 0x4c, 0x27, 0x00, 0x00, 0x08, 0x23, 0x00, 0x00, 0x48, 0x37, 0x00, 0x00

; FUNCTION 0x006cc734, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZTv0_n12_N6glitch5scene29CSceneNodeAnimatorFlyStraightD0Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight()
; decoder-mode: arm
006cc734  00 30 90 e5                                      ldr r3, [r0]
006cc738  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cc73c  03 00 80 e0                                      add r0, r0, r3
006cc740  e0 fe ff ea                                      b #0x6cc2c8

; FUNCTION 0x006cc744, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneNodeAnimatorFlyStraight
; alias: _ZTv0_n12_N6glitch5scene29CSceneNodeAnimatorFlyStraightD1Ev
; demangled: virtual thunk to glitch::scene::CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight()
; decoder-mode: arm
006cc744  00 30 90 e5                                      ldr r3, [r0]
006cc748  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cc74c  03 00 80 e0                                      add r0, r0, r3
006cc750  c5 fe ff ea                                      b #0x6cc26c
