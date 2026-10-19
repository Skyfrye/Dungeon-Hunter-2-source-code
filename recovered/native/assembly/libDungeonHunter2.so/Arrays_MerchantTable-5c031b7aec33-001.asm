; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a5a64, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::MerchantTable
; alias: _ZN6Arrays13MerchantTable13finalizeNamesEv
; demangled: Arrays::MerchantTable::finalizeNames()
; decoder-mode: arm
004a5a64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5a68  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a5a6c  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a5a70  05 50 8f e0                                      add r5, pc, r5
004a5a74  06 30 95 e7                                      ldr r3, [r5, r6]
004a5a78  00 30 93 e5                                      ldr r3, [r3]
004a5a7c  00 00 53 e3                                      cmp r3, #0
004a5a80  1a 00 00 0a                                      beq #0x4a5af0
004a5a84  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a5a88  07 20 95 e7                                      ldr r2, [r5, r7]
004a5a8c  00 20 92 e5                                      ldr r2, [r2]
004a5a90  00 00 52 e3                                      cmp r2, #0
004a5a94  10 00 00 0a                                      beq #0x4a5adc
004a5a98  00 40 a0 e3                                      mov r4, #0
004a5a9c  01 00 00 ea                                      b #0x4a5aa8
004a5aa0  06 30 95 e7                                      ldr r3, [r5, r6]
004a5aa4  00 30 93 e5                                      ldr r3, [r3]
004a5aa8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a5aac  01 40 84 e2                                      add r4, r4, #1
004a5ab0  00 00 50 e3                                      cmp r0, #0
004a5ab4  02 00 00 0a                                      beq #0x4a5ac4
004a5ab8  60 aa f9 eb                                      bl #0x310440
004a5abc  06 30 95 e7                                      ldr r3, [r5, r6]
004a5ac0  00 30 93 e5                                      ldr r3, [r3]
004a5ac4  07 20 95 e7                                      ldr r2, [r5, r7]
004a5ac8  00 20 92 e5                                      ldr r2, [r2]
004a5acc  04 00 52 e1                                      cmp r2, r4
004a5ad0  f2 ff ff 8a                                      bhi #0x4a5aa0
004a5ad4  00 00 53 e3                                      cmp r3, #0
004a5ad8  01 00 00 0a                                      beq #0x4a5ae4
004a5adc  03 00 a0 e1                                      mov r0, r3
004a5ae0  56 aa f9 eb                                      bl #0x310440
004a5ae4  06 30 95 e7                                      ldr r3, [r5, r6]
004a5ae8  00 20 a0 e3                                      mov r2, #0
004a5aec  00 20 83 e5                                      str r2, [r3]
004a5af0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5af4  20 f0 4e 00 94 4b 00 00 08 22 00 00              .byte 0x20, 0xf0, 0x4e, 0x00, 0x94, 0x4b, 0x00, 0x00, 0x08, 0x22, 0x00, 0x00

