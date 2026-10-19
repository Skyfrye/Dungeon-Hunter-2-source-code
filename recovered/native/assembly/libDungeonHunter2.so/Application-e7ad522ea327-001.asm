; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f4f4, declared_size=16, range_size=16, mode=arm
; class-group: Application
; alias: _ZN11Application10InitIPhoneEPN6glitch7IDeviceEfffff
; demangled: Application::InitIPhone(glitch::IDevice*, float, float, float, float, float)
; decoder-mode: arm
0031f4f4  01 20 a0 e3                                      mov r2, #1
0031f4f8  00 30 a0 e3                                      mov r3, #0
0031f4fc  00 20 c3 e5                                      strb r2, [r3]
0031f500  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f504, declared_size=80, range_size=80, mode=arm
; class-group: Application
; alias: _ZN11Application12IsInitFinishEv
; demangled: Application::IsInitFinish()
; decoder-mode: arm
0031f504  18 20 90 e5                                      ldr r2, [r0, #0x18]
0031f508  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0031f50c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0031f510  10 20 92 e5                                      ldr r2, [r2, #0x10]
0031f514  03 30 8f e0                                      add r3, pc, r3
0031f518  02 10 61 e0                                      rsb r1, r1, r2
0031f51c  a1 11 b0 e1                                      lsrs r1, r1, #3
0031f520  07 00 00 0a                                      beq #0x31f544
0031f524  08 20 12 e5                                      ldr r2, [r2, #-8]
0031f528  00 00 52 e3                                      cmp r2, #0
0031f52c  04 00 00 0a                                      beq #0x31f544
0031f530  18 10 9f e5                                      ldr r1, [pc, #0x18]
0031f534  01 00 93 e7                                      ldr r0, [r3, r1]
0031f538  00 00 52 e0                                      subs r0, r2, r0
0031f53c  01 00 a0 13                                      movne r0, #1
0031f540  1e ff 2f e1                                      bx lr
0031f544  00 00 a0 e3                                      mov r0, #0
0031f548  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031f54c  7c 55 67 00 e8 13 00 00                          .byte 0x7c, 0x55, 0x67, 0x00, 0xe8, 0x13, 0x00, 0x00

; FUNCTION 0x0031f554, declared_size=8, range_size=8, mode=arm
; class-group: Application
; alias: _ZN11Application19IsInIGPOrGameCenterEv
; demangled: Application::IsInIGPOrGameCenter()
; decoder-mode: arm
0031f554  00 00 a0 e3                                      mov r0, #0
0031f558  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f55c, declared_size=56, range_size=56, mode=arm
; class-group: Application
; alias: _ZN11Application11CleanGlitchEv
; demangled: Application::CleanGlitch()
; decoder-mode: arm
0031f55c  28 30 9f e5                                      ldr r3, [pc, #0x28]
0031f560  28 20 9f e5                                      ldr r2, [pc, #0x28]
0031f564  10 40 2d e9                                      push {r4, lr}
0031f568  03 30 8f e0                                      add r3, pc, r3
0031f56c  02 20 93 e7                                      ldr r2, [r3, r2]
0031f570  10 30 92 e5                                      ldr r3, [r2, #0x10]
0031f574  10 30 93 e5                                      ldr r3, [r3, #0x10]
0031f578  03 00 a0 e1                                      mov r0, r3
0031f57c  00 30 93 e5                                      ldr r3, [r3]
0031f580  0f e0 a0 e1                                      mov lr, pc
0031f584  ac f0 93 e5                                      ldr pc, [r3, #0xac]
0031f588  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031f58c  28 55 67 00 f4 37 00 00                          .byte 0x28, 0x55, 0x67, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0031f594, declared_size=32, range_size=32, mode=arm
; class-group: Application
; alias: _ZNK11Application15GetCurrentLevelEv
; demangled: Application::GetCurrentLevel() const
; decoder-mode: arm
0031f594  10 30 9f e5                                      ldr r3, [pc, #0x10]
0031f598  10 20 9f e5                                      ldr r2, [pc, #0x10]
0031f59c  03 30 8f e0                                      add r3, pc, r3
0031f5a0  02 20 93 e7                                      ldr r2, [r3, r2]
0031f5a4  00 00 92 e5                                      ldr r0, [r2]
0031f5a8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031f5ac  f4 54 67 00 64 1d 00 00                          .byte 0xf4, 0x54, 0x67, 0x00, 0x64, 0x1d, 0x00, 0x00

; FUNCTION 0x0031f5b4, declared_size=52, range_size=52, mode=arm
; class-group: Application
; alias: _ZN11Application13IsLevelLoadedEv
; demangled: Application::IsLevelLoaded()
; decoder-mode: arm
0031f5b4  10 40 2d e9                                      push {r4, lr}
0031f5b8  00 40 a0 e1                                      mov r4, r0
0031f5bc  f4 ff ff eb                                      bl #0x31f594
0031f5c0  00 00 50 e3                                      cmp r0, #0
0031f5c4  05 00 00 0a                                      beq #0x31f5e0
0031f5c8  30 31 90 e5                                      ldr r3, [r0, #0x130]
0031f5cc  26 00 53 e3                                      cmp r3, #0x26
0031f5d0  02 00 00 0a                                      beq #0x31f5e0
0031f5d4  00 00 a0 e3                                      mov r0, #0
0031f5d8  a9 00 c4 e5                                      strb r0, [r4, #0xa9]
0031f5dc  10 80 bd e8                                      pop {r4, pc}
0031f5e0  01 00 a0 e3                                      mov r0, #1
0031f5e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031f5e8, declared_size=20, range_size=20, mode=arm
; class-group: Application
; alias: _ZN11Application19IsInLevelTransitionEv
; demangled: Application::IsInLevelTransition()
; decoder-mode: arm
0031f5e8  10 40 2d e9                                      push {r4, lr}
0031f5ec  e8 ff ff eb                                      bl #0x31f594
0031f5f0  00 00 50 e3                                      cmp r0, #0
0031f5f4  45 01 d0 15                                      ldrbne r0, [r0, #0x145]
0031f5f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031f5fc, declared_size=108, range_size=108, mode=arm
; class-group: Application
; alias: _ZNK11Application15IsInActionPhaseEv
; demangled: Application::IsInActionPhase() const
; decoder-mode: arm
0031f5fc  10 40 2d e9                                      push {r4, lr}
0031f600  00 40 a0 e1                                      mov r4, r0
0031f604  e2 ff ff eb                                      bl #0x31f594
0031f608  18 20 94 e5                                      ldr r2, [r4, #0x18]
0031f60c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0031f610  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0031f614  10 20 92 e5                                      ldr r2, [r2, #0x10]
0031f618  03 30 8f e0                                      add r3, pc, r3
0031f61c  02 10 61 e0                                      rsb r1, r1, r2
0031f620  07 00 51 e3                                      cmp r1, #7
0031f624  04 00 00 da                                      ble #0x31f63c
0031f628  34 10 9f e5                                      ldr r1, [pc, #0x34]
0031f62c  08 20 12 e5                                      ldr r2, [r2, #-8]
0031f630  01 30 93 e7                                      ldr r3, [r3, r1]
0031f634  03 00 52 e1                                      cmp r2, r3
0031f638  01 00 00 0a                                      beq #0x31f644
0031f63c  00 00 a0 e3                                      mov r0, #0
0031f640  10 80 bd e8                                      pop {r4, pc}
0031f644  00 00 50 e3                                      cmp r0, #0
0031f648  fb ff ff 0a                                      beq #0x31f63c
0031f64c  30 01 90 e5                                      ldr r0, [r0, #0x130]
0031f650  26 00 50 e3                                      cmp r0, #0x26
0031f654  00 00 a0 13                                      movne r0, #0
0031f658  01 00 a0 03                                      moveq r0, #1
0031f65c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031f660  78 54 67 00 80 22 00 00                          .byte 0x78, 0x54, 0x67, 0x00, 0x80, 0x22, 0x00, 0x00

; FUNCTION 0x0031f668, declared_size=4, range_size=4, mode=arm
; class-group: Application
; alias: _ZN11Application13ShowStatubBarEb
; demangled: Application::ShowStatubBar(bool)
; decoder-mode: arm
0031f668  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f66c, declared_size=8, range_size=8, mode=arm
; class-group: Application
; alias: _ZN11Application5GetDtEv
; demangled: Application::GetDt()
; decoder-mode: arm
0031f66c  8c 00 90 e5                                      ldr r0, [r0, #0x8c]
0031f670  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f674, declared_size=8, range_size=8, mode=arm
; class-group: Application
; alias: _ZN11Application11GetDtScaledEv
; demangled: Application::GetDtScaled()
; decoder-mode: arm
0031f674  90 00 90 e5                                      ldr r0, [r0, #0x90]
0031f678  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f67c, declared_size=8, range_size=8, mode=arm
; class-group: Application
; alias: _ZN11Application12SetTimeScaleEf
; demangled: Application::SetTimeScale(float)
; decoder-mode: arm
0031f67c  98 10 80 e5                                      str r1, [r0, #0x98]
0031f680  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f684, declared_size=36, range_size=36, mode=arm
; class-group: Application
; alias: _ZNK11Application21IsCurrentlyInGameViewEv
; demangled: Application::IsCurrentlyInGameView() const
; decoder-mode: arm
0031f684  10 40 2d e9                                      push {r4, lr}
0031f688  00 40 a0 e1                                      mov r4, r0
0031f68c  c0 ff ff eb                                      bl #0x31f594
0031f690  00 00 50 e3                                      cmp r0, #0
0031f694  02 00 00 0a                                      beq #0x31f6a4
0031f698  04 00 a0 e1                                      mov r0, r4
0031f69c  bc ff ff eb                                      bl #0x31f594
0031f6a0  98 01 d0 e5                                      ldrb r0, [r0, #0x198]
0031f6a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031f6a8, declared_size=8, range_size=8, mode=arm
; class-group: Application
; alias: _ZN11Application16GetVersionNumberEv
; demangled: Application::GetVersionNumber()
; decoder-mode: arm
0031f6a8  10 07 02 e3                                      movw r0, #0x2710
0031f6ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f6b0, declared_size=152, range_size=152, mode=arm
; class-group: Application
; alias: _ZN11Application16GetVersionStringEPcib
; demangled: Application::GetVersionString(char*, int, bool)
; decoder-mode: arm
0031f6b0  88 30 9f e5                                      ldr r3, [pc, #0x88]
0031f6b4  00 00 51 e3                                      cmp r1, #0
0031f6b8  00 00 52 13                                      cmpne r2, #0
0031f6bc  00 20 a0 c3                                      movgt r2, #0
0031f6c0  01 20 a0 d3                                      movle r2, #1
0031f6c4  03 30 8f e0                                      add r3, pc, r3
0031f6c8  1e ff 2f d1                                      bxle lr
0031f6cc  70 00 9f e5                                      ldr r0, [pc, #0x70]
0031f6d0  00 30 93 e7                                      ldr r3, [r3, r0]
0031f6d4  00 30 93 e5                                      ldr r3, [r3]
0031f6d8  04 00 53 e3                                      cmp r3, #4
0031f6dc  0a 00 00 0a                                      beq #0x31f70c
0031f6e0  05 20 c1 e5                                      strb r2, [r1, #5]
0031f6e4  31 20 a0 e3                                      mov r2, #0x31
0031f6e8  00 20 c1 e5                                      strb r2, [r1]
0031f6ec  30 20 a0 e3                                      mov r2, #0x30
0031f6f0  2e 30 a0 e3                                      mov r3, #0x2e
0031f6f4  02 20 c1 e5                                      strb r2, [r1, #2]
0031f6f8  32 20 a0 e3                                      mov r2, #0x32
0031f6fc  03 30 c1 e5                                      strb r3, [r1, #3]
0031f700  04 20 c1 e5                                      strb r2, [r1, #4]
0031f704  01 30 c1 e5                                      strb r3, [r1, #1]
0031f708  1e ff 2f e1                                      bx lr
0031f70c  30 30 a0 e3                                      mov r3, #0x30
0031f710  2e 00 a0 e3                                      mov r0, #0x2e
0031f714  08 20 c1 e5                                      strb r2, [r1, #8]
0031f718  31 20 a0 e3                                      mov r2, #0x31
0031f71c  01 20 c1 e5                                      strb r2, [r1, #1]
0031f720  05 00 c1 e5                                      strb r0, [r1, #5]
0031f724  07 30 c1 e5                                      strb r3, [r1, #7]
0031f728  00 30 c1 e5                                      strb r3, [r1]
0031f72c  02 00 c1 e5                                      strb r0, [r1, #2]
0031f730  03 30 c1 e5                                      strb r3, [r1, #3]
0031f734  04 30 c1 e5                                      strb r3, [r1, #4]
0031f738  06 30 c1 e5                                      strb r3, [r1, #6]
0031f73c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031f740  cc 53 67 00 48 17 00 00                          .byte 0xcc, 0x53, 0x67, 0x00, 0x48, 0x17, 0x00, 0x00

; FUNCTION 0x0031f748, declared_size=4, range_size=4, mode=arm
; class-group: Application
; alias: _ZN11Application16ResetOrientationEi
; demangled: Application::ResetOrientation(int)
; decoder-mode: arm
0031f748  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f74c, declared_size=8, range_size=8, mode=arm
; class-group: Application
; alias: _ZN11Application14SetOrientationEib
; demangled: Application::SetOrientation(int, bool)
; decoder-mode: arm
0031f74c  00 00 a0 e3                                      mov r0, #0
0031f750  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f754, declared_size=8, range_size=8, mode=arm
; class-group: Application
; alias: _ZN11Application18IsVideoReorientingEv
; demangled: Application::IsVideoReorienting()
; decoder-mode: arm
0031f754  00 00 a0 e3                                      mov r0, #0
0031f758  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f75c, declared_size=8, range_size=8, mode=arm
; class-group: Application
; alias: _ZN11Application17GetDeviceLanguageEv
; demangled: Application::GetDeviceLanguage()
; decoder-mode: arm
0031f75c  00 00 e0 e3                                      mvn r0, #0
0031f760  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f764, declared_size=8, range_size=8, mode=arm
; class-group: Application
; alias: _ZN11Application25IsDeviceLanguageSupportedEPc
; demangled: Application::IsDeviceLanguageSupported(char*)
; decoder-mode: arm
0031f764  00 00 a0 e3                                      mov r0, #0
0031f768  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f76c, declared_size=8, range_size=8, mode=arm
; class-group: Application
; alias: _ZN11Application18IsBluetoothEnabledEv
; demangled: Application::IsBluetoothEnabled()
; decoder-mode: arm
0031f76c  01 00 a0 e3                                      mov r0, #1
0031f770  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f774, declared_size=24, range_size=24, mode=arm
; class-group: Application
; alias: _ZN11Application20GetGoToMainMenuEventEb
; demangled: Application::GetGoToMainMenuEvent(bool)
; decoder-mode: arm
0031f774  00 00 51 e3                                      cmp r1, #0
0031f778  00 30 a0 e1                                      mov r3, r0
0031f77c  00 20 a0 13                                      movne r2, #0
0031f780  b0 00 90 e5                                      ldr r0, [r0, #0xb0]
0031f784  b0 20 83 15                                      strne r2, [r3, #0xb0]
0031f788  1e ff 2f e1                                      bx lr

; FUNCTION 0x00320590, declared_size=20, range_size=20, mode=arm
; class-group: Application
; alias: _ZN11Application23IsInternetAccessEnabledEv
; demangled: Application::IsInternetAccessEnabled()
; decoder-mode: arm
00320590  10 40 2d e9                                      push {r4, lr}
00320594  99 49 08 eb                                      bl #0x532c00
00320598  00 00 50 e2                                      subs r0, r0, #0
0032059c  01 00 a0 13                                      movne r0, #1
003205a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003205a4, declared_size=176, range_size=176, mode=arm
; class-group: Application
; alias: _ZN11Application13SendGLHiScoreEv
; demangled: Application::SendGLHiScore()
; decoder-mode: arm
003205a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003205a8  98 40 9f e5                                      ldr r4, [pc, #0x98]
003205ac  98 30 9f e5                                      ldr r3, [pc, #0x98]
003205b0  00 10 a0 e3                                      mov r1, #0
003205b4  04 40 8f e0                                      add r4, pc, r4
003205b8  03 30 94 e7                                      ldr r3, [r4, r3]
003205bc  00 50 a0 e1                                      mov r5, r0
003205c0  01 20 a0 e1                                      mov r2, r1
003205c4  40 00 93 e5                                      ldr r0, [r3, #0x40]
003205c8  aa 37 01 eb                                      bl #0x36e478
003205cc  60 66 90 e5                                      ldr r6, [r0, #0x660]
003205d0  00 00 56 e3                                      cmp r6, #0
003205d4  0c 00 00 0a                                      beq #0x32060c
003205d8  56 6e 86 e2                                      add r6, r6, #0x560
003205dc  18 10 a0 e3                                      mov r1, #0x18
003205e0  00 20 a0 e3                                      mov r2, #0
003205e4  06 00 a0 e1                                      mov r0, r6
003205e8  3c fc 02 eb                                      bl #0x3df6e0
003205ec  00 70 a0 e1                                      mov r7, r0
003205f0  05 00 a0 e1                                      mov r0, r5
003205f4  e5 ff ff eb                                      bl #0x320590
003205f8  00 00 50 e3                                      cmp r0, #0
003205fc  03 00 00 1a                                      bne #0x320610
00320600  48 30 9f e5                                      ldr r3, [pc, #0x48]
00320604  03 30 94 e7                                      ldr r3, [r4, r3]
00320608  05 00 c3 e5                                      strb r0, [r3, #5]
0032060c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00320610  38 30 9f e5                                      ldr r3, [pc, #0x38]
00320614  01 20 a0 e3                                      mov r2, #1
00320618  07 10 a0 e1                                      mov r1, r7
0032061c  03 30 94 e7                                      ldr r3, [r4, r3]
00320620  03 00 a0 e1                                      mov r0, r3
00320624  05 20 c3 e5                                      strb r2, [r3, #5]
00320628  27 38 08 eb                                      bl #0x52e6cc
0032062c  00 00 50 e3                                      cmp r0, #0
00320630  f5 ff ff 0a                                      beq #0x32060c
00320634  06 00 a0 e1                                      mov r0, r6
00320638  18 10 a0 e3                                      mov r1, #0x18
0032063c  00 20 a0 e3                                      mov r2, #0
00320640  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00320644  6f 00 03 ea                                      b #0x3e0808
; mapping-symbol data/literal pool
00320648  dc 44 67 00 f4 37 00 00 74 14 00 00              .byte 0xdc, 0x44, 0x67, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x74, 0x14, 0x00, 0x00

; FUNCTION 0x00320654, declared_size=20, range_size=20, mode=arm
; class-group: Application
; alias: _ZN11Application13IsWifiEnabledEv
; demangled: Application::IsWifiEnabled()
; decoder-mode: arm
00320654  10 40 2d e9                                      push {r4, lr}
00320658  68 49 08 eb                                      bl #0x532c00
0032065c  00 00 50 e2                                      subs r0, r0, #0
00320660  01 00 a0 13                                      movne r0, #1
00320664  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00320668, declared_size=16, range_size=16, mode=arm
; class-group: Application
; alias: _ZN11Application12IsOnlineGameEv
; demangled: Application::IsOnlineGame()
; decoder-mode: arm
00320668  10 40 2d e9                                      push {r4, lr}
0032066c  48 74 13 eb                                      bl #0x7fd794
00320670  05 00 d0 e5                                      ldrb r0, [r0, #5]
00320674  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00320678, declared_size=88, range_size=88, mode=arm
; class-group: Application
; alias: _ZNK11Application21IsUsingUncompiledDataEPKc
; demangled: Application::IsUsingUncompiledData(char const*) const
; decoder-mode: arm
00320678  70 40 2d e9                                      push {r4, r5, r6, lr}
0032067c  d0 30 90 e5                                      ldr r3, [r0, #0xd0]
00320680  cc 20 90 e5                                      ldr r2, [r0, #0xcc]
00320684  01 50 a0 e1                                      mov r5, r1
00320688  03 00 52 e1                                      cmp r2, r3
0032068c  0a 00 00 0a                                      beq #0x3206bc
00320690  34 60 9f e5                                      ldr r6, [pc, #0x34]
00320694  00 40 a0 e3                                      mov r4, #0
00320698  06 60 8f e0                                      add r6, pc, r6
0032069c  04 10 96 e7                                      ldr r1, [r6, r4]
003206a0  05 00 a0 e1                                      mov r0, r5
003206a4  4a b9 ff eb                                      bl #0x30ebd4
003206a8  00 00 50 e3                                      cmp r0, #0
003206ac  04 40 84 e2                                      add r4, r4, #4
003206b0  03 00 00 1a                                      bne #0x3206c4
003206b4  10 00 54 e3                                      cmp r4, #0x10
003206b8  f7 ff ff 1a                                      bne #0x32069c
003206bc  00 00 a0 e3                                      mov r0, #0
003206c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003206c4  01 00 a0 e3                                      mov r0, #1
003206c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003206cc  00 63 63 00                                      .byte 0x00, 0x63, 0x63, 0x00

; FUNCTION 0x003206d0, declared_size=164, range_size=164, mode=arm
; class-group: Application
; alias: _ZN11Application14GetTitleStringEPci
; demangled: Application::GetTitleString(char*, int)
; decoder-mode: arm
003206d0  88 30 9f e5                                      ldr r3, [pc, #0x88]
003206d4  00 00 51 e3                                      cmp r1, #0
003206d8  00 00 52 13                                      cmpne r2, #0
003206dc  70 40 2d e9                                      push {r4, r5, r6, lr}
003206e0  03 30 8f e0                                      add r3, pc, r3
003206e4  02 40 a0 e1                                      mov r4, r2
003206e8  01 50 a0 e1                                      mov r5, r1
003206ec  00 00 00 ca                                      bgt #0x3206f4
003206f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003206f4  68 20 9f e5                                      ldr r2, [pc, #0x68]
003206f8  02 60 93 e7                                      ldr r6, [r3, r2]
003206fc  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00320700  83 33 05 eb                                      bl #0x46d514
00320704  04 00 50 e3                                      cmp r0, #4
00320708  0e 00 00 0a                                      beq #0x320748
0032070c  54 10 9f e5                                      ldr r1, [pc, #0x54]
00320710  54 20 9f e5                                      ldr r2, [pc, #0x54]
00320714  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
00320718  01 10 8f e0                                      add r1, pc, r1
0032071c  02 20 8f e0                                      add r2, pc, r2
00320720  34 60 96 e5                                      ldr r6, [r6, #0x34]
00320724  2c 91 06 eb                                      bl #0x4c4bdc
00320728  00 10 a0 e1                                      mov r1, r0
0032072c  06 00 a0 e1                                      mov r0, r6
00320730  e9 a1 07 eb                                      bl #0x508edc
00320734  04 20 a0 e1                                      mov r2, r4
00320738  00 10 a0 e1                                      mov r1, r0
0032073c  05 00 a0 e1                                      mov r0, r5
00320740  70 40 bd e8                                      pop {r4, r5, r6, lr}
00320744  b6 b5 ff ea                                      b #0x30de24
00320748  20 10 9f e5                                      ldr r1, [pc, #0x20]
0032074c  05 00 a0 e1                                      mov r0, r5
00320750  04 20 a0 e1                                      mov r2, r4
00320754  01 10 8f e0                                      add r1, pc, r1
00320758  70 40 bd e8                                      pop {r4, r5, r6, lr}
0032075c  b0 b5 ff ea                                      b #0x30de24
; mapping-symbol data/literal pool
00320760  b0 43 67 00 f4 37 00 00 10 e5 59 00 14 e5 59 00  .byte 0xb0, 0x43, 0x67, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x10, 0xe5, 0x59, 0x00, 0x14, 0xe5, 0x59, 0x00
00320770  c4 e4 59 00                                      .byte 0xc4, 0xe4, 0x59, 0x00

; FUNCTION 0x00320774, declared_size=148, range_size=148, mode=arm
; class-group: Application
; alias: _ZN11Application15GetVersionBuildEv
; demangled: Application::GetVersionBuild()
; decoder-mode: arm
00320774  84 c0 9f e5                                      ldr ip, [pc, #0x84]
00320778  84 30 9f e5                                      ldr r3, [pc, #0x84]
0032077c  70 40 2d e9                                      push {r4, r5, r6, lr}
00320780  0c c0 8f e0                                      add ip, pc, ip
00320784  03 50 9c e7                                      ldr r5, [ip, r3]
00320788  18 d0 4d e2                                      sub sp, sp, #0x18
0032078c  08 60 8d e2                                      add r6, sp, #8
00320790  00 e0 95 e5                                      ldr lr, [r5]
00320794  0a 20 a0 e3                                      mov r2, #0xa
00320798  00 30 a0 e3                                      mov r3, #0
0032079c  04 40 8d e2                                      add r4, sp, #4
003207a0  06 10 a0 e1                                      mov r1, r6
003207a4  2e c0 a0 e3                                      mov ip, #0x2e
003207a8  14 e0 8d e5                                      str lr, [sp, #0x14]
003207ac  b4 c0 cd e1                                      strh ip, [sp, #4]
003207b0  be fb ff eb                                      bl #0x31f6b0
003207b4  06 00 a0 e1                                      mov r0, r6
003207b8  04 10 a0 e1                                      mov r1, r4
003207bc  00 60 a0 e3                                      mov r6, #0
003207c0  0d 60 cd e5                                      strb r6, [sp, #0xd]
003207c4  17 b6 ff eb                                      bl #0x30e028
003207c8  04 10 a0 e1                                      mov r1, r4
003207cc  06 00 a0 e1                                      mov r0, r6
003207d0  14 b6 ff eb                                      bl #0x30e028
003207d4  04 10 a0 e1                                      mov r1, r4
003207d8  06 00 a0 e1                                      mov r0, r6
003207dc  11 b6 ff eb                                      bl #0x30e028
003207e0  2b b6 ff eb                                      bl #0x30e094
003207e4  14 20 9d e5                                      ldr r2, [sp, #0x14]
003207e8  00 30 95 e5                                      ldr r3, [r5]
003207ec  03 00 52 e1                                      cmp r2, r3
003207f0  01 00 00 1a                                      bne #0x3207fc
003207f4  18 d0 8d e2                                      add sp, sp, #0x18
003207f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003207fc  c3 b6 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00320800  10 43 67 00 ac 40 00 00                          .byte 0x10, 0x43, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00320808, declared_size=136, range_size=136, mode=arm
; class-group: Application
; alias: _ZN11Application15GetVersionMinorEv
; demangled: Application::GetVersionMinor()
; decoder-mode: arm
00320808  78 c0 9f e5                                      ldr ip, [pc, #0x78]
0032080c  78 30 9f e5                                      ldr r3, [pc, #0x78]
00320810  70 40 2d e9                                      push {r4, r5, r6, lr}
00320814  0c c0 8f e0                                      add ip, pc, ip
00320818  03 40 9c e7                                      ldr r4, [ip, r3]
0032081c  18 d0 4d e2                                      sub sp, sp, #0x18
00320820  08 60 8d e2                                      add r6, sp, #8
00320824  00 e0 94 e5                                      ldr lr, [r4]
00320828  0a 20 a0 e3                                      mov r2, #0xa
0032082c  00 30 a0 e3                                      mov r3, #0
00320830  06 10 a0 e1                                      mov r1, r6
00320834  04 50 8d e2                                      add r5, sp, #4
00320838  2e c0 a0 e3                                      mov ip, #0x2e
0032083c  14 e0 8d e5                                      str lr, [sp, #0x14]
00320840  b4 c0 cd e1                                      strh ip, [sp, #4]
00320844  99 fb ff eb                                      bl #0x31f6b0
00320848  06 00 a0 e1                                      mov r0, r6
0032084c  05 10 a0 e1                                      mov r1, r5
00320850  00 60 a0 e3                                      mov r6, #0
00320854  0d 60 cd e5                                      strb r6, [sp, #0xd]
00320858  f2 b5 ff eb                                      bl #0x30e028
0032085c  05 10 a0 e1                                      mov r1, r5
00320860  06 00 a0 e1                                      mov r0, r6
00320864  ef b5 ff eb                                      bl #0x30e028
00320868  09 b6 ff eb                                      bl #0x30e094
0032086c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00320870  00 30 94 e5                                      ldr r3, [r4]
00320874  03 00 52 e1                                      cmp r2, r3
00320878  01 00 00 1a                                      bne #0x320884
0032087c  18 d0 8d e2                                      add sp, sp, #0x18
00320880  70 80 bd e8                                      pop {r4, r5, r6, pc}
00320884  a1 b6 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00320888  7c 42 67 00 ac 40 00 00                          .byte 0x7c, 0x42, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00320890, declared_size=120, range_size=120, mode=arm
; class-group: Application
; alias: _ZN11Application15GetVersionMajorEv
; demangled: Application::GetVersionMajor()
; decoder-mode: arm
00320890  64 c0 9f e5                                      ldr ip, [pc, #0x64]
00320894  64 30 9f e5                                      ldr r3, [pc, #0x64]
00320898  30 40 2d e9                                      push {r4, r5, lr}
0032089c  0c c0 8f e0                                      add ip, pc, ip
003208a0  03 40 9c e7                                      ldr r4, [ip, r3]
003208a4  14 d0 4d e2                                      sub sp, sp, #0x14
003208a8  0a 20 a0 e3                                      mov r2, #0xa
003208ac  00 e0 94 e5                                      ldr lr, [r4]
003208b0  00 30 a0 e3                                      mov r3, #0
003208b4  0d 10 a0 e1                                      mov r1, sp
003208b8  0c e0 8d e5                                      str lr, [sp, #0xc]
003208bc  7b fb ff eb                                      bl #0x31f6b0
003208c0  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003208c4  00 30 a0 e3                                      mov r3, #0
003208c8  0d 00 a0 e1                                      mov r0, sp
003208cc  01 10 8f e0                                      add r1, pc, r1
003208d0  05 30 cd e5                                      strb r3, [sp, #5]
003208d4  d3 b5 ff eb                                      bl #0x30e028
003208d8  ed b5 ff eb                                      bl #0x30e094
003208dc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003208e0  00 30 94 e5                                      ldr r3, [r4]
003208e4  0d 50 a0 e1                                      mov r5, sp
003208e8  03 00 52 e1                                      cmp r2, r3
003208ec  01 00 00 1a                                      bne #0x3208f8
003208f0  14 d0 8d e2                                      add sp, sp, #0x14
003208f4  30 80 bd e8                                      pop {r4, r5, pc}
003208f8  84 b6 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003208fc  f4 41 67 00 ac 40 00 00 d4 41 5c 00              .byte 0xf4, 0x41, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd4, 0x41, 0x5c, 0x00

; FUNCTION 0x00320da4, declared_size=104, range_size=104, mode=arm
; class-group: Application
; alias: _ZN11Application9ComputeDtEv
; demangled: Application::ComputeDt()
; decoder-mode: arm
00320da4  70 40 2d e9                                      push {r4, r5, r6, lr}
00320da8  00 40 a0 e1                                      mov r4, r0
00320dac  c6 a8 0b eb                                      bl #0x60b0cc
00320db0  88 30 94 e5                                      ldr r3, [r4, #0x88]
00320db4  88 00 84 e5                                      str r0, [r4, #0x88]
00320db8  00 00 63 e0                                      rsb r0, r3, r0
00320dbc  8c 00 84 e5                                      str r0, [r4, #0x8c]
00320dc0  46 b5 ff eb                                      bl #0x30e2e0
00320dc4  9c 10 94 e5                                      ldr r1, [r4, #0x9c]
00320dc8  e7 b7 ff eb                                      bl #0x30ed6c
00320dcc  be b5 ff eb                                      bl #0x30e4cc
00320dd0  8c 00 84 e5                                      str r0, [r4, #0x8c]
00320dd4  41 b5 ff eb                                      bl #0x30e2e0
00320dd8  98 10 94 e5                                      ldr r1, [r4, #0x98]
00320ddc  e2 b7 ff eb                                      bl #0x30ed6c
00320de0  94 10 94 e5                                      ldr r1, [r4, #0x94]
00320de4  6e b7 ff eb                                      bl #0x30eba4
00320de8  00 50 a0 e1                                      mov r5, r0
00320dec  b6 b5 ff eb                                      bl #0x30e4cc
00320df0  90 00 84 e5                                      str r0, [r4, #0x90]
00320df4  39 b5 ff eb                                      bl #0x30e2e0
00320df8  00 10 a0 e1                                      mov r1, r0
00320dfc  05 00 a0 e1                                      mov r0, r5
00320e00  69 b5 ff eb                                      bl #0x30e3ac
00320e04  94 00 84 e5                                      str r0, [r4, #0x94]
00320e08  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00320e0c, declared_size=8, range_size=8, mode=arm
; class-group: Application
; alias: _ZN11Application14HasSavedOptionEPKc
; demangled: Application::HasSavedOption(char const*)
; decoder-mode: arm
00320e0c  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
00320e10  a4 31 05 ea                                      b #0x46d4a8

; FUNCTION 0x00320e14, declared_size=48, range_size=48, mode=arm
; class-group: Application
; alias: _ZN11Application15IsSavedOptionOnEPKc
; demangled: Application::IsSavedOptionOn(char const*)
; decoder-mode: arm
00320e14  70 40 2d e9                                      push {r4, r5, r6, lr}
00320e18  4c 40 90 e5                                      ldr r4, [r0, #0x4c]
00320e1c  01 50 a0 e1                                      mov r5, r1
00320e20  04 00 a0 e1                                      mov r0, r4
00320e24  9f 31 05 eb                                      bl #0x46d4a8
00320e28  00 00 50 e3                                      cmp r0, #0
00320e2c  00 00 00 1a                                      bne #0x320e34
00320e30  70 80 bd e8                                      pop {r4, r5, r6, pc}
00320e34  04 00 a0 e1                                      mov r0, r4
00320e38  05 10 a0 e1                                      mov r1, r5
00320e3c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00320e40  74 31 05 ea                                      b #0x46d418

; FUNCTION 0x00320e44, declared_size=48, range_size=48, mode=arm
; class-group: Application
; alias: _ZN11Application14GetSavedOptionEPKc
; demangled: Application::GetSavedOption(char const*)
; decoder-mode: arm
00320e44  70 40 2d e9                                      push {r4, r5, r6, lr}
00320e48  4c 40 90 e5                                      ldr r4, [r0, #0x4c]
00320e4c  01 50 a0 e1                                      mov r5, r1
00320e50  04 00 a0 e1                                      mov r0, r4
00320e54  93 31 05 eb                                      bl #0x46d4a8
00320e58  00 00 50 e3                                      cmp r0, #0
00320e5c  00 00 00 1a                                      bne #0x320e64
00320e60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00320e64  04 00 a0 e1                                      mov r0, r4
00320e68  05 10 a0 e1                                      mov r1, r5
00320e6c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00320e70  7f 31 05 ea                                      b #0x46d474

; FUNCTION 0x00320e74, declared_size=32, range_size=32, mode=arm
; class-group: Application
; alias: _ZN11Application11IsUsingDPadEv
; demangled: Application::IsUsingDPad()
; decoder-mode: arm
00320e74  14 10 9f e5                                      ldr r1, [pc, #0x14]
00320e78  10 40 2d e9                                      push {r4, lr}
00320e7c  01 10 8f e0                                      add r1, pc, r1
00320e80  ef ff ff eb                                      bl #0x320e44
00320e84  00 00 50 e2                                      subs r0, r0, #0
00320e88  01 00 a0 13                                      movne r0, #1
00320e8c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00320e90  c4 dd 59 00                                      .byte 0xc4, 0xdd, 0x59, 0x00

; FUNCTION 0x00320e94, declared_size=4, range_size=4, mode=arm
; class-group: Application
; alias: _ZN11Application22SwitchGSInitBackgroundEv
; demangled: Application::SwitchGSInitBackground()
; decoder-mode: arm
00320e94  32 90 01 ea                                      b #0x384f64

; FUNCTION 0x00320f5c, declared_size=164, range_size=164, mode=arm
; class-group: Application
; alias: _ZN11Application14IsLevelRunningEv
; demangled: Application::IsLevelRunning()
; decoder-mode: arm
00320f5c  10 40 2d e9                                      push {r4, lr}
00320f60  18 20 90 e5                                      ldr r2, [r0, #0x18]
00320f64  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00320f68  08 d0 4d e2                                      sub sp, sp, #8
00320f6c  00 00 52 e3                                      cmp r2, #0
00320f70  00 40 a0 e1                                      mov r4, r0
00320f74  03 30 8f e0                                      add r3, pc, r3
00320f78  05 00 00 0a                                      beq #0x320f94
00320f7c  04 00 a0 e1                                      mov r0, r4
00320f80  83 f9 ff eb                                      bl #0x31f594
00320f84  00 00 50 e2                                      subs r0, r0, #0
00320f88  01 00 a0 13                                      movne r0, #1
00320f8c  08 d0 8d e2                                      add sp, sp, #8
00320f90  10 80 bd e8                                      pop {r4, pc}
00320f94  50 10 9f e5                                      ldr r1, [pc, #0x50]
00320f98  01 10 93 e7                                      ldr r1, [r3, r1]
00320f9c  00 10 91 e5                                      ldr r1, [r1]
00320fa0  02 00 51 e3                                      cmp r1, #2
00320fa4  00 20 82 05                                      streq r2, [r2]
00320fa8  f3 ff ff 0a                                      beq #0x320f7c
00320fac  01 00 51 e3                                      cmp r1, #1
00320fb0  f1 ff ff 1a                                      bne #0x320f7c
00320fb4  34 00 9f e5                                      ldr r0, [pc, #0x34]
00320fb8  34 10 9f e5                                      ldr r1, [pc, #0x34]
00320fbc  34 20 9f e5                                      ldr r2, [pc, #0x34]
00320fc0  00 00 93 e7                                      ldr r0, [r3, r0]
00320fc4  30 30 9f e5                                      ldr r3, [pc, #0x30]
00320fc8  d8 c7 00 e3                                      movw ip, #0x7d8
00320fcc  01 10 8f e0                                      add r1, pc, r1
00320fd0  02 20 8f e0                                      add r2, pc, r2
00320fd4  03 30 8f e0                                      add r3, pc, r3
00320fd8  a8 00 80 e2                                      add r0, r0, #0xa8
00320fdc  00 c0 8d e5                                      str ip, [sp]
00320fe0  07 b4 ff eb                                      bl #0x30e004
00320fe4  e4 ff ff ea                                      b #0x320f7c
; mapping-symbol data/literal pool
00320fe8  1c 3b 67 00 c0 39 00 00 c0 19 00 00 0c d4 59 00  .byte 0x1c, 0x3b, 0x67, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x0c, 0xd4, 0x59, 0x00
00320ff8  e0 dc 59 00 ec dc 59 00                          .byte 0xe0, 0xdc, 0x59, 0x00, 0xec, 0xdc, 0x59, 0x00

; FUNCTION 0x00321000, declared_size=320, range_size=320, mode=arm
; class-group: Application
; alias: _ZN11Application13IsLevelPausedEb
; demangled: Application::IsLevelPaused(bool)
; decoder-mode: arm
00321000  70 40 2d e9                                      push {r4, r5, r6, lr}
00321004  18 30 90 e5                                      ldr r3, [r0, #0x18]
00321008  10 41 9f e5                                      ldr r4, [pc, #0x110]
0032100c  08 d0 4d e2                                      sub sp, sp, #8
00321010  00 00 53 e3                                      cmp r3, #0
00321014  00 50 a0 e1                                      mov r5, r0
00321018  01 60 a0 e1                                      mov r6, r1
0032101c  04 40 8f e0                                      add r4, pc, r4
00321020  25 00 00 0a                                      beq #0x3210bc
00321024  00 00 56 e3                                      cmp r6, #0
00321028  06 00 00 0a                                      beq #0x321048
0032102c  05 00 a0 e1                                      mov r0, r5
00321030  c9 ff ff eb                                      bl #0x320f5c
00321034  00 00 50 e3                                      cmp r0, #0
00321038  13 00 00 1a                                      bne #0x32108c
0032103c  00 00 a0 e3                                      mov r0, #0
00321040  08 d0 8d e2                                      add sp, sp, #8
00321044  70 80 bd e8                                      pop {r4, r5, r6, pc}
00321048  05 00 a0 e1                                      mov r0, r5
0032104c  c2 ff ff eb                                      bl #0x320f5c
00321050  00 00 50 e3                                      cmp r0, #0
00321054  f8 ff ff 0a                                      beq #0x32103c
00321058  18 30 95 e5                                      ldr r3, [r5, #0x18]
0032105c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00321060  10 30 93 e5                                      ldr r3, [r3, #0x10]
00321064  03 20 62 e0                                      rsb r2, r2, r3
00321068  a2 21 b0 e1                                      lsrs r2, r2, #3
0032106c  04 00 00 0a                                      beq #0x321084
00321070  08 20 13 e5                                      ldr r2, [r3, #-8]
00321074  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00321078  03 30 94 e7                                      ldr r3, [r4, r3]
0032107c  03 00 52 e1                                      cmp r2, r3
00321080  22 00 00 0a                                      beq #0x321110
00321084  01 00 a0 e3                                      mov r0, #1
00321088  ec ff ff ea                                      b #0x321040
0032108c  18 30 95 e5                                      ldr r3, [r5, #0x18]
00321090  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00321094  10 30 93 e5                                      ldr r3, [r3, #0x10]
00321098  03 20 62 e0                                      rsb r2, r2, r3
0032109c  a2 21 b0 e1                                      lsrs r2, r2, #3
003210a0  f7 ff ff 0a                                      beq #0x321084
003210a4  08 00 13 e5                                      ldr r0, [r3, #-8]
003210a8  74 30 9f e5                                      ldr r3, [pc, #0x74]
003210ac  03 30 94 e7                                      ldr r3, [r4, r3]
003210b0  03 00 50 e0                                      subs r0, r0, r3
003210b4  01 00 a0 13                                      movne r0, #1
003210b8  e0 ff ff ea                                      b #0x321040
003210bc  64 20 9f e5                                      ldr r2, [pc, #0x64]
003210c0  02 20 94 e7                                      ldr r2, [r4, r2]
003210c4  00 20 92 e5                                      ldr r2, [r2]
003210c8  02 00 52 e3                                      cmp r2, #2
003210cc  00 30 83 05                                      streq r3, [r3]
003210d0  d3 ff ff 0a                                      beq #0x321024
003210d4  01 00 52 e3                                      cmp r2, #1
003210d8  d1 ff ff 1a                                      bne #0x321024
003210dc  48 00 9f e5                                      ldr r0, [pc, #0x48]
003210e0  48 10 9f e5                                      ldr r1, [pc, #0x48]
003210e4  48 20 9f e5                                      ldr r2, [pc, #0x48]
003210e8  00 00 94 e7                                      ldr r0, [r4, r0]
003210ec  44 30 9f e5                                      ldr r3, [pc, #0x44]
003210f0  ec c7 00 e3                                      movw ip, #0x7ec
003210f4  01 10 8f e0                                      add r1, pc, r1
003210f8  02 20 8f e0                                      add r2, pc, r2
003210fc  03 30 8f e0                                      add r3, pc, r3
00321100  a8 00 80 e2                                      add r0, r0, #0xa8
00321104  00 c0 8d e5                                      str ip, [sp]
00321108  bd b3 ff eb                                      bl #0x30e004
0032110c  c4 ff ff ea                                      b #0x321024
00321110  24 30 9f e5                                      ldr r3, [pc, #0x24]
00321114  03 30 94 e7                                      ldr r3, [r4, r3]
00321118  00 00 d3 e5                                      ldrb r0, [r3]
0032111c  c7 ff ff ea                                      b #0x321040
; mapping-symbol data/literal pool
00321120  74 3a 67 00 80 22 00 00 c0 39 00 00 c0 19 00 00  .byte 0x74, 0x3a, 0x67, 0x00, 0x80, 0x22, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00321130  e4 d2 59 00 b8 db 59 00 c4 db 59 00 a0 2f 00 00  .byte 0xe4, 0xd2, 0x59, 0x00, 0xb8, 0xdb, 0x59, 0x00, 0xc4, 0xdb, 0x59, 0x00, 0xa0, 0x2f, 0x00, 0x00

; FUNCTION 0x00321140, declared_size=36, range_size=36, mode=arm
; class-group: Application
; alias: _ZN11Application12LoadWorldMapEi
; demangled: Application::LoadWorldMap(int)
; decoder-mode: arm
00321140  10 40 2d e9                                      push {r4, lr}
00321144  18 40 90 e5                                      ldr r4, [r0, #0x18]
00321148  01 00 a0 e1                                      mov r0, r1
0032114c  17 96 01 eb                                      bl #0x3869b0
00321150  00 20 a0 e3                                      mov r2, #0
00321154  00 10 a0 e1                                      mov r1, r0
00321158  04 00 a0 e1                                      mov r0, r4
0032115c  10 40 bd e8                                      pop {r4, lr}
00321160  88 64 00 ea                                      b #0x33a388

; FUNCTION 0x00321164, declared_size=6080, range_size=6080, mode=arm
; class-group: Application
; alias: _ZN11Application13_CheckGamepadEv
; demangled: Application::_CheckGamepad()
; decoder-mode: arm
00321164  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00321168  c5 df 4d e2                                      sub sp, sp, #0x314
0032116c  00 60 a0 e1                                      mov r6, r0
00321170  0b b3 00 eb                                      bl #0x34dda4
00321174  8e b1 00 eb                                      bl #0x34d7b4
00321178  b0 5f 9f e5                                      ldr r5, [pc, #0xfb0]
0032117c  00 40 50 e2                                      subs r4, r0, #0
00321180  05 50 8f e0                                      add r5, pc, r5
00321184  18 00 00 0a                                      beq #0x3211ec
00321188  48 70 96 e5                                      ldr r7, [r6, #0x48]
0032118c  00 00 57 e3                                      cmp r7, #0
00321190  1a 00 00 0a                                      beq #0x321200
00321194  e0 12 94 e5                                      ldr r1, [r4, #0x2e0]
00321198  e4 02 94 e5                                      ldr r0, [r4, #0x2e4]
0032119c  80 b6 ff eb                                      bl #0x30eba4
003211a0  fe 15 a0 e3                                      mov r1, #0x3f800000
003211a4  7e b6 ff eb                                      bl #0x30eba4
003211a8  3f 14 a0 e3                                      mov r1, #0x3f000000
003211ac  ee b6 ff eb                                      bl #0x30ed6c
003211b0  00 10 a0 e1                                      mov r1, r0
003211b4  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003211b8  bd b4 ff eb                                      bl #0x30e4b4
003211bc  00 00 50 e3                                      cmp r0, #0
003211c0  0b 00 00 0a                                      beq #0x3211f4
003211c4  e8 32 d4 e5                                      ldrb r3, [r4, #0x2e8]
003211c8  00 00 53 e3                                      cmp r3, #0
003211cc  08 00 00 1a                                      bne #0x3211f4
003211d0  83 88 01 eb                                      bl #0x3833e4
003211d4  48 30 96 e5                                      ldr r3, [r6, #0x48]
003211d8  00 00 53 e3                                      cmp r3, #0
003211dc  07 00 00 0a                                      beq #0x321200
003211e0  04 30 d3 e5                                      ldrb r3, [r3, #4]
003211e4  00 00 53 e3                                      cmp r3, #0
003211e8  04 00 00 0a                                      beq #0x321200
003211ec  c5 df 8d e2                                      add sp, sp, #0x314
003211f0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003211f4  04 30 d7 e5                                      ldrb r3, [r7, #4]
003211f8  00 00 53 e3                                      cmp r3, #0
003211fc  d4 03 00 1a                                      bne #0x322154
00321200  06 00 a0 e1                                      mov r0, r6
00321204  e2 f8 ff eb                                      bl #0x31f594
00321208  00 70 50 e2                                      subs r7, r0, #0
0032120c  f6 ff ff 1a                                      bne #0x3211ec
00321210  20 10 94 e5                                      ldr r1, [r4, #0x20]
00321214  24 00 94 e5                                      ldr r0, [r4, #0x24]
00321218  61 b6 ff eb                                      bl #0x30eba4
0032121c  fe 15 a0 e3                                      mov r1, #0x3f800000
00321220  5f b6 ff eb                                      bl #0x30eba4
00321224  3f 14 a0 e3                                      mov r1, #0x3f000000
00321228  cf b6 ff eb                                      bl #0x30ed6c
0032122c  00 10 a0 e1                                      mov r1, r0
00321230  18 00 94 e5                                      ldr r0, [r4, #0x18]
00321234  9e b4 ff eb                                      bl #0x30e4b4
00321238  00 00 50 e3                                      cmp r0, #0
0032123c  14 05 00 0a                                      beq #0x322694
00321240  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
00321244  00 00 53 e3                                      cmp r3, #0
00321248  13 00 00 1a                                      bne #0x32129c
0032124c  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321250  01 70 a0 e3                                      mov r7, #1
00321254  d8 2e 9f e5                                      ldr r2, [pc, #0xed8]
00321258  00 30 a0 e3                                      mov r3, #0
0032125c  07 c0 a0 e3                                      mov ip, #7
00321260  02 20 95 e7                                      ldr r2, [r5, r2]
00321264  96 1f 8d e2                                      add r1, sp, #0x258
00321268  68 32 8d e5                                      str r3, [sp, #0x268]
0032126c  08 20 82 e2                                      add r2, r2, #8
00321270  58 22 8d e5                                      str r2, [sp, #0x258]
00321274  fe 25 a0 e3                                      mov r2, #0x3f800000
00321278  60 32 8d e5                                      str r3, [sp, #0x260]
0032127c  5c c2 8d e5                                      str ip, [sp, #0x25c]
00321280  64 72 8d e5                                      str r7, [sp, #0x264]
00321284  6c 22 8d e5                                      str r2, [sp, #0x26c]
00321288  0b 5f 00 eb                                      bl #0x338ebc
0032128c  bc 3e 9f e5                                      ldr r3, [pc, #0xebc]
00321290  03 30 95 e7                                      ldr r3, [r5, r3]
00321294  08 30 83 e2                                      add r3, r3, #8
00321298  58 32 8d e5                                      str r3, [sp, #0x258]
0032129c  40 10 94 e5                                      ldr r1, [r4, #0x40]
003212a0  44 00 94 e5                                      ldr r0, [r4, #0x44]
003212a4  3e b6 ff eb                                      bl #0x30eba4
003212a8  fe 15 a0 e3                                      mov r1, #0x3f800000
003212ac  3c b6 ff eb                                      bl #0x30eba4
003212b0  3f 14 a0 e3                                      mov r1, #0x3f000000
003212b4  ac b6 ff eb                                      bl #0x30ed6c
003212b8  00 10 a0 e1                                      mov r1, r0
003212bc  38 00 94 e5                                      ldr r0, [r4, #0x38]
003212c0  7b b4 ff eb                                      bl #0x30e4b4
003212c4  00 00 50 e3                                      cmp r0, #0
003212c8  86 05 00 1a                                      bne #0x3228e8
003212cc  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
003212d0  00 00 53 e3                                      cmp r3, #0
003212d4  14 00 00 0a                                      beq #0x32132c
003212d8  14 00 96 e5                                      ldr r0, [r6, #0x14]
003212dc  00 c0 a0 e3                                      mov ip, #0
003212e0  4c 3e 9f e5                                      ldr r3, [pc, #0xe4c]
003212e4  07 20 a0 e3                                      mov r2, #7
003212e8  09 1d 8d e2                                      add r1, sp, #0x240
003212ec  03 30 95 e7                                      ldr r3, [r5, r3]
003212f0  44 22 8d e5                                      str r2, [sp, #0x244]
003212f4  4c c2 8d e5                                      str ip, [sp, #0x24c]
003212f8  08 30 83 e2                                      add r3, r3, #8
003212fc  40 32 8d e5                                      str r3, [sp, #0x240]
00321300  01 30 a0 e3                                      mov r3, #1
00321304  48 32 8d e5                                      str r3, [sp, #0x248]
00321308  00 30 a0 e3                                      mov r3, #0
0032130c  50 32 8d e5                                      str r3, [sp, #0x250]
00321310  fe 35 a0 e3                                      mov r3, #0x3f800000
00321314  54 32 8d e5                                      str r3, [sp, #0x254]
00321318  e7 5e 00 eb                                      bl #0x338ebc
0032131c  2c 3e 9f e5                                      ldr r3, [pc, #0xe2c]
00321320  03 30 95 e7                                      ldr r3, [r5, r3]
00321324  08 30 83 e2                                      add r3, r3, #8
00321328  40 32 8d e5                                      str r3, [sp, #0x240]
0032132c  60 10 94 e5                                      ldr r1, [r4, #0x60]
00321330  64 00 94 e5                                      ldr r0, [r4, #0x64]
00321334  1a b6 ff eb                                      bl #0x30eba4
00321338  fe 15 a0 e3                                      mov r1, #0x3f800000
0032133c  18 b6 ff eb                                      bl #0x30eba4
00321340  3f 14 a0 e3                                      mov r1, #0x3f000000
00321344  88 b6 ff eb                                      bl #0x30ed6c
00321348  00 10 a0 e1                                      mov r1, r0
0032134c  58 00 94 e5                                      ldr r0, [r4, #0x58]
00321350  57 b4 ff eb                                      bl #0x30e4b4
00321354  00 00 50 e3                                      cmp r0, #0
00321358  5c 05 00 1a                                      bne #0x3228d0
0032135c  68 30 d4 e5                                      ldrb r3, [r4, #0x68]
00321360  00 00 53 e3                                      cmp r3, #0
00321364  14 00 00 0a                                      beq #0x3213bc
00321368  14 00 96 e5                                      ldr r0, [r6, #0x14]
0032136c  00 c0 a0 e3                                      mov ip, #0
00321370  bc 3d 9f e5                                      ldr r3, [pc, #0xdbc]
00321374  07 20 a0 e3                                      mov r2, #7
00321378  8a 1f 8d e2                                      add r1, sp, #0x228
0032137c  03 30 95 e7                                      ldr r3, [r5, r3]
00321380  2c 22 8d e5                                      str r2, [sp, #0x22c]
00321384  34 c2 8d e5                                      str ip, [sp, #0x234]
00321388  08 30 83 e2                                      add r3, r3, #8
0032138c  28 32 8d e5                                      str r3, [sp, #0x228]
00321390  02 30 a0 e3                                      mov r3, #2
00321394  30 32 8d e5                                      str r3, [sp, #0x230]
00321398  00 30 a0 e3                                      mov r3, #0
0032139c  38 32 8d e5                                      str r3, [sp, #0x238]
003213a0  fe 35 a0 e3                                      mov r3, #0x3f800000
003213a4  3c 32 8d e5                                      str r3, [sp, #0x23c]
003213a8  c3 5e 00 eb                                      bl #0x338ebc
003213ac  9c 3d 9f e5                                      ldr r3, [pc, #0xd9c]
003213b0  03 30 95 e7                                      ldr r3, [r5, r3]
003213b4  08 30 83 e2                                      add r3, r3, #8
003213b8  28 32 8d e5                                      str r3, [sp, #0x228]
003213bc  80 10 94 e5                                      ldr r1, [r4, #0x80]
003213c0  84 00 94 e5                                      ldr r0, [r4, #0x84]
003213c4  f6 b5 ff eb                                      bl #0x30eba4
003213c8  fe 15 a0 e3                                      mov r1, #0x3f800000
003213cc  f4 b5 ff eb                                      bl #0x30eba4
003213d0  3f 14 a0 e3                                      mov r1, #0x3f000000
003213d4  64 b6 ff eb                                      bl #0x30ed6c
003213d8  00 10 a0 e1                                      mov r1, r0
003213dc  78 00 94 e5                                      ldr r0, [r4, #0x78]
003213e0  33 b4 ff eb                                      bl #0x30e4b4
003213e4  00 00 50 e3                                      cmp r0, #0
003213e8  32 05 00 1a                                      bne #0x3228b8
003213ec  88 30 d4 e5                                      ldrb r3, [r4, #0x88]
003213f0  00 00 53 e3                                      cmp r3, #0
003213f4  14 00 00 0a                                      beq #0x32144c
003213f8  14 00 96 e5                                      ldr r0, [r6, #0x14]
003213fc  00 c0 a0 e3                                      mov ip, #0
00321400  2c 3d 9f e5                                      ldr r3, [pc, #0xd2c]
00321404  07 20 a0 e3                                      mov r2, #7
00321408  21 1e 8d e2                                      add r1, sp, #0x210
0032140c  03 30 95 e7                                      ldr r3, [r5, r3]
00321410  14 22 8d e5                                      str r2, [sp, #0x214]
00321414  1c c2 8d e5                                      str ip, [sp, #0x21c]
00321418  08 30 83 e2                                      add r3, r3, #8
0032141c  10 32 8d e5                                      str r3, [sp, #0x210]
00321420  03 30 a0 e3                                      mov r3, #3
00321424  18 32 8d e5                                      str r3, [sp, #0x218]
00321428  00 30 a0 e3                                      mov r3, #0
0032142c  20 32 8d e5                                      str r3, [sp, #0x220]
00321430  fe 35 a0 e3                                      mov r3, #0x3f800000
00321434  24 32 8d e5                                      str r3, [sp, #0x224]
00321438  9f 5e 00 eb                                      bl #0x338ebc
0032143c  0c 3d 9f e5                                      ldr r3, [pc, #0xd0c]
00321440  03 30 95 e7                                      ldr r3, [r5, r3]
00321444  08 30 83 e2                                      add r3, r3, #8
00321448  10 32 8d e5                                      str r3, [sp, #0x210]
0032144c  a0 10 94 e5                                      ldr r1, [r4, #0xa0]
00321450  a4 00 94 e5                                      ldr r0, [r4, #0xa4]
00321454  d2 b5 ff eb                                      bl #0x30eba4
00321458  fe 15 a0 e3                                      mov r1, #0x3f800000
0032145c  d0 b5 ff eb                                      bl #0x30eba4
00321460  3f 14 a0 e3                                      mov r1, #0x3f000000
00321464  40 b6 ff eb                                      bl #0x30ed6c
00321468  00 10 a0 e1                                      mov r1, r0
0032146c  98 00 94 e5                                      ldr r0, [r4, #0x98]
00321470  0f b4 ff eb                                      bl #0x30e4b4
00321474  00 00 50 e3                                      cmp r0, #0
00321478  08 05 00 1a                                      bne #0x3228a0
0032147c  a8 30 d4 e5                                      ldrb r3, [r4, #0xa8]
00321480  00 00 53 e3                                      cmp r3, #0
00321484  14 00 00 0a                                      beq #0x3214dc
00321488  14 00 96 e5                                      ldr r0, [r6, #0x14]
0032148c  00 c0 a0 e3                                      mov ip, #0
00321490  9c 3c 9f e5                                      ldr r3, [pc, #0xc9c]
00321494  07 20 a0 e3                                      mov r2, #7
00321498  7e 1f 8d e2                                      add r1, sp, #0x1f8
0032149c  03 30 95 e7                                      ldr r3, [r5, r3]
003214a0  fc 21 8d e5                                      str r2, [sp, #0x1fc]
003214a4  04 c2 8d e5                                      str ip, [sp, #0x204]
003214a8  08 30 83 e2                                      add r3, r3, #8
003214ac  f8 31 8d e5                                      str r3, [sp, #0x1f8]
003214b0  04 30 a0 e3                                      mov r3, #4
003214b4  00 32 8d e5                                      str r3, [sp, #0x200]
003214b8  00 30 a0 e3                                      mov r3, #0
003214bc  08 32 8d e5                                      str r3, [sp, #0x208]
003214c0  fe 35 a0 e3                                      mov r3, #0x3f800000
003214c4  0c 32 8d e5                                      str r3, [sp, #0x20c]
003214c8  7b 5e 00 eb                                      bl #0x338ebc
003214cc  7c 3c 9f e5                                      ldr r3, [pc, #0xc7c]
003214d0  03 30 95 e7                                      ldr r3, [r5, r3]
003214d4  08 30 83 e2                                      add r3, r3, #8
003214d8  f8 31 8d e5                                      str r3, [sp, #0x1f8]
003214dc  c0 10 94 e5                                      ldr r1, [r4, #0xc0]
003214e0  c4 00 94 e5                                      ldr r0, [r4, #0xc4]
003214e4  ae b5 ff eb                                      bl #0x30eba4
003214e8  fe 15 a0 e3                                      mov r1, #0x3f800000
003214ec  ac b5 ff eb                                      bl #0x30eba4
003214f0  3f 14 a0 e3                                      mov r1, #0x3f000000
003214f4  1c b6 ff eb                                      bl #0x30ed6c
003214f8  00 10 a0 e1                                      mov r1, r0
003214fc  b8 00 94 e5                                      ldr r0, [r4, #0xb8]
00321500  eb b3 ff eb                                      bl #0x30e4b4
00321504  00 00 50 e3                                      cmp r0, #0
00321508  de 04 00 1a                                      bne #0x322888
0032150c  c8 30 d4 e5                                      ldrb r3, [r4, #0xc8]
00321510  00 00 53 e3                                      cmp r3, #0
00321514  14 00 00 0a                                      beq #0x32156c
00321518  14 00 96 e5                                      ldr r0, [r6, #0x14]
0032151c  00 c0 a0 e3                                      mov ip, #0
00321520  0c 3c 9f e5                                      ldr r3, [pc, #0xc0c]
00321524  07 20 a0 e3                                      mov r2, #7
00321528  1e 1e 8d e2                                      add r1, sp, #0x1e0
0032152c  03 30 95 e7                                      ldr r3, [r5, r3]
00321530  e4 21 8d e5                                      str r2, [sp, #0x1e4]
00321534  ec c1 8d e5                                      str ip, [sp, #0x1ec]
00321538  08 30 83 e2                                      add r3, r3, #8
0032153c  e0 31 8d e5                                      str r3, [sp, #0x1e0]
00321540  05 30 a0 e3                                      mov r3, #5
00321544  e8 31 8d e5                                      str r3, [sp, #0x1e8]
00321548  00 30 a0 e3                                      mov r3, #0
0032154c  f0 31 8d e5                                      str r3, [sp, #0x1f0]
00321550  fe 35 a0 e3                                      mov r3, #0x3f800000
00321554  f4 31 8d e5                                      str r3, [sp, #0x1f4]
00321558  57 5e 00 eb                                      bl #0x338ebc
0032155c  ec 3b 9f e5                                      ldr r3, [pc, #0xbec]
00321560  03 30 95 e7                                      ldr r3, [r5, r3]
00321564  08 30 83 e2                                      add r3, r3, #8
00321568  e0 31 8d e5                                      str r3, [sp, #0x1e0]
0032156c  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
00321570  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
00321574  8a b5 ff eb                                      bl #0x30eba4
00321578  fe 15 a0 e3                                      mov r1, #0x3f800000
0032157c  88 b5 ff eb                                      bl #0x30eba4
00321580  3f 14 a0 e3                                      mov r1, #0x3f000000
00321584  f8 b5 ff eb                                      bl #0x30ed6c
00321588  00 10 a0 e1                                      mov r1, r0
0032158c  d8 00 94 e5                                      ldr r0, [r4, #0xd8]
00321590  c7 b3 ff eb                                      bl #0x30e4b4
00321594  00 00 50 e3                                      cmp r0, #0
00321598  b4 04 00 1a                                      bne #0x322870
0032159c  e8 30 d4 e5                                      ldrb r3, [r4, #0xe8]
003215a0  00 00 53 e3                                      cmp r3, #0
003215a4  14 00 00 0a                                      beq #0x3215fc
003215a8  14 00 96 e5                                      ldr r0, [r6, #0x14]
003215ac  00 c0 a0 e3                                      mov ip, #0
003215b0  7c 3b 9f e5                                      ldr r3, [pc, #0xb7c]
003215b4  07 20 a0 e3                                      mov r2, #7
003215b8  72 1f 8d e2                                      add r1, sp, #0x1c8
003215bc  03 30 95 e7                                      ldr r3, [r5, r3]
003215c0  cc 21 8d e5                                      str r2, [sp, #0x1cc]
003215c4  d4 c1 8d e5                                      str ip, [sp, #0x1d4]
003215c8  08 30 83 e2                                      add r3, r3, #8
003215cc  c8 31 8d e5                                      str r3, [sp, #0x1c8]
003215d0  06 30 a0 e3                                      mov r3, #6
003215d4  d0 31 8d e5                                      str r3, [sp, #0x1d0]
003215d8  00 30 a0 e3                                      mov r3, #0
003215dc  d8 31 8d e5                                      str r3, [sp, #0x1d8]
003215e0  fe 35 a0 e3                                      mov r3, #0x3f800000
003215e4  dc 31 8d e5                                      str r3, [sp, #0x1dc]
003215e8  33 5e 00 eb                                      bl #0x338ebc
003215ec  5c 3b 9f e5                                      ldr r3, [pc, #0xb5c]
003215f0  03 30 95 e7                                      ldr r3, [r5, r3]
003215f4  08 30 83 e2                                      add r3, r3, #8
003215f8  c8 31 8d e5                                      str r3, [sp, #0x1c8]
003215fc  00 11 94 e5                                      ldr r1, [r4, #0x100]
00321600  04 01 94 e5                                      ldr r0, [r4, #0x104]
00321604  66 b5 ff eb                                      bl #0x30eba4
00321608  fe 15 a0 e3                                      mov r1, #0x3f800000
0032160c  64 b5 ff eb                                      bl #0x30eba4
00321610  3f 14 a0 e3                                      mov r1, #0x3f000000
00321614  d4 b5 ff eb                                      bl #0x30ed6c
00321618  00 10 a0 e1                                      mov r1, r0
0032161c  f8 00 94 e5                                      ldr r0, [r4, #0xf8]
00321620  a3 b3 ff eb                                      bl #0x30e4b4
00321624  00 00 50 e3                                      cmp r0, #0
00321628  8a 04 00 1a                                      bne #0x322858
0032162c  08 31 d4 e5                                      ldrb r3, [r4, #0x108]
00321630  00 00 53 e3                                      cmp r3, #0
00321634  13 00 00 0a                                      beq #0x321688
00321638  14 00 96 e5                                      ldr r0, [r6, #0x14]
0032163c  00 c0 a0 e3                                      mov ip, #0
00321640  ec 2a 9f e5                                      ldr r2, [pc, #0xaec]
00321644  07 30 a0 e3                                      mov r3, #7
00321648  1b 1e 8d e2                                      add r1, sp, #0x1b0
0032164c  02 20 95 e7                                      ldr r2, [r5, r2]
00321650  b8 31 8d e5                                      str r3, [sp, #0x1b8]
00321654  b4 31 8d e5                                      str r3, [sp, #0x1b4]
00321658  08 20 82 e2                                      add r2, r2, #8
0032165c  b0 21 8d e5                                      str r2, [sp, #0x1b0]
00321660  00 20 a0 e3                                      mov r2, #0
00321664  c0 21 8d e5                                      str r2, [sp, #0x1c0]
00321668  fe 25 a0 e3                                      mov r2, #0x3f800000
0032166c  bc c1 8d e5                                      str ip, [sp, #0x1bc]
00321670  c4 21 8d e5                                      str r2, [sp, #0x1c4]
00321674  10 5e 00 eb                                      bl #0x338ebc
00321678  d0 3a 9f e5                                      ldr r3, [pc, #0xad0]
0032167c  03 30 95 e7                                      ldr r3, [r5, r3]
00321680  08 30 83 e2                                      add r3, r3, #8
00321684  b0 31 8d e5                                      str r3, [sp, #0x1b0]
00321688  20 11 94 e5                                      ldr r1, [r4, #0x120]
0032168c  24 01 94 e5                                      ldr r0, [r4, #0x124]
00321690  43 b5 ff eb                                      bl #0x30eba4
00321694  fe 15 a0 e3                                      mov r1, #0x3f800000
00321698  41 b5 ff eb                                      bl #0x30eba4
0032169c  3f 14 a0 e3                                      mov r1, #0x3f000000
003216a0  b1 b5 ff eb                                      bl #0x30ed6c
003216a4  00 10 a0 e1                                      mov r1, r0
003216a8  18 01 94 e5                                      ldr r0, [r4, #0x118]
003216ac  80 b3 ff eb                                      bl #0x30e4b4
003216b0  00 00 50 e3                                      cmp r0, #0
003216b4  61 04 00 1a                                      bne #0x322840
003216b8  28 31 d4 e5                                      ldrb r3, [r4, #0x128]
003216bc  00 00 53 e3                                      cmp r3, #0
003216c0  14 00 00 0a                                      beq #0x321718
003216c4  14 00 96 e5                                      ldr r0, [r6, #0x14]
003216c8  00 c0 a0 e3                                      mov ip, #0
003216cc  60 3a 9f e5                                      ldr r3, [pc, #0xa60]
003216d0  07 20 a0 e3                                      mov r2, #7
003216d4  66 1f 8d e2                                      add r1, sp, #0x198
003216d8  03 30 95 e7                                      ldr r3, [r5, r3]
003216dc  9c 21 8d e5                                      str r2, [sp, #0x19c]
003216e0  a4 c1 8d e5                                      str ip, [sp, #0x1a4]
003216e4  08 30 83 e2                                      add r3, r3, #8
003216e8  98 31 8d e5                                      str r3, [sp, #0x198]
003216ec  08 30 a0 e3                                      mov r3, #8
003216f0  a0 31 8d e5                                      str r3, [sp, #0x1a0]
003216f4  00 30 a0 e3                                      mov r3, #0
003216f8  a8 31 8d e5                                      str r3, [sp, #0x1a8]
003216fc  fe 35 a0 e3                                      mov r3, #0x3f800000
00321700  ac 31 8d e5                                      str r3, [sp, #0x1ac]
00321704  ec 5d 00 eb                                      bl #0x338ebc
00321708  40 3a 9f e5                                      ldr r3, [pc, #0xa40]
0032170c  03 30 95 e7                                      ldr r3, [r5, r3]
00321710  08 30 83 e2                                      add r3, r3, #8
00321714  98 31 8d e5                                      str r3, [sp, #0x198]
00321718  40 11 94 e5                                      ldr r1, [r4, #0x140]
0032171c  44 01 94 e5                                      ldr r0, [r4, #0x144]
00321720  1f b5 ff eb                                      bl #0x30eba4
00321724  fe 15 a0 e3                                      mov r1, #0x3f800000
00321728  1d b5 ff eb                                      bl #0x30eba4
0032172c  3f 14 a0 e3                                      mov r1, #0x3f000000
00321730  8d b5 ff eb                                      bl #0x30ed6c
00321734  00 10 a0 e1                                      mov r1, r0
00321738  38 01 94 e5                                      ldr r0, [r4, #0x138]
0032173c  5c b3 ff eb                                      bl #0x30e4b4
00321740  00 00 50 e3                                      cmp r0, #0
00321744  37 04 00 1a                                      bne #0x322828
00321748  48 31 d4 e5                                      ldrb r3, [r4, #0x148]
0032174c  00 00 53 e3                                      cmp r3, #0
00321750  14 00 00 0a                                      beq #0x3217a8
00321754  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321758  00 c0 a0 e3                                      mov ip, #0
0032175c  d0 39 9f e5                                      ldr r3, [pc, #0x9d0]
00321760  07 20 a0 e3                                      mov r2, #7
00321764  06 1d 8d e2                                      add r1, sp, #0x180
00321768  03 30 95 e7                                      ldr r3, [r5, r3]
0032176c  84 21 8d e5                                      str r2, [sp, #0x184]
00321770  8c c1 8d e5                                      str ip, [sp, #0x18c]
00321774  08 30 83 e2                                      add r3, r3, #8
00321778  80 31 8d e5                                      str r3, [sp, #0x180]
0032177c  09 30 a0 e3                                      mov r3, #9
00321780  88 31 8d e5                                      str r3, [sp, #0x188]
00321784  00 30 a0 e3                                      mov r3, #0
00321788  90 31 8d e5                                      str r3, [sp, #0x190]
0032178c  fe 35 a0 e3                                      mov r3, #0x3f800000
00321790  94 31 8d e5                                      str r3, [sp, #0x194]
00321794  c8 5d 00 eb                                      bl #0x338ebc
00321798  b0 39 9f e5                                      ldr r3, [pc, #0x9b0]
0032179c  03 30 95 e7                                      ldr r3, [r5, r3]
003217a0  08 30 83 e2                                      add r3, r3, #8
003217a4  80 31 8d e5                                      str r3, [sp, #0x180]
003217a8  60 11 94 e5                                      ldr r1, [r4, #0x160]
003217ac  64 01 94 e5                                      ldr r0, [r4, #0x164]
003217b0  fb b4 ff eb                                      bl #0x30eba4
003217b4  fe 15 a0 e3                                      mov r1, #0x3f800000
003217b8  f9 b4 ff eb                                      bl #0x30eba4
003217bc  3f 14 a0 e3                                      mov r1, #0x3f000000
003217c0  69 b5 ff eb                                      bl #0x30ed6c
003217c4  00 10 a0 e1                                      mov r1, r0
003217c8  58 01 94 e5                                      ldr r0, [r4, #0x158]
003217cc  38 b3 ff eb                                      bl #0x30e4b4
003217d0  00 00 50 e3                                      cmp r0, #0
003217d4  0d 04 00 1a                                      bne #0x322810
003217d8  68 31 d4 e5                                      ldrb r3, [r4, #0x168]
003217dc  00 00 53 e3                                      cmp r3, #0
003217e0  14 00 00 0a                                      beq #0x321838
003217e4  14 00 96 e5                                      ldr r0, [r6, #0x14]
003217e8  00 c0 a0 e3                                      mov ip, #0
003217ec  40 39 9f e5                                      ldr r3, [pc, #0x940]
003217f0  07 20 a0 e3                                      mov r2, #7
003217f4  5a 1f 8d e2                                      add r1, sp, #0x168
003217f8  03 30 95 e7                                      ldr r3, [r5, r3]
003217fc  6c 21 8d e5                                      str r2, [sp, #0x16c]
00321800  74 c1 8d e5                                      str ip, [sp, #0x174]
00321804  08 30 83 e2                                      add r3, r3, #8
00321808  68 31 8d e5                                      str r3, [sp, #0x168]
0032180c  0a 30 a0 e3                                      mov r3, #0xa
00321810  70 31 8d e5                                      str r3, [sp, #0x170]
00321814  00 30 a0 e3                                      mov r3, #0
00321818  78 31 8d e5                                      str r3, [sp, #0x178]
0032181c  fe 35 a0 e3                                      mov r3, #0x3f800000
00321820  7c 31 8d e5                                      str r3, [sp, #0x17c]
00321824  a4 5d 00 eb                                      bl #0x338ebc
00321828  20 39 9f e5                                      ldr r3, [pc, #0x920]
0032182c  03 30 95 e7                                      ldr r3, [r5, r3]
00321830  08 30 83 e2                                      add r3, r3, #8
00321834  68 31 8d e5                                      str r3, [sp, #0x168]
00321838  80 11 94 e5                                      ldr r1, [r4, #0x180]
0032183c  84 01 94 e5                                      ldr r0, [r4, #0x184]
00321840  d7 b4 ff eb                                      bl #0x30eba4
00321844  fe 15 a0 e3                                      mov r1, #0x3f800000
00321848  d5 b4 ff eb                                      bl #0x30eba4
0032184c  3f 14 a0 e3                                      mov r1, #0x3f000000
00321850  45 b5 ff eb                                      bl #0x30ed6c
00321854  00 10 a0 e1                                      mov r1, r0
00321858  78 01 94 e5                                      ldr r0, [r4, #0x178]
0032185c  14 b3 ff eb                                      bl #0x30e4b4
00321860  00 00 50 e3                                      cmp r0, #0
00321864  e3 03 00 1a                                      bne #0x3227f8
00321868  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
0032186c  00 00 53 e3                                      cmp r3, #0
00321870  14 00 00 0a                                      beq #0x3218c8
00321874  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321878  00 c0 a0 e3                                      mov ip, #0
0032187c  b0 38 9f e5                                      ldr r3, [pc, #0x8b0]
00321880  07 20 a0 e3                                      mov r2, #7
00321884  15 1e 8d e2                                      add r1, sp, #0x150
00321888  03 30 95 e7                                      ldr r3, [r5, r3]
0032188c  54 21 8d e5                                      str r2, [sp, #0x154]
00321890  5c c1 8d e5                                      str ip, [sp, #0x15c]
00321894  08 30 83 e2                                      add r3, r3, #8
00321898  50 31 8d e5                                      str r3, [sp, #0x150]
0032189c  0b 30 a0 e3                                      mov r3, #0xb
003218a0  58 31 8d e5                                      str r3, [sp, #0x158]
003218a4  00 30 a0 e3                                      mov r3, #0
003218a8  60 31 8d e5                                      str r3, [sp, #0x160]
003218ac  fe 35 a0 e3                                      mov r3, #0x3f800000
003218b0  64 31 8d e5                                      str r3, [sp, #0x164]
003218b4  80 5d 00 eb                                      bl #0x338ebc
003218b8  90 38 9f e5                                      ldr r3, [pc, #0x890]
003218bc  03 30 95 e7                                      ldr r3, [r5, r3]
003218c0  08 30 83 e2                                      add r3, r3, #8
003218c4  50 31 8d e5                                      str r3, [sp, #0x150]
003218c8  a0 11 94 e5                                      ldr r1, [r4, #0x1a0]
003218cc  a4 01 94 e5                                      ldr r0, [r4, #0x1a4]
003218d0  b3 b4 ff eb                                      bl #0x30eba4
003218d4  fe 15 a0 e3                                      mov r1, #0x3f800000
003218d8  b1 b4 ff eb                                      bl #0x30eba4
003218dc  3f 14 a0 e3                                      mov r1, #0x3f000000
003218e0  21 b5 ff eb                                      bl #0x30ed6c
003218e4  00 10 a0 e1                                      mov r1, r0
003218e8  98 01 94 e5                                      ldr r0, [r4, #0x198]
003218ec  f0 b2 ff eb                                      bl #0x30e4b4
003218f0  00 00 50 e3                                      cmp r0, #0
003218f4  b9 03 00 1a                                      bne #0x3227e0
003218f8  a8 31 d4 e5                                      ldrb r3, [r4, #0x1a8]
003218fc  00 00 53 e3                                      cmp r3, #0
00321900  14 00 00 0a                                      beq #0x321958
00321904  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321908  00 c0 a0 e3                                      mov ip, #0
0032190c  20 38 9f e5                                      ldr r3, [pc, #0x820]
00321910  07 20 a0 e3                                      mov r2, #7
00321914  4e 1f 8d e2                                      add r1, sp, #0x138
00321918  03 30 95 e7                                      ldr r3, [r5, r3]
0032191c  3c 21 8d e5                                      str r2, [sp, #0x13c]
00321920  44 c1 8d e5                                      str ip, [sp, #0x144]
00321924  08 30 83 e2                                      add r3, r3, #8
00321928  38 31 8d e5                                      str r3, [sp, #0x138]
0032192c  0c 30 a0 e3                                      mov r3, #0xc
00321930  40 31 8d e5                                      str r3, [sp, #0x140]
00321934  00 30 a0 e3                                      mov r3, #0
00321938  48 31 8d e5                                      str r3, [sp, #0x148]
0032193c  fe 35 a0 e3                                      mov r3, #0x3f800000
00321940  4c 31 8d e5                                      str r3, [sp, #0x14c]
00321944  5c 5d 00 eb                                      bl #0x338ebc
00321948  00 38 9f e5                                      ldr r3, [pc, #0x800]
0032194c  03 30 95 e7                                      ldr r3, [r5, r3]
00321950  08 30 83 e2                                      add r3, r3, #8
00321954  38 31 8d e5                                      str r3, [sp, #0x138]
00321958  c0 11 94 e5                                      ldr r1, [r4, #0x1c0]
0032195c  c4 01 94 e5                                      ldr r0, [r4, #0x1c4]
00321960  8f b4 ff eb                                      bl #0x30eba4
00321964  fe 15 a0 e3                                      mov r1, #0x3f800000
00321968  8d b4 ff eb                                      bl #0x30eba4
0032196c  3f 14 a0 e3                                      mov r1, #0x3f000000
00321970  fd b4 ff eb                                      bl #0x30ed6c
00321974  00 10 a0 e1                                      mov r1, r0
00321978  b8 01 94 e5                                      ldr r0, [r4, #0x1b8]
0032197c  cc b2 ff eb                                      bl #0x30e4b4
00321980  00 00 50 e3                                      cmp r0, #0
00321984  8f 03 00 1a                                      bne #0x3227c8
00321988  c8 31 d4 e5                                      ldrb r3, [r4, #0x1c8]
0032198c  00 00 53 e3                                      cmp r3, #0
00321990  14 00 00 0a                                      beq #0x3219e8
00321994  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321998  00 c0 a0 e3                                      mov ip, #0
0032199c  90 37 9f e5                                      ldr r3, [pc, #0x790]
003219a0  07 20 a0 e3                                      mov r2, #7
003219a4  12 1e 8d e2                                      add r1, sp, #0x120
003219a8  03 30 95 e7                                      ldr r3, [r5, r3]
003219ac  24 21 8d e5                                      str r2, [sp, #0x124]
003219b0  2c c1 8d e5                                      str ip, [sp, #0x12c]
003219b4  08 30 83 e2                                      add r3, r3, #8
003219b8  20 31 8d e5                                      str r3, [sp, #0x120]
003219bc  0d 30 a0 e3                                      mov r3, #0xd
003219c0  28 31 8d e5                                      str r3, [sp, #0x128]
003219c4  00 30 a0 e3                                      mov r3, #0
003219c8  30 31 8d e5                                      str r3, [sp, #0x130]
003219cc  fe 35 a0 e3                                      mov r3, #0x3f800000
003219d0  34 31 8d e5                                      str r3, [sp, #0x134]
003219d4  38 5d 00 eb                                      bl #0x338ebc
003219d8  70 37 9f e5                                      ldr r3, [pc, #0x770]
003219dc  03 30 95 e7                                      ldr r3, [r5, r3]
003219e0  08 30 83 e2                                      add r3, r3, #8
003219e4  20 31 8d e5                                      str r3, [sp, #0x120]
003219e8  e0 11 94 e5                                      ldr r1, [r4, #0x1e0]
003219ec  e4 01 94 e5                                      ldr r0, [r4, #0x1e4]
003219f0  6b b4 ff eb                                      bl #0x30eba4
003219f4  fe 15 a0 e3                                      mov r1, #0x3f800000
003219f8  69 b4 ff eb                                      bl #0x30eba4
003219fc  3f 14 a0 e3                                      mov r1, #0x3f000000
00321a00  d9 b4 ff eb                                      bl #0x30ed6c
00321a04  00 10 a0 e1                                      mov r1, r0
00321a08  d8 01 94 e5                                      ldr r0, [r4, #0x1d8]
00321a0c  a8 b2 ff eb                                      bl #0x30e4b4
00321a10  00 00 50 e3                                      cmp r0, #0
00321a14  65 03 00 1a                                      bne #0x3227b0
00321a18  e8 31 d4 e5                                      ldrb r3, [r4, #0x1e8]
00321a1c  00 00 53 e3                                      cmp r3, #0
00321a20  14 00 00 0a                                      beq #0x321a78
00321a24  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321a28  00 c0 a0 e3                                      mov ip, #0
00321a2c  00 37 9f e5                                      ldr r3, [pc, #0x700]
00321a30  07 20 a0 e3                                      mov r2, #7
00321a34  42 1f 8d e2                                      add r1, sp, #0x108
00321a38  03 30 95 e7                                      ldr r3, [r5, r3]
00321a3c  0c 21 8d e5                                      str r2, [sp, #0x10c]
00321a40  14 c1 8d e5                                      str ip, [sp, #0x114]
00321a44  08 30 83 e2                                      add r3, r3, #8
00321a48  08 31 8d e5                                      str r3, [sp, #0x108]
00321a4c  0e 30 a0 e3                                      mov r3, #0xe
00321a50  10 31 8d e5                                      str r3, [sp, #0x110]
00321a54  00 30 a0 e3                                      mov r3, #0
00321a58  18 31 8d e5                                      str r3, [sp, #0x118]
00321a5c  fe 35 a0 e3                                      mov r3, #0x3f800000
00321a60  1c 31 8d e5                                      str r3, [sp, #0x11c]
00321a64  14 5d 00 eb                                      bl #0x338ebc
00321a68  e0 36 9f e5                                      ldr r3, [pc, #0x6e0]
00321a6c  03 30 95 e7                                      ldr r3, [r5, r3]
00321a70  08 30 83 e2                                      add r3, r3, #8
00321a74  08 31 8d e5                                      str r3, [sp, #0x108]
00321a78  00 12 94 e5                                      ldr r1, [r4, #0x200]
00321a7c  04 02 94 e5                                      ldr r0, [r4, #0x204]
00321a80  47 b4 ff eb                                      bl #0x30eba4
00321a84  fe 15 a0 e3                                      mov r1, #0x3f800000
00321a88  45 b4 ff eb                                      bl #0x30eba4
00321a8c  3f 14 a0 e3                                      mov r1, #0x3f000000
00321a90  b5 b4 ff eb                                      bl #0x30ed6c
00321a94  00 10 a0 e1                                      mov r1, r0
00321a98  f8 01 94 e5                                      ldr r0, [r4, #0x1f8]
00321a9c  84 b2 ff eb                                      bl #0x30e4b4
00321aa0  00 00 50 e3                                      cmp r0, #0
00321aa4  3b 03 00 1a                                      bne #0x322798
00321aa8  08 32 d4 e5                                      ldrb r3, [r4, #0x208]
00321aac  00 00 53 e3                                      cmp r3, #0
00321ab0  14 00 00 0a                                      beq #0x321b08
00321ab4  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321ab8  00 c0 a0 e3                                      mov ip, #0
00321abc  70 36 9f e5                                      ldr r3, [pc, #0x670]
00321ac0  07 20 a0 e3                                      mov r2, #7
00321ac4  f0 10 8d e2                                      add r1, sp, #0xf0
00321ac8  03 30 95 e7                                      ldr r3, [r5, r3]
00321acc  f4 20 8d e5                                      str r2, [sp, #0xf4]
00321ad0  fc c0 8d e5                                      str ip, [sp, #0xfc]
00321ad4  08 30 83 e2                                      add r3, r3, #8
00321ad8  f0 30 8d e5                                      str r3, [sp, #0xf0]
00321adc  0f 30 a0 e3                                      mov r3, #0xf
00321ae0  f8 30 8d e5                                      str r3, [sp, #0xf8]
00321ae4  00 30 a0 e3                                      mov r3, #0
00321ae8  00 31 8d e5                                      str r3, [sp, #0x100]
00321aec  fe 35 a0 e3                                      mov r3, #0x3f800000
00321af0  04 31 8d e5                                      str r3, [sp, #0x104]
00321af4  f0 5c 00 eb                                      bl #0x338ebc
00321af8  50 36 9f e5                                      ldr r3, [pc, #0x650]
00321afc  03 30 95 e7                                      ldr r3, [r5, r3]
00321b00  08 30 83 e2                                      add r3, r3, #8
00321b04  f0 30 8d e5                                      str r3, [sp, #0xf0]
00321b08  c0 14 94 e5                                      ldr r1, [r4, #0x4c0]
00321b0c  c4 04 94 e5                                      ldr r0, [r4, #0x4c4]
00321b10  23 b4 ff eb                                      bl #0x30eba4
00321b14  fe 15 a0 e3                                      mov r1, #0x3f800000
00321b18  21 b4 ff eb                                      bl #0x30eba4
00321b1c  3f 14 a0 e3                                      mov r1, #0x3f000000
00321b20  91 b4 ff eb                                      bl #0x30ed6c
00321b24  00 10 a0 e1                                      mov r1, r0
00321b28  b8 04 94 e5                                      ldr r0, [r4, #0x4b8]
00321b2c  60 b2 ff eb                                      bl #0x30e4b4
00321b30  00 00 50 e3                                      cmp r0, #0
00321b34  11 03 00 1a                                      bne #0x322780
00321b38  c8 34 d4 e5                                      ldrb r3, [r4, #0x4c8]
00321b3c  00 00 53 e3                                      cmp r3, #0
00321b40  14 00 00 0a                                      beq #0x321b98
00321b44  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321b48  00 c0 a0 e3                                      mov ip, #0
00321b4c  e0 35 9f e5                                      ldr r3, [pc, #0x5e0]
00321b50  07 20 a0 e3                                      mov r2, #7
00321b54  d8 10 8d e2                                      add r1, sp, #0xd8
00321b58  03 30 95 e7                                      ldr r3, [r5, r3]
00321b5c  dc 20 8d e5                                      str r2, [sp, #0xdc]
00321b60  e4 c0 8d e5                                      str ip, [sp, #0xe4]
00321b64  08 30 83 e2                                      add r3, r3, #8
00321b68  d8 30 8d e5                                      str r3, [sp, #0xd8]
00321b6c  25 30 a0 e3                                      mov r3, #0x25
00321b70  e0 30 8d e5                                      str r3, [sp, #0xe0]
00321b74  00 30 a0 e3                                      mov r3, #0
00321b78  e8 30 8d e5                                      str r3, [sp, #0xe8]
00321b7c  fe 35 a0 e3                                      mov r3, #0x3f800000
00321b80  ec 30 8d e5                                      str r3, [sp, #0xec]
00321b84  cc 5c 00 eb                                      bl #0x338ebc
00321b88  c0 35 9f e5                                      ldr r3, [pc, #0x5c0]
00321b8c  03 30 95 e7                                      ldr r3, [r5, r3]
00321b90  08 30 83 e2                                      add r3, r3, #8
00321b94  d8 30 8d e5                                      str r3, [sp, #0xd8]
00321b98  e0 14 94 e5                                      ldr r1, [r4, #0x4e0]
00321b9c  e4 04 94 e5                                      ldr r0, [r4, #0x4e4]
00321ba0  ff b3 ff eb                                      bl #0x30eba4
00321ba4  fe 15 a0 e3                                      mov r1, #0x3f800000
00321ba8  fd b3 ff eb                                      bl #0x30eba4
00321bac  3f 14 a0 e3                                      mov r1, #0x3f000000
00321bb0  6d b4 ff eb                                      bl #0x30ed6c
00321bb4  00 10 a0 e1                                      mov r1, r0
00321bb8  d8 04 94 e5                                      ldr r0, [r4, #0x4d8]
00321bbc  3c b2 ff eb                                      bl #0x30e4b4
00321bc0  00 00 50 e3                                      cmp r0, #0
00321bc4  e7 02 00 1a                                      bne #0x322768
00321bc8  e8 34 d4 e5                                      ldrb r3, [r4, #0x4e8]
00321bcc  00 00 53 e3                                      cmp r3, #0
00321bd0  14 00 00 0a                                      beq #0x321c28
00321bd4  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321bd8  00 c0 a0 e3                                      mov ip, #0
00321bdc  50 35 9f e5                                      ldr r3, [pc, #0x550]
00321be0  07 20 a0 e3                                      mov r2, #7
00321be4  c0 10 8d e2                                      add r1, sp, #0xc0
00321be8  03 30 95 e7                                      ldr r3, [r5, r3]
00321bec  c4 20 8d e5                                      str r2, [sp, #0xc4]
00321bf0  cc c0 8d e5                                      str ip, [sp, #0xcc]
00321bf4  08 30 83 e2                                      add r3, r3, #8
00321bf8  c0 30 8d e5                                      str r3, [sp, #0xc0]
00321bfc  26 30 a0 e3                                      mov r3, #0x26
00321c00  c8 30 8d e5                                      str r3, [sp, #0xc8]
00321c04  00 30 a0 e3                                      mov r3, #0
00321c08  d0 30 8d e5                                      str r3, [sp, #0xd0]
00321c0c  fe 35 a0 e3                                      mov r3, #0x3f800000
00321c10  d4 30 8d e5                                      str r3, [sp, #0xd4]
00321c14  a8 5c 00 eb                                      bl #0x338ebc
00321c18  30 35 9f e5                                      ldr r3, [pc, #0x530]
00321c1c  03 30 95 e7                                      ldr r3, [r5, r3]
00321c20  08 30 83 e2                                      add r3, r3, #8
00321c24  c0 30 8d e5                                      str r3, [sp, #0xc0]
00321c28  00 15 94 e5                                      ldr r1, [r4, #0x500]
00321c2c  04 05 94 e5                                      ldr r0, [r4, #0x504]
00321c30  db b3 ff eb                                      bl #0x30eba4
00321c34  fe 15 a0 e3                                      mov r1, #0x3f800000
00321c38  d9 b3 ff eb                                      bl #0x30eba4
00321c3c  3f 14 a0 e3                                      mov r1, #0x3f000000
00321c40  49 b4 ff eb                                      bl #0x30ed6c
00321c44  00 10 a0 e1                                      mov r1, r0
00321c48  f8 04 94 e5                                      ldr r0, [r4, #0x4f8]
00321c4c  18 b2 ff eb                                      bl #0x30e4b4
00321c50  00 00 50 e3                                      cmp r0, #0
00321c54  bd 02 00 1a                                      bne #0x322750
00321c58  08 35 d4 e5                                      ldrb r3, [r4, #0x508]
00321c5c  00 00 53 e3                                      cmp r3, #0
00321c60  14 00 00 0a                                      beq #0x321cb8
00321c64  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321c68  00 c0 a0 e3                                      mov ip, #0
00321c6c  c0 34 9f e5                                      ldr r3, [pc, #0x4c0]
00321c70  07 20 a0 e3                                      mov r2, #7
00321c74  a8 10 8d e2                                      add r1, sp, #0xa8
00321c78  03 30 95 e7                                      ldr r3, [r5, r3]
00321c7c  ac 20 8d e5                                      str r2, [sp, #0xac]
00321c80  b4 c0 8d e5                                      str ip, [sp, #0xb4]
00321c84  08 30 83 e2                                      add r3, r3, #8
00321c88  a8 30 8d e5                                      str r3, [sp, #0xa8]
00321c8c  27 30 a0 e3                                      mov r3, #0x27
00321c90  b0 30 8d e5                                      str r3, [sp, #0xb0]
00321c94  00 30 a0 e3                                      mov r3, #0
00321c98  b8 30 8d e5                                      str r3, [sp, #0xb8]
00321c9c  fe 35 a0 e3                                      mov r3, #0x3f800000
00321ca0  bc 30 8d e5                                      str r3, [sp, #0xbc]
00321ca4  84 5c 00 eb                                      bl #0x338ebc
00321ca8  a0 34 9f e5                                      ldr r3, [pc, #0x4a0]
00321cac  03 30 95 e7                                      ldr r3, [r5, r3]
00321cb0  08 30 83 e2                                      add r3, r3, #8
00321cb4  a8 30 8d e5                                      str r3, [sp, #0xa8]
00321cb8  20 15 94 e5                                      ldr r1, [r4, #0x520]
00321cbc  24 05 94 e5                                      ldr r0, [r4, #0x524]
00321cc0  b7 b3 ff eb                                      bl #0x30eba4
00321cc4  fe 15 a0 e3                                      mov r1, #0x3f800000
00321cc8  b5 b3 ff eb                                      bl #0x30eba4
00321ccc  3f 14 a0 e3                                      mov r1, #0x3f000000
00321cd0  25 b4 ff eb                                      bl #0x30ed6c
00321cd4  00 10 a0 e1                                      mov r1, r0
00321cd8  18 05 94 e5                                      ldr r0, [r4, #0x518]
00321cdc  f4 b1 ff eb                                      bl #0x30e4b4
00321ce0  00 00 50 e3                                      cmp r0, #0
00321ce4  93 02 00 1a                                      bne #0x322738
00321ce8  28 35 d4 e5                                      ldrb r3, [r4, #0x528]
00321cec  00 00 53 e3                                      cmp r3, #0
00321cf0  14 00 00 0a                                      beq #0x321d48
00321cf4  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321cf8  00 c0 a0 e3                                      mov ip, #0
00321cfc  30 34 9f e5                                      ldr r3, [pc, #0x430]
00321d00  07 20 a0 e3                                      mov r2, #7
00321d04  90 10 8d e2                                      add r1, sp, #0x90
00321d08  03 30 95 e7                                      ldr r3, [r5, r3]
00321d0c  94 20 8d e5                                      str r2, [sp, #0x94]
00321d10  9c c0 8d e5                                      str ip, [sp, #0x9c]
00321d14  08 30 83 e2                                      add r3, r3, #8
00321d18  90 30 8d e5                                      str r3, [sp, #0x90]
00321d1c  28 30 a0 e3                                      mov r3, #0x28
00321d20  98 30 8d e5                                      str r3, [sp, #0x98]
00321d24  00 30 a0 e3                                      mov r3, #0
00321d28  a0 30 8d e5                                      str r3, [sp, #0xa0]
00321d2c  fe 35 a0 e3                                      mov r3, #0x3f800000
00321d30  a4 30 8d e5                                      str r3, [sp, #0xa4]
00321d34  60 5c 00 eb                                      bl #0x338ebc
00321d38  10 34 9f e5                                      ldr r3, [pc, #0x410]
00321d3c  03 30 95 e7                                      ldr r3, [r5, r3]
00321d40  08 30 83 e2                                      add r3, r3, #8
00321d44  90 30 8d e5                                      str r3, [sp, #0x90]
00321d48  40 15 94 e5                                      ldr r1, [r4, #0x540]
00321d4c  44 05 94 e5                                      ldr r0, [r4, #0x544]
00321d50  93 b3 ff eb                                      bl #0x30eba4
00321d54  fe 15 a0 e3                                      mov r1, #0x3f800000
00321d58  91 b3 ff eb                                      bl #0x30eba4
00321d5c  3f 14 a0 e3                                      mov r1, #0x3f000000
00321d60  01 b4 ff eb                                      bl #0x30ed6c
00321d64  00 10 a0 e1                                      mov r1, r0
00321d68  38 05 94 e5                                      ldr r0, [r4, #0x538]
00321d6c  d0 b1 ff eb                                      bl #0x30e4b4
00321d70  00 00 50 e3                                      cmp r0, #0
00321d74  69 02 00 1a                                      bne #0x322720
00321d78  48 35 d4 e5                                      ldrb r3, [r4, #0x548]
00321d7c  00 00 53 e3                                      cmp r3, #0
00321d80  14 00 00 0a                                      beq #0x321dd8
00321d84  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321d88  00 c0 a0 e3                                      mov ip, #0
00321d8c  a0 33 9f e5                                      ldr r3, [pc, #0x3a0]
00321d90  07 20 a0 e3                                      mov r2, #7
00321d94  78 10 8d e2                                      add r1, sp, #0x78
00321d98  03 30 95 e7                                      ldr r3, [r5, r3]
00321d9c  7c 20 8d e5                                      str r2, [sp, #0x7c]
00321da0  84 c0 8d e5                                      str ip, [sp, #0x84]
00321da4  08 30 83 e2                                      add r3, r3, #8
00321da8  78 30 8d e5                                      str r3, [sp, #0x78]
00321dac  29 30 a0 e3                                      mov r3, #0x29
00321db0  80 30 8d e5                                      str r3, [sp, #0x80]
00321db4  00 30 a0 e3                                      mov r3, #0
00321db8  88 30 8d e5                                      str r3, [sp, #0x88]
00321dbc  fe 35 a0 e3                                      mov r3, #0x3f800000
00321dc0  8c 30 8d e5                                      str r3, [sp, #0x8c]
00321dc4  3c 5c 00 eb                                      bl #0x338ebc
00321dc8  80 33 9f e5                                      ldr r3, [pc, #0x380]
00321dcc  03 30 95 e7                                      ldr r3, [r5, r3]
00321dd0  08 30 83 e2                                      add r3, r3, #8
00321dd4  78 30 8d e5                                      str r3, [sp, #0x78]
00321dd8  60 15 94 e5                                      ldr r1, [r4, #0x560]
00321ddc  64 05 94 e5                                      ldr r0, [r4, #0x564]
00321de0  6f b3 ff eb                                      bl #0x30eba4
00321de4  fe 15 a0 e3                                      mov r1, #0x3f800000
00321de8  6d b3 ff eb                                      bl #0x30eba4
00321dec  3f 14 a0 e3                                      mov r1, #0x3f000000
00321df0  dd b3 ff eb                                      bl #0x30ed6c
00321df4  00 10 a0 e1                                      mov r1, r0
00321df8  58 05 94 e5                                      ldr r0, [r4, #0x558]
00321dfc  ac b1 ff eb                                      bl #0x30e4b4
00321e00  00 00 50 e3                                      cmp r0, #0
00321e04  3f 02 00 1a                                      bne #0x322708
00321e08  68 35 d4 e5                                      ldrb r3, [r4, #0x568]
00321e0c  00 00 53 e3                                      cmp r3, #0
00321e10  14 00 00 0a                                      beq #0x321e68
00321e14  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321e18  00 c0 a0 e3                                      mov ip, #0
00321e1c  10 33 9f e5                                      ldr r3, [pc, #0x310]
00321e20  07 20 a0 e3                                      mov r2, #7
00321e24  60 10 8d e2                                      add r1, sp, #0x60
00321e28  03 30 95 e7                                      ldr r3, [r5, r3]
00321e2c  64 20 8d e5                                      str r2, [sp, #0x64]
00321e30  6c c0 8d e5                                      str ip, [sp, #0x6c]
00321e34  08 30 83 e2                                      add r3, r3, #8
00321e38  60 30 8d e5                                      str r3, [sp, #0x60]
00321e3c  2a 30 a0 e3                                      mov r3, #0x2a
00321e40  68 30 8d e5                                      str r3, [sp, #0x68]
00321e44  00 30 a0 e3                                      mov r3, #0
00321e48  70 30 8d e5                                      str r3, [sp, #0x70]
00321e4c  fe 35 a0 e3                                      mov r3, #0x3f800000
00321e50  74 30 8d e5                                      str r3, [sp, #0x74]
00321e54  18 5c 00 eb                                      bl #0x338ebc
00321e58  f0 32 9f e5                                      ldr r3, [pc, #0x2f0]
00321e5c  03 30 95 e7                                      ldr r3, [r5, r3]
00321e60  08 30 83 e2                                      add r3, r3, #8
00321e64  60 30 8d e5                                      str r3, [sp, #0x60]
00321e68  80 15 94 e5                                      ldr r1, [r4, #0x580]
00321e6c  84 05 94 e5                                      ldr r0, [r4, #0x584]
00321e70  4b b3 ff eb                                      bl #0x30eba4
00321e74  fe 15 a0 e3                                      mov r1, #0x3f800000
00321e78  49 b3 ff eb                                      bl #0x30eba4
00321e7c  3f 14 a0 e3                                      mov r1, #0x3f000000
00321e80  b9 b3 ff eb                                      bl #0x30ed6c
00321e84  00 10 a0 e1                                      mov r1, r0
00321e88  78 05 94 e5                                      ldr r0, [r4, #0x578]
00321e8c  88 b1 ff eb                                      bl #0x30e4b4
00321e90  00 00 50 e3                                      cmp r0, #0
00321e94  15 02 00 1a                                      bne #0x3226f0
00321e98  88 35 d4 e5                                      ldrb r3, [r4, #0x588]
00321e9c  00 00 53 e3                                      cmp r3, #0
00321ea0  14 00 00 0a                                      beq #0x321ef8
00321ea4  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321ea8  00 c0 a0 e3                                      mov ip, #0
00321eac  80 32 9f e5                                      ldr r3, [pc, #0x280]
00321eb0  07 20 a0 e3                                      mov r2, #7
00321eb4  48 10 8d e2                                      add r1, sp, #0x48
00321eb8  03 30 95 e7                                      ldr r3, [r5, r3]
00321ebc  4c 20 8d e5                                      str r2, [sp, #0x4c]
00321ec0  54 c0 8d e5                                      str ip, [sp, #0x54]
00321ec4  08 30 83 e2                                      add r3, r3, #8
00321ec8  48 30 8d e5                                      str r3, [sp, #0x48]
00321ecc  2b 30 a0 e3                                      mov r3, #0x2b
00321ed0  50 30 8d e5                                      str r3, [sp, #0x50]
00321ed4  00 30 a0 e3                                      mov r3, #0
00321ed8  58 30 8d e5                                      str r3, [sp, #0x58]
00321edc  fe 35 a0 e3                                      mov r3, #0x3f800000
00321ee0  5c 30 8d e5                                      str r3, [sp, #0x5c]
00321ee4  f4 5b 00 eb                                      bl #0x338ebc
00321ee8  60 32 9f e5                                      ldr r3, [pc, #0x260]
00321eec  03 30 95 e7                                      ldr r3, [r5, r3]
00321ef0  08 30 83 e2                                      add r3, r3, #8
00321ef4  48 30 8d e5                                      str r3, [sp, #0x48]
00321ef8  a0 15 94 e5                                      ldr r1, [r4, #0x5a0]
00321efc  a4 05 94 e5                                      ldr r0, [r4, #0x5a4]
00321f00  27 b3 ff eb                                      bl #0x30eba4
00321f04  fe 15 a0 e3                                      mov r1, #0x3f800000
00321f08  25 b3 ff eb                                      bl #0x30eba4
00321f0c  3f 14 a0 e3                                      mov r1, #0x3f000000
00321f10  95 b3 ff eb                                      bl #0x30ed6c
00321f14  00 10 a0 e1                                      mov r1, r0
00321f18  98 05 94 e5                                      ldr r0, [r4, #0x598]
00321f1c  64 b1 ff eb                                      bl #0x30e4b4
00321f20  00 00 50 e3                                      cmp r0, #0
00321f24  eb 01 00 1a                                      bne #0x3226d8
00321f28  a8 35 d4 e5                                      ldrb r3, [r4, #0x5a8]
00321f2c  00 00 53 e3                                      cmp r3, #0
00321f30  14 00 00 0a                                      beq #0x321f88
00321f34  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321f38  00 c0 a0 e3                                      mov ip, #0
00321f3c  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
00321f40  07 20 a0 e3                                      mov r2, #7
00321f44  30 10 8d e2                                      add r1, sp, #0x30
00321f48  03 30 95 e7                                      ldr r3, [r5, r3]
00321f4c  34 20 8d e5                                      str r2, [sp, #0x34]
00321f50  3c c0 8d e5                                      str ip, [sp, #0x3c]
00321f54  08 30 83 e2                                      add r3, r3, #8
00321f58  30 30 8d e5                                      str r3, [sp, #0x30]
00321f5c  2c 30 a0 e3                                      mov r3, #0x2c
00321f60  38 30 8d e5                                      str r3, [sp, #0x38]
00321f64  00 30 a0 e3                                      mov r3, #0
00321f68  40 30 8d e5                                      str r3, [sp, #0x40]
00321f6c  fe 35 a0 e3                                      mov r3, #0x3f800000
00321f70  44 30 8d e5                                      str r3, [sp, #0x44]
00321f74  d0 5b 00 eb                                      bl #0x338ebc
00321f78  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
00321f7c  03 30 95 e7                                      ldr r3, [r5, r3]
00321f80  08 30 83 e2                                      add r3, r3, #8
00321f84  30 30 8d e5                                      str r3, [sp, #0x30]
00321f88  80 12 94 e5                                      ldr r1, [r4, #0x280]
00321f8c  84 02 94 e5                                      ldr r0, [r4, #0x284]
00321f90  03 b3 ff eb                                      bl #0x30eba4
00321f94  fe 15 a0 e3                                      mov r1, #0x3f800000
00321f98  01 b3 ff eb                                      bl #0x30eba4
00321f9c  3f 14 a0 e3                                      mov r1, #0x3f000000
00321fa0  71 b3 ff eb                                      bl #0x30ed6c
00321fa4  00 10 a0 e1                                      mov r1, r0
00321fa8  78 02 94 e5                                      ldr r0, [r4, #0x278]
00321fac  40 b1 ff eb                                      bl #0x30e4b4
00321fb0  00 00 50 e3                                      cmp r0, #0
00321fb4  c1 01 00 1a                                      bne #0x3226c0
00321fb8  88 32 d4 e5                                      ldrb r3, [r4, #0x288]
00321fbc  00 00 53 e3                                      cmp r3, #0
00321fc0  14 00 00 0a                                      beq #0x322018
00321fc4  14 00 96 e5                                      ldr r0, [r6, #0x14]
00321fc8  00 c0 a0 e3                                      mov ip, #0
00321fcc  60 31 9f e5                                      ldr r3, [pc, #0x160]
00321fd0  07 20 a0 e3                                      mov r2, #7
00321fd4  18 10 8d e2                                      add r1, sp, #0x18
00321fd8  03 30 95 e7                                      ldr r3, [r5, r3]
00321fdc  1c 20 8d e5                                      str r2, [sp, #0x1c]
00321fe0  24 c0 8d e5                                      str ip, [sp, #0x24]
00321fe4  08 30 83 e2                                      add r3, r3, #8
00321fe8  18 30 8d e5                                      str r3, [sp, #0x18]
00321fec  13 30 a0 e3                                      mov r3, #0x13
00321ff0  20 30 8d e5                                      str r3, [sp, #0x20]
00321ff4  00 30 a0 e3                                      mov r3, #0
00321ff8  28 30 8d e5                                      str r3, [sp, #0x28]
00321ffc  fe 35 a0 e3                                      mov r3, #0x3f800000
00322000  2c 30 8d e5                                      str r3, [sp, #0x2c]
00322004  ac 5b 00 eb                                      bl #0x338ebc
00322008  40 31 9f e5                                      ldr r3, [pc, #0x140]
0032200c  03 30 95 e7                                      ldr r3, [r5, r3]
00322010  08 30 83 e2                                      add r3, r3, #8
00322014  18 30 8d e5                                      str r3, [sp, #0x18]
00322018  e0 12 94 e5                                      ldr r1, [r4, #0x2e0]
0032201c  e4 02 94 e5                                      ldr r0, [r4, #0x2e4]
00322020  df b2 ff eb                                      bl #0x30eba4
00322024  fe 15 a0 e3                                      mov r1, #0x3f800000
00322028  dd b2 ff eb                                      bl #0x30eba4
0032202c  3f 14 a0 e3                                      mov r1, #0x3f000000
00322030  4d b3 ff eb                                      bl #0x30ed6c
00322034  00 10 a0 e1                                      mov r1, r0
00322038  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
0032203c  1c b1 ff eb                                      bl #0x30e4b4
00322040  00 00 50 e3                                      cmp r0, #0
00322044  97 01 00 1a                                      bne #0x3226a8
00322048  e8 32 d4 e5                                      ldrb r3, [r4, #0x2e8]
0032204c  00 00 53 e3                                      cmp r3, #0
00322050  14 00 00 0a                                      beq #0x3220a8
00322054  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322058  00 c0 a0 e3                                      mov ip, #0
0032205c  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
00322060  07 20 a0 e3                                      mov r2, #7
00322064  0d 10 a0 e1                                      mov r1, sp
00322068  03 30 95 e7                                      ldr r3, [r5, r3]
0032206c  04 20 8d e5                                      str r2, [sp, #4]
00322070  0c c0 8d e5                                      str ip, [sp, #0xc]
00322074  08 30 83 e2                                      add r3, r3, #8
00322078  00 30 8d e5                                      str r3, [sp]
0032207c  16 30 a0 e3                                      mov r3, #0x16
00322080  08 30 8d e5                                      str r3, [sp, #8]
00322084  00 30 a0 e3                                      mov r3, #0
00322088  10 30 8d e5                                      str r3, [sp, #0x10]
0032208c  fe 35 a0 e3                                      mov r3, #0x3f800000
00322090  14 30 8d e5                                      str r3, [sp, #0x14]
00322094  88 5b 00 eb                                      bl #0x338ebc
00322098  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0032209c  03 30 95 e7                                      ldr r3, [r5, r3]
003220a0  08 30 83 e2                                      add r3, r3, #8
003220a4  00 30 8d e5                                      str r3, [sp]
003220a8  40 10 94 e5                                      ldr r1, [r4, #0x40]
003220ac  44 00 94 e5                                      ldr r0, [r4, #0x44]
003220b0  bb b2 ff eb                                      bl #0x30eba4
003220b4  fe 15 a0 e3                                      mov r1, #0x3f800000
003220b8  b9 b2 ff eb                                      bl #0x30eba4
003220bc  3f 14 a0 e3                                      mov r1, #0x3f000000
003220c0  29 b3 ff eb                                      bl #0x30ed6c
003220c4  00 10 a0 e1                                      mov r1, r0
003220c8  38 00 94 e5                                      ldr r0, [r4, #0x38]
003220cc  f8 b0 ff eb                                      bl #0x30e4b4
003220d0  00 00 50 e3                                      cmp r0, #0
003220d4  44 fc ff 0a                                      beq #0x3211ec
003220d8  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
003220dc  00 00 53 e3                                      cmp r3, #0
003220e0  41 fc ff 1a                                      bne #0x3211ec
003220e4  68 2a 04 eb                                      bl #0x42ca8c
003220e8  48 10 9f e5                                      ldr r1, [pc, #0x48]
003220ec  01 10 8f e0                                      add r1, pc, r1
003220f0  3e 2c 04 eb                                      bl #0x42d1f0
003220f4  00 40 a0 e1                                      mov r4, r0
003220f8  63 2a 04 eb                                      bl #0x42ca8c
003220fc  38 10 9f e5                                      ldr r1, [pc, #0x38]
00322100  01 10 8f e0                                      add r1, pc, r1
00322104  39 2c 04 eb                                      bl #0x42d1f0
00322108  00 00 54 e3                                      cmp r4, #0
0032210c  00 50 a0 e1                                      mov r5, r0
00322110  fa 01 00 0a                                      beq #0x322900
00322114  04 00 a0 e1                                      mov r0, r4
00322118  b5 f4 03 eb                                      bl #0x41f3f4
0032211c  00 00 50 e3                                      cmp r0, #0
00322120  f6 01 00 0a                                      beq #0x322900
00322124  04 00 94 e5                                      ldr r0, [r4, #4]
00322128  7c 26 12 eb                                      bl #0x7abb20
0032212c  2e fc ff ea                                      b #0x3211ec
; mapping-symbol data/literal pool
00322130  10 39 67 00 90 3d 00 00 14 cc 59 00 18 cc 59 00  .byte 0x10, 0x39, 0x67, 0x00, 0x90, 0x3d, 0x00, 0x00, 0x14, 0xcc, 0x59, 0x00, 0x18, 0xcc, 0x59, 0x00
00322140  94 d8 67 00 64 d7 67 00 bc d6 67 00 18 4a 00 00  .byte 0x94, 0xd8, 0x67, 0x00, 0x64, 0xd7, 0x67, 0x00, 0xbc, 0xd6, 0x67, 0x00, 0x18, 0x4a, 0x00, 0x00
00322150  b0 0b 00 00                                      .byte 0xb0, 0x0b, 0x00, 0x00
; decoder-mode: arm
00322154  dc a3 0b eb                                      bl #0x60b0cc
00322158  20 30 1f e5                                      ldr r3, [pc, #-0x20]
0032215c  c0 11 94 e5                                      ldr r1, [r4, #0x1c0]
00322160  03 70 9f e7                                      ldr r7, [pc, r3]
00322164  00 70 67 e0                                      rsb r7, r7, r0
00322168  c4 01 94 e5                                      ldr r0, [r4, #0x1c4]
0032216c  8c b2 ff eb                                      bl #0x30eba4
00322170  fe 15 a0 e3                                      mov r1, #0x3f800000
00322174  8a b2 ff eb                                      bl #0x30eba4
00322178  3f 14 a0 e3                                      mov r1, #0x3f000000
0032217c  fa b2 ff eb                                      bl #0x30ed6c
00322180  00 10 a0 e1                                      mov r1, r0
00322184  b8 01 94 e5                                      ldr r0, [r4, #0x1b8]
00322188  c9 b0 ff eb                                      bl #0x30e4b4
0032218c  00 00 50 e3                                      cmp r0, #0
00322190  02 00 00 0a                                      beq #0x3221a0
00322194  c8 31 d4 e5                                      ldrb r3, [r4, #0x1c8]
00322198  00 00 53 e3                                      cmp r3, #0
0032219c  26 01 00 0a                                      beq #0x32263c
003221a0  c0 14 94 e5                                      ldr r1, [r4, #0x4c0]
003221a4  c4 04 94 e5                                      ldr r0, [r4, #0x4c4]
003221a8  7d b2 ff eb                                      bl #0x30eba4
003221ac  fe 15 a0 e3                                      mov r1, #0x3f800000
003221b0  7b b2 ff eb                                      bl #0x30eba4
003221b4  3f 14 a0 e3                                      mov r1, #0x3f000000
003221b8  eb b2 ff eb                                      bl #0x30ed6c
003221bc  00 10 a0 e1                                      mov r1, r0
003221c0  b8 04 94 e5                                      ldr r0, [r4, #0x4b8]
003221c4  ba b0 ff eb                                      bl #0x30e4b4
003221c8  00 00 50 e3                                      cmp r0, #0
003221cc  02 00 00 0a                                      beq #0x3221dc
003221d0  c8 34 d4 e5                                      ldrb r3, [r4, #0x4c8]
003221d4  00 00 53 e3                                      cmp r3, #0
003221d8  17 01 00 0a                                      beq #0x32263c
003221dc  80 11 94 e5                                      ldr r1, [r4, #0x180]
003221e0  84 01 94 e5                                      ldr r0, [r4, #0x184]
003221e4  6e b2 ff eb                                      bl #0x30eba4
003221e8  fe 15 a0 e3                                      mov r1, #0x3f800000
003221ec  6c b2 ff eb                                      bl #0x30eba4
003221f0  3f 14 a0 e3                                      mov r1, #0x3f000000
003221f4  dc b2 ff eb                                      bl #0x30ed6c
003221f8  00 10 a0 e1                                      mov r1, r0
003221fc  78 01 94 e5                                      ldr r0, [r4, #0x178]
00322200  ab b0 ff eb                                      bl #0x30e4b4
00322204  00 00 50 e3                                      cmp r0, #0
00322208  02 00 00 0a                                      beq #0x322218
0032220c  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
00322210  00 00 53 e3                                      cmp r3, #0
00322214  f2 00 00 0a                                      beq #0x3225e4
00322218  c0 14 94 e5                                      ldr r1, [r4, #0x4c0]
0032221c  c4 04 94 e5                                      ldr r0, [r4, #0x4c4]
00322220  5f b2 ff eb                                      bl #0x30eba4
00322224  fe 15 a0 e3                                      mov r1, #0x3f800000
00322228  5d b2 ff eb                                      bl #0x30eba4
0032222c  3f 14 a0 e3                                      mov r1, #0x3f000000
00322230  cd b2 ff eb                                      bl #0x30ed6c
00322234  00 10 a0 e1                                      mov r1, r0
00322238  b8 04 94 e5                                      ldr r0, [r4, #0x4b8]
0032223c  9c b0 ff eb                                      bl #0x30e4b4
00322240  00 00 50 e3                                      cmp r0, #0
00322244  02 00 00 0a                                      beq #0x322254
00322248  c8 34 d4 e5                                      ldrb r3, [r4, #0x4c8]
0032224c  00 00 53 e3                                      cmp r3, #0
00322250  e3 00 00 0a                                      beq #0x3225e4
00322254  50 11 94 e5                                      ldr r1, [r4, #0x150]
00322258  54 01 94 e5                                      ldr r0, [r4, #0x154]
0032225c  50 b2 ff eb                                      bl #0x30eba4
00322260  fe 15 a0 e3                                      mov r1, #0x3f800000
00322264  4e b2 ff eb                                      bl #0x30eba4
00322268  3f 14 a0 e3                                      mov r1, #0x3f000000
0032226c  be b2 ff eb                                      bl #0x30ed6c
00322270  00 10 a0 e1                                      mov r1, r0
00322274  4c 01 94 e5                                      ldr r0, [r4, #0x14c]
00322278  8d b0 ff eb                                      bl #0x30e4b4
0032227c  00 00 50 e3                                      cmp r0, #0
00322280  1d 00 00 0a                                      beq #0x3222fc
00322284  63 00 57 e3                                      cmp r7, #0x63
00322288  1b 00 00 9a                                      bls #0x3222fc
0032228c  50 31 1f e5                                      ldr r3, [pc, #-0x150]
00322290  03 30 8f e0                                      add r3, pc, r3
00322294  00 20 93 e5                                      ldr r2, [r3]
00322298  02 20 87 e0                                      add r2, r7, r2
0032229c  00 00 52 e3                                      cmp r2, #0
003222a0  00 20 83 e5                                      str r2, [r3]
003222a4  14 00 00 0a                                      beq #0x3222fc
003222a8  64 21 1f e5                                      ldr r2, [pc, #-0x164]
003222ac  14 00 96 e5                                      ldr r0, [r6, #0x14]
003222b0  00 30 a0 e3                                      mov r3, #0
003222b4  02 20 95 e7                                      ldr r2, [r5, r2]
003222b8  b5 1f 8d e2                                      add r1, sp, #0x2d4
003222bc  e7 32 cd e5                                      strb r3, [sp, #0x2e7]
003222c0  08 20 82 e2                                      add r2, r2, #8
003222c4  d4 22 8d e5                                      str r2, [sp, #0x2d4]
003222c8  87 20 a0 e3                                      mov r2, #0x87
003222cc  e0 22 8d e5                                      str r2, [sp, #0x2e0]
003222d0  01 20 a0 e3                                      mov r2, #1
003222d4  d8 32 8d e5                                      str r3, [sp, #0x2d8]
003222d8  dc 32 8d e5                                      str r3, [sp, #0x2dc]
003222dc  e5 32 cd e5                                      strb r3, [sp, #0x2e5]
003222e0  e6 32 cd e5                                      strb r3, [sp, #0x2e6]
003222e4  e4 22 cd e5                                      strb r2, [sp, #0x2e4]
003222e8  f3 5a 00 eb                                      bl #0x338ebc
003222ec  a4 31 1f e5                                      ldr r3, [pc, #-0x1a4]
003222f0  03 30 95 e7                                      ldr r3, [r5, r3]
003222f4  08 30 83 e2                                      add r3, r3, #8
003222f8  d4 32 8d e5                                      str r3, [sp, #0x2d4]
003222fc  90 11 94 e5                                      ldr r1, [r4, #0x190]
00322300  94 01 94 e5                                      ldr r0, [r4, #0x194]
00322304  26 b2 ff eb                                      bl #0x30eba4
00322308  fe 15 a0 e3                                      mov r1, #0x3f800000
0032230c  24 b2 ff eb                                      bl #0x30eba4
00322310  3f 14 a0 e3                                      mov r1, #0x3f000000
00322314  94 b2 ff eb                                      bl #0x30ed6c
00322318  00 10 a0 e1                                      mov r1, r0
0032231c  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
00322320  63 b0 ff eb                                      bl #0x30e4b4
00322324  00 00 50 e3                                      cmp r0, #0
00322328  1d 00 00 0a                                      beq #0x3223a4
0032232c  63 00 57 e3                                      cmp r7, #0x63
00322330  1b 00 00 9a                                      bls #0x3223a4
00322334  f4 31 1f e5                                      ldr r3, [pc, #-0x1f4]
00322338  03 30 8f e0                                      add r3, pc, r3
0032233c  00 20 93 e5                                      ldr r2, [r3]
00322340  02 70 87 e0                                      add r7, r7, r2
00322344  00 00 57 e3                                      cmp r7, #0
00322348  00 70 83 e5                                      str r7, [r3]
0032234c  14 00 00 0a                                      beq #0x3223a4
00322350  0c 22 1f e5                                      ldr r2, [pc, #-0x20c]
00322354  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322358  00 30 a0 e3                                      mov r3, #0
0032235c  02 20 95 e7                                      ldr r2, [r5, r2]
00322360  0b 1d 8d e2                                      add r1, sp, #0x2c0
00322364  d3 32 cd e5                                      strb r3, [sp, #0x2d3]
00322368  08 20 82 e2                                      add r2, r2, #8
0032236c  c0 22 8d e5                                      str r2, [sp, #0x2c0]
00322370  88 20 a0 e3                                      mov r2, #0x88
00322374  cc 22 8d e5                                      str r2, [sp, #0x2cc]
00322378  01 20 a0 e3                                      mov r2, #1
0032237c  c4 32 8d e5                                      str r3, [sp, #0x2c4]
00322380  c8 32 8d e5                                      str r3, [sp, #0x2c8]
00322384  d1 32 cd e5                                      strb r3, [sp, #0x2d1]
00322388  d2 32 cd e5                                      strb r3, [sp, #0x2d2]
0032238c  d0 22 cd e5                                      strb r2, [sp, #0x2d0]
00322390  c9 5a 00 eb                                      bl #0x338ebc
00322394  4c 32 1f e5                                      ldr r3, [pc, #-0x24c]
00322398  03 30 95 e7                                      ldr r3, [r5, r3]
0032239c  08 30 83 e2                                      add r3, r3, #8
003223a0  c0 32 8d e5                                      str r3, [sp, #0x2c0]
003223a4  20 10 94 e5                                      ldr r1, [r4, #0x20]
003223a8  24 00 94 e5                                      ldr r0, [r4, #0x24]
003223ac  fc b1 ff eb                                      bl #0x30eba4
003223b0  fe 15 a0 e3                                      mov r1, #0x3f800000
003223b4  fa b1 ff eb                                      bl #0x30eba4
003223b8  3f 14 a0 e3                                      mov r1, #0x3f000000
003223bc  6a b2 ff eb                                      bl #0x30ed6c
003223c0  00 10 a0 e1                                      mov r1, r0
003223c4  18 00 94 e5                                      ldr r0, [r4, #0x18]
003223c8  39 b0 ff eb                                      bl #0x30e4b4
003223cc  00 00 50 e3                                      cmp r0, #0
003223d0  02 00 00 0a                                      beq #0x3223e0
003223d4  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
003223d8  00 00 53 e3                                      cmp r3, #0
003223dc  6b 00 00 0a                                      beq #0x322590
003223e0  40 10 94 e5                                      ldr r1, [r4, #0x40]
003223e4  44 00 94 e5                                      ldr r0, [r4, #0x44]
003223e8  ed b1 ff eb                                      bl #0x30eba4
003223ec  fe 15 a0 e3                                      mov r1, #0x3f800000
003223f0  eb b1 ff eb                                      bl #0x30eba4
003223f4  3f 14 a0 e3                                      mov r1, #0x3f000000
003223f8  5b b2 ff eb                                      bl #0x30ed6c
003223fc  00 10 a0 e1                                      mov r1, r0
00322400  38 00 94 e5                                      ldr r0, [r4, #0x38]
00322404  2a b0 ff eb                                      bl #0x30e4b4
00322408  00 00 50 e3                                      cmp r0, #0
0032240c  02 00 00 0a                                      beq #0x32241c
00322410  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
00322414  00 00 53 e3                                      cmp r3, #0
00322418  47 00 00 0a                                      beq #0x32253c
0032241c  60 10 94 e5                                      ldr r1, [r4, #0x60]
00322420  64 00 94 e5                                      ldr r0, [r4, #0x64]
00322424  de b1 ff eb                                      bl #0x30eba4
00322428  fe 15 a0 e3                                      mov r1, #0x3f800000
0032242c  dc b1 ff eb                                      bl #0x30eba4
00322430  3f 14 a0 e3                                      mov r1, #0x3f000000
00322434  4c b2 ff eb                                      bl #0x30ed6c
00322438  00 10 a0 e1                                      mov r1, r0
0032243c  58 00 94 e5                                      ldr r0, [r4, #0x58]
00322440  1b b0 ff eb                                      bl #0x30e4b4
00322444  00 00 50 e3                                      cmp r0, #0
00322448  02 00 00 0a                                      beq #0x322458
0032244c  68 30 d4 e5                                      ldrb r3, [r4, #0x68]
00322450  00 00 53 e3                                      cmp r3, #0
00322454  23 00 00 0a                                      beq #0x3224e8
00322458  80 10 94 e5                                      ldr r1, [r4, #0x80]
0032245c  84 00 94 e5                                      ldr r0, [r4, #0x84]
00322460  cf b1 ff eb                                      bl #0x30eba4
00322464  fe 15 a0 e3                                      mov r1, #0x3f800000
00322468  cd b1 ff eb                                      bl #0x30eba4
0032246c  3f 14 a0 e3                                      mov r1, #0x3f000000
00322470  3d b2 ff eb                                      bl #0x30ed6c
00322474  00 10 a0 e1                                      mov r1, r0
00322478  78 00 94 e5                                      ldr r0, [r4, #0x78]
0032247c  0c b0 ff eb                                      bl #0x30e4b4
00322480  00 00 50 e3                                      cmp r0, #0
00322484  52 fb ff 0a                                      beq #0x3211d4
00322488  88 30 d4 e5                                      ldrb r3, [r4, #0x88]
0032248c  00 00 53 e3                                      cmp r3, #0
00322490  4f fb ff 1a                                      bne #0x3211d4
00322494  50 23 1f e5                                      ldr r2, [pc, #-0x350]
00322498  14 00 96 e5                                      ldr r0, [r6, #0x14]
0032249c  27 1e 8d e2                                      add r1, sp, #0x270
003224a0  02 20 95 e7                                      ldr r2, [r5, r2]
003224a4  83 32 cd e5                                      strb r3, [sp, #0x283]
003224a8  74 32 8d e5                                      str r3, [sp, #0x274]
003224ac  08 20 82 e2                                      add r2, r2, #8
003224b0  70 22 8d e5                                      str r2, [sp, #0x270]
003224b4  34 20 a0 e3                                      mov r2, #0x34
003224b8  7c 22 8d e5                                      str r2, [sp, #0x27c]
003224bc  01 20 a0 e3                                      mov r2, #1
003224c0  78 32 8d e5                                      str r3, [sp, #0x278]
003224c4  81 32 cd e5                                      strb r3, [sp, #0x281]
003224c8  82 32 cd e5                                      strb r3, [sp, #0x282]
003224cc  80 22 cd e5                                      strb r2, [sp, #0x280]
003224d0  79 5a 00 eb                                      bl #0x338ebc
003224d4  8c 33 1f e5                                      ldr r3, [pc, #-0x38c]
003224d8  03 30 95 e7                                      ldr r3, [r5, r3]
003224dc  08 30 83 e2                                      add r3, r3, #8
003224e0  70 32 8d e5                                      str r3, [sp, #0x270]
003224e4  3a fb ff ea                                      b #0x3211d4
003224e8  a4 23 1f e5                                      ldr r2, [pc, #-0x3a4]
003224ec  14 00 96 e5                                      ldr r0, [r6, #0x14]
003224f0  a1 1f 8d e2                                      add r1, sp, #0x284
003224f4  02 20 95 e7                                      ldr r2, [r5, r2]
003224f8  97 32 cd e5                                      strb r3, [sp, #0x297]
003224fc  88 32 8d e5                                      str r3, [sp, #0x288]
00322500  08 20 82 e2                                      add r2, r2, #8
00322504  84 22 8d e5                                      str r2, [sp, #0x284]
00322508  33 20 a0 e3                                      mov r2, #0x33
0032250c  90 22 8d e5                                      str r2, [sp, #0x290]
00322510  01 20 a0 e3                                      mov r2, #1
00322514  8c 32 8d e5                                      str r3, [sp, #0x28c]
00322518  95 32 cd e5                                      strb r3, [sp, #0x295]
0032251c  96 32 cd e5                                      strb r3, [sp, #0x296]
00322520  94 22 cd e5                                      strb r2, [sp, #0x294]
00322524  64 5a 00 eb                                      bl #0x338ebc
00322528  e0 33 1f e5                                      ldr r3, [pc, #-0x3e0]
0032252c  03 30 95 e7                                      ldr r3, [r5, r3]
00322530  08 30 83 e2                                      add r3, r3, #8
00322534  84 32 8d e5                                      str r3, [sp, #0x284]
00322538  c6 ff ff ea                                      b #0x322458
0032253c  f8 23 1f e5                                      ldr r2, [pc, #-0x3f8]
00322540  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322544  a6 1f 8d e2                                      add r1, sp, #0x298
00322548  02 20 95 e7                                      ldr r2, [r5, r2]
0032254c  ab 32 cd e5                                      strb r3, [sp, #0x2ab]
00322550  9c 32 8d e5                                      str r3, [sp, #0x29c]
00322554  08 20 82 e2                                      add r2, r2, #8
00322558  98 22 8d e5                                      str r2, [sp, #0x298]
0032255c  32 20 a0 e3                                      mov r2, #0x32
00322560  a4 22 8d e5                                      str r2, [sp, #0x2a4]
00322564  01 20 a0 e3                                      mov r2, #1
00322568  a0 32 8d e5                                      str r3, [sp, #0x2a0]
0032256c  a9 32 cd e5                                      strb r3, [sp, #0x2a9]
00322570  aa 32 cd e5                                      strb r3, [sp, #0x2aa]
00322574  a8 22 cd e5                                      strb r2, [sp, #0x2a8]
00322578  4f 5a 00 eb                                      bl #0x338ebc
0032257c  34 34 1f e5                                      ldr r3, [pc, #-0x434]
00322580  03 30 95 e7                                      ldr r3, [r5, r3]
00322584  08 30 83 e2                                      add r3, r3, #8
00322588  98 32 8d e5                                      str r3, [sp, #0x298]
0032258c  a2 ff ff ea                                      b #0x32241c
00322590  4c 24 1f e5                                      ldr r2, [pc, #-0x44c]
00322594  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322598  ab 1f 8d e2                                      add r1, sp, #0x2ac
0032259c  02 20 95 e7                                      ldr r2, [r5, r2]
003225a0  bf 32 cd e5                                      strb r3, [sp, #0x2bf]
003225a4  b0 32 8d e5                                      str r3, [sp, #0x2b0]
003225a8  08 20 82 e2                                      add r2, r2, #8
003225ac  ac 22 8d e5                                      str r2, [sp, #0x2ac]
003225b0  31 20 a0 e3                                      mov r2, #0x31
003225b4  b8 22 8d e5                                      str r2, [sp, #0x2b8]
003225b8  01 20 a0 e3                                      mov r2, #1
003225bc  b4 32 8d e5                                      str r3, [sp, #0x2b4]
003225c0  bd 32 cd e5                                      strb r3, [sp, #0x2bd]
003225c4  be 32 cd e5                                      strb r3, [sp, #0x2be]
003225c8  bc 22 cd e5                                      strb r2, [sp, #0x2bc]
003225cc  3a 5a 00 eb                                      bl #0x338ebc
003225d0  88 34 1f e5                                      ldr r3, [pc, #-0x488]
003225d4  03 30 95 e7                                      ldr r3, [r5, r3]
003225d8  08 30 83 e2                                      add r3, r3, #8
003225dc  ac 32 8d e5                                      str r3, [sp, #0x2ac]
003225e0  7e ff ff ea                                      b #0x3223e0
003225e4  a0 24 1f e5                                      ldr r2, [pc, #-0x4a0]
003225e8  14 00 96 e5                                      ldr r0, [r6, #0x14]
003225ec  00 30 a0 e3                                      mov r3, #0
003225f0  02 20 95 e7                                      ldr r2, [r5, r2]
003225f4  ba 1f 8d e2                                      add r1, sp, #0x2e8
003225f8  fb 32 cd e5                                      strb r3, [sp, #0x2fb]
003225fc  08 20 82 e2                                      add r2, r2, #8
00322600  e8 22 8d e5                                      str r2, [sp, #0x2e8]
00322604  89 20 a0 e3                                      mov r2, #0x89
00322608  f4 22 8d e5                                      str r2, [sp, #0x2f4]
0032260c  01 20 a0 e3                                      mov r2, #1
00322610  ec 32 8d e5                                      str r3, [sp, #0x2ec]
00322614  f0 32 8d e5                                      str r3, [sp, #0x2f0]
00322618  f9 32 cd e5                                      strb r3, [sp, #0x2f9]
0032261c  fa 32 cd e5                                      strb r3, [sp, #0x2fa]
00322620  f8 22 cd e5                                      strb r2, [sp, #0x2f8]
00322624  24 5a 00 eb                                      bl #0x338ebc
00322628  e0 34 1f e5                                      ldr r3, [pc, #-0x4e0]
0032262c  03 30 95 e7                                      ldr r3, [r5, r3]
00322630  08 30 83 e2                                      add r3, r3, #8
00322634  e8 32 8d e5                                      str r3, [sp, #0x2e8]
00322638  05 ff ff ea                                      b #0x322254
0032263c  f8 24 1f e5                                      ldr r2, [pc, #-0x4f8]
00322640  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322644  00 30 a0 e3                                      mov r3, #0
00322648  02 20 95 e7                                      ldr r2, [r5, r2]
0032264c  bf 1f 8d e2                                      add r1, sp, #0x2fc
00322650  0f 33 cd e5                                      strb r3, [sp, #0x30f]
00322654  08 20 82 e2                                      add r2, r2, #8
00322658  fc 22 8d e5                                      str r2, [sp, #0x2fc]
0032265c  8a 20 a0 e3                                      mov r2, #0x8a
00322660  08 23 8d e5                                      str r2, [sp, #0x308]
00322664  01 20 a0 e3                                      mov r2, #1
00322668  00 33 8d e5                                      str r3, [sp, #0x300]
0032266c  04 33 8d e5                                      str r3, [sp, #0x304]
00322670  0d 33 cd e5                                      strb r3, [sp, #0x30d]
00322674  0e 33 cd e5                                      strb r3, [sp, #0x30e]
00322678  0c 23 cd e5                                      strb r2, [sp, #0x30c]
0032267c  0e 5a 00 eb                                      bl #0x338ebc
00322680  38 35 1f e5                                      ldr r3, [pc, #-0x538]
00322684  03 30 95 e7                                      ldr r3, [r5, r3]
00322688  08 30 83 e2                                      add r3, r3, #8
0032268c  fc 32 8d e5                                      str r3, [sp, #0x2fc]
00322690  d1 fe ff ea                                      b #0x3221dc
00322694  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
00322698  00 00 53 e3                                      cmp r3, #0
0032269c  fe fa ff 0a                                      beq #0x32129c
003226a0  14 00 96 e5                                      ldr r0, [r6, #0x14]
003226a4  ea fa ff ea                                      b #0x321254
003226a8  e8 32 d4 e5                                      ldrb r3, [r4, #0x2e8]
003226ac  00 00 53 e3                                      cmp r3, #0
003226b0  7c fe ff 1a                                      bne #0x3220a8
003226b4  14 00 96 e5                                      ldr r0, [r6, #0x14]
003226b8  01 c0 a0 e3                                      mov ip, #1
003226bc  66 fe ff ea                                      b #0x32205c
003226c0  88 32 d4 e5                                      ldrb r3, [r4, #0x288]
003226c4  00 00 53 e3                                      cmp r3, #0
003226c8  52 fe ff 1a                                      bne #0x322018
003226cc  14 00 96 e5                                      ldr r0, [r6, #0x14]
003226d0  01 c0 a0 e3                                      mov ip, #1
003226d4  3c fe ff ea                                      b #0x321fcc
003226d8  a8 35 d4 e5                                      ldrb r3, [r4, #0x5a8]
003226dc  00 00 53 e3                                      cmp r3, #0
003226e0  28 fe ff 1a                                      bne #0x321f88
003226e4  14 00 96 e5                                      ldr r0, [r6, #0x14]
003226e8  01 c0 a0 e3                                      mov ip, #1
003226ec  12 fe ff ea                                      b #0x321f3c
003226f0  88 35 d4 e5                                      ldrb r3, [r4, #0x588]
003226f4  00 00 53 e3                                      cmp r3, #0
003226f8  fe fd ff 1a                                      bne #0x321ef8
003226fc  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322700  01 c0 a0 e3                                      mov ip, #1
00322704  e8 fd ff ea                                      b #0x321eac
00322708  68 35 d4 e5                                      ldrb r3, [r4, #0x568]
0032270c  00 00 53 e3                                      cmp r3, #0
00322710  d4 fd ff 1a                                      bne #0x321e68
00322714  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322718  01 c0 a0 e3                                      mov ip, #1
0032271c  be fd ff ea                                      b #0x321e1c
00322720  48 35 d4 e5                                      ldrb r3, [r4, #0x548]
00322724  00 00 53 e3                                      cmp r3, #0
00322728  aa fd ff 1a                                      bne #0x321dd8
0032272c  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322730  01 c0 a0 e3                                      mov ip, #1
00322734  94 fd ff ea                                      b #0x321d8c
00322738  28 35 d4 e5                                      ldrb r3, [r4, #0x528]
0032273c  00 00 53 e3                                      cmp r3, #0
00322740  80 fd ff 1a                                      bne #0x321d48
00322744  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322748  01 c0 a0 e3                                      mov ip, #1
0032274c  6a fd ff ea                                      b #0x321cfc
00322750  08 35 d4 e5                                      ldrb r3, [r4, #0x508]
00322754  00 00 53 e3                                      cmp r3, #0
00322758  56 fd ff 1a                                      bne #0x321cb8
0032275c  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322760  01 c0 a0 e3                                      mov ip, #1
00322764  40 fd ff ea                                      b #0x321c6c
00322768  e8 34 d4 e5                                      ldrb r3, [r4, #0x4e8]
0032276c  00 00 53 e3                                      cmp r3, #0
00322770  2c fd ff 1a                                      bne #0x321c28
00322774  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322778  01 c0 a0 e3                                      mov ip, #1
0032277c  16 fd ff ea                                      b #0x321bdc
00322780  c8 34 d4 e5                                      ldrb r3, [r4, #0x4c8]
00322784  00 00 53 e3                                      cmp r3, #0
00322788  02 fd ff 1a                                      bne #0x321b98
0032278c  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322790  01 c0 a0 e3                                      mov ip, #1
00322794  ec fc ff ea                                      b #0x321b4c
00322798  08 32 d4 e5                                      ldrb r3, [r4, #0x208]
0032279c  00 00 53 e3                                      cmp r3, #0
003227a0  d8 fc ff 1a                                      bne #0x321b08
003227a4  14 00 96 e5                                      ldr r0, [r6, #0x14]
003227a8  01 c0 a0 e3                                      mov ip, #1
003227ac  c2 fc ff ea                                      b #0x321abc
003227b0  e8 31 d4 e5                                      ldrb r3, [r4, #0x1e8]
003227b4  00 00 53 e3                                      cmp r3, #0
003227b8  ae fc ff 1a                                      bne #0x321a78
003227bc  14 00 96 e5                                      ldr r0, [r6, #0x14]
003227c0  01 c0 a0 e3                                      mov ip, #1
003227c4  98 fc ff ea                                      b #0x321a2c
003227c8  c8 31 d4 e5                                      ldrb r3, [r4, #0x1c8]
003227cc  00 00 53 e3                                      cmp r3, #0
003227d0  84 fc ff 1a                                      bne #0x3219e8
003227d4  14 00 96 e5                                      ldr r0, [r6, #0x14]
003227d8  01 c0 a0 e3                                      mov ip, #1
003227dc  6e fc ff ea                                      b #0x32199c
003227e0  a8 31 d4 e5                                      ldrb r3, [r4, #0x1a8]
003227e4  00 00 53 e3                                      cmp r3, #0
003227e8  5a fc ff 1a                                      bne #0x321958
003227ec  14 00 96 e5                                      ldr r0, [r6, #0x14]
003227f0  01 c0 a0 e3                                      mov ip, #1
003227f4  44 fc ff ea                                      b #0x32190c
003227f8  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
003227fc  00 00 53 e3                                      cmp r3, #0
00322800  30 fc ff 1a                                      bne #0x3218c8
00322804  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322808  01 c0 a0 e3                                      mov ip, #1
0032280c  1a fc ff ea                                      b #0x32187c
00322810  68 31 d4 e5                                      ldrb r3, [r4, #0x168]
00322814  00 00 53 e3                                      cmp r3, #0
00322818  06 fc ff 1a                                      bne #0x321838
0032281c  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322820  01 c0 a0 e3                                      mov ip, #1
00322824  f0 fb ff ea                                      b #0x3217ec
00322828  48 31 d4 e5                                      ldrb r3, [r4, #0x148]
0032282c  00 00 53 e3                                      cmp r3, #0
00322830  dc fb ff 1a                                      bne #0x3217a8
00322834  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322838  01 c0 a0 e3                                      mov ip, #1
0032283c  c6 fb ff ea                                      b #0x32175c
00322840  28 31 d4 e5                                      ldrb r3, [r4, #0x128]
00322844  00 00 53 e3                                      cmp r3, #0
00322848  b2 fb ff 1a                                      bne #0x321718
0032284c  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322850  01 c0 a0 e3                                      mov ip, #1
00322854  9c fb ff ea                                      b #0x3216cc
00322858  08 31 d4 e5                                      ldrb r3, [r4, #0x108]
0032285c  00 00 53 e3                                      cmp r3, #0
00322860  88 fb ff 1a                                      bne #0x321688
00322864  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322868  01 c0 a0 e3                                      mov ip, #1
0032286c  73 fb ff ea                                      b #0x321640
00322870  e8 30 d4 e5                                      ldrb r3, [r4, #0xe8]
00322874  00 00 53 e3                                      cmp r3, #0
00322878  5f fb ff 1a                                      bne #0x3215fc
0032287c  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322880  01 c0 a0 e3                                      mov ip, #1
00322884  49 fb ff ea                                      b #0x3215b0
00322888  c8 30 d4 e5                                      ldrb r3, [r4, #0xc8]
0032288c  00 00 53 e3                                      cmp r3, #0
00322890  35 fb ff 1a                                      bne #0x32156c
00322894  14 00 96 e5                                      ldr r0, [r6, #0x14]
00322898  01 c0 a0 e3                                      mov ip, #1
0032289c  1f fb ff ea                                      b #0x321520
003228a0  a8 30 d4 e5                                      ldrb r3, [r4, #0xa8]
003228a4  00 00 53 e3                                      cmp r3, #0
003228a8  0b fb ff 1a                                      bne #0x3214dc
003228ac  14 00 96 e5                                      ldr r0, [r6, #0x14]
003228b0  01 c0 a0 e3                                      mov ip, #1
003228b4  f5 fa ff ea                                      b #0x321490
003228b8  88 30 d4 e5                                      ldrb r3, [r4, #0x88]
003228bc  00 00 53 e3                                      cmp r3, #0
003228c0  e1 fa ff 1a                                      bne #0x32144c
003228c4  14 00 96 e5                                      ldr r0, [r6, #0x14]
003228c8  01 c0 a0 e3                                      mov ip, #1
003228cc  cb fa ff ea                                      b #0x321400
003228d0  68 30 d4 e5                                      ldrb r3, [r4, #0x68]
003228d4  00 00 53 e3                                      cmp r3, #0
003228d8  b7 fa ff 1a                                      bne #0x3213bc
003228dc  14 00 96 e5                                      ldr r0, [r6, #0x14]
003228e0  01 c0 a0 e3                                      mov ip, #1
003228e4  a1 fa ff ea                                      b #0x321370
003228e8  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
003228ec  00 00 53 e3                                      cmp r3, #0
003228f0  8d fa ff 1a                                      bne #0x32132c
003228f4  14 00 96 e5                                      ldr r0, [r6, #0x14]
003228f8  01 c0 a0 e3                                      mov ip, #1
003228fc  77 fa ff ea                                      b #0x3212e0
00322900  00 00 55 e3                                      cmp r5, #0
00322904  38 fa ff 0a                                      beq #0x3211ec
00322908  05 00 a0 e1                                      mov r0, r5
0032290c  b8 f2 03 eb                                      bl #0x41f3f4
00322910  00 00 50 e3                                      cmp r0, #0
00322914  34 fa ff 0a                                      beq #0x3211ec
00322918  04 00 95 e5                                      ldr r0, [r5, #4]
0032291c  7f 24 12 eb                                      bl #0x7abb20
00322920  31 fa ff ea                                      b #0x3211ec

; FUNCTION 0x00322924, declared_size=472, range_size=472, mode=arm
; class-group: Application
; alias: _ZN11Application5PauseEv
; demangled: Application::Pause()
; decoder-mode: arm
00322924  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00322928  ac 51 9f e5                                      ldr r5, [pc, #0x1ac]
0032292c  ac 61 9f e5                                      ldr r6, [pc, #0x1ac]
00322930  00 40 a0 e1                                      mov r4, r0
00322934  05 50 8f e0                                      add r5, pc, r5
00322938  06 30 95 e7                                      ldr r3, [r5, r6]
0032293c  00 00 93 e5                                      ldr r0, [r3]
00322940  00 00 50 e3                                      cmp r0, #0
00322944  00 00 00 0a                                      beq #0x32294c
00322948  ad 1b 01 eb                                      bl #0x369804
0032294c  06 30 95 e7                                      ldr r3, [r5, r6]
00322950  00 20 a0 e3                                      mov r2, #0
00322954  a6 20 c4 e5                                      strb r2, [r4, #0xa6]
00322958  00 70 a0 e1                                      mov r7, r0
0032295c  00 00 93 e5                                      ldr r0, [r3]
00322960  02 00 50 e1                                      cmp r0, r2
00322964  00 00 00 0a                                      beq #0x32296c
00322968  2d 1f 01 eb                                      bl #0x36a624
0032296c  00 30 a0 e3                                      mov r3, #0
00322970  a5 30 c4 e5                                      strb r3, [r4, #0xa5]
00322974  04 00 a0 e1                                      mov r0, r4
00322978  05 f3 ff eb                                      bl #0x31f594
0032297c  00 60 a0 e1                                      mov r6, r0
00322980  10 00 94 e5                                      ldr r0, [r4, #0x10]
00322984  00 00 50 e3                                      cmp r0, #0
00322988  04 00 00 0a                                      beq #0x3229a0
0032298c  20 30 90 e5                                      ldr r3, [r0, #0x20]
00322990  03 00 a0 e1                                      mov r0, r3
00322994  00 30 93 e5                                      ldr r3, [r3]
00322998  0f e0 a0 e1                                      mov lr, pc
0032299c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
003229a0  00 00 56 e3                                      cmp r6, #0
003229a4  a0 00 84 e5                                      str r0, [r4, #0xa0]
003229a8  02 00 00 0a                                      beq #0x3229b8
003229ac  30 31 96 e5                                      ldr r3, [r6, #0x130]
003229b0  26 00 53 e3                                      cmp r3, #0x26
003229b4  16 00 00 0a                                      beq #0x322a14
003229b8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
003229bc  00 00 50 e3                                      cmp r0, #0
003229c0  02 00 00 0a                                      beq #0x3229d0
003229c4  28 30 d0 e5                                      ldrb r3, [r0, #0x28]
003229c8  00 00 53 e3                                      cmp r3, #0
003229cc  0a 00 00 1a                                      bne #0x3229fc
003229d0  18 00 94 e5                                      ldr r0, [r4, #0x18]
003229d4  01 30 a0 e3                                      mov r3, #1
003229d8  a4 30 c4 e5                                      strb r3, [r4, #0xa4]
003229dc  00 00 50 e3                                      cmp r0, #0
003229e0  00 00 00 0a                                      beq #0x3229e8
003229e4  e4 5d 00 eb                                      bl #0x33a17c
003229e8  04 00 a0 e1                                      mov r0, r4
003229ec  d8 f2 ff eb                                      bl #0x31f554
003229f0  00 20 50 e2                                      subs r2, r0, #0
003229f4  02 00 00 0a                                      beq #0x322a04
003229f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003229fc  4c 28 05 eb                                      bl #0x46cb34
00322a00  f2 ff ff ea                                      b #0x3229d0
00322a04  80 10 94 e5                                      ldr r1, [r4, #0x80]
00322a08  04 00 a0 e1                                      mov r0, r4
00322a0c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00322a10  4d f3 ff ea                                      b #0x31f74c
00322a14  44 31 d6 e5                                      ldrb r3, [r6, #0x144]
00322a18  00 00 53 e3                                      cmp r3, #0
00322a1c  e5 ff ff 0a                                      beq #0x3229b8
00322a20  00 10 a0 e3                                      mov r1, #0
00322a24  06 00 a0 e1                                      mov r0, r6
00322a28  01 20 a0 e1                                      mov r2, r1
00322a2c  2e 34 03 eb                                      bl #0x3efaec
00322a30  98 31 d6 e5                                      ldrb r3, [r6, #0x198]
00322a34  00 00 53 e3                                      cmp r3, #0
00322a38  04 00 00 0a                                      beq #0x322a50
00322a3c  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00322a40  03 30 95 e7                                      ldr r3, [r5, r3]
00322a44  00 30 d3 e5                                      ldrb r3, [r3]
00322a48  00 00 53 e3                                      cmp r3, #0
00322a4c  08 00 00 0a                                      beq #0x322a74
00322a50  00 00 57 e3                                      cmp r7, #0
00322a54  d7 ff ff 0a                                      beq #0x3229b8
00322a58  84 30 9f e5                                      ldr r3, [pc, #0x84]
00322a5c  03 30 95 e7                                      ldr r3, [r5, r3]
00322a60  00 30 d3 e5                                      ldrb r3, [r3]
00322a64  00 00 53 e3                                      cmp r3, #0
00322a68  01 30 a0 13                                      movne r3, #1
00322a6c  a6 30 c4 15                                      strbne r3, [r4, #0xa6]
00322a70  d0 ff ff ea                                      b #0x3229b8
00322a74  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00322a78  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00322a7c  03 60 95 e7                                      ldr r6, [r5, r3]
00322a80  01 10 8f e0                                      add r1, pc, r1
00322a84  54 00 96 e5                                      ldr r0, [r6, #0x54]
00322a88  d8 29 04 eb                                      bl #0x42d1f0
00322a8c  58 f2 03 eb                                      bl #0x41f3f4
00322a90  00 80 50 e2                                      subs r8, r0, #0
00322a94  ed ff ff 1a                                      bne #0x322a50
00322a98  50 10 9f e5                                      ldr r1, [pc, #0x50]
00322a9c  54 00 96 e5                                      ldr r0, [r6, #0x54]
00322aa0  01 10 8f e0                                      add r1, pc, r1
00322aa4  01 2e 04 eb                                      bl #0x42e2b0
00322aa8  01 30 a0 e3                                      mov r3, #1
00322aac  a5 30 c4 e5                                      strb r3, [r4, #0xa5]
00322ab0  f5 27 04 eb                                      bl #0x42ca8c
00322ab4  38 10 9f e5                                      ldr r1, [pc, #0x38]
00322ab8  01 10 8f e0                                      add r1, pc, r1
00322abc  cb 29 04 eb                                      bl #0x42d1f0
00322ac0  30 30 9f e5                                      ldr r3, [pc, #0x30]
00322ac4  08 20 a0 e1                                      mov r2, r8
00322ac8  03 10 95 e7                                      ldr r1, [r5, r3]
00322acc  0c 00 81 e5                                      str r0, [r1, #0xc]
00322ad0  18 00 96 e5                                      ldr r0, [r6, #0x18]
00322ad4  1a 5e 00 eb                                      bl #0x33a344
00322ad8  dc ff ff ea                                      b #0x322a50
; mapping-symbol data/literal pool
00322adc  5c 21 67 00 a4 0d 00 00 a0 2f 00 00 f4 37 00 00  .byte 0x5c, 0x21, 0x67, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xa0, 0x2f, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
00322aec  a8 c2 59 00 a0 c2 59 00 60 c2 59 00 54 21 00 00  .byte 0xa8, 0xc2, 0x59, 0x00, 0xa0, 0xc2, 0x59, 0x00, 0x60, 0xc2, 0x59, 0x00, 0x54, 0x21, 0x00, 0x00

; FUNCTION 0x00322afc, declared_size=48, range_size=48, mode=arm
; class-group: Application
; alias: _ZN11Application7InitPS3EPN6glitch7IDeviceE
; demangled: Application::InitPS3(glitch::IDevice*)
; decoder-mode: arm
00322afc  00 30 a0 e3                                      mov r3, #0
00322b00  01 20 a0 e3                                      mov r2, #1
00322b04  70 40 2d e9                                      push {r4, r5, r6, lr}
00322b08  03 10 a0 e1                                      mov r1, r3
00322b0c  00 40 a0 e1                                      mov r4, r0
00322b10  00 20 c3 e5                                      strb r2, [r3]
00322b14  45 0f a0 e3                                      mov r0, #0x114
00322b18  94 b6 ff eb                                      bl #0x310570
00322b1c  00 50 a0 e1                                      mov r5, r0
00322b20  44 3c 04 eb                                      bl #0x431c38
00322b24  54 50 84 e5                                      str r5, [r4, #0x54]
00322b28  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00323ae0, declared_size=228, range_size=228, mode=arm
; class-group: Application
; alias: _ZN11Application4InitEPN6glitch7IDeviceE
; demangled: Application::Init(glitch::IDevice*)
; decoder-mode: arm
00323ae0  70 40 2d e9                                      push {r4, r5, r6, lr}
00323ae4  01 50 a0 e1                                      mov r5, r1
00323ae8  00 00 55 e3                                      cmp r5, #0
00323aec  10 50 80 e5                                      str r5, [r0, #0x10]
00323af0  04 30 95 15                                      ldrne r3, [r5, #4]
00323af4  00 10 a0 e1                                      mov r1, r0
00323af8  05 00 a0 e1                                      mov r0, r5
00323afc  01 30 83 12                                      addne r3, r3, #1
00323b00  04 30 85 15                                      strne r3, [r5, #4]
00323b04  6f 36 0d eb                                      bl #0x6714c8
00323b08  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
00323b0c  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
00323b10  00 00 53 e3                                      cmp r3, #0
00323b14  04 40 8f e0                                      add r4, pc, r4
00323b18  04 00 00 0a                                      beq #0x323b30
00323b1c  03 00 a0 e1                                      mov r0, r3
00323b20  04 10 a0 e3                                      mov r1, #4
00323b24  00 30 93 e5                                      ldr r3, [r3]
00323b28  0f e0 a0 e1                                      mov lr, pc
00323b2c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00323b30  10 50 95 e5                                      ldr r5, [r5, #0x10]
00323b34  01 1c a0 e3                                      mov r1, #0x100
00323b38  01 20 a0 e3                                      mov r2, #1
00323b3c  05 00 a0 e1                                      mov r0, r5
00323b40  00 30 95 e5                                      ldr r3, [r5]
00323b44  0f e0 a0 e1                                      mov lr, pc
00323b48  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00323b4c  05 00 a0 e1                                      mov r0, r5
00323b50  00 30 95 e5                                      ldr r3, [r5]
00323b54  10 10 a0 e3                                      mov r1, #0x10
00323b58  00 20 a0 e3                                      mov r2, #0
00323b5c  0f e0 a0 e1                                      mov lr, pc
00323b60  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00323b64  e0 30 95 e5                                      ldr r3, [r5, #0xe0]
00323b68  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
00323b6c  00 20 a0 e3                                      mov r2, #0
00323b70  74 00 93 e5                                      ldr r0, [r3, #0x74]
00323b74  01 10 94 e7                                      ldr r1, [r4, r1]
00323b78  04 00 80 e3                                      orr r0, r0, #4
00323b7c  74 00 83 e5                                      str r0, [r3, #0x74]
00323b80  00 c0 91 e5                                      ldr ip, [r1]
00323b84  34 00 9f e5                                      ldr r0, [pc, #0x34]
00323b88  29 20 cc e5                                      strb r2, [ip, #0x29]
00323b8c  74 c0 93 e5                                      ldr ip, [r3, #0x74]
00323b90  00 00 94 e7                                      ldr r0, [r4, r0]
00323b94  01 c0 cc e3                                      bic ip, ip, #1
00323b98  74 c0 83 e5                                      str ip, [r3, #0x74]
00323b9c  00 30 91 e5                                      ldr r3, [r1]
00323ba0  2b 20 c3 e5                                      strb r2, [r3, #0x2b]
00323ba4  00 00 90 e5                                      ldr r0, [r0]
00323ba8  7d 3a a0 e3                                      mov r3, #0x7d000
00323bac  18 30 80 e5                                      str r3, [r0, #0x18]
00323bb0  70 40 bd e8                                      pop {r4, r5, r6, lr}
00323bb4  75 9f 0b ea                                      b #0x60b990
; mapping-symbol data/literal pool
00323bb8  7c 0f 67 00 48 44 00 00 74 09 00 00              .byte 0x7c, 0x0f, 0x67, 0x00, 0x48, 0x44, 0x00, 0x00, 0x74, 0x09, 0x00, 0x00

; FUNCTION 0x00323bc4, declared_size=1360, range_size=1360, mode=arm
; class-group: Application
; alias: _ZN11Application4QuitEv
; demangled: Application::Quit()
; decoder-mode: arm
00323bc4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00323bc8  00 40 a0 e1                                      mov r4, r0
00323bcc  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
00323bd0  14 55 9f e5                                      ldr r5, [pc, #0x514]
00323bd4  0c d0 4d e2                                      sub sp, sp, #0xc
00323bd8  00 00 50 e3                                      cmp r0, #0
00323bdc  05 50 8f e0                                      add r5, pc, r5
00323be0  00 00 00 0a                                      beq #0x323be8
00323be4  d2 23 05 eb                                      bl #0x46cb34
00323be8  00 65 9f e5                                      ldr r6, [pc, #0x500]
00323bec  06 70 95 e7                                      ldr r7, [r5, r6]
00323bf0  07 00 a0 e1                                      mov r0, r7
00323bf4  66 ee ff eb                                      bl #0x31f594
00323bf8  00 30 50 e2                                      subs r3, r0, #0
00323bfc  02 00 00 0a                                      beq #0x323c0c
00323c00  30 31 93 e5                                      ldr r3, [r3, #0x130]
00323c04  26 00 53 e3                                      cmp r3, #0x26
00323c08  13 01 00 0a                                      beq #0x32405c
00323c0c  e0 34 9f e5                                      ldr r3, [pc, #0x4e0]
00323c10  03 30 95 e7                                      ldr r3, [r5, r3]
00323c14  00 00 93 e5                                      ldr r0, [r3]
00323c18  00 00 50 e3                                      cmp r0, #0
00323c1c  01 00 00 0a                                      beq #0x323c28
00323c20  00 10 a0 e3                                      mov r1, #0
00323c24  59 17 01 eb                                      bl #0x369990
00323c28  18 00 94 e5                                      ldr r0, [r4, #0x18]
00323c2c  00 00 50 e3                                      cmp r0, #0
00323c30  00 00 00 0a                                      beq #0x323c38
00323c34  f5 59 00 eb                                      bl #0x33a410
00323c38  50 30 94 e5                                      ldr r3, [r4, #0x50]
00323c3c  00 00 53 e3                                      cmp r3, #0
00323c40  05 00 00 0a                                      beq #0x323c5c
00323c44  03 00 a0 e1                                      mov r0, r3
00323c48  00 30 93 e5                                      ldr r3, [r3]
00323c4c  0f e0 a0 e1                                      mov lr, pc
00323c50  04 f0 93 e5                                      ldr pc, [r3, #4]
00323c54  00 30 a0 e3                                      mov r3, #0
00323c58  50 30 84 e5                                      str r3, [r4, #0x50]
00323c5c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00323c60  00 00 53 e3                                      cmp r3, #0
00323c64  05 00 00 0a                                      beq #0x323c80
00323c68  03 00 a0 e1                                      mov r0, r3
00323c6c  00 30 93 e5                                      ldr r3, [r3]
00323c70  0f e0 a0 e1                                      mov lr, pc
00323c74  04 f0 93 e5                                      ldr pc, [r3, #4]
00323c78  00 30 a0 e3                                      mov r3, #0
00323c7c  38 30 84 e5                                      str r3, [r4, #0x38]
00323c80  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00323c84  00 00 53 e3                                      cmp r3, #0
00323c88  05 00 00 0a                                      beq #0x323ca4
00323c8c  03 00 a0 e1                                      mov r0, r3
00323c90  00 30 93 e5                                      ldr r3, [r3]
00323c94  0f e0 a0 e1                                      mov lr, pc
00323c98  04 f0 93 e5                                      ldr pc, [r3, #4]
00323c9c  00 30 a0 e3                                      mov r3, #0
00323ca0  3c 30 84 e5                                      str r3, [r4, #0x3c]
00323ca4  40 30 94 e5                                      ldr r3, [r4, #0x40]
00323ca8  00 00 53 e3                                      cmp r3, #0
00323cac  05 00 00 0a                                      beq #0x323cc8
00323cb0  03 00 a0 e1                                      mov r0, r3
00323cb4  00 30 93 e5                                      ldr r3, [r3]
00323cb8  0f e0 a0 e1                                      mov lr, pc
00323cbc  04 f0 93 e5                                      ldr pc, [r3, #4]
00323cc0  00 30 a0 e3                                      mov r3, #0
00323cc4  40 30 84 e5                                      str r3, [r4, #0x40]
00323cc8  18 30 94 e5                                      ldr r3, [r4, #0x18]
00323ccc  00 00 53 e3                                      cmp r3, #0
00323cd0  05 00 00 0a                                      beq #0x323cec
00323cd4  03 00 a0 e1                                      mov r0, r3
00323cd8  00 30 93 e5                                      ldr r3, [r3]
00323cdc  0f e0 a0 e1                                      mov lr, pc
00323ce0  04 f0 93 e5                                      ldr pc, [r3, #4]
00323ce4  00 30 a0 e3                                      mov r3, #0
00323ce8  18 30 84 e5                                      str r3, [r4, #0x18]
00323cec  14 30 94 e5                                      ldr r3, [r4, #0x14]
00323cf0  00 00 53 e3                                      cmp r3, #0
00323cf4  05 00 00 0a                                      beq #0x323d10
00323cf8  03 00 a0 e1                                      mov r0, r3
00323cfc  00 30 93 e5                                      ldr r3, [r3]
00323d00  0f e0 a0 e1                                      mov lr, pc
00323d04  04 f0 93 e5                                      ldr pc, [r3, #4]
00323d08  00 30 a0 e3                                      mov r3, #0
00323d0c  14 30 84 e5                                      str r3, [r4, #0x14]
00323d10  34 30 94 e5                                      ldr r3, [r4, #0x34]
00323d14  00 00 53 e3                                      cmp r3, #0
00323d18  05 00 00 0a                                      beq #0x323d34
00323d1c  03 00 a0 e1                                      mov r0, r3
00323d20  00 30 93 e5                                      ldr r3, [r3]
00323d24  0f e0 a0 e1                                      mov lr, pc
00323d28  04 f0 93 e5                                      ldr pc, [r3, #4]
00323d2c  00 30 a0 e3                                      mov r3, #0
00323d30  34 30 84 e5                                      str r3, [r4, #0x34]
00323d34  30 30 94 e5                                      ldr r3, [r4, #0x30]
00323d38  00 00 53 e3                                      cmp r3, #0
00323d3c  05 00 00 0a                                      beq #0x323d58
00323d40  03 00 a0 e1                                      mov r0, r3
00323d44  00 30 93 e5                                      ldr r3, [r3]
00323d48  0f e0 a0 e1                                      mov lr, pc
00323d4c  04 f0 93 e5                                      ldr pc, [r3, #4]
00323d50  00 30 a0 e3                                      mov r3, #0
00323d54  30 30 84 e5                                      str r3, [r4, #0x30]
00323d58  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00323d5c  00 00 53 e3                                      cmp r3, #0
00323d60  05 00 00 0a                                      beq #0x323d7c
00323d64  03 00 a0 e1                                      mov r0, r3
00323d68  00 30 93 e5                                      ldr r3, [r3]
00323d6c  0f e0 a0 e1                                      mov lr, pc
00323d70  04 f0 93 e5                                      ldr pc, [r3, #4]
00323d74  00 30 a0 e3                                      mov r3, #0
00323d78  2c 30 84 e5                                      str r3, [r4, #0x2c]
00323d7c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00323d80  00 00 53 e3                                      cmp r3, #0
00323d84  05 00 00 0a                                      beq #0x323da0
00323d88  03 00 a0 e1                                      mov r0, r3
00323d8c  00 30 93 e5                                      ldr r3, [r3]
00323d90  0f e0 a0 e1                                      mov lr, pc
00323d94  04 f0 93 e5                                      ldr pc, [r3, #4]
00323d98  00 30 a0 e3                                      mov r3, #0
00323d9c  28 30 84 e5                                      str r3, [r4, #0x28]
00323da0  24 30 94 e5                                      ldr r3, [r4, #0x24]
00323da4  00 00 53 e3                                      cmp r3, #0
00323da8  05 00 00 0a                                      beq #0x323dc4
00323dac  03 00 a0 e1                                      mov r0, r3
00323db0  00 30 93 e5                                      ldr r3, [r3]
00323db4  0f e0 a0 e1                                      mov lr, pc
00323db8  04 f0 93 e5                                      ldr pc, [r3, #4]
00323dbc  00 30 a0 e3                                      mov r3, #0
00323dc0  24 30 84 e5                                      str r3, [r4, #0x24]
00323dc4  20 30 94 e5                                      ldr r3, [r4, #0x20]
00323dc8  00 00 53 e3                                      cmp r3, #0
00323dcc  05 00 00 0a                                      beq #0x323de8
00323dd0  03 00 a0 e1                                      mov r0, r3
00323dd4  00 30 93 e5                                      ldr r3, [r3]
00323dd8  0f e0 a0 e1                                      mov lr, pc
00323ddc  04 f0 93 e5                                      ldr pc, [r3, #4]
00323de0  00 30 a0 e3                                      mov r3, #0
00323de4  20 30 84 e5                                      str r3, [r4, #0x20]
00323de8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00323dec  00 00 53 e3                                      cmp r3, #0
00323df0  05 00 00 0a                                      beq #0x323e0c
00323df4  03 00 a0 e1                                      mov r0, r3
00323df8  00 30 93 e5                                      ldr r3, [r3]
00323dfc  0f e0 a0 e1                                      mov lr, pc
00323e00  04 f0 93 e5                                      ldr pc, [r3, #4]
00323e04  00 30 a0 e3                                      mov r3, #0
00323e08  1c 30 84 e5                                      str r3, [r4, #0x1c]
00323e0c  44 30 94 e5                                      ldr r3, [r4, #0x44]
00323e10  00 00 53 e3                                      cmp r3, #0
00323e14  05 00 00 0a                                      beq #0x323e30
00323e18  03 00 a0 e1                                      mov r0, r3
00323e1c  00 30 93 e5                                      ldr r3, [r3]
00323e20  0f e0 a0 e1                                      mov lr, pc
00323e24  04 f0 93 e5                                      ldr pc, [r3, #4]
00323e28  00 30 a0 e3                                      mov r3, #0
00323e2c  44 30 84 e5                                      str r3, [r4, #0x44]
00323e30  48 30 94 e5                                      ldr r3, [r4, #0x48]
00323e34  00 00 53 e3                                      cmp r3, #0
00323e38  05 00 00 0a                                      beq #0x323e54
00323e3c  03 00 a0 e1                                      mov r0, r3
00323e40  00 30 93 e5                                      ldr r3, [r3]
00323e44  0f e0 a0 e1                                      mov lr, pc
00323e48  04 f0 93 e5                                      ldr pc, [r3, #4]
00323e4c  00 30 a0 e3                                      mov r3, #0
00323e50  48 30 84 e5                                      str r3, [r4, #0x48]
00323e54  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00323e58  00 00 53 e3                                      cmp r3, #0
00323e5c  05 00 00 0a                                      beq #0x323e78
00323e60  03 00 a0 e1                                      mov r0, r3
00323e64  00 30 93 e5                                      ldr r3, [r3]
00323e68  0f e0 a0 e1                                      mov lr, pc
00323e6c  04 f0 93 e5                                      ldr pc, [r3, #4]
00323e70  00 30 a0 e3                                      mov r3, #0
00323e74  4c 30 84 e5                                      str r3, [r4, #0x4c]
00323e78  00 80 a0 e3                                      mov r8, #0
00323e7c  04 70 a0 e1                                      mov r7, r4
00323e80  08 a0 a0 e1                                      mov sl, r8
00323e84  58 30 97 e5                                      ldr r3, [r7, #0x58]
00323e88  01 80 88 e2                                      add r8, r8, #1
00323e8c  00 00 53 e3                                      cmp r3, #0
00323e90  04 00 00 0a                                      beq #0x323ea8
00323e94  03 00 a0 e1                                      mov r0, r3
00323e98  00 30 93 e5                                      ldr r3, [r3]
00323e9c  0f e0 a0 e1                                      mov lr, pc
00323ea0  04 f0 93 e5                                      ldr pc, [r3, #4]
00323ea4  58 a0 87 e5                                      str sl, [r7, #0x58]
00323ea8  04 00 58 e3                                      cmp r8, #4
00323eac  04 70 87 e2                                      add r7, r7, #4
00323eb0  f3 ff ff 1a                                      bne #0x323e84
00323eb4  68 30 94 e5                                      ldr r3, [r4, #0x68]
00323eb8  00 00 53 e3                                      cmp r3, #0
00323ebc  05 00 00 0a                                      beq #0x323ed8
00323ec0  03 00 a0 e1                                      mov r0, r3
00323ec4  00 30 93 e5                                      ldr r3, [r3]
00323ec8  0f e0 a0 e1                                      mov lr, pc
00323ecc  04 f0 93 e5                                      ldr pc, [r3, #4]
00323ed0  00 30 a0 e3                                      mov r3, #0
00323ed4  68 30 84 e5                                      str r3, [r4, #0x68]
00323ed8  54 30 94 e5                                      ldr r3, [r4, #0x54]
00323edc  00 00 53 e3                                      cmp r3, #0
00323ee0  05 00 00 0a                                      beq #0x323efc
00323ee4  03 00 a0 e1                                      mov r0, r3
00323ee8  00 30 93 e5                                      ldr r3, [r3]
00323eec  0f e0 a0 e1                                      mov lr, pc
00323ef0  04 f0 93 e5                                      ldr pc, [r3, #4]
00323ef4  00 30 a0 e3                                      mov r3, #0
00323ef8  54 30 84 e5                                      str r3, [r4, #0x54]
00323efc  a8 a7 00 eb                                      bl #0x34dda4
00323f00  eb a6 00 eb                                      bl #0x34dab4
00323f04  4f 1c 01 eb                                      bl #0x36b048
00323f08  00 00 a0 e3                                      mov r0, #0
00323f0c  7a c3 ff eb                                      bl #0x314cfc
00323f10  04 00 a0 e1                                      mov r0, r4
00323f14  90 ed ff eb                                      bl #0x31f55c
00323f18  10 30 94 e5                                      ldr r3, [r4, #0x10]
00323f1c  00 00 53 e3                                      cmp r3, #0
00323f20  15 00 00 0a                                      beq #0x323f7c
00323f24  06 30 95 e7                                      ldr r3, [r5, r6]
00323f28  10 30 93 e5                                      ldr r3, [r3, #0x10]
00323f2c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00323f30  03 00 a0 e1                                      mov r0, r3
00323f34  00 30 93 e5                                      ldr r3, [r3]
00323f38  0f e0 a0 e1                                      mov lr, pc
00323f3c  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00323f40  10 30 94 e5                                      ldr r3, [r4, #0x10]
00323f44  10 30 93 e5                                      ldr r3, [r3, #0x10]
00323f48  03 00 a0 e1                                      mov r0, r3
00323f4c  00 30 93 e5                                      ldr r3, [r3]
00323f50  0f e0 a0 e1                                      mov lr, pc
00323f54  ac f0 93 e5                                      ldr pc, [r3, #0xac]
00323f58  10 30 94 e5                                      ldr r3, [r4, #0x10]
00323f5c  03 00 a0 e1                                      mov r0, r3
00323f60  00 30 93 e5                                      ldr r3, [r3]
00323f64  0f e0 a0 e1                                      mov lr, pc
00323f68  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00323f6c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00323f70  83 e5 ff eb                                      bl #0x31d584
00323f74  00 30 a0 e3                                      mov r3, #0
00323f78  10 30 84 e5                                      str r3, [r4, #0x10]
00323f7c  9a b3 07 eb                                      bl #0x510dec
00323f80  b8 00 94 e5                                      ldr r0, [r4, #0xb8]
00323f84  00 00 50 e3                                      cmp r0, #0
00323f88  15 00 00 0a                                      beq #0x323fe4
00323f8c  bf cc 09 eb                                      bl #0x597290
00323f90  00 00 50 e3                                      cmp r0, #0
00323f94  3b 00 00 0a                                      beq #0x324088
00323f98  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
00323f9c  00 20 93 e5                                      ldr r2, [r3]
00323fa0  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00323fa4  00 00 83 e0                                      add r0, r3, r0
00323fa8  04 30 90 e5                                      ldr r3, [r0, #4]
00323fac  02 00 53 e3                                      cmp r3, #2
00323fb0  08 00 00 0a                                      beq #0x323fd8
00323fb4  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
00323fb8  03 30 95 e7                                      ldr r3, [r5, r3]
00323fbc  00 30 93 e5                                      ldr r3, [r3]
00323fc0  02 00 53 e3                                      cmp r3, #2
00323fc4  00 30 a0 03                                      moveq r3, #0
00323fc8  00 30 83 05                                      streq r3, [r3]
00323fcc  01 00 00 0a                                      beq #0x323fd8
00323fd0  01 00 53 e3                                      cmp r3, #1
00323fd4  33 00 00 0a                                      beq #0x3240a8
00323fd8  69 e5 ff eb                                      bl #0x31d584
00323fdc  00 30 a0 e3                                      mov r3, #0
00323fe0  b8 30 84 e5                                      str r3, [r4, #0xb8]
00323fe4  10 61 9f e5                                      ldr r6, [pc, #0x110]
00323fe8  06 30 95 e7                                      ldr r3, [r5, r6]
00323fec  00 30 93 e5                                      ldr r3, [r3]
00323ff0  00 00 53 e3                                      cmp r3, #0
00323ff4  03 00 00 0a                                      beq #0x324008
00323ff8  03 00 a0 e1                                      mov r0, r3
00323ffc  00 30 93 e5                                      ldr r3, [r3]
00324000  0f e0 a0 e1                                      mov lr, pc
00324004  04 f0 93 e5                                      ldr pc, [r3, #4]
00324008  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
0032400c  06 20 95 e7                                      ldr r2, [r5, r6]
00324010  00 10 a0 e3                                      mov r1, #0
00324014  04 30 95 e7                                      ldr r3, [r5, r4]
00324018  00 10 82 e5                                      str r1, [r2]
0032401c  00 30 93 e5                                      ldr r3, [r3]
00324020  01 00 53 e1                                      cmp r3, r1
00324024  03 00 00 0a                                      beq #0x324038
00324028  03 00 a0 e1                                      mov r0, r3
0032402c  00 30 93 e5                                      ldr r3, [r3]
00324030  0f e0 a0 e1                                      mov lr, pc
00324034  04 f0 93 e5                                      ldr pc, [r3, #4]
00324038  04 30 95 e7                                      ldr r3, [r5, r4]
0032403c  00 20 a0 e3                                      mov r2, #0
00324040  00 20 83 e5                                      str r2, [r3]
00324044  d2 65 13 eb                                      bl #0x7fd794
00324048  ba 03 14 eb                                      bl #0x824f38
0032404c  8d 6f 01 eb                                      bl #0x37fe88
00324050  0c d0 8d e2                                      add sp, sp, #0xc
00324054  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
00324058  d6 3a 08 ea                                      b #0x532bb8
0032405c  00 10 a0 e3                                      mov r1, #0
00324060  4d 31 03 eb                                      bl #0x3f059c
00324064  40 00 97 e5                                      ldr r0, [r7, #0x40]
00324068  00 10 a0 e3                                      mov r1, #0
0032406c  01 20 a0 e3                                      mov r2, #1
00324070  00 29 01 eb                                      bl #0x36e478
00324074  60 06 90 e5                                      ldr r0, [r0, #0x660]
00324078  00 00 50 e3                                      cmp r0, #0
0032407c  e2 fe ff 0a                                      beq #0x323c0c
00324080  08 61 02 eb                                      bl #0x3bc4a8
00324084  e0 fe ff ea                                      b #0x323c0c
00324088  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
0032408c  00 20 93 e5                                      ldr r2, [r3]
00324090  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00324094  00 00 83 e0                                      add r0, r3, r0
00324098  04 30 90 e5                                      ldr r3, [r0, #4]
0032409c  01 00 53 e3                                      cmp r3, #1
003240a0  c1 ff ff 1a                                      bne #0x323fac
003240a4  cb ff ff ea                                      b #0x323fd8
003240a8  54 00 9f e5                                      ldr r0, [pc, #0x54]
003240ac  54 10 9f e5                                      ldr r1, [pc, #0x54]
003240b0  54 20 9f e5                                      ldr r2, [pc, #0x54]
003240b4  00 00 95 e7                                      ldr r0, [r5, r0]
003240b8  50 30 9f e5                                      ldr r3, [pc, #0x50]
003240bc  02 20 8f e0                                      add r2, pc, r2
003240c0  ca c1 00 e3                                      movw ip, #0x1ca
003240c4  03 30 8f e0                                      add r3, pc, r3
003240c8  01 10 8f e0                                      add r1, pc, r1
003240cc  a8 00 80 e2                                      add r0, r0, #0xa8
003240d0  00 c0 8d e5                                      str ip, [sp]
003240d4  ca a7 ff eb                                      bl #0x30e004
003240d8  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
003240dc  00 20 93 e5                                      ldr r2, [r3]
003240e0  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
003240e4  00 00 83 e0                                      add r0, r3, r0
003240e8  ba ff ff ea                                      b #0x323fd8
; mapping-symbol data/literal pool
003240ec  b4 0e 67 00 f4 37 00 00 a4 0d 00 00 c0 39 00 00  .byte 0xb4, 0x0e, 0x67, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003240fc  10 1a 00 00 24 43 00 00 c0 19 00 00 10 a3 59 00  .byte 0x10, 0x1a, 0x00, 0x00, 0x24, 0x43, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x10, 0xa3, 0x59, 0x00
0032410c  bc ac 59 00 fc ab 59 00                          .byte 0xbc, 0xac, 0x59, 0x00, 0xfc, 0xab, 0x59, 0x00

; FUNCTION 0x003241b8, declared_size=88, range_size=88, mode=arm
; class-group: Application
; alias: _ZN11Application17OnInterruptResumeEv
; demangled: Application::OnInterruptResume()
; decoder-mode: arm
003241b8  44 00 9f e5                                      ldr r0, [pc, #0x44]
003241bc  70 40 2d e9                                      push {r4, r5, r6, lr}
003241c0  00 00 8f e0                                      add r0, pc, r0
003241c4  d2 ff ff eb                                      bl #0x324114
003241c8  08 00 a0 e3                                      mov r0, #8
003241cc  a0 b0 ff eb                                      bl #0x310454
003241d0  00 50 a0 e1                                      mov r5, r0
003241d4  51 cd 03 eb                                      bl #0x417720
003241d8  28 40 9f e5                                      ldr r4, [pc, #0x28]
003241dc  28 30 9f e5                                      ldr r3, [pc, #0x28]
003241e0  00 00 55 e3                                      cmp r5, #0
003241e4  04 40 8f e0                                      add r4, pc, r4
003241e8  03 30 94 e7                                      ldr r3, [r4, r3]
003241ec  05 10 a0 01                                      moveq r1, r5
003241f0  04 10 85 12                                      addne r1, r5, #4
003241f4  18 00 93 e5                                      ldr r0, [r3, #0x18]
003241f8  00 20 a0 e3                                      mov r2, #0
003241fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00324200  4f 58 00 ea                                      b #0x33a344
; mapping-symbol data/literal pool
00324204  48 ac 59 00 ac 08 67 00 f4 37 00 00              .byte 0x48, 0xac, 0x59, 0x00, 0xac, 0x08, 0x67, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00324210, declared_size=72, range_size=72, mode=arm
; class-group: Application
; alias: _ZN11Application16OnInterruptPauseEv
; demangled: Application::OnInterruptPause()
; decoder-mode: arm
00324210  10 40 2d e9                                      push {r4, lr}
00324214  d7 3d 08 eb                                      bl #0x533978
00324218  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
0032421c  01 00 50 e3                                      cmp r0, #1
00324220  04 40 8f e0                                      add r4, pc, r4
00324224  03 00 00 0a                                      beq #0x324238
00324228  20 00 9f e5                                      ldr r0, [pc, #0x20]
0032422c  00 00 8f e0                                      add r0, pc, r0
00324230  10 40 bd e8                                      pop {r4, lr}
00324234  b6 ff ff ea                                      b #0x324114
00324238  14 30 9f e5                                      ldr r3, [pc, #0x14]
0032423c  03 30 94 e7                                      ldr r3, [r4, r3]
00324240  00 00 c3 e5                                      strb r0, [r3]
00324244  cd 3d 08 eb                                      bl #0x533980
00324248  f6 ff ff ea                                      b #0x324228
; mapping-symbol data/literal pool
0032424c  70 08 67 00 04 ac 59 00 60 41 00 00              .byte 0x70, 0x08, 0x67, 0x00, 0x04, 0xac, 0x59, 0x00, 0x60, 0x41, 0x00, 0x00

; FUNCTION 0x003261fc, declared_size=108, range_size=108, mode=arm
; class-group: Application
; alias: _ZN11Application18RemoveUnderlayNodeEPN6glitch5scene10ISceneNodeE
; demangled: Application::RemoveUnderlayNode(glitch::scene::ISceneNode*)
; decoder-mode: arm
003261fc  10 40 2d e9                                      push {r4, lr}
00326200  b8 40 90 e5                                      ldr r4, [r0, #0xb8]
00326204  00 00 54 e3                                      cmp r4, #0
00326208  15 00 00 0a                                      beq #0x326264
0032620c  30 01 94 e5                                      ldr r0, [r4, #0x130]
00326210  34 c1 94 e5                                      ldr ip, [r4, #0x134]
00326214  0c 00 50 e1                                      cmp r0, ip
00326218  03 00 00 1a                                      bne #0x32622c
0032621c  10 00 00 ea                                      b #0x326264
00326220  04 00 80 e2                                      add r0, r0, #4
00326224  0c 00 50 e1                                      cmp r0, ip
00326228  0d 00 00 0a                                      beq #0x326264
0032622c  00 30 90 e5                                      ldr r3, [r0]
00326230  03 00 51 e1                                      cmp r1, r3
00326234  f9 ff ff 1a                                      bne #0x326220
00326238  04 10 80 e2                                      add r1, r0, #4
0032623c  0c 00 51 e1                                      cmp r1, ip
00326240  04 00 00 0a                                      beq #0x326258
00326244  01 20 5c e0                                      subs r2, ip, r1
00326248  0c 10 a0 01                                      moveq r1, ip
0032624c  01 00 00 0a                                      beq #0x326258
00326250  38 9f ff eb                                      bl #0x30df38
00326254  34 11 94 e5                                      ldr r1, [r4, #0x134]
00326258  04 10 41 e2                                      sub r1, r1, #4
0032625c  34 11 84 e5                                      str r1, [r4, #0x134]
00326260  10 80 bd e8                                      pop {r4, pc}
00326264  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003270c8, declared_size=16, range_size=16, mode=arm
; class-group: Application
; alias: _ZN11Application15AddUnderlayNodeEPN6glitch5scene10ISceneNodeE
; demangled: Application::AddUnderlayNode(glitch::scene::ISceneNode*)
; decoder-mode: arm
003270c8  b8 00 90 e5                                      ldr r0, [r0, #0xb8]
003270cc  00 00 50 e3                                      cmp r0, #0
003270d0  1e ff 2f 01                                      bxeq lr
003270d4  bc ff ff ea                                      b #0x326fcc

; FUNCTION 0x00328f40, declared_size=160, range_size=160, mode=arm
; class-group: Application
; alias: _ZN11Application10ResetTouchEv
; demangled: Application::ResetTouch()
; decoder-mode: arm
00328f40  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00328f44  20 30 90 e5                                      ldr r3, [r0, #0x20]
00328f48  14 d0 4d e2                                      sub sp, sp, #0x14
00328f4c  00 60 a0 e1                                      mov r6, r0
00328f50  00 00 53 e3                                      cmp r3, #0
00328f54  1f 00 00 0a                                      beq #0x328fd8
00328f58  00 20 e0 e3                                      mvn r2, #0
00328f5c  bc 20 cd e1                                      strh r2, [sp, #0xc]
00328f60  be 20 cd e1                                      strh r2, [sp, #0xe]
00328f64  04 50 8d e2                                      add r5, sp, #4
00328f68  03 10 a0 e1                                      mov r1, r3
00328f6c  05 00 a0 e1                                      mov r0, r5
00328f70  00 30 93 e5                                      ldr r3, [r3]
00328f74  0f e0 a0 e1                                      mov lr, pc
00328f78  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00328f7c  0c 70 8d e2                                      add r7, sp, #0xc
00328f80  04 40 9d e5                                      ldr r4, [sp, #4]
00328f84  07 00 00 ea                                      b #0x328fa8
00328f88  20 30 96 e5                                      ldr r3, [r6, #0x20]
00328f8c  08 20 94 e5                                      ldr r2, [r4, #8]
00328f90  07 10 a0 e1                                      mov r1, r7
00328f94  03 00 a0 e1                                      mov r0, r3
00328f98  00 30 93 e5                                      ldr r3, [r3]
00328f9c  0f e0 a0 e1                                      mov lr, pc
00328fa0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00328fa4  00 40 94 e5                                      ldr r4, [r4]
00328fa8  05 00 54 e1                                      cmp r4, r5
00328fac  f5 ff ff 1a                                      bne #0x328f88
00328fb0  04 00 9d e5                                      ldr r0, [sp, #4]
00328fb4  05 00 50 e1                                      cmp r0, r5
00328fb8  01 00 00 1a                                      bne #0x328fc4
00328fbc  05 00 00 ea                                      b #0x328fd8
00328fc0  04 00 a0 e1                                      mov r0, r4
00328fc4  00 40 90 e5                                      ldr r4, [r0]
00328fc8  0c 10 a0 e3                                      mov r1, #0xc
00328fcc  cb 7f 0f eb                                      bl #0x708f00
00328fd0  05 00 54 e1                                      cmp r4, r5
00328fd4  f9 ff ff 1a                                      bne #0x328fc0
00328fd8  14 d0 8d e2                                      add sp, sp, #0x14
00328fdc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00328fe0, declared_size=456, range_size=456, mode=arm
; class-group: Application
; alias: _ZN11Application6ResumeEv
; demangled: Application::Resume()
; decoder-mode: arm
00328fe0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00328fe4  10 30 90 e5                                      ldr r3, [r0, #0x10]
00328fe8  a8 51 9f e5                                      ldr r5, [pc, #0x1a8]
00328fec  00 40 a0 e1                                      mov r4, r0
00328ff0  00 00 53 e3                                      cmp r3, #0
00328ff4  05 50 8f e0                                      add r5, pc, r5
00328ff8  41 00 00 0a                                      beq #0x329104
00328ffc  8d bc 03 eb                                      bl #0x418238
00329000  00 00 50 e3                                      cmp r0, #0
00329004  3f 00 00 1a                                      bne #0x329108
00329008  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032900c  88 a1 9f e5                                      ldr sl, [pc, #0x188]
00329010  20 30 93 e5                                      ldr r3, [r3, #0x20]
00329014  03 00 a0 e1                                      mov r0, r3
00329018  00 30 93 e5                                      ldr r3, [r3]
0032901c  0f e0 a0 e1                                      mov lr, pc
00329020  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00329024  00 80 a0 e1                                      mov r8, r0
00329028  04 00 a0 e1                                      mov r0, r4
0032902c  a0 70 94 e5                                      ldr r7, [r4, #0xa0]
00329030  57 d9 ff eb                                      bl #0x31f594
00329034  0a 30 95 e7                                      ldr r3, [r5, sl]
00329038  00 90 a0 e1                                      mov sb, r0
0032903c  00 30 93 e5                                      ldr r3, [r3]
00329040  00 00 53 e3                                      cmp r3, #0
00329044  43 00 00 0a                                      beq #0x329158
00329048  50 61 9f e5                                      ldr r6, [pc, #0x150]
0032904c  06 30 95 e7                                      ldr r3, [r5, r6]
00329050  00 30 d3 e5                                      ldrb r3, [r3]
00329054  00 00 53 e3                                      cmp r3, #0
00329058  11 00 00 0a                                      beq #0x3290a4
0032905c  18 00 94 e5                                      ldr r0, [r4, #0x18]
00329060  00 30 a0 e3                                      mov r3, #0
00329064  a4 30 c4 e5                                      strb r3, [r4, #0xa4]
00329068  03 00 50 e1                                      cmp r0, r3
0032906c  00 00 00 0a                                      beq #0x329074
00329070  4f 44 00 eb                                      bl #0x33a1b4
00329074  04 00 a0 e1                                      mov r0, r4
00329078  b0 ff ff eb                                      bl #0x328f40
0032907c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00329080  20 30 93 e5                                      ldr r3, [r3, #0x20]
00329084  03 00 a0 e1                                      mov r0, r3
00329088  00 30 93 e5                                      ldr r3, [r3]
0032908c  0f e0 a0 e1                                      mov lr, pc
00329090  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00329094  70 00 84 e5                                      str r0, [r4, #0x70]
00329098  04 00 a0 e1                                      mov r0, r4
0032909c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003290a0  3f df ff ea                                      b #0x320da4
003290a4  04 00 a0 e1                                      mov r0, r4
003290a8  29 d9 ff eb                                      bl #0x31f554
003290ac  00 00 50 e3                                      cmp r0, #0
003290b0  17 00 00 0a                                      beq #0x329114
003290b4  a6 30 d4 e5                                      ldrb r3, [r4, #0xa6]
003290b8  00 00 53 e3                                      cmp r3, #0
003290bc  27 00 00 1a                                      bne #0x329160
003290c0  06 30 95 e7                                      ldr r3, [r5, r6]
003290c4  00 30 d3 e5                                      ldrb r3, [r3]
003290c8  00 00 53 e3                                      cmp r3, #0
003290cc  e2 ff ff 1a                                      bne #0x32905c
003290d0  a5 30 c4 e5                                      strb r3, [r4, #0xa5]
003290d4  ae 51 13 eb                                      bl #0x7fd794
003290d8  05 30 d0 e5                                      ldrb r3, [r0, #5]
003290dc  00 00 53 e3                                      cmp r3, #0
003290e0  dd ff ff 0a                                      beq #0x32905c
003290e4  57 3b a0 e3                                      mov r3, #0x15c00
003290e8  08 70 67 e0                                      rsb r7, r7, r8
003290ec  39 3e 83 e2                                      add r3, r3, #0x390
003290f0  03 00 57 e1                                      cmp r7, r3
003290f4  1e 00 00 9a                                      bls #0x329174
003290f8  01 30 a0 e3                                      mov r3, #1
003290fc  aa 30 c4 e5                                      strb r3, [r4, #0xaa]
00329100  d5 ff ff ea                                      b #0x32905c
00329104  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00329108  03 c8 03 eb                                      bl #0x41b11c
0032910c  9a be 03 eb                                      bl #0x418b7c
00329110  bc ff ff ea                                      b #0x329008
00329114  00 00 59 e3                                      cmp sb, #0
00329118  0a 00 00 0a                                      beq #0x329148
0032911c  98 31 d9 e5                                      ldrb r3, [sb, #0x198]
00329120  00 00 53 e3                                      cmp r3, #0
00329124  e2 ff ff 1a                                      bne #0x3290b4
00329128  74 30 9f e5                                      ldr r3, [pc, #0x74]
0032912c  03 30 95 e7                                      ldr r3, [r5, r3]
00329130  00 30 d3 e5                                      ldrb r3, [r3]
00329134  00 00 53 e3                                      cmp r3, #0
00329138  dd ff ff 1a                                      bne #0x3290b4
0032913c  a5 30 d4 e5                                      ldrb r3, [r4, #0xa5]
00329140  00 00 53 e3                                      cmp r3, #0
00329144  da ff ff 1a                                      bne #0x3290b4
00329148  0a 30 95 e7                                      ldr r3, [r5, sl]
0032914c  00 00 93 e5                                      ldr r0, [r3]
00329150  0e 05 01 eb                                      bl #0x36a590
00329154  d9 ff ff ea                                      b #0x3290c0
00329158  40 60 9f e5                                      ldr r6, [pc, #0x40]
0032915c  d7 ff ff ea                                      b #0x3290c0
00329160  0a 30 95 e7                                      ldr r3, [r5, sl]
00329164  7d 1f a0 e3                                      mov r1, #0x1f4
00329168  00 00 93 e5                                      ldr r0, [r3]
0032916c  fc 0b 01 eb                                      bl #0x36c164
00329170  d2 ff ff ea                                      b #0x3290c0
00329174  47 df ff eb                                      bl #0x320e98
00329178  34 30 90 e5                                      ldr r3, [r0, #0x34]
0032917c  02 00 53 e3                                      cmp r3, #2
00329180  b5 ff ff 0a                                      beq #0x32905c
00329184  04 00 a0 e1                                      mov r0, r4
00329188  31 dd ff eb                                      bl #0x320654
0032918c  00 00 50 e3                                      cmp r0, #0
00329190  b1 ff ff 1a                                      bne #0x32905c
00329194  d7 ff ff ea                                      b #0x3290f8
; mapping-symbol data/literal pool
00329198  9c ba 66 00 a4 0d 00 00 a8 26 00 00 a0 2f 00 00  .byte 0x9c, 0xba, 0x66, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xa8, 0x26, 0x00, 0x00, 0xa0, 0x2f, 0x00, 0x00

; FUNCTION 0x00329310, declared_size=88, range_size=88, mode=arm
; class-group: Application
; alias: _ZN11Application27UnRegisterForIrrlichtEventsEPN6glitch14IEventReceiverE
; demangled: Application::UnRegisterForIrrlichtEvents(glitch::IEventReceiver*)
; decoder-mode: arm
00329310  70 40 2d e9                                      push {r4, r5, r6, lr}
00329314  00 60 51 e2                                      subs r6, r1, #0
00329318  0a 00 00 0a                                      beq #0x329348
0032931c  00 50 a0 e1                                      mov r5, r0
00329320  08 00 b5 e5                                      ldr r0, [r5, #8]!
00329324  00 00 55 e1                                      cmp r5, r0
00329328  06 00 00 0a                                      beq #0x329348
0032932c  08 30 90 e5                                      ldr r3, [r0, #8]
00329330  00 40 90 e5                                      ldr r4, [r0]
00329334  03 00 56 e1                                      cmp r6, r3
00329338  03 00 00 0a                                      beq #0x32934c
0032933c  04 00 a0 e1                                      mov r0, r4
00329340  00 00 55 e1                                      cmp r5, r0
00329344  f8 ff ff 1a                                      bne #0x32932c
00329348  70 80 bd e8                                      pop {r4, r5, r6, pc}
0032934c  04 30 90 e5                                      ldr r3, [r0, #4]
00329350  0c 10 a0 e3                                      mov r1, #0xc
00329354  00 40 83 e5                                      str r4, [r3]
00329358  04 30 84 e5                                      str r3, [r4, #4]
0032935c  e7 7e 0f eb                                      bl #0x708f00
00329360  04 00 a0 e1                                      mov r0, r4
00329364  f5 ff ff ea                                      b #0x329340

; FUNCTION 0x0032a9c8, declared_size=1056, range_size=1056, mode=arm
; class-group: Application
; alias: _ZN11Application7onEventERKN6glitch6SEventE
; demangled: Application::onEvent(glitch::SEvent const&)
; decoder-mode: arm
0032a9c8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0032a9cc  e8 53 9f e5                                      ldr r5, [pc, #0x3e8]
0032a9d0  e8 63 9f e5                                      ldr r6, [pc, #0x3e8]
0032a9d4  a8 d0 4d e2                                      sub sp, sp, #0xa8
0032a9d8  05 50 8f e0                                      add r5, pc, r5
0032a9dc  06 30 95 e7                                      ldr r3, [r5, r6]
0032a9e0  00 90 a0 e1                                      mov sb, r0
0032a9e4  08 80 b9 e5                                      ldr r8, [sb, #8]!
0032a9e8  00 30 93 e5                                      ldr r3, [r3]
0032a9ec  00 70 a0 e1                                      mov r7, r0
0032a9f0  01 40 a0 e1                                      mov r4, r1
0032a9f4  00 a0 a0 e3                                      mov sl, #0
0032a9f8  a4 30 8d e5                                      str r3, [sp, #0xa4]
0032a9fc  08 00 00 ea                                      b #0x32aa24
0032aa00  08 30 98 e5                                      ldr r3, [r8, #8]
0032aa04  04 10 a0 e1                                      mov r1, r4
0032aa08  03 00 a0 e1                                      mov r0, r3
0032aa0c  00 30 93 e5                                      ldr r3, [r3]
0032aa10  0f e0 a0 e1                                      mov lr, pc
0032aa14  08 f0 93 e5                                      ldr pc, [r3, #8]
0032aa18  00 80 98 e5                                      ldr r8, [r8]
0032aa1c  0a a0 80 e1                                      orr sl, r0, sl
0032aa20  7a a0 ef e6                                      uxtb sl, sl
0032aa24  09 00 58 e1                                      cmp r8, sb
0032aa28  f4 ff ff 1a                                      bne #0x32aa00
0032aa2c  00 30 94 e5                                      ldr r3, [r4]
0032aa30  02 00 53 e3                                      cmp r3, #2
0032aa34  15 00 00 0a                                      beq #0x32aa90
0032aa38  01 00 53 e3                                      cmp r3, #1
0032aa3c  07 00 00 0a                                      beq #0x32aa60
0032aa40  06 30 95 e7                                      ldr r3, [r5, r6]
0032aa44  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
0032aa48  0a 00 a0 e1                                      mov r0, sl
0032aa4c  00 30 93 e5                                      ldr r3, [r3]
0032aa50  03 00 52 e1                                      cmp r2, r3
0032aa54  d7 00 00 1a                                      bne #0x32adb8
0032aa58  a8 d0 8d e2                                      add sp, sp, #0xa8
0032aa5c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0032aa60  14 10 94 e5                                      ldr r1, [r4, #0x14]
0032aa64  07 00 51 e3                                      cmp r1, #7
0032aa68  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
0032aa6c  25 00 00 ea                                      b #0x32ab08
0032aa70  42 00 00 ea                                      b #0x32ab80
0032aa74  5e 00 00 ea                                      b #0x32abf4
0032aa78  80 00 00 ea                                      b #0x32ac80
0032aa7c  3f 00 00 ea                                      b #0x32ab80
0032aa80  5b 00 00 ea                                      b #0x32abf4
0032aa84  7d 00 00 ea                                      b #0x32ac80
0032aa88  90 00 00 ea                                      b #0x32acd0
0032aa8c  6c 00 00 ea                                      b #0x32ac44
0032aa90  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0032aa94  09 00 53 e3                                      cmp r3, #9
0032aa98  de 00 53 13                                      cmpne r3, #0xde
0032aa9c  10 20 d4 15                                      ldrbne r2, [r4, #0x10]
0032aaa0  1a 00 00 0a                                      beq #0x32ab10
0032aaa4  18 a3 9f e5                                      ldr sl, [pc, #0x318]
0032aaa8  08 80 94 e5                                      ldr r8, [r4, #8]
0032aaac  11 e0 d4 e5                                      ldrb lr, [r4, #0x11]
0032aab0  0a a0 95 e7                                      ldr sl, [r5, sl]
0032aab4  12 90 d4 e5                                      ldrb sb, [r4, #0x12]
0032aab8  14 00 97 e5                                      ldr r0, [r7, #0x14]
0032aabc  00 c0 a0 e3                                      mov ip, #0
0032aac0  08 a0 8a e2                                      add sl, sl, #8
0032aac4  40 10 8d e2                                      add r1, sp, #0x40
0032aac8  4c 30 8d e5                                      str r3, [sp, #0x4c]
0032aacc  50 20 cd e5                                      strb r2, [sp, #0x50]
0032aad0  40 a0 8d e5                                      str sl, [sp, #0x40]
0032aad4  48 80 8d e5                                      str r8, [sp, #0x48]
0032aad8  51 e0 cd e5                                      strb lr, [sp, #0x51]
0032aadc  52 90 cd e5                                      strb sb, [sp, #0x52]
0032aae0  53 c0 cd e5                                      strb ip, [sp, #0x53]
0032aae4  44 c0 8d e5                                      str ip, [sp, #0x44]
0032aae8  f3 38 00 eb                                      bl #0x338ebc
0032aaec  d4 32 9f e5                                      ldr r3, [pc, #0x2d4]
0032aaf0  10 20 d4 e5                                      ldrb r2, [r4, #0x10]
0032aaf4  03 30 95 e7                                      ldr r3, [r5, r3]
0032aaf8  08 30 83 e2                                      add r3, r3, #8
0032aafc  40 30 8d e5                                      str r3, [sp, #0x40]
0032ab00  00 00 52 e3                                      cmp r2, #0
0032ab04  0a 00 00 1a                                      bne #0x32ab34
0032ab08  01 a0 a0 e3                                      mov sl, #1
0032ab0c  cb ff ff ea                                      b #0x32aa40
0032ab10  10 20 d4 e5                                      ldrb r2, [r4, #0x10]
0032ab14  00 00 52 e3                                      cmp r2, #0
0032ab18  e1 ff ff 1a                                      bne #0x32aaa4
0032ab1c  48 30 97 e5                                      ldr r3, [r7, #0x48]
0032ab20  00 00 53 e3                                      cmp r3, #0
0032ab24  f7 ff ff 0a                                      beq #0x32ab08
0032ab28  2d 62 01 eb                                      bl #0x3833e4
0032ab2c  10 20 d4 e5                                      ldrb r2, [r4, #0x10]
0032ab30  f2 ff ff ea                                      b #0x32ab00
0032ab34  90 32 9f e5                                      ldr r3, [pc, #0x290]
0032ab38  8c 80 8d e2                                      add r8, sp, #0x8c
0032ab3c  03 a0 95 e7                                      ldr sl, [r5, r3]
0032ab40  0a 00 a0 e1                                      mov r0, sl
0032ab44  4f 33 00 eb                                      bl #0x337888
0032ab48  80 12 9f e5                                      ldr r1, [pc, #0x280]
0032ab4c  70 20 8d e2                                      add r2, sp, #0x70
0032ab50  08 00 a0 e1                                      mov r0, r8
0032ab54  01 10 8f e0                                      add r1, pc, r1
0032ab58  63 a5 ff eb                                      bl #0x3140ec
0032ab5c  0a 00 a0 e1                                      mov r0, sl
0032ab60  08 10 a0 e1                                      mov r1, r8
0032ab64  c7 33 00 eb                                      bl #0x337a88
0032ab68  00 00 50 e3                                      cmp r0, #0
0032ab6c  65 00 00 0a                                      beq #0x32ad08
0032ab70  08 00 a0 e1                                      mov r0, r8
0032ab74  8c a3 ff eb                                      bl #0x3139ac
0032ab78  01 a0 a0 e3                                      mov sl, #1
0032ab7c  af ff ff ea                                      b #0x32aa40
0032ab80  4c e2 9f e5                                      ldr lr, [pc, #0x24c]
0032ab84  b8 20 d4 e1                                      ldrh r2, [r4, #8]
0032ab88  bc 30 d4 e1                                      ldrh r3, [r4, #0xc]
0032ab8c  0e e0 95 e7                                      ldr lr, [r5, lr]
0032ab90  14 00 97 e5                                      ldr r0, [r7, #0x14]
0032ab94  01 c0 71 e2                                      rsbs ip, r1, #1
0032ab98  00 c0 a0 33                                      movlo ip, #0
0032ab9c  08 e0 8e e2                                      add lr, lr, #8
0032aba0  2c 10 8d e2                                      add r1, sp, #0x2c
0032aba4  2c e0 8d e5                                      str lr, [sp, #0x2c]
0032aba8  02 70 a0 e3                                      mov r7, #2
0032abac  00 e0 a0 e3                                      mov lr, #0
0032abb0  34 e0 8d e5                                      str lr, [sp, #0x34]
0032abb4  38 c0 cd e5                                      strb ip, [sp, #0x38]
0032abb8  ba 23 cd e1                                      strh r2, [sp, #0x3a]
0032abbc  bc 33 cd e1                                      strh r3, [sp, #0x3c]
0032abc0  30 70 8d e5                                      str r7, [sp, #0x30]
0032abc4  bc 38 00 eb                                      bl #0x338ebc
0032abc8  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
0032abcc  04 02 9f e5                                      ldr r0, [pc, #0x204]
0032abd0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0032abd4  03 30 95 e7                                      ldr r3, [r5, r3]
0032abd8  08 10 94 e5                                      ldr r1, [r4, #8]
0032abdc  00 00 8f e0                                      add r0, pc, r0
0032abe0  08 30 83 e2                                      add r3, r3, #8
0032abe4  2c 30 8d e5                                      str r3, [sp, #0x2c]
0032abe8  01 a0 a0 e3                                      mov sl, #1
0032abec  a4 8c ff eb                                      bl #0x30de84
0032abf0  92 ff ff ea                                      b #0x32aa40
0032abf4  d8 31 9f e5                                      ldr r3, [pc, #0x1d8]
0032abf8  bc 20 d4 e1                                      ldrh r2, [r4, #0xc]
0032abfc  b8 c0 d4 e1                                      ldrh ip, [r4, #8]
0032ac00  03 30 95 e7                                      ldr r3, [r5, r3]
0032ac04  14 00 97 e5                                      ldr r0, [r7, #0x14]
0032ac08  01 00 51 e3                                      cmp r1, #1
0032ac0c  00 e0 a0 13                                      movne lr, #0
0032ac10  01 e0 a0 03                                      moveq lr, #1
0032ac14  08 40 83 e2                                      add r4, r3, #8
0032ac18  04 10 8d e2                                      add r1, sp, #4
0032ac1c  02 30 a0 e3                                      mov r3, #2
0032ac20  04 40 8d e5                                      str r4, [sp, #4]
0032ac24  0c 30 8d e5                                      str r3, [sp, #0xc]
0032ac28  10 e0 cd e5                                      strb lr, [sp, #0x10]
0032ac2c  b2 c1 cd e1                                      strh ip, [sp, #0x12]
0032ac30  b4 21 cd e1                                      strh r2, [sp, #0x14]
0032ac34  08 30 8d e5                                      str r3, [sp, #8]
0032ac38  01 a0 a0 e3                                      mov sl, #1
0032ac3c  9e 38 00 eb                                      bl #0x338ebc
0032ac40  7e ff ff ea                                      b #0x32aa40
0032ac44  10 00 94 e5                                      ldr r0, [r4, #0x10]
0032ac48  1f 8e ff eb                                      bl #0x30e4cc
0032ac4c  88 31 9f e5                                      ldr r3, [pc, #0x188]
0032ac50  14 20 97 e5                                      ldr r2, [r7, #0x14]
0032ac54  54 10 8d e2                                      add r1, sp, #0x54
0032ac58  03 30 95 e7                                      ldr r3, [r5, r3]
0032ac5c  5c 00 8d e5                                      str r0, [sp, #0x5c]
0032ac60  02 00 a0 e1                                      mov r0, r2
0032ac64  08 30 83 e2                                      add r3, r3, #8
0032ac68  03 20 a0 e3                                      mov r2, #3
0032ac6c  58 20 8d e5                                      str r2, [sp, #0x58]
0032ac70  54 30 8d e5                                      str r3, [sp, #0x54]
0032ac74  01 a0 a0 e3                                      mov sl, #1
0032ac78  8f 38 00 eb                                      bl #0x338ebc
0032ac7c  6f ff ff ea                                      b #0x32aa40
0032ac80  4c e1 9f e5                                      ldr lr, [pc, #0x14c]
0032ac84  bc 30 d4 e1                                      ldrh r3, [r4, #0xc]
0032ac88  b8 20 d4 e1                                      ldrh r2, [r4, #8]
0032ac8c  0e e0 95 e7                                      ldr lr, [r5, lr]
0032ac90  14 00 97 e5                                      ldr r0, [r7, #0x14]
0032ac94  02 00 51 e3                                      cmp r1, #2
0032ac98  00 c0 a0 13                                      movne ip, #0
0032ac9c  01 c0 a0 03                                      moveq ip, #1
0032aca0  08 e0 8e e2                                      add lr, lr, #8
0032aca4  01 a0 a0 e3                                      mov sl, #1
0032aca8  02 40 a0 e3                                      mov r4, #2
0032acac  18 10 8d e2                                      add r1, sp, #0x18
0032acb0  1c 40 8d e5                                      str r4, [sp, #0x1c]
0032acb4  18 e0 8d e5                                      str lr, [sp, #0x18]
0032acb8  24 c0 cd e5                                      strb ip, [sp, #0x24]
0032acbc  b6 22 cd e1                                      strh r2, [sp, #0x26]
0032acc0  b8 32 cd e1                                      strh r3, [sp, #0x28]
0032acc4  20 a0 8d e5                                      str sl, [sp, #0x20]
0032acc8  7b 38 00 eb                                      bl #0x338ebc
0032accc  5b ff ff ea                                      b #0x32aa40
0032acd0  08 c1 9f e5                                      ldr ip, [pc, #0x108]
0032acd4  bc 30 d4 e1                                      ldrh r3, [r4, #0xc]
0032acd8  b8 20 d4 e1                                      ldrh r2, [r4, #8]
0032acdc  0c c0 95 e7                                      ldr ip, [r5, ip]
0032ace0  14 00 97 e5                                      ldr r0, [r7, #0x14]
0032ace4  01 a0 a0 e3                                      mov sl, #1
0032ace8  08 c0 8c e2                                      add ip, ip, #8
0032acec  60 10 8d e2                                      add r1, sp, #0x60
0032acf0  60 c0 8d e5                                      str ip, [sp, #0x60]
0032acf4  b8 26 cd e1                                      strh r2, [sp, #0x68]
0032acf8  ba 36 cd e1                                      strh r3, [sp, #0x6a]
0032acfc  64 a0 8d e5                                      str sl, [sp, #0x64]
0032ad00  6d 38 00 eb                                      bl #0x338ebc
0032ad04  4d ff ff ea                                      b #0x32aa40
0032ad08  0a 00 a0 e1                                      mov r0, sl
0032ad0c  dd 32 00 eb                                      bl #0x337888
0032ad10  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0032ad14  74 90 8d e2                                      add sb, sp, #0x74
0032ad18  6c 20 8d e2                                      add r2, sp, #0x6c
0032ad1c  01 10 8f e0                                      add r1, pc, r1
0032ad20  09 00 a0 e1                                      mov r0, sb
0032ad24  f0 a4 ff eb                                      bl #0x3140ec
0032ad28  09 10 a0 e1                                      mov r1, sb
0032ad2c  0a 00 a0 e1                                      mov r0, sl
0032ad30  54 33 00 eb                                      bl #0x337a88
0032ad34  00 a0 a0 e1                                      mov sl, r0
0032ad38  09 00 a0 e1                                      mov r0, sb
0032ad3c  1a a3 ff eb                                      bl #0x3139ac
0032ad40  01 a0 2a e2                                      eor sl, sl, #1
0032ad44  08 00 a0 e1                                      mov r0, r8
0032ad48  17 a3 ff eb                                      bl #0x3139ac
0032ad4c  ff 00 1a e3                                      tst sl, #0xff
0032ad50  6c ff ff 0a                                      beq #0x32ab08
0032ad54  08 30 94 e5                                      ldr r3, [r4, #8]
0032ad58  2b 00 53 e3                                      cmp r3, #0x2b
0032ad5c  0e 00 00 0a                                      beq #0x32ad9c
0032ad60  2d 00 53 e3                                      cmp r3, #0x2d
0032ad64  67 ff ff 1a                                      bne #0x32ab08
0032ad68  cd 1c 0c e3                                      movw r1, #0xcccd
0032ad6c  9c 00 97 e5                                      ldr r0, [r7, #0x9c]
0032ad70  cc 1d 43 e3                                      movt r1, #0x3dcc
0032ad74  8c 8d ff eb                                      bl #0x30e3ac
0032ad78  00 40 a0 e3                                      mov r4, #0
0032ad7c  9c 00 87 e5                                      str r0, [r7, #0x9c]
0032ad80  04 10 a0 e1                                      mov r1, r4
0032ad84  60 8e ff eb                                      bl #0x30e70c
0032ad88  00 00 50 e3                                      cmp r0, #0
0032ad8c  9c 40 87 15                                      strne r4, [r7, #0x9c]
0032ad90  01 a0 a0 13                                      movne sl, #1
0032ad94  01 a0 a0 03                                      moveq sl, #1
0032ad98  28 ff ff ea                                      b #0x32aa40
0032ad9c  cd 1c 0c e3                                      movw r1, #0xcccd
0032ada0  9c 00 97 e5                                      ldr r0, [r7, #0x9c]
0032ada4  cc 1d 43 e3                                      movt r1, #0x3dcc
0032ada8  7d 8f ff eb                                      bl #0x30eba4
0032adac  01 a0 a0 e3                                      mov sl, #1
0032adb0  9c 00 87 e5                                      str r0, [r7, #0x9c]
0032adb4  21 ff ff ea                                      b #0x32aa40
0032adb8  54 8d ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032adbc  b8 a0 66 00 ac 40 00 00 18 4a 00 00 b0 0b 00 00  .byte 0xb8, 0xa0, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x18, 0x4a, 0x00, 0x00, 0xb0, 0x0b, 0x00, 0x00
0032adcc  84 08 00 00 f4 43 59 00 20 0b 00 00 ac 43 59 00  .byte 0x84, 0x08, 0x00, 0x00, 0xf4, 0x43, 0x59, 0x00, 0x20, 0x0b, 0x00, 0x00, 0xac, 0x43, 0x59, 0x00
0032addc  18 15 00 00 f4 1f 00 00 4c 42 59 00              .byte 0x18, 0x15, 0x00, 0x00, 0xf4, 0x1f, 0x00, 0x00, 0x4c, 0x42, 0x59, 0x00

; FUNCTION 0x0032ade8, declared_size=1116, range_size=1116, mode=arm
; class-group: Application
; alias: _ZN11Application5_DrawEv
; demangled: Application::_Draw()
; decoder-mode: arm
0032ade8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032adec  0c 54 9f e5                                      ldr r5, [pc, #0x40c]
0032adf0  0c 74 9f e5                                      ldr r7, [pc, #0x40c]
0032adf4  00 60 a0 e1                                      mov r6, r0
0032adf8  05 50 8f e0                                      add r5, pc, r5
0032adfc  07 30 95 e7                                      ldr r3, [r5, r7]
0032ae00  00 04 9f e5                                      ldr r0, [pc, #0x400]
0032ae04  00 a4 9f e5                                      ldr sl, [pc, #0x400]
0032ae08  00 30 93 e5                                      ldr r3, [r3]
0032ae0c  5c d0 4d e2                                      sub sp, sp, #0x5c
0032ae10  00 00 8f e0                                      add r0, pc, r0
0032ae14  54 30 8d e5                                      str r3, [sp, #0x54]
0032ae18  25 a2 ff eb                                      bl #0x3136b4
0032ae1c  0a 30 95 e7                                      ldr r3, [r5, sl]
0032ae20  10 20 96 e5                                      ldr r2, [r6, #0x10]
0032ae24  06 00 a0 e1                                      mov r0, r6
0032ae28  10 30 93 e5                                      ldr r3, [r3, #0x10]
0032ae2c  18 90 92 e5                                      ldr sb, [r2, #0x18]
0032ae30  10 40 93 e5                                      ldr r4, [r3, #0x10]
0032ae34  b2 d1 ff eb                                      bl #0x31f504
0032ae38  00 00 50 e3                                      cmp r0, #0
0032ae3c  0b 00 00 1a                                      bne #0x32ae70
0032ae40  18 00 96 e5                                      ldr r0, [r6, #0x18]
0032ae44  ad 3c 00 eb                                      bl #0x33a100
0032ae48  c0 03 9f e5                                      ldr r0, [pc, #0x3c0]
0032ae4c  00 00 8f e0                                      add r0, pc, r0
0032ae50  18 a2 ff eb                                      bl #0x3136b8
0032ae54  07 30 95 e7                                      ldr r3, [r5, r7]
0032ae58  54 20 9d e5                                      ldr r2, [sp, #0x54]
0032ae5c  00 30 93 e5                                      ldr r3, [r3]
0032ae60  03 00 52 e1                                      cmp r2, r3
0032ae64  e4 00 00 1a                                      bne #0x32b1fc
0032ae68  5c d0 8d e2                                      add sp, sp, #0x5c
0032ae6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032ae70  9c 33 9f e5                                      ldr r3, [pc, #0x39c]
0032ae74  03 30 95 e7                                      ldr r3, [r5, r3]
0032ae78  00 30 d3 e5                                      ldrb r3, [r3]
0032ae7c  00 00 53 e3                                      cmp r3, #0
0032ae80  ee ff ff 1a                                      bne #0x32ae40
0032ae84  06 00 a0 e1                                      mov r0, r6
0032ae88  c1 d1 ff eb                                      bl #0x31f594
0032ae8c  00 00 50 e3                                      cmp r0, #0
0032ae90  c5 00 00 0a                                      beq #0x32b1ac
0032ae94  38 80 90 e5                                      ldr r8, [r0, #0x38]
0032ae98  00 00 58 e3                                      cmp r8, #0
0032ae9c  c2 00 00 0a                                      beq #0x32b1ac
0032aea0  ec 01 98 e5                                      ldr r0, [r8, #0x1ec]
0032aea4  fd 4c 16 eb                                      bl #0x8be2a0
0032aea8  70 b0 ef e6                                      uxtb fp, r0
0032aeac  f0 01 98 e5                                      ldr r0, [r8, #0x1f0]
0032aeb0  fa 4c 16 eb                                      bl #0x8be2a0
0032aeb4  70 20 ef e6                                      uxtb r2, r0
0032aeb8  f4 01 98 e5                                      ldr r0, [r8, #0x1f4]
0032aebc  04 20 8d e5                                      str r2, [sp, #4]
0032aec0  f6 4c 16 eb                                      bl #0x8be2a0
0032aec4  04 20 9d e5                                      ldr r2, [sp, #4]
0032aec8  70 c0 ef e6                                      uxtb ip, r0
0032aecc  00 30 94 e5                                      ldr r3, [r4]
0032aed0  00 10 e0 e3                                      mvn r1, #0
0032aed4  04 00 a0 e1                                      mov r0, r4
0032aed8  dc 30 93 e5                                      ldr r3, [r3, #0xdc]
0032aedc  19 20 cd e5                                      strb r2, [sp, #0x19]
0032aee0  30 23 9f e5                                      ldr r2, [pc, #0x330]
0032aee4  1a c0 cd e5                                      strb ip, [sp, #0x1a]
0032aee8  18 b0 cd e5                                      strb fp, [sp, #0x18]
0032aeec  1b 10 cd e5                                      strb r1, [sp, #0x1b]
0032aef0  08 20 8d e5                                      str r2, [sp, #8]
0032aef4  18 10 9d e5                                      ldr r1, [sp, #0x18]
0032aef8  33 ff 2f e1                                      blx r3
0032aefc  00 30 94 e5                                      ldr r3, [r4]
0032af00  04 00 a0 e1                                      mov r0, r4
0032af04  0f e0 a0 e1                                      mov lr, pc
0032af08  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0032af0c  03 10 a0 e3                                      mov r1, #3
0032af10  04 00 a0 e1                                      mov r0, r4
0032af14  00 30 94 e5                                      ldr r3, [r4]
0032af18  0f e0 a0 e1                                      mov lr, pc
0032af1c  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
0032af20  08 30 9d e5                                      ldr r3, [sp, #8]
0032af24  3c 80 8d e2                                      add r8, sp, #0x3c
0032af28  03 b0 95 e7                                      ldr fp, [r5, r3]
0032af2c  00 30 94 e5                                      ldr r3, [r4]
0032af30  0b 00 a0 e1                                      mov r0, fp
0032af34  a0 30 93 e5                                      ldr r3, [r3, #0xa0]
0032af38  04 30 8d e5                                      str r3, [sp, #4]
0032af3c  51 32 00 eb                                      bl #0x337888
0032af40  d4 12 9f e5                                      ldr r1, [pc, #0x2d4]
0032af44  20 20 8d e2                                      add r2, sp, #0x20
0032af48  08 00 a0 e1                                      mov r0, r8
0032af4c  01 10 8f e0                                      add r1, pc, r1
0032af50  65 a4 ff eb                                      bl #0x3140ec
0032af54  08 10 a0 e1                                      mov r1, r8
0032af58  0b 00 a0 e1                                      mov r0, fp
0032af5c  c9 32 00 eb                                      bl #0x337a88
0032af60  01 1c a0 e3                                      mov r1, #0x100
0032af64  00 20 a0 e1                                      mov r2, r0
0032af68  04 30 9d e5                                      ldr r3, [sp, #4]
0032af6c  04 00 a0 e1                                      mov r0, r4
0032af70  33 ff 2f e1                                      blx r3
0032af74  08 00 a0 e1                                      mov r0, r8
0032af78  8b a2 ff eb                                      bl #0x3139ac
0032af7c  06 00 a0 e1                                      mov r0, r6
0032af80  01 10 a0 e3                                      mov r1, #1
0032af84  1d d8 ff eb                                      bl #0x321000
0032af88  00 00 50 e3                                      cmp r0, #0
0032af8c  2d 00 00 0a                                      beq #0x32b048
0032af90  88 82 9f e5                                      ldr r8, [pc, #0x288]
0032af94  88 a2 9f e5                                      ldr sl, [pc, #0x288]
0032af98  08 80 8f e0                                      add r8, pc, r8
0032af9c  0a a0 8f e0                                      add sl, pc, sl
0032afa0  08 00 a0 e1                                      mov r0, r8
0032afa4  c2 a1 ff eb                                      bl #0x3136b4
0032afa8  0a 00 a0 e1                                      mov r0, sl
0032afac  c0 a1 ff eb                                      bl #0x3136b4
0032afb0  18 00 96 e5                                      ldr r0, [r6, #0x18]
0032afb4  51 3c 00 eb                                      bl #0x33a100
0032afb8  0a 00 a0 e1                                      mov r0, sl
0032afbc  bd a1 ff eb                                      bl #0x3136b8
0032afc0  00 30 94 e5                                      ldr r3, [r4]
0032afc4  04 00 a0 e1                                      mov r0, r4
0032afc8  0f e0 a0 e1                                      mov lr, pc
0032afcc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0032afd0  00 30 99 e5                                      ldr r3, [sb]
0032afd4  09 00 a0 e1                                      mov r0, sb
0032afd8  0f e0 a0 e1                                      mov lr, pc
0032afdc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0032afe0  18 00 96 e5                                      ldr r0, [r6, #0x18]
0032afe4  57 3c 00 eb                                      bl #0x33a148
0032afe8  a7 06 04 eb                                      bl #0x42ca8c
0032afec  b8 0c 04 eb                                      bl #0x42e2d4
0032aff0  30 32 9f e5                                      ldr r3, [pc, #0x230]
0032aff4  03 00 95 e7                                      ldr r0, [r5, r3]
0032aff8  45 9a ff eb                                      bl #0x311914
0032affc  00 30 94 e5                                      ldr r3, [r4]
0032b000  04 00 a0 e1                                      mov r0, r4
0032b004  0f e0 a0 e1                                      mov lr, pc
0032b008  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0032b00c  08 00 a0 e1                                      mov r0, r8
0032b010  a8 a1 ff eb                                      bl #0x3136b8
0032b014  00 30 94 e5                                      ldr r3, [r4]
0032b018  04 00 a0 e1                                      mov r0, r4
0032b01c  0f e0 a0 e1                                      mov lr, pc
0032b020  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0032b024  04 00 a0 e1                                      mov r0, r4
0032b028  00 30 94 e5                                      ldr r3, [r4]
0032b02c  00 10 a0 e3                                      mov r1, #0
0032b030  0f e0 a0 e1                                      mov lr, pc
0032b034  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0032b038  ec 01 9f e5                                      ldr r0, [pc, #0x1ec]
0032b03c  00 00 8f e0                                      add r0, pc, r0
0032b040  9c a1 ff eb                                      bl #0x3136b8
0032b044  82 ff ff ea                                      b #0x32ae54
0032b048  06 00 a0 e1                                      mov r0, r6
0032b04c  58 d1 ff eb                                      bl #0x31f5b4
0032b050  00 00 50 e3                                      cmp r0, #0
0032b054  cd ff ff 0a                                      beq #0x32af90
0032b058  a9 30 d6 e5                                      ldrb r3, [r6, #0xa9]
0032b05c  00 00 53 e3                                      cmp r3, #0
0032b060  ca ff ff 0a                                      beq #0x32af90
0032b064  a9 fa 03 eb                                      bl #0x429b10
0032b068  e1 d0 03 eb                                      bl #0x41f3f4
0032b06c  00 00 50 e3                                      cmp r0, #0
0032b070  c6 ff ff 1a                                      bne #0x32af90
0032b074  b4 01 9f e5                                      ldr r0, [pc, #0x1b4]
0032b078  00 00 8f e0                                      add r0, pc, r0
0032b07c  8c a1 ff eb                                      bl #0x3136b4
0032b080  0a 30 95 e7                                      ldr r3, [r5, sl]
0032b084  cd 2c 0c e3                                      movw r2, #0xcccd
0032b088  00 10 a0 e3                                      mov r1, #0
0032b08c  10 30 93 e5                                      ldr r3, [r3, #0x10]
0032b090  4c 2f 43 e3                                      movt r2, #0x3f4c
0032b094  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0032b098  0c 30 8d e5                                      str r3, [sp, #0xc]
0032b09c  14 30 93 e5                                      ldr r3, [r3, #0x14]
0032b0a0  03 00 a0 e1                                      mov r0, r3
0032b0a4  00 30 93 e5                                      ldr r3, [r3]
0032b0a8  0f e0 a0 e1                                      mov lr, pc
0032b0ac  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
0032b0b0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0032b0b4  e4 30 90 e5                                      ldr r3, [r0, #0xe4]
0032b0b8  00 00 53 e3                                      cmp r3, #0
0032b0bc  43 00 00 0a                                      beq #0x32b1d0
0032b0c0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0032b0c4  00 10 a0 e3                                      mov r1, #0
0032b0c8  24 80 8d e2                                      add r8, sp, #0x24
0032b0cc  00 30 90 e5                                      ldr r3, [r0]
0032b0d0  0f e0 a0 e1                                      mov lr, pc
0032b0d4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0032b0d8  08 20 9d e5                                      ldr r2, [sp, #8]
0032b0dc  02 b0 95 e7                                      ldr fp, [r5, r2]
0032b0e0  0b 00 a0 e1                                      mov r0, fp
0032b0e4  e7 31 00 eb                                      bl #0x337888
0032b0e8  44 11 9f e5                                      ldr r1, [pc, #0x144]
0032b0ec  1c 20 8d e2                                      add r2, sp, #0x1c
0032b0f0  08 00 a0 e1                                      mov r0, r8
0032b0f4  01 10 8f e0                                      add r1, pc, r1
0032b0f8  fb a3 ff eb                                      bl #0x3140ec
0032b0fc  0b 00 a0 e1                                      mov r0, fp
0032b100  08 10 a0 e1                                      mov r1, r8
0032b104  5f 32 00 eb                                      bl #0x337a88
0032b108  00 b0 a0 e1                                      mov fp, r0
0032b10c  08 00 a0 e1                                      mov r0, r8
0032b110  25 a2 ff eb                                      bl #0x3139ac
0032b114  00 00 5b e3                                      cmp fp, #0
0032b118  1f 00 00 0a                                      beq #0x32b19c
0032b11c  0a 30 95 e7                                      ldr r3, [r5, sl]
0032b120  10 30 93 e5                                      ldr r3, [r3, #0x10]
0032b124  10 b0 93 e5                                      ldr fp, [r3, #0x10]
0032b128  ff 3f 0f e3                                      movw r3, #0xffff
0032b12c  dc a0 9b e5                                      ldr sl, [fp, #0xdc]
0032b130  be 22 da e1                                      ldrh r2, [sl, #0x2e]
0032b134  03 00 52 e1                                      cmp r2, r3
0032b138  1f 00 00 0a                                      beq #0x32b1bc
0032b13c  14 80 8d e2                                      add r8, sp, #0x14
0032b140  08 00 a0 e1                                      mov r0, r8
0032b144  0a 10 a0 e1                                      mov r1, sl
0032b148  01 30 a0 e3                                      mov r3, #1
0032b14c  e4 c7 0a eb                                      bl #0x5dd0e4
0032b150  14 00 9d e5                                      ldr r0, [sp, #0x14]
0032b154  00 00 50 e3                                      cmp r0, #0
0032b158  ff 20 a0 03                                      moveq r2, #0xff
0032b15c  01 00 00 0a                                      beq #0x32b168
0032b160  f3 6a 0a eb                                      bl #0x5c5d34
0032b164  00 20 a0 e1                                      mov r2, r0
0032b168  0b 00 a0 e1                                      mov r0, fp
0032b16c  08 10 a0 e1                                      mov r1, r8
0032b170  00 30 a0 e3                                      mov r3, #0
0032b174  7b 08 0a eb                                      bl #0x5ad368
0032b178  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0032b17c  04 00 93 e5                                      ldr r0, [r3, #4]
0032b180  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0032b184  03 10 95 e7                                      ldr r1, [r5, r3]
0032b188  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0032b18c  03 20 95 e7                                      ldr r2, [r5, r3]
0032b190  c2 8e 07 eb                                      bl #0x50eca0
0032b194  08 00 a0 e1                                      mov r0, r8
0032b198  92 96 ff eb                                      bl #0x310be8
0032b19c  9c 00 9f e5                                      ldr r0, [pc, #0x9c]
0032b1a0  00 00 8f e0                                      add r0, pc, r0
0032b1a4  43 a1 ff eb                                      bl #0x3136b8
0032b1a8  78 ff ff ea                                      b #0x32af90
0032b1ac  00 b0 a0 e3                                      mov fp, #0
0032b1b0  0b 20 a0 e1                                      mov r2, fp
0032b1b4  0b c0 a0 e1                                      mov ip, fp
0032b1b8  43 ff ff ea                                      b #0x32aecc
0032b1bc  0a 00 a0 e1                                      mov r0, sl
0032b1c0  01 10 a0 e3                                      mov r1, #1
0032b1c4  57 b6 0a eb                                      bl #0x5d8b28
0032b1c8  00 20 a0 e1                                      mov r2, r0
0032b1cc  da ff ff ea                                      b #0x32b13c
0032b1d0  06 00 a0 e1                                      mov r0, r6
0032b1d4  ee d0 ff eb                                      bl #0x31f594
0032b1d8  00 00 50 e3                                      cmp r0, #0
0032b1dc  b7 ff ff 0a                                      beq #0x32b0c0
0032b1e0  28 31 90 e5                                      ldr r3, [r0, #0x128]
0032b1e4  00 00 53 e3                                      cmp r3, #0
0032b1e8  b4 ff ff 0a                                      beq #0x32b0c0
0032b1ec  08 10 93 e5                                      ldr r1, [r3, #8]
0032b1f0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0032b1f4  b1 77 09 eb                                      bl #0x5890c0
0032b1f8  b0 ff ff ea                                      b #0x32b0c0
0032b1fc  43 8c ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032b200  98 9c 66 00 ac 40 00 00 90 41 59 00 f4 37 00 00  .byte 0x98, 0x9c, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x90, 0x41, 0x59, 0x00, 0xf4, 0x37, 0x00, 0x00
0032b210  54 41 59 00 b8 37 00 00 84 08 00 00 6c 40 59 00  .byte 0x54, 0x41, 0x59, 0x00, 0xb8, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x6c, 0x40, 0x59, 0x00
0032b220  68 40 59 00 7c 40 59 00 fc 0c 00 00 64 3f 59 00  .byte 0x68, 0x40, 0x59, 0x00, 0x7c, 0x40, 0x59, 0x00, 0xfc, 0x0c, 0x00, 0x00, 0x64, 0x3f, 0x59, 0x00
0032b230  50 3f 59 00 ec 3e 59 00 20 39 00 00 a4 16 00 00  .byte 0x50, 0x3f, 0x59, 0x00, 0xec, 0x3e, 0x59, 0x00, 0x20, 0x39, 0x00, 0x00, 0xa4, 0x16, 0x00, 0x00
0032b240  28 3e 59 00                                      .byte 0x28, 0x3e, 0x59, 0x00

; FUNCTION 0x0032bdc8, declared_size=1068, range_size=1068, mode=arm
; class-group: Application
; alias: _ZN11Application9LoadLevelEPKcijbbibjj
; demangled: Application::LoadLevel(char const*, int, unsigned int, bool, bool, int, bool, unsigned int, unsigned int)
; decoder-mode: arm
0032bdc8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032bdcc  d8 43 9f e5                                      ldr r4, [pc, #0x3d8]
0032bdd0  d8 63 9f e5                                      ldr r6, [pc, #0x3d8]
0032bdd4  7d df 4d e2                                      sub sp, sp, #0x1f4
0032bdd8  04 40 8f e0                                      add r4, pc, r4
0032bddc  06 80 94 e7                                      ldr r8, [r4, r6]
0032bde0  cc 63 9f e5                                      ldr r6, [pc, #0x3cc]
0032bde4  cc 53 9f e5                                      ldr r5, [pc, #0x3cc]
0032bde8  28 20 8d e5                                      str r2, [sp, #0x28]
0032bdec  06 60 94 e7                                      ldr r6, [r4, r6]
0032bdf0  05 c0 94 e7                                      ldr ip, [r4, r5]
0032bdf4  00 30 88 e5                                      str r3, [r8]
0032bdf8  1c 60 8d e5                                      str r6, [sp, #0x1c]
0032bdfc  b8 63 9f e5                                      ldr r6, [pc, #0x3b8]
0032be00  00 e0 9c e5                                      ldr lr, [ip]
0032be04  b4 c3 9f e5                                      ldr ip, [pc, #0x3b4]
0032be08  06 60 94 e7                                      ldr r6, [r4, r6]
0032be0c  24 72 dd e5                                      ldrb r7, [sp, #0x224]
0032be10  0c c0 94 e7                                      ldr ip, [r4, ip]
0032be14  24 60 8d e5                                      str r6, [sp, #0x24]
0032be18  a4 63 9f e5                                      ldr r6, [pc, #0x3a4]
0032be1c  00 20 8c e5                                      str r2, [ip]
0032be20  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0032be24  06 60 94 e7                                      ldr r6, [r4, r6]
0032be28  ec e1 8d e5                                      str lr, [sp, #0x1ec]
0032be2c  01 80 a0 e1                                      mov r8, r1
0032be30  34 60 8d e5                                      str r6, [sp, #0x34]
0032be34  8c 63 9f e5                                      ldr r6, [pc, #0x38c]
0032be38  06 b0 94 e7                                      ldr fp, [r4, r6]
0032be3c  88 63 9f e5                                      ldr r6, [pc, #0x388]
0032be40  00 70 cb e5                                      strb r7, [fp]
0032be44  06 90 94 e7                                      ldr sb, [r4, r6]
0032be48  80 63 9f e5                                      ldr r6, [pc, #0x380]
0032be4c  01 b0 a0 e3                                      mov fp, #1
0032be50  06 a0 94 e7                                      ldr sl, [r4, r6]
0032be54  18 62 dd e5                                      ldrb r6, [sp, #0x218]
0032be58  2c 60 8d e5                                      str r6, [sp, #0x2c]
0032be5c  1c 62 dd e5                                      ldrb r6, [sp, #0x21c]
0032be60  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0032be64  30 60 8d e5                                      str r6, [sp, #0x30]
0032be68  00 c0 c2 e5                                      strb ip, [r2]
0032be6c  03 60 a0 e1                                      mov r6, r3
0032be70  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0032be74  30 30 9d e5                                      ldr r3, [sp, #0x30]
0032be78  20 22 9d e5                                      ldr r2, [sp, #0x220]
0032be7c  00 30 cc e5                                      strb r3, [ip]
0032be80  34 30 9d e5                                      ldr r3, [sp, #0x34]
0032be84  28 c2 9d e5                                      ldr ip, [sp, #0x228]
0032be88  00 20 83 e5                                      str r2, [r3]
0032be8c  00 c0 89 e5                                      str ip, [sb]
0032be90  2c 22 9d e5                                      ldr r2, [sp, #0x22c]
0032be94  00 90 a0 e1                                      mov sb, r0
0032be98  00 20 8a e5                                      str r2, [sl]
0032be9c  99 ff ff eb                                      bl #0x32bd08
0032bea0  00 10 a0 e3                                      mov r1, #0
0032bea4  14 b0 c0 e5                                      strb fp, [r0, #0x14]
0032bea8  ab 10 c9 e5                                      strb r1, [sb, #0xab]
0032beac  09 00 a0 e1                                      mov r0, sb
0032beb0  18 10 8d e5                                      str r1, [sp, #0x18]
0032beb4  b6 cd ff eb                                      bl #0x31f594
0032beb8  18 10 9d e5                                      ldr r1, [sp, #0x18]
0032bebc  00 a0 a0 e1                                      mov sl, r0
0032bec0  09 00 a0 e1                                      mov r0, sb
0032bec4  e7 cd ff eb                                      bl #0x31f668
0032bec8  00 00 5a e3                                      cmp sl, #0
0032becc  38 00 00 0a                                      beq #0x32bfb4
0032bed0  30 31 9a e5                                      ldr r3, [sl, #0x130]
0032bed4  26 00 53 e3                                      cmp r3, #0x26
0032bed8  06 00 00 0a                                      beq #0x32bef8
0032bedc  05 30 94 e7                                      ldr r3, [r4, r5]
0032bee0  ec 21 9d e5                                      ldr r2, [sp, #0x1ec]
0032bee4  00 30 93 e5                                      ldr r3, [r3]
0032bee8  03 00 52 e1                                      cmp r2, r3
0032beec  ad 00 00 1a                                      bne #0x32c1a8
0032bef0  7d df 8d e2                                      add sp, sp, #0x1f4
0032bef4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032bef8  98 31 da e5                                      ldrb r3, [sl, #0x198]
0032befc  00 00 53 e3                                      cmp r3, #0
0032bf00  8a 00 00 0a                                      beq #0x32c130
0032bf04  c8 c2 9f e5                                      ldr ip, [pc, #0x2c8]
0032bf08  1c c0 8d e5                                      str ip, [sp, #0x1c]
0032bf0c  01 b0 a0 e3                                      mov fp, #1
0032bf10  09 00 a0 e1                                      mov r0, sb
0032bf14  45 b1 ca e5                                      strb fp, [sl, #0x145]
0032bf18  a1 d1 ff eb                                      bl #0x3205a4
0032bf1c  40 20 9a e5                                      ldr r2, [sl, #0x40]
0032bf20  f0 b0 ca e5                                      strb fp, [sl, #0xf0]
0032bf24  0a 00 a0 e1                                      mov r0, sl
0032bf28  0b 10 a0 e1                                      mov r1, fp
0032bf2c  24 20 8d e5                                      str r2, [sp, #0x24]
0032bf30  1e 12 03 eb                                      bl #0x3f07b0
0032bf34  0a 00 a0 e1                                      mov r0, sl
0032bf38  0b 10 a0 e1                                      mov r1, fp
0032bf3c  96 11 03 eb                                      bl #0x3f059c
0032bf40  0a 00 a0 e1                                      mov r0, sl
0032bf44  b6 0c 03 eb                                      bl #0x3ef224
0032bf48  00 00 57 e3                                      cmp r7, #0
0032bf4c  21 00 00 0a                                      beq #0x32bfd8
0032bf50  06 20 a0 e1                                      mov r2, r6
0032bf54  2c 62 9d e5                                      ldr r6, [sp, #0x22c]
0032bf58  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0032bf5c  08 00 a0 e1                                      mov r0, r8
0032bf60  00 60 8d e5                                      str r6, [sp]
0032bf64  30 60 9d e5                                      ldr r6, [sp, #0x30]
0032bf68  04 c0 8d e5                                      str ip, [sp, #4]
0032bf6c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0032bf70  08 60 8d e5                                      str r6, [sp, #8]
0032bf74  20 62 9d e5                                      ldr r6, [sp, #0x220]
0032bf78  28 10 9d e5                                      ldr r1, [sp, #0x28]
0032bf7c  28 32 9d e5                                      ldr r3, [sp, #0x228]
0032bf80  0c c0 8d e5                                      str ip, [sp, #0xc]
0032bf84  10 60 8d e5                                      str r6, [sp, #0x10]
0032bf88  22 6a 01 eb                                      bl #0x386818
0032bf8c  44 32 9f e5                                      ldr r3, [pc, #0x244]
0032bf90  03 00 94 e7                                      ldr r0, [r4, r3]
0032bf94  4e 34 01 eb                                      bl #0x3790d4
0032bf98  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0032bf9c  0c 30 94 e7                                      ldr r3, [r4, ip]
0032bfa0  40 00 93 e5                                      ldr r0, [r3, #0x40]
0032bfa4  00 30 a0 e3                                      mov r3, #0
0032bfa8  c9 36 c0 e5                                      strb r3, [r0, #0x6c9]
0032bfac  00 34 01 eb                                      bl #0x378fb4
0032bfb0  c9 ff ff ea                                      b #0x32bedc
0032bfb4  18 32 9f e5                                      ldr r3, [pc, #0x218]
0032bfb8  00 c0 e0 e3                                      mvn ip, #0
0032bfbc  00 00 57 e3                                      cmp r7, #0
0032bfc0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0032bfc4  03 30 94 e7                                      ldr r3, [r4, r3]
0032bfc8  24 c0 8d e5                                      str ip, [sp, #0x24]
0032bfcc  40 30 93 e5                                      ldr r3, [r3, #0x40]
0032bfd0  1b b7 c3 e5                                      strb fp, [r3, #0x71b]
0032bfd4  dd ff ff 1a                                      bne #0x32bf50
0032bfd8  fc a1 9f e5                                      ldr sl, [pc, #0x1fc]
0032bfdc  3c 20 8d e2                                      add r2, sp, #0x3c
0032bfe0  20 20 8d e5                                      str r2, [sp, #0x20]
0032bfe4  07 30 a0 e1                                      mov r3, r7
0032bfe8  02 00 a0 e1                                      mov r0, r2
0032bfec  06 10 a0 e1                                      mov r1, r6
0032bff0  01 20 a0 e3                                      mov r2, #1
0032bff4  6c e5 04 eb                                      bl #0x4655ac
0032bff8  0a 30 94 e7                                      ldr r3, [r4, sl]
0032bffc  1f ce 8d e2                                      add ip, sp, #0x1f0
0032c000  00 30 93 e5                                      ldr r3, [r3]
0032c004  03 31 8c e0                                      add r3, ip, r3, lsl #2
0032c008  58 31 13 e5                                      ldr r3, [r3, #-0x158]
0032c00c  00 00 53 e3                                      cmp r3, #0
0032c010  28 32 8d e5                                      str r3, [sp, #0x228]
0032c014  50 00 00 1a                                      bne #0x32c15c
0032c018  2b 7c 0b eb                                      bl #0x60b0cc
0032c01c  28 02 8d e5                                      str r0, [sp, #0x228]
0032c020  0a 30 94 e7                                      ldr r3, [r4, sl]
0032c024  28 c2 9d e5                                      ldr ip, [sp, #0x228]
0032c028  1f 2e 8d e2                                      add r2, sp, #0x1f0
0032c02c  00 30 93 e5                                      ldr r3, [r3]
0032c030  03 31 82 e0                                      add r3, r2, r3, lsl #2
0032c034  58 c1 03 e5                                      str ip, [r3, #-0x158]
0032c038  d5 45 13 eb                                      bl #0x7fd794
0032c03c  05 30 d0 e5                                      ldrb r3, [r0, #5]
0032c040  00 00 53 e3                                      cmp r3, #0
0032c044  34 00 00 0a                                      beq #0x32c11c
0032c048  90 31 9f e5                                      ldr r3, [pc, #0x190]
0032c04c  03 30 94 e7                                      ldr r3, [r4, r3]
0032c050  00 b0 93 e5                                      ldr fp, [r3]
0032c054  00 00 5b e3                                      cmp fp, #0
0032c058  26 00 00 da                                      ble #0x32c0f8
0032c05c  80 31 9f e5                                      ldr r3, [pc, #0x180]
0032c060  00 70 a0 e3                                      mov r7, #0
0032c064  00 90 e0 e3                                      mvn sb, #0
0032c068  03 30 94 e7                                      ldr r3, [r4, r3]
0032c06c  00 a0 93 e5                                      ldr sl, [r3]
0032c070  20 00 9a e5                                      ldr r0, [sl, #0x20]
0032c074  08 10 a0 e1                                      mov r1, r8
0032c078  9a 89 ff eb                                      bl #0x30e6e8
0032c07c  00 00 50 e3                                      cmp r0, #0
0032c080  07 90 a0 01                                      moveq sb, r7
0032c084  01 70 87 e2                                      add r7, r7, #1
0032c088  0b 00 57 e1                                      cmp r7, fp
0032c08c  48 a0 8a e2                                      add sl, sl, #0x48
0032c090  f6 ff ff 1a                                      bne #0x32c070
0032c094  01 00 79 e3                                      cmn sb, #1
0032c098  16 00 00 0a                                      beq #0x32c0f8
0032c09c  46 7c 13 eb                                      bl #0x80b1bc
0032c0a0  00 70 a0 e1                                      mov r7, r0
0032c0a4  3c 01 9f e5                                      ldr r0, [pc, #0x13c]
0032c0a8  01 10 a0 e3                                      mov r1, #1
0032c0ac  00 00 8f e0                                      add r0, pc, r0
0032c0b0  63 78 13 eb                                      bl #0x80a244
0032c0b4  00 30 e0 e3                                      mvn r3, #0
0032c0b8  50 90 80 e5                                      str sb, [r0, #0x50]
0032c0bc  68 30 80 e5                                      str r3, [r0, #0x68]
0032c0c0  28 20 9d e5                                      ldr r2, [sp, #0x28]
0032c0c4  00 10 a0 e1                                      mov r1, r0
0032c0c8  54 20 80 e5                                      str r2, [r0, #0x54]
0032c0cc  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0032c0d0  58 30 c0 e5                                      strb r3, [r0, #0x58]
0032c0d4  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0032c0d8  59 c0 c0 e5                                      strb ip, [r0, #0x59]
0032c0dc  20 22 9d e5                                      ldr r2, [sp, #0x220]
0032c0e0  5c 20 80 e5                                      str r2, [r0, #0x5c]
0032c0e4  28 32 9d e5                                      ldr r3, [sp, #0x228]
0032c0e8  60 30 80 e5                                      str r3, [r0, #0x60]
0032c0ec  64 30 80 e5                                      str r3, [r0, #0x64]
0032c0f0  07 00 a0 e1                                      mov r0, r7
0032c0f4  6a 88 13 eb                                      bl #0x80e2a4
0032c0f8  a3 53 13 eb                                      bl #0x800f8c
0032c0fc  00 30 90 e5                                      ldr r3, [r0]
0032c100  0f e0 a0 e1                                      mov lr, pc
0032c104  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0032c108  07 10 a0 e3                                      mov r1, #7
0032c10c  00 30 90 e5                                      ldr r3, [r0]
0032c110  01 20 a0 e3                                      mov r2, #1
0032c114  0f e0 a0 e1                                      mov lr, pc
0032c118  08 f0 93 e5                                      ldr pc, [r3, #8]
0032c11c  20 00 9d e5                                      ldr r0, [sp, #0x20]
0032c120  99 dd 04 eb                                      bl #0x46378c
0032c124  28 c2 9d e5                                      ldr ip, [sp, #0x228]
0032c128  2c c2 8d e5                                      str ip, [sp, #0x22c]
0032c12c  87 ff ff ea                                      b #0x32bf50
0032c130  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
0032c134  0b 10 a0 e1                                      mov r1, fp
0032c138  02 30 94 e7                                      ldr r3, [r4, r2]
0032c13c  1c 20 8d e5                                      str r2, [sp, #0x1c]
0032c140  54 30 93 e5                                      ldr r3, [r3, #0x54]
0032c144  f4 30 93 e5                                      ldr r3, [r3, #0xf4]
0032c148  03 00 a0 e1                                      mov r0, r3
0032c14c  00 30 93 e5                                      ldr r3, [r3]
0032c150  0f e0 a0 e1                                      mov lr, pc
0032c154  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0032c158  6b ff ff ea                                      b #0x32bf0c
0032c15c  88 30 9f e5                                      ldr r3, [pc, #0x88]
0032c160  75 9f 8d e2                                      add sb, sp, #0x1d4
0032c164  03 70 94 e7                                      ldr r7, [r4, r3]
0032c168  07 00 a0 e1                                      mov r0, r7
0032c16c  c5 2d 00 eb                                      bl #0x337888
0032c170  78 10 9f e5                                      ldr r1, [pc, #0x78]
0032c174  38 20 8d e2                                      add r2, sp, #0x38
0032c178  09 00 a0 e1                                      mov r0, sb
0032c17c  01 10 8f e0                                      add r1, pc, r1
0032c180  d9 9f ff eb                                      bl #0x3140ec
0032c184  07 00 a0 e1                                      mov r0, r7
0032c188  09 10 a0 e1                                      mov r1, sb
0032c18c  3d 2e 00 eb                                      bl #0x337a88
0032c190  00 70 a0 e1                                      mov r7, r0
0032c194  09 00 a0 e1                                      mov r0, sb
0032c198  03 9e ff eb                                      bl #0x3139ac
0032c19c  00 00 57 e3                                      cmp r7, #0
0032c1a0  9e ff ff 0a                                      beq #0x32c020
0032c1a4  9b ff ff ea                                      b #0x32c018
0032c1a8  58 88 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032c1ac  b8 8c 66 00 e0 46 00 00 58 4c 00 00 ac 40 00 00  .byte 0xb8, 0x8c, 0x66, 0x00, 0xe0, 0x46, 0x00, 0x00, 0x58, 0x4c, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00
0032c1bc  18 26 00 00 f8 2f 00 00 2c 3d 00 00 10 1d 00 00  .byte 0x18, 0x26, 0x00, 0x00, 0xf8, 0x2f, 0x00, 0x00, 0x2c, 0x3d, 0x00, 0x00, 0x10, 0x1d, 0x00, 0x00
0032c1cc  10 3f 00 00 74 42 00 00 f4 37 00 00 14 27 00 00  .byte 0x10, 0x3f, 0x00, 0x00, 0x74, 0x42, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x14, 0x27, 0x00, 0x00
0032c1dc  9c 1a 00 00 c0 18 00 00 74 08 00 00 74 2e 59 00  .byte 0x9c, 0x1a, 0x00, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00, 0x74, 0x2e, 0x59, 0x00
0032c1ec  84 08 00 00 0c 2f 59 00                          .byte 0x84, 0x08, 0x00, 0x00, 0x0c, 0x2f, 0x59, 0x00

; FUNCTION 0x0032c1f4, declared_size=580, range_size=580, mode=arm
; class-group: Application
; alias: _ZN11Application12GoToMainMenuE17GoToMainMenuEvent
; demangled: Application::GoToMainMenu(GoToMainMenuEvent)
; decoder-mode: arm
0032c1f4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0032c1f8  08 42 9f e5                                      ldr r4, [pc, #0x208]
0032c1fc  08 32 9f e5                                      ldr r3, [pc, #0x208]
0032c200  08 62 9f e5                                      ldr r6, [pc, #0x208]
0032c204  04 40 8f e0                                      add r4, pc, r4
0032c208  03 20 94 e7                                      ldr r2, [r4, r3]
0032c20c  00 32 9f e5                                      ldr r3, [pc, #0x200]
0032c210  06 a0 94 e7                                      ldr sl, [r4, r6]
0032c214  00 50 a0 e1                                      mov r5, r0
0032c218  03 c0 94 e7                                      ldr ip, [r4, r3]
0032c21c  00 30 a0 e3                                      mov r3, #0
0032c220  0a 00 a0 e1                                      mov r0, sl
0032c224  00 30 cc e5                                      strb r3, [ip]
0032c228  00 30 c2 e5                                      strb r3, [r2]
0032c22c  01 70 a0 e1                                      mov r7, r1
0032c230  d7 cc ff eb                                      bl #0x31f594
0032c234  00 80 50 e2                                      subs r8, r0, #0
0032c238  02 00 00 0a                                      beq #0x32c248
0032c23c  30 31 98 e5                                      ldr r3, [r8, #0x130]
0032c240  26 00 53 e3                                      cmp r3, #0x26
0032c244  49 00 00 0a                                      beq #0x32c370
0032c248  0f 02 04 eb                                      bl #0x42ca8c
0032c24c  00 80 a0 e1                                      mov r8, r0
0032c250  39 05 04 eb                                      bl #0x42d73c
0032c254  bc 01 9f e5                                      ldr r0, [pc, #0x1bc]
0032c258  00 00 8f e0                                      add r0, pc, r0
0032c25c  ac df ff eb                                      bl #0x324114
0032c260  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
0032c264  08 00 a0 e1                                      mov r0, r8
0032c268  01 10 8f e0                                      add r1, pc, r1
0032c26c  df 03 04 eb                                      bl #0x42d1f0
0032c270  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
0032c274  00 20 a0 e3                                      mov r2, #0
0032c278  03 10 94 e7                                      ldr r1, [r4, r3]
0032c27c  01 30 a0 e3                                      mov r3, #1
0032c280  29 30 c1 e5                                      strb r3, [r1, #0x29]
0032c284  0c 00 81 e5                                      str r0, [r1, #0xc]
0032c288  18 00 95 e5                                      ldr r0, [r5, #0x18]
0032c28c  3d 38 00 eb                                      bl #0x33a388
0032c290  8c 01 9f e5                                      ldr r0, [pc, #0x18c]
0032c294  00 00 8f e0                                      add r0, pc, r0
0032c298  9d df ff eb                                      bl #0x324114
0032c29c  05 00 a0 e1                                      mov r0, r5
0032c2a0  bf d0 ff eb                                      bl #0x3205a4
0032c2a4  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
0032c2a8  03 30 94 e7                                      ldr r3, [r4, r3]
0032c2ac  00 00 93 e5                                      ldr r0, [r3]
0032c2b0  ff 4d 01 eb                                      bl #0x37fab4
0032c2b4  70 01 9f e5                                      ldr r0, [pc, #0x170]
0032c2b8  00 00 8f e0                                      add r0, pc, r0
0032c2bc  94 df ff eb                                      bl #0x324114
0032c2c0  06 30 94 e7                                      ldr r3, [r4, r6]
0032c2c4  40 00 93 e5                                      ldr r0, [r3, #0x40]
0032c2c8  3c 19 01 eb                                      bl #0x3727c0
0032c2cc  30 45 13 eb                                      bl #0x7fd794
0032c2d0  05 30 d0 e5                                      ldrb r3, [r0, #5]
0032c2d4  00 00 53 e3                                      cmp r3, #0
0032c2d8  0c 00 00 1a                                      bne #0x32c310
0032c2dc  4c 01 9f e5                                      ldr r0, [pc, #0x14c]
0032c2e0  00 00 8f e0                                      add r0, pc, r0
0032c2e4  8a df ff eb                                      bl #0x324114
0032c2e8  05 00 a0 e1                                      mov r0, r5
0032c2ec  00 10 a0 e3                                      mov r1, #0
0032c2f0  dc cc ff eb                                      bl #0x31f668
0032c2f4  38 01 9f e5                                      ldr r0, [pc, #0x138]
0032c2f8  01 30 a0 e3                                      mov r3, #1
0032c2fc  ab 30 c5 e5                                      strb r3, [r5, #0xab]
0032c300  00 00 8f e0                                      add r0, pc, r0
0032c304  b0 70 85 e5                                      str r7, [r5, #0xb0]
0032c308  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0032c30c  80 df ff ea                                      b #0x324114
0032c310  e5 b8 13 eb                                      bl #0x81a6ac
0032c314  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
0032c318  00 00 53 e3                                      cmp r3, #0
0032c31c  34 00 00 1a                                      bne #0x32c3f4
0032c320  19 53 13 eb                                      bl #0x800f8c
0032c324  00 30 90 e5                                      ldr r3, [r0]
0032c328  0f e0 a0 e1                                      mov lr, pc
0032c32c  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0032c330  00 00 50 e3                                      cmp r0, #0
0032c334  29 00 00 1a                                      bne #0x32c3e0
0032c338  13 53 13 eb                                      bl #0x800f8c
0032c33c  01 00 a0 e3                                      mov r0, #1
0032c340  5e 48 13 eb                                      bl #0x7fe4c0
0032c344  10 53 13 eb                                      bl #0x800f8c
0032c348  0f 4a 13 eb                                      bl #0x7feb8c
0032c34c  10 45 13 eb                                      bl #0x7fd794
0032c350  00 10 a0 e3                                      mov r1, #0
0032c354  6c 44 13 eb                                      bl #0x7fd50c
0032c358  ce d2 ff eb                                      bl #0x320e98
0032c35c  00 40 a0 e3                                      mov r4, #0
0032c360  28 40 c0 e5                                      strb r4, [r0, #0x28]
0032c364  67 fe ff eb                                      bl #0x32bd08
0032c368  11 40 c0 e5                                      strb r4, [r0, #0x11]
0032c36c  da ff ff ea                                      b #0x32c2dc
0032c370  98 31 d8 e5                                      ldrb r3, [r8, #0x198]
0032c374  00 00 53 e3                                      cmp r3, #0
0032c378  08 00 00 0a                                      beq #0x32c3a0
0032c37c  01 30 a0 e3                                      mov r3, #1
0032c380  08 00 a0 e1                                      mov r0, r8
0032c384  45 31 c8 e5                                      strb r3, [r8, #0x145]
0032c388  00 10 a0 e3                                      mov r1, #0
0032c38c  82 10 03 eb                                      bl #0x3f059c
0032c390  08 00 a0 e1                                      mov r0, r8
0032c394  00 10 a0 e3                                      mov r1, #0
0032c398  04 11 03 eb                                      bl #0x3f07b0
0032c39c  a9 ff ff ea                                      b #0x32c248
0032c3a0  54 30 9a e5                                      ldr r3, [sl, #0x54]
0032c3a4  01 10 a0 e3                                      mov r1, #1
0032c3a8  f4 30 93 e5                                      ldr r3, [r3, #0xf4]
0032c3ac  03 00 a0 e1                                      mov r0, r3
0032c3b0  00 30 93 e5                                      ldr r3, [r3]
0032c3b4  0f e0 a0 e1                                      mov lr, pc
0032c3b8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0032c3bc  01 30 a0 e3                                      mov r3, #1
0032c3c0  08 00 a0 e1                                      mov r0, r8
0032c3c4  45 31 c8 e5                                      strb r3, [r8, #0x145]
0032c3c8  00 10 a0 e3                                      mov r1, #0
0032c3cc  72 10 03 eb                                      bl #0x3f059c
0032c3d0  08 00 a0 e1                                      mov r0, r8
0032c3d4  00 10 a0 e3                                      mov r1, #0
0032c3d8  f4 10 03 eb                                      bl #0x3f07b0
0032c3dc  99 ff ff ea                                      b #0x32c248
0032c3e0  e9 52 13 eb                                      bl #0x800f8c
0032c3e4  00 30 90 e5                                      ldr r3, [r0]
0032c3e8  0f e0 a0 e1                                      mov lr, pc
0032c3ec  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0032c3f0  d0 ff ff ea                                      b #0x32c338
0032c3f4  ac b8 13 eb                                      bl #0x81a6ac
0032c3f8  00 30 90 e5                                      ldr r3, [r0]
0032c3fc  0f e0 a0 e1                                      mov lr, pc
0032c400  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0032c404  c5 ff ff ea                                      b #0x32c320
; mapping-symbol data/literal pool
0032c408  8c 88 66 00 d4 29 00 00 f4 37 00 00 dc 2b 00 00  .byte 0x8c, 0x88, 0x66, 0x00, 0xd4, 0x29, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xdc, 0x2b, 0x00, 0x00
0032c418  48 2e 59 00 68 2e 59 00 54 21 00 00 4c 2e 59 00  .byte 0x48, 0x2e, 0x59, 0x00, 0x68, 0x2e, 0x59, 0x00, 0x54, 0x21, 0x00, 0x00, 0x4c, 0x2e, 0x59, 0x00
0032c428  70 1d 00 00 58 2e 59 00 60 2e 59 00 78 2e 59 00  .byte 0x70, 0x1d, 0x00, 0x00, 0x58, 0x2e, 0x59, 0x00, 0x60, 0x2e, 0x59, 0x00, 0x78, 0x2e, 0x59, 0x00

; FUNCTION 0x0032c438, declared_size=2188, range_size=2188, mode=arm
; class-group: Application
; alias: _ZN11Application7_UpdateEi
; demangled: Application::_Update(int)
; decoder-mode: arm
0032c438  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032c43c  18 48 9f e5                                      ldr r4, [pc, #0x818]
0032c440  18 28 9f e5                                      ldr r2, [pc, #0x818]
0032c444  00 50 a0 e1                                      mov r5, r0
0032c448  04 40 8f e0                                      add r4, pc, r4
0032c44c  02 30 94 e7                                      ldr r3, [r4, r2]
0032c450  0c 08 9f e5                                      ldr r0, [pc, #0x80c]
0032c454  6f df 4d e2                                      sub sp, sp, #0x1bc
0032c458  00 30 93 e5                                      ldr r3, [r3]
0032c45c  00 00 8f e0                                      add r0, pc, r0
0032c460  08 20 8d e5                                      str r2, [sp, #8]
0032c464  01 70 a0 e1                                      mov r7, r1
0032c468  b4 31 8d e5                                      str r3, [sp, #0x1b4]
0032c46c  90 9c ff eb                                      bl #0x3136b4
0032c470  f0 37 9f e5                                      ldr r3, [pc, #0x7f0]
0032c474  f0 67 9f e5                                      ldr r6, [pc, #0x7f0]
0032c478  67 8f 8d e2                                      add r8, sp, #0x19c
0032c47c  03 00 94 e7                                      ldr r0, [r4, r3]
0032c480  bf 08 08 eb                                      bl #0x52e784
0032c484  06 a0 94 e7                                      ldr sl, [r4, r6]
0032c488  0a 00 a0 e1                                      mov r0, sl
0032c48c  fd 2c 00 eb                                      bl #0x337888
0032c490  d8 17 9f e5                                      ldr r1, [pc, #0x7d8]
0032c494  48 20 8d e2                                      add r2, sp, #0x48
0032c498  08 00 a0 e1                                      mov r0, r8
0032c49c  01 10 8f e0                                      add r1, pc, r1
0032c4a0  11 9f ff eb                                      bl #0x3140ec
0032c4a4  0a 00 a0 e1                                      mov r0, sl
0032c4a8  08 10 a0 e1                                      mov r1, r8
0032c4ac  00 20 a0 e3                                      mov r2, #0
0032c4b0  49 2e 00 eb                                      bl #0x337ddc
0032c4b4  08 00 a0 e1                                      mov r0, r8
0032c4b8  3b 9d ff eb                                      bl #0x3139ac
0032c4bc  aa 30 d5 e5                                      ldrb r3, [r5, #0xaa]
0032c4c0  00 00 53 e3                                      cmp r3, #0
0032c4c4  a4 01 00 1a                                      bne #0x32cb5c
0032c4c8  a4 37 9f e5                                      ldr r3, [pc, #0x7a4]
0032c4cc  03 30 94 e7                                      ldr r3, [r4, r3]
0032c4d0  00 30 d3 e5                                      ldrb r3, [r3]
0032c4d4  00 00 53 e3                                      cmp r3, #0
0032c4d8  cf 00 00 1a                                      bne #0x32c81c
0032c4dc  94 87 9f e5                                      ldr r8, [pc, #0x794]
0032c4e0  94 b7 9f e5                                      ldr fp, [pc, #0x794]
0032c4e4  05 00 a0 e1                                      mov r0, r5
0032c4e8  29 cc ff eb                                      bl #0x31f594
0032c4ec  01 10 a0 e3                                      mov r1, #1
0032c4f0  00 a0 a0 e1                                      mov sl, r0
0032c4f4  05 00 a0 e1                                      mov r0, r5
0032c4f8  c0 d2 ff eb                                      bl #0x321000
0032c4fc  00 00 50 e3                                      cmp r0, #0
0032c500  d3 00 00 1a                                      bne #0x32c854
0032c504  74 37 9f e5                                      ldr r3, [pc, #0x774]
0032c508  03 30 94 e7                                      ldr r3, [r4, r3]
0032c50c  00 30 d3 e5                                      ldrb r3, [r3]
0032c510  00 00 53 e3                                      cmp r3, #0
0032c514  d7 00 00 0a                                      beq #0x32c878
0032c518  08 30 94 e7                                      ldr r3, [r4, r8]
0032c51c  00 30 93 e5                                      ldr r3, [r3]
0032c520  11 00 53 e3                                      cmp r3, #0x11
0032c524  c2 01 00 0a                                      beq #0x32cc34
0032c528  04 00 95 e5                                      ldr r0, [r5, #4]
0032c52c  08 30 d0 e5                                      ldrb r3, [r0, #8]
0032c530  00 00 53 e3                                      cmp r3, #0
0032c534  8e 01 00 1a                                      bne #0x32cb74
0032c538  6c 7b 02 eb                                      bl #0x3cb2f0
0032c53c  0b 30 94 e7                                      ldr r3, [r4, fp]
0032c540  40 00 93 e5                                      ldr r0, [r3, #0x40]
0032c544  9a 32 01 eb                                      bl #0x378fb4
0032c548  07 00 a0 e1                                      mov r0, r7
0032c54c  f7 89 ff eb                                      bl #0x30ed30
0032c550  01 90 a0 e1                                      mov sb, r1
0032c554  00 20 a0 e1                                      mov r2, r0
0032c558  01 30 a0 e1                                      mov r3, r1
0032c55c  00 80 a0 e1                                      mov r8, r0
0032c560  14 00 95 e5                                      ldr r0, [r5, #0x14]
0032c564  a8 32 00 eb                                      bl #0x33900c
0032c568  18 00 95 e5                                      ldr r0, [r5, #0x18]
0032c56c  09 30 a0 e1                                      mov r3, sb
0032c570  08 20 a0 e1                                      mov r2, r8
0032c574  9e 38 00 eb                                      bl #0x33a7f4
0032c578  04 37 9f e5                                      ldr r3, [pc, #0x704]
0032c57c  03 30 94 e7                                      ldr r3, [r4, r3]
0032c580  00 00 93 e5                                      ldr r0, [r3]
0032c584  00 00 50 e3                                      cmp r0, #0
0032c588  00 00 00 0a                                      beq #0x32c590
0032c58c  6e f3 00 eb                                      bl #0x36934c
0032c590  20 00 95 e5                                      ldr r0, [r5, #0x20]
0032c594  00 00 50 e3                                      cmp r0, #0
0032c598  02 00 00 0a                                      beq #0x32c5a8
0032c59c  08 20 a0 e1                                      mov r2, r8
0032c5a0  09 30 a0 e1                                      mov r3, sb
0032c5a4  62 3b 00 eb                                      bl #0x33b334
0032c5a8  24 00 95 e5                                      ldr r0, [r5, #0x24]
0032c5ac  00 00 50 e3                                      cmp r0, #0
0032c5b0  02 00 00 0a                                      beq #0x32c5c0
0032c5b4  08 20 a0 e1                                      mov r2, r8
0032c5b8  09 30 a0 e1                                      mov r3, sb
0032c5bc  60 44 00 eb                                      bl #0x33d744
0032c5c0  f7 85 00 eb                                      bl #0x34dda4
0032c5c4  00 80 a0 e1                                      mov r8, r0
0032c5c8  07 00 a0 e1                                      mov r0, r7
0032c5cc  e4 88 ff eb                                      bl #0x30e964
0032c5d0  00 70 98 e5                                      ldr r7, [r8]
0032c5d4  00 10 a0 e1                                      mov r1, r0
0032c5d8  08 00 a0 e1                                      mov r0, r8
0032c5dc  0f e0 a0 e1                                      mov lr, pc
0032c5e0  0c f0 97 e5                                      ldr pc, [r7, #0xc]
0032c5e4  05 00 a0 e1                                      mov r0, r5
0032c5e8  dd d2 ff eb                                      bl #0x321164
0032c5ec  94 76 9f e5                                      ldr r7, [pc, #0x694]
0032c5f0  06 a0 94 e7                                      ldr sl, [r4, r6]
0032c5f4  61 8f 8d e2                                      add r8, sp, #0x184
0032c5f8  07 70 8f e0                                      add r7, pc, r7
0032c5fc  0a 00 a0 e1                                      mov r0, sl
0032c600  a0 2c 00 eb                                      bl #0x337888
0032c604  44 20 8d e2                                      add r2, sp, #0x44
0032c608  07 10 a0 e1                                      mov r1, r7
0032c60c  08 00 a0 e1                                      mov r0, r8
0032c610  b5 9e ff eb                                      bl #0x3140ec
0032c614  08 10 a0 e1                                      mov r1, r8
0032c618  0a 00 a0 e1                                      mov r0, sl
0032c61c  19 2d 00 eb                                      bl #0x337a88
0032c620  00 90 a0 e1                                      mov sb, r0
0032c624  08 00 a0 e1                                      mov r0, r8
0032c628  df 9c ff eb                                      bl #0x3139ac
0032c62c  00 00 59 e3                                      cmp sb, #0
0032c630  3a 01 00 1a                                      bne #0x32cb20
0032c634  06 a0 94 e7                                      ldr sl, [r4, r6]
0032c638  4c 76 9f e5                                      ldr r7, [pc, #0x64c]
0032c63c  55 8f 8d e2                                      add r8, sp, #0x154
0032c640  0a 00 a0 e1                                      mov r0, sl
0032c644  07 70 8f e0                                      add r7, pc, r7
0032c648  8e 2c 00 eb                                      bl #0x337888
0032c64c  3c 20 8d e2                                      add r2, sp, #0x3c
0032c650  07 10 a0 e1                                      mov r1, r7
0032c654  08 00 a0 e1                                      mov r0, r8
0032c658  a3 9e ff eb                                      bl #0x3140ec
0032c65c  08 10 a0 e1                                      mov r1, r8
0032c660  0a 00 a0 e1                                      mov r0, sl
0032c664  07 2d 00 eb                                      bl #0x337a88
0032c668  00 90 a0 e1                                      mov sb, r0
0032c66c  08 00 a0 e1                                      mov r0, r8
0032c670  cd 9c ff eb                                      bl #0x3139ac
0032c674  00 00 59 e3                                      cmp sb, #0
0032c678  18 01 00 1a                                      bne #0x32cae0
0032c67c  06 a0 94 e7                                      ldr sl, [r4, r6]
0032c680  08 76 9f e5                                      ldr r7, [pc, #0x608]
0032c684  49 8f 8d e2                                      add r8, sp, #0x124
0032c688  0a 00 a0 e1                                      mov r0, sl
0032c68c  07 70 8f e0                                      add r7, pc, r7
0032c690  7c 2c 00 eb                                      bl #0x337888
0032c694  34 20 8d e2                                      add r2, sp, #0x34
0032c698  07 10 a0 e1                                      mov r1, r7
0032c69c  08 00 a0 e1                                      mov r0, r8
0032c6a0  91 9e ff eb                                      bl #0x3140ec
0032c6a4  08 10 a0 e1                                      mov r1, r8
0032c6a8  0a 00 a0 e1                                      mov r0, sl
0032c6ac  f5 2c 00 eb                                      bl #0x337a88
0032c6b0  00 90 a0 e1                                      mov sb, r0
0032c6b4  08 00 a0 e1                                      mov r0, r8
0032c6b8  bb 9c ff eb                                      bl #0x3139ac
0032c6bc  00 00 59 e3                                      cmp sb, #0
0032c6c0  f5 00 00 1a                                      bne #0x32ca9c
0032c6c4  06 a0 94 e7                                      ldr sl, [r4, r6]
0032c6c8  c4 75 9f e5                                      ldr r7, [pc, #0x5c4]
0032c6cc  f4 80 8d e2                                      add r8, sp, #0xf4
0032c6d0  0a 00 a0 e1                                      mov r0, sl
0032c6d4  07 70 8f e0                                      add r7, pc, r7
0032c6d8  6a 2c 00 eb                                      bl #0x337888
0032c6dc  2c 20 8d e2                                      add r2, sp, #0x2c
0032c6e0  07 10 a0 e1                                      mov r1, r7
0032c6e4  08 00 a0 e1                                      mov r0, r8
0032c6e8  7f 9e ff eb                                      bl #0x3140ec
0032c6ec  08 10 a0 e1                                      mov r1, r8
0032c6f0  0a 00 a0 e1                                      mov r0, sl
0032c6f4  e3 2c 00 eb                                      bl #0x337a88
0032c6f8  00 90 a0 e1                                      mov sb, r0
0032c6fc  08 00 a0 e1                                      mov r0, r8
0032c700  a9 9c ff eb                                      bl #0x3139ac
0032c704  00 00 59 e3                                      cmp sb, #0
0032c708  cd 00 00 1a                                      bne #0x32ca44
0032c70c  06 a0 94 e7                                      ldr sl, [r4, r6]
0032c710  80 75 9f e5                                      ldr r7, [pc, #0x580]
0032c714  c4 80 8d e2                                      add r8, sp, #0xc4
0032c718  0a 00 a0 e1                                      mov r0, sl
0032c71c  07 70 8f e0                                      add r7, pc, r7
0032c720  58 2c 00 eb                                      bl #0x337888
0032c724  24 20 8d e2                                      add r2, sp, #0x24
0032c728  07 10 a0 e1                                      mov r1, r7
0032c72c  08 00 a0 e1                                      mov r0, r8
0032c730  6d 9e ff eb                                      bl #0x3140ec
0032c734  08 10 a0 e1                                      mov r1, r8
0032c738  0a 00 a0 e1                                      mov r0, sl
0032c73c  d1 2c 00 eb                                      bl #0x337a88
0032c740  00 90 a0 e1                                      mov sb, r0
0032c744  08 00 a0 e1                                      mov r0, r8
0032c748  97 9c ff eb                                      bl #0x3139ac
0032c74c  00 00 59 e3                                      cmp sb, #0
0032c750  a5 00 00 1a                                      bne #0x32c9ec
0032c754  06 a0 94 e7                                      ldr sl, [r4, r6]
0032c758  3c 75 9f e5                                      ldr r7, [pc, #0x53c]
0032c75c  94 80 8d e2                                      add r8, sp, #0x94
0032c760  0a 00 a0 e1                                      mov r0, sl
0032c764  07 70 8f e0                                      add r7, pc, r7
0032c768  46 2c 00 eb                                      bl #0x337888
0032c76c  1c 20 8d e2                                      add r2, sp, #0x1c
0032c770  07 10 a0 e1                                      mov r1, r7
0032c774  08 00 a0 e1                                      mov r0, r8
0032c778  5b 9e ff eb                                      bl #0x3140ec
0032c77c  08 10 a0 e1                                      mov r1, r8
0032c780  0a 00 a0 e1                                      mov r0, sl
0032c784  bf 2c 00 eb                                      bl #0x337a88
0032c788  00 90 a0 e1                                      mov sb, r0
0032c78c  08 00 a0 e1                                      mov r0, r8
0032c790  85 9c ff eb                                      bl #0x3139ac
0032c794  00 00 59 e3                                      cmp sb, #0
0032c798  7f 00 00 1a                                      bne #0x32c99c
0032c79c  06 80 94 e7                                      ldr r8, [r4, r6]
0032c7a0  f8 64 9f e5                                      ldr r6, [pc, #0x4f8]
0032c7a4  64 70 8d e2                                      add r7, sp, #0x64
0032c7a8  08 00 a0 e1                                      mov r0, r8
0032c7ac  06 60 8f e0                                      add r6, pc, r6
0032c7b0  34 2c 00 eb                                      bl #0x337888
0032c7b4  14 20 8d e2                                      add r2, sp, #0x14
0032c7b8  06 10 a0 e1                                      mov r1, r6
0032c7bc  07 00 a0 e1                                      mov r0, r7
0032c7c0  49 9e ff eb                                      bl #0x3140ec
0032c7c4  07 10 a0 e1                                      mov r1, r7
0032c7c8  08 00 a0 e1                                      mov r0, r8
0032c7cc  ad 2c 00 eb                                      bl #0x337a88
0032c7d0  00 a0 a0 e1                                      mov sl, r0
0032c7d4  07 00 a0 e1                                      mov r0, r7
0032c7d8  73 9c ff eb                                      bl #0x3139ac
0032c7dc  00 00 5a e3                                      cmp sl, #0
0032c7e0  51 00 00 1a                                      bne #0x32c92c
0032c7e4  74 30 95 e5                                      ldr r3, [r5, #0x74]
0032c7e8  b4 04 9f e5                                      ldr r0, [pc, #0x4b4]
0032c7ec  01 30 83 e2                                      add r3, r3, #1
0032c7f0  74 30 85 e5                                      str r3, [r5, #0x74]
0032c7f4  00 00 8f e0                                      add r0, pc, r0
0032c7f8  ae 9b ff eb                                      bl #0x3136b8
0032c7fc  08 20 9d e5                                      ldr r2, [sp, #8]
0032c800  02 30 94 e7                                      ldr r3, [r4, r2]
0032c804  b4 21 9d e5                                      ldr r2, [sp, #0x1b4]
0032c808  00 30 93 e5                                      ldr r3, [r3]
0032c80c  03 00 52 e1                                      cmp r2, r3
0032c810  10 01 00 1a                                      bne #0x32cc58
0032c814  6f df 8d e2                                      add sp, sp, #0x1bc
0032c818  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032c81c  54 84 9f e5                                      ldr r8, [pc, #0x454]
0032c820  08 30 94 e7                                      ldr r3, [r4, r8]
0032c824  00 30 93 e5                                      ldr r3, [r3]
0032c828  0a 00 53 e3                                      cmp r3, #0xa
0032c82c  d2 00 00 0a                                      beq #0x32cb7c
0032c830  05 00 a0 e1                                      mov r0, r5
0032c834  56 cb ff eb                                      bl #0x31f594
0032c838  01 10 a0 e3                                      mov r1, #1
0032c83c  00 a0 a0 e1                                      mov sl, r0
0032c840  05 00 a0 e1                                      mov r0, r5
0032c844  ed d1 ff eb                                      bl #0x321000
0032c848  00 00 50 e3                                      cmp r0, #0
0032c84c  28 b4 9f e5                                      ldr fp, [pc, #0x428]
0032c850  2b ff ff 0a                                      beq #0x32c504
0032c854  ce 43 13 eb                                      bl #0x7fd794
0032c858  05 30 d0 e5                                      ldrb r3, [r0, #5]
0032c85c  00 00 53 e3                                      cmp r3, #0
0032c860  2c ff ff 0a                                      beq #0x32c518
0032c864  14 34 9f e5                                      ldr r3, [pc, #0x414]
0032c868  03 30 94 e7                                      ldr r3, [r4, r3]
0032c86c  00 30 d3 e5                                      ldrb r3, [r3]
0032c870  00 00 53 e3                                      cmp r3, #0
0032c874  27 ff ff 1a                                      bne #0x32c518
0032c878  05 00 a0 e1                                      mov r0, r5
0032c87c  4c cb ff eb                                      bl #0x31f5b4
0032c880  00 00 50 e3                                      cmp r0, #0
0032c884  23 ff ff 0a                                      beq #0x32c518
0032c888  05 00 a0 e1                                      mov r0, r5
0032c88c  55 cb ff eb                                      bl #0x31f5e8
0032c890  00 00 50 e3                                      cmp r0, #0
0032c894  1f ff ff 1a                                      bne #0x32c518
0032c898  00 00 5a e3                                      cmp sl, #0
0032c89c  05 00 00 0a                                      beq #0x32c8b8
0032c8a0  44 31 da e5                                      ldrb r3, [sl, #0x144]
0032c8a4  00 00 53 e3                                      cmp r3, #0
0032c8a8  1a ff ff 0a                                      beq #0x32c518
0032c8ac  a8 31 da e5                                      ldrb r3, [sl, #0x1a8]
0032c8b0  00 00 53 e3                                      cmp r3, #0
0032c8b4  17 ff ff 1a                                      bne #0x32c518
0032c8b8  0b 30 94 e7                                      ldr r3, [r4, fp]
0032c8bc  e4 a3 9f e5                                      ldr sl, [pc, #0x3e4]
0032c8c0  01 90 a0 e3                                      mov sb, #1
0032c8c4  10 30 93 e5                                      ldr r3, [r3, #0x10]
0032c8c8  0a a0 8f e0                                      add sl, pc, sl
0032c8cc  0a 00 a0 e1                                      mov r0, sl
0032c8d0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0032c8d4  0c 30 8d e5                                      str r3, [sp, #0xc]
0032c8d8  75 9b ff eb                                      bl #0x3136b4
0032c8dc  dd bd 00 eb                                      bl #0x35c058
0032c8e0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0032c8e4  0c bf 00 eb                                      bl #0x35c51c
0032c8e8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0032c8ec  07 00 a0 e1                                      mov r0, r7
0032c8f0  50 92 c3 e5                                      strb sb, [r3, #0x250]
0032c8f4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0032c8f8  00 30 92 e5                                      ldr r3, [r2]
0032c8fc  04 30 8d e5                                      str r3, [sp, #4]
0032c900  17 88 ff eb                                      bl #0x30e964
0032c904  00 20 a0 e3                                      mov r2, #0
0032c908  00 10 a0 e1                                      mov r1, r0
0032c90c  04 30 9d e5                                      ldr r3, [sp, #4]
0032c910  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0032c914  0f e0 a0 e1                                      mov lr, pc
0032c918  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0032c91c  a9 90 c5 e5                                      strb sb, [r5, #0xa9]
0032c920  0a 00 a0 e1                                      mov r0, sl
0032c924  63 9b ff eb                                      bl #0x3136b8
0032c928  fa fe ff ea                                      b #0x32c518
0032c92c  4c 70 8d e2                                      add r7, sp, #0x4c
0032c930  08 00 a0 e1                                      mov r0, r8
0032c934  d3 2b 00 eb                                      bl #0x337888
0032c938  06 10 a0 e1                                      mov r1, r6
0032c93c  10 20 8d e2                                      add r2, sp, #0x10
0032c940  07 00 a0 e1                                      mov r0, r7
0032c944  e8 9d ff eb                                      bl #0x3140ec
0032c948  07 10 a0 e1                                      mov r1, r7
0032c94c  00 20 a0 e3                                      mov r2, #0
0032c950  08 00 a0 e1                                      mov r0, r8
0032c954  20 2d 00 eb                                      bl #0x337ddc
0032c958  07 00 a0 e1                                      mov r0, r7
0032c95c  12 9c ff eb                                      bl #0x3139ac
0032c960  05 00 a0 e1                                      mov r0, r5
0032c964  0a cb ff eb                                      bl #0x31f594
0032c968  00 60 50 e2                                      subs r6, r0, #0
0032c96c  9c ff ff 0a                                      beq #0x32c7e4
0032c970  0b 30 94 e7                                      ldr r3, [r4, fp]
0032c974  30 13 9f e5                                      ldr r1, [pc, #0x330]
0032c978  30 23 9f e5                                      ldr r2, [pc, #0x330]
0032c97c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0032c980  01 10 8f e0                                      add r1, pc, r1
0032c984  02 20 8f e0                                      add r2, pc, r2
0032c988  93 60 06 eb                                      bl #0x4c4bdc
0032c98c  00 10 a0 e1                                      mov r1, r0
0032c990  06 00 a0 e1                                      mov r0, r6
0032c994  63 0b 03 eb                                      bl #0x3ef728
0032c998  91 ff ff ea                                      b #0x32c7e4
0032c99c  7c 80 8d e2                                      add r8, sp, #0x7c
0032c9a0  0a 00 a0 e1                                      mov r0, sl
0032c9a4  b7 2b 00 eb                                      bl #0x337888
0032c9a8  07 10 a0 e1                                      mov r1, r7
0032c9ac  18 20 8d e2                                      add r2, sp, #0x18
0032c9b0  08 00 a0 e1                                      mov r0, r8
0032c9b4  cc 9d ff eb                                      bl #0x3140ec
0032c9b8  08 10 a0 e1                                      mov r1, r8
0032c9bc  00 20 a0 e3                                      mov r2, #0
0032c9c0  0a 00 a0 e1                                      mov r0, sl
0032c9c4  04 2d 00 eb                                      bl #0x337ddc
0032c9c8  08 00 a0 e1                                      mov r0, r8
0032c9cc  f6 9b ff eb                                      bl #0x3139ac
0032c9d0  05 00 a0 e1                                      mov r0, r5
0032c9d4  ee ca ff eb                                      bl #0x31f594
0032c9d8  00 00 50 e3                                      cmp r0, #0
0032c9dc  6e ff ff 0a                                      beq #0x32c79c
0032c9e0  00 10 e0 e3                                      mvn r1, #0
0032c9e4  4f 0b 03 eb                                      bl #0x3ef728
0032c9e8  6b ff ff ea                                      b #0x32c79c
0032c9ec  0b 30 94 e7                                      ldr r3, [r4, fp]
0032c9f0  bc 22 9f e5                                      ldr r2, [pc, #0x2bc]
0032c9f4  00 10 a0 e3                                      mov r1, #0
0032c9f8  10 30 93 e5                                      ldr r3, [r3, #0x10]
0032c9fc  02 20 94 e7                                      ldr r2, [r4, r2]
0032ca00  ac 80 8d e2                                      add r8, sp, #0xac
0032ca04  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0032ca08  04 00 93 e5                                      ldr r0, [r3, #4]
0032ca0c  4a 8f 07 eb                                      bl #0x51073c
0032ca10  0a 00 a0 e1                                      mov r0, sl
0032ca14  9b 2b 00 eb                                      bl #0x337888
0032ca18  07 10 a0 e1                                      mov r1, r7
0032ca1c  20 20 8d e2                                      add r2, sp, #0x20
0032ca20  08 00 a0 e1                                      mov r0, r8
0032ca24  b0 9d ff eb                                      bl #0x3140ec
0032ca28  0a 00 a0 e1                                      mov r0, sl
0032ca2c  08 10 a0 e1                                      mov r1, r8
0032ca30  00 20 a0 e3                                      mov r2, #0
0032ca34  e8 2c 00 eb                                      bl #0x337ddc
0032ca38  08 00 a0 e1                                      mov r0, r8
0032ca3c  da 9b ff eb                                      bl #0x3139ac
0032ca40  43 ff ff ea                                      b #0x32c754
0032ca44  0b 30 94 e7                                      ldr r3, [r4, fp]
0032ca48  68 22 9f e5                                      ldr r2, [pc, #0x268]
0032ca4c  00 10 a0 e3                                      mov r1, #0
0032ca50  10 30 93 e5                                      ldr r3, [r3, #0x10]
0032ca54  02 20 94 e7                                      ldr r2, [r4, r2]
0032ca58  dc 80 8d e2                                      add r8, sp, #0xdc
0032ca5c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0032ca60  04 00 93 e5                                      ldr r0, [r3, #4]
0032ca64  56 87 07 eb                                      bl #0x50e7c4
0032ca68  0a 00 a0 e1                                      mov r0, sl
0032ca6c  85 2b 00 eb                                      bl #0x337888
0032ca70  07 10 a0 e1                                      mov r1, r7
0032ca74  28 20 8d e2                                      add r2, sp, #0x28
0032ca78  08 00 a0 e1                                      mov r0, r8
0032ca7c  9a 9d ff eb                                      bl #0x3140ec
0032ca80  0a 00 a0 e1                                      mov r0, sl
0032ca84  08 10 a0 e1                                      mov r1, r8
0032ca88  00 20 a0 e3                                      mov r2, #0
0032ca8c  d2 2c 00 eb                                      bl #0x337ddc
0032ca90  08 00 a0 e1                                      mov r0, r8
0032ca94  c4 9b ff eb                                      bl #0x3139ac
0032ca98  1b ff ff ea                                      b #0x32c70c
0032ca9c  0b 30 94 e7                                      ldr r3, [r4, fp]
0032caa0  43 8f 8d e2                                      add r8, sp, #0x10c
0032caa4  38 00 93 e5                                      ldr r0, [r3, #0x38]
0032caa8  15 4e 00 eb                                      bl #0x340304
0032caac  0a 00 a0 e1                                      mov r0, sl
0032cab0  74 2b 00 eb                                      bl #0x337888
0032cab4  07 10 a0 e1                                      mov r1, r7
0032cab8  30 20 8d e2                                      add r2, sp, #0x30
0032cabc  08 00 a0 e1                                      mov r0, r8
0032cac0  89 9d ff eb                                      bl #0x3140ec
0032cac4  0a 00 a0 e1                                      mov r0, sl
0032cac8  08 10 a0 e1                                      mov r1, r8
0032cacc  00 20 a0 e3                                      mov r2, #0
0032cad0  c1 2c 00 eb                                      bl #0x337ddc
0032cad4  08 00 a0 e1                                      mov r0, r8
0032cad8  b3 9b ff eb                                      bl #0x3139ac
0032cadc  f8 fe ff ea                                      b #0x32c6c4
0032cae0  f4 85 07 eb                                      bl #0x50e2b8
0032cae4  4f 8f 8d e2                                      add r8, sp, #0x13c
0032cae8  ce 85 07 eb                                      bl #0x50e228
0032caec  0a 00 a0 e1                                      mov r0, sl
0032caf0  64 2b 00 eb                                      bl #0x337888
0032caf4  07 10 a0 e1                                      mov r1, r7
0032caf8  38 20 8d e2                                      add r2, sp, #0x38
0032cafc  08 00 a0 e1                                      mov r0, r8
0032cb00  79 9d ff eb                                      bl #0x3140ec
0032cb04  0a 00 a0 e1                                      mov r0, sl
0032cb08  08 10 a0 e1                                      mov r1, r8
0032cb0c  00 20 a0 e3                                      mov r2, #0
0032cb10  b1 2c 00 eb                                      bl #0x337ddc
0032cb14  08 00 a0 e1                                      mov r0, r8
0032cb18  a3 9b ff eb                                      bl #0x3139ac
0032cb1c  d6 fe ff ea                                      b #0x32c67c
0032cb20  c0 85 07 eb                                      bl #0x50e228
0032cb24  5b 8f 8d e2                                      add r8, sp, #0x16c
0032cb28  0a 00 a0 e1                                      mov r0, sl
0032cb2c  55 2b 00 eb                                      bl #0x337888
0032cb30  07 10 a0 e1                                      mov r1, r7
0032cb34  40 20 8d e2                                      add r2, sp, #0x40
0032cb38  08 00 a0 e1                                      mov r0, r8
0032cb3c  6a 9d ff eb                                      bl #0x3140ec
0032cb40  0a 00 a0 e1                                      mov r0, sl
0032cb44  08 10 a0 e1                                      mov r1, r8
0032cb48  00 20 a0 e3                                      mov r2, #0
0032cb4c  a2 2c 00 eb                                      bl #0x337ddc
0032cb50  08 00 a0 e1                                      mov r0, r8
0032cb54  94 9b ff eb                                      bl #0x3139ac
0032cb58  b5 fe ff ea                                      b #0x32c634
0032cb5c  00 30 a0 e3                                      mov r3, #0
0032cb60  aa 30 c5 e5                                      strb r3, [r5, #0xaa]
0032cb64  05 00 a0 e1                                      mov r0, r5
0032cb68  03 10 a0 e3                                      mov r1, #3
0032cb6c  a0 fd ff eb                                      bl #0x32c1f4
0032cb70  54 fe ff ea                                      b #0x32c4c8
0032cb74  df ac ff eb                                      bl #0x317ef8
0032cb78  6e fe ff ea                                      b #0x32c538
0032cb7c  00 30 a0 e3                                      mov r3, #0
0032cb80  10 00 a0 e3                                      mov r0, #0x10
0032cb84  04 30 8d e5                                      str r3, [sp, #4]
0032cb88  31 8e ff eb                                      bl #0x310454
0032cb8c  04 30 9d e5                                      ldr r3, [sp, #4]
0032cb90  42 b4 a0 e3                                      mov fp, #0x42000000
0032cb94  32 b7 8b e2                                      add fp, fp, #0xc80000
0032cb98  00 30 80 e5                                      str r3, [r0]
0032cb9c  04 30 80 e5                                      str r3, [r0, #4]
0032cba0  08 b0 80 e5                                      str fp, [r0, #8]
0032cba4  0c b0 80 e5                                      str fp, [r0, #0xc]
0032cba8  00 90 a0 e1                                      mov sb, r0
0032cbac  10 00 a0 e3                                      mov r0, #0x10
0032cbb0  04 30 8d e5                                      str r3, [sp, #4]
0032cbb4  26 8e ff eb                                      bl #0x310454
0032cbb8  04 30 9d e5                                      ldr r3, [sp, #4]
0032cbbc  08 b0 80 e5                                      str fp, [r0, #8]
0032cbc0  04 b0 80 e5                                      str fp, [r0, #4]
0032cbc4  00 30 80 e5                                      str r3, [r0]
0032cbc8  43 34 a0 e3                                      mov r3, #0x43000000
0032cbcc  12 37 83 e2                                      add r3, r3, #0x480000
0032cbd0  0c 30 80 e5                                      str r3, [r0, #0xc]
0032cbd4  20 30 95 e5                                      ldr r3, [r5, #0x20]
0032cbd8  00 a0 a0 e1                                      mov sl, r0
0032cbdc  09 10 a0 e1                                      mov r1, sb
0032cbe0  03 00 a0 e1                                      mov r0, r3
0032cbe4  00 30 93 e5                                      ldr r3, [r3]
0032cbe8  0f e0 a0 e1                                      mov lr, pc
0032cbec  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0032cbf0  00 00 50 e3                                      cmp r0, #0
0032cbf4  10 00 00 1a                                      bne #0x32cc3c
0032cbf8  20 30 95 e5                                      ldr r3, [r5, #0x20]
0032cbfc  0a 10 a0 e1                                      mov r1, sl
0032cc00  03 00 a0 e1                                      mov r0, r3
0032cc04  00 30 93 e5                                      ldr r3, [r3]
0032cc08  0f e0 a0 e1                                      mov lr, pc
0032cc0c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0032cc10  00 00 50 e3                                      cmp r0, #0
0032cc14  05 ff ff 0a                                      beq #0x32c830
0032cc18  5c b0 9f e5                                      ldr fp, [pc, #0x5c]
0032cc1c  98 10 9f e5                                      ldr r1, [pc, #0x98]
0032cc20  0b 30 94 e7                                      ldr r3, [r4, fp]
0032cc24  01 10 8f e0                                      add r1, pc, r1
0032cc28  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
0032cc2c  51 02 05 eb                                      bl #0x46d578
0032cc30  2b fe ff ea                                      b #0x32c4e4
0032cc34  be 9e ff eb                                      bl #0x314734
0032cc38  3e fe ff ea                                      b #0x32c538
0032cc3c  38 b0 9f e5                                      ldr fp, [pc, #0x38]
0032cc40  78 10 9f e5                                      ldr r1, [pc, #0x78]
0032cc44  0b 30 94 e7                                      ldr r3, [r4, fp]
0032cc48  01 10 8f e0                                      add r1, pc, r1
0032cc4c  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
0032cc50  48 02 05 eb                                      bl #0x46d578
0032cc54  22 fe ff ea                                      b #0x32c4e4
0032cc58  ac 85 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032cc5c  48 86 66 00 ac 40 00 00 54 2d 59 00 74 14 00 00  .byte 0x48, 0x86, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x2d, 0x59, 0x00, 0x74, 0x14, 0x00, 0x00
0032cc6c  84 08 00 00 2c 2d 59 00 b0 33 00 00 50 38 00 00  .byte 0x84, 0x08, 0x00, 0x00, 0x2c, 0x2d, 0x59, 0x00, 0xb0, 0x33, 0x00, 0x00, 0x50, 0x38, 0x00, 0x00
0032cc7c  f4 37 00 00 a0 2f 00 00 a4 0d 00 00 10 2c 59 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xa0, 0x2f, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0x10, 0x2c, 0x59, 0x00
0032cc8c  e4 2b 59 00 bc 2b 59 00 8c 2b 59 00 64 2b 59 00  .byte 0xe4, 0x2b, 0x59, 0x00, 0xbc, 0x2b, 0x59, 0x00, 0x8c, 0x2b, 0x59, 0x00, 0x64, 0x2b, 0x59, 0x00
0032cc9c  34 2b 59 00 0c 2b 59 00 bc 29 59 00 28 29 59 00  .byte 0x34, 0x2b, 0x59, 0x00, 0x0c, 0x2b, 0x59, 0x00, 0xbc, 0x29, 0x59, 0x00, 0x28, 0x29, 0x59, 0x00
0032ccac  58 29 59 00 64 29 59 00 0c 2e 00 00 a4 16 00 00  .byte 0x58, 0x29, 0x59, 0x00, 0x64, 0x29, 0x59, 0x00, 0x0c, 0x2e, 0x00, 0x00, 0xa4, 0x16, 0x00, 0x00
0032ccbc  c4 25 59 00 90 25 59 00                          .byte 0xc4, 0x25, 0x59, 0x00, 0x90, 0x25, 0x59, 0x00

; FUNCTION 0x0032ccc4, declared_size=772, range_size=772, mode=arm
; class-group: Application
; alias: _ZN11Application6UpdateEv
; demangled: Application::Update()
; decoder-mode: arm
0032ccc4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0032ccc8  d4 52 9f e5                                      ldr r5, [pc, #0x2d4]
0032cccc  d4 62 9f e5                                      ldr r6, [pc, #0x2d4]
0032ccd0  a4 20 d0 e5                                      ldrb r2, [r0, #0xa4]
0032ccd4  05 50 8f e0                                      add r5, pc, r5
0032ccd8  06 30 95 e7                                      ldr r3, [r5, r6]
0032ccdc  2c d0 4d e2                                      sub sp, sp, #0x2c
0032cce0  00 00 52 e3                                      cmp r2, #0
0032cce4  00 30 93 e5                                      ldr r3, [r3]
0032cce8  00 40 a0 e1                                      mov r4, r0
0032ccec  24 30 8d e5                                      str r3, [sp, #0x24]
0032ccf0  06 00 00 0a                                      beq #0x32cd10
0032ccf4  06 30 95 e7                                      ldr r3, [r5, r6]
0032ccf8  24 20 9d e5                                      ldr r2, [sp, #0x24]
0032ccfc  00 30 93 e5                                      ldr r3, [r3]
0032cd00  03 00 52 e1                                      cmp r2, r3
0032cd04  a5 00 00 1a                                      bne #0x32cfa0
0032cd08  2c d0 8d e2                                      add sp, sp, #0x2c
0032cd0c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0032cd10  9f 42 13 eb                                      bl #0x7fd794
0032cd14  05 30 d0 e5                                      ldrb r3, [r0, #5]
0032cd18  00 00 53 e3                                      cmp r3, #0
0032cd1c  61 00 00 1a                                      bne #0x32cea8
0032cd20  7a 30 d4 e5                                      ldrb r3, [r4, #0x7a]
0032cd24  00 00 53 e3                                      cmp r3, #0
0032cd28  00 30 a0 13                                      movne r3, #0
0032cd2c  7a 30 c4 15                                      strbne r3, [r4, #0x7a]
0032cd30  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032cd34  20 30 93 e5                                      ldr r3, [r3, #0x20]
0032cd38  03 00 a0 e1                                      mov r0, r3
0032cd3c  00 30 93 e5                                      ldr r3, [r3]
0032cd40  0f e0 a0 e1                                      mov lr, pc
0032cd44  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0032cd48  70 30 94 e5                                      ldr r3, [r4, #0x70]
0032cd4c  00 70 a0 e1                                      mov r7, r0
0032cd50  00 30 63 e0                                      rsb r3, r3, r0
0032cd54  7d 0e 53 e3                                      cmp r3, #0x7d0
0032cd58  68 00 00 8a                                      bhi #0x32cf00
0032cd5c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0032cd60  00 00 50 e3                                      cmp r0, #0
0032cd64  05 00 00 0a                                      beq #0x32cd80
0032cd68  3c 32 9f e5                                      ldr r3, [pc, #0x23c]
0032cd6c  03 30 8f e0                                      add r3, pc, r3
0032cd70  04 20 93 e5                                      ldr r2, [r3, #4]
0032cd74  07 20 62 e0                                      rsb r2, r2, r7
0032cd78  fa 0e 52 e3                                      cmp r2, #0xfa0
0032cd7c  46 00 00 ca                                      bgt #0x32ce9c
0032cd80  70 70 84 e5                                      str r7, [r4, #0x70]
0032cd84  82 42 13 eb                                      bl #0x7fd794
0032cd88  05 30 d0 e5                                      ldrb r3, [r0, #5]
0032cd8c  00 00 53 e3                                      cmp r3, #0
0032cd90  4a 00 00 1a                                      bne #0x32cec0
0032cd94  20 00 94 e5                                      ldr r0, [r4, #0x20]
0032cd98  f2 3d 00 eb                                      bl #0x33c568
0032cd9c  04 00 a0 e1                                      mov r0, r4
0032cda0  ff cf ff eb                                      bl #0x320da4
0032cda4  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
0032cda8  4c 85 ff eb                                      bl #0x30e2e0
0032cdac  00 70 a0 e1                                      mov r7, r0
0032cdb0  00 10 a0 e1                                      mov r1, r0
0032cdb4  11 03 a0 e3                                      mov r0, #0x44000000
0032cdb8  7a 08 80 e2                                      add r0, r0, #0x7a0000
0032cdbc  b4 87 ff eb                                      bl #0x30ec94
0032cdc0  e8 31 9f e5                                      ldr r3, [pc, #0x1e8]
0032cdc4  07 10 a0 e1                                      mov r1, r7
0032cdc8  00 a0 a0 e1                                      mov sl, r0
0032cdcc  03 80 95 e7                                      ldr r8, [r5, r3]
0032cdd0  0c 70 8d e2                                      add r7, sp, #0xc
0032cdd4  08 00 a0 e1                                      mov r0, r8
0032cdd8  67 92 ff eb                                      bl #0x31177c
0032cddc  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
0032cde0  04 00 a0 e1                                      mov r0, r4
0032cde4  93 fd ff eb                                      bl #0x32c438
0032cde8  04 00 a0 e1                                      mov r0, r4
0032cdec  fd f7 ff eb                                      bl #0x32ade8
0032cdf0  bc 11 9f e5                                      ldr r1, [pc, #0x1bc]
0032cdf4  08 20 8d e2                                      add r2, sp, #8
0032cdf8  07 00 a0 e1                                      mov r0, r7
0032cdfc  01 10 8f e0                                      add r1, pc, r1
0032ce00  b9 9c ff eb                                      bl #0x3140ec
0032ce04  42 c4 a0 e3                                      mov ip, #0x42000000
0032ce08  00 30 a0 e3                                      mov r3, #0
0032ce0c  07 c6 8c e2                                      add ip, ip, #0x700000
0032ce10  0a 20 a0 e1                                      mov r2, sl
0032ce14  07 10 a0 e1                                      mov r1, r7
0032ce18  08 00 a0 e1                                      mov r0, r8
0032ce1c  00 c0 8d e5                                      str ip, [sp]
0032ce20  43 96 ff eb                                      bl #0x312734
0032ce24  07 00 a0 e1                                      mov r0, r7
0032ce28  df 9a ff eb                                      bl #0x3139ac
0032ce2c  58 42 13 eb                                      bl #0x7fd794
0032ce30  05 30 d0 e5                                      ldrb r3, [r0, #5]
0032ce34  00 00 53 e3                                      cmp r3, #0
0032ce38  1d 00 00 1a                                      bne #0x32ceb4
0032ce3c  42 52 01 eb                                      bl #0x38174c
0032ce40  00 00 50 e3                                      cmp r0, #0
0032ce44  aa ff ff 0a                                      beq #0x32ccf4
0032ce48  68 31 9f e5                                      ldr r3, [pc, #0x168]
0032ce4c  03 30 8f e0                                      add r3, pc, r3
0032ce50  08 20 93 e5                                      ldr r2, [r3, #8]
0032ce54  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0032ce58  01 20 82 e2                                      add r2, r2, #1
0032ce5c  08 20 83 e5                                      str r2, [r3, #8]
0032ce60  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
0032ce64  0a 00 52 e3                                      cmp r2, #0xa
0032ce68  01 20 80 e0                                      add r2, r0, r1
0032ce6c  0c 20 83 e5                                      str r2, [r3, #0xc]
0032ce70  26 00 00 0a                                      beq #0x32cf10
0032ce74  10 10 93 e5                                      ldr r1, [r3, #0x10]
0032ce78  00 00 51 e3                                      cmp r1, #0
0032ce7c  9c ff ff da                                      ble #0x32ccf4
0032ce80  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032ce84  00 20 a0 e3                                      mov r2, #0
0032ce88  03 00 a0 e1                                      mov r0, r3
0032ce8c  00 30 93 e5                                      ldr r3, [r3]
0032ce90  0f e0 a0 e1                                      mov lr, pc
0032ce94  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0032ce98  95 ff ff ea                                      b #0x32ccf4
0032ce9c  04 70 83 e5                                      str r7, [r3, #4]
0032cea0  96 30 00 eb                                      bl #0x339100
0032cea4  b5 ff ff ea                                      b #0x32cd80
0032cea8  39 42 13 eb                                      bl #0x7fd794
0032ceac  98 42 13 eb                                      bl #0x7fd914
0032ceb0  9a ff ff ea                                      b #0x32cd20
0032ceb4  36 42 13 eb                                      bl #0x7fd794
0032ceb8  dd 41 13 eb                                      bl #0x7fd634
0032cebc  de ff ff ea                                      b #0x32ce3c
0032cec0  f4 70 9f e5                                      ldr r7, [pc, #0xf4]
0032cec4  07 70 8f e0                                      add r7, pc, r7
0032cec8  07 00 a0 e1                                      mov r0, r7
0032cecc  f8 99 ff eb                                      bl #0x3136b4
0032ced0  2f 42 13 eb                                      bl #0x7fd794
0032ced4  00 80 a0 e1                                      mov r8, r0
0032ced8  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
0032cedc  ff 84 ff eb                                      bl #0x30e2e0
0032cee0  00 10 a0 e1                                      mov r1, r0
0032cee4  08 00 a0 e1                                      mov r0, r8
0032cee8  11 e0 13 eb                                      bl #0x824f34
0032ceec  e9 cf ff eb                                      bl #0x320e98
0032cef0  29 cd 05 eb                                      bl #0x4a039c
0032cef4  07 00 a0 e1                                      mov r0, r7
0032cef8  ee 99 ff eb                                      bl #0x3136b8
0032cefc  a4 ff ff ea                                      b #0x32cd94
0032cf00  70 00 84 e5                                      str r0, [r4, #0x70]
0032cf04  04 00 a0 e1                                      mov r0, r4
0032cf08  a5 cf ff eb                                      bl #0x320da4
0032cf0c  78 ff ff ea                                      b #0x32ccf4
0032cf10  67 16 06 e3                                      movw r1, #0x6667
0032cf14  66 16 46 e3                                      movt r1, #0x6666
0032cf18  91 02 c1 e0                                      smull r0, r1, r1, r2
0032cf1c  10 00 93 e5                                      ldr r0, [r3, #0x10]
0032cf20  c2 2f a0 e1                                      asr r2, r2, #0x1f
0032cf24  41 11 62 e0                                      rsb r1, r2, r1, asr #2
0032cf28  01 10 60 e0                                      rsb r1, r0, r1
0032cf2c  0f 00 51 e3                                      cmp r1, #0xf
0032cf30  10 10 61 d2                                      rsble r1, r1, #0x10
0032cf34  10 10 83 d5                                      strle r1, [r3, #0x10]
0032cf38  0d 00 00 da                                      ble #0x32cf74
0032cf3c  20 00 51 e3                                      cmp r1, #0x20
0032cf40  21 10 61 d2                                      rsble r1, r1, #0x21
0032cf44  10 10 83 d5                                      strle r1, [r3, #0x10]
0032cf48  09 00 00 da                                      ble #0x32cf74
0032cf4c  31 00 51 e3                                      cmp r1, #0x31
0032cf50  32 10 61 d2                                      rsble r1, r1, #0x32
0032cf54  10 10 83 d5                                      strle r1, [r3, #0x10]
0032cf58  05 00 00 da                                      ble #0x32cf74
0032cf5c  00 20 a0 e3                                      mov r2, #0
0032cf60  0c 20 83 e5                                      str r2, [r3, #0xc]
0032cf64  10 20 83 e5                                      str r2, [r3, #0x10]
0032cf68  08 20 83 e5                                      str r2, [r3, #8]
0032cf6c  05 10 a0 e3                                      mov r1, #5
0032cf70  06 00 00 ea                                      b #0x32cf90
0032cf74  44 30 9f e5                                      ldr r3, [pc, #0x44]
0032cf78  00 20 a0 e3                                      mov r2, #0
0032cf7c  04 00 51 e3                                      cmp r1, #4
0032cf80  03 30 8f e0                                      add r3, pc, r3
0032cf84  0c 20 83 e5                                      str r2, [r3, #0xc]
0032cf88  08 20 83 e5                                      str r2, [r3, #8]
0032cf8c  f6 ff ff da                                      ble #0x32cf6c
0032cf90  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0032cf94  03 30 8f e0                                      add r3, pc, r3
0032cf98  10 10 83 e5                                      str r1, [r3, #0x10]
0032cf9c  b7 ff ff ea                                      b #0x32ce80
0032cfa0  da 84 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032cfa4  bc 7d 66 00 ac 40 00 00 88 2c 67 00 fc 0c 00 00  .byte 0xbc, 0x7d, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0x2c, 0x67, 0x00, 0xfc, 0x0c, 0x00, 0x00
0032cfb4  04 25 59 00 a8 2b 67 00 2c 24 59 00 74 2a 67 00  .byte 0x04, 0x25, 0x59, 0x00, 0xa8, 0x2b, 0x67, 0x00, 0x2c, 0x24, 0x59, 0x00, 0x74, 0x2a, 0x67, 0x00
0032cfc4  60 2a 67 00                                      .byte 0x60, 0x2a, 0x67, 0x00

; FUNCTION 0x0032d79c, declared_size=484, range_size=484, mode=arm
; class-group: Application
; alias: _ZN11ApplicationC1Ev
; demangled: Application::Application()
; decoder-mode: arm
0032d79c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032d7a0  bc 61 9f e5                                      ldr r6, [pc, #0x1bc]
0032d7a4  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
0032d7a8  00 20 a0 e1                                      mov r2, r0
0032d7ac  06 60 8f e0                                      add r6, pc, r6
0032d7b0  03 30 96 e7                                      ldr r3, [r6, r3]
0032d7b4  1e 10 a0 e3                                      mov r1, #0x1e
0032d7b8  00 40 a0 e1                                      mov r4, r0
0032d7bc  08 30 83 e2                                      add r3, r3, #8
0032d7c0  08 30 82 e4                                      str r3, [r2], #8
0032d7c4  6c 10 80 e5                                      str r1, [r0, #0x6c]
0032d7c8  fe 15 a0 e3                                      mov r1, #0x3f800000
0032d7cc  00 50 a0 e3                                      mov r5, #0
0032d7d0  9c 10 80 e5                                      str r1, [r0, #0x9c]
0032d7d4  01 70 a0 e3                                      mov r7, #1
0032d7d8  bc 30 80 e2                                      add r3, r0, #0xbc
0032d7dc  00 10 e0 e3                                      mvn r1, #0
0032d7e0  0c 20 80 e5                                      str r2, [r0, #0xc]
0032d7e4  08 20 80 e5                                      str r2, [r0, #8]
0032d7e8  a0 10 80 e5                                      str r1, [r0, #0xa0]
0032d7ec  03 00 a0 e1                                      mov r0, r3
0032d7f0  10 50 84 e5                                      str r5, [r4, #0x10]
0032d7f4  14 50 84 e5                                      str r5, [r4, #0x14]
0032d7f8  18 50 84 e5                                      str r5, [r4, #0x18]
0032d7fc  1c 50 84 e5                                      str r5, [r4, #0x1c]
0032d800  20 50 84 e5                                      str r5, [r4, #0x20]
0032d804  24 50 84 e5                                      str r5, [r4, #0x24]
0032d808  28 50 84 e5                                      str r5, [r4, #0x28]
0032d80c  2c 50 84 e5                                      str r5, [r4, #0x2c]
0032d810  30 50 84 e5                                      str r5, [r4, #0x30]
0032d814  34 50 84 e5                                      str r5, [r4, #0x34]
0032d818  38 50 84 e5                                      str r5, [r4, #0x38]
0032d81c  3c 50 84 e5                                      str r5, [r4, #0x3c]
0032d820  40 50 84 e5                                      str r5, [r4, #0x40]
0032d824  44 50 84 e5                                      str r5, [r4, #0x44]
0032d828  48 50 84 e5                                      str r5, [r4, #0x48]
0032d82c  4c 50 84 e5                                      str r5, [r4, #0x4c]
0032d830  50 50 84 e5                                      str r5, [r4, #0x50]
0032d834  74 50 84 e5                                      str r5, [r4, #0x74]
0032d838  78 50 c4 e5                                      strb r5, [r4, #0x78]
0032d83c  79 50 c4 e5                                      strb r5, [r4, #0x79]
0032d840  7a 50 c4 e5                                      strb r5, [r4, #0x7a]
0032d844  88 50 84 e5                                      str r5, [r4, #0x88]
0032d848  a4 50 c4 e5                                      strb r5, [r4, #0xa4]
0032d84c  a5 50 c4 e5                                      strb r5, [r4, #0xa5]
0032d850  a6 50 c4 e5                                      strb r5, [r4, #0xa6]
0032d854  10 10 a0 e3                                      mov r1, #0x10
0032d858  a7 50 c4 e5                                      strb r5, [r4, #0xa7]
0032d85c  a8 50 c4 e5                                      strb r5, [r4, #0xa8]
0032d860  a9 50 c4 e5                                      strb r5, [r4, #0xa9]
0032d864  aa 50 c4 e5                                      strb r5, [r4, #0xaa]
0032d868  ad 50 c4 e5                                      strb r5, [r4, #0xad]
0032d86c  cc 30 84 e5                                      str r3, [r4, #0xcc]
0032d870  d0 30 84 e5                                      str r3, [r4, #0xd0]
0032d874  ab 70 c4 e5                                      strb r7, [r4, #0xab]
0032d878  b4 70 c4 e5                                      strb r7, [r4, #0xb4]
0032d87c  7e 8f ff eb                                      bl #0x31167c
0032d880  cc 20 94 e5                                      ldr r2, [r4, #0xcc]
0032d884  d4 30 84 e2                                      add r3, r4, #0xd4
0032d888  03 00 a0 e1                                      mov r0, r3
0032d88c  00 50 c2 e5                                      strb r5, [r2]
0032d890  10 10 a0 e3                                      mov r1, #0x10
0032d894  e4 30 84 e5                                      str r3, [r4, #0xe4]
0032d898  e8 30 84 e5                                      str r3, [r4, #0xe8]
0032d89c  76 8f ff eb                                      bl #0x31167c
0032d8a0  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0032d8a4  e4 20 94 e5                                      ldr r2, [r4, #0xe4]
0032d8a8  10 00 a0 e3                                      mov r0, #0x10
0032d8ac  03 30 96 e7                                      ldr r3, [r6, r3]
0032d8b0  00 50 c2 e5                                      strb r5, [r2]
0032d8b4  ee 50 c4 e5                                      strb r5, [r4, #0xee]
0032d8b8  ed 50 c4 e5                                      strb r5, [r4, #0xed]
0032d8bc  0e 51 c4 e5                                      strb r5, [r4, #0x10e]
0032d8c0  0f 71 c4 e5                                      strb r7, [r4, #0x10f]
0032d8c4  00 70 c3 e5                                      strb r7, [r3]
0032d8c8  e1 8a ff eb                                      bl #0x310454
0032d8cc  07 10 a0 e1                                      mov r1, r7
0032d8d0  00 50 a0 e1                                      mov r5, r0
0032d8d4  5a a9 ff eb                                      bl #0x317e44
0032d8d8  04 50 84 e5                                      str r5, [r4, #4]
0032d8dc  10 00 a0 e3                                      mov r0, #0x10
0032d8e0  db 8a ff eb                                      bl #0x310454
0032d8e4  02 10 a0 e3                                      mov r1, #2
0032d8e8  00 50 a0 e1                                      mov r5, r0
0032d8ec  54 a9 ff eb                                      bl #0x317e44
0032d8f0  78 30 9f e5                                      ldr r3, [pc, #0x78]
0032d8f4  10 00 a0 e3                                      mov r0, #0x10
0032d8f8  03 30 96 e7                                      ldr r3, [r6, r3]
0032d8fc  00 50 83 e5                                      str r5, [r3]
0032d900  d3 8a ff eb                                      bl #0x310454
0032d904  03 10 a0 e3                                      mov r1, #3
0032d908  00 50 a0 e1                                      mov r5, r0
0032d90c  4c a9 ff eb                                      bl #0x317e44
0032d910  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0032d914  10 00 a0 e3                                      mov r0, #0x10
0032d918  03 30 96 e7                                      ldr r3, [r6, r3]
0032d91c  00 50 83 e5                                      str r5, [r3]
0032d920  cb 8a ff eb                                      bl #0x310454
0032d924  04 10 a0 e3                                      mov r1, #4
0032d928  00 50 a0 e1                                      mov r5, r0
0032d92c  44 a9 ff eb                                      bl #0x317e44
0032d930  40 30 9f e5                                      ldr r3, [pc, #0x40]
0032d934  10 00 a0 e3                                      mov r0, #0x10
0032d938  03 30 96 e7                                      ldr r3, [r6, r3]
0032d93c  00 50 83 e5                                      str r5, [r3]
0032d940  c3 8a ff eb                                      bl #0x310454
0032d944  05 10 a0 e3                                      mov r1, #5
0032d948  00 50 a0 e1                                      mov r5, r0
0032d94c  3c a9 ff eb                                      bl #0x317e44
0032d950  24 30 9f e5                                      ldr r3, [pc, #0x24]
0032d954  04 00 a0 e1                                      mov r0, r4
0032d958  03 30 96 e7                                      ldr r3, [r6, r3]
0032d95c  00 50 83 e5                                      str r5, [r3]
0032d960  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0032d964  e4 72 66 00 cc 0d 00 00 58 3d 00 00 40 48 00 00  .byte 0xe4, 0x72, 0x66, 0x00, 0xcc, 0x0d, 0x00, 0x00, 0x58, 0x3d, 0x00, 0x00, 0x40, 0x48, 0x00, 0x00
0032d974  bc 0c 00 00 98 15 00 00 40 1d 00 00              .byte 0xbc, 0x0c, 0x00, 0x00, 0x98, 0x15, 0x00, 0x00, 0x40, 0x1d, 0x00, 0x00

; FUNCTION 0x0032d980, declared_size=484, range_size=484, mode=arm
; class-group: Application
; alias: _ZN11ApplicationC2Ev
; demangled: Application::Application()
; decoder-mode: arm
0032d980  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032d984  bc 61 9f e5                                      ldr r6, [pc, #0x1bc]
0032d988  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
0032d98c  00 20 a0 e1                                      mov r2, r0
0032d990  06 60 8f e0                                      add r6, pc, r6
0032d994  03 30 96 e7                                      ldr r3, [r6, r3]
0032d998  1e 10 a0 e3                                      mov r1, #0x1e
0032d99c  00 40 a0 e1                                      mov r4, r0
0032d9a0  08 30 83 e2                                      add r3, r3, #8
0032d9a4  08 30 82 e4                                      str r3, [r2], #8
0032d9a8  6c 10 80 e5                                      str r1, [r0, #0x6c]
0032d9ac  fe 15 a0 e3                                      mov r1, #0x3f800000
0032d9b0  00 50 a0 e3                                      mov r5, #0
0032d9b4  9c 10 80 e5                                      str r1, [r0, #0x9c]
0032d9b8  01 70 a0 e3                                      mov r7, #1
0032d9bc  bc 30 80 e2                                      add r3, r0, #0xbc
0032d9c0  00 10 e0 e3                                      mvn r1, #0
0032d9c4  0c 20 80 e5                                      str r2, [r0, #0xc]
0032d9c8  08 20 80 e5                                      str r2, [r0, #8]
0032d9cc  a0 10 80 e5                                      str r1, [r0, #0xa0]
0032d9d0  03 00 a0 e1                                      mov r0, r3
0032d9d4  10 50 84 e5                                      str r5, [r4, #0x10]
0032d9d8  14 50 84 e5                                      str r5, [r4, #0x14]
0032d9dc  18 50 84 e5                                      str r5, [r4, #0x18]
0032d9e0  1c 50 84 e5                                      str r5, [r4, #0x1c]
0032d9e4  20 50 84 e5                                      str r5, [r4, #0x20]
0032d9e8  24 50 84 e5                                      str r5, [r4, #0x24]
0032d9ec  28 50 84 e5                                      str r5, [r4, #0x28]
0032d9f0  2c 50 84 e5                                      str r5, [r4, #0x2c]
0032d9f4  30 50 84 e5                                      str r5, [r4, #0x30]
0032d9f8  34 50 84 e5                                      str r5, [r4, #0x34]
0032d9fc  38 50 84 e5                                      str r5, [r4, #0x38]
0032da00  3c 50 84 e5                                      str r5, [r4, #0x3c]
0032da04  40 50 84 e5                                      str r5, [r4, #0x40]
0032da08  44 50 84 e5                                      str r5, [r4, #0x44]
0032da0c  48 50 84 e5                                      str r5, [r4, #0x48]
0032da10  4c 50 84 e5                                      str r5, [r4, #0x4c]
0032da14  50 50 84 e5                                      str r5, [r4, #0x50]
0032da18  74 50 84 e5                                      str r5, [r4, #0x74]
0032da1c  78 50 c4 e5                                      strb r5, [r4, #0x78]
0032da20  79 50 c4 e5                                      strb r5, [r4, #0x79]
0032da24  7a 50 c4 e5                                      strb r5, [r4, #0x7a]
0032da28  88 50 84 e5                                      str r5, [r4, #0x88]
0032da2c  a4 50 c4 e5                                      strb r5, [r4, #0xa4]
0032da30  a5 50 c4 e5                                      strb r5, [r4, #0xa5]
0032da34  a6 50 c4 e5                                      strb r5, [r4, #0xa6]
0032da38  10 10 a0 e3                                      mov r1, #0x10
0032da3c  a7 50 c4 e5                                      strb r5, [r4, #0xa7]
0032da40  a8 50 c4 e5                                      strb r5, [r4, #0xa8]
0032da44  a9 50 c4 e5                                      strb r5, [r4, #0xa9]
0032da48  aa 50 c4 e5                                      strb r5, [r4, #0xaa]
0032da4c  ad 50 c4 e5                                      strb r5, [r4, #0xad]
0032da50  cc 30 84 e5                                      str r3, [r4, #0xcc]
0032da54  d0 30 84 e5                                      str r3, [r4, #0xd0]
0032da58  ab 70 c4 e5                                      strb r7, [r4, #0xab]
0032da5c  b4 70 c4 e5                                      strb r7, [r4, #0xb4]
0032da60  05 8f ff eb                                      bl #0x31167c
0032da64  cc 20 94 e5                                      ldr r2, [r4, #0xcc]
0032da68  d4 30 84 e2                                      add r3, r4, #0xd4
0032da6c  03 00 a0 e1                                      mov r0, r3
0032da70  00 50 c2 e5                                      strb r5, [r2]
0032da74  10 10 a0 e3                                      mov r1, #0x10
0032da78  e4 30 84 e5                                      str r3, [r4, #0xe4]
0032da7c  e8 30 84 e5                                      str r3, [r4, #0xe8]
0032da80  fd 8e ff eb                                      bl #0x31167c
0032da84  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0032da88  e4 20 94 e5                                      ldr r2, [r4, #0xe4]
0032da8c  10 00 a0 e3                                      mov r0, #0x10
0032da90  03 30 96 e7                                      ldr r3, [r6, r3]
0032da94  00 50 c2 e5                                      strb r5, [r2]
0032da98  ee 50 c4 e5                                      strb r5, [r4, #0xee]
0032da9c  ed 50 c4 e5                                      strb r5, [r4, #0xed]
0032daa0  0e 51 c4 e5                                      strb r5, [r4, #0x10e]
0032daa4  0f 71 c4 e5                                      strb r7, [r4, #0x10f]
0032daa8  00 70 c3 e5                                      strb r7, [r3]
0032daac  68 8a ff eb                                      bl #0x310454
0032dab0  07 10 a0 e1                                      mov r1, r7
0032dab4  00 50 a0 e1                                      mov r5, r0
0032dab8  e1 a8 ff eb                                      bl #0x317e44
0032dabc  04 50 84 e5                                      str r5, [r4, #4]
0032dac0  10 00 a0 e3                                      mov r0, #0x10
0032dac4  62 8a ff eb                                      bl #0x310454
0032dac8  02 10 a0 e3                                      mov r1, #2
0032dacc  00 50 a0 e1                                      mov r5, r0
0032dad0  db a8 ff eb                                      bl #0x317e44
0032dad4  78 30 9f e5                                      ldr r3, [pc, #0x78]
0032dad8  10 00 a0 e3                                      mov r0, #0x10
0032dadc  03 30 96 e7                                      ldr r3, [r6, r3]
0032dae0  00 50 83 e5                                      str r5, [r3]
0032dae4  5a 8a ff eb                                      bl #0x310454
0032dae8  03 10 a0 e3                                      mov r1, #3
0032daec  00 50 a0 e1                                      mov r5, r0
0032daf0  d3 a8 ff eb                                      bl #0x317e44
0032daf4  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0032daf8  10 00 a0 e3                                      mov r0, #0x10
0032dafc  03 30 96 e7                                      ldr r3, [r6, r3]
0032db00  00 50 83 e5                                      str r5, [r3]
0032db04  52 8a ff eb                                      bl #0x310454
0032db08  04 10 a0 e3                                      mov r1, #4
0032db0c  00 50 a0 e1                                      mov r5, r0
0032db10  cb a8 ff eb                                      bl #0x317e44
0032db14  40 30 9f e5                                      ldr r3, [pc, #0x40]
0032db18  10 00 a0 e3                                      mov r0, #0x10
0032db1c  03 30 96 e7                                      ldr r3, [r6, r3]
0032db20  00 50 83 e5                                      str r5, [r3]
0032db24  4a 8a ff eb                                      bl #0x310454
0032db28  05 10 a0 e3                                      mov r1, #5
0032db2c  00 50 a0 e1                                      mov r5, r0
0032db30  c3 a8 ff eb                                      bl #0x317e44
0032db34  24 30 9f e5                                      ldr r3, [pc, #0x24]
0032db38  04 00 a0 e1                                      mov r0, r4
0032db3c  03 30 96 e7                                      ldr r3, [r6, r3]
0032db40  00 50 83 e5                                      str r5, [r3]
0032db44  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0032db48  00 71 66 00 cc 0d 00 00 58 3d 00 00 40 48 00 00  .byte 0x00, 0x71, 0x66, 0x00, 0xcc, 0x0d, 0x00, 0x00, 0x58, 0x3d, 0x00, 0x00, 0x40, 0x48, 0x00, 0x00
0032db58  bc 0c 00 00 98 15 00 00 40 1d 00 00              .byte 0xbc, 0x0c, 0x00, 0x00, 0x98, 0x15, 0x00, 0x00, 0x40, 0x1d, 0x00, 0x00

; FUNCTION 0x0032f7e8, declared_size=628, range_size=628, mode=arm
; class-group: Application
; alias: _ZN11Application8PostInitEv
; demangled: Application::PostInit()
; decoder-mode: arm
0032f7e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032f7ec  58 82 9f e5                                      ldr r8, [pc, #0x258]
0032f7f0  58 22 9f e5                                      ldr r2, [pc, #0x258]
0032f7f4  44 d0 4d e2                                      sub sp, sp, #0x44
0032f7f8  08 80 8f e0                                      add r8, pc, r8
0032f7fc  02 30 98 e7                                      ldr r3, [r8, r2]
0032f800  00 50 a0 e1                                      mov r5, r0
0032f804  00 10 a0 e3                                      mov r1, #0
0032f808  00 30 93 e5                                      ldr r3, [r3]
0032f80c  30 00 a0 e3                                      mov r0, #0x30
0032f810  04 20 8d e5                                      str r2, [sp, #4]
0032f814  3c 30 8d e5                                      str r3, [sp, #0x3c]
0032f818  54 83 ff eb                                      bl #0x310570
0032f81c  00 60 a0 e1                                      mov r6, r0
0032f820  25 22 00 eb                                      bl #0x3380bc
0032f824  00 10 a0 e3                                      mov r1, #0
0032f828  14 60 85 e5                                      str r6, [r5, #0x14]
0032f82c  20 00 a0 e3                                      mov r0, #0x20
0032f830  4e 83 ff eb                                      bl #0x310570
0032f834  00 60 a0 e1                                      mov r6, r0
0032f838  a2 29 00 eb                                      bl #0x339ec8
0032f83c  18 60 85 e5                                      str r6, [r5, #0x18]
0032f840  00 10 a0 e3                                      mov r1, #0
0032f844  24 00 a0 e3                                      mov r0, #0x24
0032f848  48 83 ff eb                                      bl #0x310570
0032f84c  28 10 95 e5                                      ldr r1, [r5, #0x28]
0032f850  00 60 a0 e1                                      mov r6, r0
0032f854  97 4f 06 eb                                      bl #0x4c36b8
0032f858  2c 60 85 e5                                      str r6, [r5, #0x2c]
0032f85c  00 10 a0 e3                                      mov r1, #0
0032f860  3c 00 a0 e3                                      mov r0, #0x3c
0032f864  41 83 ff eb                                      bl #0x310570
0032f868  28 10 95 e5                                      ldr r1, [r5, #0x28]
0032f86c  00 60 a0 e1                                      mov r6, r0
0032f870  36 3b 06 eb                                      bl #0x4be550
0032f874  00 10 a0 e3                                      mov r1, #0
0032f878  30 60 85 e5                                      str r6, [r5, #0x30]
0032f87c  d8 07 00 e3                                      movw r0, #0x7d8
0032f880  3a 83 ff eb                                      bl #0x310570
0032f884  00 60 a0 e1                                      mov r6, r0
0032f888  20 61 07 eb                                      bl #0x507d10
0032f88c  00 10 a0 e3                                      mov r1, #0
0032f890  34 60 85 e5                                      str r6, [r5, #0x34]
0032f894  1b 0e a0 e3                                      mov r0, #0x1b0
0032f898  34 83 ff eb                                      bl #0x310570
0032f89c  00 60 a0 e1                                      mov r6, r0
0032f8a0  50 6a 00 eb                                      bl #0x34a1e8
0032f8a4  00 10 a0 e3                                      mov r1, #0
0032f8a8  38 60 85 e5                                      str r6, [r5, #0x38]
0032f8ac  1c 00 a0 e3                                      mov r0, #0x1c
0032f8b0  2e 83 ff eb                                      bl #0x310570
0032f8b4  00 60 a0 e1                                      mov r6, r0
0032f8b8  7c 29 01 eb                                      bl #0x379eb0
0032f8bc  00 10 a0 e3                                      mov r1, #0
0032f8c0  3c 60 85 e5                                      str r6, [r5, #0x3c]
0032f8c4  72 0e a0 e3                                      mov r0, #0x720
0032f8c8  28 83 ff eb                                      bl #0x310570
0032f8cc  00 60 a0 e1                                      mov r6, r0
0032f8d0  94 14 01 eb                                      bl #0x374b28
0032f8d4  40 60 85 e5                                      str r6, [r5, #0x40]
0032f8d8  00 10 a0 e3                                      mov r1, #0
0032f8dc  14 00 a0 e3                                      mov r0, #0x14
0032f8e0  22 83 ff eb                                      bl #0x310570
0032f8e4  68 b1 9f e5                                      ldr fp, [pc, #0x168]
0032f8e8  00 60 a0 e1                                      mov r6, r0
0032f8ec  e2 70 00 eb                                      bl #0x34bc7c
0032f8f0  08 30 8d e2                                      add r3, sp, #8
0032f8f4  44 60 85 e5                                      str r6, [r5, #0x44]
0032f8f8  0c 40 8d e2                                      add r4, sp, #0xc
0032f8fc  05 70 a0 e1                                      mov r7, r5
0032f900  00 60 a0 e3                                      mov r6, #0
0032f904  24 90 8d e2                                      add sb, sp, #0x24
0032f908  00 30 8d e5                                      str r3, [sp]
0032f90c  00 10 a0 e3                                      mov r1, #0
0032f910  51 0f a0 e3                                      mov r0, #0x144
0032f914  15 83 ff eb                                      bl #0x310570
0032f918  00 a0 a0 e1                                      mov sl, r0
0032f91c  64 fe ff eb                                      bl #0x32f2b4
0032f920  0b 30 98 e7                                      ldr r3, [r8, fp]
0032f924  58 a0 87 e5                                      str sl, [r7, #0x58]
0032f928  00 20 9d e5                                      ldr r2, [sp]
0032f92c  06 10 93 e7                                      ldr r1, [r3, r6]
0032f930  09 00 a0 e1                                      mov r0, sb
0032f934  c0 d9 ff eb                                      bl #0x32603c
0032f938  58 a0 97 e5                                      ldr sl, [r7, #0x58]
0032f93c  04 00 a0 e1                                      mov r0, r4
0032f940  38 10 9d e5                                      ldr r1, [sp, #0x38]
0032f944  34 20 9d e5                                      ldr r2, [sp, #0x34]
0032f948  1c 40 8d e5                                      str r4, [sp, #0x1c]
0032f94c  20 40 8d e5                                      str r4, [sp, #0x20]
0032f950  a7 d9 ff eb                                      bl #0x325ff4
0032f954  f8 00 8a e2                                      add r0, sl, #0xf8
0032f958  04 00 50 e1                                      cmp r0, r4
0032f95c  02 00 00 0a                                      beq #0x32f96c
0032f960  20 10 9d e5                                      ldr r1, [sp, #0x20]
0032f964  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0032f968  86 c4 ff eb                                      bl #0x320b88
0032f96c  20 00 9d e5                                      ldr r0, [sp, #0x20]
0032f970  04 00 50 e1                                      cmp r0, r4
0032f974  02 00 00 0a                                      beq #0x32f984
0032f978  00 00 50 e3                                      cmp r0, #0
0032f97c  00 00 00 0a                                      beq #0x32f984
0032f980  b2 82 ff eb                                      bl #0x310450
0032f984  38 00 9d e5                                      ldr r0, [sp, #0x38]
0032f988  09 00 50 e1                                      cmp r0, sb
0032f98c  02 00 00 0a                                      beq #0x32f99c
0032f990  00 00 50 e3                                      cmp r0, #0
0032f994  00 00 00 0a                                      beq #0x32f99c
0032f998  ac 82 ff eb                                      bl #0x310450
0032f99c  04 60 86 e2                                      add r6, r6, #4
0032f9a0  10 00 56 e3                                      cmp r6, #0x10
0032f9a4  04 70 87 e2                                      add r7, r7, #4
0032f9a8  d7 ff ff 1a                                      bne #0x32f90c
0032f9ac  00 10 a0 e3                                      mov r1, #0
0032f9b0  e8 00 a0 e3                                      mov r0, #0xe8
0032f9b4  ed 82 ff eb                                      bl #0x310570
0032f9b8  00 60 a0 e1                                      mov r6, r0
0032f9bc  ac fd ff eb                                      bl #0x32f074
0032f9c0  10 30 95 e5                                      ldr r3, [r5, #0x10]
0032f9c4  00 40 a0 e3                                      mov r4, #0
0032f9c8  68 60 85 e5                                      str r6, [r5, #0x68]
0032f9cc  b8 40 85 e5                                      str r4, [r5, #0xb8]
0032f9d0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0032f9d4  01 20 a0 e3                                      mov r2, #1
0032f9d8  50 22 c3 e5                                      strb r2, [r3, #0x250]
0032f9dc  74 30 9f e5                                      ldr r3, [pc, #0x74]
0032f9e0  04 20 a0 e1                                      mov r2, r4
0032f9e4  18 00 95 e5                                      ldr r0, [r5, #0x18]
0032f9e8  03 10 98 e7                                      ldr r1, [r8, r3]
0032f9ec  65 2a 00 eb                                      bl #0x33a388
0032f9f0  04 10 a0 e1                                      mov r1, r4
0032f9f4  44 00 a0 e3                                      mov r0, #0x44
0032f9f8  dc 82 ff eb                                      bl #0x310570
0032f9fc  00 60 a0 e1                                      mov r6, r0
0032fa00  ff 49 01 eb                                      bl #0x382204
0032fa04  50 60 85 e5                                      str r6, [r5, #0x50]
0032fa08  61 37 13 eb                                      bl #0x7fd794
0032fa0c  4b d5 13 eb                                      bl #0x824f40
0032fa10  04 10 a0 e1                                      mov r1, r4
0032fa14  a8 00 a0 e3                                      mov r0, #0xa8
0032fa18  d4 82 ff eb                                      bl #0x310570
0032fa1c  00 40 a0 e1                                      mov r4, r0
0032fa20  09 10 00 eb                                      bl #0x333a4c
0032fa24  04 20 9d e5                                      ldr r2, [sp, #4]
0032fa28  48 40 85 e5                                      str r4, [r5, #0x48]
0032fa2c  02 30 98 e7                                      ldr r3, [r8, r2]
0032fa30  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0032fa34  00 30 93 e5                                      ldr r3, [r3]
0032fa38  03 00 52 e1                                      cmp r2, r3
0032fa3c  01 00 00 1a                                      bne #0x32fa48
0032fa40  44 d0 8d e2                                      add sp, sp, #0x44
0032fa44  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032fa48  30 7a ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032fa4c  98 52 66 00 ac 40 00 00 54 4a 00 00 e8 13 00 00  .byte 0x98, 0x52, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x4a, 0x00, 0x00, 0xe8, 0x13, 0x00, 0x00

; FUNCTION 0x0032fa7c, declared_size=56, range_size=56, mode=arm
; class-group: Application
; alias: _ZN11Application25RegisterForIrrlichtEventsEPN6glitch14IEventReceiverE
; demangled: Application::RegisterForIrrlichtEvents(glitch::IEventReceiver*)
; decoder-mode: arm
0032fa7c  70 40 2d e9                                      push {r4, r5, r6, lr}
0032fa80  00 60 51 e2                                      subs r6, r1, #0
0032fa84  00 40 a0 e1                                      mov r4, r0
0032fa88  08 00 00 0a                                      beq #0x32fab0
0032fa8c  08 50 80 e2                                      add r5, r0, #8
0032fa90  05 00 a0 e1                                      mov r0, r5
0032fa94  f0 ff ff eb                                      bl #0x32fa5c
0032fa98  08 60 80 e5                                      str r6, [r0, #8]
0032fa9c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0032faa0  00 50 80 e5                                      str r5, [r0]
0032faa4  04 30 80 e5                                      str r3, [r0, #4]
0032faa8  00 00 83 e5                                      str r0, [r3]
0032faac  0c 00 84 e5                                      str r0, [r4, #0xc]
0032fab0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0032fab4, declared_size=428, range_size=428, mode=arm
; class-group: Application
; alias: _ZN11Application9InitWin32EPN6glitch7IDeviceE
; demangled: Application::InitWin32(glitch::IDevice*)
; decoder-mode: arm
0032fab4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0032fab8  90 51 9f e5                                      ldr r5, [pc, #0x190]
0032fabc  90 71 9f e5                                      ldr r7, [pc, #0x190]
0032fac0  10 30 91 e5                                      ldr r3, [r1, #0x10]
0032fac4  05 50 8f e0                                      add r5, pc, r5
0032fac8  07 20 95 e7                                      ldr r2, [r5, r7]
0032facc  11 de 4d e2                                      sub sp, sp, #0x110
0032fad0  00 40 a0 e1                                      mov r4, r0
0032fad4  00 20 92 e5                                      ldr r2, [r2]
0032fad8  01 60 a0 e1                                      mov r6, r1
0032fadc  6e 0f a0 e3                                      mov r0, #0x1b8
0032fae0  0c 21 8d e5                                      str r2, [sp, #0x10c]
0032fae4  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
0032fae8  00 10 a0 e3                                      mov r1, #0
0032faec  04 30 13 e5                                      ldr r3, [r3, #-4]
0032faf0  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0032faf4  10 90 93 e5                                      ldr sb, [r3, #0x10]
0032faf8  9c 82 ff eb                                      bl #0x310570
0032fafc  79 20 bf e6                                      sxth r2, sb
0032fb00  00 80 a0 e1                                      mov r8, r0
0032fb04  7a 10 bf e6                                      sxth r1, sl
0032fb08  df 36 00 eb                                      bl #0x33d68c
0032fb0c  00 10 a0 e3                                      mov r1, #0
0032fb10  20 80 84 e5                                      str r8, [r4, #0x20]
0032fb14  58 00 a0 e3                                      mov r0, #0x58
0032fb18  94 82 ff eb                                      bl #0x310570
0032fb1c  00 80 a0 e1                                      mov r8, r0
0032fb20  89 f4 04 eb                                      bl #0x46cd4c
0032fb24  20 10 94 e5                                      ldr r1, [r4, #0x20]
0032fb28  4c 80 84 e5                                      str r8, [r4, #0x4c]
0032fb2c  04 00 a0 e1                                      mov r0, r4
0032fb30  00 00 51 e3                                      cmp r1, #0
0032fb34  6d 1f 81 12                                      addne r1, r1, #0x1b4
0032fb38  cf ff ff eb                                      bl #0x32fa7c
0032fb3c  06 10 a0 e1                                      mov r1, r6
0032fb40  04 00 a0 e1                                      mov r0, r4
0032fb44  e5 cf ff eb                                      bl #0x323ae0
0032fb48  04 00 a0 e1                                      mov r0, r4
0032fb4c  25 ff ff eb                                      bl #0x32f7e8
0032fb50  34 c0 96 e5                                      ldr ip, [r6, #0x34]
0032fb54  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
0032fb58  01 20 a0 e3                                      mov r2, #1
0032fb5c  0c 00 a0 e1                                      mov r0, ip
0032fb60  01 10 8f e0                                      add r1, pc, r1
0032fb64  00 30 a0 e3                                      mov r3, #0
0032fb68  00 c0 9c e5                                      ldr ip, [ip]
0032fb6c  0f e0 a0 e1                                      mov lr, pc
0032fb70  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0032fb74  e0 00 9f e5                                      ldr r0, [pc, #0xe0]
0032fb78  00 10 a0 e3                                      mov r1, #0
0032fb7c  0c 80 8d e2                                      add r8, sp, #0xc
0032fb80  ff c0 a0 e3                                      mov ip, #0xff
0032fb84  00 00 8f e0                                      add r0, pc, r0
0032fb88  01 20 a0 e1                                      mov r2, r1
0032fb8c  08 30 a0 e1                                      mov r3, r8
0032fb90  00 c0 8d e5                                      str ip, [sp]
0032fb94  fc ed 03 eb                                      bl #0x42b38c
0032fb98  00 00 50 e3                                      cmp r0, #0
0032fb9c  0c 00 00 1a                                      bne #0x32fbd4
0032fba0  00 10 a0 e3                                      mov r1, #0
0032fba4  45 0f a0 e3                                      mov r0, #0x114
0032fba8  70 82 ff eb                                      bl #0x310570
0032fbac  00 60 a0 e1                                      mov r6, r0
0032fbb0  20 08 04 eb                                      bl #0x431c38
0032fbb4  07 30 95 e7                                      ldr r3, [r5, r7]
0032fbb8  54 60 84 e5                                      str r6, [r4, #0x54]
0032fbbc  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
0032fbc0  00 30 93 e5                                      ldr r3, [r3]
0032fbc4  03 00 52 e1                                      cmp r2, r3
0032fbc8  1f 00 00 1a                                      bne #0x32fc4c
0032fbcc  11 de 8d e2                                      add sp, sp, #0x110
0032fbd0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0032fbd4  18 30 96 e5                                      ldr r3, [r6, #0x18]
0032fbd8  08 10 a0 e1                                      mov r1, r8
0032fbdc  0e 20 a0 e3                                      mov r2, #0xe
0032fbe0  03 00 a0 e1                                      mov r0, r3
0032fbe4  00 30 93 e5                                      ldr r3, [r3]
0032fbe8  0f e0 a0 e1                                      mov lr, pc
0032fbec  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0032fbf0  00 a0 50 e2                                      subs sl, r0, #0
0032fbf4  0a 00 00 0a                                      beq #0x32fc24
0032fbf8  18 30 96 e5                                      ldr r3, [r6, #0x18]
0032fbfc  03 00 a0 e1                                      mov r0, r3
0032fc00  00 30 93 e5                                      ldr r3, [r3]
0032fc04  0f e0 a0 e1                                      mov lr, pc
0032fc08  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0032fc0c  0a 10 a0 e1                                      mov r1, sl
0032fc10  00 30 90 e5                                      ldr r3, [r0]
0032fc14  00 20 a0 e3                                      mov r2, #0
0032fc18  0f e0 a0 e1                                      mov lr, pc
0032fc1c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0032fc20  de ff ff ea                                      b #0x32fba0
0032fc24  18 30 96 e5                                      ldr r3, [r6, #0x18]
0032fc28  01 10 88 e2                                      add r1, r8, #1
0032fc2c  0e 20 a0 e3                                      mov r2, #0xe
0032fc30  03 00 a0 e1                                      mov r0, r3
0032fc34  00 30 93 e5                                      ldr r3, [r3]
0032fc38  0f e0 a0 e1                                      mov lr, pc
0032fc3c  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0032fc40  00 a0 50 e2                                      subs sl, r0, #0
0032fc44  d5 ff ff 0a                                      beq #0x32fba0
0032fc48  ea ff ff ea                                      b #0x32fbf8
0032fc4c  af 79 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032fc50  cc 4f 66 00 ac 40 00 00 d8 fb 58 00 c4 fb 58 00  .byte 0xcc, 0x4f, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd8, 0xfb, 0x58, 0x00, 0xc4, 0xfb, 0x58, 0x00

; FUNCTION 0x0032fca0, declared_size=112, range_size=112, mode=arm
; class-group: Application
; alias: _ZN11ApplicationD2Ev
; demangled: Application::~Application()
; decoder-mode: arm
0032fca0  60 30 9f e5                                      ldr r3, [pc, #0x60]
0032fca4  60 20 9f e5                                      ldr r2, [pc, #0x60]
0032fca8  30 40 2d e9                                      push {r4, r5, lr}
0032fcac  03 30 8f e0                                      add r3, pc, r3
0032fcb0  02 20 93 e7                                      ldr r2, [r3, r2]
0032fcb4  00 40 a0 e1                                      mov r4, r0
0032fcb8  0c d0 4d e2                                      sub sp, sp, #0xc
0032fcbc  08 20 82 e2                                      add r2, r2, #8
0032fcc0  08 20 84 e4                                      str r2, [r4], #8
0032fcc4  00 50 a0 e1                                      mov r5, r0
0032fcc8  04 00 a0 e1                                      mov r0, r4
0032fccc  8b e4 ff eb                                      bl #0x328f00
0032fcd0  08 10 8d e2                                      add r1, sp, #8
0032fcd4  00 30 a0 e3                                      mov r3, #0
0032fcd8  04 30 21 e5                                      str r3, [r1, #-4]!
0032fcdc  04 00 a0 e1                                      mov r0, r4
0032fce0  de ff ff eb                                      bl #0x32fc60
0032fce4  d4 00 85 e2                                      add r0, r5, #0xd4
0032fce8  2f 8f ff eb                                      bl #0x3139ac
0032fcec  bc 00 85 e2                                      add r0, r5, #0xbc
0032fcf0  2d 8f ff eb                                      bl #0x3139ac
0032fcf4  04 00 a0 e1                                      mov r0, r4
0032fcf8  80 e4 ff eb                                      bl #0x328f00
0032fcfc  05 00 a0 e1                                      mov r0, r5
0032fd00  0c d0 8d e2                                      add sp, sp, #0xc
0032fd04  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0032fd08  e4 4d 66 00 cc 0d 00 00                          .byte 0xe4, 0x4d, 0x66, 0x00, 0xcc, 0x0d, 0x00, 0x00

; FUNCTION 0x0032fd10, declared_size=112, range_size=112, mode=arm
; class-group: Application
; alias: _ZN11ApplicationD1Ev
; demangled: Application::~Application()
; decoder-mode: arm
0032fd10  60 30 9f e5                                      ldr r3, [pc, #0x60]
0032fd14  60 20 9f e5                                      ldr r2, [pc, #0x60]
0032fd18  30 40 2d e9                                      push {r4, r5, lr}
0032fd1c  03 30 8f e0                                      add r3, pc, r3
0032fd20  02 20 93 e7                                      ldr r2, [r3, r2]
0032fd24  00 40 a0 e1                                      mov r4, r0
0032fd28  0c d0 4d e2                                      sub sp, sp, #0xc
0032fd2c  08 20 82 e2                                      add r2, r2, #8
0032fd30  08 20 84 e4                                      str r2, [r4], #8
0032fd34  00 50 a0 e1                                      mov r5, r0
0032fd38  04 00 a0 e1                                      mov r0, r4
0032fd3c  6f e4 ff eb                                      bl #0x328f00
0032fd40  08 10 8d e2                                      add r1, sp, #8
0032fd44  00 30 a0 e3                                      mov r3, #0
0032fd48  04 30 21 e5                                      str r3, [r1, #-4]!
0032fd4c  04 00 a0 e1                                      mov r0, r4
0032fd50  c2 ff ff eb                                      bl #0x32fc60
0032fd54  d4 00 85 e2                                      add r0, r5, #0xd4
0032fd58  13 8f ff eb                                      bl #0x3139ac
0032fd5c  bc 00 85 e2                                      add r0, r5, #0xbc
0032fd60  11 8f ff eb                                      bl #0x3139ac
0032fd64  04 00 a0 e1                                      mov r0, r4
0032fd68  64 e4 ff eb                                      bl #0x328f00
0032fd6c  05 00 a0 e1                                      mov r0, r5
0032fd70  0c d0 8d e2                                      add sp, sp, #0xc
0032fd74  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0032fd78  74 4d 66 00 cc 0d 00 00                          .byte 0x74, 0x4d, 0x66, 0x00, 0xcc, 0x0d, 0x00, 0x00

; FUNCTION 0x0032fd80, declared_size=28, range_size=28, mode=arm
; class-group: Application
; alias: _ZN11ApplicationD0Ev
; demangled: Application::~Application()
; decoder-mode: arm
0032fd80  10 40 2d e9                                      push {r4, lr}
0032fd84  00 40 a0 e1                                      mov r4, r0
0032fd88  e0 ff ff eb                                      bl #0x32fd10
0032fd8c  04 00 a0 e1                                      mov r0, r4
0032fd90  aa 81 ff eb                                      bl #0x310440
0032fd94  04 00 a0 e1                                      mov r0, r4
0032fd98  10 80 bd e8                                      pop {r4, pc}
