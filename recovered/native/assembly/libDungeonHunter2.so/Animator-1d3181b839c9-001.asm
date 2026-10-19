; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036621c, declared_size=8, range_size=8, mode=arm
; class-group: Animator
; alias: _ZNK8Animator7getTypeEv
; demangled: Animator::getType() const
; decoder-mode: arm
0036621c  0b 00 a0 e3                                      mov r0, #0xb
00366220  1e ff 2f e1                                      bx lr

; FUNCTION 0x00366224, declared_size=112, range_size=112, mode=arm
; class-group: Animator
; alias: _ZN8Animator17_HandleAnimEndingEPN6glitch5scene19ITimelineControllerE
; demangled: Animator::_HandleAnimEnding(glitch::scene::ITimelineController*)
; decoder-mode: arm
00366224  70 40 2d e9                                      push {r4, r5, r6, lr}
00366228  00 40 51 e2                                      subs r4, r1, #0
0036622c  00 50 a0 e1                                      mov r5, r0
00366230  14 00 00 0a                                      beq #0x366288
00366234  11 13 a0 e3                                      mov r1, #0x44000000
00366238  7a 18 81 e2                                      add r1, r1, #0x7a0000
0036623c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00366240  c9 a2 fe eb                                      bl #0x30ed6c
00366244  a0 a0 fe eb                                      bl #0x30e4cc
00366248  11 13 a0 e3                                      mov r1, #0x44000000
0036624c  00 60 a0 e1                                      mov r6, r0
00366250  7a 18 81 e2                                      add r1, r1, #0x7a0000
00366254  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00366258  c3 a2 fe eb                                      bl #0x30ed6c
0036625c  9a a0 fe eb                                      bl #0x30e4cc
00366260  04 30 94 e5                                      ldr r3, [r4, #4]
00366264  00 00 63 e0                                      rsb r0, r3, r0
00366268  06 00 50 e1                                      cmp r0, r6
0036626c  00 30 a0 a3                                      movge r3, #0
00366270  01 30 a0 b3                                      movlt r3, #1
00366274  00 00 50 e3                                      cmp r0, #0
00366278  00 30 a0 b3                                      movlt r3, #0
0036627c  00 00 53 e3                                      cmp r3, #0
00366280  06 30 60 10                                      rsbne r3, r0, r6
00366284  68 30 85 e5                                      str r3, [r5, #0x68]
00366288  01 30 a0 e3                                      mov r3, #1
0036628c  88 30 c5 e5                                      strb r3, [r5, #0x88]
00366290  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00366294, declared_size=16, range_size=16, mode=arm
; class-group: Animator
; alias: _ZN8Animator7_CBAnimEPN6glitch5scene19ITimelineControllerEPv
; demangled: Animator::_CBAnim(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
00366294  00 30 a0 e1                                      mov r3, r0
00366298  01 00 a0 e1                                      mov r0, r1
0036629c  03 10 a0 e1                                      mov r1, r3
003662a0  df ff ff ea                                      b #0x366224

; FUNCTION 0x003662c8, declared_size=64, range_size=64, mode=arm
; class-group: Animator
; alias: _ZN8Animator11animateNodeEPN6glitch5scene10ISceneNodeEj
; demangled: Animator::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
003662c8  70 40 2d e9                                      push {r4, r5, r6, lr}
003662cc  02 60 a0 e1                                      mov r6, r2
003662d0  58 50 80 e2                                      add r5, r0, #0x58
003662d4  00 40 a0 e1                                      mov r4, r0
003662d8  92 dc 0b eb                                      bl #0x65d528
003662dc  06 10 a0 e1                                      mov r1, r6
003662e0  05 00 a0 e1                                      mov r0, r5
003662e4  bf f8 ff eb                                      bl #0x3645e8
003662e8  04 00 a0 e1                                      mov r0, r4
003662ec  00 30 94 e5                                      ldr r3, [r4]
003662f0  0f e0 a0 e1                                      mov lr, pc
003662f4  44 f0 93 e5                                      ldr pc, [r3, #0x44]
003662f8  00 10 a0 e1                                      mov r1, r0
003662fc  05 00 a0 e1                                      mov r0, r5
00366300  70 40 bd e8                                      pop {r4, r5, r6, lr}
00366304  40 f8 ff ea                                      b #0x36440c

; FUNCTION 0x00366308, declared_size=40, range_size=40, mode=arm
; class-group: Animator
; alias: _ZN8Animator8onUnbindEPN6glitch5scene10ISceneNodeE
; demangled: Animator::onUnbind(glitch::scene::ISceneNode*)
; decoder-mode: arm
00366308  70 40 2d e9                                      push {r4, r5, r6, lr}
0036630c  00 40 a0 e1                                      mov r4, r0
00366310  01 50 a0 e1                                      mov r5, r1
00366314  58 00 80 e2                                      add r0, r0, #0x58
00366318  00 10 a0 e3                                      mov r1, #0
0036631c  06 f9 ff eb                                      bl #0x36473c
00366320  04 00 a0 e1                                      mov r0, r4
00366324  05 10 a0 e1                                      mov r1, r5
00366328  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036632c  9a 06 0c ea                                      b #0x667d9c

; FUNCTION 0x00366330, declared_size=120, range_size=120, mode=arm
; class-group: Animator
; alias: _ZN8Animator12SetCallbacksEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
; demangled: Animator::SetCallbacks(void (*)(glitch::scene::ITimelineController*, void*), void*, void (*)(glitch::collada::STriggeredEvent const&, void*), void*)
; decoder-mode: arm
00366330  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00366334  00 40 a0 e1                                      mov r4, r0
00366338  18 00 90 e5                                      ldr r0, [r0, #0x18]
0036633c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00366340  1c 30 84 e5                                      str r3, [r4, #0x1c]
00366344  00 00 50 e3                                      cmp r0, #0
00366348  20 c0 84 e5                                      str ip, [r4, #0x20]
0036634c  0c c0 80 15                                      strne ip, [r0, #0xc]
00366350  08 30 80 15                                      strne r3, [r0, #8]
00366354  00 30 94 e5                                      ldr r3, [r4]
00366358  04 00 a0 e1                                      mov r0, r4
0036635c  01 70 a0 e1                                      mov r7, r1
00366360  02 60 a0 e1                                      mov r6, r2
00366364  0f e0 a0 e1                                      mov lr, pc
00366368  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0036636c  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
00366370  00 00 50 e3                                      cmp r0, #0
00366374  05 50 8f e0                                      add r5, pc, r5
00366378  03 00 00 0a                                      beq #0x36638c
0036637c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00366380  0c 40 80 e5                                      str r4, [r0, #0xc]
00366384  03 30 95 e7                                      ldr r3, [r5, r3]
00366388  08 30 80 e5                                      str r3, [r0, #8]
0036638c  58 00 84 e2                                      add r0, r4, #0x58
00366390  07 10 a0 e1                                      mov r1, r7
00366394  06 20 a0 e1                                      mov r2, r6
00366398  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0036639c  17 f8 ff ea                                      b #0x364400
; mapping-symbol data/literal pool
003663a0  1c e7 62 00 88 16 00 00                          .byte 0x1c, 0xe7, 0x62, 0x00, 0x88, 0x16, 0x00, 0x00

; FUNCTION 0x003663a8, declared_size=8, range_size=8, mode=arm
; class-group: Animator
; alias: _ZThn4_N8AnimatorD1Ev
; demangled: non-virtual thunk to Animator::~Animator()
; decoder-mode: arm
003663a8  04 00 40 e2                                      sub r0, r0, #4
003663ac  ff ff ff ea                                      b #0x3663b0

; FUNCTION 0x003663b0, declared_size=96, range_size=96, mode=arm
; class-group: Animator
; alias: _ZN8AnimatorD1Ev
; demangled: Animator::~Animator()
; decoder-mode: arm
003663b0  70 40 2d e9                                      push {r4, r5, r6, lr}
003663b4  48 50 9f e5                                      ldr r5, [pc, #0x48]
003663b8  48 30 9f e5                                      ldr r3, [pc, #0x48]
003663bc  00 40 a0 e1                                      mov r4, r0
003663c0  05 50 8f e0                                      add r5, pc, r5
003663c4  03 30 95 e7                                      ldr r3, [r5, r3]
003663c8  58 00 80 e2                                      add r0, r0, #0x58
003663cc  a8 20 83 e2                                      add r2, r3, #0xa8
003663d0  0c 10 83 e2                                      add r1, r3, #0xc
003663d4  c4 30 83 e2                                      add r3, r3, #0xc4
003663d8  00 10 84 e5                                      str r1, [r4]
003663dc  94 30 84 e5                                      str r3, [r4, #0x94]
003663e0  04 20 84 e5                                      str r2, [r4, #4]
003663e4  13 f9 ff eb                                      bl #0x364838
003663e8  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
003663ec  04 00 a0 e1                                      mov r0, r4
003663f0  01 10 95 e7                                      ldr r1, [r5, r1]
003663f4  04 10 81 e2                                      add r1, r1, #4
003663f8  d6 dd 0b eb                                      bl #0x65db58
003663fc  04 00 a0 e1                                      mov r0, r4
00366400  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00366404  d0 e6 62 00 dc 41 00 00 5c 0a 00 00              .byte 0xd0, 0xe6, 0x62, 0x00, 0xdc, 0x41, 0x00, 0x00, 0x5c, 0x0a, 0x00, 0x00

; FUNCTION 0x00366410, declared_size=8, range_size=8, mode=arm
; class-group: Animator
; alias: _ZThn4_N8AnimatorD0Ev
; demangled: non-virtual thunk to Animator::~Animator()
; decoder-mode: arm
00366410  04 00 40 e2                                      sub r0, r0, #4
00366414  ff ff ff ea                                      b #0x366418

; FUNCTION 0x00366418, declared_size=28, range_size=28, mode=arm
; class-group: Animator
; alias: _ZN8AnimatorD0Ev
; demangled: Animator::~Animator()
; decoder-mode: arm
00366418  10 40 2d e9                                      push {r4, lr}
0036641c  00 40 a0 e1                                      mov r4, r0
00366420  e2 ff ff eb                                      bl #0x3663b0
00366424  04 00 a0 e1                                      mov r0, r4
00366428  04 a8 fe eb                                      bl #0x310440
0036642c  04 00 a0 e1                                      mov r0, r4
00366430  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00366434, declared_size=92, range_size=92, mode=arm
; class-group: Animator
; alias: _ZN8AnimatorD2Ev
; demangled: Animator::~Animator()
; decoder-mode: arm
00366434  70 40 2d e9                                      push {r4, r5, r6, lr}
00366438  48 30 9f e5                                      ldr r3, [pc, #0x48]
0036643c  01 50 a0 e1                                      mov r5, r1
00366440  44 20 9f e5                                      ldr r2, [pc, #0x44]
00366444  00 10 91 e5                                      ldr r1, [r1]
00366448  03 30 8f e0                                      add r3, pc, r3
0036644c  02 20 93 e7                                      ldr r2, [r3, r2]
00366450  00 10 80 e5                                      str r1, [r0]
00366454  24 c0 95 e5                                      ldr ip, [r5, #0x24]
00366458  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0036645c  00 40 a0 e1                                      mov r4, r0
00366460  a8 20 82 e2                                      add r2, r2, #0xa8
00366464  01 c0 84 e7                                      str ip, [r4, r1]
00366468  58 00 80 e2                                      add r0, r0, #0x58
0036646c  04 20 84 e5                                      str r2, [r4, #4]
00366470  f0 f8 ff eb                                      bl #0x364838
00366474  04 00 a0 e1                                      mov r0, r4
00366478  04 10 85 e2                                      add r1, r5, #4
0036647c  b5 dd 0b eb                                      bl #0x65db58
00366480  04 00 a0 e1                                      mov r0, r4
00366484  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00366488  48 e6 62 00 dc 41 00 00                          .byte 0x48, 0xe6, 0x62, 0x00, 0xdc, 0x41, 0x00, 0x00

; FUNCTION 0x00366490, declared_size=136, range_size=136, mode=arm
; class-group: Animator
; alias: _ZN8AnimatorC1ERKN6glitch7collada16CColladaDatabaseERNS1_22SLibraryAnimationClipsE
; demangled: Animator::Animator(glitch::collada::CColladaDatabase const&, glitch::collada::SLibraryAnimationClips&)
; decoder-mode: arm
00366490  70 40 2d e9                                      push {r4, r5, r6, lr}
00366494  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
00366498  6c e0 9f e5                                      ldr lr, [pc, #0x6c]
0036649c  6c c0 9f e5                                      ldr ip, [pc, #0x6c]
003664a0  05 50 8f e0                                      add r5, pc, r5
003664a4  0e e0 95 e7                                      ldr lr, [r5, lr]
003664a8  0c c0 95 e7                                      ldr ip, [r5, ip]
003664ac  01 60 a0 e1                                      mov r6, r1
003664b0  08 e0 8e e2                                      add lr, lr, #8
003664b4  02 30 a0 e1                                      mov r3, r2
003664b8  01 20 a0 e3                                      mov r2, #1
003664bc  94 e0 80 e5                                      str lr, [r0, #0x94]
003664c0  04 10 8c e2                                      add r1, ip, #4
003664c4  98 20 80 e5                                      str r2, [r0, #0x98]
003664c8  06 20 a0 e1                                      mov r2, r6
003664cc  00 40 a0 e1                                      mov r4, r0
003664d0  32 de 0b eb                                      bl #0x65dda0
003664d4  38 30 9f e5                                      ldr r3, [pc, #0x38]
003664d8  58 00 84 e2                                      add r0, r4, #0x58
003664dc  04 10 a0 e1                                      mov r1, r4
003664e0  03 30 95 e7                                      ldr r3, [r5, r3]
003664e4  a8 20 83 e2                                      add r2, r3, #0xa8
003664e8  0c c0 83 e2                                      add ip, r3, #0xc
003664ec  c4 30 83 e2                                      add r3, r3, #0xc4
003664f0  00 c0 84 e5                                      str ip, [r4]
003664f4  94 30 84 e5                                      str r3, [r4, #0x94]
003664f8  04 20 84 e5                                      str r2, [r4, #4]
003664fc  a5 f7 ff eb                                      bl #0x364398
00366500  04 00 a0 e1                                      mov r0, r4
00366504  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00366508  f0 e5 62 00 44 2b 00 00 5c 0a 00 00 dc 41 00 00  .byte 0xf0, 0xe5, 0x62, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x5c, 0x0a, 0x00, 0x00, 0xdc, 0x41, 0x00, 0x00

; FUNCTION 0x00366518, declared_size=92, range_size=92, mode=arm
; class-group: Animator
; alias: _ZN8AnimatorC2ERKN6glitch7collada16CColladaDatabaseERNS1_22SLibraryAnimationClipsE
; demangled: Animator::Animator(glitch::collada::CColladaDatabase const&, glitch::collada::SLibraryAnimationClips&)
; decoder-mode: arm
00366518  70 40 2d e9                                      push {r4, r5, r6, lr}
0036651c  01 60 a0 e1                                      mov r6, r1
00366520  44 50 9f e5                                      ldr r5, [pc, #0x44]
00366524  04 10 81 e2                                      add r1, r1, #4
00366528  00 40 a0 e1                                      mov r4, r0
0036652c  1b de 0b eb                                      bl #0x65dda0
00366530  00 20 96 e5                                      ldr r2, [r6]
00366534  34 30 9f e5                                      ldr r3, [pc, #0x34]
00366538  05 50 8f e0                                      add r5, pc, r5
0036653c  00 20 84 e5                                      str r2, [r4]
00366540  03 30 95 e7                                      ldr r3, [r5, r3]
00366544  24 10 96 e5                                      ldr r1, [r6, #0x24]
00366548  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0036654c  a8 30 83 e2                                      add r3, r3, #0xa8
00366550  58 00 84 e2                                      add r0, r4, #0x58
00366554  02 10 84 e7                                      str r1, [r4, r2]
00366558  04 30 84 e5                                      str r3, [r4, #4]
0036655c  04 10 a0 e1                                      mov r1, r4
00366560  8c f7 ff eb                                      bl #0x364398
00366564  04 00 a0 e1                                      mov r0, r4
00366568  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0036656c  58 e5 62 00 dc 41 00 00                          .byte 0x58, 0xe5, 0x62, 0x00, 0xdc, 0x41, 0x00, 0x00

; FUNCTION 0x00366574, declared_size=16, range_size=16, mode=arm
; class-group: Animator
; alias: _ZTv0_n12_N8AnimatorD0Ev
; demangled: virtual thunk to Animator::~Animator()
; decoder-mode: arm
00366574  00 30 90 e5                                      ldr r3, [r0]
00366578  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0036657c  03 00 80 e0                                      add r0, r0, r3
00366580  a4 ff ff ea                                      b #0x366418

; FUNCTION 0x00366584, declared_size=16, range_size=16, mode=arm
; class-group: Animator
; alias: _ZTv0_n12_N8AnimatorD1Ev
; demangled: virtual thunk to Animator::~Animator()
; decoder-mode: arm
00366584  00 30 90 e5                                      ldr r3, [r0]
00366588  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0036658c  03 00 80 e0                                      add r0, r0, r3
00366590  86 ff ff ea                                      b #0x3663b0
