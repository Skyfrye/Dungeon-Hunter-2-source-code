; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005413ec, declared_size=704, range_size=704, mode=arm
; class-group: glitch::gui::IGUIInOutFader
; alias: _ZN6glitch3gui14IGUIInOutFaderC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIInOutFader::IGUIInOutFader(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
005413ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005413f0  ac 42 9f e5                                      ldr r4, [pc, #0x2ac]
005413f4  ac e2 9f e5                                      ldr lr, [pc, #0x2ac]
005413f8  1c d0 4d e2                                      sub sp, sp, #0x1c
005413fc  04 40 8f e0                                      add r4, pc, r4
00541400  0e e0 94 e7                                      ldr lr, [r4, lr]
00541404  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00541408  00 40 8d e5                                      str r4, [sp]
0054140c  00 40 a0 e1                                      mov r4, r0
00541410  08 00 8e e2                                      add r0, lr, #8
00541414  00 80 9c e5                                      ldr r8, [ip]
00541418  80 40 9c e9                                      ldmib ip, {r7, lr}
0054141c  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00541420  00 00 84 e5                                      str r0, [r4]
00541424  01 50 a0 e1                                      mov r5, r1
00541428  04 10 91 e5                                      ldr r1, [r1, #4]
0054142c  04 00 85 e2                                      add r0, r5, #4
00541430  00 60 a0 e3                                      mov r6, #0
00541434  00 10 84 e5                                      str r1, [r4]
00541438  0c b0 11 e5                                      ldr fp, [r1, #-0xc]
0054143c  04 90 90 e5                                      ldr sb, [r0, #4]
00541440  00 c0 a0 e3                                      mov ip, #0
00541444  01 10 a0 e3                                      mov r1, #1
00541448  0b 90 84 e7                                      str sb, [r4, fp]
0054144c  08 00 90 e5                                      ldr r0, [r0, #8]
00541450  00 b0 94 e5                                      ldr fp, [r4]
00541454  a0 90 84 e2                                      add sb, r4, #0xa0
00541458  14 00 8d e5                                      str r0, [sp, #0x14]
0054145c  10 b0 1b e5                                      ldr fp, [fp, #-0x10]
00541460  0c 00 84 e2                                      add r0, r4, #0xc
00541464  04 00 8d e5                                      str r0, [sp, #4]
00541468  10 b0 8d e5                                      str fp, [sp, #0x10]
0054146c  04 b0 84 e2                                      add fp, r4, #4
00541470  0c b0 8d e5                                      str fp, [sp, #0xc]
00541474  14 00 9d e5                                      ldr r0, [sp, #0x14]
00541478  10 b0 9d e5                                      ldr fp, [sp, #0x10]
0054147c  0b 00 84 e7                                      str r0, [r4, fp]
00541480  0c b0 9d e5                                      ldr fp, [sp, #0xc]
00541484  08 b0 84 e5                                      str fp, [r4, #8]
00541488  04 00 9d e5                                      ldr r0, [sp, #4]
0054148c  30 e0 84 e5                                      str lr, [r4, #0x30]
00541490  28 80 84 e5                                      str r8, [r4, #0x28]
00541494  20 00 84 e5                                      str r0, [r4, #0x20]
00541498  1c 00 84 e5                                      str r0, [r4, #0x1c]
0054149c  2c 70 84 e5                                      str r7, [r4, #0x2c]
005414a0  09 00 a0 e1                                      mov r0, sb
005414a4  04 b0 84 e5                                      str fp, [r4, #4]
005414a8  34 a0 84 e5                                      str sl, [r4, #0x34]
005414ac  38 80 84 e5                                      str r8, [r4, #0x38]
005414b0  3c 70 84 e5                                      str r7, [r4, #0x3c]
005414b4  40 e0 84 e5                                      str lr, [r4, #0x40]
005414b8  48 80 84 e5                                      str r8, [r4, #0x48]
005414bc  4c 70 84 e5                                      str r7, [r4, #0x4c]
005414c0  50 e0 84 e5                                      str lr, [r4, #0x50]
005414c4  58 80 84 e5                                      str r8, [r4, #0x58]
005414c8  5c 70 84 e5                                      str r7, [r4, #0x5c]
005414cc  60 e0 84 e5                                      str lr, [r4, #0x60]
005414d0  84 c0 84 e5                                      str ip, [r4, #0x84]
005414d4  99 10 c4 e5                                      strb r1, [r4, #0x99]
005414d8  78 c0 84 e5                                      str ip, [r4, #0x78]
005414dc  7c c0 84 e5                                      str ip, [r4, #0x7c]
005414e0  80 c0 84 e5                                      str ip, [r4, #0x80]
005414e4  90 10 84 e5                                      str r1, [r4, #0x90]
005414e8  94 10 84 e5                                      str r1, [r4, #0x94]
005414ec  98 10 c4 e5                                      strb r1, [r4, #0x98]
005414f0  44 a0 84 e5                                      str sl, [r4, #0x44]
005414f4  0c 60 c4 e5                                      strb r6, [r4, #0xc]
005414f8  24 60 84 e5                                      str r6, [r4, #0x24]
005414fc  64 a0 84 e5                                      str sl, [r4, #0x64]
00541500  54 a0 84 e5                                      str sl, [r4, #0x54]
00541504  68 60 84 e5                                      str r6, [r4, #0x68]
00541508  6c 60 84 e5                                      str r6, [r4, #0x6c]
0054150c  70 60 84 e5                                      str r6, [r4, #0x70]
00541510  74 60 84 e5                                      str r6, [r4, #0x74]
00541514  88 60 84 e5                                      str r6, [r4, #0x88]
00541518  8c 60 84 e5                                      str r6, [r4, #0x8c]
0054151c  9a 60 c4 e5                                      strb r6, [r4, #0x9a]
00541520  9b 60 c4 e5                                      strb r6, [r4, #0x9b]
00541524  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
00541528  e0 90 84 e5                                      str sb, [r4, #0xe0]
0054152c  e4 90 84 e5                                      str sb, [r4, #0xe4]
00541530  02 70 a0 e1                                      mov r7, r2
00541534  03 80 a0 e1                                      mov r8, r3
00541538  aa ff ff eb                                      bl #0x5413e8
0054153c  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
00541540  e8 30 84 e2                                      add r3, r4, #0xe8
00541544  03 00 a0 e1                                      mov r0, r3
00541548  00 60 82 e5                                      str r6, [r2]
0054154c  28 31 84 e5                                      str r3, [r4, #0x128]
00541550  2c 31 84 e5                                      str r3, [r4, #0x12c]
00541554  a3 ff ff eb                                      bl #0x5413e8
00541558  28 31 94 e5                                      ldr r3, [r4, #0x128]
0054155c  06 00 58 e1                                      cmp r8, r6
00541560  00 60 83 e5                                      str r6, [r3]
00541564  40 30 9d e5                                      ldr r3, [sp, #0x40]
00541568  4c 61 84 e5                                      str r6, [r4, #0x14c]
0054156c  50 71 84 e5                                      str r7, [r4, #0x150]
00541570  30 31 84 e5                                      str r3, [r4, #0x130]
00541574  00 30 e0 e3                                      mvn r3, #0
00541578  38 31 84 e5                                      str r3, [r4, #0x138]
0054157c  08 30 a0 e3                                      mov r3, #8
00541580  54 31 84 e5                                      str r3, [r4, #0x154]
00541584  34 61 c4 e5                                      strb r6, [r4, #0x134]
00541588  3c 61 c4 e5                                      strb r6, [r4, #0x13c]
0054158c  40 61 84 e5                                      str r6, [r4, #0x140]
00541590  44 61 84 e5                                      str r6, [r4, #0x144]
00541594  48 61 84 e5                                      str r6, [r4, #0x148]
00541598  04 00 00 0a                                      beq #0x5415b0
0054159c  08 00 a0 e1                                      mov r0, r8
005415a0  00 30 98 e5                                      ldr r3, [r8]
005415a4  04 10 a0 e1                                      mov r1, r4
005415a8  0f e0 a0 e1                                      mov lr, pc
005415ac  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005415b0  24 30 94 e5                                      ldr r3, [r4, #0x24]
005415b4  00 00 53 e3                                      cmp r3, #0
005415b8  2d 00 00 0a                                      beq #0x541674
005415bc  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
005415c0  38 c0 93 e5                                      ldr ip, [r3, #0x38]
005415c4  38 70 94 e5                                      ldr r7, [r4, #0x38]
005415c8  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
005415cc  40 10 94 e5                                      ldr r1, [r4, #0x40]
005415d0  44 20 94 e5                                      ldr r2, [r4, #0x44]
005415d4  40 a0 93 e5                                      ldr sl, [r3, #0x40]
005415d8  44 80 93 e5                                      ldr r8, [r3, #0x44]
005415dc  02 20 80 e0                                      add r2, r0, r2
005415e0  01 10 8c e0                                      add r1, ip, r1
005415e4  06 60 80 e0                                      add r6, r0, r6
005415e8  07 70 8c e0                                      add r7, ip, r7
005415ec  4c 60 84 e5                                      str r6, [r4, #0x4c]
005415f0  54 20 84 e5                                      str r2, [r4, #0x54]
005415f4  48 70 84 e5                                      str r7, [r4, #0x48]
005415f8  50 10 84 e5                                      str r1, [r4, #0x50]
005415fc  44 20 84 e5                                      str r2, [r4, #0x44]
00541600  70 a0 84 e5                                      str sl, [r4, #0x70]
00541604  74 80 84 e5                                      str r8, [r4, #0x74]
00541608  68 c0 84 e5                                      str ip, [r4, #0x68]
0054160c  6c 00 84 e5                                      str r0, [r4, #0x6c]
00541610  38 70 84 e5                                      str r7, [r4, #0x38]
00541614  3c 60 84 e5                                      str r6, [r4, #0x3c]
00541618  40 10 84 e5                                      str r1, [r4, #0x40]
0054161c  50 00 93 e5                                      ldr r0, [r3, #0x50]
00541620  00 00 51 e1                                      cmp r1, r0
00541624  50 00 84 c5                                      strgt r0, [r4, #0x50]
00541628  54 10 93 e5                                      ldr r1, [r3, #0x54]
0054162c  01 00 52 e1                                      cmp r2, r1
00541630  54 10 84 c5                                      strgt r1, [r4, #0x54]
00541634  48 10 93 e5                                      ldr r1, [r3, #0x48]
00541638  48 20 94 e5                                      ldr r2, [r4, #0x48]
0054163c  02 00 51 e1                                      cmp r1, r2
00541640  48 10 84 c5                                      strgt r1, [r4, #0x48]
00541644  01 20 a0 c1                                      movgt r2, r1
00541648  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
0054164c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00541650  03 00 51 e1                                      cmp r1, r3
00541654  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
00541658  01 30 a0 c1                                      movgt r3, r1
0054165c  54 10 94 e5                                      ldr r1, [r4, #0x54]
00541660  03 00 51 e1                                      cmp r1, r3
00541664  50 30 94 e5                                      ldr r3, [r4, #0x50]
00541668  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
0054166c  03 00 52 e1                                      cmp r2, r3
00541670  48 30 84 c5                                      strgt r3, [r4, #0x48]
00541674  00 30 95 e5                                      ldr r3, [r5]
00541678  04 00 a0 e1                                      mov r0, r4
0054167c  00 30 84 e5                                      str r3, [r4]
00541680  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00541684  10 20 95 e5                                      ldr r2, [r5, #0x10]
00541688  03 20 84 e7                                      str r2, [r4, r3]
0054168c  00 30 94 e5                                      ldr r3, [r4]
00541690  14 20 95 e5                                      ldr r2, [r5, #0x14]
00541694  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00541698  03 20 84 e7                                      str r2, [r4, r3]
0054169c  1c d0 8d e2                                      add sp, sp, #0x1c
005416a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005416a4  94 36 45 00 4c 27 00 00                          .byte 0x94, 0x36, 0x45, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x00541844, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUIInOutFader
; alias: _ZN6glitch3gui14IGUIInOutFaderD1Ev
; demangled: glitch::gui::IGUIInOutFader::~IGUIInOutFader()
; decoder-mode: arm
00541844  40 30 9f e5                                      ldr r3, [pc, #0x40]
00541848  40 20 9f e5                                      ldr r2, [pc, #0x40]
0054184c  40 10 9f e5                                      ldr r1, [pc, #0x40]
00541850  03 30 8f e0                                      add r3, pc, r3
00541854  02 20 93 e7                                      ldr r2, [r3, r2]
00541858  01 10 93 e7                                      ldr r1, [r3, r1]
0054185c  10 40 2d e9                                      push {r4, lr}
00541860  dc c0 82 e2                                      add ip, r2, #0xdc
00541864  10 e0 82 e2                                      add lr, r2, #0x10
00541868  bc 20 82 e2                                      add r2, r2, #0xbc
0054186c  00 40 a0 e1                                      mov r4, r0
00541870  00 e0 80 e5                                      str lr, [r0]
00541874  58 21 80 e5                                      str r2, [r0, #0x158]
00541878  5c c1 80 e5                                      str ip, [r0, #0x15c]
0054187c  04 10 81 e2                                      add r1, r1, #4
00541880  e6 dd ff eb                                      bl #0x539020
00541884  04 00 a0 e1                                      mov r0, r4
00541888  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0054188c  40 32 45 00 f4 24 00 00 40 21 00 00              .byte 0x40, 0x32, 0x45, 0x00, 0xf4, 0x24, 0x00, 0x00, 0x40, 0x21, 0x00, 0x00

; FUNCTION 0x00541898, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIInOutFader
; alias: _ZTv0_n24_N6glitch3gui14IGUIInOutFaderD1Ev
; demangled: virtual thunk to glitch::gui::IGUIInOutFader::~IGUIInOutFader()
; decoder-mode: arm
00541898  00 30 90 e5                                      ldr r3, [r0]
0054189c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005418a0  03 00 80 e0                                      add r0, r0, r3
005418a4  e6 ff ff ea                                      b #0x541844

; FUNCTION 0x005418a8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIInOutFader
; alias: _ZTv0_n12_N6glitch3gui14IGUIInOutFaderD1Ev
; demangled: virtual thunk to glitch::gui::IGUIInOutFader::~IGUIInOutFader()
; decoder-mode: arm
005418a8  00 30 90 e5                                      ldr r3, [r0]
005418ac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005418b0  03 00 80 e0                                      add r0, r0, r3
005418b4  e2 ff ff ea                                      b #0x541844

; FUNCTION 0x00541a08, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUIInOutFader
; alias: _ZN6glitch3gui14IGUIInOutFaderD0Ev
; demangled: glitch::gui::IGUIInOutFader::~IGUIInOutFader()
; decoder-mode: arm
00541a08  48 30 9f e5                                      ldr r3, [pc, #0x48]
00541a0c  48 20 9f e5                                      ldr r2, [pc, #0x48]
00541a10  48 10 9f e5                                      ldr r1, [pc, #0x48]
00541a14  03 30 8f e0                                      add r3, pc, r3
00541a18  02 20 93 e7                                      ldr r2, [r3, r2]
00541a1c  01 10 93 e7                                      ldr r1, [r3, r1]
00541a20  10 40 2d e9                                      push {r4, lr}
00541a24  dc c0 82 e2                                      add ip, r2, #0xdc
00541a28  10 e0 82 e2                                      add lr, r2, #0x10
00541a2c  bc 20 82 e2                                      add r2, r2, #0xbc
00541a30  00 40 a0 e1                                      mov r4, r0
00541a34  00 e0 80 e5                                      str lr, [r0]
00541a38  58 21 80 e5                                      str r2, [r0, #0x158]
00541a3c  5c c1 80 e5                                      str ip, [r0, #0x15c]
00541a40  04 10 81 e2                                      add r1, r1, #4
00541a44  75 dd ff eb                                      bl #0x539020
00541a48  04 00 a0 e1                                      mov r0, r4
00541a4c  17 32 f7 eb                                      bl #0x30e2b0
00541a50  04 00 a0 e1                                      mov r0, r4
00541a54  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00541a58  7c 30 45 00 f4 24 00 00 40 21 00 00              .byte 0x7c, 0x30, 0x45, 0x00, 0xf4, 0x24, 0x00, 0x00, 0x40, 0x21, 0x00, 0x00

; FUNCTION 0x00541a64, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIInOutFader
; alias: _ZTv0_n24_N6glitch3gui14IGUIInOutFaderD0Ev
; demangled: virtual thunk to glitch::gui::IGUIInOutFader::~IGUIInOutFader()
; decoder-mode: arm
00541a64  00 30 90 e5                                      ldr r3, [r0]
00541a68  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00541a6c  03 00 80 e0                                      add r0, r0, r3
00541a70  e4 ff ff ea                                      b #0x541a08

; FUNCTION 0x00541a74, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIInOutFader
; alias: _ZTv0_n12_N6glitch3gui14IGUIInOutFaderD0Ev
; demangled: virtual thunk to glitch::gui::IGUIInOutFader::~IGUIInOutFader()
; decoder-mode: arm
00541a74  00 30 90 e5                                      ldr r3, [r0]
00541a78  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00541a7c  03 00 80 e0                                      add r0, r0, r3
00541a80  e0 ff ff ea                                      b #0x541a08
