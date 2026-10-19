; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006afa70, declared_size=56, range_size=56, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox16setOverrideColorENS_5video6SColorE
; demangled: glitch::gui::CGUIEditBox::setOverrideColor(glitch::video::SColor)
; decoder-mode: arm
006afa70  04 40 2d e5                                      str r4, [sp, #-4]!
006afa74  51 34 e7 e7                                      ubfx r3, r1, #8, #8
006afa78  51 28 e7 e7                                      ubfx r2, r1, #0x10, #8
006afa7c  21 cc a0 e1                                      lsr ip, r1, #0x18
006afa80  01 40 a0 e3                                      mov r4, #1
006afa84  0c d0 4d e2                                      sub sp, sp, #0xc
006afa88  5a 41 c0 e5                                      strb r4, [r0, #0x15a]
006afa8c  67 c1 c0 e5                                      strb ip, [r0, #0x167]
006afa90  66 21 c0 e5                                      strb r2, [r0, #0x166]
006afa94  65 31 c0 e5                                      strb r3, [r0, #0x165]
006afa98  64 11 c0 e5                                      strb r1, [r0, #0x164]
006afa9c  0c d0 8d e2                                      add sp, sp, #0xc
006afaa0  10 00 bd e8                                      ldm sp!, {r4}
006afaa4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006afaa8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox13setDrawBorderEb
; demangled: glitch::gui::CGUIEditBox::setDrawBorder(bool)
; decoder-mode: arm
006afaa8  59 11 c0 e5                                      strb r1, [r0, #0x159]
006afaac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006afab0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox19enableOverrideColorEb
; demangled: glitch::gui::CGUIEditBox::enableOverrideColor(bool)
; decoder-mode: arm
006afab0  5a 11 c0 e5                                      strb r1, [r0, #0x15a]
006afab4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006afab8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZNK6glitch3gui11CGUIEditBox17isWordWrapEnabledEv
; demangled: glitch::gui::CGUIEditBox::isWordWrapEnabled() const
; decoder-mode: arm
006afab8  88 01 d0 e5                                      ldrb r0, [r0, #0x188]
006afabc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006afac0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox12setMultiLineEb
; demangled: glitch::gui::CGUIEditBox::setMultiLine(bool)
; decoder-mode: arm
006afac0  89 11 c0 e5                                      strb r1, [r0, #0x189]
006afac4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006afac8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZNK6glitch3gui11CGUIEditBox18isMultiLineEnabledEv
; demangled: glitch::gui::CGUIEditBox::isMultiLineEnabled() const
; decoder-mode: arm
006afac8  89 01 d0 e5                                      ldrb r0, [r0, #0x189]
006afacc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006afad0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZNK6glitch3gui11CGUIEditBox13isPasswordBoxEv
; demangled: glitch::gui::CGUIEditBox::isPasswordBox() const
; decoder-mode: arm
006afad0  8b 01 d0 e5                                      ldrb r0, [r0, #0x18b]
006afad4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006afad8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox16setTextAlignmentENS0_14EGUI_ALIGNMENTES2_
; demangled: glitch::gui::CGUIEditBox::setTextAlignment(glitch::gui::EGUI_ALIGNMENT, glitch::gui::EGUI_ALIGNMENT)
; decoder-mode: arm
006afad8  94 21 80 e5                                      str r2, [r0, #0x194]
006afadc  90 11 80 e5                                      str r1, [r0, #0x190]
006afae0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006afae4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox13setAutoScrollEb
; demangled: glitch::gui::CGUIEditBox::setAutoScroll(bool)
; decoder-mode: arm
006afae4  8a 11 c0 e5                                      strb r1, [r0, #0x18a]
006afae8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006afaec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZNK6glitch3gui11CGUIEditBox19isAutoScrollEnabledEv
; demangled: glitch::gui::CGUIEditBox::isAutoScrollEnabled() const
; decoder-mode: arm
006afaec  8a 01 d0 e5                                      ldrb r0, [r0, #0x18a]
006afaf0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006afaf4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZNK6glitch3gui11CGUIEditBox6getMaxEv
; demangled: glitch::gui::CGUIEditBox::getMax() const
; decoder-mode: arm
006afaf4  84 01 90 e5                                      ldr r0, [r0, #0x184]
006afaf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006afafc, declared_size=540, range_size=540, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox11setTextRectEi
; demangled: glitch::gui::CGUIEditBox::setTextRect(int)
; decoder-mode: arm
006afafc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006afb00  50 31 90 e5                                      ldr r3, [r0, #0x150]
006afb04  68 51 90 e5                                      ldr r5, [r0, #0x168]
006afb08  0c d0 4d e2                                      sub sp, sp, #0xc
006afb0c  00 40 a0 e1                                      mov r4, r0
006afb10  03 00 a0 e1                                      mov r0, r3
006afb14  00 30 93 e5                                      ldr r3, [r3]
006afb18  01 60 a0 e1                                      mov r6, r1
006afb1c  0f e0 a0 e1                                      mov lr, pc
006afb20  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006afb24  00 00 55 e3                                      cmp r5, #0
006afb28  74 00 00 0a                                      beq #0x6afd00
006afb2c  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
006afb30  00 00 53 e3                                      cmp r3, #0
006afb34  02 00 00 1a                                      bne #0x6afb44
006afb38  89 31 d4 e5                                      ldrb r3, [r4, #0x189]
006afb3c  00 00 53 e3                                      cmp r3, #0
006afb40  62 00 00 0a                                      beq #0x6afcd0
006afb44  98 31 94 e5                                      ldr r3, [r4, #0x198]
006afb48  9c c1 94 e5                                      ldr ip, [r4, #0x19c]
006afb4c  48 20 a0 e3                                      mov r2, #0x48
006afb50  92 36 22 e0                                      mla r2, r2, r6, r3
006afb54  0c c0 63 e0                                      rsb ip, r3, ip
006afb58  cc c1 a0 e1                                      asr ip, ip, #3
006afb5c  44 20 92 e5                                      ldr r2, [r2, #0x44]
006afb60  8c 71 a0 e1                                      lsl r7, ip, #3
006afb64  07 70 6c e0                                      rsb r7, ip, r7
006afb68  07 73 87 e0                                      add r7, r7, r7, lsl #6
006afb6c  00 30 95 e5                                      ldr r3, [r5]
006afb70  87 71 8c e0                                      add r7, ip, r7, lsl #3
006afb74  0d 00 a0 e1                                      mov r0, sp
006afb78  87 17 a0 e1                                      lsl r1, r7, #0xf
006afb7c  01 70 67 e0                                      rsb r7, r7, r1
006afb80  05 10 a0 e1                                      mov r1, r5
006afb84  87 71 8c e0                                      add r7, ip, r7, lsl #3
006afb88  0f e0 a0 e1                                      mov lr, pc
006afb8c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006afb90  00 05 9d e8                                      ldm sp, {r8, sl}
006afb94  00 30 95 e5                                      ldr r3, [r5]
006afb98  05 00 a0 e1                                      mov r0, r5
006afb9c  0f e0 a0 e1                                      mov lr, pc
006afba0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
006afba4  90 31 94 e5                                      ldr r3, [r4, #0x190]
006afba8  00 a0 8a e0                                      add sl, sl, r0
006afbac  01 00 53 e3                                      cmp r3, #1
006afbb0  20 00 00 0a                                      beq #0x6afc38
006afbb4  02 00 53 e3                                      cmp r3, #2
006afbb8  39 00 00 0a                                      beq #0x6afca4
006afbbc  c0 21 94 e5                                      ldr r2, [r4, #0x1c0]
006afbc0  00 30 a0 e3                                      mov r3, #0
006afbc4  b0 31 84 e5                                      str r3, [r4, #0x1b0]
006afbc8  b8 81 84 e5                                      str r8, [r4, #0x1b8]
006afbcc  94 31 94 e5                                      ldr r3, [r4, #0x194]
006afbd0  01 00 53 e3                                      cmp r3, #1
006afbd4  20 00 00 0a                                      beq #0x6afc5c
006afbd8  02 00 53 e3                                      cmp r3, #2
006afbdc  25 00 00 0a                                      beq #0x6afc78
006afbe0  96 0a 06 e0                                      mul r6, r6, sl
006afbe4  c4 31 94 e5                                      ldr r3, [r4, #0x1c4]
006afbe8  b4 61 84 e5                                      str r6, [r4, #0x1b4]
006afbec  b4 61 94 e5                                      ldr r6, [r4, #0x1b4]
006afbf0  80 11 94 e5                                      ldr r1, [r4, #0x180]
006afbf4  b0 c1 94 e5                                      ldr ip, [r4, #0x1b0]
006afbf8  7c 01 94 e5                                      ldr r0, [r4, #0x17c]
006afbfc  b8 51 94 e5                                      ldr r5, [r4, #0x1b8]
006afc00  06 10 61 e0                                      rsb r1, r1, r6
006afc04  0c c0 60 e0                                      rsb ip, r0, ip
006afc08  01 a0 8a e0                                      add sl, sl, r1
006afc0c  05 00 60 e0                                      rsb r0, r0, r5
006afc10  02 00 80 e0                                      add r0, r0, r2
006afc14  03 a0 8a e0                                      add sl, sl, r3
006afc18  02 20 8c e0                                      add r2, ip, r2
006afc1c  03 30 81 e0                                      add r3, r1, r3
006afc20  bc a1 84 e5                                      str sl, [r4, #0x1bc]
006afc24  b0 21 84 e5                                      str r2, [r4, #0x1b0]
006afc28  b4 31 84 e5                                      str r3, [r4, #0x1b4]
006afc2c  b8 01 84 e5                                      str r0, [r4, #0x1b8]
006afc30  0c d0 8d e2                                      add sp, sp, #0xc
006afc34  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006afc38  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
006afc3c  c0 21 94 e5                                      ldr r2, [r4, #0x1c0]
006afc40  03 30 62 e0                                      rsb r3, r2, r3
006afc44  03 80 68 e0                                      rsb r8, r8, r3
006afc48  b8 31 84 e5                                      str r3, [r4, #0x1b8]
006afc4c  94 31 94 e5                                      ldr r3, [r4, #0x194]
006afc50  b0 81 84 e5                                      str r8, [r4, #0x1b0]
006afc54  01 00 53 e3                                      cmp r3, #1
006afc58  de ff ff 1a                                      bne #0x6afbd8
006afc5c  cc 11 94 e5                                      ldr r1, [r4, #0x1cc]
006afc60  c4 31 94 e5                                      ldr r3, [r4, #0x1c4]
006afc64  06 60 67 e0                                      rsb r6, r7, r6
006afc68  01 10 63 e0                                      rsb r1, r3, r1
006afc6c  9a 16 26 e0                                      mla r6, sl, r6, r1
006afc70  b4 61 84 e5                                      str r6, [r4, #0x1b4]
006afc74  dc ff ff ea                                      b #0x6afbec
006afc78  cc 11 94 e5                                      ldr r1, [r4, #0x1cc]
006afc7c  c4 31 94 e5                                      ldr r3, [r4, #0x1c4]
006afc80  97 0a 07 e0                                      mul r7, r7, sl
006afc84  01 10 63 e0                                      rsb r1, r3, r1
006afc88  a1 1f 81 e0                                      add r1, r1, r1, lsr #31
006afc8c  a7 7f 87 e0                                      add r7, r7, r7, lsr #31
006afc90  c1 10 a0 e1                                      asr r1, r1, #1
006afc94  96 1a 26 e0                                      mla r6, r6, sl, r1
006afc98  c7 70 46 e0                                      sub r7, r6, r7, asr #1
006afc9c  b4 71 84 e5                                      str r7, [r4, #0x1b4]
006afca0  d1 ff ff ea                                      b #0x6afbec
006afca4  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
006afca8  c0 21 94 e5                                      ldr r2, [r4, #0x1c0]
006afcac  a8 8f 88 e0                                      add r8, r8, r8, lsr #31
006afcb0  03 30 62 e0                                      rsb r3, r2, r3
006afcb4  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
006afcb8  c3 30 a0 e1                                      asr r3, r3, #1
006afcbc  c8 10 83 e0                                      add r1, r3, r8, asr #1
006afcc0  c8 80 43 e0                                      sub r8, r3, r8, asr #1
006afcc4  b0 81 84 e5                                      str r8, [r4, #0x1b0]
006afcc8  b8 11 84 e5                                      str r1, [r4, #0x1b8]
006afccc  be ff ff ea                                      b #0x6afbcc
006afcd0  00 30 95 e5                                      ldr r3, [r5]
006afcd4  0d 00 a0 e1                                      mov r0, sp
006afcd8  05 10 a0 e1                                      mov r1, r5
006afcdc  e4 20 94 e5                                      ldr r2, [r4, #0xe4]
006afce0  0f e0 a0 e1                                      mov lr, pc
006afce4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006afce8  44 a0 94 e5                                      ldr sl, [r4, #0x44]
006afcec  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006afcf0  00 80 9d e5                                      ldr r8, [sp]
006afcf4  01 70 a0 e3                                      mov r7, #1
006afcf8  0a a0 63 e0                                      rsb sl, r3, sl
006afcfc  a4 ff ff ea                                      b #0x6afb94
006afd00  05 10 a0 e1                                      mov r1, r5
006afd04  00 30 90 e5                                      ldr r3, [r0]
006afd08  0f e0 a0 e1                                      mov lr, pc
006afd0c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006afd10  00 50 a0 e1                                      mov r5, r0
006afd14  84 ff ff ea                                      b #0x6afb2c

; FUNCTION 0x006afd18, declared_size=388, range_size=388, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox12getCursorPosEii
; demangled: glitch::gui::CGUIEditBox::getCursorPos(int, int)
; decoder-mode: arm
006afd18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006afd1c  50 31 90 e5                                      ldr r3, [r0, #0x150]
006afd20  00 40 a0 e1                                      mov r4, r0
006afd24  01 50 a0 e1                                      mov r5, r1
006afd28  03 00 a0 e1                                      mov r0, r3
006afd2c  00 30 93 e5                                      ldr r3, [r3]
006afd30  02 60 a0 e1                                      mov r6, r2
006afd34  68 81 94 e5                                      ldr r8, [r4, #0x168]
006afd38  0f e0 a0 e1                                      mov lr, pc
006afd3c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006afd40  68 11 94 e5                                      ldr r1, [r4, #0x168]
006afd44  00 00 51 e3                                      cmp r1, #0
006afd48  4e 00 00 0a                                      beq #0x6afe88
006afd4c  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
006afd50  00 00 53 e3                                      cmp r3, #0
006afd54  1d 00 00 1a                                      bne #0x6afdd0
006afd58  89 91 d4 e5                                      ldrb sb, [r4, #0x189]
006afd5c  00 00 59 e3                                      cmp sb, #0
006afd60  03 a0 85 02                                      addeq sl, r5, #3
006afd64  01 50 a0 03                                      moveq r5, #1
006afd68  18 00 00 1a                                      bne #0x6afdd0
006afd6c  00 70 a0 e3                                      mov r7, #0
006afd70  07 00 00 ea                                      b #0x6afd94
006afd74  03 00 56 e1                                      cmp r6, r3
006afd78  02 00 00 ba                                      blt #0x6afd88
006afd7c  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
006afd80  03 00 56 e1                                      cmp r6, r3
006afd84  31 00 00 da                                      ble #0x6afe50
006afd88  01 70 87 e2                                      add r7, r7, #1
006afd8c  05 00 57 e1                                      cmp r7, r5
006afd90  1c 00 00 2a                                      bhs #0x6afe08
006afd94  07 10 a0 e1                                      mov r1, r7
006afd98  04 00 a0 e1                                      mov r0, r4
006afd9c  56 ff ff eb                                      bl #0x6afafc
006afda0  00 00 57 e3                                      cmp r7, #0
006afda4  b4 31 94 15                                      ldrne r3, [r4, #0x1b4]
006afda8  02 00 00 1a                                      bne #0x6afdb8
006afdac  b4 31 94 e5                                      ldr r3, [r4, #0x1b4]
006afdb0  03 00 56 e1                                      cmp r6, r3
006afdb4  03 60 a0 b1                                      movlt r6, r3
006afdb8  09 00 57 e1                                      cmp r7, sb
006afdbc  ec ff ff 1a                                      bne #0x6afd74
006afdc0  bc 21 94 e5                                      ldr r2, [r4, #0x1bc]
006afdc4  02 00 56 e1                                      cmp r6, r2
006afdc8  02 60 a0 a1                                      movge r6, r2
006afdcc  e8 ff ff ea                                      b #0x6afd74
006afdd0  9c 21 94 e5                                      ldr r2, [r4, #0x19c]
006afdd4  98 31 94 e5                                      ldr r3, [r4, #0x198]
006afdd8  03 a0 85 e2                                      add sl, r5, #3
006afddc  02 30 63 e0                                      rsb r3, r3, r2
006afde0  c3 31 a0 e1                                      asr r3, r3, #3
006afde4  83 21 a0 e1                                      lsl r2, r3, #3
006afde8  02 20 63 e0                                      rsb r2, r3, r2
006afdec  02 23 82 e0                                      add r2, r2, r2, lsl #6
006afdf0  82 21 83 e0                                      add r2, r3, r2, lsl #3
006afdf4  82 57 a0 e1                                      lsl r5, r2, #0xf
006afdf8  05 50 62 e0                                      rsb r5, r2, r5
006afdfc  85 51 93 e0                                      adds r5, r3, r5, lsl #3
006afe00  01 90 45 12                                      subne sb, r5, #1
006afe04  d8 ff ff 1a                                      bne #0x6afd6c
006afe08  00 60 a0 e3                                      mov r6, #0
006afe0c  06 50 a0 e1                                      mov r5, r6
006afe10  b0 21 94 e5                                      ldr r2, [r4, #0x1b0]
006afe14  00 30 98 e5                                      ldr r3, [r8]
006afe18  08 00 a0 e1                                      mov r0, r8
006afe1c  02 00 5a e1                                      cmp sl, r2
006afe20  0a 20 62 a0                                      rsbge r2, r2, sl
006afe24  02 20 62 b0                                      rsblt r2, r2, r2
006afe28  44 10 95 e5                                      ldr r1, [r5, #0x44]
006afe2c  0f e0 a0 e1                                      mov lr, pc
006afe30  24 f0 93 e5                                      ldr pc, [r3, #0x24]
006afe34  01 00 70 e3                                      cmn r0, #1
006afe38  40 00 95 05                                      ldreq r0, [r5, #0x40]
006afe3c  44 30 95 05                                      ldreq r3, [r5, #0x44]
006afe40  06 00 80 10                                      addne r0, r0, r6
006afe44  00 00 63 00                                      rsbeq r0, r3, r0
006afe48  40 01 86 00                                      addeq r0, r6, r0, asr #2
006afe4c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006afe50  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
006afe54  00 00 53 e3                                      cmp r3, #0
006afe58  05 00 00 0a                                      beq #0x6afe74
006afe5c  98 31 94 e5                                      ldr r3, [r4, #0x198]
006afe60  48 50 a0 e3                                      mov r5, #0x48
006afe64  95 37 25 e0                                      mla r5, r5, r7, r3
006afe68  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
006afe6c  07 61 93 e7                                      ldr r6, [r3, r7, lsl #2]
006afe70  e6 ff ff ea                                      b #0x6afe10
006afe74  89 61 d4 e5                                      ldrb r6, [r4, #0x189]
006afe78  00 00 56 e3                                      cmp r6, #0
006afe7c  a0 50 84 02                                      addeq r5, r4, #0xa0
006afe80  e2 ff ff 0a                                      beq #0x6afe10
006afe84  f4 ff ff ea                                      b #0x6afe5c
006afe88  00 30 90 e5                                      ldr r3, [r0]
006afe8c  0f e0 a0 e1                                      mov lr, pc
006afe90  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006afe94  00 80 a0 e1                                      mov r8, r0
006afe98  ab ff ff ea                                      b #0x6afd4c

; FUNCTION 0x006afe9c, declared_size=304, range_size=304, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox16getTextDimensionEv
; demangled: glitch::gui::CGUIEditBox::getTextDimension()
; decoder-mode: arm
006afe9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006afea0  01 40 a0 e1                                      mov r4, r1
006afea4  0c d0 4d e2                                      sub sp, sp, #0xc
006afea8  04 00 8d e5                                      str r0, [sp, #4]
006afeac  00 10 a0 e3                                      mov r1, #0
006afeb0  04 00 a0 e1                                      mov r0, r4
006afeb4  10 ff ff eb                                      bl #0x6afafc
006afeb8  9c 21 94 e5                                      ldr r2, [r4, #0x19c]
006afebc  98 31 94 e5                                      ldr r3, [r4, #0x198]
006afec0  b4 11 94 e5                                      ldr r1, [r4, #0x1b4]
006afec4  b0 61 94 e5                                      ldr r6, [r4, #0x1b0]
006afec8  02 30 63 e0                                      rsb r3, r3, r2
006afecc  c3 31 a0 e1                                      asr r3, r3, #3
006afed0  00 10 8d e5                                      str r1, [sp]
006afed4  83 21 a0 e1                                      lsl r2, r3, #3
006afed8  02 20 63 e0                                      rsb r2, r3, r2
006afedc  02 23 82 e0                                      add r2, r2, r2, lsl #6
006afee0  b8 71 94 e5                                      ldr r7, [r4, #0x1b8]
006afee4  82 21 83 e0                                      add r2, r3, r2, lsl #3
006afee8  bc b1 94 e5                                      ldr fp, [r4, #0x1bc]
006afeec  82 17 a0 e1                                      lsl r1, r2, #0xf
006afef0  01 20 62 e0                                      rsb r2, r2, r1
006afef4  82 31 83 e0                                      add r3, r3, r2, lsl #3
006afef8  01 00 53 e3                                      cmp r3, #1
006afefc  2b 00 00 9a                                      bls #0x6affb0
006aff00  01 50 a0 e3                                      mov r5, #1
006aff04  05 10 a0 e1                                      mov r1, r5
006aff08  04 00 a0 e1                                      mov r0, r4
006aff0c  fa fe ff eb                                      bl #0x6afafc
006aff10  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
006aff14  98 31 94 e5                                      ldr r3, [r4, #0x198]
006aff18  b0 01 94 e5                                      ldr r0, [r4, #0x1b0]
006aff1c  b4 21 94 e5                                      ldr r2, [r4, #0x1b4]
006aff20  01 30 63 e0                                      rsb r3, r3, r1
006aff24  c3 31 a0 e1                                      asr r3, r3, #3
006aff28  b8 c1 94 e5                                      ldr ip, [r4, #0x1b8]
006aff2c  83 81 a0 e1                                      lsl r8, r3, #3
006aff30  08 80 63 e0                                      rsb r8, r3, r8
006aff34  08 83 88 e0                                      add r8, r8, r8, lsl #6
006aff38  bc 11 94 e5                                      ldr r1, [r4, #0x1bc]
006aff3c  88 81 83 e0                                      add r8, r3, r8, lsl #3
006aff40  00 00 5c e1                                      cmp ip, r0
006aff44  0c 90 a0 b1                                      movlt sb, ip
006aff48  00 90 a0 a1                                      movge sb, r0
006aff4c  88 a7 a0 e1                                      lsl sl, r8, #0xf
006aff50  0a 80 68 e0                                      rsb r8, r8, sl
006aff54  88 81 83 e0                                      add r8, r3, r8, lsl #3
006aff58  00 30 9d e5                                      ldr r3, [sp]
006aff5c  02 00 51 e1                                      cmp r1, r2
006aff60  01 a0 a0 b1                                      movlt sl, r1
006aff64  02 a0 a0 a1                                      movge sl, r2
006aff68  00 00 5c e1                                      cmp ip, r0
006aff6c  0c 00 a0 a1                                      movge r0, ip
006aff70  00 00 a0 b1                                      movlt r0, r0
006aff74  02 00 51 e1                                      cmp r1, r2
006aff78  01 20 a0 a1                                      movge r2, r1
006aff7c  02 20 a0 b1                                      movlt r2, r2
006aff80  01 50 85 e2                                      add r5, r5, #1
006aff84  0a 00 53 e1                                      cmp r3, sl
006aff88  0a 30 a0 a1                                      movge r3, sl
006aff8c  00 00 57 e1                                      cmp r7, r0
006aff90  00 70 a0 b1                                      movlt r7, r0
006aff94  02 00 5b e1                                      cmp fp, r2
006aff98  02 b0 a0 b1                                      movlt fp, r2
006aff9c  09 00 56 e1                                      cmp r6, sb
006affa0  09 60 a0 a1                                      movge r6, sb
006affa4  08 00 55 e1                                      cmp r5, r8
006affa8  00 30 8d e5                                      str r3, [sp]
006affac  d4 ff ff 3a                                      blo #0x6aff04
006affb0  0a 00 9d e8                                      ldm sp, {r1, r3}
006affb4  07 60 66 e0                                      rsb r6, r6, r7
006affb8  0b b0 61 e0                                      rsb fp, r1, fp
006affbc  40 08 83 e8                                      stm r3, {r6, fp}
006affc0  04 00 9d e5                                      ldr r0, [sp, #4]
006affc4  0c d0 8d e2                                      add sp, sp, #0xc
006affc8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006affcc, declared_size=116, range_size=116, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox14getLineFromPosEi
; demangled: glitch::gui::CGUIEditBox::getLineFromPos(int)
; decoder-mode: arm
006affcc  88 31 d0 e5                                      ldrb r3, [r0, #0x188]
006affd0  00 00 53 e3                                      cmp r3, #0
006affd4  03 00 00 1a                                      bne #0x6affe8
006affd8  89 31 d0 e5                                      ldrb r3, [r0, #0x189]
006affdc  00 00 53 e3                                      cmp r3, #0
006affe0  03 00 a0 01                                      moveq r0, r3
006affe4  1e ff 2f 01                                      bxeq lr
006affe8  a8 31 90 e5                                      ldr r3, [r0, #0x1a8]
006affec  a4 c1 90 e5                                      ldr ip, [r0, #0x1a4]
006afff0  03 00 6c e0                                      rsb r0, ip, r3
006afff4  40 01 a0 e1                                      asr r0, r0, #2
006afff8  00 00 50 e3                                      cmp r0, #0
006afffc  0b 00 00 da                                      ble #0x6b0030
006b0000  00 30 9c e5                                      ldr r3, [ip]
006b0004  03 00 51 e1                                      cmp r1, r3
006b0008  00 00 e0 b3                                      mvnlt r0, #0
006b000c  1e ff 2f b1                                      bxlt lr
006b0010  00 30 a0 e3                                      mov r3, #0
006b0014  02 00 00 ea                                      b #0x6b0024
006b0018  03 21 9c e7                                      ldr r2, [ip, r3, lsl #2]
006b001c  01 00 52 e1                                      cmp r2, r1
006b0020  04 00 00 ca                                      bgt #0x6b0038
006b0024  01 30 83 e2                                      add r3, r3, #1
006b0028  00 00 53 e1                                      cmp r3, r0
006b002c  f9 ff ff 1a                                      bne #0x6b0018
006b0030  01 00 40 e2                                      sub r0, r0, #1
006b0034  1e ff 2f e1                                      bx lr
006b0038  01 00 43 e2                                      sub r0, r3, #1
006b003c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006b0844, declared_size=104, range_size=104, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox14setPasswordBoxEbw
; demangled: glitch::gui::CGUIEditBox::setPasswordBox(bool, wchar_t)
; decoder-mode: arm
006b0844  10 40 2d e9                                      push {r4, lr}
006b0848  00 00 51 e3                                      cmp r1, #0
006b084c  08 d0 4d e2                                      sub sp, sp, #8
006b0850  00 40 a0 e1                                      mov r4, r0
006b0854  8b 11 c0 e5                                      strb r1, [r0, #0x18b]
006b0858  01 00 00 1a                                      bne #0x6b0864
006b085c  08 d0 8d e2                                      add sp, sp, #8
006b0860  10 80 bd e8                                      pop {r4, pc}
006b0864  8c 21 80 e5                                      str r2, [r0, #0x18c]
006b0868  00 30 90 e5                                      ldr r3, [r0]
006b086c  00 10 a0 e3                                      mov r1, #0
006b0870  0f e0 a0 e1                                      mov lr, pc
006b0874  98 f0 93 e5                                      ldr pc, [r3, #0x98]
006b0878  00 10 a0 e3                                      mov r1, #0
006b087c  00 30 94 e5                                      ldr r3, [r4]
006b0880  04 00 a0 e1                                      mov r0, r4
006b0884  0f e0 a0 e1                                      mov lr, pc
006b0888  90 f0 93 e5                                      ldr pc, [r3, #0x90]
006b088c  98 11 94 e5                                      ldr r1, [r4, #0x198]
006b0890  9c 21 94 e5                                      ldr r2, [r4, #0x19c]
006b0894  02 00 51 e1                                      cmp r1, r2
006b0898  ef ff ff 0a                                      beq #0x6b085c
006b089c  66 0f 84 e2                                      add r0, r4, #0x198
006b08a0  04 30 8d e2                                      add r3, sp, #4
006b08a4  ad 80 fa eb                                      bl #0x550b60
006b08a8  eb ff ff ea                                      b #0x6b085c

; FUNCTION 0x006b08ac, declared_size=652, range_size=652, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIEditBox::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006b08ac  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006b08b0  5c d0 4d e2                                      sub sp, sp, #0x5c
006b08b4  01 40 a0 e1                                      mov r4, r1
006b08b8  00 50 a0 e1                                      mov r5, r0
006b08bc  dd 23 fa eb                                      bl #0x539838
006b08c0  40 12 9f e5                                      ldr r1, [pc, #0x240]
006b08c4  00 20 95 e5                                      ldr r2, [r5]
006b08c8  00 30 94 e5                                      ldr r3, [r4]
006b08cc  01 10 8f e0                                      add r1, pc, r1
006b08d0  04 00 a0 e1                                      mov r0, r4
006b08d4  80 70 92 e5                                      ldr r7, [r2, #0x80]
006b08d8  0f e0 a0 e1                                      mov lr, pc
006b08dc  24 f1 93 e5                                      ldr pc, [r3, #0x124]
006b08e0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006b08e4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006b08e8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006b08ec  01 10 cd e5                                      strb r1, [sp, #1]
006b08f0  02 20 cd e5                                      strb r2, [sp, #2]
006b08f4  00 00 cd e5                                      strb r0, [sp]
006b08f8  03 30 cd e5                                      strb r3, [sp, #3]
006b08fc  00 30 9d e5                                      ldr r3, [sp]
006b0900  05 00 a0 e1                                      mov r0, r5
006b0904  0c 60 8d e2                                      add r6, sp, #0xc
006b0908  03 10 a0 e1                                      mov r1, r3
006b090c  54 30 8d e5                                      str r3, [sp, #0x54]
006b0910  37 ff 2f e1                                      blx r7
006b0914  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
006b0918  00 20 95 e5                                      ldr r2, [r5]
006b091c  00 30 94 e5                                      ldr r3, [r4]
006b0920  01 10 8f e0                                      add r1, pc, r1
006b0924  04 00 a0 e1                                      mov r0, r4
006b0928  84 70 92 e5                                      ldr r7, [r2, #0x84]
006b092c  0f e0 a0 e1                                      mov lr, pc
006b0930  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006b0934  00 10 a0 e1                                      mov r1, r0
006b0938  05 00 a0 e1                                      mov r0, r5
006b093c  37 ff 2f e1                                      blx r7
006b0940  c8 11 9f e5                                      ldr r1, [pc, #0x1c8]
006b0944  00 20 95 e5                                      ldr r2, [r5]
006b0948  00 30 94 e5                                      ldr r3, [r4]
006b094c  01 10 8f e0                                      add r1, pc, r1
006b0950  04 00 a0 e1                                      mov r0, r4
006b0954  b4 70 92 e5                                      ldr r7, [r2, #0xb4]
006b0958  0f e0 a0 e1                                      mov lr, pc
006b095c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006b0960  00 10 a0 e1                                      mov r1, r0
006b0964  05 00 a0 e1                                      mov r0, r5
006b0968  37 ff 2f e1                                      blx r7
006b096c  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
006b0970  00 20 95 e5                                      ldr r2, [r5]
006b0974  00 30 94 e5                                      ldr r3, [r4]
006b0978  01 10 8f e0                                      add r1, pc, r1
006b097c  04 00 a0 e1                                      mov r0, r4
006b0980  90 70 92 e5                                      ldr r7, [r2, #0x90]
006b0984  0f e0 a0 e1                                      mov lr, pc
006b0988  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006b098c  00 10 a0 e1                                      mov r1, r0
006b0990  05 00 a0 e1                                      mov r0, r5
006b0994  37 ff 2f e1                                      blx r7
006b0998  78 11 9f e5                                      ldr r1, [pc, #0x178]
006b099c  00 20 95 e5                                      ldr r2, [r5]
006b09a0  00 30 94 e5                                      ldr r3, [r4]
006b09a4  01 10 8f e0                                      add r1, pc, r1
006b09a8  04 00 a0 e1                                      mov r0, r4
006b09ac  98 70 92 e5                                      ldr r7, [r2, #0x98]
006b09b0  0f e0 a0 e1                                      mov lr, pc
006b09b4  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006b09b8  00 10 a0 e1                                      mov r1, r0
006b09bc  05 00 a0 e1                                      mov r0, r5
006b09c0  37 ff 2f e1                                      blx r7
006b09c4  50 11 9f e5                                      ldr r1, [pc, #0x150]
006b09c8  00 20 95 e5                                      ldr r2, [r5]
006b09cc  00 30 94 e5                                      ldr r3, [r4]
006b09d0  01 10 8f e0                                      add r1, pc, r1
006b09d4  04 00 a0 e1                                      mov r0, r4
006b09d8  a0 70 92 e5                                      ldr r7, [r2, #0xa0]
006b09dc  0f e0 a0 e1                                      mov lr, pc
006b09e0  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006b09e4  00 10 a0 e1                                      mov r1, r0
006b09e8  05 00 a0 e1                                      mov r0, r5
006b09ec  37 ff 2f e1                                      blx r7
006b09f0  28 21 9f e5                                      ldr r2, [pc, #0x128]
006b09f4  00 30 94 e5                                      ldr r3, [r4]
006b09f8  06 00 a0 e1                                      mov r0, r6
006b09fc  02 20 8f e0                                      add r2, pc, r2
006b0a00  04 10 a0 e1                                      mov r1, r4
006b0a04  0f e0 a0 e1                                      mov lr, pc
006b0a08  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006b0a0c  50 30 9d e5                                      ldr r3, [sp, #0x50]
006b0a10  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
006b0a14  02 30 63 e0                                      rsb r3, r3, r2
006b0a18  23 31 b0 e1                                      lsrs r3, r3, #2
006b0a1c  2c 00 00 0a                                      beq #0x6b0ad4
006b0a20  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
006b0a24  00 20 95 e5                                      ldr r2, [r5]
006b0a28  00 30 94 e5                                      ldr r3, [r4]
006b0a2c  01 10 8f e0                                      add r1, pc, r1
006b0a30  04 00 a0 e1                                      mov r0, r4
006b0a34  a8 70 92 e5                                      ldr r7, [r2, #0xa8]
006b0a38  0f e0 a0 e1                                      mov lr, pc
006b0a3c  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006b0a40  50 30 9d e5                                      ldr r3, [sp, #0x50]
006b0a44  00 10 a0 e1                                      mov r1, r0
006b0a48  05 00 a0 e1                                      mov r0, r5
006b0a4c  00 20 93 e5                                      ldr r2, [r3]
006b0a50  37 ff 2f e1                                      blx r7
006b0a54  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
006b0a58  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
006b0a5c  00 c0 95 e5                                      ldr ip, [r5]
006b0a60  07 70 8f e0                                      add r7, pc, r7
006b0a64  5c 70 87 e2                                      add r7, r7, #0x5c
006b0a68  01 10 8f e0                                      add r1, pc, r1
006b0a6c  07 20 a0 e1                                      mov r2, r7
006b0a70  00 30 94 e5                                      ldr r3, [r4]
006b0a74  04 00 a0 e1                                      mov r0, r4
006b0a78  8c 80 9c e5                                      ldr r8, [ip, #0x8c]
006b0a7c  0f e0 a0 e1                                      mov lr, pc
006b0a80  00 f1 93 e5                                      ldr pc, [r3, #0x100]
006b0a84  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
006b0a88  00 a0 a0 e1                                      mov sl, r0
006b0a8c  07 20 a0 e1                                      mov r2, r7
006b0a90  01 10 8f e0                                      add r1, pc, r1
006b0a94  00 30 94 e5                                      ldr r3, [r4]
006b0a98  04 00 a0 e1                                      mov r0, r4
006b0a9c  0f e0 a0 e1                                      mov lr, pc
006b0aa0  00 f1 93 e5                                      ldr pc, [r3, #0x100]
006b0aa4  0a 10 a0 e1                                      mov r1, sl
006b0aa8  00 20 a0 e1                                      mov r2, r0
006b0aac  05 00 a0 e1                                      mov r0, r5
006b0ab0  38 ff 2f e1                                      blx r8
006b0ab4  50 00 9d e5                                      ldr r0, [sp, #0x50]
006b0ab8  06 00 50 e1                                      cmp r0, r6
006b0abc  02 00 00 0a                                      beq #0x6b0acc
006b0ac0  00 00 50 e3                                      cmp r0, #0
006b0ac4  00 00 00 0a                                      beq #0x6b0acc
006b0ac8  60 7e f1 eb                                      bl #0x310450
006b0acc  5c d0 8d e2                                      add sp, sp, #0x5c
006b0ad0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006b0ad4  58 10 9f e5                                      ldr r1, [pc, #0x58]
006b0ad8  00 20 95 e5                                      ldr r2, [r5]
006b0adc  00 30 94 e5                                      ldr r3, [r4]
006b0ae0  01 10 8f e0                                      add r1, pc, r1
006b0ae4  04 00 a0 e1                                      mov r0, r4
006b0ae8  a8 70 92 e5                                      ldr r7, [r2, #0xa8]
006b0aec  0f e0 a0 e1                                      mov lr, pc
006b0af0  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006b0af4  2a 20 a0 e3                                      mov r2, #0x2a
006b0af8  00 10 a0 e1                                      mov r1, r0
006b0afc  05 00 a0 e1                                      mov r0, r5
006b0b00  37 ff 2f e1                                      blx r7
006b0b04  d2 ff ff ea                                      b #0x6b0a54
; mapping-symbol data/literal pool
006b0b08  fc e1 22 00 70 e1 22 00 8c a8 23 00 30 e1 22 00  .byte 0xfc, 0xe1, 0x22, 0x00, 0x70, 0xe1, 0x22, 0x00, 0x8c, 0xa8, 0x23, 0x00, 0x30, 0xe1, 0x22, 0x00
006b0b18  44 a8 23 00 30 db 22 00 fc a7 23 00 dc a7 23 00  .byte 0x44, 0xa8, 0x23, 0x00, 0x30, 0xdb, 0x22, 0x00, 0xfc, 0xa7, 0x23, 0x00, 0xdc, 0xa7, 0x23, 0x00
006b0b28  cc 70 2a 00 70 e0 22 00 58 e0 22 00 28 a7 23 00  .byte 0xcc, 0x70, 0x2a, 0x00, 0x70, 0xe0, 0x22, 0x00, 0x58, 0xe0, 0x22, 0x00, 0x28, 0xa7, 0x23, 0x00

; FUNCTION 0x006b0bac, declared_size=180, range_size=180, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBoxD1Ev
; demangled: glitch::gui::CGUIEditBox::~CGUIEditBox()
; decoder-mode: arm
006b0bac  70 40 2d e9                                      push {r4, r5, r6, lr}
006b0bb0  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
006b0bb4  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
006b0bb8  00 40 a0 e1                                      mov r4, r0
006b0bbc  05 50 8f e0                                      add r5, pc, r5
006b0bc0  68 01 90 e5                                      ldr r0, [r0, #0x168]
006b0bc4  03 30 95 e7                                      ldr r3, [r5, r3]
006b0bc8  00 00 50 e3                                      cmp r0, #0
006b0bcc  41 2f 83 e2                                      add r2, r3, #0x104
006b0bd0  10 10 83 e2                                      add r1, r3, #0x10
006b0bd4  e4 30 83 e2                                      add r3, r3, #0xe4
006b0bd8  00 10 84 e5                                      str r1, [r4]
006b0bdc  d0 31 84 e5                                      str r3, [r4, #0x1d0]
006b0be0  d4 21 84 e5                                      str r2, [r4, #0x1d4]
006b0be4  00 00 00 0a                                      beq #0x6b0bec
006b0be8  65 b2 f1 eb                                      bl #0x31d584
006b0bec  70 01 94 e5                                      ldr r0, [r4, #0x170]
006b0bf0  00 00 50 e3                                      cmp r0, #0
006b0bf4  00 00 00 0a                                      beq #0x6b0bfc
006b0bf8  61 b2 f1 eb                                      bl #0x31d584
006b0bfc  a4 01 94 e5                                      ldr r0, [r4, #0x1a4]
006b0c00  00 00 50 e3                                      cmp r0, #0
006b0c04  00 00 00 0a                                      beq #0x6b0c0c
006b0c08  10 7e f1 eb                                      bl #0x310450
006b0c0c  66 0f 84 e2                                      add r0, r4, #0x198
006b0c10  bc 7f fa eb                                      bl #0x550b08
006b0c14  40 30 9f e5                                      ldr r3, [pc, #0x40]
006b0c18  04 00 a0 e1                                      mov r0, r4
006b0c1c  03 10 95 e7                                      ldr r1, [r5, r3]
006b0c20  04 30 91 e5                                      ldr r3, [r1, #4]
006b0c24  14 c0 91 e5                                      ldr ip, [r1, #0x14]
006b0c28  18 20 91 e5                                      ldr r2, [r1, #0x18]
006b0c2c  00 30 84 e5                                      str r3, [r4]
006b0c30  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006b0c34  08 10 81 e2                                      add r1, r1, #8
006b0c38  03 c0 84 e7                                      str ip, [r4, r3]
006b0c3c  00 30 94 e5                                      ldr r3, [r4]
006b0c40  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006b0c44  03 20 84 e7                                      str r2, [r4, r3]
006b0c48  f4 20 fa eb                                      bl #0x539020
006b0c4c  04 00 a0 e1                                      mov r0, r4
006b0c50  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006b0c54  d4 3e 2e 00 f4 46 00 00 ac 36 00 00              .byte 0xd4, 0x3e, 0x2e, 0x00, 0xf4, 0x46, 0x00, 0x00, 0xac, 0x36, 0x00, 0x00

; FUNCTION 0x006b0c60, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBoxD0Ev
; demangled: glitch::gui::CGUIEditBox::~CGUIEditBox()
; decoder-mode: arm
006b0c60  10 40 2d e9                                      push {r4, lr}
006b0c64  00 40 a0 e1                                      mov r4, r0
006b0c68  cf ff ff eb                                      bl #0x6b0bac
006b0c6c  04 00 a0 e1                                      mov r0, r4
006b0c70  8e 75 f1 eb                                      bl #0x30e2b0
006b0c74  04 00 a0 e1                                      mov r0, r4
006b0c78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006b0c7c, declared_size=164, range_size=164, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBoxD2Ev
; demangled: glitch::gui::CGUIEditBox::~CGUIEditBox()
; decoder-mode: arm
006b0c7c  70 40 2d e9                                      push {r4, r5, r6, lr}
006b0c80  00 30 91 e5                                      ldr r3, [r1]
006b0c84  00 40 a0 e1                                      mov r4, r0
006b0c88  01 50 a0 e1                                      mov r5, r1
006b0c8c  00 30 80 e5                                      str r3, [r0]
006b0c90  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006b0c94  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
006b0c98  03 20 80 e7                                      str r2, [r0, r3]
006b0c9c  00 30 90 e5                                      ldr r3, [r0]
006b0ca0  20 20 91 e5                                      ldr r2, [r1, #0x20]
006b0ca4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006b0ca8  03 20 80 e7                                      str r2, [r0, r3]
006b0cac  68 01 90 e5                                      ldr r0, [r0, #0x168]
006b0cb0  00 00 50 e3                                      cmp r0, #0
006b0cb4  00 00 00 0a                                      beq #0x6b0cbc
006b0cb8  31 b2 f1 eb                                      bl #0x31d584
006b0cbc  70 01 94 e5                                      ldr r0, [r4, #0x170]
006b0cc0  00 00 50 e3                                      cmp r0, #0
006b0cc4  00 00 00 0a                                      beq #0x6b0ccc
006b0cc8  2d b2 f1 eb                                      bl #0x31d584
006b0ccc  a4 01 94 e5                                      ldr r0, [r4, #0x1a4]
006b0cd0  00 00 50 e3                                      cmp r0, #0
006b0cd4  00 00 00 0a                                      beq #0x6b0cdc
006b0cd8  dc 7d f1 eb                                      bl #0x310450
006b0cdc  66 0f 84 e2                                      add r0, r4, #0x198
006b0ce0  88 7f fa eb                                      bl #0x550b08
006b0ce4  04 30 95 e5                                      ldr r3, [r5, #4]
006b0ce8  04 50 85 e2                                      add r5, r5, #4
006b0cec  04 10 85 e2                                      add r1, r5, #4
006b0cf0  00 30 84 e5                                      str r3, [r4]
006b0cf4  10 20 95 e5                                      ldr r2, [r5, #0x10]
006b0cf8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006b0cfc  04 00 a0 e1                                      mov r0, r4
006b0d00  03 20 84 e7                                      str r2, [r4, r3]
006b0d04  00 30 94 e5                                      ldr r3, [r4]
006b0d08  14 20 95 e5                                      ldr r2, [r5, #0x14]
006b0d0c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006b0d10  03 20 84 e7                                      str r2, [r4, r3]
006b0d14  c1 20 fa eb                                      bl #0x539020
006b0d18  04 00 a0 e1                                      mov r0, r4
006b0d1c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006b0d9c, declared_size=496, range_size=496, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZNK6glitch3gui11CGUIEditBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIEditBox::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006b0d9c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006b0da0  01 40 a0 e1                                      mov r4, r1
006b0da4  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
006b0da8  00 50 a0 e1                                      mov r5, r0
006b0dac  5c d0 4d e2                                      sub sp, sp, #0x5c
006b0db0  02 a0 a0 e1                                      mov sl, r2
006b0db4  01 10 8f e0                                      add r1, pc, r1
006b0db8  04 00 a0 e1                                      mov r0, r4
006b0dbc  5a 21 d5 e5                                      ldrb r2, [r5, #0x15a]
006b0dc0  00 30 a0 e3                                      mov r3, #0
006b0dc4  00 c0 94 e5                                      ldr ip, [r4]
006b0dc8  0f e0 a0 e1                                      mov lr, pc
006b0dcc  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006b0dd0  88 11 9f e5                                      ldr r1, [pc, #0x188]
006b0dd4  04 00 a0 e1                                      mov r0, r4
006b0dd8  64 21 95 e5                                      ldr r2, [r5, #0x164]
006b0ddc  01 10 8f e0                                      add r1, pc, r1
006b0de0  00 30 a0 e3                                      mov r3, #0
006b0de4  00 c0 94 e5                                      ldr ip, [r4]
006b0de8  0f e0 a0 e1                                      mov lr, pc
006b0dec  18 f1 9c e5                                      ldr pc, [ip, #0x118]
006b0df0  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
006b0df4  04 00 a0 e1                                      mov r0, r4
006b0df8  84 21 95 e5                                      ldr r2, [r5, #0x184]
006b0dfc  01 10 8f e0                                      add r1, pc, r1
006b0e00  00 30 a0 e3                                      mov r3, #0
006b0e04  00 c0 94 e5                                      ldr ip, [r4]
006b0e08  0f e0 a0 e1                                      mov lr, pc
006b0e0c  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006b0e10  50 11 9f e5                                      ldr r1, [pc, #0x150]
006b0e14  04 00 a0 e1                                      mov r0, r4
006b0e18  88 21 d5 e5                                      ldrb r2, [r5, #0x188]
006b0e1c  01 10 8f e0                                      add r1, pc, r1
006b0e20  00 30 a0 e3                                      mov r3, #0
006b0e24  00 c0 94 e5                                      ldr ip, [r4]
006b0e28  0f e0 a0 e1                                      mov lr, pc
006b0e2c  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006b0e30  34 11 9f e5                                      ldr r1, [pc, #0x134]
006b0e34  04 00 a0 e1                                      mov r0, r4
006b0e38  89 21 d5 e5                                      ldrb r2, [r5, #0x189]
006b0e3c  01 10 8f e0                                      add r1, pc, r1
006b0e40  00 30 a0 e3                                      mov r3, #0
006b0e44  00 c0 94 e5                                      ldr ip, [r4]
006b0e48  0f e0 a0 e1                                      mov lr, pc
006b0e4c  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006b0e50  18 11 9f e5                                      ldr r1, [pc, #0x118]
006b0e54  04 00 a0 e1                                      mov r0, r4
006b0e58  8a 21 d5 e5                                      ldrb r2, [r5, #0x18a]
006b0e5c  01 10 8f e0                                      add r1, pc, r1
006b0e60  00 30 a0 e3                                      mov r3, #0
006b0e64  00 c0 94 e5                                      ldr ip, [r4]
006b0e68  0f e0 a0 e1                                      mov lr, pc
006b0e6c  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006b0e70  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
006b0e74  00 30 a0 e3                                      mov r3, #0
006b0e78  00 c0 94 e5                                      ldr ip, [r4]
006b0e7c  04 00 a0 e1                                      mov r0, r4
006b0e80  01 10 8f e0                                      add r1, pc, r1
006b0e84  8b 21 d5 e5                                      ldrb r2, [r5, #0x18b]
006b0e88  0f e0 a0 e1                                      mov lr, pc
006b0e8c  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006b0e90  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
006b0e94  0c 80 8d e2                                      add r8, sp, #0xc
006b0e98  54 20 8d e2                                      add r2, sp, #0x54
006b0e9c  01 10 8f e0                                      add r1, pc, r1
006b0ea0  08 00 a0 e1                                      mov r0, r8
006b0ea4  14 d4 f1 eb                                      bl #0x325efc
006b0ea8  8c 21 95 e5                                      ldr r2, [r5, #0x18c]
006b0eac  50 30 9d e5                                      ldr r3, [sp, #0x50]
006b0eb0  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
006b0eb4  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
006b0eb8  00 20 83 e5                                      str r2, [r3]
006b0ebc  04 00 a0 e1                                      mov r0, r4
006b0ec0  01 10 8f e0                                      add r1, pc, r1
006b0ec4  50 20 9d e5                                      ldr r2, [sp, #0x50]
006b0ec8  00 30 a0 e3                                      mov r3, #0
006b0ecc  00 c0 94 e5                                      ldr ip, [r4]
006b0ed0  0f e0 a0 e1                                      mov lr, pc
006b0ed4  94 f0 9c e5                                      ldr pc, [ip, #0x94]
006b0ed8  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
006b0edc  00 60 a0 e3                                      mov r6, #0
006b0ee0  07 70 8f e0                                      add r7, pc, r7
006b0ee4  90 21 95 e5                                      ldr r2, [r5, #0x190]
006b0ee8  5c 70 87 e2                                      add r7, r7, #0x5c
006b0eec  00 60 8d e5                                      str r6, [sp]
006b0ef0  01 10 8f e0                                      add r1, pc, r1
006b0ef4  04 00 a0 e1                                      mov r0, r4
006b0ef8  07 30 a0 e1                                      mov r3, r7
006b0efc  00 c0 94 e5                                      ldr ip, [r4]
006b0f00  0f e0 a0 e1                                      mov lr, pc
006b0f04  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
006b0f08  78 10 9f e5                                      ldr r1, [pc, #0x78]
006b0f0c  94 21 95 e5                                      ldr r2, [r5, #0x194]
006b0f10  00 60 8d e5                                      str r6, [sp]
006b0f14  07 30 a0 e1                                      mov r3, r7
006b0f18  01 10 8f e0                                      add r1, pc, r1
006b0f1c  00 c0 94 e5                                      ldr ip, [r4]
006b0f20  04 00 a0 e1                                      mov r0, r4
006b0f24  0f e0 a0 e1                                      mov lr, pc
006b0f28  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
006b0f2c  05 00 a0 e1                                      mov r0, r5
006b0f30  04 10 a0 e1                                      mov r1, r4
006b0f34  0a 20 a0 e1                                      mov r2, sl
006b0f38  5f 10 fa eb                                      bl #0x5350bc
006b0f3c  50 00 9d e5                                      ldr r0, [sp, #0x50]
006b0f40  08 00 50 e1                                      cmp r0, r8
006b0f44  02 00 00 0a                                      beq #0x6b0f54
006b0f48  06 00 50 e1                                      cmp r0, r6
006b0f4c  00 00 00 0a                                      beq #0x6b0f54
006b0f50  3e 7d f1 eb                                      bl #0x310450
006b0f54  5c d0 8d e2                                      add sp, sp, #0x5c
006b0f58  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
006b0f5c  dc dc 22 00 ec dc 22 00 dc a3 23 00 8c dc 22 00  .byte 0xdc, 0xdc, 0x22, 0x00, 0xec, 0xdc, 0x22, 0x00, 0xdc, 0xa3, 0x23, 0x00, 0x8c, 0xdc, 0x22, 0x00
006b0f6c  ac a3 23 00 a4 d6 22 00 88 a3 23 00 cc d5 22 00  .byte 0xac, 0xa3, 0x23, 0x00, 0xa4, 0xd6, 0x22, 0x00, 0x88, 0xa3, 0x23, 0x00, 0xcc, 0xd5, 0x22, 0x00
006b0f7c  38 a3 23 00 4c 6c 2a 00 e8 db 22 00 d0 db 22 00  .byte 0x38, 0xa3, 0x23, 0x00, 0x4c, 0x6c, 0x2a, 0x00, 0xe8, 0xdb, 0x22, 0x00, 0xd0, 0xdb, 0x22, 0x00

; FUNCTION 0x006b0f8c, declared_size=1596, range_size=1596, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox9breakTextEv
; demangled: glitch::gui::CGUIEditBox::breakText()
; decoder-mode: arm
006b0f8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b0f90  50 31 90 e5                                      ldr r3, [r0, #0x150]
006b0f94  00 40 a0 e1                                      mov r4, r0
006b0f98  51 df 4d e2                                      sub sp, sp, #0x144
006b0f9c  03 00 a0 e1                                      mov r0, r3
006b0fa0  00 30 93 e5                                      ldr r3, [r3]
006b0fa4  0f e0 a0 e1                                      mov lr, pc
006b0fa8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006b0fac  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
006b0fb0  00 50 a0 e1                                      mov r5, r0
006b0fb4  00 00 53 e3                                      cmp r3, #0
006b0fb8  02 00 00 1a                                      bne #0x6b0fc8
006b0fbc  89 31 d4 e5                                      ldrb r3, [r4, #0x189]
006b0fc0  00 00 53 e3                                      cmp r3, #0
006b0fc4  d8 00 00 0a                                      beq #0x6b132c
006b0fc8  00 00 55 e3                                      cmp r5, #0
006b0fcc  d6 00 00 0a                                      beq #0x6b132c
006b0fd0  98 11 94 e5                                      ldr r1, [r4, #0x198]
006b0fd4  9c 21 94 e5                                      ldr r2, [r4, #0x19c]
006b0fd8  66 0f 84 e2                                      add r0, r4, #0x198
006b0fdc  24 00 8d e5                                      str r0, [sp, #0x24]
006b0fe0  02 00 51 e1                                      cmp r1, r2
006b0fe4  01 00 00 0a                                      beq #0x6b0ff0
006b0fe8  4f 3f 8d e2                                      add r3, sp, #0x13c
006b0fec  db 7e fa eb                                      bl #0x550b60
006b0ff0  a8 11 94 e5                                      ldr r1, [r4, #0x1a8]
006b0ff4  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
006b0ff8  00 20 a0 e3                                      mov r2, #0
006b0ffc  2c 21 8d e5                                      str r2, [sp, #0x12c]
006b1000  01 20 63 e0                                      rsb r2, r3, r1
006b1004  69 cf 84 e2                                      add ip, r4, #0x1a4
006b1008  42 21 b0 e1                                      asrs r2, r2, #2
006b100c  30 c0 8d e5                                      str ip, [sp, #0x30]
006b1010  3b 01 00 0a                                      beq #0x6b1504
006b1014  03 00 51 e1                                      cmp r1, r3
006b1018  a8 31 84 15                                      strne r3, [r4, #0x1a8]
006b101c  68 e1 94 e5                                      ldr lr, [r4, #0x168]
006b1020  00 00 5e e3                                      cmp lr, #0
006b1024  18 e0 8d e5                                      str lr, [sp, #0x18]
006b1028  50 01 00 0a                                      beq #0x6b1570
006b102c  18 00 9d e5                                      ldr r0, [sp, #0x18]
006b1030  d0 a0 8d e2                                      add sl, sp, #0xd0
006b1034  10 10 a0 e3                                      mov r1, #0x10
006b1038  6c 01 84 e5                                      str r0, [r4, #0x16c]
006b103c  0a 00 a0 e1                                      mov r0, sl
006b1040  10 a1 8d e5                                      str sl, [sp, #0x110]
006b1044  14 a1 8d e5                                      str sl, [sp, #0x114]
006b1048  34 be f1 eb                                      bl #0x320920
006b104c  10 31 9d e5                                      ldr r3, [sp, #0x110]
006b1050  88 20 8d e2                                      add r2, sp, #0x88
006b1054  00 80 a0 e3                                      mov r8, #0
006b1058  1c 20 8d e5                                      str r2, [sp, #0x1c]
006b105c  00 80 83 e5                                      str r8, [r3]
006b1060  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006b1064  10 10 a0 e3                                      mov r1, #0x10
006b1068  c8 20 8d e5                                      str r2, [sp, #0xc8]
006b106c  cc 20 8d e5                                      str r2, [sp, #0xcc]
006b1070  2a be f1 eb                                      bl #0x320920
006b1074  40 30 8d e2                                      add r3, sp, #0x40
006b1078  10 30 8d e5                                      str r3, [sp, #0x10]
006b107c  03 00 a0 e1                                      mov r0, r3
006b1080  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
006b1084  10 10 a0 e3                                      mov r1, #0x10
006b1088  00 80 83 e5                                      str r8, [r3]
006b108c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006b1090  80 c0 8d e5                                      str ip, [sp, #0x80]
006b1094  84 c0 8d e5                                      str ip, [sp, #0x84]
006b1098  20 be f1 eb                                      bl #0x320920
006b109c  80 30 9d e5                                      ldr r3, [sp, #0x80]
006b10a0  00 80 83 e5                                      str r8, [r3]
006b10a4  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
006b10a8  e0 00 94 e5                                      ldr r0, [r4, #0xe0]
006b10ac  30 10 94 e5                                      ldr r1, [r4, #0x30]
006b10b0  28 20 94 e5                                      ldr r2, [r4, #0x28]
006b10b4  00 00 63 e0                                      rsb r0, r3, r0
006b10b8  40 01 a0 e1                                      asr r0, r0, #2
006b10bc  06 10 41 e2                                      sub r1, r1, #6
006b10c0  01 20 62 e0                                      rsb r2, r2, r1
006b10c4  08 00 50 e1                                      cmp r0, r8
006b10c8  0c 00 8d e5                                      str r0, [sp, #0xc]
006b10cc  2c 20 8d e5                                      str r2, [sp, #0x2c]
006b10d0  28 81 8d e5                                      str r8, [sp, #0x128]
006b10d4  65 00 00 da                                      ble #0x6b1270
006b10d8  dc 24 9f e5                                      ldr r2, [pc, #0x4dc]
006b10dc  dc 94 9f e5                                      ldr sb, [pc, #0x4dc]
006b10e0  a0 e0 84 e2                                      add lr, r4, #0xa0
006b10e4  02 20 8f e0                                      add r2, pc, r2
006b10e8  3c 20 8d e5                                      str r2, [sp, #0x3c]
006b10ec  d0 24 9f e5                                      ldr r2, [pc, #0x4d0]
006b10f0  4a 0f 8d e2                                      add r0, sp, #0x128
006b10f4  01 60 a0 e3                                      mov r6, #1
006b10f8  02 20 8f e0                                      add r2, pc, r2
006b10fc  09 90 8f e0                                      add sb, pc, sb
006b1100  14 20 8d e5                                      str r2, [sp, #0x14]
006b1104  34 e0 8d e5                                      str lr, [sp, #0x34]
006b1108  20 80 8d e5                                      str r8, [sp, #0x20]
006b110c  38 00 8d e5                                      str r0, [sp, #0x38]
006b1110  0a b0 a0 e1                                      mov fp, sl
006b1114  0c 00 00 ea                                      b #0x6b114c
006b1118  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006b111c  01 30 4c e2                                      sub r3, ip, #1
006b1120  08 00 53 e1                                      cmp r3, r8
006b1124  18 00 00 0a                                      beq #0x6b118c
006b1128  05 10 a0 e1                                      mov r1, r5
006b112c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006b1130  51 7c fa eb                                      bl #0x55027c
006b1134  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006b1138  01 80 88 e2                                      add r8, r8, #1
006b113c  01 60 86 e2                                      add r6, r6, #1
006b1140  0a 00 52 e1                                      cmp r2, sl
006b1144  48 00 00 da                                      ble #0x6b126c
006b1148  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
006b114c  08 51 93 e7                                      ldr r5, [r3, r8, lsl #2]
006b1150  0d 00 55 e3                                      cmp r5, #0xd
006b1154  76 00 00 0a                                      beq #0x6b1334
006b1158  0a 00 55 e3                                      cmp r5, #0xa
006b115c  c3 00 00 0a                                      beq #0x6b1470
006b1160  00 00 55 e3                                      cmp r5, #0
006b1164  20 00 55 13                                      cmpne r5, #0x20
006b1168  00 30 a0 13                                      movne r3, #0
006b116c  01 30 a0 03                                      moveq r3, #1
006b1170  06 a0 a0 e1                                      mov sl, r6
006b1174  00 70 a0 e3                                      mov r7, #0
006b1178  89 21 d4 e5                                      ldrb r2, [r4, #0x189]
006b117c  00 00 52 e3                                      cmp r2, #0
006b1180  00 70 a0 03                                      moveq r7, #0
006b1184  00 00 53 e3                                      cmp r3, #0
006b1188  e2 ff ff 0a                                      beq #0x6b1118
006b118c  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
006b1190  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
006b1194  02 30 63 e0                                      rsb r3, r3, r2
006b1198  23 31 b0 e1                                      lsrs r3, r3, #2
006b119c  81 00 00 1a                                      bne #0x6b13a8
006b11a0  05 10 a0 e1                                      mov r1, r5
006b11a4  10 00 9d e5                                      ldr r0, [sp, #0x10]
006b11a8  33 7c fa eb                                      bl #0x55027c
006b11ac  00 00 57 e3                                      cmp r7, #0
006b11b0  df ff ff 0a                                      beq #0x6b1134
006b11b4  84 10 9d e5                                      ldr r1, [sp, #0x84]
006b11b8  80 20 9d e5                                      ldr r2, [sp, #0x80]
006b11bc  0b 00 a0 e1                                      mov r0, fp
006b11c0  a0 be f1 eb                                      bl #0x320c48
006b11c4  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
006b11c8  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
006b11cc  0b 00 a0 e1                                      mov r0, fp
006b11d0  9c be f1 eb                                      bl #0x320c48
006b11d4  0b 10 a0 e1                                      mov r1, fp
006b11d8  24 00 9d e5                                      ldr r0, [sp, #0x24]
006b11dc  d9 7f fa eb                                      bl #0x551148
006b11e0  a8 11 94 e5                                      ldr r1, [r4, #0x1a8]
006b11e4  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
006b11e8  03 00 51 e1                                      cmp r1, r3
006b11ec  cf 00 00 0a                                      beq #0x6b1530
006b11f0  28 31 9d e5                                      ldr r3, [sp, #0x128]
006b11f4  00 30 81 e5                                      str r3, [r1]
006b11f8  a8 31 94 e5                                      ldr r3, [r4, #0x1a8]
006b11fc  04 30 83 e2                                      add r3, r3, #4
006b1200  a8 31 84 e5                                      str r3, [r4, #0x1a8]
006b1204  09 00 a0 e1                                      mov r0, sb
006b1208  28 61 8d e5                                      str r6, [sp, #0x128]
006b120c  9d 76 f1 eb                                      bl #0x30ec88
006b1210  09 10 a0 e1                                      mov r1, sb
006b1214  00 21 89 e0                                      add r2, sb, r0, lsl #2
006b1218  0b 00 a0 e1                                      mov r0, fp
006b121c  df c7 f1 eb                                      bl #0x3231a0
006b1220  09 00 a0 e1                                      mov r0, sb
006b1224  97 76 f1 eb                                      bl #0x30ec88
006b1228  09 10 a0 e1                                      mov r1, sb
006b122c  00 21 89 e0                                      add r2, sb, r0, lsl #2
006b1230  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006b1234  d9 c7 f1 eb                                      bl #0x3231a0
006b1238  09 00 a0 e1                                      mov r0, sb
006b123c  91 76 f1 eb                                      bl #0x30ec88
006b1240  09 10 a0 e1                                      mov r1, sb
006b1244  00 21 89 e0                                      add r2, sb, r0, lsl #2
006b1248  10 00 9d e5                                      ldr r0, [sp, #0x10]
006b124c  d3 c7 f1 eb                                      bl #0x3231a0
006b1250  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006b1254  00 00 a0 e3                                      mov r0, #0
006b1258  20 00 8d e5                                      str r0, [sp, #0x20]
006b125c  0a 00 52 e1                                      cmp r2, sl
006b1260  01 80 88 e2                                      add r8, r8, #1
006b1264  01 60 86 e2                                      add r6, r6, #1
006b1268  b6 ff ff ca                                      bgt #0x6b1148
006b126c  0b a0 a0 e1                                      mov sl, fp
006b1270  84 10 9d e5                                      ldr r1, [sp, #0x84]
006b1274  80 20 9d e5                                      ldr r2, [sp, #0x80]
006b1278  0a 00 a0 e1                                      mov r0, sl
006b127c  71 be f1 eb                                      bl #0x320c48
006b1280  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
006b1284  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
006b1288  0a 00 a0 e1                                      mov r0, sl
006b128c  6d be f1 eb                                      bl #0x320c48
006b1290  0a 10 a0 e1                                      mov r1, sl
006b1294  24 00 9d e5                                      ldr r0, [sp, #0x24]
006b1298  aa 7f fa eb                                      bl #0x551148
006b129c  a8 11 94 e5                                      ldr r1, [r4, #0x1a8]
006b12a0  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
006b12a4  03 00 51 e1                                      cmp r1, r3
006b12a8  a8 00 00 0a                                      beq #0x6b1550
006b12ac  28 31 9d e5                                      ldr r3, [sp, #0x128]
006b12b0  00 30 81 e5                                      str r3, [r1]
006b12b4  a8 31 94 e5                                      ldr r3, [r4, #0x1a8]
006b12b8  04 30 83 e2                                      add r3, r3, #4
006b12bc  a8 31 84 e5                                      str r3, [r4, #0x1a8]
006b12c0  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
006b12c4  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
006b12c8  78 21 94 e5                                      ldr r2, [r4, #0x178]
006b12cc  01 30 63 e0                                      rsb r3, r3, r1
006b12d0  43 31 a0 e1                                      asr r3, r3, #2
006b12d4  03 00 52 e1                                      cmp r2, r3
006b12d8  78 31 84 85                                      strhi r3, [r4, #0x178]
006b12dc  84 00 9d e5                                      ldr r0, [sp, #0x84]
006b12e0  10 30 9d e5                                      ldr r3, [sp, #0x10]
006b12e4  03 00 50 e1                                      cmp r0, r3
006b12e8  02 00 00 0a                                      beq #0x6b12f8
006b12ec  00 00 50 e3                                      cmp r0, #0
006b12f0  00 00 00 0a                                      beq #0x6b12f8
006b12f4  55 7c f1 eb                                      bl #0x310450
006b12f8  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
006b12fc  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006b1300  0c 00 50 e1                                      cmp r0, ip
006b1304  02 00 00 0a                                      beq #0x6b1314
006b1308  00 00 50 e3                                      cmp r0, #0
006b130c  00 00 00 0a                                      beq #0x6b1314
006b1310  4e 7c f1 eb                                      bl #0x310450
006b1314  14 01 9d e5                                      ldr r0, [sp, #0x114]
006b1318  0a 00 50 e1                                      cmp r0, sl
006b131c  02 00 00 0a                                      beq #0x6b132c
006b1320  00 00 50 e3                                      cmp r0, #0
006b1324  00 00 00 0a                                      beq #0x6b132c
006b1328  48 7c f1 eb                                      bl #0x310450
006b132c  51 df 8d e2                                      add sp, sp, #0x144
006b1330  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b1334  06 21 93 e7                                      ldr r2, [r3, r6, lsl #2]
006b1338  06 51 a0 e1                                      lsl r5, r6, #2
006b133c  06 a0 a0 e1                                      mov sl, r6
006b1340  0a 00 52 e3                                      cmp r2, #0xa
006b1344  01 30 a0 13                                      movne r3, #1
006b1348  03 70 a0 11                                      movne r7, r3
006b134c  20 50 a0 13                                      movne r5, #0x20
006b1350  88 ff ff 1a                                      bne #0x6b1178
006b1354  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
006b1358  03 10 a0 e1                                      mov r1, r3
006b135c  02 30 63 e0                                      rsb r3, r3, r2
006b1360  43 31 a0 e1                                      asr r3, r3, #2
006b1364  03 00 56 e1                                      cmp r6, r3
006b1368  69 00 00 8a                                      bhi #0x6b1514
006b136c  03 30 66 e0                                      rsb r3, r6, r3
006b1370  01 00 53 e3                                      cmp r3, #1
006b1374  03 20 86 90                                      addls r2, r6, r3
006b1378  01 20 86 82                                      addhi r2, r6, #1
006b137c  02 21 81 e0                                      add r2, r1, r2, lsl #2
006b1380  34 00 9d e5                                      ldr r0, [sp, #0x34]
006b1384  05 10 81 e0                                      add r1, r1, r5
006b1388  70 c7 f1 eb                                      bl #0x323150
006b138c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006b1390  01 30 a0 e3                                      mov r3, #1
006b1394  03 70 a0 e1                                      mov r7, r3
006b1398  01 20 42 e2                                      sub r2, r2, #1
006b139c  0c 20 8d e5                                      str r2, [sp, #0xc]
006b13a0  20 50 a0 e3                                      mov r5, #0x20
006b13a4  73 ff ff ea                                      b #0x6b1178
006b13a8  18 10 9d e5                                      ldr r1, [sp, #0x18]
006b13ac  12 0e 8d e2                                      add r0, sp, #0x120
006b13b0  84 20 9d e5                                      ldr r2, [sp, #0x84]
006b13b4  00 30 91 e5                                      ldr r3, [r1]
006b13b8  0f e0 a0 e1                                      mov lr, pc
006b13bc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b13c0  18 e0 9d e5                                      ldr lr, [sp, #0x18]
006b13c4  20 c1 9d e5                                      ldr ip, [sp, #0x120]
006b13c8  46 0f 8d e2                                      add r0, sp, #0x118
006b13cc  00 30 9e e5                                      ldr r3, [lr]
006b13d0  0e 10 a0 e1                                      mov r1, lr
006b13d4  28 c0 8d e5                                      str ip, [sp, #0x28]
006b13d8  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
006b13dc  0f e0 a0 e1                                      mov lr, pc
006b13e0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b13e4  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
006b13e8  18 c1 9d e5                                      ldr ip, [sp, #0x118]
006b13ec  00 00 53 e3                                      cmp r3, #0
006b13f0  23 00 00 0a                                      beq #0x6b1484
006b13f4  28 e0 9d e5                                      ldr lr, [sp, #0x28]
006b13f8  20 00 9d e5                                      ldr r0, [sp, #0x20]
006b13fc  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006b1400  0e 30 8c e0                                      add r3, ip, lr
006b1404  03 00 80 e0                                      add r0, r0, r3
006b1408  00 00 52 e1                                      cmp r2, r0
006b140c  20 00 8d e5                                      str r0, [sp, #0x20]
006b1410  21 00 00 ba                                      blt #0x6b149c
006b1414  84 10 9d e5                                      ldr r1, [sp, #0x84]
006b1418  80 20 9d e5                                      ldr r2, [sp, #0x80]
006b141c  0b 00 a0 e1                                      mov r0, fp
006b1420  08 be f1 eb                                      bl #0x320c48
006b1424  0b 00 a0 e1                                      mov r0, fp
006b1428  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
006b142c  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
006b1430  04 be f1 eb                                      bl #0x320c48
006b1434  14 00 9d e5                                      ldr r0, [sp, #0x14]
006b1438  12 76 f1 eb                                      bl #0x30ec88
006b143c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006b1440  00 21 83 e0                                      add r2, r3, r0, lsl #2
006b1444  03 10 a0 e1                                      mov r1, r3
006b1448  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006b144c  53 c7 f1 eb                                      bl #0x3231a0
006b1450  14 00 9d e5                                      ldr r0, [sp, #0x14]
006b1454  0b 76 f1 eb                                      bl #0x30ec88
006b1458  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006b145c  00 21 8c e0                                      add r2, ip, r0, lsl #2
006b1460  0c 10 a0 e1                                      mov r1, ip
006b1464  10 00 9d e5                                      ldr r0, [sp, #0x10]
006b1468  4c c7 f1 eb                                      bl #0x3231a0
006b146c  4b ff ff ea                                      b #0x6b11a0
006b1470  01 30 a0 e3                                      mov r3, #1
006b1474  06 a0 a0 e1                                      mov sl, r6
006b1478  03 70 a0 e1                                      mov r7, r3
006b147c  20 50 a0 e3                                      mov r5, #0x20
006b1480  3c ff ff ea                                      b #0x6b1178
006b1484  28 00 9d e5                                      ldr r0, [sp, #0x28]
006b1488  20 20 9d e5                                      ldr r2, [sp, #0x20]
006b148c  00 c0 8c e0                                      add ip, ip, r0
006b1490  0c 20 82 e0                                      add r2, r2, ip
006b1494  20 20 8d e5                                      str r2, [sp, #0x20]
006b1498  dd ff ff ea                                      b #0x6b1414
006b149c  0b 10 a0 e1                                      mov r1, fp
006b14a0  24 00 9d e5                                      ldr r0, [sp, #0x24]
006b14a4  08 c0 8d e5                                      str ip, [sp, #8]
006b14a8  26 7f fa eb                                      bl #0x551148
006b14ac  a8 11 94 e5                                      ldr r1, [r4, #0x1a8]
006b14b0  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
006b14b4  08 c0 9d e5                                      ldr ip, [sp, #8]
006b14b8  03 00 51 e1                                      cmp r1, r3
006b14bc  34 00 00 0a                                      beq #0x6b1594
006b14c0  28 31 9d e5                                      ldr r3, [sp, #0x128]
006b14c4  00 30 81 e5                                      str r3, [r1]
006b14c8  a8 31 94 e5                                      ldr r3, [r4, #0x1a8]
006b14cc  04 30 83 e2                                      add r3, r3, #4
006b14d0  a8 31 84 e5                                      str r3, [r4, #0x1a8]
006b14d4  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
006b14d8  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
006b14dc  0b 00 a0 e1                                      mov r0, fp
006b14e0  03 20 a0 e1                                      mov r2, r3
006b14e4  03 30 61 e0                                      rsb r3, r1, r3
006b14e8  43 31 48 e0                                      sub r3, r8, r3, asr #2
006b14ec  08 c0 8d e5                                      str ip, [sp, #8]
006b14f0  28 31 8d e5                                      str r3, [sp, #0x128]
006b14f4  29 c7 f1 eb                                      bl #0x3231a0
006b14f8  08 c0 9d e5                                      ldr ip, [sp, #8]
006b14fc  20 c0 8d e5                                      str ip, [sp, #0x20]
006b1500  cb ff ff ea                                      b #0x6b1434
006b1504  30 00 9d e5                                      ldr r0, [sp, #0x30]
006b1508  4b 3f 8d e2                                      add r3, sp, #0x12c
006b150c  e5 bb fe eb                                      bl #0x6604a8
006b1510  c1 fe ff ea                                      b #0x6b101c
006b1514  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006b1518  64 5e 01 eb                                      bl #0x708eb0
006b151c  e4 10 94 e5                                      ldr r1, [r4, #0xe4]
006b1520  e0 30 94 e5                                      ldr r3, [r4, #0xe0]
006b1524  03 30 61 e0                                      rsb r3, r1, r3
006b1528  43 31 a0 e1                                      asr r3, r3, #2
006b152c  8e ff ff ea                                      b #0x6b136c
006b1530  01 e0 a0 e3                                      mov lr, #1
006b1534  30 00 9d e5                                      ldr r0, [sp, #0x30]
006b1538  38 20 9d e5                                      ldr r2, [sp, #0x38]
006b153c  4d 3f 8d e2                                      add r3, sp, #0x134
006b1540  00 e0 8d e5                                      str lr, [sp]
006b1544  04 e0 8d e5                                      str lr, [sp, #4]
006b1548  d7 fa ff eb                                      bl #0x6b00ac
006b154c  2c ff ff ea                                      b #0x6b1204
006b1550  01 c0 a0 e3                                      mov ip, #1
006b1554  30 00 9d e5                                      ldr r0, [sp, #0x30]
006b1558  4a 2f 8d e2                                      add r2, sp, #0x128
006b155c  13 3e 8d e2                                      add r3, sp, #0x130
006b1560  04 c0 8d e5                                      str ip, [sp, #4]
006b1564  00 c0 8d e5                                      str ip, [sp]
006b1568  cf fa ff eb                                      bl #0x6b00ac
006b156c  53 ff ff ea                                      b #0x6b12c0
006b1570  0e 10 a0 e1                                      mov r1, lr
006b1574  05 00 a0 e1                                      mov r0, r5
006b1578  00 30 95 e5                                      ldr r3, [r5]
006b157c  0f e0 a0 e1                                      mov lr, pc
006b1580  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006b1584  00 00 50 e3                                      cmp r0, #0
006b1588  18 00 8d e5                                      str r0, [sp, #0x18]
006b158c  66 ff ff 0a                                      beq #0x6b132c
006b1590  a5 fe ff ea                                      b #0x6b102c
006b1594  01 e0 a0 e3                                      mov lr, #1
006b1598  30 00 9d e5                                      ldr r0, [sp, #0x30]
006b159c  38 20 9d e5                                      ldr r2, [sp, #0x38]
006b15a0  4e 3f 8d e2                                      add r3, sp, #0x138
006b15a4  08 c0 8d e5                                      str ip, [sp, #8]
006b15a8  00 e0 8d e5                                      str lr, [sp]
006b15ac  04 e0 8d e5                                      str lr, [sp, #4]
006b15b0  bd fa ff eb                                      bl #0x6b00ac
006b15b4  08 c0 9d e5                                      ldr ip, [sp, #8]
006b15b8  c5 ff ff ea                                      b #0x6b14d4
; mapping-symbol data/literal pool
006b15bc  74 d3 20 00 14 db 20 00 18 db 20 00              .byte 0x74, 0xd3, 0x20, 0x00, 0x14, 0xdb, 0x20, 0x00, 0x18, 0xdb, 0x20, 0x00

; FUNCTION 0x006b15c8, declared_size=68, range_size=68, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox7setTextEPKw
; demangled: glitch::gui::CGUIEditBox::setText(wchar_t const*)
; decoder-mode: arm
006b15c8  70 40 2d e9                                      push {r4, r5, r6, lr}
006b15cc  00 40 a0 e1                                      mov r4, r0
006b15d0  01 00 a0 e1                                      mov r0, r1
006b15d4  01 50 a0 e1                                      mov r5, r1
006b15d8  aa 75 f1 eb                                      bl #0x30ec88
006b15dc  05 10 a0 e1                                      mov r1, r5
006b15e0  00 21 85 e0                                      add r2, r5, r0, lsl #2
006b15e4  a0 00 84 e2                                      add r0, r4, #0xa0
006b15e8  ec c6 f1 eb                                      bl #0x3231a0
006b15ec  00 30 a0 e3                                      mov r3, #0
006b15f0  04 00 a0 e1                                      mov r0, r4
006b15f4  60 31 84 e5                                      str r3, [r4, #0x160]
006b15f8  78 31 84 e5                                      str r3, [r4, #0x178]
006b15fc  7c 31 84 e5                                      str r3, [r4, #0x17c]
006b1600  5c 31 84 e5                                      str r3, [r4, #0x15c]
006b1604  70 40 bd e8                                      pop {r4, r5, r6, lr}
006b1608  5f fe ff ea                                      b #0x6b0f8c

; FUNCTION 0x006b160c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox22updateAbsolutePositionEv
; demangled: glitch::gui::CGUIEditBox::updateAbsolutePosition()
; decoder-mode: arm
006b160c  10 40 2d e9                                      push {r4, lr}
006b1610  00 40 a0 e1                                      mov r4, r0
006b1614  c1 0c fa eb                                      bl #0x534920
006b1618  04 00 a0 e1                                      mov r0, r4
006b161c  10 40 bd e8                                      pop {r4, lr}
006b1620  59 fe ff ea                                      b #0x6b0f8c

; FUNCTION 0x006b1624, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox11setWordWrapEb
; demangled: glitch::gui::CGUIEditBox::setWordWrap(bool)
; decoder-mode: arm
006b1624  88 11 c0 e5                                      strb r1, [r0, #0x188]
006b1628  57 fe ff ea                                      b #0x6b0f8c

; FUNCTION 0x006b162c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox15setOverrideFontEPNS0_8IGUIFontE
; demangled: glitch::gui::CGUIEditBox::setOverrideFont(glitch::gui::IGUIFont*)
; decoder-mode: arm
006b162c  70 40 2d e9                                      push {r4, r5, r6, lr}
006b1630  00 40 a0 e1                                      mov r4, r0
006b1634  68 01 90 e5                                      ldr r0, [r0, #0x168]
006b1638  01 50 a0 e1                                      mov r5, r1
006b163c  00 00 50 e3                                      cmp r0, #0
006b1640  00 00 00 0a                                      beq #0x6b1648
006b1644  ce af f1 eb                                      bl #0x31d584
006b1648  00 00 55 e3                                      cmp r5, #0
006b164c  68 51 84 e5                                      str r5, [r4, #0x168]
006b1650  04 30 95 15                                      ldrne r3, [r5, #4]
006b1654  04 00 a0 e1                                      mov r0, r4
006b1658  01 30 83 12                                      addne r3, r3, #1
006b165c  04 30 85 15                                      strne r3, [r5, #4]
006b1660  70 40 bd e8                                      pop {r4, r5, r6, lr}
006b1664  48 fe ff ea                                      b #0x6b0f8c

; FUNCTION 0x006b1668, declared_size=500, range_size=500, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox9inputCharEw
; demangled: glitch::gui::CGUIEditBox::inputChar(wchar_t)
; decoder-mode: arm
006b1668  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b166c  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
006b1670  5f df 4d e2                                      sub sp, sp, #0x17c
006b1674  00 40 a0 e1                                      mov r4, r0
006b1678  00 00 53 e3                                      cmp r3, #0
006b167c  01 50 a0 e1                                      mov r5, r1
006b1680  03 00 00 0a                                      beq #0x6b1694
006b1684  00 00 51 e3                                      cmp r1, #0
006b1688  03 00 00 1a                                      bne #0x6b169c
006b168c  04 00 a0 e1                                      mov r0, r4
006b1690  3d fe ff eb                                      bl #0x6b0f8c
006b1694  5f df 8d e2                                      add sp, sp, #0x17c
006b1698  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b169c  e0 10 90 e5                                      ldr r1, [r0, #0xe0]
006b16a0  e4 20 90 e5                                      ldr r2, [r0, #0xe4]
006b16a4  84 31 90 e5                                      ldr r3, [r0, #0x184]
006b16a8  01 20 62 e0                                      rsb r2, r2, r1
006b16ac  42 01 53 e1                                      cmp r3, r2, asr #2
006b16b0  01 00 00 8a                                      bhi #0x6b16bc
006b16b4  00 00 53 e3                                      cmp r3, #0
006b16b8  f3 ff ff 1a                                      bne #0x6b168c
006b16bc  4a 6f 8d e2                                      add r6, sp, #0x128
006b16c0  06 00 a0 e1                                      mov r0, r6
006b16c4  10 10 a0 e3                                      mov r1, #0x10
006b16c8  68 61 8d e5                                      str r6, [sp, #0x168]
006b16cc  6c 61 8d e5                                      str r6, [sp, #0x16c]
006b16d0  92 bc f1 eb                                      bl #0x320920
006b16d4  68 31 9d e5                                      ldr r3, [sp, #0x168]
006b16d8  00 90 a0 e3                                      mov sb, #0
006b16dc  00 90 83 e5                                      str sb, [r3]
006b16e0  5c a1 94 e5                                      ldr sl, [r4, #0x15c]
006b16e4  60 81 94 e5                                      ldr r8, [r4, #0x160]
006b16e8  08 00 5a e1                                      cmp sl, r8
006b16ec  33 00 00 0a                                      beq #0x6b17c0
006b16f0  0a 00 58 e1                                      cmp r8, sl
006b16f4  08 c0 a0 b1                                      movlt ip, r8
006b16f8  0a c0 a0 a1                                      movge ip, sl
006b16fc  a0 b0 84 e2                                      add fp, r4, #0xa0
006b1700  e0 70 8d e2                                      add r7, sp, #0xe0
006b1704  0c 30 a0 e1                                      mov r3, ip
006b1708  09 20 a0 e1                                      mov r2, sb
006b170c  07 00 a0 e1                                      mov r0, r7
006b1710  0b 10 a0 e1                                      mov r1, fp
006b1714  04 c0 8d e5                                      str ip, [sp, #4]
006b1718  94 fa ff eb                                      bl #0x6b0170
006b171c  07 10 a0 e1                                      mov r1, r7
006b1720  06 00 a0 e1                                      mov r0, r6
006b1724  4d fa ff eb                                      bl #0x6b0060
006b1728  07 00 a0 e1                                      mov r0, r7
006b172c  0d 43 fa eb                                      bl #0x542368
006b1730  5e 1f 8d e2                                      add r1, sp, #0x178
006b1734  08 50 21 e5                                      str r5, [r1, #-8]!
006b1738  06 00 a0 e1                                      mov r0, r6
006b173c  74 91 8d e5                                      str sb, [sp, #0x174]
006b1740  4f fa ff eb                                      bl #0x6b0084
006b1744  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
006b1748  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
006b174c  0a 00 58 e1                                      cmp r8, sl
006b1750  08 20 a0 a1                                      movge r2, r8
006b1754  0a 20 a0 b1                                      movlt r2, sl
006b1758  98 50 8d e2                                      add r5, sp, #0x98
006b175c  01 30 63 e0                                      rsb r3, r3, r1
006b1760  43 31 62 e0                                      rsb r3, r2, r3, asr #2
006b1764  0b 10 a0 e1                                      mov r1, fp
006b1768  05 00 a0 e1                                      mov r0, r5
006b176c  7f fa ff eb                                      bl #0x6b0170
006b1770  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
006b1774  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
006b1778  06 00 a0 e1                                      mov r0, r6
006b177c  31 bd f1 eb                                      bl #0x320c48
006b1780  05 00 a0 e1                                      mov r0, r5
006b1784  f7 42 fa eb                                      bl #0x542368
006b1788  0b 00 a0 e1                                      mov r0, fp
006b178c  06 10 a0 e1                                      mov r1, r6
006b1790  32 fa ff eb                                      bl #0x6b0060
006b1794  04 c0 9d e5                                      ldr ip, [sp, #4]
006b1798  01 c0 8c e2                                      add ip, ip, #1
006b179c  78 c1 84 e5                                      str ip, [r4, #0x178]
006b17a0  cf 65 fd eb                                      bl #0x60aee4
006b17a4  00 30 a0 e3                                      mov r3, #0
006b17a8  74 01 84 e5                                      str r0, [r4, #0x174]
006b17ac  60 31 84 e5                                      str r3, [r4, #0x160]
006b17b0  5c 31 84 e5                                      str r3, [r4, #0x15c]
006b17b4  06 00 a0 e1                                      mov r0, r6
006b17b8  ea 42 fa eb                                      bl #0x542368
006b17bc  b2 ff ff ea                                      b #0x6b168c
006b17c0  a0 80 84 e2                                      add r8, r4, #0xa0
006b17c4  50 70 8d e2                                      add r7, sp, #0x50
006b17c8  09 20 a0 e1                                      mov r2, sb
006b17cc  78 31 94 e5                                      ldr r3, [r4, #0x178]
006b17d0  07 00 a0 e1                                      mov r0, r7
006b17d4  08 10 a0 e1                                      mov r1, r8
006b17d8  64 fa ff eb                                      bl #0x6b0170
006b17dc  07 10 a0 e1                                      mov r1, r7
006b17e0  06 00 a0 e1                                      mov r0, r6
006b17e4  1d fa ff eb                                      bl #0x6b0060
006b17e8  07 00 a0 e1                                      mov r0, r7
006b17ec  dd 42 fa eb                                      bl #0x542368
006b17f0  5e 1f 8d e2                                      add r1, sp, #0x178
006b17f4  08 50 21 e5                                      str r5, [r1, #-8]!
006b17f8  06 00 a0 e1                                      mov r0, r6
006b17fc  74 91 8d e5                                      str sb, [sp, #0x174]
006b1800  1f fa ff eb                                      bl #0x6b0084
006b1804  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
006b1808  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
006b180c  78 21 94 e5                                      ldr r2, [r4, #0x178]
006b1810  08 50 8d e2                                      add r5, sp, #8
006b1814  01 30 63 e0                                      rsb r3, r3, r1
006b1818  43 31 62 e0                                      rsb r3, r2, r3, asr #2
006b181c  08 10 a0 e1                                      mov r1, r8
006b1820  05 00 a0 e1                                      mov r0, r5
006b1824  51 fa ff eb                                      bl #0x6b0170
006b1828  48 20 9d e5                                      ldr r2, [sp, #0x48]
006b182c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
006b1830  06 00 a0 e1                                      mov r0, r6
006b1834  03 bd f1 eb                                      bl #0x320c48
006b1838  05 00 a0 e1                                      mov r0, r5
006b183c  c9 42 fa eb                                      bl #0x542368
006b1840  08 00 a0 e1                                      mov r0, r8
006b1844  06 10 a0 e1                                      mov r1, r6
006b1848  04 fa ff eb                                      bl #0x6b0060
006b184c  78 31 94 e5                                      ldr r3, [r4, #0x178]
006b1850  01 30 83 e2                                      add r3, r3, #1
006b1854  78 31 84 e5                                      str r3, [r4, #0x178]
006b1858  d0 ff ff ea                                      b #0x6b17a0

; FUNCTION 0x006b185c, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox6setMaxEj
; demangled: glitch::gui::CGUIEditBox::setMax(unsigned int)
; decoder-mode: arm
006b185c  30 40 2d e9                                      push {r4, r5, lr}
006b1860  e0 c0 90 e5                                      ldr ip, [r0, #0xe0]
006b1864  e4 20 90 e5                                      ldr r2, [r0, #0xe4]
006b1868  5c d0 4d e2                                      sub sp, sp, #0x5c
006b186c  84 11 80 e5                                      str r1, [r0, #0x184]
006b1870  0c 20 62 e0                                      rsb r2, r2, ip
006b1874  42 01 51 e1                                      cmp r1, r2, asr #2
006b1878  16 00 00 2a                                      bhs #0x6b18d8
006b187c  00 00 51 e3                                      cmp r1, #0
006b1880  14 00 00 0a                                      beq #0x6b18d8
006b1884  a0 50 80 e2                                      add r5, r0, #0xa0
006b1888  0c 40 8d e2                                      add r4, sp, #0xc
006b188c  01 30 a0 e1                                      mov r3, r1
006b1890  54 c0 8d e2                                      add ip, sp, #0x54
006b1894  04 00 a0 e1                                      mov r0, r4
006b1898  05 10 a0 e1                                      mov r1, r5
006b189c  00 20 a0 e3                                      mov r2, #0
006b18a0  00 c0 8d e5                                      str ip, [sp]
006b18a4  e4 04 fb eb                                      bl #0x572c3c
006b18a8  04 00 55 e1                                      cmp r5, r4
006b18ac  03 00 00 0a                                      beq #0x6b18c0
006b18b0  05 00 a0 e1                                      mov r0, r5
006b18b4  50 10 9d e5                                      ldr r1, [sp, #0x50]
006b18b8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
006b18bc  37 c6 f1 eb                                      bl #0x3231a0
006b18c0  50 00 9d e5                                      ldr r0, [sp, #0x50]
006b18c4  04 00 50 e1                                      cmp r0, r4
006b18c8  02 00 00 0a                                      beq #0x6b18d8
006b18cc  00 00 50 e3                                      cmp r0, #0
006b18d0  00 00 00 0a                                      beq #0x6b18d8
006b18d4  dd 7a f1 eb                                      bl #0x310450
006b18d8  5c d0 8d e2                                      add sp, sp, #0x5c
006b18dc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006b18e0, declared_size=2956, range_size=2956, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox4drawEv
; demangled: glitch::gui::CGUIEditBox::draw()
; decoder-mode: arm
006b18e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b18e4  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
006b18e8  b5 df 4d e2                                      sub sp, sp, #0x2d4
006b18ec  00 40 a0 e1                                      mov r4, r0
006b18f0  00 00 53 e3                                      cmp r3, #0
006b18f4  01 00 00 1a                                      bne #0x6b1900
006b18f8  b5 df 8d e2                                      add sp, sp, #0x2d4
006b18fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b1900  50 31 90 e5                                      ldr r3, [r0, #0x150]
006b1904  00 10 a0 e1                                      mov r1, r0
006b1908  03 00 a0 e1                                      mov r0, r3
006b190c  00 30 93 e5                                      ldr r3, [r3]
006b1910  0f e0 a0 e1                                      mov lr, pc
006b1914  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b1918  24 00 8d e5                                      str r0, [sp, #0x24]
006b191c  50 31 94 e5                                      ldr r3, [r4, #0x150]
006b1920  03 00 a0 e1                                      mov r0, r3
006b1924  00 30 93 e5                                      ldr r3, [r3]
006b1928  0f e0 a0 e1                                      mov lr, pc
006b192c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006b1930  00 80 50 e2                                      subs r8, r0, #0
006b1934  ef ff ff 0a                                      beq #0x6b18f8
006b1938  59 e1 d4 e5                                      ldrb lr, [r4, #0x159]
006b193c  38 30 94 e5                                      ldr r3, [r4, #0x38]
006b1940  3c c0 94 e5                                      ldr ip, [r4, #0x3c]
006b1944  40 10 94 e5                                      ldr r1, [r4, #0x40]
006b1948  44 20 94 e5                                      ldr r2, [r4, #0x44]
006b194c  00 00 5e e3                                      cmp lr, #0
006b1950  c4 c1 84 e5                                      str ip, [r4, #0x1c4]
006b1954  c8 11 84 e5                                      str r1, [r4, #0x1c8]
006b1958  cc 21 84 e5                                      str r2, [r4, #0x1cc]
006b195c  c0 31 84 e5                                      str r3, [r4, #0x1c0]
006b1960  dd 01 00 1a                                      bne #0x6b20dc
006b1964  c8 11 94 e5                                      ldr r1, [r4, #0x1c8]
006b1968  50 00 94 e5                                      ldr r0, [r4, #0x50]
006b196c  cc 21 94 e5                                      ldr r2, [r4, #0x1cc]
006b1970  c4 c1 94 e5                                      ldr ip, [r4, #0x1c4]
006b1974  00 00 51 e1                                      cmp r1, r0
006b1978  84 32 8d e5                                      str r3, [sp, #0x284]
006b197c  88 c2 8d e5                                      str ip, [sp, #0x288]
006b1980  8c 12 8d e5                                      str r1, [sp, #0x28c]
006b1984  90 22 8d e5                                      str r2, [sp, #0x290]
006b1988  8c 02 8d c5                                      strgt r0, [sp, #0x28c]
006b198c  54 30 94 e5                                      ldr r3, [r4, #0x54]
006b1990  88 12 9d e5                                      ldr r1, [sp, #0x288]
006b1994  03 00 52 e1                                      cmp r2, r3
006b1998  90 32 8d c5                                      strgt r3, [sp, #0x290]
006b199c  48 30 94 e5                                      ldr r3, [r4, #0x48]
006b19a0  84 22 9d e5                                      ldr r2, [sp, #0x284]
006b19a4  02 00 53 e1                                      cmp r3, r2
006b19a8  84 32 8d c5                                      strgt r3, [sp, #0x284]
006b19ac  03 20 a0 c1                                      movgt r2, r3
006b19b0  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006b19b4  01 00 53 e1                                      cmp r3, r1
006b19b8  01 30 a0 d1                                      movle r3, r1
006b19bc  90 12 9d e5                                      ldr r1, [sp, #0x290]
006b19c0  88 32 8d c5                                      strgt r3, [sp, #0x288]
006b19c4  03 00 51 e1                                      cmp r1, r3
006b19c8  8c 32 9d e5                                      ldr r3, [sp, #0x28c]
006b19cc  88 12 8d b5                                      strlt r1, [sp, #0x288]
006b19d0  03 00 52 e1                                      cmp r2, r3
006b19d4  84 32 8d c5                                      strgt r3, [sp, #0x284]
006b19d8  68 61 94 e5                                      ldr r6, [r4, #0x168]
006b19dc  00 00 56 e3                                      cmp r6, #0
006b19e0  5e 02 00 0a                                      beq #0x6b2360
006b19e4  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
006b19e8  06 00 53 e1                                      cmp r3, r6
006b19ec  01 00 00 0a                                      beq #0x6b19f8
006b19f0  04 00 a0 e1                                      mov r0, r4
006b19f4  64 fd ff eb                                      bl #0x6b0f8c
006b19f8  8f 0f 8d e2                                      add r0, sp, #0x23c
006b19fc  10 10 a0 e3                                      mov r1, #0x10
006b1a00  14 00 8d e5                                      str r0, [sp, #0x14]
006b1a04  7c 02 8d e5                                      str r0, [sp, #0x27c]
006b1a08  80 02 8d e5                                      str r0, [sp, #0x280]
006b1a0c  c3 bb f1 eb                                      bl #0x320920
006b1a10  7d 3f 8d e2                                      add r3, sp, #0x1f4
006b1a14  20 30 8d e5                                      str r3, [sp, #0x20]
006b1a18  7c 32 9d e5                                      ldr r3, [sp, #0x27c]
006b1a1c  00 50 a0 e3                                      mov r5, #0
006b1a20  10 10 a0 e3                                      mov r1, #0x10
006b1a24  00 50 83 e5                                      str r5, [r3]
006b1a28  20 00 9d e5                                      ldr r0, [sp, #0x20]
006b1a2c  34 02 8d e5                                      str r0, [sp, #0x234]
006b1a30  38 02 8d e5                                      str r0, [sp, #0x238]
006b1a34  b9 bb f1 eb                                      bl #0x320920
006b1a38  34 32 9d e5                                      ldr r3, [sp, #0x234]
006b1a3c  a0 00 84 e2                                      add r0, r4, #0xa0
006b1a40  1c 00 8d e5                                      str r0, [sp, #0x1c]
006b1a44  00 50 83 e5                                      str r5, [r3]
006b1a48  8b 31 d4 e5                                      ldrb r3, [r4, #0x18b]
006b1a4c  05 00 53 e1                                      cmp r3, r5
006b1a50  28 50 8d 15                                      strne r5, [sp, #0x28]
006b1a54  69 01 00 0a                                      beq #0x6b2000
006b1a58  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006b1a5c  28 10 9d e5                                      ldr r1, [sp, #0x28]
006b1a60  40 30 8d e5                                      str r3, [sp, #0x40]
006b1a64  60 c1 94 e5                                      ldr ip, [r4, #0x160]
006b1a68  0c 00 53 e1                                      cmp r3, ip
006b1a6c  40 00 9d a5                                      ldrge r0, [sp, #0x40]
006b1a70  0c 30 a0 a1                                      movge r3, ip
006b1a74  38 c0 8d e5                                      str ip, [sp, #0x38]
006b1a78  40 30 8d a5                                      strge r3, [sp, #0x40]
006b1a7c  38 00 8d a5                                      strge r0, [sp, #0x38]
006b1a80  00 00 51 e3                                      cmp r1, #0
006b1a84  01 50 a0 03                                      moveq r5, #1
006b1a88  3c 10 8d 05                                      streq r1, [sp, #0x3c]
006b1a8c  05 a0 a0 01                                      moveq sl, r5
006b1a90  f5 01 00 1a                                      bne #0x6b226c
006b1a94  5a 01 d4 e5                                      ldrb r0, [r4, #0x15a]
006b1a98  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
006b1a9c  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
006b1aa0  48 00 8d e5                                      str r0, [sp, #0x48]
006b1aa4  67 11 d4 e5                                      ldrb r1, [r4, #0x167]
006b1aa8  02 30 63 e0                                      rsb r3, r3, r2
006b1aac  43 31 b0 e1                                      asrs r3, r3, #2
006b1ab0  50 10 8d e5                                      str r1, [sp, #0x50]
006b1ab4  66 21 d4 e5                                      ldrb r2, [r4, #0x166]
006b1ab8  54 20 8d e5                                      str r2, [sp, #0x54]
006b1abc  65 c1 d4 e5                                      ldrb ip, [r4, #0x165]
006b1ac0  58 c0 8d e5                                      str ip, [sp, #0x58]
006b1ac4  64 01 d4 e5                                      ldrb r0, [r4, #0x164]
006b1ac8  18 30 8d 05                                      streq r3, [sp, #0x18]
006b1acc  5c 00 8d e5                                      str r0, [sp, #0x5c]
006b1ad0  0a 01 00 0a                                      beq #0x6b1f00
006b1ad4  99 30 d4 e5                                      ldrb r3, [r4, #0x99]
006b1ad8  00 00 53 e3                                      cmp r3, #0
006b1adc  02 00 00 1a                                      bne #0x6b1aec
006b1ae0  48 10 9d e5                                      ldr r1, [sp, #0x48]
006b1ae4  00 00 51 e3                                      cmp r1, #0
006b1ae8  24 02 00 0a                                      beq #0x6b2380
006b1aec  00 00 5a e3                                      cmp sl, #0
006b1af0  00 20 a0 d3                                      movle r2, #0
006b1af4  18 20 8d d5                                      strle r2, [sp, #0x18]
006b1af8  f6 00 00 da                                      ble #0x6b1ed8
006b1afc  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006b1b00  00 c0 a0 e3                                      mov ip, #0
006b1b04  66 0f 84 e2                                      add r0, r4, #0x198
006b1b08  03 50 85 e0                                      add r5, r5, r3
006b1b0c  4c 50 8d e5                                      str r5, [sp, #0x4c]
006b1b10  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006b1b14  1b 1e 84 e2                                      add r1, r4, #0x1b0
006b1b18  a1 2f 8d e2                                      add r2, sp, #0x284
006b1b1c  01 30 43 e2                                      sub r3, r3, #1
006b1b20  18 c0 8d e5                                      str ip, [sp, #0x18]
006b1b24  0c 50 a0 e1                                      mov r5, ip
006b1b28  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
006b1b2c  af cf 8d e2                                      add ip, sp, #0x2bc
006b1b30  44 00 8d e5                                      str r0, [sp, #0x44]
006b1b34  2c 10 8d e5                                      str r1, [sp, #0x2c]
006b1b38  30 20 8d e5                                      str r2, [sp, #0x30]
006b1b3c  64 30 8d e5                                      str r3, [sp, #0x64]
006b1b40  68 c0 8d e5                                      str ip, [sp, #0x68]
006b1b44  d4 00 8d e2                                      add r0, sp, #0xd4
006b1b48  a7 1f 8d e2                                      add r1, sp, #0x29c
006b1b4c  47 2f 8d e2                                      add r2, sp, #0x11c
006b1b50  a9 3f 8d e2                                      add r3, sp, #0x2a4
006b1b54  59 cf 8d e2                                      add ip, sp, #0x164
006b1b58  60 00 8d e5                                      str r0, [sp, #0x60]
006b1b5c  74 10 8d e5                                      str r1, [sp, #0x74]
006b1b60  6c 20 8d e5                                      str r2, [sp, #0x6c]
006b1b64  7c 30 8d e5                                      str r3, [sp, #0x7c]
006b1b68  78 c0 8d e5                                      str ip, [sp, #0x78]
006b1b6c  34 80 8d e5                                      str r8, [sp, #0x34]
006b1b70  05 10 a0 e1                                      mov r1, r5
006b1b74  04 00 a0 e1                                      mov r0, r4
006b1b78  df f7 ff eb                                      bl #0x6afafc
006b1b7c  90 12 9d e5                                      ldr r1, [sp, #0x290]
006b1b80  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
006b1b84  b4 21 94 e5                                      ldr r2, [r4, #0x1b4]
006b1b88  03 00 51 e1                                      cmp r1, r3
006b1b8c  01 30 a0 b1                                      movlt r3, r1
006b1b90  03 30 a0 a1                                      movge r3, r3
006b1b94  88 12 9d e5                                      ldr r1, [sp, #0x288]
006b1b98  02 00 51 e1                                      cmp r1, r2
006b1b9c  01 20 a0 a1                                      movge r2, r1
006b1ba0  02 20 a0 b1                                      movlt r2, r2
006b1ba4  02 00 53 e1                                      cmp r3, r2
006b1ba8  03 20 a0 b1                                      movlt r2, r3
006b1bac  02 20 a0 a1                                      movge r2, r2
006b1bb0  03 00 52 e1                                      cmp r2, r3
006b1bb4  c2 00 00 ca                                      bgt #0x6b1ec4
006b1bb8  8b 31 d4 e5                                      ldrb r3, [r4, #0x18b]
006b1bbc  00 00 53 e3                                      cmp r3, #0
006b1bc0  21 01 00 0a                                      beq #0x6b204c
006b1bc4  98 71 94 e5                                      ldr r7, [r4, #0x198]
006b1bc8  9c 21 94 e5                                      ldr r2, [r4, #0x19c]
006b1bcc  07 00 a0 e1                                      mov r0, r7
006b1bd0  02 30 67 e0                                      rsb r3, r7, r2
006b1bd4  c3 31 a0 e1                                      asr r3, r3, #3
006b1bd8  83 11 a0 e1                                      lsl r1, r3, #3
006b1bdc  01 10 63 e0                                      rsb r1, r3, r1
006b1be0  01 13 81 e0                                      add r1, r1, r1, lsl #6
006b1be4  81 11 83 e0                                      add r1, r3, r1, lsl #3
006b1be8  81 c7 a0 e1                                      lsl ip, r1, #0xf
006b1bec  0c 10 61 e0                                      rsb r1, r1, ip
006b1bf0  81 11 83 e0                                      add r1, r3, r1, lsl #3
006b1bf4  01 00 51 e3                                      cmp r1, #1
006b1bf8  19 00 00 0a                                      beq #0x6b1c64
006b1bfc  07 00 52 e1                                      cmp r2, r7
006b1c00  03 00 00 0a                                      beq #0x6b1c14
006b1c04  07 10 a0 e1                                      mov r1, r7
006b1c08  44 00 9d e5                                      ldr r0, [sp, #0x44]
006b1c0c  b3 3f 8d e2                                      add r3, sp, #0x2cc
006b1c10  d2 7b fa eb                                      bl #0x550b60
006b1c14  6b 7f 8d e2                                      add r7, sp, #0x1ac
006b1c18  07 00 a0 e1                                      mov r0, r7
006b1c1c  10 10 a0 e3                                      mov r1, #0x10
006b1c20  ec 71 8d e5                                      str r7, [sp, #0x1ec]
006b1c24  f0 71 8d e5                                      str r7, [sp, #0x1f0]
006b1c28  3c bb f1 eb                                      bl #0x320920
006b1c2c  ec 31 9d e5                                      ldr r3, [sp, #0x1ec]
006b1c30  00 20 a0 e3                                      mov r2, #0
006b1c34  44 00 9d e5                                      ldr r0, [sp, #0x44]
006b1c38  07 10 a0 e1                                      mov r1, r7
006b1c3c  00 20 83 e5                                      str r2, [r3]
006b1c40  40 7d fa eb                                      bl #0x551148
006b1c44  f0 01 9d e5                                      ldr r0, [sp, #0x1f0]
006b1c48  07 00 50 e1                                      cmp r0, r7
006b1c4c  02 00 00 0a                                      beq #0x6b1c5c
006b1c50  00 00 50 e3                                      cmp r0, #0
006b1c54  00 00 00 0a                                      beq #0x6b1c5c
006b1c58  fc 79 f1 eb                                      bl #0x310450
006b1c5c  98 01 94 e5                                      ldr r0, [r4, #0x198]
006b1c60  00 70 a0 e1                                      mov r7, r0
006b1c64  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
006b1c68  e4 10 94 e5                                      ldr r1, [r4, #0xe4]
006b1c6c  44 b0 90 e5                                      ldr fp, [r0, #0x44]
006b1c70  40 c0 90 e5                                      ldr ip, [r0, #0x40]
006b1c74  02 30 61 e0                                      rsb r3, r1, r2
006b1c78  43 31 a0 e1                                      asr r3, r3, #2
006b1c7c  0c c0 6b e0                                      rsb ip, fp, ip
006b1c80  4c 01 53 e1                                      cmp r3, ip, asr #2
006b1c84  19 00 00 0a                                      beq #0x6b1cf0
006b1c88  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006b1c8c  00 00 5c e1                                      cmp ip, r0
006b1c90  06 00 00 0a                                      beq #0x6b1cb0
006b1c94  41 c5 f1 eb                                      bl #0x3231a0
006b1c98  98 01 94 e5                                      ldr r0, [r4, #0x198]
006b1c9c  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
006b1ca0  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
006b1ca4  44 b0 90 e5                                      ldr fp, [r0, #0x44]
006b1ca8  02 30 63 e0                                      rsb r3, r3, r2
006b1cac  43 31 a0 e1                                      asr r3, r3, #2
006b1cb0  00 00 53 e3                                      cmp r3, #0
006b1cb4  00 30 a0 13                                      movne r3, #0
006b1cb8  02 00 00 1a                                      bne #0x6b1cc8
006b1cbc  be 01 00 ea                                      b #0x6b23bc
006b1cc0  98 21 94 e5                                      ldr r2, [r4, #0x198]
006b1cc4  44 b0 92 e5                                      ldr fp, [r2, #0x44]
006b1cc8  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
006b1ccc  03 21 8b e7                                      str r2, [fp, r3, lsl #2]
006b1cd0  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
006b1cd4  e4 20 94 e5                                      ldr r2, [r4, #0xe4]
006b1cd8  01 30 83 e2                                      add r3, r3, #1
006b1cdc  01 20 62 e0                                      rsb r2, r2, r1
006b1ce0  42 01 53 e1                                      cmp r3, r2, asr #2
006b1ce4  f5 ff ff 3a                                      blo #0x6b1cc0
006b1ce8  98 71 94 e5                                      ldr r7, [r4, #0x198]
006b1cec  44 b0 97 e5                                      ldr fp, [r7, #0x44]
006b1cf0  00 00 a0 e3                                      mov r0, #0
006b1cf4  18 00 8d e5                                      str r0, [sp, #0x18]
006b1cf8  5a 21 d4 e5                                      ldrb r2, [r4, #0x15a]
006b1cfc  00 30 96 e5                                      ldr r3, [r6]
006b1d00  00 00 52 e3                                      cmp r2, #0
006b1d04  0c 90 93 e5                                      ldr sb, [r3, #0xc]
006b1d08  db 00 00 0a                                      beq #0x6b207c
006b1d0c  64 31 94 e5                                      ldr r3, [r4, #0x164]
006b1d10  c0 32 8d e5                                      str r3, [sp, #0x2c0]
006b1d14  30 00 9d e5                                      ldr r0, [sp, #0x30]
006b1d18  00 80 a0 e3                                      mov r8, #0
006b1d1c  01 30 a0 e3                                      mov r3, #1
006b1d20  04 30 8d e5                                      str r3, [sp, #4]
006b1d24  08 00 8d e5                                      str r0, [sp, #8]
006b1d28  0b 10 a0 e1                                      mov r1, fp
006b1d2c  00 80 8d e5                                      str r8, [sp]
006b1d30  06 00 a0 e1                                      mov r0, r6
006b1d34  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006b1d38  c0 32 9d e5                                      ldr r3, [sp, #0x2c0]
006b1d3c  39 ff 2f e1                                      blx sb
006b1d40  24 10 9d e5                                      ldr r1, [sp, #0x24]
006b1d44  08 00 51 e1                                      cmp r1, r8
006b1d48  5d 00 00 0a                                      beq #0x6b1ec4
006b1d4c  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
006b1d50  60 21 94 e5                                      ldr r2, [r4, #0x160]
006b1d54  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006b1d58  0c 00 55 e1                                      cmp r5, ip
006b1d5c  00 30 a0 b3                                      movlt r3, #0
006b1d60  01 30 a0 a3                                      movge r3, #1
006b1d64  02 00 51 e1                                      cmp r1, r2
006b1d68  00 30 a0 03                                      moveq r3, #0
006b1d6c  08 00 53 e1                                      cmp r3, r8
006b1d70  53 00 00 0a                                      beq #0x6b1ec4
006b1d74  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006b1d78  05 00 50 e1                                      cmp r0, r5
006b1d7c  50 00 00 da                                      ble #0x6b1ec4
006b1d80  0c 00 55 e1                                      cmp r5, ip
006b1d84  40 b0 97 e5                                      ldr fp, [r7, #0x40]
006b1d88  44 c0 97 e5                                      ldr ip, [r7, #0x44]
006b1d8c  08 90 a0 11                                      movne sb, r8
006b1d90  70 80 8d 15                                      strne r8, [sp, #0x70]
006b1d94  9a 01 00 0a                                      beq #0x6b2404
006b1d98  64 30 9d e5                                      ldr r3, [sp, #0x64]
006b1d9c  05 00 53 e1                                      cmp r3, r5
006b1da0  47 01 00 0a                                      beq #0x6b22c4
006b1da4  0b 30 6c e0                                      rsb r3, ip, fp
006b1da8  74 00 9d e5                                      ldr r0, [sp, #0x74]
006b1dac  00 c0 96 e5                                      ldr ip, [r6]
006b1db0  06 10 a0 e1                                      mov r1, r6
006b1db4  44 20 97 e5                                      ldr r2, [r7, #0x44]
006b1db8  43 b1 a0 e1                                      asr fp, r3, #2
006b1dbc  0f e0 a0 e1                                      mov lr, pc
006b1dc0  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
006b1dc4  9c c2 9d e5                                      ldr ip, [sp, #0x29c]
006b1dc8  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
006b1dcc  34 00 9d e5                                      ldr r0, [sp, #0x34]
006b1dd0  0a 10 a0 e3                                      mov r1, #0xa
006b1dd4  03 30 89 e0                                      add r3, sb, r3
006b1dd8  03 20 69 e0                                      rsb r2, sb, r3
006b1ddc  0c 20 82 e0                                      add r2, r2, ip
006b1de0  b8 21 84 e5                                      str r2, [r4, #0x1b8]
006b1de4  b0 31 84 e5                                      str r3, [r4, #0x1b0]
006b1de8  34 20 9d e5                                      ldr r2, [sp, #0x34]
006b1dec  00 30 92 e5                                      ldr r3, [r2]
006b1df0  64 90 93 e5                                      ldr sb, [r3, #0x64]
006b1df4  0f e0 a0 e1                                      mov lr, pc
006b1df8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006b1dfc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006b1e00  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006b1e04  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006b1e08  81 10 cd e5                                      strb r1, [sp, #0x81]
006b1e0c  83 30 cd e5                                      strb r3, [sp, #0x83]
006b1e10  80 00 cd e5                                      strb r0, [sp, #0x80]
006b1e14  82 20 cd e5                                      strb r2, [sp, #0x82]
006b1e18  30 30 9d e5                                      ldr r3, [sp, #0x30]
006b1e1c  80 20 9d e5                                      ldr r2, [sp, #0x80]
006b1e20  34 00 9d e5                                      ldr r0, [sp, #0x34]
006b1e24  00 30 8d e5                                      str r3, [sp]
006b1e28  bc 22 8d e5                                      str r2, [sp, #0x2bc]
006b1e2c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006b1e30  04 10 a0 e1                                      mov r1, r4
006b1e34  68 20 9d e5                                      ldr r2, [sp, #0x68]
006b1e38  39 ff 2f e1                                      blx sb
006b1e3c  70 c0 9d e5                                      ldr ip, [sp, #0x70]
006b1e40  08 20 a0 e1                                      mov r2, r8
006b1e44  60 00 9d e5                                      ldr r0, [sp, #0x60]
006b1e48  0b 30 6c e0                                      rsb r3, ip, fp
006b1e4c  07 10 a0 e1                                      mov r1, r7
006b1e50  c6 f8 ff eb                                      bl #0x6b0170
006b1e54  60 10 9d e5                                      ldr r1, [sp, #0x60]
006b1e58  14 00 9d e5                                      ldr r0, [sp, #0x14]
006b1e5c  7f f8 ff eb                                      bl #0x6b0060
006b1e60  60 00 9d e5                                      ldr r0, [sp, #0x60]
006b1e64  3f 41 fa eb                                      bl #0x542368
006b1e68  80 82 9d e5                                      ldr r8, [sp, #0x280]
006b1e6c  7c 32 9d e5                                      ldr r3, [sp, #0x27c]
006b1e70  03 30 68 e0                                      rsb r3, r8, r3
006b1e74  23 31 b0 e1                                      lsrs r3, r3, #2
006b1e78  11 00 00 0a                                      beq #0x6b1ec4
006b1e7c  5a 21 d4 e5                                      ldrb r2, [r4, #0x15a]
006b1e80  00 30 96 e5                                      ldr r3, [r6]
006b1e84  00 00 52 e3                                      cmp r2, #0
006b1e88  0c 90 93 e5                                      ldr sb, [r3, #0xc]
006b1e8c  4d 01 00 0a                                      beq #0x6b23c8
006b1e90  64 31 94 e5                                      ldr r3, [r4, #0x164]
006b1e94  b8 32 8d e5                                      str r3, [sp, #0x2b8]
006b1e98  30 10 9d e5                                      ldr r1, [sp, #0x30]
006b1e9c  00 30 a0 e3                                      mov r3, #0
006b1ea0  00 30 8d e5                                      str r3, [sp]
006b1ea4  01 30 a0 e3                                      mov r3, #1
006b1ea8  04 30 8d e5                                      str r3, [sp, #4]
006b1eac  08 10 8d e5                                      str r1, [sp, #8]
006b1eb0  06 00 a0 e1                                      mov r0, r6
006b1eb4  08 10 a0 e1                                      mov r1, r8
006b1eb8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006b1ebc  b8 32 9d e5                                      ldr r3, [sp, #0x2b8]
006b1ec0  39 ff 2f e1                                      blx sb
006b1ec4  01 50 85 e2                                      add r5, r5, #1
006b1ec8  0a 00 55 e1                                      cmp r5, sl
006b1ecc  27 ff ff 1a                                      bne #0x6b1b70
006b1ed0  34 80 9d e5                                      ldr r8, [sp, #0x34]
006b1ed4  1c 70 8d e5                                      str r7, [sp, #0x1c]
006b1ed8  48 20 9d e5                                      ldr r2, [sp, #0x48]
006b1edc  5a 21 c4 e5                                      strb r2, [r4, #0x15a]
006b1ee0  50 30 9d e5                                      ldr r3, [sp, #0x50]
006b1ee4  67 31 c4 e5                                      strb r3, [r4, #0x167]
006b1ee8  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006b1eec  66 c1 c4 e5                                      strb ip, [r4, #0x166]
006b1ef0  58 00 9d e5                                      ldr r0, [sp, #0x58]
006b1ef4  65 01 c4 e5                                      strb r0, [r4, #0x165]
006b1ef8  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
006b1efc  64 11 c4 e5                                      strb r1, [r4, #0x164]
006b1f00  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
006b1f04  00 00 53 e3                                      cmp r3, #0
006b1f08  43 00 00 1a                                      bne #0x6b201c
006b1f0c  89 71 d4 e5                                      ldrb r7, [r4, #0x189]
006b1f10  00 00 57 e3                                      cmp r7, #0
006b1f14  40 00 00 1a                                      bne #0x6b201c
006b1f18  78 31 94 e5                                      ldr r3, [r4, #0x178]
006b1f1c  18 20 9d e5                                      ldr r2, [sp, #0x18]
006b1f20  8c 50 8d e2                                      add r5, sp, #0x8c
006b1f24  b2 cf 8d e2                                      add ip, sp, #0x2c8
006b1f28  03 30 62 e0                                      rsb r3, r2, r3
006b1f2c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006b1f30  00 20 a0 e3                                      mov r2, #0
006b1f34  05 00 a0 e1                                      mov r0, r5
006b1f38  00 c0 8d e5                                      str ip, [sp]
006b1f3c  3e 03 fb eb                                      bl #0x572c3c
006b1f40  14 00 9d e5                                      ldr r0, [sp, #0x14]
006b1f44  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
006b1f48  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
006b1f4c  93 c4 f1 eb                                      bl #0x3231a0
006b1f50  d0 00 9d e5                                      ldr r0, [sp, #0xd0]
006b1f54  05 00 50 e1                                      cmp r0, r5
006b1f58  02 00 00 0a                                      beq #0x6b1f68
006b1f5c  00 00 50 e3                                      cmp r0, #0
006b1f60  00 00 00 0a                                      beq #0x6b1f68
006b1f64  39 79 f1 eb                                      bl #0x310450
006b1f68  00 30 96 e5                                      ldr r3, [r6]
006b1f6c  a5 0f 8d e2                                      add r0, sp, #0x294
006b1f70  06 10 a0 e1                                      mov r1, r6
006b1f74  80 22 9d e5                                      ldr r2, [sp, #0x280]
006b1f78  0f e0 a0 e1                                      mov lr, pc
006b1f7c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b1f80  24 30 9d e5                                      ldr r3, [sp, #0x24]
006b1f84  94 52 9d e5                                      ldr r5, [sp, #0x294]
006b1f88  00 00 53 e3                                      cmp r3, #0
006b1f8c  8f 00 00 1a                                      bne #0x6b21d0
006b1f90  38 02 9d e5                                      ldr r0, [sp, #0x238]
006b1f94  20 10 9d e5                                      ldr r1, [sp, #0x20]
006b1f98  01 00 50 e1                                      cmp r0, r1
006b1f9c  02 00 00 0a                                      beq #0x6b1fac
006b1fa0  00 00 50 e3                                      cmp r0, #0
006b1fa4  00 00 00 0a                                      beq #0x6b1fac
006b1fa8  28 79 f1 eb                                      bl #0x310450
006b1fac  80 02 9d e5                                      ldr r0, [sp, #0x280]
006b1fb0  14 20 9d e5                                      ldr r2, [sp, #0x14]
006b1fb4  02 00 50 e1                                      cmp r0, r2
006b1fb8  02 00 00 0a                                      beq #0x6b1fc8
006b1fbc  00 00 50 e3                                      cmp r0, #0
006b1fc0  00 00 00 0a                                      beq #0x6b1fc8
006b1fc4  21 79 f1 eb                                      bl #0x310450
006b1fc8  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
006b1fcc  00 00 53 e3                                      cmp r3, #0
006b1fd0  04 50 b4 15                                      ldrne r5, [r4, #4]!
006b1fd4  06 00 00 1a                                      bne #0x6b1ff4
006b1fd8  46 fe ff ea                                      b #0x6b18f8
006b1fdc  08 30 95 e5                                      ldr r3, [r5, #8]
006b1fe0  03 00 a0 e1                                      mov r0, r3
006b1fe4  00 30 93 e5                                      ldr r3, [r3]
006b1fe8  0f e0 a0 e1                                      mov lr, pc
006b1fec  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006b1ff0  00 50 95 e5                                      ldr r5, [r5]
006b1ff4  04 00 55 e1                                      cmp r5, r4
006b1ff8  f7 ff ff 1a                                      bne #0x6b1fdc
006b1ffc  3d fe ff ea                                      b #0x6b18f8
006b2000  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
006b2004  00 00 53 e3                                      cmp r3, #0
006b2008  89 21 d4 05                                      ldrbeq r2, [r4, #0x189]
006b200c  01 10 a0 13                                      movne r1, #1
006b2010  28 10 8d 15                                      strne r1, [sp, #0x28]
006b2014  28 20 8d 05                                      streq r2, [sp, #0x28]
006b2018  8e fe ff ea                                      b #0x6b1a58
006b201c  78 11 94 e5                                      ldr r1, [r4, #0x178]
006b2020  04 00 a0 e1                                      mov r0, r4
006b2024  e8 f7 ff eb                                      bl #0x6affcc
006b2028  98 21 94 e5                                      ldr r2, [r4, #0x198]
006b202c  48 10 a0 e3                                      mov r1, #0x48
006b2030  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
006b2034  91 20 22 e0                                      mla r2, r1, r0, r2
006b2038  00 70 a0 e1                                      mov r7, r0
006b203c  1c 20 8d e5                                      str r2, [sp, #0x1c]
006b2040  00 31 93 e7                                      ldr r3, [r3, r0, lsl #2]
006b2044  18 30 8d e5                                      str r3, [sp, #0x18]
006b2048  b2 ff ff ea                                      b #0x6b1f18
006b204c  28 10 9d e5                                      ldr r1, [sp, #0x28]
006b2050  00 00 51 e3                                      cmp r1, #0
006b2054  18 00 00 1a                                      bne #0x6b20bc
006b2058  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006b205c  44 b0 92 e5                                      ldr fp, [r2, #0x44]
006b2060  18 10 8d e5                                      str r1, [sp, #0x18]
006b2064  02 70 a0 e1                                      mov r7, r2
006b2068  5a 21 d4 e5                                      ldrb r2, [r4, #0x15a]
006b206c  00 30 96 e5                                      ldr r3, [r6]
006b2070  00 00 52 e3                                      cmp r2, #0
006b2074  0c 90 93 e5                                      ldr sb, [r3, #0xc]
006b2078  23 ff ff 1a                                      bne #0x6b1d0c
006b207c  34 c0 9d e5                                      ldr ip, [sp, #0x34]
006b2080  08 10 a0 e3                                      mov r1, #8
006b2084  00 30 9c e5                                      ldr r3, [ip]
006b2088  0c 00 a0 e1                                      mov r0, ip
006b208c  0f e0 a0 e1                                      mov lr, pc
006b2090  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006b2094  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006b2098  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006b209c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006b20a0  81 10 cd e5                                      strb r1, [sp, #0x81]
006b20a4  82 20 cd e5                                      strb r2, [sp, #0x82]
006b20a8  83 30 cd e5                                      strb r3, [sp, #0x83]
006b20ac  80 00 cd e5                                      strb r0, [sp, #0x80]
006b20b0  80 30 9d e5                                      ldr r3, [sp, #0x80]
006b20b4  c0 32 8d e5                                      str r3, [sp, #0x2c0]
006b20b8  15 ff ff ea                                      b #0x6b1d14
006b20bc  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
006b20c0  98 21 94 e5                                      ldr r2, [r4, #0x198]
006b20c4  48 70 a0 e3                                      mov r7, #0x48
006b20c8  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
006b20cc  97 25 27 e0                                      mla r7, r7, r5, r2
006b20d0  18 30 8d e5                                      str r3, [sp, #0x18]
006b20d4  44 b0 97 e5                                      ldr fp, [r7, #0x44]
006b20d8  06 ff ff ea                                      b #0x6b1cf8
006b20dc  00 30 98 e5                                      ldr r3, [r8]
006b20e0  11 10 a0 e3                                      mov r1, #0x11
006b20e4  48 50 93 e5                                      ldr r5, [r3, #0x48]
006b20e8  0f e0 a0 e1                                      mov lr, pc
006b20ec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006b20f0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006b20f4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006b20f8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006b20fc  81 10 cd e5                                      strb r1, [sp, #0x81]
006b2100  82 20 cd e5                                      strb r2, [sp, #0x82]
006b2104  80 00 cd e5                                      strb r0, [sp, #0x80]
006b2108  83 30 cd e5                                      strb r3, [sp, #0x83]
006b210c  80 30 9d e5                                      ldr r3, [sp, #0x80]
006b2110  07 1d 84 e2                                      add r1, r4, #0x1c0
006b2114  48 20 84 e2                                      add r2, r4, #0x48
006b2118  01 00 a0 e3                                      mov r0, #1
006b211c  07 00 8d e8                                      stm sp, {r0, r1, r2}
006b2120  c4 32 8d e5                                      str r3, [sp, #0x2c4]
006b2124  03 20 a0 e1                                      mov r2, r3
006b2128  08 00 a0 e1                                      mov r0, r8
006b212c  00 30 a0 e3                                      mov r3, #0
006b2130  04 10 a0 e1                                      mov r1, r4
006b2134  35 ff 2f e1                                      blx r5
006b2138  08 10 a0 e3                                      mov r1, #8
006b213c  00 30 98 e5                                      ldr r3, [r8]
006b2140  08 00 a0 e1                                      mov r0, r8
006b2144  c0 51 94 e5                                      ldr r5, [r4, #0x1c0]
006b2148  0f e0 a0 e1                                      mov lr, pc
006b214c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b2150  01 50 85 e2                                      add r5, r5, #1
006b2154  00 50 85 e0                                      add r5, r5, r0
006b2158  c0 51 84 e5                                      str r5, [r4, #0x1c0]
006b215c  09 10 a0 e3                                      mov r1, #9
006b2160  00 30 98 e5                                      ldr r3, [r8]
006b2164  08 00 a0 e1                                      mov r0, r8
006b2168  c4 51 94 e5                                      ldr r5, [r4, #0x1c4]
006b216c  0f e0 a0 e1                                      mov lr, pc
006b2170  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b2174  01 50 85 e2                                      add r5, r5, #1
006b2178  00 50 85 e0                                      add r5, r5, r0
006b217c  c4 51 84 e5                                      str r5, [r4, #0x1c4]
006b2180  08 10 a0 e3                                      mov r1, #8
006b2184  00 30 98 e5                                      ldr r3, [r8]
006b2188  08 00 a0 e1                                      mov r0, r8
006b218c  c8 51 94 e5                                      ldr r5, [r4, #0x1c8]
006b2190  0f e0 a0 e1                                      mov lr, pc
006b2194  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b2198  00 00 e0 e1                                      mvn r0, r0
006b219c  05 50 80 e0                                      add r5, r0, r5
006b21a0  c8 51 84 e5                                      str r5, [r4, #0x1c8]
006b21a4  00 30 98 e5                                      ldr r3, [r8]
006b21a8  08 00 a0 e1                                      mov r0, r8
006b21ac  09 10 a0 e3                                      mov r1, #9
006b21b0  cc 51 94 e5                                      ldr r5, [r4, #0x1cc]
006b21b4  0f e0 a0 e1                                      mov lr, pc
006b21b8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b21bc  00 00 e0 e1                                      mvn r0, r0
006b21c0  05 50 80 e0                                      add r5, r0, r5
006b21c4  c0 31 94 e5                                      ldr r3, [r4, #0x1c0]
006b21c8  cc 51 84 e5                                      str r5, [r4, #0x1cc]
006b21cc  e4 fd ff ea                                      b #0x6b1964
006b21d0  43 63 fd eb                                      bl #0x60aee4
006b21d4  74 21 94 e5                                      ldr r2, [r4, #0x174]
006b21d8  91 33 07 e3                                      movw r3, #0x7391
006b21dc  9f 3d 45 e3                                      movt r3, #0x5d9f
006b21e0  00 20 62 e0                                      rsb r2, r2, r0
006b21e4  93 c2 83 e0                                      umull ip, r3, r3, r2
006b21e8  af 1f a0 e3                                      mov r1, #0x2bc
006b21ec  23 34 a0 e1                                      lsr r3, r3, #8
006b21f0  91 23 62 e0                                      mls r2, r1, r3, r2
006b21f4  5d 31 00 e3                                      movw r3, #0x15d
006b21f8  03 00 52 e1                                      cmp r2, r3
006b21fc  63 ff ff 8a                                      bhi #0x6b1f90
006b2200  07 10 a0 e1                                      mov r1, r7
006b2204  04 00 a0 e1                                      mov r0, r4
006b2208  3b f6 ff eb                                      bl #0x6afafc
006b220c  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
006b2210  04 70 a0 e1                                      mov r7, r4
006b2214  05 50 83 e0                                      add r5, r3, r5
006b2218  b0 51 a7 e5                                      str r5, [r7, #0x1b0]!
006b221c  5a 21 d4 e5                                      ldrb r2, [r4, #0x15a]
006b2220  00 30 96 e5                                      ldr r3, [r6]
006b2224  00 00 52 e3                                      cmp r2, #0
006b2228  0c 50 93 e5                                      ldr r5, [r3, #0xc]
006b222c  3c 00 00 0a                                      beq #0x6b2324
006b2230  64 31 94 e5                                      ldr r3, [r4, #0x164]
006b2234  b4 32 8d e5                                      str r3, [sp, #0x2b4]
006b2238  00 30 a0 e3                                      mov r3, #0
006b223c  24 12 9f e5                                      ldr r1, [pc, #0x224]
006b2240  00 30 8d e5                                      str r3, [sp]
006b2244  01 30 a0 e3                                      mov r3, #1
006b2248  04 30 8d e5                                      str r3, [sp, #4]
006b224c  a1 3f 8d e2                                      add r3, sp, #0x284
006b2250  08 30 8d e5                                      str r3, [sp, #8]
006b2254  06 00 a0 e1                                      mov r0, r6
006b2258  01 10 8f e0                                      add r1, pc, r1
006b225c  07 20 a0 e1                                      mov r2, r7
006b2260  b4 32 9d e5                                      ldr r3, [sp, #0x2b4]
006b2264  35 ff 2f e1                                      blx r5
006b2268  48 ff ff ea                                      b #0x6b1f90
006b226c  40 10 9d e5                                      ldr r1, [sp, #0x40]
006b2270  04 00 a0 e1                                      mov r0, r4
006b2274  54 f7 ff eb                                      bl #0x6affcc
006b2278  38 10 9d e5                                      ldr r1, [sp, #0x38]
006b227c  3c 00 8d e5                                      str r0, [sp, #0x3c]
006b2280  04 00 a0 e1                                      mov r0, r4
006b2284  50 f7 ff eb                                      bl #0x6affcc
006b2288  98 21 94 e5                                      ldr r2, [r4, #0x198]
006b228c  9c 31 94 e5                                      ldr r3, [r4, #0x19c]
006b2290  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006b2294  01 00 80 e2                                      add r0, r0, #1
006b2298  03 30 62 e0                                      rsb r3, r2, r3
006b229c  c3 31 a0 e1                                      asr r3, r3, #3
006b22a0  00 50 6c e0                                      rsb r5, ip, r0
006b22a4  83 21 a0 e1                                      lsl r2, r3, #3
006b22a8  02 20 63 e0                                      rsb r2, r3, r2
006b22ac  02 23 82 e0                                      add r2, r2, r2, lsl #6
006b22b0  82 21 83 e0                                      add r2, r3, r2, lsl #3
006b22b4  82 a7 a0 e1                                      lsl sl, r2, #0xf
006b22b8  0a a0 62 e0                                      rsb sl, r2, sl
006b22bc  8a a1 83 e0                                      add sl, r3, sl, lsl #3
006b22c0  f3 fd ff ea                                      b #0x6b1a94
006b22c4  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006b22c8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006b22cc  00 20 a0 e3                                      mov r2, #0
006b22d0  07 10 a0 e1                                      mov r1, r7
006b22d4  0c 30 60 e0                                      rsb r3, r0, ip
006b22d8  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006b22dc  a3 f7 ff eb                                      bl #0x6b0170
006b22e0  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006b22e4  20 00 9d e5                                      ldr r0, [sp, #0x20]
006b22e8  5c f7 ff eb                                      bl #0x6b0060
006b22ec  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006b22f0  1c 40 fa eb                                      bl #0x542368
006b22f4  00 30 96 e5                                      ldr r3, [r6]
006b22f8  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
006b22fc  06 10 a0 e1                                      mov r1, r6
006b2300  38 22 9d e5                                      ldr r2, [sp, #0x238]
006b2304  0f e0 a0 e1                                      mov lr, pc
006b2308  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b230c  38 32 9d e5                                      ldr r3, [sp, #0x238]
006b2310  34 b2 9d e5                                      ldr fp, [sp, #0x234]
006b2314  a4 c2 9d e5                                      ldr ip, [sp, #0x2a4]
006b2318  0b b0 63 e0                                      rsb fp, r3, fp
006b231c  4b b1 a0 e1                                      asr fp, fp, #2
006b2320  a8 fe ff ea                                      b #0x6b1dc8
006b2324  00 30 98 e5                                      ldr r3, [r8]
006b2328  08 10 a0 e3                                      mov r1, #8
006b232c  08 00 a0 e1                                      mov r0, r8
006b2330  0f e0 a0 e1                                      mov lr, pc
006b2334  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006b2338  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006b233c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006b2340  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006b2344  81 10 cd e5                                      strb r1, [sp, #0x81]
006b2348  82 20 cd e5                                      strb r2, [sp, #0x82]
006b234c  83 30 cd e5                                      strb r3, [sp, #0x83]
006b2350  80 00 cd e5                                      strb r0, [sp, #0x80]
006b2354  80 30 9d e5                                      ldr r3, [sp, #0x80]
006b2358  b4 32 8d e5                                      str r3, [sp, #0x2b4]
006b235c  b5 ff ff ea                                      b #0x6b2238
006b2360  06 10 a0 e1                                      mov r1, r6
006b2364  00 30 98 e5                                      ldr r3, [r8]
006b2368  08 00 a0 e1                                      mov r0, r8
006b236c  0f e0 a0 e1                                      mov lr, pc
006b2370  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006b2374  00 60 50 e2                                      subs r6, r0, #0
006b2378  12 ff ff 0a                                      beq #0x6b1fc8
006b237c  98 fd ff ea                                      b #0x6b19e4
006b2380  01 30 a0 e3                                      mov r3, #1
006b2384  5a 31 c4 e5                                      strb r3, [r4, #0x15a]
006b2388  00 30 98 e5                                      ldr r3, [r8]
006b238c  09 10 a0 e3                                      mov r1, #9
006b2390  08 00 a0 e1                                      mov r0, r8
006b2394  0f e0 a0 e1                                      mov lr, pc
006b2398  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006b239c  50 1c e7 e7                                      ubfx r1, r0, #0x18, #8
006b23a0  50 24 e7 e7                                      ubfx r2, r0, #8, #8
006b23a4  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
006b23a8  65 21 c4 e5                                      strb r2, [r4, #0x165]
006b23ac  66 31 c4 e5                                      strb r3, [r4, #0x166]
006b23b0  67 11 c4 e5                                      strb r1, [r4, #0x167]
006b23b4  64 01 c4 e5                                      strb r0, [r4, #0x164]
006b23b8  cb fd ff ea                                      b #0x6b1aec
006b23bc  00 70 a0 e1                                      mov r7, r0
006b23c0  44 b0 90 e5                                      ldr fp, [r0, #0x44]
006b23c4  49 fe ff ea                                      b #0x6b1cf0
006b23c8  34 00 9d e5                                      ldr r0, [sp, #0x34]
006b23cc  0b 10 a0 e3                                      mov r1, #0xb
006b23d0  00 30 90 e5                                      ldr r3, [r0]
006b23d4  0f e0 a0 e1                                      mov lr, pc
006b23d8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006b23dc  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
006b23e0  50 1c e7 e7                                      ubfx r1, r0, #0x18, #8
006b23e4  50 24 e7 e7                                      ubfx r2, r0, #8, #8
006b23e8  81 20 cd e5                                      strb r2, [sp, #0x81]
006b23ec  82 30 cd e5                                      strb r3, [sp, #0x82]
006b23f0  83 10 cd e5                                      strb r1, [sp, #0x83]
006b23f4  80 00 cd e5                                      strb r0, [sp, #0x80]
006b23f8  80 30 9d e5                                      ldr r3, [sp, #0x80]
006b23fc  b8 32 8d e5                                      str r3, [sp, #0x2b8]
006b2400  a4 fe ff ea                                      b #0x6b1e98
006b2404  18 20 9d e5                                      ldr r2, [sp, #0x18]
006b2408  40 10 9d e5                                      ldr r1, [sp, #0x40]
006b240c  78 00 9d e5                                      ldr r0, [sp, #0x78]
006b2410  10 c0 8d e5                                      str ip, [sp, #0x10]
006b2414  01 10 62 e0                                      rsb r1, r2, r1
006b2418  01 30 a0 e1                                      mov r3, r1
006b241c  08 20 a0 e1                                      mov r2, r8
006b2420  70 10 8d e5                                      str r1, [sp, #0x70]
006b2424  07 10 a0 e1                                      mov r1, r7
006b2428  50 f7 ff eb                                      bl #0x6b0170
006b242c  78 10 9d e5                                      ldr r1, [sp, #0x78]
006b2430  14 00 9d e5                                      ldr r0, [sp, #0x14]
006b2434  09 f7 ff eb                                      bl #0x6b0060
006b2438  78 00 9d e5                                      ldr r0, [sp, #0x78]
006b243c  c9 3f fa eb                                      bl #0x542368
006b2440  00 30 96 e5                                      ldr r3, [r6]
006b2444  ab 0f 8d e2                                      add r0, sp, #0x2ac
006b2448  06 10 a0 e1                                      mov r1, r6
006b244c  80 22 9d e5                                      ldr r2, [sp, #0x280]
006b2450  0f e0 a0 e1                                      mov lr, pc
006b2454  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b2458  ac 92 9d e5                                      ldr sb, [sp, #0x2ac]
006b245c  70 80 9d e5                                      ldr r8, [sp, #0x70]
006b2460  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006b2464  4b fe ff ea                                      b #0x6b1d98
; mapping-symbol data/literal pool
006b2468  68 8f 23 00                                      .byte 0x68, 0x8f, 0x23, 0x00

; FUNCTION 0x006b246c, declared_size=412, range_size=412, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox18calculateScrollPosEv
; demangled: glitch::gui::CGUIEditBox::calculateScrollPos()
; decoder-mode: arm
006b246c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006b2470  8a 31 d0 e5                                      ldrb r3, [r0, #0x18a]
006b2474  68 d0 4d e2                                      sub sp, sp, #0x68
006b2478  00 40 a0 e1                                      mov r4, r0
006b247c  00 00 53 e3                                      cmp r3, #0
006b2480  01 00 00 1a                                      bne #0x6b248c
006b2484  68 d0 8d e2                                      add sp, sp, #0x68
006b2488  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006b248c  78 11 90 e5                                      ldr r1, [r0, #0x178]
006b2490  cd f6 ff eb                                      bl #0x6affcc
006b2494  00 60 a0 e1                                      mov r6, r0
006b2498  06 10 a0 e1                                      mov r1, r6
006b249c  04 00 a0 e1                                      mov r0, r4
006b24a0  95 f5 ff eb                                      bl #0x6afafc
006b24a4  88 31 d4 e5                                      ldrb r3, [r4, #0x188]
006b24a8  00 00 53 e3                                      cmp r3, #0
006b24ac  0f 00 00 0a                                      beq #0x6b24f0
006b24b0  80 31 94 e5                                      ldr r3, [r4, #0x180]
006b24b4  bc 11 94 e5                                      ldr r1, [r4, #0x1bc]
006b24b8  cc 21 94 e5                                      ldr r2, [r4, #0x1cc]
006b24bc  01 10 83 e0                                      add r1, r3, r1
006b24c0  01 00 52 e1                                      cmp r2, r1
006b24c4  01 20 62 b0                                      rsblt r2, r2, r1
006b24c8  80 21 84 b5                                      strlt r2, [r4, #0x180]
006b24cc  ec ff ff ba                                      blt #0x6b2484
006b24d0  b4 11 94 e5                                      ldr r1, [r4, #0x1b4]
006b24d4  c4 21 94 e5                                      ldr r2, [r4, #0x1c4]
006b24d8  01 30 83 e0                                      add r3, r3, r1
006b24dc  03 00 52 e1                                      cmp r2, r3
006b24e0  03 30 62 c0                                      rsbgt r3, r2, r3
006b24e4  00 30 a0 d3                                      movle r3, #0
006b24e8  80 31 84 e5                                      str r3, [r4, #0x180]
006b24ec  e4 ff ff ea                                      b #0x6b2484
006b24f0  50 31 94 e5                                      ldr r3, [r4, #0x150]
006b24f4  68 51 94 e5                                      ldr r5, [r4, #0x168]
006b24f8  03 00 a0 e1                                      mov r0, r3
006b24fc  00 30 93 e5                                      ldr r3, [r3]
006b2500  0f e0 a0 e1                                      mov lr, pc
006b2504  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006b2508  68 11 94 e5                                      ldr r1, [r4, #0x168]
006b250c  00 00 51 e3                                      cmp r1, #0
006b2510  36 00 00 0a                                      beq #0x6b25f0
006b2514  89 31 d4 e5                                      ldrb r3, [r4, #0x189]
006b2518  00 c0 95 e5                                      ldr ip, [r5]
006b251c  b0 e1 94 e5                                      ldr lr, [r4, #0x1b0]
006b2520  00 00 53 e3                                      cmp r3, #0
006b2524  a4 31 94 15                                      ldrne r3, [r4, #0x1a4]
006b2528  98 11 94 15                                      ldrne r1, [r4, #0x198]
006b252c  78 21 94 15                                      ldrne r2, [r4, #0x178]
006b2530  06 31 93 17                                      ldrne r3, [r3, r6, lsl #2]
006b2534  48 00 a0 13                                      movne r0, #0x48
006b2538  7c 81 94 e5                                      ldr r8, [r4, #0x17c]
006b253c  90 16 21 10                                      mlane r1, r0, r6, r1
006b2540  0c 60 8d e2                                      add r6, sp, #0xc
006b2544  02 30 63 10                                      rsbne r3, r3, r2
006b2548  78 31 94 05                                      ldreq r3, [r4, #0x178]
006b254c  a0 10 84 02                                      addeq r1, r4, #0xa0
006b2550  1c 70 9c e5                                      ldr r7, [ip, #0x1c]
006b2554  00 20 a0 e3                                      mov r2, #0
006b2558  64 c0 8d e2                                      add ip, sp, #0x64
006b255c  06 00 a0 e1                                      mov r0, r6
006b2560  0e 80 88 e0                                      add r8, r8, lr
006b2564  00 c0 8d e5                                      str ip, [sp]
006b2568  b3 01 fb eb                                      bl #0x572c3c
006b256c  5c 00 8d e2                                      add r0, sp, #0x5c
006b2570  05 10 a0 e1                                      mov r1, r5
006b2574  50 20 9d e5                                      ldr r2, [sp, #0x50]
006b2578  37 ff 2f e1                                      blx r7
006b257c  50 00 9d e5                                      ldr r0, [sp, #0x50]
006b2580  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
006b2584  06 00 50 e1                                      cmp r0, r6
006b2588  03 80 88 e0                                      add r8, r8, r3
006b258c  02 00 00 0a                                      beq #0x6b259c
006b2590  00 00 50 e3                                      cmp r0, #0
006b2594  00 00 00 0a                                      beq #0x6b259c
006b2598  ac 77 f1 eb                                      bl #0x310450
006b259c  60 20 9f e5                                      ldr r2, [pc, #0x60]
006b25a0  00 30 95 e5                                      ldr r3, [r5]
006b25a4  05 10 a0 e1                                      mov r1, r5
006b25a8  02 20 8f e0                                      add r2, pc, r2
006b25ac  54 00 8d e2                                      add r0, sp, #0x54
006b25b0  0f e0 a0 e1                                      mov lr, pc
006b25b4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b25b8  54 20 9d e5                                      ldr r2, [sp, #0x54]
006b25bc  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
006b25c0  02 20 88 e0                                      add r2, r8, r2
006b25c4  03 00 52 e1                                      cmp r2, r3
006b25c8  02 30 63 c0                                      rsbgt r3, r3, r2
006b25cc  7c 31 84 c5                                      strgt r3, [r4, #0x17c]
006b25d0  b6 ff ff ca                                      bgt #0x6b24b0
006b25d4  c0 31 94 e5                                      ldr r3, [r4, #0x1c0]
006b25d8  03 00 58 e1                                      cmp r8, r3
006b25dc  08 80 63 b0                                      rsblt r8, r3, r8
006b25e0  00 30 a0 a3                                      movge r3, #0
006b25e4  7c 81 84 b5                                      strlt r8, [r4, #0x17c]
006b25e8  7c 31 84 a5                                      strge r3, [r4, #0x17c]
006b25ec  af ff ff ea                                      b #0x6b24b0
006b25f0  00 30 90 e5                                      ldr r3, [r0]
006b25f4  0f e0 a0 e1                                      mov lr, pc
006b25f8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006b25fc  00 50 a0 e1                                      mov r5, r0
006b2600  c3 ff ff ea                                      b #0x6b2514
; mapping-symbol data/literal pool
006b2604  20 8c 23 00                                      .byte 0x20, 0x8c, 0x23, 0x00

; FUNCTION 0x006b2608, declared_size=704, range_size=704, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBoxC1EPKwbPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiRKNS_4core4rectIiEE
; demangled: glitch::gui::CGUIEditBox::CGUIEditBox(wchar_t const*, bool, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int> const&)
; decoder-mode: arm
006b2608  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b260c  a0 62 9f e5                                      ldr r6, [pc, #0x2a0]
006b2610  a0 c2 9f e5                                      ldr ip, [pc, #0x2a0]
006b2614  a0 e2 9f e5                                      ldr lr, [pc, #0x2a0]
006b2618  06 60 8f e0                                      add r6, pc, r6
006b261c  0c c0 96 e7                                      ldr ip, [r6, ip]
006b2620  0e e0 96 e7                                      ldr lr, [r6, lr]
006b2624  01 80 a0 e3                                      mov r8, #1
006b2628  24 50 9c e5                                      ldr r5, [ip, #0x24]
006b262c  08 e0 8e e2                                      add lr, lr, #8
006b2630  d4 e1 80 e5                                      str lr, [r0, #0x1d4]
006b2634  d8 81 80 e5                                      str r8, [r0, #0x1d8]
006b2638  d0 51 80 e5                                      str r5, [r0, #0x1d0]
006b263c  24 d0 4d e2                                      sub sp, sp, #0x24
006b2640  0c 70 15 e5                                      ldr r7, [r5, #-0xc]
006b2644  28 a0 9c e5                                      ldr sl, [ip, #0x28]
006b2648  50 50 9d e5                                      ldr r5, [sp, #0x50]
006b264c  1d ee 80 e2                                      add lr, r0, #0x1d0
006b2650  07 a0 8e e7                                      str sl, [lr, r7]
006b2654  04 e0 95 e5                                      ldr lr, [r5, #4]
006b2658  08 90 95 e5                                      ldr sb, [r5, #8]
006b265c  0c b0 95 e5                                      ldr fp, [r5, #0xc]
006b2660  0c 20 8d e5                                      str r2, [sp, #0xc]
006b2664  01 70 a0 e1                                      mov r7, r1
006b2668  04 10 8c e2                                      add r1, ip, #4
006b266c  00 c0 95 e5                                      ldr ip, [r5]
006b2670  03 20 a0 e1                                      mov r2, r3
006b2674  03 a0 a0 e1                                      mov sl, r3
006b2678  10 c0 8d e5                                      str ip, [sp, #0x10]
006b267c  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006b2680  48 30 9d e5                                      ldr r3, [sp, #0x48]
006b2684  00 40 a0 e1                                      mov r4, r0
006b2688  00 c0 8d e5                                      str ip, [sp]
006b268c  10 c0 8d e2                                      add ip, sp, #0x10
006b2690  14 e0 8d e5                                      str lr, [sp, #0x14]
006b2694  04 c0 8d e5                                      str ip, [sp, #4]
006b2698  18 90 8d e5                                      str sb, [sp, #0x18]
006b269c  1c b0 8d e5                                      str fp, [sp, #0x1c]
006b26a0  3b f7 ff eb                                      bl #0x6b0394
006b26a4  14 22 9f e5                                      ldr r2, [pc, #0x214]
006b26a8  00 30 a0 e3                                      mov r3, #0
006b26ac  00 10 e0 e3                                      mvn r1, #0
006b26b0  02 20 96 e7                                      ldr r2, [r6, r2]
006b26b4  00 00 57 e3                                      cmp r7, #0
006b26b8  a0 60 84 e2                                      add r6, r4, #0xa0
006b26bc  41 0f 82 e2                                      add r0, r2, #0x104
006b26c0  10 c0 82 e2                                      add ip, r2, #0x10
006b26c4  e4 20 82 e2                                      add r2, r2, #0xe4
006b26c8  d0 21 84 e5                                      str r2, [r4, #0x1d0]
006b26cc  00 c0 84 e5                                      str ip, [r4]
006b26d0  d4 01 84 e5                                      str r0, [r4, #0x1d4]
006b26d4  0c e0 9d e5                                      ldr lr, [sp, #0xc]
006b26d8  65 20 a0 e3                                      mov r2, #0x65
006b26dc  67 21 c4 e5                                      strb r2, [r4, #0x167]
006b26e0  2a 20 a0 e3                                      mov r2, #0x2a
006b26e4  8c 21 84 e5                                      str r2, [r4, #0x18c]
006b26e8  02 20 a0 e3                                      mov r2, #2
006b26ec  58 31 c4 e5                                      strb r3, [r4, #0x158]
006b26f0  5a 31 c4 e5                                      strb r3, [r4, #0x15a]
006b26f4  5c 31 84 e5                                      str r3, [r4, #0x15c]
006b26f8  60 31 84 e5                                      str r3, [r4, #0x160]
006b26fc  68 31 84 e5                                      str r3, [r4, #0x168]
006b2700  6c 31 84 e5                                      str r3, [r4, #0x16c]
006b2704  78 31 84 e5                                      str r3, [r4, #0x178]
006b2708  7c 31 84 e5                                      str r3, [r4, #0x17c]
006b270c  80 31 84 e5                                      str r3, [r4, #0x180]
006b2710  84 31 84 e5                                      str r3, [r4, #0x184]
006b2714  88 31 c4 e5                                      strb r3, [r4, #0x188]
006b2718  89 31 c4 e5                                      strb r3, [r4, #0x189]
006b271c  8b 31 c4 e5                                      strb r3, [r4, #0x18b]
006b2720  90 31 84 e5                                      str r3, [r4, #0x190]
006b2724  98 31 84 e5                                      str r3, [r4, #0x198]
006b2728  9c 31 84 e5                                      str r3, [r4, #0x19c]
006b272c  a0 31 84 e5                                      str r3, [r4, #0x1a0]
006b2730  a4 31 84 e5                                      str r3, [r4, #0x1a4]
006b2734  a8 31 84 e5                                      str r3, [r4, #0x1a8]
006b2738  ac 31 84 e5                                      str r3, [r4, #0x1ac]
006b273c  59 e1 c4 e5                                      strb lr, [r4, #0x159]
006b2740  66 11 c4 e5                                      strb r1, [r4, #0x166]
006b2744  94 21 84 e5                                      str r2, [r4, #0x194]
006b2748  64 11 c4 e5                                      strb r1, [r4, #0x164]
006b274c  65 11 c4 e5                                      strb r1, [r4, #0x165]
006b2750  8a 81 c4 e5                                      strb r8, [r4, #0x18a]
006b2754  b0 31 84 e5                                      str r3, [r4, #0x1b0]
006b2758  b4 31 84 e5                                      str r3, [r4, #0x1b4]
006b275c  bc 81 84 e5                                      str r8, [r4, #0x1bc]
006b2760  b8 81 84 e5                                      str r8, [r4, #0x1b8]
006b2764  00 30 95 e5                                      ldr r3, [r5]
006b2768  c0 31 84 e5                                      str r3, [r4, #0x1c0]
006b276c  04 30 95 e5                                      ldr r3, [r5, #4]
006b2770  c4 31 84 e5                                      str r3, [r4, #0x1c4]
006b2774  08 30 95 e5                                      ldr r3, [r5, #8]
006b2778  c8 31 84 e5                                      str r3, [r4, #0x1c8]
006b277c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006b2780  cc 31 84 e5                                      str r3, [r4, #0x1cc]
006b2784  47 00 00 0a                                      beq #0x6b28a8
006b2788  07 00 a0 e1                                      mov r0, r7
006b278c  3d 71 f1 eb                                      bl #0x30ec88
006b2790  07 10 a0 e1                                      mov r1, r7
006b2794  00 21 87 e0                                      add r2, r7, r0, lsl #2
006b2798  06 00 a0 e1                                      mov r0, r6
006b279c  7f c2 f1 eb                                      bl #0x3231a0
006b27a0  00 30 9a e5                                      ldr r3, [sl]
006b27a4  0a 00 a0 e1                                      mov r0, sl
006b27a8  0f e0 a0 e1                                      mov lr, pc
006b27ac  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006b27b0  00 00 50 e3                                      cmp r0, #0
006b27b4  70 01 84 e5                                      str r0, [r4, #0x170]
006b27b8  04 30 90 15                                      ldrne r3, [r0, #4]
006b27bc  01 30 83 12                                      addne r3, r3, #1
006b27c0  04 30 80 15                                      strne r3, [r0, #4]
006b27c4  01 30 a0 e3                                      mov r3, #1
006b27c8  34 31 c4 e5                                      strb r3, [r4, #0x134]
006b27cc  04 00 a0 e1                                      mov r0, r4
006b27d0  c4 f6 ff eb                                      bl #0x6b02e8
006b27d4  50 31 94 e5                                      ldr r3, [r4, #0x150]
006b27d8  03 00 a0 e1                                      mov r0, r3
006b27dc  00 30 93 e5                                      ldr r3, [r3]
006b27e0  0f e0 a0 e1                                      mov lr, pc
006b27e4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006b27e8  59 31 d4 e5                                      ldrb r3, [r4, #0x159]
006b27ec  00 50 a0 e1                                      mov r5, r0
006b27f0  00 00 53 e3                                      cmp r3, #0
006b27f4  24 00 00 0a                                      beq #0x6b288c
006b27f8  00 00 50 e3                                      cmp r0, #0
006b27fc  22 00 00 0a                                      beq #0x6b288c
006b2800  08 10 a0 e3                                      mov r1, #8
006b2804  00 30 90 e5                                      ldr r3, [r0]
006b2808  c0 61 94 e5                                      ldr r6, [r4, #0x1c0]
006b280c  0f e0 a0 e1                                      mov lr, pc
006b2810  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b2814  01 60 86 e2                                      add r6, r6, #1
006b2818  00 60 86 e0                                      add r6, r6, r0
006b281c  c0 61 84 e5                                      str r6, [r4, #0x1c0]
006b2820  00 30 95 e5                                      ldr r3, [r5]
006b2824  09 10 a0 e3                                      mov r1, #9
006b2828  05 00 a0 e1                                      mov r0, r5
006b282c  c4 61 94 e5                                      ldr r6, [r4, #0x1c4]
006b2830  0f e0 a0 e1                                      mov lr, pc
006b2834  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b2838  01 60 86 e2                                      add r6, r6, #1
006b283c  00 60 86 e0                                      add r6, r6, r0
006b2840  c4 61 84 e5                                      str r6, [r4, #0x1c4]
006b2844  00 30 95 e5                                      ldr r3, [r5]
006b2848  08 10 a0 e3                                      mov r1, #8
006b284c  05 00 a0 e1                                      mov r0, r5
006b2850  c8 61 94 e5                                      ldr r6, [r4, #0x1c8]
006b2854  0f e0 a0 e1                                      mov lr, pc
006b2858  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b285c  00 00 e0 e1                                      mvn r0, r0
006b2860  06 60 80 e0                                      add r6, r0, r6
006b2864  c8 61 84 e5                                      str r6, [r4, #0x1c8]
006b2868  05 00 a0 e1                                      mov r0, r5
006b286c  00 30 95 e5                                      ldr r3, [r5]
006b2870  09 10 a0 e3                                      mov r1, #9
006b2874  cc 51 94 e5                                      ldr r5, [r4, #0x1cc]
006b2878  0f e0 a0 e1                                      mov lr, pc
006b287c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b2880  00 00 e0 e1                                      mvn r0, r0
006b2884  05 50 80 e0                                      add r5, r0, r5
006b2888  cc 51 84 e5                                      str r5, [r4, #0x1cc]
006b288c  04 00 a0 e1                                      mov r0, r4
006b2890  bd f9 ff eb                                      bl #0x6b0f8c
006b2894  04 00 a0 e1                                      mov r0, r4
006b2898  f3 fe ff eb                                      bl #0x6b246c
006b289c  04 00 a0 e1                                      mov r0, r4
006b28a0  24 d0 8d e2                                      add sp, sp, #0x24
006b28a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b28a8  14 70 9f e5                                      ldr r7, [pc, #0x14]
006b28ac  07 70 8f e0                                      add r7, pc, r7
006b28b0  b4 ff ff ea                                      b #0x6b2788
; mapping-symbol data/literal pool
006b28b4  78 24 2e 00 ac 36 00 00 44 2b 00 00 f4 46 00 00  .byte 0x78, 0x24, 0x2e, 0x00, 0xac, 0x36, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xf4, 0x46, 0x00, 0x00
006b28c4  64 c3 20 00                                      .byte 0x64, 0xc3, 0x20, 0x00

; FUNCTION 0x006b28c8, declared_size=628, range_size=628, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBoxC2EPKwbPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiRKNS_4core4rectIiEE
; demangled: glitch::gui::CGUIEditBox::CGUIEditBox(wchar_t const*, bool, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int> const&)
; decoder-mode: arm
006b28c8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006b28cc  18 d0 4d e2                                      sub sp, sp, #0x18
006b28d0  44 50 9d e5                                      ldr r5, [sp, #0x44]
006b28d4  38 80 9d e5                                      ldr r8, [sp, #0x38]
006b28d8  01 70 a0 e1                                      mov r7, r1
006b28dc  08 c0 95 e5                                      ldr ip, [r5, #8]
006b28e0  0c 40 95 e5                                      ldr r4, [r5, #0xc]
006b28e4  00 42 95 e8                                      ldm r5, {sb, lr}
006b28e8  10 c0 8d e5                                      str ip, [sp, #0x10]
006b28ec  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006b28f0  02 60 a0 e1                                      mov r6, r2
006b28f4  03 a0 a0 e1                                      mov sl, r3
006b28f8  04 10 81 e2                                      add r1, r1, #4
006b28fc  08 20 a0 e1                                      mov r2, r8
006b2900  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006b2904  00 c0 8d e5                                      str ip, [sp]
006b2908  08 c0 8d e2                                      add ip, sp, #8
006b290c  14 40 8d e5                                      str r4, [sp, #0x14]
006b2910  04 c0 8d e5                                      str ip, [sp, #4]
006b2914  00 40 a0 e1                                      mov r4, r0
006b2918  08 90 8d e5                                      str sb, [sp, #8]
006b291c  0c e0 8d e5                                      str lr, [sp, #0xc]
006b2920  9b f6 ff eb                                      bl #0x6b0394
006b2924  00 20 97 e5                                      ldr r2, [r7]
006b2928  00 30 a0 e3                                      mov r3, #0
006b292c  00 10 e0 e3                                      mvn r1, #0
006b2930  00 20 84 e5                                      str r2, [r4]
006b2934  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006b2938  1c c0 97 e5                                      ldr ip, [r7, #0x1c]
006b293c  01 20 a0 e3                                      mov r2, #1
006b2940  03 00 56 e1                                      cmp r6, r3
006b2944  00 c0 84 e7                                      str ip, [r4, r0]
006b2948  00 00 94 e5                                      ldr r0, [r4]
006b294c  20 c0 97 e5                                      ldr ip, [r7, #0x20]
006b2950  a0 70 84 e2                                      add r7, r4, #0xa0
006b2954  10 00 10 e5                                      ldr r0, [r0, #-0x10]
006b2958  00 c0 84 e7                                      str ip, [r4, r0]
006b295c  65 00 a0 e3                                      mov r0, #0x65
006b2960  67 01 c4 e5                                      strb r0, [r4, #0x167]
006b2964  2a 00 a0 e3                                      mov r0, #0x2a
006b2968  8c 01 84 e5                                      str r0, [r4, #0x18c]
006b296c  02 00 a0 e3                                      mov r0, #2
006b2970  58 31 c4 e5                                      strb r3, [r4, #0x158]
006b2974  5a 31 c4 e5                                      strb r3, [r4, #0x15a]
006b2978  5c 31 84 e5                                      str r3, [r4, #0x15c]
006b297c  60 31 84 e5                                      str r3, [r4, #0x160]
006b2980  68 31 84 e5                                      str r3, [r4, #0x168]
006b2984  6c 31 84 e5                                      str r3, [r4, #0x16c]
006b2988  78 31 84 e5                                      str r3, [r4, #0x178]
006b298c  7c 31 84 e5                                      str r3, [r4, #0x17c]
006b2990  80 31 84 e5                                      str r3, [r4, #0x180]
006b2994  84 31 84 e5                                      str r3, [r4, #0x184]
006b2998  88 31 c4 e5                                      strb r3, [r4, #0x188]
006b299c  89 31 c4 e5                                      strb r3, [r4, #0x189]
006b29a0  8b 31 c4 e5                                      strb r3, [r4, #0x18b]
006b29a4  90 31 84 e5                                      str r3, [r4, #0x190]
006b29a8  98 31 84 e5                                      str r3, [r4, #0x198]
006b29ac  9c 31 84 e5                                      str r3, [r4, #0x19c]
006b29b0  59 a1 c4 e5                                      strb sl, [r4, #0x159]
006b29b4  66 11 c4 e5                                      strb r1, [r4, #0x166]
006b29b8  94 01 84 e5                                      str r0, [r4, #0x194]
006b29bc  64 11 c4 e5                                      strb r1, [r4, #0x164]
006b29c0  65 11 c4 e5                                      strb r1, [r4, #0x165]
006b29c4  8a 21 c4 e5                                      strb r2, [r4, #0x18a]
006b29c8  a0 31 84 e5                                      str r3, [r4, #0x1a0]
006b29cc  b4 31 84 e5                                      str r3, [r4, #0x1b4]
006b29d0  bc 21 84 e5                                      str r2, [r4, #0x1bc]
006b29d4  a4 31 84 e5                                      str r3, [r4, #0x1a4]
006b29d8  a8 31 84 e5                                      str r3, [r4, #0x1a8]
006b29dc  ac 31 84 e5                                      str r3, [r4, #0x1ac]
006b29e0  b0 31 84 e5                                      str r3, [r4, #0x1b0]
006b29e4  b8 21 84 e5                                      str r2, [r4, #0x1b8]
006b29e8  00 30 95 e5                                      ldr r3, [r5]
006b29ec  c0 31 84 e5                                      str r3, [r4, #0x1c0]
006b29f0  04 30 95 e5                                      ldr r3, [r5, #4]
006b29f4  c4 31 84 e5                                      str r3, [r4, #0x1c4]
006b29f8  08 30 95 e5                                      ldr r3, [r5, #8]
006b29fc  c8 31 84 e5                                      str r3, [r4, #0x1c8]
006b2a00  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006b2a04  cc 31 84 e5                                      str r3, [r4, #0x1cc]
006b2a08  47 00 00 0a                                      beq #0x6b2b2c
006b2a0c  06 00 a0 e1                                      mov r0, r6
006b2a10  9c 70 f1 eb                                      bl #0x30ec88
006b2a14  06 10 a0 e1                                      mov r1, r6
006b2a18  00 21 86 e0                                      add r2, r6, r0, lsl #2
006b2a1c  07 00 a0 e1                                      mov r0, r7
006b2a20  de c1 f1 eb                                      bl #0x3231a0
006b2a24  00 30 98 e5                                      ldr r3, [r8]
006b2a28  08 00 a0 e1                                      mov r0, r8
006b2a2c  0f e0 a0 e1                                      mov lr, pc
006b2a30  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006b2a34  00 00 50 e3                                      cmp r0, #0
006b2a38  70 01 84 e5                                      str r0, [r4, #0x170]
006b2a3c  04 30 90 15                                      ldrne r3, [r0, #4]
006b2a40  01 30 83 12                                      addne r3, r3, #1
006b2a44  04 30 80 15                                      strne r3, [r0, #4]
006b2a48  01 30 a0 e3                                      mov r3, #1
006b2a4c  34 31 c4 e5                                      strb r3, [r4, #0x134]
006b2a50  04 00 a0 e1                                      mov r0, r4
006b2a54  23 f6 ff eb                                      bl #0x6b02e8
006b2a58  50 31 94 e5                                      ldr r3, [r4, #0x150]
006b2a5c  03 00 a0 e1                                      mov r0, r3
006b2a60  00 30 93 e5                                      ldr r3, [r3]
006b2a64  0f e0 a0 e1                                      mov lr, pc
006b2a68  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006b2a6c  59 31 d4 e5                                      ldrb r3, [r4, #0x159]
006b2a70  00 50 a0 e1                                      mov r5, r0
006b2a74  00 00 53 e3                                      cmp r3, #0
006b2a78  24 00 00 0a                                      beq #0x6b2b10
006b2a7c  00 00 50 e3                                      cmp r0, #0
006b2a80  22 00 00 0a                                      beq #0x6b2b10
006b2a84  08 10 a0 e3                                      mov r1, #8
006b2a88  00 30 90 e5                                      ldr r3, [r0]
006b2a8c  c0 61 94 e5                                      ldr r6, [r4, #0x1c0]
006b2a90  0f e0 a0 e1                                      mov lr, pc
006b2a94  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b2a98  01 60 86 e2                                      add r6, r6, #1
006b2a9c  00 60 86 e0                                      add r6, r6, r0
006b2aa0  c0 61 84 e5                                      str r6, [r4, #0x1c0]
006b2aa4  00 30 95 e5                                      ldr r3, [r5]
006b2aa8  09 10 a0 e3                                      mov r1, #9
006b2aac  05 00 a0 e1                                      mov r0, r5
006b2ab0  c4 61 94 e5                                      ldr r6, [r4, #0x1c4]
006b2ab4  0f e0 a0 e1                                      mov lr, pc
006b2ab8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b2abc  01 60 86 e2                                      add r6, r6, #1
006b2ac0  00 60 86 e0                                      add r6, r6, r0
006b2ac4  c4 61 84 e5                                      str r6, [r4, #0x1c4]
006b2ac8  00 30 95 e5                                      ldr r3, [r5]
006b2acc  08 10 a0 e3                                      mov r1, #8
006b2ad0  05 00 a0 e1                                      mov r0, r5
006b2ad4  c8 61 94 e5                                      ldr r6, [r4, #0x1c8]
006b2ad8  0f e0 a0 e1                                      mov lr, pc
006b2adc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b2ae0  00 00 e0 e1                                      mvn r0, r0
006b2ae4  06 60 80 e0                                      add r6, r0, r6
006b2ae8  c8 61 84 e5                                      str r6, [r4, #0x1c8]
006b2aec  05 00 a0 e1                                      mov r0, r5
006b2af0  00 30 95 e5                                      ldr r3, [r5]
006b2af4  09 10 a0 e3                                      mov r1, #9
006b2af8  cc 51 94 e5                                      ldr r5, [r4, #0x1cc]
006b2afc  0f e0 a0 e1                                      mov lr, pc
006b2b00  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b2b04  00 00 e0 e1                                      mvn r0, r0
006b2b08  05 50 80 e0                                      add r5, r0, r5
006b2b0c  cc 51 84 e5                                      str r5, [r4, #0x1cc]
006b2b10  04 00 a0 e1                                      mov r0, r4
006b2b14  1c f9 ff eb                                      bl #0x6b0f8c
006b2b18  04 00 a0 e1                                      mov r0, r4
006b2b1c  52 fe ff eb                                      bl #0x6b246c
006b2b20  04 00 a0 e1                                      mov r0, r4
006b2b24  18 d0 8d e2                                      add sp, sp, #0x18
006b2b28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006b2b2c  04 60 9f e5                                      ldr r6, [pc, #4]
006b2b30  06 60 8f e0                                      add r6, pc, r6
006b2b34  b4 ff ff ea                                      b #0x6b2a0c
; mapping-symbol data/literal pool
006b2b38  e0 c0 20 00                                      .byte 0xe0, 0xc0, 0x20, 0x00

; FUNCTION 0x006b2b3c, declared_size=388, range_size=388, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox12processMouseERKNS_6SEventE
; demangled: glitch::gui::CGUIEditBox::processMouse(glitch::SEvent const&)
; decoder-mode: arm
006b2b3c  70 40 2d e9                                      push {r4, r5, r6, lr}
006b2b40  14 30 91 e5                                      ldr r3, [r1, #0x14]
006b2b44  01 50 a0 e1                                      mov r5, r1
006b2b48  00 40 a0 e1                                      mov r4, r0
006b2b4c  03 00 53 e3                                      cmp r3, #3
006b2b50  2c 00 00 0a                                      beq #0x6b2c08
006b2b54  06 00 53 e3                                      cmp r3, #6
006b2b58  25 00 00 0a                                      beq #0x6b2bf4
006b2b5c  00 00 53 e3                                      cmp r3, #0
006b2b60  26 00 00 1a                                      bne #0x6b2c00
006b2b64  50 31 90 e5                                      ldr r3, [r0, #0x150]
006b2b68  00 10 a0 e1                                      mov r1, r0
006b2b6c  03 00 a0 e1                                      mov r0, r3
006b2b70  00 30 93 e5                                      ldr r3, [r3]
006b2b74  0f e0 a0 e1                                      mov lr, pc
006b2b78  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b2b7c  00 00 50 e3                                      cmp r0, #0
006b2b80  3f 00 00 0a                                      beq #0x6b2c84
006b2b84  08 10 95 e5                                      ldr r1, [r5, #8]
006b2b88  48 30 94 e5                                      ldr r3, [r4, #0x48]
006b2b8c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
006b2b90  03 00 51 e1                                      cmp r1, r3
006b2b94  19 00 00 ba                                      blt #0x6b2c00
006b2b98  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006b2b9c  03 00 52 e1                                      cmp r2, r3
006b2ba0  16 00 00 ba                                      blt #0x6b2c00
006b2ba4  50 30 94 e5                                      ldr r3, [r4, #0x50]
006b2ba8  03 00 51 e1                                      cmp r1, r3
006b2bac  13 00 00 ca                                      bgt #0x6b2c00
006b2bb0  54 30 94 e5                                      ldr r3, [r4, #0x54]
006b2bb4  03 00 52 e1                                      cmp r2, r3
006b2bb8  10 00 00 ca                                      bgt #0x6b2c00
006b2bbc  04 00 a0 e1                                      mov r0, r4
006b2bc0  54 f4 ff eb                                      bl #0x6afd18
006b2bc4  58 31 d4 e5                                      ldrb r3, [r4, #0x158]
006b2bc8  78 01 84 e5                                      str r0, [r4, #0x178]
006b2bcc  01 60 a0 e3                                      mov r6, #1
006b2bd0  00 00 53 e3                                      cmp r3, #0
006b2bd4  78 31 94 e5                                      ldr r3, [r4, #0x178]
006b2bd8  5c 01 84 05                                      streq r0, [r4, #0x15c]
006b2bdc  58 61 c4 e5                                      strb r6, [r4, #0x158]
006b2be0  04 00 a0 e1                                      mov r0, r4
006b2be4  60 31 84 e5                                      str r3, [r4, #0x160]
006b2be8  1f fe ff eb                                      bl #0x6b246c
006b2bec  06 00 a0 e1                                      mov r0, r6
006b2bf0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b2bf4  58 31 d0 e5                                      ldrb r3, [r0, #0x158]
006b2bf8  00 00 53 e3                                      cmp r3, #0
006b2bfc  17 00 00 1a                                      bne #0x6b2c60
006b2c00  00 00 a0 e3                                      mov r0, #0
006b2c04  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b2c08  50 31 90 e5                                      ldr r3, [r0, #0x150]
006b2c0c  00 10 a0 e1                                      mov r1, r0
006b2c10  03 00 a0 e1                                      mov r0, r3
006b2c14  00 30 93 e5                                      ldr r3, [r3]
006b2c18  0f e0 a0 e1                                      mov lr, pc
006b2c1c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006b2c20  00 00 50 e3                                      cmp r0, #0
006b2c24  f5 ff ff 0a                                      beq #0x6b2c00
006b2c28  0c 20 95 e5                                      ldr r2, [r5, #0xc]
006b2c2c  08 10 95 e5                                      ldr r1, [r5, #8]
006b2c30  04 00 a0 e1                                      mov r0, r4
006b2c34  37 f4 ff eb                                      bl #0x6afd18
006b2c38  58 31 d4 e5                                      ldrb r3, [r4, #0x158]
006b2c3c  78 01 84 e5                                      str r0, [r4, #0x178]
006b2c40  00 00 53 e3                                      cmp r3, #0
006b2c44  00 30 a0 e3                                      mov r3, #0
006b2c48  60 01 84 15                                      strne r0, [r4, #0x160]
006b2c4c  58 31 c4 e5                                      strb r3, [r4, #0x158]
006b2c50  04 00 a0 e1                                      mov r0, r4
006b2c54  04 fe ff eb                                      bl #0x6b246c
006b2c58  01 00 a0 e3                                      mov r0, #1
006b2c5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b2c60  0c 20 91 e5                                      ldr r2, [r1, #0xc]
006b2c64  08 10 91 e5                                      ldr r1, [r1, #8]
006b2c68  2a f4 ff eb                                      bl #0x6afd18
006b2c6c  60 01 84 e5                                      str r0, [r4, #0x160]
006b2c70  78 01 84 e5                                      str r0, [r4, #0x178]
006b2c74  04 00 a0 e1                                      mov r0, r4
006b2c78  fb fd ff eb                                      bl #0x6b246c
006b2c7c  01 00 a0 e3                                      mov r0, #1
006b2c80  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b2c84  96 60 fd eb                                      bl #0x60aee4
006b2c88  01 60 a0 e3                                      mov r6, #1
006b2c8c  74 01 84 e5                                      str r0, [r4, #0x174]
006b2c90  58 61 c4 e5                                      strb r6, [r4, #0x158]
006b2c94  0c 20 95 e5                                      ldr r2, [r5, #0xc]
006b2c98  08 10 95 e5                                      ldr r1, [r5, #8]
006b2c9c  04 00 a0 e1                                      mov r0, r4
006b2ca0  1c f4 ff eb                                      bl #0x6afd18
006b2ca4  60 01 84 e5                                      str r0, [r4, #0x160]
006b2ca8  78 01 84 e5                                      str r0, [r4, #0x178]
006b2cac  5c 01 84 e5                                      str r0, [r4, #0x15c]
006b2cb0  04 00 a0 e1                                      mov r0, r4
006b2cb4  ec fd ff eb                                      bl #0x6b246c
006b2cb8  06 00 a0 e1                                      mov r0, r6
006b2cbc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006b2cc0, declared_size=4272, range_size=4272, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox10processKeyERKNS_6SEventE
; demangled: glitch::gui::CGUIEditBox::processKey(glitch::SEvent const&)
; decoder-mode: arm
006b2cc0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b2cc4  48 4f 9f e5                                      ldr r4, [pc, #0xf48]
006b2cc8  48 8f 9f e5                                      ldr r8, [pc, #0xf48]
006b2ccc  10 30 d1 e5                                      ldrb r3, [r1, #0x10]
006b2cd0  04 40 8f e0                                      add r4, pc, r4
006b2cd4  08 20 94 e7                                      ldr r2, [r4, r8]
006b2cd8  6d de 4d e2                                      sub sp, sp, #0x6d0
006b2cdc  0c d0 4d e2                                      sub sp, sp, #0xc
006b2ce0  00 20 92 e5                                      ldr r2, [r2]
006b2ce4  00 00 53 e3                                      cmp r3, #0
006b2ce8  01 60 a0 e1                                      mov r6, r1
006b2cec  00 50 a0 e1                                      mov r5, r0
006b2cf0  d4 26 8d e5                                      str r2, [sp, #0x6d4]
006b2cf4  d2 00 00 0a                                      beq #0x6b3044
006b2cf8  12 70 d1 e5                                      ldrb r7, [r1, #0x12]
006b2cfc  00 00 57 e3                                      cmp r7, #0
006b2d00  3a 00 00 0a                                      beq #0x6b2df0
006b2d04  0c 30 91 e5                                      ldr r3, [r1, #0xc]
006b2d08  23 30 43 e2                                      sub r3, r3, #0x23
006b2d0c  35 00 53 e3                                      cmp r3, #0x35
006b2d10  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
006b2d14  ca 00 00 ea                                      b #0x6b3044
006b2d18  0c 01 00 ea                                      b #0x6b3150
006b2d1c  19 01 00 ea                                      b #0x6b3188
006b2d20  c7 00 00 ea                                      b #0x6b3044
006b2d24  c6 00 00 ea                                      b #0x6b3044
006b2d28  c5 00 00 ea                                      b #0x6b3044
006b2d2c  c4 00 00 ea                                      b #0x6b3044
006b2d30  c3 00 00 ea                                      b #0x6b3044
006b2d34  c2 00 00 ea                                      b #0x6b3044
006b2d38  c1 00 00 ea                                      b #0x6b3044
006b2d3c  c0 00 00 ea                                      b #0x6b3044
006b2d40  bf 00 00 ea                                      b #0x6b3044
006b2d44  be 00 00 ea                                      b #0x6b3044
006b2d48  bd 00 00 ea                                      b #0x6b3044
006b2d4c  bc 00 00 ea                                      b #0x6b3044
006b2d50  bb 00 00 ea                                      b #0x6b3044
006b2d54  ba 00 00 ea                                      b #0x6b3044
006b2d58  b9 00 00 ea                                      b #0x6b3044
006b2d5c  b8 00 00 ea                                      b #0x6b3044
006b2d60  b7 00 00 ea                                      b #0x6b3044
006b2d64  b6 00 00 ea                                      b #0x6b3044
006b2d68  b5 00 00 ea                                      b #0x6b3044
006b2d6c  b4 00 00 ea                                      b #0x6b3044
006b2d70  b3 00 00 ea                                      b #0x6b3044
006b2d74  b2 00 00 ea                                      b #0x6b3044
006b2d78  b1 00 00 ea                                      b #0x6b3044
006b2d7c  b0 00 00 ea                                      b #0x6b3044
006b2d80  af 00 00 ea                                      b #0x6b3044
006b2d84  ae 00 00 ea                                      b #0x6b3044
006b2d88  ad 00 00 ea                                      b #0x6b3044
006b2d8c  ac 00 00 ea                                      b #0x6b3044
006b2d90  90 01 00 ea                                      b #0x6b33d8
006b2d94  aa 00 00 ea                                      b #0x6b3044
006b2d98  06 01 00 ea                                      b #0x6b31b8
006b2d9c  a8 00 00 ea                                      b #0x6b3044
006b2da0  a7 00 00 ea                                      b #0x6b3044
006b2da4  a6 00 00 ea                                      b #0x6b3044
006b2da8  a5 00 00 ea                                      b #0x6b3044
006b2dac  a4 00 00 ea                                      b #0x6b3044
006b2db0  a3 00 00 ea                                      b #0x6b3044
006b2db4  a2 00 00 ea                                      b #0x6b3044
006b2db8  a1 00 00 ea                                      b #0x6b3044
006b2dbc  a0 00 00 ea                                      b #0x6b3044
006b2dc0  9f 00 00 ea                                      b #0x6b3044
006b2dc4  9e 00 00 ea                                      b #0x6b3044
006b2dc8  9d 00 00 ea                                      b #0x6b3044
006b2dcc  9c 00 00 ea                                      b #0x6b3044
006b2dd0  9b 00 00 ea                                      b #0x6b3044
006b2dd4  9a 00 00 ea                                      b #0x6b3044
006b2dd8  99 00 00 ea                                      b #0x6b3044
006b2ddc  98 00 00 ea                                      b #0x6b3044
006b2de0  97 00 00 ea                                      b #0x6b3044
006b2de4  1d 01 00 ea                                      b #0x6b3260
006b2de8  95 00 00 ea                                      b #0x6b3044
006b2dec  9d 00 00 ea                                      b #0x6b3068
006b2df0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006b2df4  08 30 43 e2                                      sub r3, r3, #8
006b2df8  7f 00 53 e3                                      cmp r3, #0x7f
006b2dfc  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
006b2e00  16 02 00 ea                                      b #0x6b3660
006b2e04  19 02 00 ea                                      b #0x6b3670
006b2e08  8d 00 00 ea                                      b #0x6b3044
006b2e0c  13 02 00 ea                                      b #0x6b3660
006b2e10  12 02 00 ea                                      b #0x6b3660
006b2e14  11 02 00 ea                                      b #0x6b3660
006b2e18  56 02 00 ea                                      b #0x6b3778
006b2e1c  0f 02 00 ea                                      b #0x6b3660
006b2e20  0e 02 00 ea                                      b #0x6b3660
006b2e24  86 00 00 ea                                      b #0x6b3044
006b2e28  0c 02 00 ea                                      b #0x6b3660
006b2e2c  0b 02 00 ea                                      b #0x6b3660
006b2e30  0a 02 00 ea                                      b #0x6b3660
006b2e34  09 02 00 ea                                      b #0x6b3660
006b2e38  08 02 00 ea                                      b #0x6b3660
006b2e3c  07 02 00 ea                                      b #0x6b3660
006b2e40  06 02 00 ea                                      b #0x6b3660
006b2e44  05 02 00 ea                                      b #0x6b3660
006b2e48  04 02 00 ea                                      b #0x6b3660
006b2e4c  03 02 00 ea                                      b #0x6b3660
006b2e50  7b 00 00 ea                                      b #0x6b3044
006b2e54  01 02 00 ea                                      b #0x6b3660
006b2e58  00 02 00 ea                                      b #0x6b3660
006b2e5c  ff 01 00 ea                                      b #0x6b3660
006b2e60  fe 01 00 ea                                      b #0x6b3660
006b2e64  fd 01 00 ea                                      b #0x6b3660
006b2e68  fc 01 00 ea                                      b #0x6b3660
006b2e6c  fb 01 00 ea                                      b #0x6b3660
006b2e70  47 02 00 ea                                      b #0x6b3794
006b2e74  85 02 00 ea                                      b #0x6b3890
006b2e78  74 02 00 ea                                      b #0x6b3850
006b2e7c  9d 02 00 ea                                      b #0x6b38f8
006b2e80  ab 01 00 ea                                      b #0x6b3534
006b2e84  c0 01 00 ea                                      b #0x6b358c
006b2e88  f4 01 00 ea                                      b #0x6b3660
006b2e8c  f3 01 00 ea                                      b #0x6b3660
006b2e90  f2 01 00 ea                                      b #0x6b3660
006b2e94  f1 01 00 ea                                      b #0x6b3660
006b2e98  f0 01 00 ea                                      b #0x6b3660
006b2e9c  56 01 00 ea                                      b #0x6b33fc
006b2ea0  ee 01 00 ea                                      b #0x6b3660
006b2ea4  ed 01 00 ea                                      b #0x6b3660
006b2ea8  ec 01 00 ea                                      b #0x6b3660
006b2eac  eb 01 00 ea                                      b #0x6b3660
006b2eb0  ea 01 00 ea                                      b #0x6b3660
006b2eb4  e9 01 00 ea                                      b #0x6b3660
006b2eb8  e8 01 00 ea                                      b #0x6b3660
006b2ebc  e7 01 00 ea                                      b #0x6b3660
006b2ec0  e6 01 00 ea                                      b #0x6b3660
006b2ec4  e5 01 00 ea                                      b #0x6b3660
006b2ec8  e4 01 00 ea                                      b #0x6b3660
006b2ecc  e3 01 00 ea                                      b #0x6b3660
006b2ed0  e2 01 00 ea                                      b #0x6b3660
006b2ed4  e1 01 00 ea                                      b #0x6b3660
006b2ed8  e0 01 00 ea                                      b #0x6b3660
006b2edc  df 01 00 ea                                      b #0x6b3660
006b2ee0  de 01 00 ea                                      b #0x6b3660
006b2ee4  dd 01 00 ea                                      b #0x6b3660
006b2ee8  dc 01 00 ea                                      b #0x6b3660
006b2eec  db 01 00 ea                                      b #0x6b3660
006b2ef0  da 01 00 ea                                      b #0x6b3660
006b2ef4  d9 01 00 ea                                      b #0x6b3660
006b2ef8  d8 01 00 ea                                      b #0x6b3660
006b2efc  d7 01 00 ea                                      b #0x6b3660
006b2f00  d6 01 00 ea                                      b #0x6b3660
006b2f04  d5 01 00 ea                                      b #0x6b3660
006b2f08  d4 01 00 ea                                      b #0x6b3660
006b2f0c  d3 01 00 ea                                      b #0x6b3660
006b2f10  d2 01 00 ea                                      b #0x6b3660
006b2f14  d1 01 00 ea                                      b #0x6b3660
006b2f18  d0 01 00 ea                                      b #0x6b3660
006b2f1c  cf 01 00 ea                                      b #0x6b3660
006b2f20  ce 01 00 ea                                      b #0x6b3660
006b2f24  cd 01 00 ea                                      b #0x6b3660
006b2f28  cc 01 00 ea                                      b #0x6b3660
006b2f2c  cb 01 00 ea                                      b #0x6b3660
006b2f30  ca 01 00 ea                                      b #0x6b3660
006b2f34  c9 01 00 ea                                      b #0x6b3660
006b2f38  c8 01 00 ea                                      b #0x6b3660
006b2f3c  c7 01 00 ea                                      b #0x6b3660
006b2f40  c6 01 00 ea                                      b #0x6b3660
006b2f44  c5 01 00 ea                                      b #0x6b3660
006b2f48  c4 01 00 ea                                      b #0x6b3660
006b2f4c  c3 01 00 ea                                      b #0x6b3660
006b2f50  c2 01 00 ea                                      b #0x6b3660
006b2f54  c1 01 00 ea                                      b #0x6b3660
006b2f58  c0 01 00 ea                                      b #0x6b3660
006b2f5c  bf 01 00 ea                                      b #0x6b3660
006b2f60  be 01 00 ea                                      b #0x6b3660
006b2f64  bd 01 00 ea                                      b #0x6b3660
006b2f68  bc 01 00 ea                                      b #0x6b3660
006b2f6c  bb 01 00 ea                                      b #0x6b3660
006b2f70  ba 01 00 ea                                      b #0x6b3660
006b2f74  b9 01 00 ea                                      b #0x6b3660
006b2f78  b8 01 00 ea                                      b #0x6b3660
006b2f7c  b7 01 00 ea                                      b #0x6b3660
006b2f80  b6 01 00 ea                                      b #0x6b3660
006b2f84  b5 01 00 ea                                      b #0x6b3660
006b2f88  b4 01 00 ea                                      b #0x6b3660
006b2f8c  b3 01 00 ea                                      b #0x6b3660
006b2f90  b2 01 00 ea                                      b #0x6b3660
006b2f94  b1 01 00 ea                                      b #0x6b3660
006b2f98  b0 01 00 ea                                      b #0x6b3660
006b2f9c  af 01 00 ea                                      b #0x6b3660
006b2fa0  ae 01 00 ea                                      b #0x6b3660
006b2fa4  26 00 00 ea                                      b #0x6b3044
006b2fa8  25 00 00 ea                                      b #0x6b3044
006b2fac  24 00 00 ea                                      b #0x6b3044
006b2fb0  23 00 00 ea                                      b #0x6b3044
006b2fb4  22 00 00 ea                                      b #0x6b3044
006b2fb8  21 00 00 ea                                      b #0x6b3044
006b2fbc  20 00 00 ea                                      b #0x6b3044
006b2fc0  1f 00 00 ea                                      b #0x6b3044
006b2fc4  1e 00 00 ea                                      b #0x6b3044
006b2fc8  1d 00 00 ea                                      b #0x6b3044
006b2fcc  1c 00 00 ea                                      b #0x6b3044
006b2fd0  1b 00 00 ea                                      b #0x6b3044
006b2fd4  1a 00 00 ea                                      b #0x6b3044
006b2fd8  19 00 00 ea                                      b #0x6b3044
006b2fdc  18 00 00 ea                                      b #0x6b3044
006b2fe0  17 00 00 ea                                      b #0x6b3044
006b2fe4  16 00 00 ea                                      b #0x6b3044
006b2fe8  15 00 00 ea                                      b #0x6b3044
006b2fec  14 00 00 ea                                      b #0x6b3044
006b2ff0  13 00 00 ea                                      b #0x6b3044
006b2ff4  12 00 00 ea                                      b #0x6b3044
006b2ff8  11 00 00 ea                                      b #0x6b3044
006b2ffc  10 00 00 ea                                      b #0x6b3044
006b3000  0f 00 00 ea                                      b #0x6b3044
006b3004  88 31 d5 e5                                      ldrb r3, [r5, #0x188]
006b3008  00 00 53 e3                                      cmp r3, #0
006b300c  0c 00 00 0a                                      beq #0x6b3044
006b3010  9c 21 95 e5                                      ldr r2, [r5, #0x19c]
006b3014  98 31 95 e5                                      ldr r3, [r5, #0x198]
006b3018  02 30 63 e0                                      rsb r3, r3, r2
006b301c  c3 31 a0 e1                                      asr r3, r3, #3
006b3020  83 21 a0 e1                                      lsl r2, r3, #3
006b3024  02 20 63 e0                                      rsb r2, r3, r2
006b3028  02 23 82 e0                                      add r2, r2, r2, lsl #6
006b302c  82 21 83 e0                                      add r2, r3, r2, lsl #3
006b3030  82 17 a0 e1                                      lsl r1, r2, #0xf
006b3034  01 20 62 e0                                      rsb r2, r2, r1
006b3038  82 31 83 e0                                      add r3, r3, r2, lsl #3
006b303c  01 00 53 e3                                      cmp r3, #1
006b3040  54 01 00 8a                                      bhi #0x6b3598
006b3044  00 00 a0 e3                                      mov r0, #0
006b3048  08 30 94 e7                                      ldr r3, [r4, r8]
006b304c  d4 26 9d e5                                      ldr r2, [sp, #0x6d4]
006b3050  00 30 93 e5                                      ldr r3, [r3]
006b3054  03 00 52 e1                                      cmp r2, r3
006b3058  16 03 00 1a                                      bne #0x6b3cb8
006b305c  b7 df 8d e2                                      add sp, sp, #0x2dc
006b3060  01 db 8d e2                                      add sp, sp, #0x400
006b3064  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b3068  8b 71 d0 e5                                      ldrb r7, [r0, #0x18b]
006b306c  00 00 57 e3                                      cmp r7, #0
006b3070  32 00 00 1a                                      bne #0x6b3140
006b3074  70 31 90 e5                                      ldr r3, [r0, #0x170]
006b3078  00 00 53 e3                                      cmp r3, #0
006b307c  2f 00 00 0a                                      beq #0x6b3140
006b3080  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006b3084  60 91 90 e5                                      ldr sb, [r0, #0x160]
006b3088  09 00 53 e1                                      cmp r3, sb
006b308c  2b 00 00 0a                                      beq #0x6b3140
006b3090  5f be 8d e2                                      add fp, sp, #0x5f0
006b3094  03 00 59 e1                                      cmp sb, r3
006b3098  09 10 a0 a1                                      movge r1, sb
006b309c  03 10 a0 b1                                      movlt r1, r3
006b30a0  0c b0 8b e2                                      add fp, fp, #0xc
006b30a4  03 00 59 e1                                      cmp sb, r3
006b30a8  03 90 a0 a1                                      movge sb, r3
006b30ac  a0 a0 80 e2                                      add sl, r0, #0xa0
006b30b0  6a ce 8d e2                                      add ip, sp, #0x6a0
006b30b4  01 30 69 e0                                      rsb r3, sb, r1
006b30b8  04 c0 8c e2                                      add ip, ip, #4
006b30bc  09 20 a0 e1                                      mov r2, sb
006b30c0  08 10 8d e5                                      str r1, [sp, #8]
006b30c4  0b 00 a0 e1                                      mov r0, fp
006b30c8  0a 10 a0 e1                                      mov r1, sl
006b30cc  04 c0 8d e5                                      str ip, [sp, #4]
006b30d0  26 f4 ff eb                                      bl #0x6b0170
006b30d4  40 16 9d e5                                      ldr r1, [sp, #0x640]
006b30d8  04 00 9d e5                                      ldr r0, [sp, #4]
006b30dc  dd ce f1 eb                                      bl #0x326c58
006b30e0  0b 00 a0 e1                                      mov r0, fp
006b30e4  9f 3c fa eb                                      bl #0x542368
006b30e8  70 31 95 e5                                      ldr r3, [r5, #0x170]
006b30ec  b8 16 9d e5                                      ldr r1, [sp, #0x6b8]
006b30f0  03 00 a0 e1                                      mov r0, r3
006b30f4  00 30 93 e5                                      ldr r3, [r3]
006b30f8  0f e0 a0 e1                                      mov lr, pc
006b30fc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006b3100  99 30 d5 e5                                      ldrb r3, [r5, #0x99]
006b3104  00 00 53 e3                                      cmp r3, #0
006b3108  03 70 a0 01                                      moveq r7, r3
006b310c  54 02 00 1a                                      bne #0x6b3a64
006b3110  b8 06 9d e5                                      ldr r0, [sp, #0x6b8]
006b3114  04 10 9d e5                                      ldr r1, [sp, #4]
006b3118  01 00 50 e1                                      cmp r0, r1
006b311c  20 02 00 0a                                      beq #0x6b39a4
006b3120  00 00 50 e3                                      cmp r0, #0
006b3124  1e 02 00 0a                                      beq #0x6b39a4
006b3128  c8 74 f1 eb                                      bl #0x310450
006b312c  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006b3130  00 00 53 e3                                      cmp r3, #0
006b3134  2d ff ff 0a                                      beq #0x6b2df0
006b3138  00 00 57 e3                                      cmp r7, #0
006b313c  f9 00 00 1a                                      bne #0x6b3528
006b3140  05 00 a0 e1                                      mov r0, r5
006b3144  c8 fc ff eb                                      bl #0x6b246c
006b3148  01 00 a0 e3                                      mov r0, #1
006b314c  bd ff ff ea                                      b #0x6b3048
006b3150  11 70 d1 e5                                      ldrb r7, [r1, #0x11]
006b3154  00 00 57 e3                                      cmp r7, #0
006b3158  0a 02 00 0a                                      beq #0x6b3988
006b315c  e0 10 90 e5                                      ldr r1, [r0, #0xe0]
006b3160  e4 20 90 e5                                      ldr r2, [r0, #0xe4]
006b3164  78 31 90 e5                                      ldr r3, [r0, #0x178]
006b3168  00 70 a0 e3                                      mov r7, #0
006b316c  01 20 62 e0                                      rsb r2, r2, r1
006b3170  42 21 a0 e1                                      asr r2, r2, #2
006b3174  5c 31 80 e5                                      str r3, [r0, #0x15c]
006b3178  60 21 80 e5                                      str r2, [r0, #0x160]
006b317c  78 71 80 e5                                      str r7, [r0, #0x178]
006b3180  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006b3184  e9 ff ff ea                                      b #0x6b3130
006b3188  11 70 d1 e5                                      ldrb r7, [r1, #0x11]
006b318c  00 00 57 e3                                      cmp r7, #0
006b3190  78 31 90 15                                      ldrne r3, [r0, #0x178]
006b3194  00 70 a0 13                                      movne r7, #0
006b3198  5c 71 80 15                                      strne r7, [r0, #0x15c]
006b319c  60 31 80 15                                      strne r3, [r0, #0x160]
006b31a0  78 71 80 15                                      strne r7, [r0, #0x178]
006b31a4  78 71 80 05                                      streq r7, [r0, #0x178]
006b31a8  5c 71 80 05                                      streq r7, [r0, #0x15c]
006b31ac  60 71 80 05                                      streq r7, [r0, #0x160]
006b31b0  12 30 d1 e5                                      ldrb r3, [r1, #0x12]
006b31b4  dd ff ff ea                                      b #0x6b3130
006b31b8  8b 71 d0 e5                                      ldrb r7, [r0, #0x18b]
006b31bc  00 00 57 e3                                      cmp r7, #0
006b31c0  de ff ff 1a                                      bne #0x6b3140
006b31c4  70 31 90 e5                                      ldr r3, [r0, #0x170]
006b31c8  00 00 53 e3                                      cmp r3, #0
006b31cc  db ff ff 0a                                      beq #0x6b3140
006b31d0  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006b31d4  60 11 90 e5                                      ldr r1, [r0, #0x160]
006b31d8  01 00 53 e1                                      cmp r3, r1
006b31dc  d7 ff ff 0a                                      beq #0x6b3140
006b31e0  19 ad 8d e2                                      add sl, sp, #0x640
006b31e4  03 00 51 e1                                      cmp r1, r3
006b31e8  01 20 a0 b1                                      movlt r2, r1
006b31ec  03 20 a0 a1                                      movge r2, r3
006b31f0  04 a0 8a e2                                      add sl, sl, #4
006b31f4  6b 9e 8d e2                                      add sb, sp, #0x6b0
006b31f8  03 00 51 e1                                      cmp r1, r3
006b31fc  01 30 62 a0                                      rsbge r3, r2, r1
006b3200  03 30 62 b0                                      rsblt r3, r2, r3
006b3204  0a 00 a0 e1                                      mov r0, sl
006b3208  a0 10 85 e2                                      add r1, r5, #0xa0
006b320c  0c 90 89 e2                                      add sb, sb, #0xc
006b3210  d6 f3 ff eb                                      bl #0x6b0170
006b3214  88 16 9d e5                                      ldr r1, [sp, #0x688]
006b3218  09 00 a0 e1                                      mov r0, sb
006b321c  8d ce f1 eb                                      bl #0x326c58
006b3220  0a 00 a0 e1                                      mov r0, sl
006b3224  4f 3c fa eb                                      bl #0x542368
006b3228  70 31 95 e5                                      ldr r3, [r5, #0x170]
006b322c  d0 16 9d e5                                      ldr r1, [sp, #0x6d0]
006b3230  03 00 a0 e1                                      mov r0, r3
006b3234  00 30 93 e5                                      ldr r3, [r3]
006b3238  0f e0 a0 e1                                      mov lr, pc
006b323c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006b3240  d0 06 9d e5                                      ldr r0, [sp, #0x6d0]
006b3244  09 00 50 e1                                      cmp r0, sb
006b3248  d5 01 00 0a                                      beq #0x6b39a4
006b324c  00 00 50 e3                                      cmp r0, #0
006b3250  b4 ff ff 1a                                      bne #0x6b3128
006b3254  00 70 a0 e1                                      mov r7, r0
006b3258  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006b325c  b3 ff ff ea                                      b #0x6b3130
006b3260  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
006b3264  00 00 53 e3                                      cmp r3, #0
006b3268  b4 ff ff 0a                                      beq #0x6b3140
006b326c  70 31 90 e5                                      ldr r3, [r0, #0x170]
006b3270  00 00 53 e3                                      cmp r3, #0
006b3274  b1 ff ff 0a                                      beq #0x6b3140
006b3278  5c 91 90 e5                                      ldr sb, [r0, #0x15c]
006b327c  60 b1 90 e5                                      ldr fp, [r0, #0x160]
006b3280  03 00 a0 e1                                      mov r0, r3
006b3284  00 30 93 e5                                      ldr r3, [r3]
006b3288  0b 00 59 e1                                      cmp sb, fp
006b328c  0b 20 a0 a1                                      movge r2, fp
006b3290  09 b0 a0 a1                                      movge fp, sb
006b3294  02 90 a0 a1                                      movge sb, r2
006b3298  0f e0 a0 e1                                      mov lr, pc
006b329c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006b32a0  00 00 50 e3                                      cmp r0, #0
006b32a4  0c 00 8d e5                                      str r0, [sp, #0xc]
006b32a8  44 00 00 0a                                      beq #0x6b33c0
006b32ac  4d 2e 8d e2                                      add r2, sp, #0x4d0
006b32b0  0c 20 82 e2                                      add r2, r2, #0xc
006b32b4  08 20 8d e5                                      str r2, [sp, #8]
006b32b8  a0 a0 85 e2                                      add sl, r5, #0xa0
006b32bc  02 00 a0 e1                                      mov r0, r2
006b32c0  78 31 95 e5                                      ldr r3, [r5, #0x178]
006b32c4  00 20 a0 e3                                      mov r2, #0
006b32c8  0a 10 a0 e1                                      mov r1, sl
006b32cc  a7 f3 ff eb                                      bl #0x6b0170
006b32d0  5c 21 95 e5                                      ldr r2, [r5, #0x15c]
006b32d4  60 31 95 e5                                      ldr r3, [r5, #0x160]
006b32d8  03 00 52 e1                                      cmp r2, r3
006b32dc  14 02 00 0a                                      beq #0x6b3b34
006b32e0  ef 3f 8d e2                                      add r3, sp, #0x3bc
006b32e4  04 30 8d e5                                      str r3, [sp, #4]
006b32e8  00 20 a0 e3                                      mov r2, #0
006b32ec  09 30 a0 e1                                      mov r3, sb
006b32f0  dd 7f 8d e2                                      add r7, sp, #0x374
006b32f4  04 00 9d e5                                      ldr r0, [sp, #4]
006b32f8  0a 10 a0 e1                                      mov r1, sl
006b32fc  9b f3 ff eb                                      bl #0x6b0170
006b3300  07 00 a0 e1                                      mov r0, r7
006b3304  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006b3308  ee cb f1 eb                                      bl #0x3262c8
006b330c  b8 13 9d e5                                      ldr r1, [sp, #0x3b8]
006b3310  b4 23 9d e5                                      ldr r2, [sp, #0x3b4]
006b3314  04 00 9d e5                                      ldr r0, [sp, #4]
006b3318  4a b6 f1 eb                                      bl #0x320c48
006b331c  07 00 a0 e1                                      mov r0, r7
006b3320  10 3c fa eb                                      bl #0x542368
006b3324  e4 10 95 e5                                      ldr r1, [r5, #0xe4]
006b3328  e0 30 95 e5                                      ldr r3, [r5, #0xe0]
006b332c  cb 7f 8d e2                                      add r7, sp, #0x32c
006b3330  0b 20 a0 e1                                      mov r2, fp
006b3334  03 30 61 e0                                      rsb r3, r1, r3
006b3338  43 31 6b e0                                      rsb r3, fp, r3, asr #2
006b333c  0a 10 a0 e1                                      mov r1, sl
006b3340  07 00 a0 e1                                      mov r0, r7
006b3344  89 f3 ff eb                                      bl #0x6b0170
006b3348  70 13 9d e5                                      ldr r1, [sp, #0x370]
006b334c  6c 23 9d e5                                      ldr r2, [sp, #0x36c]
006b3350  04 00 9d e5                                      ldr r0, [sp, #4]
006b3354  3b b6 f1 eb                                      bl #0x320c48
006b3358  07 00 a0 e1                                      mov r0, r7
006b335c  01 3c fa eb                                      bl #0x542368
006b3360  84 31 95 e5                                      ldr r3, [r5, #0x184]
006b3364  00 00 53 e3                                      cmp r3, #0
006b3368  b7 01 00 1a                                      bne #0x6b3a4c
006b336c  b9 7f 8d e2                                      add r7, sp, #0x2e4
006b3370  04 10 9d e5                                      ldr r1, [sp, #4]
006b3374  0a 00 a0 e1                                      mov r0, sl
006b3378  38 f3 ff eb                                      bl #0x6b0060
006b337c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006b3380  07 00 a0 e1                                      mov r0, r7
006b3384  cf cb f1 eb                                      bl #0x3262c8
006b3388  07 10 a0 e1                                      mov r1, r7
006b338c  04 00 9d e5                                      ldr r0, [sp, #4]
006b3390  32 f3 ff eb                                      bl #0x6b0060
006b3394  07 00 a0 e1                                      mov r0, r7
006b3398  f2 3b fa eb                                      bl #0x542368
006b339c  00 34 9d e5                                      ldr r3, [sp, #0x400]
006b33a0  fc 23 9d e5                                      ldr r2, [sp, #0x3fc]
006b33a4  02 30 63 e0                                      rsb r3, r3, r2
006b33a8  43 91 89 e0                                      add sb, sb, r3, asr #2
006b33ac  78 91 85 e5                                      str sb, [r5, #0x178]
006b33b0  04 00 9d e5                                      ldr r0, [sp, #4]
006b33b4  eb 3b fa eb                                      bl #0x542368
006b33b8  08 00 9d e5                                      ldr r0, [sp, #8]
006b33bc  e9 3b fa eb                                      bl #0x542368
006b33c0  00 30 a0 e3                                      mov r3, #0
006b33c4  60 31 85 e5                                      str r3, [r5, #0x160]
006b33c8  5c 31 85 e5                                      str r3, [r5, #0x15c]
006b33cc  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006b33d0  01 70 a0 e3                                      mov r7, #1
006b33d4  55 ff ff ea                                      b #0x6b3130
006b33d8  e0 10 90 e5                                      ldr r1, [r0, #0xe0]
006b33dc  e4 20 90 e5                                      ldr r2, [r0, #0xe4]
006b33e0  00 70 a0 e3                                      mov r7, #0
006b33e4  5c 71 80 e5                                      str r7, [r0, #0x15c]
006b33e8  01 20 62 e0                                      rsb r2, r2, r1
006b33ec  42 21 a0 e1                                      asr r2, r2, #2
006b33f0  60 21 80 e5                                      str r2, [r0, #0x160]
006b33f4  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006b33f8  4c ff ff ea                                      b #0x6b3130
006b33fc  99 30 d5 e5                                      ldrb r3, [r5, #0x99]
006b3400  00 00 53 e3                                      cmp r3, #0
006b3404  4b ff ff 0a                                      beq #0x6b3138
006b3408  e0 20 95 e5                                      ldr r2, [r5, #0xe0]
006b340c  e4 30 95 e5                                      ldr r3, [r5, #0xe4]
006b3410  02 30 63 e0                                      rsb r3, r3, r2
006b3414  23 31 b0 e1                                      lsrs r3, r3, #2
006b3418  46 ff ff 0a                                      beq #0x6b3138
006b341c  4e 7f 8d e2                                      add r7, sp, #0x138
006b3420  04 70 47 e2                                      sub r7, r7, #4
006b3424  07 00 a0 e1                                      mov r0, r7
006b3428  10 10 a0 e3                                      mov r1, #0x10
006b342c  74 71 8d e5                                      str r7, [sp, #0x174]
006b3430  78 71 8d e5                                      str r7, [sp, #0x178]
006b3434  39 b5 f1 eb                                      bl #0x320920
006b3438  74 31 9d e5                                      ldr r3, [sp, #0x174]
006b343c  00 20 a0 e3                                      mov r2, #0
006b3440  00 20 83 e5                                      str r2, [r3]
006b3444  5c b1 95 e5                                      ldr fp, [r5, #0x15c]
006b3448  60 91 95 e5                                      ldr sb, [r5, #0x160]
006b344c  09 00 5b e1                                      cmp fp, sb
006b3450  19 02 00 0a                                      beq #0x6b3cbc
006b3454  f8 60 8d e2                                      add r6, sp, #0xf8
006b3458  a0 c0 85 e2                                      add ip, r5, #0xa0
006b345c  0c 60 46 e2                                      sub r6, r6, #0xc
006b3460  0b 00 59 e1                                      cmp sb, fp
006b3464  09 a0 a0 b1                                      movlt sl, sb
006b3468  0b a0 a0 a1                                      movge sl, fp
006b346c  0c 10 a0 e1                                      mov r1, ip
006b3470  0a 30 a0 e1                                      mov r3, sl
006b3474  06 00 a0 e1                                      mov r0, r6
006b3478  00 c0 8d e5                                      str ip, [sp]
006b347c  3b f3 ff eb                                      bl #0x6b0170
006b3480  06 10 a0 e1                                      mov r1, r6
006b3484  07 00 a0 e1                                      mov r0, r7
006b3488  f4 f2 ff eb                                      bl #0x6b0060
006b348c  06 00 a0 e1                                      mov r0, r6
006b3490  b4 3b fa eb                                      bl #0x542368
006b3494  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
006b3498  e4 30 95 e5                                      ldr r3, [r5, #0xe4]
006b349c  00 c0 9d e5                                      ldr ip, [sp]
006b34a0  a8 60 8d e2                                      add r6, sp, #0xa8
006b34a4  0b 00 59 e1                                      cmp sb, fp
006b34a8  09 20 a0 a1                                      movge r2, sb
006b34ac  0b 20 a0 b1                                      movlt r2, fp
006b34b0  01 30 63 e0                                      rsb r3, r3, r1
006b34b4  04 60 46 e2                                      sub r6, r6, #4
006b34b8  43 31 62 e0                                      rsb r3, r2, r3, asr #2
006b34bc  0c 10 a0 e1                                      mov r1, ip
006b34c0  06 00 a0 e1                                      mov r0, r6
006b34c4  29 f3 ff eb                                      bl #0x6b0170
006b34c8  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
006b34cc  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
006b34d0  07 00 a0 e1                                      mov r0, r7
006b34d4  db b5 f1 eb                                      bl #0x320c48
006b34d8  06 00 a0 e1                                      mov r0, r6
006b34dc  a1 3b fa eb                                      bl #0x542368
006b34e0  00 c0 9d e5                                      ldr ip, [sp]
006b34e4  07 10 a0 e1                                      mov r1, r7
006b34e8  0c 00 a0 e1                                      mov r0, ip
006b34ec  db f2 ff eb                                      bl #0x6b0060
006b34f0  78 a1 85 e5                                      str sl, [r5, #0x178]
006b34f4  e0 20 95 e5                                      ldr r2, [r5, #0xe0]
006b34f8  e4 30 95 e5                                      ldr r3, [r5, #0xe4]
006b34fc  02 30 63 e0                                      rsb r3, r3, r2
006b3500  43 31 a0 e1                                      asr r3, r3, #2
006b3504  03 00 5a e1                                      cmp sl, r3
006b3508  78 31 85 c5                                      strgt r3, [r5, #0x178]
006b350c  74 5e fd eb                                      bl #0x60aee4
006b3510  00 30 a0 e3                                      mov r3, #0
006b3514  74 01 85 e5                                      str r0, [r5, #0x174]
006b3518  60 31 85 e5                                      str r3, [r5, #0x160]
006b351c  5c 31 85 e5                                      str r3, [r5, #0x15c]
006b3520  07 00 a0 e1                                      mov r0, r7
006b3524  8f 3b fa eb                                      bl #0x542368
006b3528  05 00 a0 e1                                      mov r0, r5
006b352c  96 f6 ff eb                                      bl #0x6b0f8c
006b3530  02 ff ff ea                                      b #0x6b3140
006b3534  11 00 d6 e5                                      ldrb r0, [r6, #0x11]
006b3538  00 00 50 e3                                      cmp r0, #0
006b353c  1a 01 00 0a                                      beq #0x6b39ac
006b3540  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
006b3544  e4 20 95 e5                                      ldr r2, [r5, #0xe4]
006b3548  78 31 95 e5                                      ldr r3, [r5, #0x178]
006b354c  01 00 62 e0                                      rsb r0, r2, r1
006b3550  40 01 53 e1                                      cmp r3, r0, asr #2
006b3554  09 00 00 2a                                      bhs #0x6b3580
006b3558  60 01 95 e5                                      ldr r0, [r5, #0x160]
006b355c  5c c1 95 e5                                      ldr ip, [r5, #0x15c]
006b3560  00 00 5c e1                                      cmp ip, r0
006b3564  01 00 83 e2                                      add r0, r3, #1
006b3568  5c 31 85 05                                      streq r3, [r5, #0x15c]
006b356c  60 01 85 e5                                      str r0, [r5, #0x160]
006b3570  01 20 62 e0                                      rsb r2, r2, r1
006b3574  42 01 53 e1                                      cmp r3, r2, asr #2
006b3578  01 30 83 32                                      addlo r3, r3, #1
006b357c  78 31 85 35                                      strlo r3, [r5, #0x178]
006b3580  57 5e fd eb                                      bl #0x60aee4
006b3584  74 01 85 e5                                      str r0, [r5, #0x174]
006b3588  ea fe ff ea                                      b #0x6b3138
006b358c  89 31 d5 e5                                      ldrb r3, [r5, #0x189]
006b3590  00 00 53 e3                                      cmp r3, #0
006b3594  9a fe ff 0a                                      beq #0x6b3004
006b3598  05 00 a0 e1                                      mov r0, r5
006b359c  78 11 95 e5                                      ldr r1, [r5, #0x178]
006b35a0  89 f2 ff eb                                      bl #0x6affcc
006b35a4  60 c1 95 e5                                      ldr ip, [r5, #0x160]
006b35a8  5c 31 95 e5                                      ldr r3, [r5, #0x15c]
006b35ac  0c 00 53 e1                                      cmp r3, ip
006b35b0  78 c1 95 05                                      ldreq ip, [r5, #0x178]
006b35b4  01 00 00 0a                                      beq #0x6b35c0
006b35b8  03 00 5c e1                                      cmp ip, r3
006b35bc  03 c0 a0 a1                                      movge ip, r3
006b35c0  98 11 95 e5                                      ldr r1, [r5, #0x198]
006b35c4  9c 31 95 e5                                      ldr r3, [r5, #0x19c]
006b35c8  03 30 61 e0                                      rsb r3, r1, r3
006b35cc  c3 31 a0 e1                                      asr r3, r3, #3
006b35d0  83 21 a0 e1                                      lsl r2, r3, #3
006b35d4  02 20 63 e0                                      rsb r2, r3, r2
006b35d8  02 23 82 e0                                      add r2, r2, r2, lsl #6
006b35dc  82 21 83 e0                                      add r2, r3, r2, lsl #3
006b35e0  82 e7 a0 e1                                      lsl lr, r2, #0xf
006b35e4  0e 20 62 e0                                      rsb r2, r2, lr
006b35e8  82 31 83 e0                                      add r3, r3, r2, lsl #3
006b35ec  01 30 43 e2                                      sub r3, r3, #1
006b35f0  03 00 50 e1                                      cmp r0, r3
006b35f4  11 00 00 aa                                      bge #0x6b3640
006b35f8  01 20 80 e2                                      add r2, r0, #1
006b35fc  48 30 a0 e3                                      mov r3, #0x48
006b3600  93 12 21 e0                                      mla r1, r3, r2, r1
006b3604  a4 31 95 e5                                      ldr r3, [r5, #0x1a4]
006b3608  44 a0 91 e5                                      ldr sl, [r1, #0x44]
006b360c  40 90 91 e5                                      ldr sb, [r1, #0x40]
006b3610  78 e1 95 e5                                      ldr lr, [r5, #0x178]
006b3614  00 11 93 e7                                      ldr r1, [r3, r0, lsl #2]
006b3618  09 00 6a e0                                      rsb r0, sl, sb
006b361c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
006b3620  40 01 a0 e1                                      asr r0, r0, #2
006b3624  0e 10 61 e0                                      rsb r1, r1, lr
006b3628  00 00 51 e1                                      cmp r1, r0
006b362c  01 00 40 c2                                      subgt r0, r0, #1
006b3630  03 30 80 c0                                      addgt r3, r0, r3
006b3634  01 10 83 d0                                      addle r1, r3, r1
006b3638  78 31 85 c5                                      strgt r3, [r5, #0x178]
006b363c  78 11 85 d5                                      strle r1, [r5, #0x178]
006b3640  11 30 d6 e5                                      ldrb r3, [r6, #0x11]
006b3644  00 00 53 e3                                      cmp r3, #0
006b3648  78 31 95 15                                      ldrne r3, [r5, #0x178]
006b364c  5c c1 85 15                                      strne ip, [r5, #0x15c]
006b3650  60 31 85 05                                      streq r3, [r5, #0x160]
006b3654  60 31 85 15                                      strne r3, [r5, #0x160]
006b3658  5c 31 85 05                                      streq r3, [r5, #0x15c]
006b365c  b5 fe ff ea                                      b #0x6b3138
006b3660  08 10 96 e5                                      ldr r1, [r6, #8]
006b3664  05 00 a0 e1                                      mov r0, r5
006b3668  fe f7 ff eb                                      bl #0x6b1668
006b366c  b1 fe ff ea                                      b #0x6b3138
006b3670  99 30 d5 e5                                      ldrb r3, [r5, #0x99]
006b3674  00 00 53 e3                                      cmp r3, #0
006b3678  ae fe ff 0a                                      beq #0x6b3138
006b367c  e0 20 95 e5                                      ldr r2, [r5, #0xe0]
006b3680  e4 30 95 e5                                      ldr r3, [r5, #0xe4]
006b3684  02 30 63 e0                                      rsb r3, r3, r2
006b3688  23 31 b0 e1                                      lsrs r3, r3, #2
006b368c  a9 fe ff 0a                                      beq #0x6b3138
006b3690  aa 7f 8d e2                                      add r7, sp, #0x2a8
006b3694  0c 70 47 e2                                      sub r7, r7, #0xc
006b3698  07 00 a0 e1                                      mov r0, r7
006b369c  10 10 a0 e3                                      mov r1, #0x10
006b36a0  dc 72 8d e5                                      str r7, [sp, #0x2dc]
006b36a4  e0 72 8d e5                                      str r7, [sp, #0x2e0]
006b36a8  9c b4 f1 eb                                      bl #0x320920
006b36ac  dc 32 9d e5                                      ldr r3, [sp, #0x2dc]
006b36b0  00 20 a0 e3                                      mov r2, #0
006b36b4  00 20 83 e5                                      str r2, [r3]
006b36b8  5c 91 95 e5                                      ldr sb, [r5, #0x15c]
006b36bc  60 61 95 e5                                      ldr r6, [r5, #0x160]
006b36c0  06 00 59 e1                                      cmp sb, r6
006b36c4  55 01 00 0a                                      beq #0x6b3c20
006b36c8  96 bf 8d e2                                      add fp, sp, #0x258
006b36cc  a0 c0 85 e2                                      add ip, r5, #0xa0
006b36d0  04 b0 4b e2                                      sub fp, fp, #4
006b36d4  09 00 56 e1                                      cmp r6, sb
006b36d8  06 a0 a0 b1                                      movlt sl, r6
006b36dc  09 a0 a0 a1                                      movge sl, sb
006b36e0  0c 10 a0 e1                                      mov r1, ip
006b36e4  0a 30 a0 e1                                      mov r3, sl
006b36e8  0b 00 a0 e1                                      mov r0, fp
006b36ec  00 c0 8d e5                                      str ip, [sp]
006b36f0  9e f2 ff eb                                      bl #0x6b0170
006b36f4  0b 10 a0 e1                                      mov r1, fp
006b36f8  07 00 a0 e1                                      mov r0, r7
006b36fc  57 f2 ff eb                                      bl #0x6b0060
006b3700  0b 00 a0 e1                                      mov r0, fp
006b3704  17 3b fa eb                                      bl #0x542368
006b3708  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
006b370c  e4 30 95 e5                                      ldr r3, [r5, #0xe4]
006b3710  00 c0 9d e5                                      ldr ip, [sp]
006b3714  09 00 56 e1                                      cmp r6, sb
006b3718  06 20 a0 a1                                      movge r2, r6
006b371c  09 20 a0 b1                                      movlt r2, sb
006b3720  86 6f 8d e2                                      add r6, sp, #0x218
006b3724  01 30 63 e0                                      rsb r3, r3, r1
006b3728  0c 60 46 e2                                      sub r6, r6, #0xc
006b372c  43 31 62 e0                                      rsb r3, r2, r3, asr #2
006b3730  0c 10 a0 e1                                      mov r1, ip
006b3734  06 00 a0 e1                                      mov r0, r6
006b3738  8c f2 ff eb                                      bl #0x6b0170
006b373c  4c 22 9d e5                                      ldr r2, [sp, #0x24c]
006b3740  50 12 9d e5                                      ldr r1, [sp, #0x250]
006b3744  07 00 a0 e1                                      mov r0, r7
006b3748  3e b5 f1 eb                                      bl #0x320c48
006b374c  06 00 a0 e1                                      mov r0, r6
006b3750  04 3b fa eb                                      bl #0x542368
006b3754  00 c0 9d e5                                      ldr ip, [sp]
006b3758  07 10 a0 e1                                      mov r1, r7
006b375c  0c 00 a0 e1                                      mov r0, ip
006b3760  3e f2 ff eb                                      bl #0x6b0060
006b3764  78 a1 85 e5                                      str sl, [r5, #0x178]
006b3768  00 00 5a e3                                      cmp sl, #0
006b376c  00 30 a0 b3                                      movlt r3, #0
006b3770  78 31 85 b5                                      strlt r3, [r5, #0x178]
006b3774  64 ff ff ea                                      b #0x6b350c
006b3778  89 21 d5 e5                                      ldrb r2, [r5, #0x189]
006b377c  00 00 52 e3                                      cmp r2, #0
006b3780  8f 00 00 0a                                      beq #0x6b39c4
006b3784  05 00 a0 e1                                      mov r0, r5
006b3788  0a 10 a0 e3                                      mov r1, #0xa
006b378c  b5 f7 ff eb                                      bl #0x6b1668
006b3790  68 fe ff ea                                      b #0x6b3138
006b3794  88 31 d5 e5                                      ldrb r3, [r5, #0x188]
006b3798  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
006b379c  e4 20 95 e5                                      ldr r2, [r5, #0xe4]
006b37a0  00 00 53 e3                                      cmp r3, #0
006b37a4  04 00 00 1a                                      bne #0x6b37bc
006b37a8  89 31 d5 e5                                      ldrb r3, [r5, #0x189]
006b37ac  00 00 53 e3                                      cmp r3, #0
006b37b0  01 30 62 00                                      rsbeq r3, r2, r1
006b37b4  43 31 a0 01                                      asreq r3, r3, #2
006b37b8  15 00 00 0a                                      beq #0x6b3814
006b37bc  78 11 95 e5                                      ldr r1, [r5, #0x178]
006b37c0  05 00 a0 e1                                      mov r0, r5
006b37c4  00 f2 ff eb                                      bl #0x6affcc
006b37c8  98 31 95 e5                                      ldr r3, [r5, #0x198]
006b37cc  48 10 a0 e3                                      mov r1, #0x48
006b37d0  a4 21 95 e5                                      ldr r2, [r5, #0x1a4]
006b37d4  91 30 23 e0                                      mla r3, r1, r0, r3
006b37d8  00 11 92 e7                                      ldr r1, [r2, r0, lsl #2]
006b37dc  44 20 93 e5                                      ldr r2, [r3, #0x44]
006b37e0  40 30 93 e5                                      ldr r3, [r3, #0x40]
006b37e4  03 20 62 e0                                      rsb r2, r2, r3
006b37e8  42 21 81 e0                                      add r2, r1, r2, asr #2
006b37ec  00 00 52 e3                                      cmp r2, #0
006b37f0  06 00 00 da                                      ble #0x6b3810
006b37f4  e4 10 95 e5                                      ldr r1, [r5, #0xe4]
006b37f8  01 30 42 e2                                      sub r3, r2, #1
006b37fc  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
006b3800  0d 00 51 e3                                      cmp r1, #0xd
006b3804  02 00 00 0a                                      beq #0x6b3814
006b3808  0a 00 51 e3                                      cmp r1, #0xa
006b380c  00 00 00 0a                                      beq #0x6b3814
006b3810  02 30 a0 e1                                      mov r3, r2
006b3814  11 20 d6 e5                                      ldrb r2, [r6, #0x11]
006b3818  00 00 52 e3                                      cmp r2, #0
006b381c  60 21 85 05                                      streq r2, [r5, #0x160]
006b3820  5c 21 85 05                                      streq r2, [r5, #0x15c]
006b3824  05 00 00 0a                                      beq #0x6b3840
006b3828  60 21 95 e5                                      ldr r2, [r5, #0x160]
006b382c  5c 11 95 e5                                      ldr r1, [r5, #0x15c]
006b3830  60 31 85 e5                                      str r3, [r5, #0x160]
006b3834  02 00 51 e1                                      cmp r1, r2
006b3838  78 21 95 05                                      ldreq r2, [r5, #0x178]
006b383c  5c 21 85 05                                      streq r2, [r5, #0x15c]
006b3840  78 31 85 e5                                      str r3, [r5, #0x178]
006b3844  a6 5d fd eb                                      bl #0x60aee4
006b3848  74 01 85 e5                                      str r0, [r5, #0x174]
006b384c  39 fe ff ea                                      b #0x6b3138
006b3850  11 20 d6 e5                                      ldrb r2, [r6, #0x11]
006b3854  00 00 52 e3                                      cmp r2, #0
006b3858  66 00 00 0a                                      beq #0x6b39f8
006b385c  78 31 95 e5                                      ldr r3, [r5, #0x178]
006b3860  00 00 53 e3                                      cmp r3, #0
006b3864  45 ff ff da                                      ble #0x6b3580
006b3868  60 21 95 e5                                      ldr r2, [r5, #0x160]
006b386c  5c 11 95 e5                                      ldr r1, [r5, #0x15c]
006b3870  02 00 51 e1                                      cmp r1, r2
006b3874  01 20 43 e2                                      sub r2, r3, #1
006b3878  5c 31 85 05                                      streq r3, [r5, #0x15c]
006b387c  60 21 85 e5                                      str r2, [r5, #0x160]
006b3880  00 00 53 e3                                      cmp r3, #0
006b3884  01 30 43 c2                                      subgt r3, r3, #1
006b3888  78 31 85 c5                                      strgt r3, [r5, #0x178]
006b388c  3b ff ff ea                                      b #0x6b3580
006b3890  88 31 d5 e5                                      ldrb r3, [r5, #0x188]
006b3894  00 00 53 e3                                      cmp r3, #0
006b3898  02 00 00 1a                                      bne #0x6b38a8
006b389c  89 21 d5 e5                                      ldrb r2, [r5, #0x189]
006b38a0  00 00 52 e3                                      cmp r2, #0
006b38a4  04 00 00 0a                                      beq #0x6b38bc
006b38a8  05 00 a0 e1                                      mov r0, r5
006b38ac  78 11 95 e5                                      ldr r1, [r5, #0x178]
006b38b0  c5 f1 ff eb                                      bl #0x6affcc
006b38b4  a4 31 95 e5                                      ldr r3, [r5, #0x1a4]
006b38b8  00 21 93 e7                                      ldr r2, [r3, r0, lsl #2]
006b38bc  11 30 d6 e5                                      ldrb r3, [r6, #0x11]
006b38c0  00 00 53 e3                                      cmp r3, #0
006b38c4  60 31 85 05                                      streq r3, [r5, #0x160]
006b38c8  5c 31 85 05                                      streq r3, [r5, #0x15c]
006b38cc  05 00 00 0a                                      beq #0x6b38e8
006b38d0  60 31 95 e5                                      ldr r3, [r5, #0x160]
006b38d4  5c 11 95 e5                                      ldr r1, [r5, #0x15c]
006b38d8  60 21 85 e5                                      str r2, [r5, #0x160]
006b38dc  03 00 51 e1                                      cmp r1, r3
006b38e0  78 31 95 05                                      ldreq r3, [r5, #0x178]
006b38e4  5c 31 85 05                                      streq r3, [r5, #0x15c]
006b38e8  78 21 85 e5                                      str r2, [r5, #0x178]
006b38ec  7c 5d fd eb                                      bl #0x60aee4
006b38f0  74 01 85 e5                                      str r0, [r5, #0x174]
006b38f4  0f fe ff ea                                      b #0x6b3138
006b38f8  89 31 d5 e5                                      ldrb r3, [r5, #0x189]
006b38fc  00 00 53 e3                                      cmp r3, #0
006b3900  40 00 00 0a                                      beq #0x6b3a08
006b3904  05 00 a0 e1                                      mov r0, r5
006b3908  78 11 95 e5                                      ldr r1, [r5, #0x178]
006b390c  ae f1 ff eb                                      bl #0x6affcc
006b3910  5c 31 95 e5                                      ldr r3, [r5, #0x15c]
006b3914  60 21 95 e5                                      ldr r2, [r5, #0x160]
006b3918  02 00 53 e1                                      cmp r3, r2
006b391c  78 c1 95 05                                      ldreq ip, [r5, #0x178]
006b3920  02 00 00 0a                                      beq #0x6b3930
006b3924  03 00 52 e1                                      cmp r2, r3
006b3928  02 c0 a0 a1                                      movge ip, r2
006b392c  03 c0 a0 b1                                      movlt ip, r3
006b3930  00 00 50 e3                                      cmp r0, #0
006b3934  41 ff ff da                                      ble #0x6b3640
006b3938  98 31 95 e5                                      ldr r3, [r5, #0x198]
006b393c  01 10 40 e2                                      sub r1, r0, #1
006b3940  48 20 a0 e3                                      mov r2, #0x48
006b3944  92 31 23 e0                                      mla r3, r2, r1, r3
006b3948  a4 21 95 e5                                      ldr r2, [r5, #0x1a4]
006b394c  44 a0 93 e5                                      ldr sl, [r3, #0x44]
006b3950  40 90 93 e5                                      ldr sb, [r3, #0x40]
006b3954  78 e1 95 e5                                      ldr lr, [r5, #0x178]
006b3958  00 31 92 e7                                      ldr r3, [r2, r0, lsl #2]
006b395c  09 00 6a e0                                      rsb r0, sl, sb
006b3960  40 01 a0 e1                                      asr r0, r0, #2
006b3964  0e 30 63 e0                                      rsb r3, r3, lr
006b3968  00 00 53 e1                                      cmp r3, r0
006b396c  01 31 92 c7                                      ldrgt r3, [r2, r1, lsl #2]
006b3970  01 21 92 d7                                      ldrle r2, [r2, r1, lsl #2]
006b3974  01 00 40 c2                                      subgt r0, r0, #1
006b3978  03 30 80 c0                                      addgt r3, r0, r3
006b397c  03 30 82 d0                                      addle r3, r2, r3
006b3980  78 31 85 e5                                      str r3, [r5, #0x178]
006b3984  2d ff ff ea                                      b #0x6b3640
006b3988  e0 10 90 e5                                      ldr r1, [r0, #0xe0]
006b398c  e4 20 90 e5                                      ldr r2, [r0, #0xe4]
006b3990  5c 71 80 e5                                      str r7, [r0, #0x15c]
006b3994  60 71 80 e5                                      str r7, [r0, #0x160]
006b3998  01 20 62 e0                                      rsb r2, r2, r1
006b399c  42 21 a0 e1                                      asr r2, r2, #2
006b39a0  78 21 80 e5                                      str r2, [r0, #0x178]
006b39a4  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006b39a8  e0 fd ff ea                                      b #0x6b3130
006b39ac  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
006b39b0  e4 20 95 e5                                      ldr r2, [r5, #0xe4]
006b39b4  78 31 95 e5                                      ldr r3, [r5, #0x178]
006b39b8  60 01 85 e5                                      str r0, [r5, #0x160]
006b39bc  5c 01 85 e5                                      str r0, [r5, #0x15c]
006b39c0  ea fe ff ea                                      b #0x6b3570
006b39c4  24 30 95 e5                                      ldr r3, [r5, #0x24]
006b39c8  10 10 a0 e3                                      mov r1, #0x10
006b39cc  9c 16 8d e5                                      str r1, [sp, #0x69c]
006b39d0  98 26 8d e5                                      str r2, [sp, #0x698]
006b39d4  8c 26 8d e5                                      str r2, [sp, #0x68c]
006b39d8  94 56 8d e5                                      str r5, [sp, #0x694]
006b39dc  1a 1d 8d e2                                      add r1, sp, #0x680
006b39e0  03 00 a0 e1                                      mov r0, r3
006b39e4  0c 10 81 e2                                      add r1, r1, #0xc
006b39e8  00 30 93 e5                                      ldr r3, [r3]
006b39ec  0f e0 a0 e1                                      mov lr, pc
006b39f0  08 f0 93 e5                                      ldr pc, [r3, #8]
006b39f4  cf fd ff ea                                      b #0x6b3138
006b39f8  78 31 95 e5                                      ldr r3, [r5, #0x178]
006b39fc  60 21 85 e5                                      str r2, [r5, #0x160]
006b3a00  5c 21 85 e5                                      str r2, [r5, #0x15c]
006b3a04  9d ff ff ea                                      b #0x6b3880
006b3a08  88 31 d5 e5                                      ldrb r3, [r5, #0x188]
006b3a0c  00 00 53 e3                                      cmp r3, #0
006b3a10  8b fd ff 0a                                      beq #0x6b3044
006b3a14  9c 21 95 e5                                      ldr r2, [r5, #0x19c]
006b3a18  98 31 95 e5                                      ldr r3, [r5, #0x198]
006b3a1c  02 30 63 e0                                      rsb r3, r3, r2
006b3a20  c3 31 a0 e1                                      asr r3, r3, #3
006b3a24  83 21 a0 e1                                      lsl r2, r3, #3
006b3a28  02 20 63 e0                                      rsb r2, r3, r2
006b3a2c  02 23 82 e0                                      add r2, r2, r2, lsl #6
006b3a30  82 21 83 e0                                      add r2, r3, r2, lsl #3
006b3a34  82 17 a0 e1                                      lsl r1, r2, #0xf
006b3a38  01 20 62 e0                                      rsb r2, r2, r1
006b3a3c  82 31 83 e0                                      add r3, r3, r2, lsl #3
006b3a40  01 00 53 e3                                      cmp r3, #1
006b3a44  ae ff ff 8a                                      bhi #0x6b3904
006b3a48  7d fd ff ea                                      b #0x6b3044
006b3a4c  00 24 9d e5                                      ldr r2, [sp, #0x400]
006b3a50  fc 13 9d e5                                      ldr r1, [sp, #0x3fc]
006b3a54  01 20 62 e0                                      rsb r2, r2, r1
006b3a58  42 01 53 e1                                      cmp r3, r2, asr #2
006b3a5c  53 fe ff 3a                                      blo #0x6b33b0
006b3a60  41 fe ff ea                                      b #0x6b336c
006b3a64  5b be 8d e2                                      add fp, sp, #0x5b0
006b3a68  04 b0 8b e2                                      add fp, fp, #4
006b3a6c  0b 00 a0 e1                                      mov r0, fp
006b3a70  10 10 a0 e3                                      mov r1, #0x10
006b3a74  f4 b5 8d e5                                      str fp, [sp, #0x5f4]
006b3a78  f8 b5 8d e5                                      str fp, [sp, #0x5f8]
006b3a7c  a7 b3 f1 eb                                      bl #0x320920
006b3a80  f4 35 9d e5                                      ldr r3, [sp, #0x5f4]
006b3a84  56 ce 8d e2                                      add ip, sp, #0x560
006b3a88  0c c0 8c e2                                      add ip, ip, #0xc
006b3a8c  07 20 a0 e1                                      mov r2, r7
006b3a90  00 70 83 e5                                      str r7, [r3]
006b3a94  0c 00 a0 e1                                      mov r0, ip
006b3a98  09 30 a0 e1                                      mov r3, sb
006b3a9c  0a 10 a0 e1                                      mov r1, sl
006b3aa0  00 c0 8d e5                                      str ip, [sp]
006b3aa4  b1 f1 ff eb                                      bl #0x6b0170
006b3aa8  00 c0 9d e5                                      ldr ip, [sp]
006b3aac  0b 00 a0 e1                                      mov r0, fp
006b3ab0  0c 10 a0 e1                                      mov r1, ip
006b3ab4  69 f1 ff eb                                      bl #0x6b0060
006b3ab8  00 c0 9d e5                                      ldr ip, [sp]
006b3abc  0c 00 a0 e1                                      mov r0, ip
006b3ac0  28 3a fa eb                                      bl #0x542368
006b3ac4  e4 10 95 e5                                      ldr r1, [r5, #0xe4]
006b3ac8  e0 30 95 e5                                      ldr r3, [r5, #0xe0]
006b3acc  08 20 9d e5                                      ldr r2, [sp, #8]
006b3ad0  52 ce 8d e2                                      add ip, sp, #0x520
006b3ad4  04 c0 8c e2                                      add ip, ip, #4
006b3ad8  03 30 61 e0                                      rsb r3, r1, r3
006b3adc  43 31 62 e0                                      rsb r3, r2, r3, asr #2
006b3ae0  0c 00 a0 e1                                      mov r0, ip
006b3ae4  0a 10 a0 e1                                      mov r1, sl
006b3ae8  00 c0 8d e5                                      str ip, [sp]
006b3aec  9f f1 ff eb                                      bl #0x6b0170
006b3af0  64 25 9d e5                                      ldr r2, [sp, #0x564]
006b3af4  68 15 9d e5                                      ldr r1, [sp, #0x568]
006b3af8  0b 00 a0 e1                                      mov r0, fp
006b3afc  51 b4 f1 eb                                      bl #0x320c48
006b3b00  00 c0 9d e5                                      ldr ip, [sp]
006b3b04  0c 00 a0 e1                                      mov r0, ip
006b3b08  16 3a fa eb                                      bl #0x542368
006b3b0c  0b 10 a0 e1                                      mov r1, fp
006b3b10  0a 00 a0 e1                                      mov r0, sl
006b3b14  51 f1 ff eb                                      bl #0x6b0060
006b3b18  60 71 85 e5                                      str r7, [r5, #0x160]
006b3b1c  5c 71 85 e5                                      str r7, [r5, #0x15c]
006b3b20  78 91 85 e5                                      str sb, [r5, #0x178]
006b3b24  0b 00 a0 e1                                      mov r0, fp
006b3b28  0e 3a fa eb                                      bl #0x542368
006b3b2c  01 70 a0 e3                                      mov r7, #1
006b3b30  76 fd ff ea                                      b #0x6b3110
006b3b34  49 7e 8d e2                                      add r7, sp, #0x490
006b3b38  04 70 87 e2                                      add r7, r7, #4
006b3b3c  07 00 a0 e1                                      mov r0, r7
006b3b40  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006b3b44  df c9 f1 eb                                      bl #0x3262c8
006b3b48  d8 14 9d e5                                      ldr r1, [sp, #0x4d8]
006b3b4c  d4 24 9d e5                                      ldr r2, [sp, #0x4d4]
006b3b50  08 00 9d e5                                      ldr r0, [sp, #8]
006b3b54  3b b4 f1 eb                                      bl #0x320c48
006b3b58  07 00 a0 e1                                      mov r0, r7
006b3b5c  01 3a fa eb                                      bl #0x542368
006b3b60  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
006b3b64  e4 30 95 e5                                      ldr r3, [r5, #0xe4]
006b3b68  78 21 95 e5                                      ldr r2, [r5, #0x178]
006b3b6c  11 7d 8d e2                                      add r7, sp, #0x440
006b3b70  0c 70 87 e2                                      add r7, r7, #0xc
006b3b74  01 30 63 e0                                      rsb r3, r3, r1
006b3b78  43 31 62 e0                                      rsb r3, r2, r3, asr #2
006b3b7c  0a 10 a0 e1                                      mov r1, sl
006b3b80  07 00 a0 e1                                      mov r0, r7
006b3b84  79 f1 ff eb                                      bl #0x6b0170
006b3b88  90 14 9d e5                                      ldr r1, [sp, #0x490]
006b3b8c  8c 24 9d e5                                      ldr r2, [sp, #0x48c]
006b3b90  08 00 9d e5                                      ldr r0, [sp, #8]
006b3b94  2b b4 f1 eb                                      bl #0x320c48
006b3b98  07 00 a0 e1                                      mov r0, r7
006b3b9c  f1 39 fa eb                                      bl #0x542368
006b3ba0  84 31 95 e5                                      ldr r3, [r5, #0x184]
006b3ba4  00 00 53 e3                                      cmp r3, #0
006b3ba8  13 00 00 1a                                      bne #0x6b3bfc
006b3bac  01 7b 8d e2                                      add r7, sp, #0x400
006b3bb0  04 70 87 e2                                      add r7, r7, #4
006b3bb4  08 10 9d e5                                      ldr r1, [sp, #8]
006b3bb8  0a 00 a0 e1                                      mov r0, sl
006b3bbc  27 f1 ff eb                                      bl #0x6b0060
006b3bc0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006b3bc4  07 00 a0 e1                                      mov r0, r7
006b3bc8  be c9 f1 eb                                      bl #0x3262c8
006b3bcc  07 10 a0 e1                                      mov r1, r7
006b3bd0  08 00 9d e5                                      ldr r0, [sp, #8]
006b3bd4  21 f1 ff eb                                      bl #0x6b0060
006b3bd8  07 00 a0 e1                                      mov r0, r7
006b3bdc  e1 39 fa eb                                      bl #0x542368
006b3be0  20 25 9d e5                                      ldr r2, [sp, #0x520]
006b3be4  1c 15 9d e5                                      ldr r1, [sp, #0x51c]
006b3be8  78 31 95 e5                                      ldr r3, [r5, #0x178]
006b3bec  01 20 62 e0                                      rsb r2, r2, r1
006b3bf0  42 31 83 e0                                      add r3, r3, r2, asr #2
006b3bf4  78 31 85 e5                                      str r3, [r5, #0x178]
006b3bf8  ee fd ff ea                                      b #0x6b33b8
006b3bfc  20 25 9d e5                                      ldr r2, [sp, #0x520]
006b3c00  1c 15 9d e5                                      ldr r1, [sp, #0x51c]
006b3c04  01 20 62 e0                                      rsb r2, r2, r1
006b3c08  42 01 53 e1                                      cmp r3, r2, asr #2
006b3c0c  e9 fd ff 3a                                      blo #0x6b33b8
006b3c10  e5 ff ff ea                                      b #0x6b3bac
; mapping-symbol data/literal pool
006b3c14  c0 1d 2e 00 ac 40 00 00 c0 ae 20 00              .byte 0xc0, 0x1d, 0x2e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0xae, 0x20, 0x00
; decoder-mode: arm
006b3c20  78 31 95 e5                                      ldr r3, [r5, #0x178]
006b3c24  00 00 53 e3                                      cmp r3, #0
006b3c28  46 00 00 da                                      ble #0x6b3d48
006b3c2c  72 6f 8d e2                                      add r6, sp, #0x1c8
006b3c30  04 60 46 e2                                      sub r6, r6, #4
006b3c34  a0 a0 85 e2                                      add sl, r5, #0xa0
006b3c38  01 30 43 e2                                      sub r3, r3, #1
006b3c3c  06 00 a0 e1                                      mov r0, r6
006b3c40  0a 10 a0 e1                                      mov r1, sl
006b3c44  49 f1 ff eb                                      bl #0x6b0170
006b3c48  07 00 a0 e1                                      mov r0, r7
006b3c4c  06 10 a0 e1                                      mov r1, r6
006b3c50  02 f1 ff eb                                      bl #0x6b0060
006b3c54  06 00 a0 e1                                      mov r0, r6
006b3c58  c2 39 fa eb                                      bl #0x542368
006b3c5c  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
006b3c60  e4 30 95 e5                                      ldr r3, [r5, #0xe4]
006b3c64  78 21 95 e5                                      ldr r2, [r5, #0x178]
006b3c68  62 6f 8d e2                                      add r6, sp, #0x188
006b3c6c  0c 60 46 e2                                      sub r6, r6, #0xc
006b3c70  01 30 63 e0                                      rsb r3, r3, r1
006b3c74  43 31 62 e0                                      rsb r3, r2, r3, asr #2
006b3c78  0a 10 a0 e1                                      mov r1, sl
006b3c7c  06 00 a0 e1                                      mov r0, r6
006b3c80  3a f1 ff eb                                      bl #0x6b0170
006b3c84  bc 21 9d e5                                      ldr r2, [sp, #0x1bc]
006b3c88  c0 11 9d e5                                      ldr r1, [sp, #0x1c0]
006b3c8c  07 00 a0 e1                                      mov r0, r7
006b3c90  ec b3 f1 eb                                      bl #0x320c48
006b3c94  06 00 a0 e1                                      mov r0, r6
006b3c98  b2 39 fa eb                                      bl #0x542368
006b3c9c  0a 00 a0 e1                                      mov r0, sl
006b3ca0  07 10 a0 e1                                      mov r1, r7
006b3ca4  ed f0 ff eb                                      bl #0x6b0060
006b3ca8  78 a1 95 e5                                      ldr sl, [r5, #0x178]
006b3cac  01 a0 4a e2                                      sub sl, sl, #1
006b3cb0  78 a1 85 e5                                      str sl, [r5, #0x178]
006b3cb4  ab fe ff ea                                      b #0x6b3768
006b3cb8  94 69 f1 eb                                      bl #0x30e310
006b3cbc  68 60 8d e2                                      add r6, sp, #0x68
006b3cc0  0c 60 46 e2                                      sub r6, r6, #0xc
006b3cc4  a0 a0 85 e2                                      add sl, r5, #0xa0
006b3cc8  78 31 95 e5                                      ldr r3, [r5, #0x178]
006b3ccc  06 00 a0 e1                                      mov r0, r6
006b3cd0  0a 10 a0 e1                                      mov r1, sl
006b3cd4  25 f1 ff eb                                      bl #0x6b0170
006b3cd8  06 10 a0 e1                                      mov r1, r6
006b3cdc  07 00 a0 e1                                      mov r0, r7
006b3ce0  de f0 ff eb                                      bl #0x6b0060
006b3ce4  06 00 a0 e1                                      mov r0, r6
006b3ce8  9e 39 fa eb                                      bl #0x542368
006b3cec  78 21 95 e5                                      ldr r2, [r5, #0x178]
006b3cf0  e4 30 95 e5                                      ldr r3, [r5, #0xe4]
006b3cf4  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
006b3cf8  18 60 8d e2                                      add r6, sp, #0x18
006b3cfc  04 60 46 e2                                      sub r6, r6, #4
006b3d00  01 10 63 e0                                      rsb r1, r3, r1
006b3d04  02 30 e0 e1                                      mvn r3, r2
006b3d08  41 31 83 e0                                      add r3, r3, r1, asr #2
006b3d0c  01 20 82 e2                                      add r2, r2, #1
006b3d10  0a 10 a0 e1                                      mov r1, sl
006b3d14  06 00 a0 e1                                      mov r0, r6
006b3d18  14 f1 ff eb                                      bl #0x6b0170
006b3d1c  54 20 9d e5                                      ldr r2, [sp, #0x54]
006b3d20  58 10 9d e5                                      ldr r1, [sp, #0x58]
006b3d24  07 00 a0 e1                                      mov r0, r7
006b3d28  c6 b3 f1 eb                                      bl #0x320c48
006b3d2c  06 00 a0 e1                                      mov r0, r6
006b3d30  8c 39 fa eb                                      bl #0x542368
006b3d34  0a 00 a0 e1                                      mov r0, sl
006b3d38  07 10 a0 e1                                      mov r1, r7
006b3d3c  c7 f0 ff eb                                      bl #0x6b0060
006b3d40  78 a1 95 e5                                      ldr sl, [r5, #0x178]
006b3d44  ea fd ff ea                                      b #0x6b34f4
006b3d48  34 61 1f e5                                      ldr r6, [pc, #-0x134]
006b3d4c  a0 a0 85 e2                                      add sl, r5, #0xa0
006b3d50  06 60 8f e0                                      add r6, pc, r6
006b3d54  06 00 a0 e1                                      mov r0, r6
006b3d58  ca 6b f1 eb                                      bl #0x30ec88
006b3d5c  06 10 a0 e1                                      mov r1, r6
006b3d60  00 21 86 e0                                      add r2, r6, r0, lsl #2
006b3d64  07 00 a0 e1                                      mov r0, r7
006b3d68  0c bd f1 eb                                      bl #0x3231a0
006b3d6c  ba ff ff ea                                      b #0x6b3c5c

; FUNCTION 0x006b3d70, declared_size=164, range_size=164, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZN6glitch3gui11CGUIEditBox7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIEditBox::onEvent(glitch::SEvent const&)
; decoder-mode: arm
006b3d70  70 40 2d e9                                      push {r4, r5, r6, lr}
006b3d74  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
006b3d78  00 40 a0 e1                                      mov r4, r0
006b3d7c  01 50 a0 e1                                      mov r5, r1
006b3d80  00 00 53 e3                                      cmp r3, #0
006b3d84  0e 00 00 0a                                      beq #0x6b3dc4
006b3d88  00 30 91 e5                                      ldr r3, [r1]
006b3d8c  01 00 53 e3                                      cmp r3, #1
006b3d90  1b 00 00 0a                                      beq #0x6b3e04
006b3d94  02 00 53 e3                                      cmp r3, #2
006b3d98  12 00 00 0a                                      beq #0x6b3de8
006b3d9c  00 00 53 e3                                      cmp r3, #0
006b3da0  07 00 00 1a                                      bne #0x6b3dc4
006b3da4  10 30 91 e5                                      ldr r3, [r1, #0x10]
006b3da8  00 00 53 e3                                      cmp r3, #0
006b3dac  04 00 00 1a                                      bne #0x6b3dc4
006b3db0  08 20 91 e5                                      ldr r2, [r1, #8]
006b3db4  00 00 52 e1                                      cmp r2, r0
006b3db8  60 31 80 05                                      streq r3, [r0, #0x160]
006b3dbc  58 31 c0 05                                      strbeq r3, [r0, #0x158]
006b3dc0  5c 31 80 05                                      streq r3, [r0, #0x15c]
006b3dc4  24 30 94 e5                                      ldr r3, [r4, #0x24]
006b3dc8  00 00 53 e3                                      cmp r3, #0
006b3dcc  0a 00 00 0a                                      beq #0x6b3dfc
006b3dd0  03 00 a0 e1                                      mov r0, r3
006b3dd4  05 10 a0 e1                                      mov r1, r5
006b3dd8  00 30 93 e5                                      ldr r3, [r3]
006b3ddc  0f e0 a0 e1                                      mov lr, pc
006b3de0  08 f0 93 e5                                      ldr pc, [r3, #8]
006b3de4  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b3de8  b4 fb ff eb                                      bl #0x6b2cc0
006b3dec  00 00 50 e3                                      cmp r0, #0
006b3df0  f3 ff ff 0a                                      beq #0x6b3dc4
006b3df4  01 00 a0 e3                                      mov r0, #1
006b3df8  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b3dfc  03 00 a0 e1                                      mov r0, r3
006b3e00  70 80 bd e8                                      pop {r4, r5, r6, pc}
006b3e04  4c fb ff eb                                      bl #0x6b2b3c
006b3e08  00 00 50 e3                                      cmp r0, #0
006b3e0c  ec ff ff 0a                                      beq #0x6b3dc4
006b3e10  f7 ff ff ea                                      b #0x6b3df4

; FUNCTION 0x006b3e14, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZTv0_n16_NK6glitch3gui11CGUIEditBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIEditBox::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006b3e14  00 30 90 e5                                      ldr r3, [r0]
006b3e18  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006b3e1c  03 00 80 e0                                      add r0, r0, r3
006b3e20  dd f3 ff ea                                      b #0x6b0d9c

; FUNCTION 0x006b3e24, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZTv0_n24_N6glitch3gui11CGUIEditBoxD0Ev
; demangled: virtual thunk to glitch::gui::CGUIEditBox::~CGUIEditBox()
; decoder-mode: arm
006b3e24  00 30 90 e5                                      ldr r3, [r0]
006b3e28  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006b3e2c  03 00 80 e0                                      add r0, r0, r3
006b3e30  8a f3 ff ea                                      b #0x6b0c60

; FUNCTION 0x006b3e34, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZTv0_n12_N6glitch3gui11CGUIEditBoxD0Ev
; demangled: virtual thunk to glitch::gui::CGUIEditBox::~CGUIEditBox()
; decoder-mode: arm
006b3e34  00 30 90 e5                                      ldr r3, [r0]
006b3e38  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006b3e3c  03 00 80 e0                                      add r0, r0, r3
006b3e40  86 f3 ff ea                                      b #0x6b0c60

; FUNCTION 0x006b3e44, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZTv0_n24_N6glitch3gui11CGUIEditBoxD1Ev
; demangled: virtual thunk to glitch::gui::CGUIEditBox::~CGUIEditBox()
; decoder-mode: arm
006b3e44  00 30 90 e5                                      ldr r3, [r0]
006b3e48  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006b3e4c  03 00 80 e0                                      add r0, r0, r3
006b3e50  55 f3 ff ea                                      b #0x6b0bac

; FUNCTION 0x006b3e54, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZTv0_n12_N6glitch3gui11CGUIEditBoxD1Ev
; demangled: virtual thunk to glitch::gui::CGUIEditBox::~CGUIEditBox()
; decoder-mode: arm
006b3e54  00 30 90 e5                                      ldr r3, [r0]
006b3e58  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006b3e5c  03 00 80 e0                                      add r0, r0, r3
006b3e60  51 f3 ff ea                                      b #0x6b0bac

; FUNCTION 0x006b3e64, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIEditBox
; alias: _ZTv0_n20_N6glitch3gui11CGUIEditBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIEditBox::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006b3e64  00 30 90 e5                                      ldr r3, [r0]
006b3e68  14 30 13 e5                                      ldr r3, [r3, #-0x14]
006b3e6c  03 00 80 e0                                      add r0, r0, r3
006b3e70  8d f2 ff ea                                      b #0x6b08ac
