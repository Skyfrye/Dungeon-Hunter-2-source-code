; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00552040, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZNK6glitch3gui7CGUITab9getNumberEv
; demangled: glitch::gui::CGUITab::getNumber() const
; decoder-mode: arm
00552040  58 01 90 e5                                      ldr r0, [r0, #0x158]
00552044  1e ff 2f e1                                      bx lr

; FUNCTION 0x00552048, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZN6glitch3gui7CGUITab9setNumberEi
; demangled: glitch::gui::CGUITab::setNumber(int)
; decoder-mode: arm
00552048  58 11 80 e5                                      str r1, [r0, #0x158]
0055204c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00552050, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZN6glitch3gui7CGUITab17setDrawBackgroundEb
; demangled: glitch::gui::CGUITab::setDrawBackground(bool)
; decoder-mode: arm
00552050  5c 11 c0 e5                                      strb r1, [r0, #0x15c]
00552054  1e ff 2f e1                                      bx lr

; FUNCTION 0x00552058, declared_size=40, range_size=40, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZN6glitch3gui7CGUITab18setBackgroundColorENS_5video6SColorE
; demangled: glitch::gui::CGUITab::setBackgroundColor(glitch::video::SColor)
; decoder-mode: arm
00552058  51 34 e7 e7                                      ubfx r3, r1, #8, #8
0055205c  51 28 e7 e7                                      ubfx r2, r1, #0x10, #8
00552060  21 cc a0 e1                                      lsr ip, r1, #0x18
00552064  08 d0 4d e2                                      sub sp, sp, #8
00552068  5d 11 c0 e5                                      strb r1, [r0, #0x15d]
0055206c  60 c1 c0 e5                                      strb ip, [r0, #0x160]
00552070  5f 21 c0 e5                                      strb r2, [r0, #0x15f]
00552074  5e 31 c0 e5                                      strb r3, [r0, #0x15e]
00552078  08 d0 8d e2                                      add sp, sp, #8
0055207c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00552080, declared_size=40, range_size=40, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZN6glitch3gui7CGUITab12setTextColorENS_5video6SColorE
; demangled: glitch::gui::CGUITab::setTextColor(glitch::video::SColor)
; decoder-mode: arm
00552080  51 34 e7 e7                                      ubfx r3, r1, #8, #8
00552084  51 28 e7 e7                                      ubfx r2, r1, #0x10, #8
00552088  21 cc a0 e1                                      lsr ip, r1, #0x18
0055208c  08 d0 4d e2                                      sub sp, sp, #8
00552090  61 11 c0 e5                                      strb r1, [r0, #0x161]
00552094  64 c1 c0 e5                                      strb ip, [r0, #0x164]
00552098  63 21 c0 e5                                      strb r2, [r0, #0x163]
0055209c  62 31 c0 e5                                      strb r3, [r0, #0x162]
005520a0  08 d0 8d e2                                      add sp, sp, #8
005520a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005520a8, declared_size=72, range_size=72, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZNK6glitch3gui7CGUITab12getTextColorEv
; demangled: glitch::gui::CGUITab::getTextColor() const
; decoder-mode: arm
005520a8  04 e0 2d e5                                      str lr, [sp, #-4]!
005520ac  16 1e 80 e2                                      add r1, r0, #0x160
005520b0  0c d0 4d e2                                      sub sp, sp, #0xc
005520b4  01 10 81 e2                                      add r1, r1, #1
005520b8  04 00 8d e2                                      add r0, sp, #4
005520bc  04 20 a0 e3                                      mov r2, #4
005520c0  e8 f1 f6 eb                                      bl #0x30e868
005520c4  04 30 dd e5                                      ldrb r3, [sp, #4]
005520c8  05 10 dd e5                                      ldrb r1, [sp, #5]
005520cc  06 20 dd e5                                      ldrb r2, [sp, #6]
005520d0  00 00 a0 e3                                      mov r0, #0
005520d4  13 00 c7 e7                                      bfi r0, r3, #0, #8
005520d8  07 30 dd e5                                      ldrb r3, [sp, #7]
005520dc  11 04 cf e7                                      bfi r0, r1, #8, #8
005520e0  12 08 d7 e7                                      bfi r0, r2, #0x10, #8
005520e4  13 0c df e7                                      bfi r0, r3, #0x18, #8
005520e8  0c d0 8d e2                                      add sp, sp, #0xc
005520ec  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x005520f0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZNK6glitch3gui7CGUITab19isDrawingBackgroundEv
; demangled: glitch::gui::CGUITab::isDrawingBackground() const
; decoder-mode: arm
005520f0  5c 01 d0 e5                                      ldrb r0, [r0, #0x15c]
005520f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005520f8, declared_size=72, range_size=72, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZNK6glitch3gui7CGUITab18getBackgroundColorEv
; demangled: glitch::gui::CGUITab::getBackgroundColor() const
; decoder-mode: arm
005520f8  04 e0 2d e5                                      str lr, [sp, #-4]!
005520fc  57 1f 80 e2                                      add r1, r0, #0x15c
00552100  0c d0 4d e2                                      sub sp, sp, #0xc
00552104  01 10 81 e2                                      add r1, r1, #1
00552108  04 00 8d e2                                      add r0, sp, #4
0055210c  04 20 a0 e3                                      mov r2, #4
00552110  d4 f1 f6 eb                                      bl #0x30e868
00552114  04 30 dd e5                                      ldrb r3, [sp, #4]
00552118  05 10 dd e5                                      ldrb r1, [sp, #5]
0055211c  06 20 dd e5                                      ldrb r2, [sp, #6]
00552120  00 00 a0 e3                                      mov r0, #0
00552124  13 00 c7 e7                                      bfi r0, r3, #0, #8
00552128  07 30 dd e5                                      ldrb r3, [sp, #7]
0055212c  11 04 cf e7                                      bfi r0, r1, #8, #8
00552130  12 08 d7 e7                                      bfi r0, r2, #0x10, #8
00552134  13 0c df e7                                      bfi r0, r3, #0x18, #8
00552138  0c d0 8d e2                                      add sp, sp, #0xc
0055213c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00552140, declared_size=212, range_size=212, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZNK6glitch3gui7CGUITab19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUITab::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00552140  70 40 2d e9                                      push {r4, r5, r6, lr}
00552144  00 40 a0 e1                                      mov r4, r0
00552148  01 50 a0 e1                                      mov r5, r1
0055214c  da 8b ff eb                                      bl #0x5350bc
00552150  ac 10 9f e5                                      ldr r1, [pc, #0xac]
00552154  05 00 a0 e1                                      mov r0, r5
00552158  58 21 94 e5                                      ldr r2, [r4, #0x158]
0055215c  00 c0 95 e5                                      ldr ip, [r5]
00552160  01 10 8f e0                                      add r1, pc, r1
00552164  00 30 a0 e3                                      mov r3, #0
00552168  0f e0 a0 e1                                      mov lr, pc
0055216c  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00552170  90 10 9f e5                                      ldr r1, [pc, #0x90]
00552174  05 00 a0 e1                                      mov r0, r5
00552178  5c 21 d4 e5                                      ldrb r2, [r4, #0x15c]
0055217c  00 c0 95 e5                                      ldr ip, [r5]
00552180  01 10 8f e0                                      add r1, pc, r1
00552184  00 30 a0 e3                                      mov r3, #0
00552188  0f e0 a0 e1                                      mov lr, pc
0055218c  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00552190  5e 01 d4 e5                                      ldrb r0, [r4, #0x15e]
00552194  5d 31 d4 e5                                      ldrb r3, [r4, #0x15d]
00552198  5f 11 d4 e5                                      ldrb r1, [r4, #0x15f]
0055219c  60 21 d4 e5                                      ldrb r2, [r4, #0x160]
005521a0  00 34 83 e1                                      orr r3, r3, r0, lsl #8
005521a4  01 38 83 e1                                      orr r3, r3, r1, lsl #16
005521a8  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
005521ac  02 2c 83 e1                                      orr r2, r3, r2, lsl #24
005521b0  05 00 a0 e1                                      mov r0, r5
005521b4  00 c0 95 e5                                      ldr ip, [r5]
005521b8  01 10 8f e0                                      add r1, pc, r1
005521bc  00 30 a0 e3                                      mov r3, #0
005521c0  0f e0 a0 e1                                      mov lr, pc
005521c4  18 f1 9c e5                                      ldr pc, [ip, #0x118]
005521c8  62 01 d4 e5                                      ldrb r0, [r4, #0x162]
005521cc  61 31 d4 e5                                      ldrb r3, [r4, #0x161]
005521d0  63 11 d4 e5                                      ldrb r1, [r4, #0x163]
005521d4  64 21 d4 e5                                      ldrb r2, [r4, #0x164]
005521d8  00 34 83 e1                                      orr r3, r3, r0, lsl #8
005521dc  01 38 83 e1                                      orr r3, r3, r1, lsl #16
005521e0  28 10 9f e5                                      ldr r1, [pc, #0x28]
005521e4  02 2c 83 e1                                      orr r2, r3, r2, lsl #24
005521e8  05 00 a0 e1                                      mov r0, r5
005521ec  01 10 8f e0                                      add r1, pc, r1
005521f0  00 c0 95 e5                                      ldr ip, [r5]
005521f4  00 30 a0 e3                                      mov r3, #0
005521f8  0f e0 a0 e1                                      mov lr, pc
005521fc  18 f1 9c e5                                      ldr pc, [ip, #0x118]
00552200  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00552204  98 c9 38 00 88 c9 38 00 60 c9 38 00 3c c9 38 00  .byte 0x98, 0xc9, 0x38, 0x00, 0x88, 0xc9, 0x38, 0x00, 0x60, 0xc9, 0x38, 0x00, 0x3c, 0xc9, 0x38, 0x00

; FUNCTION 0x00553850, declared_size=324, range_size=324, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZN6glitch3gui7CGUITabC1EiPNS0_15IGUIEnvironmentEPNS0_11IGUIElementERKNS_4core4rectIiEEi
; demangled: glitch::gui::CGUITab::CGUITab(int, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, glitch::core::rect<int> const&, int)
; decoder-mode: arm
00553850  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00553854  28 51 9f e5                                      ldr r5, [pc, #0x128]
00553858  28 e1 9f e5                                      ldr lr, [pc, #0x128]
0055385c  28 c1 9f e5                                      ldr ip, [pc, #0x128]
00553860  05 50 8f e0                                      add r5, pc, r5
00553864  0e e0 95 e7                                      ldr lr, [r5, lr]
00553868  0c c0 95 e7                                      ldr ip, [r5, ip]
0055386c  01 70 a0 e3                                      mov r7, #1
00553870  24 60 9e e5                                      ldr r6, [lr, #0x24]
00553874  08 c0 8c e2                                      add ip, ip, #8
00553878  70 71 80 e5                                      str r7, [r0, #0x170]
0055387c  6c c1 80 e5                                      str ip, [r0, #0x16c]
00553880  68 61 80 e5                                      str r6, [r0, #0x168]
00553884  1c d0 4d e2                                      sub sp, sp, #0x1c
00553888  0c 60 16 e5                                      ldr r6, [r6, #-0xc]
0055388c  28 80 9e e5                                      ldr r8, [lr, #0x28]
00553890  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00553894  5a 7f 80 e2                                      add r7, r0, #0x168
00553898  06 80 87 e7                                      str r8, [r7, r6]
0055389c  04 60 9c e5                                      ldr r6, [ip, #4]
005538a0  0c 80 9c e5                                      ldr r8, [ip, #0xc]
005538a4  00 70 9c e5                                      ldr r7, [ip]
005538a8  08 c0 9c e5                                      ldr ip, [ip, #8]
005538ac  01 a0 a0 e1                                      mov sl, r1
005538b0  04 10 8e e2                                      add r1, lr, #4
005538b4  10 c0 8d e5                                      str ip, [sp, #0x10]
005538b8  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005538bc  00 40 a0 e1                                      mov r4, r0
005538c0  0c 60 8d e5                                      str r6, [sp, #0xc]
005538c4  00 c0 8d e5                                      str ip, [sp]
005538c8  08 c0 8d e2                                      add ip, sp, #8
005538cc  02 60 a0 e1                                      mov r6, r2
005538d0  04 c0 8d e5                                      str ip, [sp, #4]
005538d4  08 70 8d e5                                      str r7, [sp, #8]
005538d8  14 80 8d e5                                      str r8, [sp, #0x14]
005538dc  ba ff ff eb                                      bl #0x5537cc
005538e0  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
005538e4  00 30 a0 e3                                      mov r3, #0
005538e8  58 a1 84 e5                                      str sl, [r4, #0x158]
005538ec  02 20 95 e7                                      ldr r2, [r5, r2]
005538f0  60 31 c4 e5                                      strb r3, [r4, #0x160]
005538f4  5c 31 c4 e5                                      strb r3, [r4, #0x15c]
005538f8  e4 10 82 e2                                      add r1, r2, #0xe4
005538fc  10 00 82 e2                                      add r0, r2, #0x10
00553900  c4 20 82 e2                                      add r2, r2, #0xc4
00553904  00 00 84 e5                                      str r0, [r4]
00553908  68 21 84 e5                                      str r2, [r4, #0x168]
0055390c  6c 11 84 e5                                      str r1, [r4, #0x16c]
00553910  5d 31 c4 e5                                      strb r3, [r4, #0x15d]
00553914  5e 31 c4 e5                                      strb r3, [r4, #0x15e]
00553918  5f 31 c4 e5                                      strb r3, [r4, #0x15f]
0055391c  00 30 96 e5                                      ldr r3, [r6]
00553920  06 00 a0 e1                                      mov r0, r6
00553924  0f e0 a0 e1                                      mov lr, pc
00553928  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055392c  00 30 50 e2                                      subs r3, r0, #0
00553930  0d 00 00 0a                                      beq #0x55396c
00553934  00 30 93 e5                                      ldr r3, [r3]
00553938  08 10 a0 e3                                      mov r1, #8
0055393c  0f e0 a0 e1                                      mov lr, pc
00553940  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00553944  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00553948  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0055394c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00553950  62 11 c4 e5                                      strb r1, [r4, #0x162]
00553954  63 21 c4 e5                                      strb r2, [r4, #0x163]
00553958  64 31 c4 e5                                      strb r3, [r4, #0x164]
0055395c  61 01 c4 e5                                      strb r0, [r4, #0x161]
00553960  04 00 a0 e1                                      mov r0, r4
00553964  1c d0 8d e2                                      add sp, sp, #0x1c
00553968  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0055396c  00 20 e0 e3                                      mvn r2, #0
00553970  64 21 c4 e5                                      strb r2, [r4, #0x164]
00553974  63 31 c4 e5                                      strb r3, [r4, #0x163]
00553978  61 31 c4 e5                                      strb r3, [r4, #0x161]
0055397c  62 31 c4 e5                                      strb r3, [r4, #0x162]
00553980  f6 ff ff ea                                      b #0x553960
; mapping-symbol data/literal pool
00553984  30 12 44 00 74 1f 00 00 44 2b 00 00 c8 30 00 00  .byte 0x30, 0x12, 0x44, 0x00, 0x74, 0x1f, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xc8, 0x30, 0x00, 0x00

; FUNCTION 0x00553994, declared_size=256, range_size=256, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZN6glitch3gui7CGUITabC2EiPNS0_15IGUIEnvironmentEPNS0_11IGUIElementERKNS_4core4rectIiEEi
; demangled: glitch::gui::CGUITab::CGUITab(int, glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, glitch::core::rect<int> const&, int)
; decoder-mode: arm
00553994  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00553998  18 d0 4d e2                                      sub sp, sp, #0x18
0055399c  34 50 9d e5                                      ldr r5, [sp, #0x34]
005539a0  01 40 a0 e1                                      mov r4, r1
005539a4  02 60 a0 e1                                      mov r6, r2
005539a8  0c c0 95 e5                                      ldr ip, [r5, #0xc]
005539ac  80 40 95 e8                                      ldm r5, {r7, lr}
005539b0  08 80 95 e5                                      ldr r8, [r5, #8]
005539b4  14 c0 8d e5                                      str ip, [sp, #0x14]
005539b8  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005539bc  03 50 a0 e1                                      mov r5, r3
005539c0  03 20 a0 e1                                      mov r2, r3
005539c4  04 10 81 e2                                      add r1, r1, #4
005539c8  30 30 9d e5                                      ldr r3, [sp, #0x30]
005539cc  00 c0 8d e5                                      str ip, [sp]
005539d0  08 c0 8d e2                                      add ip, sp, #8
005539d4  08 70 8d e5                                      str r7, [sp, #8]
005539d8  0c e0 8d e5                                      str lr, [sp, #0xc]
005539dc  00 70 a0 e1                                      mov r7, r0
005539e0  04 c0 8d e5                                      str ip, [sp, #4]
005539e4  10 80 8d e5                                      str r8, [sp, #0x10]
005539e8  77 ff ff eb                                      bl #0x5537cc
005539ec  00 20 94 e5                                      ldr r2, [r4]
005539f0  00 30 a0 e3                                      mov r3, #0
005539f4  05 00 a0 e1                                      mov r0, r5
005539f8  00 20 87 e5                                      str r2, [r7]
005539fc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00553a00  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00553a04  02 10 87 e7                                      str r1, [r7, r2]
00553a08  00 20 97 e5                                      ldr r2, [r7]
00553a0c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00553a10  10 20 12 e5                                      ldr r2, [r2, #-0x10]
00553a14  02 10 87 e7                                      str r1, [r7, r2]
00553a18  58 61 87 e5                                      str r6, [r7, #0x158]
00553a1c  60 31 c7 e5                                      strb r3, [r7, #0x160]
00553a20  5c 31 c7 e5                                      strb r3, [r7, #0x15c]
00553a24  5d 31 c7 e5                                      strb r3, [r7, #0x15d]
00553a28  5e 31 c7 e5                                      strb r3, [r7, #0x15e]
00553a2c  5f 31 c7 e5                                      strb r3, [r7, #0x15f]
00553a30  00 30 95 e5                                      ldr r3, [r5]
00553a34  0f e0 a0 e1                                      mov lr, pc
00553a38  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00553a3c  00 30 50 e2                                      subs r3, r0, #0
00553a40  0d 00 00 0a                                      beq #0x553a7c
00553a44  00 30 93 e5                                      ldr r3, [r3]
00553a48  08 10 a0 e3                                      mov r1, #8
00553a4c  0f e0 a0 e1                                      mov lr, pc
00553a50  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00553a54  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00553a58  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00553a5c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00553a60  62 11 c7 e5                                      strb r1, [r7, #0x162]
00553a64  63 21 c7 e5                                      strb r2, [r7, #0x163]
00553a68  64 31 c7 e5                                      strb r3, [r7, #0x164]
00553a6c  61 01 c7 e5                                      strb r0, [r7, #0x161]
00553a70  07 00 a0 e1                                      mov r0, r7
00553a74  18 d0 8d e2                                      add sp, sp, #0x18
00553a78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00553a7c  00 20 e0 e3                                      mvn r2, #0
00553a80  64 21 c7 e5                                      strb r2, [r7, #0x164]
00553a84  63 31 c7 e5                                      strb r3, [r7, #0x163]
00553a88  61 31 c7 e5                                      strb r3, [r7, #0x161]
00553a8c  62 31 c7 e5                                      strb r3, [r7, #0x162]
00553a90  f6 ff ff ea                                      b #0x553a70

; FUNCTION 0x00553db0, declared_size=384, range_size=384, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZN6glitch3gui7CGUITab21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUITab::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00553db0  70 40 2d e9                                      push {r4, r5, r6, lr}
00553db4  10 d0 4d e2                                      sub sp, sp, #0x10
00553db8  00 40 a0 e1                                      mov r4, r0
00553dbc  01 50 a0 e1                                      mov r5, r1
00553dc0  9c 96 ff eb                                      bl #0x539838
00553dc4  54 11 9f e5                                      ldr r1, [pc, #0x154]
00553dc8  00 20 94 e5                                      ldr r2, [r4]
00553dcc  00 30 95 e5                                      ldr r3, [r5]
00553dd0  01 10 8f e0                                      add r1, pc, r1
00553dd4  05 00 a0 e1                                      mov r0, r5
00553dd8  98 60 92 e5                                      ldr r6, [r2, #0x98]
00553ddc  0f e0 a0 e1                                      mov lr, pc
00553de0  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00553de4  00 10 a0 e1                                      mov r1, r0
00553de8  04 00 a0 e1                                      mov r0, r4
00553dec  36 ff 2f e1                                      blx r6
00553df0  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
00553df4  00 20 94 e5                                      ldr r2, [r4]
00553df8  00 30 95 e5                                      ldr r3, [r5]
00553dfc  01 10 8f e0                                      add r1, pc, r1
00553e00  05 00 a0 e1                                      mov r0, r5
00553e04  80 60 92 e5                                      ldr r6, [r2, #0x80]
00553e08  0f e0 a0 e1                                      mov lr, pc
00553e0c  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00553e10  00 10 a0 e1                                      mov r1, r0
00553e14  04 00 a0 e1                                      mov r0, r4
00553e18  36 ff 2f e1                                      blx r6
00553e1c  04 11 9f e5                                      ldr r1, [pc, #0x104]
00553e20  00 20 94 e5                                      ldr r2, [r4]
00553e24  00 30 95 e5                                      ldr r3, [r5]
00553e28  01 10 8f e0                                      add r1, pc, r1
00553e2c  05 00 a0 e1                                      mov r0, r5
00553e30  84 60 92 e5                                      ldr r6, [r2, #0x84]
00553e34  0f e0 a0 e1                                      mov lr, pc
00553e38  24 f1 93 e5                                      ldr pc, [r3, #0x124]
00553e3c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00553e40  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00553e44  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00553e48  01 10 cd e5                                      strb r1, [sp, #1]
00553e4c  02 20 cd e5                                      strb r2, [sp, #2]
00553e50  00 00 cd e5                                      strb r0, [sp]
00553e54  03 30 cd e5                                      strb r3, [sp, #3]
00553e58  00 30 9d e5                                      ldr r3, [sp]
00553e5c  04 00 a0 e1                                      mov r0, r4
00553e60  03 10 a0 e1                                      mov r1, r3
00553e64  0c 30 8d e5                                      str r3, [sp, #0xc]
00553e68  36 ff 2f e1                                      blx r6
00553e6c  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
00553e70  00 20 94 e5                                      ldr r2, [r4]
00553e74  00 30 95 e5                                      ldr r3, [r5]
00553e78  05 00 a0 e1                                      mov r0, r5
00553e7c  01 10 8f e0                                      add r1, pc, r1
00553e80  90 50 92 e5                                      ldr r5, [r2, #0x90]
00553e84  0f e0 a0 e1                                      mov lr, pc
00553e88  24 f1 93 e5                                      ldr pc, [r3, #0x124]
00553e8c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00553e90  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00553e94  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00553e98  03 30 cd e5                                      strb r3, [sp, #3]
00553e9c  00 00 cd e5                                      strb r0, [sp]
00553ea0  01 10 cd e5                                      strb r1, [sp, #1]
00553ea4  02 20 cd e5                                      strb r2, [sp, #2]
00553ea8  00 10 9d e5                                      ldr r1, [sp]
00553eac  04 00 a0 e1                                      mov r0, r4
00553eb0  08 10 8d e5                                      str r1, [sp, #8]
00553eb4  35 ff 2f e1                                      blx r5
00553eb8  24 30 94 e5                                      ldr r3, [r4, #0x24]
00553ebc  00 00 53 e3                                      cmp r3, #0
00553ec0  02 00 00 0a                                      beq #0x553ed0
00553ec4  54 21 93 e5                                      ldr r2, [r3, #0x154]
00553ec8  12 00 52 e3                                      cmp r2, #0x12
00553ecc  01 00 00 0a                                      beq #0x553ed8
00553ed0  10 d0 8d e2                                      add sp, sp, #0x10
00553ed4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00553ed8  03 00 a0 e1                                      mov r0, r3
00553edc  04 10 a0 e1                                      mov r1, r4
00553ee0  00 30 93 e5                                      ldr r3, [r3]
00553ee4  0f e0 a0 e1                                      mov lr, pc
00553ee8  ac f0 93 e5                                      ldr pc, [r3, #0xac]
00553eec  00 30 94 e5                                      ldr r3, [r4]
00553ef0  04 00 a0 e1                                      mov r0, r4
00553ef4  0f e0 a0 e1                                      mov lr, pc
00553ef8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00553efc  00 00 50 e3                                      cmp r0, #0
00553f00  f2 ff ff 0a                                      beq #0x553ed0
00553f04  24 30 94 e5                                      ldr r3, [r4, #0x24]
00553f08  04 10 a0 e1                                      mov r1, r4
00553f0c  03 00 a0 e1                                      mov r0, r3
00553f10  00 30 93 e5                                      ldr r3, [r3]
00553f14  0f e0 a0 e1                                      mov lr, pc
00553f18  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
00553f1c  eb ff ff ea                                      b #0x553ed0
; mapping-symbol data/literal pool
00553f20  28 ad 38 00 0c ad 38 00 f0 ac 38 00 ac ac 38 00  .byte 0x28, 0xad, 0x38, 0x00, 0x0c, 0xad, 0x38, 0x00, 0xf0, 0xac, 0x38, 0x00, 0xac, 0xac, 0x38, 0x00

; FUNCTION 0x00553fa4, declared_size=112, range_size=112, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZN6glitch3gui7CGUITabD1Ev
; demangled: glitch::gui::CGUITab::~CGUITab()
; decoder-mode: arm
00553fa4  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00553fa8  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00553fac  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00553fb0  03 30 8f e0                                      add r3, pc, r3
00553fb4  01 10 93 e7                                      ldr r1, [r3, r1]
00553fb8  10 40 2d e9                                      push {r4, lr}
00553fbc  02 20 93 e7                                      ldr r2, [r3, r2]
00553fc0  04 c0 91 e5                                      ldr ip, [r1, #4]
00553fc4  00 40 a0 e1                                      mov r4, r0
00553fc8  e4 e0 82 e2                                      add lr, r2, #0xe4
00553fcc  c4 20 82 e2                                      add r2, r2, #0xc4
00553fd0  68 21 80 e5                                      str r2, [r0, #0x168]
00553fd4  6c e1 80 e5                                      str lr, [r0, #0x16c]
00553fd8  00 c0 80 e5                                      str ip, [r0]
00553fdc  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
00553fe0  14 e0 91 e5                                      ldr lr, [r1, #0x14]
00553fe4  18 20 91 e5                                      ldr r2, [r1, #0x18]
00553fe8  08 10 81 e2                                      add r1, r1, #8
00553fec  0c e0 80 e7                                      str lr, [r0, ip]
00553ff0  00 c0 90 e5                                      ldr ip, [r0]
00553ff4  10 30 1c e5                                      ldr r3, [ip, #-0x10]
00553ff8  03 20 80 e7                                      str r2, [r0, r3]
00553ffc  07 94 ff eb                                      bl #0x539020
00554000  04 00 a0 e1                                      mov r0, r4
00554004  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00554008  e0 0a 44 00 74 1f 00 00 c8 30 00 00              .byte 0xe0, 0x0a, 0x44, 0x00, 0x74, 0x1f, 0x00, 0x00, 0xc8, 0x30, 0x00, 0x00

; FUNCTION 0x00554014, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZTv0_n24_N6glitch3gui7CGUITabD1Ev
; demangled: virtual thunk to glitch::gui::CGUITab::~CGUITab()
; decoder-mode: arm
00554014  00 30 90 e5                                      ldr r3, [r0]
00554018  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0055401c  03 00 80 e0                                      add r0, r0, r3
00554020  df ff ff ea                                      b #0x553fa4

; FUNCTION 0x00554024, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZTv0_n12_N6glitch3gui7CGUITabD1Ev
; demangled: virtual thunk to glitch::gui::CGUITab::~CGUITab()
; decoder-mode: arm
00554024  00 30 90 e5                                      ldr r3, [r0]
00554028  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055402c  03 00 80 e0                                      add r0, r0, r3
00554030  db ff ff ea                                      b #0x553fa4

; FUNCTION 0x00554034, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZN6glitch3gui7CGUITabD0Ev
; demangled: glitch::gui::CGUITab::~CGUITab()
; decoder-mode: arm
00554034  10 40 2d e9                                      push {r4, lr}
00554038  00 40 a0 e1                                      mov r4, r0
0055403c  d8 ff ff eb                                      bl #0x553fa4
00554040  04 00 a0 e1                                      mov r0, r4
00554044  99 e8 f6 eb                                      bl #0x30e2b0
00554048  04 00 a0 e1                                      mov r0, r4
0055404c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00554050, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZTv0_n24_N6glitch3gui7CGUITabD0Ev
; demangled: virtual thunk to glitch::gui::CGUITab::~CGUITab()
; decoder-mode: arm
00554050  00 30 90 e5                                      ldr r3, [r0]
00554054  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00554058  03 00 80 e0                                      add r0, r0, r3
0055405c  f4 ff ff ea                                      b #0x554034

; FUNCTION 0x00554060, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZTv0_n12_N6glitch3gui7CGUITabD0Ev
; demangled: virtual thunk to glitch::gui::CGUITab::~CGUITab()
; decoder-mode: arm
00554060  00 30 90 e5                                      ldr r3, [r0]
00554064  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00554068  03 00 80 e0                                      add r0, r0, r3
0055406c  f0 ff ff ea                                      b #0x554034

; FUNCTION 0x00554690, declared_size=168, range_size=168, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZN6glitch3gui7CGUITab4drawEv
; demangled: glitch::gui::CGUITab::draw()
; decoder-mode: arm
00554690  30 40 2d e9                                      push {r4, r5, lr}
00554694  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00554698  0c d0 4d e2                                      sub sp, sp, #0xc
0055469c  00 40 a0 e1                                      mov r4, r0
005546a0  00 00 53 e3                                      cmp r3, #0
005546a4  01 00 00 1a                                      bne #0x5546b0
005546a8  0c d0 8d e2                                      add sp, sp, #0xc
005546ac  30 80 bd e8                                      pop {r4, r5, pc}
005546b0  50 31 90 e5                                      ldr r3, [r0, #0x150]
005546b4  03 00 a0 e1                                      mov r0, r3
005546b8  00 30 93 e5                                      ldr r3, [r3]
005546bc  0f e0 a0 e1                                      mov lr, pc
005546c0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005546c4  00 30 50 e2                                      subs r3, r0, #0
005546c8  02 00 00 0a                                      beq #0x5546d8
005546cc  5c 21 d4 e5                                      ldrb r2, [r4, #0x15c]
005546d0  00 00 52 e3                                      cmp r2, #0
005546d4  0d 00 00 1a                                      bne #0x554710
005546d8  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
005546dc  00 00 53 e3                                      cmp r3, #0
005546e0  04 50 b4 15                                      ldrne r5, [r4, #4]!
005546e4  06 00 00 1a                                      bne #0x554704
005546e8  ee ff ff ea                                      b #0x5546a8
005546ec  08 30 95 e5                                      ldr r3, [r5, #8]
005546f0  03 00 a0 e1                                      mov r0, r3
005546f4  00 30 93 e5                                      ldr r3, [r3]
005546f8  0f e0 a0 e1                                      mov lr, pc
005546fc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00554700  00 50 95 e5                                      ldr r5, [r5]
00554704  04 00 55 e1                                      cmp r5, r4
00554708  f7 ff ff 1a                                      bne #0x5546ec
0055470c  e5 ff ff ea                                      b #0x5546a8
00554710  48 10 84 e2                                      add r1, r4, #0x48
00554714  57 2f 84 e2                                      add r2, r4, #0x15c
00554718  00 c0 93 e5                                      ldr ip, [r3]
0055471c  01 20 82 e2                                      add r2, r2, #1
00554720  00 10 8d e5                                      str r1, [sp]
00554724  38 30 84 e2                                      add r3, r4, #0x38
00554728  04 10 a0 e1                                      mov r1, r4
0055472c  0f e0 a0 e1                                      mov lr, pc
00554730  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00554734  e7 ff ff ea                                      b #0x5546d8

; FUNCTION 0x00554f20, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZTv0_n20_N6glitch3gui7CGUITab21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUITab::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00554f20  00 30 90 e5                                      ldr r3, [r0]
00554f24  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00554f28  03 00 80 e0                                      add r0, r0, r3
00554f2c  9f fb ff ea                                      b #0x553db0

; FUNCTION 0x00554f50, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITab
; alias: _ZTv0_n16_NK6glitch3gui7CGUITab19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUITab::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00554f50  00 30 90 e5                                      ldr r3, [r0]
00554f54  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00554f58  03 00 80 e0                                      add r0, r0, r3
00554f5c  77 f4 ff ea                                      b #0x552140
