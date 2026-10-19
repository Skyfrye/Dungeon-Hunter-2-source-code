; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a76ac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZN6glitch3gui12CGUICheckBox10setCheckedEb
; demangled: glitch::gui::CGUICheckBox::setChecked(bool)
; decoder-mode: arm
006a76ac  59 11 c0 e5                                      strb r1, [r0, #0x159]
006a76b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a76b4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZNK6glitch3gui12CGUICheckBox9isCheckedEv
; demangled: glitch::gui::CGUICheckBox::isChecked() const
; decoder-mode: arm
006a76b4  59 01 d0 e5                                      ldrb r0, [r0, #0x159]
006a76b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a76bc, declared_size=56, range_size=56, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZNK6glitch3gui12CGUICheckBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUICheckBox::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006a76bc  70 40 2d e9                                      push {r4, r5, r6, lr}
006a76c0  01 40 a0 e1                                      mov r4, r1
006a76c4  00 50 a0 e1                                      mov r5, r0
006a76c8  7b 36 fa eb                                      bl #0x5350bc
006a76cc  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
006a76d0  04 00 a0 e1                                      mov r0, r4
006a76d4  59 21 d5 e5                                      ldrb r2, [r5, #0x159]
006a76d8  01 10 8f e0                                      add r1, pc, r1
006a76dc  00 c0 94 e5                                      ldr ip, [r4]
006a76e0  00 30 a0 e3                                      mov r3, #0
006a76e4  0f e0 a0 e1                                      mov lr, pc
006a76e8  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006a76ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006a76f0  80 72 23 00                                      .byte 0x80, 0x72, 0x23, 0x00

; FUNCTION 0x006a7bd4, declared_size=220, range_size=220, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZN6glitch3gui12CGUICheckBoxC1EbPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUICheckBox::CGUICheckBox(bool, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
006a7bd4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006a7bd8  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
006a7bdc  c0 e0 9f e5                                      ldr lr, [pc, #0xc0]
006a7be0  c0 c0 9f e5                                      ldr ip, [pc, #0xc0]
006a7be4  05 50 8f e0                                      add r5, pc, r5
006a7be8  0e e0 95 e7                                      ldr lr, [r5, lr]
006a7bec  0c c0 95 e7                                      ldr ip, [r5, ip]
006a7bf0  01 60 a0 e3                                      mov r6, #1
006a7bf4  24 70 9e e5                                      ldr r7, [lr, #0x24]
006a7bf8  08 c0 8c e2                                      add ip, ip, #8
006a7bfc  68 61 80 e5                                      str r6, [r0, #0x168]
006a7c00  60 71 80 e5                                      str r7, [r0, #0x160]
006a7c04  64 c1 80 e5                                      str ip, [r0, #0x164]
006a7c08  18 d0 4d e2                                      sub sp, sp, #0x18
006a7c0c  0c 80 17 e5                                      ldr r8, [r7, #-0xc]
006a7c10  28 a0 9e e5                                      ldr sl, [lr, #0x28]
006a7c14  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006a7c18  16 7e 80 e2                                      add r7, r0, #0x160
006a7c1c  08 a0 87 e7                                      str sl, [r7, r8]
006a7c20  0c a0 9c e5                                      ldr sl, [ip, #0xc]
006a7c24  80 11 9c e8                                      ldm ip, {r7, r8, ip}
006a7c28  01 90 a0 e1                                      mov sb, r1
006a7c2c  04 10 8e e2                                      add r1, lr, #4
006a7c30  10 c0 8d e5                                      str ip, [sp, #0x10]
006a7c34  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006a7c38  00 40 a0 e1                                      mov r4, r0
006a7c3c  08 70 8d e5                                      str r7, [sp, #8]
006a7c40  00 c0 8d e5                                      str ip, [sp]
006a7c44  08 c0 8d e2                                      add ip, sp, #8
006a7c48  04 c0 8d e5                                      str ip, [sp, #4]
006a7c4c  0c 80 8d e5                                      str r8, [sp, #0xc]
006a7c50  14 a0 8d e5                                      str sl, [sp, #0x14]
006a7c54  2f ff ff eb                                      bl #0x6a7918
006a7c58  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
006a7c5c  00 20 a0 e3                                      mov r2, #0
006a7c60  59 91 c4 e5                                      strb sb, [r4, #0x159]
006a7c64  03 30 95 e7                                      ldr r3, [r5, r3]
006a7c68  5c 21 84 e5                                      str r2, [r4, #0x15c]
006a7c6c  34 61 c4 e5                                      strb r6, [r4, #0x134]
006a7c70  cc 10 83 e2                                      add r1, r3, #0xcc
006a7c74  10 00 83 e2                                      add r0, r3, #0x10
006a7c78  ac 30 83 e2                                      add r3, r3, #0xac
006a7c7c  00 00 84 e5                                      str r0, [r4]
006a7c80  60 31 84 e5                                      str r3, [r4, #0x160]
006a7c84  04 00 a0 e1                                      mov r0, r4
006a7c88  64 11 84 e5                                      str r1, [r4, #0x164]
006a7c8c  58 21 c4 e5                                      strb r2, [r4, #0x158]
006a7c90  f4 fe ff eb                                      bl #0x6a7868
006a7c94  04 00 a0 e1                                      mov r0, r4
006a7c98  18 d0 8d e2                                      add sp, sp, #0x18
006a7c9c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006a7ca0  ac ce 2e 00 34 3c 00 00 44 2b 00 00 a8 09 00 00  .byte 0xac, 0xce, 0x2e, 0x00, 0x34, 0x3c, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xa8, 0x09, 0x00, 0x00

; FUNCTION 0x006a7cb0, declared_size=164, range_size=164, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZN6glitch3gui12CGUICheckBoxC2EbPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUICheckBox::CGUICheckBox(bool, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
006a7cb0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006a7cb4  1c d0 4d e2                                      sub sp, sp, #0x1c
006a7cb8  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006a7cbc  01 50 a0 e1                                      mov r5, r1
006a7cc0  02 60 a0 e1                                      mov r6, r2
006a7cc4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
006a7cc8  00 70 9c e5                                      ldr r7, [ip]
006a7ccc  10 10 9c e9                                      ldmib ip, {r4, ip}
006a7cd0  03 20 a0 e1                                      mov r2, r3
006a7cd4  04 10 81 e2                                      add r1, r1, #4
006a7cd8  10 c0 8d e5                                      str ip, [sp, #0x10]
006a7cdc  34 c0 9d e5                                      ldr ip, [sp, #0x34]
006a7ce0  30 30 9d e5                                      ldr r3, [sp, #0x30]
006a7ce4  0c 40 8d e5                                      str r4, [sp, #0xc]
006a7ce8  00 c0 8d e5                                      str ip, [sp]
006a7cec  08 c0 8d e2                                      add ip, sp, #8
006a7cf0  00 40 a0 e1                                      mov r4, r0
006a7cf4  14 e0 8d e5                                      str lr, [sp, #0x14]
006a7cf8  04 c0 8d e5                                      str ip, [sp, #4]
006a7cfc  08 70 8d e5                                      str r7, [sp, #8]
006a7d00  04 ff ff eb                                      bl #0x6a7918
006a7d04  00 20 95 e5                                      ldr r2, [r5]
006a7d08  00 30 a0 e3                                      mov r3, #0
006a7d0c  04 00 a0 e1                                      mov r0, r4
006a7d10  00 20 84 e5                                      str r2, [r4]
006a7d14  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
006a7d18  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006a7d1c  02 10 84 e7                                      str r1, [r4, r2]
006a7d20  00 20 94 e5                                      ldr r2, [r4]
006a7d24  20 10 95 e5                                      ldr r1, [r5, #0x20]
006a7d28  10 20 12 e5                                      ldr r2, [r2, #-0x10]
006a7d2c  02 10 84 e7                                      str r1, [r4, r2]
006a7d30  01 20 a0 e3                                      mov r2, #1
006a7d34  59 61 c4 e5                                      strb r6, [r4, #0x159]
006a7d38  5c 31 84 e5                                      str r3, [r4, #0x15c]
006a7d3c  34 21 c4 e5                                      strb r2, [r4, #0x134]
006a7d40  58 31 c4 e5                                      strb r3, [r4, #0x158]
006a7d44  c7 fe ff eb                                      bl #0x6a7868
006a7d48  04 00 a0 e1                                      mov r0, r4
006a7d4c  1c d0 8d e2                                      add sp, sp, #0x1c
006a7d50  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006a7dc8, declared_size=112, range_size=112, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZN6glitch3gui12CGUICheckBoxD1Ev
; demangled: glitch::gui::CGUICheckBox::~CGUICheckBox()
; decoder-mode: arm
006a7dc8  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
006a7dcc  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
006a7dd0  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
006a7dd4  03 30 8f e0                                      add r3, pc, r3
006a7dd8  01 10 93 e7                                      ldr r1, [r3, r1]
006a7ddc  10 40 2d e9                                      push {r4, lr}
006a7de0  02 20 93 e7                                      ldr r2, [r3, r2]
006a7de4  04 c0 91 e5                                      ldr ip, [r1, #4]
006a7de8  00 40 a0 e1                                      mov r4, r0
006a7dec  cc e0 82 e2                                      add lr, r2, #0xcc
006a7df0  ac 20 82 e2                                      add r2, r2, #0xac
006a7df4  60 21 80 e5                                      str r2, [r0, #0x160]
006a7df8  64 e1 80 e5                                      str lr, [r0, #0x164]
006a7dfc  00 c0 80 e5                                      str ip, [r0]
006a7e00  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
006a7e04  14 e0 91 e5                                      ldr lr, [r1, #0x14]
006a7e08  18 20 91 e5                                      ldr r2, [r1, #0x18]
006a7e0c  08 10 81 e2                                      add r1, r1, #8
006a7e10  0c e0 80 e7                                      str lr, [r0, ip]
006a7e14  00 c0 90 e5                                      ldr ip, [r0]
006a7e18  10 30 1c e5                                      ldr r3, [ip, #-0x10]
006a7e1c  03 20 80 e7                                      str r2, [r0, r3]
006a7e20  7e 44 fa eb                                      bl #0x539020
006a7e24  04 00 a0 e1                                      mov r0, r4
006a7e28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006a7e2c  bc cc 2e 00 34 3c 00 00 a8 09 00 00              .byte 0xbc, 0xcc, 0x2e, 0x00, 0x34, 0x3c, 0x00, 0x00, 0xa8, 0x09, 0x00, 0x00

; FUNCTION 0x006a7e38, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZTv0_n24_N6glitch3gui12CGUICheckBoxD1Ev
; demangled: virtual thunk to glitch::gui::CGUICheckBox::~CGUICheckBox()
; decoder-mode: arm
006a7e38  00 30 90 e5                                      ldr r3, [r0]
006a7e3c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006a7e40  03 00 80 e0                                      add r0, r0, r3
006a7e44  df ff ff ea                                      b #0x6a7dc8

; FUNCTION 0x006a7e48, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZTv0_n12_N6glitch3gui12CGUICheckBoxD1Ev
; demangled: virtual thunk to glitch::gui::CGUICheckBox::~CGUICheckBox()
; decoder-mode: arm
006a7e48  00 30 90 e5                                      ldr r3, [r0]
006a7e4c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a7e50  03 00 80 e0                                      add r0, r0, r3
006a7e54  db ff ff ea                                      b #0x6a7dc8

; FUNCTION 0x006a7e58, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZN6glitch3gui12CGUICheckBoxD0Ev
; demangled: glitch::gui::CGUICheckBox::~CGUICheckBox()
; decoder-mode: arm
006a7e58  10 40 2d e9                                      push {r4, lr}
006a7e5c  00 40 a0 e1                                      mov r4, r0
006a7e60  d8 ff ff eb                                      bl #0x6a7dc8
006a7e64  04 00 a0 e1                                      mov r0, r4
006a7e68  10 99 f1 eb                                      bl #0x30e2b0
006a7e6c  04 00 a0 e1                                      mov r0, r4
006a7e70  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006a7e74, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZTv0_n24_N6glitch3gui12CGUICheckBoxD0Ev
; demangled: virtual thunk to glitch::gui::CGUICheckBox::~CGUICheckBox()
; decoder-mode: arm
006a7e74  00 30 90 e5                                      ldr r3, [r0]
006a7e78  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006a7e7c  03 00 80 e0                                      add r0, r0, r3
006a7e80  f4 ff ff ea                                      b #0x6a7e58

; FUNCTION 0x006a7e84, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZTv0_n12_N6glitch3gui12CGUICheckBoxD0Ev
; demangled: virtual thunk to glitch::gui::CGUICheckBox::~CGUICheckBox()
; decoder-mode: arm
006a7e84  00 30 90 e5                                      ldr r3, [r0]
006a7e88  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a7e8c  03 00 80 e0                                      add r0, r0, r3
006a7e90  f0 ff ff ea                                      b #0x6a7e58

; FUNCTION 0x006a7e94, declared_size=68, range_size=68, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZN6glitch3gui12CGUICheckBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUICheckBox::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006a7e94  70 40 2d e9                                      push {r4, r5, r6, lr}
006a7e98  01 40 a0 e1                                      mov r4, r1
006a7e9c  30 10 9f e5                                      ldr r1, [pc, #0x30]
006a7ea0  00 50 a0 e1                                      mov r5, r0
006a7ea4  00 30 94 e5                                      ldr r3, [r4]
006a7ea8  01 10 8f e0                                      add r1, pc, r1
006a7eac  04 00 a0 e1                                      mov r0, r4
006a7eb0  02 60 a0 e1                                      mov r6, r2
006a7eb4  0f e0 a0 e1                                      mov lr, pc
006a7eb8  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006a7ebc  04 10 a0 e1                                      mov r1, r4
006a7ec0  59 01 c5 e5                                      strb r0, [r5, #0x159]
006a7ec4  06 20 a0 e1                                      mov r2, r6
006a7ec8  05 00 a0 e1                                      mov r0, r5
006a7ecc  70 40 bd e8                                      pop {r4, r5, r6, lr}
006a7ed0  58 46 fa ea                                      b #0x539838
; mapping-symbol data/literal pool
006a7ed4  b0 6a 23 00                                      .byte 0xb0, 0x6a, 0x23, 0x00

; FUNCTION 0x006a7ed8, declared_size=552, range_size=552, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZN6glitch3gui12CGUICheckBox7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUICheckBox::onEvent(glitch::SEvent const&)
; decoder-mode: arm
006a7ed8  70 40 2d e9                                      push {r4, r5, r6, lr}
006a7edc  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
006a7ee0  30 d0 4d e2                                      sub sp, sp, #0x30
006a7ee4  00 40 a0 e1                                      mov r4, r0
006a7ee8  00 00 53 e3                                      cmp r3, #0
006a7eec  01 50 a0 e1                                      mov r5, r1
006a7ef0  06 00 00 0a                                      beq #0x6a7f10
006a7ef4  00 60 91 e5                                      ldr r6, [r1]
006a7ef8  01 00 56 e3                                      cmp r6, #1
006a7efc  3a 00 00 0a                                      beq #0x6a7fec
006a7f00  02 00 56 e3                                      cmp r6, #2
006a7f04  13 00 00 0a                                      beq #0x6a7f58
006a7f08  00 00 56 e3                                      cmp r6, #0
006a7f0c  0a 00 00 0a                                      beq #0x6a7f3c
006a7f10  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a7f14  00 00 53 e3                                      cmp r3, #0
006a7f18  03 00 a0 01                                      moveq r0, r3
006a7f1c  04 00 00 0a                                      beq #0x6a7f34
006a7f20  03 00 a0 e1                                      mov r0, r3
006a7f24  05 10 a0 e1                                      mov r1, r5
006a7f28  00 30 93 e5                                      ldr r3, [r3]
006a7f2c  0f e0 a0 e1                                      mov lr, pc
006a7f30  08 f0 93 e5                                      ldr pc, [r3, #8]
006a7f34  30 d0 8d e2                                      add sp, sp, #0x30
006a7f38  70 80 bd e8                                      pop {r4, r5, r6, pc}
006a7f3c  10 30 91 e5                                      ldr r3, [r1, #0x10]
006a7f40  00 00 53 e3                                      cmp r3, #0
006a7f44  f1 ff ff 1a                                      bne #0x6a7f10
006a7f48  08 20 91 e5                                      ldr r2, [r1, #8]
006a7f4c  00 00 52 e1                                      cmp r2, r0
006a7f50  58 31 c0 05                                      strbeq r3, [r0, #0x158]
006a7f54  ed ff ff ea                                      b #0x6a7f10
006a7f58  10 20 d1 e5                                      ldrb r2, [r1, #0x10]
006a7f5c  00 00 52 e3                                      cmp r2, #0
006a7f60  05 00 00 0a                                      beq #0x6a7f7c
006a7f64  0c 30 91 e5                                      ldr r3, [r1, #0xc]
006a7f68  0d 00 53 e3                                      cmp r3, #0xd
006a7f6c  20 00 53 13                                      cmpne r3, #0x20
006a7f70  01 00 a0 03                                      moveq r0, #1
006a7f74  58 01 c4 05                                      strbeq r0, [r4, #0x158]
006a7f78  ed ff ff 0a                                      beq #0x6a7f34
006a7f7c  58 31 d4 e5                                      ldrb r3, [r4, #0x158]
006a7f80  00 00 53 e3                                      cmp r3, #0
006a7f84  e1 ff ff 0a                                      beq #0x6a7f10
006a7f88  00 00 52 e3                                      cmp r2, #0
006a7f8c  47 00 00 1a                                      bne #0x6a80b0
006a7f90  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006a7f94  0d 00 53 e3                                      cmp r3, #0xd
006a7f98  20 00 53 13                                      cmpne r3, #0x20
006a7f9c  db ff ff 1a                                      bne #0x6a7f10
006a7fa0  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a7fa4  58 21 c4 e5                                      strb r2, [r4, #0x158]
006a7fa8  00 00 53 e3                                      cmp r3, #0
006a7fac  51 00 00 0a                                      beq #0x6a80f8
006a7fb0  59 11 d4 e5                                      ldrb r1, [r4, #0x159]
006a7fb4  24 20 8d e5                                      str r2, [sp, #0x24]
006a7fb8  03 00 a0 e1                                      mov r0, r3
006a7fbc  01 10 21 e2                                      eor r1, r1, #1
006a7fc0  59 11 c4 e5                                      strb r1, [r4, #0x159]
006a7fc4  07 10 a0 e3                                      mov r1, #7
006a7fc8  28 10 8d e5                                      str r1, [sp, #0x28]
006a7fcc  18 20 8d e5                                      str r2, [sp, #0x18]
006a7fd0  20 40 8d e5                                      str r4, [sp, #0x20]
006a7fd4  00 30 93 e5                                      ldr r3, [r3]
006a7fd8  18 10 8d e2                                      add r1, sp, #0x18
006a7fdc  0f e0 a0 e1                                      mov lr, pc
006a7fe0  08 f0 93 e5                                      ldr pc, [r3, #8]
006a7fe4  01 00 a0 e3                                      mov r0, #1
006a7fe8  d1 ff ff ea                                      b #0x6a7f34
006a7fec  14 30 91 e5                                      ldr r3, [r1, #0x14]
006a7ff0  00 00 53 e3                                      cmp r3, #0
006a7ff4  34 00 00 0a                                      beq #0x6a80cc
006a7ff8  03 00 53 e3                                      cmp r3, #3
006a7ffc  c3 ff ff 1a                                      bne #0x6a7f10
006a8000  50 31 90 e5                                      ldr r3, [r0, #0x150]
006a8004  58 61 d0 e5                                      ldrb r6, [r0, #0x158]
006a8008  00 10 a0 e1                                      mov r1, r0
006a800c  03 00 a0 e1                                      mov r0, r3
006a8010  00 30 93 e5                                      ldr r3, [r3]
006a8014  0f e0 a0 e1                                      mov lr, pc
006a8018  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006a801c  00 30 a0 e3                                      mov r3, #0
006a8020  00 00 56 e3                                      cmp r6, #0
006a8024  58 31 c4 e5                                      strb r3, [r4, #0x158]
006a8028  32 00 00 0a                                      beq #0x6a80f8
006a802c  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a8030  00 00 53 e3                                      cmp r3, #0
006a8034  2f 00 00 0a                                      beq #0x6a80f8
006a8038  08 20 95 e5                                      ldr r2, [r5, #8]
006a803c  48 10 94 e5                                      ldr r1, [r4, #0x48]
006a8040  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006a8044  01 00 52 e1                                      cmp r2, r1
006a8048  2a 00 00 ba                                      blt #0x6a80f8
006a804c  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
006a8050  01 00 50 e1                                      cmp r0, r1
006a8054  27 00 00 ba                                      blt #0x6a80f8
006a8058  50 10 94 e5                                      ldr r1, [r4, #0x50]
006a805c  01 00 52 e1                                      cmp r2, r1
006a8060  24 00 00 ca                                      bgt #0x6a80f8
006a8064  54 20 94 e5                                      ldr r2, [r4, #0x54]
006a8068  02 00 50 e1                                      cmp r0, r2
006a806c  21 00 00 ca                                      bgt #0x6a80f8
006a8070  59 11 d4 e5                                      ldrb r1, [r4, #0x159]
006a8074  00 20 a0 e3                                      mov r2, #0
006a8078  03 00 a0 e1                                      mov r0, r3
006a807c  01 10 21 e2                                      eor r1, r1, #1
006a8080  59 11 c4 e5                                      strb r1, [r4, #0x159]
006a8084  07 10 a0 e3                                      mov r1, #7
006a8088  10 10 8d e5                                      str r1, [sp, #0x10]
006a808c  0c 20 8d e5                                      str r2, [sp, #0xc]
006a8090  00 20 8d e5                                      str r2, [sp]
006a8094  08 40 8d e5                                      str r4, [sp, #8]
006a8098  00 30 93 e5                                      ldr r3, [r3]
006a809c  0d 10 a0 e1                                      mov r1, sp
006a80a0  0f e0 a0 e1                                      mov lr, pc
006a80a4  08 f0 93 e5                                      ldr pc, [r3, #8]
006a80a8  01 00 a0 e3                                      mov r0, #1
006a80ac  a0 ff ff ea                                      b #0x6a7f34
006a80b0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006a80b4  1b 00 53 e3                                      cmp r3, #0x1b
006a80b8  00 30 a0 03                                      moveq r3, #0
006a80bc  58 31 c4 05                                      strbeq r3, [r4, #0x158]
006a80c0  01 00 a0 03                                      moveq r0, #1
006a80c4  91 ff ff 1a                                      bne #0x6a7f10
006a80c8  99 ff ff ea                                      b #0x6a7f34
006a80cc  58 61 c0 e5                                      strb r6, [r0, #0x158]
006a80d0  83 8b fd eb                                      bl #0x60aee4
006a80d4  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a80d8  5c 01 84 e5                                      str r0, [r4, #0x15c]
006a80dc  04 10 a0 e1                                      mov r1, r4
006a80e0  03 00 a0 e1                                      mov r0, r3
006a80e4  00 30 93 e5                                      ldr r3, [r3]
006a80e8  0f e0 a0 e1                                      mov lr, pc
006a80ec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006a80f0  06 00 a0 e1                                      mov r0, r6
006a80f4  8e ff ff ea                                      b #0x6a7f34
006a80f8  01 00 a0 e3                                      mov r0, #1
006a80fc  8c ff ff ea                                      b #0x6a7f34

; FUNCTION 0x006a817c, declared_size=668, range_size=668, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZN6glitch3gui12CGUICheckBox4drawEv
; demangled: glitch::gui::CGUICheckBox::draw()
; decoder-mode: arm
006a817c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a8180  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
006a8184  3c d0 4d e2                                      sub sp, sp, #0x3c
006a8188  00 40 a0 e1                                      mov r4, r0
006a818c  00 00 53 e3                                      cmp r3, #0
006a8190  01 00 00 1a                                      bne #0x6a819c
006a8194  3c d0 8d e2                                      add sp, sp, #0x3c
006a8198  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006a819c  50 31 90 e5                                      ldr r3, [r0, #0x150]
006a81a0  03 00 a0 e1                                      mov r0, r3
006a81a4  00 30 93 e5                                      ldr r3, [r3]
006a81a8  0f e0 a0 e1                                      mov lr, pc
006a81ac  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a81b0  03 10 a0 e3                                      mov r1, #3
006a81b4  00 30 90 e5                                      ldr r3, [r0]
006a81b8  00 50 a0 e1                                      mov r5, r0
006a81bc  0f e0 a0 e1                                      mov lr, pc
006a81c0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006a81c4  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
006a81c8  44 30 94 e5                                      ldr r3, [r4, #0x44]
006a81cc  00 60 a0 e1                                      mov r6, r0
006a81d0  38 20 94 e5                                      ldr r2, [r4, #0x38]
006a81d4  03 30 61 e0                                      rsb r3, r1, r3
006a81d8  03 30 66 e0                                      rsb r3, r6, r3
006a81dc  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
006a81e0  02 c0 86 e0                                      add ip, r6, r2
006a81e4  c3 30 81 e0                                      add r3, r1, r3, asr #1
006a81e8  06 10 83 e0                                      add r1, r3, r6
006a81ec  58 01 d4 e5                                      ldrb r0, [r4, #0x158]
006a81f0  20 c0 8d e5                                      str ip, [sp, #0x20]
006a81f4  24 10 8d e5                                      str r1, [sp, #0x24]
006a81f8  18 20 8d e5                                      str r2, [sp, #0x18]
006a81fc  1c 30 8d e5                                      str r3, [sp, #0x1c]
006a8200  00 20 95 e5                                      ldr r2, [r5]
006a8204  00 00 50 e3                                      cmp r0, #0
006a8208  10 30 92 e5                                      ldr r3, [r2, #0x10]
006a820c  48 a0 92 e5                                      ldr sl, [r2, #0x48]
006a8210  2b 00 00 0a                                      beq #0x6a82c4
006a8214  02 10 a0 e3                                      mov r1, #2
006a8218  05 00 a0 e1                                      mov r0, r5
006a821c  33 ff 2f e1                                      blx r3
006a8220  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006a8224  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006a8228  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006a822c  11 10 cd e5                                      strb r1, [sp, #0x11]
006a8230  13 30 cd e5                                      strb r3, [sp, #0x13]
006a8234  10 00 cd e5                                      strb r0, [sp, #0x10]
006a8238  12 20 cd e5                                      strb r2, [sp, #0x12]
006a823c  10 20 9d e5                                      ldr r2, [sp, #0x10]
006a8240  01 30 a0 e3                                      mov r3, #1
006a8244  48 70 84 e2                                      add r7, r4, #0x48
006a8248  18 80 8d e2                                      add r8, sp, #0x18
006a824c  00 30 8d e5                                      str r3, [sp]
006a8250  34 20 8d e5                                      str r2, [sp, #0x34]
006a8254  00 30 a0 e3                                      mov r3, #0
006a8258  04 80 8d e5                                      str r8, [sp, #4]
006a825c  08 70 8d e5                                      str r7, [sp, #8]
006a8260  05 00 a0 e1                                      mov r0, r5
006a8264  04 10 a0 e1                                      mov r1, r4
006a8268  3a ff 2f e1                                      blx sl
006a826c  59 31 d4 e5                                      ldrb r3, [r4, #0x159]
006a8270  00 00 53 e3                                      cmp r3, #0
006a8274  40 00 00 1a                                      bne #0x6a837c
006a8278  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
006a827c  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
006a8280  02 30 63 e0                                      rsb r3, r3, r2
006a8284  23 31 b0 e1                                      lsrs r3, r3, #2
006a8288  12 00 00 1a                                      bne #0x6a82d8
006a828c  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
006a8290  00 00 53 e3                                      cmp r3, #0
006a8294  04 50 b4 15                                      ldrne r5, [r4, #4]!
006a8298  06 00 00 1a                                      bne #0x6a82b8
006a829c  bc ff ff ea                                      b #0x6a8194
006a82a0  08 30 95 e5                                      ldr r3, [r5, #8]
006a82a4  03 00 a0 e1                                      mov r0, r3
006a82a8  00 30 93 e5                                      ldr r3, [r3]
006a82ac  0f e0 a0 e1                                      mov lr, pc
006a82b0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006a82b4  00 50 95 e5                                      ldr r5, [r5]
006a82b8  04 00 55 e1                                      cmp r5, r4
006a82bc  f7 ff ff 1a                                      bne #0x6a82a0
006a82c0  b3 ff ff ea                                      b #0x6a8194
006a82c4  99 20 d4 e5                                      ldrb r2, [r4, #0x99]
006a82c8  00 00 52 e3                                      cmp r2, #0
006a82cc  06 10 a0 13                                      movne r1, #6
006a82d0  d0 ff ff 1a                                      bne #0x6a8218
006a82d4  ce ff ff ea                                      b #0x6a8214
006a82d8  38 00 84 e2                                      add r0, r4, #0x38
006a82dc  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
006a82e0  05 00 80 e2                                      add r0, r0, #5
006a82e4  06 60 80 e0                                      add r6, r0, r6
006a82e8  1c 10 8d e5                                      str r1, [sp, #0x1c]
006a82ec  18 60 8d e5                                      str r6, [sp, #0x18]
006a82f0  20 20 8d e5                                      str r2, [sp, #0x20]
006a82f4  24 30 8d e5                                      str r3, [sp, #0x24]
006a82f8  00 30 95 e5                                      ldr r3, [r5]
006a82fc  05 00 a0 e1                                      mov r0, r5
006a8300  00 10 a0 e3                                      mov r1, #0
006a8304  0f e0 a0 e1                                      mov lr, pc
006a8308  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006a830c  00 60 50 e2                                      subs r6, r0, #0
006a8310  dd ff ff 0a                                      beq #0x6a828c
006a8314  00 20 96 e5                                      ldr r2, [r6]
006a8318  00 30 95 e5                                      ldr r3, [r5]
006a831c  05 00 a0 e1                                      mov r0, r5
006a8320  08 10 a0 e3                                      mov r1, #8
006a8324  0c 50 92 e5                                      ldr r5, [r2, #0xc]
006a8328  e4 a0 94 e5                                      ldr sl, [r4, #0xe4]
006a832c  0f e0 a0 e1                                      mov lr, pc
006a8330  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006a8334  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006a8338  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006a833c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006a8340  11 10 cd e5                                      strb r1, [sp, #0x11]
006a8344  12 20 cd e5                                      strb r2, [sp, #0x12]
006a8348  10 00 cd e5                                      strb r0, [sp, #0x10]
006a834c  13 30 cd e5                                      strb r3, [sp, #0x13]
006a8350  10 30 9d e5                                      ldr r3, [sp, #0x10]
006a8354  00 20 a0 e3                                      mov r2, #0
006a8358  00 20 8d e5                                      str r2, [sp]
006a835c  01 20 a0 e3                                      mov r2, #1
006a8360  84 00 8d e9                                      stmib sp, {r2, r7}
006a8364  30 30 8d e5                                      str r3, [sp, #0x30]
006a8368  06 00 a0 e1                                      mov r0, r6
006a836c  0a 10 a0 e1                                      mov r1, sl
006a8370  08 20 a0 e1                                      mov r2, r8
006a8374  35 ff 2f e1                                      blx r5
006a8378  c3 ff ff ea                                      b #0x6a828c
006a837c  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a8380  03 00 a0 e1                                      mov r0, r3
006a8384  00 30 93 e5                                      ldr r3, [r3]
006a8388  0f e0 a0 e1                                      mov lr, pc
006a838c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a8390  00 00 50 e3                                      cmp r0, #0
006a8394  b7 ff ff 0a                                      beq #0x6a8278
006a8398  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a839c  03 00 a0 e1                                      mov r0, r3
006a83a0  00 30 93 e5                                      ldr r3, [r3]
006a83a4  0f e0 a0 e1                                      mov lr, pc
006a83a8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a83ac  24 20 9d e5                                      ldr r2, [sp, #0x24]
006a83b0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006a83b4  20 10 9d e5                                      ldr r1, [sp, #0x20]
006a83b8  00 90 a0 e1                                      mov sb, r0
006a83bc  03 30 82 e0                                      add r3, r2, r3
006a83c0  a3 2f 83 e0                                      add r2, r3, r3, lsr #31
006a83c4  18 30 9d e5                                      ldr r3, [sp, #0x18]
006a83c8  c2 20 a0 e1                                      asr r2, r2, #1
006a83cc  03 30 81 e0                                      add r3, r1, r3
006a83d0  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
006a83d4  00 10 90 e5                                      ldr r1, [r0]
006a83d8  c3 30 a0 e1                                      asr r3, r3, #1
006a83dc  60 a0 91 e5                                      ldr sl, [r1, #0x60]
006a83e0  28 30 8d e5                                      str r3, [sp, #0x28]
006a83e4  2c 20 8d e5                                      str r2, [sp, #0x2c]
006a83e8  5c b1 94 e5                                      ldr fp, [r4, #0x15c]
006a83ec  bc 8a fd eb                                      bl #0x60aee4
006a83f0  00 30 a0 e3                                      mov r3, #0
006a83f4  09 00 8d e9                                      stmib sp, {r0, r3}
006a83f8  00 b0 8d e5                                      str fp, [sp]
006a83fc  0c 70 8d e5                                      str r7, [sp, #0xc]
006a8400  09 00 a0 e1                                      mov r0, sb
006a8404  04 10 a0 e1                                      mov r1, r4
006a8408  0a 20 a0 e3                                      mov r2, #0xa
006a840c  28 30 8d e2                                      add r3, sp, #0x28
006a8410  3a ff 2f e1                                      blx sl
006a8414  97 ff ff ea                                      b #0x6a8278

; FUNCTION 0x006a8418, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZTv0_n20_N6glitch3gui12CGUICheckBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUICheckBox::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006a8418  00 30 90 e5                                      ldr r3, [r0]
006a841c  14 30 13 e5                                      ldr r3, [r3, #-0x14]
006a8420  03 00 80 e0                                      add r0, r0, r3
006a8424  9a fe ff ea                                      b #0x6a7e94

; FUNCTION 0x006a8428, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUICheckBox
; alias: _ZTv0_n16_NK6glitch3gui12CGUICheckBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUICheckBox::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006a8428  00 30 90 e5                                      ldr r3, [r0]
006a842c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006a8430  03 00 80 e0                                      add r0, r0, r3
006a8434  a0 fc ff ea                                      b #0x6a76bc
