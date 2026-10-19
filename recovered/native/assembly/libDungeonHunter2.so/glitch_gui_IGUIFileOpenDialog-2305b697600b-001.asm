; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053c07c, declared_size=712, range_size=712, mode=arm
; class-group: glitch::gui::IGUIFileOpenDialog
; alias: _ZN6glitch3gui18IGUIFileOpenDialogC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIFileOpenDialog::IGUIFileOpenDialog(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
0053c07c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053c080  b4 42 9f e5                                      ldr r4, [pc, #0x2b4]
0053c084  b4 e2 9f e5                                      ldr lr, [pc, #0x2b4]
0053c088  1c d0 4d e2                                      sub sp, sp, #0x1c
0053c08c  04 40 8f e0                                      add r4, pc, r4
0053c090  0e e0 94 e7                                      ldr lr, [r4, lr]
0053c094  44 c0 9d e5                                      ldr ip, [sp, #0x44]
0053c098  00 40 8d e5                                      str r4, [sp]
0053c09c  00 40 a0 e1                                      mov r4, r0
0053c0a0  08 00 8e e2                                      add r0, lr, #8
0053c0a4  00 80 9c e5                                      ldr r8, [ip]
0053c0a8  80 40 9c e9                                      ldmib ip, {r7, lr}
0053c0ac  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0053c0b0  00 00 84 e5                                      str r0, [r4]
0053c0b4  01 60 a0 e1                                      mov r6, r1
0053c0b8  04 10 91 e5                                      ldr r1, [r1, #4]
0053c0bc  04 00 86 e2                                      add r0, r6, #4
0053c0c0  00 50 a0 e3                                      mov r5, #0
0053c0c4  00 10 84 e5                                      str r1, [r4]
0053c0c8  0c b0 11 e5                                      ldr fp, [r1, #-0xc]
0053c0cc  04 90 90 e5                                      ldr sb, [r0, #4]
0053c0d0  00 c0 a0 e3                                      mov ip, #0
0053c0d4  01 10 a0 e3                                      mov r1, #1
0053c0d8  0b 90 84 e7                                      str sb, [r4, fp]
0053c0dc  08 00 90 e5                                      ldr r0, [r0, #8]
0053c0e0  00 b0 94 e5                                      ldr fp, [r4]
0053c0e4  a0 90 84 e2                                      add sb, r4, #0xa0
0053c0e8  14 00 8d e5                                      str r0, [sp, #0x14]
0053c0ec  10 b0 1b e5                                      ldr fp, [fp, #-0x10]
0053c0f0  0c 00 84 e2                                      add r0, r4, #0xc
0053c0f4  04 00 8d e5                                      str r0, [sp, #4]
0053c0f8  10 b0 8d e5                                      str fp, [sp, #0x10]
0053c0fc  04 b0 84 e2                                      add fp, r4, #4
0053c100  0c b0 8d e5                                      str fp, [sp, #0xc]
0053c104  14 00 9d e5                                      ldr r0, [sp, #0x14]
0053c108  10 b0 9d e5                                      ldr fp, [sp, #0x10]
0053c10c  0b 00 84 e7                                      str r0, [r4, fp]
0053c110  0c b0 9d e5                                      ldr fp, [sp, #0xc]
0053c114  08 b0 84 e5                                      str fp, [r4, #8]
0053c118  04 00 9d e5                                      ldr r0, [sp, #4]
0053c11c  30 e0 84 e5                                      str lr, [r4, #0x30]
0053c120  28 80 84 e5                                      str r8, [r4, #0x28]
0053c124  20 00 84 e5                                      str r0, [r4, #0x20]
0053c128  1c 00 84 e5                                      str r0, [r4, #0x1c]
0053c12c  2c 70 84 e5                                      str r7, [r4, #0x2c]
0053c130  09 00 a0 e1                                      mov r0, sb
0053c134  04 b0 84 e5                                      str fp, [r4, #4]
0053c138  34 a0 84 e5                                      str sl, [r4, #0x34]
0053c13c  38 80 84 e5                                      str r8, [r4, #0x38]
0053c140  3c 70 84 e5                                      str r7, [r4, #0x3c]
0053c144  40 e0 84 e5                                      str lr, [r4, #0x40]
0053c148  48 80 84 e5                                      str r8, [r4, #0x48]
0053c14c  4c 70 84 e5                                      str r7, [r4, #0x4c]
0053c150  50 e0 84 e5                                      str lr, [r4, #0x50]
0053c154  58 80 84 e5                                      str r8, [r4, #0x58]
0053c158  5c 70 84 e5                                      str r7, [r4, #0x5c]
0053c15c  60 e0 84 e5                                      str lr, [r4, #0x60]
0053c160  84 c0 84 e5                                      str ip, [r4, #0x84]
0053c164  99 10 c4 e5                                      strb r1, [r4, #0x99]
0053c168  78 c0 84 e5                                      str ip, [r4, #0x78]
0053c16c  7c c0 84 e5                                      str ip, [r4, #0x7c]
0053c170  80 c0 84 e5                                      str ip, [r4, #0x80]
0053c174  90 10 84 e5                                      str r1, [r4, #0x90]
0053c178  94 10 84 e5                                      str r1, [r4, #0x94]
0053c17c  98 10 c4 e5                                      strb r1, [r4, #0x98]
0053c180  44 a0 84 e5                                      str sl, [r4, #0x44]
0053c184  0c 50 c4 e5                                      strb r5, [r4, #0xc]
0053c188  24 50 84 e5                                      str r5, [r4, #0x24]
0053c18c  64 a0 84 e5                                      str sl, [r4, #0x64]
0053c190  54 a0 84 e5                                      str sl, [r4, #0x54]
0053c194  68 50 84 e5                                      str r5, [r4, #0x68]
0053c198  6c 50 84 e5                                      str r5, [r4, #0x6c]
0053c19c  70 50 84 e5                                      str r5, [r4, #0x70]
0053c1a0  74 50 84 e5                                      str r5, [r4, #0x74]
0053c1a4  88 50 84 e5                                      str r5, [r4, #0x88]
0053c1a8  8c 50 84 e5                                      str r5, [r4, #0x8c]
0053c1ac  9a 50 c4 e5                                      strb r5, [r4, #0x9a]
0053c1b0  9b 50 c4 e5                                      strb r5, [r4, #0x9b]
0053c1b4  9c 50 c4 e5                                      strb r5, [r4, #0x9c]
0053c1b8  e0 90 84 e5                                      str sb, [r4, #0xe0]
0053c1bc  e4 90 84 e5                                      str sb, [r4, #0xe4]
0053c1c0  10 10 a0 e3                                      mov r1, #0x10
0053c1c4  02 70 a0 e1                                      mov r7, r2
0053c1c8  03 80 a0 e1                                      mov r8, r3
0053c1cc  d3 91 f7 eb                                      bl #0x320920
0053c1d0  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
0053c1d4  e8 30 84 e2                                      add r3, r4, #0xe8
0053c1d8  03 00 a0 e1                                      mov r0, r3
0053c1dc  00 50 82 e5                                      str r5, [r2]
0053c1e0  10 10 a0 e3                                      mov r1, #0x10
0053c1e4  28 31 84 e5                                      str r3, [r4, #0x128]
0053c1e8  2c 31 84 e5                                      str r3, [r4, #0x12c]
0053c1ec  cb 91 f7 eb                                      bl #0x320920
0053c1f0  28 31 94 e5                                      ldr r3, [r4, #0x128]
0053c1f4  05 00 58 e1                                      cmp r8, r5
0053c1f8  00 50 83 e5                                      str r5, [r3]
0053c1fc  40 30 9d e5                                      ldr r3, [sp, #0x40]
0053c200  4c 51 84 e5                                      str r5, [r4, #0x14c]
0053c204  50 71 84 e5                                      str r7, [r4, #0x150]
0053c208  30 31 84 e5                                      str r3, [r4, #0x130]
0053c20c  00 30 e0 e3                                      mvn r3, #0
0053c210  38 31 84 e5                                      str r3, [r4, #0x138]
0053c214  06 30 a0 e3                                      mov r3, #6
0053c218  54 31 84 e5                                      str r3, [r4, #0x154]
0053c21c  34 51 c4 e5                                      strb r5, [r4, #0x134]
0053c220  3c 51 c4 e5                                      strb r5, [r4, #0x13c]
0053c224  40 51 84 e5                                      str r5, [r4, #0x140]
0053c228  44 51 84 e5                                      str r5, [r4, #0x144]
0053c22c  48 51 84 e5                                      str r5, [r4, #0x148]
0053c230  04 00 00 0a                                      beq #0x53c248
0053c234  08 00 a0 e1                                      mov r0, r8
0053c238  00 30 98 e5                                      ldr r3, [r8]
0053c23c  04 10 a0 e1                                      mov r1, r4
0053c240  0f e0 a0 e1                                      mov lr, pc
0053c244  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0053c248  24 30 94 e5                                      ldr r3, [r4, #0x24]
0053c24c  00 00 53 e3                                      cmp r3, #0
0053c250  2d 00 00 0a                                      beq #0x53c30c
0053c254  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
0053c258  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0053c25c  38 70 94 e5                                      ldr r7, [r4, #0x38]
0053c260  3c 50 94 e5                                      ldr r5, [r4, #0x3c]
0053c264  40 10 94 e5                                      ldr r1, [r4, #0x40]
0053c268  44 20 94 e5                                      ldr r2, [r4, #0x44]
0053c26c  40 a0 93 e5                                      ldr sl, [r3, #0x40]
0053c270  44 80 93 e5                                      ldr r8, [r3, #0x44]
0053c274  02 20 80 e0                                      add r2, r0, r2
0053c278  01 10 8c e0                                      add r1, ip, r1
0053c27c  05 50 80 e0                                      add r5, r0, r5
0053c280  07 70 8c e0                                      add r7, ip, r7
0053c284  4c 50 84 e5                                      str r5, [r4, #0x4c]
0053c288  54 20 84 e5                                      str r2, [r4, #0x54]
0053c28c  48 70 84 e5                                      str r7, [r4, #0x48]
0053c290  50 10 84 e5                                      str r1, [r4, #0x50]
0053c294  44 20 84 e5                                      str r2, [r4, #0x44]
0053c298  70 a0 84 e5                                      str sl, [r4, #0x70]
0053c29c  74 80 84 e5                                      str r8, [r4, #0x74]
0053c2a0  68 c0 84 e5                                      str ip, [r4, #0x68]
0053c2a4  6c 00 84 e5                                      str r0, [r4, #0x6c]
0053c2a8  38 70 84 e5                                      str r7, [r4, #0x38]
0053c2ac  3c 50 84 e5                                      str r5, [r4, #0x3c]
0053c2b0  40 10 84 e5                                      str r1, [r4, #0x40]
0053c2b4  50 00 93 e5                                      ldr r0, [r3, #0x50]
0053c2b8  00 00 51 e1                                      cmp r1, r0
0053c2bc  50 00 84 c5                                      strgt r0, [r4, #0x50]
0053c2c0  54 10 93 e5                                      ldr r1, [r3, #0x54]
0053c2c4  01 00 52 e1                                      cmp r2, r1
0053c2c8  54 10 84 c5                                      strgt r1, [r4, #0x54]
0053c2cc  48 10 93 e5                                      ldr r1, [r3, #0x48]
0053c2d0  48 20 94 e5                                      ldr r2, [r4, #0x48]
0053c2d4  02 00 51 e1                                      cmp r1, r2
0053c2d8  48 10 84 c5                                      strgt r1, [r4, #0x48]
0053c2dc  01 20 a0 c1                                      movgt r2, r1
0053c2e0  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
0053c2e4  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0053c2e8  03 00 51 e1                                      cmp r1, r3
0053c2ec  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
0053c2f0  01 30 a0 c1                                      movgt r3, r1
0053c2f4  54 10 94 e5                                      ldr r1, [r4, #0x54]
0053c2f8  03 00 51 e1                                      cmp r1, r3
0053c2fc  50 30 94 e5                                      ldr r3, [r4, #0x50]
0053c300  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
0053c304  03 00 52 e1                                      cmp r2, r3
0053c308  48 30 84 c5                                      strgt r3, [r4, #0x48]
0053c30c  00 30 96 e5                                      ldr r3, [r6]
0053c310  04 00 a0 e1                                      mov r0, r4
0053c314  00 30 84 e5                                      str r3, [r4]
0053c318  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0053c31c  10 20 96 e5                                      ldr r2, [r6, #0x10]
0053c320  03 20 84 e7                                      str r2, [r4, r3]
0053c324  00 30 94 e5                                      ldr r3, [r4]
0053c328  14 20 96 e5                                      ldr r2, [r6, #0x14]
0053c32c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0053c330  03 20 84 e7                                      str r2, [r4, r3]
0053c334  1c d0 8d e2                                      add sp, sp, #0x1c
0053c338  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0053c33c  04 8a 45 00 4c 27 00 00                          .byte 0x04, 0x8a, 0x45, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x0053c510, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUIFileOpenDialog
; alias: _ZN6glitch3gui18IGUIFileOpenDialogD1Ev
; demangled: glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog()
; decoder-mode: arm
0053c510  40 30 9f e5                                      ldr r3, [pc, #0x40]
0053c514  40 20 9f e5                                      ldr r2, [pc, #0x40]
0053c518  40 10 9f e5                                      ldr r1, [pc, #0x40]
0053c51c  03 30 8f e0                                      add r3, pc, r3
0053c520  02 20 93 e7                                      ldr r2, [r3, r2]
0053c524  01 10 93 e7                                      ldr r1, [r3, r1]
0053c528  10 40 2d e9                                      push {r4, lr}
0053c52c  c8 c0 82 e2                                      add ip, r2, #0xc8
0053c530  10 e0 82 e2                                      add lr, r2, #0x10
0053c534  a8 20 82 e2                                      add r2, r2, #0xa8
0053c538  00 40 a0 e1                                      mov r4, r0
0053c53c  00 e0 80 e5                                      str lr, [r0]
0053c540  58 21 80 e5                                      str r2, [r0, #0x158]
0053c544  5c c1 80 e5                                      str ip, [r0, #0x15c]
0053c548  04 10 81 e2                                      add r1, r1, #4
0053c54c  b3 f2 ff eb                                      bl #0x539020
0053c550  04 00 a0 e1                                      mov r0, r4
0053c554  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0053c558  74 85 45 00 58 28 00 00 c0 41 00 00              .byte 0x74, 0x85, 0x45, 0x00, 0x58, 0x28, 0x00, 0x00, 0xc0, 0x41, 0x00, 0x00

; FUNCTION 0x0053c564, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIFileOpenDialog
; alias: _ZTv0_n24_N6glitch3gui18IGUIFileOpenDialogD1Ev
; demangled: virtual thunk to glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog()
; decoder-mode: arm
0053c564  00 30 90 e5                                      ldr r3, [r0]
0053c568  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0053c56c  03 00 80 e0                                      add r0, r0, r3
0053c570  e6 ff ff ea                                      b #0x53c510

; FUNCTION 0x0053c574, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIFileOpenDialog
; alias: _ZTv0_n12_N6glitch3gui18IGUIFileOpenDialogD1Ev
; demangled: virtual thunk to glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog()
; decoder-mode: arm
0053c574  00 30 90 e5                                      ldr r3, [r0]
0053c578  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0053c57c  03 00 80 e0                                      add r0, r0, r3
0053c580  e2 ff ff ea                                      b #0x53c510

; FUNCTION 0x0053c6b8, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUIFileOpenDialog
; alias: _ZN6glitch3gui18IGUIFileOpenDialogD0Ev
; demangled: glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog()
; decoder-mode: arm
0053c6b8  48 30 9f e5                                      ldr r3, [pc, #0x48]
0053c6bc  48 20 9f e5                                      ldr r2, [pc, #0x48]
0053c6c0  48 10 9f e5                                      ldr r1, [pc, #0x48]
0053c6c4  03 30 8f e0                                      add r3, pc, r3
0053c6c8  02 20 93 e7                                      ldr r2, [r3, r2]
0053c6cc  01 10 93 e7                                      ldr r1, [r3, r1]
0053c6d0  10 40 2d e9                                      push {r4, lr}
0053c6d4  c8 c0 82 e2                                      add ip, r2, #0xc8
0053c6d8  10 e0 82 e2                                      add lr, r2, #0x10
0053c6dc  a8 20 82 e2                                      add r2, r2, #0xa8
0053c6e0  00 40 a0 e1                                      mov r4, r0
0053c6e4  00 e0 80 e5                                      str lr, [r0]
0053c6e8  58 21 80 e5                                      str r2, [r0, #0x158]
0053c6ec  5c c1 80 e5                                      str ip, [r0, #0x15c]
0053c6f0  04 10 81 e2                                      add r1, r1, #4
0053c6f4  49 f2 ff eb                                      bl #0x539020
0053c6f8  04 00 a0 e1                                      mov r0, r4
0053c6fc  eb 46 f7 eb                                      bl #0x30e2b0
0053c700  04 00 a0 e1                                      mov r0, r4
0053c704  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0053c708  cc 83 45 00 58 28 00 00 c0 41 00 00              .byte 0xcc, 0x83, 0x45, 0x00, 0x58, 0x28, 0x00, 0x00, 0xc0, 0x41, 0x00, 0x00

; FUNCTION 0x0053c714, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIFileOpenDialog
; alias: _ZTv0_n24_N6glitch3gui18IGUIFileOpenDialogD0Ev
; demangled: virtual thunk to glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog()
; decoder-mode: arm
0053c714  00 30 90 e5                                      ldr r3, [r0]
0053c718  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0053c71c  03 00 80 e0                                      add r0, r0, r3
0053c720  e4 ff ff ea                                      b #0x53c6b8

; FUNCTION 0x0053c724, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIFileOpenDialog
; alias: _ZTv0_n12_N6glitch3gui18IGUIFileOpenDialogD0Ev
; demangled: virtual thunk to glitch::gui::IGUIFileOpenDialog::~IGUIFileOpenDialog()
; decoder-mode: arm
0053c724  00 30 90 e5                                      ldr r3, [r0]
0053c728  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0053c72c  03 00 80 e0                                      add r0, r0, r3
0053c730  e0 ff ff ea                                      b #0x53c6b8
