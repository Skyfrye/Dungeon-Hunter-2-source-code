; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a4588, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::v2Quests
; alias: _ZN6Arrays8v2Quests13finalizeNamesEv
; demangled: Arrays::v2Quests::finalizeNames()
; decoder-mode: arm
004a4588  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a458c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a4590  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a4594  05 50 8f e0                                      add r5, pc, r5
004a4598  06 30 95 e7                                      ldr r3, [r5, r6]
004a459c  00 30 93 e5                                      ldr r3, [r3]
004a45a0  00 00 53 e3                                      cmp r3, #0
004a45a4  1a 00 00 0a                                      beq #0x4a4614
004a45a8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a45ac  07 20 95 e7                                      ldr r2, [r5, r7]
004a45b0  00 20 92 e5                                      ldr r2, [r2]
004a45b4  00 00 52 e3                                      cmp r2, #0
004a45b8  10 00 00 0a                                      beq #0x4a4600
004a45bc  00 40 a0 e3                                      mov r4, #0
004a45c0  01 00 00 ea                                      b #0x4a45cc
004a45c4  06 30 95 e7                                      ldr r3, [r5, r6]
004a45c8  00 30 93 e5                                      ldr r3, [r3]
004a45cc  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a45d0  01 40 84 e2                                      add r4, r4, #1
004a45d4  00 00 50 e3                                      cmp r0, #0
004a45d8  02 00 00 0a                                      beq #0x4a45e8
004a45dc  97 af f9 eb                                      bl #0x310440
004a45e0  06 30 95 e7                                      ldr r3, [r5, r6]
004a45e4  00 30 93 e5                                      ldr r3, [r3]
004a45e8  07 20 95 e7                                      ldr r2, [r5, r7]
004a45ec  00 20 92 e5                                      ldr r2, [r2]
004a45f0  04 00 52 e1                                      cmp r2, r4
004a45f4  f2 ff ff 8a                                      bhi #0x4a45c4
004a45f8  00 00 53 e3                                      cmp r3, #0
004a45fc  01 00 00 0a                                      beq #0x4a4608
004a4600  03 00 a0 e1                                      mov r0, r3
004a4604  8d af f9 eb                                      bl #0x310440
004a4608  06 30 95 e7                                      ldr r3, [r5, r6]
004a460c  00 20 a0 e3                                      mov r2, #0
004a4610  00 20 83 e5                                      str r2, [r3]
004a4614  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a4618  fc 04 4f 00 cc 20 00 00 24 44 00 00              .byte 0xfc, 0x04, 0x4f, 0x00, 0xcc, 0x20, 0x00, 0x00, 0x24, 0x44, 0x00, 0x00

