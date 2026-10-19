; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00545bb4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::gui::IGUIContextMenu
; alias: _ZN6glitch3gui15IGUIContextMenuD1Ev
; demangled: glitch::gui::IGUIContextMenu::~IGUIContextMenu()
; decoder-mode: arm
00545bb4  34 20 9f e5                                      ldr r2, [pc, #0x34]
00545bb8  34 30 9f e5                                      ldr r3, [pc, #0x34]
00545bbc  10 40 2d e9                                      push {r4, lr}
00545bc0  02 20 8f e0                                      add r2, pc, r2
00545bc4  03 30 92 e7                                      ldr r3, [r2, r3]
00545bc8  00 40 a0 e1                                      mov r4, r0
00545bcc  01 2c 83 e2                                      add r2, r3, #0x100
00545bd0  10 10 83 e2                                      add r1, r3, #0x10
00545bd4  e0 30 83 e2                                      add r3, r3, #0xe0
00545bd8  00 10 80 e5                                      str r1, [r0]
00545bdc  58 31 80 e5                                      str r3, [r0, #0x158]
00545be0  5c 21 80 e5                                      str r2, [r0, #0x15c]
00545be4  b0 ff ff eb                                      bl #0x545aac
00545be8  04 00 a0 e1                                      mov r0, r4
00545bec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00545bf0  d0 ee 44 00 c0 23 00 00                          .byte 0xd0, 0xee, 0x44, 0x00, 0xc0, 0x23, 0x00, 0x00

; FUNCTION 0x00545bf8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIContextMenu
; alias: _ZTv0_n24_N6glitch3gui15IGUIContextMenuD1Ev
; demangled: virtual thunk to glitch::gui::IGUIContextMenu::~IGUIContextMenu()
; decoder-mode: arm
00545bf8  00 30 90 e5                                      ldr r3, [r0]
00545bfc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00545c00  03 00 80 e0                                      add r0, r0, r3
00545c04  ea ff ff ea                                      b #0x545bb4

; FUNCTION 0x00545c08, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIContextMenu
; alias: _ZTv0_n12_N6glitch3gui15IGUIContextMenuD1Ev
; demangled: virtual thunk to glitch::gui::IGUIContextMenu::~IGUIContextMenu()
; decoder-mode: arm
00545c08  00 30 90 e5                                      ldr r3, [r0]
00545c0c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00545c10  03 00 80 e0                                      add r0, r0, r3
00545c14  e6 ff ff ea                                      b #0x545bb4

; FUNCTION 0x00545f58, declared_size=76, range_size=76, mode=arm
; class-group: glitch::gui::IGUIContextMenu
; alias: _ZN6glitch3gui15IGUIContextMenuD0Ev
; demangled: glitch::gui::IGUIContextMenu::~IGUIContextMenu()
; decoder-mode: arm
00545f58  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00545f5c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00545f60  10 40 2d e9                                      push {r4, lr}
00545f64  02 20 8f e0                                      add r2, pc, r2
00545f68  03 30 92 e7                                      ldr r3, [r2, r3]
00545f6c  00 40 a0 e1                                      mov r4, r0
00545f70  01 2c 83 e2                                      add r2, r3, #0x100
00545f74  10 10 83 e2                                      add r1, r3, #0x10
00545f78  e0 30 83 e2                                      add r3, r3, #0xe0
00545f7c  00 10 80 e5                                      str r1, [r0]
00545f80  58 31 80 e5                                      str r3, [r0, #0x158]
00545f84  5c 21 80 e5                                      str r2, [r0, #0x15c]
00545f88  c7 fe ff eb                                      bl #0x545aac
00545f8c  04 00 a0 e1                                      mov r0, r4
00545f90  c6 20 f7 eb                                      bl #0x30e2b0
00545f94  04 00 a0 e1                                      mov r0, r4
00545f98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00545f9c  2c eb 44 00 c0 23 00 00                          .byte 0x2c, 0xeb, 0x44, 0x00, 0xc0, 0x23, 0x00, 0x00

; FUNCTION 0x00545fa4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIContextMenu
; alias: _ZTv0_n24_N6glitch3gui15IGUIContextMenuD0Ev
; demangled: virtual thunk to glitch::gui::IGUIContextMenu::~IGUIContextMenu()
; decoder-mode: arm
00545fa4  00 30 90 e5                                      ldr r3, [r0]
00545fa8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00545fac  03 00 80 e0                                      add r0, r0, r3
00545fb0  e8 ff ff ea                                      b #0x545f58

; FUNCTION 0x00545fb4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIContextMenu
; alias: _ZTv0_n12_N6glitch3gui15IGUIContextMenuD0Ev
; demangled: virtual thunk to glitch::gui::IGUIContextMenu::~IGUIContextMenu()
; decoder-mode: arm
00545fb4  00 30 90 e5                                      ldr r3, [r0]
00545fb8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00545fbc  03 00 80 e0                                      add r0, r0, r3
00545fc0  e4 ff ff ea                                      b #0x545f58

; FUNCTION 0x006adcf0, declared_size=712, range_size=712, mode=arm
; class-group: glitch::gui::IGUIContextMenu
; alias: _ZN6glitch3gui15IGUIContextMenuC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIContextMenu::IGUIContextMenu(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
006adcf0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006adcf4  b4 e2 9f e5                                      ldr lr, [pc, #0x2b4]
006adcf8  b4 52 9f e5                                      ldr r5, [pc, #0x2b4]
006adcfc  14 d0 4d e2                                      sub sp, sp, #0x14
006add00  0e e0 8f e0                                      add lr, pc, lr
006add04  05 50 9e e7                                      ldr r5, [lr, r5]
006add08  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006add0c  00 40 a0 e1                                      mov r4, r0
006add10  08 00 85 e2                                      add r0, r5, #8
006add14  0c 60 9c e5                                      ldr r6, [ip, #0xc]
006add18  00 a0 9c e5                                      ldr sl, [ip]
006add1c  04 80 9c e5                                      ldr r8, [ip, #4]
006add20  08 70 9c e5                                      ldr r7, [ip, #8]
006add24  00 00 84 e5                                      str r0, [r4]
006add28  04 00 91 e5                                      ldr r0, [r1, #4]
006add2c  04 c0 81 e2                                      add ip, r1, #4
006add30  01 50 a0 e1                                      mov r5, r1
006add34  00 00 84 e5                                      str r0, [r4]
006add38  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006add3c  0c 10 84 e2                                      add r1, r4, #0xc
006add40  0c 00 8d e5                                      str r0, [sp, #0xc]
006add44  04 00 84 e2                                      add r0, r4, #4
006add48  04 00 8d e5                                      str r0, [sp, #4]
006add4c  04 b0 9c e5                                      ldr fp, [ip, #4]
006add50  0c 90 9d e5                                      ldr sb, [sp, #0xc]
006add54  01 00 a0 e1                                      mov r0, r1
006add58  09 b0 84 e7                                      str fp, [r4, sb]
006add5c  00 90 94 e5                                      ldr sb, [r4]
006add60  08 c0 9c e5                                      ldr ip, [ip, #8]
006add64  0c 20 8d e5                                      str r2, [sp, #0xc]
006add68  10 20 19 e5                                      ldr r2, [sb, #-0x10]
006add6c  03 90 a0 e1                                      mov sb, r3
006add70  00 b0 a0 e3                                      mov fp, #0
006add74  02 c0 84 e7                                      str ip, [r4, r2]
006add78  04 c0 9d e5                                      ldr ip, [sp, #4]
006add7c  1c 10 84 e5                                      str r1, [r4, #0x1c]
006add80  20 10 84 e5                                      str r1, [r4, #0x20]
006add84  08 c0 84 e5                                      str ip, [r4, #8]
006add88  04 c0 84 e5                                      str ip, [r4, #4]
006add8c  d6 ff ff eb                                      bl #0x6adcec
006add90  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
006add94  01 20 a0 e3                                      mov r2, #1
006add98  00 10 a0 e3                                      mov r1, #0
006add9c  a0 30 84 e2                                      add r3, r4, #0xa0
006adda0  00 b0 c0 e5                                      strb fp, [r0]
006adda4  99 20 c4 e5                                      strb r2, [r4, #0x99]
006adda8  90 20 84 e5                                      str r2, [r4, #0x90]
006addac  94 20 84 e5                                      str r2, [r4, #0x94]
006addb0  98 20 c4 e5                                      strb r2, [r4, #0x98]
006addb4  03 00 a0 e1                                      mov r0, r3
006addb8  84 10 84 e5                                      str r1, [r4, #0x84]
006addbc  78 10 84 e5                                      str r1, [r4, #0x78]
006addc0  7c 10 84 e5                                      str r1, [r4, #0x7c]
006addc4  80 10 84 e5                                      str r1, [r4, #0x80]
006addc8  58 a0 84 e5                                      str sl, [r4, #0x58]
006addcc  10 10 a0 e3                                      mov r1, #0x10
006addd0  5c 80 84 e5                                      str r8, [r4, #0x5c]
006addd4  60 70 84 e5                                      str r7, [r4, #0x60]
006addd8  64 60 84 e5                                      str r6, [r4, #0x64]
006adddc  24 b0 84 e5                                      str fp, [r4, #0x24]
006adde0  28 a0 84 e5                                      str sl, [r4, #0x28]
006adde4  2c 80 84 e5                                      str r8, [r4, #0x2c]
006adde8  30 70 84 e5                                      str r7, [r4, #0x30]
006addec  34 60 84 e5                                      str r6, [r4, #0x34]
006addf0  38 a0 84 e5                                      str sl, [r4, #0x38]
006addf4  3c 80 84 e5                                      str r8, [r4, #0x3c]
006addf8  40 70 84 e5                                      str r7, [r4, #0x40]
006addfc  44 60 84 e5                                      str r6, [r4, #0x44]
006ade00  48 a0 84 e5                                      str sl, [r4, #0x48]
006ade04  4c 80 84 e5                                      str r8, [r4, #0x4c]
006ade08  50 70 84 e5                                      str r7, [r4, #0x50]
006ade0c  54 60 84 e5                                      str r6, [r4, #0x54]
006ade10  68 b0 84 e5                                      str fp, [r4, #0x68]
006ade14  6c b0 84 e5                                      str fp, [r4, #0x6c]
006ade18  70 b0 84 e5                                      str fp, [r4, #0x70]
006ade1c  74 b0 84 e5                                      str fp, [r4, #0x74]
006ade20  88 b0 84 e5                                      str fp, [r4, #0x88]
006ade24  8c b0 84 e5                                      str fp, [r4, #0x8c]
006ade28  9a b0 c4 e5                                      strb fp, [r4, #0x9a]
006ade2c  e0 30 84 e5                                      str r3, [r4, #0xe0]
006ade30  e4 30 84 e5                                      str r3, [r4, #0xe4]
006ade34  9b b0 c4 e5                                      strb fp, [r4, #0x9b]
006ade38  9c b0 c4 e5                                      strb fp, [r4, #0x9c]
006ade3c  b7 ca f1 eb                                      bl #0x320920
006ade40  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
006ade44  e8 30 84 e2                                      add r3, r4, #0xe8
006ade48  03 00 a0 e1                                      mov r0, r3
006ade4c  00 b0 82 e5                                      str fp, [r2]
006ade50  10 10 a0 e3                                      mov r1, #0x10
006ade54  28 31 84 e5                                      str r3, [r4, #0x128]
006ade58  2c 31 84 e5                                      str r3, [r4, #0x12c]
006ade5c  af ca f1 eb                                      bl #0x320920
006ade60  28 31 94 e5                                      ldr r3, [r4, #0x128]
006ade64  0b 00 59 e1                                      cmp sb, fp
006ade68  00 b0 83 e5                                      str fp, [r3]
006ade6c  38 30 9d e5                                      ldr r3, [sp, #0x38]
006ade70  4c b1 84 e5                                      str fp, [r4, #0x14c]
006ade74  30 31 84 e5                                      str r3, [r4, #0x130]
006ade78  00 30 e0 e3                                      mvn r3, #0
006ade7c  38 31 84 e5                                      str r3, [r4, #0x138]
006ade80  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006ade84  03 30 a0 e3                                      mov r3, #3
006ade88  54 31 84 e5                                      str r3, [r4, #0x154]
006ade8c  50 01 84 e5                                      str r0, [r4, #0x150]
006ade90  34 b1 c4 e5                                      strb fp, [r4, #0x134]
006ade94  3c b1 c4 e5                                      strb fp, [r4, #0x13c]
006ade98  40 b1 84 e5                                      str fp, [r4, #0x140]
006ade9c  44 b1 84 e5                                      str fp, [r4, #0x144]
006adea0  48 b1 84 e5                                      str fp, [r4, #0x148]
006adea4  04 00 00 0a                                      beq #0x6adebc
006adea8  09 00 a0 e1                                      mov r0, sb
006adeac  00 30 99 e5                                      ldr r3, [sb]
006adeb0  04 10 a0 e1                                      mov r1, r4
006adeb4  0f e0 a0 e1                                      mov lr, pc
006adeb8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006adebc  24 30 94 e5                                      ldr r3, [r4, #0x24]
006adec0  00 00 53 e3                                      cmp r3, #0
006adec4  2d 00 00 0a                                      beq #0x6adf80
006adec8  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
006adecc  38 c0 93 e5                                      ldr ip, [r3, #0x38]
006aded0  38 70 94 e5                                      ldr r7, [r4, #0x38]
006aded4  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
006aded8  40 10 94 e5                                      ldr r1, [r4, #0x40]
006adedc  44 20 94 e5                                      ldr r2, [r4, #0x44]
006adee0  40 a0 93 e5                                      ldr sl, [r3, #0x40]
006adee4  44 80 93 e5                                      ldr r8, [r3, #0x44]
006adee8  02 20 80 e0                                      add r2, r0, r2
006adeec  01 10 8c e0                                      add r1, ip, r1
006adef0  06 60 80 e0                                      add r6, r0, r6
006adef4  07 70 8c e0                                      add r7, ip, r7
006adef8  4c 60 84 e5                                      str r6, [r4, #0x4c]
006adefc  54 20 84 e5                                      str r2, [r4, #0x54]
006adf00  48 70 84 e5                                      str r7, [r4, #0x48]
006adf04  50 10 84 e5                                      str r1, [r4, #0x50]
006adf08  44 20 84 e5                                      str r2, [r4, #0x44]
006adf0c  70 a0 84 e5                                      str sl, [r4, #0x70]
006adf10  74 80 84 e5                                      str r8, [r4, #0x74]
006adf14  68 c0 84 e5                                      str ip, [r4, #0x68]
006adf18  6c 00 84 e5                                      str r0, [r4, #0x6c]
006adf1c  38 70 84 e5                                      str r7, [r4, #0x38]
006adf20  3c 60 84 e5                                      str r6, [r4, #0x3c]
006adf24  40 10 84 e5                                      str r1, [r4, #0x40]
006adf28  50 00 93 e5                                      ldr r0, [r3, #0x50]
006adf2c  00 00 51 e1                                      cmp r1, r0
006adf30  50 00 84 c5                                      strgt r0, [r4, #0x50]
006adf34  54 10 93 e5                                      ldr r1, [r3, #0x54]
006adf38  01 00 52 e1                                      cmp r2, r1
006adf3c  54 10 84 c5                                      strgt r1, [r4, #0x54]
006adf40  48 10 93 e5                                      ldr r1, [r3, #0x48]
006adf44  48 20 94 e5                                      ldr r2, [r4, #0x48]
006adf48  02 00 51 e1                                      cmp r1, r2
006adf4c  48 10 84 c5                                      strgt r1, [r4, #0x48]
006adf50  01 20 a0 c1                                      movgt r2, r1
006adf54  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
006adf58  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006adf5c  03 00 51 e1                                      cmp r1, r3
006adf60  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
006adf64  01 30 a0 c1                                      movgt r3, r1
006adf68  54 10 94 e5                                      ldr r1, [r4, #0x54]
006adf6c  01 00 53 e1                                      cmp r3, r1
006adf70  50 30 94 e5                                      ldr r3, [r4, #0x50]
006adf74  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
006adf78  03 00 52 e1                                      cmp r2, r3
006adf7c  48 30 84 c5                                      strgt r3, [r4, #0x48]
006adf80  00 30 95 e5                                      ldr r3, [r5]
006adf84  04 00 a0 e1                                      mov r0, r4
006adf88  00 30 84 e5                                      str r3, [r4]
006adf8c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006adf90  10 20 95 e5                                      ldr r2, [r5, #0x10]
006adf94  03 20 84 e7                                      str r2, [r4, r3]
006adf98  00 30 94 e5                                      ldr r3, [r4]
006adf9c  14 20 95 e5                                      ldr r2, [r5, #0x14]
006adfa0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006adfa4  03 20 84 e7                                      str r2, [r4, r3]
006adfa8  14 d0 8d e2                                      add sp, sp, #0x14
006adfac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006adfb0  90 6d 2e 00 4c 27 00 00                          .byte 0x90, 0x6d, 0x2e, 0x00, 0x4c, 0x27, 0x00, 0x00
