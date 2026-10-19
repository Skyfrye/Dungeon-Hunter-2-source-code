; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00548c34, declared_size=348, range_size=348, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZNK6glitch3gui13CGUIScrollBar18getPosFromMousePosEii
; demangled: glitch::gui::CGUIScrollBar::getPosFromMousePos(int, int) const
; decoder-mode: arm
00548c34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00548c38  71 31 d0 e5                                      ldrb r3, [r0, #0x171]
00548c3c  00 40 a0 e1                                      mov r4, r0
00548c40  01 50 a0 e1                                      mov r5, r1
00548c44  00 00 53 e3                                      cmp r3, #0
00548c48  02 60 a0 e1                                      mov r6, r2
00548c4c  27 00 00 1a                                      bne #0x548cf0
00548c50  28 30 94 e5                                      ldr r3, [r4, #0x28]
00548c54  30 00 90 e5                                      ldr r0, [r0, #0x30]
00548c58  00 00 63 e0                                      rsb r0, r3, r0
00548c5c  40 17 f7 eb                                      bl #0x30e964
00548c60  00 50 a0 e1                                      mov r5, r0
00548c64  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00548c68  06 00 60 e0                                      rsb r0, r0, r6
00548c6c  3c 17 f7 eb                                      bl #0x30e964
00548c70  bf 14 a0 e3                                      mov r1, #0xbf000000
00548c74  00 60 a0 e1                                      mov r6, r0
00548c78  03 15 81 e2                                      add r1, r1, #0xc00000
00548c7c  05 00 a0 e1                                      mov r0, r5
00548c80  39 18 f7 eb                                      bl #0x30ed6c
00548c84  00 10 a0 e1                                      mov r1, r0
00548c88  06 00 a0 e1                                      mov r0, r6
00548c8c  c4 17 f7 eb                                      bl #0x30eba4
00548c90  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00548c94  00 60 a0 e1                                      mov r6, r0
00548c98  34 00 94 e5                                      ldr r0, [r4, #0x34]
00548c9c  00 00 63 e0                                      rsb r0, r3, r0
00548ca0  2f 17 f7 eb                                      bl #0x30e964
00548ca4  03 11 a0 e3                                      mov r1, #0xc0000000
00548ca8  00 70 a0 e1                                      mov r7, r0
00548cac  01 15 81 e2                                      add r1, r1, #0x400000
00548cb0  05 00 a0 e1                                      mov r0, r5
00548cb4  2c 18 f7 eb                                      bl #0x30ed6c
00548cb8  00 10 a0 e1                                      mov r1, r0
00548cbc  07 00 a0 e1                                      mov r0, r7
00548cc0  b7 17 f7 eb                                      bl #0x30eba4
00548cc4  00 10 a0 e1                                      mov r1, r0
00548cc8  06 00 a0 e1                                      mov r0, r6
00548ccc  f0 17 f7 eb                                      bl #0x30ec94
00548cd0  00 50 a0 e1                                      mov r5, r0
00548cd4  80 01 94 e5                                      ldr r0, [r4, #0x180]
00548cd8  21 17 f7 eb                                      bl #0x30e964
00548cdc  00 10 a0 e1                                      mov r1, r0
00548ce0  05 00 a0 e1                                      mov r0, r5
00548ce4  20 18 f7 eb                                      bl #0x30ed6c
00548ce8  f7 15 f7 eb                                      bl #0x30e4cc
00548cec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00548cf0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00548cf4  34 00 90 e5                                      ldr r0, [r0, #0x34]
00548cf8  00 00 63 e0                                      rsb r0, r3, r0
00548cfc  18 17 f7 eb                                      bl #0x30e964
00548d00  00 60 a0 e1                                      mov r6, r0
00548d04  38 00 94 e5                                      ldr r0, [r4, #0x38]
00548d08  05 00 60 e0                                      rsb r0, r0, r5
00548d0c  14 17 f7 eb                                      bl #0x30e964
00548d10  bf 14 a0 e3                                      mov r1, #0xbf000000
00548d14  00 50 a0 e1                                      mov r5, r0
00548d18  03 15 81 e2                                      add r1, r1, #0xc00000
00548d1c  06 00 a0 e1                                      mov r0, r6
00548d20  11 18 f7 eb                                      bl #0x30ed6c
00548d24  00 10 a0 e1                                      mov r1, r0
00548d28  05 00 a0 e1                                      mov r0, r5
00548d2c  9c 17 f7 eb                                      bl #0x30eba4
00548d30  28 30 94 e5                                      ldr r3, [r4, #0x28]
00548d34  00 50 a0 e1                                      mov r5, r0
00548d38  30 00 94 e5                                      ldr r0, [r4, #0x30]
00548d3c  00 00 63 e0                                      rsb r0, r3, r0
00548d40  07 17 f7 eb                                      bl #0x30e964
00548d44  03 11 a0 e3                                      mov r1, #0xc0000000
00548d48  00 70 a0 e1                                      mov r7, r0
00548d4c  01 15 81 e2                                      add r1, r1, #0x400000
00548d50  06 00 a0 e1                                      mov r0, r6
00548d54  04 18 f7 eb                                      bl #0x30ed6c
00548d58  00 10 a0 e1                                      mov r1, r0
00548d5c  07 00 a0 e1                                      mov r0, r7
00548d60  8f 17 f7 eb                                      bl #0x30eba4
00548d64  00 10 a0 e1                                      mov r1, r0
00548d68  05 00 a0 e1                                      mov r0, r5
00548d6c  c8 17 f7 eb                                      bl #0x30ec94
00548d70  00 50 a0 e1                                      mov r5, r0
00548d74  80 01 94 e5                                      ldr r0, [r4, #0x180]
00548d78  f9 16 f7 eb                                      bl #0x30e964
00548d7c  00 10 a0 e1                                      mov r1, r0
00548d80  05 00 a0 e1                                      mov r0, r5
00548d84  f8 17 f7 eb                                      bl #0x30ed6c
00548d88  cf 15 f7 eb                                      bl #0x30e4cc
00548d8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00548d90, declared_size=412, range_size=412, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBar6setPosEi
; demangled: glitch::gui::CGUIScrollBar::setPos(int)
; decoder-mode: arm
00548d90  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00548d94  00 50 51 e2                                      subs r5, r1, #0
00548d98  00 50 a0 b3                                      movlt r5, #0
00548d9c  00 40 a0 e1                                      mov r4, r0
00548da0  74 51 80 b5                                      strlt r5, [r0, #0x174]
00548da4  04 00 00 ba                                      blt #0x548dbc
00548da8  80 31 90 e5                                      ldr r3, [r0, #0x180]
00548dac  03 00 55 e1                                      cmp r5, r3
00548db0  74 31 80 c5                                      strgt r3, [r0, #0x174]
00548db4  03 50 a0 c1                                      movgt r5, r3
00548db8  74 51 80 d5                                      strle r5, [r0, #0x174]
00548dbc  71 31 d4 e5                                      ldrb r3, [r4, #0x171]
00548dc0  00 00 53 e3                                      cmp r3, #0
00548dc4  2f 00 00 1a                                      bne #0x548e88
00548dc8  80 a1 94 e5                                      ldr sl, [r4, #0x180]
00548dcc  00 00 5a e3                                      cmp sl, #0
00548dd0  14 00 00 1a                                      bne #0x548e28
00548dd4  30 70 94 e5                                      ldr r7, [r4, #0x30]
00548dd8  28 60 94 e5                                      ldr r6, [r4, #0x28]
00548ddc  00 a0 a0 e3                                      mov sl, #0
00548de0  07 80 66 e0                                      rsb r8, r6, r7
00548de4  05 00 a0 e1                                      mov r0, r5
00548de8  dd 16 f7 eb                                      bl #0x30e964
00548dec  0a 10 a0 e1                                      mov r1, sl
00548df0  dd 17 f7 eb                                      bl #0x30ed6c
00548df4  00 50 a0 e1                                      mov r5, r0
00548df8  08 00 a0 e1                                      mov r0, r8
00548dfc  d8 16 f7 eb                                      bl #0x30e964
00548e00  3f 14 a0 e3                                      mov r1, #0x3f000000
00548e04  d8 17 f7 eb                                      bl #0x30ed6c
00548e08  00 10 a0 e1                                      mov r1, r0
00548e0c  05 00 a0 e1                                      mov r0, r5
00548e10  63 17 f7 eb                                      bl #0x30eba4
00548e14  ac 15 f7 eb                                      bl #0x30e4cc
00548e18  07 60 66 e0                                      rsb r6, r6, r7
00548e1c  7c 61 84 e5                                      str r6, [r4, #0x17c]
00548e20  78 01 84 e5                                      str r0, [r4, #0x178]
00548e24  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00548e28  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00548e2c  34 00 94 e5                                      ldr r0, [r4, #0x34]
00548e30  30 70 94 e5                                      ldr r7, [r4, #0x30]
00548e34  28 60 94 e5                                      ldr r6, [r4, #0x28]
00548e38  00 00 63 e0                                      rsb r0, r3, r0
00548e3c  c8 16 f7 eb                                      bl #0x30e964
00548e40  07 80 66 e0                                      rsb r8, r6, r7
00548e44  00 90 a0 e1                                      mov sb, r0
00548e48  08 00 a0 e1                                      mov r0, r8
00548e4c  c4 16 f7 eb                                      bl #0x30e964
00548e50  03 11 a0 e3                                      mov r1, #0xc0000000
00548e54  01 15 81 e2                                      add r1, r1, #0x400000
00548e58  c3 17 f7 eb                                      bl #0x30ed6c
00548e5c  00 10 a0 e1                                      mov r1, r0
00548e60  09 00 a0 e1                                      mov r0, sb
00548e64  4e 17 f7 eb                                      bl #0x30eba4
00548e68  00 90 a0 e1                                      mov sb, r0
00548e6c  0a 00 a0 e1                                      mov r0, sl
00548e70  bb 16 f7 eb                                      bl #0x30e964
00548e74  00 10 a0 e1                                      mov r1, r0
00548e78  09 00 a0 e1                                      mov r0, sb
00548e7c  84 17 f7 eb                                      bl #0x30ec94
00548e80  00 a0 a0 e1                                      mov sl, r0
00548e84  d6 ff ff ea                                      b #0x548de4
00548e88  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00548e8c  34 60 94 e5                                      ldr r6, [r4, #0x34]
00548e90  06 60 63 e0                                      rsb r6, r3, r6
00548e94  06 00 a0 e1                                      mov r0, r6
00548e98  b1 16 f7 eb                                      bl #0x30e964
00548e9c  00 70 a0 e1                                      mov r7, r0
00548ea0  05 00 a0 e1                                      mov r0, r5
00548ea4  ae 16 f7 eb                                      bl #0x30e964
00548ea8  28 30 94 e5                                      ldr r3, [r4, #0x28]
00548eac  00 50 a0 e1                                      mov r5, r0
00548eb0  30 00 94 e5                                      ldr r0, [r4, #0x30]
00548eb4  00 00 63 e0                                      rsb r0, r3, r0
00548eb8  a9 16 f7 eb                                      bl #0x30e964
00548ebc  03 11 a0 e3                                      mov r1, #0xc0000000
00548ec0  00 80 a0 e1                                      mov r8, r0
00548ec4  01 15 81 e2                                      add r1, r1, #0x400000
00548ec8  07 00 a0 e1                                      mov r0, r7
00548ecc  a6 17 f7 eb                                      bl #0x30ed6c
00548ed0  00 10 a0 e1                                      mov r1, r0
00548ed4  08 00 a0 e1                                      mov r0, r8
00548ed8  31 17 f7 eb                                      bl #0x30eba4
00548edc  00 80 a0 e1                                      mov r8, r0
00548ee0  80 01 94 e5                                      ldr r0, [r4, #0x180]
00548ee4  9e 16 f7 eb                                      bl #0x30e964
00548ee8  00 10 a0 e1                                      mov r1, r0
00548eec  08 00 a0 e1                                      mov r0, r8
00548ef0  67 17 f7 eb                                      bl #0x30ec94
00548ef4  00 10 a0 e1                                      mov r1, r0
00548ef8  05 00 a0 e1                                      mov r0, r5
00548efc  9a 17 f7 eb                                      bl #0x30ed6c
00548f00  3f 14 a0 e3                                      mov r1, #0x3f000000
00548f04  00 50 a0 e1                                      mov r5, r0
00548f08  07 00 a0 e1                                      mov r0, r7
00548f0c  96 17 f7 eb                                      bl #0x30ed6c
00548f10  00 10 a0 e1                                      mov r1, r0
00548f14  05 00 a0 e1                                      mov r0, r5
00548f18  21 17 f7 eb                                      bl #0x30eba4
00548f1c  6a 15 f7 eb                                      bl #0x30e4cc
00548f20  7c 61 84 e5                                      str r6, [r4, #0x17c]
00548f24  78 01 84 e5                                      str r0, [r4, #0x178]
00548f28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00548f2c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZNK6glitch3gui13CGUIScrollBar12getSmallStepEv
; demangled: glitch::gui::CGUIScrollBar::getSmallStep() const
; decoder-mode: arm
00548f2c  84 01 90 e5                                      ldr r0, [r0, #0x184]
00548f30  1e ff 2f e1                                      bx lr

; FUNCTION 0x00548f34, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBar12setSmallStepEi
; demangled: glitch::gui::CGUIScrollBar::setSmallStep(int)
; decoder-mode: arm
00548f34  00 00 51 e3                                      cmp r1, #0
00548f38  0a 30 a0 d3                                      movle r3, #0xa
00548f3c  84 11 80 c5                                      strgt r1, [r0, #0x184]
00548f40  84 31 80 d5                                      strle r3, [r0, #0x184]
00548f44  1e ff 2f e1                                      bx lr

; FUNCTION 0x00548f48, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZNK6glitch3gui13CGUIScrollBar12getLargeStepEv
; demangled: glitch::gui::CGUIScrollBar::getLargeStep() const
; decoder-mode: arm
00548f48  88 01 90 e5                                      ldr r0, [r0, #0x188]
00548f4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00548f50, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBar12setLargeStepEi
; demangled: glitch::gui::CGUIScrollBar::setLargeStep(int)
; decoder-mode: arm
00548f50  00 00 51 e3                                      cmp r1, #0
00548f54  32 30 a0 d3                                      movle r3, #0x32
00548f58  88 11 80 c5                                      strgt r1, [r0, #0x188]
00548f5c  88 31 80 d5                                      strle r3, [r0, #0x188]
00548f60  1e ff 2f e1                                      bx lr

; FUNCTION 0x00548f64, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZNK6glitch3gui13CGUIScrollBar6getMaxEv
; demangled: glitch::gui::CGUIScrollBar::getMax() const
; decoder-mode: arm
00548f64  80 01 90 e5                                      ldr r0, [r0, #0x180]
00548f68  1e ff 2f e1                                      bx lr

; FUNCTION 0x00548f6c, declared_size=100, range_size=100, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBar6setMaxEi
; demangled: glitch::gui::CGUIScrollBar::setMax(int)
; decoder-mode: arm
00548f6c  70 40 2d e9                                      push {r4, r5, r6, lr}
00548f70  00 00 51 e3                                      cmp r1, #0
00548f74  58 31 90 e5                                      ldr r3, [r0, #0x158]
00548f78  00 50 a0 d3                                      movle r5, #0
00548f7c  80 11 80 c5                                      strgt r1, [r0, #0x180]
00548f80  01 50 a0 c3                                      movgt r5, #1
00548f84  80 51 80 d5                                      strle r5, [r0, #0x180]
00548f88  00 40 a0 e1                                      mov r4, r0
00548f8c  05 10 a0 e1                                      mov r1, r5
00548f90  03 00 a0 e1                                      mov r0, r3
00548f94  00 30 93 e5                                      ldr r3, [r3]
00548f98  0f e0 a0 e1                                      mov lr, pc
00548f9c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00548fa0  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00548fa4  05 10 a0 e1                                      mov r1, r5
00548fa8  03 00 a0 e1                                      mov r0, r3
00548fac  00 30 93 e5                                      ldr r3, [r3]
00548fb0  0f e0 a0 e1                                      mov lr, pc
00548fb4  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00548fb8  04 00 a0 e1                                      mov r0, r4
00548fbc  00 30 94 e5                                      ldr r3, [r4]
00548fc0  74 11 94 e5                                      ldr r1, [r4, #0x174]
00548fc4  0f e0 a0 e1                                      mov lr, pc
00548fc8  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00548fcc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00548fd0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZNK6glitch3gui13CGUIScrollBar6getPosEv
; demangled: glitch::gui::CGUIScrollBar::getPos() const
; decoder-mode: arm
00548fd0  74 01 90 e5                                      ldr r0, [r0, #0x174]
00548fd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00548fd8, declared_size=200, range_size=200, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZNK6glitch3gui13CGUIScrollBar19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIScrollBar::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00548fd8  70 40 2d e9                                      push {r4, r5, r6, lr}
00548fdc  01 40 a0 e1                                      mov r4, r1
00548fe0  00 50 a0 e1                                      mov r5, r0
00548fe4  34 b0 ff eb                                      bl #0x5350bc
00548fe8  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
00548fec  04 00 a0 e1                                      mov r0, r4
00548ff0  71 21 d5 e5                                      ldrb r2, [r5, #0x171]
00548ff4  00 c0 94 e5                                      ldr ip, [r4]
00548ff8  01 10 8f e0                                      add r1, pc, r1
00548ffc  00 30 a0 e3                                      mov r3, #0
00549000  0f e0 a0 e1                                      mov lr, pc
00549004  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00549008  80 10 9f e5                                      ldr r1, [pc, #0x80]
0054900c  04 00 a0 e1                                      mov r0, r4
00549010  74 21 95 e5                                      ldr r2, [r5, #0x174]
00549014  00 c0 94 e5                                      ldr ip, [r4]
00549018  01 10 8f e0                                      add r1, pc, r1
0054901c  00 30 a0 e3                                      mov r3, #0
00549020  0f e0 a0 e1                                      mov lr, pc
00549024  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00549028  64 10 9f e5                                      ldr r1, [pc, #0x64]
0054902c  04 00 a0 e1                                      mov r0, r4
00549030  80 21 95 e5                                      ldr r2, [r5, #0x180]
00549034  00 c0 94 e5                                      ldr ip, [r4]
00549038  01 10 8f e0                                      add r1, pc, r1
0054903c  00 30 a0 e3                                      mov r3, #0
00549040  0f e0 a0 e1                                      mov lr, pc
00549044  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00549048  48 10 9f e5                                      ldr r1, [pc, #0x48]
0054904c  04 00 a0 e1                                      mov r0, r4
00549050  84 21 95 e5                                      ldr r2, [r5, #0x184]
00549054  00 c0 94 e5                                      ldr ip, [r4]
00549058  01 10 8f e0                                      add r1, pc, r1
0054905c  00 30 a0 e3                                      mov r3, #0
00549060  0f e0 a0 e1                                      mov lr, pc
00549064  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00549068  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0054906c  04 00 a0 e1                                      mov r0, r4
00549070  88 21 95 e5                                      ldr r2, [r5, #0x188]
00549074  01 10 8f e0                                      add r1, pc, r1
00549078  00 c0 94 e5                                      ldr ip, [r4]
0054907c  00 30 a0 e3                                      mov r3, #0
00549080  0f e0 a0 e1                                      mov lr, pc
00549084  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00549088  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0054908c  78 55 39 00 c0 39 38 00 48 06 39 00 28 55 39 00  .byte 0x78, 0x55, 0x39, 0x00, 0xc0, 0x39, 0x38, 0x00, 0x48, 0x06, 0x39, 0x00, 0x28, 0x55, 0x39, 0x00
0054909c  1c 55 39 00                                      .byte 0x1c, 0x55, 0x39, 0x00

; FUNCTION 0x005490c0, declared_size=1524, range_size=1524, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBar15refreshControlsEv
; demangled: glitch::gui::CGUIScrollBar::refreshControls()
; decoder-mode: arm
005490c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005490c4  50 31 90 e5                                      ldr r3, [r0, #0x150]
005490c8  98 d0 4d e2                                      sub sp, sp, #0x98
005490cc  00 20 e0 e3                                      mvn r2, #0
005490d0  97 20 cd e5                                      strb r2, [sp, #0x97]
005490d4  94 20 cd e5                                      strb r2, [sp, #0x94]
005490d8  95 20 cd e5                                      strb r2, [sp, #0x95]
005490dc  96 20 cd e5                                      strb r2, [sp, #0x96]
005490e0  00 40 a0 e1                                      mov r4, r0
005490e4  03 00 a0 e1                                      mov r0, r3
005490e8  00 30 93 e5                                      ldr r3, [r3]
005490ec  0f e0 a0 e1                                      mov lr, pc
005490f0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005490f4  00 50 50 e2                                      subs r5, r0, #0
005490f8  05 60 a0 01                                      moveq r6, r5
005490fc  11 00 00 0a                                      beq #0x549148
00549100  00 30 95 e5                                      ldr r3, [r5]
00549104  0f e0 a0 e1                                      mov lr, pc
00549108  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0054910c  00 30 95 e5                                      ldr r3, [r5]
00549110  12 10 a0 e3                                      mov r1, #0x12
00549114  00 60 a0 e1                                      mov r6, r0
00549118  05 00 a0 e1                                      mov r0, r5
0054911c  0f e0 a0 e1                                      mov lr, pc
00549120  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00549124  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00549128  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054912c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00549130  09 10 cd e5                                      strb r1, [sp, #9]
00549134  0a 20 cd e5                                      strb r2, [sp, #0xa]
00549138  0b 30 cd e5                                      strb r3, [sp, #0xb]
0054913c  08 00 cd e5                                      strb r0, [sp, #8]
00549140  08 30 9d e5                                      ldr r3, [sp, #8]
00549144  94 30 8d e5                                      str r3, [sp, #0x94]
00549148  71 31 d4 e5                                      ldrb r3, [r4, #0x171]
0054914c  00 00 53 e3                                      cmp r3, #0
00549150  76 00 00 0a                                      beq #0x549330
00549154  58 71 94 e5                                      ldr r7, [r4, #0x158]
00549158  34 80 94 e5                                      ldr r8, [r4, #0x34]
0054915c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00549160  00 00 57 e3                                      cmp r7, #0
00549164  08 80 63 e0                                      rsb r8, r3, r8
00549168  38 01 00 0a                                      beq #0x549650
0054916c  00 00 56 e3                                      cmp r6, #0
00549170  22 00 00 0a                                      beq #0x549200
00549174  07 00 a0 e1                                      mov r0, r7
00549178  00 30 97 e5                                      ldr r3, [r7]
0054917c  06 10 a0 e1                                      mov r1, r6
00549180  0f e0 a0 e1                                      mov lr, pc
00549184  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00549188  58 a1 94 e5                                      ldr sl, [r4, #0x158]
0054918c  07 10 a0 e3                                      mov r1, #7
00549190  00 30 95 e5                                      ldr r3, [r5]
00549194  00 20 9a e5                                      ldr r2, [sl]
00549198  05 00 a0 e1                                      mov r0, r5
0054919c  00 70 a0 e3                                      mov r7, #0
005491a0  94 90 92 e5                                      ldr sb, [r2, #0x94]
005491a4  0f e0 a0 e1                                      mov lr, pc
005491a8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005491ac  07 10 a0 e1                                      mov r1, r7
005491b0  00 20 a0 e1                                      mov r2, r0
005491b4  00 70 8d e5                                      str r7, [sp]
005491b8  0a 00 a0 e1                                      mov r0, sl
005491bc  94 30 9d e5                                      ldr r3, [sp, #0x94]
005491c0  39 ff 2f e1                                      blx sb
005491c4  58 91 94 e5                                      ldr sb, [r4, #0x158]
005491c8  07 10 a0 e3                                      mov r1, #7
005491cc  00 30 95 e5                                      ldr r3, [r5]
005491d0  00 20 99 e5                                      ldr r2, [sb]
005491d4  05 00 a0 e1                                      mov r0, r5
005491d8  94 a0 92 e5                                      ldr sl, [r2, #0x94]
005491dc  0f e0 a0 e1                                      mov lr, pc
005491e0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005491e4  00 70 8d e5                                      str r7, [sp]
005491e8  00 20 a0 e1                                      mov r2, r0
005491ec  01 10 a0 e3                                      mov r1, #1
005491f0  09 00 a0 e1                                      mov r0, sb
005491f4  94 30 9d e5                                      ldr r3, [sp, #0x94]
005491f8  3a ff 2f e1                                      blx sl
005491fc  58 71 94 e5                                      ldr r7, [r4, #0x158]
00549200  07 00 a0 e1                                      mov r0, r7
00549204  74 10 8d e2                                      add r1, sp, #0x74
00549208  00 70 a0 e3                                      mov r7, #0
0054920c  74 70 8d e5                                      str r7, [sp, #0x74]
00549210  78 70 8d e5                                      str r7, [sp, #0x78]
00549214  7c 80 8d e5                                      str r8, [sp, #0x7c]
00549218  80 80 8d e5                                      str r8, [sp, #0x80]
0054921c  01 a0 a0 e3                                      mov sl, #1
00549220  46 ad ff eb                                      bl #0x534740
00549224  58 01 94 e5                                      ldr r0, [r4, #0x158]
00549228  07 10 a0 e1                                      mov r1, r7
0054922c  07 20 a0 e1                                      mov r2, r7
00549230  07 30 a0 e1                                      mov r3, r7
00549234  00 a0 8d e5                                      str sl, [sp]
00549238  80 ad ff eb                                      bl #0x534840
0054923c  5c 71 94 e5                                      ldr r7, [r4, #0x15c]
00549240  00 00 57 e3                                      cmp r7, #0
00549244  ae 00 00 0a                                      beq #0x549504
00549248  00 00 56 e3                                      cmp r6, #0
0054924c  22 00 00 0a                                      beq #0x5492dc
00549250  07 00 a0 e1                                      mov r0, r7
00549254  06 10 a0 e1                                      mov r1, r6
00549258  00 30 97 e5                                      ldr r3, [r7]
0054925c  0f e0 a0 e1                                      mov lr, pc
00549260  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00549264  5c a1 94 e5                                      ldr sl, [r4, #0x15c]
00549268  00 30 95 e5                                      ldr r3, [r5]
0054926c  08 10 a0 e3                                      mov r1, #8
00549270  00 20 9a e5                                      ldr r2, [sl]
00549274  05 00 a0 e1                                      mov r0, r5
00549278  00 60 a0 e3                                      mov r6, #0
0054927c  94 70 92 e5                                      ldr r7, [r2, #0x94]
00549280  0f e0 a0 e1                                      mov lr, pc
00549284  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00549288  94 30 9d e5                                      ldr r3, [sp, #0x94]
0054928c  00 20 a0 e1                                      mov r2, r0
00549290  06 10 a0 e1                                      mov r1, r6
00549294  0a 00 a0 e1                                      mov r0, sl
00549298  00 60 8d e5                                      str r6, [sp]
0054929c  37 ff 2f e1                                      blx r7
005492a0  5c 71 94 e5                                      ldr r7, [r4, #0x15c]
005492a4  00 30 95 e5                                      ldr r3, [r5]
005492a8  05 00 a0 e1                                      mov r0, r5
005492ac  00 20 97 e5                                      ldr r2, [r7]
005492b0  08 10 a0 e3                                      mov r1, #8
005492b4  94 50 92 e5                                      ldr r5, [r2, #0x94]
005492b8  0f e0 a0 e1                                      mov lr, pc
005492bc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005492c0  00 60 8d e5                                      str r6, [sp]
005492c4  00 20 a0 e1                                      mov r2, r0
005492c8  01 10 a0 e3                                      mov r1, #1
005492cc  07 00 a0 e1                                      mov r0, r7
005492d0  94 30 9d e5                                      ldr r3, [sp, #0x94]
005492d4  35 ff 2f e1                                      blx r5
005492d8  5c 71 94 e5                                      ldr r7, [r4, #0x15c]
005492dc  30 20 94 e5                                      ldr r2, [r4, #0x30]
005492e0  28 30 94 e5                                      ldr r3, [r4, #0x28]
005492e4  07 00 a0 e1                                      mov r0, r7
005492e8  00 50 a0 e3                                      mov r5, #0
005492ec  02 30 63 e0                                      rsb r3, r3, r2
005492f0  03 20 68 e0                                      rsb r2, r8, r3
005492f4  54 10 8d e2                                      add r1, sp, #0x54
005492f8  54 20 8d e5                                      str r2, [sp, #0x54]
005492fc  5c 30 8d e5                                      str r3, [sp, #0x5c]
00549300  60 80 8d e5                                      str r8, [sp, #0x60]
00549304  58 50 8d e5                                      str r5, [sp, #0x58]
00549308  0c ad ff eb                                      bl #0x534740
0054930c  01 c0 a0 e3                                      mov ip, #1
00549310  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
00549314  0c 10 a0 e1                                      mov r1, ip
00549318  05 30 a0 e1                                      mov r3, r5
0054931c  0c 20 a0 e1                                      mov r2, ip
00549320  00 c0 8d e5                                      str ip, [sp]
00549324  45 ad ff eb                                      bl #0x534840
00549328  98 d0 8d e2                                      add sp, sp, #0x98
0054932c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00549330  58 71 94 e5                                      ldr r7, [r4, #0x158]
00549334  30 80 94 e5                                      ldr r8, [r4, #0x30]
00549338  28 30 94 e5                                      ldr r3, [r4, #0x28]
0054933c  00 00 57 e3                                      cmp r7, #0
00549340  08 80 63 e0                                      rsb r8, r3, r8
00549344  8b 00 00 0a                                      beq #0x549578
00549348  00 00 56 e3                                      cmp r6, #0
0054934c  22 00 00 0a                                      beq #0x5493dc
00549350  07 00 a0 e1                                      mov r0, r7
00549354  00 30 97 e5                                      ldr r3, [r7]
00549358  06 10 a0 e1                                      mov r1, r6
0054935c  0f e0 a0 e1                                      mov lr, pc
00549360  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00549364  58 a1 94 e5                                      ldr sl, [r4, #0x158]
00549368  05 10 a0 e3                                      mov r1, #5
0054936c  00 30 95 e5                                      ldr r3, [r5]
00549370  00 20 9a e5                                      ldr r2, [sl]
00549374  05 00 a0 e1                                      mov r0, r5
00549378  00 70 a0 e3                                      mov r7, #0
0054937c  94 90 92 e5                                      ldr sb, [r2, #0x94]
00549380  0f e0 a0 e1                                      mov lr, pc
00549384  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00549388  07 10 a0 e1                                      mov r1, r7
0054938c  00 20 a0 e1                                      mov r2, r0
00549390  00 70 8d e5                                      str r7, [sp]
00549394  0a 00 a0 e1                                      mov r0, sl
00549398  94 30 9d e5                                      ldr r3, [sp, #0x94]
0054939c  39 ff 2f e1                                      blx sb
005493a0  58 91 94 e5                                      ldr sb, [r4, #0x158]
005493a4  05 10 a0 e3                                      mov r1, #5
005493a8  00 30 95 e5                                      ldr r3, [r5]
005493ac  00 20 99 e5                                      ldr r2, [sb]
005493b0  05 00 a0 e1                                      mov r0, r5
005493b4  94 a0 92 e5                                      ldr sl, [r2, #0x94]
005493b8  0f e0 a0 e1                                      mov lr, pc
005493bc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005493c0  00 70 8d e5                                      str r7, [sp]
005493c4  00 20 a0 e1                                      mov r2, r0
005493c8  01 10 a0 e3                                      mov r1, #1
005493cc  09 00 a0 e1                                      mov r0, sb
005493d0  94 30 9d e5                                      ldr r3, [sp, #0x94]
005493d4  3a ff 2f e1                                      blx sl
005493d8  58 71 94 e5                                      ldr r7, [r4, #0x158]
005493dc  07 00 a0 e1                                      mov r0, r7
005493e0  34 10 8d e2                                      add r1, sp, #0x34
005493e4  00 70 a0 e3                                      mov r7, #0
005493e8  34 70 8d e5                                      str r7, [sp, #0x34]
005493ec  38 70 8d e5                                      str r7, [sp, #0x38]
005493f0  3c 80 8d e5                                      str r8, [sp, #0x3c]
005493f4  40 80 8d e5                                      str r8, [sp, #0x40]
005493f8  d0 ac ff eb                                      bl #0x534740
005493fc  58 01 94 e5                                      ldr r0, [r4, #0x158]
00549400  07 10 a0 e1                                      mov r1, r7
00549404  07 30 a0 e1                                      mov r3, r7
00549408  01 20 a0 e3                                      mov r2, #1
0054940c  00 70 8d e5                                      str r7, [sp]
00549410  0a ad ff eb                                      bl #0x534840
00549414  5c 71 94 e5                                      ldr r7, [r4, #0x15c]
00549418  00 00 57 e3                                      cmp r7, #0
0054941c  6e 00 00 0a                                      beq #0x5495dc
00549420  00 00 56 e3                                      cmp r6, #0
00549424  22 00 00 0a                                      beq #0x5494b4
00549428  07 00 a0 e1                                      mov r0, r7
0054942c  06 10 a0 e1                                      mov r1, r6
00549430  00 30 97 e5                                      ldr r3, [r7]
00549434  0f e0 a0 e1                                      mov lr, pc
00549438  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0054943c  5c a1 94 e5                                      ldr sl, [r4, #0x15c]
00549440  00 30 95 e5                                      ldr r3, [r5]
00549444  06 10 a0 e3                                      mov r1, #6
00549448  00 20 9a e5                                      ldr r2, [sl]
0054944c  05 00 a0 e1                                      mov r0, r5
00549450  00 60 a0 e3                                      mov r6, #0
00549454  94 70 92 e5                                      ldr r7, [r2, #0x94]
00549458  0f e0 a0 e1                                      mov lr, pc
0054945c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00549460  94 30 9d e5                                      ldr r3, [sp, #0x94]
00549464  00 20 a0 e1                                      mov r2, r0
00549468  06 10 a0 e1                                      mov r1, r6
0054946c  0a 00 a0 e1                                      mov r0, sl
00549470  00 60 8d e5                                      str r6, [sp]
00549474  37 ff 2f e1                                      blx r7
00549478  5c 71 94 e5                                      ldr r7, [r4, #0x15c]
0054947c  00 30 95 e5                                      ldr r3, [r5]
00549480  05 00 a0 e1                                      mov r0, r5
00549484  00 20 97 e5                                      ldr r2, [r7]
00549488  06 10 a0 e3                                      mov r1, #6
0054948c  94 50 92 e5                                      ldr r5, [r2, #0x94]
00549490  0f e0 a0 e1                                      mov lr, pc
00549494  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00549498  00 60 8d e5                                      str r6, [sp]
0054949c  00 20 a0 e1                                      mov r2, r0
005494a0  01 10 a0 e3                                      mov r1, #1
005494a4  07 00 a0 e1                                      mov r0, r7
005494a8  94 30 9d e5                                      ldr r3, [sp, #0x94]
005494ac  35 ff 2f e1                                      blx r5
005494b0  5c 71 94 e5                                      ldr r7, [r4, #0x15c]
005494b4  34 20 94 e5                                      ldr r2, [r4, #0x34]
005494b8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005494bc  07 00 a0 e1                                      mov r0, r7
005494c0  00 50 a0 e3                                      mov r5, #0
005494c4  02 30 63 e0                                      rsb r3, r3, r2
005494c8  03 20 68 e0                                      rsb r2, r8, r3
005494cc  14 10 8d e2                                      add r1, sp, #0x14
005494d0  18 20 8d e5                                      str r2, [sp, #0x18]
005494d4  20 30 8d e5                                      str r3, [sp, #0x20]
005494d8  1c 80 8d e5                                      str r8, [sp, #0x1c]
005494dc  14 50 8d e5                                      str r5, [sp, #0x14]
005494e0  96 ac ff eb                                      bl #0x534740
005494e4  01 c0 a0 e3                                      mov ip, #1
005494e8  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
005494ec  0c 20 a0 e1                                      mov r2, ip
005494f0  05 10 a0 e1                                      mov r1, r5
005494f4  0c 30 a0 e1                                      mov r3, ip
005494f8  00 c0 8d e5                                      str ip, [sp]
005494fc  cf ac ff eb                                      bl #0x534840
00549500  88 ff ff ea                                      b #0x549328
00549504  30 20 94 e5                                      ldr r2, [r4, #0x30]
00549508  28 30 94 e5                                      ldr r3, [r4, #0x28]
0054950c  07 10 a0 e1                                      mov r1, r7
00549510  79 0f a0 e3                                      mov r0, #0x1e4
00549514  02 30 63 e0                                      rsb r3, r3, r2
00549518  03 20 68 e0                                      rsb r2, r8, r3
0054951c  64 20 8d e5                                      str r2, [sp, #0x64]
00549520  6c 30 8d e5                                      str r3, [sp, #0x6c]
00549524  68 70 8d e5                                      str r7, [sp, #0x68]
00549528  70 80 8d e5                                      str r8, [sp, #0x70]
0054952c  1e ab ff eb                                      bl #0x5341ac
00549530  9b e0 d4 e5                                      ldrb lr, [r4, #0x9b]
00549534  00 90 a0 e1                                      mov sb, r0
00549538  50 11 94 e5                                      ldr r1, [r4, #0x150]
0054953c  64 c0 8d e2                                      add ip, sp, #0x64
00549540  04 20 a0 e1                                      mov r2, r4
00549544  00 30 e0 e3                                      mvn r3, #0
00549548  00 50 8d e8                                      stm sp, {ip, lr}
0054954c  aa 73 05 eb                                      bl #0x6a63fc
00549550  5c 91 84 e5                                      str sb, [r4, #0x15c]
00549554  00 30 99 e5                                      ldr r3, [sb]
00549558  09 00 a0 e1                                      mov r0, sb
0054955c  0a 10 a0 e1                                      mov r1, sl
00549560  0f e0 a0 e1                                      mov lr, pc
00549564  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00549568  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0054956c  34 71 c3 e5                                      strb r7, [r3, #0x134]
00549570  5c 71 94 e5                                      ldr r7, [r4, #0x15c]
00549574  33 ff ff ea                                      b #0x549248
00549578  07 10 a0 e1                                      mov r1, r7
0054957c  79 0f a0 e3                                      mov r0, #0x1e4
00549580  44 70 8d e5                                      str r7, [sp, #0x44]
00549584  48 70 8d e5                                      str r7, [sp, #0x48]
00549588  4c 80 8d e5                                      str r8, [sp, #0x4c]
0054958c  50 80 8d e5                                      str r8, [sp, #0x50]
00549590  05 ab ff eb                                      bl #0x5341ac
00549594  9b e0 d4 e5                                      ldrb lr, [r4, #0x9b]
00549598  00 a0 a0 e1                                      mov sl, r0
0054959c  50 11 94 e5                                      ldr r1, [r4, #0x150]
005495a0  44 c0 8d e2                                      add ip, sp, #0x44
005495a4  04 20 a0 e1                                      mov r2, r4
005495a8  00 30 e0 e3                                      mvn r3, #0
005495ac  00 50 8d e8                                      stm sp, {ip, lr}
005495b0  91 73 05 eb                                      bl #0x6a63fc
005495b4  58 a1 84 e5                                      str sl, [r4, #0x158]
005495b8  00 30 9a e5                                      ldr r3, [sl]
005495bc  0a 00 a0 e1                                      mov r0, sl
005495c0  01 10 a0 e3                                      mov r1, #1
005495c4  0f e0 a0 e1                                      mov lr, pc
005495c8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005495cc  58 31 94 e5                                      ldr r3, [r4, #0x158]
005495d0  34 71 c3 e5                                      strb r7, [r3, #0x134]
005495d4  58 71 94 e5                                      ldr r7, [r4, #0x158]
005495d8  5a ff ff ea                                      b #0x549348
005495dc  34 20 94 e5                                      ldr r2, [r4, #0x34]
005495e0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005495e4  07 10 a0 e1                                      mov r1, r7
005495e8  79 0f a0 e3                                      mov r0, #0x1e4
005495ec  02 30 63 e0                                      rsb r3, r3, r2
005495f0  03 20 68 e0                                      rsb r2, r8, r3
005495f4  28 20 8d e5                                      str r2, [sp, #0x28]
005495f8  30 30 8d e5                                      str r3, [sp, #0x30]
005495fc  24 70 8d e5                                      str r7, [sp, #0x24]
00549600  2c 80 8d e5                                      str r8, [sp, #0x2c]
00549604  e8 aa ff eb                                      bl #0x5341ac
00549608  9b e0 d4 e5                                      ldrb lr, [r4, #0x9b]
0054960c  00 a0 a0 e1                                      mov sl, r0
00549610  50 11 94 e5                                      ldr r1, [r4, #0x150]
00549614  24 c0 8d e2                                      add ip, sp, #0x24
00549618  04 20 a0 e1                                      mov r2, r4
0054961c  00 30 e0 e3                                      mvn r3, #0
00549620  00 50 8d e8                                      stm sp, {ip, lr}
00549624  74 73 05 eb                                      bl #0x6a63fc
00549628  5c a1 84 e5                                      str sl, [r4, #0x15c]
0054962c  00 30 9a e5                                      ldr r3, [sl]
00549630  0a 00 a0 e1                                      mov r0, sl
00549634  01 10 a0 e3                                      mov r1, #1
00549638  0f e0 a0 e1                                      mov lr, pc
0054963c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00549640  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00549644  34 71 c3 e5                                      strb r7, [r3, #0x134]
00549648  5c 71 94 e5                                      ldr r7, [r4, #0x15c]
0054964c  73 ff ff ea                                      b #0x549420
00549650  07 10 a0 e1                                      mov r1, r7
00549654  79 0f a0 e3                                      mov r0, #0x1e4
00549658  84 70 8d e5                                      str r7, [sp, #0x84]
0054965c  88 70 8d e5                                      str r7, [sp, #0x88]
00549660  8c 80 8d e5                                      str r8, [sp, #0x8c]
00549664  90 80 8d e5                                      str r8, [sp, #0x90]
00549668  cf aa ff eb                                      bl #0x5341ac
0054966c  9b e0 d4 e5                                      ldrb lr, [r4, #0x9b]
00549670  00 a0 a0 e1                                      mov sl, r0
00549674  50 11 94 e5                                      ldr r1, [r4, #0x150]
00549678  84 c0 8d e2                                      add ip, sp, #0x84
0054967c  04 20 a0 e1                                      mov r2, r4
00549680  00 30 e0 e3                                      mvn r3, #0
00549684  00 50 8d e8                                      stm sp, {ip, lr}
00549688  5b 73 05 eb                                      bl #0x6a63fc
0054968c  58 a1 84 e5                                      str sl, [r4, #0x158]
00549690  00 30 9a e5                                      ldr r3, [sl]
00549694  0a 00 a0 e1                                      mov r0, sl
00549698  01 10 a0 e3                                      mov r1, #1
0054969c  0f e0 a0 e1                                      mov lr, pc
005496a0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005496a4  58 31 94 e5                                      ldr r3, [r4, #0x158]
005496a8  34 71 c3 e5                                      strb r7, [r3, #0x134]
005496ac  58 71 94 e5                                      ldr r7, [r4, #0x158]
005496b0  ad fe ff ea                                      b #0x54916c

; FUNCTION 0x005496b4, declared_size=388, range_size=388, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBar22updateAbsolutePositionEv
; demangled: glitch::gui::CGUIScrollBar::updateAbsolutePosition()
; decoder-mode: arm
005496b4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005496b8  00 40 a0 e1                                      mov r4, r0
005496bc  97 ac ff eb                                      bl #0x534920
005496c0  04 00 a0 e1                                      mov r0, r4
005496c4  7d fe ff eb                                      bl #0x5490c0
005496c8  71 31 d4 e5                                      ldrb r3, [r4, #0x171]
005496cc  00 00 53 e3                                      cmp r3, #0
005496d0  2f 00 00 1a                                      bne #0x549794
005496d4  80 81 94 e5                                      ldr r8, [r4, #0x180]
005496d8  00 00 58 e3                                      cmp r8, #0
005496dc  14 00 00 1a                                      bne #0x549734
005496e0  30 60 94 e5                                      ldr r6, [r4, #0x30]
005496e4  28 50 94 e5                                      ldr r5, [r4, #0x28]
005496e8  00 80 a0 e3                                      mov r8, #0
005496ec  06 70 65 e0                                      rsb r7, r5, r6
005496f0  74 01 94 e5                                      ldr r0, [r4, #0x174]
005496f4  9a 14 f7 eb                                      bl #0x30e964
005496f8  08 10 a0 e1                                      mov r1, r8
005496fc  9a 15 f7 eb                                      bl #0x30ed6c
00549700  00 80 a0 e1                                      mov r8, r0
00549704  07 00 a0 e1                                      mov r0, r7
00549708  95 14 f7 eb                                      bl #0x30e964
0054970c  3f 14 a0 e3                                      mov r1, #0x3f000000
00549710  95 15 f7 eb                                      bl #0x30ed6c
00549714  00 10 a0 e1                                      mov r1, r0
00549718  08 00 a0 e1                                      mov r0, r8
0054971c  20 15 f7 eb                                      bl #0x30eba4
00549720  69 13 f7 eb                                      bl #0x30e4cc
00549724  06 50 65 e0                                      rsb r5, r5, r6
00549728  7c 51 84 e5                                      str r5, [r4, #0x17c]
0054972c  78 01 84 e5                                      str r0, [r4, #0x178]
00549730  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00549734  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00549738  34 00 94 e5                                      ldr r0, [r4, #0x34]
0054973c  30 60 94 e5                                      ldr r6, [r4, #0x30]
00549740  28 50 94 e5                                      ldr r5, [r4, #0x28]
00549744  00 00 63 e0                                      rsb r0, r3, r0
00549748  85 14 f7 eb                                      bl #0x30e964
0054974c  06 70 65 e0                                      rsb r7, r5, r6
00549750  00 a0 a0 e1                                      mov sl, r0
00549754  07 00 a0 e1                                      mov r0, r7
00549758  81 14 f7 eb                                      bl #0x30e964
0054975c  03 11 a0 e3                                      mov r1, #0xc0000000
00549760  01 15 81 e2                                      add r1, r1, #0x400000
00549764  80 15 f7 eb                                      bl #0x30ed6c
00549768  00 10 a0 e1                                      mov r1, r0
0054976c  0a 00 a0 e1                                      mov r0, sl
00549770  0b 15 f7 eb                                      bl #0x30eba4
00549774  00 a0 a0 e1                                      mov sl, r0
00549778  08 00 a0 e1                                      mov r0, r8
0054977c  78 14 f7 eb                                      bl #0x30e964
00549780  00 10 a0 e1                                      mov r1, r0
00549784  0a 00 a0 e1                                      mov r0, sl
00549788  41 15 f7 eb                                      bl #0x30ec94
0054978c  00 80 a0 e1                                      mov r8, r0
00549790  d6 ff ff ea                                      b #0x5496f0
00549794  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00549798  34 50 94 e5                                      ldr r5, [r4, #0x34]
0054979c  05 50 63 e0                                      rsb r5, r3, r5
005497a0  05 00 a0 e1                                      mov r0, r5
005497a4  6e 14 f7 eb                                      bl #0x30e964
005497a8  00 60 a0 e1                                      mov r6, r0
005497ac  74 01 94 e5                                      ldr r0, [r4, #0x174]
005497b0  6b 14 f7 eb                                      bl #0x30e964
005497b4  28 30 94 e5                                      ldr r3, [r4, #0x28]
005497b8  00 70 a0 e1                                      mov r7, r0
005497bc  30 00 94 e5                                      ldr r0, [r4, #0x30]
005497c0  00 00 63 e0                                      rsb r0, r3, r0
005497c4  66 14 f7 eb                                      bl #0x30e964
005497c8  03 11 a0 e3                                      mov r1, #0xc0000000
005497cc  00 80 a0 e1                                      mov r8, r0
005497d0  01 15 81 e2                                      add r1, r1, #0x400000
005497d4  06 00 a0 e1                                      mov r0, r6
005497d8  63 15 f7 eb                                      bl #0x30ed6c
005497dc  00 10 a0 e1                                      mov r1, r0
005497e0  08 00 a0 e1                                      mov r0, r8
005497e4  ee 14 f7 eb                                      bl #0x30eba4
005497e8  00 80 a0 e1                                      mov r8, r0
005497ec  80 01 94 e5                                      ldr r0, [r4, #0x180]
005497f0  5b 14 f7 eb                                      bl #0x30e964
005497f4  00 10 a0 e1                                      mov r1, r0
005497f8  08 00 a0 e1                                      mov r0, r8
005497fc  24 15 f7 eb                                      bl #0x30ec94
00549800  00 10 a0 e1                                      mov r1, r0
00549804  07 00 a0 e1                                      mov r0, r7
00549808  57 15 f7 eb                                      bl #0x30ed6c
0054980c  3f 14 a0 e3                                      mov r1, #0x3f000000
00549810  00 70 a0 e1                                      mov r7, r0
00549814  06 00 a0 e1                                      mov r0, r6
00549818  53 15 f7 eb                                      bl #0x30ed6c
0054981c  00 10 a0 e1                                      mov r1, r0
00549820  07 00 a0 e1                                      mov r0, r7
00549824  de 14 f7 eb                                      bl #0x30eba4
00549828  27 13 f7 eb                                      bl #0x30e4cc
0054982c  7c 51 84 e5                                      str r5, [r4, #0x17c]
00549830  78 01 84 e5                                      str r0, [r4, #0x178]
00549834  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00549cfc, declared_size=320, range_size=320, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBarC1EbPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEb
; demangled: glitch::gui::CGUIScrollBar::CGUIScrollBar(bool, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>, bool)
; decoder-mode: arm
00549cfc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00549d00  24 51 9f e5                                      ldr r5, [pc, #0x124]
00549d04  24 e1 9f e5                                      ldr lr, [pc, #0x124]
00549d08  24 c1 9f e5                                      ldr ip, [pc, #0x124]
00549d0c  05 50 8f e0                                      add r5, pc, r5
00549d10  0e e0 95 e7                                      ldr lr, [r5, lr]
00549d14  0c c0 95 e7                                      ldr ip, [r5, ip]
00549d18  01 60 a0 e3                                      mov r6, #1
00549d1c  24 70 9e e5                                      ldr r7, [lr, #0x24]
00549d20  08 c0 8c e2                                      add ip, ip, #8
00549d24  9c 61 80 e5                                      str r6, [r0, #0x19c]
00549d28  94 71 80 e5                                      str r7, [r0, #0x194]
00549d2c  98 c1 80 e5                                      str ip, [r0, #0x198]
00549d30  18 d0 4d e2                                      sub sp, sp, #0x18
00549d34  0c 80 17 e5                                      ldr r8, [r7, #-0xc]
00549d38  28 a0 9e e5                                      ldr sl, [lr, #0x28]
00549d3c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00549d40  65 7f 80 e2                                      add r7, r0, #0x194
00549d44  08 a0 87 e7                                      str sl, [r7, r8]
00549d48  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00549d4c  80 11 9c e8                                      ldm ip, {r7, r8, ip}
00549d50  01 90 a0 e1                                      mov sb, r1
00549d54  04 10 8e e2                                      add r1, lr, #4
00549d58  10 c0 8d e5                                      str ip, [sp, #0x10]
00549d5c  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00549d60  00 40 a0 e1                                      mov r4, r0
00549d64  08 70 8d e5                                      str r7, [sp, #8]
00549d68  00 c0 8d e5                                      str ip, [sp]
00549d6c  08 c0 8d e2                                      add ip, sp, #8
00549d70  04 c0 8d e5                                      str ip, [sp, #4]
00549d74  0c 80 8d e5                                      str r8, [sp, #0xc]
00549d78  40 70 dd e5                                      ldrb r7, [sp, #0x40]
00549d7c  14 a0 8d e5                                      str sl, [sp, #0x14]
00549d80  2d ff ff eb                                      bl #0x549a3c
00549d84  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00549d88  00 80 a0 e3                                      mov r8, #0
00549d8c  04 00 a0 e1                                      mov r0, r4
00549d90  03 30 95 e7                                      ldr r3, [r5, r3]
00549d94  71 91 c4 e5                                      strb sb, [r4, #0x171]
00549d98  58 81 84 e5                                      str r8, [r4, #0x158]
00549d9c  e4 20 83 e2                                      add r2, r3, #0xe4
00549da0  10 10 83 e2                                      add r1, r3, #0x10
00549da4  c4 30 83 e2                                      add r3, r3, #0xc4
00549da8  94 31 84 e5                                      str r3, [r4, #0x194]
00549dac  64 30 a0 e3                                      mov r3, #0x64
00549db0  80 31 84 e5                                      str r3, [r4, #0x180]
00549db4  0a 30 a0 e3                                      mov r3, #0xa
00549db8  84 31 84 e5                                      str r3, [r4, #0x184]
00549dbc  32 30 a0 e3                                      mov r3, #0x32
00549dc0  00 10 84 e5                                      str r1, [r4]
00549dc4  98 21 84 e5                                      str r2, [r4, #0x198]
00549dc8  88 31 84 e5                                      str r3, [r4, #0x188]
00549dcc  5c 81 84 e5                                      str r8, [r4, #0x15c]
00549dd0  60 81 84 e5                                      str r8, [r4, #0x160]
00549dd4  64 81 84 e5                                      str r8, [r4, #0x164]
00549dd8  68 81 84 e5                                      str r8, [r4, #0x168]
00549ddc  6c 81 84 e5                                      str r8, [r4, #0x16c]
00549de0  70 81 c4 e5                                      strb r8, [r4, #0x170]
00549de4  72 81 c4 e5                                      strb r8, [r4, #0x172]
00549de8  73 81 c4 e5                                      strb r8, [r4, #0x173]
00549dec  74 81 84 e5                                      str r8, [r4, #0x174]
00549df0  78 81 84 e5                                      str r8, [r4, #0x178]
00549df4  7c 81 84 e5                                      str r8, [r4, #0x17c]
00549df8  8c 81 84 e5                                      str r8, [r4, #0x18c]
00549dfc  90 81 84 e5                                      str r8, [r4, #0x190]
00549e00  ae fc ff eb                                      bl #0x5490c0
00549e04  04 00 a0 e1                                      mov r0, r4
00549e08  9b 70 c4 e5                                      strb r7, [r4, #0x9b]
00549e0c  34 61 c4 e5                                      strb r6, [r4, #0x134]
00549e10  dd fe ff eb                                      bl #0x54998c
00549e14  04 00 a0 e1                                      mov r0, r4
00549e18  08 10 a0 e1                                      mov r1, r8
00549e1c  db fb ff eb                                      bl #0x548d90
00549e20  04 00 a0 e1                                      mov r0, r4
00549e24  18 d0 8d e2                                      add sp, sp, #0x18
00549e28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00549e2c  84 ad 44 00 90 46 00 00 44 2b 00 00 f0 0c 00 00  .byte 0x84, 0xad, 0x44, 0x00, 0x90, 0x46, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xf0, 0x0c, 0x00, 0x00

; FUNCTION 0x00549e3c, declared_size=264, range_size=264, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBarC2EbPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEb
; demangled: glitch::gui::CGUIScrollBar::CGUIScrollBar(bool, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>, bool)
; decoder-mode: arm
00549e3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00549e40  18 d0 4d e2                                      sub sp, sp, #0x18
00549e44  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00549e48  01 50 a0 e1                                      mov r5, r1
00549e4c  02 70 a0 e1                                      mov r7, r2
00549e50  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00549e54  00 60 9c e5                                      ldr r6, [ip]
00549e58  10 10 9c e9                                      ldmib ip, {r4, ip}
00549e5c  04 10 81 e2                                      add r1, r1, #4
00549e60  03 20 a0 e1                                      mov r2, r3
00549e64  10 c0 8d e5                                      str ip, [sp, #0x10]
00549e68  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00549e6c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00549e70  14 e0 8d e5                                      str lr, [sp, #0x14]
00549e74  00 c0 8d e5                                      str ip, [sp]
00549e78  08 c0 8d e2                                      add ip, sp, #8
00549e7c  04 c0 8d e5                                      str ip, [sp, #4]
00549e80  08 60 8d e5                                      str r6, [sp, #8]
00549e84  0c 40 8d e5                                      str r4, [sp, #0xc]
00549e88  3c 60 dd e5                                      ldrb r6, [sp, #0x3c]
00549e8c  00 40 a0 e1                                      mov r4, r0
00549e90  e9 fe ff eb                                      bl #0x549a3c
00549e94  00 30 95 e5                                      ldr r3, [r5]
00549e98  00 80 a0 e3                                      mov r8, #0
00549e9c  04 00 a0 e1                                      mov r0, r4
00549ea0  00 30 84 e5                                      str r3, [r4]
00549ea4  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
00549ea8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00549eac  03 20 84 e7                                      str r2, [r4, r3]
00549eb0  00 30 94 e5                                      ldr r3, [r4]
00549eb4  20 20 95 e5                                      ldr r2, [r5, #0x20]
00549eb8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00549ebc  03 20 84 e7                                      str r2, [r4, r3]
00549ec0  64 30 a0 e3                                      mov r3, #0x64
00549ec4  80 31 84 e5                                      str r3, [r4, #0x180]
00549ec8  0a 30 a0 e3                                      mov r3, #0xa
00549ecc  84 31 84 e5                                      str r3, [r4, #0x184]
00549ed0  32 30 a0 e3                                      mov r3, #0x32
00549ed4  88 31 84 e5                                      str r3, [r4, #0x188]
00549ed8  71 71 c4 e5                                      strb r7, [r4, #0x171]
00549edc  58 81 84 e5                                      str r8, [r4, #0x158]
00549ee0  5c 81 84 e5                                      str r8, [r4, #0x15c]
00549ee4  60 81 84 e5                                      str r8, [r4, #0x160]
00549ee8  64 81 84 e5                                      str r8, [r4, #0x164]
00549eec  68 81 84 e5                                      str r8, [r4, #0x168]
00549ef0  6c 81 84 e5                                      str r8, [r4, #0x16c]
00549ef4  70 81 c4 e5                                      strb r8, [r4, #0x170]
00549ef8  72 81 c4 e5                                      strb r8, [r4, #0x172]
00549efc  73 81 c4 e5                                      strb r8, [r4, #0x173]
00549f00  74 81 84 e5                                      str r8, [r4, #0x174]
00549f04  78 81 84 e5                                      str r8, [r4, #0x178]
00549f08  7c 81 84 e5                                      str r8, [r4, #0x17c]
00549f0c  8c 81 84 e5                                      str r8, [r4, #0x18c]
00549f10  90 81 84 e5                                      str r8, [r4, #0x190]
00549f14  69 fc ff eb                                      bl #0x5490c0
00549f18  01 30 a0 e3                                      mov r3, #1
00549f1c  34 31 c4 e5                                      strb r3, [r4, #0x134]
00549f20  04 00 a0 e1                                      mov r0, r4
00549f24  9b 60 c4 e5                                      strb r6, [r4, #0x9b]
00549f28  97 fe ff eb                                      bl #0x54998c
00549f2c  04 00 a0 e1                                      mov r0, r4
00549f30  08 10 a0 e1                                      mov r1, r8
00549f34  95 fb ff eb                                      bl #0x548d90
00549f38  04 00 a0 e1                                      mov r0, r4
00549f3c  18 d0 8d e2                                      add sp, sp, #0x18
00549f40  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00549fb8, declared_size=180, range_size=180, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBarD1Ev
; demangled: glitch::gui::CGUIScrollBar::~CGUIScrollBar()
; decoder-mode: arm
00549fb8  70 40 2d e9                                      push {r4, r5, r6, lr}
00549fbc  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
00549fc0  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00549fc4  58 21 90 e5                                      ldr r2, [r0, #0x158]
00549fc8  05 50 8f e0                                      add r5, pc, r5
00549fcc  03 30 95 e7                                      ldr r3, [r5, r3]
00549fd0  00 40 a0 e1                                      mov r4, r0
00549fd4  00 00 52 e3                                      cmp r2, #0
00549fd8  e4 10 83 e2                                      add r1, r3, #0xe4
00549fdc  10 00 83 e2                                      add r0, r3, #0x10
00549fe0  c4 30 83 e2                                      add r3, r3, #0xc4
00549fe4  00 00 84 e5                                      str r0, [r4]
00549fe8  94 31 84 e5                                      str r3, [r4, #0x194]
00549fec  98 11 84 e5                                      str r1, [r4, #0x198]
00549ff0  03 00 00 0a                                      beq #0x54a004
00549ff4  00 30 92 e5                                      ldr r3, [r2]
00549ff8  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00549ffc  00 00 82 e0                                      add r0, r2, r0
0054a000  5f 4d f7 eb                                      bl #0x31d584
0054a004  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0054a008  00 00 53 e3                                      cmp r3, #0
0054a00c  03 00 00 0a                                      beq #0x54a020
0054a010  00 20 93 e5                                      ldr r2, [r3]
0054a014  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0054a018  00 00 83 e0                                      add r0, r3, r0
0054a01c  58 4d f7 eb                                      bl #0x31d584
0054a020  40 30 9f e5                                      ldr r3, [pc, #0x40]
0054a024  04 00 a0 e1                                      mov r0, r4
0054a028  03 10 95 e7                                      ldr r1, [r5, r3]
0054a02c  04 30 91 e5                                      ldr r3, [r1, #4]
0054a030  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0054a034  18 20 91 e5                                      ldr r2, [r1, #0x18]
0054a038  00 30 84 e5                                      str r3, [r4]
0054a03c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054a040  08 10 81 e2                                      add r1, r1, #8
0054a044  03 c0 84 e7                                      str ip, [r4, r3]
0054a048  00 30 94 e5                                      ldr r3, [r4]
0054a04c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054a050  03 20 84 e7                                      str r2, [r4, r3]
0054a054  f1 bb ff eb                                      bl #0x539020
0054a058  04 00 a0 e1                                      mov r0, r4
0054a05c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0054a060  c8 aa 44 00 f0 0c 00 00 90 46 00 00              .byte 0xc8, 0xaa, 0x44, 0x00, 0xf0, 0x0c, 0x00, 0x00, 0x90, 0x46, 0x00, 0x00

; FUNCTION 0x0054a06c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBarD0Ev
; demangled: glitch::gui::CGUIScrollBar::~CGUIScrollBar()
; decoder-mode: arm
0054a06c  10 40 2d e9                                      push {r4, lr}
0054a070  00 40 a0 e1                                      mov r4, r0
0054a074  cf ff ff eb                                      bl #0x549fb8
0054a078  04 00 a0 e1                                      mov r0, r4
0054a07c  8b 10 f7 eb                                      bl #0x30e2b0
0054a080  04 00 a0 e1                                      mov r0, r4
0054a084  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0054a088, declared_size=164, range_size=164, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBarD2Ev
; demangled: glitch::gui::CGUIScrollBar::~CGUIScrollBar()
; decoder-mode: arm
0054a088  70 40 2d e9                                      push {r4, r5, r6, lr}
0054a08c  00 30 91 e5                                      ldr r3, [r1]
0054a090  01 50 a0 e1                                      mov r5, r1
0054a094  00 40 a0 e1                                      mov r4, r0
0054a098  00 30 80 e5                                      str r3, [r0]
0054a09c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054a0a0  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
0054a0a4  03 20 80 e7                                      str r2, [r0, r3]
0054a0a8  00 30 90 e5                                      ldr r3, [r0]
0054a0ac  20 20 91 e5                                      ldr r2, [r1, #0x20]
0054a0b0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054a0b4  03 20 80 e7                                      str r2, [r0, r3]
0054a0b8  58 31 90 e5                                      ldr r3, [r0, #0x158]
0054a0bc  00 00 53 e3                                      cmp r3, #0
0054a0c0  03 00 00 0a                                      beq #0x54a0d4
0054a0c4  00 20 93 e5                                      ldr r2, [r3]
0054a0c8  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0054a0cc  00 00 83 e0                                      add r0, r3, r0
0054a0d0  2b 4d f7 eb                                      bl #0x31d584
0054a0d4  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0054a0d8  00 00 53 e3                                      cmp r3, #0
0054a0dc  03 00 00 0a                                      beq #0x54a0f0
0054a0e0  00 20 93 e5                                      ldr r2, [r3]
0054a0e4  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0054a0e8  00 00 83 e0                                      add r0, r3, r0
0054a0ec  24 4d f7 eb                                      bl #0x31d584
0054a0f0  04 30 95 e5                                      ldr r3, [r5, #4]
0054a0f4  04 50 85 e2                                      add r5, r5, #4
0054a0f8  04 10 85 e2                                      add r1, r5, #4
0054a0fc  00 30 84 e5                                      str r3, [r4]
0054a100  10 20 95 e5                                      ldr r2, [r5, #0x10]
0054a104  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054a108  04 00 a0 e1                                      mov r0, r4
0054a10c  03 20 84 e7                                      str r2, [r4, r3]
0054a110  00 30 94 e5                                      ldr r3, [r4]
0054a114  14 20 95 e5                                      ldr r2, [r5, #0x14]
0054a118  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054a11c  03 20 84 e7                                      str r2, [r4, r3]
0054a120  be bb ff eb                                      bl #0x539020
0054a124  04 00 a0 e1                                      mov r0, r4
0054a128  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0054a12c, declared_size=252, range_size=252, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBar21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIScrollBar::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0054a12c  70 40 2d e9                                      push {r4, r5, r6, lr}
0054a130  00 40 a0 e1                                      mov r4, r0
0054a134  01 50 a0 e1                                      mov r5, r1
0054a138  be bd ff eb                                      bl #0x539838
0054a13c  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
0054a140  00 30 95 e5                                      ldr r3, [r5]
0054a144  05 00 a0 e1                                      mov r0, r5
0054a148  01 10 8f e0                                      add r1, pc, r1
0054a14c  0f e0 a0 e1                                      mov lr, pc
0054a150  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
0054a154  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0054a158  00 20 94 e5                                      ldr r2, [r4]
0054a15c  71 01 c4 e5                                      strb r0, [r4, #0x171]
0054a160  00 30 95 e5                                      ldr r3, [r5]
0054a164  01 10 8f e0                                      add r1, pc, r1
0054a168  05 00 a0 e1                                      mov r0, r5
0054a16c  80 60 92 e5                                      ldr r6, [r2, #0x80]
0054a170  0f e0 a0 e1                                      mov lr, pc
0054a174  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0054a178  00 10 a0 e1                                      mov r1, r0
0054a17c  04 00 a0 e1                                      mov r0, r4
0054a180  36 ff 2f e1                                      blx r6
0054a184  90 10 9f e5                                      ldr r1, [pc, #0x90]
0054a188  00 20 94 e5                                      ldr r2, [r4]
0054a18c  00 30 95 e5                                      ldr r3, [r5]
0054a190  01 10 8f e0                                      add r1, pc, r1
0054a194  05 00 a0 e1                                      mov r0, r5
0054a198  98 60 92 e5                                      ldr r6, [r2, #0x98]
0054a19c  0f e0 a0 e1                                      mov lr, pc
0054a1a0  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0054a1a4  00 10 a0 e1                                      mov r1, r0
0054a1a8  04 00 a0 e1                                      mov r0, r4
0054a1ac  36 ff 2f e1                                      blx r6
0054a1b0  68 10 9f e5                                      ldr r1, [pc, #0x68]
0054a1b4  00 20 94 e5                                      ldr r2, [r4]
0054a1b8  00 30 95 e5                                      ldr r3, [r5]
0054a1bc  01 10 8f e0                                      add r1, pc, r1
0054a1c0  05 00 a0 e1                                      mov r0, r5
0054a1c4  88 60 92 e5                                      ldr r6, [r2, #0x88]
0054a1c8  0f e0 a0 e1                                      mov lr, pc
0054a1cc  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0054a1d0  00 10 a0 e1                                      mov r1, r0
0054a1d4  04 00 a0 e1                                      mov r0, r4
0054a1d8  36 ff 2f e1                                      blx r6
0054a1dc  40 10 9f e5                                      ldr r1, [pc, #0x40]
0054a1e0  00 20 94 e5                                      ldr r2, [r4]
0054a1e4  00 30 95 e5                                      ldr r3, [r5]
0054a1e8  05 00 a0 e1                                      mov r0, r5
0054a1ec  01 10 8f e0                                      add r1, pc, r1
0054a1f0  90 50 92 e5                                      ldr r5, [r2, #0x90]
0054a1f4  0f e0 a0 e1                                      mov lr, pc
0054a1f8  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0054a1fc  00 10 a0 e1                                      mov r1, r0
0054a200  04 00 a0 e1                                      mov r0, r4
0054a204  35 ff 2f e1                                      blx r5
0054a208  04 00 a0 e1                                      mov r0, r4
0054a20c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0054a210  aa fb ff ea                                      b #0x5490c0
; mapping-symbol data/literal pool
0054a214  28 44 39 00 1c f5 38 00 48 28 38 00 c4 43 39 00  .byte 0x28, 0x44, 0x39, 0x00, 0x1c, 0xf5, 0x38, 0x00, 0x48, 0x28, 0x38, 0x00, 0xc4, 0x43, 0x39, 0x00
0054a224  a4 43 39 00                                      .byte 0xa4, 0x43, 0x39, 0x00

; FUNCTION 0x0054a228, declared_size=1204, range_size=1204, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBar7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIScrollBar::onEvent(glitch::SEvent const&)
; decoder-mode: arm
0054a228  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0054a22c  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
0054a230  64 d0 4d e2                                      sub sp, sp, #0x64
0054a234  00 40 a0 e1                                      mov r4, r0
0054a238  00 00 53 e3                                      cmp r3, #0
0054a23c  01 50 a0 e1                                      mov r5, r1
0054a240  0e 00 00 0a                                      beq #0x54a280
0054a244  00 30 91 e5                                      ldr r3, [r1]
0054a248  01 00 53 e3                                      cmp r3, #1
0054a24c  27 00 00 0a                                      beq #0x54a2f0
0054a250  02 00 53 e3                                      cmp r3, #2
0054a254  14 00 00 0a                                      beq #0x54a2ac
0054a258  00 00 53 e3                                      cmp r3, #0
0054a25c  07 00 00 1a                                      bne #0x54a280
0054a260  10 30 91 e5                                      ldr r3, [r1, #0x10]
0054a264  05 00 53 e3                                      cmp r3, #5
0054a268  ce 00 00 0a                                      beq #0x54a5a8
0054a26c  00 00 53 e3                                      cmp r3, #0
0054a270  02 00 00 1a                                      bne #0x54a280
0054a274  08 20 91 e5                                      ldr r2, [r1, #8]
0054a278  00 00 52 e1                                      cmp r2, r0
0054a27c  70 31 c0 05                                      strbeq r3, [r0, #0x170]
0054a280  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054a284  00 00 53 e3                                      cmp r3, #0
0054a288  03 00 a0 01                                      moveq r0, r3
0054a28c  04 00 00 0a                                      beq #0x54a2a4
0054a290  03 00 a0 e1                                      mov r0, r3
0054a294  05 10 a0 e1                                      mov r1, r5
0054a298  00 30 93 e5                                      ldr r3, [r3]
0054a29c  0f e0 a0 e1                                      mov lr, pc
0054a2a0  08 f0 93 e5                                      ldr pc, [r3, #8]
0054a2a4  64 d0 8d e2                                      add sp, sp, #0x64
0054a2a8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0054a2ac  10 30 d1 e5                                      ldrb r3, [r1, #0x10]
0054a2b0  00 00 53 e3                                      cmp r3, #0
0054a2b4  f1 ff ff 0a                                      beq #0x54a280
0054a2b8  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0054a2bc  74 61 90 e5                                      ldr r6, [r0, #0x174]
0054a2c0  21 30 43 e2                                      sub r3, r3, #0x21
0054a2c4  07 00 53 e3                                      cmp r3, #7
0054a2c8  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0054a2cc  eb ff ff ea                                      b #0x54a280
0054a2d0  a4 00 00 ea                                      b #0x54a568
0054a2d4  a1 00 00 ea                                      b #0x54a560
0054a2d8  9a 00 00 ea                                      b #0x54a548
0054a2dc  ab 00 00 ea                                      b #0x54a590
0054a2e0  a8 00 00 ea                                      b #0x54a588
0054a2e4  a7 00 00 ea                                      b #0x54a588
0054a2e8  7f 00 00 ea                                      b #0x54a4ec
0054a2ec  7e 00 00 ea                                      b #0x54a4ec
0054a2f0  14 30 91 e5                                      ldr r3, [r1, #0x14]
0054a2f4  07 00 53 e3                                      cmp r3, #7
0054a2f8  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0054a2fc  df ff ff ea                                      b #0x54a280
0054a300  4f 00 00 ea                                      b #0x54a444
0054a304  dd ff ff ea                                      b #0x54a280
0054a308  dc ff ff ea                                      b #0x54a280
0054a30c  26 00 00 ea                                      b #0x54a3ac
0054a310  da ff ff ea                                      b #0x54a280
0054a314  d9 ff ff ea                                      b #0x54a280
0054a318  23 00 00 ea                                      b #0x54a3ac
0054a31c  ff ff ff ea                                      b #0x54a320
0054a320  50 31 90 e5                                      ldr r3, [r0, #0x150]
0054a324  00 10 a0 e1                                      mov r1, r0
0054a328  03 00 a0 e1                                      mov r0, r3
0054a32c  00 30 93 e5                                      ldr r3, [r3]
0054a330  0f e0 a0 e1                                      mov lr, pc
0054a334  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0054a338  00 00 50 e3                                      cmp r0, #0
0054a33c  cf ff ff 0a                                      beq #0x54a280
0054a340  00 30 94 e5                                      ldr r3, [r4]
0054a344  04 00 a0 e1                                      mov r0, r4
0054a348  98 60 93 e5                                      ldr r6, [r3, #0x98]
0054a34c  0f e0 a0 e1                                      mov lr, pc
0054a350  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0054a354  84 31 94 e5                                      ldr r3, [r4, #0x184]
0054a358  00 70 a0 e1                                      mov r7, r0
0054a35c  10 00 95 e5                                      ldr r0, [r5, #0x10]
0054a360  00 50 63 e2                                      rsb r5, r3, #0
0054a364  58 10 f7 eb                                      bl #0x30e4cc
0054a368  90 75 21 e0                                      mla r1, r0, r5, r7
0054a36c  04 00 a0 e1                                      mov r0, r4
0054a370  36 ff 2f e1                                      blx r6
0054a374  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054a378  00 20 a0 e3                                      mov r2, #0
0054a37c  06 10 a0 e3                                      mov r1, #6
0054a380  28 10 8d e5                                      str r1, [sp, #0x28]
0054a384  24 20 8d e5                                      str r2, [sp, #0x24]
0054a388  18 20 8d e5                                      str r2, [sp, #0x18]
0054a38c  20 40 8d e5                                      str r4, [sp, #0x20]
0054a390  03 00 a0 e1                                      mov r0, r3
0054a394  18 10 8d e2                                      add r1, sp, #0x18
0054a398  00 30 93 e5                                      ldr r3, [r3]
0054a39c  0f e0 a0 e1                                      mov lr, pc
0054a3a0  08 f0 93 e5                                      ldr pc, [r3, #8]
0054a3a4  01 00 a0 e3                                      mov r0, #1
0054a3a8  bd ff ff ea                                      b #0x54a2a4
0054a3ac  70 21 d0 e5                                      ldrb r2, [r0, #0x170]
0054a3b0  00 00 52 e3                                      cmp r2, #0
0054a3b4  b1 ff ff 0a                                      beq #0x54a280
0054a3b8  03 00 53 e3                                      cmp r3, #3
0054a3bc  00 30 a0 03                                      moveq r3, #0
0054a3c0  70 31 c0 05                                      strbeq r3, [r0, #0x170]
0054a3c4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0054a3c8  08 10 91 e5                                      ldr r1, [r1, #8]
0054a3cc  18 fa ff eb                                      bl #0x548c34
0054a3d0  72 21 d4 e5                                      ldrb r2, [r4, #0x172]
0054a3d4  74 31 94 e5                                      ldr r3, [r4, #0x174]
0054a3d8  00 00 52 e3                                      cmp r2, #0
0054a3dc  03 60 a0 e1                                      mov r6, r3
0054a3e0  85 00 00 0a                                      beq #0x54a5fc
0054a3e4  00 10 a0 e1                                      mov r1, r0
0054a3e8  00 30 94 e5                                      ldr r3, [r4]
0054a3ec  04 00 a0 e1                                      mov r0, r4
0054a3f0  0f e0 a0 e1                                      mov lr, pc
0054a3f4  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0054a3f8  74 31 94 e5                                      ldr r3, [r4, #0x174]
0054a3fc  06 00 53 e1                                      cmp r3, r6
0054a400  a5 00 00 0a                                      beq #0x54a69c
0054a404  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054a408  00 00 53 e3                                      cmp r3, #0
0054a40c  a2 00 00 0a                                      beq #0x54a69c
0054a410  00 20 a0 e3                                      mov r2, #0
0054a414  06 10 a0 e3                                      mov r1, #6
0054a418  10 10 8d e5                                      str r1, [sp, #0x10]
0054a41c  08 40 8d e5                                      str r4, [sp, #8]
0054a420  0c 20 8d e5                                      str r2, [sp, #0xc]
0054a424  00 20 8d e5                                      str r2, [sp]
0054a428  03 00 a0 e1                                      mov r0, r3
0054a42c  0d 10 a0 e1                                      mov r1, sp
0054a430  00 30 93 e5                                      ldr r3, [r3]
0054a434  0f e0 a0 e1                                      mov lr, pc
0054a438  08 f0 93 e5                                      ldr pc, [r3, #8]
0054a43c  01 00 a0 e3                                      mov r0, #1
0054a440  97 ff ff ea                                      b #0x54a2a4
0054a444  08 30 91 e5                                      ldr r3, [r1, #8]
0054a448  48 20 90 e5                                      ldr r2, [r0, #0x48]
0054a44c  0c 10 91 e5                                      ldr r1, [r1, #0xc]
0054a450  02 00 53 e1                                      cmp r3, r2
0054a454  89 ff ff ba                                      blt #0x54a280
0054a458  4c 20 90 e5                                      ldr r2, [r0, #0x4c]
0054a45c  02 00 51 e1                                      cmp r1, r2
0054a460  86 ff ff ba                                      blt #0x54a280
0054a464  50 20 90 e5                                      ldr r2, [r0, #0x50]
0054a468  02 00 53 e1                                      cmp r3, r2
0054a46c  83 ff ff ca                                      bgt #0x54a280
0054a470  54 30 90 e5                                      ldr r3, [r0, #0x54]
0054a474  03 00 51 e1                                      cmp r1, r3
0054a478  80 ff ff ca                                      bgt #0x54a280
0054a47c  01 20 a0 e3                                      mov r2, #1
0054a480  70 21 c0 e5                                      strb r2, [r0, #0x170]
0054a484  08 00 95 e5                                      ldr r0, [r5, #8]
0054a488  60 31 94 e5                                      ldr r3, [r4, #0x160]
0054a48c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0054a490  03 00 50 e1                                      cmp r0, r3
0054a494  09 00 00 ba                                      blt #0x54a4c0
0054a498  64 31 94 e5                                      ldr r3, [r4, #0x164]
0054a49c  03 00 51 e1                                      cmp r1, r3
0054a4a0  06 00 00 ba                                      blt #0x54a4c0
0054a4a4  68 31 94 e5                                      ldr r3, [r4, #0x168]
0054a4a8  03 00 50 e1                                      cmp r0, r3
0054a4ac  03 00 00 ca                                      bgt #0x54a4c0
0054a4b0  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
0054a4b4  03 00 51 e1                                      cmp r1, r3
0054a4b8  00 30 a0 d3                                      movle r3, #0
0054a4bc  01 00 00 da                                      ble #0x54a4c8
0054a4c0  01 30 a0 e3                                      mov r3, #1
0054a4c4  00 20 a0 e3                                      mov r2, #0
0054a4c8  72 21 c4 e5                                      strb r2, [r4, #0x172]
0054a4cc  73 31 c4 e5                                      strb r3, [r4, #0x173]
0054a4d0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0054a4d4  04 00 a0 e1                                      mov r0, r4
0054a4d8  08 10 95 e5                                      ldr r1, [r5, #8]
0054a4dc  d4 f9 ff eb                                      bl #0x548c34
0054a4e0  8c 01 84 e5                                      str r0, [r4, #0x18c]
0054a4e4  01 00 a0 e3                                      mov r0, #1
0054a4e8  6d ff ff ea                                      b #0x54a2a4
0054a4ec  84 11 90 e5                                      ldr r1, [r0, #0x184]
0054a4f0  00 30 94 e5                                      ldr r3, [r4]
0054a4f4  04 00 a0 e1                                      mov r0, r4
0054a4f8  01 10 86 e0                                      add r1, r6, r1
0054a4fc  0f e0 a0 e1                                      mov lr, pc
0054a500  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0054a504  74 31 94 e5                                      ldr r3, [r4, #0x174]
0054a508  03 00 56 e1                                      cmp r6, r3
0054a50c  62 00 00 0a                                      beq #0x54a69c
0054a510  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054a514  00 20 a0 e3                                      mov r2, #0
0054a518  06 10 a0 e3                                      mov r1, #6
0054a51c  58 10 8d e5                                      str r1, [sp, #0x58]
0054a520  54 20 8d e5                                      str r2, [sp, #0x54]
0054a524  48 20 8d e5                                      str r2, [sp, #0x48]
0054a528  50 40 8d e5                                      str r4, [sp, #0x50]
0054a52c  03 00 a0 e1                                      mov r0, r3
0054a530  48 10 8d e2                                      add r1, sp, #0x48
0054a534  00 30 93 e5                                      ldr r3, [r3]
0054a538  0f e0 a0 e1                                      mov lr, pc
0054a53c  08 f0 93 e5                                      ldr pc, [r3, #8]
0054a540  01 00 a0 e3                                      mov r0, #1
0054a544  56 ff ff ea                                      b #0x54a2a4
0054a548  00 30 90 e5                                      ldr r3, [r0]
0054a54c  80 11 94 e5                                      ldr r1, [r4, #0x180]
0054a550  0f e0 a0 e1                                      mov lr, pc
0054a554  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0054a558  74 31 94 e5                                      ldr r3, [r4, #0x174]
0054a55c  e9 ff ff ea                                      b #0x54a508
0054a560  88 11 90 e5                                      ldr r1, [r0, #0x188]
0054a564  e1 ff ff ea                                      b #0x54a4f0
0054a568  88 11 90 e5                                      ldr r1, [r0, #0x188]
0054a56c  00 30 94 e5                                      ldr r3, [r4]
0054a570  04 00 a0 e1                                      mov r0, r4
0054a574  06 10 61 e0                                      rsb r1, r1, r6
0054a578  0f e0 a0 e1                                      mov lr, pc
0054a57c  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0054a580  74 31 94 e5                                      ldr r3, [r4, #0x174]
0054a584  df ff ff ea                                      b #0x54a508
0054a588  84 11 90 e5                                      ldr r1, [r0, #0x184]
0054a58c  f6 ff ff ea                                      b #0x54a56c
0054a590  00 30 90 e5                                      ldr r3, [r0]
0054a594  00 10 a0 e3                                      mov r1, #0
0054a598  0f e0 a0 e1                                      mov lr, pc
0054a59c  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0054a5a0  74 31 94 e5                                      ldr r3, [r4, #0x174]
0054a5a4  d7 ff ff ea                                      b #0x54a508
0054a5a8  08 30 91 e5                                      ldr r3, [r1, #8]
0054a5ac  58 21 90 e5                                      ldr r2, [r0, #0x158]
0054a5b0  02 00 53 e1                                      cmp r3, r2
0054a5b4  41 00 00 0a                                      beq #0x54a6c0
0054a5b8  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
0054a5bc  02 00 53 e1                                      cmp r3, r2
0054a5c0  37 00 00 0a                                      beq #0x54a6a4
0054a5c4  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054a5c8  00 20 a0 e3                                      mov r2, #0
0054a5cc  06 10 a0 e3                                      mov r1, #6
0054a5d0  40 10 8d e5                                      str r1, [sp, #0x40]
0054a5d4  3c 20 8d e5                                      str r2, [sp, #0x3c]
0054a5d8  30 20 8d e5                                      str r2, [sp, #0x30]
0054a5dc  38 40 8d e5                                      str r4, [sp, #0x38]
0054a5e0  03 00 a0 e1                                      mov r0, r3
0054a5e4  30 10 8d e2                                      add r1, sp, #0x30
0054a5e8  00 30 93 e5                                      ldr r3, [r3]
0054a5ec  0f e0 a0 e1                                      mov lr, pc
0054a5f0  08 f0 93 e5                                      ldr pc, [r3, #8]
0054a5f4  01 00 a0 e3                                      mov r0, #1
0054a5f8  29 ff ff ea                                      b #0x54a2a4
0054a5fc  08 10 95 e5                                      ldr r1, [r5, #8]
0054a600  48 c0 94 e5                                      ldr ip, [r4, #0x48]
0054a604  0c 70 95 e5                                      ldr r7, [r5, #0xc]
0054a608  0c 00 51 e1                                      cmp r1, ip
0054a60c  1d 00 00 ba                                      blt #0x54a688
0054a610  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
0054a614  0c 00 57 e1                                      cmp r7, ip
0054a618  1a 00 00 ba                                      blt #0x54a688
0054a61c  50 c0 94 e5                                      ldr ip, [r4, #0x50]
0054a620  0c 00 51 e1                                      cmp r1, ip
0054a624  17 00 00 ca                                      bgt #0x54a688
0054a628  54 c0 94 e5                                      ldr ip, [r4, #0x54]
0054a62c  0c 00 57 e1                                      cmp r7, ip
0054a630  14 00 00 ca                                      bgt #0x54a688
0054a634  60 c1 94 e5                                      ldr ip, [r4, #0x160]
0054a638  0c 00 51 e1                                      cmp r1, ip
0054a63c  09 00 00 ba                                      blt #0x54a668
0054a640  64 c1 94 e5                                      ldr ip, [r4, #0x164]
0054a644  0c 00 57 e1                                      cmp r7, ip
0054a648  06 00 00 ba                                      blt #0x54a668
0054a64c  68 c1 94 e5                                      ldr ip, [r4, #0x168]
0054a650  0c 00 51 e1                                      cmp r1, ip
0054a654  03 00 00 ca                                      bgt #0x54a668
0054a658  6c 11 94 e5                                      ldr r1, [r4, #0x16c]
0054a65c  01 00 57 e1                                      cmp r7, r1
0054a660  01 10 a0 d3                                      movle r1, #1
0054a664  01 00 00 da                                      ble #0x54a670
0054a668  01 20 a0 e3                                      mov r2, #1
0054a66c  00 10 a0 e3                                      mov r1, #0
0054a670  00 00 51 e3                                      cmp r1, #0
0054a674  73 21 c4 e5                                      strb r2, [r4, #0x173]
0054a678  72 11 c4 e5                                      strb r1, [r4, #0x172]
0054a67c  58 ff ff 1a                                      bne #0x54a3e4
0054a680  8c 01 84 e5                                      str r0, [r4, #0x18c]
0054a684  5c ff ff ea                                      b #0x54a3fc
0054a688  00 20 a0 e3                                      mov r2, #0
0054a68c  73 21 c4 e5                                      strb r2, [r4, #0x173]
0054a690  14 20 95 e5                                      ldr r2, [r5, #0x14]
0054a694  06 00 52 e3                                      cmp r2, #6
0054a698  f8 ff ff 1a                                      bne #0x54a680
0054a69c  01 00 a0 e3                                      mov r0, #1
0054a6a0  ff fe ff ea                                      b #0x54a2a4
0054a6a4  84 11 90 e5                                      ldr r1, [r0, #0x184]
0054a6a8  74 21 90 e5                                      ldr r2, [r0, #0x174]
0054a6ac  00 30 90 e5                                      ldr r3, [r0]
0054a6b0  02 10 81 e0                                      add r1, r1, r2
0054a6b4  0f e0 a0 e1                                      mov lr, pc
0054a6b8  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0054a6bc  c0 ff ff ea                                      b #0x54a5c4
0054a6c0  74 11 90 e5                                      ldr r1, [r0, #0x174]
0054a6c4  84 21 90 e5                                      ldr r2, [r0, #0x184]
0054a6c8  00 30 90 e5                                      ldr r3, [r0]
0054a6cc  01 10 62 e0                                      rsb r1, r2, r1
0054a6d0  0f e0 a0 e1                                      mov lr, pc
0054a6d4  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0054a6d8  b9 ff ff ea                                      b #0x54a5c4

; FUNCTION 0x0054a758, declared_size=576, range_size=576, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZN6glitch3gui13CGUIScrollBar4drawEv
; demangled: glitch::gui::CGUIScrollBar::draw()
; decoder-mode: arm
0054a758  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0054a75c  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
0054a760  30 d0 4d e2                                      sub sp, sp, #0x30
0054a764  00 40 a0 e1                                      mov r4, r0
0054a768  00 00 53 e3                                      cmp r3, #0
0054a76c  01 00 00 1a                                      bne #0x54a778
0054a770  30 d0 8d e2                                      add sp, sp, #0x30
0054a774  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0054a778  50 31 90 e5                                      ldr r3, [r0, #0x150]
0054a77c  03 00 a0 e1                                      mov r0, r3
0054a780  00 30 93 e5                                      ldr r3, [r3]
0054a784  0f e0 a0 e1                                      mov lr, pc
0054a788  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054a78c  00 50 50 e2                                      subs r5, r0, #0
0054a790  f6 ff ff 0a                                      beq #0x54a770
0054a794  4c 02 03 eb                                      bl #0x60b0cc
0054a798  70 31 d4 e5                                      ldrb r3, [r4, #0x170]
0054a79c  00 00 53 e3                                      cmp r3, #0
0054a7a0  28 00 00 0a                                      beq #0x54a848
0054a7a4  72 31 d4 e5                                      ldrb r3, [r4, #0x172]
0054a7a8  00 00 53 e3                                      cmp r3, #0
0054a7ac  25 00 00 1a                                      bne #0x54a848
0054a7b0  73 31 d4 e5                                      ldrb r3, [r4, #0x173]
0054a7b4  00 00 53 e3                                      cmp r3, #0
0054a7b8  22 00 00 0a                                      beq #0x54a848
0054a7bc  90 31 94 e5                                      ldr r3, [r4, #0x190]
0054a7c0  c8 30 83 e2                                      add r3, r3, #0xc8
0054a7c4  03 00 50 e1                                      cmp r0, r3
0054a7c8  1e 00 00 9a                                      bls #0x54a848
0054a7cc  74 61 94 e5                                      ldr r6, [r4, #0x174]
0054a7d0  88 21 94 e5                                      ldr r2, [r4, #0x188]
0054a7d4  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
0054a7d8  90 01 84 e5                                      str r0, [r4, #0x190]
0054a7dc  06 10 82 e0                                      add r1, r2, r6
0054a7e0  01 00 53 e1                                      cmp r3, r1
0054a7e4  02 00 00 aa                                      bge #0x54a7f4
0054a7e8  06 10 62 e0                                      rsb r1, r2, r6
0054a7ec  01 00 53 e1                                      cmp r3, r1
0054a7f0  03 10 a0 c1                                      movgt r1, r3
0054a7f4  00 30 94 e5                                      ldr r3, [r4]
0054a7f8  04 00 a0 e1                                      mov r0, r4
0054a7fc  0f e0 a0 e1                                      mov lr, pc
0054a800  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0054a804  74 31 94 e5                                      ldr r3, [r4, #0x174]
0054a808  06 00 53 e1                                      cmp r3, r6
0054a80c  0d 00 00 0a                                      beq #0x54a848
0054a810  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054a814  00 00 53 e3                                      cmp r3, #0
0054a818  0a 00 00 0a                                      beq #0x54a848
0054a81c  00 20 a0 e3                                      mov r2, #0
0054a820  06 10 a0 e3                                      mov r1, #6
0054a824  24 10 8d e5                                      str r1, [sp, #0x24]
0054a828  20 20 8d e5                                      str r2, [sp, #0x20]
0054a82c  14 20 8d e5                                      str r2, [sp, #0x14]
0054a830  1c 40 8d e5                                      str r4, [sp, #0x1c]
0054a834  03 00 a0 e1                                      mov r0, r3
0054a838  14 10 8d e2                                      add r1, sp, #0x14
0054a83c  00 30 93 e5                                      ldr r3, [r3]
0054a840  0f e0 a0 e1                                      mov lr, pc
0054a844  08 f0 93 e5                                      ldr pc, [r3, #8]
0054a848  38 00 84 e2                                      add r0, r4, #0x38
0054a84c  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
0054a850  60 01 84 e5                                      str r0, [r4, #0x160]
0054a854  64 11 84 e5                                      str r1, [r4, #0x164]
0054a858  68 21 84 e5                                      str r2, [r4, #0x168]
0054a85c  6c 31 84 e5                                      str r3, [r4, #0x16c]
0054a860  00 30 95 e5                                      ldr r3, [r5]
0054a864  10 10 a0 e3                                      mov r1, #0x10
0054a868  05 00 a0 e1                                      mov r0, r5
0054a86c  64 80 93 e5                                      ldr r8, [r3, #0x64]
0054a870  0f e0 a0 e1                                      mov lr, pc
0054a874  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054a878  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054a87c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054a880  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054a884  09 10 cd e5                                      strb r1, [sp, #9]
0054a888  0a 20 cd e5                                      strb r2, [sp, #0xa]
0054a88c  08 00 cd e5                                      strb r0, [sp, #8]
0054a890  0b 30 cd e5                                      strb r3, [sp, #0xb]
0054a894  08 30 9d e5                                      ldr r3, [sp, #8]
0054a898  30 20 8d e2                                      add r2, sp, #0x30
0054a89c  16 7e 84 e2                                      add r7, r4, #0x160
0054a8a0  48 60 84 e2                                      add r6, r4, #0x48
0054a8a4  04 30 22 e5                                      str r3, [r2, #-4]!
0054a8a8  05 00 a0 e1                                      mov r0, r5
0054a8ac  07 30 a0 e1                                      mov r3, r7
0054a8b0  00 60 8d e5                                      str r6, [sp]
0054a8b4  04 10 a0 e1                                      mov r1, r4
0054a8b8  38 ff 2f e1                                      blx r8
0054a8bc  80 31 94 e5                                      ldr r3, [r4, #0x180]
0054a8c0  00 00 53 e3                                      cmp r3, #0
0054a8c4  16 00 00 0a                                      beq #0x54a924
0054a8c8  71 31 d4 e5                                      ldrb r3, [r4, #0x171]
0054a8cc  00 00 53 e3                                      cmp r3, #0
0054a8d0  22 00 00 0a                                      beq #0x54a960
0054a8d4  78 c1 94 e5                                      ldr ip, [r4, #0x178]
0054a8d8  38 20 94 e5                                      ldr r2, [r4, #0x38]
0054a8dc  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
0054a8e0  34 10 94 e5                                      ldr r1, [r4, #0x34]
0054a8e4  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0054a8e8  02 20 8c e0                                      add r2, ip, r2
0054a8ec  01 20 82 e0                                      add r2, r2, r1
0054a8f0  a3 1f 83 e0                                      add r1, r3, r3, lsr #31
0054a8f4  02 20 60 e0                                      rsb r2, r0, r2
0054a8f8  c1 20 42 e0                                      sub r2, r2, r1, asr #1
0054a8fc  03 30 82 e0                                      add r3, r2, r3
0054a900  68 31 84 e5                                      str r3, [r4, #0x168]
0054a904  60 21 84 e5                                      str r2, [r4, #0x160]
0054a908  05 00 a0 e1                                      mov r0, r5
0054a90c  07 20 a0 e1                                      mov r2, r7
0054a910  06 30 a0 e1                                      mov r3, r6
0054a914  00 c0 95 e5                                      ldr ip, [r5]
0054a918  04 10 a0 e1                                      mov r1, r4
0054a91c  0f e0 a0 e1                                      mov lr, pc
0054a920  40 f0 9c e5                                      ldr pc, [ip, #0x40]
0054a924  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
0054a928  00 00 53 e3                                      cmp r3, #0
0054a92c  04 50 b4 15                                      ldrne r5, [r4, #4]!
0054a930  8e ff ff 0a                                      beq #0x54a770
0054a934  04 00 55 e1                                      cmp r5, r4
0054a938  8c ff ff 0a                                      beq #0x54a770
0054a93c  08 30 95 e5                                      ldr r3, [r5, #8]
0054a940  03 00 a0 e1                                      mov r0, r3
0054a944  00 30 93 e5                                      ldr r3, [r3]
0054a948  0f e0 a0 e1                                      mov lr, pc
0054a94c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0054a950  00 50 95 e5                                      ldr r5, [r5]
0054a954  04 00 55 e1                                      cmp r5, r4
0054a958  f7 ff ff 1a                                      bne #0x54a93c
0054a95c  83 ff ff ea                                      b #0x54a770
0054a960  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
0054a964  78 11 94 e5                                      ldr r1, [r4, #0x178]
0054a968  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0054a96c  30 c0 94 e5                                      ldr ip, [r4, #0x30]
0054a970  a3 0f 83 e0                                      add r0, r3, r3, lsr #31
0054a974  02 20 81 e0                                      add r2, r1, r2
0054a978  28 10 94 e5                                      ldr r1, [r4, #0x28]
0054a97c  0c 20 82 e0                                      add r2, r2, ip
0054a980  c0 20 42 e0                                      sub r2, r2, r0, asr #1
0054a984  02 20 61 e0                                      rsb r2, r1, r2
0054a988  03 30 82 e0                                      add r3, r2, r3
0054a98c  6c 31 84 e5                                      str r3, [r4, #0x16c]
0054a990  64 21 84 e5                                      str r2, [r4, #0x164]
0054a994  db ff ff ea                                      b #0x54a908

; FUNCTION 0x0054a998, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZTv0_n20_N6glitch3gui13CGUIScrollBar21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIScrollBar::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0054a998  00 30 90 e5                                      ldr r3, [r0]
0054a99c  14 30 13 e5                                      ldr r3, [r3, #-0x14]
0054a9a0  03 00 80 e0                                      add r0, r0, r3
0054a9a4  e0 fd ff ea                                      b #0x54a12c

; FUNCTION 0x0054a9a8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZTv0_n24_N6glitch3gui13CGUIScrollBarD0Ev
; demangled: virtual thunk to glitch::gui::CGUIScrollBar::~CGUIScrollBar()
; decoder-mode: arm
0054a9a8  00 30 90 e5                                      ldr r3, [r0]
0054a9ac  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0054a9b0  03 00 80 e0                                      add r0, r0, r3
0054a9b4  ac fd ff ea                                      b #0x54a06c

; FUNCTION 0x0054a9b8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZTv0_n12_N6glitch3gui13CGUIScrollBarD0Ev
; demangled: virtual thunk to glitch::gui::CGUIScrollBar::~CGUIScrollBar()
; decoder-mode: arm
0054a9b8  00 30 90 e5                                      ldr r3, [r0]
0054a9bc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054a9c0  03 00 80 e0                                      add r0, r0, r3
0054a9c4  a8 fd ff ea                                      b #0x54a06c

; FUNCTION 0x0054a9c8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZTv0_n24_N6glitch3gui13CGUIScrollBarD1Ev
; demangled: virtual thunk to glitch::gui::CGUIScrollBar::~CGUIScrollBar()
; decoder-mode: arm
0054a9c8  00 30 90 e5                                      ldr r3, [r0]
0054a9cc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0054a9d0  03 00 80 e0                                      add r0, r0, r3
0054a9d4  77 fd ff ea                                      b #0x549fb8

; FUNCTION 0x0054a9d8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZTv0_n12_N6glitch3gui13CGUIScrollBarD1Ev
; demangled: virtual thunk to glitch::gui::CGUIScrollBar::~CGUIScrollBar()
; decoder-mode: arm
0054a9d8  00 30 90 e5                                      ldr r3, [r0]
0054a9dc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054a9e0  03 00 80 e0                                      add r0, r0, r3
0054a9e4  73 fd ff ea                                      b #0x549fb8

; FUNCTION 0x0054a9e8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIScrollBar
; alias: _ZTv0_n16_NK6glitch3gui13CGUIScrollBar19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIScrollBar::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0054a9e8  00 30 90 e5                                      ldr r3, [r0]
0054a9ec  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054a9f0  03 00 80 e0                                      add r0, r0, r3
0054a9f4  77 f9 ff ea                                      b #0x548fd8
