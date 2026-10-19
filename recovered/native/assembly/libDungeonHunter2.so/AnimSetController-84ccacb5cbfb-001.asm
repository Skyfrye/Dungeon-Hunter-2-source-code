; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00474f58, declared_size=8, range_size=8, mode=arm
; class-group: AnimSetController
; alias: _ZNK17AnimSetController7HasClipEPKcj
; demangled: AnimSetController::HasClip(char const*, unsigned int) const
; decoder-mode: arm
00474f58  00 00 a0 e3                                      mov r0, #0
00474f5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00474f60, declared_size=8, range_size=8, mode=arm
; class-group: AnimSetController
; alias: _ZNK17AnimSetController15GetClipDurationEj
; demangled: AnimSetController::GetClipDuration(unsigned int) const
; decoder-mode: arm
00474f60  00 00 e0 e3                                      mvn r0, #0
00474f64  1e ff 2f e1                                      bx lr

; FUNCTION 0x00474f68, declared_size=8, range_size=8, mode=arm
; class-group: AnimSetController
; alias: _ZN17AnimSetController8PlayClipEPKcbij
; demangled: AnimSetController::PlayClip(char const*, bool, int, unsigned int)
; decoder-mode: arm
00474f68  00 00 a0 e3                                      mov r0, #0
00474f6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00474f70, declared_size=64, range_size=64, mode=arm
; class-group: AnimSetController
; alias: _ZN17AnimSetController15GetAnimationSetEv
; demangled: AnimSetController::GetAnimationSet()
; decoder-mode: arm
00474f70  10 40 2d e9                                      push {r4, lr}
00474f74  00 40 a0 e1                                      mov r4, r0
00474f78  01 00 a0 e1                                      mov r0, r1
00474f7c  00 10 a0 e3                                      mov r1, #0
00474f80  4c fe ff eb                                      bl #0x4748b8
00474f84  00 00 50 e3                                      cmp r0, #0
00474f88  00 00 84 05                                      streq r0, [r4]
00474f8c  05 00 00 0a                                      beq #0x474fa8
00474f90  94 30 90 e5                                      ldr r3, [r0, #0x94]
00474f94  00 00 53 e3                                      cmp r3, #0
00474f98  00 30 84 e5                                      str r3, [r4]
00474f9c  04 20 93 15                                      ldrne r2, [r3, #4]
00474fa0  01 20 82 12                                      addne r2, r2, #1
00474fa4  04 20 83 15                                      strne r2, [r3, #4]
00474fa8  04 00 a0 e1                                      mov r0, r4
00474fac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00474fb0, declared_size=64, range_size=64, mode=arm
; class-group: AnimSetController
; alias: _ZN17AnimSetController12SetCallbacksEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
; demangled: AnimSetController::SetCallbacks(void (*)(glitch::scene::ITimelineController*, void*), void*, void (*)(glitch::collada::STriggeredEvent const&, void*), void*)
; decoder-mode: arm
00474fb0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00474fb4  01 50 a0 e1                                      mov r5, r1
00474fb8  00 10 a0 e3                                      mov r1, #0
00474fbc  02 70 a0 e1                                      mov r7, r2
00474fc0  03 60 a0 e1                                      mov r6, r3
00474fc4  18 40 9d e5                                      ldr r4, [sp, #0x18]
00474fc8  3a fe ff eb                                      bl #0x4748b8
00474fcc  00 00 50 e3                                      cmp r0, #0
00474fd0  05 00 00 0a                                      beq #0x474fec
00474fd4  05 10 a0 e1                                      mov r1, r5
00474fd8  07 20 a0 e1                                      mov r2, r7
00474fdc  06 30 a0 e1                                      mov r3, r6
00474fe0  18 40 8d e5                                      str r4, [sp, #0x18]
00474fe4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00474fe8  48 c9 fb ea                                      b #0x367510
00474fec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00474ff0, declared_size=292, range_size=292, mode=arm
; class-group: AnimSetController
; alias: _ZN17AnimSetController8PlayClipEjbij
; demangled: AnimSetController::PlayClip(unsigned int, bool, int, unsigned int)
; decoder-mode: arm
00474ff0  01 00 71 e3                                      cmn r1, #1
00474ff4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00474ff8  01 40 a0 e1                                      mov r4, r1
00474ffc  02 80 a0 e1                                      mov r8, r2
00475000  00 70 a0 e1                                      mov r7, r0
00475004  2c 00 00 0a                                      beq #0x4750bc
00475008  20 10 9d e5                                      ldr r1, [sp, #0x20]
0047500c  29 fe ff eb                                      bl #0x4748b8
00475010  00 50 50 e2                                      subs r5, r0, #0
00475014  2a 00 00 0a                                      beq #0x4750c4
00475018  00 30 95 e5                                      ldr r3, [r5]
0047501c  0f e0 a0 e1                                      mov lr, pc
00475020  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00475024  00 60 a0 e1                                      mov r6, r0
00475028  05 00 a0 e1                                      mov r0, r5
0047502c  38 a8 07 eb                                      bl #0x65f114
00475030  00 a0 a0 e1                                      mov sl, r0
00475034  05 00 a0 e1                                      mov r0, r5
00475038  48 d0 fb eb                                      bl #0x369160
0047503c  04 10 a0 e1                                      mov r1, r4
00475040  00 90 a0 e1                                      mov sb, r0
00475044  05 00 a0 e1                                      mov r0, r5
00475048  17 c9 fb eb                                      bl #0x3674ac
0047504c  01 00 70 e3                                      cmn r0, #1
00475050  00 40 a0 e1                                      mov r4, r0
00475054  18 00 00 0a                                      beq #0x4750bc
00475058  34 30 96 e5                                      ldr r3, [r6, #0x34]
0047505c  00 00 53 e3                                      cmp r3, #0
00475060  04 00 00 0a                                      beq #0x475078
00475064  05 00 a0 e1                                      mov r0, r5
00475068  00 30 95 e5                                      ldr r3, [r5]
0047506c  0c 10 97 e5                                      ldr r1, [r7, #0xc]
00475070  0f e0 a0 e1                                      mov lr, pc
00475074  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00475078  04 00 5a e1                                      cmp sl, r4
0047507c  15 00 00 0a                                      beq #0x4750d8
00475080  08 10 a0 e1                                      mov r1, r8
00475084  06 00 a0 e1                                      mov r0, r6
00475088  00 30 96 e5                                      ldr r3, [r6]
0047508c  0f e0 a0 e1                                      mov lr, pc
00475090  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00475094  06 00 a0 e1                                      mov r0, r6
00475098  fe 15 a0 e3                                      mov r1, #0x3f800000
0047509c  00 30 96 e5                                      ldr r3, [r6]
004750a0  0f e0 a0 e1                                      mov lr, pc
004750a4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
004750a8  04 00 97 e5                                      ldr r0, [r7, #4]
004750ac  10 10 d7 e5                                      ldrb r1, [r7, #0x10]
004750b0  5b a1 fb eb                                      bl #0x35d624
004750b4  01 00 a0 e3                                      mov r0, #1
004750b8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004750bc  00 00 a0 e3                                      mov r0, #0
004750c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004750c4  12 a8 07 eb                                      bl #0x65f114
004750c8  05 00 a0 e1                                      mov r0, r5
004750cc  23 d0 fb eb                                      bl #0x369160
004750d0  05 00 a0 e1                                      mov r0, r5
004750d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004750d8  00 30 96 e5                                      ldr r3, [r6]
004750dc  06 00 a0 e1                                      mov r0, r6
004750e0  0f e0 a0 e1                                      mov lr, pc
004750e4  44 f0 93 e5                                      ldr pc, [r3, #0x44]
004750e8  00 00 50 e3                                      cmp r0, #0
004750ec  e3 ff ff 1a                                      bne #0x475080
004750f0  00 00 59 e3                                      cmp sb, #0
004750f4  00 30 96 e5                                      ldr r3, [r6]
004750f8  10 10 96 e5                                      ldr r1, [r6, #0x10]
004750fc  10 90 99 15                                      ldrne sb, [sb, #0x10]
00475100  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00475104  06 00 a0 e1                                      mov r0, r6
00475108  01 10 89 e0                                      add r1, sb, r1
0047510c  33 ff 2f e1                                      blx r3
00475110  da ff ff ea                                      b #0x475080

; FUNCTION 0x00475114, declared_size=28, range_size=28, mode=arm
; class-group: AnimSetController
; alias: _ZNK17AnimSetController10GetNumClipEj
; demangled: AnimSetController::GetNumClip(unsigned int) const
; decoder-mode: arm
00475114  10 40 2d e9                                      push {r4, lr}
00475118  94 fd ff eb                                      bl #0x474770
0047511c  00 00 50 e3                                      cmp r0, #0
00475120  01 00 00 0a                                      beq #0x47512c
00475124  10 40 bd e8                                      pop {r4, lr}
00475128  fb a7 07 ea                                      b #0x65f11c
0047512c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00475130, declared_size=52, range_size=52, mode=arm
; class-group: AnimSetController
; alias: _ZN17AnimSetControllerD1Ev
; demangled: AnimSetController::~AnimSetController()
; decoder-mode: arm
00475130  24 30 9f e5                                      ldr r3, [pc, #0x24]
00475134  24 20 9f e5                                      ldr r2, [pc, #0x24]
00475138  10 40 2d e9                                      push {r4, lr}
0047513c  03 30 8f e0                                      add r3, pc, r3
00475140  02 20 93 e7                                      ldr r2, [r3, r2]
00475144  00 40 a0 e1                                      mov r4, r0
00475148  08 20 82 e2                                      add r2, r2, #8
0047514c  00 20 80 e5                                      str r2, [r0]
00475150  4b fd ff eb                                      bl #0x474684
00475154  04 00 a0 e1                                      mov r0, r4
00475158  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047515c  54 f9 51 00 2c 35 00 00                          .byte 0x54, 0xf9, 0x51, 0x00, 0x2c, 0x35, 0x00, 0x00

; FUNCTION 0x00475164, declared_size=28, range_size=28, mode=arm
; class-group: AnimSetController
; alias: _ZN17AnimSetControllerD0Ev
; demangled: AnimSetController::~AnimSetController()
; decoder-mode: arm
00475164  10 40 2d e9                                      push {r4, lr}
00475168  00 40 a0 e1                                      mov r4, r0
0047516c  ef ff ff eb                                      bl #0x475130
00475170  04 00 a0 e1                                      mov r0, r4
00475174  b1 6c fa eb                                      bl #0x310440
00475178  04 00 a0 e1                                      mov r0, r4
0047517c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00475180, declared_size=52, range_size=52, mode=arm
; class-group: AnimSetController
; alias: _ZN17AnimSetControllerD2Ev
; demangled: AnimSetController::~AnimSetController()
; decoder-mode: arm
00475180  24 30 9f e5                                      ldr r3, [pc, #0x24]
00475184  24 20 9f e5                                      ldr r2, [pc, #0x24]
00475188  10 40 2d e9                                      push {r4, lr}
0047518c  03 30 8f e0                                      add r3, pc, r3
00475190  02 20 93 e7                                      ldr r2, [r3, r2]
00475194  00 40 a0 e1                                      mov r4, r0
00475198  08 20 82 e2                                      add r2, r2, #8
0047519c  00 20 80 e5                                      str r2, [r0]
004751a0  37 fd ff eb                                      bl #0x474684
004751a4  04 00 a0 e1                                      mov r0, r4
004751a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004751ac  04 f9 51 00 2c 35 00 00                          .byte 0x04, 0xf9, 0x51, 0x00, 0x2c, 0x35, 0x00, 0x00

; FUNCTION 0x004751b4, declared_size=148, range_size=148, mode=arm
; class-group: AnimSetController
; alias: _ZN17AnimSetControllerC1EP13RootSceneNodei
; demangled: AnimSetController::AnimSetController(RootSceneNode*, int)
; decoder-mode: arm
004751b4  70 40 2d e9                                      push {r4, r5, r6, lr}
004751b8  02 60 a0 e1                                      mov r6, r2
004751bc  78 50 9f e5                                      ldr r5, [pc, #0x78]
004751c0  01 20 a0 e3                                      mov r2, #1
004751c4  00 40 a0 e1                                      mov r4, r0
004751c8  1d ff ff eb                                      bl #0x474e44
004751cc  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004751d0  05 50 8f e0                                      add r5, pc, r5
004751d4  08 60 84 e5                                      str r6, [r4, #8]
004751d8  03 30 95 e7                                      ldr r3, [r5, r3]
004751dc  06 10 a0 e1                                      mov r1, r6
004751e0  08 30 83 e2                                      add r3, r3, #8
004751e4  00 30 84 e5                                      str r3, [r4]
004751e8  00 30 a0 e3                                      mov r3, #0
004751ec  0c 30 84 e5                                      str r3, [r4, #0xc]
004751f0  01 30 a0 e3                                      mov r3, #1
004751f4  10 30 c4 e5                                      strb r3, [r4, #0x10]
004751f8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004751fc  03 00 95 e7                                      ldr r0, [r5, r3]
00475200  2f 04 00 eb                                      bl #0x4762c4
00475204  00 50 50 e2                                      subs r5, r0, #0
00475208  09 00 00 0a                                      beq #0x475234
0047520c  04 30 94 e5                                      ldr r3, [r4, #4]
00475210  05 10 a0 e1                                      mov r1, r5
00475214  03 00 a0 e1                                      mov r0, r3
00475218  00 30 93 e5                                      ldr r3, [r3]
0047521c  0f e0 a0 e1                                      mov lr, pc
00475220  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00475224  00 30 95 e5                                      ldr r3, [r5]
00475228  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0047522c  00 00 85 e0                                      add r0, r5, r0
00475230  d3 a0 fa eb                                      bl #0x31d584
00475234  04 00 a0 e1                                      mov r0, r4
00475238  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0047523c  c0 f8 51 00 2c 35 00 00 38 48 00 00              .byte 0xc0, 0xf8, 0x51, 0x00, 0x2c, 0x35, 0x00, 0x00, 0x38, 0x48, 0x00, 0x00

; FUNCTION 0x00475248, declared_size=148, range_size=148, mode=arm
; class-group: AnimSetController
; alias: _ZN17AnimSetControllerC2EP13RootSceneNodei
; demangled: AnimSetController::AnimSetController(RootSceneNode*, int)
; decoder-mode: arm
00475248  70 40 2d e9                                      push {r4, r5, r6, lr}
0047524c  02 60 a0 e1                                      mov r6, r2
00475250  78 50 9f e5                                      ldr r5, [pc, #0x78]
00475254  01 20 a0 e3                                      mov r2, #1
00475258  00 40 a0 e1                                      mov r4, r0
0047525c  f8 fe ff eb                                      bl #0x474e44
00475260  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00475264  05 50 8f e0                                      add r5, pc, r5
00475268  08 60 84 e5                                      str r6, [r4, #8]
0047526c  03 30 95 e7                                      ldr r3, [r5, r3]
00475270  06 10 a0 e1                                      mov r1, r6
00475274  08 30 83 e2                                      add r3, r3, #8
00475278  00 30 84 e5                                      str r3, [r4]
0047527c  00 30 a0 e3                                      mov r3, #0
00475280  0c 30 84 e5                                      str r3, [r4, #0xc]
00475284  01 30 a0 e3                                      mov r3, #1
00475288  10 30 c4 e5                                      strb r3, [r4, #0x10]
0047528c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00475290  03 00 95 e7                                      ldr r0, [r5, r3]
00475294  0a 04 00 eb                                      bl #0x4762c4
00475298  00 50 50 e2                                      subs r5, r0, #0
0047529c  09 00 00 0a                                      beq #0x4752c8
004752a0  04 30 94 e5                                      ldr r3, [r4, #4]
004752a4  05 10 a0 e1                                      mov r1, r5
004752a8  03 00 a0 e1                                      mov r0, r3
004752ac  00 30 93 e5                                      ldr r3, [r3]
004752b0  0f e0 a0 e1                                      mov lr, pc
004752b4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
004752b8  00 30 95 e5                                      ldr r3, [r5]
004752bc  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
004752c0  00 00 85 e0                                      add r0, r5, r0
004752c4  ae a0 fa eb                                      bl #0x31d584
004752c8  04 00 a0 e1                                      mov r0, r4
004752cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004752d0  2c f8 51 00 2c 35 00 00 38 48 00 00              .byte 0x2c, 0xf8, 0x51, 0x00, 0x2c, 0x35, 0x00, 0x00, 0x38, 0x48, 0x00, 0x00
