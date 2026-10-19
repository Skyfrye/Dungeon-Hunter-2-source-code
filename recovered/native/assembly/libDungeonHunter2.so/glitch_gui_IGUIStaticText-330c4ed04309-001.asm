; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00550354, declared_size=712, range_size=712, mode=arm
; class-group: glitch::gui::IGUIStaticText
; alias: _ZN6glitch3gui14IGUIStaticTextC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIStaticText::IGUIStaticText(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00550354  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00550358  b4 42 9f e5                                      ldr r4, [pc, #0x2b4]
0055035c  b4 e2 9f e5                                      ldr lr, [pc, #0x2b4]
00550360  1c d0 4d e2                                      sub sp, sp, #0x1c
00550364  04 40 8f e0                                      add r4, pc, r4
00550368  0e e0 94 e7                                      ldr lr, [r4, lr]
0055036c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00550370  00 40 8d e5                                      str r4, [sp]
00550374  00 40 a0 e1                                      mov r4, r0
00550378  08 00 8e e2                                      add r0, lr, #8
0055037c  00 80 9c e5                                      ldr r8, [ip]
00550380  80 40 9c e9                                      ldmib ip, {r7, lr}
00550384  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00550388  00 00 84 e5                                      str r0, [r4]
0055038c  01 60 a0 e1                                      mov r6, r1
00550390  04 10 91 e5                                      ldr r1, [r1, #4]
00550394  04 00 86 e2                                      add r0, r6, #4
00550398  00 50 a0 e3                                      mov r5, #0
0055039c  00 10 84 e5                                      str r1, [r4]
005503a0  0c b0 11 e5                                      ldr fp, [r1, #-0xc]
005503a4  04 90 90 e5                                      ldr sb, [r0, #4]
005503a8  00 c0 a0 e3                                      mov ip, #0
005503ac  01 10 a0 e3                                      mov r1, #1
005503b0  0b 90 84 e7                                      str sb, [r4, fp]
005503b4  08 00 90 e5                                      ldr r0, [r0, #8]
005503b8  00 b0 94 e5                                      ldr fp, [r4]
005503bc  a0 90 84 e2                                      add sb, r4, #0xa0
005503c0  14 00 8d e5                                      str r0, [sp, #0x14]
005503c4  10 b0 1b e5                                      ldr fp, [fp, #-0x10]
005503c8  0c 00 84 e2                                      add r0, r4, #0xc
005503cc  04 00 8d e5                                      str r0, [sp, #4]
005503d0  10 b0 8d e5                                      str fp, [sp, #0x10]
005503d4  04 b0 84 e2                                      add fp, r4, #4
005503d8  0c b0 8d e5                                      str fp, [sp, #0xc]
005503dc  14 00 9d e5                                      ldr r0, [sp, #0x14]
005503e0  10 b0 9d e5                                      ldr fp, [sp, #0x10]
005503e4  0b 00 84 e7                                      str r0, [r4, fp]
005503e8  0c b0 9d e5                                      ldr fp, [sp, #0xc]
005503ec  08 b0 84 e5                                      str fp, [r4, #8]
005503f0  04 00 9d e5                                      ldr r0, [sp, #4]
005503f4  30 e0 84 e5                                      str lr, [r4, #0x30]
005503f8  28 80 84 e5                                      str r8, [r4, #0x28]
005503fc  20 00 84 e5                                      str r0, [r4, #0x20]
00550400  1c 00 84 e5                                      str r0, [r4, #0x1c]
00550404  2c 70 84 e5                                      str r7, [r4, #0x2c]
00550408  09 00 a0 e1                                      mov r0, sb
0055040c  04 b0 84 e5                                      str fp, [r4, #4]
00550410  34 a0 84 e5                                      str sl, [r4, #0x34]
00550414  38 80 84 e5                                      str r8, [r4, #0x38]
00550418  3c 70 84 e5                                      str r7, [r4, #0x3c]
0055041c  40 e0 84 e5                                      str lr, [r4, #0x40]
00550420  48 80 84 e5                                      str r8, [r4, #0x48]
00550424  4c 70 84 e5                                      str r7, [r4, #0x4c]
00550428  50 e0 84 e5                                      str lr, [r4, #0x50]
0055042c  58 80 84 e5                                      str r8, [r4, #0x58]
00550430  5c 70 84 e5                                      str r7, [r4, #0x5c]
00550434  60 e0 84 e5                                      str lr, [r4, #0x60]
00550438  84 c0 84 e5                                      str ip, [r4, #0x84]
0055043c  99 10 c4 e5                                      strb r1, [r4, #0x99]
00550440  78 c0 84 e5                                      str ip, [r4, #0x78]
00550444  7c c0 84 e5                                      str ip, [r4, #0x7c]
00550448  80 c0 84 e5                                      str ip, [r4, #0x80]
0055044c  90 10 84 e5                                      str r1, [r4, #0x90]
00550450  94 10 84 e5                                      str r1, [r4, #0x94]
00550454  98 10 c4 e5                                      strb r1, [r4, #0x98]
00550458  44 a0 84 e5                                      str sl, [r4, #0x44]
0055045c  0c 50 c4 e5                                      strb r5, [r4, #0xc]
00550460  24 50 84 e5                                      str r5, [r4, #0x24]
00550464  64 a0 84 e5                                      str sl, [r4, #0x64]
00550468  54 a0 84 e5                                      str sl, [r4, #0x54]
0055046c  68 50 84 e5                                      str r5, [r4, #0x68]
00550470  6c 50 84 e5                                      str r5, [r4, #0x6c]
00550474  70 50 84 e5                                      str r5, [r4, #0x70]
00550478  74 50 84 e5                                      str r5, [r4, #0x74]
0055047c  88 50 84 e5                                      str r5, [r4, #0x88]
00550480  8c 50 84 e5                                      str r5, [r4, #0x8c]
00550484  9a 50 c4 e5                                      strb r5, [r4, #0x9a]
00550488  9b 50 c4 e5                                      strb r5, [r4, #0x9b]
0055048c  9c 50 c4 e5                                      strb r5, [r4, #0x9c]
00550490  e0 90 84 e5                                      str sb, [r4, #0xe0]
00550494  e4 90 84 e5                                      str sb, [r4, #0xe4]
00550498  10 10 a0 e3                                      mov r1, #0x10
0055049c  02 70 a0 e1                                      mov r7, r2
005504a0  03 80 a0 e1                                      mov r8, r3
005504a4  1d 41 f7 eb                                      bl #0x320920
005504a8  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
005504ac  e8 30 84 e2                                      add r3, r4, #0xe8
005504b0  03 00 a0 e1                                      mov r0, r3
005504b4  00 50 82 e5                                      str r5, [r2]
005504b8  10 10 a0 e3                                      mov r1, #0x10
005504bc  28 31 84 e5                                      str r3, [r4, #0x128]
005504c0  2c 31 84 e5                                      str r3, [r4, #0x12c]
005504c4  15 41 f7 eb                                      bl #0x320920
005504c8  28 31 94 e5                                      ldr r3, [r4, #0x128]
005504cc  05 00 58 e1                                      cmp r8, r5
005504d0  00 50 83 e5                                      str r5, [r3]
005504d4  40 30 9d e5                                      ldr r3, [sp, #0x40]
005504d8  4c 51 84 e5                                      str r5, [r4, #0x14c]
005504dc  50 71 84 e5                                      str r7, [r4, #0x150]
005504e0  30 31 84 e5                                      str r3, [r4, #0x130]
005504e4  00 30 e0 e3                                      mvn r3, #0
005504e8  38 31 84 e5                                      str r3, [r4, #0x138]
005504ec  10 30 a0 e3                                      mov r3, #0x10
005504f0  54 31 84 e5                                      str r3, [r4, #0x154]
005504f4  34 51 c4 e5                                      strb r5, [r4, #0x134]
005504f8  3c 51 c4 e5                                      strb r5, [r4, #0x13c]
005504fc  40 51 84 e5                                      str r5, [r4, #0x140]
00550500  44 51 84 e5                                      str r5, [r4, #0x144]
00550504  48 51 84 e5                                      str r5, [r4, #0x148]
00550508  04 00 00 0a                                      beq #0x550520
0055050c  08 00 a0 e1                                      mov r0, r8
00550510  00 30 98 e5                                      ldr r3, [r8]
00550514  04 10 a0 e1                                      mov r1, r4
00550518  0f e0 a0 e1                                      mov lr, pc
0055051c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00550520  24 30 94 e5                                      ldr r3, [r4, #0x24]
00550524  00 00 53 e3                                      cmp r3, #0
00550528  2d 00 00 0a                                      beq #0x5505e4
0055052c  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00550530  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00550534  38 70 94 e5                                      ldr r7, [r4, #0x38]
00550538  3c 50 94 e5                                      ldr r5, [r4, #0x3c]
0055053c  40 10 94 e5                                      ldr r1, [r4, #0x40]
00550540  44 20 94 e5                                      ldr r2, [r4, #0x44]
00550544  40 a0 93 e5                                      ldr sl, [r3, #0x40]
00550548  44 80 93 e5                                      ldr r8, [r3, #0x44]
0055054c  02 20 80 e0                                      add r2, r0, r2
00550550  01 10 8c e0                                      add r1, ip, r1
00550554  05 50 80 e0                                      add r5, r0, r5
00550558  07 70 8c e0                                      add r7, ip, r7
0055055c  4c 50 84 e5                                      str r5, [r4, #0x4c]
00550560  54 20 84 e5                                      str r2, [r4, #0x54]
00550564  48 70 84 e5                                      str r7, [r4, #0x48]
00550568  50 10 84 e5                                      str r1, [r4, #0x50]
0055056c  44 20 84 e5                                      str r2, [r4, #0x44]
00550570  70 a0 84 e5                                      str sl, [r4, #0x70]
00550574  74 80 84 e5                                      str r8, [r4, #0x74]
00550578  68 c0 84 e5                                      str ip, [r4, #0x68]
0055057c  6c 00 84 e5                                      str r0, [r4, #0x6c]
00550580  38 70 84 e5                                      str r7, [r4, #0x38]
00550584  3c 50 84 e5                                      str r5, [r4, #0x3c]
00550588  40 10 84 e5                                      str r1, [r4, #0x40]
0055058c  50 00 93 e5                                      ldr r0, [r3, #0x50]
00550590  00 00 51 e1                                      cmp r1, r0
00550594  50 00 84 c5                                      strgt r0, [r4, #0x50]
00550598  54 10 93 e5                                      ldr r1, [r3, #0x54]
0055059c  01 00 52 e1                                      cmp r2, r1
005505a0  54 10 84 c5                                      strgt r1, [r4, #0x54]
005505a4  48 10 93 e5                                      ldr r1, [r3, #0x48]
005505a8  48 20 94 e5                                      ldr r2, [r4, #0x48]
005505ac  02 00 51 e1                                      cmp r1, r2
005505b0  48 10 84 c5                                      strgt r1, [r4, #0x48]
005505b4  01 20 a0 c1                                      movgt r2, r1
005505b8  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
005505bc  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
005505c0  03 00 51 e1                                      cmp r1, r3
005505c4  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
005505c8  01 30 a0 c1                                      movgt r3, r1
005505cc  54 10 94 e5                                      ldr r1, [r4, #0x54]
005505d0  03 00 51 e1                                      cmp r1, r3
005505d4  50 30 94 e5                                      ldr r3, [r4, #0x50]
005505d8  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
005505dc  03 00 52 e1                                      cmp r2, r3
005505e0  48 30 84 c5                                      strgt r3, [r4, #0x48]
005505e4  00 30 96 e5                                      ldr r3, [r6]
005505e8  04 00 a0 e1                                      mov r0, r4
005505ec  00 30 84 e5                                      str r3, [r4]
005505f0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005505f4  10 20 96 e5                                      ldr r2, [r6, #0x10]
005505f8  03 20 84 e7                                      str r2, [r4, r3]
005505fc  00 30 94 e5                                      ldr r3, [r4]
00550600  14 20 96 e5                                      ldr r2, [r6, #0x14]
00550604  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00550608  03 20 84 e7                                      str r2, [r4, r3]
0055060c  1c d0 8d e2                                      add sp, sp, #0x1c
00550610  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00550614  2c 47 44 00 4c 27 00 00                          .byte 0x2c, 0x47, 0x44, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x00550f24, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUIStaticText
; alias: _ZN6glitch3gui14IGUIStaticTextD1Ev
; demangled: glitch::gui::IGUIStaticText::~IGUIStaticText()
; decoder-mode: arm
00550f24  40 30 9f e5                                      ldr r3, [pc, #0x40]
00550f28  40 20 9f e5                                      ldr r2, [pc, #0x40]
00550f2c  40 10 9f e5                                      ldr r1, [pc, #0x40]
00550f30  03 30 8f e0                                      add r3, pc, r3
00550f34  02 20 93 e7                                      ldr r2, [r3, r2]
00550f38  01 10 93 e7                                      ldr r1, [r3, r1]
00550f3c  10 40 2d e9                                      push {r4, lr}
00550f40  fc c0 82 e2                                      add ip, r2, #0xfc
00550f44  10 e0 82 e2                                      add lr, r2, #0x10
00550f48  dc 20 82 e2                                      add r2, r2, #0xdc
00550f4c  00 40 a0 e1                                      mov r4, r0
00550f50  00 e0 80 e5                                      str lr, [r0]
00550f54  58 21 80 e5                                      str r2, [r0, #0x158]
00550f58  5c c1 80 e5                                      str ip, [r0, #0x15c]
00550f5c  04 10 81 e2                                      add r1, r1, #4
00550f60  2e a0 ff eb                                      bl #0x539020
00550f64  04 00 a0 e1                                      mov r0, r4
00550f68  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00550f6c  60 3b 44 00 20 47 00 00 a0 32 00 00              .byte 0x60, 0x3b, 0x44, 0x00, 0x20, 0x47, 0x00, 0x00, 0xa0, 0x32, 0x00, 0x00

; FUNCTION 0x00550f78, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIStaticText
; alias: _ZTv0_n24_N6glitch3gui14IGUIStaticTextD1Ev
; demangled: virtual thunk to glitch::gui::IGUIStaticText::~IGUIStaticText()
; decoder-mode: arm
00550f78  00 30 90 e5                                      ldr r3, [r0]
00550f7c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00550f80  03 00 80 e0                                      add r0, r0, r3
00550f84  e6 ff ff ea                                      b #0x550f24

; FUNCTION 0x00550f88, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIStaticText
; alias: _ZTv0_n12_N6glitch3gui14IGUIStaticTextD1Ev
; demangled: virtual thunk to glitch::gui::IGUIStaticText::~IGUIStaticText()
; decoder-mode: arm
00550f88  00 30 90 e5                                      ldr r3, [r0]
00550f8c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00550f90  03 00 80 e0                                      add r0, r0, r3
00550f94  e2 ff ff ea                                      b #0x550f24

; FUNCTION 0x005510cc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUIStaticText
; alias: _ZN6glitch3gui14IGUIStaticTextD0Ev
; demangled: glitch::gui::IGUIStaticText::~IGUIStaticText()
; decoder-mode: arm
005510cc  48 30 9f e5                                      ldr r3, [pc, #0x48]
005510d0  48 20 9f e5                                      ldr r2, [pc, #0x48]
005510d4  48 10 9f e5                                      ldr r1, [pc, #0x48]
005510d8  03 30 8f e0                                      add r3, pc, r3
005510dc  02 20 93 e7                                      ldr r2, [r3, r2]
005510e0  01 10 93 e7                                      ldr r1, [r3, r1]
005510e4  10 40 2d e9                                      push {r4, lr}
005510e8  fc c0 82 e2                                      add ip, r2, #0xfc
005510ec  10 e0 82 e2                                      add lr, r2, #0x10
005510f0  dc 20 82 e2                                      add r2, r2, #0xdc
005510f4  00 40 a0 e1                                      mov r4, r0
005510f8  00 e0 80 e5                                      str lr, [r0]
005510fc  58 21 80 e5                                      str r2, [r0, #0x158]
00551100  5c c1 80 e5                                      str ip, [r0, #0x15c]
00551104  04 10 81 e2                                      add r1, r1, #4
00551108  c4 9f ff eb                                      bl #0x539020
0055110c  04 00 a0 e1                                      mov r0, r4
00551110  66 f4 f6 eb                                      bl #0x30e2b0
00551114  04 00 a0 e1                                      mov r0, r4
00551118  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0055111c  b8 39 44 00 20 47 00 00 a0 32 00 00              .byte 0xb8, 0x39, 0x44, 0x00, 0x20, 0x47, 0x00, 0x00, 0xa0, 0x32, 0x00, 0x00

; FUNCTION 0x00551128, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIStaticText
; alias: _ZTv0_n24_N6glitch3gui14IGUIStaticTextD0Ev
; demangled: virtual thunk to glitch::gui::IGUIStaticText::~IGUIStaticText()
; decoder-mode: arm
00551128  00 30 90 e5                                      ldr r3, [r0]
0055112c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00551130  03 00 80 e0                                      add r0, r0, r3
00551134  e4 ff ff ea                                      b #0x5510cc

; FUNCTION 0x00551138, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIStaticText
; alias: _ZTv0_n12_N6glitch3gui14IGUIStaticTextD0Ev
; demangled: virtual thunk to glitch::gui::IGUIStaticText::~IGUIStaticText()
; decoder-mode: arm
00551138  00 30 90 e5                                      ldr r3, [r0]
0055113c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00551140  03 00 80 e0                                      add r0, r0, r3
00551144  e0 ff ff ea                                      b #0x5510cc
