; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005404c0, declared_size=44, range_size=44, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZN6glitch3gui9CGUIImage8setImageERKN5boost13intrusive_ptrINS_5video8ITextureEEE
; demangled: glitch::gui::CGUIImage::setImage(boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
005404c0  00 30 91 e5                                      ldr r3, [r1]
005404c4  00 00 53 e3                                      cmp r3, #0
005404c8  04 20 93 15                                      ldrne r2, [r3, #4]
005404cc  01 20 82 12                                      addne r2, r2, #1
005404d0  04 20 83 15                                      strne r2, [r3, #4]
005404d4  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
005404d8  5c 31 80 e5                                      str r3, [r0, #0x15c]
005404dc  00 00 52 e3                                      cmp r2, #0
005404e0  1e ff 2f 01                                      bxeq lr
005404e4  02 00 a0 e1                                      mov r0, r2
005404e8  25 74 f7 ea                                      b #0x31d584

; FUNCTION 0x005404ec, declared_size=40, range_size=40, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZN6glitch3gui9CGUIImage8setColorENS_5video6SColorE
; demangled: glitch::gui::CGUIImage::setColor(glitch::video::SColor)
; decoder-mode: arm
005404ec  51 34 e7 e7                                      ubfx r3, r1, #8, #8
005404f0  51 28 e7 e7                                      ubfx r2, r1, #0x10, #8
005404f4  21 cc a0 e1                                      lsr ip, r1, #0x18
005404f8  08 d0 4d e2                                      sub sp, sp, #8
005404fc  58 11 c0 e5                                      strb r1, [r0, #0x158]
00540500  5b c1 c0 e5                                      strb ip, [r0, #0x15b]
00540504  5a 21 c0 e5                                      strb r2, [r0, #0x15a]
00540508  59 31 c0 e5                                      strb r3, [r0, #0x159]
0054050c  08 d0 8d e2                                      add sp, sp, #8
00540510  1e ff 2f e1                                      bx lr

; FUNCTION 0x00540514, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZN6glitch3gui9CGUIImage18setUseAlphaChannelEb
; demangled: glitch::gui::CGUIImage::setUseAlphaChannel(bool)
; decoder-mode: arm
00540514  60 11 c0 e5                                      strb r1, [r0, #0x160]
00540518  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054051c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZN6glitch3gui9CGUIImage13setScaleImageEb
; demangled: glitch::gui::CGUIImage::setScaleImage(bool)
; decoder-mode: arm
0054051c  61 11 c0 e5                                      strb r1, [r0, #0x161]
00540520  1e ff 2f e1                                      bx lr

; FUNCTION 0x00540524, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZNK6glitch3gui9CGUIImage13isImageScaledEv
; demangled: glitch::gui::CGUIImage::isImageScaled() const
; decoder-mode: arm
00540524  61 01 d0 e5                                      ldrb r0, [r0, #0x161]
00540528  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054052c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZNK6glitch3gui9CGUIImage18isAlphaChannelUsedEv
; demangled: glitch::gui::CGUIImage::isAlphaChannelUsed() const
; decoder-mode: arm
0054052c  60 01 d0 e5                                      ldrb r0, [r0, #0x160]
00540530  1e ff 2f e1                                      bx lr

; FUNCTION 0x00540534, declared_size=212, range_size=212, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZNK6glitch3gui9CGUIImage19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIImage::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00540534  30 40 2d e9                                      push {r4, r5, lr}
00540538  01 40 a0 e1                                      mov r4, r1
0054053c  0c d0 4d e2                                      sub sp, sp, #0xc
00540540  00 50 a0 e1                                      mov r5, r0
00540544  dc d2 ff eb                                      bl #0x5350bc
00540548  00 20 94 e5                                      ldr r2, [r4]
0054054c  5c 31 95 e5                                      ldr r3, [r5, #0x15c]
00540550  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
00540554  b0 c2 92 e5                                      ldr ip, [r2, #0x2b0]
00540558  00 00 53 e3                                      cmp r3, #0
0054055c  04 30 8d e5                                      str r3, [sp, #4]
00540560  04 20 93 15                                      ldrne r2, [r3, #4]
00540564  04 00 a0 e1                                      mov r0, r4
00540568  01 10 8f e0                                      add r1, pc, r1
0054056c  01 20 82 12                                      addne r2, r2, #1
00540570  04 20 83 15                                      strne r2, [r3, #4]
00540574  04 20 8d e2                                      add r2, sp, #4
00540578  00 30 a0 e3                                      mov r3, #0
0054057c  3c ff 2f e1                                      blx ip
00540580  04 00 9d e5                                      ldr r0, [sp, #4]
00540584  00 00 50 e3                                      cmp r0, #0
00540588  00 00 00 0a                                      beq #0x540590
0054058c  fc 73 f7 eb                                      bl #0x31d584
00540590  64 10 9f e5                                      ldr r1, [pc, #0x64]
00540594  04 00 a0 e1                                      mov r0, r4
00540598  60 21 d5 e5                                      ldrb r2, [r5, #0x160]
0054059c  00 c0 94 e5                                      ldr ip, [r4]
005405a0  01 10 8f e0                                      add r1, pc, r1
005405a4  00 30 a0 e3                                      mov r3, #0
005405a8  0f e0 a0 e1                                      mov lr, pc
005405ac  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005405b0  48 10 9f e5                                      ldr r1, [pc, #0x48]
005405b4  04 00 a0 e1                                      mov r0, r4
005405b8  58 21 95 e5                                      ldr r2, [r5, #0x158]
005405bc  00 c0 94 e5                                      ldr ip, [r4]
005405c0  01 10 8f e0                                      add r1, pc, r1
005405c4  00 30 a0 e3                                      mov r3, #0
005405c8  0f e0 a0 e1                                      mov lr, pc
005405cc  18 f1 9c e5                                      ldr pc, [ip, #0x118]
005405d0  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
005405d4  04 00 a0 e1                                      mov r0, r4
005405d8  61 21 d5 e5                                      ldrb r2, [r5, #0x161]
005405dc  01 10 8f e0                                      add r1, pc, r1
005405e0  00 c0 94 e5                                      ldr ip, [r4]
005405e4  00 30 a0 e3                                      mov r3, #0
005405e8  0f e0 a0 e1                                      mov lr, pc
005405ec  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005405f0  0c d0 8d e2                                      add sp, sp, #0xc
005405f4  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
005405f8  b0 de 39 00 80 de 39 00 f8 27 3a 00 54 de 39 00  .byte 0xb0, 0xde, 0x39, 0x00, 0x80, 0xde, 0x39, 0x00, 0xf8, 0x27, 0x3a, 0x00, 0x54, 0xde, 0x39, 0x00

; FUNCTION 0x005408ec, declared_size=236, range_size=236, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZN6glitch3gui9CGUIImageC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIImage::CGUIImage(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
005408ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005408f0  d0 50 9f e5                                      ldr r5, [pc, #0xd0]
005408f4  d0 c0 9f e5                                      ldr ip, [pc, #0xd0]
005408f8  d0 e0 9f e5                                      ldr lr, [pc, #0xd0]
005408fc  05 50 8f e0                                      add r5, pc, r5
00540900  0c c0 95 e7                                      ldr ip, [r5, ip]
00540904  0e e0 95 e7                                      ldr lr, [r5, lr]
00540908  01 70 a0 e3                                      mov r7, #1
0054090c  24 60 9c e5                                      ldr r6, [ip, #0x24]
00540910  08 e0 8e e2                                      add lr, lr, #8
00540914  6c 71 80 e5                                      str r7, [r0, #0x16c]
00540918  68 e1 80 e5                                      str lr, [r0, #0x168]
0054091c  64 61 80 e5                                      str r6, [r0, #0x164]
00540920  18 d0 4d e2                                      sub sp, sp, #0x18
00540924  0c e0 16 e5                                      ldr lr, [r6, #-0xc]
00540928  28 80 9c e5                                      ldr r8, [ip, #0x28]
0054092c  38 60 9d e5                                      ldr r6, [sp, #0x38]
00540930  59 7f 80 e2                                      add r7, r0, #0x164
00540934  0e 80 87 e7                                      str r8, [r7, lr]
00540938  0c a0 96 e5                                      ldr sl, [r6, #0xc]
0054093c  00 e0 96 e5                                      ldr lr, [r6]
00540940  00 03 96 e9                                      ldmib r6, {r8, sb}
00540944  01 70 a0 e1                                      mov r7, r1
00540948  02 60 a0 e1                                      mov r6, r2
0054094c  00 30 8d e5                                      str r3, [sp]
00540950  04 10 8c e2                                      add r1, ip, #4
00540954  07 20 a0 e1                                      mov r2, r7
00540958  08 c0 8d e2                                      add ip, sp, #8
0054095c  06 30 a0 e1                                      mov r3, r6
00540960  00 40 a0 e1                                      mov r4, r0
00540964  00 50 8d e9                                      stmib sp, {ip, lr}
00540968  0c 80 8d e5                                      str r8, [sp, #0xc]
0054096c  10 90 8d e5                                      str sb, [sp, #0x10]
00540970  14 a0 8d e5                                      str sl, [sp, #0x14]
00540974  2c ff ff eb                                      bl #0x54062c
00540978  54 30 9f e5                                      ldr r3, [pc, #0x54]
0054097c  00 20 e0 e3                                      mvn r2, #0
00540980  00 10 a0 e3                                      mov r1, #0
00540984  03 30 95 e7                                      ldr r3, [r5, r3]
00540988  5b 21 c4 e5                                      strb r2, [r4, #0x15b]
0054098c  61 11 c4 e5                                      strb r1, [r4, #0x161]
00540990  dc 00 83 e2                                      add r0, r3, #0xdc
00540994  10 c0 83 e2                                      add ip, r3, #0x10
00540998  bc 30 83 e2                                      add r3, r3, #0xbc
0054099c  68 01 84 e5                                      str r0, [r4, #0x168]
005409a0  00 c0 84 e5                                      str ip, [r4]
005409a4  64 31 84 e5                                      str r3, [r4, #0x164]
005409a8  58 21 c4 e5                                      strb r2, [r4, #0x158]
005409ac  59 21 c4 e5                                      strb r2, [r4, #0x159]
005409b0  5a 21 c4 e5                                      strb r2, [r4, #0x15a]
005409b4  5c 11 84 e5                                      str r1, [r4, #0x15c]
005409b8  60 11 c4 e5                                      strb r1, [r4, #0x160]
005409bc  04 00 a0 e1                                      mov r0, r4
005409c0  18 d0 8d e2                                      add sp, sp, #0x18
005409c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005409c8  94 41 45 00 c0 30 00 00 44 2b 00 00 e0 2b 00 00  .byte 0x94, 0x41, 0x45, 0x00, 0xc0, 0x30, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xe0, 0x2b, 0x00, 0x00

; FUNCTION 0x005409d8, declared_size=156, range_size=156, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZN6glitch3gui9CGUIImageC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIImage::CGUIImage(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
005409d8  70 40 2d e9                                      push {r4, r5, r6, lr}
005409dc  18 d0 4d e2                                      sub sp, sp, #0x18
005409e0  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005409e4  01 50 a0 e1                                      mov r5, r1
005409e8  04 10 81 e2                                      add r1, r1, #4
005409ec  0c e0 9c e5                                      ldr lr, [ip, #0xc]
005409f0  00 60 9c e5                                      ldr r6, [ip]
005409f4  10 10 9c e9                                      ldmib ip, {r4, ip}
005409f8  08 60 8d e5                                      str r6, [sp, #8]
005409fc  0c 40 8d e5                                      str r4, [sp, #0xc]
00540a00  10 c0 8d e5                                      str ip, [sp, #0x10]
00540a04  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00540a08  00 40 a0 e1                                      mov r4, r0
00540a0c  14 e0 8d e5                                      str lr, [sp, #0x14]
00540a10  00 c0 8d e5                                      str ip, [sp]
00540a14  08 c0 8d e2                                      add ip, sp, #8
00540a18  04 c0 8d e5                                      str ip, [sp, #4]
00540a1c  02 ff ff eb                                      bl #0x54062c
00540a20  00 10 95 e5                                      ldr r1, [r5]
00540a24  00 30 e0 e3                                      mvn r3, #0
00540a28  00 20 a0 e3                                      mov r2, #0
00540a2c  00 10 84 e5                                      str r1, [r4]
00540a30  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
00540a34  1c c0 95 e5                                      ldr ip, [r5, #0x1c]
00540a38  04 00 a0 e1                                      mov r0, r4
00540a3c  01 c0 84 e7                                      str ip, [r4, r1]
00540a40  00 10 94 e5                                      ldr r1, [r4]
00540a44  20 c0 95 e5                                      ldr ip, [r5, #0x20]
00540a48  10 10 11 e5                                      ldr r1, [r1, #-0x10]
00540a4c  01 c0 84 e7                                      str ip, [r4, r1]
00540a50  5b 31 c4 e5                                      strb r3, [r4, #0x15b]
00540a54  61 21 c4 e5                                      strb r2, [r4, #0x161]
00540a58  58 31 c4 e5                                      strb r3, [r4, #0x158]
00540a5c  59 31 c4 e5                                      strb r3, [r4, #0x159]
00540a60  5a 31 c4 e5                                      strb r3, [r4, #0x15a]
00540a64  5c 21 84 e5                                      str r2, [r4, #0x15c]
00540a68  60 21 c4 e5                                      strb r2, [r4, #0x160]
00540a6c  18 d0 8d e2                                      add sp, sp, #0x18
00540a70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00540ae8, declared_size=140, range_size=140, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZN6glitch3gui9CGUIImageD1Ev
; demangled: glitch::gui::CGUIImage::~CGUIImage()
; decoder-mode: arm
00540ae8  70 40 2d e9                                      push {r4, r5, r6, lr}
00540aec  74 50 9f e5                                      ldr r5, [pc, #0x74]
00540af0  74 30 9f e5                                      ldr r3, [pc, #0x74]
00540af4  00 40 a0 e1                                      mov r4, r0
00540af8  05 50 8f e0                                      add r5, pc, r5
00540afc  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
00540b00  03 30 95 e7                                      ldr r3, [r5, r3]
00540b04  00 00 50 e3                                      cmp r0, #0
00540b08  dc 20 83 e2                                      add r2, r3, #0xdc
00540b0c  10 10 83 e2                                      add r1, r3, #0x10
00540b10  bc 30 83 e2                                      add r3, r3, #0xbc
00540b14  00 10 84 e5                                      str r1, [r4]
00540b18  64 31 84 e5                                      str r3, [r4, #0x164]
00540b1c  68 21 84 e5                                      str r2, [r4, #0x168]
00540b20  00 00 00 0a                                      beq #0x540b28
00540b24  96 72 f7 eb                                      bl #0x31d584
00540b28  40 30 9f e5                                      ldr r3, [pc, #0x40]
00540b2c  04 00 a0 e1                                      mov r0, r4
00540b30  03 10 95 e7                                      ldr r1, [r5, r3]
00540b34  04 30 91 e5                                      ldr r3, [r1, #4]
00540b38  14 c0 91 e5                                      ldr ip, [r1, #0x14]
00540b3c  18 20 91 e5                                      ldr r2, [r1, #0x18]
00540b40  00 30 84 e5                                      str r3, [r4]
00540b44  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00540b48  08 10 81 e2                                      add r1, r1, #8
00540b4c  03 c0 84 e7                                      str ip, [r4, r3]
00540b50  00 30 94 e5                                      ldr r3, [r4]
00540b54  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00540b58  03 20 84 e7                                      str r2, [r4, r3]
00540b5c  2f e1 ff eb                                      bl #0x539020
00540b60  04 00 a0 e1                                      mov r0, r4
00540b64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00540b68  98 3f 45 00 e0 2b 00 00 c0 30 00 00              .byte 0x98, 0x3f, 0x45, 0x00, 0xe0, 0x2b, 0x00, 0x00, 0xc0, 0x30, 0x00, 0x00

; FUNCTION 0x00540b74, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZN6glitch3gui9CGUIImageD0Ev
; demangled: glitch::gui::CGUIImage::~CGUIImage()
; decoder-mode: arm
00540b74  10 40 2d e9                                      push {r4, lr}
00540b78  00 40 a0 e1                                      mov r4, r0
00540b7c  d9 ff ff eb                                      bl #0x540ae8
00540b80  04 00 a0 e1                                      mov r0, r4
00540b84  c9 35 f7 eb                                      bl #0x30e2b0
00540b88  04 00 a0 e1                                      mov r0, r4
00540b8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00540b90, declared_size=124, range_size=124, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZN6glitch3gui9CGUIImageD2Ev
; demangled: glitch::gui::CGUIImage::~CGUIImage()
; decoder-mode: arm
00540b90  70 40 2d e9                                      push {r4, r5, r6, lr}
00540b94  00 30 91 e5                                      ldr r3, [r1]
00540b98  00 40 a0 e1                                      mov r4, r0
00540b9c  01 50 a0 e1                                      mov r5, r1
00540ba0  00 30 80 e5                                      str r3, [r0]
00540ba4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00540ba8  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
00540bac  03 20 80 e7                                      str r2, [r0, r3]
00540bb0  00 30 90 e5                                      ldr r3, [r0]
00540bb4  20 20 91 e5                                      ldr r2, [r1, #0x20]
00540bb8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00540bbc  03 20 80 e7                                      str r2, [r0, r3]
00540bc0  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
00540bc4  00 00 50 e3                                      cmp r0, #0
00540bc8  00 00 00 0a                                      beq #0x540bd0
00540bcc  6c 72 f7 eb                                      bl #0x31d584
00540bd0  04 30 95 e5                                      ldr r3, [r5, #4]
00540bd4  04 50 85 e2                                      add r5, r5, #4
00540bd8  04 10 85 e2                                      add r1, r5, #4
00540bdc  00 30 84 e5                                      str r3, [r4]
00540be0  10 20 95 e5                                      ldr r2, [r5, #0x10]
00540be4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00540be8  04 00 a0 e1                                      mov r0, r4
00540bec  03 20 84 e7                                      str r2, [r4, r3]
00540bf0  00 30 94 e5                                      ldr r3, [r4]
00540bf4  14 20 95 e5                                      ldr r2, [r5, #0x14]
00540bf8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00540bfc  03 20 84 e7                                      str r2, [r4, r3]
00540c00  06 e1 ff eb                                      bl #0x539020
00540c04  04 00 a0 e1                                      mov r0, r4
00540c08  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00540c0c, declared_size=280, range_size=280, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZN6glitch3gui9CGUIImage21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIImage::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00540c0c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00540c10  14 d0 4d e2                                      sub sp, sp, #0x14
00540c14  00 40 a0 e1                                      mov r4, r0
00540c18  01 50 a0 e1                                      mov r5, r1
00540c1c  05 e3 ff eb                                      bl #0x539838
00540c20  ec 20 9f e5                                      ldr r2, [pc, #0xec]
00540c24  00 c0 94 e5                                      ldr ip, [r4]
00540c28  0c 60 8d e2                                      add r6, sp, #0xc
00540c2c  02 20 8f e0                                      add r2, pc, r2
00540c30  00 30 95 e5                                      ldr r3, [r5]
00540c34  06 00 a0 e1                                      mov r0, r6
00540c38  05 10 a0 e1                                      mov r1, r5
00540c3c  7c 70 9c e5                                      ldr r7, [ip, #0x7c]
00540c40  0f e0 a0 e1                                      mov lr, pc
00540c44  bc f2 93 e5                                      ldr pc, [r3, #0x2bc]
00540c48  04 00 a0 e1                                      mov r0, r4
00540c4c  06 10 a0 e1                                      mov r1, r6
00540c50  37 ff 2f e1                                      blx r7
00540c54  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00540c58  00 00 50 e3                                      cmp r0, #0
00540c5c  00 00 00 0a                                      beq #0x540c64
00540c60  47 72 f7 eb                                      bl #0x31d584
00540c64  ac 10 9f e5                                      ldr r1, [pc, #0xac]
00540c68  00 20 94 e5                                      ldr r2, [r4]
00540c6c  00 30 95 e5                                      ldr r3, [r5]
00540c70  01 10 8f e0                                      add r1, pc, r1
00540c74  05 00 a0 e1                                      mov r0, r5
00540c78  88 60 92 e5                                      ldr r6, [r2, #0x88]
00540c7c  0f e0 a0 e1                                      mov lr, pc
00540c80  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00540c84  00 10 a0 e1                                      mov r1, r0
00540c88  04 00 a0 e1                                      mov r0, r4
00540c8c  36 ff 2f e1                                      blx r6
00540c90  84 10 9f e5                                      ldr r1, [pc, #0x84]
00540c94  00 20 94 e5                                      ldr r2, [r4]
00540c98  00 30 95 e5                                      ldr r3, [r5]
00540c9c  01 10 8f e0                                      add r1, pc, r1
00540ca0  05 00 a0 e1                                      mov r0, r5
00540ca4  80 60 92 e5                                      ldr r6, [r2, #0x80]
00540ca8  0f e0 a0 e1                                      mov lr, pc
00540cac  24 f1 93 e5                                      ldr pc, [r3, #0x124]
00540cb0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00540cb4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00540cb8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00540cbc  01 10 cd e5                                      strb r1, [sp, #1]
00540cc0  02 20 cd e5                                      strb r2, [sp, #2]
00540cc4  00 00 cd e5                                      strb r0, [sp]
00540cc8  03 30 cd e5                                      strb r3, [sp, #3]
00540ccc  00 30 9d e5                                      ldr r3, [sp]
00540cd0  04 00 a0 e1                                      mov r0, r4
00540cd4  03 10 a0 e1                                      mov r1, r3
00540cd8  08 30 8d e5                                      str r3, [sp, #8]
00540cdc  36 ff 2f e1                                      blx r6
00540ce0  38 10 9f e5                                      ldr r1, [pc, #0x38]
00540ce4  00 20 94 e5                                      ldr r2, [r4]
00540ce8  00 30 95 e5                                      ldr r3, [r5]
00540cec  05 00 a0 e1                                      mov r0, r5
00540cf0  01 10 8f e0                                      add r1, pc, r1
00540cf4  84 50 92 e5                                      ldr r5, [r2, #0x84]
00540cf8  0f e0 a0 e1                                      mov lr, pc
00540cfc  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00540d00  00 10 a0 e1                                      mov r1, r0
00540d04  04 00 a0 e1                                      mov r0, r4
00540d08  35 ff 2f e1                                      blx r5
00540d0c  14 d0 8d e2                                      add sp, sp, #0x14
00540d10  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00540d14  ec d7 39 00 b0 d7 39 00 1c 21 3a 00 40 d7 39 00  .byte 0xec, 0xd7, 0x39, 0x00, 0xb0, 0xd7, 0x39, 0x00, 0x1c, 0x21, 0x3a, 0x00, 0x40, 0xd7, 0x39, 0x00

; FUNCTION 0x00540da0, declared_size=396, range_size=396, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZN6glitch3gui9CGUIImage4drawEv
; demangled: glitch::gui::CGUIImage::draw()
; decoder-mode: arm
00540da0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00540da4  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00540da8  54 d0 4d e2                                      sub sp, sp, #0x54
00540dac  00 40 a0 e1                                      mov r4, r0
00540db0  00 00 53 e3                                      cmp r3, #0
00540db4  01 00 00 1a                                      bne #0x540dc0
00540db8  54 d0 8d e2                                      add sp, sp, #0x54
00540dbc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00540dc0  50 31 90 e5                                      ldr r3, [r0, #0x150]
00540dc4  03 00 a0 e1                                      mov r0, r3
00540dc8  00 30 93 e5                                      ldr r3, [r3]
00540dcc  0f e0 a0 e1                                      mov lr, pc
00540dd0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00540dd4  50 31 94 e5                                      ldr r3, [r4, #0x150]
00540dd8  00 60 a0 e1                                      mov r6, r0
00540ddc  03 00 a0 e1                                      mov r0, r3
00540de0  00 30 93 e5                                      ldr r3, [r3]
00540de4  0f e0 a0 e1                                      mov lr, pc
00540de8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00540dec  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00540df0  00 00 51 e3                                      cmp r1, #0
00540df4  36 00 00 0a                                      beq #0x540ed4
00540df8  61 31 d4 e5                                      ldrb r3, [r4, #0x161]
00540dfc  00 00 53 e3                                      cmp r3, #0
00540e00  1c 00 00 1a                                      bne #0x540e78
00540e04  20 30 8d e5                                      str r3, [sp, #0x20]
00540e08  1c 30 8d e5                                      str r3, [sp, #0x1c]
00540e0c  20 70 91 e5                                      ldr r7, [r1, #0x20]
00540e10  24 60 91 e5                                      ldr r6, [r1, #0x24]
00540e14  58 e1 94 e5                                      ldr lr, [r4, #0x158]
00540e18  60 c1 d4 e5                                      ldrb ip, [r4, #0x160]
00540e1c  48 50 84 e2                                      add r5, r4, #0x48
00540e20  57 1f 84 e2                                      add r1, r4, #0x15c
00540e24  38 20 84 e2                                      add r2, r4, #0x38
00540e28  1c 30 8d e2                                      add r3, sp, #0x1c
00540e2c  24 70 8d e5                                      str r7, [sp, #0x24]
00540e30  28 60 8d e5                                      str r6, [sp, #0x28]
00540e34  20 40 8d e8                                      stm sp, {r5, lr}
00540e38  08 c0 8d e5                                      str ip, [sp, #8]
00540e3c  0f 7b 01 eb                                      bl #0x59fa80
00540e40  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
00540e44  00 00 53 e3                                      cmp r3, #0
00540e48  04 50 b4 15                                      ldrne r5, [r4, #4]!
00540e4c  06 00 00 1a                                      bne #0x540e6c
00540e50  d8 ff ff ea                                      b #0x540db8
00540e54  08 30 95 e5                                      ldr r3, [r5, #8]
00540e58  03 00 a0 e1                                      mov r0, r3
00540e5c  00 30 93 e5                                      ldr r3, [r3]
00540e60  0f e0 a0 e1                                      mov lr, pc
00540e64  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00540e68  00 50 95 e5                                      ldr r5, [r5]
00540e6c  04 00 55 e1                                      cmp r5, r4
00540e70  f7 ff ff 1a                                      bne #0x540e54
00540e74  cf ff ff ea                                      b #0x540db8
00540e78  58 31 94 e5                                      ldr r3, [r4, #0x158]
00540e7c  00 20 a0 e3                                      mov r2, #0
00540e80  30 20 8d e5                                      str r2, [sp, #0x30]
00540e84  48 30 8d e5                                      str r3, [sp, #0x48]
00540e88  3c 30 8d e5                                      str r3, [sp, #0x3c]
00540e8c  40 30 8d e5                                      str r3, [sp, #0x40]
00540e90  44 30 8d e5                                      str r3, [sp, #0x44]
00540e94  2c 20 8d e5                                      str r2, [sp, #0x2c]
00540e98  20 60 91 e5                                      ldr r6, [r1, #0x20]
00540e9c  24 50 91 e5                                      ldr r5, [r1, #0x24]
00540ea0  60 c1 d4 e5                                      ldrb ip, [r4, #0x160]
00540ea4  48 e0 84 e2                                      add lr, r4, #0x48
00540ea8  00 e0 8d e5                                      str lr, [sp]
00540eac  57 1f 84 e2                                      add r1, r4, #0x15c
00540eb0  3c e0 8d e2                                      add lr, sp, #0x3c
00540eb4  38 20 84 e2                                      add r2, r4, #0x38
00540eb8  2c 30 8d e2                                      add r3, sp, #0x2c
00540ebc  34 60 8d e5                                      str r6, [sp, #0x34]
00540ec0  38 50 8d e5                                      str r5, [sp, #0x38]
00540ec4  04 e0 8d e5                                      str lr, [sp, #4]
00540ec8  08 c0 8d e5                                      str ip, [sp, #8]
00540ecc  a7 7a 01 eb                                      bl #0x59f970
00540ed0  da ff ff ea                                      b #0x540e40
00540ed4  00 30 96 e5                                      ldr r3, [r6]
00540ed8  06 00 a0 e1                                      mov r0, r6
00540edc  64 50 93 e5                                      ldr r5, [r3, #0x64]
00540ee0  0f e0 a0 e1                                      mov lr, pc
00540ee4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00540ee8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00540eec  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00540ef0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00540ef4  12 20 cd e5                                      strb r2, [sp, #0x12]
00540ef8  13 30 cd e5                                      strb r3, [sp, #0x13]
00540efc  10 00 cd e5                                      strb r0, [sp, #0x10]
00540f00  11 10 cd e5                                      strb r1, [sp, #0x11]
00540f04  10 10 9d e5                                      ldr r1, [sp, #0x10]
00540f08  48 30 84 e2                                      add r3, r4, #0x48
00540f0c  50 20 8d e2                                      add r2, sp, #0x50
00540f10  04 10 22 e5                                      str r1, [r2, #-4]!
00540f14  06 00 a0 e1                                      mov r0, r6
00540f18  00 30 8d e5                                      str r3, [sp]
00540f1c  04 10 a0 e1                                      mov r1, r4
00540f20  38 30 84 e2                                      add r3, r4, #0x38
00540f24  35 ff 2f e1                                      blx r5
00540f28  c4 ff ff ea                                      b #0x540e40

; FUNCTION 0x00540f2c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZTv0_n20_N6glitch3gui9CGUIImage21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIImage::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00540f2c  00 30 90 e5                                      ldr r3, [r0]
00540f30  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00540f34  03 00 80 e0                                      add r0, r0, r3
00540f38  33 ff ff ea                                      b #0x540c0c

; FUNCTION 0x00540f3c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZTv0_n24_N6glitch3gui9CGUIImageD0Ev
; demangled: virtual thunk to glitch::gui::CGUIImage::~CGUIImage()
; decoder-mode: arm
00540f3c  00 30 90 e5                                      ldr r3, [r0]
00540f40  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00540f44  03 00 80 e0                                      add r0, r0, r3
00540f48  09 ff ff ea                                      b #0x540b74

; FUNCTION 0x00540f4c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZTv0_n12_N6glitch3gui9CGUIImageD0Ev
; demangled: virtual thunk to glitch::gui::CGUIImage::~CGUIImage()
; decoder-mode: arm
00540f4c  00 30 90 e5                                      ldr r3, [r0]
00540f50  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00540f54  03 00 80 e0                                      add r0, r0, r3
00540f58  05 ff ff ea                                      b #0x540b74

; FUNCTION 0x00540f5c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZTv0_n24_N6glitch3gui9CGUIImageD1Ev
; demangled: virtual thunk to glitch::gui::CGUIImage::~CGUIImage()
; decoder-mode: arm
00540f5c  00 30 90 e5                                      ldr r3, [r0]
00540f60  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00540f64  03 00 80 e0                                      add r0, r0, r3
00540f68  de fe ff ea                                      b #0x540ae8

; FUNCTION 0x00540f6c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZTv0_n12_N6glitch3gui9CGUIImageD1Ev
; demangled: virtual thunk to glitch::gui::CGUIImage::~CGUIImage()
; decoder-mode: arm
00540f6c  00 30 90 e5                                      ldr r3, [r0]
00540f70  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00540f74  03 00 80 e0                                      add r0, r0, r3
00540f78  da fe ff ea                                      b #0x540ae8

; FUNCTION 0x00540f7c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZTv0_n16_NK6glitch3gui9CGUIImage19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIImage::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00540f7c  00 30 90 e5                                      ldr r3, [r0]
00540f80  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00540f84  03 00 80 e0                                      add r0, r0, r3
00540f88  69 fd ff ea                                      b #0x540534
