; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b9590, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeAnimatorFactory
; alias: _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactoryC2EPNS0_13CSceneManagerEPNS_3gui14ICursorControlE
; demangled: glitch::scene::CDefaultSceneNodeAnimatorFactory::CDefaultSceneNodeAnimatorFactory(glitch::scene::CSceneManager*, glitch::gui::ICursorControl*)
; decoder-mode: arm
006b9590  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006b9594  3c c0 9f e5                                      ldr ip, [pc, #0x3c]
006b9598  04 40 2d e5                                      str r4, [sp, #-4]!
006b959c  03 30 8f e0                                      add r3, pc, r3
006b95a0  0c c0 93 e7                                      ldr ip, [r3, ip]
006b95a4  01 40 a0 e3                                      mov r4, #1
006b95a8  00 00 52 e3                                      cmp r2, #0
006b95ac  08 c0 8c e2                                      add ip, ip, #8
006b95b0  04 40 80 e5                                      str r4, [r0, #4]
006b95b4  00 c0 80 e5                                      str ip, [r0]
006b95b8  08 10 80 e5                                      str r1, [r0, #8]
006b95bc  0c 20 80 e5                                      str r2, [r0, #0xc]
006b95c0  04 30 92 15                                      ldrne r3, [r2, #4]
006b95c4  04 30 83 10                                      addne r3, r3, r4
006b95c8  04 30 82 15                                      strne r3, [r2, #4]
006b95cc  10 00 bd e8                                      ldm sp!, {r4}
006b95d0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006b95d4  f4 b4 2d 00 74 3f 00 00                          .byte 0xf4, 0xb4, 0x2d, 0x00, 0x74, 0x3f, 0x00, 0x00

; FUNCTION 0x006b95dc, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeAnimatorFactory
; alias: _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactoryC1EPNS0_13CSceneManagerEPNS_3gui14ICursorControlE
; demangled: glitch::scene::CDefaultSceneNodeAnimatorFactory::CDefaultSceneNodeAnimatorFactory(glitch::scene::CSceneManager*, glitch::gui::ICursorControl*)
; decoder-mode: arm
006b95dc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006b95e0  3c c0 9f e5                                      ldr ip, [pc, #0x3c]
006b95e4  04 40 2d e5                                      str r4, [sp, #-4]!
006b95e8  03 30 8f e0                                      add r3, pc, r3
006b95ec  0c c0 93 e7                                      ldr ip, [r3, ip]
006b95f0  01 40 a0 e3                                      mov r4, #1
006b95f4  00 00 52 e3                                      cmp r2, #0
006b95f8  08 c0 8c e2                                      add ip, ip, #8
006b95fc  04 40 80 e5                                      str r4, [r0, #4]
006b9600  00 c0 80 e5                                      str ip, [r0]
006b9604  08 10 80 e5                                      str r1, [r0, #8]
006b9608  0c 20 80 e5                                      str r2, [r0, #0xc]
006b960c  04 30 92 15                                      ldrne r3, [r2, #4]
006b9610  04 30 83 10                                      addne r3, r3, r4
006b9614  04 30 82 15                                      strne r3, [r2, #4]
006b9618  10 00 bd e8                                      ldm sp!, {r4}
006b961c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006b9620  a8 b4 2d 00 74 3f 00 00                          .byte 0xa8, 0xb4, 0x2d, 0x00, 0x74, 0x3f, 0x00, 0x00

; FUNCTION 0x006b9628, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeAnimatorFactory
; alias: _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactoryD2Ev
; demangled: glitch::scene::CDefaultSceneNodeAnimatorFactory::~CDefaultSceneNodeAnimatorFactory()
; decoder-mode: arm
006b9628  10 40 2d e9                                      push {r4, lr}
006b962c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006b9630  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
006b9634  00 40 a0 e1                                      mov r4, r0
006b9638  03 30 8f e0                                      add r3, pc, r3
006b963c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006b9640  02 20 93 e7                                      ldr r2, [r3, r2]
006b9644  00 00 50 e3                                      cmp r0, #0
006b9648  08 20 82 e2                                      add r2, r2, #8
006b964c  00 20 84 e5                                      str r2, [r4]
006b9650  00 00 00 0a                                      beq #0x6b9658
006b9654  ca 8f f1 eb                                      bl #0x31d584
006b9658  04 00 a0 e1                                      mov r0, r4
006b965c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b9660  58 b4 2d 00 74 3f 00 00                          .byte 0x58, 0xb4, 0x2d, 0x00, 0x74, 0x3f, 0x00, 0x00

; FUNCTION 0x006b9668, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeAnimatorFactory
; alias: _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactoryD1Ev
; demangled: glitch::scene::CDefaultSceneNodeAnimatorFactory::~CDefaultSceneNodeAnimatorFactory()
; decoder-mode: arm
006b9668  10 40 2d e9                                      push {r4, lr}
006b966c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006b9670  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
006b9674  00 40 a0 e1                                      mov r4, r0
006b9678  03 30 8f e0                                      add r3, pc, r3
006b967c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006b9680  02 20 93 e7                                      ldr r2, [r3, r2]
006b9684  00 00 50 e3                                      cmp r0, #0
006b9688  08 20 82 e2                                      add r2, r2, #8
006b968c  00 20 84 e5                                      str r2, [r4]
006b9690  00 00 00 0a                                      beq #0x6b9698
006b9694  ba 8f f1 eb                                      bl #0x31d584
006b9698  04 00 a0 e1                                      mov r0, r4
006b969c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b96a0  18 b4 2d 00 74 3f 00 00                          .byte 0x18, 0xb4, 0x2d, 0x00, 0x74, 0x3f, 0x00, 0x00

; FUNCTION 0x006b96a8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeAnimatorFactory
; alias: _ZNK6glitch5scene32CDefaultSceneNodeAnimatorFactory38getCreatableSceneNodeAnimatorTypeCountEv
; demangled: glitch::scene::CDefaultSceneNodeAnimatorFactory::getCreatableSceneNodeAnimatorTypeCount() const
; decoder-mode: arm
006b96a8  09 00 a0 e3                                      mov r0, #9
006b96ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b96b0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeAnimatorFactory
; alias: _ZNK6glitch5scene32CDefaultSceneNodeAnimatorFactory34getCreateableSceneNodeAnimatorTypeEj
; demangled: glitch::scene::CDefaultSceneNodeAnimatorFactory::getCreateableSceneNodeAnimatorType(unsigned int) const
; decoder-mode: arm
006b96b0  08 00 51 e3                                      cmp r1, #8
006b96b4  01 00 a0 91                                      movls r0, r1
006b96b8  0a 00 a0 83                                      movhi r0, #0xa
006b96bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b96c0, declared_size=32, range_size=32, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeAnimatorFactory
; alias: _ZNK6glitch5scene32CDefaultSceneNodeAnimatorFactory38getCreateableSceneNodeAnimatorTypeNameEj
; demangled: glitch::scene::CDefaultSceneNodeAnimatorFactory::getCreateableSceneNodeAnimatorTypeName(unsigned int) const
; decoder-mode: arm
006b96c0  08 00 51 e3                                      cmp r1, #8
006b96c4  00 00 a0 83                                      movhi r0, #0
006b96c8  1e ff 2f 81                                      bxhi lr
006b96cc  08 30 9f e5                                      ldr r3, [pc, #8]
006b96d0  03 30 8f e0                                      add r3, pc, r3
006b96d4  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
006b96d8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006b96dc  cc e4 29 00                                      .byte 0xcc, 0xe4, 0x29, 0x00

; FUNCTION 0x006b96e0, declared_size=32, range_size=32, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeAnimatorFactory
; alias: _ZNK6glitch5scene32CDefaultSceneNodeAnimatorFactory38getCreateableSceneNodeAnimatorTypeNameENS0_26E_SCENE_NODE_ANIMATOR_TYPEE
; demangled: glitch::scene::CDefaultSceneNodeAnimatorFactory::getCreateableSceneNodeAnimatorTypeName(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE) const
; decoder-mode: arm
006b96e0  08 00 51 e3                                      cmp r1, #8
006b96e4  00 00 a0 c3                                      movgt r0, #0
006b96e8  1e ff 2f c1                                      bxgt lr
006b96ec  08 30 9f e5                                      ldr r3, [pc, #8]
006b96f0  03 30 8f e0                                      add r3, pc, r3
006b96f4  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
006b96f8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006b96fc  ac e4 29 00                                      .byte 0xac, 0xe4, 0x29, 0x00

; FUNCTION 0x006b9720, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeAnimatorFactory
; alias: _ZNK6glitch5scene32CDefaultSceneNodeAnimatorFactory15getTypeFromNameEPKc
; demangled: glitch::scene::CDefaultSceneNodeAnimatorFactory::getTypeFromName(char const*) const
; decoder-mode: arm
006b9720  70 40 2d e9                                      push {r4, r5, r6, lr}
006b9724  01 50 a0 e1                                      mov r5, r1
006b9728  40 60 9f e5                                      ldr r6, [pc, #0x40]
006b972c  40 10 9f e5                                      ldr r1, [pc, #0x40]
006b9730  00 40 a0 e3                                      mov r4, #0
006b9734  06 60 8f e0                                      add r6, pc, r6
006b9738  01 10 8f e0                                      add r1, pc, r1
006b973c  03 00 00 ea                                      b #0x6b9750
006b9740  01 40 84 e2                                      add r4, r4, #1
006b9744  04 11 96 e7                                      ldr r1, [r6, r4, lsl #2]
006b9748  00 00 51 e3                                      cmp r1, #0
006b974c  05 00 00 0a                                      beq #0x6b9768
006b9750  05 00 a0 e1                                      mov r0, r5
006b9754  f0 52 f1 eb                                      bl #0x30e31c
006b9758  00 00 50 e3                                      cmp r0, #0
006b975c  f7 ff ff 1a                                      bne #0x6b9740
006b9760  04 00 a0 e1                                      mov r0, r4
006b9764  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b9768  0a 00 a0 e3                                      mov r0, #0xa
006b976c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006b9770  68 e4 29 00 00 1b 23 00                          .byte 0x68, 0xe4, 0x29, 0x00, 0x00, 0x1b, 0x23, 0x00

; FUNCTION 0x006b9778, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeAnimatorFactory
; alias: _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactory23createSceneNodeAnimatorEPKcPNS0_10ISceneNodeE
; demangled: glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(char const*, glitch::scene::ISceneNode*)
; decoder-mode: arm
006b9778  70 40 2d e9                                      push {r4, r5, r6, lr}
006b977c  00 30 90 e5                                      ldr r3, [r0]
006b9780  00 40 a0 e1                                      mov r4, r0
006b9784  02 60 a0 e1                                      mov r6, r2
006b9788  0c 50 93 e5                                      ldr r5, [r3, #0xc]
006b978c  e3 ff ff eb                                      bl #0x6b9720
006b9790  06 20 a0 e1                                      mov r2, r6
006b9794  00 10 a0 e1                                      mov r1, r0
006b9798  04 00 a0 e1                                      mov r0, r4
006b979c  35 ff 2f e1                                      blx r5
006b97a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006b97a4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeAnimatorFactory
; alias: _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactoryD0Ev
; demangled: glitch::scene::CDefaultSceneNodeAnimatorFactory::~CDefaultSceneNodeAnimatorFactory()
; decoder-mode: arm
006b97a4  10 40 2d e9                                      push {r4, lr}
006b97a8  00 40 a0 e1                                      mov r4, r0
006b97ac  ad ff ff eb                                      bl #0x6b9668
006b97b0  04 00 a0 e1                                      mov r0, r4
006b97b4  bd 52 f1 eb                                      bl #0x30e2b0
006b97b8  04 00 a0 e1                                      mov r0, r4
006b97bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006b9928, declared_size=964, range_size=964, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeAnimatorFactory
; alias: _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactory23createSceneNodeAnimatorENS0_26E_SCENE_NODE_ANIMATOR_TYPEEPNS0_10ISceneNodeE
; demangled: glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)
; decoder-mode: arm
006b9928  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006b992c  00 70 a0 e1                                      mov r7, r0
006b9930  ac d0 4d e2                                      sub sp, sp, #0xac
006b9934  02 40 a0 e1                                      mov r4, r2
006b9938  08 00 51 e3                                      cmp r1, #8
006b993c  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
006b9940  20 00 00 ea                                      b #0x6b99c8
006b9944  21 00 00 ea                                      b #0x6b99d0
006b9948  39 00 00 ea                                      b #0x6b9a34
006b994c  4f 00 00 ea                                      b #0x6b9a90
006b9950  7d 00 00 ea                                      b #0x6b9b4c
006b9954  8e 00 00 ea                                      b #0x6b9b94
006b9958  a1 00 00 ea                                      b #0x6b9be4
006b995c  ab 00 00 ea                                      b #0x6b9c10
006b9960  cc 00 00 ea                                      b #0x6b9c98
006b9964  ff ff ff ea                                      b #0x6b9968
006b9968  00 10 a0 e3                                      mov r1, #0
006b996c  80 00 a0 e3                                      mov r0, #0x80
006b9970  0d ea f9 eb                                      bl #0x5341ac
006b9974  00 20 08 e3                                      movw r2, #0x8000
006b9978  43 34 a0 e3                                      mov r3, #0x43000000
006b997c  00 c0 08 e3                                      movw ip, #0x8000
006b9980  0c 10 97 e5                                      ldr r1, [r7, #0xc]
006b9984  bb c4 44 e3                                      movt ip, #0x44bb
006b9988  bb 24 4c e3                                      movt r2, #0xc4bb
006b998c  12 37 83 e2                                      add r3, r3, #0x480000
006b9990  00 50 a0 e1                                      mov r5, r0
006b9994  00 c0 8d e5                                      str ip, [sp]
006b9998  66 42 00 eb                                      bl #0x6ca338
006b999c  00 00 55 e3                                      cmp r5, #0
006b99a0  00 00 54 13                                      cmpne r4, #0
006b99a4  04 00 00 0a                                      beq #0x6b99bc
006b99a8  04 00 a0 e1                                      mov r0, r4
006b99ac  00 30 94 e5                                      ldr r3, [r4]
006b99b0  05 10 a0 e1                                      mov r1, r5
006b99b4  0f e0 a0 e1                                      mov lr, pc
006b99b8  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006b99bc  05 00 a0 e1                                      mov r0, r5
006b99c0  ac d0 8d e2                                      add sp, sp, #0xac
006b99c4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006b99c8  00 50 a0 e3                                      mov r5, #0
006b99cc  fa ff ff ea                                      b #0x6b99bc
006b99d0  43 45 fd eb                                      bl #0x60aee4
006b99d4  00 30 a0 e3                                      mov r3, #0
006b99d8  00 60 a0 e1                                      mov r6, r0
006b99dc  fe 25 a0 e3                                      mov r2, #0x3f800000
006b99e0  00 10 a0 e3                                      mov r1, #0
006b99e4  50 00 a0 e3                                      mov r0, #0x50
006b99e8  94 20 8d e5                                      str r2, [sp, #0x94]
006b99ec  98 30 8d e5                                      str r3, [sp, #0x98]
006b99f0  9c 30 8d e5                                      str r3, [sp, #0x9c]
006b99f4  a0 30 8d e5                                      str r3, [sp, #0xa0]
006b99f8  a4 30 8d e5                                      str r3, [sp, #0xa4]
006b99fc  90 30 8d e5                                      str r3, [sp, #0x90]
006b9a00  e9 e9 f9 eb                                      bl #0x5341ac
006b9a04  6f c2 01 e3                                      movw ip, #0x126f
006b9a08  83 ca 43 e3                                      movt ip, #0x3a83
006b9a0c  41 34 a0 e3                                      mov r3, #0x41000000
006b9a10  00 c0 8d e5                                      str ip, [sp]
006b9a14  06 10 a0 e1                                      mov r1, r6
006b9a18  90 c0 8d e2                                      add ip, sp, #0x90
006b9a1c  9c 20 8d e2                                      add r2, sp, #0x9c
006b9a20  02 36 83 e2                                      add r3, r3, #0x200000
006b9a24  00 50 a0 e1                                      mov r5, r0
006b9a28  04 c0 8d e5                                      str ip, [sp, #4]
006b9a2c  d1 48 00 eb                                      bl #0x6cbd78
006b9a30  d9 ff ff ea                                      b #0x6b999c
006b9a34  42 34 a0 e3                                      mov r3, #0x42000000
006b9a38  00 20 a0 e3                                      mov r2, #0
006b9a3c  32 37 83 e2                                      add r3, r3, #0xc80000
006b9a40  8c 20 8d e5                                      str r2, [sp, #0x8c]
006b9a44  80 30 8d e5                                      str r3, [sp, #0x80]
006b9a48  84 20 8d e5                                      str r2, [sp, #0x84]
006b9a4c  88 20 8d e5                                      str r2, [sp, #0x88]
006b9a50  78 30 8d e5                                      str r3, [sp, #0x78]
006b9a54  7c 30 8d e5                                      str r3, [sp, #0x7c]
006b9a58  21 45 fd eb                                      bl #0x60aee4
006b9a5c  00 10 a0 e3                                      mov r1, #0
006b9a60  00 60 a0 e1                                      mov r6, r0
006b9a64  4c 00 a0 e3                                      mov r0, #0x4c
006b9a68  cf e9 f9 eb                                      bl #0x5341ac
006b9a6c  01 c0 a0 e3                                      mov ip, #1
006b9a70  84 10 8d e2                                      add r1, sp, #0x84
006b9a74  78 20 8d e2                                      add r2, sp, #0x78
006b9a78  10 37 02 e3                                      movw r3, #0x2710
006b9a7c  00 50 a0 e1                                      mov r5, r0
006b9a80  00 c0 8d e5                                      str ip, [sp]
006b9a84  04 60 8d e5                                      str r6, [sp, #4]
006b9a88  8a 4a 00 eb                                      bl #0x6cc4b8
006b9a8c  c2 ff ff ea                                      b #0x6b999c
006b9a90  00 30 a0 e3                                      mov r3, #0
006b9a94  6c 60 8d e2                                      add r6, sp, #0x6c
006b9a98  00 c0 a0 e3                                      mov ip, #0
006b9a9c  03 10 a0 e1                                      mov r1, r3
006b9aa0  60 20 8d e2                                      add r2, sp, #0x60
006b9aa4  06 00 a0 e1                                      mov r0, r6
006b9aa8  6c 30 8d e5                                      str r3, [sp, #0x6c]
006b9aac  70 30 8d e5                                      str r3, [sp, #0x70]
006b9ab0  74 30 8d e5                                      str r3, [sp, #0x74]
006b9ab4  68 c0 8d e5                                      str ip, [sp, #0x68]
006b9ab8  60 c0 8d e5                                      str ip, [sp, #0x60]
006b9abc  64 c0 8d e5                                      str ip, [sp, #0x64]
006b9ac0  43 ff ff eb                                      bl #0x6b97d4
006b9ac4  74 20 9d e5                                      ldr r2, [sp, #0x74]
006b9ac8  70 10 9d e5                                      ldr r1, [sp, #0x70]
006b9acc  41 34 a0 e3                                      mov r3, #0x41000000
006b9ad0  02 36 83 e2                                      add r3, r3, #0x200000
006b9ad4  02 00 51 e1                                      cmp r1, r2
006b9ad8  01 21 a0 e3                                      mov r2, #0x40000000
006b9adc  0a 26 82 e2                                      add r2, r2, #0xa00000
006b9ae0  54 30 8d e5                                      str r3, [sp, #0x54]
006b9ae4  58 20 8d e5                                      str r2, [sp, #0x58]
006b9ae8  5c 30 8d e5                                      str r3, [sp, #0x5c]
006b9aec  7a 00 00 0a                                      beq #0x6b9cdc
006b9af0  00 30 81 e5                                      str r3, [r1]
006b9af4  58 30 9d e5                                      ldr r3, [sp, #0x58]
006b9af8  04 30 81 e5                                      str r3, [r1, #4]
006b9afc  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
006b9b00  08 30 81 e5                                      str r3, [r1, #8]
006b9b04  70 30 9d e5                                      ldr r3, [sp, #0x70]
006b9b08  0c 30 83 e2                                      add r3, r3, #0xc
006b9b0c  70 30 8d e5                                      str r3, [sp, #0x70]
006b9b10  00 10 a0 e3                                      mov r1, #0
006b9b14  2c 00 a0 e3                                      mov r0, #0x2c
006b9b18  a3 e9 f9 eb                                      bl #0x5341ac
006b9b1c  3f c4 a0 e3                                      mov ip, #0x3f000000
006b9b20  06 20 a0 e1                                      mov r2, r6
006b9b24  00 10 a0 e3                                      mov r1, #0
006b9b28  fe 35 a0 e3                                      mov r3, #0x3f800000
006b9b2c  00 50 a0 e1                                      mov r5, r0
006b9b30  00 c0 8d e5                                      str ip, [sp]
006b9b34  61 4c 00 eb                                      bl #0x6cccc0
006b9b38  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006b9b3c  00 00 50 e3                                      cmp r0, #0
006b9b40  95 ff ff 0a                                      beq #0x6b999c
006b9b44  41 5a f1 eb                                      bl #0x310450
006b9b48  93 ff ff ea                                      b #0x6b999c
006b9b4c  e4 44 fd eb                                      bl #0x60aee4
006b9b50  14 50 8d e2                                      add r5, sp, #0x14
006b9b54  00 20 a0 e3                                      mov r2, #0
006b9b58  9a 19 09 e3                                      movw r1, #0x999a
006b9b5c  02 30 a0 e1                                      mov r3, r2
006b9b60  00 70 a0 e1                                      mov r7, r0
006b9b64  99 1e 43 e3                                      movt r1, #0x3e99
006b9b68  05 00 a0 e1                                      mov r0, r5
006b9b6c  99 8b f2 eb                                      bl #0x35c9d8
006b9b70  00 10 a0 e3                                      mov r1, #0
006b9b74  28 00 a0 e3                                      mov r0, #0x28
006b9b78  8b e9 f9 eb                                      bl #0x5341ac
006b9b7c  05 20 a0 e1                                      mov r2, r5
006b9b80  00 60 a0 e1                                      mov r6, r0
006b9b84  07 10 a0 e1                                      mov r1, r7
006b9b88  1d 4f 00 eb                                      bl #0x6cd804
006b9b8c  06 50 a0 e1                                      mov r5, r6
006b9b90  81 ff ff ea                                      b #0x6b999c
006b9b94  00 60 a0 e3                                      mov r6, #0
006b9b98  48 60 8d e5                                      str r6, [sp, #0x48]
006b9b9c  4c 60 8d e5                                      str r6, [sp, #0x4c]
006b9ba0  50 60 8d e5                                      str r6, [sp, #0x50]
006b9ba4  ce 44 fd eb                                      bl #0x60aee4
006b9ba8  06 10 a0 e1                                      mov r1, r6
006b9bac  00 70 a0 e1                                      mov r7, r0
006b9bb0  30 00 a0 e3                                      mov r0, #0x30
006b9bb4  7c e9 f9 eb                                      bl #0x5341ac
006b9bb8  48 50 8d e2                                      add r5, sp, #0x48
006b9bbc  05 10 a0 e1                                      mov r1, r5
006b9bc0  fa 20 a0 e3                                      mov r2, #0xfa
006b9bc4  01 30 a0 e3                                      mov r3, #1
006b9bc8  00 60 a0 e1                                      mov r6, r0
006b9bcc  00 70 8d e5                                      str r7, [sp]
006b9bd0  40 50 00 eb                                      bl #0x6cdcd8
006b9bd4  05 00 a0 e1                                      mov r0, r5
006b9bd8  06 50 a0 e1                                      mov r5, r6
006b9bdc  d2 57 fa eb                                      bl #0x54fb2c
006b9be0  6d ff ff ea                                      b #0x6b999c
006b9be4  be 44 fd eb                                      bl #0x60aee4
006b9be8  00 10 a0 e3                                      mov r1, #0
006b9bec  00 60 a0 e1                                      mov r6, r0
006b9bf0  1c 00 a0 e3                                      mov r0, #0x1c
006b9bf4  6c e9 f9 eb                                      bl #0x5341ac
006b9bf8  4e 2d 86 e2                                      add r2, r6, #0x1380
006b9bfc  08 10 97 e5                                      ldr r1, [r7, #8]
006b9c00  08 20 82 e2                                      add r2, r2, #8
006b9c04  00 50 a0 e1                                      mov r5, r0
006b9c08  57 46 00 eb                                      bl #0x6cb56c
006b9c0c  62 ff ff ea                                      b #0x6b999c
006b9c10  42 c4 a0 e3                                      mov ip, #0x42000000
006b9c14  07 c6 8c e2                                      add ip, ip, #0x700000
006b9c18  40 c0 8d e5                                      str ip, [sp, #0x40]
006b9c1c  41 24 a0 e3                                      mov r2, #0x41000000
006b9c20  c2 c4 a0 e3                                      mov ip, #0xc2000000
006b9c24  00 30 a0 e3                                      mov r3, #0
006b9c28  0f 26 82 e2                                      add r2, r2, #0xf00000
006b9c2c  32 c7 8c e2                                      add ip, ip, #0xc80000
006b9c30  00 10 a0 e3                                      mov r1, #0
006b9c34  84 00 a0 e3                                      mov r0, #0x84
006b9c38  44 20 8d e5                                      str r2, [sp, #0x44]
006b9c3c  34 c0 8d e5                                      str ip, [sp, #0x34]
006b9c40  2c 30 8d e5                                      str r3, [sp, #0x2c]
006b9c44  3c 20 8d e5                                      str r2, [sp, #0x3c]
006b9c48  30 30 8d e5                                      str r3, [sp, #0x30]
006b9c4c  38 30 8d e5                                      str r3, [sp, #0x38]
006b9c50  24 30 8d e5                                      str r3, [sp, #0x24]
006b9c54  28 30 8d e5                                      str r3, [sp, #0x28]
006b9c58  53 e9 f9 eb                                      bl #0x5341ac
006b9c5c  3c c0 8d e2                                      add ip, sp, #0x3c
006b9c60  08 10 97 e5                                      ldr r1, [r7, #8]
006b9c64  00 c0 8d e5                                      str ip, [sp]
006b9c68  30 c0 8d e2                                      add ip, sp, #0x30
006b9c6c  04 c0 8d e5                                      str ip, [sp, #4]
006b9c70  24 c0 8d e2                                      add ip, sp, #0x24
006b9c74  08 c0 8d e5                                      str ip, [sp, #8]
006b9c78  6f c2 01 e3                                      movw ip, #0x126f
006b9c7c  03 ca 43 e3                                      movt ip, #0x3a03
006b9c80  00 20 a0 e3                                      mov r2, #0
006b9c84  04 30 a0 e1                                      mov r3, r4
006b9c88  00 50 a0 e1                                      mov r5, r0
006b9c8c  0c c0 8d e5                                      str ip, [sp, #0xc]
006b9c90  da 44 00 eb                                      bl #0x6cb000
006b9c94  40 ff ff ea                                      b #0x6b999c
006b9c98  00 10 a0 e3                                      mov r1, #0
006b9c9c  64 00 a0 e3                                      mov r0, #0x64
006b9ca0  41 e9 f9 eb                                      bl #0x5341ac
006b9ca4  42 24 a0 e3                                      mov r2, #0x42000000
006b9ca8  43 34 a0 e3                                      mov r3, #0x43000000
006b9cac  0c 10 97 e5                                      ldr r1, [r7, #0xc]
006b9cb0  00 c0 a0 e3                                      mov ip, #0
006b9cb4  00 e0 a0 e3                                      mov lr, #0
006b9cb8  32 27 82 e2                                      add r2, r2, #0xc80000
006b9cbc  fa 38 83 e2                                      add r3, r3, #0xfa0000
006b9cc0  00 50 a0 e1                                      mov r5, r0
006b9cc4  00 e0 8d e5                                      str lr, [sp]
006b9cc8  0c c0 8d e5                                      str ip, [sp, #0xc]
006b9ccc  04 c0 8d e5                                      str ip, [sp, #4]
006b9cd0  08 c0 8d e5                                      str ip, [sp, #8]
006b9cd4  8d 3c 00 eb                                      bl #0x6c8f10
006b9cd8  2f ff ff ea                                      b #0x6b999c
006b9cdc  06 00 a0 e1                                      mov r0, r6
006b9ce0  54 20 8d e2                                      add r2, sp, #0x54
006b9ce4  ba fe ff eb                                      bl #0x6b97d4
006b9ce8  88 ff ff ea                                      b #0x6b9b10