; FUNCTION 0x004a5b00, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::MerchantTable
; alias: _ZN6Arrays13MerchantTable8finalizeEv
; demangled: Arrays::MerchantTable::finalize()
; decoder-mode: arm
004a5b00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5b04  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a5b08  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a5b0c  05 50 8f e0                                      add r5, pc, r5
004a5b10  07 30 95 e7                                      ldr r3, [r5, r7]
004a5b14  00 30 93 e5                                      ldr r3, [r3]
004a5b18  00 00 53 e3                                      cmp r3, #0
004a5b1c  2c 00 00 0a                                      beq #0x4a5bd4
004a5b20  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a5b24  08 20 95 e7                                      ldr r2, [r5, r8]
004a5b28  00 20 92 e5                                      ldr r2, [r2]
004a5b2c  00 00 52 e3                                      cmp r2, #0
004a5b30  12 00 00 0a                                      beq #0x4a5b80
004a5b34  00 40 a0 e3                                      mov r4, #0
004a5b38  04 60 a0 e1                                      mov r6, r4
004a5b3c  01 00 00 ea                                      b #0x4a5b48
004a5b40  07 30 95 e7                                      ldr r3, [r5, r7]
004a5b44  00 30 93 e5                                      ldr r3, [r3]
004a5b48  04 00 83 e0                                      add r0, r3, r4
004a5b4c  04 30 93 e7                                      ldr r3, [r3, r4]
004a5b50  0f e0 a0 e1                                      mov lr, pc
004a5b54  08 f0 93 e5                                      ldr pc, [r3, #8]
004a5b58  08 30 95 e7                                      ldr r3, [r5, r8]
004a5b5c  01 60 86 e2                                      add r6, r6, #1
004a5b60  14 40 84 e2                                      add r4, r4, #0x14
004a5b64  00 30 93 e5                                      ldr r3, [r3]
004a5b68  06 00 53 e1                                      cmp r3, r6
004a5b6c  f3 ff ff 8a                                      bhi #0x4a5b40
004a5b70  07 30 95 e7                                      ldr r3, [r5, r7]
004a5b74  00 30 93 e5                                      ldr r3, [r3]
004a5b78  00 00 53 e3                                      cmp r3, #0
004a5b7c  11 00 00 0a                                      beq #0x4a5bc8
004a5b80  04 20 13 e5                                      ldr r2, [r3, #-4]
004a5b84  14 00 a0 e3                                      mov r0, #0x14
004a5b88  90 32 20 e0                                      mla r0, r0, r2, r3
004a5b8c  00 00 53 e1                                      cmp r3, r0
004a5b90  01 00 00 1a                                      bne #0x4a5b9c
004a5b94  09 00 00 ea                                      b #0x4a5bc0
004a5b98  04 00 a0 e1                                      mov r0, r4
004a5b9c  14 40 40 e2                                      sub r4, r0, #0x14
004a5ba0  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004a5ba4  04 00 a0 e1                                      mov r0, r4
004a5ba8  0f e0 a0 e1                                      mov lr, pc
004a5bac  00 f0 93 e5                                      ldr pc, [r3]
004a5bb0  07 30 95 e7                                      ldr r3, [r5, r7]
004a5bb4  00 00 93 e5                                      ldr r0, [r3]
004a5bb8  04 00 50 e1                                      cmp r0, r4
004a5bbc  f5 ff ff 1a                                      bne #0x4a5b98
004a5bc0  08 00 40 e2                                      sub r0, r0, #8
004a5bc4  1d aa f9 eb                                      bl #0x310440
004a5bc8  07 30 95 e7                                      ldr r3, [r5, r7]
004a5bcc  00 20 a0 e3                                      mov r2, #0
004a5bd0  00 20 83 e5                                      str r2, [r3]
004a5bd4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5bd8  84 ef 4e 00 74 41 00 00 08 22 00 00              .byte 0x84, 0xef, 0x4e, 0x00, 0x74, 0x41, 0x00, 0x00, 0x08, 0x22, 0x00, 0x00

; FUNCTION 0x004b02c8, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::MerchantTable
; alias: _ZN6Arrays13MerchantTable9readNamesEP11IStreamBase
; demangled: Arrays::MerchantTable::readNames(IStreamBase*)
; decoder-mode: arm
004b02c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b02cc  00 70 a0 e1                                      mov r7, r0
004b02d0  1c d0 4d e2                                      sub sp, sp, #0x1c
004b02d4  e2 d5 ff eb                                      bl #0x4a5a64
004b02d8  07 00 a0 e1                                      mov r0, r7
004b02dc  eb 8d f9 eb                                      bl #0x313a90
004b02e0  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b02e4  01 30 a0 e3                                      mov r3, #1
004b02e8  00 00 53 e3                                      cmp r3, #0
004b02ec  06 60 8f e0                                      add r6, pc, r6
004b02f0  14 00 8d e5                                      str r0, [sp, #0x14]
004b02f4  0c 30 8d e5                                      str r3, [sp, #0xc]
004b02f8  12 00 00 1a                                      bne #0x4b0348
004b02fc  14 30 8d e2                                      add r3, sp, #0x14
004b0300  02 20 83 e2                                      add r2, r3, #2
004b0304  01 30 83 e2                                      add r3, r3, #1
004b0308  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b030c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0310  03 00 52 e1                                      cmp r2, r3
004b0314  02 40 a0 e1                                      mov r4, r2
004b0318  01 10 20 e0                                      eor r1, r0, r1
004b031c  01 10 43 e5                                      strb r1, [r3, #-1]
004b0320  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0324  00 10 21 e0                                      eor r1, r1, r0
004b0328  01 10 c2 e5                                      strb r1, [r2, #1]
004b032c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0330  01 20 42 e2                                      sub r2, r2, #1
004b0334  00 10 21 e0                                      eor r1, r1, r0
004b0338  01 10 43 e5                                      strb r1, [r3, #-1]
004b033c  01 30 83 e2                                      add r3, r3, #1
004b0340  f0 ff ff 8a                                      bhi #0x4b0308
004b0344  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b0348  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b034c  03 30 96 e7                                      ldr r3, [r6, r3]
004b0350  00 30 93 e5                                      ldr r3, [r3]
004b0354  00 00 53 e1                                      cmp r3, r0
004b0358  01 00 00 0a                                      beq #0x4b0364
004b035c  1c d0 8d e2                                      add sp, sp, #0x1c
004b0360  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b0364  00 01 a0 e1                                      lsl r0, r0, #2
004b0368  01 10 a0 e3                                      mov r1, #1
004b036c  7e 80 f9 eb                                      bl #0x31056c
004b0370  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b0374  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b0378  09 30 96 e7                                      ldr r3, [r6, sb]
004b037c  00 00 52 e3                                      cmp r2, #0
004b0380  00 00 83 e5                                      str r0, [r3]
004b0384  f4 ff ff 0a                                      beq #0x4b035c
004b0388  10 a0 8d e2                                      add sl, sp, #0x10
004b038c  01 80 a0 e3                                      mov r8, #1
004b0390  08 10 8a e0                                      add r1, sl, r8
004b0394  02 30 8a e2                                      add r3, sl, #2
004b0398  00 40 a0 e3                                      mov r4, #0
004b039c  0a 00 8d e8                                      stm sp, {r1, r3}
004b03a0  07 00 a0 e1                                      mov r0, r7
004b03a4  0a 10 a0 e1                                      mov r1, sl
004b03a8  7c bb fc eb                                      bl #0x3df1a0
004b03ac  00 00 58 e3                                      cmp r8, #0
004b03b0  0c 80 8d e5                                      str r8, [sp, #0xc]
004b03b4  0f 00 00 1a                                      bne #0x4b03f8
004b03b8  00 30 9d e5                                      ldr r3, [sp]
004b03bc  04 20 9d e5                                      ldr r2, [sp, #4]
004b03c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b03c4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b03c8  03 00 52 e1                                      cmp r2, r3
004b03cc  01 10 20 e0                                      eor r1, r0, r1
004b03d0  01 10 43 e5                                      strb r1, [r3, #-1]
004b03d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b03d8  00 10 21 e0                                      eor r1, r1, r0
004b03dc  01 10 c2 e5                                      strb r1, [r2, #1]
004b03e0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b03e4  01 20 42 e2                                      sub r2, r2, #1
004b03e8  00 10 21 e0                                      eor r1, r1, r0
004b03ec  01 10 43 e5                                      strb r1, [r3, #-1]
004b03f0  01 30 83 e2                                      add r3, r3, #1
004b03f4  f1 ff ff 8a                                      bhi #0x4b03c0
004b03f8  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b03fc  09 50 96 e7                                      ldr r5, [r6, sb]
004b0400  01 10 a0 e3                                      mov r1, #1
004b0404  01 00 80 e0                                      add r0, r0, r1
004b0408  00 b0 95 e5                                      ldr fp, [r5]
004b040c  56 80 f9 eb                                      bl #0x31056c
004b0410  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b0414  00 30 95 e5                                      ldr r3, [r5]
004b0418  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b041c  07 00 a0 e1                                      mov r0, r7
004b0420  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b0424  00 30 a0 e3                                      mov r3, #0
004b0428  09 9c f9 eb                                      bl #0x317454
004b042c  00 30 95 e5                                      ldr r3, [r5]
004b0430  00 10 a0 e3                                      mov r1, #0
004b0434  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b0438  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b043c  01 40 84 e2                                      add r4, r4, #1
004b0440  03 10 c2 e7                                      strb r1, [r2, r3]
004b0444  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b0448  04 00 53 e1                                      cmp r3, r4
004b044c  d3 ff ff 8a                                      bhi #0x4b03a0
004b0450  c1 ff ff ea                                      b #0x4b035c
; mapping-symbol data/literal pool
004b0454  a4 47 4e 00 08 22 00 00 94 4b 00 00              .byte 0xa4, 0x47, 0x4e, 0x00, 0x08, 0x22, 0x00, 0x00, 0x94, 0x4b, 0x00, 0x00

; FUNCTION 0x004b0460, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::MerchantTable
; alias: _ZN6Arrays13MerchantTable9skipNamesEP11IStreamBase
; demangled: Arrays::MerchantTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b0460  98 ff ff ea                                      b #0x4b02c8

; FUNCTION 0x004b9d40, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::MerchantTable
; alias: _ZN6Arrays13MerchantTable4readEP11IStreamBase
; demangled: Arrays::MerchantTable::read(IStreamBase*)
; decoder-mode: arm
004b9d40  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b9d44  0c d0 4d e2                                      sub sp, sp, #0xc
004b9d48  00 a0 a0 e1                                      mov sl, r0
004b9d4c  4f 67 f9 eb                                      bl #0x313a90
004b9d50  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b9d54  01 30 a0 e3                                      mov r3, #1
004b9d58  00 00 53 e3                                      cmp r3, #0
004b9d5c  04 00 8d e5                                      str r0, [sp, #4]
004b9d60  00 30 8d e5                                      str r3, [sp]
004b9d64  06 60 8f e0                                      add r6, pc, r6
004b9d68  10 00 00 1a                                      bne #0x4b9db0
004b9d6c  04 30 8d e2                                      add r3, sp, #4
004b9d70  02 20 83 e2                                      add r2, r3, #2
004b9d74  01 30 83 e2                                      add r3, r3, #1
004b9d78  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9d7c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b9d80  03 00 52 e1                                      cmp r2, r3
004b9d84  01 10 20 e0                                      eor r1, r0, r1
004b9d88  01 10 43 e5                                      strb r1, [r3, #-1]
004b9d8c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9d90  00 10 21 e0                                      eor r1, r1, r0
004b9d94  01 10 c2 e5                                      strb r1, [r2, #1]
004b9d98  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b9d9c  01 20 42 e2                                      sub r2, r2, #1
004b9da0  00 10 21 e0                                      eor r1, r1, r0
004b9da4  01 10 43 e5                                      strb r1, [r3, #-1]
004b9da8  01 30 83 e2                                      add r3, r3, #1
004b9dac  f1 ff ff 8a                                      bhi #0x4b9d78
004b9db0  52 af ff eb                                      bl #0x4a5b00
004b9db4  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b9db8  04 40 9d e5                                      ldr r4, [sp, #4]
004b9dbc  14 50 a0 e3                                      mov r5, #0x14
004b9dc0  07 30 96 e7                                      ldr r3, [r6, r7]
004b9dc4  95 04 00 e0                                      mul r0, r5, r4
004b9dc8  00 40 83 e5                                      str r4, [r3]
004b9dcc  08 00 80 e2                                      add r0, r0, #8
004b9dd0  01 10 a0 e3                                      mov r1, #1
004b9dd4  e4 59 f9 eb                                      bl #0x31056c
004b9dd8  00 00 54 e3                                      cmp r4, #0
004b9ddc  00 50 80 e5                                      str r5, [r0]
004b9de0  04 40 80 e5                                      str r4, [r0, #4]
004b9de4  08 30 80 e2                                      add r3, r0, #8
004b9de8  0a 00 00 0a                                      beq #0x4b9e18
004b9dec  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b9df0  00 20 a0 e3                                      mov r2, #0
004b9df4  02 c0 a0 e1                                      mov ip, r2
004b9df8  01 10 96 e7                                      ldr r1, [r6, r1]
004b9dfc  08 10 81 e2                                      add r1, r1, #8
004b9e00  01 20 82 e2                                      add r2, r2, #1
004b9e04  04 00 52 e1                                      cmp r2, r4
004b9e08  08 10 80 e5                                      str r1, [r0, #8]
004b9e0c  18 c0 80 e5                                      str ip, [r0, #0x18]
004b9e10  14 00 80 e2                                      add r0, r0, #0x14
004b9e14  f9 ff ff 1a                                      bne #0x4b9e00
004b9e18  07 20 96 e7                                      ldr r2, [r6, r7]
004b9e1c  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b9e20  00 10 92 e5                                      ldr r1, [r2]
004b9e24  08 20 96 e7                                      ldr r2, [r6, r8]
004b9e28  00 00 51 e3                                      cmp r1, #0
004b9e2c  00 30 82 e5                                      str r3, [r2]
004b9e30  0f 00 00 0a                                      beq #0x4b9e74
004b9e34  00 40 a0 e3                                      mov r4, #0
004b9e38  04 50 a0 e1                                      mov r5, r4
004b9e3c  01 00 00 ea                                      b #0x4b9e48
004b9e40  08 30 96 e7                                      ldr r3, [r6, r8]
004b9e44  00 30 93 e5                                      ldr r3, [r3]
004b9e48  04 00 83 e0                                      add r0, r3, r4
004b9e4c  0a 10 a0 e1                                      mov r1, sl
004b9e50  04 30 93 e7                                      ldr r3, [r3, r4]
004b9e54  0f e0 a0 e1                                      mov lr, pc
004b9e58  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b9e5c  07 30 96 e7                                      ldr r3, [r6, r7]
004b9e60  01 50 85 e2                                      add r5, r5, #1
004b9e64  14 40 84 e2                                      add r4, r4, #0x14
004b9e68  00 30 93 e5                                      ldr r3, [r3]
004b9e6c  05 00 53 e1                                      cmp r3, r5
004b9e70  f2 ff ff 8a                                      bhi #0x4b9e40
004b9e74  0c d0 8d e2                                      add sp, sp, #0xc
004b9e78  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b9e7c  2c ad 4d 00 08 22 00 00 a0 47 00 00 74 41 00 00  .byte 0x2c, 0xad, 0x4d, 0x00, 0x08, 0x22, 0x00, 0x00, 0xa0, 0x47, 0x00, 0x00, 0x74, 0x41, 0x00, 0x00
