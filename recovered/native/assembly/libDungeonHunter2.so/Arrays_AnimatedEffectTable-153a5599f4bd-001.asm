; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a88a8, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::AnimatedEffectTable
; alias: _ZN6Arrays19AnimatedEffectTable13finalizeNamesEv
; demangled: Arrays::AnimatedEffectTable::finalizeNames()
; decoder-mode: arm
004a88a8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a88ac  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a88b0  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a88b4  05 50 8f e0                                      add r5, pc, r5
004a88b8  06 30 95 e7                                      ldr r3, [r5, r6]
004a88bc  00 30 93 e5                                      ldr r3, [r3]
004a88c0  00 00 53 e3                                      cmp r3, #0
004a88c4  1a 00 00 0a                                      beq #0x4a8934
004a88c8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a88cc  07 20 95 e7                                      ldr r2, [r5, r7]
004a88d0  00 20 92 e5                                      ldr r2, [r2]
004a88d4  00 00 52 e3                                      cmp r2, #0
004a88d8  10 00 00 0a                                      beq #0x4a8920
004a88dc  00 40 a0 e3                                      mov r4, #0
004a88e0  01 00 00 ea                                      b #0x4a88ec
004a88e4  06 30 95 e7                                      ldr r3, [r5, r6]
004a88e8  00 30 93 e5                                      ldr r3, [r3]
004a88ec  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a88f0  01 40 84 e2                                      add r4, r4, #1
004a88f4  00 00 50 e3                                      cmp r0, #0
004a88f8  02 00 00 0a                                      beq #0x4a8908
004a88fc  cf 9e f9 eb                                      bl #0x310440
004a8900  06 30 95 e7                                      ldr r3, [r5, r6]
004a8904  00 30 93 e5                                      ldr r3, [r3]
004a8908  07 20 95 e7                                      ldr r2, [r5, r7]
004a890c  00 20 92 e5                                      ldr r2, [r2]
004a8910  04 00 52 e1                                      cmp r2, r4
004a8914  f2 ff ff 8a                                      bhi #0x4a88e4
004a8918  00 00 53 e3                                      cmp r3, #0
004a891c  01 00 00 0a                                      beq #0x4a8928
004a8920  03 00 a0 e1                                      mov r0, r3
004a8924  c5 9e f9 eb                                      bl #0x310440
004a8928  06 30 95 e7                                      ldr r3, [r5, r6]
004a892c  00 20 a0 e3                                      mov r2, #0
004a8930  00 20 83 e5                                      str r2, [r3]
004a8934  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8938  dc c1 4e 00 94 12 00 00 c4 06 00 00              .byte 0xdc, 0xc1, 0x4e, 0x00, 0x94, 0x12, 0x00, 0x00, 0xc4, 0x06, 0x00, 0x00

