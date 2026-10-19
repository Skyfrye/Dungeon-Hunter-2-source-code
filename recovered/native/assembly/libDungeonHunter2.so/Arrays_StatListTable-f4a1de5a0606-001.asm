; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a949c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::StatListTable
; alias: _ZN6Arrays13StatListTable13finalizeNamesEv
; demangled: Arrays::StatListTable::finalizeNames()
; decoder-mode: arm
004a949c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a94a0  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a94a4  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a94a8  05 50 8f e0                                      add r5, pc, r5
004a94ac  06 30 95 e7                                      ldr r3, [r5, r6]
004a94b0  00 30 93 e5                                      ldr r3, [r3]
004a94b4  00 00 53 e3                                      cmp r3, #0
004a94b8  1a 00 00 0a                                      beq #0x4a9528
004a94bc  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a94c0  07 20 95 e7                                      ldr r2, [r5, r7]
004a94c4  00 20 92 e5                                      ldr r2, [r2]
004a94c8  00 00 52 e3                                      cmp r2, #0
004a94cc  10 00 00 0a                                      beq #0x4a9514
004a94d0  00 40 a0 e3                                      mov r4, #0
004a94d4  01 00 00 ea                                      b #0x4a94e0
004a94d8  06 30 95 e7                                      ldr r3, [r5, r6]
004a94dc  00 30 93 e5                                      ldr r3, [r3]
004a94e0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a94e4  01 40 84 e2                                      add r4, r4, #1
004a94e8  00 00 50 e3                                      cmp r0, #0
004a94ec  02 00 00 0a                                      beq #0x4a94fc
004a94f0  d2 9b f9 eb                                      bl #0x310440
004a94f4  06 30 95 e7                                      ldr r3, [r5, r6]
004a94f8  00 30 93 e5                                      ldr r3, [r3]
004a94fc  07 20 95 e7                                      ldr r2, [r5, r7]
004a9500  00 20 92 e5                                      ldr r2, [r2]
004a9504  04 00 52 e1                                      cmp r2, r4
004a9508  f2 ff ff 8a                                      bhi #0x4a94d8
004a950c  00 00 53 e3                                      cmp r3, #0
004a9510  01 00 00 0a                                      beq #0x4a951c
004a9514  03 00 a0 e1                                      mov r0, r3
004a9518  c8 9b f9 eb                                      bl #0x310440
004a951c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9520  00 20 a0 e3                                      mov r2, #0
004a9524  00 20 83 e5                                      str r2, [r3]
004a9528  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a952c  e8 b5 4e 00 68 1d 00 00 50 23 00 00              .byte 0xe8, 0xb5, 0x4e, 0x00, 0x68, 0x1d, 0x00, 0x00, 0x50, 0x23, 0x00, 0x00

