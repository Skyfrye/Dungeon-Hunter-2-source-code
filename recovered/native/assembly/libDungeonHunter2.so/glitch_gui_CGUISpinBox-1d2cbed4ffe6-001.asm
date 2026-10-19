; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0054df38, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZNK6glitch3gui11CGUISpinBox10getEditBoxEv
; demangled: glitch::gui::CGUISpinBox::getEditBox() const
; decoder-mode: arm
0054df38  58 01 90 e5                                      ldr r0, [r0, #0x158]
0054df3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054df40, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBox8setRangeEff
; demangled: glitch::gui::CGUISpinBox::setRange(float, float)
; decoder-mode: arm
0054df40  10 40 2d e9                                      push {r4, lr}
0054df44  68 11 80 e5                                      str r1, [r0, #0x168]
0054df48  6c 21 80 e5                                      str r2, [r0, #0x16c]
0054df4c  00 30 90 e5                                      ldr r3, [r0]
0054df50  0f e0 a0 e1                                      mov lr, pc
0054df54  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0054df58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0054df5c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZNK6glitch3gui11CGUISpinBox6getMinEv
; demangled: glitch::gui::CGUISpinBox::getMin() const
; decoder-mode: arm
0054df5c  68 01 90 e5                                      ldr r0, [r0, #0x168]
0054df60  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054df64, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZNK6glitch3gui11CGUISpinBox6getMaxEv
; demangled: glitch::gui::CGUISpinBox::getMax() const
; decoder-mode: arm
0054df64  6c 01 90 e5                                      ldr r0, [r0, #0x16c]
0054df68  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054df6c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZNK6glitch3gui11CGUISpinBox11getStepSizeEv
; demangled: glitch::gui::CGUISpinBox::getStepSize() const
; decoder-mode: arm
0054df6c  64 01 90 e5                                      ldr r0, [r0, #0x164]
0054df70  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054df74, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBox11setStepSizeEf
; demangled: glitch::gui::CGUISpinBox::setStepSize(float)
; decoder-mode: arm
0054df74  64 11 80 e5                                      str r1, [r0, #0x164]
0054df78  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054df7c, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBox16verifyValueRangeEv
; demangled: glitch::gui::CGUISpinBox::verifyValueRange()
; decoder-mode: arm
0054df7c  70 40 2d e9                                      push {r4, r5, r6, lr}
0054df80  00 30 90 e5                                      ldr r3, [r0]
0054df84  00 40 a0 e1                                      mov r4, r0
0054df88  0f e0 a0 e1                                      mov lr, pc
0054df8c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0054df90  68 51 94 e5                                      ldr r5, [r4, #0x168]
0054df94  00 60 a0 e1                                      mov r6, r0
0054df98  05 10 a0 e1                                      mov r1, r5
0054df9c  da 01 f7 eb                                      bl #0x30e70c
0054dfa0  00 00 50 e3                                      cmp r0, #0
0054dfa4  05 00 00 1a                                      bne #0x54dfc0
0054dfa8  6c 51 94 e5                                      ldr r5, [r4, #0x16c]
0054dfac  06 00 a0 e1                                      mov r0, r6
0054dfb0  05 10 a0 e1                                      mov r1, r5
0054dfb4  cf 00 f7 eb                                      bl #0x30e2f8
0054dfb8  00 00 50 e3                                      cmp r0, #0
0054dfbc  04 00 00 0a                                      beq #0x54dfd4
0054dfc0  04 00 a0 e1                                      mov r0, r4
0054dfc4  05 10 a0 e1                                      mov r1, r5
0054dfc8  00 30 94 e5                                      ldr r3, [r4]
0054dfcc  0f e0 a0 e1                                      mov lr, pc
0054dfd0  80 f0 93 e5                                      ldr pc, [r3, #0x80]
0054dfd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0054dfd8, declared_size=80, range_size=80, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBox7setTextEPKw
; demangled: glitch::gui::CGUISpinBox::setText(wchar_t const*)
; decoder-mode: arm
0054dfd8  70 40 2d e9                                      push {r4, r5, r6, lr}
0054dfdc  58 31 90 e5                                      ldr r3, [r0, #0x158]
0054dfe0  00 40 a0 e1                                      mov r4, r0
0054dfe4  03 00 a0 e1                                      mov r0, r3
0054dfe8  00 30 93 e5                                      ldr r3, [r3]
0054dfec  0f e0 a0 e1                                      mov lr, pc
0054dff0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0054dff4  00 30 94 e5                                      ldr r3, [r4]
0054dff8  04 00 a0 e1                                      mov r0, r4
0054dffc  80 50 93 e5                                      ldr r5, [r3, #0x80]
0054e000  0f e0 a0 e1                                      mov lr, pc
0054e004  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0054e008  00 10 a0 e1                                      mov r1, r0
0054e00c  04 00 a0 e1                                      mov r0, r4
0054e010  35 ff 2f e1                                      blx r5
0054e014  04 00 a0 e1                                      mov r0, r4
0054e018  00 30 94 e5                                      ldr r3, [r4]
0054e01c  0f e0 a0 e1                                      mov lr, pc
0054e020  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0054e024  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0054e028, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZNK6glitch3gui11CGUISpinBox7getTextEv
; demangled: glitch::gui::CGUISpinBox::getText() const
; decoder-mode: arm
0054e028  10 40 2d e9                                      push {r4, lr}
0054e02c  58 31 90 e5                                      ldr r3, [r0, #0x158]
0054e030  03 00 a0 e1                                      mov r0, r3
0054e034  00 30 93 e5                                      ldr r3, [r3]
0054e038  0f e0 a0 e1                                      mov lr, pc
0054e03c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0054e040  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0054e044, declared_size=212, range_size=212, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZNK6glitch3gui11CGUISpinBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUISpinBox::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0054e044  70 40 2d e9                                      push {r4, r5, r6, lr}
0054e048  01 40 a0 e1                                      mov r4, r1
0054e04c  00 50 a0 e1                                      mov r5, r0
0054e050  19 9c ff eb                                      bl #0x5350bc
0054e054  00 20 94 e5                                      ldr r2, [r4]
0054e058  00 30 95 e5                                      ldr r3, [r5]
0054e05c  05 00 a0 e1                                      mov r0, r5
0054e060  64 60 92 e5                                      ldr r6, [r2, #0x64]
0054e064  0f e0 a0 e1                                      mov lr, pc
0054e068  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
0054e06c  94 10 9f e5                                      ldr r1, [pc, #0x94]
0054e070  00 20 a0 e1                                      mov r2, r0
0054e074  00 30 a0 e3                                      mov r3, #0
0054e078  01 10 8f e0                                      add r1, pc, r1
0054e07c  04 00 a0 e1                                      mov r0, r4
0054e080  36 ff 2f e1                                      blx r6
0054e084  00 20 94 e5                                      ldr r2, [r4]
0054e088  00 30 95 e5                                      ldr r3, [r5]
0054e08c  05 00 a0 e1                                      mov r0, r5
0054e090  64 60 92 e5                                      ldr r6, [r2, #0x64]
0054e094  0f e0 a0 e1                                      mov lr, pc
0054e098  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0054e09c  68 10 9f e5                                      ldr r1, [pc, #0x68]
0054e0a0  00 20 a0 e1                                      mov r2, r0
0054e0a4  00 30 a0 e3                                      mov r3, #0
0054e0a8  01 10 8f e0                                      add r1, pc, r1
0054e0ac  04 00 a0 e1                                      mov r0, r4
0054e0b0  36 ff 2f e1                                      blx r6
0054e0b4  00 20 94 e5                                      ldr r2, [r4]
0054e0b8  00 30 95 e5                                      ldr r3, [r5]
0054e0bc  05 00 a0 e1                                      mov r0, r5
0054e0c0  64 60 92 e5                                      ldr r6, [r2, #0x64]
0054e0c4  0f e0 a0 e1                                      mov lr, pc
0054e0c8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0054e0cc  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0054e0d0  00 20 a0 e1                                      mov r2, r0
0054e0d4  00 30 a0 e3                                      mov r3, #0
0054e0d8  04 00 a0 e1                                      mov r0, r4
0054e0dc  01 10 8f e0                                      add r1, pc, r1
0054e0e0  36 ff 2f e1                                      blx r6
0054e0e4  28 10 9f e5                                      ldr r1, [pc, #0x28]
0054e0e8  04 00 a0 e1                                      mov r0, r4
0054e0ec  b8 21 95 e5                                      ldr r2, [r5, #0x1b8]
0054e0f0  01 10 8f e0                                      add r1, pc, r1
0054e0f4  00 c0 94 e5                                      ldr ip, [r4]
0054e0f8  00 30 a0 e3                                      mov r3, #0
0054e0fc  0f e0 a0 e1                                      mov lr, pc
0054e100  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
0054e104  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0054e108  00 b6 38 00 d8 b5 38 00 4c c5 38 00 90 09 39 00  .byte 0x00, 0xb6, 0x38, 0x00, 0xd8, 0xb5, 0x38, 0x00, 0x4c, 0xc5, 0x38, 0x00, 0x90, 0x09, 0x39, 0x00

; FUNCTION 0x0054e138, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBox8setValueEf
; demangled: glitch::gui::CGUISpinBox::setValue(float)
; decoder-mode: arm
0054e138  30 40 2d e9                                      push {r4, r5, lr}
0054e13c  00 40 a0 e1                                      mov r4, r0
0054e140  67 df 4d e2                                      sub sp, sp, #0x19c
0054e144  01 00 a0 e1                                      mov r0, r1
0054e148  d5 01 f7 eb                                      bl #0x30e8a4
0054e14c  08 50 8d e2                                      add r5, sp, #8
0054e150  b4 21 94 e5                                      ldr r2, [r4, #0x1b4]
0054e154  f0 00 cd e1                                      strd r0, r1, [sp]
0054e158  63 10 a0 e3                                      mov r1, #0x63
0054e15c  05 00 a0 e1                                      mov r0, r5
0054e160  0d 03 f7 eb                                      bl #0x30ed9c
0054e164  58 31 94 e5                                      ldr r3, [r4, #0x158]
0054e168  05 10 a0 e1                                      mov r1, r5
0054e16c  03 00 a0 e1                                      mov r0, r3
0054e170  00 30 93 e5                                      ldr r3, [r3]
0054e174  0f e0 a0 e1                                      mov lr, pc
0054e178  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0054e17c  04 00 a0 e1                                      mov r0, r4
0054e180  00 30 94 e5                                      ldr r3, [r4]
0054e184  0f e0 a0 e1                                      mov lr, pc
0054e188  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0054e18c  67 df 8d e2                                      add sp, sp, #0x19c
0054e190  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0054e4d8, declared_size=1492, range_size=1492, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBoxC2EPKwPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiRKNS_4core4rectIiEE
; demangled: glitch::gui::CGUISpinBox::CGUISpinBox(wchar_t const*, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int> const&)
; decoder-mode: arm
0054e4d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0054e4dc  7c d0 4d e2                                      sub sp, sp, #0x7c
0054e4e0  a8 50 9d e5                                      ldr r5, [sp, #0xa8]
0054e4e4  01 60 a0 e1                                      mov r6, r1
0054e4e8  03 70 a0 e1                                      mov r7, r3
0054e4ec  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0054e4f0  00 80 95 e5                                      ldr r8, [r5]
0054e4f4  10 40 95 e9                                      ldmib r5, {r4, lr}
0054e4f8  60 c0 8d e5                                      str ip, [sp, #0x60]
0054e4fc  a4 c0 9d e5                                      ldr ip, [sp, #0xa4]
0054e500  14 20 8d e5                                      str r2, [sp, #0x14]
0054e504  04 10 81 e2                                      add r1, r1, #4
0054e508  03 20 a0 e1                                      mov r2, r3
0054e50c  00 c0 8d e5                                      str ip, [sp]
0054e510  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
0054e514  54 c0 8d e2                                      add ip, sp, #0x54
0054e518  54 80 8d e5                                      str r8, [sp, #0x54]
0054e51c  58 40 8d e5                                      str r4, [sp, #0x58]
0054e520  5c e0 8d e5                                      str lr, [sp, #0x5c]
0054e524  00 40 a0 e1                                      mov r4, r0
0054e528  04 c0 8d e5                                      str ip, [sp, #4]
0054e52c  18 ff ff eb                                      bl #0x54e194
0054e530  00 30 96 e5                                      ldr r3, [r6]
0054e534  00 80 a0 e3                                      mov r8, #0
0054e538  17 0e 84 e2                                      add r0, r4, #0x170
0054e53c  00 30 84 e5                                      str r3, [r4]
0054e540  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054e544  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
0054e548  74 10 8d e2                                      add r1, sp, #0x74
0054e54c  03 20 84 e7                                      str r2, [r4, r3]
0054e550  00 30 94 e5                                      ldr r3, [r4]
0054e554  20 20 96 e5                                      ldr r2, [r6, #0x20]
0054e558  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054e55c  03 20 84 e7                                      str r2, [r4, r3]
0054e560  fe 35 a0 e3                                      mov r3, #0x3f800000
0054e564  64 31 84 e5                                      str r3, [r4, #0x164]
0054e568  02 35 e0 e3                                      mvn r3, #0x800000
0054e56c  68 31 84 e5                                      str r3, [r4, #0x168]
0054e570  02 31 e0 e3                                      mvn r3, #0x80000000
0054e574  02 35 43 e2                                      sub r3, r3, #0x800000
0054e578  6c 31 84 e5                                      str r3, [r4, #0x16c]
0054e57c  58 81 84 e5                                      str r8, [r4, #0x158]
0054e580  5c 81 84 e5                                      str r8, [r4, #0x15c]
0054e584  60 81 84 e5                                      str r8, [r4, #0x160]
0054e588  b7 ff ff eb                                      bl #0x54e46c
0054e58c  00 30 e0 e3                                      mvn r3, #0
0054e590  08 00 57 e1                                      cmp r7, r8
0054e594  b8 31 84 e5                                      str r3, [r4, #0x1b8]
0054e598  2f 01 00 0a                                      beq #0x54ea5c
0054e59c  00 30 97 e5                                      ldr r3, [r7]
0054e5a0  07 00 a0 e1                                      mov r0, r7
0054e5a4  0f e0 a0 e1                                      mov lr, pc
0054e5a8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054e5ac  08 00 50 e1                                      cmp r0, r8
0054e5b0  29 01 00 0a                                      beq #0x54ea5c
0054e5b4  00 30 97 e5                                      ldr r3, [r7]
0054e5b8  07 00 a0 e1                                      mov r0, r7
0054e5bc  0f e0 a0 e1                                      mov lr, pc
0054e5c0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054e5c4  08 10 a0 e1                                      mov r1, r8
0054e5c8  00 30 90 e5                                      ldr r3, [r0]
0054e5cc  0f e0 a0 e1                                      mov lr, pc
0054e5d0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0054e5d4  00 30 97 e5                                      ldr r3, [r7]
0054e5d8  00 90 a0 e1                                      mov sb, r0
0054e5dc  07 00 a0 e1                                      mov r0, r7
0054e5e0  0f e0 a0 e1                                      mov lr, pc
0054e5e4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054e5e8  00 30 90 e5                                      ldr r3, [r0]
0054e5ec  0f e0 a0 e1                                      mov lr, pc
0054e5f0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0054e5f4  00 b0 a0 e1                                      mov fp, r0
0054e5f8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0054e5fc  04 30 95 e5                                      ldr r3, [r5, #4]
0054e600  50 01 94 e5                                      ldr r0, [r4, #0x150]
0054e604  08 e0 95 e5                                      ldr lr, [r5, #8]
0054e608  02 30 63 e0                                      rsb r3, r3, r2
0054e60c  00 20 95 e5                                      ldr r2, [r5]
0054e610  a3 1f 83 e0                                      add r1, r3, r3, lsr #31
0054e614  00 c0 90 e5                                      ldr ip, [r0]
0054e618  0e 20 62 e0                                      rsb r2, r2, lr
0054e61c  c1 10 a0 e1                                      asr r1, r1, #1
0054e620  00 60 a0 e3                                      mov r6, #0
0054e624  02 e0 69 e0                                      rsb lr, sb, r2
0054e628  01 10 81 e2                                      add r1, r1, #1
0054e62c  78 c0 9c e5                                      ldr ip, [ip, #0x78]
0054e630  44 e0 8d e5                                      str lr, [sp, #0x44]
0054e634  48 10 8d e5                                      str r1, [sp, #0x48]
0054e638  4c 20 8d e5                                      str r2, [sp, #0x4c]
0054e63c  50 30 8d e5                                      str r3, [sp, #0x50]
0054e640  04 20 a0 e1                                      mov r2, r4
0054e644  00 30 e0 e3                                      mvn r3, #0
0054e648  44 10 8d e2                                      add r1, sp, #0x44
0054e64c  00 60 8d e5                                      str r6, [sp]
0054e650  04 60 8d e5                                      str r6, [sp, #4]
0054e654  3c ff 2f e1                                      blx ip
0054e658  60 01 84 e5                                      str r0, [r4, #0x160]
0054e65c  00 30 90 e5                                      ldr r3, [r0]
0054e660  01 10 a0 e3                                      mov r1, #1
0054e664  01 80 a0 e1                                      mov r8, r1
0054e668  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054e66c  03 00 80 e0                                      add r0, r0, r3
0054e670  04 30 90 e5                                      ldr r3, [r0, #4]
0054e674  01 30 83 e0                                      add r3, r3, r1
0054e678  04 30 80 e5                                      str r3, [r0, #4]
0054e67c  60 31 94 e5                                      ldr r3, [r4, #0x160]
0054e680  03 00 a0 e1                                      mov r0, r3
0054e684  00 30 93 e5                                      ldr r3, [r3]
0054e688  0f e0 a0 e1                                      mov lr, pc
0054e68c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054e690  60 31 94 e5                                      ldr r3, [r4, #0x160]
0054e694  08 10 a0 e1                                      mov r1, r8
0054e698  08 20 a0 e1                                      mov r2, r8
0054e69c  34 61 c3 e5                                      strb r6, [r3, #0x134]
0054e6a0  60 01 94 e5                                      ldr r0, [r4, #0x160]
0054e6a4  02 30 a0 e3                                      mov r3, #2
0054e6a8  00 80 8d e5                                      str r8, [sp]
0054e6ac  63 98 ff eb                                      bl #0x534840
0054e6b0  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0054e6b4  04 20 95 e5                                      ldr r2, [r5, #4]
0054e6b8  50 01 94 e5                                      ldr r0, [r4, #0x150]
0054e6bc  08 10 95 e5                                      ldr r1, [r5, #8]
0054e6c0  0c 20 62 e0                                      rsb r2, r2, ip
0054e6c4  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
0054e6c8  00 30 95 e5                                      ldr r3, [r5]
0054e6cc  52 28 a0 e1                                      asr r2, r2, r8
0054e6d0  00 c0 90 e5                                      ldr ip, [r0]
0054e6d4  01 30 63 e0                                      rsb r3, r3, r1
0054e6d8  03 10 69 e0                                      rsb r1, sb, r3
0054e6dc  78 c0 9c e5                                      ldr ip, [ip, #0x78]
0054e6e0  34 10 8d e5                                      str r1, [sp, #0x34]
0054e6e4  3c 30 8d e5                                      str r3, [sp, #0x3c]
0054e6e8  40 20 8d e5                                      str r2, [sp, #0x40]
0054e6ec  00 30 e0 e3                                      mvn r3, #0
0054e6f0  04 20 a0 e1                                      mov r2, r4
0054e6f4  34 10 8d e2                                      add r1, sp, #0x34
0054e6f8  38 60 8d e5                                      str r6, [sp, #0x38]
0054e6fc  00 60 8d e5                                      str r6, [sp]
0054e700  04 60 8d e5                                      str r6, [sp, #4]
0054e704  3c ff 2f e1                                      blx ip
0054e708  5c 01 84 e5                                      str r0, [r4, #0x15c]
0054e70c  00 30 90 e5                                      ldr r3, [r0]
0054e710  08 10 a0 e1                                      mov r1, r8
0054e714  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054e718  03 00 80 e0                                      add r0, r0, r3
0054e71c  04 30 90 e5                                      ldr r3, [r0, #4]
0054e720  08 30 83 e0                                      add r3, r3, r8
0054e724  04 30 80 e5                                      str r3, [r0, #4]
0054e728  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0054e72c  03 00 a0 e1                                      mov r0, r3
0054e730  00 30 93 e5                                      ldr r3, [r3]
0054e734  0f e0 a0 e1                                      mov lr, pc
0054e738  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054e73c  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0054e740  02 c0 a0 e3                                      mov ip, #2
0054e744  08 10 a0 e1                                      mov r1, r8
0054e748  34 61 c3 e5                                      strb r6, [r3, #0x134]
0054e74c  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
0054e750  08 20 a0 e1                                      mov r2, r8
0054e754  06 30 a0 e1                                      mov r3, r6
0054e758  00 c0 8d e5                                      str ip, [sp]
0054e75c  37 98 ff eb                                      bl #0x534840
0054e760  06 00 5b e1                                      cmp fp, r6
0054e764  bf 00 00 0a                                      beq #0x54ea68
0054e768  00 30 97 e5                                      ldr r3, [r7]
0054e76c  07 00 a0 e1                                      mov r0, r7
0054e770  0f e0 a0 e1                                      mov lr, pc
0054e774  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054e778  60 31 94 e5                                      ldr r3, [r4, #0x160]
0054e77c  00 70 a0 e1                                      mov r7, r0
0054e780  0b 10 a0 e1                                      mov r1, fp
0054e784  03 00 a0 e1                                      mov r0, r3
0054e788  00 30 93 e5                                      ldr r3, [r3]
0054e78c  0f e0 a0 e1                                      mov lr, pc
0054e790  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0054e794  60 a1 94 e5                                      ldr sl, [r4, #0x160]
0054e798  00 30 97 e5                                      ldr r3, [r7]
0054e79c  0d 10 a0 e3                                      mov r1, #0xd
0054e7a0  00 20 9a e5                                      ldr r2, [sl]
0054e7a4  07 00 a0 e1                                      mov r0, r7
0054e7a8  94 20 92 e5                                      ldr r2, [r2, #0x94]
0054e7ac  10 20 8d e5                                      str r2, [sp, #0x10]
0054e7b0  0f e0 a0 e1                                      mov lr, pc
0054e7b4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054e7b8  00 20 a0 e1                                      mov r2, r0
0054e7bc  00 30 97 e5                                      ldr r3, [r7]
0054e7c0  12 10 a0 e3                                      mov r1, #0x12
0054e7c4  0c 20 8d e5                                      str r2, [sp, #0xc]
0054e7c8  07 00 a0 e1                                      mov r0, r7
0054e7cc  0f e0 a0 e1                                      mov lr, pc
0054e7d0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054e7d4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054e7d8  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
0054e7dc  50 18 e7 e7                                      ubfx r1, r0, #0x10, #8
0054e7e0  19 c0 cd e5                                      strb ip, [sp, #0x19]
0054e7e4  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054e7e8  18 00 cd e5                                      strb r0, [sp, #0x18]
0054e7ec  1a 10 cd e5                                      strb r1, [sp, #0x1a]
0054e7f0  18 10 9d e5                                      ldr r1, [sp, #0x18]
0054e7f4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054e7f8  0a 00 a0 e1                                      mov r0, sl
0054e7fc  01 30 a0 e1                                      mov r3, r1
0054e800  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0054e804  70 10 8d e5                                      str r1, [sp, #0x70]
0054e808  00 60 8d e5                                      str r6, [sp]
0054e80c  06 10 a0 e1                                      mov r1, r6
0054e810  3c ff 2f e1                                      blx ip
0054e814  60 a1 94 e5                                      ldr sl, [r4, #0x160]
0054e818  00 30 97 e5                                      ldr r3, [r7]
0054e81c  0d 10 a0 e3                                      mov r1, #0xd
0054e820  00 20 9a e5                                      ldr r2, [sl]
0054e824  07 00 a0 e1                                      mov r0, r7
0054e828  94 20 92 e5                                      ldr r2, [r2, #0x94]
0054e82c  10 20 8d e5                                      str r2, [sp, #0x10]
0054e830  0f e0 a0 e1                                      mov lr, pc
0054e834  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054e838  00 20 a0 e1                                      mov r2, r0
0054e83c  00 30 97 e5                                      ldr r3, [r7]
0054e840  12 10 a0 e3                                      mov r1, #0x12
0054e844  0c 20 8d e5                                      str r2, [sp, #0xc]
0054e848  07 00 a0 e1                                      mov r0, r7
0054e84c  0f e0 a0 e1                                      mov lr, pc
0054e850  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054e854  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054e858  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
0054e85c  50 18 e7 e7                                      ubfx r1, r0, #0x10, #8
0054e860  19 c0 cd e5                                      strb ip, [sp, #0x19]
0054e864  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054e868  18 00 cd e5                                      strb r0, [sp, #0x18]
0054e86c  1a 10 cd e5                                      strb r1, [sp, #0x1a]
0054e870  18 10 9d e5                                      ldr r1, [sp, #0x18]
0054e874  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0054e878  0a 00 a0 e1                                      mov r0, sl
0054e87c  01 30 a0 e1                                      mov r3, r1
0054e880  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054e884  6c 10 8d e5                                      str r1, [sp, #0x6c]
0054e888  00 60 8d e5                                      str r6, [sp]
0054e88c  08 10 a0 e1                                      mov r1, r8
0054e890  3c ff 2f e1                                      blx ip
0054e894  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0054e898  0b 10 a0 e1                                      mov r1, fp
0054e89c  03 00 a0 e1                                      mov r0, r3
0054e8a0  00 30 93 e5                                      ldr r3, [r3]
0054e8a4  0f e0 a0 e1                                      mov lr, pc
0054e8a8  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0054e8ac  5c a1 94 e5                                      ldr sl, [r4, #0x15c]
0054e8b0  00 30 97 e5                                      ldr r3, [r7]
0054e8b4  0c 10 a0 e3                                      mov r1, #0xc
0054e8b8  00 20 9a e5                                      ldr r2, [sl]
0054e8bc  07 00 a0 e1                                      mov r0, r7
0054e8c0  94 c0 92 e5                                      ldr ip, [r2, #0x94]
0054e8c4  0c c0 8d e5                                      str ip, [sp, #0xc]
0054e8c8  0f e0 a0 e1                                      mov lr, pc
0054e8cc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054e8d0  00 30 97 e5                                      ldr r3, [r7]
0054e8d4  00 b0 a0 e1                                      mov fp, r0
0054e8d8  12 10 a0 e3                                      mov r1, #0x12
0054e8dc  07 00 a0 e1                                      mov r0, r7
0054e8e0  0f e0 a0 e1                                      mov lr, pc
0054e8e4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054e8e8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054e8ec  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054e8f0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054e8f4  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054e8f8  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054e8fc  18 00 cd e5                                      strb r0, [sp, #0x18]
0054e900  19 10 cd e5                                      strb r1, [sp, #0x19]
0054e904  18 10 9d e5                                      ldr r1, [sp, #0x18]
0054e908  0b 20 a0 e1                                      mov r2, fp
0054e90c  0a 00 a0 e1                                      mov r0, sl
0054e910  01 30 a0 e1                                      mov r3, r1
0054e914  68 10 8d e5                                      str r1, [sp, #0x68]
0054e918  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0054e91c  06 10 a0 e1                                      mov r1, r6
0054e920  00 60 8d e5                                      str r6, [sp]
0054e924  3c ff 2f e1                                      blx ip
0054e928  5c a1 94 e5                                      ldr sl, [r4, #0x15c]
0054e92c  00 30 97 e5                                      ldr r3, [r7]
0054e930  0c 10 a0 e3                                      mov r1, #0xc
0054e934  00 20 9a e5                                      ldr r2, [sl]
0054e938  07 00 a0 e1                                      mov r0, r7
0054e93c  94 c0 92 e5                                      ldr ip, [r2, #0x94]
0054e940  0c c0 8d e5                                      str ip, [sp, #0xc]
0054e944  0f e0 a0 e1                                      mov lr, pc
0054e948  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054e94c  00 30 97 e5                                      ldr r3, [r7]
0054e950  00 b0 a0 e1                                      mov fp, r0
0054e954  12 10 a0 e3                                      mov r1, #0x12
0054e958  07 00 a0 e1                                      mov r0, r7
0054e95c  0f e0 a0 e1                                      mov lr, pc
0054e960  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054e964  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054e968  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054e96c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054e970  19 10 cd e5                                      strb r1, [sp, #0x19]
0054e974  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054e978  18 00 cd e5                                      strb r0, [sp, #0x18]
0054e97c  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054e980  18 30 9d e5                                      ldr r3, [sp, #0x18]
0054e984  00 60 8d e5                                      str r6, [sp]
0054e988  0a 00 a0 e1                                      mov r0, sl
0054e98c  64 30 8d e5                                      str r3, [sp, #0x64]
0054e990  08 10 a0 e1                                      mov r1, r8
0054e994  0b 20 a0 e1                                      mov r2, fp
0054e998  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0054e99c  3c ff 2f e1                                      blx ip
0054e9a0  08 00 95 e5                                      ldr r0, [r5, #8]
0054e9a4  00 30 95 e5                                      ldr r3, [r5]
0054e9a8  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0054e9ac  04 20 95 e5                                      ldr r2, [r5, #4]
0054e9b0  01 00 40 e2                                      sub r0, r0, #1
0054e9b4  00 00 63 e0                                      rsb r0, r3, r0
0054e9b8  50 31 94 e5                                      ldr r3, [r4, #0x150]
0054e9bc  00 50 a0 e3                                      mov r5, #0
0054e9c0  00 90 69 e0                                      rsb sb, sb, r0
0054e9c4  01 20 62 e0                                      rsb r2, r2, r1
0054e9c8  30 20 8d e5                                      str r2, [sp, #0x30]
0054e9cc  2c 90 8d e5                                      str sb, [sp, #0x2c]
0054e9d0  24 50 8d e5                                      str r5, [sp, #0x24]
0054e9d4  28 50 8d e5                                      str r5, [sp, #0x28]
0054e9d8  00 c0 93 e5                                      ldr ip, [r3]
0054e9dc  03 00 a0 e1                                      mov r0, r3
0054e9e0  00 30 e0 e3                                      mvn r3, #0
0054e9e4  24 20 8d e2                                      add r2, sp, #0x24
0054e9e8  14 10 9d e5                                      ldr r1, [sp, #0x14]
0054e9ec  04 30 8d e5                                      str r3, [sp, #4]
0054e9f0  00 40 8d e5                                      str r4, [sp]
0054e9f4  01 30 a0 e3                                      mov r3, #1
0054e9f8  0f e0 a0 e1                                      mov lr, pc
0054e9fc  ac f0 9c e5                                      ldr pc, [ip, #0xac]
0054ea00  58 01 84 e5                                      str r0, [r4, #0x158]
0054ea04  00 30 90 e5                                      ldr r3, [r0]
0054ea08  01 10 a0 e3                                      mov r1, #1
0054ea0c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054ea10  03 00 80 e0                                      add r0, r0, r3
0054ea14  04 30 90 e5                                      ldr r3, [r0, #4]
0054ea18  01 30 83 e0                                      add r3, r3, r1
0054ea1c  04 30 80 e5                                      str r3, [r0, #4]
0054ea20  58 31 94 e5                                      ldr r3, [r4, #0x158]
0054ea24  03 00 a0 e1                                      mov r0, r3
0054ea28  00 30 93 e5                                      ldr r3, [r3]
0054ea2c  0f e0 a0 e1                                      mov lr, pc
0054ea30  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054ea34  01 c0 a0 e3                                      mov ip, #1
0054ea38  58 01 94 e5                                      ldr r0, [r4, #0x158]
0054ea3c  05 10 a0 e1                                      mov r1, r5
0054ea40  0c 20 a0 e1                                      mov r2, ip
0054ea44  05 30 a0 e1                                      mov r3, r5
0054ea48  00 c0 8d e5                                      str ip, [sp]
0054ea4c  7b 97 ff eb                                      bl #0x534840
0054ea50  04 00 a0 e1                                      mov r0, r4
0054ea54  7c d0 8d e2                                      add sp, sp, #0x7c
0054ea58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0054ea5c  00 b0 a0 e3                                      mov fp, #0
0054ea60  10 90 a0 e3                                      mov sb, #0x10
0054ea64  e3 fe ff ea                                      b #0x54e5f8
0054ea68  60 31 94 e5                                      ldr r3, [r4, #0x160]
0054ea6c  30 10 9f e5                                      ldr r1, [pc, #0x30]
0054ea70  03 00 a0 e1                                      mov r0, r3
0054ea74  01 10 8f e0                                      add r1, pc, r1
0054ea78  00 30 93 e5                                      ldr r3, [r3]
0054ea7c  0f e0 a0 e1                                      mov lr, pc
0054ea80  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0054ea84  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0054ea88  18 10 9f e5                                      ldr r1, [pc, #0x18]
0054ea8c  03 00 a0 e1                                      mov r0, r3
0054ea90  01 10 8f e0                                      add r1, pc, r1
0054ea94  00 30 93 e5                                      ldr r3, [r3]
0054ea98  0f e0 a0 e1                                      mov lr, pc
0054ea9c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0054eaa0  be ff ff ea                                      b #0x54e9a0
; mapping-symbol data/literal pool
0054eaa4  e4 ff 38 00 d0 ff 38 00                          .byte 0xe4, 0xff, 0x38, 0x00, 0xd0, 0xff, 0x38, 0x00

; FUNCTION 0x0054eaac, declared_size=1556, range_size=1556, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBoxC1EPKwPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiRKNS_4core4rectIiEE
; demangled: glitch::gui::CGUISpinBox::CGUISpinBox(wchar_t const*, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int> const&)
; decoder-mode: arm
0054eaac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0054eab0  f0 65 9f e5                                      ldr r6, [pc, #0x5f0]
0054eab4  f0 c5 9f e5                                      ldr ip, [pc, #0x5f0]
0054eab8  f0 e5 9f e5                                      ldr lr, [pc, #0x5f0]
0054eabc  06 60 8f e0                                      add r6, pc, r6
0054eac0  0c c0 96 e7                                      ldr ip, [r6, ip]
0054eac4  0e e0 96 e7                                      ldr lr, [r6, lr]
0054eac8  01 70 a0 e3                                      mov r7, #1
0054eacc  24 50 9c e5                                      ldr r5, [ip, #0x24]
0054ead0  08 e0 8e e2                                      add lr, lr, #8
0054ead4  c4 71 80 e5                                      str r7, [r0, #0x1c4]
0054ead8  c0 e1 80 e5                                      str lr, [r0, #0x1c0]
0054eadc  bc 51 80 e5                                      str r5, [r0, #0x1bc]
0054eae0  7c d0 4d e2                                      sub sp, sp, #0x7c
0054eae4  0c e0 15 e5                                      ldr lr, [r5, #-0xc]
0054eae8  28 80 9c e5                                      ldr r8, [ip, #0x28]
0054eaec  a4 50 9d e5                                      ldr r5, [sp, #0xa4]
0054eaf0  6f 7f 80 e2                                      add r7, r0, #0x1bc
0054eaf4  0e 80 87 e7                                      str r8, [r7, lr]
0054eaf8  80 40 95 e9                                      ldmib r5, {r7, lr}
0054eafc  00 a0 95 e5                                      ldr sl, [r5]
0054eb00  0c 80 95 e5                                      ldr r8, [r5, #0xc]
0054eb04  14 10 8d e5                                      str r1, [sp, #0x14]
0054eb08  04 10 8c e2                                      add r1, ip, #4
0054eb0c  a0 c0 9d e5                                      ldr ip, [sp, #0xa0]
0054eb10  00 40 a0 e1                                      mov r4, r0
0054eb14  58 70 8d e5                                      str r7, [sp, #0x58]
0054eb18  00 c0 8d e5                                      str ip, [sp]
0054eb1c  54 c0 8d e2                                      add ip, sp, #0x54
0054eb20  02 70 a0 e1                                      mov r7, r2
0054eb24  5c e0 8d e5                                      str lr, [sp, #0x5c]
0054eb28  04 c0 8d e5                                      str ip, [sp, #4]
0054eb2c  54 a0 8d e5                                      str sl, [sp, #0x54]
0054eb30  60 80 8d e5                                      str r8, [sp, #0x60]
0054eb34  96 fd ff eb                                      bl #0x54e194
0054eb38  74 35 9f e5                                      ldr r3, [pc, #0x574]
0054eb3c  17 0e 84 e2                                      add r0, r4, #0x170
0054eb40  03 30 96 e7                                      ldr r3, [r6, r3]
0054eb44  00 60 a0 e3                                      mov r6, #0
0054eb48  58 61 84 e5                                      str r6, [r4, #0x158]
0054eb4c  ec 20 83 e2                                      add r2, r3, #0xec
0054eb50  10 10 83 e2                                      add r1, r3, #0x10
0054eb54  cc 30 83 e2                                      add r3, r3, #0xcc
0054eb58  bc 31 84 e5                                      str r3, [r4, #0x1bc]
0054eb5c  fe 35 a0 e3                                      mov r3, #0x3f800000
0054eb60  64 31 84 e5                                      str r3, [r4, #0x164]
0054eb64  02 35 e0 e3                                      mvn r3, #0x800000
0054eb68  68 31 84 e5                                      str r3, [r4, #0x168]
0054eb6c  02 31 e0 e3                                      mvn r3, #0x80000000
0054eb70  02 35 43 e2                                      sub r3, r3, #0x800000
0054eb74  00 10 84 e5                                      str r1, [r4]
0054eb78  6c 31 84 e5                                      str r3, [r4, #0x16c]
0054eb7c  c0 21 84 e5                                      str r2, [r4, #0x1c0]
0054eb80  5c 61 84 e5                                      str r6, [r4, #0x15c]
0054eb84  60 61 84 e5                                      str r6, [r4, #0x160]
0054eb88  74 10 8d e2                                      add r1, sp, #0x74
0054eb8c  36 fe ff eb                                      bl #0x54e46c
0054eb90  00 30 e0 e3                                      mvn r3, #0
0054eb94  06 00 57 e1                                      cmp r7, r6
0054eb98  b8 31 84 e5                                      str r3, [r4, #0x1b8]
0054eb9c  2f 01 00 0a                                      beq #0x54f060
0054eba0  00 30 97 e5                                      ldr r3, [r7]
0054eba4  07 00 a0 e1                                      mov r0, r7
0054eba8  0f e0 a0 e1                                      mov lr, pc
0054ebac  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054ebb0  06 00 50 e1                                      cmp r0, r6
0054ebb4  29 01 00 0a                                      beq #0x54f060
0054ebb8  00 30 97 e5                                      ldr r3, [r7]
0054ebbc  07 00 a0 e1                                      mov r0, r7
0054ebc0  0f e0 a0 e1                                      mov lr, pc
0054ebc4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054ebc8  06 10 a0 e1                                      mov r1, r6
0054ebcc  00 30 90 e5                                      ldr r3, [r0]
0054ebd0  0f e0 a0 e1                                      mov lr, pc
0054ebd4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0054ebd8  00 30 97 e5                                      ldr r3, [r7]
0054ebdc  00 90 a0 e1                                      mov sb, r0
0054ebe0  07 00 a0 e1                                      mov r0, r7
0054ebe4  0f e0 a0 e1                                      mov lr, pc
0054ebe8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054ebec  00 30 90 e5                                      ldr r3, [r0]
0054ebf0  0f e0 a0 e1                                      mov lr, pc
0054ebf4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0054ebf8  00 b0 a0 e1                                      mov fp, r0
0054ebfc  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0054ec00  04 30 95 e5                                      ldr r3, [r5, #4]
0054ec04  50 01 94 e5                                      ldr r0, [r4, #0x150]
0054ec08  08 e0 95 e5                                      ldr lr, [r5, #8]
0054ec0c  02 30 63 e0                                      rsb r3, r3, r2
0054ec10  00 20 95 e5                                      ldr r2, [r5]
0054ec14  a3 1f 83 e0                                      add r1, r3, r3, lsr #31
0054ec18  00 c0 90 e5                                      ldr ip, [r0]
0054ec1c  0e 20 62 e0                                      rsb r2, r2, lr
0054ec20  c1 10 a0 e1                                      asr r1, r1, #1
0054ec24  00 60 a0 e3                                      mov r6, #0
0054ec28  02 e0 69 e0                                      rsb lr, sb, r2
0054ec2c  01 10 81 e2                                      add r1, r1, #1
0054ec30  78 c0 9c e5                                      ldr ip, [ip, #0x78]
0054ec34  44 e0 8d e5                                      str lr, [sp, #0x44]
0054ec38  48 10 8d e5                                      str r1, [sp, #0x48]
0054ec3c  4c 20 8d e5                                      str r2, [sp, #0x4c]
0054ec40  50 30 8d e5                                      str r3, [sp, #0x50]
0054ec44  04 20 a0 e1                                      mov r2, r4
0054ec48  00 30 e0 e3                                      mvn r3, #0
0054ec4c  44 10 8d e2                                      add r1, sp, #0x44
0054ec50  00 60 8d e5                                      str r6, [sp]
0054ec54  04 60 8d e5                                      str r6, [sp, #4]
0054ec58  3c ff 2f e1                                      blx ip
0054ec5c  60 01 84 e5                                      str r0, [r4, #0x160]
0054ec60  00 30 90 e5                                      ldr r3, [r0]
0054ec64  01 10 a0 e3                                      mov r1, #1
0054ec68  01 80 a0 e1                                      mov r8, r1
0054ec6c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054ec70  03 00 80 e0                                      add r0, r0, r3
0054ec74  04 30 90 e5                                      ldr r3, [r0, #4]
0054ec78  01 30 83 e0                                      add r3, r3, r1
0054ec7c  04 30 80 e5                                      str r3, [r0, #4]
0054ec80  60 31 94 e5                                      ldr r3, [r4, #0x160]
0054ec84  03 00 a0 e1                                      mov r0, r3
0054ec88  00 30 93 e5                                      ldr r3, [r3]
0054ec8c  0f e0 a0 e1                                      mov lr, pc
0054ec90  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054ec94  60 31 94 e5                                      ldr r3, [r4, #0x160]
0054ec98  08 10 a0 e1                                      mov r1, r8
0054ec9c  08 20 a0 e1                                      mov r2, r8
0054eca0  34 61 c3 e5                                      strb r6, [r3, #0x134]
0054eca4  60 01 94 e5                                      ldr r0, [r4, #0x160]
0054eca8  02 30 a0 e3                                      mov r3, #2
0054ecac  00 80 8d e5                                      str r8, [sp]
0054ecb0  e2 96 ff eb                                      bl #0x534840
0054ecb4  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0054ecb8  04 20 95 e5                                      ldr r2, [r5, #4]
0054ecbc  50 01 94 e5                                      ldr r0, [r4, #0x150]
0054ecc0  08 10 95 e5                                      ldr r1, [r5, #8]
0054ecc4  0c 20 62 e0                                      rsb r2, r2, ip
0054ecc8  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
0054eccc  00 30 95 e5                                      ldr r3, [r5]
0054ecd0  52 28 a0 e1                                      asr r2, r2, r8
0054ecd4  00 c0 90 e5                                      ldr ip, [r0]
0054ecd8  01 30 63 e0                                      rsb r3, r3, r1
0054ecdc  03 10 69 e0                                      rsb r1, sb, r3
0054ece0  78 c0 9c e5                                      ldr ip, [ip, #0x78]
0054ece4  34 10 8d e5                                      str r1, [sp, #0x34]
0054ece8  3c 30 8d e5                                      str r3, [sp, #0x3c]
0054ecec  40 20 8d e5                                      str r2, [sp, #0x40]
0054ecf0  00 30 e0 e3                                      mvn r3, #0
0054ecf4  04 20 a0 e1                                      mov r2, r4
0054ecf8  34 10 8d e2                                      add r1, sp, #0x34
0054ecfc  38 60 8d e5                                      str r6, [sp, #0x38]
0054ed00  00 60 8d e5                                      str r6, [sp]
0054ed04  04 60 8d e5                                      str r6, [sp, #4]
0054ed08  3c ff 2f e1                                      blx ip
0054ed0c  5c 01 84 e5                                      str r0, [r4, #0x15c]
0054ed10  00 30 90 e5                                      ldr r3, [r0]
0054ed14  08 10 a0 e1                                      mov r1, r8
0054ed18  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054ed1c  03 00 80 e0                                      add r0, r0, r3
0054ed20  04 30 90 e5                                      ldr r3, [r0, #4]
0054ed24  08 30 83 e0                                      add r3, r3, r8
0054ed28  04 30 80 e5                                      str r3, [r0, #4]
0054ed2c  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0054ed30  03 00 a0 e1                                      mov r0, r3
0054ed34  00 30 93 e5                                      ldr r3, [r3]
0054ed38  0f e0 a0 e1                                      mov lr, pc
0054ed3c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054ed40  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0054ed44  02 c0 a0 e3                                      mov ip, #2
0054ed48  08 10 a0 e1                                      mov r1, r8
0054ed4c  34 61 c3 e5                                      strb r6, [r3, #0x134]
0054ed50  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
0054ed54  08 20 a0 e1                                      mov r2, r8
0054ed58  06 30 a0 e1                                      mov r3, r6
0054ed5c  00 c0 8d e5                                      str ip, [sp]
0054ed60  b6 96 ff eb                                      bl #0x534840
0054ed64  06 00 5b e1                                      cmp fp, r6
0054ed68  bf 00 00 0a                                      beq #0x54f06c
0054ed6c  00 30 97 e5                                      ldr r3, [r7]
0054ed70  07 00 a0 e1                                      mov r0, r7
0054ed74  0f e0 a0 e1                                      mov lr, pc
0054ed78  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054ed7c  60 31 94 e5                                      ldr r3, [r4, #0x160]
0054ed80  00 70 a0 e1                                      mov r7, r0
0054ed84  0b 10 a0 e1                                      mov r1, fp
0054ed88  03 00 a0 e1                                      mov r0, r3
0054ed8c  00 30 93 e5                                      ldr r3, [r3]
0054ed90  0f e0 a0 e1                                      mov lr, pc
0054ed94  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0054ed98  60 a1 94 e5                                      ldr sl, [r4, #0x160]
0054ed9c  00 30 97 e5                                      ldr r3, [r7]
0054eda0  0d 10 a0 e3                                      mov r1, #0xd
0054eda4  00 20 9a e5                                      ldr r2, [sl]
0054eda8  07 00 a0 e1                                      mov r0, r7
0054edac  94 20 92 e5                                      ldr r2, [r2, #0x94]
0054edb0  10 20 8d e5                                      str r2, [sp, #0x10]
0054edb4  0f e0 a0 e1                                      mov lr, pc
0054edb8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054edbc  00 20 a0 e1                                      mov r2, r0
0054edc0  00 30 97 e5                                      ldr r3, [r7]
0054edc4  12 10 a0 e3                                      mov r1, #0x12
0054edc8  0c 20 8d e5                                      str r2, [sp, #0xc]
0054edcc  07 00 a0 e1                                      mov r0, r7
0054edd0  0f e0 a0 e1                                      mov lr, pc
0054edd4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054edd8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054eddc  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
0054ede0  50 18 e7 e7                                      ubfx r1, r0, #0x10, #8
0054ede4  19 c0 cd e5                                      strb ip, [sp, #0x19]
0054ede8  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054edec  18 00 cd e5                                      strb r0, [sp, #0x18]
0054edf0  1a 10 cd e5                                      strb r1, [sp, #0x1a]
0054edf4  18 10 9d e5                                      ldr r1, [sp, #0x18]
0054edf8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054edfc  0a 00 a0 e1                                      mov r0, sl
0054ee00  01 30 a0 e1                                      mov r3, r1
0054ee04  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0054ee08  70 10 8d e5                                      str r1, [sp, #0x70]
0054ee0c  00 60 8d e5                                      str r6, [sp]
0054ee10  06 10 a0 e1                                      mov r1, r6
0054ee14  3c ff 2f e1                                      blx ip
0054ee18  60 a1 94 e5                                      ldr sl, [r4, #0x160]
0054ee1c  00 30 97 e5                                      ldr r3, [r7]
0054ee20  0d 10 a0 e3                                      mov r1, #0xd
0054ee24  00 20 9a e5                                      ldr r2, [sl]
0054ee28  07 00 a0 e1                                      mov r0, r7
0054ee2c  94 20 92 e5                                      ldr r2, [r2, #0x94]
0054ee30  10 20 8d e5                                      str r2, [sp, #0x10]
0054ee34  0f e0 a0 e1                                      mov lr, pc
0054ee38  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054ee3c  00 20 a0 e1                                      mov r2, r0
0054ee40  00 30 97 e5                                      ldr r3, [r7]
0054ee44  12 10 a0 e3                                      mov r1, #0x12
0054ee48  0c 20 8d e5                                      str r2, [sp, #0xc]
0054ee4c  07 00 a0 e1                                      mov r0, r7
0054ee50  0f e0 a0 e1                                      mov lr, pc
0054ee54  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054ee58  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054ee5c  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
0054ee60  50 18 e7 e7                                      ubfx r1, r0, #0x10, #8
0054ee64  19 c0 cd e5                                      strb ip, [sp, #0x19]
0054ee68  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054ee6c  18 00 cd e5                                      strb r0, [sp, #0x18]
0054ee70  1a 10 cd e5                                      strb r1, [sp, #0x1a]
0054ee74  18 10 9d e5                                      ldr r1, [sp, #0x18]
0054ee78  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0054ee7c  0a 00 a0 e1                                      mov r0, sl
0054ee80  01 30 a0 e1                                      mov r3, r1
0054ee84  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054ee88  6c 10 8d e5                                      str r1, [sp, #0x6c]
0054ee8c  00 60 8d e5                                      str r6, [sp]
0054ee90  08 10 a0 e1                                      mov r1, r8
0054ee94  3c ff 2f e1                                      blx ip
0054ee98  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0054ee9c  0b 10 a0 e1                                      mov r1, fp
0054eea0  03 00 a0 e1                                      mov r0, r3
0054eea4  00 30 93 e5                                      ldr r3, [r3]
0054eea8  0f e0 a0 e1                                      mov lr, pc
0054eeac  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0054eeb0  5c a1 94 e5                                      ldr sl, [r4, #0x15c]
0054eeb4  00 30 97 e5                                      ldr r3, [r7]
0054eeb8  0c 10 a0 e3                                      mov r1, #0xc
0054eebc  00 20 9a e5                                      ldr r2, [sl]
0054eec0  07 00 a0 e1                                      mov r0, r7
0054eec4  94 c0 92 e5                                      ldr ip, [r2, #0x94]
0054eec8  0c c0 8d e5                                      str ip, [sp, #0xc]
0054eecc  0f e0 a0 e1                                      mov lr, pc
0054eed0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054eed4  00 30 97 e5                                      ldr r3, [r7]
0054eed8  00 b0 a0 e1                                      mov fp, r0
0054eedc  12 10 a0 e3                                      mov r1, #0x12
0054eee0  07 00 a0 e1                                      mov r0, r7
0054eee4  0f e0 a0 e1                                      mov lr, pc
0054eee8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054eeec  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054eef0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054eef4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054eef8  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054eefc  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054ef00  18 00 cd e5                                      strb r0, [sp, #0x18]
0054ef04  19 10 cd e5                                      strb r1, [sp, #0x19]
0054ef08  18 10 9d e5                                      ldr r1, [sp, #0x18]
0054ef0c  0b 20 a0 e1                                      mov r2, fp
0054ef10  0a 00 a0 e1                                      mov r0, sl
0054ef14  01 30 a0 e1                                      mov r3, r1
0054ef18  68 10 8d e5                                      str r1, [sp, #0x68]
0054ef1c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0054ef20  06 10 a0 e1                                      mov r1, r6
0054ef24  00 60 8d e5                                      str r6, [sp]
0054ef28  3c ff 2f e1                                      blx ip
0054ef2c  5c a1 94 e5                                      ldr sl, [r4, #0x15c]
0054ef30  00 30 97 e5                                      ldr r3, [r7]
0054ef34  0c 10 a0 e3                                      mov r1, #0xc
0054ef38  00 20 9a e5                                      ldr r2, [sl]
0054ef3c  07 00 a0 e1                                      mov r0, r7
0054ef40  94 c0 92 e5                                      ldr ip, [r2, #0x94]
0054ef44  0c c0 8d e5                                      str ip, [sp, #0xc]
0054ef48  0f e0 a0 e1                                      mov lr, pc
0054ef4c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054ef50  00 30 97 e5                                      ldr r3, [r7]
0054ef54  00 b0 a0 e1                                      mov fp, r0
0054ef58  12 10 a0 e3                                      mov r1, #0x12
0054ef5c  07 00 a0 e1                                      mov r0, r7
0054ef60  0f e0 a0 e1                                      mov lr, pc
0054ef64  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054ef68  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054ef6c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ef70  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054ef74  19 10 cd e5                                      strb r1, [sp, #0x19]
0054ef78  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0054ef7c  18 00 cd e5                                      strb r0, [sp, #0x18]
0054ef80  1b 30 cd e5                                      strb r3, [sp, #0x1b]
0054ef84  18 30 9d e5                                      ldr r3, [sp, #0x18]
0054ef88  00 60 8d e5                                      str r6, [sp]
0054ef8c  0a 00 a0 e1                                      mov r0, sl
0054ef90  64 30 8d e5                                      str r3, [sp, #0x64]
0054ef94  08 10 a0 e1                                      mov r1, r8
0054ef98  0b 20 a0 e1                                      mov r2, fp
0054ef9c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0054efa0  3c ff 2f e1                                      blx ip
0054efa4  08 00 95 e5                                      ldr r0, [r5, #8]
0054efa8  00 30 95 e5                                      ldr r3, [r5]
0054efac  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0054efb0  04 20 95 e5                                      ldr r2, [r5, #4]
0054efb4  01 00 40 e2                                      sub r0, r0, #1
0054efb8  00 00 63 e0                                      rsb r0, r3, r0
0054efbc  50 31 94 e5                                      ldr r3, [r4, #0x150]
0054efc0  00 50 a0 e3                                      mov r5, #0
0054efc4  00 90 69 e0                                      rsb sb, sb, r0
0054efc8  01 20 62 e0                                      rsb r2, r2, r1
0054efcc  30 20 8d e5                                      str r2, [sp, #0x30]
0054efd0  2c 90 8d e5                                      str sb, [sp, #0x2c]
0054efd4  24 50 8d e5                                      str r5, [sp, #0x24]
0054efd8  28 50 8d e5                                      str r5, [sp, #0x28]
0054efdc  00 c0 93 e5                                      ldr ip, [r3]
0054efe0  03 00 a0 e1                                      mov r0, r3
0054efe4  00 30 e0 e3                                      mvn r3, #0
0054efe8  24 20 8d e2                                      add r2, sp, #0x24
0054efec  14 10 9d e5                                      ldr r1, [sp, #0x14]
0054eff0  04 30 8d e5                                      str r3, [sp, #4]
0054eff4  00 40 8d e5                                      str r4, [sp]
0054eff8  01 30 a0 e3                                      mov r3, #1
0054effc  0f e0 a0 e1                                      mov lr, pc
0054f000  ac f0 9c e5                                      ldr pc, [ip, #0xac]
0054f004  58 01 84 e5                                      str r0, [r4, #0x158]
0054f008  00 30 90 e5                                      ldr r3, [r0]
0054f00c  01 10 a0 e3                                      mov r1, #1
0054f010  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054f014  03 00 80 e0                                      add r0, r0, r3
0054f018  04 30 90 e5                                      ldr r3, [r0, #4]
0054f01c  01 30 83 e0                                      add r3, r3, r1
0054f020  04 30 80 e5                                      str r3, [r0, #4]
0054f024  58 31 94 e5                                      ldr r3, [r4, #0x158]
0054f028  03 00 a0 e1                                      mov r0, r3
0054f02c  00 30 93 e5                                      ldr r3, [r3]
0054f030  0f e0 a0 e1                                      mov lr, pc
0054f034  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054f038  01 c0 a0 e3                                      mov ip, #1
0054f03c  58 01 94 e5                                      ldr r0, [r4, #0x158]
0054f040  05 10 a0 e1                                      mov r1, r5
0054f044  0c 20 a0 e1                                      mov r2, ip
0054f048  05 30 a0 e1                                      mov r3, r5
0054f04c  00 c0 8d e5                                      str ip, [sp]
0054f050  fa 95 ff eb                                      bl #0x534840
0054f054  04 00 a0 e1                                      mov r0, r4
0054f058  7c d0 8d e2                                      add sp, sp, #0x7c
0054f05c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0054f060  00 b0 a0 e3                                      mov fp, #0
0054f064  10 90 a0 e3                                      mov sb, #0x10
0054f068  e3 fe ff ea                                      b #0x54ebfc
0054f06c  60 31 94 e5                                      ldr r3, [r4, #0x160]
0054f070  40 10 9f e5                                      ldr r1, [pc, #0x40]
0054f074  03 00 a0 e1                                      mov r0, r3
0054f078  01 10 8f e0                                      add r1, pc, r1
0054f07c  00 30 93 e5                                      ldr r3, [r3]
0054f080  0f e0 a0 e1                                      mov lr, pc
0054f084  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0054f088  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0054f08c  28 10 9f e5                                      ldr r1, [pc, #0x28]
0054f090  03 00 a0 e1                                      mov r0, r3
0054f094  01 10 8f e0                                      add r1, pc, r1
0054f098  00 30 93 e5                                      ldr r3, [r3]
0054f09c  0f e0 a0 e1                                      mov lr, pc
0054f0a0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0054f0a4  be ff ff ea                                      b #0x54efa4
; mapping-symbol data/literal pool
0054f0a8  d4 5f 44 00 d0 1c 00 00 44 2b 00 00 28 15 00 00  .byte 0xd4, 0x5f, 0x44, 0x00, 0xd0, 0x1c, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x28, 0x15, 0x00, 0x00
0054f0b8  e0 f9 38 00 cc f9 38 00                          .byte 0xe0, 0xf9, 0x38, 0x00, 0xcc, 0xf9, 0x38, 0x00

; FUNCTION 0x0054f0c0, declared_size=200, range_size=200, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUISpinBox::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0054f0c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0054f0c4  01 40 a0 e1                                      mov r4, r1
0054f0c8  00 50 a0 e1                                      mov r5, r0
0054f0cc  d9 a9 ff eb                                      bl #0x539838
0054f0d0  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
0054f0d4  00 20 95 e5                                      ldr r2, [r5]
0054f0d8  00 30 94 e5                                      ldr r3, [r4]
0054f0dc  01 10 8f e0                                      add r1, pc, r1
0054f0e0  04 00 a0 e1                                      mov r0, r4
0054f0e4  88 60 92 e5                                      ldr r6, [r2, #0x88]
0054f0e8  0f e0 a0 e1                                      mov lr, pc
0054f0ec  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0054f0f0  84 10 9f e5                                      ldr r1, [pc, #0x84]
0054f0f4  00 30 94 e5                                      ldr r3, [r4]
0054f0f8  00 70 a0 e1                                      mov r7, r0
0054f0fc  01 10 8f e0                                      add r1, pc, r1
0054f100  04 00 a0 e1                                      mov r0, r4
0054f104  0f e0 a0 e1                                      mov lr, pc
0054f108  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0054f10c  07 10 a0 e1                                      mov r1, r7
0054f110  00 20 a0 e1                                      mov r2, r0
0054f114  05 00 a0 e1                                      mov r0, r5
0054f118  36 ff 2f e1                                      blx r6
0054f11c  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0054f120  00 20 95 e5                                      ldr r2, [r5]
0054f124  00 30 94 e5                                      ldr r3, [r4]
0054f128  01 10 8f e0                                      add r1, pc, r1
0054f12c  04 00 a0 e1                                      mov r0, r4
0054f130  94 60 92 e5                                      ldr r6, [r2, #0x94]
0054f134  0f e0 a0 e1                                      mov lr, pc
0054f138  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0054f13c  00 10 a0 e1                                      mov r1, r0
0054f140  05 00 a0 e1                                      mov r0, r5
0054f144  36 ff 2f e1                                      blx r6
0054f148  34 10 9f e5                                      ldr r1, [pc, #0x34]
0054f14c  00 20 95 e5                                      ldr r2, [r5]
0054f150  00 30 94 e5                                      ldr r3, [r4]
0054f154  04 00 a0 e1                                      mov r0, r4
0054f158  01 10 8f e0                                      add r1, pc, r1
0054f15c  98 40 92 e5                                      ldr r4, [r2, #0x98]
0054f160  0f e0 a0 e1                                      mov lr, pc
0054f164  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0054f168  00 10 a0 e1                                      mov r1, r0
0054f16c  05 00 a0 e1                                      mov r0, r5
0054f170  34 ff 2f e1                                      blx r4
0054f174  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0054f178  9c a5 38 00 84 a5 38 00 00 b5 38 00 28 f9 38 00  .byte 0x9c, 0xa5, 0x38, 0x00, 0x84, 0xa5, 0x38, 0x00, 0x00, 0xb5, 0x38, 0x00, 0x28, 0xf9, 0x38, 0x00

; FUNCTION 0x0054f188, declared_size=160, range_size=160, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZNK6glitch3gui11CGUISpinBox8getValueEv
; demangled: glitch::gui::CGUISpinBox::getValue() const
; decoder-mode: arm
0054f188  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0054f18c  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
0054f190  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
0054f194  24 d0 4d e2                                      sub sp, sp, #0x24
0054f198  04 40 8f e0                                      add r4, pc, r4
0054f19c  05 30 94 e7                                      ldr r3, [r4, r5]
0054f1a0  00 30 93 e5                                      ldr r3, [r3]
0054f1a4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0054f1a8  58 31 90 e5                                      ldr r3, [r0, #0x158]
0054f1ac  03 00 a0 e1                                      mov r0, r3
0054f1b0  00 30 93 e5                                      ldr r3, [r3]
0054f1b4  0f e0 a0 e1                                      mov lr, pc
0054f1b8  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0054f1bc  00 10 50 e2                                      subs r1, r0, #0
0054f1c0  00 70 a0 03                                      moveq r7, #0
0054f1c4  0c 00 00 0a                                      beq #0x54f1fc
0054f1c8  04 60 8d e2                                      add r6, sp, #4
0054f1cc  06 00 a0 e1                                      mov r0, r6
0054f1d0  a0 5e f7 eb                                      bl #0x326c58
0054f1d4  18 00 9d e5                                      ldr r0, [sp, #0x18]
0054f1d8  0d 10 a0 e1                                      mov r1, sp
0054f1dc  79 4e f7 eb                                      bl #0x322bc8
0054f1e0  18 00 9d e5                                      ldr r0, [sp, #0x18]
0054f1e4  00 70 9d e5                                      ldr r7, [sp]
0054f1e8  06 00 50 e1                                      cmp r0, r6
0054f1ec  02 00 00 0a                                      beq #0x54f1fc
0054f1f0  00 00 50 e3                                      cmp r0, #0
0054f1f4  00 00 00 0a                                      beq #0x54f1fc
0054f1f8  94 04 f7 eb                                      bl #0x310450
0054f1fc  05 30 94 e7                                      ldr r3, [r4, r5]
0054f200  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0054f204  07 00 a0 e1                                      mov r0, r7
0054f208  00 30 93 e5                                      ldr r3, [r3]
0054f20c  03 00 52 e1                                      cmp r2, r3
0054f210  01 00 00 1a                                      bne #0x54f21c
0054f214  24 d0 8d e2                                      add sp, sp, #0x24
0054f218  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0054f21c  3b fc f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0054f220  f8 58 44 00 ac 40 00 00                          .byte 0xf8, 0x58, 0x44, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0054f228, declared_size=316, range_size=316, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBox7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUISpinBox::onEvent(glitch::SEvent const&)
; decoder-mode: arm
0054f228  30 40 2d e9                                      push {r4, r5, lr}
0054f22c  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
0054f230  1c d0 4d e2                                      sub sp, sp, #0x1c
0054f234  00 40 a0 e1                                      mov r4, r0
0054f238  00 00 53 e3                                      cmp r3, #0
0054f23c  01 50 a0 e1                                      mov r5, r1
0054f240  02 00 00 0a                                      beq #0x54f250
0054f244  00 30 91 e5                                      ldr r3, [r1]
0054f248  00 00 53 e3                                      cmp r3, #0
0054f24c  0a 00 00 0a                                      beq #0x54f27c
0054f250  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054f254  00 00 53 e3                                      cmp r3, #0
0054f258  03 00 a0 01                                      moveq r0, r3
0054f25c  04 00 00 0a                                      beq #0x54f274
0054f260  03 00 a0 e1                                      mov r0, r3
0054f264  05 10 a0 e1                                      mov r1, r5
0054f268  00 30 93 e5                                      ldr r3, [r3]
0054f26c  0f e0 a0 e1                                      mov lr, pc
0054f270  08 f0 93 e5                                      ldr pc, [r3, #8]
0054f274  1c d0 8d e2                                      add sp, sp, #0x1c
0054f278  30 80 bd e8                                      pop {r4, r5, pc}
0054f27c  10 20 91 e5                                      ldr r2, [r1, #0x10]
0054f280  05 00 52 e3                                      cmp r2, #5
0054f284  1c 00 00 0a                                      beq #0x54f2fc
0054f288  10 00 52 e3                                      cmp r2, #0x10
0054f28c  11 00 00 0a                                      beq #0x54f2d8
0054f290  00 00 53 e3                                      cmp r3, #0
0054f294  ed ff ff 0a                                      beq #0x54f250
0054f298  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054f29c  00 20 a0 e3                                      mov r2, #0
0054f2a0  14 10 a0 e3                                      mov r1, #0x14
0054f2a4  02 00 53 e1                                      cmp r3, r2
0054f2a8  0c 20 8d e5                                      str r2, [sp, #0xc]
0054f2ac  10 10 8d e5                                      str r1, [sp, #0x10]
0054f2b0  00 20 8d e5                                      str r2, [sp]
0054f2b4  08 40 8d e5                                      str r4, [sp, #8]
0054f2b8  04 00 00 0a                                      beq #0x54f2d0
0054f2bc  03 00 a0 e1                                      mov r0, r3
0054f2c0  0d 10 a0 e1                                      mov r1, sp
0054f2c4  00 30 93 e5                                      ldr r3, [r3]
0054f2c8  0f e0 a0 e1                                      mov lr, pc
0054f2cc  08 f0 93 e5                                      ldr pc, [r3, #8]
0054f2d0  01 00 a0 e3                                      mov r0, #1
0054f2d4  e6 ff ff ea                                      b #0x54f274
0054f2d8  08 10 95 e5                                      ldr r1, [r5, #8]
0054f2dc  58 21 94 e5                                      ldr r2, [r4, #0x158]
0054f2e0  02 00 51 e1                                      cmp r1, r2
0054f2e4  e9 ff ff 1a                                      bne #0x54f290
0054f2e8  00 30 94 e5                                      ldr r3, [r4]
0054f2ec  04 00 a0 e1                                      mov r0, r4
0054f2f0  0f e0 a0 e1                                      mov lr, pc
0054f2f4  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0054f2f8  e6 ff ff ea                                      b #0x54f298
0054f2fc  08 30 91 e5                                      ldr r3, [r1, #8]
0054f300  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
0054f304  02 00 53 e1                                      cmp r3, r2
0054f308  0f 00 00 0a                                      beq #0x54f34c
0054f30c  60 21 90 e5                                      ldr r2, [r0, #0x160]
0054f310  02 00 53 e1                                      cmp r3, r2
0054f314  cd ff ff 1a                                      bne #0x54f250
0054f318  00 30 90 e5                                      ldr r3, [r0]
0054f31c  0f e0 a0 e1                                      mov lr, pc
0054f320  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0054f324  64 11 94 e5                                      ldr r1, [r4, #0x164]
0054f328  1f fc f6 eb                                      bl #0x30e3ac
0054f32c  00 10 a0 e1                                      mov r1, r0
0054f330  00 30 94 e5                                      ldr r3, [r4]
0054f334  04 00 a0 e1                                      mov r0, r4
0054f338  0f e0 a0 e1                                      mov lr, pc
0054f33c  80 f0 93 e5                                      ldr pc, [r3, #0x80]
0054f340  10 20 95 e5                                      ldr r2, [r5, #0x10]
0054f344  01 30 a0 e3                                      mov r3, #1
0054f348  ce ff ff ea                                      b #0x54f288
0054f34c  00 30 90 e5                                      ldr r3, [r0]
0054f350  0f e0 a0 e1                                      mov lr, pc
0054f354  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0054f358  64 11 94 e5                                      ldr r1, [r4, #0x164]
0054f35c  10 fe f6 eb                                      bl #0x30eba4
0054f360  f1 ff ff ea                                      b #0x54f32c

; FUNCTION 0x0054f3d8, declared_size=236, range_size=236, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBoxD1Ev
; demangled: glitch::gui::CGUISpinBox::~CGUISpinBox()
; decoder-mode: arm
0054f3d8  70 40 2d e9                                      push {r4, r5, r6, lr}
0054f3dc  d4 50 9f e5                                      ldr r5, [pc, #0xd4]
0054f3e0  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
0054f3e4  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
0054f3e8  05 50 8f e0                                      add r5, pc, r5
0054f3ec  03 30 95 e7                                      ldr r3, [r5, r3]
0054f3f0  00 40 a0 e1                                      mov r4, r0
0054f3f4  00 00 52 e3                                      cmp r2, #0
0054f3f8  ec 10 83 e2                                      add r1, r3, #0xec
0054f3fc  10 00 83 e2                                      add r0, r3, #0x10
0054f400  cc 30 83 e2                                      add r3, r3, #0xcc
0054f404  00 00 84 e5                                      str r0, [r4]
0054f408  bc 31 84 e5                                      str r3, [r4, #0x1bc]
0054f40c  c0 11 84 e5                                      str r1, [r4, #0x1c0]
0054f410  03 00 00 0a                                      beq #0x54f424
0054f414  00 30 92 e5                                      ldr r3, [r2]
0054f418  10 00 13 e5                                      ldr r0, [r3, #-0x10]
0054f41c  00 00 82 e0                                      add r0, r2, r0
0054f420  57 38 f7 eb                                      bl #0x31d584
0054f424  60 31 94 e5                                      ldr r3, [r4, #0x160]
0054f428  00 00 53 e3                                      cmp r3, #0
0054f42c  03 00 00 0a                                      beq #0x54f440
0054f430  00 20 93 e5                                      ldr r2, [r3]
0054f434  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0054f438  00 00 83 e0                                      add r0, r3, r0
0054f43c  50 38 f7 eb                                      bl #0x31d584
0054f440  58 31 94 e5                                      ldr r3, [r4, #0x158]
0054f444  00 00 53 e3                                      cmp r3, #0
0054f448  03 00 00 0a                                      beq #0x54f45c
0054f44c  00 20 93 e5                                      ldr r2, [r3]
0054f450  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0054f454  00 00 83 e0                                      add r0, r3, r0
0054f458  49 38 f7 eb                                      bl #0x31d584
0054f45c  17 3e 84 e2                                      add r3, r4, #0x170
0054f460  44 00 93 e5                                      ldr r0, [r3, #0x44]
0054f464  03 00 50 e1                                      cmp r0, r3
0054f468  02 00 00 0a                                      beq #0x54f478
0054f46c  00 00 50 e3                                      cmp r0, #0
0054f470  00 00 00 0a                                      beq #0x54f478
0054f474  f5 03 f7 eb                                      bl #0x310450
0054f478  40 30 9f e5                                      ldr r3, [pc, #0x40]
0054f47c  04 00 a0 e1                                      mov r0, r4
0054f480  03 10 95 e7                                      ldr r1, [r5, r3]
0054f484  04 30 91 e5                                      ldr r3, [r1, #4]
0054f488  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0054f48c  18 20 91 e5                                      ldr r2, [r1, #0x18]
0054f490  00 30 84 e5                                      str r3, [r4]
0054f494  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054f498  08 10 81 e2                                      add r1, r1, #8
0054f49c  03 c0 84 e7                                      str ip, [r4, r3]
0054f4a0  00 30 94 e5                                      ldr r3, [r4]
0054f4a4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054f4a8  03 20 84 e7                                      str r2, [r4, r3]
0054f4ac  db a6 ff eb                                      bl #0x539020
0054f4b0  04 00 a0 e1                                      mov r0, r4
0054f4b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0054f4b8  a8 56 44 00 28 15 00 00 d0 1c 00 00              .byte 0xa8, 0x56, 0x44, 0x00, 0x28, 0x15, 0x00, 0x00, 0xd0, 0x1c, 0x00, 0x00

; FUNCTION 0x0054f4c4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBoxD0Ev
; demangled: glitch::gui::CGUISpinBox::~CGUISpinBox()
; decoder-mode: arm
0054f4c4  10 40 2d e9                                      push {r4, lr}
0054f4c8  00 40 a0 e1                                      mov r4, r0
0054f4cc  c1 ff ff eb                                      bl #0x54f3d8
0054f4d0  04 00 a0 e1                                      mov r0, r4
0054f4d4  75 fb f6 eb                                      bl #0x30e2b0
0054f4d8  04 00 a0 e1                                      mov r0, r4
0054f4dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0054f4e0, declared_size=220, range_size=220, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBoxD2Ev
; demangled: glitch::gui::CGUISpinBox::~CGUISpinBox()
; decoder-mode: arm
0054f4e0  70 40 2d e9                                      push {r4, r5, r6, lr}
0054f4e4  00 30 91 e5                                      ldr r3, [r1]
0054f4e8  01 50 a0 e1                                      mov r5, r1
0054f4ec  00 40 a0 e1                                      mov r4, r0
0054f4f0  00 30 80 e5                                      str r3, [r0]
0054f4f4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054f4f8  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
0054f4fc  03 20 80 e7                                      str r2, [r0, r3]
0054f500  00 30 90 e5                                      ldr r3, [r0]
0054f504  20 20 91 e5                                      ldr r2, [r1, #0x20]
0054f508  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054f50c  03 20 80 e7                                      str r2, [r0, r3]
0054f510  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
0054f514  00 00 53 e3                                      cmp r3, #0
0054f518  03 00 00 0a                                      beq #0x54f52c
0054f51c  00 20 93 e5                                      ldr r2, [r3]
0054f520  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0054f524  00 00 83 e0                                      add r0, r3, r0
0054f528  15 38 f7 eb                                      bl #0x31d584
0054f52c  60 31 94 e5                                      ldr r3, [r4, #0x160]
0054f530  00 00 53 e3                                      cmp r3, #0
0054f534  03 00 00 0a                                      beq #0x54f548
0054f538  00 20 93 e5                                      ldr r2, [r3]
0054f53c  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0054f540  00 00 83 e0                                      add r0, r3, r0
0054f544  0e 38 f7 eb                                      bl #0x31d584
0054f548  58 31 94 e5                                      ldr r3, [r4, #0x158]
0054f54c  00 00 53 e3                                      cmp r3, #0
0054f550  03 00 00 0a                                      beq #0x54f564
0054f554  00 20 93 e5                                      ldr r2, [r3]
0054f558  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0054f55c  00 00 83 e0                                      add r0, r3, r0
0054f560  07 38 f7 eb                                      bl #0x31d584
0054f564  17 3e 84 e2                                      add r3, r4, #0x170
0054f568  44 00 93 e5                                      ldr r0, [r3, #0x44]
0054f56c  03 00 50 e1                                      cmp r0, r3
0054f570  02 00 00 0a                                      beq #0x54f580
0054f574  00 00 50 e3                                      cmp r0, #0
0054f578  00 00 00 0a                                      beq #0x54f580
0054f57c  b3 03 f7 eb                                      bl #0x310450
0054f580  04 30 95 e5                                      ldr r3, [r5, #4]
0054f584  04 50 85 e2                                      add r5, r5, #4
0054f588  04 10 85 e2                                      add r1, r5, #4
0054f58c  00 30 84 e5                                      str r3, [r4]
0054f590  10 20 95 e5                                      ldr r2, [r5, #0x10]
0054f594  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054f598  04 00 a0 e1                                      mov r0, r4
0054f59c  03 20 84 e7                                      str r2, [r4, r3]
0054f5a0  00 30 94 e5                                      ldr r3, [r4]
0054f5a4  14 20 95 e5                                      ldr r2, [r5, #0x14]
0054f5a8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054f5ac  03 20 84 e7                                      str r2, [r4, r3]
0054f5b0  9a a6 ff eb                                      bl #0x539020
0054f5b4  04 00 a0 e1                                      mov r0, r4
0054f5b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0054f638, declared_size=244, range_size=244, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZN6glitch3gui11CGUISpinBox16setDecimalPlacesEi
; demangled: glitch::gui::CGUISpinBox::setDecimalPlaces(int)
; decoder-mode: arm
0054f638  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0054f63c  01 00 71 e3                                      cmn r1, #1
0054f640  01 db 4d e2                                      sub sp, sp, #0x400
0054f644  04 d0 4d e2                                      sub sp, sp, #4
0054f648  00 40 a0 e1                                      mov r4, r0
0054f64c  b8 11 80 e5                                      str r1, [r0, #0x1b8]
0054f650  28 00 00 0a                                      beq #0x54f6f8
0054f654  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
0054f658  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
0054f65c  01 30 a0 e1                                      mov r3, r1
0054f660  05 50 8f e0                                      add r5, pc, r5
0054f664  02 20 8f e0                                      add r2, pc, r2
0054f668  01 1c a0 e3                                      mov r1, #0x100
0054f66c  0d 00 a0 e1                                      mov r0, sp
0054f670  c9 fd f6 eb                                      bl #0x30ed9c
0054f674  05 00 a0 e1                                      mov r0, r5
0054f678  82 fd f6 eb                                      bl #0x30ec88
0054f67c  17 7e 84 e2                                      add r7, r4, #0x170
0054f680  00 21 85 e0                                      add r2, r5, r0, lsl #2
0054f684  05 10 a0 e1                                      mov r1, r5
0054f688  07 00 a0 e1                                      mov r0, r7
0054f68c  c3 4e f7 eb                                      bl #0x3231a0
0054f690  0d 00 a0 e1                                      mov r0, sp
0054f694  7b fd f6 eb                                      bl #0x30ec88
0054f698  84 50 9f e5                                      ldr r5, [pc, #0x84]
0054f69c  0d 60 a0 e1                                      mov r6, sp
0054f6a0  00 21 86 e0                                      add r2, r6, r0, lsl #2
0054f6a4  0d 10 a0 e1                                      mov r1, sp
0054f6a8  05 50 8f e0                                      add r5, pc, r5
0054f6ac  07 00 a0 e1                                      mov r0, r7
0054f6b0  64 45 f7 eb                                      bl #0x320c48
0054f6b4  05 00 a0 e1                                      mov r0, r5
0054f6b8  72 fd f6 eb                                      bl #0x30ec88
0054f6bc  05 10 a0 e1                                      mov r1, r5
0054f6c0  00 21 85 e0                                      add r2, r5, r0, lsl #2
0054f6c4  07 00 a0 e1                                      mov r0, r7
0054f6c8  5e 45 f7 eb                                      bl #0x320c48
0054f6cc  00 30 94 e5                                      ldr r3, [r4]
0054f6d0  04 00 a0 e1                                      mov r0, r4
0054f6d4  80 50 93 e5                                      ldr r5, [r3, #0x80]
0054f6d8  0f e0 a0 e1                                      mov lr, pc
0054f6dc  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0054f6e0  00 10 a0 e1                                      mov r1, r0
0054f6e4  04 00 a0 e1                                      mov r0, r4
0054f6e8  35 ff 2f e1                                      blx r5
0054f6ec  04 d0 8d e2                                      add sp, sp, #4
0054f6f0  01 db 8d e2                                      add sp, sp, #0x400
0054f6f4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0054f6f8  28 50 9f e5                                      ldr r5, [pc, #0x28]
0054f6fc  05 50 8f e0                                      add r5, pc, r5
0054f700  05 00 a0 e1                                      mov r0, r5
0054f704  5f fd f6 eb                                      bl #0x30ec88
0054f708  05 10 a0 e1                                      mov r1, r5
0054f70c  00 21 85 e0                                      add r2, r5, r0, lsl #2
0054f710  17 0e 84 e2                                      add r0, r4, #0x170
0054f714  a1 4e f7 eb                                      bl #0x3231a0
0054f718  eb ff ff ea                                      b #0x54f6cc
; mapping-symbol data/literal pool
0054f71c  08 f4 38 00 04 f5 36 00 d0 f3 38 00 4c f3 38 00  .byte 0x08, 0xf4, 0x38, 0x00, 0x04, 0xf5, 0x36, 0x00, 0xd0, 0xf3, 0x38, 0x00, 0x4c, 0xf3, 0x38, 0x00

; FUNCTION 0x0054f72c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZTv0_n24_N6glitch3gui11CGUISpinBoxD0Ev
; demangled: virtual thunk to glitch::gui::CGUISpinBox::~CGUISpinBox()
; decoder-mode: arm
0054f72c  00 30 90 e5                                      ldr r3, [r0]
0054f730  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0054f734  03 00 80 e0                                      add r0, r0, r3
0054f738  61 ff ff ea                                      b #0x54f4c4

; FUNCTION 0x0054f73c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZTv0_n12_N6glitch3gui11CGUISpinBoxD0Ev
; demangled: virtual thunk to glitch::gui::CGUISpinBox::~CGUISpinBox()
; decoder-mode: arm
0054f73c  00 30 90 e5                                      ldr r3, [r0]
0054f740  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054f744  03 00 80 e0                                      add r0, r0, r3
0054f748  5d ff ff ea                                      b #0x54f4c4

; FUNCTION 0x0054f74c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZTv0_n24_N6glitch3gui11CGUISpinBoxD1Ev
; demangled: virtual thunk to glitch::gui::CGUISpinBox::~CGUISpinBox()
; decoder-mode: arm
0054f74c  00 30 90 e5                                      ldr r3, [r0]
0054f750  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0054f754  03 00 80 e0                                      add r0, r0, r3
0054f758  1e ff ff ea                                      b #0x54f3d8

; FUNCTION 0x0054f75c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZTv0_n12_N6glitch3gui11CGUISpinBoxD1Ev
; demangled: virtual thunk to glitch::gui::CGUISpinBox::~CGUISpinBox()
; decoder-mode: arm
0054f75c  00 30 90 e5                                      ldr r3, [r0]
0054f760  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054f764  03 00 80 e0                                      add r0, r0, r3
0054f768  1a ff ff ea                                      b #0x54f3d8

; FUNCTION 0x0054f76c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZTv0_n20_N6glitch3gui11CGUISpinBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUISpinBox::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0054f76c  00 30 90 e5                                      ldr r3, [r0]
0054f770  14 30 13 e5                                      ldr r3, [r3, #-0x14]
0054f774  03 00 80 e0                                      add r0, r0, r3
0054f778  50 fe ff ea                                      b #0x54f0c0

; FUNCTION 0x0054f77c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUISpinBox
; alias: _ZTv0_n16_NK6glitch3gui11CGUISpinBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUISpinBox::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0054f77c  00 30 90 e5                                      ldr r3, [r0]
0054f780  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054f784  03 00 80 e0                                      add r0, r0, r3
0054f788  2d fa ff ea                                      b #0x54e044
