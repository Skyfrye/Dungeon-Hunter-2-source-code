; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0054e194, declared_size=728, range_size=728, mode=arm
; class-group: glitch::gui::IGUISpinBox
; alias: _ZN6glitch3gui11IGUISpinBoxC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUISpinBox::IGUISpinBox(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
0054e194  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0054e198  c4 e2 9f e5                                      ldr lr, [pc, #0x2c4]
0054e19c  c4 52 9f e5                                      ldr r5, [pc, #0x2c4]
0054e1a0  24 d0 4d e2                                      sub sp, sp, #0x24
0054e1a4  0e e0 8f e0                                      add lr, pc, lr
0054e1a8  05 50 9e e7                                      ldr r5, [lr, r5]
0054e1ac  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0054e1b0  00 40 a0 e1                                      mov r4, r0
0054e1b4  08 00 85 e2                                      add r0, r5, #8
0054e1b8  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0054e1bc  00 70 9c e5                                      ldr r7, [ip]
0054e1c0  40 01 9c e9                                      ldmib ip, {r6, r8}
0054e1c4  00 00 84 e5                                      str r0, [r4]
0054e1c8  04 00 91 e5                                      ldr r0, [r1, #4]
0054e1cc  01 50 a0 e1                                      mov r5, r1
0054e1d0  04 10 81 e2                                      add r1, r1, #4
0054e1d4  00 00 84 e5                                      str r0, [r4]
0054e1d8  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0054e1dc  0c c0 84 e2                                      add ip, r4, #0xc
0054e1e0  18 00 8d e5                                      str r0, [sp, #0x18]
0054e1e4  04 00 84 e2                                      add r0, r4, #4
0054e1e8  04 00 8d e5                                      str r0, [sp, #4]
0054e1ec  04 b0 91 e5                                      ldr fp, [r1, #4]
0054e1f0  18 90 9d e5                                      ldr sb, [sp, #0x18]
0054e1f4  0c 00 a0 e1                                      mov r0, ip
0054e1f8  09 b0 84 e7                                      str fp, [r4, sb]
0054e1fc  08 10 91 e5                                      ldr r1, [r1, #8]
0054e200  00 90 94 e5                                      ldr sb, [r4]
0054e204  1c 10 8d e5                                      str r1, [sp, #0x1c]
0054e208  10 90 19 e5                                      ldr sb, [sb, #-0x10]
0054e20c  0c 20 8d e5                                      str r2, [sp, #0xc]
0054e210  10 10 a0 e3                                      mov r1, #0x10
0054e214  18 90 8d e5                                      str sb, [sp, #0x18]
0054e218  18 20 9d e5                                      ldr r2, [sp, #0x18]
0054e21c  03 90 a0 e1                                      mov sb, r3
0054e220  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0054e224  02 30 84 e7                                      str r3, [r4, r2]
0054e228  04 b0 9d e5                                      ldr fp, [sp, #4]
0054e22c  1c c0 84 e5                                      str ip, [r4, #0x1c]
0054e230  20 c0 84 e5                                      str ip, [r4, #0x20]
0054e234  08 b0 84 e5                                      str fp, [r4, #8]
0054e238  04 b0 84 e5                                      str fp, [r4, #4]
0054e23c  d9 49 f7 eb                                      bl #0x3209a8
0054e240  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
0054e244  00 b0 a0 e3                                      mov fp, #0
0054e248  00 00 a0 e3                                      mov r0, #0
0054e24c  01 10 a0 e3                                      mov r1, #1
0054e250  a0 30 84 e2                                      add r3, r4, #0xa0
0054e254  00 b0 cc e5                                      strb fp, [ip]
0054e258  84 00 84 e5                                      str r0, [r4, #0x84]
0054e25c  99 10 c4 e5                                      strb r1, [r4, #0x99]
0054e260  78 00 84 e5                                      str r0, [r4, #0x78]
0054e264  7c 00 84 e5                                      str r0, [r4, #0x7c]
0054e268  80 00 84 e5                                      str r0, [r4, #0x80]
0054e26c  90 10 84 e5                                      str r1, [r4, #0x90]
0054e270  03 00 a0 e1                                      mov r0, r3
0054e274  94 10 84 e5                                      str r1, [r4, #0x94]
0054e278  98 10 c4 e5                                      strb r1, [r4, #0x98]
0054e27c  58 70 84 e5                                      str r7, [r4, #0x58]
0054e280  10 10 a0 e3                                      mov r1, #0x10
0054e284  5c 60 84 e5                                      str r6, [r4, #0x5c]
0054e288  60 80 84 e5                                      str r8, [r4, #0x60]
0054e28c  64 a0 84 e5                                      str sl, [r4, #0x64]
0054e290  24 b0 84 e5                                      str fp, [r4, #0x24]
0054e294  28 70 84 e5                                      str r7, [r4, #0x28]
0054e298  2c 60 84 e5                                      str r6, [r4, #0x2c]
0054e29c  30 80 84 e5                                      str r8, [r4, #0x30]
0054e2a0  34 a0 84 e5                                      str sl, [r4, #0x34]
0054e2a4  38 70 84 e5                                      str r7, [r4, #0x38]
0054e2a8  3c 60 84 e5                                      str r6, [r4, #0x3c]
0054e2ac  40 80 84 e5                                      str r8, [r4, #0x40]
0054e2b0  44 a0 84 e5                                      str sl, [r4, #0x44]
0054e2b4  48 70 84 e5                                      str r7, [r4, #0x48]
0054e2b8  4c 60 84 e5                                      str r6, [r4, #0x4c]
0054e2bc  50 80 84 e5                                      str r8, [r4, #0x50]
0054e2c0  54 a0 84 e5                                      str sl, [r4, #0x54]
0054e2c4  68 b0 84 e5                                      str fp, [r4, #0x68]
0054e2c8  6c b0 84 e5                                      str fp, [r4, #0x6c]
0054e2cc  70 b0 84 e5                                      str fp, [r4, #0x70]
0054e2d0  74 b0 84 e5                                      str fp, [r4, #0x74]
0054e2d4  88 b0 84 e5                                      str fp, [r4, #0x88]
0054e2d8  8c b0 84 e5                                      str fp, [r4, #0x8c]
0054e2dc  9a b0 c4 e5                                      strb fp, [r4, #0x9a]
0054e2e0  e0 30 84 e5                                      str r3, [r4, #0xe0]
0054e2e4  e4 30 84 e5                                      str r3, [r4, #0xe4]
0054e2e8  9b b0 c4 e5                                      strb fp, [r4, #0x9b]
0054e2ec  9c b0 c4 e5                                      strb fp, [r4, #0x9c]
0054e2f0  8a 49 f7 eb                                      bl #0x320920
0054e2f4  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
0054e2f8  e8 30 84 e2                                      add r3, r4, #0xe8
0054e2fc  03 00 a0 e1                                      mov r0, r3
0054e300  00 b0 81 e5                                      str fp, [r1]
0054e304  28 31 84 e5                                      str r3, [r4, #0x128]
0054e308  2c 31 84 e5                                      str r3, [r4, #0x12c]
0054e30c  10 10 a0 e3                                      mov r1, #0x10
0054e310  82 49 f7 eb                                      bl #0x320920
0054e314  28 31 94 e5                                      ldr r3, [r4, #0x128]
0054e318  0b 00 59 e1                                      cmp sb, fp
0054e31c  00 b0 83 e5                                      str fp, [r3]
0054e320  48 30 9d e5                                      ldr r3, [sp, #0x48]
0054e324  4c b1 84 e5                                      str fp, [r4, #0x14c]
0054e328  30 31 84 e5                                      str r3, [r4, #0x130]
0054e32c  00 30 e0 e3                                      mvn r3, #0
0054e330  38 31 84 e5                                      str r3, [r4, #0x138]
0054e334  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0054e338  34 b1 c4 e5                                      strb fp, [r4, #0x134]
0054e33c  3c b1 c4 e5                                      strb fp, [r4, #0x13c]
0054e340  50 31 84 e5                                      str r3, [r4, #0x150]
0054e344  0f 30 a0 e3                                      mov r3, #0xf
0054e348  54 31 84 e5                                      str r3, [r4, #0x154]
0054e34c  40 b1 84 e5                                      str fp, [r4, #0x140]
0054e350  44 b1 84 e5                                      str fp, [r4, #0x144]
0054e354  48 b1 84 e5                                      str fp, [r4, #0x148]
0054e358  04 00 00 0a                                      beq #0x54e370
0054e35c  09 00 a0 e1                                      mov r0, sb
0054e360  00 30 99 e5                                      ldr r3, [sb]
0054e364  04 10 a0 e1                                      mov r1, r4
0054e368  0f e0 a0 e1                                      mov lr, pc
0054e36c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0054e370  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054e374  00 00 53 e3                                      cmp r3, #0
0054e378  2d 00 00 0a                                      beq #0x54e434
0054e37c  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
0054e380  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0054e384  38 70 94 e5                                      ldr r7, [r4, #0x38]
0054e388  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
0054e38c  40 10 94 e5                                      ldr r1, [r4, #0x40]
0054e390  44 20 94 e5                                      ldr r2, [r4, #0x44]
0054e394  40 a0 93 e5                                      ldr sl, [r3, #0x40]
0054e398  44 80 93 e5                                      ldr r8, [r3, #0x44]
0054e39c  02 20 80 e0                                      add r2, r0, r2
0054e3a0  01 10 8c e0                                      add r1, ip, r1
0054e3a4  06 60 80 e0                                      add r6, r0, r6
0054e3a8  07 70 8c e0                                      add r7, ip, r7
0054e3ac  4c 60 84 e5                                      str r6, [r4, #0x4c]
0054e3b0  54 20 84 e5                                      str r2, [r4, #0x54]
0054e3b4  48 70 84 e5                                      str r7, [r4, #0x48]
0054e3b8  50 10 84 e5                                      str r1, [r4, #0x50]
0054e3bc  44 20 84 e5                                      str r2, [r4, #0x44]
0054e3c0  70 a0 84 e5                                      str sl, [r4, #0x70]
0054e3c4  74 80 84 e5                                      str r8, [r4, #0x74]
0054e3c8  68 c0 84 e5                                      str ip, [r4, #0x68]
0054e3cc  6c 00 84 e5                                      str r0, [r4, #0x6c]
0054e3d0  38 70 84 e5                                      str r7, [r4, #0x38]
0054e3d4  3c 60 84 e5                                      str r6, [r4, #0x3c]
0054e3d8  40 10 84 e5                                      str r1, [r4, #0x40]
0054e3dc  50 00 93 e5                                      ldr r0, [r3, #0x50]
0054e3e0  00 00 51 e1                                      cmp r1, r0
0054e3e4  50 00 84 c5                                      strgt r0, [r4, #0x50]
0054e3e8  54 10 93 e5                                      ldr r1, [r3, #0x54]
0054e3ec  01 00 52 e1                                      cmp r2, r1
0054e3f0  54 10 84 c5                                      strgt r1, [r4, #0x54]
0054e3f4  48 10 93 e5                                      ldr r1, [r3, #0x48]
0054e3f8  48 20 94 e5                                      ldr r2, [r4, #0x48]
0054e3fc  02 00 51 e1                                      cmp r1, r2
0054e400  48 10 84 c5                                      strgt r1, [r4, #0x48]
0054e404  01 20 a0 c1                                      movgt r2, r1
0054e408  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
0054e40c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0054e410  03 00 51 e1                                      cmp r1, r3
0054e414  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
0054e418  01 30 a0 c1                                      movgt r3, r1
0054e41c  54 10 94 e5                                      ldr r1, [r4, #0x54]
0054e420  01 00 53 e1                                      cmp r3, r1
0054e424  50 30 94 e5                                      ldr r3, [r4, #0x50]
0054e428  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
0054e42c  03 00 52 e1                                      cmp r2, r3
0054e430  48 30 84 c5                                      strgt r3, [r4, #0x48]
0054e434  00 30 95 e5                                      ldr r3, [r5]
0054e438  04 00 a0 e1                                      mov r0, r4
0054e43c  00 30 84 e5                                      str r3, [r4]
0054e440  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054e444  10 20 95 e5                                      ldr r2, [r5, #0x10]
0054e448  03 20 84 e7                                      str r2, [r4, r3]
0054e44c  00 30 94 e5                                      ldr r3, [r4]
0054e450  14 20 95 e5                                      ldr r2, [r5, #0x14]
0054e454  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054e458  03 20 84 e7                                      str r2, [r4, r3]
0054e45c  24 d0 8d e2                                      add sp, sp, #0x24
0054e460  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0054e464  ec 68 44 00 4c 27 00 00                          .byte 0xec, 0x68, 0x44, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x0054f364, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUISpinBox
; alias: _ZN6glitch3gui11IGUISpinBoxD1Ev
; demangled: glitch::gui::IGUISpinBox::~IGUISpinBox()
; decoder-mode: arm
0054f364  40 30 9f e5                                      ldr r3, [pc, #0x40]
0054f368  40 20 9f e5                                      ldr r2, [pc, #0x40]
0054f36c  40 10 9f e5                                      ldr r1, [pc, #0x40]
0054f370  03 30 8f e0                                      add r3, pc, r3
0054f374  02 20 93 e7                                      ldr r2, [r3, r2]
0054f378  01 10 93 e7                                      ldr r1, [r3, r1]
0054f37c  10 40 2d e9                                      push {r4, lr}
0054f380  e8 c0 82 e2                                      add ip, r2, #0xe8
0054f384  10 e0 82 e2                                      add lr, r2, #0x10
0054f388  c8 20 82 e2                                      add r2, r2, #0xc8
0054f38c  00 40 a0 e1                                      mov r4, r0
0054f390  00 e0 80 e5                                      str lr, [r0]
0054f394  58 21 80 e5                                      str r2, [r0, #0x158]
0054f398  5c c1 80 e5                                      str ip, [r0, #0x15c]
0054f39c  04 10 81 e2                                      add r1, r1, #4
0054f3a0  1e a7 ff eb                                      bl #0x539020
0054f3a4  04 00 a0 e1                                      mov r0, r4
0054f3a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0054f3ac  20 57 44 00 44 09 00 00 f4 31 00 00              .byte 0x20, 0x57, 0x44, 0x00, 0x44, 0x09, 0x00, 0x00, 0xf4, 0x31, 0x00, 0x00

; FUNCTION 0x0054f3b8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUISpinBox
; alias: _ZTv0_n24_N6glitch3gui11IGUISpinBoxD1Ev
; demangled: virtual thunk to glitch::gui::IGUISpinBox::~IGUISpinBox()
; decoder-mode: arm
0054f3b8  00 30 90 e5                                      ldr r3, [r0]
0054f3bc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0054f3c0  03 00 80 e0                                      add r0, r0, r3
0054f3c4  e6 ff ff ea                                      b #0x54f364

; FUNCTION 0x0054f3c8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUISpinBox
; alias: _ZTv0_n12_N6glitch3gui11IGUISpinBoxD1Ev
; demangled: virtual thunk to glitch::gui::IGUISpinBox::~IGUISpinBox()
; decoder-mode: arm
0054f3c8  00 30 90 e5                                      ldr r3, [r0]
0054f3cc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054f3d0  03 00 80 e0                                      add r0, r0, r3
0054f3d4  e2 ff ff ea                                      b #0x54f364

; FUNCTION 0x0054f5bc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUISpinBox
; alias: _ZN6glitch3gui11IGUISpinBoxD0Ev
; demangled: glitch::gui::IGUISpinBox::~IGUISpinBox()
; decoder-mode: arm
0054f5bc  48 30 9f e5                                      ldr r3, [pc, #0x48]
0054f5c0  48 20 9f e5                                      ldr r2, [pc, #0x48]
0054f5c4  48 10 9f e5                                      ldr r1, [pc, #0x48]
0054f5c8  03 30 8f e0                                      add r3, pc, r3
0054f5cc  02 20 93 e7                                      ldr r2, [r3, r2]
0054f5d0  01 10 93 e7                                      ldr r1, [r3, r1]
0054f5d4  10 40 2d e9                                      push {r4, lr}
0054f5d8  e8 c0 82 e2                                      add ip, r2, #0xe8
0054f5dc  10 e0 82 e2                                      add lr, r2, #0x10
0054f5e0  c8 20 82 e2                                      add r2, r2, #0xc8
0054f5e4  00 40 a0 e1                                      mov r4, r0
0054f5e8  00 e0 80 e5                                      str lr, [r0]
0054f5ec  58 21 80 e5                                      str r2, [r0, #0x158]
0054f5f0  5c c1 80 e5                                      str ip, [r0, #0x15c]
0054f5f4  04 10 81 e2                                      add r1, r1, #4
0054f5f8  88 a6 ff eb                                      bl #0x539020
0054f5fc  04 00 a0 e1                                      mov r0, r4
0054f600  2a fb f6 eb                                      bl #0x30e2b0
0054f604  04 00 a0 e1                                      mov r0, r4
0054f608  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0054f60c  c8 54 44 00 44 09 00 00 f4 31 00 00              .byte 0xc8, 0x54, 0x44, 0x00, 0x44, 0x09, 0x00, 0x00, 0xf4, 0x31, 0x00, 0x00

; FUNCTION 0x0054f618, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUISpinBox
; alias: _ZTv0_n24_N6glitch3gui11IGUISpinBoxD0Ev
; demangled: virtual thunk to glitch::gui::IGUISpinBox::~IGUISpinBox()
; decoder-mode: arm
0054f618  00 30 90 e5                                      ldr r3, [r0]
0054f61c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0054f620  03 00 80 e0                                      add r0, r0, r3
0054f624  e4 ff ff ea                                      b #0x54f5bc

; FUNCTION 0x0054f628, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUISpinBox
; alias: _ZTv0_n12_N6glitch3gui11IGUISpinBoxD0Ev
; demangled: virtual thunk to glitch::gui::IGUISpinBox::~IGUISpinBox()
; decoder-mode: arm
0054f628  00 30 90 e5                                      ldr r3, [r0]
0054f62c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054f630  03 00 80 e0                                      add r0, r0, r3
0054f634  e0 ff ff ea                                      b #0x54f5bc
