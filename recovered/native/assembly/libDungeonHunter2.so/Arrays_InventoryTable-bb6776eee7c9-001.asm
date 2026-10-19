; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a61e4, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::InventoryTable
; alias: _ZN6Arrays14InventoryTable13finalizeNamesEv
; demangled: Arrays::InventoryTable::finalizeNames()
; decoder-mode: arm
004a61e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a61e8  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a61ec  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a61f0  05 50 8f e0                                      add r5, pc, r5
004a61f4  06 30 95 e7                                      ldr r3, [r5, r6]
004a61f8  00 30 93 e5                                      ldr r3, [r3]
004a61fc  00 00 53 e3                                      cmp r3, #0
004a6200  1a 00 00 0a                                      beq #0x4a6270
004a6204  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a6208  07 20 95 e7                                      ldr r2, [r5, r7]
004a620c  00 20 92 e5                                      ldr r2, [r2]
004a6210  00 00 52 e3                                      cmp r2, #0
004a6214  10 00 00 0a                                      beq #0x4a625c
004a6218  00 40 a0 e3                                      mov r4, #0
004a621c  01 00 00 ea                                      b #0x4a6228
004a6220  06 30 95 e7                                      ldr r3, [r5, r6]
004a6224  00 30 93 e5                                      ldr r3, [r3]
004a6228  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a622c  01 40 84 e2                                      add r4, r4, #1
004a6230  00 00 50 e3                                      cmp r0, #0
004a6234  02 00 00 0a                                      beq #0x4a6244
004a6238  80 a8 f9 eb                                      bl #0x310440
004a623c  06 30 95 e7                                      ldr r3, [r5, r6]
004a6240  00 30 93 e5                                      ldr r3, [r3]
004a6244  07 20 95 e7                                      ldr r2, [r5, r7]
004a6248  00 20 92 e5                                      ldr r2, [r2]
004a624c  04 00 52 e1                                      cmp r2, r4
004a6250  f2 ff ff 8a                                      bhi #0x4a6220
004a6254  00 00 53 e3                                      cmp r3, #0
004a6258  01 00 00 0a                                      beq #0x4a6264
004a625c  03 00 a0 e1                                      mov r0, r3
004a6260  76 a8 f9 eb                                      bl #0x310440
004a6264  06 30 95 e7                                      ldr r3, [r5, r6]
004a6268  00 20 a0 e3                                      mov r2, #0
004a626c  00 20 83 e5                                      str r2, [r3]
004a6270  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a6274  a0 e8 4e 00 14 3d 00 00 ec 07 00 00              .byte 0xa0, 0xe8, 0x4e, 0x00, 0x14, 0x3d, 0x00, 0x00, 0xec, 0x07, 0x00, 0x00

