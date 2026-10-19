; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00546390, declared_size=704, range_size=704, mode=arm
; class-group: glitch::gui::IGUIMeshViewer
; alias: _ZN6glitch3gui14IGUIMeshViewerC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIMeshViewer::IGUIMeshViewer(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00546390  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00546394  ac 42 9f e5                                      ldr r4, [pc, #0x2ac]
00546398  ac e2 9f e5                                      ldr lr, [pc, #0x2ac]
0054639c  1c d0 4d e2                                      sub sp, sp, #0x1c
005463a0  04 40 8f e0                                      add r4, pc, r4
005463a4  0e e0 94 e7                                      ldr lr, [r4, lr]
005463a8  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005463ac  00 40 8d e5                                      str r4, [sp]
005463b0  00 40 a0 e1                                      mov r4, r0
005463b4  08 00 8e e2                                      add r0, lr, #8
005463b8  00 80 9c e5                                      ldr r8, [ip]
005463bc  80 40 9c e9                                      ldmib ip, {r7, lr}
005463c0  0c a0 9c e5                                      ldr sl, [ip, #0xc]
005463c4  00 00 84 e5                                      str r0, [r4]
005463c8  01 50 a0 e1                                      mov r5, r1
005463cc  04 10 91 e5                                      ldr r1, [r1, #4]
005463d0  04 00 85 e2                                      add r0, r5, #4
005463d4  00 60 a0 e3                                      mov r6, #0
005463d8  00 10 84 e5                                      str r1, [r4]
005463dc  0c b0 11 e5                                      ldr fp, [r1, #-0xc]
005463e0  04 90 90 e5                                      ldr sb, [r0, #4]
005463e4  00 c0 a0 e3                                      mov ip, #0
005463e8  01 10 a0 e3                                      mov r1, #1
005463ec  0b 90 84 e7                                      str sb, [r4, fp]
005463f0  08 00 90 e5                                      ldr r0, [r0, #8]
005463f4  00 b0 94 e5                                      ldr fp, [r4]
005463f8  a0 90 84 e2                                      add sb, r4, #0xa0
005463fc  14 00 8d e5                                      str r0, [sp, #0x14]
00546400  10 b0 1b e5                                      ldr fp, [fp, #-0x10]
00546404  0c 00 84 e2                                      add r0, r4, #0xc
00546408  04 00 8d e5                                      str r0, [sp, #4]
0054640c  10 b0 8d e5                                      str fp, [sp, #0x10]
00546410  04 b0 84 e2                                      add fp, r4, #4
00546414  0c b0 8d e5                                      str fp, [sp, #0xc]
00546418  14 00 9d e5                                      ldr r0, [sp, #0x14]
0054641c  10 b0 9d e5                                      ldr fp, [sp, #0x10]
00546420  0b 00 84 e7                                      str r0, [r4, fp]
00546424  0c b0 9d e5                                      ldr fp, [sp, #0xc]
00546428  08 b0 84 e5                                      str fp, [r4, #8]
0054642c  04 00 9d e5                                      ldr r0, [sp, #4]
00546430  30 e0 84 e5                                      str lr, [r4, #0x30]
00546434  28 80 84 e5                                      str r8, [r4, #0x28]
00546438  20 00 84 e5                                      str r0, [r4, #0x20]
0054643c  1c 00 84 e5                                      str r0, [r4, #0x1c]
00546440  2c 70 84 e5                                      str r7, [r4, #0x2c]
00546444  09 00 a0 e1                                      mov r0, sb
00546448  04 b0 84 e5                                      str fp, [r4, #4]
0054644c  34 a0 84 e5                                      str sl, [r4, #0x34]
00546450  38 80 84 e5                                      str r8, [r4, #0x38]
00546454  3c 70 84 e5                                      str r7, [r4, #0x3c]
00546458  40 e0 84 e5                                      str lr, [r4, #0x40]
0054645c  48 80 84 e5                                      str r8, [r4, #0x48]
00546460  4c 70 84 e5                                      str r7, [r4, #0x4c]
00546464  50 e0 84 e5                                      str lr, [r4, #0x50]
00546468  58 80 84 e5                                      str r8, [r4, #0x58]
0054646c  5c 70 84 e5                                      str r7, [r4, #0x5c]
00546470  60 e0 84 e5                                      str lr, [r4, #0x60]
00546474  84 c0 84 e5                                      str ip, [r4, #0x84]
00546478  99 10 c4 e5                                      strb r1, [r4, #0x99]
0054647c  78 c0 84 e5                                      str ip, [r4, #0x78]
00546480  7c c0 84 e5                                      str ip, [r4, #0x7c]
00546484  80 c0 84 e5                                      str ip, [r4, #0x80]
00546488  90 10 84 e5                                      str r1, [r4, #0x90]
0054648c  94 10 84 e5                                      str r1, [r4, #0x94]
00546490  98 10 c4 e5                                      strb r1, [r4, #0x98]
00546494  44 a0 84 e5                                      str sl, [r4, #0x44]
00546498  0c 60 c4 e5                                      strb r6, [r4, #0xc]
0054649c  24 60 84 e5                                      str r6, [r4, #0x24]
005464a0  64 a0 84 e5                                      str sl, [r4, #0x64]
005464a4  54 a0 84 e5                                      str sl, [r4, #0x54]
005464a8  68 60 84 e5                                      str r6, [r4, #0x68]
005464ac  6c 60 84 e5                                      str r6, [r4, #0x6c]
005464b0  70 60 84 e5                                      str r6, [r4, #0x70]
005464b4  74 60 84 e5                                      str r6, [r4, #0x74]
005464b8  88 60 84 e5                                      str r6, [r4, #0x88]
005464bc  8c 60 84 e5                                      str r6, [r4, #0x8c]
005464c0  9a 60 c4 e5                                      strb r6, [r4, #0x9a]
005464c4  9b 60 c4 e5                                      strb r6, [r4, #0x9b]
005464c8  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
005464cc  e0 90 84 e5                                      str sb, [r4, #0xe0]
005464d0  e4 90 84 e5                                      str sb, [r4, #0xe4]
005464d4  02 70 a0 e1                                      mov r7, r2
005464d8  03 80 a0 e1                                      mov r8, r3
005464dc  aa ff ff eb                                      bl #0x54638c
005464e0  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
005464e4  e8 30 84 e2                                      add r3, r4, #0xe8
005464e8  03 00 a0 e1                                      mov r0, r3
005464ec  00 60 82 e5                                      str r6, [r2]
005464f0  28 31 84 e5                                      str r3, [r4, #0x128]
005464f4  2c 31 84 e5                                      str r3, [r4, #0x12c]
005464f8  a3 ff ff eb                                      bl #0x54638c
005464fc  28 31 94 e5                                      ldr r3, [r4, #0x128]
00546500  06 00 58 e1                                      cmp r8, r6
00546504  00 60 83 e5                                      str r6, [r3]
00546508  40 30 9d e5                                      ldr r3, [sp, #0x40]
0054650c  4c 61 84 e5                                      str r6, [r4, #0x14c]
00546510  50 71 84 e5                                      str r7, [r4, #0x150]
00546514  30 31 84 e5                                      str r3, [r4, #0x130]
00546518  00 30 e0 e3                                      mvn r3, #0
0054651c  38 31 84 e5                                      str r3, [r4, #0x138]
00546520  0b 30 a0 e3                                      mov r3, #0xb
00546524  54 31 84 e5                                      str r3, [r4, #0x154]
00546528  34 61 c4 e5                                      strb r6, [r4, #0x134]
0054652c  3c 61 c4 e5                                      strb r6, [r4, #0x13c]
00546530  40 61 84 e5                                      str r6, [r4, #0x140]
00546534  44 61 84 e5                                      str r6, [r4, #0x144]
00546538  48 61 84 e5                                      str r6, [r4, #0x148]
0054653c  04 00 00 0a                                      beq #0x546554
00546540  08 00 a0 e1                                      mov r0, r8
00546544  00 30 98 e5                                      ldr r3, [r8]
00546548  04 10 a0 e1                                      mov r1, r4
0054654c  0f e0 a0 e1                                      mov lr, pc
00546550  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00546554  24 30 94 e5                                      ldr r3, [r4, #0x24]
00546558  00 00 53 e3                                      cmp r3, #0
0054655c  2d 00 00 0a                                      beq #0x546618
00546560  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00546564  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00546568  38 70 94 e5                                      ldr r7, [r4, #0x38]
0054656c  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
00546570  40 10 94 e5                                      ldr r1, [r4, #0x40]
00546574  44 20 94 e5                                      ldr r2, [r4, #0x44]
00546578  40 a0 93 e5                                      ldr sl, [r3, #0x40]
0054657c  44 80 93 e5                                      ldr r8, [r3, #0x44]
00546580  02 20 80 e0                                      add r2, r0, r2
00546584  01 10 8c e0                                      add r1, ip, r1
00546588  06 60 80 e0                                      add r6, r0, r6
0054658c  07 70 8c e0                                      add r7, ip, r7
00546590  4c 60 84 e5                                      str r6, [r4, #0x4c]
00546594  54 20 84 e5                                      str r2, [r4, #0x54]
00546598  48 70 84 e5                                      str r7, [r4, #0x48]
0054659c  50 10 84 e5                                      str r1, [r4, #0x50]
005465a0  44 20 84 e5                                      str r2, [r4, #0x44]
005465a4  70 a0 84 e5                                      str sl, [r4, #0x70]
005465a8  74 80 84 e5                                      str r8, [r4, #0x74]
005465ac  68 c0 84 e5                                      str ip, [r4, #0x68]
005465b0  6c 00 84 e5                                      str r0, [r4, #0x6c]
005465b4  38 70 84 e5                                      str r7, [r4, #0x38]
005465b8  3c 60 84 e5                                      str r6, [r4, #0x3c]
005465bc  40 10 84 e5                                      str r1, [r4, #0x40]
005465c0  50 00 93 e5                                      ldr r0, [r3, #0x50]
005465c4  00 00 51 e1                                      cmp r1, r0
005465c8  50 00 84 c5                                      strgt r0, [r4, #0x50]
005465cc  54 10 93 e5                                      ldr r1, [r3, #0x54]
005465d0  01 00 52 e1                                      cmp r2, r1
005465d4  54 10 84 c5                                      strgt r1, [r4, #0x54]
005465d8  48 10 93 e5                                      ldr r1, [r3, #0x48]
005465dc  48 20 94 e5                                      ldr r2, [r4, #0x48]
005465e0  02 00 51 e1                                      cmp r1, r2
005465e4  48 10 84 c5                                      strgt r1, [r4, #0x48]
005465e8  01 20 a0 c1                                      movgt r2, r1
005465ec  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
005465f0  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
005465f4  03 00 51 e1                                      cmp r1, r3
005465f8  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
005465fc  01 30 a0 c1                                      movgt r3, r1
00546600  54 10 94 e5                                      ldr r1, [r4, #0x54]
00546604  03 00 51 e1                                      cmp r1, r3
00546608  50 30 94 e5                                      ldr r3, [r4, #0x50]
0054660c  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
00546610  03 00 52 e1                                      cmp r2, r3
00546614  48 30 84 c5                                      strgt r3, [r4, #0x48]
00546618  00 30 95 e5                                      ldr r3, [r5]
0054661c  04 00 a0 e1                                      mov r0, r4
00546620  00 30 84 e5                                      str r3, [r4]
00546624  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00546628  10 20 95 e5                                      ldr r2, [r5, #0x10]
0054662c  03 20 84 e7                                      str r2, [r4, r3]
00546630  00 30 94 e5                                      ldr r3, [r4]
00546634  14 20 95 e5                                      ldr r2, [r5, #0x14]
00546638  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0054663c  03 20 84 e7                                      str r2, [r4, r3]
00546640  1c d0 8d e2                                      add sp, sp, #0x1c
00546644  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00546648  f0 e6 44 00 4c 27 00 00                          .byte 0xf0, 0xe6, 0x44, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x005467d8, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUIMeshViewer
; alias: _ZN6glitch3gui14IGUIMeshViewerD1Ev
; demangled: glitch::gui::IGUIMeshViewer::~IGUIMeshViewer()
; decoder-mode: arm
005467d8  40 30 9f e5                                      ldr r3, [pc, #0x40]
005467dc  40 20 9f e5                                      ldr r2, [pc, #0x40]
005467e0  40 10 9f e5                                      ldr r1, [pc, #0x40]
005467e4  03 30 8f e0                                      add r3, pc, r3
005467e8  02 20 93 e7                                      ldr r2, [r3, r2]
005467ec  01 10 93 e7                                      ldr r1, [r3, r1]
005467f0  10 40 2d e9                                      push {r4, lr}
005467f4  d4 c0 82 e2                                      add ip, r2, #0xd4
005467f8  10 e0 82 e2                                      add lr, r2, #0x10
005467fc  b4 20 82 e2                                      add r2, r2, #0xb4
00546800  00 40 a0 e1                                      mov r4, r0
00546804  00 e0 80 e5                                      str lr, [r0]
00546808  58 21 80 e5                                      str r2, [r0, #0x158]
0054680c  5c c1 80 e5                                      str ip, [r0, #0x15c]
00546810  04 10 81 e2                                      add r1, r1, #4
00546814  01 ca ff eb                                      bl #0x539020
00546818  04 00 a0 e1                                      mov r0, r4
0054681c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00546820  ac e2 44 00 50 20 00 00 70 11 00 00              .byte 0xac, 0xe2, 0x44, 0x00, 0x50, 0x20, 0x00, 0x00, 0x70, 0x11, 0x00, 0x00

; FUNCTION 0x0054682c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIMeshViewer
; alias: _ZTv0_n24_N6glitch3gui14IGUIMeshViewerD1Ev
; demangled: virtual thunk to glitch::gui::IGUIMeshViewer::~IGUIMeshViewer()
; decoder-mode: arm
0054682c  00 30 90 e5                                      ldr r3, [r0]
00546830  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00546834  03 00 80 e0                                      add r0, r0, r3
00546838  e6 ff ff ea                                      b #0x5467d8

; FUNCTION 0x0054683c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIMeshViewer
; alias: _ZTv0_n12_N6glitch3gui14IGUIMeshViewerD1Ev
; demangled: virtual thunk to glitch::gui::IGUIMeshViewer::~IGUIMeshViewer()
; decoder-mode: arm
0054683c  00 30 90 e5                                      ldr r3, [r0]
00546840  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00546844  03 00 80 e0                                      add r0, r0, r3
00546848  e2 ff ff ea                                      b #0x5467d8

; FUNCTION 0x00546980, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUIMeshViewer
; alias: _ZN6glitch3gui14IGUIMeshViewerD0Ev
; demangled: glitch::gui::IGUIMeshViewer::~IGUIMeshViewer()
; decoder-mode: arm
00546980  48 30 9f e5                                      ldr r3, [pc, #0x48]
00546984  48 20 9f e5                                      ldr r2, [pc, #0x48]
00546988  48 10 9f e5                                      ldr r1, [pc, #0x48]
0054698c  03 30 8f e0                                      add r3, pc, r3
00546990  02 20 93 e7                                      ldr r2, [r3, r2]
00546994  01 10 93 e7                                      ldr r1, [r3, r1]
00546998  10 40 2d e9                                      push {r4, lr}
0054699c  d4 c0 82 e2                                      add ip, r2, #0xd4
005469a0  10 e0 82 e2                                      add lr, r2, #0x10
005469a4  b4 20 82 e2                                      add r2, r2, #0xb4
005469a8  00 40 a0 e1                                      mov r4, r0
005469ac  00 e0 80 e5                                      str lr, [r0]
005469b0  58 21 80 e5                                      str r2, [r0, #0x158]
005469b4  5c c1 80 e5                                      str ip, [r0, #0x15c]
005469b8  04 10 81 e2                                      add r1, r1, #4
005469bc  97 c9 ff eb                                      bl #0x539020
005469c0  04 00 a0 e1                                      mov r0, r4
005469c4  39 1e f7 eb                                      bl #0x30e2b0
005469c8  04 00 a0 e1                                      mov r0, r4
005469cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005469d0  04 e1 44 00 50 20 00 00 70 11 00 00              .byte 0x04, 0xe1, 0x44, 0x00, 0x50, 0x20, 0x00, 0x00, 0x70, 0x11, 0x00, 0x00

; FUNCTION 0x005469dc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIMeshViewer
; alias: _ZTv0_n24_N6glitch3gui14IGUIMeshViewerD0Ev
; demangled: virtual thunk to glitch::gui::IGUIMeshViewer::~IGUIMeshViewer()
; decoder-mode: arm
005469dc  00 30 90 e5                                      ldr r3, [r0]
005469e0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005469e4  03 00 80 e0                                      add r0, r0, r3
005469e8  e4 ff ff ea                                      b #0x546980

; FUNCTION 0x005469ec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIMeshViewer
; alias: _ZTv0_n12_N6glitch3gui14IGUIMeshViewerD0Ev
; demangled: virtual thunk to glitch::gui::IGUIMeshViewer::~IGUIMeshViewer()
; decoder-mode: arm
005469ec  00 30 90 e5                                      ldr r3, [r0]
005469f0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005469f4  03 00 80 e0                                      add r0, r0, r3
005469f8  e0 ff ff ea                                      b #0x546980
