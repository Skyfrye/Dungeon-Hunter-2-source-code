; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005537cc, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::IGUITab
; alias: _ZN6glitch3gui7IGUITabC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUITab::IGUITab(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
005537cc  70 40 2d e9                                      push {r4, r5, r6, lr}
005537d0  20 d0 4d e2                                      sub sp, sp, #0x20
005537d4  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005537d8  01 50 a0 e1                                      mov r5, r1
005537dc  04 10 81 e2                                      add r1, r1, #4
005537e0  0c e0 9c e5                                      ldr lr, [ip, #0xc]
005537e4  00 60 9c e5                                      ldr r6, [ip]
005537e8  10 10 9c e9                                      ldmib ip, {r4, ip}
005537ec  00 30 8d e5                                      str r3, [sp]
005537f0  02 30 a0 e1                                      mov r3, r2
005537f4  18 c0 8d e5                                      str ip, [sp, #0x18]
005537f8  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005537fc  11 20 a0 e3                                      mov r2, #0x11
00553800  14 40 8d e5                                      str r4, [sp, #0x14]
00553804  04 c0 8d e5                                      str ip, [sp, #4]
00553808  10 c0 8d e2                                      add ip, sp, #0x10
0055380c  00 40 a0 e1                                      mov r4, r0
00553810  10 60 8d e5                                      str r6, [sp, #0x10]
00553814  1c e0 8d e5                                      str lr, [sp, #0x1c]
00553818  08 c0 8d e5                                      str ip, [sp, #8]
0055381c  00 fd ff eb                                      bl #0x552c24
00553820  00 30 95 e5                                      ldr r3, [r5]
00553824  04 00 a0 e1                                      mov r0, r4
00553828  00 30 84 e5                                      str r3, [r4]
0055382c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00553830  10 20 95 e5                                      ldr r2, [r5, #0x10]
00553834  03 20 84 e7                                      str r2, [r4, r3]
00553838  00 30 94 e5                                      ldr r3, [r4]
0055383c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00553840  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00553844  03 20 84 e7                                      str r2, [r4, r3]
00553848  20 d0 8d e2                                      add sp, sp, #0x20
0055384c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00553f30, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUITab
; alias: _ZN6glitch3gui7IGUITabD1Ev
; demangled: glitch::gui::IGUITab::~IGUITab()
; decoder-mode: arm
00553f30  40 30 9f e5                                      ldr r3, [pc, #0x40]
00553f34  40 20 9f e5                                      ldr r2, [pc, #0x40]
00553f38  40 10 9f e5                                      ldr r1, [pc, #0x40]
00553f3c  03 30 8f e0                                      add r3, pc, r3
00553f40  02 20 93 e7                                      ldr r2, [r3, r2]
00553f44  01 10 93 e7                                      ldr r1, [r3, r1]
00553f48  10 40 2d e9                                      push {r4, lr}
00553f4c  e0 c0 82 e2                                      add ip, r2, #0xe0
00553f50  10 e0 82 e2                                      add lr, r2, #0x10
00553f54  c0 20 82 e2                                      add r2, r2, #0xc0
00553f58  00 40 a0 e1                                      mov r4, r0
00553f5c  00 e0 80 e5                                      str lr, [r0]
00553f60  58 21 80 e5                                      str r2, [r0, #0x158]
00553f64  5c c1 80 e5                                      str ip, [r0, #0x15c]
00553f68  04 10 81 e2                                      add r1, r1, #4
00553f6c  2b 94 ff eb                                      bl #0x539020
00553f70  04 00 a0 e1                                      mov r0, r4
00553f74  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00553f78  54 0b 44 00 70 45 00 00 0c 30 00 00              .byte 0x54, 0x0b, 0x44, 0x00, 0x70, 0x45, 0x00, 0x00, 0x0c, 0x30, 0x00, 0x00

; FUNCTION 0x00553f84, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUITab
; alias: _ZTv0_n24_N6glitch3gui7IGUITabD1Ev
; demangled: virtual thunk to glitch::gui::IGUITab::~IGUITab()
; decoder-mode: arm
00553f84  00 30 90 e5                                      ldr r3, [r0]
00553f88  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00553f8c  03 00 80 e0                                      add r0, r0, r3
00553f90  e6 ff ff ea                                      b #0x553f30

; FUNCTION 0x00553f94, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUITab
; alias: _ZTv0_n12_N6glitch3gui7IGUITabD1Ev
; demangled: virtual thunk to glitch::gui::IGUITab::~IGUITab()
; decoder-mode: arm
00553f94  00 30 90 e5                                      ldr r3, [r0]
00553f98  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00553f9c  03 00 80 e0                                      add r0, r0, r3
00553fa0  e2 ff ff ea                                      b #0x553f30

; FUNCTION 0x00554598, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUITab
; alias: _ZN6glitch3gui7IGUITabD0Ev
; demangled: glitch::gui::IGUITab::~IGUITab()
; decoder-mode: arm
00554598  48 30 9f e5                                      ldr r3, [pc, #0x48]
0055459c  48 20 9f e5                                      ldr r2, [pc, #0x48]
005545a0  48 10 9f e5                                      ldr r1, [pc, #0x48]
005545a4  03 30 8f e0                                      add r3, pc, r3
005545a8  02 20 93 e7                                      ldr r2, [r3, r2]
005545ac  01 10 93 e7                                      ldr r1, [r3, r1]
005545b0  10 40 2d e9                                      push {r4, lr}
005545b4  e0 c0 82 e2                                      add ip, r2, #0xe0
005545b8  10 e0 82 e2                                      add lr, r2, #0x10
005545bc  c0 20 82 e2                                      add r2, r2, #0xc0
005545c0  00 40 a0 e1                                      mov r4, r0
005545c4  00 e0 80 e5                                      str lr, [r0]
005545c8  58 21 80 e5                                      str r2, [r0, #0x158]
005545cc  5c c1 80 e5                                      str ip, [r0, #0x15c]
005545d0  04 10 81 e2                                      add r1, r1, #4
005545d4  91 92 ff eb                                      bl #0x539020
005545d8  04 00 a0 e1                                      mov r0, r4
005545dc  33 e7 f6 eb                                      bl #0x30e2b0
005545e0  04 00 a0 e1                                      mov r0, r4
005545e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005545e8  ec 04 44 00 70 45 00 00 0c 30 00 00              .byte 0xec, 0x04, 0x44, 0x00, 0x70, 0x45, 0x00, 0x00, 0x0c, 0x30, 0x00, 0x00

; FUNCTION 0x005545f4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUITab
; alias: _ZTv0_n24_N6glitch3gui7IGUITabD0Ev
; demangled: virtual thunk to glitch::gui::IGUITab::~IGUITab()
; decoder-mode: arm
005545f4  00 30 90 e5                                      ldr r3, [r0]
005545f8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005545fc  03 00 80 e0                                      add r0, r0, r3
00554600  e4 ff ff ea                                      b #0x554598

; FUNCTION 0x00554604, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUITab
; alias: _ZTv0_n12_N6glitch3gui7IGUITabD0Ev
; demangled: virtual thunk to glitch::gui::IGUITab::~IGUITab()
; decoder-mode: arm
00554604  00 30 90 e5                                      ldr r3, [r0]
00554608  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055460c  03 00 80 e0                                      add r0, r0, r3
00554610  e0 ff ff ea                                      b #0x554598
