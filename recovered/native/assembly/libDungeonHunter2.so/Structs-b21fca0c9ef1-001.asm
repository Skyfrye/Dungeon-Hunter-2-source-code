; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00456394, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs13FlushMessagesEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::FlushMessages>()
; decoder-mode: arm
00456394  10 40 2d e9                                      push {r4, lr}
00456398  00 10 a0 e3                                      mov r1, #0
0045639c  08 00 a0 e3                                      mov r0, #8
004563a0  72 e8 fa eb                                      bl #0x310570
004563a4  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004563a8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004563ac  00 10 a0 e3                                      mov r1, #0
004563b0  04 40 8f e0                                      add r4, pc, r4
004563b4  03 30 94 e7                                      ldr r3, [r4, r3]
004563b8  04 10 80 e5                                      str r1, [r0, #4]
004563bc  08 30 83 e2                                      add r3, r3, #8
004563c0  00 30 80 e5                                      str r3, [r0]
004563c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004563c8  e0 e6 53 00 6c 06 00 00                          .byte 0xe0, 0xe6, 0x53, 0x00, 0x6c, 0x06, 0x00, 0x00

; FUNCTION 0x004563d0, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs10DoTutorialEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::DoTutorial>()
; decoder-mode: arm
004563d0  10 40 2d e9                                      push {r4, lr}
004563d4  00 10 a0 e3                                      mov r1, #0
004563d8  14 00 a0 e3                                      mov r0, #0x14
004563dc  63 e8 fa eb                                      bl #0x310570
004563e0  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004563e4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004563e8  00 10 a0 e3                                      mov r1, #0
004563ec  04 40 8f e0                                      add r4, pc, r4
004563f0  03 30 94 e7                                      ldr r3, [r4, r3]
004563f4  0c 10 80 e5                                      str r1, [r0, #0xc]
004563f8  08 30 83 e2                                      add r3, r3, #8
004563fc  00 30 80 e5                                      str r3, [r0]
00456400  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456404  a4 e6 53 00 68 3c 00 00                          .byte 0xa4, 0xe6, 0x53, 0x00, 0x68, 0x3c, 0x00, 0x00

; FUNCTION 0x0045640c, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs12LockTutorialEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::LockTutorial>()
; decoder-mode: arm
0045640c  10 40 2d e9                                      push {r4, lr}
00456410  00 10 a0 e3                                      mov r1, #0
00456414  0c 00 a0 e3                                      mov r0, #0xc
00456418  54 e8 fa eb                                      bl #0x310570
0045641c  20 40 9f e5                                      ldr r4, [pc, #0x20]
00456420  20 20 9f e5                                      ldr r2, [pc, #0x20]
00456424  00 10 a0 e3                                      mov r1, #0
00456428  04 40 8f e0                                      add r4, pc, r4
0045642c  02 20 94 e7                                      ldr r2, [r4, r2]
00456430  08 10 80 e5                                      str r1, [r0, #8]
00456434  04 10 80 e5                                      str r1, [r0, #4]
00456438  08 20 82 e2                                      add r2, r2, #8
0045643c  00 20 80 e5                                      str r2, [r0]
00456440  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456444  68 e6 53 00 60 26 00 00                          .byte 0x68, 0xe6, 0x53, 0x00, 0x60, 0x26, 0x00, 0x00

; FUNCTION 0x0045644c, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs31SkipAllCharMenuTutorialMessagesEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SkipAllCharMenuTutorialMessages>()
; decoder-mode: arm
0045644c  10 40 2d e9                                      push {r4, lr}
00456450  00 10 a0 e3                                      mov r1, #0
00456454  08 00 a0 e3                                      mov r0, #8
00456458  44 e8 fa eb                                      bl #0x310570
0045645c  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456460  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456464  00 10 a0 e3                                      mov r1, #0
00456468  04 40 8f e0                                      add r4, pc, r4
0045646c  03 30 94 e7                                      ldr r3, [r4, r3]
00456470  04 10 80 e5                                      str r1, [r0, #4]
00456474  08 30 83 e2                                      add r3, r3, #8
00456478  00 30 80 e5                                      str r3, [r0]
0045647c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456480  28 e6 53 00 c4 2e 00 00                          .byte 0x28, 0xe6, 0x53, 0x00, 0xc4, 0x2e, 0x00, 0x00

; FUNCTION 0x00456488, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs27SkipCharMenuTutorialMessageEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SkipCharMenuTutorialMessage>()
; decoder-mode: arm
00456488  10 40 2d e9                                      push {r4, lr}
0045648c  00 10 a0 e3                                      mov r1, #0
00456490  08 00 a0 e3                                      mov r0, #8
00456494  35 e8 fa eb                                      bl #0x310570
00456498  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
0045649c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004564a0  00 10 a0 e3                                      mov r1, #0
004564a4  04 40 8f e0                                      add r4, pc, r4
004564a8  03 30 94 e7                                      ldr r3, [r4, r3]
004564ac  04 10 80 e5                                      str r1, [r0, #4]
004564b0  08 30 83 e2                                      add r3, r3, #8
004564b4  00 30 80 e5                                      str r3, [r0]
004564b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004564bc  ec e5 53 00 00 0c 00 00                          .byte 0xec, 0xe5, 0x53, 0x00, 0x00, 0x0c, 0x00, 0x00

; FUNCTION 0x004564c4, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs30EnqueueCharMenuTutorialMessageEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::EnqueueCharMenuTutorialMessage>()
; decoder-mode: arm
004564c4  10 40 2d e9                                      push {r4, lr}
004564c8  00 10 a0 e3                                      mov r1, #0
004564cc  1c 00 a0 e3                                      mov r0, #0x1c
004564d0  26 e8 fa eb                                      bl #0x310570
004564d4  20 40 9f e5                                      ldr r4, [pc, #0x20]
004564d8  20 20 9f e5                                      ldr r2, [pc, #0x20]
004564dc  00 10 a0 e3                                      mov r1, #0
004564e0  04 40 8f e0                                      add r4, pc, r4
004564e4  02 20 94 e7                                      ldr r2, [r4, r2]
004564e8  14 10 80 e5                                      str r1, [r0, #0x14]
004564ec  0c 10 80 e5                                      str r1, [r0, #0xc]
004564f0  08 20 82 e2                                      add r2, r2, #8
004564f4  00 20 80 e5                                      str r2, [r0]
004564f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004564fc  b0 e5 53 00 48 39 00 00                          .byte 0xb0, 0xe5, 0x53, 0x00, 0x48, 0x39, 0x00, 0x00

; FUNCTION 0x00456504, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs23SkipAllTutorialMessagesEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SkipAllTutorialMessages>()
; decoder-mode: arm
00456504  10 40 2d e9                                      push {r4, lr}
00456508  00 10 a0 e3                                      mov r1, #0
0045650c  08 00 a0 e3                                      mov r0, #8
00456510  16 e8 fa eb                                      bl #0x310570
00456514  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456518  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0045651c  00 10 a0 e3                                      mov r1, #0
00456520  04 40 8f e0                                      add r4, pc, r4
00456524  03 30 94 e7                                      ldr r3, [r4, r3]
00456528  04 10 80 e5                                      str r1, [r0, #4]
0045652c  08 30 83 e2                                      add r3, r3, #8
00456530  00 30 80 e5                                      str r3, [r0]
00456534  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456538  70 e5 53 00 c4 46 00 00                          .byte 0x70, 0xe5, 0x53, 0x00, 0xc4, 0x46, 0x00, 0x00

; FUNCTION 0x00456540, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs19SkipTutorialMessageEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SkipTutorialMessage>()
; decoder-mode: arm
00456540  10 40 2d e9                                      push {r4, lr}
00456544  00 10 a0 e3                                      mov r1, #0
00456548  08 00 a0 e3                                      mov r0, #8
0045654c  07 e8 fa eb                                      bl #0x310570
00456550  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456554  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456558  00 10 a0 e3                                      mov r1, #0
0045655c  04 40 8f e0                                      add r4, pc, r4
00456560  03 30 94 e7                                      ldr r3, [r4, r3]
00456564  04 10 80 e5                                      str r1, [r0, #4]
00456568  08 30 83 e2                                      add r3, r3, #8
0045656c  00 30 80 e5                                      str r3, [r0]
00456570  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456574  34 e5 53 00 bc 3c 00 00                          .byte 0x34, 0xe5, 0x53, 0x00, 0xbc, 0x3c, 0x00, 0x00

; FUNCTION 0x0045657c, declared_size=68, range_size=68, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs22EnqueueTutorialMessageEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::EnqueueTutorialMessage>()
; decoder-mode: arm
0045657c  10 40 2d e9                                      push {r4, lr}
00456580  00 10 a0 e3                                      mov r1, #0
00456584  10 00 a0 e3                                      mov r0, #0x10
00456588  f8 e7 fa eb                                      bl #0x310570
0045658c  24 40 9f e5                                      ldr r4, [pc, #0x24]
00456590  24 10 9f e5                                      ldr r1, [pc, #0x24]
00456594  00 20 a0 e3                                      mov r2, #0
00456598  04 40 8f e0                                      add r4, pc, r4
0045659c  01 10 94 e7                                      ldr r1, [r4, r1]
004565a0  0c 20 80 e5                                      str r2, [r0, #0xc]
004565a4  04 20 80 e5                                      str r2, [r0, #4]
004565a8  08 10 81 e2                                      add r1, r1, #8
004565ac  00 10 80 e5                                      str r1, [r0]
004565b0  08 20 80 e5                                      str r2, [r0, #8]
004565b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004565b8  f8 e4 53 00 5c 1f 00 00                          .byte 0xf8, 0xe4, 0x53, 0x00, 0x5c, 0x1f, 0x00, 0x00

; FUNCTION 0x004565c0, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs13BlockSaveGameEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::BlockSaveGame>()
; decoder-mode: arm
004565c0  10 40 2d e9                                      push {r4, lr}
004565c4  00 10 a0 e3                                      mov r1, #0
004565c8  08 00 a0 e3                                      mov r0, #8
004565cc  e7 e7 fa eb                                      bl #0x310570
004565d0  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004565d4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004565d8  00 10 a0 e3                                      mov r1, #0
004565dc  04 40 8f e0                                      add r4, pc, r4
004565e0  03 30 94 e7                                      ldr r3, [r4, r3]
004565e4  04 10 80 e5                                      str r1, [r0, #4]
004565e8  08 30 83 e2                                      add r3, r3, #8
004565ec  00 30 80 e5                                      str r3, [r0]
004565f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004565f4  b4 e4 53 00 8c 3a 00 00                          .byte 0xb4, 0xe4, 0x53, 0x00, 0x8c, 0x3a, 0x00, 0x00

; FUNCTION 0x004565fc, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs8SaveGameEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SaveGame>()
; decoder-mode: arm
004565fc  10 40 2d e9                                      push {r4, lr}
00456600  00 10 a0 e3                                      mov r1, #0
00456604  08 00 a0 e3                                      mov r0, #8
00456608  d8 e7 fa eb                                      bl #0x310570
0045660c  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456610  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456614  00 10 a0 e3                                      mov r1, #0
00456618  04 40 8f e0                                      add r4, pc, r4
0045661c  03 30 94 e7                                      ldr r3, [r4, r3]
00456620  04 10 80 e5                                      str r1, [r0, #4]
00456624  08 30 83 e2                                      add r3, r3, #8
00456628  00 30 80 e5                                      str r3, [r0]
0045662c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456630  78 e4 53 00 a0 2d 00 00                          .byte 0x78, 0xe4, 0x53, 0x00, 0xa0, 0x2d, 0x00, 0x00

; FUNCTION 0x00456638, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs12ShowTrophiesEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::ShowTrophies>()
; decoder-mode: arm
00456638  10 40 2d e9                                      push {r4, lr}
0045663c  00 10 a0 e3                                      mov r1, #0
00456640  08 00 a0 e3                                      mov r0, #8
00456644  c9 e7 fa eb                                      bl #0x310570
00456648  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
0045664c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456650  00 10 a0 e3                                      mov r1, #0
00456654  04 40 8f e0                                      add r4, pc, r4
00456658  03 30 94 e7                                      ldr r3, [r4, r3]
0045665c  04 10 80 e5                                      str r1, [r0, #4]
00456660  08 30 83 e2                                      add r3, r3, #8
00456664  00 30 80 e5                                      str r3, [r0]
00456668  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0045666c  3c e4 53 00 0c 46 00 00                          .byte 0x3c, 0xe4, 0x53, 0x00, 0x0c, 0x46, 0x00, 0x00

; FUNCTION 0x00456674, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs20AwardEndGameTrophiesEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::AwardEndGameTrophies>()
; decoder-mode: arm
00456674  10 40 2d e9                                      push {r4, lr}
00456678  00 10 a0 e3                                      mov r1, #0
0045667c  08 00 a0 e3                                      mov r0, #8
00456680  ba e7 fa eb                                      bl #0x310570
00456684  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456688  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0045668c  00 10 a0 e3                                      mov r1, #0
00456690  04 40 8f e0                                      add r4, pc, r4
00456694  03 30 94 e7                                      ldr r3, [r4, r3]
00456698  04 10 80 e5                                      str r1, [r0, #4]
0045669c  08 30 83 e2                                      add r3, r3, #8
004566a0  00 30 80 e5                                      str r3, [r0]
004566a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004566a8  00 e4 53 00 40 2b 00 00                          .byte 0x00, 0xe4, 0x53, 0x00, 0x40, 0x2b, 0x00, 0x00

; FUNCTION 0x004566b0, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs11AwardTrophyEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::AwardTrophy>()
; decoder-mode: arm
004566b0  10 40 2d e9                                      push {r4, lr}
004566b4  00 10 a0 e3                                      mov r1, #0
004566b8  0c 00 a0 e3                                      mov r0, #0xc
004566bc  ab e7 fa eb                                      bl #0x310570
004566c0  20 40 9f e5                                      ldr r4, [pc, #0x20]
004566c4  20 20 9f e5                                      ldr r2, [pc, #0x20]
004566c8  00 10 a0 e3                                      mov r1, #0
004566cc  04 40 8f e0                                      add r4, pc, r4
004566d0  02 20 94 e7                                      ldr r2, [r4, r2]
004566d4  08 10 80 e5                                      str r1, [r0, #8]
004566d8  04 10 80 e5                                      str r1, [r0, #4]
004566dc  08 20 82 e2                                      add r2, r2, #8
004566e0  00 20 80 e5                                      str r2, [r0]
004566e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004566e8  c4 e3 53 00 dc 14 00 00                          .byte 0xc4, 0xe3, 0x53, 0x00, 0xdc, 0x14, 0x00, 0x00

; FUNCTION 0x004566f0, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs7EndGameEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::EndGame>()
; decoder-mode: arm
004566f0  10 40 2d e9                                      push {r4, lr}
004566f4  00 10 a0 e3                                      mov r1, #0
004566f8  08 00 a0 e3                                      mov r0, #8
004566fc  9b e7 fa eb                                      bl #0x310570
00456700  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456704  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456708  00 10 a0 e3                                      mov r1, #0
0045670c  04 40 8f e0                                      add r4, pc, r4
00456710  03 30 94 e7                                      ldr r3, [r4, r3]
00456714  04 10 80 e5                                      str r1, [r0, #4]
00456718  08 30 83 e2                                      add r3, r3, #8
0045671c  00 30 80 e5                                      str r3, [r0]
00456720  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456724  84 e3 53 00 f0 2c 00 00                          .byte 0x84, 0xe3, 0x53, 0x00, 0xf0, 0x2c, 0x00, 0x00

; FUNCTION 0x0045672c, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs11ChangeLevelEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::ChangeLevel>()
; decoder-mode: arm
0045672c  10 40 2d e9                                      push {r4, lr}
00456730  00 10 a0 e3                                      mov r1, #0
00456734  14 00 a0 e3                                      mov r0, #0x14
00456738  8c e7 fa eb                                      bl #0x310570
0045673c  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456740  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456744  00 10 a0 e3                                      mov r1, #0
00456748  04 40 8f e0                                      add r4, pc, r4
0045674c  03 30 94 e7                                      ldr r3, [r4, r3]
00456750  10 10 80 e5                                      str r1, [r0, #0x10]
00456754  08 30 83 e2                                      add r3, r3, #8
00456758  00 30 80 e5                                      str r3, [r0]
0045675c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456760  48 e3 53 00 00 0b 00 00                          .byte 0x48, 0xe3, 0x53, 0x00, 0x00, 0x0b, 0x00, 0x00

; FUNCTION 0x00456768, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs12RestartLevelEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::RestartLevel>()
; decoder-mode: arm
00456768  10 40 2d e9                                      push {r4, lr}
0045676c  00 10 a0 e3                                      mov r1, #0
00456770  08 00 a0 e3                                      mov r0, #8
00456774  7d e7 fa eb                                      bl #0x310570
00456778  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
0045677c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456780  00 10 a0 e3                                      mov r1, #0
00456784  04 40 8f e0                                      add r4, pc, r4
00456788  03 30 94 e7                                      ldr r3, [r4, r3]
0045678c  04 10 80 e5                                      str r1, [r0, #4]
00456790  08 30 83 e2                                      add r3, r3, #8
00456794  00 30 80 e5                                      str r3, [r0]
00456798  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0045679c  0c e3 53 00 08 4a 00 00                          .byte 0x0c, 0xe3, 0x53, 0x00, 0x08, 0x4a, 0x00, 0x00

; FUNCTION 0x004567a4, declared_size=68, range_size=68, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs24SetWorldMapLocationStateEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SetWorldMapLocationState>()
; decoder-mode: arm
004567a4  10 40 2d e9                                      push {r4, lr}
004567a8  00 10 a0 e3                                      mov r1, #0
004567ac  10 00 a0 e3                                      mov r0, #0x10
004567b0  6e e7 fa eb                                      bl #0x310570
004567b4  24 40 9f e5                                      ldr r4, [pc, #0x24]
004567b8  24 10 9f e5                                      ldr r1, [pc, #0x24]
004567bc  00 20 a0 e3                                      mov r2, #0
004567c0  04 40 8f e0                                      add r4, pc, r4
004567c4  01 10 94 e7                                      ldr r1, [r4, r1]
004567c8  0c 20 80 e5                                      str r2, [r0, #0xc]
004567cc  04 20 80 e5                                      str r2, [r0, #4]
004567d0  08 10 81 e2                                      add r1, r1, #8
004567d4  00 10 80 e5                                      str r1, [r0]
004567d8  08 20 80 e5                                      str r2, [r0, #8]
004567dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004567e0  d0 e2 53 00 90 2b 00 00                          .byte 0xd0, 0xe2, 0x53, 0x00, 0x90, 0x2b, 0x00, 0x00

; FUNCTION 0x004567e8, declared_size=68, range_size=68, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs13SetLevelStateEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SetLevelState>()
; decoder-mode: arm
004567e8  10 40 2d e9                                      push {r4, lr}
004567ec  00 10 a0 e3                                      mov r1, #0
004567f0  10 00 a0 e3                                      mov r0, #0x10
004567f4  5d e7 fa eb                                      bl #0x310570
004567f8  24 40 9f e5                                      ldr r4, [pc, #0x24]
004567fc  24 10 9f e5                                      ldr r1, [pc, #0x24]
00456800  00 20 a0 e3                                      mov r2, #0
00456804  04 40 8f e0                                      add r4, pc, r4
00456808  01 10 94 e7                                      ldr r1, [r4, r1]
0045680c  0c 20 80 e5                                      str r2, [r0, #0xc]
00456810  04 20 80 e5                                      str r2, [r0, #4]
00456814  08 10 81 e2                                      add r1, r1, #8
00456818  00 10 80 e5                                      str r1, [r0]
0045681c  08 20 80 e5                                      str r2, [r0, #8]
00456820  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456824  8c e2 53 00 98 21 00 00                          .byte 0x8c, 0xe2, 0x53, 0x00, 0x98, 0x21, 0x00, 0x00

; FUNCTION 0x0045682c, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs14SpawnContainerEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SpawnContainer>()
; decoder-mode: arm
0045682c  10 40 2d e9                                      push {r4, lr}
00456830  00 10 a0 e3                                      mov r1, #0
00456834  10 00 a0 e3                                      mov r0, #0x10
00456838  4c e7 fa eb                                      bl #0x310570
0045683c  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456840  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456844  00 10 a0 e3                                      mov r1, #0
00456848  04 40 8f e0                                      add r4, pc, r4
0045684c  03 30 94 e7                                      ldr r3, [r4, r3]
00456850  0c 10 80 e5                                      str r1, [r0, #0xc]
00456854  08 30 83 e2                                      add r3, r3, #8
00456858  00 30 80 e5                                      str r3, [r0]
0045685c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456860  48 e2 53 00 48 1e 00 00                          .byte 0x48, 0xe2, 0x53, 0x00, 0x48, 0x1e, 0x00, 0x00

; FUNCTION 0x00456868, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs22DeactivateTriggerPlateEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::DeactivateTriggerPlate>()
; decoder-mode: arm
00456868  10 40 2d e9                                      push {r4, lr}
0045686c  00 10 a0 e3                                      mov r1, #0
00456870  10 00 a0 e3                                      mov r0, #0x10
00456874  3d e7 fa eb                                      bl #0x310570
00456878  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
0045687c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456880  00 10 a0 e3                                      mov r1, #0
00456884  04 40 8f e0                                      add r4, pc, r4
00456888  03 30 94 e7                                      ldr r3, [r4, r3]
0045688c  0c 10 80 e5                                      str r1, [r0, #0xc]
00456890  08 30 83 e2                                      add r3, r3, #8
00456894  00 30 80 e5                                      str r3, [r0]
00456898  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0045689c  0c e2 53 00 c4 0b 00 00                          .byte 0x0c, 0xe2, 0x53, 0x00, 0xc4, 0x0b, 0x00, 0x00

; FUNCTION 0x004568a4, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs20ActivateTriggerPlateEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::ActivateTriggerPlate>()
; decoder-mode: arm
004568a4  10 40 2d e9                                      push {r4, lr}
004568a8  00 10 a0 e3                                      mov r1, #0
004568ac  10 00 a0 e3                                      mov r0, #0x10
004568b0  2e e7 fa eb                                      bl #0x310570
004568b4  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004568b8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004568bc  00 10 a0 e3                                      mov r1, #0
004568c0  04 40 8f e0                                      add r4, pc, r4
004568c4  03 30 94 e7                                      ldr r3, [r4, r3]
004568c8  0c 10 80 e5                                      str r1, [r0, #0xc]
004568cc  08 30 83 e2                                      add r3, r3, #8
004568d0  00 30 80 e5                                      str r3, [r0]
004568d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004568d8  d0 e1 53 00 98 26 00 00                          .byte 0xd0, 0xe1, 0x53, 0x00, 0x98, 0x26, 0x00, 0x00

; FUNCTION 0x004568e0, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs24DeactivateProjectileTrapEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::DeactivateProjectileTrap>()
; decoder-mode: arm
004568e0  10 40 2d e9                                      push {r4, lr}
004568e4  00 10 a0 e3                                      mov r1, #0
004568e8  10 00 a0 e3                                      mov r0, #0x10
004568ec  1f e7 fa eb                                      bl #0x310570
004568f0  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004568f4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004568f8  00 10 a0 e3                                      mov r1, #0
004568fc  04 40 8f e0                                      add r4, pc, r4
00456900  03 30 94 e7                                      ldr r3, [r4, r3]
00456904  0c 10 80 e5                                      str r1, [r0, #0xc]
00456908  08 30 83 e2                                      add r3, r3, #8
0045690c  00 30 80 e5                                      str r3, [r0]
00456910  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456914  94 e1 53 00 fc 2e 00 00                          .byte 0x94, 0xe1, 0x53, 0x00, 0xfc, 0x2e, 0x00, 0x00

; FUNCTION 0x0045691c, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs22ActivateProjectileTrapEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::ActivateProjectileTrap>()
; decoder-mode: arm
0045691c  10 40 2d e9                                      push {r4, lr}
00456920  00 10 a0 e3                                      mov r1, #0
00456924  10 00 a0 e3                                      mov r0, #0x10
00456928  10 e7 fa eb                                      bl #0x310570
0045692c  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456930  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456934  00 10 a0 e3                                      mov r1, #0
00456938  04 40 8f e0                                      add r4, pc, r4
0045693c  03 30 94 e7                                      ldr r3, [r4, r3]
00456940  0c 10 80 e5                                      str r1, [r0, #0xc]
00456944  08 30 83 e2                                      add r3, r3, #8
00456948  00 30 80 e5                                      str r3, [r0]
0045694c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456950  58 e1 53 00 58 10 00 00                          .byte 0x58, 0xe1, 0x53, 0x00, 0x58, 0x10, 0x00, 0x00

; FUNCTION 0x00456958, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9CloseDoorEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::CloseDoor>()
; decoder-mode: arm
00456958  10 40 2d e9                                      push {r4, lr}
0045695c  00 10 a0 e3                                      mov r1, #0
00456960  14 00 a0 e3                                      mov r0, #0x14
00456964  01 e7 fa eb                                      bl #0x310570
00456968  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
0045696c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456970  00 10 a0 e3                                      mov r1, #0
00456974  04 40 8f e0                                      add r4, pc, r4
00456978  03 30 94 e7                                      ldr r3, [r4, r3]
0045697c  0c 10 80 e5                                      str r1, [r0, #0xc]
00456980  08 30 83 e2                                      add r3, r3, #8
00456984  00 30 80 e5                                      str r3, [r0]
00456988  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0045698c  1c e1 53 00 c0 47 00 00                          .byte 0x1c, 0xe1, 0x53, 0x00, 0xc0, 0x47, 0x00, 0x00

; FUNCTION 0x00456994, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs8OpenDoorEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::OpenDoor>()
; decoder-mode: arm
00456994  10 40 2d e9                                      push {r4, lr}
00456998  00 10 a0 e3                                      mov r1, #0
0045699c  14 00 a0 e3                                      mov r0, #0x14
004569a0  f2 e6 fa eb                                      bl #0x310570
004569a4  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004569a8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004569ac  00 10 a0 e3                                      mov r1, #0
004569b0  04 40 8f e0                                      add r4, pc, r4
004569b4  03 30 94 e7                                      ldr r3, [r4, r3]
004569b8  0c 10 80 e5                                      str r1, [r0, #0xc]
004569bc  08 30 83 e2                                      add r3, r3, #8
004569c0  00 30 80 e5                                      str r3, [r0]
004569c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004569c8  e0 e0 53 00 ec 40 00 00                          .byte 0xe0, 0xe0, 0x53, 0x00, 0xec, 0x40, 0x00, 0x00

; FUNCTION 0x004569d0, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9SetStaticEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SetStatic>()
; decoder-mode: arm
004569d0  10 40 2d e9                                      push {r4, lr}
004569d4  00 10 a0 e3                                      mov r1, #0
004569d8  14 00 a0 e3                                      mov r0, #0x14
004569dc  e3 e6 fa eb                                      bl #0x310570
004569e0  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004569e4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004569e8  00 10 a0 e3                                      mov r1, #0
004569ec  04 40 8f e0                                      add r4, pc, r4
004569f0  03 30 94 e7                                      ldr r3, [r4, r3]
004569f4  10 10 80 e5                                      str r1, [r0, #0x10]
004569f8  08 30 83 e2                                      add r3, r3, #8
004569fc  00 30 80 e5                                      str r3, [r0]
00456a00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456a04  a4 e0 53 00 60 3c 00 00                          .byte 0xa4, 0xe0, 0x53, 0x00, 0x60, 0x3c, 0x00, 0x00

; FUNCTION 0x00456a0c, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs12ReEquipHandsEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::ReEquipHands>()
; decoder-mode: arm
00456a0c  10 40 2d e9                                      push {r4, lr}
00456a10  00 10 a0 e3                                      mov r1, #0
00456a14  10 00 a0 e3                                      mov r0, #0x10
00456a18  d4 e6 fa eb                                      bl #0x310570
00456a1c  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456a20  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456a24  00 10 a0 e3                                      mov r1, #0
00456a28  04 40 8f e0                                      add r4, pc, r4
00456a2c  03 30 94 e7                                      ldr r3, [r4, r3]
00456a30  0c 10 80 e5                                      str r1, [r0, #0xc]
00456a34  08 30 83 e2                                      add r3, r3, #8
00456a38  00 30 80 e5                                      str r3, [r0]
00456a3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456a40  68 e0 53 00 c4 1f 00 00                          .byte 0x68, 0xe0, 0x53, 0x00, 0xc4, 0x1f, 0x00, 0x00

; FUNCTION 0x00456a48, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs12UnEquipHandsEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::UnEquipHands>()
; decoder-mode: arm
00456a48  10 40 2d e9                                      push {r4, lr}
00456a4c  00 10 a0 e3                                      mov r1, #0
00456a50  10 00 a0 e3                                      mov r0, #0x10
00456a54  c5 e6 fa eb                                      bl #0x310570
00456a58  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456a5c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456a60  00 10 a0 e3                                      mov r1, #0
00456a64  04 40 8f e0                                      add r4, pc, r4
00456a68  03 30 94 e7                                      ldr r3, [r4, r3]
00456a6c  0c 10 80 e5                                      str r1, [r0, #0xc]
00456a70  08 30 83 e2                                      add r3, r3, #8
00456a74  00 30 80 e5                                      str r3, [r0]
00456a78  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456a7c  2c e0 53 00 20 16 00 00                          .byte 0x2c, 0xe0, 0x53, 0x00, 0x20, 0x16, 0x00, 0x00

; FUNCTION 0x00456a84, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs19UnEquipItemFromSlotEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::UnEquipItemFromSlot>()
; decoder-mode: arm
00456a84  10 40 2d e9                                      push {r4, lr}
00456a88  00 10 a0 e3                                      mov r1, #0
00456a8c  14 00 a0 e3                                      mov r0, #0x14
00456a90  b6 e6 fa eb                                      bl #0x310570
00456a94  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456a98  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456a9c  00 10 a0 e3                                      mov r1, #0
00456aa0  04 40 8f e0                                      add r4, pc, r4
00456aa4  03 30 94 e7                                      ldr r3, [r4, r3]
00456aa8  10 10 80 e5                                      str r1, [r0, #0x10]
00456aac  08 30 83 e2                                      add r3, r3, #8
00456ab0  00 30 80 e5                                      str r3, [r0]
00456ab4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456ab8  f0 df 53 00 b0 12 00 00                          .byte 0xf0, 0xdf, 0x53, 0x00, 0xb0, 0x12, 0x00, 0x00

; FUNCTION 0x00456ac0, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9AutoEquipEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::AutoEquip>()
; decoder-mode: arm
00456ac0  10 40 2d e9                                      push {r4, lr}
00456ac4  00 10 a0 e3                                      mov r1, #0
00456ac8  10 00 a0 e3                                      mov r0, #0x10
00456acc  a7 e6 fa eb                                      bl #0x310570
00456ad0  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456ad4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456ad8  00 10 a0 e3                                      mov r1, #0
00456adc  04 40 8f e0                                      add r4, pc, r4
00456ae0  03 30 94 e7                                      ldr r3, [r4, r3]
00456ae4  0c 10 80 e5                                      str r1, [r0, #0xc]
00456ae8  08 30 83 e2                                      add r3, r3, #8
00456aec  00 30 80 e5                                      str r3, [r0]
00456af0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456af4  b4 df 53 00 84 12 00 00                          .byte 0xb4, 0xdf, 0x53, 0x00, 0x84, 0x12, 0x00, 0x00

; FUNCTION 0x00456afc, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs8DropLootEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::DropLoot>()
; decoder-mode: arm
00456afc  10 40 2d e9                                      push {r4, lr}
00456b00  00 10 a0 e3                                      mov r1, #0
00456b04  18 00 a0 e3                                      mov r0, #0x18
00456b08  98 e6 fa eb                                      bl #0x310570
00456b0c  20 40 9f e5                                      ldr r4, [pc, #0x20]
00456b10  20 20 9f e5                                      ldr r2, [pc, #0x20]
00456b14  00 10 a0 e3                                      mov r1, #0
00456b18  04 40 8f e0                                      add r4, pc, r4
00456b1c  02 20 94 e7                                      ldr r2, [r4, r2]
00456b20  14 10 80 e5                                      str r1, [r0, #0x14]
00456b24  0c 10 80 e5                                      str r1, [r0, #0xc]
00456b28  08 20 82 e2                                      add r2, r2, #8
00456b2c  00 20 80 e5                                      str r2, [r0]
00456b30  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456b34  78 df 53 00 00 17 00 00                          .byte 0x78, 0xdf, 0x53, 0x00, 0x00, 0x17, 0x00, 0x00

; FUNCTION 0x00456b3c, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs14SetActorMasterEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SetActorMaster>()
; decoder-mode: arm
00456b3c  10 40 2d e9                                      push {r4, lr}
00456b40  00 10 a0 e3                                      mov r1, #0
00456b44  20 00 a0 e3                                      mov r0, #0x20
00456b48  88 e6 fa eb                                      bl #0x310570
00456b4c  20 40 9f e5                                      ldr r4, [pc, #0x20]
00456b50  20 20 9f e5                                      ldr r2, [pc, #0x20]
00456b54  00 10 a0 e3                                      mov r1, #0
00456b58  04 40 8f e0                                      add r4, pc, r4
00456b5c  02 20 94 e7                                      ldr r2, [r4, r2]
00456b60  1c 10 80 e5                                      str r1, [r0, #0x1c]
00456b64  10 10 80 e5                                      str r1, [r0, #0x10]
00456b68  08 20 82 e2                                      add r2, r2, #8
00456b6c  00 20 80 e5                                      str r2, [r0]
00456b70  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456b74  38 df 53 00 88 2a 00 00                          .byte 0x38, 0xdf, 0x53, 0x00, 0x88, 0x2a, 0x00, 0x00

; FUNCTION 0x00456b7c, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs16SetActorPositionEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SetActorPosition>()
; decoder-mode: arm
00456b7c  10 40 2d e9                                      push {r4, lr}
00456b80  00 10 a0 e3                                      mov r1, #0
00456b84  18 00 a0 e3                                      mov r0, #0x18
00456b88  78 e6 fa eb                                      bl #0x310570
00456b8c  20 40 9f e5                                      ldr r4, [pc, #0x20]
00456b90  20 20 9f e5                                      ldr r2, [pc, #0x20]
00456b94  00 10 a0 e3                                      mov r1, #0
00456b98  04 40 8f e0                                      add r4, pc, r4
00456b9c  02 20 94 e7                                      ldr r2, [r4, r2]
00456ba0  14 10 80 e5                                      str r1, [r0, #0x14]
00456ba4  0c 10 80 e5                                      str r1, [r0, #0xc]
00456ba8  08 20 82 e2                                      add r2, r2, #8
00456bac  00 20 80 e5                                      str r2, [r0]
00456bb0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456bb4  f8 de 53 00 30 08 00 00                          .byte 0xf8, 0xde, 0x53, 0x00, 0x30, 0x08, 0x00, 0x00

; FUNCTION 0x00456bbc, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs13PlayActorAnimEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::PlayActorAnim>()
; decoder-mode: arm
00456bbc  10 40 2d e9                                      push {r4, lr}
00456bc0  00 10 a0 e3                                      mov r1, #0
00456bc4  20 00 a0 e3                                      mov r0, #0x20
00456bc8  68 e6 fa eb                                      bl #0x310570
00456bcc  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456bd0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456bd4  00 10 a0 e3                                      mov r1, #0
00456bd8  04 40 8f e0                                      add r4, pc, r4
00456bdc  03 30 94 e7                                      ldr r3, [r4, r3]
00456be0  18 10 80 e5                                      str r1, [r0, #0x18]
00456be4  08 30 83 e2                                      add r3, r3, #8
00456be8  00 30 80 e5                                      str r3, [r0]
00456bec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456bf0  b8 de 53 00 c8 41 00 00                          .byte 0xb8, 0xde, 0x53, 0x00, 0xc8, 0x41, 0x00, 0x00

; FUNCTION 0x00456bf8, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9KillActorEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::KillActor>()
; decoder-mode: arm
00456bf8  10 40 2d e9                                      push {r4, lr}
00456bfc  00 10 a0 e3                                      mov r1, #0
00456c00  10 00 a0 e3                                      mov r0, #0x10
00456c04  59 e6 fa eb                                      bl #0x310570
00456c08  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456c0c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456c10  00 10 a0 e3                                      mov r1, #0
00456c14  04 40 8f e0                                      add r4, pc, r4
00456c18  03 30 94 e7                                      ldr r3, [r4, r3]
00456c1c  0c 10 80 e5                                      str r1, [r0, #0xc]
00456c20  08 30 83 e2                                      add r3, r3, #8
00456c24  00 30 80 e5                                      str r3, [r0]
00456c28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456c2c  7c de 53 00 50 2e 00 00                          .byte 0x7c, 0xde, 0x53, 0x00, 0x50, 0x2e, 0x00, 0x00

; FUNCTION 0x00456c34, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9HideActorEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::HideActor>()
; decoder-mode: arm
00456c34  10 40 2d e9                                      push {r4, lr}
00456c38  00 10 a0 e3                                      mov r1, #0
00456c3c  10 00 a0 e3                                      mov r0, #0x10
00456c40  4a e6 fa eb                                      bl #0x310570
00456c44  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456c48  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456c4c  00 10 a0 e3                                      mov r1, #0
00456c50  04 40 8f e0                                      add r4, pc, r4
00456c54  03 30 94 e7                                      ldr r3, [r4, r3]
00456c58  0c 10 80 e5                                      str r1, [r0, #0xc]
00456c5c  08 30 83 e2                                      add r3, r3, #8
00456c60  00 30 80 e5                                      str r3, [r0]
00456c64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456c68  40 de 53 00 84 0c 00 00                          .byte 0x40, 0xde, 0x53, 0x00, 0x84, 0x0c, 0x00, 0x00

; FUNCTION 0x00456c70, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9ShowActorEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::ShowActor>()
; decoder-mode: arm
00456c70  10 40 2d e9                                      push {r4, lr}
00456c74  00 10 a0 e3                                      mov r1, #0
00456c78  10 00 a0 e3                                      mov r0, #0x10
00456c7c  3b e6 fa eb                                      bl #0x310570
00456c80  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456c84  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456c88  00 10 a0 e3                                      mov r1, #0
00456c8c  04 40 8f e0                                      add r4, pc, r4
00456c90  03 30 94 e7                                      ldr r3, [r4, r3]
00456c94  0c 10 80 e5                                      str r1, [r0, #0xc]
00456c98  08 30 83 e2                                      add r3, r3, #8
00456c9c  00 30 80 e5                                      str r3, [r0]
00456ca0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456ca4  04 de 53 00 f4 35 00 00                          .byte 0x04, 0xde, 0x53, 0x00, 0xf4, 0x35, 0x00, 0x00

; FUNCTION 0x00456cac, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9LookActorEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::LookActor>()
; decoder-mode: arm
00456cac  10 40 2d e9                                      push {r4, lr}
00456cb0  00 10 a0 e3                                      mov r1, #0
00456cb4  18 00 a0 e3                                      mov r0, #0x18
00456cb8  2c e6 fa eb                                      bl #0x310570
00456cbc  20 40 9f e5                                      ldr r4, [pc, #0x20]
00456cc0  20 20 9f e5                                      ldr r2, [pc, #0x20]
00456cc4  00 10 a0 e3                                      mov r1, #0
00456cc8  04 40 8f e0                                      add r4, pc, r4
00456ccc  02 20 94 e7                                      ldr r2, [r4, r2]
00456cd0  14 10 80 e5                                      str r1, [r0, #0x14]
00456cd4  0c 10 80 e5                                      str r1, [r0, #0xc]
00456cd8  08 20 82 e2                                      add r2, r2, #8
00456cdc  00 20 80 e5                                      str r2, [r0]
00456ce0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456ce4  c8 dd 53 00 34 29 00 00                          .byte 0xc8, 0xdd, 0x53, 0x00, 0x34, 0x29, 0x00, 0x00

; FUNCTION 0x00456cec, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9MoveActorEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::MoveActor>()
; decoder-mode: arm
00456cec  10 40 2d e9                                      push {r4, lr}
00456cf0  00 10 a0 e3                                      mov r1, #0
00456cf4  20 00 a0 e3                                      mov r0, #0x20
00456cf8  1c e6 fa eb                                      bl #0x310570
00456cfc  20 40 9f e5                                      ldr r4, [pc, #0x20]
00456d00  20 20 9f e5                                      ldr r2, [pc, #0x20]
00456d04  00 10 a0 e3                                      mov r1, #0
00456d08  04 40 8f e0                                      add r4, pc, r4
00456d0c  02 20 94 e7                                      ldr r2, [r4, r2]
00456d10  18 10 80 e5                                      str r1, [r0, #0x18]
00456d14  0c 10 80 e5                                      str r1, [r0, #0xc]
00456d18  08 20 82 e2                                      add r2, r2, #8
00456d1c  00 20 80 e5                                      str r2, [r0]
00456d20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456d24  88 dd 53 00 24 1b 00 00                          .byte 0x88, 0xdd, 0x53, 0x00, 0x24, 0x1b, 0x00, 0x00

; FUNCTION 0x00456d2c, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9StopActorEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::StopActor>()
; decoder-mode: arm
00456d2c  10 40 2d e9                                      push {r4, lr}
00456d30  00 10 a0 e3                                      mov r1, #0
00456d34  10 00 a0 e3                                      mov r0, #0x10
00456d38  0c e6 fa eb                                      bl #0x310570
00456d3c  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456d40  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456d44  00 10 a0 e3                                      mov r1, #0
00456d48  04 40 8f e0                                      add r4, pc, r4
00456d4c  03 30 94 e7                                      ldr r3, [r4, r3]
00456d50  0c 10 80 e5                                      str r1, [r0, #0xc]
00456d54  08 30 83 e2                                      add r3, r3, #8
00456d58  00 30 80 e5                                      str r3, [r0]
00456d5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456d60  48 dd 53 00 a8 4a 00 00                          .byte 0x48, 0xdd, 0x53, 0x00, 0xa8, 0x4a, 0x00, 0x00

; FUNCTION 0x00456d68, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs8AISetIntEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::AISetInt>()
; decoder-mode: arm
00456d68  10 40 2d e9                                      push {r4, lr}
00456d6c  00 10 a0 e3                                      mov r1, #0
00456d70  1c 00 a0 e3                                      mov r0, #0x1c
00456d74  fd e5 fa eb                                      bl #0x310570
00456d78  20 40 9f e5                                      ldr r4, [pc, #0x20]
00456d7c  20 20 9f e5                                      ldr r2, [pc, #0x20]
00456d80  00 10 a0 e3                                      mov r1, #0
00456d84  04 40 8f e0                                      add r4, pc, r4
00456d88  02 20 94 e7                                      ldr r2, [r4, r2]
00456d8c  14 10 80 e5                                      str r1, [r0, #0x14]
00456d90  0c 10 80 e5                                      str r1, [r0, #0xc]
00456d94  08 20 82 e2                                      add r2, r2, #8
00456d98  00 20 80 e5                                      str r2, [r0]
00456d9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456da0  0c dd 53 00 64 24 00 00                          .byte 0x0c, 0xdd, 0x53, 0x00, 0x64, 0x24, 0x00, 0x00

; FUNCTION 0x00456da8, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs14AIChangeScriptEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::AIChangeScript>()
; decoder-mode: arm
00456da8  10 40 2d e9                                      push {r4, lr}
00456dac  00 10 a0 e3                                      mov r1, #0
00456db0  18 00 a0 e3                                      mov r0, #0x18
00456db4  ed e5 fa eb                                      bl #0x310570
00456db8  20 40 9f e5                                      ldr r4, [pc, #0x20]
00456dbc  20 20 9f e5                                      ldr r2, [pc, #0x20]
00456dc0  00 10 a0 e3                                      mov r1, #0
00456dc4  04 40 8f e0                                      add r4, pc, r4
00456dc8  02 20 94 e7                                      ldr r2, [r4, r2]
00456dcc  14 10 80 e5                                      str r1, [r0, #0x14]
00456dd0  0c 10 80 e5                                      str r1, [r0, #0xc]
00456dd4  08 20 82 e2                                      add r2, r2, #8
00456dd8  00 20 80 e5                                      str r2, [r0]
00456ddc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456de0  cc dc 53 00 04 36 00 00                          .byte 0xcc, 0xdc, 0x53, 0x00, 0x04, 0x36, 0x00, 0x00

; FUNCTION 0x00456de8, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs7AISetHPEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::AISetHP>()
; decoder-mode: arm
00456de8  10 40 2d e9                                      push {r4, lr}
00456dec  00 10 a0 e3                                      mov r1, #0
00456df0  0c 00 a0 e3                                      mov r0, #0xc
00456df4  dd e5 fa eb                                      bl #0x310570
00456df8  20 40 9f e5                                      ldr r4, [pc, #0x20]
00456dfc  20 20 9f e5                                      ldr r2, [pc, #0x20]
00456e00  00 10 a0 e3                                      mov r1, #0
00456e04  04 40 8f e0                                      add r4, pc, r4
00456e08  02 20 94 e7                                      ldr r2, [r4, r2]
00456e0c  08 10 80 e5                                      str r1, [r0, #8]
00456e10  04 10 80 e5                                      str r1, [r0, #4]
00456e14  08 20 82 e2                                      add r2, r2, #8
00456e18  00 20 80 e5                                      str r2, [r0]
00456e1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456e20  8c dc 53 00 38 15 00 00                          .byte 0x8c, 0xdc, 0x53, 0x00, 0x38, 0x15, 0x00, 0x00

; FUNCTION 0x00456e28, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9AIDoSkillEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::AIDoSkill>()
; decoder-mode: arm
00456e28  10 40 2d e9                                      push {r4, lr}
00456e2c  00 10 a0 e3                                      mov r1, #0
00456e30  14 00 a0 e3                                      mov r0, #0x14
00456e34  cd e5 fa eb                                      bl #0x310570
00456e38  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456e3c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456e40  00 10 a0 e3                                      mov r1, #0
00456e44  04 40 8f e0                                      add r4, pc, r4
00456e48  03 30 94 e7                                      ldr r3, [r4, r3]
00456e4c  10 10 80 e5                                      str r1, [r0, #0x10]
00456e50  08 30 83 e2                                      add r3, r3, #8
00456e54  00 30 80 e5                                      str r3, [r0]
00456e58  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456e5c  4c dc 53 00 40 49 00 00                          .byte 0x4c, 0xdc, 0x53, 0x00, 0x40, 0x49, 0x00, 0x00

; FUNCTION 0x00456e64, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs12AIResetTimerEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::AIResetTimer>()
; decoder-mode: arm
00456e64  10 40 2d e9                                      push {r4, lr}
00456e68  00 10 a0 e3                                      mov r1, #0
00456e6c  08 00 a0 e3                                      mov r0, #8
00456e70  be e5 fa eb                                      bl #0x310570
00456e74  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456e78  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456e7c  00 10 a0 e3                                      mov r1, #0
00456e80  04 40 8f e0                                      add r4, pc, r4
00456e84  03 30 94 e7                                      ldr r3, [r4, r3]
00456e88  04 10 80 e5                                      str r1, [r0, #4]
00456e8c  08 30 83 e2                                      add r3, r3, #8
00456e90  00 30 80 e5                                      str r3, [r0]
00456e94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456e98  10 dc 53 00 28 4c 00 00                          .byte 0x10, 0xdc, 0x53, 0x00, 0x28, 0x4c, 0x00, 0x00

; FUNCTION 0x00456ea0, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs13AIEnableTimerEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::AIEnableTimer>()
; decoder-mode: arm
00456ea0  10 40 2d e9                                      push {r4, lr}
00456ea4  00 10 a0 e3                                      mov r1, #0
00456ea8  0c 00 a0 e3                                      mov r0, #0xc
00456eac  af e5 fa eb                                      bl #0x310570
00456eb0  20 40 9f e5                                      ldr r4, [pc, #0x20]
00456eb4  20 20 9f e5                                      ldr r2, [pc, #0x20]
00456eb8  00 10 a0 e3                                      mov r1, #0
00456ebc  04 40 8f e0                                      add r4, pc, r4
00456ec0  02 20 94 e7                                      ldr r2, [r4, r2]
00456ec4  08 10 c0 e5                                      strb r1, [r0, #8]
00456ec8  04 10 80 e5                                      str r1, [r0, #4]
00456ecc  08 20 82 e2                                      add r2, r2, #8
00456ed0  00 20 80 e5                                      str r2, [r0]
00456ed4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456ed8  d4 db 53 00 50 22 00 00                          .byte 0xd4, 0xdb, 0x53, 0x00, 0x50, 0x22, 0x00, 0x00

; FUNCTION 0x00456ee0, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs23MarkCharacterAsScriptedEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::MarkCharacterAsScripted>()
; decoder-mode: arm
00456ee0  10 40 2d e9                                      push {r4, lr}
00456ee4  00 10 a0 e3                                      mov r1, #0
00456ee8  14 00 a0 e3                                      mov r0, #0x14
00456eec  9f e5 fa eb                                      bl #0x310570
00456ef0  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456ef4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456ef8  00 10 a0 e3                                      mov r1, #0
00456efc  04 40 8f e0                                      add r4, pc, r4
00456f00  03 30 94 e7                                      ldr r3, [r4, r3]
00456f04  10 10 80 e5                                      str r1, [r0, #0x10]
00456f08  08 30 83 e2                                      add r3, r3, #8
00456f0c  00 30 80 e5                                      str r3, [r0]
00456f10  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456f14  94 db 53 00 58 45 00 00                          .byte 0x94, 0xdb, 0x53, 0x00, 0x58, 0x45, 0x00, 0x00

; FUNCTION 0x00456f1c, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs18PutCharacterInIdleEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::PutCharacterInIdle>()
; decoder-mode: arm
00456f1c  10 40 2d e9                                      push {r4, lr}
00456f20  00 10 a0 e3                                      mov r1, #0
00456f24  10 00 a0 e3                                      mov r0, #0x10
00456f28  90 e5 fa eb                                      bl #0x310570
00456f2c  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456f30  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456f34  00 10 a0 e3                                      mov r1, #0
00456f38  04 40 8f e0                                      add r4, pc, r4
00456f3c  03 30 94 e7                                      ldr r3, [r4, r3]
00456f40  0c 10 80 e5                                      str r1, [r0, #0xc]
00456f44  08 30 83 e2                                      add r3, r3, #8
00456f48  00 30 80 e5                                      str r3, [r0]
00456f4c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456f50  58 db 53 00 b0 2d 00 00                          .byte 0x58, 0xdb, 0x53, 0x00, 0xb0, 0x2d, 0x00, 0x00

; FUNCTION 0x00456f58, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs14SpawnCharacterEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SpawnCharacter>()
; decoder-mode: arm
00456f58  10 40 2d e9                                      push {r4, lr}
00456f5c  00 10 a0 e3                                      mov r1, #0
00456f60  10 00 a0 e3                                      mov r0, #0x10
00456f64  81 e5 fa eb                                      bl #0x310570
00456f68  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456f6c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456f70  00 10 a0 e3                                      mov r1, #0
00456f74  04 40 8f e0                                      add r4, pc, r4
00456f78  03 30 94 e7                                      ldr r3, [r4, r3]
00456f7c  0c 10 80 e5                                      str r1, [r0, #0xc]
00456f80  08 30 83 e2                                      add r3, r3, #8
00456f84  00 30 80 e5                                      str r3, [r0]
00456f88  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456f8c  1c db 53 00 c8 05 00 00                          .byte 0x1c, 0xdb, 0x53, 0x00, 0xc8, 0x05, 0x00, 0x00

; FUNCTION 0x00456f94, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs20PutCharacterInLimbusEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::PutCharacterInLimbus>()
; decoder-mode: arm
00456f94  10 40 2d e9                                      push {r4, lr}
00456f98  00 10 a0 e3                                      mov r1, #0
00456f9c  14 00 a0 e3                                      mov r0, #0x14
00456fa0  72 e5 fa eb                                      bl #0x310570
00456fa4  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00456fa8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00456fac  00 10 a0 e3                                      mov r1, #0
00456fb0  04 40 8f e0                                      add r4, pc, r4
00456fb4  03 30 94 e7                                      ldr r3, [r4, r3]
00456fb8  10 10 80 e5                                      str r1, [r0, #0x10]
00456fbc  08 30 83 e2                                      add r3, r3, #8
00456fc0  00 30 80 e5                                      str r3, [r0]
00456fc4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00456fc8  e0 da 53 00 f8 25 00 00                          .byte 0xe0, 0xda, 0x53, 0x00, 0xf8, 0x25, 0x00, 0x00

; FUNCTION 0x00456fd0, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs13IncFaeryLevelEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::IncFaeryLevel>()
; decoder-mode: arm
00456fd0  10 40 2d e9                                      push {r4, lr}
00456fd4  00 10 a0 e3                                      mov r1, #0
00456fd8  0c 00 a0 e3                                      mov r0, #0xc
00456fdc  63 e5 fa eb                                      bl #0x310570
00456fe0  20 40 9f e5                                      ldr r4, [pc, #0x20]
00456fe4  20 20 9f e5                                      ldr r2, [pc, #0x20]
00456fe8  00 10 a0 e3                                      mov r1, #0
00456fec  04 40 8f e0                                      add r4, pc, r4
00456ff0  02 20 94 e7                                      ldr r2, [r4, r2]
00456ff4  08 10 80 e5                                      str r1, [r0, #8]
00456ff8  04 10 80 e5                                      str r1, [r0, #4]
00456ffc  08 20 82 e2                                      add r2, r2, #8
00457000  00 20 80 e5                                      str r2, [r0]
00457004  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457008  a4 da 53 00 c0 1e 00 00                          .byte 0xa4, 0xda, 0x53, 0x00, 0xc0, 0x1e, 0x00, 0x00

; FUNCTION 0x00457010, declared_size=68, range_size=68, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs13SetFaeryStateEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SetFaeryState>()
; decoder-mode: arm
00457010  10 40 2d e9                                      push {r4, lr}
00457014  00 10 a0 e3                                      mov r1, #0
00457018  10 00 a0 e3                                      mov r0, #0x10
0045701c  53 e5 fa eb                                      bl #0x310570
00457020  24 40 9f e5                                      ldr r4, [pc, #0x24]
00457024  24 10 9f e5                                      ldr r1, [pc, #0x24]
00457028  00 20 a0 e3                                      mov r2, #0
0045702c  04 40 8f e0                                      add r4, pc, r4
00457030  01 10 94 e7                                      ldr r1, [r4, r1]
00457034  0c 20 80 e5                                      str r2, [r0, #0xc]
00457038  04 20 80 e5                                      str r2, [r0, #4]
0045703c  08 10 81 e2                                      add r1, r1, #8
00457040  00 10 80 e5                                      str r1, [r0]
00457044  08 20 80 e5                                      str r2, [r0, #8]
00457048  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0045704c  64 da 53 00 9c 20 00 00                          .byte 0x64, 0xda, 0x53, 0x00, 0x9c, 0x20, 0x00, 0x00

; FUNCTION 0x00457054, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs4WaitEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::Wait>()
; decoder-mode: arm
00457054  10 40 2d e9                                      push {r4, lr}
00457058  00 10 a0 e3                                      mov r1, #0
0045705c  0c 00 a0 e3                                      mov r0, #0xc
00457060  42 e5 fa eb                                      bl #0x310570
00457064  20 40 9f e5                                      ldr r4, [pc, #0x20]
00457068  20 20 9f e5                                      ldr r2, [pc, #0x20]
0045706c  00 10 a0 e3                                      mov r1, #0
00457070  04 40 8f e0                                      add r4, pc, r4
00457074  02 20 94 e7                                      ldr r2, [r4, r2]
00457078  08 10 80 e5                                      str r1, [r0, #8]
0045707c  04 10 80 e5                                      str r1, [r0, #4]
00457080  08 20 82 e2                                      add r2, r2, #8
00457084  00 20 80 e5                                      str r2, [r0]
00457088  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0045708c  20 da 53 00 90 22 00 00                          .byte 0x20, 0xda, 0x53, 0x00, 0x90, 0x22, 0x00, 0x00

; FUNCTION 0x00457094, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs15UnlockCharacterEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::UnlockCharacter>()
; decoder-mode: arm
00457094  10 40 2d e9                                      push {r4, lr}
00457098  00 10 a0 e3                                      mov r1, #0
0045709c  10 00 a0 e3                                      mov r0, #0x10
004570a0  32 e5 fa eb                                      bl #0x310570
004570a4  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004570a8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004570ac  00 10 a0 e3                                      mov r1, #0
004570b0  04 40 8f e0                                      add r4, pc, r4
004570b4  03 30 94 e7                                      ldr r3, [r4, r3]
004570b8  0c 10 80 e5                                      str r1, [r0, #0xc]
004570bc  08 30 83 e2                                      add r3, r3, #8
004570c0  00 30 80 e5                                      str r3, [r0]
004570c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004570c8  e0 d9 53 00 d4 43 00 00                          .byte 0xe0, 0xd9, 0x53, 0x00, 0xd4, 0x43, 0x00, 0x00

; FUNCTION 0x004570d0, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs13LockCharacterEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::LockCharacter>()
; decoder-mode: arm
004570d0  10 40 2d e9                                      push {r4, lr}
004570d4  00 10 a0 e3                                      mov r1, #0
004570d8  10 00 a0 e3                                      mov r0, #0x10
004570dc  23 e5 fa eb                                      bl #0x310570
004570e0  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004570e4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004570e8  00 10 a0 e3                                      mov r1, #0
004570ec  04 40 8f e0                                      add r4, pc, r4
004570f0  03 30 94 e7                                      ldr r3, [r4, r3]
004570f4  0c 10 80 e5                                      str r1, [r0, #0xc]
004570f8  08 30 83 e2                                      add r3, r3, #8
004570fc  00 30 80 e5                                      str r3, [r0]
00457100  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457104  a4 d9 53 00 88 23 00 00                          .byte 0xa4, 0xd9, 0x53, 0x00, 0x88, 0x23, 0x00, 0x00

; FUNCTION 0x0045710c, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9HideFlashEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::HideFlash>()
; decoder-mode: arm
0045710c  10 40 2d e9                                      push {r4, lr}
00457110  00 10 a0 e3                                      mov r1, #0
00457114  18 00 a0 e3                                      mov r0, #0x18
00457118  14 e5 fa eb                                      bl #0x310570
0045711c  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00457120  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00457124  00 10 a0 e3                                      mov r1, #0
00457128  04 40 8f e0                                      add r4, pc, r4
0045712c  03 30 94 e7                                      ldr r3, [r4, r3]
00457130  10 10 80 e5                                      str r1, [r0, #0x10]
00457134  08 30 83 e2                                      add r3, r3, #8
00457138  00 30 80 e5                                      str r3, [r0]
0045713c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457140  68 d9 53 00 e8 08 00 00                          .byte 0x68, 0xd9, 0x53, 0x00, 0xe8, 0x08, 0x00, 0x00

; FUNCTION 0x00457148, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9ShowFlashEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::ShowFlash>()
; decoder-mode: arm
00457148  10 40 2d e9                                      push {r4, lr}
0045714c  00 10 a0 e3                                      mov r1, #0
00457150  18 00 a0 e3                                      mov r0, #0x18
00457154  05 e5 fa eb                                      bl #0x310570
00457158  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
0045715c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00457160  00 10 a0 e3                                      mov r1, #0
00457164  04 40 8f e0                                      add r4, pc, r4
00457168  03 30 94 e7                                      ldr r3, [r4, r3]
0045716c  10 10 80 e5                                      str r1, [r0, #0x10]
00457170  08 30 83 e2                                      add r3, r3, #8
00457174  00 30 80 e5                                      str r3, [r0]
00457178  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0045717c  2c d9 53 00 58 3c 00 00                          .byte 0x2c, 0xd9, 0x53, 0x00, 0x58, 0x3c, 0x00, 0x00

; FUNCTION 0x00457184, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs10StopEffectEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::StopEffect>()
; decoder-mode: arm
00457184  10 40 2d e9                                      push {r4, lr}
00457188  00 10 a0 e3                                      mov r1, #0
0045718c  0c 00 a0 e3                                      mov r0, #0xc
00457190  f6 e4 fa eb                                      bl #0x310570
00457194  20 40 9f e5                                      ldr r4, [pc, #0x20]
00457198  20 20 9f e5                                      ldr r2, [pc, #0x20]
0045719c  00 10 a0 e3                                      mov r1, #0
004571a0  04 40 8f e0                                      add r4, pc, r4
004571a4  02 20 94 e7                                      ldr r2, [r4, r2]
004571a8  08 10 80 e5                                      str r1, [r0, #8]
004571ac  04 10 80 e5                                      str r1, [r0, #4]
004571b0  08 20 82 e2                                      add r2, r2, #8
004571b4  00 20 80 e5                                      str r2, [r0]
004571b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004571bc  f0 d8 53 00 9c 1b 00 00                          .byte 0xf0, 0xd8, 0x53, 0x00, 0x9c, 0x1b, 0x00, 0x00

; FUNCTION 0x004571c4, declared_size=80, range_size=80, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs10PlayEffectEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::PlayEffect>()
; decoder-mode: arm
004571c4  10 40 2d e9                                      push {r4, lr}
004571c8  00 10 a0 e3                                      mov r1, #0
004571cc  28 00 a0 e3                                      mov r0, #0x28
004571d0  e6 e4 fa eb                                      bl #0x310570
004571d4  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
004571d8  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
004571dc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004571e0  04 40 8f e0                                      add r4, pc, r4
004571e4  01 10 94 e7                                      ldr r1, [r4, r1]
004571e8  02 20 94 e7                                      ldr r2, [r4, r2]
004571ec  00 c0 a0 e3                                      mov ip, #0
004571f0  08 10 81 e2                                      add r1, r1, #8
004571f4  08 20 82 e2                                      add r2, r2, #8
004571f8  20 c0 80 e5                                      str ip, [r0, #0x20]
004571fc  00 10 80 e5                                      str r1, [r0]
00457200  0c 20 80 e5                                      str r2, [r0, #0xc]
00457204  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457208  b0 d8 53 00 cc 25 00 00 f8 4b 00 00              .byte 0xb0, 0xd8, 0x53, 0x00, 0xcc, 0x25, 0x00, 0x00, 0xf8, 0x4b, 0x00, 0x00

; FUNCTION 0x00457214, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs14PlayAnimByNameEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::PlayAnimByName>()
; decoder-mode: arm
00457214  10 40 2d e9                                      push {r4, lr}
00457218  00 10 a0 e3                                      mov r1, #0
0045721c  20 00 a0 e3                                      mov r0, #0x20
00457220  d2 e4 fa eb                                      bl #0x310570
00457224  20 40 9f e5                                      ldr r4, [pc, #0x20]
00457228  20 20 9f e5                                      ldr r2, [pc, #0x20]
0045722c  00 10 a0 e3                                      mov r1, #0
00457230  04 40 8f e0                                      add r4, pc, r4
00457234  02 20 94 e7                                      ldr r2, [r4, r2]
00457238  18 10 80 e5                                      str r1, [r0, #0x18]
0045723c  0c 10 80 e5                                      str r1, [r0, #0xc]
00457240  08 20 82 e2                                      add r2, r2, #8
00457244  00 20 80 e5                                      str r2, [r0]
00457248  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0045724c  60 d8 53 00 14 06 00 00                          .byte 0x60, 0xd8, 0x53, 0x00, 0x14, 0x06, 0x00, 0x00

; FUNCTION 0x00457254, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs12PlayAnimByIdEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::PlayAnimById>()
; decoder-mode: arm
00457254  10 40 2d e9                                      push {r4, lr}
00457258  00 10 a0 e3                                      mov r1, #0
0045725c  1c 00 a0 e3                                      mov r0, #0x1c
00457260  c2 e4 fa eb                                      bl #0x310570
00457264  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00457268  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0045726c  00 10 a0 e3                                      mov r1, #0
00457270  04 40 8f e0                                      add r4, pc, r4
00457274  03 30 94 e7                                      ldr r3, [r4, r3]
00457278  14 10 80 e5                                      str r1, [r0, #0x14]
0045727c  08 30 83 e2                                      add r3, r3, #8
00457280  00 30 80 e5                                      str r3, [r0]
00457284  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457288  20 d8 53 00 a4 49 00 00                          .byte 0x20, 0xd8, 0x53, 0x00, 0xa4, 0x49, 0x00, 0x00

; FUNCTION 0x00457290, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs13LeaveSafeZoneEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::LeaveSafeZone>()
; decoder-mode: arm
00457290  10 40 2d e9                                      push {r4, lr}
00457294  00 10 a0 e3                                      mov r1, #0
00457298  08 00 a0 e3                                      mov r0, #8
0045729c  b3 e4 fa eb                                      bl #0x310570
004572a0  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004572a4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004572a8  00 10 a0 e3                                      mov r1, #0
004572ac  04 40 8f e0                                      add r4, pc, r4
004572b0  03 30 94 e7                                      ldr r3, [r4, r3]
004572b4  04 10 80 e5                                      str r1, [r0, #4]
004572b8  08 30 83 e2                                      add r3, r3, #8
004572bc  00 30 80 e5                                      str r3, [r0]
004572c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004572c4  e4 d7 53 00 34 3b 00 00                          .byte 0xe4, 0xd7, 0x53, 0x00, 0x34, 0x3b, 0x00, 0x00

; FUNCTION 0x004572cc, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs13EnterSafeZoneEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::EnterSafeZone>()
; decoder-mode: arm
004572cc  10 40 2d e9                                      push {r4, lr}
004572d0  00 10 a0 e3                                      mov r1, #0
004572d4  08 00 a0 e3                                      mov r0, #8
004572d8  a4 e4 fa eb                                      bl #0x310570
004572dc  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004572e0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004572e4  00 10 a0 e3                                      mov r1, #0
004572e8  04 40 8f e0                                      add r4, pc, r4
004572ec  03 30 94 e7                                      ldr r3, [r4, r3]
004572f0  04 10 80 e5                                      str r1, [r0, #4]
004572f4  08 30 83 e2                                      add r3, r3, #8
004572f8  00 30 80 e5                                      str r3, [r0]
004572fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457300  a8 d7 53 00 a0 41 00 00                          .byte 0xa8, 0xd7, 0x53, 0x00, 0xa0, 0x41, 0x00, 0x00

; FUNCTION 0x00457308, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs14PlayLevelMusicEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::PlayLevelMusic>()
; decoder-mode: arm
00457308  10 40 2d e9                                      push {r4, lr}
0045730c  00 10 a0 e3                                      mov r1, #0
00457310  0c 00 a0 e3                                      mov r0, #0xc
00457314  95 e4 fa eb                                      bl #0x310570
00457318  20 40 9f e5                                      ldr r4, [pc, #0x20]
0045731c  20 20 9f e5                                      ldr r2, [pc, #0x20]
00457320  00 10 a0 e3                                      mov r1, #0
00457324  04 40 8f e0                                      add r4, pc, r4
00457328  02 20 94 e7                                      ldr r2, [r4, r2]
0045732c  08 10 80 e5                                      str r1, [r0, #8]
00457330  04 10 80 e5                                      str r1, [r0, #4]
00457334  08 20 82 e2                                      add r2, r2, #8
00457338  00 20 80 e5                                      str r2, [r0]
0045733c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457340  6c d7 53 00 00 36 00 00                          .byte 0x6c, 0xd7, 0x53, 0x00, 0x00, 0x36, 0x00, 0x00

; FUNCTION 0x00457348, declared_size=72, range_size=72, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9StopSoundEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::StopSound>()
; decoder-mode: arm
00457348  10 40 2d e9                                      push {r4, lr}
0045734c  00 10 a0 e3                                      mov r1, #0
00457350  14 00 a0 e3                                      mov r0, #0x14
00457354  85 e4 fa eb                                      bl #0x310570
00457358  28 40 9f e5                                      ldr r4, [pc, #0x28]
0045735c  28 10 9f e5                                      ldr r1, [pc, #0x28]
00457360  00 20 a0 e3                                      mov r2, #0
00457364  04 40 8f e0                                      add r4, pc, r4
00457368  01 10 94 e7                                      ldr r1, [r4, r1]
0045736c  10 20 80 e5                                      str r2, [r0, #0x10]
00457370  04 20 80 e5                                      str r2, [r0, #4]
00457374  08 10 81 e2                                      add r1, r1, #8
00457378  00 10 80 e5                                      str r1, [r0]
0045737c  08 20 80 e5                                      str r2, [r0, #8]
00457380  0c 20 c0 e5                                      strb r2, [r0, #0xc]
00457384  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457388  2c d7 53 00 fc 3c 00 00                          .byte 0x2c, 0xd7, 0x53, 0x00, 0xfc, 0x3c, 0x00, 0x00

; FUNCTION 0x00457390, declared_size=76, range_size=76, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9PlaySoundEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::PlaySound>()
; decoder-mode: arm
00457390  10 40 2d e9                                      push {r4, lr}
00457394  00 10 a0 e3                                      mov r1, #0
00457398  14 00 a0 e3                                      mov r0, #0x14
0045739c  73 e4 fa eb                                      bl #0x310570
004573a0  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
004573a4  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
004573a8  00 20 a0 e3                                      mov r2, #0
004573ac  04 40 8f e0                                      add r4, pc, r4
004573b0  01 10 94 e7                                      ldr r1, [r4, r1]
004573b4  10 20 80 e5                                      str r2, [r0, #0x10]
004573b8  04 20 80 e5                                      str r2, [r0, #4]
004573bc  08 10 81 e2                                      add r1, r1, #8
004573c0  00 10 80 e5                                      str r1, [r0]
004573c4  08 20 80 e5                                      str r2, [r0, #8]
004573c8  0c 20 c0 e5                                      strb r2, [r0, #0xc]
004573cc  0d 20 c0 e5                                      strb r2, [r0, #0xd]
004573d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004573d4  e4 d6 53 00 04 3a 00 00                          .byte 0xe4, 0xd6, 0x53, 0x00, 0x04, 0x3a, 0x00, 0x00

; FUNCTION 0x004573dc, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs10WaitDialogEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::WaitDialog>()
; decoder-mode: arm
004573dc  10 40 2d e9                                      push {r4, lr}
004573e0  00 10 a0 e3                                      mov r1, #0
004573e4  08 00 a0 e3                                      mov r0, #8
004573e8  60 e4 fa eb                                      bl #0x310570
004573ec  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004573f0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004573f4  00 10 a0 e3                                      mov r1, #0
004573f8  04 40 8f e0                                      add r4, pc, r4
004573fc  03 30 94 e7                                      ldr r3, [r4, r3]
00457400  04 10 80 e5                                      str r1, [r0, #4]
00457404  08 30 83 e2                                      add r3, r3, #8
00457408  00 30 80 e5                                      str r3, [r0]
0045740c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457410  98 d6 53 00 44 47 00 00                          .byte 0x98, 0xd6, 0x53, 0x00, 0x44, 0x47, 0x00, 0x00

; FUNCTION 0x00457418, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs13StartDialogIDEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::StartDialogID>()
; decoder-mode: arm
00457418  10 40 2d e9                                      push {r4, lr}
0045741c  00 10 a0 e3                                      mov r1, #0
00457420  0c 00 a0 e3                                      mov r0, #0xc
00457424  51 e4 fa eb                                      bl #0x310570
00457428  20 40 9f e5                                      ldr r4, [pc, #0x20]
0045742c  20 20 9f e5                                      ldr r2, [pc, #0x20]
00457430  00 10 a0 e3                                      mov r1, #0
00457434  04 40 8f e0                                      add r4, pc, r4
00457438  02 20 94 e7                                      ldr r2, [r4, r2]
0045743c  08 10 80 e5                                      str r1, [r0, #8]
00457440  04 10 80 e5                                      str r1, [r0, #4]
00457444  08 20 82 e2                                      add r2, r2, #8
00457448  00 20 80 e5                                      str r2, [r0]
0045744c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457450  5c d6 53 00 a0 0b 00 00                          .byte 0x5c, 0xd6, 0x53, 0x00, 0xa0, 0x0b, 0x00, 0x00

; FUNCTION 0x00457458, declared_size=72, range_size=72, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs11StartDialogEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::StartDialog>()
; decoder-mode: arm
00457458  10 40 2d e9                                      push {r4, lr}
0045745c  00 10 a0 e3                                      mov r1, #0
00457460  14 00 a0 e3                                      mov r0, #0x14
00457464  41 e4 fa eb                                      bl #0x310570
00457468  28 40 9f e5                                      ldr r4, [pc, #0x28]
0045746c  28 10 9f e5                                      ldr r1, [pc, #0x28]
00457470  00 20 a0 e3                                      mov r2, #0
00457474  04 40 8f e0                                      add r4, pc, r4
00457478  01 10 94 e7                                      ldr r1, [r4, r1]
0045747c  10 20 80 e5                                      str r2, [r0, #0x10]
00457480  04 20 80 e5                                      str r2, [r0, #4]
00457484  08 10 81 e2                                      add r1, r1, #8
00457488  00 10 80 e5                                      str r1, [r0]
0045748c  08 20 80 e5                                      str r2, [r0, #8]
00457490  0c 20 80 e5                                      str r2, [r0, #0xc]
00457494  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457498  1c d6 53 00 28 10 00 00                          .byte 0x1c, 0xd6, 0x53, 0x00, 0x28, 0x10, 0x00, 0x00

; FUNCTION 0x004574a0, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs6NilCmdEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::NilCmd>()
; decoder-mode: arm
004574a0  10 40 2d e9                                      push {r4, lr}
004574a4  00 10 a0 e3                                      mov r1, #0
004574a8  08 00 a0 e3                                      mov r0, #8
004574ac  2f e4 fa eb                                      bl #0x310570
004574b0  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004574b4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004574b8  00 10 a0 e3                                      mov r1, #0
004574bc  04 40 8f e0                                      add r4, pc, r4
004574c0  03 30 94 e7                                      ldr r3, [r4, r3]
004574c4  04 10 80 e5                                      str r1, [r0, #4]
004574c8  08 30 83 e2                                      add r3, r3, #8
004574cc  00 30 80 e5                                      str r3, [r0]
004574d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004574d4  d4 d5 53 00 bc 2b 00 00                          .byte 0xd4, 0xd5, 0x53, 0x00, 0xbc, 0x2b, 0x00, 0x00

; FUNCTION 0x004574dc, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs15SetCameraTargetEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SetCameraTarget>()
; decoder-mode: arm
004574dc  10 40 2d e9                                      push {r4, lr}
004574e0  00 10 a0 e3                                      mov r1, #0
004574e4  18 00 a0 e3                                      mov r0, #0x18
004574e8  20 e4 fa eb                                      bl #0x310570
004574ec  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004574f0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004574f4  00 10 a0 e3                                      mov r1, #0
004574f8  04 40 8f e0                                      add r4, pc, r4
004574fc  03 30 94 e7                                      ldr r3, [r4, r3]
00457500  10 10 80 e5                                      str r1, [r0, #0x10]
00457504  08 30 83 e2                                      add r3, r3, #8
00457508  00 30 80 e5                                      str r3, [r0]
0045750c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457510  98 d5 53 00 30 30 00 00                          .byte 0x98, 0xd5, 0x53, 0x00, 0x30, 0x30, 0x00, 0x00

; FUNCTION 0x00457518, declared_size=68, range_size=68, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs10WaitCameraEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::WaitCamera>()
; decoder-mode: arm
00457518  10 40 2d e9                                      push {r4, lr}
0045751c  00 10 a0 e3                                      mov r1, #0
00457520  0c 00 a0 e3                                      mov r0, #0xc
00457524  11 e4 fa eb                                      bl #0x310570
00457528  24 40 9f e5                                      ldr r4, [pc, #0x24]
0045752c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00457530  00 10 a0 e3                                      mov r1, #0
00457534  04 40 8f e0                                      add r4, pc, r4
00457538  02 20 94 e7                                      ldr r2, [r4, r2]
0045753c  04 10 80 e5                                      str r1, [r0, #4]
00457540  08 20 82 e2                                      add r2, r2, #8
00457544  00 20 80 e5                                      str r2, [r0]
00457548  00 20 a0 e3                                      mov r2, #0
0045754c  08 20 80 e5                                      str r2, [r0, #8]
00457550  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457554  5c d5 53 00 3c 45 00 00                          .byte 0x5c, 0xd5, 0x53, 0x00, 0x3c, 0x45, 0x00, 0x00

; FUNCTION 0x0045755c, declared_size=68, range_size=68, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs13SetCameraClipEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SetCameraClip>()
; decoder-mode: arm
0045755c  10 40 2d e9                                      push {r4, lr}
00457560  00 10 a0 e3                                      mov r1, #0
00457564  10 00 a0 e3                                      mov r0, #0x10
00457568  00 e4 fa eb                                      bl #0x310570
0045756c  24 40 9f e5                                      ldr r4, [pc, #0x24]
00457570  24 10 9f e5                                      ldr r1, [pc, #0x24]
00457574  00 20 a0 e3                                      mov r2, #0
00457578  04 40 8f e0                                      add r4, pc, r4
0045757c  01 10 94 e7                                      ldr r1, [r4, r1]
00457580  0c 20 80 e5                                      str r2, [r0, #0xc]
00457584  04 20 80 e5                                      str r2, [r0, #4]
00457588  08 10 81 e2                                      add r1, r1, #8
0045758c  00 10 80 e5                                      str r1, [r0]
00457590  08 20 80 e5                                      str r2, [r0, #8]
00457594  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457598  18 d5 53 00 48 2f 00 00                          .byte 0x18, 0xd5, 0x53, 0x00, 0x48, 0x2f, 0x00, 0x00

; FUNCTION 0x004575a0, declared_size=68, range_size=68, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs10PlayCameraEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::PlayCamera>()
; decoder-mode: arm
004575a0  10 40 2d e9                                      push {r4, lr}
004575a4  00 10 a0 e3                                      mov r1, #0
004575a8  10 00 a0 e3                                      mov r0, #0x10
004575ac  ef e3 fa eb                                      bl #0x310570
004575b0  24 40 9f e5                                      ldr r4, [pc, #0x24]
004575b4  24 10 9f e5                                      ldr r1, [pc, #0x24]
004575b8  00 20 a0 e3                                      mov r2, #0
004575bc  04 40 8f e0                                      add r4, pc, r4
004575c0  01 10 94 e7                                      ldr r1, [r4, r1]
004575c4  0c 20 c0 e5                                      strb r2, [r0, #0xc]
004575c8  04 20 80 e5                                      str r2, [r0, #4]
004575cc  08 10 81 e2                                      add r1, r1, #8
004575d0  00 10 80 e5                                      str r1, [r0]
004575d4  08 20 80 e5                                      str r2, [r0, #8]
004575d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004575dc  d4 d4 53 00 84 21 00 00                          .byte 0xd4, 0xd4, 0x53, 0x00, 0x84, 0x21, 0x00, 0x00

; FUNCTION 0x004575e4, declared_size=64, range_size=64, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs9SetCameraEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::SetCamera>()
; decoder-mode: arm
004575e4  10 40 2d e9                                      push {r4, lr}
004575e8  00 10 a0 e3                                      mov r1, #0
004575ec  20 00 a0 e3                                      mov r0, #0x20
004575f0  de e3 fa eb                                      bl #0x310570
004575f4  20 40 9f e5                                      ldr r4, [pc, #0x20]
004575f8  20 20 9f e5                                      ldr r2, [pc, #0x20]
004575fc  00 10 a0 e3                                      mov r1, #0
00457600  04 40 8f e0                                      add r4, pc, r4
00457604  02 20 94 e7                                      ldr r2, [r4, r2]
00457608  14 10 80 e5                                      str r1, [r0, #0x14]
0045760c  0c 10 80 e5                                      str r1, [r0, #0xc]
00457610  08 20 82 e2                                      add r2, r2, #8
00457614  00 20 80 e5                                      str r2, [r0]
00457618  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0045761c  90 d4 53 00 ac 23 00 00                          .byte 0x90, 0xd4, 0x53, 0x00, 0xac, 0x23, 0x00, 0x00

; FUNCTION 0x00457624, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs7CONSOLEEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::CONSOLE>()
; decoder-mode: arm
00457624  10 40 2d e9                                      push {r4, lr}
00457628  00 10 a0 e3                                      mov r1, #0
0045762c  10 00 a0 e3                                      mov r0, #0x10
00457630  ce e3 fa eb                                      bl #0x310570
00457634  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00457638  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0045763c  00 10 a0 e3                                      mov r1, #0
00457640  04 40 8f e0                                      add r4, pc, r4
00457644  03 30 94 e7                                      ldr r3, [r4, r3]
00457648  0c 10 80 e5                                      str r1, [r0, #0xc]
0045764c  08 30 83 e2                                      add r3, r3, #8
00457650  00 30 80 e5                                      str r3, [r0]
00457654  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457658  50 d4 53 00 ec 06 00 00                          .byte 0x50, 0xd4, 0x53, 0x00, 0xec, 0x06, 0x00, 0x00

; FUNCTION 0x00457660, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs16ExitCutSceneModeEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::ExitCutSceneMode>()
; decoder-mode: arm
00457660  10 40 2d e9                                      push {r4, lr}
00457664  00 10 a0 e3                                      mov r1, #0
00457668  08 00 a0 e3                                      mov r0, #8
0045766c  bf e3 fa eb                                      bl #0x310570
00457670  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00457674  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00457678  00 10 a0 e3                                      mov r1, #0
0045767c  04 40 8f e0                                      add r4, pc, r4
00457680  03 30 94 e7                                      ldr r3, [r4, r3]
00457684  04 10 80 e5                                      str r1, [r0, #4]
00457688  08 30 83 e2                                      add r3, r3, #8
0045768c  00 30 80 e5                                      str r3, [r0]
00457690  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00457694  14 d4 53 00 00 1f 00 00                          .byte 0x14, 0xd4, 0x53, 0x00, 0x00, 0x1f, 0x00, 0x00

; FUNCTION 0x0045769c, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs17EnterCutSceneModeEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::EnterCutSceneMode>()
; decoder-mode: arm
0045769c  10 40 2d e9                                      push {r4, lr}
004576a0  00 10 a0 e3                                      mov r1, #0
004576a4  08 00 a0 e3                                      mov r0, #8
004576a8  b0 e3 fa eb                                      bl #0x310570
004576ac  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004576b0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004576b4  00 10 a0 e3                                      mov r1, #0
004576b8  04 40 8f e0                                      add r4, pc, r4
004576bc  03 30 94 e7                                      ldr r3, [r4, r3]
004576c0  04 10 80 e5                                      str r1, [r0, #4]
004576c4  08 30 83 e2                                      add r3, r3, #8
004576c8  00 30 80 e5                                      str r3, [r0]
004576cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004576d0  d8 d3 53 00 c0 12 00 00                          .byte 0xd8, 0xd3, 0x53, 0x00, 0xc0, 0x12, 0x00, 0x00

; FUNCTION 0x004576d8, declared_size=60, range_size=60, mode=arm
; class-group: Structs
; alias: _Z27GetNewScriptCmdDataInstanceIN7Structs10ExecScriptEEPNS0_9ScriptCmdEv
; demangled: Structs::ScriptCmd* GetNewScriptCmdDataInstance<Structs::ExecScript>()
; decoder-mode: arm
004576d8  10 40 2d e9                                      push {r4, lr}
004576dc  00 10 a0 e3                                      mov r1, #0
004576e0  1c 00 a0 e3                                      mov r0, #0x1c
004576e4  a1 e3 fa eb                                      bl #0x310570
004576e8  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
004576ec  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
004576f0  00 10 a0 e3                                      mov r1, #0
004576f4  04 40 8f e0                                      add r4, pc, r4
004576f8  03 30 94 e7                                      ldr r3, [r4, r3]
004576fc  14 10 80 e5                                      str r1, [r0, #0x14]
00457700  08 30 83 e2                                      add r3, r3, #8
00457704  00 30 80 e5                                      str r3, [r0]
00457708  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0045770c  9c d3 53 00 18 23 00 00                          .byte 0x9c, 0xd3, 0x53, 0x00, 0x18, 0x23, 0x00, 0x00
