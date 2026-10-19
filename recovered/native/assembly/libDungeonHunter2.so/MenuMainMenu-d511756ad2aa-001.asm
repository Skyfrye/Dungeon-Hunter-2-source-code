; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042ba98, declared_size=80, range_size=80, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu8GotFocusEv
; demangled: MenuMainMenu::GotFocus()
; decoder-mode: arm
0042ba98  38 30 9f e5                                      ldr r3, [pc, #0x38]
0042ba9c  38 20 9f e5                                      ldr r2, [pc, #0x38]
0042baa0  04 40 2d e5                                      str r4, [sp, #-4]!
0042baa4  03 30 8f e0                                      add r3, pc, r3
0042baa8  02 c0 93 e7                                      ldr ip, [r3, r2]
0042baac  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0042bab0  01 40 a0 e3                                      mov r4, #1
0042bab4  00 40 8c e5                                      str r4, [ip]
0042bab8  02 00 93 e7                                      ldr r0, [r3, r2]
0042babc  20 20 9f e5                                      ldr r2, [pc, #0x20]
0042bac0  02 10 93 e7                                      ldr r1, [r3, r2]
0042bac4  00 20 a0 e3                                      mov r2, #0
0042bac8  00 20 c0 e5                                      strb r2, [r0]
0042bacc  00 20 c1 e5                                      strb r2, [r1]
0042bad0  10 00 bd e8                                      ldm sp!, {r4}
0042bad4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0042bad8  ec 8f 56 00 50 38 00 00 dc 2b 00 00 d4 29 00 00  .byte 0xec, 0x8f, 0x56, 0x00, 0x50, 0x38, 0x00, 0x00, 0xdc, 0x2b, 0x00, 0x00, 0xd4, 0x29, 0x00, 0x00

; FUNCTION 0x0042bae8, declared_size=4, range_size=4, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu9LostFocusEv
; demangled: MenuMainMenu::LostFocus()
; decoder-mode: arm
0042bae8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042baec, declared_size=88, range_size=88, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu19DestroyAvatarCameraEv
; demangled: MenuMainMenu::DestroyAvatarCamera()
; decoder-mode: arm
0042baec  48 30 9f e5                                      ldr r3, [pc, #0x48]
0042baf0  48 20 9f e5                                      ldr r2, [pc, #0x48]
0042baf4  10 40 2d e9                                      push {r4, lr}
0042baf8  03 30 8f e0                                      add r3, pc, r3
0042bafc  02 40 93 e7                                      ldr r4, [r3, r2]
0042bb00  00 30 94 e5                                      ldr r3, [r4]
0042bb04  00 00 53 e3                                      cmp r3, #0
0042bb08  0a 00 00 0a                                      beq #0x42bb38
0042bb0c  03 00 a0 e1                                      mov r0, r3
0042bb10  00 30 93 e5                                      ldr r3, [r3]
0042bb14  0f e0 a0 e1                                      mov lr, pc
0042bb18  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0042bb1c  00 30 94 e5                                      ldr r3, [r4]
0042bb20  00 20 93 e5                                      ldr r2, [r3]
0042bb24  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0042bb28  00 00 83 e0                                      add r0, r3, r0
0042bb2c  94 c6 fb eb                                      bl #0x31d584
0042bb30  00 30 a0 e3                                      mov r3, #0
0042bb34  00 30 84 e5                                      str r3, [r4]
0042bb38  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042bb3c  98 8f 56 00 b0 46 00 00                          .byte 0x98, 0x8f, 0x56, 0x00, 0xb0, 0x46, 0x00, 0x00

; FUNCTION 0x0042bb44, declared_size=4, range_size=4, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu19RenderCharacterPaneERN7gameswf12render_stateEPv
; demangled: MenuMainMenu::RenderCharacterPane(gameswf::render_state&, void*)
; decoder-mode: arm
0042bb44  1e ff 2f e1                                      bx lr

; FUNCTION 0x0042bb48, declared_size=372, range_size=372, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu7OnEventERN8RenderFX5EventE
; demangled: MenuMainMenu::OnEvent(RenderFX::Event&)
; decoder-mode: arm
0042bb48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0042bb4c  08 60 91 e5                                      ldr r6, [r1, #8]
0042bb50  44 41 9f e5                                      ldr r4, [pc, #0x144]
0042bb54  01 50 a0 e1                                      mov r5, r1
0042bb58  06 00 56 e3                                      cmp r6, #6
0042bb5c  00 70 a0 e1                                      mov r7, r0
0042bb60  04 40 8f e0                                      add r4, pc, r4
0042bb64  03 00 00 0a                                      beq #0x42bb78
0042bb68  07 00 a0 e1                                      mov r0, r7
0042bb6c  05 10 a0 e1                                      mov r1, r5
0042bb70  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0042bb74  a6 dd ff ea                                      b #0x423214
0042bb78  04 80 91 e5                                      ldr r8, [r1, #4]
0042bb7c  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
0042bb80  08 00 a0 e1                                      mov r0, r8
0042bb84  01 10 8f e0                                      add r1, pc, r1
0042bb88  11 8c fb eb                                      bl #0x30ebd4
0042bb8c  00 00 50 e3                                      cmp r0, #0
0042bb90  14 00 00 0a                                      beq #0x42bbe8
0042bb94  08 31 9f e5                                      ldr r3, [pc, #0x108]
0042bb98  03 30 94 e7                                      ldr r3, [r4, r3]
0042bb9c  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
0042bba0  5b 06 01 eb                                      bl #0x46d514
0042bba4  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
0042bba8  00 40 a0 e1                                      mov r4, r0
0042bbac  f8 00 9f e5                                      ldr r0, [pc, #0xf8]
0042bbb0  01 10 8f e0                                      add r1, pc, r1
0042bbb4  00 00 8f e0                                      add r0, pc, r0
0042bbb8  68 1e 04 eb                                      bl #0x533560
0042bbbc  04 00 54 e3                                      cmp r4, #4
0042bbc0  2c 00 00 0a                                      beq #0x42bc78
0042bbc4  05 00 54 e3                                      cmp r4, #5
0042bbc8  2d 00 00 0a                                      beq #0x42bc84
0042bbcc  06 00 54 e3                                      cmp r4, #6
0042bbd0  2e 00 00 0a                                      beq #0x42bc90
0042bbd4  07 00 54 e3                                      cmp r4, #7
0042bbd8  04 00 a0 03                                      moveq r0, #4
0042bbdc  04 00 a0 11                                      movne r0, r4
0042bbe0  ce 1b 04 eb                                      bl #0x532b20
0042bbe4  df ff ff ea                                      b #0x42bb68
0042bbe8  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0042bbec  08 00 a0 e1                                      mov r0, r8
0042bbf0  01 10 8f e0                                      add r1, pc, r1
0042bbf4  f6 8b fb eb                                      bl #0x30ebd4
0042bbf8  00 00 50 e3                                      cmp r0, #0
0042bbfc  d9 ff ff 0a                                      beq #0x42bb68
0042bc00  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0042bc04  03 30 94 e7                                      ldr r3, [r4, r3]
0042bc08  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
0042bc0c  40 06 01 eb                                      bl #0x46d514
0042bc10  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0042bc14  00 40 a0 e1                                      mov r4, r0
0042bc18  98 00 9f e5                                      ldr r0, [pc, #0x98]
0042bc1c  01 10 8f e0                                      add r1, pc, r1
0042bc20  00 00 8f e0                                      add r0, pc, r0
0042bc24  4d 1e 04 eb                                      bl #0x533560
0042bc28  04 00 54 e3                                      cmp r4, #4
0042bc2c  08 00 00 0a                                      beq #0x42bc54
0042bc30  05 00 54 e3                                      cmp r4, #5
0042bc34  09 00 00 0a                                      beq #0x42bc60
0042bc38  06 00 54 e3                                      cmp r4, #6
0042bc3c  0a 00 00 0a                                      beq #0x42bc6c
0042bc40  07 00 54 e3                                      cmp r4, #7
0042bc44  04 00 a0 03                                      moveq r0, #4
0042bc48  04 00 a0 11                                      movne r0, r4
0042bc4c  a0 1b 04 eb                                      bl #0x532ad4
0042bc50  c4 ff ff ea                                      b #0x42bb68
0042bc54  05 00 a0 e3                                      mov r0, #5
0042bc58  9d 1b 04 eb                                      bl #0x532ad4
0042bc5c  c1 ff ff ea                                      b #0x42bb68
0042bc60  06 00 a0 e1                                      mov r0, r6
0042bc64  9a 1b 04 eb                                      bl #0x532ad4
0042bc68  be ff ff ea                                      b #0x42bb68
0042bc6c  07 00 a0 e3                                      mov r0, #7
0042bc70  97 1b 04 eb                                      bl #0x532ad4
0042bc74  bb ff ff ea                                      b #0x42bb68
0042bc78  05 00 a0 e3                                      mov r0, #5
0042bc7c  a7 1b 04 eb                                      bl #0x532b20
0042bc80  b8 ff ff ea                                      b #0x42bb68
0042bc84  06 00 a0 e1                                      mov r0, r6
0042bc88  a4 1b 04 eb                                      bl #0x532b20
0042bc8c  b5 ff ff ea                                      b #0x42bb68
0042bc90  07 00 a0 e3                                      mov r0, #7
0042bc94  a1 1b 04 eb                                      bl #0x532b20
0042bc98  b2 ff ff ea                                      b #0x42bb68
; mapping-symbol data/literal pool
0042bc9c  30 8f 56 00 64 e1 49 00 f4 37 00 00 58 fc 49 00  .byte 0x30, 0x8f, 0x56, 0x00, 0x64, 0xe1, 0x49, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x58, 0xfc, 0x49, 0x00
0042bcac  44 e1 49 00 40 e1 49 00 ec fb 49 00 f8 e0 49 00  .byte 0x44, 0xe1, 0x49, 0x00, 0x40, 0xe1, 0x49, 0x00, 0xec, 0xfb, 0x49, 0x00, 0xf8, 0xe0, 0x49, 0x00

; FUNCTION 0x0042bcbc, declared_size=76, range_size=76, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu16DestroyCharacterEv
; demangled: MenuMainMenu::DestroyCharacter()
; decoder-mode: arm
0042bcbc  10 40 2d e9                                      push {r4, lr}
0042bcc0  30 40 9f e5                                      ldr r4, [pc, #0x30]
0042bcc4  30 30 9f e5                                      ldr r3, [pc, #0x30]
0042bcc8  04 40 8f e0                                      add r4, pc, r4
0042bccc  03 30 94 e7                                      ldr r3, [r4, r3]
0042bcd0  38 00 93 e5                                      ldr r0, [r3, #0x38]
0042bcd4  77 76 fc eb                                      bl #0x3496b8
0042bcd8  20 30 9f e5                                      ldr r3, [pc, #0x20]
0042bcdc  03 00 94 e7                                      ldr r0, [r4, r3]
0042bce0  5f 26 01 eb                                      bl #0x475664
0042bce4  18 30 9f e5                                      ldr r3, [pc, #0x18]
0042bce8  00 20 a0 e3                                      mov r2, #0
0042bcec  03 30 94 e7                                      ldr r3, [r4, r3]
0042bcf0  00 20 83 e5                                      str r2, [r3]
0042bcf4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042bcf8  c8 8d 56 00 f4 37 00 00 38 48 00 00 88 26 00 00  .byte 0xc8, 0x8d, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x38, 0x48, 0x00, 0x00, 0x88, 0x26, 0x00, 0x00

; FUNCTION 0x0042bd08, declared_size=436, range_size=436, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu14SetupCharacterEv
; demangled: MenuMainMenu::SetupCharacter()
; decoder-mode: arm
0042bd08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0042bd0c  84 41 9f e5                                      ldr r4, [pc, #0x184]
0042bd10  84 31 9f e5                                      ldr r3, [pc, #0x184]
0042bd14  28 d0 4d e2                                      sub sp, sp, #0x28
0042bd18  04 40 8f e0                                      add r4, pc, r4
0042bd1c  03 50 94 e7                                      ldr r5, [r4, r3]
0042bd20  00 00 95 e5                                      ldr r0, [r5]
0042bd24  01 00 70 e3                                      cmn r0, #1
0042bd28  49 00 00 0a                                      beq #0x42be54
0042bd2c  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
0042bd30  03 30 94 e7                                      ldr r3, [r4, r3]
0042bd34  00 30 93 e5                                      ldr r3, [r3]
0042bd38  00 00 53 e3                                      cmp r3, #0
0042bd3c  44 00 00 0a                                      beq #0x42be54
0042bd40  05 e4 00 eb                                      bl #0x464d5c
0042bd44  00 c0 50 e2                                      subs ip, r0, #0
0042bd48  43 00 00 1a                                      bne #0x42be5c
0042bd4c  50 31 9f e5                                      ldr r3, [pc, #0x150]
0042bd50  00 00 95 e5                                      ldr r0, [r5]
0042bd54  01 e0 a0 e3                                      mov lr, #1
0042bd58  03 30 8f e0                                      add r3, pc, r3
0042bd5c  0c 10 a0 e1                                      mov r1, ip
0042bd60  0c 20 a0 e1                                      mov r2, ip
0042bd64  00 e0 8d e5                                      str lr, [sp]
0042bd68  04 c0 8d e5                                      str ip, [sp, #4]
0042bd6c  4c 04 fe eb                                      bl #0x3acea4
0042bd70  30 81 9f e5                                      ldr r8, [pc, #0x130]
0042bd74  08 30 94 e7                                      ldr r3, [r4, r8]
0042bd78  00 00 83 e5                                      str r0, [r3]
0042bd7c  28 31 9f e5                                      ldr r3, [pc, #0x128]
0042bd80  00 70 a0 e3                                      mov r7, #0
0042bd84  0c 60 8d e2                                      add r6, sp, #0xc
0042bd88  03 50 94 e7                                      ldr r5, [r4, r3]
0042bd8c  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0042bd90  03 20 94 e7                                      ldr r2, [r4, r3]
0042bd94  10 30 95 e5                                      ldr r3, [r5, #0x10]
0042bd98  00 10 92 e5                                      ldr r1, [r2]
0042bd9c  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0042bda0  c6 74 05 eb                                      bl #0x5890c0
0042bda4  08 20 94 e7                                      ldr r2, [r4, r8]
0042bda8  10 30 95 e5                                      ldr r3, [r5, #0x10]
0042bdac  00 20 92 e5                                      ldr r2, [r2]
0042bdb0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0042bdb4  d8 22 92 e5                                      ldr r2, [r2, #0x2d8]
0042bdb8  04 30 93 e5                                      ldr r3, [r3, #4]
0042bdbc  08 50 92 e5                                      ldr r5, [r2, #8]
0042bdc0  03 00 a0 e1                                      mov r0, r3
0042bdc4  00 30 93 e5                                      ldr r3, [r3]
0042bdc8  05 10 a0 e1                                      mov r1, r5
0042bdcc  0f e0 a0 e1                                      mov lr, pc
0042bdd0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0042bdd4  00 30 95 e5                                      ldr r3, [r5]
0042bdd8  c3 24 a0 e3                                      mov r2, #0xc3000000
0042bddc  12 27 82 e2                                      add r2, r2, #0x480000
0042bde0  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
0042bde4  20 20 8d e5                                      str r2, [sp, #0x20]
0042bde8  c1 24 a0 e3                                      mov r2, #0xc1000000
0042bdec  0a 26 82 e2                                      add r2, r2, #0xa00000
0042bdf0  24 20 8d e5                                      str r2, [sp, #0x24]
0042bdf4  05 00 a0 e1                                      mov r0, r5
0042bdf8  1c 10 8d e2                                      add r1, sp, #0x1c
0042bdfc  1c 70 8d e5                                      str r7, [sp, #0x1c]
0042be00  33 ff 2f e1                                      blx r3
0042be04  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0042be08  00 20 95 e5                                      ldr r2, [r5]
0042be0c  be 14 a0 e3                                      mov r1, #0xbe000000
0042be10  03 30 94 e7                                      ldr r3, [r4, r3]
0042be14  9c 40 92 e5                                      ldr r4, [r2, #0x9c]
0042be18  00 00 93 e5                                      ldr r0, [r3]
0042be1c  d2 8b fb eb                                      bl #0x30ed6c
0042be20  07 10 a0 e1                                      mov r1, r7
0042be24  00 30 a0 e1                                      mov r3, r0
0042be28  07 20 a0 e1                                      mov r2, r7
0042be2c  06 00 a0 e1                                      mov r0, r6
0042be30  e8 c2 fc eb                                      bl #0x35c9d8
0042be34  05 00 a0 e1                                      mov r0, r5
0042be38  06 10 a0 e1                                      mov r1, r6
0042be3c  34 ff 2f e1                                      blx r4
0042be40  05 00 a0 e1                                      mov r0, r5
0042be44  00 30 95 e5                                      ldr r3, [r5]
0042be48  01 10 a0 e3                                      mov r1, #1
0042be4c  0f e0 a0 e1                                      mov lr, pc
0042be50  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0042be54  28 d0 8d e2                                      add sp, sp, #0x28
0042be58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0042be5c  54 30 9f e5                                      ldr r3, [pc, #0x54]
0042be60  00 c0 a0 e3                                      mov ip, #0
0042be64  00 00 95 e5                                      ldr r0, [r5]
0042be68  0c 10 a0 e1                                      mov r1, ip
0042be6c  03 30 8f e0                                      add r3, pc, r3
0042be70  0c 20 a0 e1                                      mov r2, ip
0042be74  00 c0 8d e5                                      str ip, [sp]
0042be78  04 c0 8d e5                                      str ip, [sp, #4]
0042be7c  08 04 fe eb                                      bl #0x3acea4
0042be80  20 80 9f e5                                      ldr r8, [pc, #0x20]
0042be84  04 10 a0 e3                                      mov r1, #4
0042be88  08 30 94 e7                                      ldr r3, [r4, r8]
0042be8c  00 00 83 e5                                      str r0, [r3]
0042be90  8e 41 fe eb                                      bl #0x3bc4d0
0042be94  b8 ff ff ea                                      b #0x42bd7c
; mapping-symbol data/literal pool
0042be98  78 8d 56 00 74 49 00 00 f0 2f 00 00 b8 be 49 00  .byte 0x78, 0x8d, 0x56, 0x00, 0x74, 0x49, 0x00, 0x00, 0xf0, 0x2f, 0x00, 0x00, 0xb8, 0xbe, 0x49, 0x00
0042bea8  88 26 00 00 f4 37 00 00 b0 46 00 00 18 37 00 00  .byte 0x88, 0x26, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xb0, 0x46, 0x00, 0x00, 0x18, 0x37, 0x00, 0x00
0042beb8  a4 bd 49 00                                      .byte 0xa4, 0xbd, 0x49, 0x00

; FUNCTION 0x0042bebc, declared_size=128, range_size=128, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu12DestroySceneEv
; demangled: MenuMainMenu::DestroyScene()
; decoder-mode: arm
0042bebc  70 40 2d e9                                      push {r4, r5, r6, lr}
0042bec0  68 40 9f e5                                      ldr r4, [pc, #0x68]
0042bec4  68 30 9f e5                                      ldr r3, [pc, #0x68]
0042bec8  04 40 8f e0                                      add r4, pc, r4
0042becc  03 50 94 e7                                      ldr r5, [r4, r3]
0042bed0  00 30 95 e5                                      ldr r3, [r5]
0042bed4  00 00 53 e3                                      cmp r3, #0
0042bed8  05 00 00 0a                                      beq #0x42bef4
0042bedc  03 00 a0 e1                                      mov r0, r3
0042bee0  00 30 93 e5                                      ldr r3, [r3]
0042bee4  0f e0 a0 e1                                      mov lr, pc
0042bee8  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0042beec  00 30 a0 e3                                      mov r3, #0
0042bef0  00 30 85 e5                                      str r3, [r5]
0042bef4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0042bef8  03 40 94 e7                                      ldr r4, [r4, r3]
0042befc  10 30 94 e5                                      ldr r3, [r4, #0x10]
0042bf00  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0042bf04  03 00 a0 e1                                      mov r0, r3
0042bf08  00 30 93 e5                                      ldr r3, [r3]
0042bf0c  0f e0 a0 e1                                      mov lr, pc
0042bf10  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0042bf14  68 ff ff eb                                      bl #0x42bcbc
0042bf18  10 30 94 e5                                      ldr r3, [r4, #0x10]
0042bf1c  10 00 93 e5                                      ldr r0, [r3, #0x10]
0042bf20  19 cd 05 eb                                      bl #0x59f38c
0042bf24  04 00 a0 e1                                      mov r0, r4
0042bf28  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042bf2c  8a cd fb ea                                      b #0x31f55c
; mapping-symbol data/literal pool
0042bf30  c8 8b 56 00 f0 2f 00 00 f4 37 00 00              .byte 0xc8, 0x8b, 0x56, 0x00, 0xf0, 0x2f, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0042bf3c, declared_size=404, range_size=404, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu18CreateAvatarCameraEv
; demangled: MenuMainMenu::CreateAvatarCamera()
; decoder-mode: arm
0042bf3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0042bf40  7c 41 9f e5                                      ldr r4, [pc, #0x17c]
0042bf44  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
0042bf48  30 d0 4d e2                                      sub sp, sp, #0x30
0042bf4c  04 40 8f e0                                      add r4, pc, r4
0042bf50  03 50 94 e7                                      ldr r5, [r4, r3]
0042bf54  00 60 95 e5                                      ldr r6, [r5]
0042bf58  00 00 56 e3                                      cmp r6, #0
0042bf5c  01 00 00 0a                                      beq #0x42bf68
0042bf60  30 d0 8d e2                                      add sp, sp, #0x30
0042bf64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0042bf68  31 33 a0 e3                                      mov r3, #0xc4000000
0042bf6c  61 38 83 e2                                      add r3, r3, #0x610000
0042bf70  28 30 8d e5                                      str r3, [sp, #0x28]
0042bf74  43 34 a0 e3                                      mov r3, #0x43000000
0042bf78  16 38 83 e2                                      add r3, r3, #0x160000
0042bf7c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0042bf80  43 34 a0 e3                                      mov r3, #0x43000000
0042bf84  00 70 a0 e3                                      mov r7, #0
0042bf88  06 10 a0 e1                                      mov r1, r6
0042bf8c  61 38 83 e2                                      add r3, r3, #0x610000
0042bf90  e3 0f a0 e3                                      mov r0, #0x38c
0042bf94  20 30 8d e5                                      str r3, [sp, #0x20]
0042bf98  24 70 8d e5                                      str r7, [sp, #0x24]
0042bf9c  18 70 8d e5                                      str r7, [sp, #0x18]
0042bfa0  1c 70 8d e5                                      str r7, [sp, #0x1c]
0042bfa4  80 20 04 eb                                      bl #0x5341ac
0042bfa8  24 20 8d e2                                      add r2, sp, #0x24
0042bfac  18 30 8d e2                                      add r3, sp, #0x18
0042bfb0  00 10 e0 e3                                      mvn r1, #0
0042bfb4  00 80 a0 e1                                      mov r8, r0
0042bfb8  00 60 8d e5                                      str r6, [sp]
0042bfbc  dc 5d 05 eb                                      bl #0x583734
0042bfc0  04 31 9f e5                                      ldr r3, [pc, #0x104]
0042bfc4  00 80 85 e5                                      str r8, [r5]
0042bfc8  08 10 a0 e1                                      mov r1, r8
0042bfcc  03 40 94 e7                                      ldr r4, [r4, r3]
0042bfd0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0042bfd4  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0042bfd8  04 30 93 e5                                      ldr r3, [r3, #4]
0042bfdc  03 00 a0 e1                                      mov r0, r3
0042bfe0  00 30 93 e5                                      ldr r3, [r3]
0042bfe4  0f e0 a0 e1                                      mov lr, pc
0042bfe8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0042bfec  00 30 95 e5                                      ldr r3, [r5]
0042bff0  00 20 93 e5                                      ldr r2, [r3]
0042bff4  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0042bff8  00 00 83 e0                                      add r0, r3, r0
0042bffc  60 c5 fb eb                                      bl #0x31d584
0042c000  10 30 94 e5                                      ldr r3, [r4, #0x10]
0042c004  00 10 95 e5                                      ldr r1, [r5]
0042c008  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0042c00c  2b 74 05 eb                                      bl #0x5890c0
0042c010  00 00 95 e5                                      ldr r0, [r5]
0042c014  fe 25 a0 e3                                      mov r2, #0x3f800000
0042c018  0c 10 8d e2                                      add r1, sp, #0xc
0042c01c  00 30 90 e5                                      ldr r3, [r0]
0042c020  14 31 93 e5                                      ldr r3, [r3, #0x114]
0042c024  14 20 8d e5                                      str r2, [sp, #0x14]
0042c028  10 70 8d e5                                      str r7, [sp, #0x10]
0042c02c  0c 70 8d e5                                      str r7, [sp, #0xc]
0042c030  33 ff 2f e1                                      blx r3
0042c034  00 30 95 e5                                      ldr r3, [r5]
0042c038  e9 18 07 e3                                      movw r1, #0x78e9
0042c03c  d5 1f 43 e3                                      movt r1, #0x3fd5
0042c040  03 00 a0 e1                                      mov r0, r3
0042c044  00 30 93 e5                                      ldr r3, [r3]
0042c048  0f e0 a0 e1                                      mov lr, pc
0042c04c  38 f1 93 e5                                      ldr pc, [r3, #0x138]
0042c050  00 30 95 e5                                      ldr r3, [r5]
0042c054  c8 19 07 e3                                      movw r1, #0x79c8
0042c058  35 1f 43 e3                                      movt r1, #0x3f35
0042c05c  03 00 a0 e1                                      mov r0, r3
0042c060  00 30 93 e5                                      ldr r3, [r3]
0042c064  0f e0 a0 e1                                      mov lr, pc
0042c068  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
0042c06c  00 30 95 e5                                      ldr r3, [r5]
0042c070  41 14 a0 e3                                      mov r1, #0x41000000
0042c074  02 16 81 e2                                      add r1, r1, #0x200000
0042c078  00 20 93 e5                                      ldr r2, [r3]
0042c07c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0042c080  02 30 83 e0                                      add r3, r3, r2
0042c084  04 20 93 e5                                      ldr r2, [r3, #4]
0042c088  01 20 82 e2                                      add r2, r2, #1
0042c08c  04 20 83 e5                                      str r2, [r3, #4]
0042c090  00 30 95 e5                                      ldr r3, [r5]
0042c094  03 00 a0 e1                                      mov r0, r3
0042c098  00 30 93 e5                                      ldr r3, [r3]
0042c09c  0f e0 a0 e1                                      mov lr, pc
0042c0a0  30 f1 93 e5                                      ldr pc, [r3, #0x130]
0042c0a4  00 30 95 e5                                      ldr r3, [r5]
0042c0a8  11 13 a0 e3                                      mov r1, #0x44000000
0042c0ac  fa 18 81 e2                                      add r1, r1, #0xfa0000
0042c0b0  03 00 a0 e1                                      mov r0, r3
0042c0b4  00 30 93 e5                                      ldr r3, [r3]
0042c0b8  0f e0 a0 e1                                      mov lr, pc
0042c0bc  34 f1 93 e5                                      ldr pc, [r3, #0x134]
0042c0c0  a6 ff ff ea                                      b #0x42bf60
; mapping-symbol data/literal pool
0042c0c4  44 8b 56 00 b0 46 00 00 f4 37 00 00              .byte 0x44, 0x8b, 0x56, 0x00, 0xb0, 0x46, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0042c0d0, declared_size=88, range_size=88, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu24ChangeCharacterToDisplayEib
; demangled: MenuMainMenu::ChangeCharacterToDisplay(int, bool)
; decoder-mode: arm
0042c0d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0042c0d4  44 40 9f e5                                      ldr r4, [pc, #0x44]
0042c0d8  44 50 9f e5                                      ldr r5, [pc, #0x44]
0042c0dc  00 60 a0 e1                                      mov r6, r0
0042c0e0  04 40 8f e0                                      add r4, pc, r4
0042c0e4  05 30 94 e7                                      ldr r3, [r4, r5]
0042c0e8  00 30 93 e5                                      ldr r3, [r3]
0042c0ec  03 00 50 e1                                      cmp r0, r3
0042c0f0  07 00 00 0a                                      beq #0x42c114
0042c0f4  01 00 73 e3                                      cmn r3, #1
0042c0f8  00 00 00 0a                                      beq #0x42c100
0042c0fc  ee fe ff eb                                      bl #0x42bcbc
0042c100  05 30 94 e7                                      ldr r3, [r4, r5]
0042c104  00 60 83 e5                                      str r6, [r3]
0042c108  fe fe ff eb                                      bl #0x42bd08
0042c10c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042c110  89 ff ff ea                                      b #0x42bf3c
0042c114  00 00 51 e3                                      cmp r1, #0
0042c118  f5 ff ff 1a                                      bne #0x42c0f4
0042c11c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042c120  b0 89 56 00 74 49 00 00                          .byte 0xb0, 0x89, 0x56, 0x00, 0x74, 0x49, 0x00, 0x00

; FUNCTION 0x0042c128, declared_size=160, range_size=160, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu4HideEv
; demangled: MenuMainMenu::Hide()
; decoder-mode: arm
0042c128  70 40 2d e9                                      push {r4, r5, r6, lr}
0042c12c  00 30 90 e5                                      ldr r3, [r0]
0042c130  00 50 a0 e1                                      mov r5, r0
0042c134  0f e0 a0 e1                                      mov lr, pc
0042c138  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0042c13c  70 40 9f e5                                      ldr r4, [pc, #0x70]
0042c140  00 00 50 e3                                      cmp r0, #0
0042c144  04 40 8f e0                                      add r4, pc, r4
0042c148  00 00 00 1a                                      bne #0x42c150
0042c14c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042c150  05 00 a0 e1                                      mov r0, r5
0042c154  66 e2 ff eb                                      bl #0x424af4
0042c158  4b 02 00 eb                                      bl #0x42ca8c
0042c15c  54 10 9f e5                                      ldr r1, [pc, #0x54]
0042c160  01 10 8f e0                                      add r1, pc, r1
0042c164  21 04 00 eb                                      bl #0x42d1f0
0042c168  00 30 90 e5                                      ldr r3, [r0]
0042c16c  0f e0 a0 e1                                      mov lr, pc
0042c170  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0042c174  50 ff ff eb                                      bl #0x42bebc
0042c178  5b fe ff eb                                      bl #0x42baec
0042c17c  38 30 9f e5                                      ldr r3, [pc, #0x38]
0042c180  01 c0 a0 e3                                      mov ip, #1
0042c184  03 10 94 e7                                      ldr r1, [r4, r3]
0042c188  30 30 9f e5                                      ldr r3, [pc, #0x30]
0042c18c  00 00 91 e5                                      ldr r0, [r1]
0042c190  03 20 94 e7                                      ldr r2, [r4, r3]
0042c194  28 30 9f e5                                      ldr r3, [pc, #0x28]
0042c198  fa 1f a0 e3                                      mov r1, #0x3e8
0042c19c  00 c0 c2 e5                                      strb ip, [r2]
0042c1a0  03 30 94 e7                                      ldr r3, [r4, r3]
0042c1a4  00 20 e0 e3                                      mvn r2, #0
0042c1a8  00 20 83 e5                                      str r2, [r3]
0042c1ac  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042c1b0  fa f7 fc ea                                      b #0x36a1a0
; mapping-symbol data/literal pool
0042c1b4  4c 89 56 00 e8 db 49 00 a4 0d 00 00 00 32 00 00  .byte 0x4c, 0x89, 0x56, 0x00, 0xe8, 0xdb, 0x49, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00
0042c1c4  74 49 00 00                                      .byte 0x74, 0x49, 0x00, 0x00

; FUNCTION 0x0042c1c8, declared_size=120, range_size=120, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu6UpdateEv
; demangled: MenuMainMenu::Update()
; decoder-mode: arm
0042c1c8  10 40 2d e9                                      push {r4, lr}
0042c1cc  00 30 90 e5                                      ldr r3, [r0]
0042c1d0  0f e0 a0 e1                                      mov lr, pc
0042c1d4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0042c1d8  54 40 9f e5                                      ldr r4, [pc, #0x54]
0042c1dc  00 00 50 e3                                      cmp r0, #0
0042c1e0  04 40 8f e0                                      add r4, pc, r4
0042c1e4  11 00 00 0a                                      beq #0x42c230
0042c1e8  48 30 9f e5                                      ldr r3, [pc, #0x48]
0042c1ec  03 30 94 e7                                      ldr r3, [r4, r3]
0042c1f0  00 00 93 e5                                      ldr r0, [r3]
0042c1f4  00 00 50 e3                                      cmp r0, #0
0042c1f8  02 00 00 0a                                      beq #0x42c208
0042c1fc  49 0e 80 e2                                      add r0, r0, #0x490
0042c200  0c 00 80 e2                                      add r0, r0, #0xc
0042c204  4c 7b fe eb                                      bl #0x3caf3c
0042c208  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0042c20c  00 10 a0 e3                                      mov r1, #0
0042c210  00 20 a0 e3                                      mov r2, #0
0042c214  03 30 94 e7                                      ldr r3, [r4, r3]
0042c218  10 30 93 e5                                      ldr r3, [r3, #0x10]
0042c21c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0042c220  03 00 a0 e1                                      mov r0, r3
0042c224  00 30 93 e5                                      ldr r3, [r3]
0042c228  0f e0 a0 e1                                      mov lr, pc
0042c22c  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0042c230  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042c234  b0 88 56 00 88 26 00 00 f4 37 00 00              .byte 0xb0, 0x88, 0x56, 0x00, 0x88, 0x26, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0042c240, declared_size=52, range_size=52, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenuD1Ev
; demangled: MenuMainMenu::~MenuMainMenu()
; decoder-mode: arm
0042c240  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042c244  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042c248  10 40 2d e9                                      push {r4, lr}
0042c24c  03 30 8f e0                                      add r3, pc, r3
0042c250  02 20 93 e7                                      ldr r2, [r3, r2]
0042c254  00 40 a0 e1                                      mov r4, r0
0042c258  08 20 82 e2                                      add r2, r2, #8
0042c25c  00 20 80 e5                                      str r2, [r0]
0042c260  c3 d9 ff eb                                      bl #0x422974
0042c264  04 00 a0 e1                                      mov r0, r4
0042c268  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042c26c  44 88 56 00 6c 2a 00 00                          .byte 0x44, 0x88, 0x56, 0x00, 0x6c, 0x2a, 0x00, 0x00

; FUNCTION 0x0042c274, declared_size=28, range_size=28, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenuD0Ev
; demangled: MenuMainMenu::~MenuMainMenu()
; decoder-mode: arm
0042c274  10 40 2d e9                                      push {r4, lr}
0042c278  00 40 a0 e1                                      mov r4, r0
0042c27c  ef ff ff eb                                      bl #0x42c240
0042c280  04 00 a0 e1                                      mov r0, r4
0042c284  6d 90 fb eb                                      bl #0x310440
0042c288  04 00 a0 e1                                      mov r0, r4
0042c28c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0042c290, declared_size=52, range_size=52, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenuD2Ev
; demangled: MenuMainMenu::~MenuMainMenu()
; decoder-mode: arm
0042c290  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042c294  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042c298  10 40 2d e9                                      push {r4, lr}
0042c29c  03 30 8f e0                                      add r3, pc, r3
0042c2a0  02 20 93 e7                                      ldr r2, [r3, r2]
0042c2a4  00 40 a0 e1                                      mov r4, r0
0042c2a8  08 20 82 e2                                      add r2, r2, #8
0042c2ac  00 20 80 e5                                      str r2, [r0]
0042c2b0  af d9 ff eb                                      bl #0x422974
0042c2b4  04 00 a0 e1                                      mov r0, r4
0042c2b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042c2bc  f4 87 56 00 6c 2a 00 00                          .byte 0xf4, 0x87, 0x56, 0x00, 0x6c, 0x2a, 0x00, 0x00

; FUNCTION 0x0042c2c4, declared_size=76, range_size=76, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenuC1Ev
; demangled: MenuMainMenu::MenuMainMenu()
; decoder-mode: arm
0042c2c4  38 10 9f e5                                      ldr r1, [pc, #0x38]
0042c2c8  70 40 2d e9                                      push {r4, r5, r6, lr}
0042c2cc  01 10 8f e0                                      add r1, pc, r1
0042c2d0  30 40 9f e5                                      ldr r4, [pc, #0x30]
0042c2d4  00 50 a0 e1                                      mov r5, r0
0042c2d8  c8 eb ff eb                                      bl #0x427200
0042c2dc  28 30 9f e5                                      ldr r3, [pc, #0x28]
0042c2e0  04 40 8f e0                                      add r4, pc, r4
0042c2e4  03 30 94 e7                                      ldr r3, [r4, r3]
0042c2e8  08 30 83 e2                                      add r3, r3, #8
0042c2ec  00 30 85 e5                                      str r3, [r5]
0042c2f0  e5 01 00 eb                                      bl #0x42ca8c
0042c2f4  05 10 a0 e1                                      mov r1, r5
0042c2f8  e5 0a 00 eb                                      bl #0x42ee94
0042c2fc  05 00 a0 e1                                      mov r0, r5
0042c300  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042c304  04 2e 49 00 b0 87 56 00 6c 2a 00 00              .byte 0x04, 0x2e, 0x49, 0x00, 0xb0, 0x87, 0x56, 0x00, 0x6c, 0x2a, 0x00, 0x00

; FUNCTION 0x0042c310, declared_size=76, range_size=76, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenuC2Ev
; demangled: MenuMainMenu::MenuMainMenu()
; decoder-mode: arm
0042c310  38 10 9f e5                                      ldr r1, [pc, #0x38]
0042c314  70 40 2d e9                                      push {r4, r5, r6, lr}
0042c318  01 10 8f e0                                      add r1, pc, r1
0042c31c  30 40 9f e5                                      ldr r4, [pc, #0x30]
0042c320  00 50 a0 e1                                      mov r5, r0
0042c324  b5 eb ff eb                                      bl #0x427200
0042c328  28 30 9f e5                                      ldr r3, [pc, #0x28]
0042c32c  04 40 8f e0                                      add r4, pc, r4
0042c330  03 30 94 e7                                      ldr r3, [r4, r3]
0042c334  08 30 83 e2                                      add r3, r3, #8
0042c338  00 30 85 e5                                      str r3, [r5]
0042c33c  d2 01 00 eb                                      bl #0x42ca8c
0042c340  05 10 a0 e1                                      mov r1, r5
0042c344  d2 0a 00 eb                                      bl #0x42ee94
0042c348  05 00 a0 e1                                      mov r0, r5
0042c34c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042c350  b8 2d 49 00 64 87 56 00 6c 2a 00 00              .byte 0xb8, 0x2d, 0x49, 0x00, 0x64, 0x87, 0x56, 0x00, 0x6c, 0x2a, 0x00, 0x00

; FUNCTION 0x0042c35c, declared_size=132, range_size=132, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu11GetInstanceEv
; demangled: MenuMainMenu::GetInstance()
; decoder-mode: arm
0042c35c  70 40 2d e9                                      push {r4, r5, r6, lr}
0042c360  64 50 9f e5                                      ldr r5, [pc, #0x64]
0042c364  64 40 9f e5                                      ldr r4, [pc, #0x64]
0042c368  05 50 8f e0                                      add r5, pc, r5
0042c36c  00 30 95 e5                                      ldr r3, [r5]
0042c370  04 40 8f e0                                      add r4, pc, r4
0042c374  01 00 13 e3                                      tst r3, #1
0042c378  03 00 00 0a                                      beq #0x42c38c
0042c37c  50 00 9f e5                                      ldr r0, [pc, #0x50]
0042c380  00 00 8f e0                                      add r0, pc, r0
0042c384  04 00 80 e2                                      add r0, r0, #4
0042c388  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042c38c  05 00 a0 e1                                      mov r0, r5
0042c390  f5 88 fb eb                                      bl #0x30e76c
0042c394  00 00 50 e3                                      cmp r0, #0
0042c398  f7 ff ff 0a                                      beq #0x42c37c
0042c39c  04 60 85 e2                                      add r6, r5, #4
0042c3a0  06 00 a0 e1                                      mov r0, r6
0042c3a4  c6 ff ff eb                                      bl #0x42c2c4
0042c3a8  05 00 a0 e1                                      mov r0, r5
0042c3ac  a2 89 fb eb                                      bl #0x30ea3c
0042c3b0  20 30 9f e5                                      ldr r3, [pc, #0x20]
0042c3b4  06 00 a0 e1                                      mov r0, r6
0042c3b8  03 10 94 e7                                      ldr r1, [r4, r3]
0042c3bc  18 30 9f e5                                      ldr r3, [pc, #0x18]
0042c3c0  03 20 94 e7                                      ldr r2, [r4, r3]
0042c3c4  ce 87 fb eb                                      bl #0x30e304
0042c3c8  eb ff ff ea                                      b #0x42c37c
; mapping-symbol data/literal pool
0042c3cc  50 8d 57 00 20 87 56 00 38 8d 57 00 a8 38 00 00  .byte 0x50, 0x8d, 0x57, 0x00, 0x20, 0x87, 0x56, 0x00, 0x38, 0x8d, 0x57, 0x00, 0xa8, 0x38, 0x00, 0x00
0042c3dc  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0042c510, declared_size=284, range_size=284, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu10SetupSceneEv
; demangled: MenuMainMenu::SetupScene()
; decoder-mode: arm
0042c510  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0042c514  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
0042c518  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
0042c51c  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
0042c520  04 40 8f e0                                      add r4, pc, r4
0042c524  03 60 94 e7                                      ldr r6, [r4, r3]
0042c528  05 30 94 e7                                      ldr r3, [r4, r5]
0042c52c  30 d0 4d e2                                      sub sp, sp, #0x30
0042c530  00 20 96 e5                                      ldr r2, [r6]
0042c534  00 30 93 e5                                      ldr r3, [r3]
0042c538  00 00 52 e3                                      cmp r2, #0
0042c53c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0042c540  06 00 00 0a                                      beq #0x42c560
0042c544  05 30 94 e7                                      ldr r3, [r4, r5]
0042c548  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0042c54c  00 30 93 e5                                      ldr r3, [r3]
0042c550  03 00 52 e1                                      cmp r2, r3
0042c554  2d 00 00 1a                                      bne #0x42c610
0042c558  30 d0 8d e2                                      add sp, sp, #0x30
0042c55c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0042c560  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0042c564  fe c5 a0 e3                                      mov ip, #0x3f800000
0042c568  00 10 a0 e3                                      mov r1, #0
0042c56c  03 70 94 e7                                      ldr r7, [r4, r3]
0042c570  01 20 a0 e1                                      mov r2, r1
0042c574  0c 30 a0 e1                                      mov r3, ip
0042c578  44 00 97 e5                                      ldr r0, [r7, #0x44]
0042c57c  00 c0 8d e5                                      str ip, [sp]
0042c580  b0 7e fc eb                                      bl #0x34c048
0042c584  98 10 9f e5                                      ldr r1, [pc, #0x98]
0042c588  14 90 8d e2                                      add sb, sp, #0x14
0042c58c  10 20 8d e2                                      add r2, sp, #0x10
0042c590  09 00 a0 e1                                      mov r0, sb
0042c594  01 10 8f e0                                      add r1, pc, r1
0042c598  d3 9e fb eb                                      bl #0x3140ec
0042c59c  10 30 97 e5                                      ldr r3, [r7, #0x10]
0042c5a0  80 20 9f e5                                      ldr r2, [pc, #0x80]
0042c5a4  08 80 8d e2                                      add r8, sp, #8
0042c5a8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0042c5ac  02 20 94 e7                                      ldr r2, [r4, r2]
0042c5b0  28 10 9d e5                                      ldr r1, [sp, #0x28]
0042c5b4  08 00 a0 e1                                      mov r0, r8
0042c5b8  04 a0 93 e5                                      ldr sl, [r3, #4]
0042c5bc  26 8b 07 eb                                      bl #0x60f25c
0042c5c0  10 30 97 e5                                      ldr r3, [r7, #0x10]
0042c5c4  08 00 a0 e1                                      mov r0, r8
0042c5c8  10 10 93 e5                                      ldr r1, [r3, #0x10]
0042c5cc  05 bd 07 eb                                      bl #0x61b9e8
0042c5d0  00 00 86 e5                                      str r0, [r6]
0042c5d4  00 10 a0 e1                                      mov r1, r0
0042c5d8  00 30 9a e5                                      ldr r3, [sl]
0042c5dc  0a 00 a0 e1                                      mov r0, sl
0042c5e0  0f e0 a0 e1                                      mov lr, pc
0042c5e4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0042c5e8  00 30 96 e5                                      ldr r3, [r6]
0042c5ec  00 20 93 e5                                      ldr r2, [r3]
0042c5f0  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0042c5f4  00 00 83 e0                                      add r0, r3, r0
0042c5f8  e1 c3 fb eb                                      bl #0x31d584
0042c5fc  08 00 a0 e1                                      mov r0, r8
0042c600  9b b3 07 eb                                      bl #0x619474
0042c604  09 00 a0 e1                                      mov r0, sb
0042c608  11 af fb eb                                      bl #0x318254
0042c60c  cc ff ff ea                                      b #0x42c544
0042c610  3e 87 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0042c614  70 85 56 00 f0 2f 00 00 ac 40 00 00 f4 37 00 00  .byte 0x70, 0x85, 0x56, 0x00, 0xf0, 0x2f, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
0042c624  bc d7 49 00 2c 0d 00 00                          .byte 0xbc, 0xd7, 0x49, 0x00, 0x2c, 0x0d, 0x00, 0x00

; FUNCTION 0x0042c62c, declared_size=1108, range_size=1108, mode=arm
; class-group: MenuMainMenu
; alias: _ZN12MenuMainMenu4ShowEv
; demangled: MenuMainMenu::Show()
; decoder-mode: arm
0042c62c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0042c630  d0 43 9f e5                                      ldr r4, [pc, #0x3d0]
0042c634  d0 63 9f e5                                      ldr r6, [pc, #0x3d0]
0042c638  68 d0 4d e2                                      sub sp, sp, #0x68
0042c63c  04 40 8f e0                                      add r4, pc, r4
0042c640  06 20 94 e7                                      ldr r2, [r4, r6]
0042c644  00 30 90 e5                                      ldr r3, [r0]
0042c648  00 50 a0 e1                                      mov r5, r0
0042c64c  00 20 92 e5                                      ldr r2, [r2]
0042c650  64 20 8d e5                                      str r2, [sp, #0x64]
0042c654  0f e0 a0 e1                                      mov lr, pc
0042c658  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0042c65c  00 00 50 e3                                      cmp r0, #0
0042c660  06 00 00 1a                                      bne #0x42c680
0042c664  06 30 94 e7                                      ldr r3, [r4, r6]
0042c668  64 20 9d e5                                      ldr r2, [sp, #0x64]
0042c66c  00 30 93 e5                                      ldr r3, [r3]
0042c670  03 00 52 e1                                      cmp r2, r3
0042c674  e2 00 00 1a                                      bne #0x42ca04
0042c678  68 d0 8d e2                                      add sp, sp, #0x68
0042c67c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0042c680  a0 fd fb eb                                      bl #0x32bd08
0042c684  01 30 a0 e3                                      mov r3, #1
0042c688  13 30 c0 e5                                      strb r3, [r0, #0x13]
0042c68c  9d fd fb eb                                      bl #0x32bd08
0042c690  05 30 d0 e5                                      ldrb r3, [r0, #5]
0042c694  00 00 53 e3                                      cmp r3, #0
0042c698  9c 00 00 1a                                      bne #0x42c910
0042c69c  fa 00 00 eb                                      bl #0x42ca8c
0042c6a0  68 13 9f e5                                      ldr r1, [pc, #0x368]
0042c6a4  4c a0 8d e2                                      add sl, sp, #0x4c
0042c6a8  34 80 8d e2                                      add r8, sp, #0x34
0042c6ac  01 10 8f e0                                      add r1, pc, r1
0042c6b0  ce 02 00 eb                                      bl #0x42d1f0
0042c6b4  00 30 90 e5                                      ldr r3, [r0]
0042c6b8  0f e0 a0 e1                                      mov lr, pc
0042c6bc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0042c6c0  05 00 a0 e1                                      mov r0, r5
0042c6c4  61 e3 ff eb                                      bl #0x425450
0042c6c8  44 33 9f e5                                      ldr r3, [pc, #0x344]
0042c6cc  03 70 94 e7                                      ldr r7, [r4, r3]
0042c6d0  07 00 a0 e1                                      mov r0, r7
0042c6d4  6b 2c fc eb                                      bl #0x337888
0042c6d8  38 13 9f e5                                      ldr r1, [pc, #0x338]
0042c6dc  18 20 8d e2                                      add r2, sp, #0x18
0042c6e0  0a 00 a0 e1                                      mov r0, sl
0042c6e4  01 10 8f e0                                      add r1, pc, r1
0042c6e8  7f 9e fb eb                                      bl #0x3140ec
0042c6ec  0a 10 a0 e1                                      mov r1, sl
0042c6f0  07 00 a0 e1                                      mov r0, r7
0042c6f4  e3 2c fc eb                                      bl #0x337a88
0042c6f8  0a 00 a0 e1                                      mov r0, sl
0042c6fc  d4 ae fb eb                                      bl #0x318254
0042c700  07 00 a0 e1                                      mov r0, r7
0042c704  5f 2c fc eb                                      bl #0x337888
0042c708  0c 13 9f e5                                      ldr r1, [pc, #0x30c]
0042c70c  14 20 8d e2                                      add r2, sp, #0x14
0042c710  08 00 a0 e1                                      mov r0, r8
0042c714  01 10 8f e0                                      add r1, pc, r1
0042c718  73 9e fb eb                                      bl #0x3140ec
0042c71c  07 00 a0 e1                                      mov r0, r7
0042c720  08 10 a0 e1                                      mov r1, r8
0042c724  d7 2c fc eb                                      bl #0x337a88
0042c728  00 70 a0 e1                                      mov r7, r0
0042c72c  08 00 a0 e1                                      mov r0, r8
0042c730  c7 ae fb eb                                      bl #0x318254
0042c734  00 00 57 e3                                      cmp r7, #0
0042c738  6d 00 00 1a                                      bne #0x42c8f4
0042c73c  dc 12 9f e5                                      ldr r1, [pc, #0x2dc]
0042c740  04 00 95 e5                                      ldr r0, [r5, #4]
0042c744  00 20 a0 e3                                      mov r2, #0
0042c748  01 10 8f e0                                      add r1, pc, r1
0042c74c  41 f6 0d eb                                      bl #0x7aa058
0042c750  cc 12 9f e5                                      ldr r1, [pc, #0x2cc]
0042c754  04 00 95 e5                                      ldr r0, [r5, #4]
0042c758  00 20 a0 e3                                      mov r2, #0
0042c75c  01 10 8f e0                                      add r1, pc, r1
0042c760  3c f6 0d eb                                      bl #0x7aa058
0042c764  f4 fd ff eb                                      bl #0x42bf3c
0042c768  68 ff ff eb                                      bl #0x42c510
0042c76c  b4 32 9f e5                                      ldr r3, [pc, #0x2b4]
0042c770  03 30 94 e7                                      ldr r3, [r4, r3]
0042c774  00 30 93 e5                                      ldr r3, [r3]
0042c778  00 00 53 e3                                      cmp r3, #0
0042c77c  82 00 00 0a                                      beq #0x42c98c
0042c780  a4 32 9f e5                                      ldr r3, [pc, #0x2a4]
0042c784  00 80 a0 e3                                      mov r8, #0
0042c788  a0 12 9f e5                                      ldr r1, [pc, #0x2a0]
0042c78c  03 30 94 e7                                      ldr r3, [r4, r3]
0042c790  9c 72 9f e5                                      ldr r7, [pc, #0x29c]
0042c794  01 10 8f e0                                      add r1, pc, r1
0042c798  00 80 c3 e5                                      strb r8, [r3]
0042c79c  94 32 9f e5                                      ldr r3, [pc, #0x294]
0042c7a0  04 00 95 e5                                      ldr r0, [r5, #4]
0042c7a4  03 20 94 e7                                      ldr r2, [r4, r3]
0042c7a8  05 30 a0 e1                                      mov r3, r5
0042c7ac  89 f2 0d eb                                      bl #0x7a91d8
0042c7b0  07 a0 94 e7                                      ldr sl, [r4, r7]
0042c7b4  01 10 a0 e3                                      mov r1, #1
0042c7b8  1c 50 8d e2                                      add r5, sp, #0x1c
0042c7bc  0a 00 a0 e1                                      mov r0, sl
0042c7c0  eb cb fb eb                                      bl #0x31f774
0042c7c4  10 10 a0 e3                                      mov r1, #0x10
0042c7c8  00 90 a0 e1                                      mov sb, r0
0042c7cc  05 00 a0 e1                                      mov r0, r5
0042c7d0  2c 50 8d e5                                      str r5, [sp, #0x2c]
0042c7d4  30 50 8d e5                                      str r5, [sp, #0x30]
0042c7d8  a7 93 fb eb                                      bl #0x31167c
0042c7dc  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0042c7e0  01 00 59 e3                                      cmp sb, #1
0042c7e4  00 80 c3 e5                                      strb r8, [r3]
0042c7e8  1a 00 00 0a                                      beq #0x42c858
0042c7ec  02 00 59 e3                                      cmp sb, #2
0042c7f0  53 00 00 0a                                      beq #0x42c944
0042c7f4  03 00 59 e3                                      cmp sb, #3
0042c7f8  57 00 00 0a                                      beq #0x42c95c
0042c7fc  04 00 59 e3                                      cmp sb, #4
0042c800  5b 00 00 0a                                      beq #0x42c974
0042c804  05 00 59 e3                                      cmp sb, #5
0042c808  47 00 00 0a                                      beq #0x42c92c
0042c80c  06 00 59 e3                                      cmp sb, #6
0042c810  5f 00 00 0a                                      beq #0x42c994
0042c814  08 00 59 e3                                      cmp sb, #8
0042c818  63 00 00 0a                                      beq #0x42c9ac
0042c81c  09 00 59 e3                                      cmp sb, #9
0042c820  67 00 00 0a                                      beq #0x42c9c4
0042c824  07 00 59 e3                                      cmp sb, #7
0042c828  6b 00 00 0a                                      beq #0x42c9dc
0042c82c  00 00 59 e3                                      cmp sb, #0
0042c830  15 00 00 1a                                      bne #0x42c88c
0042c834  33 fd fb eb                                      bl #0x32bd08
0042c838  07 30 94 e7                                      ldr r3, [r4, r7]
0042c83c  00 20 a0 e3                                      mov r2, #0
0042c840  14 20 c0 e5                                      strb r2, [r0, #0x14]
0042c844  01 20 a0 e3                                      mov r2, #1
0042c848  05 00 a0 e1                                      mov r0, r5
0042c84c  ab 20 c3 e5                                      strb r2, [r3, #0xab]
0042c850  7f ae fb eb                                      bl #0x318254
0042c854  82 ff ff ea                                      b #0x42c664
0042c858  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
0042c85c  dc 21 9f e5                                      ldr r2, [pc, #0x1dc]
0042c860  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
0042c864  01 10 8f e0                                      add r1, pc, r1
0042c868  02 20 8f e0                                      add r2, pc, r2
0042c86c  34 80 9a e5                                      ldr r8, [sl, #0x34]
0042c870  d9 60 02 eb                                      bl #0x4c4bdc
0042c874  00 10 a0 e1                                      mov r1, r0
0042c878  08 00 a0 e1                                      mov r0, r8
0042c87c  96 71 03 eb                                      bl #0x508edc
0042c880  00 10 a0 e1                                      mov r1, r0
0042c884  05 00 a0 e1                                      mov r0, r5
0042c888  b7 0f fc eb                                      bl #0x33076c
0042c88c  08 80 8d e2                                      add r8, sp, #8
0042c890  00 30 a0 e3                                      mov r3, #0
0042c894  30 10 9d e5                                      ldr r1, [sp, #0x30]
0042c898  08 00 a0 e1                                      mov r0, r8
0042c89c  09 30 cd e5                                      strb r3, [sp, #9]
0042c8a0  08 30 cd e5                                      strb r3, [sp, #8]
0042c8a4  a9 aa 0d eb                                      bl #0x797350
0042c8a8  07 a0 94 e7                                      ldr sl, [r4, r7]
0042c8ac  54 00 9a e5                                      ldr r0, [sl, #0x54]
0042c8b0  b2 00 00 eb                                      bl #0x42cb80
0042c8b4  00 90 a0 e1                                      mov sb, r0
0042c8b8  54 00 9a e5                                      ldr r0, [sl, #0x54]
0042c8bc  af 00 00 eb                                      bl #0x42cb80
0042c8c0  f9 ec 0d eb                                      bl #0x7a7cac
0042c8c4  22 1e 0d eb                                      bl #0x774154
0042c8c8  74 21 9f e5                                      ldr r2, [pc, #0x174]
0042c8cc  00 10 a0 e1                                      mov r1, r0
0042c8d0  01 c0 a0 e3                                      mov ip, #1
0042c8d4  09 00 a0 e1                                      mov r0, sb
0042c8d8  02 20 8f e0                                      add r2, pc, r2
0042c8dc  08 30 a0 e1                                      mov r3, r8
0042c8e0  00 c0 8d e5                                      str ip, [sp]
0042c8e4  48 fd 0d eb                                      bl #0x7abe0c
0042c8e8  08 00 a0 e1                                      mov r0, r8
0042c8ec  0c aa 0d eb                                      bl #0x797124
0042c8f0  cf ff ff ea                                      b #0x42c834
0042c8f4  04 70 95 e5                                      ldr r7, [r5, #4]
0042c8f8  48 00 85 e2                                      add r0, r5, #0x48
0042c8fc  10 66 fd eb                                      bl #0x386144
0042c900  07 00 a0 e1                                      mov r0, r7
0042c904  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
0042c908  be f1 0d eb                                      bl #0x7a9008
0042c90c  8a ff ff ea                                      b #0x42c73c
0042c910  fc fc fb eb                                      bl #0x32bd08
0042c914  07 30 d0 e5                                      ldrb r3, [r0, #7]
0042c918  00 00 53 e3                                      cmp r3, #0
0042c91c  5e ff ff 0a                                      beq #0x42c69c
0042c920  f8 fc fb eb                                      bl #0x32bd08
0042c924  23 b4 01 eb                                      bl #0x4999b8
0042c928  5b ff ff ea                                      b #0x42c69c
0042c92c  14 11 9f e5                                      ldr r1, [pc, #0x114]
0042c930  14 21 9f e5                                      ldr r2, [pc, #0x114]
0042c934  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
0042c938  01 10 8f e0                                      add r1, pc, r1
0042c93c  02 20 8f e0                                      add r2, pc, r2
0042c940  c9 ff ff ea                                      b #0x42c86c
0042c944  04 11 9f e5                                      ldr r1, [pc, #0x104]
0042c948  04 21 9f e5                                      ldr r2, [pc, #0x104]
0042c94c  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
0042c950  01 10 8f e0                                      add r1, pc, r1
0042c954  02 20 8f e0                                      add r2, pc, r2
0042c958  c3 ff ff ea                                      b #0x42c86c
0042c95c  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
0042c960  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
0042c964  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
0042c968  01 10 8f e0                                      add r1, pc, r1
0042c96c  02 20 8f e0                                      add r2, pc, r2
0042c970  bd ff ff ea                                      b #0x42c86c
0042c974  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0042c978  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
0042c97c  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
0042c980  01 10 8f e0                                      add r1, pc, r1
0042c984  02 20 8f e0                                      add r2, pc, r2
0042c988  b7 ff ff ea                                      b #0x42c86c
0042c98c  dd fc ff eb                                      bl #0x42bd08
0042c990  7a ff ff ea                                      b #0x42c780
0042c994  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0042c998  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
0042c99c  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
0042c9a0  01 10 8f e0                                      add r1, pc, r1
0042c9a4  02 20 8f e0                                      add r2, pc, r2
0042c9a8  af ff ff ea                                      b #0x42c86c
0042c9ac  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0042c9b0  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
0042c9b4  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
0042c9b8  01 10 8f e0                                      add r1, pc, r1
0042c9bc  02 20 8f e0                                      add r2, pc, r2
0042c9c0  a9 ff ff ea                                      b #0x42c86c
0042c9c4  ac 10 9f e5                                      ldr r1, [pc, #0xac]
0042c9c8  ac 20 9f e5                                      ldr r2, [pc, #0xac]
0042c9cc  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
0042c9d0  01 10 8f e0                                      add r1, pc, r1
0042c9d4  02 20 8f e0                                      add r2, pc, r2
0042c9d8  a3 ff ff ea                                      b #0x42c86c
0042c9dc  c9 fc fb eb                                      bl #0x32bd08
0042c9e0  0e 30 d0 e5                                      ldrb r3, [r0, #0xe]
0042c9e4  00 00 53 e3                                      cmp r3, #0
0042c9e8  91 ff ff 1a                                      bne #0x42c834
0042c9ec  c5 fc fb eb                                      bl #0x32bd08
0042c9f0  01 80 a0 e3                                      mov r8, #1
0042c9f4  0e 80 c0 e5                                      strb r8, [r0, #0xe]
0042c9f8  c2 fc fb eb                                      bl #0x32bd08
0042c9fc  0a 80 c0 e5                                      strb r8, [r0, #0xa]
0042ca00  8b ff ff ea                                      b #0x42c834
0042ca04  41 86 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0042ca08  54 84 56 00 ac 40 00 00 9c d6 49 00 84 08 00 00  .byte 0x54, 0x84, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0x9c, 0xd6, 0x49, 0x00, 0x84, 0x08, 0x00, 0x00
0042ca18  9c d6 49 00 84 d6 49 00 60 d6 49 00 5c d6 49 00  .byte 0x9c, 0xd6, 0x49, 0x00, 0x84, 0xd6, 0x49, 0x00, 0x60, 0xd6, 0x49, 0x00, 0x5c, 0xd6, 0x49, 0x00
0042ca28  88 26 00 00 00 32 00 00 34 d6 49 00 f4 37 00 00  .byte 0x88, 0x26, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x34, 0xd6, 0x49, 0x00, 0xf4, 0x37, 0x00, 0x00
0042ca38  b8 3e 00 00 c4 23 49 00 70 d5 49 00 38 d6 49 00  .byte 0xb8, 0x3e, 0x00, 0x00, 0xc4, 0x23, 0x49, 0x00, 0x70, 0xd5, 0x49, 0x00, 0x38, 0xd6, 0x49, 0x00
0042ca48  f0 22 49 00 3c d5 49 00 d8 22 49 00 a4 d4 49 00  .byte 0xf0, 0x22, 0x49, 0x00, 0x3c, 0xd5, 0x49, 0x00, 0xd8, 0x22, 0x49, 0x00, 0xa4, 0xd4, 0x49, 0x00
0042ca58  c0 22 49 00 b4 d4 49 00 a8 22 49 00 c4 d4 49 00  .byte 0xc0, 0x22, 0x49, 0x00, 0xb4, 0xd4, 0x49, 0x00, 0xa8, 0x22, 0x49, 0x00, 0xc4, 0xd4, 0x49, 0x00
0042ca68  88 22 49 00 f4 d4 49 00 70 22 49 00 04 d5 49 00  .byte 0x88, 0x22, 0x49, 0x00, 0xf4, 0xd4, 0x49, 0x00, 0x70, 0x22, 0x49, 0x00, 0x04, 0xd5, 0x49, 0x00
0042ca78  58 22 49 00 1c d5 49 00                          .byte 0x58, 0x22, 0x49, 0x00, 0x1c, 0xd5, 0x49, 0x00
