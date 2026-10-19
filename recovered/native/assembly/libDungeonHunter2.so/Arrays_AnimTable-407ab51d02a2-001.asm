; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a9d9c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::AnimTable
; alias: _ZN6Arrays9AnimTable13finalizeNamesEv
; demangled: Arrays::AnimTable::finalizeNames()
; decoder-mode: arm
004a9d9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a9da0  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a9da4  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a9da8  05 50 8f e0                                      add r5, pc, r5
004a9dac  06 30 95 e7                                      ldr r3, [r5, r6]
004a9db0  00 30 93 e5                                      ldr r3, [r3]
004a9db4  00 00 53 e3                                      cmp r3, #0
004a9db8  1a 00 00 0a                                      beq #0x4a9e28
004a9dbc  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a9dc0  07 20 95 e7                                      ldr r2, [r5, r7]
004a9dc4  00 20 92 e5                                      ldr r2, [r2]
004a9dc8  00 00 52 e3                                      cmp r2, #0
004a9dcc  10 00 00 0a                                      beq #0x4a9e14
004a9dd0  00 40 a0 e3                                      mov r4, #0
004a9dd4  01 00 00 ea                                      b #0x4a9de0
004a9dd8  06 30 95 e7                                      ldr r3, [r5, r6]
004a9ddc  00 30 93 e5                                      ldr r3, [r3]
004a9de0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a9de4  01 40 84 e2                                      add r4, r4, #1
004a9de8  00 00 50 e3                                      cmp r0, #0
004a9dec  02 00 00 0a                                      beq #0x4a9dfc
004a9df0  92 99 f9 eb                                      bl #0x310440
004a9df4  06 30 95 e7                                      ldr r3, [r5, r6]
004a9df8  00 30 93 e5                                      ldr r3, [r3]
004a9dfc  07 20 95 e7                                      ldr r2, [r5, r7]
004a9e00  00 20 92 e5                                      ldr r2, [r2]
004a9e04  04 00 52 e1                                      cmp r2, r4
004a9e08  f2 ff ff 8a                                      bhi #0x4a9dd8
004a9e0c  00 00 53 e3                                      cmp r3, #0
004a9e10  01 00 00 0a                                      beq #0x4a9e1c
004a9e14  03 00 a0 e1                                      mov r0, r3
004a9e18  88 99 f9 eb                                      bl #0x310440
004a9e1c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9e20  00 20 a0 e3                                      mov r2, #0
004a9e24  00 20 83 e5                                      str r2, [r3]
004a9e28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9e2c  e8 ac 4e 00 44 20 00 00 48 2a 00 00              .byte 0xe8, 0xac, 0x4e, 0x00, 0x44, 0x20, 0x00, 0x00, 0x48, 0x2a, 0x00, 0x00

