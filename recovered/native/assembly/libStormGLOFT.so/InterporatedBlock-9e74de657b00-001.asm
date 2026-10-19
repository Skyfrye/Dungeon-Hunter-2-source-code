; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0003e57c, declared_size=340, range_size=340, mode=arm
; class-group: InterporatedBlock
; alias: _ZNK17InterporatedBlock3GetEPm
; demangled: InterporatedBlock::Get(unsigned long*) const
; decoder-mode: arm
0003e57c  f0 48 2d e9                                      push {r4, r5, r6, r7, fp, lr}
0003e580  10 b0 8d e2                                      add fp, sp, #0x10
0003e584  88 d0 4d e2                                      sub sp, sp, #0x88
0003e588  00 50 a0 e1                                      mov r5, r0
0003e58c  34 01 9f e5                                      ldr r0, [pc, #0x134]
0003e590  01 40 a0 e1                                      mov r4, r1
0003e594  44 10 8d e2                                      add r1, sp, #0x44
0003e598  00 00 9f e7                                      ldr r0, [pc, r0]
0003e59c  00 00 90 e5                                      ldr r0, [r0]
0003e5a0  14 00 0b e5                                      str r0, [fp, #-0x14]
0003e5a4  08 00 85 e2                                      add r0, r5, #8
0003e5a8  7b cf ff eb                                      bl #0x3239c
0003e5ac  04 10 8d e2                                      add r1, sp, #4
0003e5b0  05 00 a0 e1                                      mov r0, r5
0003e5b4  84 cf ff eb                                      bl #0x323cc
0003e5b8  04 00 9d e5                                      ldr r0, [sp, #4]
0003e5bc  44 10 9d e5                                      ldr r1, [sp, #0x44]
0003e5c0  48 20 9d e5                                      ldr r2, [sp, #0x48]
0003e5c4  00 cc 81 e1                                      orr ip, r1, r0, lsl #24
0003e5c8  08 10 9d e5                                      ldr r1, [sp, #8]
0003e5cc  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0003e5d0  50 50 9d e5                                      ldr r5, [sp, #0x50]
0003e5d4  01 ec 82 e1                                      orr lr, r2, r1, lsl #24
0003e5d8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0003e5dc  54 00 9d e5                                      ldr r0, [sp, #0x54]
0003e5e0  58 10 9d e5                                      ldr r1, [sp, #0x58]
0003e5e4  02 2c 83 e1                                      orr r2, r3, r2, lsl #24
0003e5e8  10 30 9d e5                                      ldr r3, [sp, #0x10]
0003e5ec  5c 60 9d e5                                      ldr r6, [sp, #0x5c]
0003e5f0  60 70 9d e5                                      ldr r7, [sp, #0x60]
0003e5f4  03 3c 85 e1                                      orr r3, r5, r3, lsl #24
0003e5f8  14 50 9d e5                                      ldr r5, [sp, #0x14]
0003e5fc  05 0c 80 e1                                      orr r0, r0, r5, lsl #24
0003e600  18 50 9d e5                                      ldr r5, [sp, #0x18]
0003e604  05 1c 81 e1                                      orr r1, r1, r5, lsl #24
0003e608  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
0003e60c  05 5c 86 e1                                      orr r5, r6, r5, lsl #24
0003e610  20 60 9d e5                                      ldr r6, [sp, #0x20]
0003e614  00 50 84 e8                                      stm r4, {ip, lr}
0003e618  08 20 84 e5                                      str r2, [r4, #8]
0003e61c  06 6c 87 e1                                      orr r6, r7, r6, lsl #24
0003e620  10 20 84 e2                                      add r2, r4, #0x10
0003e624  0c 30 84 e5                                      str r3, [r4, #0xc]
0003e628  63 00 82 e8                                      stm r2, {r0, r1, r5, r6}
0003e62c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0003e630  64 10 9d e5                                      ldr r1, [sp, #0x64]
0003e634  68 20 9d e5                                      ldr r2, [sp, #0x68]
0003e638  00 cc 81 e1                                      orr ip, r1, r0, lsl #24
0003e63c  28 10 9d e5                                      ldr r1, [sp, #0x28]
0003e640  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
0003e644  70 70 9d e5                                      ldr r7, [sp, #0x70]
0003e648  01 ec 82 e1                                      orr lr, r2, r1, lsl #24
0003e64c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0003e650  74 60 9d e5                                      ldr r6, [sp, #0x74]
0003e654  78 50 9d e5                                      ldr r5, [sp, #0x78]
0003e658  02 2c 83 e1                                      orr r2, r3, r2, lsl #24
0003e65c  30 30 9d e5                                      ldr r3, [sp, #0x30]
0003e660  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0003e664  80 10 9d e5                                      ldr r1, [sp, #0x80]
0003e668  03 3c 87 e1                                      orr r3, r7, r3, lsl #24
0003e66c  34 70 9d e5                                      ldr r7, [sp, #0x34]
0003e670  07 7c 86 e1                                      orr r7, r6, r7, lsl #24
0003e674  38 60 9d e5                                      ldr r6, [sp, #0x38]
0003e678  06 6c 85 e1                                      orr r6, r5, r6, lsl #24
0003e67c  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
0003e680  05 0c 80 e1                                      orr r0, r0, r5, lsl #24
0003e684  40 50 9d e5                                      ldr r5, [sp, #0x40]
0003e688  20 c0 84 e5                                      str ip, [r4, #0x20]
0003e68c  28 c0 84 e2                                      add ip, r4, #0x28
0003e690  24 e0 84 e5                                      str lr, [r4, #0x24]
0003e694  8c 00 8c e8                                      stm ip, {r2, r3, r7}
0003e698  05 1c 81 e1                                      orr r1, r1, r5, lsl #24
0003e69c  34 60 84 e5                                      str r6, [r4, #0x34]
0003e6a0  38 00 84 e5                                      str r0, [r4, #0x38]
0003e6a4  20 00 9f e5                                      ldr r0, [pc, #0x20]
0003e6a8  3c 10 84 e5                                      str r1, [r4, #0x3c]
0003e6ac  14 10 1b e5                                      ldr r1, [fp, #-0x14]
0003e6b0  00 00 9f e7                                      ldr r0, [pc, r0]
0003e6b4  00 00 90 e5                                      ldr r0, [r0]
0003e6b8  01 00 50 e0                                      subs r0, r0, r1
0003e6bc  10 d0 4b 02                                      subeq sp, fp, #0x10
0003e6c0  f0 88 bd 08                                      popeq {r4, r5, r6, r7, fp, pc}
0003e6c4  65 ce ff eb                                      bl #0x32060
0003e6c8  18 df 09 00                                      andeq sp, sb, r8, lsl pc
0003e6cc  00 de 09 00                                      andeq sp, sb, r0, lsl #28
