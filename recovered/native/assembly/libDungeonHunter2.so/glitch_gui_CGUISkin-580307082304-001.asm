; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0054aa24, declared_size=64, range_size=64, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZNK6glitch3gui8CGUISkin8getColorENS0_18EGUI_DEFAULT_COLORE
; demangled: glitch::gui::CGUISkin::getColor(glitch::gui::EGUI_DEFAULT_COLOR) const
; decoder-mode: arm
0054aa24  04 40 2d e5                                      str r4, [sp, #-4]!
0054aa28  14 00 51 e3                                      cmp r1, #0x14
0054aa2c  01 11 80 90                                      addls r1, r0, r1, lsl #2
0054aa30  04 40 d1 95                                      ldrbls r4, [r1, #4]
0054aa34  05 c0 d1 95                                      ldrbls ip, [r1, #5]
0054aa38  06 20 d1 95                                      ldrbls r2, [r1, #6]
0054aa3c  00 00 a0 e3                                      mov r0, #0
0054aa40  07 30 d1 95                                      ldrbls r3, [r1, #7]
0054aa44  14 00 c7 e7                                      bfi r0, r4, #0, #8
0054aa48  1c 04 cf e7                                      bfi r0, ip, #8, #8
0054aa4c  12 08 d7 e7                                      bfi r0, r2, #0x10, #8
0054aa50  0c d0 4d e2                                      sub sp, sp, #0xc
0054aa54  13 0c df e7                                      bfi r0, r3, #0x18, #8
0054aa58  0c d0 8d e2                                      add sp, sp, #0xc
0054aa5c  10 00 bd e8                                      ldm sp!, {r4}
0054aa60  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054aa64, declared_size=60, range_size=60, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin8setColorENS0_18EGUI_DEFAULT_COLORENS_5video6SColorE
; demangled: glitch::gui::CGUISkin::setColor(glitch::gui::EGUI_DEFAULT_COLOR, glitch::video::SColor)
; decoder-mode: arm
0054aa64  04 40 2d e5                                      str r4, [sp, #-4]!
0054aa68  14 00 51 e3                                      cmp r1, #0x14
0054aa6c  01 11 80 90                                      addls r1, r0, r1, lsl #2
0054aa70  22 cc a0 e1                                      lsr ip, r2, #0x18
0054aa74  72 40 ef e6                                      uxtb r4, r2
0054aa78  52 34 e7 e7                                      ubfx r3, r2, #8, #8
0054aa7c  52 28 e7 e7                                      ubfx r2, r2, #0x10, #8
0054aa80  0c d0 4d e2                                      sub sp, sp, #0xc
0054aa84  04 40 c1 95                                      strbls r4, [r1, #4]
0054aa88  07 c0 c1 95                                      strbls ip, [r1, #7]
0054aa8c  06 20 c1 95                                      strbls r2, [r1, #6]
0054aa90  05 30 c1 95                                      strbls r3, [r1, #5]
0054aa94  0c d0 8d e2                                      add sp, sp, #0xc
0054aa98  10 00 bd e8                                      ldm sp!, {r4}
0054aa9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054aaa0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZNK6glitch3gui8CGUISkin7getSizeENS0_17EGUI_DEFAULT_SIZEE
; demangled: glitch::gui::CGUISkin::getSize(glitch::gui::EGUI_DEFAULT_SIZE) const
; decoder-mode: arm
0054aaa0  09 00 51 e3                                      cmp r1, #9
0054aaa4  16 10 81 92                                      addls r1, r1, #0x16
0054aaa8  00 00 a0 83                                      movhi r0, #0
0054aaac  01 01 90 97                                      ldrls r0, [r0, r1, lsl #2]
0054aab0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054aab4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin7setSizeENS0_17EGUI_DEFAULT_SIZEEi
; demangled: glitch::gui::CGUISkin::setSize(glitch::gui::EGUI_DEFAULT_SIZE, int)
; decoder-mode: arm
0054aab4  09 00 51 e3                                      cmp r1, #9
0054aab8  16 10 81 92                                      addls r1, r1, #0x16
0054aabc  01 21 80 97                                      strls r2, [r0, r1, lsl #2]
0054aac0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054aac4, declared_size=44, range_size=44, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZNK6glitch3gui8CGUISkin7getFontENS0_17EGUI_DEFAULT_FONTE
; demangled: glitch::gui::CGUISkin::getFont(glitch::gui::EGUI_DEFAULT_FONT) const
; decoder-mode: arm
0054aac4  09 00 51 e3                                      cmp r1, #9
0054aac8  05 00 00 8a                                      bhi #0x54aae4
0054aacc  01 11 80 e0                                      add r1, r0, r1, lsl #2
0054aad0  dc 30 91 e5                                      ldr r3, [r1, #0xdc]
0054aad4  00 00 53 e3                                      cmp r3, #0
0054aad8  01 00 00 0a                                      beq #0x54aae4
0054aadc  03 00 a0 e1                                      mov r0, r3
0054aae0  1e ff 2f e1                                      bx lr
0054aae4  dc 30 90 e5                                      ldr r3, [r0, #0xdc]
0054aae8  03 00 a0 e1                                      mov r0, r3
0054aaec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054aaf0, declared_size=72, range_size=72, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin7setFontEPNS0_8IGUIFontENS0_17EGUI_DEFAULT_FONTE
; demangled: glitch::gui::CGUISkin::setFont(glitch::gui::IGUIFont*, glitch::gui::EGUI_DEFAULT_FONT)
; decoder-mode: arm
0054aaf0  09 00 52 e3                                      cmp r2, #9
0054aaf4  70 40 2d e9                                      push {r4, r5, r6, lr}
0054aaf8  00 40 a0 e1                                      mov r4, r0
0054aafc  01 50 a0 e1                                      mov r5, r1
0054ab00  0b 00 00 8a                                      bhi #0x54ab34
0054ab04  36 60 82 e2                                      add r6, r2, #0x36
0054ab08  06 31 80 e0                                      add r3, r0, r6, lsl #2
0054ab0c  04 00 93 e5                                      ldr r0, [r3, #4]
0054ab10  00 00 50 e3                                      cmp r0, #0
0054ab14  00 00 00 0a                                      beq #0x54ab1c
0054ab18  99 4a f7 eb                                      bl #0x31d584
0054ab1c  06 41 84 e0                                      add r4, r4, r6, lsl #2
0054ab20  00 00 55 e3                                      cmp r5, #0
0054ab24  04 50 84 e5                                      str r5, [r4, #4]
0054ab28  04 30 95 15                                      ldrne r3, [r5, #4]
0054ab2c  01 30 83 12                                      addne r3, r3, #1
0054ab30  04 30 85 15                                      strne r3, [r5, #4]
0054ab34  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0054ab38, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZNK6glitch3gui8CGUISkin13getSpriteBankEv
; demangled: glitch::gui::CGUISkin::getSpriteBank() const
; decoder-mode: arm
0054ab38  f0 00 90 e5                                      ldr r0, [r0, #0xf0]
0054ab3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ab40, declared_size=52, range_size=52, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin13setSpriteBankEPNS0_14IGUISpriteBankE
; demangled: glitch::gui::CGUISkin::setSpriteBank(glitch::gui::IGUISpriteBank*)
; decoder-mode: arm
0054ab40  70 40 2d e9                                      push {r4, r5, r6, lr}
0054ab44  00 40 a0 e1                                      mov r4, r0
0054ab48  f0 00 90 e5                                      ldr r0, [r0, #0xf0]
0054ab4c  01 50 a0 e1                                      mov r5, r1
0054ab50  00 00 50 e3                                      cmp r0, #0
0054ab54  00 00 00 0a                                      beq #0x54ab5c
0054ab58  89 4a f7 eb                                      bl #0x31d584
0054ab5c  00 00 55 e3                                      cmp r5, #0
0054ab60  04 30 95 15                                      ldrne r3, [r5, #4]
0054ab64  01 30 83 12                                      addne r3, r3, #1
0054ab68  04 30 85 15                                      strne r3, [r5, #4]
0054ab6c  f0 50 84 e5                                      str r5, [r4, #0xf0]
0054ab70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0054ab74, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZNK6glitch3gui8CGUISkin7getIconENS0_17EGUI_DEFAULT_ICONE
; demangled: glitch::gui::CGUISkin::getIcon(glitch::gui::EGUI_DEFAULT_ICON) const
; decoder-mode: arm
0054ab74  16 00 51 e3                                      cmp r1, #0x16
0054ab78  20 10 81 92                                      addls r1, r1, #0x20
0054ab7c  00 00 a0 83                                      movhi r0, #0
0054ab80  01 01 90 97                                      ldrls r0, [r0, r1, lsl #2]
0054ab84  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ab88, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin7setIconENS0_17EGUI_DEFAULT_ICONEj
; demangled: glitch::gui::CGUISkin::setIcon(glitch::gui::EGUI_DEFAULT_ICON, unsigned int)
; decoder-mode: arm
0054ab88  16 00 51 e3                                      cmp r1, #0x16
0054ab8c  20 10 81 92                                      addls r1, r1, #0x20
0054ab90  01 21 80 97                                      strls r2, [r0, r1, lsl #2]
0054ab94  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ab98, declared_size=24, range_size=24, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZNK6glitch3gui8CGUISkin14getDefaultTextENS0_17EGUI_DEFAULT_TEXTE
; demangled: glitch::gui::CGUISkin::getDefaultText(glitch::gui::EGUI_DEFAULT_TEXT) const
; decoder-mode: arm
0054ab98  07 00 51 e3                                      cmp r1, #7
0054ab9c  48 30 a0 93                                      movls r3, #0x48
0054aba0  93 01 21 90                                      mlals r1, r3, r1, r0
0054aba4  38 01 90 85                                      ldrhi r0, [r0, #0x138]
0054aba8  38 01 91 95                                      ldrls r0, [r1, #0x138]
0054abac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054abb0, declared_size=124, range_size=124, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin8drawIconEPNS0_11IGUIElementENS0_17EGUI_DEFAULT_ICONENS_4core10position2dIiEEjjbPKNS5_4rectIiEE
; demangled: glitch::gui::CGUISkin::drawIcon(glitch::gui::IGUIElement*, glitch::gui::EGUI_DEFAULT_ICON, glitch::core::position2d<int>, unsigned int, unsigned int, bool, glitch::core::rect<int> const*)
; decoder-mode: arm
0054abb0  30 40 2d e9                                      push {r4, r5, lr}
0054abb4  f0 40 90 e5                                      ldr r4, [r0, #0xf0]
0054abb8  24 d0 4d e2                                      sub sp, sp, #0x24
0054abbc  38 50 dd e5                                      ldrb r5, [sp, #0x38]
0054abc0  00 00 54 e3                                      cmp r4, #0
0054abc4  16 00 00 0a                                      beq #0x54ac24
0054abc8  20 20 82 e2                                      add r2, r2, #0x20
0054abcc  02 11 90 e7                                      ldr r1, [r0, r2, lsl #2]
0054abd0  00 00 94 e5                                      ldr r0, [r4]
0054abd4  00 20 a0 e3                                      mov r2, #0
0054abd8  24 c0 90 e5                                      ldr ip, [r0, #0x24]
0054abdc  00 00 e0 e3                                      mvn r0, #0
0054abe0  1f 00 cd e5                                      strb r0, [sp, #0x1f]
0054abe4  1c 00 8d e2                                      add r0, sp, #0x1c
0054abe8  00 00 8d e5                                      str r0, [sp]
0054abec  30 00 9d e5                                      ldr r0, [sp, #0x30]
0054abf0  1e 20 cd e5                                      strb r2, [sp, #0x1e]
0054abf4  1c 20 cd e5                                      strb r2, [sp, #0x1c]
0054abf8  04 00 8d e5                                      str r0, [sp, #4]
0054abfc  34 00 9d e5                                      ldr r0, [sp, #0x34]
0054ac00  1d 20 cd e5                                      strb r2, [sp, #0x1d]
0054ac04  0c 50 8d e5                                      str r5, [sp, #0xc]
0054ac08  08 00 8d e5                                      str r0, [sp, #8]
0054ac0c  01 00 a0 e3                                      mov r0, #1
0054ac10  10 00 8d e5                                      str r0, [sp, #0x10]
0054ac14  03 20 a0 e1                                      mov r2, r3
0054ac18  04 00 a0 e1                                      mov r0, r4
0054ac1c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0054ac20  3c ff 2f e1                                      blx ip
0054ac24  24 d0 8d e2                                      add sp, sp, #0x24
0054ac28  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0054ac2c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZNK6glitch3gui8CGUISkin7getTypeEv
; demangled: glitch::gui::CGUISkin::getType() const
; decoder-mode: arm
0054ac2c  3c 03 90 e5                                      ldr r0, [r0, #0x33c]
0054ac30  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ac34, declared_size=280, range_size=280, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZNK6glitch3gui8CGUISkin19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUISkin::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0054ac34  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0054ac38  fc 60 9f e5                                      ldr r6, [pc, #0xfc]
0054ac3c  00 80 a0 e1                                      mov r8, r0
0054ac40  01 40 a0 e1                                      mov r4, r1
0054ac44  06 60 8f e0                                      add r6, pc, r6
0054ac48  00 50 a0 e3                                      mov r5, #0
0054ac4c  05 31 88 e0                                      add r3, r8, r5, lsl #2
0054ac50  04 20 93 e5                                      ldr r2, [r3, #4]
0054ac54  05 11 96 e7                                      ldr r1, [r6, r5, lsl #2]
0054ac58  00 c0 94 e5                                      ldr ip, [r4]
0054ac5c  01 50 85 e2                                      add r5, r5, #1
0054ac60  04 00 a0 e1                                      mov r0, r4
0054ac64  00 30 a0 e3                                      mov r3, #0
0054ac68  0f e0 a0 e1                                      mov lr, pc
0054ac6c  18 f1 9c e5                                      ldr pc, [ip, #0x118]
0054ac70  15 00 55 e3                                      cmp r5, #0x15
0054ac74  f4 ff ff 1a                                      bne #0x54ac4c
0054ac78  c0 a0 9f e5                                      ldr sl, [pc, #0xc0]
0054ac7c  08 50 a0 e1                                      mov r5, r8
0054ac80  08 70 a0 e1                                      mov r7, r8
0054ac84  0a a0 8f e0                                      add sl, pc, sl
0054ac88  58 a0 8a e2                                      add sl, sl, #0x58
0054ac8c  00 60 a0 e3                                      mov r6, #0
0054ac90  06 10 9a e7                                      ldr r1, [sl, r6]
0054ac94  58 20 97 e5                                      ldr r2, [r7, #0x58]
0054ac98  04 60 86 e2                                      add r6, r6, #4
0054ac9c  00 c0 94 e5                                      ldr ip, [r4]
0054aca0  04 00 a0 e1                                      mov r0, r4
0054aca4  00 30 a0 e3                                      mov r3, #0
0054aca8  0f e0 a0 e1                                      mov lr, pc
0054acac  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
0054acb0  28 00 56 e3                                      cmp r6, #0x28
0054acb4  04 70 87 e2                                      add r7, r7, #4
0054acb8  f4 ff ff 1a                                      bne #0x54ac90
0054acbc  08 70 a0 e1                                      mov r7, r8
0054acc0  7c 80 9f e5                                      ldr r8, [pc, #0x7c]
0054acc4  00 60 a0 e3                                      mov r6, #0
0054acc8  08 80 8f e0                                      add r8, pc, r8
0054accc  84 80 88 e2                                      add r8, r8, #0x84
0054acd0  06 10 98 e7                                      ldr r1, [r8, r6]
0054acd4  38 21 97 e5                                      ldr r2, [r7, #0x138]
0054acd8  04 60 86 e2                                      add r6, r6, #4
0054acdc  00 c0 94 e5                                      ldr ip, [r4]
0054ace0  04 00 a0 e1                                      mov r0, r4
0054ace4  00 30 a0 e3                                      mov r3, #0
0054ace8  0f e0 a0 e1                                      mov lr, pc
0054acec  94 f0 9c e5                                      ldr pc, [ip, #0x94]
0054acf0  20 00 56 e3                                      cmp r6, #0x20
0054acf4  48 70 87 e2                                      add r7, r7, #0x48
0054acf8  f4 ff ff 1a                                      bne #0x54acd0
0054acfc  44 70 9f e5                                      ldr r7, [pc, #0x44]
0054ad00  00 60 a0 e3                                      mov r6, #0
0054ad04  07 70 8f e0                                      add r7, pc, r7
0054ad08  a8 70 87 e2                                      add r7, r7, #0xa8
0054ad0c  06 10 97 e7                                      ldr r1, [r7, r6]
0054ad10  80 20 95 e5                                      ldr r2, [r5, #0x80]
0054ad14  04 60 86 e2                                      add r6, r6, #4
0054ad18  00 c0 94 e5                                      ldr ip, [r4]
0054ad1c  04 00 a0 e1                                      mov r0, r4
0054ad20  00 30 a0 e3                                      mov r3, #0
0054ad24  0f e0 a0 e1                                      mov lr, pc
0054ad28  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
0054ad2c  5c 00 56 e3                                      cmp r6, #0x5c
0054ad30  04 50 85 e2                                      add r5, r5, #4
0054ad34  f4 ff ff 1a                                      bne #0x54ad0c
0054ad38  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0054ad3c  68 c3 40 00 28 c3 40 00 e4 c2 40 00 a8 c2 40 00  .byte 0x68, 0xc3, 0x40, 0x00, 0x28, 0xc3, 0x40, 0x00, 0xe4, 0xc2, 0x40, 0x00, 0xa8, 0xc2, 0x40, 0x00

; FUNCTION 0x0054adc0, declared_size=360, range_size=360, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUISkin::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0054adc0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0054adc4  4c 61 9f e5                                      ldr r6, [pc, #0x14c]
0054adc8  4c d0 4d e2                                      sub sp, sp, #0x4c
0054adcc  00 70 a0 e1                                      mov r7, r0
0054add0  01 40 a0 e1                                      mov r4, r1
0054add4  06 60 8f e0                                      add r6, pc, r6
0054add8  00 50 a0 e3                                      mov r5, #0
0054addc  05 11 96 e7                                      ldr r1, [r6, r5, lsl #2]
0054ade0  00 30 94 e5                                      ldr r3, [r4]
0054ade4  04 00 a0 e1                                      mov r0, r4
0054ade8  0f e0 a0 e1                                      mov lr, pc
0054adec  24 f1 93 e5                                      ldr pc, [r3, #0x124]
0054adf0  05 21 87 e0                                      add r2, r7, r5, lsl #2
0054adf4  01 50 85 e2                                      add r5, r5, #1
0054adf8  04 30 82 e2                                      add r3, r2, #4
0054adfc  50 ec e7 e7                                      ubfx lr, r0, #0x18, #8
0054ae00  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
0054ae04  50 18 e7 e7                                      ubfx r1, r0, #0x10, #8
0054ae08  15 00 55 e3                                      cmp r5, #0x15
0054ae0c  04 00 c2 e5                                      strb r0, [r2, #4]
0054ae10  03 e0 c3 e5                                      strb lr, [r3, #3]
0054ae14  01 c0 c3 e5                                      strb ip, [r3, #1]
0054ae18  02 10 c3 e5                                      strb r1, [r3, #2]
0054ae1c  ee ff ff 1a                                      bne #0x54addc
0054ae20  f4 a0 9f e5                                      ldr sl, [pc, #0xf4]
0054ae24  07 50 a0 e1                                      mov r5, r7
0054ae28  07 80 a0 e1                                      mov r8, r7
0054ae2c  0a a0 8f e0                                      add sl, pc, sl
0054ae30  58 a0 8a e2                                      add sl, sl, #0x58
0054ae34  00 60 a0 e3                                      mov r6, #0
0054ae38  06 10 9a e7                                      ldr r1, [sl, r6]
0054ae3c  00 30 94 e5                                      ldr r3, [r4]
0054ae40  04 00 a0 e1                                      mov r0, r4
0054ae44  0f e0 a0 e1                                      mov lr, pc
0054ae48  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0054ae4c  04 60 86 e2                                      add r6, r6, #4
0054ae50  28 00 56 e3                                      cmp r6, #0x28
0054ae54  58 00 88 e5                                      str r0, [r8, #0x58]
0054ae58  04 80 88 e2                                      add r8, r8, #4
0054ae5c  f5 ff ff 1a                                      bne #0x54ae38
0054ae60  b8 90 9f e5                                      ldr sb, [pc, #0xb8]
0054ae64  00 60 a0 e3                                      mov r6, #0
0054ae68  0d 80 a0 e1                                      mov r8, sp
0054ae6c  09 90 8f e0                                      add sb, pc, sb
0054ae70  84 90 89 e2                                      add sb, sb, #0x84
0054ae74  48 b0 a0 e3                                      mov fp, #0x48
0054ae78  9b 76 2a e0                                      mla sl, fp, r6, r7
0054ae7c  06 21 99 e7                                      ldr r2, [sb, r6, lsl #2]
0054ae80  f4 a0 8a e2                                      add sl, sl, #0xf4
0054ae84  0d 00 a0 e1                                      mov r0, sp
0054ae88  04 10 a0 e1                                      mov r1, r4
0054ae8c  00 30 94 e5                                      ldr r3, [r4]
0054ae90  0f e0 a0 e1                                      mov lr, pc
0054ae94  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0054ae98  08 00 5a e1                                      cmp sl, r8
0054ae9c  01 60 86 e2                                      add r6, r6, #1
0054aea0  0a 00 a0 e1                                      mov r0, sl
0054aea4  02 00 00 0a                                      beq #0x54aeb4
0054aea8  44 10 9d e5                                      ldr r1, [sp, #0x44]
0054aeac  40 20 9d e5                                      ldr r2, [sp, #0x40]
0054aeb0  ba 60 f7 eb                                      bl #0x3231a0
0054aeb4  44 30 9d e5                                      ldr r3, [sp, #0x44]
0054aeb8  08 00 53 e1                                      cmp r3, r8
0054aebc  03 00 a0 e1                                      mov r0, r3
0054aec0  02 00 00 0a                                      beq #0x54aed0
0054aec4  00 00 53 e3                                      cmp r3, #0
0054aec8  00 00 00 0a                                      beq #0x54aed0
0054aecc  5f 15 f7 eb                                      bl #0x310450
0054aed0  08 00 56 e3                                      cmp r6, #8
0054aed4  e7 ff ff 1a                                      bne #0x54ae78
0054aed8  44 70 9f e5                                      ldr r7, [pc, #0x44]
0054aedc  00 60 a0 e3                                      mov r6, #0
0054aee0  07 70 8f e0                                      add r7, pc, r7
0054aee4  a8 70 87 e2                                      add r7, r7, #0xa8
0054aee8  06 10 97 e7                                      ldr r1, [r7, r6]
0054aeec  00 30 94 e5                                      ldr r3, [r4]
0054aef0  04 00 a0 e1                                      mov r0, r4
0054aef4  0f e0 a0 e1                                      mov lr, pc
0054aef8  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0054aefc  04 60 86 e2                                      add r6, r6, #4
0054af00  5c 00 56 e3                                      cmp r6, #0x5c
0054af04  80 00 85 e5                                      str r0, [r5, #0x80]
0054af08  04 50 85 e2                                      add r5, r5, #4
0054af0c  f5 ff ff 1a                                      bne #0x54aee8
0054af10  4c d0 8d e2                                      add sp, sp, #0x4c
0054af14  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0054af18  d8 c1 40 00 80 c1 40 00 40 c1 40 00 cc c0 40 00  .byte 0xd8, 0xc1, 0x40, 0x00, 0x80, 0xc1, 0x40, 0x00, 0x40, 0xc1, 0x40, 0x00, 0xcc, 0xc0, 0x40, 0x00

; FUNCTION 0x0054af28, declared_size=156, range_size=156, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkinD1Ev
; demangled: glitch::gui::CGUISkin::~CGUISkin()
; decoder-mode: arm
0054af28  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0054af2c  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0054af30  70 40 2d e9                                      push {r4, r5, r6, lr}
0054af34  03 30 8f e0                                      add r3, pc, r3
0054af38  02 20 93 e7                                      ldr r2, [r3, r2]
0054af3c  00 60 a0 e1                                      mov r6, r0
0054af40  00 50 a0 e1                                      mov r5, r0
0054af44  98 10 82 e2                                      add r1, r2, #0x98
0054af48  1c 20 82 e2                                      add r2, r2, #0x1c
0054af4c  00 40 a0 e3                                      mov r4, #0
0054af50  00 20 80 e5                                      str r2, [r0]
0054af54  40 13 80 e5                                      str r1, [r0, #0x340]
0054af58  dc 00 95 e5                                      ldr r0, [r5, #0xdc]
0054af5c  01 40 84 e2                                      add r4, r4, #1
0054af60  04 50 85 e2                                      add r5, r5, #4
0054af64  00 00 50 e3                                      cmp r0, #0
0054af68  00 00 00 0a                                      beq #0x54af70
0054af6c  84 49 f7 eb                                      bl #0x31d584
0054af70  05 00 54 e3                                      cmp r4, #5
0054af74  f7 ff ff 1a                                      bne #0x54af58
0054af78  f0 00 96 e5                                      ldr r0, [r6, #0xf0]
0054af7c  00 00 50 e3                                      cmp r0, #0
0054af80  00 00 00 0a                                      beq #0x54af88
0054af84  7e 49 f7 eb                                      bl #0x31d584
0054af88  f4 50 86 e2                                      add r5, r6, #0xf4
0054af8c  cd 4f 86 e2                                      add r4, r6, #0x334
0054af90  48 40 44 e2                                      sub r4, r4, #0x48
0054af94  44 00 94 e5                                      ldr r0, [r4, #0x44]
0054af98  04 00 50 e1                                      cmp r0, r4
0054af9c  02 00 00 0a                                      beq #0x54afac
0054afa0  00 00 50 e3                                      cmp r0, #0
0054afa4  00 00 00 0a                                      beq #0x54afac
0054afa8  28 15 f7 eb                                      bl #0x310450
0054afac  05 00 54 e1                                      cmp r4, r5
0054afb0  f6 ff ff 1a                                      bne #0x54af90
0054afb4  06 00 a0 e1                                      mov r0, r6
0054afb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0054afbc  5c 9b 44 00 84 2a 00 00                          .byte 0x5c, 0x9b, 0x44, 0x00, 0x84, 0x2a, 0x00, 0x00

; FUNCTION 0x0054afc4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkinD0Ev
; demangled: glitch::gui::CGUISkin::~CGUISkin()
; decoder-mode: arm
0054afc4  10 40 2d e9                                      push {r4, lr}
0054afc8  00 40 a0 e1                                      mov r4, r0
0054afcc  d5 ff ff eb                                      bl #0x54af28
0054afd0  04 00 a0 e1                                      mov r0, r4
0054afd4  b5 0c f7 eb                                      bl #0x30e2b0
0054afd8  04 00 a0 e1                                      mov r0, r4
0054afdc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0054afe0, declared_size=152, range_size=152, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkinD2Ev
; demangled: glitch::gui::CGUISkin::~CGUISkin()
; decoder-mode: arm
0054afe0  70 40 2d e9                                      push {r4, r5, r6, lr}
0054afe4  00 30 91 e5                                      ldr r3, [r1]
0054afe8  00 60 a0 e1                                      mov r6, r0
0054afec  00 50 a0 e1                                      mov r5, r0
0054aff0  00 30 80 e5                                      str r3, [r0]
0054aff4  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0054aff8  10 20 91 e5                                      ldr r2, [r1, #0x10]
0054affc  00 40 a0 e3                                      mov r4, #0
0054b000  03 20 80 e7                                      str r2, [r0, r3]
0054b004  00 30 90 e5                                      ldr r3, [r0]
0054b008  14 20 91 e5                                      ldr r2, [r1, #0x14]
0054b00c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054b010  03 20 80 e7                                      str r2, [r0, r3]
0054b014  dc 00 95 e5                                      ldr r0, [r5, #0xdc]
0054b018  01 40 84 e2                                      add r4, r4, #1
0054b01c  04 50 85 e2                                      add r5, r5, #4
0054b020  00 00 50 e3                                      cmp r0, #0
0054b024  00 00 00 0a                                      beq #0x54b02c
0054b028  55 49 f7 eb                                      bl #0x31d584
0054b02c  05 00 54 e3                                      cmp r4, #5
0054b030  f7 ff ff 1a                                      bne #0x54b014
0054b034  f0 00 96 e5                                      ldr r0, [r6, #0xf0]
0054b038  00 00 50 e3                                      cmp r0, #0
0054b03c  00 00 00 0a                                      beq #0x54b044
0054b040  4f 49 f7 eb                                      bl #0x31d584
0054b044  f4 50 86 e2                                      add r5, r6, #0xf4
0054b048  cd 4f 86 e2                                      add r4, r6, #0x334
0054b04c  48 40 44 e2                                      sub r4, r4, #0x48
0054b050  44 00 94 e5                                      ldr r0, [r4, #0x44]
0054b054  04 00 50 e1                                      cmp r0, r4
0054b058  02 00 00 0a                                      beq #0x54b068
0054b05c  00 00 50 e3                                      cmp r0, #0
0054b060  00 00 00 0a                                      beq #0x54b068
0054b064  f9 14 f7 eb                                      bl #0x310450
0054b068  05 00 54 e1                                      cmp r4, r5
0054b06c  f6 ff ff 1a                                      bne #0x54b04c
0054b070  06 00 a0 e1                                      mov r0, r6
0054b074  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0054b078, declared_size=52, range_size=52, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin15draw2DRectangleEPNS0_11IGUIElementERKNS_5video6SColorERKNS_4core4rectIiEEPSB_
; demangled: glitch::gui::CGUISkin::draw2DRectangle(glitch::gui::IGUIElement*, glitch::video::SColor const&, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0054b078  30 00 2d e9                                      push {r4, r5}
0054b07c  00 40 d2 e5                                      ldrb r4, [r2]
0054b080  01 50 d2 e5                                      ldrb r5, [r2, #1]
0054b084  02 c0 d2 e5                                      ldrb ip, [r2, #2]
0054b088  03 10 d2 e5                                      ldrb r1, [r2, #3]
0054b08c  05 24 84 e1                                      orr r2, r4, r5, lsl #8
0054b090  0c 28 82 e1                                      orr r2, r2, ip, lsl #16
0054b094  01 1c 82 e1                                      orr r1, r2, r1, lsl #24
0054b098  34 03 90 e5                                      ldr r0, [r0, #0x334]
0054b09c  03 20 a0 e1                                      mov r2, r3
0054b0a0  08 30 9d e5                                      ldr r3, [sp, #8]
0054b0a4  30 00 bd e8                                      pop {r4, r5}
0054b0a8  f3 51 01 ea                                      b #0x59f87c

; FUNCTION 0x0054b0ac, declared_size=1168, range_size=1168, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin15draw3DTabButtonEPNS0_11IGUIElementEbRKNS_4core4rectIiEEPS7_NS0_14EGUI_ALIGNMENTE
; demangled: glitch::gui::CGUISkin::draw3DTabButton(glitch::gui::IGUIElement*, bool, glitch::core::rect<int> const&, glitch::core::rect<int> const*, glitch::gui::EGUI_ALIGNMENT)
; decoder-mode: arm
0054b0ac  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0054b0b0  34 83 90 e5                                      ldr r8, [r0, #0x334]
0054b0b4  44 d0 4d e2                                      sub sp, sp, #0x44
0054b0b8  00 40 a0 e1                                      mov r4, r0
0054b0bc  00 00 58 e3                                      cmp r8, #0
0054b0c0  03 50 a0 e1                                      mov r5, r3
0054b0c4  60 60 9d e5                                      ldr r6, [sp, #0x60]
0054b0c8  64 a0 9d e5                                      ldr sl, [sp, #0x64]
0054b0cc  8f 00 00 0a                                      beq #0x54b310
0054b0d0  04 20 93 e5                                      ldr r2, [r3, #4]
0054b0d4  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0054b0d8  00 00 5a e3                                      cmp sl, #0
0054b0dc  0c 20 8d e5                                      str r2, [sp, #0xc]
0054b0e0  14 30 8d e5                                      str r3, [sp, #0x14]
0054b0e4  00 10 95 e5                                      ldr r1, [r5]
0054b0e8  08 c0 95 e5                                      ldr ip, [r5, #8]
0054b0ec  89 00 00 0a                                      beq #0x54b318
0054b0f0  02 c0 4c e2                                      sub ip, ip, #2
0054b0f4  01 30 43 e2                                      sub r3, r3, #1
0054b0f8  01 10 81 e2                                      add r1, r1, #1
0054b0fc  10 c0 8d e5                                      str ip, [sp, #0x10]
0054b100  08 10 8d e5                                      str r1, [sp, #8]
0054b104  0c 30 8d e5                                      str r3, [sp, #0xc]
0054b108  03 10 a0 e3                                      mov r1, #3
0054b10c  00 30 90 e5                                      ldr r3, [r0]
0054b110  0f e0 a0 e1                                      mov lr, pc
0054b114  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b118  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b11c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b120  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b124  01 10 cd e5                                      strb r1, [sp, #1]
0054b128  02 20 cd e5                                      strb r2, [sp, #2]
0054b12c  03 30 cd e5                                      strb r3, [sp, #3]
0054b130  00 00 cd e5                                      strb r0, [sp]
0054b134  00 c0 9d e5                                      ldr ip, [sp]
0054b138  08 70 8d e2                                      add r7, sp, #8
0054b13c  08 00 a0 e1                                      mov r0, r8
0054b140  0c 10 a0 e1                                      mov r1, ip
0054b144  07 20 a0 e1                                      mov r2, r7
0054b148  06 30 a0 e1                                      mov r3, r6
0054b14c  28 c0 8d e5                                      str ip, [sp, #0x28]
0054b150  c9 51 01 eb                                      bl #0x59f87c
0054b154  00 30 95 e5                                      ldr r3, [r5]
0054b158  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0054b15c  04 00 95 e5                                      ldr r0, [r5, #4]
0054b160  01 10 83 e2                                      add r1, r3, #1
0054b164  01 20 42 e2                                      sub r2, r2, #1
0054b168  0c 00 8d e5                                      str r0, [sp, #0xc]
0054b16c  10 10 8d e5                                      str r1, [sp, #0x10]
0054b170  14 20 8d e5                                      str r2, [sp, #0x14]
0054b174  08 30 8d e5                                      str r3, [sp, #8]
0054b178  00 30 94 e5                                      ldr r3, [r4]
0054b17c  03 10 a0 e3                                      mov r1, #3
0054b180  04 00 a0 e1                                      mov r0, r4
0054b184  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054b188  0f e0 a0 e1                                      mov lr, pc
0054b18c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b190  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b194  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b198  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b19c  01 10 cd e5                                      strb r1, [sp, #1]
0054b1a0  02 20 cd e5                                      strb r2, [sp, #2]
0054b1a4  03 30 cd e5                                      strb r3, [sp, #3]
0054b1a8  00 00 cd e5                                      strb r0, [sp]
0054b1ac  00 c0 9d e5                                      ldr ip, [sp]
0054b1b0  08 00 a0 e1                                      mov r0, r8
0054b1b4  07 20 a0 e1                                      mov r2, r7
0054b1b8  0c 10 a0 e1                                      mov r1, ip
0054b1bc  06 30 a0 e1                                      mov r3, r6
0054b1c0  24 c0 8d e5                                      str ip, [sp, #0x24]
0054b1c4  ac 51 01 eb                                      bl #0x59f87c
0054b1c8  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0054b1cc  01 00 80 e2                                      add r0, r0, #1
0054b1d0  01 10 41 e2                                      sub r1, r1, #1
0054b1d4  02 20 42 e2                                      sub r2, r2, #2
0054b1d8  01 30 43 e2                                      sub r3, r3, #1
0054b1dc  08 00 8d e5                                      str r0, [sp, #8]
0054b1e0  0c 10 8d e5                                      str r1, [sp, #0xc]
0054b1e4  10 20 8d e5                                      str r2, [sp, #0x10]
0054b1e8  14 30 8d e5                                      str r3, [sp, #0x14]
0054b1ec  00 30 94 e5                                      ldr r3, [r4]
0054b1f0  02 10 a0 e3                                      mov r1, #2
0054b1f4  04 00 a0 e1                                      mov r0, r4
0054b1f8  34 53 94 e5                                      ldr r5, [r4, #0x334]
0054b1fc  0f e0 a0 e1                                      mov lr, pc
0054b200  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b204  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b208  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b20c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b210  01 10 cd e5                                      strb r1, [sp, #1]
0054b214  02 20 cd e5                                      strb r2, [sp, #2]
0054b218  03 30 cd e5                                      strb r3, [sp, #3]
0054b21c  00 00 cd e5                                      strb r0, [sp]
0054b220  00 c0 9d e5                                      ldr ip, [sp]
0054b224  05 00 a0 e1                                      mov r0, r5
0054b228  07 20 a0 e1                                      mov r2, r7
0054b22c  0c 10 a0 e1                                      mov r1, ip
0054b230  06 30 a0 e1                                      mov r3, r6
0054b234  20 c0 8d e5                                      str ip, [sp, #0x20]
0054b238  8f 51 01 eb                                      bl #0x59f87c
0054b23c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054b240  01 10 a0 e3                                      mov r1, #1
0054b244  00 30 94 e5                                      ldr r3, [r4]
0054b248  01 00 82 e0                                      add r0, r2, r1
0054b24c  10 00 8d e5                                      str r0, [sp, #0x10]
0054b250  08 20 8d e5                                      str r2, [sp, #8]
0054b254  04 00 a0 e1                                      mov r0, r4
0054b258  34 53 94 e5                                      ldr r5, [r4, #0x334]
0054b25c  0f e0 a0 e1                                      mov lr, pc
0054b260  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b264  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b268  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b26c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b270  01 10 cd e5                                      strb r1, [sp, #1]
0054b274  02 20 cd e5                                      strb r2, [sp, #2]
0054b278  03 30 cd e5                                      strb r3, [sp, #3]
0054b27c  00 00 cd e5                                      strb r0, [sp]
0054b280  00 c0 9d e5                                      ldr ip, [sp]
0054b284  05 00 a0 e1                                      mov r0, r5
0054b288  07 20 a0 e1                                      mov r2, r7
0054b28c  0c 10 a0 e1                                      mov r1, ip
0054b290  06 30 a0 e1                                      mov r3, r6
0054b294  1c c0 8d e5                                      str ip, [sp, #0x1c]
0054b298  77 51 01 eb                                      bl #0x59f87c
0054b29c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0054b2a0  08 20 9d e5                                      ldr r2, [sp, #8]
0054b2a4  14 30 9d e5                                      ldr r3, [sp, #0x14]
0054b2a8  01 10 81 e2                                      add r1, r1, #1
0054b2ac  01 20 82 e2                                      add r2, r2, #1
0054b2b0  01 30 43 e2                                      sub r3, r3, #1
0054b2b4  10 10 8d e5                                      str r1, [sp, #0x10]
0054b2b8  08 20 8d e5                                      str r2, [sp, #8]
0054b2bc  14 30 8d e5                                      str r3, [sp, #0x14]
0054b2c0  00 30 94 e5                                      ldr r3, [r4]
0054b2c4  04 00 a0 e1                                      mov r0, r4
0054b2c8  00 10 a0 e3                                      mov r1, #0
0054b2cc  34 43 94 e5                                      ldr r4, [r4, #0x334]
0054b2d0  0f e0 a0 e1                                      mov lr, pc
0054b2d4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b2d8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b2dc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b2e0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b2e4  01 10 cd e5                                      strb r1, [sp, #1]
0054b2e8  02 20 cd e5                                      strb r2, [sp, #2]
0054b2ec  03 30 cd e5                                      strb r3, [sp, #3]
0054b2f0  00 00 cd e5                                      strb r0, [sp]
0054b2f4  00 c0 9d e5                                      ldr ip, [sp]
0054b2f8  04 00 a0 e1                                      mov r0, r4
0054b2fc  07 20 a0 e1                                      mov r2, r7
0054b300  0c 10 a0 e1                                      mov r1, ip
0054b304  06 30 a0 e1                                      mov r3, r6
0054b308  18 c0 8d e5                                      str ip, [sp, #0x18]
0054b30c  5a 51 01 eb                                      bl #0x59f87c
0054b310  44 d0 8d e2                                      add sp, sp, #0x44
0054b314  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0054b318  02 c0 4c e2                                      sub ip, ip, #2
0054b31c  01 20 82 e2                                      add r2, r2, #1
0054b320  01 10 81 e2                                      add r1, r1, #1
0054b324  10 c0 8d e5                                      str ip, [sp, #0x10]
0054b328  14 20 8d e5                                      str r2, [sp, #0x14]
0054b32c  08 10 8d e5                                      str r1, [sp, #8]
0054b330  00 30 90 e5                                      ldr r3, [r0]
0054b334  03 10 a0 e3                                      mov r1, #3
0054b338  0f e0 a0 e1                                      mov lr, pc
0054b33c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b340  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b344  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b348  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b34c  01 10 cd e5                                      strb r1, [sp, #1]
0054b350  02 20 cd e5                                      strb r2, [sp, #2]
0054b354  03 30 cd e5                                      strb r3, [sp, #3]
0054b358  00 00 cd e5                                      strb r0, [sp]
0054b35c  00 c0 9d e5                                      ldr ip, [sp]
0054b360  08 70 8d e2                                      add r7, sp, #8
0054b364  08 00 a0 e1                                      mov r0, r8
0054b368  0c 10 a0 e1                                      mov r1, ip
0054b36c  07 20 a0 e1                                      mov r2, r7
0054b370  06 30 a0 e1                                      mov r3, r6
0054b374  3c c0 8d e5                                      str ip, [sp, #0x3c]
0054b378  3f 51 01 eb                                      bl #0x59f87c
0054b37c  00 30 95 e5                                      ldr r3, [r5]
0054b380  04 20 95 e5                                      ldr r2, [r5, #4]
0054b384  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0054b388  01 10 83 e2                                      add r1, r3, #1
0054b38c  01 20 82 e2                                      add r2, r2, #1
0054b390  14 00 8d e5                                      str r0, [sp, #0x14]
0054b394  10 10 8d e5                                      str r1, [sp, #0x10]
0054b398  0c 20 8d e5                                      str r2, [sp, #0xc]
0054b39c  08 30 8d e5                                      str r3, [sp, #8]
0054b3a0  00 30 94 e5                                      ldr r3, [r4]
0054b3a4  04 00 a0 e1                                      mov r0, r4
0054b3a8  03 10 a0 e3                                      mov r1, #3
0054b3ac  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054b3b0  0f e0 a0 e1                                      mov lr, pc
0054b3b4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b3b8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b3bc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b3c0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b3c4  01 10 cd e5                                      strb r1, [sp, #1]
0054b3c8  02 20 cd e5                                      strb r2, [sp, #2]
0054b3cc  03 30 cd e5                                      strb r3, [sp, #3]
0054b3d0  00 00 cd e5                                      strb r0, [sp]
0054b3d4  00 c0 9d e5                                      ldr ip, [sp]
0054b3d8  08 00 a0 e1                                      mov r0, r8
0054b3dc  07 20 a0 e1                                      mov r2, r7
0054b3e0  0c 10 a0 e1                                      mov r1, ip
0054b3e4  06 30 a0 e1                                      mov r3, r6
0054b3e8  38 c0 8d e5                                      str ip, [sp, #0x38]
0054b3ec  22 51 01 eb                                      bl #0x59f87c
0054b3f0  0e 00 95 e8                                      ldm r5, {r1, r2, r3}
0054b3f4  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0054b3f8  01 20 82 e2                                      add r2, r2, #1
0054b3fc  01 10 81 e2                                      add r1, r1, #1
0054b400  02 30 43 e2                                      sub r3, r3, #2
0054b404  14 00 8d e5                                      str r0, [sp, #0x14]
0054b408  08 10 8d e5                                      str r1, [sp, #8]
0054b40c  0c 20 8d e5                                      str r2, [sp, #0xc]
0054b410  10 30 8d e5                                      str r3, [sp, #0x10]
0054b414  00 30 94 e5                                      ldr r3, [r4]
0054b418  04 00 a0 e1                                      mov r0, r4
0054b41c  02 10 a0 e3                                      mov r1, #2
0054b420  34 53 94 e5                                      ldr r5, [r4, #0x334]
0054b424  0f e0 a0 e1                                      mov lr, pc
0054b428  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b42c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b430  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b434  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b438  01 10 cd e5                                      strb r1, [sp, #1]
0054b43c  02 20 cd e5                                      strb r2, [sp, #2]
0054b440  03 30 cd e5                                      strb r3, [sp, #3]
0054b444  00 00 cd e5                                      strb r0, [sp]
0054b448  00 c0 9d e5                                      ldr ip, [sp]
0054b44c  05 00 a0 e1                                      mov r0, r5
0054b450  07 20 a0 e1                                      mov r2, r7
0054b454  0c 10 a0 e1                                      mov r1, ip
0054b458  06 30 a0 e1                                      mov r3, r6
0054b45c  34 c0 8d e5                                      str ip, [sp, #0x34]
0054b460  05 51 01 eb                                      bl #0x59f87c
0054b464  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054b468  00 30 94 e5                                      ldr r3, [r4]
0054b46c  04 00 a0 e1                                      mov r0, r4
0054b470  01 10 82 e2                                      add r1, r2, #1
0054b474  10 10 8d e5                                      str r1, [sp, #0x10]
0054b478  08 20 8d e5                                      str r2, [sp, #8]
0054b47c  01 10 a0 e3                                      mov r1, #1
0054b480  34 53 94 e5                                      ldr r5, [r4, #0x334]
0054b484  0f e0 a0 e1                                      mov lr, pc
0054b488  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b48c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b490  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b494  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b498  01 10 cd e5                                      strb r1, [sp, #1]
0054b49c  02 20 cd e5                                      strb r2, [sp, #2]
0054b4a0  03 30 cd e5                                      strb r3, [sp, #3]
0054b4a4  00 00 cd e5                                      strb r0, [sp]
0054b4a8  00 c0 9d e5                                      ldr ip, [sp]
0054b4ac  05 00 a0 e1                                      mov r0, r5
0054b4b0  07 20 a0 e1                                      mov r2, r7
0054b4b4  0c 10 a0 e1                                      mov r1, ip
0054b4b8  06 30 a0 e1                                      mov r3, r6
0054b4bc  30 c0 8d e5                                      str ip, [sp, #0x30]
0054b4c0  ed 50 01 eb                                      bl #0x59f87c
0054b4c4  10 10 9d e5                                      ldr r1, [sp, #0x10]
0054b4c8  08 20 9d e5                                      ldr r2, [sp, #8]
0054b4cc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0054b4d0  01 10 81 e2                                      add r1, r1, #1
0054b4d4  01 20 82 e2                                      add r2, r2, #1
0054b4d8  01 30 83 e2                                      add r3, r3, #1
0054b4dc  10 10 8d e5                                      str r1, [sp, #0x10]
0054b4e0  08 20 8d e5                                      str r2, [sp, #8]
0054b4e4  0c 30 8d e5                                      str r3, [sp, #0xc]
0054b4e8  0a 10 a0 e1                                      mov r1, sl
0054b4ec  00 30 94 e5                                      ldr r3, [r4]
0054b4f0  04 00 a0 e1                                      mov r0, r4
0054b4f4  34 43 94 e5                                      ldr r4, [r4, #0x334]
0054b4f8  0f e0 a0 e1                                      mov lr, pc
0054b4fc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b500  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b504  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b508  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b50c  01 10 cd e5                                      strb r1, [sp, #1]
0054b510  02 20 cd e5                                      strb r2, [sp, #2]
0054b514  03 30 cd e5                                      strb r3, [sp, #3]
0054b518  00 00 cd e5                                      strb r0, [sp]
0054b51c  00 c0 9d e5                                      ldr ip, [sp]
0054b520  04 00 a0 e1                                      mov r0, r4
0054b524  07 20 a0 e1                                      mov r2, r7
0054b528  0c 10 a0 e1                                      mov r1, ip
0054b52c  06 30 a0 e1                                      mov r3, r6
0054b530  2c c0 8d e5                                      str ip, [sp, #0x2c]
0054b534  d0 50 01 eb                                      bl #0x59f87c
0054b538  74 ff ff ea                                      b #0x54b310

; FUNCTION 0x0054b53c, declared_size=980, range_size=980, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin16draw3DSunkenPaneEPNS0_11IGUIElementENS_5video6SColorEbbRKNS_4core4rectIiEEPS9_
; demangled: glitch::gui::CGUISkin::draw3DSunkenPane(glitch::gui::IGUIElement*, glitch::video::SColor, bool, bool, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0054b53c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0054b540  34 83 90 e5                                      ldr r8, [r0, #0x334]
0054b544  44 d0 4d e2                                      sub sp, sp, #0x44
0054b548  00 40 a0 e1                                      mov r4, r0
0054b54c  00 00 58 e3                                      cmp r8, #0
0054b550  0c 20 8d e5                                      str r2, [sp, #0xc]
0054b554  64 50 9d e5                                      ldr r5, [sp, #0x64]
0054b558  68 60 9d e5                                      ldr r6, [sp, #0x68]
0054b55c  60 10 dd e5                                      ldrb r1, [sp, #0x60]
0054b560  77 00 00 0a                                      beq #0x54b744
0054b564  00 54 95 e8                                      ldm r5, {sl, ip, lr}
0054b568  0c 70 95 e5                                      ldr r7, [r5, #0xc]
0054b56c  00 00 53 e3                                      cmp r3, #0
0054b570  10 a0 8d e5                                      str sl, [sp, #0x10]
0054b574  1c 70 8d e5                                      str r7, [sp, #0x1c]
0054b578  14 c0 8d e5                                      str ip, [sp, #0x14]
0054b57c  18 e0 8d e5                                      str lr, [sp, #0x18]
0054b580  71 00 00 0a                                      beq #0x54b74c
0054b584  00 00 51 e3                                      cmp r1, #0
0054b588  10 70 8d 02                                      addeq r7, sp, #0x10
0054b58c  07 00 00 0a                                      beq #0x54b5b0
0054b590  10 70 8d e2                                      add r7, sp, #0x10
0054b594  08 00 a0 e1                                      mov r0, r8
0054b598  02 10 a0 e1                                      mov r1, r2
0054b59c  06 30 a0 e1                                      mov r3, r6
0054b5a0  07 20 a0 e1                                      mov r2, r7
0054b5a4  b4 50 01 eb                                      bl #0x59f87c
0054b5a8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0054b5ac  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054b5b0  01 c0 8c e2                                      add ip, ip, #1
0054b5b4  1c c0 8d e5                                      str ip, [sp, #0x1c]
0054b5b8  00 30 94 e5                                      ldr r3, [r4]
0054b5bc  04 00 a0 e1                                      mov r0, r4
0054b5c0  01 10 a0 e3                                      mov r1, #1
0054b5c4  0f e0 a0 e1                                      mov lr, pc
0054b5c8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b5cc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b5d0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b5d4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b5d8  01 10 cd e5                                      strb r1, [sp, #1]
0054b5dc  02 20 cd e5                                      strb r2, [sp, #2]
0054b5e0  03 30 cd e5                                      strb r3, [sp, #3]
0054b5e4  00 00 cd e5                                      strb r0, [sp]
0054b5e8  00 c0 9d e5                                      ldr ip, [sp]
0054b5ec  08 00 a0 e1                                      mov r0, r8
0054b5f0  07 20 a0 e1                                      mov r2, r7
0054b5f4  0c 10 a0 e1                                      mov r1, ip
0054b5f8  06 30 a0 e1                                      mov r3, r6
0054b5fc  3c c0 8d e5                                      str ip, [sp, #0x3c]
0054b600  9d 50 01 eb                                      bl #0x59f87c
0054b604  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054b608  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0054b60c  00 30 94 e5                                      ldr r3, [r4]
0054b610  01 20 82 e2                                      add r2, r2, #1
0054b614  1c 10 8d e5                                      str r1, [sp, #0x1c]
0054b618  18 20 8d e5                                      str r2, [sp, #0x18]
0054b61c  04 00 a0 e1                                      mov r0, r4
0054b620  01 10 a0 e3                                      mov r1, #1
0054b624  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054b628  0f e0 a0 e1                                      mov lr, pc
0054b62c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b630  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b634  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b638  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b63c  01 10 cd e5                                      strb r1, [sp, #1]
0054b640  02 20 cd e5                                      strb r2, [sp, #2]
0054b644  03 30 cd e5                                      strb r3, [sp, #3]
0054b648  00 00 cd e5                                      strb r0, [sp]
0054b64c  00 c0 9d e5                                      ldr ip, [sp]
0054b650  08 00 a0 e1                                      mov r0, r8
0054b654  07 20 a0 e1                                      mov r2, r7
0054b658  0c 10 a0 e1                                      mov r1, ip
0054b65c  06 30 a0 e1                                      mov r3, r6
0054b660  38 c0 8d e5                                      str ip, [sp, #0x38]
0054b664  84 50 01 eb                                      bl #0x59f87c
0054b668  09 00 95 e9                                      ldmib r5, {r0, r3}
0054b66c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0054b670  01 20 43 e2                                      sub r2, r3, #1
0054b674  14 00 8d e5                                      str r0, [sp, #0x14]
0054b678  1c 10 8d e5                                      str r1, [sp, #0x1c]
0054b67c  10 20 8d e5                                      str r2, [sp, #0x10]
0054b680  18 30 8d e5                                      str r3, [sp, #0x18]
0054b684  00 30 94 e5                                      ldr r3, [r4]
0054b688  04 00 a0 e1                                      mov r0, r4
0054b68c  03 10 a0 e3                                      mov r1, #3
0054b690  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054b694  0f e0 a0 e1                                      mov lr, pc
0054b698  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b69c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b6a0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b6a4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b6a8  01 10 cd e5                                      strb r1, [sp, #1]
0054b6ac  02 20 cd e5                                      strb r2, [sp, #2]
0054b6b0  03 30 cd e5                                      strb r3, [sp, #3]
0054b6b4  00 00 cd e5                                      strb r0, [sp]
0054b6b8  00 c0 9d e5                                      ldr ip, [sp]
0054b6bc  08 00 a0 e1                                      mov r0, r8
0054b6c0  07 20 a0 e1                                      mov r2, r7
0054b6c4  0c 10 a0 e1                                      mov r1, ip
0054b6c8  06 30 a0 e1                                      mov r3, r6
0054b6cc  34 c0 8d e5                                      str ip, [sp, #0x34]
0054b6d0  69 50 01 eb                                      bl #0x59f87c
0054b6d4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054b6d8  00 00 95 e5                                      ldr r0, [r5]
0054b6dc  08 10 95 e5                                      ldr r1, [r5, #8]
0054b6e0  01 20 43 e2                                      sub r2, r3, #1
0054b6e4  10 00 8d e5                                      str r0, [sp, #0x10]
0054b6e8  18 10 8d e5                                      str r1, [sp, #0x18]
0054b6ec  14 20 8d e5                                      str r2, [sp, #0x14]
0054b6f0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0054b6f4  00 30 94 e5                                      ldr r3, [r4]
0054b6f8  04 00 a0 e1                                      mov r0, r4
0054b6fc  03 10 a0 e3                                      mov r1, #3
0054b700  34 43 94 e5                                      ldr r4, [r4, #0x334]
0054b704  0f e0 a0 e1                                      mov lr, pc
0054b708  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b70c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b710  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b714  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b718  01 10 cd e5                                      strb r1, [sp, #1]
0054b71c  02 20 cd e5                                      strb r2, [sp, #2]
0054b720  03 30 cd e5                                      strb r3, [sp, #3]
0054b724  00 00 cd e5                                      strb r0, [sp]
0054b728  00 c0 9d e5                                      ldr ip, [sp]
0054b72c  04 00 a0 e1                                      mov r0, r4
0054b730  07 20 a0 e1                                      mov r2, r7
0054b734  0c 10 a0 e1                                      mov r1, ip
0054b738  06 30 a0 e1                                      mov r3, r6
0054b73c  30 c0 8d e5                                      str ip, [sp, #0x30]
0054b740  4d 50 01 eb                                      bl #0x59f87c
0054b744  44 d0 8d e2                                      add sp, sp, #0x44
0054b748  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0054b74c  00 00 51 e3                                      cmp r1, #0
0054b750  10 70 8d 02                                      addeq r7, sp, #0x10
0054b754  57 00 00 1a                                      bne #0x54b8b8
0054b758  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0054b75c  01 e0 4e e2                                      sub lr, lr, #1
0054b760  18 e0 8d e5                                      str lr, [sp, #0x18]
0054b764  01 30 43 e2                                      sub r3, r3, #1
0054b768  1c 30 8d e5                                      str r3, [sp, #0x1c]
0054b76c  00 30 94 e5                                      ldr r3, [r4]
0054b770  01 10 a0 e3                                      mov r1, #1
0054b774  04 00 a0 e1                                      mov r0, r4
0054b778  0f e0 a0 e1                                      mov lr, pc
0054b77c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b780  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b784  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b788  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b78c  01 10 cd e5                                      strb r1, [sp, #1]
0054b790  02 20 cd e5                                      strb r2, [sp, #2]
0054b794  03 30 cd e5                                      strb r3, [sp, #3]
0054b798  00 00 cd e5                                      strb r0, [sp]
0054b79c  00 c0 9d e5                                      ldr ip, [sp]
0054b7a0  08 00 a0 e1                                      mov r0, r8
0054b7a4  07 20 a0 e1                                      mov r2, r7
0054b7a8  0c 10 a0 e1                                      mov r1, ip
0054b7ac  06 30 a0 e1                                      mov r3, r6
0054b7b0  28 c0 8d e5                                      str ip, [sp, #0x28]
0054b7b4  30 50 01 eb                                      bl #0x59f87c
0054b7b8  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054b7bc  14 30 9d e5                                      ldr r3, [sp, #0x14]
0054b7c0  04 10 a0 e3                                      mov r1, #4
0054b7c4  01 20 82 e2                                      add r2, r2, #1
0054b7c8  01 30 83 e2                                      add r3, r3, #1
0054b7cc  10 20 8d e5                                      str r2, [sp, #0x10]
0054b7d0  14 30 8d e5                                      str r3, [sp, #0x14]
0054b7d4  00 30 94 e5                                      ldr r3, [r4]
0054b7d8  04 00 a0 e1                                      mov r0, r4
0054b7dc  34 53 94 e5                                      ldr r5, [r4, #0x334]
0054b7e0  0f e0 a0 e1                                      mov lr, pc
0054b7e4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b7e8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b7ec  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b7f0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b7f4  01 10 cd e5                                      strb r1, [sp, #1]
0054b7f8  02 20 cd e5                                      strb r2, [sp, #2]
0054b7fc  03 30 cd e5                                      strb r3, [sp, #3]
0054b800  00 00 cd e5                                      strb r0, [sp]
0054b804  00 c0 9d e5                                      ldr ip, [sp]
0054b808  05 00 a0 e1                                      mov r0, r5
0054b80c  07 20 a0 e1                                      mov r2, r7
0054b810  0c 10 a0 e1                                      mov r1, ip
0054b814  06 30 a0 e1                                      mov r3, r6
0054b818  24 c0 8d e5                                      str ip, [sp, #0x24]
0054b81c  16 50 01 eb                                      bl #0x59f87c
0054b820  18 20 9d e5                                      ldr r2, [sp, #0x18]
0054b824  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0054b828  00 10 a0 e3                                      mov r1, #0
0054b82c  01 20 42 e2                                      sub r2, r2, #1
0054b830  01 30 43 e2                                      sub r3, r3, #1
0054b834  18 20 8d e5                                      str r2, [sp, #0x18]
0054b838  1c 30 8d e5                                      str r3, [sp, #0x1c]
0054b83c  00 30 94 e5                                      ldr r3, [r4]
0054b840  04 00 a0 e1                                      mov r0, r4
0054b844  34 53 94 e5                                      ldr r5, [r4, #0x334]
0054b848  0f e0 a0 e1                                      mov lr, pc
0054b84c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b850  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b854  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b858  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b85c  01 10 cd e5                                      strb r1, [sp, #1]
0054b860  02 20 cd e5                                      strb r2, [sp, #2]
0054b864  03 30 cd e5                                      strb r3, [sp, #3]
0054b868  00 00 cd e5                                      strb r0, [sp]
0054b86c  00 c0 9d e5                                      ldr ip, [sp]
0054b870  05 00 a0 e1                                      mov r0, r5
0054b874  07 20 a0 e1                                      mov r2, r7
0054b878  0c 10 a0 e1                                      mov r1, ip
0054b87c  06 30 a0 e1                                      mov r3, r6
0054b880  20 c0 8d e5                                      str ip, [sp, #0x20]
0054b884  fc 4f 01 eb                                      bl #0x59f87c
0054b888  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0054b88c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0054b890  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054b894  01 e0 8e e2                                      add lr, lr, #1
0054b898  01 c0 8c e2                                      add ip, ip, #1
0054b89c  07 20 a0 e1                                      mov r2, r7
0054b8a0  06 30 a0 e1                                      mov r3, r6
0054b8a4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0054b8a8  10 e0 8d e5                                      str lr, [sp, #0x10]
0054b8ac  14 c0 8d e5                                      str ip, [sp, #0x14]
0054b8b0  f1 4f 01 eb                                      bl #0x59f87c
0054b8b4  a2 ff ff ea                                      b #0x54b744
0054b8b8  03 10 a0 e3                                      mov r1, #3
0054b8bc  00 30 90 e5                                      ldr r3, [r0]
0054b8c0  0f e0 a0 e1                                      mov lr, pc
0054b8c4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b8c8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b8cc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b8d0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b8d4  01 10 cd e5                                      strb r1, [sp, #1]
0054b8d8  02 20 cd e5                                      strb r2, [sp, #2]
0054b8dc  03 30 cd e5                                      strb r3, [sp, #3]
0054b8e0  00 00 cd e5                                      strb r0, [sp]
0054b8e4  00 c0 9d e5                                      ldr ip, [sp]
0054b8e8  10 70 8d e2                                      add r7, sp, #0x10
0054b8ec  08 00 a0 e1                                      mov r0, r8
0054b8f0  0c 10 a0 e1                                      mov r1, ip
0054b8f4  07 20 a0 e1                                      mov r2, r7
0054b8f8  06 30 a0 e1                                      mov r3, r6
0054b8fc  2c c0 8d e5                                      str ip, [sp, #0x2c]
0054b900  dd 4f 01 eb                                      bl #0x59f87c
0054b904  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0054b908  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054b90c  91 ff ff ea                                      b #0x54b758

; FUNCTION 0x0054b910, declared_size=1140, range_size=1140, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin13draw3DTabBodyEPNS0_11IGUIElementEbbRKNS_4core4rectIiEEPS7_iNS0_14EGUI_ALIGNMENTE
; demangled: glitch::gui::CGUISkin::draw3DTabBody(glitch::gui::IGUIElement*, bool, bool, glitch::core::rect<int> const&, glitch::core::rect<int> const*, int, glitch::gui::EGUI_ALIGNMENT)
; decoder-mode: arm
0054b910  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0054b914  34 13 90 e5                                      ldr r1, [r0, #0x334]
0054b918  5c d0 4d e2                                      sub sp, sp, #0x5c
0054b91c  00 40 a0 e1                                      mov r4, r0
0054b920  00 00 51 e3                                      cmp r1, #0
0054b924  03 70 a0 e1                                      mov r7, r3
0054b928  80 50 9d e5                                      ldr r5, [sp, #0x80]
0054b92c  84 80 9d e5                                      ldr r8, [sp, #0x84]
0054b930  88 60 9d e5                                      ldr r6, [sp, #0x88]
0054b934  8c b0 9d e5                                      ldr fp, [sp, #0x8c]
0054b938  92 00 00 0a                                      beq #0x54bb88
0054b93c  00 14 95 e8                                      ldm r5, {sl, ip}
0054b940  08 10 95 e5                                      ldr r1, [r5, #8]
0054b944  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054b948  01 00 76 e3                                      cmn r6, #1
0054b94c  24 a0 8d e5                                      str sl, [sp, #0x24]
0054b950  28 c0 8d e5                                      str ip, [sp, #0x28]
0054b954  2c 10 8d e5                                      str r1, [sp, #0x2c]
0054b958  30 30 8d e5                                      str r3, [sp, #0x30]
0054b95c  00 01 00 0a                                      beq #0x54bd64
0054b960  00 00 52 e3                                      cmp r2, #0
0054b964  51 00 00 0a                                      beq #0x54bab0
0054b968  00 00 5b e3                                      cmp fp, #0
0054b96c  ac 00 00 1a                                      bne #0x54bc24
0054b970  28 10 9d e5                                      ldr r1, [sp, #0x28]
0054b974  24 20 9d e5                                      ldr r2, [sp, #0x24]
0054b978  00 30 94 e5                                      ldr r3, [r4]
0054b97c  02 10 81 e2                                      add r1, r1, #2
0054b980  01 20 82 e2                                      add r2, r2, #1
0054b984  06 10 81 e0                                      add r1, r1, r6
0054b988  28 10 8d e5                                      str r1, [sp, #0x28]
0054b98c  2c 20 8d e5                                      str r2, [sp, #0x2c]
0054b990  03 10 a0 e3                                      mov r1, #3
0054b994  04 00 a0 e1                                      mov r0, r4
0054b998  34 93 94 e5                                      ldr sb, [r4, #0x334]
0054b99c  0f e0 a0 e1                                      mov lr, pc
0054b9a0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b9a4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b9a8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b9ac  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b9b0  19 10 cd e5                                      strb r1, [sp, #0x19]
0054b9b4  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054b9b8  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054b9bc  18 00 cd e5                                      strb r0, [sp, #0x18]
0054b9c0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0054b9c4  24 a0 8d e2                                      add sl, sp, #0x24
0054b9c8  09 00 a0 e1                                      mov r0, sb
0054b9cc  0c 10 a0 e1                                      mov r1, ip
0054b9d0  0a 20 a0 e1                                      mov r2, sl
0054b9d4  08 30 a0 e1                                      mov r3, r8
0054b9d8  54 c0 8d e5                                      str ip, [sp, #0x54]
0054b9dc  a6 4f 01 eb                                      bl #0x59f87c
0054b9e0  08 20 95 e5                                      ldr r2, [r5, #8]
0054b9e4  00 30 94 e5                                      ldr r3, [r4]
0054b9e8  04 00 a0 e1                                      mov r0, r4
0054b9ec  01 10 42 e2                                      sub r1, r2, #1
0054b9f0  24 10 8d e5                                      str r1, [sp, #0x24]
0054b9f4  2c 20 8d e5                                      str r2, [sp, #0x2c]
0054b9f8  01 10 a0 e3                                      mov r1, #1
0054b9fc  34 93 94 e5                                      ldr sb, [r4, #0x334]
0054ba00  0f e0 a0 e1                                      mov lr, pc
0054ba04  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054ba08  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054ba0c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ba10  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054ba14  19 10 cd e5                                      strb r1, [sp, #0x19]
0054ba18  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054ba1c  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054ba20  18 00 cd e5                                      strb r0, [sp, #0x18]
0054ba24  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0054ba28  09 00 a0 e1                                      mov r0, sb
0054ba2c  0a 20 a0 e1                                      mov r2, sl
0054ba30  0c 10 a0 e1                                      mov r1, ip
0054ba34  08 30 a0 e1                                      mov r3, r8
0054ba38  50 c0 8d e5                                      str ip, [sp, #0x50]
0054ba3c  8e 4f 01 eb                                      bl #0x59f87c
0054ba40  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054ba44  00 00 95 e5                                      ldr r0, [r5]
0054ba48  08 10 95 e5                                      ldr r1, [r5, #8]
0054ba4c  01 20 43 e2                                      sub r2, r3, #1
0054ba50  24 00 8d e5                                      str r0, [sp, #0x24]
0054ba54  2c 10 8d e5                                      str r1, [sp, #0x2c]
0054ba58  28 20 8d e5                                      str r2, [sp, #0x28]
0054ba5c  30 30 8d e5                                      str r3, [sp, #0x30]
0054ba60  00 30 94 e5                                      ldr r3, [r4]
0054ba64  01 10 a0 e3                                      mov r1, #1
0054ba68  04 00 a0 e1                                      mov r0, r4
0054ba6c  34 93 94 e5                                      ldr sb, [r4, #0x334]
0054ba70  0f e0 a0 e1                                      mov lr, pc
0054ba74  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054ba78  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054ba7c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ba80  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054ba84  19 10 cd e5                                      strb r1, [sp, #0x19]
0054ba88  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054ba8c  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054ba90  18 00 cd e5                                      strb r0, [sp, #0x18]
0054ba94  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0054ba98  09 00 a0 e1                                      mov r0, sb
0054ba9c  0a 20 a0 e1                                      mov r2, sl
0054baa0  0c 10 a0 e1                                      mov r1, ip
0054baa4  08 30 a0 e1                                      mov r3, r8
0054baa8  4c c0 8d e5                                      str ip, [sp, #0x4c]
0054baac  72 4f 01 eb                                      bl #0x59f87c
0054bab0  00 00 57 e3                                      cmp r7, #0
0054bab4  33 00 00 0a                                      beq #0x54bb88
0054bab8  00 00 5b e3                                      cmp fp, #0
0054babc  33 00 00 0a                                      beq #0x54bb90
0054bac0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0054bac4  0e 00 95 e8                                      ldm r5, {r1, r2, r3}
0054bac8  02 00 40 e2                                      sub r0, r0, #2
0054bacc  00 60 66 e0                                      rsb r6, r6, r0
0054bad0  01 30 43 e2                                      sub r3, r3, #1
0054bad4  01 10 81 e2                                      add r1, r1, #1
0054bad8  01 20 42 e2                                      sub r2, r2, #1
0054badc  24 10 8d e5                                      str r1, [sp, #0x24]
0054bae0  28 20 8d e5                                      str r2, [sp, #0x28]
0054bae4  2c 30 8d e5                                      str r3, [sp, #0x2c]
0054bae8  30 60 8d e5                                      str r6, [sp, #0x30]
0054baec  38 33 d4 e5                                      ldrb r3, [r4, #0x338]
0054baf0  00 00 53 e3                                      cmp r3, #0
0054baf4  35 00 00 0a                                      beq #0x54bbd0
0054baf8  02 10 a0 e3                                      mov r1, #2
0054bafc  00 30 94 e5                                      ldr r3, [r4]
0054bb00  04 00 a0 e1                                      mov r0, r4
0054bb04  0f e0 a0 e1                                      mov lr, pc
0054bb08  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054bb0c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054bb10  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054bb14  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054bb18  19 10 cd e5                                      strb r1, [sp, #0x19]
0054bb1c  18 00 cd e5                                      strb r0, [sp, #0x18]
0054bb20  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054bb24  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054bb28  18 20 9d e5                                      ldr r2, [sp, #0x18]
0054bb2c  00 30 94 e5                                      ldr r3, [r4]
0054bb30  01 10 a0 e3                                      mov r1, #1
0054bb34  38 20 8d e5                                      str r2, [sp, #0x38]
0054bb38  04 00 a0 e1                                      mov r0, r4
0054bb3c  0f e0 a0 e1                                      mov lr, pc
0054bb40  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054bb44  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054bb48  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054bb4c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054bb50  19 10 cd e5                                      strb r1, [sp, #0x19]
0054bb54  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054bb58  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054bb5c  18 00 cd e5                                      strb r0, [sp, #0x18]
0054bb60  38 20 9d e5                                      ldr r2, [sp, #0x38]
0054bb64  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0054bb68  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054bb6c  24 10 8d e2                                      add r1, sp, #0x24
0054bb70  02 30 a0 e1                                      mov r3, r2
0054bb74  04 c0 8d e5                                      str ip, [sp, #4]
0054bb78  08 80 8d e5                                      str r8, [sp, #8]
0054bb7c  34 c0 8d e5                                      str ip, [sp, #0x34]
0054bb80  00 c0 8d e5                                      str ip, [sp]
0054bb84  fd 4e 01 eb                                      bl #0x59f780
0054bb88  5c d0 8d e2                                      add sp, sp, #0x5c
0054bb8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0054bb90  04 00 95 e5                                      ldr r0, [r5, #4]
0054bb94  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054bb98  00 20 95 e5                                      ldr r2, [r5]
0054bb9c  08 10 95 e5                                      ldr r1, [r5, #8]
0054bba0  02 00 80 e2                                      add r0, r0, #2
0054bba4  01 30 43 e2                                      sub r3, r3, #1
0054bba8  06 60 80 e0                                      add r6, r0, r6
0054bbac  01 10 41 e2                                      sub r1, r1, #1
0054bbb0  01 20 82 e2                                      add r2, r2, #1
0054bbb4  28 60 8d e5                                      str r6, [sp, #0x28]
0054bbb8  2c 10 8d e5                                      str r1, [sp, #0x2c]
0054bbbc  24 20 8d e5                                      str r2, [sp, #0x24]
0054bbc0  30 30 8d e5                                      str r3, [sp, #0x30]
0054bbc4  38 33 d4 e5                                      ldrb r3, [r4, #0x338]
0054bbc8  00 00 53 e3                                      cmp r3, #0
0054bbcc  c9 ff ff 1a                                      bne #0x54baf8
0054bbd0  00 30 94 e5                                      ldr r3, [r4]
0054bbd4  04 00 a0 e1                                      mov r0, r4
0054bbd8  02 10 a0 e3                                      mov r1, #2
0054bbdc  34 43 94 e5                                      ldr r4, [r4, #0x334]
0054bbe0  0f e0 a0 e1                                      mov lr, pc
0054bbe4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054bbe8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054bbec  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054bbf0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054bbf4  19 10 cd e5                                      strb r1, [sp, #0x19]
0054bbf8  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054bbfc  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054bc00  18 00 cd e5                                      strb r0, [sp, #0x18]
0054bc04  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0054bc08  04 00 a0 e1                                      mov r0, r4
0054bc0c  08 30 a0 e1                                      mov r3, r8
0054bc10  0c 10 a0 e1                                      mov r1, ip
0054bc14  24 20 8d e2                                      add r2, sp, #0x24
0054bc18  3c c0 8d e5                                      str ip, [sp, #0x3c]
0054bc1c  16 4f 01 eb                                      bl #0x59f87c
0054bc20  d8 ff ff ea                                      b #0x54bb88
0054bc24  30 20 9d e5                                      ldr r2, [sp, #0x30]
0054bc28  24 30 9d e5                                      ldr r3, [sp, #0x24]
0054bc2c  03 10 a0 e3                                      mov r1, #3
0054bc30  02 20 42 e2                                      sub r2, r2, #2
0054bc34  02 20 66 e0                                      rsb r2, r6, r2
0054bc38  01 30 83 e2                                      add r3, r3, #1
0054bc3c  30 20 8d e5                                      str r2, [sp, #0x30]
0054bc40  2c 30 8d e5                                      str r3, [sp, #0x2c]
0054bc44  00 30 94 e5                                      ldr r3, [r4]
0054bc48  04 00 a0 e1                                      mov r0, r4
0054bc4c  34 93 94 e5                                      ldr sb, [r4, #0x334]
0054bc50  0f e0 a0 e1                                      mov lr, pc
0054bc54  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054bc58  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054bc5c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054bc60  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054bc64  19 10 cd e5                                      strb r1, [sp, #0x19]
0054bc68  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054bc6c  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054bc70  18 00 cd e5                                      strb r0, [sp, #0x18]
0054bc74  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0054bc78  24 a0 8d e2                                      add sl, sp, #0x24
0054bc7c  09 00 a0 e1                                      mov r0, sb
0054bc80  0c 10 a0 e1                                      mov r1, ip
0054bc84  0a 20 a0 e1                                      mov r2, sl
0054bc88  08 30 a0 e1                                      mov r3, r8
0054bc8c  48 c0 8d e5                                      str ip, [sp, #0x48]
0054bc90  f9 4e 01 eb                                      bl #0x59f87c
0054bc94  08 20 95 e5                                      ldr r2, [r5, #8]
0054bc98  00 30 94 e5                                      ldr r3, [r4]
0054bc9c  01 10 a0 e3                                      mov r1, #1
0054bca0  01 00 42 e2                                      sub r0, r2, #1
0054bca4  24 00 8d e5                                      str r0, [sp, #0x24]
0054bca8  2c 20 8d e5                                      str r2, [sp, #0x2c]
0054bcac  04 00 a0 e1                                      mov r0, r4
0054bcb0  34 93 94 e5                                      ldr sb, [r4, #0x334]
0054bcb4  0f e0 a0 e1                                      mov lr, pc
0054bcb8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054bcbc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054bcc0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054bcc4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054bcc8  19 10 cd e5                                      strb r1, [sp, #0x19]
0054bccc  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054bcd0  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054bcd4  18 00 cd e5                                      strb r0, [sp, #0x18]
0054bcd8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0054bcdc  09 00 a0 e1                                      mov r0, sb
0054bce0  0a 20 a0 e1                                      mov r2, sl
0054bce4  0c 10 a0 e1                                      mov r1, ip
0054bce8  08 30 a0 e1                                      mov r3, r8
0054bcec  44 c0 8d e5                                      str ip, [sp, #0x44]
0054bcf0  e1 4e 01 eb                                      bl #0x59f87c
0054bcf4  09 00 95 e8                                      ldm r5, {r0, r3}
0054bcf8  08 10 95 e5                                      ldr r1, [r5, #8]
0054bcfc  01 20 83 e2                                      add r2, r3, #1
0054bd00  24 00 8d e5                                      str r0, [sp, #0x24]
0054bd04  2c 10 8d e5                                      str r1, [sp, #0x2c]
0054bd08  30 20 8d e5                                      str r2, [sp, #0x30]
0054bd0c  28 30 8d e5                                      str r3, [sp, #0x28]
0054bd10  00 30 94 e5                                      ldr r3, [r4]
0054bd14  03 10 a0 e3                                      mov r1, #3
0054bd18  04 00 a0 e1                                      mov r0, r4
0054bd1c  34 93 94 e5                                      ldr sb, [r4, #0x334]
0054bd20  0f e0 a0 e1                                      mov lr, pc
0054bd24  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054bd28  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054bd2c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054bd30  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054bd34  19 10 cd e5                                      strb r1, [sp, #0x19]
0054bd38  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054bd3c  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054bd40  18 00 cd e5                                      strb r0, [sp, #0x18]
0054bd44  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0054bd48  09 00 a0 e1                                      mov r0, sb
0054bd4c  0a 20 a0 e1                                      mov r2, sl
0054bd50  0c 10 a0 e1                                      mov r1, ip
0054bd54  08 30 a0 e1                                      mov r3, r8
0054bd58  40 c0 8d e5                                      str ip, [sp, #0x40]
0054bd5c  c6 4e 01 eb                                      bl #0x59f87c
0054bd60  52 ff ff ea                                      b #0x54bab0
0054bd64  00 30 90 e5                                      ldr r3, [r0]
0054bd68  07 10 a0 e3                                      mov r1, #7
0054bd6c  14 20 8d e5                                      str r2, [sp, #0x14]
0054bd70  0f e0 a0 e1                                      mov lr, pc
0054bd74  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0054bd78  14 20 9d e5                                      ldr r2, [sp, #0x14]
0054bd7c  00 60 a0 e1                                      mov r6, r0
0054bd80  f6 fe ff ea                                      b #0x54b960

; FUNCTION 0x0054bd84, declared_size=624, range_size=624, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin13draw3DToolBarEPNS0_11IGUIElementERKNS_4core4rectIiEEPS7_
; demangled: glitch::gui::CGUISkin::draw3DToolBar(glitch::gui::IGUIElement*, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0054bd84  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0054bd88  34 63 90 e5                                      ldr r6, [r0, #0x334]
0054bd8c  38 d0 4d e2                                      sub sp, sp, #0x38
0054bd90  00 40 a0 e1                                      mov r4, r0
0054bd94  00 00 56 e3                                      cmp r6, #0
0054bd98  02 50 a0 e1                                      mov r5, r2
0054bd9c  03 70 a0 e1                                      mov r7, r3
0054bda0  4b 00 00 0a                                      beq #0x54bed4
0054bda4  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0054bda8  00 c0 92 e5                                      ldr ip, [r2]
0054bdac  08 20 92 e5                                      ldr r2, [r2, #8]
0054bdb0  01 10 43 e2                                      sub r1, r3, #1
0054bdb4  18 c0 8d e5                                      str ip, [sp, #0x18]
0054bdb8  1c 10 8d e5                                      str r1, [sp, #0x1c]
0054bdbc  20 20 8d e5                                      str r2, [sp, #0x20]
0054bdc0  24 30 8d e5                                      str r3, [sp, #0x24]
0054bdc4  01 10 a0 e3                                      mov r1, #1
0054bdc8  00 30 90 e5                                      ldr r3, [r0]
0054bdcc  0f e0 a0 e1                                      mov lr, pc
0054bdd0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054bdd4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054bdd8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054bddc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054bde0  11 10 cd e5                                      strb r1, [sp, #0x11]
0054bde4  12 20 cd e5                                      strb r2, [sp, #0x12]
0054bde8  13 30 cd e5                                      strb r3, [sp, #0x13]
0054bdec  10 00 cd e5                                      strb r0, [sp, #0x10]
0054bdf0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054bdf4  18 80 8d e2                                      add r8, sp, #0x18
0054bdf8  06 00 a0 e1                                      mov r0, r6
0054bdfc  0c 10 a0 e1                                      mov r1, ip
0054be00  08 20 a0 e1                                      mov r2, r8
0054be04  07 30 a0 e1                                      mov r3, r7
0054be08  34 c0 8d e5                                      str ip, [sp, #0x34]
0054be0c  9a 4e 01 eb                                      bl #0x59f87c
0054be10  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054be14  38 c3 d4 e5                                      ldrb ip, [r4, #0x338]
0054be18  07 00 95 e8                                      ldm r5, {r0, r1, r2}
0054be1c  01 30 43 e2                                      sub r3, r3, #1
0054be20  00 00 5c e3                                      cmp ip, #0
0054be24  18 00 8d e5                                      str r0, [sp, #0x18]
0054be28  1c 10 8d e5                                      str r1, [sp, #0x1c]
0054be2c  20 20 8d e5                                      str r2, [sp, #0x20]
0054be30  24 30 8d e5                                      str r3, [sp, #0x24]
0054be34  28 00 00 0a                                      beq #0x54bedc
0054be38  3c 13 94 e5                                      ldr r1, [r4, #0x33c]
0054be3c  02 00 51 e3                                      cmp r1, #2
0054be40  3a 00 00 0a                                      beq #0x54bf30
0054be44  02 10 a0 e3                                      mov r1, #2
0054be48  00 30 94 e5                                      ldr r3, [r4]
0054be4c  04 00 a0 e1                                      mov r0, r4
0054be50  0f e0 a0 e1                                      mov lr, pc
0054be54  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054be58  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054be5c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054be60  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054be64  11 10 cd e5                                      strb r1, [sp, #0x11]
0054be68  10 00 cd e5                                      strb r0, [sp, #0x10]
0054be6c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054be70  13 30 cd e5                                      strb r3, [sp, #0x13]
0054be74  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054be78  00 30 94 e5                                      ldr r3, [r4]
0054be7c  01 10 a0 e3                                      mov r1, #1
0054be80  2c 20 8d e5                                      str r2, [sp, #0x2c]
0054be84  04 00 a0 e1                                      mov r0, r4
0054be88  0f e0 a0 e1                                      mov lr, pc
0054be8c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054be90  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054be94  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054be98  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054be9c  11 10 cd e5                                      strb r1, [sp, #0x11]
0054bea0  12 20 cd e5                                      strb r2, [sp, #0x12]
0054bea4  13 30 cd e5                                      strb r3, [sp, #0x13]
0054bea8  10 00 cd e5                                      strb r0, [sp, #0x10]
0054beac  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0054beb0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054beb4  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054beb8  08 10 a0 e1                                      mov r1, r8
0054bebc  02 30 a0 e1                                      mov r3, r2
0054bec0  04 c0 8d e5                                      str ip, [sp, #4]
0054bec4  08 70 8d e5                                      str r7, [sp, #8]
0054bec8  28 c0 8d e5                                      str ip, [sp, #0x28]
0054becc  00 c0 8d e5                                      str ip, [sp]
0054bed0  2a 4e 01 eb                                      bl #0x59f780
0054bed4  38 d0 8d e2                                      add sp, sp, #0x38
0054bed8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0054bedc  00 30 94 e5                                      ldr r3, [r4]
0054bee0  04 00 a0 e1                                      mov r0, r4
0054bee4  02 10 a0 e3                                      mov r1, #2
0054bee8  34 43 94 e5                                      ldr r4, [r4, #0x334]
0054beec  0f e0 a0 e1                                      mov lr, pc
0054bef0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054bef4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054bef8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054befc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054bf00  11 10 cd e5                                      strb r1, [sp, #0x11]
0054bf04  12 20 cd e5                                      strb r2, [sp, #0x12]
0054bf08  13 30 cd e5                                      strb r3, [sp, #0x13]
0054bf0c  10 00 cd e5                                      strb r0, [sp, #0x10]
0054bf10  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054bf14  04 00 a0 e1                                      mov r0, r4
0054bf18  08 20 a0 e1                                      mov r2, r8
0054bf1c  0c 10 a0 e1                                      mov r1, ip
0054bf20  07 30 a0 e1                                      mov r3, r7
0054bf24  30 c0 8d e5                                      str ip, [sp, #0x30]
0054bf28  53 4e 01 eb                                      bl #0x59f87c
0054bf2c  e8 ff ff ea                                      b #0x54bed4
0054bf30  00 30 94 e5                                      ldr r3, [r4]
0054bf34  04 00 a0 e1                                      mov r0, r4
0054bf38  0f e0 a0 e1                                      mov lr, pc
0054bf3c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054bf40  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054bf44  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054bf48  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054bf4c  11 10 cd e5                                      strb r1, [sp, #0x11]
0054bf50  10 00 cd e5                                      strb r0, [sp, #0x10]
0054bf54  12 20 cd e5                                      strb r2, [sp, #0x12]
0054bf58  13 30 cd e5                                      strb r3, [sp, #0x13]
0054bf5c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054bf60  00 30 94 e5                                      ldr r3, [r4]
0054bf64  04 00 a0 e1                                      mov r0, r4
0054bf68  28 20 8d e5                                      str r2, [sp, #0x28]
0054bf6c  01 10 a0 e3                                      mov r1, #1
0054bf70  0f e0 a0 e1                                      mov lr, pc
0054bf74  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054bf78  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054bf7c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054bf80  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054bf84  12 20 cd e5                                      strb r2, [sp, #0x12]
0054bf88  13 30 cd e5                                      strb r3, [sp, #0x13]
0054bf8c  11 10 cd e5                                      strb r1, [sp, #0x11]
0054bf90  10 00 cd e5                                      strb r0, [sp, #0x10]
0054bf94  10 10 9d e5                                      ldr r1, [sp, #0x10]
0054bf98  2b 20 dd e5                                      ldrb r2, [sp, #0x2b]
0054bf9c  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054bfa0  21 3c a0 e1                                      lsr r3, r1, #0x18
0054bfa4  02 2e e0 e1                                      mvn r2, r2, lsl #28
0054bfa8  03 3e e0 e1                                      mvn r3, r3, lsl #28
0054bfac  22 2e e0 e1                                      mvn r2, r2, lsr #28
0054bfb0  23 3e e0 e1                                      mvn r3, r3, lsr #28
0054bfb4  2c 10 8d e5                                      str r1, [sp, #0x2c]
0054bfb8  2b 20 cd e5                                      strb r2, [sp, #0x2b]
0054bfbc  2f 30 cd e5                                      strb r3, [sp, #0x2f]
0054bfc0  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0054bfc4  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0054bfc8  24 40 9d e5                                      ldr r4, [sp, #0x24]
0054bfcc  08 10 a0 e1                                      mov r1, r8
0054bfd0  0e 20 a0 e1                                      mov r2, lr
0054bfd4  01 40 84 e2                                      add r4, r4, #1
0054bfd8  0c 30 a0 e1                                      mov r3, ip
0054bfdc  24 40 8d e5                                      str r4, [sp, #0x24]
0054bfe0  08 70 8d e5                                      str r7, [sp, #8]
0054bfe4  00 e0 8d e5                                      str lr, [sp]
0054bfe8  04 c0 8d e5                                      str ip, [sp, #4]
0054bfec  e3 4d 01 eb                                      bl #0x59f780
0054bff0  b7 ff ff ea                                      b #0x54bed4

; FUNCTION 0x0054bff4, declared_size=1048, range_size=1048, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin14draw3DMenuPaneEPNS0_11IGUIElementERKNS_4core4rectIiEEPS7_
; demangled: glitch::gui::CGUISkin::draw3DMenuPane(glitch::gui::IGUIElement*, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0054bff4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0054bff8  34 83 90 e5                                      ldr r8, [r0, #0x334]
0054bffc  54 d0 4d e2                                      sub sp, sp, #0x54
0054c000  00 40 a0 e1                                      mov r4, r0
0054c004  00 00 58 e3                                      cmp r8, #0
0054c008  02 50 a0 e1                                      mov r5, r2
0054c00c  03 60 a0 e1                                      mov r6, r3
0054c010  df 00 00 0a                                      beq #0x54c394
0054c014  3c 73 90 e5                                      ldr r7, [r0, #0x33c]
0054c018  00 a0 92 e5                                      ldr sl, [r2]
0054c01c  08 e0 95 e5                                      ldr lr, [r5, #8]
0054c020  04 20 92 e5                                      ldr r2, [r2, #4]
0054c024  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0054c028  02 00 57 e3                                      cmp r7, #2
0054c02c  1c a0 8d e5                                      str sl, [sp, #0x1c]
0054c030  24 e0 8d e5                                      str lr, [sp, #0x24]
0054c034  28 c0 8d e5                                      str ip, [sp, #0x28]
0054c038  20 20 8d e5                                      str r2, [sp, #0x20]
0054c03c  eb 00 00 0a                                      beq #0x54c3f0
0054c040  01 20 82 e2                                      add r2, r2, #1
0054c044  28 20 8d e5                                      str r2, [sp, #0x28]
0054c048  03 10 a0 e3                                      mov r1, #3
0054c04c  00 30 90 e5                                      ldr r3, [r0]
0054c050  0f e0 a0 e1                                      mov lr, pc
0054c054  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c058  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c05c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c060  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c064  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c068  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c06c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c070  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c074  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c078  1c 70 8d e2                                      add r7, sp, #0x1c
0054c07c  08 00 a0 e1                                      mov r0, r8
0054c080  0c 10 a0 e1                                      mov r1, ip
0054c084  07 20 a0 e1                                      mov r2, r7
0054c088  06 30 a0 e1                                      mov r3, r6
0054c08c  4c c0 8d e5                                      str ip, [sp, #0x4c]
0054c090  f9 4d 01 eb                                      bl #0x59f87c
0054c094  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0054c098  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0054c09c  03 10 a0 e3                                      mov r1, #3
0054c0a0  01 30 83 e2                                      add r3, r3, #1
0054c0a4  28 20 8d e5                                      str r2, [sp, #0x28]
0054c0a8  24 30 8d e5                                      str r3, [sp, #0x24]
0054c0ac  00 30 94 e5                                      ldr r3, [r4]
0054c0b0  04 00 a0 e1                                      mov r0, r4
0054c0b4  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054c0b8  0f e0 a0 e1                                      mov lr, pc
0054c0bc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c0c0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c0c4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c0c8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c0cc  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c0d0  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c0d4  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c0d8  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c0dc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c0e0  08 00 a0 e1                                      mov r0, r8
0054c0e4  07 20 a0 e1                                      mov r2, r7
0054c0e8  0c 10 a0 e1                                      mov r1, ip
0054c0ec  06 30 a0 e1                                      mov r3, r6
0054c0f0  48 c0 8d e5                                      str ip, [sp, #0x48]
0054c0f4  e0 4d 01 eb                                      bl #0x59f87c
0054c0f8  0a 00 95 e9                                      ldmib r5, {r1, r3}
0054c0fc  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0054c100  01 00 43 e2                                      sub r0, r3, #1
0054c104  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c108  20 10 8d e5                                      str r1, [sp, #0x20]
0054c10c  28 20 8d e5                                      str r2, [sp, #0x28]
0054c110  24 30 8d e5                                      str r3, [sp, #0x24]
0054c114  00 10 a0 e3                                      mov r1, #0
0054c118  00 30 94 e5                                      ldr r3, [r4]
0054c11c  04 00 a0 e1                                      mov r0, r4
0054c120  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054c124  0f e0 a0 e1                                      mov lr, pc
0054c128  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c12c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c130  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c134  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c138  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c13c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c140  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c144  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c148  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c14c  08 00 a0 e1                                      mov r0, r8
0054c150  07 20 a0 e1                                      mov r2, r7
0054c154  0c 10 a0 e1                                      mov r1, ip
0054c158  06 30 a0 e1                                      mov r3, r6
0054c15c  44 c0 8d e5                                      str ip, [sp, #0x44]
0054c160  c5 4d 01 eb                                      bl #0x59f87c
0054c164  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0054c168  24 10 9d e5                                      ldr r1, [sp, #0x24]
0054c16c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0054c170  28 30 9d e5                                      ldr r3, [sp, #0x28]
0054c174  01 00 40 e2                                      sub r0, r0, #1
0054c178  01 20 82 e2                                      add r2, r2, #1
0054c17c  01 10 41 e2                                      sub r1, r1, #1
0054c180  01 30 43 e2                                      sub r3, r3, #1
0054c184  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c188  24 10 8d e5                                      str r1, [sp, #0x24]
0054c18c  20 20 8d e5                                      str r2, [sp, #0x20]
0054c190  28 30 8d e5                                      str r3, [sp, #0x28]
0054c194  01 10 a0 e3                                      mov r1, #1
0054c198  00 30 94 e5                                      ldr r3, [r4]
0054c19c  04 00 a0 e1                                      mov r0, r4
0054c1a0  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054c1a4  0f e0 a0 e1                                      mov lr, pc
0054c1a8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c1ac  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c1b0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c1b4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c1b8  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c1bc  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c1c0  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c1c4  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c1c8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c1cc  08 00 a0 e1                                      mov r0, r8
0054c1d0  07 20 a0 e1                                      mov r2, r7
0054c1d4  0c 10 a0 e1                                      mov r1, ip
0054c1d8  06 30 a0 e1                                      mov r3, r6
0054c1dc  40 c0 8d e5                                      str ip, [sp, #0x40]
0054c1e0  a5 4d 01 eb                                      bl #0x59f87c
0054c1e4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054c1e8  00 00 95 e5                                      ldr r0, [r5]
0054c1ec  08 20 95 e5                                      ldr r2, [r5, #8]
0054c1f0  01 10 43 e2                                      sub r1, r3, #1
0054c1f4  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c1f8  20 10 8d e5                                      str r1, [sp, #0x20]
0054c1fc  24 20 8d e5                                      str r2, [sp, #0x24]
0054c200  28 30 8d e5                                      str r3, [sp, #0x28]
0054c204  00 10 a0 e3                                      mov r1, #0
0054c208  00 30 94 e5                                      ldr r3, [r4]
0054c20c  04 00 a0 e1                                      mov r0, r4
0054c210  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054c214  0f e0 a0 e1                                      mov lr, pc
0054c218  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c21c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c220  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c224  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c228  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c22c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c230  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c234  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c238  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c23c  08 00 a0 e1                                      mov r0, r8
0054c240  07 20 a0 e1                                      mov r2, r7
0054c244  0c 10 a0 e1                                      mov r1, ip
0054c248  06 30 a0 e1                                      mov r3, r6
0054c24c  3c c0 8d e5                                      str ip, [sp, #0x3c]
0054c250  89 4d 01 eb                                      bl #0x59f87c
0054c254  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0054c258  24 10 9d e5                                      ldr r1, [sp, #0x24]
0054c25c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0054c260  28 30 9d e5                                      ldr r3, [sp, #0x28]
0054c264  01 00 80 e2                                      add r0, r0, #1
0054c268  01 20 42 e2                                      sub r2, r2, #1
0054c26c  01 10 41 e2                                      sub r1, r1, #1
0054c270  01 30 43 e2                                      sub r3, r3, #1
0054c274  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c278  24 10 8d e5                                      str r1, [sp, #0x24]
0054c27c  20 20 8d e5                                      str r2, [sp, #0x20]
0054c280  28 30 8d e5                                      str r3, [sp, #0x28]
0054c284  01 10 a0 e3                                      mov r1, #1
0054c288  00 30 94 e5                                      ldr r3, [r4]
0054c28c  04 00 a0 e1                                      mov r0, r4
0054c290  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054c294  0f e0 a0 e1                                      mov lr, pc
0054c298  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c29c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c2a0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c2a4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c2a8  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c2ac  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c2b0  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c2b4  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c2b8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c2bc  08 00 a0 e1                                      mov r0, r8
0054c2c0  07 20 a0 e1                                      mov r2, r7
0054c2c4  0c 10 a0 e1                                      mov r1, ip
0054c2c8  06 30 a0 e1                                      mov r3, r6
0054c2cc  38 c0 8d e5                                      str ip, [sp, #0x38]
0054c2d0  69 4d 01 eb                                      bl #0x59f87c
0054c2d4  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0054c2d8  38 c3 d4 e5                                      ldrb ip, [r4, #0x338]
0054c2dc  01 00 80 e2                                      add r0, r0, #1
0054c2e0  01 10 81 e2                                      add r1, r1, #1
0054c2e4  02 20 42 e2                                      sub r2, r2, #2
0054c2e8  02 30 43 e2                                      sub r3, r3, #2
0054c2ec  00 00 5c e3                                      cmp ip, #0
0054c2f0  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c2f4  20 10 8d e5                                      str r1, [sp, #0x20]
0054c2f8  24 20 8d e5                                      str r2, [sp, #0x24]
0054c2fc  28 30 8d e5                                      str r3, [sp, #0x28]
0054c300  25 00 00 0a                                      beq #0x54c39c
0054c304  02 10 a0 e3                                      mov r1, #2
0054c308  00 30 94 e5                                      ldr r3, [r4]
0054c30c  04 00 a0 e1                                      mov r0, r4
0054c310  0f e0 a0 e1                                      mov lr, pc
0054c314  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c318  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c31c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c320  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c324  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c328  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c32c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c330  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c334  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054c338  00 30 94 e5                                      ldr r3, [r4]
0054c33c  01 10 a0 e3                                      mov r1, #1
0054c340  30 20 8d e5                                      str r2, [sp, #0x30]
0054c344  04 00 a0 e1                                      mov r0, r4
0054c348  0f e0 a0 e1                                      mov lr, pc
0054c34c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c350  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c354  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c358  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c35c  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c360  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c364  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c368  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c36c  30 20 9d e5                                      ldr r2, [sp, #0x30]
0054c370  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c374  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054c378  07 10 a0 e1                                      mov r1, r7
0054c37c  02 30 a0 e1                                      mov r3, r2
0054c380  04 c0 8d e5                                      str ip, [sp, #4]
0054c384  08 60 8d e5                                      str r6, [sp, #8]
0054c388  2c c0 8d e5                                      str ip, [sp, #0x2c]
0054c38c  00 c0 8d e5                                      str ip, [sp]
0054c390  fa 4c 01 eb                                      bl #0x59f780
0054c394  54 d0 8d e2                                      add sp, sp, #0x54
0054c398  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0054c39c  00 30 94 e5                                      ldr r3, [r4]
0054c3a0  04 00 a0 e1                                      mov r0, r4
0054c3a4  02 10 a0 e3                                      mov r1, #2
0054c3a8  34 43 94 e5                                      ldr r4, [r4, #0x334]
0054c3ac  0f e0 a0 e1                                      mov lr, pc
0054c3b0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c3b4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c3b8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c3bc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c3c0  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c3c4  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c3c8  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c3cc  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c3d0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c3d4  04 00 a0 e1                                      mov r0, r4
0054c3d8  07 20 a0 e1                                      mov r2, r7
0054c3dc  0c 10 a0 e1                                      mov r1, ip
0054c3e0  06 30 a0 e1                                      mov r3, r6
0054c3e4  34 c0 8d e5                                      str ip, [sp, #0x34]
0054c3e8  23 4d 01 eb                                      bl #0x59f87c
0054c3ec  e8 ff ff ea                                      b #0x54c394
0054c3f0  03 20 42 e2                                      sub r2, r2, #3
0054c3f4  20 20 8d e5                                      str r2, [sp, #0x20]
0054c3f8  00 c0 90 e5                                      ldr ip, [r0]
0054c3fc  1c 20 8d e2                                      add r2, sp, #0x1c
0054c400  0f e0 a0 e1                                      mov lr, pc
0054c404  40 f0 9c e5                                      ldr pc, [ip, #0x40]
0054c408  e1 ff ff ea                                      b #0x54c394

; FUNCTION 0x0054c40c, declared_size=1692, range_size=1692, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin22draw3DWindowBackgroundEPNS0_11IGUIElementEbNS_5video6SColorERKNS_4core4rectIiEEPS9_
; demangled: glitch::gui::CGUISkin::draw3DWindowBackground(glitch::gui::IGUIElement*, bool, glitch::video::SColor, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0054c40c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0054c410  34 a3 91 e5                                      ldr sl, [r1, #0x334]
0054c414  68 d0 4d e2                                      sub sp, sp, #0x68
0054c418  01 40 a0 e1                                      mov r4, r1
0054c41c  00 00 5a e3                                      cmp sl, #0
0054c420  00 80 a0 e1                                      mov r8, r0
0054c424  03 90 a0 e1                                      mov sb, r3
0054c428  8c 50 9d e5                                      ldr r5, [sp, #0x8c]
0054c42c  90 60 9d e5                                      ldr r6, [sp, #0x90]
0054c430  77 01 00 0a                                      beq #0x54ca14
0054c434  09 00 95 e8                                      ldm r5, {r0, r3}
0054c438  08 10 95 e5                                      ldr r1, [r5, #8]
0054c43c  01 20 83 e2                                      add r2, r3, #1
0054c440  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c444  24 10 8d e5                                      str r1, [sp, #0x24]
0054c448  28 20 8d e5                                      str r2, [sp, #0x28]
0054c44c  20 30 8d e5                                      str r3, [sp, #0x20]
0054c450  03 10 a0 e3                                      mov r1, #3
0054c454  00 30 94 e5                                      ldr r3, [r4]
0054c458  04 00 a0 e1                                      mov r0, r4
0054c45c  0f e0 a0 e1                                      mov lr, pc
0054c460  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c464  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c468  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c46c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c470  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c474  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c478  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c47c  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c480  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c484  1c 70 8d e2                                      add r7, sp, #0x1c
0054c488  0a 00 a0 e1                                      mov r0, sl
0054c48c  0c 10 a0 e1                                      mov r1, ip
0054c490  07 20 a0 e1                                      mov r2, r7
0054c494  06 30 a0 e1                                      mov r3, r6
0054c498  64 c0 8d e5                                      str ip, [sp, #0x64]
0054c49c  f6 4c 01 eb                                      bl #0x59f87c
0054c4a0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0054c4a4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0054c4a8  03 10 a0 e3                                      mov r1, #3
0054c4ac  01 30 83 e2                                      add r3, r3, #1
0054c4b0  28 20 8d e5                                      str r2, [sp, #0x28]
0054c4b4  24 30 8d e5                                      str r3, [sp, #0x24]
0054c4b8  00 30 94 e5                                      ldr r3, [r4]
0054c4bc  04 00 a0 e1                                      mov r0, r4
0054c4c0  34 a3 94 e5                                      ldr sl, [r4, #0x334]
0054c4c4  0f e0 a0 e1                                      mov lr, pc
0054c4c8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c4cc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c4d0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c4d4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c4d8  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c4dc  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c4e0  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c4e4  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c4e8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c4ec  0a 00 a0 e1                                      mov r0, sl
0054c4f0  07 20 a0 e1                                      mov r2, r7
0054c4f4  0c 10 a0 e1                                      mov r1, ip
0054c4f8  06 30 a0 e1                                      mov r3, r6
0054c4fc  60 c0 8d e5                                      str ip, [sp, #0x60]
0054c500  dd 4c 01 eb                                      bl #0x59f87c
0054c504  0a 00 95 e9                                      ldmib r5, {r1, r3}
0054c508  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0054c50c  01 00 43 e2                                      sub r0, r3, #1
0054c510  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c514  20 10 8d e5                                      str r1, [sp, #0x20]
0054c518  28 20 8d e5                                      str r2, [sp, #0x28]
0054c51c  24 30 8d e5                                      str r3, [sp, #0x24]
0054c520  00 10 a0 e3                                      mov r1, #0
0054c524  00 30 94 e5                                      ldr r3, [r4]
0054c528  04 00 a0 e1                                      mov r0, r4
0054c52c  34 a3 94 e5                                      ldr sl, [r4, #0x334]
0054c530  0f e0 a0 e1                                      mov lr, pc
0054c534  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c538  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c53c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c540  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c544  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c548  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c54c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c550  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c554  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c558  0a 00 a0 e1                                      mov r0, sl
0054c55c  07 20 a0 e1                                      mov r2, r7
0054c560  0c 10 a0 e1                                      mov r1, ip
0054c564  06 30 a0 e1                                      mov r3, r6
0054c568  5c c0 8d e5                                      str ip, [sp, #0x5c]
0054c56c  c2 4c 01 eb                                      bl #0x59f87c
0054c570  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0054c574  24 10 9d e5                                      ldr r1, [sp, #0x24]
0054c578  20 20 9d e5                                      ldr r2, [sp, #0x20]
0054c57c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0054c580  01 00 40 e2                                      sub r0, r0, #1
0054c584  01 20 82 e2                                      add r2, r2, #1
0054c588  01 10 41 e2                                      sub r1, r1, #1
0054c58c  01 30 43 e2                                      sub r3, r3, #1
0054c590  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c594  24 10 8d e5                                      str r1, [sp, #0x24]
0054c598  20 20 8d e5                                      str r2, [sp, #0x20]
0054c59c  28 30 8d e5                                      str r3, [sp, #0x28]
0054c5a0  01 10 a0 e3                                      mov r1, #1
0054c5a4  00 30 94 e5                                      ldr r3, [r4]
0054c5a8  04 00 a0 e1                                      mov r0, r4
0054c5ac  34 a3 94 e5                                      ldr sl, [r4, #0x334]
0054c5b0  0f e0 a0 e1                                      mov lr, pc
0054c5b4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c5b8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c5bc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c5c0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c5c4  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c5c8  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c5cc  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c5d0  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c5d4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c5d8  0a 00 a0 e1                                      mov r0, sl
0054c5dc  07 20 a0 e1                                      mov r2, r7
0054c5e0  0c 10 a0 e1                                      mov r1, ip
0054c5e4  06 30 a0 e1                                      mov r3, r6
0054c5e8  58 c0 8d e5                                      str ip, [sp, #0x58]
0054c5ec  a2 4c 01 eb                                      bl #0x59f87c
0054c5f0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054c5f4  00 00 95 e5                                      ldr r0, [r5]
0054c5f8  08 20 95 e5                                      ldr r2, [r5, #8]
0054c5fc  01 10 43 e2                                      sub r1, r3, #1
0054c600  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c604  20 10 8d e5                                      str r1, [sp, #0x20]
0054c608  24 20 8d e5                                      str r2, [sp, #0x24]
0054c60c  28 30 8d e5                                      str r3, [sp, #0x28]
0054c610  00 10 a0 e3                                      mov r1, #0
0054c614  00 30 94 e5                                      ldr r3, [r4]
0054c618  04 00 a0 e1                                      mov r0, r4
0054c61c  34 a3 94 e5                                      ldr sl, [r4, #0x334]
0054c620  0f e0 a0 e1                                      mov lr, pc
0054c624  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c628  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c62c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c630  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c634  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c638  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c63c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c640  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c644  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c648  0a 00 a0 e1                                      mov r0, sl
0054c64c  07 20 a0 e1                                      mov r2, r7
0054c650  0c 10 a0 e1                                      mov r1, ip
0054c654  06 30 a0 e1                                      mov r3, r6
0054c658  54 c0 8d e5                                      str ip, [sp, #0x54]
0054c65c  86 4c 01 eb                                      bl #0x59f87c
0054c660  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0054c664  24 10 9d e5                                      ldr r1, [sp, #0x24]
0054c668  20 20 9d e5                                      ldr r2, [sp, #0x20]
0054c66c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0054c670  01 00 80 e2                                      add r0, r0, #1
0054c674  01 20 42 e2                                      sub r2, r2, #1
0054c678  01 10 41 e2                                      sub r1, r1, #1
0054c67c  01 30 43 e2                                      sub r3, r3, #1
0054c680  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c684  24 10 8d e5                                      str r1, [sp, #0x24]
0054c688  20 20 8d e5                                      str r2, [sp, #0x20]
0054c68c  28 30 8d e5                                      str r3, [sp, #0x28]
0054c690  01 10 a0 e3                                      mov r1, #1
0054c694  00 30 94 e5                                      ldr r3, [r4]
0054c698  04 00 a0 e1                                      mov r0, r4
0054c69c  34 a3 94 e5                                      ldr sl, [r4, #0x334]
0054c6a0  0f e0 a0 e1                                      mov lr, pc
0054c6a4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c6a8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c6ac  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c6b0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c6b4  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c6b8  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c6bc  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c6c0  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c6c4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c6c8  0a 00 a0 e1                                      mov r0, sl
0054c6cc  07 20 a0 e1                                      mov r2, r7
0054c6d0  0c 10 a0 e1                                      mov r1, ip
0054c6d4  06 30 a0 e1                                      mov r3, r6
0054c6d8  50 c0 8d e5                                      str ip, [sp, #0x50]
0054c6dc  66 4c 01 eb                                      bl #0x59f87c
0054c6e0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0054c6e4  38 c3 d4 e5                                      ldrb ip, [r4, #0x338]
0054c6e8  01 00 80 e2                                      add r0, r0, #1
0054c6ec  01 10 81 e2                                      add r1, r1, #1
0054c6f0  02 20 42 e2                                      sub r2, r2, #2
0054c6f4  02 30 43 e2                                      sub r3, r3, #2
0054c6f8  00 00 5c e3                                      cmp ip, #0
0054c6fc  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c700  20 10 8d e5                                      str r1, [sp, #0x20]
0054c704  24 20 8d e5                                      str r2, [sp, #0x24]
0054c708  28 30 8d e5                                      str r3, [sp, #0x28]
0054c70c  61 00 00 0a                                      beq #0x54c898
0054c710  3c 33 94 e5                                      ldr r3, [r4, #0x33c]
0054c714  02 00 53 e3                                      cmp r3, #2
0054c718  73 00 00 0a                                      beq #0x54c8ec
0054c71c  01 10 a0 e3                                      mov r1, #1
0054c720  00 30 94 e5                                      ldr r3, [r4]
0054c724  04 00 a0 e1                                      mov r0, r4
0054c728  0f e0 a0 e1                                      mov lr, pc
0054c72c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c730  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c734  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c738  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c73c  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c740  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c744  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c748  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c74c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054c750  00 30 94 e5                                      ldr r3, [r4]
0054c754  02 10 a0 e3                                      mov r1, #2
0054c758  38 20 8d e5                                      str r2, [sp, #0x38]
0054c75c  04 00 a0 e1                                      mov r0, r4
0054c760  0f e0 a0 e1                                      mov lr, pc
0054c764  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c768  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c76c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c770  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c774  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c778  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c77c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c780  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c784  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c788  38 e0 9d e5                                      ldr lr, [sp, #0x38]
0054c78c  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054c790  0c 20 a0 e1                                      mov r2, ip
0054c794  07 10 a0 e1                                      mov r1, r7
0054c798  0c 30 a0 e1                                      mov r3, ip
0054c79c  04 e0 8d e5                                      str lr, [sp, #4]
0054c7a0  30 c0 8d e5                                      str ip, [sp, #0x30]
0054c7a4  00 c0 8d e5                                      str ip, [sp]
0054c7a8  08 60 8d e5                                      str r6, [sp, #8]
0054c7ac  f3 4b 01 eb                                      bl #0x59f780
0054c7b0  00 20 95 e5                                      ldr r2, [r5]
0054c7b4  09 00 95 e9                                      ldmib r5, {r0, r3}
0054c7b8  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0054c7bc  02 20 82 e2                                      add r2, r2, #2
0054c7c0  02 50 80 e2                                      add r5, r0, #2
0054c7c4  02 30 43 e2                                      sub r3, r3, #2
0054c7c8  28 10 8d e5                                      str r1, [sp, #0x28]
0054c7cc  20 50 8d e5                                      str r5, [sp, #0x20]
0054c7d0  1c 20 8d e5                                      str r2, [sp, #0x1c]
0054c7d4  24 30 8d e5                                      str r3, [sp, #0x24]
0054c7d8  00 30 94 e5                                      ldr r3, [r4]
0054c7dc  04 00 a0 e1                                      mov r0, r4
0054c7e0  02 10 a0 e3                                      mov r1, #2
0054c7e4  0f e0 a0 e1                                      mov lr, pc
0054c7e8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0054c7ec  02 50 85 e2                                      add r5, r5, #2
0054c7f0  00 50 85 e0                                      add r5, r5, r0
0054c7f4  00 00 59 e3                                      cmp sb, #0
0054c7f8  28 50 8d e5                                      str r5, [sp, #0x28]
0054c7fc  1f 00 00 0a                                      beq #0x54c880
0054c800  3c 33 94 e5                                      ldr r3, [r4, #0x33c]
0054c804  02 00 53 e3                                      cmp r3, #2
0054c808  8a 00 00 0a                                      beq #0x54ca38
0054c80c  cd 2c 0c e3                                      movw r2, #0xcccd
0054c810  00 30 a0 e3                                      mov r3, #0
0054c814  00 c0 e0 e3                                      mvn ip, #0
0054c818  2c 10 8d e2                                      add r1, sp, #0x2c
0054c81c  4c 2e 43 e3                                      movt r2, #0x3e4c
0054c820  88 00 8d e2                                      add r0, sp, #0x88
0054c824  2e 30 cd e5                                      strb r3, [sp, #0x2e]
0054c828  2f c0 cd e5                                      strb ip, [sp, #0x2f]
0054c82c  2c 30 cd e5                                      strb r3, [sp, #0x2c]
0054c830  2d 30 cd e5                                      strb r3, [sp, #0x2d]
0054c834  d4 d1 ff eb                                      bl #0x540f8c
0054c838  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c83c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c840  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c844  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c848  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c84c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c850  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c854  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c858  88 e0 9d e5                                      ldr lr, [sp, #0x88]
0054c85c  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054c860  07 10 a0 e1                                      mov r1, r7
0054c864  0e 20 a0 e1                                      mov r2, lr
0054c868  0c 30 a0 e1                                      mov r3, ip
0054c86c  08 60 8d e5                                      str r6, [sp, #8]
0054c870  30 c0 8d e5                                      str ip, [sp, #0x30]
0054c874  00 e0 8d e5                                      str lr, [sp]
0054c878  04 c0 8d e5                                      str ip, [sp, #4]
0054c87c  bf 4b 01 eb                                      bl #0x59f780
0054c880  1c 00 8d e2                                      add r0, sp, #0x1c
0054c884  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
0054c888  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
0054c88c  08 00 a0 e1                                      mov r0, r8
0054c890  68 d0 8d e2                                      add sp, sp, #0x68
0054c894  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0054c898  00 30 94 e5                                      ldr r3, [r4]
0054c89c  04 00 a0 e1                                      mov r0, r4
0054c8a0  02 10 a0 e3                                      mov r1, #2
0054c8a4  34 a3 94 e5                                      ldr sl, [r4, #0x334]
0054c8a8  0f e0 a0 e1                                      mov lr, pc
0054c8ac  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c8b0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c8b4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c8b8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c8bc  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c8c0  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c8c4  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c8c8  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c8cc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c8d0  0a 00 a0 e1                                      mov r0, sl
0054c8d4  07 20 a0 e1                                      mov r2, r7
0054c8d8  0c 10 a0 e1                                      mov r1, ip
0054c8dc  06 30 a0 e1                                      mov r3, r6
0054c8e0  4c c0 8d e5                                      str ip, [sp, #0x4c]
0054c8e4  e4 4b 01 eb                                      bl #0x59f87c
0054c8e8  b0 ff ff ea                                      b #0x54c7b0
0054c8ec  00 30 94 e5                                      ldr r3, [r4]
0054c8f0  04 00 a0 e1                                      mov r0, r4
0054c8f4  11 10 a0 e3                                      mov r1, #0x11
0054c8f8  0f e0 a0 e1                                      mov lr, pc
0054c8fc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c900  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c904  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c908  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c90c  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c910  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c914  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c918  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c91c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0054c920  66 26 06 e3                                      movw r2, #0x6666
0054c924  00 a0 e0 e3                                      mvn sl, #0
0054c928  44 10 8d e2                                      add r1, sp, #0x44
0054c92c  66 2f 43 e3                                      movt r2, #0x3f66
0054c930  48 00 8d e2                                      add r0, sp, #0x48
0054c934  48 30 8d e5                                      str r3, [sp, #0x48]
0054c938  44 a0 cd e5                                      strb sl, [sp, #0x44]
0054c93c  45 a0 cd e5                                      strb sl, [sp, #0x45]
0054c940  46 a0 cd e5                                      strb sl, [sp, #0x46]
0054c944  47 a0 cd e5                                      strb sl, [sp, #0x47]
0054c948  8f d1 ff eb                                      bl #0x540f8c
0054c94c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c950  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c954  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c958  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c95c  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c960  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c964  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c968  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054c96c  00 30 94 e5                                      ldr r3, [r4]
0054c970  04 00 a0 e1                                      mov r0, r4
0054c974  30 20 8d e5                                      str r2, [sp, #0x30]
0054c978  11 10 a0 e3                                      mov r1, #0x11
0054c97c  0f e0 a0 e1                                      mov lr, pc
0054c980  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c984  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c988  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c98c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c990  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c994  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c998  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c99c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c9a0  10 30 9d e5                                      ldr r3, [sp, #0x10]
0054c9a4  cd 2c 0c e3                                      movw r2, #0xcccd
0054c9a8  3c 10 8d e2                                      add r1, sp, #0x3c
0054c9ac  40 00 8d e2                                      add r0, sp, #0x40
0054c9b0  4c 2f 43 e3                                      movt r2, #0x3f4c
0054c9b4  40 30 8d e5                                      str r3, [sp, #0x40]
0054c9b8  3f a0 cd e5                                      strb sl, [sp, #0x3f]
0054c9bc  3c a0 cd e5                                      strb sl, [sp, #0x3c]
0054c9c0  3d a0 cd e5                                      strb sl, [sp, #0x3d]
0054c9c4  3e a0 cd e5                                      strb sl, [sp, #0x3e]
0054c9c8  6f d1 ff eb                                      bl #0x540f8c
0054c9cc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c9d0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c9d4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c9d8  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c9dc  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c9e0  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c9e4  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c9e8  30 20 9d e5                                      ldr r2, [sp, #0x30]
0054c9ec  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c9f0  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054c9f4  07 10 a0 e1                                      mov r1, r7
0054c9f8  02 30 a0 e1                                      mov r3, r2
0054c9fc  04 c0 8d e5                                      str ip, [sp, #4]
0054ca00  38 c0 8d e5                                      str ip, [sp, #0x38]
0054ca04  00 c0 8d e5                                      str ip, [sp]
0054ca08  08 60 8d e5                                      str r6, [sp, #8]
0054ca0c  5b 4b 01 eb                                      bl #0x59f780
0054ca10  66 ff ff ea                                      b #0x54c7b0
0054ca14  00 30 95 e5                                      ldr r3, [r5]
0054ca18  00 30 80 e5                                      str r3, [r0]
0054ca1c  04 30 95 e5                                      ldr r3, [r5, #4]
0054ca20  04 30 80 e5                                      str r3, [r0, #4]
0054ca24  08 30 95 e5                                      ldr r3, [r5, #8]
0054ca28  08 30 80 e5                                      str r3, [r0, #8]
0054ca2c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054ca30  0c 30 80 e5                                      str r3, [r0, #0xc]
0054ca34  94 ff ff ea                                      b #0x54c88c
0054ca38  cd 2c 0c e3                                      movw r2, #0xcccd
0054ca3c  00 30 e0 e3                                      mvn r3, #0
0054ca40  34 10 8d e2                                      add r1, sp, #0x34
0054ca44  88 00 8d e2                                      add r0, sp, #0x88
0054ca48  4c 2f 43 e3                                      movt r2, #0x3f4c
0054ca4c  37 30 cd e5                                      strb r3, [sp, #0x37]
0054ca50  34 30 cd e5                                      strb r3, [sp, #0x34]
0054ca54  35 30 cd e5                                      strb r3, [sp, #0x35]
0054ca58  36 30 cd e5                                      strb r3, [sp, #0x36]
0054ca5c  4a d1 ff eb                                      bl #0x540f8c
0054ca60  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054ca64  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ca68  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054ca6c  11 10 cd e5                                      strb r1, [sp, #0x11]
0054ca70  12 20 cd e5                                      strb r2, [sp, #0x12]
0054ca74  13 30 cd e5                                      strb r3, [sp, #0x13]
0054ca78  10 00 cd e5                                      strb r0, [sp, #0x10]
0054ca7c  88 20 9d e5                                      ldr r2, [sp, #0x88]
0054ca80  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054ca84  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054ca88  07 10 a0 e1                                      mov r1, r7
0054ca8c  02 30 a0 e1                                      mov r3, r2
0054ca90  04 c0 8d e5                                      str ip, [sp, #4]
0054ca94  08 60 8d e5                                      str r6, [sp, #8]
0054ca98  30 c0 8d e5                                      str ip, [sp, #0x30]
0054ca9c  00 c0 8d e5                                      str ip, [sp]
0054caa0  36 4b 01 eb                                      bl #0x59f780
0054caa4  75 ff ff ea                                      b #0x54c880

; FUNCTION 0x0054caa8, declared_size=668, range_size=668, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin23draw3DButtonPanePressedEPNS0_11IGUIElementERKNS_4core4rectIiEEPS7_
; demangled: glitch::gui::CGUISkin::draw3DButtonPanePressed(glitch::gui::IGUIElement*, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0054caa8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0054caac  34 73 90 e5                                      ldr r7, [r0, #0x334]
0054cab0  4c d0 4d e2                                      sub sp, sp, #0x4c
0054cab4  00 40 a0 e1                                      mov r4, r0
0054cab8  00 00 57 e3                                      cmp r7, #0
0054cabc  03 50 a0 e1                                      mov r5, r3
0054cac0  88 00 00 0a                                      beq #0x54cce8
0054cac4  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0054cac8  00 c0 92 e5                                      ldr ip, [r2]
0054cacc  06 00 92 e9                                      ldmib r2, {r1, r2}
0054cad0  1c c0 8d e5                                      str ip, [sp, #0x1c]
0054cad4  20 10 8d e5                                      str r1, [sp, #0x20]
0054cad8  24 20 8d e5                                      str r2, [sp, #0x24]
0054cadc  28 30 8d e5                                      str r3, [sp, #0x28]
0054cae0  03 10 a0 e3                                      mov r1, #3
0054cae4  00 30 90 e5                                      ldr r3, [r0]
0054cae8  0f e0 a0 e1                                      mov lr, pc
0054caec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054caf0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054caf4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054caf8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cafc  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cb00  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cb04  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cb08  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cb0c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cb10  1c 60 8d e2                                      add r6, sp, #0x1c
0054cb14  07 00 a0 e1                                      mov r0, r7
0054cb18  0c 10 a0 e1                                      mov r1, ip
0054cb1c  06 20 a0 e1                                      mov r2, r6
0054cb20  05 30 a0 e1                                      mov r3, r5
0054cb24  44 c0 8d e5                                      str ip, [sp, #0x44]
0054cb28  53 4b 01 eb                                      bl #0x59f87c
0054cb2c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0054cb30  28 30 9d e5                                      ldr r3, [sp, #0x28]
0054cb34  00 10 a0 e3                                      mov r1, #0
0054cb38  01 20 42 e2                                      sub r2, r2, #1
0054cb3c  01 30 43 e2                                      sub r3, r3, #1
0054cb40  24 20 8d e5                                      str r2, [sp, #0x24]
0054cb44  28 30 8d e5                                      str r3, [sp, #0x28]
0054cb48  00 30 94 e5                                      ldr r3, [r4]
0054cb4c  04 00 a0 e1                                      mov r0, r4
0054cb50  34 73 94 e5                                      ldr r7, [r4, #0x334]
0054cb54  0f e0 a0 e1                                      mov lr, pc
0054cb58  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cb5c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cb60  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cb64  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cb68  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cb6c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cb70  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cb74  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cb78  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cb7c  07 00 a0 e1                                      mov r0, r7
0054cb80  06 20 a0 e1                                      mov r2, r6
0054cb84  0c 10 a0 e1                                      mov r1, ip
0054cb88  05 30 a0 e1                                      mov r3, r5
0054cb8c  40 c0 8d e5                                      str ip, [sp, #0x40]
0054cb90  39 4b 01 eb                                      bl #0x59f87c
0054cb94  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0054cb98  20 30 9d e5                                      ldr r3, [sp, #0x20]
0054cb9c  01 10 a0 e3                                      mov r1, #1
0054cba0  01 20 82 e0                                      add r2, r2, r1
0054cba4  01 30 83 e0                                      add r3, r3, r1
0054cba8  1c 20 8d e5                                      str r2, [sp, #0x1c]
0054cbac  20 30 8d e5                                      str r3, [sp, #0x20]
0054cbb0  00 30 94 e5                                      ldr r3, [r4]
0054cbb4  04 00 a0 e1                                      mov r0, r4
0054cbb8  34 73 94 e5                                      ldr r7, [r4, #0x334]
0054cbbc  0f e0 a0 e1                                      mov lr, pc
0054cbc0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cbc4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cbc8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cbcc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cbd0  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cbd4  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cbd8  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cbdc  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cbe0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cbe4  06 20 a0 e1                                      mov r2, r6
0054cbe8  05 30 a0 e1                                      mov r3, r5
0054cbec  0c 10 a0 e1                                      mov r1, ip
0054cbf0  07 00 a0 e1                                      mov r0, r7
0054cbf4  3c c0 8d e5                                      str ip, [sp, #0x3c]
0054cbf8  1f 4b 01 eb                                      bl #0x59f87c
0054cbfc  38 13 d4 e5                                      ldrb r1, [r4, #0x338]
0054cc00  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0054cc04  20 30 9d e5                                      ldr r3, [sp, #0x20]
0054cc08  00 00 51 e3                                      cmp r1, #0
0054cc0c  01 20 82 e2                                      add r2, r2, #1
0054cc10  01 30 83 e2                                      add r3, r3, #1
0054cc14  1c 20 8d e5                                      str r2, [sp, #0x1c]
0054cc18  20 30 8d e5                                      str r3, [sp, #0x20]
0054cc1c  33 00 00 0a                                      beq #0x54ccf0
0054cc20  02 10 a0 e3                                      mov r1, #2
0054cc24  00 30 94 e5                                      ldr r3, [r4]
0054cc28  04 00 a0 e1                                      mov r0, r4
0054cc2c  0f e0 a0 e1                                      mov lr, pc
0054cc30  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cc34  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cc38  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cc3c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cc40  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cc44  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cc48  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cc4c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cc50  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054cc54  00 30 94 e5                                      ldr r3, [r4]
0054cc58  00 10 a0 e3                                      mov r1, #0
0054cc5c  34 20 8d e5                                      str r2, [sp, #0x34]
0054cc60  04 00 a0 e1                                      mov r0, r4
0054cc64  0f e0 a0 e1                                      mov lr, pc
0054cc68  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cc6c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cc70  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cc74  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cc78  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cc7c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cc80  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cc84  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cc88  10 30 9d e5                                      ldr r3, [sp, #0x10]
0054cc8c  cd 2c 0c e3                                      movw r2, #0xcccd
0054cc90  2c 10 8d e2                                      add r1, sp, #0x2c
0054cc94  cc 2e 43 e3                                      movt r2, #0x3ecc
0054cc98  34 00 8d e2                                      add r0, sp, #0x34
0054cc9c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0054cca0  b9 d0 ff eb                                      bl #0x540f8c
0054cca4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cca8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ccac  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054ccb0  11 10 cd e5                                      strb r1, [sp, #0x11]
0054ccb4  12 20 cd e5                                      strb r2, [sp, #0x12]
0054ccb8  13 30 cd e5                                      strb r3, [sp, #0x13]
0054ccbc  10 00 cd e5                                      strb r0, [sp, #0x10]
0054ccc0  34 20 9d e5                                      ldr r2, [sp, #0x34]
0054ccc4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054ccc8  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054cccc  06 10 a0 e1                                      mov r1, r6
0054ccd0  02 30 a0 e1                                      mov r3, r2
0054ccd4  04 c0 8d e5                                      str ip, [sp, #4]
0054ccd8  08 50 8d e5                                      str r5, [sp, #8]
0054ccdc  30 c0 8d e5                                      str ip, [sp, #0x30]
0054cce0  00 c0 8d e5                                      str ip, [sp]
0054cce4  a5 4a 01 eb                                      bl #0x59f780
0054cce8  4c d0 8d e2                                      add sp, sp, #0x4c
0054ccec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0054ccf0  00 30 94 e5                                      ldr r3, [r4]
0054ccf4  04 00 a0 e1                                      mov r0, r4
0054ccf8  02 10 a0 e3                                      mov r1, #2
0054ccfc  34 43 94 e5                                      ldr r4, [r4, #0x334]
0054cd00  0f e0 a0 e1                                      mov lr, pc
0054cd04  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cd08  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cd0c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cd10  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cd14  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cd18  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cd1c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cd20  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cd24  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cd28  04 00 a0 e1                                      mov r0, r4
0054cd2c  06 20 a0 e1                                      mov r2, r6
0054cd30  0c 10 a0 e1                                      mov r1, ip
0054cd34  05 30 a0 e1                                      mov r3, r5
0054cd38  38 c0 8d e5                                      str ip, [sp, #0x38]
0054cd3c  ce 4a 01 eb                                      bl #0x59f87c
0054cd40  e8 ff ff ea                                      b #0x54cce8

; FUNCTION 0x0054cd44, declared_size=888, range_size=888, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin24draw3DButtonPaneStandardEPNS0_11IGUIElementERKNS_4core4rectIiEEPS7_
; demangled: glitch::gui::CGUISkin::draw3DButtonPaneStandard(glitch::gui::IGUIElement*, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0054cd44  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0054cd48  34 73 90 e5                                      ldr r7, [r0, #0x334]
0054cd4c  54 d0 4d e2                                      sub sp, sp, #0x54
0054cd50  00 40 a0 e1                                      mov r4, r0
0054cd54  00 00 57 e3                                      cmp r7, #0
0054cd58  01 60 a0 e1                                      mov r6, r1
0054cd5c  03 50 a0 e1                                      mov r5, r3
0054cd60  8c 00 00 0a                                      beq #0x54cf98
0054cd64  3c 33 90 e5                                      ldr r3, [r0, #0x33c]
0054cd68  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0054cd6c  00 e0 92 e5                                      ldr lr, [r2]
0054cd70  04 c0 92 e5                                      ldr ip, [r2, #4]
0054cd74  08 20 92 e5                                      ldr r2, [r2, #8]
0054cd78  02 00 53 e3                                      cmp r3, #2
0054cd7c  18 e0 8d e5                                      str lr, [sp, #0x18]
0054cd80  1c c0 8d e5                                      str ip, [sp, #0x1c]
0054cd84  20 20 8d e5                                      str r2, [sp, #0x20]
0054cd88  24 10 8d e5                                      str r1, [sp, #0x24]
0054cd8c  98 00 00 0a                                      beq #0x54cff4
0054cd90  00 10 a0 e3                                      mov r1, #0
0054cd94  00 30 90 e5                                      ldr r3, [r0]
0054cd98  0f e0 a0 e1                                      mov lr, pc
0054cd9c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cda0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cda4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cda8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cdac  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cdb0  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cdb4  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cdb8  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cdbc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cdc0  18 60 8d e2                                      add r6, sp, #0x18
0054cdc4  07 00 a0 e1                                      mov r0, r7
0054cdc8  0c 10 a0 e1                                      mov r1, ip
0054cdcc  06 20 a0 e1                                      mov r2, r6
0054cdd0  05 30 a0 e1                                      mov r3, r5
0054cdd4  40 c0 8d e5                                      str ip, [sp, #0x40]
0054cdd8  a7 4a 01 eb                                      bl #0x59f87c
0054cddc  20 20 9d e5                                      ldr r2, [sp, #0x20]
0054cde0  24 30 9d e5                                      ldr r3, [sp, #0x24]
0054cde4  03 10 a0 e3                                      mov r1, #3
0054cde8  01 20 42 e2                                      sub r2, r2, #1
0054cdec  01 30 43 e2                                      sub r3, r3, #1
0054cdf0  20 20 8d e5                                      str r2, [sp, #0x20]
0054cdf4  24 30 8d e5                                      str r3, [sp, #0x24]
0054cdf8  00 30 94 e5                                      ldr r3, [r4]
0054cdfc  04 00 a0 e1                                      mov r0, r4
0054ce00  34 73 94 e5                                      ldr r7, [r4, #0x334]
0054ce04  0f e0 a0 e1                                      mov lr, pc
0054ce08  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054ce0c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054ce10  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ce14  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054ce18  11 10 cd e5                                      strb r1, [sp, #0x11]
0054ce1c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054ce20  13 30 cd e5                                      strb r3, [sp, #0x13]
0054ce24  10 00 cd e5                                      strb r0, [sp, #0x10]
0054ce28  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054ce2c  07 00 a0 e1                                      mov r0, r7
0054ce30  06 20 a0 e1                                      mov r2, r6
0054ce34  0c 10 a0 e1                                      mov r1, ip
0054ce38  05 30 a0 e1                                      mov r3, r5
0054ce3c  3c c0 8d e5                                      str ip, [sp, #0x3c]
0054ce40  8d 4a 01 eb                                      bl #0x59f87c
0054ce44  18 20 9d e5                                      ldr r2, [sp, #0x18]
0054ce48  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0054ce4c  01 10 a0 e3                                      mov r1, #1
0054ce50  01 20 82 e0                                      add r2, r2, r1
0054ce54  01 30 83 e0                                      add r3, r3, r1
0054ce58  18 20 8d e5                                      str r2, [sp, #0x18]
0054ce5c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0054ce60  00 30 94 e5                                      ldr r3, [r4]
0054ce64  04 00 a0 e1                                      mov r0, r4
0054ce68  34 73 94 e5                                      ldr r7, [r4, #0x334]
0054ce6c  0f e0 a0 e1                                      mov lr, pc
0054ce70  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054ce74  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054ce78  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ce7c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054ce80  11 10 cd e5                                      strb r1, [sp, #0x11]
0054ce84  12 20 cd e5                                      strb r2, [sp, #0x12]
0054ce88  13 30 cd e5                                      strb r3, [sp, #0x13]
0054ce8c  10 00 cd e5                                      strb r0, [sp, #0x10]
0054ce90  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054ce94  06 20 a0 e1                                      mov r2, r6
0054ce98  05 30 a0 e1                                      mov r3, r5
0054ce9c  0c 10 a0 e1                                      mov r1, ip
0054cea0  07 00 a0 e1                                      mov r0, r7
0054cea4  38 c0 8d e5                                      str ip, [sp, #0x38]
0054cea8  73 4a 01 eb                                      bl #0x59f87c
0054ceac  38 13 d4 e5                                      ldrb r1, [r4, #0x338]
0054ceb0  20 20 9d e5                                      ldr r2, [sp, #0x20]
0054ceb4  24 30 9d e5                                      ldr r3, [sp, #0x24]
0054ceb8  00 00 51 e3                                      cmp r1, #0
0054cebc  01 20 42 e2                                      sub r2, r2, #1
0054cec0  01 30 43 e2                                      sub r3, r3, #1
0054cec4  20 20 8d e5                                      str r2, [sp, #0x20]
0054cec8  24 30 8d e5                                      str r3, [sp, #0x24]
0054cecc  33 00 00 0a                                      beq #0x54cfa0
0054ced0  02 10 a0 e3                                      mov r1, #2
0054ced4  00 30 94 e5                                      ldr r3, [r4]
0054ced8  04 00 a0 e1                                      mov r0, r4
0054cedc  0f e0 a0 e1                                      mov lr, pc
0054cee0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cee4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cee8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ceec  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cef0  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cef4  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cef8  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cefc  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cf00  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054cf04  00 30 94 e5                                      ldr r3, [r4]
0054cf08  00 10 a0 e3                                      mov r1, #0
0054cf0c  30 20 8d e5                                      str r2, [sp, #0x30]
0054cf10  04 00 a0 e1                                      mov r0, r4
0054cf14  0f e0 a0 e1                                      mov lr, pc
0054cf18  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cf1c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cf20  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cf24  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cf28  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cf2c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cf30  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cf34  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cf38  10 30 9d e5                                      ldr r3, [sp, #0x10]
0054cf3c  cd 2c 0c e3                                      movw r2, #0xcccd
0054cf40  28 10 8d e2                                      add r1, sp, #0x28
0054cf44  cc 2e 43 e3                                      movt r2, #0x3ecc
0054cf48  30 00 8d e2                                      add r0, sp, #0x30
0054cf4c  28 30 8d e5                                      str r3, [sp, #0x28]
0054cf50  0d d0 ff eb                                      bl #0x540f8c
0054cf54  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cf58  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cf5c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cf60  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cf64  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cf68  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cf6c  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cf70  30 20 9d e5                                      ldr r2, [sp, #0x30]
0054cf74  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cf78  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054cf7c  06 10 a0 e1                                      mov r1, r6
0054cf80  02 30 a0 e1                                      mov r3, r2
0054cf84  04 c0 8d e5                                      str ip, [sp, #4]
0054cf88  08 50 8d e5                                      str r5, [sp, #8]
0054cf8c  2c c0 8d e5                                      str ip, [sp, #0x2c]
0054cf90  00 c0 8d e5                                      str ip, [sp]
0054cf94  f9 49 01 eb                                      bl #0x59f780
0054cf98  54 d0 8d e2                                      add sp, sp, #0x54
0054cf9c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0054cfa0  00 30 94 e5                                      ldr r3, [r4]
0054cfa4  04 00 a0 e1                                      mov r0, r4
0054cfa8  02 10 a0 e3                                      mov r1, #2
0054cfac  34 43 94 e5                                      ldr r4, [r4, #0x334]
0054cfb0  0f e0 a0 e1                                      mov lr, pc
0054cfb4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cfb8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cfbc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cfc0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cfc4  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cfc8  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cfcc  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cfd0  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cfd4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cfd8  04 00 a0 e1                                      mov r0, r4
0054cfdc  06 20 a0 e1                                      mov r2, r6
0054cfe0  0c 10 a0 e1                                      mov r1, ip
0054cfe4  05 30 a0 e1                                      mov r3, r5
0054cfe8  34 c0 8d e5                                      str ip, [sp, #0x34]
0054cfec  22 4a 01 eb                                      bl #0x59f87c
0054cff0  e8 ff ff ea                                      b #0x54cf98
0054cff4  00 30 90 e5                                      ldr r3, [r0]
0054cff8  01 e0 4e e2                                      sub lr, lr, #1
0054cffc  01 c0 4c e2                                      sub ip, ip, #1
0054d000  01 20 82 e2                                      add r2, r2, #1
0054d004  01 10 81 e2                                      add r1, r1, #1
0054d008  18 e0 8d e5                                      str lr, [sp, #0x18]
0054d00c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0054d010  20 20 8d e5                                      str r2, [sp, #0x20]
0054d014  24 10 8d e5                                      str r1, [sp, #0x24]
0054d018  11 10 a0 e3                                      mov r1, #0x11
0054d01c  48 70 93 e5                                      ldr r7, [r3, #0x48]
0054d020  0f e0 a0 e1                                      mov lr, pc
0054d024  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054d028  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054d02c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054d030  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054d034  11 10 cd e5                                      strb r1, [sp, #0x11]
0054d038  12 20 cd e5                                      strb r2, [sp, #0x12]
0054d03c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054d040  10 00 cd e5                                      strb r0, [sp, #0x10]
0054d044  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054d048  66 26 06 e3                                      movw r2, #0x6666
0054d04c  00 30 e0 e3                                      mvn r3, #0
0054d050  48 10 8d e2                                      add r1, sp, #0x48
0054d054  4c 00 8d e2                                      add r0, sp, #0x4c
0054d058  66 2f 43 e3                                      movt r2, #0x3f66
0054d05c  4b 30 cd e5                                      strb r3, [sp, #0x4b]
0054d060  48 30 cd e5                                      strb r3, [sp, #0x48]
0054d064  49 30 cd e5                                      strb r3, [sp, #0x49]
0054d068  4a 30 cd e5                                      strb r3, [sp, #0x4a]
0054d06c  4c c0 8d e5                                      str ip, [sp, #0x4c]
0054d070  c5 cf ff eb                                      bl #0x540f8c
0054d074  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054d078  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054d07c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054d080  11 10 cd e5                                      strb r1, [sp, #0x11]
0054d084  13 30 cd e5                                      strb r3, [sp, #0x13]
0054d088  10 00 cd e5                                      strb r0, [sp, #0x10]
0054d08c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054d090  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054d094  01 30 a0 e3                                      mov r3, #1
0054d098  00 30 8d e5                                      str r3, [sp]
0054d09c  18 30 8d e2                                      add r3, sp, #0x18
0054d0a0  28 00 8d e9                                      stmib sp, {r3, r5}
0054d0a4  44 20 8d e5                                      str r2, [sp, #0x44]
0054d0a8  04 00 a0 e1                                      mov r0, r4
0054d0ac  06 10 a0 e1                                      mov r1, r6
0054d0b0  00 30 a0 e3                                      mov r3, #0
0054d0b4  37 ff 2f e1                                      blx r7
0054d0b8  b6 ff ff ea                                      b #0x54cf98

; FUNCTION 0x0054d0bc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin14setDefaultTextENS0_17EGUI_DEFAULT_TEXTEPKw
; demangled: glitch::gui::CGUISkin::setDefaultText(glitch::gui::EGUI_DEFAULT_TEXT, wchar_t const*)
; decoder-mode: arm
0054d0bc  07 00 51 e3                                      cmp r1, #7
0054d0c0  70 40 2d e9                                      push {r4, r5, r6, lr}
0054d0c4  01 40 a0 e1                                      mov r4, r1
0054d0c8  00 50 a0 e1                                      mov r5, r0
0054d0cc  02 60 a0 e1                                      mov r6, r2
0054d0d0  00 00 00 9a                                      bls #0x54d0d8
0054d0d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0054d0d8  02 00 a0 e1                                      mov r0, r2
0054d0dc  e9 06 f7 eb                                      bl #0x30ec88
0054d0e0  48 30 a0 e3                                      mov r3, #0x48
0054d0e4  93 54 24 e0                                      mla r4, r3, r4, r5
0054d0e8  00 31 86 e0                                      add r3, r6, r0, lsl #2
0054d0ec  06 10 a0 e1                                      mov r1, r6
0054d0f0  f4 00 84 e2                                      add r0, r4, #0xf4
0054d0f4  03 20 a0 e1                                      mov r2, r3
0054d0f8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0054d0fc  27 58 f7 ea                                      b #0x3231a0

; FUNCTION 0x0054d104, declared_size=1800, range_size=1800, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkinC1ENS0_14EGUI_SKIN_TYPEEPNS_5video12IVideoDriverE
; demangled: glitch::gui::CGUISkin::CGUISkin(glitch::gui::EGUI_SKIN_TYPE, glitch::video::IVideoDriver*)
; decoder-mode: arm
0054d104  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0054d108  cc 36 9f e5                                      ldr r3, [pc, #0x6cc]
0054d10c  cc c6 9f e5                                      ldr ip, [pc, #0x6cc]
0054d110  cc e6 9f e5                                      ldr lr, [pc, #0x6cc]
0054d114  03 30 8f e0                                      add r3, pc, r3
0054d118  0c c0 93 e7                                      ldr ip, [r3, ip]
0054d11c  0e e0 93 e7                                      ldr lr, [r3, lr]
0054d120  00 40 a0 e1                                      mov r4, r0
0054d124  18 00 9c e5                                      ldr r0, [ip, #0x18]
0054d128  08 e0 8e e2                                      add lr, lr, #8
0054d12c  40 e3 84 e5                                      str lr, [r4, #0x340]
0054d130  01 e0 a0 e3                                      mov lr, #1
0054d134  00 00 84 e5                                      str r0, [r4]
0054d138  44 e3 84 e5                                      str lr, [r4, #0x344]
0054d13c  0c 60 10 e5                                      ldr r6, [r0, #-0xc]
0054d140  04 e0 9c e5                                      ldr lr, [ip, #4]
0054d144  1c 70 9c e5                                      ldr r7, [ip, #0x1c]
0054d148  08 50 9c e5                                      ldr r5, [ip, #8]
0054d14c  94 06 9f e5                                      ldr r0, [pc, #0x694]
0054d150  06 70 84 e7                                      str r7, [r4, r6]
0054d154  00 e0 84 e5                                      str lr, [r4]
0054d158  1c e0 1e e5                                      ldr lr, [lr, #-0x1c]
0054d15c  00 00 93 e7                                      ldr r0, [r3, r0]
0054d160  0c 80 9c e5                                      ldr r8, [ip, #0xc]
0054d164  0e 50 84 e7                                      str r5, [r4, lr]
0054d168  00 50 94 e5                                      ldr r5, [r4]
0054d16c  00 c0 a0 e3                                      mov ip, #0
0054d170  98 e0 80 e2                                      add lr, r0, #0x98
0054d174  0c 60 15 e5                                      ldr r6, [r5, #-0xc]
0054d178  1c 00 80 e2                                      add r0, r0, #0x1c
0054d17c  f4 50 84 e2                                      add r5, r4, #0xf4
0054d180  06 80 84 e7                                      str r8, [r4, r6]
0054d184  0c 70 a0 e1                                      mov r7, ip
0054d188  00 00 84 e5                                      str r0, [r4]
0054d18c  40 e3 84 e5                                      str lr, [r4, #0x340]
0054d190  01 80 a0 e1                                      mov r8, r1
0054d194  02 90 a0 e1                                      mov sb, r2
0054d198  f0 c0 84 e5                                      str ip, [r4, #0xf0]
0054d19c  05 a0 a0 e1                                      mov sl, r5
0054d1a0  0c 60 a0 e1                                      mov r6, ip
0054d1a4  40 a0 8a e5                                      str sl, [sl, #0x40]
0054d1a8  44 a0 8a e5                                      str sl, [sl, #0x44]
0054d1ac  0a 00 a0 e1                                      mov r0, sl
0054d1b0  d2 ff ff eb                                      bl #0x54d100
0054d1b4  40 30 9a e5                                      ldr r3, [sl, #0x40]
0054d1b8  48 70 87 e2                                      add r7, r7, #0x48
0054d1bc  09 0d 57 e3                                      cmp r7, #0x240
0054d1c0  00 60 83 e5                                      str r6, [r3]
0054d1c4  48 a0 8a e2                                      add sl, sl, #0x48
0054d1c8  f5 ff ff 1a                                      bne #0x54d1a4
0054d1cc  01 00 58 e3                                      cmp r8, #1
0054d1d0  34 93 84 e5                                      str sb, [r4, #0x334]
0054d1d4  3c 83 84 e5                                      str r8, [r4, #0x33c]
0054d1d8  05 01 00 9a                                      bls #0x54d5f4
0054d1dc  7d b0 e0 e3                                      mvn fp, #0x7d
0054d1e0  06 b0 c4 e5                                      strb fp, [r4, #6]
0054d1e4  79 b0 a0 e3                                      mov fp, #0x79
0054d1e8  05 b0 c4 e5                                      strb fp, [r4, #5]
0054d1ec  76 b0 a0 e3                                      mov fp, #0x76
0054d1f0  04 b0 c4 e5                                      strb fp, [r4, #4]
0054d1f4  0e b0 e0 e3                                      mvn fp, #0xe
0054d1f8  0a b0 c4 e5                                      strb fp, [r4, #0xa]
0054d1fc  17 b0 e0 e3                                      mvn fp, #0x17
0054d200  09 b0 c4 e5                                      strb fp, [r4, #9]
0054d204  1b b0 e0 e3                                      mvn fp, #0x1b
0054d208  08 b0 c4 e5                                      strb fp, [r4, #8]
0054d20c  23 b0 e0 e3                                      mvn fp, #0x23
0054d210  12 b0 c4 e5                                      strb fp, [r4, #0x12]
0054d214  33 b0 e0 e3                                      mvn fp, #0x33
0054d218  11 b0 c4 e5                                      strb fp, [r4, #0x11]
0054d21c  38 b0 e0 e3                                      mvn fp, #0x38
0054d220  10 b0 c4 e5                                      strb fp, [r4, #0x10]
0054d224  3a b0 a0 e3                                      mov fp, #0x3a
0054d228  16 b0 c4 e5                                      strb fp, [r4, #0x16]
0054d22c  31 b0 a0 e3                                      mov fp, #0x31
0054d230  15 b0 c4 e5                                      strb fp, [r4, #0x15]
0054d234  2e b0 a0 e3                                      mov fp, #0x2e
0054d238  14 b0 c4 e5                                      strb fp, [r4, #0x14]
0054d23c  7f b0 e0 e3                                      mvn fp, #0x7f
0054d240  1b b0 c4 e5                                      strb fp, [r4, #0x1b]
0054d244  26 b0 e0 e3                                      mvn fp, #0x26
0054d248  0e b0 c4 e5                                      strb fp, [r4, #0xe]
0054d24c  34 b0 e0 e3                                      mvn fp, #0x34
0054d250  40 60 a0 e3                                      mov r6, #0x40
0054d254  0c b0 c4 e5                                      strb fp, [r4, #0xc]
0054d258  50 b0 a0 e3                                      mov fp, #0x50
0054d25c  0f 20 e0 e3                                      mvn r2, #0xf
0054d260  16 30 a0 e3                                      mov r3, #0x16
0054d264  2f 10 e0 e3                                      mvn r1, #0x2f
0054d268  60 00 a0 e3                                      mov r0, #0x60
0054d26c  2d e0 e0 e3                                      mvn lr, #0x2d
0054d270  3f a0 e0 e3                                      mvn sl, #0x3f
0054d274  64 90 a0 e3                                      mov sb, #0x64
0054d278  18 60 c4 e5                                      strb r6, [r4, #0x18]
0054d27c  0b b0 c4 e5                                      strb fp, [r4, #0xb]
0054d280  13 60 c4 e5                                      strb r6, [r4, #0x13]
0054d284  7f b0 e0 e3                                      mvn fp, #0x7f
0054d288  1a 60 c4 e5                                      strb r6, [r4, #0x1a]
0054d28c  19 60 c4 e5                                      strb r6, [r4, #0x19]
0054d290  3c 60 a0 e3                                      mov r6, #0x3c
0054d294  0d e0 c4 e5                                      strb lr, [r4, #0xd]
0054d298  17 b0 c4 e5                                      strb fp, [r4, #0x17]
0054d29c  20 90 c4 e5                                      strb sb, [r4, #0x20]
0054d2a0  07 00 c4 e5                                      strb r0, [r4, #7]
0054d2a4  0f a0 c4 e5                                      strb sl, [r4, #0xf]
0054d2a8  1f 20 c4 e5                                      strb r2, [r4, #0x1f]
0054d2ac  1e 10 c4 e5                                      strb r1, [r4, #0x1e]
0054d2b0  1d 10 c4 e5                                      strb r1, [r4, #0x1d]
0054d2b4  1c 10 c4 e5                                      strb r1, [r4, #0x1c]
0054d2b8  23 a0 c4 e5                                      strb sl, [r4, #0x23]
0054d2bc  22 90 c4 e5                                      strb sb, [r4, #0x22]
0054d2c0  21 90 c4 e5                                      strb sb, [r4, #0x21]
0054d2c4  27 10 c4 e5                                      strb r1, [r4, #0x27]
0054d2c8  26 30 c4 e5                                      strb r3, [r4, #0x26]
0054d2cc  2b 60 c4 e5                                      strb r6, [r4, #0x2b]
0054d2d0  6c 60 a0 e3                                      mov r6, #0x6c
0054d2d4  2f 60 c4 e5                                      strb r6, [r4, #0x2f]
0054d2d8  33 60 a0 e3                                      mov r6, #0x33
0054d2dc  3e 60 c4 e5                                      strb r6, [r4, #0x3e]
0054d2e0  20 60 a0 e3                                      mov r6, #0x20
0054d2e4  1f c0 e0 e3                                      mvn ip, #0x1f
0054d2e8  5a 70 e0 e3                                      mvn r7, #0x5a
0054d2ec  14 80 a0 e3                                      mov r8, #0x14
0054d2f0  3d 60 c4 e5                                      strb r6, [r4, #0x3d]
0054d2f4  41 e0 c4 e5                                      strb lr, [r4, #0x41]
0054d2f8  26 60 e0 e3                                      mvn r6, #0x26
0054d2fc  3a e0 c4 e5                                      strb lr, [r4, #0x3a]
0054d300  39 e0 c4 e5                                      strb lr, [r4, #0x39]
0054d304  38 e0 c4 e5                                      strb lr, [r4, #0x38]
0054d308  34 b0 e0 e3                                      mvn fp, #0x34
0054d30c  0f e0 a0 e3                                      mov lr, #0xf
0054d310  34 70 c4 e5                                      strb r7, [r4, #0x34]
0054d314  42 60 c4 e5                                      strb r6, [r4, #0x42]
0054d318  32 c0 c4 e5                                      strb ip, [r4, #0x32]
0054d31c  31 c0 c4 e5                                      strb ip, [r4, #0x31]
0054d320  30 c0 c4 e5                                      strb ip, [r4, #0x30]
0054d324  36 70 c4 e5                                      strb r7, [r4, #0x36]
0054d328  35 70 c4 e5                                      strb r7, [r4, #0x35]
0054d32c  46 c0 c4 e5                                      strb ip, [r4, #0x46]
0054d330  45 c0 c4 e5                                      strb ip, [r4, #0x45]
0054d334  28 80 c4 e5                                      strb r8, [r4, #0x28]
0054d338  43 a0 c4 e5                                      strb sl, [r4, #0x43]
0054d33c  40 b0 c4 e5                                      strb fp, [r4, #0x40]
0054d340  25 30 c4 e5                                      strb r3, [r4, #0x25]
0054d344  24 30 c4 e5                                      strb r3, [r4, #0x24]
0054d348  2a 80 c4 e5                                      strb r8, [r4, #0x2a]
0054d34c  29 80 c4 e5                                      strb r8, [r4, #0x29]
0054d350  2e 00 c4 e5                                      strb r0, [r4, #0x2e]
0054d354  2d 00 c4 e5                                      strb r0, [r4, #0x2d]
0054d358  2c 00 c4 e5                                      strb r0, [r4, #0x2c]
0054d35c  33 10 c4 e5                                      strb r1, [r4, #0x33]
0054d360  37 20 c4 e5                                      strb r2, [r4, #0x37]
0054d364  3b 20 c4 e5                                      strb r2, [r4, #0x3b]
0054d368  3f 20 c4 e5                                      strb r2, [r4, #0x3f]
0054d36c  3c e0 c4 e5                                      strb lr, [r4, #0x3c]
0054d370  47 20 c4 e5                                      strb r2, [r4, #0x47]
0054d374  44 c0 c4 e5                                      strb ip, [r4, #0x44]
0054d378  0e c0 a0 e3                                      mov ip, #0xe
0054d37c  58 c0 84 e5                                      str ip, [r4, #0x58]
0054d380  30 c0 a0 e3                                      mov ip, #0x30
0054d384  5c c0 84 e5                                      str ip, [r4, #0x5c]
0054d388  12 c0 a0 e3                                      mov ip, #0x12
0054d38c  64 c0 84 e5                                      str ip, [r4, #0x64]
0054d390  7d cf a0 e3                                      mov ip, #0x1f4
0054d394  68 c0 84 e5                                      str ip, [r4, #0x68]
0054d398  c8 c0 a0 e3                                      mov ip, #0xc8
0054d39c  6c c0 84 e5                                      str ip, [r4, #0x6c]
0054d3a0  1e c0 a0 e3                                      mov ip, #0x1e
0054d3a4  74 c0 84 e5                                      str ip, [r4, #0x74]
0054d3a8  03 c0 a0 e3                                      mov ip, #3
0054d3ac  0f 60 a0 e3                                      mov r6, #0xf
0054d3b0  50 70 a0 e3                                      mov r7, #0x50
0054d3b4  78 c0 84 e5                                      str ip, [r4, #0x78]
0054d3b8  02 c0 a0 e3                                      mov ip, #2
0054d3bc  48 20 c4 e5                                      strb r2, [r4, #0x48]
0054d3c0  50 30 c4 e5                                      strb r3, [r4, #0x50]
0054d3c4  57 10 c4 e5                                      strb r1, [r4, #0x57]
0054d3c8  54 00 c4 e5                                      strb r0, [r4, #0x54]
0054d3cc  60 60 84 e5                                      str r6, [r4, #0x60]
0054d3d0  70 70 84 e5                                      str r7, [r4, #0x70]
0054d3d4  7c c0 84 e5                                      str ip, [r4, #0x7c]
0054d3d8  4b 20 c4 e5                                      strb r2, [r4, #0x4b]
0054d3dc  4a 20 c4 e5                                      strb r2, [r4, #0x4a]
0054d3e0  49 20 c4 e5                                      strb r2, [r4, #0x49]
0054d3e4  4f 10 c4 e5                                      strb r1, [r4, #0x4f]
0054d3e8  4e 30 c4 e5                                      strb r3, [r4, #0x4e]
0054d3ec  4d 30 c4 e5                                      strb r3, [r4, #0x4d]
0054d3f0  4c 30 c4 e5                                      strb r3, [r4, #0x4c]
0054d3f4  53 10 c4 e5                                      strb r1, [r4, #0x53]
0054d3f8  52 30 c4 e5                                      strb r3, [r4, #0x52]
0054d3fc  51 30 c4 e5                                      strb r3, [r4, #0x51]
0054d400  56 00 c4 e5                                      strb r0, [r4, #0x56]
0054d404  55 00 c4 e5                                      strb r0, [r4, #0x55]
0054d408  dc 83 9f e5                                      ldr r8, [pc, #0x3dc]
0054d40c  dc 73 9f e5                                      ldr r7, [pc, #0x3dc]
0054d410  dc 63 9f e5                                      ldr r6, [pc, #0x3dc]
0054d414  08 80 8f e0                                      add r8, pc, r8
0054d418  08 00 a0 e1                                      mov r0, r8
0054d41c  19 06 f7 eb                                      bl #0x30ec88
0054d420  07 70 8f e0                                      add r7, pc, r7
0054d424  00 21 88 e0                                      add r2, r8, r0, lsl #2
0054d428  08 10 a0 e1                                      mov r1, r8
0054d42c  05 00 a0 e1                                      mov r0, r5
0054d430  5a 57 f7 eb                                      bl #0x3231a0
0054d434  07 00 a0 e1                                      mov r0, r7
0054d438  12 06 f7 eb                                      bl #0x30ec88
0054d43c  06 60 8f e0                                      add r6, pc, r6
0054d440  00 21 87 e0                                      add r2, r7, r0, lsl #2
0054d444  07 10 a0 e1                                      mov r1, r7
0054d448  4f 0f 84 e2                                      add r0, r4, #0x13c
0054d44c  53 57 f7 eb                                      bl #0x3231a0
0054d450  06 00 a0 e1                                      mov r0, r6
0054d454  0b 06 f7 eb                                      bl #0x30ec88
0054d458  98 53 9f e5                                      ldr r5, [pc, #0x398]
0054d45c  00 21 86 e0                                      add r2, r6, r0, lsl #2
0054d460  06 10 a0 e1                                      mov r1, r6
0054d464  05 50 8f e0                                      add r5, pc, r5
0054d468  61 0f 84 e2                                      add r0, r4, #0x184
0054d46c  4b 57 f7 eb                                      bl #0x3231a0
0054d470  05 00 a0 e1                                      mov r0, r5
0054d474  03 06 f7 eb                                      bl #0x30ec88
0054d478  7c 63 9f e5                                      ldr r6, [pc, #0x37c]
0054d47c  00 21 85 e0                                      add r2, r5, r0, lsl #2
0054d480  05 10 a0 e1                                      mov r1, r5
0054d484  06 60 8f e0                                      add r6, pc, r6
0054d488  73 0f 84 e2                                      add r0, r4, #0x1cc
0054d48c  43 57 f7 eb                                      bl #0x3231a0
0054d490  06 00 a0 e1                                      mov r0, r6
0054d494  fb 05 f7 eb                                      bl #0x30ec88
0054d498  60 53 9f e5                                      ldr r5, [pc, #0x360]
0054d49c  00 21 86 e0                                      add r2, r6, r0, lsl #2
0054d4a0  06 10 a0 e1                                      mov r1, r6
0054d4a4  05 50 8f e0                                      add r5, pc, r5
0054d4a8  85 0f 84 e2                                      add r0, r4, #0x214
0054d4ac  3b 57 f7 eb                                      bl #0x3231a0
0054d4b0  05 00 a0 e1                                      mov r0, r5
0054d4b4  f3 05 f7 eb                                      bl #0x30ec88
0054d4b8  44 63 9f e5                                      ldr r6, [pc, #0x344]
0054d4bc  00 21 85 e0                                      add r2, r5, r0, lsl #2
0054d4c0  05 10 a0 e1                                      mov r1, r5
0054d4c4  06 60 8f e0                                      add r6, pc, r6
0054d4c8  bb 0f 84 e2                                      add r0, r4, #0x2ec
0054d4cc  33 57 f7 eb                                      bl #0x3231a0
0054d4d0  06 00 a0 e1                                      mov r0, r6
0054d4d4  eb 05 f7 eb                                      bl #0x30ec88
0054d4d8  28 53 9f e5                                      ldr r5, [pc, #0x328]
0054d4dc  00 21 86 e0                                      add r2, r6, r0, lsl #2
0054d4e0  06 10 a0 e1                                      mov r1, r6
0054d4e4  05 50 8f e0                                      add r5, pc, r5
0054d4e8  a9 0f 84 e2                                      add r0, r4, #0x2a4
0054d4ec  2b 57 f7 eb                                      bl #0x3231a0
0054d4f0  05 00 a0 e1                                      mov r0, r5
0054d4f4  e3 05 f7 eb                                      bl #0x30ec88
0054d4f8  05 10 a0 e1                                      mov r1, r5
0054d4fc  00 21 85 e0                                      add r2, r5, r0, lsl #2
0054d500  97 0f 84 e2                                      add r0, r4, #0x25c
0054d504  25 57 f7 eb                                      bl #0x3231a0
0054d508  e1 00 a0 e3                                      mov r0, #0xe1
0054d50c  80 00 84 e5                                      str r0, [r4, #0x80]
0054d510  e2 00 a0 e3                                      mov r0, #0xe2
0054d514  84 00 84 e5                                      str r0, [r4, #0x84]
0054d518  e3 00 a0 e3                                      mov r0, #0xe3
0054d51c  88 00 84 e5                                      str r0, [r4, #0x88]
0054d520  e4 00 a0 e3                                      mov r0, #0xe4
0054d524  8c 00 84 e5                                      str r0, [r4, #0x8c]
0054d528  e5 00 a0 e3                                      mov r0, #0xe5
0054d52c  94 00 84 e5                                      str r0, [r4, #0x94]
0054d530  e6 00 a0 e3                                      mov r0, #0xe6
0054d534  98 00 84 e5                                      str r0, [r4, #0x98]
0054d538  e7 00 a0 e3                                      mov r0, #0xe7
0054d53c  9c 00 84 e5                                      str r0, [r4, #0x9c]
0054d540  e9 00 a0 e3                                      mov r0, #0xe9
0054d544  a8 00 84 e5                                      str r0, [r4, #0xa8]
0054d548  ea 00 a0 e3                                      mov r0, #0xea
0054d54c  ac 00 84 e5                                      str r0, [r4, #0xac]
0054d550  eb 00 a0 e3                                      mov r0, #0xeb
0054d554  b0 00 84 e5                                      str r0, [r4, #0xb0]
0054d558  ec 00 a0 e3                                      mov r0, #0xec
0054d55c  b4 00 84 e5                                      str r0, [r4, #0xb4]
0054d560  ed 00 a0 e3                                      mov r0, #0xed
0054d564  b8 00 84 e5                                      str r0, [r4, #0xb8]
0054d568  ee 00 a0 e3                                      mov r0, #0xee
0054d56c  bc 00 84 e5                                      str r0, [r4, #0xbc]
0054d570  ef 00 a0 e3                                      mov r0, #0xef
0054d574  c0 00 84 e5                                      str r0, [r4, #0xc0]
0054d578  f0 00 a0 e3                                      mov r0, #0xf0
0054d57c  c4 00 84 e5                                      str r0, [r4, #0xc4]
0054d580  f1 00 a0 e3                                      mov r0, #0xf1
0054d584  3c 13 94 e5                                      ldr r1, [r4, #0x33c]
0054d588  c8 00 84 e5                                      str r0, [r4, #0xc8]
0054d58c  f2 00 a0 e3                                      mov r0, #0xf2
0054d590  90 00 84 e5                                      str r0, [r4, #0x90]
0054d594  f3 00 a0 e3                                      mov r0, #0xf3
0054d598  cc 00 84 e5                                      str r0, [r4, #0xcc]
0054d59c  f4 00 a0 e3                                      mov r0, #0xf4
0054d5a0  d0 00 84 e5                                      str r0, [r4, #0xd0]
0054d5a4  01 10 41 e2                                      sub r1, r1, #1
0054d5a8  f5 00 a0 e3                                      mov r0, #0xf5
0054d5ac  00 30 a0 e3                                      mov r3, #0
0054d5b0  e8 20 a0 e3                                      mov r2, #0xe8
0054d5b4  01 00 51 e3                                      cmp r1, #1
0054d5b8  00 10 a0 83                                      movhi r1, #0
0054d5bc  01 10 a0 93                                      movls r1, #1
0054d5c0  d4 00 84 e5                                      str r0, [r4, #0xd4]
0054d5c4  f6 00 a0 e3                                      mov r0, #0xf6
0054d5c8  d8 00 84 e5                                      str r0, [r4, #0xd8]
0054d5cc  a4 20 84 e5                                      str r2, [r4, #0xa4]
0054d5d0  ec 30 84 e5                                      str r3, [r4, #0xec]
0054d5d4  38 13 c4 e5                                      strb r1, [r4, #0x338]
0054d5d8  a0 20 84 e5                                      str r2, [r4, #0xa0]
0054d5dc  dc 30 84 e5                                      str r3, [r4, #0xdc]
0054d5e0  e0 30 84 e5                                      str r3, [r4, #0xe0]
0054d5e4  e4 30 84 e5                                      str r3, [r4, #0xe4]
0054d5e8  e8 30 84 e5                                      str r3, [r4, #0xe8]
0054d5ec  04 00 a0 e1                                      mov r0, r4
0054d5f0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0054d5f4  32 b0 a0 e3                                      mov fp, #0x32
0054d5f8  73 70 a0 e3                                      mov r7, #0x73
0054d5fc  00 30 e0 e3                                      mvn r3, #0
0054d600  65 20 a0 e3                                      mov r2, #0x65
0054d604  2d 10 e0 e3                                      mvn r1, #0x2d
0054d608  7d e0 e0 e3                                      mvn lr, #0x7d
0054d60c  37 00 e0 e3                                      mvn r0, #0x37
0054d610  0a c0 a0 e3                                      mov ip, #0xa
0054d614  64 90 a0 e3                                      mov sb, #0x64
0054d618  0f a0 e0 e3                                      mvn sl, #0xf
0054d61c  04 b0 c4 e5                                      strb fp, [r4, #4]
0054d620  1a 70 c4 e5                                      strb r7, [r4, #0x1a]
0054d624  06 b0 c4 e5                                      strb fp, [r4, #6]
0054d628  10 70 a0 e3                                      mov r7, #0x10
0054d62c  05 b0 c4 e5                                      strb fp, [r4, #5]
0054d630  0e b0 a0 e3                                      mov fp, #0xe
0054d634  18 70 c4 e5                                      strb r7, [r4, #0x18]
0054d638  20 90 c4 e5                                      strb sb, [r4, #0x20]
0054d63c  07 20 c4 e5                                      strb r2, [r4, #7]
0054d640  0b 20 c4 e5                                      strb r2, [r4, #0xb]
0054d644  0a e0 c4 e5                                      strb lr, [r4, #0xa]
0054d648  09 e0 c4 e5                                      strb lr, [r4, #9]
0054d64c  08 e0 c4 e5                                      strb lr, [r4, #8]
0054d650  0f 20 c4 e5                                      strb r2, [r4, #0xf]
0054d654  0e 10 c4 e5                                      strb r1, [r4, #0xe]
0054d658  0d 10 c4 e5                                      strb r1, [r4, #0xd]
0054d65c  0c 10 c4 e5                                      strb r1, [r4, #0xc]
0054d660  13 20 c4 e5                                      strb r2, [r4, #0x13]
0054d664  17 20 c4 e5                                      strb r2, [r4, #0x17]
0054d668  16 10 c4 e5                                      strb r1, [r4, #0x16]
0054d66c  15 10 c4 e5                                      strb r1, [r4, #0x15]
0054d670  14 10 c4 e5                                      strb r1, [r4, #0x14]
0054d674  1b 20 c4 e5                                      strb r2, [r4, #0x1b]
0054d678  19 b0 c4 e5                                      strb fp, [r4, #0x19]
0054d67c  23 20 c4 e5                                      strb r2, [r4, #0x23]
0054d680  22 90 c4 e5                                      strb sb, [r4, #0x22]
0054d684  21 90 c4 e5                                      strb sb, [r4, #0x21]
0054d688  12 30 c4 e5                                      strb r3, [r4, #0x12]
0054d68c  11 30 c4 e5                                      strb r3, [r4, #0x11]
0054d690  10 30 c4 e5                                      strb r3, [r4, #0x10]
0054d694  1f 00 c4 e5                                      strb r0, [r4, #0x1f]
0054d698  1e 30 c4 e5                                      strb r3, [r4, #0x1e]
0054d69c  1d 30 c4 e5                                      strb r3, [r4, #0x1d]
0054d6a0  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
0054d6a4  27 a0 c4 e5                                      strb sl, [r4, #0x27]
0054d6a8  26 c0 c4 e5                                      strb ip, [r4, #0x26]
0054d6ac  28 e0 c4 e5                                      strb lr, [r4, #0x28]
0054d6b0  2a e0 c4 e5                                      strb lr, [r4, #0x2a]
0054d6b4  29 e0 c4 e5                                      strb lr, [r4, #0x29]
0054d6b8  6b e0 a0 e3                                      mov lr, #0x6b
0054d6bc  5a 80 e0 e3                                      mvn r8, #0x5a
0054d6c0  24 70 a0 e3                                      mov r7, #0x24
0054d6c4  2e e0 c4 e5                                      strb lr, [r4, #0x2e]
0054d6c8  08 b0 a0 e3                                      mov fp, #8
0054d6cc  19 e0 e0 e3                                      mvn lr, #0x19
0054d6d0  1e 90 e0 e3                                      mvn sb, #0x1e
0054d6d4  38 10 c4 e5                                      strb r1, [r4, #0x38]
0054d6d8  2f 20 c4 e5                                      strb r2, [r4, #0x2f]
0054d6dc  2d 70 c4 e5                                      strb r7, [r4, #0x2d]
0054d6e0  37 20 c4 e5                                      strb r2, [r4, #0x37]
0054d6e4  3b 20 c4 e5                                      strb r2, [r4, #0x3b]
0054d6e8  3a 10 c4 e5                                      strb r1, [r4, #0x3a]
0054d6ec  39 10 c4 e5                                      strb r1, [r4, #0x39]
0054d6f0  47 20 c4 e5                                      strb r2, [r4, #0x47]
0054d6f4  33 a0 c4 e5                                      strb sl, [r4, #0x33]
0054d6f8  34 80 c4 e5                                      strb r8, [r4, #0x34]
0054d6fc  42 90 c4 e5                                      strb sb, [r4, #0x42]
0054d700  25 c0 c4 e5                                      strb ip, [r4, #0x25]
0054d704  24 c0 c4 e5                                      strb ip, [r4, #0x24]
0054d708  2b a0 c4 e5                                      strb sl, [r4, #0x2b]
0054d70c  2c b0 c4 e5                                      strb fp, [r4, #0x2c]
0054d710  32 30 c4 e5                                      strb r3, [r4, #0x32]
0054d714  31 30 c4 e5                                      strb r3, [r4, #0x31]
0054d718  30 30 c4 e5                                      strb r3, [r4, #0x30]
0054d71c  36 80 c4 e5                                      strb r8, [r4, #0x36]
0054d720  35 80 c4 e5                                      strb r8, [r4, #0x35]
0054d724  3f 00 c4 e5                                      strb r0, [r4, #0x3f]
0054d728  3e 60 c4 e5                                      strb r6, [r4, #0x3e]
0054d72c  3d 60 c4 e5                                      strb r6, [r4, #0x3d]
0054d730  3c 60 c4 e5                                      strb r6, [r4, #0x3c]
0054d734  43 00 c4 e5                                      strb r0, [r4, #0x43]
0054d738  41 30 c4 e5                                      strb r3, [r4, #0x41]
0054d73c  40 30 c4 e5                                      strb r3, [r4, #0x40]
0054d740  46 e0 c4 e5                                      strb lr, [r4, #0x46]
0054d744  45 e0 c4 e5                                      strb lr, [r4, #0x45]
0054d748  44 e0 c4 e5                                      strb lr, [r4, #0x44]
0054d74c  4b 20 c4 e5                                      strb r2, [r4, #0x4b]
0054d750  0e 20 a0 e3                                      mov r2, #0xe
0054d754  58 20 84 e5                                      str r2, [r4, #0x58]
0054d758  0f 20 a0 e3                                      mov r2, #0xf
0054d75c  60 20 84 e5                                      str r2, [r4, #0x60]
0054d760  12 20 a0 e3                                      mov r2, #0x12
0054d764  64 20 84 e5                                      str r2, [r4, #0x64]
0054d768  7d 2f a0 e3                                      mov r2, #0x1f4
0054d76c  68 20 84 e5                                      str r2, [r4, #0x68]
0054d770  c8 20 a0 e3                                      mov r2, #0xc8
0054d774  6c 20 84 e5                                      str r2, [r4, #0x6c]
0054d778  50 20 a0 e3                                      mov r2, #0x50
0054d77c  6b 10 a0 e3                                      mov r1, #0x6b
0054d780  55 70 c4 e5                                      strb r7, [r4, #0x55]
0054d784  70 20 84 e5                                      str r2, [r4, #0x70]
0054d788  1e 70 a0 e3                                      mov r7, #0x1e
0054d78c  02 20 a0 e3                                      mov r2, #2
0054d790  4c c0 c4 e5                                      strb ip, [r4, #0x4c]
0054d794  50 30 c4 e5                                      strb r3, [r4, #0x50]
0054d798  57 00 c4 e5                                      strb r0, [r4, #0x57]
0054d79c  56 10 c4 e5                                      strb r1, [r4, #0x56]
0054d7a0  54 b0 c4 e5                                      strb fp, [r4, #0x54]
0054d7a4  74 70 84 e5                                      str r7, [r4, #0x74]
0054d7a8  78 20 84 e5                                      str r2, [r4, #0x78]
0054d7ac  7c 60 84 e5                                      str r6, [r4, #0x7c]
0054d7b0  4a 30 c4 e5                                      strb r3, [r4, #0x4a]
0054d7b4  49 30 c4 e5                                      strb r3, [r4, #0x49]
0054d7b8  48 30 c4 e5                                      strb r3, [r4, #0x48]
0054d7bc  4f 00 c4 e5                                      strb r0, [r4, #0x4f]
0054d7c0  4e c0 c4 e5                                      strb ip, [r4, #0x4e]
0054d7c4  4d c0 c4 e5                                      strb ip, [r4, #0x4d]
0054d7c8  53 00 c4 e5                                      strb r0, [r4, #0x53]
0054d7cc  52 30 c4 e5                                      strb r3, [r4, #0x52]
0054d7d0  51 30 c4 e5                                      strb r3, [r4, #0x51]
0054d7d4  5c 70 84 e5                                      str r7, [r4, #0x5c]
0054d7d8  0a ff ff ea                                      b #0x54d408
; mapping-symbol data/literal pool
0054d7dc  7c 79 44 00 4c 20 00 00 44 2b 00 00 84 2a 00 00  .byte 0x7c, 0x79, 0x44, 0x00, 0x4c, 0x20, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x84, 0x2a, 0x00, 0x00
0054d7ec  74 0d 39 00 78 0d 39 00 64 11 39 00 4c 11 39 00  .byte 0x74, 0x0d, 0x39, 0x00, 0x78, 0x0d, 0x39, 0x00, 0x64, 0x11, 0x39, 0x00, 0x4c, 0x11, 0x39, 0x00
0054d7fc  ec 0c 39 00 1c 11 39 00 1c 11 39 00 24 11 39 00  .byte 0xec, 0x0c, 0x39, 0x00, 0x1c, 0x11, 0x39, 0x00, 0x1c, 0x11, 0x39, 0x00, 0x24, 0x11, 0x39, 0x00

; FUNCTION 0x0054d80c, declared_size=1740, range_size=1740, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkinC2ENS0_14EGUI_SKIN_TYPEEPNS_5video12IVideoDriverE
; demangled: glitch::gui::CGUISkin::CGUISkin(glitch::gui::EGUI_SKIN_TYPE, glitch::video::IVideoDriver*)
; decoder-mode: arm
0054d80c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0054d810  04 c0 91 e5                                      ldr ip, [r1, #4]
0054d814  04 e0 81 e2                                      add lr, r1, #4
0054d818  00 40 a0 e1                                      mov r4, r0
0054d81c  00 c0 80 e5                                      str ip, [r0]
0054d820  04 50 9e e5                                      ldr r5, [lr, #4]
0054d824  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
0054d828  03 90 a0 e1                                      mov sb, r3
0054d82c  02 80 a0 e1                                      mov r8, r2
0054d830  0c 50 84 e7                                      str r5, [r4, ip]
0054d834  00 c0 94 e5                                      ldr ip, [r4]
0054d838  08 e0 9e e5                                      ldr lr, [lr, #8]
0054d83c  00 00 a0 e3                                      mov r0, #0
0054d840  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0054d844  f4 50 84 e2                                      add r5, r4, #0xf4
0054d848  00 70 a0 e1                                      mov r7, r0
0054d84c  0c e0 84 e7                                      str lr, [r4, ip]
0054d850  00 30 91 e5                                      ldr r3, [r1]
0054d854  05 a0 a0 e1                                      mov sl, r5
0054d858  00 60 a0 e1                                      mov r6, r0
0054d85c  00 30 84 e5                                      str r3, [r4]
0054d860  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0054d864  10 20 91 e5                                      ldr r2, [r1, #0x10]
0054d868  03 20 84 e7                                      str r2, [r4, r3]
0054d86c  00 30 94 e5                                      ldr r3, [r4]
0054d870  14 20 91 e5                                      ldr r2, [r1, #0x14]
0054d874  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054d878  03 20 84 e7                                      str r2, [r4, r3]
0054d87c  f0 00 84 e5                                      str r0, [r4, #0xf0]
0054d880  40 a0 8a e5                                      str sl, [sl, #0x40]
0054d884  44 a0 8a e5                                      str sl, [sl, #0x44]
0054d888  0a 00 a0 e1                                      mov r0, sl
0054d88c  1b fe ff eb                                      bl #0x54d100
0054d890  40 30 9a e5                                      ldr r3, [sl, #0x40]
0054d894  48 70 87 e2                                      add r7, r7, #0x48
0054d898  09 0d 57 e3                                      cmp r7, #0x240
0054d89c  00 60 83 e5                                      str r6, [r3]
0054d8a0  48 a0 8a e2                                      add sl, sl, #0x48
0054d8a4  f5 ff ff 1a                                      bne #0x54d880
0054d8a8  01 00 58 e3                                      cmp r8, #1
0054d8ac  34 93 84 e5                                      str sb, [r4, #0x334]
0054d8b0  3c 83 84 e5                                      str r8, [r4, #0x33c]
0054d8b4  05 01 00 9a                                      bls #0x54dcd0
0054d8b8  7d b0 e0 e3                                      mvn fp, #0x7d
0054d8bc  06 b0 c4 e5                                      strb fp, [r4, #6]
0054d8c0  79 b0 a0 e3                                      mov fp, #0x79
0054d8c4  05 b0 c4 e5                                      strb fp, [r4, #5]
0054d8c8  76 b0 a0 e3                                      mov fp, #0x76
0054d8cc  04 b0 c4 e5                                      strb fp, [r4, #4]
0054d8d0  0e b0 e0 e3                                      mvn fp, #0xe
0054d8d4  0a b0 c4 e5                                      strb fp, [r4, #0xa]
0054d8d8  17 b0 e0 e3                                      mvn fp, #0x17
0054d8dc  09 b0 c4 e5                                      strb fp, [r4, #9]
0054d8e0  1b b0 e0 e3                                      mvn fp, #0x1b
0054d8e4  08 b0 c4 e5                                      strb fp, [r4, #8]
0054d8e8  23 b0 e0 e3                                      mvn fp, #0x23
0054d8ec  12 b0 c4 e5                                      strb fp, [r4, #0x12]
0054d8f0  33 b0 e0 e3                                      mvn fp, #0x33
0054d8f4  11 b0 c4 e5                                      strb fp, [r4, #0x11]
0054d8f8  38 b0 e0 e3                                      mvn fp, #0x38
0054d8fc  10 b0 c4 e5                                      strb fp, [r4, #0x10]
0054d900  3a b0 a0 e3                                      mov fp, #0x3a
0054d904  16 b0 c4 e5                                      strb fp, [r4, #0x16]
0054d908  31 b0 a0 e3                                      mov fp, #0x31
0054d90c  15 b0 c4 e5                                      strb fp, [r4, #0x15]
0054d910  2e b0 a0 e3                                      mov fp, #0x2e
0054d914  14 b0 c4 e5                                      strb fp, [r4, #0x14]
0054d918  7f b0 e0 e3                                      mvn fp, #0x7f
0054d91c  1b b0 c4 e5                                      strb fp, [r4, #0x1b]
0054d920  26 b0 e0 e3                                      mvn fp, #0x26
0054d924  0e b0 c4 e5                                      strb fp, [r4, #0xe]
0054d928  34 b0 e0 e3                                      mvn fp, #0x34
0054d92c  40 60 a0 e3                                      mov r6, #0x40
0054d930  0c b0 c4 e5                                      strb fp, [r4, #0xc]
0054d934  50 b0 a0 e3                                      mov fp, #0x50
0054d938  0f 20 e0 e3                                      mvn r2, #0xf
0054d93c  16 30 a0 e3                                      mov r3, #0x16
0054d940  2f 10 e0 e3                                      mvn r1, #0x2f
0054d944  60 00 a0 e3                                      mov r0, #0x60
0054d948  2d e0 e0 e3                                      mvn lr, #0x2d
0054d94c  3f a0 e0 e3                                      mvn sl, #0x3f
0054d950  64 90 a0 e3                                      mov sb, #0x64
0054d954  18 60 c4 e5                                      strb r6, [r4, #0x18]
0054d958  0b b0 c4 e5                                      strb fp, [r4, #0xb]
0054d95c  13 60 c4 e5                                      strb r6, [r4, #0x13]
0054d960  7f b0 e0 e3                                      mvn fp, #0x7f
0054d964  1a 60 c4 e5                                      strb r6, [r4, #0x1a]
0054d968  19 60 c4 e5                                      strb r6, [r4, #0x19]
0054d96c  3c 60 a0 e3                                      mov r6, #0x3c
0054d970  0d e0 c4 e5                                      strb lr, [r4, #0xd]
0054d974  17 b0 c4 e5                                      strb fp, [r4, #0x17]
0054d978  20 90 c4 e5                                      strb sb, [r4, #0x20]
0054d97c  07 00 c4 e5                                      strb r0, [r4, #7]
0054d980  0f a0 c4 e5                                      strb sl, [r4, #0xf]
0054d984  1f 20 c4 e5                                      strb r2, [r4, #0x1f]
0054d988  1e 10 c4 e5                                      strb r1, [r4, #0x1e]
0054d98c  1d 10 c4 e5                                      strb r1, [r4, #0x1d]
0054d990  1c 10 c4 e5                                      strb r1, [r4, #0x1c]
0054d994  23 a0 c4 e5                                      strb sl, [r4, #0x23]
0054d998  22 90 c4 e5                                      strb sb, [r4, #0x22]
0054d99c  21 90 c4 e5                                      strb sb, [r4, #0x21]
0054d9a0  27 10 c4 e5                                      strb r1, [r4, #0x27]
0054d9a4  26 30 c4 e5                                      strb r3, [r4, #0x26]
0054d9a8  2b 60 c4 e5                                      strb r6, [r4, #0x2b]
0054d9ac  6c 60 a0 e3                                      mov r6, #0x6c
0054d9b0  2f 60 c4 e5                                      strb r6, [r4, #0x2f]
0054d9b4  33 60 a0 e3                                      mov r6, #0x33
0054d9b8  3e 60 c4 e5                                      strb r6, [r4, #0x3e]
0054d9bc  20 60 a0 e3                                      mov r6, #0x20
0054d9c0  1f c0 e0 e3                                      mvn ip, #0x1f
0054d9c4  5a 70 e0 e3                                      mvn r7, #0x5a
0054d9c8  14 80 a0 e3                                      mov r8, #0x14
0054d9cc  3d 60 c4 e5                                      strb r6, [r4, #0x3d]
0054d9d0  41 e0 c4 e5                                      strb lr, [r4, #0x41]
0054d9d4  26 60 e0 e3                                      mvn r6, #0x26
0054d9d8  3a e0 c4 e5                                      strb lr, [r4, #0x3a]
0054d9dc  39 e0 c4 e5                                      strb lr, [r4, #0x39]
0054d9e0  38 e0 c4 e5                                      strb lr, [r4, #0x38]
0054d9e4  34 b0 e0 e3                                      mvn fp, #0x34
0054d9e8  0f e0 a0 e3                                      mov lr, #0xf
0054d9ec  34 70 c4 e5                                      strb r7, [r4, #0x34]
0054d9f0  42 60 c4 e5                                      strb r6, [r4, #0x42]
0054d9f4  32 c0 c4 e5                                      strb ip, [r4, #0x32]
0054d9f8  31 c0 c4 e5                                      strb ip, [r4, #0x31]
0054d9fc  30 c0 c4 e5                                      strb ip, [r4, #0x30]
0054da00  36 70 c4 e5                                      strb r7, [r4, #0x36]
0054da04  35 70 c4 e5                                      strb r7, [r4, #0x35]
0054da08  46 c0 c4 e5                                      strb ip, [r4, #0x46]
0054da0c  45 c0 c4 e5                                      strb ip, [r4, #0x45]
0054da10  28 80 c4 e5                                      strb r8, [r4, #0x28]
0054da14  43 a0 c4 e5                                      strb sl, [r4, #0x43]
0054da18  40 b0 c4 e5                                      strb fp, [r4, #0x40]
0054da1c  25 30 c4 e5                                      strb r3, [r4, #0x25]
0054da20  24 30 c4 e5                                      strb r3, [r4, #0x24]
0054da24  2a 80 c4 e5                                      strb r8, [r4, #0x2a]
0054da28  29 80 c4 e5                                      strb r8, [r4, #0x29]
0054da2c  2e 00 c4 e5                                      strb r0, [r4, #0x2e]
0054da30  2d 00 c4 e5                                      strb r0, [r4, #0x2d]
0054da34  2c 00 c4 e5                                      strb r0, [r4, #0x2c]
0054da38  33 10 c4 e5                                      strb r1, [r4, #0x33]
0054da3c  37 20 c4 e5                                      strb r2, [r4, #0x37]
0054da40  3b 20 c4 e5                                      strb r2, [r4, #0x3b]
0054da44  3f 20 c4 e5                                      strb r2, [r4, #0x3f]
0054da48  3c e0 c4 e5                                      strb lr, [r4, #0x3c]
0054da4c  47 20 c4 e5                                      strb r2, [r4, #0x47]
0054da50  44 c0 c4 e5                                      strb ip, [r4, #0x44]
0054da54  0e c0 a0 e3                                      mov ip, #0xe
0054da58  58 c0 84 e5                                      str ip, [r4, #0x58]
0054da5c  30 c0 a0 e3                                      mov ip, #0x30
0054da60  5c c0 84 e5                                      str ip, [r4, #0x5c]
0054da64  12 c0 a0 e3                                      mov ip, #0x12
0054da68  64 c0 84 e5                                      str ip, [r4, #0x64]
0054da6c  7d cf a0 e3                                      mov ip, #0x1f4
0054da70  68 c0 84 e5                                      str ip, [r4, #0x68]
0054da74  c8 c0 a0 e3                                      mov ip, #0xc8
0054da78  6c c0 84 e5                                      str ip, [r4, #0x6c]
0054da7c  1e c0 a0 e3                                      mov ip, #0x1e
0054da80  74 c0 84 e5                                      str ip, [r4, #0x74]
0054da84  03 c0 a0 e3                                      mov ip, #3
0054da88  0f 60 a0 e3                                      mov r6, #0xf
0054da8c  50 70 a0 e3                                      mov r7, #0x50
0054da90  78 c0 84 e5                                      str ip, [r4, #0x78]
0054da94  02 c0 a0 e3                                      mov ip, #2
0054da98  48 20 c4 e5                                      strb r2, [r4, #0x48]
0054da9c  50 30 c4 e5                                      strb r3, [r4, #0x50]
0054daa0  57 10 c4 e5                                      strb r1, [r4, #0x57]
0054daa4  54 00 c4 e5                                      strb r0, [r4, #0x54]
0054daa8  60 60 84 e5                                      str r6, [r4, #0x60]
0054daac  70 70 84 e5                                      str r7, [r4, #0x70]
0054dab0  7c c0 84 e5                                      str ip, [r4, #0x7c]
0054dab4  4b 20 c4 e5                                      strb r2, [r4, #0x4b]
0054dab8  4a 20 c4 e5                                      strb r2, [r4, #0x4a]
0054dabc  49 20 c4 e5                                      strb r2, [r4, #0x49]
0054dac0  4f 10 c4 e5                                      strb r1, [r4, #0x4f]
0054dac4  4e 30 c4 e5                                      strb r3, [r4, #0x4e]
0054dac8  4d 30 c4 e5                                      strb r3, [r4, #0x4d]
0054dacc  4c 30 c4 e5                                      strb r3, [r4, #0x4c]
0054dad0  53 10 c4 e5                                      strb r1, [r4, #0x53]
0054dad4  52 30 c4 e5                                      strb r3, [r4, #0x52]
0054dad8  51 30 c4 e5                                      strb r3, [r4, #0x51]
0054dadc  56 00 c4 e5                                      strb r0, [r4, #0x56]
0054dae0  55 00 c4 e5                                      strb r0, [r4, #0x55]
0054dae4  cc 83 9f e5                                      ldr r8, [pc, #0x3cc]
0054dae8  cc 73 9f e5                                      ldr r7, [pc, #0x3cc]
0054daec  cc 63 9f e5                                      ldr r6, [pc, #0x3cc]
0054daf0  08 80 8f e0                                      add r8, pc, r8
0054daf4  08 00 a0 e1                                      mov r0, r8
0054daf8  62 04 f7 eb                                      bl #0x30ec88
0054dafc  07 70 8f e0                                      add r7, pc, r7
0054db00  00 21 88 e0                                      add r2, r8, r0, lsl #2
0054db04  08 10 a0 e1                                      mov r1, r8
0054db08  05 00 a0 e1                                      mov r0, r5
0054db0c  a3 55 f7 eb                                      bl #0x3231a0
0054db10  07 00 a0 e1                                      mov r0, r7
0054db14  5b 04 f7 eb                                      bl #0x30ec88
0054db18  06 60 8f e0                                      add r6, pc, r6
0054db1c  00 21 87 e0                                      add r2, r7, r0, lsl #2
0054db20  07 10 a0 e1                                      mov r1, r7
0054db24  4f 0f 84 e2                                      add r0, r4, #0x13c
0054db28  9c 55 f7 eb                                      bl #0x3231a0
0054db2c  06 00 a0 e1                                      mov r0, r6
0054db30  54 04 f7 eb                                      bl #0x30ec88
0054db34  88 53 9f e5                                      ldr r5, [pc, #0x388]
0054db38  00 21 86 e0                                      add r2, r6, r0, lsl #2
0054db3c  06 10 a0 e1                                      mov r1, r6
0054db40  05 50 8f e0                                      add r5, pc, r5
0054db44  61 0f 84 e2                                      add r0, r4, #0x184
0054db48  94 55 f7 eb                                      bl #0x3231a0
0054db4c  05 00 a0 e1                                      mov r0, r5
0054db50  4c 04 f7 eb                                      bl #0x30ec88
0054db54  6c 63 9f e5                                      ldr r6, [pc, #0x36c]
0054db58  00 21 85 e0                                      add r2, r5, r0, lsl #2
0054db5c  05 10 a0 e1                                      mov r1, r5
0054db60  06 60 8f e0                                      add r6, pc, r6
0054db64  73 0f 84 e2                                      add r0, r4, #0x1cc
0054db68  8c 55 f7 eb                                      bl #0x3231a0
0054db6c  06 00 a0 e1                                      mov r0, r6
0054db70  44 04 f7 eb                                      bl #0x30ec88
0054db74  50 53 9f e5                                      ldr r5, [pc, #0x350]
0054db78  00 21 86 e0                                      add r2, r6, r0, lsl #2
0054db7c  06 10 a0 e1                                      mov r1, r6
0054db80  05 50 8f e0                                      add r5, pc, r5
0054db84  85 0f 84 e2                                      add r0, r4, #0x214
0054db88  84 55 f7 eb                                      bl #0x3231a0
0054db8c  05 00 a0 e1                                      mov r0, r5
0054db90  3c 04 f7 eb                                      bl #0x30ec88
0054db94  34 63 9f e5                                      ldr r6, [pc, #0x334]
0054db98  00 21 85 e0                                      add r2, r5, r0, lsl #2
0054db9c  05 10 a0 e1                                      mov r1, r5
0054dba0  06 60 8f e0                                      add r6, pc, r6
0054dba4  bb 0f 84 e2                                      add r0, r4, #0x2ec
0054dba8  7c 55 f7 eb                                      bl #0x3231a0
0054dbac  06 00 a0 e1                                      mov r0, r6
0054dbb0  34 04 f7 eb                                      bl #0x30ec88
0054dbb4  18 53 9f e5                                      ldr r5, [pc, #0x318]
0054dbb8  00 21 86 e0                                      add r2, r6, r0, lsl #2
0054dbbc  06 10 a0 e1                                      mov r1, r6
0054dbc0  05 50 8f e0                                      add r5, pc, r5
0054dbc4  a9 0f 84 e2                                      add r0, r4, #0x2a4
0054dbc8  74 55 f7 eb                                      bl #0x3231a0
0054dbcc  05 00 a0 e1                                      mov r0, r5
0054dbd0  2c 04 f7 eb                                      bl #0x30ec88
0054dbd4  05 10 a0 e1                                      mov r1, r5
0054dbd8  00 21 85 e0                                      add r2, r5, r0, lsl #2
0054dbdc  97 0f 84 e2                                      add r0, r4, #0x25c
0054dbe0  6e 55 f7 eb                                      bl #0x3231a0
0054dbe4  e1 00 a0 e3                                      mov r0, #0xe1
0054dbe8  80 00 84 e5                                      str r0, [r4, #0x80]
0054dbec  e2 00 a0 e3                                      mov r0, #0xe2
0054dbf0  84 00 84 e5                                      str r0, [r4, #0x84]
0054dbf4  e3 00 a0 e3                                      mov r0, #0xe3
0054dbf8  88 00 84 e5                                      str r0, [r4, #0x88]
0054dbfc  e4 00 a0 e3                                      mov r0, #0xe4
0054dc00  8c 00 84 e5                                      str r0, [r4, #0x8c]
0054dc04  e5 00 a0 e3                                      mov r0, #0xe5
0054dc08  94 00 84 e5                                      str r0, [r4, #0x94]
0054dc0c  e6 00 a0 e3                                      mov r0, #0xe6
0054dc10  98 00 84 e5                                      str r0, [r4, #0x98]
0054dc14  e7 00 a0 e3                                      mov r0, #0xe7
0054dc18  9c 00 84 e5                                      str r0, [r4, #0x9c]
0054dc1c  e9 00 a0 e3                                      mov r0, #0xe9
0054dc20  a8 00 84 e5                                      str r0, [r4, #0xa8]
0054dc24  ea 00 a0 e3                                      mov r0, #0xea
0054dc28  ac 00 84 e5                                      str r0, [r4, #0xac]
0054dc2c  eb 00 a0 e3                                      mov r0, #0xeb
0054dc30  b0 00 84 e5                                      str r0, [r4, #0xb0]
0054dc34  ec 00 a0 e3                                      mov r0, #0xec
0054dc38  b4 00 84 e5                                      str r0, [r4, #0xb4]
0054dc3c  ed 00 a0 e3                                      mov r0, #0xed
0054dc40  b8 00 84 e5                                      str r0, [r4, #0xb8]
0054dc44  ee 00 a0 e3                                      mov r0, #0xee
0054dc48  bc 00 84 e5                                      str r0, [r4, #0xbc]
0054dc4c  ef 00 a0 e3                                      mov r0, #0xef
0054dc50  c0 00 84 e5                                      str r0, [r4, #0xc0]
0054dc54  f0 00 a0 e3                                      mov r0, #0xf0
0054dc58  c4 00 84 e5                                      str r0, [r4, #0xc4]
0054dc5c  f1 00 a0 e3                                      mov r0, #0xf1
0054dc60  3c 13 94 e5                                      ldr r1, [r4, #0x33c]
0054dc64  c8 00 84 e5                                      str r0, [r4, #0xc8]
0054dc68  f2 00 a0 e3                                      mov r0, #0xf2
0054dc6c  90 00 84 e5                                      str r0, [r4, #0x90]
0054dc70  f3 00 a0 e3                                      mov r0, #0xf3
0054dc74  cc 00 84 e5                                      str r0, [r4, #0xcc]
0054dc78  f4 00 a0 e3                                      mov r0, #0xf4
0054dc7c  d0 00 84 e5                                      str r0, [r4, #0xd0]
0054dc80  01 10 41 e2                                      sub r1, r1, #1
0054dc84  f5 00 a0 e3                                      mov r0, #0xf5
0054dc88  00 30 a0 e3                                      mov r3, #0
0054dc8c  e8 20 a0 e3                                      mov r2, #0xe8
0054dc90  01 00 51 e3                                      cmp r1, #1
0054dc94  00 10 a0 83                                      movhi r1, #0
0054dc98  01 10 a0 93                                      movls r1, #1
0054dc9c  d4 00 84 e5                                      str r0, [r4, #0xd4]
0054dca0  f6 00 a0 e3                                      mov r0, #0xf6
0054dca4  d8 00 84 e5                                      str r0, [r4, #0xd8]
0054dca8  a4 20 84 e5                                      str r2, [r4, #0xa4]
0054dcac  ec 30 84 e5                                      str r3, [r4, #0xec]
0054dcb0  38 13 c4 e5                                      strb r1, [r4, #0x338]
0054dcb4  a0 20 84 e5                                      str r2, [r4, #0xa0]
0054dcb8  dc 30 84 e5                                      str r3, [r4, #0xdc]
0054dcbc  e0 30 84 e5                                      str r3, [r4, #0xe0]
0054dcc0  e4 30 84 e5                                      str r3, [r4, #0xe4]
0054dcc4  e8 30 84 e5                                      str r3, [r4, #0xe8]
0054dcc8  04 00 a0 e1                                      mov r0, r4
0054dccc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0054dcd0  32 b0 a0 e3                                      mov fp, #0x32
0054dcd4  73 70 a0 e3                                      mov r7, #0x73
0054dcd8  00 30 e0 e3                                      mvn r3, #0
0054dcdc  65 20 a0 e3                                      mov r2, #0x65
0054dce0  2d 10 e0 e3                                      mvn r1, #0x2d
0054dce4  7d e0 e0 e3                                      mvn lr, #0x7d
0054dce8  37 00 e0 e3                                      mvn r0, #0x37
0054dcec  0a c0 a0 e3                                      mov ip, #0xa
0054dcf0  64 90 a0 e3                                      mov sb, #0x64
0054dcf4  0f a0 e0 e3                                      mvn sl, #0xf
0054dcf8  04 b0 c4 e5                                      strb fp, [r4, #4]
0054dcfc  1a 70 c4 e5                                      strb r7, [r4, #0x1a]
0054dd00  06 b0 c4 e5                                      strb fp, [r4, #6]
0054dd04  10 70 a0 e3                                      mov r7, #0x10
0054dd08  05 b0 c4 e5                                      strb fp, [r4, #5]
0054dd0c  0e b0 a0 e3                                      mov fp, #0xe
0054dd10  18 70 c4 e5                                      strb r7, [r4, #0x18]
0054dd14  20 90 c4 e5                                      strb sb, [r4, #0x20]
0054dd18  07 20 c4 e5                                      strb r2, [r4, #7]
0054dd1c  0b 20 c4 e5                                      strb r2, [r4, #0xb]
0054dd20  0a e0 c4 e5                                      strb lr, [r4, #0xa]
0054dd24  09 e0 c4 e5                                      strb lr, [r4, #9]
0054dd28  08 e0 c4 e5                                      strb lr, [r4, #8]
0054dd2c  0f 20 c4 e5                                      strb r2, [r4, #0xf]
0054dd30  0e 10 c4 e5                                      strb r1, [r4, #0xe]
0054dd34  0d 10 c4 e5                                      strb r1, [r4, #0xd]
0054dd38  0c 10 c4 e5                                      strb r1, [r4, #0xc]
0054dd3c  13 20 c4 e5                                      strb r2, [r4, #0x13]
0054dd40  17 20 c4 e5                                      strb r2, [r4, #0x17]
0054dd44  16 10 c4 e5                                      strb r1, [r4, #0x16]
0054dd48  15 10 c4 e5                                      strb r1, [r4, #0x15]
0054dd4c  14 10 c4 e5                                      strb r1, [r4, #0x14]
0054dd50  1b 20 c4 e5                                      strb r2, [r4, #0x1b]
0054dd54  19 b0 c4 e5                                      strb fp, [r4, #0x19]
0054dd58  23 20 c4 e5                                      strb r2, [r4, #0x23]
0054dd5c  22 90 c4 e5                                      strb sb, [r4, #0x22]
0054dd60  21 90 c4 e5                                      strb sb, [r4, #0x21]
0054dd64  12 30 c4 e5                                      strb r3, [r4, #0x12]
0054dd68  11 30 c4 e5                                      strb r3, [r4, #0x11]
0054dd6c  10 30 c4 e5                                      strb r3, [r4, #0x10]
0054dd70  1f 00 c4 e5                                      strb r0, [r4, #0x1f]
0054dd74  1e 30 c4 e5                                      strb r3, [r4, #0x1e]
0054dd78  1d 30 c4 e5                                      strb r3, [r4, #0x1d]
0054dd7c  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
0054dd80  27 a0 c4 e5                                      strb sl, [r4, #0x27]
0054dd84  26 c0 c4 e5                                      strb ip, [r4, #0x26]
0054dd88  28 e0 c4 e5                                      strb lr, [r4, #0x28]
0054dd8c  2a e0 c4 e5                                      strb lr, [r4, #0x2a]
0054dd90  29 e0 c4 e5                                      strb lr, [r4, #0x29]
0054dd94  6b e0 a0 e3                                      mov lr, #0x6b
0054dd98  5a 80 e0 e3                                      mvn r8, #0x5a
0054dd9c  24 70 a0 e3                                      mov r7, #0x24
0054dda0  2e e0 c4 e5                                      strb lr, [r4, #0x2e]
0054dda4  08 b0 a0 e3                                      mov fp, #8
0054dda8  19 e0 e0 e3                                      mvn lr, #0x19
0054ddac  1e 90 e0 e3                                      mvn sb, #0x1e
0054ddb0  38 10 c4 e5                                      strb r1, [r4, #0x38]
0054ddb4  2f 20 c4 e5                                      strb r2, [r4, #0x2f]
0054ddb8  2d 70 c4 e5                                      strb r7, [r4, #0x2d]
0054ddbc  37 20 c4 e5                                      strb r2, [r4, #0x37]
0054ddc0  3b 20 c4 e5                                      strb r2, [r4, #0x3b]
0054ddc4  3a 10 c4 e5                                      strb r1, [r4, #0x3a]
0054ddc8  39 10 c4 e5                                      strb r1, [r4, #0x39]
0054ddcc  47 20 c4 e5                                      strb r2, [r4, #0x47]
0054ddd0  33 a0 c4 e5                                      strb sl, [r4, #0x33]
0054ddd4  34 80 c4 e5                                      strb r8, [r4, #0x34]
0054ddd8  42 90 c4 e5                                      strb sb, [r4, #0x42]
0054dddc  25 c0 c4 e5                                      strb ip, [r4, #0x25]
0054dde0  24 c0 c4 e5                                      strb ip, [r4, #0x24]
0054dde4  2b a0 c4 e5                                      strb sl, [r4, #0x2b]
0054dde8  2c b0 c4 e5                                      strb fp, [r4, #0x2c]
0054ddec  32 30 c4 e5                                      strb r3, [r4, #0x32]
0054ddf0  31 30 c4 e5                                      strb r3, [r4, #0x31]
0054ddf4  30 30 c4 e5                                      strb r3, [r4, #0x30]
0054ddf8  36 80 c4 e5                                      strb r8, [r4, #0x36]
0054ddfc  35 80 c4 e5                                      strb r8, [r4, #0x35]
0054de00  3f 00 c4 e5                                      strb r0, [r4, #0x3f]
0054de04  3e 60 c4 e5                                      strb r6, [r4, #0x3e]
0054de08  3d 60 c4 e5                                      strb r6, [r4, #0x3d]
0054de0c  3c 60 c4 e5                                      strb r6, [r4, #0x3c]
0054de10  43 00 c4 e5                                      strb r0, [r4, #0x43]
0054de14  41 30 c4 e5                                      strb r3, [r4, #0x41]
0054de18  40 30 c4 e5                                      strb r3, [r4, #0x40]
0054de1c  46 e0 c4 e5                                      strb lr, [r4, #0x46]
0054de20  45 e0 c4 e5                                      strb lr, [r4, #0x45]
0054de24  44 e0 c4 e5                                      strb lr, [r4, #0x44]
0054de28  4b 20 c4 e5                                      strb r2, [r4, #0x4b]
0054de2c  0e 20 a0 e3                                      mov r2, #0xe
0054de30  58 20 84 e5                                      str r2, [r4, #0x58]
0054de34  0f 20 a0 e3                                      mov r2, #0xf
0054de38  60 20 84 e5                                      str r2, [r4, #0x60]
0054de3c  12 20 a0 e3                                      mov r2, #0x12
0054de40  64 20 84 e5                                      str r2, [r4, #0x64]
0054de44  7d 2f a0 e3                                      mov r2, #0x1f4
0054de48  68 20 84 e5                                      str r2, [r4, #0x68]
0054de4c  c8 20 a0 e3                                      mov r2, #0xc8
0054de50  6c 20 84 e5                                      str r2, [r4, #0x6c]
0054de54  50 20 a0 e3                                      mov r2, #0x50
0054de58  6b 10 a0 e3                                      mov r1, #0x6b
0054de5c  55 70 c4 e5                                      strb r7, [r4, #0x55]
0054de60  70 20 84 e5                                      str r2, [r4, #0x70]
0054de64  1e 70 a0 e3                                      mov r7, #0x1e
0054de68  02 20 a0 e3                                      mov r2, #2
0054de6c  4c c0 c4 e5                                      strb ip, [r4, #0x4c]
0054de70  50 30 c4 e5                                      strb r3, [r4, #0x50]
0054de74  57 00 c4 e5                                      strb r0, [r4, #0x57]
0054de78  56 10 c4 e5                                      strb r1, [r4, #0x56]
0054de7c  54 b0 c4 e5                                      strb fp, [r4, #0x54]
0054de80  74 70 84 e5                                      str r7, [r4, #0x74]
0054de84  78 20 84 e5                                      str r2, [r4, #0x78]
0054de88  7c 60 84 e5                                      str r6, [r4, #0x7c]
0054de8c  4a 30 c4 e5                                      strb r3, [r4, #0x4a]
0054de90  49 30 c4 e5                                      strb r3, [r4, #0x49]
0054de94  48 30 c4 e5                                      strb r3, [r4, #0x48]
0054de98  4f 00 c4 e5                                      strb r0, [r4, #0x4f]
0054de9c  4e c0 c4 e5                                      strb ip, [r4, #0x4e]
0054dea0  4d c0 c4 e5                                      strb ip, [r4, #0x4d]
0054dea4  53 00 c4 e5                                      strb r0, [r4, #0x53]
0054dea8  52 30 c4 e5                                      strb r3, [r4, #0x52]
0054deac  51 30 c4 e5                                      strb r3, [r4, #0x51]
0054deb0  5c 70 84 e5                                      str r7, [r4, #0x5c]
0054deb4  0a ff ff ea                                      b #0x54dae4
; mapping-symbol data/literal pool
0054deb8  98 06 39 00 9c 06 39 00 88 0a 39 00 70 0a 39 00  .byte 0x98, 0x06, 0x39, 0x00, 0x9c, 0x06, 0x39, 0x00, 0x88, 0x0a, 0x39, 0x00, 0x70, 0x0a, 0x39, 0x00
0054dec8  10 06 39 00 40 0a 39 00 40 0a 39 00 48 0a 39 00  .byte 0x10, 0x06, 0x39, 0x00, 0x40, 0x0a, 0x39, 0x00, 0x40, 0x0a, 0x39, 0x00, 0x48, 0x0a, 0x39, 0x00

; FUNCTION 0x0054ded8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZTv0_n24_N6glitch3gui8CGUISkinD0Ev
; demangled: virtual thunk to glitch::gui::CGUISkin::~CGUISkin()
; decoder-mode: arm
0054ded8  00 30 90 e5                                      ldr r3, [r0]
0054dedc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0054dee0  03 00 80 e0                                      add r0, r0, r3
0054dee4  36 f4 ff ea                                      b #0x54afc4

; FUNCTION 0x0054dee8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZTv0_n12_N6glitch3gui8CGUISkinD0Ev
; demangled: virtual thunk to glitch::gui::CGUISkin::~CGUISkin()
; decoder-mode: arm
0054dee8  00 30 90 e5                                      ldr r3, [r0]
0054deec  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054def0  03 00 80 e0                                      add r0, r0, r3
0054def4  32 f4 ff ea                                      b #0x54afc4

; FUNCTION 0x0054def8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZTv0_n24_N6glitch3gui8CGUISkinD1Ev
; demangled: virtual thunk to glitch::gui::CGUISkin::~CGUISkin()
; decoder-mode: arm
0054def8  00 30 90 e5                                      ldr r3, [r0]
0054defc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0054df00  03 00 80 e0                                      add r0, r0, r3
0054df04  07 f4 ff ea                                      b #0x54af28

; FUNCTION 0x0054df08, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZTv0_n12_N6glitch3gui8CGUISkinD1Ev
; demangled: virtual thunk to glitch::gui::CGUISkin::~CGUISkin()
; decoder-mode: arm
0054df08  00 30 90 e5                                      ldr r3, [r0]
0054df0c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054df10  03 00 80 e0                                      add r0, r0, r3
0054df14  03 f4 ff ea                                      b #0x54af28

; FUNCTION 0x0054df18, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZTv0_n20_N6glitch3gui8CGUISkin21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUISkin::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0054df18  00 30 90 e5                                      ldr r3, [r0]
0054df1c  14 30 13 e5                                      ldr r3, [r3, #-0x14]
0054df20  03 00 80 e0                                      add r0, r0, r3
0054df24  a5 f3 ff ea                                      b #0x54adc0

; FUNCTION 0x0054df28, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZTv0_n16_NK6glitch3gui8CGUISkin19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUISkin::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0054df28  00 30 90 e5                                      ldr r3, [r0]
0054df2c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054df30  03 00 80 e0                                      add r0, r0, r3
0054df34  3e f3 ff ea                                      b #0x54ac34