; FUNCTION 0x004a9e38, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::AnimTable
; alias: _ZN6Arrays9AnimTable8finalizeEv
; demangled: Arrays::AnimTable::finalize()
; decoder-mode: arm
004a9e38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a9e3c  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a9e40  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a9e44  05 50 8f e0                                      add r5, pc, r5
004a9e48  07 30 95 e7                                      ldr r3, [r5, r7]
004a9e4c  00 30 93 e5                                      ldr r3, [r3]
004a9e50  00 00 53 e3                                      cmp r3, #0
004a9e54  2c 00 00 0a                                      beq #0x4a9f0c
004a9e58  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a9e5c  08 20 95 e7                                      ldr r2, [r5, r8]
004a9e60  00 20 92 e5                                      ldr r2, [r2]
004a9e64  00 00 52 e3                                      cmp r2, #0
004a9e68  12 00 00 0a                                      beq #0x4a9eb8
004a9e6c  00 40 a0 e3                                      mov r4, #0
004a9e70  04 60 a0 e1                                      mov r6, r4
004a9e74  01 00 00 ea                                      b #0x4a9e80
004a9e78  07 30 95 e7                                      ldr r3, [r5, r7]
004a9e7c  00 30 93 e5                                      ldr r3, [r3]
004a9e80  04 00 83 e0                                      add r0, r3, r4
004a9e84  04 30 93 e7                                      ldr r3, [r3, r4]
004a9e88  0f e0 a0 e1                                      mov lr, pc
004a9e8c  08 f0 93 e5                                      ldr pc, [r3, #8]
004a9e90  08 30 95 e7                                      ldr r3, [r5, r8]
004a9e94  01 60 86 e2                                      add r6, r6, #1
004a9e98  14 40 84 e2                                      add r4, r4, #0x14
004a9e9c  00 30 93 e5                                      ldr r3, [r3]
004a9ea0  06 00 53 e1                                      cmp r3, r6
004a9ea4  f3 ff ff 8a                                      bhi #0x4a9e78
004a9ea8  07 30 95 e7                                      ldr r3, [r5, r7]
004a9eac  00 30 93 e5                                      ldr r3, [r3]
004a9eb0  00 00 53 e3                                      cmp r3, #0
004a9eb4  11 00 00 0a                                      beq #0x4a9f00
004a9eb8  04 20 13 e5                                      ldr r2, [r3, #-4]
004a9ebc  14 00 a0 e3                                      mov r0, #0x14
004a9ec0  90 32 20 e0                                      mla r0, r0, r2, r3
004a9ec4  00 00 53 e1                                      cmp r3, r0
004a9ec8  01 00 00 1a                                      bne #0x4a9ed4
004a9ecc  09 00 00 ea                                      b #0x4a9ef8
004a9ed0  04 00 a0 e1                                      mov r0, r4
004a9ed4  14 40 40 e2                                      sub r4, r0, #0x14
004a9ed8  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004a9edc  04 00 a0 e1                                      mov r0, r4
004a9ee0  0f e0 a0 e1                                      mov lr, pc
004a9ee4  00 f0 93 e5                                      ldr pc, [r3]
004a9ee8  07 30 95 e7                                      ldr r3, [r5, r7]
004a9eec  00 00 93 e5                                      ldr r0, [r3]
004a9ef0  04 00 50 e1                                      cmp r0, r4
004a9ef4  f5 ff ff 1a                                      bne #0x4a9ed0
004a9ef8  08 00 40 e2                                      sub r0, r0, #8
004a9efc  4f 99 f9 eb                                      bl #0x310440
004a9f00  07 30 95 e7                                      ldr r3, [r5, r7]
004a9f04  00 20 a0 e3                                      mov r2, #0
004a9f08  00 20 83 e5                                      str r2, [r3]
004a9f0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9f10  4c ac 4e 00 7c 3c 00 00 48 2a 00 00              .byte 0x4c, 0xac, 0x4e, 0x00, 0x7c, 0x3c, 0x00, 0x00, 0x48, 0x2a, 0x00, 0x00

; FUNCTION 0x004b38f0, declared_size=328, range_size=328, mode=arm
; class-group: Arrays::AnimTable
; alias: _ZN6Arrays9AnimTable4readEP11IStreamBase
; demangled: Arrays::AnimTable::read(IStreamBase*)
; decoder-mode: arm
004b38f0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b38f4  0c d0 4d e2                                      sub sp, sp, #0xc
004b38f8  00 a0 a0 e1                                      mov sl, r0
004b38fc  63 80 f9 eb                                      bl #0x313a90
004b3900  20 61 9f e5                                      ldr r6, [pc, #0x120]
004b3904  01 30 a0 e3                                      mov r3, #1
004b3908  00 00 53 e3                                      cmp r3, #0
004b390c  04 00 8d e5                                      str r0, [sp, #4]
004b3910  00 30 8d e5                                      str r3, [sp]
004b3914  06 60 8f e0                                      add r6, pc, r6
004b3918  10 00 00 1a                                      bne #0x4b3960
004b391c  04 30 8d e2                                      add r3, sp, #4
004b3920  02 20 83 e2                                      add r2, r3, #2
004b3924  01 30 83 e2                                      add r3, r3, #1
004b3928  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b392c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b3930  03 00 52 e1                                      cmp r2, r3
004b3934  01 10 20 e0                                      eor r1, r0, r1
004b3938  01 10 43 e5                                      strb r1, [r3, #-1]
004b393c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3940  00 10 21 e0                                      eor r1, r1, r0
004b3944  01 10 c2 e5                                      strb r1, [r2, #1]
004b3948  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b394c  01 20 42 e2                                      sub r2, r2, #1
004b3950  00 10 21 e0                                      eor r1, r1, r0
004b3954  01 10 43 e5                                      strb r1, [r3, #-1]
004b3958  01 30 83 e2                                      add r3, r3, #1
004b395c  f1 ff ff 8a                                      bhi #0x4b3928
004b3960  34 d9 ff eb                                      bl #0x4a9e38
004b3964  c0 70 9f e5                                      ldr r7, [pc, #0xc0]
004b3968  04 40 9d e5                                      ldr r4, [sp, #4]
004b396c  14 50 a0 e3                                      mov r5, #0x14
004b3970  07 30 96 e7                                      ldr r3, [r6, r7]
004b3974  95 04 00 e0                                      mul r0, r5, r4
004b3978  00 40 83 e5                                      str r4, [r3]
004b397c  08 00 80 e2                                      add r0, r0, #8
004b3980  01 10 a0 e3                                      mov r1, #1
004b3984  f8 72 f9 eb                                      bl #0x31056c
004b3988  00 00 54 e3                                      cmp r4, #0
004b398c  00 50 80 e5                                      str r5, [r0]
004b3990  04 40 80 e5                                      str r4, [r0, #4]
004b3994  08 30 80 e2                                      add r3, r0, #8
004b3998  09 00 00 0a                                      beq #0x4b39c4
004b399c  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
004b39a0  00 20 a0 e3                                      mov r2, #0
004b39a4  02 c0 a0 e1                                      mov ip, r2
004b39a8  01 10 96 e7                                      ldr r1, [r6, r1]
004b39ac  08 10 81 e2                                      add r1, r1, #8
004b39b0  01 20 82 e2                                      add r2, r2, #1
004b39b4  04 00 52 e1                                      cmp r2, r4
004b39b8  08 10 80 e5                                      str r1, [r0, #8]
004b39bc  14 c0 a0 e5                                      str ip, [r0, #0x14]!
004b39c0  fa ff ff 1a                                      bne #0x4b39b0
004b39c4  07 20 96 e7                                      ldr r2, [r6, r7]
004b39c8  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b39cc  00 10 92 e5                                      ldr r1, [r2]
004b39d0  08 20 96 e7                                      ldr r2, [r6, r8]
004b39d4  00 00 51 e3                                      cmp r1, #0
004b39d8  00 30 82 e5                                      str r3, [r2]
004b39dc  0f 00 00 0a                                      beq #0x4b3a20
004b39e0  00 40 a0 e3                                      mov r4, #0
004b39e4  04 50 a0 e1                                      mov r5, r4
004b39e8  01 00 00 ea                                      b #0x4b39f4
004b39ec  08 30 96 e7                                      ldr r3, [r6, r8]
004b39f0  00 30 93 e5                                      ldr r3, [r3]
004b39f4  04 00 83 e0                                      add r0, r3, r4
004b39f8  0a 10 a0 e1                                      mov r1, sl
004b39fc  04 30 93 e7                                      ldr r3, [r3, r4]
004b3a00  0f e0 a0 e1                                      mov lr, pc
004b3a04  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b3a08  07 30 96 e7                                      ldr r3, [r6, r7]
004b3a0c  01 50 85 e2                                      add r5, r5, #1
004b3a10  14 40 84 e2                                      add r4, r4, #0x14
004b3a14  00 30 93 e5                                      ldr r3, [r3]
004b3a18  05 00 53 e1                                      cmp r3, r5
004b3a1c  f2 ff ff 8a                                      bhi #0x4b39ec
004b3a20  0c d0 8d e2                                      add sp, sp, #0xc
004b3a24  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b3a28  7c 11 4e 00 48 2a 00 00 dc 0a 00 00 7c 3c 00 00  .byte 0x7c, 0x11, 0x4e, 0x00, 0x48, 0x2a, 0x00, 0x00, 0xdc, 0x0a, 0x00, 0x00, 0x7c, 0x3c, 0x00, 0x00

; FUNCTION 0x004b4bf0, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::AnimTable
; alias: _ZN6Arrays9AnimTable9readNamesEP11IStreamBase
; demangled: Arrays::AnimTable::readNames(IStreamBase*)
; decoder-mode: arm
004b4bf0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b4bf4  00 70 a0 e1                                      mov r7, r0
004b4bf8  1c d0 4d e2                                      sub sp, sp, #0x1c
004b4bfc  66 d4 ff eb                                      bl #0x4a9d9c
004b4c00  07 00 a0 e1                                      mov r0, r7
004b4c04  a1 7b f9 eb                                      bl #0x313a90
004b4c08  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b4c0c  01 30 a0 e3                                      mov r3, #1
004b4c10  00 00 53 e3                                      cmp r3, #0
004b4c14  06 60 8f e0                                      add r6, pc, r6
004b4c18  14 00 8d e5                                      str r0, [sp, #0x14]
004b4c1c  0c 30 8d e5                                      str r3, [sp, #0xc]
004b4c20  12 00 00 1a                                      bne #0x4b4c70
004b4c24  14 30 8d e2                                      add r3, sp, #0x14
004b4c28  02 20 83 e2                                      add r2, r3, #2
004b4c2c  01 30 83 e2                                      add r3, r3, #1
004b4c30  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4c34  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b4c38  03 00 52 e1                                      cmp r2, r3
004b4c3c  02 40 a0 e1                                      mov r4, r2
004b4c40  01 10 20 e0                                      eor r1, r0, r1
004b4c44  01 10 43 e5                                      strb r1, [r3, #-1]
004b4c48  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4c4c  00 10 21 e0                                      eor r1, r1, r0
004b4c50  01 10 c2 e5                                      strb r1, [r2, #1]
004b4c54  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b4c58  01 20 42 e2                                      sub r2, r2, #1
004b4c5c  00 10 21 e0                                      eor r1, r1, r0
004b4c60  01 10 43 e5                                      strb r1, [r3, #-1]
004b4c64  01 30 83 e2                                      add r3, r3, #1
004b4c68  f0 ff ff 8a                                      bhi #0x4b4c30
004b4c6c  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b4c70  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b4c74  03 30 96 e7                                      ldr r3, [r6, r3]
004b4c78  00 30 93 e5                                      ldr r3, [r3]
004b4c7c  00 00 53 e1                                      cmp r3, r0
004b4c80  01 00 00 0a                                      beq #0x4b4c8c
004b4c84  1c d0 8d e2                                      add sp, sp, #0x1c
004b4c88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b4c8c  00 01 a0 e1                                      lsl r0, r0, #2
004b4c90  01 10 a0 e3                                      mov r1, #1
004b4c94  34 6e f9 eb                                      bl #0x31056c
004b4c98  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b4c9c  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b4ca0  09 30 96 e7                                      ldr r3, [r6, sb]
004b4ca4  00 00 52 e3                                      cmp r2, #0
004b4ca8  00 00 83 e5                                      str r0, [r3]
004b4cac  f4 ff ff 0a                                      beq #0x4b4c84
004b4cb0  10 a0 8d e2                                      add sl, sp, #0x10
004b4cb4  01 80 a0 e3                                      mov r8, #1
004b4cb8  08 10 8a e0                                      add r1, sl, r8
004b4cbc  02 30 8a e2                                      add r3, sl, #2
004b4cc0  00 40 a0 e3                                      mov r4, #0
004b4cc4  0a 00 8d e8                                      stm sp, {r1, r3}
004b4cc8  07 00 a0 e1                                      mov r0, r7
004b4ccc  0a 10 a0 e1                                      mov r1, sl
004b4cd0  32 a9 fc eb                                      bl #0x3df1a0
004b4cd4  00 00 58 e3                                      cmp r8, #0
004b4cd8  0c 80 8d e5                                      str r8, [sp, #0xc]
004b4cdc  0f 00 00 1a                                      bne #0x4b4d20
004b4ce0  00 30 9d e5                                      ldr r3, [sp]
004b4ce4  04 20 9d e5                                      ldr r2, [sp, #4]
004b4ce8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4cec  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b4cf0  03 00 52 e1                                      cmp r2, r3
004b4cf4  01 10 20 e0                                      eor r1, r0, r1
004b4cf8  01 10 43 e5                                      strb r1, [r3, #-1]
004b4cfc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4d00  00 10 21 e0                                      eor r1, r1, r0
004b4d04  01 10 c2 e5                                      strb r1, [r2, #1]
004b4d08  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b4d0c  01 20 42 e2                                      sub r2, r2, #1
004b4d10  00 10 21 e0                                      eor r1, r1, r0
004b4d14  01 10 43 e5                                      strb r1, [r3, #-1]
004b4d18  01 30 83 e2                                      add r3, r3, #1
004b4d1c  f1 ff ff 8a                                      bhi #0x4b4ce8
004b4d20  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b4d24  09 50 96 e7                                      ldr r5, [r6, sb]
004b4d28  01 10 a0 e3                                      mov r1, #1
004b4d2c  01 00 80 e0                                      add r0, r0, r1
004b4d30  00 b0 95 e5                                      ldr fp, [r5]
004b4d34  0c 6e f9 eb                                      bl #0x31056c
004b4d38  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b4d3c  00 30 95 e5                                      ldr r3, [r5]
004b4d40  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b4d44  07 00 a0 e1                                      mov r0, r7
004b4d48  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b4d4c  00 30 a0 e3                                      mov r3, #0
004b4d50  bf 89 f9 eb                                      bl #0x317454
004b4d54  00 30 95 e5                                      ldr r3, [r5]
004b4d58  00 10 a0 e3                                      mov r1, #0
004b4d5c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b4d60  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b4d64  01 40 84 e2                                      add r4, r4, #1
004b4d68  03 10 c2 e7                                      strb r1, [r2, r3]
004b4d6c  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b4d70  04 00 53 e1                                      cmp r3, r4
004b4d74  d3 ff ff 8a                                      bhi #0x4b4cc8
004b4d78  c1 ff ff ea                                      b #0x4b4c84
; mapping-symbol data/literal pool
004b4d7c  7c fe 4d 00 48 2a 00 00 44 20 00 00              .byte 0x7c, 0xfe, 0x4d, 0x00, 0x48, 0x2a, 0x00, 0x00, 0x44, 0x20, 0x00, 0x00

; FUNCTION 0x004b4d88, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::AnimTable
; alias: _ZN6Arrays9AnimTable9skipNamesEP11IStreamBase
; demangled: Arrays::AnimTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b4d88  98 ff ff ea                                      b #0x4b4bf0
