; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d258, declared_size=28, range_size=28, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo6DeleteEP14CNetPlayerInfo
; demangled: PlayerInfo::Delete(CNetPlayerInfo*)
; decoder-mode: arm
0036d258  00 30 50 e2                                      subs r3, r0, #0
0036d25c  10 40 2d e9                                      push {r4, lr}
0036d260  02 00 00 0a                                      beq #0x36d270
0036d264  00 30 93 e5                                      ldr r3, [r3]
0036d268  0f e0 a0 e1                                      mov lr, pc
0036d26c  04 f0 93 e5                                      ldr pc, [r3, #4]
0036d270  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036d48c, declared_size=96, range_size=96, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo8IsActiveEv
; demangled: PlayerInfo::IsActive()
; decoder-mode: arm
0036d48c  10 40 2d e9                                      push {r4, lr}
0036d490  00 40 a0 e1                                      mov r4, r0
0036d494  be 40 12 eb                                      bl #0x7fd794
0036d498  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036d49c  00 00 53 e3                                      cmp r3, #0
0036d4a0  0f 00 00 0a                                      beq #0x36d4e4
0036d4a4  78 31 94 e5                                      ldr r3, [r4, #0x178]
0036d4a8  00 00 53 e3                                      cmp r3, #0
0036d4ac  0a 00 00 ba                                      blt #0x36d4dc
0036d4b0  a0 31 94 e5                                      ldr r3, [r4, #0x1a0]
0036d4b4  00 00 53 e3                                      cmp r3, #0
0036d4b8  07 00 00 ba                                      blt #0x36d4dc
0036d4bc  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
0036d4c0  00 00 53 e3                                      cmp r3, #0
0036d4c4  04 00 00 ba                                      blt #0x36d4dc
0036d4c8  f0 01 94 e5                                      ldr r0, [r4, #0x1f0]
0036d4cc  03 00 50 e3                                      cmp r0, #3
0036d4d0  00 00 a0 13                                      movne r0, #0
0036d4d4  01 00 a0 03                                      moveq r0, #1
0036d4d8  10 80 bd e8                                      pop {r4, pc}
0036d4dc  00 00 a0 e3                                      mov r0, #0
0036d4e0  10 80 bd e8                                      pop {r4, pc}
0036d4e4  01 00 a0 e3                                      mov r0, #1
0036d4e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036fcb0, declared_size=168, range_size=168, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo22SetCharacterNumPotionsEi
; demangled: PlayerInfo::SetCharacterNumPotions(int)
; decoder-mode: arm
0036fcb0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0036fcb4  90 40 9f e5                                      ldr r4, [pc, #0x90]
0036fcb8  90 30 9f e5                                      ldr r3, [pc, #0x90]
0036fcbc  2c d0 4d e2                                      sub sp, sp, #0x2c
0036fcc0  04 40 8f e0                                      add r4, pc, r4
0036fcc4  20 20 9d e5                                      ldr r2, [sp, #0x20]
0036fcc8  03 30 94 e7                                      ldr r3, [r4, r3]
0036fccc  00 c0 e0 e3                                      mvn ip, #0
0036fcd0  02 00 51 e1                                      cmp r1, r2
0036fcd4  00 60 a0 e3                                      mov r6, #0
0036fcd8  00 20 a0 e3                                      mov r2, #0
0036fcdc  08 30 83 e2                                      add r3, r3, #8
0036fce0  10 e0 a0 e3                                      mov lr, #0x10
0036fce4  00 70 a0 e3                                      mov r7, #0
0036fce8  f8 60 cd e1                                      strd r6, r7, [sp, #8]
0036fcec  04 e0 8d e5                                      str lr, [sp, #4]
0036fcf0  14 c0 8d e5                                      str ip, [sp, #0x14]
0036fcf4  1c 20 cd e5                                      strb r2, [sp, #0x1c]
0036fcf8  00 30 8d e5                                      str r3, [sp]
0036fcfc  00 50 a0 e1                                      mov r5, r0
0036fd00  10 c0 8d e5                                      str ip, [sp, #0x10]
0036fd04  18 20 8d e5                                      str r2, [sp, #0x18]
0036fd08  0d 60 a0 01                                      moveq r6, sp
0036fd0c  03 00 00 0a                                      beq #0x36fd20
0036fd10  0d 00 a0 e1                                      mov r0, sp
0036fd14  0d 60 a0 e1                                      mov r6, sp
0036fd18  20 10 8d e5                                      str r1, [sp, #0x20]
0036fd1c  98 94 12 eb                                      bl #0x814f84
0036fd20  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0036fd24  38 33 95 e5                                      ldr r3, [r5, #0x338]
0036fd28  ce 0f 85 e2                                      add r0, r5, #0x338
0036fd2c  02 20 94 e7                                      ldr r2, [r4, r2]
0036fd30  20 10 86 e2                                      add r1, r6, #0x20
0036fd34  08 20 82 e2                                      add r2, r2, #8
0036fd38  00 20 8d e5                                      str r2, [sp]
0036fd3c  0f e0 a0 e1                                      mov lr, pc
0036fd40  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0036fd44  2c d0 8d e2                                      add sp, sp, #0x2c
0036fd48  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0036fd4c  d0 4d 62 00 84 29 00 00 3c 35 00 00              .byte 0xd0, 0x4d, 0x62, 0x00, 0x84, 0x29, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00

; FUNCTION 0x0036fd58, declared_size=172, range_size=172, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo14SetCharacterXPEi
; demangled: PlayerInfo::SetCharacterXP(int)
; decoder-mode: arm
0036fd58  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0036fd5c  94 40 9f e5                                      ldr r4, [pc, #0x94]
0036fd60  94 30 9f e5                                      ldr r3, [pc, #0x94]
0036fd64  2c d0 4d e2                                      sub sp, sp, #0x2c
0036fd68  04 40 8f e0                                      add r4, pc, r4
0036fd6c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0036fd70  03 30 94 e7                                      ldr r3, [r4, r3]
0036fd74  00 c0 e0 e3                                      mvn ip, #0
0036fd78  02 00 51 e1                                      cmp r1, r2
0036fd7c  00 60 a0 e3                                      mov r6, #0
0036fd80  00 20 a0 e3                                      mov r2, #0
0036fd84  08 30 83 e2                                      add r3, r3, #8
0036fd88  20 e0 a0 e3                                      mov lr, #0x20
0036fd8c  00 70 a0 e3                                      mov r7, #0
0036fd90  f8 60 cd e1                                      strd r6, r7, [sp, #8]
0036fd94  04 e0 8d e5                                      str lr, [sp, #4]
0036fd98  14 c0 8d e5                                      str ip, [sp, #0x14]
0036fd9c  1c 20 cd e5                                      strb r2, [sp, #0x1c]
0036fda0  00 30 8d e5                                      str r3, [sp]
0036fda4  00 50 a0 e1                                      mov r5, r0
0036fda8  10 c0 8d e5                                      str ip, [sp, #0x10]
0036fdac  18 20 8d e5                                      str r2, [sp, #0x18]
0036fdb0  0d 60 a0 01                                      moveq r6, sp
0036fdb4  03 00 00 0a                                      beq #0x36fdc8
0036fdb8  0d 00 a0 e1                                      mov r0, sp
0036fdbc  0d 60 a0 e1                                      mov r6, sp
0036fdc0  20 10 8d e5                                      str r1, [sp, #0x20]
0036fdc4  6e 94 12 eb                                      bl #0x814f84
0036fdc8  30 20 9f e5                                      ldr r2, [pc, #0x30]
0036fdcc  42 0e 85 e2                                      add r0, r5, #0x420
0036fdd0  28 34 95 e5                                      ldr r3, [r5, #0x428]
0036fdd4  02 20 94 e7                                      ldr r2, [r4, r2]
0036fdd8  08 00 80 e2                                      add r0, r0, #8
0036fddc  20 10 86 e2                                      add r1, r6, #0x20
0036fde0  08 20 82 e2                                      add r2, r2, #8
0036fde4  00 20 8d e5                                      str r2, [sp]
0036fde8  0f e0 a0 e1                                      mov lr, pc
0036fdec  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0036fdf0  2c d0 8d e2                                      add sp, sp, #0x2c
0036fdf4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0036fdf8  28 4d 62 00 84 29 00 00 c8 10 00 00              .byte 0x28, 0x4d, 0x62, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00

; FUNCTION 0x0036fe04, declared_size=172, range_size=172, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo16SetCharacterGoldEi
; demangled: PlayerInfo::SetCharacterGold(int)
; decoder-mode: arm
0036fe04  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0036fe08  94 40 9f e5                                      ldr r4, [pc, #0x94]
0036fe0c  94 30 9f e5                                      ldr r3, [pc, #0x94]
0036fe10  2c d0 4d e2                                      sub sp, sp, #0x2c
0036fe14  04 40 8f e0                                      add r4, pc, r4
0036fe18  20 20 9d e5                                      ldr r2, [sp, #0x20]
0036fe1c  03 30 94 e7                                      ldr r3, [r4, r3]
0036fe20  00 c0 e0 e3                                      mvn ip, #0
0036fe24  02 00 51 e1                                      cmp r1, r2
0036fe28  00 60 a0 e3                                      mov r6, #0
0036fe2c  00 20 a0 e3                                      mov r2, #0
0036fe30  08 30 83 e2                                      add r3, r3, #8
0036fe34  20 e0 a0 e3                                      mov lr, #0x20
0036fe38  00 70 a0 e3                                      mov r7, #0
0036fe3c  f8 60 cd e1                                      strd r6, r7, [sp, #8]
0036fe40  04 e0 8d e5                                      str lr, [sp, #4]
0036fe44  14 c0 8d e5                                      str ip, [sp, #0x14]
0036fe48  1c 20 cd e5                                      strb r2, [sp, #0x1c]
0036fe4c  00 30 8d e5                                      str r3, [sp]
0036fe50  00 50 a0 e1                                      mov r5, r0
0036fe54  10 c0 8d e5                                      str ip, [sp, #0x10]
0036fe58  18 20 8d e5                                      str r2, [sp, #0x18]
0036fe5c  0d 60 a0 01                                      moveq r6, sp
0036fe60  03 00 00 0a                                      beq #0x36fe74
0036fe64  0d 00 a0 e1                                      mov r0, sp
0036fe68  0d 60 a0 e1                                      mov r6, sp
0036fe6c  20 10 8d e5                                      str r1, [sp, #0x20]
0036fe70  43 94 12 eb                                      bl #0x814f84
0036fe74  30 20 9f e5                                      ldr r2, [pc, #0x30]
0036fe78  47 0e 85 e2                                      add r0, r5, #0x470
0036fe7c  78 34 95 e5                                      ldr r3, [r5, #0x478]
0036fe80  02 20 94 e7                                      ldr r2, [r4, r2]
0036fe84  08 00 80 e2                                      add r0, r0, #8
0036fe88  20 10 86 e2                                      add r1, r6, #0x20
0036fe8c  08 20 82 e2                                      add r2, r2, #8
0036fe90  00 20 8d e5                                      str r2, [sp]
0036fe94  0f e0 a0 e1                                      mov lr, pc
0036fe98  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0036fe9c  2c d0 8d e2                                      add sp, sp, #0x2c
0036fea0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0036fea4  7c 4c 62 00 84 29 00 00 c8 10 00 00              .byte 0x7c, 0x4c, 0x62, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00

; FUNCTION 0x00370908, declared_size=172, range_size=172, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo14SetReadyToRollEb
; demangled: PlayerInfo::SetReadyToRoll(bool)
; decoder-mode: arm
00370908  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0037090c  94 40 9f e5                                      ldr r4, [pc, #0x94]
00370910  94 30 9f e5                                      ldr r3, [pc, #0x94]
00370914  24 d0 4d e2                                      sub sp, sp, #0x24
00370918  04 40 8f e0                                      add r4, pc, r4
0037091c  1d 20 dd e5                                      ldrb r2, [sp, #0x1d]
00370920  03 30 94 e7                                      ldr r3, [r4, r3]
00370924  00 c0 e0 e3                                      mvn ip, #0
00370928  01 00 52 e1                                      cmp r2, r1
0037092c  00 60 a0 e3                                      mov r6, #0
00370930  00 20 a0 e3                                      mov r2, #0
00370934  08 30 83 e2                                      add r3, r3, #8
00370938  01 e0 a0 e3                                      mov lr, #1
0037093c  00 70 a0 e3                                      mov r7, #0
00370940  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00370944  04 e0 8d e5                                      str lr, [sp, #4]
00370948  14 c0 8d e5                                      str ip, [sp, #0x14]
0037094c  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00370950  00 30 8d e5                                      str r3, [sp]
00370954  00 50 a0 e1                                      mov r5, r0
00370958  10 c0 8d e5                                      str ip, [sp, #0x10]
0037095c  18 20 8d e5                                      str r2, [sp, #0x18]
00370960  0d 60 a0 01                                      moveq r6, sp
00370964  03 00 00 0a                                      beq #0x370978
00370968  0d 00 a0 e1                                      mov r0, sp
0037096c  0d 60 a0 e1                                      mov r6, sp
00370970  1d 10 cd e5                                      strb r1, [sp, #0x1d]
00370974  82 91 12 eb                                      bl #0x814f84
00370978  30 20 9f e5                                      ldr r2, [pc, #0x30]
0037097c  52 0e 85 e2                                      add r0, r5, #0x520
00370980  28 35 95 e5                                      ldr r3, [r5, #0x528]
00370984  02 20 94 e7                                      ldr r2, [r4, r2]
00370988  08 00 80 e2                                      add r0, r0, #8
0037098c  1d 10 86 e2                                      add r1, r6, #0x1d
00370990  08 20 82 e2                                      add r2, r2, #8
00370994  00 20 8d e5                                      str r2, [sp]
00370998  0f e0 a0 e1                                      mov lr, pc
0037099c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003709a0  24 d0 8d e2                                      add sp, sp, #0x24
003709a4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003709a8  78 41 62 00 18 30 00 00 c8 0a 00 00              .byte 0x78, 0x41, 0x62, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00

; FUNCTION 0x003709b4, declared_size=232, range_size=232, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo17UpdateReadyToRollEv
; demangled: PlayerInfo::UpdateReadyToRoll()
; decoder-mode: arm
003709b4  70 40 2d e9                                      push {r4, r5, r6, lr}
003709b8  00 50 a0 e1                                      mov r5, r0
003709bc  74 33 12 eb                                      bl #0x7fd794
003709c0  05 30 d0 e5                                      ldrb r3, [r0, #5]
003709c4  c8 40 9f e5                                      ldr r4, [pc, #0xc8]
003709c8  00 00 53 e3                                      cmp r3, #0
003709cc  04 40 8f e0                                      add r4, pc, r4
003709d0  00 00 00 1a                                      bne #0x3709d8
003709d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003709d8  2e c1 fe eb                                      bl #0x320e98
003709dc  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
003709e0  00 00 53 e3                                      cmp r3, #0
003709e4  fa ff ff 0a                                      beq #0x3709d4
003709e8  67 41 12 eb                                      bl #0x800f8c
003709ec  00 30 90 e5                                      ldr r3, [r0]
003709f0  0f e0 a0 e1                                      mov lr, pc
003709f4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
003709f8  00 00 50 e3                                      cmp r0, #0
003709fc  f4 ff ff 0a                                      beq #0x3709d4
00370a00  b5 7d 12 eb                                      bl #0x8100dc
00370a04  b5 7d 12 eb                                      bl #0x8100e0
00370a08  00 00 50 e3                                      cmp r0, #0
00370a0c  f0 ff ff 0a                                      beq #0x3709d4
00370a10  00 30 95 e5                                      ldr r3, [r5]
00370a14  05 00 a0 e1                                      mov r0, r5
00370a18  0f e0 a0 e1                                      mov lr, pc
00370a1c  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00370a20  00 00 50 e3                                      cmp r0, #0
00370a24  ea ff ff 0a                                      beq #0x3709d4
00370a28  05 00 a0 e1                                      mov r0, r5
00370a2c  02 7a 12 eb                                      bl #0x80f23c
00370a30  00 00 50 e3                                      cmp r0, #0
00370a34  e6 ff ff 1a                                      bne #0x3709d4
00370a38  25 15 d5 e5                                      ldrb r1, [r5, #0x525]
00370a3c  00 00 51 e3                                      cmp r1, #0
00370a40  10 00 00 0a                                      beq #0x370a88
00370a44  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00370a48  03 20 94 e7                                      ldr r2, [r4, r3]
00370a4c  40 30 92 e5                                      ldr r3, [r2, #0x40]
00370a50  10 17 d3 e5                                      ldrb r1, [r3, #0x710]
00370a54  00 00 51 e3                                      cmp r1, #0
00370a58  dd ff ff 0a                                      beq #0x3709d4
00370a5c  d0 36 d3 e5                                      ldrb r3, [r3, #0x6d0]
00370a60  00 00 53 e3                                      cmp r3, #0
00370a64  da ff ff 0a                                      beq #0x3709d4
00370a68  38 30 92 e5                                      ldr r3, [r2, #0x38]
00370a6c  60 31 d3 e5                                      ldrb r3, [r3, #0x160]
00370a70  00 00 53 e3                                      cmp r3, #0
00370a74  d6 ff ff 0a                                      beq #0x3709d4
00370a78  05 00 a0 e1                                      mov r0, r5
00370a7c  01 10 a0 e3                                      mov r1, #1
00370a80  70 40 bd e8                                      pop {r4, r5, r6, lr}
00370a84  9f ff ff ea                                      b #0x370908
00370a88  05 00 a0 e1                                      mov r0, r5
00370a8c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00370a90  9c ff ff ea                                      b #0x370908
; mapping-symbol data/literal pool
00370a94  c4 40 62 00 f4 37 00 00                          .byte 0xc4, 0x40, 0x62, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00370a9c, declared_size=172, range_size=172, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo9SetIngameEb
; demangled: PlayerInfo::SetIngame(bool)
; decoder-mode: arm
00370a9c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00370aa0  94 40 9f e5                                      ldr r4, [pc, #0x94]
00370aa4  94 30 9f e5                                      ldr r3, [pc, #0x94]
00370aa8  24 d0 4d e2                                      sub sp, sp, #0x24
00370aac  04 40 8f e0                                      add r4, pc, r4
00370ab0  1d 20 dd e5                                      ldrb r2, [sp, #0x1d]
00370ab4  03 30 94 e7                                      ldr r3, [r4, r3]
00370ab8  00 c0 e0 e3                                      mvn ip, #0
00370abc  01 00 52 e1                                      cmp r2, r1
00370ac0  00 60 a0 e3                                      mov r6, #0
00370ac4  00 20 a0 e3                                      mov r2, #0
00370ac8  08 30 83 e2                                      add r3, r3, #8
00370acc  01 e0 a0 e3                                      mov lr, #1
00370ad0  00 70 a0 e3                                      mov r7, #0
00370ad4  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00370ad8  04 e0 8d e5                                      str lr, [sp, #4]
00370adc  14 c0 8d e5                                      str ip, [sp, #0x14]
00370ae0  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00370ae4  00 30 8d e5                                      str r3, [sp]
00370ae8  00 50 a0 e1                                      mov r5, r0
00370aec  10 c0 8d e5                                      str ip, [sp, #0x10]
00370af0  18 20 8d e5                                      str r2, [sp, #0x18]
00370af4  0d 60 a0 01                                      moveq r6, sp
00370af8  03 00 00 0a                                      beq #0x370b0c
00370afc  0d 00 a0 e1                                      mov r0, sp
00370b00  0d 60 a0 e1                                      mov r6, sp
00370b04  1d 10 cd e5                                      strb r1, [sp, #0x1d]
00370b08  1d 91 12 eb                                      bl #0x814f84
00370b0c  30 20 9f e5                                      ldr r2, [pc, #0x30]
00370b10  13 0d 85 e2                                      add r0, r5, #0x4c0
00370b14  c8 34 95 e5                                      ldr r3, [r5, #0x4c8]
00370b18  02 20 94 e7                                      ldr r2, [r4, r2]
00370b1c  08 00 80 e2                                      add r0, r0, #8
00370b20  1d 10 86 e2                                      add r1, r6, #0x1d
00370b24  08 20 82 e2                                      add r2, r2, #8
00370b28  00 20 8d e5                                      str r2, [sp]
00370b2c  0f e0 a0 e1                                      mov lr, pc
00370b30  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00370b34  24 d0 8d e2                                      add sp, sp, #0x24
00370b38  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00370b3c  e4 3f 62 00 18 30 00 00 c8 0a 00 00              .byte 0xe4, 0x3f, 0x62, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00

; FUNCTION 0x00370b48, declared_size=172, range_size=172, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo14SetDoneLoadingEb
; demangled: PlayerInfo::SetDoneLoading(bool)
; decoder-mode: arm
00370b48  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00370b4c  94 40 9f e5                                      ldr r4, [pc, #0x94]
00370b50  94 30 9f e5                                      ldr r3, [pc, #0x94]
00370b54  24 d0 4d e2                                      sub sp, sp, #0x24
00370b58  04 40 8f e0                                      add r4, pc, r4
00370b5c  1d 20 dd e5                                      ldrb r2, [sp, #0x1d]
00370b60  03 30 94 e7                                      ldr r3, [r4, r3]
00370b64  00 c0 e0 e3                                      mvn ip, #0
00370b68  01 00 52 e1                                      cmp r2, r1
00370b6c  00 60 a0 e3                                      mov r6, #0
00370b70  00 20 a0 e3                                      mov r2, #0
00370b74  08 30 83 e2                                      add r3, r3, #8
00370b78  01 e0 a0 e3                                      mov lr, #1
00370b7c  00 70 a0 e3                                      mov r7, #0
00370b80  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00370b84  04 e0 8d e5                                      str lr, [sp, #4]
00370b88  14 c0 8d e5                                      str ip, [sp, #0x14]
00370b8c  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00370b90  00 30 8d e5                                      str r3, [sp]
00370b94  00 50 a0 e1                                      mov r5, r0
00370b98  10 c0 8d e5                                      str ip, [sp, #0x10]
00370b9c  18 20 8d e5                                      str r2, [sp, #0x18]
00370ba0  0d 60 a0 01                                      moveq r6, sp
00370ba4  03 00 00 0a                                      beq #0x370bb8
00370ba8  0d 00 a0 e1                                      mov r0, sp
00370bac  0d 60 a0 e1                                      mov r6, sp
00370bb0  1d 10 cd e5                                      strb r1, [sp, #0x1d]
00370bb4  f2 90 12 eb                                      bl #0x814f84
00370bb8  30 20 9f e5                                      ldr r2, [pc, #0x30]
00370bbc  05 0c 85 e2                                      add r0, r5, #0x500
00370bc0  08 35 95 e5                                      ldr r3, [r5, #0x508]
00370bc4  02 20 94 e7                                      ldr r2, [r4, r2]
00370bc8  08 00 80 e2                                      add r0, r0, #8
00370bcc  1d 10 86 e2                                      add r1, r6, #0x1d
00370bd0  08 20 82 e2                                      add r2, r2, #8
00370bd4  00 20 8d e5                                      str r2, [sp]
00370bd8  0f e0 a0 e1                                      mov lr, pc
00370bdc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00370be0  24 d0 8d e2                                      add sp, sp, #0x24
00370be4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00370be8  38 3f 62 00 18 30 00 00 c8 0a 00 00              .byte 0x38, 0x3f, 0x62, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00

; FUNCTION 0x00370bf4, declared_size=168, range_size=168, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo22SetCharacterDeathTimerEi
; demangled: PlayerInfo::SetCharacterDeathTimer(int)
; decoder-mode: arm
00370bf4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00370bf8  90 40 9f e5                                      ldr r4, [pc, #0x90]
00370bfc  90 30 9f e5                                      ldr r3, [pc, #0x90]
00370c00  2c d0 4d e2                                      sub sp, sp, #0x2c
00370c04  04 40 8f e0                                      add r4, pc, r4
00370c08  20 20 9d e5                                      ldr r2, [sp, #0x20]
00370c0c  03 30 94 e7                                      ldr r3, [r4, r3]
00370c10  00 c0 e0 e3                                      mvn ip, #0
00370c14  02 00 51 e1                                      cmp r1, r2
00370c18  00 60 a0 e3                                      mov r6, #0
00370c1c  00 20 a0 e3                                      mov r2, #0
00370c20  08 30 83 e2                                      add r3, r3, #8
00370c24  10 e0 a0 e3                                      mov lr, #0x10
00370c28  00 70 a0 e3                                      mov r7, #0
00370c2c  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00370c30  04 e0 8d e5                                      str lr, [sp, #4]
00370c34  14 c0 8d e5                                      str ip, [sp, #0x14]
00370c38  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00370c3c  00 30 8d e5                                      str r3, [sp]
00370c40  00 50 a0 e1                                      mov r5, r0
00370c44  10 c0 8d e5                                      str ip, [sp, #0x10]
00370c48  18 20 8d e5                                      str r2, [sp, #0x18]
00370c4c  0d 60 a0 01                                      moveq r6, sp
00370c50  03 00 00 0a                                      beq #0x370c64
00370c54  0d 00 a0 e1                                      mov r0, sp
00370c58  0d 60 a0 e1                                      mov r6, sp
00370c5c  20 10 8d e5                                      str r1, [sp, #0x20]
00370c60  c7 90 12 eb                                      bl #0x814f84
00370c64  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00370c68  88 33 95 e5                                      ldr r3, [r5, #0x388]
00370c6c  e2 0f 85 e2                                      add r0, r5, #0x388
00370c70  02 20 94 e7                                      ldr r2, [r4, r2]
00370c74  20 10 86 e2                                      add r1, r6, #0x20
00370c78  08 20 82 e2                                      add r2, r2, #8
00370c7c  00 20 8d e5                                      str r2, [sp]
00370c80  0f e0 a0 e1                                      mov lr, pc
00370c84  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00370c88  2c d0 8d e2                                      add sp, sp, #0x2c
00370c8c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00370c90  8c 3e 62 00 84 29 00 00 3c 35 00 00              .byte 0x8c, 0x3e, 0x62, 0x00, 0x84, 0x29, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00

; FUNCTION 0x00370cf8, declared_size=264, range_size=264, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo16ClearLoadingInfoEv
; demangled: PlayerInfo::ClearLoadingInfo()
; decoder-mode: arm
00370cf8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00370cfc  24 d0 4d e2                                      sub sp, sp, #0x24
00370d00  00 30 90 e5                                      ldr r3, [r0]
00370d04  00 50 a0 e1                                      mov r5, r0
00370d08  0f e0 a0 e1                                      mov lr, pc
00370d0c  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00370d10  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
00370d14  00 00 50 e3                                      cmp r0, #0
00370d18  04 40 8f e0                                      add r4, pc, r4
00370d1c  01 00 00 1a                                      bne #0x370d28
00370d20  24 d0 8d e2                                      add sp, sp, #0x24
00370d24  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00370d28  05 00 a0 e1                                      mov r0, r5
00370d2c  00 10 a0 e3                                      mov r1, #0
00370d30  59 ff ff eb                                      bl #0x370a9c
00370d34  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
00370d38  1d 30 dd e5                                      ldrb r3, [sp, #0x1d]
00370d3c  00 10 e0 e3                                      mvn r1, #0
00370d40  02 20 94 e7                                      ldr r2, [r4, r2]
00370d44  00 00 53 e3                                      cmp r3, #0
00370d48  00 60 a0 e3                                      mov r6, #0
00370d4c  00 30 a0 e3                                      mov r3, #0
00370d50  08 20 82 e2                                      add r2, r2, #8
00370d54  01 00 a0 e3                                      mov r0, #1
00370d58  00 70 a0 e3                                      mov r7, #0
00370d5c  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00370d60  04 00 8d e5                                      str r0, [sp, #4]
00370d64  14 10 8d e5                                      str r1, [sp, #0x14]
00370d68  00 20 8d e5                                      str r2, [sp]
00370d6c  10 10 8d e5                                      str r1, [sp, #0x10]
00370d70  18 30 8d e5                                      str r3, [sp, #0x18]
00370d74  1c 30 cd e5                                      strb r3, [sp, #0x1c]
00370d78  0d 60 a0 01                                      moveq r6, sp
00370d7c  03 00 00 0a                                      beq #0x370d90
00370d80  0d 00 a0 e1                                      mov r0, sp
00370d84  0d 60 a0 e1                                      mov r6, sp
00370d88  1d 30 cd e5                                      strb r3, [sp, #0x1d]
00370d8c  7c 90 12 eb                                      bl #0x814f84
00370d90  60 20 9f e5                                      ldr r2, [pc, #0x60]
00370d94  4e 0e 85 e2                                      add r0, r5, #0x4e0
00370d98  e8 34 95 e5                                      ldr r3, [r5, #0x4e8]
00370d9c  02 20 94 e7                                      ldr r2, [r4, r2]
00370da0  1d 10 86 e2                                      add r1, r6, #0x1d
00370da4  08 00 80 e2                                      add r0, r0, #8
00370da8  08 20 82 e2                                      add r2, r2, #8
00370dac  00 20 8d e5                                      str r2, [sp]
00370db0  0f e0 a0 e1                                      mov lr, pc
00370db4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00370db8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00370dbc  05 00 a0 e1                                      mov r0, r5
00370dc0  00 10 a0 e3                                      mov r1, #0
00370dc4  03 30 94 e7                                      ldr r3, [r4, r3]
00370dc8  08 30 83 e2                                      add r3, r3, #8
00370dcc  00 30 8d e5                                      str r3, [sp]
00370dd0  5c ff ff eb                                      bl #0x370b48
00370dd4  05 00 a0 e1                                      mov r0, r5
00370dd8  00 10 a0 e3                                      mov r1, #0
00370ddc  c9 fe ff eb                                      bl #0x370908
00370de0  05 00 a0 e1                                      mov r0, r5
00370de4  00 10 e0 e3                                      mvn r1, #0
00370de8  81 ff ff eb                                      bl #0x370bf4
00370dec  cb ff ff ea                                      b #0x370d20
; mapping-symbol data/literal pool
00370df0  78 3d 62 00 18 30 00 00 c8 0a 00 00 a8 10 00 00  .byte 0x78, 0x3d, 0x62, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00370e48, declared_size=168, range_size=168, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo17SetCharacterLevelEi
; demangled: PlayerInfo::SetCharacterLevel(int)
; decoder-mode: arm
00370e48  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00370e4c  90 40 9f e5                                      ldr r4, [pc, #0x90]
00370e50  90 30 9f e5                                      ldr r3, [pc, #0x90]
00370e54  2c d0 4d e2                                      sub sp, sp, #0x2c
00370e58  04 40 8f e0                                      add r4, pc, r4
00370e5c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00370e60  03 30 94 e7                                      ldr r3, [r4, r3]
00370e64  00 c0 e0 e3                                      mvn ip, #0
00370e68  02 00 51 e1                                      cmp r1, r2
00370e6c  00 60 a0 e3                                      mov r6, #0
00370e70  00 20 a0 e3                                      mov r2, #0
00370e74  08 30 83 e2                                      add r3, r3, #8
00370e78  10 e0 a0 e3                                      mov lr, #0x10
00370e7c  00 70 a0 e3                                      mov r7, #0
00370e80  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00370e84  04 e0 8d e5                                      str lr, [sp, #4]
00370e88  14 c0 8d e5                                      str ip, [sp, #0x14]
00370e8c  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00370e90  00 30 8d e5                                      str r3, [sp]
00370e94  00 50 a0 e1                                      mov r5, r0
00370e98  10 c0 8d e5                                      str ip, [sp, #0x10]
00370e9c  18 20 8d e5                                      str r2, [sp, #0x18]
00370ea0  0d 60 a0 01                                      moveq r6, sp
00370ea4  03 00 00 0a                                      beq #0x370eb8
00370ea8  0d 00 a0 e1                                      mov r0, sp
00370eac  0d 60 a0 e1                                      mov r6, sp
00370eb0  20 10 8d e5                                      str r1, [sp, #0x20]
00370eb4  32 90 12 eb                                      bl #0x814f84
00370eb8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00370ebc  10 33 95 e5                                      ldr r3, [r5, #0x310]
00370ec0  31 0e 85 e2                                      add r0, r5, #0x310
00370ec4  02 20 94 e7                                      ldr r2, [r4, r2]
00370ec8  20 10 86 e2                                      add r1, r6, #0x20
00370ecc  08 20 82 e2                                      add r2, r2, #8
00370ed0  00 20 8d e5                                      str r2, [sp]
00370ed4  0f e0 a0 e1                                      mov lr, pc
00370ed8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00370edc  2c d0 8d e2                                      add sp, sp, #0x2c
00370ee0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00370ee4  38 3c 62 00 84 29 00 00 3c 35 00 00              .byte 0x38, 0x3c, 0x62, 0x00, 0x84, 0x29, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00

; FUNCTION 0x00370ef0, declared_size=168, range_size=168, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo17SetCharacterClassEi
; demangled: PlayerInfo::SetCharacterClass(int)
; decoder-mode: arm
00370ef0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00370ef4  90 40 9f e5                                      ldr r4, [pc, #0x90]
00370ef8  90 30 9f e5                                      ldr r3, [pc, #0x90]
00370efc  2c d0 4d e2                                      sub sp, sp, #0x2c
00370f00  04 40 8f e0                                      add r4, pc, r4
00370f04  20 20 9d e5                                      ldr r2, [sp, #0x20]
00370f08  03 30 94 e7                                      ldr r3, [r4, r3]
00370f0c  00 c0 e0 e3                                      mvn ip, #0
00370f10  02 00 51 e1                                      cmp r1, r2
00370f14  00 60 a0 e3                                      mov r6, #0
00370f18  00 20 a0 e3                                      mov r2, #0
00370f1c  08 30 83 e2                                      add r3, r3, #8
00370f20  10 e0 a0 e3                                      mov lr, #0x10
00370f24  00 70 a0 e3                                      mov r7, #0
00370f28  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00370f2c  04 e0 8d e5                                      str lr, [sp, #4]
00370f30  14 c0 8d e5                                      str ip, [sp, #0x14]
00370f34  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00370f38  00 30 8d e5                                      str r3, [sp]
00370f3c  00 50 a0 e1                                      mov r5, r0
00370f40  10 c0 8d e5                                      str ip, [sp, #0x10]
00370f44  18 20 8d e5                                      str r2, [sp, #0x18]
00370f48  0d 60 a0 01                                      moveq r6, sp
00370f4c  03 00 00 0a                                      beq #0x370f60
00370f50  0d 00 a0 e1                                      mov r0, sp
00370f54  0d 60 a0 e1                                      mov r6, sp
00370f58  20 10 8d e5                                      str r1, [sp, #0x20]
00370f5c  08 90 12 eb                                      bl #0x814f84
00370f60  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00370f64  60 33 95 e5                                      ldr r3, [r5, #0x360]
00370f68  36 0e 85 e2                                      add r0, r5, #0x360
00370f6c  02 20 94 e7                                      ldr r2, [r4, r2]
00370f70  20 10 86 e2                                      add r1, r6, #0x20
00370f74  08 20 82 e2                                      add r2, r2, #8
00370f78  00 20 8d e5                                      str r2, [sp]
00370f7c  0f e0 a0 e1                                      mov lr, pc
00370f80  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00370f84  2c d0 8d e2                                      add sp, sp, #0x2c
00370f88  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00370f8c  90 3b 62 00 84 29 00 00 3c 35 00 00              .byte 0x90, 0x3b, 0x62, 0x00, 0x84, 0x29, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00

; FUNCTION 0x00371294, declared_size=404, range_size=404, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfoD1Ev
; demangled: PlayerInfo::~PlayerInfo()
; decoder-mode: arm
00371294  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00371298  74 61 9f e5                                      ldr r6, [pc, #0x174]
0037129c  74 31 9f e5                                      ldr r3, [pc, #0x174]
003712a0  80 26 90 e5                                      ldr r2, [r0, #0x680]
003712a4  06 60 8f e0                                      add r6, pc, r6
003712a8  03 30 96 e7                                      ldr r3, [r6, r3]
003712ac  00 00 52 e3                                      cmp r2, #0
003712b0  00 50 a0 e1                                      mov r5, r0
003712b4  08 30 83 e2                                      add r3, r3, #8
003712b8  00 30 80 e5                                      str r3, [r0]
003712bc  05 00 00 0a                                      beq #0x3712d8
003712c0  00 30 92 e5                                      ldr r3, [r2]
003712c4  02 00 a0 e1                                      mov r0, r2
003712c8  0f e0 a0 e1                                      mov lr, pc
003712cc  04 f0 93 e5                                      ldr pc, [r3, #4]
003712d0  00 30 a0 e3                                      mov r3, #0
003712d4  80 36 85 e5                                      str r3, [r5, #0x680]
003712d8  15 7d 85 e2                                      add r7, r5, #0x540
003712dc  00 30 a0 e3                                      mov r3, #0
003712e0  80 36 85 e5                                      str r3, [r5, #0x680]
003712e4  08 70 87 e2                                      add r7, r7, #8
003712e8  66 4e 85 e2                                      add r4, r5, #0x660
003712ec  28 30 34 e5                                      ldr r3, [r4, #-0x28]!
003712f0  04 00 a0 e1                                      mov r0, r4
003712f4  0f e0 a0 e1                                      mov lr, pc
003712f8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
003712fc  07 00 54 e1                                      cmp r4, r7
00371300  f9 ff ff 1a                                      bne #0x3712ec
00371304  10 41 9f e5                                      ldr r4, [pc, #0x110]
00371308  10 71 9f e5                                      ldr r7, [pc, #0x110]
0037130c  01 8b 85 e2                                      add r8, r5, #0x400
00371310  04 30 96 e7                                      ldr r3, [r6, r4]
00371314  07 20 96 e7                                      ldr r2, [r6, r7]
00371318  08 30 83 e2                                      add r3, r3, #8
0037131c  08 20 82 e2                                      add r2, r2, #8
00371320  28 34 85 e5                                      str r3, [r5, #0x428]
00371324  00 24 85 e5                                      str r2, [r5, #0x400]
00371328  28 35 85 e5                                      str r3, [r5, #0x528]
0037132c  08 35 85 e5                                      str r3, [r5, #0x508]
00371330  e8 34 85 e5                                      str r3, [r5, #0x4e8]
00371334  c8 34 85 e5                                      str r3, [r5, #0x4c8]
00371338  a0 34 85 e5                                      str r3, [r5, #0x4a0]
0037133c  78 34 85 e5                                      str r3, [r5, #0x478]
00371340  50 34 85 e5                                      str r3, [r5, #0x450]
00371344  20 00 98 e5                                      ldr r0, [r8, #0x20]
00371348  00 00 50 e3                                      cmp r0, #0
0037134c  02 00 00 0a                                      beq #0x37135c
00371350  3a 7c fe eb                                      bl #0x310440
00371354  00 30 a0 e3                                      mov r3, #0
00371358  20 30 88 e5                                      str r3, [r8, #0x20]
0037135c  04 20 96 e7                                      ldr r2, [r6, r4]
00371360  07 30 96 e7                                      ldr r3, [r6, r7]
00371364  f6 8f 85 e2                                      add r8, r5, #0x3d8
00371368  08 20 82 e2                                      add r2, r2, #8
0037136c  08 30 83 e2                                      add r3, r3, #8
00371370  00 24 85 e5                                      str r2, [r5, #0x400]
00371374  d8 33 85 e5                                      str r3, [r5, #0x3d8]
00371378  20 00 98 e5                                      ldr r0, [r8, #0x20]
0037137c  00 00 50 e3                                      cmp r0, #0
00371380  02 00 00 0a                                      beq #0x371390
00371384  2d 7c fe eb                                      bl #0x310440
00371388  00 30 a0 e3                                      mov r3, #0
0037138c  20 30 88 e5                                      str r3, [r8, #0x20]
00371390  07 30 96 e7                                      ldr r3, [r6, r7]
00371394  04 20 96 e7                                      ldr r2, [r6, r4]
00371398  3b 7e 85 e2                                      add r7, r5, #0x3b0
0037139c  08 30 83 e2                                      add r3, r3, #8
003713a0  08 20 82 e2                                      add r2, r2, #8
003713a4  d8 23 85 e5                                      str r2, [r5, #0x3d8]
003713a8  b0 33 85 e5                                      str r3, [r5, #0x3b0]
003713ac  20 00 97 e5                                      ldr r0, [r7, #0x20]
003713b0  00 00 50 e3                                      cmp r0, #0
003713b4  02 00 00 0a                                      beq #0x3713c4
003713b8  20 7c fe eb                                      bl #0x310440
003713bc  00 30 a0 e3                                      mov r3, #0
003713c0  20 30 87 e5                                      str r3, [r7, #0x20]
003713c4  58 30 9f e5                                      ldr r3, [pc, #0x58]
003713c8  04 40 96 e7                                      ldr r4, [r6, r4]
003713cc  2d 0e 85 e2                                      add r0, r5, #0x2d0
003713d0  03 30 96 e7                                      ldr r3, [r6, r3]
003713d4  08 40 84 e2                                      add r4, r4, #8
003713d8  b0 43 85 e5                                      str r4, [r5, #0x3b0]
003713dc  08 30 83 e2                                      add r3, r3, #8
003713e0  b0 32 85 e5                                      str r3, [r5, #0x2b0]
003713e4  88 43 85 e5                                      str r4, [r5, #0x388]
003713e8  60 43 85 e5                                      str r4, [r5, #0x360]
003713ec  38 43 85 e5                                      str r4, [r5, #0x338]
003713f0  10 43 85 e5                                      str r4, [r5, #0x310]
003713f4  e8 42 85 e5                                      str r4, [r5, #0x2e8]
003713f8  95 9b fe eb                                      bl #0x318254
003713fc  88 42 85 e5                                      str r4, [r5, #0x288]
00371400  b0 42 85 e5                                      str r4, [r5, #0x2b0]
00371404  05 00 a0 e1                                      mov r0, r5
00371408  b9 78 12 eb                                      bl #0x80f6f4
0037140c  05 00 a0 e1                                      mov r0, r5
00371410  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00371414  ec 37 62 00 74 2d 00 00 a8 10 00 00 ec 2a 00 00  .byte 0xec, 0x37, 0x62, 0x00, 0x74, 0x2d, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xec, 0x2a, 0x00, 0x00
00371424  30 3e 00 00                                      .byte 0x30, 0x3e, 0x00, 0x00

; FUNCTION 0x00371670, declared_size=28, range_size=28, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfoD0Ev
; demangled: PlayerInfo::~PlayerInfo()
; decoder-mode: arm
00371670  10 40 2d e9                                      push {r4, lr}
00371674  00 40 a0 e1                                      mov r4, r0
00371678  05 ff ff eb                                      bl #0x371294
0037167c  04 00 a0 e1                                      mov r0, r4
00371680  6e 7b fe eb                                      bl #0x310440
00371684  04 00 a0 e1                                      mov r0, r4
00371688  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0037168c, declared_size=404, range_size=404, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfoD2Ev
; demangled: PlayerInfo::~PlayerInfo()
; decoder-mode: arm
0037168c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00371690  74 61 9f e5                                      ldr r6, [pc, #0x174]
00371694  74 31 9f e5                                      ldr r3, [pc, #0x174]
00371698  80 26 90 e5                                      ldr r2, [r0, #0x680]
0037169c  06 60 8f e0                                      add r6, pc, r6
003716a0  03 30 96 e7                                      ldr r3, [r6, r3]
003716a4  00 00 52 e3                                      cmp r2, #0
003716a8  00 50 a0 e1                                      mov r5, r0
003716ac  08 30 83 e2                                      add r3, r3, #8
003716b0  00 30 80 e5                                      str r3, [r0]
003716b4  05 00 00 0a                                      beq #0x3716d0
003716b8  00 30 92 e5                                      ldr r3, [r2]
003716bc  02 00 a0 e1                                      mov r0, r2
003716c0  0f e0 a0 e1                                      mov lr, pc
003716c4  04 f0 93 e5                                      ldr pc, [r3, #4]
003716c8  00 30 a0 e3                                      mov r3, #0
003716cc  80 36 85 e5                                      str r3, [r5, #0x680]
003716d0  15 7d 85 e2                                      add r7, r5, #0x540
003716d4  00 30 a0 e3                                      mov r3, #0
003716d8  80 36 85 e5                                      str r3, [r5, #0x680]
003716dc  08 70 87 e2                                      add r7, r7, #8
003716e0  66 4e 85 e2                                      add r4, r5, #0x660
003716e4  28 30 34 e5                                      ldr r3, [r4, #-0x28]!
003716e8  04 00 a0 e1                                      mov r0, r4
003716ec  0f e0 a0 e1                                      mov lr, pc
003716f0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
003716f4  07 00 54 e1                                      cmp r4, r7
003716f8  f9 ff ff 1a                                      bne #0x3716e4
003716fc  10 41 9f e5                                      ldr r4, [pc, #0x110]
00371700  10 71 9f e5                                      ldr r7, [pc, #0x110]
00371704  01 8b 85 e2                                      add r8, r5, #0x400
00371708  04 30 96 e7                                      ldr r3, [r6, r4]
0037170c  07 20 96 e7                                      ldr r2, [r6, r7]
00371710  08 30 83 e2                                      add r3, r3, #8
00371714  08 20 82 e2                                      add r2, r2, #8
00371718  28 34 85 e5                                      str r3, [r5, #0x428]
0037171c  00 24 85 e5                                      str r2, [r5, #0x400]
00371720  28 35 85 e5                                      str r3, [r5, #0x528]
00371724  08 35 85 e5                                      str r3, [r5, #0x508]
00371728  e8 34 85 e5                                      str r3, [r5, #0x4e8]
0037172c  c8 34 85 e5                                      str r3, [r5, #0x4c8]
00371730  a0 34 85 e5                                      str r3, [r5, #0x4a0]
00371734  78 34 85 e5                                      str r3, [r5, #0x478]
00371738  50 34 85 e5                                      str r3, [r5, #0x450]
0037173c  20 00 98 e5                                      ldr r0, [r8, #0x20]
00371740  00 00 50 e3                                      cmp r0, #0
00371744  02 00 00 0a                                      beq #0x371754
00371748  3c 7b fe eb                                      bl #0x310440
0037174c  00 30 a0 e3                                      mov r3, #0
00371750  20 30 88 e5                                      str r3, [r8, #0x20]
00371754  04 20 96 e7                                      ldr r2, [r6, r4]
00371758  07 30 96 e7                                      ldr r3, [r6, r7]
0037175c  f6 8f 85 e2                                      add r8, r5, #0x3d8
00371760  08 20 82 e2                                      add r2, r2, #8
00371764  08 30 83 e2                                      add r3, r3, #8
00371768  00 24 85 e5                                      str r2, [r5, #0x400]
0037176c  d8 33 85 e5                                      str r3, [r5, #0x3d8]
00371770  20 00 98 e5                                      ldr r0, [r8, #0x20]
00371774  00 00 50 e3                                      cmp r0, #0
00371778  02 00 00 0a                                      beq #0x371788
0037177c  2f 7b fe eb                                      bl #0x310440
00371780  00 30 a0 e3                                      mov r3, #0
00371784  20 30 88 e5                                      str r3, [r8, #0x20]
00371788  07 30 96 e7                                      ldr r3, [r6, r7]
0037178c  04 20 96 e7                                      ldr r2, [r6, r4]
00371790  3b 7e 85 e2                                      add r7, r5, #0x3b0
00371794  08 30 83 e2                                      add r3, r3, #8
00371798  08 20 82 e2                                      add r2, r2, #8
0037179c  d8 23 85 e5                                      str r2, [r5, #0x3d8]
003717a0  b0 33 85 e5                                      str r3, [r5, #0x3b0]
003717a4  20 00 97 e5                                      ldr r0, [r7, #0x20]
003717a8  00 00 50 e3                                      cmp r0, #0
003717ac  02 00 00 0a                                      beq #0x3717bc
003717b0  22 7b fe eb                                      bl #0x310440
003717b4  00 30 a0 e3                                      mov r3, #0
003717b8  20 30 87 e5                                      str r3, [r7, #0x20]
003717bc  58 30 9f e5                                      ldr r3, [pc, #0x58]
003717c0  04 40 96 e7                                      ldr r4, [r6, r4]
003717c4  2d 0e 85 e2                                      add r0, r5, #0x2d0
003717c8  03 30 96 e7                                      ldr r3, [r6, r3]
003717cc  08 40 84 e2                                      add r4, r4, #8
003717d0  b0 43 85 e5                                      str r4, [r5, #0x3b0]
003717d4  08 30 83 e2                                      add r3, r3, #8
003717d8  b0 32 85 e5                                      str r3, [r5, #0x2b0]
003717dc  88 43 85 e5                                      str r4, [r5, #0x388]
003717e0  60 43 85 e5                                      str r4, [r5, #0x360]
003717e4  38 43 85 e5                                      str r4, [r5, #0x338]
003717e8  10 43 85 e5                                      str r4, [r5, #0x310]
003717ec  e8 42 85 e5                                      str r4, [r5, #0x2e8]
003717f0  97 9a fe eb                                      bl #0x318254
003717f4  88 42 85 e5                                      str r4, [r5, #0x288]
003717f8  b0 42 85 e5                                      str r4, [r5, #0x2b0]
003717fc  05 00 a0 e1                                      mov r0, r5
00371800  bb 77 12 eb                                      bl #0x80f6f4
00371804  05 00 a0 e1                                      mov r0, r5
00371808  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0037180c  f4 33 62 00 74 2d 00 00 a8 10 00 00 ec 2a 00 00  .byte 0xf4, 0x33, 0x62, 0x00, 0x74, 0x2d, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xec, 0x2a, 0x00, 0x00
0037181c  30 3e 00 00                                      .byte 0x30, 0x3e, 0x00, 0x00

; FUNCTION 0x00371ccc, declared_size=180, range_size=180, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo16SetCharacterNameESs
; demangled: PlayerInfo::SetCharacterName(std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
00371ccc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00371cd0  98 40 9f e5                                      ldr r4, [pc, #0x98]
00371cd4  98 30 9f e5                                      ldr r3, [pc, #0x98]
00371cd8  5c d0 4d e2                                      sub sp, sp, #0x5c
00371cdc  04 40 8f e0                                      add r4, pc, r4
00371ce0  03 60 94 e7                                      ldr r6, [r4, r3]
00371ce4  3c 50 8d e2                                      add r5, sp, #0x3c
00371ce8  00 80 a0 e1                                      mov r8, r0
00371cec  00 30 96 e5                                      ldr r3, [r6]
00371cf0  05 00 a0 e1                                      mov r0, r5
00371cf4  20 70 8d e2                                      add r7, sp, #0x20
00371cf8  54 30 8d e5                                      str r3, [sp, #0x54]
00371cfc  05 e7 fe eb                                      bl #0x32b918
00371d00  05 10 a0 e1                                      mov r1, r5
00371d04  0d 00 a0 e1                                      mov r0, sp
00371d08  b7 ff ff eb                                      bl #0x371bec
00371d0c  07 10 a0 e1                                      mov r1, r7
00371d10  2b 0e 88 e2                                      add r0, r8, #0x2b0
00371d14  b0 32 98 e5                                      ldr r3, [r8, #0x2b0]
00371d18  0f e0 a0 e1                                      mov lr, pc
00371d1c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00371d20  50 30 9f e5                                      ldr r3, [pc, #0x50]
00371d24  07 00 a0 e1                                      mov r0, r7
00371d28  0d a0 a0 e1                                      mov sl, sp
00371d2c  03 30 94 e7                                      ldr r3, [r4, r3]
00371d30  08 30 83 e2                                      add r3, r3, #8
00371d34  00 30 8d e5                                      str r3, [sp]
00371d38  45 99 fe eb                                      bl #0x318254
00371d3c  38 30 9f e5                                      ldr r3, [pc, #0x38]
00371d40  05 00 a0 e1                                      mov r0, r5
00371d44  03 30 94 e7                                      ldr r3, [r4, r3]
00371d48  08 30 83 e2                                      add r3, r3, #8
00371d4c  00 30 8d e5                                      str r3, [sp]
00371d50  3f 99 fe eb                                      bl #0x318254
00371d54  54 20 9d e5                                      ldr r2, [sp, #0x54]
00371d58  00 30 96 e5                                      ldr r3, [r6]
00371d5c  03 00 52 e1                                      cmp r2, r3
00371d60  01 00 00 1a                                      bne #0x371d6c
00371d64  5c d0 8d e2                                      add sp, sp, #0x5c
00371d68  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00371d6c  67 71 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00371d70  b4 2d 62 00 ac 40 00 00 30 3e 00 00 a8 10 00 00  .byte 0xb4, 0x2d, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x3e, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00373bdc, declared_size=1456, range_size=1456, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo5ResetEv
; demangled: PlayerInfo::Reset()
; decoder-mode: arm
00373bdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00373be0  7c 55 9f e5                                      ldr r5, [pc, #0x57c]
00373be4  7c 15 9f e5                                      ldr r1, [pc, #0x57c]
00373be8  5f df 4d e2                                      sub sp, sp, #0x17c
00373bec  05 50 8f e0                                      add r5, pc, r5
00373bf0  01 30 95 e7                                      ldr r3, [r5, r1]
00373bf4  00 40 a0 e1                                      mov r4, r0
00373bf8  14 10 8d e5                                      str r1, [sp, #0x14]
00373bfc  00 30 93 e5                                      ldr r3, [r3]
00373c00  57 6f 8d e2                                      add r6, sp, #0x15c
00373c04  00 70 a0 e3                                      mov r7, #0
00373c08  74 31 8d e5                                      str r3, [sp, #0x174]
00373c0c  9a 6d 12 eb                                      bl #0x80f27c
00373c10  54 15 9f e5                                      ldr r1, [pc, #0x554]
00373c14  01 30 a0 e3                                      mov r3, #1
00373c18  6c 36 c4 e5                                      strb r3, [r4, #0x66c]
00373c1c  45 2f 8d e2                                      add r2, sp, #0x114
00373c20  01 10 8f e0                                      add r1, pc, r1
00373c24  60 76 84 e5                                      str r7, [r4, #0x660]
00373c28  06 00 a0 e1                                      mov r0, r6
00373c2c  2e 81 fe eb                                      bl #0x3140ec
00373c30  06 10 a0 e1                                      mov r1, r6
00373c34  04 00 a0 e1                                      mov r0, r4
00373c38  23 f8 ff eb                                      bl #0x371ccc
00373c3c  06 00 a0 e1                                      mov r0, r6
00373c40  83 91 fe eb                                      bl #0x318254
00373c44  04 00 a0 e1                                      mov r0, r4
00373c48  00 10 e0 e3                                      mvn r1, #0
00373c4c  7d f4 ff eb                                      bl #0x370e48
00373c50  04 00 a0 e1                                      mov r0, r4
00373c54  00 10 e0 e3                                      mvn r1, #0
00373c58  14 f0 ff eb                                      bl #0x36fcb0
00373c5c  04 00 a0 e1                                      mov r0, r4
00373c60  00 10 e0 e3                                      mvn r1, #0
00373c64  a1 f4 ff eb                                      bl #0x370ef0
00373c68  00 10 e0 e3                                      mvn r1, #0
00373c6c  04 00 a0 e1                                      mov r0, r4
00373c70  df f3 ff eb                                      bl #0x370bf4
00373c74  07 20 a0 e1                                      mov r2, r7
00373c78  46 1f 8d e2                                      add r1, sp, #0x118
00373c7c  00 30 e0 e3                                      mvn r3, #0
00373c80  02 30 c1 e7                                      strb r3, [r1, r2]
00373c84  01 20 82 e2                                      add r2, r2, #1
00373c88  24 00 52 e3                                      cmp r2, #0x24
00373c8c  00 60 e0 e3                                      mvn r6, #0
00373c90  fa ff ff 1a                                      bne #0x373c80
00373c94  3b 0e 84 e2                                      add r0, r4, #0x3b0
00373c98  cc f0 ff eb                                      bl #0x36ffd0
00373c9c  11 1e 8d e2                                      add r1, sp, #0x110
00373ca0  03 20 a0 e3                                      mov r2, #3
00373ca4  f6 0f 84 e2                                      add r0, r4, #0x3d8
00373ca8  10 61 cd e5                                      strb r6, [sp, #0x110]
00373cac  11 61 cd e5                                      strb r6, [sp, #0x111]
00373cb0  12 61 cd e5                                      strb r6, [sp, #0x112]
00373cb4  67 f1 ff eb                                      bl #0x370258
00373cb8  00 20 a0 e3                                      mov r2, #0
00373cbc  4f 1f 8d e2                                      add r1, sp, #0x13c
00373cc0  02 60 c1 e7                                      strb r6, [r1, r2]
00373cc4  01 20 82 e2                                      add r2, r2, #1
00373cc8  1e 00 52 e3                                      cmp r2, #0x1e
00373ccc  fb ff ff 1a                                      bne #0x373cc0
00373cd0  98 34 9f e5                                      ldr r3, [pc, #0x498]
00373cd4  01 0b 84 e2                                      add r0, r4, #0x400
00373cd8  94 94 9f e5                                      ldr sb, [pc, #0x494]
00373cdc  10 30 8d e5                                      str r3, [sp, #0x10]
00373ce0  70 f1 ff eb                                      bl #0x3702a8
00373ce4  04 00 a0 e1                                      mov r0, r4
00373ce8  00 10 a0 e3                                      mov r1, #0
00373cec  19 f0 ff eb                                      bl #0x36fd58
00373cf0  00 10 a0 e3                                      mov r1, #0
00373cf4  04 00 a0 e1                                      mov r0, r4
00373cf8  41 f0 ff eb                                      bl #0x36fe04
00373cfc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00373d00  70 e4 9f e5                                      ldr lr, [pc, #0x470]
00373d04  40 10 8d e2                                      add r1, sp, #0x40
00373d08  0c 30 95 e7                                      ldr r3, [r5, ip]
00373d0c  00 60 a0 e3                                      mov r6, #0
00373d10  2d b3 a0 e3                                      mov fp, #0xb4000000
00373d14  08 30 83 e2                                      add r3, r3, #8
00373d18  20 20 81 e2                                      add r2, r1, #0x20
00373d1c  00 e0 8d e5                                      str lr, [sp]
00373d20  0c 10 8d e5                                      str r1, [sp, #0xc]
00373d24  4b bb a0 e1                                      asr fp, fp, #0x16
00373d28  04 30 8d e5                                      str r3, [sp, #4]
00373d2c  04 70 a0 e1                                      mov r7, r4
00373d30  00 a0 e0 e3                                      mvn sl, #0
00373d34  06 80 a0 e1                                      mov r8, r6
00373d38  08 20 8d e5                                      str r2, [sp, #8]
00373d3c  10 30 a0 e3                                      mov r3, #0x10
00373d40  44 30 8d e5                                      str r3, [sp, #0x44]
00373d44  00 20 a0 e3                                      mov r2, #0
00373d48  00 30 a0 e3                                      mov r3, #0
00373d4c  5e cf 8d e2                                      add ip, sp, #0x178
00373d50  fb 20 8c e1                                      strd r2, r3, [ip, fp]
00373d54  60 30 9d e5                                      ldr r3, [sp, #0x60]
00373d58  04 e0 9d e5                                      ldr lr, [sp, #4]
00373d5c  50 a0 8d e5                                      str sl, [sp, #0x50]
00373d60  00 00 53 e3                                      cmp r3, #0
00373d64  54 a0 8d e5                                      str sl, [sp, #0x54]
00373d68  58 80 8d e5                                      str r8, [sp, #0x58]
00373d6c  5c 80 cd e5                                      strb r8, [sp, #0x5c]
00373d70  40 e0 8d e5                                      str lr, [sp, #0x40]
00373d74  02 00 00 0a                                      beq #0x373d84
00373d78  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00373d7c  60 80 8d e5                                      str r8, [sp, #0x60]
00373d80  7f 84 12 eb                                      bl #0x814f84
00373d84  00 10 9d e5                                      ldr r1, [sp]
00373d88  28 20 a0 e3                                      mov r2, #0x28
00373d8c  92 06 00 e0                                      mul r0, r2, r6
00373d90  01 30 95 e7                                      ldr r3, [r5, r1]
00373d94  15 0d 80 e2                                      add r0, r0, #0x540
00373d98  08 00 80 e2                                      add r0, r0, #8
00373d9c  08 30 83 e2                                      add r3, r3, #8
00373da0  40 30 8d e5                                      str r3, [sp, #0x40]
00373da4  48 35 97 e5                                      ldr r3, [r7, #0x548]
00373da8  00 00 84 e0                                      add r0, r4, r0
00373dac  08 10 9d e5                                      ldr r1, [sp, #8]
00373db0  0f e0 a0 e1                                      mov lr, pc
00373db4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00373db8  09 30 95 e7                                      ldr r3, [r5, sb]
00373dbc  01 60 86 e2                                      add r6, r6, #1
00373dc0  07 00 56 e3                                      cmp r6, #7
00373dc4  08 30 83 e2                                      add r3, r3, #8
00373dc8  40 30 8d e5                                      str r3, [sp, #0x40]
00373dcc  28 70 87 e2                                      add r7, r7, #0x28
00373dd0  d9 ff ff 1a                                      bne #0x373d3c
00373dd4  10 30 9d e5                                      ldr r3, [sp, #0x10]
00373dd8  aa 14 a0 e3                                      mov r1, #0xaa000000
00373ddc  41 1b a0 e1                                      asr r1, r1, #0x16
00373de0  03 00 95 e7                                      ldr r0, [r5, r3]
00373de4  38 30 9d e5                                      ldr r3, [sp, #0x38]
00373de8  00 60 a0 e3                                      mov r6, #0
00373dec  00 70 a0 e3                                      mov r7, #0
00373df0  5e cf 8d e2                                      add ip, sp, #0x178
00373df4  00 20 e0 e3                                      mvn r2, #0
00373df8  f1 60 8c e1                                      strd r6, r7, [ip, r1]
00373dfc  00 00 53 e3                                      cmp r3, #0
00373e00  08 00 80 e2                                      add r0, r0, #8
00373e04  00 30 a0 e3                                      mov r3, #0
00373e08  08 10 a0 e3                                      mov r1, #8
00373e0c  1c 10 8d e5                                      str r1, [sp, #0x1c]
00373e10  2c 20 8d e5                                      str r2, [sp, #0x2c]
00373e14  18 00 8d e5                                      str r0, [sp, #0x18]
00373e18  18 60 8d 02                                      addeq r6, sp, #0x18
00373e1c  78 26 84 e5                                      str r2, [r4, #0x678]
00373e20  28 20 8d e5                                      str r2, [sp, #0x28]
00373e24  30 30 8d e5                                      str r3, [sp, #0x30]
00373e28  34 30 cd e5                                      strb r3, [sp, #0x34]
00373e2c  03 00 00 0a                                      beq #0x373e40
00373e30  18 60 8d e2                                      add r6, sp, #0x18
00373e34  06 00 a0 e1                                      mov r0, r6
00373e38  38 30 8d e5                                      str r3, [sp, #0x38]
00373e3c  50 84 12 eb                                      bl #0x814f84
00373e40  34 23 9f e5                                      ldr r2, [pc, #0x334]
00373e44  20 10 86 e2                                      add r1, r6, #0x20
00373e48  88 32 94 e5                                      ldr r3, [r4, #0x288]
00373e4c  02 20 95 e7                                      ldr r2, [r5, r2]
00373e50  a2 0f 84 e2                                      add r0, r4, #0x288
00373e54  00 60 a0 e3                                      mov r6, #0
00373e58  08 20 82 e2                                      add r2, r2, #8
00373e5c  18 20 8d e5                                      str r2, [sp, #0x18]
00373e60  0f e0 a0 e1                                      mov lr, pc
00373e64  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00373e68  10 e0 9d e5                                      ldr lr, [sp, #0x10]
00373e6c  88 30 9d e5                                      ldr r3, [sp, #0x88]
00373e70  09 c0 95 e7                                      ldr ip, [r5, sb]
00373e74  0e 00 95 e7                                      ldr r0, [r5, lr]
00373e78  be 14 a0 e3                                      mov r1, #0xbe000000
00373e7c  41 1b a0 e1                                      asr r1, r1, #0x16
00373e80  00 70 a0 e3                                      mov r7, #0
00373e84  5e ef 8d e2                                      add lr, sp, #0x178
00373e88  00 20 e0 e3                                      mvn r2, #0
00373e8c  f1 60 8e e1                                      strd r6, r7, [lr, r1]
00373e90  00 00 53 e3                                      cmp r3, #0
00373e94  08 c0 8c e2                                      add ip, ip, #8
00373e98  00 30 a0 e3                                      mov r3, #0
00373e9c  08 00 80 e2                                      add r0, r0, #8
00373ea0  20 10 a0 e3                                      mov r1, #0x20
00373ea4  18 c0 8d e5                                      str ip, [sp, #0x18]
00373ea8  6c 10 8d e5                                      str r1, [sp, #0x6c]
00373eac  7c 20 8d e5                                      str r2, [sp, #0x7c]
00373eb0  68 00 8d e5                                      str r0, [sp, #0x68]
00373eb4  68 60 8d 02                                      addeq r6, sp, #0x68
00373eb8  64 26 84 e5                                      str r2, [r4, #0x664]
00373ebc  68 26 84 e5                                      str r2, [r4, #0x668]
00373ec0  70 26 84 e5                                      str r2, [r4, #0x670]
00373ec4  74 26 84 e5                                      str r2, [r4, #0x674]
00373ec8  7c 26 84 e5                                      str r2, [r4, #0x67c]
00373ecc  78 20 8d e5                                      str r2, [sp, #0x78]
00373ed0  80 30 8d e5                                      str r3, [sp, #0x80]
00373ed4  84 30 cd e5                                      strb r3, [sp, #0x84]
00373ed8  03 00 00 0a                                      beq #0x373eec
00373edc  68 60 8d e2                                      add r6, sp, #0x68
00373ee0  06 00 a0 e1                                      mov r0, r6
00373ee4  88 30 8d e5                                      str r3, [sp, #0x88]
00373ee8  25 84 12 eb                                      bl #0x814f84
00373eec  8c 22 9f e5                                      ldr r2, [pc, #0x28c]
00373ef0  8c 72 9f e5                                      ldr r7, [pc, #0x28c]
00373ef4  a0 34 94 e5                                      ldr r3, [r4, #0x4a0]
00373ef8  02 20 95 e7                                      ldr r2, [r5, r2]
00373efc  20 10 86 e2                                      add r1, r6, #0x20
00373f00  4a 0e 84 e2                                      add r0, r4, #0x4a0
00373f04  08 20 82 e2                                      add r2, r2, #8
00373f08  68 20 8d e5                                      str r2, [sp, #0x68]
00373f0c  0f e0 a0 e1                                      mov lr, pc
00373f10  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00373f14  09 00 95 e7                                      ldr r0, [r5, sb]
00373f18  0d 31 dd e5                                      ldrb r3, [sp, #0x10d]
00373f1c  07 10 95 e7                                      ldr r1, [r5, r7]
00373f20  08 00 80 e2                                      add r0, r0, #8
00373f24  68 00 8d e5                                      str r0, [sp, #0x68]
00373f28  00 00 53 e3                                      cmp r3, #0
00373f2c  00 20 e0 e3                                      mvn r2, #0
00373f30  00 30 a0 e3                                      mov r3, #0
00373f34  08 10 81 e2                                      add r1, r1, #8
00373f38  01 00 a0 e3                                      mov r0, #1
00373f3c  00 a0 a0 e3                                      mov sl, #0
00373f40  00 b0 a0 e3                                      mov fp, #0
00373f44  f4 00 8d e5                                      str r0, [sp, #0xf4]
00373f48  f8 af cd e1                                      strd sl, fp, [sp, #0xf8]
00373f4c  04 21 8d e5                                      str r2, [sp, #0x104]
00373f50  f0 10 8d e5                                      str r1, [sp, #0xf0]
00373f54  f0 80 8d 02                                      addeq r8, sp, #0xf0
00373f58  84 36 84 e5                                      str r3, [r4, #0x684]
00373f5c  80 36 84 e5                                      str r3, [r4, #0x680]
00373f60  00 21 8d e5                                      str r2, [sp, #0x100]
00373f64  08 31 8d e5                                      str r3, [sp, #0x108]
00373f68  0c 31 cd e5                                      strb r3, [sp, #0x10c]
00373f6c  03 00 00 0a                                      beq #0x373f80
00373f70  f0 80 8d e2                                      add r8, sp, #0xf0
00373f74  08 00 a0 e1                                      mov r0, r8
00373f78  0d 31 cd e5                                      strb r3, [sp, #0x10d]
00373f7c  00 84 12 eb                                      bl #0x814f84
00373f80  00 62 9f e5                                      ldr r6, [pc, #0x200]
00373f84  13 0d 84 e2                                      add r0, r4, #0x4c0
00373f88  1d 10 88 e2                                      add r1, r8, #0x1d
00373f8c  06 20 95 e7                                      ldr r2, [r5, r6]
00373f90  c8 34 94 e5                                      ldr r3, [r4, #0x4c8]
00373f94  08 00 80 e2                                      add r0, r0, #8
00373f98  08 20 82 e2                                      add r2, r2, #8
00373f9c  f0 20 8d e5                                      str r2, [sp, #0xf0]
00373fa0  0f e0 a0 e1                                      mov lr, pc
00373fa4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00373fa8  09 00 95 e7                                      ldr r0, [r5, sb]
00373fac  ed 30 dd e5                                      ldrb r3, [sp, #0xed]
00373fb0  07 10 95 e7                                      ldr r1, [r5, r7]
00373fb4  08 00 80 e2                                      add r0, r0, #8
00373fb8  00 00 53 e3                                      cmp r3, #0
00373fbc  00 20 e0 e3                                      mvn r2, #0
00373fc0  00 30 a0 e3                                      mov r3, #0
00373fc4  08 10 81 e2                                      add r1, r1, #8
00373fc8  f0 00 8d e5                                      str r0, [sp, #0xf0]
00373fcc  00 a0 a0 e3                                      mov sl, #0
00373fd0  01 00 a0 e3                                      mov r0, #1
00373fd4  00 b0 a0 e3                                      mov fp, #0
00373fd8  d4 00 8d e5                                      str r0, [sp, #0xd4]
00373fdc  f8 ad cd e1                                      strd sl, fp, [sp, #0xd8]
00373fe0  e4 20 8d e5                                      str r2, [sp, #0xe4]
00373fe4  d0 10 8d e5                                      str r1, [sp, #0xd0]
00373fe8  e0 20 8d e5                                      str r2, [sp, #0xe0]
00373fec  e8 30 8d e5                                      str r3, [sp, #0xe8]
00373ff0  ec 30 cd e5                                      strb r3, [sp, #0xec]
00373ff4  d0 80 8d 02                                      addeq r8, sp, #0xd0
00373ff8  03 00 00 0a                                      beq #0x37400c
00373ffc  d0 80 8d e2                                      add r8, sp, #0xd0
00374000  08 00 a0 e1                                      mov r0, r8
00374004  ed 30 cd e5                                      strb r3, [sp, #0xed]
00374008  dd 83 12 eb                                      bl #0x814f84
0037400c  06 30 95 e7                                      ldr r3, [r5, r6]
00374010  4e 0e 84 e2                                      add r0, r4, #0x4e0
00374014  1d 10 88 e2                                      add r1, r8, #0x1d
00374018  08 30 83 e2                                      add r3, r3, #8
0037401c  d0 30 8d e5                                      str r3, [sp, #0xd0]
00374020  08 00 80 e2                                      add r0, r0, #8
00374024  e8 34 94 e5                                      ldr r3, [r4, #0x4e8]
00374028  0f e0 a0 e1                                      mov lr, pc
0037402c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00374030  09 00 95 e7                                      ldr r0, [r5, sb]
00374034  cd 30 dd e5                                      ldrb r3, [sp, #0xcd]
00374038  07 10 95 e7                                      ldr r1, [r5, r7]
0037403c  08 00 80 e2                                      add r0, r0, #8
00374040  00 00 53 e3                                      cmp r3, #0
00374044  00 20 e0 e3                                      mvn r2, #0
00374048  00 30 a0 e3                                      mov r3, #0
0037404c  08 10 81 e2                                      add r1, r1, #8
00374050  d0 00 8d e5                                      str r0, [sp, #0xd0]
00374054  00 a0 a0 e3                                      mov sl, #0
00374058  01 00 a0 e3                                      mov r0, #1
0037405c  00 b0 a0 e3                                      mov fp, #0
00374060  b4 00 8d e5                                      str r0, [sp, #0xb4]
00374064  f8 ab cd e1                                      strd sl, fp, [sp, #0xb8]
00374068  c4 20 8d e5                                      str r2, [sp, #0xc4]
0037406c  b0 10 8d e5                                      str r1, [sp, #0xb0]
00374070  c0 20 8d e5                                      str r2, [sp, #0xc0]
00374074  c8 30 8d e5                                      str r3, [sp, #0xc8]
00374078  cc 30 cd e5                                      strb r3, [sp, #0xcc]
0037407c  b0 80 8d 02                                      addeq r8, sp, #0xb0
00374080  03 00 00 0a                                      beq #0x374094
00374084  b0 80 8d e2                                      add r8, sp, #0xb0
00374088  08 00 a0 e1                                      mov r0, r8
0037408c  cd 30 cd e5                                      strb r3, [sp, #0xcd]
00374090  bb 83 12 eb                                      bl #0x814f84
00374094  06 30 95 e7                                      ldr r3, [r5, r6]
00374098  05 0c 84 e2                                      add r0, r4, #0x500
0037409c  1d 10 88 e2                                      add r1, r8, #0x1d
003740a0  08 30 83 e2                                      add r3, r3, #8
003740a4  b0 30 8d e5                                      str r3, [sp, #0xb0]
003740a8  08 00 80 e2                                      add r0, r0, #8
003740ac  08 35 94 e5                                      ldr r3, [r4, #0x508]
003740b0  0f e0 a0 e1                                      mov lr, pc
003740b4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003740b8  09 00 95 e7                                      ldr r0, [r5, sb]
003740bc  07 10 95 e7                                      ldr r1, [r5, r7]
003740c0  ad 30 dd e5                                      ldrb r3, [sp, #0xad]
003740c4  08 00 80 e2                                      add r0, r0, #8
003740c8  00 20 e0 e3                                      mvn r2, #0
003740cc  00 00 53 e3                                      cmp r3, #0
003740d0  08 10 81 e2                                      add r1, r1, #8
003740d4  00 30 a0 e3                                      mov r3, #0
003740d8  b0 00 8d e5                                      str r0, [sp, #0xb0]
003740dc  00 80 a0 e3                                      mov r8, #0
003740e0  01 00 a0 e3                                      mov r0, #1
003740e4  00 90 a0 e3                                      mov sb, #0
003740e8  94 00 8d e5                                      str r0, [sp, #0x94]
003740ec  f8 89 cd e1                                      strd r8, sb, [sp, #0x98]
003740f0  a4 20 8d e5                                      str r2, [sp, #0xa4]
003740f4  90 10 8d e5                                      str r1, [sp, #0x90]
003740f8  a0 20 8d e5                                      str r2, [sp, #0xa0]
003740fc  a8 30 8d e5                                      str r3, [sp, #0xa8]
00374100  ac 30 cd e5                                      strb r3, [sp, #0xac]
00374104  90 70 8d 02                                      addeq r7, sp, #0x90
00374108  03 00 00 0a                                      beq #0x37411c
0037410c  90 70 8d e2                                      add r7, sp, #0x90
00374110  07 00 a0 e1                                      mov r0, r7
00374114  ad 30 cd e5                                      strb r3, [sp, #0xad]
00374118  99 83 12 eb                                      bl #0x814f84
0037411c  06 30 95 e7                                      ldr r3, [r5, r6]
00374120  52 0e 84 e2                                      add r0, r4, #0x520
00374124  1d 10 87 e2                                      add r1, r7, #0x1d
00374128  08 30 83 e2                                      add r3, r3, #8
0037412c  90 30 8d e5                                      str r3, [sp, #0x90]
00374130  28 35 94 e5                                      ldr r3, [r4, #0x528]
00374134  08 00 80 e2                                      add r0, r0, #8
00374138  0f e0 a0 e1                                      mov lr, pc
0037413c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00374140  14 10 9d e5                                      ldr r1, [sp, #0x14]
00374144  74 21 9d e5                                      ldr r2, [sp, #0x174]
00374148  01 30 95 e7                                      ldr r3, [r5, r1]
0037414c  00 30 93 e5                                      ldr r3, [r3]
00374150  03 00 52 e1                                      cmp r2, r3
00374154  01 00 00 1a                                      bne #0x374160
00374158  5f df 8d e2                                      add sp, sp, #0x17c
0037415c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00374160  6a 68 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00374164  a4 0e 62 00 ac 40 00 00 e8 7b 55 00 84 29 00 00  .byte 0xa4, 0x0e, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe8, 0x7b, 0x55, 0x00, 0x84, 0x29, 0x00, 0x00
00374174  a8 10 00 00 3c 35 00 00 50 15 00 00 c8 10 00 00  .byte 0xa8, 0x10, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00, 0x50, 0x15, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
00374184  18 30 00 00 c8 0a 00 00                          .byte 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00

; FUNCTION 0x0037418c, declared_size=2460, range_size=2460, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfoC1Ev
; demangled: PlayerInfo::PlayerInfo()
; decoder-mode: arm
0037418c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00374190  5c 59 9f e5                                      ldr r5, [pc, #0x95c]
00374194  5c 19 9f e5                                      ldr r1, [pc, #0x95c]
00374198  8c d0 4d e2                                      sub sp, sp, #0x8c
0037419c  05 50 8f e0                                      add r5, pc, r5
003741a0  01 30 95 e7                                      ldr r3, [r5, r1]
003741a4  00 40 a0 e1                                      mov r4, r0
003741a8  28 10 8d e5                                      str r1, [sp, #0x28]
003741ac  00 30 93 e5                                      ldr r3, [r3]
003741b0  44 79 9f e5                                      ldr r7, [pc, #0x944]
003741b4  00 80 a0 e3                                      mov r8, #0
003741b8  84 30 8d e5                                      str r3, [sp, #0x84]
003741bc  99 6e 12 eb                                      bl #0x80fc28
003741c0  38 39 9f e5                                      ldr r3, [pc, #0x938]
003741c4  a8 22 94 e5                                      ldr r2, [r4, #0x2a8]
003741c8  07 00 95 e7                                      ldr r0, [r5, r7]
003741cc  03 30 95 e7                                      ldr r3, [r5, r3]
003741d0  00 00 52 e3                                      cmp r2, #0
003741d4  00 90 a0 e3                                      mov sb, #0
003741d8  00 20 a0 e3                                      mov r2, #0
003741dc  08 30 83 e2                                      add r3, r3, #8
003741e0  29 ce a0 e3                                      mov ip, #0x290
003741e4  fc 80 84 e1                                      strd r8, sb, [r4, ip]
003741e8  00 10 e0 e3                                      mvn r1, #0
003741ec  00 30 84 e5                                      str r3, [r4]
003741f0  a0 22 84 e5                                      str r2, [r4, #0x2a0]
003741f4  a4 22 c4 e5                                      strb r2, [r4, #0x2a4]
003741f8  08 00 80 e2                                      add r0, r0, #8
003741fc  08 30 a0 e3                                      mov r3, #8
00374200  a2 2f 84 02                                      addeq r2, r4, #0x288
00374204  8c 32 84 e5                                      str r3, [r4, #0x28c]
00374208  9c 12 84 e5                                      str r1, [r4, #0x29c]
0037420c  88 02 84 e5                                      str r0, [r4, #0x288]
00374210  98 12 84 e5                                      str r1, [r4, #0x298]
00374214  34 20 8d 05                                      streq r2, [sp, #0x34]
00374218  04 00 00 0a                                      beq #0x374230
0037421c  a2 3f 84 e2                                      add r3, r4, #0x288
00374220  34 30 8d e5                                      str r3, [sp, #0x34]
00374224  a8 22 84 e5                                      str r2, [r4, #0x2a8]
00374228  34 00 9d e5                                      ldr r0, [sp, #0x34]
0037422c  54 83 12 eb                                      bl #0x814f84
00374230  cc 38 9f e5                                      ldr r3, [pc, #0x8cc]
00374234  cc 18 9f e5                                      ldr r1, [pc, #0x8cc]
00374238  6c 60 8d e2                                      add r6, sp, #0x6c
0037423c  03 30 95 e7                                      ldr r3, [r5, r3]
00374240  2b 0e 84 e2                                      add r0, r4, #0x2b0
00374244  68 20 8d e2                                      add r2, sp, #0x68
00374248  08 30 83 e2                                      add r3, r3, #8
0037424c  88 32 84 e5                                      str r3, [r4, #0x288]
00374250  01 10 8f e0                                      add r1, pc, r1
00374254  20 00 8d e5                                      str r0, [sp, #0x20]
00374258  06 00 a0 e1                                      mov r0, r6
0037425c  a2 7f fe eb                                      bl #0x3140ec
00374260  06 10 a0 e1                                      mov r1, r6
00374264  20 00 9d e5                                      ldr r0, [sp, #0x20]
00374268  5f f6 ff eb                                      bl #0x371bec
0037426c  06 00 a0 e1                                      mov r0, r6
00374270  f7 8f fe eb                                      bl #0x318254
00374274  08 33 94 e5                                      ldr r3, [r4, #0x308]
00374278  07 10 95 e7                                      ldr r1, [r5, r7]
0037427c  2f 0e a0 e3                                      mov r0, #0x2f0
00374280  00 00 53 e3                                      cmp r3, #0
00374284  08 10 81 e2                                      add r1, r1, #8
00374288  00 80 a0 e3                                      mov r8, #0
0037428c  00 90 a0 e3                                      mov sb, #0
00374290  f0 80 84 e1                                      strd r8, sb, [r4, r0]
00374294  00 20 e0 e3                                      mvn r2, #0
00374298  00 30 a0 e3                                      mov r3, #0
0037429c  e8 12 84 e5                                      str r1, [r4, #0x2e8]
003742a0  10 00 a0 e3                                      mov r0, #0x10
003742a4  ba 1f 84 02                                      addeq r1, r4, #0x2e8
003742a8  ec 02 84 e5                                      str r0, [r4, #0x2ec]
003742ac  fc 22 84 e5                                      str r2, [r4, #0x2fc]
003742b0  f8 22 84 e5                                      str r2, [r4, #0x2f8]
003742b4  00 33 84 e5                                      str r3, [r4, #0x300]
003742b8  04 33 c4 e5                                      strb r3, [r4, #0x304]
003742bc  48 10 8d 05                                      streq r1, [sp, #0x48]
003742c0  04 00 00 0a                                      beq #0x3742d8
003742c4  ba 2f 84 e2                                      add r2, r4, #0x2e8
003742c8  48 20 8d e5                                      str r2, [sp, #0x48]
003742cc  08 33 84 e5                                      str r3, [r4, #0x308]
003742d0  48 00 9d e5                                      ldr r0, [sp, #0x48]
003742d4  2a 83 12 eb                                      bl #0x814f84
003742d8  2c 68 9f e5                                      ldr r6, [pc, #0x82c]
003742dc  30 33 94 e5                                      ldr r3, [r4, #0x330]
003742e0  07 10 95 e7                                      ldr r1, [r5, r7]
003742e4  06 00 95 e7                                      ldr r0, [r5, r6]
003742e8  00 00 53 e3                                      cmp r3, #0
003742ec  00 80 a0 e3                                      mov r8, #0
003742f0  00 30 a0 e3                                      mov r3, #0
003742f4  08 00 80 e2                                      add r0, r0, #8
003742f8  00 90 a0 e3                                      mov sb, #0
003742fc  c6 cf a0 e3                                      mov ip, #0x318
00374300  fc 80 84 e1                                      strd r8, sb, [r4, ip]
00374304  00 20 e0 e3                                      mvn r2, #0
00374308  e8 02 84 e5                                      str r0, [r4, #0x2e8]
0037430c  28 33 84 e5                                      str r3, [r4, #0x328]
00374310  2c 33 c4 e5                                      strb r3, [r4, #0x32c]
00374314  08 10 81 e2                                      add r1, r1, #8
00374318  10 00 a0 e3                                      mov r0, #0x10
0037431c  31 3e 84 02                                      addeq r3, r4, #0x310
00374320  14 03 84 e5                                      str r0, [r4, #0x314]
00374324  24 23 84 e5                                      str r2, [r4, #0x324]
00374328  10 13 84 e5                                      str r1, [r4, #0x310]
0037432c  20 23 84 e5                                      str r2, [r4, #0x320]
00374330  30 30 8d 05                                      streq r3, [sp, #0x30]
00374334  04 00 00 0a                                      beq #0x37434c
00374338  31 0e 84 e2                                      add r0, r4, #0x310
0037433c  30 00 8d e5                                      str r0, [sp, #0x30]
00374340  30 33 84 e5                                      str r3, [r4, #0x330]
00374344  30 00 9d e5                                      ldr r0, [sp, #0x30]
00374348  0d 83 12 eb                                      bl #0x814f84
0037434c  58 33 94 e5                                      ldr r3, [r4, #0x358]
00374350  06 00 95 e7                                      ldr r0, [r5, r6]
00374354  07 10 95 e7                                      ldr r1, [r5, r7]
00374358  00 00 53 e3                                      cmp r3, #0
0037435c  08 00 80 e2                                      add r0, r0, #8
00374360  08 10 81 e2                                      add r1, r1, #8
00374364  00 80 a0 e3                                      mov r8, #0
00374368  00 90 a0 e3                                      mov sb, #0
0037436c  0d cd a0 e3                                      mov ip, #0x340
00374370  fc 80 84 e1                                      strd r8, sb, [r4, ip]
00374374  00 20 e0 e3                                      mvn r2, #0
00374378  00 30 a0 e3                                      mov r3, #0
0037437c  10 03 84 e5                                      str r0, [r4, #0x310]
00374380  38 13 84 e5                                      str r1, [r4, #0x338]
00374384  10 00 a0 e3                                      mov r0, #0x10
00374388  ce 1f 84 02                                      addeq r1, r4, #0x338
0037438c  3c 03 84 e5                                      str r0, [r4, #0x33c]
00374390  4c 23 84 e5                                      str r2, [r4, #0x34c]
00374394  48 23 84 e5                                      str r2, [r4, #0x348]
00374398  50 33 84 e5                                      str r3, [r4, #0x350]
0037439c  54 33 c4 e5                                      strb r3, [r4, #0x354]
003743a0  38 10 8d 05                                      streq r1, [sp, #0x38]
003743a4  04 00 00 0a                                      beq #0x3743bc
003743a8  ce 2f 84 e2                                      add r2, r4, #0x338
003743ac  38 20 8d e5                                      str r2, [sp, #0x38]
003743b0  58 33 84 e5                                      str r3, [r4, #0x358]
003743b4  38 00 9d e5                                      ldr r0, [sp, #0x38]
003743b8  f1 82 12 eb                                      bl #0x814f84
003743bc  80 33 94 e5                                      ldr r3, [r4, #0x380]
003743c0  06 00 95 e7                                      ldr r0, [r5, r6]
003743c4  07 10 95 e7                                      ldr r1, [r5, r7]
003743c8  00 00 53 e3                                      cmp r3, #0
003743cc  08 00 80 e2                                      add r0, r0, #8
003743d0  00 30 a0 e3                                      mov r3, #0
003743d4  00 80 a0 e3                                      mov r8, #0
003743d8  00 90 a0 e3                                      mov sb, #0
003743dc  da cf a0 e3                                      mov ip, #0x368
003743e0  fc 80 84 e1                                      strd r8, sb, [r4, ip]
003743e4  00 20 e0 e3                                      mvn r2, #0
003743e8  38 03 84 e5                                      str r0, [r4, #0x338]
003743ec  78 33 84 e5                                      str r3, [r4, #0x378]
003743f0  7c 33 c4 e5                                      strb r3, [r4, #0x37c]
003743f4  08 10 81 e2                                      add r1, r1, #8
003743f8  10 00 a0 e3                                      mov r0, #0x10
003743fc  36 3e 84 02                                      addeq r3, r4, #0x360
00374400  64 03 84 e5                                      str r0, [r4, #0x364]
00374404  74 23 84 e5                                      str r2, [r4, #0x374]
00374408  60 13 84 e5                                      str r1, [r4, #0x360]
0037440c  70 23 84 e5                                      str r2, [r4, #0x370]
00374410  40 30 8d 05                                      streq r3, [sp, #0x40]
00374414  04 00 00 0a                                      beq #0x37442c
00374418  36 0e 84 e2                                      add r0, r4, #0x360
0037441c  40 00 8d e5                                      str r0, [sp, #0x40]
00374420  80 33 84 e5                                      str r3, [r4, #0x380]
00374424  40 00 9d e5                                      ldr r0, [sp, #0x40]
00374428  d5 82 12 eb                                      bl #0x814f84
0037442c  a8 33 94 e5                                      ldr r3, [r4, #0x3a8]
00374430  06 00 95 e7                                      ldr r0, [r5, r6]
00374434  07 10 95 e7                                      ldr r1, [r5, r7]
00374438  01 00 73 e3                                      cmn r3, #1
0037443c  08 00 80 e2                                      add r0, r0, #8
00374440  08 10 81 e2                                      add r1, r1, #8
00374444  00 80 a0 e3                                      mov r8, #0
00374448  00 90 a0 e3                                      mov sb, #0
0037444c  39 ce a0 e3                                      mov ip, #0x390
00374450  fc 80 84 e1                                      strd r8, sb, [r4, ip]
00374454  00 30 e0 e3                                      mvn r3, #0
00374458  00 20 a0 e3                                      mov r2, #0
0037445c  60 03 84 e5                                      str r0, [r4, #0x360]
00374460  88 13 84 e5                                      str r1, [r4, #0x388]
00374464  10 00 a0 e3                                      mov r0, #0x10
00374468  e2 1f 84 02                                      addeq r1, r4, #0x388
0037446c  8c 03 84 e5                                      str r0, [r4, #0x38c]
00374470  a4 23 c4 e5                                      strb r2, [r4, #0x3a4]
00374474  98 33 84 e5                                      str r3, [r4, #0x398]
00374478  9c 33 84 e5                                      str r3, [r4, #0x39c]
0037447c  a0 23 84 e5                                      str r2, [r4, #0x3a0]
00374480  44 10 8d 05                                      streq r1, [sp, #0x44]
00374484  04 00 00 0a                                      beq #0x37449c
00374488  e2 2f 84 e2                                      add r2, r4, #0x388
0037448c  44 20 8d e5                                      str r2, [sp, #0x44]
00374490  a8 33 84 e5                                      str r3, [r4, #0x3a8]
00374494  44 00 9d e5                                      ldr r0, [sp, #0x44]
00374498  b9 82 12 eb                                      bl #0x814f84
0037449c  06 30 95 e7                                      ldr r3, [r5, r6]
003744a0  3b 0e 84 e2                                      add r0, r4, #0x3b0
003744a4  18 00 8d e5                                      str r0, [sp, #0x18]
003744a8  08 30 83 e2                                      add r3, r3, #8
003744ac  88 33 84 e5                                      str r3, [r4, #0x388]
003744b0  00 80 a0 e3                                      mov r8, #0
003744b4  18 00 9d e5                                      ldr r0, [sp, #0x18]
003744b8  60 10 8d e2                                      add r1, sp, #0x60
003744bc  60 80 8d e5                                      str r8, [sp, #0x60]
003744c0  64 80 8d e5                                      str r8, [sp, #0x64]
003744c4  21 f0 ff eb                                      bl #0x370550
003744c8  60 00 9d e5                                      ldr r0, [sp, #0x60]
003744cc  08 00 50 e1                                      cmp r0, r8
003744d0  01 00 00 0a                                      beq #0x3744dc
003744d4  d9 6f fe eb                                      bl #0x310440
003744d8  60 80 8d e5                                      str r8, [sp, #0x60]
003744dc  f6 1f 84 e2                                      add r1, r4, #0x3d8
003744e0  00 80 a0 e3                                      mov r8, #0
003744e4  1c 10 8d e5                                      str r1, [sp, #0x1c]
003744e8  01 00 a0 e1                                      mov r0, r1
003744ec  58 10 8d e2                                      add r1, sp, #0x58
003744f0  58 80 8d e5                                      str r8, [sp, #0x58]
003744f4  5c 80 8d e5                                      str r8, [sp, #0x5c]
003744f8  42 f0 ff eb                                      bl #0x370608
003744fc  58 00 9d e5                                      ldr r0, [sp, #0x58]
00374500  08 00 50 e1                                      cmp r0, r8
00374504  01 00 00 0a                                      beq #0x374510
00374508  cc 6f fe eb                                      bl #0x310440
0037450c  58 80 8d e5                                      str r8, [sp, #0x58]
00374510  01 2b 84 e2                                      add r2, r4, #0x400
00374514  00 80 a0 e3                                      mov r8, #0
00374518  02 00 a0 e1                                      mov r0, r2
0037451c  50 10 8d e2                                      add r1, sp, #0x50
00374520  24 20 8d e5                                      str r2, [sp, #0x24]
00374524  50 80 8d e5                                      str r8, [sp, #0x50]
00374528  54 80 8d e5                                      str r8, [sp, #0x54]
0037452c  63 f0 ff eb                                      bl #0x3706c0
00374530  50 00 9d e5                                      ldr r0, [sp, #0x50]
00374534  08 00 50 e1                                      cmp r0, r8
00374538  01 00 00 0a                                      beq #0x374544
0037453c  bf 6f fe eb                                      bl #0x310440
00374540  50 80 8d e5                                      str r8, [sp, #0x50]
00374544  48 34 94 e5                                      ldr r3, [r4, #0x448]
00374548  07 10 95 e7                                      ldr r1, [r5, r7]
0037454c  43 0e a0 e3                                      mov r0, #0x430
00374550  00 00 53 e3                                      cmp r3, #0
00374554  00 80 a0 e3                                      mov r8, #0
00374558  00 30 a0 e3                                      mov r3, #0
0037455c  00 90 a0 e3                                      mov sb, #0
00374560  f0 80 84 e1                                      strd r8, sb, [r4, r0]
00374564  40 34 84 e5                                      str r3, [r4, #0x440]
00374568  44 34 c4 e5                                      strb r3, [r4, #0x444]
0037456c  42 3e 84 02                                      addeq r3, r4, #0x420
00374570  00 20 e0 e3                                      mvn r2, #0
00374574  08 10 81 e2                                      add r1, r1, #8
00374578  20 00 a0 e3                                      mov r0, #0x20
0037457c  08 30 83 02                                      addeq r3, r3, #8
00374580  2c 04 84 e5                                      str r0, [r4, #0x42c]
00374584  3c 24 84 e5                                      str r2, [r4, #0x43c]
00374588  28 14 84 e5                                      str r1, [r4, #0x428]
0037458c  38 24 84 e5                                      str r2, [r4, #0x438]
00374590  14 30 8d 05                                      streq r3, [sp, #0x14]
00374594  05 00 00 0a                                      beq #0x3745b0
00374598  42 0e 84 e2                                      add r0, r4, #0x420
0037459c  08 00 80 e2                                      add r0, r0, #8
003745a0  14 00 8d e5                                      str r0, [sp, #0x14]
003745a4  48 34 84 e5                                      str r3, [r4, #0x448]
003745a8  14 00 9d e5                                      ldr r0, [sp, #0x14]
003745ac  74 82 12 eb                                      bl #0x814f84
003745b0  58 85 9f e5                                      ldr r8, [pc, #0x558]
003745b4  70 34 94 e5                                      ldr r3, [r4, #0x470]
003745b8  07 10 95 e7                                      ldr r1, [r5, r7]
003745bc  08 00 95 e7                                      ldr r0, [r5, r8]
003745c0  00 00 53 e3                                      cmp r3, #0
003745c4  08 10 81 e2                                      add r1, r1, #8
003745c8  08 00 80 e2                                      add r0, r0, #8
003745cc  00 a0 a0 e3                                      mov sl, #0
003745d0  00 b0 a0 e3                                      mov fp, #0
003745d4  58 c4 00 e3                                      movw ip, #0x458
003745d8  fc a0 84 e1                                      strd sl, fp, [r4, ip]
003745dc  00 20 e0 e3                                      mvn r2, #0
003745e0  00 30 a0 e3                                      mov r3, #0
003745e4  28 04 84 e5                                      str r0, [r4, #0x428]
003745e8  50 14 84 e5                                      str r1, [r4, #0x450]
003745ec  20 00 a0 e3                                      mov r0, #0x20
003745f0  45 1e 84 02                                      addeq r1, r4, #0x450
003745f4  54 04 84 e5                                      str r0, [r4, #0x454]
003745f8  64 24 84 e5                                      str r2, [r4, #0x464]
003745fc  60 24 84 e5                                      str r2, [r4, #0x460]
00374600  68 34 84 e5                                      str r3, [r4, #0x468]
00374604  6c 34 c4 e5                                      strb r3, [r4, #0x46c]
00374608  2c 10 8d 05                                      streq r1, [sp, #0x2c]
0037460c  04 00 00 0a                                      beq #0x374624
00374610  45 2e 84 e2                                      add r2, r4, #0x450
00374614  2c 20 8d e5                                      str r2, [sp, #0x2c]
00374618  70 34 84 e5                                      str r3, [r4, #0x470]
0037461c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00374620  57 82 12 eb                                      bl #0x814f84
00374624  98 34 94 e5                                      ldr r3, [r4, #0x498]
00374628  08 00 95 e7                                      ldr r0, [r5, r8]
0037462c  07 10 95 e7                                      ldr r1, [r5, r7]
00374630  00 00 53 e3                                      cmp r3, #0
00374634  00 a0 a0 e3                                      mov sl, #0
00374638  00 30 a0 e3                                      mov r3, #0
0037463c  00 b0 a0 e3                                      mov fp, #0
00374640  12 cd a0 e3                                      mov ip, #0x480
00374644  fc a0 84 e1                                      strd sl, fp, [r4, ip]
00374648  08 00 80 e2                                      add r0, r0, #8
0037464c  90 34 84 e5                                      str r3, [r4, #0x490]
00374650  94 34 c4 e5                                      strb r3, [r4, #0x494]
00374654  47 3e 84 02                                      addeq r3, r4, #0x470
00374658  00 20 e0 e3                                      mvn r2, #0
0037465c  50 04 84 e5                                      str r0, [r4, #0x450]
00374660  08 10 81 e2                                      add r1, r1, #8
00374664  20 00 a0 e3                                      mov r0, #0x20
00374668  08 30 83 02                                      addeq r3, r3, #8
0037466c  7c 04 84 e5                                      str r0, [r4, #0x47c]
00374670  8c 24 84 e5                                      str r2, [r4, #0x48c]
00374674  78 14 84 e5                                      str r1, [r4, #0x478]
00374678  88 24 84 e5                                      str r2, [r4, #0x488]
0037467c  08 30 8d 05                                      streq r3, [sp, #8]
00374680  05 00 00 0a                                      beq #0x37469c
00374684  47 0e 84 e2                                      add r0, r4, #0x470
00374688  08 00 80 e2                                      add r0, r0, #8
0037468c  08 00 8d e5                                      str r0, [sp, #8]
00374690  98 34 84 e5                                      str r3, [r4, #0x498]
00374694  08 00 9d e5                                      ldr r0, [sp, #8]
00374698  39 82 12 eb                                      bl #0x814f84
0037469c  c0 34 94 e5                                      ldr r3, [r4, #0x4c0]
003746a0  08 00 95 e7                                      ldr r0, [r5, r8]
003746a4  07 10 95 e7                                      ldr r1, [r5, r7]
003746a8  00 00 53 e3                                      cmp r3, #0
003746ac  08 00 80 e2                                      add r0, r0, #8
003746b0  08 10 81 e2                                      add r1, r1, #8
003746b4  00 a0 a0 e3                                      mov sl, #0
003746b8  00 b0 a0 e3                                      mov fp, #0
003746bc  a8 c4 00 e3                                      movw ip, #0x4a8
003746c0  fc a0 84 e1                                      strd sl, fp, [r4, ip]
003746c4  00 20 e0 e3                                      mvn r2, #0
003746c8  00 30 a0 e3                                      mov r3, #0
003746cc  78 04 84 e5                                      str r0, [r4, #0x478]
003746d0  a0 14 84 e5                                      str r1, [r4, #0x4a0]
003746d4  20 00 a0 e3                                      mov r0, #0x20
003746d8  4a 1e 84 02                                      addeq r1, r4, #0x4a0
003746dc  a4 04 84 e5                                      str r0, [r4, #0x4a4]
003746e0  b4 24 84 e5                                      str r2, [r4, #0x4b4]
003746e4  b0 24 84 e5                                      str r2, [r4, #0x4b0]
003746e8  b8 34 84 e5                                      str r3, [r4, #0x4b8]
003746ec  bc 34 c4 e5                                      strb r3, [r4, #0x4bc]
003746f0  3c 10 8d 05                                      streq r1, [sp, #0x3c]
003746f4  04 00 00 0a                                      beq #0x37470c
003746f8  4a 2e 84 e2                                      add r2, r4, #0x4a0
003746fc  3c 20 8d e5                                      str r2, [sp, #0x3c]
00374700  c0 34 84 e5                                      str r3, [r4, #0x4c0]
00374704  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00374708  1d 82 12 eb                                      bl #0x814f84
0037470c  00 a4 9f e5                                      ldr sl, [pc, #0x400]
00374710  e5 34 d4 e5                                      ldrb r3, [r4, #0x4e5]
00374714  08 00 95 e7                                      ldr r0, [r5, r8]
00374718  0a 10 95 e7                                      ldr r1, [r5, sl]
0037471c  00 00 53 e3                                      cmp r3, #0
00374720  00 80 a0 e3                                      mov r8, #0
00374724  00 30 a0 e3                                      mov r3, #0
00374728  00 90 a0 e3                                      mov sb, #0
0037472c  4d ce a0 e3                                      mov ip, #0x4d0
00374730  fc 80 84 e1                                      strd r8, sb, [r4, ip]
00374734  08 00 80 e2                                      add r0, r0, #8
00374738  e0 34 84 e5                                      str r3, [r4, #0x4e0]
0037473c  e4 34 c4 e5                                      strb r3, [r4, #0x4e4]
00374740  13 3d 84 02                                      addeq r3, r4, #0x4c0
00374744  00 20 e0 e3                                      mvn r2, #0
00374748  a0 04 84 e5                                      str r0, [r4, #0x4a0]
0037474c  08 10 81 e2                                      add r1, r1, #8
00374750  01 00 a0 e3                                      mov r0, #1
00374754  08 30 83 02                                      addeq r3, r3, #8
00374758  cc 04 84 e5                                      str r0, [r4, #0x4cc]
0037475c  dc 24 84 e5                                      str r2, [r4, #0x4dc]
00374760  c8 14 84 e5                                      str r1, [r4, #0x4c8]
00374764  d8 24 84 e5                                      str r2, [r4, #0x4d8]
00374768  10 30 8d 05                                      streq r3, [sp, #0x10]
0037476c  05 00 00 0a                                      beq #0x374788
00374770  13 0d 84 e2                                      add r0, r4, #0x4c0
00374774  08 00 80 e2                                      add r0, r0, #8
00374778  10 00 8d e5                                      str r0, [sp, #0x10]
0037477c  e5 34 c4 e5                                      strb r3, [r4, #0x4e5]
00374780  10 00 9d e5                                      ldr r0, [sp, #0x10]
00374784  fe 81 12 eb                                      bl #0x814f84
00374788  88 83 9f e5                                      ldr r8, [pc, #0x388]
0037478c  05 35 d4 e5                                      ldrb r3, [r4, #0x505]
00374790  0a 10 95 e7                                      ldr r1, [r5, sl]
00374794  08 00 95 e7                                      ldr r0, [r5, r8]
00374798  00 00 53 e3                                      cmp r3, #0
0037479c  08 90 81 e2                                      add sb, r1, #8
003747a0  08 e0 80 e2                                      add lr, r0, #8
003747a4  00 10 a0 e3                                      mov r1, #0
003747a8  00 00 a0 e3                                      mov r0, #0
003747ac  4f ce a0 e3                                      mov ip, #0x4f0
003747b0  fc 00 84 e1                                      strd r0, r1, [r4, ip]
003747b4  4e 1e 84 02                                      addeq r1, r4, #0x4e0
003747b8  00 20 e0 e3                                      mvn r2, #0
003747bc  00 30 a0 e3                                      mov r3, #0
003747c0  01 00 a0 e3                                      mov r0, #1
003747c4  08 10 81 02                                      addeq r1, r1, #8
003747c8  c8 e4 84 e5                                      str lr, [r4, #0x4c8]
003747cc  ec 04 84 e5                                      str r0, [r4, #0x4ec]
003747d0  fc 24 84 e5                                      str r2, [r4, #0x4fc]
003747d4  e8 94 84 e5                                      str sb, [r4, #0x4e8]
003747d8  f8 24 84 e5                                      str r2, [r4, #0x4f8]
003747dc  00 35 84 e5                                      str r3, [r4, #0x500]
003747e0  04 35 c4 e5                                      strb r3, [r4, #0x504]
003747e4  00 10 8d 05                                      streq r1, [sp]
003747e8  05 00 00 0a                                      beq #0x374804
003747ec  4e 2e 84 e2                                      add r2, r4, #0x4e0
003747f0  08 20 82 e2                                      add r2, r2, #8
003747f4  00 20 8d e5                                      str r2, [sp]
003747f8  05 35 c4 e5                                      strb r3, [r4, #0x505]
003747fc  00 00 9d e5                                      ldr r0, [sp]
00374800  df 81 12 eb                                      bl #0x814f84
00374804  25 35 d4 e5                                      ldrb r3, [r4, #0x525]
00374808  08 00 95 e7                                      ldr r0, [r5, r8]
0037480c  0a 10 95 e7                                      ldr r1, [r5, sl]
00374810  00 00 53 e3                                      cmp r3, #0
00374814  08 e0 80 e2                                      add lr, r0, #8
00374818  08 90 81 e2                                      add sb, r1, #8
0037481c  00 00 a0 e3                                      mov r0, #0
00374820  00 10 a0 e3                                      mov r1, #0
00374824  51 ce a0 e3                                      mov ip, #0x510
00374828  fc 00 84 e1                                      strd r0, r1, [r4, ip]
0037482c  05 1c 84 02                                      addeq r1, r4, #0x500
00374830  00 20 e0 e3                                      mvn r2, #0
00374834  00 30 a0 e3                                      mov r3, #0
00374838  01 00 a0 e3                                      mov r0, #1
0037483c  08 10 81 02                                      addeq r1, r1, #8
00374840  e8 e4 84 e5                                      str lr, [r4, #0x4e8]
00374844  0c 05 84 e5                                      str r0, [r4, #0x50c]
00374848  1c 25 84 e5                                      str r2, [r4, #0x51c]
0037484c  08 95 84 e5                                      str sb, [r4, #0x508]
00374850  18 25 84 e5                                      str r2, [r4, #0x518]
00374854  20 35 84 e5                                      str r3, [r4, #0x520]
00374858  24 35 c4 e5                                      strb r3, [r4, #0x524]
0037485c  04 10 8d 05                                      streq r1, [sp, #4]
00374860  05 00 00 0a                                      beq #0x37487c
00374864  05 2c 84 e2                                      add r2, r4, #0x500
00374868  08 20 82 e2                                      add r2, r2, #8
0037486c  04 20 8d e5                                      str r2, [sp, #4]
00374870  25 35 c4 e5                                      strb r3, [r4, #0x525]
00374874  04 00 9d e5                                      ldr r0, [sp, #4]
00374878  c1 81 12 eb                                      bl #0x814f84
0037487c  45 35 d4 e5                                      ldrb r3, [r4, #0x545]
00374880  08 00 95 e7                                      ldr r0, [r5, r8]
00374884  0a 10 95 e7                                      ldr r1, [r5, sl]
00374888  00 00 53 e3                                      cmp r3, #0
0037488c  00 a0 a0 e3                                      mov sl, #0
00374890  00 30 a0 e3                                      mov r3, #0
00374894  00 b0 a0 e3                                      mov fp, #0
00374898  53 ce a0 e3                                      mov ip, #0x530
0037489c  fc a0 84 e1                                      strd sl, fp, [r4, ip]
003748a0  08 00 80 e2                                      add r0, r0, #8
003748a4  40 35 84 e5                                      str r3, [r4, #0x540]
003748a8  44 35 c4 e5                                      strb r3, [r4, #0x544]
003748ac  52 3e 84 02                                      addeq r3, r4, #0x520
003748b0  00 20 e0 e3                                      mvn r2, #0
003748b4  08 05 84 e5                                      str r0, [r4, #0x508]
003748b8  08 10 81 e2                                      add r1, r1, #8
003748bc  01 00 a0 e3                                      mov r0, #1
003748c0  08 30 83 02                                      addeq r3, r3, #8
003748c4  2c 05 84 e5                                      str r0, [r4, #0x52c]
003748c8  3c 25 84 e5                                      str r2, [r4, #0x53c]
003748cc  28 15 84 e5                                      str r1, [r4, #0x528]
003748d0  38 25 84 e5                                      str r2, [r4, #0x538]
003748d4  0c 30 8d 05                                      streq r3, [sp, #0xc]
003748d8  05 00 00 0a                                      beq #0x3748f4
003748dc  52 0e 84 e2                                      add r0, r4, #0x520
003748e0  08 00 80 e2                                      add r0, r0, #8
003748e4  0c 00 8d e5                                      str r0, [sp, #0xc]
003748e8  45 35 c4 e5                                      strb r3, [r4, #0x545]
003748ec  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003748f0  a3 81 12 eb                                      bl #0x814f84
003748f4  08 30 95 e7                                      ldr r3, [r5, r8]
003748f8  07 20 95 e7                                      ldr r2, [r5, r7]
003748fc  15 7d 84 e2                                      add r7, r4, #0x540
00374900  08 30 83 e2                                      add r3, r3, #8
00374904  08 20 82 e2                                      add r2, r2, #8
00374908  28 35 84 e5                                      str r3, [r4, #0x528]
0037490c  66 be 84 e2                                      add fp, r4, #0x660
00374910  4c 40 8d e5                                      str r4, [sp, #0x4c]
00374914  08 70 87 e2                                      add r7, r7, #8
00374918  10 90 a0 e3                                      mov sb, #0x10
0037491c  00 a0 e0 e3                                      mvn sl, #0
00374920  00 80 a0 e3                                      mov r8, #0
00374924  02 40 a0 e1                                      mov r4, r2
00374928  20 30 97 e5                                      ldr r3, [r7, #0x20]
0037492c  00 00 a0 e3                                      mov r0, #0
00374930  00 10 a0 e3                                      mov r1, #0
00374934  00 00 53 e3                                      cmp r3, #0
00374938  04 90 87 e5                                      str sb, [r7, #4]
0037493c  f8 00 c7 e1                                      strd r0, r1, [r7, #8]
00374940  10 a0 87 e5                                      str sl, [r7, #0x10]
00374944  14 a0 87 e5                                      str sl, [r7, #0x14]
00374948  18 80 87 e5                                      str r8, [r7, #0x18]
0037494c  1c 80 c7 e5                                      strb r8, [r7, #0x1c]
00374950  00 40 87 e5                                      str r4, [r7]
00374954  02 00 00 0a                                      beq #0x374964
00374958  20 80 87 e5                                      str r8, [r7, #0x20]
0037495c  07 00 a0 e1                                      mov r0, r7
00374960  87 81 12 eb                                      bl #0x814f84
00374964  06 30 95 e7                                      ldr r3, [r5, r6]
00374968  08 30 83 e2                                      add r3, r3, #8
0037496c  28 30 87 e4                                      str r3, [r7], #0x28
00374970  0b 00 57 e1                                      cmp r7, fp
00374974  eb ff ff 1a                                      bne #0x374928
00374978  9c 61 9f e5                                      ldr r6, [pc, #0x19c]
0037497c  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
00374980  06 60 8f e0                                      add r6, pc, r6
00374984  00 30 96 e5                                      ldr r3, [r6]
00374988  01 00 13 e3                                      tst r3, #1
0037498c  4b 00 00 0a                                      beq #0x374ac0
00374990  34 10 9d e5                                      ldr r1, [sp, #0x34]
00374994  04 00 a0 e1                                      mov r0, r4
00374998  2b 7a 12 eb                                      bl #0x81324c
0037499c  04 00 a0 e1                                      mov r0, r4
003749a0  30 10 9d e5                                      ldr r1, [sp, #0x30]
003749a4  28 7a 12 eb                                      bl #0x81324c
003749a8  04 00 a0 e1                                      mov r0, r4
003749ac  38 10 9d e5                                      ldr r1, [sp, #0x38]
003749b0  25 7a 12 eb                                      bl #0x81324c
003749b4  04 00 a0 e1                                      mov r0, r4
003749b8  40 10 9d e5                                      ldr r1, [sp, #0x40]
003749bc  22 7a 12 eb                                      bl #0x81324c
003749c0  04 00 a0 e1                                      mov r0, r4
003749c4  20 10 9d e5                                      ldr r1, [sp, #0x20]
003749c8  1f 7a 12 eb                                      bl #0x81324c
003749cc  04 00 a0 e1                                      mov r0, r4
003749d0  44 10 9d e5                                      ldr r1, [sp, #0x44]
003749d4  1c 7a 12 eb                                      bl #0x81324c
003749d8  04 00 a0 e1                                      mov r0, r4
003749dc  48 10 9d e5                                      ldr r1, [sp, #0x48]
003749e0  19 7a 12 eb                                      bl #0x81324c
003749e4  04 00 a0 e1                                      mov r0, r4
003749e8  18 10 9d e5                                      ldr r1, [sp, #0x18]
003749ec  16 7a 12 eb                                      bl #0x81324c
003749f0  04 00 a0 e1                                      mov r0, r4
003749f4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003749f8  13 7a 12 eb                                      bl #0x81324c
003749fc  04 00 a0 e1                                      mov r0, r4
00374a00  24 10 9d e5                                      ldr r1, [sp, #0x24]
00374a04  10 7a 12 eb                                      bl #0x81324c
00374a08  04 00 a0 e1                                      mov r0, r4
00374a0c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00374a10  0d 7a 12 eb                                      bl #0x81324c
00374a14  04 00 a0 e1                                      mov r0, r4
00374a18  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00374a1c  0a 7a 12 eb                                      bl #0x81324c
00374a20  04 00 a0 e1                                      mov r0, r4
00374a24  08 10 9d e5                                      ldr r1, [sp, #8]
00374a28  07 7a 12 eb                                      bl #0x81324c
00374a2c  04 00 a0 e1                                      mov r0, r4
00374a30  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00374a34  04 7a 12 eb                                      bl #0x81324c
00374a38  04 00 a0 e1                                      mov r0, r4
00374a3c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00374a40  01 7a 12 eb                                      bl #0x81324c
00374a44  04 00 a0 e1                                      mov r0, r4
00374a48  00 10 9d e5                                      ldr r1, [sp]
00374a4c  fe 79 12 eb                                      bl #0x81324c
00374a50  04 00 a0 e1                                      mov r0, r4
00374a54  04 10 9d e5                                      ldr r1, [sp, #4]
00374a58  fb 79 12 eb                                      bl #0x81324c
00374a5c  04 00 a0 e1                                      mov r0, r4
00374a60  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00374a64  f8 79 12 eb                                      bl #0x81324c
00374a68  00 60 a0 e3                                      mov r6, #0
00374a6c  28 70 a0 e3                                      mov r7, #0x28
00374a70  97 06 01 e0                                      mul r1, r7, r6
00374a74  04 00 a0 e1                                      mov r0, r4
00374a78  15 1d 81 e2                                      add r1, r1, #0x540
00374a7c  08 10 81 e2                                      add r1, r1, #8
00374a80  01 60 86 e2                                      add r6, r6, #1
00374a84  01 10 84 e0                                      add r1, r4, r1
00374a88  ef 79 12 eb                                      bl #0x81324c
00374a8c  07 00 56 e3                                      cmp r6, #7
00374a90  f6 ff ff 1a                                      bne #0x374a70
00374a94  04 00 a0 e1                                      mov r0, r4
00374a98  4f fc ff eb                                      bl #0x373bdc
00374a9c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00374aa0  84 20 9d e5                                      ldr r2, [sp, #0x84]
00374aa4  04 00 a0 e1                                      mov r0, r4
00374aa8  01 30 95 e7                                      ldr r3, [r5, r1]
00374aac  00 30 93 e5                                      ldr r3, [r3]
00374ab0  03 00 52 e1                                      cmp r2, r3
00374ab4  0d 00 00 1a                                      bne #0x374af0
00374ab8  8c d0 8d e2                                      add sp, sp, #0x8c
00374abc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00374ac0  06 00 a0 e1                                      mov r0, r6
00374ac4  28 67 fe eb                                      bl #0x30e76c
00374ac8  00 00 50 e3                                      cmp r0, #0
00374acc  af ff ff 0a                                      beq #0x374990
00374ad0  48 30 9f e5                                      ldr r3, [pc, #0x48]
00374ad4  03 00 95 e7                                      ldr r0, [r5, r3]
00374ad8  44 30 9f e5                                      ldr r3, [pc, #0x44]
00374adc  03 10 95 e7                                      ldr r1, [r5, r3]
00374ae0  f6 6d 12 eb                                      bl #0x8102c0
00374ae4  06 00 a0 e1                                      mov r0, r6
00374ae8  d3 67 fe eb                                      bl #0x30ea3c
00374aec  a7 ff ff ea                                      b #0x374990
00374af0  06 66 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00374af4  f4 08 62 00 ac 40 00 00 84 29 00 00 74 2d 00 00  .byte 0xf4, 0x08, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0x74, 0x2d, 0x00, 0x00
00374b04  50 15 00 00 b8 75 55 00 3c 35 00 00 c8 10 00 00  .byte 0x50, 0x15, 0x00, 0x00, 0xb8, 0x75, 0x55, 0x00, 0x3c, 0x35, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
00374b14  18 30 00 00 c8 0a 00 00 08 da 62 00 88 36 00 00  .byte 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00, 0x08, 0xda, 0x62, 0x00, 0x88, 0x36, 0x00, 0x00
00374b24  ac 0e 00 00                                      .byte 0xac, 0x0e, 0x00, 0x00

; FUNCTION 0x00374ca0, declared_size=32, range_size=32, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo6CreateEv
; demangled: PlayerInfo::Create()
; decoder-mode: arm
00374ca0  10 40 2d e9                                      push {r4, lr}
00374ca4  00 10 a0 e3                                      mov r1, #0
00374ca8  88 06 00 e3                                      movw r0, #0x688
00374cac  2f 6e fe eb                                      bl #0x310570
00374cb0  00 40 a0 e1                                      mov r4, r0
00374cb4  34 fd ff eb                                      bl #0x37418c
00374cb8  04 00 a0 e1                                      mov r0, r4
00374cbc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00374cc0, declared_size=2460, range_size=2460, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfoC2Ev
; demangled: PlayerInfo::PlayerInfo()
; decoder-mode: arm
00374cc0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00374cc4  5c 59 9f e5                                      ldr r5, [pc, #0x95c]
00374cc8  5c 19 9f e5                                      ldr r1, [pc, #0x95c]
00374ccc  8c d0 4d e2                                      sub sp, sp, #0x8c
00374cd0  05 50 8f e0                                      add r5, pc, r5
00374cd4  01 30 95 e7                                      ldr r3, [r5, r1]
00374cd8  00 40 a0 e1                                      mov r4, r0
00374cdc  24 10 8d e5                                      str r1, [sp, #0x24]
00374ce0  00 30 93 e5                                      ldr r3, [r3]
00374ce4  44 79 9f e5                                      ldr r7, [pc, #0x944]
00374ce8  00 80 a0 e3                                      mov r8, #0
00374cec  84 30 8d e5                                      str r3, [sp, #0x84]
00374cf0  cc 6b 12 eb                                      bl #0x80fc28
00374cf4  38 39 9f e5                                      ldr r3, [pc, #0x938]
00374cf8  a8 22 94 e5                                      ldr r2, [r4, #0x2a8]
00374cfc  07 00 95 e7                                      ldr r0, [r5, r7]
00374d00  03 30 95 e7                                      ldr r3, [r5, r3]
00374d04  00 00 52 e3                                      cmp r2, #0
00374d08  00 90 a0 e3                                      mov sb, #0
00374d0c  00 20 a0 e3                                      mov r2, #0
00374d10  08 30 83 e2                                      add r3, r3, #8
00374d14  29 ce a0 e3                                      mov ip, #0x290
00374d18  fc 80 84 e1                                      strd r8, sb, [r4, ip]
00374d1c  00 10 e0 e3                                      mvn r1, #0
00374d20  00 30 84 e5                                      str r3, [r4]
00374d24  a0 22 84 e5                                      str r2, [r4, #0x2a0]
00374d28  a4 22 c4 e5                                      strb r2, [r4, #0x2a4]
00374d2c  08 00 80 e2                                      add r0, r0, #8
00374d30  08 30 a0 e3                                      mov r3, #8
00374d34  a2 2f 84 02                                      addeq r2, r4, #0x288
00374d38  8c 32 84 e5                                      str r3, [r4, #0x28c]
00374d3c  9c 12 84 e5                                      str r1, [r4, #0x29c]
00374d40  88 02 84 e5                                      str r0, [r4, #0x288]
00374d44  98 12 84 e5                                      str r1, [r4, #0x298]
00374d48  2c 20 8d 05                                      streq r2, [sp, #0x2c]
00374d4c  04 00 00 0a                                      beq #0x374d64
00374d50  a2 3f 84 e2                                      add r3, r4, #0x288
00374d54  2c 30 8d e5                                      str r3, [sp, #0x2c]
00374d58  a8 22 84 e5                                      str r2, [r4, #0x2a8]
00374d5c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00374d60  87 80 12 eb                                      bl #0x814f84
00374d64  cc 38 9f e5                                      ldr r3, [pc, #0x8cc]
00374d68  cc 18 9f e5                                      ldr r1, [pc, #0x8cc]
00374d6c  6c 60 8d e2                                      add r6, sp, #0x6c
00374d70  03 30 95 e7                                      ldr r3, [r5, r3]
00374d74  2b 0e 84 e2                                      add r0, r4, #0x2b0
00374d78  68 20 8d e2                                      add r2, sp, #0x68
00374d7c  08 30 83 e2                                      add r3, r3, #8
00374d80  88 32 84 e5                                      str r3, [r4, #0x288]
00374d84  01 10 8f e0                                      add r1, pc, r1
00374d88  1c 00 8d e5                                      str r0, [sp, #0x1c]
00374d8c  06 00 a0 e1                                      mov r0, r6
00374d90  d5 7c fe eb                                      bl #0x3140ec
00374d94  06 10 a0 e1                                      mov r1, r6
00374d98  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00374d9c  92 f3 ff eb                                      bl #0x371bec
00374da0  06 00 a0 e1                                      mov r0, r6
00374da4  2a 8d fe eb                                      bl #0x318254
00374da8  08 33 94 e5                                      ldr r3, [r4, #0x308]
00374dac  07 10 95 e7                                      ldr r1, [r5, r7]
00374db0  2f 0e a0 e3                                      mov r0, #0x2f0
00374db4  00 00 53 e3                                      cmp r3, #0
00374db8  08 10 81 e2                                      add r1, r1, #8
00374dbc  00 80 a0 e3                                      mov r8, #0
00374dc0  00 90 a0 e3                                      mov sb, #0
00374dc4  f0 80 84 e1                                      strd r8, sb, [r4, r0]
00374dc8  00 20 e0 e3                                      mvn r2, #0
00374dcc  00 30 a0 e3                                      mov r3, #0
00374dd0  e8 12 84 e5                                      str r1, [r4, #0x2e8]
00374dd4  10 00 a0 e3                                      mov r0, #0x10
00374dd8  ba 1f 84 02                                      addeq r1, r4, #0x2e8
00374ddc  ec 02 84 e5                                      str r0, [r4, #0x2ec]
00374de0  fc 22 84 e5                                      str r2, [r4, #0x2fc]
00374de4  f8 22 84 e5                                      str r2, [r4, #0x2f8]
00374de8  00 33 84 e5                                      str r3, [r4, #0x300]
00374dec  04 33 c4 e5                                      strb r3, [r4, #0x304]
00374df0  40 10 8d 05                                      streq r1, [sp, #0x40]
00374df4  04 00 00 0a                                      beq #0x374e0c
00374df8  ba 2f 84 e2                                      add r2, r4, #0x2e8
00374dfc  40 20 8d e5                                      str r2, [sp, #0x40]
00374e00  08 33 84 e5                                      str r3, [r4, #0x308]
00374e04  40 00 9d e5                                      ldr r0, [sp, #0x40]
00374e08  5d 80 12 eb                                      bl #0x814f84
00374e0c  2c 68 9f e5                                      ldr r6, [pc, #0x82c]
00374e10  30 33 94 e5                                      ldr r3, [r4, #0x330]
00374e14  07 10 95 e7                                      ldr r1, [r5, r7]
00374e18  06 00 95 e7                                      ldr r0, [r5, r6]
00374e1c  00 00 53 e3                                      cmp r3, #0
00374e20  00 80 a0 e3                                      mov r8, #0
00374e24  00 30 a0 e3                                      mov r3, #0
00374e28  08 00 80 e2                                      add r0, r0, #8
00374e2c  00 90 a0 e3                                      mov sb, #0
00374e30  c6 cf a0 e3                                      mov ip, #0x318
00374e34  fc 80 84 e1                                      strd r8, sb, [r4, ip]
00374e38  00 20 e0 e3                                      mvn r2, #0
00374e3c  e8 02 84 e5                                      str r0, [r4, #0x2e8]
00374e40  28 33 84 e5                                      str r3, [r4, #0x328]
00374e44  2c 33 c4 e5                                      strb r3, [r4, #0x32c]
00374e48  08 10 81 e2                                      add r1, r1, #8
00374e4c  10 00 a0 e3                                      mov r0, #0x10
00374e50  31 3e 84 02                                      addeq r3, r4, #0x310
00374e54  14 03 84 e5                                      str r0, [r4, #0x314]
00374e58  24 23 84 e5                                      str r2, [r4, #0x324]
00374e5c  10 13 84 e5                                      str r1, [r4, #0x310]
00374e60  20 23 84 e5                                      str r2, [r4, #0x320]
00374e64  48 30 8d 05                                      streq r3, [sp, #0x48]
00374e68  04 00 00 0a                                      beq #0x374e80
00374e6c  31 0e 84 e2                                      add r0, r4, #0x310
00374e70  48 00 8d e5                                      str r0, [sp, #0x48]
00374e74  30 33 84 e5                                      str r3, [r4, #0x330]
00374e78  48 00 9d e5                                      ldr r0, [sp, #0x48]
00374e7c  40 80 12 eb                                      bl #0x814f84
00374e80  58 33 94 e5                                      ldr r3, [r4, #0x358]
00374e84  06 00 95 e7                                      ldr r0, [r5, r6]
00374e88  07 10 95 e7                                      ldr r1, [r5, r7]
00374e8c  00 00 53 e3                                      cmp r3, #0
00374e90  08 00 80 e2                                      add r0, r0, #8
00374e94  08 10 81 e2                                      add r1, r1, #8
00374e98  00 80 a0 e3                                      mov r8, #0
00374e9c  00 90 a0 e3                                      mov sb, #0
00374ea0  0d cd a0 e3                                      mov ip, #0x340
00374ea4  fc 80 84 e1                                      strd r8, sb, [r4, ip]
00374ea8  00 20 e0 e3                                      mvn r2, #0
00374eac  00 30 a0 e3                                      mov r3, #0
00374eb0  10 03 84 e5                                      str r0, [r4, #0x310]
00374eb4  38 13 84 e5                                      str r1, [r4, #0x338]
00374eb8  10 00 a0 e3                                      mov r0, #0x10
00374ebc  ce 1f 84 02                                      addeq r1, r4, #0x338
00374ec0  3c 03 84 e5                                      str r0, [r4, #0x33c]
00374ec4  4c 23 84 e5                                      str r2, [r4, #0x34c]
00374ec8  48 23 84 e5                                      str r2, [r4, #0x348]
00374ecc  50 33 84 e5                                      str r3, [r4, #0x350]
00374ed0  54 33 c4 e5                                      strb r3, [r4, #0x354]
00374ed4  30 10 8d 05                                      streq r1, [sp, #0x30]
00374ed8  04 00 00 0a                                      beq #0x374ef0
00374edc  ce 2f 84 e2                                      add r2, r4, #0x338
00374ee0  30 20 8d e5                                      str r2, [sp, #0x30]
00374ee4  58 33 84 e5                                      str r3, [r4, #0x358]
00374ee8  30 00 9d e5                                      ldr r0, [sp, #0x30]
00374eec  24 80 12 eb                                      bl #0x814f84
00374ef0  80 33 94 e5                                      ldr r3, [r4, #0x380]
00374ef4  06 00 95 e7                                      ldr r0, [r5, r6]
00374ef8  07 10 95 e7                                      ldr r1, [r5, r7]
00374efc  00 00 53 e3                                      cmp r3, #0
00374f00  08 00 80 e2                                      add r0, r0, #8
00374f04  00 30 a0 e3                                      mov r3, #0
00374f08  00 80 a0 e3                                      mov r8, #0
00374f0c  00 90 a0 e3                                      mov sb, #0
00374f10  da cf a0 e3                                      mov ip, #0x368
00374f14  fc 80 84 e1                                      strd r8, sb, [r4, ip]
00374f18  00 20 e0 e3                                      mvn r2, #0
00374f1c  38 03 84 e5                                      str r0, [r4, #0x338]
00374f20  78 33 84 e5                                      str r3, [r4, #0x378]
00374f24  7c 33 c4 e5                                      strb r3, [r4, #0x37c]
00374f28  08 10 81 e2                                      add r1, r1, #8
00374f2c  10 00 a0 e3                                      mov r0, #0x10
00374f30  36 3e 84 02                                      addeq r3, r4, #0x360
00374f34  64 03 84 e5                                      str r0, [r4, #0x364]
00374f38  74 23 84 e5                                      str r2, [r4, #0x374]
00374f3c  60 13 84 e5                                      str r1, [r4, #0x360]
00374f40  70 23 84 e5                                      str r2, [r4, #0x370]
00374f44  38 30 8d 05                                      streq r3, [sp, #0x38]
00374f48  04 00 00 0a                                      beq #0x374f60
00374f4c  36 0e 84 e2                                      add r0, r4, #0x360
00374f50  38 00 8d e5                                      str r0, [sp, #0x38]
00374f54  80 33 84 e5                                      str r3, [r4, #0x380]
00374f58  38 00 9d e5                                      ldr r0, [sp, #0x38]
00374f5c  08 80 12 eb                                      bl #0x814f84
00374f60  a8 33 94 e5                                      ldr r3, [r4, #0x3a8]
00374f64  06 00 95 e7                                      ldr r0, [r5, r6]
00374f68  07 10 95 e7                                      ldr r1, [r5, r7]
00374f6c  01 00 73 e3                                      cmn r3, #1
00374f70  08 00 80 e2                                      add r0, r0, #8
00374f74  08 10 81 e2                                      add r1, r1, #8
00374f78  00 80 a0 e3                                      mov r8, #0
00374f7c  00 90 a0 e3                                      mov sb, #0
00374f80  39 ce a0 e3                                      mov ip, #0x390
00374f84  fc 80 84 e1                                      strd r8, sb, [r4, ip]
00374f88  00 30 e0 e3                                      mvn r3, #0
00374f8c  00 20 a0 e3                                      mov r2, #0
00374f90  60 03 84 e5                                      str r0, [r4, #0x360]
00374f94  88 13 84 e5                                      str r1, [r4, #0x388]
00374f98  10 00 a0 e3                                      mov r0, #0x10
00374f9c  e2 1f 84 02                                      addeq r1, r4, #0x388
00374fa0  8c 03 84 e5                                      str r0, [r4, #0x38c]
00374fa4  a4 23 c4 e5                                      strb r2, [r4, #0x3a4]
00374fa8  98 33 84 e5                                      str r3, [r4, #0x398]
00374fac  9c 33 84 e5                                      str r3, [r4, #0x39c]
00374fb0  a0 23 84 e5                                      str r2, [r4, #0x3a0]
00374fb4  3c 10 8d 05                                      streq r1, [sp, #0x3c]
00374fb8  04 00 00 0a                                      beq #0x374fd0
00374fbc  e2 2f 84 e2                                      add r2, r4, #0x388
00374fc0  3c 20 8d e5                                      str r2, [sp, #0x3c]
00374fc4  a8 33 84 e5                                      str r3, [r4, #0x3a8]
00374fc8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00374fcc  ec 7f 12 eb                                      bl #0x814f84
00374fd0  06 30 95 e7                                      ldr r3, [r5, r6]
00374fd4  3b 0e 84 e2                                      add r0, r4, #0x3b0
00374fd8  28 00 8d e5                                      str r0, [sp, #0x28]
00374fdc  08 30 83 e2                                      add r3, r3, #8
00374fe0  88 33 84 e5                                      str r3, [r4, #0x388]
00374fe4  00 80 a0 e3                                      mov r8, #0
00374fe8  28 00 9d e5                                      ldr r0, [sp, #0x28]
00374fec  60 10 8d e2                                      add r1, sp, #0x60
00374ff0  60 80 8d e5                                      str r8, [sp, #0x60]
00374ff4  64 80 8d e5                                      str r8, [sp, #0x64]
00374ff8  54 ed ff eb                                      bl #0x370550
00374ffc  60 00 9d e5                                      ldr r0, [sp, #0x60]
00375000  08 00 50 e1                                      cmp r0, r8
00375004  01 00 00 0a                                      beq #0x375010
00375008  0c 6d fe eb                                      bl #0x310440
0037500c  60 80 8d e5                                      str r8, [sp, #0x60]
00375010  f6 1f 84 e2                                      add r1, r4, #0x3d8
00375014  00 80 a0 e3                                      mov r8, #0
00375018  18 10 8d e5                                      str r1, [sp, #0x18]
0037501c  01 00 a0 e1                                      mov r0, r1
00375020  58 10 8d e2                                      add r1, sp, #0x58
00375024  58 80 8d e5                                      str r8, [sp, #0x58]
00375028  5c 80 8d e5                                      str r8, [sp, #0x5c]
0037502c  75 ed ff eb                                      bl #0x370608
00375030  58 00 9d e5                                      ldr r0, [sp, #0x58]
00375034  08 00 50 e1                                      cmp r0, r8
00375038  01 00 00 0a                                      beq #0x375044
0037503c  ff 6c fe eb                                      bl #0x310440
00375040  58 80 8d e5                                      str r8, [sp, #0x58]
00375044  01 2b 84 e2                                      add r2, r4, #0x400
00375048  00 80 a0 e3                                      mov r8, #0
0037504c  02 00 a0 e1                                      mov r0, r2
00375050  50 10 8d e2                                      add r1, sp, #0x50
00375054  20 20 8d e5                                      str r2, [sp, #0x20]
00375058  50 80 8d e5                                      str r8, [sp, #0x50]
0037505c  54 80 8d e5                                      str r8, [sp, #0x54]
00375060  96 ed ff eb                                      bl #0x3706c0
00375064  50 00 9d e5                                      ldr r0, [sp, #0x50]
00375068  08 00 50 e1                                      cmp r0, r8
0037506c  01 00 00 0a                                      beq #0x375078
00375070  f2 6c fe eb                                      bl #0x310440
00375074  50 80 8d e5                                      str r8, [sp, #0x50]
00375078  48 34 94 e5                                      ldr r3, [r4, #0x448]
0037507c  07 10 95 e7                                      ldr r1, [r5, r7]
00375080  43 0e a0 e3                                      mov r0, #0x430
00375084  00 00 53 e3                                      cmp r3, #0
00375088  00 80 a0 e3                                      mov r8, #0
0037508c  00 30 a0 e3                                      mov r3, #0
00375090  00 90 a0 e3                                      mov sb, #0
00375094  f0 80 84 e1                                      strd r8, sb, [r4, r0]
00375098  40 34 84 e5                                      str r3, [r4, #0x440]
0037509c  44 34 c4 e5                                      strb r3, [r4, #0x444]
003750a0  42 3e 84 02                                      addeq r3, r4, #0x420
003750a4  00 20 e0 e3                                      mvn r2, #0
003750a8  08 10 81 e2                                      add r1, r1, #8
003750ac  20 00 a0 e3                                      mov r0, #0x20
003750b0  08 30 83 02                                      addeq r3, r3, #8
003750b4  2c 04 84 e5                                      str r0, [r4, #0x42c]
003750b8  3c 24 84 e5                                      str r2, [r4, #0x43c]
003750bc  28 14 84 e5                                      str r1, [r4, #0x428]
003750c0  38 24 84 e5                                      str r2, [r4, #0x438]
003750c4  10 30 8d 05                                      streq r3, [sp, #0x10]
003750c8  05 00 00 0a                                      beq #0x3750e4
003750cc  42 0e 84 e2                                      add r0, r4, #0x420
003750d0  08 00 80 e2                                      add r0, r0, #8
003750d4  10 00 8d e5                                      str r0, [sp, #0x10]
003750d8  48 34 84 e5                                      str r3, [r4, #0x448]
003750dc  10 00 9d e5                                      ldr r0, [sp, #0x10]
003750e0  a7 7f 12 eb                                      bl #0x814f84
003750e4  58 85 9f e5                                      ldr r8, [pc, #0x558]
003750e8  70 34 94 e5                                      ldr r3, [r4, #0x470]
003750ec  07 10 95 e7                                      ldr r1, [r5, r7]
003750f0  08 00 95 e7                                      ldr r0, [r5, r8]
003750f4  00 00 53 e3                                      cmp r3, #0
003750f8  08 10 81 e2                                      add r1, r1, #8
003750fc  08 00 80 e2                                      add r0, r0, #8
00375100  00 a0 a0 e3                                      mov sl, #0
00375104  00 b0 a0 e3                                      mov fp, #0
00375108  58 c4 00 e3                                      movw ip, #0x458
0037510c  fc a0 84 e1                                      strd sl, fp, [r4, ip]
00375110  00 20 e0 e3                                      mvn r2, #0
00375114  00 30 a0 e3                                      mov r3, #0
00375118  28 04 84 e5                                      str r0, [r4, #0x428]
0037511c  50 14 84 e5                                      str r1, [r4, #0x450]
00375120  20 00 a0 e3                                      mov r0, #0x20
00375124  45 1e 84 02                                      addeq r1, r4, #0x450
00375128  54 04 84 e5                                      str r0, [r4, #0x454]
0037512c  64 24 84 e5                                      str r2, [r4, #0x464]
00375130  60 24 84 e5                                      str r2, [r4, #0x460]
00375134  68 34 84 e5                                      str r3, [r4, #0x468]
00375138  6c 34 c4 e5                                      strb r3, [r4, #0x46c]
0037513c  44 10 8d 05                                      streq r1, [sp, #0x44]
00375140  04 00 00 0a                                      beq #0x375158
00375144  45 2e 84 e2                                      add r2, r4, #0x450
00375148  44 20 8d e5                                      str r2, [sp, #0x44]
0037514c  70 34 84 e5                                      str r3, [r4, #0x470]
00375150  44 00 9d e5                                      ldr r0, [sp, #0x44]
00375154  8a 7f 12 eb                                      bl #0x814f84
00375158  98 34 94 e5                                      ldr r3, [r4, #0x498]
0037515c  08 00 95 e7                                      ldr r0, [r5, r8]
00375160  07 10 95 e7                                      ldr r1, [r5, r7]
00375164  00 00 53 e3                                      cmp r3, #0
00375168  00 a0 a0 e3                                      mov sl, #0
0037516c  00 30 a0 e3                                      mov r3, #0
00375170  00 b0 a0 e3                                      mov fp, #0
00375174  12 cd a0 e3                                      mov ip, #0x480
00375178  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0037517c  08 00 80 e2                                      add r0, r0, #8
00375180  90 34 84 e5                                      str r3, [r4, #0x490]
00375184  94 34 c4 e5                                      strb r3, [r4, #0x494]
00375188  47 3e 84 02                                      addeq r3, r4, #0x470
0037518c  00 20 e0 e3                                      mvn r2, #0
00375190  50 04 84 e5                                      str r0, [r4, #0x450]
00375194  08 10 81 e2                                      add r1, r1, #8
00375198  20 00 a0 e3                                      mov r0, #0x20
0037519c  08 30 83 02                                      addeq r3, r3, #8
003751a0  7c 04 84 e5                                      str r0, [r4, #0x47c]
003751a4  8c 24 84 e5                                      str r2, [r4, #0x48c]
003751a8  78 14 84 e5                                      str r1, [r4, #0x478]
003751ac  88 24 84 e5                                      str r2, [r4, #0x488]
003751b0  04 30 8d 05                                      streq r3, [sp, #4]
003751b4  05 00 00 0a                                      beq #0x3751d0
003751b8  47 0e 84 e2                                      add r0, r4, #0x470
003751bc  08 00 80 e2                                      add r0, r0, #8
003751c0  04 00 8d e5                                      str r0, [sp, #4]
003751c4  98 34 84 e5                                      str r3, [r4, #0x498]
003751c8  04 00 9d e5                                      ldr r0, [sp, #4]
003751cc  6c 7f 12 eb                                      bl #0x814f84
003751d0  c0 34 94 e5                                      ldr r3, [r4, #0x4c0]
003751d4  08 00 95 e7                                      ldr r0, [r5, r8]
003751d8  07 10 95 e7                                      ldr r1, [r5, r7]
003751dc  00 00 53 e3                                      cmp r3, #0
003751e0  08 00 80 e2                                      add r0, r0, #8
003751e4  08 10 81 e2                                      add r1, r1, #8
003751e8  00 a0 a0 e3                                      mov sl, #0
003751ec  00 b0 a0 e3                                      mov fp, #0
003751f0  a8 c4 00 e3                                      movw ip, #0x4a8
003751f4  fc a0 84 e1                                      strd sl, fp, [r4, ip]
003751f8  00 20 e0 e3                                      mvn r2, #0
003751fc  00 30 a0 e3                                      mov r3, #0
00375200  78 04 84 e5                                      str r0, [r4, #0x478]
00375204  a0 14 84 e5                                      str r1, [r4, #0x4a0]
00375208  20 00 a0 e3                                      mov r0, #0x20
0037520c  4a 1e 84 02                                      addeq r1, r4, #0x4a0
00375210  a4 04 84 e5                                      str r0, [r4, #0x4a4]
00375214  b4 24 84 e5                                      str r2, [r4, #0x4b4]
00375218  b0 24 84 e5                                      str r2, [r4, #0x4b0]
0037521c  b8 34 84 e5                                      str r3, [r4, #0x4b8]
00375220  bc 34 c4 e5                                      strb r3, [r4, #0x4bc]
00375224  34 10 8d 05                                      streq r1, [sp, #0x34]
00375228  04 00 00 0a                                      beq #0x375240
0037522c  4a 2e 84 e2                                      add r2, r4, #0x4a0
00375230  34 20 8d e5                                      str r2, [sp, #0x34]
00375234  c0 34 84 e5                                      str r3, [r4, #0x4c0]
00375238  34 00 9d e5                                      ldr r0, [sp, #0x34]
0037523c  50 7f 12 eb                                      bl #0x814f84
00375240  00 a4 9f e5                                      ldr sl, [pc, #0x400]
00375244  e5 34 d4 e5                                      ldrb r3, [r4, #0x4e5]
00375248  08 00 95 e7                                      ldr r0, [r5, r8]
0037524c  0a 10 95 e7                                      ldr r1, [r5, sl]
00375250  00 00 53 e3                                      cmp r3, #0
00375254  00 80 a0 e3                                      mov r8, #0
00375258  00 30 a0 e3                                      mov r3, #0
0037525c  00 90 a0 e3                                      mov sb, #0
00375260  4d ce a0 e3                                      mov ip, #0x4d0
00375264  fc 80 84 e1                                      strd r8, sb, [r4, ip]
00375268  08 00 80 e2                                      add r0, r0, #8
0037526c  e0 34 84 e5                                      str r3, [r4, #0x4e0]
00375270  e4 34 c4 e5                                      strb r3, [r4, #0x4e4]
00375274  13 3d 84 02                                      addeq r3, r4, #0x4c0
00375278  00 20 e0 e3                                      mvn r2, #0
0037527c  a0 04 84 e5                                      str r0, [r4, #0x4a0]
00375280  08 10 81 e2                                      add r1, r1, #8
00375284  01 00 a0 e3                                      mov r0, #1
00375288  08 30 83 02                                      addeq r3, r3, #8
0037528c  cc 04 84 e5                                      str r0, [r4, #0x4cc]
00375290  dc 24 84 e5                                      str r2, [r4, #0x4dc]
00375294  c8 14 84 e5                                      str r1, [r4, #0x4c8]
00375298  d8 24 84 e5                                      str r2, [r4, #0x4d8]
0037529c  0c 30 8d 05                                      streq r3, [sp, #0xc]
003752a0  05 00 00 0a                                      beq #0x3752bc
003752a4  13 0d 84 e2                                      add r0, r4, #0x4c0
003752a8  08 00 80 e2                                      add r0, r0, #8
003752ac  0c 00 8d e5                                      str r0, [sp, #0xc]
003752b0  e5 34 c4 e5                                      strb r3, [r4, #0x4e5]
003752b4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003752b8  31 7f 12 eb                                      bl #0x814f84
003752bc  88 83 9f e5                                      ldr r8, [pc, #0x388]
003752c0  05 35 d4 e5                                      ldrb r3, [r4, #0x505]
003752c4  0a 10 95 e7                                      ldr r1, [r5, sl]
003752c8  08 00 95 e7                                      ldr r0, [r5, r8]
003752cc  00 00 53 e3                                      cmp r3, #0
003752d0  08 90 81 e2                                      add sb, r1, #8
003752d4  08 e0 80 e2                                      add lr, r0, #8
003752d8  00 10 a0 e3                                      mov r1, #0
003752dc  00 00 a0 e3                                      mov r0, #0
003752e0  4f ce a0 e3                                      mov ip, #0x4f0
003752e4  fc 00 84 e1                                      strd r0, r1, [r4, ip]
003752e8  4e 1e 84 02                                      addeq r1, r4, #0x4e0
003752ec  00 20 e0 e3                                      mvn r2, #0
003752f0  00 30 a0 e3                                      mov r3, #0
003752f4  01 00 a0 e3                                      mov r0, #1
003752f8  08 10 81 02                                      addeq r1, r1, #8
003752fc  c8 e4 84 e5                                      str lr, [r4, #0x4c8]
00375300  ec 04 84 e5                                      str r0, [r4, #0x4ec]
00375304  fc 24 84 e5                                      str r2, [r4, #0x4fc]
00375308  e8 94 84 e5                                      str sb, [r4, #0x4e8]
0037530c  f8 24 84 e5                                      str r2, [r4, #0x4f8]
00375310  00 35 84 e5                                      str r3, [r4, #0x500]
00375314  04 35 c4 e5                                      strb r3, [r4, #0x504]
00375318  14 10 8d 05                                      streq r1, [sp, #0x14]
0037531c  05 00 00 0a                                      beq #0x375338
00375320  4e 2e 84 e2                                      add r2, r4, #0x4e0
00375324  08 20 82 e2                                      add r2, r2, #8
00375328  14 20 8d e5                                      str r2, [sp, #0x14]
0037532c  05 35 c4 e5                                      strb r3, [r4, #0x505]
00375330  14 00 9d e5                                      ldr r0, [sp, #0x14]
00375334  12 7f 12 eb                                      bl #0x814f84
00375338  25 35 d4 e5                                      ldrb r3, [r4, #0x525]
0037533c  08 00 95 e7                                      ldr r0, [r5, r8]
00375340  0a 10 95 e7                                      ldr r1, [r5, sl]
00375344  00 00 53 e3                                      cmp r3, #0
00375348  08 e0 80 e2                                      add lr, r0, #8
0037534c  08 90 81 e2                                      add sb, r1, #8
00375350  00 00 a0 e3                                      mov r0, #0
00375354  00 10 a0 e3                                      mov r1, #0
00375358  51 ce a0 e3                                      mov ip, #0x510
0037535c  fc 00 84 e1                                      strd r0, r1, [r4, ip]
00375360  05 1c 84 02                                      addeq r1, r4, #0x500
00375364  00 20 e0 e3                                      mvn r2, #0
00375368  00 30 a0 e3                                      mov r3, #0
0037536c  01 00 a0 e3                                      mov r0, #1
00375370  08 10 81 02                                      addeq r1, r1, #8
00375374  e8 e4 84 e5                                      str lr, [r4, #0x4e8]
00375378  0c 05 84 e5                                      str r0, [r4, #0x50c]
0037537c  1c 25 84 e5                                      str r2, [r4, #0x51c]
00375380  08 95 84 e5                                      str sb, [r4, #0x508]
00375384  18 25 84 e5                                      str r2, [r4, #0x518]
00375388  20 35 84 e5                                      str r3, [r4, #0x520]
0037538c  24 35 c4 e5                                      strb r3, [r4, #0x524]
00375390  00 10 8d 05                                      streq r1, [sp]
00375394  05 00 00 0a                                      beq #0x3753b0
00375398  05 2c 84 e2                                      add r2, r4, #0x500
0037539c  08 20 82 e2                                      add r2, r2, #8
003753a0  00 20 8d e5                                      str r2, [sp]
003753a4  25 35 c4 e5                                      strb r3, [r4, #0x525]
003753a8  00 00 9d e5                                      ldr r0, [sp]
003753ac  f4 7e 12 eb                                      bl #0x814f84
003753b0  45 35 d4 e5                                      ldrb r3, [r4, #0x545]
003753b4  08 00 95 e7                                      ldr r0, [r5, r8]
003753b8  0a 10 95 e7                                      ldr r1, [r5, sl]
003753bc  00 00 53 e3                                      cmp r3, #0
003753c0  00 a0 a0 e3                                      mov sl, #0
003753c4  00 30 a0 e3                                      mov r3, #0
003753c8  00 b0 a0 e3                                      mov fp, #0
003753cc  53 ce a0 e3                                      mov ip, #0x530
003753d0  fc a0 84 e1                                      strd sl, fp, [r4, ip]
003753d4  08 00 80 e2                                      add r0, r0, #8
003753d8  40 35 84 e5                                      str r3, [r4, #0x540]
003753dc  44 35 c4 e5                                      strb r3, [r4, #0x544]
003753e0  52 3e 84 02                                      addeq r3, r4, #0x520
003753e4  00 20 e0 e3                                      mvn r2, #0
003753e8  08 05 84 e5                                      str r0, [r4, #0x508]
003753ec  08 10 81 e2                                      add r1, r1, #8
003753f0  01 00 a0 e3                                      mov r0, #1
003753f4  08 30 83 02                                      addeq r3, r3, #8
003753f8  2c 05 84 e5                                      str r0, [r4, #0x52c]
003753fc  3c 25 84 e5                                      str r2, [r4, #0x53c]
00375400  28 15 84 e5                                      str r1, [r4, #0x528]
00375404  38 25 84 e5                                      str r2, [r4, #0x538]
00375408  08 30 8d 05                                      streq r3, [sp, #8]
0037540c  05 00 00 0a                                      beq #0x375428
00375410  52 0e 84 e2                                      add r0, r4, #0x520
00375414  08 00 80 e2                                      add r0, r0, #8
00375418  08 00 8d e5                                      str r0, [sp, #8]
0037541c  45 35 c4 e5                                      strb r3, [r4, #0x545]
00375420  08 00 9d e5                                      ldr r0, [sp, #8]
00375424  d6 7e 12 eb                                      bl #0x814f84
00375428  08 30 95 e7                                      ldr r3, [r5, r8]
0037542c  07 20 95 e7                                      ldr r2, [r5, r7]
00375430  15 7d 84 e2                                      add r7, r4, #0x540
00375434  08 30 83 e2                                      add r3, r3, #8
00375438  08 20 82 e2                                      add r2, r2, #8
0037543c  28 35 84 e5                                      str r3, [r4, #0x528]
00375440  66 be 84 e2                                      add fp, r4, #0x660
00375444  4c 40 8d e5                                      str r4, [sp, #0x4c]
00375448  08 70 87 e2                                      add r7, r7, #8
0037544c  10 90 a0 e3                                      mov sb, #0x10
00375450  00 a0 e0 e3                                      mvn sl, #0
00375454  00 80 a0 e3                                      mov r8, #0
00375458  02 40 a0 e1                                      mov r4, r2
0037545c  20 30 97 e5                                      ldr r3, [r7, #0x20]
00375460  00 00 a0 e3                                      mov r0, #0
00375464  00 10 a0 e3                                      mov r1, #0
00375468  00 00 53 e3                                      cmp r3, #0
0037546c  04 90 87 e5                                      str sb, [r7, #4]
00375470  f8 00 c7 e1                                      strd r0, r1, [r7, #8]
00375474  10 a0 87 e5                                      str sl, [r7, #0x10]
00375478  14 a0 87 e5                                      str sl, [r7, #0x14]
0037547c  18 80 87 e5                                      str r8, [r7, #0x18]
00375480  1c 80 c7 e5                                      strb r8, [r7, #0x1c]
00375484  00 40 87 e5                                      str r4, [r7]
00375488  02 00 00 0a                                      beq #0x375498
0037548c  20 80 87 e5                                      str r8, [r7, #0x20]
00375490  07 00 a0 e1                                      mov r0, r7
00375494  ba 7e 12 eb                                      bl #0x814f84
00375498  06 30 95 e7                                      ldr r3, [r5, r6]
0037549c  08 30 83 e2                                      add r3, r3, #8
003754a0  28 30 87 e4                                      str r3, [r7], #0x28
003754a4  0b 00 57 e1                                      cmp r7, fp
003754a8  eb ff ff 1a                                      bne #0x37545c
003754ac  9c 61 9f e5                                      ldr r6, [pc, #0x19c]
003754b0  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
003754b4  06 60 8f e0                                      add r6, pc, r6
003754b8  00 30 96 e5                                      ldr r3, [r6]
003754bc  01 00 13 e3                                      tst r3, #1
003754c0  4b 00 00 0a                                      beq #0x3755f4
003754c4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
003754c8  04 00 a0 e1                                      mov r0, r4
003754cc  5e 77 12 eb                                      bl #0x81324c
003754d0  04 00 a0 e1                                      mov r0, r4
003754d4  48 10 9d e5                                      ldr r1, [sp, #0x48]
003754d8  5b 77 12 eb                                      bl #0x81324c
003754dc  04 00 a0 e1                                      mov r0, r4
003754e0  30 10 9d e5                                      ldr r1, [sp, #0x30]
003754e4  58 77 12 eb                                      bl #0x81324c
003754e8  04 00 a0 e1                                      mov r0, r4
003754ec  38 10 9d e5                                      ldr r1, [sp, #0x38]
003754f0  55 77 12 eb                                      bl #0x81324c
003754f4  04 00 a0 e1                                      mov r0, r4
003754f8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003754fc  52 77 12 eb                                      bl #0x81324c
00375500  04 00 a0 e1                                      mov r0, r4
00375504  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00375508  4f 77 12 eb                                      bl #0x81324c
0037550c  04 00 a0 e1                                      mov r0, r4
00375510  40 10 9d e5                                      ldr r1, [sp, #0x40]
00375514  4c 77 12 eb                                      bl #0x81324c
00375518  04 00 a0 e1                                      mov r0, r4
0037551c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00375520  49 77 12 eb                                      bl #0x81324c
00375524  04 00 a0 e1                                      mov r0, r4
00375528  18 10 9d e5                                      ldr r1, [sp, #0x18]
0037552c  46 77 12 eb                                      bl #0x81324c
00375530  04 00 a0 e1                                      mov r0, r4
00375534  20 10 9d e5                                      ldr r1, [sp, #0x20]
00375538  43 77 12 eb                                      bl #0x81324c
0037553c  04 00 a0 e1                                      mov r0, r4
00375540  10 10 9d e5                                      ldr r1, [sp, #0x10]
00375544  40 77 12 eb                                      bl #0x81324c
00375548  04 00 a0 e1                                      mov r0, r4
0037554c  44 10 9d e5                                      ldr r1, [sp, #0x44]
00375550  3d 77 12 eb                                      bl #0x81324c
00375554  04 00 a0 e1                                      mov r0, r4
00375558  04 10 9d e5                                      ldr r1, [sp, #4]
0037555c  3a 77 12 eb                                      bl #0x81324c
00375560  04 00 a0 e1                                      mov r0, r4
00375564  34 10 9d e5                                      ldr r1, [sp, #0x34]
00375568  37 77 12 eb                                      bl #0x81324c
0037556c  04 00 a0 e1                                      mov r0, r4
00375570  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00375574  34 77 12 eb                                      bl #0x81324c
00375578  04 00 a0 e1                                      mov r0, r4
0037557c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00375580  31 77 12 eb                                      bl #0x81324c
00375584  04 00 a0 e1                                      mov r0, r4
00375588  00 10 9d e5                                      ldr r1, [sp]
0037558c  2e 77 12 eb                                      bl #0x81324c
00375590  04 00 a0 e1                                      mov r0, r4
00375594  08 10 9d e5                                      ldr r1, [sp, #8]
00375598  2b 77 12 eb                                      bl #0x81324c
0037559c  00 60 a0 e3                                      mov r6, #0
003755a0  28 70 a0 e3                                      mov r7, #0x28
003755a4  97 06 01 e0                                      mul r1, r7, r6
003755a8  04 00 a0 e1                                      mov r0, r4
003755ac  15 1d 81 e2                                      add r1, r1, #0x540
003755b0  08 10 81 e2                                      add r1, r1, #8
003755b4  01 60 86 e2                                      add r6, r6, #1
003755b8  01 10 84 e0                                      add r1, r4, r1
003755bc  22 77 12 eb                                      bl #0x81324c
003755c0  07 00 56 e3                                      cmp r6, #7
003755c4  f6 ff ff 1a                                      bne #0x3755a4
003755c8  04 00 a0 e1                                      mov r0, r4
003755cc  82 f9 ff eb                                      bl #0x373bdc
003755d0  24 10 9d e5                                      ldr r1, [sp, #0x24]
003755d4  84 20 9d e5                                      ldr r2, [sp, #0x84]
003755d8  04 00 a0 e1                                      mov r0, r4
003755dc  01 30 95 e7                                      ldr r3, [r5, r1]
003755e0  00 30 93 e5                                      ldr r3, [r3]
003755e4  03 00 52 e1                                      cmp r2, r3
003755e8  0d 00 00 1a                                      bne #0x375624
003755ec  8c d0 8d e2                                      add sp, sp, #0x8c
003755f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003755f4  06 00 a0 e1                                      mov r0, r6
003755f8  5b 64 fe eb                                      bl #0x30e76c
003755fc  00 00 50 e3                                      cmp r0, #0
00375600  af ff ff 0a                                      beq #0x3754c4
00375604  48 30 9f e5                                      ldr r3, [pc, #0x48]
00375608  03 00 95 e7                                      ldr r0, [r5, r3]
0037560c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00375610  03 10 95 e7                                      ldr r1, [r5, r3]
00375614  29 6b 12 eb                                      bl #0x8102c0
00375618  06 00 a0 e1                                      mov r0, r6
0037561c  06 65 fe eb                                      bl #0x30ea3c
00375620  a7 ff ff ea                                      b #0x3754c4
00375624  39 63 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00375628  c0 fd 61 00 ac 40 00 00 84 29 00 00 74 2d 00 00  .byte 0xc0, 0xfd, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0x74, 0x2d, 0x00, 0x00
00375638  50 15 00 00 84 6a 55 00 3c 35 00 00 c8 10 00 00  .byte 0x50, 0x15, 0x00, 0x00, 0x84, 0x6a, 0x55, 0x00, 0x3c, 0x35, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
00375648  18 30 00 00 c8 0a 00 00 d4 ce 62 00 88 36 00 00  .byte 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00, 0xd4, 0xce, 0x62, 0x00, 0x88, 0x36, 0x00, 0x00
00375658  ac 0e 00 00                                      .byte 0xac, 0x0e, 0x00, 0x00

; FUNCTION 0x003777d0, declared_size=1892, range_size=1892, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfoC1ERKS_
; demangled: PlayerInfo::PlayerInfo(PlayerInfo const&)
; decoder-mode: arm
003777d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003777d4  1c 77 9f e5                                      ldr r7, [pc, #0x71c]
003777d8  2c d0 4d e2                                      sub sp, sp, #0x2c
003777dc  00 40 a0 e1                                      mov r4, r0
003777e0  01 50 a0 e1                                      mov r5, r1
003777e4  17 ff ff eb                                      bl #0x377448
003777e8  0c 27 9f e5                                      ldr r2, [pc, #0x70c]
003777ec  0c 37 9f e5                                      ldr r3, [pc, #0x70c]
003777f0  07 70 8f e0                                      add r7, pc, r7
003777f4  02 60 97 e7                                      ldr r6, [r7, r2]
003777f8  03 30 97 e7                                      ldr r3, [r7, r3]
003777fc  29 2e a0 e3                                      mov r2, #0x290
00377800  08 60 86 e2                                      add r6, r6, #8
00377804  08 30 83 e2                                      add r3, r3, #8
00377808  88 62 84 e5                                      str r6, [r4, #0x288]
0037780c  00 30 84 e5                                      str r3, [r4]
00377810  8c 32 95 e5                                      ldr r3, [r5, #0x28c]
00377814  e8 c6 9f e5                                      ldr ip, [pc, #0x6e8]
00377818  8c 32 84 e5                                      str r3, [r4, #0x28c]
0037781c  d2 00 85 e1                                      ldrd r0, r1, [r5, r2]
00377820  f2 00 84 e1                                      strd r0, r1, [r4, r2]
00377824  98 32 95 e5                                      ldr r3, [r5, #0x298]
00377828  d8 26 9f e5                                      ldr r2, [pc, #0x6d8]
0037782c  0c c0 97 e7                                      ldr ip, [r7, ip]
00377830  98 32 84 e5                                      str r3, [r4, #0x298]
00377834  9c 32 95 e5                                      ldr r3, [r5, #0x29c]
00377838  02 80 97 e7                                      ldr r8, [r7, r2]
0037783c  08 c0 8c e2                                      add ip, ip, #8
00377840  9c 32 84 e5                                      str r3, [r4, #0x29c]
00377844  a0 12 95 e5                                      ldr r1, [r5, #0x2a0]
00377848  08 80 88 e2                                      add r8, r8, #8
0037784c  ae 2f a0 e3                                      mov r2, #0x2b8
00377850  a0 12 84 e5                                      str r1, [r4, #0x2a0]
00377854  a4 02 d5 e5                                      ldrb r0, [r5, #0x2a4]
00377858  88 82 84 e5                                      str r8, [r4, #0x288]
0037785c  a8 36 9f e5                                      ldr r3, [pc, #0x6a8]
00377860  a4 02 c4 e5                                      strb r0, [r4, #0x2a4]
00377864  a8 02 95 e5                                      ldr r0, [r5, #0x2a8]
00377868  b0 62 84 e5                                      str r6, [r4, #0x2b0]
0037786c  88 c2 84 e5                                      str ip, [r4, #0x288]
00377870  a8 02 84 e5                                      str r0, [r4, #0x2a8]
00377874  b4 c2 95 e5                                      ldr ip, [r5, #0x2b4]
00377878  2d 1e 85 e2                                      add r1, r5, #0x2d0
0037787c  2d 0e 84 e2                                      add r0, r4, #0x2d0
00377880  b4 c2 84 e5                                      str ip, [r4, #0x2b4]
00377884  d2 a0 85 e1                                      ldrd sl, fp, [r5, r2]
00377888  f2 a0 84 e1                                      strd sl, fp, [r4, r2]
0037788c  c0 22 95 e5                                      ldr r2, [r5, #0x2c0]
00377890  c0 22 84 e5                                      str r2, [r4, #0x2c0]
00377894  c4 22 95 e5                                      ldr r2, [r5, #0x2c4]
00377898  c4 22 84 e5                                      str r2, [r4, #0x2c4]
0037789c  c8 22 95 e5                                      ldr r2, [r5, #0x2c8]
003778a0  c8 22 84 e5                                      str r2, [r4, #0x2c8]
003778a4  cc 22 d5 e5                                      ldrb r2, [r5, #0x2cc]
003778a8  cc 22 c4 e5                                      strb r2, [r4, #0x2cc]
003778ac  03 30 97 e7                                      ldr r3, [r7, r3]
003778b0  08 30 83 e2                                      add r3, r3, #8
003778b4  b0 32 84 e5                                      str r3, [r4, #0x2b0]
003778b8  16 d0 fe eb                                      bl #0x32b918
003778bc  4c 36 9f e5                                      ldr r3, [pc, #0x64c]
003778c0  e8 62 84 e5                                      str r6, [r4, #0x2e8]
003778c4  2f 2e a0 e3                                      mov r2, #0x2f0
003778c8  03 30 97 e7                                      ldr r3, [r7, r3]
003778cc  40 16 9f e5                                      ldr r1, [pc, #0x640]
003778d0  c6 cf a0 e3                                      mov ip, #0x318
003778d4  08 30 83 e2                                      add r3, r3, #8
003778d8  b0 32 84 e5                                      str r3, [r4, #0x2b0]
003778dc  ec 32 95 e5                                      ldr r3, [r5, #0x2ec]
003778e0  01 90 97 e7                                      ldr sb, [r7, r1]
003778e4  0d 1d a0 e3                                      mov r1, #0x340
003778e8  ec 32 84 e5                                      str r3, [r4, #0x2ec]
003778ec  d2 a0 85 e1                                      ldrd sl, fp, [r5, r2]
003778f0  f2 a0 84 e1                                      strd sl, fp, [r4, r2]
003778f4  f8 32 95 e5                                      ldr r3, [r5, #0x2f8]
003778f8  18 b6 9f e5                                      ldr fp, [pc, #0x618]
003778fc  08 90 89 e2                                      add sb, sb, #8
00377900  f8 32 84 e5                                      str r3, [r4, #0x2f8]
00377904  fc 02 95 e5                                      ldr r0, [r5, #0x2fc]
00377908  da 2f a0 e3                                      mov r2, #0x368
0037790c  39 3e a0 e3                                      mov r3, #0x390
00377910  fc 02 84 e5                                      str r0, [r4, #0x2fc]
00377914  00 e3 95 e5                                      ldr lr, [r5, #0x300]
00377918  1c b0 8d e5                                      str fp, [sp, #0x1c]
0037791c  3d 0e 84 e2                                      add r0, r4, #0x3d0
00377920  00 e3 84 e5                                      str lr, [r4, #0x300]
00377924  04 e3 d5 e5                                      ldrb lr, [r5, #0x304]
00377928  e8 82 84 e5                                      str r8, [r4, #0x2e8]
0037792c  04 e3 c4 e5                                      strb lr, [r4, #0x304]
00377930  08 e3 95 e5                                      ldr lr, [r5, #0x308]
00377934  10 63 84 e5                                      str r6, [r4, #0x310]
00377938  e8 92 84 e5                                      str sb, [r4, #0x2e8]
0037793c  08 e3 84 e5                                      str lr, [r4, #0x308]
00377940  14 e3 95 e5                                      ldr lr, [r5, #0x314]
00377944  14 e3 84 e5                                      str lr, [r4, #0x314]
00377948  dc a0 85 e1                                      ldrd sl, fp, [r5, ip]
0037794c  fc a0 84 e1                                      strd sl, fp, [r4, ip]
00377950  20 c3 95 e5                                      ldr ip, [r5, #0x320]
00377954  20 c3 84 e5                                      str ip, [r4, #0x320]
00377958  24 c3 95 e5                                      ldr ip, [r5, #0x324]
0037795c  24 c3 84 e5                                      str ip, [r4, #0x324]
00377960  28 c3 95 e5                                      ldr ip, [r5, #0x328]
00377964  28 c3 84 e5                                      str ip, [r4, #0x328]
00377968  2c c3 d5 e5                                      ldrb ip, [r5, #0x32c]
0037796c  2c c3 c4 e5                                      strb ip, [r4, #0x32c]
00377970  10 83 84 e5                                      str r8, [r4, #0x310]
00377974  30 c3 95 e5                                      ldr ip, [r5, #0x330]
00377978  38 63 84 e5                                      str r6, [r4, #0x338]
0037797c  10 93 84 e5                                      str sb, [r4, #0x310]
00377980  30 c3 84 e5                                      str ip, [r4, #0x330]
00377984  3c c3 95 e5                                      ldr ip, [r5, #0x33c]
00377988  3c c3 84 e5                                      str ip, [r4, #0x33c]
0037798c  d1 a0 85 e1                                      ldrd sl, fp, [r5, r1]
00377990  f1 a0 84 e1                                      strd sl, fp, [r4, r1]
00377994  48 13 95 e5                                      ldr r1, [r5, #0x348]
00377998  48 13 84 e5                                      str r1, [r4, #0x348]
0037799c  4c 13 95 e5                                      ldr r1, [r5, #0x34c]
003779a0  4c 13 84 e5                                      str r1, [r4, #0x34c]
003779a4  50 13 95 e5                                      ldr r1, [r5, #0x350]
003779a8  50 13 84 e5                                      str r1, [r4, #0x350]
003779ac  54 13 d5 e5                                      ldrb r1, [r5, #0x354]
003779b0  38 83 84 e5                                      str r8, [r4, #0x338]
003779b4  54 13 c4 e5                                      strb r1, [r4, #0x354]
003779b8  58 13 95 e5                                      ldr r1, [r5, #0x358]
003779bc  60 63 84 e5                                      str r6, [r4, #0x360]
003779c0  38 93 84 e5                                      str sb, [r4, #0x338]
003779c4  58 13 84 e5                                      str r1, [r4, #0x358]
003779c8  64 13 95 e5                                      ldr r1, [r5, #0x364]
003779cc  64 13 84 e5                                      str r1, [r4, #0x364]
003779d0  d2 a0 85 e1                                      ldrd sl, fp, [r5, r2]
003779d4  f2 a0 84 e1                                      strd sl, fp, [r4, r2]
003779d8  70 23 95 e5                                      ldr r2, [r5, #0x370]
003779dc  ee 1f a0 e3                                      mov r1, #0x3b8
003779e0  70 23 84 e5                                      str r2, [r4, #0x370]
003779e4  74 23 95 e5                                      ldr r2, [r5, #0x374]
003779e8  74 23 84 e5                                      str r2, [r4, #0x374]
003779ec  78 23 95 e5                                      ldr r2, [r5, #0x378]
003779f0  78 23 84 e5                                      str r2, [r4, #0x378]
003779f4  7c 23 d5 e5                                      ldrb r2, [r5, #0x37c]
003779f8  7c 23 c4 e5                                      strb r2, [r4, #0x37c]
003779fc  60 83 84 e5                                      str r8, [r4, #0x360]
00377a00  80 23 95 e5                                      ldr r2, [r5, #0x380]
00377a04  88 63 84 e5                                      str r6, [r4, #0x388]
00377a08  60 93 84 e5                                      str sb, [r4, #0x360]
00377a0c  80 23 84 e5                                      str r2, [r4, #0x380]
00377a10  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
00377a14  8c 23 95 e5                                      ldr r2, [r5, #0x38c]
00377a18  0b b0 97 e7                                      ldr fp, [r7, fp]
00377a1c  1c b0 8d e5                                      str fp, [sp, #0x1c]
00377a20  8c 23 84 e5                                      str r2, [r4, #0x38c]
00377a24  d3 a0 85 e1                                      ldrd sl, fp, [r5, r3]
00377a28  f3 a0 84 e1                                      strd sl, fp, [r4, r3]
00377a2c  98 33 95 e5                                      ldr r3, [r5, #0x398]
00377a30  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00377a34  00 a0 a0 e3                                      mov sl, #0
00377a38  98 33 84 e5                                      str r3, [r4, #0x398]
00377a3c  9c 33 95 e5                                      ldr r3, [r5, #0x39c]
00377a40  08 b0 8c e2                                      add fp, ip, #8
00377a44  9c 33 84 e5                                      str r3, [r4, #0x39c]
00377a48  a0 33 95 e5                                      ldr r3, [r5, #0x3a0]
00377a4c  a0 33 84 e5                                      str r3, [r4, #0x3a0]
00377a50  a4 33 d5 e5                                      ldrb r3, [r5, #0x3a4]
00377a54  88 83 84 e5                                      str r8, [r4, #0x388]
00377a58  a4 33 c4 e5                                      strb r3, [r4, #0x3a4]
00377a5c  a8 33 95 e5                                      ldr r3, [r5, #0x3a8]
00377a60  b0 63 84 e5                                      str r6, [r4, #0x3b0]
00377a64  88 93 84 e5                                      str sb, [r4, #0x388]
00377a68  a8 33 84 e5                                      str r3, [r4, #0x3a8]
00377a6c  b4 33 95 e5                                      ldr r3, [r5, #0x3b4]
00377a70  b4 33 84 e5                                      str r3, [r4, #0x3b4]
00377a74  d1 20 85 e1                                      ldrd r2, r3, [r5, r1]
00377a78  f1 20 84 e1                                      strd r2, r3, [r4, r1]
00377a7c  c0 33 95 e5                                      ldr r3, [r5, #0x3c0]
00377a80  00 20 a0 e3                                      mov r2, #0
00377a84  c0 33 84 e5                                      str r3, [r4, #0x3c0]
00377a88  c4 33 95 e5                                      ldr r3, [r5, #0x3c4]
00377a8c  c4 33 84 e5                                      str r3, [r4, #0x3c4]
00377a90  c8 33 95 e5                                      ldr r3, [r5, #0x3c8]
00377a94  c8 33 84 e5                                      str r3, [r4, #0x3c8]
00377a98  cc 33 d5 e5                                      ldrb r3, [r5, #0x3cc]
00377a9c  b0 b3 84 e5                                      str fp, [r4, #0x3b0]
00377aa0  d0 23 84 e5                                      str r2, [r4, #0x3d0]
00377aa4  cc 33 c4 e5                                      strb r3, [r4, #0x3cc]
00377aa8  d4 23 84 e5                                      str r2, [r4, #0x3d4]
00377aac  d0 13 95 e5                                      ldr r1, [r5, #0x3d0]
00377ab0  d4 23 95 e5                                      ldr r2, [r5, #0x3d4]
00377ab4  bc d8 ff eb                                      bl #0x36ddac
00377ab8  5c 34 9f e5                                      ldr r3, [pc, #0x45c]
00377abc  d8 63 84 e5                                      str r6, [r4, #0x3d8]
00377ac0  3e 1e a0 e3                                      mov r1, #0x3e0
00377ac4  03 30 97 e7                                      ldr r3, [r7, r3]
00377ac8  fe 0f 84 e2                                      add r0, r4, #0x3f8
00377acc  08 30 83 e2                                      add r3, r3, #8
00377ad0  b0 33 84 e5                                      str r3, [r4, #0x3b0]
00377ad4  dc 33 95 e5                                      ldr r3, [r5, #0x3dc]
00377ad8  dc 33 84 e5                                      str r3, [r4, #0x3dc]
00377adc  d1 20 85 e1                                      ldrd r2, r3, [r5, r1]
00377ae0  f1 20 84 e1                                      strd r2, r3, [r4, r1]
00377ae4  e8 33 95 e5                                      ldr r3, [r5, #0x3e8]
00377ae8  e8 33 84 e5                                      str r3, [r4, #0x3e8]
00377aec  ec 33 95 e5                                      ldr r3, [r5, #0x3ec]
00377af0  ec 33 84 e5                                      str r3, [r4, #0x3ec]
00377af4  f0 33 95 e5                                      ldr r3, [r5, #0x3f0]
00377af8  f0 33 84 e5                                      str r3, [r4, #0x3f0]
00377afc  f4 33 d5 e5                                      ldrb r3, [r5, #0x3f4]
00377b00  d8 b3 84 e5                                      str fp, [r4, #0x3d8]
00377b04  f8 a3 84 e5                                      str sl, [r4, #0x3f8]
00377b08  f4 33 c4 e5                                      strb r3, [r4, #0x3f4]
00377b0c  fc a3 84 e5                                      str sl, [r4, #0x3fc]
00377b10  f8 13 95 e5                                      ldr r1, [r5, #0x3f8]
00377b14  fc 23 95 e5                                      ldr r2, [r5, #0x3fc]
00377b18  a3 d8 ff eb                                      bl #0x36ddac
00377b1c  fc 33 9f e5                                      ldr r3, [pc, #0x3fc]
00377b20  00 64 84 e5                                      str r6, [r4, #0x400]
00377b24  08 14 00 e3                                      movw r1, #0x408
00377b28  03 30 97 e7                                      ldr r3, [r7, r3]
00377b2c  42 0e 84 e2                                      add r0, r4, #0x420
00377b30  08 30 83 e2                                      add r3, r3, #8
00377b34  d8 33 84 e5                                      str r3, [r4, #0x3d8]
00377b38  04 34 95 e5                                      ldr r3, [r5, #0x404]
00377b3c  04 34 84 e5                                      str r3, [r4, #0x404]
00377b40  d1 20 85 e1                                      ldrd r2, r3, [r5, r1]
00377b44  f1 20 84 e1                                      strd r2, r3, [r4, r1]
00377b48  10 34 95 e5                                      ldr r3, [r5, #0x410]
00377b4c  10 34 84 e5                                      str r3, [r4, #0x410]
00377b50  14 34 95 e5                                      ldr r3, [r5, #0x414]
00377b54  14 34 84 e5                                      str r3, [r4, #0x414]
00377b58  18 34 95 e5                                      ldr r3, [r5, #0x418]
00377b5c  18 34 84 e5                                      str r3, [r4, #0x418]
00377b60  1c 34 d5 e5                                      ldrb r3, [r5, #0x41c]
00377b64  00 b4 84 e5                                      str fp, [r4, #0x400]
00377b68  24 a4 84 e5                                      str sl, [r4, #0x424]
00377b6c  1c 34 c4 e5                                      strb r3, [r4, #0x41c]
00377b70  20 a4 84 e5                                      str sl, [r4, #0x420]
00377b74  20 14 95 e5                                      ldr r1, [r5, #0x420]
00377b78  24 24 95 e5                                      ldr r2, [r5, #0x424]
00377b7c  8a d8 ff eb                                      bl #0x36ddac
00377b80  9c 23 9f e5                                      ldr r2, [pc, #0x39c]
00377b84  28 64 84 e5                                      str r6, [r4, #0x428]
00377b88  43 1e a0 e3                                      mov r1, #0x430
00377b8c  02 20 97 e7                                      ldr r2, [r7, r2]
00377b90  90 03 9f e5                                      ldr r0, [pc, #0x390]
00377b94  90 b3 9f e5                                      ldr fp, [pc, #0x390]
00377b98  08 20 82 e2                                      add r2, r2, #8
00377b9c  00 24 84 e5                                      str r2, [r4, #0x400]
00377ba0  2c 24 95 e5                                      ldr r2, [r5, #0x42c]
00377ba4  0b b0 97 e7                                      ldr fp, [r7, fp]
00377ba8  58 c4 00 e3                                      movw ip, #0x458
00377bac  2c 24 84 e5                                      str r2, [r4, #0x42c]
00377bb0  d1 20 85 e1                                      ldrd r2, r3, [r5, r1]
00377bb4  f1 20 84 e1                                      strd r2, r3, [r4, r1]
00377bb8  38 24 95 e5                                      ldr r2, [r5, #0x438]
00377bbc  6c 33 9f e5                                      ldr r3, [pc, #0x36c]
00377bc0  08 b0 8b e2                                      add fp, fp, #8
00377bc4  38 24 84 e5                                      str r2, [r4, #0x438]
00377bc8  3c 24 95 e5                                      ldr r2, [r5, #0x43c]
00377bcc  1c 30 8d e5                                      str r3, [sp, #0x1c]
00377bd0  12 ad a0 e3                                      mov sl, #0x480
00377bd4  3c 24 84 e5                                      str r2, [r4, #0x43c]
00377bd8  40 24 95 e5                                      ldr r2, [r5, #0x440]
00377bdc  24 00 8d e5                                      str r0, [sp, #0x24]
00377be0  40 24 84 e5                                      str r2, [r4, #0x440]
00377be4  44 24 d5 e5                                      ldrb r2, [r5, #0x444]
00377be8  28 84 84 e5                                      str r8, [r4, #0x428]
00377bec  44 24 c4 e5                                      strb r2, [r4, #0x444]
00377bf0  48 24 95 e5                                      ldr r2, [r5, #0x448]
00377bf4  28 b4 84 e5                                      str fp, [r4, #0x428]
00377bf8  50 64 84 e5                                      str r6, [r4, #0x450]
00377bfc  48 24 84 e5                                      str r2, [r4, #0x448]
00377c00  54 14 95 e5                                      ldr r1, [r5, #0x454]
00377c04  15 2d 85 e2                                      add r2, r5, #0x540
00377c08  08 20 82 e2                                      add r2, r2, #8
00377c0c  54 14 84 e5                                      str r1, [r4, #0x454]
00377c10  dc 00 85 e1                                      ldrd r0, r1, [r5, ip]
00377c14  fc 00 84 e1                                      strd r0, r1, [r4, ip]
00377c18  60 34 95 e5                                      ldr r3, [r5, #0x460]
00377c1c  0c 20 8d e5                                      str r2, [sp, #0xc]
00377c20  08 00 a0 e1                                      mov r0, r8
00377c24  60 34 84 e5                                      str r3, [r4, #0x460]
00377c28  64 34 95 e5                                      ldr r3, [r5, #0x464]
00377c2c  04 60 8d e5                                      str r6, [sp, #4]
00377c30  1a 1d 84 e2                                      add r1, r4, #0x680
00377c34  64 34 84 e5                                      str r3, [r4, #0x464]
00377c38  68 34 95 e5                                      ldr r3, [r5, #0x468]
00377c3c  08 10 81 e2                                      add r1, r1, #8
00377c40  68 34 84 e5                                      str r3, [r4, #0x468]
00377c44  6c 24 d5 e5                                      ldrb r2, [r5, #0x46c]
00377c48  57 3e 84 e2                                      add r3, r4, #0x570
00377c4c  08 30 8d e5                                      str r3, [sp, #8]
00377c50  50 84 84 e5                                      str r8, [r4, #0x450]
00377c54  6c 24 c4 e5                                      strb r2, [r4, #0x46c]
00377c58  70 34 95 e5                                      ldr r3, [r5, #0x470]
00377c5c  78 64 84 e5                                      str r6, [r4, #0x478]
00377c60  50 b4 84 e5                                      str fp, [r4, #0x450]
00377c64  70 34 84 e5                                      str r3, [r4, #0x470]
00377c68  7c 34 95 e5                                      ldr r3, [r5, #0x47c]
00377c6c  7c 34 84 e5                                      str r3, [r4, #0x47c]
00377c70  da 20 85 e1                                      ldrd r2, r3, [r5, sl]
00377c74  fa 20 84 e1                                      strd r2, r3, [r4, sl]
00377c78  88 a4 95 e5                                      ldr sl, [r5, #0x488]
00377c7c  a8 34 00 e3                                      movw r3, #0x4a8
00377c80  88 a4 84 e5                                      str sl, [r4, #0x488]
00377c84  8c a4 95 e5                                      ldr sl, [r5, #0x48c]
00377c88  8c a4 84 e5                                      str sl, [r4, #0x48c]
00377c8c  90 a4 95 e5                                      ldr sl, [r5, #0x490]
00377c90  90 a4 84 e5                                      str sl, [r4, #0x490]
00377c94  94 a4 d5 e5                                      ldrb sl, [r5, #0x494]
00377c98  78 84 84 e5                                      str r8, [r4, #0x478]
00377c9c  94 a4 c4 e5                                      strb sl, [r4, #0x494]
00377ca0  98 a4 95 e5                                      ldr sl, [r5, #0x498]
00377ca4  78 b4 84 e5                                      str fp, [r4, #0x478]
00377ca8  a0 64 84 e5                                      str r6, [r4, #0x4a0]
00377cac  98 a4 84 e5                                      str sl, [r4, #0x498]
00377cb0  a4 a4 95 e5                                      ldr sl, [r5, #0x4a4]
00377cb4  a4 a4 84 e5                                      str sl, [r4, #0x4a4]
00377cb8  a8 a4 00 e3                                      movw sl, #0x4a8
00377cbc  d5 20 83 e1                                      ldrd r2, r3, [r3, r5]
00377cc0  fa 20 84 e1                                      strd r2, r3, [r4, sl]
00377cc4  b0 a4 95 e5                                      ldr sl, [r5, #0x4b0]
00377cc8  4d 2e a0 e3                                      mov r2, #0x4d0
00377ccc  b0 a4 84 e5                                      str sl, [r4, #0x4b0]
00377cd0  b4 a4 95 e5                                      ldr sl, [r5, #0x4b4]
00377cd4  b4 a4 84 e5                                      str sl, [r4, #0x4b4]
00377cd8  b8 a4 95 e5                                      ldr sl, [r5, #0x4b8]
00377cdc  b8 a4 84 e5                                      str sl, [r4, #0x4b8]
00377ce0  bc a4 d5 e5                                      ldrb sl, [r5, #0x4bc]
00377ce4  a0 84 84 e5                                      str r8, [r4, #0x4a0]
00377ce8  bc a4 c4 e5                                      strb sl, [r4, #0x4bc]
00377cec  c0 84 95 e5                                      ldr r8, [r5, #0x4c0]
00377cf0  c8 64 84 e5                                      str r6, [r4, #0x4c8]
00377cf4  a0 b4 84 e5                                      str fp, [r4, #0x4a0]
00377cf8  c0 84 84 e5                                      str r8, [r4, #0x4c0]
00377cfc  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00377d00  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
00377d04  cc 84 95 e5                                      ldr r8, [r5, #0x4cc]
00377d08  0b b0 97 e7                                      ldr fp, [r7, fp]
00377d0c  0c 70 97 e7                                      ldr r7, [r7, ip]
00377d10  4f ce a0 e3                                      mov ip, #0x4f0
00377d14  1c b0 8d e5                                      str fp, [sp, #0x1c]
00377d18  24 70 8d e5                                      str r7, [sp, #0x24]
00377d1c  cc 84 84 e5                                      str r8, [r4, #0x4cc]
00377d20  d2 a0 85 e1                                      ldrd sl, fp, [r5, r2]
00377d24  f2 a0 84 e1                                      strd sl, fp, [r4, r2]
00377d28  d8 a4 95 e5                                      ldr sl, [r5, #0x4d8]
00377d2c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00377d30  24 b0 9d e5                                      ldr fp, [sp, #0x24]
00377d34  d8 a4 84 e5                                      str sl, [r4, #0x4d8]
00377d38  dc a4 95 e5                                      ldr sl, [r5, #0x4dc]
00377d3c  08 80 83 e2                                      add r8, r3, #8
00377d40  08 70 8b e2                                      add r7, fp, #8
00377d44  dc a4 84 e5                                      str sl, [r4, #0x4dc]
00377d48  e0 a4 95 e5                                      ldr sl, [r5, #0x4e0]
00377d4c  51 2e a0 e3                                      mov r2, #0x510
00377d50  53 3e a0 e3                                      mov r3, #0x530
00377d54  e0 a4 84 e5                                      str sl, [r4, #0x4e0]
00377d58  e4 a4 d5 e5                                      ldrb sl, [r5, #0x4e4]
00377d5c  c8 84 84 e5                                      str r8, [r4, #0x4c8]
00377d60  e4 a4 c4 e5                                      strb sl, [r4, #0x4e4]
00377d64  e5 a4 d5 e5                                      ldrb sl, [r5, #0x4e5]
00377d68  e8 64 84 e5                                      str r6, [r4, #0x4e8]
00377d6c  c8 74 84 e5                                      str r7, [r4, #0x4c8]
00377d70  e5 a4 c4 e5                                      strb sl, [r4, #0x4e5]
00377d74  ec a4 95 e5                                      ldr sl, [r5, #0x4ec]
00377d78  ec a4 84 e5                                      str sl, [r4, #0x4ec]
00377d7c  dc a0 85 e1                                      ldrd sl, fp, [r5, ip]
00377d80  fc a0 84 e1                                      strd sl, fp, [r4, ip]
00377d84  f8 a4 95 e5                                      ldr sl, [r5, #0x4f8]
00377d88  f8 a4 84 e5                                      str sl, [r4, #0x4f8]
00377d8c  fc a4 95 e5                                      ldr sl, [r5, #0x4fc]
00377d90  fc a4 84 e5                                      str sl, [r4, #0x4fc]
00377d94  00 a5 95 e5                                      ldr sl, [r5, #0x500]
00377d98  00 a5 84 e5                                      str sl, [r4, #0x500]
00377d9c  04 a5 d5 e5                                      ldrb sl, [r5, #0x504]
00377da0  e8 84 84 e5                                      str r8, [r4, #0x4e8]
00377da4  04 a5 c4 e5                                      strb sl, [r4, #0x504]
00377da8  05 a5 d5 e5                                      ldrb sl, [r5, #0x505]
00377dac  08 65 84 e5                                      str r6, [r4, #0x508]
00377db0  e8 74 84 e5                                      str r7, [r4, #0x4e8]
00377db4  05 a5 c4 e5                                      strb sl, [r4, #0x505]
00377db8  0c a5 95 e5                                      ldr sl, [r5, #0x50c]
00377dbc  0c a5 84 e5                                      str sl, [r4, #0x50c]
00377dc0  d2 a0 85 e1                                      ldrd sl, fp, [r5, r2]
00377dc4  f2 a0 84 e1                                      strd sl, fp, [r4, r2]
00377dc8  18 a5 95 e5                                      ldr sl, [r5, #0x518]
00377dcc  18 a5 84 e5                                      str sl, [r4, #0x518]
00377dd0  1c a5 95 e5                                      ldr sl, [r5, #0x51c]
00377dd4  1c a5 84 e5                                      str sl, [r4, #0x51c]
00377dd8  20 a5 95 e5                                      ldr sl, [r5, #0x520]
00377ddc  20 a5 84 e5                                      str sl, [r4, #0x520]
00377de0  24 a5 d5 e5                                      ldrb sl, [r5, #0x524]
00377de4  08 85 84 e5                                      str r8, [r4, #0x508]
00377de8  24 a5 c4 e5                                      strb sl, [r4, #0x524]
00377dec  25 a5 d5 e5                                      ldrb sl, [r5, #0x525]
00377df0  08 75 84 e5                                      str r7, [r4, #0x508]
00377df4  28 65 84 e5                                      str r6, [r4, #0x528]
00377df8  25 a5 c4 e5                                      strb sl, [r4, #0x525]
00377dfc  2c 65 95 e5                                      ldr r6, [r5, #0x52c]
00377e00  2c 65 84 e5                                      str r6, [r4, #0x52c]
00377e04  d3 a0 85 e1                                      ldrd sl, fp, [r5, r3]
00377e08  f3 a0 84 e1                                      strd sl, fp, [r4, r3]
00377e0c  38 65 95 e5                                      ldr r6, [r5, #0x538]
00377e10  38 65 84 e5                                      str r6, [r4, #0x538]
00377e14  3c 65 95 e5                                      ldr r6, [r5, #0x53c]
00377e18  3c 65 84 e5                                      str r6, [r4, #0x53c]
00377e1c  40 65 95 e5                                      ldr r6, [r5, #0x540]
00377e20  40 65 84 e5                                      str r6, [r4, #0x540]
00377e24  44 65 d5 e5                                      ldrb r6, [r5, #0x544]
00377e28  28 85 84 e5                                      str r8, [r4, #0x528]
00377e2c  44 65 c4 e5                                      strb r6, [r4, #0x544]
00377e30  45 65 d5 e5                                      ldrb r6, [r5, #0x545]
00377e34  28 75 84 e5                                      str r7, [r4, #0x528]
00377e38  45 65 c4 e5                                      strb r6, [r4, #0x545]
00377e3c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00377e40  08 30 9d e5                                      ldr r3, [sp, #8]
00377e44  04 c0 9d e5                                      ldr ip, [sp, #4]
00377e48  28 c0 03 e5                                      str ip, [r3, #-0x28]
00377e4c  04 60 92 e5                                      ldr r6, [r2, #4]
00377e50  24 60 03 e5                                      str r6, [r3, #-0x24]
00377e54  d8 60 c2 e1                                      ldrd r6, r7, [r2, #8]
00377e58  f0 62 43 e1                                      strd r6, r7, [r3, #-0x20]
00377e5c  10 60 92 e5                                      ldr r6, [r2, #0x10]
00377e60  18 60 03 e5                                      str r6, [r3, #-0x18]
00377e64  14 60 92 e5                                      ldr r6, [r2, #0x14]
00377e68  14 60 03 e5                                      str r6, [r3, #-0x14]
00377e6c  18 60 92 e5                                      ldr r6, [r2, #0x18]
00377e70  10 60 03 e5                                      str r6, [r3, #-0x10]
00377e74  1c 60 d2 e5                                      ldrb r6, [r2, #0x1c]
00377e78  28 00 03 e5                                      str r0, [r3, #-0x28]
00377e7c  0c 60 43 e5                                      strb r6, [r3, #-0xc]
00377e80  20 60 92 e5                                      ldr r6, [r2, #0x20]
00377e84  28 90 03 e5                                      str sb, [r3, #-0x28]
00377e88  28 20 82 e2                                      add r2, r2, #0x28
00377e8c  08 60 03 e5                                      str r6, [r3, #-8]
00377e90  28 30 83 e2                                      add r3, r3, #0x28
00377e94  01 00 53 e1                                      cmp r3, r1
00377e98  ea ff ff 1a                                      bne #0x377e48
00377e9c  60 36 95 e5                                      ldr r3, [r5, #0x660]
00377ea0  04 00 a0 e1                                      mov r0, r4
00377ea4  60 36 84 e5                                      str r3, [r4, #0x660]
00377ea8  64 36 95 e5                                      ldr r3, [r5, #0x664]
00377eac  64 36 84 e5                                      str r3, [r4, #0x664]
00377eb0  68 36 95 e5                                      ldr r3, [r5, #0x668]
00377eb4  68 36 84 e5                                      str r3, [r4, #0x668]
00377eb8  6c 36 d5 e5                                      ldrb r3, [r5, #0x66c]
00377ebc  6c 36 c4 e5                                      strb r3, [r4, #0x66c]
00377ec0  70 36 95 e5                                      ldr r3, [r5, #0x670]
00377ec4  70 36 84 e5                                      str r3, [r4, #0x670]
00377ec8  74 36 95 e5                                      ldr r3, [r5, #0x674]
00377ecc  74 36 84 e5                                      str r3, [r4, #0x674]
00377ed0  78 36 95 e5                                      ldr r3, [r5, #0x678]
00377ed4  78 36 84 e5                                      str r3, [r4, #0x678]
00377ed8  7c 36 95 e5                                      ldr r3, [r5, #0x67c]
00377edc  7c 36 84 e5                                      str r3, [r4, #0x67c]
00377ee0  80 36 95 e5                                      ldr r3, [r5, #0x680]
00377ee4  80 36 84 e5                                      str r3, [r4, #0x680]
00377ee8  84 36 95 e5                                      ldr r3, [r5, #0x684]
00377eec  84 36 84 e5                                      str r3, [r4, #0x684]
00377ef0  2c d0 8d e2                                      add sp, sp, #0x2c
00377ef4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00377ef8  a0 d2 61 00 a8 10 00 00 74 2d 00 00 50 15 00 00  .byte 0xa0, 0xd2, 0x61, 0x00, 0xa8, 0x10, 0x00, 0x00, 0x74, 0x2d, 0x00, 0x00, 0x50, 0x15, 0x00, 0x00
00377f08  84 29 00 00 30 3e 00 00 44 1d 00 00 3c 35 00 00  .byte 0x84, 0x29, 0x00, 0x00, 0x30, 0x3e, 0x00, 0x00, 0x44, 0x1d, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00
00377f18  ec 2a 00 00 48 25 00 00 f8 1c 00 00 ac 28 00 00  .byte 0xec, 0x2a, 0x00, 0x00, 0x48, 0x25, 0x00, 0x00, 0xf8, 0x1c, 0x00, 0x00, 0xac, 0x28, 0x00, 0x00
00377f28  c8 0a 00 00 c8 10 00 00 18 30 00 00              .byte 0xc8, 0x0a, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00, 0x18, 0x30, 0x00, 0x00

; FUNCTION 0x00378808, declared_size=568, range_size=568, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfoaSERKS_
; demangled: PlayerInfo::operator=(PlayerInfo const&)
; decoder-mode: arm
00378808  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037880c  00 40 a0 e1                                      mov r4, r0
00378810  01 60 a0 e1                                      mov r6, r1
00378814  bb ff ff eb                                      bl #0x378708
00378818  a2 0f 84 e2                                      add r0, r4, #0x288
0037881c  aa 1f 86 e2                                      add r1, r6, #0x2a8
00378820  88 32 94 e5                                      ldr r3, [r4, #0x288]
00378824  0f e0 a0 e1                                      mov lr, pc
00378828  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0037882c  2b 0e 84 e2                                      add r0, r4, #0x2b0
00378830  2d 1e 86 e2                                      add r1, r6, #0x2d0
00378834  b0 32 94 e5                                      ldr r3, [r4, #0x2b0]
00378838  0f e0 a0 e1                                      mov lr, pc
0037883c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00378840  ba 0f 84 e2                                      add r0, r4, #0x2e8
00378844  c2 1f 86 e2                                      add r1, r6, #0x308
00378848  e8 32 94 e5                                      ldr r3, [r4, #0x2e8]
0037884c  0f e0 a0 e1                                      mov lr, pc
00378850  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00378854  31 0e 84 e2                                      add r0, r4, #0x310
00378858  33 1e 86 e2                                      add r1, r6, #0x330
0037885c  10 33 94 e5                                      ldr r3, [r4, #0x310]
00378860  0f e0 a0 e1                                      mov lr, pc
00378864  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00378868  ce 0f 84 e2                                      add r0, r4, #0x338
0037886c  d6 1f 86 e2                                      add r1, r6, #0x358
00378870  38 33 94 e5                                      ldr r3, [r4, #0x338]
00378874  0f e0 a0 e1                                      mov lr, pc
00378878  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0037887c  36 0e 84 e2                                      add r0, r4, #0x360
00378880  0e 1d 86 e2                                      add r1, r6, #0x380
00378884  60 33 94 e5                                      ldr r3, [r4, #0x360]
00378888  0f e0 a0 e1                                      mov lr, pc
0037888c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00378890  e2 0f 84 e2                                      add r0, r4, #0x388
00378894  ea 1f 86 e2                                      add r1, r6, #0x3a8
00378898  88 33 94 e5                                      ldr r3, [r4, #0x388]
0037889c  0f e0 a0 e1                                      mov lr, pc
003788a0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003788a4  3b 0e 84 e2                                      add r0, r4, #0x3b0
003788a8  3d 1e 86 e2                                      add r1, r6, #0x3d0
003788ac  b0 33 94 e5                                      ldr r3, [r4, #0x3b0]
003788b0  0f e0 a0 e1                                      mov lr, pc
003788b4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003788b8  f6 0f 84 e2                                      add r0, r4, #0x3d8
003788bc  fe 1f 86 e2                                      add r1, r6, #0x3f8
003788c0  d8 33 94 e5                                      ldr r3, [r4, #0x3d8]
003788c4  0f e0 a0 e1                                      mov lr, pc
003788c8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003788cc  01 0b 84 e2                                      add r0, r4, #0x400
003788d0  42 1e 86 e2                                      add r1, r6, #0x420
003788d4  00 34 94 e5                                      ldr r3, [r4, #0x400]
003788d8  0f e0 a0 e1                                      mov lr, pc
003788dc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003788e0  42 0e 84 e2                                      add r0, r4, #0x420
003788e4  11 1d 86 e2                                      add r1, r6, #0x440
003788e8  08 00 80 e2                                      add r0, r0, #8
003788ec  08 10 81 e2                                      add r1, r1, #8
003788f0  28 34 94 e5                                      ldr r3, [r4, #0x428]
003788f4  0f e0 a0 e1                                      mov lr, pc
003788f8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003788fc  45 0e 84 e2                                      add r0, r4, #0x450
00378900  47 1e 86 e2                                      add r1, r6, #0x470
00378904  50 34 94 e5                                      ldr r3, [r4, #0x450]
00378908  0f e0 a0 e1                                      mov lr, pc
0037890c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00378910  47 0e 84 e2                                      add r0, r4, #0x470
00378914  49 1e 86 e2                                      add r1, r6, #0x490
00378918  08 00 80 e2                                      add r0, r0, #8
0037891c  08 10 81 e2                                      add r1, r1, #8
00378920  78 34 94 e5                                      ldr r3, [r4, #0x478]
00378924  0f e0 a0 e1                                      mov lr, pc
00378928  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0037892c  4a 0e 84 e2                                      add r0, r4, #0x4a0
00378930  13 1d 86 e2                                      add r1, r6, #0x4c0
00378934  a0 34 94 e5                                      ldr r3, [r4, #0x4a0]
00378938  0f e0 a0 e1                                      mov lr, pc
0037893c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00378940  13 0d 84 e2                                      add r0, r4, #0x4c0
00378944  4e 1e 86 e2                                      add r1, r6, #0x4e0
00378948  08 00 80 e2                                      add r0, r0, #8
0037894c  05 10 81 e2                                      add r1, r1, #5
00378950  c8 34 94 e5                                      ldr r3, [r4, #0x4c8]
00378954  0f e0 a0 e1                                      mov lr, pc
00378958  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0037895c  4e 0e 84 e2                                      add r0, r4, #0x4e0
00378960  05 1c 86 e2                                      add r1, r6, #0x500
00378964  08 00 80 e2                                      add r0, r0, #8
00378968  05 10 81 e2                                      add r1, r1, #5
0037896c  e8 34 94 e5                                      ldr r3, [r4, #0x4e8]
00378970  0f e0 a0 e1                                      mov lr, pc
00378974  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00378978  05 0c 84 e2                                      add r0, r4, #0x500
0037897c  52 1e 86 e2                                      add r1, r6, #0x520
00378980  08 00 80 e2                                      add r0, r0, #8
00378984  05 10 81 e2                                      add r1, r1, #5
00378988  08 35 94 e5                                      ldr r3, [r4, #0x508]
0037898c  0f e0 a0 e1                                      mov lr, pc
00378990  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00378994  15 8d 86 e2                                      add r8, r6, #0x540
00378998  52 0e 84 e2                                      add r0, r4, #0x520
0037899c  05 10 88 e2                                      add r1, r8, #5
003789a0  08 00 80 e2                                      add r0, r0, #8
003789a4  28 35 94 e5                                      ldr r3, [r4, #0x528]
003789a8  0f e0 a0 e1                                      mov lr, pc
003789ac  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003789b0  15 5d 84 e2                                      add r5, r4, #0x540
003789b4  08 50 85 e2                                      add r5, r5, #8
003789b8  08 80 88 e2                                      add r8, r8, #8
003789bc  00 70 a0 e3                                      mov r7, #0
003789c0  07 10 88 e0                                      add r1, r8, r7
003789c4  00 30 95 e5                                      ldr r3, [r5]
003789c8  05 00 a0 e1                                      mov r0, r5
003789cc  20 10 81 e2                                      add r1, r1, #0x20
003789d0  28 70 87 e2                                      add r7, r7, #0x28
003789d4  0f e0 a0 e1                                      mov lr, pc
003789d8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003789dc  46 0f 57 e3                                      cmp r7, #0x118
003789e0  28 50 85 e2                                      add r5, r5, #0x28
003789e4  f5 ff ff 1a                                      bne #0x3789c0
003789e8  60 36 96 e5                                      ldr r3, [r6, #0x660]
003789ec  04 00 a0 e1                                      mov r0, r4
003789f0  60 36 84 e5                                      str r3, [r4, #0x660]
003789f4  64 36 96 e5                                      ldr r3, [r6, #0x664]
003789f8  64 36 84 e5                                      str r3, [r4, #0x664]
003789fc  68 36 96 e5                                      ldr r3, [r6, #0x668]
00378a00  68 36 84 e5                                      str r3, [r4, #0x668]
00378a04  6c 36 d6 e5                                      ldrb r3, [r6, #0x66c]
00378a08  6c 36 c4 e5                                      strb r3, [r4, #0x66c]
00378a0c  70 36 96 e5                                      ldr r3, [r6, #0x670]
00378a10  70 36 84 e5                                      str r3, [r4, #0x670]
00378a14  74 36 96 e5                                      ldr r3, [r6, #0x674]
00378a18  74 36 84 e5                                      str r3, [r4, #0x674]
00378a1c  78 36 96 e5                                      ldr r3, [r6, #0x678]
00378a20  78 36 84 e5                                      str r3, [r4, #0x678]
00378a24  7c 36 96 e5                                      ldr r3, [r6, #0x67c]
00378a28  7c 36 84 e5                                      str r3, [r4, #0x67c]
00378a2c  80 36 96 e5                                      ldr r3, [r6, #0x680]
00378a30  80 36 84 e5                                      str r3, [r4, #0x680]
00378a34  84 36 96 e5                                      ldr r3, [r6, #0x684]
00378a38  84 36 84 e5                                      str r3, [r4, #0x684]
00378a3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00459900, declared_size=172, range_size=172, mode=arm
; class-group: PlayerInfo
; alias: _ZN10PlayerInfo13SetInCutsceneEb
; demangled: PlayerInfo::SetInCutscene(bool)
; decoder-mode: arm
00459900  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00459904  94 40 9f e5                                      ldr r4, [pc, #0x94]
00459908  94 30 9f e5                                      ldr r3, [pc, #0x94]
0045990c  24 d0 4d e2                                      sub sp, sp, #0x24
00459910  04 40 8f e0                                      add r4, pc, r4
00459914  1d 20 dd e5                                      ldrb r2, [sp, #0x1d]
00459918  03 30 94 e7                                      ldr r3, [r4, r3]
0045991c  00 c0 e0 e3                                      mvn ip, #0
00459920  01 00 52 e1                                      cmp r2, r1
00459924  00 60 a0 e3                                      mov r6, #0
00459928  00 20 a0 e3                                      mov r2, #0
0045992c  08 30 83 e2                                      add r3, r3, #8
00459930  01 e0 a0 e3                                      mov lr, #1
00459934  00 70 a0 e3                                      mov r7, #0
00459938  f8 60 cd e1                                      strd r6, r7, [sp, #8]
0045993c  04 e0 8d e5                                      str lr, [sp, #4]
00459940  14 c0 8d e5                                      str ip, [sp, #0x14]
00459944  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00459948  00 30 8d e5                                      str r3, [sp]
0045994c  00 50 a0 e1                                      mov r5, r0
00459950  10 c0 8d e5                                      str ip, [sp, #0x10]
00459954  18 20 8d e5                                      str r2, [sp, #0x18]
00459958  0d 60 a0 01                                      moveq r6, sp
0045995c  03 00 00 0a                                      beq #0x459970
00459960  0d 00 a0 e1                                      mov r0, sp
00459964  0d 60 a0 e1                                      mov r6, sp
00459968  1d 10 cd e5                                      strb r1, [sp, #0x1d]
0045996c  84 ed 0e eb                                      bl #0x814f84
00459970  30 20 9f e5                                      ldr r2, [pc, #0x30]
00459974  4e 0e 85 e2                                      add r0, r5, #0x4e0
00459978  e8 34 95 e5                                      ldr r3, [r5, #0x4e8]
0045997c  02 20 94 e7                                      ldr r2, [r4, r2]
00459980  08 00 80 e2                                      add r0, r0, #8
00459984  1d 10 86 e2                                      add r1, r6, #0x1d
00459988  08 20 82 e2                                      add r2, r2, #8
0045998c  00 20 8d e5                                      str r2, [sp]
00459990  0f e0 a0 e1                                      mov lr, pc
00459994  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00459998  24 d0 8d e2                                      add sp, sp, #0x24
0045999c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
004599a0  80 b1 53 00 18 30 00 00 c8 0a 00 00              .byte 0x80, 0xb1, 0x53, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00