; FUNCTION 0x004a8944, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::AnimatedEffectTable
; alias: _ZN6Arrays19AnimatedEffectTable8finalizeEv
; demangled: Arrays::AnimatedEffectTable::finalize()
; decoder-mode: arm
004a8944  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8948  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a894c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a8950  05 50 8f e0                                      add r5, pc, r5
004a8954  07 30 95 e7                                      ldr r3, [r5, r7]
004a8958  00 30 93 e5                                      ldr r3, [r3]
004a895c  00 00 53 e3                                      cmp r3, #0
004a8960  2c 00 00 0a                                      beq #0x4a8a18
004a8964  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a8968  08 20 95 e7                                      ldr r2, [r5, r8]
004a896c  00 20 92 e5                                      ldr r2, [r2]
004a8970  00 00 52 e3                                      cmp r2, #0
004a8974  12 00 00 0a                                      beq #0x4a89c4
004a8978  00 40 a0 e3                                      mov r4, #0
004a897c  04 60 a0 e1                                      mov r6, r4
004a8980  01 00 00 ea                                      b #0x4a898c
004a8984  07 30 95 e7                                      ldr r3, [r5, r7]
004a8988  00 30 93 e5                                      ldr r3, [r3]
004a898c  04 00 83 e0                                      add r0, r3, r4
004a8990  04 30 93 e7                                      ldr r3, [r3, r4]
004a8994  0f e0 a0 e1                                      mov lr, pc
004a8998  08 f0 93 e5                                      ldr pc, [r3, #8]
004a899c  08 30 95 e7                                      ldr r3, [r5, r8]
004a89a0  01 60 86 e2                                      add r6, r6, #1
004a89a4  18 40 84 e2                                      add r4, r4, #0x18
004a89a8  00 30 93 e5                                      ldr r3, [r3]
004a89ac  06 00 53 e1                                      cmp r3, r6
004a89b0  f3 ff ff 8a                                      bhi #0x4a8984
004a89b4  07 30 95 e7                                      ldr r3, [r5, r7]
004a89b8  00 30 93 e5                                      ldr r3, [r3]
004a89bc  00 00 53 e3                                      cmp r3, #0
004a89c0  11 00 00 0a                                      beq #0x4a8a0c
004a89c4  04 20 13 e5                                      ldr r2, [r3, #-4]
004a89c8  18 00 a0 e3                                      mov r0, #0x18
004a89cc  90 32 20 e0                                      mla r0, r0, r2, r3
004a89d0  00 00 53 e1                                      cmp r3, r0
004a89d4  01 00 00 1a                                      bne #0x4a89e0
004a89d8  09 00 00 ea                                      b #0x4a8a04
004a89dc  04 00 a0 e1                                      mov r0, r4
004a89e0  18 40 40 e2                                      sub r4, r0, #0x18
004a89e4  18 30 10 e5                                      ldr r3, [r0, #-0x18]
004a89e8  04 00 a0 e1                                      mov r0, r4
004a89ec  0f e0 a0 e1                                      mov lr, pc
004a89f0  00 f0 93 e5                                      ldr pc, [r3]
004a89f4  07 30 95 e7                                      ldr r3, [r5, r7]
004a89f8  00 00 93 e5                                      ldr r0, [r3]
004a89fc  04 00 50 e1                                      cmp r0, r4
004a8a00  f5 ff ff 1a                                      bne #0x4a89dc
004a8a04  08 00 40 e2                                      sub r0, r0, #8
004a8a08  8c 9e f9 eb                                      bl #0x310440
004a8a0c  07 30 95 e7                                      ldr r3, [r5, r7]
004a8a10  00 20 a0 e3                                      mov r2, #0
004a8a14  00 20 83 e5                                      str r2, [r3]
004a8a18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8a1c  40 c1 4e 00 70 39 00 00 c4 06 00 00              .byte 0x40, 0xc1, 0x4e, 0x00, 0x70, 0x39, 0x00, 0x00, 0xc4, 0x06, 0x00, 0x00

; FUNCTION 0x004b2ad4, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::AnimatedEffectTable
; alias: _ZN6Arrays19AnimatedEffectTable9readNamesEP11IStreamBase
; demangled: Arrays::AnimatedEffectTable::readNames(IStreamBase*)
; decoder-mode: arm
004b2ad4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b2ad8  00 70 a0 e1                                      mov r7, r0
004b2adc  1c d0 4d e2                                      sub sp, sp, #0x1c
004b2ae0  70 d7 ff eb                                      bl #0x4a88a8
004b2ae4  07 00 a0 e1                                      mov r0, r7
004b2ae8  e8 83 f9 eb                                      bl #0x313a90
004b2aec  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b2af0  01 30 a0 e3                                      mov r3, #1
004b2af4  00 00 53 e3                                      cmp r3, #0
004b2af8  06 60 8f e0                                      add r6, pc, r6
004b2afc  14 00 8d e5                                      str r0, [sp, #0x14]
004b2b00  0c 30 8d e5                                      str r3, [sp, #0xc]
004b2b04  12 00 00 1a                                      bne #0x4b2b54
004b2b08  14 30 8d e2                                      add r3, sp, #0x14
004b2b0c  02 20 83 e2                                      add r2, r3, #2
004b2b10  01 30 83 e2                                      add r3, r3, #1
004b2b14  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2b18  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2b1c  03 00 52 e1                                      cmp r2, r3
004b2b20  02 40 a0 e1                                      mov r4, r2
004b2b24  01 10 20 e0                                      eor r1, r0, r1
004b2b28  01 10 43 e5                                      strb r1, [r3, #-1]
004b2b2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2b30  00 10 21 e0                                      eor r1, r1, r0
004b2b34  01 10 c2 e5                                      strb r1, [r2, #1]
004b2b38  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b2b3c  01 20 42 e2                                      sub r2, r2, #1
004b2b40  00 10 21 e0                                      eor r1, r1, r0
004b2b44  01 10 43 e5                                      strb r1, [r3, #-1]
004b2b48  01 30 83 e2                                      add r3, r3, #1
004b2b4c  f0 ff ff 8a                                      bhi #0x4b2b14
004b2b50  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b2b54  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b2b58  03 30 96 e7                                      ldr r3, [r6, r3]
004b2b5c  00 30 93 e5                                      ldr r3, [r3]
004b2b60  00 00 53 e1                                      cmp r3, r0
004b2b64  01 00 00 0a                                      beq #0x4b2b70
004b2b68  1c d0 8d e2                                      add sp, sp, #0x1c
004b2b6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b2b70  00 01 a0 e1                                      lsl r0, r0, #2
004b2b74  01 10 a0 e3                                      mov r1, #1
004b2b78  7b 76 f9 eb                                      bl #0x31056c
004b2b7c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b2b80  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b2b84  09 30 96 e7                                      ldr r3, [r6, sb]
004b2b88  00 00 52 e3                                      cmp r2, #0
004b2b8c  00 00 83 e5                                      str r0, [r3]
004b2b90  f4 ff ff 0a                                      beq #0x4b2b68
004b2b94  10 a0 8d e2                                      add sl, sp, #0x10
004b2b98  01 80 a0 e3                                      mov r8, #1
004b2b9c  08 10 8a e0                                      add r1, sl, r8
004b2ba0  02 30 8a e2                                      add r3, sl, #2
004b2ba4  00 40 a0 e3                                      mov r4, #0
004b2ba8  0a 00 8d e8                                      stm sp, {r1, r3}
004b2bac  07 00 a0 e1                                      mov r0, r7
004b2bb0  0a 10 a0 e1                                      mov r1, sl
004b2bb4  79 b1 fc eb                                      bl #0x3df1a0
004b2bb8  00 00 58 e3                                      cmp r8, #0
004b2bbc  0c 80 8d e5                                      str r8, [sp, #0xc]
004b2bc0  0f 00 00 1a                                      bne #0x4b2c04
004b2bc4  00 30 9d e5                                      ldr r3, [sp]
004b2bc8  04 20 9d e5                                      ldr r2, [sp, #4]
004b2bcc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2bd0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2bd4  03 00 52 e1                                      cmp r2, r3
004b2bd8  01 10 20 e0                                      eor r1, r0, r1
004b2bdc  01 10 43 e5                                      strb r1, [r3, #-1]
004b2be0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2be4  00 10 21 e0                                      eor r1, r1, r0
004b2be8  01 10 c2 e5                                      strb r1, [r2, #1]
004b2bec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b2bf0  01 20 42 e2                                      sub r2, r2, #1
004b2bf4  00 10 21 e0                                      eor r1, r1, r0
004b2bf8  01 10 43 e5                                      strb r1, [r3, #-1]
004b2bfc  01 30 83 e2                                      add r3, r3, #1
004b2c00  f1 ff ff 8a                                      bhi #0x4b2bcc
004b2c04  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b2c08  09 50 96 e7                                      ldr r5, [r6, sb]
004b2c0c  01 10 a0 e3                                      mov r1, #1
004b2c10  01 00 80 e0                                      add r0, r0, r1
004b2c14  00 b0 95 e5                                      ldr fp, [r5]
004b2c18  53 76 f9 eb                                      bl #0x31056c
004b2c1c  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b2c20  00 30 95 e5                                      ldr r3, [r5]
004b2c24  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b2c28  07 00 a0 e1                                      mov r0, r7
004b2c2c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b2c30  00 30 a0 e3                                      mov r3, #0
004b2c34  06 92 f9 eb                                      bl #0x317454
004b2c38  00 30 95 e5                                      ldr r3, [r5]
004b2c3c  00 10 a0 e3                                      mov r1, #0
004b2c40  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b2c44  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b2c48  01 40 84 e2                                      add r4, r4, #1
004b2c4c  03 10 c2 e7                                      strb r1, [r2, r3]
004b2c50  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b2c54  04 00 53 e1                                      cmp r3, r4
004b2c58  d3 ff ff 8a                                      bhi #0x4b2bac
004b2c5c  c1 ff ff ea                                      b #0x4b2b68
; mapping-symbol data/literal pool
004b2c60  98 1f 4e 00 c4 06 00 00 94 12 00 00              .byte 0x98, 0x1f, 0x4e, 0x00, 0xc4, 0x06, 0x00, 0x00, 0x94, 0x12, 0x00, 0x00

; FUNCTION 0x004bc504, declared_size=328, range_size=328, mode=arm
; class-group: Arrays::AnimatedEffectTable
; alias: _ZN6Arrays19AnimatedEffectTable4readEP11IStreamBase
; demangled: Arrays::AnimatedEffectTable::read(IStreamBase*)
; decoder-mode: arm
004bc504  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bc508  0c d0 4d e2                                      sub sp, sp, #0xc
004bc50c  00 a0 a0 e1                                      mov sl, r0
004bc510  5e 5d f9 eb                                      bl #0x313a90
004bc514  20 61 9f e5                                      ldr r6, [pc, #0x120]
004bc518  01 30 a0 e3                                      mov r3, #1
004bc51c  00 00 53 e3                                      cmp r3, #0
004bc520  04 00 8d e5                                      str r0, [sp, #4]
004bc524  00 30 8d e5                                      str r3, [sp]
004bc528  06 60 8f e0                                      add r6, pc, r6
004bc52c  10 00 00 1a                                      bne #0x4bc574
004bc530  04 30 8d e2                                      add r3, sp, #4
004bc534  02 20 83 e2                                      add r2, r3, #2
004bc538  01 30 83 e2                                      add r3, r3, #1
004bc53c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc540  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bc544  03 00 52 e1                                      cmp r2, r3
004bc548  01 10 20 e0                                      eor r1, r0, r1
004bc54c  01 10 43 e5                                      strb r1, [r3, #-1]
004bc550  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc554  00 10 21 e0                                      eor r1, r1, r0
004bc558  01 10 c2 e5                                      strb r1, [r2, #1]
004bc55c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bc560  01 20 42 e2                                      sub r2, r2, #1
004bc564  00 10 21 e0                                      eor r1, r1, r0
004bc568  01 10 43 e5                                      strb r1, [r3, #-1]
004bc56c  01 30 83 e2                                      add r3, r3, #1
004bc570  f1 ff ff 8a                                      bhi #0x4bc53c
004bc574  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004bc578  f1 b0 ff eb                                      bl #0x4a8944
004bc57c  04 40 9d e5                                      ldr r4, [sp, #4]
004bc580  07 30 96 e7                                      ldr r3, [r6, r7]
004bc584  01 10 a0 e3                                      mov r1, #1
004bc588  84 00 84 e0                                      add r0, r4, r4, lsl #1
004bc58c  01 00 80 e0                                      add r0, r0, r1
004bc590  00 40 83 e5                                      str r4, [r3]
004bc594  80 01 a0 e1                                      lsl r0, r0, #3
004bc598  f3 4f f9 eb                                      bl #0x31056c
004bc59c  18 30 a0 e3                                      mov r3, #0x18
004bc5a0  00 00 54 e3                                      cmp r4, #0
004bc5a4  18 00 80 e8                                      stm r0, {r3, r4}
004bc5a8  08 30 80 e2                                      add r3, r0, #8
004bc5ac  09 00 00 0a                                      beq #0x4bc5d8
004bc5b0  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
004bc5b4  00 20 a0 e3                                      mov r2, #0
004bc5b8  02 c0 a0 e1                                      mov ip, r2
004bc5bc  01 10 96 e7                                      ldr r1, [r6, r1]
004bc5c0  08 10 81 e2                                      add r1, r1, #8
004bc5c4  01 20 82 e2                                      add r2, r2, #1
004bc5c8  04 00 52 e1                                      cmp r2, r4
004bc5cc  08 10 80 e5                                      str r1, [r0, #8]
004bc5d0  18 c0 a0 e5                                      str ip, [r0, #0x18]!
004bc5d4  fa ff ff 1a                                      bne #0x4bc5c4
004bc5d8  07 20 96 e7                                      ldr r2, [r6, r7]
004bc5dc  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bc5e0  00 10 92 e5                                      ldr r1, [r2]
004bc5e4  08 20 96 e7                                      ldr r2, [r6, r8]
004bc5e8  00 00 51 e3                                      cmp r1, #0
004bc5ec  00 30 82 e5                                      str r3, [r2]
004bc5f0  0f 00 00 0a                                      beq #0x4bc634
004bc5f4  00 40 a0 e3                                      mov r4, #0
004bc5f8  04 50 a0 e1                                      mov r5, r4
004bc5fc  01 00 00 ea                                      b #0x4bc608
004bc600  08 30 96 e7                                      ldr r3, [r6, r8]
004bc604  00 30 93 e5                                      ldr r3, [r3]
004bc608  04 00 83 e0                                      add r0, r3, r4
004bc60c  0a 10 a0 e1                                      mov r1, sl
004bc610  04 30 93 e7                                      ldr r3, [r3, r4]
004bc614  0f e0 a0 e1                                      mov lr, pc
004bc618  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bc61c  07 30 96 e7                                      ldr r3, [r6, r7]
004bc620  01 50 85 e2                                      add r5, r5, #1
004bc624  18 40 84 e2                                      add r4, r4, #0x18
004bc628  00 30 93 e5                                      ldr r3, [r3]
004bc62c  05 00 53 e1                                      cmp r3, r5
004bc630  f2 ff ff 8a                                      bhi #0x4bc600
004bc634  0c d0 8d e2                                      add sp, sp, #0xc
004bc638  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bc63c  68 85 4d 00 c4 06 00 00 bc 1f 00 00 70 39 00 00  .byte 0x68, 0x85, 0x4d, 0x00, 0xc4, 0x06, 0x00, 0x00, 0xbc, 0x1f, 0x00, 0x00, 0x70, 0x39, 0x00, 0x00
