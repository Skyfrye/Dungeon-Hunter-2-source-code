; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a991c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ClassTable
; alias: _ZN6Arrays10ClassTable13finalizeNamesEv
; demangled: Arrays::ClassTable::finalizeNames()
; decoder-mode: arm
004a991c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a9920  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a9924  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a9928  05 50 8f e0                                      add r5, pc, r5
004a992c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9930  00 30 93 e5                                      ldr r3, [r3]
004a9934  00 00 53 e3                                      cmp r3, #0
004a9938  1a 00 00 0a                                      beq #0x4a99a8
004a993c  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a9940  07 20 95 e7                                      ldr r2, [r5, r7]
004a9944  00 20 92 e5                                      ldr r2, [r2]
004a9948  00 00 52 e3                                      cmp r2, #0
004a994c  10 00 00 0a                                      beq #0x4a9994
004a9950  00 40 a0 e3                                      mov r4, #0
004a9954  01 00 00 ea                                      b #0x4a9960
004a9958  06 30 95 e7                                      ldr r3, [r5, r6]
004a995c  00 30 93 e5                                      ldr r3, [r3]
004a9960  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a9964  01 40 84 e2                                      add r4, r4, #1
004a9968  00 00 50 e3                                      cmp r0, #0
004a996c  02 00 00 0a                                      beq #0x4a997c
004a9970  b2 9a f9 eb                                      bl #0x310440
004a9974  06 30 95 e7                                      ldr r3, [r5, r6]
004a9978  00 30 93 e5                                      ldr r3, [r3]
004a997c  07 20 95 e7                                      ldr r2, [r5, r7]
004a9980  00 20 92 e5                                      ldr r2, [r2]
004a9984  04 00 52 e1                                      cmp r2, r4
004a9988  f2 ff ff 8a                                      bhi #0x4a9958
004a998c  00 00 53 e3                                      cmp r3, #0
004a9990  01 00 00 0a                                      beq #0x4a999c
004a9994  03 00 a0 e1                                      mov r0, r3
004a9998  a8 9a f9 eb                                      bl #0x310440
004a999c  06 30 95 e7                                      ldr r3, [r5, r6]
004a99a0  00 20 a0 e3                                      mov r2, #0
004a99a4  00 20 83 e5                                      str r2, [r3]
004a99a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a99ac  68 b1 4e 00 90 2a 00 00 68 35 00 00              .byte 0x68, 0xb1, 0x4e, 0x00, 0x90, 0x2a, 0x00, 0x00, 0x68, 0x35, 0x00, 0x00

