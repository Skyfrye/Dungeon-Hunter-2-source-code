; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0055bb30, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFontC2EPNS_5video12IVideoDriverE
; demangled: glitch::gui::CGUITTFont::CGUITTFont(glitch::video::IVideoDriver*)
; decoder-mode: arm
0055bb30  74 30 9f e5                                      ldr r3, [pc, #0x74]
0055bb34  74 20 9f e5                                      ldr r2, [pc, #0x74]
0055bb38  00 c0 a0 e3                                      mov ip, #0
0055bb3c  03 30 8f e0                                      add r3, pc, r3
0055bb40  02 20 93 e7                                      ldr r2, [r3, r2]
0055bb44  04 40 2d e5                                      str r4, [sp, #-4]!
0055bb48  01 40 a0 e3                                      mov r4, #1
0055bb4c  08 20 82 e2                                      add r2, r2, #8
0055bb50  00 00 51 e3                                      cmp r1, #0
0055bb54  14 00 80 e8                                      stm r0, {r2, r4}
0055bb58  30 c0 80 e5                                      str ip, [r0, #0x30]
0055bb5c  08 10 80 e5                                      str r1, [r0, #8]
0055bb60  0c c0 80 e5                                      str ip, [r0, #0xc]
0055bb64  10 c0 80 e5                                      str ip, [r0, #0x10]
0055bb68  14 c0 80 e5                                      str ip, [r0, #0x14]
0055bb6c  18 c0 80 e5                                      str ip, [r0, #0x18]
0055bb70  1c c0 80 e5                                      str ip, [r0, #0x1c]
0055bb74  20 c0 80 e5                                      str ip, [r0, #0x20]
0055bb78  24 c0 80 e5                                      str ip, [r0, #0x24]
0055bb7c  28 c0 80 e5                                      str ip, [r0, #0x28]
0055bb80  2c c0 80 e5                                      str ip, [r0, #0x2c]
0055bb84  04 30 91 15                                      ldrne r3, [r1, #4]
0055bb88  04 30 83 10                                      addne r3, r3, r4
0055bb8c  04 30 81 15                                      strne r3, [r1, #4]
0055bb90  00 30 a0 e3                                      mov r3, #0
0055bb94  3c 30 80 e5                                      str r3, [r0, #0x3c]
0055bb98  34 30 c0 e5                                      strb r3, [r0, #0x34]
0055bb9c  35 30 c0 e5                                      strb r3, [r0, #0x35]
0055bba0  38 30 80 e5                                      str r3, [r0, #0x38]
0055bba4  10 00 bd e8                                      ldm sp!, {r4}
0055bba8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0055bbac  54 8f 43 00 50 0d 00 00                          .byte 0x54, 0x8f, 0x43, 0x00, 0x50, 0x0d, 0x00, 0x00

; FUNCTION 0x0055bbb4, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFontC1EPNS_5video12IVideoDriverE
; demangled: glitch::gui::CGUITTFont::CGUITTFont(glitch::video::IVideoDriver*)
; decoder-mode: arm
0055bbb4  74 30 9f e5                                      ldr r3, [pc, #0x74]
0055bbb8  74 20 9f e5                                      ldr r2, [pc, #0x74]
0055bbbc  00 c0 a0 e3                                      mov ip, #0
0055bbc0  03 30 8f e0                                      add r3, pc, r3
0055bbc4  02 20 93 e7                                      ldr r2, [r3, r2]
0055bbc8  04 40 2d e5                                      str r4, [sp, #-4]!
0055bbcc  01 40 a0 e3                                      mov r4, #1
0055bbd0  08 20 82 e2                                      add r2, r2, #8
0055bbd4  00 00 51 e3                                      cmp r1, #0
0055bbd8  14 00 80 e8                                      stm r0, {r2, r4}
0055bbdc  30 c0 80 e5                                      str ip, [r0, #0x30]
0055bbe0  08 10 80 e5                                      str r1, [r0, #8]
0055bbe4  0c c0 80 e5                                      str ip, [r0, #0xc]
0055bbe8  10 c0 80 e5                                      str ip, [r0, #0x10]
0055bbec  14 c0 80 e5                                      str ip, [r0, #0x14]
0055bbf0  18 c0 80 e5                                      str ip, [r0, #0x18]
0055bbf4  1c c0 80 e5                                      str ip, [r0, #0x1c]
0055bbf8  20 c0 80 e5                                      str ip, [r0, #0x20]
0055bbfc  24 c0 80 e5                                      str ip, [r0, #0x24]
0055bc00  28 c0 80 e5                                      str ip, [r0, #0x28]
0055bc04  2c c0 80 e5                                      str ip, [r0, #0x2c]
0055bc08  04 30 91 15                                      ldrne r3, [r1, #4]
0055bc0c  04 30 83 10                                      addne r3, r3, r4
0055bc10  04 30 81 15                                      strne r3, [r1, #4]
0055bc14  00 30 a0 e3                                      mov r3, #0
0055bc18  3c 30 80 e5                                      str r3, [r0, #0x3c]
0055bc1c  34 30 c0 e5                                      strb r3, [r0, #0x34]
0055bc20  35 30 c0 e5                                      strb r3, [r0, #0x35]
0055bc24  38 30 80 e5                                      str r3, [r0, #0x38]
0055bc28  10 00 bd e8                                      ldm sp!, {r4}
0055bc2c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0055bc30  d0 8e 43 00 50 0d 00 00                          .byte 0xd0, 0x8e, 0x43, 0x00, 0x50, 0x0d, 0x00, 0x00

; FUNCTION 0x0055bc38, declared_size=156, range_size=156, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont9setBorderEjNS_5video6SColorE
; demangled: glitch::gui::CGUITTFont::setBorder(unsigned int, glitch::video::SColor)
; decoder-mode: arm
0055bc38  f0 00 2d e9                                      push {r4, r5, r6, r7}
0055bc3c  30 30 90 e5                                      ldr r3, [r0, #0x30]
0055bc40  08 d0 4d e2                                      sub sp, sp, #8
0055bc44  04 20 8d e5                                      str r2, [sp, #4]
0055bc48  00 00 53 e3                                      cmp r3, #0
0055bc4c  22 cc a0 e1                                      lsr ip, r2, #0x18
0055bc50  72 50 ef e6                                      uxtb r5, r2
0055bc54  52 44 e7 e7                                      ubfx r4, r2, #8, #8
0055bc58  52 28 e7 e7                                      ubfx r2, r2, #0x10, #8
0055bc5c  19 00 00 0a                                      beq #0x55bcc8
0055bc60  08 60 93 e5                                      ldr r6, [r3, #8]
0055bc64  18 30 90 e5                                      ldr r3, [r0, #0x18]
0055bc68  10 70 96 e5                                      ldr r7, [r6, #0x10]
0055bc6c  0c 60 93 e5                                      ldr r6, [r3, #0xc]
0055bc70  00 00 57 e3                                      cmp r7, #0
0055bc74  96 01 01 e0                                      mul r1, r6, r1
0055bc78  12 00 00 da                                      ble #0x55bcc8
0055bc7c  00 60 a0 e3                                      mov r6, #0
0055bc80  06 70 a0 e1                                      mov r7, r6
0055bc84  00 00 00 ea                                      b #0x55bc8c
0055bc88  18 30 90 e5                                      ldr r3, [r0, #0x18]
0055bc8c  06 30 83 e0                                      add r3, r3, r6
0055bc90  50 10 83 e5                                      str r1, [r3, #0x50]
0055bc94  18 30 90 e5                                      ldr r3, [r0, #0x18]
0055bc98  01 70 87 e2                                      add r7, r7, #1
0055bc9c  06 30 83 e0                                      add r3, r3, r6
0055bca0  54 50 c3 e5                                      strb r5, [r3, #0x54]
0055bca4  57 c0 c3 e5                                      strb ip, [r3, #0x57]
0055bca8  56 20 c3 e5                                      strb r2, [r3, #0x56]
0055bcac  55 40 c3 e5                                      strb r4, [r3, #0x55]
0055bcb0  30 30 90 e5                                      ldr r3, [r0, #0x30]
0055bcb4  58 60 86 e2                                      add r6, r6, #0x58
0055bcb8  08 30 93 e5                                      ldr r3, [r3, #8]
0055bcbc  10 30 93 e5                                      ldr r3, [r3, #0x10]
0055bcc0  07 00 53 e1                                      cmp r3, r7
0055bcc4  ef ff ff ca                                      bgt #0x55bc88
0055bcc8  08 d0 8d e2                                      add sp, sp, #8
0055bccc  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0055bcd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bcd4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont15setKerningWidthEi
; demangled: glitch::gui::CGUITTFont::setKerningWidth(int)
; decoder-mode: arm
0055bcd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bcd8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont16setKerningHeightEi
; demangled: glitch::gui::CGUITTFont::setKerningHeight(int)
; decoder-mode: arm
0055bcd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bcdc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont15getKerningWidthEPKwS3_
; demangled: glitch::gui::CGUITTFont::getKerningWidth(wchar_t const*, wchar_t const*) const
; decoder-mode: arm
0055bcdc  00 00 a0 e3                                      mov r0, #0
0055bce0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bce4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont16getKerningHeightEv
; demangled: glitch::gui::CGUITTFont::getKerningHeight() const
; decoder-mode: arm
0055bce4  00 00 a0 e3                                      mov r0, #0
0055bce8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bcec, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont11setTrackingEi
; demangled: glitch::gui::CGUITTFont::setTracking(int)
; decoder-mode: arm
0055bcec  00 00 51 e3                                      cmp r1, #0
0055bcf0  00 30 a0 b3                                      movlt r3, #0
0055bcf4  38 30 80 b5                                      strlt r3, [r0, #0x38]
0055bcf8  38 10 80 a5                                      strge r1, [r0, #0x38]
0055bcfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bd00, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont11getTrackingEv
; demangled: glitch::gui::CGUITTFont::getTracking() const
; decoder-mode: arm
0055bd00  38 00 90 e5                                      ldr r0, [r0, #0x38]
0055bd04  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bd08, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont12setAntiAliasEb
; demangled: glitch::gui::CGUITTFont::setAntiAlias(bool)
; decoder-mode: arm
0055bd08  34 10 c0 e5                                      strb r1, [r0, #0x34]
0055bd0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bd10, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont12getAntiAliasEv
; demangled: glitch::gui::CGUITTFont::getAntiAlias() const
; decoder-mode: arm
0055bd10  34 00 d0 e5                                      ldrb r0, [r0, #0x34]
0055bd14  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bd18, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont15setTransparencyEb
; demangled: glitch::gui::CGUITTFont::setTransparency(bool)
; decoder-mode: arm
0055bd18  35 10 c0 e5                                      strb r1, [r0, #0x35]
0055bd1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bd20, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont15getTransparencyEv
; demangled: glitch::gui::CGUITTFont::getTransparency() const
; decoder-mode: arm
0055bd20  35 00 d0 e5                                      ldrb r0, [r0, #0x35]
0055bd24  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bd28, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont13setSpaceWidthEi
; demangled: glitch::gui::CGUITTFont::setSpaceWidth(int)
; decoder-mode: arm
0055bd28  3c 10 80 e5                                      str r1, [r0, #0x3c]
0055bd2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bd30, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont13getSpaceWidthEv
; demangled: glitch::gui::CGUITTFont::getSpaceWidth()
; decoder-mode: arm
0055bd30  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
0055bd34  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055bfec, declared_size=292, range_size=292, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont9drawGlyphEPKNS0_11CGUITTGlyphENS_4core10position2dIiEEPKNS5_4rectIiEENS_5video6SColorE
; demangled: glitch::gui::CGUITTFont::drawGlyph(glitch::gui::CGUITTGlyph const*, glitch::core::position2d<int>, glitch::core::rect<int> const*, glitch::video::SColor)
; decoder-mode: arm
0055bfec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0055bff0  35 c0 d0 e5                                      ldrb ip, [r0, #0x35]
0055bff4  40 d0 4d e2                                      sub sp, sp, #0x40
0055bff8  03 40 a0 e1                                      mov r4, r3
0055bffc  00 00 5c e3                                      cmp ip, #0
0055c000  00 30 e0 03                                      mvneq r3, #0
0055c004  5b 30 cd 05                                      strbeq r3, [sp, #0x5b]
0055c008  48 c0 91 e5                                      ldr ip, [r1, #0x48]
0055c00c  00 00 5c e3                                      cmp ip, #0
0055c010  1e 00 00 0a                                      beq #0x55c090
0055c014  3c c0 91 e5                                      ldr ip, [r1, #0x3c]
0055c018  04 70 92 e5                                      ldr r7, [r2, #4]
0055c01c  28 50 91 e5                                      ldr r5, [r1, #0x28]
0055c020  01 c0 4c e2                                      sub ip, ip, #1
0055c024  2c 30 91 e5                                      ldr r3, [r1, #0x2c]
0055c028  00 60 92 e5                                      ldr r6, [r2]
0055c02c  38 e0 91 e5                                      ldr lr, [r1, #0x38]
0055c030  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0055c034  08 00 90 e5                                      ldr r0, [r0, #8]
0055c038  2c c0 8d e5                                      str ip, [sp, #0x2c]
0055c03c  58 c0 9d e5                                      ldr ip, [sp, #0x58]
0055c040  07 50 65 e0                                      rsb r5, r5, r7
0055c044  02 50 85 e0                                      add r5, r5, r2
0055c048  03 60 86 e0                                      add r6, r6, r3
0055c04c  00 70 a0 e3                                      mov r7, #0
0055c050  01 e0 4e e2                                      sub lr, lr, #1
0055c054  04 c0 8d e5                                      str ip, [sp, #4]
0055c058  48 10 81 e2                                      add r1, r1, #0x48
0055c05c  01 c0 a0 e3                                      mov ip, #1
0055c060  38 20 8d e2                                      add r2, sp, #0x38
0055c064  20 30 8d e2                                      add r3, sp, #0x20
0055c068  38 60 8d e5                                      str r6, [sp, #0x38]
0055c06c  3c 50 8d e5                                      str r5, [sp, #0x3c]
0055c070  24 70 8d e5                                      str r7, [sp, #0x24]
0055c074  28 e0 8d e5                                      str lr, [sp, #0x28]
0055c078  00 40 8d e5                                      str r4, [sp]
0055c07c  08 c0 8d e5                                      str ip, [sp, #8]
0055c080  20 70 8d e5                                      str r7, [sp, #0x20]
0055c084  7d 0e 01 eb                                      bl #0x59fa80
0055c088  40 d0 8d e2                                      add sp, sp, #0x40
0055c08c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0055c090  44 30 91 e5                                      ldr r3, [r1, #0x44]
0055c094  00 00 53 e3                                      cmp r3, #0
0055c098  fa ff ff 0a                                      beq #0x55c088
0055c09c  24 e0 91 e5                                      ldr lr, [r1, #0x24]
0055c0a0  04 80 92 e5                                      ldr r8, [r2, #4]
0055c0a4  10 50 91 e5                                      ldr r5, [r1, #0x10]
0055c0a8  01 e0 4e e2                                      sub lr, lr, #1
0055c0ac  14 30 91 e5                                      ldr r3, [r1, #0x14]
0055c0b0  00 60 92 e5                                      ldr r6, [r2]
0055c0b4  20 70 91 e5                                      ldr r7, [r1, #0x20]
0055c0b8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0055c0bc  08 00 90 e5                                      ldr r0, [r0, #8]
0055c0c0  1c e0 8d e5                                      str lr, [sp, #0x1c]
0055c0c4  58 e0 9d e5                                      ldr lr, [sp, #0x58]
0055c0c8  08 50 65 e0                                      rsb r5, r5, r8
0055c0cc  02 50 85 e0                                      add r5, r5, r2
0055c0d0  03 60 86 e0                                      add r6, r6, r3
0055c0d4  01 70 47 e2                                      sub r7, r7, #1
0055c0d8  04 e0 8d e5                                      str lr, [sp, #4]
0055c0dc  44 10 81 e2                                      add r1, r1, #0x44
0055c0e0  01 e0 a0 e3                                      mov lr, #1
0055c0e4  30 20 8d e2                                      add r2, sp, #0x30
0055c0e8  10 30 8d e2                                      add r3, sp, #0x10
0055c0ec  30 60 8d e5                                      str r6, [sp, #0x30]
0055c0f0  34 50 8d e5                                      str r5, [sp, #0x34]
0055c0f4  14 c0 8d e5                                      str ip, [sp, #0x14]
0055c0f8  18 70 8d e5                                      str r7, [sp, #0x18]
0055c0fc  00 40 8d e5                                      str r4, [sp]
0055c100  08 e0 8d e5                                      str lr, [sp, #8]
0055c104  10 c0 8d e5                                      str ip, [sp, #0x10]
0055c108  5c 0e 01 eb                                      bl #0x59fa80
0055c10c  dd ff ff ea                                      b #0x55c088

; FUNCTION 0x0055c110, declared_size=304, range_size=304, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont18drawGlyphInTextureEPKNS0_11CGUITTGlyphERKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core10position2dIiEEPKNSC_4rectIiEENS7_6SColorE
; demangled: glitch::gui::CGUITTFont::drawGlyphInTexture(glitch::gui::CGUITTGlyph const*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int>, glitch::core::rect<int> const*, glitch::video::SColor)
; decoder-mode: arm
0055c110  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0055c114  00 c0 92 e5                                      ldr ip, [r2]
0055c118  20 d0 4d e2                                      sub sp, sp, #0x20
0055c11c  02 60 a0 e1                                      mov r6, r2
0055c120  00 00 5c e3                                      cmp ip, #0
0055c124  00 40 a0 e1                                      mov r4, r0
0055c128  01 80 a0 e1                                      mov r8, r1
0055c12c  03 50 a0 e1                                      mov r5, r3
0055c130  34 00 00 0a                                      beq #0x55c208
0055c134  08 c0 90 e5                                      ldr ip, [r0, #8]
0055c138  1c 70 8d e2                                      add r7, sp, #0x1c
0055c13c  07 00 a0 e1                                      mov r0, r7
0055c140  0c 10 a0 e1                                      mov r1, ip
0055c144  00 30 a0 e3                                      mov r3, #0
0055c148  00 c0 9c e5                                      ldr ip, [ip]
0055c14c  0f e0 a0 e1                                      mov lr, pc
0055c150  84 f0 9c e5                                      ldr pc, [ip, #0x84]
0055c154  08 30 94 e5                                      ldr r3, [r4, #8]
0055c158  07 10 a0 e1                                      mov r1, r7
0055c15c  03 00 a0 e1                                      mov r0, r3
0055c160  00 30 93 e5                                      ldr r3, [r3]
0055c164  0f e0 a0 e1                                      mov lr, pc
0055c168  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
0055c16c  08 30 94 e5                                      ldr r3, [r4, #8]
0055c170  03 00 a0 e1                                      mov r0, r3
0055c174  00 30 93 e5                                      ldr r3, [r3]
0055c178  0f e0 a0 e1                                      mov lr, pc
0055c17c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0055c180  08 30 94 e5                                      ldr r3, [r4, #8]
0055c184  9c 70 93 e5                                      ldr r7, [r3, #0x9c]
0055c188  02 7b 17 e2                                      ands r7, r7, #0x800
0055c18c  1f 00 00 0a                                      beq #0x55c210
0055c190  04 c0 95 e5                                      ldr ip, [r5, #4]
0055c194  00 e0 95 e5                                      ldr lr, [r5]
0055c198  08 10 a0 e1                                      mov r1, r8
0055c19c  0c c0 8d e5                                      str ip, [sp, #0xc]
0055c1a0  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0055c1a4  08 20 8d e2                                      add r2, sp, #8
0055c1a8  38 30 9d e5                                      ldr r3, [sp, #0x38]
0055c1ac  04 00 a0 e1                                      mov r0, r4
0055c1b0  08 e0 8d e5                                      str lr, [sp, #8]
0055c1b4  00 c0 8d e5                                      str ip, [sp]
0055c1b8  8b ff ff eb                                      bl #0x55bfec
0055c1bc  08 30 94 e5                                      ldr r3, [r4, #8]
0055c1c0  03 00 a0 e1                                      mov r0, r3
0055c1c4  00 30 93 e5                                      ldr r3, [r3]
0055c1c8  0f e0 a0 e1                                      mov lr, pc
0055c1cc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0055c1d0  08 30 94 e5                                      ldr r3, [r4, #8]
0055c1d4  18 00 8d e2                                      add r0, sp, #0x18
0055c1d8  03 10 a0 e1                                      mov r1, r3
0055c1dc  00 30 93 e5                                      ldr r3, [r3]
0055c1e0  0f e0 a0 e1                                      mov lr, pc
0055c1e4  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0055c1e8  18 00 9d e5                                      ldr r0, [sp, #0x18]
0055c1ec  00 00 50 e3                                      cmp r0, #0
0055c1f0  00 00 00 0a                                      beq #0x55c1f8
0055c1f4  e2 04 f7 eb                                      bl #0x31d584
0055c1f8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0055c1fc  00 00 50 e3                                      cmp r0, #0
0055c200  00 00 00 0a                                      beq #0x55c208
0055c204  de 04 f7 eb                                      bl #0x31d584
0055c208  20 d0 8d e2                                      add sp, sp, #0x20
0055c20c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0055c210  03 00 a0 e1                                      mov r0, r3
0055c214  01 10 a0 e3                                      mov r1, #1
0055c218  00 30 93 e5                                      ldr r3, [r3]
0055c21c  0f e0 a0 e1                                      mov lr, pc
0055c220  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
0055c224  08 00 94 e5                                      ldr r0, [r4, #8]
0055c228  06 10 a0 e1                                      mov r1, r6
0055c22c  10 20 8d e2                                      add r2, sp, #0x10
0055c230  14 70 8d e5                                      str r7, [sp, #0x14]
0055c234  10 70 8d e5                                      str r7, [sp, #0x10]
0055c238  65 0e 01 eb                                      bl #0x59fbd4
0055c23c  d3 ff ff ea                                      b #0x55c190

; FUNCTION 0x0055c240, declared_size=164, range_size=164, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont20getVertBearingFactorEv
; demangled: glitch::gui::CGUITTFont::getVertBearingFactor()
; decoder-mode: arm
0055c240  70 40 2d e9                                      push {r4, r5, r6, lr}
0055c244  30 30 90 e5                                      ldr r3, [r0, #0x30]
0055c248  00 40 a0 e1                                      mov r4, r0
0055c24c  61 10 a0 e3                                      mov r1, #0x61
0055c250  08 00 93 e5                                      ldr r0, [r3, #8]
0055c254  a4 a3 06 eb                                      bl #0x7050ec
0055c258  30 30 94 e5                                      ldr r3, [r4, #0x30]
0055c25c  00 10 a0 e1                                      mov r1, r0
0055c260  0a 20 a0 e3                                      mov r2, #0xa
0055c264  08 00 93 e5                                      ldr r0, [r3, #8]
0055c268  dc b3 06 eb                                      bl #0x7091e0
0055c26c  00 00 50 e3                                      cmp r0, #0
0055c270  19 00 00 1a                                      bne #0x55c2dc
0055c274  30 30 94 e5                                      ldr r3, [r4, #0x30]
0055c278  08 30 93 e5                                      ldr r3, [r3, #8]
0055c27c  08 20 93 e5                                      ldr r2, [r3, #8]
0055c280  54 40 93 e5                                      ldr r4, [r3, #0x54]
0055c284  20 00 12 e3                                      tst r2, #0x20
0055c288  10 00 00 1a                                      bne #0x55c2d0
0055c28c  30 00 94 e5                                      ldr r0, [r4, #0x30]
0055c290  b3 c9 f6 eb                                      bl #0x30e964
0055c294  bf 14 a0 e3                                      mov r1, #0xbf000000
0055c298  00 60 a0 e1                                      mov r6, r0
0055c29c  b2 ca f6 eb                                      bl #0x30ed6c
0055c2a0  00 50 a0 e1                                      mov r5, r0
0055c2a4  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0055c2a8  ad c9 f6 eb                                      bl #0x30e964
0055c2ac  00 10 a0 e1                                      mov r1, r0
0055c2b0  06 00 a0 e1                                      mov r0, r6
0055c2b4  3c c8 f6 eb                                      bl #0x30e3ac
0055c2b8  00 10 a0 e1                                      mov r1, r0
0055c2bc  05 00 a0 e1                                      mov r0, r5
0055c2c0  73 ca f6 eb                                      bl #0x30ec94
0055c2c4  fe 15 a0 e3                                      mov r1, #0x3f800000
0055c2c8  35 ca f6 eb                                      bl #0x30eba4
0055c2cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0055c2d0  33 03 03 e3                                      movw r0, #0x3333
0055c2d4  33 0f 43 e3                                      movt r0, #0x3f33
0055c2d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0055c2dc  00 00 a0 e3                                      mov r0, #0
0055c2e0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0055c97c, declared_size=356, range_size=356, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont11clearGlyphsEv
; demangled: glitch::gui::CGUITTFont::clearGlyphs()
; decoder-mode: arm
0055c97c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0055c980  10 20 90 e5                                      ldr r2, [r0, #0x10]
0055c984  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0055c988  a3 7b 08 e3                                      movw r7, #0x8ba3
0055c98c  2e 7a 4b e3                                      movt r7, #0xba2e
0055c990  02 30 61 e0                                      rsb r3, r1, r2
0055c994  c3 31 a0 e1                                      asr r3, r3, #3
0055c998  97 03 03 e0                                      mul r3, r7, r3
0055c99c  14 d0 4d e2                                      sub sp, sp, #0x14
0055c9a0  00 00 53 e3                                      cmp r3, #0
0055c9a4  00 40 a0 e1                                      mov r4, r0
0055c9a8  0d 00 00 0a                                      beq #0x55c9e4
0055c9ac  00 50 a0 e3                                      mov r5, #0
0055c9b0  05 60 a0 e1                                      mov r6, r5
0055c9b4  05 00 81 e0                                      add r0, r1, r5
0055c9b8  08 10 94 e5                                      ldr r1, [r4, #8]
0055c9bc  78 ff ff eb                                      bl #0x55c7a4
0055c9c0  10 20 94 e5                                      ldr r2, [r4, #0x10]
0055c9c4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0055c9c8  01 60 86 e2                                      add r6, r6, #1
0055c9cc  58 50 85 e2                                      add r5, r5, #0x58
0055c9d0  02 30 61 e0                                      rsb r3, r1, r2
0055c9d4  c3 31 a0 e1                                      asr r3, r3, #3
0055c9d8  97 03 03 e0                                      mul r3, r7, r3
0055c9dc  03 00 56 e1                                      cmp r6, r3
0055c9e0  f3 ff ff 3a                                      blo #0x55c9b4
0055c9e4  02 00 51 e1                                      cmp r1, r2
0055c9e8  02 00 00 0a                                      beq #0x55c9f8
0055c9ec  0c 00 84 e2                                      add r0, r4, #0xc
0055c9f0  0c 30 8d e2                                      add r3, sp, #0xc
0055c9f4  bb ff ff eb                                      bl #0x55c8e8
0055c9f8  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0055c9fc  18 10 94 e5                                      ldr r1, [r4, #0x18]
0055ca00  a3 7b 08 e3                                      movw r7, #0x8ba3
0055ca04  2e 7a 4b e3                                      movt r7, #0xba2e
0055ca08  02 30 61 e0                                      rsb r3, r1, r2
0055ca0c  c3 31 a0 e1                                      asr r3, r3, #3
0055ca10  97 03 03 e0                                      mul r3, r7, r3
0055ca14  00 00 53 e3                                      cmp r3, #0
0055ca18  0d 00 00 0a                                      beq #0x55ca54
0055ca1c  00 50 a0 e3                                      mov r5, #0
0055ca20  05 60 a0 e1                                      mov r6, r5
0055ca24  05 00 81 e0                                      add r0, r1, r5
0055ca28  08 10 94 e5                                      ldr r1, [r4, #8]
0055ca2c  5c ff ff eb                                      bl #0x55c7a4
0055ca30  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0055ca34  18 10 94 e5                                      ldr r1, [r4, #0x18]
0055ca38  01 60 86 e2                                      add r6, r6, #1
0055ca3c  58 50 85 e2                                      add r5, r5, #0x58
0055ca40  02 30 61 e0                                      rsb r3, r1, r2
0055ca44  c3 31 a0 e1                                      asr r3, r3, #3
0055ca48  97 03 03 e0                                      mul r3, r7, r3
0055ca4c  03 00 56 e1                                      cmp r6, r3
0055ca50  f3 ff ff 3a                                      blo #0x55ca24
0055ca54  01 00 52 e1                                      cmp r2, r1
0055ca58  02 00 00 0a                                      beq #0x55ca68
0055ca5c  18 00 84 e2                                      add r0, r4, #0x18
0055ca60  08 30 8d e2                                      add r3, sp, #8
0055ca64  9f ff ff eb                                      bl #0x55c8e8
0055ca68  28 20 94 e5                                      ldr r2, [r4, #0x28]
0055ca6c  24 10 94 e5                                      ldr r1, [r4, #0x24]
0055ca70  a3 7b 08 e3                                      movw r7, #0x8ba3
0055ca74  2e 7a 4b e3                                      movt r7, #0xba2e
0055ca78  02 30 61 e0                                      rsb r3, r1, r2
0055ca7c  c3 31 a0 e1                                      asr r3, r3, #3
0055ca80  97 03 03 e0                                      mul r3, r7, r3
0055ca84  00 00 53 e3                                      cmp r3, #0
0055ca88  0d 00 00 0a                                      beq #0x55cac4
0055ca8c  00 50 a0 e3                                      mov r5, #0
0055ca90  05 60 a0 e1                                      mov r6, r5
0055ca94  05 00 81 e0                                      add r0, r1, r5
0055ca98  08 10 94 e5                                      ldr r1, [r4, #8]
0055ca9c  40 ff ff eb                                      bl #0x55c7a4
0055caa0  28 20 94 e5                                      ldr r2, [r4, #0x28]
0055caa4  24 10 94 e5                                      ldr r1, [r4, #0x24]
0055caa8  01 60 86 e2                                      add r6, r6, #1
0055caac  58 50 85 e2                                      add r5, r5, #0x58
0055cab0  02 30 61 e0                                      rsb r3, r1, r2
0055cab4  c3 31 a0 e1                                      asr r3, r3, #3
0055cab8  97 03 03 e0                                      mul r3, r7, r3
0055cabc  03 00 56 e1                                      cmp r6, r3
0055cac0  f3 ff ff 3a                                      blo #0x55ca94
0055cac4  01 00 52 e1                                      cmp r2, r1
0055cac8  02 00 00 0a                                      beq #0x55cad8
0055cacc  24 00 84 e2                                      add r0, r4, #0x24
0055cad0  04 30 8d e2                                      add r3, sp, #4
0055cad4  83 ff ff eb                                      bl #0x55c8e8
0055cad8  14 d0 8d e2                                      add sp, sp, #0x14
0055cadc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0055cae0, declared_size=128, range_size=128, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFontD1Ev
; demangled: glitch::gui::CGUITTFont::~CGUITTFont()
; decoder-mode: arm
0055cae0  10 40 2d e9                                      push {r4, lr}
0055cae4  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0055cae8  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0055caec  00 40 a0 e1                                      mov r4, r0
0055caf0  03 30 8f e0                                      add r3, pc, r3
0055caf4  30 00 90 e5                                      ldr r0, [r0, #0x30]
0055caf8  02 20 93 e7                                      ldr r2, [r3, r2]
0055cafc  00 00 50 e3                                      cmp r0, #0
0055cb00  08 20 82 e2                                      add r2, r2, #8
0055cb04  00 20 84 e5                                      str r2, [r4]
0055cb08  02 00 00 0a                                      beq #0x55cb18
0055cb0c  9c 02 f7 eb                                      bl #0x31d584
0055cb10  00 30 a0 e3                                      mov r3, #0
0055cb14  30 30 84 e5                                      str r3, [r4, #0x30]
0055cb18  04 00 a0 e1                                      mov r0, r4
0055cb1c  96 ff ff eb                                      bl #0x55c97c
0055cb20  08 00 94 e5                                      ldr r0, [r4, #8]
0055cb24  00 00 50 e3                                      cmp r0, #0
0055cb28  02 00 00 0a                                      beq #0x55cb38
0055cb2c  94 02 f7 eb                                      bl #0x31d584
0055cb30  00 30 a0 e3                                      mov r3, #0
0055cb34  08 30 84 e5                                      str r3, [r4, #8]
0055cb38  24 00 84 e2                                      add r0, r4, #0x24
0055cb3c  18 fd ff eb                                      bl #0x55bfa4
0055cb40  18 00 84 e2                                      add r0, r4, #0x18
0055cb44  16 fd ff eb                                      bl #0x55bfa4
0055cb48  0c 00 84 e2                                      add r0, r4, #0xc
0055cb4c  14 fd ff eb                                      bl #0x55bfa4
0055cb50  04 00 a0 e1                                      mov r0, r4
0055cb54  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0055cb58  a0 7f 43 00 50 0d 00 00                          .byte 0xa0, 0x7f, 0x43, 0x00, 0x50, 0x0d, 0x00, 0x00

; FUNCTION 0x0055cb60, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFontD0Ev
; demangled: glitch::gui::CGUITTFont::~CGUITTFont()
; decoder-mode: arm
0055cb60  10 40 2d e9                                      push {r4, lr}
0055cb64  00 40 a0 e1                                      mov r4, r0
0055cb68  dc ff ff eb                                      bl #0x55cae0
0055cb6c  04 00 a0 e1                                      mov r0, r4
0055cb70  ce c5 f6 eb                                      bl #0x30e2b0
0055cb74  04 00 a0 e1                                      mov r0, r4
0055cb78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0055cb7c, declared_size=128, range_size=128, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFontD2Ev
; demangled: glitch::gui::CGUITTFont::~CGUITTFont()
; decoder-mode: arm
0055cb7c  10 40 2d e9                                      push {r4, lr}
0055cb80  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0055cb84  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0055cb88  00 40 a0 e1                                      mov r4, r0
0055cb8c  03 30 8f e0                                      add r3, pc, r3
0055cb90  30 00 90 e5                                      ldr r0, [r0, #0x30]
0055cb94  02 20 93 e7                                      ldr r2, [r3, r2]
0055cb98  00 00 50 e3                                      cmp r0, #0
0055cb9c  08 20 82 e2                                      add r2, r2, #8
0055cba0  00 20 84 e5                                      str r2, [r4]
0055cba4  02 00 00 0a                                      beq #0x55cbb4
0055cba8  75 02 f7 eb                                      bl #0x31d584
0055cbac  00 30 a0 e3                                      mov r3, #0
0055cbb0  30 30 84 e5                                      str r3, [r4, #0x30]
0055cbb4  04 00 a0 e1                                      mov r0, r4
0055cbb8  6f ff ff eb                                      bl #0x55c97c
0055cbbc  08 00 94 e5                                      ldr r0, [r4, #8]
0055cbc0  00 00 50 e3                                      cmp r0, #0
0055cbc4  02 00 00 0a                                      beq #0x55cbd4
0055cbc8  6d 02 f7 eb                                      bl #0x31d584
0055cbcc  00 30 a0 e3                                      mov r3, #0
0055cbd0  08 30 84 e5                                      str r3, [r4, #8]
0055cbd4  24 00 84 e2                                      add r0, r4, #0x24
0055cbd8  f1 fc ff eb                                      bl #0x55bfa4
0055cbdc  18 00 84 e2                                      add r0, r4, #0x18
0055cbe0  ef fc ff eb                                      bl #0x55bfa4
0055cbe4  0c 00 84 e2                                      add r0, r4, #0xc
0055cbe8  ed fc ff eb                                      bl #0x55bfa4
0055cbec  04 00 a0 e1                                      mov r0, r4
0055cbf0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0055cbf4  04 7f 43 00 50 0d 00 00                          .byte 0x04, 0x7f, 0x43, 0x00, 0x50, 0x0d, 0x00, 0x00

; FUNCTION 0x0055d218, declared_size=152, range_size=152, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont15getGlyphByValueEj
; demangled: glitch::gui::CGUITTFont::getGlyphByValue(unsigned int) const
; decoder-mode: arm
0055d218  70 40 2d e9                                      push {r4, r5, r6, lr}
0055d21c  30 30 90 e5                                      ldr r3, [r0, #0x30]
0055d220  08 d0 4d e2                                      sub sp, sp, #8
0055d224  00 40 a0 e1                                      mov r4, r0
0055d228  08 00 93 e5                                      ldr r0, [r3, #8]
0055d22c  ae 9f 06 eb                                      bl #0x7050ec
0055d230  00 50 50 e2                                      subs r5, r0, #0
0055d234  1a 00 00 0a                                      beq #0x55d2a4
0055d238  01 30 45 e2                                      sub r3, r5, #1
0055d23c  58 60 a0 e3                                      mov r6, #0x58
0055d240  96 03 06 e0                                      mul r6, r6, r3
0055d244  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0055d248  06 00 80 e0                                      add r0, r0, r6
0055d24c  08 c0 d0 e5                                      ldrb ip, [r0, #8]
0055d250  00 00 5c e3                                      cmp ip, #0
0055d254  04 00 00 1a                                      bne #0x55d26c
0055d258  30 20 94 e5                                      ldr r2, [r4, #0x30]
0055d25c  08 30 94 e5                                      ldr r3, [r4, #8]
0055d260  05 10 a0 e1                                      mov r1, r5
0055d264  00 c0 8d e5                                      str ip, [sp]
0055d268  63 fe ff eb                                      bl #0x55cbfc
0055d26c  18 00 94 e5                                      ldr r0, [r4, #0x18]
0055d270  06 00 80 e0                                      add r0, r0, r6
0055d274  50 30 90 e5                                      ldr r3, [r0, #0x50]
0055d278  00 00 53 e3                                      cmp r3, #0
0055d27c  08 00 00 0a                                      beq #0x55d2a4
0055d280  08 30 d0 e5                                      ldrb r3, [r0, #8]
0055d284  00 00 53 e3                                      cmp r3, #0
0055d288  05 00 00 1a                                      bne #0x55d2a4
0055d28c  08 30 94 e5                                      ldr r3, [r4, #8]
0055d290  30 20 94 e5                                      ldr r2, [r4, #0x30]
0055d294  01 c0 a0 e3                                      mov ip, #1
0055d298  05 10 a0 e1                                      mov r1, r5
0055d29c  00 c0 8d e5                                      str ip, [sp]
0055d2a0  55 fe ff eb                                      bl #0x55cbfc
0055d2a4  05 00 a0 e1                                      mov r0, r5
0055d2a8  08 d0 8d e2                                      add sp, sp, #8
0055d2ac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0055d2b0, declared_size=144, range_size=144, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont21getWidthFromCharacterEj
; demangled: glitch::gui::CGUITTFont::getWidthFromCharacter(unsigned int) const
; decoder-mode: arm
0055d2b0  70 40 2d e9                                      push {r4, r5, r6, lr}
0055d2b4  00 40 a0 e1                                      mov r4, r0
0055d2b8  01 50 a0 e1                                      mov r5, r1
0055d2bc  d5 ff ff eb                                      bl #0x55d218
0055d2c0  00 00 50 e3                                      cmp r0, #0
0055d2c4  0b 00 00 0a                                      beq #0x55d2f8
0055d2c8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0055d2cc  01 00 40 e2                                      sub r0, r0, #1
0055d2d0  58 30 a0 e3                                      mov r3, #0x58
0055d2d4  93 20 23 e0                                      mla r3, r3, r0, r2
0055d2d8  18 20 93 e5                                      ldr r2, [r3, #0x18]
0055d2dc  14 00 93 e5                                      ldr r0, [r3, #0x14]
0055d2e0  02 00 80 e0                                      add r0, r0, r2
0055d2e4  00 00 50 e3                                      cmp r0, #0
0055d2e8  02 00 00 da                                      ble #0x55d2f8
0055d2ec  38 30 94 e5                                      ldr r3, [r4, #0x38]
0055d2f0  03 00 80 e0                                      add r0, r0, r3
0055d2f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0055d2f8  02 0a 55 e3                                      cmp r5, #0x2000
0055d2fc  08 00 00 2a                                      bhs #0x55d324
0055d300  1f 00 55 e3                                      cmp r5, #0x1f
0055d304  0b 00 00 9a                                      bls #0x55d338
0055d308  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0055d30c  00 00 50 e3                                      cmp r0, #0
0055d310  0c 20 94 d5                                      ldrle r2, [r4, #0xc]
0055d314  38 30 94 d5                                      ldrle r3, [r4, #0x38]
0055d318  0c 00 92 d5                                      ldrle r0, [r2, #0xc]
0055d31c  a0 00 83 d0                                      addle r0, r3, r0, lsr #1
0055d320  70 80 bd e8                                      pop {r4, r5, r6, pc}
0055d324  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0055d328  38 00 94 e5                                      ldr r0, [r4, #0x38]
0055d32c  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0055d330  03 00 80 e0                                      add r0, r0, r3
0055d334  70 80 bd e8                                      pop {r4, r5, r6, pc}
0055d338  00 00 a0 e3                                      mov r0, #0
0055d33c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0055d340, declared_size=120, range_size=120, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont19getCharacterFromPosEPKci
; demangled: glitch::gui::CGUITTFont::getCharacterFromPos(char const*, int) const
; decoder-mode: arm
0055d340  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0055d344  08 d0 4d e2                                      sub sp, sp, #8
0055d348  04 10 8d e5                                      str r1, [sp, #4]
0055d34c  d0 30 d1 e1                                      ldrsb r3, [r1]
0055d350  00 40 a0 e1                                      mov r4, r0
0055d354  02 70 a0 e1                                      mov r7, r2
0055d358  00 00 53 e3                                      cmp r3, #0
0055d35c  13 00 00 0a                                      beq #0x55d3b0
0055d360  00 60 a0 e3                                      mov r6, #0
0055d364  06 50 a0 e1                                      mov r5, r6
0055d368  04 80 8d e2                                      add r8, sp, #4
0055d36c  04 00 00 ea                                      b #0x55d384
0055d370  04 30 9d e5                                      ldr r3, [sp, #4]
0055d374  01 60 86 e2                                      add r6, r6, #1
0055d378  d0 30 d3 e1                                      ldrsb r3, [r3]
0055d37c  00 00 53 e3                                      cmp r3, #0
0055d380  0a 00 00 0a                                      beq #0x55d3b0
0055d384  08 00 a0 e1                                      mov r0, r8
0055d388  9d fa ff eb                                      bl #0x55be04
0055d38c  00 10 a0 e1                                      mov r1, r0
0055d390  04 00 a0 e1                                      mov r0, r4
0055d394  c5 ff ff eb                                      bl #0x55d2b0
0055d398  00 50 85 e0                                      add r5, r5, r0
0055d39c  07 00 55 e1                                      cmp r5, r7
0055d3a0  f2 ff ff ba                                      blt #0x55d370
0055d3a4  06 00 a0 e1                                      mov r0, r6
0055d3a8  08 d0 8d e2                                      add sp, sp, #8
0055d3ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0055d3b0  00 60 e0 e3                                      mvn r6, #0
0055d3b4  fa ff ff ea                                      b #0x55d3a4

; FUNCTION 0x0055d3b8, declared_size=96, range_size=96, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont19getCharacterFromPosEPKwi
; demangled: glitch::gui::CGUITTFont::getCharacterFromPos(wchar_t const*, int) const
; decoder-mode: arm
0055d3b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0055d3bc  01 40 a0 e1                                      mov r4, r1
0055d3c0  00 10 91 e5                                      ldr r1, [r1]
0055d3c4  00 50 a0 e1                                      mov r5, r0
0055d3c8  02 80 a0 e1                                      mov r8, r2
0055d3cc  00 00 51 e3                                      cmp r1, #0
0055d3d0  0d 00 00 0a                                      beq #0x55d40c
0055d3d4  00 60 a0 e3                                      mov r6, #0
0055d3d8  06 70 a0 e1                                      mov r7, r6
0055d3dc  03 00 00 ea                                      b #0x55d3f0
0055d3e0  01 60 86 e2                                      add r6, r6, #1
0055d3e4  06 11 94 e7                                      ldr r1, [r4, r6, lsl #2]
0055d3e8  00 00 51 e3                                      cmp r1, #0
0055d3ec  06 00 00 0a                                      beq #0x55d40c
0055d3f0  05 00 a0 e1                                      mov r0, r5
0055d3f4  ad ff ff eb                                      bl #0x55d2b0
0055d3f8  00 70 87 e0                                      add r7, r7, r0
0055d3fc  08 00 57 e1                                      cmp r7, r8
0055d400  f6 ff ff ba                                      blt #0x55d3e0
0055d404  06 00 a0 e1                                      mov r0, r6
0055d408  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0055d40c  00 60 e0 e3                                      mvn r6, #0
0055d410  06 00 a0 e1                                      mov r0, r6
0055d414  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0055d418, declared_size=112, range_size=112, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont12getDimensionEPKc
; demangled: glitch::gui::CGUITTFont::getDimension(char const*) const
; decoder-mode: arm
0055d418  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0055d41c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0055d420  0c d0 4d e2                                      sub sp, sp, #0xc
0055d424  04 20 8d e5                                      str r2, [sp, #4]
0055d428  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0055d42c  01 50 a0 e1                                      mov r5, r1
0055d430  00 10 a0 e3                                      mov r1, #0
0055d434  0a 00 80 e8                                      stm r0, {r1, r3}
0055d438  d0 30 d2 e1                                      ldrsb r3, [r2]
0055d43c  00 40 a0 e1                                      mov r4, r0
0055d440  01 00 53 e1                                      cmp r3, r1
0055d444  0c 00 00 0a                                      beq #0x55d47c
0055d448  04 70 8d e2                                      add r7, sp, #4
0055d44c  07 00 a0 e1                                      mov r0, r7
0055d450  6b fa ff eb                                      bl #0x55be04
0055d454  00 10 a0 e1                                      mov r1, r0
0055d458  05 00 a0 e1                                      mov r0, r5
0055d45c  00 60 94 e5                                      ldr r6, [r4]
0055d460  92 ff ff eb                                      bl #0x55d2b0
0055d464  04 30 9d e5                                      ldr r3, [sp, #4]
0055d468  06 00 80 e0                                      add r0, r0, r6
0055d46c  00 00 84 e5                                      str r0, [r4]
0055d470  d0 30 d3 e1                                      ldrsb r3, [r3]
0055d474  00 00 53 e3                                      cmp r3, #0
0055d478  f3 ff ff 1a                                      bne #0x55d44c
0055d47c  04 00 a0 e1                                      mov r0, r4
0055d480  0c d0 8d e2                                      add sp, sp, #0xc
0055d484  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0055d488, declared_size=88, range_size=88, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont12getDimensionEPKw
; demangled: glitch::gui::CGUITTFont::getDimension(wchar_t const*) const
; decoder-mode: arm
0055d488  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0055d48c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0055d490  00 60 a0 e3                                      mov r6, #0
0055d494  00 70 52 e2                                      subs r7, r2, #0
0055d498  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0055d49c  01 50 a0 e1                                      mov r5, r1
0055d4a0  00 40 a0 e1                                      mov r4, r0
0055d4a4  00 60 80 e5                                      str r6, [r0]
0055d4a8  04 30 80 e5                                      str r3, [r0, #4]
0055d4ac  09 00 00 0a                                      beq #0x55d4d8
0055d4b0  00 10 97 e5                                      ldr r1, [r7]
0055d4b4  06 00 51 e1                                      cmp r1, r6
0055d4b8  06 00 00 0a                                      beq #0x55d4d8
0055d4bc  05 00 a0 e1                                      mov r0, r5
0055d4c0  7a ff ff eb                                      bl #0x55d2b0
0055d4c4  00 60 86 e0                                      add r6, r6, r0
0055d4c8  00 60 84 e5                                      str r6, [r4]
0055d4cc  04 10 b7 e5                                      ldr r1, [r7, #4]!
0055d4d0  00 00 51 e3                                      cmp r1, #0
0055d4d4  f8 ff ff 1a                                      bne #0x55d4bc
0055d4d8  04 00 a0 e1                                      mov r0, r4
0055d4dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0055d4e0, declared_size=884, range_size=884, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont13drawInTextureEPKcRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb
; demangled: glitch::gui::CGUITTFont::drawInTexture(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::rect<int>, glitch::video::SColor, bool, bool)
; decoder-mode: arm
0055d4e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055d4e4  00 40 a0 e1                                      mov r4, r0
0055d4e8  5c d0 4d e2                                      sub sp, sp, #0x5c
0055d4ec  08 00 90 e5                                      ldr r0, [r0, #8]
0055d4f0  02 80 a0 e1                                      mov r8, r2
0055d4f4  03 a0 a0 e1                                      mov sl, r3
0055d4f8  84 20 dd e5                                      ldrb r2, [sp, #0x84]
0055d4fc  88 30 dd e5                                      ldrb r3, [sp, #0x88]
0055d500  00 00 50 e3                                      cmp r0, #0
0055d504  2c 10 8d e5                                      str r1, [sp, #0x2c]
0055d508  18 20 8d e5                                      str r2, [sp, #0x18]
0055d50c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0055d510  73 00 00 0a                                      beq #0x55d6e4
0055d514  00 30 98 e5                                      ldr r3, [r8]
0055d518  00 00 53 e3                                      cmp r3, #0
0055d51c  70 00 00 0a                                      beq #0x55d6e4
0055d520  01 20 a0 e1                                      mov r2, r1
0055d524  48 00 8d e2                                      add r0, sp, #0x48
0055d528  04 10 a0 e1                                      mov r1, r4
0055d52c  00 30 94 e5                                      ldr r3, [r4]
0055d530  0f e0 a0 e1                                      mov lr, pc
0055d534  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0055d538  08 c0 94 e5                                      ldr ip, [r4, #8]
0055d53c  48 e0 9d e5                                      ldr lr, [sp, #0x48]
0055d540  4c 90 9d e5                                      ldr sb, [sp, #0x4c]
0055d544  0c 10 a0 e1                                      mov r1, ip
0055d548  00 c0 9c e5                                      ldr ip, [ip]
0055d54c  20 e0 8d e5                                      str lr, [sp, #0x20]
0055d550  24 90 8d e5                                      str sb, [sp, #0x24]
0055d554  04 90 9a e5                                      ldr sb, [sl, #4]
0055d558  54 50 8d e2                                      add r5, sp, #0x54
0055d55c  08 20 a0 e1                                      mov r2, r8
0055d560  05 00 a0 e1                                      mov r0, r5
0055d564  00 30 a0 e3                                      mov r3, #0
0055d568  00 60 9a e5                                      ldr r6, [sl]
0055d56c  14 90 8d e5                                      str sb, [sp, #0x14]
0055d570  0f e0 a0 e1                                      mov lr, pc
0055d574  84 f0 9c e5                                      ldr pc, [ip, #0x84]
0055d578  08 30 94 e5                                      ldr r3, [r4, #8]
0055d57c  05 10 a0 e1                                      mov r1, r5
0055d580  03 00 a0 e1                                      mov r0, r3
0055d584  00 30 93 e5                                      ldr r3, [r3]
0055d588  0f e0 a0 e1                                      mov lr, pc
0055d58c  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
0055d590  08 30 94 e5                                      ldr r3, [r4, #8]
0055d594  03 00 a0 e1                                      mov r0, r3
0055d598  00 30 93 e5                                      ldr r3, [r3]
0055d59c  0f e0 a0 e1                                      mov lr, pc
0055d5a0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0055d5a4  08 30 94 e5                                      ldr r3, [r4, #8]
0055d5a8  9c 50 93 e5                                      ldr r5, [r3, #0x9c]
0055d5ac  02 5b 15 e2                                      ands r5, r5, #0x800
0055d5b0  91 00 00 0a                                      beq #0x55d7fc
0055d5b4  18 30 94 e5                                      ldr r3, [r4, #0x18]
0055d5b8  50 30 93 e5                                      ldr r3, [r3, #0x50]
0055d5bc  00 00 53 e3                                      cmp r3, #0
0055d5c0  49 00 00 1a                                      bne #0x55d6ec
0055d5c4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0055d5c8  00 30 d3 e5                                      ldrb r3, [r3]
0055d5cc  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0055d5d0  40 02 9a e8                                      ldm sl, {r6, sb}
0055d5d4  00 00 5e e3                                      cmp lr, #0
0055d5d8  05 00 00 0a                                      beq #0x55d5f4
0055d5dc  08 20 9a e5                                      ldr r2, [sl, #8]
0055d5e0  20 10 9d e5                                      ldr r1, [sp, #0x20]
0055d5e4  02 20 66 e0                                      rsb r2, r6, r2
0055d5e8  02 20 61 e0                                      rsb r2, r1, r2
0055d5ec  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
0055d5f0  c2 60 86 e0                                      add r6, r6, r2, asr #1
0055d5f4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0055d5f8  00 00 52 e3                                      cmp r2, #0
0055d5fc  05 00 00 0a                                      beq #0x55d618
0055d600  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0055d604  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0055d608  02 20 69 e0                                      rsb r2, sb, r2
0055d60c  02 20 6e e0                                      rsb r2, lr, r2
0055d610  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
0055d614  c2 90 89 e0                                      add sb, sb, r2, asr #1
0055d618  00 00 53 e3                                      cmp r3, #0
0055d61c  1d 00 00 0a                                      beq #0x55d698
0055d620  2c 70 8d e2                                      add r7, sp, #0x2c
0055d624  58 a0 a0 e3                                      mov sl, #0x58
0055d628  30 80 8d e2                                      add r8, sp, #0x30
0055d62c  07 00 a0 e1                                      mov r0, r7
0055d630  f3 f9 ff eb                                      bl #0x55be04
0055d634  00 50 a0 e1                                      mov r5, r0
0055d638  05 10 a0 e1                                      mov r1, r5
0055d63c  04 00 a0 e1                                      mov r0, r4
0055d640  f4 fe ff eb                                      bl #0x55d218
0055d644  00 10 50 e2                                      subs r1, r0, #0
0055d648  01 10 41 e2                                      sub r1, r1, #1
0055d64c  04 00 a0 e1                                      mov r0, r4
0055d650  08 20 a0 e1                                      mov r2, r8
0055d654  00 30 a0 e3                                      mov r3, #0
0055d658  06 00 00 0a                                      beq #0x55d678
0055d65c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0055d660  30 60 8d e5                                      str r6, [sp, #0x30]
0055d664  34 90 8d e5                                      str sb, [sp, #0x34]
0055d668  9a c1 21 e0                                      mla r1, sl, r1, ip
0055d66c  80 c0 9d e5                                      ldr ip, [sp, #0x80]
0055d670  00 c0 8d e5                                      str ip, [sp]
0055d674  5c fa ff eb                                      bl #0x55bfec
0055d678  05 10 a0 e1                                      mov r1, r5
0055d67c  04 00 a0 e1                                      mov r0, r4
0055d680  0a ff ff eb                                      bl #0x55d2b0
0055d684  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0055d688  00 60 86 e0                                      add r6, r6, r0
0055d68c  d0 30 d3 e1                                      ldrsb r3, [r3]
0055d690  00 00 53 e3                                      cmp r3, #0
0055d694  e4 ff ff 1a                                      bne #0x55d62c
0055d698  08 30 94 e5                                      ldr r3, [r4, #8]
0055d69c  03 00 a0 e1                                      mov r0, r3
0055d6a0  00 30 93 e5                                      ldr r3, [r3]
0055d6a4  0f e0 a0 e1                                      mov lr, pc
0055d6a8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0055d6ac  08 30 94 e5                                      ldr r3, [r4, #8]
0055d6b0  50 00 8d e2                                      add r0, sp, #0x50
0055d6b4  03 10 a0 e1                                      mov r1, r3
0055d6b8  00 30 93 e5                                      ldr r3, [r3]
0055d6bc  0f e0 a0 e1                                      mov lr, pc
0055d6c0  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0055d6c4  50 00 9d e5                                      ldr r0, [sp, #0x50]
0055d6c8  00 00 50 e3                                      cmp r0, #0
0055d6cc  00 00 00 0a                                      beq #0x55d6d4
0055d6d0  ab ff f6 eb                                      bl #0x31d584
0055d6d4  54 00 9d e5                                      ldr r0, [sp, #0x54]
0055d6d8  00 00 50 e3                                      cmp r0, #0
0055d6dc  00 00 00 0a                                      beq #0x55d6e4
0055d6e0  a7 ff f6 eb                                      bl #0x31d584
0055d6e4  5c d0 8d e2                                      add sp, sp, #0x5c
0055d6e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055d6ec  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0055d6f0  00 00 5e e3                                      cmp lr, #0
0055d6f4  06 00 00 0a                                      beq #0x55d714
0055d6f8  08 20 9a e5                                      ldr r2, [sl, #8]
0055d6fc  00 30 9a e5                                      ldr r3, [sl]
0055d700  20 10 9d e5                                      ldr r1, [sp, #0x20]
0055d704  02 30 63 e0                                      rsb r3, r3, r2
0055d708  03 30 61 e0                                      rsb r3, r1, r3
0055d70c  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0055d710  c3 60 86 e0                                      add r6, r6, r3, asr #1
0055d714  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0055d718  00 00 52 e3                                      cmp r2, #0
0055d71c  42 00 00 1a                                      bne #0x55d82c
0055d720  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0055d724  d0 30 d3 e1                                      ldrsb r3, [r3]
0055d728  00 00 53 e3                                      cmp r3, #0
0055d72c  30 00 00 0a                                      beq #0x55d7f4
0055d730  38 30 8d e2                                      add r3, sp, #0x38
0055d734  2c 70 8d e2                                      add r7, sp, #0x2c
0055d738  28 a0 8d e5                                      str sl, [sp, #0x28]
0055d73c  03 b0 a0 e1                                      mov fp, r3
0055d740  07 00 a0 e1                                      mov r0, r7
0055d744  ae f9 ff eb                                      bl #0x55be04
0055d748  00 50 a0 e1                                      mov r5, r0
0055d74c  05 10 a0 e1                                      mov r1, r5
0055d750  04 00 a0 e1                                      mov r0, r4
0055d754  af fe ff eb                                      bl #0x55d218
0055d758  00 c0 50 e2                                      subs ip, r0, #0
0055d75c  01 c0 4c e2                                      sub ip, ip, #1
0055d760  58 10 a0 e3                                      mov r1, #0x58
0055d764  91 0c 0c e0                                      mul ip, r1, ip
0055d768  04 00 a0 e1                                      mov r0, r4
0055d76c  08 20 a0 e1                                      mov r2, r8
0055d770  0b 30 a0 e1                                      mov r3, fp
0055d774  15 00 00 0a                                      beq #0x55d7d0
0055d778  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0055d77c  18 10 94 e5                                      ldr r1, [r4, #0x18]
0055d780  0c 10 81 e0                                      add r1, r1, ip
0055d784  0c c0 8e e0                                      add ip, lr, ip
0055d788  18 90 9c e5                                      ldr sb, [ip, #0x18]
0055d78c  0c 90 8d e5                                      str sb, [sp, #0xc]
0055d790  1c e0 91 e5                                      ldr lr, [r1, #0x1c]
0055d794  1c c0 9c e5                                      ldr ip, [ip, #0x1c]
0055d798  18 a0 91 e5                                      ldr sl, [r1, #0x18]
0055d79c  00 90 a0 e3                                      mov sb, #0
0055d7a0  0e c0 6c e0                                      rsb ip, ip, lr
0055d7a4  0c e0 9d e5                                      ldr lr, [sp, #0xc]
0055d7a8  00 90 8d e5                                      str sb, [sp]
0055d7ac  14 90 9d e5                                      ldr sb, [sp, #0x14]
0055d7b0  0a a0 6e e0                                      rsb sl, lr, sl
0055d7b4  aa a0 46 e0                                      sub sl, r6, sl, lsr #1
0055d7b8  ac c0 49 e0                                      sub ip, sb, ip, lsr #1
0055d7bc  38 a0 8d e5                                      str sl, [sp, #0x38]
0055d7c0  3c c0 8d e5                                      str ip, [sp, #0x3c]
0055d7c4  54 c0 91 e5                                      ldr ip, [r1, #0x54]
0055d7c8  04 c0 8d e5                                      str ip, [sp, #4]
0055d7cc  4f fa ff eb                                      bl #0x55c110
0055d7d0  05 10 a0 e1                                      mov r1, r5
0055d7d4  04 00 a0 e1                                      mov r0, r4
0055d7d8  b4 fe ff eb                                      bl #0x55d2b0
0055d7dc  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0055d7e0  00 60 86 e0                                      add r6, r6, r0
0055d7e4  d0 30 d3 e1                                      ldrsb r3, [r3]
0055d7e8  00 00 53 e3                                      cmp r3, #0
0055d7ec  d3 ff ff 1a                                      bne #0x55d740
0055d7f0  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0055d7f4  00 30 a0 e3                                      mov r3, #0
0055d7f8  73 ff ff ea                                      b #0x55d5cc
0055d7fc  03 00 a0 e1                                      mov r0, r3
0055d800  01 10 a0 e3                                      mov r1, #1
0055d804  00 30 93 e5                                      ldr r3, [r3]
0055d808  0f e0 a0 e1                                      mov lr, pc
0055d80c  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
0055d810  08 00 94 e5                                      ldr r0, [r4, #8]
0055d814  08 10 a0 e1                                      mov r1, r8
0055d818  40 20 8d e2                                      add r2, sp, #0x40
0055d81c  44 50 8d e5                                      str r5, [sp, #0x44]
0055d820  40 50 8d e5                                      str r5, [sp, #0x40]
0055d824  ea 08 01 eb                                      bl #0x59fbd4
0055d828  61 ff ff ea                                      b #0x55d5b4
0055d82c  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0055d830  04 30 9a e5                                      ldr r3, [sl, #4]
0055d834  24 90 9d e5                                      ldr sb, [sp, #0x24]
0055d838  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0055d83c  02 30 63 e0                                      rsb r3, r3, r2
0055d840  03 30 69 e0                                      rsb r3, sb, r3
0055d844  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0055d848  c3 e0 8e e0                                      add lr, lr, r3, asr #1
0055d84c  14 e0 8d e5                                      str lr, [sp, #0x14]
0055d850  b2 ff ff ea                                      b #0x55d720

; FUNCTION 0x0055d854, declared_size=612, range_size=612, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont4drawEPKcRKNS_4core4rectIiEENS_5video6SColorEbbPS7_
; demangled: glitch::gui::CGUITTFont::draw(char const*, glitch::core::rect<int> const&, glitch::video::SColor, bool, bool, glitch::core::rect<int> const*)
; decoder-mode: arm
0055d854  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055d858  00 40 a0 e1                                      mov r4, r0
0055d85c  44 d0 4d e2                                      sub sp, sp, #0x44
0055d860  08 00 90 e5                                      ldr r0, [r0, #8]
0055d864  02 b0 a0 e1                                      mov fp, r2
0055d868  20 30 8d e5                                      str r3, [sp, #0x20]
0055d86c  68 20 dd e5                                      ldrb r2, [sp, #0x68]
0055d870  6c 30 dd e5                                      ldrb r3, [sp, #0x6c]
0055d874  00 00 50 e3                                      cmp r0, #0
0055d878  24 10 8d e5                                      str r1, [sp, #0x24]
0055d87c  70 80 9d e5                                      ldr r8, [sp, #0x70]
0055d880  0c 20 8d e5                                      str r2, [sp, #0xc]
0055d884  10 30 8d e5                                      str r3, [sp, #0x10]
0055d888  42 00 00 0a                                      beq #0x55d998
0055d88c  01 20 a0 e1                                      mov r2, r1
0055d890  00 30 94 e5                                      ldr r3, [r4]
0055d894  04 10 a0 e1                                      mov r1, r4
0055d898  38 00 8d e2                                      add r0, sp, #0x38
0055d89c  0f e0 a0 e1                                      mov lr, pc
0055d8a0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0055d8a4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0055d8a8  38 20 9d e5                                      ldr r2, [sp, #0x38]
0055d8ac  18 30 94 e5                                      ldr r3, [r4, #0x18]
0055d8b0  18 10 8d e5                                      str r1, [sp, #0x18]
0055d8b4  14 20 8d e5                                      str r2, [sp, #0x14]
0055d8b8  50 30 93 e5                                      ldr r3, [r3, #0x50]
0055d8bc  40 02 9b e8                                      ldm fp, {r6, sb}
0055d8c0  00 00 53 e3                                      cmp r3, #0
0055d8c4  35 00 00 1a                                      bne #0x55d9a0
0055d8c8  24 30 9d e5                                      ldr r3, [sp, #0x24]
0055d8cc  00 30 d3 e5                                      ldrb r3, [r3]
0055d8d0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0055d8d4  00 00 51 e3                                      cmp r1, #0
0055d8d8  05 00 00 0a                                      beq #0x55d8f4
0055d8dc  08 20 9b e5                                      ldr r2, [fp, #8]
0055d8e0  14 10 9d e5                                      ldr r1, [sp, #0x14]
0055d8e4  02 20 66 e0                                      rsb r2, r6, r2
0055d8e8  02 20 61 e0                                      rsb r2, r1, r2
0055d8ec  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
0055d8f0  c2 60 86 e0                                      add r6, r6, r2, asr #1
0055d8f4  10 20 9d e5                                      ldr r2, [sp, #0x10]
0055d8f8  00 00 52 e3                                      cmp r2, #0
0055d8fc  05 00 00 0a                                      beq #0x55d918
0055d900  0c 20 9b e5                                      ldr r2, [fp, #0xc]
0055d904  18 b0 9d e5                                      ldr fp, [sp, #0x18]
0055d908  02 20 69 e0                                      rsb r2, sb, r2
0055d90c  02 20 6b e0                                      rsb r2, fp, r2
0055d910  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
0055d914  c2 90 89 e0                                      add sb, sb, r2, asr #1
0055d918  00 00 53 e3                                      cmp r3, #0
0055d91c  1d 00 00 0a                                      beq #0x55d998
0055d920  24 70 8d e2                                      add r7, sp, #0x24
0055d924  58 b0 a0 e3                                      mov fp, #0x58
0055d928  28 a0 8d e2                                      add sl, sp, #0x28
0055d92c  07 00 a0 e1                                      mov r0, r7
0055d930  33 f9 ff eb                                      bl #0x55be04
0055d934  00 50 a0 e1                                      mov r5, r0
0055d938  05 10 a0 e1                                      mov r1, r5
0055d93c  04 00 a0 e1                                      mov r0, r4
0055d940  34 fe ff eb                                      bl #0x55d218
0055d944  00 10 50 e2                                      subs r1, r0, #0
0055d948  01 10 41 e2                                      sub r1, r1, #1
0055d94c  04 00 a0 e1                                      mov r0, r4
0055d950  0a 20 a0 e1                                      mov r2, sl
0055d954  08 30 a0 e1                                      mov r3, r8
0055d958  06 00 00 0a                                      beq #0x55d978
0055d95c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0055d960  28 60 8d e5                                      str r6, [sp, #0x28]
0055d964  2c 90 8d e5                                      str sb, [sp, #0x2c]
0055d968  9b c1 21 e0                                      mla r1, fp, r1, ip
0055d96c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0055d970  00 c0 8d e5                                      str ip, [sp]
0055d974  9c f9 ff eb                                      bl #0x55bfec
0055d978  05 10 a0 e1                                      mov r1, r5
0055d97c  04 00 a0 e1                                      mov r0, r4
0055d980  4a fe ff eb                                      bl #0x55d2b0
0055d984  24 30 9d e5                                      ldr r3, [sp, #0x24]
0055d988  00 60 86 e0                                      add r6, r6, r0
0055d98c  d0 30 d3 e1                                      ldrsb r3, [r3]
0055d990  00 00 53 e3                                      cmp r3, #0
0055d994  e4 ff ff 1a                                      bne #0x55d92c
0055d998  44 d0 8d e2                                      add sp, sp, #0x44
0055d99c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055d9a0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0055d9a4  10 20 9d e5                                      ldr r2, [sp, #0x10]
0055d9a8  00 00 53 e3                                      cmp r3, #0
0055d9ac  08 a0 9b 15                                      ldrne sl, [fp, #8]
0055d9b0  14 10 9d 15                                      ldrne r1, [sp, #0x14]
0055d9b4  06 a0 a0 01                                      moveq sl, r6
0055d9b8  0a a0 66 10                                      rsbne sl, r6, sl
0055d9bc  0a a0 61 10                                      rsbne sl, r1, sl
0055d9c0  aa af 8a 10                                      addne sl, sl, sl, lsr #31
0055d9c4  ca a0 86 10                                      addne sl, r6, sl, asr #1
0055d9c8  00 00 52 e3                                      cmp r2, #0
0055d9cc  0c 30 9b 15                                      ldrne r3, [fp, #0xc]
0055d9d0  18 10 9d 15                                      ldrne r1, [sp, #0x18]
0055d9d4  08 90 8d 05                                      streq sb, [sp, #8]
0055d9d8  03 30 69 10                                      rsbne r3, sb, r3
0055d9dc  03 30 61 10                                      rsbne r3, r1, r3
0055d9e0  a3 3f 83 10                                      addne r3, r3, r3, lsr #31
0055d9e4  c3 30 89 10                                      addne r3, sb, r3, asr #1
0055d9e8  08 30 8d 15                                      strne r3, [sp, #8]
0055d9ec  24 30 9d e5                                      ldr r3, [sp, #0x24]
0055d9f0  d0 30 d3 e1                                      ldrsb r3, [r3]
0055d9f4  00 00 53 e3                                      cmp r3, #0
0055d9f8  b4 ff ff 0a                                      beq #0x55d8d0
0055d9fc  24 70 8d e2                                      add r7, sp, #0x24
0055da00  30 90 8d e2                                      add sb, sp, #0x30
0055da04  1c b0 8d e5                                      str fp, [sp, #0x1c]
0055da08  07 00 a0 e1                                      mov r0, r7
0055da0c  fc f8 ff eb                                      bl #0x55be04
0055da10  00 50 a0 e1                                      mov r5, r0
0055da14  05 10 a0 e1                                      mov r1, r5
0055da18  04 00 a0 e1                                      mov r0, r4
0055da1c  fd fd ff eb                                      bl #0x55d218
0055da20  00 10 50 e2                                      subs r1, r0, #0
0055da24  58 20 a0 e3                                      mov r2, #0x58
0055da28  01 10 41 e2                                      sub r1, r1, #1
0055da2c  92 01 01 e0                                      mul r1, r2, r1
0055da30  04 00 a0 e1                                      mov r0, r4
0055da34  09 20 a0 e1                                      mov r2, sb
0055da38  08 30 a0 e1                                      mov r3, r8
0055da3c  12 00 00 0a                                      beq #0x55da8c
0055da40  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0055da44  18 c0 94 e5                                      ldr ip, [r4, #0x18]
0055da48  01 c0 8c e0                                      add ip, ip, r1
0055da4c  01 10 8e e0                                      add r1, lr, r1
0055da50  1c b0 9c e5                                      ldr fp, [ip, #0x1c]
0055da54  1c e0 91 e5                                      ldr lr, [r1, #0x1c]
0055da58  18 60 91 e5                                      ldr r6, [r1, #0x18]
0055da5c  0c 10 a0 e1                                      mov r1, ip
0055da60  0b e0 6e e0                                      rsb lr, lr, fp
0055da64  18 b0 9c e5                                      ldr fp, [ip, #0x18]
0055da68  0b 60 66 e0                                      rsb r6, r6, fp
0055da6c  08 b0 9d e5                                      ldr fp, [sp, #8]
0055da70  a6 60 4a e0                                      sub r6, sl, r6, lsr #1
0055da74  30 60 8d e5                                      str r6, [sp, #0x30]
0055da78  ae e0 4b e0                                      sub lr, fp, lr, lsr #1
0055da7c  34 e0 8d e5                                      str lr, [sp, #0x34]
0055da80  54 c0 9c e5                                      ldr ip, [ip, #0x54]
0055da84  00 c0 8d e5                                      str ip, [sp]
0055da88  57 f9 ff eb                                      bl #0x55bfec
0055da8c  05 10 a0 e1                                      mov r1, r5
0055da90  04 00 a0 e1                                      mov r0, r4
0055da94  05 fe ff eb                                      bl #0x55d2b0
0055da98  24 30 9d e5                                      ldr r3, [sp, #0x24]
0055da9c  00 a0 8a e0                                      add sl, sl, r0
0055daa0  d0 30 d3 e1                                      ldrsb r3, [r3]
0055daa4  00 00 53 e3                                      cmp r3, #0
0055daa8  d6 ff ff 1a                                      bne #0x55da08
0055daac  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
0055dab0  40 02 9b e8                                      ldm fp, {r6, sb}
0055dab4  85 ff ff ea                                      b #0x55d8d0

; FUNCTION 0x0055dab8, declared_size=152, range_size=152, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont9getHeightEPKc
; demangled: glitch::gui::CGUITTFont::getHeight(char const*) const
; decoder-mode: arm
0055dab8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0055dabc  08 d0 4d e2                                      sub sp, sp, #8
0055dac0  08 70 8d e2                                      add r7, sp, #8
0055dac4  04 10 27 e5                                      str r1, [r7, #-4]!
0055dac8  00 50 a0 e1                                      mov r5, r0
0055dacc  00 60 a0 e3                                      mov r6, #0
0055dad0  58 80 a0 e3                                      mov r8, #0x58
0055dad4  04 30 9d e5                                      ldr r3, [sp, #4]
0055dad8  07 00 a0 e1                                      mov r0, r7
0055dadc  d0 30 d3 e1                                      ldrsb r3, [r3]
0055dae0  00 00 53 e3                                      cmp r3, #0
0055dae4  11 00 00 0a                                      beq #0x55db30
0055dae8  c5 f8 ff eb                                      bl #0x55be04
0055daec  00 40 a0 e1                                      mov r4, r0
0055daf0  04 10 a0 e1                                      mov r1, r4
0055daf4  05 00 a0 e1                                      mov r0, r5
0055daf8  c6 fd ff eb                                      bl #0x55d218
0055dafc  00 00 50 e3                                      cmp r0, #0
0055db00  0d 00 00 0a                                      beq #0x55db3c
0055db04  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0055db08  01 00 40 e2                                      sub r0, r0, #1
0055db0c  98 30 20 e0                                      mla r0, r8, r0, r3
0055db10  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0055db14  03 00 56 e1                                      cmp r6, r3
0055db18  03 60 a0 b1                                      movlt r6, r3
0055db1c  04 30 9d e5                                      ldr r3, [sp, #4]
0055db20  07 00 a0 e1                                      mov r0, r7
0055db24  d0 30 d3 e1                                      ldrsb r3, [r3]
0055db28  00 00 53 e3                                      cmp r3, #0
0055db2c  ed ff ff 1a                                      bne #0x55dae8
0055db30  06 00 a0 e1                                      mov r0, r6
0055db34  08 d0 8d e2                                      add sp, sp, #8
0055db38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0055db3c  1f 00 54 e3                                      cmp r4, #0x1f
0055db40  e3 ff ff 9a                                      bls #0x55dad4
0055db44  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0055db48  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0055db4c  f0 ff ff ea                                      b #0x55db14

; FUNCTION 0x0055db50, declared_size=136, range_size=136, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont9getHeightEPKw
; demangled: glitch::gui::CGUITTFont::getHeight(wchar_t const*) const
; decoder-mode: arm
0055db50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0055db54  00 40 91 e5                                      ldr r4, [r1]
0055db58  00 70 a0 e1                                      mov r7, r0
0055db5c  00 00 54 e3                                      cmp r4, #0
0055db60  04 50 a0 01                                      moveq r5, r4
0055db64  19 00 00 0a                                      beq #0x55dbd0
0055db68  01 60 a0 e1                                      mov r6, r1
0055db6c  00 50 a0 e3                                      mov r5, #0
0055db70  58 80 a0 e3                                      mov r8, #0x58
0055db74  08 00 00 ea                                      b #0x55db9c
0055db78  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0055db7c  01 00 40 e2                                      sub r0, r0, #1
0055db80  04 40 b6 e5                                      ldr r4, [r6, #4]!
0055db84  98 30 20 e0                                      mla r0, r8, r0, r3
0055db88  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0055db8c  00 00 55 e1                                      cmp r5, r0
0055db90  00 50 a0 b1                                      movlt r5, r0
0055db94  00 00 54 e3                                      cmp r4, #0
0055db98  0c 00 00 0a                                      beq #0x55dbd0
0055db9c  04 10 a0 e1                                      mov r1, r4
0055dba0  07 00 a0 e1                                      mov r0, r7
0055dba4  9b fd ff eb                                      bl #0x55d218
0055dba8  00 00 50 e3                                      cmp r0, #0
0055dbac  f1 ff ff 1a                                      bne #0x55db78
0055dbb0  1f 00 54 e3                                      cmp r4, #0x1f
0055dbb4  0c 30 97 85                                      ldrhi r3, [r7, #0xc]
0055dbb8  04 40 b6 e5                                      ldr r4, [r6, #4]!
0055dbbc  0c 00 93 85                                      ldrhi r0, [r3, #0xc]
0055dbc0  00 00 55 e1                                      cmp r5, r0
0055dbc4  00 50 a0 b1                                      movlt r5, r0
0055dbc8  00 00 54 e3                                      cmp r4, #0
0055dbcc  f2 ff ff 1a                                      bne #0x55db9c
0055dbd0  05 00 a0 e1                                      mov r0, r5
0055dbd4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0055dbd8, declared_size=152, range_size=152, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZNK6glitch3gui10CGUITTFont14getGlyphByCharEw
; demangled: glitch::gui::CGUITTFont::getGlyphByChar(wchar_t) const
; decoder-mode: arm
0055dbd8  70 40 2d e9                                      push {r4, r5, r6, lr}
0055dbdc  30 30 90 e5                                      ldr r3, [r0, #0x30]
0055dbe0  08 d0 4d e2                                      sub sp, sp, #8
0055dbe4  00 40 a0 e1                                      mov r4, r0
0055dbe8  08 00 93 e5                                      ldr r0, [r3, #8]
0055dbec  3e 9d 06 eb                                      bl #0x7050ec
0055dbf0  00 50 50 e2                                      subs r5, r0, #0
0055dbf4  1a 00 00 0a                                      beq #0x55dc64
0055dbf8  01 30 45 e2                                      sub r3, r5, #1
0055dbfc  58 60 a0 e3                                      mov r6, #0x58
0055dc00  96 03 06 e0                                      mul r6, r6, r3
0055dc04  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0055dc08  06 00 80 e0                                      add r0, r0, r6
0055dc0c  08 c0 d0 e5                                      ldrb ip, [r0, #8]
0055dc10  00 00 5c e3                                      cmp ip, #0
0055dc14  04 00 00 1a                                      bne #0x55dc2c
0055dc18  30 20 94 e5                                      ldr r2, [r4, #0x30]
0055dc1c  08 30 94 e5                                      ldr r3, [r4, #8]
0055dc20  05 10 a0 e1                                      mov r1, r5
0055dc24  00 c0 8d e5                                      str ip, [sp]
0055dc28  f3 fb ff eb                                      bl #0x55cbfc
0055dc2c  18 00 94 e5                                      ldr r0, [r4, #0x18]
0055dc30  06 00 80 e0                                      add r0, r0, r6
0055dc34  50 30 90 e5                                      ldr r3, [r0, #0x50]
0055dc38  00 00 53 e3                                      cmp r3, #0
0055dc3c  08 00 00 0a                                      beq #0x55dc64
0055dc40  08 30 d0 e5                                      ldrb r3, [r0, #8]
0055dc44  00 00 53 e3                                      cmp r3, #0
0055dc48  05 00 00 1a                                      bne #0x55dc64
0055dc4c  08 30 94 e5                                      ldr r3, [r4, #8]
0055dc50  30 20 94 e5                                      ldr r2, [r4, #0x30]
0055dc54  01 c0 a0 e3                                      mov ip, #1
0055dc58  05 10 a0 e1                                      mov r1, r5
0055dc5c  00 c0 8d e5                                      str ip, [sp]
0055dc60  e5 fb ff eb                                      bl #0x55cbfc
0055dc64  05 00 a0 e1                                      mov r0, r5
0055dc68  08 d0 8d e2                                      add sp, sp, #8
0055dc6c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0055dc70, declared_size=944, range_size=944, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb
; demangled: glitch::gui::CGUITTFont::drawInTexture(wchar_t const*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::rect<int>, glitch::video::SColor, bool, bool)
; decoder-mode: arm
0055dc70  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055dc74  00 40 a0 e1                                      mov r4, r0
0055dc78  ac d0 4d e2                                      sub sp, sp, #0xac
0055dc7c  08 00 90 e5                                      ldr r0, [r0, #8]
0055dc80  02 80 a0 e1                                      mov r8, r2
0055dc84  03 a0 a0 e1                                      mov sl, r3
0055dc88  d4 20 dd e5                                      ldrb r2, [sp, #0xd4]
0055dc8c  d8 30 dd e5                                      ldrb r3, [sp, #0xd8]
0055dc90  00 00 50 e3                                      cmp r0, #0
0055dc94  01 50 a0 e1                                      mov r5, r1
0055dc98  1c 20 8d e5                                      str r2, [sp, #0x1c]
0055dc9c  20 30 8d e5                                      str r3, [sp, #0x20]
0055dca0  81 00 00 0a                                      beq #0x55deac
0055dca4  00 30 98 e5                                      ldr r3, [r8]
0055dca8  00 00 53 e3                                      cmp r3, #0
0055dcac  7e 00 00 0a                                      beq #0x55deac
0055dcb0  34 90 8d e2                                      add sb, sp, #0x34
0055dcb4  05 20 a0 e1                                      mov r2, r5
0055dcb8  00 30 94 e5                                      ldr r3, [r4]
0055dcbc  94 00 8d e2                                      add r0, sp, #0x94
0055dcc0  04 10 a0 e1                                      mov r1, r4
0055dcc4  18 90 8d e5                                      str sb, [sp, #0x18]
0055dcc8  0f e0 a0 e1                                      mov lr, pc
0055dccc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055dcd0  94 e0 9d e5                                      ldr lr, [sp, #0x94]
0055dcd4  98 c0 9d e5                                      ldr ip, [sp, #0x98]
0055dcd8  05 10 a0 e1                                      mov r1, r5
0055dcdc  24 e0 8d e5                                      str lr, [sp, #0x24]
0055dce0  28 c0 8d e5                                      str ip, [sp, #0x28]
0055dce4  04 30 9a e5                                      ldr r3, [sl, #4]
0055dce8  a4 20 8d e2                                      add r2, sp, #0xa4
0055dcec  18 00 9d e5                                      ldr r0, [sp, #0x18]
0055dcf0  00 60 9a e5                                      ldr r6, [sl]
0055dcf4  14 30 8d e5                                      str r3, [sp, #0x14]
0055dcf8  7f 20 f7 eb                                      bl #0x325efc
0055dcfc  08 c0 94 e5                                      ldr ip, [r4, #8]
0055dd00  a0 50 8d e2                                      add r5, sp, #0xa0
0055dd04  08 20 a0 e1                                      mov r2, r8
0055dd08  0c 10 a0 e1                                      mov r1, ip
0055dd0c  05 00 a0 e1                                      mov r0, r5
0055dd10  00 c0 9c e5                                      ldr ip, [ip]
0055dd14  00 30 a0 e3                                      mov r3, #0
0055dd18  0f e0 a0 e1                                      mov lr, pc
0055dd1c  84 f0 9c e5                                      ldr pc, [ip, #0x84]
0055dd20  08 30 94 e5                                      ldr r3, [r4, #8]
0055dd24  05 10 a0 e1                                      mov r1, r5
0055dd28  03 00 a0 e1                                      mov r0, r3
0055dd2c  00 30 93 e5                                      ldr r3, [r3]
0055dd30  0f e0 a0 e1                                      mov lr, pc
0055dd34  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
0055dd38  08 30 94 e5                                      ldr r3, [r4, #8]
0055dd3c  03 00 a0 e1                                      mov r0, r3
0055dd40  00 30 93 e5                                      ldr r3, [r3]
0055dd44  0f e0 a0 e1                                      mov lr, pc
0055dd48  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0055dd4c  08 30 94 e5                                      ldr r3, [r4, #8]
0055dd50  9c 50 93 e5                                      ldr r5, [r3, #0x9c]
0055dd54  02 5b 15 e2                                      ands r5, r5, #0x800
0055dd58  9a 00 00 0a                                      beq #0x55dfc8
0055dd5c  18 30 94 e5                                      ldr r3, [r4, #0x18]
0055dd60  50 30 93 e5                                      ldr r3, [r3, #0x50]
0055dd64  00 00 53 e3                                      cmp r3, #0
0055dd68  51 00 00 1a                                      bne #0x55deb4
0055dd6c  78 30 9d e5                                      ldr r3, [sp, #0x78]
0055dd70  00 10 93 e5                                      ldr r1, [r3]
0055dd74  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0055dd78  40 02 9a e8                                      ldm sl, {r6, sb}
0055dd7c  00 00 5c e3                                      cmp ip, #0
0055dd80  05 00 00 0a                                      beq #0x55dd9c
0055dd84  08 30 9a e5                                      ldr r3, [sl, #8]
0055dd88  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0055dd8c  03 30 66 e0                                      rsb r3, r6, r3
0055dd90  03 30 6e e0                                      rsb r3, lr, r3
0055dd94  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0055dd98  c3 60 86 e0                                      add r6, r6, r3, asr #1
0055dd9c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0055dda0  00 00 52 e3                                      cmp r2, #0
0055dda4  05 00 00 0a                                      beq #0x55ddc0
0055dda8  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0055ddac  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0055ddb0  03 30 69 e0                                      rsb r3, sb, r3
0055ddb4  03 30 6c e0                                      rsb r3, ip, r3
0055ddb8  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0055ddbc  c3 90 89 e0                                      add sb, sb, r3, asr #1
0055ddc0  00 00 51 e3                                      cmp r1, #0
0055ddc4  1e 00 00 0a                                      beq #0x55de44
0055ddc8  04 50 a0 e3                                      mov r5, #4
0055ddcc  00 70 a0 e3                                      mov r7, #0
0055ddd0  58 a0 a0 e3                                      mov sl, #0x58
0055ddd4  7c 80 8d e2                                      add r8, sp, #0x7c
0055ddd8  04 00 a0 e1                                      mov r0, r4
0055dddc  7d ff ff eb                                      bl #0x55dbd8
0055dde0  00 10 50 e2                                      subs r1, r0, #0
0055dde4  01 10 41 e2                                      sub r1, r1, #1
0055dde8  04 00 a0 e1                                      mov r0, r4
0055ddec  08 20 a0 e1                                      mov r2, r8
0055ddf0  00 30 a0 e3                                      mov r3, #0
0055ddf4  06 00 00 0a                                      beq #0x55de14
0055ddf8  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0055ddfc  7c 60 8d e5                                      str r6, [sp, #0x7c]
0055de00  80 90 8d e5                                      str sb, [sp, #0x80]
0055de04  9a c1 21 e0                                      mla r1, sl, r1, ip
0055de08  d0 c0 9d e5                                      ldr ip, [sp, #0xd0]
0055de0c  00 c0 8d e5                                      str ip, [sp]
0055de10  75 f8 ff eb                                      bl #0x55bfec
0055de14  78 30 9d e5                                      ldr r3, [sp, #0x78]
0055de18  04 00 a0 e1                                      mov r0, r4
0055de1c  07 10 93 e7                                      ldr r1, [r3, r7]
0055de20  22 fd ff eb                                      bl #0x55d2b0
0055de24  78 20 9d e5                                      ldr r2, [sp, #0x78]
0055de28  04 30 85 e2                                      add r3, r5, #4
0055de2c  05 70 a0 e1                                      mov r7, r5
0055de30  05 10 92 e7                                      ldr r1, [r2, r5]
0055de34  00 60 86 e0                                      add r6, r6, r0
0055de38  03 50 a0 e1                                      mov r5, r3
0055de3c  00 00 51 e3                                      cmp r1, #0
0055de40  e4 ff ff 1a                                      bne #0x55ddd8
0055de44  08 30 94 e5                                      ldr r3, [r4, #8]
0055de48  03 00 a0 e1                                      mov r0, r3
0055de4c  00 30 93 e5                                      ldr r3, [r3]
0055de50  0f e0 a0 e1                                      mov lr, pc
0055de54  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0055de58  08 30 94 e5                                      ldr r3, [r4, #8]
0055de5c  9c 00 8d e2                                      add r0, sp, #0x9c
0055de60  03 10 a0 e1                                      mov r1, r3
0055de64  00 30 93 e5                                      ldr r3, [r3]
0055de68  0f e0 a0 e1                                      mov lr, pc
0055de6c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0055de70  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
0055de74  00 00 50 e3                                      cmp r0, #0
0055de78  00 00 00 0a                                      beq #0x55de80
0055de7c  c0 fd f6 eb                                      bl #0x31d584
0055de80  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
0055de84  00 00 50 e3                                      cmp r0, #0
0055de88  00 00 00 0a                                      beq #0x55de90
0055de8c  bc fd f6 eb                                      bl #0x31d584
0055de90  78 00 9d e5                                      ldr r0, [sp, #0x78]
0055de94  18 20 9d e5                                      ldr r2, [sp, #0x18]
0055de98  02 00 50 e1                                      cmp r0, r2
0055de9c  02 00 00 0a                                      beq #0x55deac
0055dea0  00 00 50 e3                                      cmp r0, #0
0055dea4  00 00 00 0a                                      beq #0x55deac
0055dea8  68 c9 f6 eb                                      bl #0x310450
0055deac  ac d0 8d e2                                      add sp, sp, #0xac
0055deb0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055deb4  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
0055deb8  00 00 59 e3                                      cmp sb, #0
0055debc  06 00 00 0a                                      beq #0x55dedc
0055dec0  08 20 9a e5                                      ldr r2, [sl, #8]
0055dec4  00 30 9a e5                                      ldr r3, [sl]
0055dec8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0055decc  02 30 63 e0                                      rsb r3, r3, r2
0055ded0  03 30 6c e0                                      rsb r3, ip, r3
0055ded4  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0055ded8  c3 60 86 e0                                      add r6, r6, r3, asr #1
0055dedc  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0055dee0  00 00 5e e3                                      cmp lr, #0
0055dee4  43 00 00 1a                                      bne #0x55dff8
0055dee8  78 30 9d e5                                      ldr r3, [sp, #0x78]
0055deec  00 10 93 e5                                      ldr r1, [r3]
0055def0  00 00 51 e3                                      cmp r1, #0
0055def4  9e ff ff 0a                                      beq #0x55dd74
0055def8  84 30 8d e2                                      add r3, sp, #0x84
0055defc  00 70 a0 e3                                      mov r7, #0
0055df00  04 50 a0 e3                                      mov r5, #4
0055df04  2c a0 8d e5                                      str sl, [sp, #0x2c]
0055df08  03 b0 a0 e1                                      mov fp, r3
0055df0c  04 00 a0 e1                                      mov r0, r4
0055df10  30 ff ff eb                                      bl #0x55dbd8
0055df14  00 c0 50 e2                                      subs ip, r0, #0
0055df18  01 c0 4c e2                                      sub ip, ip, #1
0055df1c  58 e0 a0 e3                                      mov lr, #0x58
0055df20  9e 0c 0c e0                                      mul ip, lr, ip
0055df24  04 00 a0 e1                                      mov r0, r4
0055df28  08 20 a0 e1                                      mov r2, r8
0055df2c  0b 30 a0 e1                                      mov r3, fp
0055df30  15 00 00 0a                                      beq #0x55df8c
0055df34  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0055df38  18 10 94 e5                                      ldr r1, [r4, #0x18]
0055df3c  0c 10 81 e0                                      add r1, r1, ip
0055df40  0c c0 8e e0                                      add ip, lr, ip
0055df44  18 90 9c e5                                      ldr sb, [ip, #0x18]
0055df48  0c 90 8d e5                                      str sb, [sp, #0xc]
0055df4c  1c e0 91 e5                                      ldr lr, [r1, #0x1c]
0055df50  1c c0 9c e5                                      ldr ip, [ip, #0x1c]
0055df54  18 a0 91 e5                                      ldr sl, [r1, #0x18]
0055df58  00 90 a0 e3                                      mov sb, #0
0055df5c  0e c0 6c e0                                      rsb ip, ip, lr
0055df60  0c e0 9d e5                                      ldr lr, [sp, #0xc]
0055df64  00 90 8d e5                                      str sb, [sp]
0055df68  14 90 9d e5                                      ldr sb, [sp, #0x14]
0055df6c  0a a0 6e e0                                      rsb sl, lr, sl
0055df70  aa a0 46 e0                                      sub sl, r6, sl, lsr #1
0055df74  ac c0 49 e0                                      sub ip, sb, ip, lsr #1
0055df78  84 a0 8d e5                                      str sl, [sp, #0x84]
0055df7c  88 c0 8d e5                                      str ip, [sp, #0x88]
0055df80  54 c0 91 e5                                      ldr ip, [r1, #0x54]
0055df84  04 c0 8d e5                                      str ip, [sp, #4]
0055df88  60 f8 ff eb                                      bl #0x55c110
0055df8c  78 30 9d e5                                      ldr r3, [sp, #0x78]
0055df90  04 00 a0 e1                                      mov r0, r4
0055df94  07 10 93 e7                                      ldr r1, [r3, r7]
0055df98  c4 fc ff eb                                      bl #0x55d2b0
0055df9c  78 30 9d e5                                      ldr r3, [sp, #0x78]
0055dfa0  04 20 85 e2                                      add r2, r5, #4
0055dfa4  05 70 a0 e1                                      mov r7, r5
0055dfa8  05 10 93 e7                                      ldr r1, [r3, r5]
0055dfac  00 60 86 e0                                      add r6, r6, r0
0055dfb0  02 50 a0 e1                                      mov r5, r2
0055dfb4  00 00 51 e3                                      cmp r1, #0
0055dfb8  d3 ff ff 1a                                      bne #0x55df0c
0055dfbc  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
0055dfc0  00 10 93 e5                                      ldr r1, [r3]
0055dfc4  6a ff ff ea                                      b #0x55dd74
0055dfc8  03 00 a0 e1                                      mov r0, r3
0055dfcc  01 10 a0 e3                                      mov r1, #1
0055dfd0  00 30 93 e5                                      ldr r3, [r3]
0055dfd4  0f e0 a0 e1                                      mov lr, pc
0055dfd8  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
0055dfdc  08 00 94 e5                                      ldr r0, [r4, #8]
0055dfe0  08 10 a0 e1                                      mov r1, r8
0055dfe4  8c 20 8d e2                                      add r2, sp, #0x8c
0055dfe8  90 50 8d e5                                      str r5, [sp, #0x90]
0055dfec  8c 50 8d e5                                      str r5, [sp, #0x8c]
0055dff0  f7 06 01 eb                                      bl #0x59fbd4
0055dff4  58 ff ff ea                                      b #0x55dd5c
0055dff8  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0055dffc  04 30 9a e5                                      ldr r3, [sl, #4]
0055e000  14 90 9d e5                                      ldr sb, [sp, #0x14]
0055e004  02 30 63 e0                                      rsb r3, r3, r2
0055e008  28 20 9d e5                                      ldr r2, [sp, #0x28]
0055e00c  03 30 62 e0                                      rsb r3, r2, r3
0055e010  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0055e014  c3 90 89 e0                                      add sb, sb, r3, asr #1
0055e018  14 90 8d e5                                      str sb, [sp, #0x14]
0055e01c  b1 ff ff ea                                      b #0x55dee8

; FUNCTION 0x0055e020, declared_size=720, range_size=720, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_
; demangled: glitch::gui::CGUITTFont::draw(wchar_t const*, glitch::core::rect<int> const&, glitch::video::SColor, bool, bool, glitch::core::rect<int> const*)
; decoder-mode: arm
0055e020  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055e024  00 40 a0 e1                                      mov r4, r0
0055e028  08 00 90 e5                                      ldr r0, [r0, #8]
0055e02c  9c d0 4d e2                                      sub sp, sp, #0x9c
0055e030  01 50 a0 e1                                      mov r5, r1
0055e034  00 00 50 e3                                      cmp r0, #0
0055e038  c4 10 dd e5                                      ldrb r1, [sp, #0xc4]
0055e03c  c0 00 dd e5                                      ldrb r0, [sp, #0xc0]
0055e040  2c 30 8d e5                                      str r3, [sp, #0x2c]
0055e044  02 a0 a0 e1                                      mov sl, r2
0055e048  c8 80 9d e5                                      ldr r8, [sp, #0xc8]
0055e04c  18 00 8d e5                                      str r0, [sp, #0x18]
0055e050  1c 10 8d e5                                      str r1, [sp, #0x1c]
0055e054  53 00 00 0a                                      beq #0x55e1a8
0055e058  34 90 8d e2                                      add sb, sp, #0x34
0055e05c  00 30 94 e5                                      ldr r3, [r4]
0055e060  8c 00 8d e2                                      add r0, sp, #0x8c
0055e064  04 10 a0 e1                                      mov r1, r4
0055e068  05 20 a0 e1                                      mov r2, r5
0055e06c  14 90 8d e5                                      str sb, [sp, #0x14]
0055e070  0f e0 a0 e1                                      mov lr, pc
0055e074  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055e078  90 c0 9d e5                                      ldr ip, [sp, #0x90]
0055e07c  8c e0 9d e5                                      ldr lr, [sp, #0x8c]
0055e080  05 10 a0 e1                                      mov r1, r5
0055e084  24 c0 8d e5                                      str ip, [sp, #0x24]
0055e088  20 e0 8d e5                                      str lr, [sp, #0x20]
0055e08c  04 30 9a e5                                      ldr r3, [sl, #4]
0055e090  14 00 9d e5                                      ldr r0, [sp, #0x14]
0055e094  94 20 8d e2                                      add r2, sp, #0x94
0055e098  00 60 9a e5                                      ldr r6, [sl]
0055e09c  10 30 8d e5                                      str r3, [sp, #0x10]
0055e0a0  95 1f f7 eb                                      bl #0x325efc
0055e0a4  18 30 94 e5                                      ldr r3, [r4, #0x18]
0055e0a8  50 30 93 e5                                      ldr r3, [r3, #0x50]
0055e0ac  00 00 53 e3                                      cmp r3, #0
0055e0b0  3e 00 00 1a                                      bne #0x55e1b0
0055e0b4  78 30 9d e5                                      ldr r3, [sp, #0x78]
0055e0b8  00 10 93 e5                                      ldr r1, [r3]
0055e0bc  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0055e0c0  40 02 9a e8                                      ldm sl, {r6, sb}
0055e0c4  00 00 5c e3                                      cmp ip, #0
0055e0c8  05 00 00 0a                                      beq #0x55e0e4
0055e0cc  08 20 9a e5                                      ldr r2, [sl, #8]
0055e0d0  20 00 9d e5                                      ldr r0, [sp, #0x20]
0055e0d4  02 20 66 e0                                      rsb r2, r6, r2
0055e0d8  02 20 60 e0                                      rsb r2, r0, r2
0055e0dc  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
0055e0e0  c2 60 86 e0                                      add r6, r6, r2, asr #1
0055e0e4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0055e0e8  00 00 52 e3                                      cmp r2, #0
0055e0ec  05 00 00 0a                                      beq #0x55e108
0055e0f0  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0055e0f4  24 a0 9d e5                                      ldr sl, [sp, #0x24]
0055e0f8  02 20 69 e0                                      rsb r2, sb, r2
0055e0fc  02 20 6a e0                                      rsb r2, sl, r2
0055e100  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
0055e104  c2 90 89 e0                                      add sb, sb, r2, asr #1
0055e108  00 00 51 e3                                      cmp r1, #0
0055e10c  1e 00 00 0a                                      beq #0x55e18c
0055e110  04 50 a0 e3                                      mov r5, #4
0055e114  00 70 a0 e3                                      mov r7, #0
0055e118  58 b0 a0 e3                                      mov fp, #0x58
0055e11c  7c a0 8d e2                                      add sl, sp, #0x7c
0055e120  04 00 a0 e1                                      mov r0, r4
0055e124  ab fe ff eb                                      bl #0x55dbd8
0055e128  00 10 50 e2                                      subs r1, r0, #0
0055e12c  01 10 41 e2                                      sub r1, r1, #1
0055e130  04 00 a0 e1                                      mov r0, r4
0055e134  0a 20 a0 e1                                      mov r2, sl
0055e138  08 30 a0 e1                                      mov r3, r8
0055e13c  06 00 00 0a                                      beq #0x55e15c
0055e140  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0055e144  7c 60 8d e5                                      str r6, [sp, #0x7c]
0055e148  80 90 8d e5                                      str sb, [sp, #0x80]
0055e14c  9b c1 21 e0                                      mla r1, fp, r1, ip
0055e150  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0055e154  00 c0 8d e5                                      str ip, [sp]
0055e158  a3 f7 ff eb                                      bl #0x55bfec
0055e15c  78 30 9d e5                                      ldr r3, [sp, #0x78]
0055e160  04 00 a0 e1                                      mov r0, r4
0055e164  07 10 93 e7                                      ldr r1, [r3, r7]
0055e168  50 fc ff eb                                      bl #0x55d2b0
0055e16c  78 30 9d e5                                      ldr r3, [sp, #0x78]
0055e170  04 20 85 e2                                      add r2, r5, #4
0055e174  05 70 a0 e1                                      mov r7, r5
0055e178  05 10 93 e7                                      ldr r1, [r3, r5]
0055e17c  00 60 86 e0                                      add r6, r6, r0
0055e180  02 50 a0 e1                                      mov r5, r2
0055e184  00 00 51 e3                                      cmp r1, #0
0055e188  e4 ff ff 1a                                      bne #0x55e120
0055e18c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0055e190  0c 00 53 e1                                      cmp r3, ip
0055e194  03 00 00 0a                                      beq #0x55e1a8
0055e198  00 00 53 e3                                      cmp r3, #0
0055e19c  01 00 00 0a                                      beq #0x55e1a8
0055e1a0  03 00 a0 e1                                      mov r0, r3
0055e1a4  a9 c8 f6 eb                                      bl #0x310450
0055e1a8  9c d0 8d e2                                      add sp, sp, #0x9c
0055e1ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055e1b0  18 90 9d e5                                      ldr sb, [sp, #0x18]
0055e1b4  00 00 59 e3                                      cmp sb, #0
0055e1b8  06 00 00 0a                                      beq #0x55e1d8
0055e1bc  08 20 9a e5                                      ldr r2, [sl, #8]
0055e1c0  00 30 9a e5                                      ldr r3, [sl]
0055e1c4  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0055e1c8  02 30 63 e0                                      rsb r3, r3, r2
0055e1cc  03 30 6c e0                                      rsb r3, ip, r3
0055e1d0  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0055e1d4  c3 60 86 e0                                      add r6, r6, r3, asr #1
0055e1d8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0055e1dc  00 00 50 e3                                      cmp r0, #0
0055e1e0  38 00 00 1a                                      bne #0x55e2c8
0055e1e4  78 30 9d e5                                      ldr r3, [sp, #0x78]
0055e1e8  00 10 93 e5                                      ldr r1, [r3]
0055e1ec  00 00 51 e3                                      cmp r1, #0
0055e1f0  b1 ff ff 0a                                      beq #0x55e0bc
0055e1f4  84 30 8d e2                                      add r3, sp, #0x84
0055e1f8  04 50 a0 e3                                      mov r5, #4
0055e1fc  00 70 a0 e3                                      mov r7, #0
0055e200  28 a0 8d e5                                      str sl, [sp, #0x28]
0055e204  03 b0 a0 e1                                      mov fp, r3
0055e208  04 00 a0 e1                                      mov r0, r4
0055e20c  71 fe ff eb                                      bl #0x55dbd8
0055e210  00 10 50 e2                                      subs r1, r0, #0
0055e214  58 30 a0 e3                                      mov r3, #0x58
0055e218  01 10 41 e2                                      sub r1, r1, #1
0055e21c  93 01 01 e0                                      mul r1, r3, r1
0055e220  04 00 a0 e1                                      mov r0, r4
0055e224  0b 20 a0 e1                                      mov r2, fp
0055e228  08 30 a0 e1                                      mov r3, r8
0055e22c  16 00 00 0a                                      beq #0x55e28c
0055e230  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0055e234  18 c0 94 e5                                      ldr ip, [r4, #0x18]
0055e238  01 c0 8c e0                                      add ip, ip, r1
0055e23c  01 10 8e e0                                      add r1, lr, r1
0055e240  18 90 91 e5                                      ldr sb, [r1, #0x18]
0055e244  08 90 8d e5                                      str sb, [sp, #8]
0055e248  1c 90 9c e5                                      ldr sb, [ip, #0x1c]
0055e24c  1c e0 91 e5                                      ldr lr, [r1, #0x1c]
0055e250  0c 10 a0 e1                                      mov r1, ip
0055e254  09 e0 6e e0                                      rsb lr, lr, sb
0055e258  0c e0 8d e5                                      str lr, [sp, #0xc]
0055e25c  18 a0 9c e5                                      ldr sl, [ip, #0x18]
0055e260  08 90 9d e5                                      ldr sb, [sp, #8]
0055e264  0a e0 69 e0                                      rsb lr, sb, sl
0055e268  ae a0 46 e0                                      sub sl, r6, lr, lsr #1
0055e26c  0c 90 9d e5                                      ldr sb, [sp, #0xc]
0055e270  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0055e274  84 a0 8d e5                                      str sl, [sp, #0x84]
0055e278  a9 e0 4e e0                                      sub lr, lr, sb, lsr #1
0055e27c  88 e0 8d e5                                      str lr, [sp, #0x88]
0055e280  54 c0 9c e5                                      ldr ip, [ip, #0x54]
0055e284  00 c0 8d e5                                      str ip, [sp]
0055e288  57 f7 ff eb                                      bl #0x55bfec
0055e28c  78 30 9d e5                                      ldr r3, [sp, #0x78]
0055e290  04 00 a0 e1                                      mov r0, r4
0055e294  07 10 93 e7                                      ldr r1, [r3, r7]
0055e298  04 fc ff eb                                      bl #0x55d2b0
0055e29c  78 30 9d e5                                      ldr r3, [sp, #0x78]
0055e2a0  04 20 85 e2                                      add r2, r5, #4
0055e2a4  05 70 a0 e1                                      mov r7, r5
0055e2a8  05 10 93 e7                                      ldr r1, [r3, r5]
0055e2ac  00 60 86 e0                                      add r6, r6, r0
0055e2b0  02 50 a0 e1                                      mov r5, r2
0055e2b4  00 00 51 e3                                      cmp r1, #0
0055e2b8  d2 ff ff 1a                                      bne #0x55e208
0055e2bc  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0055e2c0  00 10 93 e5                                      ldr r1, [r3]
0055e2c4  7c ff ff ea                                      b #0x55e0bc
0055e2c8  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0055e2cc  04 30 9a e5                                      ldr r3, [sl, #4]
0055e2d0  24 10 9d e5                                      ldr r1, [sp, #0x24]
0055e2d4  02 30 63 e0                                      rsb r3, r3, r2
0055e2d8  03 30 61 e0                                      rsb r3, r1, r3
0055e2dc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0055e2e0  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0055e2e4  c3 20 82 e0                                      add r2, r2, r3, asr #1
0055e2e8  10 20 8d e5                                      str r2, [sp, #0x10]
0055e2ec  bc ff ff ea                                      b #0x55e1e4

; FUNCTION 0x0055e9f0, declared_size=336, range_size=336, mode=arm
; class-group: glitch::gui::CGUITTFont
; alias: _ZN6glitch3gui10CGUITTFont6attachEPNS0_10CGUITTFaceEjjNS_5video6SColorE
; demangled: glitch::gui::CGUITTFont::attach(glitch::gui::CGUITTFace*, unsigned int, unsigned int, glitch::video::SColor)
; decoder-mode: arm
0055e9f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055e9f4  00 40 a0 e1                                      mov r4, r0
0055e9f8  08 00 90 e5                                      ldr r0, [r0, #8]
0055e9fc  bc d0 4d e2                                      sub sp, sp, #0xbc
0055ea00  01 b0 a0 e1                                      mov fp, r1
0055ea04  00 00 50 e3                                      cmp r0, #0
0055ea08  00 00 51 13                                      cmpne r1, #0
0055ea0c  02 50 a0 e1                                      mov r5, r2
0055ea10  03 a0 a0 e1                                      mov sl, r3
0055ea14  e0 80 dd e5                                      ldrb r8, [sp, #0xe0]
0055ea18  e1 70 dd e5                                      ldrb r7, [sp, #0xe1]
0055ea1c  e2 60 dd e5                                      ldrb r6, [sp, #0xe2]
0055ea20  e3 90 dd e5                                      ldrb sb, [sp, #0xe3]
0055ea24  00 00 a0 03                                      moveq r0, #0
0055ea28  42 00 00 0a                                      beq #0x55eb38
0055ea2c  30 00 94 e5                                      ldr r0, [r4, #0x30]
0055ea30  00 00 50 e3                                      cmp r0, #0
0055ea34  00 00 00 0a                                      beq #0x55ea3c
0055ea38  d1 fa f6 eb                                      bl #0x31d584
0055ea3c  30 b0 84 e5                                      str fp, [r4, #0x30]
0055ea40  04 30 9b e5                                      ldr r3, [fp, #4]
0055ea44  60 20 8d e2                                      add r2, sp, #0x60
0055ea48  04 20 8d e5                                      str r2, [sp, #4]
0055ea4c  01 30 83 e2                                      add r3, r3, #1
0055ea50  04 30 8b e5                                      str r3, [fp, #4]
0055ea54  04 00 a0 e1                                      mov r0, r4
0055ea58  00 30 94 e5                                      ldr r3, [r4]
0055ea5c  0f e0 a0 e1                                      mov lr, pc
0055ea60  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0055ea64  30 30 94 e5                                      ldr r3, [r4, #0x30]
0055ea68  04 00 9d e5                                      ldr r0, [sp, #4]
0055ea6c  08 b0 8d e2                                      add fp, sp, #8
0055ea70  08 30 93 e5                                      ldr r3, [r3, #8]
0055ea74  10 10 93 e5                                      ldr r1, [r3, #0x10]
0055ea78  00 10 8d e5                                      str r1, [sp]
0055ea7c  0b f4 ff eb                                      bl #0x55bab0
0055ea80  06 00 9d e8                                      ldm sp, {r1, r2}
0055ea84  0c 00 84 e2                                      add r0, r4, #0xc
0055ea88  c0 ff ff eb                                      bl #0x55e990
0055ea8c  04 00 9d e5                                      ldr r0, [sp, #4]
0055ea90  14 f7 ff eb                                      bl #0x55c6e8
0055ea94  30 30 94 e5                                      ldr r3, [r4, #0x30]
0055ea98  0b 00 a0 e1                                      mov r0, fp
0055ea9c  08 30 93 e5                                      ldr r3, [r3, #8]
0055eaa0  10 10 93 e5                                      ldr r1, [r3, #0x10]
0055eaa4  00 10 8d e5                                      str r1, [sp]
0055eaa8  00 f4 ff eb                                      bl #0x55bab0
0055eaac  00 10 9d e5                                      ldr r1, [sp]
0055eab0  0b 20 a0 e1                                      mov r2, fp
0055eab4  18 00 84 e2                                      add r0, r4, #0x18
0055eab8  b4 ff ff eb                                      bl #0x55e990
0055eabc  0b 00 a0 e1                                      mov r0, fp
0055eac0  08 f7 ff eb                                      bl #0x55c6e8
0055eac4  30 30 94 e5                                      ldr r3, [r4, #0x30]
0055eac8  08 30 93 e5                                      ldr r3, [r3, #8]
0055eacc  10 30 93 e5                                      ldr r3, [r3, #0x10]
0055ead0  00 00 53 e3                                      cmp r3, #0
0055ead4  16 00 00 da                                      ble #0x55eb34
0055ead8  00 20 a0 e3                                      mov r2, #0
0055eadc  02 10 a0 e1                                      mov r1, r2
0055eae0  02 c0 a0 e1                                      mov ip, r2
0055eae4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0055eae8  18 30 94 e5                                      ldr r3, [r4, #0x18]
0055eaec  01 10 81 e2                                      add r1, r1, #1
0055eaf0  02 00 80 e0                                      add r0, r0, r2
0055eaf4  02 30 83 e0                                      add r3, r3, r2
0055eaf8  08 c0 c0 e5                                      strb ip, [r0, #8]
0055eafc  0c 50 80 e5                                      str r5, [r0, #0xc]
0055eb00  08 c0 c3 e5                                      strb ip, [r3, #8]
0055eb04  54 80 c3 e5                                      strb r8, [r3, #0x54]
0055eb08  0c 50 83 e5                                      str r5, [r3, #0xc]
0055eb0c  50 a0 83 e5                                      str sl, [r3, #0x50]
0055eb10  57 90 c3 e5                                      strb sb, [r3, #0x57]
0055eb14  56 60 c3 e5                                      strb r6, [r3, #0x56]
0055eb18  55 70 c3 e5                                      strb r7, [r3, #0x55]
0055eb1c  30 30 94 e5                                      ldr r3, [r4, #0x30]
0055eb20  58 20 82 e2                                      add r2, r2, #0x58
0055eb24  08 30 93 e5                                      ldr r3, [r3, #8]
0055eb28  10 30 93 e5                                      ldr r3, [r3, #0x10]
0055eb2c  01 00 53 e1                                      cmp r3, r1
0055eb30  eb ff ff ca                                      bgt #0x55eae4
0055eb34  01 00 a0 e3                                      mov r0, #1
0055eb38  bc d0 8d e2                                      add sp, sp, #0xbc
0055eb3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
