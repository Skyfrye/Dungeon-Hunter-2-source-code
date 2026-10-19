; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00837630, declared_size=20, range_size=20, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby13mpIsInSessionEv
; demangled: GLXPlayerMPLobby::mpIsInSession()
; decoder-mode: arm
00837630  60 00 d0 e5                                      ldrb r0, [r0, #0x60]
00837634  02 00 50 e3                                      cmp r0, #2
00837638  00 00 a0 93                                      movls r0, #0
0083763c  01 00 a0 83                                      movhi r0, #1
00837640  1e ff 2f e1                                      bx lr

; FUNCTION 0x00837644, declared_size=20, range_size=20, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby10mpIsInRoomEv
; demangled: GLXPlayerMPLobby::mpIsInRoom()
; decoder-mode: arm
00837644  60 00 d0 e5                                      ldrb r0, [r0, #0x60]
00837648  02 00 50 e3                                      cmp r0, #2
0083764c  00 00 a0 93                                      movls r0, #0
00837650  01 00 a0 83                                      movhi r0, #1
00837654  1e ff 2f e1                                      bx lr

; FUNCTION 0x00837658, declared_size=20, range_size=20, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby10mpIsInGameEv
; demangled: GLXPlayerMPLobby::mpIsInGame()
; decoder-mode: arm
00837658  60 00 d0 e5                                      ldrb r0, [r0, #0x60]
0083765c  04 00 50 e3                                      cmp r0, #4
00837660  00 00 a0 93                                      movls r0, #0
00837664  01 00 a0 83                                      movhi r0, #1
00837668  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083766c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby10mpIsMasterEv
; demangled: GLXPlayerMPLobby::mpIsMaster()
; decoder-mode: arm
0083766c  81 00 d0 e5                                      ldrb r0, [r0, #0x81]
00837670  1e ff 2f e1                                      bx lr

; FUNCTION 0x00837674, declared_size=136, range_size=136, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby22mpSendGetPlayerCounterEv
; demangled: GLXPlayerMPLobby::mpSendGetPlayerCounter()
; decoder-mode: arm
00837674  70 40 2d e9                                      push {r4, r5, r6, lr}
00837678  00 40 a0 e1                                      mov r4, r0
0083767c  70 00 9f e5                                      ldr r0, [pc, #0x70]
00837680  00 00 8f e0                                      add r0, pc, r0
00837684  3e d0 ff eb                                      bl #0x82b784
00837688  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
0083768c  01 00 53 e3                                      cmp r3, #1
00837690  0f 00 00 9a                                      bls #0x8376d4
00837694  00 30 e0 e3                                      mvn r3, #0
00837698  50 30 84 e5                                      str r3, [r4, #0x50]
0083769c  74 00 94 e5                                      ldr r0, [r4, #0x74]
008376a0  60 3e 00 eb                                      bl #0x847028
008376a4  74 50 94 e5                                      ldr r5, [r4, #0x74]
008376a8  a2 ce ff eb                                      bl #0x82b138
008376ac  50 30 02 e3                                      movw r3, #0x2050
008376b0  03 00 85 e7                                      str r0, [r5, r3]
008376b4  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
008376b8  02 30 a0 e3                                      mov r3, #2
008376bc  84 30 84 e5                                      str r3, [r4, #0x84]
008376c0  00 00 8f e0                                      add r0, pc, r0
008376c4  01 30 a0 e3                                      mov r3, #1
008376c8  80 30 c4 e5                                      strb r3, [r4, #0x80]
008376cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
008376d0  2b d0 ff ea                                      b #0x82b784
008376d4  04 30 94 e5                                      ldr r3, [r4, #4]
008376d8  32 10 a0 e3                                      mov r1, #0x32
008376dc  50 10 84 e5                                      str r1, [r4, #0x50]
008376e0  03 00 a0 e1                                      mov r0, r3
008376e4  00 30 93 e5                                      ldr r3, [r3]
008376e8  0f e0 a0 e1                                      mov lr, pc
008376ec  00 f0 93 e5                                      ldr pc, [r3]
008376f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008376f4  f8 5f 0d 00 e8 5f 0d 00                          .byte 0xf8, 0x5f, 0x0d, 0x00, 0xe8, 0x5f, 0x0d, 0x00

; FUNCTION 0x008376fc, declared_size=196, range_size=196, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby36mpSendGetLobbyForFriendWithGameParamEihiPciP23CLobbyParameterAndQuery
; demangled: GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(int, unsigned char, int, char*, int, CLobbyParameterAndQuery*)
; decoder-mode: arm
008376fc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00837700  00 40 a0 e1                                      mov r4, r0
00837704  ac 00 9f e5                                      ldr r0, [pc, #0xac]
00837708  10 d0 4d e2                                      sub sp, sp, #0x10
0083770c  03 70 a0 e1                                      mov r7, r3
00837710  00 00 8f e0                                      add r0, pc, r0
00837714  01 a0 a0 e1                                      mov sl, r1
00837718  02 80 a0 e1                                      mov r8, r2
0083771c  30 60 9d e5                                      ldr r6, [sp, #0x30]
00837720  34 50 9d e5                                      ldr r5, [sp, #0x34]
00837724  38 90 9d e5                                      ldr sb, [sp, #0x38]
00837728  15 d0 ff eb                                      bl #0x82b784
0083772c  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
00837730  01 00 53 e3                                      cmp r3, #1
00837734  16 00 00 9a                                      bls #0x837794
00837738  00 30 e0 e3                                      mvn r3, #0
0083773c  74 00 94 e5                                      ldr r0, [r4, #0x74]
00837740  50 30 84 e5                                      str r3, [r4, #0x50]
00837744  0a 10 a0 e1                                      mov r1, sl
00837748  77 30 ef e6                                      uxtb r3, r7
0083774c  08 20 a0 e1                                      mov r2, r8
00837750  04 50 8d e5                                      str r5, [sp, #4]
00837754  00 60 8d e5                                      str r6, [sp]
00837758  08 90 8d e5                                      str sb, [sp, #8]
0083775c  47 3e 00 eb                                      bl #0x847080
00837760  74 50 94 e5                                      ldr r5, [r4, #0x74]
00837764  73 ce ff eb                                      bl #0x82b138
00837768  50 30 02 e3                                      movw r3, #0x2050
0083776c  03 00 85 e7                                      str r0, [r5, r3]
00837770  44 00 9f e5                                      ldr r0, [pc, #0x44]
00837774  14 30 a0 e3                                      mov r3, #0x14
00837778  84 30 84 e5                                      str r3, [r4, #0x84]
0083777c  00 00 8f e0                                      add r0, pc, r0
00837780  01 30 a0 e3                                      mov r3, #1
00837784  80 30 c4 e5                                      strb r3, [r4, #0x80]
00837788  10 d0 8d e2                                      add sp, sp, #0x10
0083778c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00837790  fb cf ff ea                                      b #0x82b784
00837794  04 30 94 e5                                      ldr r3, [r4, #4]
00837798  32 10 a0 e3                                      mov r1, #0x32
0083779c  50 10 84 e5                                      str r1, [r4, #0x50]
008377a0  03 00 a0 e1                                      mov r0, r3
008377a4  00 30 93 e5                                      ldr r3, [r3]
008377a8  0f e0 a0 e1                                      mov lr, pc
008377ac  00 f0 93 e5                                      ldr pc, [r3]
008377b0  10 d0 8d e2                                      add sp, sp, #0x10
008377b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
008377b8  a0 5f 0d 00 2c 5f 0d 00                          .byte 0xa0, 0x5f, 0x0d, 0x00, 0x2c, 0x5f, 0x0d, 0x00

; FUNCTION 0x008377c0, declared_size=188, range_size=188, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby23mpSendGetLobbyForFriendEihiPci
; demangled: GLXPlayerMPLobby::mpSendGetLobbyForFriend(int, unsigned char, int, char*, int)
; decoder-mode: arm
008377c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008377c4  00 40 a0 e1                                      mov r4, r0
008377c8  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
008377cc  0c d0 4d e2                                      sub sp, sp, #0xc
008377d0  03 70 a0 e1                                      mov r7, r3
008377d4  00 00 8f e0                                      add r0, pc, r0
008377d8  01 a0 a0 e1                                      mov sl, r1
008377dc  02 80 a0 e1                                      mov r8, r2
008377e0  28 60 9d e5                                      ldr r6, [sp, #0x28]
008377e4  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
008377e8  e5 cf ff eb                                      bl #0x82b784
008377ec  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
008377f0  01 00 53 e3                                      cmp r3, #1
008377f4  15 00 00 9a                                      bls #0x837850
008377f8  00 30 e0 e3                                      mvn r3, #0
008377fc  74 00 94 e5                                      ldr r0, [r4, #0x74]
00837800  50 30 84 e5                                      str r3, [r4, #0x50]
00837804  0a 10 a0 e1                                      mov r1, sl
00837808  77 30 ef e6                                      uxtb r3, r7
0083780c  08 20 a0 e1                                      mov r2, r8
00837810  04 50 8d e5                                      str r5, [sp, #4]
00837814  00 60 8d e5                                      str r6, [sp]
00837818  4d 3f 00 eb                                      bl #0x847554
0083781c  74 50 94 e5                                      ldr r5, [r4, #0x74]
00837820  44 ce ff eb                                      bl #0x82b138
00837824  50 30 02 e3                                      movw r3, #0x2050
00837828  03 00 85 e7                                      str r0, [r5, r3]
0083782c  44 00 9f e5                                      ldr r0, [pc, #0x44]
00837830  0c 30 a0 e3                                      mov r3, #0xc
00837834  84 30 84 e5                                      str r3, [r4, #0x84]
00837838  00 00 8f e0                                      add r0, pc, r0
0083783c  01 30 a0 e3                                      mov r3, #1
00837840  80 30 c4 e5                                      strb r3, [r4, #0x80]
00837844  0c d0 8d e2                                      add sp, sp, #0xc
00837848  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
0083784c  cc cf ff ea                                      b #0x82b784
00837850  04 30 94 e5                                      ldr r3, [r4, #4]
00837854  32 10 a0 e3                                      mov r1, #0x32
00837858  50 10 84 e5                                      str r1, [r4, #0x50]
0083785c  03 00 a0 e1                                      mov r0, r3
00837860  00 30 93 e5                                      ldr r3, [r3]
00837864  0f e0 a0 e1                                      mov lr, pc
00837868  00 f0 93 e5                                      ldr pc, [r3]
0083786c  0c d0 8d e2                                      add sp, sp, #0xc
00837870  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00837874  24 5f 0d 00 70 5e 0d 00                          .byte 0x24, 0x5f, 0x0d, 0x00, 0x70, 0x5e, 0x0d, 0x00

; FUNCTION 0x0083787c, declared_size=524, range_size=524, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby36mpSendGetLobbyForFriendWithGameParamEihP19GLXPlayerUserFriendP23CLobbyParameterAndQuery
; demangled: GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(int, unsigned char, GLXPlayerUserFriend*, CLobbyParameterAndQuery*)
; decoder-mode: arm
0083787c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00837880  f0 41 9f e5                                      ldr r4, [pc, #0x1f0]
00837884  f0 c1 9f e5                                      ldr ip, [pc, #0x1f0]
00837888  bc d0 4d e2                                      sub sp, sp, #0xbc
0083788c  04 40 8f e0                                      add r4, pc, r4
00837890  20 c0 8d e5                                      str ip, [sp, #0x20]
00837894  0c c0 94 e7                                      ldr ip, [r4, ip]
00837898  18 00 8d e5                                      str r0, [sp, #0x18]
0083789c  dc 01 9f e5                                      ldr r0, [pc, #0x1dc]
008378a0  00 c0 9c e5                                      ldr ip, [ip]
008378a4  e0 e0 9d e5                                      ldr lr, [sp, #0xe0]
008378a8  00 00 8f e0                                      add r0, pc, r0
008378ac  24 10 8d e5                                      str r1, [sp, #0x24]
008378b0  03 a0 a0 e1                                      mov sl, r3
008378b4  14 40 8d e5                                      str r4, [sp, #0x14]
008378b8  28 20 8d e5                                      str r2, [sp, #0x28]
008378bc  b4 c0 8d e5                                      str ip, [sp, #0xb4]
008378c0  2c e0 8d e5                                      str lr, [sp, #0x2c]
008378c4  ae cf ff eb                                      bl #0x82b784
008378c8  18 10 9d e5                                      ldr r1, [sp, #0x18]
008378cc  60 30 d1 e5                                      ldrb r3, [r1, #0x60]
008378d0  01 00 53 e3                                      cmp r3, #1
008378d4  5d 00 00 9a                                      bls #0x837a50
008378d8  18 40 9d e5                                      ldr r4, [sp, #0x18]
008378dc  00 30 e0 e3                                      mvn r3, #0
008378e0  0a 00 a0 e1                                      mov r0, sl
008378e4  50 30 84 e5                                      str r3, [r4, #0x50]
008378e8  41 d0 ff eb                                      bl #0x82b9f4
008378ec  1e 00 50 e3                                      cmp r0, #0x1e
008378f0  1e 00 a0 a3                                      movge r0, #0x1e
008378f4  00 00 50 e3                                      cmp r0, #0
008378f8  00 40 a0 d3                                      movle r4, #0
008378fc  1c 00 8d e5                                      str r0, [sp, #0x1c]
00837900  04 50 a0 d1                                      movle r5, r4
00837904  3c 00 00 da                                      ble #0x8379fc
00837908  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0083790c  00 40 a0 e3                                      mov r4, #0
00837910  04 50 a0 e1                                      mov r5, r4
00837914  02 60 4c e2                                      sub r6, ip, #2
00837918  34 70 8d e2                                      add r7, sp, #0x34
0083791c  04 90 a0 e1                                      mov sb, r4
00837920  80 20 a0 e3                                      mov r2, #0x80
00837924  00 10 a0 e3                                      mov r1, #0
00837928  01 80 86 e2                                      add r8, r6, #1
0083792c  07 00 a0 e1                                      mov r0, r7
00837930  ca 5a eb eb                                      bl #0x30e460
00837934  0a 00 a0 e1                                      mov r0, sl
00837938  08 10 a0 e1                                      mov r1, r8
0083793c  3a d0 ff eb                                      bl #0x82ba2c
00837940  00 00 50 e3                                      cmp r0, #0
00837944  29 00 00 0a                                      beq #0x8379f0
00837948  08 10 a0 e1                                      mov r1, r8
0083794c  0a 00 a0 e1                                      mov r0, sl
00837950  35 d0 ff eb                                      bl #0x82ba2c
00837954  00 10 a0 e1                                      mov r1, r0
00837958  07 00 a0 e1                                      mov r0, r7
0083795c  77 ce ff eb                                      bl #0x82b340
00837960  07 00 a0 e1                                      mov r0, r7
00837964  90 cd ff eb                                      bl #0x82afac
00837968  04 30 80 e0                                      add r3, r0, r4
0083796c  00 b0 a0 e1                                      mov fp, r0
00837970  03 00 83 e2                                      add r0, r3, #3
00837974  10 30 8d e5                                      str r3, [sp, #0x10]
00837978  d4 59 eb eb                                      bl #0x30e0d0
0083797c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00837980  00 00 55 e3                                      cmp r5, #0
00837984  00 80 a0 e1                                      mov r8, r0
00837988  03 30 80 e0                                      add r3, r0, r3
0083798c  02 90 c3 e5                                      strb sb, [r3, #2]
00837990  07 00 00 0a                                      beq #0x8379b4
00837994  00 00 54 e3                                      cmp r4, #0
00837998  05 00 00 da                                      ble #0x8379b4
0083799c  00 30 a0 e3                                      mov r3, #0
008379a0  03 20 d5 e7                                      ldrb r2, [r5, r3]
008379a4  03 20 c8 e7                                      strb r2, [r8, r3]
008379a8  01 30 83 e2                                      add r3, r3, #1
008379ac  04 00 53 e1                                      cmp r3, r4
008379b0  fa ff ff 1a                                      bne #0x8379a0
008379b4  01 30 84 e2                                      add r3, r4, #1
008379b8  01 00 83 e2                                      add r0, r3, #1
008379bc  5b 24 e7 e7                                      ubfx r2, fp, #8, #8
008379c0  04 20 c8 e7                                      strb r2, [r8, r4]
008379c4  00 00 88 e0                                      add r0, r8, r0
008379c8  03 b0 c8 e7                                      strb fp, [r8, r3]
008379cc  07 10 a0 e1                                      mov r1, r7
008379d0  5a ce ff eb                                      bl #0x82b340
008379d4  00 00 55 e3                                      cmp r5, #0
008379d8  01 00 00 0a                                      beq #0x8379e4
008379dc  05 00 a0 e1                                      mov r0, r5
008379e0  32 5a eb eb                                      bl #0x30e2b0
008379e4  02 40 84 e2                                      add r4, r4, #2
008379e8  0b 40 84 e0                                      add r4, r4, fp
008379ec  08 50 a0 e1                                      mov r5, r8
008379f0  00 00 56 e3                                      cmp r6, #0
008379f4  01 60 46 e2                                      sub r6, r6, #1
008379f8  c8 ff ff aa                                      bge #0x837920
008379fc  04 40 8d e5                                      str r4, [sp, #4]
00837a00  2c 40 9d e5                                      ldr r4, [sp, #0x2c]
00837a04  18 00 9d e5                                      ldr r0, [sp, #0x18]
00837a08  24 10 9d e5                                      ldr r1, [sp, #0x24]
00837a0c  28 20 9d e5                                      ldr r2, [sp, #0x28]
00837a10  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00837a14  00 50 8d e5                                      str r5, [sp]
00837a18  08 40 8d e5                                      str r4, [sp, #8]
00837a1c  36 ff ff eb                                      bl #0x8376fc
00837a20  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
00837a24  00 00 8f e0                                      add r0, pc, r0
00837a28  55 cf ff eb                                      bl #0x82b784
00837a2c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00837a30  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00837a34  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
00837a38  0c 30 91 e7                                      ldr r3, [r1, ip]
00837a3c  00 30 93 e5                                      ldr r3, [r3]
00837a40  03 00 52 e1                                      cmp r2, r3
00837a44  0a 00 00 1a                                      bne #0x837a74
00837a48  bc d0 8d e2                                      add sp, sp, #0xbc
00837a4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00837a50  18 20 9d e5                                      ldr r2, [sp, #0x18]
00837a54  04 30 91 e5                                      ldr r3, [r1, #4]
00837a58  32 10 a0 e3                                      mov r1, #0x32
00837a5c  50 10 82 e5                                      str r1, [r2, #0x50]
00837a60  03 00 a0 e1                                      mov r0, r3
00837a64  00 30 93 e5                                      ldr r3, [r3]
00837a68  0f e0 a0 e1                                      mov lr, pc
00837a6c  00 f0 93 e5                                      ldr pc, [r3]
00837a70  ed ff ff ea                                      b #0x837a2c
00837a74  25 5a eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00837a78  04 d2 15 00 ac 40 00 00 88 5e 0d 00 84 5c 0d 00  .byte 0x04, 0xd2, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0x5e, 0x0d, 0x00, 0x84, 0x5c, 0x0d, 0x00

; FUNCTION 0x00837a88, declared_size=576, range_size=576, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby23mpSendGetLobbyForFriendEihP19GLXPlayerUserFriend
; demangled: GLXPlayerMPLobby::mpSendGetLobbyForFriend(int, unsigned char, GLXPlayerUserFriend*)
; decoder-mode: arm
00837a88  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00837a8c  24 42 9f e5                                      ldr r4, [pc, #0x224]
00837a90  24 c2 9f e5                                      ldr ip, [pc, #0x224]
00837a94  ac d0 4d e2                                      sub sp, sp, #0xac
00837a98  04 40 8f e0                                      add r4, pc, r4
00837a9c  10 c0 8d e5                                      str ip, [sp, #0x10]
00837aa0  0c c0 94 e7                                      ldr ip, [r4, ip]
00837aa4  00 90 a0 e1                                      mov sb, r0
00837aa8  10 02 9f e5                                      ldr r0, [pc, #0x210]
00837aac  00 c0 9c e5                                      ldr ip, [ip]
00837ab0  03 a0 a0 e1                                      mov sl, r3
00837ab4  00 00 8f e0                                      add r0, pc, r0
00837ab8  0c 40 8d e5                                      str r4, [sp, #0xc]
00837abc  18 10 8d e5                                      str r1, [sp, #0x18]
00837ac0  1c 20 8d e5                                      str r2, [sp, #0x1c]
00837ac4  a4 c0 8d e5                                      str ip, [sp, #0xa4]
00837ac8  2d cf ff eb                                      bl #0x82b784
00837acc  60 30 d9 e5                                      ldrb r3, [sb, #0x60]
00837ad0  01 00 53 e3                                      cmp r3, #1
00837ad4  64 00 00 9a                                      bls #0x837c6c
00837ad8  00 30 e0 e3                                      mvn r3, #0
00837adc  50 30 89 e5                                      str r3, [sb, #0x50]
00837ae0  0a 00 a0 e1                                      mov r0, sl
00837ae4  c2 cf ff eb                                      bl #0x82b9f4
00837ae8  1e 00 50 e3                                      cmp r0, #0x1e
00837aec  1e 00 a0 a3                                      movge r0, #0x1e
00837af0  00 00 50 e3                                      cmp r0, #0
00837af4  14 00 8d e5                                      str r0, [sp, #0x14]
00837af8  63 00 00 da                                      ble #0x837c8c
00837afc  00 40 a0 e3                                      mov r4, #0
00837b00  02 60 40 e2                                      sub r6, r0, #2
00837b04  04 50 a0 e1                                      mov r5, r4
00837b08  24 70 8d e2                                      add r7, sp, #0x24
00837b0c  80 20 a0 e3                                      mov r2, #0x80
00837b10  00 10 a0 e3                                      mov r1, #0
00837b14  01 80 86 e2                                      add r8, r6, #1
00837b18  07 00 a0 e1                                      mov r0, r7
00837b1c  4f 5a eb eb                                      bl #0x30e460
00837b20  0a 00 a0 e1                                      mov r0, sl
00837b24  08 10 a0 e1                                      mov r1, r8
00837b28  bf cf ff eb                                      bl #0x82ba2c
00837b2c  00 00 50 e3                                      cmp r0, #0
00837b30  2a 00 00 0a                                      beq #0x837be0
00837b34  08 10 a0 e1                                      mov r1, r8
00837b38  0a 00 a0 e1                                      mov r0, sl
00837b3c  ba cf ff eb                                      bl #0x82ba2c
00837b40  00 10 a0 e1                                      mov r1, r0
00837b44  07 00 a0 e1                                      mov r0, r7
00837b48  fc cd ff eb                                      bl #0x82b340
00837b4c  07 00 a0 e1                                      mov r0, r7
00837b50  15 cd ff eb                                      bl #0x82afac
00837b54  04 30 80 e0                                      add r3, r0, r4
00837b58  00 b0 a0 e1                                      mov fp, r0
00837b5c  03 00 83 e2                                      add r0, r3, #3
00837b60  08 30 8d e5                                      str r3, [sp, #8]
00837b64  59 59 eb eb                                      bl #0x30e0d0
00837b68  08 30 9d e5                                      ldr r3, [sp, #8]
00837b6c  00 e0 a0 e3                                      mov lr, #0
00837b70  00 00 55 e3                                      cmp r5, #0
00837b74  03 30 80 e0                                      add r3, r0, r3
00837b78  00 80 a0 e1                                      mov r8, r0
00837b7c  02 e0 c3 e5                                      strb lr, [r3, #2]
00837b80  07 00 00 0a                                      beq #0x837ba4
00837b84  00 00 54 e3                                      cmp r4, #0
00837b88  05 00 00 da                                      ble #0x837ba4
00837b8c  00 30 a0 e3                                      mov r3, #0
00837b90  03 20 d5 e7                                      ldrb r2, [r5, r3]
00837b94  03 20 c8 e7                                      strb r2, [r8, r3]
00837b98  01 30 83 e2                                      add r3, r3, #1
00837b9c  04 00 53 e1                                      cmp r3, r4
00837ba0  fa ff ff 1a                                      bne #0x837b90
00837ba4  01 30 84 e2                                      add r3, r4, #1
00837ba8  01 00 83 e2                                      add r0, r3, #1
00837bac  5b 24 e7 e7                                      ubfx r2, fp, #8, #8
00837bb0  04 20 c8 e7                                      strb r2, [r8, r4]
00837bb4  00 00 88 e0                                      add r0, r8, r0
00837bb8  03 b0 c8 e7                                      strb fp, [r8, r3]
00837bbc  07 10 a0 e1                                      mov r1, r7
00837bc0  de cd ff eb                                      bl #0x82b340
00837bc4  00 00 55 e3                                      cmp r5, #0
00837bc8  01 00 00 0a                                      beq #0x837bd4
00837bcc  05 00 a0 e1                                      mov r0, r5
00837bd0  b6 59 eb eb                                      bl #0x30e2b0
00837bd4  02 40 84 e2                                      add r4, r4, #2
00837bd8  0b 40 84 e0                                      add r4, r4, fp
00837bdc  08 50 a0 e1                                      mov r5, r8
00837be0  00 00 56 e3                                      cmp r6, #0
00837be4  01 60 46 e2                                      sub r6, r6, #1
00837be8  c7 ff ff aa                                      bge #0x837b0c
00837bec  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00837bf0  74 00 99 e5                                      ldr r0, [sb, #0x74]
00837bf4  18 10 9d e5                                      ldr r1, [sp, #0x18]
00837bf8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00837bfc  7c 30 ef e6                                      uxtb r3, ip
00837c00  04 40 8d e5                                      str r4, [sp, #4]
00837c04  00 50 8d e5                                      str r5, [sp]
00837c08  51 3e 00 eb                                      bl #0x847554
00837c0c  00 00 55 e3                                      cmp r5, #0
00837c10  01 00 00 0a                                      beq #0x837c1c
00837c14  05 00 a0 e1                                      mov r0, r5
00837c18  a4 59 eb eb                                      bl #0x30e2b0
00837c1c  74 40 99 e5                                      ldr r4, [sb, #0x74]
00837c20  44 cd ff eb                                      bl #0x82b138
00837c24  50 30 02 e3                                      movw r3, #0x2050
00837c28  03 00 84 e7                                      str r0, [r4, r3]
00837c2c  90 00 9f e5                                      ldr r0, [pc, #0x90]
00837c30  0c 30 a0 e3                                      mov r3, #0xc
00837c34  84 30 89 e5                                      str r3, [sb, #0x84]
00837c38  01 30 a0 e3                                      mov r3, #1
00837c3c  80 30 c9 e5                                      strb r3, [sb, #0x80]
00837c40  00 00 8f e0                                      add r0, pc, r0
00837c44  ce ce ff eb                                      bl #0x82b784
00837c48  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00837c4c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00837c50  01 30 92 e7                                      ldr r3, [r2, r1]
00837c54  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
00837c58  00 30 93 e5                                      ldr r3, [r3]
00837c5c  03 00 52 e1                                      cmp r2, r3
00837c60  13 00 00 1a                                      bne #0x837cb4
00837c64  ac d0 8d e2                                      add sp, sp, #0xac
00837c68  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00837c6c  04 30 99 e5                                      ldr r3, [sb, #4]
00837c70  32 10 a0 e3                                      mov r1, #0x32
00837c74  50 10 89 e5                                      str r1, [sb, #0x50]
00837c78  03 00 a0 e1                                      mov r0, r3
00837c7c  00 30 93 e5                                      ldr r3, [r3]
00837c80  0f e0 a0 e1                                      mov lr, pc
00837c84  00 f0 93 e5                                      ldr pc, [r3]
00837c88  ee ff ff ea                                      b #0x837c48
00837c8c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
00837c90  74 00 99 e5                                      ldr r0, [sb, #0x74]
00837c94  00 c0 a0 e3                                      mov ip, #0
00837c98  18 10 9d e5                                      ldr r1, [sp, #0x18]
00837c9c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00837ca0  7e 30 ef e6                                      uxtb r3, lr
00837ca4  04 c0 8d e5                                      str ip, [sp, #4]
00837ca8  00 c0 8d e5                                      str ip, [sp]
00837cac  28 3e 00 eb                                      bl #0x847554
00837cb0  d9 ff ff ea                                      b #0x837c1c
00837cb4  95 59 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00837cb8  f8 cf 15 00 ac 40 00 00 bc 5c 0d 00 68 5a 0d 00  .byte 0xf8, 0xcf, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xbc, 0x5c, 0x0d, 0x00, 0x68, 0x5a, 0x0d, 0x00

; FUNCTION 0x00837cc8, declared_size=144, range_size=144, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby34mpSendGetLobbyForNameWithGameParamEPc
; demangled: GLXPlayerMPLobby::mpSendGetLobbyForNameWithGameParam(char*)
; decoder-mode: arm
00837cc8  70 40 2d e9                                      push {r4, r5, r6, lr}
00837ccc  00 40 a0 e1                                      mov r4, r0
00837cd0  78 00 9f e5                                      ldr r0, [pc, #0x78]
00837cd4  01 50 a0 e1                                      mov r5, r1
00837cd8  00 00 8f e0                                      add r0, pc, r0
00837cdc  a8 ce ff eb                                      bl #0x82b784
00837ce0  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
00837ce4  01 00 53 e3                                      cmp r3, #1
00837ce8  10 00 00 9a                                      bls #0x837d30
00837cec  00 30 e0 e3                                      mvn r3, #0
00837cf0  50 30 84 e5                                      str r3, [r4, #0x50]
00837cf4  05 10 a0 e1                                      mov r1, r5
00837cf8  74 00 94 e5                                      ldr r0, [r4, #0x74]
00837cfc  33 3d 00 eb                                      bl #0x8471d0
00837d00  74 50 94 e5                                      ldr r5, [r4, #0x74]
00837d04  0b cd ff eb                                      bl #0x82b138
00837d08  50 30 02 e3                                      movw r3, #0x2050
00837d0c  03 00 85 e7                                      str r0, [r5, r3]
00837d10  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00837d14  12 30 a0 e3                                      mov r3, #0x12
00837d18  84 30 84 e5                                      str r3, [r4, #0x84]
00837d1c  00 00 8f e0                                      add r0, pc, r0
00837d20  01 30 a0 e3                                      mov r3, #1
00837d24  80 30 c4 e5                                      strb r3, [r4, #0x80]
00837d28  70 40 bd e8                                      pop {r4, r5, r6, lr}
00837d2c  94 ce ff ea                                      b #0x82b784
00837d30  04 30 94 e5                                      ldr r3, [r4, #4]
00837d34  32 10 a0 e3                                      mov r1, #0x32
00837d38  50 10 84 e5                                      str r1, [r4, #0x50]
00837d3c  03 00 a0 e1                                      mov r0, r3
00837d40  00 30 93 e5                                      ldr r3, [r3]
00837d44  0f e0 a0 e1                                      mov lr, pc
00837d48  00 f0 93 e5                                      ldr pc, [r3]
00837d4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00837d50  98 5a 0d 00 8c 59 0d 00                          .byte 0x98, 0x5a, 0x0d, 0x00, 0x8c, 0x59, 0x0d, 0x00

; FUNCTION 0x00837d58, declared_size=192, range_size=192, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby31mpSendGetLobbyListWithGameParamEiihP23CLobbyParameterAndQueryh
; demangled: GLXPlayerMPLobby::mpSendGetLobbyListWithGameParam(int, int, unsigned char, CLobbyParameterAndQuery*, unsigned char)
; decoder-mode: arm
00837d58  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00837d5c  00 40 a0 e1                                      mov r4, r0
00837d60  a8 00 9f e5                                      ldr r0, [pc, #0xa8]
00837d64  14 d0 4d e2                                      sub sp, sp, #0x14
00837d68  03 50 a0 e1                                      mov r5, r3
00837d6c  00 00 8f e0                                      add r0, pc, r0
00837d70  01 70 a0 e1                                      mov r7, r1
00837d74  02 60 a0 e1                                      mov r6, r2
00837d78  30 80 9d e5                                      ldr r8, [sp, #0x30]
00837d7c  34 a0 dd e5                                      ldrb sl, [sp, #0x34]
00837d80  7f ce ff eb                                      bl #0x82b784
00837d84  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
00837d88  01 00 53 e3                                      cmp r3, #1
00837d8c  16 00 00 9a                                      bls #0x837dec
00837d90  00 00 55 e3                                      cmp r5, #0
00837d94  00 30 e0 e3                                      mvn r3, #0
00837d98  74 00 94 e5                                      ldr r0, [r4, #0x74]
00837d9c  48 10 94 e5                                      ldr r1, [r4, #0x48]
00837da0  50 30 84 e5                                      str r3, [r4, #0x50]
00837da4  01 50 a0 03                                      moveq r5, #1
00837da8  c6 3f c6 e1                                      bic r3, r6, r6, asr #31
00837dac  07 20 a0 e1                                      mov r2, r7
00837db0  20 05 8d e8                                      stm sp, {r5, r8, sl}
00837db4  33 3d 00 eb                                      bl #0x847288
00837db8  74 50 94 e5                                      ldr r5, [r4, #0x74]
00837dbc  dd cc ff eb                                      bl #0x82b138
00837dc0  50 30 02 e3                                      movw r3, #0x2050
00837dc4  03 00 85 e7                                      str r0, [r5, r3]
00837dc8  44 00 9f e5                                      ldr r0, [pc, #0x44]
00837dcc  13 30 a0 e3                                      mov r3, #0x13
00837dd0  84 30 84 e5                                      str r3, [r4, #0x84]
00837dd4  00 00 8f e0                                      add r0, pc, r0
00837dd8  01 30 a0 e3                                      mov r3, #1
00837ddc  80 30 c4 e5                                      strb r3, [r4, #0x80]
00837de0  14 d0 8d e2                                      add sp, sp, #0x14
00837de4  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
00837de8  65 ce ff ea                                      b #0x82b784
00837dec  04 30 94 e5                                      ldr r3, [r4, #4]
00837df0  32 10 a0 e3                                      mov r1, #0x32
00837df4  50 10 84 e5                                      str r1, [r4, #0x50]
00837df8  03 00 a0 e1                                      mov r0, r3
00837dfc  00 30 93 e5                                      ldr r3, [r3]
00837e00  0f e0 a0 e1                                      mov lr, pc
00837e04  00 f0 93 e5                                      ldr pc, [r3]
00837e08  14 d0 8d e2                                      add sp, sp, #0x14
00837e0c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00837e10  34 5a 0d 00 d4 58 0d 00                          .byte 0x34, 0x5a, 0x0d, 0x00, 0xd4, 0x58, 0x0d, 0x00

; FUNCTION 0x00837e18, declared_size=144, range_size=144, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby13mpSendKickOutEPc
; demangled: GLXPlayerMPLobby::mpSendKickOut(char*)
; decoder-mode: arm
00837e18  70 40 2d e9                                      push {r4, r5, r6, lr}
00837e1c  00 40 a0 e1                                      mov r4, r0
00837e20  78 00 9f e5                                      ldr r0, [pc, #0x78]
00837e24  01 50 a0 e1                                      mov r5, r1
00837e28  00 00 8f e0                                      add r0, pc, r0
00837e2c  54 ce ff eb                                      bl #0x82b784
00837e30  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
00837e34  01 00 53 e3                                      cmp r3, #1
00837e38  10 00 00 9a                                      bls #0x837e80
00837e3c  00 30 e0 e3                                      mvn r3, #0
00837e40  50 30 84 e5                                      str r3, [r4, #0x50]
00837e44  05 10 a0 e1                                      mov r1, r5
00837e48  74 00 94 e5                                      ldr r0, [r4, #0x74]
00837e4c  57 3d 00 eb                                      bl #0x8473b0
00837e50  74 50 94 e5                                      ldr r5, [r4, #0x74]
00837e54  b7 cc ff eb                                      bl #0x82b138
00837e58  50 30 02 e3                                      movw r3, #0x2050
00837e5c  03 00 85 e7                                      str r0, [r5, r3]
00837e60  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00837e64  06 30 a0 e3                                      mov r3, #6
00837e68  84 30 84 e5                                      str r3, [r4, #0x84]
00837e6c  00 00 8f e0                                      add r0, pc, r0
00837e70  01 30 a0 e3                                      mov r3, #1
00837e74  80 30 c4 e5                                      strb r3, [r4, #0x80]
00837e78  70 40 bd e8                                      pop {r4, r5, r6, lr}
00837e7c  40 ce ff ea                                      b #0x82b784
00837e80  04 30 94 e5                                      ldr r3, [r4, #4]
00837e84  32 10 a0 e3                                      mov r1, #0x32
00837e88  50 10 84 e5                                      str r1, [r4, #0x50]
00837e8c  03 00 a0 e1                                      mov r0, r3
00837e90  00 30 93 e5                                      ldr r3, [r3]
00837e94  0f e0 a0 e1                                      mov lr, pc
00837e98  00 f0 93 e5                                      ldr pc, [r3]
00837e9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00837ea0  b0 59 0d 00 3c 58 0d 00                          .byte 0xb0, 0x59, 0x0d, 0x00, 0x3c, 0x58, 0x0d, 0x00

; FUNCTION 0x00837ea8, declared_size=152, range_size=152, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby28mpSendCancelAutoMatchRequestEv
; demangled: GLXPlayerMPLobby::mpSendCancelAutoMatchRequest()
; decoder-mode: arm
00837ea8  70 40 2d e9                                      push {r4, r5, r6, lr}
00837eac  00 40 a0 e1                                      mov r4, r0
00837eb0  80 00 9f e5                                      ldr r0, [pc, #0x80]
00837eb4  00 00 8f e0                                      add r0, pc, r0
00837eb8  31 ce ff eb                                      bl #0x82b784
00837ebc  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
00837ec0  01 00 53 e3                                      cmp r3, #1
00837ec4  13 00 00 9a                                      bls #0x837f18
00837ec8  00 30 e0 e3                                      mvn r3, #0
00837ecc  50 30 84 e5                                      str r3, [r4, #0x50]
00837ed0  00 30 a0 e3                                      mov r3, #0
00837ed4  78 30 c4 e5                                      strb r3, [r4, #0x78]
00837ed8  02 30 a0 e3                                      mov r3, #2
00837edc  60 30 c4 e5                                      strb r3, [r4, #0x60]
00837ee0  74 00 94 e5                                      ldr r0, [r4, #0x74]
00837ee4  50 3d 00 eb                                      bl #0x84742c
00837ee8  74 50 94 e5                                      ldr r5, [r4, #0x74]
00837eec  91 cc ff eb                                      bl #0x82b138
00837ef0  50 30 02 e3                                      movw r3, #0x2050
00837ef4  03 00 85 e7                                      str r0, [r5, r3]
00837ef8  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00837efc  11 30 a0 e3                                      mov r3, #0x11
00837f00  84 30 84 e5                                      str r3, [r4, #0x84]
00837f04  00 00 8f e0                                      add r0, pc, r0
00837f08  01 30 a0 e3                                      mov r3, #1
00837f0c  80 30 c4 e5                                      strb r3, [r4, #0x80]
00837f10  70 40 bd e8                                      pop {r4, r5, r6, lr}
00837f14  1a ce ff ea                                      b #0x82b784
00837f18  04 30 94 e5                                      ldr r3, [r4, #4]
00837f1c  32 10 a0 e3                                      mov r1, #0x32
00837f20  50 10 84 e5                                      str r1, [r4, #0x50]
00837f24  03 00 a0 e1                                      mov r0, r3
00837f28  00 30 93 e5                                      ldr r3, [r3]
00837f2c  0f e0 a0 e1                                      mov lr, pc
00837f30  00 f0 93 e5                                      ldr pc, [r3]
00837f34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00837f38  4c 59 0d 00 a4 57 0d 00                          .byte 0x4c, 0x59, 0x0d, 0x00, 0xa4, 0x57, 0x0d, 0x00

; FUNCTION 0x00837f40, declared_size=176, range_size=176, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby22mpSendAutoMatchRequestEPciS0_iss
; demangled: GLXPlayerMPLobby::mpSendAutoMatchRequest(char*, int, char*, int, short, short)
; decoder-mode: arm
00837f40  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00837f44  00 40 a0 e1                                      mov r4, r0
00837f48  98 00 9f e5                                      ldr r0, [pc, #0x98]
00837f4c  10 d0 4d e2                                      sub sp, sp, #0x10
00837f50  03 70 a0 e1                                      mov r7, r3
00837f54  00 00 8f e0                                      add r0, pc, r0
00837f58  01 a0 a0 e1                                      mov sl, r1
00837f5c  02 80 a0 e1                                      mov r8, r2
00837f60  30 60 9d e5                                      ldr r6, [sp, #0x30]
00837f64  f4 53 dd e1                                      ldrsh r5, [sp, #0x34]
00837f68  f8 93 dd e1                                      ldrsh sb, [sp, #0x38]
00837f6c  04 ce ff eb                                      bl #0x82b784
00837f70  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
00837f74  01 00 53 e3                                      cmp r3, #1
00837f78  11 00 00 9a                                      bls #0x837fc4
00837f7c  00 30 e0 e3                                      mvn r3, #0
00837f80  50 30 84 e5                                      str r3, [r4, #0x50]
00837f84  01 30 a0 e3                                      mov r3, #1
00837f88  74 00 94 e5                                      ldr r0, [r4, #0x74]
00837f8c  78 30 c4 e5                                      strb r3, [r4, #0x78]
00837f90  0a 10 a0 e1                                      mov r1, sl
00837f94  07 30 a0 e1                                      mov r3, r7
00837f98  08 20 a0 e1                                      mov r2, r8
00837f9c  00 60 8d e5                                      str r6, [sp]
00837fa0  20 02 8d e9                                      stmib sp, {r5, sb}
00837fa4  36 3d 00 eb                                      bl #0x847484
00837fa8  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00837fac  00 30 a0 e3                                      mov r3, #0
00837fb0  80 30 c4 e5                                      strb r3, [r4, #0x80]
00837fb4  00 00 8f e0                                      add r0, pc, r0
00837fb8  10 d0 8d e2                                      add sp, sp, #0x10
00837fbc  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00837fc0  ef cd ff ea                                      b #0x82b784
00837fc4  04 30 94 e5                                      ldr r3, [r4, #4]
00837fc8  32 10 a0 e3                                      mov r1, #0x32
00837fcc  50 10 84 e5                                      str r1, [r4, #0x50]
00837fd0  03 00 a0 e1                                      mov r0, r3
00837fd4  00 30 93 e5                                      ldr r3, [r3]
00837fd8  0f e0 a0 e1                                      mov lr, pc
00837fdc  00 f0 93 e5                                      ldr pc, [r3]
00837fe0  10 d0 8d e2                                      add sp, sp, #0x10
00837fe4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00837fe8  e4 58 0d 00 f4 56 0d 00                          .byte 0xe4, 0x58, 0x0d, 0x00, 0xf4, 0x56, 0x0d, 0x00

; FUNCTION 0x00837ff0, declared_size=144, range_size=144, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby21mpSendGetLobbyForNameEPc
; demangled: GLXPlayerMPLobby::mpSendGetLobbyForName(char*)
; decoder-mode: arm
00837ff0  70 40 2d e9                                      push {r4, r5, r6, lr}
00837ff4  00 40 a0 e1                                      mov r4, r0
00837ff8  78 00 9f e5                                      ldr r0, [pc, #0x78]
00837ffc  01 50 a0 e1                                      mov r5, r1
00838000  00 00 8f e0                                      add r0, pc, r0
00838004  de cd ff eb                                      bl #0x82b784
00838008  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
0083800c  01 00 53 e3                                      cmp r3, #1
00838010  10 00 00 9a                                      bls #0x838058
00838014  00 30 e0 e3                                      mvn r3, #0
00838018  50 30 84 e5                                      str r3, [r4, #0x50]
0083801c  05 10 a0 e1                                      mov r1, r5
00838020  74 00 94 e5                                      ldr r0, [r4, #0x74]
00838024  84 3d 00 eb                                      bl #0x84763c
00838028  74 50 94 e5                                      ldr r5, [r4, #0x74]
0083802c  41 cc ff eb                                      bl #0x82b138
00838030  50 30 02 e3                                      movw r3, #0x2050
00838034  03 00 85 e7                                      str r0, [r5, r3]
00838038  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0083803c  0a 30 a0 e3                                      mov r3, #0xa
00838040  84 30 84 e5                                      str r3, [r4, #0x84]
00838044  00 00 8f e0                                      add r0, pc, r0
00838048  01 30 a0 e3                                      mov r3, #1
0083804c  80 30 c4 e5                                      strb r3, [r4, #0x80]
00838050  70 40 bd e8                                      pop {r4, r5, r6, lr}
00838054  ca cd ff ea                                      b #0x82b784
00838058  04 30 94 e5                                      ldr r3, [r4, #4]
0083805c  32 10 a0 e3                                      mov r1, #0x32
00838060  50 10 84 e5                                      str r1, [r4, #0x50]
00838064  03 00 a0 e1                                      mov r0, r3
00838068  00 30 93 e5                                      ldr r3, [r3]
0083806c  0f e0 a0 e1                                      mov lr, pc
00838070  00 f0 93 e5                                      ldr pc, [r3]
00838074  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00838078  70 57 0d 00 64 56 0d 00                          .byte 0x70, 0x57, 0x0d, 0x00, 0x64, 0x56, 0x0d, 0x00

; FUNCTION 0x00838080, declared_size=144, range_size=144, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby18mpSendGetLobbyInfoEi
; demangled: GLXPlayerMPLobby::mpSendGetLobbyInfo(int)
; decoder-mode: arm
00838080  70 40 2d e9                                      push {r4, r5, r6, lr}
00838084  00 40 a0 e1                                      mov r4, r0
00838088  78 00 9f e5                                      ldr r0, [pc, #0x78]
0083808c  01 50 a0 e1                                      mov r5, r1
00838090  00 00 8f e0                                      add r0, pc, r0
00838094  ba cd ff eb                                      bl #0x82b784
00838098  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
0083809c  01 00 53 e3                                      cmp r3, #1
008380a0  10 00 00 9a                                      bls #0x8380e8
008380a4  00 30 e0 e3                                      mvn r3, #0
008380a8  50 30 84 e5                                      str r3, [r4, #0x50]
008380ac  05 10 a0 e1                                      mov r1, r5
008380b0  74 00 94 e5                                      ldr r0, [r4, #0x74]
008380b4  8e 3d 00 eb                                      bl #0x8476f4
008380b8  74 50 94 e5                                      ldr r5, [r4, #0x74]
008380bc  1d cc ff eb                                      bl #0x82b138
008380c0  50 30 02 e3                                      movw r3, #0x2050
008380c4  03 00 85 e7                                      str r0, [r5, r3]
008380c8  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
008380cc  0d 30 a0 e3                                      mov r3, #0xd
008380d0  84 30 84 e5                                      str r3, [r4, #0x84]
008380d4  00 00 8f e0                                      add r0, pc, r0
008380d8  01 30 a0 e3                                      mov r3, #1
008380dc  80 30 c4 e5                                      strb r3, [r4, #0x80]
008380e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
008380e4  a6 cd ff ea                                      b #0x82b784
008380e8  04 30 94 e5                                      ldr r3, [r4, #4]
008380ec  32 10 a0 e3                                      mov r1, #0x32
008380f0  50 10 84 e5                                      str r1, [r4, #0x50]
008380f4  03 00 a0 e1                                      mov r0, r3
008380f8  00 30 93 e5                                      ldr r3, [r3]
008380fc  0f e0 a0 e1                                      mov lr, pc
00838100  00 f0 93 e5                                      ldr pc, [r3]
00838104  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00838108  d8 57 0d 00 d4 55 0d 00                          .byte 0xd8, 0x57, 0x0d, 0x00, 0xd4, 0x55, 0x0d, 0x00

; FUNCTION 0x00838110, declared_size=152, range_size=152, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby22mpSendSetUserParameterEPci
; demangled: GLXPlayerMPLobby::mpSendSetUserParameter(char*, int)
; decoder-mode: arm
00838110  70 40 2d e9                                      push {r4, r5, r6, lr}
00838114  00 40 a0 e1                                      mov r4, r0
00838118  80 00 9f e5                                      ldr r0, [pc, #0x80]
0083811c  01 60 a0 e1                                      mov r6, r1
00838120  02 50 a0 e1                                      mov r5, r2
00838124  00 00 8f e0                                      add r0, pc, r0
00838128  95 cd ff eb                                      bl #0x82b784
0083812c  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
00838130  01 00 53 e3                                      cmp r3, #1
00838134  11 00 00 9a                                      bls #0x838180
00838138  00 30 e0 e3                                      mvn r3, #0
0083813c  50 30 84 e5                                      str r3, [r4, #0x50]
00838140  75 20 bf e6                                      sxth r2, r5
00838144  06 10 a0 e1                                      mov r1, r6
00838148  74 00 94 e5                                      ldr r0, [r4, #0x74]
0083814c  84 3d 00 eb                                      bl #0x847764
00838150  74 50 94 e5                                      ldr r5, [r4, #0x74]
00838154  f7 cb ff eb                                      bl #0x82b138
00838158  50 30 02 e3                                      movw r3, #0x2050
0083815c  03 00 85 e7                                      str r0, [r5, r3]
00838160  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00838164  07 30 a0 e3                                      mov r3, #7
00838168  84 30 84 e5                                      str r3, [r4, #0x84]
0083816c  00 00 8f e0                                      add r0, pc, r0
00838170  01 30 a0 e3                                      mov r3, #1
00838174  80 30 c4 e5                                      strb r3, [r4, #0x80]
00838178  70 40 bd e8                                      pop {r4, r5, r6, lr}
0083817c  80 cd ff ea                                      b #0x82b784
00838180  04 30 94 e5                                      ldr r3, [r4, #4]
00838184  32 10 a0 e3                                      mov r1, #0x32
00838188  50 10 84 e5                                      str r1, [r4, #0x50]
0083818c  03 00 a0 e1                                      mov r0, r3
00838190  00 30 93 e5                                      ldr r3, [r3]
00838194  0f e0 a0 e1                                      mov lr, pc
00838198  00 f0 93 e5                                      ldr pc, [r3]
0083819c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008381a0  74 57 0d 00 3c 55 0d 00                          .byte 0x74, 0x57, 0x0d, 0x00, 0x3c, 0x55, 0x0d, 0x00

; FUNCTION 0x008381a8, declared_size=160, range_size=160, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby22mpSendSetGameParameterEPciP23CLobbyParameterAndQuery
; demangled: GLXPlayerMPLobby::mpSendSetGameParameter(char*, int, CLobbyParameterAndQuery*)
; decoder-mode: arm
008381a8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008381ac  00 40 a0 e1                                      mov r4, r0
008381b0  88 00 9f e5                                      ldr r0, [pc, #0x88]
008381b4  03 50 a0 e1                                      mov r5, r3
008381b8  01 70 a0 e1                                      mov r7, r1
008381bc  00 00 8f e0                                      add r0, pc, r0
008381c0  02 60 a0 e1                                      mov r6, r2
008381c4  6e cd ff eb                                      bl #0x82b784
008381c8  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
008381cc  01 00 53 e3                                      cmp r3, #1
008381d0  12 00 00 9a                                      bls #0x838220
008381d4  00 30 e0 e3                                      mvn r3, #0
008381d8  50 30 84 e5                                      str r3, [r4, #0x50]
008381dc  07 10 a0 e1                                      mov r1, r7
008381e0  05 30 a0 e1                                      mov r3, r5
008381e4  76 20 bf e6                                      sxth r2, r6
008381e8  74 00 94 e5                                      ldr r0, [r4, #0x74]
008381ec  7a 3d 00 eb                                      bl #0x8477dc
008381f0  74 50 94 e5                                      ldr r5, [r4, #0x74]
008381f4  cf cb ff eb                                      bl #0x82b138
008381f8  50 30 02 e3                                      movw r3, #0x2050
008381fc  03 00 85 e7                                      str r0, [r5, r3]
00838200  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00838204  08 30 a0 e3                                      mov r3, #8
00838208  84 30 84 e5                                      str r3, [r4, #0x84]
0083820c  00 00 8f e0                                      add r0, pc, r0
00838210  01 30 a0 e3                                      mov r3, #1
00838214  80 30 c4 e5                                      strb r3, [r4, #0x80]
00838218  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0083821c  58 cd ff ea                                      b #0x82b784
00838220  04 30 94 e5                                      ldr r3, [r4, #4]
00838224  32 10 a0 e3                                      mov r1, #0x32
00838228  50 10 84 e5                                      str r1, [r4, #0x50]
0083822c  03 00 a0 e1                                      mov r0, r3
00838230  00 30 93 e5                                      ldr r3, [r3]
00838234  0f e0 a0 e1                                      mov lr, pc
00838238  00 f0 93 e5                                      ldr pc, [r3]
0083823c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00838240  0c 57 0d 00 9c 54 0d 00                          .byte 0x0c, 0x57, 0x0d, 0x00, 0x9c, 0x54, 0x0d, 0x00

; FUNCTION 0x00838248, declared_size=128, range_size=128, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby17mpSendRejoinLobbyEi
; demangled: GLXPlayerMPLobby::mpSendRejoinLobby(int)
; decoder-mode: arm
00838248  70 40 2d e9                                      push {r4, r5, r6, lr}
0083824c  00 40 a0 e1                                      mov r4, r0
00838250  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00838254  01 50 a0 e1                                      mov r5, r1
00838258  00 00 8f e0                                      add r0, pc, r0
0083825c  48 cd ff eb                                      bl #0x82b784
00838260  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
00838264  01 00 53 e3                                      cmp r3, #1
00838268  0d 00 00 9a                                      bls #0x8382a4
0083826c  00 30 e0 e3                                      mvn r3, #0
00838270  50 30 84 e5                                      str r3, [r4, #0x50]
00838274  05 10 a0 e1                                      mov r1, r5
00838278  74 00 94 e5                                      ldr r0, [r4, #0x74]
0083827c  8a 3d 00 eb                                      bl #0x8478ac
00838280  74 50 94 e5                                      ldr r5, [r4, #0x74]
00838284  ab cb ff eb                                      bl #0x82b138
00838288  50 30 02 e3                                      movw r3, #0x2050
0083828c  03 00 85 e7                                      str r0, [r5, r3]
00838290  0f 30 a0 e3                                      mov r3, #0xf
00838294  84 30 84 e5                                      str r3, [r4, #0x84]
00838298  01 30 a0 e3                                      mov r3, #1
0083829c  80 30 c4 e5                                      strb r3, [r4, #0x80]
008382a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
008382a4  04 30 94 e5                                      ldr r3, [r4, #4]
008382a8  32 10 a0 e3                                      mov r1, #0x32
008382ac  50 10 84 e5                                      str r1, [r4, #0x50]
008382b0  03 00 a0 e1                                      mov r0, r3
008382b4  00 30 93 e5                                      ldr r3, [r3]
008382b8  0f e0 a0 e1                                      mov lr, pc
008382bc  00 f0 93 e5                                      ldr pc, [r3]
008382c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008382c4  a0 56 0d 00                                      .byte 0xa0, 0x56, 0x0d, 0x00

; FUNCTION 0x008382c8, declared_size=144, range_size=144, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby21mpSendSetPlayerStatusEh
; demangled: GLXPlayerMPLobby::mpSendSetPlayerStatus(unsigned char)
; decoder-mode: arm
008382c8  70 40 2d e9                                      push {r4, r5, r6, lr}
008382cc  00 40 a0 e1                                      mov r4, r0
008382d0  78 00 9f e5                                      ldr r0, [pc, #0x78]
008382d4  01 50 a0 e1                                      mov r5, r1
008382d8  00 00 8f e0                                      add r0, pc, r0
008382dc  28 cd ff eb                                      bl #0x82b784
008382e0  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
008382e4  01 00 53 e3                                      cmp r3, #1
008382e8  10 00 00 9a                                      bls #0x838330
008382ec  00 30 e0 e3                                      mvn r3, #0
008382f0  50 30 84 e5                                      str r3, [r4, #0x50]
008382f4  05 10 a0 e1                                      mov r1, r5
008382f8  74 00 94 e5                                      ldr r0, [r4, #0x74]
008382fc  86 3d 00 eb                                      bl #0x84791c
00838300  74 50 94 e5                                      ldr r5, [r4, #0x74]
00838304  8b cb ff eb                                      bl #0x82b138
00838308  50 30 02 e3                                      movw r3, #0x2050
0083830c  03 00 85 e7                                      str r0, [r5, r3]
00838310  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00838314  04 30 a0 e3                                      mov r3, #4
00838318  84 30 84 e5                                      str r3, [r4, #0x84]
0083831c  00 00 8f e0                                      add r0, pc, r0
00838320  01 30 a0 e3                                      mov r3, #1
00838324  80 30 c4 e5                                      strb r3, [r4, #0x80]
00838328  70 40 bd e8                                      pop {r4, r5, r6, lr}
0083832c  14 cd ff ea                                      b #0x82b784
00838330  04 30 94 e5                                      ldr r3, [r4, #4]
00838334  32 10 a0 e3                                      mov r1, #0x32
00838338  50 10 84 e5                                      str r1, [r4, #0x50]
0083833c  03 00 a0 e1                                      mov r0, r3
00838340  00 30 93 e5                                      ldr r3, [r3]
00838344  0f e0 a0 e1                                      mov lr, pc
00838348  00 f0 93 e5                                      ldr pc, [r3]
0083834c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00838350  48 56 0d 00 8c 53 0d 00                          .byte 0x48, 0x56, 0x0d, 0x00, 0x8c, 0x53, 0x0d, 0x00

; FUNCTION 0x00838358, declared_size=136, range_size=136, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby21mpSendLaunchLobbyGameEv
; demangled: GLXPlayerMPLobby::mpSendLaunchLobbyGame()
; decoder-mode: arm
00838358  70 40 2d e9                                      push {r4, r5, r6, lr}
0083835c  00 40 a0 e1                                      mov r4, r0
00838360  70 00 9f e5                                      ldr r0, [pc, #0x70]
00838364  00 00 8f e0                                      add r0, pc, r0
00838368  05 cd ff eb                                      bl #0x82b784
0083836c  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
00838370  01 00 53 e3                                      cmp r3, #1
00838374  0f 00 00 9a                                      bls #0x8383b8
00838378  00 30 e0 e3                                      mvn r3, #0
0083837c  50 30 84 e5                                      str r3, [r4, #0x50]
00838380  74 00 94 e5                                      ldr r0, [r4, #0x74]
00838384  80 3d 00 eb                                      bl #0x84798c
00838388  74 50 94 e5                                      ldr r5, [r4, #0x74]
0083838c  69 cb ff eb                                      bl #0x82b138
00838390  50 30 02 e3                                      movw r3, #0x2050
00838394  03 00 85 e7                                      str r0, [r5, r3]
00838398  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0083839c  09 30 a0 e3                                      mov r3, #9
008383a0  84 30 84 e5                                      str r3, [r4, #0x84]
008383a4  00 00 8f e0                                      add r0, pc, r0
008383a8  01 30 a0 e3                                      mov r3, #1
008383ac  80 30 c4 e5                                      strb r3, [r4, #0x80]
008383b0  70 40 bd e8                                      pop {r4, r5, r6, lr}
008383b4  f2 cc ff ea                                      b #0x82b784
008383b8  04 30 94 e5                                      ldr r3, [r4, #4]
008383bc  32 10 a0 e3                                      mov r1, #0x32
008383c0  50 10 84 e5                                      str r1, [r4, #0x50]
008383c4  03 00 a0 e1                                      mov r0, r3
008383c8  00 30 93 e5                                      ldr r3, [r3]
008383cc  0f e0 a0 e1                                      mov lr, pc
008383d0  00 f0 93 e5                                      ldr pc, [r3]
008383d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008383d8  ec 55 0d 00 04 53 0d 00                          .byte 0xec, 0x55, 0x0d, 0x00, 0x04, 0x53, 0x0d, 0x00

; FUNCTION 0x008383e0, declared_size=136, range_size=136, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby16mpSendLeaveLobbyEv
; demangled: GLXPlayerMPLobby::mpSendLeaveLobby()
; decoder-mode: arm
008383e0  70 40 2d e9                                      push {r4, r5, r6, lr}
008383e4  00 40 a0 e1                                      mov r4, r0
008383e8  70 00 9f e5                                      ldr r0, [pc, #0x70]
008383ec  00 00 8f e0                                      add r0, pc, r0
008383f0  e3 cc ff eb                                      bl #0x82b784
008383f4  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
008383f8  01 00 53 e3                                      cmp r3, #1
008383fc  0f 00 00 9a                                      bls #0x838440
00838400  00 30 e0 e3                                      mvn r3, #0
00838404  50 30 84 e5                                      str r3, [r4, #0x50]
00838408  74 00 94 e5                                      ldr r0, [r4, #0x74]
0083840c  74 3d 00 eb                                      bl #0x8479e4
00838410  74 50 94 e5                                      ldr r5, [r4, #0x74]
00838414  47 cb ff eb                                      bl #0x82b138
00838418  50 30 02 e3                                      movw r3, #0x2050
0083841c  03 00 85 e7                                      str r0, [r5, r3]
00838420  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00838424  03 30 a0 e3                                      mov r3, #3
00838428  84 30 84 e5                                      str r3, [r4, #0x84]
0083842c  00 00 8f e0                                      add r0, pc, r0
00838430  01 30 a0 e3                                      mov r3, #1
00838434  80 30 c4 e5                                      strb r3, [r4, #0x80]
00838438  70 40 bd e8                                      pop {r4, r5, r6, lr}
0083843c  d0 cc ff ea                                      b #0x82b784
00838440  04 30 94 e5                                      ldr r3, [r4, #4]
00838444  32 10 a0 e3                                      mov r1, #0x32
00838448  50 10 84 e5                                      str r1, [r4, #0x50]
0083844c  03 00 a0 e1                                      mov r0, r3
00838450  00 30 93 e5                                      ldr r3, [r3]
00838454  0f e0 a0 e1                                      mov lr, pc
00838458  00 f0 93 e5                                      ldr pc, [r3]
0083845c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00838460  94 55 0d 00 7c 52 0d 00                          .byte 0x94, 0x55, 0x0d, 0x00, 0x7c, 0x52, 0x0d, 0x00

; FUNCTION 0x00838468, declared_size=192, range_size=192, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby18mpSendGetLobbyListEiihP23CLobbyParameterAndQueryh
; demangled: GLXPlayerMPLobby::mpSendGetLobbyList(int, int, unsigned char, CLobbyParameterAndQuery*, unsigned char)
; decoder-mode: arm
00838468  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0083846c  00 40 a0 e1                                      mov r4, r0
00838470  a8 00 9f e5                                      ldr r0, [pc, #0xa8]
00838474  14 d0 4d e2                                      sub sp, sp, #0x14
00838478  03 50 a0 e1                                      mov r5, r3
0083847c  00 00 8f e0                                      add r0, pc, r0
00838480  01 70 a0 e1                                      mov r7, r1
00838484  02 60 a0 e1                                      mov r6, r2
00838488  30 80 9d e5                                      ldr r8, [sp, #0x30]
0083848c  34 a0 dd e5                                      ldrb sl, [sp, #0x34]
00838490  bb cc ff eb                                      bl #0x82b784
00838494  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
00838498  01 00 53 e3                                      cmp r3, #1
0083849c  16 00 00 9a                                      bls #0x8384fc
008384a0  00 00 55 e3                                      cmp r5, #0
008384a4  00 30 e0 e3                                      mvn r3, #0
008384a8  74 00 94 e5                                      ldr r0, [r4, #0x74]
008384ac  48 10 94 e5                                      ldr r1, [r4, #0x48]
008384b0  50 30 84 e5                                      str r3, [r4, #0x50]
008384b4  01 50 a0 03                                      moveq r5, #1
008384b8  c6 3f c6 e1                                      bic r3, r6, r6, asr #31
008384bc  07 20 a0 e1                                      mov r2, r7
008384c0  20 05 8d e8                                      stm sp, {r5, r8, sl}
008384c4  5c 3d 00 eb                                      bl #0x847a3c
008384c8  74 50 94 e5                                      ldr r5, [r4, #0x74]
008384cc  19 cb ff eb                                      bl #0x82b138
008384d0  50 30 02 e3                                      movw r3, #0x2050
008384d4  03 00 85 e7                                      str r0, [r5, r3]
008384d8  44 00 9f e5                                      ldr r0, [pc, #0x44]
008384dc  0b 30 a0 e3                                      mov r3, #0xb
008384e0  84 30 84 e5                                      str r3, [r4, #0x84]
008384e4  00 00 8f e0                                      add r0, pc, r0
008384e8  01 30 a0 e3                                      mov r3, #1
008384ec  80 30 c4 e5                                      strb r3, [r4, #0x80]
008384f0  14 d0 8d e2                                      add sp, sp, #0x14
008384f4  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
008384f8  a1 cc ff ea                                      b #0x82b784
008384fc  04 30 94 e5                                      ldr r3, [r4, #4]
00838500  32 10 a0 e3                                      mov r1, #0x32
00838504  50 10 84 e5                                      str r1, [r4, #0x50]
00838508  03 00 a0 e1                                      mov r0, r3
0083850c  00 30 93 e5                                      ldr r3, [r3]
00838510  0f e0 a0 e1                                      mov lr, pc
00838514  00 f0 93 e5                                      ldr pc, [r3]
00838518  14 d0 8d e2                                      add sp, sp, #0x14
0083851c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00838520  2c 55 0d 00 c4 51 0d 00                          .byte 0x2c, 0x55, 0x0d, 0x00, 0xc4, 0x51, 0x0d, 0x00

; FUNCTION 0x00838528, declared_size=456, range_size=456, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby25mpSendJoinPredefinedLobbyEPciS0_iiRSt3mapIiSsSt4lessIiESaISt4pairIKiSsEEE
; demangled: GLXPlayerMPLobby::mpSendJoinPredefinedLobby(char*, int, char*, int, int, std::map<int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<int>, std::allocator<std::pair<int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >&)
; decoder-mode: arm
00838528  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083852c  00 80 a0 e1                                      mov r8, r0
00838530  1c d0 4d e2                                      sub sp, sp, #0x1c
00838534  ac 01 9f e5                                      ldr r0, [pc, #0x1ac]
00838538  44 c0 9d e5                                      ldr ip, [sp, #0x44]
0083853c  03 b0 a0 e1                                      mov fp, r3
00838540  40 30 9d e5                                      ldr r3, [sp, #0x40]
00838544  00 00 8f e0                                      add r0, pc, r0
00838548  01 a0 a0 e1                                      mov sl, r1
0083854c  10 30 8d e5                                      str r3, [sp, #0x10]
00838550  02 90 a0 e1                                      mov sb, r2
00838554  14 c0 8d e5                                      str ip, [sp, #0x14]
00838558  48 70 9d e5                                      ldr r7, [sp, #0x48]
0083855c  88 cc ff eb                                      bl #0x82b784
00838560  60 30 d8 e5                                      ldrb r3, [r8, #0x60]
00838564  01 00 53 e3                                      cmp r3, #1
00838568  55 00 00 9a                                      bls #0x8386c4
0083856c  40 00 a0 e3                                      mov r0, #0x40
00838570  c5 58 eb eb                                      bl #0x30e88c
00838574  00 60 a0 e1                                      mov r6, r0
00838578  2f fa ff eb                                      bl #0x836e3c
0083857c  40 00 a0 e3                                      mov r0, #0x40
00838580  c1 58 eb eb                                      bl #0x30e88c
00838584  00 50 a0 e1                                      mov r5, r0
00838588  2b fa ff eb                                      bl #0x836e3c
0083858c  08 40 97 e5                                      ldr r4, [r7, #8]
00838590  04 00 57 e1                                      cmp r7, r4
00838594  17 00 00 0a                                      beq #0x8385f8
00838598  05 00 a0 e1                                      mov r0, r5
0083859c  10 10 94 e5                                      ldr r1, [r4, #0x10]
008385a0  02 20 a0 e3                                      mov r2, #2
008385a4  28 30 94 e5                                      ldr r3, [r4, #0x28]
008385a8  00 c0 95 e5                                      ldr ip, [r5]
008385ac  0f e0 a0 e1                                      mov lr, pc
008385b0  0c f0 9c e5                                      ldr pc, [ip, #0xc]
008385b4  28 20 94 e5                                      ldr r2, [r4, #0x28]
008385b8  00 30 96 e5                                      ldr r3, [r6]
008385bc  06 00 a0 e1                                      mov r0, r6
008385c0  10 10 94 e5                                      ldr r1, [r4, #0x10]
008385c4  0f e0 a0 e1                                      mov lr, pc
008385c8  08 f0 93 e5                                      ldr pc, [r3, #8]
008385cc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
008385d0  00 00 52 e3                                      cmp r2, #0
008385d4  01 00 00 1a                                      bne #0x8385e0
008385d8  2c 00 00 ea                                      b #0x838690
008385dc  03 20 a0 e1                                      mov r2, r3
008385e0  08 30 92 e5                                      ldr r3, [r2, #8]
008385e4  00 00 53 e3                                      cmp r3, #0
008385e8  fb ff ff 1a                                      bne #0x8385dc
008385ec  02 40 a0 e1                                      mov r4, r2
008385f0  04 00 57 e1                                      cmp r7, r4
008385f4  e7 ff ff 1a                                      bne #0x838598
008385f8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
008385fc  74 00 98 e5                                      ldr r0, [r8, #0x74]
00838600  0a 10 a0 e1                                      mov r1, sl
00838604  00 c0 8d e5                                      str ip, [sp]
00838608  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0083860c  09 20 a0 e1                                      mov r2, sb
00838610  0b 30 a0 e1                                      mov r3, fp
00838614  04 c0 8d e5                                      str ip, [sp, #4]
00838618  08 50 8d e5                                      str r5, [sp, #8]
0083861c  0c 60 8d e5                                      str r6, [sp, #0xc]
00838620  4f 3d 00 eb                                      bl #0x847b64
00838624  00 00 56 e3                                      cmp r6, #0
00838628  03 00 00 0a                                      beq #0x83863c
0083862c  06 00 a0 e1                                      mov r0, r6
00838630  00 30 96 e5                                      ldr r3, [r6]
00838634  0f e0 a0 e1                                      mov lr, pc
00838638  04 f0 93 e5                                      ldr pc, [r3, #4]
0083863c  00 00 55 e3                                      cmp r5, #0
00838640  03 00 00 0a                                      beq #0x838654
00838644  05 00 a0 e1                                      mov r0, r5
00838648  00 30 95 e5                                      ldr r3, [r5]
0083864c  0f e0 a0 e1                                      mov lr, pc
00838650  04 f0 93 e5                                      ldr pc, [r3, #4]
00838654  00 30 e0 e3                                      mvn r3, #0
00838658  50 30 88 e5                                      str r3, [r8, #0x50]
0083865c  74 40 98 e5                                      ldr r4, [r8, #0x74]
00838660  b4 ca ff eb                                      bl #0x82b138
00838664  50 30 02 e3                                      movw r3, #0x2050
00838668  03 00 84 e7                                      str r0, [r4, r3]
0083866c  78 00 9f e5                                      ldr r0, [pc, #0x78]
00838670  0e 30 a0 e3                                      mov r3, #0xe
00838674  84 30 88 e5                                      str r3, [r8, #0x84]
00838678  00 00 8f e0                                      add r0, pc, r0
0083867c  01 30 a0 e3                                      mov r3, #1
00838680  80 30 c8 e5                                      strb r3, [r8, #0x80]
00838684  1c d0 8d e2                                      add sp, sp, #0x1c
00838688  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083868c  3c cc ff ea                                      b #0x82b784
00838690  04 30 94 e5                                      ldr r3, [r4, #4]
00838694  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00838698  01 00 54 e1                                      cmp r4, r1
0083869c  05 00 00 1a                                      bne #0x8386b8
008386a0  03 40 a0 e1                                      mov r4, r3
008386a4  04 30 93 e5                                      ldr r3, [r3, #4]
008386a8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008386ac  04 00 52 e1                                      cmp r2, r4
008386b0  fa ff ff 0a                                      beq #0x8386a0
008386b4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
008386b8  02 00 53 e1                                      cmp r3, r2
008386bc  03 40 a0 11                                      movne r4, r3
008386c0  b2 ff ff ea                                      b #0x838590
008386c4  04 30 98 e5                                      ldr r3, [r8, #4]
008386c8  32 10 a0 e3                                      mov r1, #0x32
008386cc  50 10 88 e5                                      str r1, [r8, #0x50]
008386d0  03 00 a0 e1                                      mov r0, r3
008386d4  00 30 93 e5                                      ldr r3, [r3]
008386d8  0f e0 a0 e1                                      mov lr, pc
008386dc  00 f0 93 e5                                      ldr pc, [r3]
008386e0  1c d0 8d e2                                      add sp, sp, #0x1c
008386e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
008386e8  94 54 0d 00 30 50 0d 00                          .byte 0x94, 0x54, 0x0d, 0x00, 0x30, 0x50, 0x0d, 0x00

; FUNCTION 0x008386f0, declared_size=180, range_size=180, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby15mpSendJoinLobbyEihPci
; demangled: GLXPlayerMPLobby::mpSendJoinLobby(int, unsigned char, char*, int)
; decoder-mode: arm
008386f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008386f4  00 40 a0 e1                                      mov r4, r0
008386f8  9c 00 9f e5                                      ldr r0, [pc, #0x9c]
008386fc  08 d0 4d e2                                      sub sp, sp, #8
00838700  03 60 a0 e1                                      mov r6, r3
00838704  00 00 8f e0                                      add r0, pc, r0
00838708  01 80 a0 e1                                      mov r8, r1
0083870c  02 70 a0 e1                                      mov r7, r2
00838710  20 50 9d e5                                      ldr r5, [sp, #0x20]
00838714  1a cc ff eb                                      bl #0x82b784
00838718  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
0083871c  01 00 53 e3                                      cmp r3, #1
00838720  14 00 00 9a                                      bls #0x838778
00838724  74 00 94 e5                                      ldr r0, [r4, #0x74]
00838728  08 10 a0 e1                                      mov r1, r8
0083872c  07 20 a0 e1                                      mov r2, r7
00838730  06 30 a0 e1                                      mov r3, r6
00838734  00 50 8d e5                                      str r5, [sp]
00838738  6a 3d 00 eb                                      bl #0x847ce8
0083873c  00 30 e0 e3                                      mvn r3, #0
00838740  50 30 84 e5                                      str r3, [r4, #0x50]
00838744  74 50 94 e5                                      ldr r5, [r4, #0x74]
00838748  7a ca ff eb                                      bl #0x82b138
0083874c  50 30 02 e3                                      movw r3, #0x2050
00838750  03 00 85 e7                                      str r0, [r5, r3]
00838754  44 00 9f e5                                      ldr r0, [pc, #0x44]
00838758  0e 30 a0 e3                                      mov r3, #0xe
0083875c  84 30 84 e5                                      str r3, [r4, #0x84]
00838760  00 00 8f e0                                      add r0, pc, r0
00838764  01 30 a0 e3                                      mov r3, #1
00838768  80 30 c4 e5                                      strb r3, [r4, #0x80]
0083876c  08 d0 8d e2                                      add sp, sp, #8
00838770  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00838774  02 cc ff ea                                      b #0x82b784
00838778  04 30 94 e5                                      ldr r3, [r4, #4]
0083877c  32 10 a0 e3                                      mov r1, #0x32
00838780  50 10 84 e5                                      str r1, [r4, #0x50]
00838784  03 00 a0 e1                                      mov r0, r3
00838788  00 30 93 e5                                      ldr r3, [r3]
0083878c  0f e0 a0 e1                                      mov lr, pc
00838790  00 f0 93 e5                                      ldr pc, [r3]
00838794  08 d0 8d e2                                      add sp, sp, #8
00838798  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0083879c  04 53 0d 00 48 4f 0d 00                          .byte 0x04, 0x53, 0x0d, 0x00, 0x48, 0x4f, 0x0d, 0x00

; FUNCTION 0x008387a4, declared_size=236, range_size=236, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby17mpSendCreateLobbyEPchhiS0_iS0_iP23CLobbyParameterAndQuery
; demangled: GLXPlayerMPLobby::mpSendCreateLobby(char*, unsigned char, unsigned char, int, char*, int, char*, int, CLobbyParameterAndQuery*)
; decoder-mode: arm
008387a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008387a8  00 40 a0 e1                                      mov r4, r0
008387ac  2c d0 4d e2                                      sub sp, sp, #0x2c
008387b0  d0 00 9f e5                                      ldr r0, [pc, #0xd0]
008387b4  64 c0 9d e5                                      ldr ip, [sp, #0x64]
008387b8  03 50 a0 e1                                      mov r5, r3
008387bc  60 30 9d e5                                      ldr r3, [sp, #0x60]
008387c0  00 00 8f e0                                      add r0, pc, r0
008387c4  01 70 a0 e1                                      mov r7, r1
008387c8  20 30 8d e5                                      str r3, [sp, #0x20]
008387cc  02 60 a0 e1                                      mov r6, r2
008387d0  50 80 9d e5                                      ldr r8, [sp, #0x50]
008387d4  54 a0 9d e5                                      ldr sl, [sp, #0x54]
008387d8  58 90 9d e5                                      ldr sb, [sp, #0x58]
008387dc  5c b0 9d e5                                      ldr fp, [sp, #0x5c]
008387e0  24 c0 8d e5                                      str ip, [sp, #0x24]
008387e4  e6 cb ff eb                                      bl #0x82b784
008387e8  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
008387ec  01 00 53 e3                                      cmp r3, #1
008387f0  1b 00 00 9a                                      bls #0x838864
008387f4  00 30 e0 e3                                      mvn r3, #0
008387f8  50 30 84 e5                                      str r3, [r4, #0x50]
008387fc  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00838800  74 00 94 e5                                      ldr r0, [r4, #0x74]
00838804  48 10 94 e5                                      ldr r1, [r4, #0x48]
00838808  14 c0 8d e5                                      str ip, [sp, #0x14]
0083880c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00838810  06 30 a0 e1                                      mov r3, r6
00838814  07 20 a0 e1                                      mov r2, r7
00838818  00 50 8d e5                                      str r5, [sp]
0083881c  18 c0 8d e5                                      str ip, [sp, #0x18]
00838820  00 05 8d e9                                      stmib sp, {r8, sl}
00838824  0c 90 8d e5                                      str sb, [sp, #0xc]
00838828  10 b0 8d e5                                      str fp, [sp, #0x10]
0083882c  eb 3d 00 eb                                      bl #0x847fe0
00838830  74 50 94 e5                                      ldr r5, [r4, #0x74]
00838834  3f ca ff eb                                      bl #0x82b138
00838838  50 30 02 e3                                      movw r3, #0x2050
0083883c  03 00 85 e7                                      str r0, [r5, r3]
00838840  44 00 9f e5                                      ldr r0, [pc, #0x44]
00838844  05 30 a0 e3                                      mov r3, #5
00838848  84 30 84 e5                                      str r3, [r4, #0x84]
0083884c  00 00 8f e0                                      add r0, pc, r0
00838850  01 30 a0 e3                                      mov r3, #1
00838854  80 30 c4 e5                                      strb r3, [r4, #0x80]
00838858  2c d0 8d e2                                      add sp, sp, #0x2c
0083885c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00838860  c7 cb ff ea                                      b #0x82b784
00838864  04 30 94 e5                                      ldr r3, [r4, #4]
00838868  32 10 a0 e3                                      mov r1, #0x32
0083886c  50 10 84 e5                                      str r1, [r4, #0x50]
00838870  03 00 a0 e1                                      mov r0, r3
00838874  00 30 93 e5                                      ldr r3, [r3]
00838878  0f e0 a0 e1                                      mov lr, pc
0083887c  00 f0 93 e5                                      ldr pc, [r3]
00838880  2c d0 8d e2                                      add sp, sp, #0x2c
00838884  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00838888  70 52 0d 00 5c 4e 0d 00                          .byte 0x70, 0x52, 0x0d, 0x00, 0x5c, 0x4e, 0x0d, 0x00

; FUNCTION 0x00838890, declared_size=152, range_size=152, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby30mpSendLobbyLoginWithGameCenterElPcihhS0_S0_
; demangled: GLXPlayerMPLobby::mpSendLobbyLoginWithGameCenter(long, char*, int, unsigned char, unsigned char, char*, char*)
; decoder-mode: arm
00838890  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00838894  00 40 a0 e1                                      mov r4, r0
00838898  80 00 9f e5                                      ldr r0, [pc, #0x80]
0083889c  14 d0 4d e2                                      sub sp, sp, #0x14
008388a0  3c 50 dd e5                                      ldrb r5, [sp, #0x3c]
008388a4  40 90 9d e5                                      ldr sb, [sp, #0x40]
008388a8  44 b0 9d e5                                      ldr fp, [sp, #0x44]
008388ac  38 60 dd e5                                      ldrb r6, [sp, #0x38]
008388b0  00 00 8f e0                                      add r0, pc, r0
008388b4  03 70 a0 e1                                      mov r7, r3
008388b8  01 a0 a0 e1                                      mov sl, r1
008388bc  02 80 a0 e1                                      mov r8, r2
008388c0  af cb ff eb                                      bl #0x82b784
008388c4  00 30 e0 e3                                      mvn r3, #0
008388c8  74 00 94 e5                                      ldr r0, [r4, #0x74]
008388cc  50 30 84 e5                                      str r3, [r4, #0x50]
008388d0  08 20 a0 e1                                      mov r2, r8
008388d4  77 30 bf e6                                      sxth r3, r7
008388d8  0a 10 a0 e1                                      mov r1, sl
008388dc  04 50 8d e5                                      str r5, [sp, #4]
008388e0  00 60 8d e5                                      str r6, [sp]
008388e4  08 90 8d e5                                      str sb, [sp, #8]
008388e8  0c b0 8d e5                                      str fp, [sp, #0xc]
008388ec  13 3e 00 eb                                      bl #0x848140
008388f0  74 50 94 e5                                      ldr r5, [r4, #0x74]
008388f4  0f ca ff eb                                      bl #0x82b138
008388f8  50 20 02 e3                                      movw r2, #0x2050
008388fc  02 00 85 e7                                      str r0, [r5, r2]
00838900  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
00838904  01 30 a0 e3                                      mov r3, #1
00838908  84 30 84 e5                                      str r3, [r4, #0x84]
0083890c  00 00 8f e0                                      add r0, pc, r0
00838910  80 30 c4 e5                                      strb r3, [r4, #0x80]
00838914  14 d0 8d e2                                      add sp, sp, #0x14
00838918  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083891c  98 cb ff ea                                      b #0x82b784
; mapping-symbol data/literal pool
00838920  a8 51 0d 00 9c 4d 0d 00                          .byte 0xa8, 0x51, 0x0d, 0x00, 0x9c, 0x4d, 0x0d, 0x00

; FUNCTION 0x00838928, declared_size=128, range_size=128, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby16mpSendLobbyLoginElPcih
; demangled: GLXPlayerMPLobby::mpSendLobbyLogin(long, char*, int, unsigned char)
; decoder-mode: arm
00838928  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083892c  00 40 a0 e1                                      mov r4, r0
00838930  68 00 9f e5                                      ldr r0, [pc, #0x68]
00838934  08 d0 4d e2                                      sub sp, sp, #8
00838938  20 50 dd e5                                      ldrb r5, [sp, #0x20]
0083893c  00 00 8f e0                                      add r0, pc, r0
00838940  03 60 a0 e1                                      mov r6, r3
00838944  01 80 a0 e1                                      mov r8, r1
00838948  02 70 a0 e1                                      mov r7, r2
0083894c  8c cb ff eb                                      bl #0x82b784
00838950  00 30 e0 e3                                      mvn r3, #0
00838954  74 00 94 e5                                      ldr r0, [r4, #0x74]
00838958  50 30 84 e5                                      str r3, [r4, #0x50]
0083895c  07 20 a0 e1                                      mov r2, r7
00838960  76 30 bf e6                                      sxth r3, r6
00838964  08 10 a0 e1                                      mov r1, r8
00838968  00 50 8d e5                                      str r5, [sp]
0083896c  39 3e 00 eb                                      bl #0x848258
00838970  74 50 94 e5                                      ldr r5, [r4, #0x74]
00838974  ef c9 ff eb                                      bl #0x82b138
00838978  50 20 02 e3                                      movw r2, #0x2050
0083897c  02 00 85 e7                                      str r0, [r5, r2]
00838980  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
00838984  01 30 a0 e3                                      mov r3, #1
00838988  84 30 84 e5                                      str r3, [r4, #0x84]
0083898c  00 00 8f e0                                      add r0, pc, r0
00838990  80 30 c4 e5                                      strb r3, [r4, #0x80]
00838994  08 d0 8d e2                                      add sp, sp, #8
00838998  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0083899c  78 cb ff ea                                      b #0x82b784
; mapping-symbol data/literal pool
008389a0  54 51 0d 00 1c 4d 0d 00                          .byte 0x54, 0x51, 0x0d, 0x00, 0x1c, 0x4d, 0x0d, 0x00

; FUNCTION 0x008389a8, declared_size=140, range_size=140, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby16mpSendDisconnectEv
; demangled: GLXPlayerMPLobby::mpSendDisconnect()
; decoder-mode: arm
008389a8  70 40 2d e9                                      push {r4, r5, r6, lr}
008389ac  00 40 a0 e1                                      mov r4, r0
008389b0  74 00 90 e5                                      ldr r0, [r0, #0x74]
008389b4  00 00 50 e3                                      cmp r0, #0
008389b8  11 00 00 0a                                      beq #0x838a04
008389bc  64 33 00 eb                                      bl #0x845754
008389c0  00 50 50 e2                                      subs r5, r0, #0
008389c4  0f 00 00 0a                                      beq #0x838a08
008389c8  74 30 94 e5                                      ldr r3, [r4, #0x74]
008389cc  00 20 e0 e3                                      mvn r2, #0
008389d0  50 20 84 e5                                      str r2, [r4, #0x50]
008389d4  03 00 a0 e1                                      mov r0, r3
008389d8  00 30 93 e5                                      ldr r3, [r3]
008389dc  0f e0 a0 e1                                      mov lr, pc
008389e0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008389e4  74 50 94 e5                                      ldr r5, [r4, #0x74]
008389e8  d2 c9 ff eb                                      bl #0x82b138
008389ec  50 30 02 e3                                      movw r3, #0x2050
008389f0  03 00 85 e7                                      str r0, [r5, r3]
008389f4  10 30 a0 e3                                      mov r3, #0x10
008389f8  84 30 84 e5                                      str r3, [r4, #0x84]
008389fc  01 30 a0 e3                                      mov r3, #1
00838a00  80 30 c4 e5                                      strb r3, [r4, #0x80]
00838a04  70 80 bd e8                                      pop {r4, r5, r6, pc}
00838a08  04 00 a0 e1                                      mov r0, r4
00838a0c  00 30 94 e5                                      ldr r3, [r4]
00838a10  0f e0 a0 e1                                      mov lr, pc
00838a14  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00838a18  04 30 94 e5                                      ldr r3, [r4, #4]
00838a1c  50 50 84 e5                                      str r5, [r4, #0x50]
00838a20  03 00 a0 e1                                      mov r0, r3
00838a24  00 30 93 e5                                      ldr r3, [r3]
00838a28  0f e0 a0 e1                                      mov lr, pc
00838a2c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00838a30  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00838a34, declared_size=444, range_size=444, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby6UpdateEv
; demangled: GLXPlayerMPLobby::Update()
; decoder-mode: arm
00838a34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00838a38  00 40 a0 e1                                      mov r4, r0
00838a3c  74 00 90 e5                                      ldr r0, [r0, #0x74]
00838a40  43 33 00 eb                                      bl #0x845754
00838a44  00 60 50 e2                                      subs r6, r0, #0
00838a48  13 00 00 1a                                      bne #0x838a9c
00838a4c  74 00 94 e5                                      ldr r0, [r4, #0x74]
00838a50  14 30 02 e3                                      movw r3, #0x2014
00838a54  03 30 90 e7                                      ldr r3, [r0, r3]
00838a58  00 00 53 e3                                      cmp r3, #0
00838a5c  02 00 00 0a                                      beq #0x838a6c
00838a60  6c 50 94 e5                                      ldr r5, [r4, #0x6c]
00838a64  01 00 55 e3                                      cmp r5, #1
00838a68  2a 00 00 0a                                      beq #0x838b18
00838a6c  04 00 a0 e1                                      mov r0, r4
00838a70  00 30 94 e5                                      ldr r3, [r4]
00838a74  0f e0 a0 e1                                      mov lr, pc
00838a78  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00838a7c  04 30 94 e5                                      ldr r3, [r4, #4]
00838a80  01 10 e0 e3                                      mvn r1, #1
00838a84  50 10 84 e5                                      str r1, [r4, #0x50]
00838a88  03 00 a0 e1                                      mov r0, r3
00838a8c  00 30 93 e5                                      ldr r3, [r3]
00838a90  0f e0 a0 e1                                      mov lr, pc
00838a94  00 f0 93 e5                                      ldr pc, [r3]
00838a98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00838a9c  74 30 94 e5                                      ldr r3, [r4, #0x74]
00838aa0  03 00 a0 e1                                      mov r0, r3
00838aa4  00 30 93 e5                                      ldr r3, [r3]
00838aa8  0f e0 a0 e1                                      mov lr, pc
00838aac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00838ab0  90 30 94 e5                                      ldr r3, [r4, #0x90]
00838ab4  00 00 53 e3                                      cmp r3, #0
00838ab8  1c 30 93 15                                      ldrne r3, [r3, #0x1c]
00838abc  00 30 e0 03                                      mvneq r3, #0
00838ac0  88 30 84 e5                                      str r3, [r4, #0x88]
00838ac4  80 30 d4 e5                                      ldrb r3, [r4, #0x80]
00838ac8  00 00 53 e3                                      cmp r3, #0
00838acc  26 00 00 1a                                      bne #0x838b6c
00838ad0  00 30 94 e5                                      ldr r3, [r4]
00838ad4  04 00 a0 e1                                      mov r0, r4
00838ad8  0f e0 a0 e1                                      mov lr, pc
00838adc  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00838ae0  00 00 50 e3                                      cmp r0, #0
00838ae4  15 00 00 0a                                      beq #0x838b40
00838ae8  68 30 94 e5                                      ldr r3, [r4, #0x68]
00838aec  00 00 53 e3                                      cmp r3, #0
00838af0  05 00 00 0a                                      beq #0x838b0c
00838af4  03 00 a0 e1                                      mov r0, r3
00838af8  00 30 93 e5                                      ldr r3, [r3]
00838afc  0f e0 a0 e1                                      mov lr, pc
00838b00  04 f0 93 e5                                      ldr pc, [r3, #4]
00838b04  00 30 a0 e3                                      mov r3, #0
00838b08  68 30 84 e5                                      str r3, [r4, #0x68]
00838b0c  00 30 a0 e3                                      mov r3, #0
00838b10  68 30 84 e5                                      str r3, [r4, #0x68]
00838b14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00838b18  3f 33 00 eb                                      bl #0x84581c
00838b1c  00 00 50 e3                                      cmp r0, #0
00838b20  07 00 00 1a                                      bne #0x838b44
00838b24  74 30 94 e5                                      ldr r3, [r4, #0x74]
00838b28  04 20 93 e5                                      ldr r2, [r3, #4]
00838b2c  01 00 52 e3                                      cmp r2, #1
00838b30  03 20 a0 13                                      movne r2, #3
00838b34  6c 20 84 15                                      strne r2, [r4, #0x6c]
00838b38  04 00 83 15                                      strne r0, [r3, #4]
00838b3c  ca ff ff 1a                                      bne #0x838a6c
00838b40  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00838b44  74 70 94 e5                                      ldr r7, [r4, #0x74]
00838b48  7a c9 ff eb                                      bl #0x82b138
00838b4c  50 30 02 e3                                      movw r3, #0x2050
00838b50  03 00 87 e7                                      str r0, [r7, r3]
00838b54  74 30 94 e5                                      ldr r3, [r4, #0x74]
00838b58  02 20 a0 e3                                      mov r2, #2
00838b5c  80 50 c4 e5                                      strb r5, [r4, #0x80]
00838b60  6c 20 84 e5                                      str r2, [r4, #0x6c]
00838b64  04 60 83 e5                                      str r6, [r3, #4]
00838b68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00838b6c  71 c9 ff eb                                      bl #0x82b138
00838b70  74 20 94 e5                                      ldr r2, [r4, #0x74]
00838b74  50 30 02 e3                                      movw r3, #0x2050
00838b78  03 30 92 e7                                      ldr r3, [r2, r3]
00838b7c  50 26 04 e3                                      movw r2, #0x4650
00838b80  00 30 63 e0                                      rsb r3, r3, r0
00838b84  02 00 53 e1                                      cmp r3, r2
00838b88  d0 ff ff 9a                                      bls #0x838ad0
00838b8c  58 00 9f e5                                      ldr r0, [pc, #0x58]
00838b90  00 30 a0 e3                                      mov r3, #0
00838b94  84 10 94 e5                                      ldr r1, [r4, #0x84]
00838b98  80 30 c4 e5                                      strb r3, [r4, #0x80]
00838b9c  00 00 8f e0                                      add r0, pc, r0
00838ba0  f7 ca ff eb                                      bl #0x82b784
00838ba4  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
00838ba8  04 00 a0 e1                                      mov r0, r4
00838bac  01 00 53 e3                                      cmp r3, #1
00838bb0  32 30 04 83                                      movwhi r3, #0x4032
00838bb4  29 30 a0 93                                      movls r3, #0x29
00838bb8  50 30 84 e5                                      str r3, [r4, #0x50]
00838bbc  00 30 94 e5                                      ldr r3, [r4]
00838bc0  0f e0 a0 e1                                      mov lr, pc
00838bc4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00838bc8  04 30 94 e5                                      ldr r3, [r4, #4]
00838bcc  50 10 94 e5                                      ldr r1, [r4, #0x50]
00838bd0  03 00 a0 e1                                      mov r0, r3
00838bd4  00 30 93 e5                                      ldr r3, [r3]
00838bd8  0f e0 a0 e1                                      mov lr, pc
00838bdc  00 f0 93 e5                                      ldr pc, [r3]
00838be0  15 30 a0 e3                                      mov r3, #0x15
00838be4  84 30 84 e5                                      str r3, [r4, #0x84]
00838be8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00838bec  1c 4f 0d 00                                      .byte 0x1c, 0x4f, 0x0d, 0x00

; FUNCTION 0x00838bf0, declared_size=124, range_size=124, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby12mpDisconnectEv
; demangled: GLXPlayerMPLobby::mpDisconnect()
; decoder-mode: arm
00838bf0  10 40 2d e9                                      push {r4, lr}
00838bf4  00 40 a0 e1                                      mov r4, r0
00838bf8  90 00 90 e5                                      ldr r0, [r0, #0x90]
00838bfc  00 30 e0 e3                                      mvn r3, #0
00838c00  88 30 84 e5                                      str r3, [r4, #0x88]
00838c04  00 00 50 e3                                      cmp r0, #0
00838c08  09 00 00 0a                                      beq #0x838c34
00838c0c  7e 32 00 eb                                      bl #0x84560c
00838c10  90 30 94 e5                                      ldr r3, [r4, #0x90]
00838c14  00 00 53 e3                                      cmp r3, #0
00838c18  05 00 00 0a                                      beq #0x838c34
00838c1c  03 00 a0 e1                                      mov r0, r3
00838c20  00 30 93 e5                                      ldr r3, [r3]
00838c24  0f e0 a0 e1                                      mov lr, pc
00838c28  04 f0 93 e5                                      ldr pc, [r3, #4]
00838c2c  00 30 a0 e3                                      mov r3, #0
00838c30  90 30 84 e5                                      str r3, [r4, #0x90]
00838c34  74 00 94 e5                                      ldr r0, [r4, #0x74]
00838c38  5e 36 00 eb                                      bl #0x8465b8
00838c3c  68 30 94 e5                                      ldr r3, [r4, #0x68]
00838c40  00 00 53 e3                                      cmp r3, #0
00838c44  05 00 00 0a                                      beq #0x838c60
00838c48  03 00 a0 e1                                      mov r0, r3
00838c4c  00 30 93 e5                                      ldr r3, [r3]
00838c50  0f e0 a0 e1                                      mov lr, pc
00838c54  04 f0 93 e5                                      ldr pc, [r3, #4]
00838c58  00 30 a0 e3                                      mov r3, #0
00838c5c  68 30 84 e5                                      str r3, [r4, #0x68]
00838c60  00 30 a0 e3                                      mov r3, #0
00838c64  60 30 c4 e5                                      strb r3, [r4, #0x60]
00838c68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00838c6c, declared_size=4624, range_size=4624, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby25mpProcessIncomingMessagesEv
; demangled: GLXPlayerMPLobby::mpProcessIncomingMessages()
; decoder-mode: arm
00838c6c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00838c70  7c 5e 9f e5                                      ldr r5, [pc, #0xe7c]
00838c74  7c 6e 9f e5                                      ldr r6, [pc, #0xe7c]
00838c78  60 20 d0 e5                                      ldrb r2, [r0, #0x60]
00838c7c  05 50 8f e0                                      add r5, pc, r5
00838c80  06 30 95 e7                                      ldr r3, [r5, r6]
00838c84  78 d0 4d e2                                      sub sp, sp, #0x78
00838c88  01 00 52 e3                                      cmp r2, #1
00838c8c  00 30 93 e5                                      ldr r3, [r3]
00838c90  00 40 a0 e1                                      mov r4, r0
00838c94  74 30 8d e5                                      str r3, [sp, #0x74]
00838c98  03 00 00 9a                                      bls #0x838cac
00838c9c  74 00 90 e5                                      ldr r0, [r0, #0x74]
00838ca0  a5 38 00 eb                                      bl #0x846f3c
00838ca4  00 00 50 e3                                      cmp r0, #0
00838ca8  ba 00 00 1a                                      bne #0x838f98
00838cac  68 30 94 e5                                      ldr r3, [r4, #0x68]
00838cb0  00 00 53 e3                                      cmp r3, #0
00838cb4  05 00 00 0a                                      beq #0x838cd0
00838cb8  03 00 a0 e1                                      mov r0, r3
00838cbc  00 30 93 e5                                      ldr r3, [r3]
00838cc0  0f e0 a0 e1                                      mov lr, pc
00838cc4  04 f0 93 e5                                      ldr pc, [r3, #4]
00838cc8  00 30 a0 e3                                      mov r3, #0
00838ccc  68 30 84 e5                                      str r3, [r4, #0x68]
00838cd0  74 00 94 e5                                      ldr r0, [r4, #0x74]
00838cd4  88 32 00 eb                                      bl #0x8456fc
00838cd8  00 00 50 e3                                      cmp r0, #0
00838cdc  00 70 a0 e1                                      mov r7, r0
00838ce0  68 00 84 e5                                      str r0, [r4, #0x68]
00838ce4  a3 00 00 0a                                      beq #0x838f78
00838ce8  00 30 90 e5                                      ldr r3, [r0]
00838cec  0b 10 8d e2                                      add r1, sp, #0xb
00838cf0  0f e0 a0 e1                                      mov lr, pc
00838cf4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00838cf8  68 30 94 e5                                      ldr r3, [r4, #0x68]
00838cfc  0a 10 8d e2                                      add r1, sp, #0xa
00838d00  03 00 a0 e1                                      mov r0, r3
00838d04  00 30 93 e5                                      ldr r3, [r3]
00838d08  0f e0 a0 e1                                      mov lr, pc
00838d0c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00838d10  68 30 94 e5                                      ldr r3, [r4, #0x68]
00838d14  03 00 a0 e1                                      mov r0, r3
00838d18  00 30 93 e5                                      ldr r3, [r3]
00838d1c  0f e0 a0 e1                                      mov lr, pc
00838d20  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00838d24  00 70 a0 e1                                      mov r7, r0
00838d28  00 10 a0 e1                                      mov r1, r0
00838d2c  c8 0d 9f e5                                      ldr r0, [pc, #0xdc8]
00838d30  02 70 47 e2                                      sub r7, r7, #2
00838d34  00 00 8f e0                                      add r0, pc, r0
00838d38  91 ca ff eb                                      bl #0x82b784
00838d3c  66 00 57 e3                                      cmp r7, #0x66
00838d40  07 f1 8f 90                                      addls pc, pc, r7, lsl #2
00838d44  80 00 00 ea                                      b #0x838f4c
00838d48  95 00 00 ea                                      b #0x838fa4
00838d4c  7e 00 00 ea                                      b #0x838f4c
00838d50  42 02 00 ea                                      b #0x839660
00838d54  7c 00 00 ea                                      b #0x838f4c
00838d58  23 02 00 ea                                      b #0x8395ec
00838d5c  7a 00 00 ea                                      b #0x838f4c
00838d60  79 00 00 ea                                      b #0x838f4c
00838d64  78 00 00 ea                                      b #0x838f4c
00838d68  ff 01 00 ea                                      b #0x83956c
00838d6c  76 00 00 ea                                      b #0x838f4c
00838d70  de 01 00 ea                                      b #0x8394f0
00838d74  74 00 00 ea                                      b #0x838f4c
00838d78  c0 01 00 ea                                      b #0x839480
00838d7c  72 00 00 ea                                      b #0x838f4c
00838d80  a0 01 00 ea                                      b #0x839408
00838d84  97 01 00 ea                                      b #0x8393e8
00838d88  8e 01 00 ea                                      b #0x8393c8
00838d8c  6e 00 00 ea                                      b #0x838f4c
00838d90  8b 02 00 ea                                      b #0x8397c4
00838d94  82 02 00 ea                                      b #0x8397a4
00838d98  6b 00 00 ea                                      b #0x838f4c
00838d9c  65 02 00 ea                                      b #0x839738
00838da0  69 00 00 ea                                      b #0x838f4c
00838da4  49 02 00 ea                                      b #0x8396d0
00838da8  67 00 00 ea                                      b #0x838f4c
00838dac  66 00 00 ea                                      b #0x838f4c
00838db0  65 00 00 ea                                      b #0x838f4c
00838db4  64 00 00 ea                                      b #0x838f4c
00838db8  63 00 00 ea                                      b #0x838f4c
00838dbc  62 00 00 ea                                      b #0x838f4c
00838dc0  1c 01 00 ea                                      b #0x839238
00838dc4  60 00 00 ea                                      b #0x838f4c
00838dc8  ff 00 00 ea                                      b #0x8391cc
00838dcc  f6 00 00 ea                                      b #0x8391ac
00838dd0  5d 00 00 ea                                      b #0x838f4c
00838dd4  d9 00 00 ea                                      b #0x839140
00838dd8  d3 02 00 ea                                      b #0x83992c
00838ddc  5a 00 00 ea                                      b #0x838f4c
00838de0  ae 02 00 ea                                      b #0x8398a0
00838de4  6f 01 00 ea                                      b #0x8393a8
00838de8  57 00 00 ea                                      b #0x838f4c
00838dec  50 01 00 ea                                      b #0x839334
00838df0  45 01 00 ea                                      b #0x83930c
00838df4  54 00 00 ea                                      b #0x838f4c
00838df8  28 01 00 ea                                      b #0x8392a0
00838dfc  1f 01 00 ea                                      b #0x839280
00838e00  51 00 00 ea                                      b #0x838f4c
00838e04  50 00 00 ea                                      b #0x838f4c
00838e08  12 01 00 ea                                      b #0x839258
00838e0c  4e 00 00 ea                                      b #0x838f4c
00838e10  4d 00 00 ea                                      b #0x838f4c
00838e14  e3 02 00 ea                                      b #0x8399a8
00838e18  4b 00 00 ea                                      b #0x838f4c
00838e1c  ca 02 00 ea                                      b #0x83994c
00838e20  49 00 00 ea                                      b #0x838f4c
00838e24  f6 02 00 ea                                      b #0x839a04
00838e28  47 00 00 ea                                      b #0x838f4c
00838e2c  46 00 00 ea                                      b #0x838f4c
00838e30  45 00 00 ea                                      b #0x838f4c
00838e34  44 00 00 ea                                      b #0x838f4c
00838e38  43 00 00 ea                                      b #0x838f4c
00838e3c  42 00 00 ea                                      b #0x838f4c
00838e40  41 00 00 ea                                      b #0x838f4c
00838e44  40 00 00 ea                                      b #0x838f4c
00838e48  3f 00 00 ea                                      b #0x838f4c
00838e4c  3e 00 00 ea                                      b #0x838f4c
00838e50  3d 00 00 ea                                      b #0x838f4c
00838e54  3c 00 00 ea                                      b #0x838f4c
00838e58  3b 00 00 ea                                      b #0x838f4c
00838e5c  3a 00 00 ea                                      b #0x838f4c
00838e60  39 00 00 ea                                      b #0x838f4c
00838e64  38 00 00 ea                                      b #0x838f4c
00838e68  37 00 00 ea                                      b #0x838f4c
00838e6c  71 02 00 ea                                      b #0x839838
00838e70  12 03 00 ea                                      b #0x839ac0
00838e74  34 00 00 ea                                      b #0x838f4c
00838e78  33 00 00 ea                                      b #0x838f4c
00838e7c  32 00 00 ea                                      b #0x838f4c
00838e80  a1 02 00 ea                                      b #0x83990c
00838e84  30 00 00 ea                                      b #0x838f4c
00838e88  2f 00 00 ea                                      b #0x838f4c
00838e8c  2e 00 00 ea                                      b #0x838f4c
00838e90  2d 00 00 ea                                      b #0x838f4c
00838e94  2c 00 00 ea                                      b #0x838f4c
00838e98  2b 00 00 ea                                      b #0x838f4c
00838e9c  2a 00 00 ea                                      b #0x838f4c
00838ea0  29 00 00 ea                                      b #0x838f4c
00838ea4  28 00 00 ea                                      b #0x838f4c
00838ea8  27 00 00 ea                                      b #0x838f4c
00838eac  26 00 00 ea                                      b #0x838f4c
00838eb0  25 00 00 ea                                      b #0x838f4c
00838eb4  24 00 00 ea                                      b #0x838f4c
00838eb8  23 00 00 ea                                      b #0x838f4c
00838ebc  22 00 00 ea                                      b #0x838f4c
00838ec0  21 00 00 ea                                      b #0x838f4c
00838ec4  e6 02 00 ea                                      b #0x839a64
00838ec8  77 00 00 ea                                      b #0x8390ac
00838ecc  1e 00 00 ea                                      b #0x838f4c
00838ed0  5a 00 00 ea                                      b #0x839040
00838ed4  1c 00 00 ea                                      b #0x838f4c
00838ed8  01 00 00 ea                                      b #0x838ee4
00838edc  1a 00 00 ea                                      b #0x838f4c
00838ee0  3e 00 00 ea                                      b #0x838fe0
00838ee4  84 30 94 e5                                      ldr r3, [r4, #0x84]
00838ee8  02 00 53 e3                                      cmp r3, #2
00838eec  16 00 00 1a                                      bne #0x838f4c
00838ef0  68 30 94 e5                                      ldr r3, [r4, #0x68]
00838ef4  00 20 a0 e3                                      mov r2, #0
00838ef8  78 10 8d e2                                      add r1, sp, #0x78
00838efc  15 00 a0 e3                                      mov r0, #0x15
00838f00  74 20 21 e5                                      str r2, [r1, #-0x74]!
00838f04  84 00 84 e5                                      str r0, [r4, #0x84]
00838f08  80 20 c4 e5                                      strb r2, [r4, #0x80]
00838f0c  03 00 a0 e1                                      mov r0, r3
00838f10  00 30 93 e5                                      ldr r3, [r3]
00838f14  0f e0 a0 e1                                      mov lr, pc
00838f18  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00838f1c  00 70 50 e2                                      subs r7, r0, #0
00838f20  88 03 00 0a                                      beq #0x839d48
00838f24  04 20 9d e5                                      ldr r2, [sp, #4]
00838f28  00 00 52 e3                                      cmp r2, #0
00838f2c  3b 03 00 1a                                      bne #0x839c20
00838f30  04 30 94 e5                                      ldr r3, [r4, #4]
00838f34  50 20 84 e5                                      str r2, [r4, #0x50]
00838f38  68 10 94 e5                                      ldr r1, [r4, #0x68]
00838f3c  03 00 a0 e1                                      mov r0, r3
00838f40  00 30 93 e5                                      ldr r3, [r3]
00838f44  0f e0 a0 e1                                      mov lr, pc
00838f48  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00838f4c  68 30 94 e5                                      ldr r3, [r4, #0x68]
00838f50  00 00 53 e3                                      cmp r3, #0
00838f54  05 00 00 0a                                      beq #0x838f70
00838f58  03 00 a0 e1                                      mov r0, r3
00838f5c  00 30 93 e5                                      ldr r3, [r3]
00838f60  0f e0 a0 e1                                      mov lr, pc
00838f64  04 f0 93 e5                                      ldr pc, [r3, #4]
00838f68  00 30 a0 e3                                      mov r3, #0
00838f6c  68 30 84 e5                                      str r3, [r4, #0x68]
00838f70  00 70 a0 e3                                      mov r7, #0
00838f74  68 70 84 e5                                      str r7, [r4, #0x68]
00838f78  06 30 95 e7                                      ldr r3, [r5, r6]
00838f7c  74 20 9d e5                                      ldr r2, [sp, #0x74]
00838f80  07 00 a0 e1                                      mov r0, r7
00838f84  00 30 93 e5                                      ldr r3, [r3]
00838f88  03 00 52 e1                                      cmp r2, r3
00838f8c  6c 03 00 1a                                      bne #0x839d44
00838f90  78 d0 8d e2                                      add sp, sp, #0x78
00838f94  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00838f98  66 c8 ff eb                                      bl #0x82b138
00838f9c  8c 00 84 e5                                      str r0, [r4, #0x8c]
00838fa0  41 ff ff ea                                      b #0x838cac
00838fa4  04 30 94 e5                                      ldr r3, [r4, #4]
00838fa8  00 20 a0 e3                                      mov r2, #0
00838fac  01 80 a0 e3                                      mov r8, #1
00838fb0  80 20 c4 e5                                      strb r2, [r4, #0x80]
00838fb4  60 80 c4 e5                                      strb r8, [r4, #0x60]
00838fb8  50 20 84 e5                                      str r2, [r4, #0x50]
00838fbc  03 00 a0 e1                                      mov r0, r3
00838fc0  00 30 93 e5                                      ldr r3, [r3]
00838fc4  0f e0 a0 e1                                      mov lr, pc
00838fc8  08 f0 93 e5                                      ldr pc, [r3, #8]
00838fcc  90 70 94 e5                                      ldr r7, [r4, #0x90]
00838fd0  00 00 57 e3                                      cmp r7, #0
00838fd4  de 02 00 0a                                      beq #0x839b54
00838fd8  08 70 a0 e1                                      mov r7, r8
00838fdc  e5 ff ff ea                                      b #0x838f78
00838fe0  68 30 94 e5                                      ldr r3, [r4, #0x68]
00838fe4  00 20 a0 e3                                      mov r2, #0
00838fe8  78 10 8d e2                                      add r1, sp, #0x78
00838fec  15 00 a0 e3                                      mov r0, #0x15
00838ff0  74 20 21 e5                                      str r2, [r1, #-0x74]!
00838ff4  84 00 84 e5                                      str r0, [r4, #0x84]
00838ff8  80 20 c4 e5                                      strb r2, [r4, #0x80]
00838ffc  03 00 a0 e1                                      mov r0, r3
00839000  00 30 93 e5                                      ldr r3, [r3]
00839004  0f e0 a0 e1                                      mov lr, pc
00839008  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0083900c  00 70 50 e2                                      subs r7, r0, #0
00839010  0d 03 00 0a                                      beq #0x839c4c
00839014  04 20 9d e5                                      ldr r2, [sp, #4]
00839018  00 00 52 e3                                      cmp r2, #0
0083901c  ff 02 00 1a                                      bne #0x839c20
00839020  04 30 94 e5                                      ldr r3, [r4, #4]
00839024  50 20 84 e5                                      str r2, [r4, #0x50]
00839028  68 10 94 e5                                      ldr r1, [r4, #0x68]
0083902c  03 00 a0 e1                                      mov r0, r3
00839030  00 30 93 e5                                      ldr r3, [r3]
00839034  0f e0 a0 e1                                      mov lr, pc
00839038  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0083903c  c2 ff ff ea                                      b #0x838f4c
00839040  84 30 94 e5                                      ldr r3, [r4, #0x84]
00839044  14 00 53 e3                                      cmp r3, #0x14
00839048  bf ff ff 1a                                      bne #0x838f4c
0083904c  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839050  00 20 a0 e3                                      mov r2, #0
00839054  78 10 8d e2                                      add r1, sp, #0x78
00839058  15 00 a0 e3                                      mov r0, #0x15
0083905c  74 20 21 e5                                      str r2, [r1, #-0x74]!
00839060  84 00 84 e5                                      str r0, [r4, #0x84]
00839064  80 20 c4 e5                                      strb r2, [r4, #0x80]
00839068  03 00 a0 e1                                      mov r0, r3
0083906c  00 30 93 e5                                      ldr r3, [r3]
00839070  0f e0 a0 e1                                      mov lr, pc
00839074  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00839078  00 70 50 e2                                      subs r7, r0, #0
0083907c  5b 03 00 0a                                      beq #0x839df0
00839080  04 20 9d e5                                      ldr r2, [sp, #4]
00839084  00 00 52 e3                                      cmp r2, #0
00839088  e4 02 00 1a                                      bne #0x839c20
0083908c  04 30 94 e5                                      ldr r3, [r4, #4]
00839090  50 20 84 e5                                      str r2, [r4, #0x50]
00839094  68 10 94 e5                                      ldr r1, [r4, #0x68]
00839098  03 00 a0 e1                                      mov r0, r3
0083909c  00 30 93 e5                                      ldr r3, [r3]
008390a0  0f e0 a0 e1                                      mov lr, pc
008390a4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008390a8  a7 ff ff ea                                      b #0x838f4c
008390ac  84 30 94 e5                                      ldr r3, [r4, #0x84]
008390b0  12 00 53 e3                                      cmp r3, #0x12
008390b4  a4 ff ff 1a                                      bne #0x838f4c
008390b8  68 30 94 e5                                      ldr r3, [r4, #0x68]
008390bc  00 20 a0 e3                                      mov r2, #0
008390c0  78 10 8d e2                                      add r1, sp, #0x78
008390c4  15 00 a0 e3                                      mov r0, #0x15
008390c8  74 20 21 e5                                      str r2, [r1, #-0x74]!
008390cc  84 00 84 e5                                      str r0, [r4, #0x84]
008390d0  80 20 c4 e5                                      strb r2, [r4, #0x80]
008390d4  03 00 a0 e1                                      mov r0, r3
008390d8  00 30 93 e5                                      ldr r3, [r3]
008390dc  0f e0 a0 e1                                      mov lr, pc
008390e0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008390e4  00 70 50 e2                                      subs r7, r0, #0
008390e8  e4 ff ff 1a                                      bne #0x839080
008390ec  0c 0a 9f e5                                      ldr r0, [pc, #0xa0c]
008390f0  00 00 8f e0                                      add r0, pc, r0
008390f4  a2 c9 ff eb                                      bl #0x82b784
008390f8  68 30 94 e5                                      ldr r3, [r4, #0x68]
008390fc  00 00 53 e3                                      cmp r3, #0
00839100  04 00 00 0a                                      beq #0x839118
00839104  03 00 a0 e1                                      mov r0, r3
00839108  00 30 93 e5                                      ldr r3, [r3]
0083910c  0f e0 a0 e1                                      mov lr, pc
00839110  04 f0 93 e5                                      ldr pc, [r3, #4]
00839114  68 70 84 e5                                      str r7, [r4, #0x68]
00839118  04 30 94 e5                                      ldr r3, [r4, #4]
0083911c  00 70 a0 e3                                      mov r7, #0
00839120  28 10 a0 e3                                      mov r1, #0x28
00839124  68 70 84 e5                                      str r7, [r4, #0x68]
00839128  50 10 84 e5                                      str r1, [r4, #0x50]
0083912c  03 00 a0 e1                                      mov r0, r3
00839130  00 30 93 e5                                      ldr r3, [r3]
00839134  0f e0 a0 e1                                      mov lr, pc
00839138  00 f0 93 e5                                      ldr pc, [r3]
0083913c  8d ff ff ea                                      b #0x838f78
00839140  84 30 94 e5                                      ldr r3, [r4, #0x84]
00839144  07 00 53 e3                                      cmp r3, #7
00839148  7f ff ff 1a                                      bne #0x838f4c
0083914c  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839150  00 20 a0 e3                                      mov r2, #0
00839154  78 10 8d e2                                      add r1, sp, #0x78
00839158  15 00 a0 e3                                      mov r0, #0x15
0083915c  74 20 21 e5                                      str r2, [r1, #-0x74]!
00839160  84 00 84 e5                                      str r0, [r4, #0x84]
00839164  80 20 c4 e5                                      strb r2, [r4, #0x80]
00839168  03 00 a0 e1                                      mov r0, r3
0083916c  00 30 93 e5                                      ldr r3, [r3]
00839170  0f e0 a0 e1                                      mov lr, pc
00839174  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00839178  00 70 50 e2                                      subs r7, r0, #0
0083917c  f8 02 00 0a                                      beq #0x839d64
00839180  04 20 9d e5                                      ldr r2, [sp, #4]
00839184  00 00 52 e3                                      cmp r2, #0
00839188  a4 02 00 1a                                      bne #0x839c20
0083918c  04 30 94 e5                                      ldr r3, [r4, #4]
00839190  50 20 84 e5                                      str r2, [r4, #0x50]
00839194  25 10 a0 e3                                      mov r1, #0x25
00839198  03 00 a0 e1                                      mov r0, r3
0083919c  00 30 93 e5                                      ldr r3, [r3]
008391a0  0f e0 a0 e1                                      mov lr, pc
008391a4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
008391a8  67 ff ff ea                                      b #0x838f4c
008391ac  04 30 94 e5                                      ldr r3, [r4, #4]
008391b0  68 10 94 e5                                      ldr r1, [r4, #0x68]
008391b4  23 20 a0 e3                                      mov r2, #0x23
008391b8  03 00 a0 e1                                      mov r0, r3
008391bc  00 30 93 e5                                      ldr r3, [r3]
008391c0  0f e0 a0 e1                                      mov lr, pc
008391c4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008391c8  5f ff ff ea                                      b #0x838f4c
008391cc  84 30 94 e5                                      ldr r3, [r4, #0x84]
008391d0  08 00 53 e3                                      cmp r3, #8
008391d4  5c ff ff 1a                                      bne #0x838f4c
008391d8  68 30 94 e5                                      ldr r3, [r4, #0x68]
008391dc  00 20 a0 e3                                      mov r2, #0
008391e0  78 10 8d e2                                      add r1, sp, #0x78
008391e4  15 00 a0 e3                                      mov r0, #0x15
008391e8  74 20 21 e5                                      str r2, [r1, #-0x74]!
008391ec  84 00 84 e5                                      str r0, [r4, #0x84]
008391f0  80 20 c4 e5                                      strb r2, [r4, #0x80]
008391f4  03 00 a0 e1                                      mov r0, r3
008391f8  00 30 93 e5                                      ldr r3, [r3]
008391fc  0f e0 a0 e1                                      mov lr, pc
00839200  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00839204  00 70 50 e2                                      subs r7, r0, #0
00839208  dc 02 00 0a                                      beq #0x839d80
0083920c  04 20 9d e5                                      ldr r2, [sp, #4]
00839210  00 00 52 e3                                      cmp r2, #0
00839214  81 02 00 1a                                      bne #0x839c20
00839218  04 30 94 e5                                      ldr r3, [r4, #4]
0083921c  50 20 84 e5                                      str r2, [r4, #0x50]
00839220  22 10 a0 e3                                      mov r1, #0x22
00839224  03 00 a0 e1                                      mov r0, r3
00839228  00 30 93 e5                                      ldr r3, [r3]
0083922c  0f e0 a0 e1                                      mov lr, pc
00839230  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00839234  44 ff ff ea                                      b #0x838f4c
00839238  04 30 94 e5                                      ldr r3, [r4, #4]
0083923c  68 10 94 e5                                      ldr r1, [r4, #0x68]
00839240  20 20 a0 e3                                      mov r2, #0x20
00839244  03 00 a0 e1                                      mov r0, r3
00839248  00 30 93 e5                                      ldr r3, [r3]
0083924c  0f e0 a0 e1                                      mov lr, pc
00839250  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00839254  3c ff ff ea                                      b #0x838f4c
00839258  04 30 94 e5                                      ldr r3, [r4, #4]
0083925c  00 20 a0 e3                                      mov r2, #0
00839260  50 20 84 e5                                      str r2, [r4, #0x50]
00839264  03 00 a0 e1                                      mov r0, r3
00839268  68 10 94 e5                                      ldr r1, [r4, #0x68]
0083926c  00 30 93 e5                                      ldr r3, [r3]
00839270  32 20 a0 e3                                      mov r2, #0x32
00839274  0f e0 a0 e1                                      mov lr, pc
00839278  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0083927c  32 ff ff ea                                      b #0x838f4c
00839280  04 30 94 e5                                      ldr r3, [r4, #4]
00839284  68 10 94 e5                                      ldr r1, [r4, #0x68]
00839288  2f 20 a0 e3                                      mov r2, #0x2f
0083928c  03 00 a0 e1                                      mov r0, r3
00839290  00 30 93 e5                                      ldr r3, [r3]
00839294  0f e0 a0 e1                                      mov lr, pc
00839298  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0083929c  2a ff ff ea                                      b #0x838f4c
008392a0  84 30 94 e5                                      ldr r3, [r4, #0x84]
008392a4  0f 00 53 e3                                      cmp r3, #0xf
008392a8  27 ff ff 1a                                      bne #0x838f4c
008392ac  68 30 94 e5                                      ldr r3, [r4, #0x68]
008392b0  00 20 a0 e3                                      mov r2, #0
008392b4  78 10 8d e2                                      add r1, sp, #0x78
008392b8  15 00 a0 e3                                      mov r0, #0x15
008392bc  74 20 21 e5                                      str r2, [r1, #-0x74]!
008392c0  84 00 84 e5                                      str r0, [r4, #0x84]
008392c4  80 20 c4 e5                                      strb r2, [r4, #0x80]
008392c8  03 00 a0 e1                                      mov r0, r3
008392cc  00 30 93 e5                                      ldr r3, [r3]
008392d0  0f e0 a0 e1                                      mov lr, pc
008392d4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008392d8  00 70 50 e2                                      subs r7, r0, #0
008392dc  d8 02 00 0a                                      beq #0x839e44
008392e0  04 20 9d e5                                      ldr r2, [sp, #4]
008392e4  00 00 52 e3                                      cmp r2, #0
008392e8  4c 02 00 1a                                      bne #0x839c20
008392ec  04 30 94 e5                                      ldr r3, [r4, #4]
008392f0  50 20 84 e5                                      str r2, [r4, #0x50]
008392f4  68 10 94 e5                                      ldr r1, [r4, #0x68]
008392f8  03 00 a0 e1                                      mov r0, r3
008392fc  00 30 93 e5                                      ldr r3, [r3]
00839300  0f e0 a0 e1                                      mov lr, pc
00839304  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00839308  0f ff ff ea                                      b #0x838f4c
0083930c  04 30 94 e5                                      ldr r3, [r4, #4]
00839310  05 20 a0 e3                                      mov r2, #5
00839314  60 20 c4 e5                                      strb r2, [r4, #0x60]
00839318  03 00 a0 e1                                      mov r0, r3
0083931c  68 10 94 e5                                      ldr r1, [r4, #0x68]
00839320  00 30 93 e5                                      ldr r3, [r3]
00839324  2c 20 a0 e3                                      mov r2, #0x2c
00839328  0f e0 a0 e1                                      mov lr, pc
0083932c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00839330  05 ff ff ea                                      b #0x838f4c
00839334  84 30 94 e5                                      ldr r3, [r4, #0x84]
00839338  09 00 53 e3                                      cmp r3, #9
0083933c  02 ff ff 1a                                      bne #0x838f4c
00839340  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839344  00 20 a0 e3                                      mov r2, #0
00839348  78 10 8d e2                                      add r1, sp, #0x78
0083934c  15 00 a0 e3                                      mov r0, #0x15
00839350  74 20 21 e5                                      str r2, [r1, #-0x74]!
00839354  84 00 84 e5                                      str r0, [r4, #0x84]
00839358  80 20 c4 e5                                      strb r2, [r4, #0x80]
0083935c  03 00 a0 e1                                      mov r0, r3
00839360  00 30 93 e5                                      ldr r3, [r3]
00839364  0f e0 a0 e1                                      mov lr, pc
00839368  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0083936c  00 70 50 e2                                      subs r7, r0, #0
00839370  ba 02 00 0a                                      beq #0x839e60
00839374  04 20 9d e5                                      ldr r2, [sp, #4]
00839378  00 00 52 e3                                      cmp r2, #0
0083937c  27 02 00 1a                                      bne #0x839c20
00839380  04 30 94 e5                                      ldr r3, [r4, #4]
00839384  50 20 84 e5                                      str r2, [r4, #0x50]
00839388  05 20 a0 e3                                      mov r2, #5
0083938c  60 20 c4 e5                                      strb r2, [r4, #0x60]
00839390  03 00 a0 e1                                      mov r0, r3
00839394  68 10 94 e5                                      ldr r1, [r4, #0x68]
00839398  00 30 93 e5                                      ldr r3, [r3]
0083939c  0f e0 a0 e1                                      mov lr, pc
008393a0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
008393a4  e8 fe ff ea                                      b #0x838f4c
008393a8  04 30 94 e5                                      ldr r3, [r4, #4]
008393ac  68 10 94 e5                                      ldr r1, [r4, #0x68]
008393b0  29 20 a0 e3                                      mov r2, #0x29
008393b4  03 00 a0 e1                                      mov r0, r3
008393b8  00 30 93 e5                                      ldr r3, [r3]
008393bc  0f e0 a0 e1                                      mov lr, pc
008393c0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008393c4  e0 fe ff ea                                      b #0x838f4c
008393c8  04 30 94 e5                                      ldr r3, [r4, #4]
008393cc  68 10 94 e5                                      ldr r1, [r4, #0x68]
008393d0  12 20 a0 e3                                      mov r2, #0x12
008393d4  03 00 a0 e1                                      mov r0, r3
008393d8  00 30 93 e5                                      ldr r3, [r3]
008393dc  0f e0 a0 e1                                      mov lr, pc
008393e0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008393e4  d8 fe ff ea                                      b #0x838f4c
008393e8  04 30 94 e5                                      ldr r3, [r4, #4]
008393ec  68 10 94 e5                                      ldr r1, [r4, #0x68]
008393f0  11 20 a0 e3                                      mov r2, #0x11
008393f4  03 00 a0 e1                                      mov r0, r3
008393f8  00 30 93 e5                                      ldr r3, [r3]
008393fc  0f e0 a0 e1                                      mov lr, pc
00839400  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00839404  d0 fe ff ea                                      b #0x838f4c
00839408  84 30 94 e5                                      ldr r3, [r4, #0x84]
0083940c  0e 00 53 e3                                      cmp r3, #0xe
00839410  cd fe ff 1a                                      bne #0x838f4c
00839414  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839418  00 20 a0 e3                                      mov r2, #0
0083941c  78 10 8d e2                                      add r1, sp, #0x78
00839420  15 00 a0 e3                                      mov r0, #0x15
00839424  74 20 21 e5                                      str r2, [r1, #-0x74]!
00839428  84 00 84 e5                                      str r0, [r4, #0x84]
0083942c  80 20 c4 e5                                      strb r2, [r4, #0x80]
00839430  03 00 a0 e1                                      mov r0, r3
00839434  00 30 93 e5                                      ldr r3, [r3]
00839438  0f e0 a0 e1                                      mov lr, pc
0083943c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00839440  00 70 50 e2                                      subs r7, r0, #0
00839444  30 02 00 0a                                      beq #0x839d0c
00839448  04 20 9d e5                                      ldr r2, [sp, #4]
0083944c  00 00 52 e3                                      cmp r2, #0
00839450  f2 01 00 1a                                      bne #0x839c20
00839454  04 30 94 e5                                      ldr r3, [r4, #4]
00839458  03 10 a0 e3                                      mov r1, #3
0083945c  60 10 c4 e5                                      strb r1, [r4, #0x60]
00839460  81 20 c4 e5                                      strb r2, [r4, #0x81]
00839464  50 20 84 e5                                      str r2, [r4, #0x50]
00839468  03 00 a0 e1                                      mov r0, r3
0083946c  68 10 94 e5                                      ldr r1, [r4, #0x68]
00839470  00 30 93 e5                                      ldr r3, [r3]
00839474  0f e0 a0 e1                                      mov lr, pc
00839478  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0083947c  b2 fe ff ea                                      b #0x838f4c
00839480  84 30 94 e5                                      ldr r3, [r4, #0x84]
00839484  0b 00 53 e3                                      cmp r3, #0xb
00839488  af fe ff 1a                                      bne #0x838f4c
0083948c  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839490  00 20 a0 e3                                      mov r2, #0
00839494  78 10 8d e2                                      add r1, sp, #0x78
00839498  15 00 a0 e3                                      mov r0, #0x15
0083949c  74 20 21 e5                                      str r2, [r1, #-0x74]!
008394a0  84 00 84 e5                                      str r0, [r4, #0x84]
008394a4  80 20 c4 e5                                      strb r2, [r4, #0x80]
008394a8  03 00 a0 e1                                      mov r0, r3
008394ac  00 30 93 e5                                      ldr r3, [r3]
008394b0  0f e0 a0 e1                                      mov lr, pc
008394b4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008394b8  00 70 50 e2                                      subs r7, r0, #0
008394bc  0b 02 00 0a                                      beq #0x839cf0
008394c0  04 20 9d e5                                      ldr r2, [sp, #4]
008394c4  00 00 52 e3                                      cmp r2, #0
008394c8  f5 01 00 1a                                      bne #0x839ca4
008394cc  04 30 94 e5                                      ldr r3, [r4, #4]
008394d0  50 20 84 e5                                      str r2, [r4, #0x50]
008394d4  68 10 94 e5                                      ldr r1, [r4, #0x68]
008394d8  03 00 a0 e1                                      mov r0, r3
008394dc  00 30 93 e5                                      ldr r3, [r3]
008394e0  0f e0 a0 e1                                      mov lr, pc
008394e4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008394e8  01 70 a0 e3                                      mov r7, #1
008394ec  a1 fe ff ea                                      b #0x838f78
008394f0  84 30 94 e5                                      ldr r3, [r4, #0x84]
008394f4  05 00 53 e3                                      cmp r3, #5
008394f8  93 fe ff 1a                                      bne #0x838f4c
008394fc  00 20 a0 e3                                      mov r2, #0
00839500  78 10 8d e2                                      add r1, sp, #0x78
00839504  15 00 a0 e3                                      mov r0, #0x15
00839508  68 30 94 e5                                      ldr r3, [r4, #0x68]
0083950c  74 20 21 e5                                      str r2, [r1, #-0x74]!
00839510  84 00 84 e5                                      str r0, [r4, #0x84]
00839514  03 00 a0 e3                                      mov r0, #3
00839518  60 00 c4 e5                                      strb r0, [r4, #0x60]
0083951c  01 00 a0 e3                                      mov r0, #1
00839520  81 00 c4 e5                                      strb r0, [r4, #0x81]
00839524  80 20 c4 e5                                      strb r2, [r4, #0x80]
00839528  03 00 a0 e1                                      mov r0, r3
0083952c  00 30 93 e5                                      ldr r3, [r3]
00839530  0f e0 a0 e1                                      mov lr, pc
00839534  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00839538  00 70 50 e2                                      subs r7, r0, #0
0083953c  f9 01 00 0a                                      beq #0x839d28
00839540  04 20 9d e5                                      ldr r2, [sp, #4]
00839544  00 00 52 e3                                      cmp r2, #0
00839548  b4 01 00 1a                                      bne #0x839c20
0083954c  04 30 94 e5                                      ldr r3, [r4, #4]
00839550  50 20 84 e5                                      str r2, [r4, #0x50]
00839554  68 10 94 e5                                      ldr r1, [r4, #0x68]
00839558  03 00 a0 e1                                      mov r0, r3
0083955c  00 30 93 e5                                      ldr r3, [r3]
00839560  0f e0 a0 e1                                      mov lr, pc
00839564  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00839568  77 fe ff ea                                      b #0x838f4c
0083956c  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839570  78 10 8d e2                                      add r1, sp, #0x78
00839574  00 20 a0 e3                                      mov r2, #0
00839578  74 20 21 e5                                      str r2, [r1, #-0x74]!
0083957c  03 00 a0 e1                                      mov r0, r3
00839580  00 30 93 e5                                      ldr r3, [r3]
00839584  0f e0 a0 e1                                      mov lr, pc
00839588  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0083958c  00 70 50 e2                                      subs r7, r0, #0
00839590  6d fe ff 1a                                      bne #0x838f4c
00839594  68 05 9f e5                                      ldr r0, [pc, #0x568]
00839598  00 00 8f e0                                      add r0, pc, r0
0083959c  78 c8 ff eb                                      bl #0x82b784
008395a0  68 30 94 e5                                      ldr r3, [r4, #0x68]
008395a4  00 00 53 e3                                      cmp r3, #0
008395a8  04 00 00 0a                                      beq #0x8395c0
008395ac  03 00 a0 e1                                      mov r0, r3
008395b0  00 30 93 e5                                      ldr r3, [r3]
008395b4  0f e0 a0 e1                                      mov lr, pc
008395b8  04 f0 93 e5                                      ldr pc, [r3, #4]
008395bc  68 70 84 e5                                      str r7, [r4, #0x68]
008395c0  04 30 94 e5                                      ldr r3, [r4, #4]
008395c4  00 80 a0 e3                                      mov r8, #0
008395c8  28 10 a0 e3                                      mov r1, #0x28
008395cc  68 80 84 e5                                      str r8, [r4, #0x68]
008395d0  50 10 84 e5                                      str r1, [r4, #0x50]
008395d4  03 00 a0 e1                                      mov r0, r3
008395d8  00 30 93 e5                                      ldr r3, [r3]
008395dc  0f e0 a0 e1                                      mov lr, pc
008395e0  00 f0 93 e5                                      ldr pc, [r3]
008395e4  08 70 a0 e1                                      mov r7, r8
008395e8  62 fe ff ea                                      b #0x838f78
008395ec  84 30 94 e5                                      ldr r3, [r4, #0x84]
008395f0  01 00 53 e3                                      cmp r3, #1
008395f4  54 fe ff 1a                                      bne #0x838f4c
008395f8  68 30 94 e5                                      ldr r3, [r4, #0x68]
008395fc  00 20 a0 e3                                      mov r2, #0
00839600  78 10 8d e2                                      add r1, sp, #0x78
00839604  15 00 a0 e3                                      mov r0, #0x15
00839608  74 20 21 e5                                      str r2, [r1, #-0x74]!
0083960c  84 00 84 e5                                      str r0, [r4, #0x84]
00839610  02 00 a0 e3                                      mov r0, #2
00839614  60 00 c4 e5                                      strb r0, [r4, #0x60]
00839618  80 20 c4 e5                                      strb r2, [r4, #0x80]
0083961c  03 00 a0 e1                                      mov r0, r3
00839620  00 30 93 e5                                      ldr r3, [r3]
00839624  0f e0 a0 e1                                      mov lr, pc
00839628  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0083962c  00 70 50 e2                                      subs r7, r0, #0
00839630  d9 01 00 0a                                      beq #0x839d9c
00839634  04 20 9d e5                                      ldr r2, [sp, #4]
00839638  00 00 52 e3                                      cmp r2, #0
0083963c  77 01 00 1a                                      bne #0x839c20
00839640  04 30 94 e5                                      ldr r3, [r4, #4]
00839644  50 20 84 e5                                      str r2, [r4, #0x50]
00839648  68 10 94 e5                                      ldr r1, [r4, #0x68]
0083964c  03 00 a0 e1                                      mov r0, r3
00839650  00 30 93 e5                                      ldr r3, [r3]
00839654  0f e0 a0 e1                                      mov lr, pc
00839658  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0083965c  3a fe ff ea                                      b #0x838f4c
00839660  84 30 94 e5                                      ldr r3, [r4, #0x84]
00839664  10 00 53 e3                                      cmp r3, #0x10
00839668  37 fe ff 1a                                      bne #0x838f4c
0083966c  00 70 a0 e3                                      mov r7, #0
00839670  15 30 a0 e3                                      mov r3, #0x15
00839674  84 30 84 e5                                      str r3, [r4, #0x84]
00839678  80 70 c4 e5                                      strb r7, [r4, #0x80]
0083967c  00 30 94 e5                                      ldr r3, [r4]
00839680  04 00 a0 e1                                      mov r0, r4
00839684  0f e0 a0 e1                                      mov lr, pc
00839688  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0083968c  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839690  07 00 53 e1                                      cmp r3, r7
00839694  04 00 00 0a                                      beq #0x8396ac
00839698  03 00 a0 e1                                      mov r0, r3
0083969c  00 30 93 e5                                      ldr r3, [r3]
008396a0  0f e0 a0 e1                                      mov lr, pc
008396a4  04 f0 93 e5                                      ldr pc, [r3, #4]
008396a8  68 70 84 e5                                      str r7, [r4, #0x68]
008396ac  04 30 94 e5                                      ldr r3, [r4, #4]
008396b0  00 70 a0 e3                                      mov r7, #0
008396b4  68 70 84 e5                                      str r7, [r4, #0x68]
008396b8  50 70 84 e5                                      str r7, [r4, #0x50]
008396bc  03 00 a0 e1                                      mov r0, r3
008396c0  00 30 93 e5                                      ldr r3, [r3]
008396c4  0f e0 a0 e1                                      mov lr, pc
008396c8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008396cc  29 fe ff ea                                      b #0x838f78
008396d0  84 30 94 e5                                      ldr r3, [r4, #0x84]
008396d4  06 00 53 e3                                      cmp r3, #6
008396d8  1b fe ff 1a                                      bne #0x838f4c
008396dc  68 30 94 e5                                      ldr r3, [r4, #0x68]
008396e0  00 20 a0 e3                                      mov r2, #0
008396e4  78 10 8d e2                                      add r1, sp, #0x78
008396e8  15 00 a0 e3                                      mov r0, #0x15
008396ec  74 20 21 e5                                      str r2, [r1, #-0x74]!
008396f0  84 00 84 e5                                      str r0, [r4, #0x84]
008396f4  80 20 c4 e5                                      strb r2, [r4, #0x80]
008396f8  03 00 a0 e1                                      mov r0, r3
008396fc  00 30 93 e5                                      ldr r3, [r3]
00839700  0f e0 a0 e1                                      mov lr, pc
00839704  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00839708  00 70 50 e2                                      subs r7, r0, #0
0083970c  a9 01 00 0a                                      beq #0x839db8
00839710  04 20 9d e5                                      ldr r2, [sp, #4]
00839714  00 00 52 e3                                      cmp r2, #0
00839718  40 01 00 1a                                      bne #0x839c20
0083971c  04 30 94 e5                                      ldr r3, [r4, #4]
00839720  50 20 84 e5                                      str r2, [r4, #0x50]
00839724  03 00 a0 e1                                      mov r0, r3
00839728  00 30 93 e5                                      ldr r3, [r3]
0083972c  0f e0 a0 e1                                      mov lr, pc
00839730  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00839734  04 fe ff ea                                      b #0x838f4c
00839738  84 30 94 e5                                      ldr r3, [r4, #0x84]
0083973c  0d 00 53 e3                                      cmp r3, #0xd
00839740  01 fe ff 1a                                      bne #0x838f4c
00839744  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839748  00 20 a0 e3                                      mov r2, #0
0083974c  78 10 8d e2                                      add r1, sp, #0x78
00839750  15 00 a0 e3                                      mov r0, #0x15
00839754  74 20 21 e5                                      str r2, [r1, #-0x74]!
00839758  84 00 84 e5                                      str r0, [r4, #0x84]
0083975c  80 20 c4 e5                                      strb r2, [r4, #0x80]
00839760  03 00 a0 e1                                      mov r0, r3
00839764  00 30 93 e5                                      ldr r3, [r3]
00839768  0f e0 a0 e1                                      mov lr, pc
0083976c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00839770  00 70 50 e2                                      subs r7, r0, #0
00839774  a4 01 00 0a                                      beq #0x839e0c
00839778  04 20 9d e5                                      ldr r2, [sp, #4]
0083977c  00 00 52 e3                                      cmp r2, #0
00839780  26 01 00 1a                                      bne #0x839c20
00839784  04 30 94 e5                                      ldr r3, [r4, #4]
00839788  50 20 84 e5                                      str r2, [r4, #0x50]
0083978c  68 10 94 e5                                      ldr r1, [r4, #0x68]
00839790  03 00 a0 e1                                      mov r0, r3
00839794  00 30 93 e5                                      ldr r3, [r3]
00839798  0f e0 a0 e1                                      mov lr, pc
0083979c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
008397a0  e9 fd ff ea                                      b #0x838f4c
008397a4  04 30 94 e5                                      ldr r3, [r4, #4]
008397a8  68 10 94 e5                                      ldr r1, [r4, #0x68]
008397ac  15 20 a0 e3                                      mov r2, #0x15
008397b0  03 00 a0 e1                                      mov r0, r3
008397b4  00 30 93 e5                                      ldr r3, [r3]
008397b8  0f e0 a0 e1                                      mov lr, pc
008397bc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008397c0  e1 fd ff ea                                      b #0x838f4c
008397c4  84 30 94 e5                                      ldr r3, [r4, #0x84]
008397c8  03 00 53 e3                                      cmp r3, #3
008397cc  de fd ff 1a                                      bne #0x838f4c
008397d0  68 30 94 e5                                      ldr r3, [r4, #0x68]
008397d4  00 20 a0 e3                                      mov r2, #0
008397d8  78 10 8d e2                                      add r1, sp, #0x78
008397dc  15 00 a0 e3                                      mov r0, #0x15
008397e0  74 20 21 e5                                      str r2, [r1, #-0x74]!
008397e4  84 00 84 e5                                      str r0, [r4, #0x84]
008397e8  80 20 c4 e5                                      strb r2, [r4, #0x80]
008397ec  03 00 a0 e1                                      mov r0, r3
008397f0  00 30 93 e5                                      ldr r3, [r3]
008397f4  0f e0 a0 e1                                      mov lr, pc
008397f8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008397fc  00 70 50 e2                                      subs r7, r0, #0
00839800  73 01 00 0a                                      beq #0x839dd4
00839804  04 20 9d e5                                      ldr r2, [sp, #4]
00839808  00 00 52 e3                                      cmp r2, #0
0083980c  24 01 00 1a                                      bne #0x839ca4
00839810  04 30 94 e5                                      ldr r3, [r4, #4]
00839814  02 10 a0 e3                                      mov r1, #2
00839818  60 10 c4 e5                                      strb r1, [r4, #0x60]
0083981c  50 20 84 e5                                      str r2, [r4, #0x50]
00839820  03 00 a0 e1                                      mov r0, r3
00839824  00 30 93 e5                                      ldr r3, [r3]
00839828  0f e0 a0 e1                                      mov lr, pc
0083982c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00839830  01 70 a0 e3                                      mov r7, #1
00839834  cf fd ff ea                                      b #0x838f78
00839838  84 30 94 e5                                      ldr r3, [r4, #0x84]
0083983c  11 00 53 e3                                      cmp r3, #0x11
00839840  c1 fd ff 1a                                      bne #0x838f4c
00839844  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839848  00 20 a0 e3                                      mov r2, #0
0083984c  78 10 8d e2                                      add r1, sp, #0x78
00839850  15 00 a0 e3                                      mov r0, #0x15
00839854  74 20 21 e5                                      str r2, [r1, #-0x74]!
00839858  84 00 84 e5                                      str r0, [r4, #0x84]
0083985c  80 20 c4 e5                                      strb r2, [r4, #0x80]
00839860  03 00 a0 e1                                      mov r0, r3
00839864  00 30 93 e5                                      ldr r3, [r3]
00839868  0f e0 a0 e1                                      mov lr, pc
0083986c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00839870  00 70 50 e2                                      subs r7, r0, #0
00839874  6b 01 00 0a                                      beq #0x839e28
00839878  04 20 9d e5                                      ldr r2, [sp, #4]
0083987c  00 00 52 e3                                      cmp r2, #0
00839880  e6 00 00 1a                                      bne #0x839c20
00839884  04 30 94 e5                                      ldr r3, [r4, #4]
00839888  50 20 84 e5                                      str r2, [r4, #0x50]
0083988c  03 00 a0 e1                                      mov r0, r3
00839890  00 30 93 e5                                      ldr r3, [r3]
00839894  0f e0 a0 e1                                      mov lr, pc
00839898  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0083989c  aa fd ff ea                                      b #0x838f4c
008398a0  84 30 94 e5                                      ldr r3, [r4, #0x84]
008398a4  04 00 53 e3                                      cmp r3, #4
008398a8  a7 fd ff 1a                                      bne #0x838f4c
008398ac  68 30 94 e5                                      ldr r3, [r4, #0x68]
008398b0  00 20 a0 e3                                      mov r2, #0
008398b4  78 10 8d e2                                      add r1, sp, #0x78
008398b8  15 00 a0 e3                                      mov r0, #0x15
008398bc  74 20 21 e5                                      str r2, [r1, #-0x74]!
008398c0  84 00 84 e5                                      str r0, [r4, #0x84]
008398c4  80 20 c4 e5                                      strb r2, [r4, #0x80]
008398c8  03 00 a0 e1                                      mov r0, r3
008398cc  00 30 93 e5                                      ldr r3, [r3]
008398d0  0f e0 a0 e1                                      mov lr, pc
008398d4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008398d8  00 70 50 e2                                      subs r7, r0, #0
008398dc  fc 00 00 0a                                      beq #0x839cd4
008398e0  04 20 9d e5                                      ldr r2, [sp, #4]
008398e4  00 00 52 e3                                      cmp r2, #0
008398e8  cc 00 00 1a                                      bne #0x839c20
008398ec  04 30 94 e5                                      ldr r3, [r4, #4]
008398f0  50 20 84 e5                                      str r2, [r4, #0x50]
008398f4  28 10 a0 e3                                      mov r1, #0x28
008398f8  03 00 a0 e1                                      mov r0, r3
008398fc  00 30 93 e5                                      ldr r3, [r3]
00839900  0f e0 a0 e1                                      mov lr, pc
00839904  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00839908  8f fd ff ea                                      b #0x838f4c
0083990c  04 30 94 e5                                      ldr r3, [r4, #4]
00839910  68 10 94 e5                                      ldr r1, [r4, #0x68]
00839914  50 20 a0 e3                                      mov r2, #0x50
00839918  03 00 a0 e1                                      mov r0, r3
0083991c  00 30 93 e5                                      ldr r3, [r3]
00839920  0f e0 a0 e1                                      mov lr, pc
00839924  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00839928  87 fd ff ea                                      b #0x838f4c
0083992c  04 30 94 e5                                      ldr r3, [r4, #4]
00839930  68 10 94 e5                                      ldr r1, [r4, #0x68]
00839934  26 20 a0 e3                                      mov r2, #0x26
00839938  03 00 a0 e1                                      mov r0, r3
0083993c  00 30 93 e5                                      ldr r3, [r3]
00839940  0f e0 a0 e1                                      mov lr, pc
00839944  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00839948  7f fd ff ea                                      b #0x838f4c
0083994c  84 30 94 e5                                      ldr r3, [r4, #0x84]
00839950  0c 00 53 e3                                      cmp r3, #0xc
00839954  7c fd ff 1a                                      bne #0x838f4c
00839958  68 30 94 e5                                      ldr r3, [r4, #0x68]
0083995c  00 20 a0 e3                                      mov r2, #0
00839960  78 10 8d e2                                      add r1, sp, #0x78
00839964  15 00 a0 e3                                      mov r0, #0x15
00839968  74 20 21 e5                                      str r2, [r1, #-0x74]!
0083996c  84 00 84 e5                                      str r0, [r4, #0x84]
00839970  80 20 c4 e5                                      strb r2, [r4, #0x80]
00839974  03 00 a0 e1                                      mov r0, r3
00839978  00 30 93 e5                                      ldr r3, [r3]
0083997c  0f e0 a0 e1                                      mov lr, pc
00839980  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00839984  00 70 50 e2                                      subs r7, r0, #0
00839988  bc fd ff 1a                                      bne #0x839080
0083998c  74 01 9f e5                                      ldr r0, [pc, #0x174]
00839990  00 00 8f e0                                      add r0, pc, r0
00839994  7a c7 ff eb                                      bl #0x82b784
00839998  68 30 94 e5                                      ldr r3, [r4, #0x68]
0083999c  00 00 53 e3                                      cmp r3, #0
008399a0  d7 fd ff 1a                                      bne #0x839104
008399a4  db fd ff ea                                      b #0x839118
008399a8  84 30 94 e5                                      ldr r3, [r4, #0x84]
008399ac  0a 00 53 e3                                      cmp r3, #0xa
008399b0  65 fd ff 1a                                      bne #0x838f4c
008399b4  68 30 94 e5                                      ldr r3, [r4, #0x68]
008399b8  00 20 a0 e3                                      mov r2, #0
008399bc  78 10 8d e2                                      add r1, sp, #0x78
008399c0  15 00 a0 e3                                      mov r0, #0x15
008399c4  74 20 21 e5                                      str r2, [r1, #-0x74]!
008399c8  84 00 84 e5                                      str r0, [r4, #0x84]
008399cc  80 20 c4 e5                                      strb r2, [r4, #0x80]
008399d0  03 00 a0 e1                                      mov r0, r3
008399d4  00 30 93 e5                                      ldr r3, [r3]
008399d8  0f e0 a0 e1                                      mov lr, pc
008399dc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008399e0  00 70 50 e2                                      subs r7, r0, #0
008399e4  a5 fd ff 1a                                      bne #0x839080
008399e8  1c 01 9f e5                                      ldr r0, [pc, #0x11c]
008399ec  00 00 8f e0                                      add r0, pc, r0
008399f0  63 c7 ff eb                                      bl #0x82b784
008399f4  68 30 94 e5                                      ldr r3, [r4, #0x68]
008399f8  00 00 53 e3                                      cmp r3, #0
008399fc  c0 fd ff 1a                                      bne #0x839104
00839a00  c4 fd ff ea                                      b #0x839118
00839a04  78 30 d4 e5                                      ldrb r3, [r4, #0x78]
00839a08  00 00 53 e3                                      cmp r3, #0
00839a0c  4e fd ff 0a                                      beq #0x838f4c
00839a10  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839a14  78 10 8d e2                                      add r1, sp, #0x78
00839a18  00 20 a0 e3                                      mov r2, #0
00839a1c  74 20 21 e5                                      str r2, [r1, #-0x74]!
00839a20  03 00 a0 e1                                      mov r0, r3
00839a24  00 30 93 e5                                      ldr r3, [r3]
00839a28  0f e0 a0 e1                                      mov lr, pc
00839a2c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00839a30  04 10 9d e5                                      ldr r1, [sp, #4]
00839a34  31 30 04 e3                                      movw r3, #0x4031
00839a38  00 00 51 e3                                      cmp r1, #0
00839a3c  03 00 51 11                                      cmpne r1, r3
00839a40  76 00 00 1a                                      bne #0x839c20
00839a44  04 30 94 e5                                      ldr r3, [r4, #4]
00839a48  03 20 a0 e3                                      mov r2, #3
00839a4c  60 20 c4 e5                                      strb r2, [r4, #0x60]
00839a50  03 00 a0 e1                                      mov r0, r3
00839a54  00 30 93 e5                                      ldr r3, [r3]
00839a58  0f e0 a0 e1                                      mov lr, pc
00839a5c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00839a60  39 fd ff ea                                      b #0x838f4c
00839a64  84 30 94 e5                                      ldr r3, [r4, #0x84]
00839a68  13 00 53 e3                                      cmp r3, #0x13
00839a6c  36 fd ff 1a                                      bne #0x838f4c
00839a70  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839a74  00 20 a0 e3                                      mov r2, #0
00839a78  78 10 8d e2                                      add r1, sp, #0x78
00839a7c  15 00 a0 e3                                      mov r0, #0x15
00839a80  74 20 21 e5                                      str r2, [r1, #-0x74]!
00839a84  84 00 84 e5                                      str r0, [r4, #0x84]
00839a88  80 20 c4 e5                                      strb r2, [r4, #0x80]
00839a8c  03 00 a0 e1                                      mov r0, r3
00839a90  00 30 93 e5                                      ldr r3, [r3]
00839a94  0f e0 a0 e1                                      mov lr, pc
00839a98  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00839a9c  00 70 50 e2                                      subs r7, r0, #0
00839aa0  76 fd ff 1a                                      bne #0x839080
00839aa4  64 00 9f e5                                      ldr r0, [pc, #0x64]
00839aa8  00 00 8f e0                                      add r0, pc, r0
00839aac  34 c7 ff eb                                      bl #0x82b784
00839ab0  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839ab4  00 00 53 e3                                      cmp r3, #0
00839ab8  91 fd ff 1a                                      bne #0x839104
00839abc  95 fd ff ea                                      b #0x839118
00839ac0  78 30 d4 e5                                      ldrb r3, [r4, #0x78]
00839ac4  00 00 53 e3                                      cmp r3, #0
00839ac8  1f fd ff 0a                                      beq #0x838f4c
00839acc  04 30 94 e5                                      ldr r3, [r4, #4]
00839ad0  00 20 a0 e3                                      mov r2, #0
00839ad4  50 20 84 e5                                      str r2, [r4, #0x50]
00839ad8  03 00 a0 e1                                      mov r0, r3
00839adc  68 10 94 e5                                      ldr r1, [r4, #0x68]
00839ae0  00 30 93 e5                                      ldr r3, [r3]
00839ae4  4c 20 a0 e3                                      mov r2, #0x4c
00839ae8  0f e0 a0 e1                                      mov lr, pc
00839aec  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00839af0  15 fd ff ea                                      b #0x838f4c
; mapping-symbol data/literal pool
00839af4  14 be 15 00 ac 40 00 00 ac 4d 0d 00 10 4a 0d 00  .byte 0x14, 0xbe, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xac, 0x4d, 0x0d, 0x00, 0x10, 0x4a, 0x0d, 0x00
00839b04  68 45 0d 00 70 41 0d 00 14 41 0d 00 58 40 0d 00  .byte 0x68, 0x45, 0x0d, 0x00, 0x70, 0x41, 0x0d, 0x00, 0x14, 0x41, 0x0d, 0x00, 0x58, 0x40, 0x0d, 0x00
00839b14  d0 3e 0d 00 28 3e 0d 00 0c 3e 0d 00 f0 3d 0d 00  .byte 0xd0, 0x3e, 0x0d, 0x00, 0x28, 0x3e, 0x0d, 0x00, 0x0c, 0x3e, 0x0d, 0x00, 0xf0, 0x3d, 0x0d, 0x00
00839b24  d4 3d 0d 00 b4 3d 0d 00 98 3d 0d 00 7c 3d 0d 00  .byte 0xd4, 0x3d, 0x0d, 0x00, 0xb4, 0x3d, 0x0d, 0x00, 0x98, 0x3d, 0x0d, 0x00, 0x7c, 0x3d, 0x0d, 0x00
00839b34  60 3d 0d 00 44 3d 0d 00 28 3d 0d 00 0c 3d 0d 00  .byte 0x60, 0x3d, 0x0d, 0x00, 0x44, 0x3d, 0x0d, 0x00, 0x28, 0x3d, 0x0d, 0x00, 0x0c, 0x3d, 0x0d, 0x00
00839b44  f0 3c 0d 00 d4 3c 0d 00 c8 3c 0d 00 ac 3c 0d 00  .byte 0xf0, 0x3c, 0x0d, 0x00, 0xd4, 0x3c, 0x0d, 0x00, 0xc8, 0x3c, 0x0d, 0x00, 0xac, 0x3c, 0x0d, 0x00
; decoder-mode: arm
00839b54  44 c0 8d e2                                      add ip, sp, #0x44
00839b58  10 e0 8d e2                                      add lr, sp, #0x10
00839b5c  04 70 8c e4                                      str r7, [ip], #4
00839b60  04 70 8e e4                                      str r7, [lr], #4
00839b64  04 70 8c e4                                      str r7, [ip], #4
00839b68  04 70 8e e4                                      str r7, [lr], #4
00839b6c  04 70 8c e4                                      str r7, [ip], #4
00839b70  04 70 8e e4                                      str r7, [lr], #4
00839b74  04 70 8c e4                                      str r7, [ip], #4
00839b78  04 70 8e e4                                      str r7, [lr], #4
00839b7c  04 70 8c e4                                      str r7, [ip], #4
00839b80  04 70 8e e4                                      str r7, [lr], #4
00839b84  04 70 8c e4                                      str r7, [ip], #4
00839b88  04 70 8e e4                                      str r7, [lr], #4
00839b8c  04 70 8c e4                                      str r7, [ip], #4
00839b90  04 70 8e e4                                      str r7, [lr], #4
00839b94  04 70 8c e4                                      str r7, [ip], #4
00839b98  04 70 8e e4                                      str r7, [lr], #4
00839b9c  04 70 8c e4                                      str r7, [ip], #4
00839ba0  04 70 8e e4                                      str r7, [lr], #4
00839ba4  04 70 8c e4                                      str r7, [ip], #4
00839ba8  04 70 8e e4                                      str r7, [lr], #4
00839bac  04 70 8c e4                                      str r7, [ip], #4
00839bb0  04 70 8e e4                                      str r7, [lr], #4
00839bb4  40 a0 8d e2                                      add sl, sp, #0x40
00839bb8  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
00839bbc  0a 10 a0 e1                                      mov r1, sl
00839bc0  b0 70 ce e1                                      strh r7, [lr]
00839bc4  02 20 a0 e3                                      mov r2, #2
00839bc8  2f 30 a0 e3                                      mov r3, #0x2f
00839bcc  0c 90 8d e2                                      add sb, sp, #0xc
00839bd0  b0 70 cc e1                                      strh r7, [ip]
00839bd4  40 70 8d e5                                      str r7, [sp, #0x40]
00839bd8  0c 70 8d e5                                      str r7, [sp, #0xc]
00839bdc  fc c3 ff eb                                      bl #0x82abd4
00839be0  3a 30 a0 e3                                      mov r3, #0x3a
00839be4  07 20 a0 e1                                      mov r2, r7
00839be8  09 10 a0 e1                                      mov r1, sb
00839bec  0a 00 a0 e1                                      mov r0, sl
00839bf0  f7 c3 ff eb                                      bl #0x82abd4
00839bf4  34 00 a0 e3                                      mov r0, #0x34
00839bf8  23 53 eb eb                                      bl #0x30e88c
00839bfc  07 20 a0 e1                                      mov r2, r7
00839c00  00 a0 a0 e1                                      mov sl, r0
00839c04  09 10 a0 e1                                      mov r1, sb
00839c08  55 1a 00 eb                                      bl #0x840564
00839c0c  90 a0 84 e5                                      str sl, [r4, #0x90]
00839c10  0a 00 a0 e1                                      mov r0, sl
00839c14  9b 2e 00 eb                                      bl #0x845688
00839c18  08 70 a0 e1                                      mov r7, r8
00839c1c  d5 fc ff ea                                      b #0x838f78
00839c20  04 00 a0 e1                                      mov r0, r4
00839c24  eb 43 00 eb                                      bl #0x84abd8
00839c28  04 20 9d e5                                      ldr r2, [sp, #4]
00839c2c  04 30 94 e5                                      ldr r3, [r4, #4]
00839c30  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00839c34  50 20 84 e5                                      str r2, [r4, #0x50]
00839c38  03 00 a0 e1                                      mov r0, r3
00839c3c  00 30 93 e5                                      ldr r3, [r3]
00839c40  0f e0 a0 e1                                      mov lr, pc
00839c44  04 f0 93 e5                                      ldr pc, [r3, #4]
00839c48  bf fc ff ea                                      b #0x838f4c
00839c4c  40 01 1f e5                                      ldr r0, [pc, #-0x140]
00839c50  00 00 8f e0                                      add r0, pc, r0
00839c54  ca c6 ff eb                                      bl #0x82b784
00839c58  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839c5c  00 00 53 e3                                      cmp r3, #0
00839c60  04 00 00 0a                                      beq #0x839c78
00839c64  03 00 a0 e1                                      mov r0, r3
00839c68  00 30 93 e5                                      ldr r3, [r3]
00839c6c  0f e0 a0 e1                                      mov lr, pc
00839c70  04 f0 93 e5                                      ldr pc, [r3, #4]
00839c74  68 70 84 e5                                      str r7, [r4, #0x68]
00839c78  04 30 94 e5                                      ldr r3, [r4, #4]
00839c7c  00 80 a0 e3                                      mov r8, #0
00839c80  28 10 a0 e3                                      mov r1, #0x28
00839c84  68 80 84 e5                                      str r8, [r4, #0x68]
00839c88  50 10 84 e5                                      str r1, [r4, #0x50]
00839c8c  03 00 a0 e1                                      mov r0, r3
00839c90  00 30 93 e5                                      ldr r3, [r3]
00839c94  0f e0 a0 e1                                      mov lr, pc
00839c98  00 f0 93 e5                                      ldr pc, [r3]
00839c9c  08 70 a0 e1                                      mov r7, r8
00839ca0  b4 fc ff ea                                      b #0x838f78
00839ca4  04 00 a0 e1                                      mov r0, r4
00839ca8  ca 43 00 eb                                      bl #0x84abd8
00839cac  04 20 9d e5                                      ldr r2, [sp, #4]
00839cb0  04 30 94 e5                                      ldr r3, [r4, #4]
00839cb4  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00839cb8  50 20 84 e5                                      str r2, [r4, #0x50]
00839cbc  03 00 a0 e1                                      mov r0, r3
00839cc0  00 30 93 e5                                      ldr r3, [r3]
00839cc4  0f e0 a0 e1                                      mov lr, pc
00839cc8  04 f0 93 e5                                      ldr pc, [r3, #4]
00839ccc  01 70 a0 e3                                      mov r7, #1
00839cd0  a8 fc ff ea                                      b #0x838f78
00839cd4  c4 01 1f e5                                      ldr r0, [pc, #-0x1c4]
00839cd8  00 00 8f e0                                      add r0, pc, r0
00839cdc  a8 c6 ff eb                                      bl #0x82b784
00839ce0  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839ce4  00 00 53 e3                                      cmp r3, #0
00839ce8  05 fd ff 1a                                      bne #0x839104
00839cec  09 fd ff ea                                      b #0x839118
00839cf0  dc 01 1f e5                                      ldr r0, [pc, #-0x1dc]
00839cf4  00 00 8f e0                                      add r0, pc, r0
00839cf8  a1 c6 ff eb                                      bl #0x82b784
00839cfc  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839d00  00 00 53 e3                                      cmp r3, #0
00839d04  fe fc ff 1a                                      bne #0x839104
00839d08  02 fd ff ea                                      b #0x839118
00839d0c  f4 01 1f e5                                      ldr r0, [pc, #-0x1f4]
00839d10  00 00 8f e0                                      add r0, pc, r0
00839d14  9a c6 ff eb                                      bl #0x82b784
00839d18  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839d1c  00 00 53 e3                                      cmp r3, #0
00839d20  f7 fc ff 1a                                      bne #0x839104
00839d24  fb fc ff ea                                      b #0x839118
00839d28  0c 02 1f e5                                      ldr r0, [pc, #-0x20c]
00839d2c  00 00 8f e0                                      add r0, pc, r0
00839d30  93 c6 ff eb                                      bl #0x82b784
00839d34  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839d38  00 00 53 e3                                      cmp r3, #0
00839d3c  f0 fc ff 1a                                      bne #0x839104
00839d40  f4 fc ff ea                                      b #0x839118
00839d44  71 51 eb eb                                      bl #0x30e310
00839d48  28 02 1f e5                                      ldr r0, [pc, #-0x228]
00839d4c  00 00 8f e0                                      add r0, pc, r0
00839d50  8b c6 ff eb                                      bl #0x82b784
00839d54  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839d58  00 00 53 e3                                      cmp r3, #0
00839d5c  e8 fc ff 1a                                      bne #0x839104
00839d60  ec fc ff ea                                      b #0x839118
00839d64  40 02 1f e5                                      ldr r0, [pc, #-0x240]
00839d68  00 00 8f e0                                      add r0, pc, r0
00839d6c  84 c6 ff eb                                      bl #0x82b784
00839d70  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839d74  00 00 53 e3                                      cmp r3, #0
00839d78  e1 fc ff 1a                                      bne #0x839104
00839d7c  e5 fc ff ea                                      b #0x839118
00839d80  58 02 1f e5                                      ldr r0, [pc, #-0x258]
00839d84  00 00 8f e0                                      add r0, pc, r0
00839d88  7d c6 ff eb                                      bl #0x82b784
00839d8c  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839d90  00 00 53 e3                                      cmp r3, #0
00839d94  da fc ff 1a                                      bne #0x839104
00839d98  de fc ff ea                                      b #0x839118
00839d9c  70 02 1f e5                                      ldr r0, [pc, #-0x270]
00839da0  00 00 8f e0                                      add r0, pc, r0
00839da4  76 c6 ff eb                                      bl #0x82b784
00839da8  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839dac  00 00 53 e3                                      cmp r3, #0
00839db0  d3 fc ff 1a                                      bne #0x839104
00839db4  d7 fc ff ea                                      b #0x839118
00839db8  88 02 1f e5                                      ldr r0, [pc, #-0x288]
00839dbc  00 00 8f e0                                      add r0, pc, r0
00839dc0  6f c6 ff eb                                      bl #0x82b784
00839dc4  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839dc8  00 00 53 e3                                      cmp r3, #0
00839dcc  cc fc ff 1a                                      bne #0x839104
00839dd0  d0 fc ff ea                                      b #0x839118
00839dd4  a0 02 1f e5                                      ldr r0, [pc, #-0x2a0]
00839dd8  00 00 8f e0                                      add r0, pc, r0
00839ddc  68 c6 ff eb                                      bl #0x82b784
00839de0  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839de4  00 00 53 e3                                      cmp r3, #0
00839de8  c5 fc ff 1a                                      bne #0x839104
00839dec  c9 fc ff ea                                      b #0x839118
00839df0  b8 02 1f e5                                      ldr r0, [pc, #-0x2b8]
00839df4  00 00 8f e0                                      add r0, pc, r0
00839df8  61 c6 ff eb                                      bl #0x82b784
00839dfc  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839e00  00 00 53 e3                                      cmp r3, #0
00839e04  be fc ff 1a                                      bne #0x839104
00839e08  c2 fc ff ea                                      b #0x839118
00839e0c  d0 02 1f e5                                      ldr r0, [pc, #-0x2d0]
00839e10  00 00 8f e0                                      add r0, pc, r0
00839e14  5a c6 ff eb                                      bl #0x82b784
00839e18  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839e1c  00 00 53 e3                                      cmp r3, #0
00839e20  b7 fc ff 1a                                      bne #0x839104
00839e24  bb fc ff ea                                      b #0x839118
00839e28  e8 02 1f e5                                      ldr r0, [pc, #-0x2e8]
00839e2c  00 00 8f e0                                      add r0, pc, r0
00839e30  53 c6 ff eb                                      bl #0x82b784
00839e34  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839e38  00 00 53 e3                                      cmp r3, #0
00839e3c  b0 fc ff 1a                                      bne #0x839104
00839e40  b4 fc ff ea                                      b #0x839118
00839e44  00 03 1f e5                                      ldr r0, [pc, #-0x300]
00839e48  00 00 8f e0                                      add r0, pc, r0
00839e4c  4c c6 ff eb                                      bl #0x82b784
00839e50  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839e54  00 00 53 e3                                      cmp r3, #0
00839e58  a9 fc ff 1a                                      bne #0x839104
00839e5c  ad fc ff ea                                      b #0x839118
00839e60  18 03 1f e5                                      ldr r0, [pc, #-0x318]
00839e64  00 00 8f e0                                      add r0, pc, r0
00839e68  45 c6 ff eb                                      bl #0x82b784
00839e6c  68 30 94 e5                                      ldr r3, [r4, #0x68]
00839e70  00 00 53 e3                                      cmp r3, #0
00839e74  a2 fc ff 1a                                      bne #0x839104
00839e78  a6 fc ff ea                                      b #0x839118

; FUNCTION 0x00839e7c, declared_size=208, range_size=208, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby25mpSendEstablishConnectionEv
; demangled: GLXPlayerMPLobby::mpSendEstablishConnection()
; decoder-mode: arm
00839e7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00839e80  00 40 a0 e1                                      mov r4, r0
00839e84  b8 00 9f e5                                      ldr r0, [pc, #0xb8]
00839e88  00 00 8f e0                                      add r0, pc, r0
00839e8c  3c c6 ff eb                                      bl #0x82b784
00839e90  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
00839e94  00 00 53 e3                                      cmp r3, #0
00839e98  21 00 00 1a                                      bne #0x839f24
00839e9c  74 30 94 e5                                      ldr r3, [r4, #0x74]
00839ea0  00 00 53 e3                                      cmp r3, #0
00839ea4  0c 00 00 0a                                      beq #0x839edc
00839ea8  00 30 94 e5                                      ldr r3, [r4]
00839eac  04 00 a0 e1                                      mov r0, r4
00839eb0  0f e0 a0 e1                                      mov lr, pc
00839eb4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00839eb8  74 30 94 e5                                      ldr r3, [r4, #0x74]
00839ebc  00 00 53 e3                                      cmp r3, #0
00839ec0  03 00 00 0a                                      beq #0x839ed4
00839ec4  03 00 a0 e1                                      mov r0, r3
00839ec8  00 30 93 e5                                      ldr r3, [r3]
00839ecc  0f e0 a0 e1                                      mov lr, pc
00839ed0  04 f0 93 e5                                      ldr pc, [r3, #4]
00839ed4  00 30 a0 e3                                      mov r3, #0
00839ed8  74 30 84 e5                                      str r3, [r4, #0x74]
00839edc  00 30 e0 e3                                      mvn r3, #0
00839ee0  50 30 84 e5                                      str r3, [r4, #0x50]
00839ee4  58 00 02 e3                                      movw r0, #0x2058
00839ee8  67 52 eb eb                                      bl #0x30e88c
00839eec  58 10 94 e5                                      ldr r1, [r4, #0x58]
00839ef0  00 50 a0 e1                                      mov r5, r0
00839ef4  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
00839ef8  99 3c 00 eb                                      bl #0x849164
00839efc  05 00 a0 e1                                      mov r0, r5
00839f00  74 50 84 e5                                      str r5, [r4, #0x74]
00839f04  08 10 84 e2                                      add r1, r4, #8
00839f08  56 33 00 eb                                      bl #0x846c68
00839f0c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00839f10  01 30 a0 e3                                      mov r3, #1
00839f14  6c 30 84 e5                                      str r3, [r4, #0x6c]
00839f18  00 00 8f e0                                      add r0, pc, r0
00839f1c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00839f20  17 c6 ff ea                                      b #0x82b784
00839f24  04 30 94 e5                                      ldr r3, [r4, #4]
00839f28  00 20 a0 e3                                      mov r2, #0
00839f2c  50 20 84 e5                                      str r2, [r4, #0x50]
00839f30  03 00 a0 e1                                      mov r0, r3
00839f34  00 30 93 e5                                      ldr r3, [r3]
00839f38  0f e0 a0 e1                                      mov lr, pc
00839f3c  08 f0 93 e5                                      ldr pc, [r3, #8]
00839f40  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00839f44  b8 3c 0d 00 90 37 0d 00                          .byte 0xb8, 0x3c, 0x0d, 0x00, 0x90, 0x37, 0x0d, 0x00

; FUNCTION 0x00839f4c, declared_size=1368, range_size=1368, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby10LoadConfigEv
; demangled: GLXPlayerMPLobby::LoadConfig()
; decoder-mode: arm
00839f4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00839f50  30 15 9f e5                                      ldr r1, [pc, #0x530]
00839f54  30 25 9f e5                                      ldr r2, [pc, #0x530]
00839f58  99 df 4d e2                                      sub sp, sp, #0x264
00839f5c  01 10 8f e0                                      add r1, pc, r1
00839f60  02 30 91 e7                                      ldr r3, [r1, r2]
00839f64  24 45 9f e5                                      ldr r4, [pc, #0x524]
00839f68  1c 10 8d e5                                      str r1, [sp, #0x1c]
00839f6c  20 15 9f e5                                      ldr r1, [pc, #0x520]
00839f70  00 30 93 e5                                      ldr r3, [r3]
00839f74  04 40 8f e0                                      add r4, pc, r4
00839f78  20 00 8d e5                                      str r0, [sp, #0x20]
00839f7c  01 10 8f e0                                      add r1, pc, r1
00839f80  04 00 a0 e1                                      mov r0, r4
00839f84  5c 32 8d e5                                      str r3, [sp, #0x25c]
00839f88  28 20 8d e5                                      str r2, [sp, #0x28]
00839f8c  a0 c4 ff eb                                      bl #0x82b214
00839f90  00 30 50 e2                                      subs r3, r0, #0
00839f94  30 30 8d e5                                      str r3, [sp, #0x30]
00839f98  33 01 00 0a                                      beq #0x83a46c
00839f9c  75 c4 ff eb                                      bl #0x82b178
00839fa0  01 b0 80 e2                                      add fp, r0, #1
00839fa4  00 40 a0 e1                                      mov r4, r0
00839fa8  0b 00 a0 e1                                      mov r0, fp
00839fac  47 50 eb eb                                      bl #0x30e0d0
00839fb0  0b 20 a0 e1                                      mov r2, fp
00839fb4  00 10 a0 e3                                      mov r1, #0
00839fb8  0c 00 8d e5                                      str r0, [sp, #0xc]
00839fbc  e8 c4 ff eb                                      bl #0x82b364
00839fc0  30 30 9d e5                                      ldr r3, [sp, #0x30]
00839fc4  04 10 a0 e1                                      mov r1, r4
00839fc8  01 20 a0 e3                                      mov r2, #1
00839fcc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00839fd0  84 c4 ff eb                                      bl #0x82b1e8
00839fd4  0b 00 a0 e1                                      mov r0, fp
00839fd8  3c 50 eb eb                                      bl #0x30e0d0
00839fdc  0b 20 a0 e1                                      mov r2, fp
00839fe0  00 50 a0 e1                                      mov r5, r0
00839fe4  00 10 a0 e3                                      mov r1, #0
00839fe8  dd c4 ff eb                                      bl #0x82b364
00839fec  05 10 a0 e1                                      mov r1, r5
00839ff0  00 20 a0 e3                                      mov r2, #0
00839ff4  0a 30 a0 e3                                      mov r3, #0xa
00839ff8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00839ffc  f4 c2 ff eb                                      bl #0x82abd4
0083a000  05 00 a0 e1                                      mov r0, r5
0083a004  e8 c3 ff eb                                      bl #0x82afac
0083a008  00 00 50 e3                                      cmp r0, #0
0083a00c  00 a0 a0 d3                                      movle sl, #0
0083a010  5f 00 00 da                                      ble #0x83a194
0083a014  01 00 40 e2                                      sub r0, r0, #1
0083a018  d0 30 95 e1                                      ldrsb r3, [r5, r0]
0083a01c  00 a0 a0 e3                                      mov sl, #0
0083a020  8f 8f 8d e2                                      add r8, sp, #0x23c
0083a024  0d 00 53 e3                                      cmp r3, #0xd
0083a028  00 30 a0 03                                      moveq r3, #0
0083a02c  00 30 c5 07                                      strbeq r3, [r5, r0]
0083a030  60 34 9f e5                                      ldr r3, [pc, #0x460]
0083a034  20 20 9d e5                                      ldr r2, [sp, #0x20]
0083a038  6f cf 8d e2                                      add ip, sp, #0x1bc
0083a03c  03 30 8f e0                                      add r3, pc, r3
0083a040  14 30 8d e5                                      str r3, [sp, #0x14]
0083a044  50 34 9f e5                                      ldr r3, [pc, #0x450]
0083a048  01 90 a0 e3                                      mov sb, #1
0083a04c  3c 60 8d e2                                      add r6, sp, #0x3c
0083a050  03 30 8f e0                                      add r3, pc, r3
0083a054  18 30 8d e5                                      str r3, [sp, #0x18]
0083a058  7c 20 92 e5                                      ldr r2, [r2, #0x7c]
0083a05c  4f 3f 8d e2                                      add r3, sp, #0x13c
0083a060  0a 40 a0 e1                                      mov r4, sl
0083a064  10 20 8d e5                                      str r2, [sp, #0x10]
0083a068  08 70 a0 e1                                      mov r7, r8
0083a06c  24 30 8d e5                                      str r3, [sp, #0x24]
0083a070  2c c0 8d e5                                      str ip, [sp, #0x2c]
0083a074  08 30 a0 e1                                      mov r3, r8
0083a078  04 40 83 e4                                      str r4, [r3], #4
0083a07c  04 30 83 e2                                      add r3, r3, #4
0083a080  04 40 83 e4                                      str r4, [r3], #4
0083a084  04 40 83 e4                                      str r4, [r3], #4
0083a088  04 40 83 e4                                      str r4, [r3], #4
0083a08c  04 40 83 e4                                      str r4, [r3], #4
0083a090  04 40 83 e4                                      str r4, [r3], #4
0083a094  04 40 88 e5                                      str r4, [r8, #4]
0083a098  00 40 83 e5                                      str r4, [r3]
0083a09c  04 10 a0 e1                                      mov r1, r4
0083a0a0  01 2c a0 e3                                      mov r2, #0x100
0083a0a4  06 00 a0 e1                                      mov r0, r6
0083a0a8  ec 50 eb eb                                      bl #0x30e460
0083a0ac  04 20 a0 e1                                      mov r2, r4
0083a0b0  3a 30 a0 e3                                      mov r3, #0x3a
0083a0b4  07 10 a0 e1                                      mov r1, r7
0083a0b8  05 00 a0 e1                                      mov r0, r5
0083a0bc  c4 c2 ff eb                                      bl #0x82abd4
0083a0c0  3a 30 a0 e3                                      mov r3, #0x3a
0083a0c4  06 10 a0 e1                                      mov r1, r6
0083a0c8  01 20 a0 e3                                      mov r2, #1
0083a0cc  05 00 a0 e1                                      mov r0, r5
0083a0d0  bf c2 ff eb                                      bl #0x82abd4
0083a0d4  04 10 a0 e1                                      mov r1, r4
0083a0d8  00 80 a0 e1                                      mov r8, r0
0083a0dc  01 2c a0 e3                                      mov r2, #0x100
0083a0e0  06 00 a0 e1                                      mov r0, r6
0083a0e4  9e c4 ff eb                                      bl #0x82b364
0083a0e8  05 00 a0 e1                                      mov r0, r5
0083a0ec  ae c3 ff eb                                      bl #0x82afac
0083a0f0  08 10 85 e0                                      add r1, r5, r8
0083a0f4  00 20 68 e0                                      rsb r2, r8, r0
0083a0f8  06 00 a0 e1                                      mov r0, r6
0083a0fc  93 c4 ff eb                                      bl #0x82b350
0083a100  07 00 a0 e1                                      mov r0, r7
0083a104  c2 c3 ff eb                                      bl #0x82b014
0083a108  06 00 a0 e1                                      mov r0, r6
0083a10c  c0 c3 ff eb                                      bl #0x82b014
0083a110  07 00 a0 e1                                      mov r0, r7
0083a114  14 10 9d e5                                      ldr r1, [sp, #0x14]
0083a118  8b c4 ff eb                                      bl #0x82b34c
0083a11c  00 00 50 e3                                      cmp r0, #0
0083a120  07 80 a0 e1                                      mov r8, r7
0083a124  7c 00 00 0a                                      beq #0x83a31c
0083a128  07 00 a0 e1                                      mov r0, r7
0083a12c  18 10 9d e5                                      ldr r1, [sp, #0x18]
0083a130  85 c4 ff eb                                      bl #0x82b34c
0083a134  00 00 50 e3                                      cmp r0, #0
0083a138  02 00 00 1a                                      bne #0x83a148
0083a13c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0083a140  00 00 51 e3                                      cmp r1, #0
0083a144  79 00 00 0a                                      beq #0x83a330
0083a148  05 00 a0 e1                                      mov r0, r5
0083a14c  00 10 a0 e3                                      mov r1, #0
0083a150  0b 20 a0 e1                                      mov r2, fp
0083a154  82 c4 ff eb                                      bl #0x82b364
0083a158  05 10 a0 e1                                      mov r1, r5
0083a15c  09 20 a0 e1                                      mov r2, sb
0083a160  0a 30 a0 e3                                      mov r3, #0xa
0083a164  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0083a168  99 c2 ff eb                                      bl #0x82abd4
0083a16c  05 00 a0 e1                                      mov r0, r5
0083a170  8d c3 ff eb                                      bl #0x82afac
0083a174  00 00 50 e3                                      cmp r0, #0
0083a178  05 00 00 da                                      ble #0x83a194
0083a17c  01 00 40 e2                                      sub r0, r0, #1
0083a180  d0 30 95 e1                                      ldrsb r3, [r5, r0]
0083a184  01 90 89 e2                                      add sb, sb, #1
0083a188  0d 00 53 e3                                      cmp r3, #0xd
0083a18c  00 40 c5 07                                      strbeq r4, [r5, r0]
0083a190  b7 ff ff ea                                      b #0x83a074
0083a194  00 00 55 e3                                      cmp r5, #0
0083a198  01 00 00 0a                                      beq #0x83a1a4
0083a19c  05 00 a0 e1                                      mov r0, r5
0083a1a0  42 50 eb eb                                      bl #0x30e2b0
0083a1a4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0083a1a8  00 00 52 e3                                      cmp r2, #0
0083a1ac  01 00 00 0a                                      beq #0x83a1b8
0083a1b0  02 00 a0 e1                                      mov r0, r2
0083a1b4  3d 50 eb eb                                      bl #0x30e2b0
0083a1b8  30 00 9d e5                                      ldr r0, [sp, #0x30]
0083a1bc  2e c3 ff eb                                      bl #0x82ae7c
0083a1c0  00 00 5a e3                                      cmp sl, #0
0083a1c4  4a 00 00 1a                                      bne #0x83a2f4
0083a1c8  20 30 9d e5                                      ldr r3, [sp, #0x20]
0083a1cc  7c 60 93 e5                                      ldr r6, [r3, #0x7c]
0083a1d0  00 00 56 e3                                      cmp r6, #0
0083a1d4  46 00 00 0a                                      beq #0x83a2f4
0083a1d8  6f 4f 8d e2                                      add r4, sp, #0x1bc
0083a1dc  4f 5f 8d e2                                      add r5, sp, #0x13c
0083a1e0  0a 10 a0 e1                                      mov r1, sl
0083a1e4  80 20 a0 e3                                      mov r2, #0x80
0083a1e8  04 00 a0 e1                                      mov r0, r4
0083a1ec  9b 50 eb eb                                      bl #0x30e460
0083a1f0  80 20 a0 e3                                      mov r2, #0x80
0083a1f4  0a 10 a0 e1                                      mov r1, sl
0083a1f8  05 00 a0 e1                                      mov r0, r5
0083a1fc  97 50 eb eb                                      bl #0x30e460
0083a200  04 00 a0 e1                                      mov r0, r4
0083a204  0a 10 a0 e1                                      mov r1, sl
0083a208  80 20 a0 e3                                      mov r2, #0x80
0083a20c  54 c4 ff eb                                      bl #0x82b364
0083a210  05 00 a0 e1                                      mov r0, r5
0083a214  0a 10 a0 e1                                      mov r1, sl
0083a218  80 20 a0 e3                                      mov r2, #0x80
0083a21c  50 c4 ff eb                                      bl #0x82b364
0083a220  06 00 a0 e1                                      mov r0, r6
0083a224  04 10 a0 e1                                      mov r1, r4
0083a228  2f 30 a0 e3                                      mov r3, #0x2f
0083a22c  02 20 a0 e3                                      mov r2, #2
0083a230  67 c2 ff eb                                      bl #0x82abd4
0083a234  3a 30 a0 e3                                      mov r3, #0x3a
0083a238  05 10 a0 e1                                      mov r1, r5
0083a23c  0a 20 a0 e1                                      mov r2, sl
0083a240  04 00 a0 e1                                      mov r0, r4
0083a244  62 c2 ff eb                                      bl #0x82abd4
0083a248  04 00 a0 e1                                      mov r0, r4
0083a24c  56 c3 ff eb                                      bl #0x82afac
0083a250  00 80 a0 e1                                      mov r8, r0
0083a254  05 00 a0 e1                                      mov r0, r5
0083a258  53 c3 ff eb                                      bl #0x82afac
0083a25c  01 60 80 e2                                      add r6, r0, #1
0083a260  00 70 a0 e1                                      mov r7, r0
0083a264  06 00 a0 e1                                      mov r0, r6
0083a268  98 4f eb eb                                      bl #0x30e0d0
0083a26c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0083a270  0a 10 a0 e1                                      mov r1, sl
0083a274  06 20 a0 e1                                      mov r2, r6
0083a278  58 00 8c e5                                      str r0, [ip, #0x58]
0083a27c  38 c4 ff eb                                      bl #0x82b364
0083a280  20 20 9d e5                                      ldr r2, [sp, #0x20]
0083a284  05 10 a0 e1                                      mov r1, r5
0083a288  58 00 92 e5                                      ldr r0, [r2, #0x58]
0083a28c  07 20 a0 e1                                      mov r2, r7
0083a290  2e c4 ff eb                                      bl #0x82b350
0083a294  06 00 58 e1                                      cmp r8, r6
0083a298  0a 00 a0 d1                                      movle r0, sl
0083a29c  15 00 00 da                                      ble #0x83a2f8
0083a2a0  08 70 67 e0                                      rsb r7, r7, r8
0083a2a4  07 00 a0 e1                                      mov r0, r7
0083a2a8  88 4f eb eb                                      bl #0x30e0d0
0083a2ac  0a 10 a0 e1                                      mov r1, sl
0083a2b0  00 50 a0 e1                                      mov r5, r0
0083a2b4  07 20 a0 e1                                      mov r2, r7
0083a2b8  29 c4 ff eb                                      bl #0x82b364
0083a2bc  06 10 84 e0                                      add r1, r4, r6
0083a2c0  01 20 47 e2                                      sub r2, r7, #1
0083a2c4  05 00 a0 e1                                      mov r0, r5
0083a2c8  20 c4 ff eb                                      bl #0x82b350
0083a2cc  05 00 a0 e1                                      mov r0, r5
0083a2d0  12 c4 ff eb                                      bl #0x82b320
0083a2d4  20 30 9d e5                                      ldr r3, [sp, #0x20]
0083a2d8  00 00 55 e3                                      cmp r5, #0
0083a2dc  5c 00 83 e5                                      str r0, [r3, #0x5c]
0083a2e0  03 00 00 0a                                      beq #0x83a2f4
0083a2e4  05 00 a0 e1                                      mov r0, r5
0083a2e8  f0 4f eb eb                                      bl #0x30e2b0
0083a2ec  01 00 a0 e3                                      mov r0, #1
0083a2f0  00 00 00 ea                                      b #0x83a2f8
0083a2f4  01 00 a0 e3                                      mov r0, #1
0083a2f8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0083a2fc  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0083a300  5c 22 9d e5                                      ldr r2, [sp, #0x25c]
0083a304  0c 30 91 e7                                      ldr r3, [r1, ip]
0083a308  00 30 93 e5                                      ldr r3, [r3]
0083a30c  03 00 52 e1                                      cmp r2, r3
0083a310  5b 00 00 1a                                      bne #0x83a484
0083a314  99 df 8d e2                                      add sp, sp, #0x264
0083a318  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083a31c  06 00 a0 e1                                      mov r0, r6
0083a320  fe c3 ff eb                                      bl #0x82b320
0083a324  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0083a328  48 00 8c e5                                      str r0, [ip, #0x48]
0083a32c  7d ff ff ea                                      b #0x83a128
0083a330  80 20 a0 e3                                      mov r2, #0x80
0083a334  24 00 9d e5                                      ldr r0, [sp, #0x24]
0083a338  48 50 eb eb                                      bl #0x30e460
0083a33c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0083a340  80 20 a0 e3                                      mov r2, #0x80
0083a344  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0083a348  44 50 eb eb                                      bl #0x30e460
0083a34c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0083a350  10 10 9d e5                                      ldr r1, [sp, #0x10]
0083a354  80 20 a0 e3                                      mov r2, #0x80
0083a358  01 c4 ff eb                                      bl #0x82b364
0083a35c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0083a360  10 10 9d e5                                      ldr r1, [sp, #0x10]
0083a364  80 20 a0 e3                                      mov r2, #0x80
0083a368  fd c3 ff eb                                      bl #0x82b364
0083a36c  24 10 9d e5                                      ldr r1, [sp, #0x24]
0083a370  2f 30 a0 e3                                      mov r3, #0x2f
0083a374  02 20 a0 e3                                      mov r2, #2
0083a378  06 00 a0 e1                                      mov r0, r6
0083a37c  14 c2 ff eb                                      bl #0x82abd4
0083a380  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0083a384  10 20 9d e5                                      ldr r2, [sp, #0x10]
0083a388  3a 30 a0 e3                                      mov r3, #0x3a
0083a38c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0083a390  0f c2 ff eb                                      bl #0x82abd4
0083a394  24 00 9d e5                                      ldr r0, [sp, #0x24]
0083a398  03 c3 ff eb                                      bl #0x82afac
0083a39c  00 c0 a0 e1                                      mov ip, r0
0083a3a0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0083a3a4  08 c0 8d e5                                      str ip, [sp, #8]
0083a3a8  ff c2 ff eb                                      bl #0x82afac
0083a3ac  01 20 80 e2                                      add r2, r0, #1
0083a3b0  00 30 a0 e1                                      mov r3, r0
0083a3b4  02 00 a0 e1                                      mov r0, r2
0083a3b8  04 30 8d e5                                      str r3, [sp, #4]
0083a3bc  34 20 8d e5                                      str r2, [sp, #0x34]
0083a3c0  42 4f eb eb                                      bl #0x30e0d0
0083a3c4  20 10 9d e5                                      ldr r1, [sp, #0x20]
0083a3c8  58 00 81 e5                                      str r0, [r1, #0x58]
0083a3cc  10 10 9d e5                                      ldr r1, [sp, #0x10]
0083a3d0  34 20 9d e5                                      ldr r2, [sp, #0x34]
0083a3d4  e2 c3 ff eb                                      bl #0x82b364
0083a3d8  20 20 9d e5                                      ldr r2, [sp, #0x20]
0083a3dc  04 30 9d e5                                      ldr r3, [sp, #4]
0083a3e0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0083a3e4  58 00 92 e5                                      ldr r0, [r2, #0x58]
0083a3e8  03 20 a0 e1                                      mov r2, r3
0083a3ec  d7 c3 ff eb                                      bl #0x82b350
0083a3f0  08 c0 9d e5                                      ldr ip, [sp, #8]
0083a3f4  34 10 9d e5                                      ldr r1, [sp, #0x34]
0083a3f8  04 30 9d e5                                      ldr r3, [sp, #4]
0083a3fc  01 00 5c e1                                      cmp ip, r1
0083a400  50 ff ff da                                      ble #0x83a148
0083a404  0c 30 63 e0                                      rsb r3, r3, ip
0083a408  03 00 a0 e1                                      mov r0, r3
0083a40c  04 30 8d e5                                      str r3, [sp, #4]
0083a410  2e 4f eb eb                                      bl #0x30e0d0
0083a414  04 30 9d e5                                      ldr r3, [sp, #4]
0083a418  10 10 9d e5                                      ldr r1, [sp, #0x10]
0083a41c  00 a0 a0 e1                                      mov sl, r0
0083a420  03 20 a0 e1                                      mov r2, r3
0083a424  ce c3 ff eb                                      bl #0x82b364
0083a428  24 20 9d e5                                      ldr r2, [sp, #0x24]
0083a42c  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0083a430  04 30 9d e5                                      ldr r3, [sp, #4]
0083a434  0a 00 a0 e1                                      mov r0, sl
0083a438  0c 10 82 e0                                      add r1, r2, ip
0083a43c  01 20 43 e2                                      sub r2, r3, #1
0083a440  c2 c3 ff eb                                      bl #0x82b350
0083a444  0a 00 a0 e1                                      mov r0, sl
0083a448  b4 c3 ff eb                                      bl #0x82b320
0083a44c  20 10 9d e5                                      ldr r1, [sp, #0x20]
0083a450  00 00 5a e3                                      cmp sl, #0
0083a454  5c 00 81 e5                                      str r0, [r1, #0x5c]
0083a458  01 00 00 0a                                      beq #0x83a464
0083a45c  0a 00 a0 e1                                      mov r0, sl
0083a460  92 4f eb eb                                      bl #0x30e2b0
0083a464  01 a0 a0 e3                                      mov sl, #1
0083a468  36 ff ff ea                                      b #0x83a148
0083a46c  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
0083a470  04 10 a0 e1                                      mov r1, r4
0083a474  00 00 8f e0                                      add r0, pc, r0
0083a478  c1 c4 ff eb                                      bl #0x82b784
0083a47c  30 00 9d e5                                      ldr r0, [sp, #0x30]
0083a480  9c ff ff ea                                      b #0x83a2f8
0083a484  a1 4f eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083a488  34 ab 15 00 ac 40 00 00 b4 2a 0d 00 ac 47 0a 00  .byte 0x34, 0xab, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb4, 0x2a, 0x0d, 0x00, 0xac, 0x47, 0x0a, 0x00
0083a498  d4 29 0d 00 48 2b 0d 00 fc 36 0d 00              .byte 0xd4, 0x29, 0x0d, 0x00, 0x48, 0x2b, 0x0d, 0x00, 0xfc, 0x36, 0x0d, 0x00

; FUNCTION 0x0083a4a4, declared_size=76, range_size=76, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby4InitEv
; demangled: GLXPlayerMPLobby::Init()
; decoder-mode: arm
0083a4a4  0a 20 a0 e3                                      mov r2, #0xa
0083a4a8  70 40 2d e9                                      push {r4, r5, r6, lr}
0083a4ac  00 30 a0 e3                                      mov r3, #0
0083a4b0  00 50 e0 e3                                      mvn r5, #0
0083a4b4  61 20 c0 e5                                      strb r2, [r0, #0x61]
0083a4b8  15 20 a0 e3                                      mov r2, #0x15
0083a4bc  00 40 a0 e1                                      mov r4, r0
0083a4c0  84 20 80 e5                                      str r2, [r0, #0x84]
0083a4c4  80 30 c0 e5                                      strb r3, [r0, #0x80]
0083a4c8  74 30 80 e5                                      str r3, [r0, #0x74]
0083a4cc  63 50 c0 e5                                      strb r5, [r0, #0x63]
0083a4d0  64 50 c0 e5                                      strb r5, [r0, #0x64]
0083a4d4  60 30 c0 e5                                      strb r3, [r0, #0x60]
0083a4d8  62 30 c0 e5                                      strb r3, [r0, #0x62]
0083a4dc  4c 30 80 e5                                      str r3, [r0, #0x4c]
0083a4e0  78 30 c0 e5                                      strb r3, [r0, #0x78]
0083a4e4  98 fe ff eb                                      bl #0x839f4c
0083a4e8  88 50 84 e5                                      str r5, [r4, #0x88]
0083a4ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0083a4f0, declared_size=160, range_size=160, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobbyD1Ev
; demangled: GLXPlayerMPLobby::~GLXPlayerMPLobby()
; decoder-mode: arm
0083a4f0  10 40 2d e9                                      push {r4, lr}
0083a4f4  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0083a4f8  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0083a4fc  00 40 a0 e1                                      mov r4, r0
0083a500  03 30 8f e0                                      add r3, pc, r3
0083a504  7c 00 90 e5                                      ldr r0, [r0, #0x7c]
0083a508  02 20 93 e7                                      ldr r2, [r3, r2]
0083a50c  00 00 50 e3                                      cmp r0, #0
0083a510  08 20 82 e2                                      add r2, r2, #8
0083a514  00 20 84 e5                                      str r2, [r4]
0083a518  02 00 00 0a                                      beq #0x83a528
0083a51c  63 4f eb eb                                      bl #0x30e2b0
0083a520  00 30 a0 e3                                      mov r3, #0
0083a524  7c 30 84 e5                                      str r3, [r4, #0x7c]
0083a528  58 00 94 e5                                      ldr r0, [r4, #0x58]
0083a52c  00 00 50 e3                                      cmp r0, #0
0083a530  02 00 00 0a                                      beq #0x83a540
0083a534  5d 4f eb eb                                      bl #0x30e2b0
0083a538  00 30 a0 e3                                      mov r3, #0
0083a53c  58 30 84 e5                                      str r3, [r4, #0x58]
0083a540  74 30 94 e5                                      ldr r3, [r4, #0x74]
0083a544  00 00 53 e3                                      cmp r3, #0
0083a548  0a 00 00 0a                                      beq #0x83a578
0083a54c  04 00 a0 e1                                      mov r0, r4
0083a550  a6 f9 ff eb                                      bl #0x838bf0
0083a554  74 30 94 e5                                      ldr r3, [r4, #0x74]
0083a558  00 00 53 e3                                      cmp r3, #0
0083a55c  05 00 00 0a                                      beq #0x83a578
0083a560  03 00 a0 e1                                      mov r0, r3
0083a564  00 30 93 e5                                      ldr r3, [r3]
0083a568  0f e0 a0 e1                                      mov lr, pc
0083a56c  04 f0 93 e5                                      ldr pc, [r3, #4]
0083a570  00 30 a0 e3                                      mov r3, #0
0083a574  74 30 84 e5                                      str r3, [r4, #0x74]
0083a578  04 00 a0 e1                                      mov r0, r4
0083a57c  6b 42 00 eb                                      bl #0x84af30
0083a580  04 00 a0 e1                                      mov r0, r4
0083a584  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0083a588  90 a5 15 00 48 46 00 00                          .byte 0x90, 0xa5, 0x15, 0x00, 0x48, 0x46, 0x00, 0x00

; FUNCTION 0x0083a590, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobbyD0Ev
; demangled: GLXPlayerMPLobby::~GLXPlayerMPLobby()
; decoder-mode: arm
0083a590  10 40 2d e9                                      push {r4, lr}
0083a594  00 40 a0 e1                                      mov r4, r0
0083a598  d4 ff ff eb                                      bl #0x83a4f0
0083a59c  04 00 a0 e1                                      mov r0, r4
0083a5a0  42 4f eb eb                                      bl #0x30e2b0
0083a5a4  04 00 a0 e1                                      mov r0, r4
0083a5a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0083a5ac, declared_size=160, range_size=160, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobbyD2Ev
; demangled: GLXPlayerMPLobby::~GLXPlayerMPLobby()
; decoder-mode: arm
0083a5ac  10 40 2d e9                                      push {r4, lr}
0083a5b0  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0083a5b4  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0083a5b8  00 40 a0 e1                                      mov r4, r0
0083a5bc  03 30 8f e0                                      add r3, pc, r3
0083a5c0  7c 00 90 e5                                      ldr r0, [r0, #0x7c]
0083a5c4  02 20 93 e7                                      ldr r2, [r3, r2]
0083a5c8  00 00 50 e3                                      cmp r0, #0
0083a5cc  08 20 82 e2                                      add r2, r2, #8
0083a5d0  00 20 84 e5                                      str r2, [r4]
0083a5d4  02 00 00 0a                                      beq #0x83a5e4
0083a5d8  34 4f eb eb                                      bl #0x30e2b0
0083a5dc  00 30 a0 e3                                      mov r3, #0
0083a5e0  7c 30 84 e5                                      str r3, [r4, #0x7c]
0083a5e4  58 00 94 e5                                      ldr r0, [r4, #0x58]
0083a5e8  00 00 50 e3                                      cmp r0, #0
0083a5ec  02 00 00 0a                                      beq #0x83a5fc
0083a5f0  2e 4f eb eb                                      bl #0x30e2b0
0083a5f4  00 30 a0 e3                                      mov r3, #0
0083a5f8  58 30 84 e5                                      str r3, [r4, #0x58]
0083a5fc  74 30 94 e5                                      ldr r3, [r4, #0x74]
0083a600  00 00 53 e3                                      cmp r3, #0
0083a604  0a 00 00 0a                                      beq #0x83a634
0083a608  04 00 a0 e1                                      mov r0, r4
0083a60c  77 f9 ff eb                                      bl #0x838bf0
0083a610  74 30 94 e5                                      ldr r3, [r4, #0x74]
0083a614  00 00 53 e3                                      cmp r3, #0
0083a618  05 00 00 0a                                      beq #0x83a634
0083a61c  03 00 a0 e1                                      mov r0, r3
0083a620  00 30 93 e5                                      ldr r3, [r3]
0083a624  0f e0 a0 e1                                      mov lr, pc
0083a628  04 f0 93 e5                                      ldr pc, [r3, #4]
0083a62c  00 30 a0 e3                                      mov r3, #0
0083a630  74 30 84 e5                                      str r3, [r4, #0x74]
0083a634  04 00 a0 e1                                      mov r0, r4
0083a638  3c 42 00 eb                                      bl #0x84af30
0083a63c  04 00 a0 e1                                      mov r0, r4
0083a640  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0083a644  d4 a4 15 00 48 46 00 00                          .byte 0xd4, 0xa4, 0x15, 0x00, 0x48, 0x46, 0x00, 0x00

; FUNCTION 0x0083a64c, declared_size=124, range_size=124, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobbyC1EP23GLXPlayerMPBaseObserverPc
; demangled: GLXPlayerMPLobby::GLXPlayerMPLobby(GLXPlayerMPBaseObserver*, char*)
; decoder-mode: arm
0083a64c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083a650  68 40 9f e5                                      ldr r4, [pc, #0x68]
0083a654  00 50 a0 e1                                      mov r5, r0
0083a658  02 60 a0 e1                                      mov r6, r2
0083a65c  3c 41 00 eb                                      bl #0x84ab54
0083a660  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0083a664  04 40 8f e0                                      add r4, pc, r4
0083a668  00 70 a0 e3                                      mov r7, #0
0083a66c  03 30 94 e7                                      ldr r3, [r4, r3]
0083a670  00 00 56 e3                                      cmp r6, #0
0083a674  90 70 85 e5                                      str r7, [r5, #0x90]
0083a678  08 30 83 e2                                      add r3, r3, #8
0083a67c  00 30 85 e5                                      str r3, [r5]
0083a680  7c 70 85 e5                                      str r7, [r5, #0x7c]
0083a684  09 00 00 0a                                      beq #0x83a6b0
0083a688  06 00 a0 e1                                      mov r0, r6
0083a68c  46 c2 ff eb                                      bl #0x82afac
0083a690  00 40 a0 e1                                      mov r4, r0
0083a694  01 00 80 e2                                      add r0, r0, #1
0083a698  8c 4e eb eb                                      bl #0x30e0d0
0083a69c  7c 00 85 e5                                      str r0, [r5, #0x7c]
0083a6a0  04 70 c0 e7                                      strb r7, [r0, r4]
0083a6a4  06 10 a0 e1                                      mov r1, r6
0083a6a8  7c 00 95 e5                                      ldr r0, [r5, #0x7c]
0083a6ac  23 c3 ff eb                                      bl #0x82b340
0083a6b0  05 00 a0 e1                                      mov r0, r5
0083a6b4  7a ff ff eb                                      bl #0x83a4a4
0083a6b8  05 00 a0 e1                                      mov r0, r5
0083a6bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0083a6c0  2c a4 15 00 48 46 00 00                          .byte 0x2c, 0xa4, 0x15, 0x00, 0x48, 0x46, 0x00, 0x00

; FUNCTION 0x0083a6c8, declared_size=124, range_size=124, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobbyC2EP23GLXPlayerMPBaseObserverPc
; demangled: GLXPlayerMPLobby::GLXPlayerMPLobby(GLXPlayerMPBaseObserver*, char*)
; decoder-mode: arm
0083a6c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083a6cc  68 40 9f e5                                      ldr r4, [pc, #0x68]
0083a6d0  00 50 a0 e1                                      mov r5, r0
0083a6d4  02 60 a0 e1                                      mov r6, r2
0083a6d8  1d 41 00 eb                                      bl #0x84ab54
0083a6dc  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0083a6e0  04 40 8f e0                                      add r4, pc, r4
0083a6e4  00 70 a0 e3                                      mov r7, #0
0083a6e8  03 30 94 e7                                      ldr r3, [r4, r3]
0083a6ec  00 00 56 e3                                      cmp r6, #0
0083a6f0  90 70 85 e5                                      str r7, [r5, #0x90]
0083a6f4  08 30 83 e2                                      add r3, r3, #8
0083a6f8  00 30 85 e5                                      str r3, [r5]
0083a6fc  7c 70 85 e5                                      str r7, [r5, #0x7c]
0083a700  09 00 00 0a                                      beq #0x83a72c
0083a704  06 00 a0 e1                                      mov r0, r6
0083a708  27 c2 ff eb                                      bl #0x82afac
0083a70c  00 40 a0 e1                                      mov r4, r0
0083a710  01 00 80 e2                                      add r0, r0, #1
0083a714  6d 4e eb eb                                      bl #0x30e0d0
0083a718  7c 00 85 e5                                      str r0, [r5, #0x7c]
0083a71c  04 70 c0 e7                                      strb r7, [r0, r4]
0083a720  06 10 a0 e1                                      mov r1, r6
0083a724  7c 00 95 e5                                      ldr r0, [r5, #0x7c]
0083a728  04 c3 ff eb                                      bl #0x82b340
0083a72c  05 00 a0 e1                                      mov r0, r5
0083a730  5b ff ff eb                                      bl #0x83a4a4
0083a734  05 00 a0 e1                                      mov r0, r5
0083a738  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0083a73c  b0 a3 15 00 48 46 00 00                          .byte 0xb0, 0xa3, 0x15, 0x00, 0x48, 0x46, 0x00, 0x00

; FUNCTION 0x0083a744, declared_size=316, range_size=316, mode=arm
; class-group: GLXPlayerMPLobby
; alias: _ZN16GLXPlayerMPLobby31mpSendCreateLobbyWithGameCenterEPchhiS0_iS0_iP23CLobbyParameterAndQueryRSt4listISsSaISsEE
; demangled: GLXPlayerMPLobby::mpSendCreateLobbyWithGameCenter(char*, unsigned char, unsigned char, int, char*, int, char*, int, CLobbyParameterAndQuery*, std::list<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&)
; decoder-mode: arm
0083a744  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083a748  00 50 a0 e1                                      mov r5, r0
0083a74c  24 01 9f e5                                      ldr r0, [pc, #0x124]
0083a750  34 d0 4d e2                                      sub sp, sp, #0x34
0083a754  03 80 a0 e1                                      mov r8, r3
0083a758  00 00 8f e0                                      add r0, pc, r0
0083a75c  01 70 a0 e1                                      mov r7, r1
0083a760  02 60 a0 e1                                      mov r6, r2
0083a764  70 90 9d e5                                      ldr sb, [sp, #0x70]
0083a768  05 c4 ff eb                                      bl #0x82b784
0083a76c  60 30 d5 e5                                      ldrb r3, [r5, #0x60]
0083a770  01 00 53 e3                                      cmp r3, #1
0083a774  37 00 00 9a                                      bls #0x83a858
0083a778  00 30 e0 e3                                      mvn r3, #0
0083a77c  50 30 85 e5                                      str r3, [r5, #0x50]
0083a780  28 40 8d e2                                      add r4, sp, #0x28
0083a784  00 a0 99 e5                                      ldr sl, [sb]
0083a788  28 40 8d e5                                      str r4, [sp, #0x28]
0083a78c  2c 40 8d e5                                      str r4, [sp, #0x2c]
0083a790  74 30 95 e5                                      ldr r3, [r5, #0x74]
0083a794  09 00 5a e1                                      cmp sl, sb
0083a798  24 30 8d e5                                      str r3, [sp, #0x24]
0083a79c  48 b0 95 e5                                      ldr fp, [r5, #0x48]
0083a7a0  0a 00 00 0a                                      beq #0x83a7d0
0083a7a4  08 10 8a e2                                      add r1, sl, #8
0083a7a8  04 00 a0 e1                                      mov r0, r4
0083a7ac  70 7c f1 eb                                      bl #0x499974
0083a7b0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0083a7b4  00 40 80 e5                                      str r4, [r0]
0083a7b8  04 30 80 e5                                      str r3, [r0, #4]
0083a7bc  00 00 83 e5                                      str r0, [r3]
0083a7c0  2c 00 8d e5                                      str r0, [sp, #0x2c]
0083a7c4  00 a0 9a e5                                      ldr sl, [sl]
0083a7c8  0a 00 59 e1                                      cmp sb, sl
0083a7cc  f4 ff ff 1a                                      bne #0x83a7a4
0083a7d0  58 c0 9d e5                                      ldr ip, [sp, #0x58]
0083a7d4  06 30 a0 e1                                      mov r3, r6
0083a7d8  0b 10 a0 e1                                      mov r1, fp
0083a7dc  04 c0 8d e5                                      str ip, [sp, #4]
0083a7e0  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
0083a7e4  07 20 a0 e1                                      mov r2, r7
0083a7e8  24 00 9d e5                                      ldr r0, [sp, #0x24]
0083a7ec  08 c0 8d e5                                      str ip, [sp, #8]
0083a7f0  60 c0 9d e5                                      ldr ip, [sp, #0x60]
0083a7f4  1c 40 8d e5                                      str r4, [sp, #0x1c]
0083a7f8  00 80 8d e5                                      str r8, [sp]
0083a7fc  0c c0 8d e5                                      str ip, [sp, #0xc]
0083a800  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0083a804  10 c0 8d e5                                      str ip, [sp, #0x10]
0083a808  68 c0 9d e5                                      ldr ip, [sp, #0x68]
0083a80c  14 c0 8d e5                                      str ip, [sp, #0x14]
0083a810  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
0083a814  18 c0 8d e5                                      str ip, [sp, #0x18]
0083a818  5c 35 00 eb                                      bl #0x847d90
0083a81c  04 00 a0 e1                                      mov r0, r4
0083a820  7e b9 eb eb                                      bl #0x328e20
0083a824  74 40 95 e5                                      ldr r4, [r5, #0x74]
0083a828  42 c2 ff eb                                      bl #0x82b138
0083a82c  50 30 02 e3                                      movw r3, #0x2050
0083a830  03 00 84 e7                                      str r0, [r4, r3]
0083a834  40 00 9f e5                                      ldr r0, [pc, #0x40]
0083a838  05 30 a0 e3                                      mov r3, #5
0083a83c  84 30 85 e5                                      str r3, [r5, #0x84]
0083a840  01 30 a0 e3                                      mov r3, #1
0083a844  80 30 c5 e5                                      strb r3, [r5, #0x80]
0083a848  00 00 8f e0                                      add r0, pc, r0
0083a84c  cc c3 ff eb                                      bl #0x82b784
0083a850  34 d0 8d e2                                      add sp, sp, #0x34
0083a854  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083a858  04 30 95 e5                                      ldr r3, [r5, #4]
0083a85c  32 10 a0 e3                                      mov r1, #0x32
0083a860  50 10 85 e5                                      str r1, [r5, #0x50]
0083a864  03 00 a0 e1                                      mov r0, r3
0083a868  00 30 93 e5                                      ldr r3, [r3]
0083a86c  0f e0 a0 e1                                      mov lr, pc
0083a870  00 f0 93 e5                                      ldr pc, [r3]
0083a874  f5 ff ff ea                                      b #0x83a850
; mapping-symbol data/literal pool
0083a878  48 34 0d 00 60 2e 0d 00                          .byte 0x48, 0x34, 0x0d, 0x00, 0x60, 0x2e, 0x0d, 0x00
