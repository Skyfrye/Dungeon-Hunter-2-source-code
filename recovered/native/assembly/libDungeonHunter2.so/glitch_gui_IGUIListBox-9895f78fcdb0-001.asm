; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00542568, declared_size=728, range_size=728, mode=arm
; class-group: glitch::gui::IGUIListBox
; alias: _ZN6glitch3gui11IGUIListBoxC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIListBox::IGUIListBox(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00542568  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0054256c  c4 e2 9f e5                                      ldr lr, [pc, #0x2c4]
00542570  c4 52 9f e5                                      ldr r5, [pc, #0x2c4]
00542574  24 d0 4d e2                                      sub sp, sp, #0x24
00542578  0e e0 8f e0                                      add lr, pc, lr
0054257c  05 50 9e e7                                      ldr r5, [lr, r5]
00542580  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
00542584  00 40 a0 e1                                      mov r4, r0
00542588  08 00 85 e2                                      add r0, r5, #8
0054258c  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00542590  00 70 9c e5                                      ldr r7, [ip]
00542594  40 01 9c e9                                      ldmib ip, {r6, r8}
00542598  00 00 84 e5                                      str r0, [r4]
0054259c  04 00 91 e5                                      ldr r0, [r1, #4]
005425a0  01 50 a0 e1                                      mov r5, r1
005425a4  04 10 81 e2                                      add r1, r1, #4
005425a8  00 00 84 e5                                      str r0, [r4]
005425ac  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
005425b0  0c c0 84 e2                                      add ip, r4, #0xc
005425b4  18 00 8d e5                                      str r0, [sp, #0x18]
005425b8  04 00 84 e2                                      add r0, r4, #4
005425bc  04 00 8d e5                                      str r0, [sp, #4]
005425c0  04 b0 91 e5                                      ldr fp, [r1, #4]
005425c4  18 90 9d e5                                      ldr sb, [sp, #0x18]
005425c8  0c 00 a0 e1                                      mov r0, ip
005425cc  09 b0 84 e7                                      str fp, [r4, sb]
005425d0  08 10 91 e5                                      ldr r1, [r1, #8]
005425d4  00 90 94 e5                                      ldr sb, [r4]
005425d8  1c 10 8d e5                                      str r1, [sp, #0x1c]
005425dc  10 90 19 e5                                      ldr sb, [sb, #-0x10]
005425e0  0c 20 8d e5                                      str r2, [sp, #0xc]
005425e4  10 10 a0 e3                                      mov r1, #0x10
005425e8  18 90 8d e5                                      str sb, [sp, #0x18]
005425ec  18 20 9d e5                                      ldr r2, [sp, #0x18]
005425f0  03 90 a0 e1                                      mov sb, r3
005425f4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005425f8  02 30 84 e7                                      str r3, [r4, r2]
005425fc  04 b0 9d e5                                      ldr fp, [sp, #4]
00542600  1c c0 84 e5                                      str ip, [r4, #0x1c]
00542604  20 c0 84 e5                                      str ip, [r4, #0x20]
00542608  08 b0 84 e5                                      str fp, [r4, #8]
0054260c  04 b0 84 e5                                      str fp, [r4, #4]
00542610  e4 78 f7 eb                                      bl #0x3209a8
00542614  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
00542618  00 b0 a0 e3                                      mov fp, #0
0054261c  00 00 a0 e3                                      mov r0, #0
00542620  01 10 a0 e3                                      mov r1, #1
00542624  a0 30 84 e2                                      add r3, r4, #0xa0
00542628  00 b0 cc e5                                      strb fp, [ip]
0054262c  84 00 84 e5                                      str r0, [r4, #0x84]
00542630  99 10 c4 e5                                      strb r1, [r4, #0x99]
00542634  78 00 84 e5                                      str r0, [r4, #0x78]
00542638  7c 00 84 e5                                      str r0, [r4, #0x7c]
0054263c  80 00 84 e5                                      str r0, [r4, #0x80]
00542640  90 10 84 e5                                      str r1, [r4, #0x90]
00542644  03 00 a0 e1                                      mov r0, r3
00542648  94 10 84 e5                                      str r1, [r4, #0x94]
0054264c  98 10 c4 e5                                      strb r1, [r4, #0x98]
00542650  58 70 84 e5                                      str r7, [r4, #0x58]
00542654  10 10 a0 e3                                      mov r1, #0x10
00542658  5c 60 84 e5                                      str r6, [r4, #0x5c]
0054265c  60 80 84 e5                                      str r8, [r4, #0x60]
00542660  64 a0 84 e5                                      str sl, [r4, #0x64]
00542664  24 b0 84 e5                                      str fp, [r4, #0x24]
00542668  28 70 84 e5                                      str r7, [r4, #0x28]
0054266c  2c 60 84 e5                                      str r6, [r4, #0x2c]
00542670  30 80 84 e5                                      str r8, [r4, #0x30]
00542674  34 a0 84 e5                                      str sl, [r4, #0x34]
00542678  38 70 84 e5                                      str r7, [r4, #0x38]
0054267c  3c 60 84 e5                                      str r6, [r4, #0x3c]
00542680  40 80 84 e5                                      str r8, [r4, #0x40]
00542684  44 a0 84 e5                                      str sl, [r4, #0x44]
00542688  48 70 84 e5                                      str r7, [r4, #0x48]
0054268c  4c 60 84 e5                                      str r6, [r4, #0x4c]
00542690  50 80 84 e5                                      str r8, [r4, #0x50]
00542694  54 a0 84 e5                                      str sl, [r4, #0x54]
00542698  68 b0 84 e5                                      str fp, [r4, #0x68]
0054269c  6c b0 84 e5                                      str fp, [r4, #0x6c]
005426a0  70 b0 84 e5                                      str fp, [r4, #0x70]
005426a4  74 b0 84 e5                                      str fp, [r4, #0x74]
005426a8  88 b0 84 e5                                      str fp, [r4, #0x88]
005426ac  8c b0 84 e5                                      str fp, [r4, #0x8c]
005426b0  9a b0 c4 e5                                      strb fp, [r4, #0x9a]
005426b4  e0 30 84 e5                                      str r3, [r4, #0xe0]
005426b8  e4 30 84 e5                                      str r3, [r4, #0xe4]
005426bc  9b b0 c4 e5                                      strb fp, [r4, #0x9b]
005426c0  9c b0 c4 e5                                      strb fp, [r4, #0x9c]
005426c4  95 78 f7 eb                                      bl #0x320920
005426c8  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
005426cc  e8 30 84 e2                                      add r3, r4, #0xe8
005426d0  03 00 a0 e1                                      mov r0, r3
005426d4  00 b0 81 e5                                      str fp, [r1]
005426d8  28 31 84 e5                                      str r3, [r4, #0x128]
005426dc  2c 31 84 e5                                      str r3, [r4, #0x12c]
005426e0  10 10 a0 e3                                      mov r1, #0x10
005426e4  8d 78 f7 eb                                      bl #0x320920
005426e8  28 31 94 e5                                      ldr r3, [r4, #0x128]
005426ec  0b 00 59 e1                                      cmp sb, fp
005426f0  00 b0 83 e5                                      str fp, [r3]
005426f4  48 30 9d e5                                      ldr r3, [sp, #0x48]
005426f8  4c b1 84 e5                                      str fp, [r4, #0x14c]
005426fc  30 31 84 e5                                      str r3, [r4, #0x130]
00542700  00 30 e0 e3                                      mvn r3, #0
00542704  38 31 84 e5                                      str r3, [r4, #0x138]
00542708  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0054270c  34 b1 c4 e5                                      strb fp, [r4, #0x134]
00542710  3c b1 c4 e5                                      strb fp, [r4, #0x13c]
00542714  50 31 84 e5                                      str r3, [r4, #0x150]
00542718  0a 30 a0 e3                                      mov r3, #0xa
0054271c  54 31 84 e5                                      str r3, [r4, #0x154]
00542720  40 b1 84 e5                                      str fp, [r4, #0x140]
00542724  44 b1 84 e5                                      str fp, [r4, #0x144]
00542728  48 b1 84 e5                                      str fp, [r4, #0x148]
0054272c  04 00 00 0a                                      beq #0x542744
00542730  09 00 a0 e1                                      mov r0, sb
00542734  00 30 99 e5                                      ldr r3, [sb]
00542738  04 10 a0 e1                                      mov r1, r4
0054273c  0f e0 a0 e1                                      mov lr, pc
00542740  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00542744  24 30 94 e5                                      ldr r3, [r4, #0x24]
00542748  00 00 53 e3                                      cmp r3, #0
0054274c  2d 00 00 0a                                      beq #0x542808
00542750  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00542754  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00542758  38 70 94 e5                                      ldr r7, [r4, #0x38]
0054275c  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
00542760  40 10 94 e5                                      ldr r1, [r4, #0x40]
00542764  44 20 94 e5                                      ldr r2, [r4, #0x44]
00542768  40 a0 93 e5                                      ldr sl, [r3, #0x40]
0054276c  44 80 93 e5                                      ldr r8, [r3, #0x44]
00542770  02 20 80 e0                                      add r2, r0, r2
00542774  01 10 8c e0                                      add r1, ip, r1
00542778  06 60 80 e0                                      add r6, r0, r6
0054277c  07 70 8c e0                                      add r7, ip, r7
00542780  4c 60 84 e5                                      str r6, [r4, #0x4c]
00542784  54 20 84 e5                                      str r2, [r4, #0x54]
00542788  48 70 84 e5                                      str r7, [r4, #0x48]
0054278c  50 10 84 e5                                      str r1, [r4, #0x50]
00542790  44 20 84 e5                                      str r2, [r4, #0x44]
00542794  70 a0 84 e5                                      str sl, [r4, #0x70]
00542798  74 80 84 e5                                      str r8, [r4, #0x74]
0054279c  68 c0 84 e5                                      str ip, [r4, #0x68]
005427a0  6c 00 84 e5                                      str r0, [r4, #0x6c]
005427a4  38 70 84 e5                                      str r7, [r4, #0x38]
005427a8  3c 60 84 e5                                      str r6, [r4, #0x3c]
005427ac  40 10 84 e5                                      str r1, [r4, #0x40]
005427b0  50 00 93 e5                                      ldr r0, [r3, #0x50]
005427b4  00 00 51 e1                                      cmp r1, r0
005427b8  50 00 84 c5                                      strgt r0, [r4, #0x50]
005427bc  54 10 93 e5                                      ldr r1, [r3, #0x54]
005427c0  01 00 52 e1                                      cmp r2, r1
005427c4  54 10 84 c5                                      strgt r1, [r4, #0x54]
005427c8  48 10 93 e5                                      ldr r1, [r3, #0x48]
005427cc  48 20 94 e5                                      ldr r2, [r4, #0x48]
005427d0  02 00 51 e1                                      cmp r1, r2
005427d4  48 10 84 c5                                      strgt r1, [r4, #0x48]
005427d8  01 20 a0 c1                                      movgt r2, r1
005427dc  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
005427e0  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
005427e4  03 00 51 e1                                      cmp r1, r3
005427e8  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
005427ec  01 30 a0 c1                                      movgt r3, r1
005427f0  54 10 94 e5                                      ldr r1, [r4, #0x54]
005427f4  01 00 53 e1                                      cmp r3, r1
005427f8  50 30 94 e5                                      ldr r3, [r4, #0x50]
005427fc  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
00542800  03 00 52 e1                                      cmp r2, r3
00542804  48 30 84 c5                                      strgt r3, [r4, #0x48]
00542808  00 30 95 e5                                      ldr r3, [r5]
0054280c  04 00 a0 e1                                      mov r0, r4
00542810  00 30 84 e5                                      str r3, [r4]
00542814  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00542818  10 20 95 e5                                      ldr r2, [r5, #0x10]
0054281c  03 20 84 e7                                      str r2, [r4, r3]
00542820  00 30 94 e5                                      ldr r3, [r4]
00542824  14 20 95 e5                                      ldr r2, [r5, #0x14]
00542828  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054282c  03 20 84 e7                                      str r2, [r4, r3]
00542830  24 d0 8d e2                                      add sp, sp, #0x24
00542834  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00542838  18 25 45 00 4c 27 00 00                          .byte 0x18, 0x25, 0x45, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x00544428, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUIListBox
; alias: _ZN6glitch3gui11IGUIListBoxD1Ev
; demangled: glitch::gui::IGUIListBox::~IGUIListBox()
; decoder-mode: arm
00544428  40 30 9f e5                                      ldr r3, [pc, #0x40]
0054442c  40 20 9f e5                                      ldr r2, [pc, #0x40]
00544430  40 10 9f e5                                      ldr r1, [pc, #0x40]
00544434  03 30 8f e0                                      add r3, pc, r3
00544438  02 20 93 e7                                      ldr r2, [r3, r2]
0054443c  01 10 93 e7                                      ldr r1, [r3, r1]
00544440  10 40 2d e9                                      push {r4, lr}
00544444  47 cf 82 e2                                      add ip, r2, #0x11c
00544448  10 e0 82 e2                                      add lr, r2, #0x10
0054444c  fc 20 82 e2                                      add r2, r2, #0xfc
00544450  00 40 a0 e1                                      mov r4, r0
00544454  00 e0 80 e5                                      str lr, [r0]
00544458  58 21 80 e5                                      str r2, [r0, #0x158]
0054445c  5c c1 80 e5                                      str ip, [r0, #0x15c]
00544460  04 10 81 e2                                      add r1, r1, #4
00544464  ed d2 ff eb                                      bl #0x539020
00544468  04 00 a0 e1                                      mov r0, r4
0054446c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00544470  5c 06 45 00 90 09 00 00 e8 3e 00 00              .byte 0x5c, 0x06, 0x45, 0x00, 0x90, 0x09, 0x00, 0x00, 0xe8, 0x3e, 0x00, 0x00

; FUNCTION 0x0054447c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIListBox
; alias: _ZTv0_n24_N6glitch3gui11IGUIListBoxD1Ev
; demangled: virtual thunk to glitch::gui::IGUIListBox::~IGUIListBox()
; decoder-mode: arm
0054447c  00 30 90 e5                                      ldr r3, [r0]
00544480  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00544484  03 00 80 e0                                      add r0, r0, r3
00544488  e6 ff ff ea                                      b #0x544428

; FUNCTION 0x0054448c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIListBox
; alias: _ZTv0_n12_N6glitch3gui11IGUIListBoxD1Ev
; demangled: virtual thunk to glitch::gui::IGUIListBox::~IGUIListBox()
; decoder-mode: arm
0054448c  00 30 90 e5                                      ldr r3, [r0]
00544490  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00544494  03 00 80 e0                                      add r0, r0, r3
00544498  e2 ff ff ea                                      b #0x544428

; FUNCTION 0x00544660, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUIListBox
; alias: _ZN6glitch3gui11IGUIListBoxD0Ev
; demangled: glitch::gui::IGUIListBox::~IGUIListBox()
; decoder-mode: arm
00544660  48 30 9f e5                                      ldr r3, [pc, #0x48]
00544664  48 20 9f e5                                      ldr r2, [pc, #0x48]
00544668  48 10 9f e5                                      ldr r1, [pc, #0x48]
0054466c  03 30 8f e0                                      add r3, pc, r3
00544670  02 20 93 e7                                      ldr r2, [r3, r2]
00544674  01 10 93 e7                                      ldr r1, [r3, r1]
00544678  10 40 2d e9                                      push {r4, lr}
0054467c  47 cf 82 e2                                      add ip, r2, #0x11c
00544680  10 e0 82 e2                                      add lr, r2, #0x10
00544684  fc 20 82 e2                                      add r2, r2, #0xfc
00544688  00 40 a0 e1                                      mov r4, r0
0054468c  00 e0 80 e5                                      str lr, [r0]
00544690  58 21 80 e5                                      str r2, [r0, #0x158]
00544694  5c c1 80 e5                                      str ip, [r0, #0x15c]
00544698  04 10 81 e2                                      add r1, r1, #4
0054469c  5f d2 ff eb                                      bl #0x539020
005446a0  04 00 a0 e1                                      mov r0, r4
005446a4  01 27 f7 eb                                      bl #0x30e2b0
005446a8  04 00 a0 e1                                      mov r0, r4
005446ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005446b0  24 04 45 00 90 09 00 00 e8 3e 00 00              .byte 0x24, 0x04, 0x45, 0x00, 0x90, 0x09, 0x00, 0x00, 0xe8, 0x3e, 0x00, 0x00

; FUNCTION 0x005446bc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIListBox
; alias: _ZTv0_n24_N6glitch3gui11IGUIListBoxD0Ev
; demangled: virtual thunk to glitch::gui::IGUIListBox::~IGUIListBox()
; decoder-mode: arm
005446bc  00 30 90 e5                                      ldr r3, [r0]
005446c0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005446c4  03 00 80 e0                                      add r0, r0, r3
005446c8  e4 ff ff ea                                      b #0x544660

; FUNCTION 0x005446cc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIListBox
; alias: _ZTv0_n12_N6glitch3gui11IGUIListBoxD0Ev
; demangled: virtual thunk to glitch::gui::IGUIListBox::~IGUIListBox()
; decoder-mode: arm
005446cc  00 30 90 e5                                      ldr r3, [r0]
005446d0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005446d4  03 00 80 e0                                      add r0, r0, r3
005446d8  e0 ff ff ea                                      b #0x544660
