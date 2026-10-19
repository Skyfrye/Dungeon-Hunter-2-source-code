; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a5164, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::Listeners
; alias: _ZN6Arrays9Listeners13finalizeNamesEv
; demangled: Arrays::Listeners::finalizeNames()
; decoder-mode: arm
004a5164  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5168  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a516c  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a5170  05 50 8f e0                                      add r5, pc, r5
004a5174  06 30 95 e7                                      ldr r3, [r5, r6]
004a5178  00 30 93 e5                                      ldr r3, [r3]
004a517c  00 00 53 e3                                      cmp r3, #0
004a5180  1a 00 00 0a                                      beq #0x4a51f0
004a5184  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a5188  07 20 95 e7                                      ldr r2, [r5, r7]
004a518c  00 20 92 e5                                      ldr r2, [r2]
004a5190  00 00 52 e3                                      cmp r2, #0
004a5194  10 00 00 0a                                      beq #0x4a51dc
004a5198  00 40 a0 e3                                      mov r4, #0
004a519c  01 00 00 ea                                      b #0x4a51a8
004a51a0  06 30 95 e7                                      ldr r3, [r5, r6]
004a51a4  00 30 93 e5                                      ldr r3, [r3]
004a51a8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a51ac  01 40 84 e2                                      add r4, r4, #1
004a51b0  00 00 50 e3                                      cmp r0, #0
004a51b4  02 00 00 0a                                      beq #0x4a51c4
004a51b8  a0 ac f9 eb                                      bl #0x310440
004a51bc  06 30 95 e7                                      ldr r3, [r5, r6]
004a51c0  00 30 93 e5                                      ldr r3, [r3]
004a51c4  07 20 95 e7                                      ldr r2, [r5, r7]
004a51c8  00 20 92 e5                                      ldr r2, [r2]
004a51cc  04 00 52 e1                                      cmp r2, r4
004a51d0  f2 ff ff 8a                                      bhi #0x4a51a0
004a51d4  00 00 53 e3                                      cmp r3, #0
004a51d8  01 00 00 0a                                      beq #0x4a51e4
004a51dc  03 00 a0 e1                                      mov r0, r3
004a51e0  96 ac f9 eb                                      bl #0x310440
004a51e4  06 30 95 e7                                      ldr r3, [r5, r6]
004a51e8  00 20 a0 e3                                      mov r2, #0
004a51ec  00 20 83 e5                                      str r2, [r3]
004a51f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a51f4  20 f9 4e 00 28 16 00 00 70 3a 00 00              .byte 0x20, 0xf9, 0x4e, 0x00, 0x28, 0x16, 0x00, 0x00, 0x70, 0x3a, 0x00, 0x00

