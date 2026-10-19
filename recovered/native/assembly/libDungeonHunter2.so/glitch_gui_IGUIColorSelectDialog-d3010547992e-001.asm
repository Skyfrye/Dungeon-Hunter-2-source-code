; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a8cf4, declared_size=712, range_size=712, mode=arm
; class-group: glitch::gui::IGUIColorSelectDialog
; alias: _ZN6glitch3gui21IGUIColorSelectDialogC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIColorSelectDialog::IGUIColorSelectDialog(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
006a8cf4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a8cf8  b4 42 9f e5                                      ldr r4, [pc, #0x2b4]
006a8cfc  b4 e2 9f e5                                      ldr lr, [pc, #0x2b4]
006a8d00  1c d0 4d e2                                      sub sp, sp, #0x1c
006a8d04  04 40 8f e0                                      add r4, pc, r4
006a8d08  0e e0 94 e7                                      ldr lr, [r4, lr]
006a8d0c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
006a8d10  00 40 8d e5                                      str r4, [sp]
006a8d14  00 40 a0 e1                                      mov r4, r0
006a8d18  08 00 8e e2                                      add r0, lr, #8
006a8d1c  00 80 9c e5                                      ldr r8, [ip]
006a8d20  80 40 9c e9                                      ldmib ip, {r7, lr}
006a8d24  0c a0 9c e5                                      ldr sl, [ip, #0xc]
006a8d28  00 00 84 e5                                      str r0, [r4]
006a8d2c  01 60 a0 e1                                      mov r6, r1
006a8d30  04 10 91 e5                                      ldr r1, [r1, #4]
006a8d34  04 00 86 e2                                      add r0, r6, #4
006a8d38  00 50 a0 e3                                      mov r5, #0
006a8d3c  00 10 84 e5                                      str r1, [r4]
006a8d40  0c b0 11 e5                                      ldr fp, [r1, #-0xc]
006a8d44  04 90 90 e5                                      ldr sb, [r0, #4]
006a8d48  00 c0 a0 e3                                      mov ip, #0
006a8d4c  01 10 a0 e3                                      mov r1, #1
006a8d50  0b 90 84 e7                                      str sb, [r4, fp]
006a8d54  08 00 90 e5                                      ldr r0, [r0, #8]
006a8d58  00 b0 94 e5                                      ldr fp, [r4]
006a8d5c  a0 90 84 e2                                      add sb, r4, #0xa0
006a8d60  14 00 8d e5                                      str r0, [sp, #0x14]
006a8d64  10 b0 1b e5                                      ldr fp, [fp, #-0x10]
006a8d68  0c 00 84 e2                                      add r0, r4, #0xc
006a8d6c  04 00 8d e5                                      str r0, [sp, #4]
006a8d70  10 b0 8d e5                                      str fp, [sp, #0x10]
006a8d74  04 b0 84 e2                                      add fp, r4, #4
006a8d78  0c b0 8d e5                                      str fp, [sp, #0xc]
006a8d7c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006a8d80  10 b0 9d e5                                      ldr fp, [sp, #0x10]
006a8d84  0b 00 84 e7                                      str r0, [r4, fp]
006a8d88  0c b0 9d e5                                      ldr fp, [sp, #0xc]
006a8d8c  08 b0 84 e5                                      str fp, [r4, #8]
006a8d90  04 00 9d e5                                      ldr r0, [sp, #4]
006a8d94  30 e0 84 e5                                      str lr, [r4, #0x30]
006a8d98  28 80 84 e5                                      str r8, [r4, #0x28]
006a8d9c  20 00 84 e5                                      str r0, [r4, #0x20]
006a8da0  1c 00 84 e5                                      str r0, [r4, #0x1c]
006a8da4  2c 70 84 e5                                      str r7, [r4, #0x2c]
006a8da8  09 00 a0 e1                                      mov r0, sb
006a8dac  04 b0 84 e5                                      str fp, [r4, #4]
006a8db0  34 a0 84 e5                                      str sl, [r4, #0x34]
006a8db4  38 80 84 e5                                      str r8, [r4, #0x38]
006a8db8  3c 70 84 e5                                      str r7, [r4, #0x3c]
006a8dbc  40 e0 84 e5                                      str lr, [r4, #0x40]
006a8dc0  48 80 84 e5                                      str r8, [r4, #0x48]
006a8dc4  4c 70 84 e5                                      str r7, [r4, #0x4c]
006a8dc8  50 e0 84 e5                                      str lr, [r4, #0x50]
006a8dcc  58 80 84 e5                                      str r8, [r4, #0x58]
006a8dd0  5c 70 84 e5                                      str r7, [r4, #0x5c]
006a8dd4  60 e0 84 e5                                      str lr, [r4, #0x60]
006a8dd8  84 c0 84 e5                                      str ip, [r4, #0x84]
006a8ddc  99 10 c4 e5                                      strb r1, [r4, #0x99]
006a8de0  78 c0 84 e5                                      str ip, [r4, #0x78]
006a8de4  7c c0 84 e5                                      str ip, [r4, #0x7c]
006a8de8  80 c0 84 e5                                      str ip, [r4, #0x80]
006a8dec  90 10 84 e5                                      str r1, [r4, #0x90]
006a8df0  94 10 84 e5                                      str r1, [r4, #0x94]
006a8df4  98 10 c4 e5                                      strb r1, [r4, #0x98]
006a8df8  44 a0 84 e5                                      str sl, [r4, #0x44]
006a8dfc  0c 50 c4 e5                                      strb r5, [r4, #0xc]
006a8e00  24 50 84 e5                                      str r5, [r4, #0x24]
006a8e04  64 a0 84 e5                                      str sl, [r4, #0x64]
006a8e08  54 a0 84 e5                                      str sl, [r4, #0x54]
006a8e0c  68 50 84 e5                                      str r5, [r4, #0x68]
006a8e10  6c 50 84 e5                                      str r5, [r4, #0x6c]
006a8e14  70 50 84 e5                                      str r5, [r4, #0x70]
006a8e18  74 50 84 e5                                      str r5, [r4, #0x74]
006a8e1c  88 50 84 e5                                      str r5, [r4, #0x88]
006a8e20  8c 50 84 e5                                      str r5, [r4, #0x8c]
006a8e24  9a 50 c4 e5                                      strb r5, [r4, #0x9a]
006a8e28  9b 50 c4 e5                                      strb r5, [r4, #0x9b]
006a8e2c  9c 50 c4 e5                                      strb r5, [r4, #0x9c]
006a8e30  e0 90 84 e5                                      str sb, [r4, #0xe0]
006a8e34  e4 90 84 e5                                      str sb, [r4, #0xe4]
006a8e38  10 10 a0 e3                                      mov r1, #0x10
006a8e3c  02 70 a0 e1                                      mov r7, r2
006a8e40  03 80 a0 e1                                      mov r8, r3
006a8e44  b5 de f1 eb                                      bl #0x320920
006a8e48  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
006a8e4c  e8 30 84 e2                                      add r3, r4, #0xe8
006a8e50  03 00 a0 e1                                      mov r0, r3
006a8e54  00 50 82 e5                                      str r5, [r2]
006a8e58  10 10 a0 e3                                      mov r1, #0x10
006a8e5c  28 31 84 e5                                      str r3, [r4, #0x128]
006a8e60  2c 31 84 e5                                      str r3, [r4, #0x12c]
006a8e64  ad de f1 eb                                      bl #0x320920
006a8e68  28 31 94 e5                                      ldr r3, [r4, #0x128]
006a8e6c  05 00 58 e1                                      cmp r8, r5
006a8e70  00 50 83 e5                                      str r5, [r3]
006a8e74  40 30 9d e5                                      ldr r3, [sp, #0x40]
006a8e78  4c 51 84 e5                                      str r5, [r4, #0x14c]
006a8e7c  50 71 84 e5                                      str r7, [r4, #0x150]
006a8e80  30 31 84 e5                                      str r3, [r4, #0x130]
006a8e84  00 30 e0 e3                                      mvn r3, #0
006a8e88  38 31 84 e5                                      str r3, [r4, #0x138]
006a8e8c  07 30 a0 e3                                      mov r3, #7
006a8e90  54 31 84 e5                                      str r3, [r4, #0x154]
006a8e94  34 51 c4 e5                                      strb r5, [r4, #0x134]
006a8e98  3c 51 c4 e5                                      strb r5, [r4, #0x13c]
006a8e9c  40 51 84 e5                                      str r5, [r4, #0x140]
006a8ea0  44 51 84 e5                                      str r5, [r4, #0x144]
006a8ea4  48 51 84 e5                                      str r5, [r4, #0x148]
006a8ea8  04 00 00 0a                                      beq #0x6a8ec0
006a8eac  08 00 a0 e1                                      mov r0, r8
006a8eb0  00 30 98 e5                                      ldr r3, [r8]
006a8eb4  04 10 a0 e1                                      mov r1, r4
006a8eb8  0f e0 a0 e1                                      mov lr, pc
006a8ebc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006a8ec0  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a8ec4  00 00 53 e3                                      cmp r3, #0
006a8ec8  2d 00 00 0a                                      beq #0x6a8f84
006a8ecc  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
006a8ed0  38 c0 93 e5                                      ldr ip, [r3, #0x38]
006a8ed4  38 70 94 e5                                      ldr r7, [r4, #0x38]
006a8ed8  3c 50 94 e5                                      ldr r5, [r4, #0x3c]
006a8edc  40 10 94 e5                                      ldr r1, [r4, #0x40]
006a8ee0  44 20 94 e5                                      ldr r2, [r4, #0x44]
006a8ee4  40 a0 93 e5                                      ldr sl, [r3, #0x40]
006a8ee8  44 80 93 e5                                      ldr r8, [r3, #0x44]
006a8eec  02 20 80 e0                                      add r2, r0, r2
006a8ef0  01 10 8c e0                                      add r1, ip, r1
006a8ef4  05 50 80 e0                                      add r5, r0, r5
006a8ef8  07 70 8c e0                                      add r7, ip, r7
006a8efc  4c 50 84 e5                                      str r5, [r4, #0x4c]
006a8f00  54 20 84 e5                                      str r2, [r4, #0x54]
006a8f04  48 70 84 e5                                      str r7, [r4, #0x48]
006a8f08  50 10 84 e5                                      str r1, [r4, #0x50]
006a8f0c  44 20 84 e5                                      str r2, [r4, #0x44]
006a8f10  70 a0 84 e5                                      str sl, [r4, #0x70]
006a8f14  74 80 84 e5                                      str r8, [r4, #0x74]
006a8f18  68 c0 84 e5                                      str ip, [r4, #0x68]
006a8f1c  6c 00 84 e5                                      str r0, [r4, #0x6c]
006a8f20  38 70 84 e5                                      str r7, [r4, #0x38]
006a8f24  3c 50 84 e5                                      str r5, [r4, #0x3c]
006a8f28  40 10 84 e5                                      str r1, [r4, #0x40]
006a8f2c  50 00 93 e5                                      ldr r0, [r3, #0x50]
006a8f30  00 00 51 e1                                      cmp r1, r0
006a8f34  50 00 84 c5                                      strgt r0, [r4, #0x50]
006a8f38  54 10 93 e5                                      ldr r1, [r3, #0x54]
006a8f3c  01 00 52 e1                                      cmp r2, r1
006a8f40  54 10 84 c5                                      strgt r1, [r4, #0x54]
006a8f44  48 10 93 e5                                      ldr r1, [r3, #0x48]
006a8f48  48 20 94 e5                                      ldr r2, [r4, #0x48]
006a8f4c  02 00 51 e1                                      cmp r1, r2
006a8f50  48 10 84 c5                                      strgt r1, [r4, #0x48]
006a8f54  01 20 a0 c1                                      movgt r2, r1
006a8f58  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
006a8f5c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006a8f60  03 00 51 e1                                      cmp r1, r3
006a8f64  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
006a8f68  01 30 a0 c1                                      movgt r3, r1
006a8f6c  54 10 94 e5                                      ldr r1, [r4, #0x54]
006a8f70  03 00 51 e1                                      cmp r1, r3
006a8f74  50 30 94 e5                                      ldr r3, [r4, #0x50]
006a8f78  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
006a8f7c  03 00 52 e1                                      cmp r2, r3
006a8f80  48 30 84 c5                                      strgt r3, [r4, #0x48]
006a8f84  00 30 96 e5                                      ldr r3, [r6]
006a8f88  04 00 a0 e1                                      mov r0, r4
006a8f8c  00 30 84 e5                                      str r3, [r4]
006a8f90  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a8f94  10 20 96 e5                                      ldr r2, [r6, #0x10]
006a8f98  03 20 84 e7                                      str r2, [r4, r3]
006a8f9c  00 30 94 e5                                      ldr r3, [r4]
006a8fa0  14 20 96 e5                                      ldr r2, [r6, #0x14]
006a8fa4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006a8fa8  03 20 84 e7                                      str r2, [r4, r3]
006a8fac  1c d0 8d e2                                      add sp, sp, #0x1c
006a8fb0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006a8fb4  8c bd 2e 00 4c 27 00 00                          .byte 0x8c, 0xbd, 0x2e, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x006a9b90, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUIColorSelectDialog
; alias: _ZN6glitch3gui21IGUIColorSelectDialogD1Ev
; demangled: glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog()
; decoder-mode: arm
006a9b90  40 30 9f e5                                      ldr r3, [pc, #0x40]
006a9b94  40 20 9f e5                                      ldr r2, [pc, #0x40]
006a9b98  40 10 9f e5                                      ldr r1, [pc, #0x40]
006a9b9c  03 30 8f e0                                      add r3, pc, r3
006a9ba0  02 20 93 e7                                      ldr r2, [r3, r2]
006a9ba4  01 10 93 e7                                      ldr r1, [r3, r1]
006a9ba8  10 40 2d e9                                      push {r4, lr}
006a9bac  c4 c0 82 e2                                      add ip, r2, #0xc4
006a9bb0  10 e0 82 e2                                      add lr, r2, #0x10
006a9bb4  a4 20 82 e2                                      add r2, r2, #0xa4
006a9bb8  00 40 a0 e1                                      mov r4, r0
006a9bbc  00 e0 80 e5                                      str lr, [r0]
006a9bc0  58 21 80 e5                                      str r2, [r0, #0x158]
006a9bc4  5c c1 80 e5                                      str ip, [r0, #0x15c]
006a9bc8  04 10 81 e2                                      add r1, r1, #4
006a9bcc  13 3d fa eb                                      bl #0x539020
006a9bd0  04 00 a0 e1                                      mov r0, r4
006a9bd4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006a9bd8  f4 ae 2e 00 70 30 00 00 a8 0e 00 00              .byte 0xf4, 0xae, 0x2e, 0x00, 0x70, 0x30, 0x00, 0x00, 0xa8, 0x0e, 0x00, 0x00

; FUNCTION 0x006a9be4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIColorSelectDialog
; alias: _ZTv0_n24_N6glitch3gui21IGUIColorSelectDialogD1Ev
; demangled: virtual thunk to glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog()
; decoder-mode: arm
006a9be4  00 30 90 e5                                      ldr r3, [r0]
006a9be8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006a9bec  03 00 80 e0                                      add r0, r0, r3
006a9bf0  e6 ff ff ea                                      b #0x6a9b90

; FUNCTION 0x006a9bf4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIColorSelectDialog
; alias: _ZTv0_n12_N6glitch3gui21IGUIColorSelectDialogD1Ev
; demangled: virtual thunk to glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog()
; decoder-mode: arm
006a9bf4  00 30 90 e5                                      ldr r3, [r0]
006a9bf8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a9bfc  03 00 80 e0                                      add r0, r0, r3
006a9c00  e2 ff ff ea                                      b #0x6a9b90

; FUNCTION 0x006a9ef0, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUIColorSelectDialog
; alias: _ZN6glitch3gui21IGUIColorSelectDialogD0Ev
; demangled: glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog()
; decoder-mode: arm
006a9ef0  48 30 9f e5                                      ldr r3, [pc, #0x48]
006a9ef4  48 20 9f e5                                      ldr r2, [pc, #0x48]
006a9ef8  48 10 9f e5                                      ldr r1, [pc, #0x48]
006a9efc  03 30 8f e0                                      add r3, pc, r3
006a9f00  02 20 93 e7                                      ldr r2, [r3, r2]
006a9f04  01 10 93 e7                                      ldr r1, [r3, r1]
006a9f08  10 40 2d e9                                      push {r4, lr}
006a9f0c  c4 c0 82 e2                                      add ip, r2, #0xc4
006a9f10  10 e0 82 e2                                      add lr, r2, #0x10
006a9f14  a4 20 82 e2                                      add r2, r2, #0xa4
006a9f18  00 40 a0 e1                                      mov r4, r0
006a9f1c  00 e0 80 e5                                      str lr, [r0]
006a9f20  58 21 80 e5                                      str r2, [r0, #0x158]
006a9f24  5c c1 80 e5                                      str ip, [r0, #0x15c]
006a9f28  04 10 81 e2                                      add r1, r1, #4
006a9f2c  3b 3c fa eb                                      bl #0x539020
006a9f30  04 00 a0 e1                                      mov r0, r4
006a9f34  dd 90 f1 eb                                      bl #0x30e2b0
006a9f38  04 00 a0 e1                                      mov r0, r4
006a9f3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006a9f40  94 ab 2e 00 70 30 00 00 a8 0e 00 00              .byte 0x94, 0xab, 0x2e, 0x00, 0x70, 0x30, 0x00, 0x00, 0xa8, 0x0e, 0x00, 0x00

; FUNCTION 0x006a9f4c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIColorSelectDialog
; alias: _ZTv0_n24_N6glitch3gui21IGUIColorSelectDialogD0Ev
; demangled: virtual thunk to glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog()
; decoder-mode: arm
006a9f4c  00 30 90 e5                                      ldr r3, [r0]
006a9f50  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006a9f54  03 00 80 e0                                      add r0, r0, r3
006a9f58  e4 ff ff ea                                      b #0x6a9ef0

; FUNCTION 0x006a9f5c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIColorSelectDialog
; alias: _ZTv0_n12_N6glitch3gui21IGUIColorSelectDialogD0Ev
; demangled: virtual thunk to glitch::gui::IGUIColorSelectDialog::~IGUIColorSelectDialog()
; decoder-mode: arm
006a9f5c  00 30 90 e5                                      ldr r3, [r0]
006a9f60  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a9f64  03 00 80 e0                                      add r0, r0, r3
006a9f68  e0 ff ff ea                                      b #0x6a9ef0
