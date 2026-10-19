; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a9f1c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::AIFactionTable
; alias: _ZN6Arrays14AIFactionTable13finalizeNamesEv
; demangled: Arrays::AIFactionTable::finalizeNames()
; decoder-mode: arm
004a9f1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a9f20  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a9f24  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a9f28  05 50 8f e0                                      add r5, pc, r5
004a9f2c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9f30  00 30 93 e5                                      ldr r3, [r3]
004a9f34  00 00 53 e3                                      cmp r3, #0
004a9f38  1a 00 00 0a                                      beq #0x4a9fa8
004a9f3c  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a9f40  07 20 95 e7                                      ldr r2, [r5, r7]
004a9f44  00 20 92 e5                                      ldr r2, [r2]
004a9f48  00 00 52 e3                                      cmp r2, #0
004a9f4c  10 00 00 0a                                      beq #0x4a9f94
004a9f50  00 40 a0 e3                                      mov r4, #0
004a9f54  01 00 00 ea                                      b #0x4a9f60
004a9f58  06 30 95 e7                                      ldr r3, [r5, r6]
004a9f5c  00 30 93 e5                                      ldr r3, [r3]
004a9f60  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a9f64  01 40 84 e2                                      add r4, r4, #1
004a9f68  00 00 50 e3                                      cmp r0, #0
004a9f6c  02 00 00 0a                                      beq #0x4a9f7c
004a9f70  32 99 f9 eb                                      bl #0x310440
004a9f74  06 30 95 e7                                      ldr r3, [r5, r6]
004a9f78  00 30 93 e5                                      ldr r3, [r3]
004a9f7c  07 20 95 e7                                      ldr r2, [r5, r7]
004a9f80  00 20 92 e5                                      ldr r2, [r2]
004a9f84  04 00 52 e1                                      cmp r2, r4
004a9f88  f2 ff ff 8a                                      bhi #0x4a9f58
004a9f8c  00 00 53 e3                                      cmp r3, #0
004a9f90  01 00 00 0a                                      beq #0x4a9f9c
004a9f94  03 00 a0 e1                                      mov r0, r3
004a9f98  28 99 f9 eb                                      bl #0x310440
004a9f9c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9fa0  00 20 a0 e3                                      mov r2, #0
004a9fa4  00 20 83 e5                                      str r2, [r3]
004a9fa8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9fac  68 ab 4e 00 34 37 00 00 44 22 00 00              .byte 0x68, 0xab, 0x4e, 0x00, 0x34, 0x37, 0x00, 0x00, 0x44, 0x22, 0x00, 0x00

