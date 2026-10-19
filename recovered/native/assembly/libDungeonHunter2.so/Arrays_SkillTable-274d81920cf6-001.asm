; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a5464, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::SkillTable
; alias: _ZN6Arrays10SkillTable13finalizeNamesEv
; demangled: Arrays::SkillTable::finalizeNames()
; decoder-mode: arm
004a5464  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5468  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a546c  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a5470  05 50 8f e0                                      add r5, pc, r5
004a5474  06 30 95 e7                                      ldr r3, [r5, r6]
004a5478  00 30 93 e5                                      ldr r3, [r3]
004a547c  00 00 53 e3                                      cmp r3, #0
004a5480  1a 00 00 0a                                      beq #0x4a54f0
004a5484  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a5488  07 20 95 e7                                      ldr r2, [r5, r7]
004a548c  00 20 92 e5                                      ldr r2, [r2]
004a5490  00 00 52 e3                                      cmp r2, #0
004a5494  10 00 00 0a                                      beq #0x4a54dc
004a5498  00 40 a0 e3                                      mov r4, #0
004a549c  01 00 00 ea                                      b #0x4a54a8
004a54a0  06 30 95 e7                                      ldr r3, [r5, r6]
004a54a4  00 30 93 e5                                      ldr r3, [r3]
004a54a8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a54ac  01 40 84 e2                                      add r4, r4, #1
004a54b0  00 00 50 e3                                      cmp r0, #0
004a54b4  02 00 00 0a                                      beq #0x4a54c4
004a54b8  e0 ab f9 eb                                      bl #0x310440
004a54bc  06 30 95 e7                                      ldr r3, [r5, r6]
004a54c0  00 30 93 e5                                      ldr r3, [r3]
004a54c4  07 20 95 e7                                      ldr r2, [r5, r7]
004a54c8  00 20 92 e5                                      ldr r2, [r2]
004a54cc  04 00 52 e1                                      cmp r2, r4
004a54d0  f2 ff ff 8a                                      bhi #0x4a54a0
004a54d4  00 00 53 e3                                      cmp r3, #0
004a54d8  01 00 00 0a                                      beq #0x4a54e4
004a54dc  03 00 a0 e1                                      mov r0, r3
004a54e0  d6 ab f9 eb                                      bl #0x310440
004a54e4  06 30 95 e7                                      ldr r3, [r5, r6]
004a54e8  00 20 a0 e3                                      mov r2, #0
004a54ec  00 20 83 e5                                      str r2, [r3]
004a54f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a54f4  20 f6 4e 00 d8 32 00 00 28 27 00 00              .byte 0x20, 0xf6, 0x4e, 0x00, 0xd8, 0x32, 0x00, 0x00, 0x28, 0x27, 0x00, 0x00

