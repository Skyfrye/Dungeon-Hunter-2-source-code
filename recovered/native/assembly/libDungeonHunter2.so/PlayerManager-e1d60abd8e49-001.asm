; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00330794, declared_size=24, range_size=24, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager23GetLocalPlayerCharacterEv
; demangled: PlayerManager::GetLocalPlayerCharacter()
; decoder-mode: arm
00330794  10 40 2d e9                                      push {r4, lr}
00330798  00 10 a0 e3                                      mov r1, #0
0033079c  01 20 a0 e3                                      mov r2, #1
003307a0  34 f7 00 eb                                      bl #0x36e478
003307a4  60 06 90 e5                                      ldr r0, [r0, #0x660]
003307a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036d280, declared_size=100, range_size=100, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager18IsPlayerInLocalMapEi
; demangled: PlayerManager::IsPlayerInLocalMap(int)
; decoder-mode: arm
0036d280  94 36 90 e5                                      ldr r3, [r0, #0x694]
0036d284  69 0e 80 e2                                      add r0, r0, #0x690
0036d288  00 00 53 e3                                      cmp r3, #0
0036d28c  0f 00 00 0a                                      beq #0x36d2d0
0036d290  00 c0 a0 e1                                      mov ip, r0
0036d294  00 00 00 ea                                      b #0x36d29c
0036d298  02 30 a0 e1                                      mov r3, r2
0036d29c  10 20 93 e5                                      ldr r2, [r3, #0x10]
0036d2a0  02 00 51 e1                                      cmp r1, r2
0036d2a4  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
0036d2a8  08 20 93 d5                                      ldrle r2, [r3, #8]
0036d2ac  0c 30 a0 c1                                      movgt r3, ip
0036d2b0  03 c0 a0 e1                                      mov ip, r3
0036d2b4  00 00 52 e3                                      cmp r2, #0
0036d2b8  f6 ff ff 1a                                      bne #0x36d298
0036d2bc  03 00 50 e1                                      cmp r0, r3
0036d2c0  02 00 00 0a                                      beq #0x36d2d0
0036d2c4  10 20 93 e5                                      ldr r2, [r3, #0x10]
0036d2c8  02 00 51 e1                                      cmp r1, r2
0036d2cc  01 00 00 aa                                      bge #0x36d2d8
0036d2d0  00 00 a0 e3                                      mov r0, #0
0036d2d4  1e ff 2f e1                                      bx lr
0036d2d8  00 00 53 e0                                      subs r0, r3, r0
0036d2dc  01 00 a0 13                                      movne r0, #1
0036d2e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d7a8, declared_size=108, range_size=108, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager13GetNumPlayersEv
; demangled: PlayerManager::GetNumPlayers()
; decoder-mode: arm
0036d7a8  10 40 2d e9                                      push {r4, lr}
0036d7ac  00 40 a0 e1                                      mov r4, r0
0036d7b0  f7 3f 12 eb                                      bl #0x7fd794
0036d7b4  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036d7b8  00 00 53 e3                                      cmp r3, #0
0036d7bc  01 00 00 1a                                      bne #0x36d7c8
0036d7c0  a0 06 94 e5                                      ldr r0, [r4, #0x6a0]
0036d7c4  10 80 bd e8                                      pop {r4, pc}
0036d7c8  b2 cd fe eb                                      bl #0x320e98
0036d7cc  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036d7d0  00 00 53 e3                                      cmp r3, #0
0036d7d4  f9 ff ff 0a                                      beq #0x36d7c0
0036d7d8  eb 4d 12 eb                                      bl #0x800f8c
0036d7dc  00 30 90 e5                                      ldr r3, [r0]
0036d7e0  0f e0 a0 e1                                      mov lr, pc
0036d7e4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036d7e8  00 00 50 e3                                      cmp r0, #0
0036d7ec  f3 ff ff 0a                                      beq #0x36d7c0
0036d7f0  39 8a 12 eb                                      bl #0x8100dc
0036d7f4  39 8a 12 eb                                      bl #0x8100e0
0036d7f8  00 00 50 e3                                      cmp r0, #0
0036d7fc  ef ff ff 0a                                      beq #0x36d7c0
0036d800  a8 36 94 e5                                      ldr r3, [r4, #0x6a8]
0036d804  ac 06 94 e5                                      ldr r0, [r4, #0x6ac]
0036d808  00 00 63 e0                                      rsb r0, r3, r0
0036d80c  40 01 a0 e1                                      asr r0, r0, #2
0036d810  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036d814, declared_size=32, range_size=32, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager16ReceiveQuestSyncEP14PlayerSavegame
; demangled: PlayerManager::ReceiveQuestSync(PlayerSavegame*)
; decoder-mode: arm
0036d814  10 40 2d e9                                      push {r4, lr}
0036d818  00 40 a0 e1                                      mov r4, r0
0036d81c  01 00 a0 e1                                      mov r0, r1
0036d820  6e 1e 84 e2                                      add r1, r4, #0x6e0
0036d824  4d e6 03 eb                                      bl #0x467160
0036d828  00 30 a0 e3                                      mov r3, #0
0036d82c  10 37 c4 e5                                      strb r3, [r4, #0x710]
0036d830  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036d834, declared_size=28, range_size=28, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager20ClearQuestSyncBufferEv
; demangled: PlayerManager::ClearQuestSyncBuffer()
; decoder-mode: arm
0036d834  10 40 2d e9                                      push {r4, lr}
0036d838  00 40 a0 e1                                      mov r4, r0
0036d83c  6e 0e 80 e2                                      add r0, r0, #0x6e0
0036d840  80 a4 fe eb                                      bl #0x316a48
0036d844  00 30 a0 e3                                      mov r3, #0
0036d848  10 37 c4 e5                                      strb r3, [r4, #0x710]
0036d84c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036d850, declared_size=416, range_size=416, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager16_UnpackInventoryER10PlayerInfo
; demangled: PlayerManager::_UnpackInventory(PlayerInfo&)
; decoder-mode: arm
0036d850  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036d854  88 41 9f e5                                      ldr r4, [pc, #0x188]
0036d858  88 31 9f e5                                      ldr r3, [pc, #0x188]
0036d85c  04 d0 4d e2                                      sub sp, sp, #4
0036d860  04 40 8f e0                                      add r4, pc, r4
0036d864  03 00 94 e7                                      ldr r0, [r4, r3]
0036d868  01 70 a0 e1                                      mov r7, r1
0036d86c  48 c7 fe eb                                      bl #0x31f594
0036d870  00 00 50 e3                                      cmp r0, #0
0036d874  54 00 00 0a                                      beq #0x36d9cc
0036d878  44 31 d0 e5                                      ldrb r3, [r0, #0x144]
0036d87c  00 00 53 e3                                      cmp r3, #0
0036d880  51 00 00 0a                                      beq #0x36d9cc
0036d884  6c 36 d7 e5                                      ldrb r3, [r7, #0x66c]
0036d888  00 00 53 e3                                      cmp r3, #0
0036d88c  4e 00 00 1a                                      bne #0x36d9cc
0036d890  60 66 97 e5                                      ldr r6, [r7, #0x660]
0036d894  00 00 56 e3                                      cmp r6, #0
0036d898  4b 00 00 0a                                      beq #0x36d9cc
0036d89c  e5 34 d7 e5                                      ldrb r3, [r7, #0x4e5]
0036d8a0  00 00 53 e3                                      cmp r3, #0
0036d8a4  48 00 00 0a                                      beq #0x36d9cc
0036d8a8  c0 34 97 e5                                      ldr r3, [r7, #0x4c0]
0036d8ac  84 26 97 e5                                      ldr r2, [r7, #0x684]
0036d8b0  03 00 52 e1                                      cmp r2, r3
0036d8b4  3b 9e 87 12                                      addne sb, r7, #0x3b0
0036d8b8  3d 00 00 0a                                      beq #0x36d9b4
0036d8bc  df 5f 86 e2                                      add r5, r6, #0x37c
0036d8c0  84 36 87 e5                                      str r3, [r7, #0x684]
0036d8c4  05 00 a0 e1                                      mov r0, r5
0036d8c8  14 49 02 eb                                      bl #0x3ffd20
0036d8cc  00 71 a0 e1                                      lsl r7, r0, #2
0036d8d0  00 80 a0 e1                                      mov r8, r0
0036d8d4  00 10 a0 e3                                      mov r1, #0
0036d8d8  07 00 a0 e1                                      mov r0, r7
0036d8dc  22 8b fe eb                                      bl #0x31056c
0036d8e0  00 a0 a0 e1                                      mov sl, r0
0036d8e4  0a 10 a0 e1                                      mov r1, sl
0036d8e8  07 20 a0 e1                                      mov r2, r7
0036d8ec  09 00 a0 e1                                      mov r0, sb
0036d8f0  7f ff ff eb                                      bl #0x36d6f4
0036d8f4  05 00 a0 e1                                      mov r0, r5
0036d8f8  01 10 a0 e3                                      mov r1, #1
0036d8fc  6e 43 02 eb                                      bl #0x3fe6bc
0036d900  00 00 58 e3                                      cmp r8, #0
0036d904  32 00 00 da                                      ble #0x36d9d4
0036d908  00 70 a0 e3                                      mov r7, #0
0036d90c  d8 90 9f e5                                      ldr sb, [pc, #0xd8]
0036d910  07 50 a0 e1                                      mov r5, r7
0036d914  06 00 00 ea                                      b #0x36d934
0036d918  00 30 96 e5                                      ldr r3, [r6]
0036d91c  0f e0 a0 e1                                      mov lr, pc
0036d920  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0036d924  01 50 85 e2                                      add r5, r5, #1
0036d928  05 00 58 e1                                      cmp r8, r5
0036d92c  04 70 87 e2                                      add r7, r7, #4
0036d930  27 00 00 0a                                      beq #0x36d9d4
0036d934  07 30 9a e7                                      ldr r3, [sl, r7]
0036d938  05 10 a0 e1                                      mov r1, r5
0036d93c  06 00 a0 e1                                      mov r0, r6
0036d940  00 00 53 e3                                      cmp r3, #0
0036d944  f3 ff ff ba                                      blt #0x36d918
0036d948  09 20 94 e7                                      ldr r2, [r4, sb]
0036d94c  00 20 92 e5                                      ldr r2, [r2]
0036d950  00 00 52 e3                                      cmp r2, #0
0036d954  ef ff ff 0a                                      beq #0x36d918
0036d958  03 00 52 e1                                      cmp r2, r3
0036d95c  ed ff ff 9a                                      bls #0x36d918
0036d960  00 10 a0 e3                                      mov r1, #0
0036d964  6c 00 a0 e3                                      mov r0, #0x6c
0036d968  00 8b fe eb                                      bl #0x310570
0036d96c  07 10 9a e7                                      ldr r1, [sl, r7]
0036d970  01 20 a0 e3                                      mov r2, #1
0036d974  00 b0 a0 e1                                      mov fp, r0
0036d978  3b 3a 02 eb                                      bl #0x3fc26c
0036d97c  01 20 a0 e3                                      mov r2, #1
0036d980  0b 10 a0 e1                                      mov r1, fp
0036d984  02 30 a0 e1                                      mov r3, r2
0036d988  00 c0 96 e5                                      ldr ip, [r6]
0036d98c  06 00 a0 e1                                      mov r0, r6
0036d990  0f e0 a0 e1                                      mov lr, pc
0036d994  2c f1 9c e5                                      ldr pc, [ip, #0x12c]
0036d998  00 30 96 e5                                      ldr r3, [r6]
0036d99c  00 20 a0 e1                                      mov r2, r0
0036d9a0  05 10 a0 e1                                      mov r1, r5
0036d9a4  06 00 a0 e1                                      mov r0, r6
0036d9a8  0f e0 a0 e1                                      mov lr, pc
0036d9ac  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
0036d9b0  db ff ff ea                                      b #0x36d924
0036d9b4  3b 9e 87 e2                                      add sb, r7, #0x3b0
0036d9b8  09 00 a0 e1                                      mov r0, sb
0036d9bc  6b 9d 12 eb                                      bl #0x814f70
0036d9c0  00 00 50 e3                                      cmp r0, #0
0036d9c4  c0 34 97 15                                      ldrne r3, [r7, #0x4c0]
0036d9c8  bb ff ff 1a                                      bne #0x36d8bc
0036d9cc  04 d0 8d e2                                      add sp, sp, #4
0036d9d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0036d9d4  0a 00 a0 e1                                      mov r0, sl
0036d9d8  04 d0 8d e2                                      add sp, sp, #4
0036d9dc  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036d9e0  96 8a fe ea                                      b #0x310440
; mapping-symbol data/literal pool
0036d9e4  30 72 62 00 f4 37 00 00 60 0d 00 00              .byte 0x30, 0x72, 0x62, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x60, 0x0d, 0x00, 0x00

; FUNCTION 0x0036de28, declared_size=40, range_size=40, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager19IsPlayerInRemoteMapEi
; demangled: PlayerManager::IsPlayerInRemoteMap(int)
; decoder-mode: arm
0036de28  10 40 2d e9                                      push {r4, lr}
0036de2c  01 40 a0 e1                                      mov r4, r1
0036de30  a9 88 12 eb                                      bl #0x8100dc
0036de34  04 10 a0 e1                                      mov r1, r4
0036de38  00 20 a0 e3                                      mov r2, #0
0036de3c  e7 88 12 eb                                      bl #0x8101e0
0036de40  00 30 90 e5                                      ldr r3, [r0]
0036de44  0f e0 a0 e1                                      mov lr, pc
0036de48  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0036de4c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036de50, declared_size=116, range_size=116, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager15DoesPlayerExistEi
; demangled: PlayerManager::DoesPlayerExist(int)
; decoder-mode: arm
0036de50  70 40 2d e9                                      push {r4, r5, r6, lr}
0036de54  00 40 a0 e1                                      mov r4, r0
0036de58  01 50 a0 e1                                      mov r5, r1
0036de5c  4c 3e 12 eb                                      bl #0x7fd794
0036de60  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036de64  00 00 53 e3                                      cmp r3, #0
0036de68  03 00 00 1a                                      bne #0x36de7c
0036de6c  04 00 a0 e1                                      mov r0, r4
0036de70  05 10 a0 e1                                      mov r1, r5
0036de74  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036de78  00 fd ff ea                                      b #0x36d280
0036de7c  05 cc fe eb                                      bl #0x320e98
0036de80  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036de84  00 00 53 e3                                      cmp r3, #0
0036de88  f7 ff ff 0a                                      beq #0x36de6c
0036de8c  3e 4c 12 eb                                      bl #0x800f8c
0036de90  00 30 90 e5                                      ldr r3, [r0]
0036de94  0f e0 a0 e1                                      mov lr, pc
0036de98  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036de9c  00 00 50 e3                                      cmp r0, #0
0036dea0  f1 ff ff 0a                                      beq #0x36de6c
0036dea4  8c 88 12 eb                                      bl #0x8100dc
0036dea8  8c 88 12 eb                                      bl #0x8100e0
0036deac  00 00 50 e3                                      cmp r0, #0
0036deb0  ed ff ff 0a                                      beq #0x36de6c
0036deb4  04 00 a0 e1                                      mov r0, r4
0036deb8  05 10 a0 e1                                      mov r1, r5
0036debc  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036dec0  d8 ff ff ea                                      b #0x36de28

; FUNCTION 0x0036dec4, declared_size=236, range_size=236, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager17_GetNetPlayerInfoEib
; demangled: PlayerManager::_GetNetPlayerInfo(int, bool)
; decoder-mode: arm
0036dec4  70 40 2d e9                                      push {r4, r5, r6, lr}
0036dec8  08 d0 4d e2                                      sub sp, sp, #8
0036decc  01 50 a0 e1                                      mov r5, r1
0036ded0  02 40 a0 e1                                      mov r4, r2
0036ded4  2e 3e 12 eb                                      bl #0x7fd794
0036ded8  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036dedc  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
0036dee0  00 00 53 e3                                      cmp r3, #0
0036dee4  06 60 8f e0                                      add r6, pc, r6
0036dee8  0e 00 00 1a                                      bne #0x36df28
0036deec  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0036def0  03 30 96 e7                                      ldr r3, [r6, r3]
0036def4  00 30 93 e5                                      ldr r3, [r3]
0036def8  02 00 53 e3                                      cmp r3, #2
0036defc  00 30 a0 03                                      moveq r3, #0
0036df00  00 30 83 05                                      streq r3, [r3]
0036df04  01 00 00 0a                                      beq #0x36df10
0036df08  01 00 53 e3                                      cmp r3, #1
0036df0c  14 00 00 0a                                      beq #0x36df64
0036df10  71 88 12 eb                                      bl #0x8100dc
0036df14  05 10 a0 e1                                      mov r1, r5
0036df18  04 20 a0 e1                                      mov r2, r4
0036df1c  08 d0 8d e2                                      add sp, sp, #8
0036df20  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036df24  ad 88 12 ea                                      b #0x8101e0
0036df28  da cb fe eb                                      bl #0x320e98
0036df2c  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036df30  00 00 53 e3                                      cmp r3, #0
0036df34  ec ff ff 0a                                      beq #0x36deec
0036df38  13 4c 12 eb                                      bl #0x800f8c
0036df3c  00 30 90 e5                                      ldr r3, [r0]
0036df40  0f e0 a0 e1                                      mov lr, pc
0036df44  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036df48  00 00 50 e3                                      cmp r0, #0
0036df4c  e6 ff ff 0a                                      beq #0x36deec
0036df50  61 88 12 eb                                      bl #0x8100dc
0036df54  61 88 12 eb                                      bl #0x8100e0
0036df58  00 00 50 e3                                      cmp r0, #0
0036df5c  eb ff ff 1a                                      bne #0x36df10
0036df60  e1 ff ff ea                                      b #0x36deec
0036df64  34 00 9f e5                                      ldr r0, [pc, #0x34]
0036df68  34 10 9f e5                                      ldr r1, [pc, #0x34]
0036df6c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0036df70  00 00 96 e7                                      ldr r0, [r6, r0]
0036df74  30 30 9f e5                                      ldr r3, [pc, #0x30]
0036df78  76 c7 00 e3                                      movw ip, #0x776
0036df7c  01 10 8f e0                                      add r1, pc, r1
0036df80  02 20 8f e0                                      add r2, pc, r2
0036df84  03 30 8f e0                                      add r3, pc, r3
0036df88  a8 00 80 e2                                      add r0, r0, #0xa8
0036df8c  00 c0 8d e5                                      str ip, [sp]
0036df90  1b 80 fe eb                                      bl #0x30e004
0036df94  dd ff ff ea                                      b #0x36df10
; mapping-symbol data/literal pool
0036df98  ac 6b 62 00 c0 39 00 00 c0 19 00 00 5c 04 55 00  .byte 0xac, 0x6b, 0x62, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x5c, 0x04, 0x55, 0x00
0036dfa8  d0 36 55 00 6c 37 55 00                          .byte 0xd0, 0x36, 0x55, 0x00, 0x6c, 0x37, 0x55, 0x00

; FUNCTION 0x0036dfb0, declared_size=236, range_size=236, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager21GetPlayerByInternalIDEib
; demangled: PlayerManager::GetPlayerByInternalID(int, bool)
; decoder-mode: arm
0036dfb0  01 00 71 e3                                      cmn r1, #1
0036dfb4  70 40 2d e9                                      push {r4, r5, r6, lr}
0036dfb8  01 40 a0 e1                                      mov r4, r1
0036dfbc  00 50 a0 e1                                      mov r5, r0
0036dfc0  02 60 a0 e1                                      mov r6, r2
0036dfc4  1d 00 00 0a                                      beq #0x36e040
0036dfc8  f1 3d 12 eb                                      bl #0x7fd794
0036dfcc  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036dfd0  00 00 53 e3                                      cmp r3, #0
0036dfd4  1b 00 00 1a                                      bne #0x36e048
0036dfd8  94 06 95 e5                                      ldr r0, [r5, #0x694]
0036dfdc  69 1e 85 e2                                      add r1, r5, #0x690
0036dfe0  00 00 50 e3                                      cmp r0, #0
0036dfe4  01 20 a0 11                                      movne r2, r1
0036dfe8  01 00 00 1a                                      bne #0x36dff4
0036dfec  11 00 00 ea                                      b #0x36e038
0036dff0  03 00 a0 e1                                      mov r0, r3
0036dff4  10 30 90 e5                                      ldr r3, [r0, #0x10]
0036dff8  03 00 54 e1                                      cmp r4, r3
0036dffc  0c 30 90 c5                                      ldrgt r3, [r0, #0xc]
0036e000  08 30 90 d5                                      ldrle r3, [r0, #8]
0036e004  02 00 a0 c1                                      movgt r0, r2
0036e008  00 20 a0 e1                                      mov r2, r0
0036e00c  00 00 53 e3                                      cmp r3, #0
0036e010  f6 ff ff 1a                                      bne #0x36dff0
0036e014  00 00 51 e1                                      cmp r1, r0
0036e018  1d 00 00 0a                                      beq #0x36e094
0036e01c  10 30 90 e5                                      ldr r3, [r0, #0x10]
0036e020  03 00 54 e1                                      cmp r4, r3
0036e024  03 00 00 ba                                      blt #0x36e038
0036e028  00 00 51 e1                                      cmp r1, r0
0036e02c  18 00 00 0a                                      beq #0x36e094
0036e030  18 00 80 e2                                      add r0, r0, #0x18
0036e034  70 80 bd e8                                      pop {r4, r5, r6, pc}
0036e038  01 00 a0 e1                                      mov r0, r1
0036e03c  f9 ff ff ea                                      b #0x36e028
0036e040  08 00 80 e2                                      add r0, r0, #8
0036e044  70 80 bd e8                                      pop {r4, r5, r6, pc}
0036e048  92 cb fe eb                                      bl #0x320e98
0036e04c  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036e050  00 00 53 e3                                      cmp r3, #0
0036e054  df ff ff 0a                                      beq #0x36dfd8
0036e058  cb 4b 12 eb                                      bl #0x800f8c
0036e05c  00 30 90 e5                                      ldr r3, [r0]
0036e060  0f e0 a0 e1                                      mov lr, pc
0036e064  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036e068  00 00 50 e3                                      cmp r0, #0
0036e06c  d9 ff ff 0a                                      beq #0x36dfd8
0036e070  19 88 12 eb                                      bl #0x8100dc
0036e074  19 88 12 eb                                      bl #0x8100e0
0036e078  00 00 50 e3                                      cmp r0, #0
0036e07c  d5 ff ff 0a                                      beq #0x36dfd8
0036e080  05 00 a0 e1                                      mov r0, r5
0036e084  04 10 a0 e1                                      mov r1, r4
0036e088  06 20 a0 e1                                      mov r2, r6
0036e08c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036e090  8b ff ff ea                                      b #0x36dec4
0036e094  08 00 85 e2                                      add r0, r5, #8
0036e098  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0036e09c, declared_size=112, range_size=112, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager16GetHostingPlayerEv
; demangled: PlayerManager::GetHostingPlayer()
; decoder-mode: arm
0036e09c  10 40 2d e9                                      push {r4, lr}
0036e0a0  00 40 a0 e1                                      mov r4, r0
0036e0a4  ba 3d 12 eb                                      bl #0x7fd794
0036e0a8  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036e0ac  00 00 53 e3                                      cmp r3, #0
0036e0b0  04 00 00 1a                                      bne #0x36e0c8
0036e0b4  00 10 a0 e3                                      mov r1, #0
0036e0b8  04 00 a0 e1                                      mov r0, r4
0036e0bc  00 20 a0 e3                                      mov r2, #0
0036e0c0  10 40 bd e8                                      pop {r4, lr}
0036e0c4  b9 ff ff ea                                      b #0x36dfb0
0036e0c8  72 cb fe eb                                      bl #0x320e98
0036e0cc  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036e0d0  00 00 53 e3                                      cmp r3, #0
0036e0d4  f6 ff ff 0a                                      beq #0x36e0b4
0036e0d8  ab 4b 12 eb                                      bl #0x800f8c
0036e0dc  00 30 90 e5                                      ldr r3, [r0]
0036e0e0  0f e0 a0 e1                                      mov lr, pc
0036e0e4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036e0e8  00 00 50 e3                                      cmp r0, #0
0036e0ec  f0 ff ff 0a                                      beq #0x36e0b4
0036e0f0  f9 87 12 eb                                      bl #0x8100dc
0036e0f4  f9 87 12 eb                                      bl #0x8100e0
0036e0f8  00 00 50 e3                                      cmp r0, #0
0036e0fc  ec ff ff 0a                                      beq #0x36e0b4
0036e100  f5 87 12 eb                                      bl #0x8100dc
0036e104  70 11 90 e5                                      ldr r1, [r0, #0x170]
0036e108  ea ff ff ea                                      b #0x36e0b8

; FUNCTION 0x0036e10c, declared_size=416, range_size=416, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager24_GetInternalIDByRemoteIDEib
; demangled: PlayerManager::_GetInternalIDByRemoteID(int, bool)
; decoder-mode: arm
0036e10c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036e110  00 40 a0 e1                                      mov r4, r0
0036e114  01 50 a0 e1                                      mov r5, r1
0036e118  02 60 a0 e1                                      mov r6, r2
0036e11c  9c 3d 12 eb                                      bl #0x7fd794
0036e120  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036e124  00 00 53 e3                                      cmp r3, #0
0036e128  04 00 00 1a                                      bne #0x36e140
0036e12c  a0 36 94 e5                                      ldr r3, [r4, #0x6a0]
0036e130  03 00 55 e1                                      cmp r5, r3
0036e134  31 00 00 3a                                      blo #0x36e200
0036e138  00 00 e0 e3                                      mvn r0, #0
0036e13c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e140  54 cb fe eb                                      bl #0x320e98
0036e144  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036e148  00 00 53 e3                                      cmp r3, #0
0036e14c  f6 ff ff 0a                                      beq #0x36e12c
0036e150  8d 4b 12 eb                                      bl #0x800f8c
0036e154  00 30 90 e5                                      ldr r3, [r0]
0036e158  0f e0 a0 e1                                      mov lr, pc
0036e15c  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036e160  00 00 50 e3                                      cmp r0, #0
0036e164  f0 ff ff 0a                                      beq #0x36e12c
0036e168  db 87 12 eb                                      bl #0x8100dc
0036e16c  db 87 12 eb                                      bl #0x8100e0
0036e170  00 00 50 e3                                      cmp r0, #0
0036e174  ec ff ff 0a                                      beq #0x36e12c
0036e178  a8 36 94 e5                                      ldr r3, [r4, #0x6a8]
0036e17c  ac 26 94 e5                                      ldr r2, [r4, #0x6ac]
0036e180  02 20 63 e0                                      rsb r2, r3, r2
0036e184  42 01 55 e1                                      cmp r5, r2, asr #2
0036e188  ea ff ff 2a                                      bhs #0x36e138
0036e18c  00 20 a0 e3                                      mov r2, #0
0036e190  02 70 a0 e1                                      mov r7, r2
0036e194  02 80 a0 e1                                      mov r8, r2
0036e198  07 00 00 ea                                      b #0x36e1bc
0036e19c  05 00 58 e1                                      cmp r8, r5
0036e1a0  3d 00 00 0a                                      beq #0x36e29c
0036e1a4  01 80 88 e2                                      add r8, r8, #1
0036e1a8  a8 36 94 e5                                      ldr r3, [r4, #0x6a8]
0036e1ac  ac 16 94 e5                                      ldr r1, [r4, #0x6ac]
0036e1b0  01 10 63 e0                                      rsb r1, r3, r1
0036e1b4  41 01 57 e1                                      cmp r7, r1, asr #2
0036e1b8  0e 00 00 2a                                      bhs #0x36e1f8
0036e1bc  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
0036e1c0  04 00 a0 e1                                      mov r0, r4
0036e1c4  00 20 a0 e3                                      mov r2, #0
0036e1c8  78 ff ff eb                                      bl #0x36dfb0
0036e1cc  6c 36 d0 e5                                      ldrb r3, [r0, #0x66c]
0036e1d0  01 70 87 e2                                      add r7, r7, #1
0036e1d4  07 20 a0 e1                                      mov r2, r7
0036e1d8  01 00 53 e3                                      cmp r3, #1
0036e1dc  f1 ff ff 0a                                      beq #0x36e1a8
0036e1e0  00 00 56 e3                                      cmp r6, #0
0036e1e4  ec ff ff 0a                                      beq #0x36e19c
0036e1e8  60 36 90 e5                                      ldr r3, [r0, #0x660]
0036e1ec  00 00 53 e3                                      cmp r3, #0
0036e1f0  e9 ff ff 1a                                      bne #0x36e19c
0036e1f4  eb ff ff ea                                      b #0x36e1a8
0036e1f8  00 00 e0 e3                                      mvn r0, #0
0036e1fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e200  98 26 94 e5                                      ldr r2, [r4, #0x698]
0036e204  69 ce 84 e2                                      add ip, r4, #0x690
0036e208  00 00 a0 e3                                      mov r0, #0
0036e20c  02 00 5c e1                                      cmp ip, r2
0036e210  f8 ff ff 0a                                      beq #0x36e1f8
0036e214  84 36 d2 e5                                      ldrb r3, [r2, #0x684]
0036e218  01 00 53 e3                                      cmp r3, #1
0036e21c  04 00 00 0a                                      beq #0x36e234
0036e220  00 00 56 e3                                      cmp r6, #0
0036e224  0b 00 00 1a                                      bne #0x36e258
0036e228  05 00 50 e1                                      cmp r0, r5
0036e22c  1c 00 00 0a                                      beq #0x36e2a4
0036e230  01 00 80 e2                                      add r0, r0, #1
0036e234  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0036e238  00 00 51 e3                                      cmp r1, #0
0036e23c  09 00 00 0a                                      beq #0x36e268
0036e240  01 20 a0 e1                                      mov r2, r1
0036e244  08 30 92 e5                                      ldr r3, [r2, #8]
0036e248  00 00 53 e3                                      cmp r3, #0
0036e24c  ee ff ff 0a                                      beq #0x36e20c
0036e250  03 20 a0 e1                                      mov r2, r3
0036e254  fa ff ff ea                                      b #0x36e244
0036e258  78 36 92 e5                                      ldr r3, [r2, #0x678]
0036e25c  00 00 53 e3                                      cmp r3, #0
0036e260  f0 ff ff 1a                                      bne #0x36e228
0036e264  f2 ff ff ea                                      b #0x36e234
0036e268  04 30 92 e5                                      ldr r3, [r2, #4]
0036e26c  0c 40 93 e5                                      ldr r4, [r3, #0xc]
0036e270  04 00 52 e1                                      cmp r2, r4
0036e274  05 00 00 1a                                      bne #0x36e290
0036e278  03 20 a0 e1                                      mov r2, r3
0036e27c  04 30 93 e5                                      ldr r3, [r3, #4]
0036e280  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0036e284  02 00 51 e1                                      cmp r1, r2
0036e288  fa ff ff 0a                                      beq #0x36e278
0036e28c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0036e290  03 00 51 e1                                      cmp r1, r3
0036e294  03 20 a0 11                                      movne r2, r3
0036e298  db ff ff ea                                      b #0x36e20c
0036e29c  70 06 90 e5                                      ldr r0, [r0, #0x670]
0036e2a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e2a4  88 06 92 e5                                      ldr r0, [r2, #0x688]
0036e2a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0036e2ac, declared_size=32, range_size=32, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager15GetRemotePlayerEib
; demangled: PlayerManager::GetRemotePlayer(int, bool)
; decoder-mode: arm
0036e2ac  10 40 2d e9                                      push {r4, lr}
0036e2b0  00 40 a0 e1                                      mov r4, r0
0036e2b4  94 ff ff eb                                      bl #0x36e10c
0036e2b8  00 20 a0 e3                                      mov r2, #0
0036e2bc  00 10 a0 e1                                      mov r1, r0
0036e2c0  04 00 a0 e1                                      mov r0, r4
0036e2c4  10 40 bd e8                                      pop {r4, lr}
0036e2c8  38 ff ff ea                                      b #0x36dfb0

; FUNCTION 0x0036e2cc, declared_size=428, range_size=428, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager23_GetInternalIDByLocalIDEib
; demangled: PlayerManager::_GetInternalIDByLocalID(int, bool)
; decoder-mode: arm
0036e2cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036e2d0  00 50 a0 e1                                      mov r5, r0
0036e2d4  01 40 a0 e1                                      mov r4, r1
0036e2d8  02 60 a0 e1                                      mov r6, r2
0036e2dc  2c 3d 12 eb                                      bl #0x7fd794
0036e2e0  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036e2e4  00 00 53 e3                                      cmp r3, #0
0036e2e8  04 00 00 1a                                      bne #0x36e300
0036e2ec  a0 36 95 e5                                      ldr r3, [r5, #0x6a0]
0036e2f0  03 00 54 e1                                      cmp r4, r3
0036e2f4  19 00 00 3a                                      blo #0x36e360
0036e2f8  00 00 e0 e3                                      mvn r0, #0
0036e2fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e300  e4 ca fe eb                                      bl #0x320e98
0036e304  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036e308  00 00 53 e3                                      cmp r3, #0
0036e30c  f6 ff ff 0a                                      beq #0x36e2ec
0036e310  1d 4b 12 eb                                      bl #0x800f8c
0036e314  00 30 90 e5                                      ldr r3, [r0]
0036e318  0f e0 a0 e1                                      mov lr, pc
0036e31c  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036e320  00 00 50 e3                                      cmp r0, #0
0036e324  f0 ff ff 0a                                      beq #0x36e2ec
0036e328  6b 87 12 eb                                      bl #0x8100dc
0036e32c  6b 87 12 eb                                      bl #0x8100e0
0036e330  00 00 50 e3                                      cmp r0, #0
0036e334  ec ff ff 0a                                      beq #0x36e2ec
0036e338  b4 26 95 e5                                      ldr r2, [r5, #0x6b4]
0036e33c  b8 36 95 e5                                      ldr r3, [r5, #0x6b8]
0036e340  03 30 62 e0                                      rsb r3, r2, r3
0036e344  43 31 a0 e1                                      asr r3, r3, #2
0036e348  03 00 54 e1                                      cmp r4, r3
0036e34c  e9 ff ff 2a                                      bhs #0x36e2f8
0036e350  00 00 56 e3                                      cmp r6, #0
0036e354  28 00 00 1a                                      bne #0x36e3fc
0036e358  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
0036e35c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e360  98 26 95 e5                                      ldr r2, [r5, #0x698]
0036e364  69 ce 85 e2                                      add ip, r5, #0x690
0036e368  00 00 a0 e3                                      mov r0, #0
0036e36c  02 00 5c e1                                      cmp ip, r2
0036e370  3e 00 00 0a                                      beq #0x36e470
0036e374  84 36 d2 e5                                      ldrb r3, [r2, #0x684]
0036e378  00 00 53 e3                                      cmp r3, #0
0036e37c  04 00 00 0a                                      beq #0x36e394
0036e380  00 00 56 e3                                      cmp r6, #0
0036e384  0b 00 00 1a                                      bne #0x36e3b8
0036e388  04 00 50 e1                                      cmp r0, r4
0036e38c  35 00 00 0a                                      beq #0x36e468
0036e390  01 00 80 e2                                      add r0, r0, #1
0036e394  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0036e398  00 00 51 e3                                      cmp r1, #0
0036e39c  09 00 00 0a                                      beq #0x36e3c8
0036e3a0  01 20 a0 e1                                      mov r2, r1
0036e3a4  08 30 92 e5                                      ldr r3, [r2, #8]
0036e3a8  00 00 53 e3                                      cmp r3, #0
0036e3ac  ee ff ff 0a                                      beq #0x36e36c
0036e3b0  03 20 a0 e1                                      mov r2, r3
0036e3b4  fa ff ff ea                                      b #0x36e3a4
0036e3b8  78 36 92 e5                                      ldr r3, [r2, #0x678]
0036e3bc  00 00 53 e3                                      cmp r3, #0
0036e3c0  f0 ff ff 1a                                      bne #0x36e388
0036e3c4  f2 ff ff ea                                      b #0x36e394
0036e3c8  04 30 92 e5                                      ldr r3, [r2, #4]
0036e3cc  0c 50 93 e5                                      ldr r5, [r3, #0xc]
0036e3d0  05 00 52 e1                                      cmp r2, r5
0036e3d4  05 00 00 1a                                      bne #0x36e3f0
0036e3d8  03 20 a0 e1                                      mov r2, r3
0036e3dc  04 30 93 e5                                      ldr r3, [r3, #4]
0036e3e0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0036e3e4  02 00 51 e1                                      cmp r1, r2
0036e3e8  fa ff ff 0a                                      beq #0x36e3d8
0036e3ec  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0036e3f0  01 00 53 e1                                      cmp r3, r1
0036e3f4  03 20 a0 11                                      movne r2, r3
0036e3f8  db ff ff ea                                      b #0x36e36c
0036e3fc  00 00 53 e3                                      cmp r3, #0
0036e400  00 30 a0 13                                      movne r3, #0
0036e404  03 60 a0 11                                      movne r6, r3
0036e408  03 70 a0 11                                      movne r7, r3
0036e40c  06 00 00 1a                                      bne #0x36e42c
0036e410  16 00 00 ea                                      b #0x36e470
0036e414  01 70 87 e2                                      add r7, r7, #1
0036e418  b4 26 95 e5                                      ldr r2, [r5, #0x6b4]
0036e41c  b8 16 95 e5                                      ldr r1, [r5, #0x6b8]
0036e420  01 10 62 e0                                      rsb r1, r2, r1
0036e424  41 01 56 e1                                      cmp r6, r1, asr #2
0036e428  10 00 00 2a                                      bhs #0x36e470
0036e42c  03 11 92 e7                                      ldr r1, [r2, r3, lsl #2]
0036e430  05 00 a0 e1                                      mov r0, r5
0036e434  00 20 a0 e3                                      mov r2, #0
0036e438  03 81 a0 e1                                      lsl r8, r3, #2
0036e43c  db fe ff eb                                      bl #0x36dfb0
0036e440  60 26 90 e5                                      ldr r2, [r0, #0x660]
0036e444  01 60 86 e2                                      add r6, r6, #1
0036e448  06 30 a0 e1                                      mov r3, r6
0036e44c  00 00 52 e3                                      cmp r2, #0
0036e450  f0 ff ff 0a                                      beq #0x36e418
0036e454  04 00 57 e1                                      cmp r7, r4
0036e458  ed ff ff 1a                                      bne #0x36e414
0036e45c  b4 36 95 e5                                      ldr r3, [r5, #0x6b4]
0036e460  08 00 93 e7                                      ldr r0, [r3, r8]
0036e464  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e468  88 06 92 e5                                      ldr r0, [r2, #0x688]
0036e46c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e470  00 00 e0 e3                                      mvn r0, #0
0036e474  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0036e478, declared_size=32, range_size=32, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager14GetLocalPlayerEib
; demangled: PlayerManager::GetLocalPlayer(int, bool)
; decoder-mode: arm
0036e478  10 40 2d e9                                      push {r4, lr}
0036e47c  00 40 a0 e1                                      mov r4, r0
0036e480  91 ff ff eb                                      bl #0x36e2cc
0036e484  00 20 a0 e3                                      mov r2, #0
0036e488  00 10 a0 e1                                      mov r1, r0
0036e48c  04 00 a0 e1                                      mov r0, r4
0036e490  10 40 bd e8                                      pop {r4, lr}
0036e494  c5 fe ff ea                                      b #0x36dfb0

; FUNCTION 0x0036e498, declared_size=284, range_size=284, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager18HandleQuestSyncMsgEPKci
; demangled: PlayerManager::HandleQuestSyncMsg(char const*, int)
; decoder-mode: arm
0036e498  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036e49c  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
0036e4a0  00 60 52 e2                                      subs r6, r2, #0
0036e4a4  08 d0 4d e2                                      sub sp, sp, #8
0036e4a8  00 40 a0 e1                                      mov r4, r0
0036e4ac  03 30 8f e0                                      add r3, pc, r3
0036e4b0  01 50 a0 e1                                      mov r5, r1
0036e4b4  22 00 00 da                                      ble #0x36e544
0036e4b8  01 20 a0 e3                                      mov r2, #1
0036e4bc  04 00 a0 e1                                      mov r0, r4
0036e4c0  00 10 a0 e3                                      mov r1, #0
0036e4c4  eb ff ff eb                                      bl #0x36e478
0036e4c8  10 37 d4 e5                                      ldrb r3, [r4, #0x710]
0036e4cc  60 26 90 e5                                      ldr r2, [r0, #0x660]
0036e4d0  00 00 53 e3                                      cmp r3, #0
0036e4d4  08 00 00 1a                                      bne #0x36e4fc
0036e4d8  00 00 52 e3                                      cmp r2, #0
0036e4dc  06 00 00 0a                                      beq #0x36e4fc
0036e4e0  e8 34 01 e3                                      movw r3, #0x14e8
0036e4e4  03 30 92 e7                                      ldr r3, [r2, r3]
0036e4e8  00 00 53 e3                                      cmp r3, #0
0036e4ec  05 00 00 0a                                      beq #0x36e508
0036e4f0  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
0036e4f4  00 00 53 e3                                      cmp r3, #0
0036e4f8  02 00 00 0a                                      beq #0x36e508
0036e4fc  1a 37 d4 e5                                      ldrb r3, [r4, #0x71a]
0036e500  00 00 53 e3                                      cmp r3, #0
0036e504  0c 00 00 0a                                      beq #0x36e53c
0036e508  c6 7f a0 e1                                      asr r7, r6, #0x1f
0036e50c  6e 8e 84 e2                                      add r8, r4, #0x6e0
0036e510  08 00 a0 e1                                      mov r0, r8
0036e514  06 20 a0 e1                                      mov r2, r6
0036e518  07 30 a0 e1                                      mov r3, r7
0036e51c  17 a3 fe eb                                      bl #0x317180
0036e520  07 30 a0 e1                                      mov r3, r7
0036e524  08 00 a0 e1                                      mov r0, r8
0036e528  05 10 a0 e1                                      mov r1, r5
0036e52c  06 20 a0 e1                                      mov r2, r6
0036e530  a7 a2 fe eb                                      bl #0x316fd4
0036e534  01 30 a0 e3                                      mov r3, #1
0036e538  10 37 c4 e5                                      strb r3, [r4, #0x710]
0036e53c  08 d0 8d e2                                      add sp, sp, #8
0036e540  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e544  54 20 9f e5                                      ldr r2, [pc, #0x54]
0036e548  02 20 93 e7                                      ldr r2, [r3, r2]
0036e54c  00 20 92 e5                                      ldr r2, [r2]
0036e550  02 00 52 e3                                      cmp r2, #2
0036e554  00 30 a0 03                                      moveq r3, #0
0036e558  00 30 83 05                                      streq r3, [r3]
0036e55c  d5 ff ff 0a                                      beq #0x36e4b8
0036e560  01 00 52 e3                                      cmp r2, #1
0036e564  d3 ff ff 1a                                      bne #0x36e4b8
0036e568  34 00 9f e5                                      ldr r0, [pc, #0x34]
0036e56c  34 10 9f e5                                      ldr r1, [pc, #0x34]
0036e570  34 20 9f e5                                      ldr r2, [pc, #0x34]
0036e574  00 00 93 e7                                      ldr r0, [r3, r0]
0036e578  30 30 9f e5                                      ldr r3, [pc, #0x30]
0036e57c  55 c9 00 e3                                      movw ip, #0x955
0036e580  01 10 8f e0                                      add r1, pc, r1
0036e584  02 20 8f e0                                      add r2, pc, r2
0036e588  03 30 8f e0                                      add r3, pc, r3
0036e58c  a8 00 80 e2                                      add r0, r0, #0xa8
0036e590  00 c0 8d e5                                      str ip, [sp]
0036e594  9a 7e fe eb                                      bl #0x30e004
0036e598  c6 ff ff ea                                      b #0x36e4b8
; mapping-symbol data/literal pool
0036e59c  e4 65 62 00 c0 39 00 00 c0 19 00 00 58 fe 54 00  .byte 0xe4, 0x65, 0x62, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x58, 0xfe, 0x54, 0x00
0036e5ac  bc 31 55 00 68 31 55 00                          .byte 0xbc, 0x31, 0x55, 0x00, 0x68, 0x31, 0x55, 0x00

; FUNCTION 0x0036e5b4, declared_size=400, range_size=400, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager26_GetInternalIDByFriendlyIDEib
; demangled: PlayerManager::_GetInternalIDByFriendlyID(int, bool)
; decoder-mode: arm
0036e5b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036e5b8  00 40 a0 e1                                      mov r4, r0
0036e5bc  01 50 a0 e1                                      mov r5, r1
0036e5c0  02 60 a0 e1                                      mov r6, r2
0036e5c4  72 3c 12 eb                                      bl #0x7fd794
0036e5c8  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036e5cc  00 00 53 e3                                      cmp r3, #0
0036e5d0  04 00 00 1a                                      bne #0x36e5e8
0036e5d4  a0 36 94 e5                                      ldr r3, [r4, #0x6a0]
0036e5d8  03 00 55 e1                                      cmp r5, r3
0036e5dc  31 00 00 3a                                      blo #0x36e6a8
0036e5e0  00 00 e0 e3                                      mvn r0, #0
0036e5e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e5e8  2a ca fe eb                                      bl #0x320e98
0036e5ec  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036e5f0  00 00 53 e3                                      cmp r3, #0
0036e5f4  f6 ff ff 0a                                      beq #0x36e5d4
0036e5f8  63 4a 12 eb                                      bl #0x800f8c
0036e5fc  00 30 90 e5                                      ldr r3, [r0]
0036e600  0f e0 a0 e1                                      mov lr, pc
0036e604  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036e608  00 00 50 e3                                      cmp r0, #0
0036e60c  f0 ff ff 0a                                      beq #0x36e5d4
0036e610  b1 86 12 eb                                      bl #0x8100dc
0036e614  b1 86 12 eb                                      bl #0x8100e0
0036e618  00 00 50 e3                                      cmp r0, #0
0036e61c  ec ff ff 0a                                      beq #0x36e5d4
0036e620  04 00 a0 e1                                      mov r0, r4
0036e624  5f fc ff eb                                      bl #0x36d7a8
0036e628  05 00 50 e1                                      cmp r0, r5
0036e62c  eb ff ff da                                      ble #0x36e5e0
0036e630  a8 36 94 e5                                      ldr r3, [r4, #0x6a8]
0036e634  ac 26 94 e5                                      ldr r2, [r4, #0x6ac]
0036e638  02 20 63 e0                                      rsb r2, r3, r2
0036e63c  22 21 b0 e1                                      lsrs r2, r2, #2
0036e640  3b 00 00 0a                                      beq #0x36e734
0036e644  00 70 a0 e3                                      mov r7, #0
0036e648  07 80 a0 e1                                      mov r8, r7
0036e64c  05 00 00 ea                                      b #0x36e668
0036e650  01 80 88 e2                                      add r8, r8, #1
0036e654  a8 36 94 e5                                      ldr r3, [r4, #0x6a8]
0036e658  ac 26 94 e5                                      ldr r2, [r4, #0x6ac]
0036e65c  02 20 63 e0                                      rsb r2, r3, r2
0036e660  42 01 57 e1                                      cmp r7, r2, asr #2
0036e664  32 00 00 2a                                      bhs #0x36e734
0036e668  07 11 93 e7                                      ldr r1, [r3, r7, lsl #2]
0036e66c  04 00 a0 e1                                      mov r0, r4
0036e670  00 20 a0 e3                                      mov r2, #0
0036e674  4d fe ff eb                                      bl #0x36dfb0
0036e678  00 00 56 e3                                      cmp r6, #0
0036e67c  07 31 a0 e1                                      lsl r3, r7, #2
0036e680  01 70 87 e2                                      add r7, r7, #1
0036e684  02 00 00 0a                                      beq #0x36e694
0036e688  60 26 90 e5                                      ldr r2, [r0, #0x660]
0036e68c  00 00 52 e3                                      cmp r2, #0
0036e690  ef ff ff 0a                                      beq #0x36e654
0036e694  05 00 58 e1                                      cmp r8, r5
0036e698  ec ff ff 1a                                      bne #0x36e650
0036e69c  a8 26 94 e5                                      ldr r2, [r4, #0x6a8]
0036e6a0  03 00 92 e7                                      ldr r0, [r2, r3]
0036e6a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e6a8  98 26 94 e5                                      ldr r2, [r4, #0x698]
0036e6ac  69 ce 84 e2                                      add ip, r4, #0x690
0036e6b0  00 00 a0 e3                                      mov r0, #0
0036e6b4  02 00 5c e1                                      cmp ip, r2
0036e6b8  1d 00 00 0a                                      beq #0x36e734
0036e6bc  00 00 56 e3                                      cmp r6, #0
0036e6c0  02 00 00 0a                                      beq #0x36e6d0
0036e6c4  78 36 92 e5                                      ldr r3, [r2, #0x678]
0036e6c8  00 00 53 e3                                      cmp r3, #0
0036e6cc  02 00 00 0a                                      beq #0x36e6dc
0036e6d0  05 00 50 e1                                      cmp r0, r5
0036e6d4  18 00 00 0a                                      beq #0x36e73c
0036e6d8  01 00 80 e2                                      add r0, r0, #1
0036e6dc  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0036e6e0  00 00 51 e3                                      cmp r1, #0
0036e6e4  05 00 00 0a                                      beq #0x36e700
0036e6e8  01 20 a0 e1                                      mov r2, r1
0036e6ec  08 30 92 e5                                      ldr r3, [r2, #8]
0036e6f0  00 00 53 e3                                      cmp r3, #0
0036e6f4  ee ff ff 0a                                      beq #0x36e6b4
0036e6f8  03 20 a0 e1                                      mov r2, r3
0036e6fc  fa ff ff ea                                      b #0x36e6ec
0036e700  04 30 92 e5                                      ldr r3, [r2, #4]
0036e704  0c 40 93 e5                                      ldr r4, [r3, #0xc]
0036e708  04 00 52 e1                                      cmp r2, r4
0036e70c  05 00 00 1a                                      bne #0x36e728
0036e710  03 20 a0 e1                                      mov r2, r3
0036e714  04 30 93 e5                                      ldr r3, [r3, #4]
0036e718  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0036e71c  02 00 51 e1                                      cmp r1, r2
0036e720  fa ff ff 0a                                      beq #0x36e710
0036e724  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0036e728  03 00 51 e1                                      cmp r1, r3
0036e72c  03 20 a0 11                                      movne r2, r3
0036e730  df ff ff ea                                      b #0x36e6b4
0036e734  00 00 e0 e3                                      mvn r0, #0
0036e738  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e73c  88 06 92 e5                                      ldr r0, [r2, #0x688]
0036e740  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0036e744, declared_size=32, range_size=32, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager9GetPlayerEib
; demangled: PlayerManager::GetPlayer(int, bool)
; decoder-mode: arm
0036e744  10 40 2d e9                                      push {r4, lr}
0036e748  00 40 a0 e1                                      mov r4, r0
0036e74c  98 ff ff eb                                      bl #0x36e5b4
0036e750  00 20 a0 e3                                      mov r2, #0
0036e754  00 10 a0 e1                                      mov r1, r0
0036e758  04 00 a0 e1                                      mov r0, r4
0036e75c  10 40 bd e8                                      pop {r4, lr}
0036e760  12 fe ff ea                                      b #0x36dfb0

; FUNCTION 0x0036e764, declared_size=148, range_size=148, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager14AllPlayersDeadEv
; demangled: PlayerManager::AllPlayersDead()
; decoder-mode: arm
0036e764  70 40 2d e9                                      push {r4, r5, r6, lr}
0036e768  00 50 a0 e1                                      mov r5, r0
0036e76c  05 00 a0 e1                                      mov r0, r5
0036e770  0c fc ff eb                                      bl #0x36d7a8
0036e774  00 40 a0 e3                                      mov r4, #0
0036e778  00 00 54 e1                                      cmp r4, r0
0036e77c  04 10 a0 e1                                      mov r1, r4
0036e780  00 20 a0 e3                                      mov r2, #0
0036e784  05 00 a0 e1                                      mov r0, r5
0036e788  10 00 00 aa                                      bge #0x36e7d0
0036e78c  ec ff ff eb                                      bl #0x36e744
0036e790  60 36 90 e5                                      ldr r3, [r0, #0x660]
0036e794  00 00 53 e2                                      subs r0, r3, #0
0036e798  14 00 00 0a                                      beq #0x36e7f0
0036e79c  00 30 93 e5                                      ldr r3, [r3]
0036e7a0  0f e0 a0 e1                                      mov lr, pc
0036e7a4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0036e7a8  00 20 50 e2                                      subs r2, r0, #0
0036e7ac  09 00 00 0a                                      beq #0x36e7d8
0036e7b0  05 00 a0 e1                                      mov r0, r5
0036e7b4  fb fb ff eb                                      bl #0x36d7a8
0036e7b8  01 40 84 e2                                      add r4, r4, #1
0036e7bc  00 00 54 e1                                      cmp r4, r0
0036e7c0  04 10 a0 e1                                      mov r1, r4
0036e7c4  00 20 a0 e3                                      mov r2, #0
0036e7c8  05 00 a0 e1                                      mov r0, r5
0036e7cc  ee ff ff ba                                      blt #0x36e78c
0036e7d0  01 00 a0 e3                                      mov r0, #1
0036e7d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0036e7d8  04 10 a0 e1                                      mov r1, r4
0036e7dc  05 00 a0 e1                                      mov r0, r5
0036e7e0  d7 ff ff eb                                      bl #0x36e744
0036e7e4  a8 33 90 e5                                      ldr r3, [r0, #0x3a8]
0036e7e8  01 00 73 e3                                      cmn r3, #1
0036e7ec  ef ff ff 1a                                      bne #0x36e7b0
0036e7f0  00 00 a0 e3                                      mov r0, #0
0036e7f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0036e7f8, declared_size=196, range_size=196, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager14AllReadyToRollEv
; demangled: PlayerManager::AllReadyToRoll()
; decoder-mode: arm
0036e7f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036e7fc  00 50 a0 e1                                      mov r5, r0
0036e800  e3 3b 12 eb                                      bl #0x7fd794
0036e804  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036e808  00 00 53 e3                                      cmp r3, #0
0036e80c  01 00 00 1a                                      bne #0x36e818
0036e810  01 00 a0 e3                                      mov r0, #1
0036e814  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e818  9e c9 fe eb                                      bl #0x320e98
0036e81c  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036e820  00 00 53 e3                                      cmp r3, #0
0036e824  f9 ff ff 0a                                      beq #0x36e810
0036e828  d7 49 12 eb                                      bl #0x800f8c
0036e82c  00 30 90 e5                                      ldr r3, [r0]
0036e830  0f e0 a0 e1                                      mov lr, pc
0036e834  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036e838  00 00 50 e3                                      cmp r0, #0
0036e83c  f3 ff ff 0a                                      beq #0x36e810
0036e840  25 86 12 eb                                      bl #0x8100dc
0036e844  25 86 12 eb                                      bl #0x8100e0
0036e848  00 00 50 e3                                      cmp r0, #0
0036e84c  ef ff ff 0a                                      beq #0x36e810
0036e850  05 00 a0 e1                                      mov r0, r5
0036e854  d3 fb ff eb                                      bl #0x36d7a8
0036e858  00 60 50 e2                                      subs r6, r0, #0
0036e85c  eb ff ff da                                      ble #0x36e810
0036e860  00 40 a0 e3                                      mov r4, #0
0036e864  04 00 00 ea                                      b #0x36e87c
0036e868  45 35 d7 e5                                      ldrb r3, [r7, #0x545]
0036e86c  00 00 53 e3                                      cmp r3, #0
0036e870  0f 00 00 0a                                      beq #0x36e8b4
0036e874  06 00 54 e1                                      cmp r4, r6
0036e878  e4 ff ff 0a                                      beq #0x36e810
0036e87c  04 10 a0 e1                                      mov r1, r4
0036e880  00 20 a0 e3                                      mov r2, #0
0036e884  05 00 a0 e1                                      mov r0, r5
0036e888  ad ff ff eb                                      bl #0x36e744
0036e88c  00 30 90 e5                                      ldr r3, [r0]
0036e890  00 70 a0 e1                                      mov r7, r0
0036e894  0f e0 a0 e1                                      mov lr, pc
0036e898  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0036e89c  00 00 50 e3                                      cmp r0, #0
0036e8a0  01 40 84 e2                                      add r4, r4, #1
0036e8a4  f2 ff ff 0a                                      beq #0x36e874
0036e8a8  25 35 d7 e5                                      ldrb r3, [r7, #0x525]
0036e8ac  00 00 53 e3                                      cmp r3, #0
0036e8b0  ec ff ff 1a                                      bne #0x36e868
0036e8b4  00 00 a0 e3                                      mov r0, #0
0036e8b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0036e8bc, declared_size=216, range_size=216, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager21AllClientsReadyToRollEv
; demangled: PlayerManager::AllClientsReadyToRoll()
; decoder-mode: arm
0036e8bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036e8c0  00 50 a0 e1                                      mov r5, r0
0036e8c4  b2 3b 12 eb                                      bl #0x7fd794
0036e8c8  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036e8cc  00 00 53 e3                                      cmp r3, #0
0036e8d0  01 00 00 1a                                      bne #0x36e8dc
0036e8d4  01 00 a0 e3                                      mov r0, #1
0036e8d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e8dc  6d c9 fe eb                                      bl #0x320e98
0036e8e0  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036e8e4  00 00 53 e3                                      cmp r3, #0
0036e8e8  f9 ff ff 0a                                      beq #0x36e8d4
0036e8ec  a6 49 12 eb                                      bl #0x800f8c
0036e8f0  00 30 90 e5                                      ldr r3, [r0]
0036e8f4  0f e0 a0 e1                                      mov lr, pc
0036e8f8  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036e8fc  00 00 50 e3                                      cmp r0, #0
0036e900  f3 ff ff 0a                                      beq #0x36e8d4
0036e904  f4 85 12 eb                                      bl #0x8100dc
0036e908  f4 85 12 eb                                      bl #0x8100e0
0036e90c  00 00 50 e3                                      cmp r0, #0
0036e910  ef ff ff 0a                                      beq #0x36e8d4
0036e914  05 00 a0 e1                                      mov r0, r5
0036e918  a2 fb ff eb                                      bl #0x36d7a8
0036e91c  00 60 50 e2                                      subs r6, r0, #0
0036e920  00 40 a0 c3                                      movgt r4, #0
0036e924  ea ff ff da                                      ble #0x36e8d4
0036e928  04 10 a0 e1                                      mov r1, r4
0036e92c  00 20 a0 e3                                      mov r2, #0
0036e930  05 00 a0 e1                                      mov r0, r5
0036e934  82 ff ff eb                                      bl #0x36e744
0036e938  00 30 90 e5                                      ldr r3, [r0]
0036e93c  00 70 a0 e1                                      mov r7, r0
0036e940  0f e0 a0 e1                                      mov lr, pc
0036e944  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0036e948  00 00 50 e3                                      cmp r0, #0
0036e94c  01 40 84 e2                                      add r4, r4, #1
0036e950  07 00 a0 e1                                      mov r0, r7
0036e954  0a 00 00 0a                                      beq #0x36e984
0036e958  25 35 d7 e5                                      ldrb r3, [r7, #0x525]
0036e95c  00 00 53 e3                                      cmp r3, #0
0036e960  05 00 00 0a                                      beq #0x36e97c
0036e964  34 82 12 eb                                      bl #0x80f23c
0036e968  00 00 50 e3                                      cmp r0, #0
0036e96c  04 00 00 1a                                      bne #0x36e984
0036e970  45 35 d7 e5                                      ldrb r3, [r7, #0x545]
0036e974  00 00 53 e3                                      cmp r3, #0
0036e978  01 00 00 1a                                      bne #0x36e984
0036e97c  00 00 a0 e3                                      mov r0, #0
0036e980  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036e984  06 00 54 e1                                      cmp r4, r6
0036e988  e6 ff ff 1a                                      bne #0x36e928
0036e98c  01 00 a0 e3                                      mov r0, #1
0036e990  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0036e994, declared_size=188, range_size=188, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager14AllLoadingDoneEv
; demangled: PlayerManager::AllLoadingDone()
; decoder-mode: arm
0036e994  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036e998  00 50 a0 e1                                      mov r5, r0
0036e99c  81 fb ff eb                                      bl #0x36d7a8
0036e9a0  00 60 50 e2                                      subs r6, r0, #0
0036e9a4  27 00 00 da                                      ble #0x36ea48
0036e9a8  00 40 a0 e3                                      mov r4, #0
0036e9ac  01 00 00 ea                                      b #0x36e9b8
0036e9b0  06 00 54 e1                                      cmp r4, r6
0036e9b4  23 00 00 0a                                      beq #0x36ea48
0036e9b8  04 10 a0 e1                                      mov r1, r4
0036e9bc  00 20 a0 e3                                      mov r2, #0
0036e9c0  05 00 a0 e1                                      mov r0, r5
0036e9c4  5e ff ff eb                                      bl #0x36e744
0036e9c8  00 30 90 e5                                      ldr r3, [r0]
0036e9cc  00 70 a0 e1                                      mov r7, r0
0036e9d0  0f e0 a0 e1                                      mov lr, pc
0036e9d4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0036e9d8  00 00 50 e3                                      cmp r0, #0
0036e9dc  01 40 84 e2                                      add r4, r4, #1
0036e9e0  f2 ff ff 0a                                      beq #0x36e9b0
0036e9e4  25 35 d7 e5                                      ldrb r3, [r7, #0x525]
0036e9e8  00 00 53 e3                                      cmp r3, #0
0036e9ec  13 00 00 0a                                      beq #0x36ea40
0036e9f0  1a 37 d5 e5                                      ldrb r3, [r5, #0x71a]
0036e9f4  00 00 53 e3                                      cmp r3, #0
0036e9f8  ec ff ff 0a                                      beq #0x36e9b0
0036e9fc  07 00 a0 e1                                      mov r0, r7
0036ea00  d7 81 12 eb                                      bl #0x80f164
0036ea04  00 00 50 e3                                      cmp r0, #0
0036ea08  e8 ff ff 0a                                      beq #0x36e9b0
0036ea0c  07 00 a0 e1                                      mov r0, r7
0036ea10  09 82 12 eb                                      bl #0x80f23c
0036ea14  00 00 50 e3                                      cmp r0, #0
0036ea18  e4 ff ff 0a                                      beq #0x36e9b0
0036ea1c  25 35 d7 e5                                      ldrb r3, [r7, #0x525]
0036ea20  00 00 53 e3                                      cmp r3, #0
0036ea24  e1 ff ff 0a                                      beq #0x36e9b0
0036ea28  e5 34 d7 e5                                      ldrb r3, [r7, #0x4e5]
0036ea2c  00 00 53 e3                                      cmp r3, #0
0036ea30  de ff ff 0a                                      beq #0x36e9b0
0036ea34  05 35 d7 e5                                      ldrb r3, [r7, #0x505]
0036ea38  00 00 53 e3                                      cmp r3, #0
0036ea3c  db ff ff 0a                                      beq #0x36e9b0
0036ea40  00 00 a0 e3                                      mov r0, #0
0036ea44  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036ea48  01 00 a0 e3                                      mov r0, #1
0036ea4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0036ea50, declared_size=104, range_size=104, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager29GetNumPlayerCharactersOfClassEi
; demangled: PlayerManager::GetNumPlayerCharactersOfClass(int)
; decoder-mode: arm
0036ea50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036ea54  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
0036ea58  00 50 a0 e1                                      mov r5, r0
0036ea5c  01 60 a0 e1                                      mov r6, r1
0036ea60  00 00 53 e3                                      cmp r3, #0
0036ea64  00 80 a0 d3                                      movle r8, #0
0036ea68  10 00 00 da                                      ble #0x36eab0
0036ea6c  00 40 a0 e3                                      mov r4, #0
0036ea70  04 80 a0 e1                                      mov r8, r4
0036ea74  c8 73 01 e3                                      movw r7, #0x13c8
0036ea78  04 10 a0 e1                                      mov r1, r4
0036ea7c  05 00 a0 e1                                      mov r0, r5
0036ea80  01 20 a0 e3                                      mov r2, #1
0036ea84  2e ff ff eb                                      bl #0x36e744
0036ea88  60 36 90 e5                                      ldr r3, [r0, #0x660]
0036ea8c  01 40 84 e2                                      add r4, r4, #1
0036ea90  00 00 53 e3                                      cmp r3, #0
0036ea94  02 00 00 0a                                      beq #0x36eaa4
0036ea98  f7 30 93 e1                                      ldrsh r3, [r3, r7]
0036ea9c  03 00 56 e1                                      cmp r6, r3
0036eaa0  01 80 88 02                                      addeq r8, r8, #1
0036eaa4  c4 36 95 e5                                      ldr r3, [r5, #0x6c4]
0036eaa8  03 00 54 e1                                      cmp r4, r3
0036eaac  f1 ff ff ba                                      blt #0x36ea78
0036eab0  08 00 a0 e1                                      mov r0, r8
0036eab4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0036eab8, declared_size=8, range_size=8, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager28GetNumPlayerCharacterWarriorEv
; demangled: PlayerManager::GetNumPlayerCharacterWarrior()
; decoder-mode: arm
0036eab8  07 11 00 e3                                      movw r1, #0x107
0036eabc  e3 ff ff ea                                      b #0x36ea50

; FUNCTION 0x0036eac0, declared_size=8, range_size=8, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager26GetNumPlayerCharacterRogueEv
; demangled: PlayerManager::GetNumPlayerCharacterRogue()
; decoder-mode: arm
0036eac0  45 11 00 e3                                      movw r1, #0x145
0036eac4  e1 ff ff ea                                      b #0x36ea50

; FUNCTION 0x0036eac8, declared_size=8, range_size=8, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager25GetNumPlayerCharacterMageEv
; demangled: PlayerManager::GetNumPlayerCharacterMage()
; decoder-mode: arm
0036eac8  22 11 00 e3                                      movw r1, #0x122
0036eacc  df ff ff ea                                      b #0x36ea50

; FUNCTION 0x0036ead0, declared_size=388, range_size=388, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager18GetNumLocalPlayersEb
; demangled: PlayerManager::GetNumLocalPlayers(bool)
; decoder-mode: arm
0036ead0  70 40 2d e9                                      push {r4, r5, r6, lr}
0036ead4  00 40 a0 e1                                      mov r4, r0
0036ead8  01 50 a0 e1                                      mov r5, r1
0036eadc  2c 3b 12 eb                                      bl #0x7fd794
0036eae0  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036eae4  00 00 53 e3                                      cmp r3, #0
0036eae8  2a 00 00 1a                                      bne #0x36eb98
0036eaec  98 26 94 e5                                      ldr r2, [r4, #0x698]
0036eaf0  69 0e 84 e2                                      add r0, r4, #0x690
0036eaf4  00 60 a0 e3                                      mov r6, #0
0036eaf8  02 00 50 e1                                      cmp r0, r2
0036eafc  10 00 00 0a                                      beq #0x36eb44
0036eb00  84 36 d2 e5                                      ldrb r3, [r2, #0x684]
0036eb04  00 00 53 e3                                      cmp r3, #0
0036eb08  02 00 00 0a                                      beq #0x36eb18
0036eb0c  00 00 55 e3                                      cmp r5, #0
0036eb10  0d 00 00 1a                                      bne #0x36eb4c
0036eb14  01 60 86 e2                                      add r6, r6, #1
0036eb18  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0036eb1c  00 00 51 e3                                      cmp r1, #0
0036eb20  0f 00 00 0a                                      beq #0x36eb64
0036eb24  01 20 a0 e1                                      mov r2, r1
0036eb28  00 00 00 ea                                      b #0x36eb30
0036eb2c  03 20 a0 e1                                      mov r2, r3
0036eb30  08 30 92 e5                                      ldr r3, [r2, #8]
0036eb34  00 00 53 e3                                      cmp r3, #0
0036eb38  fb ff ff 1a                                      bne #0x36eb2c
0036eb3c  02 00 50 e1                                      cmp r0, r2
0036eb40  ee ff ff 1a                                      bne #0x36eb00
0036eb44  06 00 a0 e1                                      mov r0, r6
0036eb48  70 80 bd e8                                      pop {r4, r5, r6, pc}
0036eb4c  78 36 92 e5                                      ldr r3, [r2, #0x678]
0036eb50  00 00 53 e3                                      cmp r3, #0
0036eb54  ee ff ff 1a                                      bne #0x36eb14
0036eb58  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0036eb5c  00 00 51 e3                                      cmp r1, #0
0036eb60  ef ff ff 1a                                      bne #0x36eb24
0036eb64  04 30 92 e5                                      ldr r3, [r2, #4]
0036eb68  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0036eb6c  02 00 5c e1                                      cmp ip, r2
0036eb70  05 00 00 1a                                      bne #0x36eb8c
0036eb74  03 20 a0 e1                                      mov r2, r3
0036eb78  04 30 93 e5                                      ldr r3, [r3, #4]
0036eb7c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0036eb80  01 00 52 e1                                      cmp r2, r1
0036eb84  fa ff ff 0a                                      beq #0x36eb74
0036eb88  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0036eb8c  01 00 53 e1                                      cmp r3, r1
0036eb90  03 20 a0 11                                      movne r2, r3
0036eb94  d7 ff ff ea                                      b #0x36eaf8
0036eb98  be c8 fe eb                                      bl #0x320e98
0036eb9c  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036eba0  00 00 53 e3                                      cmp r3, #0
0036eba4  d0 ff ff 0a                                      beq #0x36eaec
0036eba8  f7 48 12 eb                                      bl #0x800f8c
0036ebac  00 30 90 e5                                      ldr r3, [r0]
0036ebb0  0f e0 a0 e1                                      mov lr, pc
0036ebb4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036ebb8  00 00 50 e3                                      cmp r0, #0
0036ebbc  ca ff ff 0a                                      beq #0x36eaec
0036ebc0  45 85 12 eb                                      bl #0x8100dc
0036ebc4  45 85 12 eb                                      bl #0x8100e0
0036ebc8  00 00 50 e3                                      cmp r0, #0
0036ebcc  c6 ff ff 0a                                      beq #0x36eaec
0036ebd0  00 00 55 e3                                      cmp r5, #0
0036ebd4  18 00 00 0a                                      beq #0x36ec3c
0036ebd8  b4 36 94 e5                                      ldr r3, [r4, #0x6b4]
0036ebdc  b8 26 94 e5                                      ldr r2, [r4, #0x6b8]
0036ebe0  02 20 63 e0                                      rsb r2, r3, r2
0036ebe4  42 21 b0 e1                                      asrs r2, r2, #2
0036ebe8  02 60 a0 01                                      moveq r6, r2
0036ebec  d4 ff ff 0a                                      beq #0x36eb44
0036ebf0  00 20 a0 e3                                      mov r2, #0
0036ebf4  02 50 a0 e1                                      mov r5, r2
0036ebf8  02 60 a0 e1                                      mov r6, r2
0036ebfc  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
0036ec00  04 00 a0 e1                                      mov r0, r4
0036ec04  00 20 a0 e3                                      mov r2, #0
0036ec08  cd fe ff eb                                      bl #0x36e744
0036ec0c  60 36 90 e5                                      ldr r3, [r0, #0x660]
0036ec10  b8 16 94 e5                                      ldr r1, [r4, #0x6b8]
0036ec14  01 50 85 e2                                      add r5, r5, #1
0036ec18  00 00 53 e3                                      cmp r3, #0
0036ec1c  b4 36 94 e5                                      ldr r3, [r4, #0x6b4]
0036ec20  01 60 86 12                                      addne r6, r6, #1
0036ec24  05 20 a0 e1                                      mov r2, r5
0036ec28  01 10 63 e0                                      rsb r1, r3, r1
0036ec2c  41 01 55 e1                                      cmp r5, r1, asr #2
0036ec30  f1 ff ff 3a                                      blo #0x36ebfc
0036ec34  06 00 a0 e1                                      mov r0, r6
0036ec38  70 80 bd e8                                      pop {r4, r5, r6, pc}
0036ec3c  b4 36 94 e5                                      ldr r3, [r4, #0x6b4]
0036ec40  b8 66 94 e5                                      ldr r6, [r4, #0x6b8]
0036ec44  06 60 63 e0                                      rsb r6, r3, r6
0036ec48  46 61 a0 e1                                      asr r6, r6, #2
0036ec4c  06 00 a0 e1                                      mov r0, r6
0036ec50  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0036ec54, declared_size=184, range_size=184, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager12InitialSetupE7Point3DIfE
; demangled: PlayerManager::InitialSetup(Point3D<float>)
; decoder-mode: arm
0036ec54  70 40 2d e9                                      push {r4, r5, r6, lr}
0036ec58  d0 26 d0 e5                                      ldrb r2, [r0, #0x6d0]
0036ec5c  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0036ec60  01 60 a0 e1                                      mov r6, r1
0036ec64  00 00 52 e3                                      cmp r2, #0
0036ec68  03 30 8f e0                                      add r3, pc, r3
0036ec6c  20 00 00 1a                                      bne #0x36ecf4
0036ec70  01 20 a0 e3                                      mov r2, #1
0036ec74  d0 26 c0 e5                                      strb r2, [r0, #0x6d0]
0036ec78  00 20 96 e5                                      ldr r2, [r6]
0036ec7c  84 10 9f e5                                      ldr r1, [pc, #0x84]
0036ec80  00 40 a0 e3                                      mov r4, #0
0036ec84  d4 26 80 e5                                      str r2, [r0, #0x6d4]
0036ec88  04 20 96 e5                                      ldr r2, [r6, #4]
0036ec8c  01 50 93 e7                                      ldr r5, [r3, r1]
0036ec90  01 10 a0 e3                                      mov r1, #1
0036ec94  d8 26 80 e5                                      str r2, [r0, #0x6d8]
0036ec98  08 30 96 e5                                      ldr r3, [r6, #8]
0036ec9c  dc 36 80 e5                                      str r3, [r0, #0x6dc]
0036eca0  40 00 95 e5                                      ldr r0, [r5, #0x40]
0036eca4  89 ff ff eb                                      bl #0x36ead0
0036eca8  00 00 54 e1                                      cmp r4, r0
0036ecac  04 10 a0 e1                                      mov r1, r4
0036ecb0  01 20 a0 e3                                      mov r2, #1
0036ecb4  0d 00 00 aa                                      bge #0x36ecf0
0036ecb8  40 00 95 e5                                      ldr r0, [r5, #0x40]
0036ecbc  ed fd ff eb                                      bl #0x36e478
0036ecc0  01 20 a0 e3                                      mov r2, #1
0036ecc4  60 06 90 e5                                      ldr r0, [r0, #0x660]
0036ecc8  06 10 a0 e1                                      mov r1, r6
0036eccc  38 94 00 eb                                      bl #0x393db4
0036ecd0  01 10 a0 e3                                      mov r1, #1
0036ecd4  40 00 95 e5                                      ldr r0, [r5, #0x40]
0036ecd8  7c ff ff eb                                      bl #0x36ead0
0036ecdc  01 40 84 e2                                      add r4, r4, #1
0036ece0  00 00 54 e1                                      cmp r4, r0
0036ece4  04 10 a0 e1                                      mov r1, r4
0036ece8  01 20 a0 e3                                      mov r2, #1
0036ecec  f1 ff ff ba                                      blt #0x36ecb8
0036ecf0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0036ecf4  1a 27 d0 e5                                      ldrb r2, [r0, #0x71a]
0036ecf8  00 00 52 e3                                      cmp r2, #0
0036ecfc  db ff ff 1a                                      bne #0x36ec70
0036ed00  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0036ed04  28 5e 62 00 f4 37 00 00                          .byte 0x28, 0x5e, 0x62, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0036ed0c, declared_size=412, range_size=412, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager20_UpdatePlayerNumbersEv
; demangled: PlayerManager::_UpdatePlayerNumbers()
; decoder-mode: arm
0036ed0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036ed10  00 50 a0 e1                                      mov r5, r0
0036ed14  9e 3a 12 eb                                      bl #0x7fd794
0036ed18  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036ed1c  00 00 53 e3                                      cmp r3, #0
0036ed20  2c 00 00 1a                                      bne #0x36edd8
0036ed24  98 36 95 e5                                      ldr r3, [r5, #0x698]
0036ed28  69 6e 85 e2                                      add r6, r5, #0x690
0036ed2c  00 20 a0 e3                                      mov r2, #0
0036ed30  03 00 56 e1                                      cmp r6, r3
0036ed34  02 00 a0 e1                                      mov r0, r2
0036ed38  02 10 a0 e1                                      mov r1, r2
0036ed3c  17 00 00 0a                                      beq #0x36eda0
0036ed40  84 46 d3 e5                                      ldrb r4, [r3, #0x684]
0036ed44  90 26 83 e5                                      str r2, [r3, #0x690]
0036ed48  01 c0 82 e2                                      add ip, r2, #1
0036ed4c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0036ed50  00 00 54 e3                                      cmp r4, #0
0036ed54  94 16 83 15                                      strne r1, [r3, #0x694]
0036ed58  00 50 a0 11                                      movne r5, r0
0036ed5c  01 40 81 12                                      addne r4, r1, #1
0036ed60  94 06 83 05                                      streq r0, [r3, #0x694]
0036ed64  01 40 a0 01                                      moveq r4, r1
0036ed68  01 50 80 02                                      addeq r5, r0, #1
0036ed6c  00 00 52 e3                                      cmp r2, #0
0036ed70  01 00 00 1a                                      bne #0x36ed7c
0036ed74  0a 00 00 ea                                      b #0x36eda4
0036ed78  03 20 a0 e1                                      mov r2, r3
0036ed7c  08 30 92 e5                                      ldr r3, [r2, #8]
0036ed80  00 00 53 e3                                      cmp r3, #0
0036ed84  fb ff ff 1a                                      bne #0x36ed78
0036ed88  02 30 a0 e1                                      mov r3, r2
0036ed8c  03 00 56 e1                                      cmp r6, r3
0036ed90  0c 20 a0 e1                                      mov r2, ip
0036ed94  05 00 a0 e1                                      mov r0, r5
0036ed98  04 10 a0 e1                                      mov r1, r4
0036ed9c  e7 ff ff 1a                                      bne #0x36ed40
0036eda0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036eda4  04 10 93 e5                                      ldr r1, [r3, #4]
0036eda8  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0036edac  00 00 53 e1                                      cmp r3, r0
0036edb0  05 00 00 1a                                      bne #0x36edcc
0036edb4  01 30 a0 e1                                      mov r3, r1
0036edb8  04 10 91 e5                                      ldr r1, [r1, #4]
0036edbc  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0036edc0  03 00 50 e1                                      cmp r0, r3
0036edc4  fa ff ff 0a                                      beq #0x36edb4
0036edc8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0036edcc  01 00 52 e1                                      cmp r2, r1
0036edd0  01 30 a0 11                                      movne r3, r1
0036edd4  ec ff ff ea                                      b #0x36ed8c
0036edd8  2e c8 fe eb                                      bl #0x320e98
0036eddc  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036ede0  00 00 53 e3                                      cmp r3, #0
0036ede4  ce ff ff 0a                                      beq #0x36ed24
0036ede8  67 48 12 eb                                      bl #0x800f8c
0036edec  00 30 90 e5                                      ldr r3, [r0]
0036edf0  0f e0 a0 e1                                      mov lr, pc
0036edf4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036edf8  00 00 50 e3                                      cmp r0, #0
0036edfc  c8 ff ff 0a                                      beq #0x36ed24
0036ee00  b5 84 12 eb                                      bl #0x8100dc
0036ee04  b5 84 12 eb                                      bl #0x8100e0
0036ee08  00 00 50 e3                                      cmp r0, #0
0036ee0c  c4 ff ff 0a                                      beq #0x36ed24
0036ee10  a8 36 95 e5                                      ldr r3, [r5, #0x6a8]
0036ee14  ac 26 95 e5                                      ldr r2, [r5, #0x6ac]
0036ee18  02 20 63 e0                                      rsb r2, r3, r2
0036ee1c  22 21 b0 e1                                      lsrs r2, r2, #2
0036ee20  1f 00 00 0a                                      beq #0x36eea4
0036ee24  00 60 a0 e3                                      mov r6, #0
0036ee28  06 40 a0 e1                                      mov r4, r6
0036ee2c  06 80 a0 e1                                      mov r8, r6
0036ee30  06 70 a0 e1                                      mov r7, r6
0036ee34  00 00 00 ea                                      b #0x36ee3c
0036ee38  02 70 a0 e1                                      mov r7, r2
0036ee3c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0036ee40  00 20 a0 e3                                      mov r2, #0
0036ee44  05 00 a0 e1                                      mov r0, r5
0036ee48  58 fc ff eb                                      bl #0x36dfb0
0036ee4c  70 36 90 e5                                      ldr r3, [r0, #0x670]
0036ee50  01 10 86 e2                                      add r1, r6, #1
0036ee54  01 00 73 e3                                      cmn r3, #1
0036ee58  78 36 80 05                                      streq r3, [r0, #0x678]
0036ee5c  06 10 a0 01                                      moveq r1, r6
0036ee60  07 20 a0 01                                      moveq r2, r7
0036ee64  07 00 00 0a                                      beq #0x36ee88
0036ee68  6c 36 d0 e5                                      ldrb r3, [r0, #0x66c]
0036ee6c  07 20 a0 e1                                      mov r2, r7
0036ee70  78 66 80 e5                                      str r6, [r0, #0x678]
0036ee74  00 00 53 e3                                      cmp r3, #0
0036ee78  7c 86 80 05                                      streq r8, [r0, #0x67c]
0036ee7c  7c 76 80 15                                      strne r7, [r0, #0x67c]
0036ee80  01 20 87 12                                      addne r2, r7, #1
0036ee84  01 80 88 02                                      addeq r8, r8, #1
0036ee88  a8 36 95 e5                                      ldr r3, [r5, #0x6a8]
0036ee8c  ac 06 95 e5                                      ldr r0, [r5, #0x6ac]
0036ee90  01 40 84 e2                                      add r4, r4, #1
0036ee94  01 60 a0 e1                                      mov r6, r1
0036ee98  00 10 63 e0                                      rsb r1, r3, r0
0036ee9c  41 01 54 e1                                      cmp r4, r1, asr #2
0036eea0  e4 ff ff 3a                                      blo #0x36ee38
0036eea4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0036eea8, declared_size=340, range_size=340, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager20GetPlayerByCharacterEPK9Characterb
; demangled: PlayerManager::GetPlayerByCharacter(Character const*, bool)
; decoder-mode: arm
0036eea8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036eeac  00 50 a0 e1                                      mov r5, r0
0036eeb0  01 60 a0 e1                                      mov r6, r1
0036eeb4  02 70 a0 e1                                      mov r7, r2
0036eeb8  35 3a 12 eb                                      bl #0x7fd794
0036eebc  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036eec0  00 00 53 e3                                      cmp r3, #0
0036eec4  21 00 00 1a                                      bne #0x36ef50
0036eec8  98 36 95 e5                                      ldr r3, [r5, #0x698]
0036eecc  69 ce 85 e2                                      add ip, r5, #0x690
0036eed0  03 00 5c e1                                      cmp ip, r3
0036eed4  0e 00 00 0a                                      beq #0x36ef14
0036eed8  78 26 93 e5                                      ldr r2, [r3, #0x678]
0036eedc  18 00 83 e2                                      add r0, r3, #0x18
0036eee0  02 00 56 e1                                      cmp r6, r2
0036eee4  0b 00 00 0a                                      beq #0x36ef18
0036eee8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0036eeec  00 00 52 e3                                      cmp r2, #0
0036eef0  01 00 00 1a                                      bne #0x36eefc
0036eef4  08 00 00 ea                                      b #0x36ef1c
0036eef8  03 20 a0 e1                                      mov r2, r3
0036eefc  08 30 92 e5                                      ldr r3, [r2, #8]
0036ef00  00 00 53 e3                                      cmp r3, #0
0036ef04  fb ff ff 1a                                      bne #0x36eef8
0036ef08  02 30 a0 e1                                      mov r3, r2
0036ef0c  03 00 5c e1                                      cmp ip, r3
0036ef10  f0 ff ff 1a                                      bne #0x36eed8
0036ef14  08 00 85 e2                                      add r0, r5, #8
0036ef18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036ef1c  04 10 93 e5                                      ldr r1, [r3, #4]
0036ef20  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0036ef24  03 00 50 e1                                      cmp r0, r3
0036ef28  05 00 00 1a                                      bne #0x36ef44
0036ef2c  01 30 a0 e1                                      mov r3, r1
0036ef30  04 10 91 e5                                      ldr r1, [r1, #4]
0036ef34  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0036ef38  02 00 53 e1                                      cmp r3, r2
0036ef3c  fa ff ff 0a                                      beq #0x36ef2c
0036ef40  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0036ef44  02 00 51 e1                                      cmp r1, r2
0036ef48  01 30 a0 11                                      movne r3, r1
0036ef4c  df ff ff ea                                      b #0x36eed0
0036ef50  d0 c7 fe eb                                      bl #0x320e98
0036ef54  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0036ef58  00 00 53 e3                                      cmp r3, #0
0036ef5c  d9 ff ff 0a                                      beq #0x36eec8
0036ef60  09 48 12 eb                                      bl #0x800f8c
0036ef64  00 30 90 e5                                      ldr r3, [r0]
0036ef68  0f e0 a0 e1                                      mov lr, pc
0036ef6c  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0036ef70  00 00 50 e3                                      cmp r0, #0
0036ef74  d3 ff ff 0a                                      beq #0x36eec8
0036ef78  57 84 12 eb                                      bl #0x8100dc
0036ef7c  57 84 12 eb                                      bl #0x8100e0
0036ef80  00 00 50 e3                                      cmp r0, #0
0036ef84  cf ff ff 0a                                      beq #0x36eec8
0036ef88  a8 26 95 e5                                      ldr r2, [r5, #0x6a8]
0036ef8c  ac 36 95 e5                                      ldr r3, [r5, #0x6ac]
0036ef90  03 30 62 e0                                      rsb r3, r2, r3
0036ef94  23 31 b0 e1                                      lsrs r3, r3, #2
0036ef98  dd ff ff 0a                                      beq #0x36ef14
0036ef9c  00 30 a0 e3                                      mov r3, #0
0036efa0  03 40 a0 e1                                      mov r4, r3
0036efa4  04 00 00 ea                                      b #0x36efbc
0036efa8  a8 26 95 e5                                      ldr r2, [r5, #0x6a8]
0036efac  ac 16 95 e5                                      ldr r1, [r5, #0x6ac]
0036efb0  01 10 62 e0                                      rsb r1, r2, r1
0036efb4  41 01 54 e1                                      cmp r4, r1, asr #2
0036efb8  d5 ff ff 2a                                      bhs #0x36ef14
0036efbc  03 11 92 e7                                      ldr r1, [r2, r3, lsl #2]
0036efc0  05 00 a0 e1                                      mov r0, r5
0036efc4  07 20 a0 e1                                      mov r2, r7
0036efc8  03 81 a0 e1                                      lsl r8, r3, #2
0036efcc  f7 fb ff eb                                      bl #0x36dfb0
0036efd0  60 26 90 e5                                      ldr r2, [r0, #0x660]
0036efd4  01 40 84 e2                                      add r4, r4, #1
0036efd8  04 30 a0 e1                                      mov r3, r4
0036efdc  02 00 56 e1                                      cmp r6, r2
0036efe0  f0 ff ff 1a                                      bne #0x36efa8
0036efe4  a8 36 95 e5                                      ldr r3, [r5, #0x6a8]
0036efe8  05 00 a0 e1                                      mov r0, r5
0036efec  07 20 a0 e1                                      mov r2, r7
0036eff0  08 10 93 e7                                      ldr r1, [r3, r8]
0036eff4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0036eff8  b1 fb ff ea                                      b #0x36dec4

; FUNCTION 0x0036effc, declared_size=44, range_size=44, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager13IsLocalPlayerEPK9Character
; demangled: PlayerManager::IsLocalPlayer(Character const*)
; decoder-mode: arm
0036effc  00 30 51 e2                                      subs r3, r1, #0
0036f000  10 40 2d e9                                      push {r4, lr}
0036f004  05 00 00 0a                                      beq #0x36f020
0036f008  00 20 a0 e3                                      mov r2, #0
0036f00c  a5 ff ff eb                                      bl #0x36eea8
0036f010  00 30 90 e5                                      ldr r3, [r0]
0036f014  0f e0 a0 e1                                      mov lr, pc
0036f018  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0036f01c  10 80 bd e8                                      pop {r4, pc}
0036f020  03 00 a0 e1                                      mov r0, r3
0036f024  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036f074, declared_size=104, range_size=104, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager20IsLocalPlayerHostingEv
; demangled: PlayerManager::IsLocalPlayerHosting()
; decoder-mode: arm
0036f074  10 40 2d e9                                      push {r4, lr}
0036f078  00 40 a0 e1                                      mov r4, r0
0036f07c  c4 39 12 eb                                      bl #0x7fd794
0036f080  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036f084  00 00 53 e3                                      cmp r3, #0
0036f088  05 00 00 1a                                      bne #0x36f0a4
0036f08c  c0 39 12 eb                                      bl #0x7fd794
0036f090  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036f094  00 00 53 e3                                      cmp r3, #0
0036f098  09 00 00 1a                                      bne #0x36f0c4
0036f09c  01 00 a0 e3                                      mov r0, #1
0036f0a0  10 80 bd e8                                      pop {r4, pc}
0036f0a4  7b c7 fe eb                                      bl #0x320e98
0036f0a8  34 30 90 e5                                      ldr r3, [r0, #0x34]
0036f0ac  03 30 43 e2                                      sub r3, r3, #3
0036f0b0  01 00 53 e3                                      cmp r3, #1
0036f0b4  f4 ff ff 8a                                      bhi #0x36f08c
0036f0b8  b3 47 12 eb                                      bl #0x800f8c
0036f0bc  10 40 bd e8                                      pop {r4, lr}
0036f0c0  17 c1 12 ea                                      b #0x81f524
0036f0c4  00 10 a0 e3                                      mov r1, #0
0036f0c8  04 00 a0 e1                                      mov r0, r4
0036f0cc  01 20 a0 e1                                      mov r2, r1
0036f0d0  e8 fc ff eb                                      bl #0x36e478
0036f0d4  10 40 bd e8                                      pop {r4, lr}
0036f0d8  57 80 12 ea                                      b #0x80f23c

; FUNCTION 0x0036f0dc, declared_size=392, range_size=392, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager34_AttachControllerToPlayerCharacterEi
; demangled: PlayerManager::_AttachControllerToPlayerCharacter(int)
; decoder-mode: arm
0036f0dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036f0e0  00 20 a0 e3                                      mov r2, #0
0036f0e4  b1 fb ff eb                                      bl #0x36dfb0
0036f0e8  6c 16 d0 e5                                      ldrb r1, [r0, #0x66c]
0036f0ec  00 60 a0 e1                                      mov r6, r0
0036f0f0  60 56 90 e5                                      ldr r5, [r0, #0x660]
0036f0f4  00 00 51 e3                                      cmp r1, #0
0036f0f8  36 00 00 0a                                      beq #0x36f1d8
0036f0fc  00 10 a0 e3                                      mov r1, #0
0036f100  24 00 a0 e3                                      mov r0, #0x24
0036f104  19 85 fe eb                                      bl #0x310570
0036f108  00 00 55 e3                                      cmp r5, #0
0036f10c  dd 7f 85 12                                      addne r7, r5, #0x374
0036f110  dd 7f a0 03                                      moveq r7, #0x374
0036f114  07 10 a0 11                                      movne r1, r7
0036f118  05 10 a0 01                                      moveq r1, r5
0036f11c  00 40 a0 e1                                      mov r4, r0
0036f120  2c 67 02 eb                                      bl #0x408dd8
0036f124  07 00 a0 e1                                      mov r0, r7
0036f128  04 10 a0 e1                                      mov r1, r4
0036f12c  37 57 02 eb                                      bl #0x404e10
0036f130  78 33 95 e5                                      ldr r3, [r5, #0x378]
0036f134  0c 50 83 e5                                      str r5, [r3, #0xc]
0036f138  95 39 12 eb                                      bl #0x7fd794
0036f13c  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036f140  00 10 a0 e3                                      mov r1, #0
0036f144  20 00 a0 e3                                      mov r0, #0x20
0036f148  00 00 53 e3                                      cmp r3, #0
0036f14c  78 33 95 15                                      ldrne r3, [r5, #0x378]
0036f150  01 20 a0 13                                      movne r2, #1
0036f154  0a 20 c3 15                                      strbne r2, [r3, #0xa]
0036f158  68 76 96 e5                                      ldr r7, [r6, #0x668]
0036f15c  03 85 fe eb                                      bl #0x310570
0036f160  00 00 54 e3                                      cmp r4, #0
0036f164  00 60 a0 e1                                      mov r6, r0
0036f168  28 00 00 0a                                      beq #0x36f210
0036f16c  10 50 84 e2                                      add r5, r4, #0x10
0036f170  07 20 a0 e1                                      mov r2, r7
0036f174  05 10 a0 e1                                      mov r1, r5
0036f178  fe 5d 02 eb                                      bl #0x406978
0036f17c  06 10 a0 e1                                      mov r1, r6
0036f180  04 00 a0 e1                                      mov r0, r4
0036f184  8d 67 02 eb                                      bl #0x408fc0
0036f188  00 10 a0 e3                                      mov r1, #0
0036f18c  1c 00 a0 e3                                      mov r0, #0x1c
0036f190  f6 84 fe eb                                      bl #0x310570
0036f194  05 10 a0 e1                                      mov r1, r5
0036f198  00 60 a0 e1                                      mov r6, r0
0036f19c  02 5d 02 eb                                      bl #0x4065ac
0036f1a0  06 10 a0 e1                                      mov r1, r6
0036f1a4  04 00 a0 e1                                      mov r0, r4
0036f1a8  84 67 02 eb                                      bl #0x408fc0
0036f1ac  10 00 a0 e3                                      mov r0, #0x10
0036f1b0  00 10 a0 e3                                      mov r1, #0
0036f1b4  ed 84 fe eb                                      bl #0x310570
0036f1b8  00 60 a0 e1                                      mov r6, r0
0036f1bc  05 10 a0 e1                                      mov r1, r5
0036f1c0  06 00 a0 e1                                      mov r0, r6
0036f1c4  d9 65 02 eb                                      bl #0x408930
0036f1c8  04 00 a0 e1                                      mov r0, r4
0036f1cc  06 10 a0 e1                                      mov r1, r6
0036f1d0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0036f1d4  79 67 02 ea                                      b #0x408fc0
0036f1d8  10 00 a0 e3                                      mov r0, #0x10
0036f1dc  e3 84 fe eb                                      bl #0x310570
0036f1e0  dd 4f 85 e2                                      add r4, r5, #0x374
0036f1e4  00 00 55 e3                                      cmp r5, #0
0036f1e8  04 10 a0 11                                      movne r1, r4
0036f1ec  00 10 a0 03                                      moveq r1, #0
0036f1f0  00 60 a0 e1                                      mov r6, r0
0036f1f4  fe 67 02 eb                                      bl #0x4091f4
0036f1f8  04 00 a0 e1                                      mov r0, r4
0036f1fc  06 10 a0 e1                                      mov r1, r6
0036f200  02 57 02 eb                                      bl #0x404e10
0036f204  78 33 95 e5                                      ldr r3, [r5, #0x378]
0036f208  0c 50 83 e5                                      str r5, [r3, #0xc]
0036f20c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036f210  07 20 a0 e1                                      mov r2, r7
0036f214  04 10 a0 e1                                      mov r1, r4
0036f218  d6 5d 02 eb                                      bl #0x406978
0036f21c  06 10 a0 e1                                      mov r1, r6
0036f220  04 00 a0 e1                                      mov r0, r4
0036f224  65 67 02 eb                                      bl #0x408fc0
0036f228  04 10 a0 e1                                      mov r1, r4
0036f22c  1c 00 a0 e3                                      mov r0, #0x1c
0036f230  ce 84 fe eb                                      bl #0x310570
0036f234  04 10 a0 e1                                      mov r1, r4
0036f238  00 50 a0 e1                                      mov r5, r0
0036f23c  da 5c 02 eb                                      bl #0x4065ac
0036f240  05 10 a0 e1                                      mov r1, r5
0036f244  04 00 a0 e1                                      mov r0, r4
0036f248  5c 67 02 eb                                      bl #0x408fc0
0036f24c  10 00 a0 e3                                      mov r0, #0x10
0036f250  04 10 a0 e1                                      mov r1, r4
0036f254  c5 84 fe eb                                      bl #0x310570
0036f258  04 50 a0 e1                                      mov r5, r4
0036f25c  00 60 a0 e1                                      mov r6, r0
0036f260  d5 ff ff ea                                      b #0x36f1bc

; FUNCTION 0x0036f2bc, declared_size=336, range_size=336, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager18PostInitCharactersEv
; demangled: PlayerManager::PostInitCharacters()
; decoder-mode: arm
0036f2bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036f2c0  14 d0 4d e2                                      sub sp, sp, #0x14
0036f2c4  00 60 a0 e1                                      mov r6, r0
0036f2c8  36 f9 ff eb                                      bl #0x36d7a8
0036f2cc  20 81 9f e5                                      ldr r8, [pc, #0x120]
0036f2d0  00 50 50 e2                                      subs r5, r0, #0
0036f2d4  08 80 8f e0                                      add r8, pc, r8
0036f2d8  2a 00 00 da                                      ble #0x36f388
0036f2dc  14 31 9f e5                                      ldr r3, [pc, #0x114]
0036f2e0  14 b1 9f e5                                      ldr fp, [pc, #0x114]
0036f2e4  14 a1 9f e5                                      ldr sl, [pc, #0x114]
0036f2e8  03 30 8f e0                                      add r3, pc, r3
0036f2ec  08 30 8d e5                                      str r3, [sp, #8]
0036f2f0  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
0036f2f4  0c 91 9f e5                                      ldr sb, [pc, #0x10c]
0036f2f8  0b b0 8f e0                                      add fp, pc, fp
0036f2fc  03 30 8f e0                                      add r3, pc, r3
0036f300  0c 30 8d e5                                      str r3, [sp, #0xc]
0036f304  00 40 a0 e3                                      mov r4, #0
0036f308  02 00 00 ea                                      b #0x36f318
0036f30c  01 40 84 e2                                      add r4, r4, #1
0036f310  05 00 54 e1                                      cmp r4, r5
0036f314  1b 00 00 0a                                      beq #0x36f388
0036f318  04 10 a0 e1                                      mov r1, r4
0036f31c  00 20 a0 e3                                      mov r2, #0
0036f320  06 00 a0 e1                                      mov r0, r6
0036f324  06 fd ff eb                                      bl #0x36e744
0036f328  00 30 90 e5                                      ldr r3, [r0]
0036f32c  00 70 a0 e1                                      mov r7, r0
0036f330  0f e0 a0 e1                                      mov lr, pc
0036f334  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0036f338  00 00 50 e3                                      cmp r0, #0
0036f33c  f2 ff ff 0a                                      beq #0x36f30c
0036f340  00 30 97 e5                                      ldr r3, [r7]
0036f344  07 00 a0 e1                                      mov r0, r7
0036f348  0f e0 a0 e1                                      mov lr, pc
0036f34c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0036f350  00 00 50 e3                                      cmp r0, #0
0036f354  ec ff ff 0a                                      beq #0x36f30c
0036f358  60 76 97 e5                                      ldr r7, [r7, #0x660]
0036f35c  0c 39 12 eb                                      bl #0x7fd794
0036f360  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036f364  00 00 53 e3                                      cmp r3, #0
0036f368  08 00 00 0a                                      beq #0x36f390
0036f36c  00 00 57 e3                                      cmp r7, #0
0036f370  18 00 00 0a                                      beq #0x36f3d8
0036f374  07 00 a0 e1                                      mov r0, r7
0036f378  01 40 84 e2                                      add r4, r4, #1
0036f37c  1f 37 01 eb                                      bl #0x3bd000
0036f380  05 00 54 e1                                      cmp r4, r5
0036f384  e3 ff ff 1a                                      bne #0x36f318
0036f388  14 d0 8d e2                                      add sp, sp, #0x14
0036f38c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0036f390  00 00 57 e3                                      cmp r7, #0
0036f394  f6 ff ff 1a                                      bne #0x36f374
0036f398  0a 30 98 e7                                      ldr r3, [r8, sl]
0036f39c  00 30 93 e5                                      ldr r3, [r3]
0036f3a0  02 00 53 e3                                      cmp r3, #2
0036f3a4  00 70 87 05                                      streq r7, [r7]
0036f3a8  f1 ff ff 0a                                      beq #0x36f374
0036f3ac  01 00 53 e3                                      cmp r3, #1
0036f3b0  ef ff ff 1a                                      bne #0x36f374
0036f3b4  09 00 98 e7                                      ldr r0, [r8, sb]
0036f3b8  43 c4 00 e3                                      movw ip, #0x443
0036f3bc  0b 10 a0 e1                                      mov r1, fp
0036f3c0  08 20 9d e5                                      ldr r2, [sp, #8]
0036f3c4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0036f3c8  a8 00 80 e2                                      add r0, r0, #0xa8
0036f3cc  00 c0 8d e5                                      str ip, [sp]
0036f3d0  0b 7b fe eb                                      bl #0x30e004
0036f3d4  e6 ff ff ea                                      b #0x36f374
0036f3d8  eb 46 12 eb                                      bl #0x800f8c
0036f3dc  00 30 90 e5                                      ldr r3, [r0]
0036f3e0  0f e0 a0 e1                                      mov lr, pc
0036f3e4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0036f3e8  61 32 12 eb                                      bl #0x7fbd74
0036f3ec  98 32 12 eb                                      bl #0x7fbe54
0036f3f0  c5 ff ff ea                                      b #0x36f30c
; mapping-symbol data/literal pool
0036f3f4  bc 57 62 00 a0 2d 58 00 e0 f0 54 00 c0 39 00 00  .byte 0xbc, 0x57, 0x62, 0x00, 0xa0, 0x2d, 0x58, 0x00, 0xe0, 0xf0, 0x54, 0x00, 0xc0, 0x39, 0x00, 0x00
0036f404  f4 23 55 00 c0 19 00 00                          .byte 0xf4, 0x23, 0x55, 0x00, 0xc0, 0x19, 0x00, 0x00

; FUNCTION 0x0036f4b4, declared_size=1944, range_size=1944, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager24_UpdateJoiningControllerEii
; demangled: PlayerManager::_UpdateJoiningController(int, int)
; decoder-mode: arm
0036f4b4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0036f4b8  f4 d0 4d e2                                      sub sp, sp, #0xf4
0036f4bc  02 60 a0 e1                                      mov r6, r2
0036f4c0  00 70 a0 e1                                      mov r7, r0
0036f4c4  01 50 a0 e1                                      mov r5, r1
0036f4c8  35 7a ff eb                                      bl #0x34dda4
0036f4cc  05 10 a0 e1                                      mov r1, r5
0036f4d0  00 30 90 e5                                      ldr r3, [r0]
0036f4d4  0f e0 a0 e1                                      mov lr, pc
0036f4d8  08 f0 93 e5                                      ldr pc, [r3, #8]
0036f4dc  00 20 a0 e3                                      mov r2, #0
0036f4e0  00 40 a0 e1                                      mov r4, r0
0036f4e4  06 10 a0 e1                                      mov r1, r6
0036f4e8  07 00 a0 e1                                      mov r0, r7
0036f4ec  af fa ff eb                                      bl #0x36dfb0
0036f4f0  c0 14 94 e5                                      ldr r1, [r4, #0x4c0]
0036f4f4  00 70 a0 e1                                      mov r7, r0
0036f4f8  c4 04 94 e5                                      ldr r0, [r4, #0x4c4]
0036f4fc  a8 7d fe eb                                      bl #0x30eba4
0036f500  fe 15 a0 e3                                      mov r1, #0x3f800000
0036f504  a6 7d fe eb                                      bl #0x30eba4
0036f508  3f 14 a0 e3                                      mov r1, #0x3f000000
0036f50c  16 7e fe eb                                      bl #0x30ed6c
0036f510  00 10 a0 e1                                      mov r1, r0
0036f514  b8 04 94 e5                                      ldr r0, [r4, #0x4b8]
0036f518  e5 7b fe eb                                      bl #0x30e4b4
0036f51c  18 67 9f e5                                      ldr r6, [pc, #0x718]
0036f520  00 00 50 e3                                      cmp r0, #0
0036f524  06 60 8f e0                                      add r6, pc, r6
0036f528  7c 01 00 1a                                      bne #0x36fb20
0036f52c  c8 34 d4 e5                                      ldrb r3, [r4, #0x4c8]
0036f530  00 00 53 e3                                      cmp r3, #0
0036f534  93 01 00 1a                                      bne #0x36fb88
0036f538  e0 14 94 e5                                      ldr r1, [r4, #0x4e0]
0036f53c  e4 04 94 e5                                      ldr r0, [r4, #0x4e4]
0036f540  97 7d fe eb                                      bl #0x30eba4
0036f544  fe 15 a0 e3                                      mov r1, #0x3f800000
0036f548  95 7d fe eb                                      bl #0x30eba4
0036f54c  3f 14 a0 e3                                      mov r1, #0x3f000000
0036f550  05 7e fe eb                                      bl #0x30ed6c
0036f554  00 10 a0 e1                                      mov r1, r0
0036f558  d8 04 94 e5                                      ldr r0, [r4, #0x4d8]
0036f55c  d4 7b fe eb                                      bl #0x30e4b4
0036f560  00 00 50 e3                                      cmp r0, #0
0036f564  53 01 00 1a                                      bne #0x36fab8
0036f568  e8 34 d4 e5                                      ldrb r3, [r4, #0x4e8]
0036f56c  00 00 53 e3                                      cmp r3, #0
0036f570  89 01 00 1a                                      bne #0x36fb9c
0036f574  00 15 94 e5                                      ldr r1, [r4, #0x500]
0036f578  04 05 94 e5                                      ldr r0, [r4, #0x504]
0036f57c  88 7d fe eb                                      bl #0x30eba4
0036f580  fe 15 a0 e3                                      mov r1, #0x3f800000
0036f584  86 7d fe eb                                      bl #0x30eba4
0036f588  3f 14 a0 e3                                      mov r1, #0x3f000000
0036f58c  f6 7d fe eb                                      bl #0x30ed6c
0036f590  00 10 a0 e1                                      mov r1, r0
0036f594  f8 04 94 e5                                      ldr r0, [r4, #0x4f8]
0036f598  c5 7b fe eb                                      bl #0x30e4b4
0036f59c  00 00 50 e3                                      cmp r0, #0
0036f5a0  2a 01 00 1a                                      bne #0x36fa50
0036f5a4  08 35 d4 e5                                      ldrb r3, [r4, #0x508]
0036f5a8  00 00 53 e3                                      cmp r3, #0
0036f5ac  7f 01 00 1a                                      bne #0x36fbb0
0036f5b0  20 15 94 e5                                      ldr r1, [r4, #0x520]
0036f5b4  24 05 94 e5                                      ldr r0, [r4, #0x524]
0036f5b8  79 7d fe eb                                      bl #0x30eba4
0036f5bc  fe 15 a0 e3                                      mov r1, #0x3f800000
0036f5c0  77 7d fe eb                                      bl #0x30eba4
0036f5c4  3f 14 a0 e3                                      mov r1, #0x3f000000
0036f5c8  e7 7d fe eb                                      bl #0x30ed6c
0036f5cc  00 10 a0 e1                                      mov r1, r0
0036f5d0  18 05 94 e5                                      ldr r0, [r4, #0x518]
0036f5d4  b6 7b fe eb                                      bl #0x30e4b4
0036f5d8  00 00 50 e3                                      cmp r0, #0
0036f5dc  01 01 00 1a                                      bne #0x36f9e8
0036f5e0  28 35 d4 e5                                      ldrb r3, [r4, #0x528]
0036f5e4  00 00 53 e3                                      cmp r3, #0
0036f5e8  75 01 00 1a                                      bne #0x36fbc4
0036f5ec  60 11 94 e5                                      ldr r1, [r4, #0x160]
0036f5f0  64 01 94 e5                                      ldr r0, [r4, #0x164]
0036f5f4  6a 7d fe eb                                      bl #0x30eba4
0036f5f8  fe 15 a0 e3                                      mov r1, #0x3f800000
0036f5fc  68 7d fe eb                                      bl #0x30eba4
0036f600  3f 14 a0 e3                                      mov r1, #0x3f000000
0036f604  d8 7d fe eb                                      bl #0x30ed6c
0036f608  00 10 a0 e1                                      mov r1, r0
0036f60c  58 01 94 e5                                      ldr r0, [r4, #0x158]
0036f610  a7 7b fe eb                                      bl #0x30e4b4
0036f614  00 00 50 e3                                      cmp r0, #0
0036f618  d8 00 00 1a                                      bne #0x36f980
0036f61c  68 31 d4 e5                                      ldrb r3, [r4, #0x168]
0036f620  00 00 53 e3                                      cmp r3, #0
0036f624  6b 01 00 1a                                      bne #0x36fbd8
0036f628  80 11 94 e5                                      ldr r1, [r4, #0x180]
0036f62c  84 01 94 e5                                      ldr r0, [r4, #0x184]
0036f630  5b 7d fe eb                                      bl #0x30eba4
0036f634  fe 15 a0 e3                                      mov r1, #0x3f800000
0036f638  59 7d fe eb                                      bl #0x30eba4
0036f63c  3f 14 a0 e3                                      mov r1, #0x3f000000
0036f640  c9 7d fe eb                                      bl #0x30ed6c
0036f644  00 10 a0 e1                                      mov r1, r0
0036f648  78 01 94 e5                                      ldr r0, [r4, #0x178]
0036f64c  98 7b fe eb                                      bl #0x30e4b4
0036f650  00 00 50 e3                                      cmp r0, #0
0036f654  af 00 00 1a                                      bne #0x36f918
0036f658  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
0036f65c  00 00 53 e3                                      cmp r3, #0
0036f660  61 01 00 1a                                      bne #0x36fbec
0036f664  a0 11 94 e5                                      ldr r1, [r4, #0x1a0]
0036f668  a4 01 94 e5                                      ldr r0, [r4, #0x1a4]
0036f66c  4c 7d fe eb                                      bl #0x30eba4
0036f670  fe 15 a0 e3                                      mov r1, #0x3f800000
0036f674  4a 7d fe eb                                      bl #0x30eba4
0036f678  3f 14 a0 e3                                      mov r1, #0x3f000000
0036f67c  ba 7d fe eb                                      bl #0x30ed6c
0036f680  00 10 a0 e1                                      mov r1, r0
0036f684  98 01 94 e5                                      ldr r0, [r4, #0x198]
0036f688  89 7b fe eb                                      bl #0x30e4b4
0036f68c  00 00 50 e3                                      cmp r0, #0
0036f690  86 00 00 1a                                      bne #0x36f8b0
0036f694  a8 31 d4 e5                                      ldrb r3, [r4, #0x1a8]
0036f698  00 00 53 e3                                      cmp r3, #0
0036f69c  57 01 00 1a                                      bne #0x36fc00
0036f6a0  c0 11 94 e5                                      ldr r1, [r4, #0x1c0]
0036f6a4  c4 01 94 e5                                      ldr r0, [r4, #0x1c4]
0036f6a8  3d 7d fe eb                                      bl #0x30eba4
0036f6ac  fe 15 a0 e3                                      mov r1, #0x3f800000
0036f6b0  3b 7d fe eb                                      bl #0x30eba4
0036f6b4  3f 14 a0 e3                                      mov r1, #0x3f000000
0036f6b8  ab 7d fe eb                                      bl #0x30ed6c
0036f6bc  00 10 a0 e1                                      mov r1, r0
0036f6c0  b8 01 94 e5                                      ldr r0, [r4, #0x1b8]
0036f6c4  7a 7b fe eb                                      bl #0x30e4b4
0036f6c8  00 00 50 e3                                      cmp r0, #0
0036f6cc  5d 00 00 1a                                      bne #0x36f848
0036f6d0  c8 31 d4 e5                                      ldrb r3, [r4, #0x1c8]
0036f6d4  00 00 53 e3                                      cmp r3, #0
0036f6d8  4d 01 00 1a                                      bne #0x36fc14
0036f6dc  20 10 94 e5                                      ldr r1, [r4, #0x20]
0036f6e0  24 00 94 e5                                      ldr r0, [r4, #0x24]
0036f6e4  2e 7d fe eb                                      bl #0x30eba4
0036f6e8  fe 15 a0 e3                                      mov r1, #0x3f800000
0036f6ec  2c 7d fe eb                                      bl #0x30eba4
0036f6f0  3f 14 a0 e3                                      mov r1, #0x3f000000
0036f6f4  9c 7d fe eb                                      bl #0x30ed6c
0036f6f8  00 10 a0 e1                                      mov r1, r0
0036f6fc  18 00 94 e5                                      ldr r0, [r4, #0x18]
0036f700  6b 7b fe eb                                      bl #0x30e4b4
0036f704  00 00 50 e3                                      cmp r0, #0
0036f708  34 00 00 1a                                      bne #0x36f7e0
0036f70c  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
0036f710  00 00 53 e3                                      cmp r3, #0
0036f714  43 01 00 1a                                      bne #0x36fc28
0036f718  40 10 94 e5                                      ldr r1, [r4, #0x40]
0036f71c  44 00 94 e5                                      ldr r0, [r4, #0x44]
0036f720  1f 7d fe eb                                      bl #0x30eba4
0036f724  fe 15 a0 e3                                      mov r1, #0x3f800000
0036f728  1d 7d fe eb                                      bl #0x30eba4
0036f72c  3f 14 a0 e3                                      mov r1, #0x3f000000
0036f730  8d 7d fe eb                                      bl #0x30ed6c
0036f734  00 10 a0 e1                                      mov r1, r0
0036f738  38 00 94 e5                                      ldr r0, [r4, #0x38]
0036f73c  5c 7b fe eb                                      bl #0x30e4b4
0036f740  00 00 50 e3                                      cmp r0, #0
0036f744  07 00 00 1a                                      bne #0x36f768
0036f748  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
0036f74c  00 00 53 e3                                      cmp r3, #0
0036f750  20 00 00 0a                                      beq #0x36f7d8
0036f754  e4 34 9f e5                                      ldr r3, [pc, #0x4e4]
0036f758  00 c0 a0 e3                                      mov ip, #0
0036f75c  03 30 96 e7                                      ldr r3, [r6, r3]
0036f760  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036f764  06 00 00 ea                                      b #0x36f784
0036f768  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
0036f76c  00 00 53 e3                                      cmp r3, #0
0036f770  18 00 00 1a                                      bne #0x36f7d8
0036f774  c4 34 9f e5                                      ldr r3, [pc, #0x4c4]
0036f778  01 c0 a0 e3                                      mov ip, #1
0036f77c  03 30 96 e7                                      ldr r3, [r6, r3]
0036f780  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036f784  b8 34 9f e5                                      ldr r3, [pc, #0x4b8]
0036f788  0d 10 a0 e1                                      mov r1, sp
0036f78c  07 20 a0 e3                                      mov r2, #7
0036f790  03 30 96 e7                                      ldr r3, [r6, r3]
0036f794  04 20 8d e5                                      str r2, [sp, #4]
0036f798  0c c0 8d e5                                      str ip, [sp, #0xc]
0036f79c  08 30 83 e2                                      add r3, r3, #8
0036f7a0  00 30 8d e5                                      str r3, [sp]
0036f7a4  01 30 a0 e3                                      mov r3, #1
0036f7a8  08 30 8d e5                                      str r3, [sp, #8]
0036f7ac  fe 35 a0 e3                                      mov r3, #0x3f800000
0036f7b0  14 30 8d e5                                      str r3, [sp, #0x14]
0036f7b4  10 50 8d e5                                      str r5, [sp, #0x10]
0036f7b8  bf 25 ff eb                                      bl #0x338ebc
0036f7bc  84 34 9f e5                                      ldr r3, [pc, #0x484]
0036f7c0  07 00 a0 e1                                      mov r0, r7
0036f7c4  00 10 a0 e3                                      mov r1, #0
0036f7c8  03 30 96 e7                                      ldr r3, [r6, r3]
0036f7cc  08 30 83 e2                                      add r3, r3, #8
0036f7d0  00 30 8d e5                                      str r3, [sp]
0036f7d4  0c ff ff eb                                      bl #0x36f40c
0036f7d8  f4 d0 8d e2                                      add sp, sp, #0xf4
0036f7dc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0036f7e0  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
0036f7e4  00 00 53 e3                                      cmp r3, #0
0036f7e8  ca ff ff 1a                                      bne #0x36f718
0036f7ec  4c 34 9f e5                                      ldr r3, [pc, #0x44c]
0036f7f0  01 c0 a0 e3                                      mov ip, #1
0036f7f4  03 30 96 e7                                      ldr r3, [r6, r3]
0036f7f8  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036f7fc  40 34 9f e5                                      ldr r3, [pc, #0x440]
0036f800  07 20 a0 e3                                      mov r2, #7
0036f804  18 10 8d e2                                      add r1, sp, #0x18
0036f808  03 30 96 e7                                      ldr r3, [r6, r3]
0036f80c  1c 20 8d e5                                      str r2, [sp, #0x1c]
0036f810  24 c0 8d e5                                      str ip, [sp, #0x24]
0036f814  08 30 83 e2                                      add r3, r3, #8
0036f818  18 30 8d e5                                      str r3, [sp, #0x18]
0036f81c  00 30 a0 e3                                      mov r3, #0
0036f820  20 30 8d e5                                      str r3, [sp, #0x20]
0036f824  fe 35 a0 e3                                      mov r3, #0x3f800000
0036f828  2c 30 8d e5                                      str r3, [sp, #0x2c]
0036f82c  28 50 8d e5                                      str r5, [sp, #0x28]
0036f830  a1 25 ff eb                                      bl #0x338ebc
0036f834  0c 34 9f e5                                      ldr r3, [pc, #0x40c]
0036f838  03 30 96 e7                                      ldr r3, [r6, r3]
0036f83c  08 30 83 e2                                      add r3, r3, #8
0036f840  18 30 8d e5                                      str r3, [sp, #0x18]
0036f844  b3 ff ff ea                                      b #0x36f718
0036f848  c8 31 d4 e5                                      ldrb r3, [r4, #0x1c8]
0036f84c  00 00 53 e3                                      cmp r3, #0
0036f850  a1 ff ff 1a                                      bne #0x36f6dc
0036f854  e4 33 9f e5                                      ldr r3, [pc, #0x3e4]
0036f858  01 c0 a0 e3                                      mov ip, #1
0036f85c  03 30 96 e7                                      ldr r3, [r6, r3]
0036f860  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036f864  d8 33 9f e5                                      ldr r3, [pc, #0x3d8]
0036f868  07 20 a0 e3                                      mov r2, #7
0036f86c  30 10 8d e2                                      add r1, sp, #0x30
0036f870  03 30 96 e7                                      ldr r3, [r6, r3]
0036f874  34 20 8d e5                                      str r2, [sp, #0x34]
0036f878  3c c0 8d e5                                      str ip, [sp, #0x3c]
0036f87c  08 30 83 e2                                      add r3, r3, #8
0036f880  30 30 8d e5                                      str r3, [sp, #0x30]
0036f884  0d 30 a0 e3                                      mov r3, #0xd
0036f888  38 30 8d e5                                      str r3, [sp, #0x38]
0036f88c  fe 35 a0 e3                                      mov r3, #0x3f800000
0036f890  44 30 8d e5                                      str r3, [sp, #0x44]
0036f894  40 50 8d e5                                      str r5, [sp, #0x40]
0036f898  87 25 ff eb                                      bl #0x338ebc
0036f89c  a4 33 9f e5                                      ldr r3, [pc, #0x3a4]
0036f8a0  03 30 96 e7                                      ldr r3, [r6, r3]
0036f8a4  08 30 83 e2                                      add r3, r3, #8
0036f8a8  30 30 8d e5                                      str r3, [sp, #0x30]
0036f8ac  8a ff ff ea                                      b #0x36f6dc
0036f8b0  a8 31 d4 e5                                      ldrb r3, [r4, #0x1a8]
0036f8b4  00 00 53 e3                                      cmp r3, #0
0036f8b8  78 ff ff 1a                                      bne #0x36f6a0
0036f8bc  7c 33 9f e5                                      ldr r3, [pc, #0x37c]
0036f8c0  01 c0 a0 e3                                      mov ip, #1
0036f8c4  03 30 96 e7                                      ldr r3, [r6, r3]
0036f8c8  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036f8cc  70 33 9f e5                                      ldr r3, [pc, #0x370]
0036f8d0  07 20 a0 e3                                      mov r2, #7
0036f8d4  48 10 8d e2                                      add r1, sp, #0x48
0036f8d8  03 30 96 e7                                      ldr r3, [r6, r3]
0036f8dc  4c 20 8d e5                                      str r2, [sp, #0x4c]
0036f8e0  54 c0 8d e5                                      str ip, [sp, #0x54]
0036f8e4  08 30 83 e2                                      add r3, r3, #8
0036f8e8  48 30 8d e5                                      str r3, [sp, #0x48]
0036f8ec  0c 30 a0 e3                                      mov r3, #0xc
0036f8f0  50 30 8d e5                                      str r3, [sp, #0x50]
0036f8f4  fe 35 a0 e3                                      mov r3, #0x3f800000
0036f8f8  5c 30 8d e5                                      str r3, [sp, #0x5c]
0036f8fc  58 50 8d e5                                      str r5, [sp, #0x58]
0036f900  6d 25 ff eb                                      bl #0x338ebc
0036f904  3c 33 9f e5                                      ldr r3, [pc, #0x33c]
0036f908  03 30 96 e7                                      ldr r3, [r6, r3]
0036f90c  08 30 83 e2                                      add r3, r3, #8
0036f910  48 30 8d e5                                      str r3, [sp, #0x48]
0036f914  61 ff ff ea                                      b #0x36f6a0
0036f918  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
0036f91c  00 00 53 e3                                      cmp r3, #0
0036f920  4f ff ff 1a                                      bne #0x36f664
0036f924  14 33 9f e5                                      ldr r3, [pc, #0x314]
0036f928  01 c0 a0 e3                                      mov ip, #1
0036f92c  03 30 96 e7                                      ldr r3, [r6, r3]
0036f930  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036f934  08 33 9f e5                                      ldr r3, [pc, #0x308]
0036f938  07 20 a0 e3                                      mov r2, #7
0036f93c  60 10 8d e2                                      add r1, sp, #0x60
0036f940  03 30 96 e7                                      ldr r3, [r6, r3]
0036f944  64 20 8d e5                                      str r2, [sp, #0x64]
0036f948  6c c0 8d e5                                      str ip, [sp, #0x6c]
0036f94c  08 30 83 e2                                      add r3, r3, #8
0036f950  60 30 8d e5                                      str r3, [sp, #0x60]
0036f954  0b 30 a0 e3                                      mov r3, #0xb
0036f958  68 30 8d e5                                      str r3, [sp, #0x68]
0036f95c  fe 35 a0 e3                                      mov r3, #0x3f800000
0036f960  74 30 8d e5                                      str r3, [sp, #0x74]
0036f964  70 50 8d e5                                      str r5, [sp, #0x70]
0036f968  53 25 ff eb                                      bl #0x338ebc
0036f96c  d4 32 9f e5                                      ldr r3, [pc, #0x2d4]
0036f970  03 30 96 e7                                      ldr r3, [r6, r3]
0036f974  08 30 83 e2                                      add r3, r3, #8
0036f978  60 30 8d e5                                      str r3, [sp, #0x60]
0036f97c  38 ff ff ea                                      b #0x36f664
0036f980  68 31 d4 e5                                      ldrb r3, [r4, #0x168]
0036f984  00 00 53 e3                                      cmp r3, #0
0036f988  26 ff ff 1a                                      bne #0x36f628
0036f98c  ac 32 9f e5                                      ldr r3, [pc, #0x2ac]
0036f990  01 c0 a0 e3                                      mov ip, #1
0036f994  03 30 96 e7                                      ldr r3, [r6, r3]
0036f998  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036f99c  a0 32 9f e5                                      ldr r3, [pc, #0x2a0]
0036f9a0  07 20 a0 e3                                      mov r2, #7
0036f9a4  78 10 8d e2                                      add r1, sp, #0x78
0036f9a8  03 30 96 e7                                      ldr r3, [r6, r3]
0036f9ac  7c 20 8d e5                                      str r2, [sp, #0x7c]
0036f9b0  84 c0 8d e5                                      str ip, [sp, #0x84]
0036f9b4  08 30 83 e2                                      add r3, r3, #8
0036f9b8  78 30 8d e5                                      str r3, [sp, #0x78]
0036f9bc  0a 30 a0 e3                                      mov r3, #0xa
0036f9c0  80 30 8d e5                                      str r3, [sp, #0x80]
0036f9c4  fe 35 a0 e3                                      mov r3, #0x3f800000
0036f9c8  8c 30 8d e5                                      str r3, [sp, #0x8c]
0036f9cc  88 50 8d e5                                      str r5, [sp, #0x88]
0036f9d0  39 25 ff eb                                      bl #0x338ebc
0036f9d4  6c 32 9f e5                                      ldr r3, [pc, #0x26c]
0036f9d8  03 30 96 e7                                      ldr r3, [r6, r3]
0036f9dc  08 30 83 e2                                      add r3, r3, #8
0036f9e0  78 30 8d e5                                      str r3, [sp, #0x78]
0036f9e4  0f ff ff ea                                      b #0x36f628
0036f9e8  28 35 d4 e5                                      ldrb r3, [r4, #0x528]
0036f9ec  00 00 53 e3                                      cmp r3, #0
0036f9f0  fd fe ff 1a                                      bne #0x36f5ec
0036f9f4  44 32 9f e5                                      ldr r3, [pc, #0x244]
0036f9f8  01 c0 a0 e3                                      mov ip, #1
0036f9fc  03 30 96 e7                                      ldr r3, [r6, r3]
0036fa00  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fa04  38 32 9f e5                                      ldr r3, [pc, #0x238]
0036fa08  07 20 a0 e3                                      mov r2, #7
0036fa0c  90 10 8d e2                                      add r1, sp, #0x90
0036fa10  03 30 96 e7                                      ldr r3, [r6, r3]
0036fa14  94 20 8d e5                                      str r2, [sp, #0x94]
0036fa18  9c c0 8d e5                                      str ip, [sp, #0x9c]
0036fa1c  08 30 83 e2                                      add r3, r3, #8
0036fa20  90 30 8d e5                                      str r3, [sp, #0x90]
0036fa24  28 30 a0 e3                                      mov r3, #0x28
0036fa28  98 30 8d e5                                      str r3, [sp, #0x98]
0036fa2c  fe 35 a0 e3                                      mov r3, #0x3f800000
0036fa30  a4 30 8d e5                                      str r3, [sp, #0xa4]
0036fa34  a0 50 8d e5                                      str r5, [sp, #0xa0]
0036fa38  1f 25 ff eb                                      bl #0x338ebc
0036fa3c  04 32 9f e5                                      ldr r3, [pc, #0x204]
0036fa40  03 30 96 e7                                      ldr r3, [r6, r3]
0036fa44  08 30 83 e2                                      add r3, r3, #8
0036fa48  90 30 8d e5                                      str r3, [sp, #0x90]
0036fa4c  e6 fe ff ea                                      b #0x36f5ec
0036fa50  08 35 d4 e5                                      ldrb r3, [r4, #0x508]
0036fa54  00 00 53 e3                                      cmp r3, #0
0036fa58  d4 fe ff 1a                                      bne #0x36f5b0
0036fa5c  dc 31 9f e5                                      ldr r3, [pc, #0x1dc]
0036fa60  01 c0 a0 e3                                      mov ip, #1
0036fa64  03 30 96 e7                                      ldr r3, [r6, r3]
0036fa68  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fa6c  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
0036fa70  07 20 a0 e3                                      mov r2, #7
0036fa74  a8 10 8d e2                                      add r1, sp, #0xa8
0036fa78  03 30 96 e7                                      ldr r3, [r6, r3]
0036fa7c  ac 20 8d e5                                      str r2, [sp, #0xac]
0036fa80  b4 c0 8d e5                                      str ip, [sp, #0xb4]
0036fa84  08 30 83 e2                                      add r3, r3, #8
0036fa88  a8 30 8d e5                                      str r3, [sp, #0xa8]
0036fa8c  27 30 a0 e3                                      mov r3, #0x27
0036fa90  b0 30 8d e5                                      str r3, [sp, #0xb0]
0036fa94  fe 35 a0 e3                                      mov r3, #0x3f800000
0036fa98  bc 30 8d e5                                      str r3, [sp, #0xbc]
0036fa9c  b8 50 8d e5                                      str r5, [sp, #0xb8]
0036faa0  05 25 ff eb                                      bl #0x338ebc
0036faa4  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
0036faa8  03 30 96 e7                                      ldr r3, [r6, r3]
0036faac  08 30 83 e2                                      add r3, r3, #8
0036fab0  a8 30 8d e5                                      str r3, [sp, #0xa8]
0036fab4  bd fe ff ea                                      b #0x36f5b0
0036fab8  e8 34 d4 e5                                      ldrb r3, [r4, #0x4e8]
0036fabc  00 00 53 e3                                      cmp r3, #0
0036fac0  ab fe ff 1a                                      bne #0x36f574
0036fac4  74 31 9f e5                                      ldr r3, [pc, #0x174]
0036fac8  01 c0 a0 e3                                      mov ip, #1
0036facc  03 30 96 e7                                      ldr r3, [r6, r3]
0036fad0  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fad4  68 31 9f e5                                      ldr r3, [pc, #0x168]
0036fad8  07 20 a0 e3                                      mov r2, #7
0036fadc  c0 10 8d e2                                      add r1, sp, #0xc0
0036fae0  03 30 96 e7                                      ldr r3, [r6, r3]
0036fae4  c4 20 8d e5                                      str r2, [sp, #0xc4]
0036fae8  cc c0 8d e5                                      str ip, [sp, #0xcc]
0036faec  08 30 83 e2                                      add r3, r3, #8
0036faf0  c0 30 8d e5                                      str r3, [sp, #0xc0]
0036faf4  26 30 a0 e3                                      mov r3, #0x26
0036faf8  c8 30 8d e5                                      str r3, [sp, #0xc8]
0036fafc  fe 35 a0 e3                                      mov r3, #0x3f800000
0036fb00  d4 30 8d e5                                      str r3, [sp, #0xd4]
0036fb04  d0 50 8d e5                                      str r5, [sp, #0xd0]
0036fb08  eb 24 ff eb                                      bl #0x338ebc
0036fb0c  34 31 9f e5                                      ldr r3, [pc, #0x134]
0036fb10  03 30 96 e7                                      ldr r3, [r6, r3]
0036fb14  08 30 83 e2                                      add r3, r3, #8
0036fb18  c0 30 8d e5                                      str r3, [sp, #0xc0]
0036fb1c  94 fe ff ea                                      b #0x36f574
0036fb20  c8 34 d4 e5                                      ldrb r3, [r4, #0x4c8]
0036fb24  00 00 53 e3                                      cmp r3, #0
0036fb28  82 fe ff 1a                                      bne #0x36f538
0036fb2c  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
0036fb30  01 c0 a0 e3                                      mov ip, #1
0036fb34  03 30 96 e7                                      ldr r3, [r6, r3]
0036fb38  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fb3c  00 31 9f e5                                      ldr r3, [pc, #0x100]
0036fb40  07 20 a0 e3                                      mov r2, #7
0036fb44  d8 10 8d e2                                      add r1, sp, #0xd8
0036fb48  03 30 96 e7                                      ldr r3, [r6, r3]
0036fb4c  dc 20 8d e5                                      str r2, [sp, #0xdc]
0036fb50  e4 c0 8d e5                                      str ip, [sp, #0xe4]
0036fb54  08 30 83 e2                                      add r3, r3, #8
0036fb58  d8 30 8d e5                                      str r3, [sp, #0xd8]
0036fb5c  25 30 a0 e3                                      mov r3, #0x25
0036fb60  e0 30 8d e5                                      str r3, [sp, #0xe0]
0036fb64  fe 35 a0 e3                                      mov r3, #0x3f800000
0036fb68  ec 30 8d e5                                      str r3, [sp, #0xec]
0036fb6c  e8 50 8d e5                                      str r5, [sp, #0xe8]
0036fb70  d1 24 ff eb                                      bl #0x338ebc
0036fb74  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0036fb78  03 30 96 e7                                      ldr r3, [r6, r3]
0036fb7c  08 30 83 e2                                      add r3, r3, #8
0036fb80  d8 30 8d e5                                      str r3, [sp, #0xd8]
0036fb84  6b fe ff ea                                      b #0x36f538
0036fb88  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0036fb8c  00 c0 a0 e3                                      mov ip, #0
0036fb90  03 30 96 e7                                      ldr r3, [r6, r3]
0036fb94  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fb98  e7 ff ff ea                                      b #0x36fb3c
0036fb9c  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0036fba0  00 c0 a0 e3                                      mov ip, #0
0036fba4  03 30 96 e7                                      ldr r3, [r6, r3]
0036fba8  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fbac  c8 ff ff ea                                      b #0x36fad4
0036fbb0  88 30 9f e5                                      ldr r3, [pc, #0x88]
0036fbb4  00 c0 a0 e3                                      mov ip, #0
0036fbb8  03 30 96 e7                                      ldr r3, [r6, r3]
0036fbbc  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fbc0  a9 ff ff ea                                      b #0x36fa6c
0036fbc4  74 30 9f e5                                      ldr r3, [pc, #0x74]
0036fbc8  00 c0 a0 e3                                      mov ip, #0
0036fbcc  03 30 96 e7                                      ldr r3, [r6, r3]
0036fbd0  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fbd4  8a ff ff ea                                      b #0x36fa04
0036fbd8  60 30 9f e5                                      ldr r3, [pc, #0x60]
0036fbdc  00 c0 a0 e3                                      mov ip, #0
0036fbe0  03 30 96 e7                                      ldr r3, [r6, r3]
0036fbe4  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fbe8  6b ff ff ea                                      b #0x36f99c
0036fbec  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0036fbf0  00 c0 a0 e3                                      mov ip, #0
0036fbf4  03 30 96 e7                                      ldr r3, [r6, r3]
0036fbf8  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fbfc  4c ff ff ea                                      b #0x36f934
0036fc00  38 30 9f e5                                      ldr r3, [pc, #0x38]
0036fc04  00 c0 a0 e3                                      mov ip, #0
0036fc08  03 30 96 e7                                      ldr r3, [r6, r3]
0036fc0c  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fc10  2d ff ff ea                                      b #0x36f8cc
0036fc14  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036fc18  00 c0 a0 e3                                      mov ip, #0
0036fc1c  03 30 96 e7                                      ldr r3, [r6, r3]
0036fc20  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fc24  0e ff ff ea                                      b #0x36f864
0036fc28  10 30 9f e5                                      ldr r3, [pc, #0x10]
0036fc2c  00 c0 a0 e3                                      mov ip, #0
0036fc30  03 30 96 e7                                      ldr r3, [r6, r3]
0036fc34  14 00 93 e5                                      ldr r0, [r3, #0x14]
0036fc38  ef fe ff ea                                      b #0x36f7fc
; mapping-symbol data/literal pool
0036fc3c  6c 55 62 00 f4 37 00 00 90 3d 00 00 b0 0b 00 00  .byte 0x6c, 0x55, 0x62, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x90, 0x3d, 0x00, 0x00, 0xb0, 0x0b, 0x00, 0x00

; FUNCTION 0x00370020, declared_size=568, range_size=568, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager14_PackInventoryER10PlayerInfo
; demangled: PlayerManager::_PackInventory(PlayerInfo&)
; decoder-mode: arm
00370020  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00370024  6c 36 d1 e5                                      ldrb r3, [r1, #0x66c]
00370028  14 52 9f e5                                      ldr r5, [pc, #0x214]
0037002c  2c d0 4d e2                                      sub sp, sp, #0x2c
00370030  00 00 53 e3                                      cmp r3, #0
00370034  01 a0 a0 e1                                      mov sl, r1
00370038  05 50 8f e0                                      add r5, pc, r5
0037003c  7e 00 00 0a                                      beq #0x37023c
00370040  60 86 91 e5                                      ldr r8, [r1, #0x660]
00370044  00 00 58 e3                                      cmp r8, #0
00370048  7b 00 00 0a                                      beq #0x37023c
0037004c  f4 31 9f e5                                      ldr r3, [pc, #0x1f4]
00370050  03 00 95 e7                                      ldr r0, [r5, r3]
00370054  4e bd fe eb                                      bl #0x31f594
00370058  00 00 50 e3                                      cmp r0, #0
0037005c  76 00 00 0a                                      beq #0x37023c
00370060  44 31 d0 e5                                      ldrb r3, [r0, #0x144]
00370064  00 00 53 e3                                      cmp r3, #0
00370068  73 00 00 0a                                      beq #0x37023c
0037006c  df 8f 88 e2                                      add r8, r8, #0x37c
00370070  08 00 a0 e1                                      mov r0, r8
00370074  29 3f 02 eb                                      bl #0x3ffd20
00370078  00 70 50 e2                                      subs r7, r0, #0
0037007c  00 60 a0 d3                                      movle r6, #0
00370080  2a 00 00 da                                      ble #0x370130
00370084  00 40 a0 e3                                      mov r4, #0
00370088  04 60 a0 e1                                      mov r6, r4
0037008c  09 00 00 ea                                      b #0x3700b8
00370090  08 00 a0 e1                                      mov r0, r8
00370094  04 10 a0 e1                                      mov r1, r4
00370098  67 3f 02 eb                                      bl #0x3ffe3c
0037009c  00 00 50 e3                                      cmp r0, #0
003700a0  1e 00 00 0a                                      beq #0x370120
003700a4  55 27 02 eb                                      bl #0x3f9e00
003700a8  00 60 26 e0                                      eor r6, r6, r0
003700ac  01 40 84 e2                                      add r4, r4, #1
003700b0  04 00 57 e1                                      cmp r7, r4
003700b4  1d 00 00 0a                                      beq #0x370130
003700b8  01 30 44 e2                                      sub r3, r4, #1
003700bc  01 00 53 e3                                      cmp r3, #1
003700c0  f2 ff ff 8a                                      bhi #0x370090
003700c4  02 00 54 e3                                      cmp r4, #2
003700c8  f7 ff ff 0a                                      beq #0x3700ac
003700cc  01 10 a0 e3                                      mov r1, #1
003700d0  08 00 a0 e1                                      mov r0, r8
003700d4  58 3f 02 eb                                      bl #0x3ffe3c
003700d8  02 10 a0 e3                                      mov r1, #2
003700dc  00 90 a0 e1                                      mov sb, r0
003700e0  08 00 a0 e1                                      mov r0, r8
003700e4  54 3f 02 eb                                      bl #0x3ffe3c
003700e8  00 00 59 e3                                      cmp sb, #0
003700ec  00 b0 a0 e1                                      mov fp, r0
003700f0  02 00 00 0a                                      beq #0x370100
003700f4  09 00 a0 e1                                      mov r0, sb
003700f8  40 27 02 eb                                      bl #0x3f9e00
003700fc  00 90 a0 e1                                      mov sb, r0
00370100  00 00 5b e3                                      cmp fp, #0
00370104  0b 00 a0 01                                      moveq r0, fp
00370108  01 00 00 0a                                      beq #0x370114
0037010c  0b 00 a0 e1                                      mov r0, fp
00370110  3a 27 02 eb                                      bl #0x3f9e00
00370114  09 90 90 e0                                      adds sb, r0, sb
00370118  09 60 26 10                                      eorne r6, r6, sb
0037011c  e2 ff ff 1a                                      bne #0x3700ac
00370120  01 40 84 e2                                      add r4, r4, #1
00370124  04 00 57 e1                                      cmp r7, r4
00370128  06 60 e0 e1                                      mvn r6, r6
0037012c  e1 ff ff 1a                                      bne #0x3700b8
00370130  c0 34 9a e5                                      ldr r3, [sl, #0x4c0]
00370134  03 00 56 e1                                      cmp r6, r3
00370138  3f 00 00 0a                                      beq #0x37023c
0037013c  08 31 9f e5                                      ldr r3, [pc, #0x108]
00370140  20 20 9d e5                                      ldr r2, [sp, #0x20]
00370144  20 00 a0 e3                                      mov r0, #0x20
00370148  03 30 95 e7                                      ldr r3, [r5, r3]
0037014c  00 c0 e0 e3                                      mvn ip, #0
00370150  02 00 56 e1                                      cmp r6, r2
00370154  08 30 83 e2                                      add r3, r3, #8
00370158  00 20 a0 e3                                      mov r2, #0
0037015c  04 00 8d e5                                      str r0, [sp, #4]
00370160  00 10 a0 e3                                      mov r1, #0
00370164  00 00 a0 e3                                      mov r0, #0
00370168  f8 00 cd e1                                      strd r0, r1, [sp, #8]
0037016c  14 c0 8d e5                                      str ip, [sp, #0x14]
00370170  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00370174  00 30 8d e5                                      str r3, [sp]
00370178  10 c0 8d e5                                      str ip, [sp, #0x10]
0037017c  18 20 8d e5                                      str r2, [sp, #0x18]
00370180  0d 40 a0 01                                      moveq r4, sp
00370184  03 00 00 0a                                      beq #0x370198
00370188  0d 00 a0 e1                                      mov r0, sp
0037018c  0d 40 a0 e1                                      mov r4, sp
00370190  20 60 8d e5                                      str r6, [sp, #0x20]
00370194  7a 93 12 eb                                      bl #0x814f84
00370198  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0037019c  20 10 84 e2                                      add r1, r4, #0x20
003701a0  a0 34 9a e5                                      ldr r3, [sl, #0x4a0]
003701a4  02 20 95 e7                                      ldr r2, [r5, r2]
003701a8  4a 0e 8a e2                                      add r0, sl, #0x4a0
003701ac  07 91 a0 e1                                      lsl sb, r7, #2
003701b0  08 20 82 e2                                      add r2, r2, #8
003701b4  00 20 8d e5                                      str r2, [sp]
003701b8  0f e0 a0 e1                                      mov lr, pc
003701bc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003701c0  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003701c4  09 00 a0 e1                                      mov r0, sb
003701c8  00 10 a0 e3                                      mov r1, #0
003701cc  03 30 95 e7                                      ldr r3, [r5, r3]
003701d0  08 30 83 e2                                      add r3, r3, #8
003701d4  00 30 8d e5                                      str r3, [sp]
003701d8  e3 80 fe eb                                      bl #0x31056c
003701dc  00 00 57 e3                                      cmp r7, #0
003701e0  00 40 a0 e1                                      mov r4, r0
003701e4  0e 00 00 da                                      ble #0x370224
003701e8  00 60 a0 e3                                      mov r6, #0
003701ec  06 50 a0 e1                                      mov r5, r6
003701f0  00 b0 e0 e3                                      mvn fp, #0
003701f4  05 10 a0 e1                                      mov r1, r5
003701f8  08 00 a0 e1                                      mov r0, r8
003701fc  0e 3f 02 eb                                      bl #0x3ffe3c
00370200  00 00 50 e3                                      cmp r0, #0
00370204  06 b0 84 07                                      streq fp, [r4, r6]
00370208  01 00 00 0a                                      beq #0x370214
0037020c  fb 26 02 eb                                      bl #0x3f9e00
00370210  06 00 84 e7                                      str r0, [r4, r6]
00370214  01 50 85 e2                                      add r5, r5, #1
00370218  05 00 57 e1                                      cmp r7, r5
0037021c  04 60 86 e2                                      add r6, r6, #4
00370220  f3 ff ff 1a                                      bne #0x3701f4
00370224  3b 0e 8a e2                                      add r0, sl, #0x3b0
00370228  09 20 a0 e1                                      mov r2, sb
0037022c  04 10 a0 e1                                      mov r1, r4
00370230  66 ff ff eb                                      bl #0x36ffd0
00370234  04 00 a0 e1                                      mov r0, r4
00370238  80 80 fe eb                                      bl #0x310440
0037023c  2c d0 8d e2                                      add sp, sp, #0x2c
00370240  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00370244  58 4a 62 00 f4 37 00 00 84 29 00 00 c8 10 00 00  .byte 0x58, 0x4a, 0x62, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
00370254  a8 10 00 00                                      .byte 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00370c9c, declared_size=92, range_size=92, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager24ResetCharacterDeathTimerEv
; demangled: PlayerManager::ResetCharacterDeathTimer()
; decoder-mode: arm
00370c9c  00 10 a0 e3                                      mov r1, #0
00370ca0  70 40 2d e9                                      push {r4, r5, r6, lr}
00370ca4  01 20 a0 e1                                      mov r2, r1
00370ca8  f2 f5 ff eb                                      bl #0x36e478
00370cac  34 40 9f e5                                      ldr r4, [pc, #0x34]
00370cb0  34 30 9f e5                                      ldr r3, [pc, #0x34]
00370cb4  34 10 9f e5                                      ldr r1, [pc, #0x34]
00370cb8  04 40 8f e0                                      add r4, pc, r4
00370cbc  03 30 94 e7                                      ldr r3, [r4, r3]
00370cc0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00370cc4  00 50 a0 e1                                      mov r5, r0
00370cc8  01 10 8f e0                                      add r1, pc, r1
00370ccc  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00370cd0  02 20 8f e0                                      add r2, pc, r2
00370cd4  c0 4f 05 eb                                      bl #0x4c4bdc
00370cd8  00 10 a0 e1                                      mov r1, r0
00370cdc  05 00 a0 e1                                      mov r0, r5
00370ce0  70 40 bd e8                                      pop {r4, r5, r6, lr}
00370ce4  c2 ff ff ea                                      b #0x370bf4
; mapping-symbol data/literal pool
00370ce8  d8 3d 62 00 f4 37 00 00 88 0a 55 00 90 0a 55 00  .byte 0xd8, 0x3d, 0x62, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x88, 0x0a, 0x55, 0x00, 0x90, 0x0a, 0x55, 0x00

; FUNCTION 0x00370e00, declared_size=72, range_size=72, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager16ClearLoadingInfoEv
; demangled: PlayerManager::ClearLoadingInfo()
; decoder-mode: arm
00370e00  70 40 2d e9                                      push {r4, r5, r6, lr}
00370e04  00 40 a0 e1                                      mov r4, r0
00370e08  00 50 a0 e3                                      mov r5, #0
00370e0c  60 32 12 eb                                      bl #0x7fd794
00370e10  00 30 e0 e3                                      mvn r3, #0
00370e14  cc 36 84 e5                                      str r3, [r4, #0x6cc]
00370e18  05 10 a0 e1                                      mov r1, r5
00370e1c  05 20 a0 e1                                      mov r2, r5
00370e20  d0 56 c4 e5                                      strb r5, [r4, #0x6d0]
00370e24  cb 56 c4 e5                                      strb r5, [r4, #0x6cb]
00370e28  10 57 c4 e5                                      strb r5, [r4, #0x710]
00370e2c  1a 57 c4 e5                                      strb r5, [r4, #0x71a]
00370e30  04 00 a0 e1                                      mov r0, r4
00370e34  8f f5 ff eb                                      bl #0x36e478
00370e38  ae ff ff eb                                      bl #0x370cf8
00370e3c  14 57 84 e5                                      str r5, [r4, #0x714]
00370e40  11 57 c4 e5                                      strb r5, [r4, #0x711]
00370e44  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00371050, declared_size=144, range_size=144, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager29_AttachLightToPlayerCharacterEi
; demangled: PlayerManager::_AttachLightToPlayerCharacter(int)
; decoder-mode: arm
00371050  80 30 9f e5                                      ldr r3, [pc, #0x80]
00371054  30 40 2d e9                                      push {r4, r5, lr}
00371058  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0037105c  03 30 8f e0                                      add r3, pc, r3
00371060  0c d0 4d e2                                      sub sp, sp, #0xc
00371064  02 20 93 e7                                      ldr r2, [r3, r2]
00371068  0d 10 a0 e1                                      mov r1, sp
0037106c  00 d0 8d e5                                      str sp, [sp]
00371070  38 00 92 e5                                      ldr r0, [r2, #0x38]
00371074  04 d0 8d e5                                      str sp, [sp, #4]
00371078  0d 50 a0 e1                                      mov r5, sp
0037107c  ba 48 ff eb                                      bl #0x34336c
00371080  00 40 9d e5                                      ldr r4, [sp]
00371084  05 00 00 ea                                      b #0x3710a0
00371088  08 30 94 e5                                      ldr r3, [r4, #8]
0037108c  03 00 a0 e1                                      mov r0, r3
00371090  00 30 93 e5                                      ldr r3, [r3]
00371094  0f e0 a0 e1                                      mov lr, pc
00371098  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0037109c  00 40 94 e5                                      ldr r4, [r4]
003710a0  05 00 54 e1                                      cmp r4, r5
003710a4  f7 ff ff 1a                                      bne #0x371088
003710a8  00 00 9d e5                                      ldr r0, [sp]
003710ac  05 00 50 e1                                      cmp r0, r5
003710b0  01 00 00 1a                                      bne #0x3710bc
003710b4  05 00 00 ea                                      b #0x3710d0
003710b8  04 00 a0 e1                                      mov r0, r4
003710bc  00 40 90 e5                                      ldr r4, [r0]
003710c0  0c 10 a0 e3                                      mov r1, #0xc
003710c4  8d 5f 0e eb                                      bl #0x708f00
003710c8  05 00 54 e1                                      cmp r4, r5
003710cc  f9 ff ff 1a                                      bne #0x3710b8
003710d0  0c d0 8d e2                                      add sp, sp, #0xc
003710d4  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
003710d8  34 3a 62 00 f4 37 00 00                          .byte 0x34, 0x3a, 0x62, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003714ac, declared_size=212, range_size=212, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManagerD1Ev
; demangled: PlayerManager::~PlayerManager()
; decoder-mode: arm
003714ac  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003714b0  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
003714b4  70 40 2d e9                                      push {r4, r5, r6, lr}
003714b8  03 30 8f e0                                      add r3, pc, r3
003714bc  02 20 93 e7                                      ldr r2, [r3, r2]
003714c0  00 40 a0 e1                                      mov r4, r0
003714c4  08 20 82 e2                                      add r2, r2, #8
003714c8  e0 26 80 e4                                      str r2, [r0], #0x6e0
003714cc  3c 95 fe eb                                      bl #0x3169c4
003714d0  b4 06 94 e5                                      ldr r0, [r4, #0x6b4]
003714d4  6b 3e 84 e2                                      add r3, r4, #0x6b0
003714d8  04 30 83 e2                                      add r3, r3, #4
003714dc  00 00 50 e3                                      cmp r0, #0
003714e0  05 00 00 0a                                      beq #0x3714fc
003714e4  08 10 93 e5                                      ldr r1, [r3, #8]
003714e8  01 10 60 e0                                      rsb r1, r0, r1
003714ec  03 10 c1 e3                                      bic r1, r1, #3
003714f0  80 00 51 e3                                      cmp r1, #0x80
003714f4  1d 00 00 8a                                      bhi #0x371570
003714f8  80 5e 0e eb                                      bl #0x708f00
003714fc  a8 06 94 e5                                      ldr r0, [r4, #0x6a8]
00371500  6a 3e 84 e2                                      add r3, r4, #0x6a0
00371504  08 30 83 e2                                      add r3, r3, #8
00371508  00 00 50 e3                                      cmp r0, #0
0037150c  05 00 00 0a                                      beq #0x371528
00371510  08 10 93 e5                                      ldr r1, [r3, #8]
00371514  01 10 60 e0                                      rsb r1, r0, r1
00371518  03 10 c1 e3                                      bic r1, r1, #3
0037151c  80 00 51 e3                                      cmp r1, #0x80
00371520  10 00 00 8a                                      bhi #0x371568
00371524  75 5e 0e eb                                      bl #0x708f00
00371528  a0 36 94 e5                                      ldr r3, [r4, #0x6a0]
0037152c  00 00 53 e3                                      cmp r3, #0
00371530  08 00 00 0a                                      beq #0x371558
00371534  69 5e 84 e2                                      add r5, r4, #0x690
00371538  05 00 a0 e1                                      mov r0, r5
0037153c  94 16 94 e5                                      ldr r1, [r4, #0x694]
00371540  ca ff ff eb                                      bl #0x371470
00371544  00 30 a0 e3                                      mov r3, #0
00371548  9c 56 84 e5                                      str r5, [r4, #0x69c]
0037154c  a0 36 84 e5                                      str r3, [r4, #0x6a0]
00371550  98 56 84 e5                                      str r5, [r4, #0x698]
00371554  94 36 84 e5                                      str r3, [r4, #0x694]
00371558  08 00 84 e2                                      add r0, r4, #8
0037155c  4c ff ff eb                                      bl #0x371294
00371560  04 00 a0 e1                                      mov r0, r4
00371564  70 80 bd e8                                      pop {r4, r5, r6, pc}
00371568  b4 7b fe eb                                      bl #0x310440
0037156c  ed ff ff ea                                      b #0x371528
00371570  b2 7b fe eb                                      bl #0x310440
00371574  e0 ff ff ea                                      b #0x3714fc
; mapping-symbol data/literal pool
00371578  d8 35 62 00 2c 44 00 00                          .byte 0xd8, 0x35, 0x62, 0x00, 0x2c, 0x44, 0x00, 0x00

; FUNCTION 0x00371580, declared_size=28, range_size=28, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManagerD0Ev
; demangled: PlayerManager::~PlayerManager()
; decoder-mode: arm
00371580  10 40 2d e9                                      push {r4, lr}
00371584  00 40 a0 e1                                      mov r4, r0
00371588  c7 ff ff eb                                      bl #0x3714ac
0037158c  04 00 a0 e1                                      mov r0, r4
00371590  aa 7b fe eb                                      bl #0x310440
00371594  04 00 a0 e1                                      mov r0, r4
00371598  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0037159c, declared_size=212, range_size=212, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManagerD2Ev
; demangled: PlayerManager::~PlayerManager()
; decoder-mode: arm
0037159c  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003715a0  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
003715a4  70 40 2d e9                                      push {r4, r5, r6, lr}
003715a8  03 30 8f e0                                      add r3, pc, r3
003715ac  02 20 93 e7                                      ldr r2, [r3, r2]
003715b0  00 40 a0 e1                                      mov r4, r0
003715b4  08 20 82 e2                                      add r2, r2, #8
003715b8  e0 26 80 e4                                      str r2, [r0], #0x6e0
003715bc  00 95 fe eb                                      bl #0x3169c4
003715c0  b4 06 94 e5                                      ldr r0, [r4, #0x6b4]
003715c4  6b 3e 84 e2                                      add r3, r4, #0x6b0
003715c8  04 30 83 e2                                      add r3, r3, #4
003715cc  00 00 50 e3                                      cmp r0, #0
003715d0  05 00 00 0a                                      beq #0x3715ec
003715d4  08 10 93 e5                                      ldr r1, [r3, #8]
003715d8  01 10 60 e0                                      rsb r1, r0, r1
003715dc  03 10 c1 e3                                      bic r1, r1, #3
003715e0  80 00 51 e3                                      cmp r1, #0x80
003715e4  1d 00 00 8a                                      bhi #0x371660
003715e8  44 5e 0e eb                                      bl #0x708f00
003715ec  a8 06 94 e5                                      ldr r0, [r4, #0x6a8]
003715f0  6a 3e 84 e2                                      add r3, r4, #0x6a0
003715f4  08 30 83 e2                                      add r3, r3, #8
003715f8  00 00 50 e3                                      cmp r0, #0
003715fc  05 00 00 0a                                      beq #0x371618
00371600  08 10 93 e5                                      ldr r1, [r3, #8]
00371604  01 10 60 e0                                      rsb r1, r0, r1
00371608  03 10 c1 e3                                      bic r1, r1, #3
0037160c  80 00 51 e3                                      cmp r1, #0x80
00371610  10 00 00 8a                                      bhi #0x371658
00371614  39 5e 0e eb                                      bl #0x708f00
00371618  a0 36 94 e5                                      ldr r3, [r4, #0x6a0]
0037161c  00 00 53 e3                                      cmp r3, #0
00371620  08 00 00 0a                                      beq #0x371648
00371624  69 5e 84 e2                                      add r5, r4, #0x690
00371628  05 00 a0 e1                                      mov r0, r5
0037162c  94 16 94 e5                                      ldr r1, [r4, #0x694]
00371630  8e ff ff eb                                      bl #0x371470
00371634  00 30 a0 e3                                      mov r3, #0
00371638  9c 56 84 e5                                      str r5, [r4, #0x69c]
0037163c  a0 36 84 e5                                      str r3, [r4, #0x6a0]
00371640  98 56 84 e5                                      str r5, [r4, #0x698]
00371644  94 36 84 e5                                      str r3, [r4, #0x694]
00371648  08 00 84 e2                                      add r0, r4, #8
0037164c  10 ff ff eb                                      bl #0x371294
00371650  04 00 a0 e1                                      mov r0, r4
00371654  70 80 bd e8                                      pop {r4, r5, r6, pc}
00371658  78 7b fe eb                                      bl #0x310440
0037165c  ed ff ff ea                                      b #0x371618
00371660  76 7b fe eb                                      bl #0x310440
00371664  e0 ff ff ea                                      b #0x3715ec
; mapping-symbol data/literal pool
00371668  e8 34 62 00 2c 44 00 00                          .byte 0xe8, 0x34, 0x62, 0x00, 0x2c, 0x44, 0x00, 0x00

; FUNCTION 0x0037193c, declared_size=428, range_size=428, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager22_CheckOnlineTransitionEv
; demangled: PlayerManager::_CheckOnlineTransition()
; decoder-mode: arm
0037193c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00371940  ca 66 d0 e5                                      ldrb r6, [r0, #0x6ca]
00371944  94 51 9f e5                                      ldr r5, [pc, #0x194]
00371948  00 40 a0 e1                                      mov r4, r0
0037194c  00 00 56 e3                                      cmp r6, #0
00371950  05 50 8f e0                                      add r5, pc, r5
00371954  0f 00 00 0a                                      beq #0x371998
00371958  8d 2f 12 eb                                      bl #0x7fd794
0037195c  05 30 d0 e5                                      ldrb r3, [r0, #5]
00371960  00 00 53 e3                                      cmp r3, #0
00371964  2c 00 00 1a                                      bne #0x371a1c
00371968  89 2f 12 eb                                      bl #0x7fd794
0037196c  05 30 d0 e5                                      ldrb r3, [r0, #5]
00371970  00 00 53 e3                                      cmp r3, #0
00371974  3c 00 00 1a                                      bne #0x371a6c
00371978  00 30 a0 e3                                      mov r3, #0
0037197c  04 00 a0 e1                                      mov r0, r4
00371980  19 37 c4 e5                                      strb r3, [r4, #0x719]
00371984  ca 36 c4 e5                                      strb r3, [r4, #0x6ca]
00371988  1c fd ff eb                                      bl #0x370e00
0037198c  04 00 a0 e1                                      mov r0, r4
00371990  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00371994  a6 ef ff ea                                      b #0x36d834
00371998  7d 2f 12 eb                                      bl #0x7fd794
0037199c  05 30 d0 e5                                      ldrb r3, [r0, #5]
003719a0  00 00 53 e3                                      cmp r3, #0
003719a4  eb ff ff 0a                                      beq #0x371958
003719a8  3a bd fe eb                                      bl #0x320e98
003719ac  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
003719b0  00 00 53 e3                                      cmp r3, #0
003719b4  e7 ff ff 0a                                      beq #0x371958
003719b8  73 3d 12 eb                                      bl #0x800f8c
003719bc  00 30 90 e5                                      ldr r3, [r0]
003719c0  0f e0 a0 e1                                      mov lr, pc
003719c4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
003719c8  00 00 50 e3                                      cmp r0, #0
003719cc  e1 ff ff 0a                                      beq #0x371958
003719d0  c1 79 12 eb                                      bl #0x8100dc
003719d4  c1 79 12 eb                                      bl #0x8100e0
003719d8  00 00 50 e3                                      cmp r0, #0
003719dc  dd ff ff 0a                                      beq #0x371958
003719e0  a0 36 94 e5                                      ldr r3, [r4, #0x6a0]
003719e4  00 00 53 e3                                      cmp r3, #0
003719e8  da ff ff 0a                                      beq #0x371958
003719ec  69 7e 84 e2                                      add r7, r4, #0x690
003719f0  07 00 a0 e1                                      mov r0, r7
003719f4  94 16 94 e5                                      ldr r1, [r4, #0x694]
003719f8  9c fe ff eb                                      bl #0x371470
003719fc  9c 76 84 e5                                      str r7, [r4, #0x69c]
00371a00  a0 66 84 e5                                      str r6, [r4, #0x6a0]
00371a04  98 76 84 e5                                      str r7, [r4, #0x698]
00371a08  94 66 84 e5                                      str r6, [r4, #0x694]
00371a0c  60 2f 12 eb                                      bl #0x7fd794
00371a10  05 30 d0 e5                                      ldrb r3, [r0, #5]
00371a14  00 00 53 e3                                      cmp r3, #0
00371a18  d2 ff ff 0a                                      beq #0x371968
00371a1c  1d bd fe eb                                      bl #0x320e98
00371a20  34 30 90 e5                                      ldr r3, [r0, #0x34]
00371a24  03 30 43 e2                                      sub r3, r3, #3
00371a28  01 00 53 e3                                      cmp r3, #1
00371a2c  cd ff ff 8a                                      bhi #0x371968
00371a30  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00371a34  03 50 95 e7                                      ldr r5, [r5, r3]
00371a38  05 00 a0 e1                                      mov r0, r5
00371a3c  d4 b6 fe eb                                      bl #0x31f594
00371a40  00 00 50 e3                                      cmp r0, #0
00371a44  c7 ff ff 0a                                      beq #0x371968
00371a48  c9 28 12 eb                                      bl #0x7fbd74
00371a4c  01 10 a0 e3                                      mov r1, #1
00371a50  0f 29 12 eb                                      bl #0x7fbe94
00371a54  00 00 50 e3                                      cmp r0, #0
00371a58  c2 ff ff 1a                                      bne #0x371968
00371a5c  05 00 a0 e1                                      mov r0, r5
00371a60  03 10 a0 e3                                      mov r1, #3
00371a64  e2 e9 fe eb                                      bl #0x32c1f4
00371a68  be ff ff ea                                      b #0x371968
00371a6c  09 bd fe eb                                      bl #0x320e98
00371a70  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
00371a74  00 00 53 e3                                      cmp r3, #0
00371a78  be ff ff 0a                                      beq #0x371978
00371a7c  42 3d 12 eb                                      bl #0x800f8c
00371a80  00 30 90 e5                                      ldr r3, [r0]
00371a84  0f e0 a0 e1                                      mov lr, pc
00371a88  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00371a8c  00 00 50 e3                                      cmp r0, #0
00371a90  b8 ff ff 0a                                      beq #0x371978
00371a94  90 79 12 eb                                      bl #0x8100dc
00371a98  90 79 12 eb                                      bl #0x8100e0
00371a9c  00 00 50 e3                                      cmp r0, #0
00371aa0  b4 ff ff 0a                                      beq #0x371978
00371aa4  01 30 a0 e3                                      mov r3, #1
00371aa8  ca 36 c4 e5                                      strb r3, [r4, #0x6ca]
00371aac  8a 79 12 eb                                      bl #0x8100dc
00371ab0  51 7e 12 eb                                      bl #0x8113fc
00371ab4  00 10 a0 e1                                      mov r1, r0
00371ab8  6a 0e 84 e2                                      add r0, r4, #0x6a0
00371abc  08 00 80 e2                                      add r0, r0, #8
00371ac0  56 ff ff eb                                      bl #0x371820
00371ac4  84 79 12 eb                                      bl #0x8100dc
00371ac8  f6 84 12 eb                                      bl #0x812ea8
00371acc  00 10 a0 e1                                      mov r1, r0
00371ad0  6b 0e 84 e2                                      add r0, r4, #0x6b0
00371ad4  04 00 80 e2                                      add r0, r0, #4
00371ad8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00371adc  4f ff ff ea                                      b #0x371820
; mapping-symbol data/literal pool
00371ae0  40 31 62 00 f4 37 00 00                          .byte 0x40, 0x31, 0x62, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00371d80, declared_size=1080, range_size=1080, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager15RemoveCharacterEP9Character
; demangled: PlayerManager::RemoveCharacter(Character*)
; decoder-mode: arm
00371d80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00371d84  ec 43 9f e5                                      ldr r4, [pc, #0x3ec]
00371d88  ec 63 9f e5                                      ldr r6, [pc, #0x3ec]
00371d8c  99 df 4d e2                                      sub sp, sp, #0x264
00371d90  04 40 8f e0                                      add r4, pc, r4
00371d94  06 30 94 e7                                      ldr r3, [r4, r6]
00371d98  00 50 51 e2                                      subs r5, r1, #0
00371d9c  00 80 a0 e1                                      mov r8, r0
00371da0  00 30 93 e5                                      ldr r3, [r3]
00371da4  5c 32 8d e5                                      str r3, [sp, #0x25c]
00371da8  c6 00 00 0a                                      beq #0x3720c8
00371dac  81 a0 d5 e5                                      ldrb sl, [r5, #0x81]
00371db0  00 00 5a e3                                      cmp sl, #0
00371db4  c3 00 00 1a                                      bne #0x3720c8
00371db8  01 20 a0 e3                                      mov r2, #1
00371dbc  39 f4 ff eb                                      bl #0x36eea8
00371dc0  c4 26 98 e5                                      ldr r2, [r8, #0x6c4]
00371dc4  70 b6 90 e5                                      ldr fp, [r0, #0x670]
00371dc8  00 70 a0 e1                                      mov r7, r0
00371dcc  01 00 7b e3                                      cmn fp, #1
00371dd0  00 b0 a0 13                                      movne fp, #0
00371dd4  01 b0 a0 03                                      moveq fp, #1
00371dd8  00 00 52 e3                                      cmp r2, #0
00371ddc  c0 00 00 da                                      ble #0x3720e4
00371de0  01 20 42 e2                                      sub r2, r2, #1
00371de4  00 30 a0 e3                                      mov r3, #0
00371de8  c4 26 88 e5                                      str r2, [r8, #0x6c4]
00371dec  34 10 8d e2                                      add r1, sp, #0x34
00371df0  01 20 a0 e3                                      mov r2, #1
00371df4  05 00 a0 e1                                      mov r0, r5
00371df8  3c 30 8d e5                                      str r3, [sp, #0x3c]
00371dfc  34 30 8d e5                                      str r3, [sp, #0x34]
00371e00  38 30 8d e5                                      str r3, [sp, #0x38]
00371e04  ea 87 00 eb                                      bl #0x393db4
00371e08  05 00 a0 e1                                      mov r0, r5
00371e0c  00 30 95 e5                                      ldr r3, [r5]
00371e10  0f e0 a0 e1                                      mov lr, pc
00371e14  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00371e18  00 30 95 e5                                      ldr r3, [r5]
00371e1c  00 10 a0 e3                                      mov r1, #0
00371e20  05 00 a0 e1                                      mov r0, r5
00371e24  0f e0 a0 e1                                      mov lr, pc
00371e28  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00371e2c  05 00 a0 e1                                      mov r0, r5
00371e30  63 0b 01 eb                                      bl #0x3b4bc4
00371e34  05 00 a0 e1                                      mov r0, r5
00371e38  8a c8 00 eb                                      bl #0x3a4068
00371e3c  f2 af 85 e2                                      add sl, r5, #0x3c8
00371e40  a4 34 01 e3                                      movw r3, #0x14a4
00371e44  00 90 a0 e3                                      mov sb, #0
00371e48  03 90 85 e7                                      str sb, [r5, r3]
00371e4c  09 20 a0 e1                                      mov r2, sb
00371e50  09 10 a0 e1                                      mov r1, sb
00371e54  0a 00 a0 e1                                      mov r0, sl
00371e58  8c 92 01 eb                                      bl #0x3d6890
00371e5c  0a 00 a0 e1                                      mov r0, sl
00371e60  d7 8a 01 eb                                      bl #0x3d49c4
00371e64  0a 00 a0 e1                                      mov r0, sl
00371e68  4e 90 01 eb                                      bl #0x3d5fa8
00371e6c  09 10 a0 e1                                      mov r1, sb
00371e70  0a 00 a0 e1                                      mov r0, sl
00371e74  10 93 01 eb                                      bl #0x3d6abc
00371e78  05 00 a0 e1                                      mov r0, r5
00371e7c  cc 2f ff eb                                      bl #0x33ddb4
00371e80  f8 32 9f e5                                      ldr r3, [pc, #0x2f8]
00371e84  f8 12 9f e5                                      ldr r1, [pc, #0x2f8]
00371e88  44 90 8d e2                                      add sb, sp, #0x44
00371e8c  03 a0 94 e7                                      ldr sl, [r4, r3]
00371e90  44 20 95 e5                                      ldr r2, [r5, #0x44]
00371e94  01 10 8f e0                                      add r1, pc, r1
00371e98  00 30 9a e5                                      ldr r3, [sl]
00371e9c  09 00 a0 e1                                      mov r0, sb
00371ea0  0f 73 fe eb                                      bl #0x30eae4
00371ea4  00 30 9a e5                                      ldr r3, [sl]
00371ea8  05 00 a0 e1                                      mov r0, r5
00371eac  09 10 a0 e1                                      mov r1, sb
00371eb0  01 30 83 e2                                      add r3, r3, #1
00371eb4  00 30 8a e5                                      str r3, [sl]
00371eb8  56 63 ff eb                                      bl #0x34ac18
00371ebc  c4 32 9f e5                                      ldr r3, [pc, #0x2c4]
00371ec0  03 00 94 e7                                      ldr r0, [r4, r3]
00371ec4  b2 b5 fe eb                                      bl #0x31f594
00371ec8  00 50 50 e2                                      subs r5, r0, #0
00371ecc  a6 00 00 0a                                      beq #0x37216c
00371ed0  00 00 5b e3                                      cmp fp, #0
00371ed4  6d 00 00 1a                                      bne #0x372090
00371ed8  6c 36 d7 e5                                      ldrb r3, [r7, #0x66c]
00371edc  00 00 53 e3                                      cmp r3, #0
00371ee0  1b 00 00 0a                                      beq #0x371f54
00371ee4  c4 36 98 e5                                      ldr r3, [r8, #0x6c4]
00371ee8  00 00 53 e3                                      cmp r3, #0
00371eec  14 00 00 da                                      ble #0x371f44
00371ef0  08 00 a0 e1                                      mov r0, r8
00371ef4  0b 10 a0 e1                                      mov r1, fp
00371ef8  01 20 a0 e3                                      mov r2, #1
00371efc  5d f1 ff eb                                      bl #0x36e478
00371f00  60 a6 90 e5                                      ldr sl, [r0, #0x660]
00371f04  00 00 5a e3                                      cmp sl, #0
00371f08  8e 00 00 0a                                      beq #0x372148
00371f0c  28 01 95 e5                                      ldr r0, [r5, #0x128]
00371f10  00 00 50 e3                                      cmp r0, #0
00371f14  07 00 00 0a                                      beq #0x371f38
00371f18  0a 10 a0 e1                                      mov r1, sl
00371f1c  00 20 a0 e3                                      mov r2, #0
00371f20  a7 7e 02 eb                                      bl #0x4119c4
00371f24  28 31 95 e5                                      ldr r3, [r5, #0x128]
00371f28  03 00 a0 e1                                      mov r0, r3
00371f2c  00 30 93 e5                                      ldr r3, [r3]
00371f30  0f e0 a0 e1                                      mov lr, pc
00371f34  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00371f38  c4 36 98 e5                                      ldr r3, [r8, #0x6c4]
00371f3c  01 00 53 e3                                      cmp r3, #1
00371f40  7d 00 00 0a                                      beq #0x37213c
00371f44  05 00 a0 e1                                      mov r0, r5
00371f48  01 10 a0 e3                                      mov r1, #1
00371f4c  04 20 a0 e3                                      mov r2, #4
00371f50  ca f4 01 eb                                      bl #0x3ef280
00371f54  c9 36 d8 e5                                      ldrb r3, [r8, #0x6c9]
00371f58  2c 12 9f e5                                      ldr r1, [pc, #0x22c]
00371f5c  b6 24 a0 e3                                      mov r2, #0xb6000000
00371f60  00 00 53 e3                                      cmp r3, #0
00371f64  60 36 87 05                                      streq r3, [r7, #0x660]
00371f68  00 30 a0 e3                                      mov r3, #0
00371f6c  84 36 87 e5                                      str r3, [r7, #0x684]
00371f70  28 00 9d e5                                      ldr r0, [sp, #0x28]
00371f74  01 10 94 e7                                      ldr r1, [r4, r1]
00371f78  c2 2a a0 e1                                      asr r2, r2, #0x15
00371f7c  00 80 a0 e3                                      mov r8, #0
00371f80  00 90 a0 e3                                      mov sb, #0
00371f84  26 ce 8d e2                                      add ip, sp, #0x260
00371f88  03 00 50 e1                                      cmp r0, r3
00371f8c  08 10 81 e2                                      add r1, r1, #8
00371f90  00 00 e0 e3                                      mvn r0, #0
00371f94  f2 80 8c e1                                      strd r8, sb, [ip, r2]
00371f98  20 20 a0 e3                                      mov r2, #0x20
00371f9c  0c 20 8d e5                                      str r2, [sp, #0xc]
00371fa0  1c 00 8d e5                                      str r0, [sp, #0x1c]
00371fa4  08 10 8d e5                                      str r1, [sp, #8]
00371fa8  18 00 8d e5                                      str r0, [sp, #0x18]
00371fac  20 30 8d e5                                      str r3, [sp, #0x20]
00371fb0  24 30 cd e5                                      strb r3, [sp, #0x24]
00371fb4  08 50 8d 02                                      addeq r5, sp, #8
00371fb8  03 00 00 0a                                      beq #0x371fcc
00371fbc  08 50 8d e2                                      add r5, sp, #8
00371fc0  05 00 a0 e1                                      mov r0, r5
00371fc4  28 30 8d e5                                      str r3, [sp, #0x28]
00371fc8  ed 8b 12 eb                                      bl #0x814f84
00371fcc  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
00371fd0  20 10 85 e2                                      add r1, r5, #0x20
00371fd4  4a 0e 87 e2                                      add r0, r7, #0x4a0
00371fd8  03 30 94 e7                                      ldr r3, [r4, r3]
00371fdc  08 30 83 e2                                      add r3, r3, #8
00371fe0  08 30 8d e5                                      str r3, [sp, #8]
00371fe4  a0 34 97 e5                                      ldr r3, [r7, #0x4a0]
00371fe8  0f e0 a0 e1                                      mov lr, pc
00371fec  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00371ff0  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
00371ff4  07 00 a0 e1                                      mov r0, r7
00371ff8  03 30 94 e7                                      ldr r3, [r4, r3]
00371ffc  08 30 83 e2                                      add r3, r3, #8
00372000  08 30 8d e5                                      str r3, [sp, #8]
00372004  00 30 97 e5                                      ldr r3, [r7]
00372008  0f e0 a0 e1                                      mov lr, pc
0037200c  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00372010  00 00 50 e3                                      cmp r0, #0
00372014  1d 00 00 0a                                      beq #0x372090
00372018  07 00 a0 e1                                      mov r0, r7
0037201c  00 10 e0 e3                                      mvn r1, #0
00372020  b2 fb ff eb                                      bl #0x370ef0
00372024  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
00372028  91 5f 8d e2                                      add r5, sp, #0x244
0037202c  40 20 8d e2                                      add r2, sp, #0x40
00372030  01 10 8f e0                                      add r1, pc, r1
00372034  05 00 a0 e1                                      mov r0, r5
00372038  2b 88 fe eb                                      bl #0x3140ec
0037203c  05 10 a0 e1                                      mov r1, r5
00372040  07 00 a0 e1                                      mov r0, r7
00372044  20 ff ff eb                                      bl #0x371ccc
00372048  05 00 a0 e1                                      mov r0, r5
0037204c  80 98 fe eb                                      bl #0x318254
00372050  07 00 a0 e1                                      mov r0, r7
00372054  00 10 e0 e3                                      mvn r1, #0
00372058  7a fb ff eb                                      bl #0x370e48
0037205c  00 10 a0 e3                                      mov r1, #0
00372060  01 20 a0 e1                                      mov r2, r1
00372064  3b 0e 87 e2                                      add r0, r7, #0x3b0
00372068  d8 f7 ff eb                                      bl #0x36ffd0
0037206c  07 00 a0 e1                                      mov r0, r7
00372070  00 10 a0 e3                                      mov r1, #0
00372074  37 f7 ff eb                                      bl #0x36fd58
00372078  07 00 a0 e1                                      mov r0, r7
0037207c  00 10 a0 e3                                      mov r1, #0
00372080  5f f7 ff eb                                      bl #0x36fe04
00372084  07 00 a0 e1                                      mov r0, r7
00372088  00 10 a0 e3                                      mov r1, #0
0037208c  82 fa ff eb                                      bl #0x370a9c
00372090  7d ea 02 eb                                      bl #0x42ca8c
00372094  bc ea 02 eb                                      bl #0x42cb8c
00372098  00 00 50 e3                                      cmp r0, #0
0037209c  09 00 00 0a                                      beq #0x3720c8
003720a0  79 ea 02 eb                                      bl #0x42ca8c
003720a4  b8 ea 02 eb                                      bl #0x42cb8c
003720a8  ec 10 9f e5                                      ldr r1, [pc, #0xec]
003720ac  ec 20 9f e5                                      ldr r2, [pc, #0xec]
003720b0  00 c0 a0 e3                                      mov ip, #0
003720b4  01 10 8f e0                                      add r1, pc, r1
003720b8  02 20 8f e0                                      add r2, pc, r2
003720bc  0c 30 a0 e1                                      mov r3, ip
003720c0  00 c0 8d e5                                      str ip, [sp]
003720c4  c7 ed 10 eb                                      bl #0x7ad7e8
003720c8  06 30 94 e7                                      ldr r3, [r4, r6]
003720cc  5c 22 9d e5                                      ldr r2, [sp, #0x25c]
003720d0  00 30 93 e5                                      ldr r3, [r3]
003720d4  03 00 52 e1                                      cmp r2, r3
003720d8  22 00 00 1a                                      bne #0x372168
003720dc  99 df 8d e2                                      add sp, sp, #0x264
003720e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003720e4  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
003720e8  03 30 94 e7                                      ldr r3, [r4, r3]
003720ec  00 30 93 e5                                      ldr r3, [r3]
003720f0  02 00 53 e3                                      cmp r3, #2
003720f4  00 a0 8a 05                                      streq sl, [sl]
003720f8  38 ff ff 0a                                      beq #0x371de0
003720fc  01 00 53 e3                                      cmp r3, #1
00372100  36 ff ff 1a                                      bne #0x371de0
00372104  9c 00 9f e5                                      ldr r0, [pc, #0x9c]
00372108  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0037210c  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
00372110  00 00 94 e7                                      ldr r0, [r4, r0]
00372114  98 30 9f e5                                      ldr r3, [pc, #0x98]
00372118  02 20 8f e0                                      add r2, pc, r2
0037211c  df c4 00 e3                                      movw ip, #0x4df
00372120  01 10 8f e0                                      add r1, pc, r1
00372124  a8 00 80 e2                                      add r0, r0, #0xa8
00372128  03 30 8f e0                                      add r3, pc, r3
0037212c  00 c0 8d e5                                      str ip, [sp]
00372130  b3 6f fe eb                                      bl #0x30e004
00372134  c4 26 98 e5                                      ldr r2, [r8, #0x6c4]
00372138  28 ff ff ea                                      b #0x371de0
0037213c  0a 00 a0 e1                                      mov r0, sl
00372140  9f 0a 01 eb                                      bl #0x3b4bc4
00372144  7e ff ff ea                                      b #0x371f44
00372148  0b 10 a0 e1                                      mov r1, fp
0037214c  08 00 a0 e1                                      mov r0, r8
00372150  0b 20 a0 e1                                      mov r2, fp
00372154  7a f1 ff eb                                      bl #0x36e744
00372158  60 a6 90 e5                                      ldr sl, [r0, #0x660]
0037215c  00 00 5a e3                                      cmp sl, #0
00372160  77 ff ff 0a                                      beq #0x371f44
00372164  68 ff ff ea                                      b #0x371f0c
00372168  68 70 fe eb                                      bl #0x30e310
0037216c  00 00 5b e3                                      cmp fp, #0
00372170  c6 ff ff 1a                                      bne #0x372090
00372174  76 ff ff ea                                      b #0x371f54
; mapping-symbol data/literal pool
00372178  00 2d 62 00 ac 40 00 00 2c 2d 00 00 04 f9 54 00  .byte 0x00, 0x2d, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x2d, 0x00, 0x00, 0x04, 0xf9, 0x54, 0x00
00372188  f4 37 00 00 84 29 00 00 c8 10 00 00 a8 10 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
00372198  d8 97 55 00 f4 f6 54 00 00 f7 54 00 c0 39 00 00  .byte 0xd8, 0x97, 0x55, 0x00, 0xf4, 0xf6, 0x54, 0x00, 0x00, 0xf7, 0x54, 0x00, 0xc0, 0x39, 0x00, 0x00
003721a8  c0 19 00 00 b8 c2 54 00 60 f6 54 00 c8 f5 54 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xb8, 0xc2, 0x54, 0x00, 0x60, 0xf6, 0x54, 0x00, 0xc8, 0xf5, 0x54, 0x00

; FUNCTION 0x003721b8, declared_size=104, range_size=104, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager19RemoveAllCharactersEv
; demangled: PlayerManager::RemoveAllCharacters()
; decoder-mode: arm
003721b8  70 40 2d e9                                      push {r4, r5, r6, lr}
003721bc  00 50 a0 e1                                      mov r5, r0
003721c0  00 40 a0 e3                                      mov r4, #0
003721c4  05 00 a0 e1                                      mov r0, r5
003721c8  76 ed ff eb                                      bl #0x36d7a8
003721cc  00 00 54 e1                                      cmp r4, r0
003721d0  04 10 a0 e1                                      mov r1, r4
003721d4  00 20 a0 e3                                      mov r2, #0
003721d8  05 00 a0 e1                                      mov r0, r5
003721dc  0d 00 00 aa                                      bge #0x372218
003721e0  57 f1 ff eb                                      bl #0x36e744
003721e4  60 16 90 e5                                      ldr r1, [r0, #0x660]
003721e8  01 40 84 e2                                      add r4, r4, #1
003721ec  05 00 a0 e1                                      mov r0, r5
003721f0  00 00 51 e3                                      cmp r1, #0
003721f4  f2 ff ff 0a                                      beq #0x3721c4
003721f8  e0 fe ff eb                                      bl #0x371d80
003721fc  05 00 a0 e1                                      mov r0, r5
00372200  68 ed ff eb                                      bl #0x36d7a8
00372204  00 00 54 e1                                      cmp r4, r0
00372208  04 10 a0 e1                                      mov r1, r4
0037220c  00 20 a0 e3                                      mov r2, #0
00372210  05 00 a0 e1                                      mov r0, r5
00372214  f1 ff ff ba                                      blt #0x3721e0
00372218  c4 26 85 e5                                      str r2, [r5, #0x6c4]
0037221c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00372220, declared_size=1180, range_size=1180, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager13_AddCharacterEi
; demangled: PlayerManager::_AddCharacter(int)
; decoder-mode: arm
00372220  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00372224  5c 44 9f e5                                      ldr r4, [pc, #0x45c]
00372228  5c 74 9f e5                                      ldr r7, [pc, #0x45c]
0037222c  93 df 4d e2                                      sub sp, sp, #0x24c
00372230  04 40 8f e0                                      add r4, pc, r4
00372234  07 30 94 e7                                      ldr r3, [r4, r7]
00372238  00 20 a0 e3                                      mov r2, #0
0037223c  00 b0 a0 e1                                      mov fp, r0
00372240  00 30 93 e5                                      ldr r3, [r3]
00372244  08 10 8d e5                                      str r1, [sp, #8]
00372248  44 32 8d e5                                      str r3, [sp, #0x244]
0037224c  57 ef ff eb                                      bl #0x36dfb0
00372250  80 33 90 e5                                      ldr r3, [r0, #0x380]
00372254  00 60 a0 e1                                      mov r6, r0
00372258  60 26 90 e5                                      ldr r2, [r0, #0x660]
0037225c  01 00 73 e3                                      cmn r3, #1
00372260  01 00 00 0a                                      beq #0x37226c
00372264  00 00 52 e3                                      cmp r2, #0
00372268  06 00 00 0a                                      beq #0x372288
0037226c  07 30 94 e7                                      ldr r3, [r4, r7]
00372270  44 22 9d e5                                      ldr r2, [sp, #0x244]
00372274  00 30 93 e5                                      ldr r3, [r3]
00372278  03 00 52 e1                                      cmp r2, r3
0037227c  00 01 00 1a                                      bne #0x372684
00372280  93 df 8d e2                                      add sp, sp, #0x24c
00372284  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00372288  00 24 9f e5                                      ldr r2, [pc, #0x400]
0037228c  00 14 9f e5                                      ldr r1, [pc, #0x400]
00372290  24 50 8d e2                                      add r5, sp, #0x24
00372294  0c 20 8d e5                                      str r2, [sp, #0xc]
00372298  01 10 8f e0                                      add r1, pc, r1
0037229c  08 20 9d e5                                      ldr r2, [sp, #8]
003722a0  05 00 a0 e1                                      mov r0, r5
003722a4  0e 72 fe eb                                      bl #0x30eae4
003722a8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003722ac  14 80 8d e2                                      add r8, sp, #0x14
003722b0  01 c0 a0 e3                                      mov ip, #1
003722b4  02 30 94 e7                                      ldr r3, [r4, r2]
003722b8  d8 23 9f e5                                      ldr r2, [pc, #0x3d8]
003722bc  08 00 a0 e1                                      mov r0, r8
003722c0  38 10 93 e5                                      ldr r1, [r3, #0x38]
003722c4  02 20 8f e0                                      add r2, pc, r2
003722c8  05 30 a0 e1                                      mov r3, r5
003722cc  04 c0 8d e5                                      str ip, [sp, #4]
003722d0  00 c0 8d e5                                      str ip, [sp]
003722d4  12 65 ff eb                                      bl #0x34b724
003722d8  08 00 a0 e1                                      mov r0, r8
003722dc  1c 37 ff eb                                      bl #0x33ff54
003722e0  00 50 50 e2                                      subs r5, r0, #0
003722e4  c4 00 00 0a                                      beq #0x3725fc
003722e8  05 00 a0 e1                                      mov r0, r5
003722ec  60 56 86 e5                                      str r5, [r6, #0x660]
003722f0  ee 04 01 eb                                      bl #0x3b36b0
003722f4  00 30 96 e5                                      ldr r3, [r6]
003722f8  06 00 a0 e1                                      mov r0, r6
003722fc  0f e0 a0 e1                                      mov lr, pc
00372300  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00372304  00 00 50 e3                                      cmp r0, #0
00372308  75 00 00 1a                                      bne #0x3724e4
0037230c  05 00 a0 e1                                      mov r0, r5
00372310  80 13 96 e5                                      ldr r1, [r6, #0x380]
00372314  3e 25 01 eb                                      bl #0x3bb814
00372318  74 26 96 e5                                      ldr r2, [r6, #0x674]
0037231c  88 3f 01 e3                                      movw r3, #0x1f88
00372320  03 20 85 e7                                      str r2, [r5, r3]
00372324  70 26 96 e5                                      ldr r2, [r6, #0x670]
00372328  8c 3f 01 e3                                      movw r3, #0x1f8c
0037232c  03 20 85 e7                                      str r2, [r5, r3]
00372330  17 2d 12 eb                                      bl #0x7fd794
00372334  05 30 d0 e5                                      ldrb r3, [r0, #5]
00372338  00 00 53 e3                                      cmp r3, #0
0037233c  75 00 00 1a                                      bne #0x372518
00372340  05 00 a0 e1                                      mov r0, r5
00372344  a9 04 01 eb                                      bl #0x3b35f0
00372348  00 30 96 e5                                      ldr r3, [r6]
0037234c  06 00 a0 e1                                      mov r0, r6
00372350  0f e0 a0 e1                                      mov lr, pc
00372354  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00372358  00 00 50 e3                                      cmp r0, #0
0037235c  64 00 00 1a                                      bne #0x3724f4
00372360  4f 0e 85 e2                                      add r0, r5, #0x4f0
00372364  0c 00 80 e2                                      add r0, r0, #0xc
00372368  00 10 a0 e3                                      mov r1, #0
0037236c  20 a0 8d e2                                      add sl, sp, #0x20
00372370  a2 3d 01 eb                                      bl #0x3c1a00
00372374  f6 0f 86 e2                                      add r0, r6, #0x3d8
00372378  0a 10 a0 e1                                      mov r1, sl
0037237c  03 20 a0 e3                                      mov r2, #3
00372380  ea ec ff eb                                      bl #0x36d730
00372384  00 80 a0 e3                                      mov r8, #0
00372388  00 90 e0 e3                                      mvn sb, #0
0037238c  d8 20 9a e1                                      ldrsb r2, [sl, r8]
00372390  08 10 a0 e1                                      mov r1, r8
00372394  05 00 a0 e1                                      mov r0, r5
00372398  01 00 72 e3                                      cmn r2, #1
0037239c  08 90 ca b7                                      strblt sb, [sl, r8]
003723a0  00 20 e0 b3                                      mvnlt r2, #0
003723a4  01 80 88 e2                                      add r8, r8, #1
003723a8  a9 26 01 eb                                      bl #0x3bbe54
003723ac  03 00 58 e3                                      cmp r8, #3
003723b0  f5 ff ff 1a                                      bne #0x37238c
003723b4  e8 34 01 e3                                      movw r3, #0x14e8
003723b8  03 30 95 e7                                      ldr r3, [r5, r3]
003723bc  00 00 53 e3                                      cmp r3, #0
003723c0  0b 00 00 0a                                      beq #0x3723f4
003723c4  84 30 93 e5                                      ldr r3, [r3, #0x84]
003723c8  1e 00 53 e3                                      cmp r3, #0x1e
003723cc  08 00 00 9a                                      bls #0x3723f4
003723d0  c4 32 9f e5                                      ldr r3, [pc, #0x2c4]
003723d4  03 30 94 e7                                      ldr r3, [r4, r3]
003723d8  00 30 93 e5                                      ldr r3, [r3]
003723dc  02 00 53 e3                                      cmp r3, #2
003723e0  00 30 a0 03                                      moveq r3, #0
003723e4  00 30 83 05                                      streq r3, [r3]
003723e8  01 00 00 0a                                      beq #0x3723f4
003723ec  01 00 53 e3                                      cmp r3, #1
003723f0  96 00 00 0a                                      beq #0x372650
003723f4  89 9f 8d e2                                      add sb, sp, #0x224
003723f8  01 0b 86 e2                                      add r0, r6, #0x400
003723fc  09 10 a0 e1                                      mov r1, sb
00372400  1e 20 a0 e3                                      mov r2, #0x1e
00372404  d8 ec ff eb                                      bl #0x36d76c
00372408  00 80 a0 e3                                      mov r8, #0
0037240c  e8 a4 01 e3                                      movw sl, #0x14e8
00372410  0a 30 95 e7                                      ldr r3, [r5, sl]
00372414  00 00 53 e3                                      cmp r3, #0
00372418  08 00 00 0a                                      beq #0x372440
0037241c  84 30 93 e5                                      ldr r3, [r3, #0x84]
00372420  08 00 53 e1                                      cmp r3, r8
00372424  05 00 00 9a                                      bls #0x372440
00372428  d8 20 99 e1                                      ldrsb r2, [sb, r8]
0037242c  00 00 52 e3                                      cmp r2, #0
00372430  02 00 00 ba                                      blt #0x372440
00372434  05 00 a0 e1                                      mov r0, r5
00372438  08 10 a0 e1                                      mov r1, r8
0037243c  9e 26 01 eb                                      bl #0x3bbebc
00372440  01 80 88 e2                                      add r8, r8, #1
00372444  1e 00 58 e3                                      cmp r8, #0x1e
00372448  f0 ff ff 1a                                      bne #0x372410
0037244c  00 30 96 e5                                      ldr r3, [r6]
00372450  06 00 a0 e1                                      mov r0, r6
00372454  0f e0 a0 e1                                      mov lr, pc
00372458  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0037245c  00 00 50 e3                                      cmp r0, #0
00372460  01 10 a0 13                                      movne r1, #1
00372464  e5 14 d6 05                                      ldrbeq r1, [r6, #0x4e5]
00372468  00 30 95 e5                                      ldr r3, [r5]
0037246c  05 00 a0 e1                                      mov r0, r5
00372470  0f e0 a0 e1                                      mov lr, pc
00372474  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00372478  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0037247c  03 00 94 e7                                      ldr r0, [r4, r3]
00372480  43 b4 fe eb                                      bl #0x31f594
00372484  00 00 50 e3                                      cmp r0, #0
00372488  01 00 00 0a                                      beq #0x372494
0037248c  00 10 a0 e3                                      mov r1, #0
00372490  41 f8 01 eb                                      bl #0x3f059c
00372494  c4 36 9b e5                                      ldr r3, [fp, #0x6c4]
00372498  01 30 83 e2                                      add r3, r3, #1
0037249c  c4 36 8b e5                                      str r3, [fp, #0x6c4]
003724a0  bb 2c 12 eb                                      bl #0x7fd794
003724a4  05 30 d0 e5                                      ldrb r3, [r0, #5]
003724a8  00 00 53 e3                                      cmp r3, #0
003724ac  47 00 00 1a                                      bne #0x3725d0
003724b0  0b 00 a0 e1                                      mov r0, fp
003724b4  08 10 9d e5                                      ldr r1, [sp, #8]
003724b8  07 f3 ff eb                                      bl #0x36f0dc
003724bc  06 00 a0 e1                                      mov r0, r6
003724c0  00 30 96 e5                                      ldr r3, [r6]
003724c4  0f e0 a0 e1                                      mov lr, pc
003724c8  50 f0 93 e5                                      ldr pc, [r3, #0x50]
003724cc  00 00 50 e3                                      cmp r0, #0
003724d0  65 ff ff 0a                                      beq #0x37226c
003724d4  0b 00 a0 e1                                      mov r0, fp
003724d8  08 10 9d e5                                      ldr r1, [sp, #8]
003724dc  db fa ff eb                                      bl #0x371050
003724e0  61 ff ff ea                                      b #0x37226c
003724e4  05 00 a0 e1                                      mov r0, r5
003724e8  64 16 96 e5                                      ldr r1, [r6, #0x664]
003724ec  93 24 01 eb                                      bl #0x3bb740
003724f0  88 ff ff ea                                      b #0x372318
003724f4  00 30 96 e5                                      ldr r3, [r6]
003724f8  06 00 a0 e1                                      mov r0, r6
003724fc  0f e0 a0 e1                                      mov lr, pc
00372500  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00372504  00 00 50 e3                                      cmp r0, #0
00372508  94 ff ff 0a                                      beq #0x372360
0037250c  05 00 a0 e1                                      mov r0, r5
00372510  ab 09 01 eb                                      bl #0x3b4bc4
00372514  91 ff ff ea                                      b #0x372360
00372518  06 00 a0 e1                                      mov r0, r6
0037251c  46 73 12 eb                                      bl #0x80f23c
00372520  00 00 50 e3                                      cmp r0, #0
00372524  85 ff ff 1a                                      bne #0x372340
00372528  0b 00 a0 e1                                      mov r0, fp
0037252c  da ee ff eb                                      bl #0x36e09c
00372530  60 86 90 e5                                      ldr r8, [r0, #0x660]
00372534  00 00 58 e3                                      cmp r8, #0
00372538  80 ff ff 0a                                      beq #0x372340
0037253c  01 20 a0 e3                                      mov r2, #1
00372540  16 1e 88 e2                                      add r1, r8, #0x160
00372544  05 00 a0 e1                                      mov r0, r5
00372548  19 86 00 eb                                      bl #0x393db4
0037254c  05 00 a0 e1                                      mov r0, r5
00372550  5b 1f 88 e2                                      add r1, r8, #0x16c
00372554  d1 84 00 eb                                      bl #0x3938a0
00372558  51 1d 88 e2                                      add r1, r8, #0x1440
0037255c  05 00 a0 e1                                      mov r0, r5
00372560  10 10 81 e2                                      add r1, r1, #0x10
00372564  e2 cc 00 eb                                      bl #0x3a58f4
00372568  5c 14 01 e3                                      movw r1, #0x145c
0037256c  01 00 98 e7                                      ldr r0, [r8, r1]
00372570  60 24 01 e3                                      movw r2, #0x1460
00372574  64 34 01 e3                                      movw r3, #0x1464
00372578  01 00 85 e7                                      str r0, [r5, r1]
0037257c  02 10 98 e7                                      ldr r1, [r8, r2]
00372580  02 10 85 e7                                      str r1, [r5, r2]
00372584  03 20 98 e7                                      ldr r2, [r8, r3]
00372588  03 20 85 e7                                      str r2, [r5, r3]
0037258c  f4 02 98 e5                                      ldr r0, [r8, #0x2f4]
00372590  00 00 50 e3                                      cmp r0, #0
00372594  03 00 00 0a                                      beq #0x3725a8
00372598  05 10 a0 e1                                      mov r1, r5
0037259c  3b 91 00 eb                                      bl #0x396a90
003725a0  00 00 50 e3                                      cmp r0, #0
003725a4  65 ff ff 1a                                      bne #0x372340
003725a8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003725ac  05 10 a0 e1                                      mov r1, r5
003725b0  02 30 94 e7                                      ldr r3, [r4, r2]
003725b4  38 00 93 e5                                      ldr r0, [r3, #0x38]
003725b8  f1 46 ff eb                                      bl #0x344184
003725bc  01 30 a0 e3                                      mov r3, #1
003725c0  ef 32 c5 e5                                      strb r3, [r5, #0x2ef]
003725c4  05 00 a0 e1                                      mov r0, r5
003725c8  50 68 00 eb                                      bl #0x38c710
003725cc  5b ff ff ea                                      b #0x372340
003725d0  0b 00 a0 e1                                      mov r0, fp
003725d4  08 10 9d e5                                      ldr r1, [sp, #8]
003725d8  01 20 a0 e3                                      mov r2, #1
003725dc  73 ee ff eb                                      bl #0x36dfb0
003725e0  60 36 90 e5                                      ldr r3, [r0, #0x660]
003725e4  03 00 55 e1                                      cmp r5, r3
003725e8  b0 ff ff 0a                                      beq #0x3724b0
003725ec  0b 00 a0 e1                                      mov r0, fp
003725f0  05 10 a0 e1                                      mov r1, r5
003725f4  e1 fd ff eb                                      bl #0x371d80
003725f8  1b ff ff ea                                      b #0x37226c
003725fc  98 30 9f e5                                      ldr r3, [pc, #0x98]
00372600  03 30 94 e7                                      ldr r3, [r4, r3]
00372604  00 30 93 e5                                      ldr r3, [r3]
00372608  02 00 53 e3                                      cmp r3, #2
0037260c  00 50 85 05                                      streq r5, [r5]
00372610  34 ff ff 0a                                      beq #0x3722e8
00372614  01 00 53 e3                                      cmp r3, #1
00372618  32 ff ff 1a                                      bne #0x3722e8
0037261c  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
00372620  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00372624  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00372628  00 00 94 e7                                      ldr r0, [r4, r0]
0037262c  78 30 9f e5                                      ldr r3, [pc, #0x78]
00372630  64 c4 00 e3                                      movw ip, #0x464
00372634  01 10 8f e0                                      add r1, pc, r1
00372638  02 20 8f e0                                      add r2, pc, r2
0037263c  03 30 8f e0                                      add r3, pc, r3
00372640  a8 00 80 e2                                      add r0, r0, #0xa8
00372644  00 c0 8d e5                                      str ip, [sp]
00372648  6d 6e fe eb                                      bl #0x30e004
0037264c  25 ff ff ea                                      b #0x3722e8
00372650  48 00 9f e5                                      ldr r0, [pc, #0x48]
00372654  54 10 9f e5                                      ldr r1, [pc, #0x54]
00372658  54 20 9f e5                                      ldr r2, [pc, #0x54]
0037265c  00 00 94 e7                                      ldr r0, [r4, r0]
00372660  50 30 9f e5                                      ldr r3, [pc, #0x50]
00372664  a4 c4 00 e3                                      movw ip, #0x4a4
00372668  01 10 8f e0                                      add r1, pc, r1
0037266c  02 20 8f e0                                      add r2, pc, r2
00372670  03 30 8f e0                                      add r3, pc, r3
00372674  a8 00 80 e2                                      add r0, r0, #0xa8
00372678  00 c0 8d e5                                      str ip, [sp]
0037267c  60 6e fe eb                                      bl #0x30e004
00372680  5b ff ff ea                                      b #0x3723f4
00372684  21 6f fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00372688  60 28 62 00 ac 40 00 00 f4 37 00 00 30 f5 54 00  .byte 0x60, 0x28, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x30, 0xf5, 0x54, 0x00
00372698  f4 e1 54 00 c0 39 00 00 c0 19 00 00 a4 bd 54 00  .byte 0xf4, 0xe1, 0x54, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xa4, 0xbd, 0x54, 0x00
003726a8  50 fa 57 00 b4 f0 54 00 70 bd 54 00 74 f1 54 00  .byte 0x50, 0xfa, 0x57, 0x00, 0xb4, 0xf0, 0x54, 0x00, 0x70, 0xbd, 0x54, 0x00, 0x74, 0xf1, 0x54, 0x00
003726b8  80 f0 54 00                                      .byte 0x80, 0xf0, 0x54, 0x00

; FUNCTION 0x003726bc, declared_size=260, range_size=260, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager12RemovePlayerEi
; demangled: PlayerManager::RemovePlayer(int)
; decoder-mode: arm
003726bc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003726c0  0c d0 4d e2                                      sub sp, sp, #0xc
003726c4  00 50 a0 e1                                      mov r5, r0
003726c8  01 40 a0 e1                                      mov r4, r1
003726cc  30 2c 12 eb                                      bl #0x7fd794
003726d0  05 30 d0 e5                                      ldrb r3, [r0, #5]
003726d4  00 00 53 e3                                      cmp r3, #0
003726d8  27 00 00 1a                                      bne #0x37277c
003726dc  05 00 a0 e1                                      mov r0, r5
003726e0  04 10 a0 e1                                      mov r1, r4
003726e4  e5 ea ff eb                                      bl #0x36d280
003726e8  00 00 50 e3                                      cmp r0, #0
003726ec  20 00 00 0a                                      beq #0x372774
003726f0  94 36 95 e5                                      ldr r3, [r5, #0x694]
003726f4  69 6e 85 e2                                      add r6, r5, #0x690
003726f8  06 70 a0 e1                                      mov r7, r6
003726fc  00 00 53 e3                                      cmp r3, #0
00372700  06 10 a0 11                                      movne r1, r6
00372704  01 00 00 1a                                      bne #0x372710
00372708  2a 00 00 ea                                      b #0x3727b8
0037270c  02 30 a0 e1                                      mov r3, r2
00372710  10 20 93 e5                                      ldr r2, [r3, #0x10]
00372714  04 00 52 e1                                      cmp r2, r4
00372718  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
0037271c  08 20 93 a5                                      ldrge r2, [r3, #8]
00372720  01 30 a0 b1                                      movlt r3, r1
00372724  03 10 a0 e1                                      mov r1, r3
00372728  00 00 52 e3                                      cmp r2, #0
0037272c  f6 ff ff 1a                                      bne #0x37270c
00372730  03 00 56 e1                                      cmp r6, r3
00372734  1f 00 00 0a                                      beq #0x3727b8
00372738  10 20 93 e5                                      ldr r2, [r3, #0x10]
0037273c  04 00 52 e1                                      cmp r2, r4
00372740  06 20 a0 c1                                      movgt r2, r6
00372744  03 20 a0 d1                                      movle r2, r3
00372748  06 70 a0 c1                                      movgt r7, r6
0037274c  03 70 a0 d1                                      movle r7, r3
00372750  78 16 92 e5                                      ldr r1, [r2, #0x678]
00372754  05 00 a0 e1                                      mov r0, r5
00372758  88 fd ff eb                                      bl #0x371d80
0037275c  08 10 8d e2                                      add r1, sp, #8
00372760  04 70 21 e5                                      str r7, [r1, #-4]!
00372764  06 00 a0 e1                                      mov r0, r6
00372768  2e fb ff eb                                      bl #0x371428
0037276c  05 00 a0 e1                                      mov r0, r5
00372770  65 f1 ff eb                                      bl #0x36ed0c
00372774  0c d0 8d e2                                      add sp, sp, #0xc
00372778  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0037277c  c5 b9 fe eb                                      bl #0x320e98
00372780  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
00372784  00 00 53 e3                                      cmp r3, #0
00372788  d3 ff ff 0a                                      beq #0x3726dc
0037278c  fe 39 12 eb                                      bl #0x800f8c
00372790  00 30 90 e5                                      ldr r3, [r0]
00372794  0f e0 a0 e1                                      mov lr, pc
00372798  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0037279c  00 00 50 e3                                      cmp r0, #0
003727a0  cd ff ff 0a                                      beq #0x3726dc
003727a4  4c 76 12 eb                                      bl #0x8100dc
003727a8  4c 76 12 eb                                      bl #0x8100e0
003727ac  00 00 50 e3                                      cmp r0, #0
003727b0  ed ff ff 1a                                      bne #0x37276c
003727b4  c8 ff ff ea                                      b #0x3726dc
003727b8  06 20 a0 e1                                      mov r2, r6
003727bc  e3 ff ff ea                                      b #0x372750

; FUNCTION 0x003727c0, declared_size=76, range_size=76, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager16RemoveAllPlayersEv
; demangled: PlayerManager::RemoveAllPlayers()
; decoder-mode: arm
003727c0  70 40 2d e9                                      push {r4, r5, r6, lr}
003727c4  00 50 a0 e1                                      mov r5, r0
003727c8  f6 eb ff eb                                      bl #0x36d7a8
003727cc  00 60 50 e2                                      subs r6, r0, #0
003727d0  0a 00 00 da                                      ble #0x372800
003727d4  00 40 a0 e3                                      mov r4, #0
003727d8  00 10 a0 e3                                      mov r1, #0
003727dc  01 20 a0 e1                                      mov r2, r1
003727e0  05 00 a0 e1                                      mov r0, r5
003727e4  72 ef ff eb                                      bl #0x36e5b4
003727e8  01 40 84 e2                                      add r4, r4, #1
003727ec  00 10 a0 e1                                      mov r1, r0
003727f0  05 00 a0 e1                                      mov r0, r5
003727f4  b0 ff ff eb                                      bl #0x3726bc
003727f8  06 00 54 e1                                      cmp r4, r6
003727fc  f5 ff ff 1a                                      bne #0x3727d8
00372800  00 30 a0 e3                                      mov r3, #0
00372804  c4 36 85 e5                                      str r3, [r5, #0x6c4]
00372808  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0037280c, declared_size=5072, range_size=5072, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager17_ManageCharactersEv
; demangled: PlayerManager::_ManageCharacters()
; decoder-mode: arm
0037280c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00372810  ac 8e 9f e5                                      ldr r8, [pc, #0xeac]
00372814  ac 1e 9f e5                                      ldr r1, [pc, #0xeac]
00372818  ac 2e 9f e5                                      ldr r2, [pc, #0xeac]
0037281c  08 80 8f e0                                      add r8, pc, r8
00372820  01 30 98 e7                                      ldr r3, [r8, r1]
00372824  75 df 4d e2                                      sub sp, sp, #0x1d4
00372828  00 70 a0 e1                                      mov r7, r0
0037282c  00 30 93 e5                                      ldr r3, [r3]
00372830  02 00 98 e7                                      ldr r0, [r8, r2]
00372834  1c 10 8d e5                                      str r1, [sp, #0x1c]
00372838  18 20 8d e5                                      str r2, [sp, #0x18]
0037283c  cc 31 8d e5                                      str r3, [sp, #0x1cc]
00372840  53 b3 fe eb                                      bl #0x31f594
00372844  24 00 8d e5                                      str r0, [sp, #0x24]
00372848  07 00 a0 e1                                      mov r0, r7
0037284c  d5 eb ff eb                                      bl #0x36d7a8
00372850  00 b0 50 e2                                      subs fp, r0, #0
00372854  8e 04 00 da                                      ble #0x373a94
00372858  70 3e 9f e5                                      ldr r3, [pc, #0xe70]
0037285c  70 ee 9f e5                                      ldr lr, [pc, #0xe70]
00372860  00 00 a0 e3                                      mov r0, #0
00372864  03 30 8f e0                                      add r3, pc, r3
00372868  30 30 8d e5                                      str r3, [sp, #0x30]
0037286c  64 3e 9f e5                                      ldr r3, [pc, #0xe64]
00372870  01 10 a0 e3                                      mov r1, #1
00372874  2c e0 8d e5                                      str lr, [sp, #0x2c]
00372878  03 30 8f e0                                      add r3, pc, r3
0037287c  34 30 8d e5                                      str r3, [sp, #0x34]
00372880  54 3e 9f e5                                      ldr r3, [pc, #0xe54]
00372884  20 00 8d e5                                      str r0, [sp, #0x20]
00372888  00 60 a0 e1                                      mov r6, r0
0037288c  03 30 8f e0                                      add r3, pc, r3
00372890  38 30 8d e5                                      str r3, [sp, #0x38]
00372894  44 3e 9f e5                                      ldr r3, [pc, #0xe44]
00372898  0c 00 8d e5                                      str r0, [sp, #0xc]
0037289c  10 10 8d e5                                      str r1, [sp, #0x10]
003728a0  03 30 8f e0                                      add r3, pc, r3
003728a4  3c 30 8d e5                                      str r3, [sp, #0x3c]
003728a8  06 10 a0 e1                                      mov r1, r6
003728ac  00 20 a0 e3                                      mov r2, #0
003728b0  07 00 a0 e1                                      mov r0, r7
003728b4  a2 ef ff eb                                      bl #0x36e744
003728b8  00 30 90 e5                                      ldr r3, [r0]
003728bc  00 40 a0 e1                                      mov r4, r0
003728c0  60 56 90 e5                                      ldr r5, [r0, #0x660]
003728c4  0f e0 a0 e1                                      mov lr, pc
003728c8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
003728cc  00 00 50 e3                                      cmp r0, #0
003728d0  7a 01 00 0a                                      beq #0x372ec0
003728d4  6c 36 d4 e5                                      ldrb r3, [r4, #0x66c]
003728d8  00 00 53 e3                                      cmp r3, #0
003728dc  9b 01 00 0a                                      beq #0x372f50
003728e0  64 a6 94 e5                                      ldr sl, [r4, #0x664]
003728e4  01 00 7a e3                                      cmn sl, #1
003728e8  9f 00 00 0a                                      beq #0x372b6c
003728ec  80 96 94 e5                                      ldr sb, [r4, #0x680]
003728f0  00 00 59 e3                                      cmp sb, #0
003728f4  37 04 00 0a                                      beq #0x3739d8
003728f8  02 e5 fe eb                                      bl #0x32bd08
003728fc  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
00372900  00 00 53 e3                                      cmp r3, #0
00372904  a0 01 00 0a                                      beq #0x372f8c
00372908  6d 2f 8d e2                                      add r2, sp, #0x1b4
0037290c  02 00 a0 e1                                      mov r0, r2
00372910  2d 1e 84 e2                                      add r1, r4, #0x2d0
00372914  14 20 8d e5                                      str r2, [sp, #0x14]
00372918  fe e3 fe eb                                      bl #0x32b918
0037291c  f9 e4 fe eb                                      bl #0x32bd08
00372920  67 af 8d e2                                      add sl, sp, #0x19c
00372924  00 10 a0 e1                                      mov r1, r0
00372928  0a 00 a0 e1                                      mov r0, sl
0037292c  30 9b 04 eb                                      bl #0x4995f4
00372930  c8 01 9d e5                                      ldr r0, [sp, #0x1c8]
00372934  b0 11 9d e5                                      ldr r1, [sp, #0x1b0]
00372938  c4 21 9d e5                                      ldr r2, [sp, #0x1c4]
0037293c  ac 31 9d e5                                      ldr r3, [sp, #0x1ac]
00372940  02 20 60 e0                                      rsb r2, r0, r2
00372944  03 30 61 e0                                      rsb r3, r1, r3
00372948  03 00 52 e1                                      cmp r2, r3
0037294c  31 03 00 0a                                      beq #0x373618
00372950  0a 00 a0 e1                                      mov r0, sl
00372954  3e 96 fe eb                                      bl #0x318254
00372958  14 00 9d e5                                      ldr r0, [sp, #0x14]
0037295c  3c 96 fe eb                                      bl #0x318254
00372960  e8 e4 fe eb                                      bl #0x32bd08
00372964  61 af 8d e2                                      add sl, sp, #0x184
00372968  00 10 a0 e1                                      mov r1, r0
0037296c  0a 00 a0 e1                                      mov r0, sl
00372970  1f 9b 04 eb                                      bl #0x4995f4
00372974  04 00 a0 e1                                      mov r0, r4
00372978  0a 10 a0 e1                                      mov r1, sl
0037297c  d2 fc ff eb                                      bl #0x371ccc
00372980  0a 00 a0 e1                                      mov r0, sl
00372984  32 96 fe eb                                      bl #0x318254
00372988  00 00 55 e3                                      cmp r5, #0
0037298c  a5 01 00 0a                                      beq #0x373028
00372990  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00372994  0c 00 98 e7                                      ldr r0, [r8, ip]
00372998  fd b2 fe eb                                      bl #0x31f594
0037299c  00 a0 50 e2                                      subs sl, r0, #0
003729a0  03 00 00 0a                                      beq #0x3729b4
003729a4  30 31 9a e5                                      ldr r3, [sl, #0x130]
003729a8  26 00 53 e3                                      cmp r3, #0x26
003729ac  44 31 da 05                                      ldrbeq r3, [sl, #0x144]
003729b0  00 00 00 0a                                      beq #0x3729b8
003729b4  00 30 a0 e3                                      mov r3, #0
003729b8  e5 24 d4 e5                                      ldrb r2, [r4, #0x4e5]
003729bc  03 00 52 e1                                      cmp r2, r3
003729c0  2c 00 00 0a                                      beq #0x372a78
003729c4  18 cd 9f e5                                      ldr ip, [pc, #0xd18]
003729c8  a5 10 dd e5                                      ldrb r1, [sp, #0xa5]
003729cc  0b 22 a0 e3                                      mov r2, #0xb0000000
003729d0  0c c0 98 e7                                      ldr ip, [r8, ip]
003729d4  03 00 51 e1                                      cmp r1, r3
003729d8  42 2b a0 e1                                      asr r2, r2, #0x16
003729dc  00 00 a0 e3                                      mov r0, #0
003729e0  00 10 a0 e3                                      mov r1, #0
003729e4  1d ee 8d e2                                      add lr, sp, #0x1d0
003729e8  00 90 e0 e3                                      mvn sb, #0
003729ec  f2 00 8e e1                                      strd r0, r1, [lr, r2]
003729f0  08 c0 8c e2                                      add ip, ip, #8
003729f4  01 20 a0 e3                                      mov r2, #1
003729f8  00 00 a0 e3                                      mov r0, #0
003729fc  00 10 a0 e3                                      mov r1, #0
00372a00  9c 90 8d e5                                      str sb, [sp, #0x9c]
00372a04  98 90 8d e5                                      str sb, [sp, #0x98]
00372a08  8c 20 8d e5                                      str r2, [sp, #0x8c]
00372a0c  a4 00 cd e5                                      strb r0, [sp, #0xa4]
00372a10  88 c0 8d e5                                      str ip, [sp, #0x88]
00372a14  a0 10 8d e5                                      str r1, [sp, #0xa0]
00372a18  88 90 8d 02                                      addeq sb, sp, #0x88
00372a1c  03 00 00 0a                                      beq #0x372a30
00372a20  88 90 8d e2                                      add sb, sp, #0x88
00372a24  09 00 a0 e1                                      mov r0, sb
00372a28  a5 30 cd e5                                      strb r3, [sp, #0xa5]
00372a2c  54 89 12 eb                                      bl #0x814f84
00372a30  b0 3c 9f e5                                      ldr r3, [pc, #0xcb0]
00372a34  13 0d 84 e2                                      add r0, r4, #0x4c0
00372a38  1d 10 89 e2                                      add r1, sb, #0x1d
00372a3c  03 30 98 e7                                      ldr r3, [r8, r3]
00372a40  08 00 80 e2                                      add r0, r0, #8
00372a44  08 30 83 e2                                      add r3, r3, #8
00372a48  88 30 8d e5                                      str r3, [sp, #0x88]
00372a4c  c8 34 94 e5                                      ldr r3, [r4, #0x4c8]
00372a50  0f e0 a0 e1                                      mov lr, pc
00372a54  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00372a58  8c 3c 9f e5                                      ldr r3, [pc, #0xc8c]
00372a5c  8c 2c 9f e5                                      ldr r2, [pc, #0xc8c]
00372a60  7d 1e a0 e3                                      mov r1, #0x7d0
00372a64  03 30 98 e7                                      ldr r3, [r8, r3]
00372a68  02 20 8f e0                                      add r2, pc, r2
00372a6c  00 10 82 e5                                      str r1, [r2]
00372a70  08 30 83 e2                                      add r3, r3, #8
00372a74  88 30 8d e5                                      str r3, [sp, #0x88]
00372a78  00 00 5a e3                                      cmp sl, #0
00372a7c  03 00 00 0a                                      beq #0x372a90
00372a80  30 a1 9a e5                                      ldr sl, [sl, #0x130]
00372a84  23 00 5a e3                                      cmp sl, #0x23
00372a88  00 a0 a0 d3                                      movle sl, #0
00372a8c  01 a0 a0 c3                                      movgt sl, #1
00372a90  25 35 d4 e5                                      ldrb r3, [r4, #0x525]
00372a94  0a 00 53 e1                                      cmp r3, sl
00372a98  2b 00 00 0a                                      beq #0x372b4c
00372a9c  3c 2b 12 eb                                      bl #0x7fd794
00372aa0  05 30 d0 e5                                      ldrb r3, [r0, #5]
00372aa4  00 00 53 e3                                      cmp r3, #0
00372aa8  cd 02 00 1a                                      bne #0x3735e4
00372aac  30 0c 9f e5                                      ldr r0, [pc, #0xc30]
00372ab0  85 20 dd e5                                      ldrb r2, [sp, #0x85]
00372ab4  2a 33 a0 e3                                      mov r3, #0xa8000000
00372ab8  00 00 98 e7                                      ldr r0, [r8, r0]
00372abc  43 3b a0 e1                                      asr r3, r3, #0x16
00372ac0  00 10 a0 e3                                      mov r1, #0
00372ac4  08 90 80 e2                                      add sb, r0, #8
00372ac8  1d ce 8d e2                                      add ip, sp, #0x1d0
00372acc  00 00 a0 e3                                      mov r0, #0
00372ad0  0a 00 52 e1                                      cmp r2, sl
00372ad4  00 e0 e0 e3                                      mvn lr, #0
00372ad8  00 20 a0 e3                                      mov r2, #0
00372adc  f3 00 8c e1                                      strd r0, r1, [ip, r3]
00372ae0  01 30 a0 e3                                      mov r3, #1
00372ae4  68 90 8d e5                                      str sb, [sp, #0x68]
00372ae8  6c 30 8d e5                                      str r3, [sp, #0x6c]
00372aec  7c e0 8d e5                                      str lr, [sp, #0x7c]
00372af0  84 20 cd e5                                      strb r2, [sp, #0x84]
00372af4  78 e0 8d e5                                      str lr, [sp, #0x78]
00372af8  80 20 8d e5                                      str r2, [sp, #0x80]
00372afc  68 90 8d 02                                      addeq sb, sp, #0x68
00372b00  03 00 00 0a                                      beq #0x372b14
00372b04  68 90 8d e2                                      add sb, sp, #0x68
00372b08  09 00 a0 e1                                      mov r0, sb
00372b0c  85 a0 cd e5                                      strb sl, [sp, #0x85]
00372b10  1b 89 12 eb                                      bl #0x814f84
00372b14  cc 3b 9f e5                                      ldr r3, [pc, #0xbcc]
00372b18  05 0c 84 e2                                      add r0, r4, #0x500
00372b1c  08 00 80 e2                                      add r0, r0, #8
00372b20  03 30 98 e7                                      ldr r3, [r8, r3]
00372b24  1d 10 89 e2                                      add r1, sb, #0x1d
00372b28  08 30 83 e2                                      add r3, r3, #8
00372b2c  68 30 8d e5                                      str r3, [sp, #0x68]
00372b30  08 35 94 e5                                      ldr r3, [r4, #0x508]
00372b34  0f e0 a0 e1                                      mov lr, pc
00372b38  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00372b3c  a8 3b 9f e5                                      ldr r3, [pc, #0xba8]
00372b40  03 30 98 e7                                      ldr r3, [r8, r3]
00372b44  08 30 83 e2                                      add r3, r3, #8
00372b48  68 30 8d e5                                      str r3, [sp, #0x68]
00372b4c  10 2b 12 eb                                      bl #0x7fd794
00372b50  05 30 d0 e5                                      ldrb r3, [r0, #5]
00372b54  00 00 53 e3                                      cmp r3, #0
00372b58  55 01 00 1a                                      bne #0x3730b4
00372b5c  0c 2b 12 eb                                      bl #0x7fd794
00372b60  05 30 d0 e5                                      ldrb r3, [r0, #5]
00372b64  00 00 53 e3                                      cmp r3, #0
00372b68  6c 01 00 1a                                      bne #0x373120
00372b6c  c9 36 d7 e5                                      ldrb r3, [r7, #0x6c9]
00372b70  00 00 53 e3                                      cmp r3, #0
00372b74  c9 00 00 0a                                      beq #0x372ea0
00372b78  00 00 55 e3                                      cmp r5, #0
00372b7c  36 01 00 0a                                      beq #0x37305c
00372b80  03 2b 12 eb                                      bl #0x7fd794
00372b84  05 30 d0 e5                                      ldrb r3, [r0, #5]
00372b88  00 00 53 e3                                      cmp r3, #0
00372b8c  c3 00 00 0a                                      beq #0x372ea0
00372b90  6c 36 d4 e5                                      ldrb r3, [r4, #0x66c]
00372b94  00 00 53 e3                                      cmp r3, #0
00372b98  8b 01 00 0a                                      beq #0x3731cc
00372b9c  04 10 a0 e1                                      mov r1, r4
00372ba0  07 00 a0 e1                                      mov r0, r7
00372ba4  1d f5 ff eb                                      bl #0x370020
00372ba8  9c 13 95 e5                                      ldr r1, [r5, #0x39c]
00372bac  98 34 94 e5                                      ldr r3, [r4, #0x498]
00372bb0  01 00 53 e1                                      cmp r3, r1
00372bb4  01 00 00 0a                                      beq #0x372bc0
00372bb8  04 00 a0 e1                                      mov r0, r4
00372bbc  90 f4 ff eb                                      bl #0x36fe04
00372bc0  df af 85 e2                                      add sl, r5, #0x37c
00372bc4  0a 00 a0 e1                                      mov r0, sl
00372bc8  58 93 94 e5                                      ldr sb, [r4, #0x358]
00372bcc  af 26 02 eb                                      bl #0x3fc690
00372bd0  09 00 50 e1                                      cmp r0, sb
00372bd4  04 00 00 0a                                      beq #0x372bec
00372bd8  0a 00 a0 e1                                      mov r0, sl
00372bdc  ab 26 02 eb                                      bl #0x3fc690
00372be0  00 10 a0 e1                                      mov r1, r0
00372be4  04 00 a0 e1                                      mov r0, r4
00372be8  30 f4 ff eb                                      bl #0x36fcb0
00372bec  56 9e 85 e2                                      add sb, r5, #0x560
00372bf0  09 00 a0 e1                                      mov r0, sb
00372bf4  21 10 a0 e3                                      mov r1, #0x21
00372bf8  00 20 a0 e3                                      mov r2, #0
00372bfc  48 a4 94 e5                                      ldr sl, [r4, #0x448]
00372c00  b6 b2 01 eb                                      bl #0x3df6e0
00372c04  0a 00 50 e1                                      cmp r0, sl
00372c08  06 00 00 0a                                      beq #0x372c28
00372c0c  21 10 a0 e3                                      mov r1, #0x21
00372c10  09 00 a0 e1                                      mov r0, sb
00372c14  00 20 a0 e3                                      mov r2, #0
00372c18  b0 b2 01 eb                                      bl #0x3df6e0
00372c1c  00 10 a0 e1                                      mov r1, r0
00372c20  04 00 a0 e1                                      mov r0, r4
00372c24  4b f4 ff eb                                      bl #0x36fd58
00372c28  09 00 a0 e1                                      mov r0, sb
00372c2c  24 10 a0 e3                                      mov r1, #0x24
00372c30  00 20 a0 e3                                      mov r2, #0
00372c34  70 a4 94 e5                                      ldr sl, [r4, #0x470]
00372c38  a8 b2 01 eb                                      bl #0x3df6e0
00372c3c  0a 00 50 e1                                      cmp r0, sl
00372c40  2c 00 00 0a                                      beq #0x372cf8
00372c44  24 10 a0 e3                                      mov r1, #0x24
00372c48  00 20 a0 e3                                      mov r2, #0
00372c4c  09 00 a0 e1                                      mov r0, sb
00372c50  a2 b2 01 eb                                      bl #0x3df6e0
00372c54  98 ca 9f e5                                      ldr ip, [pc, #0xa98]
00372c58  60 10 9d e5                                      ldr r1, [sp, #0x60]
00372c5c  9e 24 a0 e3                                      mov r2, #0x9e000000
00372c60  0c c0 98 e7                                      ldr ip, [r8, ip]
00372c64  01 00 50 e1                                      cmp r0, r1
00372c68  42 2b a0 e1                                      asr r2, r2, #0x16
00372c6c  00 10 a0 e3                                      mov r1, #0
00372c70  00 30 a0 e1                                      mov r3, r0
00372c74  1d ee 8d e2                                      add lr, sp, #0x1d0
00372c78  00 00 a0 e3                                      mov r0, #0
00372c7c  00 a0 e0 e3                                      mvn sl, #0
00372c80  f2 00 8e e1                                      strd r0, r1, [lr, r2]
00372c84  08 c0 8c e2                                      add ip, ip, #8
00372c88  20 20 a0 e3                                      mov r2, #0x20
00372c8c  00 00 a0 e3                                      mov r0, #0
00372c90  00 10 a0 e3                                      mov r1, #0
00372c94  54 a0 8d e5                                      str sl, [sp, #0x54]
00372c98  50 a0 8d e5                                      str sl, [sp, #0x50]
00372c9c  44 20 8d e5                                      str r2, [sp, #0x44]
00372ca0  5c 00 cd e5                                      strb r0, [sp, #0x5c]
00372ca4  40 c0 8d e5                                      str ip, [sp, #0x40]
00372ca8  58 10 8d e5                                      str r1, [sp, #0x58]
00372cac  40 a0 8d 02                                      addeq sl, sp, #0x40
00372cb0  03 00 00 0a                                      beq #0x372cc4
00372cb4  40 a0 8d e2                                      add sl, sp, #0x40
00372cb8  0a 00 a0 e1                                      mov r0, sl
00372cbc  60 30 8d e5                                      str r3, [sp, #0x60]
00372cc0  af 88 12 eb                                      bl #0x814f84
00372cc4  2c 3a 9f e5                                      ldr r3, [pc, #0xa2c]
00372cc8  20 10 8a e2                                      add r1, sl, #0x20
00372ccc  45 0e 84 e2                                      add r0, r4, #0x450
00372cd0  03 30 98 e7                                      ldr r3, [r8, r3]
00372cd4  08 30 83 e2                                      add r3, r3, #8
00372cd8  40 30 8d e5                                      str r3, [sp, #0x40]
00372cdc  50 34 94 e5                                      ldr r3, [r4, #0x450]
00372ce0  0f e0 a0 e1                                      mov lr, pc
00372ce4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00372ce8  fc 39 9f e5                                      ldr r3, [pc, #0x9fc]
00372cec  03 30 98 e7                                      ldr r3, [r8, r3]
00372cf0  08 30 83 e2                                      add r3, r3, #8
00372cf4  40 30 8d e5                                      str r3, [sp, #0x40]
00372cf8  09 00 a0 e1                                      mov r0, sb
00372cfc  13 10 a0 e3                                      mov r1, #0x13
00372d00  00 20 a0 e3                                      mov r2, #0
00372d04  30 a3 94 e5                                      ldr sl, [r4, #0x330]
00372d08  74 b2 01 eb                                      bl #0x3df6e0
00372d0c  0a 00 50 e1                                      cmp r0, sl
00372d10  06 00 00 0a                                      beq #0x372d30
00372d14  13 10 a0 e3                                      mov r1, #0x13
00372d18  09 00 a0 e1                                      mov r0, sb
00372d1c  00 20 a0 e3                                      mov r2, #0
00372d20  6e b2 01 eb                                      bl #0x3df6e0
00372d24  00 10 a0 e1                                      mov r1, r0
00372d28  04 00 a0 e1                                      mov r0, r4
00372d2c  45 f8 ff eb                                      bl #0x370e48
00372d30  05 00 a0 e1                                      mov r0, r5
00372d34  80 a3 94 e5                                      ldr sl, [r4, #0x380]
00372d38  af 22 01 eb                                      bl #0x3bb7fc
00372d3c  0a 00 50 e1                                      cmp r0, sl
00372d40  04 00 00 0a                                      beq #0x372d58
00372d44  05 00 a0 e1                                      mov r0, r5
00372d48  ab 22 01 eb                                      bl #0x3bb7fc
00372d4c  00 10 a0 e1                                      mov r1, r0
00372d50  04 00 a0 e1                                      mov r0, r4
00372d54  65 f8 ff eb                                      bl #0x370ef0
00372d58  00 10 a0 e3                                      mov r1, #0
00372d5c  05 00 a0 e1                                      mov r0, r5
00372d60  40 24 01 eb                                      bl #0x3bbe68
00372d64  01 10 a0 e3                                      mov r1, #1
00372d68  c4 00 cd e5                                      strb r0, [sp, #0xc4]
00372d6c  05 00 a0 e1                                      mov r0, r5
00372d70  3c 24 01 eb                                      bl #0x3bbe68
00372d74  02 10 a0 e3                                      mov r1, #2
00372d78  c5 00 cd e5                                      strb r0, [sp, #0xc5]
00372d7c  05 00 a0 e1                                      mov r0, r5
00372d80  38 24 01 eb                                      bl #0x3bbe68
00372d84  e8 a4 01 e3                                      movw sl, #0x14e8
00372d88  c6 00 cd e5                                      strb r0, [sp, #0xc6]
00372d8c  c4 10 8d e2                                      add r1, sp, #0xc4
00372d90  f6 0f 84 e2                                      add r0, r4, #0x3d8
00372d94  03 20 a0 e3                                      mov r2, #3
00372d98  2e f5 ff eb                                      bl #0x370258
00372d9c  0a 30 95 e7                                      ldr r3, [r5, sl]
00372da0  00 00 53 e3                                      cmp r3, #0
00372da4  0b 00 00 0a                                      beq #0x372dd8
00372da8  84 20 93 e5                                      ldr r2, [r3, #0x84]
00372dac  1e 00 52 e3                                      cmp r2, #0x1e
00372db0  08 00 00 9a                                      bls #0x372dd8
00372db4  64 29 9f e5                                      ldr r2, [pc, #0x964]
00372db8  02 20 98 e7                                      ldr r2, [r8, r2]
00372dbc  00 20 92 e5                                      ldr r2, [r2]
00372dc0  02 00 52 e3                                      cmp r2, #2
00372dc4  00 20 a0 03                                      moveq r2, #0
00372dc8  00 20 82 05                                      streq r2, [r2]
00372dcc  01 00 00 0a                                      beq #0x372dd8
00372dd0  01 00 52 e3                                      cmp r2, #1
00372dd4  3d 03 00 0a                                      beq #0x373ad0
00372dd8  d4 20 8d e2                                      add r2, sp, #0xd4
00372ddc  28 40 8d e5                                      str r4, [sp, #0x28]
00372de0  00 a0 a0 e3                                      mov sl, #0
00372de4  14 20 8d e5                                      str r2, [sp, #0x14]
00372de8  e8 94 01 e3                                      movw sb, #0x14e8
00372dec  02 40 a0 e1                                      mov r4, r2
00372df0  03 00 00 ea                                      b #0x372e04
00372df4  01 a0 8a e2                                      add sl, sl, #1
00372df8  1e 00 5a e3                                      cmp sl, #0x1e
00372dfc  13 00 00 0a                                      beq #0x372e50
00372e00  09 30 95 e7                                      ldr r3, [r5, sb]
00372e04  00 00 53 e3                                      cmp r3, #0
00372e08  f9 ff ff 0a                                      beq #0x372df4
00372e0c  84 30 93 e5                                      ldr r3, [r3, #0x84]
00372e10  0a 00 53 e1                                      cmp r3, sl
00372e14  f6 ff ff 9a                                      bls #0x372df4
00372e18  05 00 a0 e1                                      mov r0, r5
00372e1c  0a 10 a0 e1                                      mov r1, sl
00372e20  2a 24 01 eb                                      bl #0x3bbed0
00372e24  00 00 50 e3                                      cmp r0, #0
00372e28  00 30 e0 b3                                      mvnlt r3, #0
00372e2c  0a 30 c4 b7                                      strblt r3, [r4, sl]
00372e30  ef ff ff ba                                      blt #0x372df4
00372e34  0a 10 a0 e1                                      mov r1, sl
00372e38  05 00 a0 e1                                      mov r0, r5
00372e3c  23 24 01 eb                                      bl #0x3bbed0
00372e40  0a 00 c4 e7                                      strb r0, [r4, sl]
00372e44  01 a0 8a e2                                      add sl, sl, #1
00372e48  1e 00 5a e3                                      cmp sl, #0x1e
00372e4c  eb ff ff 1a                                      bne #0x372e00
00372e50  28 40 9d e5                                      ldr r4, [sp, #0x28]
00372e54  0a 20 a0 e1                                      mov r2, sl
00372e58  14 10 9d e5                                      ldr r1, [sp, #0x14]
00372e5c  01 0b 84 e2                                      add r0, r4, #0x400
00372e60  10 f5 ff eb                                      bl #0x3702a8
00372e64  13 ad 84 e2                                      add sl, r4, #0x4c0
00372e68  08 a0 8a e2                                      add sl, sl, #8
00372e6c  0a 00 a0 e1                                      mov r0, sl
00372e70  3e 88 12 eb                                      bl #0x814f70
00372e74  00 00 50 e3                                      cmp r0, #0
00372e78  08 00 00 0a                                      beq #0x372ea0
00372e7c  00 30 95 e5                                      ldr r3, [r5]
00372e80  05 00 a0 e1                                      mov r0, r5
00372e84  e5 14 d4 e5                                      ldrb r1, [r4, #0x4e5]
00372e88  0f e0 a0 e1                                      mov lr, pc
00372e8c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00372e90  24 20 9d e5                                      ldr r2, [sp, #0x24]
00372e94  30 31 92 e5                                      ldr r3, [r2, #0x130]
00372e98  26 00 53 e3                                      cmp r3, #0x26
00372e9c  92 02 00 0a                                      beq #0x3738ec
00372ea0  e5 34 d4 e5                                      ldrb r3, [r4, #0x4e5]
00372ea4  10 10 9d e5                                      ldr r1, [sp, #0x10]
00372ea8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00372eac  00 00 53 e3                                      cmp r3, #0
00372eb0  03 10 a0 01                                      moveq r1, r3
00372eb4  01 20 a0 13                                      movne r2, #1
00372eb8  10 10 8d e5                                      str r1, [sp, #0x10]
00372ebc  0c 20 8d e5                                      str r2, [sp, #0xc]
00372ec0  01 60 86 e2                                      add r6, r6, #1
00372ec4  0b 00 56 e1                                      cmp r6, fp
00372ec8  76 fe ff 1a                                      bne #0x3728a8
00372ecc  30 2a 12 eb                                      bl #0x7fd794
00372ed0  05 30 d0 e5                                      ldrb r3, [r0, #5]
00372ed4  00 00 53 e3                                      cmp r3, #0
00372ed8  15 02 00 1a                                      bne #0x373734
00372edc  2c 2a 12 eb                                      bl #0x7fd794
00372ee0  05 30 d0 e5                                      ldrb r3, [r0, #5]
00372ee4  00 00 53 e3                                      cmp r3, #0
00372ee8  ee 00 00 1a                                      bne #0x3732a8
00372eec  00 40 a0 e3                                      mov r4, #0
00372ef0  27 2a 12 eb                                      bl #0x7fd794
00372ef4  05 30 d0 e5                                      ldrb r3, [r0, #5]
00372ef8  00 00 53 e3                                      cmp r3, #0
00372efc  cd 01 00 1a                                      bne #0x373638
00372f00  00 00 54 e3                                      cmp r4, #0
00372f04  e3 01 00 1a                                      bne #0x373698
00372f08  c9 36 d7 e5                                      ldrb r3, [r7, #0x6c9]
00372f0c  00 00 53 e3                                      cmp r3, #0
00372f10  06 00 00 1a                                      bne #0x372f30
00372f14  c4 36 97 e5                                      ldr r3, [r7, #0x6c4]
00372f18  00 00 53 e3                                      cmp r3, #0
00372f1c  03 00 00 da                                      ble #0x372f30
00372f20  07 00 a0 e1                                      mov r0, r7
00372f24  b5 f7 ff eb                                      bl #0x370e00
00372f28  07 00 a0 e1                                      mov r0, r7
00372f2c  a1 fc ff eb                                      bl #0x3721b8
00372f30  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00372f34  cc 21 9d e5                                      ldr r2, [sp, #0x1cc]
00372f38  00 30 98 e7                                      ldr r3, [r8, r0]
00372f3c  00 30 93 e5                                      ldr r3, [r3]
00372f40  03 00 52 e1                                      cmp r2, r3
00372f44  0e 03 00 1a                                      bne #0x373b84
00372f48  75 df 8d e2                                      add sp, sp, #0x1d4
00372f4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00372f50  05 0c 84 e2                                      add r0, r4, #0x500
00372f54  08 00 80 e2                                      add r0, r0, #8
00372f58  04 88 12 eb                                      bl #0x814f70
00372f5c  00 00 50 e3                                      cmp r0, #0
00372f60  01 ff ff 0a                                      beq #0x372b6c
00372f64  25 35 d4 e5                                      ldrb r3, [r4, #0x525]
00372f68  00 00 53 e3                                      cmp r3, #0
00372f6c  fe fe ff 0a                                      beq #0x372b6c
00372f70  07 00 a0 e1                                      mov r0, r7
00372f74  3e f0 ff eb                                      bl #0x36f074
00372f78  20 e0 9d e5                                      ldr lr, [sp, #0x20]
00372f7c  00 00 50 e3                                      cmp r0, #0
00372f80  01 e0 a0 13                                      movne lr, #1
00372f84  20 e0 8d e5                                      str lr, [sp, #0x20]
00372f88  f7 fe ff ea                                      b #0x372b6c
00372f8c  c1 b7 fe eb                                      bl #0x320e98
00372f90  28 30 d0 e5                                      ldrb r3, [r0, #0x28]
00372f94  00 00 53 e3                                      cmp r3, #0
00372f98  77 00 00 0a                                      beq #0x37317c
00372f9c  c2 9d 12 eb                                      bl #0x81a6ac
00372fa0  d4 30 8d e2                                      add r3, sp, #0xd4
00372fa4  04 10 90 e5                                      ldr r1, [r0, #4]
00372fa8  d0 20 8d e2                                      add r2, sp, #0xd0
00372fac  03 00 a0 e1                                      mov r0, r3
00372fb0  5b af 8d e2                                      add sl, sp, #0x16c
00372fb4  14 30 8d e5                                      str r3, [sp, #0x14]
00372fb8  4b 84 fe eb                                      bl #0x3140ec
00372fbc  2d 1e 84 e2                                      add r1, r4, #0x2d0
00372fc0  0a 00 a0 e1                                      mov r0, sl
00372fc4  53 e2 fe eb                                      bl #0x32b918
00372fc8  80 01 9d e5                                      ldr r0, [sp, #0x180]
00372fcc  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
00372fd0  7c 21 9d e5                                      ldr r2, [sp, #0x17c]
00372fd4  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
00372fd8  02 20 60 e0                                      rsb r2, r0, r2
00372fdc  03 30 61 e0                                      rsb r3, r1, r3
00372fe0  03 00 52 e1                                      cmp r2, r3
00372fe4  3a 02 00 0a                                      beq #0x3738d4
00372fe8  0a 00 a0 e1                                      mov r0, sl
00372fec  55 af 8d e2                                      add sl, sp, #0x154
00372ff0  97 94 fe eb                                      bl #0x318254
00372ff4  cc 20 8d e2                                      add r2, sp, #0xcc
00372ff8  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
00372ffc  0a 00 a0 e1                                      mov r0, sl
00373000  39 84 fe eb                                      bl #0x3140ec
00373004  04 00 a0 e1                                      mov r0, r4
00373008  0a 10 a0 e1                                      mov r1, sl
0037300c  2e fb ff eb                                      bl #0x371ccc
00373010  0a 00 a0 e1                                      mov r0, sl
00373014  8e 94 fe eb                                      bl #0x318254
00373018  14 00 9d e5                                      ldr r0, [sp, #0x14]
0037301c  8c 94 fe eb                                      bl #0x318254
00373020  00 00 55 e3                                      cmp r5, #0
00373024  59 fe ff 1a                                      bne #0x372990
00373028  34 10 99 e5                                      ldr r1, [sb, #0x34]
0037302c  80 33 94 e5                                      ldr r3, [r4, #0x380]
00373030  01 00 53 e1                                      cmp r3, r1
00373034  01 00 00 0a                                      beq #0x373040
00373038  04 00 a0 e1                                      mov r0, r4
0037303c  ab f7 ff eb                                      bl #0x370ef0
00373040  30 10 99 e5                                      ldr r1, [sb, #0x30]
00373044  30 33 94 e5                                      ldr r3, [r4, #0x330]
00373048  01 00 53 e1                                      cmp r3, r1
0037304c  4f fe ff 0a                                      beq #0x372990
00373050  04 00 a0 e1                                      mov r0, r4
00373054  7b f7 ff eb                                      bl #0x370e48
00373058  4c fe ff ea                                      b #0x372990
0037305c  24 e0 9d e5                                      ldr lr, [sp, #0x24]
00373060  00 00 5e e3                                      cmp lr, #0
00373064  95 ff ff 0a                                      beq #0x372ec0
00373068  80 33 94 e5                                      ldr r3, [r4, #0x380]
0037306c  01 00 73 e3                                      cmn r3, #1
00373070  92 ff ff 0a                                      beq #0x372ec0
00373074  c6 29 12 eb                                      bl #0x7fd794
00373078  05 30 d0 e5                                      ldrb r3, [r0, #5]
0037307c  00 00 53 e3                                      cmp r3, #0
00373080  77 02 00 1a                                      bne #0x373a64
00373084  70 16 94 e5                                      ldr r1, [r4, #0x670]
00373088  07 00 a0 e1                                      mov r0, r7
0037308c  63 fc ff eb                                      bl #0x372220
00373090  e5 34 d4 e5                                      ldrb r3, [r4, #0x4e5]
00373094  10 10 9d e5                                      ldr r1, [sp, #0x10]
00373098  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0037309c  00 00 53 e3                                      cmp r3, #0
003730a0  03 10 a0 01                                      moveq r1, r3
003730a4  01 20 a0 13                                      movne r2, #1
003730a8  10 10 8d e5                                      str r1, [sp, #0x10]
003730ac  0c 20 8d e5                                      str r2, [sp, #0xc]
003730b0  82 ff ff ea                                      b #0x372ec0
003730b4  77 b7 fe eb                                      bl #0x320e98
003730b8  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
003730bc  00 00 53 e3                                      cmp r3, #0
003730c0  a5 fe ff 0a                                      beq #0x372b5c
003730c4  b0 37 12 eb                                      bl #0x800f8c
003730c8  00 30 90 e5                                      ldr r3, [r0]
003730cc  0f e0 a0 e1                                      mov lr, pc
003730d0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
003730d4  00 00 50 e3                                      cmp r0, #0
003730d8  9f fe ff 0a                                      beq #0x372b5c
003730dc  fe 73 12 eb                                      bl #0x8100dc
003730e0  fe 73 12 eb                                      bl #0x8100e0
003730e4  00 00 50 e3                                      cmp r0, #0
003730e8  9b fe ff 0a                                      beq #0x372b5c
003730ec  25 35 d4 e5                                      ldrb r3, [r4, #0x525]
003730f0  00 00 53 e3                                      cmp r3, #0
003730f4  98 fe ff 1a                                      bne #0x372b5c
003730f8  07 00 a0 e1                                      mov r0, r7
003730fc  e6 eb ff eb                                      bl #0x36e09c
00373100  e5 34 d0 e5                                      ldrb r3, [r0, #0x4e5]
00373104  00 00 53 e3                                      cmp r3, #0
00373108  93 fe ff 0a                                      beq #0x372b5c
0037310c  1a 37 d7 e5                                      ldrb r3, [r7, #0x71a]
00373110  00 00 53 e3                                      cmp r3, #0
00373114  01 30 a0 03                                      moveq r3, #1
00373118  1a 37 c7 05                                      strbeq r3, [r7, #0x71a]
0037311c  8e fe ff ea                                      b #0x372b5c
00373120  5c b7 fe eb                                      bl #0x320e98
00373124  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
00373128  00 00 53 e3                                      cmp r3, #0
0037312c  8e fe ff 0a                                      beq #0x372b6c
00373130  95 37 12 eb                                      bl #0x800f8c
00373134  00 30 90 e5                                      ldr r3, [r0]
00373138  0f e0 a0 e1                                      mov lr, pc
0037313c  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00373140  00 00 50 e3                                      cmp r0, #0
00373144  88 fe ff 0a                                      beq #0x372b6c
00373148  e3 73 12 eb                                      bl #0x8100dc
0037314c  e3 73 12 eb                                      bl #0x8100e0
00373150  00 00 50 e3                                      cmp r0, #0
00373154  84 fe ff 0a                                      beq #0x372b6c
00373158  25 35 d4 e5                                      ldrb r3, [r4, #0x525]
0037315c  00 00 53 e3                                      cmp r3, #0
00373160  81 fe ff 0a                                      beq #0x372b6c
00373164  45 35 d4 e5                                      ldrb r3, [r4, #0x545]
00373168  00 00 53 e3                                      cmp r3, #0
0037316c  7e fe ff 1a                                      bne #0x372b6c
00373170  04 00 a0 e1                                      mov r0, r4
00373174  0e f6 ff eb                                      bl #0x3709b4
00373178  7b fe ff ea                                      b #0x372b6c
0037317c  4f af 8d e2                                      add sl, sp, #0x13c
00373180  2d 1e 84 e2                                      add r1, r4, #0x2d0
00373184  0a 00 a0 e1                                      mov r0, sl
00373188  e2 e1 fe eb                                      bl #0x32b918
0037318c  2c 10 99 e5                                      ldr r1, [sb, #0x2c]
00373190  0a 00 a0 e1                                      mov r0, sl
00373194  ab 82 fe eb                                      bl #0x313c48
00373198  00 30 a0 e1                                      mov r3, r0
0037319c  0a 00 a0 e1                                      mov r0, sl
003731a0  08 30 8d e5                                      str r3, [sp, #8]
003731a4  2a 94 fe eb                                      bl #0x318254
003731a8  08 30 9d e5                                      ldr r3, [sp, #8]
003731ac  00 00 53 e3                                      cmp r3, #0
003731b0  f4 fd ff 1a                                      bne #0x372988
003731b4  49 af 8d e2                                      add sl, sp, #0x124
003731b8  c8 20 8d e2                                      add r2, sp, #0xc8
003731bc  0a 00 a0 e1                                      mov r0, sl
003731c0  2c 10 99 e5                                      ldr r1, [sb, #0x2c]
003731c4  c8 83 fe eb                                      bl #0x3140ec
003731c8  e9 fd ff ea                                      b #0x372974
003731cc  04 10 a0 e1                                      mov r1, r4
003731d0  07 00 a0 e1                                      mov r0, r7
003731d4  9d e9 ff eb                                      bl #0x36d850
003731d8  05 00 a0 e1                                      mov r0, r5
003731dc  81 21 01 eb                                      bl #0x3bb7e8
003731e0  00 00 50 e3                                      cmp r0, #0
003731e4  2d 3e 84 02                                      addeq r3, r4, #0x2d0
003731e8  04 02 00 0a                                      beq #0x373a00
003731ec  2d 3e 84 e2                                      add r3, r4, #0x2d0
003731f0  43 af 8d e2                                      add sl, sp, #0x10c
003731f4  03 10 a0 e1                                      mov r1, r3
003731f8  0a 00 a0 e1                                      mov r0, sl
003731fc  08 30 8d e5                                      str r3, [sp, #8]
00373200  c4 e1 fe eb                                      bl #0x32b918
00373204  05 00 a0 e1                                      mov r0, r5
00373208  76 21 01 eb                                      bl #0x3bb7e8
0037320c  00 10 a0 e1                                      mov r1, r0
00373210  0a 00 a0 e1                                      mov r0, sl
00373214  8b 82 fe eb                                      bl #0x313c48
00373218  00 90 a0 e1                                      mov sb, r0
0037321c  01 90 29 e2                                      eor sb, sb, #1
00373220  0a 00 a0 e1                                      mov r0, sl
00373224  0a 94 fe eb                                      bl #0x318254
00373228  ff 00 19 e3                                      tst sb, #0xff
0037322c  08 30 9d e5                                      ldr r3, [sp, #8]
00373230  f2 01 00 1a                                      bne #0x373a00
00373234  05 00 a0 e1                                      mov r0, r5
00373238  80 a3 94 e5                                      ldr sl, [r4, #0x380]
0037323c  6e 21 01 eb                                      bl #0x3bb7fc
00373240  0a 00 50 e1                                      cmp r0, sl
00373244  2f 00 00 0a                                      beq #0x373308
00373248  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0037324c  0c a0 98 e7                                      ldr sl, [r8, ip]
00373250  0a 00 a0 e1                                      mov r0, sl
00373254  ce b0 fe eb                                      bl #0x31f594
00373258  00 00 50 e3                                      cmp r0, #0
0037325c  29 00 00 0a                                      beq #0x373308
00373260  0a 00 a0 e1                                      mov r0, sl
00373264  ca b0 fe eb                                      bl #0x31f594
00373268  44 31 d0 e5                                      ldrb r3, [r0, #0x144]
0037326c  00 00 53 e3                                      cmp r3, #0
00373270  24 00 00 0a                                      beq #0x373308
00373274  80 a3 94 e5                                      ldr sl, [r4, #0x380]
00373278  56 9e 85 e2                                      add sb, r5, #0x560
0037327c  09 00 a0 e1                                      mov r0, sb
00373280  0a 10 a0 e1                                      mov r1, sl
00373284  72 b5 01 eb                                      bl #0x3e0854
00373288  05 00 a0 e1                                      mov r0, r5
0037328c  0a 10 a0 e1                                      mov r1, sl
00373290  5f 21 01 eb                                      bl #0x3bb814
00373294  f2 0f 85 e2                                      add r0, r5, #0x3c8
00373298  97 96 01 eb                                      bl #0x3d8cfc
0037329c  01 e0 a0 e3                                      mov lr, #1
003732a0  28 e0 8d e5                                      str lr, [sp, #0x28]
003732a4  1a 00 00 ea                                      b #0x373314
003732a8  39 29 12 eb                                      bl #0x7fd794
003732ac  c0 28 12 eb                                      bl #0x7fd5b4
003732b0  00 00 50 e3                                      cmp r0, #0
003732b4  0c ff ff 0a                                      beq #0x372eec
003732b8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003732bc  00 00 50 e3                                      cmp r0, #0
003732c0  09 ff ff 0a                                      beq #0x372eec
003732c4  10 10 9d e5                                      ldr r1, [sp, #0x10]
003732c8  00 00 51 e3                                      cmp r1, #0
003732cc  06 ff ff 1a                                      bne #0x372eec
003732d0  18 20 9d e5                                      ldr r2, [sp, #0x18]
003732d4  20 44 9f e5                                      ldr r4, [pc, #0x420]
003732d8  02 00 98 e7                                      ldr r0, [r8, r2]
003732dc  04 40 8f e0                                      add r4, pc, r4
003732e0  00 50 94 e5                                      ldr r5, [r4]
003732e4  e0 b0 fe eb                                      bl #0x31f66c
003732e8  05 00 60 e0                                      rsb r0, r0, r5
003732ec  00 00 50 e3                                      cmp r0, #0
003732f0  7d 3e a0 d3                                      movle r3, #0x7d0
003732f4  00 00 84 e5                                      str r0, [r4]
003732f8  00 30 84 d5                                      strle r3, [r4]
003732fc  01 40 a0 d3                                      movle r4, #1
00373300  f9 fe ff ca                                      bgt #0x372eec
00373304  f9 fe ff ea                                      b #0x372ef0
00373308  00 c0 a0 e3                                      mov ip, #0
0037330c  28 c0 8d e5                                      str ip, [sp, #0x28]
00373310  56 9e 85 e2                                      add sb, r5, #0x560
00373314  98 14 94 e5                                      ldr r1, [r4, #0x498]
00373318  9c 33 95 e5                                      ldr r3, [r5, #0x39c]
0037331c  03 00 51 e1                                      cmp r1, r3
00373320  df af 85 02                                      addeq sl, r5, #0x37c
00373324  02 00 00 0a                                      beq #0x373334
00373328  df af 85 e2                                      add sl, r5, #0x37c
0037332c  0a 00 a0 e1                                      mov r0, sl
00373330  28 2b 02 eb                                      bl #0x3fdfd8
00373334  58 33 94 e5                                      ldr r3, [r4, #0x358]
00373338  0a 00 a0 e1                                      mov r0, sl
0037333c  08 30 8d e5                                      str r3, [sp, #8]
00373340  d2 24 02 eb                                      bl #0x3fc690
00373344  08 30 9d e5                                      ldr r3, [sp, #8]
00373348  03 00 50 e1                                      cmp r0, r3
0037334c  02 00 00 0a                                      beq #0x37335c
00373350  0a 00 a0 e1                                      mov r0, sl
00373354  58 13 94 e5                                      ldr r1, [r4, #0x358]
00373358  38 32 02 eb                                      bl #0x3ffc40
0037335c  09 00 a0 e1                                      mov r0, sb
00373360  21 10 a0 e3                                      mov r1, #0x21
00373364  00 20 a0 e3                                      mov r2, #0
00373368  48 a4 94 e5                                      ldr sl, [r4, #0x448]
0037336c  db b0 01 eb                                      bl #0x3df6e0
00373370  0a 00 50 e1                                      cmp r0, sl
00373374  03 00 00 0a                                      beq #0x373388
00373378  09 00 a0 e1                                      mov r0, sb
0037337c  21 10 a0 e3                                      mov r1, #0x21
00373380  48 24 94 e5                                      ldr r2, [r4, #0x448]
00373384  1f b5 01 eb                                      bl #0x3e0808
00373388  09 00 a0 e1                                      mov r0, sb
0037338c  24 10 a0 e3                                      mov r1, #0x24
00373390  00 20 a0 e3                                      mov r2, #0
00373394  70 a4 94 e5                                      ldr sl, [r4, #0x470]
00373398  d0 b0 01 eb                                      bl #0x3df6e0
0037339c  0a 00 50 e1                                      cmp r0, sl
003733a0  0b 00 00 0a                                      beq #0x3733d4
003733a4  00 30 95 e5                                      ldr r3, [r5]
003733a8  05 00 a0 e1                                      mov r0, r5
003733ac  0f e0 a0 e1                                      mov lr, pc
003733b0  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003733b4  24 10 a0 e3                                      mov r1, #0x24
003733b8  00 20 a0 e3                                      mov r2, #0
003733bc  09 00 a0 e1                                      mov r0, sb
003733c0  c6 b0 01 eb                                      bl #0x3df6e0
003733c4  09 00 a0 e1                                      mov r0, sb
003733c8  24 10 a0 e3                                      mov r1, #0x24
003733cc  70 24 94 e5                                      ldr r2, [r4, #0x470]
003733d0  0c b5 01 eb                                      bl #0x3e0808
003733d4  60 a6 94 e5                                      ldr sl, [r4, #0x660]
003733d8  05 00 a0 e1                                      mov r0, r5
003733dc  3c 29 9a e5                                      ldr r2, [sl, #0x93c]
003733e0  b8 35 9a e5                                      ldr r3, [sl, #0x5b8]
003733e4  03 30 82 e0                                      add r3, r2, r3
003733e8  43 34 a0 e1                                      asr r3, r3, #8
003733ec  14 30 8d e5                                      str r3, [sp, #0x14]
003733f0  0c 21 01 eb                                      bl #0x3bb828
003733f4  30 13 94 e5                                      ldr r1, [r4, #0x330]
003733f8  00 30 a0 e1                                      mov r3, r0
003733fc  01 00 50 e1                                      cmp r0, r1
00373400  02 00 00 0a                                      beq #0x373410
00373404  05 00 a0 e1                                      mov r0, r5
00373408  0c 21 01 eb                                      bl #0x3bb840
0037340c  30 33 94 e5                                      ldr r3, [r4, #0x330]
00373410  14 00 9d e5                                      ldr r0, [sp, #0x14]
00373414  03 00 50 e1                                      cmp r0, r3
00373418  0a 00 00 0a                                      beq #0x373448
0037341c  b8 25 9a e5                                      ldr r2, [sl, #0x5b8]
00373420  13 10 a0 e3                                      mov r1, #0x13
00373424  09 00 a0 e1                                      mov r0, sb
00373428  03 24 62 e0                                      rsb r2, r2, r3, lsl #8
0037342c  42 24 a0 e1                                      asr r2, r2, #8
00373430  f4 b4 01 eb                                      bl #0x3e0808
00373434  30 23 94 e5                                      ldr r2, [r4, #0x330]
00373438  14 10 9d e5                                      ldr r1, [sp, #0x14]
0037343c  02 20 61 e0                                      rsb r2, r1, r2
00373440  01 00 52 e3                                      cmp r2, #1
00373444  4b 01 00 0a                                      beq #0x373978
00373448  f6 0f 84 e2                                      add r0, r4, #0x3d8
0037344c  c7 86 12 eb                                      bl #0x814f70
00373450  00 00 50 e3                                      cmp r0, #0
00373454  13 01 00 0a                                      beq #0x3738a8
00373458  f8 13 94 e5                                      ldr r1, [r4, #0x3f8]
0037345c  00 00 51 e3                                      cmp r1, #0
00373460  5a 01 00 0a                                      beq #0x3739d0
00373464  fc 23 94 e5                                      ldr r2, [r4, #0x3fc]
00373468  00 00 52 e3                                      cmp r2, #0
0037346c  57 01 00 da                                      ble #0x3739d0
00373470  c4 90 8d e2                                      add sb, sp, #0xc4
00373474  09 00 a0 e1                                      mov r0, sb
00373478  fa 6c fe eb                                      bl #0x30e868
0037347c  00 a0 a0 e3                                      mov sl, #0
00373480  da 20 99 e1                                      ldrsb r2, [sb, sl]
00373484  0a 10 a0 e1                                      mov r1, sl
00373488  05 00 a0 e1                                      mov r0, r5
0037348c  01 00 72 e3                                      cmn r2, #1
00373490  00 e0 e0 b3                                      mvnlt lr, #0
00373494  0a e0 c9 b7                                      strblt lr, [sb, sl]
00373498  00 20 e0 b3                                      mvnlt r2, #0
0037349c  01 a0 8a e2                                      add sl, sl, #1
003734a0  6b 22 01 eb                                      bl #0x3bbe54
003734a4  03 00 5a e3                                      cmp sl, #3
003734a8  f4 ff ff 1a                                      bne #0x373480
003734ac  01 0b 84 e2                                      add r0, r4, #0x400
003734b0  ae 86 12 eb                                      bl #0x814f70
003734b4  00 00 50 e3                                      cmp r0, #0
003734b8  01 01 00 0a                                      beq #0x3738c4
003734bc  e8 34 01 e3                                      movw r3, #0x14e8
003734c0  03 30 95 e7                                      ldr r3, [r5, r3]
003734c4  00 00 53 e3                                      cmp r3, #0
003734c8  0b 00 00 0a                                      beq #0x3734fc
003734cc  84 30 93 e5                                      ldr r3, [r3, #0x84]
003734d0  1e 00 53 e3                                      cmp r3, #0x1e
003734d4  08 00 00 9a                                      bls #0x3734fc
003734d8  40 32 9f e5                                      ldr r3, [pc, #0x240]
003734dc  03 30 98 e7                                      ldr r3, [r8, r3]
003734e0  00 30 93 e5                                      ldr r3, [r3]
003734e4  02 00 53 e3                                      cmp r3, #2
003734e8  00 30 a0 03                                      moveq r3, #0
003734ec  00 30 83 05                                      streq r3, [r3]
003734f0  01 00 00 0a                                      beq #0x3734fc
003734f4  01 00 53 e3                                      cmp r3, #1
003734f8  81 01 00 0a                                      beq #0x373b04
003734fc  20 14 94 e5                                      ldr r1, [r4, #0x420]
00373500  00 00 51 e3                                      cmp r1, #0
00373504  04 00 00 0a                                      beq #0x37351c
00373508  24 24 94 e5                                      ldr r2, [r4, #0x424]
0037350c  00 00 52 e3                                      cmp r2, #0
00373510  01 00 00 da                                      ble #0x37351c
00373514  d4 00 8d e2                                      add r0, sp, #0xd4
00373518  d2 6c fe eb                                      bl #0x30e868
0037351c  00 a0 a0 e3                                      mov sl, #0
00373520  d4 30 8d e2                                      add r3, sp, #0xd4
00373524  14 40 8d e5                                      str r4, [sp, #0x14]
00373528  0a 10 a0 e1                                      mov r1, sl
0037352c  e8 94 01 e3                                      movw sb, #0x14e8
00373530  03 40 a0 e1                                      mov r4, r3
00373534  09 30 95 e7                                      ldr r3, [r5, sb]
00373538  00 00 53 e3                                      cmp r3, #0
0037353c  09 00 00 0a                                      beq #0x373568
00373540  84 30 93 e5                                      ldr r3, [r3, #0x84]
00373544  03 00 5a e1                                      cmp sl, r3
00373548  06 00 00 2a                                      bhs #0x373568
0037354c  da 20 94 e1                                      ldrsb r2, [r4, sl]
00373550  00 00 52 e3                                      cmp r2, #0
00373554  03 00 00 ba                                      blt #0x373568
00373558  0a 10 a0 e1                                      mov r1, sl
0037355c  05 00 a0 e1                                      mov r0, r5
00373560  55 22 01 eb                                      bl #0x3bbebc
00373564  01 10 a0 e3                                      mov r1, #1
00373568  01 a0 8a e2                                      add sl, sl, #1
0037356c  1e 00 5a e3                                      cmp sl, #0x1e
00373570  ef ff ff 1a                                      bne #0x373534
00373574  00 00 51 e3                                      cmp r1, #0
00373578  14 40 9d e5                                      ldr r4, [sp, #0x14]
0037357c  fa 00 00 1a                                      bne #0x37396c
00373580  e5 34 d4 e5                                      ldrb r3, [r4, #0x4e5]
00373584  00 00 53 e3                                      cmp r3, #0
00373588  2c 10 9d 15                                      ldrne r1, [sp, #0x2c]
0037358c  03 90 a0 01                                      moveq sb, r3
00373590  01 20 98 17                                      ldrne r2, [r8, r1]
00373594  30 90 d2 15                                      ldrbne sb, [r2, #0x30]
00373598  80 20 d5 e5                                      ldrb r2, [r5, #0x80]
0037359c  01 90 29 12                                      eorne sb, sb, #1
003735a0  09 00 52 e1                                      cmp r2, sb
003735a4  4f ae 85 12                                      addne sl, r5, #0x4f0
003735a8  0c a0 8a 12                                      addne sl, sl, #0xc
003735ac  1d 01 00 0a                                      beq #0x373a28
003735b0  0a 00 a0 e1                                      mov r0, sl
003735b4  00 10 a0 e3                                      mov r1, #0
003735b8  10 39 01 eb                                      bl #0x3c1a00
003735bc  13 ad 84 e2                                      add sl, r4, #0x4c0
003735c0  05 00 a0 e1                                      mov r0, r5
003735c4  09 10 a0 e1                                      mov r1, sb
003735c8  08 a0 8a e2                                      add sl, sl, #8
003735cc  00 30 95 e5                                      ldr r3, [r5]
003735d0  0f e0 a0 e1                                      mov lr, pc
003735d4  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003735d8  0a 00 a0 e1                                      mov r0, sl
003735dc  63 86 12 eb                                      bl #0x814f70
003735e0  21 fe ff ea                                      b #0x372e6c
003735e4  2b b6 fe eb                                      bl #0x320e98
003735e8  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
003735ec  00 00 53 e3                                      cmp r3, #0
003735f0  2d fd ff 0a                                      beq #0x372aac
003735f4  64 36 12 eb                                      bl #0x800f8c
003735f8  00 30 90 e5                                      ldr r3, [r0]
003735fc  0f e0 a0 e1                                      mov lr, pc
00373600  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00373604  00 00 50 e3                                      cmp r0, #0
00373608  27 fd ff 0a                                      beq #0x372aac
0037360c  b2 72 12 eb                                      bl #0x8100dc
00373610  b2 72 12 eb                                      bl #0x8100e0
00373614  24 fd ff ea                                      b #0x372aac
00373618  f0 6b fe eb                                      bl #0x30e5e0
0037361c  00 00 50 e3                                      cmp r0, #0
00373620  ca fc ff 1a                                      bne #0x372950
00373624  0a 00 a0 e1                                      mov r0, sl
00373628  09 93 fe eb                                      bl #0x318254
0037362c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00373630  07 93 fe eb                                      bl #0x318254
00373634  d3 fc ff ea                                      b #0x372988
00373638  18 30 9d e5                                      ldr r3, [sp, #0x18]
0037363c  03 50 98 e7                                      ldr r5, [r8, r3]
00373640  05 00 a0 e1                                      mov r0, r5
00373644  d2 af fe eb                                      bl #0x31f594
00373648  00 00 50 e3                                      cmp r0, #0
0037364c  2b fe ff 0a                                      beq #0x372f00
00373650  00 10 a0 e3                                      mov r1, #0
00373654  07 00 a0 e1                                      mov r0, r7
00373658  01 20 a0 e1                                      mov r2, r1
0037365c  85 eb ff eb                                      bl #0x36e478
00373660  e5 34 d0 e5                                      ldrb r3, [r0, #0x4e5]
00373664  00 00 53 e3                                      cmp r3, #0
00373668  24 fe ff 1a                                      bne #0x372f00
0037366c  8c 60 9f e5                                      ldr r6, [pc, #0x8c]
00373670  05 00 a0 e1                                      mov r0, r5
00373674  06 60 8f e0                                      add r6, pc, r6
00373678  04 50 96 e5                                      ldr r5, [r6, #4]
0037367c  fa af fe eb                                      bl #0x31f66c
00373680  05 00 60 e0                                      rsb r0, r0, r5
00373684  00 00 50 e3                                      cmp r0, #0
00373688  88 33 01 d3                                      movwle r3, #0x1388
0037368c  04 00 86 e5                                      str r0, [r6, #4]
00373690  04 30 86 d5                                      strle r3, [r6, #4]
00373694  19 fe ff ca                                      bgt #0x372f00
00373698  8f 72 12 eb                                      bl #0x8100dc
0037369c  54 73 12 eb                                      bl #0x8103f4
003736a0  00 10 a0 e3                                      mov r1, #0
003736a4  01 20 a0 e1                                      mov r2, r1
003736a8  07 00 a0 e1                                      mov r0, r7
003736ac  71 eb ff eb                                      bl #0x36e478
003736b0  71 7f 12 eb                                      bl #0x81347c
003736b4  cb 86 12 eb                                      bl #0x8151e8
003736b8  00 30 a0 e3                                      mov r3, #0
003736bc  2c 30 80 e5                                      str r3, [r0, #0x2c]
003736c0  10 fe ff ea                                      b #0x372f08
; mapping-symbol data/literal pool
003736c4  74 22 62 00 ac 40 00 00 f4 37 00 00 44 ef 54 00  .byte 0x74, 0x22, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x44, 0xef, 0x54, 0x00
003736d4  20 1a 00 00 40 ef 54 00 94 ef 54 00 38 bb 54 00  .byte 0x20, 0x1a, 0x00, 0x00, 0x40, 0xef, 0x54, 0x00, 0x94, 0xef, 0x54, 0x00, 0x38, 0xbb, 0x54, 0x00
003736e4  18 30 00 00 c8 0a 00 00 a8 10 00 00 e0 6c 62 00  .byte 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xe0, 0x6c, 0x62, 0x00
003736f4  84 29 00 00 c8 10 00 00 6c 64 62 00 d4 60 62 00  .byte 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00, 0x6c, 0x64, 0x62, 0x00, 0xd4, 0x60, 0x62, 0x00
00373704  3c b6 54 00 08 1b 00 00 f8 dc 54 00 0c dc 54 00  .byte 0x3c, 0xb6, 0x54, 0x00, 0x08, 0x1b, 0x00, 0x00, 0xf8, 0xdc, 0x54, 0x00, 0x0c, 0xdc, 0x54, 0x00
00373714  bc a8 54 00 c0 dc 54 00 cc db 54 00 c0 39 00 00  .byte 0xbc, 0xa8, 0x54, 0x00, 0xc0, 0xdc, 0x54, 0x00, 0xcc, 0xdb, 0x54, 0x00, 0xc0, 0x39, 0x00, 0x00
00373724  c0 19 00 00 18 a8 54 00 6c dc 54 00 28 db 54 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x18, 0xa8, 0x54, 0x00, 0x6c, 0xdc, 0x54, 0x00, 0x28, 0xdb, 0x54, 0x00
; decoder-mode: arm
00373734  d7 b5 fe eb                                      bl #0x320e98
00373738  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0037373c  00 00 53 e3                                      cmp r3, #0
00373740  e5 fd ff 0a                                      beq #0x372edc
00373744  10 36 12 eb                                      bl #0x800f8c
00373748  00 30 90 e5                                      ldr r3, [r0]
0037374c  0f e0 a0 e1                                      mov lr, pc
00373750  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00373754  00 00 50 e3                                      cmp r0, #0
00373758  df fd ff 0a                                      beq #0x372edc
0037375c  5e 72 12 eb                                      bl #0x8100dc
00373760  5e 72 12 eb                                      bl #0x8100e0
00373764  00 00 50 e3                                      cmp r0, #0
00373768  db fd ff 0a                                      beq #0x372edc
0037376c  c9 36 d7 e5                                      ldrb r3, [r7, #0x6c9]
00373770  00 00 53 e3                                      cmp r3, #0
00373774  d8 fd ff 0a                                      beq #0x372edc
00373778  07 00 a0 e1                                      mov r0, r7
0037377c  3c ee ff eb                                      bl #0x36f074
00373780  00 00 50 e3                                      cmp r0, #0
00373784  d4 fd ff 0a                                      beq #0x372edc
00373788  07 00 a0 e1                                      mov r0, r7
0037378c  80 ec ff eb                                      bl #0x36e994
00373790  00 00 50 e3                                      cmp r0, #0
00373794  d0 fd ff 0a                                      beq #0x372edc
00373798  00 10 a0 e3                                      mov r1, #0
0037379c  07 00 a0 e1                                      mov r0, r7
003737a0  01 20 a0 e1                                      mov r2, r1
003737a4  33 eb ff eb                                      bl #0x36e478
003737a8  45 45 d0 e5                                      ldrb r4, [r0, #0x545]
003737ac  00 00 54 e3                                      cmp r4, #0
003737b0  bd 00 00 0a                                      beq #0x373aac
003737b4  00 40 a0 e3                                      mov r4, #0
003737b8  20 30 9d e5                                      ldr r3, [sp, #0x20]
003737bc  00 00 53 e3                                      cmp r3, #0
003737c0  01 00 00 0a                                      beq #0x3737cc
003737c4  00 00 54 e3                                      cmp r4, #0
003737c8  da 00 00 0a                                      beq #0x373b38
003737cc  cb 36 d7 e5                                      ldrb r3, [r7, #0x6cb]
003737d0  00 00 53 e3                                      cmp r3, #0
003737d4  10 00 00 0a                                      beq #0x37381c
003737d8  cc 36 97 e5                                      ldr r3, [r7, #0x6cc]
003737dc  00 00 53 e3                                      cmp r3, #0
003737e0  0d 00 00 da                                      ble #0x37381c
003737e4  07 00 a0 e1                                      mov r0, r7
003737e8  33 ec ff eb                                      bl #0x36e8bc
003737ec  00 00 50 e3                                      cmp r0, #0
003737f0  09 00 00 1a                                      bne #0x37381c
003737f4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
003737f8  cc 56 97 e5                                      ldr r5, [r7, #0x6cc]
003737fc  0c 00 98 e7                                      ldr r0, [r8, ip]
00373800  99 af fe eb                                      bl #0x31f66c
00373804  05 00 60 e0                                      rsb r0, r0, r5
00373808  00 00 50 e3                                      cmp r0, #0
0037380c  00 30 e0 b3                                      mvnlt r3, #0
00373810  cc 06 87 e5                                      str r0, [r7, #0x6cc]
00373814  01 40 a0 b3                                      movlt r4, #1
00373818  cc 36 87 b5                                      strlt r3, [r7, #0x6cc]
0037381c  07 00 a0 e1                                      mov r0, r7
00373820  00 10 a0 e3                                      mov r1, #0
00373824  01 20 a0 e3                                      mov r2, #1
00373828  12 eb ff eb                                      bl #0x36e478
0037382c  60 a6 90 e5                                      ldr sl, [r0, #0x660]
00373830  00 00 5a e3                                      cmp sl, #0
00373834  a8 fd ff 0a                                      beq #0x372edc
00373838  00 00 54 e3                                      cmp r4, #0
0037383c  a6 fd ff 0a                                      beq #0x372edc
00373840  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00373844  0e 30 98 e7                                      ldr r3, [r8, lr]
00373848  38 00 93 e5                                      ldr r0, [r3, #0x38]
0037384c  df 51 ff eb                                      bl #0x347fd0
00373850  0a 00 a0 e1                                      mov r0, sl
00373854  08 22 01 eb                                      bl #0x3bc07c
00373858  57 5e 12 eb                                      bl #0x80b1bc
0037385c  00 90 a0 e1                                      mov sb, r0
00373860  64 01 1f e5                                      ldr r0, [pc, #-0x164]
00373864  01 10 a0 e3                                      mov r1, #1
00373868  68 61 9a e5                                      ldr r6, [sl, #0x168]
0037386c  00 00 8f e0                                      add r0, pc, r0
00373870  60 51 9a e5                                      ldr r5, [sl, #0x160]
00373874  64 41 9a e5                                      ldr r4, [sl, #0x164]
00373878  71 5a 12 eb                                      bl #0x80a244
0037387c  00 10 a0 e1                                      mov r1, r0
00373880  50 50 80 e5                                      str r5, [r0, #0x50]
00373884  54 40 80 e5                                      str r4, [r0, #0x54]
00373888  58 60 80 e5                                      str r6, [r0, #0x58]
0037388c  09 00 a0 e1                                      mov r0, sb
00373890  83 6a 12 eb                                      bl #0x80e2a4
00373894  01 30 a0 e3                                      mov r3, #1
00373898  cb 36 c7 e5                                      strb r3, [r7, #0x6cb]
0037389c  88 33 01 e3                                      movw r3, #0x1388
003738a0  cc 36 87 e5                                      str r3, [r7, #0x6cc]
003738a4  8c fd ff ea                                      b #0x372edc
003738a8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
003738ac  00 00 5c e3                                      cmp ip, #0
003738b0  e8 fe ff 1a                                      bne #0x373458
003738b4  01 0b 84 e2                                      add r0, r4, #0x400
003738b8  ac 85 12 eb                                      bl #0x814f70
003738bc  00 00 50 e3                                      cmp r0, #0
003738c0  fd fe ff 1a                                      bne #0x3734bc
003738c4  28 00 9d e5                                      ldr r0, [sp, #0x28]
003738c8  00 00 50 e3                                      cmp r0, #0
003738cc  2b ff ff 0a                                      beq #0x373580
003738d0  f9 fe ff ea                                      b #0x3734bc
003738d4  41 6b fe eb                                      bl #0x30e5e0
003738d8  00 00 50 e3                                      cmp r0, #0
003738dc  c1 fd ff 1a                                      bne #0x372fe8
003738e0  0a 00 a0 e1                                      mov r0, sl
003738e4  5a 92 fe eb                                      bl #0x318254
003738e8  ca fd ff ea                                      b #0x373018
003738ec  6c 36 d4 e5                                      ldrb r3, [r4, #0x66c]
003738f0  7c 56 94 e5                                      ldr r5, [r4, #0x67c]
003738f4  00 00 53 e3                                      cmp r3, #0
003738f8  04 50 85 02                                      addeq r5, r5, #4
003738fc  62 e4 02 eb                                      bl #0x42ca8c
00373900  a1 e4 02 eb                                      bl #0x42cb8c
00373904  00 30 a0 e3                                      mov r3, #0
00373908  00 a0 a0 e1                                      mov sl, r0
0037390c  ac 30 cd e5                                      strb r3, [sp, #0xac]
00373910  05 00 a0 e1                                      mov r0, r5
00373914  02 30 a0 e3                                      mov r3, #2
00373918  ad 30 cd e5                                      strb r3, [sp, #0xad]
0037391c  03 6d fe eb                                      bl #0x30ed30
00373920  ba 34 a0 e3                                      mov r3, #0xba000000
00373924  1d ce 8d e2                                      add ip, sp, #0x1d0
00373928  43 3b a0 e1                                      asr r3, r3, #0x16
0037392c  f3 00 8c e1                                      strd r0, r1, [ip, r3]
00373930  b8 c0 9d e5                                      ldr ip, [sp, #0xb8]
00373934  ac 50 8d e2                                      add r5, sp, #0xac
00373938  30 10 9d e5                                      ldr r1, [sp, #0x30]
0037393c  b0 c0 8d e5                                      str ip, [sp, #0xb0]
00373940  bc c0 9d e5                                      ldr ip, [sp, #0xbc]
00373944  34 20 9d e5                                      ldr r2, [sp, #0x34]
00373948  0a 00 a0 e1                                      mov r0, sl
0037394c  08 c0 85 e5                                      str ip, [r5, #8]
00373950  05 30 a0 e1                                      mov r3, r5
00373954  01 c0 a0 e3                                      mov ip, #1
00373958  00 c0 8d e5                                      str ip, [sp]
0037395c  a1 e7 10 eb                                      bl #0x7ad7e8
00373960  05 00 a0 e1                                      mov r0, r5
00373964  ee 8d 10 eb                                      bl #0x797124
00373968  4c fd ff ea                                      b #0x372ea0
0037396c  f2 0f 85 e2                                      add r0, r5, #0x3c8
00373970  c7 93 01 eb                                      bl #0x3d8894
00373974  01 ff ff ea                                      b #0x373580
00373978  e5 34 d4 e5                                      ldrb r3, [r4, #0x4e5]
0037397c  00 00 53 e3                                      cmp r3, #0
00373980  b0 fe ff 0a                                      beq #0x373448
00373984  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00373988  38 10 9d e5                                      ldr r1, [sp, #0x38]
0037398c  03 a0 98 e7                                      ldr sl, [r8, r3]
00373990  0a 00 a0 e1                                      mov r0, sl
00373994  15 96 03 eb                                      bl #0x4591f0
00373998  01 00 70 e3                                      cmn r0, #1
0037399c  00 10 a0 e1                                      mov r1, r0
003739a0  03 00 00 0a                                      beq #0x3739b4
003739a4  0a 00 a0 e1                                      mov r0, sl
003739a8  00 20 e0 e3                                      mvn r2, #0
003739ac  00 30 a0 e3                                      mov r3, #0
003739b0  02 b3 03 eb                                      bl #0x4605c0
003739b4  b4 32 1f e5                                      ldr r3, [pc, #-0x2b4]
003739b8  87 10 a0 e3                                      mov r1, #0x87
003739bc  05 20 a0 e1                                      mov r2, r5
003739c0  03 00 98 e7                                      ldr r0, [r8, r3]
003739c4  00 30 a0 e3                                      mov r3, #0
003739c8  4d 89 04 eb                                      bl #0x495f04
003739cc  9d fe ff ea                                      b #0x373448
003739d0  c4 90 8d e2                                      add sb, sp, #0xc4
003739d4  a8 fe ff ea                                      b #0x37347c
003739d8  09 10 a0 e1                                      mov r1, sb
003739dc  66 0f a0 e3                                      mov r0, #0x198
003739e0  e2 72 fe eb                                      bl #0x310570
003739e4  0a 10 a0 e1                                      mov r1, sl
003739e8  00 90 a0 e1                                      mov sb, r0
003739ec  01 20 a0 e3                                      mov r2, #1
003739f0  00 30 a0 e3                                      mov r3, #0
003739f4  ec c6 03 eb                                      bl #0x4655ac
003739f8  80 96 84 e5                                      str sb, [r4, #0x680]
003739fc  bd fb ff ea                                      b #0x3728f8
00373a00  f4 a0 8d e2                                      add sl, sp, #0xf4
00373a04  03 10 a0 e1                                      mov r1, r3
00373a08  0a 00 a0 e1                                      mov r0, sl
00373a0c  c1 df fe eb                                      bl #0x32b918
00373a10  05 00 a0 e1                                      mov r0, r5
00373a14  08 11 9d e5                                      ldr r1, [sp, #0x108]
00373a18  3a 21 01 eb                                      bl #0x3bbf08
00373a1c  0a 00 a0 e1                                      mov r0, sl
00373a20  0b 92 fe eb                                      bl #0x318254
00373a24  02 fe ff ea                                      b #0x373234
00373a28  00 00 53 e3                                      cmp r3, #0
00373a2c  e2 fe ff 0a                                      beq #0x3735bc
00373a30  4f ae 85 e2                                      add sl, r5, #0x4f0
00373a34  0c a0 8a e2                                      add sl, sl, #0xc
00373a38  0a 00 a0 e1                                      mov r0, sl
00373a3c  df 31 01 eb                                      bl #0x3c01c0
00373a40  00 00 50 e3                                      cmp r0, #0
00373a44  dc fe ff 0a                                      beq #0x3735bc
00373a48  00 30 95 e5                                      ldr r3, [r5]
00373a4c  05 00 a0 e1                                      mov r0, r5
00373a50  0f e0 a0 e1                                      mov lr, pc
00373a54  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00373a58  00 00 50 e3                                      cmp r0, #0
00373a5c  d6 fe ff 1a                                      bne #0x3735bc
00373a60  d2 fe ff ea                                      b #0x3735b0
00373a64  04 00 a0 e1                                      mov r0, r4
00373a68  f3 6d 12 eb                                      bl #0x80f23c
00373a6c  00 00 50 e3                                      cmp r0, #0
00373a70  83 fd ff 1a                                      bne #0x373084
00373a74  18 00 9d e5                                      ldr r0, [sp, #0x18]
00373a78  00 30 98 e7                                      ldr r3, [r8, r0]
00373a7c  40 00 93 e5                                      ldr r0, [r3, #0x40]
00373a80  85 e9 ff eb                                      bl #0x36e09c
00373a84  60 36 90 e5                                      ldr r3, [r0, #0x660]
00373a88  00 00 53 e3                                      cmp r3, #0
00373a8c  7c fd ff 1a                                      bne #0x373084
00373a90  0a fd ff ea                                      b #0x372ec0
00373a94  00 30 a0 e3                                      mov r3, #0
00373a98  01 c0 a0 e3                                      mov ip, #1
00373a9c  20 30 8d e5                                      str r3, [sp, #0x20]
00373aa0  0c 30 8d e5                                      str r3, [sp, #0xc]
00373aa4  10 c0 8d e5                                      str ip, [sp, #0x10]
00373aa8  07 fd ff ea                                      b #0x372ecc
00373aac  07 00 a0 e1                                      mov r0, r7
00373ab0  81 eb ff eb                                      bl #0x36e8bc
00373ab4  00 00 50 e3                                      cmp r0, #0
00373ab8  28 00 00 1a                                      bne #0x373b60
00373abc  cb 36 d7 e5                                      ldrb r3, [r7, #0x6cb]
00373ac0  00 00 53 e3                                      cmp r3, #0
00373ac4  01 40 a0 03                                      moveq r4, #1
00373ac8  3a ff ff 0a                                      beq #0x3737b8
00373acc  38 ff ff ea                                      b #0x3737b4
00373ad0  b4 03 1f e5                                      ldr r0, [pc, #-0x3b4]
00373ad4  d0 23 1f e5                                      ldr r2, [pc, #-0x3d0]
00373ad8  d0 33 1f e5                                      ldr r3, [pc, #-0x3d0]
00373adc  00 00 98 e7                                      ldr r0, [r8, r0]
00373ae0  ee c2 00 e3                                      movw ip, #0x2ee
00373ae4  03 30 8f e0                                      add r3, pc, r3
00373ae8  02 20 8f e0                                      add r2, pc, r2
00373aec  a8 00 80 e2                                      add r0, r0, #0xa8
00373af0  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00373af4  00 c0 8d e5                                      str ip, [sp]
00373af8  41 69 fe eb                                      bl #0x30e004
00373afc  0a 30 95 e7                                      ldr r3, [r5, sl]
00373b00  b4 fc ff ea                                      b #0x372dd8
00373b04  e8 03 1f e5                                      ldr r0, [pc, #-0x3e8]
00373b08  fc 13 1f e5                                      ldr r1, [pc, #-0x3fc]
00373b0c  fc 23 1f e5                                      ldr r2, [pc, #-0x3fc]
00373b10  00 00 98 e7                                      ldr r0, [r8, r0]
00373b14  00 34 1f e5                                      ldr r3, [pc, #-0x400]
00373b18  37 ce a0 e3                                      mov ip, #0x370
00373b1c  01 10 8f e0                                      add r1, pc, r1
00373b20  02 20 8f e0                                      add r2, pc, r2
00373b24  03 30 8f e0                                      add r3, pc, r3
00373b28  a8 00 80 e2                                      add r0, r0, #0xa8
00373b2c  00 c0 8d e5                                      str ip, [sp]
00373b30  33 69 fe eb                                      bl #0x30e004
00373b34  70 fe ff ea                                      b #0x3734fc
00373b38  cb 46 c7 e5                                      strb r4, [r7, #0x6cb]
00373b3c  07 00 a0 e1                                      mov r0, r7
00373b40  55 e9 ff eb                                      bl #0x36e09c
00373b44  60 36 90 e5                                      ldr r3, [r0, #0x660]
00373b48  00 00 53 e3                                      cmp r3, #0
00373b4c  0d 00 00 0a                                      beq #0x373b88
00373b50  07 00 a0 e1                                      mov r0, r7
00373b54  50 e9 ff eb                                      bl #0x36e09c
00373b58  01 40 a0 e3                                      mov r4, #1
00373b5c  1a ff ff ea                                      b #0x3737cc
00373b60  04 10 a0 e1                                      mov r1, r4
00373b64  04 20 a0 e1                                      mov r2, r4
00373b68  07 00 a0 e1                                      mov r0, r7
00373b6c  41 ea ff eb                                      bl #0x36e478
00373b70  01 10 a0 e3                                      mov r1, #1
00373b74  63 f3 ff eb                                      bl #0x370908
00373b78  00 30 e0 e3                                      mvn r3, #0
00373b7c  cc 36 87 e5                                      str r3, [r7, #0x6cc]
00373b80  0c ff ff ea                                      b #0x3737b8
00373b84  e1 69 fe eb                                      bl #0x30e310
00373b88  70 34 1f e5                                      ldr r3, [pc, #-0x470]
00373b8c  03 30 98 e7                                      ldr r3, [r8, r3]
00373b90  00 30 93 e5                                      ldr r3, [r3]
00373b94  02 00 53 e3                                      cmp r3, #2
00373b98  00 40 84 05                                      streq r4, [r4]
00373b9c  eb ff ff 0a                                      beq #0x373b50
00373ba0  01 00 53 e3                                      cmp r3, #1
00373ba4  e9 ff ff 1a                                      bne #0x373b50
00373ba8  8c 04 1f e5                                      ldr r0, [pc, #-0x48c]
00373bac  8c 14 1f e5                                      ldr r1, [pc, #-0x48c]
00373bb0  8c 24 1f e5                                      ldr r2, [pc, #-0x48c]
00373bb4  00 00 98 e7                                      ldr r0, [r8, r0]
00373bb8  90 34 1f e5                                      ldr r3, [pc, #-0x490]
00373bbc  e6 c3 00 e3                                      movw ip, #0x3e6
00373bc0  01 10 8f e0                                      add r1, pc, r1
00373bc4  02 20 8f e0                                      add r2, pc, r2
00373bc8  03 30 8f e0                                      add r3, pc, r3
00373bcc  a8 00 80 e2                                      add r0, r0, #0xa8
00373bd0  00 c0 8d e5                                      str ip, [sp]
00373bd4  0a 69 fe eb                                      bl #0x30e004
00373bd8  dc ff ff ea                                      b #0x373b50

; FUNCTION 0x00374b28, declared_size=188, range_size=188, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManagerC1Ev
; demangled: PlayerManager::PlayerManager()
; decoder-mode: arm
00374b28  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00374b2c  ac 20 9f e5                                      ldr r2, [pc, #0xac]
00374b30  70 40 2d e9                                      push {r4, r5, r6, lr}
00374b34  03 30 8f e0                                      add r3, pc, r3
00374b38  02 20 93 e7                                      ldr r2, [r3, r2]
00374b3c  00 40 a0 e1                                      mov r4, r0
00374b40  00 50 a0 e3                                      mov r5, #0
00374b44  08 20 82 e2                                      add r2, r2, #8
00374b48  08 20 80 e4                                      str r2, [r0], #8
00374b4c  8e fd ff eb                                      bl #0x37418c
00374b50  04 30 a0 e1                                      mov r3, r4
00374b54  00 20 a0 e3                                      mov r2, #0
00374b58  94 56 84 e5                                      str r5, [r4, #0x694]
00374b5c  00 10 e0 e3                                      mvn r1, #0
00374b60  90 56 e3 e5                                      strb r5, [r3, #0x690]!
00374b64  9c 36 84 e5                                      str r3, [r4, #0x69c]
00374b68  cc 16 84 e5                                      str r1, [r4, #0x6cc]
00374b6c  dc 26 84 e5                                      str r2, [r4, #0x6dc]
00374b70  98 36 84 e5                                      str r3, [r4, #0x698]
00374b74  a0 56 84 e5                                      str r5, [r4, #0x6a0]
00374b78  a8 56 84 e5                                      str r5, [r4, #0x6a8]
00374b7c  ac 56 84 e5                                      str r5, [r4, #0x6ac]
00374b80  b0 56 84 e5                                      str r5, [r4, #0x6b0]
00374b84  b4 56 84 e5                                      str r5, [r4, #0x6b4]
00374b88  b8 56 84 e5                                      str r5, [r4, #0x6b8]
00374b8c  bc 56 84 e5                                      str r5, [r4, #0x6bc]
00374b90  c0 56 84 e5                                      str r5, [r4, #0x6c0]
00374b94  c4 56 84 e5                                      str r5, [r4, #0x6c4]
00374b98  c9 56 c4 e5                                      strb r5, [r4, #0x6c9]
00374b9c  ca 56 c4 e5                                      strb r5, [r4, #0x6ca]
00374ba0  cb 56 c4 e5                                      strb r5, [r4, #0x6cb]
00374ba4  d0 56 c4 e5                                      strb r5, [r4, #0x6d0]
00374ba8  d4 26 84 e5                                      str r2, [r4, #0x6d4]
00374bac  d8 26 84 e5                                      str r2, [r4, #0x6d8]
00374bb0  6e 0e 84 e2                                      add r0, r4, #0x6e0
00374bb4  60 88 fe eb                                      bl #0x316d3c
00374bb8  1b 57 c4 e5                                      strb r5, [r4, #0x71b]
00374bbc  10 57 c4 e5                                      strb r5, [r4, #0x710]
00374bc0  11 57 c4 e5                                      strb r5, [r4, #0x711]
00374bc4  14 57 84 e5                                      str r5, [r4, #0x714]
00374bc8  18 57 c4 e5                                      strb r5, [r4, #0x718]
00374bcc  19 57 c4 e5                                      strb r5, [r4, #0x719]
00374bd0  1a 57 c4 e5                                      strb r5, [r4, #0x71a]
00374bd4  04 00 a0 e1                                      mov r0, r4
00374bd8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00374bdc  5c ff 61 00 2c 44 00 00                          .byte 0x5c, 0xff, 0x61, 0x00, 0x2c, 0x44, 0x00, 0x00

; FUNCTION 0x00374be4, declared_size=188, range_size=188, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManagerC2Ev
; demangled: PlayerManager::PlayerManager()
; decoder-mode: arm
00374be4  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00374be8  ac 20 9f e5                                      ldr r2, [pc, #0xac]
00374bec  70 40 2d e9                                      push {r4, r5, r6, lr}
00374bf0  03 30 8f e0                                      add r3, pc, r3
00374bf4  02 20 93 e7                                      ldr r2, [r3, r2]
00374bf8  00 40 a0 e1                                      mov r4, r0
00374bfc  00 50 a0 e3                                      mov r5, #0
00374c00  08 20 82 e2                                      add r2, r2, #8
00374c04  08 20 80 e4                                      str r2, [r0], #8
00374c08  5f fd ff eb                                      bl #0x37418c
00374c0c  04 30 a0 e1                                      mov r3, r4
00374c10  00 20 a0 e3                                      mov r2, #0
00374c14  94 56 84 e5                                      str r5, [r4, #0x694]
00374c18  00 10 e0 e3                                      mvn r1, #0
00374c1c  90 56 e3 e5                                      strb r5, [r3, #0x690]!
00374c20  9c 36 84 e5                                      str r3, [r4, #0x69c]
00374c24  cc 16 84 e5                                      str r1, [r4, #0x6cc]
00374c28  dc 26 84 e5                                      str r2, [r4, #0x6dc]
00374c2c  98 36 84 e5                                      str r3, [r4, #0x698]
00374c30  a0 56 84 e5                                      str r5, [r4, #0x6a0]
00374c34  a8 56 84 e5                                      str r5, [r4, #0x6a8]
00374c38  ac 56 84 e5                                      str r5, [r4, #0x6ac]
00374c3c  b0 56 84 e5                                      str r5, [r4, #0x6b0]
00374c40  b4 56 84 e5                                      str r5, [r4, #0x6b4]
00374c44  b8 56 84 e5                                      str r5, [r4, #0x6b8]
00374c48  bc 56 84 e5                                      str r5, [r4, #0x6bc]
00374c4c  c0 56 84 e5                                      str r5, [r4, #0x6c0]
00374c50  c4 56 84 e5                                      str r5, [r4, #0x6c4]
00374c54  c9 56 c4 e5                                      strb r5, [r4, #0x6c9]
00374c58  ca 56 c4 e5                                      strb r5, [r4, #0x6ca]
00374c5c  cb 56 c4 e5                                      strb r5, [r4, #0x6cb]
00374c60  d0 56 c4 e5                                      strb r5, [r4, #0x6d0]
00374c64  d4 26 84 e5                                      str r2, [r4, #0x6d4]
00374c68  d8 26 84 e5                                      str r2, [r4, #0x6d8]
00374c6c  6e 0e 84 e2                                      add r0, r4, #0x6e0
00374c70  31 88 fe eb                                      bl #0x316d3c
00374c74  1b 57 c4 e5                                      strb r5, [r4, #0x71b]
00374c78  10 57 c4 e5                                      strb r5, [r4, #0x710]
00374c7c  11 57 c4 e5                                      strb r5, [r4, #0x711]
00374c80  14 57 84 e5                                      str r5, [r4, #0x714]
00374c84  18 57 c4 e5                                      strb r5, [r4, #0x718]
00374c88  19 57 c4 e5                                      strb r5, [r4, #0x719]
00374c8c  1a 57 c4 e5                                      strb r5, [r4, #0x71a]
00374c90  04 00 a0 e1                                      mov r0, r4
00374c94  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00374c98  a0 fe 61 00 2c 44 00 00                          .byte 0xa0, 0xfe, 0x61, 0x00, 0x2c, 0x44, 0x00, 0x00

; FUNCTION 0x0037565c, declared_size=1172, range_size=1172, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager18ReviveLocalPlayersEb
; demangled: PlayerManager::ReviveLocalPlayers(bool)
; decoder-mode: arm
0037565c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00375660  00 30 a0 e3                                      mov r3, #0
00375664  64 d0 4d e2                                      sub sp, sp, #0x64
00375668  20 00 8d e5                                      str r0, [sp, #0x20]
0037566c  11 37 c0 e5                                      strb r3, [r0, #0x711]
00375670  14 37 80 e5                                      str r3, [r0, #0x714]
00375674  2c 10 8d e5                                      str r1, [sp, #0x2c]
00375678  45 20 12 eb                                      bl #0x7fd794
0037567c  05 30 d0 e5                                      ldrb r3, [r0, #5]
00375680  4c b4 9f e5                                      ldr fp, [pc, #0x44c]
00375684  00 00 53 e3                                      cmp r3, #0
00375688  0b b0 8f e0                                      add fp, pc, fp
0037568c  0a 01 00 0a                                      beq #0x375abc
00375690  40 04 9f e5                                      ldr r0, [pc, #0x440]
00375694  10 00 8d e5                                      str r0, [sp, #0x10]
00375698  10 00 9d e5                                      ldr r0, [sp, #0x10]
0037569c  38 34 9f e5                                      ldr r3, [pc, #0x438]
003756a0  38 14 9f e5                                      ldr r1, [pc, #0x438]
003756a4  00 a0 9b e7                                      ldr sl, [fp, r0]
003756a8  28 30 8d e5                                      str r3, [sp, #0x28]
003756ac  03 30 9b e7                                      ldr r3, [fp, r3]
003756b0  01 10 8f e0                                      add r1, pc, r1
003756b4  0a 00 a0 e1                                      mov r0, sl
003756b8  00 40 93 e5                                      ldr r4, [r3]
003756bc  e0 ad fe eb                                      bl #0x320e44
003756c0  a7 64 fe eb                                      bl #0x30e964
003756c4  01 10 a0 e3                                      mov r1, #1
003756c8  00 20 a0 e1                                      mov r2, r0
003756cc  04 00 a0 e1                                      mov r0, r4
003756d0  b2 d1 ff eb                                      bl #0x369da0
003756d4  08 34 9f e5                                      ldr r3, [pc, #0x408]
003756d8  5c 20 8d e2                                      add r2, sp, #0x5c
003756dc  40 00 9a e5                                      ldr r0, [sl, #0x40]
003756e0  03 30 8f e0                                      add r3, pc, r3
003756e4  14 30 8d e5                                      str r3, [sp, #0x14]
003756e8  f8 33 9f e5                                      ldr r3, [pc, #0x3f8]
003756ec  00 10 a0 e3                                      mov r1, #0
003756f0  24 20 8d e5                                      str r2, [sp, #0x24]
003756f4  03 30 8f e0                                      add r3, pc, r3
003756f8  18 30 8d e5                                      str r3, [sp, #0x18]
003756fc  1c b0 8d e5                                      str fp, [sp, #0x1c]
00375700  f2 e4 ff eb                                      bl #0x36ead0
00375704  00 80 a0 e3                                      mov r8, #0
00375708  00 00 58 e1                                      cmp r8, r0
0037570c  48 50 8d e2                                      add r5, sp, #0x48
00375710  74 00 00 aa                                      bge #0x3758e8
00375714  40 00 9a e5                                      ldr r0, [sl, #0x40]
00375718  08 10 a0 e1                                      mov r1, r8
0037571c  00 20 a0 e3                                      mov r2, #0
00375720  54 e3 ff eb                                      bl #0x36e478
00375724  60 66 90 e5                                      ldr r6, [r0, #0x660]
00375728  00 00 56 e3                                      cmp r6, #0
0037572c  67 00 00 0a                                      beq #0x3758d0
00375730  56 0e 86 e2                                      add r0, r6, #0x560
00375734  ef ac 01 eb                                      bl #0x3e0af8
00375738  38 30 9a e5                                      ldr r3, [sl, #0x38]
0037573c  54 40 8d e2                                      add r4, sp, #0x54
00375740  54 40 8d e5                                      str r4, [sp, #0x54]
00375744  58 40 8d e5                                      str r4, [sp, #0x58]
00375748  14 70 93 e5                                      ldr r7, [r3, #0x14]
0037574c  0c 90 83 e2                                      add sb, r3, #0xc
00375750  0c b0 a0 e3                                      mov fp, #0xc
00375754  07 00 59 e1                                      cmp sb, r7
00375758  23 00 00 0a                                      beq #0x3757ec
0037575c  2c 10 97 e5                                      ldr r1, [r7, #0x2c]
00375760  00 00 51 e3                                      cmp r1, #0
00375764  15 00 00 0a                                      beq #0x3757c0
00375768  05 00 a0 e1                                      mov r0, r5
0037576c  6e 21 ff eb                                      bl #0x33dd2c
00375770  05 00 a0 e1                                      mov r0, r5
00375774  f6 29 ff eb                                      bl #0x33ff54
00375778  00 30 50 e2                                      subs r3, r0, #0
0037577c  0f 00 00 0a                                      beq #0x3757c0
00375780  0c 30 8d e5                                      str r3, [sp, #0xc]
00375784  42 b6 00 eb                                      bl #0x3a3094
00375788  00 00 50 e3                                      cmp r0, #0
0037578c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00375790  66 00 00 0a                                      beq #0x375930
00375794  24 00 9d e5                                      ldr r0, [sp, #0x24]
00375798  0c 30 8d e5                                      str r3, [sp, #0xc]
0037579c  5c b0 8d e5                                      str fp, [sp, #0x5c]
003757a0  c6 4d 0e eb                                      bl #0x708ec0
003757a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003757a8  08 30 80 e5                                      str r3, [r0, #8]
003757ac  58 30 9d e5                                      ldr r3, [sp, #0x58]
003757b0  00 40 80 e5                                      str r4, [r0]
003757b4  04 30 80 e5                                      str r3, [r0, #4]
003757b8  00 00 83 e5                                      str r0, [r3]
003757bc  58 00 8d e5                                      str r0, [sp, #0x58]
003757c0  0c 30 97 e5                                      ldr r3, [r7, #0xc]
003757c4  00 00 53 e3                                      cmp r3, #0
003757c8  01 00 00 1a                                      bne #0x3757d4
003757cc  5d 00 00 ea                                      b #0x375948
003757d0  02 30 a0 e1                                      mov r3, r2
003757d4  08 20 93 e5                                      ldr r2, [r3, #8]
003757d8  00 00 52 e3                                      cmp r2, #0
003757dc  fb ff ff 1a                                      bne #0x3757d0
003757e0  03 70 a0 e1                                      mov r7, r3
003757e4  07 00 59 e1                                      cmp sb, r7
003757e8  db ff ff 1a                                      bne #0x37575c
003757ec  e8 1f 12 eb                                      bl #0x7fd794
003757f0  05 30 d0 e5                                      ldrb r3, [r0, #5]
003757f4  00 00 53 e3                                      cmp r3, #0
003757f8  87 00 00 1a                                      bne #0x375a1c
003757fc  74 34 01 e3                                      movw r3, #0x1474
00375800  03 30 96 e7                                      ldr r3, [r6, r3]
00375804  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00375808  dc 22 9f e5                                      ldr r2, [pc, #0x2dc]
0037580c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00375810  78 34 01 e3                                      movw r3, #0x1478
00375814  03 30 96 e7                                      ldr r3, [r6, r3]
00375818  3c 90 8d e2                                      add sb, sp, #0x3c
0037581c  02 10 90 e7                                      ldr r1, [r0, r2]
00375820  40 30 8d e5                                      str r3, [sp, #0x40]
00375824  7c 34 01 e3                                      movw r3, #0x147c
00375828  03 30 96 e7                                      ldr r3, [r6, r3]
0037582c  09 00 a0 e1                                      mov r0, sb
00375830  44 30 8d e5                                      str r3, [sp, #0x44]
00375834  cc 74 fe eb                                      bl #0x312b6c
00375838  00 00 50 e3                                      cmp r0, #0
0037583c  4e 00 00 0a                                      beq #0x37597c
00375840  a4 34 01 e3                                      movw r3, #0x14a4
00375844  00 70 a0 e3                                      mov r7, #0
00375848  03 70 86 e7                                      str r7, [r6, r3]
0037584c  01 20 a0 e3                                      mov r2, #1
00375850  06 00 a0 e1                                      mov r0, r6
00375854  07 10 a0 e1                                      mov r1, r7
00375858  53 c0 00 eb                                      bl #0x3a59ac
0037585c  4f 0e 86 e2                                      add r0, r6, #0x4f0
00375860  07 10 a0 e1                                      mov r1, r7
00375864  0c 00 80 e2                                      add r0, r0, #0xc
00375868  df 6f 86 e2                                      add r6, r6, #0x37c
0037586c  63 30 01 eb                                      bl #0x3c1a00
00375870  06 00 a0 e1                                      mov r0, r6
00375874  85 1b 02 eb                                      bl #0x3fc690
00375878  10 20 9d e5                                      ldr r2, [sp, #0x10]
0037587c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00375880  00 90 a0 e1                                      mov sb, r0
00375884  14 10 9d e5                                      ldr r1, [sp, #0x14]
00375888  02 70 93 e7                                      ldr r7, [r3, r2]
0037588c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00375890  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
00375894  d0 3c 05 eb                                      bl #0x4c4bdc
00375898  00 00 59 e1                                      cmp sb, r0
0037589c  56 00 00 ba                                      blt #0x3759fc
003758a0  54 00 9d e5                                      ldr r0, [sp, #0x54]
003758a4  04 00 50 e1                                      cmp r0, r4
003758a8  01 00 00 1a                                      bne #0x3758b4
003758ac  05 00 00 ea                                      b #0x3758c8
003758b0  06 00 a0 e1                                      mov r0, r6
003758b4  00 60 90 e5                                      ldr r6, [r0]
003758b8  0c 10 a0 e3                                      mov r1, #0xc
003758bc  8f 4d 0e eb                                      bl #0x708f00
003758c0  04 00 56 e1                                      cmp r6, r4
003758c4  f9 ff ff 1a                                      bne #0x3758b0
003758c8  58 40 8d e5                                      str r4, [sp, #0x58]
003758cc  54 40 8d e5                                      str r4, [sp, #0x54]
003758d0  40 00 9a e5                                      ldr r0, [sl, #0x40]
003758d4  00 10 a0 e3                                      mov r1, #0
003758d8  7c e4 ff eb                                      bl #0x36ead0
003758dc  01 80 88 e2                                      add r8, r8, #1
003758e0  00 00 58 e1                                      cmp r8, r0
003758e4  8a ff ff ba                                      blt #0x375714
003758e8  28 00 9d e5                                      ldr r0, [sp, #0x28]
003758ec  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
003758f0  02 10 a0 e3                                      mov r1, #2
003758f4  00 40 9b e7                                      ldr r4, [fp, r0]
003758f8  00 00 94 e5                                      ldr r0, [r4]
003758fc  fb cf ff eb                                      bl #0x3698f0
00375900  0a 00 a0 e1                                      mov r0, sl
00375904  00 40 94 e5                                      ldr r4, [r4]
00375908  21 a7 fe eb                                      bl #0x31f594
0037590c  fa cf a0 e3                                      mov ip, #0x3e8
00375910  1c 11 90 e5                                      ldr r1, [r0, #0x11c]
00375914  01 20 a0 e3                                      mov r2, #1
00375918  04 00 a0 e1                                      mov r0, r4
0037591c  00 30 a0 e3                                      mov r3, #0
00375920  00 c0 8d e5                                      str ip, [sp]
00375924  13 d9 ff eb                                      bl #0x36bd78
00375928  64 d0 8d e2                                      add sp, sp, #0x64
0037592c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00375930  18 24 93 e5                                      ldr r2, [r3, #0x418]
00375934  02 00 56 e1                                      cmp r6, r2
00375938  95 ff ff 0a                                      beq #0x375794
0037593c  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00375940  00 00 53 e3                                      cmp r3, #0
00375944  a2 ff ff 1a                                      bne #0x3757d4
00375948  04 20 97 e5                                      ldr r2, [r7, #4]
0037594c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00375950  01 00 57 e1                                      cmp r7, r1
00375954  05 00 00 1a                                      bne #0x375970
00375958  02 70 a0 e1                                      mov r7, r2
0037595c  04 20 92 e5                                      ldr r2, [r2, #4]
00375960  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00375964  07 00 53 e1                                      cmp r3, r7
00375968  fa ff ff 0a                                      beq #0x375958
0037596c  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00375970  02 00 53 e1                                      cmp r3, r2
00375974  02 70 a0 11                                      movne r7, r2
00375978  75 ff ff ea                                      b #0x375754
0037597c  01 20 a0 e3                                      mov r2, #1
00375980  06 00 a0 e1                                      mov r0, r6
00375984  09 10 a0 e1                                      mov r1, sb
00375988  09 79 00 eb                                      bl #0x393db4
0037598c  09 10 a0 e1                                      mov r1, sb
00375990  06 00 a0 e1                                      mov r0, r6
00375994  52 78 00 eb                                      bl #0x393ae4
00375998  06 00 a0 e1                                      mov r0, r6
0037599c  0e 77 00 eb                                      bl #0x3935dc
003759a0  00 10 90 e5                                      ldr r1, [r0]
003759a4  00 70 a0 e1                                      mov r7, r0
003759a8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
003759ac  7c 64 fe eb                                      bl #0x30eba4
003759b0  3c 00 8d e5                                      str r0, [sp, #0x3c]
003759b4  04 10 97 e5                                      ldr r1, [r7, #4]
003759b8  40 00 9d e5                                      ldr r0, [sp, #0x40]
003759bc  78 64 fe eb                                      bl #0x30eba4
003759c0  40 00 8d e5                                      str r0, [sp, #0x40]
003759c4  08 10 97 e5                                      ldr r1, [r7, #8]
003759c8  44 00 9d e5                                      ldr r0, [sp, #0x44]
003759cc  74 64 fe eb                                      bl #0x30eba4
003759d0  54 70 9d e5                                      ldr r7, [sp, #0x54]
003759d4  44 00 8d e5                                      str r0, [sp, #0x44]
003759d8  04 00 00 ea                                      b #0x3759f0
003759dc  08 00 97 e5                                      ldr r0, [r7, #8]
003759e0  09 10 a0 e1                                      mov r1, sb
003759e4  01 20 a0 e3                                      mov r2, #1
003759e8  f1 78 00 eb                                      bl #0x393db4
003759ec  00 70 97 e5                                      ldr r7, [r7]
003759f0  04 00 57 e1                                      cmp r7, r4
003759f4  f8 ff ff 1a                                      bne #0x3759dc
003759f8  90 ff ff ea                                      b #0x375840
003759fc  14 10 9d e5                                      ldr r1, [sp, #0x14]
00375a00  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
00375a04  18 20 9d e5                                      ldr r2, [sp, #0x18]
00375a08  73 3c 05 eb                                      bl #0x4c4bdc
00375a0c  00 10 a0 e1                                      mov r1, r0
00375a10  06 00 a0 e1                                      mov r0, r6
00375a14  89 28 02 eb                                      bl #0x3ffc40
00375a18  a0 ff ff ea                                      b #0x3758a0
00375a1c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00375a20  93 e5 ff eb                                      bl #0x36f074
00375a24  00 00 50 e3                                      cmp r0, #0
00375a28  02 00 00 0a                                      beq #0x375a38
00375a2c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00375a30  00 00 53 e3                                      cmp r3, #0
00375a34  70 ff ff 1a                                      bne #0x3757fc
00375a38  20 00 9d e5                                      ldr r0, [sp, #0x20]
00375a3c  96 e1 ff eb                                      bl #0x36e09c
00375a40  00 30 90 e5                                      ldr r3, [r0]
00375a44  00 70 a0 e1                                      mov r7, r0
00375a48  0f e0 a0 e1                                      mov lr, pc
00375a4c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00375a50  00 00 50 e3                                      cmp r0, #0
00375a54  79 ff ff 0a                                      beq #0x375840
00375a58  60 36 97 e5                                      ldr r3, [r7, #0x660]
00375a5c  00 00 53 e3                                      cmp r3, #0
00375a60  76 ff ff 0a                                      beq #0x375840
00375a64  60 21 93 e5                                      ldr r2, [r3, #0x160]
00375a68  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00375a6c  78 10 9f e5                                      ldr r1, [pc, #0x78]
00375a70  30 20 8d e5                                      str r2, [sp, #0x30]
00375a74  64 21 93 e5                                      ldr r2, [r3, #0x164]
00375a78  30 70 8d e2                                      add r7, sp, #0x30
00375a7c  01 10 90 e7                                      ldr r1, [r0, r1]
00375a80  34 20 8d e5                                      str r2, [sp, #0x34]
00375a84  68 31 93 e5                                      ldr r3, [r3, #0x168]
00375a88  07 00 a0 e1                                      mov r0, r7
00375a8c  38 30 8d e5                                      str r3, [sp, #0x38]
00375a90  35 74 fe eb                                      bl #0x312b6c
00375a94  00 00 50 e3                                      cmp r0, #0
00375a98  68 ff ff 1a                                      bne #0x375840
00375a9c  06 00 a0 e1                                      mov r0, r6
00375aa0  07 10 a0 e1                                      mov r1, r7
00375aa4  01 20 a0 e3                                      mov r2, #1
00375aa8  c1 78 00 eb                                      bl #0x393db4
00375aac  06 00 a0 e1                                      mov r0, r6
00375ab0  07 10 a0 e1                                      mov r1, r7
00375ab4  0a 78 00 eb                                      bl #0x393ae4
00375ab8  60 ff ff ea                                      b #0x375840
00375abc  14 20 9f e5                                      ldr r2, [pc, #0x14]
00375ac0  02 00 9b e7                                      ldr r0, [fp, r2]
00375ac4  10 20 8d e5                                      str r2, [sp, #0x10]
00375ac8  b1 a6 fe eb                                      bl #0x31f594
00375acc  55 ea 01 eb                                      bl #0x3f0428
00375ad0  f0 fe ff ea                                      b #0x375698
; mapping-symbol data/literal pool
00375ad4  08 f4 61 00 f4 37 00 00 a4 0d 00 00 20 b9 54 00  .byte 0x08, 0xf4, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0x20, 0xb9, 0x54, 0x00
00375ae4  70 c0 54 00 64 c1 54 00 2c 3f 00 00              .byte 0x70, 0xc0, 0x54, 0x00, 0x64, 0xc1, 0x54, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x00375af0, declared_size=964, range_size=964, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager19_HandleGlobalDeathsEv
; demangled: PlayerManager::_HandleGlobalDeaths()
; decoder-mode: arm
00375af0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00375af4  98 63 9f e5                                      ldr r6, [pc, #0x398]
00375af8  14 37 90 e5                                      ldr r3, [r0, #0x714]
00375afc  10 d0 4d e2                                      sub sp, sp, #0x10
00375b00  00 50 a0 e1                                      mov r5, r0
00375b04  06 60 8f e0                                      add r6, pc, r6
00375b08  05 00 53 e3                                      cmp r3, #5
00375b0c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00375b10  18 00 00 ea                                      b #0x375b78
00375b14  32 00 00 ea                                      b #0x375be4
00375b18  16 00 00 ea                                      b #0x375b78
00375b1c  51 00 00 ea                                      b #0x375c68
00375b20  a3 00 00 ea                                      b #0x375db4
00375b24  a8 00 00 ea                                      b #0x375dcc
00375b28  14 00 00 ea                                      b #0x375b80
00375b2c  05 00 a0 e1                                      mov r0, r5
00375b30  01 20 a0 e3                                      mov r2, #1
00375b34  4f e2 ff eb                                      bl #0x36e478
00375b38  60 36 90 e5                                      ldr r3, [r0, #0x660]
00375b3c  00 00 53 e3                                      cmp r3, #0
00375b40  cd 00 00 0a                                      beq #0x375e7c
00375b44  e8 24 01 e3                                      movw r2, #0x14e8
00375b48  02 30 93 e7                                      ldr r3, [r3, r2]
00375b4c  00 00 53 e3                                      cmp r3, #0
00375b50  08 00 00 0a                                      beq #0x375b78
00375b54  14 20 d3 e5                                      ldrb r2, [r3, #0x14]
00375b58  38 33 9f e5                                      ldr r3, [pc, #0x338]
00375b5c  01 20 02 e2                                      and r2, r2, #1
00375b60  03 10 96 e7                                      ldr r1, [r6, r3]
00375b64  38 30 91 e5                                      ldr r3, [r1, #0x38]
00375b68  60 31 d3 e5                                      ldrb r3, [r3, #0x160]
00375b6c  03 30 02 e0                                      and r3, r2, r3
00375b70  00 00 53 e3                                      cmp r3, #0
00375b74  91 00 00 1a                                      bne #0x375dc0
00375b78  10 d0 8d e2                                      add sp, sp, #0x10
00375b7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00375b80  10 33 9f e5                                      ldr r3, [pc, #0x310]
00375b84  10 73 9f e5                                      ldr r7, [pc, #0x310]
00375b88  03 40 96 e7                                      ldr r4, [r6, r3]
00375b8c  07 70 8f e0                                      add r7, pc, r7
00375b90  04 60 97 e5                                      ldr r6, [r7, #4]
00375b94  04 00 a0 e1                                      mov r0, r4
00375b98  b3 a6 fe eb                                      bl #0x31f66c
00375b9c  06 00 60 e0                                      rsb r0, r0, r6
00375ba0  00 00 50 e3                                      cmp r0, #0
00375ba4  04 00 87 e5                                      str r0, [r7, #4]
00375ba8  f2 ff ff aa                                      bge #0x375b78
00375bac  ec 12 9f e5                                      ldr r1, [pc, #0x2ec]
00375bb0  54 00 94 e5                                      ldr r0, [r4, #0x54]
00375bb4  01 10 8f e0                                      add r1, pc, r1
00375bb8  bc e1 02 eb                                      bl #0x42e2b0
00375bbc  e0 12 9f e5                                      ldr r1, [pc, #0x2e0]
00375bc0  54 00 94 e5                                      ldr r0, [r4, #0x54]
00375bc4  01 10 8f e0                                      add r1, pc, r1
00375bc8  55 ef 02 eb                                      bl #0x431924
00375bcc  05 00 a0 e1                                      mov r0, r5
00375bd0  01 10 a0 e3                                      mov r1, #1
00375bd4  a0 fe ff eb                                      bl #0x37565c
00375bd8  00 30 a0 e3                                      mov r3, #0
00375bdc  18 37 c5 e5                                      strb r3, [r5, #0x718]
00375be0  e4 ff ff ea                                      b #0x375b78
00375be4  ac 32 9f e5                                      ldr r3, [pc, #0x2ac]
00375be8  b8 42 9f e5                                      ldr r4, [pc, #0x2b8]
00375bec  01 70 a0 e3                                      mov r7, #1
00375bf0  03 80 96 e7                                      ldr r8, [r6, r3]
00375bf4  14 77 80 e5                                      str r7, [r0, #0x714]
00375bf8  04 40 8f e0                                      add r4, pc, r4
00375bfc  04 10 a0 e1                                      mov r1, r4
00375c00  54 00 98 e5                                      ldr r0, [r8, #0x54]
00375c04  79 dd 02 eb                                      bl #0x42d1f0
00375c08  f9 a5 02 eb                                      bl #0x41f3f4
00375c0c  00 00 50 e3                                      cmp r0, #0
00375c10  0f 00 00 1a                                      bne #0x375c54
00375c14  9c db 02 eb                                      bl #0x42ca8c
00375c18  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
00375c1c  07 10 a0 e1                                      mov r1, r7
00375c20  03 00 a0 e1                                      mov r0, r3
00375c24  00 30 93 e5                                      ldr r3, [r3]
00375c28  0f e0 a0 e1                                      mov lr, pc
00375c2c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00375c30  54 00 98 e5                                      ldr r0, [r8, #0x54]
00375c34  04 10 a0 e1                                      mov r1, r4
00375c38  39 ef 02 eb                                      bl #0x431924
00375c3c  68 32 9f e5                                      ldr r3, [pc, #0x268]
00375c40  07 10 a0 e1                                      mov r1, r7
00375c44  00 20 a0 e3                                      mov r2, #0
00375c48  03 30 96 e7                                      ldr r3, [r6, r3]
00375c4c  00 00 93 e5                                      ldr r0, [r3]
00375c50  52 d0 ff eb                                      bl #0x369da0
00375c54  00 30 a0 e3                                      mov r3, #0
00375c58  11 37 c5 e5                                      strb r3, [r5, #0x711]
00375c5c  5b a4 02 eb                                      bl #0x41edd0
00375c60  42 9e 02 eb                                      bl #0x41d570
00375c64  c3 ff ff ea                                      b #0x375b78
00375c68  00 10 a0 e3                                      mov r1, #0
00375c6c  01 20 a0 e1                                      mov r2, r1
00375c70  00 e2 ff eb                                      bl #0x36e478
00375c74  a8 33 90 e5                                      ldr r3, [r0, #0x3a8]
00375c78  00 40 a0 e1                                      mov r4, r0
00375c7c  00 00 53 e3                                      cmp r3, #0
00375c80  05 00 00 ba                                      blt #0x375c9c
00375c84  00 10 e0 e3                                      mvn r1, #0
00375c88  d9 eb ff eb                                      bl #0x370bf4
00375c8c  04 00 a0 e1                                      mov r0, r4
00375c90  69 65 12 eb                                      bl #0x80f23c
00375c94  00 10 50 e2                                      subs r1, r0, #0
00375c98  52 00 00 0a                                      beq #0x375de8
00375c9c  00 40 a0 e3                                      mov r4, #0
00375ca0  01 70 a0 e3                                      mov r7, #1
00375ca4  05 00 a0 e1                                      mov r0, r5
00375ca8  be de ff eb                                      bl #0x36d7a8
00375cac  00 00 54 e1                                      cmp r4, r0
00375cb0  04 10 a0 e1                                      mov r1, r4
00375cb4  00 20 a0 e3                                      mov r2, #0
00375cb8  05 00 a0 e1                                      mov r0, r5
00375cbc  11 00 00 aa                                      bge #0x375d08
00375cc0  9f e2 ff eb                                      bl #0x36e744
00375cc4  60 36 90 e5                                      ldr r3, [r0, #0x660]
00375cc8  00 20 a0 e3                                      mov r2, #0
00375ccc  04 10 a0 e1                                      mov r1, r4
00375cd0  02 00 53 e1                                      cmp r3, r2
00375cd4  05 00 a0 e1                                      mov r0, r5
00375cd8  01 40 84 e2                                      add r4, r4, #1
00375cdc  f0 ff ff 0a                                      beq #0x375ca4
00375ce0  97 e2 ff eb                                      bl #0x36e744
00375ce4  a8 33 90 e5                                      ldr r3, [r0, #0x3a8]
00375ce8  05 00 a0 e1                                      mov r0, r5
00375cec  a3 7f 07 e0                                      and r7, r7, r3, lsr #31
00375cf0  ac de ff eb                                      bl #0x36d7a8
00375cf4  00 00 54 e1                                      cmp r4, r0
00375cf8  04 10 a0 e1                                      mov r1, r4
00375cfc  00 20 a0 e3                                      mov r2, #0
00375d00  05 00 a0 e1                                      mov r0, r5
00375d04  ed ff ff ba                                      blt #0x375cc0
00375d08  02 00 57 e1                                      cmp r7, r2
00375d0c  99 ff ff 0a                                      beq #0x375b78
00375d10  03 30 a0 e3                                      mov r3, #3
00375d14  02 10 a0 e1                                      mov r1, r2
00375d18  14 37 85 e5                                      str r3, [r5, #0x714]
00375d1c  01 20 a0 e3                                      mov r2, #1
00375d20  d4 e1 ff eb                                      bl #0x36e478
00375d24  60 76 90 e5                                      ldr r7, [r0, #0x660]
00375d28  05 00 a0 e1                                      mov r0, r5
00375d2c  d0 e4 ff eb                                      bl #0x36f074
00375d30  00 00 50 e3                                      cmp r0, #0
00375d34  03 00 00 0a                                      beq #0x375d48
00375d38  00 00 57 e3                                      cmp r7, #0
00375d3c  01 00 00 0a                                      beq #0x375d48
00375d40  07 00 a0 e1                                      mov r0, r7
00375d44  a1 16 01 eb                                      bl #0x3bb7d0
00375d48  05 00 a0 e1                                      mov r0, r5
00375d4c  c8 e4 ff eb                                      bl #0x36f074
00375d50  00 00 50 e3                                      cmp r0, #0
00375d54  87 ff ff 0a                                      beq #0x375b78
00375d58  38 41 9f e5                                      ldr r4, [pc, #0x138]
00375d5c  04 00 96 e7                                      ldr r0, [r6, r4]
00375d60  0b a6 fe eb                                      bl #0x31f594
00375d64  af e9 01 eb                                      bl #0x3f0428
00375d68  00 00 57 e3                                      cmp r7, #0
00375d6c  0c 00 00 0a                                      beq #0x375da4
00375d70  74 34 01 e3                                      movw r3, #0x1474
00375d74  03 30 97 e7                                      ldr r3, [r7, r3]
00375d78  07 00 a0 e1                                      mov r0, r7
00375d7c  04 10 8d e2                                      add r1, sp, #4
00375d80  04 30 8d e5                                      str r3, [sp, #4]
00375d84  78 34 01 e3                                      movw r3, #0x1478
00375d88  03 30 97 e7                                      ldr r3, [r7, r3]
00375d8c  01 20 a0 e3                                      mov r2, #1
00375d90  08 30 8d e5                                      str r3, [sp, #8]
00375d94  7c 34 01 e3                                      movw r3, #0x147c
00375d98  03 30 97 e7                                      ldr r3, [r7, r3]
00375d9c  0c 30 8d e5                                      str r3, [sp, #0xc]
00375da0  03 78 00 eb                                      bl #0x393db4
00375da4  04 30 96 e7                                      ldr r3, [r6, r4]
00375da8  38 00 93 e5                                      ldr r0, [r3, #0x38]
00375dac  87 48 ff eb                                      bl #0x347fd0
00375db0  70 ff ff ea                                      b #0x375b78
00375db4  ae e4 ff eb                                      bl #0x36f074
00375db8  00 10 50 e2                                      subs r1, r0, #0
00375dbc  5a ff ff 0a                                      beq #0x375b2c
00375dc0  04 30 a0 e3                                      mov r3, #4
00375dc4  14 37 85 e5                                      str r3, [r5, #0x714]
00375dc8  6a ff ff ea                                      b #0x375b78
00375dcc  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
00375dd0  05 20 a0 e3                                      mov r2, #5
00375dd4  14 27 80 e5                                      str r2, [r0, #0x714]
00375dd8  03 30 8f e0                                      add r3, pc, r3
00375ddc  7d 2e a0 e3                                      mov r2, #0x7d0
00375de0  04 20 83 e5                                      str r2, [r3, #4]
00375de4  63 ff ff ea                                      b #0x375b78
00375de8  05 00 a0 e1                                      mov r0, r5
00375dec  01 20 a0 e3                                      mov r2, #1
00375df0  a0 e1 ff eb                                      bl #0x36e478
00375df4  60 76 90 e5                                      ldr r7, [r0, #0x660]
00375df8  00 00 57 e3                                      cmp r7, #0
00375dfc  1c 00 00 0a                                      beq #0x375e74
00375e00  90 40 9f e5                                      ldr r4, [pc, #0x90]
00375e04  04 80 96 e7                                      ldr r8, [r6, r4]
00375e08  08 00 a0 e1                                      mov r0, r8
00375e0c  e0 a5 fe eb                                      bl #0x31f594
00375e10  ff e5 01 eb                                      bl #0x3ef614
00375e14  00 00 50 e3                                      cmp r0, #0
00375e18  06 00 00 0a                                      beq #0x375e38
00375e1c  08 00 a0 e1                                      mov r0, r8
00375e20  db a5 fe eb                                      bl #0x31f594
00375e24  fa e5 01 eb                                      bl #0x3ef614
00375e28  01 20 a0 e3                                      mov r2, #1
00375e2c  16 1e 80 e2                                      add r1, r0, #0x160
00375e30  07 00 a0 e1                                      mov r0, r7
00375e34  de 77 00 eb                                      bl #0x393db4
00375e38  07 00 a0 e1                                      mov r0, r7
00375e3c  63 16 01 eb                                      bl #0x3bb7d0
00375e40  04 00 96 e7                                      ldr r0, [r6, r4]
00375e44  00 20 a0 e3                                      mov r2, #0
00375e48  38 30 90 e5                                      ldr r3, [r0, #0x38]
00375e4c  60 21 c3 e5                                      strb r2, [r3, #0x160]
00375e50  cf a5 fe eb                                      bl #0x31f594
00375e54  00 00 50 e3                                      cmp r0, #0
00375e58  01 00 00 0a                                      beq #0x375e64
00375e5c  94 01 90 e5                                      ldr r0, [r0, #0x194]
00375e60  b1 0e 04 eb                                      bl #0x47992c
00375e64  04 30 96 e7                                      ldr r3, [r6, r4]
00375e68  38 00 93 e5                                      ldr r0, [r3, #0x38]
00375e6c  0e 2a ff eb                                      bl #0x3406ac
00375e70  89 ff ff ea                                      b #0x375c9c
00375e74  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00375e78  f0 ff ff ea                                      b #0x375e40
00375e7c  14 30 9f e5                                      ldr r3, [pc, #0x14]
00375e80  03 30 96 e7                                      ldr r3, [r6, r3]
00375e84  38 30 93 e5                                      ldr r3, [r3, #0x38]
00375e88  60 31 d3 e5                                      ldrb r3, [r3, #0x160]
00375e8c  01 30 03 e2                                      and r3, r3, #1
00375e90  36 ff ff ea                                      b #0x375b70
; mapping-symbol data/literal pool
00375e94  8c ef 61 00 f4 37 00 00 fc c7 62 00 74 91 54 00  .byte 0x8c, 0xef, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xfc, 0xc7, 0x62, 0x00, 0x74, 0x91, 0x54, 0x00
00375ea4  7c 91 54 00 30 91 54 00 a4 0d 00 00 b0 c5 62 00  .byte 0x7c, 0x91, 0x54, 0x00, 0x30, 0x91, 0x54, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xb0, 0xc5, 0x62, 0x00

; FUNCTION 0x00375eb4, declared_size=308, range_size=308, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager18_CheckGlobalDeathsEv
; demangled: PlayerManager::_CheckGlobalDeaths()
; decoder-mode: arm
00375eb4  20 31 9f e5                                      ldr r3, [pc, #0x120]
00375eb8  20 21 9f e5                                      ldr r2, [pc, #0x120]
00375ebc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00375ec0  03 30 8f e0                                      add r3, pc, r3
00375ec4  00 50 a0 e1                                      mov r5, r0
00375ec8  02 00 93 e7                                      ldr r0, [r3, r2]
00375ecc  b0 a5 fe eb                                      bl #0x31f594
00375ed0  00 00 50 e3                                      cmp r0, #0
00375ed4  02 00 00 0a                                      beq #0x375ee4
00375ed8  30 31 90 e5                                      ldr r3, [r0, #0x130]
00375edc  26 00 53 e3                                      cmp r3, #0x26
00375ee0  00 00 00 0a                                      beq #0x375ee8
00375ee4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00375ee8  29 1e 12 eb                                      bl #0x7fd794
00375eec  05 30 d0 e5                                      ldrb r3, [r0, #5]
00375ef0  00 00 53 e3                                      cmp r3, #0
00375ef4  fa ff ff 0a                                      beq #0x375ee4
00375ef8  05 00 a0 e1                                      mov r0, r5
00375efc  29 de ff eb                                      bl #0x36d7a8
00375f00  00 40 a0 e3                                      mov r4, #0
00375f04  00 60 50 e2                                      subs r6, r0, #0
00375f08  01 60 a0 13                                      movne r6, #1
00375f0c  05 00 a0 e1                                      mov r0, r5
00375f10  24 de ff eb                                      bl #0x36d7a8
00375f14  00 00 54 e1                                      cmp r4, r0
00375f18  04 10 a0 e1                                      mov r1, r4
00375f1c  00 20 a0 e3                                      mov r2, #0
00375f20  05 00 a0 e1                                      mov r0, r5
00375f24  16 00 00 aa                                      bge #0x375f84
00375f28  05 e2 ff eb                                      bl #0x36e744
00375f2c  60 36 90 e5                                      ldr r3, [r0, #0x660]
00375f30  00 00 53 e2                                      subs r0, r3, #0
00375f34  03 60 a0 01                                      moveq r6, r3
00375f38  05 00 00 0a                                      beq #0x375f54
00375f3c  00 30 93 e5                                      ldr r3, [r3]
00375f40  0f e0 a0 e1                                      mov lr, pc
00375f44  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00375f48  00 70 50 e2                                      subs r7, r0, #0
00375f4c  01 60 06 12                                      andne r6, r6, #1
00375f50  01 00 00 0a                                      beq #0x375f5c
00375f54  01 40 84 e2                                      add r4, r4, #1
00375f58  eb ff ff ea                                      b #0x375f0c
00375f5c  04 10 a0 e1                                      mov r1, r4
00375f60  05 00 a0 e1                                      mov r0, r5
00375f64  07 20 a0 e1                                      mov r2, r7
00375f68  f5 e1 ff eb                                      bl #0x36e744
00375f6c  a8 33 90 e5                                      ldr r3, [r0, #0x3a8]
00375f70  01 60 06 e2                                      and r6, r6, #1
00375f74  01 40 84 e2                                      add r4, r4, #1
00375f78  00 00 53 e3                                      cmp r3, #0
00375f7c  07 60 a0 b1                                      movlt r6, r7
00375f80  e1 ff ff ea                                      b #0x375f0c
00375f84  02 00 56 e1                                      cmp r6, r2
00375f88  0c 00 00 0a                                      beq #0x375fc0
00375f8c  14 37 95 e5                                      ldr r3, [r5, #0x714]
00375f90  00 00 53 e3                                      cmp r3, #0
00375f94  0c 00 00 1a                                      bne #0x375fcc
00375f98  87 54 12 eb                                      bl #0x80b1bc
00375f9c  00 40 a0 e1                                      mov r4, r0
00375fa0  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00375fa4  01 10 a0 e3                                      mov r1, #1
00375fa8  00 00 8f e0                                      add r0, pc, r0
00375fac  a4 50 12 eb                                      bl #0x80a244
00375fb0  00 10 a0 e1                                      mov r1, r0
00375fb4  04 00 a0 e1                                      mov r0, r4
00375fb8  b9 60 12 eb                                      bl #0x80e2a4
00375fbc  02 00 00 ea                                      b #0x375fcc
00375fc0  14 37 95 e5                                      ldr r3, [r5, #0x714]
00375fc4  02 00 53 e1                                      cmp r3, r2
00375fc8  02 00 00 0a                                      beq #0x375fd8
00375fcc  05 00 a0 e1                                      mov r0, r5
00375fd0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00375fd4  c5 fe ff ea                                      b #0x375af0
00375fd8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00375fdc  d0 eb 61 00 f4 37 00 00 b0 8e 54 00              .byte 0xd0, 0xeb, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xb0, 0x8e, 0x54, 0x00

; FUNCTION 0x00375fe8, declared_size=280, range_size=280, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager18_HandleLocalDeathsEv
; demangled: PlayerManager::_HandleLocalDeaths()
; decoder-mode: arm
00375fe8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00375fec  00 50 a0 e1                                      mov r5, r0
00375ff0  e7 1d 12 eb                                      bl #0x7fd794
00375ff4  05 30 d0 e5                                      ldrb r3, [r0, #5]
00375ff8  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
00375ffc  00 00 53 e3                                      cmp r3, #0
00376000  04 40 8f e0                                      add r4, pc, r4
00376004  13 00 00 0a                                      beq #0x376058
00376008  14 67 95 e5                                      ldr r6, [r5, #0x714]
0037600c  00 00 56 e3                                      cmp r6, #0
00376010  1a 00 00 1a                                      bne #0x376080
00376014  11 37 d5 e5                                      ldrb r3, [r5, #0x711]
00376018  00 00 53 e3                                      cmp r3, #0
0037601c  2c 00 00 0a                                      beq #0x3760d4
00376020  06 10 a0 e1                                      mov r1, r6
00376024  06 20 a0 e1                                      mov r2, r6
00376028  05 00 a0 e1                                      mov r0, r5
0037602c  11 e1 ff eb                                      bl #0x36e478
00376030  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00376034  a8 73 90 e5                                      ldr r7, [r0, #0x3a8]
00376038  00 80 a0 e1                                      mov r8, r0
0037603c  03 00 94 e7                                      ldr r0, [r4, r3]
00376040  89 a5 fe eb                                      bl #0x31f66c
00376044  00 10 57 e0                                      subs r1, r7, r0
00376048  17 00 00 4a                                      bmi #0x3760ac
0037604c  08 00 a0 e1                                      mov r0, r8
00376050  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00376054  e6 ea ff ea                                      b #0x370bf4
00376058  94 30 9f e5                                      ldr r3, [pc, #0x94]
0037605c  94 50 9f e5                                      ldr r5, [pc, #0x94]
00376060  03 60 94 e7                                      ldr r6, [r4, r3]
00376064  05 50 8f e0                                      add r5, pc, r5
00376068  05 10 a0 e1                                      mov r1, r5
0037606c  54 00 96 e5                                      ldr r0, [r6, #0x54]
00376070  5e dc 02 eb                                      bl #0x42d1f0
00376074  de a4 02 eb                                      bl #0x41f3f4
00376078  00 00 50 e3                                      cmp r0, #0
0037607c  00 00 00 0a                                      beq #0x376084
00376080  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00376084  54 00 96 e5                                      ldr r0, [r6, #0x54]
00376088  05 10 a0 e1                                      mov r1, r5
0037608c  24 ee 02 eb                                      bl #0x431924
00376090  64 30 9f e5                                      ldr r3, [pc, #0x64]
00376094  01 10 a0 e3                                      mov r1, #1
00376098  00 20 a0 e3                                      mov r2, #0
0037609c  03 30 94 e7                                      ldr r3, [r4, r3]
003760a0  00 00 93 e5                                      ldr r0, [r3]
003760a4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003760a8  3c cf ff ea                                      b #0x369da0
003760ac  00 10 e0 e3                                      mvn r1, #0
003760b0  08 00 a0 e1                                      mov r0, r8
003760b4  11 67 c5 e5                                      strb r6, [r5, #0x711]
003760b8  cd ea ff eb                                      bl #0x370bf4
003760bc  43 a3 02 eb                                      bl #0x41edd0
003760c0  2a 9d 02 eb                                      bl #0x41d570
003760c4  05 00 a0 e1                                      mov r0, r5
003760c8  06 10 a0 e1                                      mov r1, r6
003760cc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003760d0  61 fd ff ea                                      b #0x37565c
003760d4  01 30 a0 e3                                      mov r3, #1
003760d8  11 37 c5 e5                                      strb r3, [r5, #0x711]
003760dc  05 00 a0 e1                                      mov r0, r5
003760e0  ed ea ff eb                                      bl #0x370c9c
003760e4  39 a3 02 eb                                      bl #0x41edd0
003760e8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003760ec  59 9d 02 ea                                      b #0x41d658
; mapping-symbol data/literal pool
003760f0  90 ea 61 00 f4 37 00 00 c4 8c 54 00 a4 0d 00 00  .byte 0x90, 0xea, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc4, 0x8c, 0x54, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x00376100, declared_size=136, range_size=136, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager17_CheckLocalDeathsEv
; demangled: PlayerManager::_CheckLocalDeaths()
; decoder-mode: arm
00376100  78 30 9f e5                                      ldr r3, [pc, #0x78]
00376104  78 20 9f e5                                      ldr r2, [pc, #0x78]
00376108  10 40 2d e9                                      push {r4, lr}
0037610c  03 30 8f e0                                      add r3, pc, r3
00376110  00 40 a0 e1                                      mov r4, r0
00376114  02 00 93 e7                                      ldr r0, [r3, r2]
00376118  1d a5 fe eb                                      bl #0x31f594
0037611c  00 00 50 e3                                      cmp r0, #0
00376120  02 00 00 0a                                      beq #0x376130
00376124  30 31 90 e5                                      ldr r3, [r0, #0x130]
00376128  26 00 53 e3                                      cmp r3, #0x26
0037612c  00 00 00 0a                                      beq #0x376134
00376130  10 80 bd e8                                      pop {r4, pc}
00376134  00 10 a0 e3                                      mov r1, #0
00376138  04 00 a0 e1                                      mov r0, r4
0037613c  01 20 a0 e1                                      mov r2, r1
00376140  cc e0 ff eb                                      bl #0x36e478
00376144  60 36 90 e5                                      ldr r3, [r0, #0x660]
00376148  00 00 53 e3                                      cmp r3, #0
0037614c  f7 ff ff 0a                                      beq #0x376130
00376150  03 00 a0 e1                                      mov r0, r3
00376154  00 30 93 e5                                      ldr r3, [r3]
00376158  0f e0 a0 e1                                      mov lr, pc
0037615c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00376160  00 00 50 e3                                      cmp r0, #0
00376164  f1 ff ff 0a                                      beq #0x376130
00376168  c4 36 94 e5                                      ldr r3, [r4, #0x6c4]
0037616c  00 00 53 e3                                      cmp r3, #0
00376170  ee ff ff da                                      ble #0x376130
00376174  04 00 a0 e1                                      mov r0, r4
00376178  10 40 bd e8                                      pop {r4, lr}
0037617c  99 ff ff ea                                      b #0x375fe8
; mapping-symbol data/literal pool
00376180  84 e9 61 00 f4 37 00 00                          .byte 0x84, 0xe9, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00376380, declared_size=1324, range_size=1324, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager25OnHostChangedNotificationEi
; demangled: PlayerManager::OnHostChangedNotification(int)
; decoder-mode: arm
00376380  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00376384  e0 24 9f e5                                      ldr r2, [pc, #0x4e0]
00376388  4a de 4d e2                                      sub sp, sp, #0x4a0
0037638c  0c d0 4d e2                                      sub sp, sp, #0xc
00376390  10 20 8d e5                                      str r2, [sp, #0x10]
00376394  d4 44 9f e5                                      ldr r4, [pc, #0x4d4]
00376398  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0037639c  00 20 a0 e3                                      mov r2, #0
003763a0  04 40 8f e0                                      add r4, pc, r4
003763a4  0c 30 94 e7                                      ldr r3, [r4, ip]
003763a8  00 90 a0 e1                                      mov sb, r0
003763ac  00 30 93 e5                                      ldr r3, [r3]
003763b0  a4 34 8d e5                                      str r3, [sp, #0x4a4]
003763b4  fd de ff eb                                      bl #0x36dfb0
003763b8  00 60 a0 e1                                      mov r6, r0
003763bc  9e 63 12 eb                                      bl #0x80f23c
003763c0  00 00 50 e3                                      cmp r0, #0
003763c4  07 00 00 1a                                      bne #0x3763e8
003763c8  a4 34 9f e5                                      ldr r3, [pc, #0x4a4]
003763cc  03 30 94 e7                                      ldr r3, [r4, r3]
003763d0  00 30 93 e5                                      ldr r3, [r3]
003763d4  02 00 53 e3                                      cmp r3, #2
003763d8  00 00 80 05                                      streq r0, [r0]
003763dc  01 00 00 0a                                      beq #0x3763e8
003763e0  01 00 53 e3                                      cmp r3, #1
003763e4  03 01 00 0a                                      beq #0x3767f8
003763e8  88 74 9f e5                                      ldr r7, [pc, #0x488]
003763ec  07 00 94 e7                                      ldr r0, [r4, r7]
003763f0  67 a4 fe eb                                      bl #0x31f594
003763f4  00 00 50 e3                                      cmp r0, #0
003763f8  01 30 a0 13                                      movne r3, #1
003763fc  19 37 c9 15                                      strbne r3, [sb, #0x719]
00376400  00 30 96 e5                                      ldr r3, [r6]
00376404  06 00 a0 e1                                      mov r0, r6
00376408  0f e0 a0 e1                                      mov lr, pc
0037640c  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00376410  00 00 50 e3                                      cmp r0, #0
00376414  02 00 00 0a                                      beq #0x376424
00376418  e5 54 d6 e5                                      ldrb r5, [r6, #0x4e5]
0037641c  00 00 55 e3                                      cmp r5, #0
00376420  88 00 00 0a                                      beq #0x376648
00376424  60 b6 96 e5                                      ldr fp, [r6, #0x660]
00376428  00 00 5b e3                                      cmp fp, #0
0037642c  c6 00 00 0a                                      beq #0x37674c
00376430  3e 5e 8d e2                                      add r5, sp, #0x3e0
00376434  05 00 a0 e1                                      mov r0, r5
00376438  10 10 a0 e3                                      mov r1, #0x10
0037643c  f0 53 8d e5                                      str r5, [sp, #0x3f0]
00376440  f4 53 8d e5                                      str r5, [sp, #0x3f4]
00376444  8c 6c fe eb                                      bl #0x31167c
00376448  f0 33 9d e5                                      ldr r3, [sp, #0x3f0]
0037644c  12 8d 8d e2                                      add r8, sp, #0x480
00376450  0c 80 88 e2                                      add r8, r8, #0xc
00376454  00 a0 a0 e3                                      mov sl, #0
00376458  00 a0 c3 e5                                      strb sl, [r3]
0037645c  08 00 a0 e1                                      mov r0, r8
00376460  10 10 a0 e3                                      mov r1, #0x10
00376464  9c 84 8d e5                                      str r8, [sp, #0x49c]
00376468  a0 84 8d e5                                      str r8, [sp, #0x4a0]
0037646c  82 6c fe eb                                      bl #0x31167c
00376470  9c 34 9d e5                                      ldr r3, [sp, #0x49c]
00376474  07 70 94 e7                                      ldr r7, [r4, r7]
00376478  fc 13 9f e5                                      ldr r1, [pc, #0x3fc]
0037647c  00 a0 c3 e5                                      strb sl, [r3]
00376480  f8 23 9f e5                                      ldr r2, [pc, #0x3f8]
00376484  34 30 97 e5                                      ldr r3, [r7, #0x34]
00376488  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
0037648c  02 20 8f e0                                      add r2, pc, r2
00376490  01 10 8f e0                                      add r1, pc, r1
00376494  0c 30 8d e5                                      str r3, [sp, #0xc]
00376498  cf 39 05 eb                                      bl #0x4c4bdc
0037649c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003764a0  00 10 a0 e1                                      mov r1, r0
003764a4  03 00 a0 e1                                      mov r0, r3
003764a8  8b 4a 06 eb                                      bl #0x508edc
003764ac  34 70 97 e5                                      ldr r7, [r7, #0x34]
003764b0  00 c0 a0 e1                                      mov ip, r0
003764b4  0b 00 a0 e1                                      mov r0, fp
003764b8  0c c0 8d e5                                      str ip, [sp, #0xc]
003764bc  14 70 8d e5                                      str r7, [sp, #0x14]
003764c0  c8 14 01 eb                                      bl #0x3bb7e8
003764c4  47 be 8d e2                                      add fp, sp, #0x470
003764c8  04 b0 8b e2                                      add fp, fp, #4
003764cc  45 7e 8d e2                                      add r7, sp, #0x450
003764d0  00 10 a0 e1                                      mov r1, r0
003764d4  0c 70 87 e2                                      add r7, r7, #0xc
003764d8  f7 2f 8d e2                                      add r2, sp, #0x3dc
003764dc  0b 00 a0 e1                                      mov r0, fp
003764e0  01 77 fe eb                                      bl #0x3140ec
003764e4  0a 30 a0 e1                                      mov r3, sl
003764e8  07 00 a0 e1                                      mov r0, r7
003764ec  14 10 9d e5                                      ldr r1, [sp, #0x14]
003764f0  0b 20 a0 e1                                      mov r2, fp
003764f4  c4 45 06 eb                                      bl #0x507c0c
003764f8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
003764fc  70 34 9d e5                                      ldr r3, [sp, #0x470]
00376500  08 10 a0 e1                                      mov r1, r8
00376504  0c 20 a0 e1                                      mov r2, ip
00376508  14 00 9d e5                                      ldr r0, [sp, #0x14]
0037650c  78 4a 06 eb                                      bl #0x508ef4
00376510  07 00 a0 e1                                      mov r0, r7
00376514  68 73 9f e5                                      ldr r7, [pc, #0x368]
00376518  4d 87 fe eb                                      bl #0x318254
0037651c  0b 00 a0 e1                                      mov r0, fp
00376520  4b 87 fe eb                                      bl #0x318254
00376524  9c 24 9d e5                                      ldr r2, [sp, #0x49c]
00376528  a0 14 9d e5                                      ldr r1, [sp, #0x4a0]
0037652c  05 00 a0 e1                                      mov r0, r5
00376530  2a 69 fe eb                                      bl #0x3109e0
00376534  07 70 94 e7                                      ldr r7, [r4, r7]
00376538  05 10 a0 e1                                      mov r1, r5
0037653c  04 a0 87 e2                                      add sl, r7, #4
00376540  0a 00 a0 e1                                      mov r0, sl
00376544  7b ff ff eb                                      bl #0x376338
00376548  0f 00 9a e8                                      ldm sl, {r0, r1, r2, r3}
0037654c  ed cf 8d e2                                      add ip, sp, #0x3b4
00376550  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00376554  14 00 87 e2                                      add r0, r7, #0x14
00376558  0c 10 a0 e1                                      mov r1, ip
0037655c  6c db ff eb                                      bl #0x36d314
00376560  01 00 50 e3                                      cmp r0, #1
00376564  3e 00 00 0a                                      beq #0x376664
00376568  87 2a 12 eb                                      bl #0x800f8c
0037656c  00 30 90 e5                                      ldr r3, [r0]
00376570  0f e0 a0 e1                                      mov lr, pc
00376574  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00376578  18 70 8d e2                                      add r7, sp, #0x18
0037657c  11 bd 8d e2                                      add fp, sp, #0x440
00376580  00 10 a0 e1                                      mov r1, r0
00376584  2d 6e 86 e2                                      add r6, r6, #0x2d0
00376588  04 b0 8b e2                                      add fp, fp, #4
0037658c  07 00 a0 e1                                      mov r0, r7
00376590  42 ae 8d e2                                      add sl, sp, #0x420
00376594  ad 8a 12 eb                                      bl #0x819050
00376598  0c a0 8a e2                                      add sl, sl, #0xc
0037659c  06 10 a0 e1                                      mov r1, r6
003765a0  0b 00 a0 e1                                      mov r0, fp
003765a4  db d4 fe eb                                      bl #0x32b918
003765a8  06 10 a0 e1                                      mov r1, r6
003765ac  0a 00 a0 e1                                      mov r0, sl
003765b0  58 64 9d e5                                      ldr r6, [sp, #0x458]
003765b4  d7 d4 fe eb                                      bl #0x32b918
003765b8  3c 04 9d e5                                      ldr r0, [sp, #0x43c]
003765bc  40 34 9d e5                                      ldr r3, [sp, #0x440]
003765c0  06 20 a0 e1                                      mov r2, r6
003765c4  03 10 a0 e3                                      mov r1, #3
003765c8  00 30 63 e0                                      rsb r3, r3, r0
003765cc  07 00 a0 e1                                      mov r0, r7
003765d0  b6 89 12 eb                                      bl #0x818cb0
003765d4  0a 00 a0 e1                                      mov r0, sl
003765d8  1d 87 fe eb                                      bl #0x318254
003765dc  0b 00 a0 e1                                      mov r0, fp
003765e0  1b 87 fe eb                                      bl #0x318254
003765e4  68 2a 12 eb                                      bl #0x800f8c
003765e8  00 30 90 e5                                      ldr r3, [r0]
003765ec  0f e0 a0 e1                                      mov lr, pc
003765f0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
003765f4  07 10 a0 e1                                      mov r1, r7
003765f8  cb 88 12 eb                                      bl #0x81892c
003765fc  07 00 a0 e1                                      mov r0, r7
00376600  83 89 12 eb                                      bl #0x818c14
00376604  08 00 a0 e1                                      mov r0, r8
00376608  11 87 fe eb                                      bl #0x318254
0037660c  05 00 a0 e1                                      mov r0, r5
00376610  0f 87 fe eb                                      bl #0x318254
00376614  14 37 99 e5                                      ldr r3, [sb, #0x714]
00376618  03 00 53 e3                                      cmp r3, #3
0037661c  02 30 a0 03                                      moveq r3, #2
00376620  14 37 89 05                                      streq r3, [sb, #0x714]
00376624  10 20 9d e5                                      ldr r2, [sp, #0x10]
00376628  02 30 94 e7                                      ldr r3, [r4, r2]
0037662c  a4 24 9d e5                                      ldr r2, [sp, #0x4a4]
00376630  00 30 93 e5                                      ldr r3, [r3]
00376634  03 00 52 e1                                      cmp r2, r3
00376638  8a 00 00 1a                                      bne #0x376868
0037663c  ac d0 8d e2                                      add sp, sp, #0xac
00376640  01 db 8d e2                                      add sp, sp, #0x400
00376644  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00376648  06 00 a0 e1                                      mov r0, r6
0037664c  05 10 a0 e1                                      mov r1, r5
00376650  ac e8 ff eb                                      bl #0x370908
00376654  00 30 e0 e3                                      mvn r3, #0
00376658  cc 36 89 e5                                      str r3, [sb, #0x6cc]
0037665c  cb 56 c9 e5                                      strb r5, [sb, #0x6cb]
00376660  6f ff ff ea                                      b #0x376424
00376664  1c 32 9f e5                                      ldr r3, [pc, #0x21c]
00376668  03 30 94 e7                                      ldr r3, [r4, r3]
0037666c  00 b0 93 e5                                      ldr fp, [r3]
00376670  05 d9 02 eb                                      bl #0x42ca8c
00376674  44 d9 02 eb                                      bl #0x42cb8c
00376678  00 a0 50 e2                                      subs sl, r0, #0
0037667c  b9 ff ff 0a                                      beq #0x376568
00376680  04 72 9f e5                                      ldr r7, [pc, #0x204]
00376684  07 30 94 e7                                      ldr r3, [r4, r7]
00376688  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
0037668c  00 00 52 e3                                      cmp r2, #0
00376690  0d 00 00 0a                                      beq #0x3766cc
00376694  28 00 93 e5                                      ldr r0, [r3, #0x28]
00376698  04 30 d0 e5                                      ldrb r3, [r0, #4]
0037669c  00 00 53 e3                                      cmp r3, #0
003766a0  10 00 00 1a                                      bne #0x3766e8
003766a4  00 10 90 e5                                      ldr r1, [r0]
003766a8  01 10 41 e2                                      sub r1, r1, #1
003766ac  00 00 51 e3                                      cmp r1, #0
003766b0  00 10 80 e5                                      str r1, [r0]
003766b4  00 00 00 1a                                      bne #0x3766bc
003766b8  1e 71 0f eb                                      bl #0x752b38
003766bc  07 30 94 e7                                      ldr r3, [r4, r7]
003766c0  00 20 a0 e3                                      mov r2, #0
003766c4  2c 20 83 e5                                      str r2, [r3, #0x2c]
003766c8  28 20 83 e5                                      str r2, [r3, #0x28]
003766cc  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
003766d0  07 00 94 e7                                      ldr r0, [r4, r7]
003766d4  0a 20 a0 e1                                      mov r2, sl
003766d8  03 10 94 e7                                      ldr r1, [r4, r3]
003766dc  00 30 a0 e3                                      mov r3, #0
003766e0  00 10 91 e5                                      ldr r1, [r1]
003766e4  6d c5 02 eb                                      bl #0x427ca0
003766e8  07 00 94 e7                                      ldr r0, [r4, r7]
003766ec  97 c5 02 eb                                      bl #0x427d50
003766f0  00 20 a0 e3                                      mov r2, #0
003766f4  00 10 a0 e1                                      mov r1, r0
003766f8  00 30 a0 e3                                      mov r3, #0
003766fc  3d 0e 8d e2                                      add r0, sp, #0x3d0
00376700  00 c0 a0 e3                                      mov ip, #0
00376704  f0 20 c0 e1                                      strd r2, r3, [r0]
00376708  c4 c3 cd e5                                      strb ip, [sp, #0x3c4]
0037670c  02 c0 a0 e3                                      mov ip, #2
00376710  c5 c3 cd e5                                      strb ip, [sp, #0x3c5]
00376714  00 c0 a0 e3                                      mov ip, #0
00376718  c8 c3 8d e5                                      str ip, [sp, #0x3c8]
0037671c  d4 c3 9d e5                                      ldr ip, [sp, #0x3d4]
00376720  f1 7f 8d e2                                      add r7, sp, #0x3c4
00376724  0a 00 a0 e1                                      mov r0, sl
00376728  08 c0 87 e5                                      str ip, [r7, #8]
0037672c  0b 20 a0 e1                                      mov r2, fp
00376730  01 c0 a0 e3                                      mov ip, #1
00376734  07 30 a0 e1                                      mov r3, r7
00376738  00 c0 8d e5                                      str ip, [sp]
0037673c  b2 d5 10 eb                                      bl #0x7abe0c
00376740  07 00 a0 e1                                      mov r0, r7
00376744  76 82 10 eb                                      bl #0x797124
00376748  86 ff ff ea                                      b #0x376568
0037674c  09 00 a0 e1                                      mov r0, sb
00376750  47 e2 ff eb                                      bl #0x36f074
00376754  00 00 50 e3                                      cmp r0, #0
00376758  33 00 00 1a                                      bne #0x37682c
0037675c  0a 2a 12 eb                                      bl #0x800f8c
00376760  00 30 90 e5                                      ldr r3, [r0]
00376764  0f e0 a0 e1                                      mov lr, pc
00376768  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0037676c  18 50 8d e2                                      add r5, sp, #0x18
00376770  41 8e 8d e2                                      add r8, sp, #0x410
00376774  00 10 a0 e1                                      mov r1, r0
00376778  2d 6e 86 e2                                      add r6, r6, #0x2d0
0037677c  04 80 88 e2                                      add r8, r8, #4
00376780  05 00 a0 e1                                      mov r0, r5
00376784  31 8a 12 eb                                      bl #0x819050
00376788  ff 7f 8d e2                                      add r7, sp, #0x3fc
0037678c  06 10 a0 e1                                      mov r1, r6
00376790  08 00 a0 e1                                      mov r0, r8
00376794  5f d4 fe eb                                      bl #0x32b918
00376798  06 10 a0 e1                                      mov r1, r6
0037679c  07 00 a0 e1                                      mov r0, r7
003767a0  28 64 9d e5                                      ldr r6, [sp, #0x428]
003767a4  5b d4 fe eb                                      bl #0x32b918
003767a8  0c 04 9d e5                                      ldr r0, [sp, #0x40c]
003767ac  10 34 9d e5                                      ldr r3, [sp, #0x410]
003767b0  06 20 a0 e1                                      mov r2, r6
003767b4  03 10 a0 e3                                      mov r1, #3
003767b8  00 30 63 e0                                      rsb r3, r3, r0
003767bc  05 00 a0 e1                                      mov r0, r5
003767c0  3a 89 12 eb                                      bl #0x818cb0
003767c4  07 00 a0 e1                                      mov r0, r7
003767c8  a1 86 fe eb                                      bl #0x318254
003767cc  08 00 a0 e1                                      mov r0, r8
003767d0  9f 86 fe eb                                      bl #0x318254
003767d4  ec 29 12 eb                                      bl #0x800f8c
003767d8  00 30 90 e5                                      ldr r3, [r0]
003767dc  0f e0 a0 e1                                      mov lr, pc
003767e0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
003767e4  05 10 a0 e1                                      mov r1, r5
003767e8  4f 88 12 eb                                      bl #0x81892c
003767ec  05 00 a0 e1                                      mov r0, r5
003767f0  07 89 12 eb                                      bl #0x818c14
003767f4  86 ff ff ea                                      b #0x376614
003767f8  94 00 9f e5                                      ldr r0, [pc, #0x94]
003767fc  94 10 9f e5                                      ldr r1, [pc, #0x94]
00376800  94 20 9f e5                                      ldr r2, [pc, #0x94]
00376804  00 00 94 e7                                      ldr r0, [r4, r0]
00376808  90 30 9f e5                                      ldr r3, [pc, #0x90]
0037680c  2f c8 00 e3                                      movw ip, #0x82f
00376810  01 10 8f e0                                      add r1, pc, r1
00376814  02 20 8f e0                                      add r2, pc, r2
00376818  03 30 8f e0                                      add r3, pc, r3
0037681c  a8 00 80 e2                                      add r0, r0, #0xa8
00376820  00 c0 8d e5                                      str ip, [sp]
00376824  f6 5d fe eb                                      bl #0x30e004
00376828  ee fe ff ea                                      b #0x3763e8
0037682c  07 50 94 e7                                      ldr r5, [r4, r7]
00376830  54 00 95 e5                                      ldr r0, [r5, #0x54]
00376834  d1 d8 02 eb                                      bl #0x42cb80
00376838  00 00 50 e3                                      cmp r0, #0
0037683c  c6 ff ff 0a                                      beq #0x37675c
00376840  54 00 95 e5                                      ldr r0, [r5, #0x54]
00376844  cd d8 02 eb                                      bl #0x42cb80
00376848  54 10 9f e5                                      ldr r1, [pc, #0x54]
0037684c  54 20 9f e5                                      ldr r2, [pc, #0x54]
00376850  0b 30 a0 e1                                      mov r3, fp
00376854  01 10 8f e0                                      add r1, pc, r1
00376858  02 20 8f e0                                      add r2, pc, r2
0037685c  00 b0 8d e5                                      str fp, [sp]
00376860  e0 db 10 eb                                      bl #0x7ad7e8
00376864  bc ff ff ea                                      b #0x37675c
00376868  a8 5e fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037686c  ac 40 00 00 f0 e6 61 00 c0 39 00 00 f4 37 00 00  .byte 0xac, 0x40, 0x00, 0x00, 0xf0, 0xe6, 0x61, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
0037687c  98 87 54 00 f4 b3 54 00 d8 0f 00 00 4c 42 00 00  .byte 0x98, 0x87, 0x54, 0x00, 0xf4, 0xb3, 0x54, 0x00, 0xd8, 0x0f, 0x00, 0x00, 0x4c, 0x42, 0x00, 0x00
0037688c  c4 35 00 00 8c 33 00 00 c0 19 00 00 c8 7b 54 00  .byte 0xc4, 0x35, 0x00, 0x00, 0x8c, 0x33, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc8, 0x7b, 0x54, 0x00
0037689c  5c b0 54 00 d8 ae 54 00 44 b0 54 00 58 b0 54 00  .byte 0x5c, 0xb0, 0x54, 0x00, 0xd8, 0xae, 0x54, 0x00, 0x44, 0xb0, 0x54, 0x00, 0x58, 0xb0, 0x54, 0x00

; FUNCTION 0x00378a40, declared_size=340, range_size=340, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager10_AddPlayerEiiib
; demangled: PlayerManager::_AddPlayer(int, int, int, bool)
; decoder-mode: arm
00378a40  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00378a44  40 41 9f e5                                      ldr r4, [pc, #0x140]
00378a48  40 51 9f e5                                      ldr r5, [pc, #0x140]
00378a4c  69 de 4d e2                                      sub sp, sp, #0x690
00378a50  08 d0 4d e2                                      sub sp, sp, #8
00378a54  04 40 8f e0                                      add r4, pc, r4
00378a58  04 10 8d e5                                      str r1, [sp, #4]
00378a5c  05 10 94 e7                                      ldr r1, [r4, r5]
00378a60  02 70 a0 e1                                      mov r7, r2
00378a64  03 80 a0 e1                                      mov r8, r3
00378a68  00 20 91 e5                                      ldr r2, [r1]
00378a6c  00 60 a0 e1                                      mov r6, r0
00378a70  b8 a6 dd e5                                      ldrb sl, [sp, #0x6b8]
00378a74  94 26 8d e5                                      str r2, [sp, #0x694]
00378a78  45 13 12 eb                                      bl #0x7fd794
00378a7c  05 30 d0 e5                                      ldrb r3, [r0, #5]
00378a80  00 00 53 e3                                      cmp r3, #0
00378a84  0c 00 00 1a                                      bne #0x378abc
00378a88  06 00 a0 e1                                      mov r0, r6
00378a8c  04 10 9d e5                                      ldr r1, [sp, #4]
00378a90  fa d1 ff eb                                      bl #0x36d280
00378a94  00 00 50 e3                                      cmp r0, #0
00378a98  28 00 00 0a                                      beq #0x378b40
00378a9c  05 30 94 e7                                      ldr r3, [r4, r5]
00378aa0  94 26 9d e5                                      ldr r2, [sp, #0x694]
00378aa4  00 30 93 e5                                      ldr r3, [r3]
00378aa8  03 00 52 e1                                      cmp r2, r3
00378aac  35 00 00 1a                                      bne #0x378b88
00378ab0  a6 df 8d e2                                      add sp, sp, #0x298
00378ab4  01 db 8d e2                                      add sp, sp, #0x400
00378ab8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00378abc  f5 a0 fe eb                                      bl #0x320e98
00378ac0  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
00378ac4  00 00 53 e3                                      cmp r3, #0
00378ac8  ee ff ff 0a                                      beq #0x378a88
00378acc  2e 21 12 eb                                      bl #0x800f8c
00378ad0  00 30 90 e5                                      ldr r3, [r0]
00378ad4  0f e0 a0 e1                                      mov lr, pc
00378ad8  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00378adc  00 00 50 e3                                      cmp r0, #0
00378ae0  e8 ff ff 0a                                      beq #0x378a88
00378ae4  7c 5d 12 eb                                      bl #0x8100dc
00378ae8  7c 5d 12 eb                                      bl #0x8100e0
00378aec  00 00 50 e3                                      cmp r0, #0
00378af0  e4 ff ff 0a                                      beq #0x378a88
00378af4  04 10 9d e5                                      ldr r1, [sp, #4]
00378af8  00 20 a0 e3                                      mov r2, #0
00378afc  06 00 a0 e1                                      mov r0, r6
00378b00  2a d5 ff eb                                      bl #0x36dfb0
00378b04  00 30 90 e5                                      ldr r3, [r0]
00378b08  00 90 a0 e1                                      mov sb, r0
00378b0c  0f e0 a0 e1                                      mov lr, pc
00378b10  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00378b14  00 00 50 e3                                      cmp r0, #0
00378b18  df ff ff 0a                                      beq #0x378a9c
00378b1c  6c a6 c9 e5                                      strb sl, [sb, #0x66c]
00378b20  68 86 89 e5                                      str r8, [sb, #0x668]
00378b24  04 30 9d e5                                      ldr r3, [sp, #4]
00378b28  09 00 a0 e1                                      mov r0, sb
00378b2c  74 76 89 e5                                      str r7, [sb, #0x674]
00378b30  70 36 89 e5                                      str r3, [sb, #0x670]
00378b34  01 10 a0 e3                                      mov r1, #1
00378b38  cb 6a 12 eb                                      bl #0x81366c
00378b3c  0e 00 00 ea                                      b #0x378b7c
00378b40  08 90 8d e2                                      add sb, sp, #8
00378b44  09 00 a0 e1                                      mov r0, sb
00378b48  8f ed ff eb                                      bl #0x37418c
00378b4c  04 30 9d e5                                      ldr r3, [sp, #4]
00378b50  04 10 49 e2                                      sub r1, sb, #4
00378b54  69 0e 86 e2                                      add r0, r6, #0x690
00378b58  78 36 8d e5                                      str r3, [sp, #0x678]
00378b5c  74 a6 cd e5                                      strb sl, [sp, #0x674]
00378b60  70 86 8d e5                                      str r8, [sp, #0x670]
00378b64  7c 76 8d e5                                      str r7, [sp, #0x67c]
00378b68  75 fe ff eb                                      bl #0x378544
00378b6c  09 10 a0 e1                                      mov r1, sb
00378b70  24 ff ff eb                                      bl #0x378808
00378b74  09 00 a0 e1                                      mov r0, sb
00378b78  c5 e1 ff eb                                      bl #0x371294
00378b7c  06 00 a0 e1                                      mov r0, r6
00378b80  61 d8 ff eb                                      bl #0x36ed0c
00378b84  c4 ff ff ea                                      b #0x378a9c
00378b88  e0 55 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00378b8c  3c c0 61 00 ac 40 00 00                          .byte 0x3c, 0xc0, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00378b94, declared_size=236, range_size=236, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager23_CheckRemoteControllersEv
; demangled: PlayerManager::_CheckRemoteControllers()
; decoder-mode: arm
00378b94  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00378b98  0c d0 4d e2                                      sub sp, sp, #0xc
00378b9c  00 50 a0 e1                                      mov r5, r0
00378ba0  fb 12 12 eb                                      bl #0x7fd794
00378ba4  05 30 d0 e5                                      ldrb r3, [r0, #5]
00378ba8  00 00 53 e3                                      cmp r3, #0
00378bac  01 00 00 1a                                      bne #0x378bb8
00378bb0  0c d0 8d e2                                      add sp, sp, #0xc
00378bb4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00378bb8  b6 a0 fe eb                                      bl #0x320e98
00378bbc  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
00378bc0  00 00 53 e3                                      cmp r3, #0
00378bc4  f9 ff ff 0a                                      beq #0x378bb0
00378bc8  ef 20 12 eb                                      bl #0x800f8c
00378bcc  00 30 90 e5                                      ldr r3, [r0]
00378bd0  0f e0 a0 e1                                      mov lr, pc
00378bd4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00378bd8  00 00 50 e3                                      cmp r0, #0
00378bdc  f3 ff ff 0a                                      beq #0x378bb0
00378be0  3d 5d 12 eb                                      bl #0x8100dc
00378be4  3d 5d 12 eb                                      bl #0x8100e0
00378be8  00 00 50 e3                                      cmp r0, #0
00378bec  ef ff ff 0a                                      beq #0x378bb0
00378bf0  e5 20 12 eb                                      bl #0x800f8c
00378bf4  00 30 90 e5                                      ldr r3, [r0]
00378bf8  0f e0 a0 e1                                      mov lr, pc
00378bfc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00378c00  a8 46 95 e5                                      ldr r4, [r5, #0x6a8]
00378c04  ac 36 95 e5                                      ldr r3, [r5, #0x6ac]
00378c08  00 60 a0 e1                                      mov r6, r0
00378c0c  04 00 53 e1                                      cmp r3, r4
00378c10  e6 ff ff 0a                                      beq #0x378bb0
00378c14  00 70 a0 e3                                      mov r7, #0
00378c18  00 80 94 e5                                      ldr r8, [r4]
00378c1c  2e 5d 12 eb                                      bl #0x8100dc
00378c20  08 10 a0 e1                                      mov r1, r8
00378c24  00 20 a0 e3                                      mov r2, #0
00378c28  6c 5d 12 eb                                      bl #0x8101e0
00378c2c  a0 a1 90 e5                                      ldr sl, [r0, #0x1a0]
00378c30  08 10 a0 e1                                      mov r1, r8
00378c34  00 20 a0 e3                                      mov r2, #0
00378c38  0a 00 56 e1                                      cmp r6, sl
00378c3c  05 00 a0 e1                                      mov r0, r5
00378c40  04 40 84 e2                                      add r4, r4, #4
00378c44  09 00 00 0a                                      beq #0x378c70
00378c48  d8 d4 ff eb                                      bl #0x36dfb0
00378c4c  70 36 90 e5                                      ldr r3, [r0, #0x670]
00378c50  08 10 a0 e1                                      mov r1, r8
00378c54  0a 20 a0 e1                                      mov r2, sl
00378c58  03 00 58 e1                                      cmp r8, r3
00378c5c  05 00 a0 e1                                      mov r0, r5
00378c60  00 30 e0 e3                                      mvn r3, #0
00378c64  01 00 00 0a                                      beq #0x378c70
00378c68  00 70 8d e5                                      str r7, [sp]
00378c6c  73 ff ff eb                                      bl #0x378a40
00378c70  ac 36 95 e5                                      ldr r3, [r5, #0x6ac]
00378c74  03 00 54 e1                                      cmp r4, r3
00378c78  e6 ff ff 1a                                      bne #0x378c18
00378c7c  cb ff ff ea                                      b #0x378bb0

; FUNCTION 0x00378c80, declared_size=820, range_size=820, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager22_CheckLocalControllersEv
; demangled: PlayerManager::_CheckLocalControllers()
; decoder-mode: arm
00378c80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00378c84  4c d0 4d e2                                      sub sp, sp, #0x4c
00378c88  00 90 a0 e1                                      mov sb, r0
00378c8c  44 54 ff eb                                      bl #0x34dda4
00378c90  00 50 a0 e1                                      mov r5, r0
00378c94  ae 52 ff eb                                      bl #0x34d754
00378c98  34 30 8d e2                                      add r3, sp, #0x34
00378c9c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00378ca0  fc 32 9f e5                                      ldr r3, [pc, #0x2fc]
00378ca4  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00378ca8  f8 12 9f e5                                      ldr r1, [pc, #0x2f8]
00378cac  03 30 8f e0                                      add r3, pc, r3
00378cb0  28 30 8d e5                                      str r3, [sp, #0x28]
00378cb4  f0 32 9f e5                                      ldr r3, [pc, #0x2f0]
00378cb8  f0 22 9f e5                                      ldr r2, [pc, #0x2f0]
00378cbc  01 00 50 e3                                      cmp r0, #1
00378cc0  01 00 a0 b3                                      movlt r0, #1
00378cc4  03 30 8f e0                                      add r3, pc, r3
00378cc8  04 e0 8e e2                                      add lr, lr, #4
00378ccc  01 10 8f e0                                      add r1, pc, r1
00378cd0  20 20 8d e5                                      str r2, [sp, #0x20]
00378cd4  14 00 8d e5                                      str r0, [sp, #0x14]
00378cd8  2c 30 8d e5                                      str r3, [sp, #0x2c]
00378cdc  00 40 a0 e3                                      mov r4, #0
00378ce0  24 e0 8d e5                                      str lr, [sp, #0x24]
00378ce4  18 10 8d e5                                      str r1, [sp, #0x18]
00378ce8  0d 00 00 ea                                      b #0x378d24
00378cec  00 00 57 e3                                      cmp r7, #0
00378cf0  50 00 00 1a                                      bne #0x378e38
00378cf4  07 20 a0 e1                                      mov r2, r7
00378cf8  09 00 a0 e1                                      mov r0, sb
00378cfc  08 10 a0 e1                                      mov r1, r8
00378d00  aa d4 ff eb                                      bl #0x36dfb0
00378d04  64 36 90 e5                                      ldr r3, [r0, #0x664]
00378d08  00 60 a0 e1                                      mov r6, r0
00378d0c  01 00 73 e3                                      cmn r3, #1
00378d10  50 00 00 0a                                      beq #0x378e58
00378d14  14 00 9d e5                                      ldr r0, [sp, #0x14]
00378d18  01 40 84 e2                                      add r4, r4, #1
00378d1c  00 00 54 e1                                      cmp r4, r0
00378d20  42 00 00 2a                                      bhs #0x378e30
00378d24  00 30 95 e5                                      ldr r3, [r5]
00378d28  04 10 a0 e1                                      mov r1, r4
00378d2c  05 00 a0 e1                                      mov r0, r5
00378d30  0f e0 a0 e1                                      mov lr, pc
00378d34  08 f0 93 e5                                      ldr pc, [r3, #8]
00378d38  58 67 d0 e5                                      ldrb r6, [r0, #0x758]
00378d3c  00 a0 a0 e1                                      mov sl, r0
00378d40  93 12 12 eb                                      bl #0x7fd794
00378d44  05 30 d0 e5                                      ldrb r3, [r0, #5]
00378d48  00 00 54 e3                                      cmp r4, #0
00378d4c  01 60 a0 03                                      moveq r6, #1
00378d50  00 00 53 e3                                      cmp r3, #0
00378d54  0f 00 00 1a                                      bne #0x378d98
00378d58  09 00 a0 e1                                      mov r0, sb
00378d5c  04 10 a0 e1                                      mov r1, r4
00378d60  46 d1 ff eb                                      bl #0x36d280
00378d64  01 00 20 e2                                      eor r0, r0, #1
00378d68  70 70 ef e6                                      uxtb r7, r0
00378d6c  04 80 a0 e1                                      mov r8, r4
00378d70  00 b0 e0 e3                                      mvn fp, #0
00378d74  00 00 56 e3                                      cmp r6, #0
00378d78  db ff ff 1a                                      bne #0x378cec
00378d7c  00 00 57 e3                                      cmp r7, #0
00378d80  e3 ff ff 1a                                      bne #0x378d14
00378d84  08 10 a0 e1                                      mov r1, r8
00378d88  07 20 a0 e1                                      mov r2, r7
00378d8c  09 00 a0 e1                                      mov r0, sb
00378d90  86 d4 ff eb                                      bl #0x36dfb0
00378d94  de ff ff ea                                      b #0x378d14
00378d98  3e a0 fe eb                                      bl #0x320e98
00378d9c  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
00378da0  00 00 53 e3                                      cmp r3, #0
00378da4  eb ff ff 0a                                      beq #0x378d58
00378da8  77 20 12 eb                                      bl #0x800f8c
00378dac  00 30 90 e5                                      ldr r3, [r0]
00378db0  0f e0 a0 e1                                      mov lr, pc
00378db4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00378db8  00 00 50 e3                                      cmp r0, #0
00378dbc  e5 ff ff 0a                                      beq #0x378d58
00378dc0  c5 5c 12 eb                                      bl #0x8100dc
00378dc4  c5 5c 12 eb                                      bl #0x8100e0
00378dc8  00 00 50 e3                                      cmp r0, #0
00378dcc  e1 ff ff 0a                                      beq #0x378d58
00378dd0  c1 5c 12 eb                                      bl #0x8100dc
00378dd4  04 10 a0 e1                                      mov r1, r4
00378dd8  ff 5d 12 eb                                      bl #0x8105dc
00378ddc  00 20 90 e5                                      ldr r2, [r0]
00378de0  0c 00 8d e5                                      str r0, [sp, #0xc]
00378de4  0f e0 a0 e1                                      mov lr, pc
00378de8  5c f0 92 e5                                      ldr pc, [r2, #0x5c]
00378dec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00378df0  00 00 50 e3                                      cmp r0, #0
00378df4  00 b0 e0 03                                      mvneq fp, #0
00378df8  78 81 93 15                                      ldrne r8, [r3, #0x178]
00378dfc  70 c6 93 e5                                      ldr ip, [r3, #0x670]
00378e00  0b 80 a0 01                                      moveq r8, fp
00378e04  a0 b1 93 15                                      ldrne fp, [r3, #0x1a0]
00378e08  0c 70 58 e0                                      subs r7, r8, ip
00378e0c  01 70 a0 13                                      movne r7, #1
00378e10  00 00 57 e3                                      cmp r7, #0
00378e14  47 00 00 1a                                      bne #0x378f38
00378e18  01 00 78 e3                                      cmn r8, #1
00378e1c  d4 ff ff 1a                                      bne #0x378d74
00378e20  14 00 9d e5                                      ldr r0, [sp, #0x14]
00378e24  01 40 84 e2                                      add r4, r4, #1
00378e28  00 00 54 e1                                      cmp r4, r0
00378e2c  bc ff ff 3a                                      blo #0x378d24
00378e30  4c d0 8d e2                                      add sp, sp, #0x4c
00378e34  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00378e38  01 c0 a0 e3                                      mov ip, #1
00378e3c  08 10 a0 e1                                      mov r1, r8
00378e40  0b 20 a0 e1                                      mov r2, fp
00378e44  09 00 a0 e1                                      mov r0, sb
00378e48  04 30 a0 e1                                      mov r3, r4
00378e4c  00 c0 8d e5                                      str ip, [sp]
00378e50  fa fe ff eb                                      bl #0x378a40
00378e54  ae ff ff ea                                      b #0x378d14
00378e58  40 32 d0 e5                                      ldrb r3, [r0, #0x240]
00378e5c  02 00 53 e3                                      cmp r3, #2
00378e60  4a 00 00 0a                                      beq #0x378f90
00378e64  e0 11 9a e5                                      ldr r1, [sl, #0x1e0]
00378e68  e4 01 9a e5                                      ldr r0, [sl, #0x1e4]
00378e6c  4c 57 fe eb                                      bl #0x30eba4
00378e70  fe 15 a0 e3                                      mov r1, #0x3f800000
00378e74  4a 57 fe eb                                      bl #0x30eba4
00378e78  3f 14 a0 e3                                      mov r1, #0x3f000000
00378e7c  ba 57 fe eb                                      bl #0x30ed6c
00378e80  00 10 a0 e1                                      mov r1, r0
00378e84  d8 01 9a e5                                      ldr r0, [sl, #0x1d8]
00378e88  89 55 fe eb                                      bl #0x30e4b4
00378e8c  00 00 50 e3                                      cmp r0, #0
00378e90  24 00 00 0a                                      beq #0x378f28
00378e94  e8 31 da e5                                      ldrb r3, [sl, #0x1e8]
00378e98  00 00 53 e3                                      cmp r3, #0
00378e9c  9c ff ff 1a                                      bne #0x378d14
00378ea0  18 30 9d e5                                      ldr r3, [sp, #0x18]
00378ea4  20 20 9d e5                                      ldr r2, [sp, #0x20]
00378ea8  02 00 93 e7                                      ldr r0, [r3, r2]
00378eac  b8 99 fe eb                                      bl #0x31f594
00378eb0  00 00 50 e3                                      cmp r0, #0
00378eb4  96 ff ff 0a                                      beq #0x378d14
00378eb8  f3 ce 02 eb                                      bl #0x42ca8c
00378ebc  32 cf 02 eb                                      bl #0x42cb8c
00378ec0  02 70 a0 e3                                      mov r7, #2
00378ec4  00 80 a0 e1                                      mov r8, r0
00378ec8  00 30 a0 e3                                      mov r3, #0
00378ecc  7c 06 96 e5                                      ldr r0, [r6, #0x67c]
00378ed0  34 30 cd e5                                      strb r3, [sp, #0x34]
00378ed4  35 70 cd e5                                      strb r7, [sp, #0x35]
00378ed8  94 57 fe eb                                      bl #0x30ed30
00378edc  f0 04 cd e1                                      strd r0, r1, [sp, #0x40]
00378ee0  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00378ee4  24 e0 9d e5                                      ldr lr, [sp, #0x24]
00378ee8  28 10 9d e5                                      ldr r1, [sp, #0x28]
00378eec  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00378ef0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00378ef4  00 c0 8e e5                                      str ip, [lr]
00378ef8  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00378efc  08 00 a0 e1                                      mov r0, r8
00378f00  04 c0 8e e5                                      str ip, [lr, #4]
00378f04  01 c0 a0 e3                                      mov ip, #1
00378f08  00 c0 8d e5                                      str ip, [sp]
00378f0c  35 d2 10 eb                                      bl #0x7ad7e8
00378f10  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00378f14  82 78 10 eb                                      bl #0x797124
00378f18  06 00 a0 e1                                      mov r0, r6
00378f1c  07 10 a0 e1                                      mov r1, r7
00378f20  39 d9 ff eb                                      bl #0x36f40c
00378f24  7a ff ff ea                                      b #0x378d14
00378f28  e8 31 da e5                                      ldrb r3, [sl, #0x1e8]
00378f2c  00 00 53 e3                                      cmp r3, #0
00378f30  77 ff ff 0a                                      beq #0x378d14
00378f34  d9 ff ff ea                                      b #0x378ea0
00378f38  00 10 a0 e3                                      mov r1, #0
00378f3c  01 20 a0 e1                                      mov r2, r1
00378f40  09 00 a0 e1                                      mov r0, sb
00378f44  0c 30 8d e5                                      str r3, [sp, #0xc]
00378f48  10 c0 8d e5                                      str ip, [sp, #0x10]
00378f4c  49 d5 ff eb                                      bl #0x36e478
00378f50  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00378f54  70 26 90 e5                                      ldr r2, [r0, #0x670]
00378f58  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00378f5c  02 00 5c e1                                      cmp ip, r2
00378f60  ac ff ff 1a                                      bne #0x378e18
00378f64  64 26 93 e5                                      ldr r2, [r3, #0x664]
00378f68  01 00 72 e3                                      cmn r2, #1
00378f6c  a9 ff ff 1a                                      bne #0x378e18
00378f70  18 10 9d e5                                      ldr r1, [sp, #0x18]
00378f74  20 00 9d e5                                      ldr r0, [sp, #0x20]
00378f78  00 20 91 e7                                      ldr r2, [r1, r0]
00378f7c  4c 20 92 e5                                      ldr r2, [r2, #0x4c]
00378f80  08 20 92 e5                                      ldr r2, [r2, #8]
00378f84  01 00 72 e3                                      cmn r2, #1
00378f88  64 26 83 15                                      strne r2, [r3, #0x664]
00378f8c  a1 ff ff ea                                      b #0x378e18
00378f90  08 20 a0 e1                                      mov r2, r8
00378f94  09 00 a0 e1                                      mov r0, sb
00378f98  04 10 a0 e1                                      mov r1, r4
00378f9c  44 d9 ff eb                                      bl #0x36f4b4
00378fa0  5b ff ff ea                                      b #0x378d14
; mapping-symbol data/literal pool
00378fa4  fc 8a 54 00 c4 bd 61 00 04 8c 54 00 f4 37 00 00  .byte 0xfc, 0x8a, 0x54, 0x00, 0xc4, 0xbd, 0x61, 0x00, 0x04, 0x8c, 0x54, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00378fb4, declared_size=208, range_size=208, mode=arm
; class-group: PlayerManager
; alias: _ZN13PlayerManager6UpdateEv
; demangled: PlayerManager::Update()
; decoder-mode: arm
00378fb4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00378fb8  00 50 a0 e1                                      mov r5, r0
00378fbc  f9 d1 ff eb                                      bl #0x36d7a8
00378fc0  b4 80 9f e5                                      ldr r8, [pc, #0xb4]
00378fc4  00 60 50 e2                                      subs r6, r0, #0
00378fc8  08 80 8f e0                                      add r8, pc, r8
00378fcc  0e 00 00 da                                      ble #0x37900c
00378fd0  00 40 a0 e3                                      mov r4, #0
00378fd4  04 70 a0 e1                                      mov r7, r4
00378fd8  04 10 a0 e1                                      mov r1, r4
00378fdc  05 00 a0 e1                                      mov r0, r5
00378fe0  00 20 a0 e3                                      mov r2, #0
00378fe4  d6 d5 ff eb                                      bl #0x36e744
00378fe8  60 36 90 e5                                      ldr r3, [r0, #0x660]
00378fec  01 40 84 e2                                      add r4, r4, #1
00378ff0  00 00 53 e3                                      cmp r3, #0
00378ff4  02 00 00 0a                                      beq #0x379004
00378ff8  81 30 d3 e5                                      ldrb r3, [r3, #0x81]
00378ffc  00 00 53 e3                                      cmp r3, #0
00379000  60 76 80 15                                      strne r7, [r0, #0x660]
00379004  06 00 54 e1                                      cmp r4, r6
00379008  f2 ff ff 1a                                      bne #0x378fd8
0037900c  1b 37 d5 e5                                      ldrb r3, [r5, #0x71b]
00379010  00 00 53 e3                                      cmp r3, #0
00379014  0f 00 00 1a                                      bne #0x379058
00379018  05 00 a0 e1                                      mov r0, r5
0037901c  46 e2 ff eb                                      bl #0x37193c
00379020  05 00 a0 e1                                      mov r0, r5
00379024  15 ff ff eb                                      bl #0x378c80
00379028  05 00 a0 e1                                      mov r0, r5
0037902c  d8 fe ff eb                                      bl #0x378b94
00379030  05 00 a0 e1                                      mov r0, r5
00379034  f4 e5 ff eb                                      bl #0x37280c
00379038  05 00 a0 e1                                      mov r0, r5
0037903c  2f f4 ff eb                                      bl #0x376100
00379040  05 00 a0 e1                                      mov r0, r5
00379044  9a f3 ff eb                                      bl #0x375eb4
00379048  30 30 9f e5                                      ldr r3, [pc, #0x30]
0037904c  03 00 98 e7                                      ldr r0, [r8, r3]
00379050  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00379054  1f 00 00 ea                                      b #0x3790d8
00379058  00 10 a0 e3                                      mov r1, #0
0037905c  05 00 a0 e1                                      mov r0, r5
00379060  01 20 a0 e1                                      mov r2, r1
00379064  03 d5 ff eb                                      bl #0x36e478
00379068  e5 34 d0 e5                                      ldrb r3, [r0, #0x4e5]
0037906c  00 00 53 e3                                      cmp r3, #0
00379070  00 30 a0 13                                      movne r3, #0
00379074  1b 37 c5 15                                      strbne r3, [r5, #0x71b]
00379078  e6 ff ff ea                                      b #0x379018
; mapping-symbol data/literal pool
0037907c  c8 ba 61 00 14 27 00 00                          .byte 0xc8, 0xba, 0x61, 0x00, 0x14, 0x27, 0x00, 0x00
