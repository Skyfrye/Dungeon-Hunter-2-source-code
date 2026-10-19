; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a6064, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ItemList
; alias: _ZN6Arrays8ItemList13finalizeNamesEv
; demangled: Arrays::ItemList::finalizeNames()
; decoder-mode: arm
004a6064  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6068  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a606c  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a6070  05 50 8f e0                                      add r5, pc, r5
004a6074  06 30 95 e7                                      ldr r3, [r5, r6]
004a6078  00 30 93 e5                                      ldr r3, [r3]
004a607c  00 00 53 e3                                      cmp r3, #0
004a6080  1a 00 00 0a                                      beq #0x4a60f0
004a6084  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a6088  07 20 95 e7                                      ldr r2, [r5, r7]
004a608c  00 20 92 e5                                      ldr r2, [r2]
004a6090  00 00 52 e3                                      cmp r2, #0
004a6094  10 00 00 0a                                      beq #0x4a60dc
004a6098  00 40 a0 e3                                      mov r4, #0
004a609c  01 00 00 ea                                      b #0x4a60a8
004a60a0  06 30 95 e7                                      ldr r3, [r5, r6]
004a60a4  00 30 93 e5                                      ldr r3, [r3]
004a60a8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a60ac  01 40 84 e2                                      add r4, r4, #1
004a60b0  00 00 50 e3                                      cmp r0, #0
004a60b4  02 00 00 0a                                      beq #0x4a60c4
004a60b8  e0 a8 f9 eb                                      bl #0x310440
004a60bc  06 30 95 e7                                      ldr r3, [r5, r6]
004a60c0  00 30 93 e5                                      ldr r3, [r3]
004a60c4  07 20 95 e7                                      ldr r2, [r5, r7]
004a60c8  00 20 92 e5                                      ldr r2, [r2]
004a60cc  04 00 52 e1                                      cmp r2, r4
004a60d0  f2 ff ff 8a                                      bhi #0x4a60a0
004a60d4  00 00 53 e3                                      cmp r3, #0
004a60d8  01 00 00 0a                                      beq #0x4a60e4
004a60dc  03 00 a0 e1                                      mov r0, r3
004a60e0  d6 a8 f9 eb                                      bl #0x310440
004a60e4  06 30 95 e7                                      ldr r3, [r5, r6]
004a60e8  00 20 a0 e3                                      mov r2, #0
004a60ec  00 20 83 e5                                      str r2, [r3]
004a60f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a60f4  20 ea 4e 00 94 14 00 00 d0 2a 00 00              .byte 0x20, 0xea, 0x4e, 0x00, 0x94, 0x14, 0x00, 0x00, 0xd0, 0x2a, 0x00, 0x00