; FUNCTION 0x004a9fb8, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::AIFactionTable
; alias: _ZN6Arrays14AIFactionTable8finalizeEv
; demangled: Arrays::AIFactionTable::finalize()
; decoder-mode: arm
004a9fb8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a9fbc  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a9fc0  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a9fc4  05 50 8f e0                                      add r5, pc, r5
004a9fc8  07 30 95 e7                                      ldr r3, [r5, r7]
004a9fcc  00 30 93 e5                                      ldr r3, [r3]
004a9fd0  00 00 53 e3                                      cmp r3, #0
004a9fd4  2c 00 00 0a                                      beq #0x4aa08c
004a9fd8  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a9fdc  08 20 95 e7                                      ldr r2, [r5, r8]
004a9fe0  00 20 92 e5                                      ldr r2, [r2]
004a9fe4  00 00 52 e3                                      cmp r2, #0
004a9fe8  12 00 00 0a                                      beq #0x4aa038
004a9fec  00 40 a0 e3                                      mov r4, #0
004a9ff0  04 60 a0 e1                                      mov r6, r4
004a9ff4  01 00 00 ea                                      b #0x4aa000
004a9ff8  07 30 95 e7                                      ldr r3, [r5, r7]
004a9ffc  00 30 93 e5                                      ldr r3, [r3]
004aa000  04 00 83 e0                                      add r0, r3, r4
004aa004  04 30 93 e7                                      ldr r3, [r3, r4]
004aa008  0f e0 a0 e1                                      mov lr, pc
004aa00c  08 f0 93 e5                                      ldr pc, [r3, #8]
004aa010  08 30 95 e7                                      ldr r3, [r5, r8]
004aa014  01 60 86 e2                                      add r6, r6, #1
004aa018  0c 40 84 e2                                      add r4, r4, #0xc
004aa01c  00 30 93 e5                                      ldr r3, [r3]
004aa020  06 00 53 e1                                      cmp r3, r6
004aa024  f3 ff ff 8a                                      bhi #0x4a9ff8
004aa028  07 30 95 e7                                      ldr r3, [r5, r7]
004aa02c  00 30 93 e5                                      ldr r3, [r3]
004aa030  00 00 53 e3                                      cmp r3, #0
004aa034  11 00 00 0a                                      beq #0x4aa080
004aa038  04 20 13 e5                                      ldr r2, [r3, #-4]
004aa03c  0c 00 a0 e3                                      mov r0, #0xc
004aa040  90 32 20 e0                                      mla r0, r0, r2, r3
004aa044  00 00 53 e1                                      cmp r3, r0
004aa048  01 00 00 1a                                      bne #0x4aa054
004aa04c  09 00 00 ea                                      b #0x4aa078
004aa050  04 00 a0 e1                                      mov r0, r4
004aa054  0c 40 40 e2                                      sub r4, r0, #0xc
004aa058  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004aa05c  04 00 a0 e1                                      mov r0, r4
004aa060  0f e0 a0 e1                                      mov lr, pc
004aa064  00 f0 93 e5                                      ldr pc, [r3]
004aa068  07 30 95 e7                                      ldr r3, [r5, r7]
004aa06c  00 00 93 e5                                      ldr r0, [r3]
004aa070  04 00 50 e1                                      cmp r0, r4
004aa074  f5 ff ff 1a                                      bne #0x4aa050
004aa078  08 00 40 e2                                      sub r0, r0, #8
004aa07c  ef 98 f9 eb                                      bl #0x310440
004aa080  07 30 95 e7                                      ldr r3, [r5, r7]
004aa084  00 20 a0 e3                                      mov r2, #0
004aa088  00 20 83 e5                                      str r2, [r3]
004aa08c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aa090  cc aa 4e 00 2c 46 00 00 44 22 00 00              .byte 0xcc, 0xaa, 0x4e, 0x00, 0x2c, 0x46, 0x00, 0x00, 0x44, 0x22, 0x00, 0x00

; FUNCTION 0x004b3a38, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::AIFactionTable
; alias: _ZN6Arrays14AIFactionTable4readEP11IStreamBase
; demangled: Arrays::AIFactionTable::read(IStreamBase*)
; decoder-mode: arm
004b3a38  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b3a3c  0c d0 4d e2                                      sub sp, sp, #0xc
004b3a40  00 a0 a0 e1                                      mov sl, r0
004b3a44  11 80 f9 eb                                      bl #0x313a90
004b3a48  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b3a4c  01 30 a0 e3                                      mov r3, #1
004b3a50  00 00 53 e3                                      cmp r3, #0
004b3a54  04 00 8d e5                                      str r0, [sp, #4]
004b3a58  00 30 8d e5                                      str r3, [sp]
004b3a5c  06 60 8f e0                                      add r6, pc, r6
004b3a60  10 00 00 1a                                      bne #0x4b3aa8
004b3a64  04 30 8d e2                                      add r3, sp, #4
004b3a68  02 20 83 e2                                      add r2, r3, #2
004b3a6c  01 30 83 e2                                      add r3, r3, #1
004b3a70  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3a74  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b3a78  03 00 52 e1                                      cmp r2, r3
004b3a7c  01 10 20 e0                                      eor r1, r0, r1
004b3a80  01 10 43 e5                                      strb r1, [r3, #-1]
004b3a84  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3a88  00 10 21 e0                                      eor r1, r1, r0
004b3a8c  01 10 c2 e5                                      strb r1, [r2, #1]
004b3a90  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b3a94  01 20 42 e2                                      sub r2, r2, #1
004b3a98  00 10 21 e0                                      eor r1, r1, r0
004b3a9c  01 10 43 e5                                      strb r1, [r3, #-1]
004b3aa0  01 30 83 e2                                      add r3, r3, #1
004b3aa4  f1 ff ff 8a                                      bhi #0x4b3a70
004b3aa8  42 d9 ff eb                                      bl #0x4a9fb8
004b3aac  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b3ab0  04 40 9d e5                                      ldr r4, [sp, #4]
004b3ab4  0c 50 a0 e3                                      mov r5, #0xc
004b3ab8  07 30 96 e7                                      ldr r3, [r6, r7]
004b3abc  95 04 00 e0                                      mul r0, r5, r4
004b3ac0  00 40 83 e5                                      str r4, [r3]
004b3ac4  08 00 80 e2                                      add r0, r0, #8
004b3ac8  01 10 a0 e3                                      mov r1, #1
004b3acc  a6 72 f9 eb                                      bl #0x31056c
004b3ad0  00 00 54 e3                                      cmp r4, #0
004b3ad4  00 50 80 e5                                      str r5, [r0]
004b3ad8  04 40 80 e5                                      str r4, [r0, #4]
004b3adc  08 30 80 e2                                      add r3, r0, #8
004b3ae0  0a 00 00 0a                                      beq #0x4b3b10
004b3ae4  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b3ae8  00 20 a0 e3                                      mov r2, #0
004b3aec  02 c0 a0 e1                                      mov ip, r2
004b3af0  01 10 96 e7                                      ldr r1, [r6, r1]
004b3af4  08 10 81 e2                                      add r1, r1, #8
004b3af8  01 20 82 e2                                      add r2, r2, #1
004b3afc  04 00 52 e1                                      cmp r2, r4
004b3b00  08 10 80 e5                                      str r1, [r0, #8]
004b3b04  10 c0 80 e5                                      str ip, [r0, #0x10]
004b3b08  0c 00 80 e2                                      add r0, r0, #0xc
004b3b0c  f9 ff ff 1a                                      bne #0x4b3af8
004b3b10  07 20 96 e7                                      ldr r2, [r6, r7]
004b3b14  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b3b18  00 10 92 e5                                      ldr r1, [r2]
004b3b1c  08 20 96 e7                                      ldr r2, [r6, r8]
004b3b20  00 00 51 e3                                      cmp r1, #0
004b3b24  00 30 82 e5                                      str r3, [r2]
004b3b28  0f 00 00 0a                                      beq #0x4b3b6c
004b3b2c  00 40 a0 e3                                      mov r4, #0
004b3b30  04 50 a0 e1                                      mov r5, r4
004b3b34  01 00 00 ea                                      b #0x4b3b40
004b3b38  08 30 96 e7                                      ldr r3, [r6, r8]
004b3b3c  00 30 93 e5                                      ldr r3, [r3]
004b3b40  04 00 83 e0                                      add r0, r3, r4
004b3b44  0a 10 a0 e1                                      mov r1, sl
004b3b48  04 30 93 e7                                      ldr r3, [r3, r4]
004b3b4c  0f e0 a0 e1                                      mov lr, pc
004b3b50  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b3b54  07 30 96 e7                                      ldr r3, [r6, r7]
004b3b58  01 50 85 e2                                      add r5, r5, #1
004b3b5c  0c 40 84 e2                                      add r4, r4, #0xc
004b3b60  00 30 93 e5                                      ldr r3, [r3]
004b3b64  05 00 53 e1                                      cmp r3, r5
004b3b68  f2 ff ff 8a                                      bhi #0x4b3b38
004b3b6c  0c d0 8d e2                                      add sp, sp, #0xc
004b3b70  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b3b74  34 10 4e 00 44 22 00 00 38 3c 00 00 2c 46 00 00  .byte 0x34, 0x10, 0x4e, 0x00, 0x44, 0x22, 0x00, 0x00, 0x38, 0x3c, 0x00, 0x00, 0x2c, 0x46, 0x00, 0x00

; FUNCTION 0x004b7300, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::AIFactionTable
; alias: _ZN6Arrays14AIFactionTable9readNamesEP11IStreamBase
; demangled: Arrays::AIFactionTable::readNames(IStreamBase*)
; decoder-mode: arm
004b7300  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b7304  00 70 a0 e1                                      mov r7, r0
004b7308  1c d0 4d e2                                      sub sp, sp, #0x1c
004b730c  02 cb ff eb                                      bl #0x4a9f1c
004b7310  07 00 a0 e1                                      mov r0, r7
004b7314  dd 71 f9 eb                                      bl #0x313a90
004b7318  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b731c  01 30 a0 e3                                      mov r3, #1
004b7320  00 00 53 e3                                      cmp r3, #0
004b7324  06 60 8f e0                                      add r6, pc, r6
004b7328  14 00 8d e5                                      str r0, [sp, #0x14]
004b732c  0c 30 8d e5                                      str r3, [sp, #0xc]
004b7330  12 00 00 1a                                      bne #0x4b7380
004b7334  14 30 8d e2                                      add r3, sp, #0x14
004b7338  02 20 83 e2                                      add r2, r3, #2
004b733c  01 30 83 e2                                      add r3, r3, #1
004b7340  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7344  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7348  03 00 52 e1                                      cmp r2, r3
004b734c  02 40 a0 e1                                      mov r4, r2
004b7350  01 10 20 e0                                      eor r1, r0, r1
004b7354  01 10 43 e5                                      strb r1, [r3, #-1]
004b7358  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b735c  00 10 21 e0                                      eor r1, r1, r0
004b7360  01 10 c2 e5                                      strb r1, [r2, #1]
004b7364  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b7368  01 20 42 e2                                      sub r2, r2, #1
004b736c  00 10 21 e0                                      eor r1, r1, r0
004b7370  01 10 43 e5                                      strb r1, [r3, #-1]
004b7374  01 30 83 e2                                      add r3, r3, #1
004b7378  f0 ff ff 8a                                      bhi #0x4b7340
004b737c  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b7380  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b7384  03 30 96 e7                                      ldr r3, [r6, r3]
004b7388  00 30 93 e5                                      ldr r3, [r3]
004b738c  00 00 53 e1                                      cmp r3, r0
004b7390  01 00 00 0a                                      beq #0x4b739c
004b7394  1c d0 8d e2                                      add sp, sp, #0x1c
004b7398  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b739c  00 01 a0 e1                                      lsl r0, r0, #2
004b73a0  01 10 a0 e3                                      mov r1, #1
004b73a4  70 64 f9 eb                                      bl #0x31056c
004b73a8  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b73ac  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b73b0  09 30 96 e7                                      ldr r3, [r6, sb]
004b73b4  00 00 52 e3                                      cmp r2, #0
004b73b8  00 00 83 e5                                      str r0, [r3]
004b73bc  f4 ff ff 0a                                      beq #0x4b7394
004b73c0  10 a0 8d e2                                      add sl, sp, #0x10
004b73c4  01 80 a0 e3                                      mov r8, #1
004b73c8  08 10 8a e0                                      add r1, sl, r8
004b73cc  02 30 8a e2                                      add r3, sl, #2
004b73d0  00 40 a0 e3                                      mov r4, #0
004b73d4  0a 00 8d e8                                      stm sp, {r1, r3}
004b73d8  07 00 a0 e1                                      mov r0, r7
004b73dc  0a 10 a0 e1                                      mov r1, sl
004b73e0  6e 9f fc eb                                      bl #0x3df1a0
004b73e4  00 00 58 e3                                      cmp r8, #0
004b73e8  0c 80 8d e5                                      str r8, [sp, #0xc]
004b73ec  0f 00 00 1a                                      bne #0x4b7430
004b73f0  00 30 9d e5                                      ldr r3, [sp]
004b73f4  04 20 9d e5                                      ldr r2, [sp, #4]
004b73f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b73fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7400  03 00 52 e1                                      cmp r2, r3
004b7404  01 10 20 e0                                      eor r1, r0, r1
004b7408  01 10 43 e5                                      strb r1, [r3, #-1]
004b740c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7410  00 10 21 e0                                      eor r1, r1, r0
004b7414  01 10 c2 e5                                      strb r1, [r2, #1]
004b7418  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b741c  01 20 42 e2                                      sub r2, r2, #1
004b7420  00 10 21 e0                                      eor r1, r1, r0
004b7424  01 10 43 e5                                      strb r1, [r3, #-1]
004b7428  01 30 83 e2                                      add r3, r3, #1
004b742c  f1 ff ff 8a                                      bhi #0x4b73f8
004b7430  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b7434  09 50 96 e7                                      ldr r5, [r6, sb]
004b7438  01 10 a0 e3                                      mov r1, #1
004b743c  01 00 80 e0                                      add r0, r0, r1
004b7440  00 b0 95 e5                                      ldr fp, [r5]
004b7444  48 64 f9 eb                                      bl #0x31056c
004b7448  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b744c  00 30 95 e5                                      ldr r3, [r5]
004b7450  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b7454  07 00 a0 e1                                      mov r0, r7
004b7458  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b745c  00 30 a0 e3                                      mov r3, #0
004b7460  fb 7f f9 eb                                      bl #0x317454
004b7464  00 30 95 e5                                      ldr r3, [r5]
004b7468  00 10 a0 e3                                      mov r1, #0
004b746c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b7470  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b7474  01 40 84 e2                                      add r4, r4, #1
004b7478  03 10 c2 e7                                      strb r1, [r2, r3]
004b747c  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b7480  04 00 53 e1                                      cmp r3, r4
004b7484  d3 ff ff 8a                                      bhi #0x4b73d8
004b7488  c1 ff ff ea                                      b #0x4b7394
; mapping-symbol data/literal pool
004b748c  6c d7 4d 00 44 22 00 00 34 37 00 00              .byte 0x6c, 0xd7, 0x4d, 0x00, 0x44, 0x22, 0x00, 0x00, 0x34, 0x37, 0x00, 0x00

; FUNCTION 0x004b7498, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::AIFactionTable
; alias: _ZN6Arrays14AIFactionTable9skipNamesEP11IStreamBase
; demangled: Arrays::AIFactionTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b7498  98 ff ff ea                                      b #0x4b7300
