; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008100bc, declared_size=32, range_size=32, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager11GetInstanceEv
; demangled: CNetPlayerManager::GetInstance()
; decoder-mode: arm
008100bc  10 30 9f e5                                      ldr r3, [pc, #0x10]
008100c0  10 20 9f e5                                      ldr r2, [pc, #0x10]
008100c4  03 30 8f e0                                      add r3, pc, r3
008100c8  02 20 93 e7                                      ldr r2, [r3, r2]
008100cc  00 00 92 e5                                      ldr r0, [r2]
008100d0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008100d4  cc 49 18 00 14 34 00 00                          .byte 0xcc, 0x49, 0x18, 0x00, 0x14, 0x34, 0x00, 0x00

; FUNCTION 0x008100e0, declared_size=40, range_size=40, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager13IsInitializedEv
; demangled: CNetPlayerManager::IsInitialized()
; decoder-mode: arm
008100e0  18 30 9f e5                                      ldr r3, [pc, #0x18]
008100e4  18 20 9f e5                                      ldr r2, [pc, #0x18]
008100e8  03 30 8f e0                                      add r3, pc, r3
008100ec  02 20 93 e7                                      ldr r2, [r3, r2]
008100f0  00 00 92 e5                                      ldr r0, [r2]
008100f4  00 00 50 e3                                      cmp r0, #0
008100f8  78 01 d0 15                                      ldrbne r0, [r0, #0x178]
008100fc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00810100  a8 49 18 00 14 34 00 00                          .byte 0xa8, 0x49, 0x18, 0x00, 0x14, 0x34, 0x00, 0x00

; FUNCTION 0x00810108, declared_size=68, range_size=68, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager9TerminateEv
; demangled: CNetPlayerManager::Terminate()
; decoder-mode: arm
00810108  34 30 9f e5                                      ldr r3, [pc, #0x34]
0081010c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00810110  10 40 2d e9                                      push {r4, lr}
00810114  03 30 8f e0                                      add r3, pc, r3
00810118  02 40 93 e7                                      ldr r4, [r3, r2]
0081011c  00 30 94 e5                                      ldr r3, [r4]
00810120  00 00 53 e3                                      cmp r3, #0
00810124  05 00 00 0a                                      beq #0x810140
00810128  03 00 a0 e1                                      mov r0, r3
0081012c  00 30 93 e5                                      ldr r3, [r3]
00810130  0f e0 a0 e1                                      mov lr, pc
00810134  04 f0 93 e5                                      ldr pc, [r3, #4]
00810138  00 30 a0 e3                                      mov r3, #0
0081013c  00 30 84 e5                                      str r3, [r4]
00810140  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00810144  7c 49 18 00 14 34 00 00                          .byte 0x7c, 0x49, 0x18, 0x00, 0x14, 0x34, 0x00, 0x00

; FUNCTION 0x0081014c, declared_size=52, range_size=52, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager17GetPlayerInternalEi
; demangled: CNetPlayerManager::GetPlayerInternal(int)
; decoder-mode: arm
0081014c  00 00 51 e3                                      cmp r1, #0
00810150  08 00 00 ba                                      blt #0x810178
00810154  94 31 90 e5                                      ldr r3, [r0, #0x194]
00810158  03 00 51 e1                                      cmp r1, r3
0081015c  05 00 00 aa                                      bge #0x810178
00810160  9c 21 90 e5                                      ldr r2, [r0, #0x19c]
00810164  98 31 90 e5                                      ldr r3, [r0, #0x198]
00810168  02 20 63 e0                                      rsb r2, r3, r2
0081016c  42 01 51 e1                                      cmp r1, r2, asr #2
00810170  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
00810174  1e ff 2f b1                                      bxlt lr
00810178  00 00 a0 e3                                      mov r0, #0
0081017c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00810180, declared_size=96, range_size=96, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager17GetPlayerInternalEii
; demangled: CNetPlayerManager::GetPlayerInternal(int, int)
; decoder-mode: arm
00810180  30 00 2d e9                                      push {r4, r5}
00810184  9c c1 90 e5                                      ldr ip, [r0, #0x19c]
00810188  98 31 90 e5                                      ldr r3, [r0, #0x198]
0081018c  0c c0 63 e0                                      rsb ip, r3, ip
00810190  4c c1 b0 e1                                      asrs ip, ip, #2
00810194  0f 00 00 0a                                      beq #0x8101d8
00810198  00 40 a0 e3                                      mov r4, #0
0081019c  01 00 00 ea                                      b #0x8101a8
008101a0  04 00 5c e1                                      cmp ip, r4
008101a4  0b 00 00 0a                                      beq #0x8101d8
008101a8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
008101ac  01 40 84 e2                                      add r4, r4, #1
008101b0  00 00 50 e3                                      cmp r0, #0
008101b4  f9 ff ff 0a                                      beq #0x8101a0
008101b8  a0 51 90 e5                                      ldr r5, [r0, #0x1a0]
008101bc  05 00 51 e1                                      cmp r1, r5
008101c0  f6 ff ff 1a                                      bne #0x8101a0
008101c4  c8 51 90 e5                                      ldr r5, [r0, #0x1c8]
008101c8  05 00 52 e1                                      cmp r2, r5
008101cc  f3 ff ff 1a                                      bne #0x8101a0
008101d0  30 00 bd e8                                      pop {r4, r5}
008101d4  1e ff 2f e1                                      bx lr
008101d8  00 00 a0 e3                                      mov r0, #0
008101dc  fb ff ff ea                                      b #0x8101d0

; FUNCTION 0x008101e0, declared_size=72, range_size=72, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager9GetPlayerEib
; demangled: CNetPlayerManager::GetPlayer(int, bool)
; decoder-mode: arm
008101e0  70 40 2d e9                                      push {r4, r5, r6, lr}
008101e4  02 40 a0 e1                                      mov r4, r2
008101e8  00 50 a0 e1                                      mov r5, r0
008101ec  d6 ff ff eb                                      bl #0x81014c
008101f0  00 60 50 e2                                      subs r6, r0, #0
008101f4  08 00 00 0a                                      beq #0x81021c
008101f8  00 00 54 e3                                      cmp r4, #0
008101fc  01 00 00 0a                                      beq #0x810208
00810200  06 00 a0 e1                                      mov r0, r6
00810204  70 80 bd e8                                      pop {r4, r5, r6, pc}
00810208  00 30 96 e5                                      ldr r3, [r6]
0081020c  0f e0 a0 e1                                      mov lr, pc
00810210  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00810214  00 00 50 e3                                      cmp r0, #0
00810218  f8 ff ff 1a                                      bne #0x810200
0081021c  7c 61 95 e5                                      ldr r6, [r5, #0x17c]
00810220  06 00 a0 e1                                      mov r0, r6
00810224  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00810228, declared_size=72, range_size=72, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager19GetPlayerByMemberIdEiib
; demangled: CNetPlayerManager::GetPlayerByMemberId(int, int, bool)
; decoder-mode: arm
00810228  70 40 2d e9                                      push {r4, r5, r6, lr}
0081022c  03 50 a0 e1                                      mov r5, r3
00810230  00 40 a0 e1                                      mov r4, r0
00810234  d1 ff ff eb                                      bl #0x810180
00810238  00 60 50 e2                                      subs r6, r0, #0
0081023c  08 00 00 0a                                      beq #0x810264
00810240  00 30 96 e5                                      ldr r3, [r6]
00810244  0f e0 a0 e1                                      mov lr, pc
00810248  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0081024c  00 00 50 e3                                      cmp r0, #0
00810250  01 00 00 0a                                      beq #0x81025c
00810254  06 00 a0 e1                                      mov r0, r6
00810258  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081025c  00 00 55 e3                                      cmp r5, #0
00810260  fb ff ff 1a                                      bne #0x810254
00810264  7c 61 94 e5                                      ldr r6, [r4, #0x17c]
00810268  06 00 a0 e1                                      mov r0, r6
0081026c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00810270, declared_size=80, range_size=80, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager15GetFreePlayerIdEv
; demangled: CNetPlayerManager::GetFreePlayerId()
; decoder-mode: arm
00810270  94 21 90 e5                                      ldr r2, [r0, #0x194]
00810274  00 00 52 e3                                      cmp r2, #0
00810278  0e 00 00 da                                      ble #0x8102b8
0081027c  98 11 90 e5                                      ldr r1, [r0, #0x198]
00810280  00 30 91 e5                                      ldr r3, [r1]
00810284  f0 01 93 e5                                      ldr r0, [r3, #0x1f0]
00810288  00 00 50 e3                                      cmp r0, #0
0081028c  1e ff 2f 01                                      bxeq lr
00810290  00 00 a0 e3                                      mov r0, #0
00810294  01 00 80 e2                                      add r0, r0, #1
00810298  02 00 50 e1                                      cmp r0, r2
0081029c  05 00 00 0a                                      beq #0x8102b8
008102a0  00 31 91 e7                                      ldr r3, [r1, r0, lsl #2]
008102a4  f0 31 93 e5                                      ldr r3, [r3, #0x1f0]
008102a8  00 00 53 e3                                      cmp r3, #0
008102ac  f8 ff ff 1a                                      bne #0x810294
008102b0  00 00 52 e1                                      cmp r2, r0
008102b4  1e ff 2f c1                                      bxgt lr
008102b8  00 00 e0 e3                                      mvn r0, #0
008102bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008102c0, declared_size=48, range_size=48, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager27RegisterPlayerInfoFunctionsEPFP14CNetPlayerInfovEPFvS1_E
; demangled: CNetPlayerManager::RegisterPlayerInfoFunctions(CNetPlayerInfo* (*)(), void (*)(CNetPlayerInfo*))
; decoder-mode: arm
008102c0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
008102c4  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
008102c8  03 30 8f e0                                      add r3, pc, r3
008102cc  02 c0 93 e7                                      ldr ip, [r3, r2]
008102d0  14 20 9f e5                                      ldr r2, [pc, #0x14]
008102d4  00 00 8c e5                                      str r0, [ip]
008102d8  02 20 93 e7                                      ldr r2, [r3, r2]
008102dc  00 10 82 e5                                      str r1, [r2]
008102e0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008102e4  c8 47 18 00 4c 17 00 00 d4 47 00 00              .byte 0xc8, 0x47, 0x18, 0x00, 0x4c, 0x17, 0x00, 0x00, 0xd4, 0x47, 0x00, 0x00

; FUNCTION 0x008102f0, declared_size=72, range_size=72, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager29UnregisterPlayerInfoFunctionsEv
; demangled: CNetPlayerManager::UnregisterPlayerInfoFunctions()
; decoder-mode: arm
008102f0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
008102f4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
008102f8  03 30 8f e0                                      add r3, pc, r3
008102fc  02 00 93 e7                                      ldr r0, [r3, r2]
00810300  24 20 9f e5                                      ldr r2, [pc, #0x24]
00810304  02 10 93 e7                                      ldr r1, [r3, r2]
00810308  20 20 9f e5                                      ldr r2, [pc, #0x20]
0081030c  02 c0 93 e7                                      ldr ip, [r3, r2]
00810310  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00810314  00 c0 80 e5                                      str ip, [r0]
00810318  02 20 93 e7                                      ldr r2, [r3, r2]
0081031c  00 10 82 e5                                      str r1, [r2]
00810320  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00810324  98 47 18 00 4c 17 00 00 c0 4b 00 00 78 2c 00 00  .byte 0x98, 0x47, 0x18, 0x00, 0x4c, 0x17, 0x00, 0x00, 0xc0, 0x4b, 0x00, 0x00, 0x78, 0x2c, 0x00, 0x00
00810334  d4 47 00 00                                      .byte 0xd4, 0x47, 0x00, 0x00

; FUNCTION 0x00810338, declared_size=128, range_size=128, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager25AreAllPlayersAcknowledgedEv
; demangled: CNetPlayerManager::AreAllPlayersAcknowledged()
; decoder-mode: arm
00810338  70 40 2d e9                                      push {r4, r5, r6, lr}
0081033c  98 31 90 e5                                      ldr r3, [r0, #0x198]
00810340  9c 21 90 e5                                      ldr r2, [r0, #0x19c]
00810344  00 50 a0 e1                                      mov r5, r0
00810348  02 20 63 e0                                      rsb r2, r3, r2
0081034c  22 21 b0 e1                                      lsrs r2, r2, #2
00810350  16 00 00 0a                                      beq #0x8103b0
00810354  00 30 93 e5                                      ldr r3, [r3]
00810358  00 00 53 e3                                      cmp r3, #0
0081035c  00 40 a0 13                                      movne r4, #0
00810360  05 00 00 0a                                      beq #0x81037c
00810364  03 00 a0 e1                                      mov r0, r3
00810368  00 30 93 e5                                      ldr r3, [r3]
0081036c  0f e0 a0 e1                                      mov lr, pc
00810370  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00810374  00 00 50 e3                                      cmp r0, #0
00810378  01 00 00 1a                                      bne #0x810384
0081037c  00 00 a0 e3                                      mov r0, #0
00810380  70 80 bd e8                                      pop {r4, r5, r6, pc}
00810384  98 31 95 e5                                      ldr r3, [r5, #0x198]
00810388  9c 21 95 e5                                      ldr r2, [r5, #0x19c]
0081038c  01 40 84 e2                                      add r4, r4, #1
00810390  02 20 63 e0                                      rsb r2, r3, r2
00810394  42 01 54 e1                                      cmp r4, r2, asr #2
00810398  04 00 00 2a                                      bhs #0x8103b0
0081039c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
008103a0  00 00 53 e3                                      cmp r3, #0
008103a4  ee ff ff 1a                                      bne #0x810364
008103a8  00 00 a0 e3                                      mov r0, #0
008103ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
008103b0  01 00 a0 e3                                      mov r0, #1
008103b4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008103f4, declared_size=8, range_size=8, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager17ResendManagerInfoEv
; demangled: CNetPlayerManager::ResendManagerInfo()
; decoder-mode: arm
008103f4  20 00 80 e2                                      add r0, r0, #0x20
008103f8  1f 0c 00 ea                                      b #0x81347c

; FUNCTION 0x008103fc, declared_size=196, range_size=196, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager17ProcessLostPacketEii
; demangled: CNetPlayerManager::ProcessLostPacket(int, int)
; decoder-mode: arm
008103fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00810400  00 50 a0 e1                                      mov r5, r0
00810404  20 00 80 e2                                      add r0, r0, #0x20
00810408  02 70 a0 e1                                      mov r7, r2
0081040c  01 60 a0 e1                                      mov r6, r1
00810410  d7 10 00 eb                                      bl #0x814774
00810414  98 21 95 e5                                      ldr r2, [r5, #0x198]
00810418  9c 01 95 e5                                      ldr r0, [r5, #0x19c]
0081041c  00 30 62 e0                                      rsb r3, r2, r0
00810420  23 31 b0 e1                                      lsrs r3, r3, #2
00810424  0f 00 00 0a                                      beq #0x810468
00810428  00 40 a0 e3                                      mov r4, #0
0081042c  04 31 92 e7                                      ldr r3, [r2, r4, lsl #2]
00810430  06 10 a0 e1                                      mov r1, r6
00810434  01 40 84 e2                                      add r4, r4, #1
00810438  00 00 53 e3                                      cmp r3, #0
0081043c  06 00 00 0a                                      beq #0x81045c
00810440  03 00 a0 e1                                      mov r0, r3
00810444  07 20 a0 e1                                      mov r2, r7
00810448  00 30 93 e5                                      ldr r3, [r3]
0081044c  0f e0 a0 e1                                      mov lr, pc
00810450  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00810454  98 21 95 e5                                      ldr r2, [r5, #0x198]
00810458  9c 01 95 e5                                      ldr r0, [r5, #0x19c]
0081045c  00 30 62 e0                                      rsb r3, r2, r0
00810460  43 01 54 e1                                      cmp r4, r3, asr #2
00810464  f0 ff ff 3a                                      blo #0x81042c
00810468  a4 21 95 e5                                      ldr r2, [r5, #0x1a4]
0081046c  a8 01 95 e5                                      ldr r0, [r5, #0x1a8]
00810470  00 30 62 e0                                      rsb r3, r2, r0
00810474  23 31 b0 e1                                      lsrs r3, r3, #2
00810478  0f 00 00 0a                                      beq #0x8104bc
0081047c  00 40 a0 e3                                      mov r4, #0
00810480  04 31 92 e7                                      ldr r3, [r2, r4, lsl #2]
00810484  06 10 a0 e1                                      mov r1, r6
00810488  01 40 84 e2                                      add r4, r4, #1
0081048c  00 00 53 e3                                      cmp r3, #0
00810490  06 00 00 0a                                      beq #0x8104b0
00810494  03 00 a0 e1                                      mov r0, r3
00810498  07 20 a0 e1                                      mov r2, r7
0081049c  00 30 93 e5                                      ldr r3, [r3]
008104a0  0f e0 a0 e1                                      mov lr, pc
008104a4  44 f0 93 e5                                      ldr pc, [r3, #0x44]
008104a8  a4 21 95 e5                                      ldr r2, [r5, #0x1a4]
008104ac  a8 01 95 e5                                      ldr r0, [r5, #0x1a8]
008104b0  00 30 62 e0                                      rsb r3, r2, r0
008104b4  43 01 54 e1                                      cmp r4, r3, asr #2
008104b8  f0 ff ff 3a                                      blo #0x810480
008104bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008104c0, declared_size=44, range_size=44, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager18sProcessLostPacketEii
; demangled: CNetPlayerManager::sProcessLostPacket(int, int)
; decoder-mode: arm
008104c0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
008104c4  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
008104c8  00 c0 a0 e1                                      mov ip, r0
008104cc  03 30 8f e0                                      add r3, pc, r3
008104d0  02 00 93 e7                                      ldr r0, [r3, r2]
008104d4  01 20 a0 e1                                      mov r2, r1
008104d8  0c 10 a0 e1                                      mov r1, ip
008104dc  00 00 90 e5                                      ldr r0, [r0]
008104e0  c5 ff ff ea                                      b #0x8103fc
; mapping-symbol data/literal pool
008104e4  c4 45 18 00 14 34 00 00                          .byte 0xc4, 0x45, 0x18, 0x00, 0x14, 0x34, 0x00, 0x00

; FUNCTION 0x008104ec, declared_size=196, range_size=196, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager25ProcessAcknowledgedPacketEii
; demangled: CNetPlayerManager::ProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
008104ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008104f0  00 50 a0 e1                                      mov r5, r0
008104f4  20 00 80 e2                                      add r0, r0, #0x20
008104f8  02 70 a0 e1                                      mov r7, r2
008104fc  01 60 a0 e1                                      mov r6, r1
00810500  08 12 00 eb                                      bl #0x814d28
00810504  98 21 95 e5                                      ldr r2, [r5, #0x198]
00810508  9c 01 95 e5                                      ldr r0, [r5, #0x19c]
0081050c  00 30 62 e0                                      rsb r3, r2, r0
00810510  23 31 b0 e1                                      lsrs r3, r3, #2
00810514  0f 00 00 0a                                      beq #0x810558
00810518  00 40 a0 e3                                      mov r4, #0
0081051c  04 31 92 e7                                      ldr r3, [r2, r4, lsl #2]
00810520  06 10 a0 e1                                      mov r1, r6
00810524  01 40 84 e2                                      add r4, r4, #1
00810528  00 00 53 e3                                      cmp r3, #0
0081052c  06 00 00 0a                                      beq #0x81054c
00810530  03 00 a0 e1                                      mov r0, r3
00810534  07 20 a0 e1                                      mov r2, r7
00810538  00 30 93 e5                                      ldr r3, [r3]
0081053c  0f e0 a0 e1                                      mov lr, pc
00810540  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00810544  98 21 95 e5                                      ldr r2, [r5, #0x198]
00810548  9c 01 95 e5                                      ldr r0, [r5, #0x19c]
0081054c  00 30 62 e0                                      rsb r3, r2, r0
00810550  43 01 54 e1                                      cmp r4, r3, asr #2
00810554  f0 ff ff 3a                                      blo #0x81051c
00810558  a4 21 95 e5                                      ldr r2, [r5, #0x1a4]
0081055c  a8 01 95 e5                                      ldr r0, [r5, #0x1a8]
00810560  00 30 62 e0                                      rsb r3, r2, r0
00810564  23 31 b0 e1                                      lsrs r3, r3, #2
00810568  0f 00 00 0a                                      beq #0x8105ac
0081056c  00 40 a0 e3                                      mov r4, #0
00810570  04 31 92 e7                                      ldr r3, [r2, r4, lsl #2]
00810574  06 10 a0 e1                                      mov r1, r6
00810578  01 40 84 e2                                      add r4, r4, #1
0081057c  00 00 53 e3                                      cmp r3, #0
00810580  06 00 00 0a                                      beq #0x8105a0
00810584  03 00 a0 e1                                      mov r0, r3
00810588  07 20 a0 e1                                      mov r2, r7
0081058c  00 30 93 e5                                      ldr r3, [r3]
00810590  0f e0 a0 e1                                      mov lr, pc
00810594  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00810598  a4 21 95 e5                                      ldr r2, [r5, #0x1a4]
0081059c  a8 01 95 e5                                      ldr r0, [r5, #0x1a8]
008105a0  00 30 62 e0                                      rsb r3, r2, r0
008105a4  43 01 54 e1                                      cmp r4, r3, asr #2
008105a8  f0 ff ff 3a                                      blo #0x810570
008105ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008105b0, declared_size=44, range_size=44, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager26sProcessAcknowledgedPacketEii
; demangled: CNetPlayerManager::sProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
008105b0  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
008105b4  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
008105b8  00 c0 a0 e1                                      mov ip, r0
008105bc  03 30 8f e0                                      add r3, pc, r3
008105c0  02 00 93 e7                                      ldr r0, [r3, r2]
008105c4  01 20 a0 e1                                      mov r2, r1
008105c8  0c 10 a0 e1                                      mov r1, ip
008105cc  00 00 90 e5                                      ldr r0, [r0]
008105d0  c5 ff ff ea                                      b #0x8104ec
; mapping-symbol data/literal pool
008105d4  d4 44 18 00 14 34 00 00                          .byte 0xd4, 0x44, 0x18, 0x00, 0x14, 0x34, 0x00, 0x00

; FUNCTION 0x008105dc, declared_size=52, range_size=52, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager14GetLocalPlayerEi
; demangled: CNetPlayerManager::GetLocalPlayer(int)
; decoder-mode: arm
008105dc  70 40 2d e9                                      push {r4, r5, r6, lr}
008105e0  01 40 a0 e1                                      mov r4, r1
008105e4  00 50 a0 e1                                      mov r5, r0
008105e8  67 c2 ff eb                                      bl #0x800f8c
008105ec  00 30 90 e5                                      ldr r3, [r0]
008105f0  0f e0 a0 e1                                      mov lr, pc
008105f4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
008105f8  04 20 a0 e1                                      mov r2, r4
008105fc  00 10 a0 e1                                      mov r1, r0
00810600  00 30 a0 e3                                      mov r3, #0
00810604  05 00 a0 e1                                      mov r0, r5
00810608  70 40 bd e8                                      pop {r4, r5, r6, lr}
0081060c  05 ff ff ea                                      b #0x810228

; FUNCTION 0x00810610, declared_size=604, range_size=604, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager15WritePacketDataEiiR12NetBitStream
; demangled: CNetPlayerManager::WritePacketData(int, int, NetBitStream&)
; decoder-mode: arm
00810610  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00810614  0c d0 4d e2                                      sub sp, sp, #0xc
00810618  02 a0 a0 e1                                      mov sl, r2
0081061c  03 80 a0 e1                                      mov r8, r3
00810620  01 60 a0 e1                                      mov r6, r1
00810624  00 40 a0 e1                                      mov r4, r0
00810628  20 50 80 e2                                      add r5, r0, #0x20
0081062c  58 b4 ff eb                                      bl #0x7fd794
00810630  df b3 ff eb                                      bl #0x7fd5b4
00810634  00 10 a0 e1                                      mov r1, r0
00810638  05 00 a0 e1                                      mov r0, r5
0081063c  0a 0c 00 eb                                      bl #0x81366c
00810640  51 c2 ff eb                                      bl #0x800f8c
00810644  a5 b7 ff eb                                      bl #0x7fe4e0
00810648  08 20 a0 e1                                      mov r2, r8
0081064c  00 10 a0 e1                                      mov r1, r0
00810650  06 30 a0 e1                                      mov r3, r6
00810654  05 00 a0 e1                                      mov r0, r5
00810658  00 a0 8d e5                                      str sl, [sp]
0081065c  9c 11 00 eb                                      bl #0x814cd4
00810660  98 31 94 e5                                      ldr r3, [r4, #0x198]
00810664  9c 21 94 e5                                      ldr r2, [r4, #0x19c]
00810668  00 70 50 e2                                      subs r7, r0, #0
0081066c  01 70 a0 13                                      movne r7, #1
00810670  02 20 63 e0                                      rsb r2, r3, r2
00810674  22 21 b0 e1                                      lsrs r2, r2, #2
00810678  23 00 00 0a                                      beq #0x81070c
0081067c  00 50 a0 e3                                      mov r5, #0
00810680  01 b0 a0 e3                                      mov fp, #1
00810684  05 21 93 e7                                      ldr r2, [r3, r5, lsl #2]
00810688  05 91 a0 e1                                      lsl sb, r5, #2
0081068c  f0 11 92 e5                                      ldr r1, [r2, #0x1f0]
00810690  06 00 51 e3                                      cmp r1, #6
00810694  0b 00 00 8a                                      bhi #0x8106c8
00810698  1b 11 a0 e1                                      lsl r1, fp, r1
0081069c  6c 00 11 e3                                      tst r1, #0x6c
008106a0  5b 00 00 1a                                      bne #0x810814
008106a4  11 00 11 e3                                      tst r1, #0x11
008106a8  54 00 00 1a                                      bne #0x810800
008106ac  02 00 11 e3                                      tst r1, #2
008106b0  04 00 00 0a                                      beq #0x8106c8
008106b4  34 c2 ff eb                                      bl #0x800f8c
008106b8  88 b7 ff eb                                      bl #0x7fe4e0
008106bc  00 00 50 e3                                      cmp r0, #0
008106c0  42 00 00 1a                                      bne #0x8107d0
008106c4  98 31 94 e5                                      ldr r3, [r4, #0x198]
008106c8  00 10 a0 e3                                      mov r1, #0
008106cc  09 30 93 e7                                      ldr r3, [r3, sb]
008106d0  08 20 a0 e1                                      mov r2, r8
008106d4  01 50 85 e2                                      add r5, r5, #1
008106d8  00 c0 93 e5                                      ldr ip, [r3]
008106dc  03 00 a0 e1                                      mov r0, r3
008106e0  00 a0 8d e5                                      str sl, [sp]
008106e4  06 30 a0 e1                                      mov r3, r6
008106e8  0f e0 a0 e1                                      mov lr, pc
008106ec  0c f0 9c e5                                      ldr pc, [ip, #0xc]
008106f0  98 31 94 e5                                      ldr r3, [r4, #0x198]
008106f4  9c 21 94 e5                                      ldr r2, [r4, #0x19c]
008106f8  00 00 50 e3                                      cmp r0, #0
008106fc  01 70 87 13                                      orrne r7, r7, #1
00810700  02 20 63 e0                                      rsb r2, r3, r2
00810704  42 01 55 e1                                      cmp r5, r2, asr #2
00810708  dd ff ff 3a                                      blo #0x810684
0081070c  a4 21 94 e5                                      ldr r2, [r4, #0x1a4]
00810710  a8 c1 94 e5                                      ldr ip, [r4, #0x1a8]
00810714  0c 30 62 e0                                      rsb r3, r2, ip
00810718  23 31 b0 e1                                      lsrs r3, r3, #2
0081071c  24 00 00 0a                                      beq #0x8107b4
00810720  00 50 a0 e3                                      mov r5, #0
00810724  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
00810728  06 10 a0 e1                                      mov r1, r6
0081072c  05 71 a0 e1                                      lsl r7, r5, #2
00810730  00 00 53 e2                                      subs r0, r3, #0
00810734  19 00 00 0a                                      beq #0x8107a0
00810738  00 30 93 e5                                      ldr r3, [r3]
0081073c  0f e0 a0 e1                                      mov lr, pc
00810740  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00810744  00 00 50 e3                                      cmp r0, #0
00810748  12 00 00 0a                                      beq #0x810798
0081074c  01 10 a0 e3                                      mov r1, #1
00810750  01 20 a0 e1                                      mov r2, r1
00810754  08 00 a0 e1                                      mov r0, r8
00810758  62 f7 ff eb                                      bl #0x80e4e8
0081075c  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00810760  08 00 a0 e1                                      mov r0, r8
00810764  08 20 a0 e3                                      mov r2, #8
00810768  07 30 93 e7                                      ldr r3, [r3, r7]
0081076c  c8 11 d3 e5                                      ldrb r1, [r3, #0x1c8]
00810770  5c f7 ff eb                                      bl #0x80e4e8
00810774  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00810778  08 10 a0 e1                                      mov r1, r8
0081077c  06 20 a0 e1                                      mov r2, r6
00810780  07 c0 93 e7                                      ldr ip, [r3, r7]
00810784  0a 30 a0 e1                                      mov r3, sl
00810788  0c 00 a0 e1                                      mov r0, ip
0081078c  00 c0 9c e5                                      ldr ip, [ip]
00810790  0f e0 a0 e1                                      mov lr, pc
00810794  08 f0 9c e5                                      ldr pc, [ip, #8]
00810798  a4 21 94 e5                                      ldr r2, [r4, #0x1a4]
0081079c  a8 c1 94 e5                                      ldr ip, [r4, #0x1a8]
008107a0  01 50 85 e2                                      add r5, r5, #1
008107a4  0c 30 62 e0                                      rsb r3, r2, ip
008107a8  43 01 55 e1                                      cmp r5, r3, asr #2
008107ac  dc ff ff 3a                                      blo #0x810724
008107b0  01 70 a0 e3                                      mov r7, #1
008107b4  08 00 a0 e1                                      mov r0, r8
008107b8  00 10 a0 e3                                      mov r1, #0
008107bc  01 20 a0 e3                                      mov r2, #1
008107c0  48 f7 ff eb                                      bl #0x80e4e8
008107c4  07 00 a0 e1                                      mov r0, r7
008107c8  0c d0 8d e2                                      add sp, sp, #0xc
008107cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008107d0  98 31 94 e5                                      ldr r3, [r4, #0x198]
008107d4  06 10 a0 e1                                      mov r1, r6
008107d8  09 30 93 e7                                      ldr r3, [r3, sb]
008107dc  03 00 a0 e1                                      mov r0, r3
008107e0  00 30 93 e5                                      ldr r3, [r3]
008107e4  0f e0 a0 e1                                      mov lr, pc
008107e8  54 f0 93 e5                                      ldr pc, [r3, #0x54]
008107ec  00 00 50 e3                                      cmp r0, #0
008107f0  b3 ff ff 0a                                      beq #0x8106c4
008107f4  98 31 94 e5                                      ldr r3, [r4, #0x198]
008107f8  01 10 a0 e3                                      mov r1, #1
008107fc  b2 ff ff ea                                      b #0x8106cc
00810800  e1 c1 ff eb                                      bl #0x800f8c
00810804  35 b7 ff eb                                      bl #0x7fe4e0
00810808  98 31 94 e5                                      ldr r3, [r4, #0x198]
0081080c  00 10 a0 e1                                      mov r1, r0
00810810  ad ff ff ea                                      b #0x8106cc
00810814  02 00 a0 e1                                      mov r0, r2
00810818  00 30 92 e5                                      ldr r3, [r2]
0081081c  0f e0 a0 e1                                      mov lr, pc
00810820  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00810824  00 00 50 e3                                      cmp r0, #0
00810828  f1 ff ff 1a                                      bne #0x8107f4
0081082c  d6 c1 ff eb                                      bl #0x800f8c
00810830  2a b7 ff eb                                      bl #0x7fe4e0
00810834  00 00 50 e3                                      cmp r0, #0
00810838  a1 ff ff 0a                                      beq #0x8106c4
0081083c  98 31 94 e5                                      ldr r3, [r4, #0x198]
00810840  06 10 a0 e1                                      mov r1, r6
00810844  09 30 93 e7                                      ldr r3, [r3, sb]
00810848  03 00 a0 e1                                      mov r0, r3
0081084c  00 30 93 e5                                      ldr r3, [r3]
00810850  0f e0 a0 e1                                      mov lr, pc
00810854  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00810858  00 00 50 e3                                      cmp r0, #0
0081085c  98 ff ff 1a                                      bne #0x8106c4
00810860  98 31 94 e5                                      ldr r3, [r4, #0x198]
00810864  01 10 a0 e3                                      mov r1, #1
00810868  97 ff ff ea                                      b #0x8106cc

; FUNCTION 0x0081086c, declared_size=60, range_size=60, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager16sWritePacketDataEiiR12NetBitStream
; demangled: CNetPlayerManager::sWritePacketData(int, int, NetBitStream&)
; decoder-mode: arm
0081086c  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
00810870  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00810874  30 00 2d e9                                      push {r4, r5}
00810878  0c c0 8f e0                                      add ip, pc, ip
0081087c  00 50 a0 e1                                      mov r5, r0
00810880  03 00 9c e7                                      ldr r0, [ip, r3]
00810884  01 40 a0 e1                                      mov r4, r1
00810888  02 30 a0 e1                                      mov r3, r2
0081088c  00 00 90 e5                                      ldr r0, [r0]
00810890  05 10 a0 e1                                      mov r1, r5
00810894  04 20 a0 e1                                      mov r2, r4
00810898  30 00 bd e8                                      pop {r4, r5}
0081089c  5b ff ff ea                                      b #0x810610
; mapping-symbol data/literal pool
008108a0  18 42 18 00 14 34 00 00                          .byte 0x18, 0x42, 0x18, 0x00, 0x14, 0x34, 0x00, 0x00

; FUNCTION 0x008108a8, declared_size=24, range_size=24, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager12RemovePlayerEi
; demangled: CNetPlayerManager::RemovePlayer(int)
; decoder-mode: arm
008108a8  10 40 2d e9                                      push {r4, lr}
008108ac  01 20 a0 e3                                      mov r2, #1
008108b0  4a fe ff eb                                      bl #0x8101e0
008108b4  89 fa ff eb                                      bl #0x80f2e0
008108b8  00 00 a0 e3                                      mov r0, #0
008108bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008108c0, declared_size=24, range_size=24, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager16DisconnectPlayerEi
; demangled: CNetPlayerManager::DisconnectPlayer(int)
; decoder-mode: arm
008108c0  10 40 2d e9                                      push {r4, lr}
008108c4  00 20 a0 e3                                      mov r2, #0
008108c8  44 fe ff eb                                      bl #0x8101e0
008108cc  a8 fa ff eb                                      bl #0x80f374
008108d0  00 00 a0 e3                                      mov r0, #0
008108d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008109a0, declared_size=468, range_size=468, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager13ProcessEventsEv
; demangled: CNetPlayerManager::ProcessEvents()
; decoder-mode: arm
008109a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008109a4  08 d0 4d e2                                      sub sp, sp, #8
008109a8  00 80 a0 e1                                      mov r8, r0
008109ac  04 40 80 e2                                      add r4, r0, #4
008109b0  06 6d 80 e2                                      add r6, r0, #0x180
008109b4  00 70 a0 e3                                      mov r7, #0
008109b8  04 50 8d e2                                      add r5, sp, #4
008109bc  09 16 a0 e3                                      mov r1, #0x900000
008109c0  00 20 a0 e3                                      mov r2, #0
008109c4  04 00 a0 e1                                      mov r0, r4
008109c8  8a b6 ff eb                                      bl #0x7fe3f8
008109cc  00 c0 50 e2                                      subs ip, r0, #0
008109d0  05 20 a0 e1                                      mov r2, r5
008109d4  04 30 a0 e3                                      mov r3, #4
008109d8  09 16 a0 e3                                      mov r1, #0x900000
008109dc  04 00 a0 e1                                      mov r0, r4
008109e0  19 00 00 0a                                      beq #0x810a4c
008109e4  04 70 8d e5                                      str r7, [sp, #4]
008109e8  5d b5 ff eb                                      bl #0x7fdf64
008109ec  04 00 a0 e1                                      mov r0, r4
008109f0  09 16 a0 e3                                      mov r1, #0x900000
008109f4  7d b6 ff eb                                      bl #0x7fe3f0
008109f8  04 30 a0 e3                                      mov r3, #4
008109fc  06 00 a0 e1                                      mov r0, r6
00810a00  03 16 a0 e3                                      mov r1, #0x300000
00810a04  05 20 a0 e1                                      mov r2, r5
00810a08  fd b5 ff eb                                      bl #0x7fe204
00810a0c  04 10 9d e5                                      ldr r1, [sp, #4]
00810a10  07 20 a0 e1                                      mov r2, r7
00810a14  08 00 a0 e1                                      mov r0, r8
00810a18  f0 fd ff eb                                      bl #0x8101e0
00810a1c  00 30 90 e5                                      ldr r3, [r0]
00810a20  0f e0 a0 e1                                      mov lr, pc
00810a24  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00810a28  00 00 50 e3                                      cmp r0, #0
00810a2c  e2 ff ff 0a                                      beq #0x8109bc
00810a30  03 16 a0 e3                                      mov r1, #0x300000
00810a34  01 10 81 e2                                      add r1, r1, #1
00810a38  06 00 a0 e1                                      mov r0, r6
00810a3c  05 20 a0 e1                                      mov r2, r5
00810a40  04 30 a0 e3                                      mov r3, #4
00810a44  ee b5 ff eb                                      bl #0x7fe204
00810a48  db ff ff ea                                      b #0x8109bc
00810a4c  0c 80 a0 e1                                      mov r8, ip
00810a50  04 50 8d e2                                      add r5, sp, #4
00810a54  10 00 00 ea                                      b #0x810a9c
00810a58  09 16 a0 e3                                      mov r1, #0x900000
00810a5c  05 20 a0 e1                                      mov r2, r5
00810a60  04 30 a0 e3                                      mov r3, #4
00810a64  02 10 81 e2                                      add r1, r1, #2
00810a68  04 00 a0 e1                                      mov r0, r4
00810a6c  04 80 8d e5                                      str r8, [sp, #4]
00810a70  3b b5 ff eb                                      bl #0x7fdf64
00810a74  09 16 a0 e3                                      mov r1, #0x900000
00810a78  04 00 a0 e1                                      mov r0, r4
00810a7c  02 10 81 e2                                      add r1, r1, #2
00810a80  5a b6 ff eb                                      bl #0x7fe3f0
00810a84  03 16 a0 e3                                      mov r1, #0x300000
00810a88  06 00 a0 e1                                      mov r0, r6
00810a8c  03 10 81 e2                                      add r1, r1, #3
00810a90  05 20 a0 e1                                      mov r2, r5
00810a94  04 30 a0 e3                                      mov r3, #4
00810a98  d9 b5 ff eb                                      bl #0x7fe204
00810a9c  09 16 a0 e3                                      mov r1, #0x900000
00810aa0  02 10 81 e2                                      add r1, r1, #2
00810aa4  04 00 a0 e1                                      mov r0, r4
00810aa8  00 20 a0 e3                                      mov r2, #0
00810aac  51 b6 ff eb                                      bl #0x7fe3f8
00810ab0  00 00 50 e3                                      cmp r0, #0
00810ab4  e7 ff ff 1a                                      bne #0x810a58
00810ab8  00 70 a0 e1                                      mov r7, r0
00810abc  04 50 8d e2                                      add r5, sp, #4
00810ac0  10 00 00 ea                                      b #0x810b08
00810ac4  09 16 a0 e3                                      mov r1, #0x900000
00810ac8  05 20 a0 e1                                      mov r2, r5
00810acc  04 30 a0 e3                                      mov r3, #4
00810ad0  03 10 81 e2                                      add r1, r1, #3
00810ad4  04 00 a0 e1                                      mov r0, r4
00810ad8  04 70 8d e5                                      str r7, [sp, #4]
00810adc  20 b5 ff eb                                      bl #0x7fdf64
00810ae0  09 16 a0 e3                                      mov r1, #0x900000
00810ae4  04 00 a0 e1                                      mov r0, r4
00810ae8  03 10 81 e2                                      add r1, r1, #3
00810aec  3f b6 ff eb                                      bl #0x7fe3f0
00810af0  03 16 a0 e3                                      mov r1, #0x300000
00810af4  06 00 a0 e1                                      mov r0, r6
00810af8  02 10 81 e2                                      add r1, r1, #2
00810afc  05 20 a0 e1                                      mov r2, r5
00810b00  04 30 a0 e3                                      mov r3, #4
00810b04  be b5 ff eb                                      bl #0x7fe204
00810b08  09 16 a0 e3                                      mov r1, #0x900000
00810b0c  03 10 81 e2                                      add r1, r1, #3
00810b10  04 00 a0 e1                                      mov r0, r4
00810b14  00 20 a0 e3                                      mov r2, #0
00810b18  36 b6 ff eb                                      bl #0x7fe3f8
00810b1c  00 00 50 e3                                      cmp r0, #0
00810b20  e7 ff ff 1a                                      bne #0x810ac4
00810b24  00 60 a0 e1                                      mov r6, r0
00810b28  04 50 8d e2                                      add r5, sp, #4
00810b2c  08 00 00 ea                                      b #0x810b54
00810b30  09 16 a0 e3                                      mov r1, #0x900000
00810b34  04 00 a0 e1                                      mov r0, r4
00810b38  05 20 a0 e1                                      mov r2, r5
00810b3c  04 30 a0 e3                                      mov r3, #4
00810b40  04 60 8d e5                                      str r6, [sp, #4]
00810b44  06 b5 ff eb                                      bl #0x7fdf64
00810b48  04 00 a0 e1                                      mov r0, r4
00810b4c  09 16 a0 e3                                      mov r1, #0x900000
00810b50  26 b6 ff eb                                      bl #0x7fe3f0
00810b54  04 00 a0 e1                                      mov r0, r4
00810b58  09 16 a0 e3                                      mov r1, #0x900000
00810b5c  00 20 a0 e3                                      mov r2, #0
00810b60  24 b6 ff eb                                      bl #0x7fe3f8
00810b64  00 00 50 e3                                      cmp r0, #0
00810b68  f0 ff ff 1a                                      bne #0x810b30
00810b6c  08 d0 8d e2                                      add sp, sp, #8
00810b70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00810b7c, declared_size=88, range_size=88, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager18SetPlayerGamepadIdEii
; demangled: CNetPlayerManager::SetPlayerGamepadId(int, int)
; decoder-mode: arm
00810b7c  00 00 51 e3                                      cmp r1, #0
00810b80  10 40 2d e9                                      push {r4, lr}
00810b84  10 00 00 ba                                      blt #0x810bcc
00810b88  94 31 90 e5                                      ldr r3, [r0, #0x194]
00810b8c  03 00 51 e1                                      cmp r1, r3
00810b90  0d 00 00 aa                                      bge #0x810bcc
00810b94  9c c1 90 e5                                      ldr ip, [r0, #0x19c]
00810b98  98 31 90 e5                                      ldr r3, [r0, #0x198]
00810b9c  0c 00 63 e0                                      rsb r0, r3, ip
00810ba0  40 01 51 e1                                      cmp r1, r0, asr #2
00810ba4  08 00 00 aa                                      bge #0x810bcc
00810ba8  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00810bac  c8 31 90 e5                                      ldr r3, [r0, #0x1c8]
00810bb0  03 00 52 e1                                      cmp r2, r3
00810bb4  02 00 00 0a                                      beq #0x810bc4
00810bb8  c8 21 80 e5                                      str r2, [r0, #0x1c8]
00810bbc  6a 0f 80 e2                                      add r0, r0, #0x1a8
00810bc0  ef 10 00 eb                                      bl #0x814f84
00810bc4  01 00 a0 e3                                      mov r0, #1
00810bc8  10 80 bd e8                                      pop {r4, pc}
00810bcc  00 00 a0 e3                                      mov r0, #0
00810bd0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00810bd4, declared_size=180, range_size=180, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager14ReassignPlayerEiii
; demangled: CNetPlayerManager::ReassignPlayer(int, int, int)
; decoder-mode: arm
00810bd4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00810bd8  01 50 a0 e1                                      mov r5, r1
00810bdc  02 40 a0 e1                                      mov r4, r2
00810be0  03 70 a0 e1                                      mov r7, r3
00810be4  00 60 a0 e1                                      mov r6, r0
00810be8  e7 c0 ff eb                                      bl #0x800f8c
00810bec  3b b6 ff eb                                      bl #0x7fe4e0
00810bf0  00 00 50 e3                                      cmp r0, #0
00810bf4  00 00 00 1a                                      bne #0x810bfc
00810bf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00810bfc  06 00 a0 e1                                      mov r0, r6
00810c00  05 10 a0 e1                                      mov r1, r5
00810c04  01 20 a0 e3                                      mov r2, #1
00810c08  74 fd ff eb                                      bl #0x8101e0
00810c0c  a0 31 90 e5                                      ldr r3, [r0, #0x1a0]
00810c10  00 80 a0 e1                                      mov r8, r0
00810c14  03 00 54 e1                                      cmp r4, r3
00810c18  02 00 00 0a                                      beq #0x810c28
00810c1c  a0 41 80 e5                                      str r4, [r0, #0x1a0]
00810c20  06 0d 80 e2                                      add r0, r0, #0x180
00810c24  d6 10 00 eb                                      bl #0x814f84
00810c28  c8 31 98 e5                                      ldr r3, [r8, #0x1c8]
00810c2c  03 00 57 e1                                      cmp r7, r3
00810c30  02 00 00 0a                                      beq #0x810c40
00810c34  c8 71 88 e5                                      str r7, [r8, #0x1c8]
00810c38  6a 0f 88 e2                                      add r0, r8, #0x1a8
00810c3c  d0 10 00 eb                                      bl #0x814f84
00810c40  f0 31 98 e5                                      ldr r3, [r8, #0x1f0]
00810c44  01 00 53 e3                                      cmp r3, #1
00810c48  03 00 00 0a                                      beq #0x810c5c
00810c4c  01 30 a0 e3                                      mov r3, #1
00810c50  f0 31 88 e5                                      str r3, [r8, #0x1f0]
00810c54  1d 0e 88 e2                                      add r0, r8, #0x1d0
00810c58  c9 10 00 eb                                      bl #0x814f84
00810c5c  ca c0 ff eb                                      bl #0x800f8c
00810c60  00 30 90 e5                                      ldr r3, [r0]
00810c64  0f e0 a0 e1                                      mov lr, pc
00810c68  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00810c6c  00 00 54 e1                                      cmp r4, r0
00810c70  e0 ff ff 0a                                      beq #0x810bf8
00810c74  98 31 96 e5                                      ldr r3, [r6, #0x198]
00810c78  01 10 a0 e3                                      mov r1, #1
00810c7c  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00810c80  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00810c84  78 0a 00 ea                                      b #0x81366c

; FUNCTION 0x00810c88, declared_size=264, range_size=264, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager12ClearPlayersEv
; demangled: CNetPlayerManager::ClearPlayers()
; decoder-mode: arm
00810c88  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00810c8c  9c 21 90 e5                                      ldr r2, [r0, #0x19c]
00810c90  98 31 90 e5                                      ldr r3, [r0, #0x198]
00810c94  ec 70 9f e5                                      ldr r7, [pc, #0xec]
00810c98  00 40 a0 e1                                      mov r4, r0
00810c9c  02 10 63 e0                                      rsb r1, r3, r2
00810ca0  21 11 b0 e1                                      lsrs r1, r1, #2
00810ca4  07 70 8f e0                                      add r7, pc, r7
00810ca8  11 00 00 0a                                      beq #0x810cf4
00810cac  d8 a0 9f e5                                      ldr sl, [pc, #0xd8]
00810cb0  00 50 a0 e3                                      mov r5, #0
00810cb4  05 80 a0 e1                                      mov r8, r5
00810cb8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00810cbc  05 61 a0 e1                                      lsl r6, r5, #2
00810cc0  01 50 85 e2                                      add r5, r5, #1
00810cc4  00 00 50 e3                                      cmp r0, #0
00810cc8  03 00 00 0a                                      beq #0x810cdc
00810ccc  0a 30 97 e7                                      ldr r3, [r7, sl]
00810cd0  0f e0 a0 e1                                      mov lr, pc
00810cd4  00 f0 93 e5                                      ldr pc, [r3]
00810cd8  98 31 94 e5                                      ldr r3, [r4, #0x198]
00810cdc  06 80 83 e7                                      str r8, [r3, r6]
00810ce0  9c 21 94 e5                                      ldr r2, [r4, #0x19c]
00810ce4  98 31 94 e5                                      ldr r3, [r4, #0x198]
00810ce8  02 10 63 e0                                      rsb r1, r3, r2
00810cec  41 01 55 e1                                      cmp r5, r1, asr #2
00810cf0  f0 ff ff 3a                                      blo #0x810cb8
00810cf4  03 00 52 e1                                      cmp r2, r3
00810cf8  9c 31 84 15                                      strne r3, [r4, #0x19c]
00810cfc  a8 21 94 e5                                      ldr r2, [r4, #0x1a8]
00810d00  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00810d04  02 10 63 e0                                      rsb r1, r3, r2
00810d08  21 11 b0 e1                                      lsrs r1, r1, #2
00810d0c  11 00 00 0a                                      beq #0x810d58
00810d10  74 a0 9f e5                                      ldr sl, [pc, #0x74]
00810d14  00 50 a0 e3                                      mov r5, #0
00810d18  05 80 a0 e1                                      mov r8, r5
00810d1c  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00810d20  05 61 a0 e1                                      lsl r6, r5, #2
00810d24  01 50 85 e2                                      add r5, r5, #1
00810d28  00 00 50 e3                                      cmp r0, #0
00810d2c  03 00 00 0a                                      beq #0x810d40
00810d30  0a 30 97 e7                                      ldr r3, [r7, sl]
00810d34  0f e0 a0 e1                                      mov lr, pc
00810d38  00 f0 93 e5                                      ldr pc, [r3]
00810d3c  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00810d40  06 80 83 e7                                      str r8, [r3, r6]
00810d44  a8 21 94 e5                                      ldr r2, [r4, #0x1a8]
00810d48  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00810d4c  02 10 63 e0                                      rsb r1, r3, r2
00810d50  41 01 55 e1                                      cmp r5, r1, asr #2
00810d54  f0 ff ff 3a                                      blo #0x810d1c
00810d58  7c 01 94 e5                                      ldr r0, [r4, #0x17c]
00810d5c  03 00 52 e1                                      cmp r2, r3
00810d60  a8 31 84 15                                      strne r3, [r4, #0x1a8]
00810d64  00 00 50 e3                                      cmp r0, #0
00810d68  05 00 00 0a                                      beq #0x810d84
00810d6c  18 30 9f e5                                      ldr r3, [pc, #0x18]
00810d70  03 30 97 e7                                      ldr r3, [r7, r3]
00810d74  0f e0 a0 e1                                      mov lr, pc
00810d78  00 f0 93 e5                                      ldr pc, [r3]
00810d7c  00 30 a0 e3                                      mov r3, #0
00810d80  7c 31 84 e5                                      str r3, [r4, #0x17c]
00810d84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00810d88  ec 3d 18 00 d4 47 00 00                          .byte 0xec, 0x3d, 0x18, 0x00, 0xd4, 0x47, 0x00, 0x00

; FUNCTION 0x008111ec, declared_size=284, range_size=284, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager11InitPlayersEv
; demangled: CNetPlayerManager::InitPlayers()
; decoder-mode: arm
008111ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008111f0  08 51 9f e5                                      ldr r5, [pc, #0x108]
008111f4  08 61 9f e5                                      ldr r6, [pc, #0x108]
008111f8  08 d0 4d e2                                      sub sp, sp, #8
008111fc  05 50 8f e0                                      add r5, pc, r5
00811200  06 30 95 e7                                      ldr r3, [r5, r6]
00811204  00 40 a0 e1                                      mov r4, r0
00811208  0f e0 a0 e1                                      mov lr, pc
0081120c  00 f0 93 e5                                      ldr pc, [r3]
00811210  7c 01 84 e5                                      str r0, [r4, #0x17c]
00811214  78 21 90 e5                                      ldr r2, [r0, #0x178]
00811218  00 30 a0 e1                                      mov r3, r0
0081121c  40 00 72 e3                                      cmn r2, #0x40
00811220  04 00 00 0a                                      beq #0x811238
00811224  3f 20 e0 e3                                      mvn r2, #0x3f
00811228  78 21 80 e5                                      str r2, [r0, #0x178]
0081122c  56 0f 80 e2                                      add r0, r0, #0x158
00811230  53 0f 00 eb                                      bl #0x814f84
00811234  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00811238  03 00 a0 e1                                      mov r0, r3
0081123c  00 30 93 e5                                      ldr r3, [r3]
00811240  0f e0 a0 e1                                      mov lr, pc
00811244  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00811248  94 31 94 e5                                      ldr r3, [r4, #0x194]
0081124c  00 00 53 e3                                      cmp r3, #0
00811250  23 00 00 da                                      ble #0x8112e4
00811254  06 60 95 e7                                      ldr r6, [r5, r6]
00811258  66 8f 84 e2                                      add r8, r4, #0x198
0081125c  00 50 a0 e3                                      mov r5, #0
00811260  04 70 8d e2                                      add r7, sp, #4
00811264  0f e0 a0 e1                                      mov lr, pc
00811268  00 f0 96 e5                                      ldr pc, [r6]
0081126c  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
00811270  a0 31 94 e5                                      ldr r3, [r4, #0x1a0]
00811274  04 00 8d e5                                      str r0, [sp, #4]
00811278  03 00 51 e1                                      cmp r1, r3
0081127c  1a 00 00 0a                                      beq #0x8112ec
00811280  00 00 81 e5                                      str r0, [r1]
00811284  9c 31 94 e5                                      ldr r3, [r4, #0x19c]
00811288  04 30 83 e2                                      add r3, r3, #4
0081128c  9c 31 84 e5                                      str r3, [r4, #0x19c]
00811290  04 30 13 e5                                      ldr r3, [r3, #-4]
00811294  78 21 93 e5                                      ldr r2, [r3, #0x178]
00811298  56 0f 83 e2                                      add r0, r3, #0x158
0081129c  02 00 55 e1                                      cmp r5, r2
008112a0  03 00 00 0a                                      beq #0x8112b4
008112a4  78 51 83 e5                                      str r5, [r3, #0x178]
008112a8  35 0f 00 eb                                      bl #0x814f84
008112ac  9c 31 94 e5                                      ldr r3, [r4, #0x19c]
008112b0  04 30 13 e5                                      ldr r3, [r3, #-4]
008112b4  03 00 a0 e1                                      mov r0, r3
008112b8  00 30 93 e5                                      ldr r3, [r3]
008112bc  0f e0 a0 e1                                      mov lr, pc
008112c0  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
008112c4  9c 31 94 e5                                      ldr r3, [r4, #0x19c]
008112c8  00 10 a0 e3                                      mov r1, #0
008112cc  01 50 85 e2                                      add r5, r5, #1
008112d0  04 00 13 e5                                      ldr r0, [r3, #-4]
008112d4  e4 08 00 eb                                      bl #0x81366c
008112d8  94 31 94 e5                                      ldr r3, [r4, #0x194]
008112dc  05 00 53 e1                                      cmp r3, r5
008112e0  df ff ff ca                                      bgt #0x811264
008112e4  08 d0 8d e2                                      add sp, sp, #8
008112e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008112ec  07 20 a0 e1                                      mov r2, r7
008112f0  08 00 a0 e1                                      mov r0, r8
008112f4  8b ff ff eb                                      bl #0x811128
008112f8  9c 31 94 e5                                      ldr r3, [r4, #0x19c]
008112fc  e3 ff ff ea                                      b #0x811290
; mapping-symbol data/literal pool
00811300  94 38 18 00 4c 17 00 00                          .byte 0x94, 0x38, 0x18, 0x00, 0x4c, 0x17, 0x00, 0x00

; FUNCTION 0x00811308, declared_size=48, range_size=48, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager12ResetPlayersEv
; demangled: CNetPlayerManager::ResetPlayers()
; decoder-mode: arm
00811308  10 40 2d e9                                      push {r4, lr}
0081130c  b8 31 90 e5                                      ldr r3, [r0, #0x1b8]
00811310  bc 21 90 e5                                      ldr r2, [r0, #0x1bc]
00811314  00 40 a0 e1                                      mov r4, r0
00811318  02 00 53 e1                                      cmp r3, r2
0081131c  bc 31 80 15                                      strne r3, [r0, #0x1bc]
00811320  58 fe ff eb                                      bl #0x810c88
00811324  04 00 a0 e1                                      mov r0, r4
00811328  af ff ff eb                                      bl #0x8111ec
0081132c  00 30 e0 e3                                      mvn r3, #0
00811330  b0 31 84 e5                                      str r3, [r4, #0x1b0]
00811334  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008113fc, declared_size=240, range_size=240, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager15GetPlayerIdListEv
; demangled: CNetPlayerManager::GetPlayerIdList()
; decoder-mode: arm
008113fc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00811400  b8 21 90 e5                                      ldr r2, [r0, #0x1b8]
00811404  bc 31 90 e5                                      ldr r3, [r0, #0x1bc]
00811408  0c d0 4d e2                                      sub sp, sp, #0xc
0081140c  00 50 a0 e1                                      mov r5, r0
00811410  03 00 52 e1                                      cmp r2, r3
00811414  03 00 00 0a                                      beq #0x811428
00811418  6e 7f 85 e2                                      add r7, r5, #0x1b8
0081141c  07 00 a0 e1                                      mov r0, r7
00811420  0c d0 8d e2                                      add sp, sp, #0xc
00811424  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00811428  b4 31 d0 e5                                      ldrb r3, [r0, #0x1b4]
0081142c  00 00 53 e3                                      cmp r3, #0
00811430  f8 ff ff 0a                                      beq #0x811418
00811434  98 21 90 e5                                      ldr r2, [r0, #0x198]
00811438  9c 11 90 e5                                      ldr r1, [r0, #0x19c]
0081143c  00 40 a0 e3                                      mov r4, #0
00811440  b4 41 c0 e5                                      strb r4, [r0, #0x1b4]
00811444  01 30 62 e0                                      rsb r3, r2, r1
00811448  23 31 b0 e1                                      lsrs r3, r3, #2
0081144c  f1 ff ff 0a                                      beq #0x811418
00811450  6e 7f 80 e2                                      add r7, r0, #0x1b8
00811454  01 60 a0 e3                                      mov r6, #1
00811458  04 80 8d e2                                      add r8, sp, #4
0081145c  05 00 00 ea                                      b #0x811478
00811460  98 21 95 e5                                      ldr r2, [r5, #0x198]
00811464  9c 11 95 e5                                      ldr r1, [r5, #0x19c]
00811468  01 40 84 e2                                      add r4, r4, #1
0081146c  01 30 62 e0                                      rsb r3, r2, r1
00811470  43 01 54 e1                                      cmp r4, r3, asr #2
00811474  e8 ff ff 2a                                      bhs #0x81141c
00811478  04 31 92 e7                                      ldr r3, [r2, r4, lsl #2]
0081147c  04 a1 a0 e1                                      lsl sl, r4, #2
00811480  00 00 53 e2                                      subs r0, r3, #0
00811484  f7 ff ff 0a                                      beq #0x811468
00811488  00 30 93 e5                                      ldr r3, [r3]
0081148c  0f e0 a0 e1                                      mov lr, pc
00811490  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00811494  00 00 50 e3                                      cmp r0, #0
00811498  f0 ff ff 0a                                      beq #0x811460
0081149c  98 31 95 e5                                      ldr r3, [r5, #0x198]
008114a0  bc 11 95 e5                                      ldr r1, [r5, #0x1bc]
008114a4  c0 21 95 e5                                      ldr r2, [r5, #0x1c0]
008114a8  0a 30 93 e7                                      ldr r3, [r3, sl]
008114ac  02 00 51 e1                                      cmp r1, r2
008114b0  78 31 93 e5                                      ldr r3, [r3, #0x178]
008114b4  04 30 8d e5                                      str r3, [sp, #4]
008114b8  07 00 00 0a                                      beq #0x8114dc
008114bc  00 30 81 e5                                      str r3, [r1]
008114c0  bc 31 95 e5                                      ldr r3, [r5, #0x1bc]
008114c4  04 30 83 e2                                      add r3, r3, #4
008114c8  bc 31 85 e5                                      str r3, [r5, #0x1bc]
008114cc  98 21 95 e5                                      ldr r2, [r5, #0x198]
008114d0  9c 11 95 e5                                      ldr r1, [r5, #0x19c]
008114d4  b4 61 c5 e5                                      strb r6, [r5, #0x1b4]
008114d8  e2 ff ff ea                                      b #0x811468
008114dc  07 00 a0 e1                                      mov r0, r7
008114e0  08 20 a0 e1                                      mov r2, r8
008114e4  93 ff ff eb                                      bl #0x811338
008114e8  f7 ff ff ea                                      b #0x8114cc

; FUNCTION 0x008114ec, declared_size=28, range_size=28, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager14GetPlayerCountEv
; demangled: CNetPlayerManager::GetPlayerCount()
; decoder-mode: arm
008114ec  10 40 2d e9                                      push {r4, lr}
008114f0  c1 ff ff eb                                      bl #0x8113fc
008114f4  00 30 90 e5                                      ldr r3, [r0]
008114f8  04 00 90 e5                                      ldr r0, [r0, #4]
008114fc  00 00 63 e0                                      rsb r0, r3, r0
00811500  40 01 a0 e1                                      asr r0, r0, #2
00811504  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00811588, declared_size=660, range_size=660, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager13GetPlayerNameESsi
; demangled: CNetPlayerManager::GetPlayerName(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
; decoder-mode: arm
00811588  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081158c  78 c2 9f e5                                      ldr ip, [pc, #0x278]
00811590  54 d0 4d e2                                      sub sp, sp, #0x54
00811594  01 40 a0 e1                                      mov r4, r1
00811598  0c c0 8d e5                                      str ip, [sp, #0xc]
0081159c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
008115a0  68 c2 9f e5                                      ldr ip, [pc, #0x268]
008115a4  02 50 a0 e1                                      mov r5, r2
008115a8  01 10 8f e0                                      add r1, pc, r1
008115ac  0c 10 8d e5                                      str r1, [sp, #0xc]
008115b0  0c e0 91 e7                                      ldr lr, [r1, ip]
008115b4  10 c0 8d e5                                      str ip, [sp, #0x10]
008115b8  98 11 94 e5                                      ldr r1, [r4, #0x198]
008115bc  9c c1 94 e5                                      ldr ip, [r4, #0x19c]
008115c0  00 e0 9e e5                                      ldr lr, [lr]
008115c4  04 00 8d e5                                      str r0, [sp, #4]
008115c8  0c 00 61 e0                                      rsb r0, r1, ip
008115cc  20 01 b0 e1                                      lsrs r0, r0, #2
008115d0  4c e0 8d e5                                      str lr, [sp, #0x4c]
008115d4  14 30 8d e5                                      str r3, [sp, #0x14]
008115d8  6e 00 00 0a                                      beq #0x811798
008115dc  00 60 a0 e3                                      mov r6, #0
008115e0  08 60 8d e5                                      str r6, [sp, #8]
008115e4  34 90 8d e2                                      add sb, sp, #0x34
008115e8  1c 80 8d e2                                      add r8, sp, #0x1c
008115ec  05 00 00 ea                                      b #0x811608
008115f0  98 11 94 e5                                      ldr r1, [r4, #0x198]
008115f4  9c c1 94 e5                                      ldr ip, [r4, #0x19c]
008115f8  01 60 86 e2                                      add r6, r6, #1
008115fc  0c 30 61 e0                                      rsb r3, r1, ip
00811600  43 01 56 e1                                      cmp r6, r3, asr #2
00811604  51 00 00 2a                                      bhs #0x811750
00811608  06 31 91 e7                                      ldr r3, [r1, r6, lsl #2]
0081160c  06 71 a0 e1                                      lsl r7, r6, #2
00811610  00 00 53 e3                                      cmp r3, #0
00811614  f7 ff ff 0a                                      beq #0x8115f8
00811618  03 00 a0 e1                                      mov r0, r3
0081161c  00 30 93 e5                                      ldr r3, [r3]
00811620  0f e0 a0 e1                                      mov lr, pc
00811624  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00811628  00 00 50 e3                                      cmp r0, #0
0081162c  ef ff ff 0a                                      beq #0x8115f0
00811630  98 31 94 e5                                      ldr r3, [r4, #0x198]
00811634  09 00 a0 e1                                      mov r0, sb
00811638  07 30 93 e7                                      ldr r3, [r3, r7]
0081163c  44 90 8d e5                                      str sb, [sp, #0x44]
00811640  48 90 8d e5                                      str sb, [sp, #0x48]
00811644  78 22 93 e5                                      ldr r2, [r3, #0x278]
00811648  7c 12 93 e5                                      ldr r1, [r3, #0x27c]
0081164c  25 00 ec eb                                      bl #0x3116e8
00811650  48 00 9d e5                                      ldr r0, [sp, #0x48]
00811654  10 a0 95 e5                                      ldr sl, [r5, #0x10]
00811658  14 30 95 e5                                      ldr r3, [r5, #0x14]
0081165c  44 b0 9d e5                                      ldr fp, [sp, #0x44]
00811660  09 00 50 e1                                      cmp r0, sb
00811664  0a a0 63 e0                                      rsb sl, r3, sl
00811668  0b b0 60 e0                                      rsb fp, r0, fp
0081166c  06 00 00 0a                                      beq #0x81168c
00811670  00 00 50 e3                                      cmp r0, #0
00811674  04 00 00 0a                                      beq #0x81168c
00811678  34 10 9d e5                                      ldr r1, [sp, #0x34]
0081167c  01 10 60 e0                                      rsb r1, r0, r1
00811680  80 00 51 e3                                      cmp r1, #0x80
00811684  57 00 00 8a                                      bhi #0x8117e8
00811688  2a b3 02 eb                                      bl #0x8be338
0081168c  0a 00 5b e1                                      cmp fp, sl
00811690  d6 ff ff 3a                                      blo #0x8115f0
00811694  98 31 94 e5                                      ldr r3, [r4, #0x198]
00811698  08 00 a0 e1                                      mov r0, r8
0081169c  07 30 93 e7                                      ldr r3, [r3, r7]
008116a0  2c 80 8d e5                                      str r8, [sp, #0x2c]
008116a4  30 80 8d e5                                      str r8, [sp, #0x30]
008116a8  78 22 93 e5                                      ldr r2, [r3, #0x278]
008116ac  7c 12 93 e5                                      ldr r1, [r3, #0x27c]
008116b0  0c 00 ec eb                                      bl #0x3116e8
008116b4  14 30 95 e5                                      ldr r3, [r5, #0x14]
008116b8  10 a0 95 e5                                      ldr sl, [r5, #0x10]
008116bc  30 70 9d e5                                      ldr r7, [sp, #0x30]
008116c0  03 10 a0 e1                                      mov r1, r3
008116c4  0a a0 63 e0                                      rsb sl, r3, sl
008116c8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
008116cc  07 00 a0 e1                                      mov r0, r7
008116d0  03 30 67 e0                                      rsb r3, r7, r3
008116d4  0a 00 53 e1                                      cmp r3, sl
008116d8  0a 30 a0 21                                      movhs r3, sl
008116dc  03 00 5a e1                                      cmp sl, r3
008116e0  0a 20 a0 b1                                      movlt r2, sl
008116e4  03 20 a0 a1                                      movge r2, r3
008116e8  00 30 8d e5                                      str r3, [sp]
008116ec  bb f3 eb eb                                      bl #0x30e5e0
008116f0  00 b0 50 e2                                      subs fp, r0, #0
008116f4  00 30 9d e5                                      ldr r3, [sp]
008116f8  3c 00 00 0a                                      beq #0x8117f0
008116fc  08 00 57 e1                                      cmp r7, r8
00811700  07 00 00 0a                                      beq #0x811724
00811704  00 00 57 e3                                      cmp r7, #0
00811708  05 00 00 0a                                      beq #0x811724
0081170c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00811710  01 10 67 e0                                      rsb r1, r7, r1
00811714  80 00 51 e3                                      cmp r1, #0x80
00811718  2f 00 00 8a                                      bhi #0x8117dc
0081171c  07 00 a0 e1                                      mov r0, r7
00811720  04 b3 02 eb                                      bl #0x8be338
00811724  00 00 5b e3                                      cmp fp, #0
00811728  b0 ff ff 1a                                      bne #0x8115f0
0081172c  98 11 94 e5                                      ldr r1, [r4, #0x198]
00811730  9c c1 94 e5                                      ldr ip, [r4, #0x19c]
00811734  08 20 9d e5                                      ldr r2, [sp, #8]
00811738  01 60 86 e2                                      add r6, r6, #1
0081173c  0c 30 61 e0                                      rsb r3, r1, ip
00811740  01 20 82 e2                                      add r2, r2, #1
00811744  43 01 56 e1                                      cmp r6, r3, asr #2
00811748  08 20 8d e5                                      str r2, [sp, #8]
0081174c  ad ff ff 3a                                      blo #0x811608
00811750  08 30 9d e5                                      ldr r3, [sp, #8]
00811754  00 00 53 e3                                      cmp r3, #0
00811758  0e 00 00 0a                                      beq #0x811798
0081175c  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
00811760  05 00 a0 e1                                      mov r0, r5
00811764  01 10 8f e0                                      add r1, pc, r1
00811768  02 20 81 e2                                      add r2, r1, #2
0081176c  24 fc eb eb                                      bl #0x310804
00811770  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00811774  05 00 a0 e1                                      mov r0, r5
00811778  30 10 8c e2                                      add r1, ip, #0x30
0081177c  71 10 af e6                                      sxtb r1, r1
00811780  b5 62 ec eb                                      bl #0x32a25c
00811784  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
00811788  05 00 a0 e1                                      mov r0, r5
0081178c  01 10 8f e0                                      add r1, pc, r1
00811790  01 20 81 e2                                      add r2, r1, #1
00811794  1a fc eb eb                                      bl #0x310804
00811798  04 10 9d e5                                      ldr r1, [sp, #4]
0081179c  10 10 81 e5                                      str r1, [r1, #0x10]
008117a0  14 10 81 e5                                      str r1, [r1, #0x14]
008117a4  10 20 95 e5                                      ldr r2, [r5, #0x10]
008117a8  04 00 9d e5                                      ldr r0, [sp, #4]
008117ac  14 10 95 e5                                      ldr r1, [r5, #0x14]
008117b0  cc ff eb eb                                      bl #0x3116e8
008117b4  10 20 9d e5                                      ldr r2, [sp, #0x10]
008117b8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
008117bc  04 00 9d e5                                      ldr r0, [sp, #4]
008117c0  02 30 9c e7                                      ldr r3, [ip, r2]
008117c4  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
008117c8  00 30 93 e5                                      ldr r3, [r3]
008117cc  03 00 52 e1                                      cmp r2, r3
008117d0  0c 00 00 1a                                      bne #0x811808
008117d4  54 d0 8d e2                                      add sp, sp, #0x54
008117d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008117dc  07 00 a0 e1                                      mov r0, r7
008117e0  16 fb eb eb                                      bl #0x310440
008117e4  ce ff ff ea                                      b #0x811724
008117e8  14 fb eb eb                                      bl #0x310440
008117ec  a6 ff ff ea                                      b #0x81168c
008117f0  03 00 5a e1                                      cmp sl, r3
008117f4  00 b0 e0 c3                                      mvngt fp, #0
008117f8  bf ff ff ca                                      bgt #0x8116fc
008117fc  00 b0 a0 a3                                      movge fp, #0
00811800  01 b0 a0 b3                                      movlt fp, #1
00811804  bc ff ff ea                                      b #0x8116fc
00811808  c0 f2 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081180c  e8 34 18 00 ac 40 00 00 f4 aa 0f 00 0c d2 0a 00  .byte 0xe8, 0x34, 0x18, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0xaa, 0x0f, 0x00, 0x0c, 0xd2, 0x0a, 0x00

; FUNCTION 0x0081181c, declared_size=188, range_size=188, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager13GetPlayerNameEi
; demangled: CNetPlayerManager::GetPlayerName(int)
; decoder-mode: arm
0081181c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00811820  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
00811824  a8 70 9f e5                                      ldr r7, [pc, #0xa8]
00811828  24 d0 4d e2                                      sub sp, sp, #0x24
0081182c  04 40 8f e0                                      add r4, pc, r4
00811830  07 30 94 e7                                      ldr r3, [r4, r7]
00811834  01 a0 a0 e1                                      mov sl, r1
00811838  02 80 a0 e1                                      mov r8, r2
0081183c  00 30 93 e5                                      ldr r3, [r3]
00811840  00 60 a0 e1                                      mov r6, r0
00811844  04 50 8d e2                                      add r5, sp, #4
00811848  1c 30 8d e5                                      str r3, [sp, #0x1c]
0081184c  ce bd ff eb                                      bl #0x800f8c
00811850  00 10 a0 e1                                      mov r1, r0
00811854  00 30 90 e5                                      ldr r3, [r0]
00811858  08 20 a0 e1                                      mov r2, r8
0081185c  05 00 a0 e1                                      mov r0, r5
00811860  0f e0 a0 e1                                      mov lr, pc
00811864  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00811868  06 00 a0 e1                                      mov r0, r6
0081186c  0a 10 a0 e1                                      mov r1, sl
00811870  05 20 a0 e1                                      mov r2, r5
00811874  08 30 a0 e1                                      mov r3, r8
00811878  42 ff ff eb                                      bl #0x811588
0081187c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00811880  05 00 50 e1                                      cmp r0, r5
00811884  06 00 00 0a                                      beq #0x8118a4
00811888  00 00 50 e3                                      cmp r0, #0
0081188c  04 00 00 0a                                      beq #0x8118a4
00811890  04 10 9d e5                                      ldr r1, [sp, #4]
00811894  01 10 60 e0                                      rsb r1, r0, r1
00811898  80 00 51 e3                                      cmp r1, #0x80
0081189c  08 00 00 8a                                      bhi #0x8118c4
008118a0  a4 b2 02 eb                                      bl #0x8be338
008118a4  07 30 94 e7                                      ldr r3, [r4, r7]
008118a8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
008118ac  06 00 a0 e1                                      mov r0, r6
008118b0  00 30 93 e5                                      ldr r3, [r3]
008118b4  03 00 52 e1                                      cmp r2, r3
008118b8  03 00 00 1a                                      bne #0x8118cc
008118bc  24 d0 8d e2                                      add sp, sp, #0x24
008118c0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008118c4  dd fa eb eb                                      bl #0x310440
008118c8  f5 ff ff ea                                      b #0x8118a4
008118cc  8f f2 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008118d0  64 32 18 00 ac 40 00 00                          .byte 0x64, 0x32, 0x18, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008118d8, declared_size=784, range_size=784, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager9AddPlayerEii
; demangled: CNetPlayerManager::AddPlayer(int, int)
; decoder-mode: arm
008118d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008118dc  ec 42 9f e5                                      ldr r4, [pc, #0x2ec]
008118e0  ec 52 9f e5                                      ldr r5, [pc, #0x2ec]
008118e4  54 d0 4d e2                                      sub sp, sp, #0x54
008118e8  04 40 8f e0                                      add r4, pc, r4
008118ec  05 30 94 e7                                      ldr r3, [r4, r5]
008118f0  00 60 a0 e1                                      mov r6, r0
008118f4  01 70 a0 e1                                      mov r7, r1
008118f8  00 30 93 e5                                      ldr r3, [r3]
008118fc  02 80 a0 e1                                      mov r8, r2
00811900  4c 30 8d e5                                      str r3, [sp, #0x4c]
00811904  f8 fe ff eb                                      bl #0x8114ec
00811908  94 31 96 e5                                      ldr r3, [r6, #0x194]
0081190c  03 00 50 e1                                      cmp r0, r3
00811910  08 00 00 ba                                      blt #0x811938
00811914  f9 0f e0 e3                                      mvn r0, #0x3e4
00811918  01 00 40 e2                                      sub r0, r0, #1
0081191c  05 30 94 e7                                      ldr r3, [r4, r5]
00811920  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00811924  00 30 93 e5                                      ldr r3, [r3]
00811928  03 00 52 e1                                      cmp r2, r3
0081192c  59 00 00 1a                                      bne #0x811a98
00811930  54 d0 8d e2                                      add sp, sp, #0x54
00811934  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00811938  93 bd ff eb                                      bl #0x800f8c
0081193c  00 30 90 e5                                      ldr r3, [r0]
00811940  0f e0 a0 e1                                      mov lr, pc
00811944  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00811948  00 00 50 e3                                      cmp r0, #0
0081194c  4e 00 00 0a                                      beq #0x811a8c
00811950  07 30 98 e1                                      orrs r3, r8, r7
00811954  4c 00 00 4a                                      bmi #0x811a8c
00811958  06 00 a0 e1                                      mov r0, r6
0081195c  07 10 a0 e1                                      mov r1, r7
00811960  08 20 a0 e1                                      mov r2, r8
00811964  05 fa ff eb                                      bl #0x810180
00811968  00 00 50 e3                                      cmp r0, #0
0081196c  04 00 00 0a                                      beq #0x811984
00811970  f0 31 90 e5                                      ldr r3, [r0, #0x1f0]
00811974  00 00 53 e3                                      cmp r3, #0
00811978  f9 0f e0 13                                      mvnne r0, #0x3e4
0081197c  02 00 40 12                                      subne r0, r0, #2
00811980  e5 ff ff 1a                                      bne #0x81191c
00811984  00 a0 a0 e3                                      mov sl, #0
00811988  30 a0 8d e5                                      str sl, [sp, #0x30]
0081198c  7e bd ff eb                                      bl #0x800f8c
00811990  d2 b2 ff eb                                      bl #0x7fe4e0
00811994  00 30 50 e2                                      subs r3, r0, #0
00811998  3f 00 00 1a                                      bne #0x811a9c
0081199c  a4 11 96 e5                                      ldr r1, [r6, #0x1a4]
008119a0  a8 21 96 e5                                      ldr r2, [r6, #0x1a8]
008119a4  02 20 61 e0                                      rsb r2, r1, r2
008119a8  42 21 b0 e1                                      asrs r2, r2, #2
008119ac  08 00 00 0a                                      beq #0x8119d4
008119b0  03 01 91 e7                                      ldr r0, [r1, r3, lsl #2]
008119b4  00 00 50 e3                                      cmp r0, #0
008119b8  02 00 00 0a                                      beq #0x8119c8
008119bc  c8 01 90 e5                                      ldr r0, [r0, #0x1c8]
008119c0  00 00 58 e1                                      cmp r8, r0
008119c4  2e 00 00 0a                                      beq #0x811a84
008119c8  01 30 83 e2                                      add r3, r3, #1
008119cc  02 00 53 e1                                      cmp r3, r2
008119d0  f6 ff ff 1a                                      bne #0x8119b0
008119d4  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
008119d8  08 b0 e0 e1                                      mvn fp, r8
008119dc  03 30 94 e7                                      ldr r3, [r4, r3]
008119e0  0f e0 a0 e1                                      mov lr, pc
008119e4  00 f0 93 e5                                      ldr pc, [r3]
008119e8  a8 11 96 e5                                      ldr r1, [r6, #0x1a8]
008119ec  ac 31 96 e5                                      ldr r3, [r6, #0x1ac]
008119f0  30 00 8d e5                                      str r0, [sp, #0x30]
008119f4  03 00 51 e1                                      cmp r1, r3
008119f8  41 00 00 0a                                      beq #0x811b04
008119fc  00 00 81 e5                                      str r0, [r1]
00811a00  a8 31 96 e5                                      ldr r3, [r6, #0x1a8]
00811a04  30 90 9d e5                                      ldr sb, [sp, #0x30]
00811a08  04 30 83 e2                                      add r3, r3, #4
00811a0c  a8 31 86 e5                                      str r3, [r6, #0x1a8]
00811a10  34 a0 8d e2                                      add sl, sp, #0x34
00811a14  07 20 a0 e1                                      mov r2, r7
00811a18  06 10 a0 e1                                      mov r1, r6
00811a1c  0a 00 a0 e1                                      mov r0, sl
00811a20  7d ff ff eb                                      bl #0x81181c
00811a24  0a 10 a0 e1                                      mov r1, sl
00811a28  92 0f 89 e2                                      add r0, sb, #0x248
00811a2c  86 78 ed eb                                      bl #0x36fc4c
00811a30  0a 00 a0 e1                                      mov r0, sl
00811a34  dc 07 ec eb                                      bl #0x3139ac
00811a38  30 00 9d e5                                      ldr r0, [sp, #0x30]
00811a3c  50 60 8d e2                                      add r6, sp, #0x50
00811a40  24 b0 26 e5                                      str fp, [r6, #-0x24]!
00811a44  56 0f 80 e2                                      add r0, r0, #0x158
00811a48  06 10 a0 e1                                      mov r1, r6
00811a4c  e7 6f ed eb                                      bl #0x36d9f0
00811a50  30 00 9d e5                                      ldr r0, [sp, #0x30]
00811a54  06 10 a0 e1                                      mov r1, r6
00811a58  2c 70 8d e5                                      str r7, [sp, #0x2c]
00811a5c  06 0d 80 e2                                      add r0, r0, #0x180
00811a60  e2 6f ed eb                                      bl #0x36d9f0
00811a64  30 00 9d e5                                      ldr r0, [sp, #0x30]
00811a68  06 10 a0 e1                                      mov r1, r6
00811a6c  2c 80 8d e5                                      str r8, [sp, #0x2c]
00811a70  6a 0f 80 e2                                      add r0, r0, #0x1a8
00811a74  dd 6f ed eb                                      bl #0x36d9f0
00811a78  30 00 9d e5                                      ldr r0, [sp, #0x30]
00811a7c  01 10 a0 e3                                      mov r1, #1
00811a80  f9 06 00 eb                                      bl #0x81366c
00811a84  00 00 a0 e3                                      mov r0, #0
00811a88  a3 ff ff ea                                      b #0x81191c
00811a8c  83 04 a0 e3                                      mov r0, #0x83000000
00811a90  c0 0a a0 e1                                      asr r0, r0, #0x15
00811a94  a0 ff ff ea                                      b #0x81191c
00811a98  1c f2 eb eb                                      bl #0x30e310
00811a9c  06 00 a0 e1                                      mov r0, r6
00811aa0  f2 f9 ff eb                                      bl #0x810270
00811aa4  00 b0 50 e2                                      subs fp, r0, #0
00811aa8  99 ff ff ba                                      blt #0x811914
00811aac  70 31 96 e5                                      ldr r3, [r6, #0x170]
00811ab0  00 00 53 e3                                      cmp r3, #0
00811ab4  21 00 00 ba                                      blt #0x811b40
00811ab8  98 31 96 e5                                      ldr r3, [r6, #0x198]
00811abc  0b 31 93 e7                                      ldr r3, [r3, fp, lsl #2]
00811ac0  30 30 8d e5                                      str r3, [sp, #0x30]
00811ac4  30 bd ff eb                                      bl #0x800f8c
00811ac8  00 30 90 e5                                      ldr r3, [r0]
00811acc  0f e0 a0 e1                                      mov lr, pc
00811ad0  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00811ad4  00 00 57 e1                                      cmp r7, r0
00811ad8  0e 00 00 0a                                      beq #0x811b18
00811adc  30 90 9d e5                                      ldr sb, [sp, #0x30]
00811ae0  f0 31 99 e5                                      ldr r3, [sb, #0x1f0]
00811ae4  01 00 53 e3                                      cmp r3, #1
00811ae8  c8 ff ff 0a                                      beq #0x811a10
00811aec  01 30 a0 e3                                      mov r3, #1
00811af0  f0 31 89 e5                                      str r3, [sb, #0x1f0]
00811af4  1d 0e 89 e2                                      add r0, sb, #0x1d0
00811af8  21 0d 00 eb                                      bl #0x814f84
00811afc  30 90 9d e5                                      ldr sb, [sp, #0x30]
00811b00  c2 ff ff ea                                      b #0x811a10
00811b04  69 0f 86 e2                                      add r0, r6, #0x1a4
00811b08  30 20 8d e2                                      add r2, sp, #0x30
00811b0c  85 fd ff eb                                      bl #0x811128
00811b10  30 90 9d e5                                      ldr sb, [sp, #0x30]
00811b14  bd ff ff ea                                      b #0x811a10
00811b18  30 90 9d e5                                      ldr sb, [sp, #0x30]
00811b1c  f0 31 99 e5                                      ldr r3, [sb, #0x1f0]
00811b20  02 00 53 e3                                      cmp r3, #2
00811b24  b9 ff ff 0a                                      beq #0x811a10
00811b28  02 30 a0 e3                                      mov r3, #2
00811b2c  f0 31 89 e5                                      str r3, [sb, #0x1f0]
00811b30  1d 0e 89 e2                                      add r0, sb, #0x1d0
00811b34  12 0d 00 eb                                      bl #0x814f84
00811b38  30 90 9d e5                                      ldr sb, [sp, #0x30]
00811b3c  b3 ff ff ea                                      b #0x811a10
00811b40  94 30 9f e5                                      ldr r3, [pc, #0x94]
00811b44  20 10 9d e5                                      ldr r1, [sp, #0x20]
00811b48  00 20 e0 e3                                      mvn r2, #0
00811b4c  03 30 94 e7                                      ldr r3, [r4, r3]
00811b50  01 00 5b e1                                      cmp fp, r1
00811b54  06 10 a0 e3                                      mov r1, #6
00811b58  08 30 83 e2                                      add r3, r3, #8
00811b5c  04 10 8d e5                                      str r1, [sp, #4]
00811b60  00 00 a0 e3                                      mov r0, #0
00811b64  00 10 a0 e3                                      mov r1, #0
00811b68  1c a0 cd e5                                      strb sl, [sp, #0x1c]
00811b6c  18 a0 8d e5                                      str sl, [sp, #0x18]
00811b70  f8 00 cd e1                                      strd r0, r1, [sp, #8]
00811b74  14 20 8d e5                                      str r2, [sp, #0x14]
00811b78  00 30 8d e5                                      str r3, [sp]
00811b7c  10 20 8d e5                                      str r2, [sp, #0x10]
00811b80  0d a0 a0 01                                      moveq sl, sp
00811b84  03 00 00 0a                                      beq #0x811b98
00811b88  0d 00 a0 e1                                      mov r0, sp
00811b8c  0d a0 a0 e1                                      mov sl, sp
00811b90  20 b0 8d e5                                      str fp, [sp, #0x20]
00811b94  fa 0c 00 eb                                      bl #0x814f84
00811b98  40 20 9f e5                                      ldr r2, [pc, #0x40]
00811b9c  50 31 96 e5                                      ldr r3, [r6, #0x150]
00811ba0  20 10 8a e2                                      add r1, sl, #0x20
00811ba4  02 20 94 e7                                      ldr r2, [r4, r2]
00811ba8  15 0e 86 e2                                      add r0, r6, #0x150
00811bac  08 20 82 e2                                      add r2, r2, #8
00811bb0  00 20 8d e5                                      str r2, [sp]
00811bb4  0f e0 a0 e1                                      mov lr, pc
00811bb8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00811bbc  20 30 9f e5                                      ldr r3, [pc, #0x20]
00811bc0  03 30 94 e7                                      ldr r3, [r4, r3]
00811bc4  08 30 83 e2                                      add r3, r3, #8
00811bc8  00 30 8d e5                                      str r3, [sp]
00811bcc  b9 ff ff ea                                      b #0x811ab8
; mapping-symbol data/literal pool
00811bd0  a8 31 18 00 ac 40 00 00 4c 17 00 00 84 29 00 00  .byte 0xa8, 0x31, 0x18, 0x00, 0xac, 0x40, 0x00, 0x00, 0x4c, 0x17, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00
00811be0  b8 1f 00 00 a8 10 00 00                          .byte 0xb8, 0x1f, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00811be8, declared_size=396, range_size=396, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager9AddPlayerER12NetBitStreamii
; demangled: CNetPlayerManager::AddPlayer(NetBitStream&, int, int)
; decoder-mode: arm
00811be8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00811bec  78 41 9f e5                                      ldr r4, [pc, #0x178]
00811bf0  78 61 9f e5                                      ldr r6, [pc, #0x178]
00811bf4  01 70 a0 e1                                      mov r7, r1
00811bf8  04 40 8f e0                                      add r4, pc, r4
00811bfc  06 10 94 e7                                      ldr r1, [r4, r6]
00811c00  03 a0 a0 e1                                      mov sl, r3
00811c04  3c d0 4d e2                                      sub sp, sp, #0x3c
00811c08  00 30 91 e5                                      ldr r3, [r1]
00811c0c  02 80 a0 e1                                      mov r8, r2
00811c10  00 50 a0 e1                                      mov r5, r0
00811c14  34 30 8d e5                                      str r3, [sp, #0x34]
00811c18  db bc ff eb                                      bl #0x800f8c
00811c1c  2f b2 ff eb                                      bl #0x7fe4e0
00811c20  00 00 50 e3                                      cmp r0, #0
00811c24  0c 00 00 1a                                      bne #0x811c5c
00811c28  7c 31 95 e5                                      ldr r3, [r5, #0x17c]
00811c2c  07 10 a0 e1                                      mov r1, r7
00811c30  03 00 a0 e1                                      mov r0, r3
00811c34  00 30 93 e5                                      ldr r3, [r3]
00811c38  0f e0 a0 e1                                      mov lr, pc
00811c3c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00811c40  06 30 94 e7                                      ldr r3, [r4, r6]
00811c44  34 20 9d e5                                      ldr r2, [sp, #0x34]
00811c48  00 30 93 e5                                      ldr r3, [r3]
00811c4c  03 00 52 e1                                      cmp r2, r3
00811c50  44 00 00 1a                                      bne #0x811d68
00811c54  3c d0 8d e2                                      add sp, sp, #0x3c
00811c58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00811c5c  05 00 a0 e1                                      mov r0, r5
00811c60  08 10 a0 e1                                      mov r1, r8
00811c64  0a 20 a0 e1                                      mov r2, sl
00811c68  44 f9 ff eb                                      bl #0x810180
00811c6c  00 b0 50 e2                                      subs fp, r0, #0
00811c70  ec ff ff 1a                                      bne #0x811c28
00811c74  05 00 a0 e1                                      mov r0, r5
00811c78  7c f9 ff eb                                      bl #0x810270
00811c7c  00 00 50 e3                                      cmp r0, #0
00811c80  00 00 58 a3                                      cmpge r8, #0
00811c84  00 90 a0 e1                                      mov sb, r0
00811c88  e6 ff ff ba                                      blt #0x811c28
00811c8c  00 00 5a e3                                      cmp sl, #0
00811c90  e4 ff ff ba                                      blt #0x811c28
00811c94  98 31 95 e5                                      ldr r3, [r5, #0x198]
00811c98  0b 10 a0 e1                                      mov r1, fp
00811c9c  00 01 93 e7                                      ldr r0, [r3, r0, lsl #2]
00811ca0  71 06 00 eb                                      bl #0x81366c
00811ca4  98 11 95 e5                                      ldr r1, [r5, #0x198]
00811ca8  08 20 a0 e1                                      mov r2, r8
00811cac  0b 30 a0 e1                                      mov r3, fp
00811cb0  09 c1 91 e7                                      ldr ip, [r1, sb, lsl #2]
00811cb4  07 10 a0 e1                                      mov r1, r7
00811cb8  0c 00 a0 e1                                      mov r0, ip
00811cbc  00 c0 9c e5                                      ldr ip, [ip]
00811cc0  0f e0 a0 e1                                      mov lr, pc
00811cc4  14 f0 9c e5                                      ldr pc, [ip, #0x14]
00811cc8  98 31 95 e5                                      ldr r3, [r5, #0x198]
00811ccc  01 10 a0 e3                                      mov r1, #1
00811cd0  09 01 93 e7                                      ldr r0, [r3, sb, lsl #2]
00811cd4  64 06 00 eb                                      bl #0x81366c
00811cd8  98 31 95 e5                                      ldr r3, [r5, #0x198]
00811cdc  09 01 93 e7                                      ldr r0, [r3, sb, lsl #2]
00811ce0  5e f5 ff eb                                      bl #0x80f260
00811ce4  98 31 95 e5                                      ldr r3, [r5, #0x198]
00811ce8  09 71 93 e7                                      ldr r7, [r3, sb, lsl #2]
00811cec  78 31 97 e5                                      ldr r3, [r7, #0x178]
00811cf0  03 00 59 e1                                      cmp sb, r3
00811cf4  04 00 00 0a                                      beq #0x811d0c
00811cf8  78 91 87 e5                                      str sb, [r7, #0x178]
00811cfc  56 0f 87 e2                                      add r0, r7, #0x158
00811d00  9f 0c 00 eb                                      bl #0x814f84
00811d04  98 31 95 e5                                      ldr r3, [r5, #0x198]
00811d08  09 71 93 e7                                      ldr r7, [r3, sb, lsl #2]
00811d0c  1c 80 8d e2                                      add r8, sp, #0x1c
00811d10  2c 80 8d e5                                      str r8, [sp, #0x2c]
00811d14  30 80 8d e5                                      str r8, [sp, #0x30]
00811d18  08 00 a0 e1                                      mov r0, r8
00811d1c  7c 12 97 e5                                      ldr r1, [r7, #0x27c]
00811d20  78 22 97 e5                                      ldr r2, [r7, #0x278]
00811d24  6f fe eb eb                                      bl #0x3116e8
00811d28  98 31 95 e5                                      ldr r3, [r5, #0x198]
00811d2c  04 a0 8d e2                                      add sl, sp, #4
00811d30  08 20 a0 e1                                      mov r2, r8
00811d34  09 31 93 e7                                      ldr r3, [r3, sb, lsl #2]
00811d38  05 10 a0 e1                                      mov r1, r5
00811d3c  0a 00 a0 e1                                      mov r0, sl
00811d40  a0 31 93 e5                                      ldr r3, [r3, #0x1a0]
00811d44  0f fe ff eb                                      bl #0x811588
00811d48  92 0f 87 e2                                      add r0, r7, #0x248
00811d4c  0a 10 a0 e1                                      mov r1, sl
00811d50  bd 77 ed eb                                      bl #0x36fc4c
00811d54  0a 00 a0 e1                                      mov r0, sl
00811d58  13 07 ec eb                                      bl #0x3139ac
00811d5c  08 00 a0 e1                                      mov r0, r8
00811d60  11 07 ec eb                                      bl #0x3139ac
00811d64  b5 ff ff ea                                      b #0x811c40
00811d68  68 f1 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00811d6c  98 2e 18 00 ac 40 00 00                          .byte 0x98, 0x2e, 0x18, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00811d74, declared_size=288, range_size=288, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager14ReadPacketDataEiiR12NetBitStream
; demangled: CNetPlayerManager::ReadPacketData(int, int, NetBitStream&)
; decoder-mode: arm
00811d74  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00811d78  01 70 a0 e1                                      mov r7, r1
00811d7c  00 60 a0 e1                                      mov r6, r0
00811d80  03 10 a0 e1                                      mov r1, r3
00811d84  07 20 a0 e1                                      mov r2, r7
00811d88  08 d0 4d e2                                      sub sp, sp, #8
00811d8c  03 50 a0 e1                                      mov r5, r3
00811d90  20 00 80 e2                                      add r0, r0, #0x20
00811d94  00 30 a0 e3                                      mov r3, #0
00811d98  15 06 00 eb                                      bl #0x8135f4
00811d9c  98 31 96 e5                                      ldr r3, [r6, #0x198]
00811da0  9c 21 96 e5                                      ldr r2, [r6, #0x19c]
00811da4  02 20 63 e0                                      rsb r2, r3, r2
00811da8  22 21 b0 e1                                      lsrs r2, r2, #2
00811dac  2f 00 00 0a                                      beq #0x811e70
00811db0  00 40 a0 e3                                      mov r4, #0
00811db4  04 80 a0 e1                                      mov r8, r4
00811db8  01 a0 a0 e3                                      mov sl, #1
00811dbc  16 00 00 ea                                      b #0x811e1c
00811dc0  0c 00 12 e3                                      tst r2, #0xc
00811dc4  01 10 a0 13                                      movne r1, #1
00811dc8  05 00 00 1a                                      bne #0x811de4
00811dcc  02 00 12 e3                                      tst r2, #2
00811dd0  03 00 00 0a                                      beq #0x811de4
00811dd4  6c bc ff eb                                      bl #0x800f8c
00811dd8  c0 b1 ff eb                                      bl #0x7fe4e0
00811ddc  98 31 96 e5                                      ldr r3, [r6, #0x198]
00811de0  00 10 a0 e1                                      mov r1, r0
00811de4  09 30 93 e7                                      ldr r3, [r3, sb]
00811de8  05 20 a0 e1                                      mov r2, r5
00811dec  01 40 84 e2                                      add r4, r4, #1
00811df0  00 c0 93 e5                                      ldr ip, [r3]
00811df4  03 00 a0 e1                                      mov r0, r3
00811df8  00 80 8d e5                                      str r8, [sp]
00811dfc  07 30 a0 e1                                      mov r3, r7
00811e00  0f e0 a0 e1                                      mov lr, pc
00811e04  18 f0 9c e5                                      ldr pc, [ip, #0x18]
00811e08  98 31 96 e5                                      ldr r3, [r6, #0x198]
00811e0c  9c 21 96 e5                                      ldr r2, [r6, #0x19c]
00811e10  02 20 63 e0                                      rsb r2, r3, r2
00811e14  42 01 54 e1                                      cmp r4, r2, asr #2
00811e18  14 00 00 2a                                      bhs #0x811e70
00811e1c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
00811e20  04 91 a0 e1                                      lsl sb, r4, #2
00811e24  00 10 a0 e3                                      mov r1, #0
00811e28  f0 21 92 e5                                      ldr r2, [r2, #0x1f0]
00811e2c  06 00 52 e3                                      cmp r2, #6
00811e30  eb ff ff 8a                                      bhi #0x811de4
00811e34  1a 22 a0 e1                                      lsl r2, sl, r2
00811e38  71 00 12 e3                                      tst r2, #0x71
00811e3c  df ff ff 0a                                      beq #0x811dc0
00811e40  51 bc ff eb                                      bl #0x800f8c
00811e44  a5 b1 ff eb                                      bl #0x7fe4e0
00811e48  01 10 20 e2                                      eor r1, r0, #1
00811e4c  98 31 96 e5                                      ldr r3, [r6, #0x198]
00811e50  71 10 ef e6                                      uxtb r1, r1
00811e54  e2 ff ff ea                                      b #0x811de4
00811e58  c1 f1 ff eb                                      bl #0x80e564
00811e5c  05 10 a0 e1                                      mov r1, r5
00811e60  00 30 a0 e1                                      mov r3, r0
00811e64  07 20 a0 e1                                      mov r2, r7
00811e68  06 00 a0 e1                                      mov r0, r6
00811e6c  5d ff ff eb                                      bl #0x811be8
00811e70  01 10 a0 e3                                      mov r1, #1
00811e74  05 00 a0 e1                                      mov r0, r5
00811e78  b9 f1 ff eb                                      bl #0x80e564
00811e7c  00 00 50 e3                                      cmp r0, #0
00811e80  08 10 a0 e3                                      mov r1, #8
00811e84  05 00 a0 e1                                      mov r0, r5
00811e88  f2 ff ff 1a                                      bne #0x811e58
00811e8c  08 d0 8d e2                                      add sp, sp, #8
00811e90  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00811e94, declared_size=60, range_size=60, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager15sReadPacketDataEiiR12NetBitStream
; demangled: CNetPlayerManager::sReadPacketData(int, int, NetBitStream&)
; decoder-mode: arm
00811e94  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
00811e98  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00811e9c  30 00 2d e9                                      push {r4, r5}
00811ea0  0c c0 8f e0                                      add ip, pc, ip
00811ea4  00 50 a0 e1                                      mov r5, r0
00811ea8  03 00 9c e7                                      ldr r0, [ip, r3]
00811eac  01 40 a0 e1                                      mov r4, r1
00811eb0  02 30 a0 e1                                      mov r3, r2
00811eb4  00 00 90 e5                                      ldr r0, [r0]
00811eb8  05 10 a0 e1                                      mov r1, r5
00811ebc  04 20 a0 e1                                      mov r2, r4
00811ec0  30 00 bd e8                                      pop {r4, r5}
00811ec4  aa ff ff ea                                      b #0x811d74
; mapping-symbol data/literal pool
00811ec8  f0 2b 18 00 14 34 00 00                          .byte 0xf0, 0x2b, 0x18, 0x00, 0x14, 0x34, 0x00, 0x00

; FUNCTION 0x00812608, declared_size=140, range_size=140, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager21ClearPlayerListCachesEi
; demangled: CNetPlayerManager::ClearPlayerListCaches(int)
; decoder-mode: arm
00812608  30 40 2d e9                                      push {r4, r5, lr}
0081260c  b8 31 90 e5                                      ldr r3, [r0, #0x1b8]
00812610  bc 21 90 e5                                      ldr r2, [r0, #0x1bc]
00812614  0c d0 4d e2                                      sub sp, sp, #0xc
00812618  04 10 8d e5                                      str r1, [sp, #4]
0081261c  02 00 53 e1                                      cmp r3, r2
00812620  bc 31 80 15                                      strne r3, [r0, #0x1bc]
00812624  04 30 9d e5                                      ldr r3, [sp, #4]
00812628  01 20 a0 e3                                      mov r2, #1
0081262c  00 40 a0 e1                                      mov r4, r0
00812630  00 00 53 e3                                      cmp r3, #0
00812634  b4 21 c0 e5                                      strb r2, [r0, #0x1b4]
00812638  08 00 00 ba                                      blt #0x812660
0081263c  71 0f 80 e2                                      add r0, r0, #0x1c4
00812640  04 10 8d e2                                      add r1, sp, #4
00812644  a9 ff ff eb                                      bl #0x8124f0
00812648  00 30 90 e5                                      ldr r3, [r0]
0081264c  04 20 90 e5                                      ldr r2, [r0, #4]
00812650  02 00 53 e1                                      cmp r3, r2
00812654  04 30 80 15                                      strne r3, [r0, #4]
00812658  0c d0 8d e2                                      add sp, sp, #0xc
0081265c  30 80 bd e8                                      pop {r4, r5, pc}
00812660  d4 31 90 e5                                      ldr r3, [r0, #0x1d4]
00812664  00 00 53 e3                                      cmp r3, #0
00812668  fa ff ff 0a                                      beq #0x812658
0081266c  71 5f 80 e2                                      add r5, r0, #0x1c4
00812670  05 00 a0 e1                                      mov r0, r5
00812674  c8 11 94 e5                                      ldr r1, [r4, #0x1c8]
00812678  a2 fb ff eb                                      bl #0x811508
0081267c  00 30 a0 e3                                      mov r3, #0
00812680  d4 31 84 e5                                      str r3, [r4, #0x1d4]
00812684  d0 51 84 e5                                      str r5, [r4, #0x1d0]
00812688  cc 51 84 e5                                      str r5, [r4, #0x1cc]
0081268c  c8 31 84 e5                                      str r3, [r4, #0x1c8]
00812690  f0 ff ff ea                                      b #0x812658

; FUNCTION 0x00812694, declared_size=448, range_size=448, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManagerD1Ev
; demangled: CNetPlayerManager::~CNetPlayerManager()
; decoder-mode: arm
00812694  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00812698  a0 51 9f e5                                      ldr r5, [pc, #0x1a0]
0081269c  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
008126a0  00 70 a0 e3                                      mov r7, #0
008126a4  05 50 8f e0                                      add r5, pc, r5
008126a8  03 30 95 e7                                      ldr r3, [r5, r3]
008126ac  78 71 c0 e5                                      strb r7, [r0, #0x178]
008126b0  00 40 a0 e1                                      mov r4, r0
008126b4  08 30 83 e2                                      add r3, r3, #8
008126b8  00 30 80 e5                                      str r3, [r0]
008126bc  71 f9 ff eb                                      bl #0x810c88
008126c0  02 00 a0 e3                                      mov r0, #2
008126c4  fd 0a 00 eb                                      bl #0x8152c0
008126c8  06 6d 84 e2                                      add r6, r4, #0x180
008126cc  04 00 a0 e1                                      mov r0, r4
008126d0  00 10 e0 e3                                      mvn r1, #0
008126d4  cb ff ff eb                                      bl #0x812608
008126d8  80 31 94 e5                                      ldr r3, [r4, #0x180]
008126dc  06 00 a0 e1                                      mov r0, r6
008126e0  0f e0 a0 e1                                      mov lr, pc
008126e4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008126e8  d4 31 94 e5                                      ldr r3, [r4, #0x1d4]
008126ec  07 00 53 e1                                      cmp r3, r7
008126f0  07 00 00 0a                                      beq #0x812714
008126f4  71 8f 84 e2                                      add r8, r4, #0x1c4
008126f8  08 00 a0 e1                                      mov r0, r8
008126fc  c8 11 94 e5                                      ldr r1, [r4, #0x1c8]
00812700  80 fb ff eb                                      bl #0x811508
00812704  d0 81 84 e5                                      str r8, [r4, #0x1d0]
00812708  d4 71 84 e5                                      str r7, [r4, #0x1d4]
0081270c  cc 81 84 e5                                      str r8, [r4, #0x1cc]
00812710  c8 71 84 e5                                      str r7, [r4, #0x1c8]
00812714  b8 01 94 e5                                      ldr r0, [r4, #0x1b8]
00812718  6e 3f 84 e2                                      add r3, r4, #0x1b8
0081271c  00 00 50 e3                                      cmp r0, #0
00812720  05 00 00 0a                                      beq #0x81273c
00812724  08 10 93 e5                                      ldr r1, [r3, #8]
00812728  01 10 60 e0                                      rsb r1, r0, r1
0081272c  03 10 c1 e3                                      bic r1, r1, #3
00812730  80 00 51 e3                                      cmp r1, #0x80
00812734  3f 00 00 8a                                      bhi #0x812838
00812738  fe ae 02 eb                                      bl #0x8be338
0081273c  a4 01 94 e5                                      ldr r0, [r4, #0x1a4]
00812740  69 3f 84 e2                                      add r3, r4, #0x1a4
00812744  00 00 50 e3                                      cmp r0, #0
00812748  05 00 00 0a                                      beq #0x812764
0081274c  08 10 93 e5                                      ldr r1, [r3, #8]
00812750  01 10 60 e0                                      rsb r1, r0, r1
00812754  03 10 c1 e3                                      bic r1, r1, #3
00812758  80 00 51 e3                                      cmp r1, #0x80
0081275c  33 00 00 8a                                      bhi #0x812830
00812760  f4 ae 02 eb                                      bl #0x8be338
00812764  98 01 94 e5                                      ldr r0, [r4, #0x198]
00812768  66 3f 84 e2                                      add r3, r4, #0x198
0081276c  00 00 50 e3                                      cmp r0, #0
00812770  05 00 00 0a                                      beq #0x81278c
00812774  08 10 93 e5                                      ldr r1, [r3, #8]
00812778  01 10 60 e0                                      rsb r1, r0, r1
0081277c  03 10 c1 e3                                      bic r1, r1, #3
00812780  80 00 51 e3                                      cmp r1, #0x80
00812784  27 00 00 8a                                      bhi #0x812828
00812788  ea ae 02 eb                                      bl #0x8be338
0081278c  b4 80 9f e5                                      ldr r8, [pc, #0xb4]
00812790  08 00 86 e2                                      add r0, r6, #8
00812794  20 70 84 e2                                      add r7, r4, #0x20
00812798  08 30 95 e7                                      ldr r3, [r5, r8]
0081279c  08 30 83 e2                                      add r3, r3, #8
008127a0  80 31 84 e5                                      str r3, [r4, #0x180]
008127a4  f1 aa ff eb                                      bl #0x7fd370
008127a8  04 00 86 e2                                      add r0, r6, #4
008127ac  ef ee ff eb                                      bl #0x80e370
008127b0  94 20 9f e5                                      ldr r2, [pc, #0x94]
008127b4  94 30 9f e5                                      ldr r3, [pc, #0x94]
008127b8  02 20 95 e7                                      ldr r2, [r5, r2]
008127bc  03 30 95 e7                                      ldr r3, [r5, r3]
008127c0  08 20 82 e2                                      add r2, r2, #8
008127c4  08 30 83 e2                                      add r3, r3, #8
008127c8  50 21 84 e5                                      str r2, [r4, #0x150]
008127cc  20 30 84 e5                                      str r3, [r4, #0x20]
008127d0  1c 31 97 e5                                      ldr r3, [r7, #0x11c]
008127d4  00 00 53 e3                                      cmp r3, #0
008127d8  08 00 00 0a                                      beq #0x812800
008127dc  4b 6f 84 e2                                      add r6, r4, #0x12c
008127e0  06 00 a0 e1                                      mov r0, r6
008127e4  10 11 97 e5                                      ldr r1, [r7, #0x110]
008127e8  f8 79 ed eb                                      bl #0x370fd0
008127ec  00 30 a0 e3                                      mov r3, #0
008127f0  1c 31 87 e5                                      str r3, [r7, #0x11c]
008127f4  18 61 87 e5                                      str r6, [r7, #0x118]
008127f8  14 61 87 e5                                      str r6, [r7, #0x114]
008127fc  10 31 87 e5                                      str r3, [r7, #0x110]
00812800  08 30 95 e7                                      ldr r3, [r5, r8]
00812804  0c 00 84 e2                                      add r0, r4, #0xc
00812808  04 50 84 e2                                      add r5, r4, #4
0081280c  08 30 83 e2                                      add r3, r3, #8
00812810  04 30 84 e5                                      str r3, [r4, #4]
00812814  d5 aa ff eb                                      bl #0x7fd370
00812818  04 00 85 e2                                      add r0, r5, #4
0081281c  d3 ee ff eb                                      bl #0x80e370
00812820  04 00 a0 e1                                      mov r0, r4
00812824  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00812828  04 f7 eb eb                                      bl #0x310440
0081282c  d6 ff ff ea                                      b #0x81278c
00812830  02 f7 eb eb                                      bl #0x310440
00812834  ca ff ff ea                                      b #0x812764
00812838  00 f7 eb eb                                      bl #0x310440
0081283c  be ff ff ea                                      b #0x81273c
; mapping-symbol data/literal pool
00812840  ec 23 18 00 d8 1f 00 00 4c 0a 00 00 a8 10 00 00  .byte 0xec, 0x23, 0x18, 0x00, 0xd8, 0x1f, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
00812850  c4 43 00 00                                      .byte 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x00812854, declared_size=28, range_size=28, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManagerD0Ev
; demangled: CNetPlayerManager::~CNetPlayerManager()
; decoder-mode: arm
00812854  10 40 2d e9                                      push {r4, lr}
00812858  00 40 a0 e1                                      mov r4, r0
0081285c  8c ff ff eb                                      bl #0x812694
00812860  04 00 a0 e1                                      mov r0, r4
00812864  f5 f6 eb eb                                      bl #0x310440
00812868  04 00 a0 e1                                      mov r0, r4
0081286c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00812870, declared_size=448, range_size=448, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManagerD2Ev
; demangled: CNetPlayerManager::~CNetPlayerManager()
; decoder-mode: arm
00812870  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00812874  a0 51 9f e5                                      ldr r5, [pc, #0x1a0]
00812878  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
0081287c  00 70 a0 e3                                      mov r7, #0
00812880  05 50 8f e0                                      add r5, pc, r5
00812884  03 30 95 e7                                      ldr r3, [r5, r3]
00812888  78 71 c0 e5                                      strb r7, [r0, #0x178]
0081288c  00 40 a0 e1                                      mov r4, r0
00812890  08 30 83 e2                                      add r3, r3, #8
00812894  00 30 80 e5                                      str r3, [r0]
00812898  fa f8 ff eb                                      bl #0x810c88
0081289c  02 00 a0 e3                                      mov r0, #2
008128a0  86 0a 00 eb                                      bl #0x8152c0
008128a4  06 6d 84 e2                                      add r6, r4, #0x180
008128a8  04 00 a0 e1                                      mov r0, r4
008128ac  00 10 e0 e3                                      mvn r1, #0
008128b0  54 ff ff eb                                      bl #0x812608
008128b4  80 31 94 e5                                      ldr r3, [r4, #0x180]
008128b8  06 00 a0 e1                                      mov r0, r6
008128bc  0f e0 a0 e1                                      mov lr, pc
008128c0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008128c4  d4 31 94 e5                                      ldr r3, [r4, #0x1d4]
008128c8  07 00 53 e1                                      cmp r3, r7
008128cc  07 00 00 0a                                      beq #0x8128f0
008128d0  71 8f 84 e2                                      add r8, r4, #0x1c4
008128d4  08 00 a0 e1                                      mov r0, r8
008128d8  c8 11 94 e5                                      ldr r1, [r4, #0x1c8]
008128dc  09 fb ff eb                                      bl #0x811508
008128e0  d0 81 84 e5                                      str r8, [r4, #0x1d0]
008128e4  d4 71 84 e5                                      str r7, [r4, #0x1d4]
008128e8  cc 81 84 e5                                      str r8, [r4, #0x1cc]
008128ec  c8 71 84 e5                                      str r7, [r4, #0x1c8]
008128f0  b8 01 94 e5                                      ldr r0, [r4, #0x1b8]
008128f4  6e 3f 84 e2                                      add r3, r4, #0x1b8
008128f8  00 00 50 e3                                      cmp r0, #0
008128fc  05 00 00 0a                                      beq #0x812918
00812900  08 10 93 e5                                      ldr r1, [r3, #8]
00812904  01 10 60 e0                                      rsb r1, r0, r1
00812908  03 10 c1 e3                                      bic r1, r1, #3
0081290c  80 00 51 e3                                      cmp r1, #0x80
00812910  3f 00 00 8a                                      bhi #0x812a14
00812914  87 ae 02 eb                                      bl #0x8be338
00812918  a4 01 94 e5                                      ldr r0, [r4, #0x1a4]
0081291c  69 3f 84 e2                                      add r3, r4, #0x1a4
00812920  00 00 50 e3                                      cmp r0, #0
00812924  05 00 00 0a                                      beq #0x812940
00812928  08 10 93 e5                                      ldr r1, [r3, #8]
0081292c  01 10 60 e0                                      rsb r1, r0, r1
00812930  03 10 c1 e3                                      bic r1, r1, #3
00812934  80 00 51 e3                                      cmp r1, #0x80
00812938  33 00 00 8a                                      bhi #0x812a0c
0081293c  7d ae 02 eb                                      bl #0x8be338
00812940  98 01 94 e5                                      ldr r0, [r4, #0x198]
00812944  66 3f 84 e2                                      add r3, r4, #0x198
00812948  00 00 50 e3                                      cmp r0, #0
0081294c  05 00 00 0a                                      beq #0x812968
00812950  08 10 93 e5                                      ldr r1, [r3, #8]
00812954  01 10 60 e0                                      rsb r1, r0, r1
00812958  03 10 c1 e3                                      bic r1, r1, #3
0081295c  80 00 51 e3                                      cmp r1, #0x80
00812960  27 00 00 8a                                      bhi #0x812a04
00812964  73 ae 02 eb                                      bl #0x8be338
00812968  b4 80 9f e5                                      ldr r8, [pc, #0xb4]
0081296c  08 00 86 e2                                      add r0, r6, #8
00812970  20 70 84 e2                                      add r7, r4, #0x20
00812974  08 30 95 e7                                      ldr r3, [r5, r8]
00812978  08 30 83 e2                                      add r3, r3, #8
0081297c  80 31 84 e5                                      str r3, [r4, #0x180]
00812980  7a aa ff eb                                      bl #0x7fd370
00812984  04 00 86 e2                                      add r0, r6, #4
00812988  78 ee ff eb                                      bl #0x80e370
0081298c  94 20 9f e5                                      ldr r2, [pc, #0x94]
00812990  94 30 9f e5                                      ldr r3, [pc, #0x94]
00812994  02 20 95 e7                                      ldr r2, [r5, r2]
00812998  03 30 95 e7                                      ldr r3, [r5, r3]
0081299c  08 20 82 e2                                      add r2, r2, #8
008129a0  08 30 83 e2                                      add r3, r3, #8
008129a4  50 21 84 e5                                      str r2, [r4, #0x150]
008129a8  20 30 84 e5                                      str r3, [r4, #0x20]
008129ac  1c 31 97 e5                                      ldr r3, [r7, #0x11c]
008129b0  00 00 53 e3                                      cmp r3, #0
008129b4  08 00 00 0a                                      beq #0x8129dc
008129b8  4b 6f 84 e2                                      add r6, r4, #0x12c
008129bc  06 00 a0 e1                                      mov r0, r6
008129c0  10 11 97 e5                                      ldr r1, [r7, #0x110]
008129c4  81 79 ed eb                                      bl #0x370fd0
008129c8  00 30 a0 e3                                      mov r3, #0
008129cc  1c 31 87 e5                                      str r3, [r7, #0x11c]
008129d0  18 61 87 e5                                      str r6, [r7, #0x118]
008129d4  14 61 87 e5                                      str r6, [r7, #0x114]
008129d8  10 31 87 e5                                      str r3, [r7, #0x110]
008129dc  08 30 95 e7                                      ldr r3, [r5, r8]
008129e0  0c 00 84 e2                                      add r0, r4, #0xc
008129e4  04 50 84 e2                                      add r5, r4, #4
008129e8  08 30 83 e2                                      add r3, r3, #8
008129ec  04 30 84 e5                                      str r3, [r4, #4]
008129f0  5e aa ff eb                                      bl #0x7fd370
008129f4  04 00 85 e2                                      add r0, r5, #4
008129f8  5c ee ff eb                                      bl #0x80e370
008129fc  04 00 a0 e1                                      mov r0, r4
00812a00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00812a04  8d f6 eb eb                                      bl #0x310440
00812a08  d6 ff ff ea                                      b #0x812968
00812a0c  8b f6 eb eb                                      bl #0x310440
00812a10  ca ff ff ea                                      b #0x812940
00812a14  89 f6 eb eb                                      bl #0x310440
00812a18  be ff ff ea                                      b #0x812918
; mapping-symbol data/literal pool
00812a1c  10 22 18 00 d8 1f 00 00 4c 0a 00 00 a8 10 00 00  .byte 0x10, 0x22, 0x18, 0x00, 0xd8, 0x1f, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
00812a2c  c4 43 00 00                                      .byte 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x00812a30, declared_size=352, range_size=352, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManagerC1Ei
; demangled: CNetPlayerManager::CNetPlayerManager(int)
; decoder-mode: arm
00812a30  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00812a34  30 61 9f e5                                      ldr r6, [pc, #0x130]
00812a38  30 31 9f e5                                      ldr r3, [pc, #0x130]
00812a3c  30 51 9f e5                                      ldr r5, [pc, #0x130]
00812a40  06 60 8f e0                                      add r6, pc, r6
00812a44  03 30 96 e7                                      ldr r3, [r6, r3]
00812a48  05 50 96 e7                                      ldr r5, [r6, r5]
00812a4c  00 40 a0 e1                                      mov r4, r0
00812a50  08 30 83 e2                                      add r3, r3, #8
00812a54  08 50 85 e2                                      add r5, r5, #8
00812a58  0c d0 4d e2                                      sub sp, sp, #0xc
00812a5c  28 00 80 e8                                      stm r0, {r3, r5}
00812a60  08 00 80 e2                                      add r0, r0, #8
00812a64  01 a0 a0 e1                                      mov sl, r1
00812a68  4a ee ff eb                                      bl #0x80e398
00812a6c  04 31 9f e5                                      ldr r3, [pc, #0x104]
00812a70  0c 20 84 e2                                      add r2, r4, #0xc
00812a74  64 80 a0 e3                                      mov r8, #0x64
00812a78  03 30 96 e7                                      ldr r3, [r6, r3]
00812a7c  00 70 a0 e3                                      mov r7, #0
00812a80  10 20 84 e5                                      str r2, [r4, #0x10]
00812a84  08 30 83 e2                                      add r3, r3, #8
00812a88  0c 20 84 e5                                      str r2, [r4, #0xc]
00812a8c  04 30 84 e5                                      str r3, [r4, #4]
00812a90  14 80 84 e5                                      str r8, [r4, #0x14]
00812a94  20 00 84 e2                                      add r0, r4, #0x20
00812a98  bc f8 ff eb                                      bl #0x810d90
00812a9c  80 51 84 e5                                      str r5, [r4, #0x180]
00812aa0  78 71 c4 e5                                      strb r7, [r4, #0x178]
00812aa4  7c 71 84 e5                                      str r7, [r4, #0x17c]
00812aa8  61 0f 84 e2                                      add r0, r4, #0x184
00812aac  39 ee ff eb                                      bl #0x80e398
00812ab0  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
00812ab4  04 30 a0 e1                                      mov r3, r4
00812ab8  62 1f 84 e2                                      add r1, r4, #0x188
00812abc  02 20 96 e7                                      ldr r2, [r6, r2]
00812ac0  00 50 e0 e3                                      mvn r5, #0
00812ac4  8c 11 84 e5                                      str r1, [r4, #0x18c]
00812ac8  08 20 82 e2                                      add r2, r2, #8
00812acc  80 21 84 e5                                      str r2, [r4, #0x180]
00812ad0  88 11 84 e5                                      str r1, [r4, #0x188]
00812ad4  90 81 84 e5                                      str r8, [r4, #0x190]
00812ad8  94 a1 84 e5                                      str sl, [r4, #0x194]
00812adc  98 71 84 e5                                      str r7, [r4, #0x198]
00812ae0  9c 71 84 e5                                      str r7, [r4, #0x19c]
00812ae4  a0 71 84 e5                                      str r7, [r4, #0x1a0]
00812ae8  a4 71 84 e5                                      str r7, [r4, #0x1a4]
00812aec  a8 71 84 e5                                      str r7, [r4, #0x1a8]
00812af0  ac 71 84 e5                                      str r7, [r4, #0x1ac]
00812af4  b0 51 84 e5                                      str r5, [r4, #0x1b0]
00812af8  b8 71 84 e5                                      str r7, [r4, #0x1b8]
00812afc  bc 71 84 e5                                      str r7, [r4, #0x1bc]
00812b00  c0 71 84 e5                                      str r7, [r4, #0x1c0]
00812b04  c8 71 84 e5                                      str r7, [r4, #0x1c8]
00812b08  c4 71 e3 e5                                      strb r7, [r3, #0x1c4]!
00812b0c  d0 31 84 e5                                      str r3, [r4, #0x1d0]
00812b10  cc 31 84 e5                                      str r3, [r4, #0x1cc]
00812b14  04 00 a0 e1                                      mov r0, r4
00812b18  d4 71 84 e5                                      str r7, [r4, #0x1d4]
00812b1c  f9 f9 ff eb                                      bl #0x811308
00812b20  58 30 9f e5                                      ldr r3, [pc, #0x58]
00812b24  58 00 9f e5                                      ldr r0, [pc, #0x58]
00812b28  03 10 96 e7                                      ldr r1, [r6, r3]
00812b2c  54 30 9f e5                                      ldr r3, [pc, #0x54]
00812b30  00 c0 96 e7                                      ldr ip, [r6, r0]
00812b34  02 00 a0 e3                                      mov r0, #2
00812b38  03 20 96 e7                                      ldr r2, [r6, r3]
00812b3c  48 30 9f e5                                      ldr r3, [pc, #0x48]
00812b40  00 c0 8d e5                                      str ip, [sp]
00812b44  03 30 96 e7                                      ldr r3, [r6, r3]
00812b48  c2 09 00 eb                                      bl #0x815258
00812b4c  04 00 a0 e1                                      mov r0, r4
00812b50  05 10 a0 e1                                      mov r1, r5
00812b54  ab fe ff eb                                      bl #0x812608
00812b58  01 30 a0 e3                                      mov r3, #1
00812b5c  78 31 c4 e5                                      strb r3, [r4, #0x178]
00812b60  04 00 a0 e1                                      mov r0, r4
00812b64  0c d0 8d e2                                      add sp, sp, #0xc
00812b68  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00812b6c  50 20 18 00 d8 1f 00 00 4c 0a 00 00 70 47 00 00  .byte 0x50, 0x20, 0x18, 0x00, 0xd8, 0x1f, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
00812b7c  68 2f 00 00 10 23 00 00 e8 44 00 00 1c 24 00 00  .byte 0x68, 0x2f, 0x00, 0x00, 0x10, 0x23, 0x00, 0x00, 0xe8, 0x44, 0x00, 0x00, 0x1c, 0x24, 0x00, 0x00
00812b8c  b4 41 00 00                                      .byte 0xb4, 0x41, 0x00, 0x00

; FUNCTION 0x00812b90, declared_size=96, range_size=96, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager10InitializeEi
; demangled: CNetPlayerManager::Initialize(int)
; decoder-mode: arm
00812b90  50 30 9f e5                                      ldr r3, [pc, #0x50]
00812b94  50 20 9f e5                                      ldr r2, [pc, #0x50]
00812b98  70 40 2d e9                                      push {r4, r5, r6, lr}
00812b9c  03 30 8f e0                                      add r3, pc, r3
00812ba0  02 40 93 e7                                      ldr r4, [r3, r2]
00812ba4  00 50 a0 e1                                      mov r5, r0
00812ba8  00 30 94 e5                                      ldr r3, [r4]
00812bac  00 00 53 e3                                      cmp r3, #0
00812bb0  01 00 00 0a                                      beq #0x812bbc
00812bb4  00 00 a0 e3                                      mov r0, #0
00812bb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00812bbc  02 10 a0 e3                                      mov r1, #2
00812bc0  1e 0e a0 e3                                      mov r0, #0x1e0
00812bc4  69 f6 eb eb                                      bl #0x310570
00812bc8  05 10 a0 e1                                      mov r1, r5
00812bcc  00 60 a0 e1                                      mov r6, r0
00812bd0  96 ff ff eb                                      bl #0x812a30
00812bd4  00 00 56 e3                                      cmp r6, #0
00812bd8  00 60 84 e5                                      str r6, [r4]
00812bdc  f4 ff ff 1a                                      bne #0x812bb4
00812be0  00 00 e0 e3                                      mvn r0, #0
00812be4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00812be8  f4 1e 18 00 14 34 00 00                          .byte 0xf4, 0x1e, 0x18, 0x00, 0x14, 0x34, 0x00, 0x00

; FUNCTION 0x00812bf0, declared_size=352, range_size=352, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManagerC2Ei
; demangled: CNetPlayerManager::CNetPlayerManager(int)
; decoder-mode: arm
00812bf0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00812bf4  30 61 9f e5                                      ldr r6, [pc, #0x130]
00812bf8  30 31 9f e5                                      ldr r3, [pc, #0x130]
00812bfc  30 51 9f e5                                      ldr r5, [pc, #0x130]
00812c00  06 60 8f e0                                      add r6, pc, r6
00812c04  03 30 96 e7                                      ldr r3, [r6, r3]
00812c08  05 50 96 e7                                      ldr r5, [r6, r5]
00812c0c  00 40 a0 e1                                      mov r4, r0
00812c10  08 30 83 e2                                      add r3, r3, #8
00812c14  08 50 85 e2                                      add r5, r5, #8
00812c18  0c d0 4d e2                                      sub sp, sp, #0xc
00812c1c  28 00 80 e8                                      stm r0, {r3, r5}
00812c20  08 00 80 e2                                      add r0, r0, #8
00812c24  01 a0 a0 e1                                      mov sl, r1
00812c28  da ed ff eb                                      bl #0x80e398
00812c2c  04 31 9f e5                                      ldr r3, [pc, #0x104]
00812c30  0c 20 84 e2                                      add r2, r4, #0xc
00812c34  64 80 a0 e3                                      mov r8, #0x64
00812c38  03 30 96 e7                                      ldr r3, [r6, r3]
00812c3c  00 70 a0 e3                                      mov r7, #0
00812c40  10 20 84 e5                                      str r2, [r4, #0x10]
00812c44  08 30 83 e2                                      add r3, r3, #8
00812c48  0c 20 84 e5                                      str r2, [r4, #0xc]
00812c4c  04 30 84 e5                                      str r3, [r4, #4]
00812c50  14 80 84 e5                                      str r8, [r4, #0x14]
00812c54  20 00 84 e2                                      add r0, r4, #0x20
00812c58  4c f8 ff eb                                      bl #0x810d90
00812c5c  80 51 84 e5                                      str r5, [r4, #0x180]
00812c60  78 71 c4 e5                                      strb r7, [r4, #0x178]
00812c64  7c 71 84 e5                                      str r7, [r4, #0x17c]
00812c68  61 0f 84 e2                                      add r0, r4, #0x184
00812c6c  c9 ed ff eb                                      bl #0x80e398
00812c70  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
00812c74  04 30 a0 e1                                      mov r3, r4
00812c78  62 1f 84 e2                                      add r1, r4, #0x188
00812c7c  02 20 96 e7                                      ldr r2, [r6, r2]
00812c80  00 50 e0 e3                                      mvn r5, #0
00812c84  8c 11 84 e5                                      str r1, [r4, #0x18c]
00812c88  08 20 82 e2                                      add r2, r2, #8
00812c8c  80 21 84 e5                                      str r2, [r4, #0x180]
00812c90  88 11 84 e5                                      str r1, [r4, #0x188]
00812c94  90 81 84 e5                                      str r8, [r4, #0x190]
00812c98  94 a1 84 e5                                      str sl, [r4, #0x194]
00812c9c  98 71 84 e5                                      str r7, [r4, #0x198]
00812ca0  9c 71 84 e5                                      str r7, [r4, #0x19c]
00812ca4  a0 71 84 e5                                      str r7, [r4, #0x1a0]
00812ca8  a4 71 84 e5                                      str r7, [r4, #0x1a4]
00812cac  a8 71 84 e5                                      str r7, [r4, #0x1a8]
00812cb0  ac 71 84 e5                                      str r7, [r4, #0x1ac]
00812cb4  b0 51 84 e5                                      str r5, [r4, #0x1b0]
00812cb8  b8 71 84 e5                                      str r7, [r4, #0x1b8]
00812cbc  bc 71 84 e5                                      str r7, [r4, #0x1bc]
00812cc0  c0 71 84 e5                                      str r7, [r4, #0x1c0]
00812cc4  c8 71 84 e5                                      str r7, [r4, #0x1c8]
00812cc8  c4 71 e3 e5                                      strb r7, [r3, #0x1c4]!
00812ccc  d0 31 84 e5                                      str r3, [r4, #0x1d0]
00812cd0  cc 31 84 e5                                      str r3, [r4, #0x1cc]
00812cd4  04 00 a0 e1                                      mov r0, r4
00812cd8  d4 71 84 e5                                      str r7, [r4, #0x1d4]
00812cdc  89 f9 ff eb                                      bl #0x811308
00812ce0  58 30 9f e5                                      ldr r3, [pc, #0x58]
00812ce4  58 00 9f e5                                      ldr r0, [pc, #0x58]
00812ce8  03 10 96 e7                                      ldr r1, [r6, r3]
00812cec  54 30 9f e5                                      ldr r3, [pc, #0x54]
00812cf0  00 c0 96 e7                                      ldr ip, [r6, r0]
00812cf4  02 00 a0 e3                                      mov r0, #2
00812cf8  03 20 96 e7                                      ldr r2, [r6, r3]
00812cfc  48 30 9f e5                                      ldr r3, [pc, #0x48]
00812d00  00 c0 8d e5                                      str ip, [sp]
00812d04  03 30 96 e7                                      ldr r3, [r6, r3]
00812d08  52 09 00 eb                                      bl #0x815258
00812d0c  04 00 a0 e1                                      mov r0, r4
00812d10  05 10 a0 e1                                      mov r1, r5
00812d14  3b fe ff eb                                      bl #0x812608
00812d18  01 30 a0 e3                                      mov r3, #1
00812d1c  78 31 c4 e5                                      strb r3, [r4, #0x178]
00812d20  04 00 a0 e1                                      mov r0, r4
00812d24  0c d0 8d e2                                      add sp, sp, #0xc
00812d28  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00812d2c  90 1e 18 00 d8 1f 00 00 4c 0a 00 00 70 47 00 00  .byte 0x90, 0x1e, 0x18, 0x00, 0xd8, 0x1f, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
00812d3c  68 2f 00 00 10 23 00 00 e8 44 00 00 1c 24 00 00  .byte 0x68, 0x2f, 0x00, 0x00, 0x10, 0x23, 0x00, 0x00, 0xe8, 0x44, 0x00, 0x00, 0x1c, 0x24, 0x00, 0x00
00812d4c  b4 41 00 00                                      .byte 0xb4, 0x41, 0x00, 0x00

; FUNCTION 0x00812d50, declared_size=292, range_size=292, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager25GetPlayerIdListByMemberIdEi
; demangled: CNetPlayerManager::GetPlayerIdListByMemberId(int)
; decoder-mode: arm
00812d50  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00812d54  10 d0 4d e2                                      sub sp, sp, #0x10
00812d58  10 60 8d e2                                      add r6, sp, #0x10
00812d5c  0c 10 26 e5                                      str r1, [r6, #-0xc]!
00812d60  71 7f 80 e2                                      add r7, r0, #0x1c4
00812d64  00 50 a0 e1                                      mov r5, r0
00812d68  06 10 a0 e1                                      mov r1, r6
00812d6c  07 00 a0 e1                                      mov r0, r7
00812d70  de fd ff eb                                      bl #0x8124f0
00812d74  0c 00 90 e8                                      ldm r0, {r2, r3}
00812d78  03 00 52 e1                                      cmp r2, r3
00812d7c  04 00 00 0a                                      beq #0x812d94
00812d80  07 00 a0 e1                                      mov r0, r7
00812d84  06 10 a0 e1                                      mov r1, r6
00812d88  d8 fd ff eb                                      bl #0x8124f0
00812d8c  10 d0 8d e2                                      add sp, sp, #0x10
00812d90  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00812d94  b4 31 d5 e5                                      ldrb r3, [r5, #0x1b4]
00812d98  00 00 53 e3                                      cmp r3, #0
00812d9c  f7 ff ff 0a                                      beq #0x812d80
00812da0  98 21 95 e5                                      ldr r2, [r5, #0x198]
00812da4  9c 11 95 e5                                      ldr r1, [r5, #0x19c]
00812da8  00 40 a0 e3                                      mov r4, #0
00812dac  b4 41 c5 e5                                      strb r4, [r5, #0x1b4]
00812db0  01 30 62 e0                                      rsb r3, r2, r1
00812db4  23 31 b0 e1                                      lsrs r3, r3, #2
00812db8  f0 ff ff 0a                                      beq #0x812d80
00812dbc  01 80 a0 e3                                      mov r8, #1
00812dc0  0c a0 8d e2                                      add sl, sp, #0xc
00812dc4  04 31 92 e7                                      ldr r3, [r2, r4, lsl #2]
00812dc8  04 91 a0 e1                                      lsl sb, r4, #2
00812dcc  00 00 53 e2                                      subs r0, r3, #0
00812dd0  06 00 00 0a                                      beq #0x812df0
00812dd4  00 30 93 e5                                      ldr r3, [r3]
00812dd8  0f e0 a0 e1                                      mov lr, pc
00812ddc  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00812de0  00 00 50 e3                                      cmp r0, #0
00812de4  06 00 00 1a                                      bne #0x812e04
00812de8  98 21 95 e5                                      ldr r2, [r5, #0x198]
00812dec  9c 11 95 e5                                      ldr r1, [r5, #0x19c]
00812df0  01 40 84 e2                                      add r4, r4, #1
00812df4  01 30 62 e0                                      rsb r3, r2, r1
00812df8  43 01 54 e1                                      cmp r4, r3, asr #2
00812dfc  f0 ff ff 3a                                      blo #0x812dc4
00812e00  de ff ff ea                                      b #0x812d80
00812e04  98 21 95 e5                                      ldr r2, [r5, #0x198]
00812e08  b4 81 c5 e5                                      strb r8, [r5, #0x1b4]
00812e0c  04 10 9d e5                                      ldr r1, [sp, #4]
00812e10  09 30 92 e7                                      ldr r3, [r2, sb]
00812e14  a0 31 93 e5                                      ldr r3, [r3, #0x1a0]
00812e18  03 00 51 e1                                      cmp r1, r3
00812e1c  f2 ff ff 1a                                      bne #0x812dec
00812e20  06 10 a0 e1                                      mov r1, r6
00812e24  07 00 a0 e1                                      mov r0, r7
00812e28  b0 fd ff eb                                      bl #0x8124f0
00812e2c  98 21 95 e5                                      ldr r2, [r5, #0x198]
00812e30  09 20 92 e7                                      ldr r2, [r2, sb]
00812e34  78 21 92 e5                                      ldr r2, [r2, #0x178]
00812e38  0c 20 8d e5                                      str r2, [sp, #0xc]
00812e3c  02 10 90 e9                                      ldmib r0, {r1, ip}
00812e40  0c 00 51 e1                                      cmp r1, ip
00812e44  06 00 00 0a                                      beq #0x812e64
00812e48  00 20 81 e5                                      str r2, [r1]
00812e4c  04 20 90 e5                                      ldr r2, [r0, #4]
00812e50  04 20 82 e2                                      add r2, r2, #4
00812e54  04 20 80 e5                                      str r2, [r0, #4]
00812e58  98 21 95 e5                                      ldr r2, [r5, #0x198]
00812e5c  9c 11 95 e5                                      ldr r1, [r5, #0x19c]
00812e60  e2 ff ff ea                                      b #0x812df0
00812e64  0a 20 a0 e1                                      mov r2, sl
00812e68  32 f9 ff eb                                      bl #0x811338
00812e6c  98 21 95 e5                                      ldr r2, [r5, #0x198]
00812e70  dd ff ff ea                                      b #0x812dec

; FUNCTION 0x00812e74, declared_size=28, range_size=28, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager20GetMemberPlayerCountEi
; demangled: CNetPlayerManager::GetMemberPlayerCount(int)
; decoder-mode: arm
00812e74  10 40 2d e9                                      push {r4, lr}
00812e78  b4 ff ff eb                                      bl #0x812d50
00812e7c  00 30 90 e5                                      ldr r3, [r0]
00812e80  04 00 90 e5                                      ldr r0, [r0, #4]
00812e84  00 00 63 e0                                      rsb r0, r3, r0
00812e88  40 01 a0 e1                                      asr r0, r0, #2
00812e8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00812e90, declared_size=24, range_size=24, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager22MemberHasActivePlayersEi
; demangled: CNetPlayerManager::MemberHasActivePlayers(int)
; decoder-mode: arm
00812e90  10 40 2d e9                                      push {r4, lr}
00812e94  f6 ff ff eb                                      bl #0x812e74
00812e98  00 00 50 e3                                      cmp r0, #0
00812e9c  00 00 a0 d3                                      movle r0, #0
00812ea0  01 00 a0 c3                                      movgt r0, #1
00812ea4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00812ea8, declared_size=40, range_size=40, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager20GetLocalPlayerIdListEv
; demangled: CNetPlayerManager::GetLocalPlayerIdList()
; decoder-mode: arm
00812ea8  10 40 2d e9                                      push {r4, lr}
00812eac  00 40 a0 e1                                      mov r4, r0
00812eb0  35 b8 ff eb                                      bl #0x800f8c
00812eb4  00 30 90 e5                                      ldr r3, [r0]
00812eb8  0f e0 a0 e1                                      mov lr, pc
00812ebc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00812ec0  00 10 a0 e1                                      mov r1, r0
00812ec4  04 00 a0 e1                                      mov r0, r4
00812ec8  10 40 bd e8                                      pop {r4, lr}
00812ecc  9f ff ff ea                                      b #0x812d50

; FUNCTION 0x00812ed0, declared_size=28, range_size=28, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager19GetLocalPlayerCountEv
; demangled: CNetPlayerManager::GetLocalPlayerCount()
; decoder-mode: arm
00812ed0  10 40 2d e9                                      push {r4, lr}
00812ed4  f3 ff ff eb                                      bl #0x812ea8
00812ed8  00 30 90 e5                                      ldr r3, [r0]
00812edc  04 00 90 e5                                      ldr r0, [r0, #4]
00812ee0  00 00 63 e0                                      rsb r0, r3, r0
00812ee4  40 01 a0 e1                                      asr r0, r0, #2
00812ee8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00812eec, declared_size=864, range_size=864, mode=arm
; class-group: CNetPlayerManager
; alias: _ZN17CNetPlayerManager6UpdateEi
; demangled: CNetPlayerManager::Update(int)
; decoder-mode: arm
00812eec  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
00812ef0  78 31 d0 e5                                      ldrb r3, [r0, #0x178]
00812ef4  3c 53 9f e5                                      ldr r5, [pc, #0x33c]
00812ef8  00 40 a0 e1                                      mov r4, r0
00812efc  00 00 53 e3                                      cmp r3, #0
00812f00  05 50 8f e0                                      add r5, pc, r5
00812f04  3c d0 4d e2                                      sub sp, sp, #0x3c
00812f08  00 00 e0 03                                      mvneq r0, #0
00812f0c  3a 00 00 0a                                      beq #0x812ffc
00812f10  98 31 94 e5                                      ldr r3, [r4, #0x198]
00812f14  9c 21 94 e5                                      ldr r2, [r4, #0x19c]
00812f18  02 20 63 e0                                      rsb r2, r3, r2
00812f1c  22 21 b0 e1                                      lsrs r2, r2, #2
00812f20  0b 00 00 0a                                      beq #0x812f54
00812f24  00 60 a0 e3                                      mov r6, #0
00812f28  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
00812f2c  01 60 86 e2                                      add r6, r6, #1
00812f30  03 00 a0 e1                                      mov r0, r3
00812f34  00 30 93 e5                                      ldr r3, [r3]
00812f38  0f e0 a0 e1                                      mov lr, pc
00812f3c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00812f40  98 31 94 e5                                      ldr r3, [r4, #0x198]
00812f44  9c 21 94 e5                                      ldr r2, [r4, #0x19c]
00812f48  02 20 63 e0                                      rsb r2, r3, r2
00812f4c  42 01 56 e1                                      cmp r6, r2, asr #2
00812f50  f4 ff ff 3a                                      blo #0x812f28
00812f54  04 00 a0 e1                                      mov r0, r4
00812f58  90 f6 ff eb                                      bl #0x8109a0
00812f5c  0a b8 ff eb                                      bl #0x800f8c
00812f60  5e ad ff eb                                      bl #0x7fe4e0
00812f64  00 00 50 e3                                      cmp r0, #0
00812f68  25 00 00 1a                                      bne #0x813004
00812f6c  b0 21 94 e5                                      ldr r2, [r4, #0x1b0]
00812f70  00 00 52 e3                                      cmp r2, #0
00812f74  09 00 00 ba                                      blt #0x812fa0
00812f78  70 31 94 e5                                      ldr r3, [r4, #0x170]
00812f7c  03 00 52 e1                                      cmp r2, r3
00812f80  07 00 00 0a                                      beq #0x812fa4
00812f84  38 20 8d e2                                      add r2, sp, #0x38
00812f88  03 16 a0 e3                                      mov r1, #0x300000
00812f8c  04 30 22 e5                                      str r3, [r2, #-4]!
00812f90  04 10 81 e2                                      add r1, r1, #4
00812f94  06 0d 84 e2                                      add r0, r4, #0x180
00812f98  04 30 a0 e3                                      mov r3, #4
00812f9c  98 ac ff eb                                      bl #0x7fe204
00812fa0  70 31 94 e5                                      ldr r3, [r4, #0x170]
00812fa4  a4 21 94 e5                                      ldr r2, [r4, #0x1a4]
00812fa8  a8 11 94 e5                                      ldr r1, [r4, #0x1a8]
00812fac  b0 31 84 e5                                      str r3, [r4, #0x1b0]
00812fb0  01 00 52 e1                                      cmp r2, r1
00812fb4  0a 00 00 0a                                      beq #0x812fe4
00812fb8  00 10 92 e5                                      ldr r1, [r2]
00812fbc  00 30 a0 e3                                      mov r3, #0
00812fc0  04 00 a0 e1                                      mov r0, r4
00812fc4  c8 21 91 e5                                      ldr r2, [r1, #0x1c8]
00812fc8  a0 11 91 e5                                      ldr r1, [r1, #0x1a0]
00812fcc  95 f4 ff eb                                      bl #0x810228
00812fd0  00 30 90 e5                                      ldr r3, [r0]
00812fd4  0f e0 a0 e1                                      mov lr, pc
00812fd8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00812fdc  00 00 50 e3                                      cmp r0, #0
00812fe0  69 00 00 1a                                      bne #0x81318c
00812fe4  ea a9 ff eb                                      bl #0x7fd794
00812fe8  71 a9 ff eb                                      bl #0x7fd5b4
00812fec  00 10 a0 e1                                      mov r1, r0
00812ff0  20 00 84 e2                                      add r0, r4, #0x20
00812ff4  9c 01 00 eb                                      bl #0x81366c
00812ff8  00 00 a0 e3                                      mov r0, #0
00812ffc  3c d0 8d e2                                      add sp, sp, #0x3c
00813000  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
00813004  e0 b7 ff eb                                      bl #0x800f8c
00813008  00 30 90 e5                                      ldr r3, [r0]
0081300c  0f e0 a0 e1                                      mov lr, pc
00813010  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00813014  00 00 50 e3                                      cmp r0, #0
00813018  d3 ff ff 0a                                      beq #0x812f6c
0081301c  98 31 94 e5                                      ldr r3, [r4, #0x198]
00813020  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
00813024  01 20 63 e0                                      rsb r2, r3, r1
00813028  22 21 b0 e1                                      lsrs r2, r2, #2
0081302c  19 00 00 0a                                      beq #0x813098
00813030  00 60 a0 e3                                      mov r6, #0
00813034  06 21 93 e7                                      ldr r2, [r3, r6, lsl #2]
00813038  06 71 a0 e1                                      lsl r7, r6, #2
0081303c  a0 21 92 e5                                      ldr r2, [r2, #0x1a0]
00813040  00 00 52 e3                                      cmp r2, #0
00813044  0f 00 00 da                                      ble #0x813088
00813048  cf b7 ff eb                                      bl #0x800f8c
0081304c  98 21 94 e5                                      ldr r2, [r4, #0x198]
00813050  00 30 90 e5                                      ldr r3, [r0]
00813054  06 21 92 e7                                      ldr r2, [r2, r6, lsl #2]
00813058  a0 11 92 e5                                      ldr r1, [r2, #0x1a0]
0081305c  0f e0 a0 e1                                      mov lr, pc
00813060  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00813064  00 00 50 e3                                      cmp r0, #0
00813068  04 00 00 1a                                      bne #0x813080
0081306c  98 31 94 e5                                      ldr r3, [r4, #0x198]
00813070  04 00 a0 e1                                      mov r0, r4
00813074  07 30 93 e7                                      ldr r3, [r3, r7]
00813078  78 11 93 e5                                      ldr r1, [r3, #0x178]
0081307c  09 f6 ff eb                                      bl #0x8108a8
00813080  98 31 94 e5                                      ldr r3, [r4, #0x198]
00813084  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
00813088  01 60 86 e2                                      add r6, r6, #1
0081308c  01 20 63 e0                                      rsb r2, r3, r1
00813090  42 01 56 e1                                      cmp r6, r2, asr #2
00813094  e6 ff ff 3a                                      blo #0x813034
00813098  04 00 a0 e1                                      mov r0, r4
0081309c  70 11 94 e5                                      ldr r1, [r4, #0x170]
008130a0  29 f4 ff eb                                      bl #0x81014c
008130a4  00 60 50 e2                                      subs r6, r0, #0
008130a8  af ff ff 0a                                      beq #0x812f6c
008130ac  00 30 96 e5                                      ldr r3, [r6]
008130b0  0f e0 a0 e1                                      mov lr, pc
008130b4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008130b8  00 00 50 e3                                      cmp r0, #0
008130bc  aa ff ff 1a                                      bne #0x812f6c
008130c0  a0 11 96 e5                                      ldr r1, [r6, #0x1a0]
008130c4  04 00 a0 e1                                      mov r0, r4
008130c8  20 ff ff eb                                      bl #0x812d50
008130cc  28 60 8d e2                                      add r6, sp, #0x28
008130d0  00 10 a0 e1                                      mov r1, r0
008130d4  06 00 a0 e1                                      mov r0, r6
008130d8  08 b3 ed eb                                      bl #0x37fd00
008130dc  28 30 9d e5                                      ldr r3, [sp, #0x28]
008130e0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
008130e4  02 00 53 e1                                      cmp r3, r2
008130e8  3a 00 00 0a                                      beq #0x8131d8
008130ec  48 21 9f e5                                      ldr r2, [pc, #0x148]
008130f0  00 30 93 e5                                      ldr r3, [r3]
008130f4  20 10 9d e5                                      ldr r1, [sp, #0x20]
008130f8  02 20 95 e7                                      ldr r2, [r5, r2]
008130fc  00 00 e0 e3                                      mvn r0, #0
00813100  01 00 53 e1                                      cmp r3, r1
00813104  08 20 82 e2                                      add r2, r2, #8
00813108  00 10 a0 e3                                      mov r1, #0
0081310c  06 c0 a0 e3                                      mov ip, #6
00813110  00 80 a0 e3                                      mov r8, #0
00813114  00 90 a0 e3                                      mov sb, #0
00813118  04 c0 8d e5                                      str ip, [sp, #4]
0081311c  f8 80 cd e1                                      strd r8, sb, [sp, #8]
00813120  14 00 8d e5                                      str r0, [sp, #0x14]
00813124  1c 10 cd e5                                      strb r1, [sp, #0x1c]
00813128  00 20 8d e5                                      str r2, [sp]
0081312c  10 00 8d e5                                      str r0, [sp, #0x10]
00813130  18 10 8d e5                                      str r1, [sp, #0x18]
00813134  0d 70 a0 01                                      moveq r7, sp
00813138  03 00 00 0a                                      beq #0x81314c
0081313c  0d 00 a0 e1                                      mov r0, sp
00813140  0d 70 a0 e1                                      mov r7, sp
00813144  20 30 8d e5                                      str r3, [sp, #0x20]
00813148  8d 07 00 eb                                      bl #0x814f84
0081314c  ec 20 9f e5                                      ldr r2, [pc, #0xec]
00813150  50 31 94 e5                                      ldr r3, [r4, #0x150]
00813154  20 10 87 e2                                      add r1, r7, #0x20
00813158  02 20 95 e7                                      ldr r2, [r5, r2]
0081315c  15 0e 84 e2                                      add r0, r4, #0x150
00813160  08 20 82 e2                                      add r2, r2, #8
00813164  00 20 8d e5                                      str r2, [sp]
00813168  0f e0 a0 e1                                      mov lr, pc
0081316c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00813170  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00813174  03 30 95 e7                                      ldr r3, [r5, r3]
00813178  08 30 83 e2                                      add r3, r3, #8
0081317c  00 30 8d e5                                      str r3, [sp]
00813180  06 00 a0 e1                                      mov r0, r6
00813184  05 b0 f0 eb                                      bl #0x43f1a0
00813188  77 ff ff ea                                      b #0x812f6c
0081318c  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00813190  00 00 93 e5                                      ldr r0, [r3]
00813194  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00813198  03 30 95 e7                                      ldr r3, [r5, r3]
0081319c  0f e0 a0 e1                                      mov lr, pc
008131a0  00 f0 93 e5                                      ldr pc, [r3]
008131a4  a4 01 94 e5                                      ldr r0, [r4, #0x1a4]
008131a8  a8 31 94 e5                                      ldr r3, [r4, #0x1a8]
008131ac  04 10 80 e2                                      add r1, r0, #4
008131b0  03 00 51 e1                                      cmp r1, r3
008131b4  04 00 00 0a                                      beq #0x8131cc
008131b8  01 20 53 e0                                      subs r2, r3, r1
008131bc  03 10 a0 01                                      moveq r1, r3
008131c0  01 00 00 0a                                      beq #0x8131cc
008131c4  5b eb eb eb                                      bl #0x30df38
008131c8  a8 11 94 e5                                      ldr r1, [r4, #0x1a8]
008131cc  04 10 41 e2                                      sub r1, r1, #4
008131d0  a8 11 84 e5                                      str r1, [r4, #0x1a8]
008131d4  82 ff ff ea                                      b #0x812fe4
008131d8  6b b7 ff eb                                      bl #0x800f8c
008131dc  00 30 90 e5                                      ldr r3, [r0]
008131e0  0f e0 a0 e1                                      mov lr, pc
008131e4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
008131e8  00 10 a0 e1                                      mov r1, r0
008131ec  04 00 a0 e1                                      mov r0, r4
008131f0  d6 fe ff eb                                      bl #0x812d50
008131f4  00 10 a0 e1                                      mov r1, r0
008131f8  06 00 a0 e1                                      mov r0, r6
008131fc  87 79 ed eb                                      bl #0x371820
00813200  28 30 9d e5                                      ldr r3, [sp, #0x28]
00813204  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00813208  02 00 53 e1                                      cmp r3, r2
0081320c  b6 ff ff 1a                                      bne #0x8130ec
00813210  04 00 a0 e1                                      mov r0, r4
00813214  78 f8 ff eb                                      bl #0x8113fc
00813218  00 10 a0 e1                                      mov r1, r0
0081321c  06 00 a0 e1                                      mov r0, r6
00813220  7e 79 ed eb                                      bl #0x371820
00813224  28 30 9d e5                                      ldr r3, [sp, #0x28]
00813228  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0081322c  02 00 53 e1                                      cmp r3, r2
00813230  d2 ff ff 0a                                      beq #0x813180
00813234  ac ff ff ea                                      b #0x8130ec
; mapping-symbol data/literal pool
00813238  90 1b 18 00 84 29 00 00 b8 1f 00 00 a8 10 00 00  .byte 0x90, 0x1b, 0x18, 0x00, 0x84, 0x29, 0x00, 0x00, 0xb8, 0x1f, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
00813248  d4 47 00 00                                      .byte 0xd4, 0x47, 0x00, 0x00