; FUNCTION 0x004a4624, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::v2Quests
; alias: _ZN6Arrays8v2Quests8finalizeEv
; demangled: Arrays::v2Quests::finalize()
; decoder-mode: arm
004a4624  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a4628  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a462c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a4630  05 50 8f e0                                      add r5, pc, r5
004a4634  07 30 95 e7                                      ldr r3, [r5, r7]
004a4638  00 30 93 e5                                      ldr r3, [r3]
004a463c  00 00 53 e3                                      cmp r3, #0
004a4640  2c 00 00 0a                                      beq #0x4a46f8
004a4644  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a4648  08 20 95 e7                                      ldr r2, [r5, r8]
004a464c  00 20 92 e5                                      ldr r2, [r2]
004a4650  00 00 52 e3                                      cmp r2, #0
004a4654  12 00 00 0a                                      beq #0x4a46a4
004a4658  00 40 a0 e3                                      mov r4, #0
004a465c  04 60 a0 e1                                      mov r6, r4
004a4660  01 00 00 ea                                      b #0x4a466c
004a4664  07 30 95 e7                                      ldr r3, [r5, r7]
004a4668  00 30 93 e5                                      ldr r3, [r3]
004a466c  04 00 83 e0                                      add r0, r3, r4
004a4670  04 30 93 e7                                      ldr r3, [r3, r4]
004a4674  0f e0 a0 e1                                      mov lr, pc
004a4678  08 f0 93 e5                                      ldr pc, [r3, #8]
004a467c  08 30 95 e7                                      ldr r3, [r5, r8]
004a4680  01 60 86 e2                                      add r6, r6, #1
004a4684  47 4f 84 e2                                      add r4, r4, #0x11c
004a4688  00 30 93 e5                                      ldr r3, [r3]
004a468c  06 00 53 e1                                      cmp r3, r6
004a4690  f3 ff ff 8a                                      bhi #0x4a4664
004a4694  07 30 95 e7                                      ldr r3, [r5, r7]
004a4698  00 30 93 e5                                      ldr r3, [r3]
004a469c  00 00 53 e3                                      cmp r3, #0
004a46a0  11 00 00 0a                                      beq #0x4a46ec
004a46a4  04 20 13 e5                                      ldr r2, [r3, #-4]
004a46a8  47 0f a0 e3                                      mov r0, #0x11c
004a46ac  90 32 20 e0                                      mla r0, r0, r2, r3
004a46b0  00 00 53 e1                                      cmp r3, r0
004a46b4  01 00 00 1a                                      bne #0x4a46c0
004a46b8  09 00 00 ea                                      b #0x4a46e4
004a46bc  04 00 a0 e1                                      mov r0, r4
004a46c0  47 4f 40 e2                                      sub r4, r0, #0x11c
004a46c4  1c 31 10 e5                                      ldr r3, [r0, #-0x11c]
004a46c8  04 00 a0 e1                                      mov r0, r4
004a46cc  0f e0 a0 e1                                      mov lr, pc
004a46d0  00 f0 93 e5                                      ldr pc, [r3]
004a46d4  07 30 95 e7                                      ldr r3, [r5, r7]
004a46d8  00 00 93 e5                                      ldr r0, [r3]
004a46dc  04 00 50 e1                                      cmp r0, r4
004a46e0  f5 ff ff 1a                                      bne #0x4a46bc
004a46e4  08 00 40 e2                                      sub r0, r0, #8
004a46e8  54 af f9 eb                                      bl #0x310440
004a46ec  07 30 95 e7                                      ldr r3, [r5, r7]
004a46f0  00 20 a0 e3                                      mov r2, #0
004a46f4  00 20 83 e5                                      str r2, [r3]
004a46f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a46fc  60 04 4f 00 c8 46 00 00 24 44 00 00              .byte 0x60, 0x04, 0x4f, 0x00, 0xc8, 0x46, 0x00, 0x00, 0x24, 0x44, 0x00, 0x00

; FUNCTION 0x004b1928, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::v2Quests
; alias: _ZN6Arrays8v2Quests9readNamesEP11IStreamBase
; demangled: Arrays::v2Quests::readNames(IStreamBase*)
; decoder-mode: arm
004b1928  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b192c  00 70 a0 e1                                      mov r7, r0
004b1930  1c d0 4d e2                                      sub sp, sp, #0x1c
004b1934  13 cb ff eb                                      bl #0x4a4588
004b1938  07 00 a0 e1                                      mov r0, r7
004b193c  53 88 f9 eb                                      bl #0x313a90
004b1940  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b1944  01 30 a0 e3                                      mov r3, #1
004b1948  00 00 53 e3                                      cmp r3, #0
004b194c  06 60 8f e0                                      add r6, pc, r6
004b1950  14 00 8d e5                                      str r0, [sp, #0x14]
004b1954  0c 30 8d e5                                      str r3, [sp, #0xc]
004b1958  12 00 00 1a                                      bne #0x4b19a8
004b195c  14 30 8d e2                                      add r3, sp, #0x14
004b1960  02 20 83 e2                                      add r2, r3, #2
004b1964  01 30 83 e2                                      add r3, r3, #1
004b1968  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b196c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1970  03 00 52 e1                                      cmp r2, r3
004b1974  02 40 a0 e1                                      mov r4, r2
004b1978  01 10 20 e0                                      eor r1, r0, r1
004b197c  01 10 43 e5                                      strb r1, [r3, #-1]
004b1980  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1984  00 10 21 e0                                      eor r1, r1, r0
004b1988  01 10 c2 e5                                      strb r1, [r2, #1]
004b198c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1990  01 20 42 e2                                      sub r2, r2, #1
004b1994  00 10 21 e0                                      eor r1, r1, r0
004b1998  01 10 43 e5                                      strb r1, [r3, #-1]
004b199c  01 30 83 e2                                      add r3, r3, #1
004b19a0  f0 ff ff 8a                                      bhi #0x4b1968
004b19a4  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b19a8  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b19ac  03 30 96 e7                                      ldr r3, [r6, r3]
004b19b0  00 30 93 e5                                      ldr r3, [r3]
004b19b4  00 00 53 e1                                      cmp r3, r0
004b19b8  01 00 00 0a                                      beq #0x4b19c4
004b19bc  1c d0 8d e2                                      add sp, sp, #0x1c
004b19c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b19c4  00 01 a0 e1                                      lsl r0, r0, #2
004b19c8  01 10 a0 e3                                      mov r1, #1
004b19cc  e6 7a f9 eb                                      bl #0x31056c
004b19d0  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b19d4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b19d8  09 30 96 e7                                      ldr r3, [r6, sb]
004b19dc  00 00 52 e3                                      cmp r2, #0
004b19e0  00 00 83 e5                                      str r0, [r3]
004b19e4  f4 ff ff 0a                                      beq #0x4b19bc
004b19e8  10 a0 8d e2                                      add sl, sp, #0x10
004b19ec  01 80 a0 e3                                      mov r8, #1
004b19f0  08 10 8a e0                                      add r1, sl, r8
004b19f4  02 30 8a e2                                      add r3, sl, #2
004b19f8  00 40 a0 e3                                      mov r4, #0
004b19fc  0a 00 8d e8                                      stm sp, {r1, r3}
004b1a00  07 00 a0 e1                                      mov r0, r7
004b1a04  0a 10 a0 e1                                      mov r1, sl
004b1a08  e4 b5 fc eb                                      bl #0x3df1a0
004b1a0c  00 00 58 e3                                      cmp r8, #0
004b1a10  0c 80 8d e5                                      str r8, [sp, #0xc]
004b1a14  0f 00 00 1a                                      bne #0x4b1a58
004b1a18  00 30 9d e5                                      ldr r3, [sp]
004b1a1c  04 20 9d e5                                      ldr r2, [sp, #4]
004b1a20  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1a24  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b1a28  03 00 52 e1                                      cmp r2, r3
004b1a2c  01 10 20 e0                                      eor r1, r0, r1
004b1a30  01 10 43 e5                                      strb r1, [r3, #-1]
004b1a34  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b1a38  00 10 21 e0                                      eor r1, r1, r0
004b1a3c  01 10 c2 e5                                      strb r1, [r2, #1]
004b1a40  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b1a44  01 20 42 e2                                      sub r2, r2, #1
004b1a48  00 10 21 e0                                      eor r1, r1, r0
004b1a4c  01 10 43 e5                                      strb r1, [r3, #-1]
004b1a50  01 30 83 e2                                      add r3, r3, #1
004b1a54  f1 ff ff 8a                                      bhi #0x4b1a20
004b1a58  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b1a5c  09 50 96 e7                                      ldr r5, [r6, sb]
004b1a60  01 10 a0 e3                                      mov r1, #1
004b1a64  01 00 80 e0                                      add r0, r0, r1
004b1a68  00 b0 95 e5                                      ldr fp, [r5]
004b1a6c  be 7a f9 eb                                      bl #0x31056c
004b1a70  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b1a74  00 30 95 e5                                      ldr r3, [r5]
004b1a78  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b1a7c  07 00 a0 e1                                      mov r0, r7
004b1a80  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b1a84  00 30 a0 e3                                      mov r3, #0
004b1a88  71 96 f9 eb                                      bl #0x317454
004b1a8c  00 30 95 e5                                      ldr r3, [r5]
004b1a90  00 10 a0 e3                                      mov r1, #0
004b1a94  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b1a98  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b1a9c  01 40 84 e2                                      add r4, r4, #1
004b1aa0  03 10 c2 e7                                      strb r1, [r2, r3]
004b1aa4  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b1aa8  04 00 53 e1                                      cmp r3, r4
004b1aac  d3 ff ff 8a                                      bhi #0x4b1a00
004b1ab0  c1 ff ff ea                                      b #0x4b19bc
; mapping-symbol data/literal pool
004b1ab4  44 31 4e 00 24 44 00 00 cc 20 00 00              .byte 0x44, 0x31, 0x4e, 0x00, 0x24, 0x44, 0x00, 0x00, 0xcc, 0x20, 0x00, 0x00

; FUNCTION 0x004b8acc, declared_size=464, range_size=464, mode=arm
; class-group: Arrays::v2Quests
; alias: _ZN6Arrays8v2Quests4readEP11IStreamBase
; demangled: Arrays::v2Quests::read(IStreamBase*)
; decoder-mode: arm
004b8acc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b8ad0  0c d0 4d e2                                      sub sp, sp, #0xc
004b8ad4  00 a0 a0 e1                                      mov sl, r0
004b8ad8  ec 6b f9 eb                                      bl #0x313a90
004b8adc  a0 61 9f e5                                      ldr r6, [pc, #0x1a0]
004b8ae0  01 30 a0 e3                                      mov r3, #1
004b8ae4  00 00 53 e3                                      cmp r3, #0
004b8ae8  04 00 8d e5                                      str r0, [sp, #4]
004b8aec  00 30 8d e5                                      str r3, [sp]
004b8af0  06 60 8f e0                                      add r6, pc, r6
004b8af4  10 00 00 1a                                      bne #0x4b8b3c
004b8af8  04 30 8d e2                                      add r3, sp, #4
004b8afc  02 20 83 e2                                      add r2, r3, #2
004b8b00  01 30 83 e2                                      add r3, r3, #1
004b8b04  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8b08  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b8b0c  03 00 52 e1                                      cmp r2, r3
004b8b10  01 10 20 e0                                      eor r1, r0, r1
004b8b14  01 10 43 e5                                      strb r1, [r3, #-1]
004b8b18  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8b1c  00 10 21 e0                                      eor r1, r1, r0
004b8b20  01 10 c2 e5                                      strb r1, [r2, #1]
004b8b24  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b8b28  01 20 42 e2                                      sub r2, r2, #1
004b8b2c  00 10 21 e0                                      eor r1, r1, r0
004b8b30  01 10 43 e5                                      strb r1, [r3, #-1]
004b8b34  01 30 83 e2                                      add r3, r3, #1
004b8b38  f1 ff ff 8a                                      bhi #0x4b8b04
004b8b3c  b8 ae ff eb                                      bl #0x4a4624
004b8b40  40 71 9f e5                                      ldr r7, [pc, #0x140]
004b8b44  04 40 9d e5                                      ldr r4, [sp, #4]
004b8b48  47 5f a0 e3                                      mov r5, #0x11c
004b8b4c  07 30 96 e7                                      ldr r3, [r6, r7]
004b8b50  95 04 00 e0                                      mul r0, r5, r4
004b8b54  00 40 83 e5                                      str r4, [r3]
004b8b58  08 00 80 e2                                      add r0, r0, #8
004b8b5c  01 10 a0 e3                                      mov r1, #1
004b8b60  81 5e f9 eb                                      bl #0x31056c
004b8b64  00 00 54 e3                                      cmp r4, #0
004b8b68  00 50 80 e5                                      str r5, [r0]
004b8b6c  04 40 80 e5                                      str r4, [r0, #4]
004b8b70  08 30 80 e2                                      add r3, r0, #8
004b8b74  29 00 00 0a                                      beq #0x4b8c20
004b8b78  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
004b8b7c  00 10 a0 e3                                      mov r1, #0
004b8b80  02 80 96 e7                                      ldr r8, [r6, r2]
004b8b84  04 21 9f e5                                      ldr r2, [pc, #0x104]
004b8b88  08 80 88 e2                                      add r8, r8, #8
004b8b8c  02 c0 96 e7                                      ldr ip, [r6, r2]
004b8b90  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
004b8b94  08 c0 8c e2                                      add ip, ip, #8
004b8b98  02 50 96 e7                                      ldr r5, [r6, r2]
004b8b9c  01 20 a0 e1                                      mov r2, r1
004b8ba0  08 50 85 e2                                      add r5, r5, #8
004b8ba4  01 10 81 e2                                      add r1, r1, #1
004b8ba8  04 00 51 e1                                      cmp r1, r4
004b8bac  08 80 80 e5                                      str r8, [r0, #8]
004b8bb0  20 20 80 e5                                      str r2, [r0, #0x20]
004b8bb4  28 20 80 e5                                      str r2, [r0, #0x28]
004b8bb8  30 20 80 e5                                      str r2, [r0, #0x30]
004b8bbc  38 20 80 e5                                      str r2, [r0, #0x38]
004b8bc0  40 20 80 e5                                      str r2, [r0, #0x40]
004b8bc4  44 c0 80 e5                                      str ip, [r0, #0x44]
004b8bc8  58 20 80 e5                                      str r2, [r0, #0x58]
004b8bcc  60 20 80 e5                                      str r2, [r0, #0x60]
004b8bd0  70 c0 80 e5                                      str ip, [r0, #0x70]
004b8bd4  84 20 80 e5                                      str r2, [r0, #0x84]
004b8bd8  8c 20 80 e5                                      str r2, [r0, #0x8c]
004b8bdc  a8 50 80 e5                                      str r5, [r0, #0xa8]
004b8be0  b0 20 80 e5                                      str r2, [r0, #0xb0]
004b8be4  b8 20 80 e5                                      str r2, [r0, #0xb8]
004b8be8  c0 20 80 e5                                      str r2, [r0, #0xc0]
004b8bec  c8 20 80 e5                                      str r2, [r0, #0xc8]
004b8bf0  d0 20 80 e5                                      str r2, [r0, #0xd0]
004b8bf4  d8 20 80 e5                                      str r2, [r0, #0xd8]
004b8bf8  e0 20 80 e5                                      str r2, [r0, #0xe0]
004b8bfc  e8 20 80 e5                                      str r2, [r0, #0xe8]
004b8c00  f0 20 80 e5                                      str r2, [r0, #0xf0]
004b8c04  f8 20 80 e5                                      str r2, [r0, #0xf8]
004b8c08  00 21 80 e5                                      str r2, [r0, #0x100]
004b8c0c  08 21 80 e5                                      str r2, [r0, #0x108]
004b8c10  10 21 80 e5                                      str r2, [r0, #0x110]
004b8c14  18 21 80 e5                                      str r2, [r0, #0x118]
004b8c18  47 0f 80 e2                                      add r0, r0, #0x11c
004b8c1c  e0 ff ff 1a                                      bne #0x4b8ba4
004b8c20  07 20 96 e7                                      ldr r2, [r6, r7]
004b8c24  6c 80 9f e5                                      ldr r8, [pc, #0x6c]
004b8c28  00 10 92 e5                                      ldr r1, [r2]
004b8c2c  08 20 96 e7                                      ldr r2, [r6, r8]
004b8c30  00 00 51 e3                                      cmp r1, #0
004b8c34  00 30 82 e5                                      str r3, [r2]
004b8c38  0f 00 00 0a                                      beq #0x4b8c7c
004b8c3c  00 40 a0 e3                                      mov r4, #0
004b8c40  04 50 a0 e1                                      mov r5, r4
004b8c44  01 00 00 ea                                      b #0x4b8c50
004b8c48  08 30 96 e7                                      ldr r3, [r6, r8]
004b8c4c  00 30 93 e5                                      ldr r3, [r3]
004b8c50  04 00 83 e0                                      add r0, r3, r4
004b8c54  0a 10 a0 e1                                      mov r1, sl
004b8c58  04 30 93 e7                                      ldr r3, [r3, r4]
004b8c5c  0f e0 a0 e1                                      mov lr, pc
004b8c60  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b8c64  07 30 96 e7                                      ldr r3, [r6, r7]
004b8c68  01 50 85 e2                                      add r5, r5, #1
004b8c6c  47 4f 84 e2                                      add r4, r4, #0x11c
004b8c70  00 30 93 e5                                      ldr r3, [r3]
004b8c74  05 00 53 e1                                      cmp r3, r5
004b8c78  f2 ff ff 8a                                      bhi #0x4b8c48
004b8c7c  0c d0 8d e2                                      add sp, sp, #0xc
004b8c80  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b8c84  a0 bf 4d 00 24 44 00 00 68 15 00 00 28 1e 00 00  .byte 0xa0, 0xbf, 0x4d, 0x00, 0x24, 0x44, 0x00, 0x00, 0x68, 0x15, 0x00, 0x00, 0x28, 0x1e, 0x00, 0x00
004b8c94  38 36 00 00 c8 46 00 00                          .byte 0x38, 0x36, 0x00, 0x00, 0xc8, 0x46, 0x00, 0x00
