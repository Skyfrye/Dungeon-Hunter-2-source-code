; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00547c50, declared_size=68, range_size=68, mode=arm
; class-group: glitch::gui::IGUIWindow
; alias: _ZN6glitch3gui10IGUIWindowD1Ev
; demangled: glitch::gui::IGUIWindow::~IGUIWindow()
; decoder-mode: arm
00547c50  34 20 9f e5                                      ldr r2, [pc, #0x34]
00547c54  34 30 9f e5                                      ldr r3, [pc, #0x34]
00547c58  10 40 2d e9                                      push {r4, lr}
00547c5c  02 20 8f e0                                      add r2, pc, r2
00547c60  03 30 92 e7                                      ldr r3, [r2, r3]
00547c64  00 40 a0 e1                                      mov r4, r0
00547c68  d0 20 83 e2                                      add r2, r3, #0xd0
00547c6c  10 10 83 e2                                      add r1, r3, #0x10
00547c70  b0 30 83 e2                                      add r3, r3, #0xb0
00547c74  00 10 80 e5                                      str r1, [r0]
00547c78  58 31 80 e5                                      str r3, [r0, #0x158]
00547c7c  5c 21 80 e5                                      str r2, [r0, #0x15c]
00547c80  b0 ff ff eb                                      bl #0x547b48
00547c84  04 00 a0 e1                                      mov r0, r4
00547c88  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00547c8c  34 ce 44 00 7c 21 00 00                          .byte 0x34, 0xce, 0x44, 0x00, 0x7c, 0x21, 0x00, 0x00

; FUNCTION 0x00547c94, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIWindow
; alias: _ZTv0_n24_N6glitch3gui10IGUIWindowD1Ev
; demangled: virtual thunk to glitch::gui::IGUIWindow::~IGUIWindow()
; decoder-mode: arm
00547c94  00 30 90 e5                                      ldr r3, [r0]
00547c98  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00547c9c  03 00 80 e0                                      add r0, r0, r3
00547ca0  ea ff ff ea                                      b #0x547c50

; FUNCTION 0x00547ca4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIWindow
; alias: _ZTv0_n12_N6glitch3gui10IGUIWindowD1Ev
; demangled: virtual thunk to glitch::gui::IGUIWindow::~IGUIWindow()
; decoder-mode: arm
00547ca4  00 30 90 e5                                      ldr r3, [r0]
00547ca8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00547cac  03 00 80 e0                                      add r0, r0, r3
00547cb0  e6 ff ff ea                                      b #0x547c50

; FUNCTION 0x00547ebc, declared_size=76, range_size=76, mode=arm
; class-group: glitch::gui::IGUIWindow
; alias: _ZN6glitch3gui10IGUIWindowD0Ev
; demangled: glitch::gui::IGUIWindow::~IGUIWindow()
; decoder-mode: arm
00547ebc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00547ec0  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00547ec4  10 40 2d e9                                      push {r4, lr}
00547ec8  02 20 8f e0                                      add r2, pc, r2
00547ecc  03 30 92 e7                                      ldr r3, [r2, r3]
00547ed0  00 40 a0 e1                                      mov r4, r0
00547ed4  d0 20 83 e2                                      add r2, r3, #0xd0
00547ed8  10 10 83 e2                                      add r1, r3, #0x10
00547edc  b0 30 83 e2                                      add r3, r3, #0xb0
00547ee0  00 10 80 e5                                      str r1, [r0]
00547ee4  58 31 80 e5                                      str r3, [r0, #0x158]
00547ee8  5c 21 80 e5                                      str r2, [r0, #0x15c]
00547eec  15 ff ff eb                                      bl #0x547b48
00547ef0  04 00 a0 e1                                      mov r0, r4
00547ef4  ed 18 f7 eb                                      bl #0x30e2b0
00547ef8  04 00 a0 e1                                      mov r0, r4
00547efc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00547f00  c8 cb 44 00 7c 21 00 00                          .byte 0xc8, 0xcb, 0x44, 0x00, 0x7c, 0x21, 0x00, 0x00

; FUNCTION 0x00547f08, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIWindow
; alias: _ZTv0_n24_N6glitch3gui10IGUIWindowD0Ev
; demangled: virtual thunk to glitch::gui::IGUIWindow::~IGUIWindow()
; decoder-mode: arm
00547f08  00 30 90 e5                                      ldr r3, [r0]
00547f0c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00547f10  03 00 80 e0                                      add r0, r0, r3
00547f14  e8 ff ff ea                                      b #0x547ebc

; FUNCTION 0x00547f18, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIWindow
; alias: _ZTv0_n12_N6glitch3gui10IGUIWindowD0Ev
; demangled: virtual thunk to glitch::gui::IGUIWindow::~IGUIWindow()
; decoder-mode: arm
00547f18  00 30 90 e5                                      ldr r3, [r0]
00547f1c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00547f20  03 00 80 e0                                      add r0, r0, r3
00547f24  e4 ff ff ea                                      b #0x547ebc

; FUNCTION 0x0055ed80, declared_size=704, range_size=704, mode=arm
; class-group: glitch::gui::IGUIWindow
; alias: _ZN6glitch3gui10IGUIWindowC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIWindow::IGUIWindow(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
0055ed80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055ed84  ac 42 9f e5                                      ldr r4, [pc, #0x2ac]
0055ed88  ac e2 9f e5                                      ldr lr, [pc, #0x2ac]
0055ed8c  1c d0 4d e2                                      sub sp, sp, #0x1c
0055ed90  04 40 8f e0                                      add r4, pc, r4
0055ed94  0e e0 94 e7                                      ldr lr, [r4, lr]
0055ed98  44 c0 9d e5                                      ldr ip, [sp, #0x44]
0055ed9c  00 40 8d e5                                      str r4, [sp]
0055eda0  00 40 a0 e1                                      mov r4, r0
0055eda4  08 00 8e e2                                      add r0, lr, #8
0055eda8  00 80 9c e5                                      ldr r8, [ip]
0055edac  80 40 9c e9                                      ldmib ip, {r7, lr}
0055edb0  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0055edb4  00 00 84 e5                                      str r0, [r4]
0055edb8  01 50 a0 e1                                      mov r5, r1
0055edbc  04 10 91 e5                                      ldr r1, [r1, #4]
0055edc0  04 00 85 e2                                      add r0, r5, #4
0055edc4  00 60 a0 e3                                      mov r6, #0
0055edc8  00 10 84 e5                                      str r1, [r4]
0055edcc  0c b0 11 e5                                      ldr fp, [r1, #-0xc]
0055edd0  04 90 90 e5                                      ldr sb, [r0, #4]
0055edd4  00 c0 a0 e3                                      mov ip, #0
0055edd8  01 10 a0 e3                                      mov r1, #1
0055eddc  0b 90 84 e7                                      str sb, [r4, fp]
0055ede0  08 00 90 e5                                      ldr r0, [r0, #8]
0055ede4  00 b0 94 e5                                      ldr fp, [r4]
0055ede8  a0 90 84 e2                                      add sb, r4, #0xa0
0055edec  14 00 8d e5                                      str r0, [sp, #0x14]
0055edf0  10 b0 1b e5                                      ldr fp, [fp, #-0x10]
0055edf4  0c 00 84 e2                                      add r0, r4, #0xc
0055edf8  04 00 8d e5                                      str r0, [sp, #4]
0055edfc  10 b0 8d e5                                      str fp, [sp, #0x10]
0055ee00  04 b0 84 e2                                      add fp, r4, #4
0055ee04  0c b0 8d e5                                      str fp, [sp, #0xc]
0055ee08  14 00 9d e5                                      ldr r0, [sp, #0x14]
0055ee0c  10 b0 9d e5                                      ldr fp, [sp, #0x10]
0055ee10  0b 00 84 e7                                      str r0, [r4, fp]
0055ee14  0c b0 9d e5                                      ldr fp, [sp, #0xc]
0055ee18  08 b0 84 e5                                      str fp, [r4, #8]
0055ee1c  04 00 9d e5                                      ldr r0, [sp, #4]
0055ee20  30 e0 84 e5                                      str lr, [r4, #0x30]
0055ee24  28 80 84 e5                                      str r8, [r4, #0x28]
0055ee28  20 00 84 e5                                      str r0, [r4, #0x20]
0055ee2c  1c 00 84 e5                                      str r0, [r4, #0x1c]
0055ee30  2c 70 84 e5                                      str r7, [r4, #0x2c]
0055ee34  09 00 a0 e1                                      mov r0, sb
0055ee38  04 b0 84 e5                                      str fp, [r4, #4]
0055ee3c  34 a0 84 e5                                      str sl, [r4, #0x34]
0055ee40  38 80 84 e5                                      str r8, [r4, #0x38]
0055ee44  3c 70 84 e5                                      str r7, [r4, #0x3c]
0055ee48  40 e0 84 e5                                      str lr, [r4, #0x40]
0055ee4c  48 80 84 e5                                      str r8, [r4, #0x48]
0055ee50  4c 70 84 e5                                      str r7, [r4, #0x4c]
0055ee54  50 e0 84 e5                                      str lr, [r4, #0x50]
0055ee58  58 80 84 e5                                      str r8, [r4, #0x58]
0055ee5c  5c 70 84 e5                                      str r7, [r4, #0x5c]
0055ee60  60 e0 84 e5                                      str lr, [r4, #0x60]
0055ee64  84 c0 84 e5                                      str ip, [r4, #0x84]
0055ee68  99 10 c4 e5                                      strb r1, [r4, #0x99]
0055ee6c  78 c0 84 e5                                      str ip, [r4, #0x78]
0055ee70  7c c0 84 e5                                      str ip, [r4, #0x7c]
0055ee74  80 c0 84 e5                                      str ip, [r4, #0x80]
0055ee78  90 10 84 e5                                      str r1, [r4, #0x90]
0055ee7c  94 10 84 e5                                      str r1, [r4, #0x94]
0055ee80  98 10 c4 e5                                      strb r1, [r4, #0x98]
0055ee84  44 a0 84 e5                                      str sl, [r4, #0x44]
0055ee88  0c 60 c4 e5                                      strb r6, [r4, #0xc]
0055ee8c  24 60 84 e5                                      str r6, [r4, #0x24]
0055ee90  64 a0 84 e5                                      str sl, [r4, #0x64]
0055ee94  54 a0 84 e5                                      str sl, [r4, #0x54]
0055ee98  68 60 84 e5                                      str r6, [r4, #0x68]
0055ee9c  6c 60 84 e5                                      str r6, [r4, #0x6c]
0055eea0  70 60 84 e5                                      str r6, [r4, #0x70]
0055eea4  74 60 84 e5                                      str r6, [r4, #0x74]
0055eea8  88 60 84 e5                                      str r6, [r4, #0x88]
0055eeac  8c 60 84 e5                                      str r6, [r4, #0x8c]
0055eeb0  9a 60 c4 e5                                      strb r6, [r4, #0x9a]
0055eeb4  9b 60 c4 e5                                      strb r6, [r4, #0x9b]
0055eeb8  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
0055eebc  e0 90 84 e5                                      str sb, [r4, #0xe0]
0055eec0  e4 90 84 e5                                      str sb, [r4, #0xe4]
0055eec4  02 70 a0 e1                                      mov r7, r2
0055eec8  03 80 a0 e1                                      mov r8, r3
0055eecc  aa ff ff eb                                      bl #0x55ed7c
0055eed0  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
0055eed4  e8 30 84 e2                                      add r3, r4, #0xe8
0055eed8  03 00 a0 e1                                      mov r0, r3
0055eedc  00 60 82 e5                                      str r6, [r2]
0055eee0  28 31 84 e5                                      str r3, [r4, #0x128]
0055eee4  2c 31 84 e5                                      str r3, [r4, #0x12c]
0055eee8  a3 ff ff eb                                      bl #0x55ed7c
0055eeec  28 31 94 e5                                      ldr r3, [r4, #0x128]
0055eef0  06 00 58 e1                                      cmp r8, r6
0055eef4  00 60 83 e5                                      str r6, [r3]
0055eef8  40 30 9d e5                                      ldr r3, [sp, #0x40]
0055eefc  4c 61 84 e5                                      str r6, [r4, #0x14c]
0055ef00  50 71 84 e5                                      str r7, [r4, #0x150]
0055ef04  30 31 84 e5                                      str r3, [r4, #0x130]
0055ef08  00 30 e0 e3                                      mvn r3, #0
0055ef0c  38 31 84 e5                                      str r3, [r4, #0x138]
0055ef10  15 30 a0 e3                                      mov r3, #0x15
0055ef14  54 31 84 e5                                      str r3, [r4, #0x154]
0055ef18  34 61 c4 e5                                      strb r6, [r4, #0x134]
0055ef1c  3c 61 c4 e5                                      strb r6, [r4, #0x13c]
0055ef20  40 61 84 e5                                      str r6, [r4, #0x140]
0055ef24  44 61 84 e5                                      str r6, [r4, #0x144]
0055ef28  48 61 84 e5                                      str r6, [r4, #0x148]
0055ef2c  04 00 00 0a                                      beq #0x55ef44
0055ef30  08 00 a0 e1                                      mov r0, r8
0055ef34  00 30 98 e5                                      ldr r3, [r8]
0055ef38  04 10 a0 e1                                      mov r1, r4
0055ef3c  0f e0 a0 e1                                      mov lr, pc
0055ef40  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0055ef44  24 30 94 e5                                      ldr r3, [r4, #0x24]
0055ef48  00 00 53 e3                                      cmp r3, #0
0055ef4c  2d 00 00 0a                                      beq #0x55f008
0055ef50  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
0055ef54  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0055ef58  38 70 94 e5                                      ldr r7, [r4, #0x38]
0055ef5c  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
0055ef60  40 10 94 e5                                      ldr r1, [r4, #0x40]
0055ef64  44 20 94 e5                                      ldr r2, [r4, #0x44]
0055ef68  40 a0 93 e5                                      ldr sl, [r3, #0x40]
0055ef6c  44 80 93 e5                                      ldr r8, [r3, #0x44]
0055ef70  02 20 80 e0                                      add r2, r0, r2
0055ef74  01 10 8c e0                                      add r1, ip, r1
0055ef78  06 60 80 e0                                      add r6, r0, r6
0055ef7c  07 70 8c e0                                      add r7, ip, r7
0055ef80  4c 60 84 e5                                      str r6, [r4, #0x4c]
0055ef84  54 20 84 e5                                      str r2, [r4, #0x54]
0055ef88  48 70 84 e5                                      str r7, [r4, #0x48]
0055ef8c  50 10 84 e5                                      str r1, [r4, #0x50]
0055ef90  44 20 84 e5                                      str r2, [r4, #0x44]
0055ef94  70 a0 84 e5                                      str sl, [r4, #0x70]
0055ef98  74 80 84 e5                                      str r8, [r4, #0x74]
0055ef9c  68 c0 84 e5                                      str ip, [r4, #0x68]
0055efa0  6c 00 84 e5                                      str r0, [r4, #0x6c]
0055efa4  38 70 84 e5                                      str r7, [r4, #0x38]
0055efa8  3c 60 84 e5                                      str r6, [r4, #0x3c]
0055efac  40 10 84 e5                                      str r1, [r4, #0x40]
0055efb0  50 00 93 e5                                      ldr r0, [r3, #0x50]
0055efb4  00 00 51 e1                                      cmp r1, r0
0055efb8  50 00 84 c5                                      strgt r0, [r4, #0x50]
0055efbc  54 10 93 e5                                      ldr r1, [r3, #0x54]
0055efc0  01 00 52 e1                                      cmp r2, r1
0055efc4  54 10 84 c5                                      strgt r1, [r4, #0x54]
0055efc8  48 10 93 e5                                      ldr r1, [r3, #0x48]
0055efcc  48 20 94 e5                                      ldr r2, [r4, #0x48]
0055efd0  02 00 51 e1                                      cmp r1, r2
0055efd4  48 10 84 c5                                      strgt r1, [r4, #0x48]
0055efd8  01 20 a0 c1                                      movgt r2, r1
0055efdc  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
0055efe0  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0055efe4  03 00 51 e1                                      cmp r1, r3
0055efe8  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
0055efec  01 30 a0 c1                                      movgt r3, r1
0055eff0  54 10 94 e5                                      ldr r1, [r4, #0x54]
0055eff4  03 00 51 e1                                      cmp r1, r3
0055eff8  50 30 94 e5                                      ldr r3, [r4, #0x50]
0055effc  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
0055f000  03 00 52 e1                                      cmp r2, r3
0055f004  48 30 84 c5                                      strgt r3, [r4, #0x48]
0055f008  00 30 95 e5                                      ldr r3, [r5]
0055f00c  04 00 a0 e1                                      mov r0, r4
0055f010  00 30 84 e5                                      str r3, [r4]
0055f014  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055f018  10 20 95 e5                                      ldr r2, [r5, #0x10]
0055f01c  03 20 84 e7                                      str r2, [r4, r3]
0055f020  00 30 94 e5                                      ldr r3, [r4]
0055f024  14 20 95 e5                                      ldr r2, [r5, #0x14]
0055f028  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0055f02c  03 20 84 e7                                      str r2, [r4, r3]
0055f030  1c d0 8d e2                                      add sp, sp, #0x1c
0055f034  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0055f038  00 5d 43 00 4c 27 00 00                          .byte 0x00, 0x5d, 0x43, 0x00, 0x4c, 0x27, 0x00, 0x00
