; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00599798, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimator10updateTimeEj
; demangled: glitch::scene::ISceneNodeAnimator::updateTime(unsigned int)
; decoder-mode: arm
00599798  1e ff 2f e1                                      bx lr

; FUNCTION 0x0059979c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZNK6glitch5scene18ISceneNodeAnimator22isEventReceiverEnabledEv
; demangled: glitch::scene::ISceneNodeAnimator::isEventReceiverEnabled() const
; decoder-mode: arm
0059979c  00 00 a0 e3                                      mov r0, #0
005997a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005997a4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZThn4_N6glitch5scene18ISceneNodeAnimator7onEventERKNS_6SEventE
; demangled: non-virtual thunk to glitch::scene::ISceneNodeAnimator::onEvent(glitch::SEvent const&)
; decoder-mode: arm
005997a4  04 00 40 e2                                      sub r0, r0, #4
005997a8  ff ff ff ea                                      b #0x5997ac

; FUNCTION 0x005997ac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimator7onEventERKNS_6SEventE
; demangled: glitch::scene::ISceneNodeAnimator::onEvent(glitch::SEvent const&)
; decoder-mode: arm
005997ac  00 00 a0 e3                                      mov r0, #0
005997b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005997b4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZNK6glitch5scene18ISceneNodeAnimator7getTypeEv
; demangled: glitch::scene::ISceneNodeAnimator::getType() const
; decoder-mode: arm
005997b4  0a 00 a0 e3                                      mov r0, #0xa
005997b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005997bc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimator6onBindEPNS0_10ISceneNodeE
; demangled: glitch::scene::ISceneNodeAnimator::onBind(glitch::scene::ISceneNode*)
; decoder-mode: arm
005997bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005997c0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimator8onUnbindEPNS0_10ISceneNodeE
; demangled: glitch::scene::ISceneNodeAnimator::onUnbind(glitch::scene::ISceneNode*)
; decoder-mode: arm
005997c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005997c4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimator16setAnimationClipEi
; demangled: glitch::scene::ISceneNodeAnimator::setAnimationClip(int)
; decoder-mode: arm
005997c4  10 40 2d e9                                      push {r4, lr}
005997c8  08 30 90 e5                                      ldr r3, [r0, #8]
005997cc  03 00 a0 e1                                      mov r0, r3
005997d0  00 30 93 e5                                      ldr r3, [r3]
005997d4  0f e0 a0 e1                                      mov lr, pc
005997d8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005997dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005997e0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimator16setAnimationClipEPKc
; demangled: glitch::scene::ISceneNodeAnimator::setAnimationClip(char const*)
; decoder-mode: arm
005997e0  10 40 2d e9                                      push {r4, lr}
005997e4  08 30 90 e5                                      ldr r3, [r0, #8]
005997e8  03 00 a0 e1                                      mov r0, r3
005997ec  00 30 93 e5                                      ldr r3, [r3]
005997f0  0f e0 a0 e1                                      mov lr, pc
005997f4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005997f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005997fc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimator21getAnimationClipIndexEPKc
; demangled: glitch::scene::ISceneNodeAnimator::getAnimationClipIndex(char const*)
; decoder-mode: arm
005997fc  10 40 2d e9                                      push {r4, lr}
00599800  08 30 90 e5                                      ldr r3, [r0, #8]
00599804  03 00 a0 e1                                      mov r0, r3
00599808  00 30 93 e5                                      ldr r3, [r3]
0059980c  0f e0 a0 e1                                      mov lr, pc
00599810  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00599814  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00599818, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimator15setTimelineCtrlEPNS0_19ITimelineControllerE
; demangled: glitch::scene::ISceneNodeAnimator::setTimelineCtrl(glitch::scene::ITimelineController*)
; decoder-mode: arm
00599818  70 40 2d e9                                      push {r4, r5, r6, lr}
0059981c  08 30 90 e5                                      ldr r3, [r0, #8]
00599820  00 40 a0 e1                                      mov r4, r0
00599824  01 50 a0 e1                                      mov r5, r1
00599828  00 00 53 e3                                      cmp r3, #0
0059982c  03 00 00 0a                                      beq #0x599840
00599830  00 20 93 e5                                      ldr r2, [r3]
00599834  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00599838  00 00 83 e0                                      add r0, r3, r0
0059983c  50 0f f6 eb                                      bl #0x31d584
00599840  00 00 55 e3                                      cmp r5, #0
00599844  08 50 84 e5                                      str r5, [r4, #8]
00599848  05 00 00 0a                                      beq #0x599864
0059984c  00 30 95 e5                                      ldr r3, [r5]
00599850  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00599854  03 50 85 e0                                      add r5, r5, r3
00599858  04 30 95 e5                                      ldr r3, [r5, #4]
0059985c  01 30 83 e2                                      add r3, r3, #1
00599860  04 30 85 e5                                      str r3, [r5, #4]
00599864  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00599868, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZNK6glitch5scene18ISceneNodeAnimator15getTimelineCtrlEv
; demangled: glitch::scene::ISceneNodeAnimator::getTimelineCtrl() const
; decoder-mode: arm
00599868  08 00 90 e5                                      ldr r0, [r0, #8]
0059986c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00599870, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimator15getTimelineCtrlEv
; demangled: glitch::scene::ISceneNodeAnimator::getTimelineCtrl()
; decoder-mode: arm
00599870  08 00 90 e5                                      ldr r0, [r0, #8]
00599874  1e ff 2f e1                                      bx lr

; FUNCTION 0x00599878, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZNK6glitch5scene18ISceneNodeAnimator9getLengthEv
; demangled: glitch::scene::ISceneNodeAnimator::getLength() const
; decoder-mode: arm
00599878  00 00 a0 e3                                      mov r0, #0
0059987c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00599880, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimator22computeAnimationValuesEj
; demangled: glitch::scene::ISceneNodeAnimator::computeAnimationValues(unsigned int)
; decoder-mode: arm
00599880  1e ff 2f e1                                      bx lr

; FUNCTION 0x00599884, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimator20applyAnimationValuesEj
; demangled: glitch::scene::ISceneNodeAnimator::applyAnimationValues(unsigned int)
; decoder-mode: arm
00599884  1e ff 2f e1                                      bx lr

; FUNCTION 0x005998a8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZThn4_N6glitch5scene18ISceneNodeAnimatorD1Ev
; demangled: non-virtual thunk to glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator()
; decoder-mode: arm
005998a8  04 00 40 e2                                      sub r0, r0, #4
005998ac  ff ff ff ea                                      b #0x5998b0

; FUNCTION 0x005998b0, declared_size=100, range_size=100, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimatorD1Ev
; demangled: glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator()
; decoder-mode: arm
005998b0  10 40 2d e9                                      push {r4, lr}
005998b4  50 20 9f e5                                      ldr r2, [pc, #0x50]
005998b8  50 30 9f e5                                      ldr r3, [pc, #0x50]
005998bc  08 10 90 e5                                      ldr r1, [r0, #8]
005998c0  02 20 8f e0                                      add r2, pc, r2
005998c4  03 30 92 e7                                      ldr r3, [r2, r3]
005998c8  00 40 a0 e1                                      mov r4, r0
005998cc  00 00 51 e3                                      cmp r1, #0
005998d0  68 20 83 e2                                      add r2, r3, #0x68
005998d4  0c 00 83 e2                                      add r0, r3, #0xc
005998d8  84 30 83 e2                                      add r3, r3, #0x84
005998dc  00 00 84 e5                                      str r0, [r4]
005998e0  0c 30 84 e5                                      str r3, [r4, #0xc]
005998e4  04 20 84 e5                                      str r2, [r4, #4]
005998e8  03 00 00 0a                                      beq #0x5998fc
005998ec  00 30 91 e5                                      ldr r3, [r1]
005998f0  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
005998f4  00 00 81 e0                                      add r0, r1, r0
005998f8  21 0f f6 eb                                      bl #0x31d584
005998fc  04 00 a0 e1                                      mov r0, r4
00599900  23 1e 04 eb                                      bl #0x6a1194
00599904  04 00 a0 e1                                      mov r0, r4
00599908  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0059990c  d0 b1 3f 00 08 23 00 00                          .byte 0xd0, 0xb1, 0x3f, 0x00, 0x08, 0x23, 0x00, 0x00

; FUNCTION 0x00599914, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZThn4_N6glitch5scene18ISceneNodeAnimatorD0Ev
; demangled: non-virtual thunk to glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator()
; decoder-mode: arm
00599914  04 00 40 e2                                      sub r0, r0, #4
00599918  ff ff ff ea                                      b #0x59991c

; FUNCTION 0x0059991c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimatorD0Ev
; demangled: glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator()
; decoder-mode: arm
0059991c  10 40 2d e9                                      push {r4, lr}
00599920  00 40 a0 e1                                      mov r4, r0
00599924  e1 ff ff eb                                      bl #0x5998b0
00599928  04 00 a0 e1                                      mov r0, r4
0059992c  5f d2 f5 eb                                      bl #0x30e2b0
00599930  04 00 a0 e1                                      mov r0, r4
00599934  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00599938, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZN6glitch5scene18ISceneNodeAnimatorD2Ev
; demangled: glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator()
; decoder-mode: arm
00599938  10 40 2d e9                                      push {r4, lr}
0059993c  00 30 91 e5                                      ldr r3, [r1]
00599940  00 40 a0 e1                                      mov r4, r0
00599944  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00599948  00 30 80 e5                                      str r3, [r0]
0059994c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00599950  0c 10 91 e5                                      ldr r1, [r1, #0xc]
00599954  40 30 9f e5                                      ldr r3, [pc, #0x40]
00599958  02 20 8f e0                                      add r2, pc, r2
0059995c  00 10 84 e7                                      str r1, [r4, r0]
00599960  03 30 92 e7                                      ldr r3, [r2, r3]
00599964  08 10 94 e5                                      ldr r1, [r4, #8]
00599968  68 30 83 e2                                      add r3, r3, #0x68
0059996c  00 00 51 e3                                      cmp r1, #0
00599970  04 30 84 e5                                      str r3, [r4, #4]
00599974  03 00 00 0a                                      beq #0x599988
00599978  00 30 91 e5                                      ldr r3, [r1]
0059997c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00599980  00 00 81 e0                                      add r0, r1, r0
00599984  fe 0e f6 eb                                      bl #0x31d584
00599988  04 00 a0 e1                                      mov r0, r4
0059998c  00 1e 04 eb                                      bl #0x6a1194
00599990  04 00 a0 e1                                      mov r0, r4
00599994  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00599998  38 b1 3f 00 08 23 00 00                          .byte 0x38, 0xb1, 0x3f, 0x00, 0x08, 0x23, 0x00, 0x00

; FUNCTION 0x005999a0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZTv0_n12_N6glitch5scene18ISceneNodeAnimatorD0Ev
; demangled: virtual thunk to glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator()
; decoder-mode: arm
005999a0  00 30 90 e5                                      ldr r3, [r0]
005999a4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005999a8  03 00 80 e0                                      add r0, r0, r3
005999ac  da ff ff ea                                      b #0x59991c

; FUNCTION 0x005999b0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNodeAnimator
; alias: _ZTv0_n12_N6glitch5scene18ISceneNodeAnimatorD1Ev
; demangled: virtual thunk to glitch::scene::ISceneNodeAnimator::~ISceneNodeAnimator()
; decoder-mode: arm
005999b0  00 30 90 e5                                      ldr r3, [r0]
005999b4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005999b8  03 00 80 e0                                      add r0, r0, r3
005999bc  bb ff ff ea                                      b #0x5998b0
