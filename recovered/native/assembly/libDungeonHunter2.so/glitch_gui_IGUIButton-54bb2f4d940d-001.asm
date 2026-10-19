; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a6140, declared_size=700, range_size=700, mode=arm
; class-group: glitch::gui::IGUIButton
; alias: _ZN6glitch3gui10IGUIButtonC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIButton::IGUIButton(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
006a6140  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a6144  a8 42 9f e5                                      ldr r4, [pc, #0x2a8]
006a6148  a8 e2 9f e5                                      ldr lr, [pc, #0x2a8]
006a614c  1c d0 4d e2                                      sub sp, sp, #0x1c
006a6150  04 40 8f e0                                      add r4, pc, r4
006a6154  0e e0 94 e7                                      ldr lr, [r4, lr]
006a6158  44 c0 9d e5                                      ldr ip, [sp, #0x44]
006a615c  00 40 8d e5                                      str r4, [sp]
006a6160  00 40 a0 e1                                      mov r4, r0
006a6164  08 00 8e e2                                      add r0, lr, #8
006a6168  00 80 9c e5                                      ldr r8, [ip]
006a616c  80 40 9c e9                                      ldmib ip, {r7, lr}
006a6170  0c a0 9c e5                                      ldr sl, [ip, #0xc]
006a6174  00 00 84 e5                                      str r0, [r4]
006a6178  01 50 a0 e1                                      mov r5, r1
006a617c  04 10 91 e5                                      ldr r1, [r1, #4]
006a6180  04 00 85 e2                                      add r0, r5, #4
006a6184  00 60 a0 e3                                      mov r6, #0
006a6188  00 10 84 e5                                      str r1, [r4]
006a618c  0c b0 11 e5                                      ldr fp, [r1, #-0xc]
006a6190  04 90 90 e5                                      ldr sb, [r0, #4]
006a6194  00 c0 a0 e3                                      mov ip, #0
006a6198  01 10 a0 e3                                      mov r1, #1
006a619c  0b 90 84 e7                                      str sb, [r4, fp]
006a61a0  08 00 90 e5                                      ldr r0, [r0, #8]
006a61a4  00 b0 94 e5                                      ldr fp, [r4]
006a61a8  a0 90 84 e2                                      add sb, r4, #0xa0
006a61ac  14 00 8d e5                                      str r0, [sp, #0x14]
006a61b0  10 b0 1b e5                                      ldr fp, [fp, #-0x10]
006a61b4  0c 00 84 e2                                      add r0, r4, #0xc
006a61b8  04 00 8d e5                                      str r0, [sp, #4]
006a61bc  10 b0 8d e5                                      str fp, [sp, #0x10]
006a61c0  04 b0 84 e2                                      add fp, r4, #4
006a61c4  0c b0 8d e5                                      str fp, [sp, #0xc]
006a61c8  14 00 9d e5                                      ldr r0, [sp, #0x14]
006a61cc  10 b0 9d e5                                      ldr fp, [sp, #0x10]
006a61d0  0b 00 84 e7                                      str r0, [r4, fp]
006a61d4  0c b0 9d e5                                      ldr fp, [sp, #0xc]
006a61d8  08 b0 84 e5                                      str fp, [r4, #8]
006a61dc  04 00 9d e5                                      ldr r0, [sp, #4]
006a61e0  30 e0 84 e5                                      str lr, [r4, #0x30]
006a61e4  28 80 84 e5                                      str r8, [r4, #0x28]
006a61e8  20 00 84 e5                                      str r0, [r4, #0x20]
006a61ec  1c 00 84 e5                                      str r0, [r4, #0x1c]
006a61f0  2c 70 84 e5                                      str r7, [r4, #0x2c]
006a61f4  09 00 a0 e1                                      mov r0, sb
006a61f8  04 b0 84 e5                                      str fp, [r4, #4]
006a61fc  34 a0 84 e5                                      str sl, [r4, #0x34]
006a6200  38 80 84 e5                                      str r8, [r4, #0x38]
006a6204  3c 70 84 e5                                      str r7, [r4, #0x3c]
006a6208  40 e0 84 e5                                      str lr, [r4, #0x40]
006a620c  48 80 84 e5                                      str r8, [r4, #0x48]
006a6210  4c 70 84 e5                                      str r7, [r4, #0x4c]
006a6214  50 e0 84 e5                                      str lr, [r4, #0x50]
006a6218  58 80 84 e5                                      str r8, [r4, #0x58]
006a621c  5c 70 84 e5                                      str r7, [r4, #0x5c]
006a6220  60 e0 84 e5                                      str lr, [r4, #0x60]
006a6224  84 c0 84 e5                                      str ip, [r4, #0x84]
006a6228  99 10 c4 e5                                      strb r1, [r4, #0x99]
006a622c  78 c0 84 e5                                      str ip, [r4, #0x78]
006a6230  7c c0 84 e5                                      str ip, [r4, #0x7c]
006a6234  80 c0 84 e5                                      str ip, [r4, #0x80]
006a6238  90 10 84 e5                                      str r1, [r4, #0x90]
006a623c  94 10 84 e5                                      str r1, [r4, #0x94]
006a6240  98 10 c4 e5                                      strb r1, [r4, #0x98]
006a6244  44 a0 84 e5                                      str sl, [r4, #0x44]
006a6248  0c 60 c4 e5                                      strb r6, [r4, #0xc]
006a624c  24 60 84 e5                                      str r6, [r4, #0x24]
006a6250  64 a0 84 e5                                      str sl, [r4, #0x64]
006a6254  54 a0 84 e5                                      str sl, [r4, #0x54]
006a6258  68 60 84 e5                                      str r6, [r4, #0x68]
006a625c  6c 60 84 e5                                      str r6, [r4, #0x6c]
006a6260  70 60 84 e5                                      str r6, [r4, #0x70]
006a6264  74 60 84 e5                                      str r6, [r4, #0x74]
006a6268  88 60 84 e5                                      str r6, [r4, #0x88]
006a626c  8c 60 84 e5                                      str r6, [r4, #0x8c]
006a6270  9a 60 c4 e5                                      strb r6, [r4, #0x9a]
006a6274  9b 60 c4 e5                                      strb r6, [r4, #0x9b]
006a6278  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
006a627c  e0 90 84 e5                                      str sb, [r4, #0xe0]
006a6280  e4 90 84 e5                                      str sb, [r4, #0xe4]
006a6284  02 70 a0 e1                                      mov r7, r2
006a6288  03 80 a0 e1                                      mov r8, r3
006a628c  aa ff ff eb                                      bl #0x6a613c
006a6290  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
006a6294  e8 30 84 e2                                      add r3, r4, #0xe8
006a6298  03 00 a0 e1                                      mov r0, r3
006a629c  00 60 82 e5                                      str r6, [r2]
006a62a0  28 31 84 e5                                      str r3, [r4, #0x128]
006a62a4  2c 31 84 e5                                      str r3, [r4, #0x12c]
006a62a8  a3 ff ff eb                                      bl #0x6a613c
006a62ac  28 31 94 e5                                      ldr r3, [r4, #0x128]
006a62b0  06 00 58 e1                                      cmp r8, r6
006a62b4  00 60 83 e5                                      str r6, [r3]
006a62b8  40 30 9d e5                                      ldr r3, [sp, #0x40]
006a62bc  50 71 84 e5                                      str r7, [r4, #0x150]
006a62c0  54 61 84 e5                                      str r6, [r4, #0x154]
006a62c4  30 31 84 e5                                      str r3, [r4, #0x130]
006a62c8  00 30 e0 e3                                      mvn r3, #0
006a62cc  38 31 84 e5                                      str r3, [r4, #0x138]
006a62d0  34 61 c4 e5                                      strb r6, [r4, #0x134]
006a62d4  3c 61 c4 e5                                      strb r6, [r4, #0x13c]
006a62d8  40 61 84 e5                                      str r6, [r4, #0x140]
006a62dc  44 61 84 e5                                      str r6, [r4, #0x144]
006a62e0  48 61 84 e5                                      str r6, [r4, #0x148]
006a62e4  4c 61 84 e5                                      str r6, [r4, #0x14c]
006a62e8  04 00 00 0a                                      beq #0x6a6300
006a62ec  08 00 a0 e1                                      mov r0, r8
006a62f0  00 30 98 e5                                      ldr r3, [r8]
006a62f4  04 10 a0 e1                                      mov r1, r4
006a62f8  0f e0 a0 e1                                      mov lr, pc
006a62fc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006a6300  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a6304  00 00 53 e3                                      cmp r3, #0
006a6308  2d 00 00 0a                                      beq #0x6a63c4
006a630c  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
006a6310  38 c0 93 e5                                      ldr ip, [r3, #0x38]
006a6314  38 70 94 e5                                      ldr r7, [r4, #0x38]
006a6318  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
006a631c  40 10 94 e5                                      ldr r1, [r4, #0x40]
006a6320  44 20 94 e5                                      ldr r2, [r4, #0x44]
006a6324  40 a0 93 e5                                      ldr sl, [r3, #0x40]
006a6328  44 80 93 e5                                      ldr r8, [r3, #0x44]
006a632c  02 20 80 e0                                      add r2, r0, r2
006a6330  01 10 8c e0                                      add r1, ip, r1
006a6334  06 60 80 e0                                      add r6, r0, r6
006a6338  07 70 8c e0                                      add r7, ip, r7
006a633c  4c 60 84 e5                                      str r6, [r4, #0x4c]
006a6340  54 20 84 e5                                      str r2, [r4, #0x54]
006a6344  48 70 84 e5                                      str r7, [r4, #0x48]
006a6348  50 10 84 e5                                      str r1, [r4, #0x50]
006a634c  44 20 84 e5                                      str r2, [r4, #0x44]
006a6350  70 a0 84 e5                                      str sl, [r4, #0x70]
006a6354  74 80 84 e5                                      str r8, [r4, #0x74]
006a6358  68 c0 84 e5                                      str ip, [r4, #0x68]
006a635c  6c 00 84 e5                                      str r0, [r4, #0x6c]
006a6360  38 70 84 e5                                      str r7, [r4, #0x38]
006a6364  3c 60 84 e5                                      str r6, [r4, #0x3c]
006a6368  40 10 84 e5                                      str r1, [r4, #0x40]
006a636c  50 00 93 e5                                      ldr r0, [r3, #0x50]
006a6370  00 00 51 e1                                      cmp r1, r0
006a6374  50 00 84 c5                                      strgt r0, [r4, #0x50]
006a6378  54 10 93 e5                                      ldr r1, [r3, #0x54]
006a637c  01 00 52 e1                                      cmp r2, r1
006a6380  54 10 84 c5                                      strgt r1, [r4, #0x54]
006a6384  48 10 93 e5                                      ldr r1, [r3, #0x48]
006a6388  48 20 94 e5                                      ldr r2, [r4, #0x48]
006a638c  02 00 51 e1                                      cmp r1, r2
006a6390  48 10 84 c5                                      strgt r1, [r4, #0x48]
006a6394  01 20 a0 c1                                      movgt r2, r1
006a6398  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
006a639c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006a63a0  03 00 51 e1                                      cmp r1, r3
006a63a4  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
006a63a8  01 30 a0 c1                                      movgt r3, r1
006a63ac  54 10 94 e5                                      ldr r1, [r4, #0x54]
006a63b0  03 00 51 e1                                      cmp r1, r3
006a63b4  50 30 94 e5                                      ldr r3, [r4, #0x50]
006a63b8  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
006a63bc  03 00 52 e1                                      cmp r2, r3
006a63c0  48 30 84 c5                                      strgt r3, [r4, #0x48]
006a63c4  00 30 95 e5                                      ldr r3, [r5]
006a63c8  04 00 a0 e1                                      mov r0, r4
006a63cc  00 30 84 e5                                      str r3, [r4]
006a63d0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a63d4  10 20 95 e5                                      ldr r2, [r5, #0x10]
006a63d8  03 20 84 e7                                      str r2, [r4, r3]
006a63dc  00 30 94 e5                                      ldr r3, [r4]
006a63e0  14 20 95 e5                                      ldr r2, [r5, #0x14]
006a63e4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006a63e8  03 20 84 e7                                      str r2, [r4, r3]
006a63ec  1c d0 8d e2                                      add sp, sp, #0x1c
006a63f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006a63f4  40 e9 2e 00 4c 27 00 00                          .byte 0x40, 0xe9, 0x2e, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x006a69b8, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUIButton
; alias: _ZN6glitch3gui10IGUIButtonD1Ev
; demangled: glitch::gui::IGUIButton::~IGUIButton()
; decoder-mode: arm
006a69b8  40 30 9f e5                                      ldr r3, [pc, #0x40]
006a69bc  40 20 9f e5                                      ldr r2, [pc, #0x40]
006a69c0  40 10 9f e5                                      ldr r1, [pc, #0x40]
006a69c4  03 30 8f e0                                      add r3, pc, r3
006a69c8  02 20 93 e7                                      ldr r2, [r3, r2]
006a69cc  01 10 93 e7                                      ldr r1, [r3, r1]
006a69d0  10 40 2d e9                                      push {r4, lr}
006a69d4  01 cc 82 e2                                      add ip, r2, #0x100
006a69d8  10 e0 82 e2                                      add lr, r2, #0x10
006a69dc  e0 20 82 e2                                      add r2, r2, #0xe0
006a69e0  00 40 a0 e1                                      mov r4, r0
006a69e4  00 e0 80 e5                                      str lr, [r0]
006a69e8  58 21 80 e5                                      str r2, [r0, #0x158]
006a69ec  5c c1 80 e5                                      str ip, [r0, #0x15c]
006a69f0  04 10 81 e2                                      add r1, r1, #4
006a69f4  89 49 fa eb                                      bl #0x539020
006a69f8  04 00 a0 e1                                      mov r0, r4
006a69fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006a6a00  cc e0 2e 00 6c 25 00 00 30 1d 00 00              .byte 0xcc, 0xe0, 0x2e, 0x00, 0x6c, 0x25, 0x00, 0x00, 0x30, 0x1d, 0x00, 0x00

; FUNCTION 0x006a6a0c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIButton
; alias: _ZTv0_n24_N6glitch3gui10IGUIButtonD1Ev
; demangled: virtual thunk to glitch::gui::IGUIButton::~IGUIButton()
; decoder-mode: arm
006a6a0c  00 30 90 e5                                      ldr r3, [r0]
006a6a10  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006a6a14  03 00 80 e0                                      add r0, r0, r3
006a6a18  e6 ff ff ea                                      b #0x6a69b8

; FUNCTION 0x006a6a1c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIButton
; alias: _ZTv0_n12_N6glitch3gui10IGUIButtonD1Ev
; demangled: virtual thunk to glitch::gui::IGUIButton::~IGUIButton()
; decoder-mode: arm
006a6a1c  00 30 90 e5                                      ldr r3, [r0]
006a6a20  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a6a24  03 00 80 e0                                      add r0, r0, r3
006a6a28  e2 ff ff ea                                      b #0x6a69b8

; FUNCTION 0x006a6e30, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUIButton
; alias: _ZN6glitch3gui10IGUIButtonD0Ev
; demangled: glitch::gui::IGUIButton::~IGUIButton()
; decoder-mode: arm
006a6e30  48 30 9f e5                                      ldr r3, [pc, #0x48]
006a6e34  48 20 9f e5                                      ldr r2, [pc, #0x48]
006a6e38  48 10 9f e5                                      ldr r1, [pc, #0x48]
006a6e3c  03 30 8f e0                                      add r3, pc, r3
006a6e40  02 20 93 e7                                      ldr r2, [r3, r2]
006a6e44  01 10 93 e7                                      ldr r1, [r3, r1]
006a6e48  10 40 2d e9                                      push {r4, lr}
006a6e4c  01 cc 82 e2                                      add ip, r2, #0x100
006a6e50  10 e0 82 e2                                      add lr, r2, #0x10
006a6e54  e0 20 82 e2                                      add r2, r2, #0xe0
006a6e58  00 40 a0 e1                                      mov r4, r0
006a6e5c  00 e0 80 e5                                      str lr, [r0]
006a6e60  58 21 80 e5                                      str r2, [r0, #0x158]
006a6e64  5c c1 80 e5                                      str ip, [r0, #0x15c]
006a6e68  04 10 81 e2                                      add r1, r1, #4
006a6e6c  6b 48 fa eb                                      bl #0x539020
006a6e70  04 00 a0 e1                                      mov r0, r4
006a6e74  0d 9d f1 eb                                      bl #0x30e2b0
006a6e78  04 00 a0 e1                                      mov r0, r4
006a6e7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006a6e80  54 dc 2e 00 6c 25 00 00 30 1d 00 00              .byte 0x54, 0xdc, 0x2e, 0x00, 0x6c, 0x25, 0x00, 0x00, 0x30, 0x1d, 0x00, 0x00

; FUNCTION 0x006a6e8c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIButton
; alias: _ZTv0_n24_N6glitch3gui10IGUIButtonD0Ev
; demangled: virtual thunk to glitch::gui::IGUIButton::~IGUIButton()
; decoder-mode: arm
006a6e8c  00 30 90 e5                                      ldr r3, [r0]
006a6e90  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006a6e94  03 00 80 e0                                      add r0, r0, r3
006a6e98  e4 ff ff ea                                      b #0x6a6e30

; FUNCTION 0x006a6e9c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIButton
; alias: _ZTv0_n12_N6glitch3gui10IGUIButtonD0Ev
; demangled: virtual thunk to glitch::gui::IGUIButton::~IGUIButton()
; decoder-mode: arm
006a6e9c  00 30 90 e5                                      ldr r3, [r0]
006a6ea0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a6ea4  03 00 80 e0                                      add r0, r0, r3
006a6ea8  e0 ff ff ea                                      b #0x6a6e30
