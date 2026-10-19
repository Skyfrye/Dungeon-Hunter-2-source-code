; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045310c, declared_size=280, range_size=280, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map15UpdateMapCameraEv
; demangled: MenuCharMenu_Map::UpdateMapCamera()
; decoder-mode: arm
0045310c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00453110  e8 51 90 e5                                      ldr r5, [r0, #0x1e8]
00453114  0c d0 4d e2                                      sub sp, sp, #0xc
00453118  00 40 a0 e1                                      mov r4, r0
0045311c  00 00 55 e3                                      cmp r5, #0
00453120  2f 00 00 0a                                      beq #0x4531e4
00453124  ec 90 90 e5                                      ldr sb, [r0, #0xec]
00453128  98 10 95 e5                                      ldr r1, [r5, #0x98]
0045312c  09 00 a0 e1                                      mov r0, sb
00453130  9b ee fa eb                                      bl #0x30eba4
00453134  f0 a0 94 e5                                      ldr sl, [r4, #0xf0]
00453138  9c 10 95 e5                                      ldr r1, [r5, #0x9c]
0045313c  00 70 a0 e1                                      mov r7, r0
00453140  0a 00 a0 e1                                      mov r0, sl
00453144  96 ee fa eb                                      bl #0x30eba4
00453148  f4 80 94 e5                                      ldr r8, [r4, #0xf4]
0045314c  a0 10 95 e5                                      ldr r1, [r5, #0xa0]
00453150  00 60 a0 e1                                      mov r6, r0
00453154  08 00 a0 e1                                      mov r0, r8
00453158  91 ee fa eb                                      bl #0x30eba4
0045315c  04 00 8d e5                                      str r0, [sp, #4]
00453160  e0 b0 94 e5                                      ldr fp, [r4, #0xe0]
00453164  07 10 a0 e1                                      mov r1, r7
00453168  0b 00 a0 e1                                      mov r0, fp
0045316c  66 ed fa eb                                      bl #0x30e70c
00453170  00 00 50 e3                                      cmp r0, #0
00453174  23 00 00 0a                                      beq #0x453208
00453178  0b 70 a0 e1                                      mov r7, fp
0045317c  e4 b0 94 e5                                      ldr fp, [r4, #0xe4]
00453180  06 10 a0 e1                                      mov r1, r6
00453184  0b 00 a0 e1                                      mov r0, fp
00453188  5f ed fa eb                                      bl #0x30e70c
0045318c  00 00 50 e3                                      cmp r0, #0
00453190  15 00 00 0a                                      beq #0x4531ec
00453194  0b 60 a0 e1                                      mov r6, fp
00453198  07 00 a0 e1                                      mov r0, r7
0045319c  09 10 a0 e1                                      mov r1, sb
004531a0  81 ec fa eb                                      bl #0x30e3ac
004531a4  0a 10 a0 e1                                      mov r1, sl
004531a8  00 70 a0 e1                                      mov r7, r0
004531ac  06 00 a0 e1                                      mov r0, r6
004531b0  7d ec fa eb                                      bl #0x30e3ac
004531b4  08 10 a0 e1                                      mov r1, r8
004531b8  00 60 a0 e1                                      mov r6, r0
004531bc  04 00 9d e5                                      ldr r0, [sp, #4]
004531c0  79 ec fa eb                                      bl #0x30e3ac
004531c4  98 70 85 e5                                      str r7, [r5, #0x98]
004531c8  a0 00 85 e5                                      str r0, [r5, #0xa0]
004531cc  9c 60 85 e5                                      str r6, [r5, #0x9c]
004531d0  e8 31 94 e5                                      ldr r3, [r4, #0x1e8]
004531d4  03 00 a0 e1                                      mov r0, r3
004531d8  00 30 93 e5                                      ldr r3, [r3]
004531dc  0f e0 a0 e1                                      mov lr, pc
004531e0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
004531e4  0c d0 8d e2                                      add sp, sp, #0xc
004531e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004531ec  d8 b0 94 e5                                      ldr fp, [r4, #0xd8]
004531f0  06 10 a0 e1                                      mov r1, r6
004531f4  0b 00 a0 e1                                      mov r0, fp
004531f8  3e ec fa eb                                      bl #0x30e2f8
004531fc  00 00 50 e3                                      cmp r0, #0
00453200  e4 ff ff 0a                                      beq #0x453198
00453204  e2 ff ff ea                                      b #0x453194
00453208  d4 b0 94 e5                                      ldr fp, [r4, #0xd4]
0045320c  07 10 a0 e1                                      mov r1, r7
00453210  0b 00 a0 e1                                      mov r0, fp
00453214  37 ec fa eb                                      bl #0x30e2f8
00453218  00 00 50 e3                                      cmp r0, #0
0045321c  d6 ff ff 0a                                      beq #0x45317c
00453220  d4 ff ff ea                                      b #0x453178

; FUNCTION 0x00453224, declared_size=272, range_size=272, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map13ClearIconTypeENS_9EIconTypeE
; demangled: MenuCharMenu_Map::ClearIconType(MenuCharMenu_Map::EIconType)
; decoder-mode: arm
00453224  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00453228  ec 30 9f e5                                      ldr r3, [pc, #0xec]
0045322c  11 00 51 e3                                      cmp r1, #0x11
00453230  08 d0 4d e2                                      sub sp, sp, #8
00453234  01 40 a0 e1                                      mov r4, r1
00453238  03 30 8f e0                                      add r3, pc, r3
0045323c  00 50 a0 e1                                      mov r5, r0
00453240  08 00 00 da                                      ble #0x453268
00453244  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
00453248  02 20 93 e7                                      ldr r2, [r3, r2]
0045324c  00 20 92 e5                                      ldr r2, [r2]
00453250  02 00 52 e3                                      cmp r2, #2
00453254  00 30 a0 03                                      moveq r3, #0
00453258  00 30 83 05                                      streq r3, [r3]
0045325c  01 00 00 0a                                      beq #0x453268
00453260  01 00 52 e3                                      cmp r2, #1
00453264  1f 00 00 0a                                      beq #0x4532e8
00453268  0c 30 a0 e3                                      mov r3, #0xc
0045326c  93 54 23 e0                                      mla r3, r3, r4, r5
00453270  04 61 93 e5                                      ldr r6, [r3, #0x104]
00453274  08 71 93 e5                                      ldr r7, [r3, #0x108]
00453278  06 00 57 e1                                      cmp r7, r6
0045327c  17 00 00 0a                                      beq #0x4532e0
00453280  00 80 96 e5                                      ldr r8, [r6]
00453284  3c 00 88 e2                                      add r0, r8, #0x3c
00453288  ad cb fc eb                                      bl #0x386144
0045328c  40 30 98 e5                                      ldr r3, [r8, #0x40]
00453290  00 00 53 e3                                      cmp r3, #0
00453294  08 00 00 0a                                      beq #0x4532bc
00453298  00 80 96 e5                                      ldr r8, [r6]
0045329c  3c 00 88 e2                                      add r0, r8, #0x3c
004532a0  a7 cb fc eb                                      bl #0x386144
004532a4  40 30 98 e5                                      ldr r3, [r8, #0x40]
004532a8  00 10 96 e5                                      ldr r1, [r6]
004532ac  03 00 a0 e1                                      mov r0, r3
004532b0  00 30 93 e5                                      ldr r3, [r3]
004532b4  0f e0 a0 e1                                      mov lr, pc
004532b8  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
004532bc  10 60 86 e2                                      add r6, r6, #0x10
004532c0  07 00 56 e1                                      cmp r6, r7
004532c4  ed ff ff 1a                                      bne #0x453280
004532c8  0c 30 a0 e3                                      mov r3, #0xc
004532cc  93 54 24 e0                                      mla r4, r3, r4, r5
004532d0  04 31 94 e5                                      ldr r3, [r4, #0x104]
004532d4  08 21 94 e5                                      ldr r2, [r4, #0x108]
004532d8  02 00 53 e1                                      cmp r3, r2
004532dc  08 31 84 15                                      strne r3, [r4, #0x108]
004532e0  08 d0 8d e2                                      add sp, sp, #8
004532e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004532e8  34 00 9f e5                                      ldr r0, [pc, #0x34]
004532ec  34 10 9f e5                                      ldr r1, [pc, #0x34]
004532f0  34 20 9f e5                                      ldr r2, [pc, #0x34]
004532f4  00 00 93 e7                                      ldr r0, [r3, r0]
004532f8  30 30 9f e5                                      ldr r3, [pc, #0x30]
004532fc  55 c2 00 e3                                      movw ip, #0x255
00453300  01 10 8f e0                                      add r1, pc, r1
00453304  02 20 8f e0                                      add r2, pc, r2
00453308  03 30 8f e0                                      add r3, pc, r3
0045330c  a8 00 80 e2                                      add r0, r0, #0xa8
00453310  00 c0 8d e5                                      str ip, [sp]
00453314  3a eb fa eb                                      bl #0x30e004
00453318  d2 ff ff ea                                      b #0x453268
; mapping-symbol data/literal pool
0045331c  58 18 54 00 c0 39 00 00 c0 19 00 00 d8 b0 46 00  .byte 0x58, 0x18, 0x54, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xd8, 0xb0, 0x46, 0x00
0045332c  64 9a 47 00 78 9a 47 00                          .byte 0x64, 0x9a, 0x47, 0x00, 0x78, 0x9a, 0x47, 0x00

; FUNCTION 0x00453334, declared_size=40, range_size=40, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map13ClearAllIconsEv
; demangled: MenuCharMenu_Map::ClearAllIcons()
; decoder-mode: arm
00453334  70 40 2d e9                                      push {r4, r5, r6, lr}
00453338  00 50 a0 e1                                      mov r5, r0
0045333c  00 40 a0 e3                                      mov r4, #0
00453340  04 10 a0 e1                                      mov r1, r4
00453344  05 00 a0 e1                                      mov r0, r5
00453348  01 40 84 e2                                      add r4, r4, #1
0045334c  b4 ff ff eb                                      bl #0x453224
00453350  12 00 54 e3                                      cmp r4, #0x12
00453354  f9 ff ff 1a                                      bne #0x453340
00453358  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0045335c, declared_size=144, range_size=144, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map13ShowLevelNameEv
; demangled: MenuCharMenu_Map::ShowLevelName()
; decoder-mode: arm
0045335c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00453360  78 60 9f e5                                      ldr r6, [pc, #0x78]
00453364  78 30 9f e5                                      ldr r3, [pc, #0x78]
00453368  00 50 a0 e1                                      mov r5, r0
0045336c  06 60 8f e0                                      add r6, pc, r6
00453370  03 70 96 e7                                      ldr r7, [r6, r3]
00453374  07 00 a0 e1                                      mov r0, r7
00453378  85 30 fb eb                                      bl #0x31f594
0045337c  00 00 50 e3                                      cmp r0, #0
00453380  15 00 00 0a                                      beq #0x4533dc
00453384  fc 40 95 e5                                      ldr r4, [r5, #0xfc]
00453388  00 00 54 e3                                      cmp r4, #0
0045338c  12 00 00 0a                                      beq #0x4533dc
00453390  50 30 9f e5                                      ldr r3, [pc, #0x50]
00453394  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00453398  34 00 97 e5                                      ldr r0, [r7, #0x34]
0045339c  03 30 96 e7                                      ldr r3, [r6, r3]
004533a0  01 00 72 e3                                      cmn r2, #1
004533a4  48 10 a0 13                                      movne r1, #0x48
004533a8  91 02 02 10                                      mulne r2, r1, r2
004533ac  00 30 93 e5                                      ldr r3, [r3]
004533b0  00 20 a0 03                                      moveq r2, #0
004533b4  04 50 95 e5                                      ldr r5, [r5, #4]
004533b8  02 30 83 e0                                      add r3, r3, r2
004533bc  24 10 93 e5                                      ldr r1, [r3, #0x24]
004533c0  c5 d6 02 eb                                      bl #0x508edc
004533c4  04 10 a0 e1                                      mov r1, r4
004533c8  00 20 a0 e1                                      mov r2, r0
004533cc  00 30 a0 e3                                      mov r3, #0
004533d0  05 00 a0 e1                                      mov r0, r5
004533d4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
004533d8  c0 57 0d ea                                      b #0x7a92e0
004533dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004533e0  24 17 54 00 f4 37 00 00 74 08 00 00              .byte 0x24, 0x17, 0x54, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00

; FUNCTION 0x004533ec, declared_size=156, range_size=156, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map23IsPointInsideRenderZoneEii
; demangled: MenuCharMenu_Map::IsPointInsideRenderZone(int, int)
; decoder-mode: arm
004533ec  30 40 2d e9                                      push {r4, r5, lr}
004533f0  00 31 90 e5                                      ldr r3, [r0, #0x100]
004533f4  14 d0 4d e2                                      sub sp, sp, #0x14
004533f8  01 40 a0 e1                                      mov r4, r1
004533fc  0d 00 a0 e1                                      mov r0, sp
00453400  03 10 a0 e1                                      mov r1, r3
00453404  02 50 a0 e1                                      mov r5, r2
00453408  9b 0d ff eb                                      bl #0x416a7c
0045340c  04 00 a0 e1                                      mov r0, r4
00453410  53 ed fa eb                                      bl #0x30e964
00453414  00 10 9d e5                                      ldr r1, [sp]
00453418  00 40 a0 e1                                      mov r4, r0
0045341c  ba ec fa eb                                      bl #0x30e70c
00453420  00 00 50 e3                                      cmp r0, #0
00453424  14 00 00 1a                                      bne #0x45347c
00453428  04 00 a0 e1                                      mov r0, r4
0045342c  04 10 9d e5                                      ldr r1, [sp, #4]
00453430  b0 eb fa eb                                      bl #0x30e2f8
00453434  00 00 50 e3                                      cmp r0, #0
00453438  0f 00 00 1a                                      bne #0x45347c
0045343c  05 00 a0 e1                                      mov r0, r5
00453440  47 ed fa eb                                      bl #0x30e964
00453444  08 10 9d e5                                      ldr r1, [sp, #8]
00453448  00 40 a0 e1                                      mov r4, r0
0045344c  ae ec fa eb                                      bl #0x30e70c
00453450  00 00 50 e3                                      cmp r0, #0
00453454  08 00 00 1a                                      bne #0x45347c
00453458  04 00 a0 e1                                      mov r0, r4
0045345c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00453460  a4 eb fa eb                                      bl #0x30e2f8
00453464  00 00 50 e3                                      cmp r0, #0
00453468  00 00 a0 e3                                      mov r0, #0
0045346c  01 00 a0 13                                      movne r0, #1
00453470  01 00 20 e2                                      eor r0, r0, #1
00453474  70 00 ef e6                                      uxtb r0, r0
00453478  00 00 00 ea                                      b #0x453480
0045347c  00 00 a0 e3                                      mov r0, #0
00453480  14 d0 8d e2                                      add sp, sp, #0x14
00453484  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00453488, declared_size=148, range_size=148, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map16DestroyMapCameraEv
; demangled: MenuCharMenu_Map::DestroyMapCamera()
; decoder-mode: arm
00453488  70 40 2d e9                                      push {r4, r5, r6, lr}
0045348c  e8 31 90 e5                                      ldr r3, [r0, #0x1e8]
00453490  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
00453494  00 50 a0 e1                                      mov r5, r0
00453498  00 00 53 e3                                      cmp r3, #0
0045349c  04 40 8f e0                                      add r4, pc, r4
004534a0  12 00 00 0a                                      beq #0x4534f0
004534a4  6c 60 9f e5                                      ldr r6, [pc, #0x6c]
004534a8  06 30 94 e7                                      ldr r3, [r4, r6]
004534ac  50 00 93 e5                                      ldr r0, [r3, #0x50]
004534b0  01 bf fc eb                                      bl #0x3830bc
004534b4  e8 31 95 e5                                      ldr r3, [r5, #0x1e8]
004534b8  00 00 53 e3                                      cmp r3, #0
004534bc  05 00 00 0a                                      beq #0x4534d8
004534c0  03 00 a0 e1                                      mov r0, r3
004534c4  00 30 93 e5                                      ldr r3, [r3]
004534c8  0f e0 a0 e1                                      mov lr, pc
004534cc  04 f0 93 e5                                      ldr pc, [r3, #4]
004534d0  00 30 a0 e3                                      mov r3, #0
004534d4  e8 31 85 e5                                      str r3, [r5, #0x1e8]
004534d8  00 30 a0 e3                                      mov r3, #0
004534dc  e8 31 85 e5                                      str r3, [r5, #0x1e8]
004534e0  69 65 ff eb                                      bl #0x42ca8c
004534e4  60 30 90 e5                                      ldr r3, [r0, #0x60]
004534e8  00 00 53 e3                                      cmp r3, #0
004534ec  00 00 00 0a                                      beq #0x4534f4
004534f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
004534f4  06 30 94 e7                                      ldr r3, [r4, r6]
004534f8  10 30 93 e5                                      ldr r3, [r3, #0x10]
004534fc  1c 40 93 e5                                      ldr r4, [r3, #0x1c]
00453500  61 65 ff eb                                      bl #0x42ca8c
00453504  60 10 90 e5                                      ldr r1, [r0, #0x60]
00453508  04 00 a0 e1                                      mov r0, r4
0045350c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00453510  ea d6 04 ea                                      b #0x5890c0
; mapping-symbol data/literal pool
00453514  f4 15 54 00 f4 37 00 00                          .byte 0xf4, 0x15, 0x54, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0045351c, declared_size=676, range_size=676, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map15CreateMapCameraEv
; demangled: MenuCharMenu_Map::CreateMapCamera()
; decoder-mode: arm
0045351c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00453520  e8 31 90 e5                                      ldr r3, [r0, #0x1e8]
00453524  60 42 9f e5                                      ldr r4, [pc, #0x260]
00453528  1c d0 4d e2                                      sub sp, sp, #0x1c
0045352c  00 00 53 e3                                      cmp r3, #0
00453530  00 50 a0 e1                                      mov r5, r0
00453534  04 40 8f e0                                      add r4, pc, r4
00453538  01 00 00 0a                                      beq #0x453544
0045353c  1c d0 8d e2                                      add sp, sp, #0x1c
00453540  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00453544  50 65 ff eb                                      bl #0x42ca8c
00453548  60 30 90 e5                                      ldr r3, [r0, #0x60]
0045354c  00 00 53 e3                                      cmp r3, #0
00453550  85 00 00 0a                                      beq #0x45376c
00453554  34 92 9f e5                                      ldr sb, [pc, #0x234]
00453558  00 10 a0 e3                                      mov r1, #0
0045355c  a8 00 a0 e3                                      mov r0, #0xa8
00453560  02 f4 fa eb                                      bl #0x310570
00453564  00 60 a0 e1                                      mov r6, r0
00453568  80 f2 fe eb                                      bl #0x40ff70
0045356c  00 00 56 e3                                      cmp r6, #0
00453570  e8 61 85 e5                                      str r6, [r5, #0x1e8]
00453574  66 00 00 0a                                      beq #0x453714
00453578  14 32 9f e5                                      ldr r3, [pc, #0x214]
0045357c  03 30 94 e7                                      ldr r3, [r4, r3]
00453580  00 80 93 e5                                      ldr r8, [r3]
00453584  00 00 58 e3                                      cmp r8, #0
00453588  10 00 00 0a                                      beq #0x4535d0
0045358c  04 32 9f e5                                      ldr r3, [pc, #0x204]
00453590  04 b2 9f e5                                      ldr fp, [pc, #0x204]
00453594  00 70 a0 e3                                      mov r7, #0
00453598  03 30 94 e7                                      ldr r3, [r4, r3]
0045359c  0b b0 8f e0                                      add fp, pc, fp
004535a0  00 a0 93 e5                                      ldr sl, [r3]
004535a4  02 00 00 ea                                      b #0x4535b4
004535a8  01 70 87 e2                                      add r7, r7, #1
004535ac  08 00 57 e1                                      cmp r7, r8
004535b0  06 00 00 0a                                      beq #0x4535d0
004535b4  07 11 9a e7                                      ldr r1, [sl, r7, lsl #2]
004535b8  0b 00 a0 e1                                      mov r0, fp
004535bc  56 eb fa eb                                      bl #0x30e31c
004535c0  00 00 50 e3                                      cmp r0, #0
004535c4  f7 ff ff 1a                                      bne #0x4535a8
004535c8  07 20 a0 e1                                      mov r2, r7
004535cc  00 00 00 ea                                      b #0x4535d4
004535d0  00 20 e0 e3                                      mvn r2, #0
004535d4  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
004535d8  c4 11 9f e5                                      ldr r1, [pc, #0x1c4]
004535dc  06 00 a0 e1                                      mov r0, r6
004535e0  03 30 8f e0                                      add r3, pc, r3
004535e4  01 10 8f e0                                      add r1, pc, r1
004535e8  27 f4 fe eb                                      bl #0x41068c
004535ec  e8 31 95 e5                                      ldr r3, [r5, #0x1e8]
004535f0  01 80 a0 e3                                      mov r8, #1
004535f4  fe a5 a0 e3                                      mov sl, #0x3f800000
004535f8  85 80 c3 e5                                      strb r8, [r3, #0x85]
004535fc  e8 31 95 e5                                      ldr r3, [r5, #0x1e8]
00453600  00 70 a0 e3                                      mov r7, #0
00453604  00 10 a0 e3                                      mov r1, #0
00453608  8c a0 83 e5                                      str sl, [r3, #0x8c]
0045360c  e8 31 95 e5                                      ldr r3, [r5, #0x1e8]
00453610  01 60 a0 e1                                      mov r6, r1
00453614  88 70 83 e5                                      str r7, [r3, #0x88]
00453618  e8 01 95 e5                                      ldr r0, [r5, #0x1e8]
0045361c  fe f7 fe eb                                      bl #0x41161c
00453620  77 18 0f e3                                      movw r1, #0xf877
00453624  00 c0 05 e3                                      movw ip, #0x5000
00453628  e8 01 95 e5                                      ldr r0, [r5, #0x1e8]
0045362c  c3 c7 44 e3                                      movt ip, #0x47c3
00453630  07 30 a0 e1                                      mov r3, r7
00453634  ff 25 a0 e3                                      mov r2, #0x3fc00000
00453638  db 1e 43 e3                                      movt r1, #0x3edb
0045363c  00 c0 8d e5                                      str ip, [sp]
00453640  04 60 8d e5                                      str r6, [sp, #4]
00453644  d7 ec fe eb                                      bl #0x40e9a8
00453648  e8 31 95 e5                                      ldr r3, [r5, #0x1e8]
0045364c  bf 24 a0 e3                                      mov r2, #0xbf000000
00453650  02 25 82 e2                                      add r2, r2, #0x800000
00453654  08 00 93 e5                                      ldr r0, [r3, #8]
00453658  0c 10 8d e2                                      add r1, sp, #0xc
0045365c  00 30 90 e5                                      ldr r3, [r0]
00453660  14 31 93 e5                                      ldr r3, [r3, #0x114]
00453664  0c 20 8d e5                                      str r2, [sp, #0xc]
00453668  14 70 8d e5                                      str r7, [sp, #0x14]
0045366c  10 a0 8d e5                                      str sl, [sp, #0x10]
00453670  33 ff 2f e1                                      blx r3
00453674  e8 01 95 e5                                      ldr r0, [r5, #0x1e8]
00453678  77 ef fe eb                                      bl #0x40f45c
0045367c  24 31 9f e5                                      ldr r3, [pc, #0x124]
00453680  e8 01 95 e5                                      ldr r0, [r5, #0x1e8]
00453684  1c e0 a0 e3                                      mov lr, #0x1c
00453688  03 30 94 e7                                      ldr r3, [r4, r3]
0045368c  80 10 90 e5                                      ldr r1, [r0, #0x80]
00453690  06 20 a0 e1                                      mov r2, r6
00453694  00 c0 93 e5                                      ldr ip, [r3]
00453698  06 30 a0 e1                                      mov r3, r6
0045369c  9e c1 21 e0                                      mla r1, lr, r1, ip
004536a0  10 10 91 e5                                      ldr r1, [r1, #0x10]
004536a4  96 f0 fe eb                                      bl #0x40f904
004536a8  09 40 94 e7                                      ldr r4, [r4, sb]
004536ac  06 10 a0 e1                                      mov r1, r6
004536b0  08 20 a0 e1                                      mov r2, r8
004536b4  40 00 94 e5                                      ldr r0, [r4, #0x40]
004536b8  e8 71 95 e5                                      ldr r7, [r5, #0x1e8]
004536bc  6d 6b fc eb                                      bl #0x36e478
004536c0  06 20 a0 e1                                      mov r2, r6
004536c4  60 16 90 e5                                      ldr r1, [r0, #0x660]
004536c8  07 00 a0 e1                                      mov r0, r7
004536cc  bc f8 fe eb                                      bl #0x4119c4
004536d0  10 30 94 e5                                      ldr r3, [r4, #0x10]
004536d4  e8 21 95 e5                                      ldr r2, [r5, #0x1e8]
004536d8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
004536dc  04 10 92 e5                                      ldr r1, [r2, #4]
004536e0  8c 32 93 e5                                      ldr r3, [r3, #0x28c]
004536e4  03 00 a0 e1                                      mov r0, r3
004536e8  00 30 93 e5                                      ldr r3, [r3]
004536ec  0f e0 a0 e1                                      mov lr, pc
004536f0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
004536f4  50 00 94 e5                                      ldr r0, [r4, #0x50]
004536f8  e8 11 95 e5                                      ldr r1, [r5, #0x1e8]
004536fc  2b ba fc eb                                      bl #0x381fb0
00453700  50 30 94 e5                                      ldr r3, [r4, #0x50]
00453704  05 00 a0 e1                                      mov r0, r5
00453708  24 80 c3 e5                                      strb r8, [r3, #0x24]
0045370c  7e fe ff eb                                      bl #0x45310c
00453710  89 ff ff ea                                      b #0x45353c
00453714  90 30 9f e5                                      ldr r3, [pc, #0x90]
00453718  03 30 94 e7                                      ldr r3, [r4, r3]
0045371c  00 30 93 e5                                      ldr r3, [r3]
00453720  02 00 53 e3                                      cmp r3, #2
00453724  00 60 86 05                                      streq r6, [r6]
00453728  92 ff ff 0a                                      beq #0x453578
0045372c  01 00 53 e3                                      cmp r3, #1
00453730  90 ff ff 1a                                      bne #0x453578
00453734  74 00 9f e5                                      ldr r0, [pc, #0x74]
00453738  74 10 9f e5                                      ldr r1, [pc, #0x74]
0045373c  74 20 9f e5                                      ldr r2, [pc, #0x74]
00453740  00 00 94 e7                                      ldr r0, [r4, r0]
00453744  70 30 9f e5                                      ldr r3, [pc, #0x70]
00453748  46 cf a0 e3                                      mov ip, #0x118
0045374c  01 10 8f e0                                      add r1, pc, r1
00453750  a8 00 80 e2                                      add r0, r0, #0xa8
00453754  02 20 8f e0                                      add r2, pc, r2
00453758  03 30 8f e0                                      add r3, pc, r3
0045375c  00 c0 8d e5                                      str ip, [sp]
00453760  27 ea fa eb                                      bl #0x30e004
00453764  e8 61 95 e5                                      ldr r6, [r5, #0x1e8]
00453768  82 ff ff ea                                      b #0x453578
0045376c  c6 64 ff eb                                      bl #0x42ca8c
00453770  18 90 9f e5                                      ldr sb, [pc, #0x18]
00453774  09 30 94 e7                                      ldr r3, [r4, sb]
00453778  10 30 93 e5                                      ldr r3, [r3, #0x10]
0045377c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00453780  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
00453784  60 30 80 e5                                      str r3, [r0, #0x60]
00453788  72 ff ff ea                                      b #0x453558
; mapping-symbol data/literal pool
0045378c  5c 15 54 00 f4 37 00 00 e4 38 00 00 5c 3a 00 00  .byte 0x5c, 0x15, 0x54, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe4, 0x38, 0x00, 0x00, 0x5c, 0x3a, 0x00, 0x00
0045379c  d4 32 47 00 20 98 47 00 f4 97 47 00 d4 3d 00 00  .byte 0xd4, 0x32, 0x47, 0x00, 0x20, 0x98, 0x47, 0x00, 0xf4, 0x97, 0x47, 0x00, 0xd4, 0x3d, 0x00, 0x00
004537ac  c0 39 00 00 c0 19 00 00 8c ac 46 00 0c 51 47 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x8c, 0xac, 0x46, 0x00, 0x0c, 0x51, 0x47, 0x00
004537bc  28 96 47 00                                      .byte 0x28, 0x96, 0x47, 0x00

; FUNCTION 0x004537c0, declared_size=188, range_size=188, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map4HideEv
; demangled: MenuCharMenu_Map::Hide()
; decoder-mode: arm
004537c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004537c4  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
004537c8  a8 60 9f e5                                      ldr r6, [pc, #0xa8]
004537cc  00 70 a0 e1                                      mov r7, r0
004537d0  04 40 8f e0                                      add r4, pc, r4
004537d4  06 00 94 e7                                      ldr r0, [r4, r6]
004537d8  6d 2f fb eb                                      bl #0x31f594
004537dc  06 30 94 e7                                      ldr r3, [r4, r6]
004537e0  00 50 50 e2                                      subs r5, r0, #0
004537e4  00 10 a0 e3                                      mov r1, #0
004537e8  01 20 a0 e3                                      mov r2, #1
004537ec  40 00 93 e5                                      ldr r0, [r3, #0x40]
004537f0  28 51 95 15                                      ldrne r5, [r5, #0x128]
004537f4  1f 6b fc eb                                      bl #0x36e478
004537f8  60 16 90 e5                                      ldr r1, [r0, #0x660]
004537fc  00 00 51 e3                                      cmp r1, #0
00453800  08 00 00 0a                                      beq #0x453828
00453804  00 20 a0 e3                                      mov r2, #0
00453808  05 00 a0 e1                                      mov r0, r5
0045380c  6c f8 fe eb                                      bl #0x4119c4
00453810  05 00 a0 e1                                      mov r0, r5
00453814  10 ef fe eb                                      bl #0x40f45c
00453818  00 30 95 e5                                      ldr r3, [r5]
0045381c  05 00 a0 e1                                      mov r0, r5
00453820  0f e0 a0 e1                                      mov lr, pc
00453824  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00453828  06 40 94 e7                                      ldr r4, [r4, r6]
0045382c  05 10 a0 e1                                      mov r1, r5
00453830  50 00 94 e5                                      ldr r0, [r4, #0x50]
00453834  dd b9 fc eb                                      bl #0x381fb0
00453838  07 00 a0 e1                                      mov r0, r7
0045383c  11 ff ff eb                                      bl #0x453488
00453840  07 00 a0 e1                                      mov r0, r7
00453844  aa 44 ff eb                                      bl #0x424af4
00453848  10 30 94 e5                                      ldr r3, [r4, #0x10]
0045384c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00453850  8c 32 93 e5                                      ldr r3, [r3, #0x28c]
00453854  00 00 53 e3                                      cmp r3, #0
00453858  04 00 00 0a                                      beq #0x453870
0045385c  03 00 a0 e1                                      mov r0, r3
00453860  00 10 a0 e3                                      mov r1, #0
00453864  00 30 93 e5                                      ldr r3, [r3]
00453868  0f e0 a0 e1                                      mov lr, pc
0045386c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00453870  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00453874  c0 12 54 00 f4 37 00 00                          .byte 0xc0, 0x12, 0x54, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0045387c, declared_size=32, range_size=32, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map9ResetZoomEv
; demangled: MenuCharMenu_Map::ResetZoom()
; decoder-mode: arm
0045387c  10 30 9f e5                                      ldr r3, [pc, #0x10]
00453880  10 20 9f e5                                      ldr r2, [pc, #0x10]
00453884  03 30 8f e0                                      add r3, pc, r3
00453888  02 20 93 e7                                      ldr r2, [r3, r2]
0045388c  50 00 92 e5                                      ldr r0, [r2, #0x50]
00453890  e1 b9 fc ea                                      b #0x38201c
; mapping-symbol data/literal pool
00453894  0c 12 54 00 f4 37 00 00                          .byte 0x0c, 0x12, 0x54, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0045389c, declared_size=216, range_size=216, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map17GetMapScreenCoordERK7Point3DIfEffff
; demangled: MenuCharMenu_Map::GetMapScreenCoord(Point3D<float> const&, float, float, float, float)
; decoder-mode: arm
0045389c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004538a0  00 c0 a0 e3                                      mov ip, #0
004538a4  0c d0 4d e2                                      sub sp, sp, #0xc
004538a8  00 40 a0 e1                                      mov r4, r0
004538ac  04 c0 80 e5                                      str ip, [r0, #4]
004538b0  03 50 a0 e1                                      mov r5, r3
004538b4  00 c0 84 e5                                      str ip, [r4]
004538b8  02 00 a0 e1                                      mov r0, r2
004538bc  0d 10 a0 e1                                      mov r1, sp
004538c0  00 c0 8d e5                                      str ip, [sp]
004538c4  04 c0 8d e5                                      str ip, [sp, #4]
004538c8  91 ef fe eb                                      bl #0x40f714
004538cc  00 10 9d e5                                      ldr r1, [sp]
004538d0  05 00 a0 e1                                      mov r0, r5
004538d4  24 ed fa eb                                      bl #0x30ed6c
004538d8  f1 eb fa eb                                      bl #0x30e8a4
004538dc  ff 35 a0 e3                                      mov r3, #0x3fc00000
004538e0  00 20 a0 e3                                      mov r2, #0
004538e4  02 36 83 e2                                      add r3, r3, #0x200000
004538e8  71 ec fa eb                                      bl #0x30eab4
004538ec  00 60 a0 e1                                      mov r6, r0
004538f0  24 00 9d e5                                      ldr r0, [sp, #0x24]
004538f4  01 70 a0 e1                                      mov r7, r1
004538f8  e9 eb fa eb                                      bl #0x30e8a4
004538fc  00 20 a0 e1                                      mov r2, r0
00453900  01 30 a0 e1                                      mov r3, r1
00453904  06 00 a0 e1                                      mov r0, r6
00453908  07 10 a0 e1                                      mov r1, r7
0045390c  8c ec fa eb                                      bl #0x30eb44
00453910  62 eb fa eb                                      bl #0x30e6a0
00453914  04 30 9d e5                                      ldr r3, [sp, #4]
00453918  00 00 84 e5                                      str r0, [r4]
0045391c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00453920  02 01 83 e2                                      add r0, r3, #0x80000000
00453924  10 ed fa eb                                      bl #0x30ed6c
00453928  dd eb fa eb                                      bl #0x30e8a4
0045392c  ff 35 a0 e3                                      mov r3, #0x3fc00000
00453930  00 20 a0 e3                                      mov r2, #0
00453934  02 36 83 e2                                      add r3, r3, #0x200000
00453938  5d ec fa eb                                      bl #0x30eab4
0045393c  00 60 a0 e1                                      mov r6, r0
00453940  28 00 9d e5                                      ldr r0, [sp, #0x28]
00453944  01 70 a0 e1                                      mov r7, r1
00453948  d5 eb fa eb                                      bl #0x30e8a4
0045394c  00 20 a0 e1                                      mov r2, r0
00453950  01 30 a0 e1                                      mov r3, r1
00453954  06 00 a0 e1                                      mov r0, r6
00453958  07 10 a0 e1                                      mov r1, r7
0045395c  78 ec fa eb                                      bl #0x30eb44
00453960  4e eb fa eb                                      bl #0x30e6a0
00453964  04 00 84 e5                                      str r0, [r4, #4]
00453968  04 00 a0 e1                                      mov r0, r4
0045396c  0c d0 8d e2                                      add sp, sp, #0xc
00453970  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00453974, declared_size=628, range_size=628, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map14RenderIconTypeENS_9EIconTypeERKN7gameswf4rectEf
; demangled: MenuCharMenu_Map::RenderIconType(MenuCharMenu_Map::EIconType, gameswf::rect const&, float)
; decoder-mode: arm
00453974  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00453978  48 42 9f e5                                      ldr r4, [pc, #0x248]
0045397c  5c d0 4d e2                                      sub sp, sp, #0x5c
00453980  11 00 51 e3                                      cmp r1, #0x11
00453984  04 40 8f e0                                      add r4, pc, r4
00453988  01 50 a0 e1                                      mov r5, r1
0045398c  00 70 a0 e1                                      mov r7, r0
00453990  02 60 a0 e1                                      mov r6, r2
00453994  10 30 8d e5                                      str r3, [sp, #0x10]
00453998  08 00 00 da                                      ble #0x4539c0
0045399c  28 32 9f e5                                      ldr r3, [pc, #0x228]
004539a0  03 30 94 e7                                      ldr r3, [r4, r3]
004539a4  00 30 93 e5                                      ldr r3, [r3]
004539a8  02 00 53 e3                                      cmp r3, #2
004539ac  00 30 a0 03                                      moveq r3, #0
004539b0  00 30 83 05                                      streq r3, [r3]
004539b4  01 00 00 0a                                      beq #0x4539c0
004539b8  01 00 53 e3                                      cmp r3, #1
004539bc  74 00 00 0a                                      beq #0x453b94
004539c0  e8 81 97 e5                                      ldr r8, [r7, #0x1e8]
004539c4  00 00 58 e3                                      cmp r8, #0
004539c8  6b 00 00 0a                                      beq #0x453b7c
004539cc  08 a0 96 e5                                      ldr sl, [r6, #8]
004539d0  0c 00 96 e5                                      ldr r0, [r6, #0xc]
004539d4  0a 10 a0 e1                                      mov r1, sl
004539d8  73 ea fa eb                                      bl #0x30e3ac
004539dc  18 00 8d e5                                      str r0, [sp, #0x18]
004539e0  00 90 96 e5                                      ldr sb, [r6]
004539e4  04 00 96 e5                                      ldr r0, [r6, #4]
004539e8  09 10 a0 e1                                      mov r1, sb
004539ec  6e ea fa eb                                      bl #0x30e3ac
004539f0  3f 14 a0 e3                                      mov r1, #0x3f000000
004539f4  00 b0 a0 e1                                      mov fp, r0
004539f8  db ec fa eb                                      bl #0x30ed6c
004539fc  00 10 a0 e1                                      mov r1, r0
00453a00  09 00 a0 e1                                      mov r0, sb
00453a04  66 ec fa eb                                      bl #0x30eba4
00453a08  3f 14 a0 e3                                      mov r1, #0x3f000000
00453a0c  24 00 8d e5                                      str r0, [sp, #0x24]
00453a10  18 00 9d e5                                      ldr r0, [sp, #0x18]
00453a14  d4 ec fa eb                                      bl #0x30ed6c
00453a18  00 10 a0 e1                                      mov r1, r0
00453a1c  0a 00 a0 e1                                      mov r0, sl
00453a20  5f ec fa eb                                      bl #0x30eba4
00453a24  20 00 8d e5                                      str r0, [sp, #0x20]
00453a28  90 10 98 e5                                      ldr r1, [r8, #0x90]
00453a2c  dc 01 97 e5                                      ldr r0, [r7, #0x1dc]
00453a30  5b ec fa eb                                      bl #0x30eba4
00453a34  10 10 9d e5                                      ldr r1, [sp, #0x10]
00453a38  00 80 a0 e1                                      mov r8, r0
00453a3c  32 eb fa eb                                      bl #0x30e70c
00453a40  0e 30 45 e2                                      sub r3, r5, #0xe
00453a44  00 00 50 e3                                      cmp r0, #0
00453a48  10 80 9d 15                                      ldrne r8, [sp, #0x10]
00453a4c  03 00 53 e3                                      cmp r3, #3
00453a50  00 00 a0 83                                      movhi r0, #0
00453a54  4a 00 00 9a                                      bls #0x453b84
00453a58  70 31 9f e5                                      ldr r3, [pc, #0x170]
00453a5c  03 30 94 e7                                      ldr r3, [r4, r3]
00453a60  00 10 93 e5                                      ldr r1, [r3]
00453a64  c0 ec fa eb                                      bl #0x30ed6c
00453a68  0c 30 a0 e3                                      mov r3, #0xc
00453a6c  93 75 25 e0                                      mla r5, r3, r5, r7
00453a70  1c 00 8d e5                                      str r0, [sp, #0x1c]
00453a74  04 41 95 e5                                      ldr r4, [r5, #0x104]
00453a78  08 a1 95 e5                                      ldr sl, [r5, #0x108]
00453a7c  04 00 5a e1                                      cmp sl, r4
00453a80  3d 00 00 0a                                      beq #0x453b7c
00453a84  cd 1c 0c e3                                      movw r1, #0xcccd
00453a88  08 00 a0 e1                                      mov r0, r8
00453a8c  cc 1d 43 e3                                      movt r1, #0x3dcc
00453a90  18 ea fa eb                                      bl #0x30e2f8
00453a94  00 00 50 e3                                      cmp r0, #0
00453a98  00 60 a0 e3                                      mov r6, #0
00453a9c  50 30 8d e2                                      add r3, sp, #0x50
00453aa0  01 60 a0 13                                      movne r6, #1
00453aa4  44 c0 8d e2                                      add ip, sp, #0x44
00453aa8  76 60 ef e6                                      uxtb r6, r6
00453aac  10 30 8d e5                                      str r3, [sp, #0x10]
00453ab0  14 c0 8d e5                                      str ip, [sp, #0x14]
00453ab4  2c 50 8d e2                                      add r5, sp, #0x2c
00453ab8  0a 90 a0 e1                                      mov sb, sl
00453abc  00 00 56 e3                                      cmp r6, #0
00453ac0  07 10 a0 e1                                      mov r1, r7
00453ac4  14 20 9d e5                                      ldr r2, [sp, #0x14]
00453ac8  0b 30 a0 e1                                      mov r3, fp
00453acc  10 00 9d e5                                      ldr r0, [sp, #0x10]
00453ad0  25 00 00 0a                                      beq #0x453b6c
00453ad4  04 c0 94 e5                                      ldr ip, [r4, #4]
00453ad8  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00453adc  44 c0 8d e5                                      str ip, [sp, #0x44]
00453ae0  08 c0 94 e5                                      ldr ip, [r4, #8]
00453ae4  48 c0 8d e5                                      str ip, [sp, #0x48]
00453ae8  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00453aec  00 e0 8d e5                                      str lr, [sp]
00453af0  24 e0 9d e5                                      ldr lr, [sp, #0x24]
00453af4  4c c0 8d e5                                      str ip, [sp, #0x4c]
00453af8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00453afc  04 e0 8d e5                                      str lr, [sp, #4]
00453b00  08 c0 8d e5                                      str ip, [sp, #8]
00453b04  64 ff ff eb                                      bl #0x45389c
00453b08  50 00 9d e5                                      ldr r0, [sp, #0x50]
00453b0c  6e ea fa eb                                      bl #0x30e4cc
00453b10  00 a0 a0 e1                                      mov sl, r0
00453b14  54 00 9d e5                                      ldr r0, [sp, #0x54]
00453b18  6b ea fa eb                                      bl #0x30e4cc
00453b1c  00 10 94 e5                                      ldr r1, [r4]
00453b20  00 30 a0 e1                                      mov r3, r0
00453b24  0a 20 a0 e1                                      mov r2, sl
00453b28  04 00 97 e5                                      ldr r0, [r7, #4]
00453b2c  2f 5a 0d eb                                      bl #0x7aa3f0
00453b30  00 30 94 e5                                      ldr r3, [r4]
00453b34  05 e0 a0 e1                                      mov lr, r5
00453b38  4c c0 93 e5                                      ldr ip, [r3, #0x4c]
00453b3c  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00453b40  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
00453b44  03 00 9c e8                                      ldm ip, {r0, r1}
00453b48  08 20 a0 e1                                      mov r2, r8
00453b4c  03 00 8e e8                                      stm lr, {r0, r1}
00453b50  08 10 a0 e1                                      mov r1, r8
00453b54  05 00 a0 e1                                      mov r0, r5
00453b58  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00453b5c  6f 0b 0d eb                                      bl #0x796920
00453b60  00 00 94 e5                                      ldr r0, [r4]
00453b64  05 10 a0 e1                                      mov r1, r5
00453b68  a2 f9 fe eb                                      bl #0x4121f8
00453b6c  10 30 94 e4                                      ldr r3, [r4], #0x10
00453b70  09 00 54 e1                                      cmp r4, sb
00453b74  9b 60 c3 e5                                      strb r6, [r3, #0x9b]
00453b78  cf ff ff 1a                                      bne #0x453abc
00453b7c  5c d0 8d e2                                      add sp, sp, #0x5c
00453b80  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00453b84  48 20 9f e5                                      ldr r2, [pc, #0x48]
00453b88  02 20 8f e0                                      add r2, pc, r2
00453b8c  03 01 92 e7                                      ldr r0, [r2, r3, lsl #2]
00453b90  b0 ff ff ea                                      b #0x453a58
00453b94  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00453b98  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00453b9c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00453ba0  00 00 94 e7                                      ldr r0, [r4, r0]
00453ba4  38 30 9f e5                                      ldr r3, [pc, #0x38]
00453ba8  93 c2 00 e3                                      movw ip, #0x293
00453bac  01 10 8f e0                                      add r1, pc, r1
00453bb0  02 20 8f e0                                      add r2, pc, r2
00453bb4  03 30 8f e0                                      add r3, pc, r3
00453bb8  a8 00 80 e2                                      add r0, r0, #0xa8
00453bbc  00 c0 8d e5                                      str ip, [sp]
00453bc0  0f e9 fa eb                                      bl #0x30e004
00453bc4  7d ff ff ea                                      b #0x4539c0
; mapping-symbol data/literal pool
00453bc8  0c 11 54 00 c0 39 00 00 cc 27 00 00 ac 91 47 00  .byte 0x0c, 0x11, 0x54, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xcc, 0x27, 0x00, 0x00, 0xac, 0x91, 0x47, 0x00
00453bd8  c0 19 00 00 2c a8 46 00 b8 91 47 00 cc 91 47 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x2c, 0xa8, 0x46, 0x00, 0xb8, 0x91, 0x47, 0x00, 0xcc, 0x91, 0x47, 0x00

; FUNCTION 0x00453be8, declared_size=84, range_size=84, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZNK16MenuCharMenu_Map13IsInsideRoomsERK7Point3DIfEb
; demangled: MenuCharMenu_Map::IsInsideRooms(Point3D<float> const&, bool) const
; decoder-mode: arm
00453be8  70 40 2d e9                                      push {r4, r5, r6, lr}
00453bec  00 00 52 e3                                      cmp r2, #0
00453bf0  00 50 a0 e1                                      mov r5, r0
00453bf4  c4 40 b5 15                                      ldrne r4, [r5, #0xc4]!
00453bf8  cc 40 b5 05                                      ldreq r4, [r5, #0xcc]!
00453bfc  01 60 a0 e1                                      mov r6, r1
00453c00  04 00 55 e1                                      cmp r5, r4
00453c04  03 00 00 1a                                      bne #0x453c18
00453c08  09 00 00 ea                                      b #0x453c34
00453c0c  00 40 94 e5                                      ldr r4, [r4]
00453c10  05 00 54 e1                                      cmp r4, r5
00453c14  06 00 00 0a                                      beq #0x453c34
00453c18  08 00 94 e5                                      ldr r0, [r4, #8]
00453c1c  06 10 a0 e1                                      mov r1, r6
00453c20  29 0a fd eb                                      bl #0x3964cc
00453c24  00 00 50 e3                                      cmp r0, #0
00453c28  f7 ff ff 0a                                      beq #0x453c0c
00453c2c  01 00 a0 e3                                      mov r0, #1
00453c30  70 80 bd e8                                      pop {r4, r5, r6, pc}
00453c34  00 00 a0 e3                                      mov r0, #0
00453c38  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00453c3c, declared_size=144, range_size=144, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map4InitEv
; demangled: MenuCharMenu_Map::Init()
; decoder-mode: arm
00453c3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00453c40  00 40 a0 e1                                      mov r4, r0
00453c44  90 63 ff eb                                      bl #0x42ca8c
00453c48  04 10 a0 e1                                      mov r1, r4
00453c4c  90 6c ff eb                                      bl #0x42ee94
00453c50  04 00 a0 e1                                      mov r0, r4
00453c54  04 50 94 e5                                      ldr r5, [r4, #4]
00453c58  fb 38 ff eb                                      bl #0x42204c
00453c5c  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00453c60  00 20 a0 e1                                      mov r2, r0
00453c64  05 00 a0 e1                                      mov r0, r5
00453c68  01 10 8f e0                                      add r1, pc, r1
00453c6c  84 53 0d eb                                      bl #0x7a8a84
00453c70  f8 00 84 e5                                      str r0, [r4, #0xf8]
00453c74  04 00 a0 e1                                      mov r0, r4
00453c78  04 50 94 e5                                      ldr r5, [r4, #4]
00453c7c  f2 38 ff eb                                      bl #0x42204c
00453c80  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00453c84  00 20 a0 e1                                      mov r2, r0
00453c88  05 00 a0 e1                                      mov r0, r5
00453c8c  01 10 8f e0                                      add r1, pc, r1
00453c90  7b 53 0d eb                                      bl #0x7a8a84
00453c94  fc 00 84 e5                                      str r0, [r4, #0xfc]
00453c98  04 00 a0 e1                                      mov r0, r4
00453c9c  04 50 94 e5                                      ldr r5, [r4, #4]
00453ca0  e9 38 ff eb                                      bl #0x42204c
00453ca4  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00453ca8  00 20 a0 e1                                      mov r2, r0
00453cac  05 00 a0 e1                                      mov r0, r5
00453cb0  01 10 8f e0                                      add r1, pc, r1
00453cb4  72 53 0d eb                                      bl #0x7a8a84
00453cb8  00 01 84 e5                                      str r0, [r4, #0x100]
00453cbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00453cc0  b8 91 47 00 a4 91 47 00 10 4c 47 00              .byte 0xb8, 0x91, 0x47, 0x00, 0xa4, 0x91, 0x47, 0x00, 0x10, 0x4c, 0x47, 0x00

; FUNCTION 0x00453ccc, declared_size=216, range_size=216, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_MapC1Ev
; demangled: MenuCharMenu_Map::MenuCharMenu_Map()
; decoder-mode: arm
00453ccc  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00453cd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00453cd4  01 10 8f e0                                      add r1, pc, r1
00453cd8  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
00453cdc  00 40 a0 e1                                      mov r4, r0
00453ce0  46 4d ff eb                                      bl #0x427200
00453ce4  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00453ce8  05 50 8f e0                                      add r5, pc, r5
00453cec  bf 04 a0 e3                                      mov r0, #0xbf000000
00453cf0  03 30 95 e7                                      ldr r3, [r5, r3]
00453cf4  fe 15 a0 e3                                      mov r1, #0x3f800000
00453cf8  00 20 a0 e3                                      mov r2, #0
00453cfc  08 c0 83 e2                                      add ip, r3, #8
00453d00  04 30 a0 e1                                      mov r3, r4
00453d04  c4 c0 83 e4                                      str ip, [r3], #0xc4
00453d08  02 05 80 e2                                      add r0, r0, #0x800000
00453d0c  cc c0 84 e2                                      add ip, r4, #0xcc
00453d10  c8 30 84 e5                                      str r3, [r4, #0xc8]
00453d14  e8 10 84 e5                                      str r1, [r4, #0xe8]
00453d18  f4 20 84 e5                                      str r2, [r4, #0xf4]
00453d1c  c4 30 84 e5                                      str r3, [r4, #0xc4]
00453d20  e0 10 84 e5                                      str r1, [r4, #0xe0]
00453d24  e4 10 84 e5                                      str r1, [r4, #0xe4]
00453d28  ec 20 84 e5                                      str r2, [r4, #0xec]
00453d2c  f0 20 84 e5                                      str r2, [r4, #0xf0]
00453d30  d0 c0 84 e5                                      str ip, [r4, #0xd0]
00453d34  dc 00 84 e5                                      str r0, [r4, #0xdc]
00453d38  cc c0 84 e5                                      str ip, [r4, #0xcc]
00453d3c  d4 00 84 e5                                      str r0, [r4, #0xd4]
00453d40  d8 00 84 e5                                      str r0, [r4, #0xd8]
00453d44  41 3f 84 e2                                      add r3, r4, #0x104
00453d48  77 1f 84 e2                                      add r1, r4, #0x1dc
00453d4c  00 20 a0 e3                                      mov r2, #0
00453d50  00 20 83 e5                                      str r2, [r3]
00453d54  04 20 83 e5                                      str r2, [r3, #4]
00453d58  08 20 83 e5                                      str r2, [r3, #8]
00453d5c  0c 30 83 e2                                      add r3, r3, #0xc
00453d60  01 00 53 e1                                      cmp r3, r1
00453d64  f9 ff ff 1a                                      bne #0x453d50
00453d68  fe 35 a0 e3                                      mov r3, #0x3f800000
00453d6c  66 39 83 e2                                      add r3, r3, #0x198000
00453d70  dc 31 84 e5                                      str r3, [r4, #0x1dc]
00453d74  fb 35 a0 e3                                      mov r3, #0x3ec00000
00453d78  03 37 83 e2                                      add r3, r3, #0xc0000
00453d7c  04 00 a0 e1                                      mov r0, r4
00453d80  e8 21 84 e5                                      str r2, [r4, #0x1e8]
00453d84  e0 31 84 e5                                      str r3, [r4, #0x1e0]
00453d88  e4 21 c4 e5                                      strb r2, [r4, #0x1e4]
00453d8c  aa ff ff eb                                      bl #0x453c3c
00453d90  04 00 a0 e1                                      mov r0, r4
00453d94  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00453d98  24 7a 47 00 a8 0d 54 00 d4 0d 00 00              .byte 0x24, 0x7a, 0x47, 0x00, 0xa8, 0x0d, 0x54, 0x00, 0xd4, 0x0d, 0x00, 0x00

; FUNCTION 0x00453da4, declared_size=132, range_size=132, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map11GetInstanceEv
; demangled: MenuCharMenu_Map::GetInstance()
; decoder-mode: arm
00453da4  70 40 2d e9                                      push {r4, r5, r6, lr}
00453da8  64 50 9f e5                                      ldr r5, [pc, #0x64]
00453dac  64 40 9f e5                                      ldr r4, [pc, #0x64]
00453db0  05 50 8f e0                                      add r5, pc, r5
00453db4  00 30 95 e5                                      ldr r3, [r5]
00453db8  04 40 8f e0                                      add r4, pc, r4
00453dbc  01 00 13 e3                                      tst r3, #1
00453dc0  03 00 00 0a                                      beq #0x453dd4
00453dc4  50 00 9f e5                                      ldr r0, [pc, #0x50]
00453dc8  00 00 8f e0                                      add r0, pc, r0
00453dcc  04 00 80 e2                                      add r0, r0, #4
00453dd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00453dd4  05 00 a0 e1                                      mov r0, r5
00453dd8  63 ea fa eb                                      bl #0x30e76c
00453ddc  00 00 50 e3                                      cmp r0, #0
00453de0  f7 ff ff 0a                                      beq #0x453dc4
00453de4  04 60 85 e2                                      add r6, r5, #4
00453de8  06 00 a0 e1                                      mov r0, r6
00453dec  b6 ff ff eb                                      bl #0x453ccc
00453df0  05 00 a0 e1                                      mov r0, r5
00453df4  10 eb fa eb                                      bl #0x30ea3c
00453df8  20 30 9f e5                                      ldr r3, [pc, #0x20]
00453dfc  06 00 a0 e1                                      mov r0, r6
00453e00  03 10 94 e7                                      ldr r1, [r4, r3]
00453e04  18 30 9f e5                                      ldr r3, [pc, #0x18]
00453e08  03 20 94 e7                                      ldr r2, [r4, r3]
00453e0c  3c e9 fa eb                                      bl #0x30e304
00453e10  eb ff ff ea                                      b #0x453dc4
; mapping-symbol data/literal pool
00453e14  04 20 55 00 d8 0c 54 00 ec 1f 55 00 4c 26 00 00  .byte 0x04, 0x20, 0x55, 0x00, 0xd8, 0x0c, 0x54, 0x00, 0xec, 0x1f, 0x55, 0x00, 0x4c, 0x26, 0x00, 0x00
00453e24  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00453e28, declared_size=216, range_size=216, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_MapC2Ev
; demangled: MenuCharMenu_Map::MenuCharMenu_Map()
; decoder-mode: arm
00453e28  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00453e2c  70 40 2d e9                                      push {r4, r5, r6, lr}
00453e30  01 10 8f e0                                      add r1, pc, r1
00453e34  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
00453e38  00 40 a0 e1                                      mov r4, r0
00453e3c  ef 4c ff eb                                      bl #0x427200
00453e40  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00453e44  05 50 8f e0                                      add r5, pc, r5
00453e48  bf 04 a0 e3                                      mov r0, #0xbf000000
00453e4c  03 30 95 e7                                      ldr r3, [r5, r3]
00453e50  fe 15 a0 e3                                      mov r1, #0x3f800000
00453e54  00 20 a0 e3                                      mov r2, #0
00453e58  08 c0 83 e2                                      add ip, r3, #8
00453e5c  04 30 a0 e1                                      mov r3, r4
00453e60  c4 c0 83 e4                                      str ip, [r3], #0xc4
00453e64  02 05 80 e2                                      add r0, r0, #0x800000
00453e68  cc c0 84 e2                                      add ip, r4, #0xcc
00453e6c  c8 30 84 e5                                      str r3, [r4, #0xc8]
00453e70  e8 10 84 e5                                      str r1, [r4, #0xe8]
00453e74  f4 20 84 e5                                      str r2, [r4, #0xf4]
00453e78  c4 30 84 e5                                      str r3, [r4, #0xc4]
00453e7c  e0 10 84 e5                                      str r1, [r4, #0xe0]
00453e80  e4 10 84 e5                                      str r1, [r4, #0xe4]
00453e84  ec 20 84 e5                                      str r2, [r4, #0xec]
00453e88  f0 20 84 e5                                      str r2, [r4, #0xf0]
00453e8c  d0 c0 84 e5                                      str ip, [r4, #0xd0]
00453e90  dc 00 84 e5                                      str r0, [r4, #0xdc]
00453e94  cc c0 84 e5                                      str ip, [r4, #0xcc]
00453e98  d4 00 84 e5                                      str r0, [r4, #0xd4]
00453e9c  d8 00 84 e5                                      str r0, [r4, #0xd8]
00453ea0  41 3f 84 e2                                      add r3, r4, #0x104
00453ea4  77 1f 84 e2                                      add r1, r4, #0x1dc
00453ea8  00 20 a0 e3                                      mov r2, #0
00453eac  00 20 83 e5                                      str r2, [r3]
00453eb0  04 20 83 e5                                      str r2, [r3, #4]
00453eb4  08 20 83 e5                                      str r2, [r3, #8]
00453eb8  0c 30 83 e2                                      add r3, r3, #0xc
00453ebc  01 00 53 e1                                      cmp r3, r1
00453ec0  f9 ff ff 1a                                      bne #0x453eac
00453ec4  fe 35 a0 e3                                      mov r3, #0x3f800000
00453ec8  66 39 83 e2                                      add r3, r3, #0x198000
00453ecc  dc 31 84 e5                                      str r3, [r4, #0x1dc]
00453ed0  fb 35 a0 e3                                      mov r3, #0x3ec00000
00453ed4  03 37 83 e2                                      add r3, r3, #0xc0000
00453ed8  04 00 a0 e1                                      mov r0, r4
00453edc  e8 21 84 e5                                      str r2, [r4, #0x1e8]
00453ee0  e0 31 84 e5                                      str r3, [r4, #0x1e0]
00453ee4  e4 21 c4 e5                                      strb r2, [r4, #0x1e4]
00453ee8  53 ff ff eb                                      bl #0x453c3c
00453eec  04 00 a0 e1                                      mov r0, r4
00453ef0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00453ef4  c8 78 47 00 4c 0c 54 00 d4 0d 00 00              .byte 0xc8, 0x78, 0x47, 0x00, 0x4c, 0x0c, 0x54, 0x00, 0xd4, 0x0d, 0x00, 0x00

; FUNCTION 0x00454030, declared_size=216, range_size=216, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map14RenderAllIconsERKN7gameswf4rectE
; demangled: MenuCharMenu_Map::RenderAllIcons(gameswf::rect const&)
; decoder-mode: arm
00454030  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00454034  c4 b0 9f e5                                      ldr fp, [pc, #0xc4]
00454038  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0045403c  0c d0 4d e2                                      sub sp, sp, #0xc
00454040  0b b0 8f e0                                      add fp, pc, fp
00454044  02 30 9b e7                                      ldr r3, [fp, r2]
00454048  00 20 8d e5                                      str r2, [sp]
0045404c  00 80 a0 e1                                      mov r8, r0
00454050  10 20 93 e5                                      ldr r2, [r3, #0x10]
00454054  01 a0 a0 e1                                      mov sl, r1
00454058  00 40 a0 e3                                      mov r4, #0
0045405c  04 20 8d e5                                      str r2, [sp, #4]
00454060  00 90 93 e5                                      ldr sb, [r3]
00454064  e0 00 93 e9                                      ldmib r3, {r5, r6, r7}
00454068  16 00 00 ea                                      b #0x4540c8
0045406c  06 00 54 e1                                      cmp r4, r6
00454070  18 00 00 0a                                      beq #0x4540d8
00454074  07 00 54 e1                                      cmp r4, r7
00454078  16 00 00 0a                                      beq #0x4540d8
0045407c  04 30 9d e5                                      ldr r3, [sp, #4]
00454080  03 00 54 e1                                      cmp r4, r3
00454084  13 00 00 0a                                      beq #0x4540d8
00454088  00 30 9d e5                                      ldr r3, [sp]
0045408c  03 20 9b e7                                      ldr r2, [fp, r3]
00454090  00 30 a0 e3                                      mov r3, #0
00454094  14 10 92 e5                                      ldr r1, [r2, #0x14]
00454098  01 00 54 e1                                      cmp r4, r1
0045409c  0d 00 00 0a                                      beq #0x4540d8
004540a0  18 20 92 e5                                      ldr r2, [r2, #0x18]
004540a4  02 00 54 e1                                      cmp r4, r2
004540a8  0a 00 00 0a                                      beq #0x4540d8
004540ac  04 10 a0 e1                                      mov r1, r4
004540b0  08 00 a0 e1                                      mov r0, r8
004540b4  01 40 84 e2                                      add r4, r4, #1
004540b8  0a 20 a0 e1                                      mov r2, sl
004540bc  2c fe ff eb                                      bl #0x453974
004540c0  12 00 54 e3                                      cmp r4, #0x12
004540c4  0b 00 00 0a                                      beq #0x4540f8
004540c8  09 00 54 e1                                      cmp r4, sb
004540cc  01 00 00 0a                                      beq #0x4540d8
004540d0  05 00 54 e1                                      cmp r4, r5
004540d4  e4 ff ff 1a                                      bne #0x45406c
004540d8  04 10 a0 e1                                      mov r1, r4
004540dc  e0 31 98 e5                                      ldr r3, [r8, #0x1e0]
004540e0  01 40 84 e2                                      add r4, r4, #1
004540e4  08 00 a0 e1                                      mov r0, r8
004540e8  0a 20 a0 e1                                      mov r2, sl
004540ec  20 fe ff eb                                      bl #0x453974
004540f0  12 00 54 e3                                      cmp r4, #0x12
004540f4  f3 ff ff 1a                                      bne #0x4540c8
004540f8  0c d0 8d e2                                      add sp, sp, #0xc
004540fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00454100  50 0a 54 00 e4 4a 00 00                          .byte 0x50, 0x0a, 0x54, 0x00, 0xe4, 0x4a, 0x00, 0x00

; FUNCTION 0x00454108, declared_size=448, range_size=448, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map9RenderMapERN7gameswf12render_stateEPv
; demangled: MenuCharMenu_Map::RenderMap(gameswf::render_state&, void*)
; decoder-mode: arm
00454108  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045410c  ac 51 9f e5                                      ldr r5, [pc, #0x1ac]
00454110  3c d0 4d e2                                      sub sp, sp, #0x3c
00454114  a8 81 9f e5                                      ldr r8, [pc, #0x1a8]
00454118  28 a0 8d e2                                      add sl, sp, #0x28
0045411c  01 60 a0 e1                                      mov r6, r1
00454120  05 50 8f e0                                      add r5, pc, r5
00454124  00 11 91 e5                                      ldr r1, [r1, #0x100]
00454128  0a 00 a0 e1                                      mov r0, sl
0045412c  52 0a ff eb                                      bl #0x416a7c
00454130  08 40 95 e7                                      ldr r4, [r5, r8]
00454134  04 00 96 e5                                      ldr r0, [r6, #4]
00454138  10 30 94 e5                                      ldr r3, [r4, #0x10]
0045413c  10 70 93 e5                                      ldr r7, [r3, #0x10]
00454140  cc 30 97 e5                                      ldr r3, [r7, #0xcc]
00454144  04 30 13 e5                                      ldr r3, [r3, #-4]
00454148  14 20 93 e5                                      ldr r2, [r3, #0x14]
0045414c  18 20 8d e5                                      str r2, [sp, #0x18]
00454150  18 20 93 e5                                      ldr r2, [r3, #0x18]
00454154  1c 20 8d e5                                      str r2, [sp, #0x1c]
00454158  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0045415c  20 20 8d e5                                      str r2, [sp, #0x20]
00454160  20 30 93 e5                                      ldr r3, [r3, #0x20]
00454164  24 30 8d e5                                      str r3, [sp, #0x24]
00454168  cf 4e 0d eb                                      bl #0x7a7cac
0045416c  f1 08 ff eb                                      bl #0x416538
00454170  00 b0 a0 e1                                      mov fp, r0
00454174  04 00 96 e5                                      ldr r0, [r6, #4]
00454178  cb 4e 0d eb                                      bl #0x7a7cac
0045417c  fd 08 ff eb                                      bl #0x416578
00454180  0b 10 a0 e1                                      mov r1, fp
00454184  00 90 a0 e1                                      mov sb, r0
00454188  28 00 9d e5                                      ldr r0, [sp, #0x28]
0045418c  c0 ea fa eb                                      bl #0x30ec94
00454190  cd e8 fa eb                                      bl #0x30e4cc
00454194  0b 10 a0 e1                                      mov r1, fp
00454198  00 20 a0 e1                                      mov r2, r0
0045419c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
004541a0  00 20 8d e5                                      str r2, [sp]
004541a4  ba ea fa eb                                      bl #0x30ec94
004541a8  c7 e8 fa eb                                      bl #0x30e4cc
004541ac  09 10 a0 e1                                      mov r1, sb
004541b0  00 30 a0 e1                                      mov r3, r0
004541b4  30 00 9d e5                                      ldr r0, [sp, #0x30]
004541b8  04 30 8d e5                                      str r3, [sp, #4]
004541bc  b4 ea fa eb                                      bl #0x30ec94
004541c0  c1 e8 fa eb                                      bl #0x30e4cc
004541c4  09 10 a0 e1                                      mov r1, sb
004541c8  00 b0 a0 e1                                      mov fp, r0
004541cc  34 00 9d e5                                      ldr r0, [sp, #0x34]
004541d0  af ea fa eb                                      bl #0x30ec94
004541d4  bc e8 fa eb                                      bl #0x30e4cc
004541d8  0c 00 9d e8                                      ldm sp, {r2, r3}
004541dc  14 00 8d e5                                      str r0, [sp, #0x14]
004541e0  08 20 8d e5                                      str r2, [sp, #8]
004541e4  0c b0 8d e5                                      str fp, [sp, #0xc]
004541e8  10 30 8d e5                                      str r3, [sp, #0x10]
004541ec  cc 30 97 e5                                      ldr r3, [r7, #0xcc]
004541f0  08 10 8d e2                                      add r1, sp, #8
004541f4  04 30 13 e5                                      ldr r3, [r3, #-4]
004541f8  03 00 a0 e1                                      mov r0, r3
004541fc  00 30 93 e5                                      ldr r3, [r3]
00454200  0f e0 a0 e1                                      mov lr, pc
00454204  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00454208  06 00 a0 e1                                      mov r0, r6
0045420c  be fb ff eb                                      bl #0x45310c
00454210  10 30 94 e5                                      ldr r3, [r4, #0x10]
00454214  04 00 a0 e1                                      mov r0, r4
00454218  1c b0 93 e5                                      ldr fp, [r3, #0x1c]
0045421c  00 30 9b e5                                      ldr r3, [fp]
00454220  60 90 93 e5                                      ldr sb, [r3, #0x60]
00454224  10 2d fb eb                                      bl #0x31f66c
00454228  2c e8 fa eb                                      bl #0x30e2e0
0045422c  00 20 a0 e3                                      mov r2, #0
00454230  00 10 a0 e1                                      mov r1, r0
00454234  0b 00 a0 e1                                      mov r0, fp
00454238  39 ff 2f e1                                      blx sb
0045423c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00454240  00 20 a0 e3                                      mov r2, #0
00454244  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00454248  50 22 c3 e5                                      strb r2, [r3, #0x250]
0045424c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00454250  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00454254  e4 20 93 e5                                      ldr r2, [r3, #0xe4]
00454258  00 00 52 e3                                      cmp r2, #0
0045425c  0c 00 00 0a                                      beq #0x454294
00454260  8c 12 93 e5                                      ldr r1, [r3, #0x28c]
00454264  00 00 51 e3                                      cmp r1, #0
00454268  03 00 00 0a                                      beq #0x45427c
0045426c  03 00 a0 e1                                      mov r0, r3
00454270  00 30 93 e5                                      ldr r3, [r3]
00454274  0f e0 a0 e1                                      mov lr, pc
00454278  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0045427c  06 00 a0 e1                                      mov r0, r6
00454280  0a 10 a0 e1                                      mov r1, sl
00454284  69 ff ff eb                                      bl #0x454030
00454288  08 30 95 e7                                      ldr r3, [r5, r8]
0045428c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00454290  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00454294  01 20 a0 e3                                      mov r2, #1
00454298  50 22 c3 e5                                      strb r2, [r3, #0x250]
0045429c  cc 30 97 e5                                      ldr r3, [r7, #0xcc]
004542a0  18 10 8d e2                                      add r1, sp, #0x18
004542a4  04 30 13 e5                                      ldr r3, [r3, #-4]
004542a8  03 00 a0 e1                                      mov r0, r3
004542ac  00 30 93 e5                                      ldr r3, [r3]
004542b0  0f e0 a0 e1                                      mov lr, pc
004542b4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004542b8  3c d0 8d e2                                      add sp, sp, #0x3c
004542bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
004542c0  70 09 54 00 f4 37 00 00                          .byte 0x70, 0x09, 0x54, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00454368, declared_size=136, range_size=136, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_MapD1Ev
; demangled: MenuCharMenu_Map::~MenuCharMenu_Map()
; decoder-mode: arm
00454368  70 40 2d e9                                      push {r4, r5, r6, lr}
0045436c  74 30 9f e5                                      ldr r3, [pc, #0x74]
00454370  74 20 9f e5                                      ldr r2, [pc, #0x74]
00454374  e8 11 90 e5                                      ldr r1, [r0, #0x1e8]
00454378  03 30 8f e0                                      add r3, pc, r3
0045437c  02 20 93 e7                                      ldr r2, [r3, r2]
00454380  00 00 51 e3                                      cmp r1, #0
00454384  00 60 a0 e1                                      mov r6, r0
00454388  08 20 82 e2                                      add r2, r2, #8
0045438c  00 20 80 e5                                      str r2, [r0]
00454390  05 00 00 0a                                      beq #0x4543ac
00454394  00 30 91 e5                                      ldr r3, [r1]
00454398  01 00 a0 e1                                      mov r0, r1
0045439c  0f e0 a0 e1                                      mov lr, pc
004543a0  04 f0 93 e5                                      ldr pc, [r3, #4]
004543a4  00 30 a0 e3                                      mov r3, #0
004543a8  e8 31 86 e5                                      str r3, [r6, #0x1e8]
004543ac  41 5f 86 e2                                      add r5, r6, #0x104
004543b0  77 4f 86 e2                                      add r4, r6, #0x1dc
004543b4  0c 40 44 e2                                      sub r4, r4, #0xc
004543b8  04 00 a0 e1                                      mov r0, r4
004543bc  d9 ff ff eb                                      bl #0x454328
004543c0  05 00 54 e1                                      cmp r4, r5
004543c4  fa ff ff 1a                                      bne #0x4543b4
004543c8  cc 00 86 e2                                      add r0, r6, #0xcc
004543cc  c5 ff ff eb                                      bl #0x4542e8
004543d0  c4 00 86 e2                                      add r0, r6, #0xc4
004543d4  c3 ff ff eb                                      bl #0x4542e8
004543d8  06 00 a0 e1                                      mov r0, r6
004543dc  64 39 ff eb                                      bl #0x422974
004543e0  06 00 a0 e1                                      mov r0, r6
004543e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004543e8  18 07 54 00 d4 0d 00 00                          .byte 0x18, 0x07, 0x54, 0x00, 0xd4, 0x0d, 0x00, 0x00

; FUNCTION 0x004543f0, declared_size=28, range_size=28, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_MapD0Ev
; demangled: MenuCharMenu_Map::~MenuCharMenu_Map()
; decoder-mode: arm
004543f0  10 40 2d e9                                      push {r4, lr}
004543f4  00 40 a0 e1                                      mov r4, r0
004543f8  da ff ff eb                                      bl #0x454368
004543fc  04 00 a0 e1                                      mov r0, r4
00454400  0e f0 fa eb                                      bl #0x310440
00454404  04 00 a0 e1                                      mov r0, r4
00454408  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0045440c, declared_size=136, range_size=136, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_MapD2Ev
; demangled: MenuCharMenu_Map::~MenuCharMenu_Map()
; decoder-mode: arm
0045440c  70 40 2d e9                                      push {r4, r5, r6, lr}
00454410  74 30 9f e5                                      ldr r3, [pc, #0x74]
00454414  74 20 9f e5                                      ldr r2, [pc, #0x74]
00454418  e8 11 90 e5                                      ldr r1, [r0, #0x1e8]
0045441c  03 30 8f e0                                      add r3, pc, r3
00454420  02 20 93 e7                                      ldr r2, [r3, r2]
00454424  00 00 51 e3                                      cmp r1, #0
00454428  00 60 a0 e1                                      mov r6, r0
0045442c  08 20 82 e2                                      add r2, r2, #8
00454430  00 20 80 e5                                      str r2, [r0]
00454434  05 00 00 0a                                      beq #0x454450
00454438  00 30 91 e5                                      ldr r3, [r1]
0045443c  01 00 a0 e1                                      mov r0, r1
00454440  0f e0 a0 e1                                      mov lr, pc
00454444  04 f0 93 e5                                      ldr pc, [r3, #4]
00454448  00 30 a0 e3                                      mov r3, #0
0045444c  e8 31 86 e5                                      str r3, [r6, #0x1e8]
00454450  41 5f 86 e2                                      add r5, r6, #0x104
00454454  77 4f 86 e2                                      add r4, r6, #0x1dc
00454458  0c 40 44 e2                                      sub r4, r4, #0xc
0045445c  04 00 a0 e1                                      mov r0, r4
00454460  b0 ff ff eb                                      bl #0x454328
00454464  05 00 54 e1                                      cmp r4, r5
00454468  fa ff ff 1a                                      bne #0x454458
0045446c  cc 00 86 e2                                      add r0, r6, #0xcc
00454470  9c ff ff eb                                      bl #0x4542e8
00454474  c4 00 86 e2                                      add r0, r6, #0xc4
00454478  9a ff ff eb                                      bl #0x4542e8
0045447c  06 00 a0 e1                                      mov r0, r6
00454480  3b 39 ff eb                                      bl #0x422974
00454484  06 00 a0 e1                                      mov r0, r6
00454488  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0045448c  74 06 54 00 d4 0d 00 00                          .byte 0x74, 0x06, 0x54, 0x00, 0xd4, 0x0d, 0x00, 0x00

; FUNCTION 0x00454504, declared_size=936, range_size=936, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map13DuplicateIconENS_9EIconTypeERKN6glitch4core8vector3dIfEE
; demangled: MenuCharMenu_Map::DuplicateIcon(MenuCharMenu_Map::EIconType, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00454504  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00454508  78 43 9f e5                                      ldr r4, [pc, #0x378]
0045450c  78 33 9f e5                                      ldr r3, [pc, #0x378]
00454510  dc d0 4d e2                                      sub sp, sp, #0xdc
00454514  04 40 8f e0                                      add r4, pc, r4
00454518  14 30 8d e5                                      str r3, [sp, #0x14]
0045451c  03 30 94 e7                                      ldr r3, [r4, r3]
00454520  11 00 51 e3                                      cmp r1, #0x11
00454524  01 50 a0 e1                                      mov r5, r1
00454528  00 30 93 e5                                      ldr r3, [r3]
0045452c  00 b0 a0 e1                                      mov fp, r0
00454530  02 60 a0 e1                                      mov r6, r2
00454534  d4 30 8d e5                                      str r3, [sp, #0xd4]
00454538  08 00 00 da                                      ble #0x454560
0045453c  4c 33 9f e5                                      ldr r3, [pc, #0x34c]
00454540  03 30 94 e7                                      ldr r3, [r4, r3]
00454544  00 30 93 e5                                      ldr r3, [r3]
00454548  02 00 53 e3                                      cmp r3, #2
0045454c  00 30 a0 03                                      moveq r3, #0
00454550  00 30 83 05                                      streq r3, [r3]
00454554  01 00 00 0a                                      beq #0x454560
00454558  01 00 53 e3                                      cmp r3, #1
0045455c  b6 00 00 0a                                      beq #0x45483c
00454560  2c 33 9f e5                                      ldr r3, [pc, #0x32c]
00454564  2c 13 9f e5                                      ldr r1, [pc, #0x32c]
00454568  2c 80 8d e2                                      add r8, sp, #0x2c
0045456c  03 30 8f e0                                      add r3, pc, r3
00454570  fc 21 93 e5                                      ldr r2, [r3, #0x1fc]
00454574  01 10 8f e0                                      add r1, pc, r1
00454578  a8 70 8d e2                                      add r7, sp, #0xa8
0045457c  01 00 82 e2                                      add r0, r2, #1
00454580  fc 01 83 e5                                      str r0, [r3, #0x1fc]
00454584  00 30 a0 e3                                      mov r3, #0
00454588  08 00 a0 e1                                      mov r0, r8
0045458c  a8 30 cd e5                                      strb r3, [sp, #0xa8]
00454590  b8 70 8d e5                                      str r7, [sp, #0xb8]
00454594  bc 70 8d e5                                      str r7, [sp, #0xbc]
00454598  51 e9 fa eb                                      bl #0x30eae4
0045459c  08 00 a0 e1                                      mov r0, r8
004545a0  2b e6 fa eb                                      bl #0x30de54
004545a4  08 10 a0 e1                                      mov r1, r8
004545a8  00 20 88 e0                                      add r2, r8, r0
004545ac  07 00 a0 e1                                      mov r0, r7
004545b0  25 31 fb eb                                      bl #0x320a4c
004545b4  f8 80 9b e5                                      ldr r8, [fp, #0xf8]
004545b8  90 10 8d e2                                      add r1, sp, #0x90
004545bc  18 10 8d e5                                      str r1, [sp, #0x18]
004545c0  3c 00 88 e2                                      add r0, r8, #0x3c
004545c4  de c6 fc eb                                      bl #0x386144
004545c8  40 a0 98 e5                                      ldr sl, [r8, #0x40]
004545cc  bc 10 9d e5                                      ldr r1, [sp, #0xbc]
004545d0  28 20 8d e2                                      add r2, sp, #0x28
004545d4  18 00 9d e5                                      ldr r0, [sp, #0x18]
004545d8  c3 fe fa eb                                      bl #0x3140ec
004545dc  0a 00 a0 e1                                      mov r0, sl
004545e0  d1 a9 0c eb                                      bl #0x77ed2c
004545e4  00 30 98 e5                                      ldr r3, [r8]
004545e8  c0 90 8d e2                                      add sb, sp, #0xc0
004545ec  00 20 a0 e1                                      mov r2, r0
004545f0  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
004545f4  09 00 a0 e1                                      mov r0, sb
004545f8  d4 a0 93 e5                                      ldr sl, [r3, #0xd4]
004545fc  10 20 8d e5                                      str r2, [sp, #0x10]
00454600  1d fd fe eb                                      bl #0x413a7c
00454604  08 00 a0 e1                                      mov r0, r8
00454608  09 10 a0 e1                                      mov r1, sb
0045460c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00454610  3a ff 2f e1                                      blx sl
00454614  d0 3c dd e1                                      ldrsb r3, [sp, #0xc0]
00454618  00 a0 a0 e1                                      mov sl, r0
0045461c  01 00 73 e3                                      cmn r3, #1
00454620  32 00 00 0a                                      beq #0x4546f0
00454624  0e 10 45 e2                                      sub r1, r5, #0xe
00454628  03 00 51 e3                                      cmp r1, #3
0045462c  05 10 a0 81                                      movhi r1, r5
00454630  0d 10 a0 93                                      movls r1, #0xd
00454634  00 30 9a e5                                      ldr r3, [sl]
00454638  0a 00 a0 e1                                      mov r0, sl
0045463c  0f e0 a0 e1                                      mov lr, pc
00454640  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
00454644  0c 30 a0 e3                                      mov r3, #0xc
00454648  93 b5 23 e0                                      mla r3, r3, r5, fp
0045464c  08 c0 96 e5                                      ldr ip, [r6, #8]
00454650  08 81 93 e5                                      ldr r8, [r3, #0x108]
00454654  0c 21 93 e5                                      ldr r2, [r3, #0x10c]
00454658  00 90 96 e5                                      ldr sb, [r6]
0045465c  04 60 96 e5                                      ldr r6, [r6, #4]
00454660  02 00 58 e1                                      cmp r8, r2
00454664  25 00 00 0a                                      beq #0x454700
00454668  0c c0 88 e5                                      str ip, [r8, #0xc]
0045466c  00 a0 88 e5                                      str sl, [r8]
00454670  04 90 88 e5                                      str sb, [r8, #4]
00454674  08 60 88 e5                                      str r6, [r8, #8]
00454678  08 21 93 e5                                      ldr r2, [r3, #0x108]
0045467c  10 20 82 e2                                      add r2, r2, #0x10
00454680  08 21 83 e5                                      str r2, [r3, #0x108]
00454684  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
00454688  18 20 9d e5                                      ldr r2, [sp, #0x18]
0045468c  02 00 50 e1                                      cmp r0, r2
00454690  06 00 00 0a                                      beq #0x4546b0
00454694  00 00 50 e3                                      cmp r0, #0
00454698  04 00 00 0a                                      beq #0x4546b0
0045469c  90 10 9d e5                                      ldr r1, [sp, #0x90]
004546a0  01 10 60 e0                                      rsb r1, r0, r1
004546a4  80 00 51 e3                                      cmp r1, #0x80
004546a8  0e 00 00 8a                                      bhi #0x4546e8
004546ac  13 d2 0a eb                                      bl #0x708f00
004546b0  bc 00 9d e5                                      ldr r0, [sp, #0xbc]
004546b4  07 00 50 e1                                      cmp r0, r7
004546b8  02 00 00 0a                                      beq #0x4546c8
004546bc  00 00 50 e3                                      cmp r0, #0
004546c0  00 00 00 0a                                      beq #0x4546c8
004546c4  61 ef fa eb                                      bl #0x310450
004546c8  14 10 9d e5                                      ldr r1, [sp, #0x14]
004546cc  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
004546d0  01 30 94 e7                                      ldr r3, [r4, r1]
004546d4  00 30 93 e5                                      ldr r3, [r3]
004546d8  03 00 52 e1                                      cmp r2, r3
004546dc  68 00 00 1a                                      bne #0x454884
004546e0  dc d0 8d e2                                      add sp, sp, #0xdc
004546e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004546e8  54 ef fa eb                                      bl #0x310440
004546ec  ef ff ff ea                                      b #0x4546b0
004546f0  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
004546f4  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
004546f8  0e f9 0b eb                                      bl #0x752b38
004546fc  c8 ff ff ea                                      b #0x454624
00454700  04 31 93 e5                                      ldr r3, [r3, #0x104]
00454704  08 30 63 e0                                      rsb r3, r3, r8
00454708  43 32 a0 e1                                      asr r3, r3, #4
0045470c  01 00 53 e3                                      cmp r3, #1
00454710  03 10 83 20                                      addhs r1, r3, r3
00454714  01 10 83 32                                      addlo r1, r3, #1
00454718  1f 02 71 e3                                      cmn r1, #0xf0000001
0045471c  53 00 00 9a                                      bls #0x454870
00454720  0f 12 e0 e3                                      mvn r1, #0xf0000000
00454724  0c 30 a0 e3                                      mov r3, #0xc
00454728  93 05 03 e0                                      mul r3, r3, r5
0045472c  d8 20 8d e2                                      add r2, sp, #0xd8
00454730  03 00 8b e0                                      add r0, fp, r3
00454734  b4 10 22 e5                                      str r1, [r2, #-0xb4]!
00454738  43 0f 80 e2                                      add r0, r0, #0x10c
0045473c  0c 30 8d e5                                      str r3, [sp, #0xc]
00454740  10 c0 8d e5                                      str ip, [sp, #0x10]
00454744  52 ff ff eb                                      bl #0x454494
00454748  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0045474c  1c 00 8d e5                                      str r0, [sp, #0x1c]
00454750  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00454754  03 30 8b e0                                      add r3, fp, r3
00454758  04 21 93 e5                                      ldr r2, [r3, #0x104]
0045475c  08 80 62 e0                                      rsb r8, r2, r8
00454760  48 82 a0 e1                                      asr r8, r8, #4
00454764  00 00 58 e3                                      cmp r8, #0
00454768  00 80 a0 d1                                      movle r8, r0
0045476c  11 00 00 da                                      ble #0x4547b8
00454770  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00454774  10 20 82 e2                                      add r2, r2, #0x10
00454778  10 30 81 e2                                      add r3, r1, #0x10
0045477c  08 10 a0 e1                                      mov r1, r8
00454780  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00454784  01 10 51 e2                                      subs r1, r1, #1
00454788  10 00 03 e5                                      str r0, [r3, #-0x10]
0045478c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00454790  0c 00 03 e5                                      str r0, [r3, #-0xc]
00454794  08 00 12 e5                                      ldr r0, [r2, #-8]
00454798  08 00 03 e5                                      str r0, [r3, #-8]
0045479c  04 00 12 e5                                      ldr r0, [r2, #-4]
004547a0  10 20 82 e2                                      add r2, r2, #0x10
004547a4  04 00 03 e5                                      str r0, [r3, #-4]
004547a8  10 30 83 e2                                      add r3, r3, #0x10
004547ac  f3 ff ff 1a                                      bne #0x454780
004547b0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004547b4  08 82 82 e0                                      add r8, r2, r8, lsl #4
004547b8  0c 30 a0 e3                                      mov r3, #0xc
004547bc  93 b5 23 e0                                      mla r3, r3, r5, fp
004547c0  00 a0 88 e5                                      str sl, [r8]
004547c4  04 90 88 e5                                      str sb, [r8, #4]
004547c8  08 60 88 e5                                      str r6, [r8, #8]
004547cc  0c c0 88 e5                                      str ip, [r8, #0xc]
004547d0  04 01 93 e5                                      ldr r0, [r3, #0x104]
004547d4  08 31 93 e5                                      ldr r3, [r3, #0x108]
004547d8  10 80 88 e2                                      add r8, r8, #0x10
004547dc  00 00 53 e1                                      cmp r3, r0
004547e0  10 20 43 12                                      subne r2, r3, #0x10
004547e4  02 20 60 10                                      rsbne r2, r0, r2
004547e8  22 22 e0 11                                      mvnne r2, r2, lsr #4
004547ec  02 32 83 10                                      addne r3, r3, r2, lsl #4
004547f0  0c 20 a0 e3                                      mov r2, #0xc
004547f4  92 b5 22 e0                                      mla r2, r2, r5, fp
004547f8  00 00 53 e3                                      cmp r3, #0
004547fc  0c 11 92 e5                                      ldr r1, [r2, #0x10c]
00454800  04 00 00 0a                                      beq #0x454818
00454804  01 10 63 e0                                      rsb r1, r3, r1
00454808  0f 10 c1 e3                                      bic r1, r1, #0xf
0045480c  80 00 51 e3                                      cmp r1, #0x80
00454810  19 00 00 8a                                      bhi #0x45487c
00454814  b9 d1 0a eb                                      bl #0x708f00
00454818  0c 30 a0 e3                                      mov r3, #0xc
0045481c  93 b5 25 e0                                      mla r5, r3, r5, fp
00454820  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00454824  24 30 9d e5                                      ldr r3, [sp, #0x24]
00454828  08 81 85 e5                                      str r8, [r5, #0x108]
0045482c  04 11 85 e5                                      str r1, [r5, #0x104]
00454830  03 32 81 e0                                      add r3, r1, r3, lsl #4
00454834  0c 31 85 e5                                      str r3, [r5, #0x10c]
00454838  91 ff ff ea                                      b #0x454684
0045483c  58 00 9f e5                                      ldr r0, [pc, #0x58]
00454840  58 10 9f e5                                      ldr r1, [pc, #0x58]
00454844  58 20 9f e5                                      ldr r2, [pc, #0x58]
00454848  00 00 94 e7                                      ldr r0, [r4, r0]
0045484c  54 30 9f e5                                      ldr r3, [pc, #0x54]
00454850  71 c2 00 e3                                      movw ip, #0x271
00454854  01 10 8f e0                                      add r1, pc, r1
00454858  02 20 8f e0                                      add r2, pc, r2
0045485c  03 30 8f e0                                      add r3, pc, r3
00454860  a8 00 80 e2                                      add r0, r0, #0xa8
00454864  00 c0 8d e5                                      str ip, [sp]
00454868  e5 e5 fa eb                                      bl #0x30e004
0045486c  3b ff ff ea                                      b #0x454560
00454870  01 00 53 e1                                      cmp r3, r1
00454874  aa ff ff 9a                                      bls #0x454724
00454878  a8 ff ff ea                                      b #0x454720
0045487c  ef ee fa eb                                      bl #0x310440
00454880  e4 ff ff ea                                      b #0x454818
00454884  a1 e6 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00454888  7c 05 54 00 ac 40 00 00 c0 39 00 00 48 18 55 00  .byte 0x7c, 0x05, 0x54, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x48, 0x18, 0x55, 0x00
00454898  c4 88 47 00 c0 19 00 00 84 9b 46 00 10 85 47 00  .byte 0xc4, 0x88, 0x47, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x84, 0x9b, 0x46, 0x00, 0x10, 0x85, 0x47, 0x00
004548a8  24 85 47 00                                      .byte 0x24, 0x85, 0x47, 0x00

; FUNCTION 0x004548ac, declared_size=348, range_size=348, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map19ShowObjectivesIconsEv
; demangled: MenuCharMenu_Map::ShowObjectivesIcons()
; decoder-mode: arm
004548ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004548b0  44 81 9f e5                                      ldr r8, [pc, #0x144]
004548b4  44 b1 9f e5                                      ldr fp, [pc, #0x144]
004548b8  44 21 9f e5                                      ldr r2, [pc, #0x144]
004548bc  08 80 8f e0                                      add r8, pc, r8
004548c0  0b 30 98 e7                                      ldr r3, [r8, fp]
004548c4  02 50 98 e7                                      ldr r5, [r8, r2]
004548c8  dc d0 4d e2                                      sub sp, sp, #0xdc
004548cc  00 30 93 e5                                      ldr r3, [r3]
004548d0  01 20 a0 e3                                      mov r2, #1
004548d4  00 10 a0 e3                                      mov r1, #0
004548d8  00 60 a0 e1                                      mov r6, r0
004548dc  40 00 95 e5                                      ldr r0, [r5, #0x40]
004548e0  d4 30 8d e5                                      str r3, [sp, #0xd4]
004548e4  e3 66 fc eb                                      bl #0x36e478
004548e8  00 10 e0 e3                                      mvn r1, #0
004548ec  60 06 90 e5                                      ldr r0, [r0, #0x660]
004548f0  d2 9e fd eb                                      bl #0x3bc440
004548f4  00 10 a0 e3                                      mov r1, #0
004548f8  00 40 a0 e1                                      mov r4, r0
004548fc  01 20 a0 e3                                      mov r2, #1
00454900  40 00 95 e5                                      ldr r0, [r5, #0x40]
00454904  db 66 fc eb                                      bl #0x36e478
00454908  00 10 e0 e3                                      mvn r1, #0
0045490c  60 06 90 e5                                      ldr r0, [r0, #0x660]
00454910  99 9e fd eb                                      bl #0x3bc37c
00454914  01 00 74 e3                                      cmn r4, #1
00454918  00 00 54 11                                      cmpne r4, r0
0045491c  06 00 00 ba                                      blt #0x45493c
00454920  0b 30 98 e7                                      ldr r3, [r8, fp]
00454924  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
00454928  00 30 93 e5                                      ldr r3, [r3]
0045492c  03 00 52 e1                                      cmp r2, r3
00454930  30 00 00 1a                                      bne #0x4549f8
00454934  dc d0 8d e2                                      add sp, sp, #0xdc
00454938  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045493c  00 10 a0 e3                                      mov r1, #0
00454940  01 20 a0 e3                                      mov r2, #1
00454944  40 00 95 e5                                      ldr r0, [r5, #0x40]
00454948  ca 66 fc eb                                      bl #0x36e478
0045494c  04 10 a0 e1                                      mov r1, r4
00454950  60 06 90 e5                                      ldr r0, [r0, #0x660]
00454954  00 20 e0 e3                                      mvn r2, #0
00454958  66 9e fd eb                                      bl #0x3bc2f8
0045495c  00 a0 50 e2                                      subs sl, r0, #0
00454960  ee ff ff 0a                                      beq #0x454920
00454964  2c 90 9a e5                                      ldr sb, [sl, #0x2c]
00454968  00 00 59 e3                                      cmp sb, #0
0045496c  eb ff ff 0a                                      beq #0x454920
00454970  ea ff ff da                                      ble #0x454920
00454974  00 70 a0 e3                                      mov r7, #0
00454978  0c 50 8d e2                                      add r5, sp, #0xc
0045497c  30 30 9a e5                                      ldr r3, [sl, #0x30]
00454980  05 00 a0 e1                                      mov r0, r5
00454984  00 40 a0 e3                                      mov r4, #0
00454988  07 31 93 e7                                      ldr r3, [r3, r7, lsl #2]
0045498c  04 30 8d e5                                      str r3, [sp, #4]
00454990  ef 9d 00 eb                                      bl #0x47c154
00454994  04 30 9d e5                                      ldr r3, [sp, #4]
00454998  05 10 a0 e1                                      mov r1, r5
0045499c  03 00 a0 e1                                      mov r0, r3
004549a0  00 30 93 e5                                      ldr r3, [r3]
004549a4  0f e0 a0 e1                                      mov lr, pc
004549a8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
004549ac  07 00 00 ea                                      b #0x4549d0
004549b0  04 10 a0 e1                                      mov r1, r4
004549b4  05 00 a0 e1                                      mov r0, r5
004549b8  72 95 00 eb                                      bl #0x479f88
004549bc  00 10 a0 e3                                      mov r1, #0
004549c0  00 20 a0 e1                                      mov r2, r0
004549c4  06 00 a0 e1                                      mov r0, r6
004549c8  cd fe ff eb                                      bl #0x454504
004549cc  01 40 84 e2                                      add r4, r4, #1
004549d0  05 00 a0 e1                                      mov r0, r5
004549d4  6f 95 00 eb                                      bl #0x479f98
004549d8  00 00 54 e1                                      cmp r4, r0
004549dc  f3 ff ff ba                                      blt #0x4549b0
004549e0  01 70 87 e2                                      add r7, r7, #1
004549e4  05 00 a0 e1                                      mov r0, r5
004549e8  77 9d 00 eb                                      bl #0x47bfcc
004549ec  09 00 57 e1                                      cmp r7, sb
004549f0  e1 ff ff 1a                                      bne #0x45497c
004549f4  c9 ff ff ea                                      b #0x454920
004549f8  44 e6 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004549fc  d4 01 54 00 ac 40 00 00 f4 37 00 00              .byte 0xd4, 0x01, 0x54, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00454a08, declared_size=388, range_size=388, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map16ShowPlayersIconsEv
; demangled: MenuCharMenu_Map::ShowPlayersIcons()
; decoder-mode: arm
00454a08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00454a0c  34 d0 4d e2                                      sub sp, sp, #0x34
00454a10  00 70 a0 e1                                      mov r7, r0
00454a14  5e a3 0e eb                                      bl #0x7fd794
00454a18  05 10 d0 e5                                      ldrb r1, [r0, #5]
00454a1c  60 31 9f e5                                      ldr r3, [pc, #0x160]
00454a20  00 00 51 e3                                      cmp r1, #0
00454a24  03 30 8f e0                                      add r3, pc, r3
00454a28  3c 00 00 0a                                      beq #0x454b20
00454a2c  54 01 9f e5                                      ldr r0, [pc, #0x154]
00454a30  00 10 a0 e3                                      mov r1, #0
00454a34  01 20 a0 e1                                      mov r2, r1
00454a38  00 a0 93 e7                                      ldr sl, [r3, r0]
00454a3c  40 80 9a e5                                      ldr r8, [sl, #0x40]
00454a40  08 00 a0 e1                                      mov r0, r8
00454a44  8b 66 fc eb                                      bl #0x36e478
00454a48  a8 56 98 e5                                      ldr r5, [r8, #0x6a8]
00454a4c  ac 36 98 e5                                      ldr r3, [r8, #0x6ac]
00454a50  70 b6 90 e5                                      ldr fp, [r0, #0x670]
00454a54  03 00 55 e1                                      cmp r5, r3
00454a58  2e 00 00 0a                                      beq #0x454b18
00454a5c  24 30 8d e2                                      add r3, sp, #0x24
00454a60  18 90 8d e2                                      add sb, sp, #0x18
00454a64  04 30 8d e5                                      str r3, [sp, #4]
00454a68  0a 00 00 ea                                      b #0x454a98
00454a6c  60 c1 94 e5                                      ldr ip, [r4, #0x160]
00454a70  64 31 94 e5                                      ldr r3, [r4, #0x164]
00454a74  68 e1 94 e5                                      ldr lr, [r4, #0x168]
00454a78  18 c0 8d e5                                      str ip, [sp, #0x18]
00454a7c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00454a80  20 e0 8d e5                                      str lr, [sp, #0x20]
00454a84  9e fe ff eb                                      bl #0x454504
00454a88  ac 36 98 e5                                      ldr r3, [r8, #0x6ac]
00454a8c  04 50 85 e2                                      add r5, r5, #4
00454a90  03 00 55 e1                                      cmp r5, r3
00454a94  1f 00 00 0a                                      beq #0x454b18
00454a98  00 60 95 e5                                      ldr r6, [r5]
00454a9c  00 20 a0 e3                                      mov r2, #0
00454aa0  40 00 9a e5                                      ldr r0, [sl, #0x40]
00454aa4  06 10 a0 e1                                      mov r1, r6
00454aa8  40 65 fc eb                                      bl #0x36dfb0
00454aac  60 46 90 e5                                      ldr r4, [r0, #0x660]
00454ab0  07 10 a0 e3                                      mov r1, #7
00454ab4  07 00 a0 e1                                      mov r0, r7
00454ab8  00 00 54 e3                                      cmp r4, #0
00454abc  09 20 a0 e1                                      mov r2, sb
00454ac0  f0 ff ff 0a                                      beq #0x454a88
00454ac4  0b 00 56 e1                                      cmp r6, fp
00454ac8  e7 ff ff 1a                                      bne #0x454a6c
00454acc  64 31 94 e5                                      ldr r3, [r4, #0x164]
00454ad0  68 c1 94 e5                                      ldr ip, [r4, #0x168]
00454ad4  60 e1 94 e5                                      ldr lr, [r4, #0x160]
00454ad8  03 10 a0 e3                                      mov r1, #3
00454adc  04 20 9d e5                                      ldr r2, [sp, #4]
00454ae0  28 30 8d e5                                      str r3, [sp, #0x28]
00454ae4  24 e0 8d e5                                      str lr, [sp, #0x24]
00454ae8  2c c0 8d e5                                      str ip, [sp, #0x2c]
00454aec  84 fe ff eb                                      bl #0x454504
00454af0  68 31 94 e5                                      ldr r3, [r4, #0x168]
00454af4  60 11 94 e5                                      ldr r1, [r4, #0x160]
00454af8  64 21 94 e5                                      ldr r2, [r4, #0x164]
00454afc  f4 30 87 e5                                      str r3, [r7, #0xf4]
00454b00  ec 10 87 e5                                      str r1, [r7, #0xec]
00454b04  f0 20 87 e5                                      str r2, [r7, #0xf0]
00454b08  ac 36 98 e5                                      ldr r3, [r8, #0x6ac]
00454b0c  04 50 85 e2                                      add r5, r5, #4
00454b10  03 00 55 e1                                      cmp r5, r3
00454b14  df ff ff 1a                                      bne #0x454a98
00454b18  34 d0 8d e2                                      add sp, sp, #0x34
00454b1c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00454b20  60 00 9f e5                                      ldr r0, [pc, #0x60]
00454b24  01 20 a0 e3                                      mov r2, #1
00454b28  00 30 93 e7                                      ldr r3, [r3, r0]
00454b2c  40 00 93 e5                                      ldr r0, [r3, #0x40]
00454b30  50 66 fc eb                                      bl #0x36e478
00454b34  60 46 90 e5                                      ldr r4, [r0, #0x660]
00454b38  00 00 54 e3                                      cmp r4, #0
00454b3c  f5 ff ff 0a                                      beq #0x454b18
00454b40  68 31 94 e5                                      ldr r3, [r4, #0x168]
00454b44  64 c1 94 e5                                      ldr ip, [r4, #0x164]
00454b48  60 e1 94 e5                                      ldr lr, [r4, #0x160]
00454b4c  03 10 a0 e3                                      mov r1, #3
00454b50  0c 20 8d e2                                      add r2, sp, #0xc
00454b54  07 00 a0 e1                                      mov r0, r7
00454b58  14 30 8d e5                                      str r3, [sp, #0x14]
00454b5c  0c e0 8d e5                                      str lr, [sp, #0xc]
00454b60  10 c0 8d e5                                      str ip, [sp, #0x10]
00454b64  66 fe ff eb                                      bl #0x454504
00454b68  60 11 94 e5                                      ldr r1, [r4, #0x160]
00454b6c  64 21 94 e5                                      ldr r2, [r4, #0x164]
00454b70  68 31 94 e5                                      ldr r3, [r4, #0x168]
00454b74  ec 10 87 e5                                      str r1, [r7, #0xec]
00454b78  f0 20 87 e5                                      str r2, [r7, #0xf0]
00454b7c  f4 30 87 e5                                      str r3, [r7, #0xf4]
00454b80  e4 ff ff ea                                      b #0x454b18
; mapping-symbol data/literal pool
00454b84  6c 00 54 00 f4 37 00 00                          .byte 0x6c, 0x00, 0x54, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00454b8c, declared_size=464, range_size=464, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map18ShowRoomExitsIconsEv
; demangled: MenuCharMenu_Map::ShowRoomExitsIcons()
; decoder-mode: arm
00454b8c  c0 11 9f e5                                      ldr r1, [pc, #0x1c0]
00454b90  c0 21 9f e5                                      ldr r2, [pc, #0x1c0]
00454b94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00454b98  01 10 8f e0                                      add r1, pc, r1
00454b9c  02 30 91 e7                                      ldr r3, [r1, r2]
00454ba0  64 d0 4d e2                                      sub sp, sp, #0x64
00454ba4  10 10 8d e5                                      str r1, [sp, #0x10]
00454ba8  84 40 93 e5                                      ldr r4, [r3, #0x84]
00454bac  88 90 93 e5                                      ldr sb, [r3, #0x88]
00454bb0  18 20 8d e5                                      str r2, [sp, #0x18]
00454bb4  00 50 a0 e1                                      mov r5, r0
00454bb8  04 00 59 e1                                      cmp sb, r4
00454bbc  62 00 00 0a                                      beq #0x454d4c
00454bc0  38 30 8d e2                                      add r3, sp, #0x38
00454bc4  2c e0 8d e2                                      add lr, sp, #0x2c
00454bc8  5c 10 8d e2                                      add r1, sp, #0x5c
00454bcc  50 20 8d e2                                      add r2, sp, #0x50
00454bd0  44 b0 8d e2                                      add fp, sp, #0x44
00454bd4  14 30 8d e5                                      str r3, [sp, #0x14]
00454bd8  1c e0 8d e5                                      str lr, [sp, #0x1c]
00454bdc  20 10 8d e5                                      str r1, [sp, #0x20]
00454be0  24 20 8d e5                                      str r2, [sp, #0x24]
00454be4  4b 00 00 ea                                      b #0x454d18
00454be8  01 00 53 e3                                      cmp r3, #1
00454bec  bf 84 a0 03                                      moveq r8, #0xbf000000
00454bf0  00 70 a0 e3                                      mov r7, #0
00454bf4  02 85 88 02                                      addeq r8, r8, #0x800000
00454bf8  0f 60 a0 03                                      moveq r6, #0xf
00454bfc  fe 85 a0 13                                      movne r8, #0x3f800000
00454c00  0e 60 a0 13                                      movne r6, #0xe
00454c04  04 e0 94 e5                                      ldr lr, [r4, #4]
00454c08  05 00 a0 e1                                      mov r0, r5
00454c0c  0b 10 a0 e1                                      mov r1, fp
00454c10  50 e0 8d e5                                      str lr, [sp, #0x50]
00454c14  08 c0 94 e5                                      ldr ip, [r4, #8]
00454c18  01 20 a0 e3                                      mov r2, #1
00454c1c  54 c0 8d e5                                      str ip, [sp, #0x54]
00454c20  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00454c24  44 e0 8d e5                                      str lr, [sp, #0x44]
00454c28  48 c0 8d e5                                      str ip, [sp, #0x48]
00454c2c  4c 30 8d e5                                      str r3, [sp, #0x4c]
00454c30  58 30 8d e5                                      str r3, [sp, #0x58]
00454c34  eb fb ff eb                                      bl #0x453be8
00454c38  00 00 50 e3                                      cmp r0, #0
00454c3c  32 00 00 0a                                      beq #0x454d0c
00454c40  45 14 a0 e3                                      mov r1, #0x45000000
00454c44  08 00 a0 e1                                      mov r0, r8
00454c48  ee 19 81 e2                                      add r1, r1, #0x3b8000
00454c4c  46 e8 fa eb                                      bl #0x30ed6c
00454c50  54 10 9d e5                                      ldr r1, [sp, #0x54]
00454c54  d2 e7 fa eb                                      bl #0x30eba4
00454c58  00 10 a0 e3                                      mov r1, #0
00454c5c  00 a0 a0 e1                                      mov sl, r0
00454c60  58 00 9d e5                                      ldr r0, [sp, #0x58]
00454c64  ce e7 fa eb                                      bl #0x30eba4
00454c68  45 14 a0 e3                                      mov r1, #0x45000000
00454c6c  00 80 a0 e1                                      mov r8, r0
00454c70  ee 19 81 e2                                      add r1, r1, #0x3b8000
00454c74  07 00 a0 e1                                      mov r0, r7
00454c78  3b e8 fa eb                                      bl #0x30ed6c
00454c7c  50 10 9d e5                                      ldr r1, [sp, #0x50]
00454c80  c7 e7 fa eb                                      bl #0x30eba4
00454c84  14 10 9d e5                                      ldr r1, [sp, #0x14]
00454c88  38 00 8d e5                                      str r0, [sp, #0x38]
00454c8c  00 20 a0 e3                                      mov r2, #0
00454c90  05 00 a0 e1                                      mov r0, r5
00454c94  3c a0 8d e5                                      str sl, [sp, #0x3c]
00454c98  40 80 8d e5                                      str r8, [sp, #0x40]
00454c9c  d1 fb ff eb                                      bl #0x453be8
00454ca0  00 00 50 e3                                      cmp r0, #0
00454ca4  18 00 00 0a                                      beq #0x454d0c
00454ca8  10 e0 9d e5                                      ldr lr, [sp, #0x10]
00454cac  18 30 9d e5                                      ldr r3, [sp, #0x18]
00454cb0  00 c0 a0 e3                                      mov ip, #0
00454cb4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00454cb8  03 00 9e e7                                      ldr r0, [lr, r3]
00454cbc  50 e0 9d e5                                      ldr lr, [sp, #0x50]
00454cc0  0c 30 a0 e1                                      mov r3, ip
00454cc4  20 20 9d e5                                      ldr r2, [sp, #0x20]
00454cc8  2c e0 8d e5                                      str lr, [sp, #0x2c]
00454ccc  54 e0 9d e5                                      ldr lr, [sp, #0x54]
00454cd0  00 c0 8d e5                                      str ip, [sp]
00454cd4  04 c0 8d e5                                      str ip, [sp, #4]
00454cd8  30 e0 8d e5                                      str lr, [sp, #0x30]
00454cdc  00 e0 a0 e3                                      mov lr, #0
00454ce0  58 e0 8d e5                                      str lr, [sp, #0x58]
00454ce4  5c e0 8d e5                                      str lr, [sp, #0x5c]
00454ce8  34 e0 8d e5                                      str lr, [sp, #0x34]
00454cec  08 c0 8d e5                                      str ip, [sp, #8]
00454cf0  04 42 03 eb                                      bl #0x525508
00454cf4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00454cf8  06 10 a0 e1                                      mov r1, r6
00454cfc  05 00 a0 e1                                      mov r0, r5
00454d00  24 20 9d e5                                      ldr r2, [sp, #0x24]
00454d04  58 30 8d e5                                      str r3, [sp, #0x58]
00454d08  fd fd ff eb                                      bl #0x454504
00454d0c  10 40 84 e2                                      add r4, r4, #0x10
00454d10  09 00 54 e1                                      cmp r4, sb
00454d14  0c 00 00 0a                                      beq #0x454d4c
00454d18  00 30 94 e5                                      ldr r3, [r4]
00454d1c  02 00 53 e3                                      cmp r3, #2
00454d20  fe 75 a0 03                                      moveq r7, #0x3f800000
00454d24  00 80 a0 03                                      moveq r8, #0
00454d28  10 60 a0 03                                      moveq r6, #0x10
00454d2c  b4 ff ff 0a                                      beq #0x454c04
00454d30  03 00 53 e3                                      cmp r3, #3
00454d34  ab ff ff 1a                                      bne #0x454be8
00454d38  bf 74 a0 e3                                      mov r7, #0xbf000000
00454d3c  02 75 87 e2                                      add r7, r7, #0x800000
00454d40  00 80 a0 e3                                      mov r8, #0
00454d44  11 60 a0 e3                                      mov r6, #0x11
00454d48  ad ff ff ea                                      b #0x454c04
00454d4c  64 d0 8d e2                                      add sp, sp, #0x64
00454d50  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00454d54  f8 fe 53 00 04 12 00 00                          .byte 0xf8, 0xfe, 0x53, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x00454d5c, declared_size=604, range_size=604, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map17ShowMapExitsIconsEv
; demangled: MenuCharMenu_Map::ShowMapExitsIcons()
; decoder-mode: arm
00454d5c  4c 32 9f e5                                      ldr r3, [pc, #0x24c]
00454d60  4c 22 9f e5                                      ldr r2, [pc, #0x24c]
00454d64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00454d68  03 30 8f e0                                      add r3, pc, r3
00454d6c  02 40 93 e7                                      ldr r4, [r3, r2]
00454d70  5c d0 4d e2                                      sub sp, sp, #0x5c
00454d74  00 b0 a0 e1                                      mov fp, r0
00454d78  04 00 a0 e1                                      mov r0, r4
00454d7c  04 2a fb eb                                      bl #0x31f594
00454d80  38 90 94 e5                                      ldr sb, [r4, #0x38]
00454d84  10 10 8d e2                                      add r1, sp, #0x10
00454d88  00 10 8d e5                                      str r1, [sp]
00454d8c  04 00 8d e5                                      str r0, [sp, #4]
00454d90  28 30 8d e2                                      add r3, sp, #0x28
00454d94  40 10 8d e2                                      add r1, sp, #0x40
00454d98  14 40 99 e5                                      ldr r4, [sb, #0x14]
00454d9c  4c 80 8d e2                                      add r8, sp, #0x4c
00454da0  34 70 8d e2                                      add r7, sp, #0x34
00454da4  1c 60 8d e2                                      add r6, sp, #0x1c
00454da8  0c 90 89 e2                                      add sb, sb, #0xc
00454dac  08 30 8d e5                                      str r3, [sp, #8]
00454db0  0c 10 8d e5                                      str r1, [sp, #0xc]
00454db4  04 00 59 e1                                      cmp sb, r4
00454db8  2d 00 00 0a                                      beq #0x454e74
00454dbc  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00454dc0  00 00 51 e3                                      cmp r1, #0
00454dc4  1f 00 00 0a                                      beq #0x454e48
00454dc8  08 00 a0 e1                                      mov r0, r8
00454dcc  d6 a3 fb eb                                      bl #0x33dd2c
00454dd0  08 00 a0 e1                                      mov r0, r8
00454dd4  00 10 a0 e3                                      mov r1, #0
00454dd8  f8 ab fb eb                                      bl #0x33fdc0
00454ddc  00 50 50 e2                                      subs r5, r0, #0
00454de0  02 00 00 0a                                      beq #0x454df0
00454de4  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
00454de8  0d 00 53 e3                                      cmp r3, #0xd
00454dec  22 00 00 0a                                      beq #0x454e7c
00454df0  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00454df4  07 00 a0 e1                                      mov r0, r7
00454df8  cb a3 fb eb                                      bl #0x33dd2c
00454dfc  07 00 a0 e1                                      mov r0, r7
00454e00  00 10 a0 e3                                      mov r1, #0
00454e04  ed ab fb eb                                      bl #0x33fdc0
00454e08  00 50 50 e2                                      subs r5, r0, #0
00454e0c  02 00 00 0a                                      beq #0x454e1c
00454e10  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
00454e14  0e 00 53 e3                                      cmp r3, #0xe
00454e18  30 00 00 0a                                      beq #0x454ee0
00454e1c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00454e20  06 00 a0 e1                                      mov r0, r6
00454e24  c0 a3 fb eb                                      bl #0x33dd2c
00454e28  06 00 a0 e1                                      mov r0, r6
00454e2c  00 10 a0 e3                                      mov r1, #0
00454e30  e2 ab fb eb                                      bl #0x33fdc0
00454e34  00 50 50 e2                                      subs r5, r0, #0
00454e38  02 00 00 0a                                      beq #0x454e48
00454e3c  f4 a0 95 e5                                      ldr sl, [r5, #0xf4]
00454e40  0c 00 5a e3                                      cmp sl, #0xc
00454e44  39 00 00 0a                                      beq #0x454f30
00454e48  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00454e4c  00 00 53 e3                                      cmp r3, #0
00454e50  01 00 00 1a                                      bne #0x454e5c
00454e54  48 00 00 ea                                      b #0x454f7c
00454e58  02 30 a0 e1                                      mov r3, r2
00454e5c  08 20 93 e5                                      ldr r2, [r3, #8]
00454e60  00 00 52 e3                                      cmp r2, #0
00454e64  fb ff ff 1a                                      bne #0x454e58
00454e68  03 40 a0 e1                                      mov r4, r3
00454e6c  04 00 59 e1                                      cmp sb, r4
00454e70  d1 ff ff 1a                                      bne #0x454dbc
00454e74  5c d0 8d e2                                      add sp, sp, #0x5c
00454e78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00454e7c  04 10 9d e5                                      ldr r1, [sp, #4]
00454e80  74 23 95 e5                                      ldr r2, [r5, #0x374]
00454e84  10 31 91 e5                                      ldr r3, [r1, #0x110]
00454e88  03 00 52 e1                                      cmp r2, r3
00454e8c  d7 ff ff 1a                                      bne #0x454df0
00454e90  8a 30 d5 e5                                      ldrb r3, [r5, #0x8a]
00454e94  00 00 53 e3                                      cmp r3, #0
00454e98  d4 ff ff 0a                                      beq #0x454df0
00454e9c  0b 00 a0 e1                                      mov r0, fp
00454ea0  16 1e 85 e2                                      add r1, r5, #0x160
00454ea4  01 20 a0 e3                                      mov r2, #1
00454ea8  4e fb ff eb                                      bl #0x453be8
00454eac  00 00 50 e3                                      cmp r0, #0
00454eb0  ce ff ff 0a                                      beq #0x454df0
00454eb4  60 31 95 e5                                      ldr r3, [r5, #0x160]
00454eb8  64 c1 95 e5                                      ldr ip, [r5, #0x164]
00454ebc  68 e1 95 e5                                      ldr lr, [r5, #0x168]
00454ec0  0b 00 a0 e1                                      mov r0, fp
00454ec4  01 10 a0 e3                                      mov r1, #1
00454ec8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00454ecc  40 30 8d e5                                      str r3, [sp, #0x40]
00454ed0  44 c0 8d e5                                      str ip, [sp, #0x44]
00454ed4  48 e0 8d e5                                      str lr, [sp, #0x48]
00454ed8  89 fd ff eb                                      bl #0x454504
00454edc  c3 ff ff ea                                      b #0x454df0
00454ee0  8a 30 d5 e5                                      ldrb r3, [r5, #0x8a]
00454ee4  00 00 53 e3                                      cmp r3, #0
00454ee8  cb ff ff 0a                                      beq #0x454e1c
00454eec  0b 00 a0 e1                                      mov r0, fp
00454ef0  16 1e 85 e2                                      add r1, r5, #0x160
00454ef4  01 20 a0 e3                                      mov r2, #1
00454ef8  3a fb ff eb                                      bl #0x453be8
00454efc  00 00 50 e3                                      cmp r0, #0
00454f00  c5 ff ff 0a                                      beq #0x454e1c
00454f04  60 31 95 e5                                      ldr r3, [r5, #0x160]
00454f08  64 c1 95 e5                                      ldr ip, [r5, #0x164]
00454f0c  68 e1 95 e5                                      ldr lr, [r5, #0x168]
00454f10  0b 00 a0 e1                                      mov r0, fp
00454f14  02 10 a0 e3                                      mov r1, #2
00454f18  08 20 9d e5                                      ldr r2, [sp, #8]
00454f1c  28 30 8d e5                                      str r3, [sp, #0x28]
00454f20  2c c0 8d e5                                      str ip, [sp, #0x2c]
00454f24  30 e0 8d e5                                      str lr, [sp, #0x30]
00454f28  75 fd ff eb                                      bl #0x454504
00454f2c  ba ff ff ea                                      b #0x454e1c
00454f30  0b 00 a0 e1                                      mov r0, fp
00454f34  16 1e 85 e2                                      add r1, r5, #0x160
00454f38  01 20 a0 e3                                      mov r2, #1
00454f3c  29 fb ff eb                                      bl #0x453be8
00454f40  00 00 50 e3                                      cmp r0, #0
00454f44  bf ff ff 0a                                      beq #0x454e48
00454f48  60 31 95 e5                                      ldr r3, [r5, #0x160]
00454f4c  64 c1 95 e5                                      ldr ip, [r5, #0x164]
00454f50  68 e1 95 e5                                      ldr lr, [r5, #0x168]
00454f54  0a 10 a0 e1                                      mov r1, sl
00454f58  0b 00 a0 e1                                      mov r0, fp
00454f5c  00 20 9d e5                                      ldr r2, [sp]
00454f60  10 30 8d e5                                      str r3, [sp, #0x10]
00454f64  14 c0 8d e5                                      str ip, [sp, #0x14]
00454f68  18 e0 8d e5                                      str lr, [sp, #0x18]
00454f6c  64 fd ff eb                                      bl #0x454504
00454f70  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00454f74  00 00 53 e3                                      cmp r3, #0
00454f78  b7 ff ff 1a                                      bne #0x454e5c
00454f7c  04 20 94 e5                                      ldr r2, [r4, #4]
00454f80  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00454f84  04 00 51 e1                                      cmp r1, r4
00454f88  05 00 00 1a                                      bne #0x454fa4
00454f8c  02 40 a0 e1                                      mov r4, r2
00454f90  04 20 92 e5                                      ldr r2, [r2, #4]
00454f94  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00454f98  03 00 54 e1                                      cmp r4, r3
00454f9c  fa ff ff 0a                                      beq #0x454f8c
00454fa0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00454fa4  02 00 53 e1                                      cmp r3, r2
00454fa8  02 40 a0 11                                      movne r4, r2
00454fac  80 ff ff ea                                      b #0x454db4
; mapping-symbol data/literal pool
00454fb0  28 fd 53 00 f4 37 00 00                          .byte 0x28, 0xfd, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00454fb8, declared_size=384, range_size=384, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map12ShowNpcIconsEv
; demangled: MenuCharMenu_Map::ShowNpcIcons()
; decoder-mode: arm
00454fb8  70 31 9f e5                                      ldr r3, [pc, #0x170]
00454fbc  70 21 9f e5                                      ldr r2, [pc, #0x170]
00454fc0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00454fc4  03 30 8f e0                                      add r3, pc, r3
00454fc8  02 20 93 e7                                      ldr r2, [r3, r2]
00454fcc  28 d0 4d e2                                      sub sp, sp, #0x28
00454fd0  00 70 a0 e1                                      mov r7, r0
00454fd4  38 60 92 e5                                      ldr r6, [r2, #0x38]
00454fd8  04 90 8d e2                                      add sb, sp, #4
00454fdc  10 a0 8d e2                                      add sl, sp, #0x10
00454fe0  60 50 96 e5                                      ldr r5, [r6, #0x60]
00454fe4  60 60 86 e2                                      add r6, r6, #0x60
00454fe8  1c 80 8d e2                                      add r8, sp, #0x1c
00454fec  05 00 56 e1                                      cmp r6, r5
00454ff0  0e 00 00 0a                                      beq #0x455030
00454ff4  08 40 95 e5                                      ldr r4, [r5, #8]
00454ff8  00 00 54 e3                                      cmp r4, #0
00454ffc  08 00 00 0a                                      beq #0x455024
00455000  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
00455004  00 00 50 e3                                      cmp r0, #0
00455008  05 00 00 0a                                      beq #0x455024
0045500c  ac 6e 00 eb                                      bl #0x470ac4
00455010  00 00 50 e3                                      cmp r0, #0
00455014  02 00 00 0a                                      beq #0x455024
00455018  80 30 d4 e5                                      ldrb r3, [r4, #0x80]
0045501c  00 00 53 e3                                      cmp r3, #0
00455020  04 00 00 1a                                      bne #0x455038
00455024  00 50 95 e5                                      ldr r5, [r5]
00455028  05 00 56 e1                                      cmp r6, r5
0045502c  f0 ff ff 1a                                      bne #0x454ff4
00455030  28 d0 8d e2                                      add sp, sp, #0x28
00455034  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00455038  00 30 94 e5                                      ldr r3, [r4]
0045503c  04 00 a0 e1                                      mov r0, r4
00455040  0f e0 a0 e1                                      mov lr, pc
00455044  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00455048  00 00 50 e3                                      cmp r0, #0
0045504c  f4 ff ff 1a                                      bne #0x455024
00455050  07 00 a0 e1                                      mov r0, r7
00455054  16 1e 84 e2                                      add r1, r4, #0x160
00455058  01 20 a0 e3                                      mov r2, #1
0045505c  e1 fa ff eb                                      bl #0x453be8
00455060  00 00 50 e3                                      cmp r0, #0
00455064  ee ff ff 0a                                      beq #0x455024
00455068  04 00 a0 e1                                      mov r0, r4
0045506c  fc 37 fd eb                                      bl #0x3a3064
00455070  00 00 50 e3                                      cmp r0, #0
00455074  21 00 00 1a                                      bne #0x455100
00455078  fa 32 d4 e5                                      ldrb r3, [r4, #0x2fa]
0045507c  00 00 53 e3                                      cmp r3, #0
00455080  0e 00 00 0a                                      beq #0x4550c0
00455084  fb 32 d4 e5                                      ldrb r3, [r4, #0x2fb]
00455088  00 00 53 e3                                      cmp r3, #0
0045508c  0b 00 00 1a                                      bne #0x4550c0
00455090  60 31 94 e5                                      ldr r3, [r4, #0x160]
00455094  64 c1 94 e5                                      ldr ip, [r4, #0x164]
00455098  68 e1 94 e5                                      ldr lr, [r4, #0x168]
0045509c  07 00 a0 e1                                      mov r0, r7
004550a0  0a 10 a0 e3                                      mov r1, #0xa
004550a4  0a 20 a0 e1                                      mov r2, sl
004550a8  10 30 8d e5                                      str r3, [sp, #0x10]
004550ac  14 c0 8d e5                                      str ip, [sp, #0x14]
004550b0  18 e0 8d e5                                      str lr, [sp, #0x18]
004550b4  12 fd ff eb                                      bl #0x454504
004550b8  00 50 95 e5                                      ldr r5, [r5]
004550bc  d9 ff ff ea                                      b #0x455028
004550c0  04 00 a0 e1                                      mov r0, r4
004550c4  fe 37 fd eb                                      bl #0x3a30c4
004550c8  00 00 50 e3                                      cmp r0, #0
004550cc  d4 ff ff 0a                                      beq #0x455024
004550d0  60 31 94 e5                                      ldr r3, [r4, #0x160]
004550d4  64 c1 94 e5                                      ldr ip, [r4, #0x164]
004550d8  68 e1 94 e5                                      ldr lr, [r4, #0x168]
004550dc  07 00 a0 e1                                      mov r0, r7
004550e0  0b 10 a0 e3                                      mov r1, #0xb
004550e4  09 20 a0 e1                                      mov r2, sb
004550e8  04 30 8d e5                                      str r3, [sp, #4]
004550ec  08 c0 8d e5                                      str ip, [sp, #8]
004550f0  0c e0 8d e5                                      str lr, [sp, #0xc]
004550f4  02 fd ff eb                                      bl #0x454504
004550f8  00 50 95 e5                                      ldr r5, [r5]
004550fc  c9 ff ff ea                                      b #0x455028
00455100  60 c1 94 e5                                      ldr ip, [r4, #0x160]
00455104  64 31 94 e5                                      ldr r3, [r4, #0x164]
00455108  68 e1 94 e5                                      ldr lr, [r4, #0x168]
0045510c  07 00 a0 e1                                      mov r0, r7
00455110  04 10 a0 e3                                      mov r1, #4
00455114  08 20 a0 e1                                      mov r2, r8
00455118  1c c0 8d e5                                      str ip, [sp, #0x1c]
0045511c  20 30 8d e5                                      str r3, [sp, #0x20]
00455120  24 e0 8d e5                                      str lr, [sp, #0x24]
00455124  f6 fc ff eb                                      bl #0x454504
00455128  00 50 95 e5                                      ldr r5, [r5]
0045512c  bd ff ff ea                                      b #0x455028
; mapping-symbol data/literal pool
00455130  cc fa 53 00 f4 37 00 00                          .byte 0xcc, 0xfa, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00455138, declared_size=1264, range_size=1264, mode=arm
; class-group: MenuCharMenu_Map
; alias: _ZN16MenuCharMenu_Map4ShowEv
; demangled: MenuCharMenu_Map::Show()
; decoder-mode: arm
00455138  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045513c  c8 14 9f e5                                      ldr r1, [pc, #0x4c8]
00455140  c8 24 9f e5                                      ldr r2, [pc, #0x4c8]
00455144  7c d0 4d e2                                      sub sp, sp, #0x7c
00455148  01 10 8f e0                                      add r1, pc, r1
0045514c  02 30 91 e7                                      ldr r3, [r1, r2]
00455150  08 10 8d e5                                      str r1, [sp, #8]
00455154  00 40 a0 e1                                      mov r4, r0
00455158  00 c0 93 e5                                      ldr ip, [r3]
0045515c  08 00 9d e5                                      ldr r0, [sp, #8]
00455160  ac 34 9f e5                                      ldr r3, [pc, #0x4ac]
00455164  ac 14 9f e5                                      ldr r1, [pc, #0x4ac]
00455168  14 20 8d e5                                      str r2, [sp, #0x14]
0045516c  03 20 90 e7                                      ldr r2, [r0, r3]
00455170  01 10 8f e0                                      add r1, pc, r1
00455174  04 30 a0 e1                                      mov r3, r4
00455178  04 00 94 e5                                      ldr r0, [r4, #4]
0045517c  74 c0 8d e5                                      str ip, [sp, #0x74]
00455180  14 50 0d eb                                      bl #0x7a91d8
00455184  04 00 a0 e1                                      mov r0, r4
00455188  b0 40 ff eb                                      bl #0x425450
0045518c  88 54 9f e5                                      ldr r5, [pc, #0x488]
00455190  08 10 9d e5                                      ldr r1, [sp, #8]
00455194  05 60 91 e7                                      ldr r6, [r1, r5]
00455198  10 30 96 e5                                      ldr r3, [r6, #0x10]
0045519c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
004551a0  8c 32 93 e5                                      ldr r3, [r3, #0x28c]
004551a4  00 00 53 e3                                      cmp r3, #0
004551a8  fc 00 00 0a                                      beq #0x4555a0
004551ac  03 00 a0 e1                                      mov r0, r3
004551b0  01 10 a0 e3                                      mov r1, #1
004551b4  00 30 93 e5                                      ldr r3, [r3]
004551b8  0f e0 a0 e1                                      mov lr, pc
004551bc  48 f0 93 e5                                      ldr pc, [r3, #0x48]
004551c0  40 00 96 e5                                      ldr r0, [r6, #0x40]
004551c4  00 10 a0 e3                                      mov r1, #0
004551c8  01 20 a0 e3                                      mov r2, #1
004551cc  a9 64 fc eb                                      bl #0x36e478
004551d0  60 36 90 e5                                      ldr r3, [r0, #0x660]
004551d4  00 00 53 e3                                      cmp r3, #0
004551d8  f0 00 00 0a                                      beq #0x4555a0
004551dc  38 70 96 e5                                      ldr r7, [r6, #0x38]
004551e0  c4 a0 84 e2                                      add sl, r4, #0xc4
004551e4  0a 00 a0 e1                                      mov r0, sl
004551e8  24 60 b7 e5                                      ldr r6, [r7, #0x24]!
004551ec  cc 80 84 e2                                      add r8, r4, #0xcc
004551f0  3c fc ff eb                                      bl #0x4542e8
004551f4  08 00 a0 e1                                      mov r0, r8
004551f8  3a fc ff eb                                      bl #0x4542e8
004551fc  06 00 57 e1                                      cmp r7, r6
00455200  0f 00 00 0a                                      beq #0x455244
00455204  08 00 96 e5                                      ldr r0, [r6, #8]
00455208  a6 04 fd eb                                      bl #0x3964a8
0045520c  00 00 50 e3                                      cmp r0, #0
00455210  eb 00 00 0a                                      beq #0x4555c4
00455214  0a 00 a0 e1                                      mov r0, sl
00455218  2a fc ff eb                                      bl #0x4542c8
0045521c  08 30 96 e5                                      ldr r3, [r6, #8]
00455220  08 30 80 e5                                      str r3, [r0, #8]
00455224  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
00455228  00 a0 80 e5                                      str sl, [r0]
0045522c  04 30 80 e5                                      str r3, [r0, #4]
00455230  00 00 83 e5                                      str r0, [r3]
00455234  c8 00 84 e5                                      str r0, [r4, #0xc8]
00455238  00 60 96 e5                                      ldr r6, [r6]
0045523c  06 00 57 e1                                      cmp r7, r6
00455240  ef ff ff 1a                                      bne #0x455204
00455244  08 00 9d e5                                      ldr r0, [sp, #8]
00455248  02 31 e0 e3                                      mvn r3, #0x80000000
0045524c  02 35 43 e2                                      sub r3, r3, #0x800000
00455250  05 10 90 e7                                      ldr r1, [r0, r5]
00455254  02 25 e0 e3                                      mvn r2, #0x800000
00455258  e8 20 84 e5                                      str r2, [r4, #0xe8]
0045525c  dc 30 84 e5                                      str r3, [r4, #0xdc]
00455260  e0 20 84 e5                                      str r2, [r4, #0xe0]
00455264  e4 20 84 e5                                      str r2, [r4, #0xe4]
00455268  d4 30 84 e5                                      str r3, [r4, #0xd4]
0045526c  d8 30 84 e5                                      str r3, [r4, #0xd8]
00455270  10 30 91 e5                                      ldr r3, [r1, #0x10]
00455274  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00455278  8c 32 93 e5                                      ldr r3, [r3, #0x28c]
0045527c  0c 30 8d e5                                      str r3, [sp, #0xc]
00455280  f4 50 b3 e5                                      ldr r5, [r3, #0xf4]!
00455284  03 00 55 e1                                      cmp r5, r3
00455288  0c 30 8d e5                                      str r3, [sp, #0xc]
0045528c  d7 00 00 0a                                      beq #0x4555f0
00455290  4c 10 8d e2                                      add r1, sp, #0x4c
00455294  10 10 8d e5                                      str r1, [sp, #0x10]
00455298  00 00 55 e3                                      cmp r5, #0
0045529c  05 60 a0 01                                      moveq r6, r5
004552a0  04 60 45 12                                      subne r6, r5, #4
004552a4  00 30 96 e5                                      ldr r3, [r6]
004552a8  06 00 a0 e1                                      mov r0, r6
004552ac  00 50 95 e5                                      ldr r5, [r5]
004552b0  0f e0 a0 e1                                      mov lr, pc
004552b4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
004552b8  00 20 a0 e1                                      mov r2, r0
004552bc  0c 70 90 e5                                      ldr r7, [r0, #0xc]
004552c0  00 a0 90 e5                                      ldr sl, [r0]
004552c4  08 30 92 e5                                      ldr r3, [r2, #8]
004552c8  14 b0 90 e5                                      ldr fp, [r0, #0x14]
004552cc  07 10 a0 e1                                      mov r1, r7
004552d0  0a 00 a0 e1                                      mov r0, sl
004552d4  04 80 92 e5                                      ldr r8, [r2, #4]
004552d8  10 90 92 e5                                      ldr sb, [r2, #0x10]
004552dc  04 30 8d e5                                      str r3, [sp, #4]
004552e0  2f e6 fa eb                                      bl #0x30eba4
004552e4  3f 14 a0 e3                                      mov r1, #0x3f000000
004552e8  9f e6 fa eb                                      bl #0x30ed6c
004552ec  09 10 a0 e1                                      mov r1, sb
004552f0  4c 00 8d e5                                      str r0, [sp, #0x4c]
004552f4  08 00 a0 e1                                      mov r0, r8
004552f8  29 e6 fa eb                                      bl #0x30eba4
004552fc  3f 14 a0 e3                                      mov r1, #0x3f000000
00455300  99 e6 fa eb                                      bl #0x30ed6c
00455304  04 30 9d e5                                      ldr r3, [sp, #4]
00455308  0b 10 a0 e1                                      mov r1, fp
0045530c  50 00 8d e5                                      str r0, [sp, #0x50]
00455310  03 00 a0 e1                                      mov r0, r3
00455314  22 e6 fa eb                                      bl #0x30eba4
00455318  3f 14 a0 e3                                      mov r1, #0x3f000000
0045531c  92 e6 fa eb                                      bl #0x30ed6c
00455320  10 10 9d e5                                      ldr r1, [sp, #0x10]
00455324  54 00 8d e5                                      str r0, [sp, #0x54]
00455328  01 20 a0 e3                                      mov r2, #1
0045532c  04 00 a0 e1                                      mov r0, r4
00455330  2c fa ff eb                                      bl #0x453be8
00455334  00 b0 a0 e1                                      mov fp, r0
00455338  00 30 96 e5                                      ldr r3, [r6]
0045533c  06 00 a0 e1                                      mov r0, r6
00455340  0b 10 a0 e1                                      mov r1, fp
00455344  0f e0 a0 e1                                      mov lr, pc
00455348  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0045534c  00 00 5b e3                                      cmp fp, #0
00455350  1b 00 00 0a                                      beq #0x4553c4
00455354  d4 60 94 e5                                      ldr r6, [r4, #0xd4]
00455358  0a 00 a0 e1                                      mov r0, sl
0045535c  06 10 a0 e1                                      mov r1, r6
00455360  e9 e4 fa eb                                      bl #0x30e70c
00455364  00 00 50 e3                                      cmp r0, #0
00455368  0a 60 a0 11                                      movne r6, sl
0045536c  d8 a0 94 e5                                      ldr sl, [r4, #0xd8]
00455370  d4 60 84 e5                                      str r6, [r4, #0xd4]
00455374  08 00 a0 e1                                      mov r0, r8
00455378  0a 10 a0 e1                                      mov r1, sl
0045537c  e2 e4 fa eb                                      bl #0x30e70c
00455380  e0 60 94 e5                                      ldr r6, [r4, #0xe0]
00455384  00 00 50 e3                                      cmp r0, #0
00455388  08 a0 a0 11                                      movne sl, r8
0045538c  06 10 a0 e1                                      mov r1, r6
00455390  07 00 a0 e1                                      mov r0, r7
00455394  d8 a0 84 e5                                      str sl, [r4, #0xd8]
00455398  d6 e3 fa eb                                      bl #0x30e2f8
0045539c  00 00 50 e3                                      cmp r0, #0
004553a0  07 60 a0 11                                      movne r6, r7
004553a4  e4 70 94 e5                                      ldr r7, [r4, #0xe4]
004553a8  e0 60 84 e5                                      str r6, [r4, #0xe0]
004553ac  09 00 a0 e1                                      mov r0, sb
004553b0  07 10 a0 e1                                      mov r1, r7
004553b4  cf e3 fa eb                                      bl #0x30e2f8
004553b8  00 00 50 e3                                      cmp r0, #0
004553bc  09 70 a0 11                                      movne r7, sb
004553c0  e4 70 84 e5                                      str r7, [r4, #0xe4]
004553c4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
004553c8  05 00 52 e1                                      cmp r2, r5
004553cc  b1 ff ff 1a                                      bne #0x455298
004553d0  e0 00 94 e5                                      ldr r0, [r4, #0xe0]
004553d4  d4 10 94 e5                                      ldr r1, [r4, #0xd4]
004553d8  cb e4 fa eb                                      bl #0x30e70c
004553dc  00 00 50 e3                                      cmp r0, #0
004553e0  82 00 00 1a                                      bne #0x4555f0
004553e4  e4 10 94 e5                                      ldr r1, [r4, #0xe4]
004553e8  d8 00 94 e5                                      ldr r0, [r4, #0xd8]
004553ec  c1 e3 fa eb                                      bl #0x30e2f8
004553f0  d4 70 94 e5                                      ldr r7, [r4, #0xd4]
004553f4  00 00 50 e3                                      cmp r0, #0
004553f8  00 30 a0 13                                      movne r3, #0
004553fc  d8 30 84 15                                      strne r3, [r4, #0xd8]
00455400  e4 30 84 15                                      strne r3, [r4, #0xe4]
00455404  00 30 a0 e3                                      mov r3, #0
00455408  dc 30 84 e5                                      str r3, [r4, #0xdc]
0045540c  e8 30 84 e5                                      str r3, [r4, #0xe8]
00455410  e0 00 94 e5                                      ldr r0, [r4, #0xe0]
00455414  07 10 a0 e1                                      mov r1, r7
00455418  e3 e3 fa eb                                      bl #0x30e3ac
0045541c  d8 10 94 e5                                      ldr r1, [r4, #0xd8]
00455420  00 60 a0 e1                                      mov r6, r0
00455424  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
00455428  df e3 fa eb                                      bl #0x30e3ac
0045542c  06 10 a0 e1                                      mov r1, r6
00455430  00 50 a0 e1                                      mov r5, r0
00455434  07 00 a0 e1                                      mov r0, r7
00455438  db e3 fa eb                                      bl #0x30e3ac
0045543c  05 10 a0 e1                                      mov r1, r5
00455440  d4 00 84 e5                                      str r0, [r4, #0xd4]
00455444  d8 00 94 e5                                      ldr r0, [r4, #0xd8]
00455448  d7 e3 fa eb                                      bl #0x30e3ac
0045544c  06 10 a0 e1                                      mov r1, r6
00455450  d8 00 84 e5                                      str r0, [r4, #0xd8]
00455454  e0 00 94 e5                                      ldr r0, [r4, #0xe0]
00455458  d1 e5 fa eb                                      bl #0x30eba4
0045545c  05 10 a0 e1                                      mov r1, r5
00455460  e0 00 84 e5                                      str r0, [r4, #0xe0]
00455464  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
00455468  cd e5 fa eb                                      bl #0x30eba4
0045546c  e4 00 84 e5                                      str r0, [r4, #0xe4]
00455470  04 00 a0 e1                                      mov r0, r4
00455474  ae f7 ff eb                                      bl #0x453334
00455478  04 00 a0 e1                                      mov r0, r4
0045547c  61 fd ff eb                                      bl #0x454a08
00455480  04 00 a0 e1                                      mov r0, r4
00455484  cb fe ff eb                                      bl #0x454fb8
00455488  04 00 a0 e1                                      mov r0, r4
0045548c  32 fe ff eb                                      bl #0x454d5c
00455490  04 00 a0 e1                                      mov r0, r4
00455494  bc fd ff eb                                      bl #0x454b8c
00455498  04 00 a0 e1                                      mov r0, r4
0045549c  02 fd ff eb                                      bl #0x4548ac
004554a0  04 00 a0 e1                                      mov r0, r4
004554a4  ac f7 ff eb                                      bl #0x45335c
004554a8  70 31 9f e5                                      ldr r3, [pc, #0x170]
004554ac  08 00 9d e5                                      ldr r0, [sp, #8]
004554b0  5c 50 8d e2                                      add r5, sp, #0x5c
004554b4  03 60 90 e7                                      ldr r6, [r0, r3]
004554b8  06 00 a0 e1                                      mov r0, r6
004554bc  f1 88 fb eb                                      bl #0x337888
004554c0  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
004554c4  58 20 8d e2                                      add r2, sp, #0x58
004554c8  05 00 a0 e1                                      mov r0, r5
004554cc  01 10 8f e0                                      add r1, pc, r1
004554d0  05 fb fa eb                                      bl #0x3140ec
004554d4  06 00 a0 e1                                      mov r0, r6
004554d8  05 10 a0 e1                                      mov r1, r5
004554dc  69 89 fb eb                                      bl #0x337a88
004554e0  00 60 a0 e1                                      mov r6, r0
004554e4  70 00 9d e5                                      ldr r0, [sp, #0x70]
004554e8  05 00 50 e1                                      cmp r0, r5
004554ec  06 00 00 0a                                      beq #0x45550c
004554f0  00 00 50 e3                                      cmp r0, #0
004554f4  04 00 00 0a                                      beq #0x45550c
004554f8  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
004554fc  01 10 60 e0                                      rsb r1, r0, r1
00455500  80 00 51 e3                                      cmp r1, #0x80
00455504  3d 00 00 8a                                      bhi #0x455600
00455508  7c ce 0a eb                                      bl #0x708f00
0045550c  00 00 56 e3                                      cmp r6, #0
00455510  20 00 00 0a                                      beq #0x455598
00455514  d8 e0 94 e5                                      ldr lr, [r4, #0xd8]
00455518  e0 c0 94 e5                                      ldr ip, [r4, #0xe0]
0045551c  e4 50 94 e5                                      ldr r5, [r4, #0xe4]
00455520  d4 60 94 e5                                      ldr r6, [r4, #0xd4]
00455524  00 30 a0 e3                                      mov r3, #0
00455528  00 10 a0 e3                                      mov r1, #0
0045552c  40 20 8d e2                                      add r2, sp, #0x40
00455530  04 00 a0 e1                                      mov r0, r4
00455534  1c c0 8d e5                                      str ip, [sp, #0x1c]
00455538  20 e0 8d e5                                      str lr, [sp, #0x20]
0045553c  24 30 8d e5                                      str r3, [sp, #0x24]
00455540  48 30 8d e5                                      str r3, [sp, #0x48]
00455544  38 e0 8d e5                                      str lr, [sp, #0x38]
00455548  3c 30 8d e5                                      str r3, [sp, #0x3c]
0045554c  28 c0 8d e5                                      str ip, [sp, #0x28]
00455550  30 30 8d e5                                      str r3, [sp, #0x30]
00455554  34 60 8d e5                                      str r6, [sp, #0x34]
00455558  2c 50 8d e5                                      str r5, [sp, #0x2c]
0045555c  40 60 8d e5                                      str r6, [sp, #0x40]
00455560  44 50 8d e5                                      str r5, [sp, #0x44]
00455564  e6 fb ff eb                                      bl #0x454504
00455568  04 00 a0 e1                                      mov r0, r4
0045556c  00 10 a0 e3                                      mov r1, #0
00455570  34 20 8d e2                                      add r2, sp, #0x34
00455574  e2 fb ff eb                                      bl #0x454504
00455578  04 00 a0 e1                                      mov r0, r4
0045557c  00 10 a0 e3                                      mov r1, #0
00455580  28 20 8d e2                                      add r2, sp, #0x28
00455584  de fb ff eb                                      bl #0x454504
00455588  04 00 a0 e1                                      mov r0, r4
0045558c  00 10 a0 e3                                      mov r1, #0
00455590  1c 20 8d e2                                      add r2, sp, #0x1c
00455594  da fb ff eb                                      bl #0x454504
00455598  04 00 a0 e1                                      mov r0, r4
0045559c  de f7 ff eb                                      bl #0x45351c
004555a0  08 20 9d e5                                      ldr r2, [sp, #8]
004555a4  14 10 9d e5                                      ldr r1, [sp, #0x14]
004555a8  01 30 92 e7                                      ldr r3, [r2, r1]
004555ac  74 20 9d e5                                      ldr r2, [sp, #0x74]
004555b0  00 30 93 e5                                      ldr r3, [r3]
004555b4  03 00 52 e1                                      cmp r2, r3
004555b8  12 00 00 1a                                      bne #0x455608
004555bc  7c d0 8d e2                                      add sp, sp, #0x7c
004555c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004555c4  08 00 a0 e1                                      mov r0, r8
004555c8  3e fb ff eb                                      bl #0x4542c8
004555cc  08 30 96 e5                                      ldr r3, [r6, #8]
004555d0  08 30 80 e5                                      str r3, [r0, #8]
004555d4  d0 30 94 e5                                      ldr r3, [r4, #0xd0]
004555d8  00 80 80 e5                                      str r8, [r0]
004555dc  04 30 80 e5                                      str r3, [r0, #4]
004555e0  00 00 83 e5                                      str r0, [r3]
004555e4  d0 00 84 e5                                      str r0, [r4, #0xd0]
004555e8  00 60 96 e5                                      ldr r6, [r6]
004555ec  12 ff ff ea                                      b #0x45523c
004555f0  00 30 a0 e3                                      mov r3, #0
004555f4  d4 30 84 e5                                      str r3, [r4, #0xd4]
004555f8  e0 30 84 e5                                      str r3, [r4, #0xe0]
004555fc  78 ff ff ea                                      b #0x4553e4
00455600  8e eb fa eb                                      bl #0x310440
00455604  c0 ff ff ea                                      b #0x45550c
00455608  40 e3 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045560c  48 f9 53 00 ac 40 00 00 b8 30 00 00 50 37 47 00  .byte 0x48, 0xf9, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb8, 0x30, 0x00, 0x00, 0x50, 0x37, 0x47, 0x00
0045561c  f4 37 00 00 84 08 00 00 7c 79 47 00              .byte 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x7c, 0x79, 0x47, 0x00
