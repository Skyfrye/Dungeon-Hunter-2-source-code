; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a5df0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton13setDrawBorderEb
; demangled: glitch::gui::CGUIButton::setDrawBorder(bool)
; decoder-mode: arm
006a5df0  5b 11 c0 e5                                      strb r1, [r0, #0x15b]
006a5df4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a5df8, declared_size=48, range_size=48, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton13setSpriteBankEPNS0_14IGUISpriteBankE
; demangled: glitch::gui::CGUIButton::setSpriteBank(glitch::gui::IGUISpriteBank*)
; decoder-mode: arm
006a5df8  70 40 2d e9                                      push {r4, r5, r6, lr}
006a5dfc  00 40 51 e2                                      subs r4, r1, #0
006a5e00  04 30 94 15                                      ldrne r3, [r4, #4]
006a5e04  00 50 a0 e1                                      mov r5, r0
006a5e08  01 30 83 12                                      addne r3, r3, #1
006a5e0c  04 30 84 15                                      strne r3, [r4, #4]
006a5e10  60 01 90 e5                                      ldr r0, [r0, #0x160]
006a5e14  00 00 50 e3                                      cmp r0, #0
006a5e18  00 00 00 0a                                      beq #0x6a5e20
006a5e1c  d8 dd f1 eb                                      bl #0x31d584
006a5e20  60 41 85 e5                                      str r4, [r5, #0x160]
006a5e24  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a5e28, declared_size=104, range_size=104, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton9setSpriteENS0_17EGUI_BUTTON_STATEEiNS_5video6SColorEb
; demangled: glitch::gui::CGUIButton::setSprite(glitch::gui::EGUI_BUTTON_STATE, int, glitch::video::SColor, bool)
; decoder-mode: arm
006a5e28  f0 00 2d e9                                      push {r4, r5, r6, r7}
006a5e2c  60 c1 90 e5                                      ldr ip, [r0, #0x160]
006a5e30  08 d0 4d e2                                      sub sp, sp, #8
006a5e34  23 5c a0 e1                                      lsr r5, r3, #0x18
006a5e38  00 00 5c e3                                      cmp ip, #0
006a5e3c  53 44 e7 e7                                      ubfx r4, r3, #8, #8
006a5e40  73 c0 ef e6                                      uxtb ip, r3
006a5e44  18 60 dd e5                                      ldrb r6, [sp, #0x18]
006a5e48  53 38 e7 e7                                      ubfx r3, r3, #0x10, #8
006a5e4c  0a 00 00 0a                                      beq #0x6a5e7c
006a5e50  0c 70 a0 e3                                      mov r7, #0xc
006a5e54  97 01 20 e0                                      mla r0, r7, r1, r0
006a5e58  70 61 c0 e5                                      strb r6, [r0, #0x170]
006a5e5c  68 21 80 e5                                      str r2, [r0, #0x168]
006a5e60  6f 51 c0 e5                                      strb r5, [r0, #0x16f]
006a5e64  6e 31 c0 e5                                      strb r3, [r0, #0x16e]
006a5e68  6d 41 c0 e5                                      strb r4, [r0, #0x16d]
006a5e6c  6c c1 c0 e5                                      strb ip, [r0, #0x16c]
006a5e70  08 d0 8d e2                                      add sp, sp, #8
006a5e74  f0 00 bd e8                                      pop {r4, r5, r6, r7}
006a5e78  1e ff 2f e1                                      bx lr
006a5e7c  0c 30 a0 e3                                      mov r3, #0xc
006a5e80  93 01 20 e0                                      mla r0, r3, r1, r0
006a5e84  00 30 e0 e3                                      mvn r3, #0
006a5e88  68 31 80 e5                                      str r3, [r0, #0x168]
006a5e8c  f7 ff ff ea                                      b #0x6a5e70

; FUNCTION 0x006a5e90, declared_size=52, range_size=52, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton15setOverrideFontEPNS0_8IGUIFontE
; demangled: glitch::gui::CGUIButton::setOverrideFont(glitch::gui::IGUIFont*)
; decoder-mode: arm
006a5e90  70 40 2d e9                                      push {r4, r5, r6, lr}
006a5e94  00 40 a0 e1                                      mov r4, r0
006a5e98  64 01 90 e5                                      ldr r0, [r0, #0x164]
006a5e9c  01 50 a0 e1                                      mov r5, r1
006a5ea0  00 00 50 e3                                      cmp r0, #0
006a5ea4  00 00 00 0a                                      beq #0x6a5eac
006a5ea8  b5 dd f1 eb                                      bl #0x31d584
006a5eac  00 00 55 e3                                      cmp r5, #0
006a5eb0  64 51 84 e5                                      str r5, [r4, #0x164]
006a5eb4  04 30 95 15                                      ldrne r3, [r5, #4]
006a5eb8  01 30 83 12                                      addne r3, r3, #1
006a5ebc  04 30 85 15                                      strne r3, [r5, #4]
006a5ec0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a5ec4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton15setIsPushButtonEb
; demangled: glitch::gui::CGUIButton::setIsPushButton(bool)
; decoder-mode: arm
006a5ec4  59 11 c0 e5                                      strb r1, [r0, #0x159]
006a5ec8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a5ecc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZNK6glitch3gui10CGUIButton9isPressedEv
; demangled: glitch::gui::CGUIButton::isPressed() const
; decoder-mode: arm
006a5ecc  58 01 d0 e5                                      ldrb r0, [r0, #0x158]
006a5ed0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a5ed4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZNK6glitch3gui10CGUIButton12isPushButtonEv
; demangled: glitch::gui::CGUIButton::isPushButton() const
; decoder-mode: arm
006a5ed4  59 01 d0 e5                                      ldrb r0, [r0, #0x159]
006a5ed8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a5edc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton18setUseAlphaChannelEb
; demangled: glitch::gui::CGUIButton::setUseAlphaChannel(bool)
; decoder-mode: arm
006a5edc  5a 11 c0 e5                                      strb r1, [r0, #0x15a]
006a5ee0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a5ee4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZNK6glitch3gui10CGUIButton18isAlphaChannelUsedEv
; demangled: glitch::gui::CGUIButton::isAlphaChannelUsed() const
; decoder-mode: arm
006a5ee4  5a 01 d0 e5                                      ldrb r0, [r0, #0x15a]
006a5ee8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a5eec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZNK6glitch3gui10CGUIButton15isDrawingBorderEv
; demangled: glitch::gui::CGUIButton::isDrawingBorder() const
; decoder-mode: arm
006a5eec  5b 01 d0 e5                                      ldrb r0, [r0, #0x15b]
006a5ef0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a5f14, declared_size=40, range_size=40, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton10setPressedEb
; demangled: glitch::gui::CGUIButton::setPressed(bool)
; decoder-mode: arm
006a5f14  70 40 2d e9                                      push {r4, r5, r6, lr}
006a5f18  58 31 d0 e5                                      ldrb r3, [r0, #0x158]
006a5f1c  00 40 a0 e1                                      mov r4, r0
006a5f20  01 50 a0 e1                                      mov r5, r1
006a5f24  01 00 53 e1                                      cmp r3, r1
006a5f28  02 00 00 0a                                      beq #0x6a5f38
006a5f2c  ec 93 fd eb                                      bl #0x60aee4
006a5f30  58 51 c4 e5                                      strb r5, [r4, #0x158]
006a5f34  5c 01 84 e5                                      str r0, [r4, #0x15c]
006a5f38  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a63fc, declared_size=320, range_size=320, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButtonC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEb
; demangled: glitch::gui::CGUIButton::CGUIButton(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>, bool)
; decoder-mode: arm
006a63fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a6400  24 51 9f e5                                      ldr r5, [pc, #0x124]
006a6404  24 e1 9f e5                                      ldr lr, [pc, #0x124]
006a6408  24 c1 9f e5                                      ldr ip, [pc, #0x124]
006a640c  05 50 8f e0                                      add r5, pc, r5
006a6410  0e e0 95 e7                                      ldr lr, [r5, lr]
006a6414  0c c0 95 e7                                      ldr ip, [r5, ip]
006a6418  01 60 a0 e3                                      mov r6, #1
006a641c  24 70 9e e5                                      ldr r7, [lr, #0x24]
006a6420  08 c0 8c e2                                      add ip, ip, #8
006a6424  e0 61 80 e5                                      str r6, [r0, #0x1e0]
006a6428  d8 71 80 e5                                      str r7, [r0, #0x1d8]
006a642c  dc c1 80 e5                                      str ip, [r0, #0x1dc]
006a6430  1c d0 4d e2                                      sub sp, sp, #0x1c
006a6434  0c 80 17 e5                                      ldr r8, [r7, #-0xc]
006a6438  28 a0 9e e5                                      ldr sl, [lr, #0x28]
006a643c  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006a6440  76 7f 80 e2                                      add r7, r0, #0x1d8
006a6444  08 a0 87 e7                                      str sl, [r7, r8]
006a6448  0c 90 9c e5                                      ldr sb, [ip, #0xc]
006a644c  00 0d 9c e8                                      ldm ip, {r8, sl, fp}
006a6450  01 70 a0 e1                                      mov r7, r1
006a6454  02 c0 a0 e1                                      mov ip, r2
006a6458  04 10 8e e2                                      add r1, lr, #4
006a645c  00 30 8d e5                                      str r3, [sp]
006a6460  07 20 a0 e1                                      mov r2, r7
006a6464  0c 30 a0 e1                                      mov r3, ip
006a6468  08 c0 8d e2                                      add ip, sp, #8
006a646c  00 40 a0 e1                                      mov r4, r0
006a6470  04 c0 8d e5                                      str ip, [sp, #4]
006a6474  44 70 dd e5                                      ldrb r7, [sp, #0x44]
006a6478  08 80 8d e5                                      str r8, [sp, #8]
006a647c  0c a0 8d e5                                      str sl, [sp, #0xc]
006a6480  10 b0 8d e5                                      str fp, [sp, #0x10]
006a6484  14 90 8d e5                                      str sb, [sp, #0x14]
006a6488  2c ff ff eb                                      bl #0x6a6140
006a648c  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
006a6490  00 30 a0 e3                                      mov r3, #0
006a6494  00 20 e0 e3                                      mvn r2, #0
006a6498  01 10 95 e7                                      ldr r1, [r5, r1]
006a649c  d4 31 84 e5                                      str r3, [r4, #0x1d4]
006a64a0  9b 70 c4 e5                                      strb r7, [r4, #0x9b]
006a64a4  10 c0 81 e2                                      add ip, r1, #0x10
006a64a8  01 0c 81 e2                                      add r0, r1, #0x100
006a64ac  e0 10 81 e2                                      add r1, r1, #0xe0
006a64b0  dc 01 84 e5                                      str r0, [r4, #0x1dc]
006a64b4  00 c0 84 e5                                      str ip, [r4]
006a64b8  04 00 a0 e1                                      mov r0, r4
006a64bc  d8 11 84 e5                                      str r1, [r4, #0x1d8]
006a64c0  a4 21 84 e5                                      str r2, [r4, #0x1a4]
006a64c4  34 61 c4 e5                                      strb r6, [r4, #0x134]
006a64c8  58 31 c4 e5                                      strb r3, [r4, #0x158]
006a64cc  59 31 c4 e5                                      strb r3, [r4, #0x159]
006a64d0  5a 31 c4 e5                                      strb r3, [r4, #0x15a]
006a64d4  5b 61 c4 e5                                      strb r6, [r4, #0x15b]
006a64d8  5c 31 84 e5                                      str r3, [r4, #0x15c]
006a64dc  60 31 84 e5                                      str r3, [r4, #0x160]
006a64e0  64 31 84 e5                                      str r3, [r4, #0x164]
006a64e4  b0 31 84 e5                                      str r3, [r4, #0x1b0]
006a64e8  b4 31 84 e5                                      str r3, [r4, #0x1b4]
006a64ec  b8 31 84 e5                                      str r3, [r4, #0x1b8]
006a64f0  bc 31 84 e5                                      str r3, [r4, #0x1bc]
006a64f4  c0 31 84 e5                                      str r3, [r4, #0x1c0]
006a64f8  c4 31 84 e5                                      str r3, [r4, #0x1c4]
006a64fc  c8 31 84 e5                                      str r3, [r4, #0x1c8]
006a6500  cc 31 84 e5                                      str r3, [r4, #0x1cc]
006a6504  d0 31 84 e5                                      str r3, [r4, #0x1d0]
006a6508  68 21 84 e5                                      str r2, [r4, #0x168]
006a650c  74 21 84 e5                                      str r2, [r4, #0x174]
006a6510  80 21 84 e5                                      str r2, [r4, #0x180]
006a6514  8c 21 84 e5                                      str r2, [r4, #0x18c]
006a6518  98 21 84 e5                                      str r2, [r4, #0x198]
006a651c  db fe ff eb                                      bl #0x6a6090
006a6520  04 00 a0 e1                                      mov r0, r4
006a6524  1c d0 8d e2                                      add sp, sp, #0x1c
006a6528  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006a652c  84 e6 2e 00 d8 42 00 00 44 2b 00 00 9c 19 00 00  .byte 0x84, 0xe6, 0x2e, 0x00, 0xd8, 0x42, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x9c, 0x19, 0x00, 0x00

; FUNCTION 0x006a653c, declared_size=244, range_size=244, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButtonC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEb
; demangled: glitch::gui::CGUIButton::CGUIButton(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>, bool)
; decoder-mode: arm
006a653c  70 40 2d e9                                      push {r4, r5, r6, lr}
006a6540  18 d0 4d e2                                      sub sp, sp, #0x18
006a6544  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006a6548  01 50 a0 e1                                      mov r5, r1
006a654c  04 10 81 e2                                      add r1, r1, #4
006a6550  0c e0 9c e5                                      ldr lr, [ip, #0xc]
006a6554  00 60 9c e5                                      ldr r6, [ip]
006a6558  10 10 9c e9                                      ldmib ip, {r4, ip}
006a655c  08 60 8d e5                                      str r6, [sp, #8]
006a6560  0c 40 8d e5                                      str r4, [sp, #0xc]
006a6564  10 c0 8d e5                                      str ip, [sp, #0x10]
006a6568  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006a656c  00 40 a0 e1                                      mov r4, r0
006a6570  14 e0 8d e5                                      str lr, [sp, #0x14]
006a6574  00 c0 8d e5                                      str ip, [sp]
006a6578  08 c0 8d e2                                      add ip, sp, #8
006a657c  04 c0 8d e5                                      str ip, [sp, #4]
006a6580  30 60 dd e5                                      ldrb r6, [sp, #0x30]
006a6584  ed fe ff eb                                      bl #0x6a6140
006a6588  00 10 95 e5                                      ldr r1, [r5]
006a658c  00 30 a0 e3                                      mov r3, #0
006a6590  00 20 e0 e3                                      mvn r2, #0
006a6594  00 10 84 e5                                      str r1, [r4]
006a6598  0c c0 11 e5                                      ldr ip, [r1, #-0xc]
006a659c  1c e0 95 e5                                      ldr lr, [r5, #0x1c]
006a65a0  01 10 a0 e3                                      mov r1, #1
006a65a4  04 00 a0 e1                                      mov r0, r4
006a65a8  0c e0 84 e7                                      str lr, [r4, ip]
006a65ac  00 c0 94 e5                                      ldr ip, [r4]
006a65b0  20 e0 95 e5                                      ldr lr, [r5, #0x20]
006a65b4  10 c0 1c e5                                      ldr ip, [ip, #-0x10]
006a65b8  0c e0 84 e7                                      str lr, [r4, ip]
006a65bc  d4 31 84 e5                                      str r3, [r4, #0x1d4]
006a65c0  a4 21 84 e5                                      str r2, [r4, #0x1a4]
006a65c4  58 31 c4 e5                                      strb r3, [r4, #0x158]
006a65c8  59 31 c4 e5                                      strb r3, [r4, #0x159]
006a65cc  5a 31 c4 e5                                      strb r3, [r4, #0x15a]
006a65d0  5b 11 c4 e5                                      strb r1, [r4, #0x15b]
006a65d4  5c 31 84 e5                                      str r3, [r4, #0x15c]
006a65d8  60 31 84 e5                                      str r3, [r4, #0x160]
006a65dc  64 31 84 e5                                      str r3, [r4, #0x164]
006a65e0  b0 31 84 e5                                      str r3, [r4, #0x1b0]
006a65e4  b4 31 84 e5                                      str r3, [r4, #0x1b4]
006a65e8  b8 31 84 e5                                      str r3, [r4, #0x1b8]
006a65ec  bc 31 84 e5                                      str r3, [r4, #0x1bc]
006a65f0  c0 31 84 e5                                      str r3, [r4, #0x1c0]
006a65f4  c4 31 84 e5                                      str r3, [r4, #0x1c4]
006a65f8  c8 31 84 e5                                      str r3, [r4, #0x1c8]
006a65fc  cc 31 84 e5                                      str r3, [r4, #0x1cc]
006a6600  d0 31 84 e5                                      str r3, [r4, #0x1d0]
006a6604  68 21 84 e5                                      str r2, [r4, #0x168]
006a6608  74 21 84 e5                                      str r2, [r4, #0x174]
006a660c  80 21 84 e5                                      str r2, [r4, #0x180]
006a6610  8c 21 84 e5                                      str r2, [r4, #0x18c]
006a6614  98 21 84 e5                                      str r2, [r4, #0x198]
006a6618  9b 60 c4 e5                                      strb r6, [r4, #0x9b]
006a661c  34 11 c4 e5                                      strb r1, [r4, #0x134]
006a6620  9a fe ff eb                                      bl #0x6a6090
006a6624  04 00 a0 e1                                      mov r0, r4
006a6628  18 d0 8d e2                                      add sp, sp, #0x18
006a662c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a6630, declared_size=460, range_size=460, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZNK6glitch3gui10CGUIButton19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIButton::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006a6630  30 40 2d e9                                      push {r4, r5, lr}
006a6634  2c d0 4d e2                                      sub sp, sp, #0x2c
006a6638  00 50 a0 e1                                      mov r5, r0
006a663c  01 40 a0 e1                                      mov r4, r1
006a6640  9d 3a fa eb                                      bl #0x5350bc
006a6644  90 11 9f e5                                      ldr r1, [pc, #0x190]
006a6648  00 30 a0 e3                                      mov r3, #0
006a664c  00 c0 94 e5                                      ldr ip, [r4]
006a6650  04 00 a0 e1                                      mov r0, r4
006a6654  01 10 8f e0                                      add r1, pc, r1
006a6658  59 21 d5 e5                                      ldrb r2, [r5, #0x159]
006a665c  0f e0 a0 e1                                      mov lr, pc
006a6660  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006a6664  59 31 d5 e5                                      ldrb r3, [r5, #0x159]
006a6668  00 00 53 e3                                      cmp r3, #0
006a666c  51 00 00 1a                                      bne #0x6a67b8
006a6670  00 20 94 e5                                      ldr r2, [r4]
006a6674  b0 31 95 e5                                      ldr r3, [r5, #0x1b0]
006a6678  60 11 9f e5                                      ldr r1, [pc, #0x160]
006a667c  b0 c2 92 e5                                      ldr ip, [r2, #0x2b0]
006a6680  00 00 53 e3                                      cmp r3, #0
006a6684  24 30 8d e5                                      str r3, [sp, #0x24]
006a6688  04 20 93 15                                      ldrne r2, [r3, #4]
006a668c  04 00 a0 e1                                      mov r0, r4
006a6690  01 10 8f e0                                      add r1, pc, r1
006a6694  01 20 82 12                                      addne r2, r2, #1
006a6698  04 20 83 15                                      strne r2, [r3, #4]
006a669c  24 20 8d e2                                      add r2, sp, #0x24
006a66a0  00 30 a0 e3                                      mov r3, #0
006a66a4  3c ff 2f e1                                      blx ip
006a66a8  24 00 9d e5                                      ldr r0, [sp, #0x24]
006a66ac  00 00 50 e3                                      cmp r0, #0
006a66b0  00 00 00 0a                                      beq #0x6a66b8
006a66b4  b2 db f1 eb                                      bl #0x31d584
006a66b8  00 c0 94 e5                                      ldr ip, [r4]
006a66bc  6e 0f 85 e2                                      add r0, r5, #0x1b8
006a66c0  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
006a66c4  f0 c1 9c e5                                      ldr ip, [ip, #0x1f0]
006a66c8  14 10 8d e5                                      str r1, [sp, #0x14]
006a66cc  10 11 9f e5                                      ldr r1, [pc, #0x110]
006a66d0  10 00 8d e5                                      str r0, [sp, #0x10]
006a66d4  18 20 8d e5                                      str r2, [sp, #0x18]
006a66d8  1c 30 8d e5                                      str r3, [sp, #0x1c]
006a66dc  01 10 8f e0                                      add r1, pc, r1
006a66e0  04 00 a0 e1                                      mov r0, r4
006a66e4  10 20 8d e2                                      add r2, sp, #0x10
006a66e8  00 30 a0 e3                                      mov r3, #0
006a66ec  3c ff 2f e1                                      blx ip
006a66f0  00 20 94 e5                                      ldr r2, [r4]
006a66f4  b4 31 95 e5                                      ldr r3, [r5, #0x1b4]
006a66f8  e8 10 9f e5                                      ldr r1, [pc, #0xe8]
006a66fc  b0 c2 92 e5                                      ldr ip, [r2, #0x2b0]
006a6700  00 00 53 e3                                      cmp r3, #0
006a6704  20 30 8d e5                                      str r3, [sp, #0x20]
006a6708  04 20 93 15                                      ldrne r2, [r3, #4]
006a670c  04 00 a0 e1                                      mov r0, r4
006a6710  01 10 8f e0                                      add r1, pc, r1
006a6714  01 20 82 12                                      addne r2, r2, #1
006a6718  04 20 83 15                                      strne r2, [r3, #4]
006a671c  20 20 8d e2                                      add r2, sp, #0x20
006a6720  00 30 a0 e3                                      mov r3, #0
006a6724  3c ff 2f e1                                      blx ip
006a6728  20 00 9d e5                                      ldr r0, [sp, #0x20]
006a672c  00 00 50 e3                                      cmp r0, #0
006a6730  00 00 00 0a                                      beq #0x6a6738
006a6734  92 db f1 eb                                      bl #0x31d584
006a6738  00 c0 94 e5                                      ldr ip, [r4]
006a673c  72 0f 85 e2                                      add r0, r5, #0x1c8
006a6740  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
006a6744  f0 c1 9c e5                                      ldr ip, [ip, #0x1f0]
006a6748  04 10 8d e5                                      str r1, [sp, #4]
006a674c  98 10 9f e5                                      ldr r1, [pc, #0x98]
006a6750  00 00 8d e5                                      str r0, [sp]
006a6754  08 20 8d e5                                      str r2, [sp, #8]
006a6758  0c 30 8d e5                                      str r3, [sp, #0xc]
006a675c  04 00 a0 e1                                      mov r0, r4
006a6760  0d 20 a0 e1                                      mov r2, sp
006a6764  01 10 8f e0                                      add r1, pc, r1
006a6768  00 30 a0 e3                                      mov r3, #0
006a676c  3c ff 2f e1                                      blx ip
006a6770  78 10 9f e5                                      ldr r1, [pc, #0x78]
006a6774  04 00 a0 e1                                      mov r0, r4
006a6778  5b 21 d5 e5                                      ldrb r2, [r5, #0x15b]
006a677c  00 c0 94 e5                                      ldr ip, [r4]
006a6780  01 10 8f e0                                      add r1, pc, r1
006a6784  00 30 a0 e3                                      mov r3, #0
006a6788  0f e0 a0 e1                                      mov lr, pc
006a678c  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006a6790  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
006a6794  04 00 a0 e1                                      mov r0, r4
006a6798  5a 21 d5 e5                                      ldrb r2, [r5, #0x15a]
006a679c  01 10 8f e0                                      add r1, pc, r1
006a67a0  00 c0 94 e5                                      ldr ip, [r4]
006a67a4  00 30 a0 e3                                      mov r3, #0
006a67a8  0f e0 a0 e1                                      mov lr, pc
006a67ac  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006a67b0  2c d0 8d e2                                      add sp, sp, #0x2c
006a67b4  30 80 bd e8                                      pop {r4, r5, pc}
006a67b8  38 10 9f e5                                      ldr r1, [pc, #0x38]
006a67bc  00 c0 94 e5                                      ldr ip, [r4]
006a67c0  04 00 a0 e1                                      mov r0, r4
006a67c4  01 10 8f e0                                      add r1, pc, r1
006a67c8  58 21 d5 e5                                      ldrb r2, [r5, #0x158]
006a67cc  00 30 a0 e3                                      mov r3, #0
006a67d0  0f e0 a0 e1                                      mov lr, pc
006a67d4  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006a67d8  a4 ff ff ea                                      b #0x6a6670
; mapping-symbol data/literal pool
006a67dc  44 4a 24 00 20 4a 24 00 dc 49 24 00 b8 49 24 00  .byte 0x44, 0x4a, 0x24, 0x00, 0x20, 0x4a, 0x24, 0x00, 0xdc, 0x49, 0x24, 0x00, 0xb8, 0x49, 0x24, 0x00
006a67ec  74 49 24 00 68 7f 23 00 84 7c 23 00 e4 48 24 00  .byte 0x74, 0x49, 0x24, 0x00, 0x68, 0x7f, 0x23, 0x00, 0x84, 0x7c, 0x23, 0x00, 0xe4, 0x48, 0x24, 0x00

; FUNCTION 0x006a67fc, declared_size=128, range_size=128, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton8setImageERKN5boost13intrusive_ptrINS_5video8ITextureEEERKNS_4core4rectIiEE
; demangled: glitch::gui::CGUIButton::setImage(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::rect<int> const&)
; decoder-mode: arm
006a67fc  70 40 2d e9                                      push {r4, r5, r6, lr}
006a6800  00 30 91 e5                                      ldr r3, [r1]
006a6804  02 50 a0 e1                                      mov r5, r2
006a6808  00 40 a0 e1                                      mov r4, r0
006a680c  00 00 53 e3                                      cmp r3, #0
006a6810  04 20 93 15                                      ldrne r2, [r3, #4]
006a6814  01 20 82 12                                      addne r2, r2, #1
006a6818  04 20 83 15                                      strne r2, [r3, #4]
006a681c  b0 01 90 e5                                      ldr r0, [r0, #0x1b0]
006a6820  b0 31 84 e5                                      str r3, [r4, #0x1b0]
006a6824  00 00 50 e3                                      cmp r0, #0
006a6828  00 00 00 0a                                      beq #0x6a6830
006a682c  54 db f1 eb                                      bl #0x31d584
006a6830  00 30 95 e5                                      ldr r3, [r5]
006a6834  b4 21 94 e5                                      ldr r2, [r4, #0x1b4]
006a6838  b8 31 84 e5                                      str r3, [r4, #0x1b8]
006a683c  04 30 95 e5                                      ldr r3, [r5, #4]
006a6840  00 00 52 e3                                      cmp r2, #0
006a6844  bc 31 84 e5                                      str r3, [r4, #0x1bc]
006a6848  08 30 95 e5                                      ldr r3, [r5, #8]
006a684c  c0 31 84 e5                                      str r3, [r4, #0x1c0]
006a6850  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006a6854  c4 31 84 e5                                      str r3, [r4, #0x1c4]
006a6858  00 00 00 0a                                      beq #0x6a6860
006a685c  70 80 bd e8                                      pop {r4, r5, r6, pc}
006a6860  04 10 a0 e1                                      mov r1, r4
006a6864  b0 31 91 e4                                      ldr r3, [r1], #0x1b0
006a6868  04 00 a0 e1                                      mov r0, r4
006a686c  05 20 a0 e1                                      mov r2, r5
006a6870  0f e0 a0 e1                                      mov lr, pc
006a6874  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
006a6878  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a687c, declared_size=88, range_size=88, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton15setPressedImageERKN5boost13intrusive_ptrINS_5video8ITextureEEERKNS_4core4rectIiEE
; demangled: glitch::gui::CGUIButton::setPressedImage(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::rect<int> const&)
; decoder-mode: arm
006a687c  70 40 2d e9                                      push {r4, r5, r6, lr}
006a6880  00 30 91 e5                                      ldr r3, [r1]
006a6884  02 50 a0 e1                                      mov r5, r2
006a6888  00 40 a0 e1                                      mov r4, r0
006a688c  00 00 53 e3                                      cmp r3, #0
006a6890  04 20 93 15                                      ldrne r2, [r3, #4]
006a6894  01 20 82 12                                      addne r2, r2, #1
006a6898  04 20 83 15                                      strne r2, [r3, #4]
006a689c  b4 01 90 e5                                      ldr r0, [r0, #0x1b4]
006a68a0  b4 31 84 e5                                      str r3, [r4, #0x1b4]
006a68a4  00 00 50 e3                                      cmp r0, #0
006a68a8  00 00 00 0a                                      beq #0x6a68b0
006a68ac  34 db f1 eb                                      bl #0x31d584
006a68b0  00 30 95 e5                                      ldr r3, [r5]
006a68b4  c8 31 84 e5                                      str r3, [r4, #0x1c8]
006a68b8  04 30 95 e5                                      ldr r3, [r5, #4]
006a68bc  cc 31 84 e5                                      str r3, [r4, #0x1cc]
006a68c0  08 30 95 e5                                      ldr r3, [r5, #8]
006a68c4  d0 31 84 e5                                      str r3, [r4, #0x1d0]
006a68c8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006a68cc  d4 31 84 e5                                      str r3, [r4, #0x1d4]
006a68d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a68d4, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton8setImageERKN5boost13intrusive_ptrINS_5video8ITextureEEE
; demangled: glitch::gui::CGUIButton::setImage(boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
006a68d4  70 40 2d e9                                      push {r4, r5, r6, lr}
006a68d8  00 30 91 e5                                      ldr r3, [r1]
006a68dc  00 40 a0 e1                                      mov r4, r0
006a68e0  01 50 a0 e1                                      mov r5, r1
006a68e4  00 00 53 e3                                      cmp r3, #0
006a68e8  04 20 93 15                                      ldrne r2, [r3, #4]
006a68ec  01 20 82 12                                      addne r2, r2, #1
006a68f0  04 20 83 15                                      strne r2, [r3, #4]
006a68f4  b0 01 90 e5                                      ldr r0, [r0, #0x1b0]
006a68f8  b0 31 84 e5                                      str r3, [r4, #0x1b0]
006a68fc  00 00 50 e3                                      cmp r0, #0
006a6900  00 00 00 0a                                      beq #0x6a6908
006a6904  1e db f1 eb                                      bl #0x31d584
006a6908  00 30 95 e5                                      ldr r3, [r5]
006a690c  00 00 53 e3                                      cmp r3, #0
006a6910  06 00 00 0a                                      beq #0x6a6930
006a6914  24 20 93 e5                                      ldr r2, [r3, #0x24]
006a6918  20 10 93 e5                                      ldr r1, [r3, #0x20]
006a691c  00 30 a0 e3                                      mov r3, #0
006a6920  bc 31 84 e5                                      str r3, [r4, #0x1bc]
006a6924  c0 11 84 e5                                      str r1, [r4, #0x1c0]
006a6928  c4 21 84 e5                                      str r2, [r4, #0x1c4]
006a692c  b8 31 84 e5                                      str r3, [r4, #0x1b8]
006a6930  b4 31 94 e5                                      ldr r3, [r4, #0x1b4]
006a6934  00 00 53 e3                                      cmp r3, #0
006a6938  00 00 00 0a                                      beq #0x6a6940
006a693c  70 80 bd e8                                      pop {r4, r5, r6, pc}
006a6940  04 10 a0 e1                                      mov r1, r4
006a6944  b0 31 91 e4                                      ldr r3, [r1], #0x1b0
006a6948  04 00 a0 e1                                      mov r0, r4
006a694c  0f e0 a0 e1                                      mov lr, pc
006a6950  88 f0 93 e5                                      ldr pc, [r3, #0x88]
006a6954  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a6958, declared_size=96, range_size=96, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton15setPressedImageERKN5boost13intrusive_ptrINS_5video8ITextureEEE
; demangled: glitch::gui::CGUIButton::setPressedImage(boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
006a6958  70 40 2d e9                                      push {r4, r5, r6, lr}
006a695c  00 30 91 e5                                      ldr r3, [r1]
006a6960  00 40 a0 e1                                      mov r4, r0
006a6964  01 50 a0 e1                                      mov r5, r1
006a6968  00 00 53 e3                                      cmp r3, #0
006a696c  04 20 93 15                                      ldrne r2, [r3, #4]
006a6970  01 20 82 12                                      addne r2, r2, #1
006a6974  04 20 83 15                                      strne r2, [r3, #4]
006a6978  b4 01 90 e5                                      ldr r0, [r0, #0x1b4]
006a697c  b4 31 84 e5                                      str r3, [r4, #0x1b4]
006a6980  00 00 50 e3                                      cmp r0, #0
006a6984  00 00 00 0a                                      beq #0x6a698c
006a6988  fd da f1 eb                                      bl #0x31d584
006a698c  00 30 95 e5                                      ldr r3, [r5]
006a6990  00 00 53 e3                                      cmp r3, #0
006a6994  06 00 00 0a                                      beq #0x6a69b4
006a6998  24 10 93 e5                                      ldr r1, [r3, #0x24]
006a699c  20 20 93 e5                                      ldr r2, [r3, #0x20]
006a69a0  00 30 a0 e3                                      mov r3, #0
006a69a4  d4 11 84 e5                                      str r1, [r4, #0x1d4]
006a69a8  cc 31 84 e5                                      str r3, [r4, #0x1cc]
006a69ac  d0 21 84 e5                                      str r2, [r4, #0x1d0]
006a69b0  c8 31 84 e5                                      str r3, [r4, #0x1c8]
006a69b4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a6a2c, declared_size=188, range_size=188, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButtonD1Ev
; demangled: glitch::gui::CGUIButton::~CGUIButton()
; decoder-mode: arm
006a6a2c  70 40 2d e9                                      push {r4, r5, r6, lr}
006a6a30  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
006a6a34  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
006a6a38  00 40 a0 e1                                      mov r4, r0
006a6a3c  05 50 8f e0                                      add r5, pc, r5
006a6a40  64 01 90 e5                                      ldr r0, [r0, #0x164]
006a6a44  03 30 95 e7                                      ldr r3, [r5, r3]
006a6a48  00 00 50 e3                                      cmp r0, #0
006a6a4c  01 2c 83 e2                                      add r2, r3, #0x100
006a6a50  10 10 83 e2                                      add r1, r3, #0x10
006a6a54  e0 30 83 e2                                      add r3, r3, #0xe0
006a6a58  00 10 84 e5                                      str r1, [r4]
006a6a5c  d8 31 84 e5                                      str r3, [r4, #0x1d8]
006a6a60  dc 21 84 e5                                      str r2, [r4, #0x1dc]
006a6a64  00 00 00 0a                                      beq #0x6a6a6c
006a6a68  c5 da f1 eb                                      bl #0x31d584
006a6a6c  60 01 94 e5                                      ldr r0, [r4, #0x160]
006a6a70  00 00 50 e3                                      cmp r0, #0
006a6a74  00 00 00 0a                                      beq #0x6a6a7c
006a6a78  c1 da f1 eb                                      bl #0x31d584
006a6a7c  b4 01 94 e5                                      ldr r0, [r4, #0x1b4]
006a6a80  00 00 50 e3                                      cmp r0, #0
006a6a84  00 00 00 0a                                      beq #0x6a6a8c
006a6a88  bd da f1 eb                                      bl #0x31d584
006a6a8c  b0 01 94 e5                                      ldr r0, [r4, #0x1b0]
006a6a90  00 00 50 e3                                      cmp r0, #0
006a6a94  00 00 00 0a                                      beq #0x6a6a9c
006a6a98  b9 da f1 eb                                      bl #0x31d584
006a6a9c  40 30 9f e5                                      ldr r3, [pc, #0x40]
006a6aa0  04 00 a0 e1                                      mov r0, r4
006a6aa4  03 10 95 e7                                      ldr r1, [r5, r3]
006a6aa8  04 30 91 e5                                      ldr r3, [r1, #4]
006a6aac  14 c0 91 e5                                      ldr ip, [r1, #0x14]
006a6ab0  18 20 91 e5                                      ldr r2, [r1, #0x18]
006a6ab4  00 30 84 e5                                      str r3, [r4]
006a6ab8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a6abc  08 10 81 e2                                      add r1, r1, #8
006a6ac0  03 c0 84 e7                                      str ip, [r4, r3]
006a6ac4  00 30 94 e5                                      ldr r3, [r4]
006a6ac8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006a6acc  03 20 84 e7                                      str r2, [r4, r3]
006a6ad0  52 49 fa eb                                      bl #0x539020
006a6ad4  04 00 a0 e1                                      mov r0, r4
006a6ad8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006a6adc  54 e0 2e 00 9c 19 00 00 d8 42 00 00              .byte 0x54, 0xe0, 0x2e, 0x00, 0x9c, 0x19, 0x00, 0x00, 0xd8, 0x42, 0x00, 0x00

; FUNCTION 0x006a6ae8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButtonD0Ev
; demangled: glitch::gui::CGUIButton::~CGUIButton()
; decoder-mode: arm
006a6ae8  10 40 2d e9                                      push {r4, lr}
006a6aec  00 40 a0 e1                                      mov r4, r0
006a6af0  cd ff ff eb                                      bl #0x6a6a2c
006a6af4  04 00 a0 e1                                      mov r0, r4
006a6af8  ec 9d f1 eb                                      bl #0x30e2b0
006a6afc  04 00 a0 e1                                      mov r0, r4
006a6b00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006a6b04, declared_size=172, range_size=172, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButtonD2Ev
; demangled: glitch::gui::CGUIButton::~CGUIButton()
; decoder-mode: arm
006a6b04  70 40 2d e9                                      push {r4, r5, r6, lr}
006a6b08  00 30 91 e5                                      ldr r3, [r1]
006a6b0c  00 40 a0 e1                                      mov r4, r0
006a6b10  01 50 a0 e1                                      mov r5, r1
006a6b14  00 30 80 e5                                      str r3, [r0]
006a6b18  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a6b1c  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
006a6b20  03 20 80 e7                                      str r2, [r0, r3]
006a6b24  00 30 90 e5                                      ldr r3, [r0]
006a6b28  20 20 91 e5                                      ldr r2, [r1, #0x20]
006a6b2c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006a6b30  03 20 80 e7                                      str r2, [r0, r3]
006a6b34  64 01 90 e5                                      ldr r0, [r0, #0x164]
006a6b38  00 00 50 e3                                      cmp r0, #0
006a6b3c  00 00 00 0a                                      beq #0x6a6b44
006a6b40  8f da f1 eb                                      bl #0x31d584
006a6b44  60 01 94 e5                                      ldr r0, [r4, #0x160]
006a6b48  00 00 50 e3                                      cmp r0, #0
006a6b4c  00 00 00 0a                                      beq #0x6a6b54
006a6b50  8b da f1 eb                                      bl #0x31d584
006a6b54  b4 01 94 e5                                      ldr r0, [r4, #0x1b4]
006a6b58  00 00 50 e3                                      cmp r0, #0
006a6b5c  00 00 00 0a                                      beq #0x6a6b64
006a6b60  87 da f1 eb                                      bl #0x31d584
006a6b64  b0 01 94 e5                                      ldr r0, [r4, #0x1b0]
006a6b68  00 00 50 e3                                      cmp r0, #0
006a6b6c  00 00 00 0a                                      beq #0x6a6b74
006a6b70  83 da f1 eb                                      bl #0x31d584
006a6b74  04 30 95 e5                                      ldr r3, [r5, #4]
006a6b78  04 50 85 e2                                      add r5, r5, #4
006a6b7c  04 10 85 e2                                      add r1, r5, #4
006a6b80  00 30 84 e5                                      str r3, [r4]
006a6b84  10 20 95 e5                                      ldr r2, [r5, #0x10]
006a6b88  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a6b8c  04 00 a0 e1                                      mov r0, r4
006a6b90  03 20 84 e7                                      str r2, [r4, r3]
006a6b94  00 30 94 e5                                      ldr r3, [r4]
006a6b98  14 20 95 e5                                      ldr r2, [r5, #0x14]
006a6b9c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006a6ba0  03 20 84 e7                                      str r2, [r4, r3]
006a6ba4  1d 49 fa eb                                      bl #0x539020
006a6ba8  04 00 a0 e1                                      mov r0, r4
006a6bac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a6bb0, declared_size=640, range_size=640, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIButton::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006a6bb0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a6bb4  30 d0 4d e2                                      sub sp, sp, #0x30
006a6bb8  01 40 a0 e1                                      mov r4, r1
006a6bbc  00 50 a0 e1                                      mov r5, r0
006a6bc0  1c 4b fa eb                                      bl #0x539838
006a6bc4  3c 12 9f e5                                      ldr r1, [pc, #0x23c]
006a6bc8  00 30 94 e5                                      ldr r3, [r4]
006a6bcc  04 00 a0 e1                                      mov r0, r4
006a6bd0  01 10 8f e0                                      add r1, pc, r1
006a6bd4  0f e0 a0 e1                                      mov lr, pc
006a6bd8  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006a6bdc  00 00 50 e3                                      cmp r0, #0
006a6be0  59 01 c5 e5                                      strb r0, [r5, #0x159]
006a6be4  80 00 00 1a                                      bne #0x6a6dec
006a6be8  1c 22 9f e5                                      ldr r2, [pc, #0x21c]
006a6bec  58 01 c5 e5                                      strb r0, [r5, #0x158]
006a6bf0  10 60 8d e2                                      add r6, sp, #0x10
006a6bf4  02 20 8f e0                                      add r2, pc, r2
006a6bf8  00 30 94 e5                                      ldr r3, [r4]
006a6bfc  06 00 a0 e1                                      mov r0, r6
006a6c00  04 10 a0 e1                                      mov r1, r4
006a6c04  0f e0 a0 e1                                      mov lr, pc
006a6c08  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
006a6c0c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006a6c10  18 20 9d e5                                      ldr r2, [sp, #0x18]
006a6c14  03 00 52 e1                                      cmp r2, r3
006a6c18  51 00 00 ba                                      blt #0x6a6d64
006a6c1c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006a6c20  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006a6c24  03 00 52 e1                                      cmp r2, r3
006a6c28  4d 00 00 ba                                      blt #0x6a6d64
006a6c2c  dc 21 9f e5                                      ldr r2, [pc, #0x1dc]
006a6c30  00 c0 95 e5                                      ldr ip, [r5]
006a6c34  2c 70 8d e2                                      add r7, sp, #0x2c
006a6c38  02 20 8f e0                                      add r2, pc, r2
006a6c3c  00 30 94 e5                                      ldr r3, [r4]
006a6c40  07 00 a0 e1                                      mov r0, r7
006a6c44  04 10 a0 e1                                      mov r1, r4
006a6c48  84 80 9c e5                                      ldr r8, [ip, #0x84]
006a6c4c  0f e0 a0 e1                                      mov lr, pc
006a6c50  bc f2 93 e5                                      ldr pc, [r3, #0x2bc]
006a6c54  05 00 a0 e1                                      mov r0, r5
006a6c58  07 10 a0 e1                                      mov r1, r7
006a6c5c  06 20 a0 e1                                      mov r2, r6
006a6c60  38 ff 2f e1                                      blx r8
006a6c64  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006a6c68  00 00 50 e3                                      cmp r0, #0
006a6c6c  00 00 00 0a                                      beq #0x6a6c74
006a6c70  43 da f1 eb                                      bl #0x31d584
006a6c74  98 21 9f e5                                      ldr r2, [pc, #0x198]
006a6c78  00 30 94 e5                                      ldr r3, [r4]
006a6c7c  0d 00 a0 e1                                      mov r0, sp
006a6c80  02 20 8f e0                                      add r2, pc, r2
006a6c84  04 10 a0 e1                                      mov r1, r4
006a6c88  0f e0 a0 e1                                      mov lr, pc
006a6c8c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
006a6c90  00 20 9d e5                                      ldr r2, [sp]
006a6c94  09 00 9d e9                                      ldmib sp, {r0, r3}
006a6c98  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006a6c9c  03 00 52 e1                                      cmp r2, r3
006a6ca0  10 20 8d e5                                      str r2, [sp, #0x10]
006a6ca4  14 00 8d e5                                      str r0, [sp, #0x14]
006a6ca8  18 30 8d e5                                      str r3, [sp, #0x18]
006a6cac  1c 10 8d e5                                      str r1, [sp, #0x1c]
006a6cb0  3c 00 00 ca                                      bgt #0x6a6da8
006a6cb4  01 00 50 e1                                      cmp r0, r1
006a6cb8  3a 00 00 ca                                      bgt #0x6a6da8
006a6cbc  54 21 9f e5                                      ldr r2, [pc, #0x154]
006a6cc0  00 c0 95 e5                                      ldr ip, [r5]
006a6cc4  24 70 8d e2                                      add r7, sp, #0x24
006a6cc8  02 20 8f e0                                      add r2, pc, r2
006a6ccc  00 30 94 e5                                      ldr r3, [r4]
006a6cd0  07 00 a0 e1                                      mov r0, r7
006a6cd4  04 10 a0 e1                                      mov r1, r4
006a6cd8  8c 80 9c e5                                      ldr r8, [ip, #0x8c]
006a6cdc  0f e0 a0 e1                                      mov lr, pc
006a6ce0  bc f2 93 e5                                      ldr pc, [r3, #0x2bc]
006a6ce4  05 00 a0 e1                                      mov r0, r5
006a6ce8  07 10 a0 e1                                      mov r1, r7
006a6cec  06 20 a0 e1                                      mov r2, r6
006a6cf0  38 ff 2f e1                                      blx r8
006a6cf4  24 00 9d e5                                      ldr r0, [sp, #0x24]
006a6cf8  00 00 50 e3                                      cmp r0, #0
006a6cfc  00 00 00 0a                                      beq #0x6a6d04
006a6d00  1f da f1 eb                                      bl #0x31d584
006a6d04  10 11 9f e5                                      ldr r1, [pc, #0x110]
006a6d08  00 20 95 e5                                      ldr r2, [r5]
006a6d0c  00 30 94 e5                                      ldr r3, [r4]
006a6d10  01 10 8f e0                                      add r1, pc, r1
006a6d14  04 00 a0 e1                                      mov r0, r4
006a6d18  b0 60 92 e5                                      ldr r6, [r2, #0xb0]
006a6d1c  0f e0 a0 e1                                      mov lr, pc
006a6d20  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006a6d24  00 10 a0 e1                                      mov r1, r0
006a6d28  05 00 a0 e1                                      mov r0, r5
006a6d2c  36 ff 2f e1                                      blx r6
006a6d30  e8 10 9f e5                                      ldr r1, [pc, #0xe8]
006a6d34  00 30 94 e5                                      ldr r3, [r4]
006a6d38  04 00 a0 e1                                      mov r0, r4
006a6d3c  01 10 8f e0                                      add r1, pc, r1
006a6d40  0f e0 a0 e1                                      mov lr, pc
006a6d44  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006a6d48  00 30 95 e5                                      ldr r3, [r5]
006a6d4c  5a 01 c5 e5                                      strb r0, [r5, #0x15a]
006a6d50  05 00 a0 e1                                      mov r0, r5
006a6d54  0f e0 a0 e1                                      mov lr, pc
006a6d58  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006a6d5c  30 d0 8d e2                                      add sp, sp, #0x30
006a6d60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a6d64  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
006a6d68  00 c0 95 e5                                      ldr ip, [r5]
006a6d6c  28 70 8d e2                                      add r7, sp, #0x28
006a6d70  02 20 8f e0                                      add r2, pc, r2
006a6d74  00 30 94 e5                                      ldr r3, [r4]
006a6d78  07 00 a0 e1                                      mov r0, r7
006a6d7c  04 10 a0 e1                                      mov r1, r4
006a6d80  80 80 9c e5                                      ldr r8, [ip, #0x80]
006a6d84  0f e0 a0 e1                                      mov lr, pc
006a6d88  bc f2 93 e5                                      ldr pc, [r3, #0x2bc]
006a6d8c  05 00 a0 e1                                      mov r0, r5
006a6d90  07 10 a0 e1                                      mov r1, r7
006a6d94  38 ff 2f e1                                      blx r8
006a6d98  28 00 9d e5                                      ldr r0, [sp, #0x28]
006a6d9c  00 00 50 e3                                      cmp r0, #0
006a6da0  b2 ff ff 1a                                      bne #0x6a6c70
006a6da4  b2 ff ff ea                                      b #0x6a6c74
006a6da8  78 20 9f e5                                      ldr r2, [pc, #0x78]
006a6dac  00 c0 95 e5                                      ldr ip, [r5]
006a6db0  20 60 8d e2                                      add r6, sp, #0x20
006a6db4  02 20 8f e0                                      add r2, pc, r2
006a6db8  00 30 94 e5                                      ldr r3, [r4]
006a6dbc  06 00 a0 e1                                      mov r0, r6
006a6dc0  04 10 a0 e1                                      mov r1, r4
006a6dc4  88 70 9c e5                                      ldr r7, [ip, #0x88]
006a6dc8  0f e0 a0 e1                                      mov lr, pc
006a6dcc  bc f2 93 e5                                      ldr pc, [r3, #0x2bc]
006a6dd0  05 00 a0 e1                                      mov r0, r5
006a6dd4  06 10 a0 e1                                      mov r1, r6
006a6dd8  37 ff 2f e1                                      blx r7
006a6ddc  20 00 9d e5                                      ldr r0, [sp, #0x20]
006a6de0  00 00 50 e3                                      cmp r0, #0
006a6de4  c5 ff ff 1a                                      bne #0x6a6d00
006a6de8  c5 ff ff ea                                      b #0x6a6d04
006a6dec  38 10 9f e5                                      ldr r1, [pc, #0x38]
006a6df0  00 30 94 e5                                      ldr r3, [r4]
006a6df4  04 00 a0 e1                                      mov r0, r4
006a6df8  01 10 8f e0                                      add r1, pc, r1
006a6dfc  0f e0 a0 e1                                      mov lr, pc
006a6e00  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006a6e04  77 ff ff ea                                      b #0x6a6be8
; mapping-symbol data/literal pool
006a6e08  c8 44 24 00 c4 44 24 00 78 44 24 00 58 44 24 00  .byte 0xc8, 0x44, 0x24, 0x00, 0xc4, 0x44, 0x24, 0x00, 0x78, 0x44, 0x24, 0x00, 0x58, 0x44, 0x24, 0x00
006a6e18  00 44 24 00 d8 79 23 00 e4 76 23 00 40 43 24 00  .byte 0x00, 0x44, 0x24, 0x00, 0xd8, 0x79, 0x23, 0x00, 0xe4, 0x76, 0x23, 0x00, 0x40, 0x43, 0x24, 0x00
006a6e28  14 43 24 00 b0 42 24 00                          .byte 0x14, 0x43, 0x24, 0x00, 0xb0, 0x42, 0x24, 0x00

; FUNCTION 0x006a6eac, declared_size=888, range_size=888, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIButton::onEvent(glitch::SEvent const&)
; decoder-mode: arm
006a6eac  30 40 2d e9                                      push {r4, r5, lr}
006a6eb0  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
006a6eb4  34 d0 4d e2                                      sub sp, sp, #0x34
006a6eb8  00 40 a0 e1                                      mov r4, r0
006a6ebc  00 00 53 e3                                      cmp r3, #0
006a6ec0  01 50 a0 e1                                      mov r5, r1
006a6ec4  10 00 00 0a                                      beq #0x6a6f0c
006a6ec8  00 30 91 e5                                      ldr r3, [r1]
006a6ecc  01 00 53 e3                                      cmp r3, #1
006a6ed0  57 00 00 0a                                      beq #0x6a7034
006a6ed4  02 00 53 e3                                      cmp r3, #2
006a6ed8  1d 00 00 0a                                      beq #0x6a6f54
006a6edc  00 00 53 e3                                      cmp r3, #0
006a6ee0  0e 00 00 0a                                      beq #0x6a6f20
006a6ee4  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a6ee8  00 00 53 e3                                      cmp r3, #0
006a6eec  09 00 00 0a                                      beq #0x6a6f18
006a6ef0  03 00 a0 e1                                      mov r0, r3
006a6ef4  05 10 a0 e1                                      mov r1, r5
006a6ef8  00 30 93 e5                                      ldr r3, [r3]
006a6efc  0f e0 a0 e1                                      mov lr, pc
006a6f00  08 f0 93 e5                                      ldr pc, [r3, #8]
006a6f04  34 d0 8d e2                                      add sp, sp, #0x34
006a6f08  30 80 bd e8                                      pop {r4, r5, pc}
006a6f0c  24 30 90 e5                                      ldr r3, [r0, #0x24]
006a6f10  00 00 53 e3                                      cmp r3, #0
006a6f14  26 00 00 1a                                      bne #0x6a6fb4
006a6f18  03 00 a0 e1                                      mov r0, r3
006a6f1c  f8 ff ff ea                                      b #0x6a6f04
006a6f20  10 30 91 e5                                      ldr r3, [r1, #0x10]
006a6f24  00 00 53 e3                                      cmp r3, #0
006a6f28  ed ff ff 1a                                      bne #0x6a6ee4
006a6f2c  08 30 91 e5                                      ldr r3, [r1, #8]
006a6f30  00 00 53 e1                                      cmp r3, r0
006a6f34  ea ff ff 1a                                      bne #0x6a6ee4
006a6f38  59 11 d0 e5                                      ldrb r1, [r0, #0x159]
006a6f3c  00 00 51 e3                                      cmp r1, #0
006a6f40  e7 ff ff 1a                                      bne #0x6a6ee4
006a6f44  00 30 90 e5                                      ldr r3, [r0]
006a6f48  0f e0 a0 e1                                      mov lr, pc
006a6f4c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006a6f50  e3 ff ff ea                                      b #0x6a6ee4
006a6f54  10 30 d1 e5                                      ldrb r3, [r1, #0x10]
006a6f58  00 00 53 e3                                      cmp r3, #0
006a6f5c  03 00 00 0a                                      beq #0x6a6f70
006a6f60  0c 20 91 e5                                      ldr r2, [r1, #0xc]
006a6f64  0d 00 52 e3                                      cmp r2, #0xd
006a6f68  20 00 52 13                                      cmpne r2, #0x20
006a6f6c  7d 00 00 0a                                      beq #0x6a7168
006a6f70  58 21 d4 e5                                      ldrb r2, [r4, #0x158]
006a6f74  00 00 52 e3                                      cmp r2, #0
006a6f78  12 00 00 0a                                      beq #0x6a6fc8
006a6f7c  59 11 d4 e5                                      ldrb r1, [r4, #0x159]
006a6f80  00 00 51 e3                                      cmp r1, #0
006a6f84  0f 00 00 1a                                      bne #0x6a6fc8
006a6f88  00 00 53 e3                                      cmp r3, #0
006a6f8c  11 00 00 0a                                      beq #0x6a6fd8
006a6f90  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006a6f94  1b 00 53 e3                                      cmp r3, #0x1b
006a6f98  d1 ff ff 1a                                      bne #0x6a6ee4
006a6f9c  04 00 a0 e1                                      mov r0, r4
006a6fa0  00 30 94 e5                                      ldr r3, [r4]
006a6fa4  0f e0 a0 e1                                      mov lr, pc
006a6fa8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006a6fac  01 00 a0 e3                                      mov r0, #1
006a6fb0  d3 ff ff ea                                      b #0x6a6f04
006a6fb4  03 00 a0 e1                                      mov r0, r3
006a6fb8  00 30 93 e5                                      ldr r3, [r3]
006a6fbc  0f e0 a0 e1                                      mov lr, pc
006a6fc0  08 f0 93 e5                                      ldr pc, [r3, #8]
006a6fc4  ce ff ff ea                                      b #0x6a6f04
006a6fc8  00 00 53 e3                                      cmp r3, #0
006a6fcc  c4 ff ff 1a                                      bne #0x6a6ee4
006a6fd0  00 00 52 e3                                      cmp r2, #0
006a6fd4  c2 ff ff 0a                                      beq #0x6a6ee4
006a6fd8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006a6fdc  0d 00 53 e3                                      cmp r3, #0xd
006a6fe0  20 00 53 13                                      cmpne r3, #0x20
006a6fe4  be ff ff 1a                                      bne #0x6a6ee4
006a6fe8  59 11 d4 e5                                      ldrb r1, [r4, #0x159]
006a6fec  00 00 51 e3                                      cmp r1, #0
006a6ff0  86 00 00 0a                                      beq #0x6a7210
006a6ff4  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a6ff8  00 00 53 e3                                      cmp r3, #0
006a6ffc  77 00 00 0a                                      beq #0x6a71e0
006a7000  00 20 a0 e3                                      mov r2, #0
006a7004  05 10 a0 e3                                      mov r1, #5
006a7008  28 10 8d e5                                      str r1, [sp, #0x28]
006a700c  20 40 8d e5                                      str r4, [sp, #0x20]
006a7010  24 20 8d e5                                      str r2, [sp, #0x24]
006a7014  18 20 8d e5                                      str r2, [sp, #0x18]
006a7018  03 00 a0 e1                                      mov r0, r3
006a701c  18 10 8d e2                                      add r1, sp, #0x18
006a7020  00 30 93 e5                                      ldr r3, [r3]
006a7024  0f e0 a0 e1                                      mov lr, pc
006a7028  08 f0 93 e5                                      ldr pc, [r3, #8]
006a702c  01 00 a0 e3                                      mov r0, #1
006a7030  b3 ff ff ea                                      b #0x6a6f04
006a7034  14 30 91 e5                                      ldr r3, [r1, #0x14]
006a7038  00 00 53 e3                                      cmp r3, #0
006a703c  2b 00 00 0a                                      beq #0x6a70f0
006a7040  03 00 53 e3                                      cmp r3, #3
006a7044  a6 ff ff 1a                                      bne #0x6a6ee4
006a7048  08 30 91 e5                                      ldr r3, [r1, #8]
006a704c  48 20 90 e5                                      ldr r2, [r0, #0x48]
006a7050  0c 10 91 e5                                      ldr r1, [r1, #0xc]
006a7054  58 51 d0 e5                                      ldrb r5, [r0, #0x158]
006a7058  02 00 53 e1                                      cmp r3, r2
006a705c  5c 00 00 ba                                      blt #0x6a71d4
006a7060  4c 20 90 e5                                      ldr r2, [r0, #0x4c]
006a7064  02 00 51 e1                                      cmp r1, r2
006a7068  59 00 00 ba                                      blt #0x6a71d4
006a706c  50 20 90 e5                                      ldr r2, [r0, #0x50]
006a7070  02 00 53 e1                                      cmp r3, r2
006a7074  56 00 00 ca                                      bgt #0x6a71d4
006a7078  54 30 90 e5                                      ldr r3, [r0, #0x54]
006a707c  03 00 51 e1                                      cmp r1, r3
006a7080  53 00 00 ca                                      bgt #0x6a71d4
006a7084  59 11 d0 e5                                      ldrb r1, [r0, #0x159]
006a7088  00 00 51 e3                                      cmp r1, #0
006a708c  55 00 00 1a                                      bne #0x6a71e8
006a7090  00 30 90 e5                                      ldr r3, [r0]
006a7094  0f e0 a0 e1                                      mov lr, pc
006a7098  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006a709c  59 31 d4 e5                                      ldrb r3, [r4, #0x159]
006a70a0  00 00 53 e3                                      cmp r3, #0
006a70a4  54 00 00 1a                                      bne #0x6a71fc
006a70a8  00 00 55 e3                                      cmp r5, #0
006a70ac  4b 00 00 0a                                      beq #0x6a71e0
006a70b0  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a70b4  00 00 53 e3                                      cmp r3, #0
006a70b8  48 00 00 0a                                      beq #0x6a71e0
006a70bc  00 20 a0 e3                                      mov r2, #0
006a70c0  05 10 a0 e3                                      mov r1, #5
006a70c4  10 10 8d e5                                      str r1, [sp, #0x10]
006a70c8  08 40 8d e5                                      str r4, [sp, #8]
006a70cc  0c 20 8d e5                                      str r2, [sp, #0xc]
006a70d0  00 20 8d e5                                      str r2, [sp]
006a70d4  03 00 a0 e1                                      mov r0, r3
006a70d8  0d 10 a0 e1                                      mov r1, sp
006a70dc  00 30 93 e5                                      ldr r3, [r3]
006a70e0  0f e0 a0 e1                                      mov lr, pc
006a70e4  08 f0 93 e5                                      ldr pc, [r3, #8]
006a70e8  01 00 a0 e3                                      mov r0, #1
006a70ec  84 ff ff ea                                      b #0x6a6f04
006a70f0  50 31 90 e5                                      ldr r3, [r0, #0x150]
006a70f4  00 10 a0 e1                                      mov r1, r0
006a70f8  03 00 a0 e1                                      mov r0, r3
006a70fc  00 30 93 e5                                      ldr r3, [r3]
006a7100  0f e0 a0 e1                                      mov lr, pc
006a7104  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006a7108  00 00 50 e3                                      cmp r0, #0
006a710c  20 00 00 0a                                      beq #0x6a7194
006a7110  08 30 95 e5                                      ldr r3, [r5, #8]
006a7114  48 20 94 e5                                      ldr r2, [r4, #0x48]
006a7118  0c 10 95 e5                                      ldr r1, [r5, #0xc]
006a711c  02 00 53 e1                                      cmp r3, r2
006a7120  08 00 00 ba                                      blt #0x6a7148
006a7124  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
006a7128  02 00 51 e1                                      cmp r1, r2
006a712c  05 00 00 ba                                      blt #0x6a7148
006a7130  50 20 94 e5                                      ldr r2, [r4, #0x50]
006a7134  02 00 53 e1                                      cmp r3, r2
006a7138  02 00 00 ca                                      bgt #0x6a7148
006a713c  54 30 94 e5                                      ldr r3, [r4, #0x54]
006a7140  03 00 51 e1                                      cmp r1, r3
006a7144  12 00 00 da                                      ble #0x6a7194
006a7148  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a714c  04 10 a0 e1                                      mov r1, r4
006a7150  03 00 a0 e1                                      mov r0, r3
006a7154  00 30 93 e5                                      ldr r3, [r3]
006a7158  0f e0 a0 e1                                      mov lr, pc
006a715c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006a7160  00 00 a0 e3                                      mov r0, #0
006a7164  66 ff ff ea                                      b #0x6a6f04
006a7168  59 31 d0 e5                                      ldrb r3, [r0, #0x159]
006a716c  00 00 53 e3                                      cmp r3, #0
006a7170  58 11 d0 15                                      ldrbne r1, [r0, #0x158]
006a7174  00 30 90 05                                      ldreq r3, [r0]
006a7178  00 30 90 15                                      ldrne r3, [r0]
006a717c  01 10 a0 03                                      moveq r1, #1
006a7180  01 10 21 12                                      eorne r1, r1, #1
006a7184  0f e0 a0 e1                                      mov lr, pc
006a7188  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006a718c  01 00 a0 e3                                      mov r0, #1
006a7190  5b ff ff ea                                      b #0x6a6f04
006a7194  59 31 d4 e5                                      ldrb r3, [r4, #0x159]
006a7198  00 00 53 e3                                      cmp r3, #0
006a719c  04 00 00 1a                                      bne #0x6a71b4
006a71a0  00 30 94 e5                                      ldr r3, [r4]
006a71a4  04 00 a0 e1                                      mov r0, r4
006a71a8  01 10 a0 e3                                      mov r1, #1
006a71ac  0f e0 a0 e1                                      mov lr, pc
006a71b0  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006a71b4  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a71b8  04 10 a0 e1                                      mov r1, r4
006a71bc  03 00 a0 e1                                      mov r0, r3
006a71c0  00 30 93 e5                                      ldr r3, [r3]
006a71c4  0f e0 a0 e1                                      mov lr, pc
006a71c8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006a71cc  01 00 a0 e3                                      mov r0, #1
006a71d0  4b ff ff ea                                      b #0x6a6f04
006a71d4  59 11 d4 e5                                      ldrb r1, [r4, #0x159]
006a71d8  00 00 51 e3                                      cmp r1, #0
006a71dc  6e ff ff 0a                                      beq #0x6a6f9c
006a71e0  01 00 a0 e3                                      mov r0, #1
006a71e4  46 ff ff ea                                      b #0x6a6f04
006a71e8  00 30 90 e5                                      ldr r3, [r0]
006a71ec  01 10 25 e2                                      eor r1, r5, #1
006a71f0  0f e0 a0 e1                                      mov lr, pc
006a71f4  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006a71f8  a7 ff ff ea                                      b #0x6a709c
006a71fc  58 31 d4 e5                                      ldrb r3, [r4, #0x158]
006a7200  05 00 53 e1                                      cmp r3, r5
006a7204  f5 ff ff 0a                                      beq #0x6a71e0
006a7208  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a720c  aa ff ff ea                                      b #0x6a70bc
006a7210  00 30 94 e5                                      ldr r3, [r4]
006a7214  04 00 a0 e1                                      mov r0, r4
006a7218  0f e0 a0 e1                                      mov lr, pc
006a721c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006a7220  73 ff ff ea                                      b #0x6a6ff4

; FUNCTION 0x006a7224, declared_size=1064, range_size=1064, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton4drawEv
; demangled: glitch::gui::CGUIButton::draw()
; decoder-mode: arm
006a7224  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a7228  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
006a722c  54 d0 4d e2                                      sub sp, sp, #0x54
006a7230  00 40 a0 e1                                      mov r4, r0
006a7234  00 00 53 e3                                      cmp r3, #0
006a7238  01 00 00 1a                                      bne #0x6a7244
006a723c  54 d0 8d e2                                      add sp, sp, #0x54
006a7240  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006a7244  50 31 90 e5                                      ldr r3, [r0, #0x150]
006a7248  03 00 a0 e1                                      mov r0, r3
006a724c  00 30 93 e5                                      ldr r3, [r3]
006a7250  0f e0 a0 e1                                      mov lr, pc
006a7254  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a7258  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a725c  00 60 a0 e1                                      mov r6, r0
006a7260  03 00 a0 e1                                      mov r0, r3
006a7264  00 30 93 e5                                      ldr r3, [r3]
006a7268  0f e0 a0 e1                                      mov lr, pc
006a726c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006a7270  64 51 94 e5                                      ldr r5, [r4, #0x164]
006a7274  00 70 a0 e1                                      mov r7, r0
006a7278  00 00 55 e3                                      cmp r5, #0
006a727c  db 00 00 0a                                      beq #0x6a75f0
006a7280  38 00 84 e2                                      add r0, r4, #0x38
006a7284  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
006a7288  58 a1 d4 e5                                      ldrb sl, [r4, #0x158]
006a728c  00 c0 82 e0                                      add ip, r2, r0
006a7290  01 80 83 e0                                      add r8, r3, r1
006a7294  a8 8f 88 e0                                      add r8, r8, r8, lsr #31
006a7298  ac cf 8c e0                                      add ip, ip, ip, lsr #31
006a729c  c8 80 a0 e1                                      asr r8, r8, #1
006a72a0  cc c0 a0 e1                                      asr ip, ip, #1
006a72a4  00 00 5a e3                                      cmp sl, #0
006a72a8  3c c0 8d e5                                      str ip, [sp, #0x3c]
006a72ac  40 80 8d e5                                      str r8, [sp, #0x40]
006a72b0  24 00 8d e5                                      str r0, [sp, #0x24]
006a72b4  28 10 8d e5                                      str r1, [sp, #0x28]
006a72b8  2c 20 8d e5                                      str r2, [sp, #0x2c]
006a72bc  30 30 8d e5                                      str r3, [sp, #0x30]
006a72c0  82 00 00 0a                                      beq #0x6a74d0
006a72c4  5b 31 d4 e5                                      ldrb r3, [r4, #0x15b]
006a72c8  00 00 53 e3                                      cmp r3, #0
006a72cc  bf 00 00 1a                                      bne #0x6a75d0
006a72d0  b4 31 94 e5                                      ldr r3, [r4, #0x1b4]
006a72d4  00 00 53 e3                                      cmp r3, #0
006a72d8  28 00 00 0a                                      beq #0x6a7380
006a72dc  40 b0 94 e5                                      ldr fp, [r4, #0x40]
006a72e0  38 90 94 e5                                      ldr sb, [r4, #0x38]
006a72e4  d0 e1 94 e5                                      ldr lr, [r4, #0x1d0]
006a72e8  c8 01 94 e5                                      ldr r0, [r4, #0x1c8]
006a72ec  d4 c1 94 e5                                      ldr ip, [r4, #0x1d4]
006a72f0  cc 81 94 e5                                      ldr r8, [r4, #0x1cc]
006a72f4  44 a0 94 e5                                      ldr sl, [r4, #0x44]
006a72f8  09 90 8b e0                                      add sb, fp, sb
006a72fc  3c b0 94 e5                                      ldr fp, [r4, #0x3c]
006a7300  0e 10 60 e0                                      rsb r1, r0, lr
006a7304  0c 20 68 e0                                      rsb r2, r8, ip
006a7308  0b a0 8a e0                                      add sl, sl, fp
006a730c  a1 1f 81 e0                                      add r1, r1, r1, lsr #31
006a7310  b0 b1 94 e5                                      ldr fp, [r4, #0x1b0]
006a7314  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
006a7318  a9 9f 89 e0                                      add sb, sb, sb, lsr #31
006a731c  aa af 8a e0                                      add sl, sl, sl, lsr #31
006a7320  c1 10 a0 e1                                      asr r1, r1, #1
006a7324  c2 20 a0 e1                                      asr r2, r2, #1
006a7328  c9 10 61 e0                                      rsb r1, r1, sb, asr #1
006a732c  ca a0 62 e0                                      rsb sl, r2, sl, asr #1
006a7330  03 00 5b e1                                      cmp fp, r3
006a7334  34 10 8d e5                                      str r1, [sp, #0x34]
006a7338  38 a0 8d e5                                      str sl, [sp, #0x38]
006a733c  b2 00 00 0a                                      beq #0x6a760c
006a7340  00 30 e0 e3                                      mvn r3, #0
006a7344  4b 30 cd e5                                      strb r3, [sp, #0x4b]
006a7348  48 30 cd e5                                      strb r3, [sp, #0x48]
006a734c  49 30 cd e5                                      strb r3, [sp, #0x49]
006a7350  4a 30 cd e5                                      strb r3, [sp, #0x4a]
006a7354  48 e0 84 e2                                      add lr, r4, #0x48
006a7358  5a c1 d4 e5                                      ldrb ip, [r4, #0x15a]
006a735c  00 e0 8d e5                                      str lr, [sp]
006a7360  48 e0 9d e5                                      ldr lr, [sp, #0x48]
006a7364  07 00 a0 e1                                      mov r0, r7
006a7368  6d 1f 84 e2                                      add r1, r4, #0x1b4
006a736c  34 20 8d e2                                      add r2, sp, #0x34
006a7370  72 3f 84 e2                                      add r3, r4, #0x1c8
006a7374  04 e0 8d e5                                      str lr, [sp, #4]
006a7378  08 c0 8d e5                                      str ip, [sp, #8]
006a737c  bf e1 fb eb                                      bl #0x59fa80
006a7380  60 81 94 e5                                      ldr r8, [r4, #0x160]
006a7384  00 00 58 e3                                      cmp r8, #0
006a7388  13 00 00 0a                                      beq #0x6a73dc
006a738c  74 a1 94 e5                                      ldr sl, [r4, #0x174]
006a7390  01 00 7a e3                                      cmn sl, #1
006a7394  10 00 00 0a                                      beq #0x6a73dc
006a7398  00 30 98 e5                                      ldr r3, [r8]
006a739c  5c 91 94 e5                                      ldr sb, [r4, #0x15c]
006a73a0  24 70 93 e5                                      ldr r7, [r3, #0x24]
006a73a4  ce 8e fd eb                                      bl #0x60aee4
006a73a8  7c 31 d4 e5                                      ldrb r3, [r4, #0x17c]
006a73ac  5e 2f 84 e2                                      add r2, r4, #0x178
006a73b0  0c 30 8d e5                                      str r3, [sp, #0xc]
006a73b4  01 30 a0 e3                                      mov r3, #1
006a73b8  08 00 8d e5                                      str r0, [sp, #8]
006a73bc  00 20 8d e5                                      str r2, [sp]
006a73c0  10 30 8d e5                                      str r3, [sp, #0x10]
006a73c4  04 90 8d e5                                      str sb, [sp, #4]
006a73c8  08 00 a0 e1                                      mov r0, r8
006a73cc  0a 10 a0 e1                                      mov r1, sl
006a73d0  3c 20 8d e2                                      add r2, sp, #0x3c
006a73d4  48 30 84 e2                                      add r3, r4, #0x48
006a73d8  37 ff 2f e1                                      blx r7
006a73dc  e0 30 94 e5                                      ldr r3, [r4, #0xe0]
006a73e0  e4 70 94 e5                                      ldr r7, [r4, #0xe4]
006a73e4  03 30 67 e0                                      rsb r3, r7, r3
006a73e8  23 31 b0 e1                                      lsrs r3, r3, #2
006a73ec  29 00 00 0a                                      beq #0x6a7498
006a73f0  58 c1 d4 e5                                      ldrb ip, [r4, #0x158]
006a73f4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006a73f8  38 00 94 e5                                      ldr r0, [r4, #0x38]
006a73fc  40 10 94 e5                                      ldr r1, [r4, #0x40]
006a7400  44 20 94 e5                                      ldr r2, [r4, #0x44]
006a7404  00 00 5c e3                                      cmp ip, #0
006a7408  28 30 8d e5                                      str r3, [sp, #0x28]
006a740c  02 30 83 12                                      addne r3, r3, #2
006a7410  28 30 8d 15                                      strne r3, [sp, #0x28]
006a7414  00 00 55 e3                                      cmp r5, #0
006a7418  24 00 8d e5                                      str r0, [sp, #0x24]
006a741c  2c 10 8d e5                                      str r1, [sp, #0x2c]
006a7420  30 20 8d e5                                      str r2, [sp, #0x30]
006a7424  1b 00 00 0a                                      beq #0x6a7498
006a7428  99 10 d4 e5                                      ldrb r1, [r4, #0x99]
006a742c  00 20 95 e5                                      ldr r2, [r5]
006a7430  00 30 96 e5                                      ldr r3, [r6]
006a7434  00 00 51 e3                                      cmp r1, #0
006a7438  06 00 a0 e1                                      mov r0, r6
006a743c  08 10 a0 13                                      movne r1, #8
006a7440  09 10 a0 03                                      moveq r1, #9
006a7444  0c 60 92 e5                                      ldr r6, [r2, #0xc]
006a7448  0f e0 a0 e1                                      mov lr, pc
006a744c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006a7450  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006a7454  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006a7458  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006a745c  19 10 cd e5                                      strb r1, [sp, #0x19]
006a7460  1a 20 cd e5                                      strb r2, [sp, #0x1a]
006a7464  18 00 cd e5                                      strb r0, [sp, #0x18]
006a7468  1b 30 cd e5                                      strb r3, [sp, #0x1b]
006a746c  18 30 9d e5                                      ldr r3, [sp, #0x18]
006a7470  01 20 a0 e3                                      mov r2, #1
006a7474  48 10 84 e2                                      add r1, r4, #0x48
006a7478  04 20 8d e5                                      str r2, [sp, #4]
006a747c  08 10 8d e5                                      str r1, [sp, #8]
006a7480  00 20 8d e5                                      str r2, [sp]
006a7484  44 30 8d e5                                      str r3, [sp, #0x44]
006a7488  05 00 a0 e1                                      mov r0, r5
006a748c  07 10 a0 e1                                      mov r1, r7
006a7490  24 20 8d e2                                      add r2, sp, #0x24
006a7494  36 ff 2f e1                                      blx r6
006a7498  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
006a749c  00 00 53 e3                                      cmp r3, #0
006a74a0  04 50 b4 15                                      ldrne r5, [r4, #4]!
006a74a4  06 00 00 1a                                      bne #0x6a74c4
006a74a8  63 ff ff ea                                      b #0x6a723c
006a74ac  08 30 95 e5                                      ldr r3, [r5, #8]
006a74b0  03 00 a0 e1                                      mov r0, r3
006a74b4  00 30 93 e5                                      ldr r3, [r3]
006a74b8  0f e0 a0 e1                                      mov lr, pc
006a74bc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006a74c0  00 50 95 e5                                      ldr r5, [r5]
006a74c4  04 00 55 e1                                      cmp r5, r4
006a74c8  f7 ff ff 1a                                      bne #0x6a74ac
006a74cc  5a ff ff ea                                      b #0x6a723c
006a74d0  5b 31 d4 e5                                      ldrb r3, [r4, #0x15b]
006a74d4  00 00 53 e3                                      cmp r3, #0
006a74d8  34 00 00 1a                                      bne #0x6a75b0
006a74dc  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
006a74e0  00 00 53 e3                                      cmp r3, #0
006a74e4  24 00 00 0a                                      beq #0x6a757c
006a74e8  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
006a74ec  c4 21 94 e5                                      ldr r2, [r4, #0x1c4]
006a74f0  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
006a74f4  44 c0 94 e5                                      ldr ip, [r4, #0x44]
006a74f8  c0 a1 94 e5                                      ldr sl, [r4, #0x1c0]
006a74fc  b8 11 94 e5                                      ldr r1, [r4, #0x1b8]
006a7500  02 20 63 e0                                      rsb r2, r3, r2
006a7504  40 80 94 e5                                      ldr r8, [r4, #0x40]
006a7508  38 e0 94 e5                                      ldr lr, [r4, #0x38]
006a750c  00 c0 8c e0                                      add ip, ip, r0
006a7510  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
006a7514  ac cf 8c e0                                      add ip, ip, ip, lsr #31
006a7518  00 30 e0 e3                                      mvn r3, #0
006a751c  c2 20 a0 e1                                      asr r2, r2, #1
006a7520  0a 10 61 e0                                      rsb r1, r1, sl
006a7524  4f 30 cd e5                                      strb r3, [sp, #0x4f]
006a7528  4c 30 cd e5                                      strb r3, [sp, #0x4c]
006a752c  4d 30 cd e5                                      strb r3, [sp, #0x4d]
006a7530  4e 30 cd e5                                      strb r3, [sp, #0x4e]
006a7534  cc c0 62 e0                                      rsb ip, r2, ip, asr #1
006a7538  0e e0 88 e0                                      add lr, r8, lr
006a753c  a1 1f 81 e0                                      add r1, r1, r1, lsr #31
006a7540  5a 81 d4 e5                                      ldrb r8, [r4, #0x15a]
006a7544  ae ef 8e e0                                      add lr, lr, lr, lsr #31
006a7548  38 c0 8d e5                                      str ip, [sp, #0x38]
006a754c  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006a7550  c1 10 a0 e1                                      asr r1, r1, #1
006a7554  ce e0 61 e0                                      rsb lr, r1, lr, asr #1
006a7558  07 00 a0 e1                                      mov r0, r7
006a755c  1b 1e 84 e2                                      add r1, r4, #0x1b0
006a7560  48 70 84 e2                                      add r7, r4, #0x48
006a7564  34 20 8d e2                                      add r2, sp, #0x34
006a7568  6e 3f 84 e2                                      add r3, r4, #0x1b8
006a756c  34 e0 8d e5                                      str lr, [sp, #0x34]
006a7570  80 10 8d e8                                      stm sp, {r7, ip}
006a7574  08 80 8d e5                                      str r8, [sp, #8]
006a7578  40 e1 fb eb                                      bl #0x59fa80
006a757c  60 81 94 e5                                      ldr r8, [r4, #0x160]
006a7580  00 00 58 e3                                      cmp r8, #0
006a7584  94 ff ff 0a                                      beq #0x6a73dc
006a7588  68 a1 94 e5                                      ldr sl, [r4, #0x168]
006a758c  01 00 7a e3                                      cmn sl, #1
006a7590  91 ff ff 0a                                      beq #0x6a73dc
006a7594  00 30 98 e5                                      ldr r3, [r8]
006a7598  5c 91 94 e5                                      ldr sb, [r4, #0x15c]
006a759c  24 70 93 e5                                      ldr r7, [r3, #0x24]
006a75a0  4f 8e fd eb                                      bl #0x60aee4
006a75a4  70 31 d4 e5                                      ldrb r3, [r4, #0x170]
006a75a8  5b 2f 84 e2                                      add r2, r4, #0x16c
006a75ac  7f ff ff ea                                      b #0x6a73b0
006a75b0  00 c0 96 e5                                      ldr ip, [r6]
006a75b4  06 00 a0 e1                                      mov r0, r6
006a75b8  04 10 a0 e1                                      mov r1, r4
006a75bc  24 20 8d e2                                      add r2, sp, #0x24
006a75c0  48 30 84 e2                                      add r3, r4, #0x48
006a75c4  0f e0 a0 e1                                      mov lr, pc
006a75c8  40 f0 9c e5                                      ldr pc, [ip, #0x40]
006a75cc  c2 ff ff ea                                      b #0x6a74dc
006a75d0  00 c0 96 e5                                      ldr ip, [r6]
006a75d4  06 00 a0 e1                                      mov r0, r6
006a75d8  04 10 a0 e1                                      mov r1, r4
006a75dc  24 20 8d e2                                      add r2, sp, #0x24
006a75e0  48 30 84 e2                                      add r3, r4, #0x48
006a75e4  0f e0 a0 e1                                      mov lr, pc
006a75e8  44 f0 9c e5                                      ldr pc, [ip, #0x44]
006a75ec  37 ff ff ea                                      b #0x6a72d0
006a75f0  00 30 96 e5                                      ldr r3, [r6]
006a75f4  06 00 a0 e1                                      mov r0, r6
006a75f8  01 10 a0 e3                                      mov r1, #1
006a75fc  0f e0 a0 e1                                      mov lr, pc
006a7600  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006a7604  00 50 a0 e1                                      mov r5, r0
006a7608  1c ff ff ea                                      b #0x6a7280
006a760c  b8 31 94 e5                                      ldr r3, [r4, #0x1b8]
006a7610  03 00 50 e1                                      cmp r0, r3
006a7614  49 ff ff 1a                                      bne #0x6a7340
006a7618  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
006a761c  03 00 58 e1                                      cmp r8, r3
006a7620  46 ff ff 1a                                      bne #0x6a7340
006a7624  c0 31 94 e5                                      ldr r3, [r4, #0x1c0]
006a7628  03 00 5e e1                                      cmp lr, r3
006a762c  43 ff ff 1a                                      bne #0x6a7340
006a7630  c4 31 94 e5                                      ldr r3, [r4, #0x1c4]
006a7634  03 00 5c e1                                      cmp ip, r3
006a7638  01 10 81 02                                      addeq r1, r1, #1
006a763c  01 a0 8a 02                                      addeq sl, sl, #1
006a7640  34 10 8d 05                                      streq r1, [sp, #0x34]
006a7644  38 a0 8d 05                                      streq sl, [sp, #0x38]
006a7648  3c ff ff ea                                      b #0x6a7340

; FUNCTION 0x006a764c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZTv0_n20_N6glitch3gui10CGUIButton21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIButton::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006a764c  00 30 90 e5                                      ldr r3, [r0]
006a7650  14 30 13 e5                                      ldr r3, [r3, #-0x14]
006a7654  03 00 80 e0                                      add r0, r0, r3
006a7658  54 fd ff ea                                      b #0x6a6bb0

; FUNCTION 0x006a765c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZTv0_n24_N6glitch3gui10CGUIButtonD0Ev
; demangled: virtual thunk to glitch::gui::CGUIButton::~CGUIButton()
; decoder-mode: arm
006a765c  00 30 90 e5                                      ldr r3, [r0]
006a7660  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006a7664  03 00 80 e0                                      add r0, r0, r3
006a7668  1e fd ff ea                                      b #0x6a6ae8

; FUNCTION 0x006a766c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZTv0_n12_N6glitch3gui10CGUIButtonD0Ev
; demangled: virtual thunk to glitch::gui::CGUIButton::~CGUIButton()
; decoder-mode: arm
006a766c  00 30 90 e5                                      ldr r3, [r0]
006a7670  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a7674  03 00 80 e0                                      add r0, r0, r3
006a7678  1a fd ff ea                                      b #0x6a6ae8

; FUNCTION 0x006a767c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZTv0_n24_N6glitch3gui10CGUIButtonD1Ev
; demangled: virtual thunk to glitch::gui::CGUIButton::~CGUIButton()
; decoder-mode: arm
006a767c  00 30 90 e5                                      ldr r3, [r0]
006a7680  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006a7684  03 00 80 e0                                      add r0, r0, r3
006a7688  e7 fc ff ea                                      b #0x6a6a2c

; FUNCTION 0x006a768c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZTv0_n12_N6glitch3gui10CGUIButtonD1Ev
; demangled: virtual thunk to glitch::gui::CGUIButton::~CGUIButton()
; decoder-mode: arm
006a768c  00 30 90 e5                                      ldr r3, [r0]
006a7690  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a7694  03 00 80 e0                                      add r0, r0, r3
006a7698  e3 fc ff ea                                      b #0x6a6a2c

; FUNCTION 0x006a769c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZTv0_n16_NK6glitch3gui10CGUIButton19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIButton::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006a769c  00 30 90 e5                                      ldr r3, [r0]
006a76a0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006a76a4  03 00 80 e0                                      add r0, r0, r3
006a76a8  e0 fb ff ea                                      b #0x6a6630
