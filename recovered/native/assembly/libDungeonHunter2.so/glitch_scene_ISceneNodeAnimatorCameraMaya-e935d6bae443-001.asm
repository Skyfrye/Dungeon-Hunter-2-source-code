; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c963c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraMaya
; alias: _ZThn4_N6glitch5scene28ISceneNodeAnimatorCameraMayaD1Ev
; demangled: non-virtual thunk to glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006c963c  04 00 40 e2                                      sub r0, r0, #4
006c9640  ff ff ff ea                                      b #0x6c9644

; FUNCTION 0x006c9644, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28ISceneNodeAnimatorCameraMayaD1Ev
; demangled: glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006c9644  40 30 9f e5                                      ldr r3, [pc, #0x40]
006c9648  40 20 9f e5                                      ldr r2, [pc, #0x40]
006c964c  40 10 9f e5                                      ldr r1, [pc, #0x40]
006c9650  03 30 8f e0                                      add r3, pc, r3
006c9654  02 20 93 e7                                      ldr r2, [r3, r2]
006c9658  01 10 93 e7                                      ldr r1, [r3, r1]
006c965c  10 40 2d e9                                      push {r4, lr}
006c9660  80 c0 82 e2                                      add ip, r2, #0x80
006c9664  0c e0 82 e2                                      add lr, r2, #0xc
006c9668  9c 20 82 e2                                      add r2, r2, #0x9c
006c966c  00 40 a0 e1                                      mov r4, r0
006c9670  00 e0 80 e5                                      str lr, [r0]
006c9674  0c 20 80 e5                                      str r2, [r0, #0xc]
006c9678  04 c0 80 e5                                      str ip, [r0, #4]
006c967c  04 10 81 e2                                      add r1, r1, #4
006c9680  ac 40 fb eb                                      bl #0x599938
006c9684  04 00 a0 e1                                      mov r0, r4
006c9688  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006c968c  40 b4 2c 00 c8 37 00 00 e4 33 00 00              .byte 0x40, 0xb4, 0x2c, 0x00, 0xc8, 0x37, 0x00, 0x00, 0xe4, 0x33, 0x00, 0x00

; FUNCTION 0x006c9698, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraMaya
; alias: _ZTv0_n12_N6glitch5scene28ISceneNodeAnimatorCameraMayaD1Ev
; demangled: virtual thunk to glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006c9698  00 30 90 e5                                      ldr r3, [r0]
006c969c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c96a0  03 00 80 e0                                      add r0, r0, r3
006c96a4  e6 ff ff ea                                      b #0x6c9644

; FUNCTION 0x006ca290, declared_size=168, range_size=168, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28ISceneNodeAnimatorCameraMayaC2Ev
; demangled: glitch::scene::ISceneNodeAnimatorCameraMaya::ISceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006ca290  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ca294  04 70 81 e2                                      add r7, r1, #4
006ca298  88 50 9f e5                                      ldr r5, [pc, #0x88]
006ca29c  04 20 97 e5                                      ldr r2, [r7, #4]
006ca2a0  84 30 9f e5                                      ldr r3, [pc, #0x84]
006ca2a4  05 50 8f e0                                      add r5, pc, r5
006ca2a8  00 20 80 e5                                      str r2, [r0]
006ca2ac  03 30 95 e7                                      ldr r3, [r5, r3]
006ca2b0  01 60 a0 e1                                      mov r6, r1
006ca2b4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006ca2b8  08 10 97 e5                                      ldr r1, [r7, #8]
006ca2bc  08 30 83 e2                                      add r3, r3, #8
006ca2c0  00 40 a0 e1                                      mov r4, r0
006ca2c4  02 10 80 e7                                      str r1, [r0, r2]
006ca2c8  04 30 80 e5                                      str r3, [r0, #4]
006ca2cc  ae 5b ff eb                                      bl #0x6a118c
006ca2d0  04 20 96 e5                                      ldr r2, [r6, #4]
006ca2d4  54 30 9f e5                                      ldr r3, [pc, #0x54]
006ca2d8  00 20 84 e5                                      str r2, [r4]
006ca2dc  03 30 95 e7                                      ldr r3, [r5, r3]
006ca2e0  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
006ca2e4  0c 00 97 e5                                      ldr r0, [r7, #0xc]
006ca2e8  68 20 83 e2                                      add r2, r3, #0x68
006ca2ec  40 30 9f e5                                      ldr r3, [pc, #0x40]
006ca2f0  01 00 84 e7                                      str r0, [r4, r1]
006ca2f4  04 20 84 e5                                      str r2, [r4, #4]
006ca2f8  00 20 a0 e3                                      mov r2, #0
006ca2fc  08 20 84 e5                                      str r2, [r4, #8]
006ca300  00 20 96 e5                                      ldr r2, [r6]
006ca304  03 30 95 e7                                      ldr r3, [r5, r3]
006ca308  04 00 a0 e1                                      mov r0, r4
006ca30c  00 20 84 e5                                      str r2, [r4]
006ca310  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006ca314  14 10 96 e5                                      ldr r1, [r6, #0x14]
006ca318  80 30 83 e2                                      add r3, r3, #0x80
006ca31c  02 10 84 e7                                      str r1, [r4, r2]
006ca320  04 30 84 e5                                      str r3, [r4, #4]
006ca324  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006ca328  ec a7 2c 00 4c 27 00 00 08 23 00 00 c8 37 00 00  .byte 0xec, 0xa7, 0x2c, 0x00, 0x4c, 0x27, 0x00, 0x00, 0x08, 0x23, 0x00, 0x00, 0xc8, 0x37, 0x00, 0x00

; FUNCTION 0x006ca600, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraMaya
; alias: _ZThn4_N6glitch5scene28ISceneNodeAnimatorCameraMayaD0Ev
; demangled: non-virtual thunk to glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006ca600  04 00 40 e2                                      sub r0, r0, #4
006ca604  ff ff ff ea                                      b #0x6ca608

; FUNCTION 0x006ca608, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraMaya
; alias: _ZN6glitch5scene28ISceneNodeAnimatorCameraMayaD0Ev
; demangled: glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006ca608  48 30 9f e5                                      ldr r3, [pc, #0x48]
006ca60c  48 20 9f e5                                      ldr r2, [pc, #0x48]
006ca610  48 10 9f e5                                      ldr r1, [pc, #0x48]
006ca614  03 30 8f e0                                      add r3, pc, r3
006ca618  02 20 93 e7                                      ldr r2, [r3, r2]
006ca61c  01 10 93 e7                                      ldr r1, [r3, r1]
006ca620  10 40 2d e9                                      push {r4, lr}
006ca624  80 c0 82 e2                                      add ip, r2, #0x80
006ca628  0c e0 82 e2                                      add lr, r2, #0xc
006ca62c  9c 20 82 e2                                      add r2, r2, #0x9c
006ca630  00 40 a0 e1                                      mov r4, r0
006ca634  00 e0 80 e5                                      str lr, [r0]
006ca638  0c 20 80 e5                                      str r2, [r0, #0xc]
006ca63c  04 c0 80 e5                                      str ip, [r0, #4]
006ca640  04 10 81 e2                                      add r1, r1, #4
006ca644  bb 3c fb eb                                      bl #0x599938
006ca648  04 00 a0 e1                                      mov r0, r4
006ca64c  17 0f f1 eb                                      bl #0x30e2b0
006ca650  04 00 a0 e1                                      mov r0, r4
006ca654  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006ca658  7c a4 2c 00 c8 37 00 00 e4 33 00 00              .byte 0x7c, 0xa4, 0x2c, 0x00, 0xc8, 0x37, 0x00, 0x00, 0xe4, 0x33, 0x00, 0x00

; FUNCTION 0x006ca664, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraMaya
; alias: _ZTv0_n12_N6glitch5scene28ISceneNodeAnimatorCameraMayaD0Ev
; demangled: virtual thunk to glitch::scene::ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya()
; decoder-mode: arm
006ca664  00 30 90 e5                                      ldr r3, [r0]
006ca668  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006ca66c  03 00 80 e0                                      add r0, r0, r3
006ca670  e4 ff ff ea                                      b #0x6ca608