; FUNCTION 0x004a5500, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::SkillTable
; alias: _ZN6Arrays10SkillTable8finalizeEv
; demangled: Arrays::SkillTable::finalize()
; decoder-mode: arm
004a5500  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5504  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a5508  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a550c  05 50 8f e0                                      add r5, pc, r5
004a5510  07 30 95 e7                                      ldr r3, [r5, r7]
004a5514  00 30 93 e5                                      ldr r3, [r3]
004a5518  00 00 53 e3                                      cmp r3, #0
004a551c  2c 00 00 0a                                      beq #0x4a55d4
004a5520  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a5524  08 20 95 e7                                      ldr r2, [r5, r8]
004a5528  00 20 92 e5                                      ldr r2, [r2]
004a552c  00 00 52 e3                                      cmp r2, #0
004a5530  12 00 00 0a                                      beq #0x4a5580
004a5534  00 40 a0 e3                                      mov r4, #0
004a5538  04 60 a0 e1                                      mov r6, r4
004a553c  01 00 00 ea                                      b #0x4a5548
004a5540  07 30 95 e7                                      ldr r3, [r5, r7]
004a5544  00 30 93 e5                                      ldr r3, [r3]
004a5548  04 00 83 e0                                      add r0, r3, r4
004a554c  04 30 93 e7                                      ldr r3, [r3, r4]
004a5550  0f e0 a0 e1                                      mov lr, pc
004a5554  08 f0 93 e5                                      ldr pc, [r3, #8]
004a5558  08 30 95 e7                                      ldr r3, [r5, r8]
004a555c  01 60 86 e2                                      add r6, r6, #1
004a5560  4c 40 84 e2                                      add r4, r4, #0x4c
004a5564  00 30 93 e5                                      ldr r3, [r3]
004a5568  06 00 53 e1                                      cmp r3, r6
004a556c  f3 ff ff 8a                                      bhi #0x4a5540
004a5570  07 30 95 e7                                      ldr r3, [r5, r7]
004a5574  00 30 93 e5                                      ldr r3, [r3]
004a5578  00 00 53 e3                                      cmp r3, #0
004a557c  11 00 00 0a                                      beq #0x4a55c8
004a5580  04 20 13 e5                                      ldr r2, [r3, #-4]
004a5584  4c 00 a0 e3                                      mov r0, #0x4c
004a5588  90 32 20 e0                                      mla r0, r0, r2, r3
004a558c  00 00 53 e1                                      cmp r3, r0
004a5590  01 00 00 1a                                      bne #0x4a559c
004a5594  09 00 00 ea                                      b #0x4a55c0
004a5598  04 00 a0 e1                                      mov r0, r4
004a559c  4c 40 40 e2                                      sub r4, r0, #0x4c
004a55a0  4c 30 10 e5                                      ldr r3, [r0, #-0x4c]
004a55a4  04 00 a0 e1                                      mov r0, r4
004a55a8  0f e0 a0 e1                                      mov lr, pc
004a55ac  00 f0 93 e5                                      ldr pc, [r3]
004a55b0  07 30 95 e7                                      ldr r3, [r5, r7]
004a55b4  00 00 93 e5                                      ldr r0, [r3]
004a55b8  04 00 50 e1                                      cmp r0, r4
004a55bc  f5 ff ff 1a                                      bne #0x4a5598
004a55c0  08 00 40 e2                                      sub r0, r0, #8
004a55c4  9d ab f9 eb                                      bl #0x310440
004a55c8  07 30 95 e7                                      ldr r3, [r5, r7]
004a55cc  00 20 a0 e3                                      mov r2, #0
004a55d0  00 20 83 e5                                      str r2, [r3]
004a55d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a55d8  84 f5 4e 00 1c 44 00 00 28 27 00 00              .byte 0x84, 0xf5, 0x4e, 0x00, 0x1c, 0x44, 0x00, 0x00, 0x28, 0x27, 0x00, 0x00

; FUNCTION 0x004b0938, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::SkillTable
; alias: _ZN6Arrays10SkillTable9readNamesEP11IStreamBase
; demangled: Arrays::SkillTable::readNames(IStreamBase*)
; decoder-mode: arm
004b0938  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b093c  00 70 a0 e1                                      mov r7, r0
004b0940  1c d0 4d e2                                      sub sp, sp, #0x1c
004b0944  c6 d2 ff eb                                      bl #0x4a5464
004b0948  07 00 a0 e1                                      mov r0, r7
004b094c  4f 8c f9 eb                                      bl #0x313a90
004b0950  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b0954  01 30 a0 e3                                      mov r3, #1
004b0958  00 00 53 e3                                      cmp r3, #0
004b095c  06 60 8f e0                                      add r6, pc, r6
004b0960  14 00 8d e5                                      str r0, [sp, #0x14]
004b0964  0c 30 8d e5                                      str r3, [sp, #0xc]
004b0968  12 00 00 1a                                      bne #0x4b09b8
004b096c  14 30 8d e2                                      add r3, sp, #0x14
004b0970  02 20 83 e2                                      add r2, r3, #2
004b0974  01 30 83 e2                                      add r3, r3, #1
004b0978  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b097c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0980  03 00 52 e1                                      cmp r2, r3
004b0984  02 40 a0 e1                                      mov r4, r2
004b0988  01 10 20 e0                                      eor r1, r0, r1
004b098c  01 10 43 e5                                      strb r1, [r3, #-1]
004b0990  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0994  00 10 21 e0                                      eor r1, r1, r0
004b0998  01 10 c2 e5                                      strb r1, [r2, #1]
004b099c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b09a0  01 20 42 e2                                      sub r2, r2, #1
004b09a4  00 10 21 e0                                      eor r1, r1, r0
004b09a8  01 10 43 e5                                      strb r1, [r3, #-1]
004b09ac  01 30 83 e2                                      add r3, r3, #1
004b09b0  f0 ff ff 8a                                      bhi #0x4b0978
004b09b4  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b09b8  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b09bc  03 30 96 e7                                      ldr r3, [r6, r3]
004b09c0  00 30 93 e5                                      ldr r3, [r3]
004b09c4  00 00 53 e1                                      cmp r3, r0
004b09c8  01 00 00 0a                                      beq #0x4b09d4
004b09cc  1c d0 8d e2                                      add sp, sp, #0x1c
004b09d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b09d4  00 01 a0 e1                                      lsl r0, r0, #2
004b09d8  01 10 a0 e3                                      mov r1, #1
004b09dc  e2 7e f9 eb                                      bl #0x31056c
004b09e0  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b09e4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b09e8  09 30 96 e7                                      ldr r3, [r6, sb]
004b09ec  00 00 52 e3                                      cmp r2, #0
004b09f0  00 00 83 e5                                      str r0, [r3]
004b09f4  f4 ff ff 0a                                      beq #0x4b09cc
004b09f8  10 a0 8d e2                                      add sl, sp, #0x10
004b09fc  01 80 a0 e3                                      mov r8, #1
004b0a00  08 10 8a e0                                      add r1, sl, r8
004b0a04  02 30 8a e2                                      add r3, sl, #2
004b0a08  00 40 a0 e3                                      mov r4, #0
004b0a0c  0a 00 8d e8                                      stm sp, {r1, r3}
004b0a10  07 00 a0 e1                                      mov r0, r7
004b0a14  0a 10 a0 e1                                      mov r1, sl
004b0a18  e0 b9 fc eb                                      bl #0x3df1a0
004b0a1c  00 00 58 e3                                      cmp r8, #0
004b0a20  0c 80 8d e5                                      str r8, [sp, #0xc]
004b0a24  0f 00 00 1a                                      bne #0x4b0a68
004b0a28  00 30 9d e5                                      ldr r3, [sp]
004b0a2c  04 20 9d e5                                      ldr r2, [sp, #4]
004b0a30  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0a34  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0a38  03 00 52 e1                                      cmp r2, r3
004b0a3c  01 10 20 e0                                      eor r1, r0, r1
004b0a40  01 10 43 e5                                      strb r1, [r3, #-1]
004b0a44  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0a48  00 10 21 e0                                      eor r1, r1, r0
004b0a4c  01 10 c2 e5                                      strb r1, [r2, #1]
004b0a50  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0a54  01 20 42 e2                                      sub r2, r2, #1
004b0a58  00 10 21 e0                                      eor r1, r1, r0
004b0a5c  01 10 43 e5                                      strb r1, [r3, #-1]
004b0a60  01 30 83 e2                                      add r3, r3, #1
004b0a64  f1 ff ff 8a                                      bhi #0x4b0a30
004b0a68  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b0a6c  09 50 96 e7                                      ldr r5, [r6, sb]
004b0a70  01 10 a0 e3                                      mov r1, #1
004b0a74  01 00 80 e0                                      add r0, r0, r1
004b0a78  00 b0 95 e5                                      ldr fp, [r5]
004b0a7c  ba 7e f9 eb                                      bl #0x31056c
004b0a80  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b0a84  00 30 95 e5                                      ldr r3, [r5]
004b0a88  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b0a8c  07 00 a0 e1                                      mov r0, r7
004b0a90  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b0a94  00 30 a0 e3                                      mov r3, #0
004b0a98  6d 9a f9 eb                                      bl #0x317454
004b0a9c  00 30 95 e5                                      ldr r3, [r5]
004b0aa0  00 10 a0 e3                                      mov r1, #0
004b0aa4  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b0aa8  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b0aac  01 40 84 e2                                      add r4, r4, #1
004b0ab0  03 10 c2 e7                                      strb r1, [r2, r3]
004b0ab4  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b0ab8  04 00 53 e1                                      cmp r3, r4
004b0abc  d3 ff ff 8a                                      bhi #0x4b0a10
004b0ac0  c1 ff ff ea                                      b #0x4b09cc
; mapping-symbol data/literal pool
004b0ac4  34 41 4e 00 28 27 00 00 d8 32 00 00              .byte 0x34, 0x41, 0x4e, 0x00, 0x28, 0x27, 0x00, 0x00, 0xd8, 0x32, 0x00, 0x00

; FUNCTION 0x004b9810, declared_size=340, range_size=340, mode=arm
; class-group: Arrays::SkillTable
; alias: _ZN6Arrays10SkillTable4readEP11IStreamBase
; demangled: Arrays::SkillTable::read(IStreamBase*)
; decoder-mode: arm
004b9810  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b9814  0c d0 4d e2                                      sub sp, sp, #0xc
004b9818  00 a0 a0 e1                                      mov sl, r0
004b981c  9b 68 f9 eb                                      bl #0x313a90
004b9820  2c 61 9f e5                                      ldr r6, [pc, #0x12c]
004b9824  01 30 a0 e3                                      mov r3, #1
004b9828  00 00 53 e3                                      cmp r3, #0
004b982c  04 00 8d e5                                      str r0, [sp, #4]
004b9830  00 30 8d e5                                      str r3, [sp]
004b9834  06 60 8f e0                                      add r6, pc, r6
004b9838  10 00 00 1a                                      bne #0x4b9880
004b983c  04 30 8d e2                                      add r3, sp, #4
004b9840  02 20 83 e2                                      add r2, r3, #2
004b9844  01 30 83 e2                                      add r3, r3, #1
004b9848  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b984c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b9850  03 00 52 e1                                      cmp r2, r3
004b9854  01 10 20 e0                                      eor r1, r0, r1
004b9858  01 10 43 e5                                      strb r1, [r3, #-1]
004b985c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9860  00 10 21 e0                                      eor r1, r1, r0
004b9864  01 10 c2 e5                                      strb r1, [r2, #1]
004b9868  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b986c  01 20 42 e2                                      sub r2, r2, #1
004b9870  00 10 21 e0                                      eor r1, r1, r0
004b9874  01 10 43 e5                                      strb r1, [r3, #-1]
004b9878  01 30 83 e2                                      add r3, r3, #1
004b987c  f1 ff ff 8a                                      bhi #0x4b9848
004b9880  1e af ff eb                                      bl #0x4a5500
004b9884  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004b9888  04 40 9d e5                                      ldr r4, [sp, #4]
004b988c  4c 50 a0 e3                                      mov r5, #0x4c
004b9890  07 30 96 e7                                      ldr r3, [r6, r7]
004b9894  95 04 00 e0                                      mul r0, r5, r4
004b9898  00 40 83 e5                                      str r4, [r3]
004b989c  08 00 80 e2                                      add r0, r0, #8
004b98a0  01 10 a0 e3                                      mov r1, #1
004b98a4  30 5b f9 eb                                      bl #0x31056c
004b98a8  00 00 54 e3                                      cmp r4, #0
004b98ac  00 50 80 e5                                      str r5, [r0]
004b98b0  04 40 80 e5                                      str r4, [r0, #4]
004b98b4  08 30 80 e2                                      add r3, r0, #8
004b98b8  0c 00 00 0a                                      beq #0x4b98f0
004b98bc  98 10 9f e5                                      ldr r1, [pc, #0x98]
004b98c0  00 20 a0 e3                                      mov r2, #0
004b98c4  01 c0 96 e7                                      ldr ip, [r6, r1]
004b98c8  02 10 a0 e1                                      mov r1, r2
004b98cc  08 c0 8c e2                                      add ip, ip, #8
004b98d0  01 20 82 e2                                      add r2, r2, #1
004b98d4  04 00 52 e1                                      cmp r2, r4
004b98d8  08 c0 80 e5                                      str ip, [r0, #8]
004b98dc  18 10 80 e5                                      str r1, [r0, #0x18]
004b98e0  30 10 80 e5                                      str r1, [r0, #0x30]
004b98e4  44 10 80 e5                                      str r1, [r0, #0x44]
004b98e8  4c 00 80 e2                                      add r0, r0, #0x4c
004b98ec  f7 ff ff 1a                                      bne #0x4b98d0
004b98f0  07 20 96 e7                                      ldr r2, [r6, r7]
004b98f4  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b98f8  00 10 92 e5                                      ldr r1, [r2]
004b98fc  08 20 96 e7                                      ldr r2, [r6, r8]
004b9900  00 00 51 e3                                      cmp r1, #0
004b9904  00 30 82 e5                                      str r3, [r2]
004b9908  0f 00 00 0a                                      beq #0x4b994c
004b990c  00 40 a0 e3                                      mov r4, #0
004b9910  04 50 a0 e1                                      mov r5, r4
004b9914  01 00 00 ea                                      b #0x4b9920
004b9918  08 30 96 e7                                      ldr r3, [r6, r8]
004b991c  00 30 93 e5                                      ldr r3, [r3]
004b9920  04 00 83 e0                                      add r0, r3, r4
004b9924  0a 10 a0 e1                                      mov r1, sl
004b9928  04 30 93 e7                                      ldr r3, [r3, r4]
004b992c  0f e0 a0 e1                                      mov lr, pc
004b9930  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b9934  07 30 96 e7                                      ldr r3, [r6, r7]
004b9938  01 50 85 e2                                      add r5, r5, #1
004b993c  4c 40 84 e2                                      add r4, r4, #0x4c
004b9940  00 30 93 e5                                      ldr r3, [r3]
004b9944  05 00 53 e1                                      cmp r3, r5
004b9948  f2 ff ff 8a                                      bhi #0x4b9918
004b994c  0c d0 8d e2                                      add sp, sp, #0xc
004b9950  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b9954  5c b2 4d 00 28 27 00 00 7c 36 00 00 1c 44 00 00  .byte 0x5c, 0xb2, 0x4d, 0x00, 0x28, 0x27, 0x00, 0x00, 0x7c, 0x36, 0x00, 0x00, 0x1c, 0x44, 0x00, 0x00
