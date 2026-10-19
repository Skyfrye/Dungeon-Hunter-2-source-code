; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a6358, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::DropTilePriorityTable
; alias: _ZN6Arrays21DropTilePriorityTable13finalizeNamesEv
; demangled: Arrays::DropTilePriorityTable::finalizeNames()
; decoder-mode: arm
004a6358  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a635c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a6360  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a6364  05 50 8f e0                                      add r5, pc, r5
004a6368  06 30 95 e7                                      ldr r3, [r5, r6]
004a636c  00 30 93 e5                                      ldr r3, [r3]
004a6370  00 00 53 e3                                      cmp r3, #0
004a6374  1a 00 00 0a                                      beq #0x4a63e4
004a6378  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a637c  07 20 95 e7                                      ldr r2, [r5, r7]
004a6380  00 20 92 e5                                      ldr r2, [r2]
004a6384  00 00 52 e3                                      cmp r2, #0
004a6388  10 00 00 0a                                      beq #0x4a63d0
004a638c  00 40 a0 e3                                      mov r4, #0
004a6390  01 00 00 ea                                      b #0x4a639c
004a6394  06 30 95 e7                                      ldr r3, [r5, r6]
004a6398  00 30 93 e5                                      ldr r3, [r3]
004a639c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a63a0  01 40 84 e2                                      add r4, r4, #1
004a63a4  00 00 50 e3                                      cmp r0, #0
004a63a8  02 00 00 0a                                      beq #0x4a63b8
004a63ac  23 a8 f9 eb                                      bl #0x310440
004a63b0  06 30 95 e7                                      ldr r3, [r5, r6]
004a63b4  00 30 93 e5                                      ldr r3, [r3]
004a63b8  07 20 95 e7                                      ldr r2, [r5, r7]
004a63bc  00 20 92 e5                                      ldr r2, [r2]
004a63c0  04 00 52 e1                                      cmp r2, r4
004a63c4  f2 ff ff 8a                                      bhi #0x4a6394
004a63c8  00 00 53 e3                                      cmp r3, #0
004a63cc  01 00 00 0a                                      beq #0x4a63d8
004a63d0  03 00 a0 e1                                      mov r0, r3
004a63d4  19 a8 f9 eb                                      bl #0x310440
004a63d8  06 30 95 e7                                      ldr r3, [r5, r6]
004a63dc  00 20 a0 e3                                      mov r2, #0
004a63e0  00 20 83 e5                                      str r2, [r3]
004a63e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a63e8  2c e7 4e 00 6c 22 00 00 b4 49 00 00              .byte 0x2c, 0xe7, 0x4e, 0x00, 0x6c, 0x22, 0x00, 0x00, 0xb4, 0x49, 0x00, 0x00

