; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a7918, declared_size=700, range_size=700, mode=arm
; class-group: glitch::gui::IGUICheckBox
; alias: _ZN6glitch3gui12IGUICheckBoxC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUICheckBox::IGUICheckBox(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
006a7918  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a791c  a8 42 9f e5                                      ldr r4, [pc, #0x2a8]
006a7920  a8 e2 9f e5                                      ldr lr, [pc, #0x2a8]
006a7924  1c d0 4d e2                                      sub sp, sp, #0x1c
006a7928  04 40 8f e0                                      add r4, pc, r4
006a792c  0e e0 94 e7                                      ldr lr, [r4, lr]
006a7930  44 c0 9d e5                                      ldr ip, [sp, #0x44]
006a7934  00 40 8d e5                                      str r4, [sp]
006a7938  00 40 a0 e1                                      mov r4, r0
006a793c  08 00 8e e2                                      add r0, lr, #8
006a7940  0c a0 9c e5                                      ldr sl, [ip, #0xc]
006a7944  00 41 9c e8                                      ldm ip, {r8, lr}
006a7948  08 c0 9c e5                                      ldr ip, [ip, #8]
006a794c  00 00 84 e5                                      str r0, [r4]
006a7950  04 60 91 e5                                      ldr r6, [r1, #4]
006a7954  04 00 81 e2                                      add r0, r1, #4
006a7958  01 70 a0 e3                                      mov r7, #1
006a795c  00 60 84 e5                                      str r6, [r4]
006a7960  0c b0 16 e5                                      ldr fp, [r6, #-0xc]
006a7964  04 90 90 e5                                      ldr sb, [r0, #4]
006a7968  00 60 a0 e3                                      mov r6, #0
006a796c  01 50 a0 e1                                      mov r5, r1
006a7970  0b 90 84 e7                                      str sb, [r4, fp]
006a7974  08 00 90 e5                                      ldr r0, [r0, #8]
006a7978  00 b0 94 e5                                      ldr fp, [r4]
006a797c  00 10 a0 e3                                      mov r1, #0
006a7980  14 00 8d e5                                      str r0, [sp, #0x14]
006a7984  10 b0 1b e5                                      ldr fp, [fp, #-0x10]
006a7988  0c 00 84 e2                                      add r0, r4, #0xc
006a798c  04 00 8d e5                                      str r0, [sp, #4]
006a7990  10 b0 8d e5                                      str fp, [sp, #0x10]
006a7994  04 b0 84 e2                                      add fp, r4, #4
006a7998  0c b0 8d e5                                      str fp, [sp, #0xc]
006a799c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006a79a0  10 b0 9d e5                                      ldr fp, [sp, #0x10]
006a79a4  a0 90 84 e2                                      add sb, r4, #0xa0
006a79a8  0b 00 84 e7                                      str r0, [r4, fp]
006a79ac  0c b0 9d e5                                      ldr fp, [sp, #0xc]
006a79b0  08 b0 84 e5                                      str fp, [r4, #8]
006a79b4  04 00 9d e5                                      ldr r0, [sp, #4]
006a79b8  2c e0 84 e5                                      str lr, [r4, #0x2c]
006a79bc  30 c0 84 e5                                      str ip, [r4, #0x30]
006a79c0  20 00 84 e5                                      str r0, [r4, #0x20]
006a79c4  1c 00 84 e5                                      str r0, [r4, #0x1c]
006a79c8  28 80 84 e5                                      str r8, [r4, #0x28]
006a79cc  09 00 a0 e1                                      mov r0, sb
006a79d0  04 b0 84 e5                                      str fp, [r4, #4]
006a79d4  34 a0 84 e5                                      str sl, [r4, #0x34]
006a79d8  38 80 84 e5                                      str r8, [r4, #0x38]
006a79dc  3c e0 84 e5                                      str lr, [r4, #0x3c]
006a79e0  40 c0 84 e5                                      str ip, [r4, #0x40]
006a79e4  44 a0 84 e5                                      str sl, [r4, #0x44]
006a79e8  48 80 84 e5                                      str r8, [r4, #0x48]
006a79ec  4c e0 84 e5                                      str lr, [r4, #0x4c]
006a79f0  50 c0 84 e5                                      str ip, [r4, #0x50]
006a79f4  58 80 84 e5                                      str r8, [r4, #0x58]
006a79f8  5c e0 84 e5                                      str lr, [r4, #0x5c]
006a79fc  60 c0 84 e5                                      str ip, [r4, #0x60]
006a7a00  64 a0 84 e5                                      str sl, [r4, #0x64]
006a7a04  84 10 84 e5                                      str r1, [r4, #0x84]
006a7a08  54 a0 84 e5                                      str sl, [r4, #0x54]
006a7a0c  78 10 84 e5                                      str r1, [r4, #0x78]
006a7a10  7c 10 84 e5                                      str r1, [r4, #0x7c]
006a7a14  80 10 84 e5                                      str r1, [r4, #0x80]
006a7a18  0c 60 c4 e5                                      strb r6, [r4, #0xc]
006a7a1c  24 60 84 e5                                      str r6, [r4, #0x24]
006a7a20  68 60 84 e5                                      str r6, [r4, #0x68]
006a7a24  6c 60 84 e5                                      str r6, [r4, #0x6c]
006a7a28  70 60 84 e5                                      str r6, [r4, #0x70]
006a7a2c  74 60 84 e5                                      str r6, [r4, #0x74]
006a7a30  88 60 84 e5                                      str r6, [r4, #0x88]
006a7a34  8c 60 84 e5                                      str r6, [r4, #0x8c]
006a7a38  90 70 84 e5                                      str r7, [r4, #0x90]
006a7a3c  94 70 84 e5                                      str r7, [r4, #0x94]
006a7a40  98 70 c4 e5                                      strb r7, [r4, #0x98]
006a7a44  99 70 c4 e5                                      strb r7, [r4, #0x99]
006a7a48  9a 60 c4 e5                                      strb r6, [r4, #0x9a]
006a7a4c  9b 60 c4 e5                                      strb r6, [r4, #0x9b]
006a7a50  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
006a7a54  e0 90 84 e5                                      str sb, [r4, #0xe0]
006a7a58  e4 90 84 e5                                      str sb, [r4, #0xe4]
006a7a5c  02 80 a0 e1                                      mov r8, r2
006a7a60  03 a0 a0 e1                                      mov sl, r3
006a7a64  aa ff ff eb                                      bl #0x6a7914
006a7a68  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
006a7a6c  e8 30 84 e2                                      add r3, r4, #0xe8
006a7a70  03 00 a0 e1                                      mov r0, r3
006a7a74  00 60 82 e5                                      str r6, [r2]
006a7a78  28 31 84 e5                                      str r3, [r4, #0x128]
006a7a7c  2c 31 84 e5                                      str r3, [r4, #0x12c]
006a7a80  a3 ff ff eb                                      bl #0x6a7914
006a7a84  28 31 94 e5                                      ldr r3, [r4, #0x128]
006a7a88  06 00 5a e1                                      cmp sl, r6
006a7a8c  00 60 83 e5                                      str r6, [r3]
006a7a90  40 30 9d e5                                      ldr r3, [sp, #0x40]
006a7a94  4c 61 84 e5                                      str r6, [r4, #0x14c]
006a7a98  50 81 84 e5                                      str r8, [r4, #0x150]
006a7a9c  30 31 84 e5                                      str r3, [r4, #0x130]
006a7aa0  00 30 e0 e3                                      mvn r3, #0
006a7aa4  38 31 84 e5                                      str r3, [r4, #0x138]
006a7aa8  54 71 84 e5                                      str r7, [r4, #0x154]
006a7aac  34 61 c4 e5                                      strb r6, [r4, #0x134]
006a7ab0  3c 61 c4 e5                                      strb r6, [r4, #0x13c]
006a7ab4  40 61 84 e5                                      str r6, [r4, #0x140]
006a7ab8  44 61 84 e5                                      str r6, [r4, #0x144]
006a7abc  48 61 84 e5                                      str r6, [r4, #0x148]
006a7ac0  04 00 00 0a                                      beq #0x6a7ad8
006a7ac4  0a 00 a0 e1                                      mov r0, sl
006a7ac8  00 30 9a e5                                      ldr r3, [sl]
006a7acc  04 10 a0 e1                                      mov r1, r4
006a7ad0  0f e0 a0 e1                                      mov lr, pc
006a7ad4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006a7ad8  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a7adc  00 00 53 e3                                      cmp r3, #0
006a7ae0  2d 00 00 0a                                      beq #0x6a7b9c
006a7ae4  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
006a7ae8  38 c0 93 e5                                      ldr ip, [r3, #0x38]
006a7aec  38 70 94 e5                                      ldr r7, [r4, #0x38]
006a7af0  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
006a7af4  40 10 94 e5                                      ldr r1, [r4, #0x40]
006a7af8  44 20 94 e5                                      ldr r2, [r4, #0x44]
006a7afc  40 a0 93 e5                                      ldr sl, [r3, #0x40]
006a7b00  44 80 93 e5                                      ldr r8, [r3, #0x44]
006a7b04  02 20 80 e0                                      add r2, r0, r2
006a7b08  01 10 8c e0                                      add r1, ip, r1
006a7b0c  06 60 80 e0                                      add r6, r0, r6
006a7b10  07 70 8c e0                                      add r7, ip, r7
006a7b14  4c 60 84 e5                                      str r6, [r4, #0x4c]
006a7b18  54 20 84 e5                                      str r2, [r4, #0x54]
006a7b1c  48 70 84 e5                                      str r7, [r4, #0x48]
006a7b20  50 10 84 e5                                      str r1, [r4, #0x50]
006a7b24  44 20 84 e5                                      str r2, [r4, #0x44]
006a7b28  70 a0 84 e5                                      str sl, [r4, #0x70]
006a7b2c  74 80 84 e5                                      str r8, [r4, #0x74]
006a7b30  68 c0 84 e5                                      str ip, [r4, #0x68]
006a7b34  6c 00 84 e5                                      str r0, [r4, #0x6c]
006a7b38  38 70 84 e5                                      str r7, [r4, #0x38]
006a7b3c  3c 60 84 e5                                      str r6, [r4, #0x3c]
006a7b40  40 10 84 e5                                      str r1, [r4, #0x40]
006a7b44  50 00 93 e5                                      ldr r0, [r3, #0x50]
006a7b48  00 00 51 e1                                      cmp r1, r0
006a7b4c  50 00 84 c5                                      strgt r0, [r4, #0x50]
006a7b50  54 10 93 e5                                      ldr r1, [r3, #0x54]
006a7b54  01 00 52 e1                                      cmp r2, r1
006a7b58  54 10 84 c5                                      strgt r1, [r4, #0x54]
006a7b5c  48 10 93 e5                                      ldr r1, [r3, #0x48]
006a7b60  48 20 94 e5                                      ldr r2, [r4, #0x48]
006a7b64  02 00 51 e1                                      cmp r1, r2
006a7b68  48 10 84 c5                                      strgt r1, [r4, #0x48]
006a7b6c  01 20 a0 c1                                      movgt r2, r1
006a7b70  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
006a7b74  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006a7b78  03 00 51 e1                                      cmp r1, r3
006a7b7c  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
006a7b80  01 30 a0 c1                                      movgt r3, r1
006a7b84  54 10 94 e5                                      ldr r1, [r4, #0x54]
006a7b88  03 00 51 e1                                      cmp r1, r3
006a7b8c  50 30 94 e5                                      ldr r3, [r4, #0x50]
006a7b90  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
006a7b94  03 00 52 e1                                      cmp r2, r3
006a7b98  48 30 84 c5                                      strgt r3, [r4, #0x48]
006a7b9c  00 30 95 e5                                      ldr r3, [r5]
006a7ba0  04 00 a0 e1                                      mov r0, r4
006a7ba4  00 30 84 e5                                      str r3, [r4]
006a7ba8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a7bac  10 20 95 e5                                      ldr r2, [r5, #0x10]
006a7bb0  03 20 84 e7                                      str r2, [r4, r3]
006a7bb4  00 30 94 e5                                      ldr r3, [r4]
006a7bb8  14 20 95 e5                                      ldr r2, [r5, #0x14]
006a7bbc  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006a7bc0  03 20 84 e7                                      str r2, [r4, r3]
006a7bc4  1c d0 8d e2                                      add sp, sp, #0x1c
006a7bc8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006a7bcc  68 d1 2e 00 4c 27 00 00                          .byte 0x68, 0xd1, 0x2e, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x006a7d54, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUICheckBox
; alias: _ZN6glitch3gui12IGUICheckBoxD1Ev
; demangled: glitch::gui::IGUICheckBox::~IGUICheckBox()
; decoder-mode: arm
006a7d54  40 30 9f e5                                      ldr r3, [pc, #0x40]
006a7d58  40 20 9f e5                                      ldr r2, [pc, #0x40]
006a7d5c  40 10 9f e5                                      ldr r1, [pc, #0x40]
006a7d60  03 30 8f e0                                      add r3, pc, r3
006a7d64  02 20 93 e7                                      ldr r2, [r3, r2]
006a7d68  01 10 93 e7                                      ldr r1, [r3, r1]
006a7d6c  10 40 2d e9                                      push {r4, lr}
006a7d70  cc c0 82 e2                                      add ip, r2, #0xcc
006a7d74  10 e0 82 e2                                      add lr, r2, #0x10
006a7d78  ac 20 82 e2                                      add r2, r2, #0xac
006a7d7c  00 40 a0 e1                                      mov r4, r0
006a7d80  00 e0 80 e5                                      str lr, [r0]
006a7d84  58 21 80 e5                                      str r2, [r0, #0x158]
006a7d88  5c c1 80 e5                                      str ip, [r0, #0x15c]
006a7d8c  04 10 81 e2                                      add r1, r1, #4
006a7d90  a2 44 fa eb                                      bl #0x539020
006a7d94  04 00 a0 e1                                      mov r0, r4
006a7d98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006a7d9c  30 cd 2e 00 20 42 00 00 20 2d 00 00              .byte 0x30, 0xcd, 0x2e, 0x00, 0x20, 0x42, 0x00, 0x00, 0x20, 0x2d, 0x00, 0x00

; FUNCTION 0x006a7da8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUICheckBox
; alias: _ZTv0_n24_N6glitch3gui12IGUICheckBoxD1Ev
; demangled: virtual thunk to glitch::gui::IGUICheckBox::~IGUICheckBox()
; decoder-mode: arm
006a7da8  00 30 90 e5                                      ldr r3, [r0]
006a7dac  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006a7db0  03 00 80 e0                                      add r0, r0, r3
006a7db4  e6 ff ff ea                                      b #0x6a7d54

; FUNCTION 0x006a7db8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUICheckBox
; alias: _ZTv0_n12_N6glitch3gui12IGUICheckBoxD1Ev
; demangled: virtual thunk to glitch::gui::IGUICheckBox::~IGUICheckBox()
; decoder-mode: arm
006a7db8  00 30 90 e5                                      ldr r3, [r0]
006a7dbc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a7dc0  03 00 80 e0                                      add r0, r0, r3
006a7dc4  e2 ff ff ea                                      b #0x6a7d54

; FUNCTION 0x006a8100, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUICheckBox
; alias: _ZN6glitch3gui12IGUICheckBoxD0Ev
; demangled: glitch::gui::IGUICheckBox::~IGUICheckBox()
; decoder-mode: arm
006a8100  48 30 9f e5                                      ldr r3, [pc, #0x48]
006a8104  48 20 9f e5                                      ldr r2, [pc, #0x48]
006a8108  48 10 9f e5                                      ldr r1, [pc, #0x48]
006a810c  03 30 8f e0                                      add r3, pc, r3
006a8110  02 20 93 e7                                      ldr r2, [r3, r2]
006a8114  01 10 93 e7                                      ldr r1, [r3, r1]
006a8118  10 40 2d e9                                      push {r4, lr}
006a811c  cc c0 82 e2                                      add ip, r2, #0xcc
006a8120  10 e0 82 e2                                      add lr, r2, #0x10
006a8124  ac 20 82 e2                                      add r2, r2, #0xac
006a8128  00 40 a0 e1                                      mov r4, r0
006a812c  00 e0 80 e5                                      str lr, [r0]
006a8130  58 21 80 e5                                      str r2, [r0, #0x158]
006a8134  5c c1 80 e5                                      str ip, [r0, #0x15c]
006a8138  04 10 81 e2                                      add r1, r1, #4
006a813c  b7 43 fa eb                                      bl #0x539020
006a8140  04 00 a0 e1                                      mov r0, r4
006a8144  59 98 f1 eb                                      bl #0x30e2b0
006a8148  04 00 a0 e1                                      mov r0, r4
006a814c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006a8150  84 c9 2e 00 20 42 00 00 20 2d 00 00              .byte 0x84, 0xc9, 0x2e, 0x00, 0x20, 0x42, 0x00, 0x00, 0x20, 0x2d, 0x00, 0x00

; FUNCTION 0x006a815c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUICheckBox
; alias: _ZTv0_n24_N6glitch3gui12IGUICheckBoxD0Ev
; demangled: virtual thunk to glitch::gui::IGUICheckBox::~IGUICheckBox()
; decoder-mode: arm
006a815c  00 30 90 e5                                      ldr r3, [r0]
006a8160  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006a8164  03 00 80 e0                                      add r0, r0, r3
006a8168  e4 ff ff ea                                      b #0x6a8100

; FUNCTION 0x006a816c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUICheckBox
; alias: _ZTv0_n12_N6glitch3gui12IGUICheckBoxD0Ev
; demangled: virtual thunk to glitch::gui::IGUICheckBox::~IGUICheckBox()
; decoder-mode: arm
006a816c  00 30 90 e5                                      ldr r3, [r0]
006a8170  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006a8174  03 00 80 e0                                      add r0, r0, r3
006a8178  e0 ff ff ea                                      b #0x6a8100
