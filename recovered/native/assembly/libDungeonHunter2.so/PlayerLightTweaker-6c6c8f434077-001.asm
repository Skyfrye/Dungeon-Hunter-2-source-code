; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0032f2b4, declared_size=1332, range_size=1332, mode=arm
; class-group: PlayerLightTweaker
; alias: _ZN18PlayerLightTweakerC1Ev
; demangled: PlayerLightTweaker::PlayerLightTweaker()
; decoder-mode: arm
0032f2b4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0032f2b8  7c 54 9f e5                                      ldr r5, [pc, #0x47c]
0032f2bc  7c a4 9f e5                                      ldr sl, [pc, #0x47c]
0032f2c0  7c 24 9f e5                                      ldr r2, [pc, #0x47c]
0032f2c4  05 50 8f e0                                      add r5, pc, r5
0032f2c8  0a 30 95 e7                                      ldr r3, [r5, sl]
0032f2cc  02 20 95 e7                                      ldr r2, [r5, r2]
0032f2d0  05 dd 4d e2                                      sub sp, sp, #0x140
0032f2d4  00 30 93 e5                                      ldr r3, [r3]
0032f2d8  10 10 92 e5                                      ldr r1, [r2, #0x10]
0032f2dc  00 90 a0 e1                                      mov sb, r0
0032f2e0  00 40 a0 e1                                      mov r4, r0
0032f2e4  3c 31 8d e5                                      str r3, [sp, #0x13c]
0032f2e8  36 f7 ff eb                                      bl #0x32cfc8
0032f2ec  54 34 9f e5                                      ldr r3, [pc, #0x454]
0032f2f0  00 60 a0 e3                                      mov r6, #0
0032f2f4  b8 70 84 e2                                      add r7, r4, #0xb8
0032f2f8  03 30 95 e7                                      ldr r3, [r5, r3]
0032f2fc  08 30 83 e2                                      add r3, r3, #8
0032f300  7c 30 89 e4                                      str r3, [sb], #0x7c
0032f304  09 30 a0 e1                                      mov r3, sb
0032f308  00 60 83 e5                                      str r6, [r3]
0032f30c  04 60 83 e5                                      str r6, [r3, #4]
0032f310  08 60 83 e5                                      str r6, [r3, #8]
0032f314  0c 30 83 e2                                      add r3, r3, #0xc
0032f318  07 00 53 e1                                      cmp r3, r7
0032f31c  f9 ff ff 1a                                      bne #0x32f308
0032f320  f8 80 84 e2                                      add r8, r4, #0xf8
0032f324  08 00 a0 e1                                      mov r0, r8
0032f328  10 10 a0 e3                                      mov r1, #0x10
0032f32c  08 81 84 e5                                      str r8, [r4, #0x108]
0032f330  0c 81 84 e5                                      str r8, [r4, #0x10c]
0032f334  9b c5 ff eb                                      bl #0x3209a8
0032f338  08 21 94 e5                                      ldr r2, [r4, #0x108]
0032f33c  00 30 a0 e3                                      mov r3, #0
0032f340  03 10 a0 e1                                      mov r1, r3
0032f344  00 30 c2 e5                                      strb r3, [r2]
0032f348  06 00 a0 e1                                      mov r0, r6
0032f34c  18 61 84 e5                                      str r6, [r4, #0x118]
0032f350  1c 61 84 e5                                      str r6, [r4, #0x11c]
0032f354  20 61 84 e5                                      str r6, [r4, #0x120]
0032f358  24 61 84 e5                                      str r6, [r4, #0x124]
0032f35c  04 30 a0 e1                                      mov r3, r4
0032f360  04 20 a0 e1                                      mov r2, r4
0032f364  01 60 a0 e1                                      mov r6, r1
0032f368  01 10 81 e2                                      add r1, r1, #1
0032f36c  00 c0 a0 e3                                      mov ip, #0
0032f370  05 00 51 e3                                      cmp r1, #5
0032f374  28 61 83 e5                                      str r6, [r3, #0x128]
0032f378  7c 00 82 e5                                      str r0, [r2, #0x7c]
0032f37c  80 00 82 e5                                      str r0, [r2, #0x80]
0032f380  84 00 82 e5                                      str r0, [r2, #0x84]
0032f384  bb c0 c3 e5                                      strb ip, [r3, #0xbb]
0032f388  ba c0 c3 e5                                      strb ip, [r3, #0xba]
0032f38c  b9 c0 c3 e5                                      strb ip, [r3, #0xb9]
0032f390  b8 c0 c3 e5                                      strb ip, [r3, #0xb8]
0032f394  cf c0 c3 e5                                      strb ip, [r3, #0xcf]
0032f398  ce c0 c3 e5                                      strb ip, [r3, #0xce]
0032f39c  cd c0 c3 e5                                      strb ip, [r3, #0xcd]
0032f3a0  cc c0 c3 e5                                      strb ip, [r3, #0xcc]
0032f3a4  e3 c0 c3 e5                                      strb ip, [r3, #0xe3]
0032f3a8  e2 c0 c3 e5                                      strb ip, [r3, #0xe2]
0032f3ac  e1 c0 c3 e5                                      strb ip, [r3, #0xe1]
0032f3b0  e0 c0 c3 e5                                      strb ip, [r3, #0xe0]
0032f3b4  0c 20 82 e2                                      add r2, r2, #0xc
0032f3b8  04 30 83 e2                                      add r3, r3, #4
0032f3bc  e9 ff ff 1a                                      bne #0x32f368
0032f3c0  84 13 9f e5                                      ldr r1, [pc, #0x384]
0032f3c4  09 20 a0 e1                                      mov r2, sb
0032f3c8  04 00 a0 e1                                      mov r0, r4
0032f3cc  01 10 8f e0                                      add r1, pc, r1
0032f3d0  dd fe ff eb                                      bl #0x32ef4c
0032f3d4  74 13 9f e5                                      ldr r1, [pc, #0x374]
0032f3d8  04 00 a0 e1                                      mov r0, r4
0032f3dc  80 20 84 e2                                      add r2, r4, #0x80
0032f3e0  01 10 8f e0                                      add r1, pc, r1
0032f3e4  d8 fe ff eb                                      bl #0x32ef4c
0032f3e8  64 13 9f e5                                      ldr r1, [pc, #0x364]
0032f3ec  04 00 a0 e1                                      mov r0, r4
0032f3f0  84 20 84 e2                                      add r2, r4, #0x84
0032f3f4  01 10 8f e0                                      add r1, pc, r1
0032f3f8  d3 fe ff eb                                      bl #0x32ef4c
0032f3fc  54 13 9f e5                                      ldr r1, [pc, #0x354]
0032f400  07 20 a0 e1                                      mov r2, r7
0032f404  04 00 a0 e1                                      mov r0, r4
0032f408  01 10 8f e0                                      add r1, pc, r1
0032f40c  a9 fe ff eb                                      bl #0x32eeb8
0032f410  44 13 9f e5                                      ldr r1, [pc, #0x344]
0032f414  04 00 a0 e1                                      mov r0, r4
0032f418  cc 20 84 e2                                      add r2, r4, #0xcc
0032f41c  01 10 8f e0                                      add r1, pc, r1
0032f420  a4 fe ff eb                                      bl #0x32eeb8
0032f424  34 13 9f e5                                      ldr r1, [pc, #0x334]
0032f428  04 00 a0 e1                                      mov r0, r4
0032f42c  e0 20 84 e2                                      add r2, r4, #0xe0
0032f430  01 10 8f e0                                      add r1, pc, r1
0032f434  9f fe ff eb                                      bl #0x32eeb8
0032f438  24 13 9f e5                                      ldr r1, [pc, #0x324]
0032f43c  04 00 a0 e1                                      mov r0, r4
0032f440  88 20 84 e2                                      add r2, r4, #0x88
0032f444  01 10 8f e0                                      add r1, pc, r1
0032f448  bf fe ff eb                                      bl #0x32ef4c
0032f44c  14 13 9f e5                                      ldr r1, [pc, #0x314]
0032f450  04 00 a0 e1                                      mov r0, r4
0032f454  8c 20 84 e2                                      add r2, r4, #0x8c
0032f458  01 10 8f e0                                      add r1, pc, r1
0032f45c  ba fe ff eb                                      bl #0x32ef4c
0032f460  04 13 9f e5                                      ldr r1, [pc, #0x304]
0032f464  04 00 a0 e1                                      mov r0, r4
0032f468  90 20 84 e2                                      add r2, r4, #0x90
0032f46c  01 10 8f e0                                      add r1, pc, r1
0032f470  b5 fe ff eb                                      bl #0x32ef4c
0032f474  f4 12 9f e5                                      ldr r1, [pc, #0x2f4]
0032f478  04 00 a0 e1                                      mov r0, r4
0032f47c  bc 20 84 e2                                      add r2, r4, #0xbc
0032f480  01 10 8f e0                                      add r1, pc, r1
0032f484  8b fe ff eb                                      bl #0x32eeb8
0032f488  e4 12 9f e5                                      ldr r1, [pc, #0x2e4]
0032f48c  04 00 a0 e1                                      mov r0, r4
0032f490  d0 20 84 e2                                      add r2, r4, #0xd0
0032f494  01 10 8f e0                                      add r1, pc, r1
0032f498  86 fe ff eb                                      bl #0x32eeb8
0032f49c  d4 12 9f e5                                      ldr r1, [pc, #0x2d4]
0032f4a0  04 00 a0 e1                                      mov r0, r4
0032f4a4  e4 20 84 e2                                      add r2, r4, #0xe4
0032f4a8  01 10 8f e0                                      add r1, pc, r1
0032f4ac  81 fe ff eb                                      bl #0x32eeb8
0032f4b0  c4 12 9f e5                                      ldr r1, [pc, #0x2c4]
0032f4b4  04 00 a0 e1                                      mov r0, r4
0032f4b8  94 20 84 e2                                      add r2, r4, #0x94
0032f4bc  01 10 8f e0                                      add r1, pc, r1
0032f4c0  a1 fe ff eb                                      bl #0x32ef4c
0032f4c4  b4 12 9f e5                                      ldr r1, [pc, #0x2b4]
0032f4c8  04 00 a0 e1                                      mov r0, r4
0032f4cc  98 20 84 e2                                      add r2, r4, #0x98
0032f4d0  01 10 8f e0                                      add r1, pc, r1
0032f4d4  9c fe ff eb                                      bl #0x32ef4c
0032f4d8  a4 12 9f e5                                      ldr r1, [pc, #0x2a4]
0032f4dc  04 00 a0 e1                                      mov r0, r4
0032f4e0  9c 20 84 e2                                      add r2, r4, #0x9c
0032f4e4  01 10 8f e0                                      add r1, pc, r1
0032f4e8  97 fe ff eb                                      bl #0x32ef4c
0032f4ec  94 12 9f e5                                      ldr r1, [pc, #0x294]
0032f4f0  04 00 a0 e1                                      mov r0, r4
0032f4f4  c0 20 84 e2                                      add r2, r4, #0xc0
0032f4f8  01 10 8f e0                                      add r1, pc, r1
0032f4fc  6d fe ff eb                                      bl #0x32eeb8
0032f500  84 12 9f e5                                      ldr r1, [pc, #0x284]
0032f504  04 00 a0 e1                                      mov r0, r4
0032f508  d4 20 84 e2                                      add r2, r4, #0xd4
0032f50c  01 10 8f e0                                      add r1, pc, r1
0032f510  68 fe ff eb                                      bl #0x32eeb8
0032f514  74 12 9f e5                                      ldr r1, [pc, #0x274]
0032f518  04 00 a0 e1                                      mov r0, r4
0032f51c  e8 20 84 e2                                      add r2, r4, #0xe8
0032f520  01 10 8f e0                                      add r1, pc, r1
0032f524  63 fe ff eb                                      bl #0x32eeb8
0032f528  64 12 9f e5                                      ldr r1, [pc, #0x264]
0032f52c  04 00 a0 e1                                      mov r0, r4
0032f530  a0 20 84 e2                                      add r2, r4, #0xa0
0032f534  01 10 8f e0                                      add r1, pc, r1
0032f538  83 fe ff eb                                      bl #0x32ef4c
0032f53c  54 12 9f e5                                      ldr r1, [pc, #0x254]
0032f540  04 00 a0 e1                                      mov r0, r4
0032f544  a4 20 84 e2                                      add r2, r4, #0xa4
0032f548  01 10 8f e0                                      add r1, pc, r1
0032f54c  7e fe ff eb                                      bl #0x32ef4c
0032f550  44 12 9f e5                                      ldr r1, [pc, #0x244]
0032f554  04 00 a0 e1                                      mov r0, r4
0032f558  a8 20 84 e2                                      add r2, r4, #0xa8
0032f55c  01 10 8f e0                                      add r1, pc, r1
0032f560  79 fe ff eb                                      bl #0x32ef4c
0032f564  34 12 9f e5                                      ldr r1, [pc, #0x234]
0032f568  04 00 a0 e1                                      mov r0, r4
0032f56c  c4 20 84 e2                                      add r2, r4, #0xc4
0032f570  01 10 8f e0                                      add r1, pc, r1
0032f574  4f fe ff eb                                      bl #0x32eeb8
0032f578  24 12 9f e5                                      ldr r1, [pc, #0x224]
0032f57c  04 00 a0 e1                                      mov r0, r4
0032f580  d8 20 84 e2                                      add r2, r4, #0xd8
0032f584  01 10 8f e0                                      add r1, pc, r1
0032f588  4a fe ff eb                                      bl #0x32eeb8
0032f58c  14 12 9f e5                                      ldr r1, [pc, #0x214]
0032f590  04 00 a0 e1                                      mov r0, r4
0032f594  ec 20 84 e2                                      add r2, r4, #0xec
0032f598  01 10 8f e0                                      add r1, pc, r1
0032f59c  45 fe ff eb                                      bl #0x32eeb8
0032f5a0  04 12 9f e5                                      ldr r1, [pc, #0x204]
0032f5a4  04 00 a0 e1                                      mov r0, r4
0032f5a8  ac 20 84 e2                                      add r2, r4, #0xac
0032f5ac  01 10 8f e0                                      add r1, pc, r1
0032f5b0  65 fe ff eb                                      bl #0x32ef4c
0032f5b4  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
0032f5b8  04 00 a0 e1                                      mov r0, r4
0032f5bc  b0 20 84 e2                                      add r2, r4, #0xb0
0032f5c0  01 10 8f e0                                      add r1, pc, r1
0032f5c4  60 fe ff eb                                      bl #0x32ef4c
0032f5c8  e4 11 9f e5                                      ldr r1, [pc, #0x1e4]
0032f5cc  04 00 a0 e1                                      mov r0, r4
0032f5d0  b4 20 84 e2                                      add r2, r4, #0xb4
0032f5d4  01 10 8f e0                                      add r1, pc, r1
0032f5d8  5b fe ff eb                                      bl #0x32ef4c
0032f5dc  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
0032f5e0  04 00 a0 e1                                      mov r0, r4
0032f5e4  c8 20 84 e2                                      add r2, r4, #0xc8
0032f5e8  01 10 8f e0                                      add r1, pc, r1
0032f5ec  31 fe ff eb                                      bl #0x32eeb8
0032f5f0  c4 11 9f e5                                      ldr r1, [pc, #0x1c4]
0032f5f4  04 00 a0 e1                                      mov r0, r4
0032f5f8  dc 20 84 e2                                      add r2, r4, #0xdc
0032f5fc  01 10 8f e0                                      add r1, pc, r1
0032f600  2c fe ff eb                                      bl #0x32eeb8
0032f604  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
0032f608  04 00 a0 e1                                      mov r0, r4
0032f60c  f0 20 84 e2                                      add r2, r4, #0xf0
0032f610  01 10 8f e0                                      add r1, pc, r1
0032f614  27 fe ff eb                                      bl #0x32eeb8
0032f618  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
0032f61c  04 00 a0 e1                                      mov r0, r4
0032f620  f4 20 84 e2                                      add r2, r4, #0xf4
0032f624  01 10 8f e0                                      add r1, pc, r1
0032f628  22 fe ff eb                                      bl #0x32eeb8
0032f62c  94 11 9f e5                                      ldr r1, [pc, #0x194]
0032f630  04 00 a0 e1                                      mov r0, r4
0032f634  11 2e 84 e2                                      add r2, r4, #0x110
0032f638  01 10 8f e0                                      add r1, pc, r1
0032f63c  42 fe ff eb                                      bl #0x32ef4c
0032f640  84 11 9f e5                                      ldr r1, [pc, #0x184]
0032f644  04 00 a0 e1                                      mov r0, r4
0032f648  45 2f 84 e2                                      add r2, r4, #0x114
0032f64c  01 10 8f e0                                      add r1, pc, r1
0032f650  3d fe ff eb                                      bl #0x32ef4c
0032f654  74 11 9f e5                                      ldr r1, [pc, #0x174]
0032f658  04 00 a0 e1                                      mov r0, r4
0032f65c  47 2f 84 e2                                      add r2, r4, #0x11c
0032f660  01 10 8f e0                                      add r1, pc, r1
0032f664  38 fe ff eb                                      bl #0x32ef4c
0032f668  64 11 9f e5                                      ldr r1, [pc, #0x164]
0032f66c  04 00 a0 e1                                      mov r0, r4
0032f670  12 2e 84 e2                                      add r2, r4, #0x120
0032f674  01 10 8f e0                                      add r1, pc, r1
0032f678  33 fe ff eb                                      bl #0x32ef4c
0032f67c  54 11 9f e5                                      ldr r1, [pc, #0x154]
0032f680  49 2f 84 e2                                      add r2, r4, #0x124
0032f684  04 00 a0 e1                                      mov r0, r4
0032f688  01 10 8f e0                                      add r1, pc, r1
0032f68c  2e fe ff eb                                      bl #0x32ef4c
0032f690  44 11 9f e5                                      ldr r1, [pc, #0x144]
0032f694  05 7d 8d e2                                      add r7, sp, #0x140
0032f698  04 00 a0 e1                                      mov r0, r4
0032f69c  01 10 8f e0                                      add r1, pc, r1
0032f6a0  40 11 27 e5                                      str r1, [r7, #-0x140]!
0032f6a4  3b f1 ff eb                                      bl #0x32bb98
0032f6a8  0d 10 a0 e1                                      mov r1, sp
0032f6ac  04 00 84 e2                                      add r0, r4, #4
0032f6b0  8c fd ff eb                                      bl #0x32ece8
0032f6b4  41 7f 8d e2                                      add r7, sp, #0x104
0032f6b8  08 20 a0 e1                                      mov r2, r8
0032f6bc  00 90 a0 e1                                      mov sb, r0
0032f6c0  02 10 a0 e3                                      mov r1, #2
0032f6c4  07 00 a0 e1                                      mov r0, r7
0032f6c8  6e f6 ff eb                                      bl #0x32d088
0032f6cc  07 10 a0 e1                                      mov r1, r7
0032f6d0  09 00 a0 e1                                      mov r0, sb
0032f6d4  ee c2 ff eb                                      bl #0x320294
0032f6d8  20 00 87 e2                                      add r0, r7, #0x20
0032f6dc  b2 90 ff eb                                      bl #0x3139ac
0032f6e0  08 00 87 e2                                      add r0, r7, #8
0032f6e4  b0 90 ff eb                                      bl #0x3139ac
0032f6e8  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
0032f6ec  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0032f6f0  04 70 8d e2                                      add r7, sp, #4
0032f6f4  03 30 95 e7                                      ldr r3, [r5, r3]
0032f6f8  01 10 8f e0                                      add r1, pc, r1
0032f6fc  07 00 a0 e1                                      mov r0, r7
0032f700  00 20 93 e5                                      ldr r2, [r3]
0032f704  f6 7c ff eb                                      bl #0x30eae4
0032f708  04 00 a0 e1                                      mov r0, r4
0032f70c  06 20 a0 e1                                      mov r2, r6
0032f710  07 10 a0 e1                                      mov r1, r7
0032f714  e7 ef ff eb                                      bl #0x32b6b8
0032f718  0a 30 95 e7                                      ldr r3, [r5, sl]
0032f71c  3c 21 9d e5                                      ldr r2, [sp, #0x13c]
0032f720  04 00 a0 e1                                      mov r0, r4
0032f724  00 30 93 e5                                      ldr r3, [r3]
0032f728  03 00 52 e1                                      cmp r2, r3
0032f72c  01 00 00 1a                                      bne #0x32f738
0032f730  05 dd 8d e2                                      add sp, sp, #0x140
0032f734  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0032f738  f4 7a ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032f73c  cc 57 66 00 ac 40 00 00 f4 37 00 00 78 47 00 00  .byte 0xcc, 0x57, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x78, 0x47, 0x00, 0x00
0032f74c  14 00 59 00 18 00 59 00 1c 00 59 00 20 00 59 00  .byte 0x14, 0x00, 0x59, 0x00, 0x18, 0x00, 0x59, 0x00, 0x1c, 0x00, 0x59, 0x00, 0x20, 0x00, 0x59, 0x00
0032f75c  24 00 59 00 28 00 59 00 2c 00 59 00 30 00 59 00  .byte 0x24, 0x00, 0x59, 0x00, 0x28, 0x00, 0x59, 0x00, 0x2c, 0x00, 0x59, 0x00, 0x30, 0x00, 0x59, 0x00
0032f76c  34 00 59 00 38 00 59 00 3c 00 59 00 40 00 59 00  .byte 0x34, 0x00, 0x59, 0x00, 0x38, 0x00, 0x59, 0x00, 0x3c, 0x00, 0x59, 0x00, 0x40, 0x00, 0x59, 0x00
0032f77c  44 00 59 00 48 00 59 00 4c 00 59 00 50 00 59 00  .byte 0x44, 0x00, 0x59, 0x00, 0x48, 0x00, 0x59, 0x00, 0x4c, 0x00, 0x59, 0x00, 0x50, 0x00, 0x59, 0x00
0032f78c  54 00 59 00 58 00 59 00 5c 00 59 00 60 00 59 00  .byte 0x54, 0x00, 0x59, 0x00, 0x58, 0x00, 0x59, 0x00, 0x5c, 0x00, 0x59, 0x00, 0x60, 0x00, 0x59, 0x00
0032f79c  64 00 59 00 68 00 59 00 6c 00 59 00 70 00 59 00  .byte 0x64, 0x00, 0x59, 0x00, 0x68, 0x00, 0x59, 0x00, 0x6c, 0x00, 0x59, 0x00, 0x70, 0x00, 0x59, 0x00
0032f7ac  74 00 59 00 78 00 59 00 7c 00 59 00 80 00 59 00  .byte 0x74, 0x00, 0x59, 0x00, 0x78, 0x00, 0x59, 0x00, 0x7c, 0x00, 0x59, 0x00, 0x80, 0x00, 0x59, 0x00
0032f7bc  84 00 59 00 88 00 59 00 8c 00 59 00 88 00 59 00  .byte 0x84, 0x00, 0x59, 0x00, 0x88, 0x00, 0x59, 0x00, 0x8c, 0x00, 0x59, 0x00, 0x88, 0x00, 0x59, 0x00
0032f7cc  84 00 59 00 80 00 59 00 84 00 59 00 88 00 59 00  .byte 0x84, 0x00, 0x59, 0x00, 0x80, 0x00, 0x59, 0x00, 0x84, 0x00, 0x59, 0x00, 0x88, 0x00, 0x59, 0x00
0032f7dc  8c 00 59 00 00 06 00 00 b8 fc 58 00              .byte 0x8c, 0x00, 0x59, 0x00, 0x00, 0x06, 0x00, 0x00, 0xb8, 0xfc, 0x58, 0x00

; FUNCTION 0x0040dd7c, declared_size=204, range_size=204, mode=arm
; class-group: PlayerLightTweaker
; alias: _ZN18PlayerLightTweaker14GetIdsFromNameEPKc
; demangled: PlayerLightTweaker::GetIdsFromName(char const*)
; decoder-mode: arm
0040dd7c  10 40 2d e9                                      push {r4, lr}
0040dd80  01 00 a0 e1                                      mov r0, r1
0040dd84  08 d0 4d e2                                      sub sp, sp, #8
0040dd88  01 40 a0 e1                                      mov r4, r1
0040dd8c  30 00 fc eb                                      bl #0x30de54
0040dd90  00 20 84 e0                                      add r2, r4, r0
0040dd94  d3 10 52 e1                                      ldrsb r1, [r2, #-3]
0040dd98  90 30 9f e5                                      ldr r3, [pc, #0x90]
0040dd9c  5b 00 51 e3                                      cmp r1, #0x5b
0040dda0  03 30 8f e0                                      add r3, pc, r3
0040dda4  19 00 00 0a                                      beq #0x40de10
0040dda8  00 40 e0 e3                                      mvn r4, #0
0040ddac  80 20 9f e5                                      ldr r2, [pc, #0x80]
0040ddb0  02 20 93 e7                                      ldr r2, [r3, r2]
0040ddb4  00 20 92 e5                                      ldr r2, [r2]
0040ddb8  02 00 52 e3                                      cmp r2, #2
0040ddbc  00 30 a0 03                                      moveq r3, #0
0040ddc0  00 30 83 05                                      streq r3, [r3]
0040ddc4  01 00 00 0a                                      beq #0x40ddd0
0040ddc8  01 00 52 e3                                      cmp r2, #1
0040ddcc  02 00 00 0a                                      beq #0x40dddc
0040ddd0  04 00 a0 e1                                      mov r0, r4
0040ddd4  08 d0 8d e2                                      add sp, sp, #8
0040ddd8  10 80 bd e8                                      pop {r4, pc}
0040dddc  54 00 9f e5                                      ldr r0, [pc, #0x54]
0040dde0  54 10 9f e5                                      ldr r1, [pc, #0x54]
0040dde4  54 20 9f e5                                      ldr r2, [pc, #0x54]
0040dde8  00 00 93 e7                                      ldr r0, [r3, r0]
0040ddec  50 30 9f e5                                      ldr r3, [pc, #0x50]
0040ddf0  79 c0 a0 e3                                      mov ip, #0x79
0040ddf4  01 10 8f e0                                      add r1, pc, r1
0040ddf8  02 20 8f e0                                      add r2, pc, r2
0040ddfc  03 30 8f e0                                      add r3, pc, r3
0040de00  a8 00 80 e2                                      add r0, r0, #0xa8
0040de04  00 c0 8d e5                                      str ip, [sp]
0040de08  7d 00 fc eb                                      bl #0x30e004
0040de0c  ef ff ff ea                                      b #0x40ddd0
0040de10  d1 20 52 e1                                      ldrsb r2, [r2, #-1]
0040de14  5d 00 52 e3                                      cmp r2, #0x5d
0040de18  e2 ff ff 1a                                      bne #0x40dda8
0040de1c  d0 40 94 e1                                      ldrsb r4, [r4, r0]
0040de20  30 40 44 e2                                      sub r4, r4, #0x30
0040de24  04 00 54 e3                                      cmp r4, #4
0040de28  e8 ff ff 9a                                      bls #0x40ddd0
0040de2c  de ff ff ea                                      b #0x40ddac
; mapping-symbol data/literal pool
0040de30  f0 6c 58 00 c0 39 00 00 c0 19 00 00 e4 05 4b 00  .byte 0xf0, 0x6c, 0x58, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xe4, 0x05, 0x4b, 0x00
0040de40  d0 9f 4b 00 fc 9f 4b 00                          .byte 0xd0, 0x9f, 0x4b, 0x00, 0xfc, 0x9f, 0x4b, 0x00

; FUNCTION 0x0040de48, declared_size=1120, range_size=1120, mode=arm
; class-group: PlayerLightTweaker
; alias: _ZN18PlayerLightTweaker10onSetValueERKSs
; demangled: PlayerLightTweaker::onSetValue(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0040de48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0040de4c  00 50 a0 e1                                      mov r5, r0
0040de50  14 60 91 e5                                      ldr r6, [r1, #0x14]
0040de54  24 04 9f e5                                      ldr r0, [pc, #0x424]
0040de58  38 d0 4d e2                                      sub sp, sp, #0x38
0040de5c  06 10 a0 e1                                      mov r1, r6
0040de60  00 00 8f e0                                      add r0, pc, r0
0040de64  0d 20 a0 e3                                      mov r2, #0xd
0040de68  83 03 fc eb                                      bl #0x30ec7c
0040de6c  10 44 9f e5                                      ldr r4, [pc, #0x410]
0040de70  00 00 50 e3                                      cmp r0, #0
0040de74  04 40 8f e0                                      add r4, pc, r4
0040de78  11 00 00 1a                                      bne #0x40dec4
0040de7c  de 30 d6 e1                                      ldrsb r3, [r6, #0xe]
0040de80  1a 20 83 e2                                      add r2, r3, #0x1a
0040de84  02 01 95 e7                                      ldr r0, [r5, r2, lsl #2]
0040de88  30 30 43 e2                                      sub r3, r3, #0x30
0040de8c  00 00 50 e3                                      cmp r0, #0
0040de90  09 00 00 0a                                      beq #0x40debc
0040de94  0c 20 a0 e3                                      mov r2, #0xc
0040de98  92 53 25 e0                                      mla r5, r2, r3, r5
0040de9c  24 10 8d e2                                      add r1, sp, #0x24
0040dea0  7c c0 95 e5                                      ldr ip, [r5, #0x7c]
0040dea4  80 20 95 e5                                      ldr r2, [r5, #0x80]
0040dea8  84 30 95 e5                                      ldr r3, [r5, #0x84]
0040deac  24 c0 8d e5                                      str ip, [sp, #0x24]
0040deb0  28 20 8d e5                                      str r2, [sp, #0x28]
0040deb4  2c 30 8d e5                                      str r3, [sp, #0x2c]
0040deb8  42 f5 ff eb                                      bl #0x40b3c8
0040debc  38 d0 8d e2                                      add sp, sp, #0x38
0040dec0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0040dec4  bc 03 9f e5                                      ldr r0, [pc, #0x3bc]
0040dec8  06 10 a0 e1                                      mov r1, r6
0040decc  0e 20 a0 e3                                      mov r2, #0xe
0040ded0  00 00 8f e0                                      add r0, pc, r0
0040ded4  68 03 fc eb                                      bl #0x30ec7c
0040ded8  00 00 50 e3                                      cmp r0, #0
0040dedc  1e 00 00 1a                                      bne #0x40df5c
0040dee0  df 60 d6 e1                                      ldrsb r6, [r6, #0xf]
0040dee4  1a 30 86 e2                                      add r3, r6, #0x1a
0040dee8  03 41 95 e7                                      ldr r4, [r5, r3, lsl #2]
0040deec  00 00 54 e3                                      cmp r4, #0
0040def0  f1 ff ff 0a                                      beq #0x40debc
0040def4  02 60 46 e2                                      sub r6, r6, #2
0040def8  06 71 85 e0                                      add r7, r5, r6, lsl #2
0040defc  01 00 d7 e5                                      ldrb r0, [r7, #1]
0040df00  f6 00 fc eb                                      bl #0x30e2e0
0040df04  43 14 a0 e3                                      mov r1, #0x43000000
0040df08  7f 18 81 e2                                      add r1, r1, #0x7f0000
0040df0c  60 03 fc eb                                      bl #0x30ec94
0040df10  00 80 a0 e1                                      mov r8, r0
0040df14  02 00 d7 e5                                      ldrb r0, [r7, #2]
0040df18  f0 00 fc eb                                      bl #0x30e2e0
0040df1c  43 14 a0 e3                                      mov r1, #0x43000000
0040df20  7f 18 81 e2                                      add r1, r1, #0x7f0000
0040df24  5a 03 fc eb                                      bl #0x30ec94
0040df28  00 70 a0 e1                                      mov r7, r0
0040df2c  06 01 d5 e7                                      ldrb r0, [r5, r6, lsl #2]
0040df30  ea 00 fc eb                                      bl #0x30e2e0
0040df34  43 14 a0 e3                                      mov r1, #0x43000000
0040df38  7f 18 81 e2                                      add r1, r1, #0x7f0000
0040df3c  54 03 fc eb                                      bl #0x30ec94
0040df40  18 10 8d e2                                      add r1, sp, #0x18
0040df44  18 00 8d e5                                      str r0, [sp, #0x18]
0040df48  04 00 a0 e1                                      mov r0, r4
0040df4c  1c 80 8d e5                                      str r8, [sp, #0x1c]
0040df50  20 70 8d e5                                      str r7, [sp, #0x20]
0040df54  f1 f5 ff eb                                      bl #0x40b720
0040df58  d7 ff ff ea                                      b #0x40debc
0040df5c  28 03 9f e5                                      ldr r0, [pc, #0x328]
0040df60  06 10 a0 e1                                      mov r1, r6
0040df64  0e 20 a0 e3                                      mov r2, #0xe
0040df68  00 00 8f e0                                      add r0, pc, r0
0040df6c  42 03 fc eb                                      bl #0x30ec7c
0040df70  00 00 50 e3                                      cmp r0, #0
0040df74  25 00 00 0a                                      beq #0x40e010
0040df78  10 03 9f e5                                      ldr r0, [pc, #0x310]
0040df7c  06 10 a0 e1                                      mov r1, r6
0040df80  0f 20 a0 e3                                      mov r2, #0xf
0040df84  00 00 8f e0                                      add r0, pc, r0
0040df88  3b 03 fc eb                                      bl #0x30ec7c
0040df8c  00 00 50 e3                                      cmp r0, #0
0040df90  3d 00 00 1a                                      bne #0x40e08c
0040df94  d0 61 d6 e1                                      ldrsb r6, [r6, #0x10]
0040df98  1a 30 86 e2                                      add r3, r6, #0x1a
0040df9c  03 41 95 e7                                      ldr r4, [r5, r3, lsl #2]
0040dfa0  00 00 54 e3                                      cmp r4, #0
0040dfa4  c4 ff ff 0a                                      beq #0x40debc
0040dfa8  08 60 86 e2                                      add r6, r6, #8
0040dfac  06 71 85 e0                                      add r7, r5, r6, lsl #2
0040dfb0  01 00 d7 e5                                      ldrb r0, [r7, #1]
0040dfb4  c9 00 fc eb                                      bl #0x30e2e0
0040dfb8  43 14 a0 e3                                      mov r1, #0x43000000
0040dfbc  7f 18 81 e2                                      add r1, r1, #0x7f0000
0040dfc0  33 03 fc eb                                      bl #0x30ec94
0040dfc4  00 80 a0 e1                                      mov r8, r0
0040dfc8  02 00 d7 e5                                      ldrb r0, [r7, #2]
0040dfcc  c3 00 fc eb                                      bl #0x30e2e0
0040dfd0  43 14 a0 e3                                      mov r1, #0x43000000
0040dfd4  7f 18 81 e2                                      add r1, r1, #0x7f0000
0040dfd8  2d 03 fc eb                                      bl #0x30ec94
0040dfdc  00 70 a0 e1                                      mov r7, r0
0040dfe0  06 01 d5 e7                                      ldrb r0, [r5, r6, lsl #2]
0040dfe4  bd 00 fc eb                                      bl #0x30e2e0
0040dfe8  43 14 a0 e3                                      mov r1, #0x43000000
0040dfec  7f 18 81 e2                                      add r1, r1, #0x7f0000
0040dff0  27 03 fc eb                                      bl #0x30ec94
0040dff4  0d 10 a0 e1                                      mov r1, sp
0040dff8  00 00 8d e5                                      str r0, [sp]
0040dffc  04 00 a0 e1                                      mov r0, r4
0040e000  04 80 8d e5                                      str r8, [sp, #4]
0040e004  08 70 8d e5                                      str r7, [sp, #8]
0040e008  6e f5 ff eb                                      bl #0x40b5c8
0040e00c  aa ff ff ea                                      b #0x40debc
0040e010  df 30 d6 e1                                      ldrsb r3, [r6, #0xf]
0040e014  1a 20 83 e2                                      add r2, r3, #0x1a
0040e018  02 41 95 e7                                      ldr r4, [r5, r2, lsl #2]
0040e01c  00 00 54 e3                                      cmp r4, #0
0040e020  a5 ff ff 0a                                      beq #0x40debc
0040e024  02 30 83 e2                                      add r3, r3, #2
0040e028  03 51 85 e0                                      add r5, r5, r3, lsl #2
0040e02c  05 00 d5 e5                                      ldrb r0, [r5, #5]
0040e030  aa 00 fc eb                                      bl #0x30e2e0
0040e034  43 14 a0 e3                                      mov r1, #0x43000000
0040e038  7f 18 81 e2                                      add r1, r1, #0x7f0000
0040e03c  14 03 fc eb                                      bl #0x30ec94
0040e040  00 70 a0 e1                                      mov r7, r0
0040e044  06 00 d5 e5                                      ldrb r0, [r5, #6]
0040e048  a4 00 fc eb                                      bl #0x30e2e0
0040e04c  43 14 a0 e3                                      mov r1, #0x43000000
0040e050  7f 18 81 e2                                      add r1, r1, #0x7f0000
0040e054  0e 03 fc eb                                      bl #0x30ec94
0040e058  00 60 a0 e1                                      mov r6, r0
0040e05c  04 00 d5 e5                                      ldrb r0, [r5, #4]
0040e060  9e 00 fc eb                                      bl #0x30e2e0
0040e064  43 14 a0 e3                                      mov r1, #0x43000000
0040e068  7f 18 81 e2                                      add r1, r1, #0x7f0000
0040e06c  08 03 fc eb                                      bl #0x30ec94
0040e070  0c 10 8d e2                                      add r1, sp, #0xc
0040e074  0c 00 8d e5                                      str r0, [sp, #0xc]
0040e078  04 00 a0 e1                                      mov r0, r4
0040e07c  10 70 8d e5                                      str r7, [sp, #0x10]
0040e080  14 60 8d e5                                      str r6, [sp, #0x14]
0040e084  7a f5 ff eb                                      bl #0x40b674
0040e088  8b ff ff ea                                      b #0x40debc
0040e08c  00 02 9f e5                                      ldr r0, [pc, #0x200]
0040e090  0a 20 a0 e3                                      mov r2, #0xa
0040e094  06 10 a0 e1                                      mov r1, r6
0040e098  00 00 8f e0                                      add r0, pc, r0
0040e09c  f6 02 fc eb                                      bl #0x30ec7c
0040e0a0  00 20 50 e2                                      subs r2, r0, #0
0040e0a4  35 00 00 0a                                      beq #0x40e180
0040e0a8  e8 01 9f e5                                      ldr r0, [pc, #0x1e8]
0040e0ac  06 10 a0 e1                                      mov r1, r6
0040e0b0  0a 20 a0 e3                                      mov r2, #0xa
0040e0b4  00 00 8f e0                                      add r0, pc, r0
0040e0b8  ef 02 fc eb                                      bl #0x30ec7c
0040e0bc  00 00 50 e3                                      cmp r0, #0
0040e0c0  4f 00 00 1a                                      bne #0x40e204
0040e0c4  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
0040e0c8  14 11 95 e5                                      ldr r1, [r5, #0x114]
0040e0cc  10 c1 95 e5                                      ldr ip, [r5, #0x110]
0040e0d0  03 40 94 e7                                      ldr r4, [r4, r3]
0040e0d4  00 20 a0 e3                                      mov r2, #0
0040e0d8  30 30 8d e2                                      add r3, sp, #0x30
0040e0dc  10 00 94 e5                                      ldr r0, [r4, #0x10]
0040e0e0  10 00 90 e5                                      ldr r0, [r0, #0x10]
0040e0e4  30 c0 8d e5                                      str ip, [sp, #0x30]
0040e0e8  34 10 8d e5                                      str r1, [sp, #0x34]
0040e0ec  ba 1f d0 e1                                      ldrh r1, [r0, #0xfa]
0040e0f0  e4 00 90 e5                                      ldr r0, [r0, #0xe4]
0040e0f4  02 10 81 e2                                      add r1, r1, #2
0040e0f8  71 10 ff e6                                      uxth r1, r1
0040e0fc  80 da 06 eb                                      bl #0x5c4b04
0040e100  04 00 a0 e1                                      mov r0, r4
0040e104  22 45 fc eb                                      bl #0x31f594
0040e108  00 40 50 e2                                      subs r4, r0, #0
0040e10c  6a ff ff 0a                                      beq #0x40debc
0040e110  10 01 95 e5                                      ldr r0, [r5, #0x110]
0040e114  ec 00 fc eb                                      bl #0x30e4cc
0040e118  00 70 a0 e1                                      mov r7, r0
0040e11c  14 01 95 e5                                      ldr r0, [r5, #0x114]
0040e120  e9 00 fc eb                                      bl #0x30e4cc
0040e124  00 60 a0 e1                                      mov r6, r0
0040e128  04 00 a0 e1                                      mov r0, r4
0040e12c  dd 84 ff eb                                      bl #0x3ef4a8
0040e130  d8 71 80 e5                                      str r7, [r0, #0x1d8]
0040e134  04 00 a0 e1                                      mov r0, r4
0040e138  da 84 ff eb                                      bl #0x3ef4a8
0040e13c  dc 61 80 e5                                      str r6, [r0, #0x1dc]
0040e140  14 01 95 e5                                      ldr r0, [r5, #0x114]
0040e144  00 10 a0 e3                                      mov r1, #0
0040e148  6a 00 fc eb                                      bl #0x30e2f8
0040e14c  00 00 50 e3                                      cmp r0, #0
0040e150  59 ff ff 0a                                      beq #0x40debc
0040e154  18 01 95 e5                                      ldr r0, [r5, #0x118]
0040e158  00 10 a0 e3                                      mov r1, #0
0040e15c  8a ff fb eb                                      bl #0x30df8c
0040e160  00 00 50 e3                                      cmp r0, #0
0040e164  54 ff ff 0a                                      beq #0x40debc
0040e168  fe 35 a0 e3                                      mov r3, #0x3f800000
0040e16c  04 00 a0 e1                                      mov r0, r4
0040e170  00 10 a0 e3                                      mov r1, #0
0040e174  18 31 85 e5                                      str r3, [r5, #0x118]
0040e178  ac 8c ff eb                                      bl #0x3f1430
0040e17c  4e ff ff ea                                      b #0x40debc
0040e180  14 11 9f e5                                      ldr r1, [pc, #0x114]
0040e184  f4 30 85 e2                                      add r3, r5, #0xf4
0040e188  01 40 94 e7                                      ldr r4, [r4, r1]
0040e18c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0040e190  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
0040e194  14 00 91 e5                                      ldr r0, [r1, #0x14]
0040e198  ba 1f d0 e1                                      ldrh r1, [r0, #0xfa]
0040e19c  e4 00 90 e5                                      ldr r0, [r0, #0xe4]
0040e1a0  95 d9 06 eb                                      bl #0x5c47fc
0040e1a4  04 00 a0 e1                                      mov r0, r4
0040e1a8  f9 44 fc eb                                      bl #0x31f594
0040e1ac  00 40 50 e2                                      subs r4, r0, #0
0040e1b0  41 ff ff 0a                                      beq #0x40debc
0040e1b4  f4 00 d5 e5                                      ldrb r0, [r5, #0xf4]
0040e1b8  48 00 fc eb                                      bl #0x30e2e0
0040e1bc  00 70 a0 e1                                      mov r7, r0
0040e1c0  f5 00 d5 e5                                      ldrb r0, [r5, #0xf5]
0040e1c4  45 00 fc eb                                      bl #0x30e2e0
0040e1c8  00 60 a0 e1                                      mov r6, r0
0040e1cc  f6 00 d5 e5                                      ldrb r0, [r5, #0xf6]
0040e1d0  42 00 fc eb                                      bl #0x30e2e0
0040e1d4  00 50 a0 e1                                      mov r5, r0
0040e1d8  04 00 a0 e1                                      mov r0, r4
0040e1dc  b1 84 ff eb                                      bl #0x3ef4a8
0040e1e0  e8 51 80 e5                                      str r5, [r0, #0x1e8]
0040e1e4  e0 71 80 e5                                      str r7, [r0, #0x1e0]
0040e1e8  e4 61 80 e5                                      str r6, [r0, #0x1e4]
0040e1ec  04 00 a0 e1                                      mov r0, r4
0040e1f0  ac 84 ff eb                                      bl #0x3ef4a8
0040e1f4  f4 51 80 e5                                      str r5, [r0, #0x1f4]
0040e1f8  ec 71 80 e5                                      str r7, [r0, #0x1ec]
0040e1fc  f0 61 80 e5                                      str r6, [r0, #0x1f0]
0040e200  2d ff ff ea                                      b #0x40debc
0040e204  94 00 9f e5                                      ldr r0, [pc, #0x94]
0040e208  06 10 a0 e1                                      mov r1, r6
0040e20c  08 20 a0 e3                                      mov r2, #8
0040e210  00 00 8f e0                                      add r0, pc, r0
0040e214  98 02 fc eb                                      bl #0x30ec7c
0040e218  00 00 50 e3                                      cmp r0, #0
0040e21c  a8 ff ff 0a                                      beq #0x40e0c4
0040e220  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
0040e224  06 10 a0 e1                                      mov r1, r6
0040e228  12 20 a0 e3                                      mov r2, #0x12
0040e22c  00 00 8f e0                                      add r0, pc, r0
0040e230  91 02 fc eb                                      bl #0x30ec7c
0040e234  00 60 50 e2                                      subs r6, r0, #0
0040e238  1f ff ff 1a                                      bne #0x40debc
0040e23c  58 30 9f e5                                      ldr r3, [pc, #0x58]
0040e240  03 40 94 e7                                      ldr r4, [r4, r3]
0040e244  04 00 a0 e1                                      mov r0, r4
0040e248  d1 44 fc eb                                      bl #0x31f594
0040e24c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0040e250  1c 21 95 e5                                      ldr r2, [r5, #0x11c]
0040e254  00 00 50 e3                                      cmp r0, #0
0040e258  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0040e25c  58 24 83 e5                                      str r2, [r3, #0x458]
0040e260  20 21 95 e5                                      ldr r2, [r5, #0x120]
0040e264  5c 24 83 e5                                      str r2, [r3, #0x45c]
0040e268  24 21 95 e5                                      ldr r2, [r5, #0x124]
0040e26c  60 24 83 e5                                      str r2, [r3, #0x460]
0040e270  11 ff ff 0a                                      beq #0x40debc
0040e274  06 10 a0 e1                                      mov r1, r6
0040e278  6c 8c ff eb                                      bl #0x3f1430
0040e27c  0e ff ff ea                                      b #0x40debc
; mapping-symbol data/literal pool
0040e280  e8 9f 4b 00 1c 6c 58 00 88 9f 4b 00 00 9f 4b 00  .byte 0xe8, 0x9f, 0x4b, 0x00, 0x1c, 0x6c, 0x58, 0x00, 0x88, 0x9f, 0x4b, 0x00, 0x00, 0x9f, 0x4b, 0x00
0040e290  f4 9e 4b 00 18 16 4b 00 0c 16 4b 00 f4 37 00 00  .byte 0xf4, 0x9e, 0x4b, 0x00, 0x18, 0x16, 0x4b, 0x00, 0x0c, 0x16, 0x4b, 0x00, 0xf4, 0x37, 0x00, 0x00
0040e2a0  c0 14 4b 00 5c 9c 4b 00                          .byte 0xc0, 0x14, 0x4b, 0x00, 0x5c, 0x9c, 0x4b, 0x00

; FUNCTION 0x0040e4c4, declared_size=84, range_size=84, mode=arm
; class-group: PlayerLightTweaker
; alias: _ZN18PlayerLightTweakerD1Ev
; demangled: PlayerLightTweaker::~PlayerLightTweaker()
; decoder-mode: arm
0040e4c4  44 30 9f e5                                      ldr r3, [pc, #0x44]
0040e4c8  44 20 9f e5                                      ldr r2, [pc, #0x44]
0040e4cc  10 40 2d e9                                      push {r4, lr}
0040e4d0  03 30 8f e0                                      add r3, pc, r3
0040e4d4  02 20 93 e7                                      ldr r2, [r3, r2]
0040e4d8  00 10 a0 e1                                      mov r1, r0
0040e4dc  00 40 a0 e1                                      mov r4, r0
0040e4e0  08 20 82 e2                                      add r2, r2, #8
0040e4e4  f8 20 81 e4                                      str r2, [r1], #0xf8
0040e4e8  14 00 91 e5                                      ldr r0, [r1, #0x14]
0040e4ec  01 00 50 e1                                      cmp r0, r1
0040e4f0  02 00 00 0a                                      beq #0x40e500
0040e4f4  00 00 50 e3                                      cmp r0, #0
0040e4f8  00 00 00 0a                                      beq #0x40e500
0040e4fc  d3 07 fc eb                                      bl #0x310450
0040e500  04 00 a0 e1                                      mov r0, r4
0040e504  69 d9 ff eb                                      bl #0x404ab0
0040e508  04 00 a0 e1                                      mov r0, r4
0040e50c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040e510  c0 65 58 00 78 47 00 00                          .byte 0xc0, 0x65, 0x58, 0x00, 0x78, 0x47, 0x00, 0x00

; FUNCTION 0x0040e518, declared_size=92, range_size=92, mode=arm
; class-group: PlayerLightTweaker
; alias: _ZN18PlayerLightTweakerD0Ev
; demangled: PlayerLightTweaker::~PlayerLightTweaker()
; decoder-mode: arm
0040e518  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0040e51c  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0040e520  10 40 2d e9                                      push {r4, lr}
0040e524  03 30 8f e0                                      add r3, pc, r3
0040e528  02 20 93 e7                                      ldr r2, [r3, r2]
0040e52c  00 10 a0 e1                                      mov r1, r0
0040e530  00 40 a0 e1                                      mov r4, r0
0040e534  08 20 82 e2                                      add r2, r2, #8
0040e538  f8 20 81 e4                                      str r2, [r1], #0xf8
0040e53c  14 00 91 e5                                      ldr r0, [r1, #0x14]
0040e540  01 00 50 e1                                      cmp r0, r1
0040e544  02 00 00 0a                                      beq #0x40e554
0040e548  00 00 50 e3                                      cmp r0, #0
0040e54c  00 00 00 0a                                      beq #0x40e554
0040e550  be 07 fc eb                                      bl #0x310450
0040e554  04 00 a0 e1                                      mov r0, r4
0040e558  54 d9 ff eb                                      bl #0x404ab0
0040e55c  04 00 a0 e1                                      mov r0, r4
0040e560  b6 07 fc eb                                      bl #0x310440
0040e564  04 00 a0 e1                                      mov r0, r4
0040e568  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040e56c  6c 65 58 00 78 47 00 00                          .byte 0x6c, 0x65, 0x58, 0x00, 0x78, 0x47, 0x00, 0x00
