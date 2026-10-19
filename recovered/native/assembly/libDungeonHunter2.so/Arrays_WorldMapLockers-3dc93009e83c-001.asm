; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a4288, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::WorldMapLockers
; alias: _ZN6Arrays15WorldMapLockers13finalizeNamesEv
; demangled: Arrays::WorldMapLockers::finalizeNames()
; decoder-mode: arm
004a4288  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a428c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a4290  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a4294  05 50 8f e0                                      add r5, pc, r5
004a4298  06 30 95 e7                                      ldr r3, [r5, r6]
004a429c  00 30 93 e5                                      ldr r3, [r3]
004a42a0  00 00 53 e3                                      cmp r3, #0
004a42a4  1a 00 00 0a                                      beq #0x4a4314
004a42a8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a42ac  07 20 95 e7                                      ldr r2, [r5, r7]
004a42b0  00 20 92 e5                                      ldr r2, [r2]
004a42b4  00 00 52 e3                                      cmp r2, #0
004a42b8  10 00 00 0a                                      beq #0x4a4300
004a42bc  00 40 a0 e3                                      mov r4, #0
004a42c0  01 00 00 ea                                      b #0x4a42cc
004a42c4  06 30 95 e7                                      ldr r3, [r5, r6]
004a42c8  00 30 93 e5                                      ldr r3, [r3]
004a42cc  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a42d0  01 40 84 e2                                      add r4, r4, #1
004a42d4  00 00 50 e3                                      cmp r0, #0
004a42d8  02 00 00 0a                                      beq #0x4a42e8
004a42dc  57 b0 f9 eb                                      bl #0x310440
004a42e0  06 30 95 e7                                      ldr r3, [r5, r6]
004a42e4  00 30 93 e5                                      ldr r3, [r3]
004a42e8  07 20 95 e7                                      ldr r2, [r5, r7]
004a42ec  00 20 92 e5                                      ldr r2, [r2]
004a42f0  04 00 52 e1                                      cmp r2, r4
004a42f4  f2 ff ff 8a                                      bhi #0x4a42c4
004a42f8  00 00 53 e3                                      cmp r3, #0
004a42fc  01 00 00 0a                                      beq #0x4a4308
004a4300  03 00 a0 e1                                      mov r0, r3
004a4304  4d b0 f9 eb                                      bl #0x310440
004a4308  06 30 95 e7                                      ldr r3, [r5, r6]
004a430c  00 20 a0 e3                                      mov r2, #0
004a4310  00 20 83 e5                                      str r2, [r3]
004a4314  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4318  fc 07 4f 00 cc 3c 00 00 e0 27 00 00              .byte 0xfc, 0x07, 0x4f, 0x00, 0xcc, 0x3c, 0x00, 0x00, 0xe0, 0x27, 0x00, 0x00

