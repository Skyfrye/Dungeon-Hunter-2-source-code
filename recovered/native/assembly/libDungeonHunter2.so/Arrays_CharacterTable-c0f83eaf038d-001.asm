; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a979c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::CharacterTable
; alias: _ZN6Arrays14CharacterTable13finalizeNamesEv
; demangled: Arrays::CharacterTable::finalizeNames()
; decoder-mode: arm
004a979c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a97a0  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a97a4  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a97a8  05 50 8f e0                                      add r5, pc, r5
004a97ac  06 30 95 e7                                      ldr r3, [r5, r6]
004a97b0  00 30 93 e5                                      ldr r3, [r3]
004a97b4  00 00 53 e3                                      cmp r3, #0
004a97b8  1a 00 00 0a                                      beq #0x4a9828
004a97bc  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a97c0  07 20 95 e7                                      ldr r2, [r5, r7]
004a97c4  00 20 92 e5                                      ldr r2, [r2]
004a97c8  00 00 52 e3                                      cmp r2, #0
004a97cc  10 00 00 0a                                      beq #0x4a9814
004a97d0  00 40 a0 e3                                      mov r4, #0
004a97d4  01 00 00 ea                                      b #0x4a97e0
004a97d8  06 30 95 e7                                      ldr r3, [r5, r6]
004a97dc  00 30 93 e5                                      ldr r3, [r3]
004a97e0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a97e4  01 40 84 e2                                      add r4, r4, #1
004a97e8  00 00 50 e3                                      cmp r0, #0
004a97ec  02 00 00 0a                                      beq #0x4a97fc
004a97f0  12 9b f9 eb                                      bl #0x310440
004a97f4  06 30 95 e7                                      ldr r3, [r5, r6]
004a97f8  00 30 93 e5                                      ldr r3, [r3]
004a97fc  07 20 95 e7                                      ldr r2, [r5, r7]
004a9800  00 20 92 e5                                      ldr r2, [r2]
004a9804  04 00 52 e1                                      cmp r2, r4
004a9808  f2 ff ff 8a                                      bhi #0x4a97d8
004a980c  00 00 53 e3                                      cmp r3, #0
004a9810  01 00 00 0a                                      beq #0x4a981c
004a9814  03 00 a0 e1                                      mov r0, r3
004a9818  08 9b f9 eb                                      bl #0x310440
004a981c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9820  00 20 a0 e3                                      mov r2, #0
004a9824  00 20 83 e5                                      str r2, [r3]
004a9828  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a982c  e8 b2 4e 00 08 3c 00 00 04 42 00 00              .byte 0xe8, 0xb2, 0x4e, 0x00, 0x08, 0x3c, 0x00, 0x00, 0x04, 0x42, 0x00, 0x00

