; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081eedc, declared_size=160, range_size=160, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserverC1ERKS_
; demangled: CMatchingGLLiveLobbyObserver::CMatchingGLLiveLobbyObserver(CMatchingGLLiveLobbyObserver const&)
; decoder-mode: arm
0081eedc  90 30 9f e5                                      ldr r3, [pc, #0x90]
0081eee0  90 20 9f e5                                      ldr r2, [pc, #0x90]
0081eee4  70 40 2d e9                                      push {r4, r5, r6, lr}
0081eee8  03 30 8f e0                                      add r3, pc, r3
0081eeec  02 20 93 e7                                      ldr r2, [r3, r2]
0081eef0  01 50 a0 e1                                      mov r5, r1
0081eef4  00 40 a0 e1                                      mov r4, r0
0081eef8  08 20 82 e2                                      add r2, r2, #8
0081eefc  00 20 80 e5                                      str r2, [r0]
0081ef00  04 20 d5 e5                                      ldrb r2, [r5, #4]
0081ef04  18 10 81 e2                                      add r1, r1, #0x18
0081ef08  18 00 80 e2                                      add r0, r0, #0x18
0081ef0c  04 20 c4 e5                                      strb r2, [r4, #4]
0081ef10  05 30 d5 e5                                      ldrb r3, [r5, #5]
0081ef14  05 30 c4 e5                                      strb r3, [r4, #5]
0081ef18  06 30 d5 e5                                      ldrb r3, [r5, #6]
0081ef1c  06 30 c4 e5                                      strb r3, [r4, #6]
0081ef20  07 30 d5 e5                                      ldrb r3, [r5, #7]
0081ef24  07 30 c4 e5                                      strb r3, [r4, #7]
0081ef28  08 30 95 e5                                      ldr r3, [r5, #8]
0081ef2c  08 30 84 e5                                      str r3, [r4, #8]
0081ef30  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0081ef34  0c 30 84 e5                                      str r3, [r4, #0xc]
0081ef38  10 30 95 e5                                      ldr r3, [r5, #0x10]
0081ef3c  10 30 84 e5                                      str r3, [r4, #0x10]
0081ef40  14 30 95 e5                                      ldr r3, [r5, #0x14]
0081ef44  14 30 84 e5                                      str r3, [r4, #0x14]
0081ef48  5d f7 ff eb                                      bl #0x81ccc4
0081ef4c  24 10 85 e2                                      add r1, r5, #0x24
0081ef50  24 00 84 e2                                      add r0, r4, #0x24
0081ef54  ef fa ff eb                                      bl #0x81db18
0081ef58  30 00 84 e2                                      add r0, r4, #0x30
0081ef5c  30 10 85 e2                                      add r1, r5, #0x30
0081ef60  1d 95 f2 eb                                      bl #0x4c43dc
0081ef64  48 30 95 e5                                      ldr r3, [r5, #0x48]
0081ef68  04 00 a0 e1                                      mov r0, r4
0081ef6c  48 30 84 e5                                      str r3, [r4, #0x48]
0081ef70  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081ef74  a8 5b 17 00 94 2b 00 00                          .byte 0xa8, 0x5b, 0x17, 0x00, 0x94, 0x2b, 0x00, 0x00

; FUNCTION 0x008212f8, declared_size=20, range_size=20, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver30OnMPEstablishConnectionSuccessEv
; demangled: CMatchingGLLiveLobbyObserver::OnMPEstablishConnectionSuccess()
; decoder-mode: arm
008212f8  00 30 a0 e3                                      mov r3, #0
008212fc  48 30 80 e5                                      str r3, [r0, #0x48]
00821300  01 30 a0 e3                                      mov r3, #1
00821304  05 30 c0 e5                                      strb r3, [r0, #5]
00821308  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082130c, declared_size=28, range_size=28, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver16OnMPLoginSuccessEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPLoginSuccess(DataPacket*)
; decoder-mode: arm
0082130c  00 30 a0 e3                                      mov r3, #0
00821310  48 30 80 e5                                      str r3, [r0, #0x48]
00821314  01 30 a0 e3                                      mov r3, #1
00821318  04 30 c0 e5                                      strb r3, [r0, #4]
0082131c  03 30 a0 e3                                      mov r3, #3
00821320  14 30 80 e5                                      str r3, [r0, #0x14]
00821324  1e ff 2f e1                                      bx lr

; FUNCTION 0x00821328, declared_size=12, range_size=12, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver24OnMPKickOutPlayerSuccessEv
; demangled: CMatchingGLLiveLobbyObserver::OnMPKickOutPlayerSuccess()
; decoder-mode: arm
00821328  00 30 a0 e3                                      mov r3, #0
0082132c  48 30 80 e5                                      str r3, [r0, #0x48]
00821330  1e ff 2f e1                                      bx lr

; FUNCTION 0x00821334, declared_size=24, range_size=24, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver20OnMPStartGameSuccessEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPStartGameSuccess(DataPacket*)
; decoder-mode: arm
00821334  00 30 a0 e3                                      mov r3, #0
00821338  08 20 a0 e3                                      mov r2, #8
0082133c  48 30 80 e5                                      str r3, [r0, #0x48]
00821340  14 20 80 e5                                      str r2, [r0, #0x14]
00821344  06 30 c0 e5                                      strb r3, [r0, #6]
00821348  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082134c, declared_size=28, range_size=28, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver16OnMPGetLobbyInfoEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPGetLobbyInfo(DataPacket*)
; decoder-mode: arm
0082134c  06 30 d0 e5                                      ldrb r3, [r0, #6]
00821350  00 00 53 e3                                      cmp r3, #0
00821354  1e ff 2f 01                                      bxeq lr
00821358  06 30 a0 e3                                      mov r3, #6
0082135c  14 30 80 e5                                      str r3, [r0, #0x14]
00821360  01 00 a0 e1                                      mov r0, r1
00821364  d9 ff ff ea                                      b #0x8212d0

; FUNCTION 0x00821368, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver19OnMPSetParamSuccessEi
; demangled: CMatchingGLLiveLobbyObserver::OnMPSetParamSuccess(int)
; decoder-mode: arm
00821368  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082136c, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver31OnMPProcessPushSetGameParameterEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushSetGameParameter(DataPacket*)
; decoder-mode: arm
0082136c  00 00 a0 e3                                      mov r0, #0
00821370  1e ff 2f e1                                      bx lr

; FUNCTION 0x00821374, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver28OnMPProcessPushSetUserStatusEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushSetUserStatus(DataPacket*)
; decoder-mode: arm
00821374  00 00 a0 e3                                      mov r0, #0
00821378  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082137c, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver31OnMPProcessPushGameserverParamsEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushGameserverParams(DataPacket*)
; decoder-mode: arm
0082137c  00 00 a0 e3                                      mov r0, #0
00821380  1e ff 2f e1                                      bx lr

; FUNCTION 0x00821384, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver28OnMPProcessPushAutomatchUserEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushAutomatchUser(DataPacket*)
; decoder-mode: arm
00821384  00 00 a0 e3                                      mov r0, #0
00821388  1e ff 2f e1                                      bx lr

; FUNCTION 0x008213ec, declared_size=92, range_size=92, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver13ClearRoomListEv
; demangled: CMatchingGLLiveLobbyObserver::ClearRoomList()
; decoder-mode: arm
008213ec  70 40 2d e9                                      push {r4, r5, r6, lr}
008213f0  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
008213f4  18 20 90 e5                                      ldr r2, [r0, #0x18]
008213f8  00 40 a0 e1                                      mov r4, r0
008213fc  03 00 52 e1                                      cmp r2, r3
00821400  0f 00 00 0a                                      beq #0x821444
00821404  00 60 a0 e3                                      mov r6, #0
00821408  04 50 13 e5                                      ldr r5, [r3, #-4]
0082140c  00 00 55 e3                                      cmp r5, #0
00821410  04 00 00 0a                                      beq #0x821428
00821414  05 00 a0 e1                                      mov r0, r5
00821418  db ff ff eb                                      bl #0x82138c
0082141c  05 00 a0 e1                                      mov r0, r5
00821420  06 bc eb eb                                      bl #0x310440
00821424  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00821428  04 60 03 e5                                      str r6, [r3, #-4]
0082142c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00821430  18 20 94 e5                                      ldr r2, [r4, #0x18]
00821434  04 30 43 e2                                      sub r3, r3, #4
00821438  02 00 53 e1                                      cmp r3, r2
0082143c  1c 30 84 e5                                      str r3, [r4, #0x1c]
00821440  f0 ff ff 1a                                      bne #0x821408
00821444  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00821448, declared_size=40, range_size=40, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver9TerminateEv
; demangled: CMatchingGLLiveLobbyObserver::Terminate()
; decoder-mode: arm
00821448  10 40 2d e9                                      push {r4, lr}
0082144c  00 40 a0 e1                                      mov r4, r0
00821450  e5 ff ff eb                                      bl #0x8213ec
00821454  00 30 a0 e3                                      mov r3, #0
00821458  01 20 a0 e3                                      mov r2, #1
0082145c  14 20 84 e5                                      str r2, [r4, #0x14]
00821460  48 30 84 e5                                      str r3, [r4, #0x48]
00821464  05 30 c4 e5                                      strb r3, [r4, #5]
00821468  04 30 c4 e5                                      strb r3, [r4, #4]
0082146c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00821470, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver21OnMPDisconnectSuccessEv
; demangled: CMatchingGLLiveLobbyObserver::OnMPDisconnectSuccess()
; decoder-mode: arm
00821470  f4 ff ff ea                                      b #0x821448

; FUNCTION 0x00821474, declared_size=88, range_size=88, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver18GetRoomIndexByNameEPKc
; demangled: CMatchingGLLiveLobbyObserver::GetRoomIndexByName(char const*)
; decoder-mode: arm
00821474  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00821478  1c 70 90 e5                                      ldr r7, [r0, #0x1c]
0082147c  18 50 90 e5                                      ldr r5, [r0, #0x18]
00821480  01 60 a0 e1                                      mov r6, r1
00821484  07 70 65 e0                                      rsb r7, r5, r7
00821488  47 71 b0 e1                                      asrs r7, r7, #2
0082148c  0c 00 00 0a                                      beq #0x8214c4
00821490  00 40 a0 e3                                      mov r4, #0
00821494  02 00 00 ea                                      b #0x8214a4
00821498  01 40 84 e2                                      add r4, r4, #1
0082149c  07 00 54 e1                                      cmp r4, r7
008214a0  07 00 00 0a                                      beq #0x8214c4
008214a4  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
008214a8  06 10 a0 e1                                      mov r1, r6
008214ac  04 00 93 e5                                      ldr r0, [r3, #4]
008214b0  99 b3 eb eb                                      bl #0x30e31c
008214b4  00 00 50 e3                                      cmp r0, #0
008214b8  f6 ff ff 1a                                      bne #0x821498
008214bc  04 00 a0 e1                                      mov r0, r4
008214c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008214c4  00 00 e0 e3                                      mvn r0, #0
008214c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008214cc, declared_size=112, range_size=112, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver20GetMemberIndexByNameEPKc
; demangled: CMatchingGLLiveLobbyObserver::GetMemberIndexByName(char const*)
; decoder-mode: arm
008214cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008214d0  28 70 90 e5                                      ldr r7, [r0, #0x28]
008214d4  24 60 90 e5                                      ldr r6, [r0, #0x24]
008214d8  3d 3f 0c e3                                      movw r3, #0xcf3d
008214dc  f3 3c 43 e3                                      movt r3, #0x3cf3
008214e0  07 70 66 e0                                      rsb r7, r6, r7
008214e4  47 71 a0 e1                                      asr r7, r7, #2
008214e8  93 07 07 e0                                      mul r7, r3, r7
008214ec  01 80 a0 e1                                      mov r8, r1
008214f0  00 00 57 e3                                      cmp r7, #0
008214f4  0e 00 00 0a                                      beq #0x821534
008214f8  00 40 a0 e3                                      mov r4, #0
008214fc  04 50 a0 e1                                      mov r5, r4
00821500  03 00 00 ea                                      b #0x821514
00821504  01 50 85 e2                                      add r5, r5, #1
00821508  07 00 55 e1                                      cmp r5, r7
0082150c  54 40 84 e2                                      add r4, r4, #0x54
00821510  07 00 00 0a                                      beq #0x821534
00821514  04 00 86 e0                                      add r0, r6, r4
00821518  28 00 80 e2                                      add r0, r0, #0x28
0082151c  08 10 a0 e1                                      mov r1, r8
00821520  7d b3 eb eb                                      bl #0x30e31c
00821524  00 00 50 e3                                      cmp r0, #0
00821528  f5 ff ff 1a                                      bne #0x821504
0082152c  05 00 a0 e1                                      mov r0, r5
00821530  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00821534  00 00 e0 e3                                      mvn r0, #0
00821538  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0082153c, declared_size=36, range_size=36, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver31OnMPProcessPushSameAccountLoginEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushSameAccountLogin(DataPacket*)
; decoder-mode: arm
0082153c  10 40 2d e9                                      push {r4, lr}
00821540  59 e4 ff eb                                      bl #0x81a6ac
00821544  00 20 a0 e3                                      mov r2, #0
00821548  14 00 80 e2                                      add r0, r0, #0x14
0082154c  09 10 a0 e3                                      mov r1, #9
00821550  02 30 a0 e1                                      mov r3, r2
00821554  2a 73 ff eb                                      bl #0x7fe204
00821558  00 00 a0 e3                                      mov r0, #0
0082155c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00821560, declared_size=68, range_size=68, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver24OnMPProcessPushStartGameEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushStartGame(DataPacket*)
; decoder-mode: arm
00821560  10 40 2d e9                                      push {r4, lr}
00821564  06 30 d0 e5                                      ldrb r3, [r0, #6]
00821568  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
0082156c  00 00 53 e3                                      cmp r3, #0
00821570  04 40 8f e0                                      add r4, pc, r4
00821574  06 00 00 0a                                      beq #0x821594
00821578  83 7e ff eb                                      bl #0x800f8c
0082157c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00821580  00 20 a0 e3                                      mov r2, #0
00821584  0b 10 a0 e3                                      mov r1, #0xb
00821588  03 00 94 e7                                      ldr r0, [r4, r3]
0082158c  02 30 a0 e1                                      mov r3, r2
00821590  1b 73 ff eb                                      bl #0x7fe204
00821594  00 00 a0 e3                                      mov r0, #0
00821598  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0082159c  20 35 17 00 ac 35 00 00                          .byte 0x20, 0x35, 0x17, 0x00, 0xac, 0x35, 0x00, 0x00

; FUNCTION 0x008215a4, declared_size=176, range_size=176, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver17OnMPFunctionErrorEPci
; demangled: CMatchingGLLiveLobbyObserver::OnMPFunctionError(char*, int)
; decoder-mode: arm
008215a4  70 40 2d e9                                      push {r4, r5, r6, lr}
008215a8  9c 60 9f e5                                      ldr r6, [pc, #0x9c]
008215ac  0e 30 04 e3                                      movw r3, #0x400e
008215b0  03 00 52 e1                                      cmp r2, r3
008215b4  02 40 a0 e1                                      mov r4, r2
008215b8  06 60 8f e0                                      add r6, pc, r6
008215bc  00 50 a0 e1                                      mov r5, r0
008215c0  18 00 00 0a                                      beq #0x821628
008215c4  0f 30 04 e3                                      movw r3, #0x400f
008215c8  03 00 52 e1                                      cmp r2, r3
008215cc  0c 00 00 0a                                      beq #0x821604
008215d0  02 00 72 e3                                      cmn r2, #2
008215d4  01 00 00 0a                                      beq #0x8215e0
008215d8  48 40 85 e5                                      str r4, [r5, #0x48]
008215dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
008215e0  69 7e ff eb                                      bl #0x800f8c
008215e4  64 30 9f e5                                      ldr r3, [pc, #0x64]
008215e8  00 20 a0 e3                                      mov r2, #0
008215ec  0c 10 a0 e3                                      mov r1, #0xc
008215f0  03 00 96 e7                                      ldr r0, [r6, r3]
008215f4  02 30 a0 e1                                      mov r3, r2
008215f8  01 73 ff eb                                      bl #0x7fe204
008215fc  48 40 85 e5                                      str r4, [r5, #0x48]
00821600  70 80 bd e8                                      pop {r4, r5, r6, pc}
00821604  60 7e ff eb                                      bl #0x800f8c
00821608  40 30 9f e5                                      ldr r3, [pc, #0x40]
0082160c  00 20 a0 e3                                      mov r2, #0
00821610  09 10 a0 e3                                      mov r1, #9
00821614  03 00 96 e7                                      ldr r0, [r6, r3]
00821618  02 30 a0 e1                                      mov r3, r2
0082161c  f8 72 ff eb                                      bl #0x7fe204
00821620  48 40 85 e5                                      str r4, [r5, #0x48]
00821624  70 80 bd e8                                      pop {r4, r5, r6, pc}
00821628  57 7e ff eb                                      bl #0x800f8c
0082162c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00821630  00 20 a0 e3                                      mov r2, #0
00821634  0a 10 a0 e3                                      mov r1, #0xa
00821638  03 00 96 e7                                      ldr r0, [r6, r3]
0082163c  02 30 a0 e1                                      mov r3, r2
00821640  ef 72 ff eb                                      bl #0x7fe204
00821644  48 40 85 e5                                      str r4, [r5, #0x48]
00821648  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0082164c  d8 34 17 00 ac 35 00 00                          .byte 0xd8, 0x34, 0x17, 0x00, 0xac, 0x35, 0x00, 0x00

; FUNCTION 0x00821654, declared_size=84, range_size=84, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver16OnMPNetworkErrorEi
; demangled: CMatchingGLLiveLobbyObserver::OnMPNetworkError(int)
; decoder-mode: arm
00821654  70 40 2d e9                                      push {r4, r5, r6, lr}
00821658  40 40 9f e5                                      ldr r4, [pc, #0x40]
0082165c  00 50 a0 e3                                      mov r5, #0
00821660  02 00 71 e3                                      cmn r1, #2
00821664  04 40 8f e0                                      add r4, pc, r4
00821668  48 10 80 e5                                      str r1, [r0, #0x48]
0082166c  04 50 c0 e5                                      strb r5, [r0, #4]
00821670  05 50 c0 e5                                      strb r5, [r0, #5]
00821674  06 50 c0 e5                                      strb r5, [r0, #6]
00821678  00 00 00 0a                                      beq #0x821680
0082167c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00821680  41 7e ff eb                                      bl #0x800f8c
00821684  18 30 9f e5                                      ldr r3, [pc, #0x18]
00821688  05 20 a0 e1                                      mov r2, r5
0082168c  0c 10 a0 e3                                      mov r1, #0xc
00821690  03 00 94 e7                                      ldr r0, [r4, r3]
00821694  05 30 a0 e1                                      mov r3, r5
00821698  70 40 bd e8                                      pop {r4, r5, r6, lr}
0082169c  d8 72 ff ea                                      b #0x7fe204
; mapping-symbol data/literal pool
008216a0  2c 34 17 00 ac 35 00 00                          .byte 0x2c, 0x34, 0x17, 0x00, 0xac, 0x35, 0x00, 0x00

; FUNCTION 0x008216a8, declared_size=184, range_size=184, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver29OnMPProcessPushGameserverAddrEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushGameserverAddr(DataPacket*)
; decoder-mode: arm
008216a8  70 40 2d e9                                      push {r4, r5, r6, lr}
008216ac  50 d0 4d e2                                      sub sp, sp, #0x50
008216b0  01 50 a0 e1                                      mov r5, r1
008216b4  f8 18 00 eb                                      bl #0x827a9c
008216b8  04 c0 8d e2                                      add ip, sp, #4
008216bc  00 e0 a0 e1                                      mov lr, r0
008216c0  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
008216c4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008216c8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
008216cc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008216d0  34 40 8d e2                                      add r4, sp, #0x34
008216d4  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
008216d8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
008216dc  05 10 a0 e1                                      mov r1, r5
008216e0  04 00 8d e2                                      add r0, sp, #4
008216e4  bb 18 00 eb                                      bl #0x8279d8
008216e8  68 50 9f e5                                      ldr r5, [pc, #0x68]
008216ec  04 00 a0 e1                                      mov r0, r4
008216f0  23 6b ff eb                                      bl #0x7fc384
008216f4  60 30 9f e5                                      ldr r3, [pc, #0x60]
008216f8  05 50 8f e0                                      add r5, pc, r5
008216fc  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00821700  03 20 95 e7                                      ldr r2, [r5, r3]
00821704  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00821708  01 60 a0 e3                                      mov r6, #1
0082170c  00 60 c2 e5                                      strb r6, [r2]
00821710  38 30 8d e5                                      str r3, [sp, #0x38]
00821714  b2 22 dd e1                                      ldrh r2, [sp, #0x22]
00821718  40 30 8d e5                                      str r3, [sp, #0x40]
0082171c  b0 32 dd e1                                      ldrh r3, [sp, #0x20]
00821720  03 10 81 e3                                      orr r1, r1, #3
00821724  4c 10 8d e5                                      str r1, [sp, #0x4c]
00821728  b4 33 cd e1                                      strh r3, [sp, #0x34]
0082172c  bc 23 cd e1                                      strh r2, [sp, #0x3c]
00821730  8f 69 ff eb                                      bl #0x7fbd74
00821734  06 10 a0 e1                                      mov r1, r6
00821738  04 20 a0 e1                                      mov r2, r4
0082173c  7b 6c ff eb                                      bl #0x7fc930
00821740  11 7e ff eb                                      bl #0x800f8c
00821744  08 10 a0 e3                                      mov r1, #8
00821748  8a f6 ff eb                                      bl #0x81f178
0082174c  00 00 a0 e3                                      mov r0, #0
00821750  50 d0 8d e2                                      add sp, sp, #0x50
00821754  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00821758  98 33 17 00 74 06 00 00                          .byte 0x98, 0x33, 0x17, 0x00, 0x74, 0x06, 0x00, 0x00

; FUNCTION 0x008217a8, declared_size=1028, range_size=1028, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver22OnMPListSessionSuccessEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPListSessionSuccess(DataPacket*)
; decoder-mode: arm
008217a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008217ac  f9 df 4d e2                                      sub sp, sp, #0x3e4
008217b0  04 00 8d e5                                      str r0, [sp, #4]
008217b4  01 00 a0 e1                                      mov r0, r1
008217b8  01 40 a0 e1                                      mov r4, r1
008217bc  00 60 a0 e3                                      mov r6, #0
008217c0  c2 fe ff eb                                      bl #0x8212d0
008217c4  3e 1e 8d e2                                      add r1, sp, #0x3e0
008217c8  08 60 21 e5                                      str r6, [r1, #-8]!
008217cc  00 30 94 e5                                      ldr r3, [r4]
008217d0  04 00 a0 e1                                      mov r0, r4
008217d4  0f e0 a0 e1                                      mov lr, pc
008217d8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008217dc  d8 33 9d e5                                      ldr r3, [sp, #0x3d8]
008217e0  04 10 9d e5                                      ldr r1, [sp, #4]
008217e4  b8 53 9f e5                                      ldr r5, [pc, #0x3b8]
008217e8  06 00 53 e1                                      cmp r3, r6
008217ec  01 30 a0 e3                                      mov r3, #1
008217f0  07 30 c1 e5                                      strb r3, [r1, #7]
008217f4  07 30 a0 e3                                      mov r3, #7
008217f8  14 30 81 e5                                      str r3, [r1, #0x14]
008217fc  05 50 8f e0                                      add r5, pc, r5
00821800  a6 00 00 da                                      ble #0x821aa0
00821804  e0 7d ff eb                                      bl #0x800f8c
00821808  e8 37 06 e3                                      movw r3, #0x67e8
0082180c  03 80 d0 e7                                      ldrb r8, [r0, r3]
00821810  00 00 58 e3                                      cmp r8, #0
00821814  79 00 00 1a                                      bne #0x821a00
00821818  04 00 9d e5                                      ldr r0, [sp, #4]
0082181c  f2 fe ff eb                                      bl #0x8213ec
00821820  d8 33 9d e5                                      ldr r3, [sp, #0x3d8]
00821824  00 00 53 e3                                      cmp r3, #0
00821828  8a 00 00 da                                      ble #0x821a58
0082182c  04 30 9d e5                                      ldr r3, [sp, #4]
00821830  f7 9f 8d e2                                      add sb, sp, #0x3dc
00821834  3d 1e 8d e2                                      add r1, sp, #0x3d0
00821838  20 30 83 e2                                      add r3, r3, #0x20
0082183c  08 30 8d e5                                      str r3, [sp, #8]
00821840  02 90 89 e2                                      add sb, sb, #2
00821844  10 70 8d e2                                      add r7, sp, #0x10
00821848  eb bf 8d e2                                      add fp, sp, #0x3ac
0082184c  08 60 a0 e1                                      mov r6, r8
00821850  0c 10 8d e5                                      str r1, [sp, #0xc]
00821854  08 a0 a0 e1                                      mov sl, r8
00821858  07 00 00 ea                                      b #0x82187c
0082185c  0b 00 a0 e1                                      mov r0, fp
00821860  ff e0 ff eb                                      bl #0x819c64
00821864  07 00 a0 e1                                      mov r0, r7
00821868  e9 dc ff eb                                      bl #0x818c14
0082186c  d8 33 9d e5                                      ldr r3, [sp, #0x3d8]
00821870  01 a0 8a e2                                      add sl, sl, #1
00821874  0a 00 53 e1                                      cmp r3, sl
00821878  76 00 00 da                                      ble #0x821a58
0082187c  28 00 a0 e3                                      mov r0, #0x28
00821880  f3 ba eb eb                                      bl #0x310454
00821884  03 2c 8d e2                                      add r2, sp, #0x300
00821888  20 60 80 e5                                      str r6, [r0, #0x20]
0082188c  24 60 80 e5                                      str r6, [r0, #0x24]
00821890  04 60 80 e5                                      str r6, [r0, #4]
00821894  08 60 80 e5                                      str r6, [r0, #8]
00821898  be 6d c2 e1                                      strh r6, [r2, #0xde]
0082189c  00 50 a0 e1                                      mov r5, r0
008218a0  00 10 a0 e1                                      mov r1, r0
008218a4  00 30 94 e5                                      ldr r3, [r4]
008218a8  04 00 a0 e1                                      mov r0, r4
008218ac  0f e0 a0 e1                                      mov lr, pc
008218b0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008218b4  04 10 85 e2                                      add r1, r5, #4
008218b8  09 20 a0 e1                                      mov r2, sb
008218bc  00 30 94 e5                                      ldr r3, [r4]
008218c0  04 00 a0 e1                                      mov r0, r4
008218c4  0f e0 a0 e1                                      mov lr, pc
008218c8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008218cc  09 20 a0 e1                                      mov r2, sb
008218d0  08 10 85 e2                                      add r1, r5, #8
008218d4  00 30 94 e5                                      ldr r3, [r4]
008218d8  04 00 a0 e1                                      mov r0, r4
008218dc  0f e0 a0 e1                                      mov lr, pc
008218e0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008218e4  0c 10 85 e2                                      add r1, r5, #0xc
008218e8  00 30 94 e5                                      ldr r3, [r4]
008218ec  04 00 a0 e1                                      mov r0, r4
008218f0  0f e0 a0 e1                                      mov lr, pc
008218f4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008218f8  0d 10 85 e2                                      add r1, r5, #0xd
008218fc  00 30 94 e5                                      ldr r3, [r4]
00821900  04 00 a0 e1                                      mov r0, r4
00821904  0f e0 a0 e1                                      mov lr, pc
00821908  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0082190c  0e 10 85 e2                                      add r1, r5, #0xe
00821910  00 30 94 e5                                      ldr r3, [r4]
00821914  04 00 a0 e1                                      mov r0, r4
00821918  0f e0 a0 e1                                      mov lr, pc
0082191c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00821920  0f 10 85 e2                                      add r1, r5, #0xf
00821924  00 30 94 e5                                      ldr r3, [r4]
00821928  04 00 a0 e1                                      mov r0, r4
0082192c  0f e0 a0 e1                                      mov lr, pc
00821930  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00821934  10 10 85 e2                                      add r1, r5, #0x10
00821938  00 30 94 e5                                      ldr r3, [r4]
0082193c  04 00 a0 e1                                      mov r0, r4
00821940  0f e0 a0 e1                                      mov lr, pc
00821944  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00821948  14 10 85 e2                                      add r1, r5, #0x14
0082194c  00 30 94 e5                                      ldr r3, [r4]
00821950  04 00 a0 e1                                      mov r0, r4
00821954  0f e0 a0 e1                                      mov lr, pc
00821958  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0082195c  09 20 a0 e1                                      mov r2, sb
00821960  20 10 85 e2                                      add r1, r5, #0x20
00821964  00 30 94 e5                                      ldr r3, [r4]
00821968  04 00 a0 e1                                      mov r0, r4
0082196c  0f e0 a0 e1                                      mov lr, pc
00821970  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00821974  03 1c 8d e2                                      add r1, sp, #0x300
00821978  fe 3d d1 e1                                      ldrsh r3, [r1, #0xde]
0082197c  07 00 a0 e1                                      mov r0, r7
00821980  24 30 85 e5                                      str r3, [r5, #0x24]
00821984  fe dd ff eb                                      bl #0x819184
00821988  80 20 a0 e3                                      mov r2, #0x80
0082198c  20 10 95 e5                                      ldr r1, [r5, #0x20]
00821990  07 00 a0 e1                                      mov r0, r7
00821994  34 d9 ff eb                                      bl #0x817e6c
00821998  7b 7d ff eb                                      bl #0x800f8c
0082199c  67 1c 80 e2                                      add r1, r0, #0x6700
008219a0  38 10 81 e2                                      add r1, r1, #0x38
008219a4  0b 00 a0 e1                                      mov r0, fp
008219a8  9e e2 ff eb                                      bl #0x81a428
008219ac  0b 00 a0 e1                                      mov r0, fp
008219b0  07 10 a0 e1                                      mov r1, r7
008219b4  e3 de ff eb                                      bl #0x819548
008219b8  00 00 50 e3                                      cmp r0, #0
008219bc  a6 ff ff 0a                                      beq #0x82185c
008219c0  04 00 9d e5                                      ldr r0, [sp, #4]
008219c4  04 10 95 e5                                      ldr r1, [r5, #4]
008219c8  a9 fe ff eb                                      bl #0x821474
008219cc  01 00 70 e3                                      cmn r0, #1
008219d0  28 00 00 0a                                      beq #0x821a78
008219d4  04 20 9d e5                                      ldr r2, [sp, #4]
008219d8  18 30 92 e5                                      ldr r3, [r2, #0x18]
008219dc  00 81 93 e7                                      ldr r8, [r3, r0, lsl #2]
008219e0  00 51 83 e7                                      str r5, [r3, r0, lsl #2]
008219e4  00 00 58 e3                                      cmp r8, #0
008219e8  9b ff ff 0a                                      beq #0x82185c
008219ec  08 00 a0 e1                                      mov r0, r8
008219f0  65 fe ff eb                                      bl #0x82138c
008219f4  08 00 a0 e1                                      mov r0, r8
008219f8  90 ba eb eb                                      bl #0x310440
008219fc  96 ff ff ea                                      b #0x82185c
00821a00  03 2c 8d e2                                      add r2, sp, #0x300
00821a04  be 6d c2 e1                                      strh r6, [r2, #0xde]
00821a08  d4 63 8d e5                                      str r6, [sp, #0x3d4]
00821a0c  3d 1e 8d e2                                      add r1, sp, #0x3d0
00821a10  00 30 94 e5                                      ldr r3, [r4]
00821a14  04 00 a0 e1                                      mov r0, r4
00821a18  0f e0 a0 e1                                      mov lr, pc
00821a1c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00821a20  f7 2f 8d e2                                      add r2, sp, #0x3dc
00821a24  f5 1f 8d e2                                      add r1, sp, #0x3d4
00821a28  02 20 82 e2                                      add r2, r2, #2
00821a2c  00 30 94 e5                                      ldr r3, [r4]
00821a30  04 00 a0 e1                                      mov r0, r4
00821a34  0f e0 a0 e1                                      mov lr, pc
00821a38  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00821a3c  64 31 9f e5                                      ldr r3, [pc, #0x164]
00821a40  d4 03 9d e5                                      ldr r0, [sp, #0x3d4]
00821a44  03 30 95 e7                                      ldr r3, [r5, r3]
00821a48  08 10 93 e5                                      ldr r1, [r3, #8]
00821a4c  32 b2 eb eb                                      bl #0x30e31c
00821a50  00 00 50 e3                                      cmp r0, #0
00821a54  14 00 00 0a                                      beq #0x821aac
00821a58  00 00 a0 e3                                      mov r0, #0
00821a5c  c7 b2 eb eb                                      bl #0x30e580
00821a60  04 10 9d e5                                      ldr r1, [sp, #4]
00821a64  00 30 a0 e3                                      mov r3, #0
00821a68  48 30 81 e5                                      str r3, [r1, #0x48]
00821a6c  10 00 81 e5                                      str r0, [r1, #0x10]
00821a70  f9 df 8d e2                                      add sp, sp, #0x3e4
00821a74  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00821a78  04 20 9d e5                                      ldr r2, [sp, #4]
00821a7c  1c 80 92 e5                                      ldr r8, [r2, #0x1c]
00821a80  20 30 92 e5                                      ldr r3, [r2, #0x20]
00821a84  03 00 58 e1                                      cmp r8, r3
00821a88  0f 00 00 0a                                      beq #0x821acc
00821a8c  00 50 88 e5                                      str r5, [r8]
00821a90  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
00821a94  04 30 83 e2                                      add r3, r3, #4
00821a98  1c 30 82 e5                                      str r3, [r2, #0x1c]
00821a9c  6e ff ff ea                                      b #0x82185c
00821aa0  04 00 9d e5                                      ldr r0, [sp, #4]
00821aa4  50 fe ff eb                                      bl #0x8213ec
00821aa8  f0 ff ff ea                                      b #0x821a70
00821aac  36 7d ff eb                                      bl #0x800f8c
00821ab0  d0 23 9d e5                                      ldr r2, [sp, #0x3d0]
00821ab4  c2 3f a0 e1                                      asr r3, r2, #0x1f
00821ab8  98 75 ff eb                                      bl #0x7ff120
00821abc  32 7d ff eb                                      bl #0x800f8c
00821ac0  05 10 a0 e3                                      mov r1, #5
00821ac4  ab f5 ff eb                                      bl #0x81f178
00821ac8  e2 ff ff ea                                      b #0x821a58
00821acc  04 30 9d e5                                      ldr r3, [sp, #4]
00821ad0  18 20 93 e5                                      ldr r2, [r3, #0x18]
00821ad4  08 20 62 e0                                      rsb r2, r2, r8
00821ad8  42 21 a0 e1                                      asr r2, r2, #2
00821adc  01 00 52 e3                                      cmp r2, #1
00821ae0  02 30 82 20                                      addhs r3, r2, r2
00821ae4  01 30 82 32                                      addlo r3, r2, #1
00821ae8  07 01 73 e3                                      cmn r3, #0xc0000001
00821aec  20 00 00 8a                                      bhi #0x821b74
00821af0  03 00 52 e1                                      cmp r2, r3
00821af4  1e 00 00 8a                                      bhi #0x821b74
00821af8  03 10 a0 e1                                      mov r1, r3
00821afc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00821b00  08 00 9d e5                                      ldr r0, [sp, #8]
00821b04  d0 33 8d e5                                      str r3, [sp, #0x3d0]
00821b08  51 ec ff eb                                      bl #0x81cc54
00821b0c  04 20 9d e5                                      ldr r2, [sp, #4]
00821b10  00 30 a0 e1                                      mov r3, r0
00821b14  18 10 92 e5                                      ldr r1, [r2, #0x18]
00821b18  01 80 58 e0                                      subs r8, r8, r1
00821b1c  00 80 a0 01                                      moveq r8, r0
00821b20  19 00 00 1a                                      bne #0x821b8c
00821b24  04 50 88 e4                                      str r5, [r8], #4
00821b28  04 10 9d e5                                      ldr r1, [sp, #4]
00821b2c  18 00 91 e5                                      ldr r0, [r1, #0x18]
00821b30  20 20 91 e5                                      ldr r2, [r1, #0x20]
00821b34  00 00 50 e3                                      cmp r0, #0
00821b38  06 00 00 0a                                      beq #0x821b58
00821b3c  02 20 60 e0                                      rsb r2, r0, r2
00821b40  03 10 c2 e3                                      bic r1, r2, #3
00821b44  80 00 51 e3                                      cmp r1, #0x80
00821b48  0b 00 00 8a                                      bhi #0x821b7c
00821b4c  00 30 8d e5                                      str r3, [sp]
00821b50  f8 71 02 eb                                      bl #0x8be338
00821b54  00 30 9d e5                                      ldr r3, [sp]
00821b58  d0 23 9d e5                                      ldr r2, [sp, #0x3d0]
00821b5c  04 10 9d e5                                      ldr r1, [sp, #4]
00821b60  18 30 81 e5                                      str r3, [r1, #0x18]
00821b64  02 31 83 e0                                      add r3, r3, r2, lsl #2
00821b68  1c 80 81 e5                                      str r8, [r1, #0x1c]
00821b6c  20 30 81 e5                                      str r3, [r1, #0x20]
00821b70  39 ff ff ea                                      b #0x82185c
00821b74  03 31 e0 e3                                      mvn r3, #0xc0000000
00821b78  de ff ff ea                                      b #0x821af8
00821b7c  00 30 8d e5                                      str r3, [sp]
00821b80  2e ba eb eb                                      bl #0x310440
00821b84  00 30 9d e5                                      ldr r3, [sp]
00821b88  f2 ff ff ea                                      b #0x821b58
00821b8c  08 20 a0 e1                                      mov r2, r8
00821b90  00 00 8d e5                                      str r0, [sp]
00821b94  e7 b0 eb eb                                      bl #0x30df38
00821b98  00 30 9d e5                                      ldr r3, [sp]
00821b9c  08 80 80 e0                                      add r8, r0, r8
00821ba0  df ff ff ea                                      b #0x821b24
; mapping-symbol data/literal pool
00821ba4  94 32 17 00 94 0d 00 00                          .byte 0x94, 0x32, 0x17, 0x00, 0x94, 0x0d, 0x00, 0x00

; FUNCTION 0x00821bac, declared_size=332, range_size=332, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver17GetMemberIdVectorEv
; demangled: CMatchingGLLiveLobbyObserver::GetMemberIdVector()
; decoder-mode: arm
00821bac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00821bb0  00 30 a0 e3                                      mov r3, #0
00821bb4  00 30 80 e5                                      str r3, [r0]
00821bb8  04 30 80 e5                                      str r3, [r0, #4]
00821bbc  08 30 80 e5                                      str r3, [r0, #8]
00821bc0  24 50 91 e5                                      ldr r5, [r1, #0x24]
00821bc4  28 20 91 e5                                      ldr r2, [r1, #0x28]
00821bc8  08 d0 4d e2                                      sub sp, sp, #8
00821bcc  00 40 a0 e1                                      mov r4, r0
00821bd0  02 00 55 e1                                      cmp r5, r2
00821bd4  01 70 a0 e1                                      mov r7, r1
00821bd8  10 00 00 0a                                      beq #0x821c20
00821bdc  08 a0 80 e2                                      add sl, r0, #8
00821be0  03 60 a0 e1                                      mov r6, r3
00821be4  04 90 8d e2                                      add sb, sp, #4
00821be8  01 00 00 ea                                      b #0x821bf4
00821bec  04 60 94 e5                                      ldr r6, [r4, #4]
00821bf0  08 30 94 e5                                      ldr r3, [r4, #8]
00821bf4  06 00 53 e1                                      cmp r3, r6
00821bf8  0b 00 00 0a                                      beq #0x821c2c
00821bfc  00 30 95 e5                                      ldr r3, [r5]
00821c00  00 30 86 e5                                      str r3, [r6]
00821c04  04 30 94 e5                                      ldr r3, [r4, #4]
00821c08  04 30 83 e2                                      add r3, r3, #4
00821c0c  04 30 84 e5                                      str r3, [r4, #4]
00821c10  28 30 97 e5                                      ldr r3, [r7, #0x28]
00821c14  54 50 85 e2                                      add r5, r5, #0x54
00821c18  03 00 55 e1                                      cmp r5, r3
00821c1c  f2 ff ff 1a                                      bne #0x821bec
00821c20  04 00 a0 e1                                      mov r0, r4
00821c24  08 d0 8d e2                                      add sp, sp, #8
00821c28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00821c2c  00 30 94 e5                                      ldr r3, [r4]
00821c30  04 20 94 e5                                      ldr r2, [r4, #4]
00821c34  02 20 63 e0                                      rsb r2, r3, r2
00821c38  42 21 a0 e1                                      asr r2, r2, #2
00821c3c  01 00 52 e3                                      cmp r2, #1
00821c40  02 30 82 20                                      addhs r3, r2, r2
00821c44  01 30 82 32                                      addlo r3, r2, #1
00821c48  07 01 73 e3                                      cmn r3, #0xc0000001
00821c4c  1b 00 00 9a                                      bls #0x821cc0
00821c50  03 31 e0 e3                                      mvn r3, #0xc0000000
00821c54  03 10 a0 e1                                      mov r1, r3
00821c58  0a 00 a0 e1                                      mov r0, sl
00821c5c  09 20 a0 e1                                      mov r2, sb
00821c60  04 30 8d e5                                      str r3, [sp, #4]
00821c64  3c f8 ec eb                                      bl #0x35fd5c
00821c68  00 10 94 e5                                      ldr r1, [r4]
00821c6c  00 80 a0 e1                                      mov r8, r0
00821c70  01 60 56 e0                                      subs r6, r6, r1
00821c74  00 60 a0 01                                      moveq r6, r0
00821c78  1a 00 00 1a                                      bne #0x821ce8
00821c7c  00 30 95 e5                                      ldr r3, [r5]
00821c80  04 30 86 e4                                      str r3, [r6], #4
00821c84  00 00 94 e5                                      ldr r0, [r4]
00821c88  08 10 94 e5                                      ldr r1, [r4, #8]
00821c8c  00 00 50 e3                                      cmp r0, #0
00821c90  04 00 00 0a                                      beq #0x821ca8
00821c94  01 10 60 e0                                      rsb r1, r0, r1
00821c98  03 10 c1 e3                                      bic r1, r1, #3
00821c9c  80 00 51 e3                                      cmp r1, #0x80
00821ca0  09 00 00 8a                                      bhi #0x821ccc
00821ca4  a3 71 02 eb                                      bl #0x8be338
00821ca8  04 30 9d e5                                      ldr r3, [sp, #4]
00821cac  00 80 84 e5                                      str r8, [r4]
00821cb0  04 60 84 e5                                      str r6, [r4, #4]
00821cb4  03 81 88 e0                                      add r8, r8, r3, lsl #2
00821cb8  08 80 84 e5                                      str r8, [r4, #8]
00821cbc  d3 ff ff ea                                      b #0x821c10
00821cc0  03 00 52 e1                                      cmp r2, r3
00821cc4  e2 ff ff 9a                                      bls #0x821c54
00821cc8  e0 ff ff ea                                      b #0x821c50
00821ccc  db b9 eb eb                                      bl #0x310440
00821cd0  04 30 9d e5                                      ldr r3, [sp, #4]
00821cd4  00 80 84 e5                                      str r8, [r4]
00821cd8  04 60 84 e5                                      str r6, [r4, #4]
00821cdc  03 81 88 e0                                      add r8, r8, r3, lsl #2
00821ce0  08 80 84 e5                                      str r8, [r4, #8]
00821ce4  c9 ff ff ea                                      b #0x821c10
00821ce8  06 20 a0 e1                                      mov r2, r6
00821cec  91 b0 eb eb                                      bl #0x30df38
00821cf0  06 60 80 e0                                      add r6, r0, r6
00821cf4  e0 ff ff ea                                      b #0x821c7c

; FUNCTION 0x00821ed8, declared_size=164, range_size=164, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserverD1Ev
; demangled: CMatchingGLLiveLobbyObserver::~CMatchingGLLiveLobbyObserver()
; decoder-mode: arm
00821ed8  94 30 9f e5                                      ldr r3, [pc, #0x94]
00821edc  94 20 9f e5                                      ldr r2, [pc, #0x94]
00821ee0  70 40 2d e9                                      push {r4, r5, r6, lr}
00821ee4  03 30 8f e0                                      add r3, pc, r3
00821ee8  02 20 93 e7                                      ldr r2, [r3, r2]
00821eec  00 40 a0 e1                                      mov r4, r0
00821ef0  08 20 82 e2                                      add r2, r2, #8
00821ef4  00 20 80 e5                                      str r2, [r0]
00821ef8  52 fd ff eb                                      bl #0x821448
00821efc  40 30 94 e5                                      ldr r3, [r4, #0x40]
00821f00  00 00 53 e3                                      cmp r3, #0
00821f04  0d 00 00 1a                                      bne #0x821f40
00821f08  24 00 84 e2                                      add r0, r4, #0x24
00821f0c  66 ec ff eb                                      bl #0x81d0ac
00821f10  18 00 94 e5                                      ldr r0, [r4, #0x18]
00821f14  18 30 84 e2                                      add r3, r4, #0x18
00821f18  00 00 50 e3                                      cmp r0, #0
00821f1c  05 00 00 0a                                      beq #0x821f38
00821f20  08 10 93 e5                                      ldr r1, [r3, #8]
00821f24  01 10 60 e0                                      rsb r1, r0, r1
00821f28  03 10 c1 e3                                      bic r1, r1, #3
00821f2c  80 00 51 e3                                      cmp r1, #0x80
00821f30  0c 00 00 8a                                      bhi #0x821f68
00821f34  ff 70 02 eb                                      bl #0x8be338
00821f38  04 00 a0 e1                                      mov r0, r4
00821f3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00821f40  30 50 84 e2                                      add r5, r4, #0x30
00821f44  05 00 a0 e1                                      mov r0, r5
00821f48  34 10 94 e5                                      ldr r1, [r4, #0x34]
00821f4c  fb 3e ef eb                                      bl #0x3f1b40
00821f50  00 30 a0 e3                                      mov r3, #0
00821f54  3c 50 84 e5                                      str r5, [r4, #0x3c]
00821f58  40 30 84 e5                                      str r3, [r4, #0x40]
00821f5c  38 50 84 e5                                      str r5, [r4, #0x38]
00821f60  34 30 84 e5                                      str r3, [r4, #0x34]
00821f64  e7 ff ff ea                                      b #0x821f08
00821f68  34 b9 eb eb                                      bl #0x310440
00821f6c  04 00 a0 e1                                      mov r0, r4
00821f70  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00821f74  ac 2b 17 00 94 2b 00 00                          .byte 0xac, 0x2b, 0x17, 0x00, 0x94, 0x2b, 0x00, 0x00

; FUNCTION 0x00821f7c, declared_size=164, range_size=164, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserverD2Ev
; demangled: CMatchingGLLiveLobbyObserver::~CMatchingGLLiveLobbyObserver()
; decoder-mode: arm
00821f7c  94 30 9f e5                                      ldr r3, [pc, #0x94]
00821f80  94 20 9f e5                                      ldr r2, [pc, #0x94]
00821f84  70 40 2d e9                                      push {r4, r5, r6, lr}
00821f88  03 30 8f e0                                      add r3, pc, r3
00821f8c  02 20 93 e7                                      ldr r2, [r3, r2]
00821f90  00 40 a0 e1                                      mov r4, r0
00821f94  08 20 82 e2                                      add r2, r2, #8
00821f98  00 20 80 e5                                      str r2, [r0]
00821f9c  29 fd ff eb                                      bl #0x821448
00821fa0  40 30 94 e5                                      ldr r3, [r4, #0x40]
00821fa4  00 00 53 e3                                      cmp r3, #0
00821fa8  0d 00 00 1a                                      bne #0x821fe4
00821fac  24 00 84 e2                                      add r0, r4, #0x24
00821fb0  3d ec ff eb                                      bl #0x81d0ac
00821fb4  18 00 94 e5                                      ldr r0, [r4, #0x18]
00821fb8  18 30 84 e2                                      add r3, r4, #0x18
00821fbc  00 00 50 e3                                      cmp r0, #0
00821fc0  05 00 00 0a                                      beq #0x821fdc
00821fc4  08 10 93 e5                                      ldr r1, [r3, #8]
00821fc8  01 10 60 e0                                      rsb r1, r0, r1
00821fcc  03 10 c1 e3                                      bic r1, r1, #3
00821fd0  80 00 51 e3                                      cmp r1, #0x80
00821fd4  0c 00 00 8a                                      bhi #0x82200c
00821fd8  d6 70 02 eb                                      bl #0x8be338
00821fdc  04 00 a0 e1                                      mov r0, r4
00821fe0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00821fe4  30 50 84 e2                                      add r5, r4, #0x30
00821fe8  05 00 a0 e1                                      mov r0, r5
00821fec  34 10 94 e5                                      ldr r1, [r4, #0x34]
00821ff0  d2 3e ef eb                                      bl #0x3f1b40
00821ff4  00 30 a0 e3                                      mov r3, #0
00821ff8  3c 50 84 e5                                      str r5, [r4, #0x3c]
00821ffc  40 30 84 e5                                      str r3, [r4, #0x40]
00822000  38 50 84 e5                                      str r5, [r4, #0x38]
00822004  34 30 84 e5                                      str r3, [r4, #0x34]
00822008  e7 ff ff ea                                      b #0x821fac
0082200c  0b b9 eb eb                                      bl #0x310440
00822010  04 00 a0 e1                                      mov r0, r4
00822014  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00822018  08 2b 17 00 94 2b 00 00                          .byte 0x08, 0x2b, 0x17, 0x00, 0x94, 0x2b, 0x00, 0x00

; FUNCTION 0x00822324, declared_size=272, range_size=272, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver19GetMemberByMemberIdEi
; demangled: CMatchingGLLiveLobbyObserver::GetMemberByMemberId(int)
; decoder-mode: arm
00822324  70 40 2d e9                                      push {r4, r5, r6, lr}
00822328  28 30 90 e5                                      ldr r3, [r0, #0x28]
0082232c  24 00 90 e5                                      ldr r0, [r0, #0x24]
00822330  3d 2f 0c e3                                      movw r2, #0xcf3d
00822334  f3 2c 43 e3                                      movt r2, #0x3cf3
00822338  03 30 60 e0                                      rsb r3, r0, r3
0082233c  43 31 a0 e1                                      asr r3, r3, #2
00822340  92 03 03 e0                                      mul r3, r2, r3
00822344  d4 50 9f e5                                      ldr r5, [pc, #0xd4]
00822348  00 00 53 e3                                      cmp r3, #0
0082234c  05 50 8f e0                                      add r5, pc, r5
00822350  0d 00 00 0a                                      beq #0x82238c
00822354  00 20 90 e5                                      ldr r2, [r0]
00822358  01 00 52 e1                                      cmp r2, r1
0082235c  54 c0 a0 13                                      movne ip, #0x54
00822360  00 20 a0 13                                      movne r2, #0
00822364  04 00 00 1a                                      bne #0x82237c
00822368  2b 00 00 ea                                      b #0x82241c
0082236c  00 60 94 e5                                      ldr r6, [r4]
00822370  54 c0 8c e2                                      add ip, ip, #0x54
00822374  01 00 56 e1                                      cmp r6, r1
00822378  25 00 00 0a                                      beq #0x822414
0082237c  01 20 82 e2                                      add r2, r2, #1
00822380  03 00 52 e1                                      cmp r2, r3
00822384  0c 40 80 e0                                      add r4, r0, ip
00822388  f7 ff ff 1a                                      bne #0x82236c
0082238c  90 40 9f e5                                      ldr r4, [pc, #0x90]
00822390  04 40 8f e0                                      add r4, pc, r4
00822394  00 60 94 e5                                      ldr r6, [r4]
00822398  01 60 16 e2                                      ands r6, r6, #1
0082239c  03 00 00 0a                                      beq #0x8223b0
008223a0  80 00 9f e5                                      ldr r0, [pc, #0x80]
008223a4  00 00 8f e0                                      add r0, pc, r0
008223a8  04 00 80 e2                                      add r0, r0, #4
008223ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
008223b0  04 00 a0 e1                                      mov r0, r4
008223b4  ec b0 eb eb                                      bl #0x30e76c
008223b8  00 00 50 e3                                      cmp r0, #0
008223bc  f7 ff ff 0a                                      beq #0x8223a0
008223c0  10 30 84 e2                                      add r3, r4, #0x10
008223c4  03 00 a0 e1                                      mov r0, r3
008223c8  20 30 84 e5                                      str r3, [r4, #0x20]
008223cc  24 30 84 e5                                      str r3, [r4, #0x24]
008223d0  10 10 a0 e3                                      mov r1, #0x10
008223d4  a8 bc eb eb                                      bl #0x31167c
008223d8  20 30 94 e5                                      ldr r3, [r4, #0x20]
008223dc  04 00 a0 e1                                      mov r0, r4
008223e0  00 60 c3 e5                                      strb r6, [r3]
008223e4  00 30 e0 e3                                      mvn r3, #0
008223e8  04 30 84 e5                                      str r3, [r4, #4]
008223ec  28 60 84 e5                                      str r6, [r4, #0x28]
008223f0  0c 60 84 e5                                      str r6, [r4, #0xc]
008223f4  90 b1 eb eb                                      bl #0x30ea3c
008223f8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
008223fc  04 40 84 e2                                      add r4, r4, #4
00822400  04 00 a0 e1                                      mov r0, r4
00822404  03 10 95 e7                                      ldr r1, [r5, r3]
00822408  20 30 9f e5                                      ldr r3, [pc, #0x20]
0082240c  03 20 95 e7                                      ldr r2, [r5, r3]
00822410  bb af eb eb                                      bl #0x30e304
00822414  04 00 a0 e1                                      mov r0, r4
00822418  70 80 bd e8                                      pop {r4, r5, r6, pc}
0082241c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00822420  44 27 17 00 f8 14 21 00 e4 14 21 00 d0 0f 00 00  .byte 0x44, 0x27, 0x17, 0x00, 0xf8, 0x14, 0x21, 0x00, 0xe4, 0x14, 0x21, 0x00, 0xd0, 0x0f, 0x00, 0x00
00822430  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00822538, declared_size=128, range_size=128, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserverC2Ev
; demangled: CMatchingGLLiveLobbyObserver::CMatchingGLLiveLobbyObserver()
; decoder-mode: arm
00822538  70 30 9f e5                                      ldr r3, [pc, #0x70]
0082253c  70 20 9f e5                                      ldr r2, [pc, #0x70]
00822540  70 40 2d e9                                      push {r4, r5, r6, lr}
00822544  03 30 8f e0                                      add r3, pc, r3
00822548  02 20 93 e7                                      ldr r2, [r3, r2]
0082254c  00 50 a0 e3                                      mov r5, #0
00822550  00 40 a0 e1                                      mov r4, r0
00822554  08 20 82 e2                                      add r2, r2, #8
00822558  00 20 80 e5                                      str r2, [r0]
0082255c  00 20 e0 e3                                      mvn r2, #0
00822560  08 20 80 e5                                      str r2, [r0, #8]
00822564  04 50 c0 e5                                      strb r5, [r0, #4]
00822568  05 50 c0 e5                                      strb r5, [r0, #5]
0082256c  06 50 c0 e5                                      strb r5, [r0, #6]
00822570  07 50 c0 e5                                      strb r5, [r0, #7]
00822574  0c 50 80 e5                                      str r5, [r0, #0xc]
00822578  10 50 80 e5                                      str r5, [r0, #0x10]
0082257c  18 00 80 e2                                      add r0, r0, #0x18
00822580  76 fc ff eb                                      bl #0x821760
00822584  24 00 84 e2                                      add r0, r4, #0x24
00822588  a9 ff ff eb                                      bl #0x822434
0082258c  04 30 a0 e1                                      mov r3, r4
00822590  34 50 84 e5                                      str r5, [r4, #0x34]
00822594  30 50 e3 e5                                      strb r5, [r3, #0x30]!
00822598  3c 30 84 e5                                      str r3, [r4, #0x3c]
0082259c  48 50 84 e5                                      str r5, [r4, #0x48]
008225a0  38 30 84 e5                                      str r3, [r4, #0x38]
008225a4  40 50 84 e5                                      str r5, [r4, #0x40]
008225a8  04 00 a0 e1                                      mov r0, r4
008225ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008225b0  4c 25 17 00 94 2b 00 00                          .byte 0x4c, 0x25, 0x17, 0x00, 0x94, 0x2b, 0x00, 0x00

; FUNCTION 0x008225b8, declared_size=128, range_size=128, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserverC1Ev
; demangled: CMatchingGLLiveLobbyObserver::CMatchingGLLiveLobbyObserver()
; decoder-mode: arm
008225b8  70 30 9f e5                                      ldr r3, [pc, #0x70]
008225bc  70 20 9f e5                                      ldr r2, [pc, #0x70]
008225c0  70 40 2d e9                                      push {r4, r5, r6, lr}
008225c4  03 30 8f e0                                      add r3, pc, r3
008225c8  02 20 93 e7                                      ldr r2, [r3, r2]
008225cc  00 50 a0 e3                                      mov r5, #0
008225d0  00 40 a0 e1                                      mov r4, r0
008225d4  08 20 82 e2                                      add r2, r2, #8
008225d8  00 20 80 e5                                      str r2, [r0]
008225dc  00 20 e0 e3                                      mvn r2, #0
008225e0  08 20 80 e5                                      str r2, [r0, #8]
008225e4  04 50 c0 e5                                      strb r5, [r0, #4]
008225e8  05 50 c0 e5                                      strb r5, [r0, #5]
008225ec  06 50 c0 e5                                      strb r5, [r0, #6]
008225f0  07 50 c0 e5                                      strb r5, [r0, #7]
008225f4  0c 50 80 e5                                      str r5, [r0, #0xc]
008225f8  10 50 80 e5                                      str r5, [r0, #0x10]
008225fc  18 00 80 e2                                      add r0, r0, #0x18
00822600  56 fc ff eb                                      bl #0x821760
00822604  24 00 84 e2                                      add r0, r4, #0x24
00822608  89 ff ff eb                                      bl #0x822434
0082260c  04 30 a0 e1                                      mov r3, r4
00822610  34 50 84 e5                                      str r5, [r4, #0x34]
00822614  30 50 e3 e5                                      strb r5, [r3, #0x30]!
00822618  3c 30 84 e5                                      str r3, [r4, #0x3c]
0082261c  48 50 84 e5                                      str r5, [r4, #0x48]
00822620  38 30 84 e5                                      str r3, [r4, #0x38]
00822624  40 50 84 e5                                      str r5, [r4, #0x40]
00822628  04 00 a0 e1                                      mov r0, r4
0082262c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00822630  cc 24 17 00 94 2b 00 00                          .byte 0xcc, 0x24, 0x17, 0x00, 0x94, 0x2b, 0x00, 0x00

; FUNCTION 0x00822638, declared_size=80, range_size=80, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver14SetPlayerParamESs
; demangled: CMatchingGLLiveLobbyObserver::SetPlayerParam(std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
00822638  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0082263c  00 00 53 e3                                      cmp r3, #0
00822640  1e ff 2f b1                                      bxlt lr
00822644  28 c0 90 e5                                      ldr ip, [r0, #0x28]
00822648  24 00 90 e5                                      ldr r0, [r0, #0x24]
0082264c  3d 2f 0c e3                                      movw r2, #0xcf3d
00822650  f3 2c 43 e3                                      movt r2, #0x3cf3
00822654  0c c0 60 e0                                      rsb ip, r0, ip
00822658  4c c1 a0 e1                                      asr ip, ip, #2
0082265c  92 0c 02 e0                                      mul r2, r2, ip
00822660  02 00 53 e1                                      cmp r3, r2
00822664  1e ff 2f a1                                      bxge lr
00822668  54 20 a0 e3                                      mov r2, #0x54
0082266c  92 03 20 e0                                      mla r0, r2, r3, r0
00822670  0c 00 80 e2                                      add r0, r0, #0xc
00822674  01 00 50 e1                                      cmp r0, r1
00822678  1e ff 2f 01                                      bxeq lr
0082267c  10 20 91 e5                                      ldr r2, [r1, #0x10]
00822680  14 10 91 e5                                      ldr r1, [r1, #0x14]
00822684  d5 b8 eb ea                                      b #0x3109e0

; FUNCTION 0x00822950, declared_size=188, range_size=188, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver18CollapseMemberListEv
; demangled: CMatchingGLLiveLobbyObserver::CollapseMemberList()
; decoder-mode: arm
00822950  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00822954  00 70 a0 e1                                      mov r7, r0
00822958  24 30 90 e5                                      ldr r3, [r0, #0x24]
0082295c  28 00 90 e5                                      ldr r0, [r0, #0x28]
00822960  3d 6f 0c e3                                      movw r6, #0xcf3d
00822964  f3 6c 43 e3                                      movt r6, #0x3cf3
00822968  00 20 63 e0                                      rsb r2, r3, r0
0082296c  42 21 a0 e1                                      asr r2, r2, #2
00822970  96 02 02 e0                                      mul r2, r6, r2
00822974  00 40 a0 e3                                      mov r4, #0
00822978  10 d0 4d e2                                      sub sp, sp, #0x10
0082297c  04 00 52 e1                                      cmp r2, r4
00822980  04 40 8d e5                                      str r4, [sp, #4]
00822984  08 40 8d e5                                      str r4, [sp, #8]
00822988  0c 40 8d e5                                      str r4, [sp, #0xc]
0082298c  04 80 8d 02                                      addeq r8, sp, #4
00822990  16 00 00 0a                                      beq #0x8229f0
00822994  04 50 a0 e1                                      mov r5, r4
00822998  04 80 8d e2                                      add r8, sp, #4
0082299c  04 00 00 ea                                      b #0x8229b4
008229a0  00 20 63 e0                                      rsb r2, r3, r0
008229a4  42 21 a0 e1                                      asr r2, r2, #2
008229a8  96 02 02 e0                                      mul r2, r6, r2
008229ac  02 00 55 e1                                      cmp r5, r2
008229b0  0e 00 00 2a                                      bhs #0x8229f0
008229b4  04 10 83 e0                                      add r1, r3, r4
008229b8  50 20 d1 e5                                      ldrb r2, [r1, #0x50]
008229bc  01 50 85 e2                                      add r5, r5, #1
008229c0  54 40 84 e2                                      add r4, r4, #0x54
008229c4  00 00 52 e3                                      cmp r2, #0
008229c8  f4 ff ff 0a                                      beq #0x8229a0
008229cc  08 00 a0 e1                                      mov r0, r8
008229d0  c4 fd ff eb                                      bl #0x8220e8
008229d4  24 30 97 e5                                      ldr r3, [r7, #0x24]
008229d8  28 00 97 e5                                      ldr r0, [r7, #0x28]
008229dc  00 20 63 e0                                      rsb r2, r3, r0
008229e0  42 21 a0 e1                                      asr r2, r2, #2
008229e4  96 02 02 e0                                      mul r2, r6, r2
008229e8  02 00 55 e1                                      cmp r5, r2
008229ec  f0 ff ff 3a                                      blo #0x8229b4
008229f0  24 00 87 e2                                      add r0, r7, #0x24
008229f4  08 10 a0 e1                                      mov r1, r8
008229f8  51 ff ff eb                                      bl #0x822744
008229fc  08 00 a0 e1                                      mov r0, r8
00822a00  a9 e9 ff eb                                      bl #0x81d0ac
00822a04  10 d0 8d e2                                      add sp, sp, #0x10
00822a08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00822b78, declared_size=76, range_size=76, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver23OnMPLeaveSessionSuccessEv
; demangled: CMatchingGLLiveLobbyObserver::OnMPLeaveSessionSuccess()
; decoder-mode: arm
00822b78  10 40 2d e9                                      push {r4, lr}
00822b7c  24 10 90 e5                                      ldr r1, [r0, #0x24]
00822b80  28 20 90 e5                                      ldr r2, [r0, #0x28]
00822b84  00 40 a0 e1                                      mov r4, r0
00822b88  00 30 e0 e3                                      mvn r3, #0
00822b8c  00 00 a0 e3                                      mov r0, #0
00822b90  02 00 51 e1                                      cmp r1, r2
00822b94  08 d0 4d e2                                      sub sp, sp, #8
00822b98  06 00 c4 e5                                      strb r0, [r4, #6]
00822b9c  0c 30 84 e5                                      str r3, [r4, #0xc]
00822ba0  08 30 84 e5                                      str r3, [r4, #8]
00822ba4  02 00 00 0a                                      beq #0x822bb4
00822ba8  24 00 84 e2                                      add r0, r4, #0x24
00822bac  04 30 8d e2                                      add r3, sp, #4
00822bb0  c4 ff ff eb                                      bl #0x822ac8
00822bb4  00 30 a0 e3                                      mov r3, #0
00822bb8  48 30 84 e5                                      str r3, [r4, #0x48]
00822bbc  08 d0 8d e2                                      add sp, sp, #8
00822bc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00822c58, declared_size=348, range_size=348, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver28OnMPProcessPushKickOutPlayerEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushKickOutPlayer(DataPacket*)
; decoder-mode: arm
00822c58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00822c5c  00 30 e0 e3                                      mvn r3, #0
00822c60  10 d0 4d e2                                      sub sp, sp, #0x10
00822c64  b6 30 cd e1                                      strh r3, [sp, #6]
00822c68  06 70 8d e2                                      add r7, sp, #6
00822c6c  00 30 91 e5                                      ldr r3, [r1]
00822c70  01 60 a0 e1                                      mov r6, r1
00822c74  00 40 a0 e1                                      mov r4, r0
00822c78  07 20 a0 e1                                      mov r2, r7
00822c7c  01 00 a0 e1                                      mov r0, r1
00822c80  0d 10 a0 e1                                      mov r1, sp
00822c84  0f e0 a0 e1                                      mov lr, pc
00822c88  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00822c8c  00 00 9d e5                                      ldr r0, [sp]
00822c90  14 51 9f e5                                      ldr r5, [pc, #0x114]
00822c94  0d 80 a0 e1                                      mov r8, sp
00822c98  00 00 50 e3                                      cmp r0, #0
00822c9c  05 50 8f e0                                      add r5, pc, r5
00822ca0  02 00 00 0a                                      beq #0x822cb0
00822ca4  e5 b5 eb eb                                      bl #0x310440
00822ca8  00 30 a0 e3                                      mov r3, #0
00822cac  00 30 8d e5                                      str r3, [sp]
00822cb0  00 30 96 e5                                      ldr r3, [r6]
00822cb4  0d 10 a0 e1                                      mov r1, sp
00822cb8  07 20 a0 e1                                      mov r2, r7
00822cbc  06 00 a0 e1                                      mov r0, r6
00822cc0  0f e0 a0 e1                                      mov lr, pc
00822cc4  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00822cc8  46 e6 ff eb                                      bl #0x81c5e8
00822ccc  00 60 9d e5                                      ldr r6, [sp]
00822cd0  74 00 90 e5                                      ldr r0, [r0, #0x74]
00822cd4  06 10 a0 e1                                      mov r1, r6
00822cd8  8f ad eb eb                                      bl #0x30e31c
00822cdc  00 00 50 e3                                      cmp r0, #0
00822ce0  1f 00 00 0a                                      beq #0x822d64
00822ce4  06 10 a0 e1                                      mov r1, r6
00822ce8  04 00 a0 e1                                      mov r0, r4
00822cec  f6 f9 ff eb                                      bl #0x8214cc
00822cf0  24 30 94 e5                                      ldr r3, [r4, #0x24]
00822cf4  54 10 a0 e3                                      mov r1, #0x54
00822cf8  0c 20 8d e2                                      add r2, sp, #0xc
00822cfc  91 30 21 e0                                      mla r1, r1, r0, r3
00822d00  24 00 84 e2                                      add r0, r4, #0x24
00822d04  ae ff ff eb                                      bl #0x822bc4
00822d08  9f 78 ff eb                                      bl #0x800f8c
00822d0c  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00822d10  00 20 a0 e3                                      mov r2, #0
00822d14  01 15 a0 e3                                      mov r1, #0x400000
00822d18  03 00 95 e7                                      ldr r0, [r5, r3]
00822d1c  0e 10 81 e2                                      add r1, r1, #0xe
00822d20  02 30 a0 e1                                      mov r3, r2
00822d24  36 6d ff eb                                      bl #0x7fe204
00822d28  24 30 94 e5                                      ldr r3, [r4, #0x24]
00822d2c  28 20 94 e5                                      ldr r2, [r4, #0x28]
00822d30  02 00 53 e1                                      cmp r3, r2
00822d34  05 00 00 2a                                      bhs #0x822d50
00822d38  00 20 a0 e3                                      mov r2, #0
00822d3c  54 20 83 e4                                      str r2, [r3], #0x54
00822d40  28 10 94 e5                                      ldr r1, [r4, #0x28]
00822d44  01 20 82 e2                                      add r2, r2, #1
00822d48  01 00 53 e1                                      cmp r3, r1
00822d4c  fa ff ff 3a                                      blo #0x822d3c
00822d50  8d 78 ff eb                                      bl #0x800f8c
00822d54  40 ed ff eb                                      bl #0x81e25c
00822d58  00 00 a0 e3                                      mov r0, #0
00822d5c  10 d0 8d e2                                      add sp, sp, #0x10
00822d60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00822d64  84 f0 ff eb                                      bl #0x81ef7c
00822d68  9c 55 00 eb                                      bl #0x8383e0
00822d6c  24 10 94 e5                                      ldr r1, [r4, #0x24]
00822d70  28 20 94 e5                                      ldr r2, [r4, #0x28]
00822d74  02 00 51 e1                                      cmp r1, r2
00822d78  02 00 00 0a                                      beq #0x822d88
00822d7c  24 00 84 e2                                      add r0, r4, #0x24
00822d80  08 30 8d e2                                      add r3, sp, #8
00822d84  4f ff ff eb                                      bl #0x822ac8
00822d88  7f 78 ff eb                                      bl #0x800f8c
00822d8c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00822d90  00 20 a0 e3                                      mov r2, #0
00822d94  01 15 a0 e3                                      mov r1, #0x400000
00822d98  03 00 95 e7                                      ldr r0, [r5, r3]
00822d9c  0a 10 81 e2                                      add r1, r1, #0xa
00822da0  02 30 a0 e1                                      mov r3, r2
00822da4  16 6d ff eb                                      bl #0x7fe204
00822da8  ea ff ff ea                                      b #0x822d58
; mapping-symbol data/literal pool
00822dac  f4 1d 17 00 88 15 00 00                          .byte 0xf4, 0x1d, 0x17, 0x00, 0x88, 0x15, 0x00, 0x00

; FUNCTION 0x00822db4, declared_size=496, range_size=496, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver32OnMPProcessPushJoinLobbyLaunchedEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushJoinLobbyLaunched(DataPacket*)
; decoder-mode: arm
00822db4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00822db8  00 70 a0 e1                                      mov r7, r0
00822dbc  d4 41 9f e5                                      ldr r4, [pc, #0x1d4]
00822dc0  24 30 97 e5                                      ldr r3, [r7, #0x24]
00822dc4  28 00 90 e5                                      ldr r0, [r0, #0x28]
00822dc8  cc 51 9f e5                                      ldr r5, [pc, #0x1cc]
00822dcc  04 40 8f e0                                      add r4, pc, r4
00822dd0  00 00 63 e0                                      rsb r0, r3, r0
00822dd4  05 20 94 e7                                      ldr r2, [r4, r5]
00822dd8  3d 3f 0c e3                                      movw r3, #0xcf3d
00822ddc  40 01 a0 e1                                      asr r0, r0, #2
00822de0  f3 3c 43 e3                                      movt r3, #0x3cf3
00822de4  93 00 03 e0                                      mul r3, r3, r0
00822de8  00 20 92 e5                                      ldr r2, [r2]
00822dec  68 d0 4d e2                                      sub sp, sp, #0x68
00822df0  0f 00 53 e3                                      cmp r3, #0xf
00822df4  01 60 a0 e1                                      mov r6, r1
00822df8  64 20 8d e5                                      str r2, [sp, #0x64]
00822dfc  00 00 e0 83                                      mvnhi r0, #0
00822e00  06 00 00 9a                                      bls #0x822e20
00822e04  05 30 94 e7                                      ldr r3, [r4, r5]
00822e08  64 20 9d e5                                      ldr r2, [sp, #0x64]
00822e0c  00 30 93 e5                                      ldr r3, [r3]
00822e10  03 00 52 e1                                      cmp r2, r3
00822e14  5e 00 00 1a                                      bne #0x822f94
00822e18  68 d0 8d e2                                      add sp, sp, #0x68
00822e1c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00822e20  10 a0 8d e2                                      add sl, sp, #0x10
00822e24  0c 30 8a e2                                      add r3, sl, #0xc
00822e28  03 00 a0 e1                                      mov r0, r3
00822e2c  10 10 a0 e3                                      mov r1, #0x10
00822e30  2c 30 8d e5                                      str r3, [sp, #0x2c]
00822e34  30 30 8d e5                                      str r3, [sp, #0x30]
00822e38  0f ba eb eb                                      bl #0x31167c
00822e3c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00822e40  00 80 a0 e3                                      mov r8, #0
00822e44  68 10 8d e2                                      add r1, sp, #0x68
00822e48  00 80 c3 e5                                      strb r8, [r3]
00822e4c  00 30 e0 e3                                      mvn r3, #0
00822e50  60 80 21 e5                                      str r8, [r1, #-0x60]!
00822e54  10 30 8d e5                                      str r3, [sp, #0x10]
00822e58  18 80 8d e5                                      str r8, [sp, #0x18]
00822e5c  34 80 8d e5                                      str r8, [sp, #0x34]
00822e60  bc 80 cd e1                                      strh r8, [sp, #0xc]
00822e64  0c 90 8d e2                                      add sb, sp, #0xc
00822e68  09 20 a0 e1                                      mov r2, sb
00822e6c  00 30 96 e5                                      ldr r3, [r6]
00822e70  06 00 a0 e1                                      mov r0, r6
00822e74  0f e0 a0 e1                                      mov lr, pc
00822e78  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00822e7c  fc 30 dd e1                                      ldrsh r3, [sp, #0xc]
00822e80  28 00 8a e2                                      add r0, sl, #0x28
00822e84  08 10 9d e5                                      ldr r1, [sp, #8]
00822e88  1f 00 53 e3                                      cmp r3, #0x1f
00822e8c  1f 30 a0 a3                                      movge r3, #0x1f
00822e90  73 30 ff e6                                      uxth r3, r3
00822e94  73 20 bf e6                                      sxth r2, r3
00822e98  01 20 82 e2                                      add r2, r2, #1
00822e9c  bc 30 cd e1                                      strh r3, [sp, #0xc]
00822ea0  70 ae eb eb                                      bl #0x30e868
00822ea4  08 00 9d e5                                      ldr r0, [sp, #8]
00822ea8  08 00 50 e1                                      cmp r0, r8
00822eac  01 00 00 0a                                      beq #0x822eb8
00822eb0  62 b5 eb eb                                      bl #0x310440
00822eb4  08 80 8d e5                                      str r8, [sp, #8]
00822eb8  09 20 a0 e1                                      mov r2, sb
00822ebc  08 10 8a e2                                      add r1, sl, #8
00822ec0  00 30 96 e5                                      ldr r3, [r6]
00822ec4  06 00 a0 e1                                      mov r0, r6
00822ec8  0f e0 a0 e1                                      mov lr, pc
00822ecc  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00822ed0  00 80 a0 e3                                      mov r8, #0
00822ed4  68 10 8d e2                                      add r1, sp, #0x68
00822ed8  59 80 61 e5                                      strb r8, [r1, #-0x59]!
00822edc  00 30 96 e5                                      ldr r3, [r6]
00822ee0  06 00 a0 e1                                      mov r0, r6
00822ee4  0f e0 a0 e1                                      mov lr, pc
00822ee8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00822eec  0f 30 dd e5                                      ldrb r3, [sp, #0xf]
00822ef0  68 10 8d e2                                      add r1, sp, #0x68
00822ef4  64 80 21 e5                                      str r8, [r1, #-0x64]!
00822ef8  5c 30 8d e5                                      str r3, [sp, #0x5c]
00822efc  00 30 96 e5                                      ldr r3, [r6]
00822f00  06 00 a0 e1                                      mov r0, r6
00822f04  09 20 a0 e1                                      mov r2, sb
00822f08  0f e0 a0 e1                                      mov lr, pc
00822f0c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00822f10  fc 30 dd e1                                      ldrsh r3, [sp, #0xc]
00822f14  08 00 53 e1                                      cmp r3, r8
00822f18  07 00 00 da                                      ble #0x822f3c
00822f1c  04 60 9d e5                                      ldr r6, [sp, #4]
00822f20  06 00 a0 e1                                      mov r0, r6
00822f24  ca ab eb eb                                      bl #0x30de54
00822f28  06 10 a0 e1                                      mov r1, r6
00822f2c  00 20 86 e0                                      add r2, r6, r0
00822f30  0c 00 8a e2                                      add r0, sl, #0xc
00822f34  a9 b6 eb eb                                      bl #0x3109e0
00822f38  fc 30 dd e1                                      ldrsh r3, [sp, #0xc]
00822f3c  0a 10 a0 e1                                      mov r1, sl
00822f40  24 00 87 e2                                      add r0, r7, #0x24
00822f44  34 30 8d e5                                      str r3, [sp, #0x34]
00822f48  01 30 a0 e3                                      mov r3, #1
00822f4c  60 30 cd e5                                      strb r3, [sp, #0x60]
00822f50  64 fc ff eb                                      bl #0x8220e8
00822f54  0c 78 ff eb                                      bl #0x800f8c
00822f58  40 30 9f e5                                      ldr r3, [pc, #0x40]
00822f5c  00 20 a0 e3                                      mov r2, #0
00822f60  01 15 a0 e3                                      mov r1, #0x400000
00822f64  03 00 94 e7                                      ldr r0, [r4, r3]
00822f68  0c 10 81 e2                                      add r1, r1, #0xc
00822f6c  02 30 a0 e1                                      mov r3, r2
00822f70  a3 6c ff eb                                      bl #0x7fe204
00822f74  00 60 a0 e3                                      mov r6, #0
00822f78  00 30 e0 e3                                      mvn r3, #0
00822f7c  0c 00 8a e2                                      add r0, sl, #0xc
00822f80  10 30 8d e5                                      str r3, [sp, #0x10]
00822f84  34 60 8d e5                                      str r6, [sp, #0x34]
00822f88  b1 d4 eb eb                                      bl #0x318254
00822f8c  06 00 a0 e1                                      mov r0, r6
00822f90  9b ff ff ea                                      b #0x822e04
00822f94  dd ac eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00822f98  c4 1c 17 00 ac 40 00 00 88 15 00 00              .byte 0xc4, 0x1c, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0x15, 0x00, 0x00

; FUNCTION 0x00822fa4, declared_size=572, range_size=572, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver24OnMPCreateSessionSuccessEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPCreateSessionSuccess(DataPacket*)
; decoder-mode: arm
00822fa4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00822fa8  20 52 9f e5                                      ldr r5, [pc, #0x220]
00822fac  20 92 9f e5                                      ldr sb, [pc, #0x220]
00822fb0  04 20 a0 e3                                      mov r2, #4
00822fb4  05 50 8f e0                                      add r5, pc, r5
00822fb8  09 30 95 e7                                      ldr r3, [r5, sb]
00822fbc  00 40 a0 e1                                      mov r4, r0
00822fc0  01 60 a0 e1                                      mov r6, r1
00822fc4  00 30 93 e5                                      ldr r3, [r3]
00822fc8  14 20 80 e5                                      str r2, [r0, #0x14]
00822fcc  01 20 a0 e3                                      mov r2, #1
00822fd0  06 20 c0 e5                                      strb r2, [r0, #6]
00822fd4  7c d0 4d e2                                      sub sp, sp, #0x7c
00822fd8  01 00 a0 e1                                      mov r0, r1
00822fdc  74 30 8d e5                                      str r3, [sp, #0x74]
00822fe0  ba f8 ff eb                                      bl #0x8212d0
00822fe4  08 10 84 e2                                      add r1, r4, #8
00822fe8  06 00 a0 e1                                      mov r0, r6
00822fec  00 30 96 e5                                      ldr r3, [r6]
00822ff0  0f e0 a0 e1                                      mov lr, pc
00822ff4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00822ff8  24 10 94 e5                                      ldr r1, [r4, #0x24]
00822ffc  28 20 94 e5                                      ldr r2, [r4, #0x28]
00823000  24 b0 84 e2                                      add fp, r4, #0x24
00823004  02 00 51 e1                                      cmp r1, r2
00823008  02 00 00 0a                                      beq #0x823018
0082300c  0b 00 a0 e1                                      mov r0, fp
00823010  04 30 8d e2                                      add r3, sp, #4
00823014  ab fe ff eb                                      bl #0x822ac8
00823018  08 60 8d e2                                      add r6, sp, #8
0082301c  0c 70 86 e2                                      add r7, r6, #0xc
00823020  07 00 a0 e1                                      mov r0, r7
00823024  10 10 a0 e3                                      mov r1, #0x10
00823028  24 70 8d e5                                      str r7, [sp, #0x24]
0082302c  28 70 8d e5                                      str r7, [sp, #0x28]
00823030  91 b9 eb eb                                      bl #0x31167c
00823034  24 30 9d e5                                      ldr r3, [sp, #0x24]
00823038  00 80 a0 e3                                      mov r8, #0
0082303c  00 80 c3 e5                                      strb r8, [r3]
00823040  00 30 e0 e3                                      mvn r3, #0
00823044  08 30 8d e5                                      str r3, [sp, #8]
00823048  10 80 8d e5                                      str r8, [sp, #0x10]
0082304c  2c 80 8d e5                                      str r8, [sp, #0x2c]
00823050  cd 77 ff eb                                      bl #0x800f8c
00823054  e8 37 06 e3                                      movw r3, #0x67e8
00823058  03 a0 d0 e7                                      ldrb sl, [r0, r3]
0082305c  08 00 5a e1                                      cmp sl, r8
00823060  47 00 00 1a                                      bne #0x823184
00823064  5f e5 ff eb                                      bl #0x81c5e8
00823068  20 20 a0 e3                                      mov r2, #0x20
0082306c  74 10 90 e5                                      ldr r1, [r0, #0x74]
00823070  28 00 86 e2                                      add r0, r6, #0x28
00823074  6a ab eb eb                                      bl #0x30de24
00823078  08 a0 8d e5                                      str sl, [sp, #8]
0082307c  50 a0 cd e5                                      strb sl, [sp, #0x50]
00823080  c1 77 ff eb                                      bl #0x800f8c
00823084  5c 80 8d e2                                      add r8, sp, #0x5c
00823088  6c 80 8d e5                                      str r8, [sp, #0x6c]
0082308c  70 80 8d e5                                      str r8, [sp, #0x70]
00823090  1a 3b a0 e3                                      mov r3, #0x6800
00823094  03 20 90 e7                                      ldr r2, [r0, r3]
00823098  04 38 06 e3                                      movw r3, #0x6804
0082309c  03 10 90 e7                                      ldr r1, [r0, r3]
008230a0  08 00 a0 e1                                      mov r0, r8
008230a4  8f b9 eb eb                                      bl #0x3116e8
008230a8  07 00 a0 e1                                      mov r0, r7
008230ac  70 10 9d e5                                      ldr r1, [sp, #0x70]
008230b0  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
008230b4  49 b6 eb eb                                      bl #0x3109e0
008230b8  70 00 9d e5                                      ldr r0, [sp, #0x70]
008230bc  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
008230c0  08 00 50 e1                                      cmp r0, r8
008230c4  03 30 60 e0                                      rsb r3, r0, r3
008230c8  2c 30 8d e5                                      str r3, [sp, #0x2c]
008230cc  06 00 00 0a                                      beq #0x8230ec
008230d0  00 00 50 e3                                      cmp r0, #0
008230d4  04 00 00 0a                                      beq #0x8230ec
008230d8  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
008230dc  01 10 60 e0                                      rsb r1, r0, r1
008230e0  80 00 51 e3                                      cmp r1, #0x80
008230e4  36 00 00 8a                                      bhi #0x8231c4
008230e8  92 6c 02 eb                                      bl #0x8be338
008230ec  01 30 a0 e3                                      mov r3, #1
008230f0  06 10 a0 e1                                      mov r1, r6
008230f4  0b 00 a0 e1                                      mov r0, fp
008230f8  58 30 cd e5                                      strb r3, [sp, #0x58]
008230fc  f9 fb ff eb                                      bl #0x8220e8
00823100  a1 77 ff eb                                      bl #0x800f8c
00823104  06 10 a0 e3                                      mov r1, #6
00823108  1a f0 ff eb                                      bl #0x81f178
0082310c  9e 77 ff eb                                      bl #0x800f8c
00823110  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00823114  00 20 a0 e3                                      mov r2, #0
00823118  04 10 a0 e3                                      mov r1, #4
0082311c  03 00 95 e7                                      ldr r0, [r5, r3]
00823120  02 30 a0 e1                                      mov r3, r2
00823124  36 6c ff eb                                      bl #0x7fe204
00823128  28 00 9d e5                                      ldr r0, [sp, #0x28]
0082312c  00 30 a0 e3                                      mov r3, #0
00823130  0c 60 86 e2                                      add r6, r6, #0xc
00823134  48 30 84 e5                                      str r3, [r4, #0x48]
00823138  06 00 50 e1                                      cmp r0, r6
0082313c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00823140  00 30 e0 e3                                      mvn r3, #0
00823144  08 30 8d e5                                      str r3, [sp, #8]
00823148  06 00 00 0a                                      beq #0x823168
0082314c  00 00 50 e3                                      cmp r0, #0
00823150  04 00 00 0a                                      beq #0x823168
00823154  14 10 9d e5                                      ldr r1, [sp, #0x14]
00823158  01 10 60 e0                                      rsb r1, r0, r1
0082315c  80 00 51 e3                                      cmp r1, #0x80
00823160  15 00 00 8a                                      bhi #0x8231bc
00823164  73 6c 02 eb                                      bl #0x8be338
00823168  09 30 95 e7                                      ldr r3, [r5, sb]
0082316c  74 20 9d e5                                      ldr r2, [sp, #0x74]
00823170  00 30 93 e5                                      ldr r3, [r3]
00823174  03 00 52 e1                                      cmp r2, r3
00823178  13 00 00 1a                                      bne #0x8231cc
0082317c  7c d0 8d e2                                      add sp, sp, #0x7c
00823180  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00823184  50 30 9f e5                                      ldr r3, [pc, #0x50]
00823188  03 30 95 e7                                      ldr r3, [r5, r3]
0082318c  08 a0 93 e5                                      ldr sl, [r3, #8]
00823190  0a 00 a0 e1                                      mov r0, sl
00823194  2e ab eb eb                                      bl #0x30de54
00823198  00 70 a0 e1                                      mov r7, r0
0082319c  07 20 a0 e1                                      mov r2, r7
008231a0  0a 10 a0 e1                                      mov r1, sl
008231a4  28 00 86 e2                                      add r0, r6, #0x28
008231a8  1d ab eb eb                                      bl #0x30de24
008231ac  78 30 8d e2                                      add r3, sp, #0x78
008231b0  07 70 83 e0                                      add r7, r3, r7
008231b4  48 80 47 e5                                      strb r8, [r7, #-0x48]
008231b8  cb ff ff ea                                      b #0x8230ec
008231bc  9f b4 eb eb                                      bl #0x310440
008231c0  e8 ff ff ea                                      b #0x823168
008231c4  9d b4 eb eb                                      bl #0x310440
008231c8  c7 ff ff ea                                      b #0x8230ec
008231cc  4f ac eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008231d0  dc 1a 17 00 ac 40 00 00 ac 35 00 00 94 0d 00 00  .byte 0xdc, 0x1a, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0xac, 0x35, 0x00, 0x00, 0x94, 0x0d, 0x00, 0x00

; FUNCTION 0x008231e0, declared_size=816, range_size=816, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver22OnMPJoinSessionSuccessEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPJoinSessionSuccess(DataPacket*)
; decoder-mode: arm
008231e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008231e4  14 93 9f e5                                      ldr sb, [pc, #0x314]
008231e8  14 23 9f e5                                      ldr r2, [pc, #0x314]
008231ec  a4 d0 4d e2                                      sub sp, sp, #0xa4
008231f0  09 90 8f e0                                      add sb, pc, sb
008231f4  02 30 99 e7                                      ldr r3, [sb, r2]
008231f8  01 40 a0 e1                                      mov r4, r1
008231fc  24 10 80 e2                                      add r1, r0, #0x24
00823200  00 30 93 e5                                      ldr r3, [r3]
00823204  2c 20 8d e5                                      str r2, [sp, #0x2c]
00823208  10 10 8d e5                                      str r1, [sp, #0x10]
0082320c  9c 30 8d e5                                      str r3, [sp, #0x9c]
00823210  0c 00 8d e5                                      str r0, [sp, #0xc]
00823214  f3 e4 ff eb                                      bl #0x81c5e8
00823218  bc 26 00 eb                                      bl #0x82cd10
0082321c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00823220  01 30 a0 e3                                      mov r3, #1
00823224  a0 10 8d e2                                      add r1, sp, #0xa0
00823228  06 30 c2 e5                                      strb r3, [r2, #6]
0082322c  00 30 a0 e3                                      mov r3, #0
00823230  64 30 21 e5                                      str r3, [r1, #-0x64]!
00823234  00 30 94 e5                                      ldr r3, [r4]
00823238  04 00 a0 e1                                      mov r0, r4
0082323c  0f e0 a0 e1                                      mov lr, pc
00823240  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00823244  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00823248  24 10 93 e5                                      ldr r1, [r3, #0x24]
0082324c  28 20 93 e5                                      ldr r2, [r3, #0x28]
00823250  02 00 51 e1                                      cmp r1, r2
00823254  02 00 00 0a                                      beq #0x823264
00823258  10 00 9d e5                                      ldr r0, [sp, #0x10]
0082325c  44 30 8d e2                                      add r3, sp, #0x44
00823260  18 fe ff eb                                      bl #0x822ac8
00823264  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00823268  00 10 a0 e3                                      mov r1, #0
0082326c  b2 14 cd e1                                      strh r1, [sp, #0x42]
00823270  00 00 53 e3                                      cmp r3, #0
00823274  90 00 00 da                                      ble #0x8234bc
00823278  88 22 9f e5                                      ldr r2, [pc, #0x288]
0082327c  48 10 8d e2                                      add r1, sp, #0x48
00823280  84 32 9f e5                                      ldr r3, [pc, #0x284]
00823284  08 10 8d e5                                      str r1, [sp, #8]
00823288  1c 20 8d e5                                      str r2, [sp, #0x1c]
0082328c  38 20 8d e2                                      add r2, sp, #0x38
00823290  18 20 8d e5                                      str r2, [sp, #0x18]
00823294  08 20 9d e5                                      ldr r2, [sp, #8]
00823298  28 30 8d e5                                      str r3, [sp, #0x28]
0082329c  47 30 8d e2                                      add r3, sp, #0x47
008232a0  00 60 a0 e3                                      mov r6, #0
008232a4  20 30 8d e5                                      str r3, [sp, #0x20]
008232a8  34 10 8d e2                                      add r1, sp, #0x34
008232ac  08 30 82 e2                                      add r3, r2, #8
008232b0  42 80 8d e2                                      add r8, sp, #0x42
008232b4  14 10 8d e5                                      str r1, [sp, #0x14]
008232b8  0c 70 82 e2                                      add r7, r2, #0xc
008232bc  06 50 a0 e1                                      mov r5, r6
008232c0  00 a0 e0 e3                                      mvn sl, #0
008232c4  28 b0 82 e2                                      add fp, r2, #0x28
008232c8  24 30 8d e5                                      str r3, [sp, #0x24]
008232cc  32 00 00 ea                                      b #0x82339c
008232d0  28 10 9d e5                                      ldr r1, [sp, #0x28]
008232d4  0b 00 a0 e1                                      mov r0, fp
008232d8  01 30 99 e7                                      ldr r3, [sb, r1]
008232dc  04 10 93 e5                                      ldr r1, [r3, #4]
008232e0  0d ac eb eb                                      bl #0x30e31c
008232e4  00 00 50 e3                                      cmp r0, #0
008232e8  0c 20 9d 05                                      ldreq r2, [sp, #0xc]
008232ec  0c 60 82 05                                      streq r6, [r2, #0xc]
008232f0  34 50 8d e5                                      str r5, [sp, #0x34]
008232f4  00 30 94 e5                                      ldr r3, [r4]
008232f8  04 00 a0 e1                                      mov r0, r4
008232fc  14 10 9d e5                                      ldr r1, [sp, #0x14]
00823300  08 20 a0 e1                                      mov r2, r8
00823304  0f e0 a0 e1                                      mov lr, pc
00823308  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0082330c  f2 34 dd e1                                      ldrsh r3, [sp, #0x42]
00823310  00 00 53 e3                                      cmp r3, #0
00823314  08 00 00 da                                      ble #0x82333c
00823318  34 10 9d e5                                      ldr r1, [sp, #0x34]
0082331c  01 00 a0 e1                                      mov r0, r1
00823320  04 10 8d e5                                      str r1, [sp, #4]
00823324  ca aa eb eb                                      bl #0x30de54
00823328  04 10 9d e5                                      ldr r1, [sp, #4]
0082332c  00 20 81 e0                                      add r2, r1, r0
00823330  07 00 a0 e1                                      mov r0, r7
00823334  a9 b5 eb eb                                      bl #0x3109e0
00823338  f2 34 dd e1                                      ldrsh r3, [sp, #0x42]
0082333c  01 20 a0 e3                                      mov r2, #1
00823340  08 10 9d e5                                      ldr r1, [sp, #8]
00823344  10 00 9d e5                                      ldr r0, [sp, #0x10]
00823348  6c 30 8d e5                                      str r3, [sp, #0x6c]
0082334c  98 20 cd e5                                      strb r2, [sp, #0x98]
00823350  64 fb ff eb                                      bl #0x8220e8
00823354  0c 77 ff eb                                      bl #0x800f8c
00823358  bf eb ff eb                                      bl #0x81e25c
0082335c  68 00 9d e5                                      ldr r0, [sp, #0x68]
00823360  6c 50 8d e5                                      str r5, [sp, #0x6c]
00823364  48 a0 8d e5                                      str sl, [sp, #0x48]
00823368  07 00 50 e1                                      cmp r0, r7
0082336c  06 00 00 0a                                      beq #0x82338c
00823370  00 00 50 e3                                      cmp r0, #0
00823374  04 00 00 0a                                      beq #0x82338c
00823378  54 10 9d e5                                      ldr r1, [sp, #0x54]
0082337c  01 10 60 e0                                      rsb r1, r0, r1
00823380  80 00 51 e3                                      cmp r1, #0x80
00823384  47 00 00 8a                                      bhi #0x8234a8
00823388  ea 6b 02 eb                                      bl #0x8be338
0082338c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00823390  01 60 86 e2                                      add r6, r6, #1
00823394  06 00 53 e1                                      cmp r3, r6
00823398  47 00 00 da                                      ble #0x8234bc
0082339c  10 10 a0 e3                                      mov r1, #0x10
008233a0  07 00 a0 e1                                      mov r0, r7
008233a4  64 70 8d e5                                      str r7, [sp, #0x64]
008233a8  68 70 8d e5                                      str r7, [sp, #0x68]
008233ac  b2 b8 eb eb                                      bl #0x31167c
008233b0  64 30 9d e5                                      ldr r3, [sp, #0x64]
008233b4  00 50 c3 e5                                      strb r5, [r3]
008233b8  50 50 8d e5                                      str r5, [sp, #0x50]
008233bc  6c 50 8d e5                                      str r5, [sp, #0x6c]
008233c0  48 a0 8d e5                                      str sl, [sp, #0x48]
008233c4  38 50 8d e5                                      str r5, [sp, #0x38]
008233c8  ef 76 ff eb                                      bl #0x800f8c
008233cc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
008233d0  08 20 a0 e1                                      mov r2, r8
008233d4  04 00 a0 e1                                      mov r0, r4
008233d8  01 30 99 e7                                      ldr r3, [sb, r1]
008233dc  18 10 9d e5                                      ldr r1, [sp, #0x18]
008233e0  00 c0 d3 e5                                      ldrb ip, [r3]
008233e4  00 30 94 e5                                      ldr r3, [r4]
008233e8  00 00 5c e3                                      cmp ip, #0
008233ec  06 c0 a0 01                                      moveq ip, r6
008233f0  00 c0 e0 13                                      mvnne ip, #0
008233f4  48 c0 8d e5                                      str ip, [sp, #0x48]
008233f8  0f e0 a0 e1                                      mov lr, pc
008233fc  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00823400  f2 34 dd e1                                      ldrsh r3, [sp, #0x42]
00823404  0b 00 a0 e1                                      mov r0, fp
00823408  38 10 9d e5                                      ldr r1, [sp, #0x38]
0082340c  1f 00 53 e3                                      cmp r3, #0x1f
00823410  1f 30 a0 a3                                      movge r3, #0x1f
00823414  73 30 ff e6                                      uxth r3, r3
00823418  73 20 bf e6                                      sxth r2, r3
0082341c  01 20 82 e2                                      add r2, r2, #1
00823420  b2 34 cd e1                                      strh r3, [sp, #0x42]
00823424  0f ad eb eb                                      bl #0x30e868
00823428  38 00 9d e5                                      ldr r0, [sp, #0x38]
0082342c  00 00 50 e3                                      cmp r0, #0
00823430  01 00 00 0a                                      beq #0x82343c
00823434  01 b4 eb eb                                      bl #0x310440
00823438  38 50 8d e5                                      str r5, [sp, #0x38]
0082343c  08 20 a0 e1                                      mov r2, r8
00823440  24 10 9d e5                                      ldr r1, [sp, #0x24]
00823444  00 30 94 e5                                      ldr r3, [r4]
00823448  04 00 a0 e1                                      mov r0, r4
0082344c  0f e0 a0 e1                                      mov lr, pc
00823450  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00823454  47 50 cd e5                                      strb r5, [sp, #0x47]
00823458  20 10 9d e5                                      ldr r1, [sp, #0x20]
0082345c  00 30 94 e5                                      ldr r3, [r4]
00823460  04 00 a0 e1                                      mov r0, r4
00823464  0f e0 a0 e1                                      mov lr, pc
00823468  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0082346c  47 30 dd e5                                      ldrb r3, [sp, #0x47]
00823470  94 30 8d e5                                      str r3, [sp, #0x94]
00823474  c4 76 ff eb                                      bl #0x800f8c
00823478  e8 27 06 e3                                      movw r2, #0x67e8
0082347c  02 30 d0 e7                                      ldrb r3, [r0, r2]
00823480  00 00 53 e3                                      cmp r3, #0
00823484  91 ff ff 1a                                      bne #0x8232d0
00823488  56 e4 ff eb                                      bl #0x81c5e8
0082348c  74 10 90 e5                                      ldr r1, [r0, #0x74]
00823490  0b 00 a0 e1                                      mov r0, fp
00823494  a0 ab eb eb                                      bl #0x30e31c
00823498  00 00 50 e3                                      cmp r0, #0
0082349c  0c 30 9d 05                                      ldreq r3, [sp, #0xc]
008234a0  0c 60 83 05                                      streq r6, [r3, #0xc]
008234a4  91 ff ff ea                                      b #0x8232f0
008234a8  e4 b3 eb eb                                      bl #0x310440
008234ac  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
008234b0  01 60 86 e2                                      add r6, r6, #1
008234b4  06 00 53 e1                                      cmp r3, r6
008234b8  b7 ff ff ca                                      bgt #0x82339c
008234bc  b2 76 ff eb                                      bl #0x800f8c
008234c0  08 10 a0 e3                                      mov r1, #8
008234c4  2b ef ff eb                                      bl #0x81f178
008234c8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
008234cc  00 20 a0 e3                                      mov r2, #0
008234d0  01 30 99 e7                                      ldr r3, [sb, r1]
008234d4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
008234d8  48 20 81 e5                                      str r2, [r1, #0x48]
008234dc  05 20 a0 e3                                      mov r2, #5
008234e0  14 20 81 e5                                      str r2, [r1, #0x14]
008234e4  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
008234e8  00 30 93 e5                                      ldr r3, [r3]
008234ec  03 00 52 e1                                      cmp r2, r3
008234f0  01 00 00 1a                                      bne #0x8234fc
008234f4  a4 d0 8d e2                                      add sp, sp, #0xa4
008234f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008234fc  83 ab eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00823500  a0 18 17 00 ac 40 00 00 74 06 00 00 94 0d 00 00  .byte 0xa0, 0x18, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x74, 0x06, 0x00, 0x00, 0x94, 0x0d, 0x00, 0x00

; FUNCTION 0x00823510, declared_size=232, range_size=232, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver31OnMPProcessPushSetUserParameterEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushSetUserParameter(DataPacket*)
; decoder-mode: arm
00823510  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00823514  00 40 a0 e3                                      mov r4, #0
00823518  10 d0 4d e2                                      sub sp, sp, #0x10
0082351c  01 50 a0 e1                                      mov r5, r1
00823520  0e 60 8d e2                                      add r6, sp, #0xe
00823524  08 40 8d e5                                      str r4, [sp, #8]
00823528  be 40 cd e1                                      strh r4, [sp, #0xe]
0082352c  08 10 8d e2                                      add r1, sp, #8
00823530  06 20 a0 e1                                      mov r2, r6
00823534  00 30 95 e5                                      ldr r3, [r5]
00823538  00 70 a0 e1                                      mov r7, r0
0082353c  05 00 a0 e1                                      mov r0, r5
00823540  0f e0 a0 e1                                      mov lr, pc
00823544  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00823548  10 10 8d e2                                      add r1, sp, #0x10
0082354c  0c 40 21 e5                                      str r4, [r1, #-0xc]!
00823550  00 30 95 e5                                      ldr r3, [r5]
00823554  05 00 a0 e1                                      mov r0, r5
00823558  06 20 a0 e1                                      mov r2, r6
0082355c  0f e0 a0 e1                                      mov lr, pc
00823560  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00823564  04 00 9d e5                                      ldr r0, [sp, #4]
00823568  04 00 50 e1                                      cmp r0, r4
0082356c  01 00 00 0a                                      beq #0x823578
00823570  b2 b3 eb eb                                      bl #0x310440
00823574  04 40 8d e5                                      str r4, [sp, #4]
00823578  28 80 97 e5                                      ldr r8, [r7, #0x28]
0082357c  24 40 97 e5                                      ldr r4, [r7, #0x24]
00823580  04 00 58 e1                                      cmp r8, r4
00823584  18 00 00 9a                                      bls #0x8235ec
00823588  08 70 9d e5                                      ldr r7, [sp, #8]
0082358c  02 00 00 ea                                      b #0x82359c
00823590  54 40 84 e2                                      add r4, r4, #0x54
00823594  04 00 58 e1                                      cmp r8, r4
00823598  13 00 00 9a                                      bls #0x8235ec
0082359c  28 00 84 e2                                      add r0, r4, #0x28
008235a0  07 10 a0 e1                                      mov r1, r7
008235a4  5c ab eb eb                                      bl #0x30e31c
008235a8  00 00 50 e3                                      cmp r0, #0
008235ac  f7 ff ff 1a                                      bne #0x823590
008235b0  10 10 8d e2                                      add r1, sp, #0x10
008235b4  10 00 21 e5                                      str r0, [r1, #-0x10]!
008235b8  06 20 a0 e1                                      mov r2, r6
008235bc  0d 10 a0 e1                                      mov r1, sp
008235c0  00 30 95 e5                                      ldr r3, [r5]
008235c4  05 00 a0 e1                                      mov r0, r5
008235c8  0f e0 a0 e1                                      mov lr, pc
008235cc  50 f0 93 e5                                      ldr pc, [r3, #0x50]
008235d0  00 50 9d e5                                      ldr r5, [sp]
008235d4  05 00 a0 e1                                      mov r0, r5
008235d8  1d aa eb eb                                      bl #0x30de54
008235dc  05 10 a0 e1                                      mov r1, r5
008235e0  00 20 85 e0                                      add r2, r5, r0
008235e4  0c 00 84 e2                                      add r0, r4, #0xc
008235e8  fc b4 eb eb                                      bl #0x3109e0
008235ec  00 00 a0 e3                                      mov r0, #0
008235f0  10 d0 8d e2                                      add sp, sp, #0x10
008235f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008235f8, declared_size=528, range_size=528, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver34OnMPProcessPushJoinLobbyUnlaunchedEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushJoinLobbyUnlaunched(DataPacket*)
; decoder-mode: arm
008235f8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008235fc  00 70 a0 e1                                      mov r7, r0
00823600  f4 41 9f e5                                      ldr r4, [pc, #0x1f4]
00823604  28 00 90 e5                                      ldr r0, [r0, #0x28]
00823608  24 20 97 e5                                      ldr r2, [r7, #0x24]
0082360c  ec 51 9f e5                                      ldr r5, [pc, #0x1ec]
00823610  04 40 8f e0                                      add r4, pc, r4
00823614  00 20 62 e0                                      rsb r2, r2, r0
00823618  05 30 94 e7                                      ldr r3, [r4, r5]
0082361c  3d af 0c e3                                      movw sl, #0xcf3d
00823620  42 21 a0 e1                                      asr r2, r2, #2
00823624  f3 ac 43 e3                                      movt sl, #0x3cf3
00823628  9a 02 02 e0                                      mul r2, sl, r2
0082362c  00 30 93 e5                                      ldr r3, [r3]
00823630  68 d0 4d e2                                      sub sp, sp, #0x68
00823634  0f 00 52 e3                                      cmp r2, #0xf
00823638  01 80 a0 e1                                      mov r8, r1
0082363c  64 30 8d e5                                      str r3, [sp, #0x64]
00823640  00 00 e0 83                                      mvnhi r0, #0
00823644  06 00 00 9a                                      bls #0x823664
00823648  05 30 94 e7                                      ldr r3, [r4, r5]
0082364c  64 20 9d e5                                      ldr r2, [sp, #0x64]
00823650  00 30 93 e5                                      ldr r3, [r3]
00823654  03 00 52 e1                                      cmp r2, r3
00823658  66 00 00 1a                                      bne #0x8237f8
0082365c  68 d0 8d e2                                      add sp, sp, #0x68
00823660  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00823664  10 60 8d e2                                      add r6, sp, #0x10
00823668  0c 30 86 e2                                      add r3, r6, #0xc
0082366c  03 00 a0 e1                                      mov r0, r3
00823670  10 10 a0 e3                                      mov r1, #0x10
00823674  2c 30 8d e5                                      str r3, [sp, #0x2c]
00823678  30 30 8d e5                                      str r3, [sp, #0x30]
0082367c  fe b7 eb eb                                      bl #0x31167c
00823680  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00823684  00 30 a0 e3                                      mov r3, #0
00823688  00 30 c2 e5                                      strb r3, [r2]
0082368c  00 20 e0 e3                                      mvn r2, #0
00823690  10 20 8d e5                                      str r2, [sp, #0x10]
00823694  08 30 8d e5                                      str r3, [sp, #8]
00823698  18 30 8d e5                                      str r3, [sp, #0x18]
0082369c  34 30 8d e5                                      str r3, [sp, #0x34]
008236a0  bc 30 cd e1                                      strh r3, [sp, #0xc]
008236a4  38 76 ff eb                                      bl #0x800f8c
008236a8  28 20 97 e5                                      ldr r2, [r7, #0x28]
008236ac  24 30 97 e5                                      ldr r3, [r7, #0x24]
008236b0  08 10 8d e2                                      add r1, sp, #8
008236b4  08 00 a0 e1                                      mov r0, r8
008236b8  02 30 63 e0                                      rsb r3, r3, r2
008236bc  43 31 a0 e1                                      asr r3, r3, #2
008236c0  9a 03 0a e0                                      mul sl, sl, r3
008236c4  10 a0 8d e5                                      str sl, [sp, #0x10]
008236c8  0c a0 8d e2                                      add sl, sp, #0xc
008236cc  0a 20 a0 e1                                      mov r2, sl
008236d0  00 30 98 e5                                      ldr r3, [r8]
008236d4  0f e0 a0 e1                                      mov lr, pc
008236d8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008236dc  fc 30 dd e1                                      ldrsh r3, [sp, #0xc]
008236e0  28 00 86 e2                                      add r0, r6, #0x28
008236e4  08 10 9d e5                                      ldr r1, [sp, #8]
008236e8  1f 00 53 e3                                      cmp r3, #0x1f
008236ec  1f 30 a0 a3                                      movge r3, #0x1f
008236f0  73 30 ff e6                                      uxth r3, r3
008236f4  73 20 bf e6                                      sxth r2, r3
008236f8  01 20 82 e2                                      add r2, r2, #1
008236fc  bc 30 cd e1                                      strh r3, [sp, #0xc]
00823700  58 ac eb eb                                      bl #0x30e868
00823704  08 00 9d e5                                      ldr r0, [sp, #8]
00823708  00 00 50 e3                                      cmp r0, #0
0082370c  02 00 00 0a                                      beq #0x82371c
00823710  4a b3 eb eb                                      bl #0x310440
00823714  00 30 a0 e3                                      mov r3, #0
00823718  08 30 8d e5                                      str r3, [sp, #8]
0082371c  0a 20 a0 e1                                      mov r2, sl
00823720  08 10 86 e2                                      add r1, r6, #8
00823724  00 30 98 e5                                      ldr r3, [r8]
00823728  08 00 a0 e1                                      mov r0, r8
0082372c  0f e0 a0 e1                                      mov lr, pc
00823730  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00823734  00 90 a0 e3                                      mov sb, #0
00823738  68 10 8d e2                                      add r1, sp, #0x68
0082373c  59 90 61 e5                                      strb sb, [r1, #-0x59]!
00823740  00 30 98 e5                                      ldr r3, [r8]
00823744  08 00 a0 e1                                      mov r0, r8
00823748  0f e0 a0 e1                                      mov lr, pc
0082374c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00823750  0f 30 dd e5                                      ldrb r3, [sp, #0xf]
00823754  68 10 8d e2                                      add r1, sp, #0x68
00823758  64 90 21 e5                                      str sb, [r1, #-0x64]!
0082375c  5c 30 8d e5                                      str r3, [sp, #0x5c]
00823760  00 30 98 e5                                      ldr r3, [r8]
00823764  08 00 a0 e1                                      mov r0, r8
00823768  0a 20 a0 e1                                      mov r2, sl
0082376c  0f e0 a0 e1                                      mov lr, pc
00823770  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00823774  fc 30 dd e1                                      ldrsh r3, [sp, #0xc]
00823778  09 00 53 e1                                      cmp r3, sb
0082377c  07 00 00 da                                      ble #0x8237a0
00823780  04 80 9d e5                                      ldr r8, [sp, #4]
00823784  08 00 a0 e1                                      mov r0, r8
00823788  b1 a9 eb eb                                      bl #0x30de54
0082378c  08 10 a0 e1                                      mov r1, r8
00823790  00 20 88 e0                                      add r2, r8, r0
00823794  0c 00 86 e2                                      add r0, r6, #0xc
00823798  90 b4 eb eb                                      bl #0x3109e0
0082379c  fc 30 dd e1                                      ldrsh r3, [sp, #0xc]
008237a0  06 10 a0 e1                                      mov r1, r6
008237a4  24 00 87 e2                                      add r0, r7, #0x24
008237a8  34 30 8d e5                                      str r3, [sp, #0x34]
008237ac  01 30 a0 e3                                      mov r3, #1
008237b0  60 30 cd e5                                      strb r3, [sp, #0x60]
008237b4  4b fa ff eb                                      bl #0x8220e8
008237b8  f3 75 ff eb                                      bl #0x800f8c
008237bc  40 30 9f e5                                      ldr r3, [pc, #0x40]
008237c0  00 20 a0 e3                                      mov r2, #0
008237c4  01 15 a0 e3                                      mov r1, #0x400000
008237c8  03 00 94 e7                                      ldr r0, [r4, r3]
008237cc  0c 10 81 e2                                      add r1, r1, #0xc
008237d0  02 30 a0 e1                                      mov r3, r2
008237d4  8a 6a ff eb                                      bl #0x7fe204
008237d8  0c 00 86 e2                                      add r0, r6, #0xc
008237dc  00 30 e0 e3                                      mvn r3, #0
008237e0  00 60 a0 e3                                      mov r6, #0
008237e4  10 30 8d e5                                      str r3, [sp, #0x10]
008237e8  34 60 8d e5                                      str r6, [sp, #0x34]
008237ec  98 d2 eb eb                                      bl #0x318254
008237f0  06 00 a0 e1                                      mov r0, r6
008237f4  93 ff ff ea                                      b #0x823648
008237f8  c4 aa eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008237fc  80 14 17 00 ac 40 00 00 88 15 00 00              .byte 0x80, 0x14, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0x15, 0x00, 0x00

; FUNCTION 0x00823808, declared_size=700, range_size=700, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver25OnMPProcessPushRejoinGameEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushRejoinGame(DataPacket*)
; decoder-mode: arm
00823808  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082380c  a8 52 9f e5                                      ldr r5, [pc, #0x2a8]
00823810  a8 92 9f e5                                      ldr sb, [pc, #0x2a8]
00823814  74 d0 4d e2                                      sub sp, sp, #0x74
00823818  05 50 8f e0                                      add r5, pc, r5
0082381c  09 20 95 e7                                      ldr r2, [r5, sb]
00823820  70 30 8d e2                                      add r3, sp, #0x70
00823824  00 70 a0 e3                                      mov r7, #0
00823828  00 20 92 e5                                      ldr r2, [r2]
0082382c  01 40 a0 e1                                      mov r4, r1
00823830  14 80 8d e2                                      add r8, sp, #0x14
00823834  6c 20 8d e5                                      str r2, [sp, #0x6c]
00823838  60 70 23 e5                                      str r7, [r3, #-0x60]!
0082383c  03 10 a0 e1                                      mov r1, r3
00823840  00 30 e0 e3                                      mvn r3, #0
00823844  b4 31 cd e1                                      strh r3, [sp, #0x14]
00823848  00 60 a0 e1                                      mov r6, r0
0082384c  08 20 a0 e1                                      mov r2, r8
00823850  00 30 94 e5                                      ldr r3, [r4]
00823854  04 00 a0 e1                                      mov r0, r4
00823858  0f e0 a0 e1                                      mov lr, pc
0082385c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00823860  06 00 a0 e1                                      mov r0, r6
00823864  10 10 9d e5                                      ldr r1, [sp, #0x10]
00823868  17 f7 ff eb                                      bl #0x8214cc
0082386c  01 00 70 e3                                      cmn r0, #1
00823870  00 a0 a0 e1                                      mov sl, r0
00823874  3b 00 00 0a                                      beq #0x823968
00823878  54 30 a0 e3                                      mov r3, #0x54
0082387c  93 00 0a e0                                      mul sl, r3, r0
00823880  24 10 96 e5                                      ldr r1, [r6, #0x24]
00823884  08 20 a0 e1                                      mov r2, r8
00823888  00 30 94 e5                                      ldr r3, [r4]
0082388c  0a 10 81 e0                                      add r1, r1, sl
00823890  08 10 81 e2                                      add r1, r1, #8
00823894  04 00 a0 e1                                      mov r0, r4
00823898  0f e0 a0 e1                                      mov lr, pc
0082389c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008238a0  70 10 8d e2                                      add r1, sp, #0x70
008238a4  59 70 61 e5                                      strb r7, [r1, #-0x59]!
008238a8  00 30 94 e5                                      ldr r3, [r4]
008238ac  04 00 a0 e1                                      mov r0, r4
008238b0  0f e0 a0 e1                                      mov lr, pc
008238b4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008238b8  24 30 96 e5                                      ldr r3, [r6, #0x24]
008238bc  17 20 dd e5                                      ldrb r2, [sp, #0x17]
008238c0  70 10 8d e2                                      add r1, sp, #0x70
008238c4  0a 30 83 e0                                      add r3, r3, sl
008238c8  4c 20 83 e5                                      str r2, [r3, #0x4c]
008238cc  64 70 21 e5                                      str r7, [r1, #-0x64]!
008238d0  00 30 94 e5                                      ldr r3, [r4]
008238d4  04 00 a0 e1                                      mov r0, r4
008238d8  08 20 a0 e1                                      mov r2, r8
008238dc  0f e0 a0 e1                                      mov lr, pc
008238e0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008238e4  24 40 96 e5                                      ldr r4, [r6, #0x24]
008238e8  f4 31 dd e1                                      ldrsh r3, [sp, #0x14]
008238ec  0a 40 84 e0                                      add r4, r4, sl
008238f0  24 20 94 e5                                      ldr r2, [r4, #0x24]
008238f4  03 00 52 e1                                      cmp r2, r3
008238f8  61 00 00 0a                                      beq #0x823a84
008238fc  0c 70 9d e5                                      ldr r7, [sp, #0xc]
00823900  07 00 a0 e1                                      mov r0, r7
00823904  52 a9 eb eb                                      bl #0x30de54
00823908  07 10 a0 e1                                      mov r1, r7
0082390c  00 20 87 e0                                      add r2, r7, r0
00823910  0c 00 84 e2                                      add r0, r4, #0xc
00823914  31 b4 eb eb                                      bl #0x3109e0
00823918  24 30 96 e5                                      ldr r3, [r6, #0x24]
0082391c  f4 21 dd e1                                      ldrsh r2, [sp, #0x14]
00823920  0a 30 83 e0                                      add r3, r3, sl
00823924  24 20 83 e5                                      str r2, [r3, #0x24]
00823928  24 30 96 e5                                      ldr r3, [r6, #0x24]
0082392c  0a a0 83 e0                                      add sl, r3, sl
00823930  01 30 a0 e3                                      mov r3, #1
00823934  50 30 ca e5                                      strb r3, [sl, #0x50]
00823938  10 00 9d e5                                      ldr r0, [sp, #0x10]
0082393c  00 00 50 e3                                      cmp r0, #0
00823940  00 00 00 0a                                      beq #0x823948
00823944  bd b2 eb eb                                      bl #0x310440
00823948  09 30 95 e7                                      ldr r3, [r5, sb]
0082394c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00823950  00 00 a0 e3                                      mov r0, #0
00823954  00 30 93 e5                                      ldr r3, [r3]
00823958  03 00 52 e1                                      cmp r2, r3
0082395c  55 00 00 1a                                      bne #0x823ab8
00823960  74 d0 8d e2                                      add sp, sp, #0x74
00823964  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00823968  18 c0 8d e2                                      add ip, sp, #0x18
0082396c  0c b0 8c e2                                      add fp, ip, #0xc
00823970  0b 00 a0 e1                                      mov r0, fp
00823974  10 10 a0 e3                                      mov r1, #0x10
00823978  04 c0 8d e5                                      str ip, [sp, #4]
0082397c  34 b0 8d e5                                      str fp, [sp, #0x34]
00823980  38 b0 8d e5                                      str fp, [sp, #0x38]
00823984  3c b7 eb eb                                      bl #0x31167c
00823988  34 30 9d e5                                      ldr r3, [sp, #0x34]
0082398c  00 70 c3 e5                                      strb r7, [r3]
00823990  10 10 9d e5                                      ldr r1, [sp, #0x10]
00823994  20 70 8d e5                                      str r7, [sp, #0x20]
00823998  3c 70 8d e5                                      str r7, [sp, #0x3c]
0082399c  01 00 a0 e1                                      mov r0, r1
008239a0  00 10 8d e5                                      str r1, [sp]
008239a4  18 a0 8d e5                                      str sl, [sp, #0x18]
008239a8  29 a9 eb eb                                      bl #0x30de54
008239ac  70 30 bf e6                                      sxth r3, r0
008239b0  04 c0 9d e5                                      ldr ip, [sp, #4]
008239b4  1f 00 53 e3                                      cmp r3, #0x1f
008239b8  1f 30 a0 a3                                      movge r3, #0x1f
008239bc  73 30 ff e6                                      uxth r3, r3
008239c0  73 20 bf e6                                      sxth r2, r3
008239c4  28 00 8c e2                                      add r0, ip, #0x28
008239c8  00 10 9d e5                                      ldr r1, [sp]
008239cc  01 20 82 e2                                      add r2, r2, #1
008239d0  b4 31 cd e1                                      strh r3, [sp, #0x14]
008239d4  a3 ab eb eb                                      bl #0x30e868
008239d8  04 30 9d e5                                      ldr r3, [sp, #4]
008239dc  08 20 a0 e1                                      mov r2, r8
008239e0  04 00 a0 e1                                      mov r0, r4
008239e4  08 10 83 e2                                      add r1, r3, #8
008239e8  00 30 94 e5                                      ldr r3, [r4]
008239ec  0f e0 a0 e1                                      mov lr, pc
008239f0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008239f4  70 10 8d e2                                      add r1, sp, #0x70
008239f8  59 70 61 e5                                      strb r7, [r1, #-0x59]!
008239fc  00 30 94 e5                                      ldr r3, [r4]
00823a00  04 00 a0 e1                                      mov r0, r4
00823a04  0f e0 a0 e1                                      mov lr, pc
00823a08  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00823a0c  17 30 dd e5                                      ldrb r3, [sp, #0x17]
00823a10  70 10 8d e2                                      add r1, sp, #0x70
00823a14  64 70 21 e5                                      str r7, [r1, #-0x64]!
00823a18  64 30 8d e5                                      str r3, [sp, #0x64]
00823a1c  00 30 94 e5                                      ldr r3, [r4]
00823a20  08 20 a0 e1                                      mov r2, r8
00823a24  04 00 a0 e1                                      mov r0, r4
00823a28  0f e0 a0 e1                                      mov lr, pc
00823a2c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00823a30  0c 40 9d e5                                      ldr r4, [sp, #0xc]
00823a34  04 00 a0 e1                                      mov r0, r4
00823a38  05 a9 eb eb                                      bl #0x30de54
00823a3c  04 10 a0 e1                                      mov r1, r4
00823a40  00 20 84 e0                                      add r2, r4, r0
00823a44  0b 00 a0 e1                                      mov r0, fp
00823a48  e4 b3 eb eb                                      bl #0x3109e0
00823a4c  f4 31 dd e1                                      ldrsh r3, [sp, #0x14]
00823a50  04 10 9d e5                                      ldr r1, [sp, #4]
00823a54  24 00 86 e2                                      add r0, r6, #0x24
00823a58  3c 30 8d e5                                      str r3, [sp, #0x3c]
00823a5c  01 30 a0 e3                                      mov r3, #1
00823a60  68 30 cd e5                                      strb r3, [sp, #0x68]
00823a64  9f f9 ff eb                                      bl #0x8220e8
00823a68  47 75 ff eb                                      bl #0x800f8c
00823a6c  fa e9 ff eb                                      bl #0x81e25c
00823a70  0b 00 a0 e1                                      mov r0, fp
00823a74  3c 70 8d e5                                      str r7, [sp, #0x3c]
00823a78  18 a0 8d e5                                      str sl, [sp, #0x18]
00823a7c  f4 d1 eb eb                                      bl #0x318254
00823a80  ac ff ff ea                                      b #0x823938
00823a84  0c 80 9d e5                                      ldr r8, [sp, #0xc]
00823a88  08 00 a0 e1                                      mov r0, r8
00823a8c  f0 a8 eb eb                                      bl #0x30de54
00823a90  08 10 a0 e1                                      mov r1, r8
00823a94  00 20 88 e0                                      add r2, r8, r0
00823a98  0c 00 84 e2                                      add r0, r4, #0xc
00823a9c  cf b3 eb eb                                      bl #0x3109e0
00823aa0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00823aa4  00 00 50 e3                                      cmp r0, #0
00823aa8  9e ff ff 0a                                      beq #0x823928
00823aac  63 b2 eb eb                                      bl #0x310440
00823ab0  0c 70 8d e5                                      str r7, [sp, #0xc]
00823ab4  9b ff ff ea                                      b #0x823928
00823ab8  14 aa eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00823abc  78 12 17 00 ac 40 00 00                          .byte 0x78, 0x12, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00823ac4, declared_size=1300, range_size=1300, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver25OnMPProcessPushLeaveLobbyEP10DataPacket
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushLeaveLobby(DataPacket*)
; decoder-mode: arm
00823ac4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00823ac8  f8 54 9f e5                                      ldr r5, [pc, #0x4f8]
00823acc  f8 24 9f e5                                      ldr r2, [pc, #0x4f8]
00823ad0  4f df 4d e2                                      sub sp, sp, #0x13c
00823ad4  05 50 8f e0                                      add r5, pc, r5
00823ad8  04 20 8d e5                                      str r2, [sp, #4]
00823adc  02 20 95 e7                                      ldr r2, [r5, r2]
00823ae0  12 3e e0 e3                                      mvn r3, #0x120
00823ae4  18 c0 8d e2                                      add ip, sp, #0x18
00823ae8  00 20 92 e5                                      ldr r2, [r2]
00823aec  01 60 a0 e1                                      mov r6, r1
00823af0  01 30 43 e2                                      sub r3, r3, #1
00823af4  34 21 8d e5                                      str r2, [sp, #0x134]
00823af8  00 10 e0 e3                                      mvn r1, #0
00823afc  4e 2f 8d e2                                      add r2, sp, #0x138
00823b00  b3 10 82 e1                                      strh r1, [r2, r3]
00823b04  08 c0 8d e5                                      str ip, [sp, #8]
00823b08  02 80 4c e2                                      sub r8, ip, #2
00823b0c  10 70 8d e2                                      add r7, sp, #0x10
00823b10  00 30 96 e5                                      ldr r3, [r6]
00823b14  07 10 a0 e1                                      mov r1, r7
00823b18  08 20 a0 e1                                      mov r2, r8
00823b1c  00 40 a0 e1                                      mov r4, r0
00823b20  06 00 a0 e1                                      mov r0, r6
00823b24  0f e0 a0 e1                                      mov lr, pc
00823b28  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00823b2c  16 75 ff eb                                      bl #0x800f8c
00823b30  e8 37 06 e3                                      movw r3, #0x67e8
00823b34  03 30 d0 e7                                      ldrb r3, [r0, r3]
00823b38  00 00 53 e3                                      cmp r3, #0
00823b3c  ce 00 00 0a                                      beq #0x823e7c
00823b40  88 34 9f e5                                      ldr r3, [pc, #0x488]
00823b44  ec 90 8d e2                                      add sb, sp, #0xec
00823b48  09 00 a0 e1                                      mov r0, sb
00823b4c  03 30 95 e7                                      ldr r3, [r5, r3]
00823b50  20 20 8d e2                                      add r2, sp, #0x20
00823b54  04 10 93 e5                                      ldr r1, [r3, #4]
00823b58  63 c1 eb eb                                      bl #0x3140ec
00823b5c  00 a1 9d e5                                      ldr sl, [sp, #0x100]
00823b60  fc b0 9d e5                                      ldr fp, [sp, #0xfc]
00823b64  0b 00 5a e1                                      cmp sl, fp
00823b68  04 00 00 0a                                      beq #0x823b80
00823b6c  d0 00 da e1                                      ldrsb r0, [sl]
00823b70  11 a0 f1 eb                                      bl #0x48bbbc
00823b74  01 00 ca e4                                      strb r0, [sl], #1
00823b78  0b 00 5a e1                                      cmp sl, fp
00823b7c  fa ff ff 1a                                      bne #0x823b6c
00823b80  d4 a0 8d e2                                      add sl, sp, #0xd4
00823b84  0a 00 a0 e1                                      mov r0, sl
00823b88  10 10 9d e5                                      ldr r1, [sp, #0x10]
00823b8c  1c 20 8d e2                                      add r2, sp, #0x1c
00823b90  55 c1 eb eb                                      bl #0x3140ec
00823b94  e8 b0 9d e5                                      ldr fp, [sp, #0xe8]
00823b98  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
00823b9c  03 00 5b e1                                      cmp fp, r3
00823ba0  0f 00 00 0a                                      beq #0x823be4
00823ba4  0c a0 8d e5                                      str sl, [sp, #0xc]
00823ba8  08 a0 a0 e1                                      mov sl, r8
00823bac  07 80 a0 e1                                      mov r8, r7
00823bb0  05 70 a0 e1                                      mov r7, r5
00823bb4  04 50 a0 e1                                      mov r5, r4
00823bb8  03 40 a0 e1                                      mov r4, r3
00823bbc  d0 00 db e1                                      ldrsb r0, [fp]
00823bc0  fd 9f f1 eb                                      bl #0x48bbbc
00823bc4  01 00 cb e4                                      strb r0, [fp], #1
00823bc8  04 00 5b e1                                      cmp fp, r4
00823bcc  fa ff ff 1a                                      bne #0x823bbc
00823bd0  05 40 a0 e1                                      mov r4, r5
00823bd4  07 50 a0 e1                                      mov r5, r7
00823bd8  08 70 a0 e1                                      mov r7, r8
00823bdc  0a 80 a0 e1                                      mov r8, sl
00823be0  0c a0 9d e5                                      ldr sl, [sp, #0xc]
00823be4  e4 ec ff eb                                      bl #0x81ef7c
00823be8  00 30 90 e5                                      ldr r3, [r0]
00823bec  0f e0 a0 e1                                      mov lr, pc
00823bf0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00823bf4  00 00 50 e3                                      cmp r0, #0
00823bf8  8d 00 00 0a                                      beq #0x823e34
00823bfc  e8 b0 9d e5                                      ldr fp, [sp, #0xe8]
00823c00  0a 00 5b e1                                      cmp fp, sl
00823c04  07 00 00 0a                                      beq #0x823c28
00823c08  00 00 5b e3                                      cmp fp, #0
00823c0c  05 00 00 0a                                      beq #0x823c28
00823c10  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
00823c14  01 10 6b e0                                      rsb r1, fp, r1
00823c18  80 00 51 e3                                      cmp r1, #0x80
00823c1c  d1 00 00 8a                                      bhi #0x823f68
00823c20  0b 00 a0 e1                                      mov r0, fp
00823c24  c3 69 02 eb                                      bl #0x8be338
00823c28  00 01 9d e5                                      ldr r0, [sp, #0x100]
00823c2c  09 00 50 e1                                      cmp r0, sb
00823c30  06 00 00 0a                                      beq #0x823c50
00823c34  00 00 50 e3                                      cmp r0, #0
00823c38  04 00 00 0a                                      beq #0x823c50
00823c3c  ec 10 9d e5                                      ldr r1, [sp, #0xec]
00823c40  01 10 60 e0                                      rsb r1, r0, r1
00823c44  80 00 51 e3                                      cmp r1, #0x80
00823c48  c4 00 00 8a                                      bhi #0x823f60
00823c4c  b9 69 02 eb                                      bl #0x8be338
00823c50  10 00 9d e5                                      ldr r0, [sp, #0x10]
00823c54  00 00 50 e3                                      cmp r0, #0
00823c58  02 00 00 0a                                      beq #0x823c68
00823c5c  f7 b1 eb eb                                      bl #0x310440
00823c60  00 30 a0 e3                                      mov r3, #0
00823c64  10 30 8d e5                                      str r3, [sp, #0x10]
00823c68  07 10 a0 e1                                      mov r1, r7
00823c6c  08 20 a0 e1                                      mov r2, r8
00823c70  00 30 96 e5                                      ldr r3, [r6]
00823c74  06 00 a0 e1                                      mov r0, r6
00823c78  0f e0 a0 e1                                      mov lr, pc
00823c7c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00823c80  04 00 a0 e1                                      mov r0, r4
00823c84  10 10 9d e5                                      ldr r1, [sp, #0x10]
00823c88  0f f6 ff eb                                      bl #0x8214cc
00823c8c  01 00 70 e3                                      cmn r0, #1
00823c90  5e 00 00 0a                                      beq #0x823e10
00823c94  54 a0 a0 e3                                      mov sl, #0x54
00823c98  24 70 94 e5                                      ldr r7, [r4, #0x24]
00823c9c  9a 00 0a e0                                      mul sl, sl, r0
00823ca0  80 b0 8d e2                                      add fp, sp, #0x80
00823ca4  0a 20 97 e7                                      ldr r2, [r7, sl]
00823ca8  0a 70 87 e0                                      add r7, r7, sl
00823cac  0c 30 8b e2                                      add r3, fp, #0xc
00823cb0  80 20 8d e5                                      str r2, [sp, #0x80]
00823cb4  04 20 97 e5                                      ldr r2, [r7, #4]
00823cb8  03 00 a0 e1                                      mov r0, r3
00823cbc  04 80 a0 e1                                      mov r8, r4
00823cc0  84 20 8d e5                                      str r2, [sp, #0x84]
00823cc4  08 20 97 e5                                      ldr r2, [r7, #8]
00823cc8  9c 30 8d e5                                      str r3, [sp, #0x9c]
00823ccc  a0 30 8d e5                                      str r3, [sp, #0xa0]
00823cd0  88 20 8d e5                                      str r2, [sp, #0x88]
00823cd4  20 10 97 e5                                      ldr r1, [r7, #0x20]
00823cd8  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
00823cdc  81 b6 eb eb                                      bl #0x3116e8
00823ce0  24 30 97 e5                                      ldr r3, [r7, #0x24]
00823ce4  a8 c0 8d e2                                      add ip, sp, #0xa8
00823ce8  28 e0 87 e2                                      add lr, r7, #0x28
00823cec  a4 30 8d e5                                      str r3, [sp, #0xa4]
00823cf0  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00823cf4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00823cf8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00823cfc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00823d00  00 20 9e e5                                      ldr r2, [lr]
00823d04  24 60 b8 e5                                      ldr r6, [r8, #0x24]!
00823d08  2c 90 8d e2                                      add sb, sp, #0x2c
00823d0c  00 20 cc e5                                      strb r2, [ip]
00823d10  4c 20 97 e5                                      ldr r2, [r7, #0x4c]
00823d14  0c 30 89 e2                                      add r3, sb, #0xc
00823d18  03 00 a0 e1                                      mov r0, r3
00823d1c  cc 20 8d e5                                      str r2, [sp, #0xcc]
00823d20  50 20 d7 e5                                      ldrb r2, [r7, #0x50]
00823d24  d0 20 cd e5                                      strb r2, [sp, #0xd0]
00823d28  00 20 96 e5                                      ldr r2, [r6]
00823d2c  2c 20 8d e5                                      str r2, [sp, #0x2c]
00823d30  04 20 96 e5                                      ldr r2, [r6, #4]
00823d34  30 20 8d e5                                      str r2, [sp, #0x30]
00823d38  08 20 96 e5                                      ldr r2, [r6, #8]
00823d3c  48 30 8d e5                                      str r3, [sp, #0x48]
00823d40  4c 30 8d e5                                      str r3, [sp, #0x4c]
00823d44  34 20 8d e5                                      str r2, [sp, #0x34]
00823d48  20 10 96 e5                                      ldr r1, [r6, #0x20]
00823d4c  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
00823d50  64 b6 eb eb                                      bl #0x3116e8
00823d54  24 30 96 e5                                      ldr r3, [r6, #0x24]
00823d58  54 c0 8d e2                                      add ip, sp, #0x54
00823d5c  28 e0 86 e2                                      add lr, r6, #0x28
00823d60  50 30 8d e5                                      str r3, [sp, #0x50]
00823d64  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00823d68  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00823d6c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00823d70  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00823d74  00 30 9e e5                                      ldr r3, [lr]
00823d78  24 10 94 e5                                      ldr r1, [r4, #0x24]
00823d7c  08 20 9d e5                                      ldr r2, [sp, #8]
00823d80  00 30 cc e5                                      strb r3, [ip]
00823d84  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
00823d88  08 00 a0 e1                                      mov r0, r8
00823d8c  0a 10 81 e0                                      add r1, r1, sl
00823d90  78 30 8d e5                                      str r3, [sp, #0x78]
00823d94  50 30 d6 e5                                      ldrb r3, [r6, #0x50]
00823d98  7c 30 cd e5                                      strb r3, [sp, #0x7c]
00823d9c  88 fb ff eb                                      bl #0x822bc4
00823da0  24 30 94 e5                                      ldr r3, [r4, #0x24]
00823da4  28 20 94 e5                                      ldr r2, [r4, #0x28]
00823da8  02 00 53 e1                                      cmp r3, r2
00823dac  05 00 00 2a                                      bhs #0x823dc8
00823db0  00 20 a0 e3                                      mov r2, #0
00823db4  54 20 83 e4                                      str r2, [r3], #0x54
00823db8  28 10 94 e5                                      ldr r1, [r4, #0x28]
00823dbc  01 20 82 e2                                      add r2, r2, #1
00823dc0  01 00 53 e1                                      cmp r3, r1
00823dc4  fa ff ff 3a                                      blo #0x823db4
00823dc8  6f 74 ff eb                                      bl #0x800f8c
00823dcc  22 e9 ff eb                                      bl #0x81e25c
00823dd0  10 00 9d e5                                      ldr r0, [sp, #0x10]
00823dd4  00 00 50 e3                                      cmp r0, #0
00823dd8  02 00 00 0a                                      beq #0x823de8
00823ddc  97 b1 eb eb                                      bl #0x310440
00823de0  00 30 a0 e3                                      mov r3, #0
00823de4  10 30 8d e5                                      str r3, [sp, #0x10]
00823de8  00 60 a0 e3                                      mov r6, #0
00823dec  00 40 e0 e3                                      mvn r4, #0
00823df0  0c 00 89 e2                                      add r0, sb, #0xc
00823df4  50 60 8d e5                                      str r6, [sp, #0x50]
00823df8  2c 40 8d e5                                      str r4, [sp, #0x2c]
00823dfc  14 d1 eb eb                                      bl #0x318254
00823e00  0c 00 8b e2                                      add r0, fp, #0xc
00823e04  a4 60 8d e5                                      str r6, [sp, #0xa4]
00823e08  80 40 8d e5                                      str r4, [sp, #0x80]
00823e0c  10 d1 eb eb                                      bl #0x318254
00823e10  04 10 9d e5                                      ldr r1, [sp, #4]
00823e14  34 21 9d e5                                      ldr r2, [sp, #0x134]
00823e18  00 00 a0 e3                                      mov r0, #0
00823e1c  01 30 95 e7                                      ldr r3, [r5, r1]
00823e20  00 30 93 e5                                      ldr r3, [r3]
00823e24  03 00 52 e1                                      cmp r2, r3
00823e28  65 00 00 1a                                      bne #0x823fc4
00823e2c  4f df 8d e2                                      add sp, sp, #0x13c
00823e30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00823e34  e8 b0 9d e5                                      ldr fp, [sp, #0xe8]
00823e38  00 11 9d e5                                      ldr r1, [sp, #0x100]
00823e3c  0b 00 a0 e1                                      mov r0, fp
00823e40  35 a9 eb eb                                      bl #0x30e31c
00823e44  00 20 50 e2                                      subs r2, r0, #0
00823e48  6c ff ff 1a                                      bne #0x823c00
00823e4c  00 20 8d e5                                      str r2, [sp]
00823e50  49 ec ff eb                                      bl #0x81ef7c
00823e54  01 30 a0 e3                                      mov r3, #1
00823e58  81 30 c0 e5                                      strb r3, [r0, #0x81]
00823e5c  4a 74 ff eb                                      bl #0x800f8c
00823e60  00 20 9d e5                                      ldr r2, [sp]
00823e64  68 31 9f e5                                      ldr r3, [pc, #0x168]
00823e68  0d 10 a0 e3                                      mov r1, #0xd
00823e6c  03 00 95 e7                                      ldr r0, [r5, r3]
00823e70  02 30 a0 e1                                      mov r3, r2
00823e74  e2 68 ff eb                                      bl #0x7fe204
00823e78  5f ff ff ea                                      b #0x823bfc
00823e7c  0a da ff eb                                      bl #0x81a6ac
00823e80  47 3f 8d e2                                      add r3, sp, #0x11c
00823e84  04 10 90 e5                                      ldr r1, [r0, #4]
00823e88  28 20 8d e2                                      add r2, sp, #0x28
00823e8c  03 00 a0 e1                                      mov r0, r3
00823e90  0c 30 8d e5                                      str r3, [sp, #0xc]
00823e94  94 c0 eb eb                                      bl #0x3140ec
00823e98  30 a1 9d e5                                      ldr sl, [sp, #0x130]
00823e9c  2c 91 9d e5                                      ldr sb, [sp, #0x12c]
00823ea0  09 00 5a e1                                      cmp sl, sb
00823ea4  04 00 00 0a                                      beq #0x823ebc
00823ea8  d0 00 da e1                                      ldrsb r0, [sl]
00823eac  42 9f f1 eb                                      bl #0x48bbbc
00823eb0  01 00 ca e4                                      strb r0, [sl], #1
00823eb4  09 00 5a e1                                      cmp sl, sb
00823eb8  fa ff ff 1a                                      bne #0x823ea8
00823ebc  41 9f 8d e2                                      add sb, sp, #0x104
00823ec0  09 00 a0 e1                                      mov r0, sb
00823ec4  10 10 9d e5                                      ldr r1, [sp, #0x10]
00823ec8  24 20 8d e2                                      add r2, sp, #0x24
00823ecc  86 c0 eb eb                                      bl #0x3140ec
00823ed0  18 a1 9d e5                                      ldr sl, [sp, #0x118]
00823ed4  14 b1 9d e5                                      ldr fp, [sp, #0x114]
00823ed8  0b 00 5a e1                                      cmp sl, fp
00823edc  04 00 00 0a                                      beq #0x823ef4
00823ee0  d0 00 da e1                                      ldrsb r0, [sl]
00823ee4  34 9f f1 eb                                      bl #0x48bbbc
00823ee8  01 00 ca e4                                      strb r0, [sl], #1
00823eec  0b 00 5a e1                                      cmp sl, fp
00823ef0  fa ff ff 1a                                      bne #0x823ee0
00823ef4  20 ec ff eb                                      bl #0x81ef7c
00823ef8  00 30 90 e5                                      ldr r3, [r0]
00823efc  0f e0 a0 e1                                      mov lr, pc
00823f00  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00823f04  00 00 50 e3                                      cmp r0, #0
00823f08  19 00 00 0a                                      beq #0x823f74
00823f0c  18 a1 9d e5                                      ldr sl, [sp, #0x118]
00823f10  09 00 5a e1                                      cmp sl, sb
00823f14  07 00 00 0a                                      beq #0x823f38
00823f18  00 00 5a e3                                      cmp sl, #0
00823f1c  05 00 00 0a                                      beq #0x823f38
00823f20  04 11 9d e5                                      ldr r1, [sp, #0x104]
00823f24  01 10 6a e0                                      rsb r1, sl, r1
00823f28  80 00 51 e3                                      cmp r1, #0x80
00823f2c  21 00 00 8a                                      bhi #0x823fb8
00823f30  0a 00 a0 e1                                      mov r0, sl
00823f34  ff 68 02 eb                                      bl #0x8be338
00823f38  30 01 9d e5                                      ldr r0, [sp, #0x130]
00823f3c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00823f40  0c 00 50 e1                                      cmp r0, ip
00823f44  41 ff ff 0a                                      beq #0x823c50
00823f48  00 00 50 e3                                      cmp r0, #0
00823f4c  3f ff ff 0a                                      beq #0x823c50
00823f50  1c 11 9d e5                                      ldr r1, [sp, #0x11c]
00823f54  01 10 60 e0                                      rsb r1, r0, r1
00823f58  80 00 51 e3                                      cmp r1, #0x80
00823f5c  3a ff ff 9a                                      bls #0x823c4c
00823f60  36 b1 eb eb                                      bl #0x310440
00823f64  39 ff ff ea                                      b #0x823c50
00823f68  0b 00 a0 e1                                      mov r0, fp
00823f6c  33 b1 eb eb                                      bl #0x310440
00823f70  2c ff ff ea                                      b #0x823c28
00823f74  18 a1 9d e5                                      ldr sl, [sp, #0x118]
00823f78  30 11 9d e5                                      ldr r1, [sp, #0x130]
00823f7c  0a 00 a0 e1                                      mov r0, sl
00823f80  e5 a8 eb eb                                      bl #0x30e31c
00823f84  00 b0 50 e2                                      subs fp, r0, #0
00823f88  e0 ff ff 1a                                      bne #0x823f10
00823f8c  fa eb ff eb                                      bl #0x81ef7c
00823f90  01 30 a0 e3                                      mov r3, #1
00823f94  81 30 c0 e5                                      strb r3, [r0, #0x81]
00823f98  fb 73 ff eb                                      bl #0x800f8c
00823f9c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00823fa0  0b 20 a0 e1                                      mov r2, fp
00823fa4  0d 10 a0 e3                                      mov r1, #0xd
00823fa8  03 00 95 e7                                      ldr r0, [r5, r3]
00823fac  0b 30 a0 e1                                      mov r3, fp
00823fb0  93 68 ff eb                                      bl #0x7fe204
00823fb4  d4 ff ff ea                                      b #0x823f0c
00823fb8  0a 00 a0 e1                                      mov r0, sl
00823fbc  1f b1 eb eb                                      bl #0x310440
00823fc0  dc ff ff ea                                      b #0x823f38
00823fc4  d1 a8 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00823fc8  bc 0f 17 00 ac 40 00 00 94 0d 00 00 ac 35 00 00  .byte 0xbc, 0x0f, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0x0d, 0x00, 0x00, 0xac, 0x35, 0x00, 0x00

; FUNCTION 0x00823fd8, declared_size=508, range_size=508, mode=arm
; class-group: CMatchingGLLiveLobbyObserver
; alias: _ZN28CMatchingGLLiveLobbyObserver23OnMPProcessPushMessagesEP10DataPacketi
; demangled: CMatchingGLLiveLobbyObserver::OnMPProcessPushMessages(DataPacket*, int)
; decoder-mode: arm
00823fd8  70 40 2d e9                                      push {r4, r5, r6, lr}
00823fdc  02 50 a0 e1                                      mov r5, r2
00823fe0  00 60 a0 e1                                      mov r6, r0
00823fe4  11 50 45 e2                                      sub r5, r5, #0x11
00823fe8  01 00 a0 e1                                      mov r0, r1
00823fec  01 40 a0 e1                                      mov r4, r1
00823ff0  b6 f4 ff eb                                      bl #0x8212d0
00823ff4  3f 00 55 e3                                      cmp r5, #0x3f
00823ff8  05 f1 8f 90                                      addls pc, pc, r5, lsl #2
00823ffc  43 00 00 ea                                      b #0x824110
00824000  43 00 00 ea                                      b #0x824114
00824004  46 00 00 ea                                      b #0x824124
00824008  40 00 00 ea                                      b #0x824110
0082400c  3f 00 00 ea                                      b #0x824110
00824010  47 00 00 ea                                      b #0x824134
00824014  3d 00 00 ea                                      b #0x824110
00824018  3c 00 00 ea                                      b #0x824110
0082401c  3b 00 00 ea                                      b #0x824110
00824020  3a 00 00 ea                                      b #0x824110
00824024  39 00 00 ea                                      b #0x824110
00824028  38 00 00 ea                                      b #0x824110
0082402c  37 00 00 ea                                      b #0x824110
00824030  36 00 00 ea                                      b #0x824110
00824034  35 00 00 ea                                      b #0x824110
00824038  34 00 00 ea                                      b #0x824110
0082403c  40 00 00 ea                                      b #0x824144
00824040  32 00 00 ea                                      b #0x824110
00824044  31 00 00 ea                                      b #0x824110
00824048  41 00 00 ea                                      b #0x824154
0082404c  2f 00 00 ea                                      b #0x824110
00824050  2e 00 00 ea                                      b #0x824110
00824054  42 00 00 ea                                      b #0x824164
00824058  2c 00 00 ea                                      b #0x824110
0082405c  2b 00 00 ea                                      b #0x824110
00824060  43 00 00 ea                                      b #0x824174
00824064  29 00 00 ea                                      b #0x824110
00824068  28 00 00 ea                                      b #0x824110
0082406c  44 00 00 ea                                      b #0x824184
00824070  26 00 00 ea                                      b #0x824110
00824074  25 00 00 ea                                      b #0x824110
00824078  45 00 00 ea                                      b #0x824194
0082407c  23 00 00 ea                                      b #0x824110
00824080  22 00 00 ea                                      b #0x824110
00824084  46 00 00 ea                                      b #0x8241a4
00824088  49 00 00 ea                                      b #0x8241b4
0082408c  1f 00 00 ea                                      b #0x824110
00824090  1e 00 00 ea                                      b #0x824110
00824094  1d 00 00 ea                                      b #0x824110
00824098  1c 00 00 ea                                      b #0x824110
0082409c  1b 00 00 ea                                      b #0x824110
008240a0  1a 00 00 ea                                      b #0x824110
008240a4  19 00 00 ea                                      b #0x824110
008240a8  18 00 00 ea                                      b #0x824110
008240ac  17 00 00 ea                                      b #0x824110
008240b0  16 00 00 ea                                      b #0x824110
008240b4  15 00 00 ea                                      b #0x824110
008240b8  14 00 00 ea                                      b #0x824110
008240bc  13 00 00 ea                                      b #0x824110
008240c0  12 00 00 ea                                      b #0x824110
008240c4  11 00 00 ea                                      b #0x824110
008240c8  10 00 00 ea                                      b #0x824110
008240cc  0f 00 00 ea                                      b #0x824110
008240d0  0e 00 00 ea                                      b #0x824110
008240d4  0d 00 00 ea                                      b #0x824110
008240d8  0c 00 00 ea                                      b #0x824110
008240dc  0b 00 00 ea                                      b #0x824110
008240e0  0a 00 00 ea                                      b #0x824110
008240e4  09 00 00 ea                                      b #0x824110
008240e8  08 00 00 ea                                      b #0x824110
008240ec  34 00 00 ea                                      b #0x8241c4
008240f0  06 00 00 ea                                      b #0x824110
008240f4  05 00 00 ea                                      b #0x824110
008240f8  04 00 00 ea                                      b #0x824110
008240fc  ff ff ff ea                                      b #0x824100
00824100  06 00 a0 e1                                      mov r0, r6
00824104  04 10 a0 e1                                      mov r1, r4
00824108  70 40 bd e8                                      pop {r4, r5, r6, lr}
0082410c  0a f5 ff ea                                      b #0x82153c
00824110  70 80 bd e8                                      pop {r4, r5, r6, pc}
00824114  06 00 a0 e1                                      mov r0, r6
00824118  04 10 a0 e1                                      mov r1, r4
0082411c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00824120  34 fd ff ea                                      b #0x8235f8
00824124  06 00 a0 e1                                      mov r0, r6
00824128  04 10 a0 e1                                      mov r1, r4
0082412c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00824130  1f fb ff ea                                      b #0x822db4
00824134  06 00 a0 e1                                      mov r0, r6
00824138  04 10 a0 e1                                      mov r1, r4
0082413c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00824140  5f fe ff ea                                      b #0x823ac4
00824144  06 00 a0 e1                                      mov r0, r6
00824148  04 10 a0 e1                                      mov r1, r4
0082414c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00824150  c0 fa ff ea                                      b #0x822c58
00824154  06 00 a0 e1                                      mov r0, r6
00824158  04 10 a0 e1                                      mov r1, r4
0082415c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00824160  81 f4 ff ea                                      b #0x82136c
00824164  06 00 a0 e1                                      mov r0, r6
00824168  04 10 a0 e1                                      mov r1, r4
0082416c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00824170  e6 fc ff ea                                      b #0x823510
00824174  06 00 a0 e1                                      mov r0, r6
00824178  04 10 a0 e1                                      mov r1, r4
0082417c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00824180  7b f4 ff ea                                      b #0x821374
00824184  06 00 a0 e1                                      mov r0, r6
00824188  04 10 a0 e1                                      mov r1, r4
0082418c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00824190  f2 f4 ff ea                                      b #0x821560
00824194  06 00 a0 e1                                      mov r0, r6
00824198  04 10 a0 e1                                      mov r1, r4
0082419c  70 40 bd e8                                      pop {r4, r5, r6, lr}
008241a0  98 fd ff ea                                      b #0x823808
008241a4  06 00 a0 e1                                      mov r0, r6
008241a8  04 10 a0 e1                                      mov r1, r4
008241ac  70 40 bd e8                                      pop {r4, r5, r6, lr}
008241b0  3c f5 ff ea                                      b #0x8216a8
008241b4  06 00 a0 e1                                      mov r0, r6
008241b8  04 10 a0 e1                                      mov r1, r4
008241bc  70 40 bd e8                                      pop {r4, r5, r6, lr}
008241c0  6d f4 ff ea                                      b #0x82137c
008241c4  06 00 a0 e1                                      mov r0, r6
008241c8  04 10 a0 e1                                      mov r1, r4
008241cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
008241d0  6b f4 ff ea                                      b #0x821384
