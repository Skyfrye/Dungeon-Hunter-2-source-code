; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053dbdc, declared_size=12, range_size=12, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont4drawEPKcRKNS_4core4rectIiEENS_5video6SColorEbbPS7_
; demangled: glitch::gui::CGUIFont::draw(char const*, glitch::core::rect<int> const&, glitch::video::SColor, bool, bool, glitch::core::rect<int> const*)
; decoder-mode: arm
0053dbdc  08 d0 4d e2                                      sub sp, sp, #8
0053dbe0  08 d0 8d e2                                      add sp, sp, #8
0053dbe4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053dbe8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb
; demangled: glitch::gui::CGUIFont::drawInTexture(wchar_t const*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::rect<int>, glitch::video::SColor, bool, bool)
; decoder-mode: arm
0053dbe8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053dbec, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont13drawInTextureEPKcRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb
; demangled: glitch::gui::CGUIFont::drawInTexture(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::rect<int>, glitch::video::SColor, bool, bool)
; decoder-mode: arm
0053dbec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053dbf0, declared_size=12, range_size=12, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont9setBorderEjNS_5video6SColorE
; demangled: glitch::gui::CGUIFont::setBorder(unsigned int, glitch::video::SColor)
; decoder-mode: arm
0053dbf0  08 d0 4d e2                                      sub sp, sp, #8
0053dbf4  08 d0 8d e2                                      add sp, sp, #8
0053dbf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053dbfc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZNK6glitch3gui8CGUIFont12getDimensionEPKc
; demangled: glitch::gui::CGUIFont::getDimension(char const*) const
; decoder-mode: arm
0053dbfc  00 20 a0 e3                                      mov r2, #0
0053dc00  04 20 80 e5                                      str r2, [r0, #4]
0053dc04  00 20 80 e5                                      str r2, [r0]
0053dc08  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053dc0c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZNK6glitch3gui8CGUIFont7getTypeEv
; demangled: glitch::gui::CGUIFont::getType() const
; decoder-mode: arm
0053dc0c  00 00 a0 e3                                      mov r0, #0
0053dc10  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053dc14, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont11setTrackingEi
; demangled: glitch::gui::CGUIFont::setTracking(int)
; decoder-mode: arm
0053dc14  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053dc18, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZNK6glitch3gui8CGUIFont11getTrackingEv
; demangled: glitch::gui::CGUIFont::getTracking() const
; decoder-mode: arm
0053dc18  00 00 a0 e3                                      mov r0, #0
0053dc1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053dc28, declared_size=220, range_size=220, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFontC2EPNS0_15IGUIEnvironmentEPKc
; demangled: glitch::gui::CGUIFont::CGUIFont(glitch::gui::IGUIEnvironment*, char const*)
; decoder-mode: arm
0053dc28  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0053dc2c  cc c0 9f e5                                      ldr ip, [pc, #0xcc]
0053dc30  70 40 2d e9                                      push {r4, r5, r6, lr}
0053dc34  03 30 8f e0                                      add r3, pc, r3
0053dc38  0c c0 93 e7                                      ldr ip, [r3, ip]
0053dc3c  00 40 a0 e1                                      mov r4, r0
0053dc40  04 50 a0 e1                                      mov r5, r4
0053dc44  00 00 a0 e3                                      mov r0, #0
0053dc48  01 60 a0 e3                                      mov r6, #1
0053dc4c  08 c0 8c e2                                      add ip, ip, #8
0053dc50  04 60 84 e5                                      str r6, [r4, #4]
0053dc54  00 c0 84 e5                                      str ip, [r4]
0053dc58  08 00 84 e5                                      str r0, [r4, #8]
0053dc5c  0c 00 84 e5                                      str r0, [r4, #0xc]
0053dc60  10 00 84 e5                                      str r0, [r4, #0x10]
0053dc64  18 00 84 e5                                      str r0, [r4, #0x18]
0053dc68  00 00 51 e1                                      cmp r1, r0
0053dc6c  14 00 e5 e5                                      strb r0, [r5, #0x14]!
0053dc70  20 50 84 e5                                      str r5, [r4, #0x20]
0053dc74  44 00 84 e5                                      str r0, [r4, #0x44]
0053dc78  02 60 a0 e1                                      mov r6, r2
0053dc7c  1c 50 84 e5                                      str r5, [r4, #0x1c]
0053dc80  24 00 84 e5                                      str r0, [r4, #0x24]
0053dc84  2c 00 84 e5                                      str r0, [r4, #0x2c]
0053dc88  30 00 84 e5                                      str r0, [r4, #0x30]
0053dc8c  34 10 84 e5                                      str r1, [r4, #0x34]
0053dc90  38 00 84 e5                                      str r0, [r4, #0x38]
0053dc94  3c 00 84 e5                                      str r0, [r4, #0x3c]
0053dc98  40 00 84 e5                                      str r0, [r4, #0x40]
0053dc9c  14 00 00 0a                                      beq #0x53dcf4
0053dca0  00 30 91 e5                                      ldr r3, [r1]
0053dca4  01 00 a0 e1                                      mov r0, r1
0053dca8  0f e0 a0 e1                                      mov lr, pc
0053dcac  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0053dcb0  34 30 94 e5                                      ldr r3, [r4, #0x34]
0053dcb4  2c 00 84 e5                                      str r0, [r4, #0x2c]
0053dcb8  06 10 a0 e1                                      mov r1, r6
0053dcbc  03 00 a0 e1                                      mov r0, r3
0053dcc0  00 30 93 e5                                      ldr r3, [r3]
0053dcc4  0f e0 a0 e1                                      mov lr, pc
0053dcc8  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0053dccc  00 00 50 e3                                      cmp r0, #0
0053dcd0  30 00 84 e5                                      str r0, [r4, #0x30]
0053dcd4  04 30 90 15                                      ldrne r3, [r0, #4]
0053dcd8  01 30 83 12                                      addne r3, r3, #1
0053dcdc  04 30 80 15                                      strne r3, [r0, #4]
0053dce0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0053dce4  00 00 53 e3                                      cmp r3, #0
0053dce8  04 20 93 15                                      ldrne r2, [r3, #4]
0053dcec  01 20 82 12                                      addne r2, r2, #1
0053dcf0  04 20 83 15                                      strne r2, [r3, #4]
0053dcf4  04 00 a0 e1                                      mov r0, r4
0053dcf8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0053dcfc  5c 6e 45 00 a4 3a 00 00                          .byte 0x5c, 0x6e, 0x45, 0x00, 0xa4, 0x3a, 0x00, 0x00

; FUNCTION 0x0053dd04, declared_size=220, range_size=220, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFontC1EPNS0_15IGUIEnvironmentEPKc
; demangled: glitch::gui::CGUIFont::CGUIFont(glitch::gui::IGUIEnvironment*, char const*)
; decoder-mode: arm
0053dd04  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0053dd08  cc c0 9f e5                                      ldr ip, [pc, #0xcc]
0053dd0c  70 40 2d e9                                      push {r4, r5, r6, lr}
0053dd10  03 30 8f e0                                      add r3, pc, r3
0053dd14  0c c0 93 e7                                      ldr ip, [r3, ip]
0053dd18  00 40 a0 e1                                      mov r4, r0
0053dd1c  04 50 a0 e1                                      mov r5, r4
0053dd20  00 00 a0 e3                                      mov r0, #0
0053dd24  01 60 a0 e3                                      mov r6, #1
0053dd28  08 c0 8c e2                                      add ip, ip, #8
0053dd2c  04 60 84 e5                                      str r6, [r4, #4]
0053dd30  00 c0 84 e5                                      str ip, [r4]
0053dd34  08 00 84 e5                                      str r0, [r4, #8]
0053dd38  0c 00 84 e5                                      str r0, [r4, #0xc]
0053dd3c  10 00 84 e5                                      str r0, [r4, #0x10]
0053dd40  18 00 84 e5                                      str r0, [r4, #0x18]
0053dd44  00 00 51 e1                                      cmp r1, r0
0053dd48  14 00 e5 e5                                      strb r0, [r5, #0x14]!
0053dd4c  20 50 84 e5                                      str r5, [r4, #0x20]
0053dd50  44 00 84 e5                                      str r0, [r4, #0x44]
0053dd54  02 60 a0 e1                                      mov r6, r2
0053dd58  1c 50 84 e5                                      str r5, [r4, #0x1c]
0053dd5c  24 00 84 e5                                      str r0, [r4, #0x24]
0053dd60  2c 00 84 e5                                      str r0, [r4, #0x2c]
0053dd64  30 00 84 e5                                      str r0, [r4, #0x30]
0053dd68  34 10 84 e5                                      str r1, [r4, #0x34]
0053dd6c  38 00 84 e5                                      str r0, [r4, #0x38]
0053dd70  3c 00 84 e5                                      str r0, [r4, #0x3c]
0053dd74  40 00 84 e5                                      str r0, [r4, #0x40]
0053dd78  14 00 00 0a                                      beq #0x53ddd0
0053dd7c  00 30 91 e5                                      ldr r3, [r1]
0053dd80  01 00 a0 e1                                      mov r0, r1
0053dd84  0f e0 a0 e1                                      mov lr, pc
0053dd88  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0053dd8c  34 30 94 e5                                      ldr r3, [r4, #0x34]
0053dd90  2c 00 84 e5                                      str r0, [r4, #0x2c]
0053dd94  06 10 a0 e1                                      mov r1, r6
0053dd98  03 00 a0 e1                                      mov r0, r3
0053dd9c  00 30 93 e5                                      ldr r3, [r3]
0053dda0  0f e0 a0 e1                                      mov lr, pc
0053dda4  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0053dda8  00 00 50 e3                                      cmp r0, #0
0053ddac  30 00 84 e5                                      str r0, [r4, #0x30]
0053ddb0  04 30 90 15                                      ldrne r3, [r0, #4]
0053ddb4  01 30 83 12                                      addne r3, r3, #1
0053ddb8  04 30 80 15                                      strne r3, [r0, #4]
0053ddbc  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0053ddc0  00 00 53 e3                                      cmp r3, #0
0053ddc4  04 20 93 15                                      ldrne r2, [r3, #4]
0053ddc8  01 20 82 12                                      addne r2, r2, #1
0053ddcc  04 20 83 15                                      strne r2, [r3, #4]
0053ddd0  04 00 a0 e1                                      mov r0, r4
0053ddd4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0053ddd8  80 6d 45 00 a4 3a 00 00                          .byte 0x80, 0x6d, 0x45, 0x00, 0xa4, 0x3a, 0x00, 0x00

; FUNCTION 0x0053dde0, declared_size=108, range_size=108, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont12setMaxHeightEv
; demangled: glitch::gui::CGUIFont::setMaxHeight()
; decoder-mode: arm
0053dde0  70 40 2d e9                                      push {r4, r5, r6, lr}
0053dde4  30 30 90 e5                                      ldr r3, [r0, #0x30]
0053dde8  00 50 a0 e3                                      mov r5, #0
0053ddec  3c 50 80 e5                                      str r5, [r0, #0x3c]
0053ddf0  00 40 a0 e1                                      mov r4, r0
0053ddf4  03 00 a0 e1                                      mov r0, r3
0053ddf8  00 30 93 e5                                      ldr r3, [r3]
0053ddfc  0f e0 a0 e1                                      mov lr, pc
0053de00  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053de04  44 00 90 e8                                      ldm r0, {r2, r6}
0053de08  06 30 62 e0                                      rsb r3, r2, r6
0053de0c  23 32 b0 e1                                      lsrs r3, r3, #4
0053de10  0c 00 00 0a                                      beq #0x53de48
0053de14  05 32 82 e0                                      add r3, r2, r5, lsl #4
0053de18  04 c0 93 e5                                      ldr ip, [r3, #4]
0053de1c  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0053de20  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
0053de24  01 50 85 e2                                      add r5, r5, #1
0053de28  03 30 6c e0                                      rsb r3, ip, r3
0053de2c  03 00 51 e1                                      cmp r1, r3
0053de30  3c 30 84 b5                                      strlt r3, [r4, #0x3c]
0053de34  00 20 90 b5                                      ldrlt r2, [r0]
0053de38  04 60 90 b5                                      ldrlt r6, [r0, #4]
0053de3c  06 30 62 e0                                      rsb r3, r2, r6
0053de40  43 02 55 e1                                      cmp r5, r3, asr #4
0053de44  f2 ff ff 3a                                      blo #0x53de14
0053de48  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0053de4c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont15setKerningWidthEi
; demangled: glitch::gui::CGUIFont::setKerningWidth(int)
; decoder-mode: arm
0053de4c  40 10 80 e5                                      str r1, [r0, #0x40]
0053de50  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053de54, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont16setKerningHeightEi
; demangled: glitch::gui::CGUIFont::setKerningHeight(int)
; decoder-mode: arm
0053de54  44 10 80 e5                                      str r1, [r0, #0x44]
0053de58  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053de5c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZNK6glitch3gui8CGUIFont16getKerningHeightEv
; demangled: glitch::gui::CGUIFont::getKerningHeight() const
; decoder-mode: arm
0053de5c  44 00 90 e5                                      ldr r0, [r0, #0x44]
0053de60  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053de64, declared_size=128, range_size=128, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZNK6glitch3gui8CGUIFont20getAreaFromCharacterEw
; demangled: glitch::gui::CGUIFont::getAreaFromCharacter(wchar_t) const
; decoder-mode: arm
0053de64  04 40 2d e5                                      str r4, [sp, #-4]!
0053de68  18 30 90 e5                                      ldr r3, [r0, #0x18]
0053de6c  14 40 80 e2                                      add r4, r0, #0x14
0053de70  00 00 53 e3                                      cmp r3, #0
0053de74  14 00 00 0a                                      beq #0x53decc
0053de78  04 c0 a0 e1                                      mov ip, r4
0053de7c  00 00 00 ea                                      b #0x53de84
0053de80  02 30 a0 e1                                      mov r3, r2
0053de84  10 20 93 e5                                      ldr r2, [r3, #0x10]
0053de88  02 00 51 e1                                      cmp r1, r2
0053de8c  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0053de90  08 20 93 95                                      ldrls r2, [r3, #8]
0053de94  0c 30 a0 81                                      movhi r3, ip
0053de98  03 c0 a0 e1                                      mov ip, r3
0053de9c  00 00 52 e3                                      cmp r2, #0
0053dea0  f6 ff ff 1a                                      bne #0x53de80
0053dea4  03 00 54 e1                                      cmp r4, r3
0053dea8  0b 00 00 0a                                      beq #0x53dedc
0053deac  10 20 93 e5                                      ldr r2, [r3, #0x10]
0053deb0  02 00 51 e1                                      cmp r1, r2
0053deb4  04 00 00 3a                                      blo #0x53decc
0053deb8  03 00 54 e1                                      cmp r4, r3
0053debc  14 00 93 15                                      ldrne r0, [r3, #0x14]
0053dec0  05 00 00 0a                                      beq #0x53dedc
0053dec4  10 00 bd e8                                      ldm sp!, {r4}
0053dec8  1e ff 2f e1                                      bx lr
0053decc  04 30 a0 e1                                      mov r3, r4
0053ded0  03 00 54 e1                                      cmp r4, r3
0053ded4  14 00 93 15                                      ldrne r0, [r3, #0x14]
0053ded8  f9 ff ff 1a                                      bne #0x53dec4
0053dedc  38 00 90 e5                                      ldr r0, [r0, #0x38]
0053dee0  f7 ff ff ea                                      b #0x53dec4

; FUNCTION 0x0053dee4, declared_size=32, range_size=32, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZNK6glitch3gui8CGUIFont19getSpriteNoFromCharEPKw
; demangled: glitch::gui::CGUIFont::getSpriteNoFromChar(wchar_t const*) const
; decoder-mode: arm
0053dee4  10 40 2d e9                                      push {r4, lr}
0053dee8  00 10 91 e5                                      ldr r1, [r1]
0053deec  00 40 a0 e1                                      mov r4, r0
0053def0  db ff ff eb                                      bl #0x53de64
0053def4  08 30 94 e5                                      ldr r3, [r4, #8]
0053def8  00 32 83 e0                                      add r3, r3, r0, lsl #4
0053defc  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0053df00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0053df04, declared_size=88, range_size=88, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZNK6glitch3gui8CGUIFont15getKerningWidthEPKwS3_
; demangled: glitch::gui::CGUIFont::getKerningWidth(wchar_t const*, wchar_t const*) const
; decoder-mode: arm
0053df04  70 40 2d e9                                      push {r4, r5, r6, lr}
0053df08  00 00 51 e3                                      cmp r1, #0
0053df0c  00 40 a0 e1                                      mov r4, r0
0053df10  02 60 a0 e1                                      mov r6, r2
0053df14  40 50 90 e5                                      ldr r5, [r0, #0x40]
0053df18  0d 00 00 0a                                      beq #0x53df54
0053df1c  00 10 91 e5                                      ldr r1, [r1]
0053df20  cf ff ff eb                                      bl #0x53de64
0053df24  08 30 94 e5                                      ldr r3, [r4, #8]
0053df28  00 00 56 e3                                      cmp r6, #0
0053df2c  00 32 83 e0                                      add r3, r3, r0, lsl #4
0053df30  04 30 93 e5                                      ldr r3, [r3, #4]
0053df34  03 50 85 e0                                      add r5, r5, r3
0053df38  05 00 00 0a                                      beq #0x53df54
0053df3c  00 10 96 e5                                      ldr r1, [r6]
0053df40  04 00 a0 e1                                      mov r0, r4
0053df44  c6 ff ff eb                                      bl #0x53de64
0053df48  08 30 94 e5                                      ldr r3, [r4, #8]
0053df4c  00 32 93 e7                                      ldr r3, [r3, r0, lsl #4]
0053df50  03 50 85 e0                                      add r5, r5, r3
0053df54  05 00 a0 e1                                      mov r0, r5
0053df58  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0053df5c, declared_size=220, range_size=220, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZNK6glitch3gui8CGUIFont12getDimensionEPKw
; demangled: glitch::gui::CGUIFont::getDimension(wchar_t const*) const
; decoder-mode: arm
0053df5c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053df60  00 60 a0 e3                                      mov r6, #0
0053df64  00 60 80 e5                                      str r6, [r0]
0053df68  04 60 80 e5                                      str r6, [r0, #4]
0053df6c  00 30 92 e5                                      ldr r3, [r2]
0053df70  00 40 a0 e1                                      mov r4, r0
0053df74  01 70 a0 e1                                      mov r7, r1
0053df78  06 00 53 e1                                      cmp r3, r6
0053df7c  3c 80 91 e5                                      ldr r8, [r1, #0x3c]
0053df80  03 60 a0 01                                      moveq r6, r3
0053df84  22 00 00 0a                                      beq #0x53e014
0053df88  02 50 a0 e1                                      mov r5, r2
0053df8c  11 00 00 ea                                      b #0x53dfd8
0053df90  0a 00 53 e3                                      cmp r3, #0xa
0053df94  25 00 00 0a                                      beq #0x53e030
0053df98  04 10 95 e4                                      ldr r1, [r5], #4
0053df9c  07 00 a0 e1                                      mov r0, r7
0053dfa0  af ff ff eb                                      bl #0x53de64
0053dfa4  08 20 97 e5                                      ldr r2, [r7, #8]
0053dfa8  40 10 97 e5                                      ldr r1, [r7, #0x40]
0053dfac  00 32 82 e0                                      add r3, r2, r0, lsl #4
0053dfb0  08 c0 93 e5                                      ldr ip, [r3, #8]
0053dfb4  00 02 92 e7                                      ldr r0, [r2, r0, lsl #4]
0053dfb8  04 20 93 e5                                      ldr r2, [r3, #4]
0053dfbc  00 30 8c e0                                      add r3, ip, r0
0053dfc0  02 30 83 e0                                      add r3, r3, r2
0053dfc4  01 30 83 e0                                      add r3, r3, r1
0053dfc8  03 60 86 e0                                      add r6, r6, r3
0053dfcc  00 30 95 e5                                      ldr r3, [r5]
0053dfd0  00 00 53 e3                                      cmp r3, #0
0053dfd4  0d 00 00 0a                                      beq #0x53e010
0053dfd8  0d 00 53 e3                                      cmp r3, #0xd
0053dfdc  eb ff ff 1a                                      bne #0x53df90
0053dfe0  04 30 b5 e5                                      ldr r3, [r5, #4]!
0053dfe4  0a 00 53 e3                                      cmp r3, #0xa
0053dfe8  10 00 00 0a                                      beq #0x53e030
0053dfec  0c 00 94 e8                                      ldm r4, {r2, r3}
0053dff0  08 30 83 e0                                      add r3, r3, r8
0053dff4  02 00 56 e1                                      cmp r6, r2
0053dff8  00 60 84 c5                                      strgt r6, [r4]
0053dffc  04 30 84 e5                                      str r3, [r4, #4]
0053e000  00 30 95 e5                                      ldr r3, [r5]
0053e004  00 60 a0 e3                                      mov r6, #0
0053e008  00 00 53 e3                                      cmp r3, #0
0053e00c  f1 ff ff 1a                                      bne #0x53dfd8
0053e010  04 30 94 e5                                      ldr r3, [r4, #4]
0053e014  00 20 94 e5                                      ldr r2, [r4]
0053e018  08 30 83 e0                                      add r3, r3, r8
0053e01c  04 30 84 e5                                      str r3, [r4, #4]
0053e020  02 00 56 e1                                      cmp r6, r2
0053e024  00 60 84 c5                                      strgt r6, [r4]
0053e028  04 00 a0 e1                                      mov r0, r4
0053e02c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0053e030  04 50 85 e2                                      add r5, r5, #4
0053e034  ec ff ff ea                                      b #0x53dfec

; FUNCTION 0x0053e038, declared_size=440, range_size=440, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_
; demangled: glitch::gui::CGUIFont::draw(wchar_t const*, glitch::core::rect<int> const&, glitch::video::SColor, bool, bool, glitch::core::rect<int> const*)
; decoder-mode: arm
0053e038  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053e03c  00 40 a0 e1                                      mov r4, r0
0053e040  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0053e044  34 d0 4d e2                                      sub sp, sp, #0x34
0053e048  1c 30 8d e5                                      str r3, [sp, #0x1c]
0053e04c  00 00 50 e3                                      cmp r0, #0
0053e050  01 70 a0 e1                                      mov r7, r1
0053e054  02 50 a0 e1                                      mov r5, r2
0053e058  60 80 9d e5                                      ldr r8, [sp, #0x60]
0053e05c  58 30 dd e5                                      ldrb r3, [sp, #0x58]
0053e060  5c 60 dd e5                                      ldrb r6, [sp, #0x5c]
0053e064  4c 00 00 0a                                      beq #0x53e19c
0053e068  06 00 92 e8                                      ldm r2, {r1, r2}
0053e06c  00 00 53 e3                                      cmp r3, #0
0053e070  20 10 8d e5                                      str r1, [sp, #0x20]
0053e074  24 20 8d e5                                      str r2, [sp, #0x24]
0053e078  4c 00 00 1a                                      bne #0x53e1b0
0053e07c  00 00 56 e3                                      cmp r6, #0
0053e080  47 00 00 0a                                      beq #0x53e1a4
0053e084  04 10 a0 e1                                      mov r1, r4
0053e088  00 30 94 e5                                      ldr r3, [r4]
0053e08c  28 00 8d e2                                      add r0, sp, #0x28
0053e090  07 20 a0 e1                                      mov r2, r7
0053e094  0f e0 a0 e1                                      mov lr, pc
0053e098  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053e09c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0053e0a0  00 00 56 e3                                      cmp r6, #0
0053e0a4  06 00 00 0a                                      beq #0x53e0c4
0053e0a8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0053e0ac  04 30 95 e5                                      ldr r3, [r5, #4]
0053e0b0  02 30 63 e0                                      rsb r3, r3, r2
0053e0b4  24 20 9d e5                                      ldr r2, [sp, #0x24]
0053e0b8  03 30 61 e0                                      rsb r3, r1, r3
0053e0bc  c3 30 82 e0                                      add r3, r2, r3, asr #1
0053e0c0  24 30 8d e5                                      str r3, [sp, #0x24]
0053e0c4  00 00 58 e3                                      cmp r8, #0
0053e0c8  0c 00 00 0a                                      beq #0x53e100
0053e0cc  24 20 9d e5                                      ldr r2, [sp, #0x24]
0053e0d0  0c c0 98 e5                                      ldr ip, [r8, #0xc]
0053e0d4  04 00 98 e5                                      ldr r0, [r8, #4]
0053e0d8  01 30 82 e0                                      add r3, r2, r1
0053e0dc  0c 00 53 e1                                      cmp r3, ip
0053e0e0  0c 30 a0 a1                                      movge r3, ip
0053e0e4  00 00 52 e1                                      cmp r2, r0
0053e0e8  00 20 a0 b1                                      movlt r2, r0
0053e0ec  02 00 53 e1                                      cmp r3, r2
0053e0f0  03 20 a0 b1                                      movlt r2, r3
0053e0f4  02 20 a0 a1                                      movge r2, r2
0053e0f8  02 00 53 e1                                      cmp r3, r2
0053e0fc  26 00 00 ba                                      blt #0x53e19c
0053e100  00 10 97 e5                                      ldr r1, [r7]
0053e104  00 00 51 e3                                      cmp r1, #0
0053e108  23 00 00 0a                                      beq #0x53e19c
0053e10c  20 a0 8d e2                                      add sl, sp, #0x20
0053e110  1c 90 8d e2                                      add sb, sp, #0x1c
0053e114  00 60 a0 e3                                      mov r6, #0
0053e118  01 b0 a0 e3                                      mov fp, #1
0053e11c  04 00 a0 e1                                      mov r0, r4
0053e120  4f ff ff eb                                      bl #0x53de64
0053e124  08 10 94 e5                                      ldr r1, [r4, #8]
0053e128  30 30 94 e5                                      ldr r3, [r4, #0x30]
0053e12c  00 22 91 e7                                      ldr r2, [r1, r0, lsl #4]
0053e130  00 52 81 e0                                      add r5, r1, r0, lsl #4
0053e134  20 10 9d e5                                      ldr r1, [sp, #0x20]
0053e138  03 00 a0 e1                                      mov r0, r3
0053e13c  02 20 81 e0                                      add r2, r1, r2
0053e140  20 20 8d e5                                      str r2, [sp, #0x20]
0053e144  00 c0 93 e5                                      ldr ip, [r3]
0053e148  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0053e14c  0a 20 a0 e1                                      mov r2, sl
0053e150  08 30 a0 e1                                      mov r3, r8
0053e154  00 90 8d e5                                      str sb, [sp]
0053e158  04 60 8d e5                                      str r6, [sp, #4]
0053e15c  08 60 8d e5                                      str r6, [sp, #8]
0053e160  0c b0 8d e5                                      str fp, [sp, #0xc]
0053e164  10 60 8d e5                                      str r6, [sp, #0x10]
0053e168  0f e0 a0 e1                                      mov lr, pc
0053e16c  24 f0 9c e5                                      ldr pc, [ip, #0x24]
0053e170  08 30 95 e5                                      ldr r3, [r5, #8]
0053e174  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0053e178  04 00 95 e5                                      ldr r0, [r5, #4]
0053e17c  40 20 94 e5                                      ldr r2, [r4, #0x40]
0053e180  04 10 b7 e5                                      ldr r1, [r7, #4]!
0053e184  0c 30 83 e0                                      add r3, r3, ip
0053e188  00 30 83 e0                                      add r3, r3, r0
0053e18c  02 30 83 e0                                      add r3, r3, r2
0053e190  00 00 51 e3                                      cmp r1, #0
0053e194  20 30 8d e5                                      str r3, [sp, #0x20]
0053e198  df ff ff 1a                                      bne #0x53e11c
0053e19c  34 d0 8d e2                                      add sp, sp, #0x34
0053e1a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053e1a4  00 00 58 e3                                      cmp r8, #0
0053e1a8  b5 ff ff 1a                                      bne #0x53e084
0053e1ac  d3 ff ff ea                                      b #0x53e100
0053e1b0  00 30 94 e5                                      ldr r3, [r4]
0053e1b4  04 10 a0 e1                                      mov r1, r4
0053e1b8  07 20 a0 e1                                      mov r2, r7
0053e1bc  28 00 8d e2                                      add r0, sp, #0x28
0053e1c0  0f e0 a0 e1                                      mov lr, pc
0053e1c4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053e1c8  00 30 95 e5                                      ldr r3, [r5]
0053e1cc  08 20 95 e5                                      ldr r2, [r5, #8]
0053e1d0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0053e1d4  02 20 63 e0                                      rsb r2, r3, r2
0053e1d8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0053e1dc  02 20 63 e0                                      rsb r2, r3, r2
0053e1e0  20 30 9d e5                                      ldr r3, [sp, #0x20]
0053e1e4  c2 30 83 e0                                      add r3, r3, r2, asr #1
0053e1e8  20 30 8d e5                                      str r3, [sp, #0x20]
0053e1ec  ab ff ff ea                                      b #0x53e0a0

; FUNCTION 0x0053e1f0, declared_size=124, range_size=124, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZNK6glitch3gui8CGUIFont19getCharacterFromPosEPKwi
; demangled: glitch::gui::CGUIFont::getCharacterFromPos(wchar_t const*, int) const
; decoder-mode: arm
0053e1f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053e1f4  01 50 a0 e1                                      mov r5, r1
0053e1f8  00 10 91 e5                                      ldr r1, [r1]
0053e1fc  00 40 a0 e1                                      mov r4, r0
0053e200  02 80 a0 e1                                      mov r8, r2
0053e204  00 00 51 e3                                      cmp r1, #0
0053e208  14 00 00 0a                                      beq #0x53e260
0053e20c  00 60 a0 e3                                      mov r6, #0
0053e210  06 70 a0 e1                                      mov r7, r6
0053e214  03 00 00 ea                                      b #0x53e228
0053e218  01 60 86 e2                                      add r6, r6, #1
0053e21c  06 11 95 e7                                      ldr r1, [r5, r6, lsl #2]
0053e220  00 00 51 e3                                      cmp r1, #0
0053e224  0d 00 00 0a                                      beq #0x53e260
0053e228  04 00 a0 e1                                      mov r0, r4
0053e22c  0c ff ff eb                                      bl #0x53de64
0053e230  08 30 94 e5                                      ldr r3, [r4, #8]
0053e234  00 22 83 e0                                      add r2, r3, r0, lsl #4
0053e238  08 10 92 e5                                      ldr r1, [r2, #8]
0053e23c  04 c0 92 e5                                      ldr ip, [r2, #4]
0053e240  00 22 93 e7                                      ldr r2, [r3, r0, lsl #4]
0053e244  01 30 8c e0                                      add r3, ip, r1
0053e248  02 30 83 e0                                      add r3, r3, r2
0053e24c  03 70 87 e0                                      add r7, r7, r3
0053e250  08 00 57 e1                                      cmp r7, r8
0053e254  ef ff ff ba                                      blt #0x53e218
0053e258  06 00 a0 e1                                      mov r0, r6
0053e25c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0053e260  00 60 e0 e3                                      mvn r6, #0
0053e264  06 00 a0 e1                                      mov r0, r6
0053e268  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0053e26c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZNK6glitch3gui8CGUIFont13getSpriteBankEv
; demangled: glitch::gui::CGUIFont::getSpriteBank() const
; decoder-mode: arm
0053e26c  30 00 90 e5                                      ldr r0, [r0, #0x30]
0053e270  1e ff 2f e1                                      bx lr

; FUNCTION 0x0053e988, declared_size=148, range_size=148, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFontD1Ev
; demangled: glitch::gui::CGUIFont::~CGUIFont()
; decoder-mode: arm
0053e988  70 40 2d e9                                      push {r4, r5, r6, lr}
0053e98c  80 30 9f e5                                      ldr r3, [pc, #0x80]
0053e990  80 20 9f e5                                      ldr r2, [pc, #0x80]
0053e994  00 40 a0 e1                                      mov r4, r0
0053e998  03 30 8f e0                                      add r3, pc, r3
0053e99c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0053e9a0  02 20 93 e7                                      ldr r2, [r3, r2]
0053e9a4  00 00 50 e3                                      cmp r0, #0
0053e9a8  08 20 82 e2                                      add r2, r2, #8
0053e9ac  00 20 84 e5                                      str r2, [r4]
0053e9b0  00 00 00 0a                                      beq #0x53e9b8
0053e9b4  f2 7a f7 eb                                      bl #0x31d584
0053e9b8  30 00 94 e5                                      ldr r0, [r4, #0x30]
0053e9bc  00 00 50 e3                                      cmp r0, #0
0053e9c0  00 00 00 0a                                      beq #0x53e9c8
0053e9c4  ee 7a f7 eb                                      bl #0x31d584
0053e9c8  24 30 94 e5                                      ldr r3, [r4, #0x24]
0053e9cc  00 00 53 e3                                      cmp r3, #0
0053e9d0  05 00 00 1a                                      bne #0x53e9ec
0053e9d4  08 00 94 e5                                      ldr r0, [r4, #8]
0053e9d8  00 00 50 e3                                      cmp r0, #0
0053e9dc  00 00 00 0a                                      beq #0x53e9e4
0053e9e0  9a 46 f7 eb                                      bl #0x310450
0053e9e4  04 00 a0 e1                                      mov r0, r4
0053e9e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0053e9ec  14 50 84 e2                                      add r5, r4, #0x14
0053e9f0  05 00 a0 e1                                      mov r0, r5
0053e9f4  18 10 94 e5                                      ldr r1, [r4, #0x18]
0053e9f8  d5 ff ff eb                                      bl #0x53e954
0053e9fc  00 30 a0 e3                                      mov r3, #0
0053ea00  20 50 84 e5                                      str r5, [r4, #0x20]
0053ea04  24 30 84 e5                                      str r3, [r4, #0x24]
0053ea08  1c 50 84 e5                                      str r5, [r4, #0x1c]
0053ea0c  18 30 84 e5                                      str r3, [r4, #0x18]
0053ea10  ef ff ff ea                                      b #0x53e9d4
; mapping-symbol data/literal pool
0053ea14  f8 60 45 00 a4 3a 00 00                          .byte 0xf8, 0x60, 0x45, 0x00, 0xa4, 0x3a, 0x00, 0x00

; FUNCTION 0x0053ea1c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFontD2Ev
; demangled: glitch::gui::CGUIFont::~CGUIFont()
; decoder-mode: arm
0053ea1c  70 40 2d e9                                      push {r4, r5, r6, lr}
0053ea20  80 30 9f e5                                      ldr r3, [pc, #0x80]
0053ea24  80 20 9f e5                                      ldr r2, [pc, #0x80]
0053ea28  00 40 a0 e1                                      mov r4, r0
0053ea2c  03 30 8f e0                                      add r3, pc, r3
0053ea30  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0053ea34  02 20 93 e7                                      ldr r2, [r3, r2]
0053ea38  00 00 50 e3                                      cmp r0, #0
0053ea3c  08 20 82 e2                                      add r2, r2, #8
0053ea40  00 20 84 e5                                      str r2, [r4]
0053ea44  00 00 00 0a                                      beq #0x53ea4c
0053ea48  cd 7a f7 eb                                      bl #0x31d584
0053ea4c  30 00 94 e5                                      ldr r0, [r4, #0x30]
0053ea50  00 00 50 e3                                      cmp r0, #0
0053ea54  00 00 00 0a                                      beq #0x53ea5c
0053ea58  c9 7a f7 eb                                      bl #0x31d584
0053ea5c  24 30 94 e5                                      ldr r3, [r4, #0x24]
0053ea60  00 00 53 e3                                      cmp r3, #0
0053ea64  05 00 00 1a                                      bne #0x53ea80
0053ea68  08 00 94 e5                                      ldr r0, [r4, #8]
0053ea6c  00 00 50 e3                                      cmp r0, #0
0053ea70  00 00 00 0a                                      beq #0x53ea78
0053ea74  75 46 f7 eb                                      bl #0x310450
0053ea78  04 00 a0 e1                                      mov r0, r4
0053ea7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0053ea80  14 50 84 e2                                      add r5, r4, #0x14
0053ea84  05 00 a0 e1                                      mov r0, r5
0053ea88  18 10 94 e5                                      ldr r1, [r4, #0x18]
0053ea8c  b0 ff ff eb                                      bl #0x53e954
0053ea90  00 30 a0 e3                                      mov r3, #0
0053ea94  20 50 84 e5                                      str r5, [r4, #0x20]
0053ea98  24 30 84 e5                                      str r3, [r4, #0x24]
0053ea9c  1c 50 84 e5                                      str r5, [r4, #0x1c]
0053eaa0  18 30 84 e5                                      str r3, [r4, #0x18]
0053eaa4  ef ff ff ea                                      b #0x53ea68
; mapping-symbol data/literal pool
0053eaa8  64 60 45 00 a4 3a 00 00                          .byte 0x64, 0x60, 0x45, 0x00, 0xa4, 0x3a, 0x00, 0x00

; FUNCTION 0x0053eaf0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFontD0Ev
; demangled: glitch::gui::CGUIFont::~CGUIFont()
; decoder-mode: arm
0053eaf0  10 40 2d e9                                      push {r4, lr}
0053eaf4  00 40 a0 e1                                      mov r4, r0
0053eaf8  a2 ff ff eb                                      bl #0x53e988
0053eafc  04 00 a0 e1                                      mov r0, r4
0053eb00  ea 3d f7 eb                                      bl #0x30e2b0
0053eb04  04 00 a0 e1                                      mov r0, r4
0053eb08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0053ef08, declared_size=1100, range_size=1100, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont18readPositions16bitERKN5boost13intrusive_ptrINS_5video6CImageEEERi
; demangled: glitch::gui::CGUIFont::readPositions16bit(boost::intrusive_ptr<glitch::video::CImage> const&, int&)
; decoder-mode: arm
0053ef08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053ef0c  00 30 91 e5                                      ldr r3, [r1]
0053ef10  9c d0 4d e2                                      sub sp, sp, #0x9c
0053ef14  00 70 a0 e1                                      mov r7, r0
0053ef18  08 50 93 e5                                      ldr r5, [r3, #8]
0053ef1c  14 10 93 e5                                      ldr r1, [r3, #0x14]
0053ef20  02 80 a0 e1                                      mov r8, r2
0053ef24  00 00 55 e3                                      cmp r5, #0
0053ef28  28 10 8d e5                                      str r1, [sp, #0x28]
0053ef2c  10 a0 93 e5                                      ldr sl, [r3, #0x10]
0053ef30  01 01 00 0a                                      beq #0x53f33c
0053ef34  b0 30 d5 e1                                      ldrh r3, [r5]
0053ef38  b4 20 d5 e1                                      ldrh r2, [r5, #4]
0053ef3c  28 60 9d e5                                      ldr r6, [sp, #0x28]
0053ef40  01 30 83 e3                                      orr r3, r3, #1
0053ef44  00 20 8d e5                                      str r2, [sp]
0053ef48  24 30 8d e5                                      str r3, [sp, #0x24]
0053ef4c  00 00 56 e3                                      cmp r6, #0
0053ef50  b2 b0 d5 e1                                      ldrh fp, [r5, #2]
0053ef54  b0 30 c5 e1                                      strh r3, [r5]
0053ef58  b2 20 c5 e1                                      strh r2, [r5, #2]
0053ef5c  51 00 00 da                                      ble #0x53f0a8
0053ef60  08 10 80 e2                                      add r1, r0, #8
0053ef64  14 20 80 e2                                      add r2, r0, #0x14
0053ef68  00 30 a0 e3                                      mov r3, #0
0053ef6c  50 60 8d e2                                      add r6, sp, #0x50
0053ef70  3c 10 8d e5                                      str r1, [sp, #0x3c]
0053ef74  0c 00 8d e9                                      stmib sp, {r2, r3}
0053ef78  14 60 8d e5                                      str r6, [sp, #0x14]
0053ef7c  88 10 8d e2                                      add r1, sp, #0x88
0053ef80  70 20 8d e2                                      add r2, sp, #0x70
0053ef84  80 30 8d e2                                      add r3, sp, #0x80
0053ef88  90 60 8d e2                                      add r6, sp, #0x90
0053ef8c  18 10 8d e5                                      str r1, [sp, #0x18]
0053ef90  34 20 8d e5                                      str r2, [sp, #0x34]
0053ef94  38 30 8d e5                                      str r3, [sp, #0x38]
0053ef98  30 60 8d e5                                      str r6, [sp, #0x30]
0053ef9c  00 00 5a e3                                      cmp sl, #0
0053efa0  3a 00 00 da                                      ble #0x53f090
0053efa4  24 60 9d e5                                      ldr r6, [sp, #0x24]
0053efa8  94 10 8d e2                                      add r1, sp, #0x94
0053efac  78 20 8d e2                                      add r2, sp, #0x78
0053efb0  76 90 bf e6                                      sxth sb, r6
0053efb4  40 30 8d e2                                      add r3, sp, #0x40
0053efb8  60 60 8d e2                                      add r6, sp, #0x60
0053efbc  02 50 85 e2                                      add r5, r5, #2
0053efc0  00 40 a0 e3                                      mov r4, #0
0053efc4  1c 10 8d e5                                      str r1, [sp, #0x1c]
0053efc8  20 20 8d e5                                      str r2, [sp, #0x20]
0053efcc  0c 30 8d e5                                      str r3, [sp, #0xc]
0053efd0  2c 60 8d e5                                      str r6, [sp, #0x2c]
0053efd4  0c 00 00 ea                                      b #0x53f00c
0053efd8  7b 20 bf e6                                      sxth r2, fp
0053efdc  03 00 52 e1                                      cmp r2, r3
0053efe0  0b 60 a0 e1                                      mov r6, fp
0053efe4  31 00 00 0a                                      beq #0x53f0b0
0053efe8  00 60 9d e5                                      ldr r6, [sp]
0053efec  76 20 bf e6                                      sxth r2, r6
0053eff0  03 00 52 e1                                      cmp r2, r3
0053eff4  00 10 a0 03                                      moveq r1, #0
0053eff8  b2 10 45 01                                      strheq r1, [r5, #-2]
0053effc  01 40 84 e2                                      add r4, r4, #1
0053f000  0a 00 54 e1                                      cmp r4, sl
0053f004  02 50 85 e2                                      add r5, r5, #2
0053f008  1f 00 00 0a                                      beq #0x53f08c
0053f00c  f2 30 55 e1                                      ldrsh r3, [r5, #-2]
0053f010  03 00 59 e1                                      cmp sb, r3
0053f014  ef ff ff 1a                                      bne #0x53efd8
0053f018  00 10 a0 e3                                      mov r1, #0
0053f01c  b2 10 45 e1                                      strh r1, [r5, #-2]
0053f020  30 30 97 e5                                      ldr r3, [r7, #0x30]
0053f024  03 00 a0 e1                                      mov r0, r3
0053f028  00 30 93 e5                                      ldr r3, [r3]
0053f02c  0f e0 a0 e1                                      mov lr, pc
0053f030  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053f034  08 20 9d e5                                      ldr r2, [sp, #8]
0053f038  60 40 8d e5                                      str r4, [sp, #0x60]
0053f03c  68 40 8d e5                                      str r4, [sp, #0x68]
0053f040  64 20 8d e5                                      str r2, [sp, #0x64]
0053f044  6c 20 8d e5                                      str r2, [sp, #0x6c]
0053f048  06 00 90 e9                                      ldmib r0, {r1, r2}
0053f04c  02 00 51 e1                                      cmp r1, r2
0053f050  b3 00 00 0a                                      beq #0x53f324
0053f054  00 40 81 e5                                      str r4, [r1]
0053f058  64 20 9d e5                                      ldr r2, [sp, #0x64]
0053f05c  01 40 84 e2                                      add r4, r4, #1
0053f060  0a 00 54 e1                                      cmp r4, sl
0053f064  04 20 81 e5                                      str r2, [r1, #4]
0053f068  68 20 9d e5                                      ldr r2, [sp, #0x68]
0053f06c  02 50 85 e2                                      add r5, r5, #2
0053f070  08 20 81 e5                                      str r2, [r1, #8]
0053f074  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0053f078  0c 20 81 e5                                      str r2, [r1, #0xc]
0053f07c  04 20 90 e5                                      ldr r2, [r0, #4]
0053f080  10 20 82 e2                                      add r2, r2, #0x10
0053f084  04 20 80 e5                                      str r2, [r0, #4]
0053f088  df ff ff 1a                                      bne #0x53f00c
0053f08c  02 50 45 e2                                      sub r5, r5, #2
0053f090  08 20 9d e5                                      ldr r2, [sp, #8]
0053f094  28 30 9d e5                                      ldr r3, [sp, #0x28]
0053f098  01 20 82 e2                                      add r2, r2, #1
0053f09c  03 00 52 e1                                      cmp r2, r3
0053f0a0  08 20 8d e5                                      str r2, [sp, #8]
0053f0a4  bc ff ff 1a                                      bne #0x53ef9c
0053f0a8  9c d0 8d e2                                      add sp, sp, #0x9c
0053f0ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053f0b0  30 30 97 e5                                      ldr r3, [r7, #0x30]
0053f0b4  03 00 a0 e1                                      mov r0, r3
0053f0b8  00 30 93 e5                                      ldr r3, [r3]
0053f0bc  0f e0 a0 e1                                      mov lr, pc
0053f0c0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053f0c4  00 20 90 e5                                      ldr r2, [r0]
0053f0c8  04 10 90 e5                                      ldr r1, [r0, #4]
0053f0cc  00 30 98 e5                                      ldr r3, [r8]
0053f0d0  01 20 62 e0                                      rsb r2, r2, r1
0053f0d4  42 02 53 e1                                      cmp r3, r2, asr #4
0053f0d8  94 00 00 2a                                      bhs #0x53f330
0053f0dc  00 60 a0 e3                                      mov r6, #0
0053f0e0  b2 60 45 e1                                      strh r6, [r5, #-2]
0053f0e4  30 30 97 e5                                      ldr r3, [r7, #0x30]
0053f0e8  03 00 a0 e1                                      mov r0, r3
0053f0ec  00 30 93 e5                                      ldr r3, [r3]
0053f0f0  0f e0 a0 e1                                      mov lr, pc
0053f0f4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053f0f8  00 30 98 e5                                      ldr r3, [r8]
0053f0fc  00 10 90 e5                                      ldr r1, [r0]
0053f100  18 20 9d e5                                      ldr r2, [sp, #0x18]
0053f104  14 00 9d e5                                      ldr r0, [sp, #0x14]
0053f108  03 32 81 e0                                      add r3, r1, r3, lsl #4
0053f10c  08 10 9d e5                                      ldr r1, [sp, #8]
0053f110  08 40 83 e5                                      str r4, [r3, #8]
0053f114  0c 10 83 e5                                      str r1, [r3, #0xc]
0053f118  00 30 98 e5                                      ldr r3, [r8]
0053f11c  06 10 a0 e1                                      mov r1, r6
0053f120  88 60 8d e5                                      str r6, [sp, #0x88]
0053f124  8c 30 8d e5                                      str r3, [sp, #0x8c]
0053f128  50 60 8d e5                                      str r6, [sp, #0x50]
0053f12c  54 60 8d e5                                      str r6, [sp, #0x54]
0053f130  58 60 8d e5                                      str r6, [sp, #0x58]
0053f134  5c 60 8d e5                                      str r6, [sp, #0x5c]
0053f138  b1 fe ff eb                                      bl #0x53ec04
0053f13c  30 30 97 e5                                      ldr r3, [r7, #0x30]
0053f140  5c 60 8d e5                                      str r6, [sp, #0x5c]
0053f144  03 00 a0 e1                                      mov r0, r3
0053f148  00 30 93 e5                                      ldr r3, [r3]
0053f14c  0f e0 a0 e1                                      mov lr, pc
0053f150  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0053f154  14 10 9d e5                                      ldr r1, [sp, #0x14]
0053f158  22 ff ff eb                                      bl #0x53ede8
0053f15c  00 20 98 e5                                      ldr r2, [r8]
0053f160  30 30 97 e5                                      ldr r3, [r7, #0x30]
0053f164  48 60 8d e5                                      str r6, [sp, #0x48]
0053f168  4c 20 8d e5                                      str r2, [sp, #0x4c]
0053f16c  40 60 8d e5                                      str r6, [sp, #0x40]
0053f170  44 60 8d e5                                      str r6, [sp, #0x44]
0053f174  03 00 a0 e1                                      mov r0, r3
0053f178  00 30 93 e5                                      ldr r3, [r3]
0053f17c  0f e0 a0 e1                                      mov lr, pc
0053f180  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053f184  00 20 98 e5                                      ldr r2, [r8]
0053f188  00 30 90 e5                                      ldr r3, [r0]
0053f18c  0c c0 97 e5                                      ldr ip, [r7, #0xc]
0053f190  10 00 97 e5                                      ldr r0, [r7, #0x10]
0053f194  02 12 83 e0                                      add r1, r3, r2, lsl #4
0053f198  02 32 93 e7                                      ldr r3, [r3, r2, lsl #4]
0053f19c  08 20 91 e5                                      ldr r2, [r1, #8]
0053f1a0  00 00 5c e1                                      cmp ip, r0
0053f1a4  02 30 63 e0                                      rsb r3, r3, r2
0053f1a8  48 30 8d e5                                      str r3, [sp, #0x48]
0053f1ac  57 00 00 0a                                      beq #0x53f310
0053f1b0  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0053f1b4  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
0053f1b8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0053f1bc  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0053f1c0  10 30 83 e2                                      add r3, r3, #0x10
0053f1c4  0c 30 87 e5                                      str r3, [r7, #0xc]
0053f1c8  18 c0 97 e5                                      ldr ip, [r7, #0x18]
0053f1cc  00 10 98 e5                                      ldr r1, [r8]
0053f1d0  00 00 5c e3                                      cmp ip, #0
0053f1d4  10 10 8d e5                                      str r1, [sp, #0x10]
0053f1d8  20 60 81 e2                                      add r6, r1, #0x20
0053f1dc  3f 00 00 0a                                      beq #0x53f2e0
0053f1e0  04 10 9d e5                                      ldr r1, [sp, #4]
0053f1e4  0c 30 a0 e1                                      mov r3, ip
0053f1e8  00 00 00 ea                                      b #0x53f1f0
0053f1ec  02 30 a0 e1                                      mov r3, r2
0053f1f0  10 20 93 e5                                      ldr r2, [r3, #0x10]
0053f1f4  02 00 56 e1                                      cmp r6, r2
0053f1f8  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0053f1fc  08 20 93 95                                      ldrls r2, [r3, #8]
0053f200  01 30 a0 81                                      movhi r3, r1
0053f204  03 10 a0 e1                                      mov r1, r3
0053f208  00 00 52 e3                                      cmp r2, #0
0053f20c  f6 ff ff 1a                                      bne #0x53f1ec
0053f210  04 20 9d e5                                      ldr r2, [sp, #4]
0053f214  03 00 52 e1                                      cmp r2, r3
0053f218  30 00 00 0a                                      beq #0x53f2e0
0053f21c  10 20 93 e5                                      ldr r2, [r3, #0x10]
0053f220  02 00 56 e1                                      cmp r6, r2
0053f224  2d 00 00 3a                                      blo #0x53f2e0
0053f228  04 10 9d e5                                      ldr r1, [sp, #4]
0053f22c  03 00 51 e1                                      cmp r1, r3
0053f230  2e 00 00 0a                                      beq #0x53f2f0
0053f234  00 00 5c e3                                      cmp ip, #0
0053f238  04 c0 9d 05                                      ldreq ip, [sp, #4]
0053f23c  0a 00 00 0a                                      beq #0x53f26c
0053f240  01 20 a0 e1                                      mov r2, r1
0053f244  00 00 00 ea                                      b #0x53f24c
0053f248  03 c0 a0 e1                                      mov ip, r3
0053f24c  10 30 9c e5                                      ldr r3, [ip, #0x10]
0053f250  03 00 56 e1                                      cmp r6, r3
0053f254  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0053f258  08 30 9c 95                                      ldrls r3, [ip, #8]
0053f25c  02 c0 a0 81                                      movhi ip, r2
0053f260  0c 20 a0 e1                                      mov r2, ip
0053f264  00 00 53 e3                                      cmp r3, #0
0053f268  f6 ff ff 1a                                      bne #0x53f248
0053f26c  04 20 9d e5                                      ldr r2, [sp, #4]
0053f270  0c 00 52 e1                                      cmp r2, ip
0053f274  03 00 00 0a                                      beq #0x53f288
0053f278  10 20 9c e5                                      ldr r2, [ip, #0x10]
0053f27c  0c 30 a0 e1                                      mov r3, ip
0053f280  02 00 56 e1                                      cmp r6, r2
0053f284  0b 00 00 2a                                      bhs #0x53f2b8
0053f288  20 30 9d e5                                      ldr r3, [sp, #0x20]
0053f28c  00 e0 a0 e3                                      mov lr, #0
0053f290  30 00 9d e5                                      ldr r0, [sp, #0x30]
0053f294  04 10 9d e5                                      ldr r1, [sp, #4]
0053f298  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0053f29c  78 60 8d e5                                      str r6, [sp, #0x78]
0053f2a0  7c e0 8d e5                                      str lr, [sp, #0x7c]
0053f2a4  94 c0 8d e5                                      str ip, [sp, #0x94]
0053f2a8  cc fc ff eb                                      bl #0x53e5e0
0053f2ac  00 30 98 e5                                      ldr r3, [r8]
0053f2b0  10 30 8d e5                                      str r3, [sp, #0x10]
0053f2b4  90 30 9d e5                                      ldr r3, [sp, #0x90]
0053f2b8  10 60 9d e5                                      ldr r6, [sp, #0x10]
0053f2bc  14 60 83 e5                                      str r6, [r3, #0x14]
0053f2c0  00 30 98 e5                                      ldr r3, [r8]
0053f2c4  50 00 9d e5                                      ldr r0, [sp, #0x50]
0053f2c8  01 30 83 e2                                      add r3, r3, #1
0053f2cc  00 00 50 e3                                      cmp r0, #0
0053f2d0  00 30 88 e5                                      str r3, [r8]
0053f2d4  48 ff ff 0a                                      beq #0x53effc
0053f2d8  5c 44 f7 eb                                      bl #0x310450
0053f2dc  46 ff ff ea                                      b #0x53effc
0053f2e0  04 30 9d e5                                      ldr r3, [sp, #4]
0053f2e4  04 10 9d e5                                      ldr r1, [sp, #4]
0053f2e8  03 00 51 e1                                      cmp r1, r3
0053f2ec  d0 ff ff 1a                                      bne #0x53f234
0053f2f0  10 30 9d e5                                      ldr r3, [sp, #0x10]
0053f2f4  34 00 9d e5                                      ldr r0, [sp, #0x34]
0053f2f8  04 10 9d e5                                      ldr r1, [sp, #4]
0053f2fc  38 20 9d e5                                      ldr r2, [sp, #0x38]
0053f300  80 60 8d e5                                      str r6, [sp, #0x80]
0053f304  84 30 8d e5                                      str r3, [sp, #0x84]
0053f308  52 fc ff eb                                      bl #0x53e458
0053f30c  eb ff ff ea                                      b #0x53f2c0
0053f310  0c 10 a0 e1                                      mov r1, ip
0053f314  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0053f318  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0053f31c  04 fe ff eb                                      bl #0x53eb34
0053f320  a8 ff ff ea                                      b #0x53f1c8
0053f324  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0053f328  6e fe ff eb                                      bl #0x53ece8
0053f32c  32 ff ff ea                                      b #0x53effc
0053f330  00 30 a0 e3                                      mov r3, #0
0053f334  00 30 88 e5                                      str r3, [r8]
0053f338  5a ff ff ea                                      b #0x53f0a8
0053f33c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0053f340  03 10 a0 e3                                      mov r1, #3
0053f344  00 00 8f e0                                      add r0, pc, r0
0053f348  54 2e 03 eb                                      bl #0x60aca0
0053f34c  55 ff ff ea                                      b #0x53f0a8
; mapping-symbol data/literal pool
0053f350  14 ef 39 00                                      .byte 0x14, 0xef, 0x39, 0x00

; FUNCTION 0x0053f354, declared_size=1132, range_size=1132, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont18readPositions32bitERKN5boost13intrusive_ptrINS_5video6CImageEEERi
; demangled: glitch::gui::CGUIFont::readPositions32bit(boost::intrusive_ptr<glitch::video::CImage> const&, int&)
; decoder-mode: arm
0053f354  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053f358  00 10 91 e5                                      ldr r1, [r1]
0053f35c  94 d0 4d e2                                      sub sp, sp, #0x94
0053f360  00 70 a0 e1                                      mov r7, r0
0053f364  08 10 8d e5                                      str r1, [sp, #8]
0053f368  08 50 91 e5                                      ldr r5, [r1, #8]
0053f36c  02 80 a0 e1                                      mov r8, r2
0053f370  00 00 55 e3                                      cmp r5, #0
0053f374  0b 01 00 0a                                      beq #0x53f7a8
0053f378  00 0a 95 e9                                      ldmib r5, {sb, fp}
0053f37c  00 a0 95 e5                                      ldr sl, [r5]
0053f380  04 b0 85 e5                                      str fp, [r5, #4]
0053f384  08 10 9d e5                                      ldr r1, [sp, #8]
0053f388  14 30 91 e5                                      ldr r3, [r1, #0x14]
0053f38c  00 00 53 e3                                      cmp r3, #0
0053f390  53 00 00 da                                      ble #0x53f4e4
0053f394  14 60 80 e2                                      add r6, r0, #0x14
0053f398  00 60 8d e5                                      str r6, [sp]
0053f39c  08 60 9d e5                                      ldr r6, [sp, #8]
0053f3a0  08 20 80 e2                                      add r2, r0, #8
0053f3a4  00 10 a0 e3                                      mov r1, #0
0053f3a8  04 10 8d e5                                      str r1, [sp, #4]
0053f3ac  34 20 8d e5                                      str r2, [sp, #0x34]
0053f3b0  48 10 8d e2                                      add r1, sp, #0x48
0053f3b4  10 20 96 e5                                      ldr r2, [r6, #0x10]
0053f3b8  80 60 8d e2                                      add r6, sp, #0x80
0053f3bc  14 10 8d e5                                      str r1, [sp, #0x14]
0053f3c0  68 10 8d e2                                      add r1, sp, #0x68
0053f3c4  18 60 8d e5                                      str r6, [sp, #0x18]
0053f3c8  2c 10 8d e5                                      str r1, [sp, #0x2c]
0053f3cc  78 60 8d e2                                      add r6, sp, #0x78
0053f3d0  88 10 8d e2                                      add r1, sp, #0x88
0053f3d4  30 60 8d e5                                      str r6, [sp, #0x30]
0053f3d8  28 10 8d e5                                      str r1, [sp, #0x28]
0053f3dc  00 00 52 e3                                      cmp r2, #0
0053f3e0  3a 00 00 da                                      ble #0x53f4d0
0053f3e4  8c 30 8d e2                                      add r3, sp, #0x8c
0053f3e8  1c 30 8d e5                                      str r3, [sp, #0x1c]
0053f3ec  70 60 8d e2                                      add r6, sp, #0x70
0053f3f0  38 10 8d e2                                      add r1, sp, #0x38
0053f3f4  58 30 8d e2                                      add r3, sp, #0x58
0053f3f8  04 50 85 e2                                      add r5, r5, #4
0053f3fc  00 40 a0 e3                                      mov r4, #0
0053f400  20 60 8d e5                                      str r6, [sp, #0x20]
0053f404  0c 10 8d e5                                      str r1, [sp, #0xc]
0053f408  24 30 8d e5                                      str r3, [sp, #0x24]
0053f40c  0a 00 00 ea                                      b #0x53f43c
0053f410  03 00 59 e1                                      cmp sb, r3
0053f414  34 00 00 0a                                      beq #0x53f4ec
0053f418  03 00 5b e1                                      cmp fp, r3
0053f41c  00 30 a0 03                                      moveq r3, #0
0053f420  04 30 05 05                                      streq r3, [r5, #-4]
0053f424  08 30 9d 05                                      ldreq r3, [sp, #8]
0053f428  10 20 93 05                                      ldreq r2, [r3, #0x10]
0053f42c  01 40 84 e2                                      add r4, r4, #1
0053f430  04 00 52 e1                                      cmp r2, r4
0053f434  04 50 85 e2                                      add r5, r5, #4
0053f438  21 00 00 da                                      ble #0x53f4c4
0053f43c  04 30 15 e5                                      ldr r3, [r5, #-4]
0053f440  0a 00 53 e1                                      cmp r3, sl
0053f444  f1 ff ff 1a                                      bne #0x53f410
0053f448  00 30 a0 e3                                      mov r3, #0
0053f44c  04 30 05 e5                                      str r3, [r5, #-4]
0053f450  30 30 97 e5                                      ldr r3, [r7, #0x30]
0053f454  03 00 a0 e1                                      mov r0, r3
0053f458  00 30 93 e5                                      ldr r3, [r3]
0053f45c  0f e0 a0 e1                                      mov lr, pc
0053f460  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053f464  04 20 9d e5                                      ldr r2, [sp, #4]
0053f468  58 40 8d e5                                      str r4, [sp, #0x58]
0053f46c  60 40 8d e5                                      str r4, [sp, #0x60]
0053f470  5c 20 8d e5                                      str r2, [sp, #0x5c]
0053f474  64 20 8d e5                                      str r2, [sp, #0x64]
0053f478  06 00 90 e9                                      ldmib r0, {r1, r2}
0053f47c  02 00 51 e1                                      cmp r1, r2
0053f480  c0 00 00 0a                                      beq #0x53f788
0053f484  00 40 81 e5                                      str r4, [r1]
0053f488  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0053f48c  01 40 84 e2                                      add r4, r4, #1
0053f490  04 50 85 e2                                      add r5, r5, #4
0053f494  04 20 81 e5                                      str r2, [r1, #4]
0053f498  60 20 9d e5                                      ldr r2, [sp, #0x60]
0053f49c  08 20 81 e5                                      str r2, [r1, #8]
0053f4a0  64 20 9d e5                                      ldr r2, [sp, #0x64]
0053f4a4  0c 20 81 e5                                      str r2, [r1, #0xc]
0053f4a8  04 20 90 e5                                      ldr r2, [r0, #4]
0053f4ac  10 20 82 e2                                      add r2, r2, #0x10
0053f4b0  04 20 80 e5                                      str r2, [r0, #4]
0053f4b4  08 30 9d e5                                      ldr r3, [sp, #8]
0053f4b8  10 20 93 e5                                      ldr r2, [r3, #0x10]
0053f4bc  04 00 52 e1                                      cmp r2, r4
0053f4c0  dd ff ff ca                                      bgt #0x53f43c
0053f4c4  08 60 9d e5                                      ldr r6, [sp, #8]
0053f4c8  04 50 45 e2                                      sub r5, r5, #4
0053f4cc  14 30 96 e5                                      ldr r3, [r6, #0x14]
0053f4d0  04 10 9d e5                                      ldr r1, [sp, #4]
0053f4d4  01 10 81 e2                                      add r1, r1, #1
0053f4d8  01 00 53 e1                                      cmp r3, r1
0053f4dc  04 10 8d e5                                      str r1, [sp, #4]
0053f4e0  bd ff ff ca                                      bgt #0x53f3dc
0053f4e4  94 d0 8d e2                                      add sp, sp, #0x94
0053f4e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053f4ec  30 30 97 e5                                      ldr r3, [r7, #0x30]
0053f4f0  03 00 a0 e1                                      mov r0, r3
0053f4f4  00 30 93 e5                                      ldr r3, [r3]
0053f4f8  0f e0 a0 e1                                      mov lr, pc
0053f4fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053f500  00 20 90 e5                                      ldr r2, [r0]
0053f504  04 10 90 e5                                      ldr r1, [r0, #4]
0053f508  00 30 98 e5                                      ldr r3, [r8]
0053f50c  01 20 62 e0                                      rsb r2, r2, r1
0053f510  42 02 53 e1                                      cmp r3, r2, asr #4
0053f514  a0 00 00 2a                                      bhs #0x53f79c
0053f518  00 60 a0 e3                                      mov r6, #0
0053f51c  04 60 05 e5                                      str r6, [r5, #-4]
0053f520  30 30 97 e5                                      ldr r3, [r7, #0x30]
0053f524  03 00 a0 e1                                      mov r0, r3
0053f528  00 30 93 e5                                      ldr r3, [r3]
0053f52c  0f e0 a0 e1                                      mov lr, pc
0053f530  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053f534  00 10 98 e5                                      ldr r1, [r8]
0053f538  00 30 90 e5                                      ldr r3, [r0]
0053f53c  18 20 9d e5                                      ldr r2, [sp, #0x18]
0053f540  14 00 9d e5                                      ldr r0, [sp, #0x14]
0053f544  01 32 83 e0                                      add r3, r3, r1, lsl #4
0053f548  04 10 9d e5                                      ldr r1, [sp, #4]
0053f54c  08 40 83 e5                                      str r4, [r3, #8]
0053f550  0c 10 83 e5                                      str r1, [r3, #0xc]
0053f554  00 30 98 e5                                      ldr r3, [r8]
0053f558  06 10 a0 e1                                      mov r1, r6
0053f55c  80 60 8d e5                                      str r6, [sp, #0x80]
0053f560  84 30 8d e5                                      str r3, [sp, #0x84]
0053f564  48 60 8d e5                                      str r6, [sp, #0x48]
0053f568  4c 60 8d e5                                      str r6, [sp, #0x4c]
0053f56c  50 60 8d e5                                      str r6, [sp, #0x50]
0053f570  54 60 8d e5                                      str r6, [sp, #0x54]
0053f574  a2 fd ff eb                                      bl #0x53ec04
0053f578  30 30 97 e5                                      ldr r3, [r7, #0x30]
0053f57c  54 60 8d e5                                      str r6, [sp, #0x54]
0053f580  03 00 a0 e1                                      mov r0, r3
0053f584  00 30 93 e5                                      ldr r3, [r3]
0053f588  0f e0 a0 e1                                      mov lr, pc
0053f58c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0053f590  14 10 9d e5                                      ldr r1, [sp, #0x14]
0053f594  13 fe ff eb                                      bl #0x53ede8
0053f598  00 20 98 e5                                      ldr r2, [r8]
0053f59c  30 30 97 e5                                      ldr r3, [r7, #0x30]
0053f5a0  40 60 8d e5                                      str r6, [sp, #0x40]
0053f5a4  44 20 8d e5                                      str r2, [sp, #0x44]
0053f5a8  38 60 8d e5                                      str r6, [sp, #0x38]
0053f5ac  3c 60 8d e5                                      str r6, [sp, #0x3c]
0053f5b0  03 00 a0 e1                                      mov r0, r3
0053f5b4  00 30 93 e5                                      ldr r3, [r3]
0053f5b8  0f e0 a0 e1                                      mov lr, pc
0053f5bc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053f5c0  00 20 98 e5                                      ldr r2, [r8]
0053f5c4  00 30 90 e5                                      ldr r3, [r0]
0053f5c8  0c c0 97 e5                                      ldr ip, [r7, #0xc]
0053f5cc  10 00 97 e5                                      ldr r0, [r7, #0x10]
0053f5d0  02 12 83 e0                                      add r1, r3, r2, lsl #4
0053f5d4  02 32 93 e7                                      ldr r3, [r3, r2, lsl #4]
0053f5d8  08 20 91 e5                                      ldr r2, [r1, #8]
0053f5dc  00 00 5c e1                                      cmp ip, r0
0053f5e0  02 30 63 e0                                      rsb r3, r3, r2
0053f5e4  40 30 8d e5                                      str r3, [sp, #0x40]
0053f5e8  61 00 00 0a                                      beq #0x53f774
0053f5ec  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0053f5f0  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
0053f5f4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0053f5f8  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0053f5fc  10 30 83 e2                                      add r3, r3, #0x10
0053f600  0c 30 87 e5                                      str r3, [r7, #0xc]
0053f604  18 c0 97 e5                                      ldr ip, [r7, #0x18]
0053f608  00 10 98 e5                                      ldr r1, [r8]
0053f60c  00 00 5c e3                                      cmp ip, #0
0053f610  10 10 8d e5                                      str r1, [sp, #0x10]
0053f614  20 60 81 e2                                      add r6, r1, #0x20
0053f618  41 00 00 0a                                      beq #0x53f724
0053f61c  00 10 9d e5                                      ldr r1, [sp]
0053f620  0c 30 a0 e1                                      mov r3, ip
0053f624  00 00 00 ea                                      b #0x53f62c
0053f628  02 30 a0 e1                                      mov r3, r2
0053f62c  10 20 93 e5                                      ldr r2, [r3, #0x10]
0053f630  02 00 56 e1                                      cmp r6, r2
0053f634  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0053f638  08 20 93 95                                      ldrls r2, [r3, #8]
0053f63c  01 30 a0 81                                      movhi r3, r1
0053f640  03 10 a0 e1                                      mov r1, r3
0053f644  00 00 52 e3                                      cmp r2, #0
0053f648  f6 ff ff 1a                                      bne #0x53f628
0053f64c  00 20 9d e5                                      ldr r2, [sp]
0053f650  03 00 52 e1                                      cmp r2, r3
0053f654  32 00 00 0a                                      beq #0x53f724
0053f658  10 20 93 e5                                      ldr r2, [r3, #0x10]
0053f65c  02 00 56 e1                                      cmp r6, r2
0053f660  2f 00 00 3a                                      blo #0x53f724
0053f664  00 10 9d e5                                      ldr r1, [sp]
0053f668  03 00 51 e1                                      cmp r1, r3
0053f66c  30 00 00 0a                                      beq #0x53f734
0053f670  00 00 5c e3                                      cmp ip, #0
0053f674  00 c0 9d 05                                      ldreq ip, [sp]
0053f678  0a 00 00 0a                                      beq #0x53f6a8
0053f67c  01 20 a0 e1                                      mov r2, r1
0053f680  00 00 00 ea                                      b #0x53f688
0053f684  03 c0 a0 e1                                      mov ip, r3
0053f688  10 30 9c e5                                      ldr r3, [ip, #0x10]
0053f68c  03 00 56 e1                                      cmp r6, r3
0053f690  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0053f694  08 30 9c 95                                      ldrls r3, [ip, #8]
0053f698  02 c0 a0 81                                      movhi ip, r2
0053f69c  0c 20 a0 e1                                      mov r2, ip
0053f6a0  00 00 53 e3                                      cmp r3, #0
0053f6a4  f6 ff ff 1a                                      bne #0x53f684
0053f6a8  00 20 9d e5                                      ldr r2, [sp]
0053f6ac  0c 00 52 e1                                      cmp r2, ip
0053f6b0  03 00 00 0a                                      beq #0x53f6c4
0053f6b4  10 20 9c e5                                      ldr r2, [ip, #0x10]
0053f6b8  0c 30 a0 e1                                      mov r3, ip
0053f6bc  02 00 56 e1                                      cmp r6, r2
0053f6c0  0b 00 00 2a                                      bhs #0x53f6f4
0053f6c4  20 30 9d e5                                      ldr r3, [sp, #0x20]
0053f6c8  00 e0 a0 e3                                      mov lr, #0
0053f6cc  28 00 9d e5                                      ldr r0, [sp, #0x28]
0053f6d0  00 10 9d e5                                      ldr r1, [sp]
0053f6d4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0053f6d8  70 60 8d e5                                      str r6, [sp, #0x70]
0053f6dc  74 e0 8d e5                                      str lr, [sp, #0x74]
0053f6e0  8c c0 8d e5                                      str ip, [sp, #0x8c]
0053f6e4  bd fb ff eb                                      bl #0x53e5e0
0053f6e8  00 30 98 e5                                      ldr r3, [r8]
0053f6ec  10 30 8d e5                                      str r3, [sp, #0x10]
0053f6f0  88 30 9d e5                                      ldr r3, [sp, #0x88]
0053f6f4  10 60 9d e5                                      ldr r6, [sp, #0x10]
0053f6f8  14 60 83 e5                                      str r6, [r3, #0x14]
0053f6fc  00 30 98 e5                                      ldr r3, [r8]
0053f700  48 00 9d e5                                      ldr r0, [sp, #0x48]
0053f704  01 30 83 e2                                      add r3, r3, #1
0053f708  00 00 50 e3                                      cmp r0, #0
0053f70c  00 30 88 e5                                      str r3, [r8]
0053f710  14 00 00 0a                                      beq #0x53f768
0053f714  4d 43 f7 eb                                      bl #0x310450
0053f718  08 10 9d e5                                      ldr r1, [sp, #8]
0053f71c  10 20 91 e5                                      ldr r2, [r1, #0x10]
0053f720  41 ff ff ea                                      b #0x53f42c
0053f724  00 30 9d e5                                      ldr r3, [sp]
0053f728  00 10 9d e5                                      ldr r1, [sp]
0053f72c  03 00 51 e1                                      cmp r1, r3
0053f730  ce ff ff 1a                                      bne #0x53f670
0053f734  10 30 9d e5                                      ldr r3, [sp, #0x10]
0053f738  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0053f73c  00 10 9d e5                                      ldr r1, [sp]
0053f740  30 20 9d e5                                      ldr r2, [sp, #0x30]
0053f744  7c 30 8d e5                                      str r3, [sp, #0x7c]
0053f748  78 60 8d e5                                      str r6, [sp, #0x78]
0053f74c  41 fb ff eb                                      bl #0x53e458
0053f750  00 30 98 e5                                      ldr r3, [r8]
0053f754  48 00 9d e5                                      ldr r0, [sp, #0x48]
0053f758  01 30 83 e2                                      add r3, r3, #1
0053f75c  00 00 50 e3                                      cmp r0, #0
0053f760  00 30 88 e5                                      str r3, [r8]
0053f764  ea ff ff 1a                                      bne #0x53f714
0053f768  08 60 9d e5                                      ldr r6, [sp, #8]
0053f76c  10 20 96 e5                                      ldr r2, [r6, #0x10]
0053f770  2d ff ff ea                                      b #0x53f42c
0053f774  0c 10 a0 e1                                      mov r1, ip
0053f778  34 00 9d e5                                      ldr r0, [sp, #0x34]
0053f77c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0053f780  eb fc ff eb                                      bl #0x53eb34
0053f784  9e ff ff ea                                      b #0x53f604
0053f788  24 20 9d e5                                      ldr r2, [sp, #0x24]
0053f78c  55 fd ff eb                                      bl #0x53ece8
0053f790  08 60 9d e5                                      ldr r6, [sp, #8]
0053f794  10 20 96 e5                                      ldr r2, [r6, #0x10]
0053f798  23 ff ff ea                                      b #0x53f42c
0053f79c  00 30 a0 e3                                      mov r3, #0
0053f7a0  00 30 88 e5                                      str r3, [r8]
0053f7a4  4e ff ff ea                                      b #0x53f4e4
0053f7a8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0053f7ac  03 10 a0 e3                                      mov r1, #3
0053f7b0  00 00 8f e0                                      add r0, pc, r0
0053f7b4  39 2d 03 eb                                      bl #0x60aca0
0053f7b8  49 ff ff ea                                      b #0x53f4e4
; mapping-symbol data/literal pool
0053f7bc  a8 ea 39 00                                      .byte 0xa8, 0xea, 0x39, 0x00

; FUNCTION 0x0053f7c0, declared_size=828, range_size=828, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont11loadTextureERKN5boost13intrusive_ptrINS_5video6CImageEEEPKc
; demangled: glitch::gui::CGUIFont::loadTexture(boost::intrusive_ptr<glitch::video::CImage> const&, char const*)
; decoder-mode: arm
0053f7c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053f7c4  00 30 91 e5                                      ldr r3, [r1]
0053f7c8  01 50 a0 e1                                      mov r5, r1
0053f7cc  18 d0 4d e2                                      sub sp, sp, #0x18
0053f7d0  00 00 53 e3                                      cmp r3, #0
0053f7d4  00 40 a0 e1                                      mov r4, r0
0053f7d8  02 80 a0 e1                                      mov r8, r2
0053f7dc  03 50 a0 01                                      moveq r5, r3
0053f7e0  79 00 00 0a                                      beq #0x53f9cc
0053f7e4  00 20 a0 e3                                      mov r2, #0
0053f7e8  14 20 8d e5                                      str r2, [sp, #0x14]
0053f7ec  10 30 8d e5                                      str r3, [sp, #0x10]
0053f7f0  04 20 93 e5                                      ldr r2, [r3, #4]
0053f7f4  01 20 82 e2                                      add r2, r2, #1
0053f7f8  04 20 83 e5                                      str r2, [r3, #4]
0053f7fc  00 30 95 e5                                      ldr r3, [r5]
0053f800  20 30 93 e5                                      ldr r3, [r3, #0x20]
0053f804  05 30 43 e2                                      sub r3, r3, #5
0053f808  09 00 53 e3                                      cmp r3, #9
0053f80c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0053f810  a8 00 00 ea                                      b #0x53fab8
0053f814  6f 00 00 ea                                      b #0x53f9d8
0053f818  a6 00 00 ea                                      b #0x53fab8
0053f81c  a5 00 00 ea                                      b #0x53fab8
0053f820  6c 00 00 ea                                      b #0x53f9d8
0053f824  7b 00 00 ea                                      b #0x53fa18
0053f828  03 00 00 ea                                      b #0x53f83c
0053f82c  a1 00 00 ea                                      b #0x53fab8
0053f830  11 00 00 ea                                      b #0x53f87c
0053f834  10 00 00 ea                                      b #0x53f87c
0053f838  0f 00 00 ea                                      b #0x53f87c
0053f83c  00 10 a0 e3                                      mov r1, #0
0053f840  2c 00 a0 e3                                      mov r0, #0x2c
0053f844  58 d2 ff eb                                      bl #0x5341ac
0053f848  05 20 a0 e1                                      mov r2, r5
0053f84c  0c 10 a0 e3                                      mov r1, #0xc
0053f850  00 60 a0 e1                                      mov r6, r0
0053f854  37 09 03 eb                                      bl #0x601d38
0053f858  00 00 56 e3                                      cmp r6, #0
0053f85c  04 30 96 15                                      ldrne r3, [r6, #4]
0053f860  01 30 83 12                                      addne r3, r3, #1
0053f864  04 30 86 15                                      strne r3, [r6, #4]
0053f868  10 00 9d e5                                      ldr r0, [sp, #0x10]
0053f86c  10 60 8d e5                                      str r6, [sp, #0x10]
0053f870  00 00 50 e3                                      cmp r0, #0
0053f874  00 00 00 0a                                      beq #0x53f87c
0053f878  41 77 f7 eb                                      bl #0x31d584
0053f87c  10 60 8d e2                                      add r6, sp, #0x10
0053f880  04 00 a0 e1                                      mov r0, r4
0053f884  06 10 a0 e1                                      mov r1, r6
0053f888  14 20 8d e2                                      add r2, sp, #0x14
0053f88c  b0 fe ff eb                                      bl #0x53f354
0053f890  04 00 a0 e1                                      mov r0, r4
0053f894  20 10 a0 e3                                      mov r1, #0x20
0053f898  71 f9 ff eb                                      bl #0x53de64
0053f89c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0053f8a0  38 00 84 e5                                      str r0, [r4, #0x38]
0053f8a4  00 00 53 e3                                      cmp r3, #0
0053f8a8  66 00 00 1a                                      bne #0x53fa48
0053f8ac  3c 02 9f e5                                      ldr r0, [pc, #0x23c]
0053f8b0  03 10 a0 e3                                      mov r1, #3
0053f8b4  00 00 8f e0                                      add r0, pc, r0
0053f8b8  f8 2c 03 eb                                      bl #0x60aca0
0053f8bc  30 30 94 e5                                      ldr r3, [r4, #0x30]
0053f8c0  03 00 a0 e1                                      mov r0, r3
0053f8c4  00 30 93 e5                                      ldr r3, [r3]
0053f8c8  0f e0 a0 e1                                      mov lr, pc
0053f8cc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0053f8d0  0c 00 90 e8                                      ldm r0, {r2, r3}
0053f8d4  03 00 52 e1                                      cmp r2, r3
0053f8d8  74 00 00 0a                                      beq #0x53fab0
0053f8dc  14 30 9d e5                                      ldr r3, [sp, #0x14]
0053f8e0  00 00 53 e3                                      cmp r3, #0
0053f8e4  71 00 00 0a                                      beq #0x53fab0
0053f8e8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0053f8ec  10 10 a0 e3                                      mov r1, #0x10
0053f8f0  00 20 a0 e3                                      mov r2, #0
0053f8f4  88 70 93 e5                                      ldr r7, [r3, #0x88]
0053f8f8  03 00 a0 e1                                      mov r0, r3
0053f8fc  00 30 93 e5                                      ldr r3, [r3]
0053f900  01 70 07 e0                                      and r7, r7, r1
0053f904  0f e0 a0 e1                                      mov lr, pc
0053f908  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0053f90c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0053f910  0c 50 8d e2                                      add r5, sp, #0xc
0053f914  00 c0 a0 e3                                      mov ip, #0
0053f918  e0 10 93 e5                                      ldr r1, [r3, #0xe0]
0053f91c  08 20 a0 e1                                      mov r2, r8
0053f920  06 30 a0 e1                                      mov r3, r6
0053f924  05 00 a0 e1                                      mov r0, r5
0053f928  01 60 a0 e3                                      mov r6, #1
0053f92c  40 10 8d e8                                      stm sp, {r6, ip}
0053f930  5b b4 02 eb                                      bl #0x5ecaa4
0053f934  00 00 57 e3                                      cmp r7, #0
0053f938  64 00 00 1a                                      bne #0x53fad0
0053f93c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0053f940  00 00 53 e3                                      cmp r3, #0
0053f944  0f 00 00 0a                                      beq #0x53f988
0053f948  38 20 93 e5                                      ldr r2, [r3, #0x38]
0053f94c  07 0a 12 e3                                      tst r2, #0x7000
0053f950  06 00 00 0a                                      beq #0x53f970
0053f954  b0 14 d3 e1                                      ldrh r1, [r3, #0x40]
0053f958  07 2a c2 e3                                      bic r2, r2, #0x7000
0053f95c  38 20 83 e5                                      str r2, [r3, #0x38]
0053f960  04 20 81 e3                                      orr r2, r1, #4
0053f964  b0 24 c3 e1                                      strh r2, [r3, #0x40]
0053f968  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0053f96c  38 20 93 e5                                      ldr r2, [r3, #0x38]
0053f970  0e 09 12 e3                                      tst r2, #0x38000
0053f974  b0 14 d3 11                                      ldrhne r1, [r3, #0x40]
0053f978  0e 29 c2 13                                      bicne r2, r2, #0x38000
0053f97c  38 20 83 15                                      strne r2, [r3, #0x38]
0053f980  08 20 81 13                                      orrne r2, r1, #8
0053f984  b0 24 c3 11                                      strhne r2, [r3, #0x40]
0053f988  30 30 94 e5                                      ldr r3, [r4, #0x30]
0053f98c  05 10 a0 e1                                      mov r1, r5
0053f990  03 00 a0 e1                                      mov r0, r3
0053f994  00 30 93 e5                                      ldr r3, [r3]
0053f998  0f e0 a0 e1                                      mov lr, pc
0053f99c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053f9a0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0053f9a4  00 00 50 e3                                      cmp r0, #0
0053f9a8  00 00 00 0a                                      beq #0x53f9b0
0053f9ac  f4 76 f7 eb                                      bl #0x31d584
0053f9b0  01 50 a0 e3                                      mov r5, #1
0053f9b4  04 00 a0 e1                                      mov r0, r4
0053f9b8  08 f9 ff eb                                      bl #0x53dde0
0053f9bc  10 00 9d e5                                      ldr r0, [sp, #0x10]
0053f9c0  00 00 50 e3                                      cmp r0, #0
0053f9c4  00 00 00 0a                                      beq #0x53f9cc
0053f9c8  ed 76 f7 eb                                      bl #0x31d584
0053f9cc  05 00 a0 e1                                      mov r0, r5
0053f9d0  18 d0 8d e2                                      add sp, sp, #0x18
0053f9d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0053f9d8  00 10 a0 e3                                      mov r1, #0
0053f9dc  2c 00 a0 e3                                      mov r0, #0x2c
0053f9e0  f1 d1 ff eb                                      bl #0x5341ac
0053f9e4  05 20 a0 e1                                      mov r2, r5
0053f9e8  09 10 a0 e3                                      mov r1, #9
0053f9ec  00 60 a0 e1                                      mov r6, r0
0053f9f0  d0 08 03 eb                                      bl #0x601d38
0053f9f4  00 00 56 e3                                      cmp r6, #0
0053f9f8  04 30 96 15                                      ldrne r3, [r6, #4]
0053f9fc  01 30 83 12                                      addne r3, r3, #1
0053fa00  04 30 86 15                                      strne r3, [r6, #4]
0053fa04  10 00 9d e5                                      ldr r0, [sp, #0x10]
0053fa08  10 60 8d e5                                      str r6, [sp, #0x10]
0053fa0c  00 00 50 e3                                      cmp r0, #0
0053fa10  00 00 00 0a                                      beq #0x53fa18
0053fa14  da 76 f7 eb                                      bl #0x31d584
0053fa18  10 60 8d e2                                      add r6, sp, #0x10
0053fa1c  04 00 a0 e1                                      mov r0, r4
0053fa20  06 10 a0 e1                                      mov r1, r6
0053fa24  14 20 8d e2                                      add r2, sp, #0x14
0053fa28  36 fd ff eb                                      bl #0x53ef08
0053fa2c  04 00 a0 e1                                      mov r0, r4
0053fa30  20 10 a0 e3                                      mov r1, #0x20
0053fa34  0a f9 ff eb                                      bl #0x53de64
0053fa38  14 30 9d e5                                      ldr r3, [sp, #0x14]
0053fa3c  38 00 84 e5                                      str r0, [r4, #0x38]
0053fa40  00 00 53 e3                                      cmp r3, #0
0053fa44  98 ff ff 0a                                      beq #0x53f8ac
0053fa48  30 30 94 e5                                      ldr r3, [r4, #0x30]
0053fa4c  03 00 a0 e1                                      mov r0, r3
0053fa50  00 30 93 e5                                      ldr r3, [r3]
0053fa54  0f e0 a0 e1                                      mov lr, pc
0053fa58  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0053fa5c  00 30 90 e5                                      ldr r3, [r0]
0053fa60  04 20 90 e5                                      ldr r2, [r0, #4]
0053fa64  02 30 63 e0                                      rsb r3, r3, r2
0053fa68  23 32 b0 e1                                      lsrs r3, r3, #4
0053fa6c  8e ff ff 0a                                      beq #0x53f8ac
0053fa70  30 30 94 e5                                      ldr r3, [r4, #0x30]
0053fa74  03 00 a0 e1                                      mov r0, r3
0053fa78  00 30 93 e5                                      ldr r3, [r3]
0053fa7c  0f e0 a0 e1                                      mov lr, pc
0053fa80  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053fa84  00 30 90 e5                                      ldr r3, [r0]
0053fa88  04 20 90 e5                                      ldr r2, [r0, #4]
0053fa8c  02 20 63 e0                                      rsb r2, r3, r2
0053fa90  14 30 9d e5                                      ldr r3, [sp, #0x14]
0053fa94  42 02 53 e1                                      cmp r3, r2, asr #4
0053fa98  87 ff ff 0a                                      beq #0x53f8bc
0053fa9c  50 00 9f e5                                      ldr r0, [pc, #0x50]
0053faa0  03 10 a0 e3                                      mov r1, #3
0053faa4  00 00 8f e0                                      add r0, pc, r0
0053faa8  7c 2c 03 eb                                      bl #0x60aca0
0053faac  82 ff ff ea                                      b #0x53f8bc
0053fab0  00 50 a0 e3                                      mov r5, #0
0053fab4  be ff ff ea                                      b #0x53f9b4
0053fab8  38 00 9f e5                                      ldr r0, [pc, #0x38]
0053fabc  03 10 a0 e3                                      mov r1, #3
0053fac0  00 50 a0 e3                                      mov r5, #0
0053fac4  00 00 8f e0                                      add r0, pc, r0
0053fac8  74 2c 03 eb                                      bl #0x60aca0
0053facc  ba ff ff ea                                      b #0x53f9bc
0053fad0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0053fad4  06 20 a0 e1                                      mov r2, r6
0053fad8  10 10 a0 e3                                      mov r1, #0x10
0053fadc  03 00 a0 e1                                      mov r0, r3
0053fae0  00 30 93 e5                                      ldr r3, [r3]
0053fae4  0f e0 a0 e1                                      mov lr, pc
0053fae8  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0053faec  92 ff ff ea                                      b #0x53f93c
; mapping-symbol data/literal pool
0053faf0  14 ea 39 00 d4 e8 39 00 d4 e7 39 00              .byte 0x14, 0xea, 0x39, 0x00, 0xd4, 0xe8, 0x39, 0x00, 0xd4, 0xe7, 0x39, 0x00

; FUNCTION 0x0053fafc, declared_size=100, range_size=100, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont4loadEPKc
; demangled: glitch::gui::CGUIFont::load(char const*)
; decoder-mode: arm
0053fafc  70 40 2d e9                                      push {r4, r5, r6, lr}
0053fb00  00 40 a0 e1                                      mov r4, r0
0053fb04  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0053fb08  08 d0 4d e2                                      sub sp, sp, #8
0053fb0c  01 50 a0 e1                                      mov r5, r1
0053fb10  00 00 50 e3                                      cmp r0, #0
0053fb14  00 40 a0 01                                      moveq r4, r0
0053fb18  0d 00 00 0a                                      beq #0x53fb54
0053fb1c  04 60 8d e2                                      add r6, sp, #4
0053fb20  e0 10 90 e5                                      ldr r1, [r0, #0xe0]
0053fb24  05 20 a0 e1                                      mov r2, r5
0053fb28  06 00 a0 e1                                      mov r0, r6
0053fb2c  99 a5 02 eb                                      bl #0x5e9198
0053fb30  04 00 a0 e1                                      mov r0, r4
0053fb34  06 10 a0 e1                                      mov r1, r6
0053fb38  05 20 a0 e1                                      mov r2, r5
0053fb3c  1f ff ff eb                                      bl #0x53f7c0
0053fb40  00 40 a0 e1                                      mov r4, r0
0053fb44  04 00 9d e5                                      ldr r0, [sp, #4]
0053fb48  00 00 50 e3                                      cmp r0, #0
0053fb4c  00 00 00 0a                                      beq #0x53fb54
0053fb50  8b 76 f7 eb                                      bl #0x31d584
0053fb54  04 00 a0 e1                                      mov r0, r4
0053fb58  08 d0 8d e2                                      add sp, sp, #8
0053fb5c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0053fb60, declared_size=116, range_size=116, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont4loadEPNS_2io9IReadFileE
; demangled: glitch::gui::CGUIFont::load(glitch::io::IReadFile*)
; decoder-mode: arm
0053fb60  70 40 2d e9                                      push {r4, r5, r6, lr}
0053fb64  00 50 a0 e1                                      mov r5, r0
0053fb68  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0053fb6c  01 40 a0 e1                                      mov r4, r1
0053fb70  08 d0 4d e2                                      sub sp, sp, #8
0053fb74  00 00 50 e3                                      cmp r0, #0
0053fb78  00 40 a0 01                                      moveq r4, r0
0053fb7c  11 00 00 0a                                      beq #0x53fbc8
0053fb80  04 60 8d e2                                      add r6, sp, #4
0053fb84  e0 10 90 e5                                      ldr r1, [r0, #0xe0]
0053fb88  04 20 a0 e1                                      mov r2, r4
0053fb8c  06 00 a0 e1                                      mov r0, r6
0053fb90  69 a5 02 eb                                      bl #0x5e913c
0053fb94  00 30 94 e5                                      ldr r3, [r4]
0053fb98  04 00 a0 e1                                      mov r0, r4
0053fb9c  0f e0 a0 e1                                      mov lr, pc
0053fba0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0053fba4  06 10 a0 e1                                      mov r1, r6
0053fba8  00 20 a0 e1                                      mov r2, r0
0053fbac  05 00 a0 e1                                      mov r0, r5
0053fbb0  02 ff ff eb                                      bl #0x53f7c0
0053fbb4  00 40 a0 e1                                      mov r4, r0
0053fbb8  04 00 9d e5                                      ldr r0, [sp, #4]
0053fbbc  00 00 50 e3                                      cmp r0, #0
0053fbc0  00 00 00 0a                                      beq #0x53fbc8
0053fbc4  6e 76 f7 eb                                      bl #0x31d584
0053fbc8  04 00 a0 e1                                      mov r0, r4
0053fbcc  08 d0 8d e2                                      add sp, sp, #8
0053fbd0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0053fbd4, declared_size=2284, range_size=2284, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont4loadEPNS_2io13IIrrXMLReaderIwNS_17IReferenceCountedEEE
; demangled: glitch::gui::CGUIFont::load(glitch::io::IIrrXMLReader<wchar_t, glitch::IReferenceCounted>*)
; decoder-mode: arm
0053fbd4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053fbd8  a8 68 9f e5                                      ldr r6, [pc, #0x8a8]
0053fbdc  a8 28 9f e5                                      ldr r2, [pc, #0x8a8]
0053fbe0  77 df 4d e2                                      sub sp, sp, #0x1dc
0053fbe4  06 60 8f e0                                      add r6, pc, r6
0053fbe8  0c 20 8d e5                                      str r2, [sp, #0xc]
0053fbec  02 20 96 e7                                      ldr r2, [r6, r2]
0053fbf0  30 30 90 e5                                      ldr r3, [r0, #0x30]
0053fbf4  00 50 a0 e1                                      mov r5, r0
0053fbf8  00 20 92 e5                                      ldr r2, [r2]
0053fbfc  00 00 53 e3                                      cmp r3, #0
0053fc00  01 40 a0 e1                                      mov r4, r1
0053fc04  d4 21 8d e5                                      str r2, [sp, #0x1d4]
0053fc08  0e 02 00 0a                                      beq #0x540448
0053fc0c  7c 38 9f e5                                      ldr r3, [pc, #0x87c]
0053fc10  08 20 80 e2                                      add r2, r0, #8
0053fc14  24 20 8d e5                                      str r2, [sp, #0x24]
0053fc18  03 30 8f e0                                      add r3, pc, r3
0053fc1c  08 30 8d e5                                      str r3, [sp, #8]
0053fc20  6c 38 9f e5                                      ldr r3, [pc, #0x86c]
0053fc24  03 30 8f e0                                      add r3, pc, r3
0053fc28  10 30 8d e5                                      str r3, [sp, #0x10]
0053fc2c  64 38 9f e5                                      ldr r3, [pc, #0x864]
0053fc30  03 30 8f e0                                      add r3, pc, r3
0053fc34  18 30 8d e5                                      str r3, [sp, #0x18]
0053fc38  5c 38 9f e5                                      ldr r3, [pc, #0x85c]
0053fc3c  03 30 8f e0                                      add r3, pc, r3
0053fc40  1c 30 8d e5                                      str r3, [sp, #0x1c]
0053fc44  14 30 80 e2                                      add r3, r0, #0x14
0053fc48  14 30 8d e5                                      str r3, [sp, #0x14]
0053fc4c  4c 38 9f e5                                      ldr r3, [pc, #0x84c]
0053fc50  20 30 8d e5                                      str r3, [sp, #0x20]
0053fc54  00 30 94 e5                                      ldr r3, [r4]
0053fc58  04 00 a0 e1                                      mov r0, r4
0053fc5c  0f e0 a0 e1                                      mov lr, pc
0053fc60  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053fc64  00 00 50 e3                                      cmp r0, #0
0053fc68  b7 00 00 0a                                      beq #0x53ff4c
0053fc6c  00 30 94 e5                                      ldr r3, [r4]
0053fc70  04 00 a0 e1                                      mov r0, r4
0053fc74  0f e0 a0 e1                                      mov lr, pc
0053fc78  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0053fc7c  01 00 50 e3                                      cmp r0, #1
0053fc80  f3 ff ff 1a                                      bne #0x53fc54
0053fc84  01 7c 8d e2                                      add r7, sp, #0x100
0053fc88  1a 2e 8d e2                                      add r2, sp, #0x1a0
0053fc8c  08 10 9d e5                                      ldr r1, [sp, #8]
0053fc90  07 00 a0 e1                                      mov r0, r7
0053fc94  98 98 f7 eb                                      bl #0x325efc
0053fc98  00 30 94 e5                                      ldr r3, [r4]
0053fc9c  04 00 a0 e1                                      mov r0, r4
0053fca0  0f e0 a0 e1                                      mov lr, pc
0053fca4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0053fca8  00 10 a0 e1                                      mov r1, r0
0053fcac  07 00 a0 e1                                      mov r0, r7
0053fcb0  d3 d9 ff eb                                      bl #0x536404
0053fcb4  00 80 a0 e1                                      mov r8, r0
0053fcb8  44 01 9d e5                                      ldr r0, [sp, #0x144]
0053fcbc  07 00 50 e1                                      cmp r0, r7
0053fcc0  02 00 00 0a                                      beq #0x53fcd0
0053fcc4  00 00 50 e3                                      cmp r0, #0
0053fcc8  00 00 00 0a                                      beq #0x53fcd0
0053fccc  df 41 f7 eb                                      bl #0x310450
0053fcd0  00 00 58 e3                                      cmp r8, #0
0053fcd4  ab 00 00 0a                                      beq #0x53ff88
0053fcd8  c4 17 9f e5                                      ldr r1, [pc, #0x7c4]
0053fcdc  00 30 94 e5                                      ldr r3, [r4]
0053fce0  04 00 a0 e1                                      mov r0, r4
0053fce4  01 10 8f e0                                      add r1, pc, r1
0053fce8  0f e0 a0 e1                                      mov lr, pc
0053fcec  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0053fcf0  6f 2f 8d e2                                      add r2, sp, #0x1bc
0053fcf4  00 10 a0 e1                                      mov r1, r0
0053fcf8  02 00 a0 e1                                      mov r0, r2
0053fcfc  04 20 8d e5                                      str r2, [sp, #4]
0053fd00  d4 9b f7 eb                                      bl #0x326c58
0053fd04  9c 17 9f e5                                      ldr r1, [pc, #0x79c]
0053fd08  00 30 94 e5                                      ldr r3, [r4]
0053fd0c  04 00 a0 e1                                      mov r0, r4
0053fd10  01 10 8f e0                                      add r1, pc, r1
0053fd14  0f e0 a0 e1                                      mov lr, pc
0053fd18  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0053fd1c  88 17 9f e5                                      ldr r1, [pc, #0x788]
0053fd20  00 70 a0 e1                                      mov r7, r0
0053fd24  00 30 94 e5                                      ldr r3, [r4]
0053fd28  01 10 8f e0                                      add r1, pc, r1
0053fd2c  04 00 a0 e1                                      mov r0, r4
0053fd30  0f e0 a0 e1                                      mov lr, pc
0053fd34  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0053fd38  b8 b0 8d e2                                      add fp, sp, #0xb8
0053fd3c  00 10 a0 e1                                      mov r1, r0
0053fd40  67 2f 8d e2                                      add r2, sp, #0x19c
0053fd44  0b 00 a0 e1                                      mov r0, fp
0053fd48  6b 98 f7 eb                                      bl #0x325efc
0053fd4c  01 80 87 e2                                      add r8, r7, #1
0053fd50  00 90 a0 e3                                      mov sb, #0
0053fd54  19 ae 8d e2                                      add sl, sp, #0x190
0053fd58  30 30 95 e5                                      ldr r3, [r5, #0x30]
0053fd5c  03 00 a0 e1                                      mov r0, r3
0053fd60  00 30 93 e5                                      ldr r3, [r3]
0053fd64  0f e0 a0 e1                                      mov lr, pc
0053fd68  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0053fd6c  08 00 50 e1                                      cmp r0, r8
0053fd70  10 00 00 2a                                      bhs #0x53fdb8
0053fd74  30 00 95 e5                                      ldr r0, [r5, #0x30]
0053fd78  0a 10 a0 e1                                      mov r1, sl
0053fd7c  00 30 90 e5                                      ldr r3, [r0]
0053fd80  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0053fd84  90 91 8d e5                                      str sb, [sp, #0x190]
0053fd88  33 ff 2f e1                                      blx r3
0053fd8c  90 01 9d e5                                      ldr r0, [sp, #0x190]
0053fd90  00 00 50 e3                                      cmp r0, #0
0053fd94  ef ff ff 0a                                      beq #0x53fd58
0053fd98  f9 75 f7 eb                                      bl #0x31d584
0053fd9c  30 30 95 e5                                      ldr r3, [r5, #0x30]
0053fda0  03 00 a0 e1                                      mov r0, r3
0053fda4  00 30 93 e5                                      ldr r3, [r3]
0053fda8  0f e0 a0 e1                                      mov lr, pc
0053fdac  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0053fdb0  08 00 50 e1                                      cmp r0, r8
0053fdb4  ee ff ff 3a                                      blo #0x53fd74
0053fdb8  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
0053fdbc  10 10 a0 e3                                      mov r1, #0x10
0053fdc0  00 20 a0 e3                                      mov r2, #0
0053fdc4  88 a0 93 e5                                      ldr sl, [r3, #0x88]
0053fdc8  03 00 a0 e1                                      mov r0, r3
0053fdcc  00 30 93 e5                                      ldr r3, [r3]
0053fdd0  0f e0 a0 e1                                      mov lr, pc
0053fdd4  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0053fdd8  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
0053fddc  5e 8f 8d e2                                      add r8, sp, #0x178
0053fde0  08 00 a0 e1                                      mov r0, r8
0053fde4  e0 10 93 e5                                      ldr r1, [r3, #0xe0]
0053fde8  d0 21 9d e5                                      ldr r2, [sp, #0x1d0]
0053fdec  00 30 a0 e3                                      mov r3, #0
0053fdf0  06 b5 02 eb                                      bl #0x5ed210
0053fdf4  78 31 9d e5                                      ldr r3, [sp, #0x178]
0053fdf8  5a a2 e0 e7                                      ubfx sl, sl, #4, #1
0053fdfc  00 00 53 e3                                      cmp r3, #0
0053fe00  0f 00 00 0a                                      beq #0x53fe44
0053fe04  38 20 93 e5                                      ldr r2, [r3, #0x38]
0053fe08  07 0a 12 e3                                      tst r2, #0x7000
0053fe0c  06 00 00 0a                                      beq #0x53fe2c
0053fe10  b0 14 d3 e1                                      ldrh r1, [r3, #0x40]
0053fe14  07 2a c2 e3                                      bic r2, r2, #0x7000
0053fe18  38 20 83 e5                                      str r2, [r3, #0x38]
0053fe1c  04 10 81 e3                                      orr r1, r1, #4
0053fe20  b0 14 c3 e1                                      strh r1, [r3, #0x40]
0053fe24  78 31 9d e5                                      ldr r3, [sp, #0x178]
0053fe28  38 20 93 e5                                      ldr r2, [r3, #0x38]
0053fe2c  0e 09 12 e3                                      tst r2, #0x38000
0053fe30  b0 14 d3 11                                      ldrhne r1, [r3, #0x40]
0053fe34  0e 29 c2 13                                      bicne r2, r2, #0x38000
0053fe38  38 20 83 15                                      strne r2, [r3, #0x38]
0053fe3c  08 10 81 13                                      orrne r1, r1, #8
0053fe40  b0 14 c3 11                                      strhne r1, [r3, #0x40]
0053fe44  30 30 95 e5                                      ldr r3, [r5, #0x30]
0053fe48  08 20 a0 e1                                      mov r2, r8
0053fe4c  07 10 a0 e1                                      mov r1, r7
0053fe50  03 00 a0 e1                                      mov r0, r3
0053fe54  00 30 93 e5                                      ldr r3, [r3]
0053fe58  0f e0 a0 e1                                      mov lr, pc
0053fe5c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0053fe60  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
0053fe64  0a 20 a0 e1                                      mov r2, sl
0053fe68  10 10 a0 e3                                      mov r1, #0x10
0053fe6c  03 00 a0 e1                                      mov r0, r3
0053fe70  00 30 93 e5                                      ldr r3, [r3]
0053fe74  0f e0 a0 e1                                      mov lr, pc
0053fe78  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0053fe7c  30 30 95 e5                                      ldr r3, [r5, #0x30]
0053fe80  63 0f 8d e2                                      add r0, sp, #0x18c
0053fe84  07 20 a0 e1                                      mov r2, r7
0053fe88  03 10 a0 e1                                      mov r1, r3
0053fe8c  00 30 93 e5                                      ldr r3, [r3]
0053fe90  0f e0 a0 e1                                      mov lr, pc
0053fe94  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0053fe98  8c 01 9d e5                                      ldr r0, [sp, #0x18c]
0053fe9c  00 00 50 e3                                      cmp r0, #0
0053fea0  3b 01 00 0a                                      beq #0x540394
0053fea4  b6 75 f7 eb                                      bl #0x31d584
0053fea8  00 16 9f e5                                      ldr r1, [pc, #0x600]
0053feac  70 80 8d e2                                      add r8, sp, #0x70
0053feb0  66 2f 8d e2                                      add r2, sp, #0x198
0053feb4  01 10 8f e0                                      add r1, pc, r1
0053feb8  08 00 a0 e1                                      mov r0, r8
0053febc  0e 98 f7 eb                                      bl #0x325efc
0053fec0  0b 00 a0 e1                                      mov r0, fp
0053fec4  08 10 a0 e1                                      mov r1, r8
0053fec8  f8 fa ff eb                                      bl #0x53eab0
0053fecc  00 a0 a0 e1                                      mov sl, r0
0053fed0  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
0053fed4  08 00 50 e1                                      cmp r0, r8
0053fed8  02 00 00 0a                                      beq #0x53fee8
0053fedc  00 00 50 e3                                      cmp r0, #0
0053fee0  00 00 00 0a                                      beq #0x53fee8
0053fee4  59 41 f7 eb                                      bl #0x310450
0053fee8  00 00 5a e3                                      cmp sl, #0
0053feec  3f 01 00 1a                                      bne #0x5403f0
0053fef0  78 01 9d e5                                      ldr r0, [sp, #0x178]
0053fef4  00 00 50 e3                                      cmp r0, #0
0053fef8  00 00 00 0a                                      beq #0x53ff00
0053fefc  a0 75 f7 eb                                      bl #0x31d584
0053ff00  fc 00 9d e5                                      ldr r0, [sp, #0xfc]
0053ff04  0b 00 50 e1                                      cmp r0, fp
0053ff08  02 00 00 0a                                      beq #0x53ff18
0053ff0c  00 00 50 e3                                      cmp r0, #0
0053ff10  00 00 00 0a                                      beq #0x53ff18
0053ff14  4d 41 f7 eb                                      bl #0x310450
0053ff18  d0 01 9d e5                                      ldr r0, [sp, #0x1d0]
0053ff1c  04 20 9d e5                                      ldr r2, [sp, #4]
0053ff20  02 00 50 e1                                      cmp r0, r2
0053ff24  4a ff ff 0a                                      beq #0x53fc54
0053ff28  00 00 50 e3                                      cmp r0, #0
0053ff2c  48 ff ff 0a                                      beq #0x53fc54
0053ff30  46 41 f7 eb                                      bl #0x310450
0053ff34  00 30 94 e5                                      ldr r3, [r4]
0053ff38  04 00 a0 e1                                      mov r0, r4
0053ff3c  0f e0 a0 e1                                      mov lr, pc
0053ff40  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053ff44  00 00 50 e3                                      cmp r0, #0
0053ff48  47 ff ff 1a                                      bne #0x53fc6c
0053ff4c  20 10 a0 e3                                      mov r1, #0x20
0053ff50  05 00 a0 e1                                      mov r0, r5
0053ff54  c2 f7 ff eb                                      bl #0x53de64
0053ff58  38 00 85 e5                                      str r0, [r5, #0x38]
0053ff5c  05 00 a0 e1                                      mov r0, r5
0053ff60  9e f7 ff eb                                      bl #0x53dde0
0053ff64  01 00 a0 e3                                      mov r0, #1
0053ff68  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0053ff6c  02 30 96 e7                                      ldr r3, [r6, r2]
0053ff70  d4 21 9d e5                                      ldr r2, [sp, #0x1d4]
0053ff74  00 30 93 e5                                      ldr r3, [r3]
0053ff78  03 00 52 e1                                      cmp r2, r3
0053ff7c  40 01 00 1a                                      bne #0x540484
0053ff80  77 df 8d e2                                      add sp, sp, #0x1dc
0053ff84  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053ff88  28 70 8d e2                                      add r7, sp, #0x28
0053ff8c  65 2f 8d e2                                      add r2, sp, #0x194
0053ff90  10 10 9d e5                                      ldr r1, [sp, #0x10]
0053ff94  07 00 a0 e1                                      mov r0, r7
0053ff98  d7 97 f7 eb                                      bl #0x325efc
0053ff9c  00 30 94 e5                                      ldr r3, [r4]
0053ffa0  04 00 a0 e1                                      mov r0, r4
0053ffa4  0f e0 a0 e1                                      mov lr, pc
0053ffa8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0053ffac  00 10 a0 e1                                      mov r1, r0
0053ffb0  07 00 a0 e1                                      mov r0, r7
0053ffb4  12 d9 ff eb                                      bl #0x536404
0053ffb8  00 80 a0 e1                                      mov r8, r0
0053ffbc  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0053ffc0  07 00 50 e1                                      cmp r0, r7
0053ffc4  02 00 00 0a                                      beq #0x53ffd4
0053ffc8  00 00 50 e3                                      cmp r0, #0
0053ffcc  00 00 00 0a                                      beq #0x53ffd4
0053ffd0  1e 41 f7 eb                                      bl #0x310450
0053ffd4  00 00 58 e3                                      cmp r8, #0
0053ffd8  1d ff ff 0a                                      beq #0x53fc54
0053ffdc  00 a0 a0 e3                                      mov sl, #0
0053ffe0  58 a1 8d e5                                      str sl, [sp, #0x158]
0053ffe4  5c a1 8d e5                                      str sl, [sp, #0x15c]
0053ffe8  60 a1 8d e5                                      str sl, [sp, #0x160]
0053ffec  64 a1 8d e5                                      str sl, [sp, #0x164]
0053fff0  48 a1 8d e5                                      str sl, [sp, #0x148]
0053fff4  4c a1 8d e5                                      str sl, [sp, #0x14c]
0053fff8  50 a1 8d e5                                      str sl, [sp, #0x150]
0053fffc  54 a1 8d e5                                      str sl, [sp, #0x154]
00540000  b8 a0 8d e5                                      str sl, [sp, #0xb8]
00540004  bc a0 8d e5                                      str sl, [sp, #0xbc]
00540008  c0 a0 8d e5                                      str sl, [sp, #0xc0]
0054000c  c4 a0 8d e5                                      str sl, [sp, #0xc4]
00540010  18 10 9d e5                                      ldr r1, [sp, #0x18]
00540014  00 30 94 e5                                      ldr r3, [r4]
00540018  04 00 a0 e1                                      mov r0, r4
0054001c  0f e0 a0 e1                                      mov lr, pc
00540020  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00540024  58 01 8d e5                                      str r0, [sp, #0x158]
00540028  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0054002c  00 30 94 e5                                      ldr r3, [r4]
00540030  04 00 a0 e1                                      mov r0, r4
00540034  0f e0 a0 e1                                      mov lr, pc
00540038  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0054003c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00540040  5c 01 8d e5                                      str r0, [sp, #0x15c]
00540044  69 7f 8d e2                                      add r7, sp, #0x1a4
00540048  03 00 a0 e1                                      mov r0, r3
0054004c  00 30 93 e5                                      ldr r3, [r3]
00540050  0f e0 a0 e1                                      mov lr, pc
00540054  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00540058  00 20 90 e5                                      ldr r2, [r0]
0054005c  04 00 90 e5                                      ldr r0, [r0, #4]
00540060  20 30 9d e5                                      ldr r3, [sp, #0x20]
00540064  00 20 62 e0                                      rsb r2, r2, r0
00540068  42 22 a0 e1                                      asr r2, r2, #4
0054006c  03 10 8f e0                                      add r1, pc, r3
00540070  04 00 a0 e1                                      mov r0, r4
00540074  00 30 94 e5                                      ldr r3, [r4]
00540078  64 21 8d e5                                      str r2, [sp, #0x164]
0054007c  0f e0 a0 e1                                      mov lr, pc
00540080  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00540084  28 14 9f e5                                      ldr r1, [pc, #0x428]
00540088  00 30 94 e5                                      ldr r3, [r4]
0054008c  00 80 a0 e1                                      mov r8, r0
00540090  01 10 8f e0                                      add r1, pc, r1
00540094  04 00 a0 e1                                      mov r0, r4
00540098  0f e0 a0 e1                                      mov lr, pc
0054009c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005400a0  00 10 a0 e1                                      mov r1, r0
005400a4  07 00 a0 e1                                      mov r0, r7
005400a8  ea 9a f7 eb                                      bl #0x326c58
005400ac  04 14 9f e5                                      ldr r1, [pc, #0x404]
005400b0  00 30 94 e5                                      ldr r3, [r4]
005400b4  04 00 a0 e1                                      mov r0, r4
005400b8  01 10 8f e0                                      add r1, pc, r1
005400bc  0f e0 a0 e1                                      mov lr, pc
005400c0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005400c4  b8 21 9d e5                                      ldr r2, [sp, #0x1b8]
005400c8  00 e0 90 e5                                      ldr lr, [r0]
005400cc  00 30 d2 e5                                      ldrb r3, [r2]
005400d0  30 10 43 e2                                      sub r1, r3, #0x30
005400d4  71 10 ef e6                                      uxtb r1, r1
005400d8  09 00 51 e3                                      cmp r1, #9
005400dc  08 00 00 8a                                      bhi #0x540104
005400e0  0a 10 a0 e3                                      mov r1, #0xa
005400e4  73 00 af e6                                      sxtb r0, r3
005400e8  01 30 f2 e5                                      ldrb r3, [r2, #1]!
005400ec  91 0a 2a e0                                      mla sl, r1, sl, r0
005400f0  30 00 43 e2                                      sub r0, r3, #0x30
005400f4  70 00 ef e6                                      uxtb r0, r0
005400f8  09 00 50 e3                                      cmp r0, #9
005400fc  30 a0 4a e2                                      sub sl, sl, #0x30
00540100  f7 ff ff 9a                                      bls #0x5400e4
00540104  b8 a0 8d e5                                      str sl, [sp, #0xb8]
00540108  00 10 d2 e5                                      ldrb r1, [r2]
0054010c  71 30 af e6                                      sxtb r3, r1
00540110  2c 00 53 e3                                      cmp r3, #0x2c
00540114  20 00 53 13                                      cmpne r3, #0x20
00540118  04 00 00 1a                                      bne #0x540130
0054011c  01 10 f2 e5                                      ldrb r1, [r2, #1]!
00540120  71 30 af e6                                      sxtb r3, r1
00540124  20 00 53 e3                                      cmp r3, #0x20
00540128  2c 00 53 13                                      cmpne r3, #0x2c
0054012c  fa ff ff 0a                                      beq #0x54011c
00540130  30 10 41 e2                                      sub r1, r1, #0x30
00540134  71 10 ef e6                                      uxtb r1, r1
00540138  09 00 51 e3                                      cmp r1, #9
0054013c  00 00 a0 83                                      movhi r0, #0
00540140  0a 00 00 8a                                      bhi #0x540170
00540144  00 00 a0 e3                                      mov r0, #0
00540148  0a c0 a0 e3                                      mov ip, #0xa
0054014c  00 00 00 ea                                      b #0x540154
00540150  71 30 af e6                                      sxtb r3, r1
00540154  01 10 f2 e5                                      ldrb r1, [r2, #1]!
00540158  9c 30 20 e0                                      mla r0, ip, r0, r3
0054015c  30 30 41 e2                                      sub r3, r1, #0x30
00540160  73 30 ef e6                                      uxtb r3, r3
00540164  09 00 53 e3                                      cmp r3, #9
00540168  30 00 40 e2                                      sub r0, r0, #0x30
0054016c  f7 ff ff 9a                                      bls #0x540150
00540170  bc 00 8d e5                                      str r0, [sp, #0xbc]
00540174  00 10 d2 e5                                      ldrb r1, [r2]
00540178  71 30 af e6                                      sxtb r3, r1
0054017c  2c 00 53 e3                                      cmp r3, #0x2c
00540180  20 00 53 13                                      cmpne r3, #0x20
00540184  04 00 00 1a                                      bne #0x54019c
00540188  01 10 f2 e5                                      ldrb r1, [r2, #1]!
0054018c  71 30 af e6                                      sxtb r3, r1
00540190  20 00 53 e3                                      cmp r3, #0x20
00540194  2c 00 53 13                                      cmpne r3, #0x2c
00540198  fa ff ff 0a                                      beq #0x540188
0054019c  30 10 41 e2                                      sub r1, r1, #0x30
005401a0  71 10 ef e6                                      uxtb r1, r1
005401a4  09 00 51 e3                                      cmp r1, #9
005401a8  00 00 a0 83                                      movhi r0, #0
005401ac  0a 00 00 8a                                      bhi #0x5401dc
005401b0  00 00 a0 e3                                      mov r0, #0
005401b4  0a c0 a0 e3                                      mov ip, #0xa
005401b8  00 00 00 ea                                      b #0x5401c0
005401bc  71 30 af e6                                      sxtb r3, r1
005401c0  01 10 f2 e5                                      ldrb r1, [r2, #1]!
005401c4  9c 30 20 e0                                      mla r0, ip, r0, r3
005401c8  30 30 41 e2                                      sub r3, r1, #0x30
005401cc  73 30 ef e6                                      uxtb r3, r3
005401d0  09 00 53 e3                                      cmp r3, #9
005401d4  30 00 40 e2                                      sub r0, r0, #0x30
005401d8  f7 ff ff 9a                                      bls #0x5401bc
005401dc  c0 00 8d e5                                      str r0, [sp, #0xc0]
005401e0  00 30 d2 e5                                      ldrb r3, [r2]
005401e4  73 10 af e6                                      sxtb r1, r3
005401e8  2c 00 51 e3                                      cmp r1, #0x2c
005401ec  20 00 51 13                                      cmpne r1, #0x20
005401f0  04 00 00 1a                                      bne #0x540208
005401f4  01 30 f2 e5                                      ldrb r3, [r2, #1]!
005401f8  73 10 af e6                                      sxtb r1, r3
005401fc  20 00 51 e3                                      cmp r1, #0x20
00540200  2c 00 51 13                                      cmpne r1, #0x2c
00540204  fa ff ff 0a                                      beq #0x5401f4
00540208  30 30 43 e2                                      sub r3, r3, #0x30
0054020c  73 30 ef e6                                      uxtb r3, r3
00540210  09 00 53 e3                                      cmp r3, #9
00540214  00 30 a0 83                                      movhi r3, #0
00540218  0a 00 00 8a                                      bhi #0x540248
0054021c  00 30 a0 e3                                      mov r3, #0
00540220  0a c0 a0 e3                                      mov ip, #0xa
00540224  00 00 00 ea                                      b #0x54022c
00540228  70 10 af e6                                      sxtb r1, r0
0054022c  01 00 f2 e5                                      ldrb r0, [r2, #1]!
00540230  9c 13 23 e0                                      mla r3, ip, r3, r1
00540234  30 10 40 e2                                      sub r1, r0, #0x30
00540238  71 10 ef e6                                      uxtb r1, r1
0054023c  09 00 51 e3                                      cmp r1, #9
00540240  30 30 43 e2                                      sub r3, r3, #0x30
00540244  f7 ff ff 9a                                      bls #0x540228
00540248  08 20 95 e5                                      ldr r2, [r5, #8]
0054024c  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00540250  14 10 9d e5                                      ldr r1, [sp, #0x14]
00540254  5a 0f 8d e2                                      add r0, sp, #0x168
00540258  0c c0 62 e0                                      rsb ip, r2, ip
0054025c  4c c2 a0 e1                                      asr ip, ip, #4
00540260  17 2e 8d e2                                      add r2, sp, #0x170
00540264  c4 30 8d e5                                      str r3, [sp, #0xc4]
00540268  70 e1 8d e5                                      str lr, [sp, #0x170]
0054026c  74 c1 8d e5                                      str ip, [sp, #0x174]
00540270  78 f8 ff eb                                      bl #0x53e458
00540274  30 30 95 e5                                      ldr r3, [r5, #0x30]
00540278  03 00 a0 e1                                      mov r0, r3
0054027c  00 30 93 e5                                      ldr r3, [r3]
00540280  0f e0 a0 e1                                      mov lr, pc
00540284  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00540288  04 20 90 e5                                      ldr r2, [r0, #4]
0054028c  00 30 90 e5                                      ldr r3, [r0]
00540290  4c 11 9d e5                                      ldr r1, [sp, #0x14c]
00540294  78 81 8d e5                                      str r8, [sp, #0x178]
00540298  02 30 63 e0                                      rsb r3, r3, r2
0054029c  50 21 9d e5                                      ldr r2, [sp, #0x150]
005402a0  43 32 a0 e1                                      asr r3, r3, #4
005402a4  7c 31 8d e5                                      str r3, [sp, #0x17c]
005402a8  02 00 51 e1                                      cmp r1, r2
005402ac  67 00 00 0a                                      beq #0x540450
005402b0  00 80 81 e5                                      str r8, [r1]
005402b4  7c 31 9d e5                                      ldr r3, [sp, #0x17c]
005402b8  52 8f 8d e2                                      add r8, sp, #0x148
005402bc  04 30 81 e5                                      str r3, [r1, #4]
005402c0  4c 31 9d e5                                      ldr r3, [sp, #0x14c]
005402c4  08 30 83 e2                                      add r3, r3, #8
005402c8  4c 31 8d e5                                      str r3, [sp, #0x14c]
005402cc  30 30 95 e5                                      ldr r3, [r5, #0x30]
005402d0  00 20 a0 e3                                      mov r2, #0
005402d4  54 21 8d e5                                      str r2, [sp, #0x154]
005402d8  03 00 a0 e1                                      mov r0, r3
005402dc  00 30 93 e5                                      ldr r3, [r3]
005402e0  0f e0 a0 e1                                      mov lr, pc
005402e4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005402e8  06 00 90 e9                                      ldmib r0, {r1, r2}
005402ec  02 00 51 e1                                      cmp r1, r2
005402f0  60 00 00 0a                                      beq #0x540478
005402f4  b8 20 9d e5                                      ldr r2, [sp, #0xb8]
005402f8  00 20 81 e5                                      str r2, [r1]
005402fc  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
00540300  04 20 81 e5                                      str r2, [r1, #4]
00540304  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
00540308  08 20 81 e5                                      str r2, [r1, #8]
0054030c  c4 20 9d e5                                      ldr r2, [sp, #0xc4]
00540310  0c 20 81 e5                                      str r2, [r1, #0xc]
00540314  04 20 90 e5                                      ldr r2, [r0, #4]
00540318  10 20 82 e2                                      add r2, r2, #0x10
0054031c  04 20 80 e5                                      str r2, [r0, #4]
00540320  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
00540324  b8 20 9d e5                                      ldr r2, [sp, #0xb8]
00540328  30 30 95 e5                                      ldr r3, [r5, #0x30]
0054032c  01 20 62 e0                                      rsb r2, r2, r1
00540330  60 21 8d e5                                      str r2, [sp, #0x160]
00540334  03 00 a0 e1                                      mov r0, r3
00540338  00 30 93 e5                                      ldr r3, [r3]
0054033c  0f e0 a0 e1                                      mov lr, pc
00540340  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00540344  08 10 a0 e1                                      mov r1, r8
00540348  a6 fa ff eb                                      bl #0x53ede8
0054034c  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00540350  10 30 95 e5                                      ldr r3, [r5, #0x10]
00540354  03 00 5c e1                                      cmp ip, r3
00540358  41 00 00 0a                                      beq #0x540464
0054035c  56 3f 8d e2                                      add r3, sp, #0x158
00540360  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00540364  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00540368  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054036c  10 30 83 e2                                      add r3, r3, #0x10
00540370  0c 30 85 e5                                      str r3, [r5, #0xc]
00540374  b8 01 9d e5                                      ldr r0, [sp, #0x1b8]
00540378  07 00 50 e1                                      cmp r0, r7
0054037c  02 00 00 0a                                      beq #0x54038c
00540380  00 00 50 e3                                      cmp r0, #0
00540384  00 00 00 0a                                      beq #0x54038c
00540388  30 40 f7 eb                                      bl #0x310450
0054038c  48 01 9d e5                                      ldr r0, [sp, #0x148]
00540390  e4 fe ff ea                                      b #0x53ff28
00540394  20 01 9f e5                                      ldr r0, [pc, #0x120]
00540398  03 10 a0 e3                                      mov r1, #3
0054039c  00 00 8f e0                                      add r0, pc, r0
005403a0  3e 2a 03 eb                                      bl #0x60aca0
005403a4  78 01 9d e5                                      ldr r0, [sp, #0x178]
005403a8  00 00 50 e3                                      cmp r0, #0
005403ac  00 00 00 0a                                      beq #0x5403b4
005403b0  73 74 f7 eb                                      bl #0x31d584
005403b4  fc 00 9d e5                                      ldr r0, [sp, #0xfc]
005403b8  0b 00 50 e1                                      cmp r0, fp
005403bc  02 00 00 0a                                      beq #0x5403cc
005403c0  00 00 50 e3                                      cmp r0, #0
005403c4  00 00 00 0a                                      beq #0x5403cc
005403c8  20 40 f7 eb                                      bl #0x310450
005403cc  d0 01 9d e5                                      ldr r0, [sp, #0x1d0]
005403d0  04 30 9d e5                                      ldr r3, [sp, #4]
005403d4  03 00 50 e1                                      cmp r0, r3
005403d8  1a 00 00 0a                                      beq #0x540448
005403dc  00 00 50 e3                                      cmp r0, #0
005403e0  18 00 00 0a                                      beq #0x540448
005403e4  19 40 f7 eb                                      bl #0x310450
005403e8  00 00 a0 e3                                      mov r0, #0
005403ec  dd fe ff ea                                      b #0x53ff68
005403f0  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
005403f4  30 30 95 e5                                      ldr r3, [r5, #0x30]
005403f8  62 8f 8d e2                                      add r8, sp, #0x188
005403fc  e0 a0 92 e5                                      ldr sl, [r2, #0xe0]
00540400  03 10 a0 e1                                      mov r1, r3
00540404  07 20 a0 e1                                      mov r2, r7
00540408  08 00 a0 e1                                      mov r0, r8
0054040c  00 30 93 e5                                      ldr r3, [r3]
00540410  0f e0 a0 e1                                      mov lr, pc
00540414  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00540418  00 30 a0 e3                                      mov r3, #0
0054041c  0a 00 a0 e1                                      mov r0, sl
00540420  08 10 a0 e1                                      mov r1, r8
00540424  06 2d 8d e2                                      add r2, sp, #0x180
00540428  84 31 8d e5                                      str r3, [sp, #0x184]
0054042c  80 31 8d e5                                      str r3, [sp, #0x180]
00540430  51 ae 02 eb                                      bl #0x5ebd7c
00540434  88 01 9d e5                                      ldr r0, [sp, #0x188]
00540438  00 00 50 e3                                      cmp r0, #0
0054043c  ab fe ff 0a                                      beq #0x53fef0
00540440  4f 74 f7 eb                                      bl #0x31d584
00540444  a9 fe ff ea                                      b #0x53fef0
00540448  00 00 a0 e3                                      mov r0, #0
0054044c  c5 fe ff ea                                      b #0x53ff68
00540450  52 8f 8d e2                                      add r8, sp, #0x148
00540454  08 00 a0 e1                                      mov r0, r8
00540458  5e 2f 8d e2                                      add r2, sp, #0x178
0054045c  e8 f9 ff eb                                      bl #0x53ec04
00540460  99 ff ff ea                                      b #0x5402cc
00540464  0c 10 a0 e1                                      mov r1, ip
00540468  24 00 9d e5                                      ldr r0, [sp, #0x24]
0054046c  56 2f 8d e2                                      add r2, sp, #0x158
00540470  af f9 ff eb                                      bl #0x53eb34
00540474  be ff ff ea                                      b #0x540374
00540478  b8 20 8d e2                                      add r2, sp, #0xb8
0054047c  19 fa ff eb                                      bl #0x53ece8
00540480  a6 ff ff ea                                      b #0x540320
00540484  a1 37 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00540488  ac 4e 45 00 ac 40 00 00 a0 e5 39 00 1c e6 39 00  .byte 0xac, 0x4e, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa0, 0xe5, 0x39, 0x00, 0x1c, 0xe6, 0x39, 0x00
00540498  18 e6 39 00 14 e6 39 00 ac ec 39 00 f4 e4 39 00  .byte 0x18, 0xe6, 0x39, 0x00, 0x14, 0xe6, 0x39, 0x00, 0xac, 0xec, 0x39, 0x00, 0xf4, 0xe4, 0x39, 0x00
005404a8  f0 e4 39 00 f0 e4 39 00 84 ec 37 00 d8 ee 39 00  .byte 0xf0, 0xe4, 0x39, 0x00, 0xf0, 0xe4, 0x39, 0x00, 0x84, 0xec, 0x37, 0x00, 0xd8, 0xee, 0x39, 0x00
005404b8  88 e1 39 00 44 e0 39 00                          .byte 0x88, 0xe1, 0x39, 0x00, 0x44, 0xe0, 0x39, 0x00