; FUNCTION 0x004a9538, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::StatListTable
; alias: _ZN6Arrays13StatListTable8finalizeEv
; demangled: Arrays::StatListTable::finalize()
; decoder-mode: arm
004a9538  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a953c  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a9540  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a9544  05 50 8f e0                                      add r5, pc, r5
004a9548  07 30 95 e7                                      ldr r3, [r5, r7]
004a954c  00 30 93 e5                                      ldr r3, [r3]
004a9550  00 00 53 e3                                      cmp r3, #0
004a9554  2c 00 00 0a                                      beq #0x4a960c
004a9558  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a955c  08 20 95 e7                                      ldr r2, [r5, r8]
004a9560  00 20 92 e5                                      ldr r2, [r2]
004a9564  00 00 52 e3                                      cmp r2, #0
004a9568  12 00 00 0a                                      beq #0x4a95b8
004a956c  00 40 a0 e3                                      mov r4, #0
004a9570  04 60 a0 e1                                      mov r6, r4
004a9574  01 00 00 ea                                      b #0x4a9580
004a9578  07 30 95 e7                                      ldr r3, [r5, r7]
004a957c  00 30 93 e5                                      ldr r3, [r3]
004a9580  04 00 83 e0                                      add r0, r3, r4
004a9584  04 30 93 e7                                      ldr r3, [r3, r4]
004a9588  0f e0 a0 e1                                      mov lr, pc
004a958c  08 f0 93 e5                                      ldr pc, [r3, #8]
004a9590  08 30 95 e7                                      ldr r3, [r5, r8]
004a9594  01 60 86 e2                                      add r6, r6, #1
004a9598  0c 40 84 e2                                      add r4, r4, #0xc
004a959c  00 30 93 e5                                      ldr r3, [r3]
004a95a0  06 00 53 e1                                      cmp r3, r6
004a95a4  f3 ff ff 8a                                      bhi #0x4a9578
004a95a8  07 30 95 e7                                      ldr r3, [r5, r7]
004a95ac  00 30 93 e5                                      ldr r3, [r3]
004a95b0  00 00 53 e3                                      cmp r3, #0
004a95b4  11 00 00 0a                                      beq #0x4a9600
004a95b8  04 20 13 e5                                      ldr r2, [r3, #-4]
004a95bc  0c 00 a0 e3                                      mov r0, #0xc
004a95c0  90 32 20 e0                                      mla r0, r0, r2, r3
004a95c4  00 00 53 e1                                      cmp r3, r0
004a95c8  01 00 00 1a                                      bne #0x4a95d4
004a95cc  09 00 00 ea                                      b #0x4a95f8
004a95d0  04 00 a0 e1                                      mov r0, r4
004a95d4  0c 40 40 e2                                      sub r4, r0, #0xc
004a95d8  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a95dc  04 00 a0 e1                                      mov r0, r4
004a95e0  0f e0 a0 e1                                      mov lr, pc
004a95e4  00 f0 93 e5                                      ldr pc, [r3]
004a95e8  07 30 95 e7                                      ldr r3, [r5, r7]
004a95ec  00 00 93 e5                                      ldr r0, [r3]
004a95f0  04 00 50 e1                                      cmp r0, r4
004a95f4  f5 ff ff 1a                                      bne #0x4a95d0
004a95f8  08 00 40 e2                                      sub r0, r0, #8
004a95fc  8f 9b f9 eb                                      bl #0x310440
004a9600  07 30 95 e7                                      ldr r3, [r5, r7]
004a9604  00 20 a0 e3                                      mov r2, #0
004a9608  00 20 83 e5                                      str r2, [r3]
004a960c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9610  4c b5 4e 00 a4 4a 00 00 50 23 00 00              .byte 0x4c, 0xb5, 0x4e, 0x00, 0xa4, 0x4a, 0x00, 0x00, 0x50, 0x23, 0x00, 0x00

; FUNCTION 0x004b40a8, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::StatListTable
; alias: _ZN6Arrays13StatListTable4readEP11IStreamBase
; demangled: Arrays::StatListTable::read(IStreamBase*)
; decoder-mode: arm
004b40a8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b40ac  0c d0 4d e2                                      sub sp, sp, #0xc
004b40b0  00 a0 a0 e1                                      mov sl, r0
004b40b4  75 7e f9 eb                                      bl #0x313a90
004b40b8  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b40bc  01 30 a0 e3                                      mov r3, #1
004b40c0  00 00 53 e3                                      cmp r3, #0
004b40c4  04 00 8d e5                                      str r0, [sp, #4]
004b40c8  00 30 8d e5                                      str r3, [sp]
004b40cc  06 60 8f e0                                      add r6, pc, r6
004b40d0  10 00 00 1a                                      bne #0x4b4118
004b40d4  04 30 8d e2                                      add r3, sp, #4
004b40d8  02 20 83 e2                                      add r2, r3, #2
004b40dc  01 30 83 e2                                      add r3, r3, #1
004b40e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b40e4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b40e8  03 00 52 e1                                      cmp r2, r3
004b40ec  01 10 20 e0                                      eor r1, r0, r1
004b40f0  01 10 43 e5                                      strb r1, [r3, #-1]
004b40f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b40f8  00 10 21 e0                                      eor r1, r1, r0
004b40fc  01 10 c2 e5                                      strb r1, [r2, #1]
004b4100  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b4104  01 20 42 e2                                      sub r2, r2, #1
004b4108  00 10 21 e0                                      eor r1, r1, r0
004b410c  01 10 43 e5                                      strb r1, [r3, #-1]
004b4110  01 30 83 e2                                      add r3, r3, #1
004b4114  f1 ff ff 8a                                      bhi #0x4b40e0
004b4118  06 d5 ff eb                                      bl #0x4a9538
004b411c  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b4120  04 40 9d e5                                      ldr r4, [sp, #4]
004b4124  0c 50 a0 e3                                      mov r5, #0xc
004b4128  07 30 96 e7                                      ldr r3, [r6, r7]
004b412c  95 04 00 e0                                      mul r0, r5, r4
004b4130  00 40 83 e5                                      str r4, [r3]
004b4134  08 00 80 e2                                      add r0, r0, #8
004b4138  01 10 a0 e3                                      mov r1, #1
004b413c  0a 71 f9 eb                                      bl #0x31056c
004b4140  00 00 54 e3                                      cmp r4, #0
004b4144  00 50 80 e5                                      str r5, [r0]
004b4148  04 40 80 e5                                      str r4, [r0, #4]
004b414c  08 30 80 e2                                      add r3, r0, #8
004b4150  0a 00 00 0a                                      beq #0x4b4180
004b4154  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b4158  00 20 a0 e3                                      mov r2, #0
004b415c  02 c0 a0 e1                                      mov ip, r2
004b4160  01 10 96 e7                                      ldr r1, [r6, r1]
004b4164  08 10 81 e2                                      add r1, r1, #8
004b4168  01 20 82 e2                                      add r2, r2, #1
004b416c  04 00 52 e1                                      cmp r2, r4
004b4170  08 10 80 e5                                      str r1, [r0, #8]
004b4174  10 c0 80 e5                                      str ip, [r0, #0x10]
004b4178  0c 00 80 e2                                      add r0, r0, #0xc
004b417c  f9 ff ff 1a                                      bne #0x4b4168
004b4180  07 20 96 e7                                      ldr r2, [r6, r7]
004b4184  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b4188  00 10 92 e5                                      ldr r1, [r2]
004b418c  08 20 96 e7                                      ldr r2, [r6, r8]
004b4190  00 00 51 e3                                      cmp r1, #0
004b4194  00 30 82 e5                                      str r3, [r2]
004b4198  0f 00 00 0a                                      beq #0x4b41dc
004b419c  00 40 a0 e3                                      mov r4, #0
004b41a0  04 50 a0 e1                                      mov r5, r4
004b41a4  01 00 00 ea                                      b #0x4b41b0
004b41a8  08 30 96 e7                                      ldr r3, [r6, r8]
004b41ac  00 30 93 e5                                      ldr r3, [r3]
004b41b0  04 00 83 e0                                      add r0, r3, r4
004b41b4  0a 10 a0 e1                                      mov r1, sl
004b41b8  04 30 93 e7                                      ldr r3, [r3, r4]
004b41bc  0f e0 a0 e1                                      mov lr, pc
004b41c0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b41c4  07 30 96 e7                                      ldr r3, [r6, r7]
004b41c8  01 50 85 e2                                      add r5, r5, #1
004b41cc  0c 40 84 e2                                      add r4, r4, #0xc
004b41d0  00 30 93 e5                                      ldr r3, [r3]
004b41d4  05 00 53 e1                                      cmp r3, r5
004b41d8  f2 ff ff 8a                                      bhi #0x4b41a8
004b41dc  0c d0 8d e2                                      add sp, sp, #0xc
004b41e0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b41e4  c4 09 4e 00 50 23 00 00 74 44 00 00 a4 4a 00 00  .byte 0xc4, 0x09, 0x4e, 0x00, 0x50, 0x23, 0x00, 0x00, 0x74, 0x44, 0x00, 0x00, 0xa4, 0x4a, 0x00, 0x00

; FUNCTION 0x004b7b08, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::StatListTable
; alias: _ZN6Arrays13StatListTable9readNamesEP11IStreamBase
; demangled: Arrays::StatListTable::readNames(IStreamBase*)
; decoder-mode: arm
004b7b08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b7b0c  00 70 a0 e1                                      mov r7, r0
004b7b10  1c d0 4d e2                                      sub sp, sp, #0x1c
004b7b14  60 c6 ff eb                                      bl #0x4a949c
004b7b18  07 00 a0 e1                                      mov r0, r7
004b7b1c  db 6f f9 eb                                      bl #0x313a90
004b7b20  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b7b24  01 30 a0 e3                                      mov r3, #1
004b7b28  00 00 53 e3                                      cmp r3, #0
004b7b2c  06 60 8f e0                                      add r6, pc, r6
004b7b30  14 00 8d e5                                      str r0, [sp, #0x14]
004b7b34  0c 30 8d e5                                      str r3, [sp, #0xc]
004b7b38  12 00 00 1a                                      bne #0x4b7b88
004b7b3c  14 30 8d e2                                      add r3, sp, #0x14
004b7b40  02 20 83 e2                                      add r2, r3, #2
004b7b44  01 30 83 e2                                      add r3, r3, #1
004b7b48  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7b4c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7b50  03 00 52 e1                                      cmp r2, r3
004b7b54  02 40 a0 e1                                      mov r4, r2
004b7b58  01 10 20 e0                                      eor r1, r0, r1
004b7b5c  01 10 43 e5                                      strb r1, [r3, #-1]
004b7b60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7b64  00 10 21 e0                                      eor r1, r1, r0
004b7b68  01 10 c2 e5                                      strb r1, [r2, #1]
004b7b6c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b7b70  01 20 42 e2                                      sub r2, r2, #1
004b7b74  00 10 21 e0                                      eor r1, r1, r0
004b7b78  01 10 43 e5                                      strb r1, [r3, #-1]
004b7b7c  01 30 83 e2                                      add r3, r3, #1
004b7b80  f0 ff ff 8a                                      bhi #0x4b7b48
004b7b84  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b7b88  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b7b8c  03 30 96 e7                                      ldr r3, [r6, r3]
004b7b90  00 30 93 e5                                      ldr r3, [r3]
004b7b94  00 00 53 e1                                      cmp r3, r0
004b7b98  01 00 00 0a                                      beq #0x4b7ba4
004b7b9c  1c d0 8d e2                                      add sp, sp, #0x1c
004b7ba0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b7ba4  00 01 a0 e1                                      lsl r0, r0, #2
004b7ba8  01 10 a0 e3                                      mov r1, #1
004b7bac  6e 62 f9 eb                                      bl #0x31056c
004b7bb0  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b7bb4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b7bb8  09 30 96 e7                                      ldr r3, [r6, sb]
004b7bbc  00 00 52 e3                                      cmp r2, #0
004b7bc0  00 00 83 e5                                      str r0, [r3]
004b7bc4  f4 ff ff 0a                                      beq #0x4b7b9c
004b7bc8  10 a0 8d e2                                      add sl, sp, #0x10
004b7bcc  01 80 a0 e3                                      mov r8, #1
004b7bd0  08 10 8a e0                                      add r1, sl, r8
004b7bd4  02 30 8a e2                                      add r3, sl, #2
004b7bd8  00 40 a0 e3                                      mov r4, #0
004b7bdc  0a 00 8d e8                                      stm sp, {r1, r3}
004b7be0  07 00 a0 e1                                      mov r0, r7
004b7be4  0a 10 a0 e1                                      mov r1, sl
004b7be8  6c 9d fc eb                                      bl #0x3df1a0
004b7bec  00 00 58 e3                                      cmp r8, #0
004b7bf0  0c 80 8d e5                                      str r8, [sp, #0xc]
004b7bf4  0f 00 00 1a                                      bne #0x4b7c38
004b7bf8  00 30 9d e5                                      ldr r3, [sp]
004b7bfc  04 20 9d e5                                      ldr r2, [sp, #4]
004b7c00  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7c04  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7c08  03 00 52 e1                                      cmp r2, r3
004b7c0c  01 10 20 e0                                      eor r1, r0, r1
004b7c10  01 10 43 e5                                      strb r1, [r3, #-1]
004b7c14  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7c18  00 10 21 e0                                      eor r1, r1, r0
004b7c1c  01 10 c2 e5                                      strb r1, [r2, #1]
004b7c20  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b7c24  01 20 42 e2                                      sub r2, r2, #1
004b7c28  00 10 21 e0                                      eor r1, r1, r0
004b7c2c  01 10 43 e5                                      strb r1, [r3, #-1]
004b7c30  01 30 83 e2                                      add r3, r3, #1
004b7c34  f1 ff ff 8a                                      bhi #0x4b7c00
004b7c38  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b7c3c  09 50 96 e7                                      ldr r5, [r6, sb]
004b7c40  01 10 a0 e3                                      mov r1, #1
004b7c44  01 00 80 e0                                      add r0, r0, r1
004b7c48  00 b0 95 e5                                      ldr fp, [r5]
004b7c4c  46 62 f9 eb                                      bl #0x31056c
004b7c50  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b7c54  00 30 95 e5                                      ldr r3, [r5]
004b7c58  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b7c5c  07 00 a0 e1                                      mov r0, r7
004b7c60  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b7c64  00 30 a0 e3                                      mov r3, #0
004b7c68  f9 7d f9 eb                                      bl #0x317454
004b7c6c  00 30 95 e5                                      ldr r3, [r5]
004b7c70  00 10 a0 e3                                      mov r1, #0
004b7c74  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b7c78  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b7c7c  01 40 84 e2                                      add r4, r4, #1
004b7c80  03 10 c2 e7                                      strb r1, [r2, r3]
004b7c84  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b7c88  04 00 53 e1                                      cmp r3, r4
004b7c8c  d3 ff ff 8a                                      bhi #0x4b7be0
004b7c90  c1 ff ff ea                                      b #0x4b7b9c
; mapping-symbol data/literal pool
004b7c94  64 cf 4d 00 50 23 00 00 68 1d 00 00              .byte 0x64, 0xcf, 0x4d, 0x00, 0x50, 0x23, 0x00, 0x00, 0x68, 0x1d, 0x00, 0x00

; FUNCTION 0x004b7ca0, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::StatListTable
; alias: _ZN6Arrays13StatListTable9skipNamesEP11IStreamBase
; demangled: Arrays::StatListTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b7ca0  98 ff ff ea                                      b #0x4b7b08
