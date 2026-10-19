; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b0394, declared_size=728, range_size=728, mode=arm
; class-group: glitch::gui::IGUIEditBox
; alias: _ZN6glitch3gui11IGUIEditBoxC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIEditBox::IGUIEditBox(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
006b0394  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b0398  c4 e2 9f e5                                      ldr lr, [pc, #0x2c4]
006b039c  c4 52 9f e5                                      ldr r5, [pc, #0x2c4]
006b03a0  24 d0 4d e2                                      sub sp, sp, #0x24
006b03a4  0e e0 8f e0                                      add lr, pc, lr
006b03a8  05 50 9e e7                                      ldr r5, [lr, r5]
006b03ac  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006b03b0  00 40 a0 e1                                      mov r4, r0
006b03b4  08 00 85 e2                                      add r0, r5, #8
006b03b8  0c a0 9c e5                                      ldr sl, [ip, #0xc]
006b03bc  00 70 9c e5                                      ldr r7, [ip]
006b03c0  40 01 9c e9                                      ldmib ip, {r6, r8}
006b03c4  00 00 84 e5                                      str r0, [r4]
006b03c8  04 00 91 e5                                      ldr r0, [r1, #4]
006b03cc  01 50 a0 e1                                      mov r5, r1
006b03d0  04 10 81 e2                                      add r1, r1, #4
006b03d4  00 00 84 e5                                      str r0, [r4]
006b03d8  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006b03dc  0c c0 84 e2                                      add ip, r4, #0xc
006b03e0  18 00 8d e5                                      str r0, [sp, #0x18]
006b03e4  04 00 84 e2                                      add r0, r4, #4
006b03e8  04 00 8d e5                                      str r0, [sp, #4]
006b03ec  04 b0 91 e5                                      ldr fp, [r1, #4]
006b03f0  18 90 9d e5                                      ldr sb, [sp, #0x18]
006b03f4  0c 00 a0 e1                                      mov r0, ip
006b03f8  09 b0 84 e7                                      str fp, [r4, sb]
006b03fc  08 10 91 e5                                      ldr r1, [r1, #8]
006b0400  00 90 94 e5                                      ldr sb, [r4]
006b0404  1c 10 8d e5                                      str r1, [sp, #0x1c]
006b0408  10 90 19 e5                                      ldr sb, [sb, #-0x10]
006b040c  0c 20 8d e5                                      str r2, [sp, #0xc]
006b0410  10 10 a0 e3                                      mov r1, #0x10
006b0414  18 90 8d e5                                      str sb, [sp, #0x18]
006b0418  18 20 9d e5                                      ldr r2, [sp, #0x18]
006b041c  03 90 a0 e1                                      mov sb, r3
006b0420  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006b0424  02 30 84 e7                                      str r3, [r4, r2]
006b0428  04 b0 9d e5                                      ldr fp, [sp, #4]
006b042c  1c c0 84 e5                                      str ip, [r4, #0x1c]
006b0430  20 c0 84 e5                                      str ip, [r4, #0x20]
006b0434  08 b0 84 e5                                      str fp, [r4, #8]
006b0438  04 b0 84 e5                                      str fp, [r4, #4]
006b043c  59 c1 f1 eb                                      bl #0x3209a8
006b0440  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
006b0444  00 b0 a0 e3                                      mov fp, #0
006b0448  00 00 a0 e3                                      mov r0, #0
006b044c  01 10 a0 e3                                      mov r1, #1
006b0450  a0 30 84 e2                                      add r3, r4, #0xa0
006b0454  00 b0 cc e5                                      strb fp, [ip]
006b0458  84 00 84 e5                                      str r0, [r4, #0x84]
006b045c  99 10 c4 e5                                      strb r1, [r4, #0x99]
006b0460  78 00 84 e5                                      str r0, [r4, #0x78]
006b0464  7c 00 84 e5                                      str r0, [r4, #0x7c]
006b0468  80 00 84 e5                                      str r0, [r4, #0x80]
006b046c  90 10 84 e5                                      str r1, [r4, #0x90]
006b0470  03 00 a0 e1                                      mov r0, r3
006b0474  94 10 84 e5                                      str r1, [r4, #0x94]
006b0478  98 10 c4 e5                                      strb r1, [r4, #0x98]
006b047c  58 70 84 e5                                      str r7, [r4, #0x58]
006b0480  10 10 a0 e3                                      mov r1, #0x10
006b0484  5c 60 84 e5                                      str r6, [r4, #0x5c]
006b0488  60 80 84 e5                                      str r8, [r4, #0x60]
006b048c  64 a0 84 e5                                      str sl, [r4, #0x64]
006b0490  24 b0 84 e5                                      str fp, [r4, #0x24]
006b0494  28 70 84 e5                                      str r7, [r4, #0x28]
006b0498  2c 60 84 e5                                      str r6, [r4, #0x2c]
006b049c  30 80 84 e5                                      str r8, [r4, #0x30]
006b04a0  34 a0 84 e5                                      str sl, [r4, #0x34]
006b04a4  38 70 84 e5                                      str r7, [r4, #0x38]
006b04a8  3c 60 84 e5                                      str r6, [r4, #0x3c]
006b04ac  40 80 84 e5                                      str r8, [r4, #0x40]
006b04b0  44 a0 84 e5                                      str sl, [r4, #0x44]
006b04b4  48 70 84 e5                                      str r7, [r4, #0x48]
006b04b8  4c 60 84 e5                                      str r6, [r4, #0x4c]
006b04bc  50 80 84 e5                                      str r8, [r4, #0x50]
006b04c0  54 a0 84 e5                                      str sl, [r4, #0x54]
006b04c4  68 b0 84 e5                                      str fp, [r4, #0x68]
006b04c8  6c b0 84 e5                                      str fp, [r4, #0x6c]
006b04cc  70 b0 84 e5                                      str fp, [r4, #0x70]
006b04d0  74 b0 84 e5                                      str fp, [r4, #0x74]
006b04d4  88 b0 84 e5                                      str fp, [r4, #0x88]
006b04d8  8c b0 84 e5                                      str fp, [r4, #0x8c]
006b04dc  9a b0 c4 e5                                      strb fp, [r4, #0x9a]
006b04e0  e0 30 84 e5                                      str r3, [r4, #0xe0]
006b04e4  e4 30 84 e5                                      str r3, [r4, #0xe4]
006b04e8  9b b0 c4 e5                                      strb fp, [r4, #0x9b]
006b04ec  9c b0 c4 e5                                      strb fp, [r4, #0x9c]
006b04f0  0a c1 f1 eb                                      bl #0x320920
006b04f4  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
006b04f8  e8 30 84 e2                                      add r3, r4, #0xe8
006b04fc  03 00 a0 e1                                      mov r0, r3
006b0500  00 b0 81 e5                                      str fp, [r1]
006b0504  28 31 84 e5                                      str r3, [r4, #0x128]
006b0508  2c 31 84 e5                                      str r3, [r4, #0x12c]
006b050c  10 10 a0 e3                                      mov r1, #0x10
006b0510  02 c1 f1 eb                                      bl #0x320920
006b0514  28 31 94 e5                                      ldr r3, [r4, #0x128]
006b0518  0b 00 59 e1                                      cmp sb, fp
006b051c  00 b0 83 e5                                      str fp, [r3]
006b0520  48 30 9d e5                                      ldr r3, [sp, #0x48]
006b0524  4c b1 84 e5                                      str fp, [r4, #0x14c]
006b0528  30 31 84 e5                                      str r3, [r4, #0x130]
006b052c  00 30 e0 e3                                      mvn r3, #0
006b0530  38 31 84 e5                                      str r3, [r4, #0x138]
006b0534  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006b0538  34 b1 c4 e5                                      strb fp, [r4, #0x134]
006b053c  3c b1 c4 e5                                      strb fp, [r4, #0x13c]
006b0540  50 31 84 e5                                      str r3, [r4, #0x150]
006b0544  05 30 a0 e3                                      mov r3, #5
006b0548  54 31 84 e5                                      str r3, [r4, #0x154]
006b054c  40 b1 84 e5                                      str fp, [r4, #0x140]
006b0550  44 b1 84 e5                                      str fp, [r4, #0x144]
006b0554  48 b1 84 e5                                      str fp, [r4, #0x148]
006b0558  04 00 00 0a                                      beq #0x6b0570
006b055c  09 00 a0 e1                                      mov r0, sb
006b0560  00 30 99 e5                                      ldr r3, [sb]
006b0564  04 10 a0 e1                                      mov r1, r4
006b0568  0f e0 a0 e1                                      mov lr, pc
006b056c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006b0570  24 30 94 e5                                      ldr r3, [r4, #0x24]
006b0574  00 00 53 e3                                      cmp r3, #0
006b0578  2d 00 00 0a                                      beq #0x6b0634
006b057c  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
006b0580  38 c0 93 e5                                      ldr ip, [r3, #0x38]
006b0584  38 70 94 e5                                      ldr r7, [r4, #0x38]
006b0588  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
006b058c  40 10 94 e5                                      ldr r1, [r4, #0x40]
006b0590  44 20 94 e5                                      ldr r2, [r4, #0x44]
006b0594  40 a0 93 e5                                      ldr sl, [r3, #0x40]
006b0598  44 80 93 e5                                      ldr r8, [r3, #0x44]
006b059c  02 20 80 e0                                      add r2, r0, r2
006b05a0  01 10 8c e0                                      add r1, ip, r1
006b05a4  06 60 80 e0                                      add r6, r0, r6
006b05a8  07 70 8c e0                                      add r7, ip, r7
006b05ac  4c 60 84 e5                                      str r6, [r4, #0x4c]
006b05b0  54 20 84 e5                                      str r2, [r4, #0x54]
006b05b4  48 70 84 e5                                      str r7, [r4, #0x48]
006b05b8  50 10 84 e5                                      str r1, [r4, #0x50]
006b05bc  44 20 84 e5                                      str r2, [r4, #0x44]
006b05c0  70 a0 84 e5                                      str sl, [r4, #0x70]
006b05c4  74 80 84 e5                                      str r8, [r4, #0x74]
006b05c8  68 c0 84 e5                                      str ip, [r4, #0x68]
006b05cc  6c 00 84 e5                                      str r0, [r4, #0x6c]
006b05d0  38 70 84 e5                                      str r7, [r4, #0x38]
006b05d4  3c 60 84 e5                                      str r6, [r4, #0x3c]
006b05d8  40 10 84 e5                                      str r1, [r4, #0x40]
006b05dc  50 00 93 e5                                      ldr r0, [r3, #0x50]
006b05e0  00 00 51 e1                                      cmp r1, r0
006b05e4  50 00 84 c5                                      strgt r0, [r4, #0x50]
006b05e8  54 10 93 e5                                      ldr r1, [r3, #0x54]
006b05ec  01 00 52 e1                                      cmp r2, r1
006b05f0  54 10 84 c5                                      strgt r1, [r4, #0x54]
006b05f4  48 10 93 e5                                      ldr r1, [r3, #0x48]
006b05f8  48 20 94 e5                                      ldr r2, [r4, #0x48]
006b05fc  02 00 51 e1                                      cmp r1, r2
006b0600  48 10 84 c5                                      strgt r1, [r4, #0x48]
006b0604  01 20 a0 c1                                      movgt r2, r1
006b0608  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
006b060c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006b0610  03 00 51 e1                                      cmp r1, r3
006b0614  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
006b0618  01 30 a0 c1                                      movgt r3, r1
006b061c  54 10 94 e5                                      ldr r1, [r4, #0x54]
006b0620  03 00 51 e1                                      cmp r1, r3
006b0624  50 30 94 e5                                      ldr r3, [r4, #0x50]
006b0628  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
006b062c  03 00 52 e1                                      cmp r2, r3
006b0630  48 30 84 c5                                      strgt r3, [r4, #0x48]
006b0634  00 30 95 e5                                      ldr r3, [r5]
006b0638  04 00 a0 e1                                      mov r0, r4
006b063c  00 30 84 e5                                      str r3, [r4]
006b0640  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006b0644  10 20 95 e5                                      ldr r2, [r5, #0x10]
006b0648  03 20 84 e7                                      str r2, [r4, r3]
006b064c  00 30 94 e5                                      ldr r3, [r4]
006b0650  14 20 95 e5                                      ldr r2, [r5, #0x14]
006b0654  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006b0658  03 20 84 e7                                      str r2, [r4, r3]
006b065c  24 d0 8d e2                                      add sp, sp, #0x24
006b0660  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006b0664  ec 46 2e 00 4c 27 00 00                          .byte 0xec, 0x46, 0x2e, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x006b0b38, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUIEditBox
; alias: _ZN6glitch3gui11IGUIEditBoxD1Ev
; demangled: glitch::gui::IGUIEditBox::~IGUIEditBox()
; decoder-mode: arm
006b0b38  40 30 9f e5                                      ldr r3, [pc, #0x40]
006b0b3c  40 20 9f e5                                      ldr r2, [pc, #0x40]
006b0b40  40 10 9f e5                                      ldr r1, [pc, #0x40]
006b0b44  03 30 8f e0                                      add r3, pc, r3
006b0b48  02 20 93 e7                                      ldr r2, [r3, r2]
006b0b4c  01 10 93 e7                                      ldr r1, [r3, r1]
006b0b50  10 40 2d e9                                      push {r4, lr}
006b0b54  41 cf 82 e2                                      add ip, r2, #0x104
006b0b58  10 e0 82 e2                                      add lr, r2, #0x10
006b0b5c  e4 20 82 e2                                      add r2, r2, #0xe4
006b0b60  00 40 a0 e1                                      mov r4, r0
006b0b64  00 e0 80 e5                                      str lr, [r0]
006b0b68  58 21 80 e5                                      str r2, [r0, #0x158]
006b0b6c  5c c1 80 e5                                      str ip, [r0, #0x15c]
006b0b70  04 10 81 e2                                      add r1, r1, #4
006b0b74  29 21 fa eb                                      bl #0x539020
006b0b78  04 00 a0 e1                                      mov r0, r4
006b0b7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b0b80  4c 3f 2e 00 34 2b 00 00 e8 19 00 00              .byte 0x4c, 0x3f, 0x2e, 0x00, 0x34, 0x2b, 0x00, 0x00, 0xe8, 0x19, 0x00, 0x00

; FUNCTION 0x006b0b8c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIEditBox
; alias: _ZTv0_n24_N6glitch3gui11IGUIEditBoxD1Ev
; demangled: virtual thunk to glitch::gui::IGUIEditBox::~IGUIEditBox()
; decoder-mode: arm
006b0b8c  00 30 90 e5                                      ldr r3, [r0]
006b0b90  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006b0b94  03 00 80 e0                                      add r0, r0, r3
006b0b98  e6 ff ff ea                                      b #0x6b0b38

; FUNCTION 0x006b0b9c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIEditBox
; alias: _ZTv0_n12_N6glitch3gui11IGUIEditBoxD1Ev
; demangled: virtual thunk to glitch::gui::IGUIEditBox::~IGUIEditBox()
; decoder-mode: arm
006b0b9c  00 30 90 e5                                      ldr r3, [r0]
006b0ba0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006b0ba4  03 00 80 e0                                      add r0, r0, r3
006b0ba8  e2 ff ff ea                                      b #0x6b0b38

; FUNCTION 0x006b0d20, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUIEditBox
; alias: _ZN6glitch3gui11IGUIEditBoxD0Ev
; demangled: glitch::gui::IGUIEditBox::~IGUIEditBox()
; decoder-mode: arm
006b0d20  48 30 9f e5                                      ldr r3, [pc, #0x48]
006b0d24  48 20 9f e5                                      ldr r2, [pc, #0x48]
006b0d28  48 10 9f e5                                      ldr r1, [pc, #0x48]
006b0d2c  03 30 8f e0                                      add r3, pc, r3
006b0d30  02 20 93 e7                                      ldr r2, [r3, r2]
006b0d34  01 10 93 e7                                      ldr r1, [r3, r1]
006b0d38  10 40 2d e9                                      push {r4, lr}
006b0d3c  41 cf 82 e2                                      add ip, r2, #0x104
006b0d40  10 e0 82 e2                                      add lr, r2, #0x10
006b0d44  e4 20 82 e2                                      add r2, r2, #0xe4
006b0d48  00 40 a0 e1                                      mov r4, r0
006b0d4c  00 e0 80 e5                                      str lr, [r0]
006b0d50  58 21 80 e5                                      str r2, [r0, #0x158]
006b0d54  5c c1 80 e5                                      str ip, [r0, #0x15c]
006b0d58  04 10 81 e2                                      add r1, r1, #4
006b0d5c  af 20 fa eb                                      bl #0x539020
006b0d60  04 00 a0 e1                                      mov r0, r4
006b0d64  51 75 f1 eb                                      bl #0x30e2b0
006b0d68  04 00 a0 e1                                      mov r0, r4
006b0d6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006b0d70  64 3d 2e 00 34 2b 00 00 e8 19 00 00              .byte 0x64, 0x3d, 0x2e, 0x00, 0x34, 0x2b, 0x00, 0x00, 0xe8, 0x19, 0x00, 0x00

; FUNCTION 0x006b0d7c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIEditBox
; alias: _ZTv0_n24_N6glitch3gui11IGUIEditBoxD0Ev
; demangled: virtual thunk to glitch::gui::IGUIEditBox::~IGUIEditBox()
; decoder-mode: arm
006b0d7c  00 30 90 e5                                      ldr r3, [r0]
006b0d80  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006b0d84  03 00 80 e0                                      add r0, r0, r3
006b0d88  e4 ff ff ea                                      b #0x6b0d20

; FUNCTION 0x006b0d8c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIEditBox
; alias: _ZTv0_n12_N6glitch3gui11IGUIEditBoxD0Ev
; demangled: virtual thunk to glitch::gui::IGUIEditBox::~IGUIEditBox()
; decoder-mode: arm
006b0d8c  00 30 90 e5                                      ldr r3, [r0]
006b0d90  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006b0d94  03 00 80 e0                                      add r0, r0, r3
006b0d98  e0 ff ff ea                                      b #0x6b0d20
