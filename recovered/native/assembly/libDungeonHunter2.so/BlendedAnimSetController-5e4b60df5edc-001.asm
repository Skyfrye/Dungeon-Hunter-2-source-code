; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00476680, declared_size=8, range_size=8, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZNK24BlendedAnimSetController7HasClipEPKcj
; demangled: BlendedAnimSetController::HasClip(char const*, unsigned int) const
; decoder-mode: arm
00476680  00 00 a0 e3                                      mov r0, #0
00476684  1e ff 2f e1                                      bx lr

; FUNCTION 0x00476688, declared_size=8, range_size=8, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZNK24BlendedAnimSetController15GetClipDurationEj
; demangled: BlendedAnimSetController::GetClipDuration(unsigned int) const
; decoder-mode: arm
00476688  00 00 e0 e3                                      mvn r0, #0
0047668c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00476690, declared_size=8, range_size=8, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZN24BlendedAnimSetController8PlayClipEPKcbij
; demangled: BlendedAnimSetController::PlayClip(char const*, bool, int, unsigned int)
; decoder-mode: arm
00476690  00 00 a0 e3                                      mov r0, #0
00476694  1e ff 2f e1                                      bx lr

; FUNCTION 0x00476698, declared_size=100, range_size=100, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZN24BlendedAnimSetController15GetAnimationSetEv
; demangled: BlendedAnimSetController::GetAnimationSet()
; decoder-mode: arm
00476698  10 40 2d e9                                      push {r4, lr}
0047669c  00 40 a0 e1                                      mov r4, r0
004766a0  01 00 a0 e1                                      mov r0, r1
004766a4  00 10 a0 e3                                      mov r1, #0
004766a8  82 f8 ff eb                                      bl #0x4748b8
004766ac  00 00 50 e3                                      cmp r0, #0
004766b0  0d 00 00 0a                                      beq #0x4766ec
004766b4  28 30 90 e5                                      ldr r3, [r0, #0x28]
004766b8  70 20 90 e5                                      ldr r2, [r0, #0x70]
004766bc  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
004766c0  00 00 53 e3                                      cmp r3, #0
004766c4  08 00 00 0a                                      beq #0x4766ec
004766c8  94 30 93 e5                                      ldr r3, [r3, #0x94]
004766cc  00 00 53 e3                                      cmp r3, #0
004766d0  00 30 84 e5                                      str r3, [r4]
004766d4  02 00 00 0a                                      beq #0x4766e4
004766d8  04 20 93 e5                                      ldr r2, [r3, #4]
004766dc  01 20 82 e2                                      add r2, r2, #1
004766e0  04 20 83 e5                                      str r2, [r3, #4]
004766e4  04 00 a0 e1                                      mov r0, r4
004766e8  10 80 bd e8                                      pop {r4, pc}
004766ec  00 30 a0 e3                                      mov r3, #0
004766f0  00 30 84 e5                                      str r3, [r4]
004766f4  04 00 a0 e1                                      mov r0, r4
004766f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004766fc, declared_size=64, range_size=64, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZN24BlendedAnimSetController12SetCallbacksEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
; demangled: BlendedAnimSetController::SetCallbacks(void (*)(glitch::scene::ITimelineController*, void*), void*, void (*)(glitch::collada::STriggeredEvent const&, void*), void*)
; decoder-mode: arm
004766fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00476700  01 50 a0 e1                                      mov r5, r1
00476704  00 10 a0 e3                                      mov r1, #0
00476708  02 70 a0 e1                                      mov r7, r2
0047670c  03 60 a0 e1                                      mov r6, r3
00476710  18 40 9d e5                                      ldr r4, [sp, #0x18]
00476714  67 f8 ff eb                                      bl #0x4748b8
00476718  00 00 50 e3                                      cmp r0, #0
0047671c  05 00 00 0a                                      beq #0x476738
00476720  05 10 a0 e1                                      mov r1, r5
00476724  07 20 a0 e1                                      mov r2, r7
00476728  06 30 a0 e1                                      mov r3, r6
0047672c  18 40 8d e5                                      str r4, [sp, #0x18]
00476730  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00476734  df c1 fb ea                                      b #0x366eb8
00476738  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0047673c, declared_size=68, range_size=68, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZN24BlendedAnimSetController8SetScaleEfj
; demangled: BlendedAnimSetController::SetScale(float, unsigned int)
; decoder-mode: arm
0047673c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00476740  10 40 2d e9                                      push {r4, lr}
00476744  01 40 a0 e1                                      mov r4, r1
00476748  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0047674c  03 30 8f e0                                      add r3, pc, r3
00476750  01 c0 93 e7                                      ldr ip, [r3, r1]
00476754  00 30 dc e5                                      ldrb r3, [ip]
00476758  00 00 53 e3                                      cmp r3, #0
0047675c  00 00 00 1a                                      bne #0x476764
00476760  10 80 bd e8                                      pop {r4, pc}
00476764  02 10 a0 e1                                      mov r1, r2
00476768  52 f8 ff eb                                      bl #0x4748b8
0047676c  04 10 a0 e1                                      mov r1, r4
00476770  10 40 bd e8                                      pop {r4, lr}
00476774  d7 bf fb ea                                      b #0x3666d8
; mapping-symbol data/literal pool
00476778  44 e3 51 00 ec 3d 00 00                          .byte 0x44, 0xe3, 0x51, 0x00, 0xec, 0x3d, 0x00, 0x00

; FUNCTION 0x00476780, declared_size=140, range_size=140, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZN24BlendedAnimSetController8StopClipEbj
; demangled: BlendedAnimSetController::StopClip(bool, unsigned int)
; decoder-mode: arm
00476780  70 40 2d e9                                      push {r4, r5, r6, lr}
00476784  01 40 a0 e1                                      mov r4, r1
00476788  02 10 a0 e1                                      mov r1, r2
0047678c  49 f8 ff eb                                      bl #0x4748b8
00476790  70 20 90 e5                                      ldr r2, [r0, #0x70]
00476794  28 30 90 e5                                      ldr r3, [r0, #0x28]
00476798  00 60 a0 e1                                      mov r6, r0
0047679c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
004767a0  00 00 53 e3                                      cmp r3, #0
004767a4  15 00 00 0a                                      beq #0x476800
004767a8  03 00 a0 e1                                      mov r0, r3
004767ac  00 30 93 e5                                      ldr r3, [r3]
004767b0  0f e0 a0 e1                                      mov lr, pc
004767b4  44 f0 93 e5                                      ldr pc, [r3, #0x44]
004767b8  00 10 a0 e3                                      mov r1, #0
004767bc  00 50 a0 e1                                      mov r5, r0
004767c0  06 00 a0 e1                                      mov r0, r6
004767c4  c3 bf fb eb                                      bl #0x3666d8
004767c8  00 00 55 e3                                      cmp r5, #0
004767cc  01 00 00 0a                                      beq #0x4767d8
004767d0  00 00 54 e3                                      cmp r4, #0
004767d4  00 00 00 1a                                      bne #0x4767dc
004767d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004767dc  00 30 95 e5                                      ldr r3, [r5]
004767e0  05 00 a0 e1                                      mov r0, r5
004767e4  0c 40 93 e5                                      ldr r4, [r3, #0xc]
004767e8  0f e0 a0 e1                                      mov lr, pc
004767ec  30 f0 93 e5                                      ldr pc, [r3, #0x30]
004767f0  00 10 a0 e1                                      mov r1, r0
004767f4  05 00 a0 e1                                      mov r0, r5
004767f8  34 ff 2f e1                                      blx r4
004767fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00476800  00 10 a0 e3                                      mov r1, #0
00476804  70 40 bd e8                                      pop {r4, r5, r6, lr}
00476808  b2 bf fb ea                                      b #0x3666d8

; FUNCTION 0x0047680c, declared_size=336, range_size=336, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZN24BlendedAnimSetController8PlayClipEjbij
; demangled: BlendedAnimSetController::PlayClip(unsigned int, bool, int, unsigned int)
; decoder-mode: arm
0047680c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00476810  01 40 a0 e1                                      mov r4, r1
00476814  28 10 9d e5                                      ldr r1, [sp, #0x28]
00476818  02 a0 a0 e1                                      mov sl, r2
0047681c  00 70 a0 e1                                      mov r7, r0
00476820  24 f8 ff eb                                      bl #0x4748b8
00476824  00 60 50 e2                                      subs r6, r0, #0
00476828  34 00 00 0a                                      beq #0x476900
0047682c  14 10 97 e5                                      ldr r1, [r7, #0x14]
00476830  d9 bf fb eb                                      bl #0x36679c
00476834  01 00 74 e3                                      cmn r4, #1
00476838  30 00 00 0a                                      beq #0x476900
0047683c  70 20 96 e5                                      ldr r2, [r6, #0x70]
00476840  28 30 96 e5                                      ldr r3, [r6, #0x28]
00476844  02 51 93 e7                                      ldr r5, [r3, r2, lsl #2]
00476848  00 00 55 e3                                      cmp r5, #0
0047684c  2d 00 00 0a                                      beq #0x476908
00476850  00 30 95 e5                                      ldr r3, [r5]
00476854  05 00 a0 e1                                      mov r0, r5
00476858  0f e0 a0 e1                                      mov lr, pc
0047685c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00476860  00 80 a0 e1                                      mov r8, r0
00476864  05 00 a0 e1                                      mov r0, r5
00476868  29 a2 07 eb                                      bl #0x65f114
0047686c  00 90 a0 e1                                      mov sb, r0
00476870  06 00 a0 e1                                      mov r0, r6
00476874  39 ca fb eb                                      bl #0x369160
00476878  04 10 a0 e1                                      mov r1, r4
0047687c  00 b0 a0 e1                                      mov fp, r0
00476880  05 00 a0 e1                                      mov r0, r5
00476884  08 c3 fb eb                                      bl #0x3674ac
00476888  01 00 70 e3                                      cmn r0, #1
0047688c  00 40 a0 e1                                      mov r4, r0
00476890  1a 00 00 0a                                      beq #0x476900
00476894  34 30 98 e5                                      ldr r3, [r8, #0x34]
00476898  00 00 53 e3                                      cmp r3, #0
0047689c  04 00 00 0a                                      beq #0x4768b4
004768a0  05 00 a0 e1                                      mov r0, r5
004768a4  00 30 95 e5                                      ldr r3, [r5]
004768a8  0c 10 97 e5                                      ldr r1, [r7, #0xc]
004768ac  0f e0 a0 e1                                      mov lr, pc
004768b0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
004768b4  04 00 59 e1                                      cmp sb, r4
004768b8  18 00 00 0a                                      beq #0x476920
004768bc  0a 10 a0 e1                                      mov r1, sl
004768c0  08 00 a0 e1                                      mov r0, r8
004768c4  00 30 98 e5                                      ldr r3, [r8]
004768c8  0f e0 a0 e1                                      mov lr, pc
004768cc  40 f0 93 e5                                      ldr pc, [r3, #0x40]
004768d0  00 30 98 e5                                      ldr r3, [r8]
004768d4  08 00 a0 e1                                      mov r0, r8
004768d8  fe 15 a0 e3                                      mov r1, #0x3f800000
004768dc  0f e0 a0 e1                                      mov lr, pc
004768e0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
004768e4  10 10 d7 e5                                      ldrb r1, [r7, #0x10]
004768e8  04 00 97 e5                                      ldr r0, [r7, #4]
004768ec  4c 9b fb eb                                      bl #0x35d624
004768f0  06 00 a0 e1                                      mov r0, r6
004768f4  91 bf fb eb                                      bl #0x366740
004768f8  01 00 a0 e3                                      mov r0, #1
004768fc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00476900  00 00 a0 e3                                      mov r0, #0
00476904  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00476908  05 00 a0 e1                                      mov r0, r5
0047690c  00 a2 07 eb                                      bl #0x65f114
00476910  06 00 a0 e1                                      mov r0, r6
00476914  11 ca fb eb                                      bl #0x369160
00476918  05 00 a0 e1                                      mov r0, r5
0047691c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00476920  00 30 98 e5                                      ldr r3, [r8]
00476924  08 00 a0 e1                                      mov r0, r8
00476928  0f e0 a0 e1                                      mov lr, pc
0047692c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00476930  00 00 50 e3                                      cmp r0, #0
00476934  e0 ff ff 1a                                      bne #0x4768bc
00476938  00 00 5b e3                                      cmp fp, #0
0047693c  00 30 98 e5                                      ldr r3, [r8]
00476940  10 10 98 e5                                      ldr r1, [r8, #0x10]
00476944  10 b0 9b 15                                      ldrne fp, [fp, #0x10]
00476948  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0047694c  08 00 a0 e1                                      mov r0, r8
00476950  01 10 8b e0                                      add r1, fp, r1
00476954  33 ff 2f e1                                      blx r3
00476958  d7 ff ff ea                                      b #0x4768bc

; FUNCTION 0x0047695c, declared_size=52, range_size=52, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZNK24BlendedAnimSetController10GetNumClipEj
; demangled: BlendedAnimSetController::GetNumClip(unsigned int) const
; decoder-mode: arm
0047695c  10 40 2d e9                                      push {r4, lr}
00476960  82 f7 ff eb                                      bl #0x474770
00476964  00 00 50 e3                                      cmp r0, #0
00476968  06 00 00 0a                                      beq #0x476988
0047696c  28 30 90 e5                                      ldr r3, [r0, #0x28]
00476970  70 20 90 e5                                      ldr r2, [r0, #0x70]
00476974  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00476978  00 00 50 e3                                      cmp r0, #0
0047697c  01 00 00 0a                                      beq #0x476988
00476980  10 40 bd e8                                      pop {r4, lr}
00476984  e4 a1 07 ea                                      b #0x65f11c
00476988  00 00 a0 e3                                      mov r0, #0
0047698c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00476990, declared_size=52, range_size=52, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZN24BlendedAnimSetControllerD1Ev
; demangled: BlendedAnimSetController::~BlendedAnimSetController()
; decoder-mode: arm
00476990  24 30 9f e5                                      ldr r3, [pc, #0x24]
00476994  24 20 9f e5                                      ldr r2, [pc, #0x24]
00476998  10 40 2d e9                                      push {r4, lr}
0047699c  03 30 8f e0                                      add r3, pc, r3
004769a0  02 20 93 e7                                      ldr r2, [r3, r2]
004769a4  00 40 a0 e1                                      mov r4, r0
004769a8  08 20 82 e2                                      add r2, r2, #8
004769ac  00 20 80 e5                                      str r2, [r0]
004769b0  33 f7 ff eb                                      bl #0x474684
004769b4  04 00 a0 e1                                      mov r0, r4
004769b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004769bc  f4 e0 51 00 a8 23 00 00                          .byte 0xf4, 0xe0, 0x51, 0x00, 0xa8, 0x23, 0x00, 0x00

; FUNCTION 0x004769c4, declared_size=28, range_size=28, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZN24BlendedAnimSetControllerD0Ev
; demangled: BlendedAnimSetController::~BlendedAnimSetController()
; decoder-mode: arm
004769c4  10 40 2d e9                                      push {r4, lr}
004769c8  00 40 a0 e1                                      mov r4, r0
004769cc  ef ff ff eb                                      bl #0x476990
004769d0  04 00 a0 e1                                      mov r0, r4
004769d4  99 66 fa eb                                      bl #0x310440
004769d8  04 00 a0 e1                                      mov r0, r4
004769dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004769e0, declared_size=52, range_size=52, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZN24BlendedAnimSetControllerD2Ev
; demangled: BlendedAnimSetController::~BlendedAnimSetController()
; decoder-mode: arm
004769e0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004769e4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004769e8  10 40 2d e9                                      push {r4, lr}
004769ec  03 30 8f e0                                      add r3, pc, r3
004769f0  02 20 93 e7                                      ldr r2, [r3, r2]
004769f4  00 40 a0 e1                                      mov r4, r0
004769f8  08 20 82 e2                                      add r2, r2, #8
004769fc  00 20 80 e5                                      str r2, [r0]
00476a00  1f f7 ff eb                                      bl #0x474684
00476a04  04 00 a0 e1                                      mov r0, r4
00476a08  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00476a0c  a4 e0 51 00 a8 23 00 00                          .byte 0xa4, 0xe0, 0x51, 0x00, 0xa8, 0x23, 0x00, 0x00

; FUNCTION 0x00476b4c, declared_size=656, range_size=656, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZN24BlendedAnimSetControllerC2EP13RootSceneNodei
; demangled: BlendedAnimSetController::BlendedAnimSetController(RootSceneNode*, int)
; decoder-mode: arm
00476b4c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00476b50  02 50 a0 e1                                      mov r5, r2
00476b54  14 d0 4d e2                                      sub sp, sp, #0x14
00476b58  01 20 a0 e3                                      mov r2, #1
00476b5c  58 72 9f e5                                      ldr r7, [pc, #0x258]
00476b60  00 40 a0 e1                                      mov r4, r0
00476b64  b6 f8 ff eb                                      bl #0x474e44
00476b68  50 32 9f e5                                      ldr r3, [pc, #0x250]
00476b6c  07 70 8f e0                                      add r7, pc, r7
00476b70  4c 22 9f e5                                      ldr r2, [pc, #0x24c]
00476b74  03 30 97 e7                                      ldr r3, [r7, r3]
00476b78  00 80 a0 e3                                      mov r8, #0
00476b7c  02 60 97 e7                                      ldr r6, [r7, r2]
00476b80  08 30 83 e2                                      add r3, r3, #8
00476b84  00 30 84 e5                                      str r3, [r4]
00476b88  01 30 a0 e3                                      mov r3, #1
00476b8c  10 30 c4 e5                                      strb r3, [r4, #0x10]
00476b90  05 10 a0 e1                                      mov r1, r5
00476b94  08 50 84 e5                                      str r5, [r4, #8]
00476b98  06 00 a0 e1                                      mov r0, r6
00476b9c  0c 80 84 e5                                      str r8, [r4, #0xc]
00476ba0  14 80 84 e5                                      str r8, [r4, #0x14]
00476ba4  c6 fd ff eb                                      bl #0x4762c4
00476ba8  00 50 a0 e1                                      mov r5, r0
00476bac  08 10 94 e5                                      ldr r1, [r4, #8]
00476bb0  06 00 a0 e1                                      mov r0, r6
00476bb4  c2 fd ff eb                                      bl #0x4762c4
00476bb8  08 30 55 e0                                      subs r3, r5, r8
00476bbc  01 30 a0 13                                      movne r3, #1
00476bc0  08 a0 50 e0                                      subs sl, r0, r8
00476bc4  01 a0 a0 13                                      movne sl, #1
00476bc8  03 00 1a e1                                      tst sl, r3
00476bcc  00 60 a0 e1                                      mov r6, r0
00476bd0  0e 00 00 1a                                      bne #0x476c10
00476bd4  00 00 53 e3                                      cmp r3, #0
00476bd8  03 00 00 0a                                      beq #0x476bec
00476bdc  00 30 95 e5                                      ldr r3, [r5]
00476be0  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00476be4  00 00 85 e0                                      add r0, r5, r0
00476be8  65 9a fa eb                                      bl #0x31d584
00476bec  00 00 5a e3                                      cmp sl, #0
00476bf0  03 00 00 0a                                      beq #0x476c04
00476bf4  00 30 96 e5                                      ldr r3, [r6]
00476bf8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00476bfc  00 00 86 e0                                      add r0, r6, r0
00476c00  5f 9a fa eb                                      bl #0x31d584
00476c04  04 00 a0 e1                                      mov r0, r4
00476c08  14 d0 8d e2                                      add sp, sp, #0x14
00476c0c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00476c10  05 00 a0 e1                                      mov r0, r5
00476c14  40 a1 07 eb                                      bl #0x65f11c
00476c18  08 00 50 e1                                      cmp r0, r8
00476c1c  49 00 00 da                                      ble #0x476d48
00476c20  00 10 a0 e3                                      mov r1, #0
00476c24  d0 00 a0 e3                                      mov r0, #0xd0
00476c28  5f f5 02 eb                                      bl #0x5341ac
00476c2c  00 70 a0 e1                                      mov r7, r0
00476c30  f8 c0 fb eb                                      bl #0x367018
00476c34  01 30 a0 e3                                      mov r3, #1
00476c38  0c 50 8d e5                                      str r5, [sp, #0xc]
00476c3c  24 30 c7 e5                                      strb r3, [r7, #0x24]
00476c40  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00476c44  28 80 87 e2                                      add r8, r7, #0x28
00476c48  00 20 93 e5                                      ldr r2, [r3]
00476c4c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00476c50  02 30 83 e0                                      add r3, r3, r2
00476c54  04 20 93 e5                                      ldr r2, [r3, #4]
00476c58  01 20 82 e2                                      add r2, r2, #1
00476c5c  04 20 83 e5                                      str r2, [r3, #4]
00476c60  2c 10 97 e5                                      ldr r1, [r7, #0x2c]
00476c64  30 30 97 e5                                      ldr r3, [r7, #0x30]
00476c68  03 00 51 e1                                      cmp r1, r3
00476c6c  4a 00 00 0a                                      beq #0x476d9c
00476c70  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00476c74  00 30 81 e5                                      str r3, [r1]
00476c78  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
00476c7c  04 30 83 e2                                      add r3, r3, #4
00476c80  2c 30 87 e5                                      str r3, [r7, #0x2c]
00476c84  01 30 a0 e3                                      mov r3, #1
00476c88  0c 60 8d e5                                      str r6, [sp, #0xc]
00476c8c  24 30 c7 e5                                      strb r3, [r7, #0x24]
00476c90  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00476c94  00 20 93 e5                                      ldr r2, [r3]
00476c98  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00476c9c  02 30 83 e0                                      add r3, r3, r2
00476ca0  04 20 93 e5                                      ldr r2, [r3, #4]
00476ca4  01 20 82 e2                                      add r2, r2, #1
00476ca8  04 20 83 e5                                      str r2, [r3, #4]
00476cac  2c 10 97 e5                                      ldr r1, [r7, #0x2c]
00476cb0  30 30 97 e5                                      ldr r3, [r7, #0x30]
00476cb4  03 00 51 e1                                      cmp r1, r3
00476cb8  3b 00 00 0a                                      beq #0x476dac
00476cbc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00476cc0  00 30 81 e5                                      str r3, [r1]
00476cc4  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
00476cc8  04 30 83 e2                                      add r3, r3, #4
00476ccc  2c 30 87 e5                                      str r3, [r7, #0x2c]
00476cd0  07 00 a0 e1                                      mov r0, r7
00476cd4  00 30 97 e5                                      ldr r3, [r7]
00476cd8  00 10 a0 e3                                      mov r1, #0
00476cdc  0f e0 a0 e1                                      mov lr, pc
00476ce0  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00476ce4  34 30 97 e5                                      ldr r3, [r7, #0x34]
00476ce8  fe 25 a0 e3                                      mov r2, #0x3f800000
00476cec  07 10 a0 e1                                      mov r1, r7
00476cf0  00 20 83 e5                                      str r2, [r3]
00476cf4  34 30 97 e5                                      ldr r3, [r7, #0x34]
00476cf8  00 20 a0 e3                                      mov r2, #0
00476cfc  04 20 83 e5                                      str r2, [r3, #4]
00476d00  04 30 94 e5                                      ldr r3, [r4, #4]
00476d04  03 00 a0 e1                                      mov r0, r3
00476d08  00 30 93 e5                                      ldr r3, [r3]
00476d0c  0f e0 a0 e1                                      mov lr, pc
00476d10  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00476d14  00 30 95 e5                                      ldr r3, [r5]
00476d18  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00476d1c  00 00 85 e0                                      add r0, r5, r0
00476d20  17 9a fa eb                                      bl #0x31d584
00476d24  00 30 96 e5                                      ldr r3, [r6]
00476d28  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00476d2c  00 00 86 e0                                      add r0, r6, r0
00476d30  13 9a fa eb                                      bl #0x31d584
00476d34  00 30 97 e5                                      ldr r3, [r7]
00476d38  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00476d3c  00 00 87 e0                                      add r0, r7, r0
00476d40  0f 9a fa eb                                      bl #0x31d584
00476d44  ae ff ff ea                                      b #0x476c04
00476d48  78 30 9f e5                                      ldr r3, [pc, #0x78]
00476d4c  03 30 97 e7                                      ldr r3, [r7, r3]
00476d50  00 30 93 e5                                      ldr r3, [r3]
00476d54  02 00 53 e3                                      cmp r3, #2
00476d58  00 80 88 05                                      streq r8, [r8]
00476d5c  af ff ff 0a                                      beq #0x476c20
00476d60  01 00 53 e3                                      cmp r3, #1
00476d64  ad ff ff 1a                                      bne #0x476c20
00476d68  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
00476d6c  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00476d70  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00476d74  00 00 97 e7                                      ldr r0, [r7, r0]
00476d78  58 30 9f e5                                      ldr r3, [pc, #0x58]
00476d7c  45 c0 a0 e3                                      mov ip, #0x45
00476d80  01 10 8f e0                                      add r1, pc, r1
00476d84  02 20 8f e0                                      add r2, pc, r2
00476d88  03 30 8f e0                                      add r3, pc, r3
00476d8c  a8 00 80 e2                                      add r0, r0, #0xa8
00476d90  00 c0 8d e5                                      str ip, [sp]
00476d94  9a 5c fa eb                                      bl #0x30e004
00476d98  a0 ff ff ea                                      b #0x476c20
00476d9c  08 00 a0 e1                                      mov r0, r8
00476da0  0c 20 8d e2                                      add r2, sp, #0xc
00476da4  3c ff ff eb                                      bl #0x476a9c
00476da8  b5 ff ff ea                                      b #0x476c84
00476dac  08 00 a0 e1                                      mov r0, r8
00476db0  0c 20 8d e2                                      add r2, sp, #0xc
00476db4  38 ff ff eb                                      bl #0x476a9c
00476db8  c4 ff ff ea                                      b #0x476cd0
; mapping-symbol data/literal pool
00476dbc  24 df 51 00 a8 23 00 00 38 48 00 00 c0 39 00 00  .byte 0x24, 0xdf, 0x51, 0x00, 0xa8, 0x23, 0x00, 0x00, 0x38, 0x48, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00476dcc  c0 19 00 00 58 76 44 00 dc 6a 45 00 f8 6a 45 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x58, 0x76, 0x44, 0x00, 0xdc, 0x6a, 0x45, 0x00, 0xf8, 0x6a, 0x45, 0x00

; FUNCTION 0x00476ddc, declared_size=656, range_size=656, mode=arm
; class-group: BlendedAnimSetController
; alias: _ZN24BlendedAnimSetControllerC1EP13RootSceneNodei
; demangled: BlendedAnimSetController::BlendedAnimSetController(RootSceneNode*, int)
; decoder-mode: arm
00476ddc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00476de0  02 50 a0 e1                                      mov r5, r2
00476de4  14 d0 4d e2                                      sub sp, sp, #0x14
00476de8  01 20 a0 e3                                      mov r2, #1
00476dec  58 72 9f e5                                      ldr r7, [pc, #0x258]
00476df0  00 40 a0 e1                                      mov r4, r0
00476df4  12 f8 ff eb                                      bl #0x474e44
00476df8  50 32 9f e5                                      ldr r3, [pc, #0x250]
00476dfc  07 70 8f e0                                      add r7, pc, r7
00476e00  4c 22 9f e5                                      ldr r2, [pc, #0x24c]
00476e04  03 30 97 e7                                      ldr r3, [r7, r3]
00476e08  00 80 a0 e3                                      mov r8, #0
00476e0c  02 60 97 e7                                      ldr r6, [r7, r2]
00476e10  08 30 83 e2                                      add r3, r3, #8
00476e14  00 30 84 e5                                      str r3, [r4]
00476e18  01 30 a0 e3                                      mov r3, #1
00476e1c  10 30 c4 e5                                      strb r3, [r4, #0x10]
00476e20  05 10 a0 e1                                      mov r1, r5
00476e24  08 50 84 e5                                      str r5, [r4, #8]
00476e28  06 00 a0 e1                                      mov r0, r6
00476e2c  0c 80 84 e5                                      str r8, [r4, #0xc]
00476e30  14 80 84 e5                                      str r8, [r4, #0x14]
00476e34  22 fd ff eb                                      bl #0x4762c4
00476e38  00 50 a0 e1                                      mov r5, r0
00476e3c  08 10 94 e5                                      ldr r1, [r4, #8]
00476e40  06 00 a0 e1                                      mov r0, r6
00476e44  1e fd ff eb                                      bl #0x4762c4
00476e48  08 30 55 e0                                      subs r3, r5, r8
00476e4c  01 30 a0 13                                      movne r3, #1
00476e50  08 a0 50 e0                                      subs sl, r0, r8
00476e54  01 a0 a0 13                                      movne sl, #1
00476e58  03 00 1a e1                                      tst sl, r3
00476e5c  00 60 a0 e1                                      mov r6, r0
00476e60  0e 00 00 1a                                      bne #0x476ea0
00476e64  00 00 53 e3                                      cmp r3, #0
00476e68  03 00 00 0a                                      beq #0x476e7c
00476e6c  00 30 95 e5                                      ldr r3, [r5]
00476e70  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00476e74  00 00 85 e0                                      add r0, r5, r0
00476e78  c1 99 fa eb                                      bl #0x31d584
00476e7c  00 00 5a e3                                      cmp sl, #0
00476e80  03 00 00 0a                                      beq #0x476e94
00476e84  00 30 96 e5                                      ldr r3, [r6]
00476e88  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00476e8c  00 00 86 e0                                      add r0, r6, r0
00476e90  bb 99 fa eb                                      bl #0x31d584
00476e94  04 00 a0 e1                                      mov r0, r4
00476e98  14 d0 8d e2                                      add sp, sp, #0x14
00476e9c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00476ea0  05 00 a0 e1                                      mov r0, r5
00476ea4  9c a0 07 eb                                      bl #0x65f11c
00476ea8  08 00 50 e1                                      cmp r0, r8
00476eac  49 00 00 da                                      ble #0x476fd8
00476eb0  00 10 a0 e3                                      mov r1, #0
00476eb4  d0 00 a0 e3                                      mov r0, #0xd0
00476eb8  bb f4 02 eb                                      bl #0x5341ac
00476ebc  00 70 a0 e1                                      mov r7, r0
00476ec0  54 c0 fb eb                                      bl #0x367018
00476ec4  01 30 a0 e3                                      mov r3, #1
00476ec8  0c 50 8d e5                                      str r5, [sp, #0xc]
00476ecc  24 30 c7 e5                                      strb r3, [r7, #0x24]
00476ed0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00476ed4  28 80 87 e2                                      add r8, r7, #0x28
00476ed8  00 20 93 e5                                      ldr r2, [r3]
00476edc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00476ee0  02 30 83 e0                                      add r3, r3, r2
00476ee4  04 20 93 e5                                      ldr r2, [r3, #4]
00476ee8  01 20 82 e2                                      add r2, r2, #1
00476eec  04 20 83 e5                                      str r2, [r3, #4]
00476ef0  2c 10 97 e5                                      ldr r1, [r7, #0x2c]
00476ef4  30 30 97 e5                                      ldr r3, [r7, #0x30]
00476ef8  03 00 51 e1                                      cmp r1, r3
00476efc  4a 00 00 0a                                      beq #0x47702c
00476f00  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00476f04  00 30 81 e5                                      str r3, [r1]
00476f08  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
00476f0c  04 30 83 e2                                      add r3, r3, #4
00476f10  2c 30 87 e5                                      str r3, [r7, #0x2c]
00476f14  01 30 a0 e3                                      mov r3, #1
00476f18  0c 60 8d e5                                      str r6, [sp, #0xc]
00476f1c  24 30 c7 e5                                      strb r3, [r7, #0x24]
00476f20  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00476f24  00 20 93 e5                                      ldr r2, [r3]
00476f28  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00476f2c  02 30 83 e0                                      add r3, r3, r2
00476f30  04 20 93 e5                                      ldr r2, [r3, #4]
00476f34  01 20 82 e2                                      add r2, r2, #1
00476f38  04 20 83 e5                                      str r2, [r3, #4]
00476f3c  2c 10 97 e5                                      ldr r1, [r7, #0x2c]
00476f40  30 30 97 e5                                      ldr r3, [r7, #0x30]
00476f44  03 00 51 e1                                      cmp r1, r3
00476f48  3b 00 00 0a                                      beq #0x47703c
00476f4c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00476f50  00 30 81 e5                                      str r3, [r1]
00476f54  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
00476f58  04 30 83 e2                                      add r3, r3, #4
00476f5c  2c 30 87 e5                                      str r3, [r7, #0x2c]
00476f60  07 00 a0 e1                                      mov r0, r7
00476f64  00 30 97 e5                                      ldr r3, [r7]
00476f68  00 10 a0 e3                                      mov r1, #0
00476f6c  0f e0 a0 e1                                      mov lr, pc
00476f70  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00476f74  34 30 97 e5                                      ldr r3, [r7, #0x34]
00476f78  fe 25 a0 e3                                      mov r2, #0x3f800000
00476f7c  07 10 a0 e1                                      mov r1, r7
00476f80  00 20 83 e5                                      str r2, [r3]
00476f84  34 30 97 e5                                      ldr r3, [r7, #0x34]
00476f88  00 20 a0 e3                                      mov r2, #0
00476f8c  04 20 83 e5                                      str r2, [r3, #4]
00476f90  04 30 94 e5                                      ldr r3, [r4, #4]
00476f94  03 00 a0 e1                                      mov r0, r3
00476f98  00 30 93 e5                                      ldr r3, [r3]
00476f9c  0f e0 a0 e1                                      mov lr, pc
00476fa0  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00476fa4  00 30 95 e5                                      ldr r3, [r5]
00476fa8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00476fac  00 00 85 e0                                      add r0, r5, r0
00476fb0  73 99 fa eb                                      bl #0x31d584
00476fb4  00 30 96 e5                                      ldr r3, [r6]
00476fb8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00476fbc  00 00 86 e0                                      add r0, r6, r0
00476fc0  6f 99 fa eb                                      bl #0x31d584
00476fc4  00 30 97 e5                                      ldr r3, [r7]
00476fc8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00476fcc  00 00 87 e0                                      add r0, r7, r0
00476fd0  6b 99 fa eb                                      bl #0x31d584
00476fd4  ae ff ff ea                                      b #0x476e94
00476fd8  78 30 9f e5                                      ldr r3, [pc, #0x78]
00476fdc  03 30 97 e7                                      ldr r3, [r7, r3]
00476fe0  00 30 93 e5                                      ldr r3, [r3]
00476fe4  02 00 53 e3                                      cmp r3, #2
00476fe8  00 80 88 05                                      streq r8, [r8]
00476fec  af ff ff 0a                                      beq #0x476eb0
00476ff0  01 00 53 e3                                      cmp r3, #1
00476ff4  ad ff ff 1a                                      bne #0x476eb0
00476ff8  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
00476ffc  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00477000  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00477004  00 00 97 e7                                      ldr r0, [r7, r0]
00477008  58 30 9f e5                                      ldr r3, [pc, #0x58]
0047700c  45 c0 a0 e3                                      mov ip, #0x45
00477010  01 10 8f e0                                      add r1, pc, r1
00477014  02 20 8f e0                                      add r2, pc, r2
00477018  03 30 8f e0                                      add r3, pc, r3
0047701c  a8 00 80 e2                                      add r0, r0, #0xa8
00477020  00 c0 8d e5                                      str ip, [sp]
00477024  f6 5b fa eb                                      bl #0x30e004
00477028  a0 ff ff ea                                      b #0x476eb0
0047702c  08 00 a0 e1                                      mov r0, r8
00477030  0c 20 8d e2                                      add r2, sp, #0xc
00477034  98 fe ff eb                                      bl #0x476a9c
00477038  b5 ff ff ea                                      b #0x476f14
0047703c  08 00 a0 e1                                      mov r0, r8
00477040  0c 20 8d e2                                      add r2, sp, #0xc
00477044  94 fe ff eb                                      bl #0x476a9c
00477048  c4 ff ff ea                                      b #0x476f60
; mapping-symbol data/literal pool
0047704c  94 dc 51 00 a8 23 00 00 38 48 00 00 c0 39 00 00  .byte 0x94, 0xdc, 0x51, 0x00, 0xa8, 0x23, 0x00, 0x00, 0x38, 0x48, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0047705c  c0 19 00 00 c8 73 44 00 4c 68 45 00 68 68 45 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xc8, 0x73, 0x44, 0x00, 0x4c, 0x68, 0x45, 0x00, 0x68, 0x68, 0x45, 0x00
