; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a58e4, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::NumProbArray
; alias: _ZN6Arrays12NumProbArray13finalizeNamesEv
; demangled: Arrays::NumProbArray::finalizeNames()
; decoder-mode: arm
004a58e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a58e8  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a58ec  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a58f0  05 50 8f e0                                      add r5, pc, r5
004a58f4  06 30 95 e7                                      ldr r3, [r5, r6]
004a58f8  00 30 93 e5                                      ldr r3, [r3]
004a58fc  00 00 53 e3                                      cmp r3, #0
004a5900  1a 00 00 0a                                      beq #0x4a5970
004a5904  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a5908  07 20 95 e7                                      ldr r2, [r5, r7]
004a590c  00 20 92 e5                                      ldr r2, [r2]
004a5910  00 00 52 e3                                      cmp r2, #0
004a5914  10 00 00 0a                                      beq #0x4a595c
004a5918  00 40 a0 e3                                      mov r4, #0
004a591c  01 00 00 ea                                      b #0x4a5928
004a5920  06 30 95 e7                                      ldr r3, [r5, r6]
004a5924  00 30 93 e5                                      ldr r3, [r3]
004a5928  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a592c  01 40 84 e2                                      add r4, r4, #1
004a5930  00 00 50 e3                                      cmp r0, #0
004a5934  02 00 00 0a                                      beq #0x4a5944
004a5938  c0 aa f9 eb                                      bl #0x310440
004a593c  06 30 95 e7                                      ldr r3, [r5, r6]
004a5940  00 30 93 e5                                      ldr r3, [r3]
004a5944  07 20 95 e7                                      ldr r2, [r5, r7]
004a5948  00 20 92 e5                                      ldr r2, [r2]
004a594c  04 00 52 e1                                      cmp r2, r4
004a5950  f2 ff ff 8a                                      bhi #0x4a5920
004a5954  00 00 53 e3                                      cmp r3, #0
004a5958  01 00 00 0a                                      beq #0x4a5964
004a595c  03 00 a0 e1                                      mov r0, r3
004a5960  b6 aa f9 eb                                      bl #0x310440
004a5964  06 30 95 e7                                      ldr r3, [r5, r6]
004a5968  00 20 a0 e3                                      mov r2, #0
004a596c  00 20 83 e5                                      str r2, [r3]
004a5970  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5974  a0 f1 4e 00 e0 37 00 00 54 4b 00 00              .byte 0xa0, 0xf1, 0x4e, 0x00, 0xe0, 0x37, 0x00, 0x00, 0x54, 0x4b, 0x00, 0x00

