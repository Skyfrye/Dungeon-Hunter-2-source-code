; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00556134, declared_size=712, range_size=712, mode=arm
; class-group: glitch::gui::IGUITable
; alias: _ZN6glitch3gui9IGUITableC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::IGUITable::IGUITable(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00556134  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00556138  b4 e2 9f e5                                      ldr lr, [pc, #0x2b4]
0055613c  b4 52 9f e5                                      ldr r5, [pc, #0x2b4]
00556140  14 d0 4d e2                                      sub sp, sp, #0x14
00556144  0e e0 8f e0                                      add lr, pc, lr
00556148  05 50 9e e7                                      ldr r5, [lr, r5]
0055614c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00556150  00 40 a0 e1                                      mov r4, r0
00556154  08 00 85 e2                                      add r0, r5, #8
00556158  0c 60 9c e5                                      ldr r6, [ip, #0xc]
0055615c  00 a0 9c e5                                      ldr sl, [ip]
00556160  04 80 9c e5                                      ldr r8, [ip, #4]
00556164  08 70 9c e5                                      ldr r7, [ip, #8]
00556168  00 00 84 e5                                      str r0, [r4]
0055616c  04 00 91 e5                                      ldr r0, [r1, #4]
00556170  04 c0 81 e2                                      add ip, r1, #4
00556174  01 50 a0 e1                                      mov r5, r1
00556178  00 00 84 e5                                      str r0, [r4]
0055617c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00556180  0c 10 84 e2                                      add r1, r4, #0xc
00556184  0c 00 8d e5                                      str r0, [sp, #0xc]
00556188  04 00 84 e2                                      add r0, r4, #4
0055618c  04 00 8d e5                                      str r0, [sp, #4]
00556190  04 b0 9c e5                                      ldr fp, [ip, #4]
00556194  0c 90 9d e5                                      ldr sb, [sp, #0xc]
00556198  01 00 a0 e1                                      mov r0, r1
0055619c  09 b0 84 e7                                      str fp, [r4, sb]
005561a0  00 90 94 e5                                      ldr sb, [r4]
005561a4  08 c0 9c e5                                      ldr ip, [ip, #8]
005561a8  0c 20 8d e5                                      str r2, [sp, #0xc]
005561ac  10 20 19 e5                                      ldr r2, [sb, #-0x10]
005561b0  03 90 a0 e1                                      mov sb, r3
005561b4  00 b0 a0 e3                                      mov fp, #0
005561b8  02 c0 84 e7                                      str ip, [r4, r2]
005561bc  04 c0 9d e5                                      ldr ip, [sp, #4]
005561c0  1c 10 84 e5                                      str r1, [r4, #0x1c]
005561c4  20 10 84 e5                                      str r1, [r4, #0x20]
005561c8  08 c0 84 e5                                      str ip, [r4, #8]
005561cc  04 c0 84 e5                                      str ip, [r4, #4]
005561d0  d6 ff ff eb                                      bl #0x556130
005561d4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005561d8  01 20 a0 e3                                      mov r2, #1
005561dc  00 10 a0 e3                                      mov r1, #0
005561e0  a0 30 84 e2                                      add r3, r4, #0xa0
005561e4  00 b0 c0 e5                                      strb fp, [r0]
005561e8  99 20 c4 e5                                      strb r2, [r4, #0x99]
005561ec  90 20 84 e5                                      str r2, [r4, #0x90]
005561f0  94 20 84 e5                                      str r2, [r4, #0x94]
005561f4  98 20 c4 e5                                      strb r2, [r4, #0x98]
005561f8  03 00 a0 e1                                      mov r0, r3
005561fc  84 10 84 e5                                      str r1, [r4, #0x84]
00556200  78 10 84 e5                                      str r1, [r4, #0x78]
00556204  7c 10 84 e5                                      str r1, [r4, #0x7c]
00556208  80 10 84 e5                                      str r1, [r4, #0x80]
0055620c  58 a0 84 e5                                      str sl, [r4, #0x58]
00556210  10 10 a0 e3                                      mov r1, #0x10
00556214  5c 80 84 e5                                      str r8, [r4, #0x5c]
00556218  60 70 84 e5                                      str r7, [r4, #0x60]
0055621c  64 60 84 e5                                      str r6, [r4, #0x64]
00556220  24 b0 84 e5                                      str fp, [r4, #0x24]
00556224  28 a0 84 e5                                      str sl, [r4, #0x28]
00556228  2c 80 84 e5                                      str r8, [r4, #0x2c]
0055622c  30 70 84 e5                                      str r7, [r4, #0x30]
00556230  34 60 84 e5                                      str r6, [r4, #0x34]
00556234  38 a0 84 e5                                      str sl, [r4, #0x38]
00556238  3c 80 84 e5                                      str r8, [r4, #0x3c]
0055623c  40 70 84 e5                                      str r7, [r4, #0x40]
00556240  44 60 84 e5                                      str r6, [r4, #0x44]
00556244  48 a0 84 e5                                      str sl, [r4, #0x48]
00556248  4c 80 84 e5                                      str r8, [r4, #0x4c]
0055624c  50 70 84 e5                                      str r7, [r4, #0x50]
00556250  54 60 84 e5                                      str r6, [r4, #0x54]
00556254  68 b0 84 e5                                      str fp, [r4, #0x68]
00556258  6c b0 84 e5                                      str fp, [r4, #0x6c]
0055625c  70 b0 84 e5                                      str fp, [r4, #0x70]
00556260  74 b0 84 e5                                      str fp, [r4, #0x74]
00556264  88 b0 84 e5                                      str fp, [r4, #0x88]
00556268  8c b0 84 e5                                      str fp, [r4, #0x8c]
0055626c  9a b0 c4 e5                                      strb fp, [r4, #0x9a]
00556270  e0 30 84 e5                                      str r3, [r4, #0xe0]
00556274  e4 30 84 e5                                      str r3, [r4, #0xe4]
00556278  9b b0 c4 e5                                      strb fp, [r4, #0x9b]
0055627c  9c b0 c4 e5                                      strb fp, [r4, #0x9c]
00556280  a6 29 f7 eb                                      bl #0x320920
00556284  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
00556288  e8 30 84 e2                                      add r3, r4, #0xe8
0055628c  03 00 a0 e1                                      mov r0, r3
00556290  00 b0 82 e5                                      str fp, [r2]
00556294  10 10 a0 e3                                      mov r1, #0x10
00556298  28 31 84 e5                                      str r3, [r4, #0x128]
0055629c  2c 31 84 e5                                      str r3, [r4, #0x12c]
005562a0  9e 29 f7 eb                                      bl #0x320920
005562a4  28 31 94 e5                                      ldr r3, [r4, #0x128]
005562a8  0b 00 59 e1                                      cmp sb, fp
005562ac  00 b0 83 e5                                      str fp, [r3]
005562b0  38 30 9d e5                                      ldr r3, [sp, #0x38]
005562b4  4c b1 84 e5                                      str fp, [r4, #0x14c]
005562b8  30 31 84 e5                                      str r3, [r4, #0x130]
005562bc  00 30 e0 e3                                      mvn r3, #0
005562c0  38 31 84 e5                                      str r3, [r4, #0x138]
005562c4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005562c8  13 30 a0 e3                                      mov r3, #0x13
005562cc  54 31 84 e5                                      str r3, [r4, #0x154]
005562d0  50 01 84 e5                                      str r0, [r4, #0x150]
005562d4  34 b1 c4 e5                                      strb fp, [r4, #0x134]
005562d8  3c b1 c4 e5                                      strb fp, [r4, #0x13c]
005562dc  40 b1 84 e5                                      str fp, [r4, #0x140]
005562e0  44 b1 84 e5                                      str fp, [r4, #0x144]
005562e4  48 b1 84 e5                                      str fp, [r4, #0x148]
005562e8  04 00 00 0a                                      beq #0x556300
005562ec  09 00 a0 e1                                      mov r0, sb
005562f0  00 30 99 e5                                      ldr r3, [sb]
005562f4  04 10 a0 e1                                      mov r1, r4
005562f8  0f e0 a0 e1                                      mov lr, pc
005562fc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00556300  24 30 94 e5                                      ldr r3, [r4, #0x24]
00556304  00 00 53 e3                                      cmp r3, #0
00556308  2d 00 00 0a                                      beq #0x5563c4
0055630c  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00556310  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00556314  38 70 94 e5                                      ldr r7, [r4, #0x38]
00556318  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
0055631c  40 10 94 e5                                      ldr r1, [r4, #0x40]
00556320  44 20 94 e5                                      ldr r2, [r4, #0x44]
00556324  40 a0 93 e5                                      ldr sl, [r3, #0x40]
00556328  44 80 93 e5                                      ldr r8, [r3, #0x44]
0055632c  02 20 80 e0                                      add r2, r0, r2
00556330  01 10 8c e0                                      add r1, ip, r1
00556334  06 60 80 e0                                      add r6, r0, r6
00556338  07 70 8c e0                                      add r7, ip, r7
0055633c  4c 60 84 e5                                      str r6, [r4, #0x4c]
00556340  54 20 84 e5                                      str r2, [r4, #0x54]
00556344  48 70 84 e5                                      str r7, [r4, #0x48]
00556348  50 10 84 e5                                      str r1, [r4, #0x50]
0055634c  44 20 84 e5                                      str r2, [r4, #0x44]
00556350  70 a0 84 e5                                      str sl, [r4, #0x70]
00556354  74 80 84 e5                                      str r8, [r4, #0x74]
00556358  68 c0 84 e5                                      str ip, [r4, #0x68]
0055635c  6c 00 84 e5                                      str r0, [r4, #0x6c]
00556360  38 70 84 e5                                      str r7, [r4, #0x38]
00556364  3c 60 84 e5                                      str r6, [r4, #0x3c]
00556368  40 10 84 e5                                      str r1, [r4, #0x40]
0055636c  50 00 93 e5                                      ldr r0, [r3, #0x50]
00556370  00 00 51 e1                                      cmp r1, r0
00556374  50 00 84 c5                                      strgt r0, [r4, #0x50]
00556378  54 10 93 e5                                      ldr r1, [r3, #0x54]
0055637c  01 00 52 e1                                      cmp r2, r1
00556380  54 10 84 c5                                      strgt r1, [r4, #0x54]
00556384  48 10 93 e5                                      ldr r1, [r3, #0x48]
00556388  48 20 94 e5                                      ldr r2, [r4, #0x48]
0055638c  02 00 51 e1                                      cmp r1, r2
00556390  48 10 84 c5                                      strgt r1, [r4, #0x48]
00556394  01 20 a0 c1                                      movgt r2, r1
00556398  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
0055639c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
005563a0  03 00 51 e1                                      cmp r1, r3
005563a4  4c 10 84 c5                                      strgt r1, [r4, #0x4c]
005563a8  01 30 a0 c1                                      movgt r3, r1
005563ac  54 10 94 e5                                      ldr r1, [r4, #0x54]
005563b0  03 00 51 e1                                      cmp r1, r3
005563b4  50 30 94 e5                                      ldr r3, [r4, #0x50]
005563b8  4c 10 84 b5                                      strlt r1, [r4, #0x4c]
005563bc  03 00 52 e1                                      cmp r2, r3
005563c0  48 30 84 c5                                      strgt r3, [r4, #0x48]
005563c4  00 30 95 e5                                      ldr r3, [r5]
005563c8  04 00 a0 e1                                      mov r0, r4
005563cc  00 30 84 e5                                      str r3, [r4]
005563d0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005563d4  10 20 95 e5                                      ldr r2, [r5, #0x10]
005563d8  03 20 84 e7                                      str r2, [r4, r3]
005563dc  00 30 94 e5                                      ldr r3, [r4]
005563e0  14 20 95 e5                                      ldr r2, [r5, #0x14]
005563e4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
005563e8  03 20 84 e7                                      str r2, [r4, r3]
005563ec  14 d0 8d e2                                      add sp, sp, #0x14
005563f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005563f4  4c e9 43 00 4c 27 00 00                          .byte 0x4c, 0xe9, 0x43, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x00557aa0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::IGUITable
; alias: _ZN6glitch3gui9IGUITableD1Ev
; demangled: glitch::gui::IGUITable::~IGUITable()
; decoder-mode: arm
00557aa0  40 30 9f e5                                      ldr r3, [pc, #0x40]
00557aa4  40 20 9f e5                                      ldr r2, [pc, #0x40]
00557aa8  40 10 9f e5                                      ldr r1, [pc, #0x40]
00557aac  03 30 8f e0                                      add r3, pc, r3
00557ab0  02 20 93 e7                                      ldr r2, [r3, r2]
00557ab4  01 10 93 e7                                      ldr r1, [r3, r1]
00557ab8  10 40 2d e9                                      push {r4, lr}
00557abc  4f cf 82 e2                                      add ip, r2, #0x13c
00557ac0  10 e0 82 e2                                      add lr, r2, #0x10
00557ac4  47 2f 82 e2                                      add r2, r2, #0x11c
00557ac8  00 40 a0 e1                                      mov r4, r0
00557acc  00 e0 80 e5                                      str lr, [r0]
00557ad0  58 21 80 e5                                      str r2, [r0, #0x158]
00557ad4  5c c1 80 e5                                      str ip, [r0, #0x15c]
00557ad8  04 10 81 e2                                      add r1, r1, #4
00557adc  4f 85 ff eb                                      bl #0x539020
00557ae0  04 00 a0 e1                                      mov r0, r4
00557ae4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00557ae8  e4 cf 43 00 c4 3e 00 00 20 32 00 00              .byte 0xe4, 0xcf, 0x43, 0x00, 0xc4, 0x3e, 0x00, 0x00, 0x20, 0x32, 0x00, 0x00

; FUNCTION 0x00557af4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUITable
; alias: _ZTv0_n24_N6glitch3gui9IGUITableD1Ev
; demangled: virtual thunk to glitch::gui::IGUITable::~IGUITable()
; decoder-mode: arm
00557af4  00 30 90 e5                                      ldr r3, [r0]
00557af8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00557afc  03 00 80 e0                                      add r0, r0, r3
00557b00  e6 ff ff ea                                      b #0x557aa0

; FUNCTION 0x00557b04, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUITable
; alias: _ZTv0_n12_N6glitch3gui9IGUITableD1Ev
; demangled: virtual thunk to glitch::gui::IGUITable::~IGUITable()
; decoder-mode: arm
00557b04  00 30 90 e5                                      ldr r3, [r0]
00557b08  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00557b0c  03 00 80 e0                                      add r0, r0, r3
00557b10  e2 ff ff ea                                      b #0x557aa0

; FUNCTION 0x00557b14, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::IGUITable
; alias: _ZN6glitch3gui9IGUITableD0Ev
; demangled: glitch::gui::IGUITable::~IGUITable()
; decoder-mode: arm
00557b14  48 30 9f e5                                      ldr r3, [pc, #0x48]
00557b18  48 20 9f e5                                      ldr r2, [pc, #0x48]
00557b1c  48 10 9f e5                                      ldr r1, [pc, #0x48]
00557b20  03 30 8f e0                                      add r3, pc, r3
00557b24  02 20 93 e7                                      ldr r2, [r3, r2]
00557b28  01 10 93 e7                                      ldr r1, [r3, r1]
00557b2c  10 40 2d e9                                      push {r4, lr}
00557b30  4f cf 82 e2                                      add ip, r2, #0x13c
00557b34  10 e0 82 e2                                      add lr, r2, #0x10
00557b38  47 2f 82 e2                                      add r2, r2, #0x11c
00557b3c  00 40 a0 e1                                      mov r4, r0
00557b40  00 e0 80 e5                                      str lr, [r0]
00557b44  58 21 80 e5                                      str r2, [r0, #0x158]
00557b48  5c c1 80 e5                                      str ip, [r0, #0x15c]
00557b4c  04 10 81 e2                                      add r1, r1, #4
00557b50  32 85 ff eb                                      bl #0x539020
00557b54  04 00 a0 e1                                      mov r0, r4
00557b58  d4 d9 f6 eb                                      bl #0x30e2b0
00557b5c  04 00 a0 e1                                      mov r0, r4
00557b60  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00557b64  70 cf 43 00 c4 3e 00 00 20 32 00 00              .byte 0x70, 0xcf, 0x43, 0x00, 0xc4, 0x3e, 0x00, 0x00, 0x20, 0x32, 0x00, 0x00

; FUNCTION 0x00557b70, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUITable
; alias: _ZTv0_n24_N6glitch3gui9IGUITableD0Ev
; demangled: virtual thunk to glitch::gui::IGUITable::~IGUITable()
; decoder-mode: arm
00557b70  00 30 90 e5                                      ldr r3, [r0]
00557b74  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00557b78  03 00 80 e0                                      add r0, r0, r3
00557b7c  e4 ff ff ea                                      b #0x557b14

; FUNCTION 0x00557b80, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::IGUITable
; alias: _ZTv0_n12_N6glitch3gui9IGUITableD0Ev
; demangled: virtual thunk to glitch::gui::IGUITable::~IGUITable()
; decoder-mode: arm
00557b80  00 30 90 e5                                      ldr r3, [r0]
00557b84  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00557b88  03 00 80 e0                                      add r0, r0, r3
00557b8c  e0 ff ff ea                                      b #0x557b14
