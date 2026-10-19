; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039ff58, declared_size=440, range_size=440, mode=arm
; class-group: Container::NetStructContainer
; alias: _ZN9Container18NetStructContainerC1Ev
; demangled: Container::NetStructContainer::NetStructContainer()
; decoder-mode: arm
0039ff58  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0039ff5c  90 51 9f e5                                      ldr r5, [pc, #0x190]
0039ff60  00 40 a0 e1                                      mov r4, r0
0039ff64  62 ce 11 eb                                      bl #0x8138f4
0039ff68  88 31 9f e5                                      ldr r3, [pc, #0x188]
0039ff6c  88 61 9f e5                                      ldr r6, [pc, #0x188]
0039ff70  05 50 8f e0                                      add r5, pc, r5
0039ff74  03 30 95 e7                                      ldr r3, [r5, r3]
0039ff78  50 21 94 e5                                      ldr r2, [r4, #0x150]
0039ff7c  06 00 95 e7                                      ldr r0, [r5, r6]
0039ff80  08 30 83 e2                                      add r3, r3, #8
0039ff84  00 80 a0 e3                                      mov r8, #0
0039ff88  00 90 a0 e3                                      mov sb, #0
0039ff8c  4e cf a0 e3                                      mov ip, #0x138
0039ff90  fc 80 84 e1                                      strd r8, sb, [r4, ip]
0039ff94  00 00 52 e3                                      cmp r2, #0
0039ff98  00 10 e0 e3                                      mvn r1, #0
0039ff9c  00 20 a0 e3                                      mov r2, #0
0039ffa0  08 00 80 e2                                      add r0, r0, #8
0039ffa4  00 30 84 e5                                      str r3, [r4]
0039ffa8  01 30 a0 e3                                      mov r3, #1
0039ffac  34 31 84 e5                                      str r3, [r4, #0x134]
0039ffb0  44 11 84 e5                                      str r1, [r4, #0x144]
0039ffb4  30 01 84 e5                                      str r0, [r4, #0x130]
0039ffb8  40 11 84 e5                                      str r1, [r4, #0x140]
0039ffbc  48 21 84 e5                                      str r2, [r4, #0x148]
0039ffc0  4c 21 c4 e5                                      strb r2, [r4, #0x14c]
0039ffc4  13 8e 84 02                                      addeq r8, r4, #0x130
0039ffc8  03 00 00 0a                                      beq #0x39ffdc
0039ffcc  13 8e 84 e2                                      add r8, r4, #0x130
0039ffd0  50 21 84 e5                                      str r2, [r4, #0x150]
0039ffd4  08 00 a0 e1                                      mov r0, r8
0039ffd8  e9 d3 11 eb                                      bl #0x814f84
0039ffdc  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
0039ffe0  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0039ffe4  78 11 94 e5                                      ldr r1, [r4, #0x178]
0039ffe8  02 20 95 e7                                      ldr r2, [r5, r2]
0039ffec  03 30 95 e7                                      ldr r3, [r5, r3]
0039fff0  00 a0 a0 e3                                      mov sl, #0
0039fff4  08 20 82 e2                                      add r2, r2, #8
0039fff8  00 b0 a0 e3                                      mov fp, #0
0039fffc  16 ce a0 e3                                      mov ip, #0x160
003a0000  fc a0 84 e1                                      strd sl, fp, [r4, ip]
003a0004  00 00 51 e3                                      cmp r1, #0
003a0008  00 00 e0 e3                                      mvn r0, #0
003a000c  00 10 a0 e3                                      mov r1, #0
003a0010  08 30 83 e2                                      add r3, r3, #8
003a0014  30 21 84 e5                                      str r2, [r4, #0x130]
003a0018  10 20 a0 e3                                      mov r2, #0x10
003a001c  5c 21 84 e5                                      str r2, [r4, #0x15c]
003a0020  6c 01 84 e5                                      str r0, [r4, #0x16c]
003a0024  58 31 84 e5                                      str r3, [r4, #0x158]
003a0028  68 01 84 e5                                      str r0, [r4, #0x168]
003a002c  70 11 84 e5                                      str r1, [r4, #0x170]
003a0030  74 11 c4 e5                                      strb r1, [r4, #0x174]
003a0034  56 7f 84 02                                      addeq r7, r4, #0x158
003a0038  03 00 00 0a                                      beq #0x3a004c
003a003c  56 7f 84 e2                                      add r7, r4, #0x158
003a0040  78 11 84 e5                                      str r1, [r4, #0x178]
003a0044  07 00 a0 e1                                      mov r0, r7
003a0048  cd d3 11 eb                                      bl #0x814f84
003a004c  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
003a0050  a0 21 94 e5                                      ldr r2, [r4, #0x1a0]
003a0054  06 00 95 e7                                      ldr r0, [r5, r6]
003a0058  03 30 95 e7                                      ldr r3, [r5, r3]
003a005c  00 a0 a0 e3                                      mov sl, #0
003a0060  00 b0 a0 e3                                      mov fp, #0
003a0064  08 30 83 e2                                      add r3, r3, #8
003a0068  62 cf a0 e3                                      mov ip, #0x188
003a006c  fc a0 84 e1                                      strd sl, fp, [r4, ip]
003a0070  00 00 52 e3                                      cmp r2, #0
003a0074  00 10 e0 e3                                      mvn r1, #0
003a0078  00 20 a0 e3                                      mov r2, #0
003a007c  08 00 80 e2                                      add r0, r0, #8
003a0080  58 31 84 e5                                      str r3, [r4, #0x158]
003a0084  20 30 a0 e3                                      mov r3, #0x20
003a0088  84 31 84 e5                                      str r3, [r4, #0x184]
003a008c  94 11 84 e5                                      str r1, [r4, #0x194]
003a0090  80 01 84 e5                                      str r0, [r4, #0x180]
003a0094  90 11 84 e5                                      str r1, [r4, #0x190]
003a0098  98 21 84 e5                                      str r2, [r4, #0x198]
003a009c  9c 21 c4 e5                                      strb r2, [r4, #0x19c]
003a00a0  06 6d 84 02                                      addeq r6, r4, #0x180
003a00a4  03 00 00 0a                                      beq #0x3a00b8
003a00a8  06 6d 84 e2                                      add r6, r4, #0x180
003a00ac  a0 21 84 e5                                      str r2, [r4, #0x1a0]
003a00b0  06 00 a0 e1                                      mov r0, r6
003a00b4  b2 d3 11 eb                                      bl #0x814f84
003a00b8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003a00bc  08 10 a0 e1                                      mov r1, r8
003a00c0  04 00 a0 e1                                      mov r0, r4
003a00c4  03 30 95 e7                                      ldr r3, [r5, r3]
003a00c8  08 30 83 e2                                      add r3, r3, #8
003a00cc  80 31 84 e5                                      str r3, [r4, #0x180]
003a00d0  5d cc 11 eb                                      bl #0x81324c
003a00d4  04 00 a0 e1                                      mov r0, r4
003a00d8  07 10 a0 e1                                      mov r1, r7
003a00dc  5a cc 11 eb                                      bl #0x81324c
003a00e0  04 00 a0 e1                                      mov r0, r4
003a00e4  06 10 a0 e1                                      mov r1, r6
003a00e8  57 cc 11 eb                                      bl #0x81324c
003a00ec  04 00 a0 e1                                      mov r0, r4
003a00f0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
003a00f4  20 4b 5f 00 f0 07 00 00 68 40 00 00 f4 3a 00 00  .byte 0x20, 0x4b, 0x5f, 0x00, 0xf0, 0x07, 0x00, 0x00, 0x68, 0x40, 0x00, 0x00, 0xf4, 0x3a, 0x00, 0x00
003a0104  84 29 00 00 3c 35 00 00 f0 39 00 00              .byte 0x84, 0x29, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00, 0xf0, 0x39, 0x00, 0x00

; FUNCTION 0x003a0324, declared_size=124, range_size=124, mode=arm
; class-group: Container::NetStructContainer
; alias: _ZN9Container18NetStructContainerD1Ev
; demangled: Container::NetStructContainer::~NetStructContainer()
; decoder-mode: arm
003a0324  70 40 2d e9                                      push {r4, r5, r6, lr}
003a0328  64 30 9f e5                                      ldr r3, [pc, #0x64]
003a032c  64 20 9f e5                                      ldr r2, [pc, #0x64]
003a0330  64 10 9f e5                                      ldr r1, [pc, #0x64]
003a0334  03 30 8f e0                                      add r3, pc, r3
003a0338  00 40 a0 e1                                      mov r4, r0
003a033c  01 10 93 e7                                      ldr r1, [r3, r1]
003a0340  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
003a0344  02 20 93 e7                                      ldr r2, [r3, r2]
003a0348  08 10 81 e2                                      add r1, r1, #8
003a034c  00 00 50 e3                                      cmp r0, #0
003a0350  08 20 82 e2                                      add r2, r2, #8
003a0354  30 21 84 e5                                      str r2, [r4, #0x130]
003a0358  00 10 84 e5                                      str r1, [r4]
003a035c  80 21 84 e5                                      str r2, [r4, #0x180]
003a0360  58 21 84 e5                                      str r2, [r4, #0x158]
003a0364  08 00 00 0a                                      beq #0x3a038c
003a0368  43 5f 84 e2                                      add r5, r4, #0x10c
003a036c  05 00 a0 e1                                      mov r0, r5
003a0370  10 11 94 e5                                      ldr r1, [r4, #0x110]
003a0374  15 43 ff eb                                      bl #0x370fd0
003a0378  00 30 a0 e3                                      mov r3, #0
003a037c  18 51 84 e5                                      str r5, [r4, #0x118]
003a0380  1c 31 84 e5                                      str r3, [r4, #0x11c]
003a0384  14 51 84 e5                                      str r5, [r4, #0x114]
003a0388  10 31 84 e5                                      str r3, [r4, #0x110]
003a038c  04 00 a0 e1                                      mov r0, r4
003a0390  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003a0394  5c 47 5f 00 a8 10 00 00 c4 43 00 00              .byte 0x5c, 0x47, 0x5f, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x003a03a4, declared_size=132, range_size=132, mode=arm
; class-group: Container::NetStructContainer
; alias: _ZN9Container18NetStructContainerD0Ev
; demangled: Container::NetStructContainer::~NetStructContainer()
; decoder-mode: arm
003a03a4  70 40 2d e9                                      push {r4, r5, r6, lr}
003a03a8  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003a03ac  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003a03b0  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003a03b4  03 30 8f e0                                      add r3, pc, r3
003a03b8  00 40 a0 e1                                      mov r4, r0
003a03bc  01 10 93 e7                                      ldr r1, [r3, r1]
003a03c0  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
003a03c4  02 20 93 e7                                      ldr r2, [r3, r2]
003a03c8  08 10 81 e2                                      add r1, r1, #8
003a03cc  00 00 50 e3                                      cmp r0, #0
003a03d0  08 20 82 e2                                      add r2, r2, #8
003a03d4  30 21 84 e5                                      str r2, [r4, #0x130]
003a03d8  00 10 84 e5                                      str r1, [r4]
003a03dc  80 21 84 e5                                      str r2, [r4, #0x180]
003a03e0  58 21 84 e5                                      str r2, [r4, #0x158]
003a03e4  08 00 00 0a                                      beq #0x3a040c
003a03e8  43 5f 84 e2                                      add r5, r4, #0x10c
003a03ec  05 00 a0 e1                                      mov r0, r5
003a03f0  10 11 94 e5                                      ldr r1, [r4, #0x110]
003a03f4  f5 42 ff eb                                      bl #0x370fd0
003a03f8  00 30 a0 e3                                      mov r3, #0
003a03fc  18 51 84 e5                                      str r5, [r4, #0x118]
003a0400  1c 31 84 e5                                      str r3, [r4, #0x11c]
003a0404  14 51 84 e5                                      str r5, [r4, #0x114]
003a0408  10 31 84 e5                                      str r3, [r4, #0x110]
003a040c  04 00 a0 e1                                      mov r0, r4
003a0410  0a c0 fd eb                                      bl #0x310440
003a0414  04 00 a0 e1                                      mov r0, r4
003a0418  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003a041c  dc 46 5f 00 a8 10 00 00 c4 43 00 00              .byte 0xdc, 0x46, 0x5f, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00