; FUNCTION 0x004a6100, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ItemList
; alias: _ZN6Arrays8ItemList8finalizeEv
; demangled: Arrays::ItemList::finalize()
; decoder-mode: arm
004a6100  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6104  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a6108  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a610c  05 50 8f e0                                      add r5, pc, r5
004a6110  07 30 95 e7                                      ldr r3, [r5, r7]
004a6114  00 30 93 e5                                      ldr r3, [r3]
004a6118  00 00 53 e3                                      cmp r3, #0
004a611c  2c 00 00 0a                                      beq #0x4a61d4
004a6120  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a6124  08 20 95 e7                                      ldr r2, [r5, r8]
004a6128  00 20 92 e5                                      ldr r2, [r2]
004a612c  00 00 52 e3                                      cmp r2, #0
004a6130  12 00 00 0a                                      beq #0x4a6180
004a6134  00 40 a0 e3                                      mov r4, #0
004a6138  04 60 a0 e1                                      mov r6, r4
004a613c  01 00 00 ea                                      b #0x4a6148
004a6140  07 30 95 e7                                      ldr r3, [r5, r7]
004a6144  00 30 93 e5                                      ldr r3, [r3]
004a6148  04 00 83 e0                                      add r0, r3, r4
004a614c  04 30 93 e7                                      ldr r3, [r3, r4]
004a6150  0f e0 a0 e1                                      mov lr, pc
004a6154  08 f0 93 e5                                      ldr pc, [r3, #8]
004a6158  08 30 95 e7                                      ldr r3, [r5, r8]
004a615c  01 60 86 e2                                      add r6, r6, #1
004a6160  0c 40 84 e2                                      add r4, r4, #0xc
004a6164  00 30 93 e5                                      ldr r3, [r3]
004a6168  06 00 53 e1                                      cmp r3, r6
004a616c  f3 ff ff 8a                                      bhi #0x4a6140
004a6170  07 30 95 e7                                      ldr r3, [r5, r7]
004a6174  00 30 93 e5                                      ldr r3, [r3]
004a6178  00 00 53 e3                                      cmp r3, #0
004a617c  11 00 00 0a                                      beq #0x4a61c8
004a6180  04 20 13 e5                                      ldr r2, [r3, #-4]
004a6184  0c 00 a0 e3                                      mov r0, #0xc
004a6188  90 32 20 e0                                      mla r0, r0, r2, r3
004a618c  00 00 53 e1                                      cmp r3, r0
004a6190  01 00 00 1a                                      bne #0x4a619c
004a6194  09 00 00 ea                                      b #0x4a61c0
004a6198  04 00 a0 e1                                      mov r0, r4
004a619c  0c 40 40 e2                                      sub r4, r0, #0xc
004a61a0  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a61a4  04 00 a0 e1                                      mov r0, r4
004a61a8  0f e0 a0 e1                                      mov lr, pc
004a61ac  00 f0 93 e5                                      ldr pc, [r3]
004a61b0  07 30 95 e7                                      ldr r3, [r5, r7]
004a61b4  00 00 93 e5                                      ldr r0, [r3]
004a61b8  04 00 50 e1                                      cmp r0, r4
004a61bc  f5 ff ff 1a                                      bne #0x4a6198
004a61c0  08 00 40 e2                                      sub r0, r0, #8
004a61c4  9d a8 f9 eb                                      bl #0x310440
004a61c8  07 30 95 e7                                      ldr r3, [r5, r7]
004a61cc  00 20 a0 e3                                      mov r2, #0
004a61d0  00 20 83 e5                                      str r2, [r3]
004a61d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a61d8  84 e9 4e 00 a8 16 00 00 d0 2a 00 00              .byte 0x84, 0xe9, 0x4e, 0x00, 0xa8, 0x16, 0x00, 0x00, 0xd0, 0x2a, 0x00, 0x00

; FUNCTION 0x004b48bc, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ItemList
; alias: _ZN6Arrays8ItemList9readNamesEP11IStreamBase
; demangled: Arrays::ItemList::readNames(IStreamBase*)
; decoder-mode: arm
004b48bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b48c0  00 70 a0 e1                                      mov r7, r0
004b48c4  1c d0 4d e2                                      sub sp, sp, #0x1c
004b48c8  e5 c5 ff eb                                      bl #0x4a6064
004b48cc  07 00 a0 e1                                      mov r0, r7
004b48d0  6e 7c f9 eb                                      bl #0x313a90
004b48d4  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b48d8  01 30 a0 e3                                      mov r3, #1
004b48dc  00 00 53 e3                                      cmp r3, #0
004b48e0  06 60 8f e0                                      add r6, pc, r6
004b48e4  14 00 8d e5                                      str r0, [sp, #0x14]
004b48e8  0c 30 8d e5                                      str r3, [sp, #0xc]
004b48ec  12 00 00 1a                                      bne #0x4b493c
004b48f0  14 30 8d e2                                      add r3, sp, #0x14
004b48f4  02 20 83 e2                                      add r2, r3, #2
004b48f8  01 30 83 e2                                      add r3, r3, #1
004b48fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4900  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b4904  03 00 52 e1                                      cmp r2, r3
004b4908  02 40 a0 e1                                      mov r4, r2
004b490c  01 10 20 e0                                      eor r1, r0, r1
004b4910  01 10 43 e5                                      strb r1, [r3, #-1]
004b4914  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4918  00 10 21 e0                                      eor r1, r1, r0
004b491c  01 10 c2 e5                                      strb r1, [r2, #1]
004b4920  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b4924  01 20 42 e2                                      sub r2, r2, #1
004b4928  00 10 21 e0                                      eor r1, r1, r0
004b492c  01 10 43 e5                                      strb r1, [r3, #-1]
004b4930  01 30 83 e2                                      add r3, r3, #1
004b4934  f0 ff ff 8a                                      bhi #0x4b48fc
004b4938  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b493c  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b4940  03 30 96 e7                                      ldr r3, [r6, r3]
004b4944  00 30 93 e5                                      ldr r3, [r3]
004b4948  00 00 53 e1                                      cmp r3, r0
004b494c  01 00 00 0a                                      beq #0x4b4958
004b4950  1c d0 8d e2                                      add sp, sp, #0x1c
004b4954  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b4958  00 01 a0 e1                                      lsl r0, r0, #2
004b495c  01 10 a0 e3                                      mov r1, #1
004b4960  01 6f f9 eb                                      bl #0x31056c
004b4964  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b4968  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b496c  09 30 96 e7                                      ldr r3, [r6, sb]
004b4970  00 00 52 e3                                      cmp r2, #0
004b4974  00 00 83 e5                                      str r0, [r3]
004b4978  f4 ff ff 0a                                      beq #0x4b4950
004b497c  10 a0 8d e2                                      add sl, sp, #0x10
004b4980  01 80 a0 e3                                      mov r8, #1
004b4984  08 10 8a e0                                      add r1, sl, r8
004b4988  02 30 8a e2                                      add r3, sl, #2
004b498c  00 40 a0 e3                                      mov r4, #0
004b4990  0a 00 8d e8                                      stm sp, {r1, r3}
004b4994  07 00 a0 e1                                      mov r0, r7
004b4998  0a 10 a0 e1                                      mov r1, sl
004b499c  ff a9 fc eb                                      bl #0x3df1a0
004b49a0  00 00 58 e3                                      cmp r8, #0
004b49a4  0c 80 8d e5                                      str r8, [sp, #0xc]
004b49a8  0f 00 00 1a                                      bne #0x4b49ec
004b49ac  00 30 9d e5                                      ldr r3, [sp]
004b49b0  04 20 9d e5                                      ldr r2, [sp, #4]
004b49b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b49b8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b49bc  03 00 52 e1                                      cmp r2, r3
004b49c0  01 10 20 e0                                      eor r1, r0, r1
004b49c4  01 10 43 e5                                      strb r1, [r3, #-1]
004b49c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b49cc  00 10 21 e0                                      eor r1, r1, r0
004b49d0  01 10 c2 e5                                      strb r1, [r2, #1]
004b49d4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b49d8  01 20 42 e2                                      sub r2, r2, #1
004b49dc  00 10 21 e0                                      eor r1, r1, r0
004b49e0  01 10 43 e5                                      strb r1, [r3, #-1]
004b49e4  01 30 83 e2                                      add r3, r3, #1
004b49e8  f1 ff ff 8a                                      bhi #0x4b49b4
004b49ec  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b49f0  09 50 96 e7                                      ldr r5, [r6, sb]
004b49f4  01 10 a0 e3                                      mov r1, #1
004b49f8  01 00 80 e0                                      add r0, r0, r1
004b49fc  00 b0 95 e5                                      ldr fp, [r5]
004b4a00  d9 6e f9 eb                                      bl #0x31056c
004b4a04  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b4a08  00 30 95 e5                                      ldr r3, [r5]
004b4a0c  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b4a10  07 00 a0 e1                                      mov r0, r7
004b4a14  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b4a18  00 30 a0 e3                                      mov r3, #0
004b4a1c  8c 8a f9 eb                                      bl #0x317454
004b4a20  00 30 95 e5                                      ldr r3, [r5]
004b4a24  00 10 a0 e3                                      mov r1, #0
004b4a28  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b4a2c  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b4a30  01 40 84 e2                                      add r4, r4, #1
004b4a34  03 10 c2 e7                                      strb r1, [r2, r3]
004b4a38  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b4a3c  04 00 53 e1                                      cmp r3, r4
004b4a40  d3 ff ff 8a                                      bhi #0x4b4994
004b4a44  c1 ff ff ea                                      b #0x4b4950
; mapping-symbol data/literal pool
004b4a48  b0 01 4e 00 d0 2a 00 00 94 14 00 00              .byte 0xb0, 0x01, 0x4e, 0x00, 0xd0, 0x2a, 0x00, 0x00, 0x94, 0x14, 0x00, 0x00

; FUNCTION 0x004b4a54, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::ItemList
; alias: _ZN6Arrays8ItemList9skipNamesEP11IStreamBase
; demangled: Arrays::ItemList::skipNames(IStreamBase*)
; decoder-mode: arm
004b4a54  98 ff ff ea                                      b #0x4b48bc

; FUNCTION 0x004ba27c, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::ItemList
; alias: _ZN6Arrays8ItemList4readEP11IStreamBase
; demangled: Arrays::ItemList::read(IStreamBase*)
; decoder-mode: arm
004ba27c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004ba280  0c d0 4d e2                                      sub sp, sp, #0xc
004ba284  00 a0 a0 e1                                      mov sl, r0
004ba288  00 66 f9 eb                                      bl #0x313a90
004ba28c  24 61 9f e5                                      ldr r6, [pc, #0x124]
004ba290  01 30 a0 e3                                      mov r3, #1
004ba294  00 00 53 e3                                      cmp r3, #0
004ba298  04 00 8d e5                                      str r0, [sp, #4]
004ba29c  00 30 8d e5                                      str r3, [sp]
004ba2a0  06 60 8f e0                                      add r6, pc, r6
004ba2a4  10 00 00 1a                                      bne #0x4ba2ec
004ba2a8  04 30 8d e2                                      add r3, sp, #4
004ba2ac  02 20 83 e2                                      add r2, r3, #2
004ba2b0  01 30 83 e2                                      add r3, r3, #1
004ba2b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba2b8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ba2bc  03 00 52 e1                                      cmp r2, r3
004ba2c0  01 10 20 e0                                      eor r1, r0, r1
004ba2c4  01 10 43 e5                                      strb r1, [r3, #-1]
004ba2c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba2cc  00 10 21 e0                                      eor r1, r1, r0
004ba2d0  01 10 c2 e5                                      strb r1, [r2, #1]
004ba2d4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ba2d8  01 20 42 e2                                      sub r2, r2, #1
004ba2dc  00 10 21 e0                                      eor r1, r1, r0
004ba2e0  01 10 43 e5                                      strb r1, [r3, #-1]
004ba2e4  01 30 83 e2                                      add r3, r3, #1
004ba2e8  f1 ff ff 8a                                      bhi #0x4ba2b4
004ba2ec  83 af ff eb                                      bl #0x4a6100
004ba2f0  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004ba2f4  04 40 9d e5                                      ldr r4, [sp, #4]
004ba2f8  0c 50 a0 e3                                      mov r5, #0xc
004ba2fc  07 30 96 e7                                      ldr r3, [r6, r7]
004ba300  95 04 00 e0                                      mul r0, r5, r4
004ba304  00 40 83 e5                                      str r4, [r3]
004ba308  08 00 80 e2                                      add r0, r0, #8
004ba30c  01 10 a0 e3                                      mov r1, #1
004ba310  95 58 f9 eb                                      bl #0x31056c
004ba314  00 00 54 e3                                      cmp r4, #0
004ba318  00 50 80 e5                                      str r5, [r0]
004ba31c  04 40 80 e5                                      str r4, [r0, #4]
004ba320  08 30 80 e2                                      add r3, r0, #8
004ba324  0a 00 00 0a                                      beq #0x4ba354
004ba328  90 10 9f e5                                      ldr r1, [pc, #0x90]
004ba32c  00 20 a0 e3                                      mov r2, #0
004ba330  02 c0 a0 e1                                      mov ip, r2
004ba334  01 10 96 e7                                      ldr r1, [r6, r1]
004ba338  08 10 81 e2                                      add r1, r1, #8
004ba33c  01 20 82 e2                                      add r2, r2, #1
004ba340  04 00 52 e1                                      cmp r2, r4
004ba344  08 10 80 e5                                      str r1, [r0, #8]
004ba348  10 c0 80 e5                                      str ip, [r0, #0x10]
004ba34c  0c 00 80 e2                                      add r0, r0, #0xc
004ba350  f9 ff ff 1a                                      bne #0x4ba33c
004ba354  07 20 96 e7                                      ldr r2, [r6, r7]
004ba358  64 80 9f e5                                      ldr r8, [pc, #0x64]
004ba35c  00 10 92 e5                                      ldr r1, [r2]
004ba360  08 20 96 e7                                      ldr r2, [r6, r8]
004ba364  00 00 51 e3                                      cmp r1, #0
004ba368  00 30 82 e5                                      str r3, [r2]
004ba36c  0f 00 00 0a                                      beq #0x4ba3b0
004ba370  00 40 a0 e3                                      mov r4, #0
004ba374  04 50 a0 e1                                      mov r5, r4
004ba378  01 00 00 ea                                      b #0x4ba384
004ba37c  08 30 96 e7                                      ldr r3, [r6, r8]
004ba380  00 30 93 e5                                      ldr r3, [r3]
004ba384  04 00 83 e0                                      add r0, r3, r4
004ba388  0a 10 a0 e1                                      mov r1, sl
004ba38c  04 30 93 e7                                      ldr r3, [r3, r4]
004ba390  0f e0 a0 e1                                      mov lr, pc
004ba394  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004ba398  07 30 96 e7                                      ldr r3, [r6, r7]
004ba39c  01 50 85 e2                                      add r5, r5, #1
004ba3a0  0c 40 84 e2                                      add r4, r4, #0xc
004ba3a4  00 30 93 e5                                      ldr r3, [r3]
004ba3a8  05 00 53 e1                                      cmp r3, r5
004ba3ac  f2 ff ff 8a                                      bhi #0x4ba37c
004ba3b0  0c d0 8d e2                                      add sp, sp, #0xc
004ba3b4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004ba3b8  f0 a7 4d 00 d0 2a 00 00 28 38 00 00 a8 16 00 00  .byte 0xf0, 0xa7, 0x4d, 0x00, 0xd0, 0x2a, 0x00, 0x00, 0x28, 0x38, 0x00, 0x00, 0xa8, 0x16, 0x00, 0x00
