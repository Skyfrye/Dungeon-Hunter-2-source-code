; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00548260, declared_size=64, range_size=64, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZN6glitch3gui15CGUIModalScreen22updateAbsolutePositionEv
; demangled: glitch::gui::CGUIModalScreen::updateAbsolutePosition()
; decoder-mode: arm
00548260  24 30 90 e5                                      ldr r3, [r0, #0x24]
00548264  04 40 2d e5                                      str r4, [sp, #-4]!
00548268  00 00 53 e3                                      cmp r3, #0
0054826c  09 00 00 0a                                      beq #0x548298
00548270  44 40 93 e5                                      ldr r4, [r3, #0x44]
00548274  38 10 83 e2                                      add r1, r3, #0x38
00548278  06 10 91 e8                                      ldm r1, {r1, r2, ip}
0054827c  00 30 a0 e3                                      mov r3, #0
00548280  04 20 62 e0                                      rsb r2, r2, r4
00548284  0c 10 61 e0                                      rsb r1, r1, ip
00548288  2c 30 80 e5                                      str r3, [r0, #0x2c]
0054828c  30 10 80 e5                                      str r1, [r0, #0x30]
00548290  34 20 80 e5                                      str r2, [r0, #0x34]
00548294  28 30 80 e5                                      str r3, [r0, #0x28]
00548298  10 00 bd e8                                      ldm sp!, {r4}
0054829c  9f b1 ff ea                                      b #0x534920

; FUNCTION 0x005482a0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZNK6glitch3gui15CGUIModalScreen19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIModalScreen::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005482a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005482a4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZN6glitch3gui15CGUIModalScreen21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIModalScreen::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
005482a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005482c8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZN6glitch3gui15CGUIModalScreen11removeChildEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIModalScreen::removeChild(glitch::gui::IGUIElement*)
; decoder-mode: arm
005482c8  10 40 2d e9                                      push {r4, lr}
005482cc  00 40 a0 e1                                      mov r4, r0
005482d0  8e b6 ff eb                                      bl #0x535d10
005482d4  04 20 94 e5                                      ldr r2, [r4, #4]
005482d8  04 30 84 e2                                      add r3, r4, #4
005482dc  03 00 52 e1                                      cmp r2, r3
005482e0  00 00 00 0a                                      beq #0x5482e8
005482e4  10 80 bd e8                                      pop {r4, pc}
005482e8  04 00 a0 e1                                      mov r0, r4
005482ec  00 30 94 e5                                      ldr r3, [r4]
005482f0  0f e0 a0 e1                                      mov lr, pc
005482f4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005482f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005482fc, declared_size=44, range_size=44, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZN6glitch3gui15CGUIModalScreen8addChildEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIModalScreen::addChild(glitch::gui::IGUIElement*)
; decoder-mode: arm
005482fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00548300  00 50 a0 e1                                      mov r5, r0
00548304  01 40 a0 e1                                      mov r4, r1
00548308  b7 b6 ff eb                                      bl #0x535dec
0054830c  50 31 95 e5                                      ldr r3, [r5, #0x150]
00548310  04 10 a0 e1                                      mov r1, r4
00548314  03 00 a0 e1                                      mov r0, r3
00548318  00 30 93 e5                                      ldr r3, [r3]
0054831c  0f e0 a0 e1                                      mov lr, pc
00548320  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00548324  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005485c8, declared_size=160, range_size=160, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZN6glitch3gui15CGUIModalScreenC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIModalScreen::CGUIModalScreen(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
005485c8  70 40 2d e9                                      push {r4, r5, r6, lr}
005485cc  40 c0 93 e5                                      ldr ip, [r3, #0x40]
005485d0  18 d0 4d e2                                      sub sp, sp, #0x18
005485d4  44 e0 93 e5                                      ldr lr, [r3, #0x44]
005485d8  38 60 93 e5                                      ldr r6, [r3, #0x38]
005485dc  3c 40 93 e5                                      ldr r4, [r3, #0x3c]
005485e0  10 c0 8d e5                                      str ip, [sp, #0x10]
005485e4  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005485e8  01 50 a0 e1                                      mov r5, r1
005485ec  04 10 81 e2                                      add r1, r1, #4
005485f0  00 c0 8d e5                                      str ip, [sp]
005485f4  08 c0 8d e2                                      add ip, sp, #8
005485f8  08 60 8d e5                                      str r6, [sp, #8]
005485fc  0c 40 8d e5                                      str r4, [sp, #0xc]
00548600  14 e0 8d e5                                      str lr, [sp, #0x14]
00548604  00 40 a0 e1                                      mov r4, r0
00548608  04 c0 8d e5                                      str ip, [sp, #4]
0054860c  46 ff ff eb                                      bl #0x54832c
00548610  00 30 95 e5                                      ldr r3, [r5]
00548614  00 c0 a0 e3                                      mov ip, #0
00548618  01 60 a0 e3                                      mov r6, #1
0054861c  00 30 84 e5                                      str r3, [r4]
00548620  10 20 95 e5                                      ldr r2, [r5, #0x10]
00548624  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00548628  04 00 a0 e1                                      mov r0, r4
0054862c  0c 10 a0 e1                                      mov r1, ip
00548630  03 20 84 e7                                      str r2, [r4, r3]
00548634  00 30 94 e5                                      ldr r3, [r4]
00548638  14 50 95 e5                                      ldr r5, [r5, #0x14]
0054863c  06 20 a0 e1                                      mov r2, r6
00548640  10 e0 13 e5                                      ldr lr, [r3, #-0x10]
00548644  00 60 8d e5                                      str r6, [sp]
00548648  0c 30 a0 e1                                      mov r3, ip
0054864c  0e 50 84 e7                                      str r5, [r4, lr]
00548650  58 c1 84 e5                                      str ip, [r4, #0x158]
00548654  79 b0 ff eb                                      bl #0x534840
00548658  3c 61 c4 e5                                      strb r6, [r4, #0x13c]
0054865c  04 00 a0 e1                                      mov r0, r4
00548660  18 d0 8d e2                                      add sp, sp, #0x18
00548664  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00548668, declared_size=232, range_size=232, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZN6glitch3gui15CGUIModalScreenC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIModalScreen::CGUIModalScreen(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
00548668  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0054866c  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
00548670  cc e0 9f e5                                      ldr lr, [pc, #0xcc]
00548674  cc c0 9f e5                                      ldr ip, [pc, #0xcc]
00548678  05 50 8f e0                                      add r5, pc, r5
0054867c  0e e0 95 e7                                      ldr lr, [r5, lr]
00548680  0c c0 95 e7                                      ldr ip, [r5, ip]
00548684  01 60 a0 e3                                      mov r6, #1
00548688  18 70 9e e5                                      ldr r7, [lr, #0x18]
0054868c  08 c0 8c e2                                      add ip, ip, #8
00548690  60 c1 80 e5                                      str ip, [r0, #0x160]
00548694  64 61 80 e5                                      str r6, [r0, #0x164]
00548698  5c 71 80 e5                                      str r7, [r0, #0x15c]
0054869c  0c 80 17 e5                                      ldr r8, [r7, #-0xc]
005486a0  1c a0 9e e5                                      ldr sl, [lr, #0x1c]
005486a4  57 7f 80 e2                                      add r7, r0, #0x15c
005486a8  18 d0 4d e2                                      sub sp, sp, #0x18
005486ac  08 a0 87 e7                                      str sl, [r7, r8]
005486b0  38 70 82 e2                                      add r7, r2, #0x38
005486b4  80 05 97 e8                                      ldm r7, {r7, r8, sl}
005486b8  44 90 92 e5                                      ldr sb, [r2, #0x44]
005486bc  02 c0 a0 e1                                      mov ip, r2
005486c0  00 30 8d e5                                      str r3, [sp]
005486c4  01 20 a0 e1                                      mov r2, r1
005486c8  0c 30 a0 e1                                      mov r3, ip
005486cc  04 10 8e e2                                      add r1, lr, #4
005486d0  08 c0 8d e2                                      add ip, sp, #8
005486d4  00 40 a0 e1                                      mov r4, r0
005486d8  04 c0 8d e5                                      str ip, [sp, #4]
005486dc  08 70 8d e5                                      str r7, [sp, #8]
005486e0  0c 80 8d e5                                      str r8, [sp, #0xc]
005486e4  10 a0 8d e5                                      str sl, [sp, #0x10]
005486e8  14 90 8d e5                                      str sb, [sp, #0x14]
005486ec  0e ff ff eb                                      bl #0x54832c
005486f0  54 30 9f e5                                      ldr r3, [pc, #0x54]
005486f4  00 20 a0 e3                                      mov r2, #0
005486f8  02 10 a0 e1                                      mov r1, r2
005486fc  03 30 95 e7                                      ldr r3, [r5, r3]
00548700  58 21 84 e5                                      str r2, [r4, #0x158]
00548704  04 00 a0 e1                                      mov r0, r4
00548708  10 c0 83 e2                                      add ip, r3, #0x10
0054870c  c4 20 83 e2                                      add r2, r3, #0xc4
00548710  a4 30 83 e2                                      add r3, r3, #0xa4
00548714  5c 31 84 e5                                      str r3, [r4, #0x15c]
00548718  60 21 84 e5                                      str r2, [r4, #0x160]
0054871c  00 c0 84 e5                                      str ip, [r4]
00548720  06 20 a0 e1                                      mov r2, r6
00548724  01 30 a0 e1                                      mov r3, r1
00548728  00 60 8d e5                                      str r6, [sp]
0054872c  43 b0 ff eb                                      bl #0x534840
00548730  3c 61 c4 e5                                      strb r6, [r4, #0x13c]
00548734  04 00 a0 e1                                      mov r0, r4
00548738  18 d0 8d e2                                      add sp, sp, #0x18
0054873c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00548740  18 c4 44 00 5c 35 00 00 44 2b 00 00 14 30 00 00  .byte 0x18, 0xc4, 0x44, 0x00, 0x5c, 0x35, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x14, 0x30, 0x00, 0x00

; FUNCTION 0x00548858, declared_size=68, range_size=68, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZN6glitch3gui15CGUIModalScreenD1Ev
; demangled: glitch::gui::CGUIModalScreen::~CGUIModalScreen()
; decoder-mode: arm
00548858  34 20 9f e5                                      ldr r2, [pc, #0x34]
0054885c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00548860  10 40 2d e9                                      push {r4, lr}
00548864  02 20 8f e0                                      add r2, pc, r2
00548868  03 30 92 e7                                      ldr r3, [r2, r3]
0054886c  00 40 a0 e1                                      mov r4, r0
00548870  c4 20 83 e2                                      add r2, r3, #0xc4
00548874  10 10 83 e2                                      add r1, r3, #0x10
00548878  a4 30 83 e2                                      add r3, r3, #0xa4
0054887c  00 10 80 e5                                      str r1, [r0]
00548880  5c 31 80 e5                                      str r3, [r0, #0x15c]
00548884  60 21 80 e5                                      str r2, [r0, #0x160]
00548888  b0 ff ff eb                                      bl #0x548750
0054888c  04 00 a0 e1                                      mov r0, r4
00548890  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00548894  2c c2 44 00 14 30 00 00                          .byte 0x2c, 0xc2, 0x44, 0x00, 0x14, 0x30, 0x00, 0x00

; FUNCTION 0x0054889c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZTv0_n24_N6glitch3gui15CGUIModalScreenD1Ev
; demangled: virtual thunk to glitch::gui::CGUIModalScreen::~CGUIModalScreen()
; decoder-mode: arm
0054889c  00 30 90 e5                                      ldr r3, [r0]
005488a0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005488a4  03 00 80 e0                                      add r0, r0, r3
005488a8  ea ff ff ea                                      b #0x548858

; FUNCTION 0x005488ac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZTv0_n12_N6glitch3gui15CGUIModalScreenD1Ev
; demangled: virtual thunk to glitch::gui::CGUIModalScreen::~CGUIModalScreen()
; decoder-mode: arm
005488ac  00 30 90 e5                                      ldr r3, [r0]
005488b0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005488b4  03 00 80 e0                                      add r0, r0, r3
005488b8  e6 ff ff ea                                      b #0x548858

; FUNCTION 0x005488bc, declared_size=404, range_size=404, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZN6glitch3gui15CGUIModalScreen4drawEv
; demangled: glitch::gui::CGUIModalScreen::draw()
; decoder-mode: arm
005488bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005488c0  50 31 90 e5                                      ldr r3, [r0, #0x150]
005488c4  34 d0 4d e2                                      sub sp, sp, #0x34
005488c8  00 50 a0 e1                                      mov r5, r0
005488cc  03 00 a0 e1                                      mov r0, r3
005488d0  00 30 93 e5                                      ldr r3, [r3]
005488d4  0f e0 a0 e1                                      mov lr, pc
005488d8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005488dc  00 60 50 e2                                      subs r6, r0, #0
005488e0  4f 00 00 0a                                      beq #0x548a24
005488e4  7e 09 03 eb                                      bl #0x60aee4
005488e8  58 31 95 e5                                      ldr r3, [r5, #0x158]
005488ec  00 30 63 e0                                      rsb r3, r3, r0
005488f0  4b 0f 53 e3                                      cmp r3, #0x12c
005488f4  46 00 00 2a                                      bhs #0x548a14
005488f8  eb 30 0a e3                                      movw r3, #0xa0eb
005488fc  a0 00 a0 e1                                      lsr r0, r0, #1
00548900  0e 3a 4e e3                                      movt r3, #0xea0e
00548904  93 20 83 e0                                      umull r2, r3, r3, r0
00548908  20 00 13 e3                                      tst r3, #0x20
0054890c  40 00 00 0a                                      beq #0x548a14
00548910  50 31 95 e5                                      ldr r3, [r5, #0x150]
00548914  00 20 a0 e3                                      mov r2, #0
00548918  28 20 8d e5                                      str r2, [sp, #0x28]
0054891c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00548920  20 20 8d e5                                      str r2, [sp, #0x20]
00548924  24 20 8d e5                                      str r2, [sp, #0x24]
00548928  03 00 a0 e1                                      mov r0, r3
0054892c  00 30 93 e5                                      ldr r3, [r3]
00548930  04 40 95 e5                                      ldr r4, [r5, #4]
00548934  0f e0 a0 e1                                      mov lr, pc
00548938  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054893c  03 10 a0 e3                                      mov r1, #3
00548940  00 30 90 e5                                      ldr r3, [r0]
00548944  0f e0 a0 e1                                      mov lr, pc
00548948  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054894c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00548950  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00548954  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00548958  12 20 cd e5                                      strb r2, [sp, #0x12]
0054895c  11 10 cd e5                                      strb r1, [sp, #0x11]
00548960  13 30 cd e5                                      strb r3, [sp, #0x13]
00548964  10 00 cd e5                                      strb r0, [sp, #0x10]
00548968  10 30 9d e5                                      ldr r3, [sp, #0x10]
0054896c  30 80 8d e2                                      add r8, sp, #0x30
00548970  04 90 85 e2                                      add sb, r5, #4
00548974  04 30 28 e5                                      str r3, [r8, #-4]!
00548978  1c 20 8d e2                                      add r2, sp, #0x1c
0054897c  48 30 85 e2                                      add r3, r5, #0x48
00548980  04 00 59 e1                                      cmp sb, r4
00548984  0c 30 8d e5                                      str r3, [sp, #0xc]
00548988  08 20 8d e5                                      str r2, [sp, #8]
0054898c  08 a0 a0 e1                                      mov sl, r8
00548990  1f 00 00 0a                                      beq #0x548a14
00548994  08 30 94 e5                                      ldr r3, [r4, #8]
00548998  03 00 a0 e1                                      mov r0, r3
0054899c  00 30 93 e5                                      ldr r3, [r3]
005489a0  0f e0 a0 e1                                      mov lr, pc
005489a4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
005489a8  00 00 50 e3                                      cmp r0, #0
005489ac  05 10 a0 e1                                      mov r1, r5
005489b0  06 00 a0 e1                                      mov r0, r6
005489b4  0a 20 a0 e1                                      mov r2, sl
005489b8  08 30 9d e5                                      ldr r3, [sp, #8]
005489bc  11 00 00 0a                                      beq #0x548a08
005489c0  08 c0 94 e5                                      ldr ip, [r4, #8]
005489c4  38 e0 9c e5                                      ldr lr, [ip, #0x38]
005489c8  40 70 9c e5                                      ldr r7, [ip, #0x40]
005489cc  3c b0 9c e5                                      ldr fp, [ip, #0x3c]
005489d0  44 c0 9c e5                                      ldr ip, [ip, #0x44]
005489d4  01 e0 4e e2                                      sub lr, lr, #1
005489d8  1c e0 8d e5                                      str lr, [sp, #0x1c]
005489dc  0c e0 9d e5                                      ldr lr, [sp, #0xc]
005489e0  01 80 87 e2                                      add r8, r7, #1
005489e4  01 70 8c e2                                      add r7, ip, #1
005489e8  01 c0 4b e2                                      sub ip, fp, #1
005489ec  24 80 8d e5                                      str r8, [sp, #0x24]
005489f0  28 70 8d e5                                      str r7, [sp, #0x28]
005489f4  20 c0 8d e5                                      str ip, [sp, #0x20]
005489f8  00 c0 96 e5                                      ldr ip, [r6]
005489fc  00 e0 8d e5                                      str lr, [sp]
00548a00  0f e0 a0 e1                                      mov lr, pc
00548a04  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00548a08  00 40 94 e5                                      ldr r4, [r4]
00548a0c  04 00 59 e1                                      cmp sb, r4
00548a10  df ff ff 1a                                      bne #0x548994
00548a14  98 30 d5 e5                                      ldrb r3, [r5, #0x98]
00548a18  00 00 53 e3                                      cmp r3, #0
00548a1c  04 40 b5 15                                      ldrne r4, [r5, #4]!
00548a20  07 00 00 1a                                      bne #0x548a44
00548a24  34 d0 8d e2                                      add sp, sp, #0x34
00548a28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00548a2c  08 30 94 e5                                      ldr r3, [r4, #8]
00548a30  03 00 a0 e1                                      mov r0, r3
00548a34  00 30 93 e5                                      ldr r3, [r3]
00548a38  0f e0 a0 e1                                      mov lr, pc
00548a3c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00548a40  00 40 94 e5                                      ldr r4, [r4]
00548a44  05 00 54 e1                                      cmp r4, r5
00548a48  f7 ff ff 1a                                      bne #0x548a2c
00548a4c  f4 ff ff ea                                      b #0x548a24

; FUNCTION 0x00548a50, declared_size=344, range_size=344, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZN6glitch3gui15CGUIModalScreen7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIModalScreen::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00548a50  70 40 2d e9                                      push {r4, r5, r6, lr}
00548a54  00 30 91 e5                                      ldr r3, [r1]
00548a58  01 40 a0 e1                                      mov r4, r1
00548a5c  00 50 a0 e1                                      mov r5, r0
00548a60  00 00 53 e3                                      cmp r3, #0
00548a64  1b 00 00 1a                                      bne #0x548ad8
00548a68  10 30 91 e5                                      ldr r3, [r1, #0x10]
00548a6c  01 00 53 e3                                      cmp r3, #1
00548a70  2a 00 00 0a                                      beq #0x548b20
00548a74  04 00 53 e3                                      cmp r3, #4
00548a78  14 00 00 0a                                      beq #0x548ad0
00548a7c  00 00 53 e3                                      cmp r3, #0
00548a80  16 00 00 1a                                      bne #0x548ae0
00548a84  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00548a88  00 00 50 e3                                      cmp r0, #0
00548a8c  37 00 00 0a                                      beq #0x548b70
00548a90  24 30 90 e5                                      ldr r3, [r0, #0x24]
00548a94  00 10 a0 e1                                      mov r1, r0
00548a98  05 00 00 ea                                      b #0x548ab4
00548a9c  24 20 93 e5                                      ldr r2, [r3, #0x24]
00548aa0  03 10 a0 e1                                      mov r1, r3
00548aa4  03 00 55 e1                                      cmp r5, r3
00548aa8  00 00 52 13                                      cmpne r2, #0
00548aac  03 00 00 0a                                      beq #0x548ac0
00548ab0  02 30 a0 e1                                      mov r3, r2
00548ab4  00 00 53 e3                                      cmp r3, #0
00548ab8  f7 ff ff 1a                                      bne #0x548a9c
00548abc  01 30 a0 e1                                      mov r3, r1
00548ac0  03 00 55 e1                                      cmp r5, r3
00548ac4  29 00 00 1a                                      bne #0x548b70
00548ac8  05 00 a0 e1                                      mov r0, r5
00548acc  04 10 a0 e1                                      mov r1, r4
00548ad0  70 40 bd e8                                      pop {r4, r5, r6, lr}
00548ad4  43 b1 ff ea                                      b #0x534fe8
00548ad8  01 00 53 e3                                      cmp r3, #1
00548adc  09 00 00 0a                                      beq #0x548b08
00548ae0  24 30 95 e5                                      ldr r3, [r5, #0x24]
00548ae4  00 00 53 e3                                      cmp r3, #0
00548ae8  04 00 00 0a                                      beq #0x548b00
00548aec  03 00 a0 e1                                      mov r0, r3
00548af0  04 10 a0 e1                                      mov r1, r4
00548af4  00 30 93 e5                                      ldr r3, [r3]
00548af8  0f e0 a0 e1                                      mov lr, pc
00548afc  08 f0 93 e5                                      ldr pc, [r3, #8]
00548b00  01 00 a0 e3                                      mov r0, #1
00548b04  70 80 bd e8                                      pop {r4, r5, r6, pc}
00548b08  14 30 91 e5                                      ldr r3, [r1, #0x14]
00548b0c  00 00 53 e3                                      cmp r3, #0
00548b10  f2 ff ff 1a                                      bne #0x548ae0
00548b14  f2 08 03 eb                                      bl #0x60aee4
00548b18  58 01 85 e5                                      str r0, [r5, #0x158]
00548b1c  ef ff ff ea                                      b #0x548ae0
00548b20  08 10 91 e5                                      ldr r1, [r1, #8]
00548b24  00 00 51 e1                                      cmp r1, r0
00548b28  0e 00 00 0a                                      beq #0x548b68
00548b2c  00 00 51 e3                                      cmp r1, #0
00548b30  14 00 00 0a                                      beq #0x548b88
00548b34  24 30 91 e5                                      ldr r3, [r1, #0x24]
00548b38  05 00 00 ea                                      b #0x548b54
00548b3c  24 20 93 e5                                      ldr r2, [r3, #0x24]
00548b40  03 10 a0 e1                                      mov r1, r3
00548b44  03 00 55 e1                                      cmp r5, r3
00548b48  00 00 52 13                                      cmpne r2, #0
00548b4c  03 00 00 0a                                      beq #0x548b60
00548b50  02 30 a0 e1                                      mov r3, r2
00548b54  00 00 53 e3                                      cmp r3, #0
00548b58  f7 ff ff 1a                                      bne #0x548b3c
00548b5c  01 30 a0 e1                                      mov r3, r1
00548b60  03 00 55 e1                                      cmp r5, r3
00548b64  07 00 00 1a                                      bne #0x548b88
00548b68  00 00 a0 e3                                      mov r0, #0
00548b6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00548b70  00 00 55 e1                                      cmp r5, r0
00548b74  d3 ff ff 0a                                      beq #0x548ac8
00548b78  d9 08 03 eb                                      bl #0x60aee4
00548b7c  58 01 85 e5                                      str r0, [r5, #0x158]
00548b80  01 00 a0 e3                                      mov r0, #1
00548b84  70 80 bd e8                                      pop {r4, r5, r6, pc}
00548b88  50 31 95 e5                                      ldr r3, [r5, #0x150]
00548b8c  05 10 a0 e1                                      mov r1, r5
00548b90  03 00 a0 e1                                      mov r0, r3
00548b94  00 30 93 e5                                      ldr r3, [r3]
00548b98  0f e0 a0 e1                                      mov lr, pc
00548b9c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00548ba0  00 00 a0 e3                                      mov r0, #0
00548ba4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00548ba8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZN6glitch3gui15CGUIModalScreenD0Ev
; demangled: glitch::gui::CGUIModalScreen::~CGUIModalScreen()
; decoder-mode: arm
00548ba8  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00548bac  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00548bb0  10 40 2d e9                                      push {r4, lr}
00548bb4  02 20 8f e0                                      add r2, pc, r2
00548bb8  03 30 92 e7                                      ldr r3, [r2, r3]
00548bbc  00 40 a0 e1                                      mov r4, r0
00548bc0  c4 20 83 e2                                      add r2, r3, #0xc4
00548bc4  10 10 83 e2                                      add r1, r3, #0x10
00548bc8  a4 30 83 e2                                      add r3, r3, #0xa4
00548bcc  00 10 80 e5                                      str r1, [r0]
00548bd0  5c 31 80 e5                                      str r3, [r0, #0x15c]
00548bd4  60 21 80 e5                                      str r2, [r0, #0x160]
00548bd8  dc fe ff eb                                      bl #0x548750
00548bdc  04 00 a0 e1                                      mov r0, r4
00548be0  b2 15 f7 eb                                      bl #0x30e2b0
00548be4  04 00 a0 e1                                      mov r0, r4
00548be8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00548bec  dc be 44 00 14 30 00 00                          .byte 0xdc, 0xbe, 0x44, 0x00, 0x14, 0x30, 0x00, 0x00

; FUNCTION 0x00548bf4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZTv0_n24_N6glitch3gui15CGUIModalScreenD0Ev
; demangled: virtual thunk to glitch::gui::CGUIModalScreen::~CGUIModalScreen()
; decoder-mode: arm
00548bf4  00 30 90 e5                                      ldr r3, [r0]
00548bf8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00548bfc  03 00 80 e0                                      add r0, r0, r3
00548c00  e8 ff ff ea                                      b #0x548ba8

; FUNCTION 0x00548c04, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZTv0_n12_N6glitch3gui15CGUIModalScreenD0Ev
; demangled: virtual thunk to glitch::gui::CGUIModalScreen::~CGUIModalScreen()
; decoder-mode: arm
00548c04  00 30 90 e5                                      ldr r3, [r0]
00548c08  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00548c0c  03 00 80 e0                                      add r0, r0, r3
00548c10  e4 ff ff ea                                      b #0x548ba8

; FUNCTION 0x00548c14, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZTv0_n20_N6glitch3gui15CGUIModalScreen21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIModalScreen::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00548c14  00 30 90 e5                                      ldr r3, [r0]
00548c18  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00548c1c  03 00 80 e0                                      add r0, r0, r3
00548c20  9f fd ff ea                                      b #0x5482a4

; FUNCTION 0x00548c24, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIModalScreen
; alias: _ZTv0_n16_NK6glitch3gui15CGUIModalScreen19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIModalScreen::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00548c24  00 30 90 e5                                      ldr r3, [r0]
00548c28  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00548c2c  03 00 80 e0                                      add r0, r0, r3
00548c30  9a fd ff ea                                      b #0x5482a0
