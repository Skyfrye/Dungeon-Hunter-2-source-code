; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0003e428, declared_size=340, range_size=340, mode=arm
; class-group: ExplicitBlock
; alias: _ZNK13ExplicitBlock3GetEPm
; demangled: ExplicitBlock::Get(unsigned long*) const
; decoder-mode: arm
0003e428  f0 48 2d e9                                      push {r4, r5, r6, r7, fp, lr}
0003e42c  10 b0 8d e2                                      add fp, sp, #0x10
0003e430  88 d0 4d e2                                      sub sp, sp, #0x88
0003e434  00 50 a0 e1                                      mov r5, r0
0003e438  34 01 9f e5                                      ldr r0, [pc, #0x134]
0003e43c  01 40 a0 e1                                      mov r4, r1
0003e440  44 10 8d e2                                      add r1, sp, #0x44
0003e444  00 00 9f e7                                      ldr r0, [pc, r0]
0003e448  00 00 90 e5                                      ldr r0, [r0]
0003e44c  14 00 0b e5                                      str r0, [fp, #-0x14]
0003e450  08 00 85 e2                                      add r0, r5, #8
0003e454  d0 cf ff eb                                      bl #0x3239c
0003e458  04 10 8d e2                                      add r1, sp, #4
0003e45c  05 00 a0 e1                                      mov r0, r5
0003e460  d6 cf ff eb                                      bl #0x323c0
0003e464  04 00 9d e5                                      ldr r0, [sp, #4]
0003e468  44 10 9d e5                                      ldr r1, [sp, #0x44]
0003e46c  48 20 9d e5                                      ldr r2, [sp, #0x48]
0003e470  00 cc 81 e1                                      orr ip, r1, r0, lsl #24
0003e474  08 10 9d e5                                      ldr r1, [sp, #8]
0003e478  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0003e47c  50 50 9d e5                                      ldr r5, [sp, #0x50]
0003e480  01 ec 82 e1                                      orr lr, r2, r1, lsl #24
0003e484  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0003e488  54 00 9d e5                                      ldr r0, [sp, #0x54]
0003e48c  58 10 9d e5                                      ldr r1, [sp, #0x58]
0003e490  02 2c 83 e1                                      orr r2, r3, r2, lsl #24
0003e494  10 30 9d e5                                      ldr r3, [sp, #0x10]
0003e498  5c 60 9d e5                                      ldr r6, [sp, #0x5c]
0003e49c  60 70 9d e5                                      ldr r7, [sp, #0x60]
0003e4a0  03 3c 85 e1                                      orr r3, r5, r3, lsl #24
0003e4a4  14 50 9d e5                                      ldr r5, [sp, #0x14]
0003e4a8  05 0c 80 e1                                      orr r0, r0, r5, lsl #24
0003e4ac  18 50 9d e5                                      ldr r5, [sp, #0x18]
0003e4b0  05 1c 81 e1                                      orr r1, r1, r5, lsl #24
0003e4b4  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
0003e4b8  05 5c 86 e1                                      orr r5, r6, r5, lsl #24
0003e4bc  20 60 9d e5                                      ldr r6, [sp, #0x20]
0003e4c0  00 50 84 e8                                      stm r4, {ip, lr}
0003e4c4  08 20 84 e5                                      str r2, [r4, #8]
0003e4c8  06 6c 87 e1                                      orr r6, r7, r6, lsl #24
0003e4cc  10 20 84 e2                                      add r2, r4, #0x10
0003e4d0  0c 30 84 e5                                      str r3, [r4, #0xc]
0003e4d4  63 00 82 e8                                      stm r2, {r0, r1, r5, r6}
0003e4d8  24 00 9d e5                                      ldr r0, [sp, #0x24]
0003e4dc  64 10 9d e5                                      ldr r1, [sp, #0x64]
0003e4e0  68 20 9d e5                                      ldr r2, [sp, #0x68]
0003e4e4  00 cc 81 e1                                      orr ip, r1, r0, lsl #24
0003e4e8  28 10 9d e5                                      ldr r1, [sp, #0x28]
0003e4ec  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
0003e4f0  70 70 9d e5                                      ldr r7, [sp, #0x70]
0003e4f4  01 ec 82 e1                                      orr lr, r2, r1, lsl #24
0003e4f8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0003e4fc  74 60 9d e5                                      ldr r6, [sp, #0x74]
0003e500  78 50 9d e5                                      ldr r5, [sp, #0x78]
0003e504  02 2c 83 e1                                      orr r2, r3, r2, lsl #24
0003e508  30 30 9d e5                                      ldr r3, [sp, #0x30]
0003e50c  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0003e510  80 10 9d e5                                      ldr r1, [sp, #0x80]
0003e514  03 3c 87 e1                                      orr r3, r7, r3, lsl #24
0003e518  34 70 9d e5                                      ldr r7, [sp, #0x34]
0003e51c  07 7c 86 e1                                      orr r7, r6, r7, lsl #24
0003e520  38 60 9d e5                                      ldr r6, [sp, #0x38]
0003e524  06 6c 85 e1                                      orr r6, r5, r6, lsl #24
0003e528  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
0003e52c  05 0c 80 e1                                      orr r0, r0, r5, lsl #24
0003e530  40 50 9d e5                                      ldr r5, [sp, #0x40]
0003e534  20 c0 84 e5                                      str ip, [r4, #0x20]
0003e538  28 c0 84 e2                                      add ip, r4, #0x28
0003e53c  24 e0 84 e5                                      str lr, [r4, #0x24]
0003e540  8c 00 8c e8                                      stm ip, {r2, r3, r7}
0003e544  05 1c 81 e1                                      orr r1, r1, r5, lsl #24
0003e548  34 60 84 e5                                      str r6, [r4, #0x34]
0003e54c  38 00 84 e5                                      str r0, [r4, #0x38]
0003e550  20 00 9f e5                                      ldr r0, [pc, #0x20]
0003e554  3c 10 84 e5                                      str r1, [r4, #0x3c]
0003e558  14 10 1b e5                                      ldr r1, [fp, #-0x14]
0003e55c  00 00 9f e7                                      ldr r0, [pc, r0]
0003e560  00 00 90 e5                                      ldr r0, [r0]
0003e564  01 00 50 e0                                      subs r0, r0, r1
0003e568  10 d0 4b 02                                      subeq sp, fp, #0x10
0003e56c  f0 88 bd 08                                      popeq {r4, r5, r6, r7, fp, pc}
0003e570  ba ce ff eb                                      bl #0x32060
0003e574  6c e0 09 00                                      andeq lr, sb, ip, rrx
0003e578  54 df 09 00                                      andeq sp, sb, r4, asr pc
