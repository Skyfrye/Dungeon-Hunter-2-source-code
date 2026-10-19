; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a9c1c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::CamAnimSetTable
; alias: _ZN6Arrays15CamAnimSetTable13finalizeNamesEv
; demangled: Arrays::CamAnimSetTable::finalizeNames()
; decoder-mode: arm
004a9c1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a9c20  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a9c24  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a9c28  05 50 8f e0                                      add r5, pc, r5
004a9c2c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9c30  00 30 93 e5                                      ldr r3, [r3]
004a9c34  00 00 53 e3                                      cmp r3, #0
004a9c38  1a 00 00 0a                                      beq #0x4a9ca8
004a9c3c  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a9c40  07 20 95 e7                                      ldr r2, [r5, r7]
004a9c44  00 20 92 e5                                      ldr r2, [r2]
004a9c48  00 00 52 e3                                      cmp r2, #0
004a9c4c  10 00 00 0a                                      beq #0x4a9c94
004a9c50  00 40 a0 e3                                      mov r4, #0
004a9c54  01 00 00 ea                                      b #0x4a9c60
004a9c58  06 30 95 e7                                      ldr r3, [r5, r6]
004a9c5c  00 30 93 e5                                      ldr r3, [r3]
004a9c60  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a9c64  01 40 84 e2                                      add r4, r4, #1
004a9c68  00 00 50 e3                                      cmp r0, #0
004a9c6c  02 00 00 0a                                      beq #0x4a9c7c
004a9c70  f2 99 f9 eb                                      bl #0x310440
004a9c74  06 30 95 e7                                      ldr r3, [r5, r6]
004a9c78  00 30 93 e5                                      ldr r3, [r3]
004a9c7c  07 20 95 e7                                      ldr r2, [r5, r7]
004a9c80  00 20 92 e5                                      ldr r2, [r2]
004a9c84  04 00 52 e1                                      cmp r2, r4
004a9c88  f2 ff ff 8a                                      bhi #0x4a9c58
004a9c8c  00 00 53 e3                                      cmp r3, #0
004a9c90  01 00 00 0a                                      beq #0x4a9c9c
004a9c94  03 00 a0 e1                                      mov r0, r3
004a9c98  e8 99 f9 eb                                      bl #0x310440
004a9c9c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9ca0  00 20 a0 e3                                      mov r2, #0
004a9ca4  00 20 83 e5                                      str r2, [r3]
004a9ca8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9cac  68 ae 4e 00 5c 3a 00 00 e4 38 00 00              .byte 0x68, 0xae, 0x4e, 0x00, 0x5c, 0x3a, 0x00, 0x00, 0xe4, 0x38, 0x00, 0x00

