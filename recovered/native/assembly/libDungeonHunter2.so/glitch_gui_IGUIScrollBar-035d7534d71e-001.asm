; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00549a3c, declared_size=704, range_size=704, mode=arm
; class-group: glitch::gui::IGUIScrollBar
; alias: _ZN6glitch3gui13IGUIScrollBarC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIScrollBar::IGUIScrollBar(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00549a3c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00549a40  ac 42 9f e5                                      ldr r4, [pc, #0x2ac]
00549a44  ac e2 9f e5                                      ldr lr, [pc, #0x2ac]
00549a48  1c d0 4d e2                                      sub sp, sp, #0x1c
00549a4c  04 40 8f e0                                      add r4, pc, r4
00549a50  0e e0 94 e7                                      ldr lr, [r4, lr]
00549a54  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00549a58  00 40 8d e5                                      str r4, [sp]
00549a5c  00 40 a0 e1                                      mov r4, r0
00549a60  08 00 8e e2                                      add r0, lr, #8
00549a64  00 80 9c e5                                      ldr r8, [ip]
00549a68  80 40 9c e9                                      ldmib ip, {r7, lr}
00549a6c  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00549a70  00 00 84 e5                                      str r0, [r4]
00549a74  01 50 a0 e1                                      mov r5, r1
00549a78  04 10 91 e5                                      ldr r1, [r1, #4]
00549a7c  04 00 85 e2                                      add r0, r5, #4
00549a80  00 60 a0 e3                                      mov r6, #0
00549a84  00 10 84 e5                                      str r1, [r4]
00549a88  0c b0 11 e5                                      ldr fp, [r1, #-0xc]
00549a8c  04 90 90 e5                                      ldr sb, [r0, #4]
00549a90  00 c0 a0 e3                                      mov ip, #0
00549a94  01 10 a0 e3                                      mov r1, #1
00549a98  0b 90 84 e7                                      str sb, [r4, fp]
00549a9c  08 00 90 e5                                      ldr r0, [r0, #8]
00549aa0  00 b0 94 e5                                      ldr fp, [r4]
00549aa4  a0 90 84 e2                                      add sb, r4, #0xa0
00549aa8  14 00 8d e5                                      str r0, [sp, #0x14]
00549aac  10 b0 1b e5                                      ldr fp, [fp, #-0x10]
00549ab0  0c 00 84 e2                                      add r0, r4, #0xc
00549ab4  04 00 8d e5                                      str r0, [sp, #4]
00549ab8  10 b0 8d e5                                      str fp, [sp, #0x10]
00549abc  04 b0 84 e2                                      add fp, r4, #4
00549ac0  0c b0 8d e5                                      str fp, [sp, #0xc]
00549ac4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00549ac8  10 b0 9d e5                                      ldr fp, [sp, #0x10]
00549acc  0b 00 84 e7                                      str r0, [r4, fp]
00549ad0  0c b0 9d e5                                      ldr fp, [sp, #0xc]
00549ad4  08 b0 84 e5                                      str fp, [r4, #8]
00549ad8  04 00 9d e5                                      ldr r0, [sp, #4]
00549adc  30 e0 84 e5                                      str lr, [r4, #0x30]
00549ae0  28 80 84 e5                                      str r8, [r4, #0x28]
00549ae4  20 00 84 e5                                      str r0, [r4, #0x20]
00549ae8  1c 00 84 e5                                      str r0, [r4, #0x1c]
00549aec  2c 70 84 e5                                      str r7, [r4, #0x2c]
00549af0  09 00 a0 e1                                      mov r0, sb
00549af4  04 b0 84 e5                                      str fp, [r4, #4]
00549af8  34 a0 84 e5                                      str sl, [r4, #0x34]
00549afc  38 80 84 e5                                      str r8, [r4, #0x38]
00549b00  3c 70 84 e5                                      str r7, [r4, #0x3c]
00549b04  40 e0 84 e5                                      str lr, [r4, #0x40]
00549b08  48 80 84 e5                                      str r8, [r4, #0x48]
00549b0c  4c 70 84 e5                                      str r7, [r4, #0x4c]
00549b10  50 e0 84 e5                                      str lr, [r4, #0x50]
00549b14  58 80 84 e5                                      str r8, [r4, #0x58]
00549b18  5c 70 84 e5                                      str r7, [r4, #0x5c]
00549b1c  60 e0 84 e5                                      str lr, [r4, #0x60]
00549b20  84 c0 84 e5                                      str ip, [r4, #0x84]
00549b24  99 10 c4 e5                                      strb r1, [r4, #0x99]
00549b28  78 c0 84 e5                                      str ip, [r4, #0x78]
00549b2c  7c c0 84 e5                                      str ip, [r4, #0x7c]
00549b30  80 c0 84 e5                                      str ip, [r4, #0x80]
00549b34  90 10 84 e5                                      str r1, [r4, #0x90]
00549b38  94 10 84 e5                                      str r1, [r4, #0x94]
00549b3c  98 10 c4 e5                                      strb r1, [r4, #0x98]
00549b40  44 a0 84 e5                                      str sl, [r4, #0x44]
00549b44  0c 60 c4 e5                                      strb r6, [r4, #0xc]
00549b48  24 60 84 e5                                      str r6, [r4, #0x24]
00549b4c  64 a0 84 e5                                      str sl, [r4, #0x64]
00549b50  54 a0 84 e5                                      str sl, [r4, #0x54]
00549b54  68 60 84 e5                                      str r6, [r4, #0x68]
00549b58  6c 60 84 e5                                      str r6, [r4, #0x6c]
00549b5c  70 60 84 e5                                      str r6, [r4, #0x70]
00549b60  74 60 84 e5                                      str r6, [r4, #0x74]
00549b64  88 60 84 e5                                      str r6, [r4, #0x88]
00549b68  8c 60 84 e5                                      str r6, [r4, #0x8c]
00549b6c  9a 60 c4 e5                                      strb r6, [r4, #0x9a]
00549b70  9b 60 c4 e5                                      strb r6, [r4, #0x9b]
00549b74  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
00549b78  e0 90 84 e5                                      str sb, [r4, #0xe0]
00549b7c  e4 90 84 e5                                      str sb, [r4, #0xe4]
00549b80  02 70 a0 e1                                      mov r7, r2
00549b84  03 80 a0 e1                                      mov r8, r3
00549b88  aa ff ff eb                                      bl #0x549a38
00549b8c  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
00549b90  e8 30 84 e2                                      add r3, r4, #0xe8
00549b94  03 00 a0 e1                                      mov r0, r3
00549b98  00 60 82 e5                                      str r6, [r2]
00549b9c  28 31 84 e5                                      str r3, [r4, #0x128]
00549ba0  2c 31 84 e5                                      str r3, [r4, #0x12c]
00549ba4  a3 ff ff eb                                      bl #0x549a38
00549ba8  28 31 94 e5                                      ldr r3, [r4, #0x128]
00549bac  06 00 58 e1                                      cmp r8, r6
00549bb0  00 60 83 e5                                      str r6, [r3]
00549bb4  40 30 9d e5                                      ldr r3, [sp, #0x40]
00549bb8  4c 61 84 e5                                      str r6, [r4, #0x14c]
00549bbc  50 71 84 e5                                      str r7, [r4, #0x150]
00549bc0  30 31 84 e5                                      str r3, [r4, #0x130]
00549bc4  00 30 e0 e3                                      mvn r3, #0
00549bc8  38 31 84 e5                                      str r3, [r4, #0x138]
00549bcc  0e 30 a0 e3                                      mov r3, #0xe
00549bd0  54 31 84 e5                                      str r3, [r4, #0x154]
00549bd4  34 61 c4 e5                                      strb r6, [r4, #0x134]
00549bd8  3c 61 c4 e5                                      strb r6, [r4, #0x13c]
00549bdc  40 61 84 e5                                      str r6, [r4, #0x140]
00549be0  44 61 84 e5                                      str r6, [r4, #0x144]
00549be4  48 61 84 e5                                      str r6, [r4, #0x148]
00549be8  04 00 00 0a                                      beq #0x549c00
00549bec  08 00 a0 e1                                      mov r0, r8
00549bf0  00 30 98 e5                                      ldr r3, [r8]
00549bf4  04 10 a0 e1                                      mov r1, r4
00549bf8  0f e0 a0 e1                                      mov lr, pc
00549bfc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00549c00  24 30 94 e5                                      ldr r3, [r4, #0x24]
00549c04  00 00 53 e3                                      cmp r3, #0
00549c08  2d 00 00 0a                                      beq #0x549cc4
00549c0c  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00549c10  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00549c14  38 70 94 e5                                      ldr r7, [r4, #0x38]
00549c18  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
00549c1c  40 10 94 e5                                      ldr r1, [r4, #0x40]
00549c20  44 20 94 e5                                      ldr r2, [r4, #0x44]
00549c24  40 a0 93 e5                                      ldr sl, [r3, #0x40]
00549c28  44 80 93 e5                                      ldr r8, [r3, #0x44]
00549c2c  02 20 80 e0                                      add r2, r0, r2
00549c30  01 10 8c e0                                      add r1, ip, r1
00549c34  06 60 80 e0                                      add r6, r0, r6
00549c38  07 70 8c e0                                      add r7, ip, r7
00549c3c  4c 60 84 e5                                      str r6, [r4, #0x4c]
00549c40  54 20 84 e5                                      str r2, [r4, #0x54]
00549c44  48 70 84 e5                                      str r7, [r4, #0x48]
00549c48  50 10 84 e5                                      str r1, [r4, #0x50]
00549c4c  44 20 84 e5                                      str r2, [r4, #0x44]
00549c50  70 a0 84 e5                                      str sl, [r4, #0x70]
00549c54  74 80 84 e5                                      str r8, [r4, #0x74]
00549c58  68 c0 84 e5                                      str ip, [r4, #0x68]
00549c5c  6c 00 84 e5                                      str r0, [r4, #0x6c]
00549c60  38 70 84 e5                                      str r7, [r4, #0x38]
00549c64  3c 60 84 e5                                      str r6, [r4, #0x3c]
00549c68  40 10 84 e5                                      str r1, [r4, #0x40]
00549c6c  50 00 93 e5                                      ldr r0, [r3, #0x50]
00549c70  00 00 51 e1                                      cmp r1, r0
00549c74  50 00 84 c5                                      strgt r0, [r4, #0x50]
00549c78  54 10 93 e5                                      ldr r1, [r3, #0x54]
00549c7c  01 00 52 e1                                      cmp r2, r1
00549c80  54 10 84 c5                                      strgt r1, [r4, #0x54]
00549c84  48 10 93 e5                                      ldr r1, [r3, #0x48]
00549c88  48 20 94 e5                                      ldr r2, [r4, #0x48]
00549c8c  02 00 51 e1                                      cmp r1, r2
00549c90  48 10 84 c5                                      strgt r1, [r4, #0x48]
00549c94  01 20 a0 c1                                      movgt r2, r1
00549c98  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
00549c9c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00549ca0  03 00 51 e1                                      cmp r1, r3
00549ca4  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
00549ca8  01 30 a0 c1                                      movgt r3, r1
00549cac  54 10 94 e5                                      ldr r1, [r4, #0x54]
00549cb0  03 00 51 e1                                      cmp r1, r3
00549cb4  50 30 94 e5                                      ldr r3, [r4, #0x50]
00549cb8  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
00549cbc  03 00 52 e1                                      cmp r2, r3
00549cc0  48 30 84 c5                                      strgt r3, [r4, #0x48]
00549cc4  00 30 95 e5                                      ldr r3, [r5]
00549cc8  04 00 a0 e1                                      mov r0, r4
00549ccc  00 30 84 e5                                      str r3, [r4]
00549cd0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00549cd4  10 20 95 e5                                      ldr r2, [r5, #0x10]
00549cd8  03 20 84 e7                                      str r2, [r4, r3]
00549cdc  00 30 94 e5                                      ldr r3, [r4]
00549ce0  14 20 95 e5                                      ldr r2, [r5, #0x14]
00549ce4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00549ce8  03 20 84 e7                                      str r2, [r4, r3]
00549cec  1c d0 8d e2                                      add sp, sp, #0x1c
00549cf0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00549cf4  44 b0 44 00 4c 27 00 00                          .byte 0x44, 0xb0, 0x44, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x00549f44, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUIScrollBar
; alias: _ZN6glitch3gui13IGUIScrollBarD1Ev
; demangled: glitch::gui::IGUIScrollBar::~IGUIScrollBar()
; decoder-mode: arm
00549f44  40 30 9f e5                                      ldr r3, [pc, #0x40]
00549f48  40 20 9f e5                                      ldr r2, [pc, #0x40]
00549f4c  40 10 9f e5                                      ldr r1, [pc, #0x40]
00549f50  03 30 8f e0                                      add r3, pc, r3
00549f54  02 20 93 e7                                      ldr r2, [r3, r2]
00549f58  01 10 93 e7                                      ldr r1, [r3, r1]
00549f5c  10 40 2d e9                                      push {r4, lr}
00549f60  e4 c0 82 e2                                      add ip, r2, #0xe4
00549f64  10 e0 82 e2                                      add lr, r2, #0x10
00549f68  c4 20 82 e2                                      add r2, r2, #0xc4
00549f6c  00 40 a0 e1                                      mov r4, r0
00549f70  00 e0 80 e5                                      str lr, [r0]
00549f74  58 21 80 e5                                      str r2, [r0, #0x158]
00549f78  5c c1 80 e5                                      str ip, [r0, #0x15c]
00549f7c  04 10 81 e2                                      add r1, r1, #4
00549f80  26 bc ff eb                                      bl #0x539020
00549f84  04 00 a0 e1                                      mov r0, r4
00549f88  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00549f8c  40 ab 44 00 ec 0c 00 00 80 2f 00 00              .byte 0x40, 0xab, 0x44, 0x00, 0xec, 0x0c, 0x00, 0x00, 0x80, 0x2f, 0x00, 0x00

; FUNCTION 0x00549f98, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIScrollBar
; alias: _ZTv0_n24_N6glitch3gui13IGUIScrollBarD1Ev
; demangled: virtual thunk to glitch::gui::IGUIScrollBar::~IGUIScrollBar()
; decoder-mode: arm
00549f98  00 30 90 e5                                      ldr r3, [r0]
00549f9c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00549fa0  03 00 80 e0                                      add r0, r0, r3
00549fa4  e6 ff ff ea                                      b #0x549f44

; FUNCTION 0x00549fa8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIScrollBar
; alias: _ZTv0_n12_N6glitch3gui13IGUIScrollBarD1Ev
; demangled: virtual thunk to glitch::gui::IGUIScrollBar::~IGUIScrollBar()
; decoder-mode: arm
00549fa8  00 30 90 e5                                      ldr r3, [r0]
00549fac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00549fb0  03 00 80 e0                                      add r0, r0, r3
00549fb4  e2 ff ff ea                                      b #0x549f44

; FUNCTION 0x0054a6dc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUIScrollBar
; alias: _ZN6glitch3gui13IGUIScrollBarD0Ev
; demangled: glitch::gui::IGUIScrollBar::~IGUIScrollBar()
; decoder-mode: arm
0054a6dc  48 30 9f e5                                      ldr r3, [pc, #0x48]
0054a6e0  48 20 9f e5                                      ldr r2, [pc, #0x48]
0054a6e4  48 10 9f e5                                      ldr r1, [pc, #0x48]
0054a6e8  03 30 8f e0                                      add r3, pc, r3
0054a6ec  02 20 93 e7                                      ldr r2, [r3, r2]
0054a6f0  01 10 93 e7                                      ldr r1, [r3, r1]
0054a6f4  10 40 2d e9                                      push {r4, lr}
0054a6f8  e4 c0 82 e2                                      add ip, r2, #0xe4
0054a6fc  10 e0 82 e2                                      add lr, r2, #0x10
0054a700  c4 20 82 e2                                      add r2, r2, #0xc4
0054a704  00 40 a0 e1                                      mov r4, r0
0054a708  00 e0 80 e5                                      str lr, [r0]
0054a70c  58 21 80 e5                                      str r2, [r0, #0x158]
0054a710  5c c1 80 e5                                      str ip, [r0, #0x15c]
0054a714  04 10 81 e2                                      add r1, r1, #4
0054a718  40 ba ff eb                                      bl #0x539020
0054a71c  04 00 a0 e1                                      mov r0, r4
0054a720  e2 0e f7 eb                                      bl #0x30e2b0
0054a724  04 00 a0 e1                                      mov r0, r4
0054a728  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0054a72c  a8 a3 44 00 ec 0c 00 00 80 2f 00 00              .byte 0xa8, 0xa3, 0x44, 0x00, 0xec, 0x0c, 0x00, 0x00, 0x80, 0x2f, 0x00, 0x00

; FUNCTION 0x0054a738, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIScrollBar
; alias: _ZTv0_n24_N6glitch3gui13IGUIScrollBarD0Ev
; demangled: virtual thunk to glitch::gui::IGUIScrollBar::~IGUIScrollBar()
; decoder-mode: arm
0054a738  00 30 90 e5                                      ldr r3, [r0]
0054a73c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0054a740  03 00 80 e0                                      add r0, r0, r3
0054a744  e4 ff ff ea                                      b #0x54a6dc

; FUNCTION 0x0054a748, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIScrollBar
; alias: _ZTv0_n12_N6glitch3gui13IGUIScrollBarD0Ev
; demangled: virtual thunk to glitch::gui::IGUIScrollBar::~IGUIScrollBar()
; decoder-mode: arm
0054a748  00 30 90 e5                                      ldr r3, [r0]
0054a74c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054a750  03 00 80 e0                                      add r0, r0, r3
0054a754  e0 ff ff ea                                      b #0x54a6dc
