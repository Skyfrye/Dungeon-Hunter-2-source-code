; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006aae64, declared_size=728, range_size=728, mode=arm
; class-group: glitch::gui::IGUIComboBox
; alias: _ZN6glitch3gui12IGUIComboBoxC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIComboBox::IGUIComboBox(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
006aae64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006aae68  c4 e2 9f e5                                      ldr lr, [pc, #0x2c4]
006aae6c  c4 52 9f e5                                      ldr r5, [pc, #0x2c4]
006aae70  24 d0 4d e2                                      sub sp, sp, #0x24
006aae74  0e e0 8f e0                                      add lr, pc, lr
006aae78  05 50 9e e7                                      ldr r5, [lr, r5]
006aae7c  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006aae80  00 40 a0 e1                                      mov r4, r0
006aae84  08 00 85 e2                                      add r0, r5, #8
006aae88  0c a0 9c e5                                      ldr sl, [ip, #0xc]
006aae8c  00 70 9c e5                                      ldr r7, [ip]
006aae90  40 01 9c e9                                      ldmib ip, {r6, r8}
006aae94  00 00 84 e5                                      str r0, [r4]
006aae98  04 00 91 e5                                      ldr r0, [r1, #4]
006aae9c  01 50 a0 e1                                      mov r5, r1
006aaea0  04 10 81 e2                                      add r1, r1, #4
006aaea4  00 00 84 e5                                      str r0, [r4]
006aaea8  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006aaeac  0c c0 84 e2                                      add ip, r4, #0xc
006aaeb0  18 00 8d e5                                      str r0, [sp, #0x18]
006aaeb4  04 00 84 e2                                      add r0, r4, #4
006aaeb8  04 00 8d e5                                      str r0, [sp, #4]
006aaebc  04 b0 91 e5                                      ldr fp, [r1, #4]
006aaec0  18 90 9d e5                                      ldr sb, [sp, #0x18]
006aaec4  0c 00 a0 e1                                      mov r0, ip
006aaec8  09 b0 84 e7                                      str fp, [r4, sb]
006aaecc  08 10 91 e5                                      ldr r1, [r1, #8]
006aaed0  00 90 94 e5                                      ldr sb, [r4]
006aaed4  1c 10 8d e5                                      str r1, [sp, #0x1c]
006aaed8  10 90 19 e5                                      ldr sb, [sb, #-0x10]
006aaedc  0c 20 8d e5                                      str r2, [sp, #0xc]
006aaee0  10 10 a0 e3                                      mov r1, #0x10
006aaee4  18 90 8d e5                                      str sb, [sp, #0x18]
006aaee8  18 20 9d e5                                      ldr r2, [sp, #0x18]
006aaeec  03 90 a0 e1                                      mov sb, r3
006aaef0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006aaef4  02 30 84 e7                                      str r3, [r4, r2]
006aaef8  04 b0 9d e5                                      ldr fp, [sp, #4]
006aaefc  1c c0 84 e5                                      str ip, [r4, #0x1c]
006aaf00  20 c0 84 e5                                      str ip, [r4, #0x20]
006aaf04  08 b0 84 e5                                      str fp, [r4, #8]
006aaf08  04 b0 84 e5                                      str fp, [r4, #4]
006aaf0c  a5 d6 f1 eb                                      bl #0x3209a8
006aaf10  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
006aaf14  00 b0 a0 e3                                      mov fp, #0
006aaf18  00 00 a0 e3                                      mov r0, #0
006aaf1c  01 10 a0 e3                                      mov r1, #1
006aaf20  a0 30 84 e2                                      add r3, r4, #0xa0
006aaf24  00 b0 cc e5                                      strb fp, [ip]
006aaf28  84 00 84 e5                                      str r0, [r4, #0x84]
006aaf2c  99 10 c4 e5                                      strb r1, [r4, #0x99]
006aaf30  78 00 84 e5                                      str r0, [r4, #0x78]
006aaf34  7c 00 84 e5                                      str r0, [r4, #0x7c]
006aaf38  80 00 84 e5                                      str r0, [r4, #0x80]
006aaf3c  90 10 84 e5                                      str r1, [r4, #0x90]
006aaf40  03 00 a0 e1                                      mov r0, r3
006aaf44  94 10 84 e5                                      str r1, [r4, #0x94]
006aaf48  98 10 c4 e5                                      strb r1, [r4, #0x98]
006aaf4c  58 70 84 e5                                      str r7, [r4, #0x58]
006aaf50  10 10 a0 e3                                      mov r1, #0x10
006aaf54  5c 60 84 e5                                      str r6, [r4, #0x5c]
006aaf58  60 80 84 e5                                      str r8, [r4, #0x60]
006aaf5c  64 a0 84 e5                                      str sl, [r4, #0x64]
006aaf60  24 b0 84 e5                                      str fp, [r4, #0x24]
006aaf64  28 70 84 e5                                      str r7, [r4, #0x28]
006aaf68  2c 60 84 e5                                      str r6, [r4, #0x2c]
006aaf6c  30 80 84 e5                                      str r8, [r4, #0x30]
006aaf70  34 a0 84 e5                                      str sl, [r4, #0x34]
006aaf74  38 70 84 e5                                      str r7, [r4, #0x38]
006aaf78  3c 60 84 e5                                      str r6, [r4, #0x3c]
006aaf7c  40 80 84 e5                                      str r8, [r4, #0x40]
006aaf80  44 a0 84 e5                                      str sl, [r4, #0x44]
006aaf84  48 70 84 e5                                      str r7, [r4, #0x48]
006aaf88  4c 60 84 e5                                      str r6, [r4, #0x4c]
006aaf8c  50 80 84 e5                                      str r8, [r4, #0x50]
006aaf90  54 a0 84 e5                                      str sl, [r4, #0x54]
006aaf94  68 b0 84 e5                                      str fp, [r4, #0x68]
006aaf98  6c b0 84 e5                                      str fp, [r4, #0x6c]
006aaf9c  70 b0 84 e5                                      str fp, [r4, #0x70]
006aafa0  74 b0 84 e5                                      str fp, [r4, #0x74]
006aafa4  88 b0 84 e5                                      str fp, [r4, #0x88]
006aafa8  8c b0 84 e5                                      str fp, [r4, #0x8c]
006aafac  9a b0 c4 e5                                      strb fp, [r4, #0x9a]
006aafb0  e0 30 84 e5                                      str r3, [r4, #0xe0]
006aafb4  e4 30 84 e5                                      str r3, [r4, #0xe4]
006aafb8  9b b0 c4 e5                                      strb fp, [r4, #0x9b]
006aafbc  9c b0 c4 e5                                      strb fp, [r4, #0x9c]
006aafc0  56 d6 f1 eb                                      bl #0x320920
006aafc4  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
006aafc8  e8 30 84 e2                                      add r3, r4, #0xe8
006aafcc  03 00 a0 e1                                      mov r0, r3
006aafd0  00 b0 81 e5                                      str fp, [r1]
006aafd4  28 31 84 e5                                      str r3, [r4, #0x128]
006aafd8  2c 31 84 e5                                      str r3, [r4, #0x12c]
006aafdc  10 10 a0 e3                                      mov r1, #0x10
006aafe0  4e d6 f1 eb                                      bl #0x320920
006aafe4  28 31 94 e5                                      ldr r3, [r4, #0x128]
006aafe8  0b 00 59 e1                                      cmp sb, fp
006aafec  00 b0 83 e5                                      str fp, [r3]
006aaff0  48 30 9d e5                                      ldr r3, [sp, #0x48]
006aaff4  4c b1 84 e5                                      str fp, [r4, #0x14c]
006aaff8  30 31 84 e5                                      str r3, [r4, #0x130]
006aaffc  00 30 e0 e3                                      mvn r3, #0
006ab000  38 31 84 e5                                      str r3, [r4, #0x138]
006ab004  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006ab008  34 b1 c4 e5                                      strb fp, [r4, #0x134]
006ab00c  3c b1 c4 e5                                      strb fp, [r4, #0x13c]
006ab010  50 31 84 e5                                      str r3, [r4, #0x150]
006ab014  02 30 a0 e3                                      mov r3, #2
006ab018  54 31 84 e5                                      str r3, [r4, #0x154]
006ab01c  40 b1 84 e5                                      str fp, [r4, #0x140]
006ab020  44 b1 84 e5                                      str fp, [r4, #0x144]
006ab024  48 b1 84 e5                                      str fp, [r4, #0x148]
006ab028  04 00 00 0a                                      beq #0x6ab040
006ab02c  09 00 a0 e1                                      mov r0, sb
006ab030  00 30 99 e5                                      ldr r3, [sb]
006ab034  04 10 a0 e1                                      mov r1, r4
006ab038  0f e0 a0 e1                                      mov lr, pc
006ab03c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006ab040  24 30 94 e5                                      ldr r3, [r4, #0x24]
006ab044  00 00 53 e3                                      cmp r3, #0
006ab048  2d 00 00 0a                                      beq #0x6ab104
006ab04c  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
006ab050  38 c0 93 e5                                      ldr ip, [r3, #0x38]
006ab054  38 70 94 e5                                      ldr r7, [r4, #0x38]
006ab058  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
006ab05c  40 10 94 e5                                      ldr r1, [r4, #0x40]
006ab060  44 20 94 e5                                      ldr r2, [r4, #0x44]
006ab064  40 a0 93 e5                                      ldr sl, [r3, #0x40]
006ab068  44 80 93 e5                                      ldr r8, [r3, #0x44]
006ab06c  02 20 80 e0                                      add r2, r0, r2
006ab070  01 10 8c e0                                      add r1, ip, r1
006ab074  06 60 80 e0                                      add r6, r0, r6
006ab078  07 70 8c e0                                      add r7, ip, r7
006ab07c  4c 60 84 e5                                      str r6, [r4, #0x4c]
006ab080  54 20 84 e5                                      str r2, [r4, #0x54]
006ab084  48 70 84 e5                                      str r7, [r4, #0x48]
006ab088  50 10 84 e5                                      str r1, [r4, #0x50]
006ab08c  44 20 84 e5                                      str r2, [r4, #0x44]
006ab090  70 a0 84 e5                                      str sl, [r4, #0x70]
006ab094  74 80 84 e5                                      str r8, [r4, #0x74]
006ab098  68 c0 84 e5                                      str ip, [r4, #0x68]
006ab09c  6c 00 84 e5                                      str r0, [r4, #0x6c]
006ab0a0  38 70 84 e5                                      str r7, [r4, #0x38]
006ab0a4  3c 60 84 e5                                      str r6, [r4, #0x3c]
006ab0a8  40 10 84 e5                                      str r1, [r4, #0x40]
006ab0ac  50 00 93 e5                                      ldr r0, [r3, #0x50]
006ab0b0  00 00 51 e1                                      cmp r1, r0
006ab0b4  50 00 84 c5                                      strgt r0, [r4, #0x50]
006ab0b8  54 10 93 e5                                      ldr r1, [r3, #0x54]
006ab0bc  01 00 52 e1                                      cmp r2, r1
006ab0c0  54 10 84 c5                                      strgt r1, [r4, #0x54]
006ab0c4  48 10 93 e5                                      ldr r1, [r3, #0x48]
006ab0c8  48 20 94 e5                                      ldr r2, [r4, #0x48]
006ab0cc  02 00 51 e1                                      cmp r1, r2
006ab0d0  48 10 84 c5                                      strgt r1, [r4, #0x48]
006ab0d4  01 20 a0 c1                                      movgt r2, r1
006ab0d8  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
006ab0dc  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006ab0e0  03 00 51 e1                                      cmp r1, r3
006ab0e4  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
006ab0e8  01 30 a0 c1                                      movgt r3, r1
006ab0ec  54 10 94 e5                                      ldr r1, [r4, #0x54]
006ab0f0  01 00 53 e1                                      cmp r3, r1
006ab0f4  50 30 94 e5                                      ldr r3, [r4, #0x50]
006ab0f8  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
006ab0fc  03 00 52 e1                                      cmp r2, r3
006ab100  48 30 84 c5                                      strgt r3, [r4, #0x48]
006ab104  00 30 95 e5                                      ldr r3, [r5]
006ab108  04 00 a0 e1                                      mov r0, r4
006ab10c  00 30 84 e5                                      str r3, [r4]
006ab110  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006ab114  10 20 95 e5                                      ldr r2, [r5, #0x10]
006ab118  03 20 84 e7                                      str r2, [r4, r3]
006ab11c  00 30 94 e5                                      ldr r3, [r4]
006ab120  14 20 95 e5                                      ldr r2, [r5, #0x14]
006ab124  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006ab128  03 20 84 e7                                      str r2, [r4, r3]
006ab12c  24 d0 8d e2                                      add sp, sp, #0x24
006ab130  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006ab134  1c 9c 2e 00 4c 27 00 00                          .byte 0x1c, 0x9c, 0x2e, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x006acbbc, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUIComboBox
; alias: _ZN6glitch3gui12IGUIComboBoxD1Ev
; demangled: glitch::gui::IGUIComboBox::~IGUIComboBox()
; decoder-mode: arm
006acbbc  40 30 9f e5                                      ldr r3, [pc, #0x40]
006acbc0  40 20 9f e5                                      ldr r2, [pc, #0x40]
006acbc4  40 10 9f e5                                      ldr r1, [pc, #0x40]
006acbc8  03 30 8f e0                                      add r3, pc, r3
006acbcc  02 20 93 e7                                      ldr r2, [r3, r2]
006acbd0  01 10 93 e7                                      ldr r1, [r3, r1]
006acbd4  10 40 2d e9                                      push {r4, lr}
006acbd8  e4 c0 82 e2                                      add ip, r2, #0xe4
006acbdc  10 e0 82 e2                                      add lr, r2, #0x10
006acbe0  c4 20 82 e2                                      add r2, r2, #0xc4
006acbe4  00 40 a0 e1                                      mov r4, r0
006acbe8  00 e0 80 e5                                      str lr, [r0]
006acbec  58 21 80 e5                                      str r2, [r0, #0x158]
006acbf0  5c c1 80 e5                                      str ip, [r0, #0x15c]
006acbf4  04 10 81 e2                                      add r1, r1, #4
006acbf8  08 31 fa eb                                      bl #0x539020
006acbfc  04 00 a0 e1                                      mov r0, r4
006acc00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006acc04  c8 7e 2e 00 f0 27 00 00 3c 18 00 00              .byte 0xc8, 0x7e, 0x2e, 0x00, 0xf0, 0x27, 0x00, 0x00, 0x3c, 0x18, 0x00, 0x00

; FUNCTION 0x006acc10, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIComboBox
; alias: _ZTv0_n24_N6glitch3gui12IGUIComboBoxD1Ev
; demangled: virtual thunk to glitch::gui::IGUIComboBox::~IGUIComboBox()
; decoder-mode: arm
006acc10  00 30 90 e5                                      ldr r3, [r0]
006acc14  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006acc18  03 00 80 e0                                      add r0, r0, r3
006acc1c  e6 ff ff ea                                      b #0x6acbbc

; FUNCTION 0x006acc20, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIComboBox
; alias: _ZTv0_n12_N6glitch3gui12IGUIComboBoxD1Ev
; demangled: virtual thunk to glitch::gui::IGUIComboBox::~IGUIComboBox()
; decoder-mode: arm
006acc20  00 30 90 e5                                      ldr r3, [r0]
006acc24  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006acc28  03 00 80 e0                                      add r0, r0, r3
006acc2c  e2 ff ff ea                                      b #0x6acbbc

; FUNCTION 0x006acd10, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUIComboBox
; alias: _ZN6glitch3gui12IGUIComboBoxD0Ev
; demangled: glitch::gui::IGUIComboBox::~IGUIComboBox()
; decoder-mode: arm
006acd10  48 30 9f e5                                      ldr r3, [pc, #0x48]
006acd14  48 20 9f e5                                      ldr r2, [pc, #0x48]
006acd18  48 10 9f e5                                      ldr r1, [pc, #0x48]
006acd1c  03 30 8f e0                                      add r3, pc, r3
006acd20  02 20 93 e7                                      ldr r2, [r3, r2]
006acd24  01 10 93 e7                                      ldr r1, [r3, r1]
006acd28  10 40 2d e9                                      push {r4, lr}
006acd2c  e4 c0 82 e2                                      add ip, r2, #0xe4
006acd30  10 e0 82 e2                                      add lr, r2, #0x10
006acd34  c4 20 82 e2                                      add r2, r2, #0xc4
006acd38  00 40 a0 e1                                      mov r4, r0
006acd3c  00 e0 80 e5                                      str lr, [r0]
006acd40  58 21 80 e5                                      str r2, [r0, #0x158]
006acd44  5c c1 80 e5                                      str ip, [r0, #0x15c]
006acd48  04 10 81 e2                                      add r1, r1, #4
006acd4c  b3 30 fa eb                                      bl #0x539020
006acd50  04 00 a0 e1                                      mov r0, r4
006acd54  55 85 f1 eb                                      bl #0x30e2b0
006acd58  04 00 a0 e1                                      mov r0, r4
006acd5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006acd60  74 7d 2e 00 f0 27 00 00 3c 18 00 00              .byte 0x74, 0x7d, 0x2e, 0x00, 0xf0, 0x27, 0x00, 0x00, 0x3c, 0x18, 0x00, 0x00

; FUNCTION 0x006acd6c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIComboBox
; alias: _ZTv0_n24_N6glitch3gui12IGUIComboBoxD0Ev
; demangled: virtual thunk to glitch::gui::IGUIComboBox::~IGUIComboBox()
; decoder-mode: arm
006acd6c  00 30 90 e5                                      ldr r3, [r0]
006acd70  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006acd74  03 00 80 e0                                      add r0, r0, r3
006acd78  e4 ff ff ea                                      b #0x6acd10

; FUNCTION 0x006acd7c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIComboBox
; alias: _ZTv0_n12_N6glitch3gui12IGUIComboBoxD0Ev
; demangled: virtual thunk to glitch::gui::IGUIComboBox::~IGUIComboBox()
; decoder-mode: arm
006acd7c  00 30 90 e5                                      ldr r3, [r0]
006acd80  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006acd84  03 00 80 e0                                      add r0, r0, r3
006acd88  e0 ff ff ea                                      b #0x6acd10