; FUNCTION 0x004a6280, declared_size=216, range_size=216, mode=arm
; class-group: Arrays::InventoryTable
; alias: _ZN6Arrays14InventoryTable8finalizeEv
; demangled: Arrays::InventoryTable::finalize()
; decoder-mode: arm
004a6280  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6284  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004a6288  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
004a628c  05 50 8f e0                                      add r5, pc, r5
004a6290  06 30 95 e7                                      ldr r3, [r5, r6]
004a6294  00 30 93 e5                                      ldr r3, [r3]
004a6298  00 00 53 e3                                      cmp r3, #0
004a629c  29 00 00 0a                                      beq #0x4a6348
004a62a0  ac 70 9f e5                                      ldr r7, [pc, #0xac]
004a62a4  07 20 95 e7                                      ldr r2, [r5, r7]
004a62a8  00 20 92 e5                                      ldr r2, [r2]
004a62ac  00 00 52 e3                                      cmp r2, #0
004a62b0  10 00 00 0a                                      beq #0x4a62f8
004a62b4  00 40 a0 e3                                      mov r4, #0
004a62b8  01 00 00 ea                                      b #0x4a62c4
004a62bc  06 30 95 e7                                      ldr r3, [r5, r6]
004a62c0  00 30 93 e5                                      ldr r3, [r3]
004a62c4  84 01 83 e0                                      add r0, r3, r4, lsl #3
004a62c8  84 31 93 e7                                      ldr r3, [r3, r4, lsl #3]
004a62cc  0f e0 a0 e1                                      mov lr, pc
004a62d0  08 f0 93 e5                                      ldr pc, [r3, #8]
004a62d4  07 30 95 e7                                      ldr r3, [r5, r7]
004a62d8  01 40 84 e2                                      add r4, r4, #1
004a62dc  00 30 93 e5                                      ldr r3, [r3]
004a62e0  04 00 53 e1                                      cmp r3, r4
004a62e4  f4 ff ff 8a                                      bhi #0x4a62bc
004a62e8  06 30 95 e7                                      ldr r3, [r5, r6]
004a62ec  00 30 93 e5                                      ldr r3, [r3]
004a62f0  00 00 53 e3                                      cmp r3, #0
004a62f4  10 00 00 0a                                      beq #0x4a633c
004a62f8  04 00 13 e5                                      ldr r0, [r3, #-4]
004a62fc  80 01 83 e0                                      add r0, r3, r0, lsl #3
004a6300  00 00 53 e1                                      cmp r3, r0
004a6304  01 00 00 1a                                      bne #0x4a6310
004a6308  09 00 00 ea                                      b #0x4a6334
004a630c  04 00 a0 e1                                      mov r0, r4
004a6310  08 40 40 e2                                      sub r4, r0, #8
004a6314  08 30 10 e5                                      ldr r3, [r0, #-8]
004a6318  04 00 a0 e1                                      mov r0, r4
004a631c  0f e0 a0 e1                                      mov lr, pc
004a6320  00 f0 93 e5                                      ldr pc, [r3]
004a6324  06 30 95 e7                                      ldr r3, [r5, r6]
004a6328  00 00 93 e5                                      ldr r0, [r3]
004a632c  04 00 50 e1                                      cmp r0, r4
004a6330  f5 ff ff 1a                                      bne #0x4a630c
004a6334  08 00 40 e2                                      sub r0, r0, #8
004a6338  40 a8 f9 eb                                      bl #0x310440
004a633c  06 30 95 e7                                      ldr r3, [r5, r6]
004a6340  00 20 a0 e3                                      mov r2, #0
004a6344  00 20 83 e5                                      str r2, [r3]
004a6348  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a634c  04 e8 4e 00 90 3b 00 00 ec 07 00 00              .byte 0x04, 0xe8, 0x4e, 0x00, 0x90, 0x3b, 0x00, 0x00, 0xec, 0x07, 0x00, 0x00

; FUNCTION 0x004b50c0, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::InventoryTable
; alias: _ZN6Arrays14InventoryTable9readNamesEP11IStreamBase
; demangled: Arrays::InventoryTable::readNames(IStreamBase*)
; decoder-mode: arm
004b50c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b50c4  00 70 a0 e1                                      mov r7, r0
004b50c8  1c d0 4d e2                                      sub sp, sp, #0x1c
004b50cc  44 c4 ff eb                                      bl #0x4a61e4
004b50d0  07 00 a0 e1                                      mov r0, r7
004b50d4  6d 7a f9 eb                                      bl #0x313a90
004b50d8  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b50dc  01 30 a0 e3                                      mov r3, #1
004b50e0  00 00 53 e3                                      cmp r3, #0
004b50e4  06 60 8f e0                                      add r6, pc, r6
004b50e8  14 00 8d e5                                      str r0, [sp, #0x14]
004b50ec  0c 30 8d e5                                      str r3, [sp, #0xc]
004b50f0  12 00 00 1a                                      bne #0x4b5140
004b50f4  14 30 8d e2                                      add r3, sp, #0x14
004b50f8  02 20 83 e2                                      add r2, r3, #2
004b50fc  01 30 83 e2                                      add r3, r3, #1
004b5100  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5104  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b5108  03 00 52 e1                                      cmp r2, r3
004b510c  02 40 a0 e1                                      mov r4, r2
004b5110  01 10 20 e0                                      eor r1, r0, r1
004b5114  01 10 43 e5                                      strb r1, [r3, #-1]
004b5118  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b511c  00 10 21 e0                                      eor r1, r1, r0
004b5120  01 10 c2 e5                                      strb r1, [r2, #1]
004b5124  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b5128  01 20 42 e2                                      sub r2, r2, #1
004b512c  00 10 21 e0                                      eor r1, r1, r0
004b5130  01 10 43 e5                                      strb r1, [r3, #-1]
004b5134  01 30 83 e2                                      add r3, r3, #1
004b5138  f0 ff ff 8a                                      bhi #0x4b5100
004b513c  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b5140  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b5144  03 30 96 e7                                      ldr r3, [r6, r3]
004b5148  00 30 93 e5                                      ldr r3, [r3]
004b514c  00 00 53 e1                                      cmp r3, r0
004b5150  01 00 00 0a                                      beq #0x4b515c
004b5154  1c d0 8d e2                                      add sp, sp, #0x1c
004b5158  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b515c  00 01 a0 e1                                      lsl r0, r0, #2
004b5160  01 10 a0 e3                                      mov r1, #1
004b5164  00 6d f9 eb                                      bl #0x31056c
004b5168  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b516c  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b5170  09 30 96 e7                                      ldr r3, [r6, sb]
004b5174  00 00 52 e3                                      cmp r2, #0
004b5178  00 00 83 e5                                      str r0, [r3]
004b517c  f4 ff ff 0a                                      beq #0x4b5154
004b5180  10 a0 8d e2                                      add sl, sp, #0x10
004b5184  01 80 a0 e3                                      mov r8, #1
004b5188  08 10 8a e0                                      add r1, sl, r8
004b518c  02 30 8a e2                                      add r3, sl, #2
004b5190  00 40 a0 e3                                      mov r4, #0
004b5194  0a 00 8d e8                                      stm sp, {r1, r3}
004b5198  07 00 a0 e1                                      mov r0, r7
004b519c  0a 10 a0 e1                                      mov r1, sl
004b51a0  fe a7 fc eb                                      bl #0x3df1a0
004b51a4  00 00 58 e3                                      cmp r8, #0
004b51a8  0c 80 8d e5                                      str r8, [sp, #0xc]
004b51ac  0f 00 00 1a                                      bne #0x4b51f0
004b51b0  00 30 9d e5                                      ldr r3, [sp]
004b51b4  04 20 9d e5                                      ldr r2, [sp, #4]
004b51b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b51bc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b51c0  03 00 52 e1                                      cmp r2, r3
004b51c4  01 10 20 e0                                      eor r1, r0, r1
004b51c8  01 10 43 e5                                      strb r1, [r3, #-1]
004b51cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b51d0  00 10 21 e0                                      eor r1, r1, r0
004b51d4  01 10 c2 e5                                      strb r1, [r2, #1]
004b51d8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b51dc  01 20 42 e2                                      sub r2, r2, #1
004b51e0  00 10 21 e0                                      eor r1, r1, r0
004b51e4  01 10 43 e5                                      strb r1, [r3, #-1]
004b51e8  01 30 83 e2                                      add r3, r3, #1
004b51ec  f1 ff ff 8a                                      bhi #0x4b51b8
004b51f0  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b51f4  09 50 96 e7                                      ldr r5, [r6, sb]
004b51f8  01 10 a0 e3                                      mov r1, #1
004b51fc  01 00 80 e0                                      add r0, r0, r1
004b5200  00 b0 95 e5                                      ldr fp, [r5]
004b5204  d8 6c f9 eb                                      bl #0x31056c
004b5208  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b520c  00 30 95 e5                                      ldr r3, [r5]
004b5210  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b5214  07 00 a0 e1                                      mov r0, r7
004b5218  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b521c  00 30 a0 e3                                      mov r3, #0
004b5220  8b 88 f9 eb                                      bl #0x317454
004b5224  00 30 95 e5                                      ldr r3, [r5]
004b5228  00 10 a0 e3                                      mov r1, #0
004b522c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b5230  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b5234  01 40 84 e2                                      add r4, r4, #1
004b5238  03 10 c2 e7                                      strb r1, [r2, r3]
004b523c  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b5240  04 00 53 e1                                      cmp r3, r4
004b5244  d3 ff ff 8a                                      bhi #0x4b5198
004b5248  c1 ff ff ea                                      b #0x4b5154
; mapping-symbol data/literal pool
004b524c  ac f9 4d 00 ec 07 00 00 14 3d 00 00              .byte 0xac, 0xf9, 0x4d, 0x00, 0xec, 0x07, 0x00, 0x00, 0x14, 0x3d, 0x00, 0x00

; FUNCTION 0x004b5258, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::InventoryTable
; alias: _ZN6Arrays14InventoryTable9skipNamesEP11IStreamBase
; demangled: Arrays::InventoryTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b5258  98 ff ff ea                                      b #0x4b50c0

; FUNCTION 0x004ba3c8, declared_size=308, range_size=308, mode=arm
; class-group: Arrays::InventoryTable
; alias: _ZN6Arrays14InventoryTable4readEP11IStreamBase
; demangled: Arrays::InventoryTable::read(IStreamBase*)
; decoder-mode: arm
004ba3c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ba3cc  08 d0 4d e2                                      sub sp, sp, #8
004ba3d0  00 80 a0 e1                                      mov r8, r0
004ba3d4  ad 65 f9 eb                                      bl #0x313a90
004ba3d8  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
004ba3dc  01 30 a0 e3                                      mov r3, #1
004ba3e0  00 00 53 e3                                      cmp r3, #0
004ba3e4  04 00 8d e5                                      str r0, [sp, #4]
004ba3e8  00 30 8d e5                                      str r3, [sp]
004ba3ec  05 50 8f e0                                      add r5, pc, r5
004ba3f0  10 00 00 1a                                      bne #0x4ba438
004ba3f4  04 30 8d e2                                      add r3, sp, #4
004ba3f8  02 20 83 e2                                      add r2, r3, #2
004ba3fc  01 30 83 e2                                      add r3, r3, #1
004ba400  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba404  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ba408  03 00 52 e1                                      cmp r2, r3
004ba40c  01 10 20 e0                                      eor r1, r0, r1
004ba410  01 10 43 e5                                      strb r1, [r3, #-1]
004ba414  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba418  00 10 21 e0                                      eor r1, r1, r0
004ba41c  01 10 c2 e5                                      strb r1, [r2, #1]
004ba420  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ba424  01 20 42 e2                                      sub r2, r2, #1
004ba428  00 10 21 e0                                      eor r1, r1, r0
004ba42c  01 10 43 e5                                      strb r1, [r3, #-1]
004ba430  01 30 83 e2                                      add r3, r3, #1
004ba434  f1 ff ff 8a                                      bhi #0x4ba400
004ba438  b0 60 9f e5                                      ldr r6, [pc, #0xb0]
004ba43c  8f af ff eb                                      bl #0x4a6280
004ba440  04 40 9d e5                                      ldr r4, [sp, #4]
004ba444  06 30 95 e7                                      ldr r3, [r5, r6]
004ba448  01 10 a0 e3                                      mov r1, #1
004ba44c  01 00 84 e0                                      add r0, r4, r1
004ba450  00 40 83 e5                                      str r4, [r3]
004ba454  80 01 a0 e1                                      lsl r0, r0, #3
004ba458  43 58 f9 eb                                      bl #0x31056c
004ba45c  08 30 a0 e3                                      mov r3, #8
004ba460  00 00 54 e3                                      cmp r4, #0
004ba464  18 00 80 e8                                      stm r0, {r3, r4}
004ba468  03 30 80 e0                                      add r3, r0, r3
004ba46c  07 00 00 0a                                      beq #0x4ba490
004ba470  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
004ba474  00 20 a0 e3                                      mov r2, #0
004ba478  01 10 95 e7                                      ldr r1, [r5, r1]
004ba47c  08 10 81 e2                                      add r1, r1, #8
004ba480  01 20 82 e2                                      add r2, r2, #1
004ba484  04 00 52 e1                                      cmp r2, r4
004ba488  08 10 a0 e5                                      str r1, [r0, #8]!
004ba48c  fb ff ff 1a                                      bne #0x4ba480
004ba490  06 20 95 e7                                      ldr r2, [r5, r6]
004ba494  5c 70 9f e5                                      ldr r7, [pc, #0x5c]
004ba498  00 10 92 e5                                      ldr r1, [r2]
004ba49c  07 20 95 e7                                      ldr r2, [r5, r7]
004ba4a0  00 00 51 e3                                      cmp r1, #0
004ba4a4  00 30 82 e5                                      str r3, [r2]
004ba4a8  0d 00 00 0a                                      beq #0x4ba4e4
004ba4ac  00 40 a0 e3                                      mov r4, #0
004ba4b0  01 00 00 ea                                      b #0x4ba4bc
004ba4b4  07 30 95 e7                                      ldr r3, [r5, r7]
004ba4b8  00 30 93 e5                                      ldr r3, [r3]
004ba4bc  84 01 83 e0                                      add r0, r3, r4, lsl #3
004ba4c0  08 10 a0 e1                                      mov r1, r8
004ba4c4  84 31 93 e7                                      ldr r3, [r3, r4, lsl #3]
004ba4c8  0f e0 a0 e1                                      mov lr, pc
004ba4cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004ba4d0  06 30 95 e7                                      ldr r3, [r5, r6]
004ba4d4  01 40 84 e2                                      add r4, r4, #1
004ba4d8  00 30 93 e5                                      ldr r3, [r3]
004ba4dc  04 00 53 e1                                      cmp r3, r4
004ba4e0  f3 ff ff 8a                                      bhi #0x4ba4b4
004ba4e4  08 d0 8d e2                                      add sp, sp, #8
004ba4e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ba4ec  a4 a6 4d 00 ec 07 00 00 e4 2b 00 00 90 3b 00 00  .byte 0xa4, 0xa6, 0x4d, 0x00, 0xec, 0x07, 0x00, 0x00, 0xe4, 0x2b, 0x00, 0x00, 0x90, 0x3b, 0x00, 0x00
