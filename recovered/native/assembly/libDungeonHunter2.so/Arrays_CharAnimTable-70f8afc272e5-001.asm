; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a9a9c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::CharAnimTable
; alias: _ZN6Arrays13CharAnimTable13finalizeNamesEv
; demangled: Arrays::CharAnimTable::finalizeNames()
; decoder-mode: arm
004a9a9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a9aa0  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a9aa4  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a9aa8  05 50 8f e0                                      add r5, pc, r5
004a9aac  06 30 95 e7                                      ldr r3, [r5, r6]
004a9ab0  00 30 93 e5                                      ldr r3, [r3]
004a9ab4  00 00 53 e3                                      cmp r3, #0
004a9ab8  1a 00 00 0a                                      beq #0x4a9b28
004a9abc  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a9ac0  07 20 95 e7                                      ldr r2, [r5, r7]
004a9ac4  00 20 92 e5                                      ldr r2, [r2]
004a9ac8  00 00 52 e3                                      cmp r2, #0
004a9acc  10 00 00 0a                                      beq #0x4a9b14
004a9ad0  00 40 a0 e3                                      mov r4, #0
004a9ad4  01 00 00 ea                                      b #0x4a9ae0
004a9ad8  06 30 95 e7                                      ldr r3, [r5, r6]
004a9adc  00 30 93 e5                                      ldr r3, [r3]
004a9ae0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a9ae4  01 40 84 e2                                      add r4, r4, #1
004a9ae8  00 00 50 e3                                      cmp r0, #0
004a9aec  02 00 00 0a                                      beq #0x4a9afc
004a9af0  52 9a f9 eb                                      bl #0x310440
004a9af4  06 30 95 e7                                      ldr r3, [r5, r6]
004a9af8  00 30 93 e5                                      ldr r3, [r3]
004a9afc  07 20 95 e7                                      ldr r2, [r5, r7]
004a9b00  00 20 92 e5                                      ldr r2, [r2]
004a9b04  04 00 52 e1                                      cmp r2, r4
004a9b08  f2 ff ff 8a                                      bhi #0x4a9ad8
004a9b0c  00 00 53 e3                                      cmp r3, #0
004a9b10  01 00 00 0a                                      beq #0x4a9b1c
004a9b14  03 00 a0 e1                                      mov r0, r3
004a9b18  48 9a f9 eb                                      bl #0x310440
004a9b1c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9b20  00 20 a0 e3                                      mov r2, #0
004a9b24  00 20 83 e5                                      str r2, [r3]
004a9b28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9b2c  e8 af 4e 00 08 0d 00 00 c0 28 00 00              .byte 0xe8, 0xaf, 0x4e, 0x00, 0x08, 0x0d, 0x00, 0x00, 0xc0, 0x28, 0x00, 0x00