; FUNCTION 0x004a5200, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::Listeners
; alias: _ZN6Arrays9Listeners8finalizeEv
; demangled: Arrays::Listeners::finalize()
; decoder-mode: arm
004a5200  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5204  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a5208  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a520c  05 50 8f e0                                      add r5, pc, r5
004a5210  07 30 95 e7                                      ldr r3, [r5, r7]
004a5214  00 30 93 e5                                      ldr r3, [r3]
004a5218  00 00 53 e3                                      cmp r3, #0
004a521c  2c 00 00 0a                                      beq #0x4a52d4
004a5220  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a5224  08 20 95 e7                                      ldr r2, [r5, r8]
004a5228  00 20 92 e5                                      ldr r2, [r2]
004a522c  00 00 52 e3                                      cmp r2, #0
004a5230  12 00 00 0a                                      beq #0x4a5280
004a5234  00 40 a0 e3                                      mov r4, #0
004a5238  04 60 a0 e1                                      mov r6, r4
004a523c  01 00 00 ea                                      b #0x4a5248
004a5240  07 30 95 e7                                      ldr r3, [r5, r7]
004a5244  00 30 93 e5                                      ldr r3, [r3]
004a5248  04 00 83 e0                                      add r0, r3, r4
004a524c  04 30 93 e7                                      ldr r3, [r3, r4]
004a5250  0f e0 a0 e1                                      mov lr, pc
004a5254  08 f0 93 e5                                      ldr pc, [r3, #8]
004a5258  08 30 95 e7                                      ldr r3, [r5, r8]
004a525c  01 60 86 e2                                      add r6, r6, #1
004a5260  1c 40 84 e2                                      add r4, r4, #0x1c
004a5264  00 30 93 e5                                      ldr r3, [r3]
004a5268  06 00 53 e1                                      cmp r3, r6
004a526c  f3 ff ff 8a                                      bhi #0x4a5240
004a5270  07 30 95 e7                                      ldr r3, [r5, r7]
004a5274  00 30 93 e5                                      ldr r3, [r3]
004a5278  00 00 53 e3                                      cmp r3, #0
004a527c  11 00 00 0a                                      beq #0x4a52c8
004a5280  04 20 13 e5                                      ldr r2, [r3, #-4]
004a5284  1c 00 a0 e3                                      mov r0, #0x1c
004a5288  90 32 20 e0                                      mla r0, r0, r2, r3
004a528c  00 00 53 e1                                      cmp r3, r0
004a5290  01 00 00 1a                                      bne #0x4a529c
004a5294  09 00 00 ea                                      b #0x4a52c0
004a5298  04 00 a0 e1                                      mov r0, r4
004a529c  1c 40 40 e2                                      sub r4, r0, #0x1c
004a52a0  1c 30 10 e5                                      ldr r3, [r0, #-0x1c]
004a52a4  04 00 a0 e1                                      mov r0, r4
004a52a8  0f e0 a0 e1                                      mov lr, pc
004a52ac  00 f0 93 e5                                      ldr pc, [r3]
004a52b0  07 30 95 e7                                      ldr r3, [r5, r7]
004a52b4  00 00 93 e5                                      ldr r0, [r3]
004a52b8  04 00 50 e1                                      cmp r0, r4
004a52bc  f5 ff ff 1a                                      bne #0x4a5298
004a52c0  08 00 40 e2                                      sub r0, r0, #8
004a52c4  5d ac f9 eb                                      bl #0x310440
004a52c8  07 30 95 e7                                      ldr r3, [r5, r7]
004a52cc  00 20 a0 e3                                      mov r2, #0
004a52d0  00 20 83 e5                                      str r2, [r3]
004a52d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a52d8  84 f8 4e 00 d4 36 00 00 70 3a 00 00              .byte 0x84, 0xf8, 0x4e, 0x00, 0xd4, 0x36, 0x00, 0x00, 0x70, 0x3a, 0x00, 0x00

; FUNCTION 0x004b0c68, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::Listeners
; alias: _ZN6Arrays9Listeners9readNamesEP11IStreamBase
; demangled: Arrays::Listeners::readNames(IStreamBase*)
; decoder-mode: arm
004b0c68  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b0c6c  00 70 a0 e1                                      mov r7, r0
004b0c70  1c d0 4d e2                                      sub sp, sp, #0x1c
004b0c74  3a d1 ff eb                                      bl #0x4a5164
004b0c78  07 00 a0 e1                                      mov r0, r7
004b0c7c  83 8b f9 eb                                      bl #0x313a90
004b0c80  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b0c84  01 30 a0 e3                                      mov r3, #1
004b0c88  00 00 53 e3                                      cmp r3, #0
004b0c8c  06 60 8f e0                                      add r6, pc, r6
004b0c90  14 00 8d e5                                      str r0, [sp, #0x14]
004b0c94  0c 30 8d e5                                      str r3, [sp, #0xc]
004b0c98  12 00 00 1a                                      bne #0x4b0ce8
004b0c9c  14 30 8d e2                                      add r3, sp, #0x14
004b0ca0  02 20 83 e2                                      add r2, r3, #2
004b0ca4  01 30 83 e2                                      add r3, r3, #1
004b0ca8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0cac  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0cb0  03 00 52 e1                                      cmp r2, r3
004b0cb4  02 40 a0 e1                                      mov r4, r2
004b0cb8  01 10 20 e0                                      eor r1, r0, r1
004b0cbc  01 10 43 e5                                      strb r1, [r3, #-1]
004b0cc0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0cc4  00 10 21 e0                                      eor r1, r1, r0
004b0cc8  01 10 c2 e5                                      strb r1, [r2, #1]
004b0ccc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0cd0  01 20 42 e2                                      sub r2, r2, #1
004b0cd4  00 10 21 e0                                      eor r1, r1, r0
004b0cd8  01 10 43 e5                                      strb r1, [r3, #-1]
004b0cdc  01 30 83 e2                                      add r3, r3, #1
004b0ce0  f0 ff ff 8a                                      bhi #0x4b0ca8
004b0ce4  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b0ce8  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b0cec  03 30 96 e7                                      ldr r3, [r6, r3]
004b0cf0  00 30 93 e5                                      ldr r3, [r3]
004b0cf4  00 00 53 e1                                      cmp r3, r0
004b0cf8  01 00 00 0a                                      beq #0x4b0d04
004b0cfc  1c d0 8d e2                                      add sp, sp, #0x1c
004b0d00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b0d04  00 01 a0 e1                                      lsl r0, r0, #2
004b0d08  01 10 a0 e3                                      mov r1, #1
004b0d0c  16 7e f9 eb                                      bl #0x31056c
004b0d10  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b0d14  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b0d18  09 30 96 e7                                      ldr r3, [r6, sb]
004b0d1c  00 00 52 e3                                      cmp r2, #0
004b0d20  00 00 83 e5                                      str r0, [r3]
004b0d24  f4 ff ff 0a                                      beq #0x4b0cfc
004b0d28  10 a0 8d e2                                      add sl, sp, #0x10
004b0d2c  01 80 a0 e3                                      mov r8, #1
004b0d30  08 10 8a e0                                      add r1, sl, r8
004b0d34  02 30 8a e2                                      add r3, sl, #2
004b0d38  00 40 a0 e3                                      mov r4, #0
004b0d3c  0a 00 8d e8                                      stm sp, {r1, r3}
004b0d40  07 00 a0 e1                                      mov r0, r7
004b0d44  0a 10 a0 e1                                      mov r1, sl
004b0d48  14 b9 fc eb                                      bl #0x3df1a0
004b0d4c  00 00 58 e3                                      cmp r8, #0
004b0d50  0c 80 8d e5                                      str r8, [sp, #0xc]
004b0d54  0f 00 00 1a                                      bne #0x4b0d98
004b0d58  00 30 9d e5                                      ldr r3, [sp]
004b0d5c  04 20 9d e5                                      ldr r2, [sp, #4]
004b0d60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0d64  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0d68  03 00 52 e1                                      cmp r2, r3
004b0d6c  01 10 20 e0                                      eor r1, r0, r1
004b0d70  01 10 43 e5                                      strb r1, [r3, #-1]
004b0d74  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0d78  00 10 21 e0                                      eor r1, r1, r0
004b0d7c  01 10 c2 e5                                      strb r1, [r2, #1]
004b0d80  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0d84  01 20 42 e2                                      sub r2, r2, #1
004b0d88  00 10 21 e0                                      eor r1, r1, r0
004b0d8c  01 10 43 e5                                      strb r1, [r3, #-1]
004b0d90  01 30 83 e2                                      add r3, r3, #1
004b0d94  f1 ff ff 8a                                      bhi #0x4b0d60
004b0d98  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b0d9c  09 50 96 e7                                      ldr r5, [r6, sb]
004b0da0  01 10 a0 e3                                      mov r1, #1
004b0da4  01 00 80 e0                                      add r0, r0, r1
004b0da8  00 b0 95 e5                                      ldr fp, [r5]
004b0dac  ee 7d f9 eb                                      bl #0x31056c
004b0db0  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b0db4  00 30 95 e5                                      ldr r3, [r5]
004b0db8  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b0dbc  07 00 a0 e1                                      mov r0, r7
004b0dc0  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b0dc4  00 30 a0 e3                                      mov r3, #0
004b0dc8  a1 99 f9 eb                                      bl #0x317454
004b0dcc  00 30 95 e5                                      ldr r3, [r5]
004b0dd0  00 10 a0 e3                                      mov r1, #0
004b0dd4  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b0dd8  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b0ddc  01 40 84 e2                                      add r4, r4, #1
004b0de0  03 10 c2 e7                                      strb r1, [r2, r3]
004b0de4  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b0de8  04 00 53 e1                                      cmp r3, r4
004b0dec  d3 ff ff 8a                                      bhi #0x4b0d40
004b0df0  c1 ff ff ea                                      b #0x4b0cfc
; mapping-symbol data/literal pool
004b0df4  04 3e 4e 00 70 3a 00 00 28 16 00 00              .byte 0x04, 0x3e, 0x4e, 0x00, 0x70, 0x3a, 0x00, 0x00, 0x28, 0x16, 0x00, 0x00

; FUNCTION 0x004b9578, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::Listeners
; alias: _ZN6Arrays9Listeners4readEP11IStreamBase
; demangled: Arrays::Listeners::read(IStreamBase*)
; decoder-mode: arm
004b9578  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b957c  0c d0 4d e2                                      sub sp, sp, #0xc
004b9580  00 a0 a0 e1                                      mov sl, r0
004b9584  41 69 f9 eb                                      bl #0x313a90
004b9588  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004b958c  01 30 a0 e3                                      mov r3, #1
004b9590  00 00 53 e3                                      cmp r3, #0
004b9594  04 00 8d e5                                      str r0, [sp, #4]
004b9598  00 30 8d e5                                      str r3, [sp]
004b959c  06 60 8f e0                                      add r6, pc, r6
004b95a0  10 00 00 1a                                      bne #0x4b95e8
004b95a4  04 30 8d e2                                      add r3, sp, #4
004b95a8  02 20 83 e2                                      add r2, r3, #2
004b95ac  01 30 83 e2                                      add r3, r3, #1
004b95b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b95b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b95b8  03 00 52 e1                                      cmp r2, r3
004b95bc  01 10 20 e0                                      eor r1, r0, r1
004b95c0  01 10 43 e5                                      strb r1, [r3, #-1]
004b95c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b95c8  00 10 21 e0                                      eor r1, r1, r0
004b95cc  01 10 c2 e5                                      strb r1, [r2, #1]
004b95d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b95d4  01 20 42 e2                                      sub r2, r2, #1
004b95d8  00 10 21 e0                                      eor r1, r1, r0
004b95dc  01 10 43 e5                                      strb r1, [r3, #-1]
004b95e0  01 30 83 e2                                      add r3, r3, #1
004b95e4  f1 ff ff 8a                                      bhi #0x4b95b0
004b95e8  04 af ff eb                                      bl #0x4a5200
004b95ec  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
004b95f0  04 40 9d e5                                      ldr r4, [sp, #4]
004b95f4  1c 50 a0 e3                                      mov r5, #0x1c
004b95f8  07 30 96 e7                                      ldr r3, [r6, r7]
004b95fc  95 04 00 e0                                      mul r0, r5, r4
004b9600  00 40 83 e5                                      str r4, [r3]
004b9604  08 00 80 e2                                      add r0, r0, #8
004b9608  01 10 a0 e3                                      mov r1, #1
004b960c  d6 5b f9 eb                                      bl #0x31056c
004b9610  00 00 54 e3                                      cmp r4, #0
004b9614  00 50 80 e5                                      str r5, [r0]
004b9618  04 40 80 e5                                      str r4, [r0, #4]
004b961c  08 30 80 e2                                      add r3, r0, #8
004b9620  08 00 00 0a                                      beq #0x4b9648
004b9624  88 10 9f e5                                      ldr r1, [pc, #0x88]
004b9628  00 20 a0 e3                                      mov r2, #0
004b962c  01 10 96 e7                                      ldr r1, [r6, r1]
004b9630  08 10 81 e2                                      add r1, r1, #8
004b9634  01 20 82 e2                                      add r2, r2, #1
004b9638  04 00 52 e1                                      cmp r2, r4
004b963c  08 10 80 e5                                      str r1, [r0, #8]
004b9640  1c 00 80 e2                                      add r0, r0, #0x1c
004b9644  fa ff ff 1a                                      bne #0x4b9634
004b9648  07 20 96 e7                                      ldr r2, [r6, r7]
004b964c  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b9650  00 10 92 e5                                      ldr r1, [r2]
004b9654  08 20 96 e7                                      ldr r2, [r6, r8]
004b9658  00 00 51 e3                                      cmp r1, #0
004b965c  00 30 82 e5                                      str r3, [r2]
004b9660  0f 00 00 0a                                      beq #0x4b96a4
004b9664  00 40 a0 e3                                      mov r4, #0
004b9668  04 50 a0 e1                                      mov r5, r4
004b966c  01 00 00 ea                                      b #0x4b9678
004b9670  08 30 96 e7                                      ldr r3, [r6, r8]
004b9674  00 30 93 e5                                      ldr r3, [r3]
004b9678  04 00 83 e0                                      add r0, r3, r4
004b967c  0a 10 a0 e1                                      mov r1, sl
004b9680  04 30 93 e7                                      ldr r3, [r3, r4]
004b9684  0f e0 a0 e1                                      mov lr, pc
004b9688  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b968c  07 30 96 e7                                      ldr r3, [r6, r7]
004b9690  01 50 85 e2                                      add r5, r5, #1
004b9694  1c 40 84 e2                                      add r4, r4, #0x1c
004b9698  00 30 93 e5                                      ldr r3, [r3]
004b969c  05 00 53 e1                                      cmp r3, r5
004b96a0  f2 ff ff 8a                                      bhi #0x4b9670
004b96a4  0c d0 8d e2                                      add sp, sp, #0xc
004b96a8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b96ac  f4 b4 4d 00 70 3a 00 00 b8 0a 00 00 d4 36 00 00  .byte 0xf4, 0xb4, 0x4d, 0x00, 0x70, 0x3a, 0x00, 0x00, 0xb8, 0x0a, 0x00, 0x00, 0xd4, 0x36, 0x00, 0x00