; FUNCTION 0x004a4324, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::WorldMapLockers
; alias: _ZN6Arrays15WorldMapLockers8finalizeEv
; demangled: Arrays::WorldMapLockers::finalize()
; decoder-mode: arm
004a4324  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4328  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a432c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a4330  05 50 8f e0                                      add r5, pc, r5
004a4334  07 30 95 e7                                      ldr r3, [r5, r7]
004a4338  00 30 93 e5                                      ldr r3, [r3]
004a433c  00 00 53 e3                                      cmp r3, #0
004a4340  2c 00 00 0a                                      beq #0x4a43f8
004a4344  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a4348  08 20 95 e7                                      ldr r2, [r5, r8]
004a434c  00 20 92 e5                                      ldr r2, [r2]
004a4350  00 00 52 e3                                      cmp r2, #0
004a4354  12 00 00 0a                                      beq #0x4a43a4
004a4358  00 40 a0 e3                                      mov r4, #0
004a435c  04 60 a0 e1                                      mov r6, r4
004a4360  01 00 00 ea                                      b #0x4a436c
004a4364  07 30 95 e7                                      ldr r3, [r5, r7]
004a4368  00 30 93 e5                                      ldr r3, [r3]
004a436c  04 00 83 e0                                      add r0, r3, r4
004a4370  04 30 93 e7                                      ldr r3, [r3, r4]
004a4374  0f e0 a0 e1                                      mov lr, pc
004a4378  08 f0 93 e5                                      ldr pc, [r3, #8]
004a437c  08 30 95 e7                                      ldr r3, [r5, r8]
004a4380  01 60 86 e2                                      add r6, r6, #1
004a4384  0c 40 84 e2                                      add r4, r4, #0xc
004a4388  00 30 93 e5                                      ldr r3, [r3]
004a438c  06 00 53 e1                                      cmp r3, r6
004a4390  f3 ff ff 8a                                      bhi #0x4a4364
004a4394  07 30 95 e7                                      ldr r3, [r5, r7]
004a4398  00 30 93 e5                                      ldr r3, [r3]
004a439c  00 00 53 e3                                      cmp r3, #0
004a43a0  11 00 00 0a                                      beq #0x4a43ec
004a43a4  04 20 13 e5                                      ldr r2, [r3, #-4]
004a43a8  0c 00 a0 e3                                      mov r0, #0xc
004a43ac  90 32 20 e0                                      mla r0, r0, r2, r3
004a43b0  00 00 53 e1                                      cmp r3, r0
004a43b4  01 00 00 1a                                      bne #0x4a43c0
004a43b8  09 00 00 ea                                      b #0x4a43e4
004a43bc  04 00 a0 e1                                      mov r0, r4
004a43c0  0c 40 40 e2                                      sub r4, r0, #0xc
004a43c4  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a43c8  04 00 a0 e1                                      mov r0, r4
004a43cc  0f e0 a0 e1                                      mov lr, pc
004a43d0  00 f0 93 e5                                      ldr pc, [r3]
004a43d4  07 30 95 e7                                      ldr r3, [r5, r7]
004a43d8  00 00 93 e5                                      ldr r0, [r3]
004a43dc  04 00 50 e1                                      cmp r0, r4
004a43e0  f5 ff ff 1a                                      bne #0x4a43bc
004a43e4  08 00 40 e2                                      sub r0, r0, #8
004a43e8  14 b0 f9 eb                                      bl #0x310440
004a43ec  07 30 95 e7                                      ldr r3, [r5, r7]
004a43f0  00 20 a0 e3                                      mov r2, #0
004a43f4  00 20 83 e5                                      str r2, [r3]
004a43f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a43fc  60 07 4f 00 8c 44 00 00 e0 27 00 00              .byte 0x60, 0x07, 0x4f, 0x00, 0x8c, 0x44, 0x00, 0x00, 0xe0, 0x27, 0x00, 0x00

; FUNCTION 0x004b1c5c, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::WorldMapLockers
; alias: _ZN6Arrays15WorldMapLockers9readNamesEP11IStreamBase
; demangled: Arrays::WorldMapLockers::readNames(IStreamBase*)
; decoder-mode: arm
004b1c5c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b1c60  00 70 a0 e1                                      mov r7, r0
004b1c64  1c d0 4d e2                                      sub sp, sp, #0x1c
004b1c68  86 c9 ff eb                                      bl #0x4a4288
004b1c6c  07 00 a0 e1                                      mov r0, r7
004b1c70  86 87 f9 eb                                      bl #0x313a90
004b1c74  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b1c78  01 30 a0 e3                                      mov r3, #1
004b1c7c  00 00 53 e3                                      cmp r3, #0
004b1c80  06 60 8f e0                                      add r6, pc, r6
004b1c84  14 00 8d e5                                      str r0, [sp, #0x14]
004b1c88  0c 30 8d e5                                      str r3, [sp, #0xc]
004b1c8c  12 00 00 1a                                      bne #0x4b1cdc
004b1c90  14 30 8d e2                                      add r3, sp, #0x14
004b1c94  02 20 83 e2                                      add r2, r3, #2
004b1c98  01 30 83 e2                                      add r3, r3, #1
004b1c9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1ca0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1ca4  03 00 52 e1                                      cmp r2, r3
004b1ca8  02 40 a0 e1                                      mov r4, r2
004b1cac  01 10 20 e0                                      eor r1, r0, r1
004b1cb0  01 10 43 e5                                      strb r1, [r3, #-1]
004b1cb4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1cb8  00 10 21 e0                                      eor r1, r1, r0
004b1cbc  01 10 c2 e5                                      strb r1, [r2, #1]
004b1cc0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1cc4  01 20 42 e2                                      sub r2, r2, #1
004b1cc8  00 10 21 e0                                      eor r1, r1, r0
004b1ccc  01 10 43 e5                                      strb r1, [r3, #-1]
004b1cd0  01 30 83 e2                                      add r3, r3, #1
004b1cd4  f0 ff ff 8a                                      bhi #0x4b1c9c
004b1cd8  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b1cdc  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b1ce0  03 30 96 e7                                      ldr r3, [r6, r3]
004b1ce4  00 30 93 e5                                      ldr r3, [r3]
004b1ce8  00 00 53 e1                                      cmp r3, r0
004b1cec  01 00 00 0a                                      beq #0x4b1cf8
004b1cf0  1c d0 8d e2                                      add sp, sp, #0x1c
004b1cf4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b1cf8  00 01 a0 e1                                      lsl r0, r0, #2
004b1cfc  01 10 a0 e3                                      mov r1, #1
004b1d00  19 7a f9 eb                                      bl #0x31056c
004b1d04  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b1d08  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b1d0c  09 30 96 e7                                      ldr r3, [r6, sb]
004b1d10  00 00 52 e3                                      cmp r2, #0
004b1d14  00 00 83 e5                                      str r0, [r3]
004b1d18  f4 ff ff 0a                                      beq #0x4b1cf0
004b1d1c  10 a0 8d e2                                      add sl, sp, #0x10
004b1d20  01 80 a0 e3                                      mov r8, #1
004b1d24  08 10 8a e0                                      add r1, sl, r8
004b1d28  02 30 8a e2                                      add r3, sl, #2
004b1d2c  00 40 a0 e3                                      mov r4, #0
004b1d30  0a 00 8d e8                                      stm sp, {r1, r3}
004b1d34  07 00 a0 e1                                      mov r0, r7
004b1d38  0a 10 a0 e1                                      mov r1, sl
004b1d3c  17 b5 fc eb                                      bl #0x3df1a0
004b1d40  00 00 58 e3                                      cmp r8, #0
004b1d44  0c 80 8d e5                                      str r8, [sp, #0xc]
004b1d48  0f 00 00 1a                                      bne #0x4b1d8c
004b1d4c  00 30 9d e5                                      ldr r3, [sp]
004b1d50  04 20 9d e5                                      ldr r2, [sp, #4]
004b1d54  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1d58  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1d5c  03 00 52 e1                                      cmp r2, r3
004b1d60  01 10 20 e0                                      eor r1, r0, r1
004b1d64  01 10 43 e5                                      strb r1, [r3, #-1]
004b1d68  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1d6c  00 10 21 e0                                      eor r1, r1, r0
004b1d70  01 10 c2 e5                                      strb r1, [r2, #1]
004b1d74  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1d78  01 20 42 e2                                      sub r2, r2, #1
004b1d7c  00 10 21 e0                                      eor r1, r1, r0
004b1d80  01 10 43 e5                                      strb r1, [r3, #-1]
004b1d84  01 30 83 e2                                      add r3, r3, #1
004b1d88  f1 ff ff 8a                                      bhi #0x4b1d54
004b1d8c  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b1d90  09 50 96 e7                                      ldr r5, [r6, sb]
004b1d94  01 10 a0 e3                                      mov r1, #1
004b1d98  01 00 80 e0                                      add r0, r0, r1
004b1d9c  00 b0 95 e5                                      ldr fp, [r5]
004b1da0  f1 79 f9 eb                                      bl #0x31056c
004b1da4  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b1da8  00 30 95 e5                                      ldr r3, [r5]
004b1dac  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b1db0  07 00 a0 e1                                      mov r0, r7
004b1db4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b1db8  00 30 a0 e3                                      mov r3, #0
004b1dbc  a4 95 f9 eb                                      bl #0x317454
004b1dc0  00 30 95 e5                                      ldr r3, [r5]
004b1dc4  00 10 a0 e3                                      mov r1, #0
004b1dc8  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b1dcc  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b1dd0  01 40 84 e2                                      add r4, r4, #1
004b1dd4  03 10 c2 e7                                      strb r1, [r2, r3]
004b1dd8  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b1ddc  04 00 53 e1                                      cmp r3, r4
004b1de0  d3 ff ff 8a                                      bhi #0x4b1d34
004b1de4  c1 ff ff ea                                      b #0x4b1cf0
; mapping-symbol data/literal pool
004b1de8  10 2e 4e 00 e0 27 00 00 cc 3c 00 00              .byte 0x10, 0x2e, 0x4e, 0x00, 0xe0, 0x27, 0x00, 0x00, 0xcc, 0x3c, 0x00, 0x00

; FUNCTION 0x004b1df4, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::WorldMapLockers
; alias: _ZN6Arrays15WorldMapLockers9skipNamesEP11IStreamBase
; demangled: Arrays::WorldMapLockers::skipNames(IStreamBase*)
; decoder-mode: arm
004b1df4  98 ff ff ea                                      b #0x4b1c5c

; FUNCTION 0x004b883c, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::WorldMapLockers
; alias: _ZN6Arrays15WorldMapLockers4readEP11IStreamBase
; demangled: Arrays::WorldMapLockers::read(IStreamBase*)
; decoder-mode: arm
004b883c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b8840  0c d0 4d e2                                      sub sp, sp, #0xc
004b8844  00 a0 a0 e1                                      mov sl, r0
004b8848  90 6c f9 eb                                      bl #0x313a90
004b884c  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004b8850  01 30 a0 e3                                      mov r3, #1
004b8854  00 00 53 e3                                      cmp r3, #0
004b8858  04 00 8d e5                                      str r0, [sp, #4]
004b885c  00 30 8d e5                                      str r3, [sp]
004b8860  06 60 8f e0                                      add r6, pc, r6
004b8864  10 00 00 1a                                      bne #0x4b88ac
004b8868  04 30 8d e2                                      add r3, sp, #4
004b886c  02 20 83 e2                                      add r2, r3, #2
004b8870  01 30 83 e2                                      add r3, r3, #1
004b8874  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8878  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b887c  03 00 52 e1                                      cmp r2, r3
004b8880  01 10 20 e0                                      eor r1, r0, r1
004b8884  01 10 43 e5                                      strb r1, [r3, #-1]
004b8888  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b888c  00 10 21 e0                                      eor r1, r1, r0
004b8890  01 10 c2 e5                                      strb r1, [r2, #1]
004b8894  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b8898  01 20 42 e2                                      sub r2, r2, #1
004b889c  00 10 21 e0                                      eor r1, r1, r0
004b88a0  01 10 43 e5                                      strb r1, [r3, #-1]
004b88a4  01 30 83 e2                                      add r3, r3, #1
004b88a8  f1 ff ff 8a                                      bhi #0x4b8874
004b88ac  9c ae ff eb                                      bl #0x4a4324
004b88b0  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
004b88b4  04 40 9d e5                                      ldr r4, [sp, #4]
004b88b8  0c 50 a0 e3                                      mov r5, #0xc
004b88bc  07 30 96 e7                                      ldr r3, [r6, r7]
004b88c0  95 04 00 e0                                      mul r0, r5, r4
004b88c4  00 40 83 e5                                      str r4, [r3]
004b88c8  08 00 80 e2                                      add r0, r0, #8
004b88cc  01 10 a0 e3                                      mov r1, #1
004b88d0  25 5f f9 eb                                      bl #0x31056c
004b88d4  00 00 54 e3                                      cmp r4, #0
004b88d8  00 50 80 e5                                      str r5, [r0]
004b88dc  04 40 80 e5                                      str r4, [r0, #4]
004b88e0  08 30 80 e2                                      add r3, r0, #8
004b88e4  08 00 00 0a                                      beq #0x4b890c
004b88e8  88 10 9f e5                                      ldr r1, [pc, #0x88]
004b88ec  00 20 a0 e3                                      mov r2, #0
004b88f0  01 10 96 e7                                      ldr r1, [r6, r1]
004b88f4  08 10 81 e2                                      add r1, r1, #8
004b88f8  01 20 82 e2                                      add r2, r2, #1
004b88fc  04 00 52 e1                                      cmp r2, r4
004b8900  08 10 80 e5                                      str r1, [r0, #8]
004b8904  0c 00 80 e2                                      add r0, r0, #0xc
004b8908  fa ff ff 1a                                      bne #0x4b88f8
004b890c  07 20 96 e7                                      ldr r2, [r6, r7]
004b8910  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b8914  00 10 92 e5                                      ldr r1, [r2]
004b8918  08 20 96 e7                                      ldr r2, [r6, r8]
004b891c  00 00 51 e3                                      cmp r1, #0
004b8920  00 30 82 e5                                      str r3, [r2]
004b8924  0f 00 00 0a                                      beq #0x4b8968
004b8928  00 40 a0 e3                                      mov r4, #0
004b892c  04 50 a0 e1                                      mov r5, r4
004b8930  01 00 00 ea                                      b #0x4b893c
004b8934  08 30 96 e7                                      ldr r3, [r6, r8]
004b8938  00 30 93 e5                                      ldr r3, [r3]
004b893c  04 00 83 e0                                      add r0, r3, r4
004b8940  0a 10 a0 e1                                      mov r1, sl
004b8944  04 30 93 e7                                      ldr r3, [r3, r4]
004b8948  0f e0 a0 e1                                      mov lr, pc
004b894c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b8950  07 30 96 e7                                      ldr r3, [r6, r7]
004b8954  01 50 85 e2                                      add r5, r5, #1
004b8958  0c 40 84 e2                                      add r4, r4, #0xc
004b895c  00 30 93 e5                                      ldr r3, [r3]
004b8960  05 00 53 e1                                      cmp r3, r5
004b8964  f2 ff ff 8a                                      bhi #0x4b8934
004b8968  0c d0 8d e2                                      add sp, sp, #0xc
004b896c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b8970  30 c2 4d 00 e0 27 00 00 44 2d 00 00 8c 44 00 00  .byte 0x30, 0xc2, 0x4d, 0x00, 0xe0, 0x27, 0x00, 0x00, 0x44, 0x2d, 0x00, 0x00, 0x8c, 0x44, 0x00, 0x00