; FUNCTION 0x004a99b8, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ClassTable
; alias: _ZN6Arrays10ClassTable8finalizeEv
; demangled: Arrays::ClassTable::finalize()
; decoder-mode: arm
004a99b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a99bc  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a99c0  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a99c4  05 50 8f e0                                      add r5, pc, r5
004a99c8  07 30 95 e7                                      ldr r3, [r5, r7]
004a99cc  00 30 93 e5                                      ldr r3, [r3]
004a99d0  00 00 53 e3                                      cmp r3, #0
004a99d4  2c 00 00 0a                                      beq #0x4a9a8c
004a99d8  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a99dc  08 20 95 e7                                      ldr r2, [r5, r8]
004a99e0  00 20 92 e5                                      ldr r2, [r2]
004a99e4  00 00 52 e3                                      cmp r2, #0
004a99e8  12 00 00 0a                                      beq #0x4a9a38
004a99ec  00 40 a0 e3                                      mov r4, #0
004a99f0  04 60 a0 e1                                      mov r6, r4
004a99f4  01 00 00 ea                                      b #0x4a9a00
004a99f8  07 30 95 e7                                      ldr r3, [r5, r7]
004a99fc  00 30 93 e5                                      ldr r3, [r3]
004a9a00  04 00 83 e0                                      add r0, r3, r4
004a9a04  04 30 93 e7                                      ldr r3, [r3, r4]
004a9a08  0f e0 a0 e1                                      mov lr, pc
004a9a0c  08 f0 93 e5                                      ldr pc, [r3, #8]
004a9a10  08 30 95 e7                                      ldr r3, [r5, r8]
004a9a14  01 60 86 e2                                      add r6, r6, #1
004a9a18  0c 40 84 e2                                      add r4, r4, #0xc
004a9a1c  00 30 93 e5                                      ldr r3, [r3]
004a9a20  06 00 53 e1                                      cmp r3, r6
004a9a24  f3 ff ff 8a                                      bhi #0x4a99f8
004a9a28  07 30 95 e7                                      ldr r3, [r5, r7]
004a9a2c  00 30 93 e5                                      ldr r3, [r3]
004a9a30  00 00 53 e3                                      cmp r3, #0
004a9a34  11 00 00 0a                                      beq #0x4a9a80
004a9a38  04 20 13 e5                                      ldr r2, [r3, #-4]
004a9a3c  0c 00 a0 e3                                      mov r0, #0xc
004a9a40  90 32 20 e0                                      mla r0, r0, r2, r3
004a9a44  00 00 53 e1                                      cmp r3, r0
004a9a48  01 00 00 1a                                      bne #0x4a9a54
004a9a4c  09 00 00 ea                                      b #0x4a9a78
004a9a50  04 00 a0 e1                                      mov r0, r4
004a9a54  0c 40 40 e2                                      sub r4, r0, #0xc
004a9a58  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a9a5c  04 00 a0 e1                                      mov r0, r4
004a9a60  0f e0 a0 e1                                      mov lr, pc
004a9a64  00 f0 93 e5                                      ldr pc, [r3]
004a9a68  07 30 95 e7                                      ldr r3, [r5, r7]
004a9a6c  00 00 93 e5                                      ldr r0, [r3]
004a9a70  04 00 50 e1                                      cmp r0, r4
004a9a74  f5 ff ff 1a                                      bne #0x4a9a50
004a9a78  08 00 40 e2                                      sub r0, r0, #8
004a9a7c  6f 9a f9 eb                                      bl #0x310440
004a9a80  07 30 95 e7                                      ldr r3, [r5, r7]
004a9a84  00 20 a0 e3                                      mov r2, #0
004a9a88  00 20 83 e5                                      str r2, [r3]
004a9a8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9a90  cc b0 4e 00 90 34 00 00 68 35 00 00              .byte 0xcc, 0xb0, 0x4e, 0x00, 0x90, 0x34, 0x00, 0x00, 0x68, 0x35, 0x00, 0x00

; FUNCTION 0x004b4484, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::ClassTable
; alias: _ZN6Arrays10ClassTable4readEP11IStreamBase
; demangled: Arrays::ClassTable::read(IStreamBase*)
; decoder-mode: arm
004b4484  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b4488  0c d0 4d e2                                      sub sp, sp, #0xc
004b448c  00 a0 a0 e1                                      mov sl, r0
004b4490  7e 7d f9 eb                                      bl #0x313a90
004b4494  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b4498  01 30 a0 e3                                      mov r3, #1
004b449c  00 00 53 e3                                      cmp r3, #0
004b44a0  04 00 8d e5                                      str r0, [sp, #4]
004b44a4  00 30 8d e5                                      str r3, [sp]
004b44a8  06 60 8f e0                                      add r6, pc, r6
004b44ac  10 00 00 1a                                      bne #0x4b44f4
004b44b0  04 30 8d e2                                      add r3, sp, #4
004b44b4  02 20 83 e2                                      add r2, r3, #2
004b44b8  01 30 83 e2                                      add r3, r3, #1
004b44bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b44c0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b44c4  03 00 52 e1                                      cmp r2, r3
004b44c8  01 10 20 e0                                      eor r1, r0, r1
004b44cc  01 10 43 e5                                      strb r1, [r3, #-1]
004b44d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b44d4  00 10 21 e0                                      eor r1, r1, r0
004b44d8  01 10 c2 e5                                      strb r1, [r2, #1]
004b44dc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b44e0  01 20 42 e2                                      sub r2, r2, #1
004b44e4  00 10 21 e0                                      eor r1, r1, r0
004b44e8  01 10 43 e5                                      strb r1, [r3, #-1]
004b44ec  01 30 83 e2                                      add r3, r3, #1
004b44f0  f1 ff ff 8a                                      bhi #0x4b44bc
004b44f4  2f d5 ff eb                                      bl #0x4a99b8
004b44f8  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b44fc  04 40 9d e5                                      ldr r4, [sp, #4]
004b4500  0c 50 a0 e3                                      mov r5, #0xc
004b4504  07 30 96 e7                                      ldr r3, [r6, r7]
004b4508  95 04 00 e0                                      mul r0, r5, r4
004b450c  00 40 83 e5                                      str r4, [r3]
004b4510  08 00 80 e2                                      add r0, r0, #8
004b4514  01 10 a0 e3                                      mov r1, #1
004b4518  13 70 f9 eb                                      bl #0x31056c
004b451c  00 00 54 e3                                      cmp r4, #0
004b4520  00 50 80 e5                                      str r5, [r0]
004b4524  04 40 80 e5                                      str r4, [r0, #4]
004b4528  08 30 80 e2                                      add r3, r0, #8
004b452c  0a 00 00 0a                                      beq #0x4b455c
004b4530  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b4534  00 20 a0 e3                                      mov r2, #0
004b4538  02 c0 a0 e1                                      mov ip, r2
004b453c  01 10 96 e7                                      ldr r1, [r6, r1]
004b4540  08 10 81 e2                                      add r1, r1, #8
004b4544  01 20 82 e2                                      add r2, r2, #1
004b4548  04 00 52 e1                                      cmp r2, r4
004b454c  08 10 80 e5                                      str r1, [r0, #8]
004b4550  10 c0 80 e5                                      str ip, [r0, #0x10]
004b4554  0c 00 80 e2                                      add r0, r0, #0xc
004b4558  f9 ff ff 1a                                      bne #0x4b4544
004b455c  07 20 96 e7                                      ldr r2, [r6, r7]
004b4560  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b4564  00 10 92 e5                                      ldr r1, [r2]
004b4568  08 20 96 e7                                      ldr r2, [r6, r8]
004b456c  00 00 51 e3                                      cmp r1, #0
004b4570  00 30 82 e5                                      str r3, [r2]
004b4574  0f 00 00 0a                                      beq #0x4b45b8
004b4578  00 40 a0 e3                                      mov r4, #0
004b457c  04 50 a0 e1                                      mov r5, r4
004b4580  01 00 00 ea                                      b #0x4b458c
004b4584  08 30 96 e7                                      ldr r3, [r6, r8]
004b4588  00 30 93 e5                                      ldr r3, [r3]
004b458c  04 00 83 e0                                      add r0, r3, r4
004b4590  0a 10 a0 e1                                      mov r1, sl
004b4594  04 30 93 e7                                      ldr r3, [r3, r4]
004b4598  0f e0 a0 e1                                      mov lr, pc
004b459c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b45a0  07 30 96 e7                                      ldr r3, [r6, r7]
004b45a4  01 50 85 e2                                      add r5, r5, #1
004b45a8  0c 40 84 e2                                      add r4, r4, #0xc
004b45ac  00 30 93 e5                                      ldr r3, [r3]
004b45b0  05 00 53 e1                                      cmp r3, r5
004b45b4  f2 ff ff 8a                                      bhi #0x4b4584
004b45b8  0c d0 8d e2                                      add sp, sp, #0xc
004b45bc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b45c0  e8 05 4e 00 68 35 00 00 54 4c 00 00 90 34 00 00  .byte 0xe8, 0x05, 0x4e, 0x00, 0x68, 0x35, 0x00, 0x00, 0x54, 0x4c, 0x00, 0x00, 0x90, 0x34, 0x00, 0x00

; FUNCTION 0x004b7fd8, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ClassTable
; alias: _ZN6Arrays10ClassTable9readNamesEP11IStreamBase
; demangled: Arrays::ClassTable::readNames(IStreamBase*)
; decoder-mode: arm
004b7fd8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b7fdc  00 70 a0 e1                                      mov r7, r0
004b7fe0  1c d0 4d e2                                      sub sp, sp, #0x1c
004b7fe4  4c c6 ff eb                                      bl #0x4a991c
004b7fe8  07 00 a0 e1                                      mov r0, r7
004b7fec  a7 6e f9 eb                                      bl #0x313a90
004b7ff0  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b7ff4  01 30 a0 e3                                      mov r3, #1
004b7ff8  00 00 53 e3                                      cmp r3, #0
004b7ffc  06 60 8f e0                                      add r6, pc, r6
004b8000  14 00 8d e5                                      str r0, [sp, #0x14]
004b8004  0c 30 8d e5                                      str r3, [sp, #0xc]
004b8008  12 00 00 1a                                      bne #0x4b8058
004b800c  14 30 8d e2                                      add r3, sp, #0x14
004b8010  02 20 83 e2                                      add r2, r3, #2
004b8014  01 30 83 e2                                      add r3, r3, #1
004b8018  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b801c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b8020  03 00 52 e1                                      cmp r2, r3
004b8024  02 40 a0 e1                                      mov r4, r2
004b8028  01 10 20 e0                                      eor r1, r0, r1
004b802c  01 10 43 e5                                      strb r1, [r3, #-1]
004b8030  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8034  00 10 21 e0                                      eor r1, r1, r0
004b8038  01 10 c2 e5                                      strb r1, [r2, #1]
004b803c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b8040  01 20 42 e2                                      sub r2, r2, #1
004b8044  00 10 21 e0                                      eor r1, r1, r0
004b8048  01 10 43 e5                                      strb r1, [r3, #-1]
004b804c  01 30 83 e2                                      add r3, r3, #1
004b8050  f0 ff ff 8a                                      bhi #0x4b8018
004b8054  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b8058  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b805c  03 30 96 e7                                      ldr r3, [r6, r3]
004b8060  00 30 93 e5                                      ldr r3, [r3]
004b8064  00 00 53 e1                                      cmp r3, r0
004b8068  01 00 00 0a                                      beq #0x4b8074
004b806c  1c d0 8d e2                                      add sp, sp, #0x1c
004b8070  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b8074  00 01 a0 e1                                      lsl r0, r0, #2
004b8078  01 10 a0 e3                                      mov r1, #1
004b807c  3a 61 f9 eb                                      bl #0x31056c
004b8080  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b8084  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b8088  09 30 96 e7                                      ldr r3, [r6, sb]
004b808c  00 00 52 e3                                      cmp r2, #0
004b8090  00 00 83 e5                                      str r0, [r3]
004b8094  f4 ff ff 0a                                      beq #0x4b806c
004b8098  10 a0 8d e2                                      add sl, sp, #0x10
004b809c  01 80 a0 e3                                      mov r8, #1
004b80a0  08 10 8a e0                                      add r1, sl, r8
004b80a4  02 30 8a e2                                      add r3, sl, #2
004b80a8  00 40 a0 e3                                      mov r4, #0
004b80ac  0a 00 8d e8                                      stm sp, {r1, r3}
004b80b0  07 00 a0 e1                                      mov r0, r7
004b80b4  0a 10 a0 e1                                      mov r1, sl
004b80b8  38 9c fc eb                                      bl #0x3df1a0
004b80bc  00 00 58 e3                                      cmp r8, #0
004b80c0  0c 80 8d e5                                      str r8, [sp, #0xc]
004b80c4  0f 00 00 1a                                      bne #0x4b8108
004b80c8  00 30 9d e5                                      ldr r3, [sp]
004b80cc  04 20 9d e5                                      ldr r2, [sp, #4]
004b80d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b80d4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b80d8  03 00 52 e1                                      cmp r2, r3
004b80dc  01 10 20 e0                                      eor r1, r0, r1
004b80e0  01 10 43 e5                                      strb r1, [r3, #-1]
004b80e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b80e8  00 10 21 e0                                      eor r1, r1, r0
004b80ec  01 10 c2 e5                                      strb r1, [r2, #1]
004b80f0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b80f4  01 20 42 e2                                      sub r2, r2, #1
004b80f8  00 10 21 e0                                      eor r1, r1, r0
004b80fc  01 10 43 e5                                      strb r1, [r3, #-1]
004b8100  01 30 83 e2                                      add r3, r3, #1
004b8104  f1 ff ff 8a                                      bhi #0x4b80d0
004b8108  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b810c  09 50 96 e7                                      ldr r5, [r6, sb]
004b8110  01 10 a0 e3                                      mov r1, #1
004b8114  01 00 80 e0                                      add r0, r0, r1
004b8118  00 b0 95 e5                                      ldr fp, [r5]
004b811c  12 61 f9 eb                                      bl #0x31056c
004b8120  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b8124  00 30 95 e5                                      ldr r3, [r5]
004b8128  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b812c  07 00 a0 e1                                      mov r0, r7
004b8130  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b8134  00 30 a0 e3                                      mov r3, #0
004b8138  c5 7c f9 eb                                      bl #0x317454
004b813c  00 30 95 e5                                      ldr r3, [r5]
004b8140  00 10 a0 e3                                      mov r1, #0
004b8144  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b8148  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b814c  01 40 84 e2                                      add r4, r4, #1
004b8150  03 10 c2 e7                                      strb r1, [r2, r3]
004b8154  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b8158  04 00 53 e1                                      cmp r3, r4
004b815c  d3 ff ff 8a                                      bhi #0x4b80b0
004b8160  c1 ff ff ea                                      b #0x4b806c
; mapping-symbol data/literal pool
004b8164  94 ca 4d 00 68 35 00 00 90 2a 00 00              .byte 0x94, 0xca, 0x4d, 0x00, 0x68, 0x35, 0x00, 0x00, 0x90, 0x2a, 0x00, 0x00

; FUNCTION 0x004b8170, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::ClassTable
; alias: _ZN6Arrays10ClassTable9skipNamesEP11IStreamBase
; demangled: Arrays::ClassTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b8170  98 ff ff ea                                      b #0x4b7fd8