; FUNCTION 0x004a5980, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::NumProbArray
; alias: _ZN6Arrays12NumProbArray8finalizeEv
; demangled: Arrays::NumProbArray::finalize()
; decoder-mode: arm
004a5980  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5984  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a5988  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a598c  05 50 8f e0                                      add r5, pc, r5
004a5990  07 30 95 e7                                      ldr r3, [r5, r7]
004a5994  00 30 93 e5                                      ldr r3, [r3]
004a5998  00 00 53 e3                                      cmp r3, #0
004a599c  2c 00 00 0a                                      beq #0x4a5a54
004a59a0  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a59a4  08 20 95 e7                                      ldr r2, [r5, r8]
004a59a8  00 20 92 e5                                      ldr r2, [r2]
004a59ac  00 00 52 e3                                      cmp r2, #0
004a59b0  12 00 00 0a                                      beq #0x4a5a00
004a59b4  00 40 a0 e3                                      mov r4, #0
004a59b8  04 60 a0 e1                                      mov r6, r4
004a59bc  01 00 00 ea                                      b #0x4a59c8
004a59c0  07 30 95 e7                                      ldr r3, [r5, r7]
004a59c4  00 30 93 e5                                      ldr r3, [r3]
004a59c8  04 00 83 e0                                      add r0, r3, r4
004a59cc  04 30 93 e7                                      ldr r3, [r3, r4]
004a59d0  0f e0 a0 e1                                      mov lr, pc
004a59d4  08 f0 93 e5                                      ldr pc, [r3, #8]
004a59d8  08 30 95 e7                                      ldr r3, [r5, r8]
004a59dc  01 60 86 e2                                      add r6, r6, #1
004a59e0  0c 40 84 e2                                      add r4, r4, #0xc
004a59e4  00 30 93 e5                                      ldr r3, [r3]
004a59e8  06 00 53 e1                                      cmp r3, r6
004a59ec  f3 ff ff 8a                                      bhi #0x4a59c0
004a59f0  07 30 95 e7                                      ldr r3, [r5, r7]
004a59f4  00 30 93 e5                                      ldr r3, [r3]
004a59f8  00 00 53 e3                                      cmp r3, #0
004a59fc  11 00 00 0a                                      beq #0x4a5a48
004a5a00  04 20 13 e5                                      ldr r2, [r3, #-4]
004a5a04  0c 00 a0 e3                                      mov r0, #0xc
004a5a08  90 32 20 e0                                      mla r0, r0, r2, r3
004a5a0c  00 00 53 e1                                      cmp r3, r0
004a5a10  01 00 00 1a                                      bne #0x4a5a1c
004a5a14  09 00 00 ea                                      b #0x4a5a40
004a5a18  04 00 a0 e1                                      mov r0, r4
004a5a1c  0c 40 40 e2                                      sub r4, r0, #0xc
004a5a20  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a5a24  04 00 a0 e1                                      mov r0, r4
004a5a28  0f e0 a0 e1                                      mov lr, pc
004a5a2c  00 f0 93 e5                                      ldr pc, [r3]
004a5a30  07 30 95 e7                                      ldr r3, [r5, r7]
004a5a34  00 00 93 e5                                      ldr r0, [r3]
004a5a38  04 00 50 e1                                      cmp r0, r4
004a5a3c  f5 ff ff 1a                                      bne #0x4a5a18
004a5a40  08 00 40 e2                                      sub r0, r0, #8
004a5a44  7d aa f9 eb                                      bl #0x310440
004a5a48  07 30 95 e7                                      ldr r3, [r5, r7]
004a5a4c  00 20 a0 e3                                      mov r2, #0
004a5a50  00 20 83 e5                                      str r2, [r3]
004a5a54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5a58  04 f1 4e 00 54 07 00 00 54 4b 00 00              .byte 0x04, 0xf1, 0x4e, 0x00, 0x54, 0x07, 0x00, 0x00, 0x54, 0x4b, 0x00, 0x00

; FUNCTION 0x004b012c, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::NumProbArray
; alias: _ZN6Arrays12NumProbArray9readNamesEP11IStreamBase
; demangled: Arrays::NumProbArray::readNames(IStreamBase*)
; decoder-mode: arm
004b012c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b0130  00 70 a0 e1                                      mov r7, r0
004b0134  1c d0 4d e2                                      sub sp, sp, #0x1c
004b0138  e9 d5 ff eb                                      bl #0x4a58e4
004b013c  07 00 a0 e1                                      mov r0, r7
004b0140  52 8e f9 eb                                      bl #0x313a90
004b0144  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b0148  01 30 a0 e3                                      mov r3, #1
004b014c  00 00 53 e3                                      cmp r3, #0
004b0150  06 60 8f e0                                      add r6, pc, r6
004b0154  14 00 8d e5                                      str r0, [sp, #0x14]
004b0158  0c 30 8d e5                                      str r3, [sp, #0xc]
004b015c  12 00 00 1a                                      bne #0x4b01ac
004b0160  14 30 8d e2                                      add r3, sp, #0x14
004b0164  02 20 83 e2                                      add r2, r3, #2
004b0168  01 30 83 e2                                      add r3, r3, #1
004b016c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0170  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0174  03 00 52 e1                                      cmp r2, r3
004b0178  02 40 a0 e1                                      mov r4, r2
004b017c  01 10 20 e0                                      eor r1, r0, r1
004b0180  01 10 43 e5                                      strb r1, [r3, #-1]
004b0184  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0188  00 10 21 e0                                      eor r1, r1, r0
004b018c  01 10 c2 e5                                      strb r1, [r2, #1]
004b0190  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0194  01 20 42 e2                                      sub r2, r2, #1
004b0198  00 10 21 e0                                      eor r1, r1, r0
004b019c  01 10 43 e5                                      strb r1, [r3, #-1]
004b01a0  01 30 83 e2                                      add r3, r3, #1
004b01a4  f0 ff ff 8a                                      bhi #0x4b016c
004b01a8  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b01ac  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b01b0  03 30 96 e7                                      ldr r3, [r6, r3]
004b01b4  00 30 93 e5                                      ldr r3, [r3]
004b01b8  00 00 53 e1                                      cmp r3, r0
004b01bc  01 00 00 0a                                      beq #0x4b01c8
004b01c0  1c d0 8d e2                                      add sp, sp, #0x1c
004b01c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b01c8  00 01 a0 e1                                      lsl r0, r0, #2
004b01cc  01 10 a0 e3                                      mov r1, #1
004b01d0  e5 80 f9 eb                                      bl #0x31056c
004b01d4  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b01d8  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b01dc  09 30 96 e7                                      ldr r3, [r6, sb]
004b01e0  00 00 52 e3                                      cmp r2, #0
004b01e4  00 00 83 e5                                      str r0, [r3]
004b01e8  f4 ff ff 0a                                      beq #0x4b01c0
004b01ec  10 a0 8d e2                                      add sl, sp, #0x10
004b01f0  01 80 a0 e3                                      mov r8, #1
004b01f4  08 10 8a e0                                      add r1, sl, r8
004b01f8  02 30 8a e2                                      add r3, sl, #2
004b01fc  00 40 a0 e3                                      mov r4, #0
004b0200  0a 00 8d e8                                      stm sp, {r1, r3}
004b0204  07 00 a0 e1                                      mov r0, r7
004b0208  0a 10 a0 e1                                      mov r1, sl
004b020c  e3 bb fc eb                                      bl #0x3df1a0
004b0210  00 00 58 e3                                      cmp r8, #0
004b0214  0c 80 8d e5                                      str r8, [sp, #0xc]
004b0218  0f 00 00 1a                                      bne #0x4b025c
004b021c  00 30 9d e5                                      ldr r3, [sp]
004b0220  04 20 9d e5                                      ldr r2, [sp, #4]
004b0224  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0228  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b022c  03 00 52 e1                                      cmp r2, r3
004b0230  01 10 20 e0                                      eor r1, r0, r1
004b0234  01 10 43 e5                                      strb r1, [r3, #-1]
004b0238  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b023c  00 10 21 e0                                      eor r1, r1, r0
004b0240  01 10 c2 e5                                      strb r1, [r2, #1]
004b0244  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0248  01 20 42 e2                                      sub r2, r2, #1
004b024c  00 10 21 e0                                      eor r1, r1, r0
004b0250  01 10 43 e5                                      strb r1, [r3, #-1]
004b0254  01 30 83 e2                                      add r3, r3, #1
004b0258  f1 ff ff 8a                                      bhi #0x4b0224
004b025c  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b0260  09 50 96 e7                                      ldr r5, [r6, sb]
004b0264  01 10 a0 e3                                      mov r1, #1
004b0268  01 00 80 e0                                      add r0, r0, r1
004b026c  00 b0 95 e5                                      ldr fp, [r5]
004b0270  bd 80 f9 eb                                      bl #0x31056c
004b0274  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b0278  00 30 95 e5                                      ldr r3, [r5]
004b027c  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b0280  07 00 a0 e1                                      mov r0, r7
004b0284  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b0288  00 30 a0 e3                                      mov r3, #0
004b028c  70 9c f9 eb                                      bl #0x317454
004b0290  00 30 95 e5                                      ldr r3, [r5]
004b0294  00 10 a0 e3                                      mov r1, #0
004b0298  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b029c  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b02a0  01 40 84 e2                                      add r4, r4, #1
004b02a4  03 10 c2 e7                                      strb r1, [r2, r3]
004b02a8  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b02ac  04 00 53 e1                                      cmp r3, r4
004b02b0  d3 ff ff 8a                                      bhi #0x4b0204
004b02b4  c1 ff ff ea                                      b #0x4b01c0
; mapping-symbol data/literal pool
004b02b8  40 49 4e 00 54 4b 00 00 e0 37 00 00              .byte 0x40, 0x49, 0x4e, 0x00, 0x54, 0x4b, 0x00, 0x00, 0xe0, 0x37, 0x00, 0x00

; FUNCTION 0x004b02c4, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::NumProbArray
; alias: _ZN6Arrays12NumProbArray9skipNamesEP11IStreamBase
; demangled: Arrays::NumProbArray::skipNames(IStreamBase*)
; decoder-mode: arm
004b02c4  98 ff ff ea                                      b #0x4b012c

; FUNCTION 0x004b9bf4, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::NumProbArray
; alias: _ZN6Arrays12NumProbArray4readEP11IStreamBase
; demangled: Arrays::NumProbArray::read(IStreamBase*)
; decoder-mode: arm
004b9bf4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b9bf8  0c d0 4d e2                                      sub sp, sp, #0xc
004b9bfc  00 a0 a0 e1                                      mov sl, r0
004b9c00  a2 67 f9 eb                                      bl #0x313a90
004b9c04  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b9c08  01 30 a0 e3                                      mov r3, #1
004b9c0c  00 00 53 e3                                      cmp r3, #0
004b9c10  04 00 8d e5                                      str r0, [sp, #4]
004b9c14  00 30 8d e5                                      str r3, [sp]
004b9c18  06 60 8f e0                                      add r6, pc, r6
004b9c1c  10 00 00 1a                                      bne #0x4b9c64
004b9c20  04 30 8d e2                                      add r3, sp, #4
004b9c24  02 20 83 e2                                      add r2, r3, #2
004b9c28  01 30 83 e2                                      add r3, r3, #1
004b9c2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9c30  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b9c34  03 00 52 e1                                      cmp r2, r3
004b9c38  01 10 20 e0                                      eor r1, r0, r1
004b9c3c  01 10 43 e5                                      strb r1, [r3, #-1]
004b9c40  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9c44  00 10 21 e0                                      eor r1, r1, r0
004b9c48  01 10 c2 e5                                      strb r1, [r2, #1]
004b9c4c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b9c50  01 20 42 e2                                      sub r2, r2, #1
004b9c54  00 10 21 e0                                      eor r1, r1, r0
004b9c58  01 10 43 e5                                      strb r1, [r3, #-1]
004b9c5c  01 30 83 e2                                      add r3, r3, #1
004b9c60  f1 ff ff 8a                                      bhi #0x4b9c2c
004b9c64  45 af ff eb                                      bl #0x4a5980
004b9c68  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b9c6c  04 40 9d e5                                      ldr r4, [sp, #4]
004b9c70  0c 50 a0 e3                                      mov r5, #0xc
004b9c74  07 30 96 e7                                      ldr r3, [r6, r7]
004b9c78  95 04 00 e0                                      mul r0, r5, r4
004b9c7c  00 40 83 e5                                      str r4, [r3]
004b9c80  08 00 80 e2                                      add r0, r0, #8
004b9c84  01 10 a0 e3                                      mov r1, #1
004b9c88  37 5a f9 eb                                      bl #0x31056c
004b9c8c  00 00 54 e3                                      cmp r4, #0
004b9c90  00 50 80 e5                                      str r5, [r0]
004b9c94  04 40 80 e5                                      str r4, [r0, #4]
004b9c98  08 30 80 e2                                      add r3, r0, #8
004b9c9c  0a 00 00 0a                                      beq #0x4b9ccc
004b9ca0  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b9ca4  00 20 a0 e3                                      mov r2, #0
004b9ca8  02 c0 a0 e1                                      mov ip, r2
004b9cac  01 10 96 e7                                      ldr r1, [r6, r1]
004b9cb0  08 10 81 e2                                      add r1, r1, #8
004b9cb4  01 20 82 e2                                      add r2, r2, #1
004b9cb8  04 00 52 e1                                      cmp r2, r4
004b9cbc  08 10 80 e5                                      str r1, [r0, #8]
004b9cc0  10 c0 80 e5                                      str ip, [r0, #0x10]
004b9cc4  0c 00 80 e2                                      add r0, r0, #0xc
004b9cc8  f9 ff ff 1a                                      bne #0x4b9cb4
004b9ccc  07 20 96 e7                                      ldr r2, [r6, r7]
004b9cd0  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b9cd4  00 10 92 e5                                      ldr r1, [r2]
004b9cd8  08 20 96 e7                                      ldr r2, [r6, r8]
004b9cdc  00 00 51 e3                                      cmp r1, #0
004b9ce0  00 30 82 e5                                      str r3, [r2]
004b9ce4  0f 00 00 0a                                      beq #0x4b9d28
004b9ce8  00 40 a0 e3                                      mov r4, #0
004b9cec  04 50 a0 e1                                      mov r5, r4
004b9cf0  01 00 00 ea                                      b #0x4b9cfc
004b9cf4  08 30 96 e7                                      ldr r3, [r6, r8]
004b9cf8  00 30 93 e5                                      ldr r3, [r3]
004b9cfc  04 00 83 e0                                      add r0, r3, r4
004b9d00  0a 10 a0 e1                                      mov r1, sl
004b9d04  04 30 93 e7                                      ldr r3, [r3, r4]
004b9d08  0f e0 a0 e1                                      mov lr, pc
004b9d0c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b9d10  07 30 96 e7                                      ldr r3, [r6, r7]
004b9d14  01 50 85 e2                                      add r5, r5, #1
004b9d18  0c 40 84 e2                                      add r4, r4, #0xc
004b9d1c  00 30 93 e5                                      ldr r3, [r3]
004b9d20  05 00 53 e1                                      cmp r3, r5
004b9d24  f2 ff ff 8a                                      bhi #0x4b9cf4
004b9d28  0c d0 8d e2                                      add sp, sp, #0xc
004b9d2c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b9d30  78 ae 4d 00 54 4b 00 00 68 42 00 00 54 07 00 00  .byte 0x78, 0xae, 0x4d, 0x00, 0x54, 0x4b, 0x00, 0x00, 0x68, 0x42, 0x00, 0x00, 0x54, 0x07, 0x00, 0x00