; FUNCTION 0x004a63f4, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::DropTilePriorityTable
; alias: _ZN6Arrays21DropTilePriorityTable8finalizeEv
; demangled: Arrays::DropTilePriorityTable::finalize()
; decoder-mode: arm
004a63f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a63f8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a63fc  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a6400  05 50 8f e0                                      add r5, pc, r5
004a6404  07 30 95 e7                                      ldr r3, [r5, r7]
004a6408  00 30 93 e5                                      ldr r3, [r3]
004a640c  00 00 53 e3                                      cmp r3, #0
004a6410  2c 00 00 0a                                      beq #0x4a64c8
004a6414  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a6418  08 20 95 e7                                      ldr r2, [r5, r8]
004a641c  00 20 92 e5                                      ldr r2, [r2]
004a6420  00 00 52 e3                                      cmp r2, #0
004a6424  12 00 00 0a                                      beq #0x4a6474
004a6428  00 40 a0 e3                                      mov r4, #0
004a642c  04 60 a0 e1                                      mov r6, r4
004a6430  01 00 00 ea                                      b #0x4a643c
004a6434  07 30 95 e7                                      ldr r3, [r5, r7]
004a6438  00 30 93 e5                                      ldr r3, [r3]
004a643c  04 00 83 e0                                      add r0, r3, r4
004a6440  04 30 93 e7                                      ldr r3, [r3, r4]
004a6444  0f e0 a0 e1                                      mov lr, pc
004a6448  08 f0 93 e5                                      ldr pc, [r3, #8]
004a644c  08 30 95 e7                                      ldr r3, [r5, r8]
004a6450  01 60 86 e2                                      add r6, r6, #1
004a6454  0c 40 84 e2                                      add r4, r4, #0xc
004a6458  00 30 93 e5                                      ldr r3, [r3]
004a645c  06 00 53 e1                                      cmp r3, r6
004a6460  f3 ff ff 8a                                      bhi #0x4a6434
004a6464  07 30 95 e7                                      ldr r3, [r5, r7]
004a6468  00 30 93 e5                                      ldr r3, [r3]
004a646c  00 00 53 e3                                      cmp r3, #0
004a6470  11 00 00 0a                                      beq #0x4a64bc
004a6474  04 20 13 e5                                      ldr r2, [r3, #-4]
004a6478  0c 00 a0 e3                                      mov r0, #0xc
004a647c  90 32 20 e0                                      mla r0, r0, r2, r3
004a6480  00 00 53 e1                                      cmp r3, r0
004a6484  01 00 00 1a                                      bne #0x4a6490
004a6488  09 00 00 ea                                      b #0x4a64b4
004a648c  04 00 a0 e1                                      mov r0, r4
004a6490  0c 40 40 e2                                      sub r4, r0, #0xc
004a6494  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a6498  04 00 a0 e1                                      mov r0, r4
004a649c  0f e0 a0 e1                                      mov lr, pc
004a64a0  00 f0 93 e5                                      ldr pc, [r3]
004a64a4  07 30 95 e7                                      ldr r3, [r5, r7]
004a64a8  00 00 93 e5                                      ldr r0, [r3]
004a64ac  04 00 50 e1                                      cmp r0, r4
004a64b0  f5 ff ff 1a                                      bne #0x4a648c
004a64b4  08 00 40 e2                                      sub r0, r0, #8
004a64b8  e0 a7 f9 eb                                      bl #0x310440
004a64bc  07 30 95 e7                                      ldr r3, [r5, r7]
004a64c0  00 20 a0 e3                                      mov r2, #0
004a64c4  00 20 83 e5                                      str r2, [r3]
004a64c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a64cc  90 e6 4e 00 f0 38 00 00 b4 49 00 00              .byte 0x90, 0xe6, 0x4e, 0x00, 0xf0, 0x38, 0x00, 0x00, 0xb4, 0x49, 0x00, 0x00

; FUNCTION 0x004b525c, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::DropTilePriorityTable
; alias: _ZN6Arrays21DropTilePriorityTable9readNamesEP11IStreamBase
; demangled: Arrays::DropTilePriorityTable::readNames(IStreamBase*)
; decoder-mode: arm
004b525c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b5260  00 70 a0 e1                                      mov r7, r0
004b5264  1c d0 4d e2                                      sub sp, sp, #0x1c
004b5268  3a c4 ff eb                                      bl #0x4a6358
004b526c  07 00 a0 e1                                      mov r0, r7
004b5270  06 7a f9 eb                                      bl #0x313a90
004b5274  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b5278  01 30 a0 e3                                      mov r3, #1
004b527c  00 00 53 e3                                      cmp r3, #0
004b5280  06 60 8f e0                                      add r6, pc, r6
004b5284  14 00 8d e5                                      str r0, [sp, #0x14]
004b5288  0c 30 8d e5                                      str r3, [sp, #0xc]
004b528c  12 00 00 1a                                      bne #0x4b52dc
004b5290  14 30 8d e2                                      add r3, sp, #0x14
004b5294  02 20 83 e2                                      add r2, r3, #2
004b5298  01 30 83 e2                                      add r3, r3, #1
004b529c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b52a0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b52a4  03 00 52 e1                                      cmp r2, r3
004b52a8  02 40 a0 e1                                      mov r4, r2
004b52ac  01 10 20 e0                                      eor r1, r0, r1
004b52b0  01 10 43 e5                                      strb r1, [r3, #-1]
004b52b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b52b8  00 10 21 e0                                      eor r1, r1, r0
004b52bc  01 10 c2 e5                                      strb r1, [r2, #1]
004b52c0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b52c4  01 20 42 e2                                      sub r2, r2, #1
004b52c8  00 10 21 e0                                      eor r1, r1, r0
004b52cc  01 10 43 e5                                      strb r1, [r3, #-1]
004b52d0  01 30 83 e2                                      add r3, r3, #1
004b52d4  f0 ff ff 8a                                      bhi #0x4b529c
004b52d8  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b52dc  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b52e0  03 30 96 e7                                      ldr r3, [r6, r3]
004b52e4  00 30 93 e5                                      ldr r3, [r3]
004b52e8  00 00 53 e1                                      cmp r3, r0
004b52ec  01 00 00 0a                                      beq #0x4b52f8
004b52f0  1c d0 8d e2                                      add sp, sp, #0x1c
004b52f4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b52f8  00 01 a0 e1                                      lsl r0, r0, #2
004b52fc  01 10 a0 e3                                      mov r1, #1
004b5300  99 6c f9 eb                                      bl #0x31056c
004b5304  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b5308  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b530c  09 30 96 e7                                      ldr r3, [r6, sb]
004b5310  00 00 52 e3                                      cmp r2, #0
004b5314  00 00 83 e5                                      str r0, [r3]
004b5318  f4 ff ff 0a                                      beq #0x4b52f0
004b531c  10 a0 8d e2                                      add sl, sp, #0x10
004b5320  01 80 a0 e3                                      mov r8, #1
004b5324  08 10 8a e0                                      add r1, sl, r8
004b5328  02 30 8a e2                                      add r3, sl, #2
004b532c  00 40 a0 e3                                      mov r4, #0
004b5330  0a 00 8d e8                                      stm sp, {r1, r3}
004b5334  07 00 a0 e1                                      mov r0, r7
004b5338  0a 10 a0 e1                                      mov r1, sl
004b533c  97 a7 fc eb                                      bl #0x3df1a0
004b5340  00 00 58 e3                                      cmp r8, #0
004b5344  0c 80 8d e5                                      str r8, [sp, #0xc]
004b5348  0f 00 00 1a                                      bne #0x4b538c
004b534c  00 30 9d e5                                      ldr r3, [sp]
004b5350  04 20 9d e5                                      ldr r2, [sp, #4]
004b5354  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5358  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b535c  03 00 52 e1                                      cmp r2, r3
004b5360  01 10 20 e0                                      eor r1, r0, r1
004b5364  01 10 43 e5                                      strb r1, [r3, #-1]
004b5368  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b536c  00 10 21 e0                                      eor r1, r1, r0
004b5370  01 10 c2 e5                                      strb r1, [r2, #1]
004b5374  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b5378  01 20 42 e2                                      sub r2, r2, #1
004b537c  00 10 21 e0                                      eor r1, r1, r0
004b5380  01 10 43 e5                                      strb r1, [r3, #-1]
004b5384  01 30 83 e2                                      add r3, r3, #1
004b5388  f1 ff ff 8a                                      bhi #0x4b5354
004b538c  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b5390  09 50 96 e7                                      ldr r5, [r6, sb]
004b5394  01 10 a0 e3                                      mov r1, #1
004b5398  01 00 80 e0                                      add r0, r0, r1
004b539c  00 b0 95 e5                                      ldr fp, [r5]
004b53a0  71 6c f9 eb                                      bl #0x31056c
004b53a4  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b53a8  00 30 95 e5                                      ldr r3, [r5]
004b53ac  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b53b0  07 00 a0 e1                                      mov r0, r7
004b53b4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b53b8  00 30 a0 e3                                      mov r3, #0
004b53bc  24 88 f9 eb                                      bl #0x317454
004b53c0  00 30 95 e5                                      ldr r3, [r5]
004b53c4  00 10 a0 e3                                      mov r1, #0
004b53c8  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b53cc  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b53d0  01 40 84 e2                                      add r4, r4, #1
004b53d4  03 10 c2 e7                                      strb r1, [r2, r3]
004b53d8  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b53dc  04 00 53 e1                                      cmp r3, r4
004b53e0  d3 ff ff 8a                                      bhi #0x4b5334
004b53e4  c1 ff ff ea                                      b #0x4b52f0
; mapping-symbol data/literal pool
004b53e8  10 f8 4d 00 b4 49 00 00 6c 22 00 00              .byte 0x10, 0xf8, 0x4d, 0x00, 0xb4, 0x49, 0x00, 0x00, 0x6c, 0x22, 0x00, 0x00

; FUNCTION 0x004b53f4, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::DropTilePriorityTable
; alias: _ZN6Arrays21DropTilePriorityTable9skipNamesEP11IStreamBase
; demangled: Arrays::DropTilePriorityTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b53f4  98 ff ff ea                                      b #0x4b525c

; FUNCTION 0x004ba4fc, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::DropTilePriorityTable
; alias: _ZN6Arrays21DropTilePriorityTable4readEP11IStreamBase
; demangled: Arrays::DropTilePriorityTable::read(IStreamBase*)
; decoder-mode: arm
004ba4fc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004ba500  0c d0 4d e2                                      sub sp, sp, #0xc
004ba504  00 a0 a0 e1                                      mov sl, r0
004ba508  60 65 f9 eb                                      bl #0x313a90
004ba50c  24 61 9f e5                                      ldr r6, [pc, #0x124]
004ba510  01 30 a0 e3                                      mov r3, #1
004ba514  00 00 53 e3                                      cmp r3, #0
004ba518  04 00 8d e5                                      str r0, [sp, #4]
004ba51c  00 30 8d e5                                      str r3, [sp]
004ba520  06 60 8f e0                                      add r6, pc, r6
004ba524  10 00 00 1a                                      bne #0x4ba56c
004ba528  04 30 8d e2                                      add r3, sp, #4
004ba52c  02 20 83 e2                                      add r2, r3, #2
004ba530  01 30 83 e2                                      add r3, r3, #1
004ba534  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba538  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ba53c  03 00 52 e1                                      cmp r2, r3
004ba540  01 10 20 e0                                      eor r1, r0, r1
004ba544  01 10 43 e5                                      strb r1, [r3, #-1]
004ba548  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba54c  00 10 21 e0                                      eor r1, r1, r0
004ba550  01 10 c2 e5                                      strb r1, [r2, #1]
004ba554  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ba558  01 20 42 e2                                      sub r2, r2, #1
004ba55c  00 10 21 e0                                      eor r1, r1, r0
004ba560  01 10 43 e5                                      strb r1, [r3, #-1]
004ba564  01 30 83 e2                                      add r3, r3, #1
004ba568  f1 ff ff 8a                                      bhi #0x4ba534
004ba56c  a0 af ff eb                                      bl #0x4a63f4
004ba570  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004ba574  04 40 9d e5                                      ldr r4, [sp, #4]
004ba578  0c 50 a0 e3                                      mov r5, #0xc
004ba57c  07 30 96 e7                                      ldr r3, [r6, r7]
004ba580  95 04 00 e0                                      mul r0, r5, r4
004ba584  00 40 83 e5                                      str r4, [r3]
004ba588  08 00 80 e2                                      add r0, r0, #8
004ba58c  01 10 a0 e3                                      mov r1, #1
004ba590  f5 57 f9 eb                                      bl #0x31056c
004ba594  00 00 54 e3                                      cmp r4, #0
004ba598  00 50 80 e5                                      str r5, [r0]
004ba59c  04 40 80 e5                                      str r4, [r0, #4]
004ba5a0  08 30 80 e2                                      add r3, r0, #8
004ba5a4  0a 00 00 0a                                      beq #0x4ba5d4
004ba5a8  90 10 9f e5                                      ldr r1, [pc, #0x90]
004ba5ac  00 20 a0 e3                                      mov r2, #0
004ba5b0  02 c0 a0 e1                                      mov ip, r2
004ba5b4  01 10 96 e7                                      ldr r1, [r6, r1]
004ba5b8  08 10 81 e2                                      add r1, r1, #8
004ba5bc  01 20 82 e2                                      add r2, r2, #1
004ba5c0  04 00 52 e1                                      cmp r2, r4
004ba5c4  08 10 80 e5                                      str r1, [r0, #8]
004ba5c8  10 c0 80 e5                                      str ip, [r0, #0x10]
004ba5cc  0c 00 80 e2                                      add r0, r0, #0xc
004ba5d0  f9 ff ff 1a                                      bne #0x4ba5bc
004ba5d4  07 20 96 e7                                      ldr r2, [r6, r7]
004ba5d8  64 80 9f e5                                      ldr r8, [pc, #0x64]
004ba5dc  00 10 92 e5                                      ldr r1, [r2]
004ba5e0  08 20 96 e7                                      ldr r2, [r6, r8]
004ba5e4  00 00 51 e3                                      cmp r1, #0
004ba5e8  00 30 82 e5                                      str r3, [r2]
004ba5ec  0f 00 00 0a                                      beq #0x4ba630
004ba5f0  00 40 a0 e3                                      mov r4, #0
004ba5f4  04 50 a0 e1                                      mov r5, r4
004ba5f8  01 00 00 ea                                      b #0x4ba604
004ba5fc  08 30 96 e7                                      ldr r3, [r6, r8]
004ba600  00 30 93 e5                                      ldr r3, [r3]
004ba604  04 00 83 e0                                      add r0, r3, r4
004ba608  0a 10 a0 e1                                      mov r1, sl
004ba60c  04 30 93 e7                                      ldr r3, [r3, r4]
004ba610  0f e0 a0 e1                                      mov lr, pc
004ba614  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004ba618  07 30 96 e7                                      ldr r3, [r6, r7]
004ba61c  01 50 85 e2                                      add r5, r5, #1
004ba620  0c 40 84 e2                                      add r4, r4, #0xc
004ba624  00 30 93 e5                                      ldr r3, [r3]
004ba628  05 00 53 e1                                      cmp r3, r5
004ba62c  f2 ff ff 8a                                      bhi #0x4ba5fc
004ba630  0c d0 8d e2                                      add sp, sp, #0xc
004ba634  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004ba638  70 a5 4d 00 b4 49 00 00 38 18 00 00 f0 38 00 00  .byte 0x70, 0xa5, 0x4d, 0x00, 0xb4, 0x49, 0x00, 0x00, 0x38, 0x18, 0x00, 0x00, 0xf0, 0x38, 0x00, 0x00
