; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004922e0, declared_size=148, range_size=148, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFXC2Ei
; demangled: AnimatedFX::AnimatedFX(int)
; decoder-mode: arm
004922e0  30 00 2d e9                                      push {r4, r5}
004922e4  80 40 9f e5                                      ldr r4, [pc, #0x80]
004922e8  80 20 9f e5                                      ldr r2, [pc, #0x80]
004922ec  08 10 80 e5                                      str r1, [r0, #8]
004922f0  04 40 8f e0                                      add r4, pc, r4
004922f4  02 20 94 e7                                      ldr r2, [r4, r2]
004922f8  00 10 e0 e3                                      mvn r1, #0
004922fc  1c 10 80 e5                                      str r1, [r0, #0x1c]
00492300  fe 15 a0 e3                                      mov r1, #0x3f800000
00492304  00 c0 a0 e3                                      mov ip, #0
00492308  08 50 82 e2                                      add r5, r2, #8
0049230c  20 10 80 e5                                      str r1, [r0, #0x20]
00492310  00 20 a0 e3                                      mov r2, #0
00492314  01 10 a0 e3                                      mov r1, #1
00492318  50 20 80 e5                                      str r2, [r0, #0x50]
0049231c  00 50 80 e5                                      str r5, [r0]
00492320  24 10 c0 e5                                      strb r1, [r0, #0x24]
00492324  48 c0 80 e5                                      str ip, [r0, #0x48]
00492328  0c 20 80 e5                                      str r2, [r0, #0xc]
0049232c  10 20 80 e5                                      str r2, [r0, #0x10]
00492330  14 20 80 e5                                      str r2, [r0, #0x14]
00492334  18 20 c0 e5                                      strb r2, [r0, #0x18]
00492338  28 20 80 e5                                      str r2, [r0, #0x28]
0049233c  2c 20 80 e5                                      str r2, [r0, #0x2c]
00492340  30 20 c0 e5                                      strb r2, [r0, #0x30]
00492344  31 20 c0 e5                                      strb r2, [r0, #0x31]
00492348  32 20 c0 e5                                      strb r2, [r0, #0x32]
0049234c  34 c0 80 e5                                      str ip, [r0, #0x34]
00492350  38 c0 80 e5                                      str ip, [r0, #0x38]
00492354  3c c0 80 e5                                      str ip, [r0, #0x3c]
00492358  40 c0 80 e5                                      str ip, [r0, #0x40]
0049235c  44 c0 80 e5                                      str ip, [r0, #0x44]
00492360  4c 20 c0 e5                                      strb r2, [r0, #0x4c]
00492364  30 00 bd e8                                      pop {r4, r5}
00492368  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0049236c  a0 27 50 00 1c 31 00 00                          .byte 0xa0, 0x27, 0x50, 0x00, 0x1c, 0x31, 0x00, 0x00

; FUNCTION 0x00492374, declared_size=148, range_size=148, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFXC1Ei
; demangled: AnimatedFX::AnimatedFX(int)
; decoder-mode: arm
00492374  30 00 2d e9                                      push {r4, r5}
00492378  80 40 9f e5                                      ldr r4, [pc, #0x80]
0049237c  80 20 9f e5                                      ldr r2, [pc, #0x80]
00492380  08 10 80 e5                                      str r1, [r0, #8]
00492384  04 40 8f e0                                      add r4, pc, r4
00492388  02 20 94 e7                                      ldr r2, [r4, r2]
0049238c  00 10 e0 e3                                      mvn r1, #0
00492390  1c 10 80 e5                                      str r1, [r0, #0x1c]
00492394  fe 15 a0 e3                                      mov r1, #0x3f800000
00492398  00 c0 a0 e3                                      mov ip, #0
0049239c  08 50 82 e2                                      add r5, r2, #8
004923a0  20 10 80 e5                                      str r1, [r0, #0x20]
004923a4  00 20 a0 e3                                      mov r2, #0
004923a8  01 10 a0 e3                                      mov r1, #1
004923ac  50 20 80 e5                                      str r2, [r0, #0x50]
004923b0  00 50 80 e5                                      str r5, [r0]
004923b4  24 10 c0 e5                                      strb r1, [r0, #0x24]
004923b8  48 c0 80 e5                                      str ip, [r0, #0x48]
004923bc  0c 20 80 e5                                      str r2, [r0, #0xc]
004923c0  10 20 80 e5                                      str r2, [r0, #0x10]
004923c4  14 20 80 e5                                      str r2, [r0, #0x14]
004923c8  18 20 c0 e5                                      strb r2, [r0, #0x18]
004923cc  28 20 80 e5                                      str r2, [r0, #0x28]
004923d0  2c 20 80 e5                                      str r2, [r0, #0x2c]
004923d4  30 20 c0 e5                                      strb r2, [r0, #0x30]
004923d8  31 20 c0 e5                                      strb r2, [r0, #0x31]
004923dc  32 20 c0 e5                                      strb r2, [r0, #0x32]
004923e0  34 c0 80 e5                                      str ip, [r0, #0x34]
004923e4  38 c0 80 e5                                      str ip, [r0, #0x38]
004923e8  3c c0 80 e5                                      str ip, [r0, #0x3c]
004923ec  40 c0 80 e5                                      str ip, [r0, #0x40]
004923f0  44 c0 80 e5                                      str ip, [r0, #0x44]
004923f4  4c 20 c0 e5                                      strb r2, [r0, #0x4c]
004923f8  30 00 bd e8                                      pop {r4, r5}
004923fc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00492400  0c 27 50 00 1c 31 00 00                          .byte 0x0c, 0x27, 0x50, 0x00, 0x1c, 0x31, 0x00, 0x00

; FUNCTION 0x00492408, declared_size=84, range_size=84, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFXD2Ev
; demangled: AnimatedFX::~AnimatedFX()
; decoder-mode: arm
00492408  10 40 2d e9                                      push {r4, lr}
0049240c  40 30 9f e5                                      ldr r3, [pc, #0x40]
00492410  40 20 9f e5                                      ldr r2, [pc, #0x40]
00492414  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
00492418  03 30 8f e0                                      add r3, pc, r3
0049241c  02 20 93 e7                                      ldr r2, [r3, r2]
00492420  00 00 51 e3                                      cmp r1, #0
00492424  00 40 a0 e1                                      mov r4, r0
00492428  08 20 82 e2                                      add r2, r2, #8
0049242c  00 20 80 e5                                      str r2, [r0]
00492430  05 00 00 0a                                      beq #0x49244c
00492434  00 30 91 e5                                      ldr r3, [r1]
00492438  01 00 a0 e1                                      mov r0, r1
0049243c  0f e0 a0 e1                                      mov lr, pc
00492440  04 f0 93 e5                                      ldr pc, [r3, #4]
00492444  00 30 a0 e3                                      mov r3, #0
00492448  2c 30 84 e5                                      str r3, [r4, #0x2c]
0049244c  04 00 a0 e1                                      mov r0, r4
00492450  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00492454  78 26 50 00 1c 31 00 00                          .byte 0x78, 0x26, 0x50, 0x00, 0x1c, 0x31, 0x00, 0x00

; FUNCTION 0x0049245c, declared_size=84, range_size=84, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFXD1Ev
; demangled: AnimatedFX::~AnimatedFX()
; decoder-mode: arm
0049245c  10 40 2d e9                                      push {r4, lr}
00492460  40 30 9f e5                                      ldr r3, [pc, #0x40]
00492464  40 20 9f e5                                      ldr r2, [pc, #0x40]
00492468  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
0049246c  03 30 8f e0                                      add r3, pc, r3
00492470  02 20 93 e7                                      ldr r2, [r3, r2]
00492474  00 00 51 e3                                      cmp r1, #0
00492478  00 40 a0 e1                                      mov r4, r0
0049247c  08 20 82 e2                                      add r2, r2, #8
00492480  00 20 80 e5                                      str r2, [r0]
00492484  05 00 00 0a                                      beq #0x4924a0
00492488  00 30 91 e5                                      ldr r3, [r1]
0049248c  01 00 a0 e1                                      mov r0, r1
00492490  0f e0 a0 e1                                      mov lr, pc
00492494  04 f0 93 e5                                      ldr pc, [r3, #4]
00492498  00 30 a0 e3                                      mov r3, #0
0049249c  2c 30 84 e5                                      str r3, [r4, #0x2c]
004924a0  04 00 a0 e1                                      mov r0, r4
004924a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004924a8  24 26 50 00 1c 31 00 00                          .byte 0x24, 0x26, 0x50, 0x00, 0x1c, 0x31, 0x00, 0x00

; FUNCTION 0x004924b0, declared_size=48, range_size=48, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX8SetSpeedEf
; demangled: AnimatedFX::SetSpeed(float)
; decoder-mode: arm
004924b0  10 40 2d e9                                      push {r4, lr}
004924b4  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
004924b8  20 10 80 e5                                      str r1, [r0, #0x20]
004924bc  00 00 53 e3                                      cmp r3, #0
004924c0  05 00 00 0a                                      beq #0x4924dc
004924c4  38 30 93 e5                                      ldr r3, [r3, #0x38]
004924c8  00 20 a0 e3                                      mov r2, #0
004924cc  03 00 a0 e1                                      mov r0, r3
004924d0  00 30 93 e5                                      ldr r3, [r3]
004924d4  0f e0 a0 e1                                      mov lr, pc
004924d8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
004924dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004924e0, declared_size=112, range_size=112, mode=arm
; class-group: AnimatedFX
; alias: _ZNK10AnimatedFX12HasCompletedEv
; demangled: AnimatedFX::HasCompleted() const
; decoder-mode: arm
004924e0  10 40 2d e9                                      push {r4, lr}
004924e4  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
004924e8  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
004924ec  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
004924f0  03 30 8f e0                                      add r3, pc, r3
004924f4  01 00 93 e7                                      ldr r0, [r3, r1]
004924f8  64 11 06 e3                                      movw r1, #0x6164
004924fc  65 10 47 e3                                      movt r1, #0x7065
00492500  10 00 90 e5                                      ldr r0, [r0, #0x10]
00492504  08 20 92 e5                                      ldr r2, [r2, #8]
00492508  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0049250c  03 00 a0 e1                                      mov r0, r3
00492510  00 30 93 e5                                      ldr r3, [r3]
00492514  0f e0 a0 e1                                      mov lr, pc
00492518  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0049251c  00 30 50 e2                                      subs r3, r0, #0
00492520  06 00 00 0a                                      beq #0x492540
00492524  00 30 93 e5                                      ldr r3, [r3]
00492528  0f e0 a0 e1                                      mov lr, pc
0049252c  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
00492530  00 00 50 e3                                      cmp r0, #0
00492534  00 00 a0 c3                                      movgt r0, #0
00492538  01 00 a0 d3                                      movle r0, #1
0049253c  10 80 bd e8                                      pop {r4, pc}
00492540  01 00 a0 e3                                      mov r0, #1
00492544  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00492548  a0 25 50 00 f4 37 00 00                          .byte 0xa0, 0x25, 0x50, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00492550, declared_size=16, range_size=16, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX17GetAnimControllerEv
; demangled: AnimatedFX::GetAnimController()
; decoder-mode: arm
00492550  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00492554  00 00 50 e3                                      cmp r0, #0
00492558  38 00 90 15                                      ldrne r0, [r0, #0x38]
0049255c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00492560, declared_size=284, range_size=284, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX11SetEndPointERK7Point3DIfE
; demangled: AnimatedFX::SetEndPoint(Point3D<float> const&)
; decoder-mode: arm
00492560  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00492564  01 40 a0 e1                                      mov r4, r1
00492568  64 11 06 e3                                      movw r1, #0x6164
0049256c  00 60 a0 e1                                      mov r6, r0
00492570  65 10 47 e3                                      movt r1, #0x7065
00492574  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00492578  17 79 ff eb                                      bl #0x4709dc
0049257c  00 50 50 e2                                      subs r5, r0, #0
00492580  3c 00 00 0a                                      beq #0x492678
00492584  28 00 96 e5                                      ldr r0, [r6, #0x28]
00492588  00 00 50 e3                                      cmp r0, #0
0049258c  39 00 00 0a                                      beq #0x492678
00492590  11 04 fc eb                                      bl #0x3935dc
00492594  00 60 a0 e1                                      mov r6, r0
00492598  00 10 90 e5                                      ldr r1, [r0]
0049259c  00 00 94 e5                                      ldr r0, [r4]
004925a0  81 ef f9 eb                                      bl #0x30e3ac
004925a4  04 10 96 e5                                      ldr r1, [r6, #4]
004925a8  00 80 a0 e1                                      mov r8, r0
004925ac  04 00 94 e5                                      ldr r0, [r4, #4]
004925b0  7d ef f9 eb                                      bl #0x30e3ac
004925b4  08 10 96 e5                                      ldr r1, [r6, #8]
004925b8  00 70 a0 e1                                      mov r7, r0
004925bc  08 00 94 e5                                      ldr r0, [r4, #8]
004925c0  79 ef f9 eb                                      bl #0x30e3ac
004925c4  08 10 a0 e1                                      mov r1, r8
004925c8  00 60 a0 e1                                      mov r6, r0
004925cc  08 00 a0 e1                                      mov r0, r8
004925d0  e5 f1 f9 eb                                      bl #0x30ed6c
004925d4  07 10 a0 e1                                      mov r1, r7
004925d8  00 40 a0 e1                                      mov r4, r0
004925dc  07 00 a0 e1                                      mov r0, r7
004925e0  e1 f1 f9 eb                                      bl #0x30ed6c
004925e4  00 10 a0 e1                                      mov r1, r0
004925e8  04 00 a0 e1                                      mov r0, r4
004925ec  6c f1 f9 eb                                      bl #0x30eba4
004925f0  06 10 a0 e1                                      mov r1, r6
004925f4  00 40 a0 e1                                      mov r4, r0
004925f8  06 00 a0 e1                                      mov r0, r6
004925fc  da f1 f9 eb                                      bl #0x30ed6c
00492600  00 10 a0 e1                                      mov r1, r0
00492604  04 00 a0 e1                                      mov r0, r4
00492608  65 f1 f9 eb                                      bl #0x30eba4
0049260c  c4 ee f9 eb                                      bl #0x30e124
00492610  78 41 95 e5                                      ldr r4, [r5, #0x178]
00492614  00 00 54 e3                                      cmp r4, #0
00492618  60 40 84 12                                      addne r4, r4, #0x60
0049261c  08 30 94 e5                                      ldr r3, [r4, #8]
00492620  00 00 53 e3                                      cmp r3, #0
00492624  13 00 00 1a                                      bne #0x492678
00492628  9a 19 09 e3                                      movw r1, #0x999a
0049262c  99 1e 43 e3                                      movt r1, #0x3e99
00492630  cd f1 f9 eb                                      bl #0x30ed6c
00492634  04 30 94 e5                                      ldr r3, [r4, #4]
00492638  00 60 a0 e1                                      mov r6, r0
0049263c  05 00 a0 e1                                      mov r0, r5
00492640  2c 60 83 e5                                      str r6, [r3, #0x2c]
00492644  00 30 95 e5                                      ldr r3, [r5]
00492648  0f e0 a0 e1                                      mov lr, pc
0049264c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00492650  bf 14 a0 e3                                      mov r1, #0xbf000000
00492654  00 40 a0 e1                                      mov r4, r0
00492658  06 00 a0 e1                                      mov r0, r6
0049265c  c2 f1 f9 eb                                      bl #0x30ed6c
00492660  08 30 94 e5                                      ldr r3, [r4, #8]
00492664  04 20 94 e5                                      ldr r2, [r4, #4]
00492668  00 10 a0 e1                                      mov r1, r0
0049266c  05 00 a0 e1                                      mov r0, r5
00492670  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00492674  b6 12 04 ea                                      b #0x597154
00492678  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0049267c, declared_size=24, range_size=24, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX11GetAnimatorEv
; demangled: AnimatedFX::GetAnimator()
; decoder-mode: arm
0049267c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00492680  00 00 50 e3                                      cmp r0, #0
00492684  1e ff 2f 01                                      bxeq lr
00492688  38 00 90 e5                                      ldr r0, [r0, #0x38]
0049268c  00 10 a0 e3                                      mov r1, #0
00492690  88 88 ff ea                                      b #0x4748b8

; FUNCTION 0x00492694, declared_size=80, range_size=80, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX10SetLoopingEb
; demangled: AnimatedFX::SetLooping(bool)
; decoder-mode: arm
00492694  70 40 2d e9                                      push {r4, r5, r6, lr}
00492698  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
0049269c  00 40 a0 e1                                      mov r4, r0
004926a0  01 50 a0 e1                                      mov r5, r1
004926a4  00 00 53 e3                                      cmp r3, #0
004926a8  0b 00 00 0a                                      beq #0x4926dc
004926ac  f2 ff ff eb                                      bl #0x49267c
004926b0  00 00 50 e3                                      cmp r0, #0
004926b4  08 00 00 0a                                      beq #0x4926dc
004926b8  04 00 a0 e1                                      mov r0, r4
004926bc  ee ff ff eb                                      bl #0x49267c
004926c0  00 30 90 e5                                      ldr r3, [r0]
004926c4  0f e0 a0 e1                                      mov lr, pc
004926c8  44 f0 93 e5                                      ldr pc, [r3, #0x44]
004926cc  05 10 a0 e1                                      mov r1, r5
004926d0  00 30 90 e5                                      ldr r3, [r0]
004926d4  0f e0 a0 e1                                      mov lr, pc
004926d8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
004926dc  18 50 c4 e5                                      strb r5, [r4, #0x18]
004926e0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004926e4, declared_size=96, range_size=96, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX6SetEndEv
; demangled: AnimatedFX::SetEnd()
; decoder-mode: arm
004926e4  70 40 2d e9                                      push {r4, r5, r6, lr}
004926e8  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
004926ec  00 40 a0 e1                                      mov r4, r0
004926f0  00 00 53 e3                                      cmp r3, #0
004926f4  11 00 00 0a                                      beq #0x492740
004926f8  df ff ff eb                                      bl #0x49267c
004926fc  00 00 50 e3                                      cmp r0, #0
00492700  0e 00 00 0a                                      beq #0x492740
00492704  04 00 a0 e1                                      mov r0, r4
00492708  db ff ff eb                                      bl #0x49267c
0049270c  00 30 90 e5                                      ldr r3, [r0]
00492710  0f e0 a0 e1                                      mov lr, pc
00492714  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00492718  14 50 90 e5                                      ldr r5, [r0, #0x14]
0049271c  04 00 a0 e1                                      mov r0, r4
00492720  d5 ff ff eb                                      bl #0x49267c
00492724  00 30 90 e5                                      ldr r3, [r0]
00492728  0f e0 a0 e1                                      mov lr, pc
0049272c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00492730  05 10 a0 e1                                      mov r1, r5
00492734  00 30 90 e5                                      ldr r3, [r0]
00492738  0f e0 a0 e1                                      mov lr, pc
0049273c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00492740  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00492744, declared_size=96, range_size=96, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX8SetStartEv
; demangled: AnimatedFX::SetStart()
; decoder-mode: arm
00492744  70 40 2d e9                                      push {r4, r5, r6, lr}
00492748  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
0049274c  00 40 a0 e1                                      mov r4, r0
00492750  00 00 53 e3                                      cmp r3, #0
00492754  11 00 00 0a                                      beq #0x4927a0
00492758  c7 ff ff eb                                      bl #0x49267c
0049275c  00 00 50 e3                                      cmp r0, #0
00492760  0e 00 00 0a                                      beq #0x4927a0
00492764  04 00 a0 e1                                      mov r0, r4
00492768  c3 ff ff eb                                      bl #0x49267c
0049276c  00 30 90 e5                                      ldr r3, [r0]
00492770  0f e0 a0 e1                                      mov lr, pc
00492774  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00492778  10 50 90 e5                                      ldr r5, [r0, #0x10]
0049277c  04 00 a0 e1                                      mov r0, r4
00492780  bd ff ff eb                                      bl #0x49267c
00492784  00 30 90 e5                                      ldr r3, [r0]
00492788  0f e0 a0 e1                                      mov lr, pc
0049278c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00492790  05 10 a0 e1                                      mov r1, r5
00492794  00 30 90 e5                                      ldr r3, [r0]
00492798  0f e0 a0 e1                                      mov lr, pc
0049279c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004927a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004927a4, declared_size=256, range_size=256, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX14_HandleLoopEndEv
; demangled: AnimatedFX::_HandleLoopEnd()
; decoder-mode: arm
004927a4  70 40 2d e9                                      push {r4, r5, r6, lr}
004927a8  00 10 a0 e3                                      mov r1, #0
004927ac  00 40 a0 e1                                      mov r4, r0
004927b0  20 00 90 e5                                      ldr r0, [r0, #0x20]
004927b4  7c f0 f9 eb                                      bl #0x30e9ac
004927b8  00 00 50 e3                                      cmp r0, #0
004927bc  02 00 00 0a                                      beq #0x4927cc
004927c0  04 30 94 e5                                      ldr r3, [r4, #4]
004927c4  00 00 53 e3                                      cmp r3, #0
004927c8  2f 00 00 0a                                      beq #0x49288c
004927cc  14 10 94 e5                                      ldr r1, [r4, #0x14]
004927d0  00 00 51 e3                                      cmp r1, #0
004927d4  2c 00 00 ba                                      blt #0x49288c
004927d8  2c 00 00 1a                                      bne #0x492890
004927dc  04 00 a0 e1                                      mov r0, r4
004927e0  ab ff ff eb                                      bl #0x492694
004927e4  50 30 94 e5                                      ldr r3, [r4, #0x50]
004927e8  00 00 53 e3                                      cmp r3, #0
004927ec  01 20 a0 13                                      movne r2, #1
004927f0  00 20 c3 15                                      strbne r2, [r3]
004927f4  04 30 94 e5                                      ldr r3, [r4, #4]
004927f8  00 00 53 e3                                      cmp r3, #0
004927fc  22 00 00 0a                                      beq #0x49288c
00492800  50 10 94 e5                                      ldr r1, [r4, #0x50]
00492804  04 00 a0 e1                                      mov r0, r4
00492808  33 ff 2f e1                                      blx r3
0049280c  00 30 a0 e3                                      mov r3, #0
00492810  04 30 84 e5                                      str r3, [r4, #4]
00492814  04 00 a0 e1                                      mov r0, r4
00492818  97 ff ff eb                                      bl #0x49267c
0049281c  00 30 90 e5                                      ldr r3, [r0]
00492820  0f e0 a0 e1                                      mov lr, pc
00492824  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00492828  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0049282c  04 00 a0 e1                                      mov r0, r4
00492830  08 60 93 e5                                      ldr r6, [r3, #8]
00492834  90 ff ff eb                                      bl #0x49267c
00492838  00 30 90 e5                                      ldr r3, [r0]
0049283c  0f e0 a0 e1                                      mov lr, pc
00492840  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00492844  14 50 90 e5                                      ldr r5, [r0, #0x14]
00492848  04 00 a0 e1                                      mov r0, r4
0049284c  8a ff ff eb                                      bl #0x49267c
00492850  00 30 90 e5                                      ldr r3, [r0]
00492854  0f e0 a0 e1                                      mov lr, pc
00492858  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0049285c  04 30 90 e5                                      ldr r3, [r0, #4]
00492860  03 00 55 e1                                      cmp r5, r3
00492864  01 00 00 0a                                      beq #0x492870
00492868  04 00 a0 e1                                      mov r0, r4
0049286c  9c ff ff eb                                      bl #0x4926e4
00492870  04 00 a0 e1                                      mov r0, r4
00492874  80 ff ff eb                                      bl #0x49267c
00492878  06 10 a0 e1                                      mov r1, r6
0049287c  05 20 a0 e1                                      mov r2, r5
00492880  00 30 90 e5                                      ldr r3, [r0]
00492884  0f e0 a0 e1                                      mov lr, pc
00492888  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0049288c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00492890  01 10 41 e2                                      sub r1, r1, #1
00492894  04 00 a0 e1                                      mov r0, r4
00492898  14 10 84 e5                                      str r1, [r4, #0x14]
0049289c  70 40 bd e8                                      pop {r4, r5, r6, lr}
004928a0  a7 ff ff ea                                      b #0x492744

; FUNCTION 0x004928a4, declared_size=8, range_size=8, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX7_CBLoopEPN6glitch5scene19ITimelineControllerEPv
; demangled: AnimatedFX::_CBLoop(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
004928a4  01 00 a0 e1                                      mov r0, r1
004928a8  bd ff ff ea                                      b #0x4927a4

; FUNCTION 0x004928ac, declared_size=28, range_size=28, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX8SetScaleERK7Point3DIfE
; demangled: AnimatedFX::SetScale(Point3D<float> const&)
; decoder-mode: arm
004928ac  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
004928b0  00 00 53 e3                                      cmp r3, #0
004928b4  1e ff 2f 01                                      bxeq lr
004928b8  00 20 a0 e3                                      mov r2, #0
004928bc  32 20 c0 e5                                      strb r2, [r0, #0x32]
004928c0  03 00 a0 e1                                      mov r0, r3
004928c4  b8 7f ff ea                                      b #0x4727ac

; FUNCTION 0x004928c8, declared_size=136, range_size=136, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX13ForceMaterialEi
; demangled: AnimatedFX::ForceMaterial(int)
; decoder-mode: arm
004928c8  68 30 9f e5                                      ldr r3, [pc, #0x68]
004928cc  68 20 9f e5                                      ldr r2, [pc, #0x68]
004928d0  04 e0 2d e5                                      str lr, [sp, #-4]!
004928d4  03 30 8f e0                                      add r3, pc, r3
004928d8  02 20 93 e7                                      ldr r2, [r3, r2]
004928dc  0c d0 4d e2                                      sub sp, sp, #0xc
004928e0  00 20 92 e5                                      ldr r2, [r2]
004928e4  02 00 52 e3                                      cmp r2, #2
004928e8  00 30 a0 03                                      moveq r3, #0
004928ec  00 30 83 05                                      streq r3, [r3]
004928f0  01 00 00 0a                                      beq #0x4928fc
004928f4  01 00 52 e3                                      cmp r2, #1
004928f8  01 00 00 0a                                      beq #0x492904
004928fc  0c d0 8d e2                                      add sp, sp, #0xc
00492900  00 80 bd e8                                      ldm sp!, {pc}
00492904  34 00 9f e5                                      ldr r0, [pc, #0x34]
00492908  34 10 9f e5                                      ldr r1, [pc, #0x34]
0049290c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00492910  00 00 93 e7                                      ldr r0, [r3, r0]
00492914  30 30 9f e5                                      ldr r3, [pc, #0x30]
00492918  47 cf a0 e3                                      mov ip, #0x11c
0049291c  01 10 8f e0                                      add r1, pc, r1
00492920  02 20 8f e0                                      add r2, pc, r2
00492924  03 30 8f e0                                      add r3, pc, r3
00492928  a8 00 80 e2                                      add r0, r0, #0xa8
0049292c  00 c0 8d e5                                      str ip, [sp]
00492930  b3 ed f9 eb                                      bl #0x30e004
00492934  f0 ff ff ea                                      b #0x4928fc
; mapping-symbol data/literal pool
00492938  bc 21 50 00 c0 39 00 00 c0 19 00 00 bc ba 42 00  .byte 0xbc, 0x21, 0x50, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xbc, 0xba, 0x42, 0x00
00492948  48 bc 42 00 c4 26 44 00                          .byte 0x48, 0xbc, 0x42, 0x00, 0xc4, 0x26, 0x44, 0x00

; FUNCTION 0x00492950, declared_size=28, range_size=28, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFXD0Ev
; demangled: AnimatedFX::~AnimatedFX()
; decoder-mode: arm
00492950  10 40 2d e9                                      push {r4, lr}
00492954  00 40 a0 e1                                      mov r4, r0
00492958  bf fe ff eb                                      bl #0x49245c
0049295c  04 00 a0 e1                                      mov r0, r4
00492960  b6 f6 f9 eb                                      bl #0x310440
00492964  04 00 a0 e1                                      mov r0, r4
00492968  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0049296c, declared_size=308, range_size=308, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX4LoadEPKcS1_fib
; demangled: AnimatedFX::Load(char const*, char const*, float, int, bool)
; decoder-mode: arm
0049296c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00492970  1c 51 9f e5                                      ldr r5, [pc, #0x11c]
00492974  1c a1 9f e5                                      ldr sl, [pc, #0x11c]
00492978  48 d0 4d e2                                      sub sp, sp, #0x48
0049297c  05 50 8f e0                                      add r5, pc, r5
00492980  0a c0 95 e7                                      ldr ip, [r5, sl]
00492984  00 40 a0 e1                                      mov r4, r0
00492988  2c 60 8d e2                                      add r6, sp, #0x2c
0049298c  00 c0 9c e5                                      ldr ip, [ip]
00492990  20 30 80 e5                                      str r3, [r0, #0x20]
00492994  68 30 9d e5                                      ldr r3, [sp, #0x68]
00492998  02 80 a0 e1                                      mov r8, r2
0049299c  0c 10 80 e5                                      str r1, [r0, #0xc]
004929a0  14 30 80 e5                                      str r3, [r0, #0x14]
004929a4  14 70 8d e2                                      add r7, sp, #0x14
004929a8  10 20 84 e5                                      str r2, [r4, #0x10]
004929ac  06 00 a0 e1                                      mov r0, r6
004929b0  10 20 8d e2                                      add r2, sp, #0x10
004929b4  44 c0 8d e5                                      str ip, [sp, #0x44]
004929b8  6c 90 dd e5                                      ldrb sb, [sp, #0x6c]
004929bc  ca 05 fa eb                                      bl #0x3140ec
004929c0  08 10 a0 e1                                      mov r1, r8
004929c4  0c 20 8d e2                                      add r2, sp, #0xc
004929c8  07 00 a0 e1                                      mov r0, r7
004929cc  c6 05 fa eb                                      bl #0x3140ec
004929d0  00 10 a0 e3                                      mov r1, #0
004929d4  ac 00 a0 e3                                      mov r0, #0xac
004929d8  e4 f6 f9 eb                                      bl #0x310570
004929dc  07 30 a0 e1                                      mov r3, r7
004929e0  00 10 a0 e3                                      mov r1, #0
004929e4  06 20 a0 e1                                      mov r2, r6
004929e8  00 80 a0 e1                                      mov r8, r0
004929ec  06 80 ff eb                                      bl #0x472a0c
004929f0  07 00 a0 e1                                      mov r0, r7
004929f4  2c 80 84 e5                                      str r8, [r4, #0x2c]
004929f8  eb 03 fa eb                                      bl #0x3139ac
004929fc  06 00 a0 e1                                      mov r0, r6
00492a00  e9 03 fa eb                                      bl #0x3139ac
00492a04  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00492a08  00 00 53 e3                                      cmp r3, #0
00492a0c  14 00 00 0a                                      beq #0x492a64
00492a10  38 30 93 e5                                      ldr r3, [r3, #0x38]
00492a14  80 20 9f e5                                      ldr r2, [pc, #0x80]
00492a18  00 60 a0 e3                                      mov r6, #0
00492a1c  00 c0 93 e5                                      ldr ip, [r3]
00492a20  02 10 95 e7                                      ldr r1, [r5, r2]
00492a24  03 00 a0 e1                                      mov r0, r3
00492a28  04 20 a0 e1                                      mov r2, r4
00492a2c  06 30 a0 e1                                      mov r3, r6
00492a30  00 60 8d e5                                      str r6, [sp]
00492a34  0f e0 a0 e1                                      mov lr, pc
00492a38  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
00492a3c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00492a40  06 20 a0 e1                                      mov r2, r6
00492a44  20 10 94 e5                                      ldr r1, [r4, #0x20]
00492a48  38 30 93 e5                                      ldr r3, [r3, #0x38]
00492a4c  03 00 a0 e1                                      mov r0, r3
00492a50  00 30 93 e5                                      ldr r3, [r3]
00492a54  0f e0 a0 e1                                      mov lr, pc
00492a58  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00492a5c  06 00 59 e1                                      cmp sb, r6
00492a60  06 00 00 1a                                      bne #0x492a80
00492a64  0a 30 95 e7                                      ldr r3, [r5, sl]
00492a68  44 20 9d e5                                      ldr r2, [sp, #0x44]
00492a6c  00 30 93 e5                                      ldr r3, [r3]
00492a70  03 00 52 e1                                      cmp r2, r3
00492a74  05 00 00 1a                                      bne #0x492a90
00492a78  48 d0 8d e2                                      add sp, sp, #0x48
00492a7c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00492a80  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00492a84  08 00 93 e5                                      ldr r0, [r3, #8]
00492a88  42 ee 01 eb                                      bl #0x50e398
00492a8c  f4 ff ff ea                                      b #0x492a64
00492a90  1e ee f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00492a94  14 21 50 00 ac 40 00 00 3c 2d 00 00              .byte 0x14, 0x21, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0x3c, 0x2d, 0x00, 0x00

; FUNCTION 0x00492aa0, declared_size=1004, range_size=1004, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX11SyncIrrDataEb
; demangled: AnimatedFX::SyncIrrData(bool)
; decoder-mode: arm
00492aa0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00492aa4  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
00492aa8  d0 83 9f e5                                      ldr r8, [pc, #0x3d0]
00492aac  74 d0 4d e2                                      sub sp, sp, #0x74
00492ab0  00 00 53 e3                                      cmp r3, #0
00492ab4  00 40 a0 e1                                      mov r4, r0
00492ab8  08 80 8f e0                                      add r8, pc, r8
00492abc  4f 00 00 0a                                      beq #0x492c00
00492ac0  30 30 d0 e5                                      ldrb r3, [r0, #0x30]
00492ac4  34 70 90 e5                                      ldr r7, [r0, #0x34]
00492ac8  38 60 90 e5                                      ldr r6, [r0, #0x38]
00492acc  00 00 53 e3                                      cmp r3, #0
00492ad0  3c 50 90 e5                                      ldr r5, [r0, #0x3c]
00492ad4  01 90 a0 13                                      movne sb, #1
00492ad8  4a 00 00 0a                                      beq #0x492c08
00492adc  50 20 94 e5                                      ldr r2, [r4, #0x50]
00492ae0  00 00 52 e3                                      cmp r2, #0
00492ae4  01 00 00 0a                                      beq #0x492af0
00492ae8  00 00 51 e3                                      cmp r1, #0
00492aec  49 00 00 1a                                      bne #0x492c18
00492af0  28 00 94 e5                                      ldr r0, [r4, #0x28]
00492af4  00 00 50 e3                                      cmp r0, #0
00492af8  32 00 00 0a                                      beq #0x492bc8
00492afc  b6 02 fc eb                                      bl #0x3935dc
00492b00  00 a0 a0 e1                                      mov sl, r0
00492b04  00 10 9a e5                                      ldr r1, [sl]
00492b08  07 00 a0 e1                                      mov r0, r7
00492b0c  24 f0 f9 eb                                      bl #0x30eba4
00492b10  04 10 9a e5                                      ldr r1, [sl, #4]
00492b14  00 70 a0 e1                                      mov r7, r0
00492b18  06 00 a0 e1                                      mov r0, r6
00492b1c  20 f0 f9 eb                                      bl #0x30eba4
00492b20  08 10 9a e5                                      ldr r1, [sl, #8]
00492b24  00 60 a0 e1                                      mov r6, r0
00492b28  05 00 a0 e1                                      mov r0, r5
00492b2c  1c f0 f9 eb                                      bl #0x30eba4
00492b30  00 00 59 e3                                      cmp sb, #0
00492b34  00 50 a0 e1                                      mov r5, r0
00492b38  1f 00 00 0a                                      beq #0x492bbc
00492b3c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00492b40  d8 22 93 e5                                      ldr r2, [r3, #0x2d8]
00492b44  00 00 52 e3                                      cmp r2, #0
00492b48  b8 00 00 0a                                      beq #0x492e30
00492b4c  08 30 92 e5                                      ldr r3, [r2, #8]
00492b50  03 00 a0 e1                                      mov r0, r3
00492b54  00 30 93 e5                                      ldr r3, [r3]
00492b58  0f e0 a0 e1                                      mov lr, pc
00492b5c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00492b60  00 10 a0 e1                                      mov r1, r0
00492b64  64 00 8d e2                                      add r0, sp, #0x64
00492b68  13 80 fe eb                                      bl #0x432bbc
00492b6c  35 1a 0f e3                                      movw r1, #0xfa35
00492b70  68 00 9d e5                                      ldr r0, [sp, #0x68]
00492b74  8e 1c 43 e3                                      movt r1, #0x3c8e
00492b78  7b f0 f9 eb                                      bl #0x30ed6c
00492b7c  35 1a 0f e3                                      movw r1, #0xfa35
00492b80  00 b0 a0 e1                                      mov fp, r0
00492b84  8e 1c 43 e3                                      movt r1, #0x3c8e
00492b88  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00492b8c  76 f0 f9 eb                                      bl #0x30ed6c
00492b90  35 1a 0f e3                                      movw r1, #0xfa35
00492b94  00 a0 a0 e1                                      mov sl, r0
00492b98  8e 1c 43 e3                                      movt r1, #0x3c8e
00492b9c  64 00 9d e5                                      ldr r0, [sp, #0x64]
00492ba0  71 f0 f9 eb                                      bl #0x30ed6c
00492ba4  44 b0 84 e5                                      str fp, [r4, #0x44]
00492ba8  40 00 84 e5                                      str r0, [r4, #0x40]
00492bac  48 a0 84 e5                                      str sl, [r4, #0x48]
00492bb0  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00492bb4  40 10 84 e2                                      add r1, r4, #0x40
00492bb8  2d 7f ff eb                                      bl #0x472874
00492bbc  32 30 d4 e5                                      ldrb r3, [r4, #0x32]
00492bc0  00 00 53 e3                                      cmp r3, #0
00492bc4  21 00 00 1a                                      bne #0x492c50
00492bc8  4c 30 d4 e5                                      ldrb r3, [r4, #0x4c]
00492bcc  00 00 53 e3                                      cmp r3, #0
00492bd0  3f 00 00 1a                                      bne #0x492cd4
00492bd4  28 c0 94 e5                                      ldr ip, [r4, #0x28]
00492bd8  00 00 5c e3                                      cmp ip, #0
00492bdc  43 00 00 0a                                      beq #0x492cf0
00492be0  00 00 59 e3                                      cmp sb, #0
00492be4  3e 00 00 0a                                      beq #0x492ce4
00492be8  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00492bec  1c 10 8d e2                                      add r1, sp, #0x1c
00492bf0  1c 70 8d e5                                      str r7, [sp, #0x1c]
00492bf4  20 60 8d e5                                      str r6, [sp, #0x20]
00492bf8  24 50 8d e5                                      str r5, [sp, #0x24]
00492bfc  08 78 ff eb                                      bl #0x470c24
00492c00  74 d0 8d e2                                      add sp, sp, #0x74
00492c04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00492c08  00 00 51 e3                                      cmp r1, #0
00492c0c  01 90 a0 01                                      moveq sb, r1
00492c10  31 90 d0 15                                      ldrbne sb, [r0, #0x31]
00492c14  b0 ff ff ea                                      b #0x492adc
00492c18  31 30 d4 e5                                      ldrb r3, [r4, #0x31]
00492c1c  00 00 53 e3                                      cmp r3, #0
00492c20  b2 ff ff 0a                                      beq #0x492af0
00492c24  2c 30 92 e5                                      ldr r3, [r2, #0x2c]
00492c28  00 00 53 e3                                      cmp r3, #0
00492c2c  03 00 00 0a                                      beq #0x492c40
00492c30  03 20 a0 e1                                      mov r2, r3
00492c34  2c 30 92 e5                                      ldr r3, [r2, #0x2c]
00492c38  00 00 53 e3                                      cmp r3, #0
00492c3c  fb ff ff 1a                                      bne #0x492c30
00492c40  04 30 92 e5                                      ldr r3, [r2, #4]
00492c44  00 00 53 e3                                      cmp r3, #0
00492c48  00 90 a0 c3                                      movgt sb, #0
00492c4c  a7 ff ff ea                                      b #0x492af0
00492c50  2c 32 9f e5                                      ldr r3, [pc, #0x22c]
00492c54  28 20 94 e5                                      ldr r2, [r4, #0x28]
00492c58  03 30 98 e7                                      ldr r3, [r8, r3]
00492c5c  02 00 a0 e1                                      mov r0, r2
00492c60  08 c0 93 e5                                      ldr ip, [r3, #8]
00492c64  00 10 93 e5                                      ldr r1, [r3]
00492c68  04 30 93 e5                                      ldr r3, [r3, #4]
00492c6c  60 c0 8d e5                                      str ip, [sp, #0x60]
00492c70  58 10 8d e5                                      str r1, [sp, #0x58]
00492c74  5c 30 8d e5                                      str r3, [sp, #0x5c]
00492c78  00 30 92 e5                                      ldr r3, [r2]
00492c7c  0f e0 a0 e1                                      mov lr, pc
00492c80  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00492c84  01 00 70 e3                                      cmn r0, #1
00492c88  60 00 00 0a                                      beq #0x492e10
00492c8c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00492c90  4c 00 8d e2                                      add r0, sp, #0x4c
00492c94  03 10 a0 e1                                      mov r1, r3
00492c98  00 30 93 e5                                      ldr r3, [r3]
00492c9c  0f e0 a0 e1                                      mov lr, pc
00492ca0  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00492ca4  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00492ca8  58 30 8d e5                                      str r3, [sp, #0x58]
00492cac  50 30 9d e5                                      ldr r3, [sp, #0x50]
00492cb0  5c 30 8d e5                                      str r3, [sp, #0x5c]
00492cb4  54 30 9d e5                                      ldr r3, [sp, #0x54]
00492cb8  60 30 8d e5                                      str r3, [sp, #0x60]
00492cbc  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00492cc0  58 10 8d e2                                      add r1, sp, #0x58
00492cc4  b8 7e ff eb                                      bl #0x4727ac
00492cc8  4c 30 d4 e5                                      ldrb r3, [r4, #0x4c]
00492ccc  00 00 53 e3                                      cmp r3, #0
00492cd0  bf ff ff 0a                                      beq #0x492bd4
00492cd4  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00492cd8  40 10 84 e2                                      add r1, r4, #0x40
00492cdc  e4 7e ff eb                                      bl #0x472874
00492ce0  c0 ff ff ea                                      b #0x492be8
00492ce4  31 30 d4 e5                                      ldrb r3, [r4, #0x31]
00492ce8  00 00 53 e3                                      cmp r3, #0
00492cec  bd ff ff 1a                                      bne #0x492be8
00492cf0  00 a0 a0 e3                                      mov sl, #0
00492cf4  00 00 5c e3                                      cmp ip, #0
00492cf8  40 a0 8d e5                                      str sl, [sp, #0x40]
00492cfc  44 a0 8d e5                                      str sl, [sp, #0x44]
00492d00  48 a0 8d e5                                      str sl, [sp, #0x48]
00492d04  50 00 00 0a                                      beq #0x492e4c
00492d08  ec 01 9c e5                                      ldr r0, [ip, #0x1ec]
00492d0c  40 00 8d e5                                      str r0, [sp, #0x40]
00492d10  f0 91 9c e5                                      ldr sb, [ip, #0x1f0]
00492d14  00 10 a0 e1                                      mov r1, r0
00492d18  44 90 8d e5                                      str sb, [sp, #0x44]
00492d1c  f4 b1 9c e5                                      ldr fp, [ip, #0x1f4]
00492d20  48 b0 8d e5                                      str fp, [sp, #0x48]
00492d24  10 f0 f9 eb                                      bl #0x30ed6c
00492d28  09 10 a0 e1                                      mov r1, sb
00492d2c  00 30 a0 e1                                      mov r3, r0
00492d30  09 00 a0 e1                                      mov r0, sb
00492d34  14 30 8d e5                                      str r3, [sp, #0x14]
00492d38  0b f0 f9 eb                                      bl #0x30ed6c
00492d3c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00492d40  00 10 a0 e1                                      mov r1, r0
00492d44  03 00 a0 e1                                      mov r0, r3
00492d48  95 ef f9 eb                                      bl #0x30eba4
00492d4c  0b 10 a0 e1                                      mov r1, fp
00492d50  00 90 a0 e1                                      mov sb, r0
00492d54  0b 00 a0 e1                                      mov r0, fp
00492d58  03 f0 f9 eb                                      bl #0x30ed6c
00492d5c  00 10 a0 e1                                      mov r1, r0
00492d60  09 00 a0 e1                                      mov r0, sb
00492d64  8e ef f9 eb                                      bl #0x30eba4
00492d68  0a 10 a0 e1                                      mov r1, sl
00492d6c  86 ec f9 eb                                      bl #0x30df8c
00492d70  00 00 50 e3                                      cmp r0, #0
00492d74  9b ff ff 0a                                      beq #0x492be8
00492d78  08 31 9f e5                                      ldr r3, [pc, #0x108]
00492d7c  00 c0 a0 e3                                      mov ip, #0
00492d80  0c 20 a0 e1                                      mov r2, ip
00492d84  03 00 98 e7                                      ldr r0, [r8, r3]
00492d88  28 10 8d e2                                      add r1, sp, #0x28
00492d8c  40 30 8d e2                                      add r3, sp, #0x40
00492d90  00 c0 8d e5                                      str ip, [sp]
00492d94  04 c0 8d e5                                      str ip, [sp, #4]
00492d98  08 c0 8d e5                                      str ip, [sp, #8]
00492d9c  28 70 8d e5                                      str r7, [sp, #0x28]
00492da0  2c 60 8d e5                                      str r6, [sp, #0x2c]
00492da4  30 50 8d e5                                      str r5, [sp, #0x30]
00492da8  d6 49 02 eb                                      bl #0x525508
00492dac  40 00 9d e5                                      ldr r0, [sp, #0x40]
00492db0  00 10 a0 e1                                      mov r1, r0
00492db4  ec ef f9 eb                                      bl #0x30ed6c
00492db8  00 80 a0 e1                                      mov r8, r0
00492dbc  44 00 9d e5                                      ldr r0, [sp, #0x44]
00492dc0  00 10 a0 e1                                      mov r1, r0
00492dc4  e8 ef f9 eb                                      bl #0x30ed6c
00492dc8  00 10 a0 e1                                      mov r1, r0
00492dcc  08 00 a0 e1                                      mov r0, r8
00492dd0  73 ef f9 eb                                      bl #0x30eba4
00492dd4  00 80 a0 e1                                      mov r8, r0
00492dd8  48 00 9d e5                                      ldr r0, [sp, #0x48]
00492ddc  00 10 a0 e1                                      mov r1, r0
00492de0  e1 ef f9 eb                                      bl #0x30ed6c
00492de4  00 10 a0 e1                                      mov r1, r0
00492de8  08 00 a0 e1                                      mov r0, r8
00492dec  6c ef f9 eb                                      bl #0x30eba4
00492df0  0a 10 a0 e1                                      mov r1, sl
00492df4  64 ec f9 eb                                      bl #0x30df8c
00492df8  00 00 50 e3                                      cmp r0, #0
00492dfc  fe 35 a0 13                                      movne r3, #0x3f800000
00492e00  44 a0 8d 15                                      strne sl, [sp, #0x44]
00492e04  40 a0 8d 15                                      strne sl, [sp, #0x40]
00492e08  48 30 8d 15                                      strne r3, [sp, #0x48]
00492e0c  75 ff ff ea                                      b #0x492be8
00492e10  28 30 94 e5                                      ldr r3, [r4, #0x28]
00492e14  20 21 93 e5                                      ldr r2, [r3, #0x120]
00492e18  58 20 8d e5                                      str r2, [sp, #0x58]
00492e1c  24 21 93 e5                                      ldr r2, [r3, #0x124]
00492e20  5c 20 8d e5                                      str r2, [sp, #0x5c]
00492e24  28 31 93 e5                                      ldr r3, [r3, #0x128]
00492e28  60 30 8d e5                                      str r3, [sp, #0x60]
00492e2c  a2 ff ff ea                                      b #0x492cbc
00492e30  6c 21 93 e5                                      ldr r2, [r3, #0x16c]
00492e34  40 20 84 e5                                      str r2, [r4, #0x40]
00492e38  70 21 93 e5                                      ldr r2, [r3, #0x170]
00492e3c  44 20 84 e5                                      str r2, [r4, #0x44]
00492e40  74 31 93 e5                                      ldr r3, [r3, #0x174]
00492e44  48 30 84 e5                                      str r3, [r4, #0x48]
00492e48  58 ff ff ea                                      b #0x492bb0
00492e4c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00492e50  0c 20 a0 e1                                      mov r2, ip
00492e54  34 10 8d e2                                      add r1, sp, #0x34
00492e58  03 00 98 e7                                      ldr r0, [r8, r3]
00492e5c  40 30 8d e2                                      add r3, sp, #0x40
00492e60  34 70 8d e5                                      str r7, [sp, #0x34]
00492e64  38 60 8d e5                                      str r6, [sp, #0x38]
00492e68  3c 50 8d e5                                      str r5, [sp, #0x3c]
00492e6c  00 c0 8d e5                                      str ip, [sp]
00492e70  04 c0 8d e5                                      str ip, [sp, #4]
00492e74  08 c0 8d e5                                      str ip, [sp, #8]
00492e78  a2 49 02 eb                                      bl #0x525508
00492e7c  59 ff ff ea                                      b #0x492be8
; mapping-symbol data/literal pool
00492e80  d8 1f 50 00 2c 3f 00 00 04 12 00 00              .byte 0xd8, 0x1f, 0x50, 0x00, 0x2c, 0x3f, 0x00, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x00492e8c, declared_size=100, range_size=100, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX9SetAnimFXEbbbfiPN15VisualFXManager13AnimFXSetDataEPFvPS_S2_E
; demangled: AnimatedFX::SetAnimFX(bool, bool, bool, float, int, VisualFXManager::AnimFXSetData*, void (*)(AnimatedFX*, VisualFXManager::AnimFXSetData*))
; decoder-mode: arm
00492e8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00492e90  00 40 a0 e1                                      mov r4, r0
00492e94  02 50 a0 e1                                      mov r5, r2
00492e98  30 10 c0 e5                                      strb r1, [r0, #0x30]
00492e9c  00 10 a0 e3                                      mov r1, #0
00492ea0  03 60 a0 e1                                      mov r6, r3
00492ea4  fd fe ff eb                                      bl #0x492aa0
00492ea8  04 00 a0 e1                                      mov r0, r4
00492eac  01 10 a0 e3                                      mov r1, #1
00492eb0  31 50 c4 e5                                      strb r5, [r4, #0x31]
00492eb4  f9 fe ff eb                                      bl #0x492aa0
00492eb8  04 00 a0 e1                                      mov r0, r4
00492ebc  00 10 a0 e3                                      mov r1, #0
00492ec0  32 60 c4 e5                                      strb r6, [r4, #0x32]
00492ec4  f5 fe ff eb                                      bl #0x492aa0
00492ec8  04 00 a0 e1                                      mov r0, r4
00492ecc  10 10 9d e5                                      ldr r1, [sp, #0x10]
00492ed0  76 fd ff eb                                      bl #0x4924b0
00492ed4  18 30 9d e5                                      ldr r3, [sp, #0x18]
00492ed8  50 30 84 e5                                      str r3, [r4, #0x50]
00492edc  14 30 9d e5                                      ldr r3, [sp, #0x14]
00492ee0  14 30 84 e5                                      str r3, [r4, #0x14]
00492ee4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00492ee8  04 30 84 e5                                      str r3, [r4, #4]
00492eec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00492ef0, declared_size=76, range_size=76, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX10SetVisibleEb
; demangled: AnimatedFX::SetVisible(bool)
; decoder-mode: arm
00492ef0  10 40 2d e9                                      push {r4, lr}
00492ef4  24 20 d0 e5                                      ldrb r2, [r0, #0x24]
00492ef8  00 40 a0 e1                                      mov r4, r0
00492efc  01 00 52 e1                                      cmp r2, r1
00492f00  0c 00 00 0a                                      beq #0x492f38
00492f04  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00492f08  24 10 c4 e5                                      strb r1, [r4, #0x24]
00492f0c  00 00 50 e3                                      cmp r0, #0
00492f10  04 00 00 0a                                      beq #0x492f28
00492f14  13 79 ff eb                                      bl #0x471368
00492f18  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00492f1c  24 20 d4 e5                                      ldrb r2, [r4, #0x24]
00492f20  08 30 93 e5                                      ldr r3, [r3, #8]
00492f24  00 22 c3 e5                                      strb r2, [r3, #0x200]
00492f28  04 00 a0 e1                                      mov r0, r4
00492f2c  00 10 a0 e3                                      mov r1, #0
00492f30  10 40 bd e8                                      pop {r4, lr}
00492f34  d9 fe ff ea                                      b #0x492aa0
00492f38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00492f3c, declared_size=44, range_size=44, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX11SetRotationERK7Point3DIfE
; demangled: AnimatedFX::SetRotation(Point3D<float> const&)
; decoder-mode: arm
00492f3c  01 20 a0 e1                                      mov r2, r1
00492f40  00 10 91 e5                                      ldr r1, [r1]
00492f44  40 10 80 e5                                      str r1, [r0, #0x40]
00492f48  04 c0 92 e5                                      ldr ip, [r2, #4]
00492f4c  00 10 a0 e3                                      mov r1, #0
00492f50  44 c0 80 e5                                      str ip, [r0, #0x44]
00492f54  08 20 92 e5                                      ldr r2, [r2, #8]
00492f58  01 c0 a0 e3                                      mov ip, #1
00492f5c  4c c0 c0 e5                                      strb ip, [r0, #0x4c]
00492f60  48 20 80 e5                                      str r2, [r0, #0x48]
00492f64  cd fe ff ea                                      b #0x492aa0

; FUNCTION 0x00492f68, declared_size=456, range_size=456, mode=arm
; class-group: AnimatedFX
; alias: _ZN10AnimatedFX6UpdateEv
; demangled: AnimatedFX::Update()
; decoder-mode: arm
00492f68  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00492f6c  a4 51 9f e5                                      ldr r5, [pc, #0x1a4]
00492f70  a4 61 9f e5                                      ldr r6, [pc, #0x1a4]
00492f74  28 30 90 e5                                      ldr r3, [r0, #0x28]
00492f78  05 50 8f e0                                      add r5, pc, r5
00492f7c  06 20 95 e7                                      ldr r2, [r5, r6]
00492f80  44 d0 4d e2                                      sub sp, sp, #0x44
00492f84  00 00 53 e3                                      cmp r3, #0
00492f88  00 20 92 e5                                      ldr r2, [r2]
00492f8c  00 40 a0 e1                                      mov r4, r0
00492f90  3c 20 8d e5                                      str r2, [sp, #0x3c]
00492f94  07 00 00 0a                                      beq #0x492fb8
00492f98  03 00 a0 e1                                      mov r0, r3
00492f9c  00 30 93 e5                                      ldr r3, [r3]
00492fa0  0f e0 a0 e1                                      mov lr, pc
00492fa4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00492fa8  00 00 50 e3                                      cmp r0, #0
00492fac  48 00 00 0a                                      beq #0x4930d4
00492fb0  00 30 a0 e3                                      mov r3, #0
00492fb4  28 30 84 e5                                      str r3, [r4, #0x28]
00492fb8  1c 70 94 e5                                      ldr r7, [r4, #0x1c]
00492fbc  00 00 57 e3                                      cmp r7, #0
00492fc0  07 00 00 ba                                      blt #0x492fe4
00492fc4  54 31 9f e5                                      ldr r3, [pc, #0x154]
00492fc8  03 00 95 e7                                      ldr r0, [r5, r3]
00492fcc  a6 31 fa eb                                      bl #0x31f66c
00492fd0  07 00 60 e0                                      rsb r0, r0, r7
00492fd4  00 00 50 e3                                      cmp r0, #0
00492fd8  00 30 a0 d3                                      movle r3, #0
00492fdc  1c 00 84 e5                                      str r0, [r4, #0x1c]
00492fe0  14 30 84 d5                                      strle r3, [r4, #0x14]
00492fe4  28 30 94 e5                                      ldr r3, [r4, #0x28]
00492fe8  00 00 53 e3                                      cmp r3, #0
00492fec  02 00 00 0a                                      beq #0x492ffc
00492ff0  84 10 d3 e5                                      ldrb r1, [r3, #0x84]
00492ff4  00 00 51 e3                                      cmp r1, #0
00492ff8  32 00 00 0a                                      beq #0x4930c8
00492ffc  24 30 d4 e5                                      ldrb r3, [r4, #0x24]
00493000  00 00 53 e3                                      cmp r3, #0
00493004  1f 00 00 0a                                      beq #0x493088
00493008  50 30 94 e5                                      ldr r3, [r4, #0x50]
0049300c  00 00 53 e3                                      cmp r3, #0
00493010  35 00 00 0a                                      beq #0x4930ec
00493014  08 81 9f e5                                      ldr r8, [pc, #0x108]
00493018  24 70 8d e2                                      add r7, sp, #0x24
0049301c  08 a0 95 e7                                      ldr sl, [r5, r8]
00493020  0a 00 a0 e1                                      mov r0, sl
00493024  17 92 fa eb                                      bl #0x337888
00493028  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
0049302c  08 20 8d e2                                      add r2, sp, #8
00493030  07 00 a0 e1                                      mov r0, r7
00493034  01 10 8f e0                                      add r1, pc, r1
00493038  2b 04 fa eb                                      bl #0x3140ec
0049303c  0a 00 a0 e1                                      mov r0, sl
00493040  07 10 a0 e1                                      mov r1, r7
00493044  8f 92 fa eb                                      bl #0x337a88
00493048  07 00 a0 e1                                      mov r0, r7
0049304c  56 02 fa eb                                      bl #0x3139ac
00493050  08 80 95 e7                                      ldr r8, [r5, r8]
00493054  0c 70 8d e2                                      add r7, sp, #0xc
00493058  08 00 a0 e1                                      mov r0, r8
0049305c  09 92 fa eb                                      bl #0x337888
00493060  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00493064  04 20 8d e2                                      add r2, sp, #4
00493068  07 00 a0 e1                                      mov r0, r7
0049306c  01 10 8f e0                                      add r1, pc, r1
00493070  1d 04 fa eb                                      bl #0x3140ec
00493074  08 00 a0 e1                                      mov r0, r8
00493078  07 10 a0 e1                                      mov r1, r7
0049307c  81 92 fa eb                                      bl #0x337a88
00493080  07 00 a0 e1                                      mov r0, r7
00493084  48 02 fa eb                                      bl #0x3139ac
00493088  04 00 a0 e1                                      mov r0, r4
0049308c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00493090  06 fd ff eb                                      bl #0x4924b0
00493094  18 70 d4 e5                                      ldrb r7, [r4, #0x18]
00493098  00 00 57 e3                                      cmp r7, #0
0049309c  02 00 00 1a                                      bne #0x4930ac
004930a0  24 30 d4 e5                                      ldrb r3, [r4, #0x24]
004930a4  00 00 53 e3                                      cmp r3, #0
004930a8  11 00 00 1a                                      bne #0x4930f4
004930ac  06 30 95 e7                                      ldr r3, [r5, r6]
004930b0  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
004930b4  00 30 93 e5                                      ldr r3, [r3]
004930b8  03 00 52 e1                                      cmp r2, r3
004930bc  14 00 00 1a                                      bne #0x493114
004930c0  44 d0 8d e2                                      add sp, sp, #0x44
004930c4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004930c8  04 00 a0 e1                                      mov r0, r4
004930cc  73 fe ff eb                                      bl #0x492aa0
004930d0  c9 ff ff ea                                      b #0x492ffc
004930d4  28 30 94 e5                                      ldr r3, [r4, #0x28]
004930d8  81 30 d3 e5                                      ldrb r3, [r3, #0x81]
004930dc  00 00 53 e3                                      cmp r3, #0
004930e0  00 30 a0 13                                      movne r3, #0
004930e4  28 30 84 15                                      strne r3, [r4, #0x28]
004930e8  b2 ff ff ea                                      b #0x492fb8
004930ec  30 80 9f e5                                      ldr r8, [pc, #0x30]
004930f0  d6 ff ff ea                                      b #0x493050
004930f4  04 00 a0 e1                                      mov r0, r4
004930f8  f8 fc ff eb                                      bl #0x4924e0
004930fc  00 00 50 e3                                      cmp r0, #0
00493100  e9 ff ff 0a                                      beq #0x4930ac
00493104  04 00 a0 e1                                      mov r0, r4
00493108  07 10 a0 e1                                      mov r1, r7
0049310c  77 ff ff eb                                      bl #0x492ef0
00493110  e5 ff ff ea                                      b #0x4930ac
00493114  7d ec f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00493118  18 1b 50 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0x18, 0x1b, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
00493128  fc 1f 44 00 c4 1f 44 00                          .byte 0xfc, 0x1f, 0x44, 0x00, 0xc4, 0x1f, 0x44, 0x00