; FUNCTION 0x004a9838, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::CharacterTable
; alias: _ZN6Arrays14CharacterTable8finalizeEv
; demangled: Arrays::CharacterTable::finalize()
; decoder-mode: arm
004a9838  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a983c  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a9840  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a9844  05 50 8f e0                                      add r5, pc, r5
004a9848  07 30 95 e7                                      ldr r3, [r5, r7]
004a984c  00 30 93 e5                                      ldr r3, [r3]
004a9850  00 00 53 e3                                      cmp r3, #0
004a9854  2c 00 00 0a                                      beq #0x4a990c
004a9858  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a985c  08 20 95 e7                                      ldr r2, [r5, r8]
004a9860  00 20 92 e5                                      ldr r2, [r2]
004a9864  00 00 52 e3                                      cmp r2, #0
004a9868  12 00 00 0a                                      beq #0x4a98b8
004a986c  00 40 a0 e3                                      mov r4, #0
004a9870  04 60 a0 e1                                      mov r6, r4
004a9874  01 00 00 ea                                      b #0x4a9880
004a9878  07 30 95 e7                                      ldr r3, [r5, r7]
004a987c  00 30 93 e5                                      ldr r3, [r3]
004a9880  04 00 83 e0                                      add r0, r3, r4
004a9884  04 30 93 e7                                      ldr r3, [r3, r4]
004a9888  0f e0 a0 e1                                      mov lr, pc
004a988c  08 f0 93 e5                                      ldr pc, [r3, #8]
004a9890  08 30 95 e7                                      ldr r3, [r5, r8]
004a9894  01 60 86 e2                                      add r6, r6, #1
004a9898  e1 4f 84 e2                                      add r4, r4, #0x384
004a989c  00 30 93 e5                                      ldr r3, [r3]
004a98a0  06 00 53 e1                                      cmp r3, r6
004a98a4  f3 ff ff 8a                                      bhi #0x4a9878
004a98a8  07 30 95 e7                                      ldr r3, [r5, r7]
004a98ac  00 30 93 e5                                      ldr r3, [r3]
004a98b0  00 00 53 e3                                      cmp r3, #0
004a98b4  11 00 00 0a                                      beq #0x4a9900
004a98b8  04 20 13 e5                                      ldr r2, [r3, #-4]
004a98bc  e1 0f a0 e3                                      mov r0, #0x384
004a98c0  90 32 20 e0                                      mla r0, r0, r2, r3
004a98c4  00 00 53 e1                                      cmp r3, r0
004a98c8  01 00 00 1a                                      bne #0x4a98d4
004a98cc  09 00 00 ea                                      b #0x4a98f8
004a98d0  04 00 a0 e1                                      mov r0, r4
004a98d4  e1 4f 40 e2                                      sub r4, r0, #0x384
004a98d8  84 33 10 e5                                      ldr r3, [r0, #-0x384]
004a98dc  04 00 a0 e1                                      mov r0, r4
004a98e0  0f e0 a0 e1                                      mov lr, pc
004a98e4  00 f0 93 e5                                      ldr pc, [r3]
004a98e8  07 30 95 e7                                      ldr r3, [r5, r7]
004a98ec  00 00 93 e5                                      ldr r0, [r3]
004a98f0  04 00 50 e1                                      cmp r0, r4
004a98f4  f5 ff ff 1a                                      bne #0x4a98d0
004a98f8  08 00 40 e2                                      sub r0, r0, #8
004a98fc  cf 9a f9 eb                                      bl #0x310440
004a9900  07 30 95 e7                                      ldr r3, [r5, r7]
004a9904  00 20 a0 e3                                      mov r2, #0
004a9908  00 20 83 e5                                      str r2, [r3]
004a990c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9910  4c b2 4e 00 50 2b 00 00 04 42 00 00              .byte 0x4c, 0xb2, 0x4e, 0x00, 0x50, 0x2b, 0x00, 0x00, 0x04, 0x42, 0x00, 0x00

; FUNCTION 0x004b4340, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::CharacterTable
; alias: _ZN6Arrays14CharacterTable4readEP11IStreamBase
; demangled: Arrays::CharacterTable::read(IStreamBase*)
; decoder-mode: arm
004b4340  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b4344  0c d0 4d e2                                      sub sp, sp, #0xc
004b4348  00 a0 a0 e1                                      mov sl, r0
004b434c  cf 7d f9 eb                                      bl #0x313a90
004b4350  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004b4354  01 30 a0 e3                                      mov r3, #1
004b4358  00 00 53 e3                                      cmp r3, #0
004b435c  04 00 8d e5                                      str r0, [sp, #4]
004b4360  00 30 8d e5                                      str r3, [sp]
004b4364  06 60 8f e0                                      add r6, pc, r6
004b4368  10 00 00 1a                                      bne #0x4b43b0
004b436c  04 30 8d e2                                      add r3, sp, #4
004b4370  02 20 83 e2                                      add r2, r3, #2
004b4374  01 30 83 e2                                      add r3, r3, #1
004b4378  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b437c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b4380  03 00 52 e1                                      cmp r2, r3
004b4384  01 10 20 e0                                      eor r1, r0, r1
004b4388  01 10 43 e5                                      strb r1, [r3, #-1]
004b438c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4390  00 10 21 e0                                      eor r1, r1, r0
004b4394  01 10 c2 e5                                      strb r1, [r2, #1]
004b4398  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b439c  01 20 42 e2                                      sub r2, r2, #1
004b43a0  00 10 21 e0                                      eor r1, r1, r0
004b43a4  01 10 43 e5                                      strb r1, [r3, #-1]
004b43a8  01 30 83 e2                                      add r3, r3, #1
004b43ac  f1 ff ff 8a                                      bhi #0x4b4378
004b43b0  20 d5 ff eb                                      bl #0x4a9838
004b43b4  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
004b43b8  04 40 9d e5                                      ldr r4, [sp, #4]
004b43bc  e1 5f a0 e3                                      mov r5, #0x384
004b43c0  07 30 96 e7                                      ldr r3, [r6, r7]
004b43c4  95 04 00 e0                                      mul r0, r5, r4
004b43c8  00 40 83 e5                                      str r4, [r3]
004b43cc  08 00 80 e2                                      add r0, r0, #8
004b43d0  01 10 a0 e3                                      mov r1, #1
004b43d4  64 70 f9 eb                                      bl #0x31056c
004b43d8  00 00 54 e3                                      cmp r4, #0
004b43dc  00 50 80 e5                                      str r5, [r0]
004b43e0  04 40 80 e5                                      str r4, [r0, #4]
004b43e4  08 30 80 e2                                      add r3, r0, #8
004b43e8  08 00 00 0a                                      beq #0x4b4410
004b43ec  88 10 9f e5                                      ldr r1, [pc, #0x88]
004b43f0  00 20 a0 e3                                      mov r2, #0
004b43f4  01 10 96 e7                                      ldr r1, [r6, r1]
004b43f8  08 10 81 e2                                      add r1, r1, #8
004b43fc  01 20 82 e2                                      add r2, r2, #1
004b4400  04 00 52 e1                                      cmp r2, r4
004b4404  08 10 80 e5                                      str r1, [r0, #8]
004b4408  e1 0f 80 e2                                      add r0, r0, #0x384
004b440c  fa ff ff 1a                                      bne #0x4b43fc
004b4410  07 20 96 e7                                      ldr r2, [r6, r7]
004b4414  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b4418  00 10 92 e5                                      ldr r1, [r2]
004b441c  08 20 96 e7                                      ldr r2, [r6, r8]
004b4420  00 00 51 e3                                      cmp r1, #0
004b4424  00 30 82 e5                                      str r3, [r2]
004b4428  0f 00 00 0a                                      beq #0x4b446c
004b442c  00 40 a0 e3                                      mov r4, #0
004b4430  04 50 a0 e1                                      mov r5, r4
004b4434  01 00 00 ea                                      b #0x4b4440
004b4438  08 30 96 e7                                      ldr r3, [r6, r8]
004b443c  00 30 93 e5                                      ldr r3, [r3]
004b4440  04 00 83 e0                                      add r0, r3, r4
004b4444  0a 10 a0 e1                                      mov r1, sl
004b4448  04 30 93 e7                                      ldr r3, [r3, r4]
004b444c  0f e0 a0 e1                                      mov lr, pc
004b4450  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b4454  07 30 96 e7                                      ldr r3, [r6, r7]
004b4458  01 50 85 e2                                      add r5, r5, #1
004b445c  e1 4f 84 e2                                      add r4, r4, #0x384
004b4460  00 30 93 e5                                      ldr r3, [r3]
004b4464  05 00 53 e1                                      cmp r3, r5
004b4468  f2 ff ff 8a                                      bhi #0x4b4438
004b446c  0c d0 8d e2                                      add sp, sp, #0xc
004b4470  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b4474  2c 07 4e 00 04 42 00 00 8c 29 00 00 50 2b 00 00  .byte 0x2c, 0x07, 0x4e, 0x00, 0x04, 0x42, 0x00, 0x00, 0x8c, 0x29, 0x00, 0x00, 0x50, 0x2b, 0x00, 0x00

; FUNCTION 0x004b7e40, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::CharacterTable
; alias: _ZN6Arrays14CharacterTable9readNamesEP11IStreamBase
; demangled: Arrays::CharacterTable::readNames(IStreamBase*)
; decoder-mode: arm
004b7e40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b7e44  00 70 a0 e1                                      mov r7, r0
004b7e48  1c d0 4d e2                                      sub sp, sp, #0x1c
004b7e4c  52 c6 ff eb                                      bl #0x4a979c
004b7e50  07 00 a0 e1                                      mov r0, r7
004b7e54  0d 6f f9 eb                                      bl #0x313a90
004b7e58  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b7e5c  01 30 a0 e3                                      mov r3, #1
004b7e60  00 00 53 e3                                      cmp r3, #0
004b7e64  06 60 8f e0                                      add r6, pc, r6
004b7e68  14 00 8d e5                                      str r0, [sp, #0x14]
004b7e6c  0c 30 8d e5                                      str r3, [sp, #0xc]
004b7e70  12 00 00 1a                                      bne #0x4b7ec0
004b7e74  14 30 8d e2                                      add r3, sp, #0x14
004b7e78  02 20 83 e2                                      add r2, r3, #2
004b7e7c  01 30 83 e2                                      add r3, r3, #1
004b7e80  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7e84  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7e88  03 00 52 e1                                      cmp r2, r3
004b7e8c  02 40 a0 e1                                      mov r4, r2
004b7e90  01 10 20 e0                                      eor r1, r0, r1
004b7e94  01 10 43 e5                                      strb r1, [r3, #-1]
004b7e98  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7e9c  00 10 21 e0                                      eor r1, r1, r0
004b7ea0  01 10 c2 e5                                      strb r1, [r2, #1]
004b7ea4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b7ea8  01 20 42 e2                                      sub r2, r2, #1
004b7eac  00 10 21 e0                                      eor r1, r1, r0
004b7eb0  01 10 43 e5                                      strb r1, [r3, #-1]
004b7eb4  01 30 83 e2                                      add r3, r3, #1
004b7eb8  f0 ff ff 8a                                      bhi #0x4b7e80
004b7ebc  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b7ec0  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b7ec4  03 30 96 e7                                      ldr r3, [r6, r3]
004b7ec8  00 30 93 e5                                      ldr r3, [r3]
004b7ecc  00 00 53 e1                                      cmp r3, r0
004b7ed0  01 00 00 0a                                      beq #0x4b7edc
004b7ed4  1c d0 8d e2                                      add sp, sp, #0x1c
004b7ed8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b7edc  00 01 a0 e1                                      lsl r0, r0, #2
004b7ee0  01 10 a0 e3                                      mov r1, #1
004b7ee4  a0 61 f9 eb                                      bl #0x31056c
004b7ee8  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b7eec  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b7ef0  09 30 96 e7                                      ldr r3, [r6, sb]
004b7ef4  00 00 52 e3                                      cmp r2, #0
004b7ef8  00 00 83 e5                                      str r0, [r3]
004b7efc  f4 ff ff 0a                                      beq #0x4b7ed4
004b7f00  10 a0 8d e2                                      add sl, sp, #0x10
004b7f04  01 80 a0 e3                                      mov r8, #1
004b7f08  08 10 8a e0                                      add r1, sl, r8
004b7f0c  02 30 8a e2                                      add r3, sl, #2
004b7f10  00 40 a0 e3                                      mov r4, #0
004b7f14  0a 00 8d e8                                      stm sp, {r1, r3}
004b7f18  07 00 a0 e1                                      mov r0, r7
004b7f1c  0a 10 a0 e1                                      mov r1, sl
004b7f20  9e 9c fc eb                                      bl #0x3df1a0
004b7f24  00 00 58 e3                                      cmp r8, #0
004b7f28  0c 80 8d e5                                      str r8, [sp, #0xc]
004b7f2c  0f 00 00 1a                                      bne #0x4b7f70
004b7f30  00 30 9d e5                                      ldr r3, [sp]
004b7f34  04 20 9d e5                                      ldr r2, [sp, #4]
004b7f38  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7f3c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b7f40  03 00 52 e1                                      cmp r2, r3
004b7f44  01 10 20 e0                                      eor r1, r0, r1
004b7f48  01 10 43 e5                                      strb r1, [r3, #-1]
004b7f4c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7f50  00 10 21 e0                                      eor r1, r1, r0
004b7f54  01 10 c2 e5                                      strb r1, [r2, #1]
004b7f58  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b7f5c  01 20 42 e2                                      sub r2, r2, #1
004b7f60  00 10 21 e0                                      eor r1, r1, r0
004b7f64  01 10 43 e5                                      strb r1, [r3, #-1]
004b7f68  01 30 83 e2                                      add r3, r3, #1
004b7f6c  f1 ff ff 8a                                      bhi #0x4b7f38
004b7f70  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b7f74  09 50 96 e7                                      ldr r5, [r6, sb]
004b7f78  01 10 a0 e3                                      mov r1, #1
004b7f7c  01 00 80 e0                                      add r0, r0, r1
004b7f80  00 b0 95 e5                                      ldr fp, [r5]
004b7f84  78 61 f9 eb                                      bl #0x31056c
004b7f88  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b7f8c  00 30 95 e5                                      ldr r3, [r5]
004b7f90  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b7f94  07 00 a0 e1                                      mov r0, r7
004b7f98  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b7f9c  00 30 a0 e3                                      mov r3, #0
004b7fa0  2b 7d f9 eb                                      bl #0x317454
004b7fa4  00 30 95 e5                                      ldr r3, [r5]
004b7fa8  00 10 a0 e3                                      mov r1, #0
004b7fac  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b7fb0  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b7fb4  01 40 84 e2                                      add r4, r4, #1
004b7fb8  03 10 c2 e7                                      strb r1, [r2, r3]
004b7fbc  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b7fc0  04 00 53 e1                                      cmp r3, r4
004b7fc4  d3 ff ff 8a                                      bhi #0x4b7f18
004b7fc8  c1 ff ff ea                                      b #0x4b7ed4
; mapping-symbol data/literal pool
004b7fcc  2c cc 4d 00 04 42 00 00 08 3c 00 00              .byte 0x2c, 0xcc, 0x4d, 0x00, 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00
