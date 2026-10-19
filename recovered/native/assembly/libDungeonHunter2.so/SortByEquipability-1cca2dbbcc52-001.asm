; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fd5d0, declared_size=1024, range_size=1024, mode=arm
; class-group: SortByEquipability
; alias: _ZN18SortByEquipabilityclERKN13ItemInventory4ItemES3_
; demangled: SortByEquipability::operator()(ItemInventory::Item const&, ItemInventory::Item const&)
; decoder-mode: arm
003fd5d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003fd5d4  01 70 a0 e1                                      mov r7, r1
003fd5d8  1c d0 4d e2                                      sub sp, sp, #0x1c
003fd5dc  00 40 a0 e1                                      mov r4, r0
003fd5e0  00 10 90 e5                                      ldr r1, [r0]
003fd5e4  00 00 97 e5                                      ldr r0, [r7]
003fd5e8  02 80 a0 e1                                      mov r8, r2
003fd5ec  4f f3 ff eb                                      bl #0x3fa330
003fd5f0  04 00 8d e5                                      str r0, [sp, #4]
003fd5f4  00 10 94 e5                                      ldr r1, [r4]
003fd5f8  00 00 98 e5                                      ldr r0, [r8]
003fd5fc  4b f3 ff eb                                      bl #0x3fa330
003fd600  78 53 9f e5                                      ldr r5, [pc, #0x378]
003fd604  78 93 9f e5                                      ldr sb, [pc, #0x378]
003fd608  78 63 9f e5                                      ldr r6, [pc, #0x378]
003fd60c  05 50 8f e0                                      add r5, pc, r5
003fd610  09 b0 95 e7                                      ldr fp, [r5, sb]
003fd614  70 23 9f e5                                      ldr r2, [pc, #0x370]
003fd618  06 60 8f e0                                      add r6, pc, r6
003fd61c  0c 00 8d e5                                      str r0, [sp, #0xc]
003fd620  02 20 8f e0                                      add r2, pc, r2
003fd624  2c 00 9b e5                                      ldr r0, [fp, #0x2c]
003fd628  06 10 a0 e1                                      mov r1, r6
003fd62c  04 a0 94 e5                                      ldr sl, [r4, #4]
003fd630  69 1d 03 eb                                      bl #0x4c4bdc
003fd634  00 00 5a e1                                      cmp sl, r0
003fd638  a8 00 00 0a                                      beq #0x3fd8e0
003fd63c  4c 23 9f e5                                      ldr r2, [pc, #0x34c]
003fd640  06 10 a0 e1                                      mov r1, r6
003fd644  2c 00 9b e5                                      ldr r0, [fp, #0x2c]
003fd648  02 20 8f e0                                      add r2, pc, r2
003fd64c  04 60 94 e5                                      ldr r6, [r4, #4]
003fd650  61 1d 03 eb                                      bl #0x4c4bdc
003fd654  00 00 56 e1                                      cmp r6, r0
003fd658  00 20 a0 13                                      movne r2, #0
003fd65c  08 20 8d 15                                      strne r2, [sp, #8]
003fd660  9e 00 00 0a                                      beq #0x3fd8e0
003fd664  28 63 9f e5                                      ldr r6, [pc, #0x328]
003fd668  09 b0 95 e7                                      ldr fp, [r5, sb]
003fd66c  24 23 9f e5                                      ldr r2, [pc, #0x324]
003fd670  06 60 8f e0                                      add r6, pc, r6
003fd674  2c 00 9b e5                                      ldr r0, [fp, #0x2c]
003fd678  02 20 8f e0                                      add r2, pc, r2
003fd67c  06 10 a0 e1                                      mov r1, r6
003fd680  04 a0 94 e5                                      ldr sl, [r4, #4]
003fd684  54 1d 03 eb                                      bl #0x4c4bdc
003fd688  00 00 5a e1                                      cmp sl, r0
003fd68c  5b 00 00 0a                                      beq #0x3fd800
003fd690  04 23 9f e5                                      ldr r2, [pc, #0x304]
003fd694  06 10 a0 e1                                      mov r1, r6
003fd698  2c 00 9b e5                                      ldr r0, [fp, #0x2c]
003fd69c  02 20 8f e0                                      add r2, pc, r2
003fd6a0  04 60 94 e5                                      ldr r6, [r4, #4]
003fd6a4  4c 1d 03 eb                                      bl #0x4c4bdc
003fd6a8  00 00 56 e1                                      cmp r6, r0
003fd6ac  00 30 a0 13                                      movne r3, #0
003fd6b0  52 00 00 0a                                      beq #0x3fd800
003fd6b4  08 20 9d e5                                      ldr r2, [sp, #8]
003fd6b8  00 00 52 e3                                      cmp r2, #0
003fd6bc  53 00 00 1a                                      bne #0x3fd810
003fd6c0  00 00 53 e3                                      cmp r3, #0
003fd6c4  88 00 00 0a                                      beq #0x3fd8ec
003fd6c8  d0 62 9f e5                                      ldr r6, [pc, #0x2d0]
003fd6cc  09 a0 95 e7                                      ldr sl, [r5, sb]
003fd6d0  cc 22 9f e5                                      ldr r2, [pc, #0x2cc]
003fd6d4  06 60 8f e0                                      add r6, pc, r6
003fd6d8  06 10 a0 e1                                      mov r1, r6
003fd6dc  02 20 8f e0                                      add r2, pc, r2
003fd6e0  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
003fd6e4  00 b0 94 e5                                      ldr fp, [r4]
003fd6e8  3b 1d 03 eb                                      bl #0x4c4bdc
003fd6ec  df bf 8b e2                                      add fp, fp, #0x37c
003fd6f0  00 10 a0 e1                                      mov r1, r0
003fd6f4  0b 00 a0 e1                                      mov r0, fp
003fd6f8  cf 09 00 eb                                      bl #0x3ffe3c
003fd6fc  00 30 97 e5                                      ldr r3, [r7]
003fd700  00 00 53 e1                                      cmp r3, r0
003fd704  90 00 00 0a                                      beq #0x3fd94c
003fd708  98 22 9f e5                                      ldr r2, [pc, #0x298]
003fd70c  00 30 94 e5                                      ldr r3, [r4]
003fd710  06 10 a0 e1                                      mov r1, r6
003fd714  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
003fd718  02 20 8f e0                                      add r2, pc, r2
003fd71c  df af 83 e2                                      add sl, r3, #0x37c
003fd720  2d 1d 03 eb                                      bl #0x4c4bdc
003fd724  00 10 a0 e1                                      mov r1, r0
003fd728  0a 00 a0 e1                                      mov r0, sl
003fd72c  c2 09 00 eb                                      bl #0x3ffe3c
003fd730  00 30 97 e5                                      ldr r3, [r7]
003fd734  00 00 53 e1                                      cmp r3, r0
003fd738  08 60 9d 15                                      ldrne r6, [sp, #8]
003fd73c  82 00 00 0a                                      beq #0x3fd94c
003fd740  64 a2 9f e5                                      ldr sl, [pc, #0x264]
003fd744  09 50 95 e7                                      ldr r5, [r5, sb]
003fd748  60 22 9f e5                                      ldr r2, [pc, #0x260]
003fd74c  0a a0 8f e0                                      add sl, pc, sl
003fd750  0a 10 a0 e1                                      mov r1, sl
003fd754  02 20 8f e0                                      add r2, pc, r2
003fd758  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
003fd75c  00 90 94 e5                                      ldr sb, [r4]
003fd760  1d 1d 03 eb                                      bl #0x4c4bdc
003fd764  df 9f 89 e2                                      add sb, sb, #0x37c
003fd768  00 10 a0 e1                                      mov r1, r0
003fd76c  09 00 a0 e1                                      mov r0, sb
003fd770  b1 09 00 eb                                      bl #0x3ffe3c
003fd774  00 30 98 e5                                      ldr r3, [r8]
003fd778  00 00 53 e1                                      cmp r3, r0
003fd77c  0d 00 00 0a                                      beq #0x3fd7b8
003fd780  00 30 94 e5                                      ldr r3, [r4]
003fd784  28 22 9f e5                                      ldr r2, [pc, #0x228]
003fd788  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
003fd78c  df 5f 83 e2                                      add r5, r3, #0x37c
003fd790  02 20 8f e0                                      add r2, pc, r2
003fd794  0a 10 a0 e1                                      mov r1, sl
003fd798  0f 1d 03 eb                                      bl #0x4c4bdc
003fd79c  00 10 a0 e1                                      mov r1, r0
003fd7a0  05 00 a0 e1                                      mov r0, r5
003fd7a4  a4 09 00 eb                                      bl #0x3ffe3c
003fd7a8  00 30 98 e5                                      ldr r3, [r8]
003fd7ac  00 00 53 e1                                      cmp r3, r0
003fd7b0  00 30 a0 13                                      movne r3, #0
003fd7b4  5b 00 00 1a                                      bne #0x3fd928
003fd7b8  00 00 56 e3                                      cmp r6, #0
003fd7bc  01 30 a0 e3                                      mov r3, #1
003fd7c0  5a 00 00 1a                                      bne #0x3fd930
003fd7c4  00 00 53 e3                                      cmp r3, #0
003fd7c8  04 60 8d 15                                      strne r6, [sp, #4]
003fd7cc  5b 00 00 1a                                      bne #0x3fd940
003fd7d0  04 20 9d e5                                      ldr r2, [sp, #4]
003fd7d4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003fd7d8  03 00 52 e1                                      cmp r2, r3
003fd7dc  57 00 00 1a                                      bne #0x3fd940
003fd7e0  00 30 94 e5                                      ldr r3, [r4]
003fd7e4  18 00 8d e2                                      add r0, sp, #0x18
003fd7e8  07 10 a0 e1                                      mov r1, r7
003fd7ec  04 30 20 e5                                      str r3, [r0, #-4]!
003fd7f0  08 20 a0 e1                                      mov r2, r8
003fd7f4  7b fe ff eb                                      bl #0x3fd1e8
003fd7f8  04 00 8d e5                                      str r0, [sp, #4]
003fd7fc  4f 00 00 ea                                      b #0x3fd940
003fd800  08 20 9d e5                                      ldr r2, [sp, #8]
003fd804  01 30 a0 e3                                      mov r3, #1
003fd808  00 00 52 e3                                      cmp r2, #0
003fd80c  ab ff ff 0a                                      beq #0x3fd6c0
003fd810  a0 61 9f e5                                      ldr r6, [pc, #0x1a0]
003fd814  09 a0 95 e7                                      ldr sl, [r5, sb]
003fd818  9c 21 9f e5                                      ldr r2, [pc, #0x19c]
003fd81c  06 60 8f e0                                      add r6, pc, r6
003fd820  06 10 a0 e1                                      mov r1, r6
003fd824  02 20 8f e0                                      add r2, pc, r2
003fd828  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
003fd82c  00 b0 94 e5                                      ldr fp, [r4]
003fd830  e9 1c 03 eb                                      bl #0x4c4bdc
003fd834  df bf 8b e2                                      add fp, fp, #0x37c
003fd838  00 10 a0 e1                                      mov r1, r0
003fd83c  0b 00 a0 e1                                      mov r0, fp
003fd840  7d 09 00 eb                                      bl #0x3ffe3c
003fd844  00 30 97 e5                                      ldr r3, [r7]
003fd848  00 00 53 e1                                      cmp r3, r0
003fd84c  49 00 00 0a                                      beq #0x3fd978
003fd850  68 21 9f e5                                      ldr r2, [pc, #0x168]
003fd854  00 30 94 e5                                      ldr r3, [r4]
003fd858  06 10 a0 e1                                      mov r1, r6
003fd85c  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
003fd860  02 20 8f e0                                      add r2, pc, r2
003fd864  df af 83 e2                                      add sl, r3, #0x37c
003fd868  db 1c 03 eb                                      bl #0x4c4bdc
003fd86c  00 10 a0 e1                                      mov r1, r0
003fd870  0a 00 a0 e1                                      mov r0, sl
003fd874  70 09 00 eb                                      bl #0x3ffe3c
003fd878  00 30 97 e5                                      ldr r3, [r7]
003fd87c  00 00 53 e1                                      cmp r3, r0
003fd880  00 60 a0 13                                      movne r6, #0
003fd884  3b 00 00 0a                                      beq #0x3fd978
003fd888  34 a1 9f e5                                      ldr sl, [pc, #0x134]
003fd88c  09 50 95 e7                                      ldr r5, [r5, sb]
003fd890  30 21 9f e5                                      ldr r2, [pc, #0x130]
003fd894  0a a0 8f e0                                      add sl, pc, sl
003fd898  0a 10 a0 e1                                      mov r1, sl
003fd89c  02 20 8f e0                                      add r2, pc, r2
003fd8a0  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
003fd8a4  00 90 94 e5                                      ldr sb, [r4]
003fd8a8  cb 1c 03 eb                                      bl #0x4c4bdc
003fd8ac  df 9f 89 e2                                      add sb, sb, #0x37c
003fd8b0  00 10 a0 e1                                      mov r1, r0
003fd8b4  09 00 a0 e1                                      mov r0, sb
003fd8b8  5f 09 00 eb                                      bl #0x3ffe3c
003fd8bc  00 30 98 e5                                      ldr r3, [r8]
003fd8c0  00 00 53 e1                                      cmp r3, r0
003fd8c4  bb ff ff 0a                                      beq #0x3fd7b8
003fd8c8  00 30 94 e5                                      ldr r3, [r4]
003fd8cc  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
003fd8d0  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
003fd8d4  df 5f 83 e2                                      add r5, r3, #0x37c
003fd8d8  02 20 8f e0                                      add r2, pc, r2
003fd8dc  ac ff ff ea                                      b #0x3fd794
003fd8e0  01 30 a0 e3                                      mov r3, #1
003fd8e4  08 30 8d e5                                      str r3, [sp, #8]
003fd8e8  5d ff ff ea                                      b #0x3fd664
003fd8ec  03 00 94 e8                                      ldm r4, {r0, r1}
003fd8f0  df 0f 80 e2                                      add r0, r0, #0x37c
003fd8f4  50 09 00 eb                                      bl #0x3ffe3c
003fd8f8  00 30 94 e5                                      ldr r3, [r4]
003fd8fc  00 60 97 e5                                      ldr r6, [r7]
003fd900  04 10 94 e5                                      ldr r1, [r4, #4]
003fd904  00 00 56 e1                                      cmp r6, r0
003fd908  00 60 a0 13                                      movne r6, #0
003fd90c  01 60 a0 03                                      moveq r6, #1
003fd910  df 0f 83 e2                                      add r0, r3, #0x37c
003fd914  48 09 00 eb                                      bl #0x3ffe3c
003fd918  00 30 98 e5                                      ldr r3, [r8]
003fd91c  00 00 53 e1                                      cmp r3, r0
003fd920  00 30 a0 13                                      movne r3, #0
003fd924  01 30 a0 03                                      moveq r3, #1
003fd928  00 00 56 e3                                      cmp r6, #0
003fd92c  a4 ff ff 0a                                      beq #0x3fd7c4
003fd930  00 00 53 e3                                      cmp r3, #0
003fd934  01 30 a0 03                                      moveq r3, #1
003fd938  04 30 8d 05                                      streq r3, [sp, #4]
003fd93c  04 00 00 1a                                      bne #0x3fd954
003fd940  04 00 9d e5                                      ldr r0, [sp, #4]
003fd944  1c d0 8d e2                                      add sp, sp, #0x1c
003fd948  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003fd94c  01 60 a0 e3                                      mov r6, #1
003fd950  7a ff ff ea                                      b #0x3fd740
003fd954  03 00 94 e8                                      ldm r4, {r0, r1}
003fd958  df 0f 80 e2                                      add r0, r0, #0x37c
003fd95c  36 09 00 eb                                      bl #0x3ffe3c
003fd960  00 30 97 e5                                      ldr r3, [r7]
003fd964  00 00 53 e1                                      cmp r3, r0
003fd968  00 30 a0 13                                      movne r3, #0
003fd96c  01 30 a0 03                                      moveq r3, #1
003fd970  04 30 8d e5                                      str r3, [sp, #4]
003fd974  f1 ff ff ea                                      b #0x3fd940
003fd978  01 60 a0 e3                                      mov r6, #1
003fd97c  c1 ff ff ea                                      b #0x3fd888
; mapping-symbol data/literal pool
003fd980  84 74 59 00 f4 37 00 00 10 9d 4c 00 18 9d 4c 00  .byte 0x84, 0x74, 0x59, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x10, 0x9d, 0x4c, 0x00, 0x18, 0x9d, 0x4c, 0x00
003fd990  00 9d 4c 00 b8 9c 4c 00 e0 9c 4c 00 d4 9c 4c 00  .byte 0x00, 0x9d, 0x4c, 0x00, 0xb8, 0x9c, 0x4c, 0x00, 0xe0, 0x9c, 0x4c, 0x00, 0xd4, 0x9c, 0x4c, 0x00
003fd9a0  54 9c 4c 00 7c 9c 4c 00 58 9c 4c 00 dc 9b 4c 00  .byte 0x54, 0x9c, 0x4c, 0x00, 0x7c, 0x9c, 0x4c, 0x00, 0x58, 0x9c, 0x4c, 0x00, 0xdc, 0x9b, 0x4c, 0x00
003fd9b0  04 9c 4c 00 e0 9b 4c 00 0c 9b 4c 00 14 9b 4c 00  .byte 0x04, 0x9c, 0x4c, 0x00, 0xe0, 0x9b, 0x4c, 0x00, 0x0c, 0x9b, 0x4c, 0x00, 0x14, 0x9b, 0x4c, 0x00
003fd9c0  e8 9a 4c 00 94 9a 4c 00 9c 9a 4c 00 70 9a 4c 00  .byte 0xe8, 0x9a, 0x4c, 0x00, 0x94, 0x9a, 0x4c, 0x00, 0x9c, 0x9a, 0x4c, 0x00, 0x70, 0x9a, 0x4c, 0x00
