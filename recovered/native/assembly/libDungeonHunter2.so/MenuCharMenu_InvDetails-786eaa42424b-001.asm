; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004528b8, declared_size=24, range_size=24, mode=arm
; class-group: MenuCharMenu_InvDetails
; alias: _ZN23MenuCharMenu_InvDetails4HideEv
; demangled: MenuCharMenu_InvDetails::Hide()
; decoder-mode: arm
004528b8  10 40 2d e9                                      push {r4, lr}
004528bc  00 40 a0 e1                                      mov r4, r0
004528c0  d2 ff ff eb                                      bl #0x452810
004528c4  04 00 a0 e1                                      mov r0, r4
004528c8  10 40 bd e8                                      pop {r4, lr}
004528cc  88 48 ff ea                                      b #0x424af4

; FUNCTION 0x00452c50, declared_size=52, range_size=52, mode=arm
; class-group: MenuCharMenu_InvDetails
; alias: _ZN23MenuCharMenu_InvDetailsD1Ev
; demangled: MenuCharMenu_InvDetails::~MenuCharMenu_InvDetails()
; decoder-mode: arm
00452c50  24 30 9f e5                                      ldr r3, [pc, #0x24]
00452c54  24 20 9f e5                                      ldr r2, [pc, #0x24]
00452c58  10 40 2d e9                                      push {r4, lr}
00452c5c  03 30 8f e0                                      add r3, pc, r3
00452c60  02 20 93 e7                                      ldr r2, [r3, r2]
00452c64  00 40 a0 e1                                      mov r4, r0
00452c68  08 20 82 e2                                      add r2, r2, #8
00452c6c  00 20 80 e5                                      str r2, [r0]
00452c70  3f 3f ff eb                                      bl #0x422974
00452c74  04 00 a0 e1                                      mov r0, r4
00452c78  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00452c7c  34 1e 54 00 04 2a 00 00                          .byte 0x34, 0x1e, 0x54, 0x00, 0x04, 0x2a, 0x00, 0x00

; FUNCTION 0x00452c84, declared_size=28, range_size=28, mode=arm
; class-group: MenuCharMenu_InvDetails
; alias: _ZN23MenuCharMenu_InvDetailsD0Ev
; demangled: MenuCharMenu_InvDetails::~MenuCharMenu_InvDetails()
; decoder-mode: arm
00452c84  10 40 2d e9                                      push {r4, lr}
00452c88  00 40 a0 e1                                      mov r4, r0
00452c8c  ef ff ff eb                                      bl #0x452c50
00452c90  04 00 a0 e1                                      mov r0, r4
00452c94  e9 f5 fa eb                                      bl #0x310440
00452c98  04 00 a0 e1                                      mov r0, r4
00452c9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00452ca0, declared_size=52, range_size=52, mode=arm
; class-group: MenuCharMenu_InvDetails
; alias: _ZN23MenuCharMenu_InvDetailsD2Ev
; demangled: MenuCharMenu_InvDetails::~MenuCharMenu_InvDetails()
; decoder-mode: arm
00452ca0  24 30 9f e5                                      ldr r3, [pc, #0x24]
00452ca4  24 20 9f e5                                      ldr r2, [pc, #0x24]
00452ca8  10 40 2d e9                                      push {r4, lr}
00452cac  03 30 8f e0                                      add r3, pc, r3
00452cb0  02 20 93 e7                                      ldr r2, [r3, r2]
00452cb4  00 40 a0 e1                                      mov r4, r0
00452cb8  08 20 82 e2                                      add r2, r2, #8
00452cbc  00 20 80 e5                                      str r2, [r0]
00452cc0  2b 3f ff eb                                      bl #0x422974
00452cc4  04 00 a0 e1                                      mov r0, r4
00452cc8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00452ccc  e4 1d 54 00 04 2a 00 00                          .byte 0xe4, 0x1d, 0x54, 0x00, 0x04, 0x2a, 0x00, 0x00

; FUNCTION 0x00452cd4, declared_size=24, range_size=24, mode=arm
; class-group: MenuCharMenu_InvDetails
; alias: _ZN23MenuCharMenu_InvDetails4InitEv
; demangled: MenuCharMenu_InvDetails::Init()
; decoder-mode: arm
00452cd4  10 40 2d e9                                      push {r4, lr}
00452cd8  00 40 a0 e1                                      mov r4, r0
00452cdc  6a 67 ff eb                                      bl #0x42ca8c
00452ce0  04 10 a0 e1                                      mov r1, r4
00452ce4  10 40 bd e8                                      pop {r4, lr}
00452ce8  69 70 ff ea                                      b #0x42ee94

; FUNCTION 0x00452cec, declared_size=72, range_size=72, mode=arm
; class-group: MenuCharMenu_InvDetails
; alias: _ZN23MenuCharMenu_InvDetailsC1Ev
; demangled: MenuCharMenu_InvDetails::MenuCharMenu_InvDetails()
; decoder-mode: arm
00452cec  34 10 9f e5                                      ldr r1, [pc, #0x34]
00452cf0  70 40 2d e9                                      push {r4, r5, r6, lr}
00452cf4  01 10 8f e0                                      add r1, pc, r1
00452cf8  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
00452cfc  00 50 a0 e1                                      mov r5, r0
00452d00  3e 51 ff eb                                      bl #0x427200
00452d04  24 30 9f e5                                      ldr r3, [pc, #0x24]
00452d08  04 40 8f e0                                      add r4, pc, r4
00452d0c  05 00 a0 e1                                      mov r0, r5
00452d10  03 30 94 e7                                      ldr r3, [r4, r3]
00452d14  08 30 83 e2                                      add r3, r3, #8
00452d18  00 30 85 e5                                      str r3, [r5]
00452d1c  ec ff ff eb                                      bl #0x452cd4
00452d20  05 00 a0 e1                                      mov r0, r5
00452d24  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00452d28  fc 9f 47 00 88 1d 54 00 04 2a 00 00              .byte 0xfc, 0x9f, 0x47, 0x00, 0x88, 0x1d, 0x54, 0x00, 0x04, 0x2a, 0x00, 0x00

; FUNCTION 0x00452d34, declared_size=72, range_size=72, mode=arm
; class-group: MenuCharMenu_InvDetails
; alias: _ZN23MenuCharMenu_InvDetailsC2Ev
; demangled: MenuCharMenu_InvDetails::MenuCharMenu_InvDetails()
; decoder-mode: arm
00452d34  34 10 9f e5                                      ldr r1, [pc, #0x34]
00452d38  70 40 2d e9                                      push {r4, r5, r6, lr}
00452d3c  01 10 8f e0                                      add r1, pc, r1
00452d40  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
00452d44  00 50 a0 e1                                      mov r5, r0
00452d48  2c 51 ff eb                                      bl #0x427200
00452d4c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00452d50  04 40 8f e0                                      add r4, pc, r4
00452d54  05 00 a0 e1                                      mov r0, r5
00452d58  03 30 94 e7                                      ldr r3, [r4, r3]
00452d5c  08 30 83 e2                                      add r3, r3, #8
00452d60  00 30 85 e5                                      str r3, [r5]
00452d64  da ff ff eb                                      bl #0x452cd4
00452d68  05 00 a0 e1                                      mov r0, r5
00452d6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00452d70  b4 9f 47 00 40 1d 54 00 04 2a 00 00              .byte 0xb4, 0x9f, 0x47, 0x00, 0x40, 0x1d, 0x54, 0x00, 0x04, 0x2a, 0x00, 0x00

; FUNCTION 0x00452d7c, declared_size=132, range_size=132, mode=arm
; class-group: MenuCharMenu_InvDetails
; alias: _ZN23MenuCharMenu_InvDetails11GetInstanceEv
; demangled: MenuCharMenu_InvDetails::GetInstance()
; decoder-mode: arm
00452d7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00452d80  64 50 9f e5                                      ldr r5, [pc, #0x64]
00452d84  64 40 9f e5                                      ldr r4, [pc, #0x64]
00452d88  05 50 8f e0                                      add r5, pc, r5
00452d8c  00 30 95 e5                                      ldr r3, [r5]
00452d90  04 40 8f e0                                      add r4, pc, r4
00452d94  01 00 13 e3                                      tst r3, #1
00452d98  03 00 00 0a                                      beq #0x452dac
00452d9c  50 00 9f e5                                      ldr r0, [pc, #0x50]
00452da0  00 00 8f e0                                      add r0, pc, r0
00452da4  04 00 80 e2                                      add r0, r0, #4
00452da8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00452dac  05 00 a0 e1                                      mov r0, r5
00452db0  6d ee fa eb                                      bl #0x30e76c
00452db4  00 00 50 e3                                      cmp r0, #0
00452db8  f7 ff ff 0a                                      beq #0x452d9c
00452dbc  04 60 85 e2                                      add r6, r5, #4
00452dc0  06 00 a0 e1                                      mov r0, r6
00452dc4  c8 ff ff eb                                      bl #0x452cec
00452dc8  05 00 a0 e1                                      mov r0, r5
00452dcc  1a ef fa eb                                      bl #0x30ea3c
00452dd0  20 30 9f e5                                      ldr r3, [pc, #0x20]
00452dd4  06 00 a0 e1                                      mov r0, r6
00452dd8  03 10 94 e7                                      ldr r1, [r4, r3]
00452ddc  18 30 9f e5                                      ldr r3, [pc, #0x18]
00452de0  03 20 94 e7                                      ldr r2, [r4, r3]
00452de4  46 ed fa eb                                      bl #0x30e304
00452de8  eb ff ff ea                                      b #0x452d9c
; mapping-symbol data/literal pool
00452dec  8c 2e 55 00 00 1d 54 00 74 2e 55 00 a8 47 00 00  .byte 0x8c, 0x2e, 0x55, 0x00, 0x00, 0x1d, 0x54, 0x00, 0x74, 0x2e, 0x55, 0x00, 0xa8, 0x47, 0x00, 0x00
00452dfc  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00453014, declared_size=248, range_size=248, mode=arm
; class-group: MenuCharMenu_InvDetails
; alias: _ZN23MenuCharMenu_InvDetails4ShowEv
; demangled: MenuCharMenu_InvDetails::Show()
; decoder-mode: arm
00453014  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00453018  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
0045301c  d4 60 9f e5                                      ldr r6, [pc, #0xd4]
00453020  20 d0 4d e2                                      sub sp, sp, #0x20
00453024  04 40 8f e0                                      add r4, pc, r4
00453028  06 20 94 e7                                      ldr r2, [r4, r6]
0045302c  00 30 90 e5                                      ldr r3, [r0]
00453030  00 50 a0 e1                                      mov r5, r0
00453034  00 20 92 e5                                      ldr r2, [r2]
00453038  1c 20 8d e5                                      str r2, [sp, #0x1c]
0045303c  0f e0 a0 e1                                      mov lr, pc
00453040  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00453044  00 00 50 e3                                      cmp r0, #0
00453048  21 00 00 0a                                      beq #0x4530d4
0045304c  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00453050  04 70 8d e2                                      add r7, sp, #4
00453054  03 80 94 e7                                      ldr r8, [r4, r3]
00453058  08 00 a0 e1                                      mov r0, r8
0045305c  09 92 fb eb                                      bl #0x337888
00453060  07 00 a0 e1                                      mov r0, r7
00453064  21 10 a0 e3                                      mov r1, #0x21
00453068  14 70 8d e5                                      str r7, [sp, #0x14]
0045306c  18 70 8d e5                                      str r7, [sp, #0x18]
00453070  81 f9 fa eb                                      bl #0x31167c
00453074  84 10 9f e5                                      ldr r1, [pc, #0x84]
00453078  20 20 a0 e3                                      mov r2, #0x20
0045307c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00453080  01 10 8f e0                                      add r1, pc, r1
00453084  f7 ed fa eb                                      bl #0x30e868
00453088  20 30 80 e2                                      add r3, r0, #0x20
0045308c  14 30 8d e5                                      str r3, [sp, #0x14]
00453090  00 30 a0 e3                                      mov r3, #0
00453094  20 30 c0 e5                                      strb r3, [r0, #0x20]
00453098  07 10 a0 e1                                      mov r1, r7
0045309c  08 00 a0 e1                                      mov r0, r8
004530a0  78 92 fb eb                                      bl #0x337a88
004530a4  07 00 a0 e1                                      mov r0, r7
004530a8  3f 02 fb eb                                      bl #0x3139ac
004530ac  07 fe ff eb                                      bl #0x4528d0
004530b0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004530b4  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
004530b8  04 00 95 e5                                      ldr r0, [r5, #4]
004530bc  03 20 94 e7                                      ldr r2, [r4, r3]
004530c0  01 10 8f e0                                      add r1, pc, r1
004530c4  05 30 a0 e1                                      mov r3, r5
004530c8  42 58 0d eb                                      bl #0x7a91d8
004530cc  05 00 a0 e1                                      mov r0, r5
004530d0  de 48 ff eb                                      bl #0x425450
004530d4  06 30 94 e7                                      ldr r3, [r4, r6]
004530d8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004530dc  00 30 93 e5                                      ldr r3, [r3]
004530e0  03 00 52 e1                                      cmp r2, r3
004530e4  01 00 00 1a                                      bne #0x4530f0
004530e8  20 d0 8d e2                                      add sp, sp, #0x20
004530ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004530f0  86 ec fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004530f4  6c 1a 54 00 ac 40 00 00 84 08 00 00 90 9c 47 00  .byte 0x6c, 0x1a, 0x54, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x90, 0x9c, 0x47, 0x00
00453104  e8 49 00 00 78 84 47 00                          .byte 0xe8, 0x49, 0x00, 0x00, 0x78, 0x84, 0x47, 0x00