; FUNCTION 0x004a9cb8, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::CamAnimSetTable
; alias: _ZN6Arrays15CamAnimSetTable8finalizeEv
; demangled: Arrays::CamAnimSetTable::finalize()
; decoder-mode: arm
004a9cb8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a9cbc  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a9cc0  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a9cc4  05 50 8f e0                                      add r5, pc, r5
004a9cc8  07 30 95 e7                                      ldr r3, [r5, r7]
004a9ccc  00 30 93 e5                                      ldr r3, [r3]
004a9cd0  00 00 53 e3                                      cmp r3, #0
004a9cd4  2c 00 00 0a                                      beq #0x4a9d8c
004a9cd8  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a9cdc  08 20 95 e7                                      ldr r2, [r5, r8]
004a9ce0  00 20 92 e5                                      ldr r2, [r2]
004a9ce4  00 00 52 e3                                      cmp r2, #0
004a9ce8  12 00 00 0a                                      beq #0x4a9d38
004a9cec  00 40 a0 e3                                      mov r4, #0
004a9cf0  04 60 a0 e1                                      mov r6, r4
004a9cf4  01 00 00 ea                                      b #0x4a9d00
004a9cf8  07 30 95 e7                                      ldr r3, [r5, r7]
004a9cfc  00 30 93 e5                                      ldr r3, [r3]
004a9d00  04 00 83 e0                                      add r0, r3, r4
004a9d04  04 30 93 e7                                      ldr r3, [r3, r4]
004a9d08  0f e0 a0 e1                                      mov lr, pc
004a9d0c  08 f0 93 e5                                      ldr pc, [r3, #8]
004a9d10  08 30 95 e7                                      ldr r3, [r5, r8]
004a9d14  01 60 86 e2                                      add r6, r6, #1
004a9d18  1c 40 84 e2                                      add r4, r4, #0x1c
004a9d1c  00 30 93 e5                                      ldr r3, [r3]
004a9d20  06 00 53 e1                                      cmp r3, r6
004a9d24  f3 ff ff 8a                                      bhi #0x4a9cf8
004a9d28  07 30 95 e7                                      ldr r3, [r5, r7]
004a9d2c  00 30 93 e5                                      ldr r3, [r3]
004a9d30  00 00 53 e3                                      cmp r3, #0
004a9d34  11 00 00 0a                                      beq #0x4a9d80
004a9d38  04 20 13 e5                                      ldr r2, [r3, #-4]
004a9d3c  1c 00 a0 e3                                      mov r0, #0x1c
004a9d40  90 32 20 e0                                      mla r0, r0, r2, r3
004a9d44  00 00 53 e1                                      cmp r3, r0
004a9d48  01 00 00 1a                                      bne #0x4a9d54
004a9d4c  09 00 00 ea                                      b #0x4a9d78
004a9d50  04 00 a0 e1                                      mov r0, r4
004a9d54  1c 40 40 e2                                      sub r4, r0, #0x1c
004a9d58  1c 30 10 e5                                      ldr r3, [r0, #-0x1c]
004a9d5c  04 00 a0 e1                                      mov r0, r4
004a9d60  0f e0 a0 e1                                      mov lr, pc
004a9d64  00 f0 93 e5                                      ldr pc, [r3]
004a9d68  07 30 95 e7                                      ldr r3, [r5, r7]
004a9d6c  00 00 93 e5                                      ldr r0, [r3]
004a9d70  04 00 50 e1                                      cmp r0, r4
004a9d74  f5 ff ff 1a                                      bne #0x4a9d50
004a9d78  08 00 40 e2                                      sub r0, r0, #8
004a9d7c  af 99 f9 eb                                      bl #0x310440
004a9d80  07 30 95 e7                                      ldr r3, [r5, r7]
004a9d84  00 20 a0 e3                                      mov r2, #0
004a9d88  00 20 83 e5                                      str r2, [r3]
004a9d8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9d90  cc ad 4e 00 d4 3d 00 00 e4 38 00 00              .byte 0xcc, 0xad, 0x4e, 0x00, 0xd4, 0x3d, 0x00, 0x00, 0xe4, 0x38, 0x00, 0x00

; FUNCTION 0x004b37a4, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::CamAnimSetTable
; alias: _ZN6Arrays15CamAnimSetTable4readEP11IStreamBase
; demangled: Arrays::CamAnimSetTable::read(IStreamBase*)
; decoder-mode: arm
004b37a4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b37a8  0c d0 4d e2                                      sub sp, sp, #0xc
004b37ac  00 a0 a0 e1                                      mov sl, r0
004b37b0  b6 80 f9 eb                                      bl #0x313a90
004b37b4  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b37b8  01 30 a0 e3                                      mov r3, #1
004b37bc  00 00 53 e3                                      cmp r3, #0
004b37c0  04 00 8d e5                                      str r0, [sp, #4]
004b37c4  00 30 8d e5                                      str r3, [sp]
004b37c8  06 60 8f e0                                      add r6, pc, r6
004b37cc  10 00 00 1a                                      bne #0x4b3814
004b37d0  04 30 8d e2                                      add r3, sp, #4
004b37d4  02 20 83 e2                                      add r2, r3, #2
004b37d8  01 30 83 e2                                      add r3, r3, #1
004b37dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b37e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b37e4  03 00 52 e1                                      cmp r2, r3
004b37e8  01 10 20 e0                                      eor r1, r0, r1
004b37ec  01 10 43 e5                                      strb r1, [r3, #-1]
004b37f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b37f4  00 10 21 e0                                      eor r1, r1, r0
004b37f8  01 10 c2 e5                                      strb r1, [r2, #1]
004b37fc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b3800  01 20 42 e2                                      sub r2, r2, #1
004b3804  00 10 21 e0                                      eor r1, r1, r0
004b3808  01 10 43 e5                                      strb r1, [r3, #-1]
004b380c  01 30 83 e2                                      add r3, r3, #1
004b3810  f1 ff ff 8a                                      bhi #0x4b37dc
004b3814  27 d9 ff eb                                      bl #0x4a9cb8
004b3818  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b381c  04 40 9d e5                                      ldr r4, [sp, #4]
004b3820  1c 50 a0 e3                                      mov r5, #0x1c
004b3824  07 30 96 e7                                      ldr r3, [r6, r7]
004b3828  95 04 00 e0                                      mul r0, r5, r4
004b382c  00 40 83 e5                                      str r4, [r3]
004b3830  08 00 80 e2                                      add r0, r0, #8
004b3834  01 10 a0 e3                                      mov r1, #1
004b3838  4b 73 f9 eb                                      bl #0x31056c
004b383c  00 00 54 e3                                      cmp r4, #0
004b3840  00 50 80 e5                                      str r5, [r0]
004b3844  04 40 80 e5                                      str r4, [r0, #4]
004b3848  08 30 80 e2                                      add r3, r0, #8
004b384c  0a 00 00 0a                                      beq #0x4b387c
004b3850  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b3854  00 20 a0 e3                                      mov r2, #0
004b3858  02 c0 a0 e1                                      mov ip, r2
004b385c  01 10 96 e7                                      ldr r1, [r6, r1]
004b3860  08 10 81 e2                                      add r1, r1, #8
004b3864  01 20 82 e2                                      add r2, r2, #1
004b3868  04 00 52 e1                                      cmp r2, r4
004b386c  08 10 80 e5                                      str r1, [r0, #8]
004b3870  10 c0 80 e5                                      str ip, [r0, #0x10]
004b3874  1c 00 80 e2                                      add r0, r0, #0x1c
004b3878  f9 ff ff 1a                                      bne #0x4b3864
004b387c  07 20 96 e7                                      ldr r2, [r6, r7]
004b3880  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b3884  00 10 92 e5                                      ldr r1, [r2]
004b3888  08 20 96 e7                                      ldr r2, [r6, r8]
004b388c  00 00 51 e3                                      cmp r1, #0
004b3890  00 30 82 e5                                      str r3, [r2]
004b3894  0f 00 00 0a                                      beq #0x4b38d8
004b3898  00 40 a0 e3                                      mov r4, #0
004b389c  04 50 a0 e1                                      mov r5, r4
004b38a0  01 00 00 ea                                      b #0x4b38ac
004b38a4  08 30 96 e7                                      ldr r3, [r6, r8]
004b38a8  00 30 93 e5                                      ldr r3, [r3]
004b38ac  04 00 83 e0                                      add r0, r3, r4
004b38b0  0a 10 a0 e1                                      mov r1, sl
004b38b4  04 30 93 e7                                      ldr r3, [r3, r4]
004b38b8  0f e0 a0 e1                                      mov lr, pc
004b38bc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b38c0  07 30 96 e7                                      ldr r3, [r6, r7]
004b38c4  01 50 85 e2                                      add r5, r5, #1
004b38c8  1c 40 84 e2                                      add r4, r4, #0x1c
004b38cc  00 30 93 e5                                      ldr r3, [r3]
004b38d0  05 00 53 e1                                      cmp r3, r5
004b38d4  f2 ff ff 8a                                      bhi #0x4b38a4
004b38d8  0c d0 8d e2                                      add sp, sp, #0xc
004b38dc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b38e0  c8 12 4e 00 e4 38 00 00 bc 36 00 00 d4 3d 00 00  .byte 0xc8, 0x12, 0x4e, 0x00, 0xe4, 0x38, 0x00, 0x00, 0xbc, 0x36, 0x00, 0x00, 0xd4, 0x3d, 0x00, 0x00

; FUNCTION 0x004b4a58, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::CamAnimSetTable
; alias: _ZN6Arrays15CamAnimSetTable9readNamesEP11IStreamBase
; demangled: Arrays::CamAnimSetTable::readNames(IStreamBase*)
; decoder-mode: arm
004b4a58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b4a5c  00 70 a0 e1                                      mov r7, r0
004b4a60  1c d0 4d e2                                      sub sp, sp, #0x1c
004b4a64  6c d4 ff eb                                      bl #0x4a9c1c
004b4a68  07 00 a0 e1                                      mov r0, r7
004b4a6c  07 7c f9 eb                                      bl #0x313a90
004b4a70  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b4a74  01 30 a0 e3                                      mov r3, #1
004b4a78  00 00 53 e3                                      cmp r3, #0
004b4a7c  06 60 8f e0                                      add r6, pc, r6
004b4a80  14 00 8d e5                                      str r0, [sp, #0x14]
004b4a84  0c 30 8d e5                                      str r3, [sp, #0xc]
004b4a88  12 00 00 1a                                      bne #0x4b4ad8
004b4a8c  14 30 8d e2                                      add r3, sp, #0x14
004b4a90  02 20 83 e2                                      add r2, r3, #2
004b4a94  01 30 83 e2                                      add r3, r3, #1
004b4a98  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4a9c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b4aa0  03 00 52 e1                                      cmp r2, r3
004b4aa4  02 40 a0 e1                                      mov r4, r2
004b4aa8  01 10 20 e0                                      eor r1, r0, r1
004b4aac  01 10 43 e5                                      strb r1, [r3, #-1]
004b4ab0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4ab4  00 10 21 e0                                      eor r1, r1, r0
004b4ab8  01 10 c2 e5                                      strb r1, [r2, #1]
004b4abc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b4ac0  01 20 42 e2                                      sub r2, r2, #1
004b4ac4  00 10 21 e0                                      eor r1, r1, r0
004b4ac8  01 10 43 e5                                      strb r1, [r3, #-1]
004b4acc  01 30 83 e2                                      add r3, r3, #1
004b4ad0  f0 ff ff 8a                                      bhi #0x4b4a98
004b4ad4  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b4ad8  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b4adc  03 30 96 e7                                      ldr r3, [r6, r3]
004b4ae0  00 30 93 e5                                      ldr r3, [r3]
004b4ae4  00 00 53 e1                                      cmp r3, r0
004b4ae8  01 00 00 0a                                      beq #0x4b4af4
004b4aec  1c d0 8d e2                                      add sp, sp, #0x1c
004b4af0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b4af4  00 01 a0 e1                                      lsl r0, r0, #2
004b4af8  01 10 a0 e3                                      mov r1, #1
004b4afc  9a 6e f9 eb                                      bl #0x31056c
004b4b00  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b4b04  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b4b08  09 30 96 e7                                      ldr r3, [r6, sb]
004b4b0c  00 00 52 e3                                      cmp r2, #0
004b4b10  00 00 83 e5                                      str r0, [r3]
004b4b14  f4 ff ff 0a                                      beq #0x4b4aec
004b4b18  10 a0 8d e2                                      add sl, sp, #0x10
004b4b1c  01 80 a0 e3                                      mov r8, #1
004b4b20  08 10 8a e0                                      add r1, sl, r8
004b4b24  02 30 8a e2                                      add r3, sl, #2
004b4b28  00 40 a0 e3                                      mov r4, #0
004b4b2c  0a 00 8d e8                                      stm sp, {r1, r3}
004b4b30  07 00 a0 e1                                      mov r0, r7
004b4b34  0a 10 a0 e1                                      mov r1, sl
004b4b38  98 a9 fc eb                                      bl #0x3df1a0
004b4b3c  00 00 58 e3                                      cmp r8, #0
004b4b40  0c 80 8d e5                                      str r8, [sp, #0xc]
004b4b44  0f 00 00 1a                                      bne #0x4b4b88
004b4b48  00 30 9d e5                                      ldr r3, [sp]
004b4b4c  04 20 9d e5                                      ldr r2, [sp, #4]
004b4b50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4b54  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b4b58  03 00 52 e1                                      cmp r2, r3
004b4b5c  01 10 20 e0                                      eor r1, r0, r1
004b4b60  01 10 43 e5                                      strb r1, [r3, #-1]
004b4b64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4b68  00 10 21 e0                                      eor r1, r1, r0
004b4b6c  01 10 c2 e5                                      strb r1, [r2, #1]
004b4b70  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b4b74  01 20 42 e2                                      sub r2, r2, #1
004b4b78  00 10 21 e0                                      eor r1, r1, r0
004b4b7c  01 10 43 e5                                      strb r1, [r3, #-1]
004b4b80  01 30 83 e2                                      add r3, r3, #1
004b4b84  f1 ff ff 8a                                      bhi #0x4b4b50
004b4b88  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b4b8c  09 50 96 e7                                      ldr r5, [r6, sb]
004b4b90  01 10 a0 e3                                      mov r1, #1
004b4b94  01 00 80 e0                                      add r0, r0, r1
004b4b98  00 b0 95 e5                                      ldr fp, [r5]
004b4b9c  72 6e f9 eb                                      bl #0x31056c
004b4ba0  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b4ba4  00 30 95 e5                                      ldr r3, [r5]
004b4ba8  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b4bac  07 00 a0 e1                                      mov r0, r7
004b4bb0  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b4bb4  00 30 a0 e3                                      mov r3, #0
004b4bb8  25 8a f9 eb                                      bl #0x317454
004b4bbc  00 30 95 e5                                      ldr r3, [r5]
004b4bc0  00 10 a0 e3                                      mov r1, #0
004b4bc4  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b4bc8  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b4bcc  01 40 84 e2                                      add r4, r4, #1
004b4bd0  03 10 c2 e7                                      strb r1, [r2, r3]
004b4bd4  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b4bd8  04 00 53 e1                                      cmp r3, r4
004b4bdc  d3 ff ff 8a                                      bhi #0x4b4b30
004b4be0  c1 ff ff ea                                      b #0x4b4aec
; mapping-symbol data/literal pool
004b4be4  14 00 4e 00 e4 38 00 00 5c 3a 00 00              .byte 0x14, 0x00, 0x4e, 0x00, 0xe4, 0x38, 0x00, 0x00, 0x5c, 0x3a, 0x00, 0x00
