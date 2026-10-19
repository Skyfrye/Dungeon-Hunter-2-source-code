; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00328e6c, declared_size=60, range_size=60, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenterD1Ev
; demangled: GameCenter::~GameCenter()
; decoder-mode: arm
00328e6c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00328e70  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00328e74  10 40 2d e9                                      push {r4, lr}
00328e78  03 30 8f e0                                      add r3, pc, r3
00328e7c  02 20 93 e7                                      ldr r2, [r3, r2]
00328e80  00 40 a0 e1                                      mov r4, r0
00328e84  08 20 82 e2                                      add r2, r2, #8
00328e88  4c 20 80 e4                                      str r2, [r0], #0x4c
00328e8c  c6 aa ff eb                                      bl #0x3139ac
00328e90  24 00 84 e2                                      add r0, r4, #0x24
00328e94  e1 ff ff eb                                      bl #0x328e20
00328e98  04 00 a0 e1                                      mov r0, r4
00328e9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00328ea0  18 bc 66 00 88 0e 00 00                          .byte 0x18, 0xbc, 0x66, 0x00, 0x88, 0x0e, 0x00, 0x00

; FUNCTION 0x00328ea8, declared_size=88, range_size=88, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenterD0Ev
; demangled: GameCenter::~GameCenter()
; decoder-mode: arm
00328ea8  70 40 2d e9                                      push {r4, r5, r6, lr}
00328eac  40 50 9f e5                                      ldr r5, [pc, #0x40]
00328eb0  40 30 9f e5                                      ldr r3, [pc, #0x40]
00328eb4  00 40 a0 e1                                      mov r4, r0
00328eb8  05 50 8f e0                                      add r5, pc, r5
00328ebc  03 30 95 e7                                      ldr r3, [r5, r3]
00328ec0  08 30 83 e2                                      add r3, r3, #8
00328ec4  4c 30 80 e4                                      str r3, [r0], #0x4c
00328ec8  b7 aa ff eb                                      bl #0x3139ac
00328ecc  24 00 84 e2                                      add r0, r4, #0x24
00328ed0  d2 ff ff eb                                      bl #0x328e20
00328ed4  20 30 9f e5                                      ldr r3, [pc, #0x20]
00328ed8  04 00 a0 e1                                      mov r0, r4
00328edc  03 30 95 e7                                      ldr r3, [r5, r3]
00328ee0  08 30 83 e2                                      add r3, r3, #8
00328ee4  00 30 84 e5                                      str r3, [r4]
00328ee8  54 9d ff eb                                      bl #0x310440
00328eec  04 00 a0 e1                                      mov r0, r4
00328ef0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00328ef4  d8 bb 66 00 88 0e 00 00 00 2a 00 00              .byte 0xd8, 0xbb, 0x66, 0x00, 0x88, 0x0e, 0x00, 0x00, 0x00, 0x2a, 0x00, 0x00

; FUNCTION 0x0032bc34, declared_size=212, range_size=212, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenterC1Ev
; demangled: GameCenter::GameCenter()
; decoder-mode: arm
0032bc34  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0032bc38  c4 c0 9f e5                                      ldr ip, [pc, #0xc4]
0032bc3c  00 20 a0 e1                                      mov r2, r0
0032bc40  03 30 8f e0                                      add r3, pc, r3
0032bc44  0c c0 93 e7                                      ldr ip, [r3, ip]
0032bc48  10 40 2d e9                                      push {r4, lr}
0032bc4c  08 c0 8c e2                                      add ip, ip, #8
0032bc50  00 40 a0 e1                                      mov r4, r0
0032bc54  24 c0 82 e4                                      str ip, [r2], #0x24
0032bc58  4c 10 80 e2                                      add r1, r0, #0x4c
0032bc5c  28 20 80 e5                                      str r2, [r0, #0x28]
0032bc60  01 00 a0 e1                                      mov r0, r1
0032bc64  24 20 84 e5                                      str r2, [r4, #0x24]
0032bc68  5c 10 84 e5                                      str r1, [r4, #0x5c]
0032bc6c  60 10 84 e5                                      str r1, [r4, #0x60]
0032bc70  10 10 a0 e3                                      mov r1, #0x10
0032bc74  80 96 ff eb                                      bl #0x31167c
0032bc78  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
0032bc7c  00 30 a0 e3                                      mov r3, #0
0032bc80  00 20 e0 e3                                      mvn r2, #0
0032bc84  04 10 a0 e1                                      mov r1, r4
0032bc88  00 30 c0 e5                                      strb r3, [r0]
0032bc8c  3c 20 84 e5                                      str r2, [r4, #0x3c]
0032bc90  40 20 84 e5                                      str r2, [r4, #0x40]
0032bc94  0e 30 c4 e5                                      strb r3, [r4, #0xe]
0032bc98  07 30 c4 e5                                      strb r3, [r4, #7]
0032bc9c  04 30 c4 e5                                      strb r3, [r4, #4]
0032bca0  05 30 c4 e5                                      strb r3, [r4, #5]
0032bca4  08 30 c4 e5                                      strb r3, [r4, #8]
0032bca8  09 30 c4 e5                                      strb r3, [r4, #9]
0032bcac  0a 30 c4 e5                                      strb r3, [r4, #0xa]
0032bcb0  0b 30 c4 e5                                      strb r3, [r4, #0xb]
0032bcb4  38 30 84 e5                                      str r3, [r4, #0x38]
0032bcb8  10 30 c4 e5                                      strb r3, [r4, #0x10]
0032bcbc  48 30 84 e5                                      str r3, [r4, #0x48]
0032bcc0  2c 30 84 e5                                      str r3, [r4, #0x2c]
0032bcc4  18 30 84 e5                                      str r3, [r4, #0x18]
0032bcc8  44 30 84 e5                                      str r3, [r4, #0x44]
0032bccc  11 30 c4 e5                                      strb r3, [r4, #0x11]
0032bcd0  12 30 c4 e5                                      strb r3, [r4, #0x12]
0032bcd4  13 30 c4 e5                                      strb r3, [r4, #0x13]
0032bcd8  14 30 c4 e5                                      strb r3, [r4, #0x14]
0032bcdc  15 30 c4 e5                                      strb r3, [r4, #0x15]
0032bce0  16 30 c4 e5                                      strb r3, [r4, #0x16]
0032bce4  04 20 a0 e1                                      mov r2, r4
0032bce8  6c 30 a1 e5                                      str r3, [r1, #0x6c]!
0032bcec  70 10 84 e5                                      str r1, [r4, #0x70]
0032bcf0  74 30 a2 e5                                      str r3, [r2, #0x74]!
0032bcf4  78 20 84 e5                                      str r2, [r4, #0x78]
0032bcf8  04 00 a0 e1                                      mov r0, r4
0032bcfc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0032bd00  50 8e 66 00 88 0e 00 00                          .byte 0x50, 0x8e, 0x66, 0x00, 0x88, 0x0e, 0x00, 0x00

; FUNCTION 0x00499194, declared_size=12, range_size=12, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter16EnableGCFeaturesEv
; demangled: GameCenter::EnableGCFeatures()
; decoder-mode: arm
00499194  01 30 a0 e3                                      mov r3, #1
00499198  07 30 c0 e5                                      strb r3, [r0, #7]
0049919c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004991a0, declared_size=12, range_size=12, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter17DisableGCFeaturesEv
; demangled: GameCenter::DisableGCFeatures()
; decoder-mode: arm
004991a0  00 30 a0 e3                                      mov r3, #0
004991a4  07 30 c0 e5                                      strb r3, [r0, #7]
004991a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004991ac, declared_size=4, range_size=4, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter15ConnectToServerEi
; demangled: GameCenter::ConnectToServer(int)
; decoder-mode: arm
004991ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x004991b0, declared_size=4, range_size=4, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter9GCFriendsEi
; demangled: GameCenter::GCFriends(int)
; decoder-mode: arm
004991b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004991b4, declared_size=4, range_size=4, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter17ProcessGCAPIErrorEPKcS1_
; demangled: GameCenter::ProcessGCAPIError(char const*, char const*)
; decoder-mode: arm
004991b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004991b8, declared_size=12, range_size=12, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter21GetGCPlayerAttributesEv
; demangled: GameCenter::GetGCPlayerAttributes()
; decoder-mode: arm
004991b8  02 01 a0 e3                                      mov r0, #0x80000000
004991bc  c0 07 a0 e1                                      asr r0, r0, #0xf
004991c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004991c4, declared_size=8, range_size=8, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter10GetUserUidEv
; demangled: GameCenter::GetUserUid()
; decoder-mode: arm
004991c4  34 00 90 e5                                      ldr r0, [r0, #0x34]
004991c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004991cc, declared_size=8, range_size=8, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter10GetHostUidEv
; demangled: GameCenter::GetHostUid()
; decoder-mode: arm
004991cc  30 00 90 e5                                      ldr r0, [r0, #0x30]
004991d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004991d4, declared_size=52, range_size=52, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter14GetPlayerCountEv
; demangled: GameCenter::GetPlayerCount()
; decoder-mode: arm
004991d4  00 10 a0 e1                                      mov r1, r0
004991d8  24 30 b1 e5                                      ldr r3, [r1, #0x24]!
004991dc  01 00 53 e1                                      cmp r3, r1
004991e0  00 20 a0 03                                      moveq r2, #0
004991e4  04 00 00 0a                                      beq #0x4991fc
004991e8  00 20 a0 e3                                      mov r2, #0
004991ec  00 30 93 e5                                      ldr r3, [r3]
004991f0  01 20 82 e2                                      add r2, r2, #1
004991f4  03 00 51 e1                                      cmp r1, r3
004991f8  fb ff ff 1a                                      bne #0x4991ec
004991fc  2c 20 80 e5                                      str r2, [r0, #0x2c]
00499200  02 00 a0 e1                                      mov r0, r2
00499204  1e ff 2f e1                                      bx lr

; FUNCTION 0x00499208, declared_size=28, range_size=28, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter22DumpPlayerIDStatusListEv
; demangled: GameCenter::DumpPlayerIDStatusList()
; decoder-mode: arm
00499208  74 30 90 e5                                      ldr r3, [r0, #0x74]
0049920c  00 00 53 e3                                      cmp r3, #0
00499210  1e ff 2f 01                                      bxeq lr
00499214  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00499218  00 00 53 e3                                      cmp r3, #0
0049921c  fc ff ff 1a                                      bne #0x499214
00499220  1e ff 2f e1                                      bx lr

; FUNCTION 0x00499224, declared_size=64, range_size=64, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter17SaveGCAchievementEPc
; demangled: GameCenter::SaveGCAchievement(char*)
; decoder-mode: arm
00499224  70 40 2d e9                                      push {r4, r5, r6, lr}
00499228  00 40 a0 e1                                      mov r4, r0
0049922c  0c 00 a0 e3                                      mov r0, #0xc
00499230  01 50 a0 e1                                      mov r5, r1
00499234  2e d5 f9 eb                                      bl #0x30e6f4
00499238  00 00 50 e3                                      cmp r0, #0
0049923c  07 00 00 0a                                      beq #0x499260
00499240  00 30 a0 e3                                      mov r3, #0
00499244  00 50 80 e5                                      str r5, [r0]
00499248  04 30 80 e5                                      str r3, [r0, #4]
0049924c  70 30 94 e5                                      ldr r3, [r4, #0x70]
00499250  04 20 80 e2                                      add r2, r0, #4
00499254  08 30 80 e5                                      str r3, [r0, #8]
00499258  00 00 83 e5                                      str r0, [r3]
0049925c  70 20 84 e5                                      str r2, [r4, #0x70]
00499260  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00499264, declared_size=192, range_size=192, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter17SetPlayerIDStatusEPKcS1_b
; demangled: GameCenter::SetPlayerIDStatus(char const*, char const*, bool)
; decoder-mode: arm
00499264  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00499268  00 40 51 e2                                      subs r4, r1, #0
0049926c  00 50 a0 e1                                      mov r5, r0
00499270  02 60 a0 e1                                      mov r6, r2
00499274  03 80 a0 e1                                      mov r8, r3
00499278  28 00 00 0a                                      beq #0x499320
0049927c  14 00 a0 e3                                      mov r0, #0x14
00499280  1b d5 f9 eb                                      bl #0x30e6f4
00499284  00 70 50 e2                                      subs r7, r0, #0
00499288  24 00 00 0a                                      beq #0x499320
0049928c  04 00 a0 e1                                      mov r0, r4
00499290  01 d3 f9 eb                                      bl #0x30de9c
00499294  00 80 c7 e5                                      strb r8, [r7]
00499298  04 00 87 e5                                      str r0, [r7, #4]
0049929c  06 00 a0 e1                                      mov r0, r6
004992a0  fd d2 f9 eb                                      bl #0x30de9c
004992a4  08 00 87 e5                                      str r0, [r7, #8]
004992a8  74 60 95 e5                                      ldr r6, [r5, #0x74]
004992ac  00 00 56 e3                                      cmp r6, #0
004992b0  03 00 00 1a                                      bne #0x4992c4
004992b4  12 00 00 ea                                      b #0x499304
004992b8  0c 60 96 e5                                      ldr r6, [r6, #0xc]
004992bc  00 00 56 e3                                      cmp r6, #0
004992c0  0f 00 00 0a                                      beq #0x499304
004992c4  04 10 96 e5                                      ldr r1, [r6, #4]
004992c8  04 00 a0 e1                                      mov r0, r4
004992cc  12 d4 f9 eb                                      bl #0x30e31c
004992d0  00 00 50 e3                                      cmp r0, #0
004992d4  f7 ff ff 1a                                      bne #0x4992b8
004992d8  0c 30 96 e5                                      ldr r3, [r6, #0xc]
004992dc  00 00 53 e3                                      cmp r3, #0
004992e0  0c 30 87 e5                                      str r3, [r7, #0xc]
004992e4  0c 20 87 12                                      addne r2, r7, #0xc
004992e8  0c 30 87 02                                      addeq r3, r7, #0xc
004992ec  78 30 85 05                                      streq r3, [r5, #0x78]
004992f0  10 20 83 15                                      strne r2, [r3, #0x10]
004992f4  10 30 96 e5                                      ldr r3, [r6, #0x10]
004992f8  10 30 87 e5                                      str r3, [r7, #0x10]
004992fc  00 70 83 e5                                      str r7, [r3]
00499300  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00499304  00 30 a0 e3                                      mov r3, #0
00499308  0c 30 87 e5                                      str r3, [r7, #0xc]
0049930c  78 30 95 e5                                      ldr r3, [r5, #0x78]
00499310  0c 20 87 e2                                      add r2, r7, #0xc
00499314  10 30 87 e5                                      str r3, [r7, #0x10]
00499318  00 70 83 e5                                      str r7, [r3]
0049931c  78 20 85 e5                                      str r2, [r5, #0x78]
00499320  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00499324, declared_size=28, range_size=28, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter6IsHostEv
; demangled: GameCenter::IsHost()
; decoder-mode: arm
00499324  10 40 2d e9                                      push {r4, lr}
00499328  34 10 90 e5                                      ldr r1, [r0, #0x34]
0049932c  30 00 90 e5                                      ldr r0, [r0, #0x30]
00499330  f9 d3 f9 eb                                      bl #0x30e31c
00499334  01 00 70 e2                                      rsbs r0, r0, #1
00499338  00 00 a0 33                                      movlo r0, #0
0049933c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00499440, declared_size=72, range_size=72, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter25GCStartGameTimeoutExpiredEv
; demangled: GameCenter::GCStartGameTimeoutExpired()
; decoder-mode: arm
00499440  30 40 2d e9                                      push {r4, r5, lr}
00499444  0c d0 4d e2                                      sub sp, sp, #0xc
00499448  00 50 a0 e1                                      mov r5, r0
0049944c  00 10 a0 e3                                      mov r1, #0
00499450  0d 00 a0 e1                                      mov r0, sp
00499454  b2 d4 f9 eb                                      bl #0x30e724
00499458  8e 1e fa eb                                      bl #0x320e98
0049945c  1c 10 85 e2                                      add r1, r5, #0x1c
00499460  0d 20 a0 e1                                      mov r2, sp
00499464  0d 1b 00 eb                                      bl #0x4a00a0
00499468  92 3b a0 e3                                      mov r3, #0x24800
0049946c  1f 3e 83 e2                                      add r3, r3, #0x1f0
00499470  0d 40 a0 e1                                      mov r4, sp
00499474  03 00 50 e1                                      cmp r0, r3
00499478  00 00 a0 d3                                      movle r0, #0
0049947c  01 00 a0 c3                                      movgt r0, #1
00499480  0c d0 8d e2                                      add sp, sp, #0xc
00499484  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00499564, declared_size=60, range_size=60, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter13ReportGCScoreEi
; demangled: GameCenter::ReportGCScore(int)
; decoder-mode: arm
00499564  70 40 2d e9                                      push {r4, r5, r6, lr}
00499568  00 40 a0 e1                                      mov r4, r0
0049956c  01 50 a0 e1                                      mov r5, r1
00499570  e4 49 fa eb                                      bl #0x32bd08
00499574  05 30 d0 e5                                      ldrb r3, [r0, #5]
00499578  00 00 53 e3                                      cmp r3, #0
0049957c  06 00 00 0a                                      beq #0x49959c
00499580  3c 50 84 e5                                      str r5, [r4, #0x3c]
00499584  df 49 fa eb                                      bl #0x32bd08
00499588  01 30 a0 e3                                      mov r3, #1
0049958c  0d 30 c0 e5                                      strb r3, [r0, #0xd]
00499590  dc 49 fa eb                                      bl #0x32bd08
00499594  00 30 a0 e3                                      mov r3, #0
00499598  0e 30 c0 e5                                      strb r3, [r0, #0xe]
0049959c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004995a0, declared_size=84, range_size=84, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter19ReportGCAchievementEPc
; demangled: GameCenter::ReportGCAchievement(char*)
; decoder-mode: arm
004995a0  70 40 2d e9                                      push {r4, r5, r6, lr}
004995a4  00 40 a0 e1                                      mov r4, r0
004995a8  01 50 a0 e1                                      mov r5, r1
004995ac  d5 49 fa eb                                      bl #0x32bd08
004995b0  05 30 d0 e5                                      ldrb r3, [r0, #5]
004995b4  00 00 53 e3                                      cmp r3, #0
004995b8  0c 00 00 0a                                      beq #0x4995f0
004995bc  38 00 94 e5                                      ldr r0, [r4, #0x38]
004995c0  00 00 50 e3                                      cmp r0, #0
004995c4  00 00 00 0a                                      beq #0x4995cc
004995c8  48 d2 f9 eb                                      bl #0x30def0
004995cc  05 00 a0 e1                                      mov r0, r5
004995d0  31 d2 f9 eb                                      bl #0x30de9c
004995d4  38 00 84 e5                                      str r0, [r4, #0x38]
004995d8  ca 49 fa eb                                      bl #0x32bd08
004995dc  01 30 a0 e3                                      mov r3, #1
004995e0  0c 30 c0 e5                                      strb r3, [r0, #0xc]
004995e4  c7 49 fa eb                                      bl #0x32bd08
004995e8  00 30 a0 e3                                      mov r3, #0
004995ec  0e 30 c0 e5                                      strb r3, [r0, #0xe]
004995f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004995f4, declared_size=36, range_size=36, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter16GetGCPlayerAliasEv
; demangled: GameCenter::GetGCPlayerAlias()
; decoder-mode: arm
004995f4  10 40 2d e9                                      push {r4, lr}
004995f8  00 40 a0 e1                                      mov r4, r0
004995fc  10 00 84 e5                                      str r0, [r4, #0x10]
00499600  14 00 84 e5                                      str r0, [r4, #0x14]
00499604  5c 20 91 e5                                      ldr r2, [r1, #0x5c]
00499608  60 10 91 e5                                      ldr r1, [r1, #0x60]
0049960c  35 e0 f9 eb                                      bl #0x3116e8
00499610  04 00 a0 e1                                      mov r0, r4
00499614  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00499618, declared_size=124, range_size=124, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter16SetGCPlayerAliasEPc
; demangled: GameCenter::SetGCPlayerAlias(char*)
; decoder-mode: arm
00499618  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0049961c  68 40 9f e5                                      ldr r4, [pc, #0x68]
00499620  68 60 9f e5                                      ldr r6, [pc, #0x68]
00499624  24 d0 4d e2                                      sub sp, sp, #0x24
00499628  04 40 8f e0                                      add r4, pc, r4
0049962c  06 30 94 e7                                      ldr r3, [r4, r6]
00499630  04 50 8d e2                                      add r5, sp, #4
00499634  4c 70 80 e2                                      add r7, r0, #0x4c
00499638  00 30 93 e5                                      ldr r3, [r3]
0049963c  0d 20 a0 e1                                      mov r2, sp
00499640  05 00 a0 e1                                      mov r0, r5
00499644  1c 30 8d e5                                      str r3, [sp, #0x1c]
00499648  a7 ea f9 eb                                      bl #0x3140ec
0049964c  05 00 57 e1                                      cmp r7, r5
00499650  03 00 00 0a                                      beq #0x499664
00499654  07 00 a0 e1                                      mov r0, r7
00499658  18 10 9d e5                                      ldr r1, [sp, #0x18]
0049965c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00499660  de dc f9 eb                                      bl #0x3109e0
00499664  05 00 a0 e1                                      mov r0, r5
00499668  cf e8 f9 eb                                      bl #0x3139ac
0049966c  06 30 94 e7                                      ldr r3, [r4, r6]
00499670  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00499674  00 30 93 e5                                      ldr r3, [r3]
00499678  03 00 52 e1                                      cmp r2, r3
0049967c  01 00 00 1a                                      bne #0x499688
00499680  24 d0 8d e2                                      add sp, sp, #0x24
00499684  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00499688  20 d3 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0049968c  68 b4 4f 00 ac 40 00 00                          .byte 0x68, 0xb4, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00499694, declared_size=736, range_size=736, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter16GetGCPlayerGroupEv
; demangled: GameCenter::GetGCPlayerGroup()
; decoder-mode: arm
00499694  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00499698  ac 52 9f e5                                      ldr r5, [pc, #0x2ac]
0049969c  ac 22 9f e5                                      ldr r2, [pc, #0x2ac]
004996a0  ac 42 9f e5                                      ldr r4, [pc, #0x2ac]
004996a4  05 50 8f e0                                      add r5, pc, r5
004996a8  02 30 95 e7                                      ldr r3, [r5, r2]
004996ac  04 60 95 e7                                      ldr r6, [r5, r4]
004996b0  9b df 4d e2                                      sub sp, sp, #0x26c
004996b4  00 30 93 e5                                      ldr r3, [r3]
004996b8  00 10 a0 e3                                      mov r1, #0
004996bc  0c 20 8d e5                                      str r2, [sp, #0xc]
004996c0  40 00 96 e5                                      ldr r0, [r6, #0x40]
004996c4  01 20 a0 e1                                      mov r2, r1
004996c8  64 32 8d e5                                      str r3, [sp, #0x264]
004996cc  69 53 fb eb                                      bl #0x36e478
004996d0  64 16 90 e5                                      ldr r1, [r0, #0x664]
004996d4  1c 70 8d e2                                      add r7, sp, #0x1c
004996d8  01 20 a0 e3                                      mov r2, #1
004996dc  01 00 71 e3                                      cmn r1, #1
004996e0  4c 30 96 05                                      ldreq r3, [r6, #0x4c]
004996e4  07 00 a0 e1                                      mov r0, r7
004996e8  6d 6f 8d e2                                      add r6, sp, #0x1b4
004996ec  08 10 93 05                                      ldreq r1, [r3, #8]
004996f0  00 30 a0 e3                                      mov r3, #0
004996f4  ac 2f ff eb                                      bl #0x4655ac
004996f8  04 80 95 e7                                      ldr r8, [r5, r4]
004996fc  00 40 a0 e3                                      mov r4, #0
00499700  48 b0 86 e2                                      add fp, r6, #0x48
00499704  54 00 98 e5                                      ldr r0, [r8, #0x54]
00499708  1c 4d fe eb                                      bl #0x42cb80
0049970c  00 a0 a0 e1                                      mov sl, r0
00499710  54 00 98 e5                                      ldr r0, [r8, #0x54]
00499714  19 4d fe eb                                      bl #0x42cb80
00499718  63 39 0c eb                                      bl #0x7a7cac
0049971c  8c 6a 0b eb                                      bl #0x774154
00499720  30 22 9f e5                                      ldr r2, [pc, #0x230]
00499724  00 10 a0 e1                                      mov r1, r0
00499728  04 30 a0 e1                                      mov r3, r4
0049972c  02 20 8f e0                                      add r2, pc, r2
00499730  0a 00 a0 e1                                      mov r0, sl
00499734  00 40 8d e5                                      str r4, [sp]
00499738  b3 49 0c eb                                      bl #0x7abe0c
0049973c  4c 30 98 e5                                      ldr r3, [r8, #0x4c]
00499740  07 00 a0 e1                                      mov r0, r7
00499744  10 10 a0 e3                                      mov r1, #0x10
00499748  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0049974c  08 90 86 e2                                      add sb, r6, #8
00499750  93 8f 8d e2                                      add r8, sp, #0x24c
00499754  14 30 8d e5                                      str r3, [sp, #0x14]
00499758  34 2f ff eb                                      bl #0x465430
0049975c  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
00499760  07 00 a0 e1                                      mov r0, r7
00499764  03 a0 95 e7                                      ldr sl, [r5, r3]
00499768  00 10 9a e5                                      ldr r1, [sl]
0049976c  9e 36 ff eb                                      bl #0x4671ec
00499770  07 00 a0 e1                                      mov r0, r7
00499774  00 a0 9a e5                                      ldr sl, [sl]
00499778  79 33 ff eb                                      bl #0x466564
0049977c  0a a1 80 e0                                      add sl, r0, sl, lsl #2
00499780  44 a0 9a e5                                      ldr sl, [sl, #0x44]
00499784  0b 00 a0 e1                                      mov r0, fp
00499788  10 a0 8d e5                                      str sl, [sp, #0x10]
0049978c  eb bd 09 eb                                      bl #0x708f40
00499790  c8 21 9f e5                                      ldr r2, [pc, #0x1c8]
00499794  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
00499798  40 42 cd e5                                      strb r4, [sp, #0x240]
0049979c  02 a0 95 e7                                      ldr sl, [r5, r2]
004997a0  03 30 95 e7                                      ldr r3, [r5, r3]
004997a4  44 42 8d e5                                      str r4, [sp, #0x244]
004997a8  08 20 9a e5                                      ldr r2, [sl, #8]
004997ac  08 30 83 e2                                      add r3, r3, #8
004997b0  48 42 8d e5                                      str r4, [sp, #0x248]
004997b4  b4 21 8d e5                                      str r2, [sp, #0x1b4]
004997b8  fc 31 8d e5                                      str r3, [sp, #0x1fc]
004997bc  0c 30 12 e5                                      ldr r3, [r2, #-0xc]
004997c0  0c 20 9a e5                                      ldr r2, [sl, #0xc]
004997c4  04 10 a0 e1                                      mov r1, r4
004997c8  03 20 86 e7                                      str r2, [r6, r3]
004997cc  b4 31 9d e5                                      ldr r3, [sp, #0x1b4]
004997d0  b8 41 8d e5                                      str r4, [sp, #0x1b8]
004997d4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
004997d8  00 00 86 e0                                      add r0, r6, r0
004997dc  30 26 fa eb                                      bl #0x3230a4
004997e0  10 30 9a e5                                      ldr r3, [sl, #0x10]
004997e4  14 20 9a e5                                      ldr r2, [sl, #0x14]
004997e8  04 10 a0 e1                                      mov r1, r4
004997ec  bc 31 8d e5                                      str r3, [sp, #0x1bc]
004997f0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
004997f4  03 20 89 e7                                      str r2, [sb, r3]
004997f8  bc 31 9d e5                                      ldr r3, [sp, #0x1bc]
004997fc  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00499800  00 00 89 e0                                      add r0, sb, r0
00499804  26 26 fa eb                                      bl #0x3230a4
00499808  04 10 9a e5                                      ldr r1, [sl, #4]
0049980c  18 20 9a e5                                      ldr r2, [sl, #0x18]
00499810  1c 30 9a e5                                      ldr r3, [sl, #0x1c]
00499814  b4 11 8d e5                                      str r1, [sp, #0x1b4]
00499818  0c 00 11 e5                                      ldr r0, [r1, #-0xc]
0049981c  04 10 a0 e1                                      mov r1, r4
00499820  00 20 86 e7                                      str r2, [r6, r0]
00499824  bc 31 8d e5                                      str r3, [sp, #0x1bc]
00499828  b4 31 9d e5                                      ldr r3, [sp, #0x1b4]
0049982c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00499830  00 00 86 e0                                      add r0, r6, r0
00499834  1a 26 fa eb                                      bl #0x3230a4
00499838  28 31 9f e5                                      ldr r3, [pc, #0x128]
0049983c  28 21 9f e5                                      ldr r2, [pc, #0x128]
00499840  28 00 86 e2                                      add r0, r6, #0x28
00499844  03 30 95 e7                                      ldr r3, [r5, r3]
00499848  02 20 95 e7                                      ldr r2, [r5, r2]
0049984c  c4 41 8d e5                                      str r4, [sp, #0x1c4]
00499850  0c c0 83 e2                                      add ip, r3, #0xc
00499854  20 10 83 e2                                      add r1, r3, #0x20
00499858  08 20 82 e2                                      add r2, r2, #8
0049985c  34 30 83 e2                                      add r3, r3, #0x34
00499860  b4 c1 8d e5                                      str ip, [sp, #0x1b4]
00499864  fc 31 8d e5                                      str r3, [sp, #0x1fc]
00499868  bc 11 8d e5                                      str r1, [sp, #0x1bc]
0049986c  c0 21 8d e5                                      str r2, [sp, #0x1c0]
00499870  c8 41 8d e5                                      str r4, [sp, #0x1c8]
00499874  cc 41 8d e5                                      str r4, [sp, #0x1cc]
00499878  d0 41 8d e5                                      str r4, [sp, #0x1d0]
0049987c  d4 41 8d e5                                      str r4, [sp, #0x1d4]
00499880  d8 41 8d e5                                      str r4, [sp, #0x1d8]
00499884  71 bd 09 eb                                      bl #0x708e50
00499888  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
0049988c  30 30 86 e2                                      add r3, r6, #0x30
00499890  03 00 a0 e1                                      mov r0, r3
00499894  02 20 95 e7                                      ldr r2, [r5, r2]
00499898  10 10 a0 e3                                      mov r1, #0x10
0049989c  f4 31 8d e5                                      str r3, [sp, #0x1f4]
004998a0  08 20 82 e2                                      add r2, r2, #8
004998a4  c0 21 8d e5                                      str r2, [sp, #0x1c0]
004998a8  18 20 a0 e3                                      mov r2, #0x18
004998ac  e0 21 8d e5                                      str r2, [sp, #0x1e0]
004998b0  f8 31 8d e5                                      str r3, [sp, #0x1f8]
004998b4  70 df f9 eb                                      bl #0x31167c
004998b8  f4 31 9d e5                                      ldr r3, [sp, #0x1f4]
004998bc  0b 00 a0 e1                                      mov r0, fp
004998c0  0c 10 86 e2                                      add r1, r6, #0xc
004998c4  00 40 c3 e5                                      strb r4, [r3]
004998c8  f5 25 fa eb                                      bl #0x3230a4
004998cc  10 10 9d e5                                      ldr r1, [sp, #0x10]
004998d0  09 00 a0 e1                                      mov r0, sb
004998d4  58 d9 f9 eb                                      bl #0x30fe3c
004998d8  14 10 9d e5                                      ldr r1, [sp, #0x14]
004998dc  56 d9 f9 eb                                      bl #0x30fe3c
004998e0  08 00 a0 e1                                      mov r0, r8
004998e4  f8 11 9d e5                                      ldr r1, [sp, #0x1f8]
004998e8  f4 21 9d e5                                      ldr r2, [sp, #0x1f4]
004998ec  5c 82 8d e5                                      str r8, [sp, #0x25c]
004998f0  60 82 8d e5                                      str r8, [sp, #0x260]
004998f4  7b df f9 eb                                      bl #0x3116e8
004998f8  04 10 a0 e1                                      mov r1, r4
004998fc  0a 20 a0 e3                                      mov r2, #0xa
00499900  60 02 9d e5                                      ldr r0, [sp, #0x260]
00499904  6e d3 f9 eb                                      bl #0x30e6c4
00499908  00 40 a0 e1                                      mov r4, r0
0049990c  08 00 a0 e1                                      mov r0, r8
00499910  25 e8 f9 eb                                      bl #0x3139ac
00499914  06 00 a0 e1                                      mov r0, r6
00499918  89 be fb eb                                      bl #0x389344
0049991c  07 00 a0 e1                                      mov r0, r7
00499920  99 27 ff eb                                      bl #0x46378c
00499924  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00499928  04 00 a0 e1                                      mov r0, r4
0049992c  02 30 95 e7                                      ldr r3, [r5, r2]
00499930  64 22 9d e5                                      ldr r2, [sp, #0x264]
00499934  00 30 93 e5                                      ldr r3, [r3]
00499938  03 00 52 e1                                      cmp r2, r3
0049993c  01 00 00 1a                                      bne #0x499948
00499940  9b df 8d e2                                      add sp, sp, #0x26c
00499944  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00499948  70 d2 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0049994c  ec b3 4f 00 ac 40 00 00 f4 37 00 00 f4 ba 43 00  .byte 0xec, 0xb3, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xf4, 0xba, 0x43, 0x00
0049995c  9c 1a 00 00 cc 38 00 00 30 37 00 00 40 0e 00 00  .byte 0x9c, 0x1a, 0x00, 0x00, 0xcc, 0x38, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00, 0x40, 0x0e, 0x00, 0x00
0049996c  b4 07 00 00 50 4a 00 00                          .byte 0xb4, 0x07, 0x00, 0x00, 0x50, 0x4a, 0x00, 0x00

; FUNCTION 0x004999b8, declared_size=288, range_size=288, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter15ResetPlayerListEv
; demangled: GameCenter::ResetPlayerList()
; decoder-mode: arm
004999b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004999bc  04 41 9f e5                                      ldr r4, [pc, #0x104]
004999c0  04 51 9f e5                                      ldr r5, [pc, #0x104]
004999c4  20 d0 4d e2                                      sub sp, sp, #0x20
004999c8  04 40 8f e0                                      add r4, pc, r4
004999cc  05 30 94 e7                                      ldr r3, [r4, r5]
004999d0  24 80 80 e2                                      add r8, r0, #0x24
004999d4  00 60 a0 e1                                      mov r6, r0
004999d8  00 30 93 e5                                      ldr r3, [r3]
004999dc  04 70 8d e2                                      add r7, sp, #4
004999e0  08 00 a0 e1                                      mov r0, r8
004999e4  1c 30 8d e5                                      str r3, [sp, #0x1c]
004999e8  0c 3d fa eb                                      bl #0x328e20
004999ec  0d 20 a0 e1                                      mov r2, sp
004999f0  34 10 96 e5                                      ldr r1, [r6, #0x34]
004999f4  07 00 a0 e1                                      mov r0, r7
004999f8  bb e9 f9 eb                                      bl #0x3140ec
004999fc  07 10 a0 e1                                      mov r1, r7
00499a00  08 00 a0 e1                                      mov r0, r8
00499a04  da ff ff eb                                      bl #0x499974
00499a08  28 20 96 e5                                      ldr r2, [r6, #0x28]
00499a0c  00 30 a0 e1                                      mov r3, r0
00499a10  00 80 80 e5                                      str r8, [r0]
00499a14  04 20 83 e5                                      str r2, [r3, #4]
00499a18  07 00 a0 e1                                      mov r0, r7
00499a1c  00 30 82 e5                                      str r3, [r2]
00499a20  28 30 86 e5                                      str r3, [r6, #0x28]
00499a24  e0 e7 f9 eb                                      bl #0x3139ac
00499a28  74 00 96 e5                                      ldr r0, [r6, #0x74]
00499a2c  00 00 50 e3                                      cmp r0, #0
00499a30  0c 00 00 0a                                      beq #0x499a68
00499a34  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00499a38  00 00 53 e3                                      cmp r3, #0
00499a3c  10 20 90 15                                      ldrne r2, [r0, #0x10]
00499a40  10 30 90 05                                      ldreq r3, [r0, #0x10]
00499a44  10 20 83 15                                      strne r2, [r3, #0x10]
00499a48  78 30 86 05                                      streq r3, [r6, #0x78]
00499a4c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00499a50  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00499a54  00 20 83 e5                                      str r2, [r3]
00499a58  24 d1 f9 eb                                      bl #0x30def0
00499a5c  74 00 96 e5                                      ldr r0, [r6, #0x74]
00499a60  00 00 50 e3                                      cmp r0, #0
00499a64  f2 ff ff 1a                                      bne #0x499a34
00499a68  15 30 d6 e5                                      ldrb r3, [r6, #0x15]
00499a6c  00 00 53 e3                                      cmp r3, #0
00499a70  0c 00 00 1a                                      bne #0x499aa8
00499a74  54 20 9f e5                                      ldr r2, [pc, #0x54]
00499a78  06 00 a0 e1                                      mov r0, r6
00499a7c  34 10 96 e5                                      ldr r1, [r6, #0x34]
00499a80  02 20 8f e0                                      add r2, pc, r2
00499a84  01 30 a0 e3                                      mov r3, #1
00499a88  f5 fd ff eb                                      bl #0x499264
00499a8c  05 30 94 e7                                      ldr r3, [r4, r5]
00499a90  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00499a94  00 30 93 e5                                      ldr r3, [r3]
00499a98  03 00 52 e1                                      cmp r2, r3
00499a9c  08 00 00 1a                                      bne #0x499ac4
00499aa0  20 d0 8d e2                                      add sp, sp, #0x20
00499aa4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00499aa8  24 20 9f e5                                      ldr r2, [pc, #0x24]
00499aac  06 00 a0 e1                                      mov r0, r6
00499ab0  34 10 96 e5                                      ldr r1, [r6, #0x34]
00499ab4  02 20 8f e0                                      add r2, pc, r2
00499ab8  00 30 a0 e3                                      mov r3, #0
00499abc  e8 fd ff eb                                      bl #0x499264
00499ac0  f1 ff ff ea                                      b #0x499a8c
00499ac4  11 d2 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00499ac8  c8 b0 4f 00 ac 40 00 00 f0 b6 43 00 bc b6 43 00  .byte 0xc8, 0xb0, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0xb6, 0x43, 0x00, 0xbc, 0xb6, 0x43, 0x00

; FUNCTION 0x00499efc, declared_size=40, range_size=40, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter15CoinTossForHostEv
; demangled: GameCenter::CoinTossForHost()
; decoder-mode: arm
00499efc  10 40 2d e9                                      push {r4, lr}
00499f00  08 d0 4d e2                                      sub sp, sp, #8
00499f04  00 40 a0 e1                                      mov r4, r0
00499f08  04 10 8d e2                                      add r1, sp, #4
00499f0c  24 00 80 e2                                      add r0, r0, #0x24
00499f10  f0 fe ff eb                                      bl #0x499ad8
00499f14  24 30 94 e5                                      ldr r3, [r4, #0x24]
00499f18  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00499f1c  08 d0 8d e2                                      add sp, sp, #8
00499f20  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00499f24, declared_size=164, range_size=164, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter22GCStartMultiplayerGameEv
; demangled: GameCenter::GCStartMultiplayerGame()
; decoder-mode: arm
00499f24  70 40 2d e9                                      push {r4, r5, r6, lr}
00499f28  08 d0 4d e2                                      sub sp, sp, #8
00499f2c  00 50 a0 e1                                      mov r5, r0
00499f30  74 47 fa eb                                      bl #0x32bd08
00499f34  15 40 d0 e5                                      ldrb r4, [r0, #0x15]
00499f38  00 00 54 e3                                      cmp r4, #0
00499f3c  01 00 00 0a                                      beq #0x499f48
00499f40  08 d0 8d e2                                      add sp, sp, #8
00499f44  70 80 bd e8                                      pop {r4, r5, r6, pc}
00499f48  d2 1b fa eb                                      bl #0x320e98
00499f4c  01 60 a0 e3                                      mov r6, #1
00499f50  28 60 c0 e5                                      strb r6, [r0, #0x28]
00499f54  6b 47 fa eb                                      bl #0x32bd08
00499f58  11 60 c0 e5                                      strb r6, [r0, #0x11]
00499f5c  69 47 fa eb                                      bl #0x32bd08
00499f60  04 10 a0 e1                                      mov r1, r4
00499f64  1c 00 80 e2                                      add r0, r0, #0x1c
00499f68  ed d1 f9 eb                                      bl #0x30e724
00499f6c  65 47 fa eb                                      bl #0x32bd08
00499f70  e1 ff ff eb                                      bl #0x499efc
00499f74  00 60 a0 e1                                      mov r6, r0
00499f78  62 47 fa eb                                      bl #0x32bd08
00499f7c  30 60 80 e5                                      str r6, [r0, #0x30]
00499f80  05 00 a0 e1                                      mov r0, r5
00499f84  9f fc ff eb                                      bl #0x499208
00499f88  bf 4a fe eb                                      bl #0x42ca8c
00499f8c  fb 4a fe eb                                      bl #0x42cb80
00499f90  28 10 9f e5                                      ldr r1, [pc, #0x28]
00499f94  28 20 9f e5                                      ldr r2, [pc, #0x28]
00499f98  04 30 a0 e1                                      mov r3, r4
00499f9c  01 10 8f e0                                      add r1, pc, r1
00499fa0  02 20 8f e0                                      add r2, pc, r2
00499fa4  00 40 8d e5                                      str r4, [sp]
00499fa8  0e 4e 0c eb                                      bl #0x7ad7e8
00499fac  b9 1b fa eb                                      bl #0x320e98
00499fb0  04 10 a0 e3                                      mov r1, #4
00499fb4  08 d0 8d e2                                      add sp, sp, #8
00499fb8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00499fbc  3f 19 00 ea                                      b #0x4a04c0
; mapping-symbol data/literal pool
00499fc0  64 92 42 00 40 1d 43 00                          .byte 0x64, 0x92, 0x42, 0x00, 0x40, 0x1d, 0x43, 0x00

; FUNCTION 0x00499fc8, declared_size=32, range_size=32, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter22GCStartMultiplayerGameEb
; demangled: GameCenter::GCStartMultiplayerGame(bool)
; decoder-mode: arm
00499fc8  10 40 2d e9                                      push {r4, lr}
00499fcc  00 40 a0 e1                                      mov r4, r0
00499fd0  4c 47 fa eb                                      bl #0x32bd08
00499fd4  00 30 a0 e3                                      mov r3, #0
00499fd8  15 30 c0 e5                                      strb r3, [r0, #0x15]
00499fdc  04 00 a0 e1                                      mov r0, r4
00499fe0  10 40 bd e8                                      pop {r4, lr}
00499fe4  ce ff ff ea                                      b #0x499f24

; FUNCTION 0x00499fe8, declared_size=84, range_size=84, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter17GetJoinPlayerListEv
; demangled: GameCenter::GetJoinPlayerList()
; decoder-mode: arm
00499fe8  70 40 2d e9                                      push {r4, r5, r6, lr}
00499fec  00 40 a0 e1                                      mov r4, r0
00499ff0  01 60 a0 e1                                      mov r6, r1
00499ff4  00 00 84 e5                                      str r0, [r4]
00499ff8  04 00 84 e5                                      str r0, [r4, #4]
00499ffc  24 50 b6 e5                                      ldr r5, [r6, #0x24]!
0049a000  06 00 55 e1                                      cmp r5, r6
0049a004  0a 00 00 0a                                      beq #0x49a034
0049a008  08 10 85 e2                                      add r1, r5, #8
0049a00c  04 00 a0 e1                                      mov r0, r4
0049a010  57 fe ff eb                                      bl #0x499974
0049a014  04 30 94 e5                                      ldr r3, [r4, #4]
0049a018  00 40 80 e5                                      str r4, [r0]
0049a01c  04 30 80 e5                                      str r3, [r0, #4]
0049a020  00 00 83 e5                                      str r0, [r3]
0049a024  04 00 84 e5                                      str r0, [r4, #4]
0049a028  00 50 95 e5                                      ldr r5, [r5]
0049a02c  05 00 56 e1                                      cmp r6, r5
0049a030  f4 ff ff 1a                                      bne #0x49a008
0049a034  04 00 a0 e1                                      mov r0, r4
0049a038  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0049a03c, declared_size=136, range_size=136, mode=arm
; class-group: GameCenter
; alias: _ZN10GameCenter21GCAddToJoinPlayerListEPKc
; demangled: GameCenter::GCAddToJoinPlayerList(char const*)
; decoder-mode: arm
0049a03c  78 30 9f e5                                      ldr r3, [pc, #0x78]
0049a040  78 20 9f e5                                      ldr r2, [pc, #0x78]
0049a044  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0049a048  03 30 8f e0                                      add r3, pc, r3
0049a04c  02 60 93 e7                                      ldr r6, [r3, r2]
0049a050  24 d0 4d e2                                      sub sp, sp, #0x24
0049a054  04 50 8d e2                                      add r5, sp, #4
0049a058  00 c0 96 e5                                      ldr ip, [r6]
0049a05c  00 40 a0 e1                                      mov r4, r0
0049a060  0d 20 a0 e1                                      mov r2, sp
0049a064  24 70 80 e2                                      add r7, r0, #0x24
0049a068  05 00 a0 e1                                      mov r0, r5
0049a06c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0049a070  1d e8 f9 eb                                      bl #0x3140ec
0049a074  05 10 a0 e1                                      mov r1, r5
0049a078  07 00 a0 e1                                      mov r0, r7
0049a07c  3c fe ff eb                                      bl #0x499974
0049a080  28 20 94 e5                                      ldr r2, [r4, #0x28]
0049a084  00 30 a0 e1                                      mov r3, r0
0049a088  00 70 80 e5                                      str r7, [r0]
0049a08c  04 20 83 e5                                      str r2, [r3, #4]
0049a090  05 00 a0 e1                                      mov r0, r5
0049a094  00 30 82 e5                                      str r3, [r2]
0049a098  28 30 84 e5                                      str r3, [r4, #0x28]
0049a09c  42 e6 f9 eb                                      bl #0x3139ac
0049a0a0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0049a0a4  00 30 96 e5                                      ldr r3, [r6]
0049a0a8  03 00 52 e1                                      cmp r2, r3
0049a0ac  01 00 00 1a                                      bne #0x49a0b8
0049a0b0  24 d0 8d e2                                      add sp, sp, #0x24
0049a0b4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0049a0b8  94 d0 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0049a0bc  48 aa 4f 00 ac 40 00 00                          .byte 0x48, 0xaa, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00
