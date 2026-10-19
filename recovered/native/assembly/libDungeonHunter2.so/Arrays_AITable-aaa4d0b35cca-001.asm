; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004aa09c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::AITable
; alias: _ZN6Arrays7AITable13finalizeNamesEv
; demangled: Arrays::AITable::finalizeNames()
; decoder-mode: arm
004aa09c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004aa0a0  84 50 9f e5                                      ldr r5, [pc, #0x84]
004aa0a4  84 60 9f e5                                      ldr r6, [pc, #0x84]
004aa0a8  05 50 8f e0                                      add r5, pc, r5
004aa0ac  06 30 95 e7                                      ldr r3, [r5, r6]
004aa0b0  00 30 93 e5                                      ldr r3, [r3]
004aa0b4  00 00 53 e3                                      cmp r3, #0
004aa0b8  1a 00 00 0a                                      beq #0x4aa128
004aa0bc  70 70 9f e5                                      ldr r7, [pc, #0x70]
004aa0c0  07 20 95 e7                                      ldr r2, [r5, r7]
004aa0c4  00 20 92 e5                                      ldr r2, [r2]
004aa0c8  00 00 52 e3                                      cmp r2, #0
004aa0cc  10 00 00 0a                                      beq #0x4aa114
004aa0d0  00 40 a0 e3                                      mov r4, #0
004aa0d4  01 00 00 ea                                      b #0x4aa0e0
004aa0d8  06 30 95 e7                                      ldr r3, [r5, r6]
004aa0dc  00 30 93 e5                                      ldr r3, [r3]
004aa0e0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004aa0e4  01 40 84 e2                                      add r4, r4, #1
004aa0e8  00 00 50 e3                                      cmp r0, #0
004aa0ec  02 00 00 0a                                      beq #0x4aa0fc
004aa0f0  d2 98 f9 eb                                      bl #0x310440
004aa0f4  06 30 95 e7                                      ldr r3, [r5, r6]
004aa0f8  00 30 93 e5                                      ldr r3, [r3]
004aa0fc  07 20 95 e7                                      ldr r2, [r5, r7]
004aa100  00 20 92 e5                                      ldr r2, [r2]
004aa104  04 00 52 e1                                      cmp r2, r4
004aa108  f2 ff ff 8a                                      bhi #0x4aa0d8
004aa10c  00 00 53 e3                                      cmp r3, #0
004aa110  01 00 00 0a                                      beq #0x4aa11c
004aa114  03 00 a0 e1                                      mov r0, r3
004aa118  c8 98 f9 eb                                      bl #0x310440
004aa11c  06 30 95 e7                                      ldr r3, [r5, r6]
004aa120  00 20 a0 e3                                      mov r2, #0
004aa124  00 20 83 e5                                      str r2, [r3]
004aa128  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aa12c  e8 a9 4e 00 fc 4a 00 00 2c 11 00 00              .byte 0xe8, 0xa9, 0x4e, 0x00, 0xfc, 0x4a, 0x00, 0x00, 0x2c, 0x11, 0x00, 0x00

; FUNCTION 0x004aa138, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::AITable
; alias: _ZN6Arrays7AITable8finalizeEv
; demangled: Arrays::AITable::finalize()
; decoder-mode: arm
004aa138  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004aa13c  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004aa140  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004aa144  05 50 8f e0                                      add r5, pc, r5
004aa148  07 30 95 e7                                      ldr r3, [r5, r7]
004aa14c  00 30 93 e5                                      ldr r3, [r3]
004aa150  00 00 53 e3                                      cmp r3, #0
004aa154  2c 00 00 0a                                      beq #0x4aa20c
004aa158  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004aa15c  08 20 95 e7                                      ldr r2, [r5, r8]
004aa160  00 20 92 e5                                      ldr r2, [r2]
004aa164  00 00 52 e3                                      cmp r2, #0
004aa168  12 00 00 0a                                      beq #0x4aa1b8
004aa16c  00 40 a0 e3                                      mov r4, #0
004aa170  04 60 a0 e1                                      mov r6, r4
004aa174  01 00 00 ea                                      b #0x4aa180
004aa178  07 30 95 e7                                      ldr r3, [r5, r7]
004aa17c  00 30 93 e5                                      ldr r3, [r3]
004aa180  04 00 83 e0                                      add r0, r3, r4
004aa184  04 30 93 e7                                      ldr r3, [r3, r4]
004aa188  0f e0 a0 e1                                      mov lr, pc
004aa18c  08 f0 93 e5                                      ldr pc, [r3, #8]
004aa190  08 30 95 e7                                      ldr r3, [r5, r8]
004aa194  01 60 86 e2                                      add r6, r6, #1
004aa198  44 40 84 e2                                      add r4, r4, #0x44
004aa19c  00 30 93 e5                                      ldr r3, [r3]
004aa1a0  06 00 53 e1                                      cmp r3, r6
004aa1a4  f3 ff ff 8a                                      bhi #0x4aa178
004aa1a8  07 30 95 e7                                      ldr r3, [r5, r7]
004aa1ac  00 30 93 e5                                      ldr r3, [r3]
004aa1b0  00 00 53 e3                                      cmp r3, #0
004aa1b4  11 00 00 0a                                      beq #0x4aa200
004aa1b8  04 20 13 e5                                      ldr r2, [r3, #-4]
004aa1bc  44 00 a0 e3                                      mov r0, #0x44
004aa1c0  90 32 20 e0                                      mla r0, r0, r2, r3
004aa1c4  00 00 53 e1                                      cmp r3, r0
004aa1c8  01 00 00 1a                                      bne #0x4aa1d4
004aa1cc  09 00 00 ea                                      b #0x4aa1f8
004aa1d0  04 00 a0 e1                                      mov r0, r4
004aa1d4  44 40 40 e2                                      sub r4, r0, #0x44
004aa1d8  44 30 10 e5                                      ldr r3, [r0, #-0x44]
004aa1dc  04 00 a0 e1                                      mov r0, r4
004aa1e0  0f e0 a0 e1                                      mov lr, pc
004aa1e4  00 f0 93 e5                                      ldr pc, [r3]
004aa1e8  07 30 95 e7                                      ldr r3, [r5, r7]
004aa1ec  00 00 93 e5                                      ldr r0, [r3]
004aa1f0  04 00 50 e1                                      cmp r0, r4
004aa1f4  f5 ff ff 1a                                      bne #0x4aa1d0
004aa1f8  08 00 40 e2                                      sub r0, r0, #8
004aa1fc  8f 98 f9 eb                                      bl #0x310440
004aa200  07 30 95 e7                                      ldr r3, [r5, r7]
004aa204  00 20 a0 e3                                      mov r2, #0
004aa208  00 20 83 e5                                      str r2, [r3]
004aa20c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aa210  4c a9 4e 00 58 07 00 00 2c 11 00 00              .byte 0x4c, 0xa9, 0x4e, 0x00, 0x58, 0x07, 0x00, 0x00, 0x2c, 0x11, 0x00, 0x00

; FUNCTION 0x004b3b84, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::AITable
; alias: _ZN6Arrays7AITable4readEP11IStreamBase
; demangled: Arrays::AITable::read(IStreamBase*)
; decoder-mode: arm
004b3b84  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b3b88  0c d0 4d e2                                      sub sp, sp, #0xc
004b3b8c  00 a0 a0 e1                                      mov sl, r0
004b3b90  be 7f f9 eb                                      bl #0x313a90
004b3b94  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b3b98  01 30 a0 e3                                      mov r3, #1
004b3b9c  00 00 53 e3                                      cmp r3, #0
004b3ba0  04 00 8d e5                                      str r0, [sp, #4]
004b3ba4  00 30 8d e5                                      str r3, [sp]
004b3ba8  06 60 8f e0                                      add r6, pc, r6
004b3bac  10 00 00 1a                                      bne #0x4b3bf4
004b3bb0  04 30 8d e2                                      add r3, sp, #4
004b3bb4  02 20 83 e2                                      add r2, r3, #2
004b3bb8  01 30 83 e2                                      add r3, r3, #1
004b3bbc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3bc0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b3bc4  03 00 52 e1                                      cmp r2, r3
004b3bc8  01 10 20 e0                                      eor r1, r0, r1
004b3bcc  01 10 43 e5                                      strb r1, [r3, #-1]
004b3bd0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3bd4  00 10 21 e0                                      eor r1, r1, r0
004b3bd8  01 10 c2 e5                                      strb r1, [r2, #1]
004b3bdc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b3be0  01 20 42 e2                                      sub r2, r2, #1
004b3be4  00 10 21 e0                                      eor r1, r1, r0
004b3be8  01 10 43 e5                                      strb r1, [r3, #-1]
004b3bec  01 30 83 e2                                      add r3, r3, #1
004b3bf0  f1 ff ff 8a                                      bhi #0x4b3bbc
004b3bf4  4f d9 ff eb                                      bl #0x4aa138
004b3bf8  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b3bfc  04 40 9d e5                                      ldr r4, [sp, #4]
004b3c00  44 50 a0 e3                                      mov r5, #0x44
004b3c04  07 30 96 e7                                      ldr r3, [r6, r7]
004b3c08  95 04 00 e0                                      mul r0, r5, r4
004b3c0c  00 40 83 e5                                      str r4, [r3]
004b3c10  08 00 80 e2                                      add r0, r0, #8
004b3c14  01 10 a0 e3                                      mov r1, #1
004b3c18  53 72 f9 eb                                      bl #0x31056c
004b3c1c  00 00 54 e3                                      cmp r4, #0
004b3c20  00 50 80 e5                                      str r5, [r0]
004b3c24  04 40 80 e5                                      str r4, [r0, #4]
004b3c28  08 30 80 e2                                      add r3, r0, #8
004b3c2c  0a 00 00 0a                                      beq #0x4b3c5c
004b3c30  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b3c34  00 20 a0 e3                                      mov r2, #0
004b3c38  02 c0 a0 e1                                      mov ip, r2
004b3c3c  01 10 96 e7                                      ldr r1, [r6, r1]
004b3c40  08 10 81 e2                                      add r1, r1, #8
004b3c44  01 20 82 e2                                      add r2, r2, #1
004b3c48  04 00 52 e1                                      cmp r2, r4
004b3c4c  08 10 80 e5                                      str r1, [r0, #8]
004b3c50  34 c0 80 e5                                      str ip, [r0, #0x34]
004b3c54  44 00 80 e2                                      add r0, r0, #0x44
004b3c58  f9 ff ff 1a                                      bne #0x4b3c44
004b3c5c  07 20 96 e7                                      ldr r2, [r6, r7]
004b3c60  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b3c64  00 10 92 e5                                      ldr r1, [r2]
004b3c68  08 20 96 e7                                      ldr r2, [r6, r8]
004b3c6c  00 00 51 e3                                      cmp r1, #0
004b3c70  00 30 82 e5                                      str r3, [r2]
004b3c74  0f 00 00 0a                                      beq #0x4b3cb8
004b3c78  00 40 a0 e3                                      mov r4, #0
004b3c7c  04 50 a0 e1                                      mov r5, r4
004b3c80  01 00 00 ea                                      b #0x4b3c8c
004b3c84  08 30 96 e7                                      ldr r3, [r6, r8]
004b3c88  00 30 93 e5                                      ldr r3, [r3]
004b3c8c  04 00 83 e0                                      add r0, r3, r4
004b3c90  0a 10 a0 e1                                      mov r1, sl
004b3c94  04 30 93 e7                                      ldr r3, [r3, r4]
004b3c98  0f e0 a0 e1                                      mov lr, pc
004b3c9c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b3ca0  07 30 96 e7                                      ldr r3, [r6, r7]
004b3ca4  01 50 85 e2                                      add r5, r5, #1
004b3ca8  44 40 84 e2                                      add r4, r4, #0x44
004b3cac  00 30 93 e5                                      ldr r3, [r3]
004b3cb0  05 00 53 e1                                      cmp r3, r5
004b3cb4  f2 ff ff 8a                                      bhi #0x4b3c84
004b3cb8  0c d0 8d e2                                      add sp, sp, #0xc
004b3cbc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b3cc0  e8 0e 4e 00 2c 11 00 00 8c 41 00 00 58 07 00 00  .byte 0xe8, 0x0e, 0x4e, 0x00, 0x2c, 0x11, 0x00, 0x00, 0x8c, 0x41, 0x00, 0x00, 0x58, 0x07, 0x00, 0x00

; FUNCTION 0x004b749c, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::AITable
; alias: _ZN6Arrays7AITable9readNamesEP11IStreamBase
; demangled: Arrays::AITable::readNames(IStreamBase*)
; decoder-mode: arm
004b749c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b74a0  00 70 a0 e1                                      mov r7, r0
004b74a4  1c d0 4d e2                                      sub sp, sp, #0x1c
004b74a8  fb ca ff eb                                      bl #0x4aa09c
004b74ac  07 00 a0 e1                                      mov r0, r7
004b74b0  76 71 f9 eb                                      bl #0x313a90
004b74b4  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b74b8  01 30 a0 e3                                      mov r3, #1
004b74bc  00 00 53 e3                                      cmp r3, #0
004b74c0  06 60 8f e0                                      add r6, pc, r6
004b74c4  14 00 8d e5                                      str r0, [sp, #0x14]
004b74c8  0c 30 8d e5                                      str r3, [sp, #0xc]
004b74cc  12 00 00 1a                                      bne #0x4b751c
004b74d0  14 30 8d e2                                      add r3, sp, #0x14
004b74d4  02 20 83 e2                                      add r2, r3, #2
004b74d8  01 30 83 e2                                      add r3, r3, #1
004b74dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b74e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b74e4  03 00 52 e1                                      cmp r2, r3
004b74e8  02 40 a0 e1                                      mov r4, r2
004b74ec  01 10 20 e0                                      eor r1, r0, r1
004b74f0  01 10 43 e5                                      strb r1, [r3, #-1]
004b74f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b74f8  00 10 21 e0                                      eor r1, r1, r0
004b74fc  01 10 c2 e5                                      strb r1, [r2, #1]
004b7500  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b7504  01 20 42 e2                                      sub r2, r2, #1
004b7508  00 10 21 e0                                      eor r1, r1, r0
004b750c  01 10 43 e5                                      strb r1, [r3, #-1]
004b7510  01 30 83 e2                                      add r3, r3, #1
004b7514  f0 ff ff 8a                                      bhi #0x4b74dc
004b7518  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b751c  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b7520  03 30 96 e7                                      ldr r3, [r6, r3]
004b7524  00 30 93 e5                                      ldr r3, [r3]
004b7528  00 00 53 e1                                      cmp r3, r0
004b752c  01 00 00 0a                                      beq #0x4b7538
004b7530  1c d0 8d e2                                      add sp, sp, #0x1c
004b7534  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b7538  00 01 a0 e1                                      lsl r0, r0, #2
004b753c  01 10 a0 e3                                      mov r1, #1
004b7540  09 64 f9 eb                                      bl #0x31056c
004b7544  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b7548  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b754c  09 30 96 e7                                      ldr r3, [r6, sb]
004b7550  00 00 52 e3                                      cmp r2, #0
004b7554  00 00 83 e5                                      str r0, [r3]
004b7558  f4 ff ff 0a                                      beq #0x4b7530
004b755c  10 a0 8d e2                                      add sl, sp, #0x10
004b7560  01 80 a0 e3                                      mov r8, #1
004b7564  08 10 8a e0                                      add r1, sl, r8
004b7568  02 30 8a e2                                      add r3, sl, #2
004b756c  00 40 a0 e3                                      mov r4, #0
004b7570  0a 00 8d e8                                      stm sp, {r1, r3}
004b7574  07 00 a0 e1                                      mov r0, r7
004b7578  0a 10 a0 e1                                      mov r1, sl
004b757c  07 9f fc eb                                      bl #0x3df1a0
004b7580  00 00 58 e3                                      cmp r8, #0
004b7584  0c 80 8d e5                                      str r8, [sp, #0xc]
004b7588  0f 00 00 1a                                      bne #0x4b75cc
004b758c  00 30 9d e5                                      ldr r3, [sp]
004b7590  04 20 9d e5                                      ldr r2, [sp, #4]
004b7594  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7598  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b759c  03 00 52 e1                                      cmp r2, r3
004b75a0  01 10 20 e0                                      eor r1, r0, r1
004b75a4  01 10 43 e5                                      strb r1, [r3, #-1]
004b75a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b75ac  00 10 21 e0                                      eor r1, r1, r0
004b75b0  01 10 c2 e5                                      strb r1, [r2, #1]
004b75b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b75b8  01 20 42 e2                                      sub r2, r2, #1
004b75bc  00 10 21 e0                                      eor r1, r1, r0
004b75c0  01 10 43 e5                                      strb r1, [r3, #-1]
004b75c4  01 30 83 e2                                      add r3, r3, #1
004b75c8  f1 ff ff 8a                                      bhi #0x4b7594
004b75cc  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b75d0  09 50 96 e7                                      ldr r5, [r6, sb]
004b75d4  01 10 a0 e3                                      mov r1, #1
004b75d8  01 00 80 e0                                      add r0, r0, r1
004b75dc  00 b0 95 e5                                      ldr fp, [r5]
004b75e0  e1 63 f9 eb                                      bl #0x31056c
004b75e4  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b75e8  00 30 95 e5                                      ldr r3, [r5]
004b75ec  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b75f0  07 00 a0 e1                                      mov r0, r7
004b75f4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b75f8  00 30 a0 e3                                      mov r3, #0
004b75fc  94 7f f9 eb                                      bl #0x317454
004b7600  00 30 95 e5                                      ldr r3, [r5]
004b7604  00 10 a0 e3                                      mov r1, #0
004b7608  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b760c  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b7610  01 40 84 e2                                      add r4, r4, #1
004b7614  03 10 c2 e7                                      strb r1, [r2, r3]
004b7618  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b761c  04 00 53 e1                                      cmp r3, r4
004b7620  d3 ff ff 8a                                      bhi #0x4b7574
004b7624  c1 ff ff ea                                      b #0x4b7530
; mapping-symbol data/literal pool
004b7628  d0 d5 4d 00 2c 11 00 00 fc 4a 00 00              .byte 0xd0, 0xd5, 0x4d, 0x00, 0x2c, 0x11, 0x00, 0x00, 0xfc, 0x4a, 0x00, 0x00

; FUNCTION 0x004b7634, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::AITable
; alias: _ZN6Arrays7AITable9skipNamesEP11IStreamBase
; demangled: Arrays::AITable::skipNames(IStreamBase*)
; decoder-mode: arm
004b7634  98 ff ff ea                                      b #0x4b749c
