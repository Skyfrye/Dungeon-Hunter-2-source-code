; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0054062c, declared_size=704, range_size=704, mode=arm
; class-group: glitch::gui::IGUIImage
; alias: _ZN6glitch3gui9IGUIImageC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUIImage::IGUIImage(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
0054062c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00540630  ac 42 9f e5                                      ldr r4, [pc, #0x2ac]
00540634  ac e2 9f e5                                      ldr lr, [pc, #0x2ac]
00540638  1c d0 4d e2                                      sub sp, sp, #0x1c
0054063c  04 40 8f e0                                      add r4, pc, r4
00540640  0e e0 94 e7                                      ldr lr, [r4, lr]
00540644  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00540648  00 40 8d e5                                      str r4, [sp]
0054064c  00 40 a0 e1                                      mov r4, r0
00540650  08 00 8e e2                                      add r0, lr, #8
00540654  00 80 9c e5                                      ldr r8, [ip]
00540658  80 40 9c e9                                      ldmib ip, {r7, lr}
0054065c  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00540660  00 00 84 e5                                      str r0, [r4]
00540664  01 50 a0 e1                                      mov r5, r1
00540668  04 10 91 e5                                      ldr r1, [r1, #4]
0054066c  04 00 85 e2                                      add r0, r5, #4
00540670  00 60 a0 e3                                      mov r6, #0
00540674  00 10 84 e5                                      str r1, [r4]
00540678  0c b0 11 e5                                      ldr fp, [r1, #-0xc]
0054067c  04 90 90 e5                                      ldr sb, [r0, #4]
00540680  00 c0 a0 e3                                      mov ip, #0
00540684  01 10 a0 e3                                      mov r1, #1
00540688  0b 90 84 e7                                      str sb, [r4, fp]
0054068c  08 00 90 e5                                      ldr r0, [r0, #8]
00540690  00 b0 94 e5                                      ldr fp, [r4]
00540694  a0 90 84 e2                                      add sb, r4, #0xa0
00540698  14 00 8d e5                                      str r0, [sp, #0x14]
0054069c  10 b0 1b e5                                      ldr fp, [fp, #-0x10]
005406a0  0c 00 84 e2                                      add r0, r4, #0xc
005406a4  04 00 8d e5                                      str r0, [sp, #4]
005406a8  10 b0 8d e5                                      str fp, [sp, #0x10]
005406ac  04 b0 84 e2                                      add fp, r4, #4
005406b0  0c b0 8d e5                                      str fp, [sp, #0xc]
005406b4  14 00 9d e5                                      ldr r0, [sp, #0x14]
005406b8  10 b0 9d e5                                      ldr fp, [sp, #0x10]
005406bc  0b 00 84 e7                                      str r0, [r4, fp]
005406c0  0c b0 9d e5                                      ldr fp, [sp, #0xc]
005406c4  08 b0 84 e5                                      str fp, [r4, #8]
005406c8  04 00 9d e5                                      ldr r0, [sp, #4]
005406cc  30 e0 84 e5                                      str lr, [r4, #0x30]
005406d0  28 80 84 e5                                      str r8, [r4, #0x28]
005406d4  20 00 84 e5                                      str r0, [r4, #0x20]
005406d8  1c 00 84 e5                                      str r0, [r4, #0x1c]
005406dc  2c 70 84 e5                                      str r7, [r4, #0x2c]
005406e0  09 00 a0 e1                                      mov r0, sb
005406e4  04 b0 84 e5                                      str fp, [r4, #4]
005406e8  34 a0 84 e5                                      str sl, [r4, #0x34]
005406ec  38 80 84 e5                                      str r8, [r4, #0x38]
005406f0  3c 70 84 e5                                      str r7, [r4, #0x3c]
005406f4  40 e0 84 e5                                      str lr, [r4, #0x40]
005406f8  48 80 84 e5                                      str r8, [r4, #0x48]
005406fc  4c 70 84 e5                                      str r7, [r4, #0x4c]
00540700  50 e0 84 e5                                      str lr, [r4, #0x50]
00540704  58 80 84 e5                                      str r8, [r4, #0x58]
00540708  5c 70 84 e5                                      str r7, [r4, #0x5c]
0054070c  60 e0 84 e5                                      str lr, [r4, #0x60]
00540710  84 c0 84 e5                                      str ip, [r4, #0x84]
00540714  99 10 c4 e5                                      strb r1, [r4, #0x99]
00540718  78 c0 84 e5                                      str ip, [r4, #0x78]
0054071c  7c c0 84 e5                                      str ip, [r4, #0x7c]
00540720  80 c0 84 e5                                      str ip, [r4, #0x80]
00540724  90 10 84 e5                                      str r1, [r4, #0x90]
00540728  94 10 84 e5                                      str r1, [r4, #0x94]
0054072c  98 10 c4 e5                                      strb r1, [r4, #0x98]
00540730  44 a0 84 e5                                      str sl, [r4, #0x44]
00540734  0c 60 c4 e5                                      strb r6, [r4, #0xc]
00540738  24 60 84 e5                                      str r6, [r4, #0x24]
0054073c  64 a0 84 e5                                      str sl, [r4, #0x64]
00540740  54 a0 84 e5                                      str sl, [r4, #0x54]
00540744  68 60 84 e5                                      str r6, [r4, #0x68]
00540748  6c 60 84 e5                                      str r6, [r4, #0x6c]
0054074c  70 60 84 e5                                      str r6, [r4, #0x70]
00540750  74 60 84 e5                                      str r6, [r4, #0x74]
00540754  88 60 84 e5                                      str r6, [r4, #0x88]
00540758  8c 60 84 e5                                      str r6, [r4, #0x8c]
0054075c  9a 60 c4 e5                                      strb r6, [r4, #0x9a]
00540760  9b 60 c4 e5                                      strb r6, [r4, #0x9b]
00540764  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
00540768  e0 90 84 e5                                      str sb, [r4, #0xe0]
0054076c  e4 90 84 e5                                      str sb, [r4, #0xe4]
00540770  02 70 a0 e1                                      mov r7, r2
00540774  03 80 a0 e1                                      mov r8, r3
00540778  aa ff ff eb                                      bl #0x540628
0054077c  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
00540780  e8 30 84 e2                                      add r3, r4, #0xe8
00540784  03 00 a0 e1                                      mov r0, r3
00540788  00 60 82 e5                                      str r6, [r2]
0054078c  28 31 84 e5                                      str r3, [r4, #0x128]
00540790  2c 31 84 e5                                      str r3, [r4, #0x12c]
00540794  a3 ff ff eb                                      bl #0x540628
00540798  28 31 94 e5                                      ldr r3, [r4, #0x128]
0054079c  06 00 58 e1                                      cmp r8, r6
005407a0  00 60 83 e5                                      str r6, [r3]
005407a4  40 30 9d e5                                      ldr r3, [sp, #0x40]
005407a8  4c 61 84 e5                                      str r6, [r4, #0x14c]
005407ac  50 71 84 e5                                      str r7, [r4, #0x150]
005407b0  30 31 84 e5                                      str r3, [r4, #0x130]
005407b4  00 30 e0 e3                                      mvn r3, #0
005407b8  38 31 84 e5                                      str r3, [r4, #0x138]
005407bc  09 30 a0 e3                                      mov r3, #9
005407c0  54 31 84 e5                                      str r3, [r4, #0x154]
005407c4  34 61 c4 e5                                      strb r6, [r4, #0x134]
005407c8  3c 61 c4 e5                                      strb r6, [r4, #0x13c]
005407cc  40 61 84 e5                                      str r6, [r4, #0x140]
005407d0  44 61 84 e5                                      str r6, [r4, #0x144]
005407d4  48 61 84 e5                                      str r6, [r4, #0x148]
005407d8  04 00 00 0a                                      beq #0x5407f0
005407dc  08 00 a0 e1                                      mov r0, r8
005407e0  00 30 98 e5                                      ldr r3, [r8]
005407e4  04 10 a0 e1                                      mov r1, r4
005407e8  0f e0 a0 e1                                      mov lr, pc
005407ec  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005407f0  24 30 94 e5                                      ldr r3, [r4, #0x24]
005407f4  00 00 53 e3                                      cmp r3, #0
005407f8  2d 00 00 0a                                      beq #0x5408b4
005407fc  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00540800  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00540804  38 70 94 e5                                      ldr r7, [r4, #0x38]
00540808  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
0054080c  40 10 94 e5                                      ldr r1, [r4, #0x40]
00540810  44 20 94 e5                                      ldr r2, [r4, #0x44]
00540814  40 a0 93 e5                                      ldr sl, [r3, #0x40]
00540818  44 80 93 e5                                      ldr r8, [r3, #0x44]
0054081c  02 20 80 e0                                      add r2, r0, r2
00540820  01 10 8c e0                                      add r1, ip, r1
00540824  06 60 80 e0                                      add r6, r0, r6
00540828  07 70 8c e0                                      add r7, ip, r7
0054082c  4c 60 84 e5                                      str r6, [r4, #0x4c]
00540830  54 20 84 e5                                      str r2, [r4, #0x54]
00540834  48 70 84 e5                                      str r7, [r4, #0x48]
00540838  50 10 84 e5                                      str r1, [r4, #0x50]
0054083c  44 20 84 e5                                      str r2, [r4, #0x44]
00540840  70 a0 84 e5                                      str sl, [r4, #0x70]
00540844  74 80 84 e5                                      str r8, [r4, #0x74]
00540848  68 c0 84 e5                                      str ip, [r4, #0x68]
0054084c  6c 00 84 e5                                      str r0, [r4, #0x6c]
00540850  38 70 84 e5                                      str r7, [r4, #0x38]
00540854  3c 60 84 e5                                      str r6, [r4, #0x3c]
00540858  40 10 84 e5                                      str r1, [r4, #0x40]
0054085c  50 00 93 e5                                      ldr r0, [r3, #0x50]
00540860  00 00 51 e1                                      cmp r1, r0
00540864  50 00 84 c5                                      strgt r0, [r4, #0x50]
00540868  54 10 93 e5                                      ldr r1, [r3, #0x54]
0054086c  01 00 52 e1                                      cmp r2, r1
00540870  54 10 84 c5                                      strgt r1, [r4, #0x54]
00540874  48 10 93 e5                                      ldr r1, [r3, #0x48]
00540878  48 20 94 e5                                      ldr r2, [r4, #0x48]
0054087c  02 00 51 e1                                      cmp r1, r2
00540880  48 10 84 c5                                      strgt r1, [r4, #0x48]
00540884  01 20 a0 c1                                      movgt r2, r1
00540888  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
0054088c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00540890  03 00 51 e1                                      cmp r1, r3
00540894  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
00540898  01 30 a0 c1                                      movgt r3, r1
0054089c  54 10 94 e5                                      ldr r1, [r4, #0x54]
005408a0  03 00 51 e1                                      cmp r1, r3
005408a4  50 30 94 e5                                      ldr r3, [r4, #0x50]
005408a8  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
005408ac  03 00 52 e1                                      cmp r2, r3
005408b0  48 30 84 c5                                      strgt r3, [r4, #0x48]
005408b4  00 30 95 e5                                      ldr r3, [r5]
005408b8  04 00 a0 e1                                      mov r0, r4
005408bc  00 30 84 e5                                      str r3, [r4]
005408c0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005408c4  10 20 95 e5                                      ldr r2, [r5, #0x10]
005408c8  03 20 84 e7                                      str r2, [r4, r3]
005408cc  00 30 94 e5                                      ldr r3, [r4]
005408d0  14 20 95 e5                                      ldr r2, [r5, #0x14]
005408d4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
005408d8  03 20 84 e7                                      str r2, [r4, r3]
005408dc  1c d0 8d e2                                      add sp, sp, #0x1c
005408e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005408e4  54 44 45 00 4c 27 00 00                          .byte 0x54, 0x44, 0x45, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x00540a74, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUIImage
; alias: _ZN6glitch3gui9IGUIImageD1Ev
; demangled: glitch::gui::IGUIImage::~IGUIImage()
; decoder-mode: arm
00540a74  40 30 9f e5                                      ldr r3, [pc, #0x40]
00540a78  40 20 9f e5                                      ldr r2, [pc, #0x40]
00540a7c  40 10 9f e5                                      ldr r1, [pc, #0x40]
00540a80  03 30 8f e0                                      add r3, pc, r3
00540a84  02 20 93 e7                                      ldr r2, [r3, r2]
00540a88  01 10 93 e7                                      ldr r1, [r3, r1]
00540a8c  10 40 2d e9                                      push {r4, lr}
00540a90  dc c0 82 e2                                      add ip, r2, #0xdc
00540a94  10 e0 82 e2                                      add lr, r2, #0x10
00540a98  bc 20 82 e2                                      add r2, r2, #0xbc
00540a9c  00 40 a0 e1                                      mov r4, r0
00540aa0  00 e0 80 e5                                      str lr, [r0]
00540aa4  58 21 80 e5                                      str r2, [r0, #0x158]
00540aa8  5c c1 80 e5                                      str ip, [r0, #0x15c]
00540aac  04 10 81 e2                                      add r1, r1, #4
00540ab0  5a e1 ff eb                                      bl #0x539020
00540ab4  04 00 a0 e1                                      mov r0, r4
00540ab8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00540abc  10 40 45 00 00 21 00 00 b8 23 00 00              .byte 0x10, 0x40, 0x45, 0x00, 0x00, 0x21, 0x00, 0x00, 0xb8, 0x23, 0x00, 0x00

; FUNCTION 0x00540ac8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIImage
; alias: _ZTv0_n24_N6glitch3gui9IGUIImageD1Ev
; demangled: virtual thunk to glitch::gui::IGUIImage::~IGUIImage()
; decoder-mode: arm
00540ac8  00 30 90 e5                                      ldr r3, [r0]
00540acc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00540ad0  03 00 80 e0                                      add r0, r0, r3
00540ad4  e6 ff ff ea                                      b #0x540a74

; FUNCTION 0x00540ad8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIImage
; alias: _ZTv0_n12_N6glitch3gui9IGUIImageD1Ev
; demangled: virtual thunk to glitch::gui::IGUIImage::~IGUIImage()
; decoder-mode: arm
00540ad8  00 30 90 e5                                      ldr r3, [r0]
00540adc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00540ae0  03 00 80 e0                                      add r0, r0, r3
00540ae4  e2 ff ff ea                                      b #0x540a74

; FUNCTION 0x00540d24, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUIImage
; alias: _ZN6glitch3gui9IGUIImageD0Ev
; demangled: glitch::gui::IGUIImage::~IGUIImage()
; decoder-mode: arm
00540d24  48 30 9f e5                                      ldr r3, [pc, #0x48]
00540d28  48 20 9f e5                                      ldr r2, [pc, #0x48]
00540d2c  48 10 9f e5                                      ldr r1, [pc, #0x48]
00540d30  03 30 8f e0                                      add r3, pc, r3
00540d34  02 20 93 e7                                      ldr r2, [r3, r2]
00540d38  01 10 93 e7                                      ldr r1, [r3, r1]
00540d3c  10 40 2d e9                                      push {r4, lr}
00540d40  dc c0 82 e2                                      add ip, r2, #0xdc
00540d44  10 e0 82 e2                                      add lr, r2, #0x10
00540d48  bc 20 82 e2                                      add r2, r2, #0xbc
00540d4c  00 40 a0 e1                                      mov r4, r0
00540d50  00 e0 80 e5                                      str lr, [r0]
00540d54  58 21 80 e5                                      str r2, [r0, #0x158]
00540d58  5c c1 80 e5                                      str ip, [r0, #0x15c]
00540d5c  04 10 81 e2                                      add r1, r1, #4
00540d60  ae e0 ff eb                                      bl #0x539020
00540d64  04 00 a0 e1                                      mov r0, r4
00540d68  50 35 f7 eb                                      bl #0x30e2b0
00540d6c  04 00 a0 e1                                      mov r0, r4
00540d70  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00540d74  60 3d 45 00 00 21 00 00 b8 23 00 00              .byte 0x60, 0x3d, 0x45, 0x00, 0x00, 0x21, 0x00, 0x00, 0xb8, 0x23, 0x00, 0x00

; FUNCTION 0x00540d80, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIImage
; alias: _ZTv0_n24_N6glitch3gui9IGUIImageD0Ev
; demangled: virtual thunk to glitch::gui::IGUIImage::~IGUIImage()
; decoder-mode: arm
00540d80  00 30 90 e5                                      ldr r3, [r0]
00540d84  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00540d88  03 00 80 e0                                      add r0, r0, r3
00540d8c  e4 ff ff ea                                      b #0x540d24

; FUNCTION 0x00540d90, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUIImage
; alias: _ZTv0_n12_N6glitch3gui9IGUIImageD0Ev
; demangled: virtual thunk to glitch::gui::IGUIImage::~IGUIImage()
; decoder-mode: arm
00540d90  00 30 90 e5                                      ldr r3, [r0]
00540d94  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00540d98  03 00 80 e0                                      add r0, r0, r3
00540d9c  e0 ff ff ea                                      b #0x540d24
