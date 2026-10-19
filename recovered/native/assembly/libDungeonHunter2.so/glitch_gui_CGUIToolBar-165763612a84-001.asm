; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0055afcc, declared_size=40, range_size=40, mode=arm
; class-group: glitch::gui::CGUIToolBar
; alias: _ZN6glitch3gui11CGUIToolBar22updateAbsolutePositionEv
; demangled: glitch::gui::CGUIToolBar::updateAbsolutePosition()
; decoder-mode: arm
0055afcc  24 30 90 e5                                      ldr r3, [r0, #0x24]
0055afd0  00 00 53 e3                                      cmp r3, #0
0055afd4  05 00 00 0a                                      beq #0x55aff0
0055afd8  00 20 a0 e3                                      mov r2, #0
0055afdc  58 20 80 e5                                      str r2, [r0, #0x58]
0055afe0  40 20 93 e5                                      ldr r2, [r3, #0x40]
0055afe4  38 30 93 e5                                      ldr r3, [r3, #0x38]
0055afe8  02 30 63 e0                                      rsb r3, r3, r2
0055afec  60 30 80 e5                                      str r3, [r0, #0x60]
0055aff0  4a 66 ff ea                                      b #0x534920

; FUNCTION 0x0055b014, declared_size=376, range_size=376, mode=arm
; class-group: glitch::gui::CGUIToolBar
; alias: _ZN6glitch3gui11CGUIToolBar9addButtonEiPKwS3_RKN5boost13intrusive_ptrINS_5video8ITextureEEESA_bb
; demangled: glitch::gui::CGUIToolBar::addButton(int, wchar_t const*, wchar_t const*, boost::intrusive_ptr<glitch::video::ITexture> const&, boost::intrusive_ptr<glitch::video::ITexture> const&, bool, bool)
; decoder-mode: arm
0055b014  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055b018  58 c1 90 e5                                      ldr ip, [r0, #0x158]
0055b01c  24 d0 4d e2                                      sub sp, sp, #0x24
0055b020  48 60 9d e5                                      ldr r6, [sp, #0x48]
0055b024  03 c0 8c e2                                      add ip, ip, #3
0055b028  58 c1 80 e5                                      str ip, [r0, #0x158]
0055b02c  01 90 a0 e1                                      mov sb, r1
0055b030  03 a0 a0 e1                                      mov sl, r3
0055b034  00 10 96 e5                                      ldr r1, [r6]
0055b038  54 30 dd e5                                      ldrb r3, [sp, #0x54]
0055b03c  02 80 a0 e1                                      mov r8, r2
0055b040  00 00 51 e3                                      cmp r1, #0
0055b044  0c 30 8d e5                                      str r3, [sp, #0xc]
0055b048  20 30 91 15                                      ldrne r3, [r1, #0x20]
0055b04c  24 20 91 15                                      ldrne r2, [r1, #0x24]
0055b050  01 30 a0 01                                      moveq r3, r1
0055b054  08 30 83 12                                      addne r3, r3, #8
0055b058  0c 30 83 10                                      addne r3, r3, ip
0055b05c  03 20 a0 01                                      moveq r2, r3
0055b060  08 20 82 12                                      addne r2, r2, #8
0055b064  00 50 a0 e1                                      mov r5, r0
0055b068  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
0055b06c  50 b0 dd e5                                      ldrb fp, [sp, #0x50]
0055b070  00 10 a0 e3                                      mov r1, #0
0055b074  58 31 80 e5                                      str r3, [r0, #0x158]
0055b078  10 c0 8d e5                                      str ip, [sp, #0x10]
0055b07c  79 0f a0 e3                                      mov r0, #0x1e4
0055b080  02 c0 a0 e3                                      mov ip, #2
0055b084  14 c0 8d e5                                      str ip, [sp, #0x14]
0055b088  18 30 8d e5                                      str r3, [sp, #0x18]
0055b08c  1c 20 8d e5                                      str r2, [sp, #0x1c]
0055b090  45 64 ff eb                                      bl #0x5341ac
0055b094  10 c0 8d e2                                      add ip, sp, #0x10
0055b098  50 11 95 e5                                      ldr r1, [r5, #0x150]
0055b09c  00 40 a0 e1                                      mov r4, r0
0055b0a0  05 20 a0 e1                                      mov r2, r5
0055b0a4  09 30 a0 e1                                      mov r3, sb
0055b0a8  00 c0 8d e5                                      str ip, [sp]
0055b0ac  00 c0 a0 e3                                      mov ip, #0
0055b0b0  04 c0 8d e5                                      str ip, [sp, #4]
0055b0b4  d0 2c 05 eb                                      bl #0x6a63fc
0055b0b8  00 30 94 e5                                      ldr r3, [r4]
0055b0bc  10 00 13 e5                                      ldr r0, [r3, #-0x10]
0055b0c0  00 00 84 e0                                      add r0, r4, r0
0055b0c4  2e 09 f7 eb                                      bl #0x31d584
0055b0c8  00 00 58 e3                                      cmp r8, #0
0055b0cc  04 00 00 0a                                      beq #0x55b0e4
0055b0d0  08 10 a0 e1                                      mov r1, r8
0055b0d4  00 30 94 e5                                      ldr r3, [r4]
0055b0d8  04 00 a0 e1                                      mov r0, r4
0055b0dc  0f e0 a0 e1                                      mov lr, pc
0055b0e0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0055b0e4  00 00 5a e3                                      cmp sl, #0
0055b0e8  04 00 00 0a                                      beq #0x55b100
0055b0ec  0a 10 a0 e1                                      mov r1, sl
0055b0f0  00 30 94 e5                                      ldr r3, [r4]
0055b0f4  04 00 a0 e1                                      mov r0, r4
0055b0f8  0f e0 a0 e1                                      mov lr, pc
0055b0fc  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0055b100  00 30 96 e5                                      ldr r3, [r6]
0055b104  00 00 53 e3                                      cmp r3, #0
0055b108  04 00 00 0a                                      beq #0x55b120
0055b10c  06 10 a0 e1                                      mov r1, r6
0055b110  00 30 94 e5                                      ldr r3, [r4]
0055b114  04 00 a0 e1                                      mov r0, r4
0055b118  0f e0 a0 e1                                      mov lr, pc
0055b11c  80 f0 93 e5                                      ldr pc, [r3, #0x80]
0055b120  00 30 97 e5                                      ldr r3, [r7]
0055b124  00 00 53 e3                                      cmp r3, #0
0055b128  04 00 00 0a                                      beq #0x55b140
0055b12c  07 10 a0 e1                                      mov r1, r7
0055b130  00 30 94 e5                                      ldr r3, [r4]
0055b134  04 00 a0 e1                                      mov r0, r4
0055b138  0f e0 a0 e1                                      mov lr, pc
0055b13c  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0055b140  00 00 5b e3                                      cmp fp, #0
0055b144  0a 00 00 1a                                      bne #0x55b174
0055b148  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0055b14c  00 00 53 e3                                      cmp r3, #0
0055b150  04 00 00 0a                                      beq #0x55b168
0055b154  00 30 94 e5                                      ldr r3, [r4]
0055b158  04 00 a0 e1                                      mov r0, r4
0055b15c  01 10 a0 e3                                      mov r1, #1
0055b160  0f e0 a0 e1                                      mov lr, pc
0055b164  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0055b168  04 00 a0 e1                                      mov r0, r4
0055b16c  24 d0 8d e2                                      add sp, sp, #0x24
0055b170  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055b174  00 30 94 e5                                      ldr r3, [r4]
0055b178  04 00 a0 e1                                      mov r0, r4
0055b17c  01 10 a0 e3                                      mov r1, #1
0055b180  0f e0 a0 e1                                      mov lr, pc
0055b184  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0055b188  ee ff ff ea                                      b #0x55b148

; FUNCTION 0x0055b450, declared_size=416, range_size=416, mode=arm
; class-group: glitch::gui::CGUIToolBar
; alias: _ZN6glitch3gui11CGUIToolBarC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIToolBar::CGUIToolBar(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
0055b450  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0055b454  84 51 9f e5                                      ldr r5, [pc, #0x184]
0055b458  84 c1 9f e5                                      ldr ip, [pc, #0x184]
0055b45c  84 e1 9f e5                                      ldr lr, [pc, #0x184]
0055b460  05 50 8f e0                                      add r5, pc, r5
0055b464  0c c0 95 e7                                      ldr ip, [r5, ip]
0055b468  0e e0 95 e7                                      ldr lr, [r5, lr]
0055b46c  01 70 a0 e3                                      mov r7, #1
0055b470  24 60 9c e5                                      ldr r6, [ip, #0x24]
0055b474  08 e0 8e e2                                      add lr, lr, #8
0055b478  64 71 80 e5                                      str r7, [r0, #0x164]
0055b47c  60 e1 80 e5                                      str lr, [r0, #0x160]
0055b480  5c 61 80 e5                                      str r6, [r0, #0x15c]
0055b484  0c e0 16 e5                                      ldr lr, [r6, #-0xc]
0055b488  2c d0 4d e2                                      sub sp, sp, #0x2c
0055b48c  28 80 9c e5                                      ldr r8, [ip, #0x28]
0055b490  48 60 9d e5                                      ldr r6, [sp, #0x48]
0055b494  57 7f 80 e2                                      add r7, r0, #0x15c
0055b498  0e 80 87 e7                                      str r8, [r7, lr]
0055b49c  0c 80 96 e5                                      ldr r8, [r6, #0xc]
0055b4a0  80 40 96 e8                                      ldm r6, {r7, lr}
0055b4a4  08 a0 96 e5                                      ldr sl, [r6, #8]
0055b4a8  02 60 a0 e1                                      mov r6, r2
0055b4ac  00 30 8d e5                                      str r3, [sp]
0055b4b0  01 20 a0 e1                                      mov r2, r1
0055b4b4  06 30 a0 e1                                      mov r3, r6
0055b4b8  04 10 8c e2                                      add r1, ip, #4
0055b4bc  18 c0 8d e2                                      add ip, sp, #0x18
0055b4c0  00 40 a0 e1                                      mov r4, r0
0055b4c4  18 70 8d e5                                      str r7, [sp, #0x18]
0055b4c8  1c e0 8d e5                                      str lr, [sp, #0x1c]
0055b4cc  20 a0 8d e5                                      str sl, [sp, #0x20]
0055b4d0  24 80 8d e5                                      str r8, [sp, #0x24]
0055b4d4  04 c0 8d e5                                      str ip, [sp, #4]
0055b4d8  2c ff ff eb                                      bl #0x55b190
0055b4dc  08 31 9f e5                                      ldr r3, [pc, #0x108]
0055b4e0  05 20 a0 e3                                      mov r2, #5
0055b4e4  00 00 56 e3                                      cmp r6, #0
0055b4e8  03 30 95 e7                                      ldr r3, [r5, r3]
0055b4ec  58 21 84 e5                                      str r2, [r4, #0x158]
0055b4f0  64 50 a0 03                                      moveq r5, #0x64
0055b4f4  c8 20 83 e2                                      add r2, r3, #0xc8
0055b4f8  10 10 83 e2                                      add r1, r3, #0x10
0055b4fc  a8 30 83 e2                                      add r3, r3, #0xa8
0055b500  00 10 84 e5                                      str r1, [r4]
0055b504  5c 31 84 e5                                      str r3, [r4, #0x15c]
0055b508  60 21 84 e5                                      str r2, [r4, #0x160]
0055b50c  1b 00 00 0a                                      beq #0x55b580
0055b510  24 20 94 e5                                      ldr r2, [r4, #0x24]
0055b514  06 00 a0 e1                                      mov r0, r6
0055b518  00 30 96 e5                                      ldr r3, [r6]
0055b51c  40 50 92 e5                                      ldr r5, [r2, #0x40]
0055b520  38 20 92 e5                                      ldr r2, [r2, #0x38]
0055b524  00 60 a0 e3                                      mov r6, #0
0055b528  05 50 62 e0                                      rsb r5, r2, r5
0055b52c  0f e0 a0 e1                                      mov lr, pc
0055b530  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0055b534  00 20 90 e5                                      ldr r2, [r0]
0055b538  02 00 50 e1                                      cmp r0, r2
0055b53c  0f 00 00 0a                                      beq #0x55b580
0055b540  08 30 92 e5                                      ldr r3, [r2, #8]
0055b544  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0055b548  44 10 93 e5                                      ldr r1, [r3, #0x44]
0055b54c  3c e0 93 e5                                      ldr lr, [r3, #0x3c]
0055b550  00 00 5c e3                                      cmp ip, #0
0055b554  40 30 93 e5                                      ldr r3, [r3, #0x40]
0055b558  03 00 00 1a                                      bne #0x55b56c
0055b55c  0e 00 56 e1                                      cmp r6, lr
0055b560  01 00 00 ba                                      blt #0x55b56c
0055b564  03 00 55 e1                                      cmp r5, r3
0055b568  00 00 00 0a                                      beq #0x55b570
0055b56c  06 10 a0 e1                                      mov r1, r6
0055b570  00 20 92 e5                                      ldr r2, [r2]
0055b574  01 60 a0 e1                                      mov r6, r1
0055b578  02 00 50 e1                                      cmp r0, r2
0055b57c  ef ff ff 1a                                      bne #0x55b540
0055b580  50 31 94 e5                                      ldr r3, [r4, #0x150]
0055b584  00 20 a0 e3                                      mov r2, #0
0055b588  14 20 8d e5                                      str r2, [sp, #0x14]
0055b58c  08 20 8d e5                                      str r2, [sp, #8]
0055b590  10 20 8d e5                                      str r2, [sp, #0x10]
0055b594  0c 60 8d e5                                      str r6, [sp, #0xc]
0055b598  03 00 a0 e1                                      mov r0, r3
0055b59c  00 30 93 e5                                      ldr r3, [r3]
0055b5a0  0f e0 a0 e1                                      mov lr, pc
0055b5a4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055b5a8  01 10 a0 e3                                      mov r1, #1
0055b5ac  00 30 90 e5                                      ldr r3, [r0]
0055b5b0  0f e0 a0 e1                                      mov lr, pc
0055b5b4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0055b5b8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0055b5bc  08 10 8d e2                                      add r1, sp, #8
0055b5c0  10 50 8d e5                                      str r5, [sp, #0x10]
0055b5c4  03 30 80 e0                                      add r3, r0, r3
0055b5c8  04 00 a0 e1                                      mov r0, r4
0055b5cc  14 30 8d e5                                      str r3, [sp, #0x14]
0055b5d0  5a 64 ff eb                                      bl #0x534740
0055b5d4  04 00 a0 e1                                      mov r0, r4
0055b5d8  2c d0 8d e2                                      add sp, sp, #0x2c
0055b5dc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0055b5e0  30 96 43 00 e8 11 00 00 44 2b 00 00 2c 20 00 00  .byte 0x30, 0x96, 0x43, 0x00, 0xe8, 0x11, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x2c, 0x20, 0x00, 0x00

; FUNCTION 0x0055b5f0, declared_size=336, range_size=336, mode=arm
; class-group: glitch::gui::CGUIToolBar
; alias: _ZN6glitch3gui11CGUIToolBarC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIToolBar::CGUIToolBar(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
0055b5f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0055b5f4  28 d0 4d e2                                      sub sp, sp, #0x28
0055b5f8  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0055b5fc  01 50 a0 e1                                      mov r5, r1
0055b600  04 10 81 e2                                      add r1, r1, #4
0055b604  00 60 9c e5                                      ldr r6, [ip]
0055b608  10 50 9c e9                                      ldmib ip, {r4, ip, lr}
0055b60c  18 60 8d e5                                      str r6, [sp, #0x18]
0055b610  1c 40 8d e5                                      str r4, [sp, #0x1c]
0055b614  20 c0 8d e5                                      str ip, [sp, #0x20]
0055b618  38 c0 9d e5                                      ldr ip, [sp, #0x38]
0055b61c  00 40 a0 e1                                      mov r4, r0
0055b620  03 60 a0 e1                                      mov r6, r3
0055b624  00 c0 8d e5                                      str ip, [sp]
0055b628  18 c0 8d e2                                      add ip, sp, #0x18
0055b62c  24 e0 8d e5                                      str lr, [sp, #0x24]
0055b630  04 c0 8d e5                                      str ip, [sp, #4]
0055b634  d5 fe ff eb                                      bl #0x55b190
0055b638  00 30 95 e5                                      ldr r3, [r5]
0055b63c  00 00 56 e3                                      cmp r6, #0
0055b640  00 30 84 e5                                      str r3, [r4]
0055b644  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0055b648  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055b64c  03 20 84 e7                                      str r2, [r4, r3]
0055b650  00 30 94 e5                                      ldr r3, [r4]
0055b654  20 20 95 e5                                      ldr r2, [r5, #0x20]
0055b658  64 50 a0 03                                      moveq r5, #0x64
0055b65c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0055b660  03 20 84 e7                                      str r2, [r4, r3]
0055b664  05 30 a0 e3                                      mov r3, #5
0055b668  58 31 84 e5                                      str r3, [r4, #0x158]
0055b66c  1b 00 00 0a                                      beq #0x55b6e0
0055b670  24 20 94 e5                                      ldr r2, [r4, #0x24]
0055b674  06 00 a0 e1                                      mov r0, r6
0055b678  00 30 96 e5                                      ldr r3, [r6]
0055b67c  40 50 92 e5                                      ldr r5, [r2, #0x40]
0055b680  38 20 92 e5                                      ldr r2, [r2, #0x38]
0055b684  00 60 a0 e3                                      mov r6, #0
0055b688  05 50 62 e0                                      rsb r5, r2, r5
0055b68c  0f e0 a0 e1                                      mov lr, pc
0055b690  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0055b694  00 20 90 e5                                      ldr r2, [r0]
0055b698  02 00 50 e1                                      cmp r0, r2
0055b69c  0f 00 00 0a                                      beq #0x55b6e0
0055b6a0  08 30 92 e5                                      ldr r3, [r2, #8]
0055b6a4  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0055b6a8  44 10 93 e5                                      ldr r1, [r3, #0x44]
0055b6ac  3c e0 93 e5                                      ldr lr, [r3, #0x3c]
0055b6b0  00 00 5c e3                                      cmp ip, #0
0055b6b4  40 30 93 e5                                      ldr r3, [r3, #0x40]
0055b6b8  03 00 00 1a                                      bne #0x55b6cc
0055b6bc  0e 00 56 e1                                      cmp r6, lr
0055b6c0  01 00 00 ba                                      blt #0x55b6cc
0055b6c4  03 00 55 e1                                      cmp r5, r3
0055b6c8  00 00 00 0a                                      beq #0x55b6d0
0055b6cc  06 10 a0 e1                                      mov r1, r6
0055b6d0  00 20 92 e5                                      ldr r2, [r2]
0055b6d4  01 60 a0 e1                                      mov r6, r1
0055b6d8  02 00 50 e1                                      cmp r0, r2
0055b6dc  ef ff ff 1a                                      bne #0x55b6a0
0055b6e0  50 31 94 e5                                      ldr r3, [r4, #0x150]
0055b6e4  00 20 a0 e3                                      mov r2, #0
0055b6e8  14 20 8d e5                                      str r2, [sp, #0x14]
0055b6ec  08 20 8d e5                                      str r2, [sp, #8]
0055b6f0  10 20 8d e5                                      str r2, [sp, #0x10]
0055b6f4  0c 60 8d e5                                      str r6, [sp, #0xc]
0055b6f8  03 00 a0 e1                                      mov r0, r3
0055b6fc  00 30 93 e5                                      ldr r3, [r3]
0055b700  0f e0 a0 e1                                      mov lr, pc
0055b704  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055b708  01 10 a0 e3                                      mov r1, #1
0055b70c  00 30 90 e5                                      ldr r3, [r0]
0055b710  0f e0 a0 e1                                      mov lr, pc
0055b714  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0055b718  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0055b71c  08 10 8d e2                                      add r1, sp, #8
0055b720  10 50 8d e5                                      str r5, [sp, #0x10]
0055b724  03 30 80 e0                                      add r3, r0, r3
0055b728  04 00 a0 e1                                      mov r0, r4
0055b72c  14 30 8d e5                                      str r3, [sp, #0x14]
0055b730  02 64 ff eb                                      bl #0x534740
0055b734  04 00 a0 e1                                      mov r0, r4
0055b738  28 d0 8d e2                                      add sp, sp, #0x28
0055b73c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0055b740, declared_size=136, range_size=136, mode=arm
; class-group: glitch::gui::CGUIToolBar
; alias: _ZN6glitch3gui11CGUIToolBar7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIToolBar::onEvent(glitch::SEvent const&)
; decoder-mode: arm
0055b740  10 40 2d e9                                      push {r4, lr}
0055b744  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
0055b748  00 00 53 e3                                      cmp r3, #0
0055b74c  02 00 00 0a                                      beq #0x55b75c
0055b750  00 30 91 e5                                      ldr r3, [r1]
0055b754  01 00 53 e3                                      cmp r3, #1
0055b758  07 00 00 0a                                      beq #0x55b77c
0055b75c  24 30 90 e5                                      ldr r3, [r0, #0x24]
0055b760  00 00 53 e3                                      cmp r3, #0
0055b764  15 00 00 0a                                      beq #0x55b7c0
0055b768  03 00 a0 e1                                      mov r0, r3
0055b76c  00 30 93 e5                                      ldr r3, [r3]
0055b770  0f e0 a0 e1                                      mov lr, pc
0055b774  08 f0 93 e5                                      ldr pc, [r3, #8]
0055b778  10 80 bd e8                                      pop {r4, pc}
0055b77c  14 20 91 e5                                      ldr r2, [r1, #0x14]
0055b780  00 00 52 e3                                      cmp r2, #0
0055b784  f4 ff ff 1a                                      bne #0x55b75c
0055b788  08 20 91 e5                                      ldr r2, [r1, #8]
0055b78c  48 c0 90 e5                                      ldr ip, [r0, #0x48]
0055b790  0c 40 91 e5                                      ldr r4, [r1, #0xc]
0055b794  0c 00 52 e1                                      cmp r2, ip
0055b798  ef ff ff ba                                      blt #0x55b75c
0055b79c  4c c0 90 e5                                      ldr ip, [r0, #0x4c]
0055b7a0  0c 00 54 e1                                      cmp r4, ip
0055b7a4  ec ff ff ba                                      blt #0x55b75c
0055b7a8  50 c0 90 e5                                      ldr ip, [r0, #0x50]
0055b7ac  0c 00 52 e1                                      cmp r2, ip
0055b7b0  e9 ff ff ca                                      bgt #0x55b75c
0055b7b4  54 20 90 e5                                      ldr r2, [r0, #0x54]
0055b7b8  02 00 54 e1                                      cmp r4, r2
0055b7bc  e6 ff ff ca                                      bgt #0x55b75c
0055b7c0  03 00 a0 e1                                      mov r0, r3
0055b7c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0055b83c, declared_size=112, range_size=112, mode=arm
; class-group: glitch::gui::CGUIToolBar
; alias: _ZN6glitch3gui11CGUIToolBarD1Ev
; demangled: glitch::gui::CGUIToolBar::~CGUIToolBar()
; decoder-mode: arm
0055b83c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0055b840  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0055b844  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0055b848  03 30 8f e0                                      add r3, pc, r3
0055b84c  01 10 93 e7                                      ldr r1, [r3, r1]
0055b850  10 40 2d e9                                      push {r4, lr}
0055b854  02 20 93 e7                                      ldr r2, [r3, r2]
0055b858  04 c0 91 e5                                      ldr ip, [r1, #4]
0055b85c  00 40 a0 e1                                      mov r4, r0
0055b860  c8 e0 82 e2                                      add lr, r2, #0xc8
0055b864  a8 20 82 e2                                      add r2, r2, #0xa8
0055b868  5c 21 80 e5                                      str r2, [r0, #0x15c]
0055b86c  60 e1 80 e5                                      str lr, [r0, #0x160]
0055b870  00 c0 80 e5                                      str ip, [r0]
0055b874  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0055b878  14 e0 91 e5                                      ldr lr, [r1, #0x14]
0055b87c  18 20 91 e5                                      ldr r2, [r1, #0x18]
0055b880  08 10 81 e2                                      add r1, r1, #8
0055b884  0c e0 80 e7                                      str lr, [r0, ip]
0055b888  00 c0 90 e5                                      ldr ip, [r0]
0055b88c  10 30 1c e5                                      ldr r3, [ip, #-0x10]
0055b890  03 20 80 e7                                      str r2, [r0, r3]
0055b894  e1 75 ff eb                                      bl #0x539020
0055b898  04 00 a0 e1                                      mov r0, r4
0055b89c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0055b8a0  48 92 43 00 e8 11 00 00 2c 20 00 00              .byte 0x48, 0x92, 0x43, 0x00, 0xe8, 0x11, 0x00, 0x00, 0x2c, 0x20, 0x00, 0x00

; FUNCTION 0x0055b8ac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIToolBar
; alias: _ZTv0_n24_N6glitch3gui11CGUIToolBarD1Ev
; demangled: virtual thunk to glitch::gui::CGUIToolBar::~CGUIToolBar()
; decoder-mode: arm
0055b8ac  00 30 90 e5                                      ldr r3, [r0]
0055b8b0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0055b8b4  03 00 80 e0                                      add r0, r0, r3
0055b8b8  df ff ff ea                                      b #0x55b83c

; FUNCTION 0x0055b8bc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIToolBar
; alias: _ZTv0_n12_N6glitch3gui11CGUIToolBarD1Ev
; demangled: virtual thunk to glitch::gui::CGUIToolBar::~CGUIToolBar()
; decoder-mode: arm
0055b8bc  00 30 90 e5                                      ldr r3, [r0]
0055b8c0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055b8c4  03 00 80 e0                                      add r0, r0, r3
0055b8c8  db ff ff ea                                      b #0x55b83c

; FUNCTION 0x0055b8cc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIToolBar
; alias: _ZN6glitch3gui11CGUIToolBarD0Ev
; demangled: glitch::gui::CGUIToolBar::~CGUIToolBar()
; decoder-mode: arm
0055b8cc  10 40 2d e9                                      push {r4, lr}
0055b8d0  00 40 a0 e1                                      mov r4, r0
0055b8d4  d8 ff ff eb                                      bl #0x55b83c
0055b8d8  04 00 a0 e1                                      mov r0, r4
0055b8dc  73 ca f6 eb                                      bl #0x30e2b0
0055b8e0  04 00 a0 e1                                      mov r0, r4
0055b8e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0055b8e8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIToolBar
; alias: _ZTv0_n24_N6glitch3gui11CGUIToolBarD0Ev
; demangled: virtual thunk to glitch::gui::CGUIToolBar::~CGUIToolBar()
; decoder-mode: arm
0055b8e8  00 30 90 e5                                      ldr r3, [r0]
0055b8ec  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0055b8f0  03 00 80 e0                                      add r0, r0, r3
0055b8f4  f4 ff ff ea                                      b #0x55b8cc

; FUNCTION 0x0055b8f8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIToolBar
; alias: _ZTv0_n12_N6glitch3gui11CGUIToolBarD0Ev
; demangled: virtual thunk to glitch::gui::CGUIToolBar::~CGUIToolBar()
; decoder-mode: arm
0055b8f8  00 30 90 e5                                      ldr r3, [r0]
0055b8fc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055b900  03 00 80 e0                                      add r0, r0, r3
0055b904  f0 ff ff ea                                      b #0x55b8cc

; FUNCTION 0x0055b984, declared_size=172, range_size=172, mode=arm
; class-group: glitch::gui::CGUIToolBar
; alias: _ZN6glitch3gui11CGUIToolBar4drawEv
; demangled: glitch::gui::CGUIToolBar::draw()
; decoder-mode: arm
0055b984  30 40 2d e9                                      push {r4, r5, lr}
0055b988  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
0055b98c  14 d0 4d e2                                      sub sp, sp, #0x14
0055b990  00 40 a0 e1                                      mov r4, r0
0055b994  00 00 53 e3                                      cmp r3, #0
0055b998  01 00 00 1a                                      bne #0x55b9a4
0055b99c  14 d0 8d e2                                      add sp, sp, #0x14
0055b9a0  30 80 bd e8                                      pop {r4, r5, pc}
0055b9a4  50 31 90 e5                                      ldr r3, [r0, #0x150]
0055b9a8  03 00 a0 e1                                      mov r0, r3
0055b9ac  00 30 93 e5                                      ldr r3, [r3]
0055b9b0  0f e0 a0 e1                                      mov lr, pc
0055b9b4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055b9b8  00 30 50 e2                                      subs r3, r0, #0
0055b9bc  f6 ff ff 0a                                      beq #0x55b99c
0055b9c0  3c c0 94 e5                                      ldr ip, [r4, #0x3c]
0055b9c4  40 10 94 e5                                      ldr r1, [r4, #0x40]
0055b9c8  44 20 94 e5                                      ldr r2, [r4, #0x44]
0055b9cc  38 e0 94 e5                                      ldr lr, [r4, #0x38]
0055b9d0  08 10 8d e5                                      str r1, [sp, #8]
0055b9d4  0c 20 8d e5                                      str r2, [sp, #0xc]
0055b9d8  00 e0 8d e5                                      str lr, [sp]
0055b9dc  04 c0 8d e5                                      str ip, [sp, #4]
0055b9e0  00 c0 93 e5                                      ldr ip, [r3]
0055b9e4  04 10 a0 e1                                      mov r1, r4
0055b9e8  48 30 84 e2                                      add r3, r4, #0x48
0055b9ec  0d 20 a0 e1                                      mov r2, sp
0055b9f0  0f e0 a0 e1                                      mov lr, pc
0055b9f4  54 f0 9c e5                                      ldr pc, [ip, #0x54]
0055b9f8  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
0055b9fc  00 00 53 e3                                      cmp r3, #0
0055ba00  04 50 b4 15                                      ldrne r5, [r4, #4]!
0055ba04  06 00 00 1a                                      bne #0x55ba24
0055ba08  e3 ff ff ea                                      b #0x55b99c
0055ba0c  08 30 95 e5                                      ldr r3, [r5, #8]
0055ba10  03 00 a0 e1                                      mov r0, r3
0055ba14  00 30 93 e5                                      ldr r3, [r3]
0055ba18  0f e0 a0 e1                                      mov lr, pc
0055ba1c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0055ba20  00 50 95 e5                                      ldr r5, [r5]
0055ba24  04 00 55 e1                                      cmp r5, r4
0055ba28  f7 ff ff 1a                                      bne #0x55ba0c
0055ba2c  da ff ff ea                                      b #0x55b99c