; FUNCTION 0x004a9b38, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::CharAnimTable
; alias: _ZN6Arrays13CharAnimTable8finalizeEv
; demangled: Arrays::CharAnimTable::finalize()
; decoder-mode: arm
004a9b38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a9b3c  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a9b40  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a9b44  05 50 8f e0                                      add r5, pc, r5
004a9b48  07 30 95 e7                                      ldr r3, [r5, r7]
004a9b4c  00 30 93 e5                                      ldr r3, [r3]
004a9b50  00 00 53 e3                                      cmp r3, #0
004a9b54  2c 00 00 0a                                      beq #0x4a9c0c
004a9b58  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a9b5c  08 20 95 e7                                      ldr r2, [r5, r8]
004a9b60  00 20 92 e5                                      ldr r2, [r2]
004a9b64  00 00 52 e3                                      cmp r2, #0
004a9b68  12 00 00 0a                                      beq #0x4a9bb8
004a9b6c  00 40 a0 e3                                      mov r4, #0
004a9b70  04 60 a0 e1                                      mov r6, r4
004a9b74  01 00 00 ea                                      b #0x4a9b80
004a9b78  07 30 95 e7                                      ldr r3, [r5, r7]
004a9b7c  00 30 93 e5                                      ldr r3, [r3]
004a9b80  04 00 83 e0                                      add r0, r3, r4
004a9b84  04 30 93 e7                                      ldr r3, [r3, r4]
004a9b88  0f e0 a0 e1                                      mov lr, pc
004a9b8c  08 f0 93 e5                                      ldr pc, [r3, #8]
004a9b90  08 30 95 e7                                      ldr r3, [r5, r8]
004a9b94  01 60 86 e2                                      add r6, r6, #1
004a9b98  a0 40 84 e2                                      add r4, r4, #0xa0
004a9b9c  00 30 93 e5                                      ldr r3, [r3]
004a9ba0  06 00 53 e1                                      cmp r3, r6
004a9ba4  f3 ff ff 8a                                      bhi #0x4a9b78
004a9ba8  07 30 95 e7                                      ldr r3, [r5, r7]
004a9bac  00 30 93 e5                                      ldr r3, [r3]
004a9bb0  00 00 53 e3                                      cmp r3, #0
004a9bb4  11 00 00 0a                                      beq #0x4a9c00
004a9bb8  04 20 13 e5                                      ldr r2, [r3, #-4]
004a9bbc  a0 00 a0 e3                                      mov r0, #0xa0
004a9bc0  90 32 20 e0                                      mla r0, r0, r2, r3
004a9bc4  00 00 53 e1                                      cmp r3, r0
004a9bc8  01 00 00 1a                                      bne #0x4a9bd4
004a9bcc  09 00 00 ea                                      b #0x4a9bf8
004a9bd0  04 00 a0 e1                                      mov r0, r4
004a9bd4  a0 40 40 e2                                      sub r4, r0, #0xa0
004a9bd8  a0 30 10 e5                                      ldr r3, [r0, #-0xa0]
004a9bdc  04 00 a0 e1                                      mov r0, r4
004a9be0  0f e0 a0 e1                                      mov lr, pc
004a9be4  00 f0 93 e5                                      ldr pc, [r3]
004a9be8  07 30 95 e7                                      ldr r3, [r5, r7]
004a9bec  00 00 93 e5                                      ldr r0, [r3]
004a9bf0  04 00 50 e1                                      cmp r0, r4
004a9bf4  f5 ff ff 1a                                      bne #0x4a9bd0
004a9bf8  08 00 40 e2                                      sub r0, r0, #8
004a9bfc  0f 9a f9 eb                                      bl #0x310440
004a9c00  07 30 95 e7                                      ldr r3, [r5, r7]
004a9c04  00 20 a0 e3                                      mov r2, #0
004a9c08  00 20 83 e5                                      str r2, [r3]
004a9c0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9c10  4c af 4e 00 44 48 00 00 c0 28 00 00              .byte 0x4c, 0xaf, 0x4e, 0x00, 0x44, 0x48, 0x00, 0x00, 0xc0, 0x28, 0x00, 0x00

; FUNCTION 0x004b45d0, declared_size=340, range_size=340, mode=arm
; class-group: Arrays::CharAnimTable
; alias: _ZN6Arrays13CharAnimTable4readEP11IStreamBase
; demangled: Arrays::CharAnimTable::read(IStreamBase*)
; decoder-mode: arm
004b45d0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b45d4  0c d0 4d e2                                      sub sp, sp, #0xc
004b45d8  00 a0 a0 e1                                      mov sl, r0
004b45dc  2b 7d f9 eb                                      bl #0x313a90
004b45e0  2c 61 9f e5                                      ldr r6, [pc, #0x12c]
004b45e4  01 30 a0 e3                                      mov r3, #1
004b45e8  00 00 53 e3                                      cmp r3, #0
004b45ec  04 00 8d e5                                      str r0, [sp, #4]
004b45f0  00 30 8d e5                                      str r3, [sp]
004b45f4  06 60 8f e0                                      add r6, pc, r6
004b45f8  10 00 00 1a                                      bne #0x4b4640
004b45fc  04 30 8d e2                                      add r3, sp, #4
004b4600  02 20 83 e2                                      add r2, r3, #2
004b4604  01 30 83 e2                                      add r3, r3, #1
004b4608  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b460c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b4610  03 00 52 e1                                      cmp r2, r3
004b4614  01 10 20 e0                                      eor r1, r0, r1
004b4618  01 10 43 e5                                      strb r1, [r3, #-1]
004b461c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4620  00 10 21 e0                                      eor r1, r1, r0
004b4624  01 10 c2 e5                                      strb r1, [r2, #1]
004b4628  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b462c  01 20 42 e2                                      sub r2, r2, #1
004b4630  00 10 21 e0                                      eor r1, r1, r0
004b4634  01 10 43 e5                                      strb r1, [r3, #-1]
004b4638  01 30 83 e2                                      add r3, r3, #1
004b463c  f1 ff ff 8a                                      bhi #0x4b4608
004b4640  3c d5 ff eb                                      bl #0x4a9b38
004b4644  04 40 9d e5                                      ldr r4, [sp, #4]
004b4648  c8 70 9f e5                                      ldr r7, [pc, #0xc8]
004b464c  14 00 a0 e3                                      mov r0, #0x14
004b4650  90 04 00 e0                                      mul r0, r0, r4
004b4654  07 30 96 e7                                      ldr r3, [r6, r7]
004b4658  01 00 80 e2                                      add r0, r0, #1
004b465c  80 01 a0 e1                                      lsl r0, r0, #3
004b4660  00 40 83 e5                                      str r4, [r3]
004b4664  01 10 a0 e3                                      mov r1, #1
004b4668  bf 6f f9 eb                                      bl #0x31056c
004b466c  a0 30 a0 e3                                      mov r3, #0xa0
004b4670  00 00 54 e3                                      cmp r4, #0
004b4674  18 00 80 e8                                      stm r0, {r3, r4}
004b4678  08 30 80 e2                                      add r3, r0, #8
004b467c  0b 00 00 0a                                      beq #0x4b46b0
004b4680  94 10 9f e5                                      ldr r1, [pc, #0x94]
004b4684  00 20 a0 e3                                      mov r2, #0
004b4688  01 c0 96 e7                                      ldr ip, [r6, r1]
004b468c  02 10 a0 e1                                      mov r1, r2
004b4690  08 c0 8c e2                                      add ip, ip, #8
004b4694  01 20 82 e2                                      add r2, r2, #1
004b4698  04 00 52 e1                                      cmp r2, r4
004b469c  08 c0 80 e5                                      str ip, [r0, #8]
004b46a0  4c 10 80 e5                                      str r1, [r0, #0x4c]
004b46a4  90 10 80 e5                                      str r1, [r0, #0x90]
004b46a8  a0 00 80 e2                                      add r0, r0, #0xa0
004b46ac  f8 ff ff 1a                                      bne #0x4b4694
004b46b0  07 20 96 e7                                      ldr r2, [r6, r7]
004b46b4  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b46b8  00 10 92 e5                                      ldr r1, [r2]
004b46bc  08 20 96 e7                                      ldr r2, [r6, r8]
004b46c0  00 00 51 e3                                      cmp r1, #0
004b46c4  00 30 82 e5                                      str r3, [r2]
004b46c8  0f 00 00 0a                                      beq #0x4b470c
004b46cc  00 40 a0 e3                                      mov r4, #0
004b46d0  04 50 a0 e1                                      mov r5, r4
004b46d4  01 00 00 ea                                      b #0x4b46e0
004b46d8  08 30 96 e7                                      ldr r3, [r6, r8]
004b46dc  00 30 93 e5                                      ldr r3, [r3]
004b46e0  04 00 83 e0                                      add r0, r3, r4
004b46e4  0a 10 a0 e1                                      mov r1, sl
004b46e8  04 30 93 e7                                      ldr r3, [r3, r4]
004b46ec  0f e0 a0 e1                                      mov lr, pc
004b46f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b46f4  07 30 96 e7                                      ldr r3, [r6, r7]
004b46f8  01 50 85 e2                                      add r5, r5, #1
004b46fc  a0 40 84 e2                                      add r4, r4, #0xa0
004b4700  00 30 93 e5                                      ldr r3, [r3]
004b4704  05 00 53 e1                                      cmp r3, r5
004b4708  f2 ff ff 8a                                      bhi #0x4b46d8
004b470c  0c d0 8d e2                                      add sp, sp, #0xc
004b4710  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b4714  9c 04 4e 00 c0 28 00 00 64 45 00 00 44 48 00 00  .byte 0x9c, 0x04, 0x4e, 0x00, 0xc0, 0x28, 0x00, 0x00, 0x64, 0x45, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00

; FUNCTION 0x004b8174, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::CharAnimTable
; alias: _ZN6Arrays13CharAnimTable9readNamesEP11IStreamBase
; demangled: Arrays::CharAnimTable::readNames(IStreamBase*)
; decoder-mode: arm
004b8174  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b8178  00 70 a0 e1                                      mov r7, r0
004b817c  1c d0 4d e2                                      sub sp, sp, #0x1c
004b8180  45 c6 ff eb                                      bl #0x4a9a9c
004b8184  07 00 a0 e1                                      mov r0, r7
004b8188  40 6e f9 eb                                      bl #0x313a90
004b818c  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b8190  01 30 a0 e3                                      mov r3, #1
004b8194  00 00 53 e3                                      cmp r3, #0
004b8198  06 60 8f e0                                      add r6, pc, r6
004b819c  14 00 8d e5                                      str r0, [sp, #0x14]
004b81a0  0c 30 8d e5                                      str r3, [sp, #0xc]
004b81a4  12 00 00 1a                                      bne #0x4b81f4
004b81a8  14 30 8d e2                                      add r3, sp, #0x14
004b81ac  02 20 83 e2                                      add r2, r3, #2
004b81b0  01 30 83 e2                                      add r3, r3, #1
004b81b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b81b8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b81bc  03 00 52 e1                                      cmp r2, r3
004b81c0  02 40 a0 e1                                      mov r4, r2
004b81c4  01 10 20 e0                                      eor r1, r0, r1
004b81c8  01 10 43 e5                                      strb r1, [r3, #-1]
004b81cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b81d0  00 10 21 e0                                      eor r1, r1, r0
004b81d4  01 10 c2 e5                                      strb r1, [r2, #1]
004b81d8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b81dc  01 20 42 e2                                      sub r2, r2, #1
004b81e0  00 10 21 e0                                      eor r1, r1, r0
004b81e4  01 10 43 e5                                      strb r1, [r3, #-1]
004b81e8  01 30 83 e2                                      add r3, r3, #1
004b81ec  f0 ff ff 8a                                      bhi #0x4b81b4
004b81f0  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b81f4  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b81f8  03 30 96 e7                                      ldr r3, [r6, r3]
004b81fc  00 30 93 e5                                      ldr r3, [r3]
004b8200  00 00 53 e1                                      cmp r3, r0
004b8204  01 00 00 0a                                      beq #0x4b8210
004b8208  1c d0 8d e2                                      add sp, sp, #0x1c
004b820c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b8210  00 01 a0 e1                                      lsl r0, r0, #2
004b8214  01 10 a0 e3                                      mov r1, #1
004b8218  d3 60 f9 eb                                      bl #0x31056c
004b821c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b8220  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b8224  09 30 96 e7                                      ldr r3, [r6, sb]
004b8228  00 00 52 e3                                      cmp r2, #0
004b822c  00 00 83 e5                                      str r0, [r3]
004b8230  f4 ff ff 0a                                      beq #0x4b8208
004b8234  10 a0 8d e2                                      add sl, sp, #0x10
004b8238  01 80 a0 e3                                      mov r8, #1
004b823c  08 10 8a e0                                      add r1, sl, r8
004b8240  02 30 8a e2                                      add r3, sl, #2
004b8244  00 40 a0 e3                                      mov r4, #0
004b8248  0a 00 8d e8                                      stm sp, {r1, r3}
004b824c  07 00 a0 e1                                      mov r0, r7
004b8250  0a 10 a0 e1                                      mov r1, sl
004b8254  d1 9b fc eb                                      bl #0x3df1a0
004b8258  00 00 58 e3                                      cmp r8, #0
004b825c  0c 80 8d e5                                      str r8, [sp, #0xc]
004b8260  0f 00 00 1a                                      bne #0x4b82a4
004b8264  00 30 9d e5                                      ldr r3, [sp]
004b8268  04 20 9d e5                                      ldr r2, [sp, #4]
004b826c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8270  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b8274  03 00 52 e1                                      cmp r2, r3
004b8278  01 10 20 e0                                      eor r1, r0, r1
004b827c  01 10 43 e5                                      strb r1, [r3, #-1]
004b8280  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8284  00 10 21 e0                                      eor r1, r1, r0
004b8288  01 10 c2 e5                                      strb r1, [r2, #1]
004b828c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b8290  01 20 42 e2                                      sub r2, r2, #1
004b8294  00 10 21 e0                                      eor r1, r1, r0
004b8298  01 10 43 e5                                      strb r1, [r3, #-1]
004b829c  01 30 83 e2                                      add r3, r3, #1
004b82a0  f1 ff ff 8a                                      bhi #0x4b826c
004b82a4  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b82a8  09 50 96 e7                                      ldr r5, [r6, sb]
004b82ac  01 10 a0 e3                                      mov r1, #1
004b82b0  01 00 80 e0                                      add r0, r0, r1
004b82b4  00 b0 95 e5                                      ldr fp, [r5]
004b82b8  ab 60 f9 eb                                      bl #0x31056c
004b82bc  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b82c0  00 30 95 e5                                      ldr r3, [r5]
004b82c4  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b82c8  07 00 a0 e1                                      mov r0, r7
004b82cc  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b82d0  00 30 a0 e3                                      mov r3, #0
004b82d4  5e 7c f9 eb                                      bl #0x317454
004b82d8  00 30 95 e5                                      ldr r3, [r5]
004b82dc  00 10 a0 e3                                      mov r1, #0
004b82e0  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b82e4  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b82e8  01 40 84 e2                                      add r4, r4, #1
004b82ec  03 10 c2 e7                                      strb r1, [r2, r3]
004b82f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b82f4  04 00 53 e1                                      cmp r3, r4
004b82f8  d3 ff ff 8a                                      bhi #0x4b824c
004b82fc  c1 ff ff ea                                      b #0x4b8208
; mapping-symbol data/literal pool
004b8300  f8 c8 4d 00 c0 28 00 00 08 0d 00 00              .byte 0xf8, 0xc8, 0x4d, 0x00, 0xc0, 0x28, 0x00, 0x00, 0x08, 0x0d, 0x00, 0x00
