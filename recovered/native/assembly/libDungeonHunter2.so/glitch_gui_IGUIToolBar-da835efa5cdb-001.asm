; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0055b190, declared_size=704, range_size=704, mode=arm
; class-group: glitch::gui::IGUIToolBar
; alias: _ZN6glitch3gui11IGUIToolBarC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIToolBar::IGUIToolBar(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
0055b190  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055b194  ac 42 9f e5                                      ldr r4, [pc, #0x2ac]
0055b198  ac e2 9f e5                                      ldr lr, [pc, #0x2ac]
0055b19c  1c d0 4d e2                                      sub sp, sp, #0x1c
0055b1a0  04 40 8f e0                                      add r4, pc, r4
0055b1a4  0e e0 94 e7                                      ldr lr, [r4, lr]
0055b1a8  44 c0 9d e5                                      ldr ip, [sp, #0x44]
0055b1ac  00 40 8d e5                                      str r4, [sp]
0055b1b0  00 40 a0 e1                                      mov r4, r0
0055b1b4  08 00 8e e2                                      add r0, lr, #8
0055b1b8  00 80 9c e5                                      ldr r8, [ip]
0055b1bc  80 40 9c e9                                      ldmib ip, {r7, lr}
0055b1c0  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0055b1c4  00 00 84 e5                                      str r0, [r4]
0055b1c8  01 50 a0 e1                                      mov r5, r1
0055b1cc  04 10 91 e5                                      ldr r1, [r1, #4]
0055b1d0  04 00 85 e2                                      add r0, r5, #4
0055b1d4  00 60 a0 e3                                      mov r6, #0
0055b1d8  00 10 84 e5                                      str r1, [r4]
0055b1dc  0c b0 11 e5                                      ldr fp, [r1, #-0xc]
0055b1e0  04 90 90 e5                                      ldr sb, [r0, #4]
0055b1e4  00 c0 a0 e3                                      mov ip, #0
0055b1e8  01 10 a0 e3                                      mov r1, #1
0055b1ec  0b 90 84 e7                                      str sb, [r4, fp]
0055b1f0  08 00 90 e5                                      ldr r0, [r0, #8]
0055b1f4  00 b0 94 e5                                      ldr fp, [r4]
0055b1f8  a0 90 84 e2                                      add sb, r4, #0xa0
0055b1fc  14 00 8d e5                                      str r0, [sp, #0x14]
0055b200  10 b0 1b e5                                      ldr fp, [fp, #-0x10]
0055b204  0c 00 84 e2                                      add r0, r4, #0xc
0055b208  04 00 8d e5                                      str r0, [sp, #4]
0055b20c  10 b0 8d e5                                      str fp, [sp, #0x10]
0055b210  04 b0 84 e2                                      add fp, r4, #4
0055b214  0c b0 8d e5                                      str fp, [sp, #0xc]
0055b218  14 00 9d e5                                      ldr r0, [sp, #0x14]
0055b21c  10 b0 9d e5                                      ldr fp, [sp, #0x10]
0055b220  0b 00 84 e7                                      str r0, [r4, fp]
0055b224  0c b0 9d e5                                      ldr fp, [sp, #0xc]
0055b228  08 b0 84 e5                                      str fp, [r4, #8]
0055b22c  04 00 9d e5                                      ldr r0, [sp, #4]
0055b230  30 e0 84 e5                                      str lr, [r4, #0x30]
0055b234  28 80 84 e5                                      str r8, [r4, #0x28]
0055b238  20 00 84 e5                                      str r0, [r4, #0x20]
0055b23c  1c 00 84 e5                                      str r0, [r4, #0x1c]
0055b240  2c 70 84 e5                                      str r7, [r4, #0x2c]
0055b244  09 00 a0 e1                                      mov r0, sb
0055b248  04 b0 84 e5                                      str fp, [r4, #4]
0055b24c  34 a0 84 e5                                      str sl, [r4, #0x34]
0055b250  38 80 84 e5                                      str r8, [r4, #0x38]
0055b254  3c 70 84 e5                                      str r7, [r4, #0x3c]
0055b258  40 e0 84 e5                                      str lr, [r4, #0x40]
0055b25c  48 80 84 e5                                      str r8, [r4, #0x48]
0055b260  4c 70 84 e5                                      str r7, [r4, #0x4c]
0055b264  50 e0 84 e5                                      str lr, [r4, #0x50]
0055b268  58 80 84 e5                                      str r8, [r4, #0x58]
0055b26c  5c 70 84 e5                                      str r7, [r4, #0x5c]
0055b270  60 e0 84 e5                                      str lr, [r4, #0x60]
0055b274  84 c0 84 e5                                      str ip, [r4, #0x84]
0055b278  99 10 c4 e5                                      strb r1, [r4, #0x99]
0055b27c  78 c0 84 e5                                      str ip, [r4, #0x78]
0055b280  7c c0 84 e5                                      str ip, [r4, #0x7c]
0055b284  80 c0 84 e5                                      str ip, [r4, #0x80]
0055b288  90 10 84 e5                                      str r1, [r4, #0x90]
0055b28c  94 10 84 e5                                      str r1, [r4, #0x94]
0055b290  98 10 c4 e5                                      strb r1, [r4, #0x98]
0055b294  44 a0 84 e5                                      str sl, [r4, #0x44]
0055b298  0c 60 c4 e5                                      strb r6, [r4, #0xc]
0055b29c  24 60 84 e5                                      str r6, [r4, #0x24]
0055b2a0  64 a0 84 e5                                      str sl, [r4, #0x64]
0055b2a4  54 a0 84 e5                                      str sl, [r4, #0x54]
0055b2a8  68 60 84 e5                                      str r6, [r4, #0x68]
0055b2ac  6c 60 84 e5                                      str r6, [r4, #0x6c]
0055b2b0  70 60 84 e5                                      str r6, [r4, #0x70]
0055b2b4  74 60 84 e5                                      str r6, [r4, #0x74]
0055b2b8  88 60 84 e5                                      str r6, [r4, #0x88]
0055b2bc  8c 60 84 e5                                      str r6, [r4, #0x8c]
0055b2c0  9a 60 c4 e5                                      strb r6, [r4, #0x9a]
0055b2c4  9b 60 c4 e5                                      strb r6, [r4, #0x9b]
0055b2c8  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
0055b2cc  e0 90 84 e5                                      str sb, [r4, #0xe0]
0055b2d0  e4 90 84 e5                                      str sb, [r4, #0xe4]
0055b2d4  02 70 a0 e1                                      mov r7, r2
0055b2d8  03 80 a0 e1                                      mov r8, r3
0055b2dc  aa ff ff eb                                      bl #0x55b18c
0055b2e0  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
0055b2e4  e8 30 84 e2                                      add r3, r4, #0xe8
0055b2e8  03 00 a0 e1                                      mov r0, r3
0055b2ec  00 60 82 e5                                      str r6, [r2]
0055b2f0  28 31 84 e5                                      str r3, [r4, #0x128]
0055b2f4  2c 31 84 e5                                      str r3, [r4, #0x12c]
0055b2f8  a3 ff ff eb                                      bl #0x55b18c
0055b2fc  28 31 94 e5                                      ldr r3, [r4, #0x128]
0055b300  06 00 58 e1                                      cmp r8, r6
0055b304  00 60 83 e5                                      str r6, [r3]
0055b308  40 30 9d e5                                      ldr r3, [sp, #0x40]
0055b30c  4c 61 84 e5                                      str r6, [r4, #0x14c]
0055b310  50 71 84 e5                                      str r7, [r4, #0x150]
0055b314  30 31 84 e5                                      str r3, [r4, #0x130]
0055b318  00 30 e0 e3                                      mvn r3, #0
0055b31c  38 31 84 e5                                      str r3, [r4, #0x138]
0055b320  14 30 a0 e3                                      mov r3, #0x14
0055b324  54 31 84 e5                                      str r3, [r4, #0x154]
0055b328  34 61 c4 e5                                      strb r6, [r4, #0x134]
0055b32c  3c 61 c4 e5                                      strb r6, [r4, #0x13c]
0055b330  40 61 84 e5                                      str r6, [r4, #0x140]
0055b334  44 61 84 e5                                      str r6, [r4, #0x144]
0055b338  48 61 84 e5                                      str r6, [r4, #0x148]
0055b33c  04 00 00 0a                                      beq #0x55b354
0055b340  08 00 a0 e1                                      mov r0, r8
0055b344  00 30 98 e5                                      ldr r3, [r8]
0055b348  04 10 a0 e1                                      mov r1, r4
0055b34c  0f e0 a0 e1                                      mov lr, pc
0055b350  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0055b354  24 30 94 e5                                      ldr r3, [r4, #0x24]
0055b358  00 00 53 e3                                      cmp r3, #0
0055b35c  2d 00 00 0a                                      beq #0x55b418
0055b360  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
0055b364  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0055b368  38 70 94 e5                                      ldr r7, [r4, #0x38]
0055b36c  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
0055b370  40 10 94 e5                                      ldr r1, [r4, #0x40]
0055b374  44 20 94 e5                                      ldr r2, [r4, #0x44]
0055b378  40 a0 93 e5                                      ldr sl, [r3, #0x40]
0055b37c  44 80 93 e5                                      ldr r8, [r3, #0x44]
0055b380  02 20 80 e0                                      add r2, r0, r2
0055b384  01 10 8c e0                                      add r1, ip, r1
0055b388  06 60 80 e0                                      add r6, r0, r6
0055b38c  07 70 8c e0                                      add r7, ip, r7
0055b390  4c 60 84 e5                                      str r6, [r4, #0x4c]
0055b394  54 20 84 e5                                      str r2, [r4, #0x54]
0055b398  48 70 84 e5                                      str r7, [r4, #0x48]
0055b39c  50 10 84 e5                                      str r1, [r4, #0x50]
0055b3a0  44 20 84 e5                                      str r2, [r4, #0x44]
0055b3a4  70 a0 84 e5                                      str sl, [r4, #0x70]
0055b3a8  74 80 84 e5                                      str r8, [r4, #0x74]
0055b3ac  68 c0 84 e5                                      str ip, [r4, #0x68]
0055b3b0  6c 00 84 e5                                      str r0, [r4, #0x6c]
0055b3b4  38 70 84 e5                                      str r7, [r4, #0x38]
0055b3b8  3c 60 84 e5                                      str r6, [r4, #0x3c]
0055b3bc  40 10 84 e5                                      str r1, [r4, #0x40]
0055b3c0  50 00 93 e5                                      ldr r0, [r3, #0x50]
0055b3c4  00 00 51 e1                                      cmp r1, r0
0055b3c8  50 00 84 c5                                      strgt r0, [r4, #0x50]
0055b3cc  54 10 93 e5                                      ldr r1, [r3, #0x54]
0055b3d0  01 00 52 e1                                      cmp r2, r1
0055b3d4  54 10 84 c5                                      strgt r1, [r4, #0x54]
0055b3d8  48 10 93 e5                                      ldr r1, [r3, #0x48]
0055b3dc  48 20 94 e5                                      ldr r2, [r4, #0x48]
0055b3e0  02 00 51 e1                                      cmp r1, r2
0055b3e4  48 10 84 c5                                      strgt r1, [r4, #0x48]
0055b3e8  01 20 a0 c1                                      movgt r2, r1
0055b3ec  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
0055b3f0  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0055b3f4  03 00 51 e1                                      cmp r1, r3
0055b3f8  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
0055b3fc  01 30 a0 c1                                      movgt r3, r1
0055b400  54 10 94 e5                                      ldr r1, [r4, #0x54]
0055b404  03 00 51 e1                                      cmp r1, r3
0055b408  50 30 94 e5                                      ldr r3, [r4, #0x50]
0055b40c  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
0055b410  03 00 52 e1                                      cmp r2, r3
0055b414  48 30 84 c5                                      strgt r3, [r4, #0x48]
0055b418  00 30 95 e5                                      ldr r3, [r5]
0055b41c  04 00 a0 e1                                      mov r0, r4
0055b420  00 30 84 e5                                      str r3, [r4]
0055b424  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055b428  10 20 95 e5                                      ldr r2, [r5, #0x10]
0055b42c  03 20 84 e7                                      str r2, [r4, r3]
0055b430  00 30 94 e5                                      ldr r3, [r4]
0055b434  14 20 95 e5                                      ldr r2, [r5, #0x14]
0055b438  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0055b43c  03 20 84 e7                                      str r2, [r4, r3]
0055b440  1c d0 8d e2                                      add sp, sp, #0x1c
0055b444  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0055b448  f0 98 43 00 4c 27 00 00                          .byte 0xf0, 0x98, 0x43, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x0055b7c8, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUIToolBar
; alias: _ZN6glitch3gui11IGUIToolBarD1Ev
; demangled: glitch::gui::IGUIToolBar::~IGUIToolBar()
; decoder-mode: arm
0055b7c8  40 30 9f e5                                      ldr r3, [pc, #0x40]
0055b7cc  40 20 9f e5                                      ldr r2, [pc, #0x40]
0055b7d0  40 10 9f e5                                      ldr r1, [pc, #0x40]
0055b7d4  03 30 8f e0                                      add r3, pc, r3
0055b7d8  02 20 93 e7                                      ldr r2, [r3, r2]
0055b7dc  01 10 93 e7                                      ldr r1, [r3, r1]
0055b7e0  10 40 2d e9                                      push {r4, lr}
0055b7e4  c8 c0 82 e2                                      add ip, r2, #0xc8
0055b7e8  10 e0 82 e2                                      add lr, r2, #0x10
0055b7ec  a8 20 82 e2                                      add r2, r2, #0xa8
0055b7f0  00 40 a0 e1                                      mov r4, r0
0055b7f4  00 e0 80 e5                                      str lr, [r0]
0055b7f8  58 21 80 e5                                      str r2, [r0, #0x158]
0055b7fc  5c c1 80 e5                                      str ip, [r0, #0x15c]
0055b800  04 10 81 e2                                      add r1, r1, #4
0055b804  05 76 ff eb                                      bl #0x539020
0055b808  04 00 a0 e1                                      mov r0, r4
0055b80c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0055b810  bc 92 43 00 4c 12 00 00 54 1f 00 00              .byte 0xbc, 0x92, 0x43, 0x00, 0x4c, 0x12, 0x00, 0x00, 0x54, 0x1f, 0x00, 0x00

; FUNCTION 0x0055b81c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIToolBar
; alias: _ZTv0_n24_N6glitch3gui11IGUIToolBarD1Ev
; demangled: virtual thunk to glitch::gui::IGUIToolBar::~IGUIToolBar()
; decoder-mode: arm
0055b81c  00 30 90 e5                                      ldr r3, [r0]
0055b820  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0055b824  03 00 80 e0                                      add r0, r0, r3
0055b828  e6 ff ff ea                                      b #0x55b7c8

; FUNCTION 0x0055b82c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIToolBar
; alias: _ZTv0_n12_N6glitch3gui11IGUIToolBarD1Ev
; demangled: virtual thunk to glitch::gui::IGUIToolBar::~IGUIToolBar()
; decoder-mode: arm
0055b82c  00 30 90 e5                                      ldr r3, [r0]
0055b830  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055b834  03 00 80 e0                                      add r0, r0, r3
0055b838  e2 ff ff ea                                      b #0x55b7c8

; FUNCTION 0x0055b908, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUIToolBar
; alias: _ZN6glitch3gui11IGUIToolBarD0Ev
; demangled: glitch::gui::IGUIToolBar::~IGUIToolBar()
; decoder-mode: arm
0055b908  48 30 9f e5                                      ldr r3, [pc, #0x48]
0055b90c  48 20 9f e5                                      ldr r2, [pc, #0x48]
0055b910  48 10 9f e5                                      ldr r1, [pc, #0x48]
0055b914  03 30 8f e0                                      add r3, pc, r3
0055b918  02 20 93 e7                                      ldr r2, [r3, r2]
0055b91c  01 10 93 e7                                      ldr r1, [r3, r1]
0055b920  10 40 2d e9                                      push {r4, lr}
0055b924  c8 c0 82 e2                                      add ip, r2, #0xc8
0055b928  10 e0 82 e2                                      add lr, r2, #0x10
0055b92c  a8 20 82 e2                                      add r2, r2, #0xa8
0055b930  00 40 a0 e1                                      mov r4, r0
0055b934  00 e0 80 e5                                      str lr, [r0]
0055b938  58 21 80 e5                                      str r2, [r0, #0x158]
0055b93c  5c c1 80 e5                                      str ip, [r0, #0x15c]
0055b940  04 10 81 e2                                      add r1, r1, #4
0055b944  b5 75 ff eb                                      bl #0x539020
0055b948  04 00 a0 e1                                      mov r0, r4
0055b94c  57 ca f6 eb                                      bl #0x30e2b0
0055b950  04 00 a0 e1                                      mov r0, r4
0055b954  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0055b958  7c 91 43 00 4c 12 00 00 54 1f 00 00              .byte 0x7c, 0x91, 0x43, 0x00, 0x4c, 0x12, 0x00, 0x00, 0x54, 0x1f, 0x00, 0x00

; FUNCTION 0x0055b964, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIToolBar
; alias: _ZTv0_n24_N6glitch3gui11IGUIToolBarD0Ev
; demangled: virtual thunk to glitch::gui::IGUIToolBar::~IGUIToolBar()
; decoder-mode: arm
0055b964  00 30 90 e5                                      ldr r3, [r0]
0055b968  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0055b96c  03 00 80 e0                                      add r0, r0, r3
0055b970  e4 ff ff ea                                      b #0x55b908

; FUNCTION 0x0055b974, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIToolBar
; alias: _ZTv0_n12_N6glitch3gui11IGUIToolBarD0Ev
; demangled: virtual thunk to glitch::gui::IGUIToolBar::~IGUIToolBar()
; decoder-mode: arm
0055b974  00 30 90 e5                                      ldr r3, [r0]
0055b978  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055b97c  03 00 80 e0                                      add r0, r0, r3
0055b980  e0 ff ff ea                                      b #0x55b908
