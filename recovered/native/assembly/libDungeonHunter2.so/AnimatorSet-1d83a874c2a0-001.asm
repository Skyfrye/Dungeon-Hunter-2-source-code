; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003672c0, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSet
; alias: _ZNK11AnimatorSet7getTypeEv
; demangled: AnimatorSet::getType() const
; decoder-mode: arm
003672c0  0d 00 a0 e3                                      mov r0, #0xd
003672c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003672c8, declared_size=112, range_size=112, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSet17_HandleAnimEndingEPN6glitch5scene19ITimelineControllerE
; demangled: AnimatorSet::_HandleAnimEnding(glitch::scene::ITimelineController*)
; decoder-mode: arm
003672c8  70 40 2d e9                                      push {r4, r5, r6, lr}
003672cc  00 40 51 e2                                      subs r4, r1, #0
003672d0  00 50 a0 e1                                      mov r5, r0
003672d4  14 00 00 0a                                      beq #0x36732c
003672d8  11 13 a0 e3                                      mov r1, #0x44000000
003672dc  7a 18 81 e2                                      add r1, r1, #0x7a0000
003672e0  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003672e4  a0 9e fe eb                                      bl #0x30ed6c
003672e8  77 9c fe eb                                      bl #0x30e4cc
003672ec  11 13 a0 e3                                      mov r1, #0x44000000
003672f0  00 60 a0 e1                                      mov r6, r0
003672f4  7a 18 81 e2                                      add r1, r1, #0x7a0000
003672f8  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
003672fc  9a 9e fe eb                                      bl #0x30ed6c
00367300  71 9c fe eb                                      bl #0x30e4cc
00367304  04 30 94 e5                                      ldr r3, [r4, #4]
00367308  00 00 63 e0                                      rsb r0, r3, r0
0036730c  06 00 50 e1                                      cmp r0, r6
00367310  00 30 a0 a3                                      movge r3, #0
00367314  01 30 a0 b3                                      movlt r3, #1
00367318  00 00 50 e3                                      cmp r0, #0
0036731c  00 30 a0 b3                                      movlt r3, #0
00367320  00 00 53 e3                                      cmp r3, #0
00367324  06 30 60 10                                      rsbne r3, r0, r6
00367328  68 30 85 e5                                      str r3, [r5, #0x68]
0036732c  01 30 a0 e3                                      mov r3, #1
00367330  88 30 c5 e5                                      strb r3, [r5, #0x88]
00367334  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00367338, declared_size=16, range_size=16, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSet7_CBAnimEPN6glitch5scene19ITimelineControllerEPv
; demangled: AnimatorSet::_CBAnim(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
00367338  00 30 a0 e1                                      mov r3, r0
0036733c  01 00 a0 e1                                      mov r0, r1
00367340  03 10 a0 e1                                      mov r1, r3
00367344  df ff ff ea                                      b #0x3672c8

; FUNCTION 0x00367368, declared_size=20, range_size=20, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSet22computeAnimationValuesEj
; demangled: AnimatorSet::computeAnimationValues(unsigned int)
; decoder-mode: arm
00367368  98 30 90 e5                                      ldr r3, [r0, #0x98]
0036736c  00 00 53 e3                                      cmp r3, #0
00367370  20 30 93 15                                      ldrne r3, [r3, #0x20]
00367374  50 30 80 e5                                      str r3, [r0, #0x50]
00367378  97 e0 0b ea                                      b #0x65f5dc

; FUNCTION 0x0036737c, declared_size=20, range_size=20, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSet20applyAnimationValuesEj
; demangled: AnimatorSet::applyAnimationValues(unsigned int)
; decoder-mode: arm
0036737c  98 30 90 e5                                      ldr r3, [r0, #0x98]
00367380  00 00 53 e3                                      cmp r3, #0
00367384  20 30 93 15                                      ldrne r3, [r3, #0x20]
00367388  50 30 80 e5                                      str r3, [r0, #0x50]
0036738c  21 e0 0b ea                                      b #0x65f418

; FUNCTION 0x00367390, declared_size=20, range_size=20, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSet17getAnimationValueEiiPv
; demangled: AnimatorSet::getAnimationValue(int, int, void*)
; decoder-mode: arm
00367390  98 c0 90 e5                                      ldr ip, [r0, #0x98]
00367394  00 00 5c e3                                      cmp ip, #0
00367398  20 c0 9c 15                                      ldrne ip, [ip, #0x20]
0036739c  50 c0 80 e5                                      str ip, [r0, #0x50]
003673a0  03 e1 0b ea                                      b #0x65f7b4

; FUNCTION 0x003673a4, declared_size=64, range_size=64, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSet11animateNodeEPN6glitch5scene10ISceneNodeEj
; demangled: AnimatorSet::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
003673a4  70 40 2d e9                                      push {r4, r5, r6, lr}
003673a8  02 60 a0 e1                                      mov r6, r2
003673ac  58 50 80 e2                                      add r5, r0, #0x58
003673b0  00 40 a0 e1                                      mov r4, r0
003673b4  ad df 0b eb                                      bl #0x65f270
003673b8  06 10 a0 e1                                      mov r1, r6
003673bc  05 00 a0 e1                                      mov r0, r5
003673c0  88 f4 ff eb                                      bl #0x3645e8
003673c4  04 00 a0 e1                                      mov r0, r4
003673c8  00 30 94 e5                                      ldr r3, [r4]
003673cc  0f e0 a0 e1                                      mov lr, pc
003673d0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
003673d4  00 10 a0 e1                                      mov r1, r0
003673d8  05 00 a0 e1                                      mov r0, r5
003673dc  70 40 bd e8                                      pop {r4, r5, r6, lr}
003673e0  09 f4 ff ea                                      b #0x36440c

; FUNCTION 0x003673e4, declared_size=60, range_size=60, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSet10updateTimeEj
; demangled: AnimatorSet::updateTime(unsigned int)
; decoder-mode: arm
003673e4  10 40 2d e9                                      push {r4, lr}
003673e8  98 30 90 e5                                      ldr r3, [r0, #0x98]
003673ec  00 40 a0 e1                                      mov r4, r0
003673f0  00 00 53 e3                                      cmp r3, #0
003673f4  20 30 93 15                                      ldrne r3, [r3, #0x20]
003673f8  50 30 80 e5                                      str r3, [r0, #0x50]
003673fc  11 02 0c eb                                      bl #0x667c48
00367400  00 30 94 e5                                      ldr r3, [r4]
00367404  04 00 a0 e1                                      mov r0, r4
00367408  0f e0 a0 e1                                      mov lr, pc
0036740c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00367410  00 10 a0 e1                                      mov r1, r0
00367414  58 00 84 e2                                      add r0, r4, #0x58
00367418  10 40 bd e8                                      pop {r4, lr}
0036741c  fa f3 ff ea                                      b #0x36440c

; FUNCTION 0x00367420, declared_size=100, range_size=100, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSet19setCurrentAnimationEi
; demangled: AnimatorSet::setCurrentAnimation(int)
; decoder-mode: arm
00367420  70 40 2d e9                                      push {r4, r5, r6, lr}
00367424  00 40 a0 e1                                      mov r4, r0
00367428  94 00 90 e5                                      ldr r0, [r0, #0x94]
0036742c  01 50 a0 e1                                      mov r5, r1
00367430  ef f5 ff eb                                      bl #0x364bf4
00367434  20 30 90 e5                                      ldr r3, [r0, #0x20]
00367438  01 00 73 e3                                      cmn r3, #1
0036743c  0f 00 00 0a                                      beq #0x367480
00367440  24 20 90 e5                                      ldr r2, [r0, #0x24]
00367444  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
00367448  05 10 a0 e1                                      mov r1, r5
0036744c  01 20 82 e2                                      add r2, r2, #1
00367450  01 30 83 e2                                      add r3, r3, #1
00367454  24 20 80 e5                                      str r2, [r0, #0x24]
00367458  2c 30 80 e5                                      str r3, [r0, #0x2c]
0036745c  98 30 94 e5                                      ldr r3, [r4, #0x98]
00367460  98 00 84 e5                                      str r0, [r4, #0x98]
00367464  04 00 a0 e1                                      mov r0, r4
00367468  00 00 53 e3                                      cmp r3, #0
0036746c  24 20 93 15                                      ldrne r2, [r3, #0x24]
00367470  01 20 42 12                                      subne r2, r2, #1
00367474  24 20 83 15                                      strne r2, [r3, #0x24]
00367478  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036747c  11 e1 0b ea                                      b #0x65f8c8
00367480  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00367484, declared_size=40, range_size=40, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSet8onUnbindEPN6glitch5scene10ISceneNodeE
; demangled: AnimatorSet::onUnbind(glitch::scene::ISceneNode*)
; decoder-mode: arm
00367484  70 40 2d e9                                      push {r4, r5, r6, lr}
00367488  00 40 a0 e1                                      mov r4, r0
0036748c  01 50 a0 e1                                      mov r5, r1
00367490  58 00 80 e2                                      add r0, r0, #0x58
00367494  00 10 a0 e3                                      mov r1, #0
00367498  a7 f4 ff eb                                      bl #0x36473c
0036749c  04 00 a0 e1                                      mov r0, r4
003674a0  05 10 a0 e1                                      mov r1, r5
003674a4  70 40 bd e8                                      pop {r4, r5, r6, lr}
003674a8  3b 02 0c ea                                      b #0x667d9c

; FUNCTION 0x003674ac, declared_size=100, range_size=100, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSet19SetCurrentAnimationEi
; demangled: AnimatorSet::SetCurrentAnimation(int)
; decoder-mode: arm
003674ac  70 40 2d e9                                      push {r4, r5, r6, lr}
003674b0  00 50 a0 e1                                      mov r5, r0
003674b4  94 00 90 e5                                      ldr r0, [r0, #0x94]
003674b8  0d fb ff eb                                      bl #0x3660f4
003674bc  00 40 a0 e1                                      mov r4, r0
003674c0  20 00 90 e5                                      ldr r0, [r0, #0x20]
003674c4  01 00 70 e3                                      cmn r0, #1
003674c8  0f 00 00 0a                                      beq #0x36750c
003674cc  24 20 94 e5                                      ldr r2, [r4, #0x24]
003674d0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
003674d4  05 00 a0 e1                                      mov r0, r5
003674d8  01 20 82 e2                                      add r2, r2, #1
003674dc  01 30 83 e2                                      add r3, r3, #1
003674e0  24 20 84 e5                                      str r2, [r4, #0x24]
003674e4  2c 30 84 e5                                      str r3, [r4, #0x2c]
003674e8  98 30 95 e5                                      ldr r3, [r5, #0x98]
003674ec  98 40 85 e5                                      str r4, [r5, #0x98]
003674f0  00 00 53 e3                                      cmp r3, #0
003674f4  24 20 93 15                                      ldrne r2, [r3, #0x24]
003674f8  01 20 42 12                                      subne r2, r2, #1
003674fc  24 20 83 15                                      strne r2, [r3, #0x24]
00367500  20 10 94 e5                                      ldr r1, [r4, #0x20]
00367504  ef e0 0b eb                                      bl #0x65f8c8
00367508  20 00 94 e5                                      ldr r0, [r4, #0x20]
0036750c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00367510, declared_size=120, range_size=120, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSet12SetCallbacksEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
; demangled: AnimatorSet::SetCallbacks(void (*)(glitch::scene::ITimelineController*, void*), void*, void (*)(glitch::collada::STriggeredEvent const&, void*), void*)
; decoder-mode: arm
00367510  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00367514  00 40 a0 e1                                      mov r4, r0
00367518  18 00 90 e5                                      ldr r0, [r0, #0x18]
0036751c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00367520  1c 30 84 e5                                      str r3, [r4, #0x1c]
00367524  00 00 50 e3                                      cmp r0, #0
00367528  20 c0 84 e5                                      str ip, [r4, #0x20]
0036752c  0c c0 80 15                                      strne ip, [r0, #0xc]
00367530  08 30 80 15                                      strne r3, [r0, #8]
00367534  00 30 94 e5                                      ldr r3, [r4]
00367538  04 00 a0 e1                                      mov r0, r4
0036753c  01 70 a0 e1                                      mov r7, r1
00367540  02 60 a0 e1                                      mov r6, r2
00367544  0f e0 a0 e1                                      mov lr, pc
00367548  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0036754c  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
00367550  00 00 50 e3                                      cmp r0, #0
00367554  05 50 8f e0                                      add r5, pc, r5
00367558  03 00 00 0a                                      beq #0x36756c
0036755c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00367560  0c 40 80 e5                                      str r4, [r0, #0xc]
00367564  03 30 95 e7                                      ldr r3, [r5, r3]
00367568  08 30 80 e5                                      str r3, [r0, #8]
0036756c  58 00 84 e2                                      add r0, r4, #0x58
00367570  07 10 a0 e1                                      mov r1, r7
00367574  06 20 a0 e1                                      mov r2, r6
00367578  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0036757c  9f f3 ff ea                                      b #0x364400
; mapping-symbol data/literal pool
00367580  3c d5 62 00 b0 06 00 00                          .byte 0x3c, 0xd5, 0x62, 0x00, 0xb0, 0x06, 0x00, 0x00

; FUNCTION 0x00367588, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSet
; alias: _ZThn4_N11AnimatorSetD1Ev
; demangled: non-virtual thunk to AnimatorSet::~AnimatorSet()
; decoder-mode: arm
00367588  04 00 40 e2                                      sub r0, r0, #4
0036758c  ff ff ff ea                                      b #0x367590

; FUNCTION 0x00367590, declared_size=132, range_size=132, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSetD1Ev
; demangled: AnimatorSet::~AnimatorSet()
; decoder-mode: arm
00367590  70 40 2d e9                                      push {r4, r5, r6, lr}
00367594  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
00367598  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0036759c  98 20 90 e5                                      ldr r2, [r0, #0x98]
003675a0  05 50 8f e0                                      add r5, pc, r5
003675a4  03 30 95 e7                                      ldr r3, [r5, r3]
003675a8  00 40 a0 e1                                      mov r4, r0
003675ac  00 00 52 e3                                      cmp r2, #0
003675b0  0c 00 83 e2                                      add r0, r3, #0xc
003675b4  a4 10 83 e2                                      add r1, r3, #0xa4
003675b8  c0 30 83 e2                                      add r3, r3, #0xc0
003675bc  00 00 84 e5                                      str r0, [r4]
003675c0  9c 30 84 e5                                      str r3, [r4, #0x9c]
003675c4  04 10 84 e5                                      str r1, [r4, #4]
003675c8  24 30 92 15                                      ldrne r3, [r2, #0x24]
003675cc  01 30 43 12                                      subne r3, r3, #1
003675d0  24 30 82 15                                      strne r3, [r2, #0x24]
003675d4  94 00 94 e5                                      ldr r0, [r4, #0x94]
003675d8  00 00 50 e3                                      cmp r0, #0
003675dc  00 00 00 0a                                      beq #0x3675e4
003675e0  e7 d7 fe eb                                      bl #0x31d584
003675e4  58 00 84 e2                                      add r0, r4, #0x58
003675e8  92 f4 ff eb                                      bl #0x364838
003675ec  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
003675f0  04 00 a0 e1                                      mov r0, r4
003675f4  01 10 95 e7                                      ldr r1, [r5, r1]
003675f8  04 10 81 e2                                      add r1, r1, #4
003675fc  4a e1 0b eb                                      bl #0x65fb2c
00367600  04 00 a0 e1                                      mov r0, r4
00367604  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00367608  f0 d4 62 00 4c 1a 00 00 d4 19 00 00              .byte 0xf0, 0xd4, 0x62, 0x00, 0x4c, 0x1a, 0x00, 0x00, 0xd4, 0x19, 0x00, 0x00

; FUNCTION 0x00367614, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSet
; alias: _ZThn4_N11AnimatorSetD0Ev
; demangled: non-virtual thunk to AnimatorSet::~AnimatorSet()
; decoder-mode: arm
00367614  04 00 40 e2                                      sub r0, r0, #4
00367618  ff ff ff ea                                      b #0x36761c

; FUNCTION 0x0036761c, declared_size=28, range_size=28, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSetD0Ev
; demangled: AnimatorSet::~AnimatorSet()
; decoder-mode: arm
0036761c  10 40 2d e9                                      push {r4, lr}
00367620  00 40 a0 e1                                      mov r4, r0
00367624  d9 ff ff eb                                      bl #0x367590
00367628  04 00 a0 e1                                      mov r0, r4
0036762c  83 a3 fe eb                                      bl #0x310440
00367630  04 00 a0 e1                                      mov r0, r4
00367634  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00367638, declared_size=128, range_size=128, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSetD2Ev
; demangled: AnimatorSet::~AnimatorSet()
; decoder-mode: arm
00367638  70 40 2d e9                                      push {r4, r5, r6, lr}
0036763c  00 30 91 e5                                      ldr r3, [r1]
00367640  01 50 a0 e1                                      mov r5, r1
00367644  64 20 9f e5                                      ldr r2, [pc, #0x64]
00367648  00 30 80 e5                                      str r3, [r0]
0036764c  00 40 a0 e1                                      mov r4, r0
00367650  0c 10 13 e5                                      ldr r1, [r3, #-0xc]
00367654  24 00 95 e5                                      ldr r0, [r5, #0x24]
00367658  54 30 9f e5                                      ldr r3, [pc, #0x54]
0036765c  02 20 8f e0                                      add r2, pc, r2
00367660  01 00 84 e7                                      str r0, [r4, r1]
00367664  03 30 92 e7                                      ldr r3, [r2, r3]
00367668  98 10 94 e5                                      ldr r1, [r4, #0x98]
0036766c  a4 30 83 e2                                      add r3, r3, #0xa4
00367670  00 00 51 e3                                      cmp r1, #0
00367674  04 30 84 e5                                      str r3, [r4, #4]
00367678  24 30 91 15                                      ldrne r3, [r1, #0x24]
0036767c  01 30 43 12                                      subne r3, r3, #1
00367680  24 30 81 15                                      strne r3, [r1, #0x24]
00367684  94 00 94 e5                                      ldr r0, [r4, #0x94]
00367688  00 00 50 e3                                      cmp r0, #0
0036768c  00 00 00 0a                                      beq #0x367694
00367690  bb d7 fe eb                                      bl #0x31d584
00367694  58 00 84 e2                                      add r0, r4, #0x58
00367698  66 f4 ff eb                                      bl #0x364838
0036769c  04 00 a0 e1                                      mov r0, r4
003676a0  04 10 85 e2                                      add r1, r5, #4
003676a4  20 e1 0b eb                                      bl #0x65fb2c
003676a8  04 00 a0 e1                                      mov r0, r4
003676ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003676b0  34 d4 62 00 4c 1a 00 00                          .byte 0x34, 0xd4, 0x62, 0x00, 0x4c, 0x1a, 0x00, 0x00

; FUNCTION 0x003676b8, declared_size=216, range_size=216, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSetC1ERKN5boost13intrusive_ptrI12AnimationSetEE
; demangled: AnimatorSet::AnimatorSet(boost::intrusive_ptr<AnimationSet> const&)
; decoder-mode: arm
003676b8  70 40 2d e9                                      push {r4, r5, r6, lr}
003676bc  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
003676c0  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
003676c4  01 20 a0 e3                                      mov r2, #1
003676c8  05 50 8f e0                                      add r5, pc, r5
003676cc  03 30 95 e7                                      ldr r3, [r5, r3]
003676d0  a0 20 80 e5                                      str r2, [r0, #0xa0]
003676d4  08 d0 4d e2                                      sub sp, sp, #8
003676d8  08 30 83 e2                                      add r3, r3, #8
003676dc  9c 30 80 e5                                      str r3, [r0, #0x9c]
003676e0  00 30 91 e5                                      ldr r3, [r1]
003676e4  01 60 a0 e1                                      mov r6, r1
003676e8  98 10 9f e5                                      ldr r1, [pc, #0x98]
003676ec  20 30 93 e5                                      ldr r3, [r3, #0x20]
003676f0  00 40 a0 e1                                      mov r4, r0
003676f4  01 10 95 e7                                      ldr r1, [r5, r1]
003676f8  00 00 53 e3                                      cmp r3, #0
003676fc  04 30 8d e5                                      str r3, [sp, #4]
00367700  04 20 93 15                                      ldrne r2, [r3, #4]
00367704  04 10 81 e2                                      add r1, r1, #4
00367708  01 20 82 12                                      addne r2, r2, #1
0036770c  04 20 83 15                                      strne r2, [r3, #4]
00367710  04 20 8d e2                                      add r2, sp, #4
00367714  72 e5 0b eb                                      bl #0x660ce4
00367718  04 00 9d e5                                      ldr r0, [sp, #4]
0036771c  00 00 50 e3                                      cmp r0, #0
00367720  00 00 00 0a                                      beq #0x367728
00367724  96 d7 fe eb                                      bl #0x31d584
00367728  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0036772c  58 00 84 e2                                      add r0, r4, #0x58
00367730  04 10 a0 e1                                      mov r1, r4
00367734  03 30 95 e7                                      ldr r3, [r5, r3]
00367738  a4 20 83 e2                                      add r2, r3, #0xa4
0036773c  0c c0 83 e2                                      add ip, r3, #0xc
00367740  c0 30 83 e2                                      add r3, r3, #0xc0
00367744  04 20 84 e5                                      str r2, [r4, #4]
00367748  9c 30 84 e5                                      str r3, [r4, #0x9c]
0036774c  00 c0 84 e5                                      str ip, [r4]
00367750  10 f3 ff eb                                      bl #0x364398
00367754  00 30 96 e5                                      ldr r3, [r6]
00367758  04 00 a0 e1                                      mov r0, r4
0036775c  00 00 53 e3                                      cmp r3, #0
00367760  94 30 84 e5                                      str r3, [r4, #0x94]
00367764  04 20 93 15                                      ldrne r2, [r3, #4]
00367768  01 20 82 12                                      addne r2, r2, #1
0036776c  04 20 83 15                                      strne r2, [r3, #4]
00367770  00 30 a0 e3                                      mov r3, #0
00367774  98 30 84 e5                                      str r3, [r4, #0x98]
00367778  08 d0 8d e2                                      add sp, sp, #8
0036777c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00367780  c8 d3 62 00 44 2b 00 00 d4 19 00 00 4c 1a 00 00  .byte 0xc8, 0xd3, 0x62, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xd4, 0x19, 0x00, 0x00, 0x4c, 0x1a, 0x00, 0x00

; FUNCTION 0x00367790, declared_size=184, range_size=184, mode=arm
; class-group: AnimatorSet
; alias: _ZN11AnimatorSetC2ERKN5boost13intrusive_ptrI12AnimationSetEE
; demangled: AnimatorSet::AnimatorSet(boost::intrusive_ptr<AnimationSet> const&)
; decoder-mode: arm
00367790  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00367794  00 30 92 e5                                      ldr r3, [r2]
00367798  0c d0 4d e2                                      sub sp, sp, #0xc
0036779c  02 70 a0 e1                                      mov r7, r2
003677a0  20 30 93 e5                                      ldr r3, [r3, #0x20]
003677a4  01 60 a0 e1                                      mov r6, r1
003677a8  04 10 81 e2                                      add r1, r1, #4
003677ac  00 00 53 e3                                      cmp r3, #0
003677b0  04 30 8d e5                                      str r3, [sp, #4]
003677b4  04 20 93 15                                      ldrne r2, [r3, #4]
003677b8  00 40 a0 e1                                      mov r4, r0
003677bc  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
003677c0  01 20 82 12                                      addne r2, r2, #1
003677c4  04 20 83 15                                      strne r2, [r3, #4]
003677c8  04 20 8d e2                                      add r2, sp, #4
003677cc  44 e5 0b eb                                      bl #0x660ce4
003677d0  04 00 9d e5                                      ldr r0, [sp, #4]
003677d4  05 50 8f e0                                      add r5, pc, r5
003677d8  00 00 50 e3                                      cmp r0, #0
003677dc  00 00 00 0a                                      beq #0x3677e4
003677e0  67 d7 fe eb                                      bl #0x31d584
003677e4  00 20 96 e5                                      ldr r2, [r6]
003677e8  54 30 9f e5                                      ldr r3, [pc, #0x54]
003677ec  58 00 84 e2                                      add r0, r4, #0x58
003677f0  00 20 84 e5                                      str r2, [r4]
003677f4  03 30 95 e7                                      ldr r3, [r5, r3]
003677f8  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
003677fc  24 c0 96 e5                                      ldr ip, [r6, #0x24]
00367800  a4 30 83 e2                                      add r3, r3, #0xa4
00367804  04 10 a0 e1                                      mov r1, r4
00367808  02 c0 84 e7                                      str ip, [r4, r2]
0036780c  04 30 84 e5                                      str r3, [r4, #4]
00367810  e0 f2 ff eb                                      bl #0x364398
00367814  00 30 97 e5                                      ldr r3, [r7]
00367818  04 00 a0 e1                                      mov r0, r4
0036781c  00 00 53 e3                                      cmp r3, #0
00367820  94 30 84 e5                                      str r3, [r4, #0x94]
00367824  04 20 93 15                                      ldrne r2, [r3, #4]
00367828  01 20 82 12                                      addne r2, r2, #1
0036782c  04 20 83 15                                      strne r2, [r3, #4]
00367830  00 30 a0 e3                                      mov r3, #0
00367834  98 30 84 e5                                      str r3, [r4, #0x98]
00367838  0c d0 8d e2                                      add sp, sp, #0xc
0036783c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00367840  bc d2 62 00 4c 1a 00 00                          .byte 0xbc, 0xd2, 0x62, 0x00, 0x4c, 0x1a, 0x00, 0x00

; FUNCTION 0x00367848, declared_size=16, range_size=16, mode=arm
; class-group: AnimatorSet
; alias: _ZTv0_n12_N11AnimatorSetD0Ev
; demangled: virtual thunk to AnimatorSet::~AnimatorSet()
; decoder-mode: arm
00367848  00 30 90 e5                                      ldr r3, [r0]
0036784c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00367850  03 00 80 e0                                      add r0, r0, r3
00367854  70 ff ff ea                                      b #0x36761c

; FUNCTION 0x00367858, declared_size=16, range_size=16, mode=arm
; class-group: AnimatorSet
; alias: _ZTv0_n12_N11AnimatorSetD1Ev
; demangled: virtual thunk to AnimatorSet::~AnimatorSet()
; decoder-mode: arm
00367858  00 30 90 e5                                      ldr r3, [r0]
0036785c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00367860  03 00 80 e0                                      add r0, r0, r3
00367864  49 ff ff ea                                      b #0x367590
