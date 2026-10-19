; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00552ec0, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::IGUITabControl
; alias: _ZN6glitch3gui14IGUITabControlC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUITabControl::IGUITabControl(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00552ec0  70 40 2d e9                                      push {r4, r5, r6, lr}
00552ec4  20 d0 4d e2                                      sub sp, sp, #0x20
00552ec8  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00552ecc  01 50 a0 e1                                      mov r5, r1
00552ed0  04 10 81 e2                                      add r1, r1, #4
00552ed4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00552ed8  00 60 9c e5                                      ldr r6, [ip]
00552edc  10 10 9c e9                                      ldmib ip, {r4, ip}
00552ee0  00 30 8d e5                                      str r3, [sp]
00552ee4  02 30 a0 e1                                      mov r3, r2
00552ee8  18 c0 8d e5                                      str ip, [sp, #0x18]
00552eec  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00552ef0  12 20 a0 e3                                      mov r2, #0x12
00552ef4  14 40 8d e5                                      str r4, [sp, #0x14]
00552ef8  04 c0 8d e5                                      str ip, [sp, #4]
00552efc  10 c0 8d e2                                      add ip, sp, #0x10
00552f00  00 40 a0 e1                                      mov r4, r0
00552f04  10 60 8d e5                                      str r6, [sp, #0x10]
00552f08  1c e0 8d e5                                      str lr, [sp, #0x1c]
00552f0c  08 c0 8d e5                                      str ip, [sp, #8]
00552f10  43 ff ff eb                                      bl #0x552c24
00552f14  00 30 95 e5                                      ldr r3, [r5]
00552f18  04 00 a0 e1                                      mov r0, r4
00552f1c  00 30 84 e5                                      str r3, [r4]
00552f20  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00552f24  10 20 95 e5                                      ldr r2, [r5, #0x10]
00552f28  03 20 84 e7                                      str r2, [r4, r3]
00552f2c  00 30 94 e5                                      ldr r3, [r4]
00552f30  14 20 95 e5                                      ldr r2, [r5, #0x14]
00552f34  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00552f38  03 20 84 e7                                      str r2, [r4, r3]
00552f3c  20 d0 8d e2                                      add sp, sp, #0x20
00552f40  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00554070, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUITabControl
; alias: _ZN6glitch3gui14IGUITabControlD1Ev
; demangled: glitch::gui::IGUITabControl::~IGUITabControl()
; decoder-mode: arm
00554070  40 30 9f e5                                      ldr r3, [pc, #0x40]
00554074  40 20 9f e5                                      ldr r2, [pc, #0x40]
00554078  40 10 9f e5                                      ldr r1, [pc, #0x40]
0055407c  03 30 8f e0                                      add r3, pc, r3
00554080  02 20 93 e7                                      ldr r2, [r3, r2]
00554084  01 10 93 e7                                      ldr r1, [r3, r1]
00554088  10 40 2d e9                                      push {r4, lr}
0055408c  f4 c0 82 e2                                      add ip, r2, #0xf4
00554090  10 e0 82 e2                                      add lr, r2, #0x10
00554094  d4 20 82 e2                                      add r2, r2, #0xd4
00554098  00 40 a0 e1                                      mov r4, r0
0055409c  00 e0 80 e5                                      str lr, [r0]
005540a0  58 21 80 e5                                      str r2, [r0, #0x158]
005540a4  5c c1 80 e5                                      str ip, [r0, #0x15c]
005540a8  04 10 81 e2                                      add r1, r1, #4
005540ac  db 93 ff eb                                      bl #0x539020
005540b0  04 00 a0 e1                                      mov r0, r4
005540b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005540b8  14 0a 44 00 04 3f 00 00 04 09 00 00              .byte 0x14, 0x0a, 0x44, 0x00, 0x04, 0x3f, 0x00, 0x00, 0x04, 0x09, 0x00, 0x00

; FUNCTION 0x005540c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUITabControl
; alias: _ZTv0_n24_N6glitch3gui14IGUITabControlD1Ev
; demangled: virtual thunk to glitch::gui::IGUITabControl::~IGUITabControl()
; decoder-mode: arm
005540c4  00 30 90 e5                                      ldr r3, [r0]
005540c8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005540cc  03 00 80 e0                                      add r0, r0, r3
005540d0  e6 ff ff ea                                      b #0x554070

; FUNCTION 0x005540d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUITabControl
; alias: _ZTv0_n12_N6glitch3gui14IGUITabControlD1Ev
; demangled: virtual thunk to glitch::gui::IGUITabControl::~IGUITabControl()
; decoder-mode: arm
005540d4  00 30 90 e5                                      ldr r3, [r0]
005540d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005540dc  03 00 80 e0                                      add r0, r0, r3
005540e0  e2 ff ff ea                                      b #0x554070

; FUNCTION 0x00554614, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUITabControl
; alias: _ZN6glitch3gui14IGUITabControlD0Ev
; demangled: glitch::gui::IGUITabControl::~IGUITabControl()
; decoder-mode: arm
00554614  48 30 9f e5                                      ldr r3, [pc, #0x48]
00554618  48 20 9f e5                                      ldr r2, [pc, #0x48]
0055461c  48 10 9f e5                                      ldr r1, [pc, #0x48]
00554620  03 30 8f e0                                      add r3, pc, r3
00554624  02 20 93 e7                                      ldr r2, [r3, r2]
00554628  01 10 93 e7                                      ldr r1, [r3, r1]
0055462c  10 40 2d e9                                      push {r4, lr}
00554630  f4 c0 82 e2                                      add ip, r2, #0xf4
00554634  10 e0 82 e2                                      add lr, r2, #0x10
00554638  d4 20 82 e2                                      add r2, r2, #0xd4
0055463c  00 40 a0 e1                                      mov r4, r0
00554640  00 e0 80 e5                                      str lr, [r0]
00554644  58 21 80 e5                                      str r2, [r0, #0x158]
00554648  5c c1 80 e5                                      str ip, [r0, #0x15c]
0055464c  04 10 81 e2                                      add r1, r1, #4
00554650  72 92 ff eb                                      bl #0x539020
00554654  04 00 a0 e1                                      mov r0, r4
00554658  14 e7 f6 eb                                      bl #0x30e2b0
0055465c  04 00 a0 e1                                      mov r0, r4
00554660  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00554664  70 04 44 00 04 3f 00 00 04 09 00 00              .byte 0x70, 0x04, 0x44, 0x00, 0x04, 0x3f, 0x00, 0x00, 0x04, 0x09, 0x00, 0x00

; FUNCTION 0x00554670, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUITabControl
; alias: _ZTv0_n24_N6glitch3gui14IGUITabControlD0Ev
; demangled: virtual thunk to glitch::gui::IGUITabControl::~IGUITabControl()
; decoder-mode: arm
00554670  00 30 90 e5                                      ldr r3, [r0]
00554674  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00554678  03 00 80 e0                                      add r0, r0, r3
0055467c  e4 ff ff ea                                      b #0x554614

; FUNCTION 0x00554680, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUITabControl
; alias: _ZTv0_n12_N6glitch3gui14IGUITabControlD0Ev
; demangled: virtual thunk to glitch::gui::IGUITabControl::~IGUITabControl()
; decoder-mode: arm
00554680  00 30 90 e5                                      ldr r3, [r0]
00554684  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00554688  03 00 80 e0                                      add r0, r0, r3
0055468c  e0 ff ff ea                                      b #0x554614
