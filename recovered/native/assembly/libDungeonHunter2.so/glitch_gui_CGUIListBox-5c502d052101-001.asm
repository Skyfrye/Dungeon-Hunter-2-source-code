; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00541bcc, declared_size=40, range_size=40, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZNK6glitch3gui11CGUIListBox12getItemCountEv
; demangled: glitch::gui::CGUIListBox::getItemCount() const
; decoder-mode: arm
00541bcc  58 31 90 e5                                      ldr r3, [r0, #0x158]
00541bd0  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
00541bd4  02 30 63 e0                                      rsb r3, r3, r2
00541bd8  c3 32 a0 e1                                      asr r3, r3, #5
00541bdc  03 01 83 e0                                      add r0, r3, r3, lsl #2
00541be0  00 02 80 e0                                      add r0, r0, r0, lsl #4
00541be4  00 04 80 e0                                      add r0, r0, r0, lsl #8
00541be8  00 08 80 e0                                      add r0, r0, r0, lsl #16
00541bec  80 00 83 e0                                      add r0, r3, r0, lsl #1
00541bf0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00541bf4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZNK6glitch3gui11CGUIListBox11getListItemEj
; demangled: glitch::gui::CGUIListBox::getListItem(unsigned int) const
; decoder-mode: arm
00541bf4  58 31 90 e5                                      ldr r3, [r0, #0x158]
00541bf8  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
00541bfc  02 20 63 e0                                      rsb r2, r3, r2
00541c00  c2 22 a0 e1                                      asr r2, r2, #5
00541c04  02 01 82 e0                                      add r0, r2, r2, lsl #2
00541c08  00 02 80 e0                                      add r0, r0, r0, lsl #4
00541c0c  00 04 80 e0                                      add r0, r0, r0, lsl #8
00541c10  00 08 80 e0                                      add r0, r0, r0, lsl #16
00541c14  80 20 82 e0                                      add r2, r2, r0, lsl #1
00541c18  02 00 51 e1                                      cmp r1, r2
00541c1c  60 20 a0 33                                      movlo r2, #0x60
00541c20  92 31 23 30                                      mlalo r3, r2, r1, r3
00541c24  00 00 a0 23                                      movhs r0, #0
00541c28  44 00 93 35                                      ldrlo r0, [r3, #0x44]
00541c2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00541c30, declared_size=60, range_size=60, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZNK6glitch3gui11CGUIListBox7getIconEj
; demangled: glitch::gui::CGUIListBox::getIcon(unsigned int) const
; decoder-mode: arm
00541c30  58 31 90 e5                                      ldr r3, [r0, #0x158]
00541c34  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
00541c38  02 20 63 e0                                      rsb r2, r3, r2
00541c3c  c2 22 a0 e1                                      asr r2, r2, #5
00541c40  02 01 82 e0                                      add r0, r2, r2, lsl #2
00541c44  00 02 80 e0                                      add r0, r0, r0, lsl #4
00541c48  00 04 80 e0                                      add r0, r0, r0, lsl #8
00541c4c  00 08 80 e0                                      add r0, r0, r0, lsl #16
00541c50  80 20 82 e0                                      add r2, r2, r0, lsl #1
00541c54  02 00 51 e1                                      cmp r1, r2
00541c58  60 20 a0 33                                      movlo r2, #0x60
00541c5c  92 31 23 30                                      mlalo r3, r2, r1, r3
00541c60  00 00 e0 23                                      mvnhs r0, #0
00541c64  48 00 93 35                                      ldrlo r0, [r3, #0x48]
00541c68  1e ff 2f e1                                      bx lr

; FUNCTION 0x00541c6c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox7addItemEPKw
; demangled: glitch::gui::CGUIListBox::addItem(wchar_t const*)
; decoder-mode: arm
00541c6c  10 40 2d e9                                      push {r4, lr}
00541c70  00 20 e0 e3                                      mvn r2, #0
00541c74  00 30 90 e5                                      ldr r3, [r0]
00541c78  0f e0 a0 e1                                      mov lr, pc
00541c7c  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00541c80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00541c84, declared_size=320, range_size=320, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox21recalculateItemHeightEv
; demangled: glitch::gui::CGUIListBox::recalculateItemHeight()
; decoder-mode: arm
00541c84  70 40 2d e9                                      push {r4, r5, r6, lr}
00541c88  50 31 90 e5                                      ldr r3, [r0, #0x150]
00541c8c  08 d0 4d e2                                      sub sp, sp, #8
00541c90  00 40 a0 e1                                      mov r4, r0
00541c94  03 00 a0 e1                                      mov r0, r3
00541c98  00 30 93 e5                                      ldr r3, [r3]
00541c9c  0f e0 a0 e1                                      mov lr, pc
00541ca0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00541ca4  00 10 a0 e3                                      mov r1, #0
00541ca8  00 30 90 e5                                      ldr r3, [r0]
00541cac  74 61 94 e5                                      ldr r6, [r4, #0x174]
00541cb0  00 50 a0 e1                                      mov r5, r0
00541cb4  0f e0 a0 e1                                      mov lr, pc
00541cb8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00541cbc  00 00 56 e1                                      cmp r6, r0
00541cc0  1b 00 00 0a                                      beq #0x541d34
00541cc4  74 01 94 e5                                      ldr r0, [r4, #0x174]
00541cc8  00 00 50 e3                                      cmp r0, #0
00541ccc  00 00 00 0a                                      beq #0x541cd4
00541cd0  2b 6e f7 eb                                      bl #0x31d584
00541cd4  00 30 95 e5                                      ldr r3, [r5]
00541cd8  05 00 a0 e1                                      mov r0, r5
00541cdc  00 10 a0 e3                                      mov r1, #0
00541ce0  0f e0 a0 e1                                      mov lr, pc
00541ce4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00541ce8  00 30 a0 e3                                      mov r3, #0
00541cec  00 00 50 e3                                      cmp r0, #0
00541cf0  68 31 84 e5                                      str r3, [r4, #0x168]
00541cf4  74 01 84 e5                                      str r0, [r4, #0x174]
00541cf8  18 00 00 0a                                      beq #0x541d60
00541cfc  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
00541d00  00 30 90 e5                                      ldr r3, [r0]
00541d04  00 10 a0 e1                                      mov r1, r0
00541d08  02 20 8f e0                                      add r2, pc, r2
00541d0c  0d 00 a0 e1                                      mov r0, sp
00541d10  0f e0 a0 e1                                      mov lr, pc
00541d14  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00541d18  04 20 9d e5                                      ldr r2, [sp, #4]
00541d1c  74 31 94 e5                                      ldr r3, [r4, #0x174]
00541d20  04 20 82 e2                                      add r2, r2, #4
00541d24  68 21 84 e5                                      str r2, [r4, #0x168]
00541d28  04 20 93 e5                                      ldr r2, [r3, #4]
00541d2c  01 20 82 e2                                      add r2, r2, #1
00541d30  04 20 83 e5                                      str r2, [r3, #4]
00541d34  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
00541d38  58 31 94 e5                                      ldr r3, [r4, #0x158]
00541d3c  68 01 94 e5                                      ldr r0, [r4, #0x168]
00541d40  02 30 63 e0                                      rsb r3, r3, r2
00541d44  c3 32 a0 e1                                      asr r3, r3, #5
00541d48  03 21 83 e0                                      add r2, r3, r3, lsl #2
00541d4c  02 22 82 e0                                      add r2, r2, r2, lsl #4
00541d50  02 24 82 e0                                      add r2, r2, r2, lsl #8
00541d54  02 28 82 e0                                      add r2, r2, r2, lsl #16
00541d58  82 30 83 e0                                      add r3, r3, r2, lsl #1
00541d5c  90 03 00 e0                                      mul r0, r0, r3
00541d60  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00541d64  44 10 94 e5                                      ldr r1, [r4, #0x44]
00541d68  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00541d6c  6c 01 84 e5                                      str r0, [r4, #0x16c]
00541d70  01 10 62 e0                                      rsb r1, r2, r1
00541d74  00 10 61 e0                                      rsb r1, r1, r0
00541d78  03 00 a0 e1                                      mov r0, r3
00541d7c  00 30 93 e5                                      ldr r3, [r3]
00541d80  0f e0 a0 e1                                      mov lr, pc
00541d84  80 f0 93 e5                                      ldr pc, [r3, #0x80]
00541d88  44 10 94 e5                                      ldr r1, [r4, #0x44]
00541d8c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00541d90  6c 21 94 e5                                      ldr r2, [r4, #0x16c]
00541d94  01 30 63 e0                                      rsb r3, r3, r1
00541d98  03 00 52 e1                                      cmp r2, r3
00541d9c  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00541da0  00 10 a0 d3                                      movle r1, #0
00541da4  01 10 a0 c3                                      movgt r1, #1
00541da8  03 00 a0 e1                                      mov r0, r3
00541dac  00 30 93 e5                                      ldr r3, [r3]
00541db0  0f e0 a0 e1                                      mov lr, pc
00541db4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00541db8  08 d0 8d e2                                      add sp, sp, #8
00541dbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00541dc0  58 c7 39 00                                      .byte 0x58, 0xc7, 0x39, 0x00

; FUNCTION 0x00541dc4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZNK6glitch3gui11CGUIListBox11getSelectedEv
; demangled: glitch::gui::CGUIListBox::getSelected() const
; decoder-mode: arm
00541dc4  64 01 90 e5                                      ldr r0, [r0, #0x164]
00541dc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00541dcc, declared_size=24, range_size=24, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox22updateAbsolutePositionEv
; demangled: glitch::gui::CGUIListBox::updateAbsolutePosition()
; decoder-mode: arm
00541dcc  10 40 2d e9                                      push {r4, lr}
00541dd0  00 40 a0 e1                                      mov r4, r0
00541dd4  d1 ca ff eb                                      bl #0x534920
00541dd8  04 00 a0 e1                                      mov r0, r4
00541ddc  10 40 bd e8                                      pop {r4, lr}
00541de0  a7 ff ff ea                                      b #0x541c84

; FUNCTION 0x00541de4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox13setSpriteBankEPNS0_14IGUISpriteBankE
; demangled: glitch::gui::CGUIListBox::setSpriteBank(glitch::gui::IGUISpriteBank*)
; decoder-mode: arm
00541de4  70 40 2d e9                                      push {r4, r5, r6, lr}
00541de8  00 40 a0 e1                                      mov r4, r0
00541dec  78 01 90 e5                                      ldr r0, [r0, #0x178]
00541df0  01 50 a0 e1                                      mov r5, r1
00541df4  00 00 50 e3                                      cmp r0, #0
00541df8  00 00 00 0a                                      beq #0x541e00
00541dfc  e0 6d f7 eb                                      bl #0x31d584
00541e00  00 00 55 e3                                      cmp r5, #0
00541e04  78 51 84 e5                                      str r5, [r4, #0x178]
00541e08  04 30 95 15                                      ldrne r3, [r5, #4]
00541e0c  01 30 83 12                                      addne r3, r3, #1
00541e10  04 30 85 15                                      strne r3, [r5, #4]
00541e14  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00541e18, declared_size=204, range_size=204, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox20recalculateScrollPosEv
; demangled: glitch::gui::CGUIListBox::recalculateScrollPos()
; decoder-mode: arm
00541e18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00541e1c  88 31 d0 e5                                      ldrb r3, [r0, #0x188]
00541e20  00 60 a0 e1                                      mov r6, r0
00541e24  00 00 53 e3                                      cmp r3, #0
00541e28  12 00 00 0a                                      beq #0x541e78
00541e2c  64 31 90 e5                                      ldr r3, [r0, #0x164]
00541e30  01 00 73 e3                                      cmn r3, #1
00541e34  68 41 90 15                                      ldrne r4, [r0, #0x168]
00541e38  6c 41 90 05                                      ldreq r4, [r0, #0x16c]
00541e3c  94 03 04 10                                      mulne r4, r4, r3
00541e40  7c 31 90 e5                                      ldr r3, [r0, #0x17c]
00541e44  03 00 a0 e1                                      mov r0, r3
00541e48  00 30 93 e5                                      ldr r3, [r3]
00541e4c  0f e0 a0 e1                                      mov lr, pc
00541e50  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00541e54  00 70 54 e0                                      subs r7, r4, r0
00541e58  17 00 00 4a                                      bmi #0x541ebc
00541e5c  44 10 96 e5                                      ldr r1, [r6, #0x44]
00541e60  3c 30 96 e5                                      ldr r3, [r6, #0x3c]
00541e64  68 21 96 e5                                      ldr r2, [r6, #0x168]
00541e68  01 30 63 e0                                      rsb r3, r3, r1
00541e6c  03 30 62 e0                                      rsb r3, r2, r3
00541e70  03 00 57 e1                                      cmp r7, r3
00541e74  00 00 00 ca                                      bgt #0x541e7c
00541e78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00541e7c  7c 41 96 e5                                      ldr r4, [r6, #0x17c]
00541e80  00 30 94 e5                                      ldr r3, [r4]
00541e84  04 00 a0 e1                                      mov r0, r4
00541e88  98 50 93 e5                                      ldr r5, [r3, #0x98]
00541e8c  0f e0 a0 e1                                      mov lr, pc
00541e90  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00541e94  44 10 96 e5                                      ldr r1, [r6, #0x44]
00541e98  3c 30 96 e5                                      ldr r3, [r6, #0x3c]
00541e9c  68 21 96 e5                                      ldr r2, [r6, #0x168]
00541ea0  01 30 63 e0                                      rsb r3, r3, r1
00541ea4  02 30 63 e0                                      rsb r3, r3, r2
00541ea8  07 70 83 e0                                      add r7, r3, r7
00541eac  00 10 87 e0                                      add r1, r7, r0
00541eb0  04 00 a0 e1                                      mov r0, r4
00541eb4  35 ff 2f e1                                      blx r5
00541eb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00541ebc  7c 41 96 e5                                      ldr r4, [r6, #0x17c]
00541ec0  00 30 94 e5                                      ldr r3, [r4]
00541ec4  04 00 a0 e1                                      mov r0, r4
00541ec8  98 50 93 e5                                      ldr r5, [r3, #0x98]
00541ecc  0f e0 a0 e1                                      mov lr, pc
00541ed0  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00541ed4  07 10 80 e0                                      add r1, r0, r7
00541ed8  04 00 a0 e1                                      mov r0, r4
00541edc  35 ff 2f e1                                      blx r5
00541ee0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00541ee4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox20setAutoScrollEnabledEb
; demangled: glitch::gui::CGUIListBox::setAutoScrollEnabled(bool)
; decoder-mode: arm
00541ee4  88 11 c0 e5                                      strb r1, [r0, #0x188]
00541ee8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00541eec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZNK6glitch3gui11CGUIListBox19isAutoScrollEnabledEv
; demangled: glitch::gui::CGUIListBox::isAutoScrollEnabled() const
; decoder-mode: arm
00541eec  88 01 d0 e5                                      ldrb r0, [r0, #0x188]
00541ef0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00541ef4, declared_size=256, range_size=256, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox20recalculateItemWidthEi
; demangled: glitch::gui::CGUIListBox::recalculateItemWidth(int)
; decoder-mode: arm
00541ef4  70 40 2d e9                                      push {r4, r5, r6, lr}
00541ef8  78 31 90 e5                                      ldr r3, [r0, #0x178]
00541efc  01 20 e0 e1                                      mvn r2, r1
00541f00  a2 2f a0 e1                                      lsr r2, r2, #0x1f
00541f04  00 40 a0 e1                                      mov r4, r0
00541f08  00 00 53 e3                                      cmp r3, #0
00541f0c  00 20 a0 03                                      moveq r2, #0
00541f10  00 00 52 e3                                      cmp r2, #0
00541f14  01 50 a0 e1                                      mov r5, r1
00541f18  00 00 00 1a                                      bne #0x541f20
00541f1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00541f20  03 00 a0 e1                                      mov r0, r3
00541f24  00 30 93 e5                                      ldr r3, [r3]
00541f28  0f e0 a0 e1                                      mov lr, pc
00541f2c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00541f30  00 30 90 e5                                      ldr r3, [r0]
00541f34  04 20 90 e5                                      ldr r2, [r0, #4]
00541f38  02 30 63 e0                                      rsb r3, r3, r2
00541f3c  43 02 55 e1                                      cmp r5, r3, asr #4
00541f40  f5 ff ff 2a                                      bhs #0x541f1c
00541f44  78 31 94 e5                                      ldr r3, [r4, #0x178]
00541f48  03 00 a0 e1                                      mov r0, r3
00541f4c  00 30 93 e5                                      ldr r3, [r3]
00541f50  0f e0 a0 e1                                      mov lr, pc
00541f54  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00541f58  00 30 90 e5                                      ldr r3, [r0]
00541f5c  05 22 83 e0                                      add r2, r3, r5, lsl #4
00541f60  04 20 92 e5                                      ldr r2, [r2, #4]
00541f64  05 32 93 e7                                      ldr r3, [r3, r5, lsl #4]
00541f68  02 30 63 e0                                      rsb r3, r3, r2
00541f6c  a3 31 b0 e1                                      lsrs r3, r3, #3
00541f70  e9 ff ff 0a                                      beq #0x541f1c
00541f74  78 31 94 e5                                      ldr r3, [r4, #0x178]
00541f78  03 00 a0 e1                                      mov r0, r3
00541f7c  00 30 93 e5                                      ldr r3, [r3]
00541f80  0f e0 a0 e1                                      mov lr, pc
00541f84  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00541f88  00 20 90 e5                                      ldr r2, [r0]
00541f8c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00541f90  05 22 92 e7                                      ldr r2, [r2, r5, lsl #4]
00541f94  03 00 a0 e1                                      mov r0, r3
00541f98  00 30 93 e5                                      ldr r3, [r3]
00541f9c  04 50 92 e5                                      ldr r5, [r2, #4]
00541fa0  0f e0 a0 e1                                      mov lr, pc
00541fa4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00541fa8  00 30 90 e5                                      ldr r3, [r0]
00541fac  04 20 90 e5                                      ldr r2, [r0, #4]
00541fb0  02 30 63 e0                                      rsb r3, r3, r2
00541fb4  43 02 55 e1                                      cmp r5, r3, asr #4
00541fb8  d7 ff ff 2a                                      bhs #0x541f1c
00541fbc  78 31 94 e5                                      ldr r3, [r4, #0x178]
00541fc0  03 00 a0 e1                                      mov r0, r3
00541fc4  00 30 93 e5                                      ldr r3, [r3]
00541fc8  0f e0 a0 e1                                      mov lr, pc
00541fcc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00541fd0  00 30 90 e5                                      ldr r3, [r0]
00541fd4  70 21 94 e5                                      ldr r2, [r4, #0x170]
00541fd8  05 12 83 e0                                      add r1, r3, r5, lsl #4
00541fdc  08 10 91 e5                                      ldr r1, [r1, #8]
00541fe0  05 32 93 e7                                      ldr r3, [r3, r5, lsl #4]
00541fe4  01 30 63 e0                                      rsb r3, r3, r1
00541fe8  03 00 52 e1                                      cmp r2, r3
00541fec  70 31 84 b5                                      strlt r3, [r4, #0x170]
00541ff0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00541ff4, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox20setItemOverrideColorEjRKNS_5video6SColorE
; demangled: glitch::gui::CGUIListBox::setItemOverrideColor(unsigned int, glitch::video::SColor const&)
; decoder-mode: arm
00541ff4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00541ff8  60 60 a0 e3                                      mov r6, #0x60
00541ffc  96 01 06 e0                                      mul r6, r6, r1
00542000  00 50 a0 e1                                      mov r5, r0
00542004  02 80 a0 e1                                      mov r8, r2
00542008  00 40 a0 e3                                      mov r4, #0
0054200c  01 70 a0 e3                                      mov r7, #1
00542010  58 21 95 e5                                      ldr r2, [r5, #0x158]
00542014  04 31 84 e0                                      add r3, r4, r4, lsl #2
00542018  08 10 a0 e1                                      mov r1, r8
0054201c  03 20 82 e0                                      add r2, r2, r3
00542020  06 20 82 e0                                      add r2, r2, r6
00542024  4c 70 c2 e5                                      strb r7, [r2, #0x4c]
00542028  58 01 95 e5                                      ldr r0, [r5, #0x158]
0054202c  01 40 84 e2                                      add r4, r4, #1
00542030  04 20 a0 e3                                      mov r2, #4
00542034  03 30 80 e0                                      add r3, r0, r3
00542038  06 00 83 e0                                      add r0, r3, r6
0054203c  4d 00 80 e2                                      add r0, r0, #0x4d
00542040  08 32 f7 eb                                      bl #0x30e868
00542044  04 00 54 e3                                      cmp r4, #4
00542048  f0 ff ff 1a                                      bne #0x542010
0054204c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00542050, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox20setItemOverrideColorEjNS0_18EGUI_LISTBOX_COLORERKNS_5video6SColorE
; demangled: glitch::gui::CGUIListBox::setItemOverrideColor(unsigned int, glitch::gui::EGUI_LISTBOX_COLOR, glitch::video::SColor const&)
; decoder-mode: arm
00542050  70 40 2d e9                                      push {r4, r5, r6, lr}
00542054  58 c1 90 e5                                      ldr ip, [r0, #0x158]
00542058  5c 41 90 e5                                      ldr r4, [r0, #0x15c]
0054205c  04 40 6c e0                                      rsb r4, ip, r4
00542060  c4 42 a0 e1                                      asr r4, r4, #5
00542064  04 51 84 e0                                      add r5, r4, r4, lsl #2
00542068  05 52 85 e0                                      add r5, r5, r5, lsl #4
0054206c  05 54 85 e0                                      add r5, r5, r5, lsl #8
00542070  05 58 85 e0                                      add r5, r5, r5, lsl #16
00542074  85 40 84 e0                                      add r4, r4, r5, lsl #1
00542078  04 00 51 e1                                      cmp r1, r4
0054207c  04 00 00 2a                                      bhs #0x542094
00542080  03 00 52 e3                                      cmp r2, #3
00542084  00 40 a0 d3                                      movle r4, #0
00542088  01 40 a0 c3                                      movgt r4, #1
0054208c  a2 4f 94 e1                                      orrs r4, r4, r2, lsr #31
00542090  00 00 00 0a                                      beq #0x542098
00542094  70 80 bd e8                                      pop {r4, r5, r6, pc}
00542098  60 e0 a0 e3                                      mov lr, #0x60
0054209c  9e 01 0e e0                                      mul lr, lr, r1
005420a0  02 41 82 e0                                      add r4, r2, r2, lsl #2
005420a4  04 c0 8c e0                                      add ip, ip, r4
005420a8  0e c0 8c e0                                      add ip, ip, lr
005420ac  01 20 a0 e3                                      mov r2, #1
005420b0  4c 20 cc e5                                      strb r2, [ip, #0x4c]
005420b4  58 01 90 e5                                      ldr r0, [r0, #0x158]
005420b8  03 10 a0 e1                                      mov r1, r3
005420bc  04 20 a0 e3                                      mov r2, #4
005420c0  04 40 80 e0                                      add r4, r0, r4
005420c4  0e e0 84 e0                                      add lr, r4, lr
005420c8  4d 00 8e e2                                      add r0, lr, #0x4d
005420cc  e5 31 f7 eb                                      bl #0x30e868
005420d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005420d4, declared_size=64, range_size=64, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox22clearItemOverrideColorEj
; demangled: glitch::gui::CGUIListBox::clearItemOverrideColor(unsigned int)
; decoder-mode: arm
005420d4  60 30 a0 e3                                      mov r3, #0x60
005420d8  93 01 03 e0                                      mul r3, r3, r1
005420dc  00 20 a0 e3                                      mov r2, #0
005420e0  04 40 2d e5                                      str r4, [sp, #-4]!
005420e4  02 40 a0 e1                                      mov r4, r2
005420e8  58 c1 90 e5                                      ldr ip, [r0, #0x158]
005420ec  02 11 82 e0                                      add r1, r2, r2, lsl #2
005420f0  01 20 82 e2                                      add r2, r2, #1
005420f4  01 10 8c e0                                      add r1, ip, r1
005420f8  03 10 81 e0                                      add r1, r1, r3
005420fc  48 10 81 e2                                      add r1, r1, #0x48
00542100  04 00 52 e3                                      cmp r2, #4
00542104  04 40 c1 e5                                      strb r4, [r1, #4]
00542108  f6 ff ff 1a                                      bne #0x5420e8
0054210c  10 00 bd e8                                      ldm sp!, {r4}
00542110  1e ff 2f e1                                      bx lr

; FUNCTION 0x00542114, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox22clearItemOverrideColorEjNS0_18EGUI_LISTBOX_COLORE
; demangled: glitch::gui::CGUIListBox::clearItemOverrideColor(unsigned int, glitch::gui::EGUI_LISTBOX_COLOR)
; decoder-mode: arm
00542114  5c c1 90 e5                                      ldr ip, [r0, #0x15c]
00542118  58 31 90 e5                                      ldr r3, [r0, #0x158]
0054211c  0c c0 63 e0                                      rsb ip, r3, ip
00542120  cc c2 a0 e1                                      asr ip, ip, #5
00542124  0c 01 8c e0                                      add r0, ip, ip, lsl #2
00542128  00 02 80 e0                                      add r0, r0, r0, lsl #4
0054212c  00 04 80 e0                                      add r0, r0, r0, lsl #8
00542130  00 08 80 e0                                      add r0, r0, r0, lsl #16
00542134  80 c0 8c e0                                      add ip, ip, r0, lsl #1
00542138  0c 00 51 e1                                      cmp r1, ip
0054213c  1e ff 2f 21                                      bxhs lr
00542140  a2 0f a0 e1                                      lsr r0, r2, #0x1f
00542144  03 00 52 e3                                      cmp r2, #3
00542148  01 00 80 c3                                      orrgt r0, r0, #1
0054214c  00 00 50 e3                                      cmp r0, #0
00542150  60 c0 a0 03                                      moveq ip, #0x60
00542154  9c 31 23 00                                      mlaeq r3, ip, r1, r3
00542158  02 21 82 00                                      addeq r2, r2, r2, lsl #2
0054215c  02 30 83 00                                      addeq r3, r3, r2
00542160  4c 00 c3 05                                      strbeq r0, [r3, #0x4c]
00542164  1e ff 2f e1                                      bx lr

; FUNCTION 0x00542168, declared_size=96, range_size=96, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZNK6glitch3gui11CGUIListBox20hasItemOverrideColorEjNS0_18EGUI_LISTBOX_COLORE
; demangled: glitch::gui::CGUIListBox::hasItemOverrideColor(unsigned int, glitch::gui::EGUI_LISTBOX_COLOR) const
; decoder-mode: arm
00542168  5c c1 90 e5                                      ldr ip, [r0, #0x15c]
0054216c  58 31 90 e5                                      ldr r3, [r0, #0x158]
00542170  0c c0 63 e0                                      rsb ip, r3, ip
00542174  cc c2 a0 e1                                      asr ip, ip, #5
00542178  0c 01 8c e0                                      add r0, ip, ip, lsl #2
0054217c  00 02 80 e0                                      add r0, r0, r0, lsl #4
00542180  00 04 80 e0                                      add r0, r0, r0, lsl #8
00542184  00 08 80 e0                                      add r0, r0, r0, lsl #16
00542188  80 c0 8c e0                                      add ip, ip, r0, lsl #1
0054218c  0c 00 51 e1                                      cmp r1, ip
00542190  04 00 00 2a                                      bhs #0x5421a8
00542194  03 00 52 e3                                      cmp r2, #3
00542198  00 00 a0 d3                                      movle r0, #0
0054219c  01 00 a0 c3                                      movgt r0, #1
005421a0  a2 0f 90 e1                                      orrs r0, r0, r2, lsr #31
005421a4  01 00 00 0a                                      beq #0x5421b0
005421a8  00 00 a0 e3                                      mov r0, #0
005421ac  1e ff 2f e1                                      bx lr
005421b0  60 00 a0 e3                                      mov r0, #0x60
005421b4  90 31 23 e0                                      mla r3, r0, r1, r3
005421b8  02 21 82 e0                                      add r2, r2, r2, lsl #2
005421bc  02 30 83 e0                                      add r3, r3, r2
005421c0  4c 00 d3 e5                                      ldrb r0, [r3, #0x4c]
005421c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005421c8, declared_size=144, range_size=144, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZNK6glitch3gui11CGUIListBox20getItemOverrideColorEjNS0_18EGUI_LISTBOX_COLORE
; demangled: glitch::gui::CGUIListBox::getItemOverrideColor(unsigned int, glitch::gui::EGUI_LISTBOX_COLOR) const
; decoder-mode: arm
005421c8  f0 00 2d e9                                      push {r4, r5, r6, r7}
005421cc  5c 61 90 e5                                      ldr r6, [r0, #0x15c]
005421d0  58 01 90 e5                                      ldr r0, [r0, #0x158]
005421d4  08 d0 4d e2                                      sub sp, sp, #8
005421d8  06 60 60 e0                                      rsb r6, r0, r6
005421dc  c6 62 a0 e1                                      asr r6, r6, #5
005421e0  06 71 86 e0                                      add r7, r6, r6, lsl #2
005421e4  07 72 87 e0                                      add r7, r7, r7, lsl #4
005421e8  07 74 87 e0                                      add r7, r7, r7, lsl #8
005421ec  07 78 87 e0                                      add r7, r7, r7, lsl #16
005421f0  87 60 86 e0                                      add r6, r6, r7, lsl #1
005421f4  06 00 51 e1                                      cmp r1, r6
005421f8  04 00 00 2a                                      bhs #0x542210
005421fc  03 00 52 e3                                      cmp r2, #3
00542200  00 60 a0 d3                                      movle r6, #0
00542204  01 60 a0 c3                                      movgt r6, #1
00542208  a2 6f 96 e1                                      orrs r6, r6, r2, lsr #31
0054220c  07 00 00 0a                                      beq #0x542230
00542210  00 00 a0 e3                                      mov r0, #0
00542214  15 00 c7 e7                                      bfi r0, r5, #0, #8
00542218  13 04 cf e7                                      bfi r0, r3, #8, #8
0054221c  1c 08 d7 e7                                      bfi r0, ip, #0x10, #8
00542220  14 0c df e7                                      bfi r0, r4, #0x18, #8
00542224  08 d0 8d e2                                      add sp, sp, #8
00542228  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0054222c  1e ff 2f e1                                      bx lr
00542230  60 30 a0 e3                                      mov r3, #0x60
00542234  93 01 20 e0                                      mla r0, r3, r1, r0
00542238  02 21 82 e0                                      add r2, r2, r2, lsl #2
0054223c  02 20 80 e0                                      add r2, r0, r2
00542240  48 20 82 e2                                      add r2, r2, #0x48
00542244  05 50 d2 e5                                      ldrb r5, [r2, #5]
00542248  08 40 d2 e5                                      ldrb r4, [r2, #8]
0054224c  07 c0 d2 e5                                      ldrb ip, [r2, #7]
00542250  06 30 d2 e5                                      ldrb r3, [r2, #6]
00542254  ed ff ff ea                                      b #0x542210

; FUNCTION 0x00542258, declared_size=240, range_size=240, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZNK6glitch3gui11CGUIListBox19getItemDefaultColorENS0_18EGUI_LISTBOX_COLORE
; demangled: glitch::gui::CGUIListBox::getItemDefaultColor(glitch::gui::EGUI_LISTBOX_COLOR) const
; decoder-mode: arm
00542258  10 40 2d e9                                      push {r4, lr}
0054225c  50 31 90 e5                                      ldr r3, [r0, #0x150]
00542260  10 d0 4d e2                                      sub sp, sp, #0x10
00542264  01 40 a0 e1                                      mov r4, r1
00542268  03 00 a0 e1                                      mov r0, r3
0054226c  00 30 93 e5                                      ldr r3, [r3]
00542270  0f e0 a0 e1                                      mov lr, pc
00542274  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00542278  00 30 50 e2                                      subs r3, r0, #0
0054227c  06 00 00 0a                                      beq #0x54229c
00542280  03 00 54 e3                                      cmp r4, #3
00542284  04 f1 8f 90                                      addls pc, pc, r4, lsl #2
00542288  03 00 00 ea                                      b #0x54229c
0054228c  21 00 00 ea                                      b #0x542318
00542290  24 00 00 ea                                      b #0x542328
00542294  27 00 00 ea                                      b #0x542338
00542298  0f 00 00 ea                                      b #0x5422dc
0054229c  00 30 a0 e3                                      mov r3, #0
005422a0  0f 30 cd e5                                      strb r3, [sp, #0xf]
005422a4  0e 30 cd e5                                      strb r3, [sp, #0xe]
005422a8  0d 30 cd e5                                      strb r3, [sp, #0xd]
005422ac  0c 30 cd e5                                      strb r3, [sp, #0xc]
005422b0  0c 30 dd e5                                      ldrb r3, [sp, #0xc]
005422b4  0d 10 dd e5                                      ldrb r1, [sp, #0xd]
005422b8  0e 20 dd e5                                      ldrb r2, [sp, #0xe]
005422bc  00 00 a0 e3                                      mov r0, #0
005422c0  13 00 c7 e7                                      bfi r0, r3, #0, #8
005422c4  0f 30 dd e5                                      ldrb r3, [sp, #0xf]
005422c8  11 04 cf e7                                      bfi r0, r1, #8, #8
005422cc  12 08 d7 e7                                      bfi r0, r2, #0x10, #8
005422d0  13 0c df e7                                      bfi r0, r3, #0x18, #8
005422d4  10 d0 8d e2                                      add sp, sp, #0x10
005422d8  10 80 bd e8                                      pop {r4, pc}
005422dc  03 00 a0 e1                                      mov r0, r3
005422e0  00 30 93 e5                                      ldr r3, [r3]
005422e4  14 10 a0 e3                                      mov r1, #0x14
005422e8  0f e0 a0 e1                                      mov lr, pc
005422ec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005422f0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005422f4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005422f8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005422fc  01 10 cd e5                                      strb r1, [sp, #1]
00542300  02 20 cd e5                                      strb r2, [sp, #2]
00542304  03 30 cd e5                                      strb r3, [sp, #3]
00542308  00 00 cd e5                                      strb r0, [sp]
0054230c  00 30 9d e5                                      ldr r3, [sp]
00542310  0c 30 8d e5                                      str r3, [sp, #0xc]
00542314  e5 ff ff ea                                      b #0x5422b0
00542318  03 00 a0 e1                                      mov r0, r3
0054231c  08 10 a0 e3                                      mov r1, #8
00542320  00 30 93 e5                                      ldr r3, [r3]
00542324  ef ff ff ea                                      b #0x5422e8
00542328  03 00 a0 e1                                      mov r0, r3
0054232c  0b 10 a0 e3                                      mov r1, #0xb
00542330  00 30 93 e5                                      ldr r3, [r3]
00542334  eb ff ff ea                                      b #0x5422e8
00542338  03 00 a0 e1                                      mov r0, r3
0054233c  13 10 a0 e3                                      mov r1, #0x13
00542340  00 30 93 e5                                      ldr r3, [r3]
00542344  e7 ff ff ea                                      b #0x5422e8

; FUNCTION 0x00542400, declared_size=280, range_size=280, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox9selectNewEib
; demangled: glitch::gui::CGUIListBox::selectNew(int, bool)
; decoder-mode: arm
00542400  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00542404  18 d0 4d e2                                      sub sp, sp, #0x18
00542408  00 40 a0 e1                                      mov r4, r0
0054240c  01 80 a0 e1                                      mov r8, r1
00542410  02 50 a0 e1                                      mov r5, r2
00542414  b2 22 03 eb                                      bl #0x60aee4
00542418  68 31 94 e5                                      ldr r3, [r4, #0x168]
0054241c  64 61 94 e5                                      ldr r6, [r4, #0x164]
00542420  00 70 a0 e1                                      mov r7, r0
00542424  00 00 53 e3                                      cmp r3, #0
00542428  06 00 a0 01                                      moveq r0, r6
0054242c  26 00 00 1a                                      bne #0x5424cc
00542430  00 00 50 e3                                      cmp r0, #0
00542434  00 30 a0 b3                                      movlt r3, #0
00542438  64 31 84 b5                                      strlt r3, [r4, #0x164]
0054243c  0b 00 00 ba                                      blt #0x542470
00542440  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
00542444  58 31 94 e5                                      ldr r3, [r4, #0x158]
00542448  02 30 63 e0                                      rsb r3, r3, r2
0054244c  c3 32 a0 e1                                      asr r3, r3, #5
00542450  03 21 83 e0                                      add r2, r3, r3, lsl #2
00542454  02 22 82 e0                                      add r2, r2, r2, lsl #4
00542458  02 24 82 e0                                      add r2, r2, r2, lsl #8
0054245c  02 28 82 e0                                      add r2, r2, r2, lsl #16
00542460  82 30 83 e0                                      add r3, r3, r2, lsl #1
00542464  03 00 50 e1                                      cmp r0, r3
00542468  01 30 43 22                                      subhs r3, r3, #1
0054246c  64 31 84 25                                      strhs r3, [r4, #0x164]
00542470  04 00 a0 e1                                      mov r0, r4
00542474  67 fe ff eb                                      bl #0x541e18
00542478  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054247c  00 00 53 e3                                      cmp r3, #0
00542480  0e 00 00 0a                                      beq #0x5424c0
00542484  00 00 55 e3                                      cmp r5, #0
00542488  0c 00 00 1a                                      bne #0x5424c0
0054248c  64 21 94 e5                                      ldr r2, [r4, #0x164]
00542490  0c 50 8d e5                                      str r5, [sp, #0xc]
00542494  00 50 8d e5                                      str r5, [sp]
00542498  06 00 52 e1                                      cmp r2, r6
0054249c  08 40 8d e5                                      str r4, [sp, #8]
005424a0  16 00 00 0a                                      beq #0x542500
005424a4  08 20 a0 e3                                      mov r2, #8
005424a8  10 20 8d e5                                      str r2, [sp, #0x10]
005424ac  03 00 a0 e1                                      mov r0, r3
005424b0  0d 10 a0 e1                                      mov r1, sp
005424b4  00 30 93 e5                                      ldr r3, [r3]
005424b8  0f e0 a0 e1                                      mov lr, pc
005424bc  08 f0 93 e5                                      ldr pc, [r3, #8]
005424c0  84 71 84 e5                                      str r7, [r4, #0x184]
005424c4  18 d0 8d e2                                      add sp, sp, #0x18
005424c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005424cc  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
005424d0  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
005424d4  03 00 a0 e1                                      mov r0, r3
005424d8  02 20 e0 e1                                      mvn r2, r2
005424dc  00 30 93 e5                                      ldr r3, [r3]
005424e0  08 80 82 e0                                      add r8, r2, r8
005424e4  0f e0 a0 e1                                      mov lr, pc
005424e8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
005424ec  68 11 94 e5                                      ldr r1, [r4, #0x168]
005424f0  00 00 88 e0                                      add r0, r8, r0
005424f4  6a 2f f7 eb                                      bl #0x30e2a4
005424f8  64 01 84 e5                                      str r0, [r4, #0x164]
005424fc  cb ff ff ea                                      b #0x542430
00542500  84 21 94 e5                                      ldr r2, [r4, #0x184]
00542504  7d 2f 82 e2                                      add r2, r2, #0x1f4
00542508  02 00 57 e1                                      cmp r7, r2
0054250c  09 20 a0 33                                      movlo r2, #9
00542510  e4 ff ff 3a                                      blo #0x5424a8
00542514  e2 ff ff ea                                      b #0x5424a4

; FUNCTION 0x00542518, declared_size=80, range_size=80, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox11setSelectedEi
; demangled: glitch::gui::CGUIListBox::setSelected(int)
; decoder-mode: arm
00542518  10 40 2d e9                                      push {r4, lr}
0054251c  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
00542520  58 31 90 e5                                      ldr r3, [r0, #0x158]
00542524  00 40 a0 e1                                      mov r4, r0
00542528  02 30 63 e0                                      rsb r3, r3, r2
0054252c  c3 32 a0 e1                                      asr r3, r3, #5
00542530  03 21 83 e0                                      add r2, r3, r3, lsl #2
00542534  02 22 82 e0                                      add r2, r2, r2, lsl #4
00542538  02 24 82 e0                                      add r2, r2, r2, lsl #8
0054253c  02 28 82 e0                                      add r2, r2, r2, lsl #16
00542540  82 30 83 e0                                      add r3, r3, r2, lsl #1
00542544  03 00 51 e1                                      cmp r1, r3
00542548  00 30 e0 23                                      mvnhs r3, #0
0054254c  64 31 80 25                                      strhs r3, [r0, #0x164]
00542550  64 11 80 35                                      strlo r1, [r0, #0x164]
00542554  62 22 03 eb                                      bl #0x60aee4
00542558  84 01 84 e5                                      str r0, [r4, #0x184]
0054255c  04 00 a0 e1                                      mov r0, r4
00542560  10 40 bd e8                                      pop {r4, lr}
00542564  2b fe ff ea                                      b #0x541e18

; FUNCTION 0x00542a40, declared_size=548, range_size=548, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBoxC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEbbb
; demangled: glitch::gui::CGUIListBox::CGUIListBox(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>, bool, bool, bool)
; decoder-mode: arm
00542a40  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00542a44  30 d0 4d e2                                      sub sp, sp, #0x30
00542a48  54 c0 9d e5                                      ldr ip, [sp, #0x54]
00542a4c  01 70 a0 e1                                      mov r7, r1
00542a50  04 10 81 e2                                      add r1, r1, #4
00542a54  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00542a58  00 50 9c e5                                      ldr r5, [ip]
00542a5c  10 10 9c e9                                      ldmib ip, {r4, ip}
00542a60  58 80 dd e5                                      ldrb r8, [sp, #0x58]
00542a64  2c e0 8d e5                                      str lr, [sp, #0x2c]
00542a68  28 c0 8d e5                                      str ip, [sp, #0x28]
00542a6c  50 c0 9d e5                                      ldr ip, [sp, #0x50]
00542a70  20 50 8d e5                                      str r5, [sp, #0x20]
00542a74  24 40 8d e5                                      str r4, [sp, #0x24]
00542a78  00 c0 8d e5                                      str ip, [sp]
00542a7c  20 c0 8d e2                                      add ip, sp, #0x20
00542a80  00 40 a0 e1                                      mov r4, r0
00542a84  04 c0 8d e5                                      str ip, [sp, #4]
00542a88  5c a0 dd e5                                      ldrb sl, [sp, #0x5c]
00542a8c  60 90 dd e5                                      ldrb sb, [sp, #0x60]
00542a90  b4 fe ff eb                                      bl #0x542568
00542a94  00 30 97 e5                                      ldr r3, [r7]
00542a98  00 50 a0 e3                                      mov r5, #0
00542a9c  01 60 a0 e3                                      mov r6, #1
00542aa0  00 30 84 e5                                      str r3, [r4]
00542aa4  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
00542aa8  1c 10 97 e5                                      ldr r1, [r7, #0x1c]
00542aac  63 3f 84 e2                                      add r3, r4, #0x18c
00542ab0  03 00 a0 e1                                      mov r0, r3
00542ab4  02 10 84 e7                                      str r1, [r4, r2]
00542ab8  00 20 94 e5                                      ldr r2, [r4]
00542abc  20 c0 97 e5                                      ldr ip, [r7, #0x20]
00542ac0  10 10 a0 e3                                      mov r1, #0x10
00542ac4  10 20 12 e5                                      ldr r2, [r2, #-0x10]
00542ac8  06 80 28 e0                                      eor r8, r8, r6
00542acc  02 c0 84 e7                                      str ip, [r4, r2]
00542ad0  00 20 e0 e3                                      mvn r2, #0
00542ad4  64 21 84 e5                                      str r2, [r4, #0x164]
00542ad8  cc 31 84 e5                                      str r3, [r4, #0x1cc]
00542adc  d0 31 84 e5                                      str r3, [r4, #0x1d0]
00542ae0  81 a1 c4 e5                                      strb sl, [r4, #0x181]
00542ae4  82 91 c4 e5                                      strb sb, [r4, #0x182]
00542ae8  58 51 84 e5                                      str r5, [r4, #0x158]
00542aec  5c 51 84 e5                                      str r5, [r4, #0x15c]
00542af0  60 51 84 e5                                      str r5, [r4, #0x160]
00542af4  68 51 84 e5                                      str r5, [r4, #0x168]
00542af8  6c 51 84 e5                                      str r5, [r4, #0x16c]
00542afc  70 51 84 e5                                      str r5, [r4, #0x170]
00542b00  74 51 84 e5                                      str r5, [r4, #0x174]
00542b04  78 51 84 e5                                      str r5, [r4, #0x178]
00542b08  7c 51 84 e5                                      str r5, [r4, #0x17c]
00542b0c  80 51 c4 e5                                      strb r5, [r4, #0x180]
00542b10  84 51 84 e5                                      str r5, [r4, #0x184]
00542b14  88 61 c4 e5                                      strb r6, [r4, #0x188]
00542b18  80 77 f7 eb                                      bl #0x320920
00542b1c  cc 31 94 e5                                      ldr r3, [r4, #0x1cc]
00542b20  00 50 83 e5                                      str r5, [r3]
00542b24  50 31 94 e5                                      ldr r3, [r4, #0x150]
00542b28  d4 51 84 e5                                      str r5, [r4, #0x1d4]
00542b2c  d8 61 c4 e5                                      strb r6, [r4, #0x1d8]
00542b30  03 00 a0 e1                                      mov r0, r3
00542b34  00 30 93 e5                                      ldr r3, [r3]
00542b38  0f e0 a0 e1                                      mov lr, pc
00542b3c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00542b40  05 10 a0 e1                                      mov r1, r5
00542b44  00 30 90 e5                                      ldr r3, [r0]
00542b48  0f e0 a0 e1                                      mov lr, pc
00542b4c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00542b50  30 c0 94 e5                                      ldr ip, [r4, #0x30]
00542b54  28 30 94 e5                                      ldr r3, [r4, #0x28]
00542b58  34 10 94 e5                                      ldr r1, [r4, #0x34]
00542b5c  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00542b60  0c 30 63 e0                                      rsb r3, r3, ip
00542b64  03 c0 60 e0                                      rsb ip, r0, r3
00542b68  01 20 62 e0                                      rsb r2, r2, r1
00542b6c  1a 0e a0 e3                                      mov r0, #0x1a0
00542b70  05 10 a0 e1                                      mov r1, r5
00542b74  10 c0 8d e5                                      str ip, [sp, #0x10]
00542b78  18 30 8d e5                                      str r3, [sp, #0x18]
00542b7c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00542b80  14 50 8d e5                                      str r5, [sp, #0x14]
00542b84  88 c5 ff eb                                      bl #0x5341ac
00542b88  10 c0 8d e2                                      add ip, sp, #0x10
00542b8c  50 21 94 e5                                      ldr r2, [r4, #0x150]
00542b90  00 70 a0 e1                                      mov r7, r0
00542b94  04 30 a0 e1                                      mov r3, r4
00542b98  05 10 a0 e1                                      mov r1, r5
00542b9c  20 10 8d e8                                      stm sp, {r5, ip}
00542ba0  08 80 8d e5                                      str r8, [sp, #8]
00542ba4  54 1c 00 eb                                      bl #0x549cfc
00542ba8  7c 71 84 e5                                      str r7, [r4, #0x17c]
00542bac  07 00 a0 e1                                      mov r0, r7
00542bb0  06 10 a0 e1                                      mov r1, r6
00542bb4  00 30 97 e5                                      ldr r3, [r7]
00542bb8  0f e0 a0 e1                                      mov lr, pc
00542bbc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00542bc0  7c 11 94 e5                                      ldr r1, [r4, #0x17c]
00542bc4  06 20 a0 e1                                      mov r2, r6
00542bc8  05 30 a0 e1                                      mov r3, r5
00542bcc  34 51 c1 e5                                      strb r5, [r1, #0x134]
00542bd0  7c 01 94 e5                                      ldr r0, [r4, #0x17c]
00542bd4  06 10 a0 e1                                      mov r1, r6
00542bd8  00 60 8d e5                                      str r6, [sp]
00542bdc  17 c7 ff eb                                      bl #0x534840
00542be0  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00542be4  05 10 a0 e1                                      mov r1, r5
00542be8  03 00 a0 e1                                      mov r0, r3
00542bec  00 30 93 e5                                      ldr r3, [r3]
00542bf0  0f e0 a0 e1                                      mov lr, pc
00542bf4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00542bf8  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00542bfc  00 20 93 e5                                      ldr r2, [r3]
00542c00  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00542c04  00 00 83 e0                                      add r0, r3, r0
00542c08  5d 6a f7 eb                                      bl #0x31d584
00542c0c  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00542c10  05 10 a0 e1                                      mov r1, r5
00542c14  03 00 a0 e1                                      mov r0, r3
00542c18  00 30 93 e5                                      ldr r3, [r3]
00542c1c  0f e0 a0 e1                                      mov lr, pc
00542c20  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00542c24  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00542c28  04 00 a0 e1                                      mov r0, r4
00542c2c  00 20 93 e5                                      ldr r2, [r3]
00542c30  10 20 12 e5                                      ldr r2, [r2, #-0x10]
00542c34  02 30 83 e0                                      add r3, r3, r2
00542c38  04 20 93 e5                                      ldr r2, [r3, #4]
00542c3c  06 20 82 e0                                      add r2, r2, r6
00542c40  04 20 83 e5                                      str r2, [r3, #4]
00542c44  9b 80 c4 e5                                      strb r8, [r4, #0x9b]
00542c48  34 61 c4 e5                                      strb r6, [r4, #0x134]
00542c4c  50 ff ff eb                                      bl #0x542994
00542c50  04 00 a0 e1                                      mov r0, r4
00542c54  5c fc ff eb                                      bl #0x541dcc
00542c58  04 00 a0 e1                                      mov r0, r4
00542c5c  30 d0 8d e2                                      add sp, sp, #0x30
00542c60  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00542c64, declared_size=616, range_size=616, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBoxC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEbbb
; demangled: glitch::gui::CGUIListBox::CGUIListBox(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>, bool, bool, bool)
; decoder-mode: arm
00542c64  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00542c68  4c 72 9f e5                                      ldr r7, [pc, #0x24c]
00542c6c  4c e2 9f e5                                      ldr lr, [pc, #0x24c]
00542c70  4c c2 9f e5                                      ldr ip, [pc, #0x24c]
00542c74  07 70 8f e0                                      add r7, pc, r7
00542c78  0e e0 97 e7                                      ldr lr, [r7, lr]
00542c7c  0c c0 97 e7                                      ldr ip, [r7, ip]
00542c80  01 60 a0 e3                                      mov r6, #1
00542c84  24 50 9e e5                                      ldr r5, [lr, #0x24]
00542c88  08 c0 8c e2                                      add ip, ip, #8
00542c8c  e4 61 80 e5                                      str r6, [r0, #0x1e4]
00542c90  dc 51 80 e5                                      str r5, [r0, #0x1dc]
00542c94  e0 c1 80 e5                                      str ip, [r0, #0x1e0]
00542c98  30 d0 4d e2                                      sub sp, sp, #0x30
00542c9c  28 a0 9e e5                                      ldr sl, [lr, #0x28]
00542ca0  0c 80 15 e5                                      ldr r8, [r5, #-0xc]
00542ca4  50 c0 9d e5                                      ldr ip, [sp, #0x50]
00542ca8  77 5f 80 e2                                      add r5, r0, #0x1dc
00542cac  08 a0 85 e7                                      str sl, [r5, r8]
00542cb0  20 07 9c e8                                      ldm ip, {r5, r8, sb, sl}
00542cb4  02 c0 a0 e1                                      mov ip, r2
00542cb8  00 30 8d e5                                      str r3, [sp]
00542cbc  01 20 a0 e1                                      mov r2, r1
00542cc0  0c 30 a0 e1                                      mov r3, ip
00542cc4  04 10 8e e2                                      add r1, lr, #4
00542cc8  20 c0 8d e2                                      add ip, sp, #0x20
00542ccc  00 40 a0 e1                                      mov r4, r0
00542cd0  04 c0 8d e5                                      str ip, [sp, #4]
00542cd4  20 50 8d e5                                      str r5, [sp, #0x20]
00542cd8  24 80 8d e5                                      str r8, [sp, #0x24]
00542cdc  28 90 8d e5                                      str sb, [sp, #0x28]
00542ce0  58 80 dd e5                                      ldrb r8, [sp, #0x58]
00542ce4  2c a0 8d e5                                      str sl, [sp, #0x2c]
00542ce8  54 90 dd e5                                      ldrb sb, [sp, #0x54]
00542cec  5c a0 dd e5                                      ldrb sl, [sp, #0x5c]
00542cf0  1c fe ff eb                                      bl #0x542568
00542cf4  cc 21 9f e5                                      ldr r2, [pc, #0x1cc]
00542cf8  00 10 e0 e3                                      mvn r1, #0
00542cfc  00 50 a0 e3                                      mov r5, #0
00542d00  02 20 97 e7                                      ldr r2, [r7, r2]
00542d04  63 3f 84 e2                                      add r3, r4, #0x18c
00542d08  64 11 84 e5                                      str r1, [r4, #0x164]
00542d0c  10 00 82 e2                                      add r0, r2, #0x10
00542d10  47 1f 82 e2                                      add r1, r2, #0x11c
00542d14  fc 20 82 e2                                      add r2, r2, #0xfc
00542d18  dc 21 84 e5                                      str r2, [r4, #0x1dc]
00542d1c  00 00 84 e5                                      str r0, [r4]
00542d20  e0 11 84 e5                                      str r1, [r4, #0x1e0]
00542d24  81 81 c4 e5                                      strb r8, [r4, #0x181]
00542d28  03 00 a0 e1                                      mov r0, r3
00542d2c  cc 31 84 e5                                      str r3, [r4, #0x1cc]
00542d30  d0 31 84 e5                                      str r3, [r4, #0x1d0]
00542d34  10 10 a0 e3                                      mov r1, #0x10
00542d38  82 a1 c4 e5                                      strb sl, [r4, #0x182]
00542d3c  58 51 84 e5                                      str r5, [r4, #0x158]
00542d40  5c 51 84 e5                                      str r5, [r4, #0x15c]
00542d44  60 51 84 e5                                      str r5, [r4, #0x160]
00542d48  68 51 84 e5                                      str r5, [r4, #0x168]
00542d4c  6c 51 84 e5                                      str r5, [r4, #0x16c]
00542d50  70 51 84 e5                                      str r5, [r4, #0x170]
00542d54  74 51 84 e5                                      str r5, [r4, #0x174]
00542d58  78 51 84 e5                                      str r5, [r4, #0x178]
00542d5c  7c 51 84 e5                                      str r5, [r4, #0x17c]
00542d60  80 51 c4 e5                                      strb r5, [r4, #0x180]
00542d64  84 51 84 e5                                      str r5, [r4, #0x184]
00542d68  88 61 c4 e5                                      strb r6, [r4, #0x188]
00542d6c  eb 76 f7 eb                                      bl #0x320920
00542d70  cc 31 94 e5                                      ldr r3, [r4, #0x1cc]
00542d74  06 80 29 e0                                      eor r8, sb, r6
00542d78  00 50 83 e5                                      str r5, [r3]
00542d7c  50 31 94 e5                                      ldr r3, [r4, #0x150]
00542d80  d4 51 84 e5                                      str r5, [r4, #0x1d4]
00542d84  d8 61 c4 e5                                      strb r6, [r4, #0x1d8]
00542d88  03 00 a0 e1                                      mov r0, r3
00542d8c  00 30 93 e5                                      ldr r3, [r3]
00542d90  0f e0 a0 e1                                      mov lr, pc
00542d94  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00542d98  05 10 a0 e1                                      mov r1, r5
00542d9c  00 30 90 e5                                      ldr r3, [r0]
00542da0  0f e0 a0 e1                                      mov lr, pc
00542da4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00542da8  30 c0 94 e5                                      ldr ip, [r4, #0x30]
00542dac  28 30 94 e5                                      ldr r3, [r4, #0x28]
00542db0  34 10 94 e5                                      ldr r1, [r4, #0x34]
00542db4  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00542db8  0c 30 63 e0                                      rsb r3, r3, ip
00542dbc  03 c0 60 e0                                      rsb ip, r0, r3
00542dc0  01 20 62 e0                                      rsb r2, r2, r1
00542dc4  1a 0e a0 e3                                      mov r0, #0x1a0
00542dc8  05 10 a0 e1                                      mov r1, r5
00542dcc  10 c0 8d e5                                      str ip, [sp, #0x10]
00542dd0  18 30 8d e5                                      str r3, [sp, #0x18]
00542dd4  1c 20 8d e5                                      str r2, [sp, #0x1c]
00542dd8  14 50 8d e5                                      str r5, [sp, #0x14]
00542ddc  f2 c4 ff eb                                      bl #0x5341ac
00542de0  10 c0 8d e2                                      add ip, sp, #0x10
00542de4  50 21 94 e5                                      ldr r2, [r4, #0x150]
00542de8  00 70 a0 e1                                      mov r7, r0
00542dec  04 30 a0 e1                                      mov r3, r4
00542df0  05 10 a0 e1                                      mov r1, r5
00542df4  20 10 8d e8                                      stm sp, {r5, ip}
00542df8  08 80 8d e5                                      str r8, [sp, #8]
00542dfc  be 1b 00 eb                                      bl #0x549cfc
00542e00  7c 71 84 e5                                      str r7, [r4, #0x17c]
00542e04  07 00 a0 e1                                      mov r0, r7
00542e08  06 10 a0 e1                                      mov r1, r6
00542e0c  00 30 97 e5                                      ldr r3, [r7]
00542e10  0f e0 a0 e1                                      mov lr, pc
00542e14  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00542e18  7c 11 94 e5                                      ldr r1, [r4, #0x17c]
00542e1c  06 20 a0 e1                                      mov r2, r6
00542e20  05 30 a0 e1                                      mov r3, r5
00542e24  34 51 c1 e5                                      strb r5, [r1, #0x134]
00542e28  7c 01 94 e5                                      ldr r0, [r4, #0x17c]
00542e2c  06 10 a0 e1                                      mov r1, r6
00542e30  00 60 8d e5                                      str r6, [sp]
00542e34  81 c6 ff eb                                      bl #0x534840
00542e38  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00542e3c  05 10 a0 e1                                      mov r1, r5
00542e40  03 00 a0 e1                                      mov r0, r3
00542e44  00 30 93 e5                                      ldr r3, [r3]
00542e48  0f e0 a0 e1                                      mov lr, pc
00542e4c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00542e50  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00542e54  00 20 93 e5                                      ldr r2, [r3]
00542e58  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00542e5c  00 00 83 e0                                      add r0, r3, r0
00542e60  c7 69 f7 eb                                      bl #0x31d584
00542e64  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00542e68  05 10 a0 e1                                      mov r1, r5
00542e6c  03 00 a0 e1                                      mov r0, r3
00542e70  00 30 93 e5                                      ldr r3, [r3]
00542e74  0f e0 a0 e1                                      mov lr, pc
00542e78  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00542e7c  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00542e80  04 00 a0 e1                                      mov r0, r4
00542e84  00 20 93 e5                                      ldr r2, [r3]
00542e88  10 20 12 e5                                      ldr r2, [r2, #-0x10]
00542e8c  02 30 83 e0                                      add r3, r3, r2
00542e90  04 20 93 e5                                      ldr r2, [r3, #4]
00542e94  06 20 82 e0                                      add r2, r2, r6
00542e98  04 20 83 e5                                      str r2, [r3, #4]
00542e9c  9b 80 c4 e5                                      strb r8, [r4, #0x9b]
00542ea0  34 61 c4 e5                                      strb r6, [r4, #0x134]
00542ea4  ba fe ff eb                                      bl #0x542994
00542ea8  04 00 a0 e1                                      mov r0, r4
00542eac  c6 fb ff eb                                      bl #0x541dcc
00542eb0  04 00 a0 e1                                      mov r0, r4
00542eb4  30 d0 8d e2                                      add sp, sp, #0x30
00542eb8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00542ebc  1c 1e 45 00 24 26 00 00 44 2b 00 00 d8 1a 00 00  .byte 0x1c, 0x1e, 0x45, 0x00, 0x24, 0x26, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xd8, 0x1a, 0x00, 0x00

; FUNCTION 0x00542f54, declared_size=1888, range_size=1888, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIListBox::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00542f54  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00542f58  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
00542f5c  53 df 4d e2                                      sub sp, sp, #0x14c
00542f60  00 40 a0 e1                                      mov r4, r0
00542f64  00 00 53 e3                                      cmp r3, #0
00542f68  01 50 a0 e1                                      mov r5, r1
00542f6c  06 00 00 0a                                      beq #0x542f8c
00542f70  00 30 91 e5                                      ldr r3, [r1]
00542f74  01 00 53 e3                                      cmp r3, #1
00542f78  2b 00 00 0a                                      beq #0x54302c
00542f7c  02 00 53 e3                                      cmp r3, #2
00542f80  13 00 00 0a                                      beq #0x542fd4
00542f84  00 00 53 e3                                      cmp r3, #0
00542f88  0a 00 00 0a                                      beq #0x542fb8
00542f8c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00542f90  00 00 53 e3                                      cmp r3, #0
00542f94  03 00 a0 01                                      moveq r0, r3
00542f98  04 00 00 0a                                      beq #0x542fb0
00542f9c  03 00 a0 e1                                      mov r0, r3
00542fa0  05 10 a0 e1                                      mov r1, r5
00542fa4  00 30 93 e5                                      ldr r3, [r3]
00542fa8  0f e0 a0 e1                                      mov lr, pc
00542fac  08 f0 93 e5                                      ldr pc, [r3, #8]
00542fb0  53 df 8d e2                                      add sp, sp, #0x14c
00542fb4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00542fb8  10 30 91 e5                                      ldr r3, [r1, #0x10]
00542fbc  00 00 53 e3                                      cmp r3, #0
00542fc0  29 00 00 1a                                      bne #0x54306c
00542fc4  08 20 91 e5                                      ldr r2, [r1, #8]
00542fc8  00 00 52 e1                                      cmp r2, r0
00542fcc  80 31 c0 05                                      strbeq r3, [r0, #0x180]
00542fd0  ed ff ff ea                                      b #0x542f8c
00542fd4  10 20 d1 e5                                      ldrb r2, [r1, #0x10]
00542fd8  00 00 52 e3                                      cmp r2, #0
00542fdc  2a 00 00 1a                                      bne #0x54308c
00542fe0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00542fe4  0d 00 53 e3                                      cmp r3, #0xd
00542fe8  20 00 53 13                                      cmpne r3, #0x20
00542fec  e6 ff ff 1a                                      bne #0x542f8c
00542ff0  24 30 90 e5                                      ldr r3, [r0, #0x24]
00542ff4  00 00 53 e3                                      cmp r3, #0
00542ff8  21 00 00 0a                                      beq #0x543084
00542ffc  09 10 a0 e3                                      mov r1, #9
00543000  14 01 8d e5                                      str r0, [sp, #0x114]
00543004  1c 11 8d e5                                      str r1, [sp, #0x11c]
00543008  18 21 8d e5                                      str r2, [sp, #0x118]
0054300c  0c 21 8d e5                                      str r2, [sp, #0x10c]
00543010  03 00 a0 e1                                      mov r0, r3
00543014  43 1f 8d e2                                      add r1, sp, #0x10c
00543018  00 30 93 e5                                      ldr r3, [r3]
0054301c  0f e0 a0 e1                                      mov lr, pc
00543020  08 f0 93 e5                                      ldr pc, [r3, #8]
00543024  01 00 a0 e3                                      mov r0, #1
00543028  e0 ff ff ea                                      b #0x542fb0
0054302c  0c 10 91 e5                                      ldr r1, [r1, #0xc]
00543030  08 20 95 e5                                      ldr r2, [r5, #8]
00543034  14 30 95 e5                                      ldr r3, [r5, #0x14]
00543038  28 11 8d e5                                      str r1, [sp, #0x128]
0054303c  24 21 8d e5                                      str r2, [sp, #0x124]
00543040  07 00 53 e3                                      cmp r3, #7
00543044  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00543048  cf ff ff ea                                      b #0x542f8c
0054304c  a7 00 00 ea                                      b #0x5432f0
00543050  cd ff ff ea                                      b #0x542f8c
00543054  cc ff ff ea                                      b #0x542f8c
00543058  96 00 00 ea                                      b #0x5432b8
0054305c  ca ff ff ea                                      b #0x542f8c
00543060  c9 ff ff ea                                      b #0x542f8c
00543064  a4 00 00 ea                                      b #0x5432fc
00543068  83 00 00 ea                                      b #0x54327c
0054306c  06 00 53 e3                                      cmp r3, #6
00543070  c5 ff ff 1a                                      bne #0x542f8c
00543074  08 20 91 e5                                      ldr r2, [r1, #8]
00543078  7c 31 90 e5                                      ldr r3, [r0, #0x17c]
0054307c  03 00 52 e1                                      cmp r2, r3
00543080  c1 ff ff 1a                                      bne #0x542f8c
00543084  01 00 a0 e3                                      mov r0, #1
00543088  c8 ff ff ea                                      b #0x542fb0
0054308c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00543090  28 00 53 e3                                      cmp r3, #0x28
00543094  26 00 53 13                                      cmpne r3, #0x26
00543098  6a 00 00 0a                                      beq #0x543248
0054309c  24 00 53 e3                                      cmp r3, #0x24
005430a0  d9 00 00 0a                                      beq #0x54340c
005430a4  23 00 53 e3                                      cmp r3, #0x23
005430a8  dd 00 00 0a                                      beq #0x543424
005430ac  22 00 53 e3                                      cmp r3, #0x22
005430b0  e8 00 00 0a                                      beq #0x543458
005430b4  21 00 53 e3                                      cmp r3, #0x21
005430b8  f1 00 00 0a                                      beq #0x543484
005430bc  08 30 91 e5                                      ldr r3, [r1, #8]
005430c0  00 00 53 e3                                      cmp r3, #0
005430c4  b0 ff ff 0a                                      beq #0x542f8c
005430c8  85 1f 03 eb                                      bl #0x60aee4
005430cc  d4 31 94 e5                                      ldr r3, [r4, #0x1d4]
005430d0  00 60 a0 e1                                      mov r6, r0
005430d4  00 30 63 e0                                      rsb r3, r3, r0
005430d8  7d 0f 53 e3                                      cmp r3, #0x1f4
005430dc  44 01 00 2a                                      bhs #0x5435f4
005430e0  d0 31 94 e5                                      ldr r3, [r4, #0x1d0]
005430e4  cc 21 94 e5                                      ldr r2, [r4, #0x1cc]
005430e8  02 20 63 e0                                      rsb r2, r3, r2
005430ec  42 21 a0 e1                                      asr r2, r2, #2
005430f0  01 00 52 e3                                      cmp r2, #1
005430f4  4a 01 00 0a                                      beq #0x543624
005430f8  ac 75 9f e5                                      ldr r7, [pc, #0x5ac]
005430fc  07 70 8f e0                                      add r7, pc, r7
00543100  07 00 a0 e1                                      mov r0, r7
00543104  df 2e f7 eb                                      bl #0x30ec88
00543108  07 10 a0 e1                                      mov r1, r7
0054310c  00 21 87 e0                                      add r2, r7, r0, lsl #2
00543110  63 0f 84 e2                                      add r0, r4, #0x18c
00543114  cb 76 f7 eb                                      bl #0x320c48
00543118  d0 31 94 e5                                      ldr r3, [r4, #0x1d0]
0054311c  cc 21 94 e5                                      ldr r2, [r4, #0x1cc]
00543120  08 10 95 e5                                      ldr r1, [r5, #8]
00543124  02 20 63 e0                                      rsb r2, r3, r2
00543128  42 21 a0 e1                                      asr r2, r2, #2
0054312c  01 20 42 e2                                      sub r2, r2, #1
00543130  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
00543134  64 81 94 e5                                      ldr r8, [r4, #0x164]
00543138  d4 61 84 e5                                      str r6, [r4, #0x1d4]
0054313c  00 00 58 e3                                      cmp r8, #0
00543140  29 01 00 ba                                      blt #0x5435ec
00543144  d0 51 94 e5                                      ldr r5, [r4, #0x1d0]
00543148  cc 21 94 e5                                      ldr r2, [r4, #0x1cc]
0054314c  02 20 65 e0                                      rsb r2, r5, r2
00543150  42 21 a0 e1                                      asr r2, r2, #2
00543154  01 00 52 e3                                      cmp r2, #1
00543158  23 01 00 9a                                      bls #0x5435ec
0054315c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00543160  60 10 a0 e3                                      mov r1, #0x60
00543164  91 38 21 e0                                      mla r1, r1, r8, r3
00543168  40 c0 91 e5                                      ldr ip, [r1, #0x40]
0054316c  44 00 91 e5                                      ldr r0, [r1, #0x44]
00543170  0c 00 60 e0                                      rsb r0, r0, ip
00543174  40 01 52 e1                                      cmp r2, r0, asr #2
00543178  0f 01 00 9a                                      bls #0x5435bc
0054317c  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
00543180  01 50 88 e2                                      add r5, r8, #1
00543184  0c 20 63 e0                                      rsb r2, r3, ip
00543188  c2 22 a0 e1                                      asr r2, r2, #5
0054318c  02 11 82 e0                                      add r1, r2, r2, lsl #2
00543190  01 12 81 e0                                      add r1, r1, r1, lsl #4
00543194  01 14 81 e0                                      add r1, r1, r1, lsl #8
00543198  01 18 81 e0                                      add r1, r1, r1, lsl #16
0054319c  81 20 82 e0                                      add r2, r2, r1, lsl #1
005431a0  05 00 52 e1                                      cmp r2, r5
005431a4  c5 00 00 da                                      ble #0x5434c0
005431a8  60 60 a0 e3                                      mov r6, #0x60
005431ac  96 05 06 e0                                      mul r6, r6, r5
005431b0  4c a0 8d e2                                      add sl, sp, #0x4c
005431b4  05 bd 8d e2                                      add fp, sp, #0x140
005431b8  0a 00 00 ea                                      b #0x5431e8
005431bc  0c 20 63 e0                                      rsb r2, r3, ip
005431c0  c2 22 a0 e1                                      asr r2, r2, #5
005431c4  01 50 85 e2                                      add r5, r5, #1
005431c8  02 11 82 e0                                      add r1, r2, r2, lsl #2
005431cc  60 60 86 e2                                      add r6, r6, #0x60
005431d0  01 12 81 e0                                      add r1, r1, r1, lsl #4
005431d4  01 14 81 e0                                      add r1, r1, r1, lsl #8
005431d8  01 18 81 e0                                      add r1, r1, r1, lsl #16
005431dc  81 20 82 e0                                      add r2, r2, r1, lsl #1
005431e0  02 00 55 e1                                      cmp r5, r2
005431e4  b5 00 00 aa                                      bge #0x5434c0
005431e8  06 10 83 e0                                      add r1, r3, r6
005431ec  d0 71 94 e5                                      ldr r7, [r4, #0x1d0]
005431f0  cc 21 94 e5                                      ldr r2, [r4, #0x1cc]
005431f4  40 90 91 e5                                      ldr sb, [r1, #0x40]
005431f8  44 00 91 e5                                      ldr r0, [r1, #0x44]
005431fc  02 20 67 e0                                      rsb r2, r7, r2
00543200  42 21 a0 e1                                      asr r2, r2, #2
00543204  09 00 60 e0                                      rsb r0, r0, sb
00543208  40 01 52 e1                                      cmp r2, r0, asr #2
0054320c  ea ff ff 8a                                      bhi #0x5431bc
00543210  0b 30 a0 e1                                      mov r3, fp
00543214  0a 00 a0 e1                                      mov r0, sl
00543218  3f ff ff eb                                      bl #0x542f1c
0054321c  07 00 a0 e1                                      mov r0, r7
00543220  90 10 9d e5                                      ldr r1, [sp, #0x90]
00543224  59 fc ff eb                                      bl #0x542390
00543228  00 70 a0 e1                                      mov r7, r0
0054322c  0a 00 a0 e1                                      mov r0, sl
00543230  4c fc ff eb                                      bl #0x542368
00543234  00 00 57 e3                                      cmp r7, #0
00543238  fe 00 00 0a                                      beq #0x543638
0054323c  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
00543240  58 31 94 e5                                      ldr r3, [r4, #0x158]
00543244  dc ff ff ea                                      b #0x5431bc
00543248  21 30 43 e2                                      sub r3, r3, #0x21
0054324c  64 51 90 e5                                      ldr r5, [r0, #0x164]
00543250  07 00 53 e3                                      cmp r3, #7
00543254  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00543258  94 00 00 ea                                      b #0x5434b0
0054325c  89 00 00 ea                                      b #0x543488
00543260  7d 00 00 ea                                      b #0x54345c
00543264  6f 00 00 ea                                      b #0x543428
00543268  68 00 00 ea                                      b #0x543410
0054326c  8f 00 00 ea                                      b #0x5434b0
00543270  60 00 00 ea                                      b #0x5433f8
00543274  8d 00 00 ea                                      b #0x5434b0
00543278  32 00 00 ea                                      b #0x543348
0054327c  7c 61 90 e5                                      ldr r6, [r0, #0x17c]
00543280  00 30 96 e5                                      ldr r3, [r6]
00543284  06 00 a0 e1                                      mov r0, r6
00543288  98 40 93 e5                                      ldr r4, [r3, #0x98]
0054328c  0f e0 a0 e1                                      mov lr, pc
00543290  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00543294  00 70 a0 e1                                      mov r7, r0
00543298  10 00 95 e5                                      ldr r0, [r5, #0x10]
0054329c  8a 2c f7 eb                                      bl #0x30e4cc
005432a0  09 10 e0 e3                                      mvn r1, #9
005432a4  91 70 21 e0                                      mla r1, r1, r0, r7
005432a8  06 00 a0 e1                                      mov r0, r6
005432ac  34 ff 2f e1                                      blx r4
005432b0  01 00 a0 e3                                      mov r0, #1
005432b4  3d ff ff ea                                      b #0x542fb0
005432b8  00 60 a0 e3                                      mov r6, #0
005432bc  80 61 c0 e5                                      strb r6, [r0, #0x180]
005432c0  00 30 90 e5                                      ldr r3, [r0]
005432c4  49 1f 8d e2                                      add r1, sp, #0x124
005432c8  0f e0 a0 e1                                      mov lr, pc
005432cc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005432d0  06 00 50 e1                                      cmp r0, r6
005432d4  6a ff ff 0a                                      beq #0x543084
005432d8  04 00 a0 e1                                      mov r0, r4
005432dc  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005432e0  06 20 a0 e1                                      mov r2, r6
005432e4  45 fc ff eb                                      bl #0x542400
005432e8  01 00 a0 e3                                      mov r0, #1
005432ec  2f ff ff ea                                      b #0x542fb0
005432f0  01 00 a0 e3                                      mov r0, #1
005432f4  80 01 c4 e5                                      strb r0, [r4, #0x180]
005432f8  2c ff ff ea                                      b #0x542fb0
005432fc  80 31 d0 e5                                      ldrb r3, [r0, #0x180]
00543300  00 00 53 e3                                      cmp r3, #0
00543304  02 00 00 1a                                      bne #0x543314
00543308  82 31 d0 e5                                      ldrb r3, [r0, #0x182]
0054330c  00 00 53 e3                                      cmp r3, #0
00543310  1d ff ff 0a                                      beq #0x542f8c
00543314  00 30 94 e5                                      ldr r3, [r4]
00543318  04 00 a0 e1                                      mov r0, r4
0054331c  49 1f 8d e2                                      add r1, sp, #0x124
00543320  0f e0 a0 e1                                      mov lr, pc
00543324  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00543328  00 00 50 e3                                      cmp r0, #0
0054332c  16 ff ff 0a                                      beq #0x542f8c
00543330  04 00 a0 e1                                      mov r0, r4
00543334  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00543338  01 20 a0 e3                                      mov r2, #1
0054333c  2f fc ff eb                                      bl #0x542400
00543340  01 00 a0 e3                                      mov r0, #1
00543344  19 ff ff ea                                      b #0x542fb0
00543348  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
0054334c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00543350  01 00 85 e2                                      add r0, r5, #1
00543354  64 01 84 e5                                      str r0, [r4, #0x164]
00543358  0c 30 63 e0                                      rsb r3, r3, ip
0054335c  c3 32 a0 e1                                      asr r3, r3, #5
00543360  03 21 83 e0                                      add r2, r3, r3, lsl #2
00543364  02 22 82 e0                                      add r2, r2, r2, lsl #4
00543368  02 24 82 e0                                      add r2, r2, r2, lsl #8
0054336c  02 28 82 e0                                      add r2, r2, r2, lsl #16
00543370  82 30 83 e0                                      add r3, r3, r2, lsl #1
00543374  00 00 53 e1                                      cmp r3, r0
00543378  01 30 43 d2                                      suble r3, r3, #1
0054337c  64 31 84 d5                                      strle r3, [r4, #0x164]
00543380  02 00 00 da                                      ble #0x543390
00543384  00 00 50 e3                                      cmp r0, #0
00543388  00 30 a0 b3                                      movlt r3, #0
0054338c  64 31 84 b5                                      strlt r3, [r4, #0x164]
00543390  04 00 a0 e1                                      mov r0, r4
00543394  9f fa ff eb                                      bl #0x541e18
00543398  64 31 94 e5                                      ldr r3, [r4, #0x164]
0054339c  05 00 53 e1                                      cmp r3, r5
005433a0  37 ff ff 0a                                      beq #0x543084
005433a4  24 30 94 e5                                      ldr r3, [r4, #0x24]
005433a8  00 00 53 e3                                      cmp r3, #0
005433ac  34 ff ff 0a                                      beq #0x543084
005433b0  80 21 d4 e5                                      ldrb r2, [r4, #0x180]
005433b4  00 00 52 e3                                      cmp r2, #0
005433b8  31 ff ff 1a                                      bne #0x543084
005433bc  82 21 d4 e5                                      ldrb r2, [r4, #0x182]
005433c0  00 00 52 e3                                      cmp r2, #0
005433c4  2e ff ff 1a                                      bne #0x543084
005433c8  08 10 a0 e3                                      mov r1, #8
005433cc  34 11 8d e5                                      str r1, [sp, #0x134]
005433d0  2c 41 8d e5                                      str r4, [sp, #0x12c]
005433d4  30 21 8d e5                                      str r2, [sp, #0x130]
005433d8  24 21 8d e5                                      str r2, [sp, #0x124]
005433dc  03 00 a0 e1                                      mov r0, r3
005433e0  49 1f 8d e2                                      add r1, sp, #0x124
005433e4  00 30 93 e5                                      ldr r3, [r3]
005433e8  0f e0 a0 e1                                      mov lr, pc
005433ec  08 f0 93 e5                                      ldr pc, [r3, #8]
005433f0  01 00 a0 e3                                      mov r0, #1
005433f4  ed fe ff ea                                      b #0x542fb0
005433f8  01 00 45 e2                                      sub r0, r5, #1
005433fc  64 01 84 e5                                      str r0, [r4, #0x164]
00543400  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
00543404  58 31 94 e5                                      ldr r3, [r4, #0x158]
00543408  d2 ff ff ea                                      b #0x543358
0054340c  64 51 90 e5                                      ldr r5, [r0, #0x164]
00543410  00 00 a0 e3                                      mov r0, #0
00543414  64 01 84 e5                                      str r0, [r4, #0x164]
00543418  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
0054341c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00543420  cc ff ff ea                                      b #0x543358
00543424  64 51 90 e5                                      ldr r5, [r0, #0x164]
00543428  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
0054342c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00543430  0c 20 63 e0                                      rsb r2, r3, ip
00543434  c2 22 a0 e1                                      asr r2, r2, #5
00543438  02 11 82 e0                                      add r1, r2, r2, lsl #2
0054343c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00543440  01 14 81 e0                                      add r1, r1, r1, lsl #8
00543444  01 18 81 e0                                      add r1, r1, r1, lsl #16
00543448  81 20 82 e0                                      add r2, r2, r1, lsl #1
0054344c  01 00 42 e2                                      sub r0, r2, #1
00543450  64 01 84 e5                                      str r0, [r4, #0x164]
00543454  bf ff ff ea                                      b #0x543358
00543458  64 51 90 e5                                      ldr r5, [r0, #0x164]
0054345c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00543460  44 00 94 e5                                      ldr r0, [r4, #0x44]
00543464  68 11 94 e5                                      ldr r1, [r4, #0x168]
00543468  00 00 63 e0                                      rsb r0, r3, r0
0054346c  8c 2b f7 eb                                      bl #0x30e2a4
00543470  00 00 85 e0                                      add r0, r5, r0
00543474  64 01 84 e5                                      str r0, [r4, #0x164]
00543478  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
0054347c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00543480  b4 ff ff ea                                      b #0x543358
00543484  64 51 90 e5                                      ldr r5, [r0, #0x164]
00543488  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0054348c  44 00 94 e5                                      ldr r0, [r4, #0x44]
00543490  68 11 94 e5                                      ldr r1, [r4, #0x168]
00543494  00 00 63 e0                                      rsb r0, r3, r0
00543498  81 2b f7 eb                                      bl #0x30e2a4
0054349c  05 00 60 e0                                      rsb r0, r0, r5
005434a0  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
005434a4  58 31 94 e5                                      ldr r3, [r4, #0x158]
005434a8  64 01 84 e5                                      str r0, [r4, #0x164]
005434ac  a9 ff ff ea                                      b #0x543358
005434b0  05 00 a0 e1                                      mov r0, r5
005434b4  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
005434b8  58 31 94 e5                                      ldr r3, [r4, #0x158]
005434bc  a5 ff ff ea                                      b #0x543358
005434c0  00 00 58 e3                                      cmp r8, #0
005434c4  ee fe ff ba                                      blt #0x543084
005434c8  00 50 a0 e3                                      mov r5, #0
005434cc  05 60 a0 e1                                      mov r6, r5
005434d0  04 a0 8d e2                                      add sl, sp, #4
005434d4  4f 9f 8d e2                                      add sb, sp, #0x13c
005434d8  04 00 00 ea                                      b #0x5434f0
005434dc  01 60 86 e2                                      add r6, r6, #1
005434e0  06 00 58 e1                                      cmp r8, r6
005434e4  60 50 85 e2                                      add r5, r5, #0x60
005434e8  e5 fe ff ba                                      blt #0x543084
005434ec  58 31 94 e5                                      ldr r3, [r4, #0x158]
005434f0  05 10 83 e0                                      add r1, r3, r5
005434f4  d0 71 94 e5                                      ldr r7, [r4, #0x1d0]
005434f8  cc 21 94 e5                                      ldr r2, [r4, #0x1cc]
005434fc  40 00 91 e5                                      ldr r0, [r1, #0x40]
00543500  44 30 91 e5                                      ldr r3, [r1, #0x44]
00543504  02 20 67 e0                                      rsb r2, r7, r2
00543508  42 21 a0 e1                                      asr r2, r2, #2
0054350c  00 30 63 e0                                      rsb r3, r3, r0
00543510  43 01 52 e1                                      cmp r2, r3, asr #2
00543514  f0 ff ff 8a                                      bhi #0x5434dc
00543518  09 30 a0 e1                                      mov r3, sb
0054351c  0a 00 a0 e1                                      mov r0, sl
00543520  7d fe ff eb                                      bl #0x542f1c
00543524  07 00 a0 e1                                      mov r0, r7
00543528  48 10 9d e5                                      ldr r1, [sp, #0x48]
0054352c  97 fb ff eb                                      bl #0x542390
00543530  00 70 a0 e1                                      mov r7, r0
00543534  0a 00 a0 e1                                      mov r0, sl
00543538  8a fb ff eb                                      bl #0x542368
0054353c  00 00 57 e3                                      cmp r7, #0
00543540  e5 ff ff 0a                                      beq #0x5434dc
00543544  24 30 94 e5                                      ldr r3, [r4, #0x24]
00543548  00 00 53 e3                                      cmp r3, #0
0054354c  13 00 00 0a                                      beq #0x5435a0
00543550  64 21 94 e5                                      ldr r2, [r4, #0x164]
00543554  06 00 52 e1                                      cmp r2, r6
00543558  10 00 00 0a                                      beq #0x5435a0
0054355c  80 21 d4 e5                                      ldrb r2, [r4, #0x180]
00543560  00 00 52 e3                                      cmp r2, #0
00543564  0d 00 00 1a                                      bne #0x5435a0
00543568  82 21 d4 e5                                      ldrb r2, [r4, #0x182]
0054356c  00 00 52 e3                                      cmp r2, #0
00543570  0a 00 00 1a                                      bne #0x5435a0
00543574  08 10 a0 e3                                      mov r1, #8
00543578  ec 10 8d e5                                      str r1, [sp, #0xec]
0054357c  e8 20 8d e5                                      str r2, [sp, #0xe8]
00543580  64 61 84 e5                                      str r6, [r4, #0x164]
00543584  dc 20 8d e5                                      str r2, [sp, #0xdc]
00543588  e4 40 8d e5                                      str r4, [sp, #0xe4]
0054358c  03 00 a0 e1                                      mov r0, r3
00543590  dc 10 8d e2                                      add r1, sp, #0xdc
00543594  00 30 93 e5                                      ldr r3, [r3]
00543598  0f e0 a0 e1                                      mov lr, pc
0054359c  08 f0 93 e5                                      ldr pc, [r3, #8]
005435a0  04 00 a0 e1                                      mov r0, r4
005435a4  06 10 a0 e1                                      mov r1, r6
005435a8  00 30 94 e5                                      ldr r3, [r4]
005435ac  0f e0 a0 e1                                      mov lr, pc
005435b0  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
005435b4  01 00 a0 e3                                      mov r0, #1
005435b8  7c fe ff ea                                      b #0x542fb0
005435bc  94 60 8d e2                                      add r6, sp, #0x94
005435c0  51 3f 8d e2                                      add r3, sp, #0x144
005435c4  06 00 a0 e1                                      mov r0, r6
005435c8  53 fe ff eb                                      bl #0x542f1c
005435cc  05 00 a0 e1                                      mov r0, r5
005435d0  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005435d4  6d fb ff eb                                      bl #0x542390
005435d8  00 50 a0 e1                                      mov r5, r0
005435dc  06 00 a0 e1                                      mov r0, r6
005435e0  60 fb ff eb                                      bl #0x542368
005435e4  00 00 55 e3                                      cmp r5, #0
005435e8  a5 fe ff 0a                                      beq #0x543084
005435ec  58 31 94 e5                                      ldr r3, [r4, #0x158]
005435f0  e1 fe ff ea                                      b #0x54317c
005435f4  b4 70 9f e5                                      ldr r7, [pc, #0xb4]
005435f8  07 70 8f e0                                      add r7, pc, r7
005435fc  07 00 a0 e1                                      mov r0, r7
00543600  a0 2d f7 eb                                      bl #0x30ec88
00543604  07 10 a0 e1                                      mov r1, r7
00543608  00 21 87 e0                                      add r2, r7, r0, lsl #2
0054360c  63 0f 84 e2                                      add r0, r4, #0x18c
00543610  e2 7e f7 eb                                      bl #0x3231a0
00543614  08 20 95 e5                                      ldr r2, [r5, #8]
00543618  d0 31 94 e5                                      ldr r3, [r4, #0x1d0]
0054361c  00 20 83 e5                                      str r2, [r3]
00543620  c3 fe ff ea                                      b #0x543134
00543624  00 20 93 e5                                      ldr r2, [r3]
00543628  08 30 95 e5                                      ldr r3, [r5, #8]
0054362c  03 00 52 e1                                      cmp r2, r3
00543630  b0 fe ff 1a                                      bne #0x5430f8
00543634  be fe ff ea                                      b #0x543134
00543638  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054363c  00 00 53 e3                                      cmp r3, #0
00543640  12 00 00 0a                                      beq #0x543690
00543644  64 21 94 e5                                      ldr r2, [r4, #0x164]
00543648  05 00 52 e1                                      cmp r2, r5
0054364c  0f 00 00 0a                                      beq #0x543690
00543650  80 21 d4 e5                                      ldrb r2, [r4, #0x180]
00543654  00 00 52 e3                                      cmp r2, #0
00543658  0c 00 00 1a                                      bne #0x543690
0054365c  82 21 d4 e5                                      ldrb r2, [r4, #0x182]
00543660  00 00 52 e3                                      cmp r2, #0
00543664  09 00 00 1a                                      bne #0x543690
00543668  08 10 a0 e3                                      mov r1, #8
0054366c  04 11 8d e5                                      str r1, [sp, #0x104]
00543670  00 21 8d e5                                      str r2, [sp, #0x100]
00543674  f4 20 8d e5                                      str r2, [sp, #0xf4]
00543678  fc 40 8d e5                                      str r4, [sp, #0xfc]
0054367c  03 00 a0 e1                                      mov r0, r3
00543680  f4 10 8d e2                                      add r1, sp, #0xf4
00543684  00 30 93 e5                                      ldr r3, [r3]
00543688  0f e0 a0 e1                                      mov lr, pc
0054368c  08 f0 93 e5                                      ldr pc, [r3, #8]
00543690  04 00 a0 e1                                      mov r0, r4
00543694  05 10 a0 e1                                      mov r1, r5
00543698  00 30 94 e5                                      ldr r3, [r4]
0054369c  0f e0 a0 e1                                      mov lr, pc
005436a0  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
005436a4  01 00 a0 e3                                      mov r0, #1
005436a8  40 fe ff ea                                      b #0x542fb0
; mapping-symbol data/literal pool
005436ac  6c b3 39 00 70 ae 39 00                          .byte 0x6c, 0xb3, 0x39, 0x00, 0x70, 0xae, 0x39, 0x00

; FUNCTION 0x005439b4, declared_size=1944, range_size=1944, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox4drawEv
; demangled: glitch::gui::CGUIListBox::draw()
; decoder-mode: arm
005439b4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005439b8  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
005439bc  94 d0 4d e2                                      sub sp, sp, #0x94
005439c0  00 40 a0 e1                                      mov r4, r0
005439c4  00 00 53 e3                                      cmp r3, #0
005439c8  01 00 00 1a                                      bne #0x5439d4
005439cc  94 d0 8d e2                                      add sp, sp, #0x94
005439d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005439d4  aa f8 ff eb                                      bl #0x541c84
005439d8  50 31 94 e5                                      ldr r3, [r4, #0x150]
005439dc  03 00 a0 e1                                      mov r0, r3
005439e0  00 30 93 e5                                      ldr r3, [r3]
005439e4  0f e0 a0 e1                                      mov lr, pc
005439e8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005439ec  38 c0 94 e5                                      ldr ip, [r4, #0x38]
005439f0  00 70 a0 e1                                      mov r7, r0
005439f4  3c 00 84 e2                                      add r0, r4, #0x3c
005439f8  07 00 90 e8                                      ldm r0, {r0, r1, r2}
005439fc  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00543a00  01 50 80 e2                                      add r5, r0, #1
00543a04  01 e0 8c e2                                      add lr, ip, #1
00543a08  64 00 8d e5                                      str r0, [sp, #0x64]
00543a0c  58 10 8d e5                                      str r1, [sp, #0x58]
00543a10  5c 20 8d e5                                      str r2, [sp, #0x5c]
00543a14  54 50 8d e5                                      str r5, [sp, #0x54]
00543a18  50 e0 8d e5                                      str lr, [sp, #0x50]
00543a1c  60 c0 8d e5                                      str ip, [sp, #0x60]
00543a20  68 10 8d e5                                      str r1, [sp, #0x68]
00543a24  6c 20 8d e5                                      str r2, [sp, #0x6c]
00543a28  03 00 a0 e1                                      mov r0, r3
00543a2c  00 30 93 e5                                      ldr r3, [r3]
00543a30  0f e0 a0 e1                                      mov lr, pc
00543a34  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00543a38  00 00 50 e3                                      cmp r0, #0
00543a3c  aa 01 00 1a                                      bne #0x5440ec
00543a40  50 00 94 e5                                      ldr r0, [r4, #0x50]
00543a44  58 20 9d e5                                      ldr r2, [sp, #0x58]
00543a48  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00543a4c  54 c0 9d e5                                      ldr ip, [sp, #0x54]
00543a50  02 00 50 e1                                      cmp r0, r2
00543a54  01 10 43 e2                                      sub r1, r3, #1
00543a58  5c 10 8d e5                                      str r1, [sp, #0x5c]
00543a5c  58 00 8d b5                                      strlt r0, [sp, #0x58]
00543a60  00 20 a0 b1                                      movlt r2, r0
00543a64  54 00 94 e5                                      ldr r0, [r4, #0x54]
00543a68  01 30 a0 e1                                      mov r3, r1
00543a6c  50 90 8d e2                                      add sb, sp, #0x50
00543a70  00 00 51 e1                                      cmp r1, r0
00543a74  5c 00 8d c5                                      strgt r0, [sp, #0x5c]
00543a78  48 10 94 e5                                      ldr r1, [r4, #0x48]
00543a7c  00 30 a0 c1                                      movgt r3, r0
00543a80  50 00 9d e5                                      ldr r0, [sp, #0x50]
00543a84  00 00 51 e1                                      cmp r1, r0
00543a88  50 10 8d c5                                      strgt r1, [sp, #0x50]
00543a8c  01 00 a0 c1                                      movgt r0, r1
00543a90  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00543a94  0c 00 51 e1                                      cmp r1, ip
00543a98  0c 10 a0 d1                                      movle r1, ip
00543a9c  54 10 8d c5                                      strgt r1, [sp, #0x54]
00543aa0  01 00 53 e1                                      cmp r3, r1
00543aa4  54 30 8d b5                                      strlt r3, [sp, #0x54]
00543aa8  02 00 50 e1                                      cmp r0, r2
00543aac  50 20 8d c5                                      strgt r2, [sp, #0x50]
00543ab0  00 30 97 e5                                      ldr r3, [r7]
00543ab4  03 10 a0 e3                                      mov r1, #3
00543ab8  07 00 a0 e1                                      mov r0, r7
00543abc  48 50 93 e5                                      ldr r5, [r3, #0x48]
00543ac0  0f e0 a0 e1                                      mov lr, pc
00543ac4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00543ac8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00543acc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00543ad0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00543ad4  39 10 cd e5                                      strb r1, [sp, #0x39]
00543ad8  38 00 cd e5                                      strb r0, [sp, #0x38]
00543adc  3a 20 cd e5                                      strb r2, [sp, #0x3a]
00543ae0  3b 30 cd e5                                      strb r3, [sp, #0x3b]
00543ae4  81 21 d4 e5                                      ldrb r2, [r4, #0x181]
00543ae8  38 30 9d e5                                      ldr r3, [sp, #0x38]
00543aec  60 10 8d e2                                      add r1, sp, #0x60
00543af0  24 10 8d e5                                      str r1, [sp, #0x24]
00543af4  00 20 8d e5                                      str r2, [sp]
00543af8  8c 30 8d e5                                      str r3, [sp, #0x8c]
00543afc  03 20 a0 e1                                      mov r2, r3
00543b00  04 10 8d e5                                      str r1, [sp, #4]
00543b04  07 00 a0 e1                                      mov r0, r7
00543b08  04 10 a0 e1                                      mov r1, r4
00543b0c  01 30 a0 e3                                      mov r3, #1
00543b10  08 90 8d e5                                      str sb, [sp, #8]
00543b14  35 ff 2f e1                                      blx r5
00543b18  38 20 94 e5                                      ldr r2, [r4, #0x38]
00543b1c  40 00 94 e5                                      ldr r0, [r4, #0x40]
00543b20  3c c0 94 e5                                      ldr ip, [r4, #0x3c]
00543b24  44 10 94 e5                                      ldr r1, [r4, #0x44]
00543b28  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00543b2c  01 20 82 e2                                      add r2, r2, #1
00543b30  68 00 8d e5                                      str r0, [sp, #0x68]
00543b34  64 c0 8d e5                                      str ip, [sp, #0x64]
00543b38  6c 10 8d e5                                      str r1, [sp, #0x6c]
00543b3c  60 20 8d e5                                      str r2, [sp, #0x60]
00543b40  03 00 a0 e1                                      mov r0, r3
00543b44  00 30 93 e5                                      ldr r3, [r3]
00543b48  0f e0 a0 e1                                      mov lr, pc
00543b4c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00543b50  00 00 50 e3                                      cmp r0, #0
00543b54  5b 01 00 1a                                      bne #0x5440c8
00543b58  68 11 94 e5                                      ldr r1, [r4, #0x168]
00543b5c  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00543b60  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00543b64  64 50 9d e5                                      ldr r5, [sp, #0x64]
00543b68  02 20 81 e0                                      add r2, r1, r2
00543b6c  6c 20 8d e5                                      str r2, [sp, #0x6c]
00543b70  03 00 a0 e1                                      mov r0, r3
00543b74  00 30 93 e5                                      ldr r3, [r3]
00543b78  0f e0 a0 e1                                      mov lr, pc
00543b7c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00543b80  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00543b84  05 00 60 e0                                      rsb r0, r0, r5
00543b88  64 00 8d e5                                      str r0, [sp, #0x64]
00543b8c  03 00 a0 e1                                      mov r0, r3
00543b90  00 30 93 e5                                      ldr r3, [r3]
00543b94  6c 50 9d e5                                      ldr r5, [sp, #0x6c]
00543b98  0f e0 a0 e1                                      mov lr, pc
00543b9c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00543ba0  d8 31 d4 e5                                      ldrb r3, [r4, #0x1d8]
00543ba4  05 00 60 e0                                      rsb r0, r0, r5
00543ba8  6c 00 8d e5                                      str r0, [sp, #0x6c]
00543bac  00 00 53 e3                                      cmp r3, #0
00543bb0  32 01 00 0a                                      beq #0x544080
00543bb4  01 20 a0 e3                                      mov r2, #1
00543bb8  1c 20 8d e5                                      str r2, [sp, #0x1c]
00543bbc  5c a1 94 e5                                      ldr sl, [r4, #0x15c]
00543bc0  58 31 94 e5                                      ldr r3, [r4, #0x158]
00543bc4  0a 20 63 e0                                      rsb r2, r3, sl
00543bc8  5f 00 52 e3                                      cmp r2, #0x5f
00543bcc  ac 00 00 da                                      ble #0x543e84
00543bd0  40 10 8d e2                                      add r1, sp, #0x40
00543bd4  20 10 8d e5                                      str r1, [sp, #0x20]
00543bd8  70 10 8d e2                                      add r1, sp, #0x70
00543bdc  28 10 8d e5                                      str r1, [sp, #0x28]
00543be0  80 10 8d e2                                      add r1, sp, #0x80
00543be4  2c 10 8d e5                                      str r1, [sp, #0x2c]
00543be8  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00543bec  84 10 8d e2                                      add r1, sp, #0x84
00543bf0  64 20 9d e5                                      ldr r2, [sp, #0x64]
00543bf4  00 60 a0 e3                                      mov r6, #0
00543bf8  34 10 8d e5                                      str r1, [sp, #0x34]
00543bfc  88 10 8d e2                                      add r1, sp, #0x88
00543c00  06 50 a0 e1                                      mov r5, r6
00543c04  30 10 8d e5                                      str r1, [sp, #0x30]
00543c08  07 b0 a0 e1                                      mov fp, r7
00543c0c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00543c10  01 00 50 e1                                      cmp r0, r1
00543c14  89 00 00 ba                                      blt #0x543e40
00543c18  44 10 94 e5                                      ldr r1, [r4, #0x44]
00543c1c  01 00 52 e1                                      cmp r2, r1
00543c20  86 00 00 ca                                      bgt #0x543e40
00543c24  64 11 94 e5                                      ldr r1, [r4, #0x164]
00543c28  05 00 51 e1                                      cmp r1, r5
00543c2c  a7 00 00 0a                                      beq #0x543ed0
00543c30  60 10 9d e5                                      ldr r1, [sp, #0x60]
00543c34  74 71 94 e5                                      ldr r7, [r4, #0x174]
00543c38  68 c0 9d e5                                      ldr ip, [sp, #0x68]
00543c3c  03 10 81 e2                                      add r1, r1, #3
00543c40  00 00 57 e3                                      cmp r7, #0
00543c44  48 c0 8d e5                                      str ip, [sp, #0x48]
00543c48  44 20 8d e5                                      str r2, [sp, #0x44]
00543c4c  4c 00 8d e5                                      str r0, [sp, #0x4c]
00543c50  40 10 8d e5                                      str r1, [sp, #0x40]
00543c54  5c a1 94 05                                      ldreq sl, [r4, #0x15c]
00543c58  78 00 00 0a                                      beq #0x543e40
00543c5c  78 81 94 e5                                      ldr r8, [r4, #0x178]
00543c60  00 00 58 e3                                      cmp r8, #0
00543c64  3e 00 00 0a                                      beq #0x543d64
00543c68  06 c0 83 e0                                      add ip, r3, r6
00543c6c  48 c0 9c e5                                      ldr ip, [ip, #0x48]
00543c70  00 00 5c e3                                      cmp ip, #0
00543c74  3a 00 00 ba                                      blt #0x543d64
00543c78  70 c1 94 e5                                      ldr ip, [r4, #0x170]
00543c7c  64 e1 94 e5                                      ldr lr, [r4, #0x164]
00543c80  00 00 62 e0                                      rsb r0, r2, r0
00543c84  a0 0f 80 e0                                      add r0, r0, r0, lsr #31
00543c88  ac cf 8c e0                                      add ip, ip, ip, lsr #31
00543c8c  c0 00 82 e0                                      add r0, r2, r0, asr #1
00543c90  cc c0 81 e0                                      add ip, r1, ip, asr #1
00543c94  05 00 5e e1                                      cmp lr, r5
00543c98  74 00 8d e5                                      str r0, [sp, #0x74]
00543c9c  70 c0 8d e5                                      str ip, [sp, #0x70]
00543ca0  02 00 00 1a                                      bne #0x543cb0
00543ca4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00543ca8  00 00 52 e3                                      cmp r2, #0
00543cac  aa 00 00 1a                                      bne #0x543f5c
00543cb0  00 e0 98 e5                                      ldr lr, [r8]
00543cb4  06 c0 83 e0                                      add ip, r3, r6
00543cb8  04 00 a0 e1                                      mov r0, r4
00543cbc  00 30 94 e5                                      ldr r3, [r4]
00543cc0  05 10 a0 e1                                      mov r1, r5
00543cc4  02 20 a0 e3                                      mov r2, #2
00543cc8  24 a0 9e e5                                      ldr sl, [lr, #0x24]
00543ccc  48 70 9c e5                                      ldr r7, [ip, #0x48]
00543cd0  0f e0 a0 e1                                      mov lr, pc
00543cd4  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00543cd8  00 00 50 e3                                      cmp r0, #0
00543cdc  97 00 00 1a                                      bne #0x543f40
00543ce0  00 30 94 e5                                      ldr r3, [r4]
00543ce4  04 00 a0 e1                                      mov r0, r4
00543ce8  02 10 a0 e3                                      mov r1, #2
00543cec  0f e0 a0 e1                                      mov lr, pc
00543cf0  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
00543cf4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00543cf8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00543cfc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00543d00  38 00 cd e5                                      strb r0, [sp, #0x38]
00543d04  39 10 cd e5                                      strb r1, [sp, #0x39]
00543d08  3a 20 cd e5                                      strb r2, [sp, #0x3a]
00543d0c  3b 30 cd e5                                      strb r3, [sp, #0x3b]
00543d10  38 30 9d e5                                      ldr r3, [sp, #0x38]
00543d14  80 30 8d e5                                      str r3, [sp, #0x80]
00543d18  64 31 94 e5                                      ldr r3, [r4, #0x164]
00543d1c  05 00 53 e1                                      cmp r3, r5
00543d20  00 00 a0 13                                      movne r0, #0
00543d24  06 01 00 0a                                      beq #0x544144
00543d28  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00543d2c  00 20 a0 e3                                      mov r2, #0
00543d30  08 00 8d e5                                      str r0, [sp, #8]
00543d34  06 00 8d e8                                      stm sp, {r1, r2}
00543d38  01 30 a0 e3                                      mov r3, #1
00543d3c  07 10 a0 e1                                      mov r1, r7
00543d40  0c 20 8d e5                                      str r2, [sp, #0xc]
00543d44  10 30 8d e5                                      str r3, [sp, #0x10]
00543d48  08 00 a0 e1                                      mov r0, r8
00543d4c  09 30 a0 e1                                      mov r3, sb
00543d50  28 20 9d e5                                      ldr r2, [sp, #0x28]
00543d54  3a ff 2f e1                                      blx sl
00543d58  40 10 9d e5                                      ldr r1, [sp, #0x40]
00543d5c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00543d60  74 71 94 e5                                      ldr r7, [r4, #0x174]
00543d64  70 01 94 e5                                      ldr r0, [r4, #0x170]
00543d68  64 21 94 e5                                      ldr r2, [r4, #0x164]
00543d6c  03 00 80 e2                                      add r0, r0, #3
00543d70  01 10 80 e0                                      add r1, r0, r1
00543d74  05 00 52 e1                                      cmp r2, r5
00543d78  40 10 8d e5                                      str r1, [sp, #0x40]
00543d7c  02 00 00 1a                                      bne #0x543d8c
00543d80  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00543d84  00 00 51 e3                                      cmp r1, #0
00543d88  97 00 00 1a                                      bne #0x543fec
00543d8c  00 e0 97 e5                                      ldr lr, [r7]
00543d90  06 c0 83 e0                                      add ip, r3, r6
00543d94  05 10 a0 e1                                      mov r1, r5
00543d98  00 30 94 e5                                      ldr r3, [r4]
00543d9c  04 00 a0 e1                                      mov r0, r4
00543da0  00 20 a0 e3                                      mov r2, #0
00543da4  0c a0 9e e5                                      ldr sl, [lr, #0xc]
00543da8  44 80 9c e5                                      ldr r8, [ip, #0x44]
00543dac  0f e0 a0 e1                                      mov lr, pc
00543db0  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00543db4  00 10 50 e2                                      subs r1, r0, #0
00543db8  3f 00 00 0a                                      beq #0x543ebc
00543dbc  00 30 94 e5                                      ldr r3, [r4]
00543dc0  04 00 a0 e1                                      mov r0, r4
00543dc4  05 10 a0 e1                                      mov r1, r5
00543dc8  00 20 a0 e3                                      mov r2, #0
00543dcc  0f e0 a0 e1                                      mov lr, pc
00543dd0  c0 f0 93 e5                                      ldr pc, [r3, #0xc0]
00543dd4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00543dd8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00543ddc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00543de0  39 10 cd e5                                      strb r1, [sp, #0x39]
00543de4  3a 20 cd e5                                      strb r2, [sp, #0x3a]
00543de8  38 00 cd e5                                      strb r0, [sp, #0x38]
00543dec  3b 30 cd e5                                      strb r3, [sp, #0x3b]
00543df0  38 30 9d e5                                      ldr r3, [sp, #0x38]
00543df4  01 10 a0 e3                                      mov r1, #1
00543df8  04 10 8d e5                                      str r1, [sp, #4]
00543dfc  78 30 8d e5                                      str r3, [sp, #0x78]
00543e00  00 30 a0 e3                                      mov r3, #0
00543e04  00 30 8d e5                                      str r3, [sp]
00543e08  08 90 8d e5                                      str sb, [sp, #8]
00543e0c  07 00 a0 e1                                      mov r0, r7
00543e10  08 10 a0 e1                                      mov r1, r8
00543e14  20 20 9d e5                                      ldr r2, [sp, #0x20]
00543e18  78 30 9d e5                                      ldr r3, [sp, #0x78]
00543e1c  3a ff 2f e1                                      blx sl
00543e20  40 00 9d e5                                      ldr r0, [sp, #0x40]
00543e24  70 11 94 e5                                      ldr r1, [r4, #0x170]
00543e28  64 20 9d e5                                      ldr r2, [sp, #0x64]
00543e2c  03 00 40 e2                                      sub r0, r0, #3
00543e30  00 10 61 e0                                      rsb r1, r1, r0
00543e34  5c a1 94 e5                                      ldr sl, [r4, #0x15c]
00543e38  58 31 94 e5                                      ldr r3, [r4, #0x158]
00543e3c  40 10 8d e5                                      str r1, [sp, #0x40]
00543e40  0a 10 63 e0                                      rsb r1, r3, sl
00543e44  c1 12 a0 e1                                      asr r1, r1, #5
00543e48  68 c1 94 e5                                      ldr ip, [r4, #0x168]
00543e4c  01 71 81 e0                                      add r7, r1, r1, lsl #2
00543e50  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00543e54  07 72 87 e0                                      add r7, r7, r7, lsl #4
00543e58  01 50 85 e2                                      add r5, r5, #1
00543e5c  07 74 87 e0                                      add r7, r7, r7, lsl #8
00543e60  00 00 8c e0                                      add r0, ip, r0
00543e64  07 78 87 e0                                      add r7, r7, r7, lsl #16
00543e68  0c 20 82 e0                                      add r2, r2, ip
00543e6c  87 70 81 e0                                      add r7, r1, r7, lsl #1
00543e70  07 00 55 e1                                      cmp r5, r7
00543e74  64 20 8d e5                                      str r2, [sp, #0x64]
00543e78  6c 00 8d e5                                      str r0, [sp, #0x6c]
00543e7c  60 60 86 e2                                      add r6, r6, #0x60
00543e80  61 ff ff ba                                      blt #0x543c0c
00543e84  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
00543e88  00 00 53 e3                                      cmp r3, #0
00543e8c  04 50 b4 15                                      ldrne r5, [r4, #4]!
00543e90  06 00 00 1a                                      bne #0x543eb0
00543e94  cc fe ff ea                                      b #0x5439cc
00543e98  08 30 95 e5                                      ldr r3, [r5, #8]
00543e9c  03 00 a0 e1                                      mov r0, r3
00543ea0  00 30 93 e5                                      ldr r3, [r3]
00543ea4  0f e0 a0 e1                                      mov lr, pc
00543ea8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00543eac  00 50 95 e5                                      ldr r5, [r5]
00543eb0  04 00 55 e1                                      cmp r5, r4
00543eb4  f7 ff ff 1a                                      bne #0x543e98
00543eb8  c3 fe ff ea                                      b #0x5439cc
00543ebc  00 30 94 e5                                      ldr r3, [r4]
00543ec0  04 00 a0 e1                                      mov r0, r4
00543ec4  0f e0 a0 e1                                      mov lr, pc
00543ec8  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
00543ecc  c0 ff ff ea                                      b #0x543dd4
00543ed0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00543ed4  00 00 51 e3                                      cmp r1, #0
00543ed8  54 ff ff 0a                                      beq #0x543c30
00543edc  00 30 9b e5                                      ldr r3, [fp]
00543ee0  0a 10 a0 e3                                      mov r1, #0xa
00543ee4  0b 00 a0 e1                                      mov r0, fp
00543ee8  64 70 93 e5                                      ldr r7, [r3, #0x64]
00543eec  0f e0 a0 e1                                      mov lr, pc
00543ef0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00543ef4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00543ef8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00543efc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00543f00  39 10 cd e5                                      strb r1, [sp, #0x39]
00543f04  3a 20 cd e5                                      strb r2, [sp, #0x3a]
00543f08  38 00 cd e5                                      strb r0, [sp, #0x38]
00543f0c  3b 30 cd e5                                      strb r3, [sp, #0x3b]
00543f10  38 30 9d e5                                      ldr r3, [sp, #0x38]
00543f14  0b 00 a0 e1                                      mov r0, fp
00543f18  30 20 9d e5                                      ldr r2, [sp, #0x30]
00543f1c  88 30 8d e5                                      str r3, [sp, #0x88]
00543f20  00 90 8d e5                                      str sb, [sp]
00543f24  24 30 9d e5                                      ldr r3, [sp, #0x24]
00543f28  04 10 a0 e1                                      mov r1, r4
00543f2c  37 ff 2f e1                                      blx r7
00543f30  64 20 9d e5                                      ldr r2, [sp, #0x64]
00543f34  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00543f38  58 31 94 e5                                      ldr r3, [r4, #0x158]
00543f3c  3b ff ff ea                                      b #0x543c30
00543f40  00 30 94 e5                                      ldr r3, [r4]
00543f44  04 00 a0 e1                                      mov r0, r4
00543f48  05 10 a0 e1                                      mov r1, r5
00543f4c  02 20 a0 e3                                      mov r2, #2
00543f50  0f e0 a0 e1                                      mov lr, pc
00543f54  c0 f0 93 e5                                      ldr pc, [r3, #0xc0]
00543f58  65 ff ff ea                                      b #0x543cf4
00543f5c  60 10 a0 e3                                      mov r1, #0x60
00543f60  91 35 23 e0                                      mla r3, r1, r5, r3
00543f64  00 c0 98 e5                                      ldr ip, [r8]
00543f68  48 70 93 e5                                      ldr r7, [r3, #0x48]
00543f6c  04 00 a0 e1                                      mov r0, r4
00543f70  05 10 a0 e1                                      mov r1, r5
00543f74  03 20 a0 e3                                      mov r2, #3
00543f78  00 30 94 e5                                      ldr r3, [r4]
00543f7c  24 a0 9c e5                                      ldr sl, [ip, #0x24]
00543f80  0f e0 a0 e1                                      mov lr, pc
00543f84  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00543f88  00 00 50 e3                                      cmp r0, #0
00543f8c  65 00 00 1a                                      bne #0x544128
00543f90  00 30 94 e5                                      ldr r3, [r4]
00543f94  04 00 a0 e1                                      mov r0, r4
00543f98  03 10 a0 e3                                      mov r1, #3
00543f9c  0f e0 a0 e1                                      mov lr, pc
00543fa0  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
00543fa4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00543fa8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00543fac  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00543fb0  39 10 cd e5                                      strb r1, [sp, #0x39]
00543fb4  3a 20 cd e5                                      strb r2, [sp, #0x3a]
00543fb8  3b 30 cd e5                                      strb r3, [sp, #0x3b]
00543fbc  38 00 cd e5                                      strb r0, [sp, #0x38]
00543fc0  38 30 9d e5                                      ldr r3, [sp, #0x38]
00543fc4  84 30 8d e5                                      str r3, [sp, #0x84]
00543fc8  84 31 94 e5                                      ldr r3, [r4, #0x184]
00543fcc  18 30 8d e5                                      str r3, [sp, #0x18]
00543fd0  c3 1b 03 eb                                      bl #0x60aee4
00543fd4  18 30 9d e5                                      ldr r3, [sp, #0x18]
00543fd8  34 10 9d e5                                      ldr r1, [sp, #0x34]
00543fdc  08 00 8d e5                                      str r0, [sp, #8]
00543fe0  0a 00 8d e8                                      stm sp, {r1, r3}
00543fe4  00 20 a0 e3                                      mov r2, #0
00543fe8  52 ff ff ea                                      b #0x543d38
00543fec  60 20 a0 e3                                      mov r2, #0x60
00543ff0  92 35 2c e0                                      mla ip, r2, r5, r3
00543ff4  00 30 97 e5                                      ldr r3, [r7]
00543ff8  04 00 a0 e1                                      mov r0, r4
00543ffc  05 10 a0 e1                                      mov r1, r5
00544000  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00544004  01 20 a0 e3                                      mov r2, #1
00544008  00 30 94 e5                                      ldr r3, [r4]
0054400c  44 80 9c e5                                      ldr r8, [ip, #0x44]
00544010  0f e0 a0 e1                                      mov lr, pc
00544014  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00544018  00 00 50 e3                                      cmp r0, #0
0054401c  3b 00 00 0a                                      beq #0x544110
00544020  00 30 94 e5                                      ldr r3, [r4]
00544024  04 00 a0 e1                                      mov r0, r4
00544028  05 10 a0 e1                                      mov r1, r5
0054402c  01 20 a0 e3                                      mov r2, #1
00544030  0f e0 a0 e1                                      mov lr, pc
00544034  c0 f0 93 e5                                      ldr pc, [r3, #0xc0]
00544038  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054403c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00544040  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00544044  39 10 cd e5                                      strb r1, [sp, #0x39]
00544048  3a 20 cd e5                                      strb r2, [sp, #0x3a]
0054404c  38 00 cd e5                                      strb r0, [sp, #0x38]
00544050  3b 30 cd e5                                      strb r3, [sp, #0x3b]
00544054  38 30 9d e5                                      ldr r3, [sp, #0x38]
00544058  00 10 a0 e3                                      mov r1, #0
0054405c  01 20 a0 e3                                      mov r2, #1
00544060  7c 30 8d e5                                      str r3, [sp, #0x7c]
00544064  06 02 8d e8                                      stm sp, {r1, r2, sb}
00544068  07 00 a0 e1                                      mov r0, r7
0054406c  08 10 a0 e1                                      mov r1, r8
00544070  20 20 9d e5                                      ldr r2, [sp, #0x20]
00544074  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
00544078  3a ff 2f e1                                      blx sl
0054407c  67 ff ff ea                                      b #0x543e20
00544080  50 31 94 e5                                      ldr r3, [r4, #0x150]
00544084  04 10 a0 e1                                      mov r1, r4
00544088  03 00 a0 e1                                      mov r0, r3
0054408c  00 30 93 e5                                      ldr r3, [r3]
00544090  0f e0 a0 e1                                      mov lr, pc
00544094  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00544098  00 00 50 e3                                      cmp r0, #0
0054409c  c4 fe ff 1a                                      bne #0x543bb4
005440a0  50 31 94 e5                                      ldr r3, [r4, #0x150]
005440a4  7c 11 94 e5                                      ldr r1, [r4, #0x17c]
005440a8  03 00 a0 e1                                      mov r0, r3
005440ac  00 30 93 e5                                      ldr r3, [r3]
005440b0  0f e0 a0 e1                                      mov lr, pc
005440b4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005440b8  00 00 50 e3                                      cmp r0, #0
005440bc  1c 00 8d 05                                      streq r0, [sp, #0x1c]
005440c0  bd fe ff 0a                                      beq #0x543bbc
005440c4  ba fe ff ea                                      b #0x543bb4
005440c8  00 30 97 e5                                      ldr r3, [r7]
005440cc  07 00 a0 e1                                      mov r0, r7
005440d0  00 10 a0 e3                                      mov r1, #0
005440d4  40 50 94 e5                                      ldr r5, [r4, #0x40]
005440d8  0f e0 a0 e1                                      mov lr, pc
005440dc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005440e0  05 00 60 e0                                      rsb r0, r0, r5
005440e4  68 00 8d e5                                      str r0, [sp, #0x68]
005440e8  9a fe ff ea                                      b #0x543b58
005440ec  00 30 97 e5                                      ldr r3, [r7]
005440f0  07 00 a0 e1                                      mov r0, r7
005440f4  00 10 a0 e3                                      mov r1, #0
005440f8  40 50 94 e5                                      ldr r5, [r4, #0x40]
005440fc  0f e0 a0 e1                                      mov lr, pc
00544100  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00544104  05 00 60 e0                                      rsb r0, r0, r5
00544108  58 00 8d e5                                      str r0, [sp, #0x58]
0054410c  4b fe ff ea                                      b #0x543a40
00544110  00 30 94 e5                                      ldr r3, [r4]
00544114  04 00 a0 e1                                      mov r0, r4
00544118  01 10 a0 e3                                      mov r1, #1
0054411c  0f e0 a0 e1                                      mov lr, pc
00544120  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
00544124  c3 ff ff ea                                      b #0x544038
00544128  00 30 94 e5                                      ldr r3, [r4]
0054412c  04 00 a0 e1                                      mov r0, r4
00544130  05 10 a0 e1                                      mov r1, r5
00544134  03 20 a0 e3                                      mov r2, #3
00544138  0f e0 a0 e1                                      mov lr, pc
0054413c  c0 f0 93 e5                                      ldr pc, [r3, #0xc0]
00544140  97 ff ff ea                                      b #0x543fa4
00544144  66 1b 03 eb                                      bl #0x60aee4
00544148  f6 fe ff ea                                      b #0x543d28

; FUNCTION 0x00544280, declared_size=100, range_size=100, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox5clearEv
; demangled: glitch::gui::CGUIListBox::clear()
; decoder-mode: arm
00544280  10 40 2d e9                                      push {r4, lr}
00544284  58 11 90 e5                                      ldr r1, [r0, #0x158]
00544288  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
0054428c  08 d0 4d e2                                      sub sp, sp, #8
00544290  00 40 a0 e1                                      mov r4, r0
00544294  02 00 51 e1                                      cmp r1, r2
00544298  02 00 00 0a                                      beq #0x5442a8
0054429c  56 0f 80 e2                                      add r0, r0, #0x158
005442a0  04 30 8d e2                                      add r3, sp, #4
005442a4  be ff ff eb                                      bl #0x5441a4
005442a8  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
005442ac  00 10 a0 e3                                      mov r1, #0
005442b0  00 20 e0 e3                                      mvn r2, #0
005442b4  01 00 53 e1                                      cmp r3, r1
005442b8  64 21 84 e5                                      str r2, [r4, #0x164]
005442bc  70 11 84 e5                                      str r1, [r4, #0x170]
005442c0  03 00 00 0a                                      beq #0x5442d4
005442c4  03 00 a0 e1                                      mov r0, r3
005442c8  00 30 93 e5                                      ldr r3, [r3]
005442cc  0f e0 a0 e1                                      mov lr, pc
005442d0  98 f0 93 e5                                      ldr pc, [r3, #0x98]
005442d4  04 00 a0 e1                                      mov r0, r4
005442d8  69 f6 ff eb                                      bl #0x541c84
005442dc  08 d0 8d e2                                      add sp, sp, #8
005442e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00544390, declared_size=152, range_size=152, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox10removeItemEj
; demangled: glitch::gui::CGUIListBox::removeItem(unsigned int)
; decoder-mode: arm
00544390  10 40 2d e9                                      push {r4, lr}
00544394  58 31 90 e5                                      ldr r3, [r0, #0x158]
00544398  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
0054439c  00 40 a0 e1                                      mov r4, r0
005443a0  10 d0 4d e2                                      sub sp, sp, #0x10
005443a4  02 20 63 e0                                      rsb r2, r3, r2
005443a8  c2 22 a0 e1                                      asr r2, r2, #5
005443ac  02 01 82 e0                                      add r0, r2, r2, lsl #2
005443b0  00 02 80 e0                                      add r0, r0, r0, lsl #4
005443b4  00 04 80 e0                                      add r0, r0, r0, lsl #8
005443b8  00 08 80 e0                                      add r0, r0, r0, lsl #16
005443bc  80 20 82 e0                                      add r2, r2, r0, lsl #1
005443c0  02 00 51 e1                                      cmp r1, r2
005443c4  0d 00 00 2a                                      bhs #0x544400
005443c8  64 21 94 e5                                      ldr r2, [r4, #0x164]
005443cc  01 00 52 e1                                      cmp r2, r1
005443d0  00 20 e0 03                                      mvneq r2, #0
005443d4  64 21 84 05                                      streq r2, [r4, #0x164]
005443d8  01 00 00 0a                                      beq #0x5443e4
005443dc  02 00 51 e1                                      cmp r1, r2
005443e0  08 00 00 3a                                      blo #0x544408
005443e4  60 20 a0 e3                                      mov r2, #0x60
005443e8  92 31 21 e0                                      mla r1, r2, r1, r3
005443ec  56 0f 84 e2                                      add r0, r4, #0x158
005443f0  0c 20 8d e2                                      add r2, sp, #0xc
005443f4  ba ff ff eb                                      bl #0x5442e4
005443f8  04 00 a0 e1                                      mov r0, r4
005443fc  20 f6 ff eb                                      bl #0x541c84
00544400  10 d0 8d e2                                      add sp, sp, #0x10
00544404  10 80 bd e8                                      pop {r4, pc}
00544408  01 20 42 e2                                      sub r2, r2, #1
0054440c  64 21 84 e5                                      str r2, [r4, #0x164]
00544410  04 10 8d e5                                      str r1, [sp, #4]
00544414  b2 1a 03 eb                                      bl #0x60aee4
00544418  84 01 84 e5                                      str r0, [r4, #0x184]
0054441c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00544420  04 10 9d e5                                      ldr r1, [sp, #4]
00544424  ee ff ff ea                                      b #0x5443e4

; FUNCTION 0x0054449c, declared_size=220, range_size=220, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBoxD1Ev
; demangled: glitch::gui::CGUIListBox::~CGUIListBox()
; decoder-mode: arm
0054449c  70 40 2d e9                                      push {r4, r5, r6, lr}
005444a0  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
005444a4  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
005444a8  7c 21 90 e5                                      ldr r2, [r0, #0x17c]
005444ac  05 50 8f e0                                      add r5, pc, r5
005444b0  03 30 95 e7                                      ldr r3, [r5, r3]
005444b4  00 40 a0 e1                                      mov r4, r0
005444b8  00 00 52 e3                                      cmp r2, #0
005444bc  47 1f 83 e2                                      add r1, r3, #0x11c
005444c0  10 00 83 e2                                      add r0, r3, #0x10
005444c4  fc 30 83 e2                                      add r3, r3, #0xfc
005444c8  00 00 84 e5                                      str r0, [r4]
005444cc  dc 31 84 e5                                      str r3, [r4, #0x1dc]
005444d0  e0 11 84 e5                                      str r1, [r4, #0x1e0]
005444d4  03 00 00 0a                                      beq #0x5444e8
005444d8  00 30 92 e5                                      ldr r3, [r2]
005444dc  10 00 13 e5                                      ldr r0, [r3, #-0x10]
005444e0  00 00 82 e0                                      add r0, r2, r0
005444e4  26 64 f7 eb                                      bl #0x31d584
005444e8  74 01 94 e5                                      ldr r0, [r4, #0x174]
005444ec  00 00 50 e3                                      cmp r0, #0
005444f0  00 00 00 0a                                      beq #0x5444f8
005444f4  22 64 f7 eb                                      bl #0x31d584
005444f8  78 01 94 e5                                      ldr r0, [r4, #0x178]
005444fc  00 00 50 e3                                      cmp r0, #0
00544500  00 00 00 0a                                      beq #0x544508
00544504  1e 64 f7 eb                                      bl #0x31d584
00544508  63 3f 84 e2                                      add r3, r4, #0x18c
0054450c  44 00 93 e5                                      ldr r0, [r3, #0x44]
00544510  03 00 50 e1                                      cmp r0, r3
00544514  02 00 00 0a                                      beq #0x544524
00544518  00 00 50 e3                                      cmp r0, #0
0054451c  00 00 00 0a                                      beq #0x544524
00544520  ca 2f f7 eb                                      bl #0x310450
00544524  56 0f 84 e2                                      add r0, r4, #0x158
00544528  07 ff ff eb                                      bl #0x54414c
0054452c  40 30 9f e5                                      ldr r3, [pc, #0x40]
00544530  04 00 a0 e1                                      mov r0, r4
00544534  03 10 95 e7                                      ldr r1, [r5, r3]
00544538  04 30 91 e5                                      ldr r3, [r1, #4]
0054453c  14 c0 91 e5                                      ldr ip, [r1, #0x14]
00544540  18 20 91 e5                                      ldr r2, [r1, #0x18]
00544544  00 30 84 e5                                      str r3, [r4]
00544548  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054454c  08 10 81 e2                                      add r1, r1, #8
00544550  03 c0 84 e7                                      str ip, [r4, r3]
00544554  00 30 94 e5                                      ldr r3, [r4]
00544558  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054455c  03 20 84 e7                                      str r2, [r4, r3]
00544560  ae d2 ff eb                                      bl #0x539020
00544564  04 00 a0 e1                                      mov r0, r4
00544568  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0054456c  e4 05 45 00 d8 1a 00 00 24 26 00 00              .byte 0xe4, 0x05, 0x45, 0x00, 0xd8, 0x1a, 0x00, 0x00, 0x24, 0x26, 0x00, 0x00

; FUNCTION 0x00544578, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBoxD0Ev
; demangled: glitch::gui::CGUIListBox::~CGUIListBox()
; decoder-mode: arm
00544578  10 40 2d e9                                      push {r4, lr}
0054457c  00 40 a0 e1                                      mov r4, r0
00544580  c5 ff ff eb                                      bl #0x54449c
00544584  04 00 a0 e1                                      mov r0, r4
00544588  48 27 f7 eb                                      bl #0x30e2b0
0054458c  04 00 a0 e1                                      mov r0, r4
00544590  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00544594, declared_size=204, range_size=204, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBoxD2Ev
; demangled: glitch::gui::CGUIListBox::~CGUIListBox()
; decoder-mode: arm
00544594  70 40 2d e9                                      push {r4, r5, r6, lr}
00544598  00 30 91 e5                                      ldr r3, [r1]
0054459c  01 50 a0 e1                                      mov r5, r1
005445a0  00 40 a0 e1                                      mov r4, r0
005445a4  00 30 80 e5                                      str r3, [r0]
005445a8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005445ac  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
005445b0  03 20 80 e7                                      str r2, [r0, r3]
005445b4  00 30 90 e5                                      ldr r3, [r0]
005445b8  20 20 91 e5                                      ldr r2, [r1, #0x20]
005445bc  10 30 13 e5                                      ldr r3, [r3, #-0x10]
005445c0  03 20 80 e7                                      str r2, [r0, r3]
005445c4  7c 31 90 e5                                      ldr r3, [r0, #0x17c]
005445c8  00 00 53 e3                                      cmp r3, #0
005445cc  03 00 00 0a                                      beq #0x5445e0
005445d0  00 20 93 e5                                      ldr r2, [r3]
005445d4  10 00 12 e5                                      ldr r0, [r2, #-0x10]
005445d8  00 00 83 e0                                      add r0, r3, r0
005445dc  e8 63 f7 eb                                      bl #0x31d584
005445e0  74 01 94 e5                                      ldr r0, [r4, #0x174]
005445e4  00 00 50 e3                                      cmp r0, #0
005445e8  00 00 00 0a                                      beq #0x5445f0
005445ec  e4 63 f7 eb                                      bl #0x31d584
005445f0  78 01 94 e5                                      ldr r0, [r4, #0x178]
005445f4  00 00 50 e3                                      cmp r0, #0
005445f8  00 00 00 0a                                      beq #0x544600
005445fc  e0 63 f7 eb                                      bl #0x31d584
00544600  63 3f 84 e2                                      add r3, r4, #0x18c
00544604  44 00 93 e5                                      ldr r0, [r3, #0x44]
00544608  03 00 50 e1                                      cmp r0, r3
0054460c  02 00 00 0a                                      beq #0x54461c
00544610  00 00 50 e3                                      cmp r0, #0
00544614  00 00 00 0a                                      beq #0x54461c
00544618  8c 2f f7 eb                                      bl #0x310450
0054461c  56 0f 84 e2                                      add r0, r4, #0x158
00544620  c9 fe ff eb                                      bl #0x54414c
00544624  04 30 95 e5                                      ldr r3, [r5, #4]
00544628  04 50 85 e2                                      add r5, r5, #4
0054462c  04 10 85 e2                                      add r1, r5, #4
00544630  00 30 84 e5                                      str r3, [r4]
00544634  10 20 95 e5                                      ldr r2, [r5, #0x10]
00544638  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054463c  04 00 a0 e1                                      mov r0, r4
00544640  03 20 84 e7                                      str r2, [r4, r3]
00544644  00 30 94 e5                                      ldr r3, [r4]
00544648  14 20 95 e5                                      ldr r2, [r5, #0x14]
0054464c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00544650  03 20 84 e7                                      str r2, [r4, r3]
00544654  71 d2 ff eb                                      bl #0x539020
00544658  04 00 a0 e1                                      mov r0, r4
0054465c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005446dc, declared_size=332, range_size=332, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox9swapItemsEjj
; demangled: glitch::gui::CGUIListBox::swapItems(unsigned int, unsigned int)
; decoder-mode: arm
005446dc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005446e0  58 a1 90 e5                                      ldr sl, [r0, #0x158]
005446e4  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
005446e8  02 70 a0 e1                                      mov r7, r2
005446ec  60 d0 4d e2                                      sub sp, sp, #0x60
005446f0  03 30 6a e0                                      rsb r3, sl, r3
005446f4  c3 32 a0 e1                                      asr r3, r3, #5
005446f8  00 40 a0 e1                                      mov r4, r0
005446fc  03 21 83 e0                                      add r2, r3, r3, lsl #2
00544700  02 22 82 e0                                      add r2, r2, r2, lsl #4
00544704  02 24 82 e0                                      add r2, r2, r2, lsl #8
00544708  02 28 82 e0                                      add r2, r2, r2, lsl #16
0054470c  82 30 83 e0                                      add r3, r3, r2, lsl #1
00544710  03 00 51 e1                                      cmp r1, r3
00544714  41 00 00 2a                                      bhs #0x544820
00544718  03 00 57 e1                                      cmp r7, r3
0054471c  3f 00 00 2a                                      bhs #0x544820
00544720  60 90 a0 e3                                      mov sb, #0x60
00544724  99 01 09 e0                                      mul sb, sb, r1
00544728  40 d0 8d e5                                      str sp, [sp, #0x40]
0054472c  09 a0 8a e0                                      add sl, sl, sb
00544730  44 d0 8d e5                                      str sp, [sp, #0x44]
00544734  44 10 9a e5                                      ldr r1, [sl, #0x44]
00544738  40 20 9a e5                                      ldr r2, [sl, #0x40]
0054473c  0d 00 a0 e1                                      mov r0, sp
00544740  b9 85 f7 eb                                      bl #0x325e2c
00544744  48 30 9a e5                                      ldr r3, [sl, #0x48]
00544748  0d 60 a0 e1                                      mov r6, sp
0054474c  4c a0 8a e2                                      add sl, sl, #0x4c
00544750  51 80 8d e2                                      add r8, sp, #0x51
00544754  48 30 8d e5                                      str r3, [sp, #0x48]
00544758  00 50 a0 e3                                      mov r5, #0
0054475c  05 00 48 e2                                      sub r0, r8, #5
00544760  05 10 8a e0                                      add r1, sl, r5
00544764  05 20 a0 e3                                      mov r2, #5
00544768  05 50 85 e2                                      add r5, r5, #5
0054476c  3d 28 f7 eb                                      bl #0x30e868
00544770  14 00 55 e3                                      cmp r5, #0x14
00544774  05 80 88 e2                                      add r8, r8, #5
00544778  f7 ff ff 1a                                      bne #0x54475c
0054477c  60 30 a0 e3                                      mov r3, #0x60
00544780  58 51 94 e5                                      ldr r5, [r4, #0x158]
00544784  93 07 07 e0                                      mul r7, r3, r7
00544788  09 90 85 e0                                      add sb, r5, sb
0054478c  07 50 85 e0                                      add r5, r5, r7
00544790  05 00 59 e1                                      cmp sb, r5
00544794  03 00 00 0a                                      beq #0x5447a8
00544798  09 00 a0 e1                                      mov r0, sb
0054479c  44 10 95 e5                                      ldr r1, [r5, #0x44]
005447a0  40 20 95 e5                                      ldr r2, [r5, #0x40]
005447a4  7d 7a f7 eb                                      bl #0x3231a0
005447a8  48 30 95 e5                                      ldr r3, [r5, #0x48]
005447ac  4c c0 89 e2                                      add ip, sb, #0x4c
005447b0  4c 50 85 e2                                      add r5, r5, #0x4c
005447b4  48 30 89 e5                                      str r3, [sb, #0x48]
005447b8  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
005447bc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005447c0  00 30 95 e5                                      ldr r3, [r5]
005447c4  00 30 8c e5                                      str r3, [ip]
005447c8  58 31 94 e5                                      ldr r3, [r4, #0x158]
005447cc  07 70 83 e0                                      add r7, r3, r7
005447d0  06 00 57 e1                                      cmp r7, r6
005447d4  03 00 00 0a                                      beq #0x5447e8
005447d8  07 00 a0 e1                                      mov r0, r7
005447dc  44 10 9d e5                                      ldr r1, [sp, #0x44]
005447e0  40 20 9d e5                                      ldr r2, [sp, #0x40]
005447e4  6d 7a f7 eb                                      bl #0x3231a0
005447e8  48 30 9d e5                                      ldr r3, [sp, #0x48]
005447ec  4c c0 87 e2                                      add ip, r7, #0x4c
005447f0  4c 40 8d e2                                      add r4, sp, #0x4c
005447f4  48 30 87 e5                                      str r3, [r7, #0x48]
005447f8  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
005447fc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00544800  00 30 94 e5                                      ldr r3, [r4]
00544804  00 30 8c e5                                      str r3, [ip]
00544808  44 00 9d e5                                      ldr r0, [sp, #0x44]
0054480c  06 00 50 e1                                      cmp r0, r6
00544810  02 00 00 0a                                      beq #0x544820
00544814  00 00 50 e3                                      cmp r0, #0
00544818  00 00 00 0a                                      beq #0x544820
0054481c  0b 2f f7 eb                                      bl #0x310450
00544820  60 d0 8d e2                                      add sp, sp, #0x60
00544824  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00544828, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox7setItemEjPKwi
; demangled: glitch::gui::CGUIListBox::setItem(unsigned int, wchar_t const*, int)
; decoder-mode: arm
00544828  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0054482c  58 51 90 e5                                      ldr r5, [r0, #0x158]
00544830  5c c1 90 e5                                      ldr ip, [r0, #0x15c]
00544834  03 60 a0 e1                                      mov r6, r3
00544838  00 40 a0 e1                                      mov r4, r0
0054483c  0c c0 65 e0                                      rsb ip, r5, ip
00544840  cc c2 a0 e1                                      asr ip, ip, #5
00544844  02 80 a0 e1                                      mov r8, r2
00544848  0c 31 8c e0                                      add r3, ip, ip, lsl #2
0054484c  03 32 83 e0                                      add r3, r3, r3, lsl #4
00544850  03 34 83 e0                                      add r3, r3, r3, lsl #8
00544854  03 38 83 e0                                      add r3, r3, r3, lsl #16
00544858  83 c0 8c e0                                      add ip, ip, r3, lsl #1
0054485c  0c 00 51 e1                                      cmp r1, ip
00544860  00 00 00 3a                                      blo #0x544868
00544864  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00544868  02 00 a0 e1                                      mov r0, r2
0054486c  60 70 a0 e3                                      mov r7, #0x60
00544870  97 01 07 e0                                      mul r7, r7, r1
00544874  03 29 f7 eb                                      bl #0x30ec88
00544878  08 10 a0 e1                                      mov r1, r8
0054487c  00 21 88 e0                                      add r2, r8, r0, lsl #2
00544880  07 00 85 e0                                      add r0, r5, r7
00544884  45 7a f7 eb                                      bl #0x3231a0
00544888  58 11 94 e5                                      ldr r1, [r4, #0x158]
0054488c  04 00 a0 e1                                      mov r0, r4
00544890  07 70 81 e0                                      add r7, r1, r7
00544894  48 60 87 e5                                      str r6, [r7, #0x48]
00544898  f9 f4 ff eb                                      bl #0x541c84
0054489c  04 00 a0 e1                                      mov r0, r4
005448a0  06 10 a0 e1                                      mov r1, r6
005448a4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
005448a8  91 f5 ff ea                                      b #0x541ef4

; FUNCTION 0x005448ac, declared_size=268, range_size=268, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZNK6glitch3gui11CGUIListBox22getSerializationLabelsENS0_18EGUI_LISTBOX_COLORERSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEESB_
; demangled: glitch::gui::CGUIListBox::getSerializationLabels(glitch::gui::EGUI_LISTBOX_COLOR, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >&, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >&) const
; decoder-mode: arm
005448ac  10 40 2d e9                                      push {r4, lr}
005448b0  03 40 a0 e1                                      mov r4, r3
005448b4  03 00 51 e3                                      cmp r1, #3
005448b8  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
005448bc  33 00 00 ea                                      b #0x544990
005448c0  26 00 00 ea                                      b #0x544960
005448c4  19 00 00 ea                                      b #0x544930
005448c8  0c 00 00 ea                                      b #0x544900
005448cc  ff ff ff ea                                      b #0x5448d0
005448d0  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
005448d4  02 00 a0 e1                                      mov r0, r2
005448d8  01 10 8f e0                                      add r1, pc, r1
005448dc  0c 20 81 e2                                      add r2, r1, #0xc
005448e0  a8 70 f7 eb                                      bl #0x320b88
005448e4  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
005448e8  04 00 a0 e1                                      mov r0, r4
005448ec  01 10 8f e0                                      add r1, pc, r1
005448f0  09 20 81 e2                                      add r2, r1, #9
005448f4  a3 70 f7 eb                                      bl #0x320b88
005448f8  01 00 a0 e3                                      mov r0, #1
005448fc  10 80 bd e8                                      pop {r4, pc}
00544900  98 10 9f e5                                      ldr r1, [pc, #0x98]
00544904  02 00 a0 e1                                      mov r0, r2
00544908  01 10 8f e0                                      add r1, pc, r1
0054490c  0a 20 81 e2                                      add r2, r1, #0xa
00544910  9c 70 f7 eb                                      bl #0x320b88
00544914  88 10 9f e5                                      ldr r1, [pc, #0x88]
00544918  04 00 a0 e1                                      mov r0, r4
0054491c  01 10 8f e0                                      add r1, pc, r1
00544920  07 20 81 e2                                      add r2, r1, #7
00544924  97 70 f7 eb                                      bl #0x320b88
00544928  01 00 a0 e3                                      mov r0, #1
0054492c  10 80 bd e8                                      pop {r4, pc}
00544930  70 10 9f e5                                      ldr r1, [pc, #0x70]
00544934  02 00 a0 e1                                      mov r0, r2
00544938  01 10 8f e0                                      add r1, pc, r1
0054493c  0c 20 81 e2                                      add r2, r1, #0xc
00544940  90 70 f7 eb                                      bl #0x320b88
00544944  60 10 9f e5                                      ldr r1, [pc, #0x60]
00544948  04 00 a0 e1                                      mov r0, r4
0054494c  01 10 8f e0                                      add r1, pc, r1
00544950  09 20 81 e2                                      add r2, r1, #9
00544954  8b 70 f7 eb                                      bl #0x320b88
00544958  01 00 a0 e3                                      mov r0, #1
0054495c  10 80 bd e8                                      pop {r4, pc}
00544960  48 10 9f e5                                      ldr r1, [pc, #0x48]
00544964  02 00 a0 e1                                      mov r0, r2
00544968  01 10 8f e0                                      add r1, pc, r1
0054496c  0a 20 81 e2                                      add r2, r1, #0xa
00544970  84 70 f7 eb                                      bl #0x320b88
00544974  38 10 9f e5                                      ldr r1, [pc, #0x38]
00544978  04 00 a0 e1                                      mov r0, r4
0054497c  01 10 8f e0                                      add r1, pc, r1
00544980  07 20 81 e2                                      add r2, r1, #7
00544984  7f 70 f7 eb                                      bl #0x320b88
00544988  01 00 a0 e3                                      mov r0, #1
0054498c  10 80 bd e8                                      pop {r4, pc}
00544990  00 00 a0 e3                                      mov r0, #0
00544994  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00544998  e8 9b 39 00 e4 9b 39 00 a0 9b 39 00 9c 9b 39 00  .byte 0xe8, 0x9b, 0x39, 0x00, 0xe4, 0x9b, 0x39, 0x00, 0xa0, 0x9b, 0x39, 0x00, 0x9c, 0x9b, 0x39, 0x00
005449a8  50 9b 39 00 4c 9b 39 00 08 9b 39 00 04 9b 39 00  .byte 0x50, 0x9b, 0x39, 0x00, 0x4c, 0x9b, 0x39, 0x00, 0x08, 0x9b, 0x39, 0x00, 0x04, 0x9b, 0x39, 0x00

; FUNCTION 0x005449b8, declared_size=964, range_size=964, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZNK6glitch3gui11CGUIListBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIListBox::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005449b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005449bc  9c 33 9f e5                                      ldr r3, [pc, #0x39c]
005449c0  9c c3 9f e5                                      ldr ip, [pc, #0x39c]
005449c4  6c d0 4d e2                                      sub sp, sp, #0x6c
005449c8  03 30 8f e0                                      add r3, pc, r3
005449cc  0c 30 8d e5                                      str r3, [sp, #0xc]
005449d0  0c 30 93 e7                                      ldr r3, [r3, ip]
005449d4  01 50 a0 e1                                      mov r5, r1
005449d8  00 60 a0 e1                                      mov r6, r0
005449dc  00 30 93 e5                                      ldr r3, [r3]
005449e0  14 c0 8d e5                                      str ip, [sp, #0x14]
005449e4  64 30 8d e5                                      str r3, [sp, #0x64]
005449e8  b3 c1 ff eb                                      bl #0x5350bc
005449ec  74 13 9f e5                                      ldr r1, [pc, #0x374]
005449f0  05 00 a0 e1                                      mov r0, r5
005449f4  81 21 d6 e5                                      ldrb r2, [r6, #0x181]
005449f8  01 10 8f e0                                      add r1, pc, r1
005449fc  00 30 a0 e3                                      mov r3, #0
00544a00  00 c0 95 e5                                      ldr ip, [r5]
00544a04  0f e0 a0 e1                                      mov lr, pc
00544a08  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00544a0c  58 13 9f e5                                      ldr r1, [pc, #0x358]
00544a10  05 00 a0 e1                                      mov r0, r5
00544a14  82 21 d6 e5                                      ldrb r2, [r6, #0x182]
00544a18  01 10 8f e0                                      add r1, pc, r1
00544a1c  00 30 a0 e3                                      mov r3, #0
00544a20  00 c0 95 e5                                      ldr ip, [r5]
00544a24  0f e0 a0 e1                                      mov lr, pc
00544a28  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00544a2c  3c 13 9f e5                                      ldr r1, [pc, #0x33c]
00544a30  05 00 a0 e1                                      mov r0, r5
00544a34  88 21 d6 e5                                      ldrb r2, [r6, #0x188]
00544a38  01 10 8f e0                                      add r1, pc, r1
00544a3c  00 30 a0 e3                                      mov r3, #0
00544a40  00 c0 95 e5                                      ldr ip, [r5]
00544a44  0f e0 a0 e1                                      mov lr, pc
00544a48  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00544a4c  58 31 96 e5                                      ldr r3, [r6, #0x158]
00544a50  5c 21 96 e5                                      ldr r2, [r6, #0x15c]
00544a54  18 13 9f e5                                      ldr r1, [pc, #0x318]
00544a58  00 c0 95 e5                                      ldr ip, [r5]
00544a5c  02 20 63 e0                                      rsb r2, r3, r2
00544a60  c2 22 a0 e1                                      asr r2, r2, #5
00544a64  00 30 a0 e3                                      mov r3, #0
00544a68  02 e1 82 e0                                      add lr, r2, r2, lsl #2
00544a6c  01 10 8f e0                                      add r1, pc, r1
00544a70  0e e2 8e e0                                      add lr, lr, lr, lsl #4
00544a74  05 00 a0 e1                                      mov r0, r5
00544a78  0e e4 8e e0                                      add lr, lr, lr, lsl #8
00544a7c  0e e8 8e e0                                      add lr, lr, lr, lsl #16
00544a80  8e 20 82 e0                                      add r2, r2, lr, lsl #1
00544a84  0f e0 a0 e1                                      mov lr, pc
00544a88  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00544a8c  5c 21 96 e5                                      ldr r2, [r6, #0x15c]
00544a90  58 31 96 e5                                      ldr r3, [r6, #0x158]
00544a94  02 30 63 e0                                      rsb r3, r3, r2
00544a98  c3 32 a0 e1                                      asr r3, r3, #5
00544a9c  03 21 83 e0                                      add r2, r3, r3, lsl #2
00544aa0  02 22 82 e0                                      add r2, r2, r2, lsl #4
00544aa4  02 24 82 e0                                      add r2, r2, r2, lsl #8
00544aa8  02 28 82 e0                                      add r2, r2, r2, lsl #16
00544aac  82 30 83 e0                                      add r3, r3, r2, lsl #1
00544ab0  00 00 53 e3                                      cmp r3, #0
00544ab4  85 00 00 0a                                      beq #0x544cd0
00544ab8  b8 32 9f e5                                      ldr r3, [pc, #0x2b8]
00544abc  00 b0 a0 e3                                      mov fp, #0
00544ac0  08 b0 8d e5                                      str fp, [sp, #8]
00544ac4  03 30 8f e0                                      add r3, pc, r3
00544ac8  04 30 83 e2                                      add r3, r3, #4
00544acc  10 30 8d e5                                      str r3, [sp, #0x10]
00544ad0  4c a0 8d e2                                      add sl, sp, #0x4c
00544ad4  34 80 8d e2                                      add r8, sp, #0x34
00544ad8  1c 70 8d e2                                      add r7, sp, #0x1c
00544adc  08 e0 9d e5                                      ldr lr, [sp, #8]
00544ae0  0a 00 a0 e1                                      mov r0, sl
00544ae4  10 10 9d e5                                      ldr r1, [sp, #0x10]
00544ae8  7e e0 af e6                                      sxtb lr, lr
00544aec  04 e0 8d e5                                      str lr, [sp, #4]
00544af0  5c a0 8d e5                                      str sl, [sp, #0x5c]
00544af4  60 a0 8d e5                                      str sl, [sp, #0x60]
00544af8  f3 f8 ff eb                                      bl #0x542ecc
00544afc  0a 00 a0 e1                                      mov r0, sl
00544b00  04 10 9d e5                                      ldr r1, [sp, #4]
00544b04  27 c5 fb eb                                      bl #0x435fa8
00544b08  58 31 96 e5                                      ldr r3, [r6, #0x158]
00544b0c  00 c0 95 e5                                      ldr ip, [r5]
00544b10  05 00 a0 e1                                      mov r0, r5
00544b14  0b 30 83 e0                                      add r3, r3, fp
00544b18  44 20 93 e5                                      ldr r2, [r3, #0x44]
00544b1c  60 10 9d e5                                      ldr r1, [sp, #0x60]
00544b20  00 30 a0 e3                                      mov r3, #0
00544b24  0f e0 a0 e1                                      mov lr, pc
00544b28  94 f0 9c e5                                      ldr pc, [ip, #0x94]
00544b2c  00 40 a0 e3                                      mov r4, #0
00544b30  08 00 a0 e1                                      mov r0, r8
00544b34  10 10 a0 e3                                      mov r1, #0x10
00544b38  44 80 8d e5                                      str r8, [sp, #0x44]
00544b3c  48 80 8d e5                                      str r8, [sp, #0x48]
00544b40  98 6f f7 eb                                      bl #0x3209a8
00544b44  44 30 9d e5                                      ldr r3, [sp, #0x44]
00544b48  00 20 a0 e3                                      mov r2, #0
00544b4c  07 00 a0 e1                                      mov r0, r7
00544b50  00 20 c3 e5                                      strb r2, [r3]
00544b54  10 10 a0 e3                                      mov r1, #0x10
00544b58  2c 70 8d e5                                      str r7, [sp, #0x2c]
00544b5c  30 70 8d e5                                      str r7, [sp, #0x30]
00544b60  90 6f f7 eb                                      bl #0x3209a8
00544b64  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00544b68  00 c0 a0 e3                                      mov ip, #0
00544b6c  06 00 a0 e1                                      mov r0, r6
00544b70  00 c0 c3 e5                                      strb ip, [r3]
00544b74  04 10 a0 e1                                      mov r1, r4
00544b78  08 20 a0 e1                                      mov r2, r8
00544b7c  07 30 a0 e1                                      mov r3, r7
00544b80  49 ff ff eb                                      bl #0x5448ac
00544b84  00 00 50 e3                                      cmp r0, #0
00544b88  60 00 00 0a                                      beq #0x544d10
00544b8c  44 20 9d e5                                      ldr r2, [sp, #0x44]
00544b90  48 10 9d e5                                      ldr r1, [sp, #0x48]
00544b94  0a 00 a0 e1                                      mov r0, sl
00544b98  fa 6f f7 eb                                      bl #0x320b88
00544b9c  0a 00 a0 e1                                      mov r0, sl
00544ba0  04 10 9d e5                                      ldr r1, [sp, #4]
00544ba4  ff c4 fb eb                                      bl #0x435fa8
00544ba8  58 31 96 e5                                      ldr r3, [r6, #0x158]
00544bac  04 91 84 e0                                      add sb, r4, r4, lsl #2
00544bb0  09 30 83 e0                                      add r3, r3, sb
00544bb4  0b 30 83 e0                                      add r3, r3, fp
00544bb8  4c 20 d3 e5                                      ldrb r2, [r3, #0x4c]
00544bbc  00 00 52 e3                                      cmp r2, #0
00544bc0  4b 00 00 0a                                      beq #0x544cf4
00544bc4  00 30 a0 e3                                      mov r3, #0
00544bc8  00 c0 95 e5                                      ldr ip, [r5]
00544bcc  60 10 9d e5                                      ldr r1, [sp, #0x60]
00544bd0  05 00 a0 e1                                      mov r0, r5
00544bd4  01 20 a0 e3                                      mov r2, #1
00544bd8  0f e0 a0 e1                                      mov lr, pc
00544bdc  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00544be0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00544be4  30 10 9d e5                                      ldr r1, [sp, #0x30]
00544be8  0a 00 a0 e1                                      mov r0, sl
00544bec  e5 6f f7 eb                                      bl #0x320b88
00544bf0  0a 00 a0 e1                                      mov r0, sl
00544bf4  04 10 9d e5                                      ldr r1, [sp, #4]
00544bf8  ea c4 fb eb                                      bl #0x435fa8
00544bfc  58 31 96 e5                                      ldr r3, [r6, #0x158]
00544c00  05 00 a0 e1                                      mov r0, r5
00544c04  09 90 83 e0                                      add sb, r3, sb
00544c08  0b 90 89 e0                                      add sb, sb, fp
00544c0c  48 90 89 e2                                      add sb, sb, #0x48
00544c10  06 c0 d9 e5                                      ldrb ip, [sb, #6]
00544c14  05 10 d9 e5                                      ldrb r1, [sb, #5]
00544c18  07 30 d9 e5                                      ldrb r3, [sb, #7]
00544c1c  08 e0 d9 e5                                      ldrb lr, [sb, #8]
00544c20  0c 14 81 e1                                      orr r1, r1, ip, lsl #8
00544c24  03 18 81 e1                                      orr r1, r1, r3, lsl #16
00544c28  0e 2c 81 e1                                      orr r2, r1, lr, lsl #24
00544c2c  00 30 a0 e3                                      mov r3, #0
00544c30  60 10 9d e5                                      ldr r1, [sp, #0x60]
00544c34  00 c0 95 e5                                      ldr ip, [r5]
00544c38  0f e0 a0 e1                                      mov lr, pc
00544c3c  18 f1 9c e5                                      ldr pc, [ip, #0x118]
00544c40  30 00 9d e5                                      ldr r0, [sp, #0x30]
00544c44  07 00 50 e1                                      cmp r0, r7
00544c48  02 00 00 0a                                      beq #0x544c58
00544c4c  00 00 50 e3                                      cmp r0, #0
00544c50  00 00 00 0a                                      beq #0x544c58
00544c54  fd 2d f7 eb                                      bl #0x310450
00544c58  48 00 9d e5                                      ldr r0, [sp, #0x48]
00544c5c  08 00 50 e1                                      cmp r0, r8
00544c60  02 00 00 0a                                      beq #0x544c70
00544c64  00 00 50 e3                                      cmp r0, #0
00544c68  00 00 00 0a                                      beq #0x544c70
00544c6c  f7 2d f7 eb                                      bl #0x310450
00544c70  01 40 84 e2                                      add r4, r4, #1
00544c74  04 00 54 e3                                      cmp r4, #4
00544c78  ac ff ff 1a                                      bne #0x544b30
00544c7c  60 00 9d e5                                      ldr r0, [sp, #0x60]
00544c80  0a 00 50 e1                                      cmp r0, sl
00544c84  02 00 00 0a                                      beq #0x544c94
00544c88  00 00 50 e3                                      cmp r0, #0
00544c8c  00 00 00 0a                                      beq #0x544c94
00544c90  ee 2d f7 eb                                      bl #0x310450
00544c94  5c 21 96 e5                                      ldr r2, [r6, #0x15c]
00544c98  58 31 96 e5                                      ldr r3, [r6, #0x158]
00544c9c  08 10 9d e5                                      ldr r1, [sp, #8]
00544ca0  60 b0 8b e2                                      add fp, fp, #0x60
00544ca4  02 30 63 e0                                      rsb r3, r3, r2
00544ca8  c3 32 a0 e1                                      asr r3, r3, #5
00544cac  01 10 81 e2                                      add r1, r1, #1
00544cb0  03 21 83 e0                                      add r2, r3, r3, lsl #2
00544cb4  08 10 8d e5                                      str r1, [sp, #8]
00544cb8  02 22 82 e0                                      add r2, r2, r2, lsl #4
00544cbc  02 24 82 e0                                      add r2, r2, r2, lsl #8
00544cc0  02 28 82 e0                                      add r2, r2, r2, lsl #16
00544cc4  82 30 83 e0                                      add r3, r3, r2, lsl #1
00544cc8  03 00 51 e1                                      cmp r1, r3
00544ccc  82 ff ff 3a                                      blo #0x544adc
00544cd0  14 20 9d e5                                      ldr r2, [sp, #0x14]
00544cd4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00544cd8  02 30 9c e7                                      ldr r3, [ip, r2]
00544cdc  64 20 9d e5                                      ldr r2, [sp, #0x64]
00544ce0  00 30 93 e5                                      ldr r3, [r3]
00544ce4  03 00 52 e1                                      cmp r2, r3
00544ce8  1b 00 00 1a                                      bne #0x544d5c
00544cec  6c d0 8d e2                                      add sp, sp, #0x6c
00544cf0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00544cf4  00 c0 95 e5                                      ldr ip, [r5]
00544cf8  05 00 a0 e1                                      mov r0, r5
00544cfc  60 10 9d e5                                      ldr r1, [sp, #0x60]
00544d00  02 30 a0 e1                                      mov r3, r2
00544d04  0f e0 a0 e1                                      mov lr, pc
00544d08  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00544d0c  cb ff ff ea                                      b #0x544c40
00544d10  30 00 9d e5                                      ldr r0, [sp, #0x30]
00544d14  07 00 50 e1                                      cmp r0, r7
00544d18  02 00 00 0a                                      beq #0x544d28
00544d1c  00 00 50 e3                                      cmp r0, #0
00544d20  00 00 00 0a                                      beq #0x544d28
00544d24  c9 2d f7 eb                                      bl #0x310450
00544d28  48 00 9d e5                                      ldr r0, [sp, #0x48]
00544d2c  08 00 50 e1                                      cmp r0, r8
00544d30  02 00 00 0a                                      beq #0x544d40
00544d34  00 00 50 e3                                      cmp r0, #0
00544d38  00 00 00 0a                                      beq #0x544d40
00544d3c  c3 2d f7 eb                                      bl #0x310450
00544d40  60 00 9d e5                                      ldr r0, [sp, #0x60]
00544d44  0a 00 50 e1                                      cmp r0, sl
00544d48  e0 ff ff 0a                                      beq #0x544cd0
00544d4c  00 00 50 e3                                      cmp r0, #0
00544d50  de ff ff 0a                                      beq #0x544cd0
00544d54  bd 2d f7 eb                                      bl #0x310450
00544d58  dc ff ff ea                                      b #0x544cd0
00544d5c  6b 25 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00544d60  c8 00 45 00 ac 40 00 00 e8 9a 39 00 d8 9a 39 00  .byte 0xc8, 0x00, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe8, 0x9a, 0x39, 0x00, 0xd8, 0x9a, 0x39, 0x00
00544d70  c8 9a 39 00 a4 9a 39 00 4c 42 38 00              .byte 0xc8, 0x9a, 0x39, 0x00, 0xa4, 0x9a, 0x39, 0x00, 0x4c, 0x42, 0x38, 0x00

; FUNCTION 0x00544d7c, declared_size=1064, range_size=1064, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIListBox::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00544d7c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00544d80  00 34 9f e5                                      ldr r3, [pc, #0x400]
00544d84  00 c4 9f e5                                      ldr ip, [pc, #0x400]
00544d88  49 df 4d e2                                      sub sp, sp, #0x124
00544d8c  03 30 8f e0                                      add r3, pc, r3
00544d90  24 c0 8d e5                                      str ip, [sp, #0x24]
00544d94  0c c0 93 e7                                      ldr ip, [r3, ip]
00544d98  01 70 a0 e1                                      mov r7, r1
00544d9c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00544da0  00 10 9c e5                                      ldr r1, [ip]
00544da4  00 30 90 e5                                      ldr r3, [r0]
00544da8  00 60 a0 e1                                      mov r6, r0
00544dac  1c 11 8d e5                                      str r1, [sp, #0x11c]
00544db0  02 40 a0 e1                                      mov r4, r2
00544db4  0f e0 a0 e1                                      mov lr, pc
00544db8  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00544dbc  cc 13 9f e5                                      ldr r1, [pc, #0x3cc]
00544dc0  00 30 97 e5                                      ldr r3, [r7]
00544dc4  07 00 a0 e1                                      mov r0, r7
00544dc8  01 10 8f e0                                      add r1, pc, r1
00544dcc  0f e0 a0 e1                                      mov lr, pc
00544dd0  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00544dd4  b8 13 9f e5                                      ldr r1, [pc, #0x3b8]
00544dd8  81 01 c6 e5                                      strb r0, [r6, #0x181]
00544ddc  00 30 97 e5                                      ldr r3, [r7]
00544de0  01 10 8f e0                                      add r1, pc, r1
00544de4  07 00 a0 e1                                      mov r0, r7
00544de8  0f e0 a0 e1                                      mov lr, pc
00544dec  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00544df0  a0 13 9f e5                                      ldr r1, [pc, #0x3a0]
00544df4  82 01 c6 e5                                      strb r0, [r6, #0x182]
00544df8  00 30 97 e5                                      ldr r3, [r7]
00544dfc  01 10 8f e0                                      add r1, pc, r1
00544e00  07 00 a0 e1                                      mov r0, r7
00544e04  0f e0 a0 e1                                      mov lr, pc
00544e08  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00544e0c  04 20 a0 e1                                      mov r2, r4
00544e10  88 01 c6 e5                                      strb r0, [r6, #0x188]
00544e14  07 10 a0 e1                                      mov r1, r7
00544e18  06 00 a0 e1                                      mov r0, r6
00544e1c  85 d2 ff eb                                      bl #0x539838
00544e20  74 13 9f e5                                      ldr r1, [pc, #0x374]
00544e24  00 30 97 e5                                      ldr r3, [r7]
00544e28  07 00 a0 e1                                      mov r0, r7
00544e2c  01 10 8f e0                                      add r1, pc, r1
00544e30  0f e0 a0 e1                                      mov lr, pc
00544e34  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00544e38  00 00 50 e3                                      cmp r0, #0
00544e3c  20 00 8d e5                                      str r0, [sp, #0x20]
00544e40  93 00 00 da                                      ble #0x545094
00544e44  54 33 9f e5                                      ldr r3, [pc, #0x354]
00544e48  00 e0 a0 e3                                      mov lr, #0
00544e4c  2c 10 8d e2                                      add r1, sp, #0x2c
00544e50  03 30 8f e0                                      add r3, pc, r3
00544e54  04 30 83 e2                                      add r3, r3, #4
00544e58  8c 20 8d e2                                      add r2, sp, #0x8c
00544e5c  04 e0 8d e5                                      str lr, [sp, #4]
00544e60  10 e0 8d e5                                      str lr, [sp, #0x10]
00544e64  18 30 8d e5                                      str r3, [sp, #0x18]
00544e68  41 af 8d e2                                      add sl, sp, #0x104
00544e6c  0c 10 8d e5                                      str r1, [sp, #0xc]
00544e70  14 20 8d e5                                      str r2, [sp, #0x14]
00544e74  ec 80 8d e2                                      add r8, sp, #0xec
00544e78  d4 50 8d e2                                      add r5, sp, #0xd4
00544e7c  0e b0 a0 e1                                      mov fp, lr
00544e80  0a 00 a0 e1                                      mov r0, sl
00544e84  18 10 9d e5                                      ldr r1, [sp, #0x18]
00544e88  14 a1 8d e5                                      str sl, [sp, #0x114]
00544e8c  18 a1 8d e5                                      str sl, [sp, #0x118]
00544e90  0d f8 ff eb                                      bl #0x542ecc
00544e94  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00544e98  10 10 a0 e3                                      mov r1, #0x10
00544e9c  6c 00 8d e5                                      str r0, [sp, #0x6c]
00544ea0  70 00 8d e5                                      str r0, [sp, #0x70]
00544ea4  9d 6e f7 eb                                      bl #0x320920
00544ea8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00544eac  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
00544eb0  00 e0 e0 e3                                      mvn lr, #0
00544eb4  7c c0 af e6                                      sxtb ip, ip
00544eb8  08 c0 8d e5                                      str ip, [sp, #8]
00544ebc  00 b0 83 e5                                      str fp, [r3]
00544ec0  0a 00 a0 e1                                      mov r0, sl
00544ec4  08 10 9d e5                                      ldr r1, [sp, #8]
00544ec8  74 e0 8d e5                                      str lr, [sp, #0x74]
00544ecc  78 b0 cd e5                                      strb fp, [sp, #0x78]
00544ed0  7d b0 cd e5                                      strb fp, [sp, #0x7d]
00544ed4  82 b0 cd e5                                      strb fp, [sp, #0x82]
00544ed8  87 b0 cd e5                                      strb fp, [sp, #0x87]
00544edc  31 c4 fb eb                                      bl #0x435fa8
00544ee0  00 30 97 e5                                      ldr r3, [r7]
00544ee4  07 10 a0 e1                                      mov r1, r7
00544ee8  18 21 9d e5                                      ldr r2, [sp, #0x118]
00544eec  14 00 9d e5                                      ldr r0, [sp, #0x14]
00544ef0  0f e0 a0 e1                                      mov lr, pc
00544ef4  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00544ef8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00544efc  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
00544f00  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
00544f04  a5 78 f7 eb                                      bl #0x3231a0
00544f08  d0 00 9d e5                                      ldr r0, [sp, #0xd0]
00544f0c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00544f10  03 00 50 e1                                      cmp r0, r3
00544f14  02 00 00 0a                                      beq #0x544f24
00544f18  00 00 50 e3                                      cmp r0, #0
00544f1c  00 00 00 0a                                      beq #0x544f24
00544f20  4a 2d f7 eb                                      bl #0x310450
00544f24  00 30 96 e5                                      ldr r3, [r6]
00544f28  06 00 a0 e1                                      mov r0, r6
00544f2c  70 10 9d e5                                      ldr r1, [sp, #0x70]
00544f30  74 20 9d e5                                      ldr r2, [sp, #0x74]
00544f34  0f e0 a0 e1                                      mov lr, pc
00544f38  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00544f3c  00 40 a0 e3                                      mov r4, #0
00544f40  08 00 a0 e1                                      mov r0, r8
00544f44  10 10 a0 e3                                      mov r1, #0x10
00544f48  fc 80 8d e5                                      str r8, [sp, #0xfc]
00544f4c  00 81 8d e5                                      str r8, [sp, #0x100]
00544f50  94 6e f7 eb                                      bl #0x3209a8
00544f54  fc 30 9d e5                                      ldr r3, [sp, #0xfc]
00544f58  05 00 a0 e1                                      mov r0, r5
00544f5c  10 10 a0 e3                                      mov r1, #0x10
00544f60  00 b0 c3 e5                                      strb fp, [r3]
00544f64  e4 50 8d e5                                      str r5, [sp, #0xe4]
00544f68  e8 50 8d e5                                      str r5, [sp, #0xe8]
00544f6c  8d 6e f7 eb                                      bl #0x3209a8
00544f70  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
00544f74  06 00 a0 e1                                      mov r0, r6
00544f78  04 10 a0 e1                                      mov r1, r4
00544f7c  00 b0 c3 e5                                      strb fp, [r3]
00544f80  08 20 a0 e1                                      mov r2, r8
00544f84  05 30 a0 e1                                      mov r3, r5
00544f88  47 fe ff eb                                      bl #0x5448ac
00544f8c  00 00 50 e3                                      cmp r0, #0
00544f90  61 00 00 0a                                      beq #0x54511c
00544f94  fc 20 9d e5                                      ldr r2, [sp, #0xfc]
00544f98  00 11 9d e5                                      ldr r1, [sp, #0x100]
00544f9c  0a 00 a0 e1                                      mov r0, sl
00544fa0  f8 6e f7 eb                                      bl #0x320b88
00544fa4  0a 00 a0 e1                                      mov r0, sl
00544fa8  08 10 9d e5                                      ldr r1, [sp, #8]
00544fac  fd c3 fb eb                                      bl #0x435fa8
00544fb0  58 31 96 e5                                      ldr r3, [r6, #0x158]
00544fb4  04 c0 9d e5                                      ldr ip, [sp, #4]
00544fb8  00 20 97 e5                                      ldr r2, [r7]
00544fbc  18 11 9d e5                                      ldr r1, [sp, #0x118]
00544fc0  0c 30 83 e0                                      add r3, r3, ip
00544fc4  00 30 8d e5                                      str r3, [sp]
00544fc8  07 00 a0 e1                                      mov r0, r7
00544fcc  0f e0 a0 e1                                      mov lr, pc
00544fd0  e4 f0 92 e5                                      ldr pc, [r2, #0xe4]
00544fd4  00 30 9d e5                                      ldr r3, [sp]
00544fd8  04 91 84 e0                                      add sb, r4, r4, lsl #2
00544fdc  09 30 83 e0                                      add r3, r3, sb
00544fe0  4c 00 c3 e5                                      strb r0, [r3, #0x4c]
00544fe4  58 31 96 e5                                      ldr r3, [r6, #0x158]
00544fe8  04 10 9d e5                                      ldr r1, [sp, #4]
00544fec  09 30 83 e0                                      add r3, r3, sb
00544ff0  01 30 83 e0                                      add r3, r3, r1
00544ff4  4c 30 d3 e5                                      ldrb r3, [r3, #0x4c]
00544ff8  00 00 53 e3                                      cmp r3, #0
00544ffc  2d 00 00 1a                                      bne #0x5450b8
00545000  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
00545004  05 00 50 e1                                      cmp r0, r5
00545008  02 00 00 0a                                      beq #0x545018
0054500c  00 00 50 e3                                      cmp r0, #0
00545010  00 00 00 0a                                      beq #0x545018
00545014  0d 2d f7 eb                                      bl #0x310450
00545018  00 01 9d e5                                      ldr r0, [sp, #0x100]
0054501c  08 00 50 e1                                      cmp r0, r8
00545020  02 00 00 0a                                      beq #0x545030
00545024  00 00 50 e3                                      cmp r0, #0
00545028  00 00 00 0a                                      beq #0x545030
0054502c  07 2d f7 eb                                      bl #0x310450
00545030  01 40 84 e2                                      add r4, r4, #1
00545034  04 00 54 e3                                      cmp r4, #4
00545038  c0 ff ff 1a                                      bne #0x544f40
0054503c  70 00 9d e5                                      ldr r0, [sp, #0x70]
00545040  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00545044  0c 00 50 e1                                      cmp r0, ip
00545048  02 00 00 0a                                      beq #0x545058
0054504c  00 00 50 e3                                      cmp r0, #0
00545050  00 00 00 0a                                      beq #0x545058
00545054  fd 2c f7 eb                                      bl #0x310450
00545058  18 01 9d e5                                      ldr r0, [sp, #0x118]
0054505c  0a 00 50 e1                                      cmp r0, sl
00545060  02 00 00 0a                                      beq #0x545070
00545064  00 00 50 e3                                      cmp r0, #0
00545068  00 00 00 0a                                      beq #0x545070
0054506c  f7 2c f7 eb                                      bl #0x310450
00545070  10 10 9d e5                                      ldr r1, [sp, #0x10]
00545074  04 30 9d e5                                      ldr r3, [sp, #4]
00545078  20 20 9d e5                                      ldr r2, [sp, #0x20]
0054507c  01 10 81 e2                                      add r1, r1, #1
00545080  60 30 83 e2                                      add r3, r3, #0x60
00545084  02 00 51 e1                                      cmp r1, r2
00545088  10 10 8d e5                                      str r1, [sp, #0x10]
0054508c  04 30 8d e5                                      str r3, [sp, #4]
00545090  7a ff ff 1a                                      bne #0x544e80
00545094  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00545098  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0054509c  1c 21 9d e5                                      ldr r2, [sp, #0x11c]
005450a0  0c 30 91 e7                                      ldr r3, [r1, ip]
005450a4  00 30 93 e5                                      ldr r3, [r3]
005450a8  03 00 52 e1                                      cmp r2, r3
005450ac  34 00 00 1a                                      bne #0x545184
005450b0  49 df 8d e2                                      add sp, sp, #0x124
005450b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005450b8  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
005450bc  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
005450c0  0a 00 a0 e1                                      mov r0, sl
005450c4  af 6e f7 eb                                      bl #0x320b88
005450c8  0a 00 a0 e1                                      mov r0, sl
005450cc  08 10 9d e5                                      ldr r1, [sp, #8]
005450d0  b4 c3 fb eb                                      bl #0x435fa8
005450d4  58 21 96 e5                                      ldr r2, [r6, #0x158]
005450d8  00 30 97 e5                                      ldr r3, [r7]
005450dc  18 11 9d e5                                      ldr r1, [sp, #0x118]
005450e0  09 90 82 e0                                      add sb, r2, sb
005450e4  04 20 9d e5                                      ldr r2, [sp, #4]
005450e8  07 00 a0 e1                                      mov r0, r7
005450ec  02 90 89 e0                                      add sb, sb, r2
005450f0  0f e0 a0 e1                                      mov lr, pc
005450f4  24 f1 93 e5                                      ldr pc, [r3, #0x124]
005450f8  48 90 89 e2                                      add sb, sb, #0x48
005450fc  50 2c e7 e7                                      ubfx r2, r0, #0x18, #8
00545100  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00545104  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
00545108  08 20 c9 e5                                      strb r2, [sb, #8]
0054510c  06 10 c9 e5                                      strb r1, [sb, #6]
00545110  07 30 c9 e5                                      strb r3, [sb, #7]
00545114  05 00 c9 e5                                      strb r0, [sb, #5]
00545118  b8 ff ff ea                                      b #0x545000
0054511c  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
00545120  05 00 50 e1                                      cmp r0, r5
00545124  02 00 00 0a                                      beq #0x545134
00545128  00 00 50 e3                                      cmp r0, #0
0054512c  00 00 00 0a                                      beq #0x545134
00545130  c6 2c f7 eb                                      bl #0x310450
00545134  00 01 9d e5                                      ldr r0, [sp, #0x100]
00545138  08 00 50 e1                                      cmp r0, r8
0054513c  02 00 00 0a                                      beq #0x54514c
00545140  00 00 50 e3                                      cmp r0, #0
00545144  00 00 00 0a                                      beq #0x54514c
00545148  c0 2c f7 eb                                      bl #0x310450
0054514c  70 00 9d e5                                      ldr r0, [sp, #0x70]
00545150  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00545154  03 00 50 e1                                      cmp r0, r3
00545158  02 00 00 0a                                      beq #0x545168
0054515c  00 00 50 e3                                      cmp r0, #0
00545160  00 00 00 0a                                      beq #0x545168
00545164  b9 2c f7 eb                                      bl #0x310450
00545168  18 01 9d e5                                      ldr r0, [sp, #0x118]
0054516c  0a 00 50 e1                                      cmp r0, sl
00545170  c7 ff ff 0a                                      beq #0x545094
00545174  00 00 50 e3                                      cmp r0, #0
00545178  c5 ff ff 0a                                      beq #0x545094
0054517c  b3 2c f7 eb                                      bl #0x310450
00545180  c3 ff ff ea                                      b #0x545094
00545184  61 24 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00545188  04 fd 44 00 ac 40 00 00 18 97 39 00 10 97 39 00  .byte 0x04, 0xfd, 0x44, 0x00, 0xac, 0x40, 0x00, 0x00, 0x18, 0x97, 0x39, 0x00, 0x10, 0x97, 0x39, 0x00
00545198  04 97 39 00 e4 96 39 00 c0 3e 38 00              .byte 0x04, 0x97, 0x39, 0x00, 0xe4, 0x96, 0x39, 0x00, 0xc0, 0x3e, 0x38, 0x00

; FUNCTION 0x00545304, declared_size=244, range_size=244, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox10insertItemEjPKwi
; demangled: glitch::gui::CGUIListBox::insertItem(unsigned int, wchar_t const*, int)
; decoder-mode: arm
00545304  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00545308  60 d0 4d e2                                      sub sp, sp, #0x60
0054530c  00 50 a0 e1                                      mov r5, r0
00545310  01 60 a0 e1                                      mov r6, r1
00545314  0d 00 a0 e1                                      mov r0, sp
00545318  10 10 a0 e3                                      mov r1, #0x10
0054531c  02 80 a0 e1                                      mov r8, r2
00545320  03 70 a0 e1                                      mov r7, r3
00545324  40 d0 8d e5                                      str sp, [sp, #0x40]
00545328  44 d0 8d e5                                      str sp, [sp, #0x44]
0054532c  7b 6d f7 eb                                      bl #0x320920
00545330  40 20 9d e5                                      ldr r2, [sp, #0x40]
00545334  00 30 a0 e3                                      mov r3, #0
00545338  08 00 a0 e1                                      mov r0, r8
0054533c  00 30 82 e5                                      str r3, [r2]
00545340  00 20 e0 e3                                      mvn r2, #0
00545344  5b 30 cd e5                                      strb r3, [sp, #0x5b]
00545348  4c 30 cd e5                                      strb r3, [sp, #0x4c]
0054534c  51 30 cd e5                                      strb r3, [sp, #0x51]
00545350  56 30 cd e5                                      strb r3, [sp, #0x56]
00545354  48 20 8d e5                                      str r2, [sp, #0x48]
00545358  4a 26 f7 eb                                      bl #0x30ec88
0054535c  08 10 a0 e1                                      mov r1, r8
00545360  00 21 88 e0                                      add r2, r8, r0, lsl #2
00545364  0d 00 a0 e1                                      mov r0, sp
00545368  8c 77 f7 eb                                      bl #0x3231a0
0054536c  5c 31 95 e5                                      ldr r3, [r5, #0x15c]
00545370  60 21 95 e5                                      ldr r2, [r5, #0x160]
00545374  58 11 95 e5                                      ldr r1, [r5, #0x158]
00545378  0d 40 a0 e1                                      mov r4, sp
0054537c  02 20 63 e0                                      rsb r2, r3, r2
00545380  c2 22 a0 e1                                      asr r2, r2, #5
00545384  60 30 a0 e3                                      mov r3, #0x60
00545388  93 16 21 e0                                      mla r1, r3, r6, r1
0054538c  02 31 82 e0                                      add r3, r2, r2, lsl #2
00545390  48 70 8d e5                                      str r7, [sp, #0x48]
00545394  03 32 83 e0                                      add r3, r3, r3, lsl #4
00545398  56 0f 85 e2                                      add r0, r5, #0x158
0054539c  03 34 83 e0                                      add r3, r3, r3, lsl #8
005453a0  03 38 83 e0                                      add r3, r3, r3, lsl #16
005453a4  83 30 92 e0                                      adds r3, r2, r3, lsl #1
005453a8  0f 00 00 1a                                      bne #0x5453ec
005453ac  0d 20 a0 e1                                      mov r2, sp
005453b0  7b ff ff eb                                      bl #0x5451a4
005453b4  05 00 a0 e1                                      mov r0, r5
005453b8  31 f2 ff eb                                      bl #0x541c84
005453bc  05 00 a0 e1                                      mov r0, r5
005453c0  07 10 a0 e1                                      mov r1, r7
005453c4  ca f2 ff eb                                      bl #0x541ef4
005453c8  44 00 9d e5                                      ldr r0, [sp, #0x44]
005453cc  04 00 50 e1                                      cmp r0, r4
005453d0  02 00 00 0a                                      beq #0x5453e0
005453d4  00 00 50 e3                                      cmp r0, #0
005453d8  00 00 00 0a                                      beq #0x5453e0
005453dc  1b 2c f7 eb                                      bl #0x310450
005453e0  06 00 a0 e1                                      mov r0, r6
005453e4  60 d0 8d e2                                      add sp, sp, #0x60
005453e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005453ec  0d 20 a0 e1                                      mov r2, sp
005453f0  fc f8 ff eb                                      bl #0x5437e8
005453f4  ee ff ff ea                                      b #0x5453b4

; FUNCTION 0x00545480, declared_size=216, range_size=216, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZN6glitch3gui11CGUIListBox7addItemEPKwi
; demangled: glitch::gui::CGUIListBox::addItem(wchar_t const*, int)
; decoder-mode: arm
00545480  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00545484  64 d0 4d e2                                      sub sp, sp, #0x64
00545488  00 50 a0 e1                                      mov r5, r0
0054548c  01 60 a0 e1                                      mov r6, r1
00545490  0d 00 a0 e1                                      mov r0, sp
00545494  10 10 a0 e3                                      mov r1, #0x10
00545498  02 70 a0 e1                                      mov r7, r2
0054549c  40 d0 8d e5                                      str sp, [sp, #0x40]
005454a0  44 d0 8d e5                                      str sp, [sp, #0x44]
005454a4  1d 6d f7 eb                                      bl #0x320920
005454a8  40 20 9d e5                                      ldr r2, [sp, #0x40]
005454ac  00 30 a0 e3                                      mov r3, #0
005454b0  06 00 a0 e1                                      mov r0, r6
005454b4  00 30 82 e5                                      str r3, [r2]
005454b8  00 20 e0 e3                                      mvn r2, #0
005454bc  5b 30 cd e5                                      strb r3, [sp, #0x5b]
005454c0  4c 30 cd e5                                      strb r3, [sp, #0x4c]
005454c4  51 30 cd e5                                      strb r3, [sp, #0x51]
005454c8  56 30 cd e5                                      strb r3, [sp, #0x56]
005454cc  48 20 8d e5                                      str r2, [sp, #0x48]
005454d0  ec 25 f7 eb                                      bl #0x30ec88
005454d4  06 10 a0 e1                                      mov r1, r6
005454d8  00 21 86 e0                                      add r2, r6, r0, lsl #2
005454dc  0d 00 a0 e1                                      mov r0, sp
005454e0  2e 77 f7 eb                                      bl #0x3231a0
005454e4  0d 10 a0 e1                                      mov r1, sp
005454e8  56 0f 85 e2                                      add r0, r5, #0x158
005454ec  48 70 8d e5                                      str r7, [sp, #0x48]
005454f0  c0 ff ff eb                                      bl #0x5453f8
005454f4  05 00 a0 e1                                      mov r0, r5
005454f8  e1 f1 ff eb                                      bl #0x541c84
005454fc  05 00 a0 e1                                      mov r0, r5
00545500  07 10 a0 e1                                      mov r1, r7
00545504  7a f2 ff eb                                      bl #0x541ef4
00545508  58 31 95 e5                                      ldr r3, [r5, #0x158]
0054550c  5c 21 95 e5                                      ldr r2, [r5, #0x15c]
00545510  44 00 9d e5                                      ldr r0, [sp, #0x44]
00545514  0d 40 a0 e1                                      mov r4, sp
00545518  02 30 63 e0                                      rsb r3, r3, r2
0054551c  c3 32 a0 e1                                      asr r3, r3, #5
00545520  04 00 50 e1                                      cmp r0, r4
00545524  03 41 83 e0                                      add r4, r3, r3, lsl #2
00545528  04 42 84 e0                                      add r4, r4, r4, lsl #4
0054552c  04 44 84 e0                                      add r4, r4, r4, lsl #8
00545530  04 48 84 e0                                      add r4, r4, r4, lsl #16
00545534  84 40 83 e0                                      add r4, r3, r4, lsl #1
00545538  01 40 44 e2                                      sub r4, r4, #1
0054553c  02 00 00 0a                                      beq #0x54554c
00545540  00 00 50 e3                                      cmp r0, #0
00545544  00 00 00 0a                                      beq #0x54554c
00545548  c0 2b f7 eb                                      bl #0x310450
0054554c  04 00 a0 e1                                      mov r0, r4
00545550  64 d0 8d e2                                      add sp, sp, #0x64
00545554  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00545558, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZTv0_n20_N6glitch3gui11CGUIListBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIListBox::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00545558  00 30 90 e5                                      ldr r3, [r0]
0054555c  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00545560  03 00 80 e0                                      add r0, r0, r3
00545564  04 fe ff ea                                      b #0x544d7c

; FUNCTION 0x00545568, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZTv0_n16_NK6glitch3gui11CGUIListBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIListBox::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00545568  00 30 90 e5                                      ldr r3, [r0]
0054556c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00545570  03 00 80 e0                                      add r0, r0, r3
00545574  0f fd ff ea                                      b #0x5449b8

; FUNCTION 0x00545578, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZTv0_n24_N6glitch3gui11CGUIListBoxD0Ev
; demangled: virtual thunk to glitch::gui::CGUIListBox::~CGUIListBox()
; decoder-mode: arm
00545578  00 30 90 e5                                      ldr r3, [r0]
0054557c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00545580  03 00 80 e0                                      add r0, r0, r3
00545584  fb fb ff ea                                      b #0x544578

; FUNCTION 0x00545588, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZTv0_n12_N6glitch3gui11CGUIListBoxD0Ev
; demangled: virtual thunk to glitch::gui::CGUIListBox::~CGUIListBox()
; decoder-mode: arm
00545588  00 30 90 e5                                      ldr r3, [r0]
0054558c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00545590  03 00 80 e0                                      add r0, r0, r3
00545594  f7 fb ff ea                                      b #0x544578

; FUNCTION 0x00545598, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZTv0_n24_N6glitch3gui11CGUIListBoxD1Ev
; demangled: virtual thunk to glitch::gui::CGUIListBox::~CGUIListBox()
; decoder-mode: arm
00545598  00 30 90 e5                                      ldr r3, [r0]
0054559c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005455a0  03 00 80 e0                                      add r0, r0, r3
005455a4  bc fb ff ea                                      b #0x54449c

; FUNCTION 0x005455a8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIListBox
; alias: _ZTv0_n12_N6glitch3gui11CGUIListBoxD1Ev
; demangled: virtual thunk to glitch::gui::CGUIListBox::~CGUIListBox()
; decoder-mode: arm
005455a8  00 30 90 e5                                      ldr r3, [r0]
005455ac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005455b0  03 00 80 e0                                      add r0, r0, r3
005455b4  b8 fb ff ea                                      b #0x54449c
