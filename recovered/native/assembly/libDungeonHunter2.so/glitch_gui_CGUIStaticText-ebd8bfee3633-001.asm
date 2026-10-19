; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0054ff14, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZNK6glitch3gui14CGUIStaticText15getOverrideFontEv
; demangled: glitch::gui::CGUIStaticText::getOverrideFont() const
; decoder-mode: arm
0054ff14  7c 01 90 e5                                      ldr r0, [r0, #0x17c]
0054ff18  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ff1c, declared_size=56, range_size=56, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText16setOverrideColorENS_5video6SColorE
; demangled: glitch::gui::CGUIStaticText::setOverrideColor(glitch::video::SColor)
; decoder-mode: arm
0054ff1c  04 40 2d e5                                      str r4, [sp, #-4]!
0054ff20  51 34 e7 e7                                      ubfx r3, r1, #8, #8
0054ff24  51 28 e7 e7                                      ubfx r2, r1, #0x10, #8
0054ff28  21 cc a0 e1                                      lsr ip, r1, #0x18
0054ff2c  01 40 a0 e3                                      mov r4, #1
0054ff30  0c d0 4d e2                                      sub sp, sp, #0xc
0054ff34  70 41 c0 e5                                      strb r4, [r0, #0x170]
0054ff38  76 c1 c0 e5                                      strb ip, [r0, #0x176]
0054ff3c  75 21 c0 e5                                      strb r2, [r0, #0x175]
0054ff40  74 31 c0 e5                                      strb r3, [r0, #0x174]
0054ff44  73 11 c0 e5                                      strb r1, [r0, #0x173]
0054ff48  0c d0 8d e2                                      add sp, sp, #0xc
0054ff4c  10 00 bd e8                                      ldm sp!, {r4}
0054ff50  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ff54, declared_size=56, range_size=56, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText18setBackgroundColorENS_5video6SColorE
; demangled: glitch::gui::CGUIStaticText::setBackgroundColor(glitch::video::SColor)
; decoder-mode: arm
0054ff54  04 40 2d e5                                      str r4, [sp, #-4]!
0054ff58  51 34 e7 e7                                      ubfx r3, r1, #8, #8
0054ff5c  51 28 e7 e7                                      ubfx r2, r1, #0x10, #8
0054ff60  21 cc a0 e1                                      lsr ip, r1, #0x18
0054ff64  01 40 a0 e3                                      mov r4, #1
0054ff68  0c d0 4d e2                                      sub sp, sp, #0xc
0054ff6c  72 41 c0 e5                                      strb r4, [r0, #0x172]
0054ff70  7a c1 c0 e5                                      strb ip, [r0, #0x17a]
0054ff74  79 21 c0 e5                                      strb r2, [r0, #0x179]
0054ff78  78 31 c0 e5                                      strb r3, [r0, #0x178]
0054ff7c  77 11 c0 e5                                      strb r1, [r0, #0x177]
0054ff80  0c d0 8d e2                                      add sp, sp, #0xc
0054ff84  10 00 bd e8                                      ldm sp!, {r4}
0054ff88  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ff8c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText17setDrawBackgroundEb
; demangled: glitch::gui::CGUIStaticText::setDrawBackground(bool)
; decoder-mode: arm
0054ff8c  72 11 c0 e5                                      strb r1, [r0, #0x172]
0054ff90  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ff94, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText13setDrawBorderEb
; demangled: glitch::gui::CGUIStaticText::setDrawBorder(bool)
; decoder-mode: arm
0054ff94  64 11 c0 e5                                      strb r1, [r0, #0x164]
0054ff98  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ff9c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText16setTextAlignmentENS0_14EGUI_ALIGNMENTES2_
; demangled: glitch::gui::CGUIStaticText::setTextAlignment(glitch::gui::EGUI_ALIGNMENT, glitch::gui::EGUI_ALIGNMENT)
; decoder-mode: arm
0054ff9c  6c 21 80 e5                                      str r2, [r0, #0x16c]
0054ffa0  68 11 80 e5                                      str r1, [r0, #0x168]
0054ffa4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ffa8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZNK6glitch3gui14CGUIStaticText16getOverrideColorEv
; demangled: glitch::gui::CGUIStaticText::getOverrideColor() const
; decoder-mode: arm
0054ffa8  17 0e 80 e2                                      add r0, r0, #0x170
0054ffac  03 00 80 e2                                      add r0, r0, #3
0054ffb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ffb4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText19enableOverrideColorEb
; demangled: glitch::gui::CGUIStaticText::enableOverrideColor(bool)
; decoder-mode: arm
0054ffb4  70 11 c0 e5                                      strb r1, [r0, #0x170]
0054ffb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ffbc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZNK6glitch3gui14CGUIStaticText22isOverrideColorEnabledEv
; demangled: glitch::gui::CGUIStaticText::isOverrideColorEnabled() const
; decoder-mode: arm
0054ffbc  70 01 d0 e5                                      ldrb r0, [r0, #0x170]
0054ffc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ffc4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZNK6glitch3gui14CGUIStaticText17isWordWrapEnabledEv
; demangled: glitch::gui::CGUIStaticText::isWordWrapEnabled() const
; decoder-mode: arm
0054ffc4  71 01 d0 e5                                      ldrb r0, [r0, #0x171]
0054ffc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054ffcc, declared_size=208, range_size=208, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZNK6glitch3gui14CGUIStaticText13getTextHeightEv
; demangled: glitch::gui::CGUIStaticText::getTextHeight() const
; decoder-mode: arm
0054ffcc  30 40 2d e9                                      push {r4, r5, lr}
0054ffd0  50 31 90 e5                                      ldr r3, [r0, #0x150]
0054ffd4  0c d0 4d e2                                      sub sp, sp, #0xc
0054ffd8  00 50 a0 e1                                      mov r5, r0
0054ffdc  03 00 a0 e1                                      mov r0, r3
0054ffe0  00 30 93 e5                                      ldr r3, [r3]
0054ffe4  0f e0 a0 e1                                      mov lr, pc
0054ffe8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054ffec  00 30 50 e2                                      subs r3, r0, #0
0054fff0  26 00 00 0a                                      beq #0x550090
0054fff4  7c 41 95 e5                                      ldr r4, [r5, #0x17c]
0054fff8  00 00 54 e3                                      cmp r4, #0
0054fffc  1d 00 00 0a                                      beq #0x550078
00550000  90 20 9f e5                                      ldr r2, [pc, #0x90]
00550004  04 10 a0 e1                                      mov r1, r4
00550008  00 30 94 e5                                      ldr r3, [r4]
0055000c  0d 00 a0 e1                                      mov r0, sp
00550010  02 20 8f e0                                      add r2, pc, r2
00550014  0f e0 a0 e1                                      mov lr, pc
00550018  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055001c  00 30 94 e5                                      ldr r3, [r4]
00550020  04 00 a0 e1                                      mov r0, r4
00550024  04 40 9d e5                                      ldr r4, [sp, #4]
00550028  0f e0 a0 e1                                      mov lr, pc
0055002c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00550030  71 31 d5 e5                                      ldrb r3, [r5, #0x171]
00550034  04 00 80 e0                                      add r0, r0, r4
00550038  00 00 53 e3                                      cmp r3, #0
0055003c  0b 00 00 0a                                      beq #0x550070
00550040  5c 21 95 e5                                      ldr r2, [r5, #0x15c]
00550044  58 31 95 e5                                      ldr r3, [r5, #0x158]
00550048  02 30 63 e0                                      rsb r3, r3, r2
0055004c  c3 31 a0 e1                                      asr r3, r3, #3
00550050  83 21 a0 e1                                      lsl r2, r3, #3
00550054  02 20 63 e0                                      rsb r2, r3, r2
00550058  02 23 82 e0                                      add r2, r2, r2, lsl #6
0055005c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00550060  82 17 a0 e1                                      lsl r1, r2, #0xf
00550064  01 20 62 e0                                      rsb r2, r2, r1
00550068  82 31 83 e0                                      add r3, r3, r2, lsl #3
0055006c  93 00 00 e0                                      mul r0, r3, r0
00550070  0c d0 8d e2                                      add sp, sp, #0xc
00550074  30 80 bd e8                                      pop {r4, r5, pc}
00550078  04 10 a0 e1                                      mov r1, r4
0055007c  00 30 93 e5                                      ldr r3, [r3]
00550080  0f e0 a0 e1                                      mov lr, pc
00550084  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00550088  00 40 50 e2                                      subs r4, r0, #0
0055008c  db ff ff 1a                                      bne #0x550000
00550090  00 00 a0 e3                                      mov r0, #0
00550094  f5 ff ff ea                                      b #0x550070
; mapping-symbol data/literal pool
00550098  50 e4 38 00                                      .byte 0x50, 0xe4, 0x38, 0x00

; FUNCTION 0x0055009c, declared_size=308, range_size=308, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZNK6glitch3gui14CGUIStaticText12getTextWidthEv
; demangled: glitch::gui::CGUIStaticText::getTextWidth() const
; decoder-mode: arm
0055009c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005500a0  7c 71 90 e5                                      ldr r7, [r0, #0x17c]
005500a4  14 d0 4d e2                                      sub sp, sp, #0x14
005500a8  00 60 a0 e1                                      mov r6, r0
005500ac  00 00 57 e3                                      cmp r7, #0
005500b0  37 00 00 0a                                      beq #0x550194
005500b4  71 31 d6 e5                                      ldrb r3, [r6, #0x171]
005500b8  00 00 53 e3                                      cmp r3, #0
005500bc  2c 00 00 0a                                      beq #0x550174
005500c0  58 21 96 e5                                      ldr r2, [r6, #0x158]
005500c4  5c 31 96 e5                                      ldr r3, [r6, #0x15c]
005500c8  03 30 62 e0                                      rsb r3, r2, r3
005500cc  c3 31 a0 e1                                      asr r3, r3, #3
005500d0  83 11 a0 e1                                      lsl r1, r3, #3
005500d4  01 10 63 e0                                      rsb r1, r3, r1
005500d8  01 13 81 e0                                      add r1, r1, r1, lsl #6
005500dc  81 11 83 e0                                      add r1, r3, r1, lsl #3
005500e0  81 07 a0 e1                                      lsl r0, r1, #0xf
005500e4  00 10 61 e0                                      rsb r1, r1, r0
005500e8  81 31 83 e0                                      add r3, r3, r1, lsl #3
005500ec  00 00 53 e3                                      cmp r3, #0
005500f0  34 00 00 0a                                      beq #0x5501c8
005500f4  00 40 a0 e3                                      mov r4, #0
005500f8  04 50 a0 e1                                      mov r5, r4
005500fc  04 80 a0 e1                                      mov r8, r4
00550100  08 a0 8d e2                                      add sl, sp, #8
00550104  04 20 82 e0                                      add r2, r2, r4
00550108  44 20 92 e5                                      ldr r2, [r2, #0x44]
0055010c  00 30 97 e5                                      ldr r3, [r7]
00550110  0a 00 a0 e1                                      mov r0, sl
00550114  07 10 a0 e1                                      mov r1, r7
00550118  0f e0 a0 e1                                      mov lr, pc
0055011c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00550120  58 21 96 e5                                      ldr r2, [r6, #0x158]
00550124  5c 31 96 e5                                      ldr r3, [r6, #0x15c]
00550128  08 10 9d e5                                      ldr r1, [sp, #8]
0055012c  01 50 85 e2                                      add r5, r5, #1
00550130  03 30 62 e0                                      rsb r3, r2, r3
00550134  c3 31 a0 e1                                      asr r3, r3, #3
00550138  01 00 58 e1                                      cmp r8, r1
0055013c  01 80 a0 b1                                      movlt r8, r1
00550140  83 11 a0 e1                                      lsl r1, r3, #3
00550144  01 10 63 e0                                      rsb r1, r3, r1
00550148  01 13 81 e0                                      add r1, r1, r1, lsl #6
0055014c  48 40 84 e2                                      add r4, r4, #0x48
00550150  81 11 83 e0                                      add r1, r3, r1, lsl #3
00550154  81 07 a0 e1                                      lsl r0, r1, #0xf
00550158  00 10 61 e0                                      rsb r1, r1, r0
0055015c  81 31 83 e0                                      add r3, r3, r1, lsl #3
00550160  03 00 55 e1                                      cmp r5, r3
00550164  e6 ff ff 3a                                      blo #0x550104
00550168  08 00 a0 e1                                      mov r0, r8
0055016c  14 d0 8d e2                                      add sp, sp, #0x14
00550170  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00550174  07 10 a0 e1                                      mov r1, r7
00550178  e4 20 96 e5                                      ldr r2, [r6, #0xe4]
0055017c  00 30 97 e5                                      ldr r3, [r7]
00550180  0d 00 a0 e1                                      mov r0, sp
00550184  0f e0 a0 e1                                      mov lr, pc
00550188  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055018c  00 80 9d e5                                      ldr r8, [sp]
00550190  f4 ff ff ea                                      b #0x550168
00550194  50 31 90 e5                                      ldr r3, [r0, #0x150]
00550198  03 00 a0 e1                                      mov r0, r3
0055019c  00 30 93 e5                                      ldr r3, [r3]
005501a0  0f e0 a0 e1                                      mov lr, pc
005501a4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005501a8  00 30 50 e2                                      subs r3, r0, #0
005501ac  05 00 00 0a                                      beq #0x5501c8
005501b0  07 10 a0 e1                                      mov r1, r7
005501b4  00 30 93 e5                                      ldr r3, [r3]
005501b8  0f e0 a0 e1                                      mov lr, pc
005501bc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005501c0  00 70 50 e2                                      subs r7, r0, #0
005501c4  ba ff ff 1a                                      bne #0x5500b4
005501c8  00 80 a0 e3                                      mov r8, #0
005501cc  e5 ff ff ea                                      b #0x550168

; FUNCTION 0x0055061c, declared_size=456, range_size=456, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticTextC1EPKwbPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiRKNS_4core4rectIiEEb
; demangled: glitch::gui::CGUIStaticText::CGUIStaticText(wchar_t const*, bool, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int> const&, bool)
; decoder-mode: arm
0055061c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00550620  a8 51 9f e5                                      ldr r5, [pc, #0x1a8]
00550624  a8 c1 9f e5                                      ldr ip, [pc, #0x1a8]
00550628  a8 e1 9f e5                                      ldr lr, [pc, #0x1a8]
0055062c  05 50 8f e0                                      add r5, pc, r5
00550630  0c c0 95 e7                                      ldr ip, [r5, ip]
00550634  0e e0 95 e7                                      ldr lr, [r5, lr]
00550638  01 70 a0 e3                                      mov r7, #1
0055063c  24 60 9c e5                                      ldr r6, [ip, #0x24]
00550640  08 e0 8e e2                                      add lr, lr, #8
00550644  8c 71 80 e5                                      str r7, [r0, #0x18c]
00550648  88 e1 80 e5                                      str lr, [r0, #0x188]
0055064c  84 61 80 e5                                      str r6, [r0, #0x184]
00550650  0c e0 16 e5                                      ldr lr, [r6, #-0xc]
00550654  28 80 9c e5                                      ldr r8, [ip, #0x28]
00550658  1c d0 4d e2                                      sub sp, sp, #0x1c
0055065c  48 60 9d e5                                      ldr r6, [sp, #0x48]
00550660  61 7f 80 e2                                      add r7, r0, #0x184
00550664  0e 80 87 e7                                      str r8, [r7, lr]
00550668  01 70 a0 e1                                      mov r7, r1
0055066c  04 10 8c e2                                      add r1, ip, #4
00550670  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00550674  00 e0 96 e5                                      ldr lr, [r6]
00550678  04 80 96 e5                                      ldr r8, [r6, #4]
0055067c  0c a0 96 e5                                      ldr sl, [r6, #0xc]
00550680  08 b0 96 e5                                      ldr fp, [r6, #8]
00550684  02 90 a0 e1                                      mov sb, r2
00550688  00 c0 8d e5                                      str ip, [sp]
0055068c  03 20 a0 e1                                      mov r2, r3
00550690  08 c0 8d e2                                      add ip, sp, #8
00550694  03 60 a0 e1                                      mov r6, r3
00550698  40 30 9d e5                                      ldr r3, [sp, #0x40]
0055069c  00 40 a0 e1                                      mov r4, r0
005506a0  08 e0 8d e5                                      str lr, [sp, #8]
005506a4  0c 80 8d e5                                      str r8, [sp, #0xc]
005506a8  04 c0 8d e5                                      str ip, [sp, #4]
005506ac  4c 80 dd e5                                      ldrb r8, [sp, #0x4c]
005506b0  10 b0 8d e5                                      str fp, [sp, #0x10]
005506b4  14 a0 8d e5                                      str sl, [sp, #0x14]
005506b8  25 ff ff eb                                      bl #0x550354
005506bc  18 21 9f e5                                      ldr r2, [pc, #0x118]
005506c0  00 30 a0 e3                                      mov r3, #0
005506c4  00 00 e0 e3                                      mvn r0, #0
005506c8  02 20 95 e7                                      ldr r2, [r5, r2]
005506cc  2d 10 e0 e3                                      mvn r1, #0x2d
005506d0  65 c0 a0 e3                                      mov ip, #0x65
005506d4  10 50 82 e2                                      add r5, r2, #0x10
005506d8  fc e0 82 e2                                      add lr, r2, #0xfc
005506dc  00 00 57 e3                                      cmp r7, #0
005506e0  dc 20 82 e2                                      add r2, r2, #0xdc
005506e4  00 50 84 e5                                      str r5, [r4]
005506e8  84 21 84 e5                                      str r2, [r4, #0x184]
005506ec  88 e1 84 e5                                      str lr, [r4, #0x188]
005506f0  64 91 c4 e5                                      strb sb, [r4, #0x164]
005506f4  72 81 c4 e5                                      strb r8, [r4, #0x172]
005506f8  75 01 c4 e5                                      strb r0, [r4, #0x175]
005506fc  79 11 c4 e5                                      strb r1, [r4, #0x179]
00550700  7a c1 c4 e5                                      strb ip, [r4, #0x17a]
00550704  80 31 84 e5                                      str r3, [r4, #0x180]
00550708  58 31 84 e5                                      str r3, [r4, #0x158]
0055070c  5c 31 84 e5                                      str r3, [r4, #0x15c]
00550710  60 31 84 e5                                      str r3, [r4, #0x160]
00550714  68 31 84 e5                                      str r3, [r4, #0x168]
00550718  6c 31 84 e5                                      str r3, [r4, #0x16c]
0055071c  70 31 c4 e5                                      strb r3, [r4, #0x170]
00550720  71 31 c4 e5                                      strb r3, [r4, #0x171]
00550724  73 01 c4 e5                                      strb r0, [r4, #0x173]
00550728  74 01 c4 e5                                      strb r0, [r4, #0x174]
0055072c  76 c1 c4 e5                                      strb ip, [r4, #0x176]
00550730  77 11 c4 e5                                      strb r1, [r4, #0x177]
00550734  78 11 c4 e5                                      strb r1, [r4, #0x178]
00550738  7c 31 84 e5                                      str r3, [r4, #0x17c]
0055073c  a0 50 84 e2                                      add r5, r4, #0xa0
00550740  1f 00 00 0a                                      beq #0x5507c4
00550744  07 00 a0 e1                                      mov r0, r7
00550748  4e f9 f6 eb                                      bl #0x30ec88
0055074c  07 10 a0 e1                                      mov r1, r7
00550750  00 21 87 e0                                      add r2, r7, r0, lsl #2
00550754  05 00 a0 e1                                      mov r0, r5
00550758  90 4a f7 eb                                      bl #0x3231a0
0055075c  00 00 56 e3                                      cmp r6, #0
00550760  14 00 00 0a                                      beq #0x5507b8
00550764  00 30 96 e5                                      ldr r3, [r6]
00550768  06 00 a0 e1                                      mov r0, r6
0055076c  0f e0 a0 e1                                      mov lr, pc
00550770  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00550774  00 00 50 e3                                      cmp r0, #0
00550778  0e 00 00 0a                                      beq #0x5507b8
0055077c  00 30 96 e5                                      ldr r3, [r6]
00550780  06 00 a0 e1                                      mov r0, r6
00550784  0f e0 a0 e1                                      mov lr, pc
00550788  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055078c  02 10 a0 e3                                      mov r1, #2
00550790  00 30 90 e5                                      ldr r3, [r0]
00550794  0f e0 a0 e1                                      mov lr, pc
00550798  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0055079c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005507a0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005507a4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005507a8  78 11 c4 e5                                      strb r1, [r4, #0x178]
005507ac  79 21 c4 e5                                      strb r2, [r4, #0x179]
005507b0  7a 31 c4 e5                                      strb r3, [r4, #0x17a]
005507b4  77 01 c4 e5                                      strb r0, [r4, #0x177]
005507b8  04 00 a0 e1                                      mov r0, r4
005507bc  1c d0 8d e2                                      add sp, sp, #0x1c
005507c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005507c4  14 70 9f e5                                      ldr r7, [pc, #0x14]
005507c8  07 70 8f e0                                      add r7, pc, r7
005507cc  dc ff ff ea                                      b #0x550744
; mapping-symbol data/literal pool
005507d0  64 44 44 00 c4 29 00 00 44 2b 00 00 a8 29 00 00  .byte 0x64, 0x44, 0x44, 0x00, 0xc4, 0x29, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xa8, 0x29, 0x00, 0x00
005507e0  48 e4 36 00                                      .byte 0x48, 0xe4, 0x36, 0x00

; FUNCTION 0x005507e4, declared_size=332, range_size=332, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZNK6glitch3gui14CGUIStaticText19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIStaticText::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005507e4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005507e8  0c d0 4d e2                                      sub sp, sp, #0xc
005507ec  01 40 a0 e1                                      mov r4, r1
005507f0  00 50 a0 e1                                      mov r5, r0
005507f4  30 92 ff eb                                      bl #0x5350bc
005507f8  10 11 9f e5                                      ldr r1, [pc, #0x110]
005507fc  04 00 a0 e1                                      mov r0, r4
00550800  64 21 d5 e5                                      ldrb r2, [r5, #0x164]
00550804  00 c0 94 e5                                      ldr ip, [r4]
00550808  01 10 8f e0                                      add r1, pc, r1
0055080c  00 30 a0 e3                                      mov r3, #0
00550810  0f e0 a0 e1                                      mov lr, pc
00550814  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00550818  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
0055081c  04 00 a0 e1                                      mov r0, r4
00550820  70 21 d5 e5                                      ldrb r2, [r5, #0x170]
00550824  00 c0 94 e5                                      ldr ip, [r4]
00550828  01 10 8f e0                                      add r1, pc, r1
0055082c  00 30 a0 e3                                      mov r3, #0
00550830  0f e0 a0 e1                                      mov lr, pc
00550834  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00550838  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0055083c  04 00 a0 e1                                      mov r0, r4
00550840  71 21 d5 e5                                      ldrb r2, [r5, #0x171]
00550844  00 c0 94 e5                                      ldr ip, [r4]
00550848  01 10 8f e0                                      add r1, pc, r1
0055084c  00 30 a0 e3                                      mov r3, #0
00550850  0f e0 a0 e1                                      mov lr, pc
00550854  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00550858  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0055085c  04 00 a0 e1                                      mov r0, r4
00550860  72 21 d5 e5                                      ldrb r2, [r5, #0x172]
00550864  00 c0 94 e5                                      ldr ip, [r4]
00550868  01 10 8f e0                                      add r1, pc, r1
0055086c  00 30 a0 e3                                      mov r3, #0
00550870  0f e0 a0 e1                                      mov lr, pc
00550874  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00550878  74 01 d5 e5                                      ldrb r0, [r5, #0x174]
0055087c  73 31 d5 e5                                      ldrb r3, [r5, #0x173]
00550880  75 11 d5 e5                                      ldrb r1, [r5, #0x175]
00550884  76 21 d5 e5                                      ldrb r2, [r5, #0x176]
00550888  00 34 83 e1                                      orr r3, r3, r0, lsl #8
0055088c  01 38 83 e1                                      orr r3, r3, r1, lsl #16
00550890  88 10 9f e5                                      ldr r1, [pc, #0x88]
00550894  88 70 9f e5                                      ldr r7, [pc, #0x88]
00550898  02 2c 83 e1                                      orr r2, r3, r2, lsl #24
0055089c  04 00 a0 e1                                      mov r0, r4
005508a0  00 c0 94 e5                                      ldr ip, [r4]
005508a4  01 10 8f e0                                      add r1, pc, r1
005508a8  00 30 a0 e3                                      mov r3, #0
005508ac  0f e0 a0 e1                                      mov lr, pc
005508b0  18 f1 9c e5                                      ldr pc, [ip, #0x118]
005508b4  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
005508b8  00 60 a0 e3                                      mov r6, #0
005508bc  07 70 8f e0                                      add r7, pc, r7
005508c0  68 21 95 e5                                      ldr r2, [r5, #0x168]
005508c4  5c 70 87 e2                                      add r7, r7, #0x5c
005508c8  00 60 8d e5                                      str r6, [sp]
005508cc  04 00 a0 e1                                      mov r0, r4
005508d0  07 30 a0 e1                                      mov r3, r7
005508d4  00 c0 94 e5                                      ldr ip, [r4]
005508d8  01 10 8f e0                                      add r1, pc, r1
005508dc  0f e0 a0 e1                                      mov lr, pc
005508e0  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005508e4  40 10 9f e5                                      ldr r1, [pc, #0x40]
005508e8  6c 21 95 e5                                      ldr r2, [r5, #0x16c]
005508ec  00 60 8d e5                                      str r6, [sp]
005508f0  04 00 a0 e1                                      mov r0, r4
005508f4  01 10 8f e0                                      add r1, pc, r1
005508f8  07 30 a0 e1                                      mov r3, r7
005508fc  00 c0 94 e5                                      ldr ip, [r4]
00550900  0f e0 a0 e1                                      mov lr, pc
00550904  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
00550908  0c d0 8d e2                                      add sp, sp, #0xc
0055090c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00550910  e0 de 38 00 68 e2 38 00 60 e2 38 00 50 e2 38 00  .byte 0xe0, 0xde, 0x38, 0x00, 0x68, 0xe2, 0x38, 0x00, 0x60, 0xe2, 0x38, 0x00, 0x50, 0xe2, 0x38, 0x00
00550920  24 e2 38 00 68 68 40 00 00 e2 38 00 f4 e1 38 00  .byte 0x24, 0xe2, 0x38, 0x00, 0x68, 0x68, 0x40, 0x00, 0x00, 0xe2, 0x38, 0x00, 0xf4, 0xe1, 0x38, 0x00

; FUNCTION 0x00550dcc, declared_size=344, range_size=344, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIStaticText::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00550dcc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00550dd0  01 40 a0 e1                                      mov r4, r1
00550dd4  00 50 a0 e1                                      mov r5, r0
00550dd8  96 a2 ff eb                                      bl #0x539838
00550ddc  20 11 9f e5                                      ldr r1, [pc, #0x120]
00550de0  00 30 94 e5                                      ldr r3, [r4]
00550de4  04 00 a0 e1                                      mov r0, r4
00550de8  01 10 8f e0                                      add r1, pc, r1
00550dec  0f e0 a0 e1                                      mov lr, pc
00550df0  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00550df4  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
00550df8  64 01 c5 e5                                      strb r0, [r5, #0x164]
00550dfc  00 30 94 e5                                      ldr r3, [r4]
00550e00  01 10 8f e0                                      add r1, pc, r1
00550e04  04 00 a0 e1                                      mov r0, r4
00550e08  0f e0 a0 e1                                      mov lr, pc
00550e0c  24 f1 93 e5                                      ldr pc, [r3, #0x124]
00550e10  50 18 e7 e7                                      ubfx r1, r0, #0x10, #8
00550e14  75 11 c5 e5                                      strb r1, [r5, #0x175]
00550e18  ec 10 9f e5                                      ldr r1, [pc, #0xec]
00550e1c  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
00550e20  00 20 95 e5                                      ldr r2, [r5]
00550e24  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00550e28  74 c1 c5 e5                                      strb ip, [r5, #0x174]
00550e2c  73 01 c5 e5                                      strb r0, [r5, #0x173]
00550e30  76 31 c5 e5                                      strb r3, [r5, #0x176]
00550e34  00 30 94 e5                                      ldr r3, [r4]
00550e38  01 10 8f e0                                      add r1, pc, r1
00550e3c  04 00 a0 e1                                      mov r0, r4
00550e40  8c 60 92 e5                                      ldr r6, [r2, #0x8c]
00550e44  0f e0 a0 e1                                      mov lr, pc
00550e48  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00550e4c  00 10 a0 e1                                      mov r1, r0
00550e50  05 00 a0 e1                                      mov r0, r5
00550e54  36 ff 2f e1                                      blx r6
00550e58  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
00550e5c  00 20 95 e5                                      ldr r2, [r5]
00550e60  00 30 94 e5                                      ldr r3, [r4]
00550e64  01 10 8f e0                                      add r1, pc, r1
00550e68  04 00 a0 e1                                      mov r0, r4
00550e6c  a4 60 92 e5                                      ldr r6, [r2, #0xa4]
00550e70  0f e0 a0 e1                                      mov lr, pc
00550e74  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00550e78  00 10 a0 e1                                      mov r1, r0
00550e7c  05 00 a0 e1                                      mov r0, r5
00550e80  36 ff 2f e1                                      blx r6
00550e84  88 10 9f e5                                      ldr r1, [pc, #0x88]
00550e88  00 30 94 e5                                      ldr r3, [r4]
00550e8c  04 00 a0 e1                                      mov r0, r4
00550e90  01 10 8f e0                                      add r1, pc, r1
00550e94  0f e0 a0 e1                                      mov lr, pc
00550e98  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00550e9c  74 60 9f e5                                      ldr r6, [pc, #0x74]
00550ea0  74 10 9f e5                                      ldr r1, [pc, #0x74]
00550ea4  00 c0 95 e5                                      ldr ip, [r5]
00550ea8  06 60 8f e0                                      add r6, pc, r6
00550eac  72 01 c5 e5                                      strb r0, [r5, #0x172]
00550eb0  5c 60 86 e2                                      add r6, r6, #0x5c
00550eb4  06 20 a0 e1                                      mov r2, r6
00550eb8  00 30 94 e5                                      ldr r3, [r4]
00550ebc  01 10 8f e0                                      add r1, pc, r1
00550ec0  04 00 a0 e1                                      mov r0, r4
00550ec4  a0 70 9c e5                                      ldr r7, [ip, #0xa0]
00550ec8  0f e0 a0 e1                                      mov lr, pc
00550ecc  00 f1 93 e5                                      ldr pc, [r3, #0x100]
00550ed0  48 10 9f e5                                      ldr r1, [pc, #0x48]
00550ed4  00 80 a0 e1                                      mov r8, r0
00550ed8  06 20 a0 e1                                      mov r2, r6
00550edc  04 00 a0 e1                                      mov r0, r4
00550ee0  01 10 8f e0                                      add r1, pc, r1
00550ee4  00 30 94 e5                                      ldr r3, [r4]
00550ee8  0f e0 a0 e1                                      mov lr, pc
00550eec  00 f1 93 e5                                      ldr pc, [r3, #0x100]
00550ef0  08 10 a0 e1                                      mov r1, r8
00550ef4  00 20 a0 e1                                      mov r2, r0
00550ef8  05 00 a0 e1                                      mov r0, r5
00550efc  37 ff 2f e1                                      blx r7
00550f00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00550f04  00 d9 38 00 c8 dc 38 00 58 dc 38 00 44 dc 38 00  .byte 0x00, 0xd9, 0x38, 0x00, 0xc8, 0xdc, 0x38, 0x00, 0x58, 0xdc, 0x38, 0x00, 0x44, 0xdc, 0x38, 0x00
00550f14  28 dc 38 00 7c 62 40 00 1c dc 38 00 08 dc 38 00  .byte 0x28, 0xdc, 0x38, 0x00, 0x7c, 0x62, 0x40, 0x00, 0x1c, 0xdc, 0x38, 0x00, 0x08, 0xdc, 0x38, 0x00

; FUNCTION 0x00550f98, declared_size=148, range_size=148, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticTextD1Ev
; demangled: glitch::gui::CGUIStaticText::~CGUIStaticText()
; decoder-mode: arm
00550f98  70 40 2d e9                                      push {r4, r5, r6, lr}
00550f9c  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
00550fa0  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00550fa4  00 40 a0 e1                                      mov r4, r0
00550fa8  05 50 8f e0                                      add r5, pc, r5
00550fac  7c 01 90 e5                                      ldr r0, [r0, #0x17c]
00550fb0  03 30 95 e7                                      ldr r3, [r5, r3]
00550fb4  00 00 50 e3                                      cmp r0, #0
00550fb8  fc 20 83 e2                                      add r2, r3, #0xfc
00550fbc  10 10 83 e2                                      add r1, r3, #0x10
00550fc0  dc 30 83 e2                                      add r3, r3, #0xdc
00550fc4  00 10 84 e5                                      str r1, [r4]
00550fc8  84 31 84 e5                                      str r3, [r4, #0x184]
00550fcc  88 21 84 e5                                      str r2, [r4, #0x188]
00550fd0  00 00 00 0a                                      beq #0x550fd8
00550fd4  6a 31 f7 eb                                      bl #0x31d584
00550fd8  56 0f 84 e2                                      add r0, r4, #0x158
00550fdc  c9 fe ff eb                                      bl #0x550b08
00550fe0  40 30 9f e5                                      ldr r3, [pc, #0x40]
00550fe4  04 00 a0 e1                                      mov r0, r4
00550fe8  03 10 95 e7                                      ldr r1, [r5, r3]
00550fec  04 30 91 e5                                      ldr r3, [r1, #4]
00550ff0  14 c0 91 e5                                      ldr ip, [r1, #0x14]
00550ff4  18 20 91 e5                                      ldr r2, [r1, #0x18]
00550ff8  00 30 84 e5                                      str r3, [r4]
00550ffc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00551000  08 10 81 e2                                      add r1, r1, #8
00551004  03 c0 84 e7                                      str ip, [r4, r3]
00551008  00 30 94 e5                                      ldr r3, [r4]
0055100c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00551010  03 20 84 e7                                      str r2, [r4, r3]
00551014  01 a0 ff eb                                      bl #0x539020
00551018  04 00 a0 e1                                      mov r0, r4
0055101c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00551020  e8 3a 44 00 a8 29 00 00 c4 29 00 00              .byte 0xe8, 0x3a, 0x44, 0x00, 0xa8, 0x29, 0x00, 0x00, 0xc4, 0x29, 0x00, 0x00

; FUNCTION 0x0055102c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticTextD0Ev
; demangled: glitch::gui::CGUIStaticText::~CGUIStaticText()
; decoder-mode: arm
0055102c  10 40 2d e9                                      push {r4, lr}
00551030  00 40 a0 e1                                      mov r4, r0
00551034  d7 ff ff eb                                      bl #0x550f98
00551038  04 00 a0 e1                                      mov r0, r4
0055103c  9b f4 f6 eb                                      bl #0x30e2b0
00551040  04 00 a0 e1                                      mov r0, r4
00551044  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00551048, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticTextD2Ev
; demangled: glitch::gui::CGUIStaticText::~CGUIStaticText()
; decoder-mode: arm
00551048  70 40 2d e9                                      push {r4, r5, r6, lr}
0055104c  00 30 91 e5                                      ldr r3, [r1]
00551050  00 40 a0 e1                                      mov r4, r0
00551054  01 50 a0 e1                                      mov r5, r1
00551058  00 30 80 e5                                      str r3, [r0]
0055105c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00551060  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
00551064  03 20 80 e7                                      str r2, [r0, r3]
00551068  00 30 90 e5                                      ldr r3, [r0]
0055106c  20 20 91 e5                                      ldr r2, [r1, #0x20]
00551070  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00551074  03 20 80 e7                                      str r2, [r0, r3]
00551078  7c 01 90 e5                                      ldr r0, [r0, #0x17c]
0055107c  00 00 50 e3                                      cmp r0, #0
00551080  00 00 00 0a                                      beq #0x551088
00551084  3e 31 f7 eb                                      bl #0x31d584
00551088  56 0f 84 e2                                      add r0, r4, #0x158
0055108c  9d fe ff eb                                      bl #0x550b08
00551090  04 30 95 e5                                      ldr r3, [r5, #4]
00551094  04 50 85 e2                                      add r5, r5, #4
00551098  04 10 85 e2                                      add r1, r5, #4
0055109c  00 30 84 e5                                      str r3, [r4]
005510a0  10 20 95 e5                                      ldr r2, [r5, #0x10]
005510a4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005510a8  04 00 a0 e1                                      mov r0, r4
005510ac  03 20 84 e7                                      str r2, [r4, r3]
005510b0  00 30 94 e5                                      ldr r3, [r4]
005510b4  14 20 95 e5                                      ldr r2, [r5, #0x14]
005510b8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
005510bc  03 20 84 e7                                      str r2, [r4, r3]
005510c0  d6 9f ff eb                                      bl #0x539020
005510c4  04 00 a0 e1                                      mov r0, r4
005510c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00551204, declared_size=1564, range_size=1564, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText9breakTextEv
; demangled: glitch::gui::CGUIStaticText::breakText()
; decoder-mode: arm
00551204  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00551208  50 31 90 e5                                      ldr r3, [r0, #0x150]
0055120c  00 40 a0 e1                                      mov r4, r0
00551210  61 df 4d e2                                      sub sp, sp, #0x184
00551214  03 00 a0 e1                                      mov r0, r3
00551218  00 30 93 e5                                      ldr r3, [r3]
0055121c  0f e0 a0 e1                                      mov lr, pc
00551220  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00551224  71 31 d4 e5                                      ldrb r3, [r4, #0x171]
00551228  00 50 a0 e1                                      mov r5, r0
0055122c  00 00 53 e3                                      cmp r3, #0
00551230  e6 00 00 0a                                      beq #0x5515d0
00551234  00 00 50 e3                                      cmp r0, #0
00551238  e4 00 00 0a                                      beq #0x5515d0
0055123c  58 11 94 e5                                      ldr r1, [r4, #0x158]
00551240  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
00551244  56 0f 84 e2                                      add r0, r4, #0x158
00551248  20 00 8d e5                                      str r0, [sp, #0x20]
0055124c  02 00 51 e1                                      cmp r1, r2
00551250  01 00 00 0a                                      beq #0x55125c
00551254  5f 3f 8d e2                                      add r3, sp, #0x17c
00551258  40 fe ff eb                                      bl #0x550b60
0055125c  7c 11 94 e5                                      ldr r1, [r4, #0x17c]
00551260  00 00 51 e3                                      cmp r1, #0
00551264  18 10 8d e5                                      str r1, [sp, #0x18]
00551268  5f 01 00 0a                                      beq #0x5517ec
0055126c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00551270  47 af 8d e2                                      add sl, sp, #0x11c
00551274  0a 00 a0 e1                                      mov r0, sl
00551278  80 21 84 e5                                      str r2, [r4, #0x180]
0055127c  10 10 a0 e3                                      mov r1, #0x10
00551280  5c a1 8d e5                                      str sl, [sp, #0x15c]
00551284  60 a1 8d e5                                      str sl, [sp, #0x160]
00551288  a4 3d f7 eb                                      bl #0x320920
0055128c  d4 30 8d e2                                      add r3, sp, #0xd4
00551290  10 30 8d e5                                      str r3, [sp, #0x10]
00551294  5c 31 9d e5                                      ldr r3, [sp, #0x15c]
00551298  00 60 a0 e3                                      mov r6, #0
0055129c  10 10 a0 e3                                      mov r1, #0x10
005512a0  00 60 83 e5                                      str r6, [r3]
005512a4  10 00 9d e5                                      ldr r0, [sp, #0x10]
005512a8  8c b0 8d e2                                      add fp, sp, #0x8c
005512ac  14 01 8d e5                                      str r0, [sp, #0x114]
005512b0  18 01 8d e5                                      str r0, [sp, #0x118]
005512b4  99 3d f7 eb                                      bl #0x320920
005512b8  14 31 9d e5                                      ldr r3, [sp, #0x114]
005512bc  0b 00 a0 e1                                      mov r0, fp
005512c0  10 10 a0 e3                                      mov r1, #0x10
005512c4  00 60 83 e5                                      str r6, [r3]
005512c8  cc b0 8d e5                                      str fp, [sp, #0xcc]
005512cc  d0 b0 8d e5                                      str fp, [sp, #0xd0]
005512d0  92 3d f7 eb                                      bl #0x320920
005512d4  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
005512d8  00 60 83 e5                                      str r6, [r3]
005512dc  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
005512e0  e0 00 94 e5                                      ldr r0, [r4, #0xe0]
005512e4  30 10 94 e5                                      ldr r1, [r4, #0x30]
005512e8  28 20 94 e5                                      ldr r2, [r4, #0x28]
005512ec  00 00 63 e0                                      rsb r0, r3, r0
005512f0  40 01 a0 e1                                      asr r0, r0, #2
005512f4  06 10 41 e2                                      sub r1, r1, #6
005512f8  01 20 62 e0                                      rsb r2, r2, r1
005512fc  06 00 50 e1                                      cmp r0, r6
00551300  08 00 8d e5                                      str r0, [sp, #8]
00551304  28 20 8d e5                                      str r2, [sp, #0x28]
00551308  92 00 00 da                                      ble #0x551558
0055130c  f8 24 9f e5                                      ldr r2, [pc, #0x4f8]
00551310  f8 04 9f e5                                      ldr r0, [pc, #0x4f8]
00551314  f8 84 9f e5                                      ldr r8, [pc, #0x4f8]
00551318  02 20 8f e0                                      add r2, pc, r2
0055131c  04 20 8d e5                                      str r2, [sp, #4]
00551320  f0 24 9f e5                                      ldr r2, [pc, #0x4f0]
00551324  a0 10 84 e2                                      add r1, r4, #0xa0
00551328  3c 00 8d e5                                      str r0, [sp, #0x3c]
0055132c  02 20 8f e0                                      add r2, pc, r2
00551330  2c 20 8d e5                                      str r2, [sp, #0x2c]
00551334  e0 24 9f e5                                      ldr r2, [pc, #0x4e0]
00551338  08 80 8f e0                                      add r8, pc, r8
0055133c  38 10 8d e5                                      str r1, [sp, #0x38]
00551340  02 20 8f e0                                      add r2, pc, r2
00551344  34 20 8d e5                                      str r2, [sp, #0x34]
00551348  08 20 9d e5                                      ldr r2, [sp, #8]
0055134c  01 70 a0 e3                                      mov r7, #1
00551350  0c 60 8d e5                                      str r6, [sp, #0xc]
00551354  01 20 42 e2                                      sub r2, r2, #1
00551358  1c 20 8d e5                                      str r2, [sp, #0x1c]
0055135c  14 40 8d e5                                      str r4, [sp, #0x14]
00551360  06 41 93 e7                                      ldr r4, [r3, r6, lsl #2]
00551364  0d 00 54 e3                                      cmp r4, #0xd
00551368  9a 00 00 0a                                      beq #0x5515d8
0055136c  0a 00 54 e3                                      cmp r4, #0xa
00551370  07 50 a0 01                                      moveq r5, r7
00551374  af 00 00 0a                                      beq #0x551638
00551378  20 00 54 e3                                      cmp r4, #0x20
0055137c  2d 00 54 13                                      cmpne r4, #0x2d
00551380  00 90 a0 13                                      movne sb, #0
00551384  01 90 a0 03                                      moveq sb, #1
00551388  07 50 a0 01                                      moveq r5, r7
0055138c  00 90 a0 03                                      moveq sb, #0
00551390  07 00 00 0a                                      beq #0x5513b4
00551394  00 00 54 e3                                      cmp r4, #0
00551398  07 50 a0 01                                      moveq r5, r7
0055139c  04 90 a0 01                                      moveq sb, r4
005513a0  03 00 00 0a                                      beq #0x5513b4
005513a4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005513a8  06 00 50 e1                                      cmp r0, r6
005513ac  b8 00 00 1a                                      bne #0x551694
005513b0  07 50 a0 e1                                      mov r5, r7
005513b4  18 31 9d e5                                      ldr r3, [sp, #0x118]
005513b8  14 21 9d e5                                      ldr r2, [sp, #0x114]
005513bc  02 30 63 e0                                      rsb r3, r3, r2
005513c0  23 31 b0 e1                                      lsrs r3, r3, #2
005513c4  a2 00 00 0a                                      beq #0x551654
005513c8  18 10 9d e5                                      ldr r1, [sp, #0x18]
005513cc  5d 0f 8d e2                                      add r0, sp, #0x174
005513d0  d0 20 9d e5                                      ldr r2, [sp, #0xd0]
005513d4  00 30 91 e5                                      ldr r3, [r1]
005513d8  0f e0 a0 e1                                      mov lr, pc
005513dc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005513e0  18 20 9d e5                                      ldr r2, [sp, #0x18]
005513e4  74 c1 9d e5                                      ldr ip, [sp, #0x174]
005513e8  5b 0f 8d e2                                      add r0, sp, #0x16c
005513ec  00 30 92 e5                                      ldr r3, [r2]
005513f0  02 10 a0 e1                                      mov r1, r2
005513f4  00 c0 8d e5                                      str ip, [sp]
005513f8  18 21 9d e5                                      ldr r2, [sp, #0x118]
005513fc  0f e0 a0 e1                                      mov lr, pc
00551400  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00551404  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00551408  6c 01 9d e5                                      ldr r0, [sp, #0x16c]
0055140c  00 c0 9d e5                                      ldr ip, [sp]
00551410  03 00 56 e1                                      cmp r6, r3
00551414  24 00 8d e5                                      str r0, [sp, #0x24]
00551418  bd 00 00 0a                                      beq #0x551714
0055141c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00551420  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00551424  28 20 9d e5                                      ldr r2, [sp, #0x28]
00551428  0c 30 80 e0                                      add r3, r0, ip
0055142c  03 10 81 e0                                      add r1, r1, r3
00551430  01 00 52 e1                                      cmp r2, r1
00551434  0c 10 8d e5                                      str r1, [sp, #0xc]
00551438  9a 00 00 ca                                      bgt #0x5516a8
0055143c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00551440  10 f6 f6 eb                                      bl #0x30ec88
00551444  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
00551448  00 20 a0 e1                                      mov r2, r0
0055144c  d0 00 9d e5                                      ldr r0, [sp, #0xd0]
00551450  03 30 60 e0                                      rsb r3, r0, r3
00551454  43 01 52 e1                                      cmp r2, r3, asr #2
00551458  d1 00 00 0a                                      beq #0x5517a4
0055145c  0a 10 a0 e1                                      mov r1, sl
00551460  20 00 9d e5                                      ldr r0, [sp, #0x20]
00551464  37 ff ff eb                                      bl #0x551148
00551468  0a 00 a0 e1                                      mov r0, sl
0055146c  18 11 9d e5                                      ldr r1, [sp, #0x118]
00551470  14 21 9d e5                                      ldr r2, [sp, #0x114]
00551474  49 47 f7 eb                                      bl #0x3231a0
00551478  24 30 9d e5                                      ldr r3, [sp, #0x24]
0055147c  0c 30 8d e5                                      str r3, [sp, #0xc]
00551480  04 00 9d e5                                      ldr r0, [sp, #4]
00551484  ff f5 f6 eb                                      bl #0x30ec88
00551488  04 c0 9d e5                                      ldr ip, [sp, #4]
0055148c  00 21 8c e0                                      add r2, ip, r0, lsl #2
00551490  0c 10 a0 e1                                      mov r1, ip
00551494  10 00 9d e5                                      ldr r0, [sp, #0x10]
00551498  40 47 f7 eb                                      bl #0x3231a0
0055149c  04 00 9d e5                                      ldr r0, [sp, #4]
005514a0  f8 f5 f6 eb                                      bl #0x30ec88
005514a4  04 10 9d e5                                      ldr r1, [sp, #4]
005514a8  00 21 81 e0                                      add r2, r1, r0, lsl #2
005514ac  0b 00 a0 e1                                      mov r0, fp
005514b0  3a 47 f7 eb                                      bl #0x3231a0
005514b4  04 10 a0 e1                                      mov r1, r4
005514b8  0b 00 a0 e1                                      mov r0, fp
005514bc  6e fb ff eb                                      bl #0x55027c
005514c0  00 00 59 e3                                      cmp sb, #0
005514c4  6a 00 00 0a                                      beq #0x551674
005514c8  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
005514cc  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
005514d0  0a 00 a0 e1                                      mov r0, sl
005514d4  db 3d f7 eb                                      bl #0x320c48
005514d8  14 21 9d e5                                      ldr r2, [sp, #0x114]
005514dc  18 11 9d e5                                      ldr r1, [sp, #0x118]
005514e0  0a 00 a0 e1                                      mov r0, sl
005514e4  d7 3d f7 eb                                      bl #0x320c48
005514e8  0a 10 a0 e1                                      mov r1, sl
005514ec  20 00 9d e5                                      ldr r0, [sp, #0x20]
005514f0  14 ff ff eb                                      bl #0x551148
005514f4  08 00 a0 e1                                      mov r0, r8
005514f8  e2 f5 f6 eb                                      bl #0x30ec88
005514fc  08 10 a0 e1                                      mov r1, r8
00551500  00 21 88 e0                                      add r2, r8, r0, lsl #2
00551504  0a 00 a0 e1                                      mov r0, sl
00551508  24 47 f7 eb                                      bl #0x3231a0
0055150c  08 00 a0 e1                                      mov r0, r8
00551510  dc f5 f6 eb                                      bl #0x30ec88
00551514  08 10 a0 e1                                      mov r1, r8
00551518  00 21 88 e0                                      add r2, r8, r0, lsl #2
0055151c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00551520  1e 47 f7 eb                                      bl #0x3231a0
00551524  08 00 a0 e1                                      mov r0, r8
00551528  d6 f5 f6 eb                                      bl #0x30ec88
0055152c  08 10 a0 e1                                      mov r1, r8
00551530  00 21 88 e0                                      add r2, r8, r0, lsl #2
00551534  0b 00 a0 e1                                      mov r0, fp
00551538  18 47 f7 eb                                      bl #0x3231a0
0055153c  08 30 9d e5                                      ldr r3, [sp, #8]
00551540  00 20 a0 e3                                      mov r2, #0
00551544  0c 20 8d e5                                      str r2, [sp, #0xc]
00551548  05 00 53 e1                                      cmp r3, r5
0055154c  01 60 86 e2                                      add r6, r6, #1
00551550  01 70 87 e2                                      add r7, r7, #1
00551554  4b 00 00 ca                                      bgt #0x551688
00551558  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
0055155c  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
00551560  0a 00 a0 e1                                      mov r0, sl
00551564  b7 3d f7 eb                                      bl #0x320c48
00551568  14 21 9d e5                                      ldr r2, [sp, #0x114]
0055156c  18 11 9d e5                                      ldr r1, [sp, #0x118]
00551570  0a 00 a0 e1                                      mov r0, sl
00551574  b3 3d f7 eb                                      bl #0x320c48
00551578  20 00 9d e5                                      ldr r0, [sp, #0x20]
0055157c  0a 10 a0 e1                                      mov r1, sl
00551580  f0 fe ff eb                                      bl #0x551148
00551584  d0 00 9d e5                                      ldr r0, [sp, #0xd0]
00551588  0b 00 50 e1                                      cmp r0, fp
0055158c  02 00 00 0a                                      beq #0x55159c
00551590  00 00 50 e3                                      cmp r0, #0
00551594  00 00 00 0a                                      beq #0x55159c
00551598  ac fb f6 eb                                      bl #0x310450
0055159c  18 01 9d e5                                      ldr r0, [sp, #0x118]
005515a0  10 10 9d e5                                      ldr r1, [sp, #0x10]
005515a4  01 00 50 e1                                      cmp r0, r1
005515a8  02 00 00 0a                                      beq #0x5515b8
005515ac  00 00 50 e3                                      cmp r0, #0
005515b0  00 00 00 0a                                      beq #0x5515b8
005515b4  a5 fb f6 eb                                      bl #0x310450
005515b8  60 01 9d e5                                      ldr r0, [sp, #0x160]
005515bc  0a 00 50 e1                                      cmp r0, sl
005515c0  02 00 00 0a                                      beq #0x5515d0
005515c4  00 00 50 e3                                      cmp r0, #0
005515c8  00 00 00 0a                                      beq #0x5515d0
005515cc  9f fb f6 eb                                      bl #0x310450
005515d0  61 df 8d e2                                      add sp, sp, #0x184
005515d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005515d8  07 21 93 e7                                      ldr r2, [r3, r7, lsl #2]
005515dc  07 50 a0 e1                                      mov r5, r7
005515e0  07 41 a0 e1                                      lsl r4, r7, #2
005515e4  0a 00 52 e3                                      cmp r2, #0xa
005515e8  12 00 00 1a                                      bne #0x551638
005515ec  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005515f0  e0 20 9c e5                                      ldr r2, [ip, #0xe0]
005515f4  02 20 63 e0                                      rsb r2, r3, r2
005515f8  42 21 a0 e1                                      asr r2, r2, #2
005515fc  07 00 52 e1                                      cmp r2, r7
00551600  70 00 00 3a                                      blo #0x5517c8
00551604  02 10 67 e0                                      rsb r1, r7, r2
00551608  00 20 e0 e3                                      mvn r2, #0
0055160c  02 00 51 e1                                      cmp r1, r2
00551610  01 20 87 90                                      addls r2, r7, r1
00551614  02 20 87 80                                      addhi r2, r7, r2
00551618  02 21 83 e0                                      add r2, r3, r2, lsl #2
0055161c  04 10 83 e0                                      add r1, r3, r4
00551620  38 00 9d e5                                      ldr r0, [sp, #0x38]
00551624  c9 46 f7 eb                                      bl #0x323150
00551628  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0055162c  01 c0 43 e2                                      sub ip, r3, #1
00551630  08 30 8d e5                                      str r3, [sp, #8]
00551634  1c c0 8d e5                                      str ip, [sp, #0x1c]
00551638  18 31 9d e5                                      ldr r3, [sp, #0x118]
0055163c  14 21 9d e5                                      ldr r2, [sp, #0x114]
00551640  01 90 a0 e3                                      mov sb, #1
00551644  20 40 a0 e3                                      mov r4, #0x20
00551648  02 30 63 e0                                      rsb r3, r3, r2
0055164c  23 31 b0 e1                                      lsrs r3, r3, #2
00551650  5c ff ff 1a                                      bne #0x5513c8
00551654  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00551658  01 00 56 e1                                      cmp r6, r1
0055165c  1a 00 00 0a                                      beq #0x5516cc
00551660  04 10 a0 e1                                      mov r1, r4
00551664  0b 00 a0 e1                                      mov r0, fp
00551668  03 fb ff eb                                      bl #0x55027c
0055166c  00 00 59 e3                                      cmp sb, #0
00551670  94 ff ff 1a                                      bne #0x5514c8
00551674  08 30 9d e5                                      ldr r3, [sp, #8]
00551678  01 60 86 e2                                      add r6, r6, #1
0055167c  01 70 87 e2                                      add r7, r7, #1
00551680  05 00 53 e1                                      cmp r3, r5
00551684  b3 ff ff da                                      ble #0x551558
00551688  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0055168c  e4 30 9c e5                                      ldr r3, [ip, #0xe4]
00551690  32 ff ff ea                                      b #0x551360
00551694  04 10 a0 e1                                      mov r1, r4
00551698  10 00 9d e5                                      ldr r0, [sp, #0x10]
0055169c  f6 fa ff eb                                      bl #0x55027c
005516a0  07 50 a0 e1                                      mov r5, r7
005516a4  f2 ff ff ea                                      b #0x551674
005516a8  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
005516ac  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
005516b0  0a 00 a0 e1                                      mov r0, sl
005516b4  63 3d f7 eb                                      bl #0x320c48
005516b8  0a 00 a0 e1                                      mov r0, sl
005516bc  18 11 9d e5                                      ldr r1, [sp, #0x118]
005516c0  14 21 9d e5                                      ldr r2, [sp, #0x114]
005516c4  5f 3d f7 eb                                      bl #0x320c48
005516c8  6c ff ff ea                                      b #0x551480
005516cc  18 10 9d e5                                      ldr r1, [sp, #0x18]
005516d0  5d 0f 8d e2                                      add r0, sp, #0x174
005516d4  d0 20 9d e5                                      ldr r2, [sp, #0xd0]
005516d8  00 30 91 e5                                      ldr r3, [r1]
005516dc  0f e0 a0 e1                                      mov lr, pc
005516e0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005516e4  18 20 9d e5                                      ldr r2, [sp, #0x18]
005516e8  74 c1 9d e5                                      ldr ip, [sp, #0x174]
005516ec  5b 0f 8d e2                                      add r0, sp, #0x16c
005516f0  00 30 92 e5                                      ldr r3, [r2]
005516f4  02 10 a0 e1                                      mov r1, r2
005516f8  00 c0 8d e5                                      str ip, [sp]
005516fc  18 21 9d e5                                      ldr r2, [sp, #0x118]
00551700  0f e0 a0 e1                                      mov lr, pc
00551704  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00551708  6c 31 9d e5                                      ldr r3, [sp, #0x16c]
0055170c  00 c0 9d e5                                      ldr ip, [sp]
00551710  24 30 8d e5                                      str r3, [sp, #0x24]
00551714  44 10 8d e2                                      add r1, sp, #0x44
00551718  34 00 9d e5                                      ldr r0, [sp, #0x34]
0055171c  00 c0 8d e5                                      str ip, [sp]
00551720  30 10 8d e5                                      str r1, [sp, #0x30]
00551724  84 10 8d e5                                      str r1, [sp, #0x84]
00551728  88 10 8d e5                                      str r1, [sp, #0x88]
0055172c  55 f5 f6 eb                                      bl #0x30ec88
00551730  34 30 9d e5                                      ldr r3, [sp, #0x34]
00551734  00 21 83 e0                                      add r2, r3, r0, lsl #2
00551738  03 10 a0 e1                                      mov r1, r3
0055173c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00551740  b9 51 f7 eb                                      bl #0x325e2c
00551744  30 00 9d e5                                      ldr r0, [sp, #0x30]
00551748  04 10 a0 e1                                      mov r1, r4
0055174c  ca fa ff eb                                      bl #0x55027c
00551750  18 00 9d e5                                      ldr r0, [sp, #0x18]
00551754  18 10 9d e5                                      ldr r1, [sp, #0x18]
00551758  88 20 9d e5                                      ldr r2, [sp, #0x88]
0055175c  00 30 90 e5                                      ldr r3, [r0]
00551760  59 0f 8d e2                                      add r0, sp, #0x164
00551764  0f e0 a0 e1                                      mov lr, pc
00551768  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055176c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00551770  88 00 9d e5                                      ldr r0, [sp, #0x88]
00551774  30 10 9d e5                                      ldr r1, [sp, #0x30]
00551778  64 31 9d e5                                      ldr r3, [sp, #0x164]
0055177c  00 c0 9d e5                                      ldr ip, [sp]
00551780  01 00 50 e1                                      cmp r0, r1
00551784  03 20 82 e0                                      add r2, r2, r3
00551788  24 20 8d e5                                      str r2, [sp, #0x24]
0055178c  22 ff ff 0a                                      beq #0x55141c
00551790  00 00 50 e3                                      cmp r0, #0
00551794  20 ff ff 0a                                      beq #0x55141c
00551798  2c fb f6 eb                                      bl #0x310450
0055179c  00 c0 9d e5                                      ldr ip, [sp]
005517a0  1d ff ff ea                                      b #0x55141c
005517a4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005517a8  84 f5 f6 eb                                      bl #0x30edc0
005517ac  00 00 50 e3                                      cmp r0, #0
005517b0  29 ff ff 1a                                      bne #0x55145c
005517b4  0a 00 a0 e1                                      mov r0, sl
005517b8  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
005517bc  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
005517c0  20 3d f7 eb                                      bl #0x320c48
005517c4  24 ff ff ea                                      b #0x55145c
005517c8  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
005517cc  01 00 8f e0                                      add r0, pc, r1
005517d0  b6 dd 06 eb                                      bl #0x708eb0
005517d4  14 20 9d e5                                      ldr r2, [sp, #0x14]
005517d8  e4 30 92 e5                                      ldr r3, [r2, #0xe4]
005517dc  e0 20 92 e5                                      ldr r2, [r2, #0xe0]
005517e0  02 20 63 e0                                      rsb r2, r3, r2
005517e4  42 21 a0 e1                                      asr r2, r2, #2
005517e8  85 ff ff ea                                      b #0x551604
005517ec  05 00 a0 e1                                      mov r0, r5
005517f0  00 30 95 e5                                      ldr r3, [r5]
005517f4  0f e0 a0 e1                                      mov lr, pc
005517f8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005517fc  00 00 50 e3                                      cmp r0, #0
00551800  18 00 8d e5                                      str r0, [sp, #0x18]
00551804  71 ff ff 0a                                      beq #0x5515d0
00551808  97 fe ff ea                                      b #0x55126c
; mapping-symbol data/literal pool
0055180c  f8 d8 36 00 8c cc 36 00 d8 d8 36 00 2c d7 38 00  .byte 0xf8, 0xd8, 0x36, 0x00, 0x8c, 0xcc, 0x36, 0x00, 0xd8, 0xd8, 0x36, 0x00, 0x2c, 0xd7, 0x38, 0x00
0055181c  d0 d8 36 00                                      .byte 0xd0, 0xd8, 0x36, 0x00

; FUNCTION 0x00551820, declared_size=24, range_size=24, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText22updateAbsolutePositionEv
; demangled: glitch::gui::CGUIStaticText::updateAbsolutePosition()
; decoder-mode: arm
00551820  10 40 2d e9                                      push {r4, lr}
00551824  00 40 a0 e1                                      mov r4, r0
00551828  3c 8c ff eb                                      bl #0x534920
0055182c  04 00 a0 e1                                      mov r0, r4
00551830  10 40 bd e8                                      pop {r4, lr}
00551834  72 fe ff ea                                      b #0x551204

; FUNCTION 0x00551838, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText11setWordWrapEb
; demangled: glitch::gui::CGUIStaticText::setWordWrap(bool)
; decoder-mode: arm
00551838  71 11 c0 e5                                      strb r1, [r0, #0x171]
0055183c  70 fe ff ea                                      b #0x551204

; FUNCTION 0x00551840, declared_size=72, range_size=72, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText15setOverrideFontEPNS0_8IGUIFontE
; demangled: glitch::gui::CGUIStaticText::setOverrideFont(glitch::gui::IGUIFont*)
; decoder-mode: arm
00551840  70 40 2d e9                                      push {r4, r5, r6, lr}
00551844  00 40 a0 e1                                      mov r4, r0
00551848  7c 01 90 e5                                      ldr r0, [r0, #0x17c]
0055184c  01 50 a0 e1                                      mov r5, r1
00551850  01 00 50 e1                                      cmp r0, r1
00551854  0a 00 00 0a                                      beq #0x551884
00551858  00 00 50 e3                                      cmp r0, #0
0055185c  00 00 00 0a                                      beq #0x551864
00551860  47 2f f7 eb                                      bl #0x31d584
00551864  00 00 55 e3                                      cmp r5, #0
00551868  7c 51 84 e5                                      str r5, [r4, #0x17c]
0055186c  04 30 95 15                                      ldrne r3, [r5, #4]
00551870  04 00 a0 e1                                      mov r0, r4
00551874  01 30 83 12                                      addne r3, r3, #1
00551878  04 30 85 15                                      strne r3, [r5, #4]
0055187c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00551880  5f fe ff ea                                      b #0x551204
00551884  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00551888, declared_size=1452, range_size=1452, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText4drawEv
; demangled: glitch::gui::CGUIStaticText::draw()
; decoder-mode: arm
00551888  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055188c  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00551890  84 d0 4d e2                                      sub sp, sp, #0x84
00551894  00 40 a0 e1                                      mov r4, r0
00551898  00 00 53 e3                                      cmp r3, #0
0055189c  01 00 00 1a                                      bne #0x5518a8
005518a0  84 d0 8d e2                                      add sp, sp, #0x84
005518a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005518a8  50 31 90 e5                                      ldr r3, [r0, #0x150]
005518ac  03 00 a0 e1                                      mov r0, r3
005518b0  00 30 93 e5                                      ldr r3, [r3]
005518b4  0f e0 a0 e1                                      mov lr, pc
005518b8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005518bc  00 70 50 e2                                      subs r7, r0, #0
005518c0  f6 ff ff 0a                                      beq #0x5518a0
005518c4  50 31 94 e5                                      ldr r3, [r4, #0x150]
005518c8  03 00 a0 e1                                      mov r0, r3
005518cc  00 30 93 e5                                      ldr r3, [r3]
005518d0  0f e0 a0 e1                                      mov lr, pc
005518d4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005518d8  72 51 d4 e5                                      ldrb r5, [r4, #0x172]
005518dc  38 c0 94 e5                                      ldr ip, [r4, #0x38]
005518e0  3c 10 84 e2                                      add r1, r4, #0x3c
005518e4  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
005518e8  00 00 55 e3                                      cmp r5, #0
005518ec  44 c0 8d e5                                      str ip, [sp, #0x44]
005518f0  48 10 8d e5                                      str r1, [sp, #0x48]
005518f4  4c 20 8d e5                                      str r2, [sp, #0x4c]
005518f8  50 30 8d e5                                      str r3, [sp, #0x50]
005518fc  61 00 00 1a                                      bne #0x551a88
00551900  64 31 d4 e5                                      ldrb r3, [r4, #0x164]
00551904  00 00 53 e3                                      cmp r3, #0
00551908  18 00 00 0a                                      beq #0x551970
0055190c  00 20 97 e5                                      ldr r2, [r7]
00551910  00 30 a0 e3                                      mov r3, #0
00551914  07 00 a0 e1                                      mov r0, r7
00551918  48 c0 92 e5                                      ldr ip, [r2, #0x48]
0055191c  7c 30 cd e5                                      strb r3, [sp, #0x7c]
00551920  7d 30 cd e5                                      strb r3, [sp, #0x7d]
00551924  7e 30 cd e5                                      strb r3, [sp, #0x7e]
00551928  7f 30 cd e5                                      strb r3, [sp, #0x7f]
0055192c  48 20 84 e2                                      add r2, r4, #0x48
00551930  00 30 8d e5                                      str r3, [sp]
00551934  44 30 8d e2                                      add r3, sp, #0x44
00551938  04 30 8d e5                                      str r3, [sp, #4]
0055193c  08 20 8d e5                                      str r2, [sp, #8]
00551940  04 10 a0 e1                                      mov r1, r4
00551944  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00551948  01 30 a0 e3                                      mov r3, #1
0055194c  3c ff 2f e1                                      blx ip
00551950  00 30 97 e5                                      ldr r3, [r7]
00551954  07 00 a0 e1                                      mov r0, r7
00551958  08 10 a0 e3                                      mov r1, #8
0055195c  44 50 9d e5                                      ldr r5, [sp, #0x44]
00551960  0f e0 a0 e1                                      mov lr, pc
00551964  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00551968  05 00 80 e0                                      add r0, r0, r5
0055196c  44 00 8d e5                                      str r0, [sp, #0x44]
00551970  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
00551974  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
00551978  02 30 63 e0                                      rsb r3, r3, r2
0055197c  23 31 b0 e1                                      lsrs r3, r3, #2
00551980  31 00 00 0a                                      beq #0x551a4c
00551984  7c 51 94 e5                                      ldr r5, [r4, #0x17c]
00551988  00 00 55 e3                                      cmp r5, #0
0055198c  02 01 00 0a                                      beq #0x551d9c
00551990  71 31 d4 e5                                      ldrb r3, [r4, #0x171]
00551994  00 00 53 e3                                      cmp r3, #0
00551998  45 00 00 1a                                      bne #0x551ab4
0055199c  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
005519a0  01 00 53 e3                                      cmp r3, #1
005519a4  0f 01 00 0a                                      beq #0x551de8
005519a8  68 31 94 e5                                      ldr r3, [r4, #0x168]
005519ac  01 00 53 e3                                      cmp r3, #1
005519b0  01 01 00 0a                                      beq #0x551dbc
005519b4  70 21 d4 e5                                      ldrb r2, [r4, #0x170]
005519b8  00 30 95 e5                                      ldr r3, [r5]
005519bc  e4 80 94 e5                                      ldr r8, [r4, #0xe4]
005519c0  00 00 52 e3                                      cmp r2, #0
005519c4  0c 60 93 e5                                      ldr r6, [r3, #0xc]
005519c8  d3 00 00 1a                                      bne #0x551d1c
005519cc  99 10 d4 e5                                      ldrb r1, [r4, #0x99]
005519d0  00 30 97 e5                                      ldr r3, [r7]
005519d4  07 00 a0 e1                                      mov r0, r7
005519d8  00 00 51 e3                                      cmp r1, #0
005519dc  08 10 a0 13                                      movne r1, #8
005519e0  09 10 a0 03                                      moveq r1, #9
005519e4  0f e0 a0 e1                                      mov lr, pc
005519e8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005519ec  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005519f0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005519f4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005519f8  29 10 cd e5                                      strb r1, [sp, #0x29]
005519fc  2a 20 cd e5                                      strb r2, [sp, #0x2a]
00551a00  2b 30 cd e5                                      strb r3, [sp, #0x2b]
00551a04  28 00 cd e5                                      strb r0, [sp, #0x28]
00551a08  28 30 9d e5                                      ldr r3, [sp, #0x28]
00551a0c  78 30 8d e5                                      str r3, [sp, #0x78]
00551a10  68 11 94 e5                                      ldr r1, [r4, #0x168]
00551a14  6c 21 94 e5                                      ldr r2, [r4, #0x16c]
00551a18  48 30 84 e2                                      add r3, r4, #0x48
00551a1c  02 00 51 e3                                      cmp r1, #2
00551a20  00 10 a0 13                                      movne r1, #0
00551a24  01 10 a0 03                                      moveq r1, #1
00551a28  02 00 52 e3                                      cmp r2, #2
00551a2c  00 20 a0 13                                      movne r2, #0
00551a30  01 20 a0 03                                      moveq r2, #1
00551a34  0e 00 8d e8                                      stm sp, {r1, r2, r3}
00551a38  05 00 a0 e1                                      mov r0, r5
00551a3c  08 10 a0 e1                                      mov r1, r8
00551a40  44 20 8d e2                                      add r2, sp, #0x44
00551a44  78 30 9d e5                                      ldr r3, [sp, #0x78]
00551a48  36 ff 2f e1                                      blx r6
00551a4c  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
00551a50  00 00 53 e3                                      cmp r3, #0
00551a54  04 50 b4 15                                      ldrne r5, [r4, #4]!
00551a58  90 ff ff 0a                                      beq #0x5518a0
00551a5c  04 00 55 e1                                      cmp r5, r4
00551a60  8e ff ff 0a                                      beq #0x5518a0
00551a64  08 30 95 e5                                      ldr r3, [r5, #8]
00551a68  03 00 a0 e1                                      mov r0, r3
00551a6c  00 30 93 e5                                      ldr r3, [r3]
00551a70  0f e0 a0 e1                                      mov lr, pc
00551a74  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00551a78  00 50 95 e5                                      ldr r5, [r5]
00551a7c  04 00 55 e1                                      cmp r5, r4
00551a80  f7 ff ff 1a                                      bne #0x551a64
00551a84  85 ff ff ea                                      b #0x5518a0
00551a88  77 31 d4 e5                                      ldrb r3, [r4, #0x177]
00551a8c  78 c1 d4 e5                                      ldrb ip, [r4, #0x178]
00551a90  79 21 d4 e5                                      ldrb r2, [r4, #0x179]
00551a94  7a 11 d4 e5                                      ldrb r1, [r4, #0x17a]
00551a98  0c 34 83 e1                                      orr r3, r3, ip, lsl #8
00551a9c  02 38 83 e1                                      orr r3, r3, r2, lsl #16
00551aa0  01 1c 83 e1                                      orr r1, r3, r1, lsl #24
00551aa4  44 20 8d e2                                      add r2, sp, #0x44
00551aa8  48 30 84 e2                                      add r3, r4, #0x48
00551aac  72 37 01 eb                                      bl #0x59f87c
00551ab0  92 ff ff ea                                      b #0x551900
00551ab4  80 31 94 e5                                      ldr r3, [r4, #0x180]
00551ab8  05 00 53 e1                                      cmp r3, r5
00551abc  01 00 00 0a                                      beq #0x551ac8
00551ac0  04 00 a0 e1                                      mov r0, r4
00551ac4  ce fd ff eb                                      bl #0x551204
00551ac8  44 30 9d e5                                      ldr r3, [sp, #0x44]
00551acc  58 23 9f e5                                      ldr r2, [pc, #0x358]
00551ad0  05 10 a0 e1                                      mov r1, r5
00551ad4  34 30 8d e5                                      str r3, [sp, #0x34]
00551ad8  48 30 9d e5                                      ldr r3, [sp, #0x48]
00551adc  02 20 8f e0                                      add r2, pc, r2
00551ae0  5c 00 8d e2                                      add r0, sp, #0x5c
00551ae4  38 30 8d e5                                      str r3, [sp, #0x38]
00551ae8  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00551aec  3c 30 8d e5                                      str r3, [sp, #0x3c]
00551af0  50 30 9d e5                                      ldr r3, [sp, #0x50]
00551af4  40 30 8d e5                                      str r3, [sp, #0x40]
00551af8  00 30 95 e5                                      ldr r3, [r5]
00551afc  0f e0 a0 e1                                      mov lr, pc
00551b00  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00551b04  00 30 95 e5                                      ldr r3, [r5]
00551b08  05 00 a0 e1                                      mov r0, r5
00551b0c  60 a0 9d e5                                      ldr sl, [sp, #0x60]
00551b10  0f e0 a0 e1                                      mov lr, pc
00551b14  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00551b18  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00551b1c  58 21 94 e5                                      ldr r2, [r4, #0x158]
00551b20  0a a0 80 e0                                      add sl, r0, sl
00551b24  00 30 95 e5                                      ldr r3, [r5]
00551b28  01 20 62 e0                                      rsb r2, r2, r1
00551b2c  c2 21 a0 e1                                      asr r2, r2, #3
00551b30  05 00 a0 e1                                      mov r0, r5
00551b34  82 11 a0 e1                                      lsl r1, r2, #3
00551b38  01 10 62 e0                                      rsb r1, r2, r1
00551b3c  01 13 81 e0                                      add r1, r1, r1, lsl #6
00551b40  81 11 82 e0                                      add r1, r2, r1, lsl #3
00551b44  81 c7 a0 e1                                      lsl ip, r1, #0xf
00551b48  0c 10 61 e0                                      rsb r1, r1, ip
00551b4c  81 21 82 e0                                      add r2, r2, r1, lsl #3
00551b50  92 0a 06 e0                                      mul r6, r2, sl
00551b54  0f e0 a0 e1                                      mov lr, pc
00551b58  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00551b5c  58 21 94 e5                                      ldr r2, [r4, #0x158]
00551b60  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00551b64  6c c1 94 e5                                      ldr ip, [r4, #0x16c]
00551b68  03 30 62 e0                                      rsb r3, r2, r3
00551b6c  c3 31 a0 e1                                      asr r3, r3, #3
00551b70  02 00 5c e3                                      cmp ip, #2
00551b74  83 11 a0 e1                                      lsl r1, r3, #3
00551b78  01 10 63 e0                                      rsb r1, r3, r1
00551b7c  01 13 81 e0                                      add r1, r1, r1, lsl #6
00551b80  81 11 83 e0                                      add r1, r3, r1, lsl #3
00551b84  81 87 a0 e1                                      lsl r8, r1, #0xf
00551b88  08 10 61 e0                                      rsb r1, r1, r8
00551b8c  81 31 83 e0                                      add r3, r3, r1, lsl #3
00551b90  01 10 43 e2                                      sub r1, r3, #1
00551b94  91 60 21 e0                                      mla r1, r1, r0, r6
00551b98  65 00 00 0a                                      beq #0x551d34
00551b9c  01 00 5c e3                                      cmp ip, #1
00551ba0  79 00 00 0a                                      beq #0x551d8c
00551ba4  00 00 53 e3                                      cmp r3, #0
00551ba8  a7 ff ff 0a                                      beq #0x551a4c
00551bac  17 3e 84 e2                                      add r3, r4, #0x170
00551bb0  03 30 83 e2                                      add r3, r3, #3
00551bb4  1c 30 8d e5                                      str r3, [sp, #0x1c]
00551bb8  48 30 84 e2                                      add r3, r4, #0x48
00551bbc  14 30 8d e5                                      str r3, [sp, #0x14]
00551bc0  34 30 8d e2                                      add r3, sp, #0x34
00551bc4  18 30 8d e5                                      str r3, [sp, #0x18]
00551bc8  54 30 8d e2                                      add r3, sp, #0x54
00551bcc  00 60 a0 e3                                      mov r6, #0
00551bd0  24 30 8d e5                                      str r3, [sp, #0x24]
00551bd4  74 30 8d e2                                      add r3, sp, #0x74
00551bd8  06 80 a0 e1                                      mov r8, r6
00551bdc  20 30 8d e5                                      str r3, [sp, #0x20]
00551be0  07 90 a0 e1                                      mov sb, r7
00551be4  30 00 00 ea                                      b #0x551cac
00551be8  20 00 9d e5                                      ldr r0, [sp, #0x20]
00551bec  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00551bf0  04 20 a0 e3                                      mov r2, #4
00551bf4  1b f3 f6 eb                                      bl #0x30e868
00551bf8  68 31 94 e5                                      ldr r3, [r4, #0x168]
00551bfc  00 20 a0 e3                                      mov r2, #0
00551c00  07 10 a0 e1                                      mov r1, r7
00551c04  02 00 53 e3                                      cmp r3, #2
00551c08  00 30 a0 13                                      movne r3, #0
00551c0c  01 30 a0 03                                      moveq r3, #1
00551c10  00 30 8d e5                                      str r3, [sp]
00551c14  14 30 9d e5                                      ldr r3, [sp, #0x14]
00551c18  04 20 8d e5                                      str r2, [sp, #4]
00551c1c  05 00 a0 e1                                      mov r0, r5
00551c20  18 20 9d e5                                      ldr r2, [sp, #0x18]
00551c24  08 30 8d e5                                      str r3, [sp, #8]
00551c28  74 30 9d e5                                      ldr r3, [sp, #0x74]
00551c2c  3b ff 2f e1                                      blx fp
00551c30  00 30 95 e5                                      ldr r3, [r5]
00551c34  05 00 a0 e1                                      mov r0, r5
00551c38  40 70 9d e5                                      ldr r7, [sp, #0x40]
00551c3c  0f e0 a0 e1                                      mov lr, pc
00551c40  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00551c44  07 70 8a e0                                      add r7, sl, r7
00551c48  00 70 87 e0                                      add r7, r7, r0
00551c4c  40 70 8d e5                                      str r7, [sp, #0x40]
00551c50  00 30 95 e5                                      ldr r3, [r5]
00551c54  05 00 a0 e1                                      mov r0, r5
00551c58  38 70 9d e5                                      ldr r7, [sp, #0x38]
00551c5c  0f e0 a0 e1                                      mov lr, pc
00551c60  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00551c64  58 21 94 e5                                      ldr r2, [r4, #0x158]
00551c68  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00551c6c  07 10 8a e0                                      add r1, sl, r7
00551c70  00 00 81 e0                                      add r0, r1, r0
00551c74  03 30 62 e0                                      rsb r3, r2, r3
00551c78  c3 31 a0 e1                                      asr r3, r3, #3
00551c7c  38 00 8d e5                                      str r0, [sp, #0x38]
00551c80  83 c1 a0 e1                                      lsl ip, r3, #3
00551c84  0c c0 63 e0                                      rsb ip, r3, ip
00551c88  0c c3 8c e0                                      add ip, ip, ip, lsl #6
00551c8c  01 80 88 e2                                      add r8, r8, #1
00551c90  8c 11 83 e0                                      add r1, r3, ip, lsl #3
00551c94  48 60 86 e2                                      add r6, r6, #0x48
00551c98  81 07 a0 e1                                      lsl r0, r1, #0xf
00551c9c  00 10 61 e0                                      rsb r1, r1, r0
00551ca0  81 11 83 e0                                      add r1, r3, r1, lsl #3
00551ca4  01 00 58 e1                                      cmp r8, r1
00551ca8  67 ff ff 2a                                      bhs #0x551a4c
00551cac  68 31 94 e5                                      ldr r3, [r4, #0x168]
00551cb0  01 00 53 e3                                      cmp r3, #1
00551cb4  27 00 00 0a                                      beq #0x551d58
00551cb8  70 11 d4 e5                                      ldrb r1, [r4, #0x170]
00551cbc  00 30 95 e5                                      ldr r3, [r5]
00551cc0  06 20 82 e0                                      add r2, r2, r6
00551cc4  00 00 51 e3                                      cmp r1, #0
00551cc8  09 00 a0 e1                                      mov r0, sb
00551ccc  0c b0 93 e5                                      ldr fp, [r3, #0xc]
00551cd0  44 70 92 e5                                      ldr r7, [r2, #0x44]
00551cd4  c3 ff ff 1a                                      bne #0x551be8
00551cd8  99 10 d4 e5                                      ldrb r1, [r4, #0x99]
00551cdc  00 30 99 e5                                      ldr r3, [sb]
00551ce0  00 00 51 e3                                      cmp r1, #0
00551ce4  08 10 a0 13                                      movne r1, #8
00551ce8  09 10 a0 03                                      moveq r1, #9
00551cec  0f e0 a0 e1                                      mov lr, pc
00551cf0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00551cf4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00551cf8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00551cfc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00551d00  29 10 cd e5                                      strb r1, [sp, #0x29]
00551d04  2a 20 cd e5                                      strb r2, [sp, #0x2a]
00551d08  2b 30 cd e5                                      strb r3, [sp, #0x2b]
00551d0c  28 00 cd e5                                      strb r0, [sp, #0x28]
00551d10  28 30 9d e5                                      ldr r3, [sp, #0x28]
00551d14  74 30 8d e5                                      str r3, [sp, #0x74]
00551d18  b6 ff ff ea                                      b #0x551bf8
00551d1c  17 1e 84 e2                                      add r1, r4, #0x170
00551d20  03 10 81 e2                                      add r1, r1, #3
00551d24  78 00 8d e2                                      add r0, sp, #0x78
00551d28  04 20 a0 e3                                      mov r2, #4
00551d2c  cd f2 f6 eb                                      bl #0x30e868
00551d30  36 ff ff ea                                      b #0x551a10
00551d34  38 00 9d e5                                      ldr r0, [sp, #0x38]
00551d38  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00551d3c  a1 1f 81 e0                                      add r1, r1, r1, lsr #31
00551d40  00 00 8c e0                                      add r0, ip, r0
00551d44  a0 0f 80 e0                                      add r0, r0, r0, lsr #31
00551d48  c0 00 a0 e1                                      asr r0, r0, #1
00551d4c  c1 10 40 e0                                      sub r1, r0, r1, asr #1
00551d50  38 10 8d e5                                      str r1, [sp, #0x38]
00551d54  92 ff ff ea                                      b #0x551ba4
00551d58  06 20 82 e0                                      add r2, r2, r6
00551d5c  44 20 92 e5                                      ldr r2, [r2, #0x44]
00551d60  00 30 95 e5                                      ldr r3, [r5]
00551d64  24 00 9d e5                                      ldr r0, [sp, #0x24]
00551d68  05 10 a0 e1                                      mov r1, r5
00551d6c  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
00551d70  0f e0 a0 e1                                      mov lr, pc
00551d74  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00551d78  54 30 9d e5                                      ldr r3, [sp, #0x54]
00551d7c  58 21 94 e5                                      ldr r2, [r4, #0x158]
00551d80  07 70 63 e0                                      rsb r7, r3, r7
00551d84  34 70 8d e5                                      str r7, [sp, #0x34]
00551d88  ca ff ff ea                                      b #0x551cb8
00551d8c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00551d90  00 10 61 e0                                      rsb r1, r1, r0
00551d94  38 10 8d e5                                      str r1, [sp, #0x38]
00551d98  81 ff ff ea                                      b #0x551ba4
00551d9c  05 10 a0 e1                                      mov r1, r5
00551da0  00 30 97 e5                                      ldr r3, [r7]
00551da4  07 00 a0 e1                                      mov r0, r7
00551da8  0f e0 a0 e1                                      mov lr, pc
00551dac  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00551db0  00 50 50 e2                                      subs r5, r0, #0
00551db4  24 ff ff 0a                                      beq #0x551a4c
00551db8  f4 fe ff ea                                      b #0x551990
00551dbc  00 30 95 e5                                      ldr r3, [r5]
00551dc0  64 00 8d e2                                      add r0, sp, #0x64
00551dc4  05 10 a0 e1                                      mov r1, r5
00551dc8  e4 20 94 e5                                      ldr r2, [r4, #0xe4]
00551dcc  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
00551dd0  0f e0 a0 e1                                      mov lr, pc
00551dd4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00551dd8  64 30 9d e5                                      ldr r3, [sp, #0x64]
00551ddc  06 60 63 e0                                      rsb r6, r3, r6
00551de0  44 60 8d e5                                      str r6, [sp, #0x44]
00551de4  f2 fe ff ea                                      b #0x5519b4
00551de8  40 20 9f e5                                      ldr r2, [pc, #0x40]
00551dec  6c 00 8d e2                                      add r0, sp, #0x6c
00551df0  05 10 a0 e1                                      mov r1, r5
00551df4  02 20 8f e0                                      add r2, pc, r2
00551df8  00 30 95 e5                                      ldr r3, [r5]
00551dfc  50 60 9d e5                                      ldr r6, [sp, #0x50]
00551e00  0f e0 a0 e1                                      mov lr, pc
00551e04  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00551e08  70 20 9d e5                                      ldr r2, [sp, #0x70]
00551e0c  00 30 95 e5                                      ldr r3, [r5]
00551e10  05 00 a0 e1                                      mov r0, r5
00551e14  06 60 62 e0                                      rsb r6, r2, r6
00551e18  0f e0 a0 e1                                      mov lr, pc
00551e1c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00551e20  06 00 60 e0                                      rsb r0, r0, r6
00551e24  48 00 8d e5                                      str r0, [sp, #0x48]
00551e28  de fe ff ea                                      b #0x5519a8
; mapping-symbol data/literal pool
00551e2c  84 c9 38 00 6c c6 38 00                          .byte 0x84, 0xc9, 0x38, 0x00, 0x6c, 0xc6, 0x38, 0x00

; FUNCTION 0x00551e34, declared_size=48, range_size=48, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText7setTextEPKw
; demangled: glitch::gui::CGUIStaticText::setText(wchar_t const*)
; decoder-mode: arm
00551e34  70 40 2d e9                                      push {r4, r5, r6, lr}
00551e38  00 40 a0 e1                                      mov r4, r0
00551e3c  01 00 a0 e1                                      mov r0, r1
00551e40  01 50 a0 e1                                      mov r5, r1
00551e44  8f f3 f6 eb                                      bl #0x30ec88
00551e48  05 10 a0 e1                                      mov r1, r5
00551e4c  00 21 85 e0                                      add r2, r5, r0, lsl #2
00551e50  a0 00 84 e2                                      add r0, r4, #0xa0
00551e54  d1 44 f7 eb                                      bl #0x3231a0
00551e58  04 00 a0 e1                                      mov r0, r4
00551e5c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00551e60  e7 fc ff ea                                      b #0x551204

; FUNCTION 0x00551e64, declared_size=380, range_size=380, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticTextC2EPKwbPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiRKNS_4core4rectIiEEb
; demangled: glitch::gui::CGUIStaticText::CGUIStaticText(wchar_t const*, bool, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int> const&, bool)
; decoder-mode: arm
00551e64  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00551e68  1c d0 4d e2                                      sub sp, sp, #0x1c
00551e6c  44 60 9d e5                                      ldr r6, [sp, #0x44]
00551e70  38 50 9d e5                                      ldr r5, [sp, #0x38]
00551e74  01 70 a0 e1                                      mov r7, r1
00551e78  0c c0 96 e5                                      ldr ip, [r6, #0xc]
00551e7c  10 40 96 e8                                      ldm r6, {r4, lr}
00551e80  08 80 96 e5                                      ldr r8, [r6, #8]
00551e84  14 c0 8d e5                                      str ip, [sp, #0x14]
00551e88  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00551e8c  02 60 a0 e1                                      mov r6, r2
00551e90  03 a0 a0 e1                                      mov sl, r3
00551e94  04 10 81 e2                                      add r1, r1, #4
00551e98  05 20 a0 e1                                      mov r2, r5
00551e9c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00551ea0  00 c0 8d e5                                      str ip, [sp]
00551ea4  08 c0 8d e2                                      add ip, sp, #8
00551ea8  08 40 8d e5                                      str r4, [sp, #8]
00551eac  0c e0 8d e5                                      str lr, [sp, #0xc]
00551eb0  00 40 a0 e1                                      mov r4, r0
00551eb4  10 80 8d e5                                      str r8, [sp, #0x10]
00551eb8  04 c0 8d e5                                      str ip, [sp, #4]
00551ebc  48 80 dd e5                                      ldrb r8, [sp, #0x48]
00551ec0  23 f9 ff eb                                      bl #0x550354
00551ec4  00 20 97 e5                                      ldr r2, [r7]
00551ec8  00 30 a0 e3                                      mov r3, #0
00551ecc  00 10 e0 e3                                      mvn r1, #0
00551ed0  00 20 84 e5                                      str r2, [r4]
00551ed4  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00551ed8  1c c0 97 e5                                      ldr ip, [r7, #0x1c]
00551edc  2d 20 e0 e3                                      mvn r2, #0x2d
00551ee0  00 00 56 e3                                      cmp r6, #0
00551ee4  00 c0 84 e7                                      str ip, [r4, r0]
00551ee8  00 c0 94 e5                                      ldr ip, [r4]
00551eec  20 e0 97 e5                                      ldr lr, [r7, #0x20]
00551ef0  65 00 a0 e3                                      mov r0, #0x65
00551ef4  10 c0 1c e5                                      ldr ip, [ip, #-0x10]
00551ef8  a0 70 84 e2                                      add r7, r4, #0xa0
00551efc  0c e0 84 e7                                      str lr, [r4, ip]
00551f00  64 a1 c4 e5                                      strb sl, [r4, #0x164]
00551f04  72 81 c4 e5                                      strb r8, [r4, #0x172]
00551f08  75 11 c4 e5                                      strb r1, [r4, #0x175]
00551f0c  79 21 c4 e5                                      strb r2, [r4, #0x179]
00551f10  7a 01 c4 e5                                      strb r0, [r4, #0x17a]
00551f14  80 31 84 e5                                      str r3, [r4, #0x180]
00551f18  58 31 84 e5                                      str r3, [r4, #0x158]
00551f1c  5c 31 84 e5                                      str r3, [r4, #0x15c]
00551f20  60 31 84 e5                                      str r3, [r4, #0x160]
00551f24  68 31 84 e5                                      str r3, [r4, #0x168]
00551f28  6c 31 84 e5                                      str r3, [r4, #0x16c]
00551f2c  70 31 c4 e5                                      strb r3, [r4, #0x170]
00551f30  71 31 c4 e5                                      strb r3, [r4, #0x171]
00551f34  73 11 c4 e5                                      strb r1, [r4, #0x173]
00551f38  74 11 c4 e5                                      strb r1, [r4, #0x174]
00551f3c  76 01 c4 e5                                      strb r0, [r4, #0x176]
00551f40  77 21 c4 e5                                      strb r2, [r4, #0x177]
00551f44  78 21 c4 e5                                      strb r2, [r4, #0x178]
00551f48  7c 31 84 e5                                      str r3, [r4, #0x17c]
00551f4c  1f 00 00 0a                                      beq #0x551fd0
00551f50  06 00 a0 e1                                      mov r0, r6
00551f54  4b f3 f6 eb                                      bl #0x30ec88
00551f58  06 10 a0 e1                                      mov r1, r6
00551f5c  00 21 86 e0                                      add r2, r6, r0, lsl #2
00551f60  07 00 a0 e1                                      mov r0, r7
00551f64  8d 44 f7 eb                                      bl #0x3231a0
00551f68  00 00 55 e3                                      cmp r5, #0
00551f6c  14 00 00 0a                                      beq #0x551fc4
00551f70  00 30 95 e5                                      ldr r3, [r5]
00551f74  05 00 a0 e1                                      mov r0, r5
00551f78  0f e0 a0 e1                                      mov lr, pc
00551f7c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00551f80  00 00 50 e3                                      cmp r0, #0
00551f84  0e 00 00 0a                                      beq #0x551fc4
00551f88  00 30 95 e5                                      ldr r3, [r5]
00551f8c  05 00 a0 e1                                      mov r0, r5
00551f90  0f e0 a0 e1                                      mov lr, pc
00551f94  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00551f98  02 10 a0 e3                                      mov r1, #2
00551f9c  00 30 90 e5                                      ldr r3, [r0]
00551fa0  0f e0 a0 e1                                      mov lr, pc
00551fa4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00551fa8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00551fac  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00551fb0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00551fb4  78 11 c4 e5                                      strb r1, [r4, #0x178]
00551fb8  79 21 c4 e5                                      strb r2, [r4, #0x179]
00551fbc  7a 31 c4 e5                                      strb r3, [r4, #0x17a]
00551fc0  77 01 c4 e5                                      strb r0, [r4, #0x177]
00551fc4  04 00 a0 e1                                      mov r0, r4
00551fc8  1c d0 8d e2                                      add sp, sp, #0x1c
00551fcc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00551fd0  04 60 9f e5                                      ldr r6, [pc, #4]
00551fd4  06 60 8f e0                                      add r6, pc, r6
00551fd8  dc ff ff ea                                      b #0x551f50
; mapping-symbol data/literal pool
00551fdc  3c cc 36 00                                      .byte 0x3c, 0xcc, 0x36, 0x00

; FUNCTION 0x00551fe0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZTv0_n24_N6glitch3gui14CGUIStaticTextD0Ev
; demangled: virtual thunk to glitch::gui::CGUIStaticText::~CGUIStaticText()
; decoder-mode: arm
00551fe0  00 30 90 e5                                      ldr r3, [r0]
00551fe4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00551fe8  03 00 80 e0                                      add r0, r0, r3
00551fec  0e fc ff ea                                      b #0x55102c

; FUNCTION 0x00551ff0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZTv0_n12_N6glitch3gui14CGUIStaticTextD0Ev
; demangled: virtual thunk to glitch::gui::CGUIStaticText::~CGUIStaticText()
; decoder-mode: arm
00551ff0  00 30 90 e5                                      ldr r3, [r0]
00551ff4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00551ff8  03 00 80 e0                                      add r0, r0, r3
00551ffc  0a fc ff ea                                      b #0x55102c

; FUNCTION 0x00552000, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZTv0_n24_N6glitch3gui14CGUIStaticTextD1Ev
; demangled: virtual thunk to glitch::gui::CGUIStaticText::~CGUIStaticText()
; decoder-mode: arm
00552000  00 30 90 e5                                      ldr r3, [r0]
00552004  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00552008  03 00 80 e0                                      add r0, r0, r3
0055200c  e1 fb ff ea                                      b #0x550f98

; FUNCTION 0x00552010, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZTv0_n12_N6glitch3gui14CGUIStaticTextD1Ev
; demangled: virtual thunk to glitch::gui::CGUIStaticText::~CGUIStaticText()
; decoder-mode: arm
00552010  00 30 90 e5                                      ldr r3, [r0]
00552014  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00552018  03 00 80 e0                                      add r0, r0, r3
0055201c  dd fb ff ea                                      b #0x550f98

; FUNCTION 0x00552020, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZTv0_n20_N6glitch3gui14CGUIStaticText21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIStaticText::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00552020  00 30 90 e5                                      ldr r3, [r0]
00552024  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00552028  03 00 80 e0                                      add r0, r0, r3
0055202c  66 fb ff ea                                      b #0x550dcc

; FUNCTION 0x00552030, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZTv0_n16_NK6glitch3gui14CGUIStaticText19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIStaticText::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00552030  00 30 90 e5                                      ldr r3, [r0]
00552034  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00552038  03 00 80 e0                                      add r0, r0, r3
0055203c  e8 f9 ff ea                                      b #0x5507e4
