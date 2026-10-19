; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0043f9c4, declared_size=148, range_size=148, mode=arm
; class-group: OnlineGameState
; alias: _ZN15OnlineGameStateD1Ev
; demangled: OnlineGameState::~OnlineGameState()
; decoder-mode: arm
0043f9c4  70 40 2d e9                                      push {r4, r5, r6, lr}
0043f9c8  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
0043f9cc  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0043f9d0  00 60 a0 e1                                      mov r6, r0
0043f9d4  05 50 8f e0                                      add r5, pc, r5
0043f9d8  03 30 95 e7                                      ldr r3, [r5, r3]
0043f9dc  06 40 a0 e1                                      mov r4, r6
0043f9e0  08 30 83 e2                                      add r3, r3, #8
0043f9e4  50 30 80 e4                                      str r3, [r0], #0x50
0043f9e8  d9 ff ff eb                                      bl #0x43f954
0043f9ec  60 30 9f e5                                      ldr r3, [pc, #0x60]
0043f9f0  03 30 95 e7                                      ldr r3, [r5, r3]
0043f9f4  08 30 83 e2                                      add r3, r3, #8
0043f9f8  04 30 84 e4                                      str r3, [r4], #4
0043f9fc  04 00 94 e5                                      ldr r0, [r4, #4]
0043fa00  00 00 50 e3                                      cmp r0, #0
0043fa04  0c 00 00 0a                                      beq #0x43fa3c
0043fa08  08 30 90 e5                                      ldr r3, [r0, #8]
0043fa0c  00 00 53 e3                                      cmp r3, #0
0043fa10  0c 20 90 15                                      ldrne r2, [r0, #0xc]
0043fa14  0c 30 90 05                                      ldreq r3, [r0, #0xc]
0043fa18  0c 20 83 15                                      strne r2, [r3, #0xc]
0043fa1c  08 30 84 05                                      streq r3, [r4, #8]
0043fa20  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0043fa24  08 20 90 e5                                      ldr r2, [r0, #8]
0043fa28  00 20 83 e5                                      str r2, [r3]
0043fa2c  2f 39 fb eb                                      bl #0x30def0
0043fa30  04 00 94 e5                                      ldr r0, [r4, #4]
0043fa34  00 00 50 e3                                      cmp r0, #0
0043fa38  f2 ff ff 1a                                      bne #0x43fa08
0043fa3c  00 30 a0 e3                                      mov r3, #0
0043fa40  04 30 c6 e5                                      strb r3, [r6, #4]
0043fa44  06 00 a0 e1                                      mov r0, r6
0043fa48  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0043fa4c  bc 50 55 00 78 44 00 00 04 13 00 00              .byte 0xbc, 0x50, 0x55, 0x00, 0x78, 0x44, 0x00, 0x00, 0x04, 0x13, 0x00, 0x00

; FUNCTION 0x0043fad8, declared_size=28, range_size=28, mode=arm
; class-group: OnlineGameState
; alias: _ZN15OnlineGameStateD0Ev
; demangled: OnlineGameState::~OnlineGameState()
; decoder-mode: arm
0043fad8  10 40 2d e9                                      push {r4, lr}
0043fadc  00 40 a0 e1                                      mov r4, r0
0043fae0  b7 ff ff eb                                      bl #0x43f9c4
0043fae4  04 00 a0 e1                                      mov r0, r4
0043fae8  54 42 fb eb                                      bl #0x310440
0043faec  04 00 a0 e1                                      mov r0, r4
0043faf0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0049db80, declared_size=7424, range_size=7424, mode=arm
; class-group: OnlineGameState
; alias: _ZN15OnlineGameState13processEventsEv
; demangled: OnlineGameState::processEvents()
; decoder-mode: arm
0049db80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0049db84  5c 4f 9f e5                                      ldr r4, [pc, #0xf5c]
0049db88  5c 1f 9f e5                                      ldr r1, [pc, #0xf5c]
0049db8c  5c 7f 9f e5                                      ldr r7, [pc, #0xf5c]
0049db90  04 40 8f e0                                      add r4, pc, r4
0049db94  01 30 94 e7                                      ldr r3, [r4, r1]
0049db98  b1 df 4d e2                                      sub sp, sp, #0x2c4
0049db9c  14 10 8d e5                                      str r1, [sp, #0x14]
0049dba0  00 30 93 e5                                      ldr r3, [r3]
0049dba4  00 50 a0 e1                                      mov r5, r0
0049dba8  bc 32 8d e5                                      str r3, [sp, #0x2bc]
0049dbac  f6 8c 0d eb                                      bl #0x800f8c
0049dbb0  01 15 a0 e3                                      mov r1, #0x400000
0049dbb4  01 10 81 e2                                      add r1, r1, #1
0049dbb8  07 00 94 e7                                      ldr r0, [r4, r7]
0049dbbc  01 20 a0 e3                                      mov r2, #1
0049dbc0  0c 82 0d eb                                      bl #0x7fe3f8
0049dbc4  00 00 50 e3                                      cmp r0, #0
0049dbc8  ad 01 00 1a                                      bne #0x49e284
0049dbcc  20 6f 9f e5                                      ldr r6, [pc, #0xf20]
0049dbd0  ed 8c 0d eb                                      bl #0x800f8c
0049dbd4  01 15 a0 e3                                      mov r1, #0x400000
0049dbd8  03 10 81 e2                                      add r1, r1, #3
0049dbdc  07 00 94 e7                                      ldr r0, [r4, r7]
0049dbe0  01 20 a0 e3                                      mov r2, #1
0049dbe4  03 82 0d eb                                      bl #0x7fe3f8
0049dbe8  00 00 50 e3                                      cmp r0, #0
0049dbec  86 00 00 0a                                      beq #0x49de0c
0049dbf0  06 80 94 e7                                      ldr r8, [r4, r6]
0049dbf4  de 3e d8 e1                                      ldrsb r3, [r8, #0xee]
0049dbf8  00 00 53 e3                                      cmp r3, #0
0049dbfc  73 00 00 0a                                      beq #0x49ddd0
0049dc00  61 2f 8d e2                                      add r2, sp, #0x184
0049dc04  24 20 8d e5                                      str r2, [sp, #0x24]
0049dc08  df 8c 0d eb                                      bl #0x800f8c
0049dc0c  00 30 a0 e1                                      mov r3, r0
0049dc10  00 10 a0 e1                                      mov r1, r0
0049dc14  00 30 93 e5                                      ldr r3, [r3]
0049dc18  24 00 9d e5                                      ldr r0, [sp, #0x24]
0049dc1c  0f e0 a0 e1                                      mov lr, pc
0049dc20  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0049dc24  9b 0c fa eb                                      bl #0x320e98
0049dc28  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049dc2c  02 00 53 e3                                      cmp r3, #2
0049dc30  02 00 00 0a                                      beq #0x49dc40
0049dc34  50 00 80 e2                                      add r0, r0, #0x50
0049dc38  24 10 9d e5                                      ldr r1, [sp, #0x24]
0049dc3c  ee 87 fe eb                                      bl #0x43fbfc
0049dc40  84 21 9d e5                                      ldr r2, [sp, #0x184]
0049dc44  88 11 9d e5                                      ldr r1, [sp, #0x188]
0049dc48  c9 39 06 e3                                      movw r3, #0x69c9
0049dc4c  be 36 45 e3                                      movt r3, #0x56be
0049dc50  01 20 62 e0                                      rsb r2, r2, r1
0049dc54  c2 21 a0 e1                                      asr r2, r2, #3
0049dc58  93 02 02 e0                                      mul r2, r3, r2
0049dc5c  00 00 52 e3                                      cmp r2, #0
0049dc60  bb 02 00 0a                                      beq #0x49e754
0049dc64  8c 3e 9f e5                                      ldr r3, [pc, #0xe8c]
0049dc68  00 a0 a0 e3                                      mov sl, #0
0049dc6c  82 cf 8d e2                                      add ip, sp, #0x208
0049dc70  03 30 8f e0                                      add r3, pc, r3
0049dc74  20 30 8d e5                                      str r3, [sp, #0x20]
0049dc78  82 3f 8d e2                                      add r3, sp, #0x208
0049dc7c  02 30 83 e2                                      add r3, r3, #2
0049dc80  79 ef 8d e2                                      add lr, sp, #0x1e4
0049dc84  0a 50 a0 e1                                      mov r5, sl
0049dc88  1c 30 8d e5                                      str r3, [sp, #0x1c]
0049dc8c  10 c0 8d e5                                      str ip, [sp, #0x10]
0049dc90  a9 8f 8d e2                                      add r8, sp, #0x2a4
0049dc94  18 e0 8d e5                                      str lr, [sp, #0x18]
0049dc98  a3 9f 8d e2                                      add sb, sp, #0x28c
0049dc9c  7a bf 8d e2                                      add fp, sp, #0x1e8
0049dca0  28 70 8d e5                                      str r7, [sp, #0x28]
0049dca4  1b 00 00 ea                                      b #0x49dd18
0049dca8  94 ac 09 eb                                      bl #0x708f00
0049dcac  b8 02 9d e5                                      ldr r0, [sp, #0x2b8]
0049dcb0  08 00 50 e1                                      cmp r0, r8
0049dcb4  06 00 00 0a                                      beq #0x49dcd4
0049dcb8  00 00 50 e3                                      cmp r0, #0
0049dcbc  04 00 00 0a                                      beq #0x49dcd4
0049dcc0  a4 12 9d e5                                      ldr r1, [sp, #0x2a4]
0049dcc4  01 10 60 e0                                      rsb r1, r0, r1
0049dcc8  80 00 51 e3                                      cmp r1, #0x80
0049dccc  53 01 00 8a                                      bhi #0x49e220
0049dcd0  8a ac 09 eb                                      bl #0x708f00
0049dcd4  06 a0 94 e7                                      ldr sl, [r4, r6]
0049dcd8  0b 10 a0 e1                                      mov r1, fp
0049dcdc  ee 00 8a e2                                      add r0, sl, #0xee
0049dce0  8d c1 f9 eb                                      bl #0x30e31c
0049dce4  00 00 50 e3                                      cmp r0, #0
0049dce8  53 01 00 0a                                      beq #0x49e23c
0049dcec  84 31 9d e5                                      ldr r3, [sp, #0x184]
0049dcf0  88 21 9d e5                                      ldr r2, [sp, #0x188]
0049dcf4  c9 09 06 e3                                      movw r0, #0x69c9
0049dcf8  be 06 45 e3                                      movt r0, #0x56be
0049dcfc  02 30 63 e0                                      rsb r3, r3, r2
0049dd00  c3 31 a0 e1                                      asr r3, r3, #3
0049dd04  90 03 03 e0                                      mul r3, r0, r3
0049dd08  01 50 85 e2                                      add r5, r5, #1
0049dd0c  03 00 55 e1                                      cmp r5, r3
0049dd10  05 a0 a0 e1                                      mov sl, r5
0049dd14  8d 02 00 2a                                      bhs #0x49e750
0049dd18  20 30 9d e5                                      ldr r3, [sp, #0x20]
0049dd1c  02 cc 8d e2                                      add ip, sp, #0x200
0049dd20  00 10 a0 e3                                      mov r1, #0
0049dd24  b0 30 d3 e1                                      ldrh r3, [r3]
0049dd28  1e 20 a0 e3                                      mov r2, #0x1e
0049dd2c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0049dd30  b8 30 cc e1                                      strh r3, [ip, #8]
0049dd34  c9 c1 f9 eb                                      bl #0x30e460
0049dd38  56 0c fa eb                                      bl #0x320e98
0049dd3c  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049dd40  03 30 43 e2                                      sub r3, r3, #3
0049dd44  01 00 53 e3                                      cmp r3, #1
0049dd48  2d 01 00 9a                                      bls #0x49e204
0049dd4c  84 31 9d e5                                      ldr r3, [sp, #0x184]
0049dd50  f2 ef a0 e3                                      mov lr, #0x3c8
0049dd54  03 10 a0 e3                                      mov r1, #3
0049dd58  9e 3a 2a e0                                      mla sl, lr, sl, r3
0049dd5c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0049dd60  20 30 a0 e3                                      mov r3, #0x20
0049dd64  28 00 8a e2                                      add r0, sl, #0x28
0049dd68  13 e8 0d eb                                      bl #0x817dbc
0049dd6c  06 30 94 e7                                      ldr r3, [r4, r6]
0049dd70  10 10 9d e5                                      ldr r1, [sp, #0x10]
0049dd74  18 20 9d e5                                      ldr r2, [sp, #0x18]
0049dd78  34 70 93 e5                                      ldr r7, [r3, #0x34]
0049dd7c  08 00 a0 e1                                      mov r0, r8
0049dd80  d9 d8 f9 eb                                      bl #0x3140ec
0049dd84  09 00 a0 e1                                      mov r0, sb
0049dd88  07 10 a0 e1                                      mov r1, r7
0049dd8c  08 20 a0 e1                                      mov r2, r8
0049dd90  00 30 a0 e3                                      mov r3, #0
0049dd94  9c a7 01 eb                                      bl #0x507c0c
0049dd98  0b 00 a0 e1                                      mov r0, fp
0049dd9c  a0 12 9d e5                                      ldr r1, [sp, #0x2a0]
0049dda0  de c1 f9 eb                                      bl #0x30e520
0049dda4  a0 02 9d e5                                      ldr r0, [sp, #0x2a0]
0049dda8  09 00 50 e1                                      cmp r0, sb
0049ddac  be ff ff 0a                                      beq #0x49dcac
0049ddb0  00 00 50 e3                                      cmp r0, #0
0049ddb4  bc ff ff 0a                                      beq #0x49dcac
0049ddb8  8c 12 9d e5                                      ldr r1, [sp, #0x28c]
0049ddbc  01 10 60 e0                                      rsb r1, r0, r1
0049ddc0  80 00 51 e3                                      cmp r1, #0x80
0049ddc4  b7 ff ff 9a                                      bls #0x49dca8
0049ddc8  9c c9 f9 eb                                      bl #0x310440
0049ddcc  b6 ff ff ea                                      b #0x49dcac
0049ddd0  30 0c fa eb                                      bl #0x320e98
0049ddd4  25 30 d0 e5                                      ldrb r3, [r0, #0x25]
0049ddd8  00 00 53 e3                                      cmp r3, #0
0049dddc  0a 00 00 1a                                      bne #0x49de0c
0049dde0  69 8c 0d eb                                      bl #0x800f8c
0049dde4  00 30 90 e5                                      ldr r3, [r0]
0049dde8  0f e0 a0 e1                                      mov lr, pc
0049ddec  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0049ddf0  07 10 a0 e3                                      mov r1, #7
0049ddf4  ec e7 0d eb                                      bl #0x817dac
0049ddf8  00 50 50 e2                                      subs r5, r0, #0
0049ddfc  bc 04 00 0a                                      beq #0x49f0f4
0049de00  24 0c fa eb                                      bl #0x320e98
0049de04  c9 30 a0 e3                                      mov r3, #0xc9
0049de08  14 30 80 e5                                      str r3, [r0, #0x14]
0049de0c  5e 8c 0d eb                                      bl #0x800f8c
0049de10  01 15 a0 e3                                      mov r1, #0x400000
0049de14  04 10 81 e2                                      add r1, r1, #4
0049de18  07 00 94 e7                                      ldr r0, [r4, r7]
0049de1c  01 20 a0 e3                                      mov r2, #1
0049de20  74 81 0d eb                                      bl #0x7fe3f8
0049de24  00 00 50 e3                                      cmp r0, #0
0049de28  2b 01 00 1a                                      bne #0x49e2dc
0049de2c  56 8c 0d eb                                      bl #0x800f8c
0049de30  07 50 94 e7                                      ldr r5, [r4, r7]
0049de34  01 15 a0 e3                                      mov r1, #0x400000
0049de38  05 10 81 e2                                      add r1, r1, #5
0049de3c  01 20 a0 e3                                      mov r2, #1
0049de40  05 00 a0 e1                                      mov r0, r5
0049de44  6b 81 0d eb                                      bl #0x7fe3f8
0049de48  4f 8c 0d eb                                      bl #0x800f8c
0049de4c  01 15 a0 e3                                      mov r1, #0x400000
0049de50  05 00 a0 e1                                      mov r0, r5
0049de54  08 10 81 e2                                      add r1, r1, #8
0049de58  01 20 a0 e3                                      mov r2, #1
0049de5c  65 81 0d eb                                      bl #0x7fe3f8
0049de60  00 00 50 e3                                      cmp r0, #0
0049de64  62 00 00 0a                                      beq #0x49dff4
0049de68  06 30 94 e7                                      ldr r3, [r4, r6]
0049de6c  de 2e d3 e1                                      ldrsb r2, [r3, #0xee]
0049de70  00 00 52 e3                                      cmp r2, #0
0049de74  3d 00 00 0a                                      beq #0x49df70
0049de78  7c 1c 9f e5                                      ldr r1, [pc, #0xc7c]
0049de7c  16 5e 8d e2                                      add r5, sp, #0x160
0049de80  00 80 a0 e3                                      mov r8, #0
0049de84  01 30 a0 e3                                      mov r3, #1
0049de88  01 10 8f e0                                      add r1, pc, r1
0049de8c  0c 00 85 e2                                      add r0, r5, #0xc
0049de90  64 31 cd e5                                      strb r3, [sp, #0x164]
0049de94  60 81 cd e5                                      strb r8, [sp, #0x160]
0049de98  61 31 cd e5                                      strb r3, [sp, #0x161]
0049de9c  6c 81 cd e5                                      strb r8, [sp, #0x16c]
0049dea0  6d 81 cd e5                                      strb r8, [sp, #0x16d]
0049dea4  29 e5 0b eb                                      bl #0x797350
0049dea8  06 70 94 e7                                      ldr r7, [r4, r6]
0049deac  ff 35 a0 e3                                      mov r3, #0x3fc00000
0049deb0  00 20 a0 e3                                      mov r2, #0
0049deb4  1e 1e 8d e2                                      add r1, sp, #0x1e0
0049deb8  03 36 83 e2                                      add r3, r3, #0x300000
0049debc  f8 20 41 e1                                      strd r2, r3, [r1, #-8]
0049dec0  02 30 a0 e3                                      mov r3, #2
0049dec4  54 00 97 e5                                      ldr r0, [r7, #0x54]
0049dec8  79 31 cd e5                                      strb r3, [sp, #0x179]
0049decc  dc 31 9d e5                                      ldr r3, [sp, #0x1dc]
0049ded0  78 81 cd e5                                      strb r8, [sp, #0x178]
0049ded4  7c 81 8d e5                                      str r8, [sp, #0x17c]
0049ded8  20 30 85 e5                                      str r3, [r5, #0x20]
0049dedc  27 3b fe eb                                      bl #0x42cb80
0049dee0  00 80 a0 e1                                      mov r8, r0
0049dee4  54 00 97 e5                                      ldr r0, [r7, #0x54]
0049dee8  24 3b fe eb                                      bl #0x42cb80
0049deec  6e 27 0c eb                                      bl #0x7a7cac
0049def0  97 58 0b eb                                      bl #0x774154
0049def4  04 2c 9f e5                                      ldr r2, [pc, #0xc04]
0049def8  00 10 a0 e1                                      mov r1, r0
0049defc  05 30 a0 e1                                      mov r3, r5
0049df00  03 c0 a0 e3                                      mov ip, #3
0049df04  08 00 a0 e1                                      mov r0, r8
0049df08  02 20 8f e0                                      add r2, pc, r2
0049df0c  00 c0 8d e5                                      str ip, [sp]
0049df10  bd 37 0c eb                                      bl #0x7abe0c
0049df14  0e 31 d7 e5                                      ldrb r3, [r7, #0x10e]
0049df18  00 00 53 e3                                      cmp r3, #0
0049df1c  05 00 00 0a                                      beq #0x49df38
0049df20  de 3e d7 e1                                      ldrsb r3, [r7, #0xee]
0049df24  00 00 53 e3                                      cmp r3, #0
0049df28  02 00 00 0a                                      beq #0x49df38
0049df2c  16 8c 0d eb                                      bl #0x800f8c
0049df30  ee 10 87 e2                                      add r1, r7, #0xee
0049df34  14 fa 0d eb                                      bl #0x81c78c
0049df38  06 30 94 e7                                      ldr r3, [r4, r6]
0049df3c  00 20 a0 e3                                      mov r2, #0
0049df40  0e 21 c3 e5                                      strb r2, [r3, #0x10e]
0049df44  ee 20 c3 e5                                      strb r2, [r3, #0xee]
0049df48  d2 0b fa eb                                      bl #0x320e98
0049df4c  c8 30 a0 e3                                      mov r3, #0xc8
0049df50  14 30 80 e5                                      str r3, [r0, #0x14]
0049df54  18 00 85 e2                                      add r0, r5, #0x18
0049df58  71 e4 0b eb                                      bl #0x797124
0049df5c  0c 00 85 e2                                      add r0, r5, #0xc
0049df60  6f e4 0b eb                                      bl #0x797124
0049df64  05 00 a0 e1                                      mov r0, r5
0049df68  6d e4 0b eb                                      bl #0x797124
0049df6c  9c 00 00 ea                                      b #0x49e1e4
0049df70  0e 31 d3 e5                                      ldrb r3, [r3, #0x10e]
0049df74  00 00 53 e3                                      cmp r3, #0
0049df78  be ff ff 1a                                      bne #0x49de78
0049df7c  88 bf fa eb                                      bl #0x34dda4
0049df80  00 80 a0 e1                                      mov r8, r0
0049df84  08 00 a0 e1                                      mov r0, r8
0049df88  f1 bd fa eb                                      bl #0x34d754
0049df8c  01 50 a0 e3                                      mov r5, #1
0049df90  00 00 55 e1                                      cmp r5, r0
0049df94  0c 00 00 2a                                      bhs #0x49dfcc
0049df98  00 30 98 e5                                      ldr r3, [r8]
0049df9c  08 00 a0 e1                                      mov r0, r8
0049dfa0  05 10 a0 e1                                      mov r1, r5
0049dfa4  0f e0 a0 e1                                      mov lr, pc
0049dfa8  08 f0 93 e5                                      ldr pc, [r3, #8]
0049dfac  58 37 d0 e5                                      ldrb r3, [r0, #0x758]
0049dfb0  00 00 53 e3                                      cmp r3, #0
0049dfb4  df 00 00 1a                                      bne #0x49e338
0049dfb8  01 50 85 e2                                      add r5, r5, #1
0049dfbc  08 00 a0 e1                                      mov r0, r8
0049dfc0  e3 bd fa eb                                      bl #0x34d754
0049dfc4  00 00 55 e1                                      cmp r5, r0
0049dfc8  f2 ff ff 3a                                      blo #0x49df98
0049dfcc  b1 0b fa eb                                      bl #0x320e98
0049dfd0  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049dfd4  04 00 53 e3                                      cmp r3, #4
0049dfd8  e6 01 00 1a                                      bne #0x49e778
0049dfdc  b0 5b 9f e5                                      ldr r5, [pc, #0xbb0]
0049dfe0  e9 8b 0d eb                                      bl #0x800f8c
0049dfe4  05 30 94 e7                                      ldr r3, [r4, r5]
0049dfe8  00 30 d3 e5                                      ldrb r3, [r3]
0049dfec  00 00 53 e3                                      cmp r3, #0
0049dff0  88 02 00 1a                                      bne #0x49ea18
0049dff4  e4 8b 0d eb                                      bl #0x800f8c
0049dff8  01 15 a0 e3                                      mov r1, #0x400000
0049dffc  09 10 81 e2                                      add r1, r1, #9
0049e000  07 00 94 e7                                      ldr r0, [r4, r7]
0049e004  01 20 a0 e3                                      mov r2, #1
0049e008  fa 80 0d eb                                      bl #0x7fe3f8
0049e00c  00 00 50 e3                                      cmp r0, #0
0049e010  c6 01 00 1a                                      bne #0x49e730
0049e014  dc 8b 0d eb                                      bl #0x800f8c
0049e018  01 15 a0 e3                                      mov r1, #0x400000
0049e01c  0b 10 81 e2                                      add r1, r1, #0xb
0049e020  07 00 94 e7                                      ldr r0, [r4, r7]
0049e024  01 20 a0 e3                                      mov r2, #1
0049e028  f2 80 0d eb                                      bl #0x7fe3f8
0049e02c  00 00 50 e3                                      cmp r0, #0
0049e030  b6 01 00 1a                                      bne #0x49e710
0049e034  d4 8b 0d eb                                      bl #0x800f8c
0049e038  01 15 a0 e3                                      mov r1, #0x400000
0049e03c  0c 10 81 e2                                      add r1, r1, #0xc
0049e040  07 00 94 e7                                      ldr r0, [r4, r7]
0049e044  01 20 a0 e3                                      mov r2, #1
0049e048  ea 80 0d eb                                      bl #0x7fe3f8
0049e04c  00 00 50 e3                                      cmp r0, #0
0049e050  96 01 00 1a                                      bne #0x49e6b0
0049e054  cc 8b 0d eb                                      bl #0x800f8c
0049e058  07 50 94 e7                                      ldr r5, [r4, r7]
0049e05c  01 15 a0 e3                                      mov r1, #0x400000
0049e060  0d 10 81 e2                                      add r1, r1, #0xd
0049e064  05 00 a0 e1                                      mov r0, r5
0049e068  00 20 a0 e3                                      mov r2, #0
0049e06c  e1 80 0d eb                                      bl #0x7fe3f8
0049e070  00 00 50 e3                                      cmp r0, #0
0049e074  69 01 00 1a                                      bne #0x49e620
0049e078  c3 8b 0d eb                                      bl #0x800f8c
0049e07c  07 50 94 e7                                      ldr r5, [r4, r7]
0049e080  01 15 a0 e3                                      mov r1, #0x400000
0049e084  0e 10 81 e2                                      add r1, r1, #0xe
0049e088  01 20 a0 e3                                      mov r2, #1
0049e08c  05 00 a0 e1                                      mov r0, r5
0049e090  d8 80 0d eb                                      bl #0x7fe3f8
0049e094  bc 8b 0d eb                                      bl #0x800f8c
0049e098  01 15 a0 e3                                      mov r1, #0x400000
0049e09c  12 10 81 e2                                      add r1, r1, #0x12
0049e0a0  01 20 a0 e3                                      mov r2, #1
0049e0a4  05 00 a0 e1                                      mov r0, r5
0049e0a8  d2 80 0d eb                                      bl #0x7fe3f8
0049e0ac  b6 8b 0d eb                                      bl #0x800f8c
0049e0b0  01 15 a0 e3                                      mov r1, #0x400000
0049e0b4  13 10 81 e2                                      add r1, r1, #0x13
0049e0b8  01 20 a0 e3                                      mov r2, #1
0049e0bc  05 00 a0 e1                                      mov r0, r5
0049e0c0  cc 80 0d eb                                      bl #0x7fe3f8
0049e0c4  b0 8b 0d eb                                      bl #0x800f8c
0049e0c8  01 15 a0 e3                                      mov r1, #0x400000
0049e0cc  14 10 81 e2                                      add r1, r1, #0x14
0049e0d0  01 20 a0 e3                                      mov r2, #1
0049e0d4  05 00 a0 e1                                      mov r0, r5
0049e0d8  c6 80 0d eb                                      bl #0x7fe3f8
0049e0dc  aa 8b 0d eb                                      bl #0x800f8c
0049e0e0  01 15 a0 e3                                      mov r1, #0x400000
0049e0e4  15 10 81 e2                                      add r1, r1, #0x15
0049e0e8  01 20 a0 e3                                      mov r2, #1
0049e0ec  05 00 a0 e1                                      mov r0, r5
0049e0f0  c0 80 0d eb                                      bl #0x7fe3f8
0049e0f4  a4 8b 0d eb                                      bl #0x800f8c
0049e0f8  01 15 a0 e3                                      mov r1, #0x400000
0049e0fc  01 20 a0 e3                                      mov r2, #1
0049e100  05 00 a0 e1                                      mov r0, r5
0049e104  bb 80 0d eb                                      bl #0x7fe3f8
0049e108  9f 8b 0d eb                                      bl #0x800f8c
0049e10c  01 15 a0 e3                                      mov r1, #0x400000
0049e110  05 00 a0 e1                                      mov r0, r5
0049e114  10 10 81 e2                                      add r1, r1, #0x10
0049e118  01 20 a0 e3                                      mov r2, #1
0049e11c  b5 80 0d eb                                      bl #0x7fe3f8
0049e120  00 00 50 e3                                      cmp r0, #0
0049e124  03 00 00 0a                                      beq #0x49e138
0049e128  06 50 94 e7                                      ldr r5, [r4, r6]
0049e12c  ec 30 d5 e5                                      ldrb r3, [r5, #0xec]
0049e130  00 00 53 e3                                      cmp r3, #0
0049e134  03 01 00 1a                                      bne #0x49e548
0049e138  93 8b 0d eb                                      bl #0x800f8c
0049e13c  01 15 a0 e3                                      mov r1, #0x400000
0049e140  11 10 81 e2                                      add r1, r1, #0x11
0049e144  07 00 94 e7                                      ldr r0, [r4, r7]
0049e148  01 20 a0 e3                                      mov r2, #1
0049e14c  a9 80 0d eb                                      bl #0x7fe3f8
0049e150  00 00 50 e3                                      cmp r0, #0
0049e154  03 00 00 0a                                      beq #0x49e168
0049e158  06 50 94 e7                                      ldr r5, [r4, r6]
0049e15c  ec 30 d5 e5                                      ldrb r3, [r5, #0xec]
0049e160  00 00 53 e3                                      cmp r3, #0
0049e164  7f 00 00 1a                                      bne #0x49e368
0049e168  89 7d 0d eb                                      bl #0x7fd794
0049e16c  05 16 a0 e3                                      mov r1, #0x500000
0049e170  08 00 80 e2                                      add r0, r0, #8
0049e174  03 10 81 e2                                      add r1, r1, #3
0049e178  01 20 a0 e3                                      mov r2, #1
0049e17c  9d 80 0d eb                                      bl #0x7fe3f8
0049e180  00 00 50 e3                                      cmp r0, #0
0049e184  b4 00 00 1a                                      bne #0x49e45c
0049e188  7f 8b 0d eb                                      bl #0x800f8c
0049e18c  01 15 a0 e3                                      mov r1, #0x400000
0049e190  07 00 94 e7                                      ldr r0, [r4, r7]
0049e194  0a 10 81 e2                                      add r1, r1, #0xa
0049e198  01 20 a0 e3                                      mov r2, #1
0049e19c  95 80 0d eb                                      bl #0x7fe3f8
0049e1a0  00 00 50 e3                                      cmp r0, #0
0049e1a4  b7 00 00 0a                                      beq #0x49e488
0049e1a8  54 39 9f e5                                      ldr r3, [pc, #0x954]
0049e1ac  03 30 94 e7                                      ldr r3, [r4, r3]
0049e1b0  00 50 93 e5                                      ldr r5, [r3]
0049e1b4  00 00 55 e3                                      cmp r5, #0
0049e1b8  ff 01 00 0a                                      beq #0x49e9bc
0049e1bc  06 00 94 e7                                      ldr r0, [r4, r6]
0049e1c0  01 10 a0 e3                                      mov r1, #1
0049e1c4  0a 38 fa eb                                      bl #0x32c1f4
0049e1c8  6f 8b 0d eb                                      bl #0x800f8c
0049e1cc  00 30 90 e5                                      ldr r3, [r0]
0049e1d0  0f e0 a0 e1                                      mov lr, pc
0049e1d4  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0049e1d8  00 30 90 e5                                      ldr r3, [r0]
0049e1dc  0f e0 a0 e1                                      mov lr, pc
0049e1e0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0049e1e4  14 20 9d e5                                      ldr r2, [sp, #0x14]
0049e1e8  02 30 94 e7                                      ldr r3, [r4, r2]
0049e1ec  bc 22 9d e5                                      ldr r2, [sp, #0x2bc]
0049e1f0  00 30 93 e5                                      ldr r3, [r3]
0049e1f4  03 00 52 e1                                      cmp r2, r3
0049e1f8  89 05 00 1a                                      bne #0x49f824
0049e1fc  b1 df 8d e2                                      add sp, sp, #0x2c4
0049e200  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0049e204  84 31 9d e5                                      ldr r3, [sp, #0x184]
0049e208  f2 cf a0 e3                                      mov ip, #0x3c8
0049e20c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0049e210  9c 3a 2a e0                                      mla sl, ip, sl, r3
0049e214  1c 10 9a e5                                      ldr r1, [sl, #0x1c]
0049e218  31 c2 f9 eb                                      bl #0x30eae4
0049e21c  d2 fe ff ea                                      b #0x49dd6c
0049e220  86 c8 f9 eb                                      bl #0x310440
0049e224  06 a0 94 e7                                      ldr sl, [r4, r6]
0049e228  0b 10 a0 e1                                      mov r1, fp
0049e22c  ee 00 8a e2                                      add r0, sl, #0xee
0049e230  39 c0 f9 eb                                      bl #0x30e31c
0049e234  00 00 50 e3                                      cmp r0, #0
0049e238  ab fe ff 1a                                      bne #0x49dcec
0049e23c  28 70 9d e5                                      ldr r7, [sp, #0x28]
0049e240  08 00 8d e5                                      str r0, [sp, #8]
0049e244  13 0b fa eb                                      bl #0x320e98
0049e248  30 50 80 e5                                      str r5, [r0, #0x30]
0049e24c  11 0b fa eb                                      bl #0x320e98
0049e250  67 30 a0 e3                                      mov r3, #0x67
0049e254  14 30 80 e5                                      str r3, [r0, #0x14]
0049e258  54 00 9a e5                                      ldr r0, [sl, #0x54]
0049e25c  47 3a fe eb                                      bl #0x42cb80
0049e260  08 c0 9d e5                                      ldr ip, [sp, #8]
0049e264  9c 18 9f e5                                      ldr r1, [pc, #0x89c]
0049e268  9c 28 9f e5                                      ldr r2, [pc, #0x89c]
0049e26c  0c 30 a0 e1                                      mov r3, ip
0049e270  01 10 8f e0                                      add r1, pc, r1
0049e274  02 20 8f e0                                      add r2, pc, r2
0049e278  00 c0 8d e5                                      str ip, [sp]
0049e27c  59 3d 0c eb                                      bl #0x7ad7e8
0049e280  39 01 00 ea                                      b #0x49e76c
0049e284  03 0b fa eb                                      bl #0x320e98
0049e288  01 30 a0 e3                                      mov r3, #1
0049e28c  24 30 c0 e5                                      strb r3, [r0, #0x24]
0049e290  00 0b fa eb                                      bl #0x320e98
0049e294  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049e298  03 00 53 e3                                      cmp r3, #3
0049e29c  77 01 00 0a                                      beq #0x49e880
0049e2a0  4c 68 9f e5                                      ldr r6, [pc, #0x84c]
0049e2a4  fb 0a fa eb                                      bl #0x320e98
0049e2a8  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049e2ac  02 00 53 e3                                      cmp r3, #2
0049e2b0  46 fe ff 1a                                      bne #0x49dbd0
0049e2b4  4e 30 d5 e5                                      ldrb r3, [r5, #0x4e]
0049e2b8  00 00 53 e3                                      cmp r3, #0
0049e2bc  43 fe ff 0a                                      beq #0x49dbd0
0049e2c0  f4 0a fa eb                                      bl #0x320e98
0049e2c4  66 30 a0 e3                                      mov r3, #0x66
0049e2c8  14 30 80 e5                                      str r3, [r0, #0x14]
0049e2cc  f1 0a fa eb                                      bl #0x320e98
0049e2d0  00 30 a0 e3                                      mov r3, #0
0049e2d4  4e 30 c0 e5                                      strb r3, [r0, #0x4e]
0049e2d8  3c fe ff ea                                      b #0x49dbd0
0049e2dc  ed 0a fa eb                                      bl #0x320e98
0049e2e0  25 50 d0 e5                                      ldrb r5, [r0, #0x25]
0049e2e4  00 00 55 e3                                      cmp r5, #0
0049e2e8  cf fe ff 1a                                      bne #0x49de2c
0049e2ec  06 a0 94 e7                                      ldr sl, [r4, r6]
0049e2f0  54 00 9a e5                                      ldr r0, [sl, #0x54]
0049e2f4  21 3a fe eb                                      bl #0x42cb80
0049e2f8  00 80 a0 e1                                      mov r8, r0
0049e2fc  54 00 9a e5                                      ldr r0, [sl, #0x54]
0049e300  1e 3a fe eb                                      bl #0x42cb80
0049e304  68 26 0c eb                                      bl #0x7a7cac
0049e308  91 57 0b eb                                      bl #0x774154
0049e30c  fc 27 9f e5                                      ldr r2, [pc, #0x7fc]
0049e310  00 10 a0 e1                                      mov r1, r0
0049e314  05 30 a0 e1                                      mov r3, r5
0049e318  02 20 8f e0                                      add r2, pc, r2
0049e31c  08 00 a0 e1                                      mov r0, r8
0049e320  00 50 8d e5                                      str r5, [sp]
0049e324  b8 36 0c eb                                      bl #0x7abe0c
0049e328  da 0a fa eb                                      bl #0x320e98
0049e32c  c9 30 a0 e3                                      mov r3, #0xc9
0049e330  14 30 80 e5                                      str r3, [r0, #0x14]
0049e334  bc fe ff ea                                      b #0x49de2c
0049e338  67 c7 0d eb                                      bl #0x8100dc
0049e33c  00 a0 a0 e1                                      mov sl, r0
0049e340  11 8b 0d eb                                      bl #0x800f8c
0049e344  00 30 90 e5                                      ldr r3, [r0]
0049e348  0f e0 a0 e1                                      mov lr, pc
0049e34c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0049e350  05 20 a0 e1                                      mov r2, r5
0049e354  00 10 a0 e1                                      mov r1, r0
0049e358  0a 00 a0 e1                                      mov r0, sl
0049e35c  5d cd 0d eb                                      bl #0x8118d8
0049e360  01 50 85 e2                                      add r5, r5, #1
0049e364  14 ff ff ea                                      b #0x49dfbc
0049e368  a4 17 9f e5                                      ldr r1, [pc, #0x7a4]
0049e36c  a4 27 9f e5                                      ldr r2, [pc, #0x7a4]
0049e370  00 80 a0 e3                                      mov r8, #0
0049e374  01 30 a0 e3                                      mov r3, #1
0049e378  02 20 8f e0                                      add r2, pc, r2
0049e37c  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
0049e380  01 10 8f e0                                      add r1, pc, r1
0049e384  34 a0 95 e5                                      ldr sl, [r5, #0x34]
0049e388  f5 30 cd e5                                      strb r3, [sp, #0xf5]
0049e38c  f4 80 cd e5                                      strb r8, [sp, #0xf4]
0049e390  f8 80 cd e5                                      strb r8, [sp, #0xf8]
0049e394  10 9a 00 eb                                      bl #0x4c4bdc
0049e398  00 10 a0 e1                                      mov r1, r0
0049e39c  0a 00 a0 e1                                      mov r0, sl
0049e3a0  cd aa 01 eb                                      bl #0x508edc
0049e3a4  f4 a0 8d e2                                      add sl, sp, #0xf4
0049e3a8  0c 90 8a e2                                      add sb, sl, #0xc
0049e3ac  00 10 a0 e1                                      mov r1, r0
0049e3b0  09 00 a0 e1                                      mov r0, sb
0049e3b4  00 81 cd e5                                      strb r8, [sp, #0x100]
0049e3b8  01 81 cd e5                                      strb r8, [sp, #0x101]
0049e3bc  e3 e3 0b eb                                      bl #0x797350
0049e3c0  00 20 a0 e3                                      mov r2, #0
0049e3c4  1d 1e 8d e2                                      add r1, sp, #0x1d0
0049e3c8  00 30 a0 e3                                      mov r3, #0
0049e3cc  f0 20 c1 e1                                      strd r2, r3, [r1]
0049e3d0  02 30 a0 e3                                      mov r3, #2
0049e3d4  54 00 95 e5                                      ldr r0, [r5, #0x54]
0049e3d8  0d 31 cd e5                                      strb r3, [sp, #0x10d]
0049e3dc  d4 31 9d e5                                      ldr r3, [sp, #0x1d4]
0049e3e0  0c 81 cd e5                                      strb r8, [sp, #0x10c]
0049e3e4  10 81 8d e5                                      str r8, [sp, #0x110]
0049e3e8  20 30 8a e5                                      str r3, [sl, #0x20]
0049e3ec  e3 39 fe eb                                      bl #0x42cb80
0049e3f0  00 80 a0 e1                                      mov r8, r0
0049e3f4  54 00 95 e5                                      ldr r0, [r5, #0x54]
0049e3f8  e0 39 fe eb                                      bl #0x42cb80
0049e3fc  2a 26 0c eb                                      bl #0x7a7cac
0049e400  53 57 0b eb                                      bl #0x774154
0049e404  10 27 9f e5                                      ldr r2, [pc, #0x710]
0049e408  00 10 a0 e1                                      mov r1, r0
0049e40c  03 c0 a0 e3                                      mov ip, #3
0049e410  02 20 8f e0                                      add r2, pc, r2
0049e414  0a 30 a0 e1                                      mov r3, sl
0049e418  08 00 a0 e1                                      mov r0, r8
0049e41c  00 c0 8d e5                                      str ip, [sp]
0049e420  79 36 0c eb                                      bl #0x7abe0c
0049e424  18 00 8a e2                                      add r0, sl, #0x18
0049e428  3d e3 0b eb                                      bl #0x797124
0049e42c  09 00 a0 e1                                      mov r0, sb
0049e430  3b e3 0b eb                                      bl #0x797124
0049e434  0a 00 a0 e1                                      mov r0, sl
0049e438  39 e3 0b eb                                      bl #0x797124
0049e43c  d4 7c 0d eb                                      bl #0x7fd794
0049e440  05 16 a0 e3                                      mov r1, #0x500000
0049e444  08 00 80 e2                                      add r0, r0, #8
0049e448  03 10 81 e2                                      add r1, r1, #3
0049e44c  01 20 a0 e3                                      mov r2, #1
0049e450  e8 7f 0d eb                                      bl #0x7fe3f8
0049e454  00 00 50 e3                                      cmp r0, #0
0049e458  4a ff ff 0a                                      beq #0x49e188
0049e45c  08 10 a0 e3                                      mov r1, #8
0049e460  06 00 94 e7                                      ldr r0, [r4, r6]
0049e464  62 37 fa eb                                      bl #0x32c1f4
0049e468  c7 8a 0d eb                                      bl #0x800f8c
0049e46c  01 15 a0 e3                                      mov r1, #0x400000
0049e470  07 00 94 e7                                      ldr r0, [r4, r7]
0049e474  0a 10 81 e2                                      add r1, r1, #0xa
0049e478  01 20 a0 e3                                      mov r2, #1
0049e47c  dd 7f 0d eb                                      bl #0x7fe3f8
0049e480  00 00 50 e3                                      cmp r0, #0
0049e484  47 ff ff 1a                                      bne #0x49e1a8
0049e488  82 0a fa eb                                      bl #0x320e98
0049e48c  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049e490  03 00 53 e3                                      cmp r3, #3
0049e494  2f 03 00 0a                                      beq #0x49f158
0049e498  7e 0a fa eb                                      bl #0x320e98
0049e49c  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0049e4a0  00 00 53 e3                                      cmp r3, #0
0049e4a4  79 02 00 1a                                      bne #0x49ee90
0049e4a8  7a 0a fa eb                                      bl #0x320e98
0049e4ac  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049e4b0  03 30 43 e2                                      sub r3, r3, #3
0049e4b4  01 00 53 e3                                      cmp r3, #1
0049e4b8  c3 03 00 9a                                      bls #0x49f3cc
0049e4bc  06 00 94 e7                                      ldr r0, [r4, r6]
0049e4c0  33 04 fa eb                                      bl #0x31f594
0049e4c4  00 00 50 e3                                      cmp r0, #0
0049e4c8  02 00 00 0a                                      beq #0x49e4d8
0049e4cc  30 31 90 e5                                      ldr r3, [r0, #0x130]
0049e4d0  26 00 53 e3                                      cmp r3, #0x26
0049e4d4  03 00 00 0a                                      beq #0x49e4e8
0049e4d8  ad 7c 0d eb                                      bl #0x7fd794
0049e4dc  05 30 d0 e5                                      ldrb r3, [r0, #5]
0049e4e0  00 00 53 e3                                      cmp r3, #0
0049e4e4  c5 02 00 1a                                      bne #0x49f000
0049e4e8  6a 0a fa eb                                      bl #0x320e98
0049e4ec  4d 30 d0 e5                                      ldrb r3, [r0, #0x4d]
0049e4f0  00 00 53 e3                                      cmp r3, #0
0049e4f4  28 02 00 1a                                      bne #0x49ed9c
0049e4f8  66 0a fa eb                                      bl #0x320e98
0049e4fc  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049e500  04 00 53 e3                                      cmp r3, #4
0049e504  36 ff ff 1a                                      bne #0x49e1e4
0049e508  06 50 94 e7                                      ldr r5, [r4, r6]
0049e50c  ec 30 d5 e5                                      ldrb r3, [r5, #0xec]
0049e510  00 00 53 e3                                      cmp r3, #0
0049e514  32 ff ff 0a                                      beq #0x49e1e4
0049e518  fa 35 fa eb                                      bl #0x32bd08
0049e51c  14 30 d0 e5                                      ldrb r3, [r0, #0x14]
0049e520  00 00 53 e3                                      cmp r3, #0
0049e524  2e ff ff 1a                                      bne #0x49e1e4
0049e528  f6 35 fa eb                                      bl #0x32bd08
0049e52c  c3 eb ff eb                                      bl #0x499440
0049e530  00 00 50 e3                                      cmp r0, #0
0049e534  2a ff ff 0a                                      beq #0x49e1e4
0049e538  05 00 a0 e1                                      mov r0, r5
0049e53c  06 10 a0 e3                                      mov r1, #6
0049e540  2b 37 fa eb                                      bl #0x32c1f4
0049e544  26 ff ff ea                                      b #0x49e1e4
0049e548  d0 15 9f e5                                      ldr r1, [pc, #0x5d0]
0049e54c  d0 25 9f e5                                      ldr r2, [pc, #0x5d0]
0049e550  00 80 a0 e3                                      mov r8, #0
0049e554  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
0049e558  01 30 a0 e3                                      mov r3, #1
0049e55c  02 20 8f e0                                      add r2, pc, r2
0049e560  01 10 8f e0                                      add r1, pc, r1
0049e564  34 a0 95 e5                                      ldr sl, [r5, #0x34]
0049e568  19 31 cd e5                                      strb r3, [sp, #0x119]
0049e56c  18 81 cd e5                                      strb r8, [sp, #0x118]
0049e570  1c 81 cd e5                                      strb r8, [sp, #0x11c]
0049e574  98 99 00 eb                                      bl #0x4c4bdc
0049e578  00 10 a0 e1                                      mov r1, r0
0049e57c  0a 00 a0 e1                                      mov r0, sl
0049e580  55 aa 01 eb                                      bl #0x508edc
0049e584  46 af 8d e2                                      add sl, sp, #0x118
0049e588  0c 90 8a e2                                      add sb, sl, #0xc
0049e58c  00 10 a0 e1                                      mov r1, r0
0049e590  09 00 a0 e1                                      mov r0, sb
0049e594  24 81 cd e5                                      strb r8, [sp, #0x124]
0049e598  25 81 cd e5                                      strb r8, [sp, #0x125]
0049e59c  6b e3 0b eb                                      bl #0x797350
0049e5a0  00 20 a0 e3                                      mov r2, #0
0049e5a4  1d 0e 8d e2                                      add r0, sp, #0x1d0
0049e5a8  00 30 a0 e3                                      mov r3, #0
0049e5ac  f0 20 c0 e1                                      strd r2, r3, [r0]
0049e5b0  02 30 a0 e3                                      mov r3, #2
0049e5b4  54 00 95 e5                                      ldr r0, [r5, #0x54]
0049e5b8  31 31 cd e5                                      strb r3, [sp, #0x131]
0049e5bc  d4 31 9d e5                                      ldr r3, [sp, #0x1d4]
0049e5c0  30 81 cd e5                                      strb r8, [sp, #0x130]
0049e5c4  34 81 8d e5                                      str r8, [sp, #0x134]
0049e5c8  20 30 8a e5                                      str r3, [sl, #0x20]
0049e5cc  6b 39 fe eb                                      bl #0x42cb80
0049e5d0  00 80 a0 e1                                      mov r8, r0
0049e5d4  54 00 95 e5                                      ldr r0, [r5, #0x54]
0049e5d8  68 39 fe eb                                      bl #0x42cb80
0049e5dc  b2 25 0c eb                                      bl #0x7a7cac
0049e5e0  db 56 0b eb                                      bl #0x774154
0049e5e4  3c 25 9f e5                                      ldr r2, [pc, #0x53c]
0049e5e8  00 10 a0 e1                                      mov r1, r0
0049e5ec  03 c0 a0 e3                                      mov ip, #3
0049e5f0  02 20 8f e0                                      add r2, pc, r2
0049e5f4  0a 30 a0 e1                                      mov r3, sl
0049e5f8  08 00 a0 e1                                      mov r0, r8
0049e5fc  00 c0 8d e5                                      str ip, [sp]
0049e600  01 36 0c eb                                      bl #0x7abe0c
0049e604  18 00 8a e2                                      add r0, sl, #0x18
0049e608  c5 e2 0b eb                                      bl #0x797124
0049e60c  09 00 a0 e1                                      mov r0, sb
0049e610  c3 e2 0b eb                                      bl #0x797124
0049e614  0a 00 a0 e1                                      mov r0, sl
0049e618  c1 e2 0b eb                                      bl #0x797124
0049e61c  c5 fe ff ea                                      b #0x49e138
0049e620  00 30 e0 e3                                      mvn r3, #0
0049e624  0b 8d 8d e2                                      add r8, sp, #0x2c0
0049e628  e8 30 28 e5                                      str r3, [r8, #-0xe8]!
0049e62c  56 8a 0d eb                                      bl #0x800f8c
0049e630  01 15 a0 e3                                      mov r1, #0x400000
0049e634  04 30 a0 e3                                      mov r3, #4
0049e638  05 00 a0 e1                                      mov r0, r5
0049e63c  0d 10 81 e2                                      add r1, r1, #0xd
0049e640  08 20 a0 e1                                      mov r2, r8
0049e644  46 7e 0d eb                                      bl #0x7fdf64
0049e648  b4 34 9f e5                                      ldr r3, [pc, #0x4b4]
0049e64c  03 30 94 e7                                      ldr r3, [r4, r3]
0049e650  00 30 93 e5                                      ldr r3, [r3]
0049e654  00 00 53 e3                                      cmp r3, #0
0049e658  86 fe ff 0a                                      beq #0x49e078
0049e65c  30 31 93 e5                                      ldr r3, [r3, #0x130]
0049e660  23 00 53 e3                                      cmp r3, #0x23
0049e664  83 fe ff da                                      ble #0x49e078
0049e668  47 8a 0d eb                                      bl #0x800f8c
0049e66c  01 15 a0 e3                                      mov r1, #0x400000
0049e670  05 00 a0 e1                                      mov r0, r5
0049e674  0d 10 81 e2                                      add r1, r1, #0xd
0049e678  5c 7f 0d eb                                      bl #0x7fe3f0
0049e67c  05 0a fa eb                                      bl #0x320e98
0049e680  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049e684  02 00 53 e3                                      cmp r3, #2
0049e688  f7 00 00 0a                                      beq #0x49ea6c
0049e68c  06 50 94 e7                                      ldr r5, [r4, r6]
0049e690  05 00 a0 e1                                      mov r0, r5
0049e694  ee 07 fa eb                                      bl #0x320654
0049e698  00 00 50 e3                                      cmp r0, #0
0049e69c  f2 00 00 1a                                      bne #0x49ea6c
0049e6a0  05 00 a0 e1                                      mov r0, r5
0049e6a4  03 10 a0 e3                                      mov r1, #3
0049e6a8  d1 36 fa eb                                      bl #0x32c1f4
0049e6ac  71 fe ff ea                                      b #0x49e078
0049e6b0  06 80 94 e7                                      ldr r8, [r4, r6]
0049e6b4  08 00 a0 e1                                      mov r0, r8
0049e6b8  b5 03 fa eb                                      bl #0x31f594
0049e6bc  00 00 50 e3                                      cmp r0, #0
0049e6c0  63 fe ff 1a                                      bne #0x49e054
0049e6c4  f3 09 fa eb                                      bl #0x320e98
0049e6c8  28 50 d0 e5                                      ldrb r5, [r0, #0x28]
0049e6cc  00 00 55 e3                                      cmp r5, #0
0049e6d0  5f fe ff 1a                                      bne #0x49e054
0049e6d4  54 00 98 e5                                      ldr r0, [r8, #0x54]
0049e6d8  28 39 fe eb                                      bl #0x42cb80
0049e6dc  00 a0 a0 e1                                      mov sl, r0
0049e6e0  54 00 98 e5                                      ldr r0, [r8, #0x54]
0049e6e4  25 39 fe eb                                      bl #0x42cb80
0049e6e8  6f 25 0c eb                                      bl #0x7a7cac
0049e6ec  98 56 0b eb                                      bl #0x774154
0049e6f0  34 24 9f e5                                      ldr r2, [pc, #0x434]
0049e6f4  00 10 a0 e1                                      mov r1, r0
0049e6f8  05 30 a0 e1                                      mov r3, r5
0049e6fc  0a 00 a0 e1                                      mov r0, sl
0049e700  02 20 8f e0                                      add r2, pc, r2
0049e704  00 50 8d e5                                      str r5, [sp]
0049e708  bf 35 0c eb                                      bl #0x7abe0c
0049e70c  50 fe ff ea                                      b #0x49e054
0049e710  1d 8a 0d eb                                      bl #0x800f8c
0049e714  00 30 90 e5                                      ldr r3, [r0]
0049e718  0f e0 a0 e1                                      mov lr, pc
0049e71c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0049e720  00 30 90 e5                                      ldr r3, [r0]
0049e724  0f e0 a0 e1                                      mov lr, pc
0049e728  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0049e72c  40 fe ff ea                                      b #0x49e034
0049e730  15 8a 0d eb                                      bl #0x800f8c
0049e734  00 30 90 e5                                      ldr r3, [r0]
0049e738  0f e0 a0 e1                                      mov lr, pc
0049e73c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0049e740  00 30 90 e5                                      ldr r3, [r0]
0049e744  0f e0 a0 e1                                      mov lr, pc
0049e748  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0049e74c  30 fe ff ea                                      b #0x49e014
0049e750  28 70 9d e5                                      ldr r7, [sp, #0x28]
0049e754  06 30 94 e7                                      ldr r3, [r4, r6]
0049e758  00 20 a0 e3                                      mov r2, #0
0049e75c  06 10 a0 e3                                      mov r1, #6
0049e760  03 00 a0 e1                                      mov r0, r3
0049e764  ee 20 c3 e5                                      strb r2, [r3, #0xee]
0049e768  a1 36 fa eb                                      bl #0x32c1f4
0049e76c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0049e770  77 84 fe eb                                      bl #0x43f954
0049e774  a4 fd ff ea                                      b #0x49de0c
0049e778  c6 09 fa eb                                      bl #0x320e98
0049e77c  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049e780  03 00 53 e3                                      cmp r3, #3
0049e784  39 03 00 0a                                      beq #0x49f470
0049e788  ff 89 0d eb                                      bl #0x800f8c
0049e78c  00 30 90 e5                                      ldr r3, [r0]
0049e790  0f e0 a0 e1                                      mov lr, pc
0049e794  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0049e798  07 10 a0 e3                                      mov r1, #7
0049e79c  82 e5 0d eb                                      bl #0x817dac
0049e7a0  00 80 a0 e1                                      mov r8, r0
0049e7a4  f8 89 0d eb                                      bl #0x800f8c
0049e7a8  00 30 90 e5                                      ldr r3, [r0]
0049e7ac  0f e0 a0 e1                                      mov lr, pc
0049e7b0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0049e7b4  00 00 50 e3                                      cmp r0, #0
0049e7b8  2c 00 00 0a                                      beq #0x49e870
0049e7bc  00 00 58 e3                                      cmp r8, #0
0049e7c0  71 01 00 1a                                      bne #0x49ed8c
0049e7c4  06 a0 94 e7                                      ldr sl, [r4, r6]
0049e7c8  ec 30 da e5                                      ldrb r3, [sl, #0xec]
0049e7cc  00 00 53 e3                                      cmp r3, #0
0049e7d0  26 00 00 0a                                      beq #0x49e870
0049e7d4  54 13 9f e5                                      ldr r1, [pc, #0x354]
0049e7d8  4f 5f 8d e2                                      add r5, sp, #0x13c
0049e7dc  0c c0 85 e2                                      add ip, r5, #0xc
0049e7e0  0c 00 a0 e1                                      mov r0, ip
0049e7e4  01 90 a0 e3                                      mov sb, #1
0049e7e8  01 10 8f e0                                      add r1, pc, r1
0049e7ec  18 b0 85 e2                                      add fp, r5, #0x18
0049e7f0  08 c0 8d e5                                      str ip, [sp, #8]
0049e7f4  49 81 cd e5                                      strb r8, [sp, #0x149]
0049e7f8  3c 81 cd e5                                      strb r8, [sp, #0x13c]
0049e7fc  48 81 cd e5                                      strb r8, [sp, #0x148]
0049e800  3d 91 cd e5                                      strb sb, [sp, #0x13d]
0049e804  40 91 cd e5                                      strb sb, [sp, #0x140]
0049e808  d0 e2 0b eb                                      bl #0x797350
0049e80c  09 10 a0 e1                                      mov r1, sb
0049e810  0b 00 a0 e1                                      mov r0, fp
0049e814  4d 6d fe eb                                      bl #0x439d50
0049e818  54 00 9a e5                                      ldr r0, [sl, #0x54]
0049e81c  d7 38 fe eb                                      bl #0x42cb80
0049e820  00 80 a0 e1                                      mov r8, r0
0049e824  54 00 9a e5                                      ldr r0, [sl, #0x54]
0049e828  d4 38 fe eb                                      bl #0x42cb80
0049e82c  1e 25 0c eb                                      bl #0x7a7cac
0049e830  47 56 0b eb                                      bl #0x774154
0049e834  f8 22 9f e5                                      ldr r2, [pc, #0x2f8]
0049e838  00 10 a0 e1                                      mov r1, r0
0049e83c  03 e0 a0 e3                                      mov lr, #3
0049e840  02 20 8f e0                                      add r2, pc, r2
0049e844  05 30 a0 e1                                      mov r3, r5
0049e848  08 00 a0 e1                                      mov r0, r8
0049e84c  00 e0 8d e5                                      str lr, [sp]
0049e850  6d 35 0c eb                                      bl #0x7abe0c
0049e854  0b 00 a0 e1                                      mov r0, fp
0049e858  31 e2 0b eb                                      bl #0x797124
0049e85c  08 c0 9d e5                                      ldr ip, [sp, #8]
0049e860  0c 00 a0 e1                                      mov r0, ip
0049e864  2e e2 0b eb                                      bl #0x797124
0049e868  05 00 a0 e1                                      mov r0, r5
0049e86c  2c e2 0b eb                                      bl #0x797124
0049e870  88 09 fa eb                                      bl #0x320e98
0049e874  c8 30 a0 e3                                      mov r3, #0xc8
0049e878  14 30 80 e5                                      str r3, [r0, #0x14]
0049e87c  dc fd ff ea                                      b #0x49dff4
0049e880  6c 62 9f e5                                      ldr r6, [pc, #0x26c]
0049e884  06 30 94 e7                                      ldr r3, [r4, r6]
0049e888  0e 21 d3 e5                                      ldrb r2, [r3, #0x10e]
0049e88c  00 00 52 e3                                      cmp r2, #0
0049e890  02 00 00 1a                                      bne #0x49e8a0
0049e894  de 3e d3 e1                                      ldrsb r3, [r3, #0xee]
0049e898  00 00 53 e3                                      cmp r3, #0
0049e89c  19 00 00 0a                                      beq #0x49e908
0049e8a0  b9 89 0d eb                                      bl #0x800f8c
0049e8a4  f1 3b 06 e3                                      movw r3, #0x6bf1
0049e8a8  03 30 d0 e7                                      ldrb r3, [r0, r3]
0049e8ac  00 00 53 e3                                      cmp r3, #0
0049e8b0  14 00 00 0a                                      beq #0x49e908
0049e8b4  b4 89 0d eb                                      bl #0x800f8c
0049e8b8  00 b0 a0 e1                                      mov fp, r0
0049e8bc  b2 89 0d eb                                      bl #0x800f8c
0049e8c0  00 90 a0 e1                                      mov sb, r0
0049e8c4  0f 35 fa eb                                      bl #0x32bd08
0049e8c8  18 80 90 e5                                      ldr r8, [r0, #0x18]
0049e8cc  0c 00 a0 e3                                      mov r0, #0xc
0049e8d0  df c6 f9 eb                                      bl #0x310454
0049e8d4  6b 1c 8b e2                                      add r1, fp, #0x6b00
0049e8d8  6b 2c 89 e2                                      add r2, sb, #0x6b00
0049e8dc  08 30 a0 e1                                      mov r3, r8
0049e8e0  e1 10 81 e2                                      add r1, r1, #0xe1
0049e8e4  f2 20 82 e2                                      add r2, r2, #0xf2
0049e8e8  00 a0 a0 e1                                      mov sl, r0
0049e8ec  36 f0 0d eb                                      bl #0x81a9cc
0049e8f0  6d ef 0d eb                                      bl #0x81a6ac
0049e8f4  0a 10 a0 e1                                      mov r1, sl
0049e8f8  00 30 90 e5                                      ldr r3, [r0]
0049e8fc  0f e0 a0 e1                                      mov lr, pc
0049e900  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0049e904  66 fe ff ea                                      b #0x49e2a4
0049e908  06 90 94 e7                                      ldr sb, [r4, r6]
0049e90c  ec 30 d9 e5                                      ldrb r3, [sb, #0xec]
0049e910  00 00 53 e3                                      cmp r3, #0
0049e914  62 fe ff 0a                                      beq #0x49e2a4
0049e918  18 12 9f e5                                      ldr r1, [pc, #0x218]
0049e91c  61 8f 8d e2                                      add r8, sp, #0x184
0049e920  0c b0 88 e2                                      add fp, r8, #0xc
0049e924  01 20 a0 e3                                      mov r2, #1
0049e928  00 30 a0 e3                                      mov r3, #0
0049e92c  0b 00 a0 e1                                      mov r0, fp
0049e930  18 a0 88 e2                                      add sl, r8, #0x18
0049e934  01 10 8f e0                                      add r1, pc, r1
0049e938  88 21 cd e5                                      strb r2, [sp, #0x188]
0049e93c  85 21 cd e5                                      strb r2, [sp, #0x185]
0049e940  91 31 cd e5                                      strb r3, [sp, #0x191]
0049e944  84 31 cd e5                                      strb r3, [sp, #0x184]
0049e948  90 31 cd e5                                      strb r3, [sp, #0x190]
0049e94c  7f e2 0b eb                                      bl #0x797350
0049e950  02 10 a0 e3                                      mov r1, #2
0049e954  0a 00 a0 e1                                      mov r0, sl
0049e958  fc 6c fe eb                                      bl #0x439d50
0049e95c  54 00 99 e5                                      ldr r0, [sb, #0x54]
0049e960  86 38 fe eb                                      bl #0x42cb80
0049e964  00 30 a0 e1                                      mov r3, r0
0049e968  54 00 99 e5                                      ldr r0, [sb, #0x54]
0049e96c  0c 30 8d e5                                      str r3, [sp, #0xc]
0049e970  82 38 fe eb                                      bl #0x42cb80
0049e974  cc 24 0c eb                                      bl #0x7a7cac
0049e978  f5 55 0b eb                                      bl #0x774154
0049e97c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0049e980  b4 21 9f e5                                      ldr r2, [pc, #0x1b4]
0049e984  00 10 a0 e1                                      mov r1, r0
0049e988  03 c0 a0 e3                                      mov ip, #3
0049e98c  02 20 8f e0                                      add r2, pc, r2
0049e990  03 00 a0 e1                                      mov r0, r3
0049e994  08 30 a0 e1                                      mov r3, r8
0049e998  00 c0 8d e5                                      str ip, [sp]
0049e99c  1a 35 0c eb                                      bl #0x7abe0c
0049e9a0  0a 00 a0 e1                                      mov r0, sl
0049e9a4  de e1 0b eb                                      bl #0x797124
0049e9a8  0b 00 a0 e1                                      mov r0, fp
0049e9ac  dc e1 0b eb                                      bl #0x797124
0049e9b0  08 00 a0 e1                                      mov r0, r8
0049e9b4  da e1 0b eb                                      bl #0x797124
0049e9b8  39 fe ff ea                                      b #0x49e2a4
0049e9bc  06 70 94 e7                                      ldr r7, [r4, r6]
0049e9c0  54 00 97 e5                                      ldr r0, [r7, #0x54]
0049e9c4  6d 38 fe eb                                      bl #0x42cb80
0049e9c8  00 60 a0 e1                                      mov r6, r0
0049e9cc  54 00 97 e5                                      ldr r0, [r7, #0x54]
0049e9d0  6a 38 fe eb                                      bl #0x42cb80
0049e9d4  b4 24 0c eb                                      bl #0x7a7cac
0049e9d8  dd 55 0b eb                                      bl #0x774154
0049e9dc  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0049e9e0  00 10 a0 e1                                      mov r1, r0
0049e9e4  05 30 a0 e1                                      mov r3, r5
0049e9e8  02 20 8f e0                                      add r2, pc, r2
0049e9ec  06 00 a0 e1                                      mov r0, r6
0049e9f0  00 50 8d e5                                      str r5, [sp]
0049e9f4  04 35 0c eb                                      bl #0x7abe0c
0049e9f8  63 89 0d eb                                      bl #0x800f8c
0049e9fc  00 30 90 e5                                      ldr r3, [r0]
0049ea00  0f e0 a0 e1                                      mov lr, pc
0049ea04  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0049ea08  22 09 fa eb                                      bl #0x320e98
0049ea0c  66 30 a0 e3                                      mov r3, #0x66
0049ea10  14 30 80 e5                                      str r3, [r0, #0x14]
0049ea14  eb fd ff ea                                      b #0x49e1c8
0049ea18  5b 89 0d eb                                      bl #0x800f8c
0049ea1c  c0 02 0e eb                                      bl #0x81f524
0049ea20  00 00 50 e3                                      cmp r0, #0
0049ea24  72 fd ff 0a                                      beq #0x49dff4
0049ea28  06 30 94 e7                                      ldr r3, [r4, r6]
0049ea2c  00 10 a0 e3                                      mov r1, #0
0049ea30  01 20 a0 e1                                      mov r2, r1
0049ea34  40 00 93 e5                                      ldr r0, [r3, #0x40]
0049ea38  8e 3e fb eb                                      bl #0x36e478
0049ea3c  78 81 90 e5                                      ldr r8, [r0, #0x178]
0049ea40  dd b1 0d eb                                      bl #0x80b1bc
0049ea44  00 50 a0 e1                                      mov r5, r0
0049ea48  f4 00 9f e5                                      ldr r0, [pc, #0xf4]
0049ea4c  01 10 a0 e3                                      mov r1, #1
0049ea50  00 00 8f e0                                      add r0, pc, r0
0049ea54  fa ad 0d eb                                      bl #0x80a244
0049ea58  00 10 a0 e1                                      mov r1, r0
0049ea5c  50 80 80 e5                                      str r8, [r0, #0x50]
0049ea60  05 00 a0 e1                                      mov r0, r5
0049ea64  0e be 0d eb                                      bl #0x80e2a4
0049ea68  61 fd ff ea                                      b #0x49dff4
0049ea6c  06 30 94 e7                                      ldr r3, [r4, r6]
0049ea70  38 10 93 e5                                      ldr r1, [r3, #0x38]
0049ea74  01 20 a0 e1                                      mov r2, r1
0049ea78  00 31 b2 e5                                      ldr r3, [r2, #0x100]!
0049ea7c  02 00 53 e1                                      cmp r3, r2
0049ea80  00 a0 a0 13                                      movne sl, #0
0049ea84  7b fd ff 0a                                      beq #0x49e078
0049ea88  00 30 93 e5                                      ldr r3, [r3]
0049ea8c  01 a0 8a e2                                      add sl, sl, #1
0049ea90  03 00 52 e1                                      cmp r2, r3
0049ea94  fb ff ff 1a                                      bne #0x49ea88
0049ea98  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0049ea9c  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0049eaa0  a8 c0 9f e5                                      ldr ip, [pc, #0xa8]
0049eaa4  3c 30 8d e5                                      str r3, [sp, #0x3c]
0049eaa8  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0049eaac  6e ef 8d e2                                      add lr, sp, #0x1b8
0049eab0  04 00 8e e2                                      add r0, lr, #4
0049eab4  03 30 8f e0                                      add r3, pc, r3
0049eab8  2c 30 8d e5                                      str r3, [sp, #0x2c]
0049eabc  94 30 9f e5                                      ldr r3, [pc, #0x94]
0049eac0  34 20 8d e5                                      str r2, [sp, #0x34]
0049eac4  20 c0 8d e5                                      str ip, [sp, #0x20]
0049eac8  03 30 8f e0                                      add r3, pc, r3
0049eacc  18 e0 8d e5                                      str lr, [sp, #0x18]
0049ead0  30 30 8d e5                                      str r3, [sp, #0x30]
0049ead4  00 80 a0 e3                                      mov r8, #0
0049ead8  71 9f 8d e2                                      add sb, sp, #0x1c4
0049eadc  24 00 8d e5                                      str r0, [sp, #0x24]
0049eae0  38 70 8d e5                                      str r7, [sp, #0x38]
0049eae4  3f 00 00 ea                                      b #0x49ebe8
; mapping-symbol data/literal pool
0049eae8  00 6f 4f 00 ac 40 00 00 88 15 00 00 f4 37 00 00  .byte 0x00, 0x6f, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0x15, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
0049eaf8  28 77 43 00 30 75 43 00 b8 74 43 00 64 1d 00 00  .byte 0x28, 0x77, 0x43, 0x00, 0x30, 0x75, 0x43, 0x00, 0xb8, 0x74, 0x43, 0x00, 0x64, 0x1d, 0x00, 0x00
0049eb08  28 36 42 00 7c 71 43 00 e8 70 43 00 a8 08 42 00  .byte 0x28, 0x36, 0x42, 0x00, 0x7c, 0x71, 0x43, 0x00, 0xe8, 0x70, 0x43, 0x00, 0xa8, 0x08, 0x42, 0x00
0049eb18  f8 70 43 00 b0 6f 43 00 c8 06 42 00 3c b9 42 00  .byte 0xf8, 0x70, 0x43, 0x00, 0xb0, 0x6f, 0x43, 0x00, 0xc8, 0x06, 0x42, 0x00, 0x3c, 0xb9, 0x42, 0x00
0049eb28  d0 6d 43 00 30 6d 43 00 d0 6b 43 00 80 6b 43 00  .byte 0xd0, 0x6d, 0x43, 0x00, 0x30, 0x6d, 0x43, 0x00, 0xd0, 0x6b, 0x43, 0x00, 0x80, 0x6b, 0x43, 0x00
0049eb38  84 6a 43 00 34 6a 43 00 b0 6a 43 00 28 04 42 00  .byte 0x84, 0x6a, 0x43, 0x00, 0x34, 0x6a, 0x43, 0x00, 0xb0, 0x6a, 0x43, 0x00, 0x28, 0x04, 0x42, 0x00
0049eb48  4c 42 00 00 d8 0f 00 00 c4 35 00 00 74 01 42 00  .byte 0x4c, 0x42, 0x00, 0x00, 0xd8, 0x0f, 0x00, 0x00, 0xc4, 0x35, 0x00, 0x00, 0x74, 0x01, 0x42, 0x00
0049eb58  90 69 43 00 3c fe 41 00 08 b1 42 00 5c 65 43 00  .byte 0x90, 0x69, 0x43, 0x00, 0x3c, 0xfe, 0x41, 0x00, 0x08, 0xb1, 0x42, 0x00, 0x5c, 0x65, 0x43, 0x00
0049eb68  b0 28 42 00 04 64 43 00 e0 62 43 00 70 fa 41 00  .byte 0xb0, 0x28, 0x42, 0x00, 0x04, 0x64, 0x43, 0x00, 0xe0, 0x62, 0x43, 0x00, 0x70, 0xfa, 0x41, 0x00
0049eb78  10 63 43 00 90 61 43 00 64 62 43 00 cc 60 43 00  .byte 0x10, 0x63, 0x43, 0x00, 0x90, 0x61, 0x43, 0x00, 0x64, 0x62, 0x43, 0x00, 0xcc, 0x60, 0x43, 0x00
0049eb88  74 14 00 00 ac 35 00 00 44 fa 41 00 74 06 00 00  .byte 0x74, 0x14, 0x00, 0x00, 0xac, 0x35, 0x00, 0x00, 0x44, 0xfa, 0x41, 0x00, 0x74, 0x06, 0x00, 0x00
0049eb98  34 f7 41 00 f0 5f 43 00 58 5e 43 00 24 2a 42 00  .byte 0x34, 0xf7, 0x41, 0x00, 0xf0, 0x5f, 0x43, 0x00, 0x58, 0x5e, 0x43, 0x00, 0x24, 0x2a, 0x42, 0x00
0049eba8  04 2a 42 00 2c 22 42 00 40 22 42 00 18 f5 41 00  .byte 0x04, 0x2a, 0x42, 0x00, 0x2c, 0x22, 0x42, 0x00, 0x40, 0x22, 0x42, 0x00, 0x18, 0xf5, 0x41, 0x00
0049ebb8  6c a7 42 00 3c 5c 43 00 8c 33 00 00 d8 20 42 00  .byte 0x6c, 0xa7, 0x42, 0x00, 0x3c, 0x5c, 0x43, 0x00, 0x8c, 0x33, 0x00, 0x00, 0xd8, 0x20, 0x42, 0x00
0049ebc8  ec 20 42 00 88 20 42 00 9c 20 42 00              .byte 0xec, 0x20, 0x42, 0x00, 0x88, 0x20, 0x42, 0x00, 0x9c, 0x20, 0x42, 0x00
; decoder-mode: arm
0049ebd4  01 80 88 e2                                      add r8, r8, #1
0049ebd8  0a 00 58 e1                                      cmp r8, sl
0049ebdc  17 01 00 0a                                      beq #0x49f040
0049ebe0  06 30 94 e7                                      ldr r3, [r4, r6]
0049ebe4  38 10 93 e5                                      ldr r1, [r3, #0x38]
0049ebe8  08 20 a0 e1                                      mov r2, r8
0049ebec  09 00 a0 e1                                      mov r0, sb
0049ebf0  ea 86 fa eb                                      bl #0x3407a0
0049ebf4  09 00 a0 e1                                      mov r0, sb
0049ebf8  d5 84 fa eb                                      bl #0x33ff54
0049ebfc  00 50 50 e2                                      subs r5, r0, #0
0049ec00  f3 ff ff 0a                                      beq #0x49ebd4
0049ec04  00 30 95 e5                                      ldr r3, [r5]
0049ec08  0f e0 a0 e1                                      mov lr, pc
0049ec0c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0049ec10  00 00 50 e3                                      cmp r0, #0
0049ec14  ee ff ff 0a                                      beq #0x49ebd4
0049ec18  88 3f 01 e3                                      movw r3, #0x1f88
0049ec1c  03 30 95 e7                                      ldr r3, [r5, r3]
0049ec20  d8 21 9d e5                                      ldr r2, [sp, #0x1d8]
0049ec24  03 00 52 e1                                      cmp r2, r3
0049ec28  e9 ff ff 1a                                      bne #0x49ebd4
0049ec2c  06 30 94 e7                                      ldr r3, [r4, r6]
0049ec30  8a 7f 8d e2                                      add r7, sp, #0x228
0049ec34  05 10 a0 e1                                      mov r1, r5
0049ec38  40 00 93 e5                                      ldr r0, [r3, #0x40]
0049ec3c  0c 30 8d e5                                      str r3, [sp, #0xc]
0049ec40  4e 4c fb eb                                      bl #0x371d80
0049ec44  07 00 a0 e1                                      mov r0, r7
0049ec48  10 10 a0 e3                                      mov r1, #0x10
0049ec4c  38 72 8d e5                                      str r7, [sp, #0x238]
0049ec50  3c 72 8d e5                                      str r7, [sp, #0x23c]
0049ec54  88 ca f9 eb                                      bl #0x31167c
0049ec58  38 22 9d e5                                      ldr r2, [sp, #0x238]
0049ec5c  9d bf 8d e2                                      add fp, sp, #0x274
0049ec60  00 c0 a0 e3                                      mov ip, #0
0049ec64  00 c0 c2 e5                                      strb ip, [r2]
0049ec68  0b 00 a0 e1                                      mov r0, fp
0049ec6c  10 10 a0 e3                                      mov r1, #0x10
0049ec70  08 c0 8d e5                                      str ip, [sp, #8]
0049ec74  84 b2 8d e5                                      str fp, [sp, #0x284]
0049ec78  88 b2 8d e5                                      str fp, [sp, #0x288]
0049ec7c  7e ca f9 eb                                      bl #0x31167c
0049ec80  08 c0 9d e5                                      ldr ip, [sp, #8]
0049ec84  84 02 9d e5                                      ldr r0, [sp, #0x284]
0049ec88  30 20 9d e5                                      ldr r2, [sp, #0x30]
0049ec8c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0049ec90  00 c0 c0 e5                                      strb ip, [r0]
0049ec94  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0049ec98  34 e0 93 e5                                      ldr lr, [r3, #0x34]
0049ec9c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0049eca0  08 c0 8d e5                                      str ip, [sp, #8]
0049eca4  10 e0 8d e5                                      str lr, [sp, #0x10]
0049eca8  cb 97 00 eb                                      bl #0x4c4bdc
0049ecac  00 10 a0 e1                                      mov r1, r0
0049ecb0  10 00 9d e5                                      ldr r0, [sp, #0x10]
0049ecb4  88 a8 01 eb                                      bl #0x508edc
0049ecb8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0049ecbc  97 1f 8d e2                                      add r1, sp, #0x25c
0049ecc0  28 00 8d e5                                      str r0, [sp, #0x28]
0049ecc4  34 30 93 e5                                      ldr r3, [r3, #0x34]
0049ecc8  05 00 a0 e1                                      mov r0, r5
0049eccc  10 10 8d e5                                      str r1, [sp, #0x10]
0049ecd0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0049ecd4  c3 72 fc eb                                      bl #0x3bb7e8
0049ecd8  1e 2e 8d e2                                      add r2, sp, #0x1e0
0049ecdc  00 10 a0 e1                                      mov r1, r0
0049ece0  10 00 9d e5                                      ldr r0, [sp, #0x10]
0049ece4  00 d5 f9 eb                                      bl #0x3140ec
0049ece8  08 c0 9d e5                                      ldr ip, [sp, #8]
0049ecec  91 5f 8d e2                                      add r5, sp, #0x244
0049ecf0  05 00 a0 e1                                      mov r0, r5
0049ecf4  0c 30 a0 e1                                      mov r3, ip
0049ecf8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0049ecfc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0049ed00  c1 a3 01 eb                                      bl #0x507c0c
0049ed04  58 32 9d e5                                      ldr r3, [sp, #0x258]
0049ed08  0b 10 a0 e1                                      mov r1, fp
0049ed0c  28 20 9d e5                                      ldr r2, [sp, #0x28]
0049ed10  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0049ed14  76 a8 01 eb                                      bl #0x508ef4
0049ed18  05 00 a0 e1                                      mov r0, r5
0049ed1c  4c e5 f9 eb                                      bl #0x318254
0049ed20  10 00 9d e5                                      ldr r0, [sp, #0x10]
0049ed24  4a e5 f9 eb                                      bl #0x318254
0049ed28  84 22 9d e5                                      ldr r2, [sp, #0x284]
0049ed2c  88 12 9d e5                                      ldr r1, [sp, #0x288]
0049ed30  07 00 a0 e1                                      mov r0, r7
0049ed34  29 c7 f9 eb                                      bl #0x3109e0
0049ed38  34 20 9d e5                                      ldr r2, [sp, #0x34]
0049ed3c  07 10 a0 e1                                      mov r1, r7
0049ed40  02 20 94 e7                                      ldr r2, [r4, r2]
0049ed44  04 50 82 e2                                      add r5, r2, #4
0049ed48  05 00 a0 e1                                      mov r0, r5
0049ed4c  10 20 8d e5                                      str r2, [sp, #0x10]
0049ed50  78 5d fb eb                                      bl #0x376338
0049ed54  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0049ed58  6a cf 8d e2                                      add ip, sp, #0x1a8
0049ed5c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0049ed60  10 30 9d e5                                      ldr r3, [sp, #0x10]
0049ed64  0c 10 a0 e1                                      mov r1, ip
0049ed68  14 00 83 e2                                      add r0, r3, #0x14
0049ed6c  68 39 fb eb                                      bl #0x36d314
0049ed70  01 00 50 e3                                      cmp r0, #1
0049ed74  b3 00 00 0a                                      beq #0x49f048
0049ed78  0b 00 a0 e1                                      mov r0, fp
0049ed7c  34 e5 f9 eb                                      bl #0x318254
0049ed80  07 00 a0 e1                                      mov r0, r7
0049ed84  32 e5 f9 eb                                      bl #0x318254
0049ed88  91 ff ff ea                                      b #0x49ebd4
0049ed8c  06 30 94 e7                                      ldr r3, [r4, r6]
0049ed90  00 20 a0 e3                                      mov r2, #0
0049ed94  ec 20 c3 e5                                      strb r2, [r3, #0xec]
0049ed98  b4 fe ff ea                                      b #0x49e870
0049ed9c  3d 08 fa eb                                      bl #0x320e98
0049eda0  34 50 90 e5                                      ldr r5, [r0, #0x34]
0049eda4  03 00 55 e3                                      cmp r5, #3
0049eda8  d2 fd ff 1a                                      bne #0x49e4f8
0049edac  39 08 fa eb                                      bl #0x320e98
0049edb0  50 05 00 eb                                      bl #0x4a02f8
0049edb4  00 00 50 e3                                      cmp r0, #0
0049edb8  ce fd ff 0a                                      beq #0x49e4f8
0049edbc  35 08 fa eb                                      bl #0x320e98
0049edc0  06 80 94 e7                                      ldr r8, [r4, r6]
0049edc4  00 70 a0 e3                                      mov r7, #0
0049edc8  4d 70 c0 e5                                      strb r7, [r0, #0x4d]
0049edcc  ec 30 d8 e5                                      ldrb r3, [r8, #0xec]
0049edd0  07 00 53 e1                                      cmp r3, r7
0049edd4  c7 fd ff 0a                                      beq #0x49e4f8
0049edd8  84 12 1f e5                                      ldr r1, [pc, #-0x284]
0049eddc  84 22 1f e5                                      ldr r2, [pc, #-0x284]
0049ede0  01 30 a0 e3                                      mov r3, #1
0049ede4  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
0049ede8  02 20 8f e0                                      add r2, pc, r2
0049edec  01 10 8f e0                                      add r1, pc, r1
0049edf0  34 a0 98 e5                                      ldr sl, [r8, #0x34]
0049edf4  41 30 cd e5                                      strb r3, [sp, #0x41]
0049edf8  40 70 cd e5                                      strb r7, [sp, #0x40]
0049edfc  44 70 cd e5                                      strb r7, [sp, #0x44]
0049ee00  75 97 00 eb                                      bl #0x4c4bdc
0049ee04  00 10 a0 e1                                      mov r1, r0
0049ee08  0a 00 a0 e1                                      mov r0, sl
0049ee0c  32 a8 01 eb                                      bl #0x508edc
0049ee10  40 a0 8d e2                                      add sl, sp, #0x40
0049ee14  0c b0 8a e2                                      add fp, sl, #0xc
0049ee18  00 10 a0 e1                                      mov r1, r0
0049ee1c  18 90 8a e2                                      add sb, sl, #0x18
0049ee20  0b 00 a0 e1                                      mov r0, fp
0049ee24  4c 70 cd e5                                      strb r7, [sp, #0x4c]
0049ee28  4d 70 cd e5                                      strb r7, [sp, #0x4d]
0049ee2c  47 e1 0b eb                                      bl #0x797350
0049ee30  07 10 a0 e1                                      mov r1, r7
0049ee34  09 00 a0 e1                                      mov r0, sb
0049ee38  c4 6b fe eb                                      bl #0x439d50
0049ee3c  54 00 98 e5                                      ldr r0, [r8, #0x54]
0049ee40  4e 37 fe eb                                      bl #0x42cb80
0049ee44  00 70 a0 e1                                      mov r7, r0
0049ee48  54 00 98 e5                                      ldr r0, [r8, #0x54]
0049ee4c  4b 37 fe eb                                      bl #0x42cb80
0049ee50  95 23 0c eb                                      bl #0x7a7cac
0049ee54  be 54 0b eb                                      bl #0x774154
0049ee58  fc 22 1f e5                                      ldr r2, [pc, #-0x2fc]
0049ee5c  00 10 a0 e1                                      mov r1, r0
0049ee60  0a 30 a0 e1                                      mov r3, sl
0049ee64  02 20 8f e0                                      add r2, pc, r2
0049ee68  07 00 a0 e1                                      mov r0, r7
0049ee6c  00 50 8d e5                                      str r5, [sp]
0049ee70  e5 33 0c eb                                      bl #0x7abe0c
0049ee74  09 00 a0 e1                                      mov r0, sb
0049ee78  a9 e0 0b eb                                      bl #0x797124
0049ee7c  0b 00 a0 e1                                      mov r0, fp
0049ee80  a7 e0 0b eb                                      bl #0x797124
0049ee84  0a 00 a0 e1                                      mov r0, sl
0049ee88  a5 e0 0b eb                                      bl #0x797124
0049ee8c  99 fd ff ea                                      b #0x49e4f8
0049ee90  91 c4 0d eb                                      bl #0x8100dc
0049ee94  91 c4 0d eb                                      bl #0x8100e0
0049ee98  00 00 50 e3                                      cmp r0, #0
0049ee9c  81 fd ff 0a                                      beq #0x49e4a8
0049eea0  8d c4 0d eb                                      bl #0x8100dc
0049eea4  03 16 a0 e3                                      mov r1, #0x300000
0049eea8  06 0d 80 e2                                      add r0, r0, #0x180
0049eeac  04 10 81 e2                                      add r1, r1, #4
0049eeb0  00 20 a0 e3                                      mov r2, #0
0049eeb4  4f 7d 0d eb                                      bl #0x7fe3f8
0049eeb8  00 00 50 e3                                      cmp r0, #0
0049eebc  79 fd ff 0a                                      beq #0x49e4a8
0049eec0  0b 5d 8d e2                                      add r5, sp, #0x2c0
0049eec4  00 30 e0 e3                                      mvn r3, #0
0049eec8  e8 30 25 e5                                      str r3, [r5, #-0xe8]!
0049eecc  82 c4 0d eb                                      bl #0x8100dc
0049eed0  03 16 a0 e3                                      mov r1, #0x300000
0049eed4  05 20 a0 e1                                      mov r2, r5
0049eed8  04 10 81 e2                                      add r1, r1, #4
0049eedc  04 30 a0 e3                                      mov r3, #4
0049eee0  06 0d 80 e2                                      add r0, r0, #0x180
0049eee4  1e 7c 0d eb                                      bl #0x7fdf64
0049eee8  27 88 0d eb                                      bl #0x800f8c
0049eeec  00 30 90 e5                                      ldr r3, [r0]
0049eef0  0f e0 a0 e1                                      mov lr, pc
0049eef4  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0049eef8  07 10 a0 e3                                      mov r1, #7
0049eefc  aa e3 0d eb                                      bl #0x817dac
0049ef00  06 50 94 e7                                      ldr r5, [r4, r6]
0049ef04  00 80 a0 e1                                      mov r8, r0
0049ef08  05 00 a0 e1                                      mov r0, r5
0049ef0c  a0 01 fa eb                                      bl #0x31f594
0049ef10  00 00 58 e3                                      cmp r8, #0
0049ef14  00 70 a0 e1                                      mov r7, r0
0049ef18  84 00 00 1a                                      bne #0x49f130
0049ef1c  dd 07 fa eb                                      bl #0x320e98
0049ef20  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049ef24  03 00 53 e3                                      cmp r3, #3
0049ef28  2e 02 00 0a                                      beq #0x49f7e8
0049ef2c  d8 11 9d e5                                      ldr r1, [sp, #0x1d8]
0049ef30  00 00 51 e3                                      cmp r1, #0
0049ef34  0c 00 00 ba                                      blt #0x49ef6c
0049ef38  06 50 94 e7                                      ldr r5, [r4, r6]
0049ef3c  40 00 95 e5                                      ldr r0, [r5, #0x40]
0049ef40  0e 5d fb eb                                      bl #0x376380
0049ef44  00 00 57 e3                                      cmp r7, #0
0049ef48  07 00 00 0a                                      beq #0x49ef6c
0049ef4c  d8 11 9d e5                                      ldr r1, [sp, #0x1d8]
0049ef50  40 00 95 e5                                      ldr r0, [r5, #0x40]
0049ef54  00 20 a0 e3                                      mov r2, #0
0049ef58  14 3c fb eb                                      bl #0x36dfb0
0049ef5c  00 30 a0 e1                                      mov r3, r0
0049ef60  60 16 93 e5                                      ldr r1, [r3, #0x660]
0049ef64  07 00 a0 e1                                      mov r0, r7
0049ef68  4a 46 fd eb                                      bl #0x3f0898
0049ef6c  5a c4 0d eb                                      bl #0x8100dc
0049ef70  03 16 a0 e3                                      mov r1, #0x300000
0049ef74  06 0d 80 e2                                      add r0, r0, #0x180
0049ef78  04 10 81 e2                                      add r1, r1, #4
0049ef7c  1b 7d 0d eb                                      bl #0x7fe3f0
0049ef80  c4 07 fa eb                                      bl #0x320e98
0049ef84  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049ef88  02 00 53 e3                                      cmp r3, #2
0049ef8c  11 02 00 0a                                      beq #0x49f7d8
0049ef90  c0 07 fa eb                                      bl #0x320e98
0049ef94  34 30 90 e5                                      ldr r3, [r0, #0x34]
0049ef98  01 00 53 e3                                      cmp r3, #1
0049ef9c  41 fd ff 1a                                      bne #0x49e4a8
0049efa0  06 50 94 e7                                      ldr r5, [r4, r6]
0049efa4  54 00 95 e5                                      ldr r0, [r5, #0x54]
0049efa8  f4 36 fe eb                                      bl #0x42cb80
0049efac  00 00 50 e3                                      cmp r0, #0
0049efb0  3c fd ff 0a                                      beq #0x49e4a8
0049efb4  48 c4 0d eb                                      bl #0x8100dc
0049efb8  70 71 90 e5                                      ldr r7, [r0, #0x170]
0049efbc  46 c4 0d eb                                      bl #0x8100dc
0049efc0  00 10 a0 e3                                      mov r1, #0
0049efc4  84 c5 0d eb                                      bl #0x8105dc
0049efc8  78 31 90 e5                                      ldr r3, [r0, #0x178]
0049efcc  03 00 57 e1                                      cmp r7, r3
0049efd0  f5 01 00 0a                                      beq #0x49f7ac
0049efd4  54 00 95 e5                                      ldr r0, [r5, #0x54]
0049efd8  e8 36 fe eb                                      bl #0x42cb80
0049efdc  7c 14 1f e5                                      ldr r1, [pc, #-0x47c]
0049efe0  7c 24 1f e5                                      ldr r2, [pc, #-0x47c]
0049efe4  00 c0 a0 e3                                      mov ip, #0
0049efe8  01 10 8f e0                                      add r1, pc, r1
0049efec  02 20 8f e0                                      add r2, pc, r2
0049eff0  0c 30 a0 e1                                      mov r3, ip
0049eff4  00 c0 8d e5                                      str ip, [sp]
0049eff8  fa 39 0c eb                                      bl #0x7ad7e8
0049effc  29 fd ff ea                                      b #0x49e4a8
0049f000  a4 07 fa eb                                      bl #0x320e98
0049f004  28 30 d0 e5                                      ldrb r3, [r0, #0x28]
0049f008  00 00 53 e3                                      cmp r3, #0
0049f00c  35 fd ff 0a                                      beq #0x49e4e8
0049f010  a0 07 fa eb                                      bl #0x320e98
0049f014  4c 30 d0 e5                                      ldrb r3, [r0, #0x4c]
0049f018  00 00 53 e3                                      cmp r3, #0
0049f01c  31 fd ff 0a                                      beq #0x49e4e8
0049f020  9c 07 fa eb                                      bl #0x320e98
0049f024  c5 04 00 eb                                      bl #0x4a0340
0049f028  00 00 50 e3                                      cmp r0, #0
0049f02c  2d fd ff 0a                                      beq #0x49e4e8
0049f030  06 00 94 e7                                      ldr r0, [r4, r6]
0049f034  03 10 a0 e3                                      mov r1, #3
0049f038  6d 34 fa eb                                      bl #0x32c1f4
0049f03c  29 fd ff ea                                      b #0x49e4e8
0049f040  38 70 9d e5                                      ldr r7, [sp, #0x38]
0049f044  0b fc ff ea                                      b #0x49e078
0049f048  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0049f04c  0c 30 94 e7                                      ldr r3, [r4, ip]
0049f050  00 30 93 e5                                      ldr r3, [r3]
0049f054  10 30 8d e5                                      str r3, [sp, #0x10]
0049f058  8b 36 fe eb                                      bl #0x42ca8c
0049f05c  ca 36 fe eb                                      bl #0x42cb8c
0049f060  00 50 50 e2                                      subs r5, r0, #0
0049f064  43 ff ff 0a                                      beq #0x49ed78
0049f068  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0049f06c  0e 20 94 e7                                      ldr r2, [r4, lr]
0049f070  28 00 82 e2                                      add r0, r2, #0x28
0049f074  0c 20 8d e5                                      str r2, [sp, #0xc]
0049f078  31 9c fb eb                                      bl #0x386144
0049f07c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0049f080  2c 30 92 e5                                      ldr r3, [r2, #0x2c]
0049f084  00 00 53 e3                                      cmp r3, #0
0049f088  c0 01 00 0a                                      beq #0x49f790
0049f08c  20 10 9d e5                                      ldr r1, [sp, #0x20]
0049f090  01 00 94 e7                                      ldr r0, [r4, r1]
0049f094  2d 23 fe eb                                      bl #0x427d50
0049f098  1d ce 8d e2                                      add ip, sp, #0x1d0
0049f09c  00 20 a0 e3                                      mov r2, #0
0049f0a0  00 30 a0 e3                                      mov r3, #0
0049f0a4  f0 20 cc e1                                      strd r2, r3, [ip]
0049f0a8  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0049f0ac  00 c0 a0 e3                                      mov ip, #0
0049f0b0  b8 c1 cd e5                                      strb ip, [sp, #0x1b8]
0049f0b4  02 c0 a0 e3                                      mov ip, #2
0049f0b8  b9 c1 cd e5                                      strb ip, [sp, #0x1b9]
0049f0bc  00 c0 a0 e3                                      mov ip, #0
0049f0c0  10 20 9d e5                                      ldr r2, [sp, #0x10]
0049f0c4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0049f0c8  00 c0 8e e5                                      str ip, [lr]
0049f0cc  d4 c1 9d e5                                      ldr ip, [sp, #0x1d4]
0049f0d0  00 10 a0 e1                                      mov r1, r0
0049f0d4  05 00 a0 e1                                      mov r0, r5
0049f0d8  04 c0 8e e5                                      str ip, [lr, #4]
0049f0dc  01 c0 a0 e3                                      mov ip, #1
0049f0e0  00 c0 8d e5                                      str ip, [sp]
0049f0e4  48 33 0c eb                                      bl #0x7abe0c
0049f0e8  18 00 9d e5                                      ldr r0, [sp, #0x18]
0049f0ec  0c e0 0b eb                                      bl #0x797124
0049f0f0  20 ff ff ea                                      b #0x49ed78
0049f0f4  54 00 98 e5                                      ldr r0, [r8, #0x54]
0049f0f8  a0 36 fe eb                                      bl #0x42cb80
0049f0fc  00 a0 a0 e1                                      mov sl, r0
0049f100  54 00 98 e5                                      ldr r0, [r8, #0x54]
0049f104  9d 36 fe eb                                      bl #0x42cb80
0049f108  e7 22 0c eb                                      bl #0x7a7cac
0049f10c  10 54 0b eb                                      bl #0x774154
0049f110  a8 25 1f e5                                      ldr r2, [pc, #-0x5a8]
0049f114  00 10 a0 e1                                      mov r1, r0
0049f118  05 30 a0 e1                                      mov r3, r5
0049f11c  0a 00 a0 e1                                      mov r0, sl
0049f120  02 20 8f e0                                      add r2, pc, r2
0049f124  00 50 8d e5                                      str r5, [sp]
0049f128  37 33 0c eb                                      bl #0x7abe0c
0049f12c  33 fb ff ea                                      b #0x49de00
0049f130  00 00 50 e3                                      cmp r0, #0
0049f134  95 ff ff 0a                                      beq #0x49ef90
0049f138  40 00 95 e5                                      ldr r0, [r5, #0x40]
0049f13c  1b 37 d0 e5                                      ldrb r3, [r0, #0x71b]
0049f140  00 00 53 e3                                      cmp r3, #0
0049f144  31 01 00 1a                                      bne #0x49f610
0049f148  30 31 97 e5                                      ldr r3, [r7, #0x130]
0049f14c  23 00 53 e3                                      cmp r3, #0x23
0049f150  71 ff ff ca                                      bgt #0x49ef1c
0049f154  8d ff ff ea                                      b #0x49ef90
0049f158  0e f5 0d eb                                      bl #0x81c598
0049f15c  04 30 d0 e5                                      ldrb r3, [r0, #4]
0049f160  00 00 53 e3                                      cmp r3, #0
0049f164  c8 00 00 0a                                      beq #0x49f48c
0049f168  4a 07 fa eb                                      bl #0x320e98
0049f16c  01 30 a0 e3                                      mov r3, #1
0049f170  27 30 c0 e5                                      strb r3, [r0, #0x27]
0049f174  4c ed 0d eb                                      bl #0x81a6ac
0049f178  05 10 a0 e3                                      mov r1, #5
0049f17c  14 00 80 e2                                      add r0, r0, #0x14
0049f180  01 20 a0 e3                                      mov r2, #1
0049f184  9b 7c 0d eb                                      bl #0x7fe3f8
0049f188  00 70 50 e2                                      subs r7, r0, #0
0049f18c  c8 00 00 0a                                      beq #0x49f4b4
0049f190  06 70 94 e7                                      ldr r7, [r4, r6]
0049f194  ec 30 d7 e5                                      ldrb r3, [r7, #0xec]
0049f198  00 00 53 e3                                      cmp r3, #0
0049f19c  2e 00 00 0a                                      beq #0x49f25c
0049f1a0  34 16 1f e5                                      ldr r1, [pc, #-0x634]
0049f1a4  34 26 1f e5                                      ldr r2, [pc, #-0x634]
0049f1a8  01 30 a0 e3                                      mov r3, #1
0049f1ac  00 80 a0 e3                                      mov r8, #0
0049f1b0  02 20 8f e0                                      add r2, pc, r2
0049f1b4  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
0049f1b8  01 10 8f e0                                      add r1, pc, r1
0049f1bc  34 50 97 e5                                      ldr r5, [r7, #0x34]
0049f1c0  d1 30 cd e5                                      strb r3, [sp, #0xd1]
0049f1c4  d0 80 cd e5                                      strb r8, [sp, #0xd0]
0049f1c8  d4 80 cd e5                                      strb r8, [sp, #0xd4]
0049f1cc  82 96 00 eb                                      bl #0x4c4bdc
0049f1d0  00 10 a0 e1                                      mov r1, r0
0049f1d4  05 00 a0 e1                                      mov r0, r5
0049f1d8  3f a7 01 eb                                      bl #0x508edc
0049f1dc  d0 50 8d e2                                      add r5, sp, #0xd0
0049f1e0  0c 90 85 e2                                      add sb, r5, #0xc
0049f1e4  00 10 a0 e1                                      mov r1, r0
0049f1e8  18 a0 85 e2                                      add sl, r5, #0x18
0049f1ec  09 00 a0 e1                                      mov r0, sb
0049f1f0  dc 80 cd e5                                      strb r8, [sp, #0xdc]
0049f1f4  dd 80 cd e5                                      strb r8, [sp, #0xdd]
0049f1f8  54 e0 0b eb                                      bl #0x797350
0049f1fc  08 10 a0 e1                                      mov r1, r8
0049f200  0a 00 a0 e1                                      mov r0, sl
0049f204  d1 6a fe eb                                      bl #0x439d50
0049f208  54 00 97 e5                                      ldr r0, [r7, #0x54]
0049f20c  5b 36 fe eb                                      bl #0x42cb80
0049f210  00 80 a0 e1                                      mov r8, r0
0049f214  54 00 97 e5                                      ldr r0, [r7, #0x54]
0049f218  58 36 fe eb                                      bl #0x42cb80
0049f21c  a2 22 0c eb                                      bl #0x7a7cac
0049f220  cb 53 0b eb                                      bl #0x774154
0049f224  b0 26 1f e5                                      ldr r2, [pc, #-0x6b0]
0049f228  00 10 a0 e1                                      mov r1, r0
0049f22c  03 c0 a0 e3                                      mov ip, #3
0049f230  02 20 8f e0                                      add r2, pc, r2
0049f234  05 30 a0 e1                                      mov r3, r5
0049f238  08 00 a0 e1                                      mov r0, r8
0049f23c  00 c0 8d e5                                      str ip, [sp]
0049f240  f1 32 0c eb                                      bl #0x7abe0c
0049f244  0a 00 a0 e1                                      mov r0, sl
0049f248  b5 df 0b eb                                      bl #0x797124
0049f24c  09 00 a0 e1                                      mov r0, sb
0049f250  b3 df 0b eb                                      bl #0x797124
0049f254  05 00 a0 e1                                      mov r0, r5
0049f258  b1 df 0b eb                                      bl #0x797124
0049f25c  12 ed 0d eb                                      bl #0x81a6ac
0049f260  02 10 a0 e3                                      mov r1, #2
0049f264  14 00 80 e2                                      add r0, r0, #0x14
0049f268  01 20 a0 e3                                      mov r2, #1
0049f26c  61 7c 0d eb                                      bl #0x7fe3f8
0049f270  00 00 50 e3                                      cmp r0, #0
0049f274  89 00 00 0a                                      beq #0x49f4a0
0049f278  06 a0 94 e7                                      ldr sl, [r4, r6]
0049f27c  ec 30 da e5                                      ldrb r3, [sl, #0xec]
0049f280  00 00 53 e3                                      cmp r3, #0
0049f284  25 00 00 0a                                      beq #0x49f320
0049f288  10 17 1f e5                                      ldr r1, [pc, #-0x710]
0049f28c  64 50 8d e2                                      add r5, sp, #0x64
0049f290  0c 80 85 e2                                      add r8, r5, #0xc
0049f294  01 30 a0 e3                                      mov r3, #1
0049f298  00 90 a0 e3                                      mov sb, #0
0049f29c  01 10 8f e0                                      add r1, pc, r1
0049f2a0  08 00 a0 e1                                      mov r0, r8
0049f2a4  18 70 85 e2                                      add r7, r5, #0x18
0049f2a8  68 30 cd e5                                      strb r3, [sp, #0x68]
0049f2ac  65 30 cd e5                                      strb r3, [sp, #0x65]
0049f2b0  64 90 cd e5                                      strb sb, [sp, #0x64]
0049f2b4  70 90 cd e5                                      strb sb, [sp, #0x70]
0049f2b8  71 90 cd e5                                      strb sb, [sp, #0x71]
0049f2bc  23 e0 0b eb                                      bl #0x797350
0049f2c0  09 10 a0 e1                                      mov r1, sb
0049f2c4  07 00 a0 e1                                      mov r0, r7
0049f2c8  a0 6a fe eb                                      bl #0x439d50
0049f2cc  54 00 9a e5                                      ldr r0, [sl, #0x54]
0049f2d0  2a 36 fe eb                                      bl #0x42cb80
0049f2d4  00 90 a0 e1                                      mov sb, r0
0049f2d8  54 00 9a e5                                      ldr r0, [sl, #0x54]
0049f2dc  27 36 fe eb                                      bl #0x42cb80
0049f2e0  71 22 0c eb                                      bl #0x7a7cac
0049f2e4  9a 53 0b eb                                      bl #0x774154
0049f2e8  6c 27 1f e5                                      ldr r2, [pc, #-0x76c]
0049f2ec  00 10 a0 e1                                      mov r1, r0
0049f2f0  03 c0 a0 e3                                      mov ip, #3
0049f2f4  02 20 8f e0                                      add r2, pc, r2
0049f2f8  05 30 a0 e1                                      mov r3, r5
0049f2fc  09 00 a0 e1                                      mov r0, sb
0049f300  00 c0 8d e5                                      str ip, [sp]
0049f304  c0 32 0c eb                                      bl #0x7abe0c
0049f308  07 00 a0 e1                                      mov r0, r7
0049f30c  84 df 0b eb                                      bl #0x797124
0049f310  08 00 a0 e1                                      mov r0, r8
0049f314  82 df 0b eb                                      bl #0x797124
0049f318  05 00 a0 e1                                      mov r0, r5
0049f31c  80 df 0b eb                                      bl #0x797124
0049f320  e1 ec 0d eb                                      bl #0x81a6ac
0049f324  04 50 90 e5                                      ldr r5, [r0, #4]
0049f328  df ec 0d eb                                      bl #0x81a6ac
0049f32c  ac 37 1f e5                                      ldr r3, [pc, #-0x7ac]
0049f330  08 20 90 e5                                      ldr r2, [r0, #8]
0049f334  05 10 a0 e1                                      mov r1, r5
0049f338  03 00 94 e7                                      ldr r0, [r4, r3]
0049f33c  05 3c 02 eb                                      bl #0x52e358
0049f340  11 87 0d eb                                      bl #0x800f8c
0049f344  f1 3b 06 e3                                      movw r3, #0x6bf1
0049f348  03 30 d0 e7                                      ldrb r3, [r0, r3]
0049f34c  00 00 53 e3                                      cmp r3, #0
0049f350  cb 00 00 1a                                      bne #0x49f684
0049f354  06 50 94 e7                                      ldr r5, [r4, r6]
0049f358  0e 31 d5 e5                                      ldrb r3, [r5, #0x10e]
0049f35c  00 00 53 e3                                      cmp r3, #0
0049f360  b9 00 00 1a                                      bne #0x49f64c
0049f364  de 3e d5 e1                                      ldrsb r3, [r5, #0xee]
0049f368  00 00 53 e3                                      cmp r3, #0
0049f36c  d3 00 00 1a                                      bne #0x49f6c0
0049f370  ec 57 1f e5                                      ldr r5, [pc, #-0x7ec]
0049f374  04 87 0d eb                                      bl #0x800f8c
0049f378  05 00 94 e7                                      ldr r0, [r4, r5]
0049f37c  0b 10 a0 e3                                      mov r1, #0xb
0049f380  01 20 a0 e3                                      mov r2, #1
0049f384  1b 7c 0d eb                                      bl #0x7fe3f8
0049f388  00 00 50 e3                                      cmp r0, #0
0049f38c  82 00 00 1a                                      bne #0x49f59c
0049f390  fd 86 0d eb                                      bl #0x800f8c
0049f394  05 00 94 e7                                      ldr r0, [r4, r5]
0049f398  0c 10 a0 e3                                      mov r1, #0xc
0049f39c  01 20 a0 e3                                      mov r2, #1
0049f3a0  14 7c 0d eb                                      bl #0x7fe3f8
0049f3a4  00 00 50 e3                                      cmp r0, #0
0049f3a8  3a fc ff 0a                                      beq #0x49e498
0049f3ac  06 30 94 e7                                      ldr r3, [r4, r6]
0049f3b0  00 20 a0 e3                                      mov r2, #0
0049f3b4  03 10 a0 e3                                      mov r1, #3
0049f3b8  03 00 a0 e1                                      mov r0, r3
0049f3bc  0e 21 c3 e5                                      strb r2, [r3, #0x10e]
0049f3c0  ee 20 c3 e5                                      strb r2, [r3, #0xee]
0049f3c4  8a 33 fa eb                                      bl #0x32c1f4
0049f3c8  32 fc ff ea                                      b #0x49e498
0049f3cc  ee 86 0d eb                                      bl #0x800f8c
0049f3d0  4c 38 1f e5                                      ldr r3, [pc, #-0x84c]
0049f3d4  0d 10 a0 e3                                      mov r1, #0xd
0049f3d8  01 20 a0 e3                                      mov r2, #1
0049f3dc  03 00 94 e7                                      ldr r0, [r4, r3]
0049f3e0  04 7c 0d eb                                      bl #0x7fe3f8
0049f3e4  00 00 50 e3                                      cmp r0, #0
0049f3e8  33 fc ff 0a                                      beq #0x49e4bc
0049f3ec  e6 86 0d eb                                      bl #0x800f8c
0049f3f0  4b 00 0e eb                                      bl #0x81f524
0049f3f4  00 00 50 e3                                      cmp r0, #0
0049f3f8  2f fc ff 0a                                      beq #0x49e4bc
0049f3fc  a5 06 fa eb                                      bl #0x320e98
0049f400  28 50 d0 e5                                      ldrb r5, [r0, #0x28]
0049f404  00 00 55 e3                                      cmp r5, #0
0049f408  10 00 00 0a                                      beq #0x49f450
0049f40c  06 30 94 e7                                      ldr r3, [r4, r6]
0049f410  00 10 a0 e3                                      mov r1, #0
0049f414  01 20 a0 e1                                      mov r2, r1
0049f418  40 00 93 e5                                      ldr r0, [r3, #0x40]
0049f41c  15 3c fb eb                                      bl #0x36e478
0049f420  78 71 90 e5                                      ldr r7, [r0, #0x178]
0049f424  64 af 0d eb                                      bl #0x80b1bc
0049f428  00 50 a0 e1                                      mov r5, r0
0049f42c  a4 08 1f e5                                      ldr r0, [pc, #-0x8a4]
0049f430  01 10 a0 e3                                      mov r1, #1
0049f434  00 00 8f e0                                      add r0, pc, r0
0049f438  81 ab 0d eb                                      bl #0x80a244
0049f43c  00 10 a0 e1                                      mov r1, r0
0049f440  50 70 80 e5                                      str r7, [r0, #0x50]
0049f444  05 00 a0 e1                                      mov r0, r5
0049f448  95 bb 0d eb                                      bl #0x80e2a4
0049f44c  1a fc ff ea                                      b #0x49e4bc
0049f450  21 c3 0d eb                                      bl #0x8100dc
0049f454  03 16 a0 e3                                      mov r1, #0x300000
0049f458  05 20 a0 e1                                      mov r2, r5
0049f45c  06 0d 80 e2                                      add r0, r0, #0x180
0049f460  04 10 81 e2                                      add r1, r1, #4
0049f464  05 30 a0 e1                                      mov r3, r5
0049f468  65 7b 0d eb                                      bl #0x7fe204
0049f46c  12 fc ff ea                                      b #0x49e4bc
0049f470  e4 58 1f e5                                      ldr r5, [pc, #-0x8e4]
0049f474  c4 86 0d eb                                      bl #0x800f8c
0049f478  05 30 94 e7                                      ldr r3, [r4, r5]
0049f47c  00 30 d3 e5                                      ldrb r3, [r3]
0049f480  00 00 53 e3                                      cmp r3, #0
0049f484  d5 fa ff 1a                                      bne #0x49dfe0
0049f488  be fc ff ea                                      b #0x49e788
0049f48c  be 86 0d eb                                      bl #0x800f8c
0049f490  00 30 90 e5                                      ldr r3, [r0]
0049f494  0f e0 a0 e1                                      mov lr, pc
0049f498  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0049f49c  34 ff ff ea                                      b #0x49f174
0049f4a0  b9 86 0d eb                                      bl #0x800f8c
0049f4a4  00 30 90 e5                                      ldr r3, [r0]
0049f4a8  0f e0 a0 e1                                      mov lr, pc
0049f4ac  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0049f4b0  ae ff ff ea                                      b #0x49f370
0049f4b4  7c ec 0d eb                                      bl #0x81a6ac
0049f4b8  06 10 a0 e3                                      mov r1, #6
0049f4bc  14 00 80 e2                                      add r0, r0, #0x14
0049f4c0  01 20 a0 e3                                      mov r2, #1
0049f4c4  cb 7b 0d eb                                      bl #0x7fe3f8
0049f4c8  00 80 50 e2                                      subs r8, r0, #0
0049f4cc  7f 00 00 0a                                      beq #0x49f6d0
0049f4d0  06 80 94 e7                                      ldr r8, [r4, r6]
0049f4d4  ec 30 d8 e5                                      ldrb r3, [r8, #0xec]
0049f4d8  00 00 53 e3                                      cmp r3, #0
0049f4dc  5e ff ff 0a                                      beq #0x49f25c
0049f4e0  50 19 1f e5                                      ldr r1, [pc, #-0x950]
0049f4e4  50 29 1f e5                                      ldr r2, [pc, #-0x950]
0049f4e8  01 30 a0 e3                                      mov r3, #1
0049f4ec  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
0049f4f0  02 20 8f e0                                      add r2, pc, r2
0049f4f4  01 10 8f e0                                      add r1, pc, r1
0049f4f8  34 50 98 e5                                      ldr r5, [r8, #0x34]
0049f4fc  ad 30 cd e5                                      strb r3, [sp, #0xad]
0049f500  ac 70 cd e5                                      strb r7, [sp, #0xac]
0049f504  b0 70 cd e5                                      strb r7, [sp, #0xb0]
0049f508  b3 95 00 eb                                      bl #0x4c4bdc
0049f50c  00 10 a0 e1                                      mov r1, r0
0049f510  05 00 a0 e1                                      mov r0, r5
0049f514  70 a6 01 eb                                      bl #0x508edc
0049f518  b8 a0 8d e2                                      add sl, sp, #0xb8
0049f51c  00 10 a0 e1                                      mov r1, r0
0049f520  c4 50 8d e2                                      add r5, sp, #0xc4
0049f524  0a 00 a0 e1                                      mov r0, sl
0049f528  b8 70 cd e5                                      strb r7, [sp, #0xb8]
0049f52c  b9 70 cd e5                                      strb r7, [sp, #0xb9]
0049f530  86 df 0b eb                                      bl #0x797350
0049f534  07 10 a0 e1                                      mov r1, r7
0049f538  05 00 a0 e1                                      mov r0, r5
0049f53c  03 6a fe eb                                      bl #0x439d50
0049f540  54 00 98 e5                                      ldr r0, [r8, #0x54]
0049f544  8d 35 fe eb                                      bl #0x42cb80
0049f548  00 90 a0 e1                                      mov sb, r0
0049f54c  54 00 98 e5                                      ldr r0, [r8, #0x54]
0049f550  8a 35 fe eb                                      bl #0x42cb80
0049f554  d4 21 0c eb                                      bl #0x7a7cac
0049f558  fd 52 0b eb                                      bl #0x774154
0049f55c  c4 29 1f e5                                      ldr r2, [pc, #-0x9c4]
0049f560  00 10 a0 e1                                      mov r1, r0
0049f564  ac 70 8d e2                                      add r7, sp, #0xac
0049f568  02 20 8f e0                                      add r2, pc, r2
0049f56c  09 00 a0 e1                                      mov r0, sb
0049f570  03 c0 a0 e3                                      mov ip, #3
0049f574  07 30 a0 e1                                      mov r3, r7
0049f578  00 c0 8d e5                                      str ip, [sp]
0049f57c  22 32 0c eb                                      bl #0x7abe0c
0049f580  05 00 a0 e1                                      mov r0, r5
0049f584  e6 de 0b eb                                      bl #0x797124
0049f588  0a 00 a0 e1                                      mov r0, sl
0049f58c  e4 de 0b eb                                      bl #0x797124
0049f590  07 00 a0 e1                                      mov r0, r7
0049f594  e2 de 0b eb                                      bl #0x797124
0049f598  2f ff ff ea                                      b #0x49f25c
0049f59c  3a 35 fe eb                                      bl #0x42ca8c
0049f5a0  04 1a 1f e5                                      ldr r1, [pc, #-0xa04]
0049f5a4  00 70 a0 e3                                      mov r7, #0
0049f5a8  01 80 a0 e3                                      mov r8, #1
0049f5ac  01 10 8f e0                                      add r1, pc, r1
0049f5b0  0e 37 fe eb                                      bl #0x42d1f0
0049f5b4  00 a0 a0 e1                                      mov sl, r0
0049f5b8  33 35 fe eb                                      bl #0x42ca8c
0049f5bc  0a 10 a0 e1                                      mov r1, sl
0049f5c0  88 48 fe eb                                      bl #0x4317e8
0049f5c4  48 00 8a e2                                      add r0, sl, #0x48
0049f5c8  04 90 9a e5                                      ldr sb, [sl, #4]
0049f5cc  dc 9a fb eb                                      bl #0x386144
0049f5d0  30 2a 1f e5                                      ldr r2, [pc, #-0xa30]
0049f5d4  4c 10 9a e5                                      ldr r1, [sl, #0x4c]
0049f5d8  07 30 a0 e1                                      mov r3, r7
0049f5dc  02 20 8f e0                                      add r2, pc, r2
0049f5e0  09 00 a0 e1                                      mov r0, sb
0049f5e4  00 70 8d e5                                      str r7, [sp]
0049f5e8  07 32 0c eb                                      bl #0x7abe0c
0049f5ec  29 06 fa eb                                      bl #0x320e98
0049f5f0  28 80 c0 e5                                      strb r8, [r0, #0x28]
0049f5f4  27 06 fa eb                                      bl #0x320e98
0049f5f8  07 10 a0 e1                                      mov r1, r7
0049f5fc  3c 00 80 e2                                      add r0, r0, #0x3c
0049f600  47 bc f9 eb                                      bl #0x30e724
0049f604  23 06 fa eb                                      bl #0x320e98
0049f608  4c 80 c0 e5                                      strb r8, [r0, #0x4c]
0049f60c  5f ff ff ea                                      b #0x49f390
0049f610  00 10 a0 e3                                      mov r1, #0
0049f614  01 20 a0 e1                                      mov r2, r1
0049f618  96 3b fb eb                                      bl #0x36e478
0049f61c  45 35 d0 e5                                      ldrb r3, [r0, #0x545]
0049f620  00 00 53 e3                                      cmp r3, #0
0049f624  c7 fe ff 1a                                      bne #0x49f148
0049f628  ab c2 0d eb                                      bl #0x8100dc
0049f62c  03 16 a0 e3                                      mov r1, #0x300000
0049f630  04 10 81 e2                                      add r1, r1, #4
0049f634  06 0d 80 e2                                      add r0, r0, #0x180
0049f638  6c 7b 0d eb                                      bl #0x7fe3f0
0049f63c  05 00 a0 e1                                      mov r0, r5
0049f640  03 10 a0 e3                                      mov r1, #3
0049f644  ea 32 fa eb                                      bl #0x32c1f4
0049f648  50 fe ff ea                                      b #0x49ef90
0049f64c  11 06 fa eb                                      bl #0x320e98
0049f650  65 30 a0 e3                                      mov r3, #0x65
0049f654  14 30 80 e5                                      str r3, [r0, #0x14]
0049f658  54 00 95 e5                                      ldr r0, [r5, #0x54]
0049f65c  47 35 fe eb                                      bl #0x42cb80
0049f660  bc 1a 1f e5                                      ldr r1, [pc, #-0xabc]
0049f664  bc 2a 1f e5                                      ldr r2, [pc, #-0xabc]
0049f668  00 c0 a0 e3                                      mov ip, #0
0049f66c  01 10 8f e0                                      add r1, pc, r1
0049f670  02 20 8f e0                                      add r2, pc, r2
0049f674  0c 30 a0 e1                                      mov r3, ip
0049f678  00 c0 8d e5                                      str ip, [sp]
0049f67c  59 38 0c eb                                      bl #0x7ad7e8
0049f680  3a ff ff ea                                      b #0x49f370
0049f684  40 86 0d eb                                      bl #0x800f8c
0049f688  00 50 a0 e1                                      mov r5, r0
0049f68c  06 ec 0d eb                                      bl #0x81a6ac
0049f690  04 10 90 e5                                      ldr r1, [r0, #4]
0049f694  05 00 a0 e1                                      mov r0, r5
0049f698  9a f1 0d eb                                      bl #0x81bd08
0049f69c  3a 86 0d eb                                      bl #0x800f8c
0049f6a0  00 50 a0 e1                                      mov r5, r0
0049f6a4  00 ec 0d eb                                      bl #0x81a6ac
0049f6a8  08 10 90 e5                                      ldr r1, [r0, #8]
0049f6ac  05 00 a0 e1                                      mov r0, r5
0049f6b0  87 f1 0d eb                                      bl #0x81bcd4
0049f6b4  34 86 0d eb                                      bl #0x800f8c
0049f6b8  9f f1 0d eb                                      bl #0x81bd3c
0049f6bc  24 ff ff ea                                      b #0x49f354
0049f6c0  f4 05 fa eb                                      bl #0x320e98
0049f6c4  68 30 a0 e3                                      mov r3, #0x68
0049f6c8  14 30 80 e5                                      str r3, [r0, #0x14]
0049f6cc  27 ff ff ea                                      b #0x49f370
0049f6d0  f5 eb 0d eb                                      bl #0x81a6ac
0049f6d4  07 10 a0 e3                                      mov r1, #7
0049f6d8  14 00 80 e2                                      add r0, r0, #0x14
0049f6dc  01 20 a0 e3                                      mov r2, #1
0049f6e0  44 7b 0d eb                                      bl #0x7fe3f8
0049f6e4  00 00 50 e3                                      cmp r0, #0
0049f6e8  4e 00 00 0a                                      beq #0x49f828
0049f6ec  06 70 94 e7                                      ldr r7, [r4, r6]
0049f6f0  ec 30 d7 e5                                      ldrb r3, [r7, #0xec]
0049f6f4  00 00 53 e3                                      cmp r3, #0
0049f6f8  d7 fe ff 0a                                      beq #0x49f25c
0049f6fc  50 1b 1f e5                                      ldr r1, [pc, #-0xb50]
0049f700  50 2b 1f e5                                      ldr r2, [pc, #-0xb50]
0049f704  01 30 a0 e3                                      mov r3, #1
0049f708  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
0049f70c  02 20 8f e0                                      add r2, pc, r2
0049f710  01 10 8f e0                                      add r1, pc, r1
0049f714  34 50 97 e5                                      ldr r5, [r7, #0x34]
0049f718  89 30 cd e5                                      strb r3, [sp, #0x89]
0049f71c  88 80 cd e5                                      strb r8, [sp, #0x88]
0049f720  8c 80 cd e5                                      strb r8, [sp, #0x8c]
0049f724  2c 95 00 eb                                      bl #0x4c4bdc
0049f728  00 10 a0 e1                                      mov r1, r0
0049f72c  05 00 a0 e1                                      mov r0, r5
0049f730  e9 a5 01 eb                                      bl #0x508edc
0049f734  94 a0 8d e2                                      add sl, sp, #0x94
0049f738  00 10 a0 e1                                      mov r1, r0
0049f73c  a0 50 8d e2                                      add r5, sp, #0xa0
0049f740  0a 00 a0 e1                                      mov r0, sl
0049f744  94 80 cd e5                                      strb r8, [sp, #0x94]
0049f748  95 80 cd e5                                      strb r8, [sp, #0x95]
0049f74c  ff de 0b eb                                      bl #0x797350
0049f750  08 10 a0 e1                                      mov r1, r8
0049f754  05 00 a0 e1                                      mov r0, r5
0049f758  7c 69 fe eb                                      bl #0x439d50
0049f75c  54 00 97 e5                                      ldr r0, [r7, #0x54]
0049f760  06 35 fe eb                                      bl #0x42cb80
0049f764  00 80 a0 e1                                      mov r8, r0
0049f768  54 00 97 e5                                      ldr r0, [r7, #0x54]
0049f76c  03 35 fe eb                                      bl #0x42cb80
0049f770  4d 21 0c eb                                      bl #0x7a7cac
0049f774  76 52 0b eb                                      bl #0x774154
0049f778  c4 2b 1f e5                                      ldr r2, [pc, #-0xbc4]
0049f77c  00 10 a0 e1                                      mov r1, r0
0049f780  88 70 8d e2                                      add r7, sp, #0x88
0049f784  02 20 8f e0                                      add r2, pc, r2
0049f788  08 00 a0 e1                                      mov r0, r8
0049f78c  77 ff ff ea                                      b #0x49f570
0049f790  02 00 a0 e1                                      mov r0, r2
0049f794  dc 2b 1f e5                                      ldr r2, [pc, #-0xbdc]
0049f798  02 10 94 e7                                      ldr r1, [r4, r2]
0049f79c  05 20 a0 e1                                      mov r2, r5
0049f7a0  00 10 91 e5                                      ldr r1, [r1]
0049f7a4  3d 21 fe eb                                      bl #0x427ca0
0049f7a8  37 fe ff ea                                      b #0x49f08c
0049f7ac  54 00 95 e5                                      ldr r0, [r5, #0x54]
0049f7b0  f2 34 fe eb                                      bl #0x42cb80
0049f7b4  f8 1b 1f e5                                      ldr r1, [pc, #-0xbf8]
0049f7b8  f8 2b 1f e5                                      ldr r2, [pc, #-0xbf8]
0049f7bc  00 c0 a0 e3                                      mov ip, #0
0049f7c0  01 10 8f e0                                      add r1, pc, r1
0049f7c4  02 20 8f e0                                      add r2, pc, r2
0049f7c8  0c 30 a0 e1                                      mov r3, ip
0049f7cc  00 c0 8d e5                                      str ip, [sp]
0049f7d0  04 38 0c eb                                      bl #0x7ad7e8
0049f7d4  33 fb ff ea                                      b #0x49e4a8
0049f7d8  06 00 94 e7                                      ldr r0, [r4, r6]
0049f7dc  06 10 a0 e3                                      mov r1, #6
0049f7e0  83 32 fa eb                                      bl #0x32c1f4
0049f7e4  e9 fd ff ea                                      b #0x49ef90
0049f7e8  06 80 94 e7                                      ldr r8, [r4, r6]
0049f7ec  08 00 a0 e1                                      mov r0, r8
0049f7f0  67 ff f9 eb                                      bl #0x31f594
0049f7f4  00 50 50 e2                                      subs r5, r0, #0
0049f7f8  cb fd ff 1a                                      bne #0x49ef2c
0049f7fc  54 00 98 e5                                      ldr r0, [r8, #0x54]
0049f800  de 34 fe eb                                      bl #0x42cb80
0049f804  40 1c 1f e5                                      ldr r1, [pc, #-0xc40]
0049f808  40 2c 1f e5                                      ldr r2, [pc, #-0xc40]
0049f80c  05 30 a0 e1                                      mov r3, r5
0049f810  01 10 8f e0                                      add r1, pc, r1
0049f814  02 20 8f e0                                      add r2, pc, r2
0049f818  00 50 8d e5                                      str r5, [sp]
0049f81c  f1 37 0c eb                                      bl #0x7ad7e8
0049f820  d1 fd ff ea                                      b #0x49ef6c
0049f824  b9 ba f9 eb                                      bl #0x30e310
0049f828  9f eb 0d eb                                      bl #0x81a6ac
0049f82c  08 10 a0 e3                                      mov r1, #8
0049f830  14 00 80 e2                                      add r0, r0, #0x14
0049f834  01 20 a0 e3                                      mov r2, #1
0049f838  ee 7a 0d eb                                      bl #0x7fe3f8
0049f83c  00 00 50 e3                                      cmp r0, #0
0049f840  03 00 00 0a                                      beq #0x49f854
0049f844  06 00 94 e7                                      ldr r0, [r4, r6]
0049f848  09 10 a0 e3                                      mov r1, #9
0049f84c  68 32 fa eb                                      bl #0x32c1f4
0049f850  81 fe ff ea                                      b #0x49f25c
0049f854  94 eb 0d eb                                      bl #0x81a6ac
0049f858  09 10 a0 e3                                      mov r1, #9
0049f85c  14 00 80 e2                                      add r0, r0, #0x14
0049f860  01 20 a0 e3                                      mov r2, #1
0049f864  e3 7a 0d eb                                      bl #0x7fe3f8
0049f868  00 00 50 e3                                      cmp r0, #0
0049f86c  7a fe ff 0a                                      beq #0x49f25c
0049f870  06 00 94 e7                                      ldr r0, [r4, r6]
0049f874  04 10 a0 e3                                      mov r1, #4
0049f878  5d 32 fa eb                                      bl #0x32c1f4
0049f87c  76 fe ff ea                                      b #0x49f25c

; FUNCTION 0x0049fb0c, declared_size=1236, range_size=1236, mode=arm
; class-group: OnlineGameState
; alias: _ZN15OnlineGameState15processMessagesEv
; demangled: OnlineGameState::processMessages()
; decoder-mode: arm
0049fb0c  70 40 2d e9                                      push {r4, r5, r6, lr}
0049fb10  a9 ad 0d eb                                      bl #0x80b1bc
0049fb14  94 14 9f e5                                      ldr r1, [pc, #0x494]
0049fb18  01 10 8f e0                                      add r1, pc, r1
0049fb1c  17 ac 0d eb                                      bl #0x80ab80
0049fb20  00 00 50 e3                                      cmp r0, #0
0049fb24  11 01 00 1a                                      bne #0x49ff70
0049fb28  a3 ad 0d eb                                      bl #0x80b1bc
0049fb2c  80 14 9f e5                                      ldr r1, [pc, #0x480]
0049fb30  01 10 8f e0                                      add r1, pc, r1
0049fb34  11 ac 0d eb                                      bl #0x80ab80
0049fb38  00 00 50 e3                                      cmp r0, #0
0049fb3c  fb 00 00 1a                                      bne #0x49ff30
0049fb40  9d ad 0d eb                                      bl #0x80b1bc
0049fb44  6c 14 9f e5                                      ldr r1, [pc, #0x46c]
0049fb48  01 10 8f e0                                      add r1, pc, r1
0049fb4c  0b ac 0d eb                                      bl #0x80ab80
0049fb50  00 00 50 e3                                      cmp r0, #0
0049fb54  e5 00 00 1a                                      bne #0x49fef0
0049fb58  97 ad 0d eb                                      bl #0x80b1bc
0049fb5c  58 14 9f e5                                      ldr r1, [pc, #0x458]
0049fb60  01 10 8f e0                                      add r1, pc, r1
0049fb64  05 ac 0d eb                                      bl #0x80ab80
0049fb68  00 00 50 e3                                      cmp r0, #0
0049fb6c  cf 00 00 1a                                      bne #0x49feb0
0049fb70  91 ad 0d eb                                      bl #0x80b1bc
0049fb74  44 14 9f e5                                      ldr r1, [pc, #0x444]
0049fb78  01 10 8f e0                                      add r1, pc, r1
0049fb7c  ff ab 0d eb                                      bl #0x80ab80
0049fb80  00 00 50 e3                                      cmp r0, #0
0049fb84  b9 00 00 1a                                      bne #0x49fe70
0049fb88  8b ad 0d eb                                      bl #0x80b1bc
0049fb8c  30 14 9f e5                                      ldr r1, [pc, #0x430]
0049fb90  01 10 8f e0                                      add r1, pc, r1
0049fb94  f9 ab 0d eb                                      bl #0x80ab80
0049fb98  00 00 50 e3                                      cmp r0, #0
0049fb9c  a3 00 00 1a                                      bne #0x49fe30
0049fba0  85 ad 0d eb                                      bl #0x80b1bc
0049fba4  1c 14 9f e5                                      ldr r1, [pc, #0x41c]
0049fba8  01 10 8f e0                                      add r1, pc, r1
0049fbac  f3 ab 0d eb                                      bl #0x80ab80
0049fbb0  00 00 50 e3                                      cmp r0, #0
0049fbb4  8d 00 00 1a                                      bne #0x49fdf0
0049fbb8  7f ad 0d eb                                      bl #0x80b1bc
0049fbbc  08 14 9f e5                                      ldr r1, [pc, #0x408]
0049fbc0  01 10 8f e0                                      add r1, pc, r1
0049fbc4  ed ab 0d eb                                      bl #0x80ab80
0049fbc8  00 00 50 e3                                      cmp r0, #0
0049fbcc  77 00 00 1a                                      bne #0x49fdb0
0049fbd0  79 ad 0d eb                                      bl #0x80b1bc
0049fbd4  f4 13 9f e5                                      ldr r1, [pc, #0x3f4]
0049fbd8  01 10 8f e0                                      add r1, pc, r1
0049fbdc  e7 ab 0d eb                                      bl #0x80ab80
0049fbe0  00 00 50 e3                                      cmp r0, #0
0049fbe4  61 00 00 1a                                      bne #0x49fd70
0049fbe8  73 ad 0d eb                                      bl #0x80b1bc
0049fbec  e0 13 9f e5                                      ldr r1, [pc, #0x3e0]
0049fbf0  01 10 8f e0                                      add r1, pc, r1
0049fbf4  e1 ab 0d eb                                      bl #0x80ab80
0049fbf8  00 00 50 e3                                      cmp r0, #0
0049fbfc  4b 00 00 1a                                      bne #0x49fd30
0049fc00  a4 04 fa eb                                      bl #0x320e98
0049fc04  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
0049fc08  00 00 53 e3                                      cmp r3, #0
0049fc0c  2c 00 00 1a                                      bne #0x49fcc4
0049fc10  69 ad 0d eb                                      bl #0x80b1bc
0049fc14  bc 13 9f e5                                      ldr r1, [pc, #0x3bc]
0049fc18  01 10 8f e0                                      add r1, pc, r1
0049fc1c  d7 ab 0d eb                                      bl #0x80ab80
0049fc20  00 00 50 e3                                      cmp r0, #0
0049fc24  16 00 00 1a                                      bne #0x49fc84
0049fc28  63 ad 0d eb                                      bl #0x80b1bc
0049fc2c  a8 13 9f e5                                      ldr r1, [pc, #0x3a8]
0049fc30  01 10 8f e0                                      add r1, pc, r1
0049fc34  d1 ab 0d eb                                      bl #0x80ab80
0049fc38  00 00 50 e3                                      cmp r0, #0
0049fc3c  00 00 00 1a                                      bne #0x49fc44
0049fc40  70 80 bd e8                                      pop {r4, r5, r6, pc}
0049fc44  93 04 fa eb                                      bl #0x320e98
0049fc48  08 40 90 e5                                      ldr r4, [r0, #8]
0049fc4c  04 50 80 e2                                      add r5, r0, #4
0049fc50  00 00 54 e3                                      cmp r4, #0
0049fc54  03 00 00 1a                                      bne #0x49fc68
0049fc58  f8 ff ff ea                                      b #0x49fc40
0049fc5c  08 40 94 e5                                      ldr r4, [r4, #8]
0049fc60  00 00 54 e3                                      cmp r4, #0
0049fc64  f5 ff ff 0a                                      beq #0x49fc40
0049fc68  00 30 94 e5                                      ldr r3, [r4]
0049fc6c  0c 00 53 e3                                      cmp r3, #0xc
0049fc70  f9 ff ff 1a                                      bne #0x49fc5c
0049fc74  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049fc78  0f e0 a0 e1                                      mov lr, pc
0049fc7c  04 f0 94 e5                                      ldr pc, [r4, #4]
0049fc80  f5 ff ff ea                                      b #0x49fc5c
0049fc84  83 04 fa eb                                      bl #0x320e98
0049fc88  08 40 90 e5                                      ldr r4, [r0, #8]
0049fc8c  04 50 80 e2                                      add r5, r0, #4
0049fc90  00 00 54 e3                                      cmp r4, #0
0049fc94  03 00 00 1a                                      bne #0x49fca8
0049fc98  e2 ff ff ea                                      b #0x49fc28
0049fc9c  08 40 94 e5                                      ldr r4, [r4, #8]
0049fca0  00 00 54 e3                                      cmp r4, #0
0049fca4  df ff ff 0a                                      beq #0x49fc28
0049fca8  00 30 94 e5                                      ldr r3, [r4]
0049fcac  0b 00 53 e3                                      cmp r3, #0xb
0049fcb0  f9 ff ff 1a                                      bne #0x49fc9c
0049fcb4  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049fcb8  0f e0 a0 e1                                      mov lr, pc
0049fcbc  04 f0 94 e5                                      ldr pc, [r4, #4]
0049fcc0  f5 ff ff ea                                      b #0x49fc9c
0049fcc4  04 c1 0d eb                                      bl #0x8100dc
0049fcc8  04 c1 0d eb                                      bl #0x8100e0
0049fccc  00 00 50 e3                                      cmp r0, #0
0049fcd0  ce ff ff 0a                                      beq #0x49fc10
0049fcd4  00 c1 0d eb                                      bl #0x8100dc
0049fcd8  03 16 a0 e3                                      mov r1, #0x300000
0049fcdc  06 0d 80 e2                                      add r0, r0, #0x180
0049fce0  00 20 a0 e3                                      mov r2, #0
0049fce4  c3 79 0d eb                                      bl #0x7fe3f8
0049fce8  00 00 50 e3                                      cmp r0, #0
0049fcec  c7 ff ff 0a                                      beq #0x49fc10
0049fcf0  68 04 fa eb                                      bl #0x320e98
0049fcf4  08 40 90 e5                                      ldr r4, [r0, #8]
0049fcf8  04 50 80 e2                                      add r5, r0, #4
0049fcfc  00 00 54 e3                                      cmp r4, #0
0049fd00  03 00 00 1a                                      bne #0x49fd14
0049fd04  c1 ff ff ea                                      b #0x49fc10
0049fd08  08 40 94 e5                                      ldr r4, [r4, #8]
0049fd0c  00 00 54 e3                                      cmp r4, #0
0049fd10  be ff ff 0a                                      beq #0x49fc10
0049fd14  00 30 94 e5                                      ldr r3, [r4]
0049fd18  0d 00 53 e3                                      cmp r3, #0xd
0049fd1c  f9 ff ff 1a                                      bne #0x49fd08
0049fd20  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049fd24  0f e0 a0 e1                                      mov lr, pc
0049fd28  04 f0 94 e5                                      ldr pc, [r4, #4]
0049fd2c  f5 ff ff ea                                      b #0x49fd08
0049fd30  58 04 fa eb                                      bl #0x320e98
0049fd34  08 40 90 e5                                      ldr r4, [r0, #8]
0049fd38  04 50 80 e2                                      add r5, r0, #4
0049fd3c  00 00 54 e3                                      cmp r4, #0
0049fd40  03 00 00 1a                                      bne #0x49fd54
0049fd44  ad ff ff ea                                      b #0x49fc00
0049fd48  08 40 94 e5                                      ldr r4, [r4, #8]
0049fd4c  00 00 54 e3                                      cmp r4, #0
0049fd50  aa ff ff 0a                                      beq #0x49fc00
0049fd54  00 30 94 e5                                      ldr r3, [r4]
0049fd58  09 00 53 e3                                      cmp r3, #9
0049fd5c  f9 ff ff 1a                                      bne #0x49fd48
0049fd60  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049fd64  0f e0 a0 e1                                      mov lr, pc
0049fd68  04 f0 94 e5                                      ldr pc, [r4, #4]
0049fd6c  f5 ff ff ea                                      b #0x49fd48
0049fd70  48 04 fa eb                                      bl #0x320e98
0049fd74  08 40 90 e5                                      ldr r4, [r0, #8]
0049fd78  04 50 80 e2                                      add r5, r0, #4
0049fd7c  00 00 54 e3                                      cmp r4, #0
0049fd80  03 00 00 1a                                      bne #0x49fd94
0049fd84  97 ff ff ea                                      b #0x49fbe8
0049fd88  08 40 94 e5                                      ldr r4, [r4, #8]
0049fd8c  00 00 54 e3                                      cmp r4, #0
0049fd90  94 ff ff 0a                                      beq #0x49fbe8
0049fd94  00 30 94 e5                                      ldr r3, [r4]
0049fd98  08 00 53 e3                                      cmp r3, #8
0049fd9c  f9 ff ff 1a                                      bne #0x49fd88
0049fda0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049fda4  0f e0 a0 e1                                      mov lr, pc
0049fda8  04 f0 94 e5                                      ldr pc, [r4, #4]
0049fdac  f5 ff ff ea                                      b #0x49fd88
0049fdb0  38 04 fa eb                                      bl #0x320e98
0049fdb4  08 40 90 e5                                      ldr r4, [r0, #8]
0049fdb8  04 50 80 e2                                      add r5, r0, #4
0049fdbc  00 00 54 e3                                      cmp r4, #0
0049fdc0  03 00 00 1a                                      bne #0x49fdd4
0049fdc4  81 ff ff ea                                      b #0x49fbd0
0049fdc8  08 40 94 e5                                      ldr r4, [r4, #8]
0049fdcc  00 00 54 e3                                      cmp r4, #0
0049fdd0  7e ff ff 0a                                      beq #0x49fbd0
0049fdd4  00 30 94 e5                                      ldr r3, [r4]
0049fdd8  07 00 53 e3                                      cmp r3, #7
0049fddc  f9 ff ff 1a                                      bne #0x49fdc8
0049fde0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049fde4  0f e0 a0 e1                                      mov lr, pc
0049fde8  04 f0 94 e5                                      ldr pc, [r4, #4]
0049fdec  f5 ff ff ea                                      b #0x49fdc8
0049fdf0  28 04 fa eb                                      bl #0x320e98
0049fdf4  08 40 90 e5                                      ldr r4, [r0, #8]
0049fdf8  04 50 80 e2                                      add r5, r0, #4
0049fdfc  00 00 54 e3                                      cmp r4, #0
0049fe00  03 00 00 1a                                      bne #0x49fe14
0049fe04  6b ff ff ea                                      b #0x49fbb8
0049fe08  08 40 94 e5                                      ldr r4, [r4, #8]
0049fe0c  00 00 54 e3                                      cmp r4, #0
0049fe10  68 ff ff 0a                                      beq #0x49fbb8
0049fe14  00 30 94 e5                                      ldr r3, [r4]
0049fe18  04 00 53 e3                                      cmp r3, #4
0049fe1c  f9 ff ff 1a                                      bne #0x49fe08
0049fe20  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049fe24  0f e0 a0 e1                                      mov lr, pc
0049fe28  04 f0 94 e5                                      ldr pc, [r4, #4]
0049fe2c  f5 ff ff ea                                      b #0x49fe08
0049fe30  18 04 fa eb                                      bl #0x320e98
0049fe34  08 40 90 e5                                      ldr r4, [r0, #8]
0049fe38  04 50 80 e2                                      add r5, r0, #4
0049fe3c  00 00 54 e3                                      cmp r4, #0
0049fe40  03 00 00 1a                                      bne #0x49fe54
0049fe44  55 ff ff ea                                      b #0x49fba0
0049fe48  08 40 94 e5                                      ldr r4, [r4, #8]
0049fe4c  00 00 54 e3                                      cmp r4, #0
0049fe50  52 ff ff 0a                                      beq #0x49fba0
0049fe54  00 30 94 e5                                      ldr r3, [r4]
0049fe58  03 00 53 e3                                      cmp r3, #3
0049fe5c  f9 ff ff 1a                                      bne #0x49fe48
0049fe60  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049fe64  0f e0 a0 e1                                      mov lr, pc
0049fe68  04 f0 94 e5                                      ldr pc, [r4, #4]
0049fe6c  f5 ff ff ea                                      b #0x49fe48
0049fe70  08 04 fa eb                                      bl #0x320e98
0049fe74  08 40 90 e5                                      ldr r4, [r0, #8]
0049fe78  04 50 80 e2                                      add r5, r0, #4
0049fe7c  00 00 54 e3                                      cmp r4, #0
0049fe80  03 00 00 1a                                      bne #0x49fe94
0049fe84  3f ff ff ea                                      b #0x49fb88
0049fe88  08 40 94 e5                                      ldr r4, [r4, #8]
0049fe8c  00 00 54 e3                                      cmp r4, #0
0049fe90  3c ff ff 0a                                      beq #0x49fb88
0049fe94  00 30 94 e5                                      ldr r3, [r4]
0049fe98  02 00 53 e3                                      cmp r3, #2
0049fe9c  f9 ff ff 1a                                      bne #0x49fe88
0049fea0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049fea4  0f e0 a0 e1                                      mov lr, pc
0049fea8  04 f0 94 e5                                      ldr pc, [r4, #4]
0049feac  f5 ff ff ea                                      b #0x49fe88
0049feb0  f8 03 fa eb                                      bl #0x320e98
0049feb4  08 40 90 e5                                      ldr r4, [r0, #8]
0049feb8  04 50 80 e2                                      add r5, r0, #4
0049febc  00 00 54 e3                                      cmp r4, #0
0049fec0  03 00 00 1a                                      bne #0x49fed4
0049fec4  29 ff ff ea                                      b #0x49fb70
0049fec8  08 40 94 e5                                      ldr r4, [r4, #8]
0049fecc  00 00 54 e3                                      cmp r4, #0
0049fed0  26 ff ff 0a                                      beq #0x49fb70
0049fed4  00 30 94 e5                                      ldr r3, [r4]
0049fed8  06 00 53 e3                                      cmp r3, #6
0049fedc  f9 ff ff 1a                                      bne #0x49fec8
0049fee0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049fee4  0f e0 a0 e1                                      mov lr, pc
0049fee8  04 f0 94 e5                                      ldr pc, [r4, #4]
0049feec  f5 ff ff ea                                      b #0x49fec8
0049fef0  e8 03 fa eb                                      bl #0x320e98
0049fef4  08 40 90 e5                                      ldr r4, [r0, #8]
0049fef8  04 50 80 e2                                      add r5, r0, #4
0049fefc  00 00 54 e3                                      cmp r4, #0
0049ff00  03 00 00 1a                                      bne #0x49ff14
0049ff04  13 ff ff ea                                      b #0x49fb58
0049ff08  08 40 94 e5                                      ldr r4, [r4, #8]
0049ff0c  00 00 54 e3                                      cmp r4, #0
0049ff10  10 ff ff 0a                                      beq #0x49fb58
0049ff14  00 30 94 e5                                      ldr r3, [r4]
0049ff18  05 00 53 e3                                      cmp r3, #5
0049ff1c  f9 ff ff 1a                                      bne #0x49ff08
0049ff20  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049ff24  0f e0 a0 e1                                      mov lr, pc
0049ff28  04 f0 94 e5                                      ldr pc, [r4, #4]
0049ff2c  f5 ff ff ea                                      b #0x49ff08
0049ff30  d8 03 fa eb                                      bl #0x320e98
0049ff34  08 40 90 e5                                      ldr r4, [r0, #8]
0049ff38  04 50 80 e2                                      add r5, r0, #4
0049ff3c  00 00 54 e3                                      cmp r4, #0
0049ff40  03 00 00 1a                                      bne #0x49ff54
0049ff44  fd fe ff ea                                      b #0x49fb40
0049ff48  08 40 94 e5                                      ldr r4, [r4, #8]
0049ff4c  00 00 54 e3                                      cmp r4, #0
0049ff50  fa fe ff 0a                                      beq #0x49fb40
0049ff54  00 30 94 e5                                      ldr r3, [r4]
0049ff58  0a 00 53 e3                                      cmp r3, #0xa
0049ff5c  f9 ff ff 1a                                      bne #0x49ff48
0049ff60  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049ff64  0f e0 a0 e1                                      mov lr, pc
0049ff68  04 f0 94 e5                                      ldr pc, [r4, #4]
0049ff6c  f5 ff ff ea                                      b #0x49ff48
0049ff70  c8 03 fa eb                                      bl #0x320e98
0049ff74  08 40 90 e5                                      ldr r4, [r0, #8]
0049ff78  04 50 80 e2                                      add r5, r0, #4
0049ff7c  00 00 54 e3                                      cmp r4, #0
0049ff80  03 00 00 1a                                      bne #0x49ff94
0049ff84  e7 fe ff ea                                      b #0x49fb28
0049ff88  08 40 94 e5                                      ldr r4, [r4, #8]
0049ff8c  00 00 54 e3                                      cmp r4, #0
0049ff90  e4 fe ff 0a                                      beq #0x49fb28
0049ff94  00 30 94 e5                                      ldr r3, [r4]
0049ff98  00 00 53 e3                                      cmp r3, #0
0049ff9c  f9 ff ff 1a                                      bne #0x49ff88
0049ffa0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0049ffa4  0f e0 a0 e1                                      mov lr, pc
0049ffa8  04 f0 94 e5                                      ldr pc, [r4, #4]
0049ffac  f5 ff ff ea                                      b #0x49ff88
; mapping-symbol data/literal pool
0049ffb0  08 f4 41 00 48 f3 41 00 20 f3 41 00 70 f3 41 00  .byte 0x08, 0xf4, 0x41, 0x00, 0x48, 0xf3, 0x41, 0x00, 0x20, 0xf3, 0x41, 0x00, 0x70, 0xf3, 0x41, 0x00
0049ffc0  78 f3 41 00 50 f3 41 00 e0 f2 41 00 00 f3 41 00  .byte 0x78, 0xf3, 0x41, 0x00, 0x50, 0xf3, 0x41, 0x00, 0xe0, 0xf2, 0x41, 0x00, 0x00, 0xf3, 0x41, 0x00
0049ffd0  d0 f2 41 00 a8 f2 41 00 40 f2 41 00 00 f3 41 00  .byte 0xd0, 0xf2, 0x41, 0x00, 0xa8, 0xf2, 0x41, 0x00, 0x40, 0xf2, 0x41, 0x00, 0x00, 0xf3, 0x41, 0x00

; FUNCTION 0x0049ffe0, declared_size=96, range_size=96, mode=arm
; class-group: OnlineGameState
; alias: _ZN15OnlineGameStateC2Ev
; demangled: OnlineGameState::OnlineGameState()
; decoder-mode: arm
0049ffe0  50 10 9f e5                                      ldr r1, [pc, #0x50]
0049ffe4  04 40 2d e5                                      str r4, [sp, #-4]!
0049ffe8  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
0049ffec  01 10 8f e0                                      add r1, pc, r1
0049fff0  00 20 a0 e3                                      mov r2, #0
0049fff4  04 40 91 e7                                      ldr r4, [r1, r4]
0049fff8  00 c0 a0 e1                                      mov ip, r0
0049fffc  08 20 ac e5                                      str r2, [ip, #8]!
004a0000  08 40 84 e2                                      add r4, r4, #8
004a0004  0c c0 80 e5                                      str ip, [r0, #0xc]
004a0008  01 c0 a0 e3                                      mov ip, #1
004a000c  58 20 80 e5                                      str r2, [r0, #0x58]
004a0010  04 c0 c0 e5                                      strb ip, [r0, #4]
004a0014  00 40 80 e5                                      str r4, [r0]
004a0018  10 20 80 e5                                      str r2, [r0, #0x10]
004a001c  28 20 c0 e5                                      strb r2, [r0, #0x28]
004a0020  4d 20 c0 e5                                      strb r2, [r0, #0x4d]
004a0024  4e 20 c0 e5                                      strb r2, [r0, #0x4e]
004a0028  50 20 80 e5                                      str r2, [r0, #0x50]
004a002c  54 20 80 e5                                      str r2, [r0, #0x54]
004a0030  10 00 bd e8                                      ldm sp!, {r4}
004a0034  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
004a0038  a4 4a 4f 00 78 44 00 00                          .byte 0xa4, 0x4a, 0x4f, 0x00, 0x78, 0x44, 0x00, 0x00

; FUNCTION 0x004a0040, declared_size=96, range_size=96, mode=arm
; class-group: OnlineGameState
; alias: _ZN15OnlineGameStateC1Ev
; demangled: OnlineGameState::OnlineGameState()
; decoder-mode: arm
004a0040  50 10 9f e5                                      ldr r1, [pc, #0x50]
004a0044  04 40 2d e5                                      str r4, [sp, #-4]!
004a0048  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
004a004c  01 10 8f e0                                      add r1, pc, r1
004a0050  00 20 a0 e3                                      mov r2, #0
004a0054  04 40 91 e7                                      ldr r4, [r1, r4]
004a0058  00 c0 a0 e1                                      mov ip, r0
004a005c  08 20 ac e5                                      str r2, [ip, #8]!
004a0060  08 40 84 e2                                      add r4, r4, #8
004a0064  0c c0 80 e5                                      str ip, [r0, #0xc]
004a0068  01 c0 a0 e3                                      mov ip, #1
004a006c  58 20 80 e5                                      str r2, [r0, #0x58]
004a0070  04 c0 c0 e5                                      strb ip, [r0, #4]
004a0074  00 40 80 e5                                      str r4, [r0]
004a0078  10 20 80 e5                                      str r2, [r0, #0x10]
004a007c  28 20 c0 e5                                      strb r2, [r0, #0x28]
004a0080  4d 20 c0 e5                                      strb r2, [r0, #0x4d]
004a0084  4e 20 c0 e5                                      strb r2, [r0, #0x4e]
004a0088  50 20 80 e5                                      str r2, [r0, #0x50]
004a008c  54 20 80 e5                                      str r2, [r0, #0x54]
004a0090  10 00 bd e8                                      ldm sp!, {r4}
004a0094  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
004a0098  44 4a 4f 00 78 44 00 00                          .byte 0x44, 0x4a, 0x4f, 0x00, 0x78, 0x44, 0x00, 0x00

; FUNCTION 0x004a00a0, declared_size=56, range_size=56, mode=arm
; class-group: OnlineGameState
; alias: _ZN15OnlineGameState11timevaldiffEP7timevalS1_
; demangled: OnlineGameState::timevaldiff(timeval*, timeval*)
; decoder-mode: arm
004a00a0  04 00 91 e5                                      ldr r0, [r1, #4]
004a00a4  04 c0 92 e5                                      ldr ip, [r2, #4]
004a00a8  d3 3d 04 e3                                      movw r3, #0x4dd3
004a00ac  62 30 41 e3                                      movt r3, #0x1062
004a00b0  0c c0 60 e0                                      rsb ip, r0, ip
004a00b4  93 0c c3 e0                                      smull r0, r3, r3, ip
004a00b8  00 00 92 e5                                      ldr r0, [r2]
004a00bc  00 20 91 e5                                      ldr r2, [r1]
004a00c0  cc cf a0 e1                                      asr ip, ip, #0x1f
004a00c4  43 33 6c e0                                      rsb r3, ip, r3, asr #6
004a00c8  00 20 62 e0                                      rsb r2, r2, r0
004a00cc  fa 0f a0 e3                                      mov r0, #0x3e8
004a00d0  90 32 20 e0                                      mla r0, r0, r2, r3
004a00d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a02f8, declared_size=72, range_size=72, mode=arm
; class-group: OnlineGameState
; alias: _ZN15OnlineGameState32GlliveRoomCreationTimeOutExpiredEv
; demangled: OnlineGameState::GlliveRoomCreationTimeOutExpired()
; decoder-mode: arm
004a02f8  30 40 2d e9                                      push {r4, r5, lr}
004a02fc  0c d0 4d e2                                      sub sp, sp, #0xc
004a0300  00 50 a0 e1                                      mov r5, r0
004a0304  00 10 a0 e3                                      mov r1, #0
004a0308  0d 00 a0 e1                                      mov r0, sp
004a030c  04 b9 f9 eb                                      bl #0x30e724
004a0310  05 00 a0 e1                                      mov r0, r5
004a0314  0d 20 a0 e1                                      mov r2, sp
004a0318  44 10 85 e2                                      add r1, r5, #0x44
004a031c  5f ff ff eb                                      bl #0x4a00a0
004a0320  57 3b a0 e3                                      mov r3, #0x15c00
004a0324  39 3e 83 e2                                      add r3, r3, #0x390
004a0328  0d 40 a0 e1                                      mov r4, sp
004a032c  03 00 50 e1                                      cmp r0, r3
004a0330  00 00 a0 d3                                      movle r0, #0
004a0334  01 00 a0 c3                                      movgt r0, #1
004a0338  0c d0 8d e2                                      add sp, sp, #0xc
004a033c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x004a0340, declared_size=72, range_size=72, mode=arm
; class-group: OnlineGameState
; alias: _ZN15OnlineGameState29GlliveStartGameTimeOutExpiredEv
; demangled: OnlineGameState::GlliveStartGameTimeOutExpired()
; decoder-mode: arm
004a0340  30 40 2d e9                                      push {r4, r5, lr}
004a0344  0c d0 4d e2                                      sub sp, sp, #0xc
004a0348  00 50 a0 e1                                      mov r5, r0
004a034c  00 10 a0 e3                                      mov r1, #0
004a0350  0d 00 a0 e1                                      mov r0, sp
004a0354  f2 b8 f9 eb                                      bl #0x30e724
004a0358  05 00 a0 e1                                      mov r0, r5
004a035c  0d 20 a0 e1                                      mov r2, sp
004a0360  3c 10 85 e2                                      add r1, r5, #0x3c
004a0364  4d ff ff eb                                      bl #0x4a00a0
004a0368  57 3b a0 e3                                      mov r3, #0x15c00
004a036c  39 3e 83 e2                                      add r3, r3, #0x390
004a0370  0d 40 a0 e1                                      mov r4, sp
004a0374  03 00 50 e1                                      cmp r0, r3
004a0378  00 00 a0 d3                                      movle r0, #0
004a037c  01 00 a0 c3                                      movgt r0, #1
004a0380  0c d0 8d e2                                      add sp, sp, #0xc
004a0384  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x004a0388, declared_size=20, range_size=20, mode=arm
; class-group: OnlineGameState
; alias: _ZN15OnlineGameState7DestroyEv
; demangled: OnlineGameState::Destroy()
; decoder-mode: arm
004a0388  10 40 2d e9                                      push {r4, lr}
004a038c  c1 02 fa eb                                      bl #0x320e98
004a0390  14 00 80 e2                                      add r0, r0, #0x14
004a0394  10 40 bd e8                                      pop {r4, lr}
004a0398  ad ff ff ea                                      b #0x4a0254

; FUNCTION 0x004a039c, declared_size=72, range_size=72, mode=arm
; class-group: OnlineGameState
; alias: _ZN15OnlineGameState6UpdateEv
; demangled: OnlineGameState::Update()
; decoder-mode: arm
004a039c  10 40 2d e9                                      push {r4, lr}
004a03a0  fb 74 0d eb                                      bl #0x7fd794
004a03a4  05 30 d0 e5                                      ldrb r3, [r0, #5]
004a03a8  00 00 53 e3                                      cmp r3, #0
004a03ac  09 00 00 1a                                      bne #0x4a03d8
004a03b0  f7 74 0d eb                                      bl #0x7fd794
004a03b4  05 30 d0 e5                                      ldrb r3, [r0, #5]
004a03b8  00 00 53 e3                                      cmp r3, #0
004a03bc  01 00 00 0a                                      beq #0x4a03c8
004a03c0  b4 02 fa eb                                      bl #0x320e98
004a03c4  d0 fd ff eb                                      bl #0x49fb0c
004a03c8  b2 02 fa eb                                      bl #0x320e98
004a03cc  14 00 80 e2                                      add r0, r0, #0x14
004a03d0  10 40 bd e8                                      pop {r4, lr}
004a03d4  62 ff ff ea                                      b #0x4a0164
004a03d8  ae 02 fa eb                                      bl #0x320e98
004a03dc  e7 f5 ff eb                                      bl #0x49db80
004a03e0  f2 ff ff ea                                      b #0x4a03b0

; FUNCTION 0x004a04c0, declared_size=4924, range_size=4924, mode=arm
; class-group: OnlineGameState
; alias: _ZN15OnlineGameState4InitEi
; demangled: OnlineGameState::Init(int)
; decoder-mode: arm
004a04c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004a04c4  a4 4f 9f e5                                      ldr r4, [pc, #0xfa4]
004a04c8  a4 5f 9f e5                                      ldr r5, [pc, #0xfa4]
004a04cc  8e de 4d e2                                      sub sp, sp, #0x8e0
004a04d0  04 40 8f e0                                      add r4, pc, r4
004a04d4  05 30 94 e7                                      ldr r3, [r4, r5]
004a04d8  04 d0 4d e2                                      sub sp, sp, #4
004a04dc  01 60 a0 e1                                      mov r6, r1
004a04e0  00 30 93 e5                                      ldr r3, [r3]
004a04e4  00 70 a0 e1                                      mov r7, r0
004a04e8  dc 38 8d e5                                      str r3, [sp, #0x8dc]
004a04ec  69 02 fa eb                                      bl #0x320e98
004a04f0  14 00 80 e2                                      add r0, r0, #0x14
004a04f4  f7 fe ff eb                                      bl #0x4a00d8
004a04f8  66 02 fa eb                                      bl #0x320e98
004a04fc  74 3f 9f e5                                      ldr r3, [pc, #0xf74]
004a0500  64 10 a0 e3                                      mov r1, #0x64
004a0504  14 00 80 e2                                      add r0, r0, #0x14
004a0508  03 20 94 e7                                      ldr r2, [r4, r3]
004a050c  00 30 a0 e3                                      mov r3, #0
004a0510  62 ff ff eb                                      bl #0x4a02a0
004a0514  5f 02 fa eb                                      bl #0x320e98
004a0518  5c 3f 9f e5                                      ldr r3, [pc, #0xf5c]
004a051c  4b 1f a0 e3                                      mov r1, #0x12c
004a0520  14 00 80 e2                                      add r0, r0, #0x14
004a0524  03 20 94 e7                                      ldr r2, [r4, r3]
004a0528  00 30 a0 e3                                      mov r3, #0
004a052c  5b ff ff eb                                      bl #0x4a02a0
004a0530  58 02 fa eb                                      bl #0x320e98
004a0534  44 3f 9f e5                                      ldr r3, [pc, #0xf44]
004a0538  65 10 a0 e3                                      mov r1, #0x65
004a053c  14 00 80 e2                                      add r0, r0, #0x14
004a0540  03 20 94 e7                                      ldr r2, [r4, r3]
004a0544  00 30 a0 e3                                      mov r3, #0
004a0548  54 ff ff eb                                      bl #0x4a02a0
004a054c  51 02 fa eb                                      bl #0x320e98
004a0550  2c 3f 9f e5                                      ldr r3, [pc, #0xf2c]
004a0554  66 10 a0 e3                                      mov r1, #0x66
004a0558  14 00 80 e2                                      add r0, r0, #0x14
004a055c  03 20 94 e7                                      ldr r2, [r4, r3]
004a0560  00 30 a0 e3                                      mov r3, #0
004a0564  4d ff ff eb                                      bl #0x4a02a0
004a0568  4a 02 fa eb                                      bl #0x320e98
004a056c  14 3f 9f e5                                      ldr r3, [pc, #0xf14]
004a0570  68 10 a0 e3                                      mov r1, #0x68
004a0574  14 00 80 e2                                      add r0, r0, #0x14
004a0578  03 20 94 e7                                      ldr r2, [r4, r3]
004a057c  00 30 a0 e3                                      mov r3, #0
004a0580  46 ff ff eb                                      bl #0x4a02a0
004a0584  43 02 fa eb                                      bl #0x320e98
004a0588  fc 3e 9f e5                                      ldr r3, [pc, #0xefc]
004a058c  67 10 a0 e3                                      mov r1, #0x67
004a0590  14 00 80 e2                                      add r0, r0, #0x14
004a0594  03 20 94 e7                                      ldr r2, [r4, r3]
004a0598  00 30 a0 e3                                      mov r3, #0
004a059c  3f ff ff eb                                      bl #0x4a02a0
004a05a0  3c 02 fa eb                                      bl #0x320e98
004a05a4  e4 3e 9f e5                                      ldr r3, [pc, #0xee4]
004a05a8  c8 10 a0 e3                                      mov r1, #0xc8
004a05ac  14 00 80 e2                                      add r0, r0, #0x14
004a05b0  03 20 94 e7                                      ldr r2, [r4, r3]
004a05b4  00 30 a0 e3                                      mov r3, #0
004a05b8  38 ff ff eb                                      bl #0x4a02a0
004a05bc  35 02 fa eb                                      bl #0x320e98
004a05c0  cc 3e 9f e5                                      ldr r3, [pc, #0xecc]
004a05c4  14 00 80 e2                                      add r0, r0, #0x14
004a05c8  c9 10 a0 e3                                      mov r1, #0xc9
004a05cc  03 20 94 e7                                      ldr r2, [r4, r3]
004a05d0  00 30 a0 e3                                      mov r3, #0
004a05d4  31 ff ff eb                                      bl #0x4a02a0
004a05d8  2e 02 fa eb                                      bl #0x320e98
004a05dc  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a05e0  00 80 a0 e1                                      mov r8, r0
004a05e4  00 00 53 e3                                      cmp r3, #0
004a05e8  0c 00 00 0a                                      beq #0x4a0620
004a05ec  08 30 90 e5                                      ldr r3, [r0, #8]
004a05f0  00 00 53 e3                                      cmp r3, #0
004a05f4  03 00 00 1a                                      bne #0x4a0608
004a05f8  d1 01 00 ea                                      b #0x4a0d44
004a05fc  08 30 93 e5                                      ldr r3, [r3, #8]
004a0600  00 00 53 e3                                      cmp r3, #0
004a0604  ce 01 00 0a                                      beq #0x4a0d44
004a0608  00 20 93 e5                                      ldr r2, [r3]
004a060c  00 00 52 e3                                      cmp r2, #0
004a0610  f9 ff ff 1a                                      bne #0x4a05fc
004a0614  7c 2e 9f e5                                      ldr r2, [pc, #0xe7c]
004a0618  02 20 94 e7                                      ldr r2, [r4, r2]
004a061c  04 20 83 e5                                      str r2, [r3, #4]
004a0620  1c 02 fa eb                                      bl #0x320e98
004a0624  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a0628  00 80 a0 e1                                      mov r8, r0
004a062c  00 00 53 e3                                      cmp r3, #0
004a0630  0c 00 00 0a                                      beq #0x4a0668
004a0634  08 30 90 e5                                      ldr r3, [r0, #8]
004a0638  00 00 53 e3                                      cmp r3, #0
004a063c  03 00 00 1a                                      bne #0x4a0650
004a0640  ad 01 00 ea                                      b #0x4a0cfc
004a0644  08 30 93 e5                                      ldr r3, [r3, #8]
004a0648  00 00 53 e3                                      cmp r3, #0
004a064c  aa 01 00 0a                                      beq #0x4a0cfc
004a0650  00 20 93 e5                                      ldr r2, [r3]
004a0654  06 00 52 e3                                      cmp r2, #6
004a0658  f9 ff ff 1a                                      bne #0x4a0644
004a065c  38 2e 9f e5                                      ldr r2, [pc, #0xe38]
004a0660  02 20 94 e7                                      ldr r2, [r4, r2]
004a0664  04 20 83 e5                                      str r2, [r3, #4]
004a0668  0a 02 fa eb                                      bl #0x320e98
004a066c  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a0670  00 80 a0 e1                                      mov r8, r0
004a0674  00 00 53 e3                                      cmp r3, #0
004a0678  0c 00 00 0a                                      beq #0x4a06b0
004a067c  08 30 90 e5                                      ldr r3, [r0, #8]
004a0680  00 00 53 e3                                      cmp r3, #0
004a0684  03 00 00 1a                                      bne #0x4a0698
004a0688  89 01 00 ea                                      b #0x4a0cb4
004a068c  08 30 93 e5                                      ldr r3, [r3, #8]
004a0690  00 00 53 e3                                      cmp r3, #0
004a0694  86 01 00 0a                                      beq #0x4a0cb4
004a0698  00 20 93 e5                                      ldr r2, [r3]
004a069c  07 00 52 e3                                      cmp r2, #7
004a06a0  f9 ff ff 1a                                      bne #0x4a068c
004a06a4  f4 2d 9f e5                                      ldr r2, [pc, #0xdf4]
004a06a8  02 20 94 e7                                      ldr r2, [r4, r2]
004a06ac  04 20 83 e5                                      str r2, [r3, #4]
004a06b0  f8 01 fa eb                                      bl #0x320e98
004a06b4  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a06b8  00 80 a0 e1                                      mov r8, r0
004a06bc  00 00 53 e3                                      cmp r3, #0
004a06c0  0c 00 00 0a                                      beq #0x4a06f8
004a06c4  08 30 90 e5                                      ldr r3, [r0, #8]
004a06c8  00 00 53 e3                                      cmp r3, #0
004a06cc  03 00 00 1a                                      bne #0x4a06e0
004a06d0  f9 00 00 ea                                      b #0x4a0abc
004a06d4  08 30 93 e5                                      ldr r3, [r3, #8]
004a06d8  00 00 53 e3                                      cmp r3, #0
004a06dc  f6 00 00 0a                                      beq #0x4a0abc
004a06e0  00 20 93 e5                                      ldr r2, [r3]
004a06e4  08 00 52 e3                                      cmp r2, #8
004a06e8  f9 ff ff 1a                                      bne #0x4a06d4
004a06ec  b0 2d 9f e5                                      ldr r2, [pc, #0xdb0]
004a06f0  02 20 94 e7                                      ldr r2, [r4, r2]
004a06f4  04 20 83 e5                                      str r2, [r3, #4]
004a06f8  e6 01 fa eb                                      bl #0x320e98
004a06fc  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a0700  00 80 a0 e1                                      mov r8, r0
004a0704  00 00 53 e3                                      cmp r3, #0
004a0708  0c 00 00 0a                                      beq #0x4a0740
004a070c  08 30 90 e5                                      ldr r3, [r0, #8]
004a0710  00 00 53 e3                                      cmp r3, #0
004a0714  03 00 00 1a                                      bne #0x4a0728
004a0718  d5 00 00 ea                                      b #0x4a0a74
004a071c  08 30 93 e5                                      ldr r3, [r3, #8]
004a0720  00 00 53 e3                                      cmp r3, #0
004a0724  d2 00 00 0a                                      beq #0x4a0a74
004a0728  00 20 93 e5                                      ldr r2, [r3]
004a072c  09 00 52 e3                                      cmp r2, #9
004a0730  f9 ff ff 1a                                      bne #0x4a071c
004a0734  6c 2d 9f e5                                      ldr r2, [pc, #0xd6c]
004a0738  02 20 94 e7                                      ldr r2, [r4, r2]
004a073c  04 20 83 e5                                      str r2, [r3, #4]
004a0740  d4 01 fa eb                                      bl #0x320e98
004a0744  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a0748  00 80 a0 e1                                      mov r8, r0
004a074c  00 00 53 e3                                      cmp r3, #0
004a0750  0c 00 00 0a                                      beq #0x4a0788
004a0754  08 30 90 e5                                      ldr r3, [r0, #8]
004a0758  00 00 53 e3                                      cmp r3, #0
004a075c  03 00 00 1a                                      bne #0x4a0770
004a0760  be 01 00 ea                                      b #0x4a0e60
004a0764  08 30 93 e5                                      ldr r3, [r3, #8]
004a0768  00 00 53 e3                                      cmp r3, #0
004a076c  bb 01 00 0a                                      beq #0x4a0e60
004a0770  00 20 93 e5                                      ldr r2, [r3]
004a0774  02 00 52 e3                                      cmp r2, #2
004a0778  f9 ff ff 1a                                      bne #0x4a0764
004a077c  28 2d 9f e5                                      ldr r2, [pc, #0xd28]
004a0780  02 20 94 e7                                      ldr r2, [r4, r2]
004a0784  04 20 83 e5                                      str r2, [r3, #4]
004a0788  c2 01 fa eb                                      bl #0x320e98
004a078c  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a0790  00 80 a0 e1                                      mov r8, r0
004a0794  00 00 53 e3                                      cmp r3, #0
004a0798  0c 00 00 0a                                      beq #0x4a07d0
004a079c  08 30 90 e5                                      ldr r3, [r0, #8]
004a07a0  00 00 53 e3                                      cmp r3, #0
004a07a4  03 00 00 1a                                      bne #0x4a07b8
004a07a8  9a 01 00 ea                                      b #0x4a0e18
004a07ac  08 30 93 e5                                      ldr r3, [r3, #8]
004a07b0  00 00 53 e3                                      cmp r3, #0
004a07b4  97 01 00 0a                                      beq #0x4a0e18
004a07b8  00 20 93 e5                                      ldr r2, [r3]
004a07bc  03 00 52 e3                                      cmp r2, #3
004a07c0  f9 ff ff 1a                                      bne #0x4a07ac
004a07c4  e4 2c 9f e5                                      ldr r2, [pc, #0xce4]
004a07c8  02 20 94 e7                                      ldr r2, [r4, r2]
004a07cc  04 20 83 e5                                      str r2, [r3, #4]
004a07d0  b0 01 fa eb                                      bl #0x320e98
004a07d4  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a07d8  00 80 a0 e1                                      mov r8, r0
004a07dc  00 00 53 e3                                      cmp r3, #0
004a07e0  0c 00 00 0a                                      beq #0x4a0818
004a07e4  08 30 90 e5                                      ldr r3, [r0, #8]
004a07e8  00 00 53 e3                                      cmp r3, #0
004a07ec  03 00 00 1a                                      bne #0x4a0800
004a07f0  76 01 00 ea                                      b #0x4a0dd0
004a07f4  08 30 93 e5                                      ldr r3, [r3, #8]
004a07f8  00 00 53 e3                                      cmp r3, #0
004a07fc  73 01 00 0a                                      beq #0x4a0dd0
004a0800  00 20 93 e5                                      ldr r2, [r3]
004a0804  04 00 52 e3                                      cmp r2, #4
004a0808  f9 ff ff 1a                                      bne #0x4a07f4
004a080c  a0 2c 9f e5                                      ldr r2, [pc, #0xca0]
004a0810  02 20 94 e7                                      ldr r2, [r4, r2]
004a0814  04 20 83 e5                                      str r2, [r3, #4]
004a0818  9e 01 fa eb                                      bl #0x320e98
004a081c  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a0820  00 80 a0 e1                                      mov r8, r0
004a0824  00 00 53 e3                                      cmp r3, #0
004a0828  0c 00 00 0a                                      beq #0x4a0860
004a082c  08 30 90 e5                                      ldr r3, [r0, #8]
004a0830  00 00 53 e3                                      cmp r3, #0
004a0834  03 00 00 1a                                      bne #0x4a0848
004a0838  52 01 00 ea                                      b #0x4a0d88
004a083c  08 30 93 e5                                      ldr r3, [r3, #8]
004a0840  00 00 53 e3                                      cmp r3, #0
004a0844  4f 01 00 0a                                      beq #0x4a0d88
004a0848  00 20 93 e5                                      ldr r2, [r3]
004a084c  05 00 52 e3                                      cmp r2, #5
004a0850  f9 ff ff 1a                                      bne #0x4a083c
004a0854  5c 2c 9f e5                                      ldr r2, [pc, #0xc5c]
004a0858  02 20 94 e7                                      ldr r2, [r4, r2]
004a085c  04 20 83 e5                                      str r2, [r3, #4]
004a0860  8c 01 fa eb                                      bl #0x320e98
004a0864  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a0868  00 80 a0 e1                                      mov r8, r0
004a086c  00 00 53 e3                                      cmp r3, #0
004a0870  0c 00 00 0a                                      beq #0x4a08a8
004a0874  08 30 90 e5                                      ldr r3, [r0, #8]
004a0878  00 00 53 e3                                      cmp r3, #0
004a087c  03 00 00 1a                                      bne #0x4a0890
004a0880  f9 00 00 ea                                      b #0x4a0c6c
004a0884  08 30 93 e5                                      ldr r3, [r3, #8]
004a0888  00 00 53 e3                                      cmp r3, #0
004a088c  f6 00 00 0a                                      beq #0x4a0c6c
004a0890  00 20 93 e5                                      ldr r2, [r3]
004a0894  0a 00 52 e3                                      cmp r2, #0xa
004a0898  f9 ff ff 1a                                      bne #0x4a0884
004a089c  18 2c 9f e5                                      ldr r2, [pc, #0xc18]
004a08a0  02 20 94 e7                                      ldr r2, [r4, r2]
004a08a4  04 20 83 e5                                      str r2, [r3, #4]
004a08a8  7a 01 fa eb                                      bl #0x320e98
004a08ac  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a08b0  00 80 a0 e1                                      mov r8, r0
004a08b4  00 00 53 e3                                      cmp r3, #0
004a08b8  0c 00 00 0a                                      beq #0x4a08f0
004a08bc  08 30 90 e5                                      ldr r3, [r0, #8]
004a08c0  00 00 53 e3                                      cmp r3, #0
004a08c4  03 00 00 1a                                      bne #0x4a08d8
004a08c8  d5 00 00 ea                                      b #0x4a0c24
004a08cc  08 30 93 e5                                      ldr r3, [r3, #8]
004a08d0  00 00 53 e3                                      cmp r3, #0
004a08d4  d2 00 00 0a                                      beq #0x4a0c24
004a08d8  00 20 93 e5                                      ldr r2, [r3]
004a08dc  0b 00 52 e3                                      cmp r2, #0xb
004a08e0  f9 ff ff 1a                                      bne #0x4a08cc
004a08e4  d4 2b 9f e5                                      ldr r2, [pc, #0xbd4]
004a08e8  02 20 94 e7                                      ldr r2, [r4, r2]
004a08ec  04 20 83 e5                                      str r2, [r3, #4]
004a08f0  68 01 fa eb                                      bl #0x320e98
004a08f4  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a08f8  00 80 a0 e1                                      mov r8, r0
004a08fc  00 00 53 e3                                      cmp r3, #0
004a0900  0c 00 00 0a                                      beq #0x4a0938
004a0904  08 30 90 e5                                      ldr r3, [r0, #8]
004a0908  00 00 53 e3                                      cmp r3, #0
004a090c  03 00 00 1a                                      bne #0x4a0920
004a0910  b1 00 00 ea                                      b #0x4a0bdc
004a0914  08 30 93 e5                                      ldr r3, [r3, #8]
004a0918  00 00 53 e3                                      cmp r3, #0
004a091c  ae 00 00 0a                                      beq #0x4a0bdc
004a0920  00 20 93 e5                                      ldr r2, [r3]
004a0924  0c 00 52 e3                                      cmp r2, #0xc
004a0928  f9 ff ff 1a                                      bne #0x4a0914
004a092c  90 2b 9f e5                                      ldr r2, [pc, #0xb90]
004a0930  02 20 94 e7                                      ldr r2, [r4, r2]
004a0934  04 20 83 e5                                      str r2, [r3, #4]
004a0938  56 01 fa eb                                      bl #0x320e98
004a093c  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a0940  00 80 a0 e1                                      mov r8, r0
004a0944  00 00 53 e3                                      cmp r3, #0
004a0948  0c 00 00 0a                                      beq #0x4a0980
004a094c  08 30 90 e5                                      ldr r3, [r0, #8]
004a0950  00 00 53 e3                                      cmp r3, #0
004a0954  03 00 00 1a                                      bne #0x4a0968
004a0958  8d 00 00 ea                                      b #0x4a0b94
004a095c  08 30 93 e5                                      ldr r3, [r3, #8]
004a0960  00 00 53 e3                                      cmp r3, #0
004a0964  8a 00 00 0a                                      beq #0x4a0b94
004a0968  00 20 93 e5                                      ldr r2, [r3]
004a096c  0d 00 52 e3                                      cmp r2, #0xd
004a0970  f9 ff ff 1a                                      bne #0x4a095c
004a0974  4c 2b 9f e5                                      ldr r2, [pc, #0xb4c]
004a0978  02 20 94 e7                                      ldr r2, [r4, r2]
004a097c  04 20 83 e5                                      str r2, [r3, #4]
004a0980  44 01 fa eb                                      bl #0x320e98
004a0984  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a0988  00 80 a0 e1                                      mov r8, r0
004a098c  00 00 53 e3                                      cmp r3, #0
004a0990  0c 00 00 0a                                      beq #0x4a09c8
004a0994  08 30 90 e5                                      ldr r3, [r0, #8]
004a0998  00 00 53 e3                                      cmp r3, #0
004a099c  03 00 00 1a                                      bne #0x4a09b0
004a09a0  69 00 00 ea                                      b #0x4a0b4c
004a09a4  08 30 93 e5                                      ldr r3, [r3, #8]
004a09a8  00 00 53 e3                                      cmp r3, #0
004a09ac  66 00 00 0a                                      beq #0x4a0b4c
004a09b0  00 20 93 e5                                      ldr r2, [r3]
004a09b4  0e 00 52 e3                                      cmp r2, #0xe
004a09b8  f9 ff ff 1a                                      bne #0x4a09a4
004a09bc  08 2b 9f e5                                      ldr r2, [pc, #0xb08]
004a09c0  02 20 94 e7                                      ldr r2, [r4, r2]
004a09c4  04 20 83 e5                                      str r2, [r3, #4]
004a09c8  32 01 fa eb                                      bl #0x320e98
004a09cc  04 30 d0 e5                                      ldrb r3, [r0, #4]
004a09d0  00 80 a0 e1                                      mov r8, r0
004a09d4  00 00 53 e3                                      cmp r3, #0
004a09d8  0c 00 00 0a                                      beq #0x4a0a10
004a09dc  08 30 90 e5                                      ldr r3, [r0, #8]
004a09e0  00 00 53 e3                                      cmp r3, #0
004a09e4  03 00 00 1a                                      bne #0x4a09f8
004a09e8  45 00 00 ea                                      b #0x4a0b04
004a09ec  08 30 93 e5                                      ldr r3, [r3, #8]
004a09f0  00 00 53 e3                                      cmp r3, #0
004a09f4  42 00 00 0a                                      beq #0x4a0b04
004a09f8  00 20 93 e5                                      ldr r2, [r3]
004a09fc  0f 00 52 e3                                      cmp r2, #0xf
004a0a00  f9 ff ff 1a                                      bne #0x4a09ec
004a0a04  c4 2a 9f e5                                      ldr r2, [pc, #0xac4]
004a0a08  02 20 94 e7                                      ldr r2, [r4, r2]
004a0a0c  04 20 83 e5                                      str r2, [r3, #4]
004a0a10  5f 73 0d eb                                      bl #0x7fd794
004a0a14  49 11 0e eb                                      bl #0x824f40
004a0a18  5d 73 0d eb                                      bl #0x7fd794
004a0a1c  05 80 d0 e5                                      ldrb r8, [r0, #5]
004a0a20  00 00 58 e3                                      cmp r8, #0
004a0a24  07 00 00 1a                                      bne #0x4a0a48
004a0a28  02 00 56 e3                                      cmp r6, #2
004a0a2c  6c 02 00 0a                                      beq #0x4a13e4
004a0a30  01 00 56 e3                                      cmp r6, #1
004a0a34  cd 01 00 0a                                      beq #0x4a1170
004a0a38  03 00 56 e3                                      cmp r6, #3
004a0a3c  e5 01 00 0a                                      beq #0x4a11d8
004a0a40  04 00 56 e3                                      cmp r6, #4
004a0a44  17 01 00 0a                                      beq #0x4a0ea8
004a0a48  12 01 fa eb                                      bl #0x320e98
004a0a4c  05 30 94 e7                                      ldr r3, [r4, r5]
004a0a50  64 20 a0 e3                                      mov r2, #0x64
004a0a54  14 20 80 e5                                      str r2, [r0, #0x14]
004a0a58  dc 28 9d e5                                      ldr r2, [sp, #0x8dc]
004a0a5c  00 30 93 e5                                      ldr r3, [r3]
004a0a60  03 00 52 e1                                      cmp r2, r3
004a0a64  63 03 00 1a                                      bne #0x4a17f8
004a0a68  e4 d0 8d e2                                      add sp, sp, #0xe4
004a0a6c  02 db 8d e2                                      add sp, sp, #0x800
004a0a70  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004a0a74  10 00 a0 e3                                      mov r0, #0x10
004a0a78  1d b7 f9 eb                                      bl #0x30e6f4
004a0a7c  00 00 50 e3                                      cmp r0, #0
004a0a80  2e ff ff 0a                                      beq #0x4a0740
004a0a84  1c 3a 9f e5                                      ldr r3, [pc, #0xa1c]
004a0a88  09 20 a0 e3                                      mov r2, #9
004a0a8c  00 20 80 e5                                      str r2, [r0]
004a0a90  03 30 94 e7                                      ldr r3, [r4, r3]
004a0a94  00 20 a0 e3                                      mov r2, #0
004a0a98  08 20 80 e5                                      str r2, [r0, #8]
004a0a9c  04 30 80 e5                                      str r3, [r0, #4]
004a0aa0  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0aa4  08 30 80 e2                                      add r3, r0, #8
004a0aa8  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0aac  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0ab0  00 00 82 e5                                      str r0, [r2]
004a0ab4  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0ab8  20 ff ff ea                                      b #0x4a0740
004a0abc  10 00 a0 e3                                      mov r0, #0x10
004a0ac0  0b b7 f9 eb                                      bl #0x30e6f4
004a0ac4  00 00 50 e3                                      cmp r0, #0
004a0ac8  0a ff ff 0a                                      beq #0x4a06f8
004a0acc  d0 39 9f e5                                      ldr r3, [pc, #0x9d0]
004a0ad0  08 20 a0 e3                                      mov r2, #8
004a0ad4  00 20 80 e5                                      str r2, [r0]
004a0ad8  03 30 94 e7                                      ldr r3, [r4, r3]
004a0adc  00 20 a0 e3                                      mov r2, #0
004a0ae0  08 20 80 e5                                      str r2, [r0, #8]
004a0ae4  04 30 80 e5                                      str r3, [r0, #4]
004a0ae8  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0aec  08 30 80 e2                                      add r3, r0, #8
004a0af0  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0af4  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0af8  00 00 82 e5                                      str r0, [r2]
004a0afc  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0b00  fc fe ff ea                                      b #0x4a06f8
004a0b04  10 00 a0 e3                                      mov r0, #0x10
004a0b08  f9 b6 f9 eb                                      bl #0x30e6f4
004a0b0c  00 00 50 e3                                      cmp r0, #0
004a0b10  be ff ff 0a                                      beq #0x4a0a10
004a0b14  b4 39 9f e5                                      ldr r3, [pc, #0x9b4]
004a0b18  0f 20 a0 e3                                      mov r2, #0xf
004a0b1c  00 20 80 e5                                      str r2, [r0]
004a0b20  03 30 94 e7                                      ldr r3, [r4, r3]
004a0b24  00 20 a0 e3                                      mov r2, #0
004a0b28  08 20 80 e5                                      str r2, [r0, #8]
004a0b2c  04 30 80 e5                                      str r3, [r0, #4]
004a0b30  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0b34  08 30 80 e2                                      add r3, r0, #8
004a0b38  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0b3c  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0b40  00 00 82 e5                                      str r0, [r2]
004a0b44  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0b48  b0 ff ff ea                                      b #0x4a0a10
004a0b4c  10 00 a0 e3                                      mov r0, #0x10
004a0b50  e7 b6 f9 eb                                      bl #0x30e6f4
004a0b54  00 00 50 e3                                      cmp r0, #0
004a0b58  9a ff ff 0a                                      beq #0x4a09c8
004a0b5c  68 39 9f e5                                      ldr r3, [pc, #0x968]
004a0b60  0e 20 a0 e3                                      mov r2, #0xe
004a0b64  00 20 80 e5                                      str r2, [r0]
004a0b68  03 30 94 e7                                      ldr r3, [r4, r3]
004a0b6c  00 20 a0 e3                                      mov r2, #0
004a0b70  08 20 80 e5                                      str r2, [r0, #8]
004a0b74  04 30 80 e5                                      str r3, [r0, #4]
004a0b78  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0b7c  08 30 80 e2                                      add r3, r0, #8
004a0b80  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0b84  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0b88  00 00 82 e5                                      str r0, [r2]
004a0b8c  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0b90  8c ff ff ea                                      b #0x4a09c8
004a0b94  10 00 a0 e3                                      mov r0, #0x10
004a0b98  d5 b6 f9 eb                                      bl #0x30e6f4
004a0b9c  00 00 50 e3                                      cmp r0, #0
004a0ba0  76 ff ff 0a                                      beq #0x4a0980
004a0ba4  1c 39 9f e5                                      ldr r3, [pc, #0x91c]
004a0ba8  0d 20 a0 e3                                      mov r2, #0xd
004a0bac  00 20 80 e5                                      str r2, [r0]
004a0bb0  03 30 94 e7                                      ldr r3, [r4, r3]
004a0bb4  00 20 a0 e3                                      mov r2, #0
004a0bb8  08 20 80 e5                                      str r2, [r0, #8]
004a0bbc  04 30 80 e5                                      str r3, [r0, #4]
004a0bc0  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0bc4  08 30 80 e2                                      add r3, r0, #8
004a0bc8  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0bcc  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0bd0  00 00 82 e5                                      str r0, [r2]
004a0bd4  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0bd8  68 ff ff ea                                      b #0x4a0980
004a0bdc  10 00 a0 e3                                      mov r0, #0x10
004a0be0  c3 b6 f9 eb                                      bl #0x30e6f4
004a0be4  00 00 50 e3                                      cmp r0, #0
004a0be8  52 ff ff 0a                                      beq #0x4a0938
004a0bec  d0 38 9f e5                                      ldr r3, [pc, #0x8d0]
004a0bf0  0c 20 a0 e3                                      mov r2, #0xc
004a0bf4  00 20 80 e5                                      str r2, [r0]
004a0bf8  03 30 94 e7                                      ldr r3, [r4, r3]
004a0bfc  00 20 a0 e3                                      mov r2, #0
004a0c00  08 20 80 e5                                      str r2, [r0, #8]
004a0c04  04 30 80 e5                                      str r3, [r0, #4]
004a0c08  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0c0c  08 30 80 e2                                      add r3, r0, #8
004a0c10  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0c14  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0c18  00 00 82 e5                                      str r0, [r2]
004a0c1c  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0c20  44 ff ff ea                                      b #0x4a0938
004a0c24  10 00 a0 e3                                      mov r0, #0x10
004a0c28  b1 b6 f9 eb                                      bl #0x30e6f4
004a0c2c  00 00 50 e3                                      cmp r0, #0
004a0c30  2e ff ff 0a                                      beq #0x4a08f0
004a0c34  84 38 9f e5                                      ldr r3, [pc, #0x884]
004a0c38  0b 20 a0 e3                                      mov r2, #0xb
004a0c3c  00 20 80 e5                                      str r2, [r0]
004a0c40  03 30 94 e7                                      ldr r3, [r4, r3]
004a0c44  00 20 a0 e3                                      mov r2, #0
004a0c48  08 20 80 e5                                      str r2, [r0, #8]
004a0c4c  04 30 80 e5                                      str r3, [r0, #4]
004a0c50  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0c54  08 30 80 e2                                      add r3, r0, #8
004a0c58  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0c5c  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0c60  00 00 82 e5                                      str r0, [r2]
004a0c64  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0c68  20 ff ff ea                                      b #0x4a08f0
004a0c6c  10 00 a0 e3                                      mov r0, #0x10
004a0c70  9f b6 f9 eb                                      bl #0x30e6f4
004a0c74  00 00 50 e3                                      cmp r0, #0
004a0c78  0a ff ff 0a                                      beq #0x4a08a8
004a0c7c  38 38 9f e5                                      ldr r3, [pc, #0x838]
004a0c80  0a 20 a0 e3                                      mov r2, #0xa
004a0c84  00 20 80 e5                                      str r2, [r0]
004a0c88  03 30 94 e7                                      ldr r3, [r4, r3]
004a0c8c  00 20 a0 e3                                      mov r2, #0
004a0c90  08 20 80 e5                                      str r2, [r0, #8]
004a0c94  04 30 80 e5                                      str r3, [r0, #4]
004a0c98  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0c9c  08 30 80 e2                                      add r3, r0, #8
004a0ca0  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0ca4  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0ca8  00 00 82 e5                                      str r0, [r2]
004a0cac  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0cb0  fc fe ff ea                                      b #0x4a08a8
004a0cb4  10 00 a0 e3                                      mov r0, #0x10
004a0cb8  8d b6 f9 eb                                      bl #0x30e6f4
004a0cbc  00 00 50 e3                                      cmp r0, #0
004a0cc0  7a fe ff 0a                                      beq #0x4a06b0
004a0cc4  d4 37 9f e5                                      ldr r3, [pc, #0x7d4]
004a0cc8  07 20 a0 e3                                      mov r2, #7
004a0ccc  00 20 80 e5                                      str r2, [r0]
004a0cd0  03 30 94 e7                                      ldr r3, [r4, r3]
004a0cd4  00 20 a0 e3                                      mov r2, #0
004a0cd8  08 20 80 e5                                      str r2, [r0, #8]
004a0cdc  04 30 80 e5                                      str r3, [r0, #4]
004a0ce0  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0ce4  08 30 80 e2                                      add r3, r0, #8
004a0ce8  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0cec  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0cf0  00 00 82 e5                                      str r0, [r2]
004a0cf4  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0cf8  6c fe ff ea                                      b #0x4a06b0
004a0cfc  10 00 a0 e3                                      mov r0, #0x10
004a0d00  7b b6 f9 eb                                      bl #0x30e6f4
004a0d04  00 00 50 e3                                      cmp r0, #0
004a0d08  56 fe ff 0a                                      beq #0x4a0668
004a0d0c  88 37 9f e5                                      ldr r3, [pc, #0x788]
004a0d10  06 20 a0 e3                                      mov r2, #6
004a0d14  00 20 80 e5                                      str r2, [r0]
004a0d18  03 30 94 e7                                      ldr r3, [r4, r3]
004a0d1c  00 20 a0 e3                                      mov r2, #0
004a0d20  08 20 80 e5                                      str r2, [r0, #8]
004a0d24  04 30 80 e5                                      str r3, [r0, #4]
004a0d28  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0d2c  08 30 80 e2                                      add r3, r0, #8
004a0d30  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0d34  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0d38  00 00 82 e5                                      str r0, [r2]
004a0d3c  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0d40  48 fe ff ea                                      b #0x4a0668
004a0d44  10 00 a0 e3                                      mov r0, #0x10
004a0d48  69 b6 f9 eb                                      bl #0x30e6f4
004a0d4c  00 00 50 e3                                      cmp r0, #0
004a0d50  32 fe ff 0a                                      beq #0x4a0620
004a0d54  3c 27 9f e5                                      ldr r2, [pc, #0x73c]
004a0d58  00 30 a0 e3                                      mov r3, #0
004a0d5c  08 30 80 e5                                      str r3, [r0, #8]
004a0d60  02 20 94 e7                                      ldr r2, [r4, r2]
004a0d64  00 30 80 e5                                      str r3, [r0]
004a0d68  08 30 80 e2                                      add r3, r0, #8
004a0d6c  04 20 80 e5                                      str r2, [r0, #4]
004a0d70  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0d74  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0d78  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0d7c  00 00 82 e5                                      str r0, [r2]
004a0d80  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0d84  25 fe ff ea                                      b #0x4a0620
004a0d88  10 00 a0 e3                                      mov r0, #0x10
004a0d8c  58 b6 f9 eb                                      bl #0x30e6f4
004a0d90  00 00 50 e3                                      cmp r0, #0
004a0d94  b1 fe ff 0a                                      beq #0x4a0860
004a0d98  18 37 9f e5                                      ldr r3, [pc, #0x718]
004a0d9c  05 20 a0 e3                                      mov r2, #5
004a0da0  00 20 80 e5                                      str r2, [r0]
004a0da4  03 30 94 e7                                      ldr r3, [r4, r3]
004a0da8  00 20 a0 e3                                      mov r2, #0
004a0dac  08 20 80 e5                                      str r2, [r0, #8]
004a0db0  04 30 80 e5                                      str r3, [r0, #4]
004a0db4  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0db8  08 30 80 e2                                      add r3, r0, #8
004a0dbc  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0dc0  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0dc4  00 00 82 e5                                      str r0, [r2]
004a0dc8  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0dcc  a3 fe ff ea                                      b #0x4a0860
004a0dd0  10 00 a0 e3                                      mov r0, #0x10
004a0dd4  46 b6 f9 eb                                      bl #0x30e6f4
004a0dd8  00 00 50 e3                                      cmp r0, #0
004a0ddc  8d fe ff 0a                                      beq #0x4a0818
004a0de0  cc 36 9f e5                                      ldr r3, [pc, #0x6cc]
004a0de4  04 20 a0 e3                                      mov r2, #4
004a0de8  00 20 80 e5                                      str r2, [r0]
004a0dec  03 30 94 e7                                      ldr r3, [r4, r3]
004a0df0  00 20 a0 e3                                      mov r2, #0
004a0df4  08 20 80 e5                                      str r2, [r0, #8]
004a0df8  04 30 80 e5                                      str r3, [r0, #4]
004a0dfc  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0e00  08 30 80 e2                                      add r3, r0, #8
004a0e04  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0e08  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0e0c  00 00 82 e5                                      str r0, [r2]
004a0e10  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0e14  7f fe ff ea                                      b #0x4a0818
004a0e18  10 00 a0 e3                                      mov r0, #0x10
004a0e1c  34 b6 f9 eb                                      bl #0x30e6f4
004a0e20  00 00 50 e3                                      cmp r0, #0
004a0e24  69 fe ff 0a                                      beq #0x4a07d0
004a0e28  80 36 9f e5                                      ldr r3, [pc, #0x680]
004a0e2c  03 20 a0 e3                                      mov r2, #3
004a0e30  00 20 80 e5                                      str r2, [r0]
004a0e34  03 30 94 e7                                      ldr r3, [r4, r3]
004a0e38  00 20 a0 e3                                      mov r2, #0
004a0e3c  08 20 80 e5                                      str r2, [r0, #8]
004a0e40  04 30 80 e5                                      str r3, [r0, #4]
004a0e44  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0e48  08 30 80 e2                                      add r3, r0, #8
004a0e4c  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0e50  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0e54  00 00 82 e5                                      str r0, [r2]
004a0e58  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0e5c  5b fe ff ea                                      b #0x4a07d0
004a0e60  10 00 a0 e3                                      mov r0, #0x10
004a0e64  22 b6 f9 eb                                      bl #0x30e6f4
004a0e68  00 00 50 e3                                      cmp r0, #0
004a0e6c  45 fe ff 0a                                      beq #0x4a0788
004a0e70  34 36 9f e5                                      ldr r3, [pc, #0x634]
004a0e74  02 20 a0 e3                                      mov r2, #2
004a0e78  00 20 80 e5                                      str r2, [r0]
004a0e7c  03 30 94 e7                                      ldr r3, [r4, r3]
004a0e80  00 20 a0 e3                                      mov r2, #0
004a0e84  08 20 80 e5                                      str r2, [r0, #8]
004a0e88  04 30 80 e5                                      str r3, [r0, #4]
004a0e8c  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0e90  08 30 80 e2                                      add r3, r0, #8
004a0e94  0c 20 80 e5                                      str r2, [r0, #0xc]
004a0e98  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004a0e9c  00 00 82 e5                                      str r0, [r2]
004a0ea0  0c 30 88 e5                                      str r3, [r8, #0xc]
004a0ea4  37 fe ff ea                                      b #0x4a0788
004a0ea8  24 b6 9f e5                                      ldr fp, [pc, #0x624]
004a0eac  36 80 0d eb                                      bl #0x800f8c
004a0eb0  35 77 0d eb                                      bl #0x7feb8c
004a0eb4  34 60 87 e5                                      str r6, [r7, #0x34]
004a0eb8  06 00 a0 e1                                      mov r0, r6
004a0ebc  7f 75 0d eb                                      bl #0x7fe4c0
004a0ec0  0b 80 94 e7                                      ldr r8, [r4, fp]
004a0ec4  21 7d 8d e2                                      add r7, sp, #0x840
004a0ec8  0c 70 87 e2                                      add r7, r7, #0xc
004a0ecc  08 00 a0 e1                                      mov r0, r8
004a0ed0  6c 5a fa eb                                      bl #0x337888
004a0ed4  fc 15 9f e5                                      ldr r1, [pc, #0x5fc]
004a0ed8  3d 6e 8d e2                                      add r6, sp, #0x3d0
004a0edc  04 20 46 e2                                      sub r2, r6, #4
004a0ee0  01 10 8f e0                                      add r1, pc, r1
004a0ee4  07 00 a0 e1                                      mov r0, r7
004a0ee8  7f cc f9 eb                                      bl #0x3140ec
004a0eec  07 10 a0 e1                                      mov r1, r7
004a0ef0  08 00 a0 e1                                      mov r0, r8
004a0ef4  e3 5a fa eb                                      bl #0x337a88
004a0ef8  00 a0 a0 e1                                      mov sl, r0
004a0efc  07 00 a0 e1                                      mov r0, r7
004a0f00  d3 dc f9 eb                                      bl #0x318254
004a0f04  00 00 5a e3                                      cmp sl, #0
004a0f08  49 01 00 1a                                      bne #0x4a1434
004a0f0c  e8 25 9f e5                                      ldr r2, [pc, #0x5e8]
004a0f10  79 8e 8d e2                                      add r8, sp, #0x790
004a0f14  04 80 88 e2                                      add r8, r8, #4
004a0f18  81 7e 8d e2                                      add r7, sp, #0x810
004a0f1c  0a 30 a0 e1                                      mov r3, sl
004a0f20  02 00 94 e7                                      ldr r0, [r4, r2]
004a0f24  08 10 a0 e1                                      mov r1, r8
004a0f28  0a 20 a0 e3                                      mov r2, #0xa
004a0f2c  0c 70 87 e2                                      add r7, r7, #0xc
004a0f30  de f9 f9 eb                                      bl #0x31f6b0
004a0f34  08 10 a0 e1                                      mov r1, r8
004a0f38  0c 20 46 e2                                      sub r2, r6, #0xc
004a0f3c  07 00 a0 e1                                      mov r0, r7
004a0f40  69 cc f9 eb                                      bl #0x3140ec
004a0f44  ac 35 9f e5                                      ldr r3, [pc, #0x5ac]
004a0f48  03 00 94 e7                                      ldr r0, [r4, r3]
004a0f4c  00 00 57 e1                                      cmp r7, r0
004a0f50  02 00 00 0a                                      beq #0x4a0f60
004a0f54  30 18 9d e5                                      ldr r1, [sp, #0x830]
004a0f58  2c 28 9d e5                                      ldr r2, [sp, #0x82c]
004a0f5c  9f be f9 eb                                      bl #0x3109e0
004a0f60  07 00 a0 e1                                      mov r0, r7
004a0f64  ba dc f9 eb                                      bl #0x318254
004a0f68  07 80 0d eb                                      bl #0x800f8c
004a0f6c  65 2b fa eb                                      bl #0x32bd08
004a0f70  93 e0 ff eb                                      bl #0x4991c4
004a0f74  60 95 9f e5                                      ldr sb, [pc, #0x560]
004a0f78  3b 7e 8d e2                                      add r7, sp, #0x3b0
004a0f7c  09 60 94 e7                                      ldr r6, [r4, sb]
004a0f80  04 00 86 e5                                      str r0, [r6, #4]
004a0f84  00 80 0d eb                                      bl #0x800f8c
004a0f88  5e 2b fa eb                                      bl #0x32bd08
004a0f8c  8e e0 ff eb                                      bl #0x4991cc
004a0f90  08 00 86 e5                                      str r0, [r6, #8]
004a0f94  fc 7f 0d eb                                      bl #0x800f8c
004a0f98  5a 2b fa eb                                      bl #0x32bd08
004a0f9c  e0 e0 ff eb                                      bl #0x499324
004a0fa0  00 00 c6 e5                                      strb r0, [r6]
004a0fa4  f8 7f 0d eb                                      bl #0x800f8c
004a0fa8  56 2b fa eb                                      bl #0x32bd08
004a0fac  88 e0 ff eb                                      bl #0x4991d4
004a0fb0  0c 00 86 e5                                      str r0, [r6, #0xc]
004a0fb4  f4 7f 0d eb                                      bl #0x800f8c
004a0fb8  52 2b fa eb                                      bl #0x32bd08
004a0fbc  10 a0 86 e2                                      add sl, r6, #0x10
004a0fc0  00 10 a0 e1                                      mov r1, r0
004a0fc4  07 00 a0 e1                                      mov r0, r7
004a0fc8  06 e4 ff eb                                      bl #0x499fe8
004a0fcc  0a 00 57 e1                                      cmp r7, sl
004a0fd0  3d 00 00 0a                                      beq #0x4a10cc
004a0fd4  10 60 96 e5                                      ldr r6, [r6, #0x10]
004a0fd8  04 20 a0 e1                                      mov r2, r4
004a0fdc  b0 33 9d e5                                      ldr r3, [sp, #0x3b0]
004a0fe0  06 40 a0 e1                                      mov r4, r6
004a0fe4  0a 00 54 e1                                      cmp r4, sl
004a0fe8  05 80 a0 e1                                      mov r8, r5
004a0fec  02 60 a0 e1                                      mov r6, r2
004a0ff0  0d 00 00 0a                                      beq #0x4a102c
004a0ff4  07 00 53 e1                                      cmp r3, r7
004a0ff8  58 01 00 0a                                      beq #0x4a1560
004a0ffc  04 00 a0 e1                                      mov r0, r4
004a1000  03 20 a0 e1                                      mov r2, r3
004a1004  08 40 90 e4                                      ldr r4, [r0], #8
004a1008  08 50 92 e4                                      ldr r5, [r2], #8
004a100c  02 00 50 e1                                      cmp r0, r2
004a1010  02 00 00 0a                                      beq #0x4a1020
004a1014  18 20 93 e5                                      ldr r2, [r3, #0x18]
004a1018  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
004a101c  6f be f9 eb                                      bl #0x3109e0
004a1020  0a 00 54 e1                                      cmp r4, sl
004a1024  05 30 a0 e1                                      mov r3, r5
004a1028  f1 ff ff 1a                                      bne #0x4a0ff4
004a102c  07 00 53 e1                                      cmp r3, r7
004a1030  06 40 a0 e1                                      mov r4, r6
004a1034  08 50 a0 e1                                      mov r5, r8
004a1038  23 00 00 0a                                      beq #0x4a10cc
004a103c  20 60 8d e2                                      add r6, sp, #0x20
004a1040  08 60 46 e2                                      sub r6, r6, #8
004a1044  18 60 8d e5                                      str r6, [sp, #0x18]
004a1048  1c 60 8d e5                                      str r6, [sp, #0x1c]
004a104c  03 80 a0 e1                                      mov r8, r3
004a1050  08 10 88 e2                                      add r1, r8, #8
004a1054  06 00 a0 e1                                      mov r0, r6
004a1058  45 e2 ff eb                                      bl #0x499974
004a105c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
004a1060  00 60 80 e5                                      str r6, [r0]
004a1064  04 30 80 e5                                      str r3, [r0, #4]
004a1068  00 00 83 e5                                      str r0, [r3]
004a106c  1c 00 8d e5                                      str r0, [sp, #0x1c]
004a1070  00 80 98 e5                                      ldr r8, [r8]
004a1074  07 00 58 e1                                      cmp r8, r7
004a1078  f4 ff ff 1a                                      bne #0x4a1050
004a107c  18 30 9d e5                                      ldr r3, [sp, #0x18]
004a1080  06 00 53 e1                                      cmp r3, r6
004a1084  0e 00 00 0a                                      beq #0x4a10c4
004a1088  09 20 94 e7                                      ldr r2, [r4, sb]
004a108c  10 10 82 e2                                      add r1, r2, #0x10
004a1090  01 00 56 e1                                      cmp r6, r1
004a1094  0a 00 00 0a                                      beq #0x4a10c4
004a1098  00 10 80 e5                                      str r1, [r0]
004a109c  04 10 93 e5                                      ldr r1, [r3, #4]
004a10a0  00 60 81 e5                                      str r6, [r1]
004a10a4  14 10 92 e5                                      ldr r1, [r2, #0x14]
004a10a8  00 30 81 e5                                      str r3, [r1]
004a10ac  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
004a10b0  14 10 92 e5                                      ldr r1, [r2, #0x14]
004a10b4  14 00 82 e5                                      str r0, [r2, #0x14]
004a10b8  04 20 93 e5                                      ldr r2, [r3, #4]
004a10bc  1c 20 8d e5                                      str r2, [sp, #0x1c]
004a10c0  04 10 83 e5                                      str r1, [r3, #4]
004a10c4  06 00 a0 e1                                      mov r0, r6
004a10c8  54 1f fa eb                                      bl #0x328e20
004a10cc  07 00 a0 e1                                      mov r0, r7
004a10d0  52 1f fa eb                                      bl #0x328e20
004a10d4  0b 2b fa eb                                      bl #0x32bd08
004a10d8  91 e0 ff eb                                      bl #0x499324
004a10dc  00 00 50 e3                                      cmp r0, #0
004a10e0  0f 7d 8d 02                                      addeq r7, sp, #0x3c0
004a10e4  31 01 00 1a                                      bne #0x4a15b0
004a10e8  a7 7f 0d eb                                      bl #0x800f8c
004a10ec  04 10 a0 e3                                      mov r1, #4
004a10f0  00 30 90 e5                                      ldr r3, [r0]
004a10f4  0f e0 a0 e1                                      mov lr, pc
004a10f8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
004a10fc  a4 71 0d eb                                      bl #0x7fd794
004a1100  01 10 a0 e3                                      mov r1, #1
004a1104  00 71 0d eb                                      bl #0x7fd50c
004a1108  62 ff f9 eb                                      bl #0x320e98
004a110c  0b 80 94 e7                                      ldr r8, [r4, fp]
004a1110  00 30 a0 e3                                      mov r3, #0
004a1114  24 30 c0 e5                                      strb r3, [r0, #0x24]
004a1118  08 00 a0 e1                                      mov r0, r8
004a111c  d9 59 fa eb                                      bl #0x337888
004a1120  b8 13 9f e5                                      ldr r1, [pc, #0x3b8]
004a1124  7d 6e 8d e2                                      add r6, sp, #0x7d0
004a1128  04 60 86 e2                                      add r6, r6, #4
004a112c  08 20 47 e2                                      sub r2, r7, #8
004a1130  01 10 8f e0                                      add r1, pc, r1
004a1134  06 00 a0 e1                                      mov r0, r6
004a1138  eb cb f9 eb                                      bl #0x3140ec
004a113c  06 10 a0 e1                                      mov r1, r6
004a1140  08 00 a0 e1                                      mov r0, r8
004a1144  4f 5a fa eb                                      bl #0x337a88
004a1148  00 70 a0 e1                                      mov r7, r0
004a114c  06 00 a0 e1                                      mov r0, r6
004a1150  3f dc f9 eb                                      bl #0x318254
004a1154  00 00 57 e3                                      cmp r7, #0
004a1158  3a fe ff 0a                                      beq #0x4a0a48
004a115c  8a 7f 0d eb                                      bl #0x800f8c
004a1160  01 20 a0 e3                                      mov r2, #1
004a1164  ed 37 06 e3                                      movw r3, #0x67ed
004a1168  03 20 c0 e7                                      strb r2, [r0, r3]
004a116c  35 fe ff ea                                      b #0x4a0a48
004a1170  85 7f 0d eb                                      bl #0x800f8c
004a1174  84 76 0d eb                                      bl #0x7feb8c
004a1178  34 60 87 e5                                      str r6, [r7, #0x34]
004a117c  82 7f 0d eb                                      bl #0x800f8c
004a1180  06 00 a0 e1                                      mov r0, r6
004a1184  cd 74 0d eb                                      bl #0x7fe4c0
004a1188  81 71 0d eb                                      bl #0x7fd794
004a118c  2f 0f 0e eb                                      bl #0x824e50
004a1190  00 00 50 e3                                      cmp r0, #0
004a1194  ee 00 00 0a                                      beq #0x4a1554
004a1198  7b 7f 0d eb                                      bl #0x800f8c
004a119c  00 30 90 e5                                      ldr r3, [r0]
004a11a0  0f e0 a0 e1                                      mov lr, pc
004a11a4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
004a11a8  77 7f 0d eb                                      bl #0x800f8c
004a11ac  04 10 a0 e3                                      mov r1, #4
004a11b0  00 30 90 e5                                      ldr r3, [r0]
004a11b4  0f e0 a0 e1                                      mov lr, pc
004a11b8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
004a11bc  74 71 0d eb                                      bl #0x7fd794
004a11c0  01 10 a0 e3                                      mov r1, #1
004a11c4  d0 70 0d eb                                      bl #0x7fd50c
004a11c8  32 ff f9 eb                                      bl #0x320e98
004a11cc  00 30 a0 e3                                      mov r3, #0
004a11d0  24 30 c0 e5                                      strb r3, [r0, #0x24]
004a11d4  1b fe ff ea                                      b #0x4a0a48
004a11d8  2e ff f9 eb                                      bl #0x320e98
004a11dc  26 80 c0 e5                                      strb r8, [r0, #0x26]
004a11e0  2c ff f9 eb                                      bl #0x320e98
004a11e4  27 80 c0 e5                                      strb r8, [r0, #0x27]
004a11e8  67 7f 0d eb                                      bl #0x800f8c
004a11ec  66 76 0d eb                                      bl #0x7feb8c
004a11f0  34 60 87 e5                                      str r6, [r7, #0x34]
004a11f4  06 00 a0 e1                                      mov r0, r6
004a11f8  b0 74 0d eb                                      bl #0x7fe4c0
004a11fc  62 7f 0d eb                                      bl #0x800f8c
004a1200  cc b2 9f e5                                      ldr fp, [pc, #0x2cc]
004a1204  00 30 90 e5                                      ldr r3, [r0]
004a1208  0f e0 a0 e1                                      mov lr, pc
004a120c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
004a1210  0b 80 94 e7                                      ldr r8, [r4, fp]
004a1214  23 6d 8d e2                                      add r6, sp, #0x8c0
004a1218  04 60 86 e2                                      add r6, r6, #4
004a121c  08 00 a0 e1                                      mov r0, r8
004a1220  98 59 fa eb                                      bl #0x337888
004a1224  b8 12 9f e5                                      ldr r1, [pc, #0x2b8]
004a1228  3e 7e 8d e2                                      add r7, sp, #0x3e0
004a122c  07 20 a0 e1                                      mov r2, r7
004a1230  01 10 8f e0                                      add r1, pc, r1
004a1234  06 00 a0 e1                                      mov r0, r6
004a1238  ab cb f9 eb                                      bl #0x3140ec
004a123c  06 10 a0 e1                                      mov r1, r6
004a1240  08 00 a0 e1                                      mov r0, r8
004a1244  0f 5a fa eb                                      bl #0x337a88
004a1248  00 90 a0 e1                                      mov sb, r0
004a124c  06 00 a0 e1                                      mov r0, r6
004a1250  ff db f9 eb                                      bl #0x318254
004a1254  00 00 59 e3                                      cmp sb, #0
004a1258  ab 00 00 1a                                      bne #0x4a150c
004a125c  98 82 9f e5                                      ldr r8, [pc, #0x298]
004a1260  79 ae 8d e2                                      add sl, sp, #0x790
004a1264  04 a0 8a e2                                      add sl, sl, #4
004a1268  89 6e 8d e2                                      add r6, sp, #0x890
004a126c  09 30 a0 e1                                      mov r3, sb
004a1270  08 00 94 e7                                      ldr r0, [r4, r8]
004a1274  0a 10 a0 e1                                      mov r1, sl
004a1278  0a 20 a0 e3                                      mov r2, #0xa
004a127c  04 60 86 e2                                      add r6, r6, #4
004a1280  0a f9 f9 eb                                      bl #0x31f6b0
004a1284  0a 10 a0 e1                                      mov r1, sl
004a1288  06 00 a0 e1                                      mov r0, r6
004a128c  08 20 47 e2                                      sub r2, r7, #8
004a1290  95 cb f9 eb                                      bl #0x3140ec
004a1294  5c 32 9f e5                                      ldr r3, [pc, #0x25c]
004a1298  03 00 94 e7                                      ldr r0, [r4, r3]
004a129c  00 00 56 e1                                      cmp r6, r0
004a12a0  02 00 00 0a                                      beq #0x4a12b0
004a12a4  a8 18 9d e5                                      ldr r1, [sp, #0x8a8]
004a12a8  a4 28 9d e5                                      ldr r2, [sp, #0x8a4]
004a12ac  cb bd f9 eb                                      bl #0x3109e0
004a12b0  06 00 a0 e1                                      mov r0, r6
004a12b4  e6 db f9 eb                                      bl #0x318254
004a12b8  08 30 94 e7                                      ldr r3, [r4, r8]
004a12bc  00 10 a0 e3                                      mov r1, #0
004a12c0  01 20 a0 e1                                      mov r2, r1
004a12c4  40 00 93 e5                                      ldr r0, [r3, #0x40]
004a12c8  6a 34 fb eb                                      bl #0x36e478
004a12cc  64 16 90 e5                                      ldr r1, [r0, #0x664]
004a12d0  57 ae 8d e2                                      add sl, sp, #0x570
004a12d4  0c a0 8a e2                                      add sl, sl, #0xc
004a12d8  01 00 71 e3                                      cmn r1, #1
004a12dc  00 10 a0 03                                      moveq r1, #0
004a12e0  64 16 80 05                                      streq r1, [r0, #0x664]
004a12e4  01 20 a0 e3                                      mov r2, #1
004a12e8  00 30 a0 e3                                      mov r3, #0
004a12ec  0a 00 a0 e1                                      mov r0, sl
004a12f0  ad 10 ff eb                                      bl #0x4655ac
004a12f4  ec 11 9f e5                                      ldr r1, [pc, #0x1ec]
004a12f8  71 8e 8d e2                                      add r8, sp, #0x710
004a12fc  04 80 88 e2                                      add r8, r8, #4
004a1300  ac 35 9d e5                                      ldr r3, [sp, #0x5ac]
004a1304  01 10 8f e0                                      add r1, pc, r1
004a1308  b0 25 9d e5                                      ldr r2, [sp, #0x5b0]
004a130c  08 00 a0 e1                                      mov r0, r8
004a1310  f3 b5 f9 eb                                      bl #0x30eae4
004a1314  1c 7f 0d eb                                      bl #0x800f8c
004a1318  87 6e 8d e2                                      add r6, sp, #0x870
004a131c  0c 60 86 e2                                      add r6, r6, #0xc
004a1320  0c 20 47 e2                                      sub r2, r7, #0xc
004a1324  00 90 a0 e1                                      mov sb, r0
004a1328  08 10 a0 e1                                      mov r1, r8
004a132c  06 00 a0 e1                                      mov r0, r6
004a1330  6d cb f9 eb                                      bl #0x3140ec
004a1334  00 20 a0 e3                                      mov r2, #0
004a1338  06 10 a0 e1                                      mov r1, r6
004a133c  09 00 a0 e1                                      mov r0, sb
004a1340  41 f7 0d eb                                      bl #0x81f04c
004a1344  06 00 a0 e1                                      mov r0, r6
004a1348  c1 db f9 eb                                      bl #0x318254
004a134c  0e 7f 0d eb                                      bl #0x800f8c
004a1350  04 10 a0 e3                                      mov r1, #4
004a1354  00 30 90 e5                                      ldr r3, [r0]
004a1358  0f e0 a0 e1                                      mov lr, pc
004a135c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
004a1360  0b 71 0d eb                                      bl #0x7fd794
004a1364  01 10 a0 e3                                      mov r1, #1
004a1368  67 70 0d eb                                      bl #0x7fd50c
004a136c  c9 fe f9 eb                                      bl #0x320e98
004a1370  00 60 a0 e3                                      mov r6, #0
004a1374  28 60 c0 e5                                      strb r6, [r0, #0x28]
004a1378  c6 fe f9 eb                                      bl #0x320e98
004a137c  0b 70 94 e7                                      ldr r7, [r4, fp]
004a1380  24 60 c0 e5                                      strb r6, [r0, #0x24]
004a1384  86 6e 8d e2                                      add r6, sp, #0x860
004a1388  07 00 a0 e1                                      mov r0, r7
004a138c  3d 59 fa eb                                      bl #0x337888
004a1390  54 11 9f e5                                      ldr r1, [pc, #0x154]
004a1394  04 60 86 e2                                      add r6, r6, #4
004a1398  3d 2e 8d e2                                      add r2, sp, #0x3d0
004a139c  01 10 8f e0                                      add r1, pc, r1
004a13a0  06 00 a0 e1                                      mov r0, r6
004a13a4  50 cb f9 eb                                      bl #0x3140ec
004a13a8  07 00 a0 e1                                      mov r0, r7
004a13ac  06 10 a0 e1                                      mov r1, r6
004a13b0  b4 59 fa eb                                      bl #0x337a88
004a13b4  00 70 a0 e1                                      mov r7, r0
004a13b8  06 00 a0 e1                                      mov r0, r6
004a13bc  a4 db f9 eb                                      bl #0x318254
004a13c0  00 00 57 e3                                      cmp r7, #0
004a13c4  03 00 00 0a                                      beq #0x4a13d8
004a13c8  ef 7e 0d eb                                      bl #0x800f8c
004a13cc  01 20 a0 e3                                      mov r2, #1
004a13d0  ed 37 06 e3                                      movw r3, #0x67ed
004a13d4  03 20 c0 e7                                      strb r2, [r0, r3]
004a13d8  0a 00 a0 e1                                      mov r0, sl
004a13dc  ea 08 ff eb                                      bl #0x46378c
004a13e0  98 fd ff ea                                      b #0x4a0a48
004a13e4  e8 7e 0d eb                                      bl #0x800f8c
004a13e8  e7 75 0d eb                                      bl #0x7feb8c
004a13ec  06 00 a0 e1                                      mov r0, r6
004a13f0  34 60 87 e5                                      str r6, [r7, #0x34]
004a13f4  31 74 0d eb                                      bl #0x7fe4c0
004a13f8  e3 7e 0d eb                                      bl #0x800f8c
004a13fc  00 30 90 e5                                      ldr r3, [r0]
004a1400  0f e0 a0 e1                                      mov lr, pc
004a1404  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
004a1408  df 7e 0d eb                                      bl #0x800f8c
004a140c  06 10 a0 e1                                      mov r1, r6
004a1410  00 30 90 e5                                      ldr r3, [r0]
004a1414  0f e0 a0 e1                                      mov lr, pc
004a1418  28 f0 93 e5                                      ldr pc, [r3, #0x28]
004a141c  dc 70 0d eb                                      bl #0x7fd794
004a1420  01 10 a0 e3                                      mov r1, #1
004a1424  38 70 0d eb                                      bl #0x7fd50c
004a1428  9a fe f9 eb                                      bl #0x320e98
004a142c  24 80 c0 e5                                      strb r8, [r0, #0x24]
004a1430  84 fd ff ea                                      b #0x4a0a48
004a1434  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
004a1438  83 7e 8d e2                                      add r7, sp, #0x830
004a143c  04 70 87 e2                                      add r7, r7, #4
004a1440  08 20 46 e2                                      sub r2, r6, #8
004a1444  01 10 8f e0                                      add r1, pc, r1
004a1448  07 00 a0 e1                                      mov r0, r7
004a144c  26 cb f9 eb                                      bl #0x3140ec
004a1450  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
004a1454  03 00 94 e7                                      ldr r0, [r4, r3]
004a1458  00 00 57 e1                                      cmp r7, r0
004a145c  bf fe ff 0a                                      beq #0x4a0f60
004a1460  48 18 9d e5                                      ldr r1, [sp, #0x848]
004a1464  44 28 9d e5                                      ldr r2, [sp, #0x844]
004a1468  5c bd f9 eb                                      bl #0x3109e0
004a146c  bb fe ff ea                                      b #0x4a0f60
; mapping-symbol data/literal pool
004a1470  c0 45 4f 00 ac 40 00 00 bc 14 00 00 c0 1c 00 00  .byte 0xc0, 0x45, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xbc, 0x14, 0x00, 0x00, 0xc0, 0x1c, 0x00, 0x00
004a1480  cc 15 00 00 b4 3c 00 00 a4 30 00 00 14 25 00 00  .byte 0xcc, 0x15, 0x00, 0x00, 0xb4, 0x3c, 0x00, 0x00, 0xa4, 0x30, 0x00, 0x00, 0x14, 0x25, 0x00, 0x00
004a1490  ec 27 00 00 c4 45 00 00 60 13 00 00 44 0c 00 00  .byte 0xec, 0x27, 0x00, 0x00, 0xc4, 0x45, 0x00, 0x00, 0x60, 0x13, 0x00, 0x00, 0x44, 0x0c, 0x00, 0x00
004a14a0  c0 17 00 00 3c 30 00 00 6c 47 00 00 88 1d 00 00  .byte 0xc0, 0x17, 0x00, 0x00, 0x3c, 0x30, 0x00, 0x00, 0x6c, 0x47, 0x00, 0x00, 0x88, 0x1d, 0x00, 0x00
004a14b0  a4 08 00 00 c8 47 00 00 48 1b 00 00 2c 3a 00 00  .byte 0xa4, 0x08, 0x00, 0x00, 0xc8, 0x47, 0x00, 0x00, 0x48, 0x1b, 0x00, 0x00, 0x2c, 0x3a, 0x00, 0x00
004a14c0  14 2d 00 00 a4 20 00 00 08 46 00 00 e8 05 00 00  .byte 0x14, 0x2d, 0x00, 0x00, 0xa4, 0x20, 0x00, 0x00, 0x08, 0x46, 0x00, 0x00, 0xe8, 0x05, 0x00, 0x00
004a14d0  cc 42 00 00 84 08 00 00 e8 ef 41 00 94 0d 00 00  .byte 0xcc, 0x42, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xe8, 0xef, 0x41, 0x00, 0x94, 0x0d, 0x00, 0x00
004a14e0  80 ed 41 00 98 ec 41 00 d4 b9 42 00 14 eb 41 00  .byte 0x80, 0xed, 0x41, 0x00, 0x98, 0xec, 0x41, 0x00, 0xd4, 0xb9, 0x42, 0x00, 0x14, 0xeb, 0x41, 0x00
004a14f0  cc 40 43 00 ec 3f 43 00 5c 20 00 00 f4 37 00 00  .byte 0xcc, 0x40, 0x43, 0x00, 0xec, 0x3f, 0x43, 0x00, 0x5c, 0x20, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
004a1500  9c 1a 00 00 68 b6 42 00 d0 d8 41 00              .byte 0x9c, 0x1a, 0x00, 0x00, 0x68, 0xb6, 0x42, 0x00, 0xd0, 0xd8, 0x41, 0x00
; decoder-mode: arm
004a150c  20 10 1f e5                                      ldr r1, [pc, #-0x20]
004a1510  8a 6e 8d e2                                      add r6, sp, #0x8a0
004a1514  0c 60 86 e2                                      add r6, r6, #0xc
004a1518  06 00 a0 e1                                      mov r0, r6
004a151c  01 10 8f e0                                      add r1, pc, r1
004a1520  04 20 47 e2                                      sub r2, r7, #4
004a1524  f0 ca f9 eb                                      bl #0x3140ec
004a1528  38 30 1f e5                                      ldr r3, [pc, #-0x38]
004a152c  03 00 94 e7                                      ldr r0, [r4, r3]
004a1530  00 00 56 e1                                      cmp r6, r0
004a1534  02 00 00 0a                                      beq #0x4a1544
004a1538  c0 18 9d e5                                      ldr r1, [sp, #0x8c0]
004a153c  bc 28 9d e5                                      ldr r2, [sp, #0x8bc]
004a1540  26 bd f9 eb                                      bl #0x3109e0
004a1544  06 00 a0 e1                                      mov r0, r6
004a1548  41 db f9 eb                                      bl #0x318254
004a154c  58 80 1f e5                                      ldr r8, [pc, #-0x58]
004a1550  58 ff ff ea                                      b #0x4a12b8
004a1554  8e 70 0d eb                                      bl #0x7fd794
004a1558  70 0e 0e eb                                      bl #0x824f20
004a155c  0d ff ff ea                                      b #0x4a1198
004a1560  06 30 a0 e1                                      mov r3, r6
004a1564  08 50 a0 e1                                      mov r5, r8
004a1568  04 60 a0 e1                                      mov r6, r4
004a156c  03 40 a0 e1                                      mov r4, r3
004a1570  00 00 00 ea                                      b #0x4a1578
004a1574  08 60 a0 e1                                      mov r6, r8
004a1578  04 30 96 e5                                      ldr r3, [r6, #4]
004a157c  00 80 96 e5                                      ldr r8, [r6]
004a1580  08 00 86 e2                                      add r0, r6, #8
004a1584  00 80 83 e5                                      str r8, [r3]
004a1588  04 30 88 e5                                      str r3, [r8, #4]
004a158c  30 db f9 eb                                      bl #0x318254
004a1590  06 00 a0 e1                                      mov r0, r6
004a1594  20 10 a0 e3                                      mov r1, #0x20
004a1598  58 9e 09 eb                                      bl #0x708f00
004a159c  09 30 94 e7                                      ldr r3, [r4, sb]
004a15a0  10 30 83 e2                                      add r3, r3, #0x10
004a15a4  03 00 58 e1                                      cmp r8, r3
004a15a8  f1 ff ff 1a                                      bne #0x4a1574
004a15ac  c6 fe ff ea                                      b #0x4a10cc
004a15b0  20 60 8d e2                                      add r6, sp, #0x20
004a15b4  c0 80 1f e5                                      ldr r8, [pc, #-0xc0]
004a15b8  08 60 46 e2                                      sub r6, r6, #8
004a15bc  06 00 a0 e1                                      mov r0, r6
004a15c0  ef de 0d eb                                      bl #0x819184
004a15c4  08 30 94 e7                                      ldr r3, [r4, r8]
004a15c8  00 10 a0 e3                                      mov r1, #0
004a15cc  01 20 a0 e1                                      mov r2, r1
004a15d0  40 00 93 e5                                      ldr r0, [r3, #0x40]
004a15d4  a7 33 fb eb                                      bl #0x36e478
004a15d8  64 16 90 e5                                      ldr r1, [r0, #0x664]
004a15dc  e4 00 1f e5                                      ldr r0, [pc, #-0xe4]
004a15e0  3f ae 8d e2                                      add sl, sp, #0x3f0
004a15e4  0c a0 4a e2                                      sub sl, sl, #0xc
004a15e8  0c 00 8d e5                                      str r0, [sp, #0xc]
004a15ec  01 20 a0 e3                                      mov r2, #1
004a15f0  00 30 a0 e3                                      mov r3, #0
004a15f4  0a 00 a0 e1                                      mov r0, sl
004a15f8  eb 0f ff eb                                      bl #0x4655ac
004a15fc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
004a1600  8e 0e 8d e2                                      add r0, sp, #0x8e0
004a1604  02 30 94 e7                                      ldr r3, [r4, r2]
004a1608  00 c0 93 e5                                      ldr ip, [r3]
004a160c  0c 31 80 e0                                      add r3, r0, ip, lsl #2
004a1610  a0 94 13 e5                                      ldr sb, [r3, #-0x4a0]
004a1614  ac 34 13 e5                                      ldr r3, [r3, #-0x4ac]
004a1618  00 00 59 e3                                      cmp sb, #0
004a161c  14 30 8d e5                                      str r3, [sp, #0x14]
004a1620  0f 7d 8d 02                                      addeq r7, sp, #0x3c0
004a1624  58 00 00 1a                                      bne #0x4a178c
004a1628  04 c0 8d e5                                      str ip, [sp, #4]
004a162c  a6 a6 05 eb                                      bl #0x60b0cc
004a1630  00 90 a0 e1                                      mov sb, r0
004a1634  0c 00 9d e5                                      ldr r0, [sp, #0xc]
004a1638  8e 2e 8d e2                                      add r2, sp, #0x8e0
004a163c  00 30 94 e7                                      ldr r3, [r4, r0]
004a1640  00 30 93 e5                                      ldr r3, [r3]
004a1644  03 31 82 e0                                      add r3, r2, r3, lsl #2
004a1648  a0 94 03 e5                                      str sb, [r3, #-0x4a0]
004a164c  04 c0 9d e5                                      ldr ip, [sp, #4]
004a1650  54 11 1f e5                                      ldr r1, [pc, #-0x154]
004a1654  09 20 a0 e1                                      mov r2, sb
004a1658  7e 0e 8d e2                                      add r0, sp, #0x7e0
004a165c  79 9e 8d e2                                      add sb, sp, #0x790
004a1660  04 90 89 e2                                      add sb, sb, #4
004a1664  0c 00 80 e2                                      add r0, r0, #0xc
004a1668  02 30 a0 e1                                      mov r3, r2
004a166c  10 00 8d e5                                      str r0, [sp, #0x10]
004a1670  01 10 8f e0                                      add r1, pc, r1
004a1674  09 00 a0 e1                                      mov r0, sb
004a1678  04 c0 8d e5                                      str ip, [sp, #4]
004a167c  18 b5 f9 eb                                      bl #0x30eae4
004a1680  04 20 47 e2                                      sub r2, r7, #4
004a1684  09 10 a0 e1                                      mov r1, sb
004a1688  10 00 9d e5                                      ldr r0, [sp, #0x10]
004a168c  96 ca f9 eb                                      bl #0x3140ec
004a1690  0a 00 a0 e1                                      mov r0, sl
004a1694  10 10 a0 e3                                      mov r1, #0x10
004a1698  64 0f ff eb                                      bl #0x465430
004a169c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
004a16a0  0a 00 a0 e1                                      mov r0, sl
004a16a4  02 90 94 e7                                      ldr sb, [r4, r2]
004a16a8  00 10 99 e5                                      ldr r1, [sb]
004a16ac  ce 16 ff eb                                      bl #0x4671ec
004a16b0  0c 00 8d e5                                      str r0, [sp, #0xc]
004a16b4  0a 00 a0 e1                                      mov r0, sl
004a16b8  00 90 99 e5                                      ldr sb, [sb]
004a16bc  a8 13 ff eb                                      bl #0x466564
004a16c0  ba 2b 0a e3                                      movw r2, #0xabba
004a16c4  09 31 80 e0                                      add r3, r0, sb, lsl #2
004a16c8  ed 2e 4f e3                                      movt r2, #0xfeed
004a16cc  01 10 a0 e3                                      mov r1, #1
004a16d0  06 00 a0 e1                                      mov r0, r6
004a16d4  44 90 93 e5                                      ldr sb, [r3, #0x44]
004a16d8  99 db 0d eb                                      bl #0x818544
004a16dc  08 00 94 e7                                      ldr r0, [r4, r8]
004a16e0  f0 f7 f9 eb                                      bl #0x31f6a8
004a16e4  02 10 a0 e3                                      mov r1, #2
004a16e8  00 20 a0 e1                                      mov r2, r0
004a16ec  06 00 a0 e1                                      mov r0, r6
004a16f0  93 db 0d eb                                      bl #0x818544
004a16f4  06 00 a0 e1                                      mov r0, r6
004a16f8  14 20 9d e5                                      ldr r2, [sp, #0x14]
004a16fc  03 10 a0 e3                                      mov r1, #3
004a1700  8f db 0d eb                                      bl #0x818544
004a1704  04 c0 9d e5                                      ldr ip, [sp, #4]
004a1708  06 00 a0 e1                                      mov r0, r6
004a170c  04 10 a0 e3                                      mov r1, #4
004a1710  0c 20 a0 e1                                      mov r2, ip
004a1714  8a db 0d eb                                      bl #0x818544
004a1718  06 00 a0 e1                                      mov r0, r6
004a171c  09 20 a0 e1                                      mov r2, sb
004a1720  05 10 a0 e3                                      mov r1, #5
004a1724  86 db 0d eb                                      bl #0x818544
004a1728  06 00 a0 e1                                      mov r0, r6
004a172c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
004a1730  06 10 a0 e3                                      mov r1, #6
004a1734  82 db 0d eb                                      bl #0x818544
004a1738  00 28 9d e5                                      ldr r2, [sp, #0x800]
004a173c  fc 37 9d e5                                      ldr r3, [sp, #0x7fc]
004a1740  04 10 a0 e3                                      mov r1, #4
004a1744  06 00 a0 e1                                      mov r0, r6
004a1748  03 30 62 e0                                      rsb r3, r2, r3
004a174c  57 dd 0d eb                                      bl #0x818cb0
004a1750  d0 fd f9 eb                                      bl #0x320e98
004a1754  01 30 a0 e3                                      mov r3, #1
004a1758  25 30 c0 e5                                      strb r3, [r0, #0x25]
004a175c  0a 7e 0d eb                                      bl #0x800f8c
004a1760  1a 0b 80 e2                                      add r0, r0, #0x6800
004a1764  06 10 a0 e1                                      mov r1, r6
004a1768  40 00 80 e2                                      add r0, r0, #0x40
004a176c  6e dc 0d eb                                      bl #0x81892c
004a1770  10 00 9d e5                                      ldr r0, [sp, #0x10]
004a1774  b6 da f9 eb                                      bl #0x318254
004a1778  0a 00 a0 e1                                      mov r0, sl
004a177c  02 08 ff eb                                      bl #0x46378c
004a1780  06 00 a0 e1                                      mov r0, r6
004a1784  22 dd 0d eb                                      bl #0x818c14
004a1788  56 fe ff ea                                      b #0x4a10e8
004a178c  0b 30 94 e7                                      ldr r3, [r4, fp]
004a1790  02 2b 8d e2                                      add r2, sp, #0x800
004a1794  04 20 82 e2                                      add r2, r2, #4
004a1798  03 00 a0 e1                                      mov r0, r3
004a179c  04 c0 8d e5                                      str ip, [sp, #4]
004a17a0  08 30 8d e5                                      str r3, [sp, #8]
004a17a4  10 20 8d e5                                      str r2, [sp, #0x10]
004a17a8  36 58 fa eb                                      bl #0x337888
004a17ac  ac 12 1f e5                                      ldr r1, [pc, #-0x2ac]
004a17b0  0f 7d 8d e2                                      add r7, sp, #0x3c0
004a17b4  07 20 a0 e1                                      mov r2, r7
004a17b8  01 10 8f e0                                      add r1, pc, r1
004a17bc  10 00 9d e5                                      ldr r0, [sp, #0x10]
004a17c0  49 ca f9 eb                                      bl #0x3140ec
004a17c4  08 30 9d e5                                      ldr r3, [sp, #8]
004a17c8  10 10 9d e5                                      ldr r1, [sp, #0x10]
004a17cc  03 00 a0 e1                                      mov r0, r3
004a17d0  ac 58 fa eb                                      bl #0x337a88
004a17d4  00 30 a0 e1                                      mov r3, r0
004a17d8  10 00 9d e5                                      ldr r0, [sp, #0x10]
004a17dc  08 30 8d e5                                      str r3, [sp, #8]
004a17e0  9b da f9 eb                                      bl #0x318254
004a17e4  08 30 9d e5                                      ldr r3, [sp, #8]
004a17e8  04 c0 9d e5                                      ldr ip, [sp, #4]
004a17ec  00 00 53 e3                                      cmp r3, #0
004a17f0  96 ff ff 0a                                      beq #0x4a1650
004a17f4  8b ff ff ea                                      b #0x4a1628
004a17f8  c4 b2 f9 eb                                      bl #0x30e310
