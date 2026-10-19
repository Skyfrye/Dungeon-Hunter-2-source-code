; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0055eb40, declared_size=4, range_size=4, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZN6glitch3gui10CGUIWindow22updateAbsolutePositionEv
; demangled: glitch::gui::CGUIWindow::updateAbsolutePosition()
; decoder-mode: arm
0055eb40  76 57 ff ea                                      b #0x534920

; FUNCTION 0x0055eb44, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZNK6glitch3gui10CGUIWindow14getCloseButtonEv
; demangled: glitch::gui::CGUIWindow::getCloseButton() const
; decoder-mode: arm
0055eb44  64 01 90 e5                                      ldr r0, [r0, #0x164]
0055eb48  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055eb4c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZNK6glitch3gui10CGUIWindow17getMinimizeButtonEv
; demangled: glitch::gui::CGUIWindow::getMinimizeButton() const
; decoder-mode: arm
0055eb4c  68 01 90 e5                                      ldr r0, [r0, #0x168]
0055eb50  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055eb54, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZNK6glitch3gui10CGUIWindow17getMaximizeButtonEv
; demangled: glitch::gui::CGUIWindow::getMaximizeButton() const
; decoder-mode: arm
0055eb54  6c 01 90 e5                                      ldr r0, [r0, #0x16c]
0055eb58  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055f040, declared_size=1600, range_size=1600, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZN6glitch3gui10CGUIWindowC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIWindow::CGUIWindow(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
0055f040  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055f044  0c 66 9f e5                                      ldr r6, [pc, #0x60c]
0055f048  0c c6 9f e5                                      ldr ip, [pc, #0x60c]
0055f04c  0c e6 9f e5                                      ldr lr, [pc, #0x60c]
0055f050  06 60 8f e0                                      add r6, pc, r6
0055f054  0c c0 96 e7                                      ldr ip, [r6, ip]
0055f058  0e e0 96 e7                                      ldr lr, [r6, lr]
0055f05c  01 70 a0 e3                                      mov r7, #1
0055f060  24 50 9c e5                                      ldr r5, [ip, #0x24]
0055f064  08 e0 8e e2                                      add lr, lr, #8
0055f068  78 71 80 e5                                      str r7, [r0, #0x178]
0055f06c  74 e1 80 e5                                      str lr, [r0, #0x174]
0055f070  70 51 80 e5                                      str r5, [r0, #0x170]
0055f074  0c e0 15 e5                                      ldr lr, [r5, #-0xc]
0055f078  64 d0 4d e2                                      sub sp, sp, #0x64
0055f07c  28 80 9c e5                                      ldr r8, [ip, #0x28]
0055f080  88 50 9d e5                                      ldr r5, [sp, #0x88]
0055f084  17 7e 80 e2                                      add r7, r0, #0x170
0055f088  0e 80 87 e7                                      str r8, [r7, lr]
0055f08c  0c 80 95 e5                                      ldr r8, [r5, #0xc]
0055f090  80 40 95 e8                                      ldm r5, {r7, lr}
0055f094  08 a0 95 e5                                      ldr sl, [r5, #8]
0055f098  01 50 a0 e1                                      mov r5, r1
0055f09c  00 30 8d e5                                      str r3, [sp]
0055f0a0  04 10 8c e2                                      add r1, ip, #4
0055f0a4  02 30 a0 e1                                      mov r3, r2
0055f0a8  4c c0 8d e2                                      add ip, sp, #0x4c
0055f0ac  05 20 a0 e1                                      mov r2, r5
0055f0b0  00 40 a0 e1                                      mov r4, r0
0055f0b4  4c 70 8d e5                                      str r7, [sp, #0x4c]
0055f0b8  50 e0 8d e5                                      str lr, [sp, #0x50]
0055f0bc  54 a0 8d e5                                      str sl, [sp, #0x54]
0055f0c0  58 80 8d e5                                      str r8, [sp, #0x58]
0055f0c4  04 c0 8d e5                                      str ip, [sp, #4]
0055f0c8  2c ff ff eb                                      bl #0x55ed80
0055f0cc  90 35 9f e5                                      ldr r3, [pc, #0x590]
0055f0d0  00 20 a0 e3                                      mov r2, #0
0055f0d4  00 00 55 e3                                      cmp r5, #0
0055f0d8  03 30 96 e7                                      ldr r3, [r6, r3]
0055f0dc  60 21 c4 e5                                      strb r2, [r4, #0x160]
0055f0e0  58 21 84 e5                                      str r2, [r4, #0x158]
0055f0e4  d0 10 83 e2                                      add r1, r3, #0xd0
0055f0e8  10 00 83 e2                                      add r0, r3, #0x10
0055f0ec  b0 30 83 e2                                      add r3, r3, #0xb0
0055f0f0  00 00 84 e5                                      str r0, [r4]
0055f0f4  70 31 84 e5                                      str r3, [r4, #0x170]
0055f0f8  74 11 84 e5                                      str r1, [r4, #0x174]
0055f0fc  5c 21 84 e5                                      str r2, [r4, #0x15c]
0055f100  04 00 00 0a                                      beq #0x55f118
0055f104  05 00 a0 e1                                      mov r0, r5
0055f108  00 30 95 e5                                      ldr r3, [r5]
0055f10c  0f e0 a0 e1                                      mov lr, pc
0055f110  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055f114  00 50 a0 e1                                      mov r5, r0
0055f118  00 30 e0 e3                                      mvn r3, #0
0055f11c  00 00 55 e3                                      cmp r5, #0
0055f120  5f 30 cd e5                                      strb r3, [sp, #0x5f]
0055f124  5c 30 cd e5                                      strb r3, [sp, #0x5c]
0055f128  5d 30 cd e5                                      strb r3, [sp, #0x5d]
0055f12c  5e 30 cd e5                                      strb r3, [sp, #0x5e]
0055f130  39 01 00 0a                                      beq #0x55f61c
0055f134  02 10 a0 e3                                      mov r1, #2
0055f138  00 30 95 e5                                      ldr r3, [r5]
0055f13c  05 00 a0 e1                                      mov r0, r5
0055f140  0f e0 a0 e1                                      mov lr, pc
0055f144  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0055f148  00 30 95 e5                                      ldr r3, [r5]
0055f14c  00 60 a0 e1                                      mov r6, r0
0055f150  05 00 a0 e1                                      mov r0, r5
0055f154  0f e0 a0 e1                                      mov lr, pc
0055f158  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0055f15c  00 30 95 e5                                      ldr r3, [r5]
0055f160  12 10 a0 e3                                      mov r1, #0x12
0055f164  00 80 a0 e1                                      mov r8, r0
0055f168  05 00 a0 e1                                      mov r0, r5
0055f16c  0f e0 a0 e1                                      mov lr, pc
0055f170  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0055f174  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0055f178  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0055f17c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0055f180  11 10 cd e5                                      strb r1, [sp, #0x11]
0055f184  12 20 cd e5                                      strb r2, [sp, #0x12]
0055f188  13 30 cd e5                                      strb r3, [sp, #0x13]
0055f18c  10 00 cd e5                                      strb r0, [sp, #0x10]
0055f190  10 30 9d e5                                      ldr r3, [sp, #0x10]
0055f194  fe af 0f e3                                      movw sl, #0xfffe
0055f198  ff af 4f e3                                      movt sl, #0xffff
0055f19c  5c 30 8d e5                                      str r3, [sp, #0x5c]
0055f1a0  03 30 86 e2                                      add r3, r6, #3
0055f1a4  0a a0 66 e0                                      rsb sl, r6, sl
0055f1a8  0c 30 8d e5                                      str r3, [sp, #0xc]
0055f1ac  30 90 94 e5                                      ldr sb, [r4, #0x30]
0055f1b0  28 30 94 e5                                      ldr r3, [r4, #0x28]
0055f1b4  50 71 94 e5                                      ldr r7, [r4, #0x150]
0055f1b8  04 90 49 e2                                      sub sb, sb, #4
0055f1bc  09 90 63 e0                                      rsb sb, r3, sb
0055f1c0  00 20 97 e5                                      ldr r2, [r7]
0055f1c4  09 90 66 e0                                      rsb sb, r6, sb
0055f1c8  06 30 89 e0                                      add r3, sb, r6
0055f1cc  78 b0 92 e5                                      ldr fp, [r2, #0x78]
0055f1d0  44 30 8d e5                                      str r3, [sp, #0x44]
0055f1d4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0055f1d8  03 20 a0 e3                                      mov r2, #3
0055f1dc  00 00 55 e3                                      cmp r5, #0
0055f1e0  40 20 8d e5                                      str r2, [sp, #0x40]
0055f1e4  3c 90 8d e5                                      str sb, [sp, #0x3c]
0055f1e8  48 30 8d e5                                      str r3, [sp, #0x48]
0055f1ec  16 01 00 0a                                      beq #0x55f64c
0055f1f0  00 30 95 e5                                      ldr r3, [r5]
0055f1f4  05 00 a0 e1                                      mov r0, r5
0055f1f8  04 10 a0 e3                                      mov r1, #4
0055f1fc  0f e0 a0 e1                                      mov lr, pc
0055f200  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055f204  5c 34 9f e5                                      ldr r3, [pc, #0x45c]
0055f208  04 20 a0 e1                                      mov r2, r4
0055f20c  04 00 8d e5                                      str r0, [sp, #4]
0055f210  03 30 8f e0                                      add r3, pc, r3
0055f214  07 00 a0 e1                                      mov r0, r7
0055f218  00 30 8d e5                                      str r3, [sp]
0055f21c  3c 10 8d e2                                      add r1, sp, #0x3c
0055f220  00 30 e0 e3                                      mvn r3, #0
0055f224  3b ff 2f e1                                      blx fp
0055f228  64 01 84 e5                                      str r0, [r4, #0x164]
0055f22c  00 30 90 e5                                      ldr r3, [r0]
0055f230  01 10 a0 e3                                      mov r1, #1
0055f234  0f e0 a0 e1                                      mov lr, pc
0055f238  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055f23c  64 31 94 e5                                      ldr r3, [r4, #0x164]
0055f240  00 70 a0 e3                                      mov r7, #0
0055f244  01 10 a0 e3                                      mov r1, #1
0055f248  34 71 c3 e5                                      strb r7, [r3, #0x134]
0055f24c  64 01 94 e5                                      ldr r0, [r4, #0x164]
0055f250  01 20 a0 e1                                      mov r2, r1
0055f254  07 30 a0 e1                                      mov r3, r7
0055f258  00 70 8d e5                                      str r7, [sp]
0055f25c  77 55 ff eb                                      bl #0x534840
0055f260  07 00 58 e1                                      cmp r8, r7
0055f264  25 00 00 0a                                      beq #0x55f300
0055f268  64 31 94 e5                                      ldr r3, [r4, #0x164]
0055f26c  08 10 a0 e1                                      mov r1, r8
0055f270  03 00 a0 e1                                      mov r0, r3
0055f274  00 30 93 e5                                      ldr r3, [r3]
0055f278  0f e0 a0 e1                                      mov lr, pc
0055f27c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0055f280  64 b1 94 e5                                      ldr fp, [r4, #0x164]
0055f284  00 20 95 e5                                      ldr r2, [r5]
0055f288  02 10 a0 e3                                      mov r1, #2
0055f28c  00 30 9b e5                                      ldr r3, [fp]
0055f290  05 00 a0 e1                                      mov r0, r5
0055f294  94 c0 93 e5                                      ldr ip, [r3, #0x94]
0055f298  08 c0 8d e5                                      str ip, [sp, #8]
0055f29c  0f e0 a0 e1                                      mov lr, pc
0055f2a0  38 f0 92 e5                                      ldr pc, [r2, #0x38]
0055f2a4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0055f2a8  00 20 a0 e1                                      mov r2, r0
0055f2ac  07 10 a0 e1                                      mov r1, r7
0055f2b0  0b 00 a0 e1                                      mov r0, fp
0055f2b4  08 c0 9d e5                                      ldr ip, [sp, #8]
0055f2b8  00 70 8d e5                                      str r7, [sp]
0055f2bc  3c ff 2f e1                                      blx ip
0055f2c0  64 b1 94 e5                                      ldr fp, [r4, #0x164]
0055f2c4  00 20 95 e5                                      ldr r2, [r5]
0055f2c8  02 10 a0 e3                                      mov r1, #2
0055f2cc  00 30 9b e5                                      ldr r3, [fp]
0055f2d0  05 00 a0 e1                                      mov r0, r5
0055f2d4  94 c0 93 e5                                      ldr ip, [r3, #0x94]
0055f2d8  08 c0 8d e5                                      str ip, [sp, #8]
0055f2dc  0f e0 a0 e1                                      mov lr, pc
0055f2e0  38 f0 92 e5                                      ldr pc, [r2, #0x38]
0055f2e4  00 70 8d e5                                      str r7, [sp]
0055f2e8  00 20 a0 e1                                      mov r2, r0
0055f2ec  01 10 a0 e3                                      mov r1, #1
0055f2f0  0b 00 a0 e1                                      mov r0, fp
0055f2f4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0055f2f8  08 c0 9d e5                                      ldr ip, [sp, #8]
0055f2fc  3c ff 2f e1                                      blx ip
0055f300  50 71 94 e5                                      ldr r7, [r4, #0x150]
0055f304  0a 90 89 e0                                      add sb, sb, sl
0055f308  06 30 89 e0                                      add r3, sb, r6
0055f30c  00 20 97 e5                                      ldr r2, [r7]
0055f310  00 00 55 e3                                      cmp r5, #0
0055f314  78 b0 92 e5                                      ldr fp, [r2, #0x78]
0055f318  34 30 8d e5                                      str r3, [sp, #0x34]
0055f31c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0055f320  03 20 a0 e3                                      mov r2, #3
0055f324  30 20 8d e5                                      str r2, [sp, #0x30]
0055f328  2c 90 8d e5                                      str sb, [sp, #0x2c]
0055f32c  38 30 8d e5                                      str r3, [sp, #0x38]
0055f330  c2 00 00 0a                                      beq #0x55f640
0055f334  00 30 95 e5                                      ldr r3, [r5]
0055f338  05 00 a0 e1                                      mov r0, r5
0055f33c  07 10 a0 e3                                      mov r1, #7
0055f340  0f e0 a0 e1                                      mov lr, pc
0055f344  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055f348  1c 33 9f e5                                      ldr r3, [pc, #0x31c]
0055f34c  04 20 a0 e1                                      mov r2, r4
0055f350  04 00 8d e5                                      str r0, [sp, #4]
0055f354  03 30 8f e0                                      add r3, pc, r3
0055f358  07 00 a0 e1                                      mov r0, r7
0055f35c  00 30 8d e5                                      str r3, [sp]
0055f360  2c 10 8d e2                                      add r1, sp, #0x2c
0055f364  00 30 e0 e3                                      mvn r3, #0
0055f368  3b ff 2f e1                                      blx fp
0055f36c  6c 01 84 e5                                      str r0, [r4, #0x16c]
0055f370  00 30 90 e5                                      ldr r3, [r0]
0055f374  00 10 a0 e3                                      mov r1, #0
0055f378  0f e0 a0 e1                                      mov lr, pc
0055f37c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0055f380  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
0055f384  01 10 a0 e3                                      mov r1, #1
0055f388  00 70 a0 e3                                      mov r7, #0
0055f38c  03 00 a0 e1                                      mov r0, r3
0055f390  00 30 93 e5                                      ldr r3, [r3]
0055f394  0f e0 a0 e1                                      mov lr, pc
0055f398  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055f39c  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
0055f3a0  01 10 a0 e3                                      mov r1, #1
0055f3a4  01 20 a0 e1                                      mov r2, r1
0055f3a8  34 71 c3 e5                                      strb r7, [r3, #0x134]
0055f3ac  6c 01 94 e5                                      ldr r0, [r4, #0x16c]
0055f3b0  07 30 a0 e1                                      mov r3, r7
0055f3b4  00 70 8d e5                                      str r7, [sp]
0055f3b8  20 55 ff eb                                      bl #0x534840
0055f3bc  07 00 58 e1                                      cmp r8, r7
0055f3c0  25 00 00 0a                                      beq #0x55f45c
0055f3c4  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
0055f3c8  08 10 a0 e1                                      mov r1, r8
0055f3cc  03 00 a0 e1                                      mov r0, r3
0055f3d0  00 30 93 e5                                      ldr r3, [r3]
0055f3d4  0f e0 a0 e1                                      mov lr, pc
0055f3d8  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0055f3dc  6c b1 94 e5                                      ldr fp, [r4, #0x16c]
0055f3e0  00 20 95 e5                                      ldr r2, [r5]
0055f3e4  01 10 a0 e3                                      mov r1, #1
0055f3e8  00 30 9b e5                                      ldr r3, [fp]
0055f3ec  05 00 a0 e1                                      mov r0, r5
0055f3f0  94 c0 93 e5                                      ldr ip, [r3, #0x94]
0055f3f4  08 c0 8d e5                                      str ip, [sp, #8]
0055f3f8  0f e0 a0 e1                                      mov lr, pc
0055f3fc  38 f0 92 e5                                      ldr pc, [r2, #0x38]
0055f400  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0055f404  00 20 a0 e1                                      mov r2, r0
0055f408  07 10 a0 e1                                      mov r1, r7
0055f40c  0b 00 a0 e1                                      mov r0, fp
0055f410  08 c0 9d e5                                      ldr ip, [sp, #8]
0055f414  00 70 8d e5                                      str r7, [sp]
0055f418  3c ff 2f e1                                      blx ip
0055f41c  6c b1 94 e5                                      ldr fp, [r4, #0x16c]
0055f420  00 20 95 e5                                      ldr r2, [r5]
0055f424  01 10 a0 e3                                      mov r1, #1
0055f428  00 30 9b e5                                      ldr r3, [fp]
0055f42c  05 00 a0 e1                                      mov r0, r5
0055f430  94 c0 93 e5                                      ldr ip, [r3, #0x94]
0055f434  08 c0 8d e5                                      str ip, [sp, #8]
0055f438  0f e0 a0 e1                                      mov lr, pc
0055f43c  38 f0 92 e5                                      ldr pc, [r2, #0x38]
0055f440  00 70 8d e5                                      str r7, [sp]
0055f444  00 20 a0 e1                                      mov r2, r0
0055f448  01 10 a0 e3                                      mov r1, #1
0055f44c  0b 00 a0 e1                                      mov r0, fp
0055f450  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0055f454  08 c0 9d e5                                      ldr ip, [sp, #8]
0055f458  3c ff 2f e1                                      blx ip
0055f45c  50 b1 94 e5                                      ldr fp, [r4, #0x150]
0055f460  0a 90 89 e0                                      add sb, sb, sl
0055f464  06 60 89 e0                                      add r6, sb, r6
0055f468  00 30 9b e5                                      ldr r3, [fp]
0055f46c  00 00 55 e3                                      cmp r5, #0
0055f470  78 70 93 e5                                      ldr r7, [r3, #0x78]
0055f474  03 30 a0 e3                                      mov r3, #3
0055f478  20 30 8d e5                                      str r3, [sp, #0x20]
0055f47c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0055f480  1c 90 8d e5                                      str sb, [sp, #0x1c]
0055f484  24 60 8d e5                                      str r6, [sp, #0x24]
0055f488  28 30 8d e5                                      str r3, [sp, #0x28]
0055f48c  68 00 00 0a                                      beq #0x55f634
0055f490  00 30 95 e5                                      ldr r3, [r5]
0055f494  05 00 a0 e1                                      mov r0, r5
0055f498  06 10 a0 e3                                      mov r1, #6
0055f49c  0f e0 a0 e1                                      mov lr, pc
0055f4a0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055f4a4  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
0055f4a8  04 20 a0 e1                                      mov r2, r4
0055f4ac  04 00 8d e5                                      str r0, [sp, #4]
0055f4b0  03 30 8f e0                                      add r3, pc, r3
0055f4b4  00 30 8d e5                                      str r3, [sp]
0055f4b8  1c 10 8d e2                                      add r1, sp, #0x1c
0055f4bc  00 30 e0 e3                                      mvn r3, #0
0055f4c0  0b 00 a0 e1                                      mov r0, fp
0055f4c4  37 ff 2f e1                                      blx r7
0055f4c8  68 01 84 e5                                      str r0, [r4, #0x168]
0055f4cc  00 30 90 e5                                      ldr r3, [r0]
0055f4d0  00 10 a0 e3                                      mov r1, #0
0055f4d4  0f e0 a0 e1                                      mov lr, pc
0055f4d8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0055f4dc  68 31 94 e5                                      ldr r3, [r4, #0x168]
0055f4e0  01 10 a0 e3                                      mov r1, #1
0055f4e4  00 60 a0 e3                                      mov r6, #0
0055f4e8  03 00 a0 e1                                      mov r0, r3
0055f4ec  00 30 93 e5                                      ldr r3, [r3]
0055f4f0  0f e0 a0 e1                                      mov lr, pc
0055f4f4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055f4f8  68 31 94 e5                                      ldr r3, [r4, #0x168]
0055f4fc  01 10 a0 e3                                      mov r1, #1
0055f500  01 20 a0 e1                                      mov r2, r1
0055f504  34 61 c3 e5                                      strb r6, [r3, #0x134]
0055f508  68 01 94 e5                                      ldr r0, [r4, #0x168]
0055f50c  06 30 a0 e1                                      mov r3, r6
0055f510  00 60 8d e5                                      str r6, [sp]
0055f514  c9 54 ff eb                                      bl #0x534840
0055f518  06 00 58 e1                                      cmp r8, r6
0055f51c  21 00 00 0a                                      beq #0x55f5a8
0055f520  68 31 94 e5                                      ldr r3, [r4, #0x168]
0055f524  08 10 a0 e1                                      mov r1, r8
0055f528  03 00 a0 e1                                      mov r0, r3
0055f52c  00 30 93 e5                                      ldr r3, [r3]
0055f530  0f e0 a0 e1                                      mov lr, pc
0055f534  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0055f538  68 81 94 e5                                      ldr r8, [r4, #0x168]
0055f53c  00 30 95 e5                                      ldr r3, [r5]
0055f540  03 10 a0 e3                                      mov r1, #3
0055f544  00 20 98 e5                                      ldr r2, [r8]
0055f548  05 00 a0 e1                                      mov r0, r5
0055f54c  94 70 92 e5                                      ldr r7, [r2, #0x94]
0055f550  0f e0 a0 e1                                      mov lr, pc
0055f554  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055f558  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0055f55c  00 20 a0 e1                                      mov r2, r0
0055f560  06 10 a0 e1                                      mov r1, r6
0055f564  08 00 a0 e1                                      mov r0, r8
0055f568  00 60 8d e5                                      str r6, [sp]
0055f56c  37 ff 2f e1                                      blx r7
0055f570  68 71 94 e5                                      ldr r7, [r4, #0x168]
0055f574  00 30 95 e5                                      ldr r3, [r5]
0055f578  05 00 a0 e1                                      mov r0, r5
0055f57c  00 20 97 e5                                      ldr r2, [r7]
0055f580  03 10 a0 e3                                      mov r1, #3
0055f584  94 50 92 e5                                      ldr r5, [r2, #0x94]
0055f588  0f e0 a0 e1                                      mov lr, pc
0055f58c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055f590  00 60 8d e5                                      str r6, [sp]
0055f594  00 20 a0 e1                                      mov r2, r0
0055f598  01 10 a0 e3                                      mov r1, #1
0055f59c  07 00 a0 e1                                      mov r0, r7
0055f5a0  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0055f5a4  35 ff 2f e1                                      blx r5
0055f5a8  68 21 94 e5                                      ldr r2, [r4, #0x168]
0055f5ac  01 30 a0 e3                                      mov r3, #1
0055f5b0  04 00 a0 e1                                      mov r0, r4
0055f5b4  00 10 92 e5                                      ldr r1, [r2]
0055f5b8  10 10 11 e5                                      ldr r1, [r1, #-0x10]
0055f5bc  01 20 82 e0                                      add r2, r2, r1
0055f5c0  04 10 92 e5                                      ldr r1, [r2, #4]
0055f5c4  03 10 81 e0                                      add r1, r1, r3
0055f5c8  04 10 82 e5                                      str r1, [r2, #4]
0055f5cc  6c 21 94 e5                                      ldr r2, [r4, #0x16c]
0055f5d0  00 10 92 e5                                      ldr r1, [r2]
0055f5d4  10 10 11 e5                                      ldr r1, [r1, #-0x10]
0055f5d8  01 20 82 e0                                      add r2, r2, r1
0055f5dc  04 10 92 e5                                      ldr r1, [r2, #4]
0055f5e0  03 10 81 e0                                      add r1, r1, r3
0055f5e4  04 10 82 e5                                      str r1, [r2, #4]
0055f5e8  64 21 94 e5                                      ldr r2, [r4, #0x164]
0055f5ec  00 10 92 e5                                      ldr r1, [r2]
0055f5f0  10 10 11 e5                                      ldr r1, [r1, #-0x10]
0055f5f4  01 20 82 e0                                      add r2, r2, r1
0055f5f8  04 10 92 e5                                      ldr r1, [r2, #4]
0055f5fc  03 10 81 e0                                      add r1, r1, r3
0055f600  04 10 82 e5                                      str r1, [r2, #4]
0055f604  34 31 c4 e5                                      strb r3, [r4, #0x134]
0055f608  3c 31 c4 e5                                      strb r3, [r4, #0x13c]
0055f60c  af fd ff eb                                      bl #0x55ecd0
0055f610  04 00 a0 e1                                      mov r0, r4
0055f614  64 d0 8d e2                                      add sp, sp, #0x64
0055f618  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055f61c  12 30 a0 e3                                      mov r3, #0x12
0055f620  10 a0 e0 e3                                      mvn sl, #0x10
0055f624  0c 30 8d e5                                      str r3, [sp, #0xc]
0055f628  0f 60 a0 e3                                      mov r6, #0xf
0055f62c  05 80 a0 e1                                      mov r8, r5
0055f630  dd fe ff ea                                      b #0x55f1ac
0055f634  38 00 9f e5                                      ldr r0, [pc, #0x38]
0055f638  00 00 8f e0                                      add r0, pc, r0
0055f63c  98 ff ff ea                                      b #0x55f4a4
0055f640  30 00 9f e5                                      ldr r0, [pc, #0x30]
0055f644  00 00 8f e0                                      add r0, pc, r0
0055f648  3e ff ff ea                                      b #0x55f348
0055f64c  28 00 9f e5                                      ldr r0, [pc, #0x28]
0055f650  00 00 8f e0                                      add r0, pc, r0
0055f654  ea fe ff ea                                      b #0x55f204
; mapping-symbol data/literal pool
0055f658  40 5a 43 00 b0 16 00 00 44 2b 00 00 34 15 00 00  .byte 0x40, 0x5a, 0x43, 0x00, 0xb0, 0x16, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x34, 0x15, 0x00, 0x00
0055f668  00 fa 35 00 bc f8 35 00 60 f7 35 00 a8 ef 37 00  .byte 0x00, 0xfa, 0x35, 0x00, 0xbc, 0xf8, 0x35, 0x00, 0x60, 0xf7, 0x35, 0x00, 0xa8, 0xef, 0x37, 0x00
0055f678  7c ef 37 00 20 eb 37 00                          .byte 0x7c, 0xef, 0x37, 0x00, 0x20, 0xeb, 0x37, 0x00

; FUNCTION 0x0055f680, declared_size=1520, range_size=1520, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZN6glitch3gui10CGUIWindowC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIWindow::CGUIWindow(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
0055f680  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055f684  64 d0 4d e2                                      sub sp, sp, #0x64
0055f688  8c c0 9d e5                                      ldr ip, [sp, #0x8c]
0055f68c  01 60 a0 e1                                      mov r6, r1
0055f690  04 10 81 e2                                      add r1, r1, #4
0055f694  00 50 9c e5                                      ldr r5, [ip]
0055f698  10 50 9c e9                                      ldmib ip, {r4, ip, lr}
0055f69c  4c 50 8d e5                                      str r5, [sp, #0x4c]
0055f6a0  50 40 8d e5                                      str r4, [sp, #0x50]
0055f6a4  54 c0 8d e5                                      str ip, [sp, #0x54]
0055f6a8  88 c0 9d e5                                      ldr ip, [sp, #0x88]
0055f6ac  00 40 a0 e1                                      mov r4, r0
0055f6b0  02 50 a0 e1                                      mov r5, r2
0055f6b4  00 c0 8d e5                                      str ip, [sp]
0055f6b8  4c c0 8d e2                                      add ip, sp, #0x4c
0055f6bc  58 e0 8d e5                                      str lr, [sp, #0x58]
0055f6c0  04 c0 8d e5                                      str ip, [sp, #4]
0055f6c4  ad fd ff eb                                      bl #0x55ed80
0055f6c8  00 20 96 e5                                      ldr r2, [r6]
0055f6cc  00 30 a0 e3                                      mov r3, #0
0055f6d0  00 00 55 e3                                      cmp r5, #0
0055f6d4  00 20 84 e5                                      str r2, [r4]
0055f6d8  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0055f6dc  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
0055f6e0  02 10 84 e7                                      str r1, [r4, r2]
0055f6e4  00 20 94 e5                                      ldr r2, [r4]
0055f6e8  20 10 96 e5                                      ldr r1, [r6, #0x20]
0055f6ec  10 20 12 e5                                      ldr r2, [r2, #-0x10]
0055f6f0  02 10 84 e7                                      str r1, [r4, r2]
0055f6f4  60 31 c4 e5                                      strb r3, [r4, #0x160]
0055f6f8  58 31 84 e5                                      str r3, [r4, #0x158]
0055f6fc  5c 31 84 e5                                      str r3, [r4, #0x15c]
0055f700  04 00 00 0a                                      beq #0x55f718
0055f704  05 00 a0 e1                                      mov r0, r5
0055f708  00 30 95 e5                                      ldr r3, [r5]
0055f70c  0f e0 a0 e1                                      mov lr, pc
0055f710  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055f714  00 50 a0 e1                                      mov r5, r0
0055f718  00 30 e0 e3                                      mvn r3, #0
0055f71c  00 00 55 e3                                      cmp r5, #0
0055f720  5f 30 cd e5                                      strb r3, [sp, #0x5f]
0055f724  5c 30 cd e5                                      strb r3, [sp, #0x5c]
0055f728  5d 30 cd e5                                      strb r3, [sp, #0x5d]
0055f72c  5e 30 cd e5                                      strb r3, [sp, #0x5e]
0055f730  39 01 00 0a                                      beq #0x55fc1c
0055f734  02 10 a0 e3                                      mov r1, #2
0055f738  00 30 95 e5                                      ldr r3, [r5]
0055f73c  05 00 a0 e1                                      mov r0, r5
0055f740  0f e0 a0 e1                                      mov lr, pc
0055f744  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0055f748  00 30 95 e5                                      ldr r3, [r5]
0055f74c  00 60 a0 e1                                      mov r6, r0
0055f750  05 00 a0 e1                                      mov r0, r5
0055f754  0f e0 a0 e1                                      mov lr, pc
0055f758  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0055f75c  00 30 95 e5                                      ldr r3, [r5]
0055f760  12 10 a0 e3                                      mov r1, #0x12
0055f764  00 80 a0 e1                                      mov r8, r0
0055f768  05 00 a0 e1                                      mov r0, r5
0055f76c  0f e0 a0 e1                                      mov lr, pc
0055f770  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0055f774  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0055f778  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0055f77c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0055f780  11 10 cd e5                                      strb r1, [sp, #0x11]
0055f784  12 20 cd e5                                      strb r2, [sp, #0x12]
0055f788  13 30 cd e5                                      strb r3, [sp, #0x13]
0055f78c  10 00 cd e5                                      strb r0, [sp, #0x10]
0055f790  10 30 9d e5                                      ldr r3, [sp, #0x10]
0055f794  fe af 0f e3                                      movw sl, #0xfffe
0055f798  ff af 4f e3                                      movt sl, #0xffff
0055f79c  5c 30 8d e5                                      str r3, [sp, #0x5c]
0055f7a0  03 30 86 e2                                      add r3, r6, #3
0055f7a4  0a a0 66 e0                                      rsb sl, r6, sl
0055f7a8  0c 30 8d e5                                      str r3, [sp, #0xc]
0055f7ac  30 90 94 e5                                      ldr sb, [r4, #0x30]
0055f7b0  28 30 94 e5                                      ldr r3, [r4, #0x28]
0055f7b4  50 71 94 e5                                      ldr r7, [r4, #0x150]
0055f7b8  04 90 49 e2                                      sub sb, sb, #4
0055f7bc  09 90 63 e0                                      rsb sb, r3, sb
0055f7c0  00 20 97 e5                                      ldr r2, [r7]
0055f7c4  09 90 66 e0                                      rsb sb, r6, sb
0055f7c8  06 30 89 e0                                      add r3, sb, r6
0055f7cc  78 b0 92 e5                                      ldr fp, [r2, #0x78]
0055f7d0  44 30 8d e5                                      str r3, [sp, #0x44]
0055f7d4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0055f7d8  03 20 a0 e3                                      mov r2, #3
0055f7dc  00 00 55 e3                                      cmp r5, #0
0055f7e0  40 20 8d e5                                      str r2, [sp, #0x40]
0055f7e4  3c 90 8d e5                                      str sb, [sp, #0x3c]
0055f7e8  48 30 8d e5                                      str r3, [sp, #0x48]
0055f7ec  16 01 00 0a                                      beq #0x55fc4c
0055f7f0  00 30 95 e5                                      ldr r3, [r5]
0055f7f4  05 00 a0 e1                                      mov r0, r5
0055f7f8  04 10 a0 e3                                      mov r1, #4
0055f7fc  0f e0 a0 e1                                      mov lr, pc
0055f800  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055f804  4c 34 9f e5                                      ldr r3, [pc, #0x44c]
0055f808  04 20 a0 e1                                      mov r2, r4
0055f80c  04 00 8d e5                                      str r0, [sp, #4]
0055f810  03 30 8f e0                                      add r3, pc, r3
0055f814  07 00 a0 e1                                      mov r0, r7
0055f818  00 30 8d e5                                      str r3, [sp]
0055f81c  3c 10 8d e2                                      add r1, sp, #0x3c
0055f820  00 30 e0 e3                                      mvn r3, #0
0055f824  3b ff 2f e1                                      blx fp
0055f828  64 01 84 e5                                      str r0, [r4, #0x164]
0055f82c  00 30 90 e5                                      ldr r3, [r0]
0055f830  01 10 a0 e3                                      mov r1, #1
0055f834  0f e0 a0 e1                                      mov lr, pc
0055f838  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055f83c  64 31 94 e5                                      ldr r3, [r4, #0x164]
0055f840  00 70 a0 e3                                      mov r7, #0
0055f844  01 10 a0 e3                                      mov r1, #1
0055f848  34 71 c3 e5                                      strb r7, [r3, #0x134]
0055f84c  64 01 94 e5                                      ldr r0, [r4, #0x164]
0055f850  01 20 a0 e1                                      mov r2, r1
0055f854  07 30 a0 e1                                      mov r3, r7
0055f858  00 70 8d e5                                      str r7, [sp]
0055f85c  f7 53 ff eb                                      bl #0x534840
0055f860  07 00 58 e1                                      cmp r8, r7
0055f864  25 00 00 0a                                      beq #0x55f900
0055f868  64 31 94 e5                                      ldr r3, [r4, #0x164]
0055f86c  08 10 a0 e1                                      mov r1, r8
0055f870  03 00 a0 e1                                      mov r0, r3
0055f874  00 30 93 e5                                      ldr r3, [r3]
0055f878  0f e0 a0 e1                                      mov lr, pc
0055f87c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0055f880  64 b1 94 e5                                      ldr fp, [r4, #0x164]
0055f884  00 20 95 e5                                      ldr r2, [r5]
0055f888  02 10 a0 e3                                      mov r1, #2
0055f88c  00 30 9b e5                                      ldr r3, [fp]
0055f890  05 00 a0 e1                                      mov r0, r5
0055f894  94 c0 93 e5                                      ldr ip, [r3, #0x94]
0055f898  08 c0 8d e5                                      str ip, [sp, #8]
0055f89c  0f e0 a0 e1                                      mov lr, pc
0055f8a0  38 f0 92 e5                                      ldr pc, [r2, #0x38]
0055f8a4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0055f8a8  00 20 a0 e1                                      mov r2, r0
0055f8ac  07 10 a0 e1                                      mov r1, r7
0055f8b0  0b 00 a0 e1                                      mov r0, fp
0055f8b4  08 c0 9d e5                                      ldr ip, [sp, #8]
0055f8b8  00 70 8d e5                                      str r7, [sp]
0055f8bc  3c ff 2f e1                                      blx ip
0055f8c0  64 b1 94 e5                                      ldr fp, [r4, #0x164]
0055f8c4  00 20 95 e5                                      ldr r2, [r5]
0055f8c8  02 10 a0 e3                                      mov r1, #2
0055f8cc  00 30 9b e5                                      ldr r3, [fp]
0055f8d0  05 00 a0 e1                                      mov r0, r5
0055f8d4  94 c0 93 e5                                      ldr ip, [r3, #0x94]
0055f8d8  08 c0 8d e5                                      str ip, [sp, #8]
0055f8dc  0f e0 a0 e1                                      mov lr, pc
0055f8e0  38 f0 92 e5                                      ldr pc, [r2, #0x38]
0055f8e4  00 70 8d e5                                      str r7, [sp]
0055f8e8  00 20 a0 e1                                      mov r2, r0
0055f8ec  01 10 a0 e3                                      mov r1, #1
0055f8f0  0b 00 a0 e1                                      mov r0, fp
0055f8f4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0055f8f8  08 c0 9d e5                                      ldr ip, [sp, #8]
0055f8fc  3c ff 2f e1                                      blx ip
0055f900  50 71 94 e5                                      ldr r7, [r4, #0x150]
0055f904  0a 90 89 e0                                      add sb, sb, sl
0055f908  06 30 89 e0                                      add r3, sb, r6
0055f90c  00 20 97 e5                                      ldr r2, [r7]
0055f910  00 00 55 e3                                      cmp r5, #0
0055f914  78 b0 92 e5                                      ldr fp, [r2, #0x78]
0055f918  34 30 8d e5                                      str r3, [sp, #0x34]
0055f91c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0055f920  03 20 a0 e3                                      mov r2, #3
0055f924  30 20 8d e5                                      str r2, [sp, #0x30]
0055f928  2c 90 8d e5                                      str sb, [sp, #0x2c]
0055f92c  38 30 8d e5                                      str r3, [sp, #0x38]
0055f930  c2 00 00 0a                                      beq #0x55fc40
0055f934  00 30 95 e5                                      ldr r3, [r5]
0055f938  05 00 a0 e1                                      mov r0, r5
0055f93c  07 10 a0 e3                                      mov r1, #7
0055f940  0f e0 a0 e1                                      mov lr, pc
0055f944  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055f948  0c 33 9f e5                                      ldr r3, [pc, #0x30c]
0055f94c  04 20 a0 e1                                      mov r2, r4
0055f950  04 00 8d e5                                      str r0, [sp, #4]
0055f954  03 30 8f e0                                      add r3, pc, r3
0055f958  07 00 a0 e1                                      mov r0, r7
0055f95c  00 30 8d e5                                      str r3, [sp]
0055f960  2c 10 8d e2                                      add r1, sp, #0x2c
0055f964  00 30 e0 e3                                      mvn r3, #0
0055f968  3b ff 2f e1                                      blx fp
0055f96c  6c 01 84 e5                                      str r0, [r4, #0x16c]
0055f970  00 30 90 e5                                      ldr r3, [r0]
0055f974  00 10 a0 e3                                      mov r1, #0
0055f978  0f e0 a0 e1                                      mov lr, pc
0055f97c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0055f980  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
0055f984  01 10 a0 e3                                      mov r1, #1
0055f988  00 70 a0 e3                                      mov r7, #0
0055f98c  03 00 a0 e1                                      mov r0, r3
0055f990  00 30 93 e5                                      ldr r3, [r3]
0055f994  0f e0 a0 e1                                      mov lr, pc
0055f998  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055f99c  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
0055f9a0  01 10 a0 e3                                      mov r1, #1
0055f9a4  01 20 a0 e1                                      mov r2, r1
0055f9a8  34 71 c3 e5                                      strb r7, [r3, #0x134]
0055f9ac  6c 01 94 e5                                      ldr r0, [r4, #0x16c]
0055f9b0  07 30 a0 e1                                      mov r3, r7
0055f9b4  00 70 8d e5                                      str r7, [sp]
0055f9b8  a0 53 ff eb                                      bl #0x534840
0055f9bc  07 00 58 e1                                      cmp r8, r7
0055f9c0  25 00 00 0a                                      beq #0x55fa5c
0055f9c4  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
0055f9c8  08 10 a0 e1                                      mov r1, r8
0055f9cc  03 00 a0 e1                                      mov r0, r3
0055f9d0  00 30 93 e5                                      ldr r3, [r3]
0055f9d4  0f e0 a0 e1                                      mov lr, pc
0055f9d8  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0055f9dc  6c b1 94 e5                                      ldr fp, [r4, #0x16c]
0055f9e0  00 20 95 e5                                      ldr r2, [r5]
0055f9e4  01 10 a0 e3                                      mov r1, #1
0055f9e8  00 30 9b e5                                      ldr r3, [fp]
0055f9ec  05 00 a0 e1                                      mov r0, r5
0055f9f0  94 c0 93 e5                                      ldr ip, [r3, #0x94]
0055f9f4  08 c0 8d e5                                      str ip, [sp, #8]
0055f9f8  0f e0 a0 e1                                      mov lr, pc
0055f9fc  38 f0 92 e5                                      ldr pc, [r2, #0x38]
0055fa00  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0055fa04  00 20 a0 e1                                      mov r2, r0
0055fa08  07 10 a0 e1                                      mov r1, r7
0055fa0c  0b 00 a0 e1                                      mov r0, fp
0055fa10  08 c0 9d e5                                      ldr ip, [sp, #8]
0055fa14  00 70 8d e5                                      str r7, [sp]
0055fa18  3c ff 2f e1                                      blx ip
0055fa1c  6c b1 94 e5                                      ldr fp, [r4, #0x16c]
0055fa20  00 20 95 e5                                      ldr r2, [r5]
0055fa24  01 10 a0 e3                                      mov r1, #1
0055fa28  00 30 9b e5                                      ldr r3, [fp]
0055fa2c  05 00 a0 e1                                      mov r0, r5
0055fa30  94 c0 93 e5                                      ldr ip, [r3, #0x94]
0055fa34  08 c0 8d e5                                      str ip, [sp, #8]
0055fa38  0f e0 a0 e1                                      mov lr, pc
0055fa3c  38 f0 92 e5                                      ldr pc, [r2, #0x38]
0055fa40  00 70 8d e5                                      str r7, [sp]
0055fa44  00 20 a0 e1                                      mov r2, r0
0055fa48  01 10 a0 e3                                      mov r1, #1
0055fa4c  0b 00 a0 e1                                      mov r0, fp
0055fa50  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0055fa54  08 c0 9d e5                                      ldr ip, [sp, #8]
0055fa58  3c ff 2f e1                                      blx ip
0055fa5c  50 b1 94 e5                                      ldr fp, [r4, #0x150]
0055fa60  0a 90 89 e0                                      add sb, sb, sl
0055fa64  06 60 89 e0                                      add r6, sb, r6
0055fa68  00 30 9b e5                                      ldr r3, [fp]
0055fa6c  00 00 55 e3                                      cmp r5, #0
0055fa70  78 70 93 e5                                      ldr r7, [r3, #0x78]
0055fa74  03 30 a0 e3                                      mov r3, #3
0055fa78  20 30 8d e5                                      str r3, [sp, #0x20]
0055fa7c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0055fa80  1c 90 8d e5                                      str sb, [sp, #0x1c]
0055fa84  24 60 8d e5                                      str r6, [sp, #0x24]
0055fa88  28 30 8d e5                                      str r3, [sp, #0x28]
0055fa8c  68 00 00 0a                                      beq #0x55fc34
0055fa90  00 30 95 e5                                      ldr r3, [r5]
0055fa94  05 00 a0 e1                                      mov r0, r5
0055fa98  06 10 a0 e3                                      mov r1, #6
0055fa9c  0f e0 a0 e1                                      mov lr, pc
0055faa0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055faa4  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
0055faa8  04 20 a0 e1                                      mov r2, r4
0055faac  04 00 8d e5                                      str r0, [sp, #4]
0055fab0  03 30 8f e0                                      add r3, pc, r3
0055fab4  00 30 8d e5                                      str r3, [sp]
0055fab8  1c 10 8d e2                                      add r1, sp, #0x1c
0055fabc  00 30 e0 e3                                      mvn r3, #0
0055fac0  0b 00 a0 e1                                      mov r0, fp
0055fac4  37 ff 2f e1                                      blx r7
0055fac8  68 01 84 e5                                      str r0, [r4, #0x168]
0055facc  00 30 90 e5                                      ldr r3, [r0]
0055fad0  00 10 a0 e3                                      mov r1, #0
0055fad4  0f e0 a0 e1                                      mov lr, pc
0055fad8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0055fadc  68 31 94 e5                                      ldr r3, [r4, #0x168]
0055fae0  01 10 a0 e3                                      mov r1, #1
0055fae4  00 60 a0 e3                                      mov r6, #0
0055fae8  03 00 a0 e1                                      mov r0, r3
0055faec  00 30 93 e5                                      ldr r3, [r3]
0055faf0  0f e0 a0 e1                                      mov lr, pc
0055faf4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055faf8  68 31 94 e5                                      ldr r3, [r4, #0x168]
0055fafc  01 10 a0 e3                                      mov r1, #1
0055fb00  01 20 a0 e1                                      mov r2, r1
0055fb04  34 61 c3 e5                                      strb r6, [r3, #0x134]
0055fb08  68 01 94 e5                                      ldr r0, [r4, #0x168]
0055fb0c  06 30 a0 e1                                      mov r3, r6
0055fb10  00 60 8d e5                                      str r6, [sp]
0055fb14  49 53 ff eb                                      bl #0x534840
0055fb18  06 00 58 e1                                      cmp r8, r6
0055fb1c  21 00 00 0a                                      beq #0x55fba8
0055fb20  68 31 94 e5                                      ldr r3, [r4, #0x168]
0055fb24  08 10 a0 e1                                      mov r1, r8
0055fb28  03 00 a0 e1                                      mov r0, r3
0055fb2c  00 30 93 e5                                      ldr r3, [r3]
0055fb30  0f e0 a0 e1                                      mov lr, pc
0055fb34  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0055fb38  68 81 94 e5                                      ldr r8, [r4, #0x168]
0055fb3c  00 30 95 e5                                      ldr r3, [r5]
0055fb40  03 10 a0 e3                                      mov r1, #3
0055fb44  00 20 98 e5                                      ldr r2, [r8]
0055fb48  05 00 a0 e1                                      mov r0, r5
0055fb4c  94 70 92 e5                                      ldr r7, [r2, #0x94]
0055fb50  0f e0 a0 e1                                      mov lr, pc
0055fb54  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055fb58  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0055fb5c  00 20 a0 e1                                      mov r2, r0
0055fb60  06 10 a0 e1                                      mov r1, r6
0055fb64  08 00 a0 e1                                      mov r0, r8
0055fb68  00 60 8d e5                                      str r6, [sp]
0055fb6c  37 ff 2f e1                                      blx r7
0055fb70  68 71 94 e5                                      ldr r7, [r4, #0x168]
0055fb74  00 30 95 e5                                      ldr r3, [r5]
0055fb78  05 00 a0 e1                                      mov r0, r5
0055fb7c  00 20 97 e5                                      ldr r2, [r7]
0055fb80  03 10 a0 e3                                      mov r1, #3
0055fb84  94 50 92 e5                                      ldr r5, [r2, #0x94]
0055fb88  0f e0 a0 e1                                      mov lr, pc
0055fb8c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055fb90  00 60 8d e5                                      str r6, [sp]
0055fb94  00 20 a0 e1                                      mov r2, r0
0055fb98  01 10 a0 e3                                      mov r1, #1
0055fb9c  07 00 a0 e1                                      mov r0, r7
0055fba0  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0055fba4  35 ff 2f e1                                      blx r5
0055fba8  68 21 94 e5                                      ldr r2, [r4, #0x168]
0055fbac  01 30 a0 e3                                      mov r3, #1
0055fbb0  04 00 a0 e1                                      mov r0, r4
0055fbb4  00 10 92 e5                                      ldr r1, [r2]
0055fbb8  10 10 11 e5                                      ldr r1, [r1, #-0x10]
0055fbbc  01 20 82 e0                                      add r2, r2, r1
0055fbc0  04 10 92 e5                                      ldr r1, [r2, #4]
0055fbc4  03 10 81 e0                                      add r1, r1, r3
0055fbc8  04 10 82 e5                                      str r1, [r2, #4]
0055fbcc  6c 21 94 e5                                      ldr r2, [r4, #0x16c]
0055fbd0  00 10 92 e5                                      ldr r1, [r2]
0055fbd4  10 10 11 e5                                      ldr r1, [r1, #-0x10]
0055fbd8  01 20 82 e0                                      add r2, r2, r1
0055fbdc  04 10 92 e5                                      ldr r1, [r2, #4]
0055fbe0  03 10 81 e0                                      add r1, r1, r3
0055fbe4  04 10 82 e5                                      str r1, [r2, #4]
0055fbe8  64 21 94 e5                                      ldr r2, [r4, #0x164]
0055fbec  00 10 92 e5                                      ldr r1, [r2]
0055fbf0  10 10 11 e5                                      ldr r1, [r1, #-0x10]
0055fbf4  01 20 82 e0                                      add r2, r2, r1
0055fbf8  04 10 92 e5                                      ldr r1, [r2, #4]
0055fbfc  03 10 81 e0                                      add r1, r1, r3
0055fc00  04 10 82 e5                                      str r1, [r2, #4]
0055fc04  34 31 c4 e5                                      strb r3, [r4, #0x134]
0055fc08  3c 31 c4 e5                                      strb r3, [r4, #0x13c]
0055fc0c  2f fc ff eb                                      bl #0x55ecd0
0055fc10  04 00 a0 e1                                      mov r0, r4
0055fc14  64 d0 8d e2                                      add sp, sp, #0x64
0055fc18  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055fc1c  12 30 a0 e3                                      mov r3, #0x12
0055fc20  10 a0 e0 e3                                      mvn sl, #0x10
0055fc24  0c 30 8d e5                                      str r3, [sp, #0xc]
0055fc28  0f 60 a0 e3                                      mov r6, #0xf
0055fc2c  05 80 a0 e1                                      mov r8, r5
0055fc30  dd fe ff ea                                      b #0x55f7ac
0055fc34  28 00 9f e5                                      ldr r0, [pc, #0x28]
0055fc38  00 00 8f e0                                      add r0, pc, r0
0055fc3c  98 ff ff ea                                      b #0x55faa4
0055fc40  20 00 9f e5                                      ldr r0, [pc, #0x20]
0055fc44  00 00 8f e0                                      add r0, pc, r0
0055fc48  3e ff ff ea                                      b #0x55f948
0055fc4c  18 00 9f e5                                      ldr r0, [pc, #0x18]
0055fc50  00 00 8f e0                                      add r0, pc, r0
0055fc54  ea fe ff ea                                      b #0x55f804
; mapping-symbol data/literal pool
0055fc58  00 f4 35 00 bc f2 35 00 60 f1 35 00 a8 e9 37 00  .byte 0x00, 0xf4, 0x35, 0x00, 0xbc, 0xf2, 0x35, 0x00, 0x60, 0xf1, 0x35, 0x00, 0xa8, 0xe9, 0x37, 0x00
0055fc68  7c e9 37 00 20 e5 37 00                          .byte 0x7c, 0xe9, 0x37, 0x00, 0x20, 0xe5, 0x37, 0x00

; FUNCTION 0x0055fc70, declared_size=208, range_size=208, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZN6glitch3gui10CGUIWindowD1Ev
; demangled: glitch::gui::CGUIWindow::~CGUIWindow()
; decoder-mode: arm
0055fc70  70 40 2d e9                                      push {r4, r5, r6, lr}
0055fc74  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
0055fc78  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0055fc7c  68 21 90 e5                                      ldr r2, [r0, #0x168]
0055fc80  05 50 8f e0                                      add r5, pc, r5
0055fc84  03 30 95 e7                                      ldr r3, [r5, r3]
0055fc88  00 40 a0 e1                                      mov r4, r0
0055fc8c  00 00 52 e3                                      cmp r2, #0
0055fc90  d0 10 83 e2                                      add r1, r3, #0xd0
0055fc94  10 00 83 e2                                      add r0, r3, #0x10
0055fc98  b0 30 83 e2                                      add r3, r3, #0xb0
0055fc9c  00 00 84 e5                                      str r0, [r4]
0055fca0  70 31 84 e5                                      str r3, [r4, #0x170]
0055fca4  74 11 84 e5                                      str r1, [r4, #0x174]
0055fca8  03 00 00 0a                                      beq #0x55fcbc
0055fcac  00 30 92 e5                                      ldr r3, [r2]
0055fcb0  10 00 13 e5                                      ldr r0, [r3, #-0x10]
0055fcb4  00 00 82 e0                                      add r0, r2, r0
0055fcb8  31 f6 f6 eb                                      bl #0x31d584
0055fcbc  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
0055fcc0  00 00 53 e3                                      cmp r3, #0
0055fcc4  03 00 00 0a                                      beq #0x55fcd8
0055fcc8  00 20 93 e5                                      ldr r2, [r3]
0055fccc  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0055fcd0  00 00 83 e0                                      add r0, r3, r0
0055fcd4  2a f6 f6 eb                                      bl #0x31d584
0055fcd8  64 31 94 e5                                      ldr r3, [r4, #0x164]
0055fcdc  00 00 53 e3                                      cmp r3, #0
0055fce0  03 00 00 0a                                      beq #0x55fcf4
0055fce4  00 20 93 e5                                      ldr r2, [r3]
0055fce8  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0055fcec  00 00 83 e0                                      add r0, r3, r0
0055fcf0  23 f6 f6 eb                                      bl #0x31d584
0055fcf4  40 30 9f e5                                      ldr r3, [pc, #0x40]
0055fcf8  04 00 a0 e1                                      mov r0, r4
0055fcfc  03 10 95 e7                                      ldr r1, [r5, r3]
0055fd00  04 30 91 e5                                      ldr r3, [r1, #4]
0055fd04  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0055fd08  18 20 91 e5                                      ldr r2, [r1, #0x18]
0055fd0c  00 30 84 e5                                      str r3, [r4]
0055fd10  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055fd14  08 10 81 e2                                      add r1, r1, #8
0055fd18  03 c0 84 e7                                      str ip, [r4, r3]
0055fd1c  00 30 94 e5                                      ldr r3, [r4]
0055fd20  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0055fd24  03 20 84 e7                                      str r2, [r4, r3]
0055fd28  bc 64 ff eb                                      bl #0x539020
0055fd2c  04 00 a0 e1                                      mov r0, r4
0055fd30  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0055fd34  10 4e 43 00 34 15 00 00 b0 16 00 00              .byte 0x10, 0x4e, 0x43, 0x00, 0x34, 0x15, 0x00, 0x00, 0xb0, 0x16, 0x00, 0x00

; FUNCTION 0x0055fd40, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZN6glitch3gui10CGUIWindowD0Ev
; demangled: glitch::gui::CGUIWindow::~CGUIWindow()
; decoder-mode: arm
0055fd40  10 40 2d e9                                      push {r4, lr}
0055fd44  00 40 a0 e1                                      mov r4, r0
0055fd48  c8 ff ff eb                                      bl #0x55fc70
0055fd4c  04 00 a0 e1                                      mov r0, r4
0055fd50  56 b9 f6 eb                                      bl #0x30e2b0
0055fd54  04 00 a0 e1                                      mov r0, r4
0055fd58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0055fd5c, declared_size=192, range_size=192, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZN6glitch3gui10CGUIWindowD2Ev
; demangled: glitch::gui::CGUIWindow::~CGUIWindow()
; decoder-mode: arm
0055fd5c  70 40 2d e9                                      push {r4, r5, r6, lr}
0055fd60  00 30 91 e5                                      ldr r3, [r1]
0055fd64  01 50 a0 e1                                      mov r5, r1
0055fd68  00 40 a0 e1                                      mov r4, r0
0055fd6c  00 30 80 e5                                      str r3, [r0]
0055fd70  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055fd74  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
0055fd78  03 20 80 e7                                      str r2, [r0, r3]
0055fd7c  00 30 90 e5                                      ldr r3, [r0]
0055fd80  20 20 91 e5                                      ldr r2, [r1, #0x20]
0055fd84  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0055fd88  03 20 80 e7                                      str r2, [r0, r3]
0055fd8c  68 31 90 e5                                      ldr r3, [r0, #0x168]
0055fd90  00 00 53 e3                                      cmp r3, #0
0055fd94  03 00 00 0a                                      beq #0x55fda8
0055fd98  00 20 93 e5                                      ldr r2, [r3]
0055fd9c  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0055fda0  00 00 83 e0                                      add r0, r3, r0
0055fda4  f6 f5 f6 eb                                      bl #0x31d584
0055fda8  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
0055fdac  00 00 53 e3                                      cmp r3, #0
0055fdb0  03 00 00 0a                                      beq #0x55fdc4
0055fdb4  00 20 93 e5                                      ldr r2, [r3]
0055fdb8  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0055fdbc  00 00 83 e0                                      add r0, r3, r0
0055fdc0  ef f5 f6 eb                                      bl #0x31d584
0055fdc4  64 31 94 e5                                      ldr r3, [r4, #0x164]
0055fdc8  00 00 53 e3                                      cmp r3, #0
0055fdcc  03 00 00 0a                                      beq #0x55fde0
0055fdd0  00 20 93 e5                                      ldr r2, [r3]
0055fdd4  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0055fdd8  00 00 83 e0                                      add r0, r3, r0
0055fddc  e8 f5 f6 eb                                      bl #0x31d584
0055fde0  04 30 95 e5                                      ldr r3, [r5, #4]
0055fde4  04 50 85 e2                                      add r5, r5, #4
0055fde8  04 10 85 e2                                      add r1, r5, #4
0055fdec  00 30 84 e5                                      str r3, [r4]
0055fdf0  10 20 95 e5                                      ldr r2, [r5, #0x10]
0055fdf4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055fdf8  04 00 a0 e1                                      mov r0, r4
0055fdfc  03 20 84 e7                                      str r2, [r4, r3]
0055fe00  00 30 94 e5                                      ldr r3, [r4]
0055fe04  14 20 95 e5                                      ldr r2, [r5, #0x14]
0055fe08  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0055fe0c  03 20 84 e7                                      str r2, [r4, r3]
0055fe10  82 64 ff eb                                      bl #0x539020
0055fe14  04 00 a0 e1                                      mov r0, r4
0055fe18  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0055fe1c, declared_size=624, range_size=624, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZN6glitch3gui10CGUIWindow7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIWindow::onEvent(glitch::SEvent const&)
; decoder-mode: arm
0055fe1c  70 40 2d e9                                      push {r4, r5, r6, lr}
0055fe20  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
0055fe24  20 d0 4d e2                                      sub sp, sp, #0x20
0055fe28  00 40 a0 e1                                      mov r4, r0
0055fe2c  00 00 53 e3                                      cmp r3, #0
0055fe30  01 50 a0 e1                                      mov r5, r1
0055fe34  06 00 00 0a                                      beq #0x55fe54
0055fe38  00 60 91 e5                                      ldr r6, [r1]
0055fe3c  00 00 56 e3                                      cmp r6, #0
0055fe40  0d 00 00 1a                                      bne #0x55fe7c
0055fe44  10 30 91 e5                                      ldr r3, [r1, #0x10]
0055fe48  00 00 53 e3                                      cmp r3, #0
0055fe4c  60 31 c0 05                                      strbeq r3, [r0, #0x160]
0055fe50  24 00 00 1a                                      bne #0x55fee8
0055fe54  24 30 94 e5                                      ldr r3, [r4, #0x24]
0055fe58  00 00 53 e3                                      cmp r3, #0
0055fe5c  3a 00 00 0a                                      beq #0x55ff4c
0055fe60  03 00 a0 e1                                      mov r0, r3
0055fe64  05 10 a0 e1                                      mov r1, r5
0055fe68  00 30 93 e5                                      ldr r3, [r3]
0055fe6c  0f e0 a0 e1                                      mov lr, pc
0055fe70  08 f0 93 e5                                      ldr pc, [r3, #8]
0055fe74  20 d0 8d e2                                      add sp, sp, #0x20
0055fe78  70 80 bd e8                                      pop {r4, r5, r6, pc}
0055fe7c  01 00 56 e3                                      cmp r6, #1
0055fe80  f3 ff ff 1a                                      bne #0x55fe54
0055fe84  14 30 91 e5                                      ldr r3, [r1, #0x14]
0055fe88  03 00 53 e3                                      cmp r3, #3
0055fe8c  00 30 a0 03                                      moveq r3, #0
0055fe90  60 31 c0 05                                      strbeq r3, [r0, #0x160]
0055fe94  06 00 a0 01                                      moveq r0, r6
0055fe98  f5 ff ff 0a                                      beq #0x55fe74
0055fe9c  06 00 53 e3                                      cmp r3, #6
0055fea0  2b 00 00 0a                                      beq #0x55ff54
0055fea4  00 00 53 e3                                      cmp r3, #0
0055fea8  e9 ff ff 1a                                      bne #0x55fe54
0055feac  08 20 91 e5                                      ldr r2, [r1, #8]
0055feb0  24 30 94 e5                                      ldr r3, [r4, #0x24]
0055feb4  58 21 84 e5                                      str r2, [r4, #0x158]
0055feb8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0055febc  00 00 53 e3                                      cmp r3, #0
0055fec0  60 61 c4 e5                                      strb r6, [r4, #0x160]
0055fec4  5c 21 84 e5                                      str r2, [r4, #0x15c]
0055fec8  1d 00 00 0a                                      beq #0x55ff44
0055fecc  03 00 a0 e1                                      mov r0, r3
0055fed0  04 10 a0 e1                                      mov r1, r4
0055fed4  00 30 93 e5                                      ldr r3, [r3]
0055fed8  0f e0 a0 e1                                      mov lr, pc
0055fedc  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0055fee0  06 00 a0 e1                                      mov r0, r6
0055fee4  e2 ff ff ea                                      b #0x55fe74
0055fee8  01 00 53 e3                                      cmp r3, #1
0055feec  43 00 00 0a                                      beq #0x560000
0055fef0  05 00 53 e3                                      cmp r3, #5
0055fef4  d6 ff ff 1a                                      bne #0x55fe54
0055fef8  08 20 91 e5                                      ldr r2, [r1, #8]
0055fefc  64 31 90 e5                                      ldr r3, [r0, #0x164]
0055ff00  03 00 52 e1                                      cmp r2, r3
0055ff04  d2 ff ff 1a                                      bne #0x55fe54
0055ff08  24 30 90 e5                                      ldr r3, [r0, #0x24]
0055ff0c  00 00 53 e3                                      cmp r3, #0
0055ff10  58 00 00 0a                                      beq #0x560078
0055ff14  04 20 a0 e3                                      mov r2, #4
0055ff18  08 00 8d e5                                      str r0, [sp, #8]
0055ff1c  0c 60 8d e5                                      str r6, [sp, #0xc]
0055ff20  10 20 8d e5                                      str r2, [sp, #0x10]
0055ff24  00 60 8d e5                                      str r6, [sp]
0055ff28  03 00 a0 e1                                      mov r0, r3
0055ff2c  0d 10 a0 e1                                      mov r1, sp
0055ff30  00 30 93 e5                                      ldr r3, [r3]
0055ff34  0f e0 a0 e1                                      mov lr, pc
0055ff38  08 f0 93 e5                                      ldr pc, [r3, #8]
0055ff3c  00 00 50 e3                                      cmp r0, #0
0055ff40  28 00 00 0a                                      beq #0x55ffe8
0055ff44  01 00 a0 e3                                      mov r0, #1
0055ff48  c9 ff ff ea                                      b #0x55fe74
0055ff4c  00 00 a0 e3                                      mov r0, #0
0055ff50  c7 ff ff ea                                      b #0x55fe74
0055ff54  60 31 d4 e5                                      ldrb r3, [r4, #0x160]
0055ff58  00 00 53 e3                                      cmp r3, #0
0055ff5c  bc ff ff 0a                                      beq #0x55fe54
0055ff60  24 30 94 e5                                      ldr r3, [r4, #0x24]
0055ff64  00 00 53 e3                                      cmp r3, #0
0055ff68  3f 00 00 0a                                      beq #0x56006c
0055ff6c  38 10 93 e5                                      ldr r1, [r3, #0x38]
0055ff70  08 20 95 e5                                      ldr r2, [r5, #8]
0055ff74  01 00 52 e1                                      cmp r2, r1
0055ff78  f1 ff ff da                                      ble #0x55ff44
0055ff7c  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
0055ff80  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0055ff84  00 00 51 e1                                      cmp r1, r0
0055ff88  ed ff ff da                                      ble #0x55ff44
0055ff8c  40 00 93 e5                                      ldr r0, [r3, #0x40]
0055ff90  00 00 52 e1                                      cmp r2, r0
0055ff94  ea ff ff aa                                      bge #0x55ff44
0055ff98  44 30 93 e5                                      ldr r3, [r3, #0x44]
0055ff9c  03 00 51 e1                                      cmp r1, r3
0055ffa0  e7 ff ff aa                                      bge #0x55ff44
0055ffa4  58 01 94 e5                                      ldr r0, [r4, #0x158]
0055ffa8  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
0055ffac  00 30 94 e5                                      ldr r3, [r4]
0055ffb0  02 20 60 e0                                      rsb r2, r0, r2
0055ffb4  01 10 6c e0                                      rsb r1, ip, r1
0055ffb8  28 30 93 e5                                      ldr r3, [r3, #0x28]
0055ffbc  04 00 a0 e1                                      mov r0, r4
0055ffc0  1c 10 8d e5                                      str r1, [sp, #0x1c]
0055ffc4  18 20 8d e5                                      str r2, [sp, #0x18]
0055ffc8  18 10 8d e2                                      add r1, sp, #0x18
0055ffcc  33 ff 2f e1                                      blx r3
0055ffd0  08 30 95 e5                                      ldr r3, [r5, #8]
0055ffd4  01 00 a0 e3                                      mov r0, #1
0055ffd8  58 31 84 e5                                      str r3, [r4, #0x158]
0055ffdc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0055ffe0  5c 31 84 e5                                      str r3, [r4, #0x15c]
0055ffe4  a2 ff ff ea                                      b #0x55fe74
0055ffe8  04 00 a0 e1                                      mov r0, r4
0055ffec  00 30 94 e5                                      ldr r3, [r4]
0055fff0  0f e0 a0 e1                                      mov lr, pc
0055fff4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055fff8  01 00 a0 e3                                      mov r0, #1
0055fffc  9c ff ff ea                                      b #0x55fe74
00560000  24 30 90 e5                                      ldr r3, [r0, #0x24]
00560004  00 00 53 e3                                      cmp r3, #0
00560008  cf ff ff 0a                                      beq #0x55ff4c
0056000c  08 00 91 e5                                      ldr r0, [r1, #8]
00560010  04 00 50 e1                                      cmp r0, r4
00560014  0e 00 00 0a                                      beq #0x560054
00560018  00 00 50 e3                                      cmp r0, #0
0056001c  8f ff ff 0a                                      beq #0x55fe60
00560020  24 20 90 e5                                      ldr r2, [r0, #0x24]
00560024  05 00 00 ea                                      b #0x560040
00560028  24 10 92 e5                                      ldr r1, [r2, #0x24]
0056002c  02 00 a0 e1                                      mov r0, r2
00560030  04 00 52 e1                                      cmp r2, r4
00560034  00 00 51 13                                      cmpne r1, #0
00560038  03 00 00 0a                                      beq #0x56004c
0056003c  01 20 a0 e1                                      mov r2, r1
00560040  00 00 52 e3                                      cmp r2, #0
00560044  f7 ff ff 1a                                      bne #0x560028
00560048  00 20 a0 e1                                      mov r2, r0
0056004c  02 00 54 e1                                      cmp r4, r2
00560050  82 ff ff 1a                                      bne #0x55fe60
00560054  03 00 a0 e1                                      mov r0, r3
00560058  04 10 a0 e1                                      mov r1, r4
0056005c  00 30 93 e5                                      ldr r3, [r3]
00560060  0f e0 a0 e1                                      mov lr, pc
00560064  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00560068  79 ff ff ea                                      b #0x55fe54
0056006c  08 20 91 e5                                      ldr r2, [r1, #8]
00560070  0c 10 91 e5                                      ldr r1, [r1, #0xc]
00560074  ca ff ff ea                                      b #0x55ffa4
00560078  00 30 90 e5                                      ldr r3, [r0]
0056007c  0f e0 a0 e1                                      mov lr, pc
00560080  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00560084  01 00 a0 e3                                      mov r0, #1
00560088  79 ff ff ea                                      b #0x55fe74

; FUNCTION 0x0056008c, declared_size=516, range_size=516, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZN6glitch3gui10CGUIWindow4drawEv
; demangled: glitch::gui::CGUIWindow::draw()
; decoder-mode: arm
0056008c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00560090  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00560094  40 d0 4d e2                                      sub sp, sp, #0x40
00560098  00 40 a0 e1                                      mov r4, r0
0056009c  00 00 53 e3                                      cmp r3, #0
005600a0  01 00 00 1a                                      bne #0x5600ac
005600a4  40 d0 8d e2                                      add sp, sp, #0x40
005600a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005600ac  50 31 90 e5                                      ldr r3, [r0, #0x150]
005600b0  48 60 80 e2                                      add r6, r0, #0x48
005600b4  03 00 a0 e1                                      mov r0, r3
005600b8  00 30 93 e5                                      ldr r3, [r3]
005600bc  0f e0 a0 e1                                      mov lr, pc
005600c0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005600c4  38 c0 94 e5                                      ldr ip, [r4, #0x38]
005600c8  3c 10 84 e2                                      add r1, r4, #0x3c
005600cc  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
005600d0  28 c0 8d e5                                      str ip, [sp, #0x28]
005600d4  2c 10 8d e5                                      str r1, [sp, #0x2c]
005600d8  30 20 8d e5                                      str r2, [sp, #0x30]
005600dc  34 30 8d e5                                      str r3, [sp, #0x34]
005600e0  00 30 90 e5                                      ldr r3, [r0]
005600e4  05 10 a0 e3                                      mov r1, #5
005600e8  00 50 a0 e1                                      mov r5, r0
005600ec  4c 70 93 e5                                      ldr r7, [r3, #0x4c]
005600f0  0f e0 a0 e1                                      mov lr, pc
005600f4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005600f8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005600fc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00560100  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00560104  11 10 cd e5                                      strb r1, [sp, #0x11]
00560108  12 20 cd e5                                      strb r2, [sp, #0x12]
0056010c  10 00 cd e5                                      strb r0, [sp, #0x10]
00560110  13 30 cd e5                                      strb r3, [sp, #0x13]
00560114  10 30 9d e5                                      ldr r3, [sp, #0x10]
00560118  38 20 84 e2                                      add r2, r4, #0x38
0056011c  04 20 8d e5                                      str r2, [sp, #4]
00560120  00 30 8d e5                                      str r3, [sp]
00560124  3c 30 8d e5                                      str r3, [sp, #0x3c]
00560128  04 20 a0 e1                                      mov r2, r4
0056012c  01 30 a0 e3                                      mov r3, #1
00560130  08 60 8d e5                                      str r6, [sp, #8]
00560134  18 00 8d e2                                      add r0, sp, #0x18
00560138  05 10 a0 e1                                      mov r1, r5
0056013c  37 ff 2f e1                                      blx r7
00560140  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
00560144  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
00560148  18 70 9d e5                                      ldr r7, [sp, #0x18]
0056014c  02 30 63 e0                                      rsb r3, r3, r2
00560150  23 31 b0 e1                                      lsrs r3, r3, #2
00560154  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00560158  28 70 8d e5                                      str r7, [sp, #0x28]
0056015c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00560160  20 30 9d e5                                      ldr r3, [sp, #0x20]
00560164  30 30 8d e5                                      str r3, [sp, #0x30]
00560168  24 30 9d e5                                      ldr r3, [sp, #0x24]
0056016c  34 30 8d e5                                      str r3, [sp, #0x34]
00560170  0d 00 00 1a                                      bne #0x5601ac
00560174  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
00560178  00 00 53 e3                                      cmp r3, #0
0056017c  04 50 b4 15                                      ldrne r5, [r4, #4]!
00560180  06 00 00 1a                                      bne #0x5601a0
00560184  c6 ff ff ea                                      b #0x5600a4
00560188  08 30 95 e5                                      ldr r3, [r5, #8]
0056018c  03 00 a0 e1                                      mov r0, r3
00560190  00 30 93 e5                                      ldr r3, [r3]
00560194  0f e0 a0 e1                                      mov lr, pc
00560198  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0056019c  00 50 95 e5                                      ldr r5, [r5]
005601a0  04 00 55 e1                                      cmp r5, r4
005601a4  f7 ff ff 1a                                      bne #0x560188
005601a8  bd ff ff ea                                      b #0x5600a4
005601ac  08 10 a0 e3                                      mov r1, #8
005601b0  00 30 95 e5                                      ldr r3, [r5]
005601b4  05 00 a0 e1                                      mov r0, r5
005601b8  0f e0 a0 e1                                      mov lr, pc
005601bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005601c0  07 00 80 e0                                      add r0, r0, r7
005601c4  28 00 8d e5                                      str r0, [sp, #0x28]
005601c8  09 10 a0 e3                                      mov r1, #9
005601cc  00 30 95 e5                                      ldr r3, [r5]
005601d0  05 00 a0 e1                                      mov r0, r5
005601d4  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005601d8  0f e0 a0 e1                                      mov lr, pc
005601dc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005601e0  07 00 80 e0                                      add r0, r0, r7
005601e4  2c 00 8d e5                                      str r0, [sp, #0x2c]
005601e8  02 10 a0 e3                                      mov r1, #2
005601ec  00 30 95 e5                                      ldr r3, [r5]
005601f0  05 00 a0 e1                                      mov r0, r5
005601f4  30 70 9d e5                                      ldr r7, [sp, #0x30]
005601f8  0f e0 a0 e1                                      mov lr, pc
005601fc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00560200  05 70 87 e2                                      add r7, r7, #5
00560204  07 70 60 e0                                      rsb r7, r0, r7
00560208  30 70 8d e5                                      str r7, [sp, #0x30]
0056020c  00 30 95 e5                                      ldr r3, [r5]
00560210  05 00 a0 e1                                      mov r0, r5
00560214  02 10 a0 e3                                      mov r1, #2
00560218  0f e0 a0 e1                                      mov lr, pc
0056021c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00560220  00 70 50 e2                                      subs r7, r0, #0
00560224  d2 ff ff 0a                                      beq #0x560174
00560228  00 20 97 e5                                      ldr r2, [r7]
0056022c  00 30 95 e5                                      ldr r3, [r5]
00560230  05 00 a0 e1                                      mov r0, r5
00560234  06 10 a0 e3                                      mov r1, #6
00560238  0c 50 92 e5                                      ldr r5, [r2, #0xc]
0056023c  e4 80 94 e5                                      ldr r8, [r4, #0xe4]
00560240  0f e0 a0 e1                                      mov lr, pc
00560244  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00560248  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0056024c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00560250  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00560254  11 10 cd e5                                      strb r1, [sp, #0x11]
00560258  12 20 cd e5                                      strb r2, [sp, #0x12]
0056025c  10 00 cd e5                                      strb r0, [sp, #0x10]
00560260  13 30 cd e5                                      strb r3, [sp, #0x13]
00560264  10 30 9d e5                                      ldr r3, [sp, #0x10]
00560268  00 20 a0 e3                                      mov r2, #0
0056026c  00 20 8d e5                                      str r2, [sp]
00560270  01 20 a0 e3                                      mov r2, #1
00560274  44 00 8d e9                                      stmib sp, {r2, r6}
00560278  38 30 8d e5                                      str r3, [sp, #0x38]
0056027c  07 00 a0 e1                                      mov r0, r7
00560280  08 10 a0 e1                                      mov r1, r8
00560284  28 20 8d e2                                      add r2, sp, #0x28
00560288  35 ff 2f e1                                      blx r5
0056028c  b8 ff ff ea                                      b #0x560174

; FUNCTION 0x00560290, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZTv0_n24_N6glitch3gui10CGUIWindowD0Ev
; demangled: virtual thunk to glitch::gui::CGUIWindow::~CGUIWindow()
; decoder-mode: arm
00560290  00 30 90 e5                                      ldr r3, [r0]
00560294  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00560298  03 00 80 e0                                      add r0, r0, r3
0056029c  a7 fe ff ea                                      b #0x55fd40

; FUNCTION 0x005602a0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZTv0_n12_N6glitch3gui10CGUIWindowD0Ev
; demangled: virtual thunk to glitch::gui::CGUIWindow::~CGUIWindow()
; decoder-mode: arm
005602a0  00 30 90 e5                                      ldr r3, [r0]
005602a4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005602a8  03 00 80 e0                                      add r0, r0, r3
005602ac  a3 fe ff ea                                      b #0x55fd40

; FUNCTION 0x005602b0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZTv0_n24_N6glitch3gui10CGUIWindowD1Ev
; demangled: virtual thunk to glitch::gui::CGUIWindow::~CGUIWindow()
; decoder-mode: arm
005602b0  00 30 90 e5                                      ldr r3, [r0]
005602b4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005602b8  03 00 80 e0                                      add r0, r0, r3
005602bc  6b fe ff ea                                      b #0x55fc70

; FUNCTION 0x005602c0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZTv0_n12_N6glitch3gui10CGUIWindowD1Ev
; demangled: virtual thunk to glitch::gui::CGUIWindow::~CGUIWindow()
; decoder-mode: arm
005602c0  00 30 90 e5                                      ldr r3, [r0]
005602c4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005602c8  03 00 80 e0                                      add r0, r0, r3
005602cc  67 fe ff ea                                      b #0x55fc70
