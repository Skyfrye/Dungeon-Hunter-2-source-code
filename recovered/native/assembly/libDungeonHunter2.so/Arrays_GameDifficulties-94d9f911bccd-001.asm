; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a8e9c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::GameDifficulties
; alias: _ZN6Arrays16GameDifficulties13finalizeNamesEv
; demangled: Arrays::GameDifficulties::finalizeNames()
; decoder-mode: arm
004a8e9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8ea0  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a8ea4  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a8ea8  05 50 8f e0                                      add r5, pc, r5
004a8eac  06 30 95 e7                                      ldr r3, [r5, r6]
004a8eb0  00 30 93 e5                                      ldr r3, [r3]
004a8eb4  00 00 53 e3                                      cmp r3, #0
004a8eb8  1a 00 00 0a                                      beq #0x4a8f28
004a8ebc  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a8ec0  07 20 95 e7                                      ldr r2, [r5, r7]
004a8ec4  00 20 92 e5                                      ldr r2, [r2]
004a8ec8  00 00 52 e3                                      cmp r2, #0
004a8ecc  10 00 00 0a                                      beq #0x4a8f14
004a8ed0  00 40 a0 e3                                      mov r4, #0
004a8ed4  01 00 00 ea                                      b #0x4a8ee0
004a8ed8  06 30 95 e7                                      ldr r3, [r5, r6]
004a8edc  00 30 93 e5                                      ldr r3, [r3]
004a8ee0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a8ee4  01 40 84 e2                                      add r4, r4, #1
004a8ee8  00 00 50 e3                                      cmp r0, #0
004a8eec  02 00 00 0a                                      beq #0x4a8efc
004a8ef0  52 9d f9 eb                                      bl #0x310440
004a8ef4  06 30 95 e7                                      ldr r3, [r5, r6]
004a8ef8  00 30 93 e5                                      ldr r3, [r3]
004a8efc  07 20 95 e7                                      ldr r2, [r5, r7]
004a8f00  00 20 92 e5                                      ldr r2, [r2]
004a8f04  04 00 52 e1                                      cmp r2, r4
004a8f08  f2 ff ff 8a                                      bhi #0x4a8ed8
004a8f0c  00 00 53 e3                                      cmp r3, #0
004a8f10  01 00 00 0a                                      beq #0x4a8f1c
004a8f14  03 00 a0 e1                                      mov r0, r3
004a8f18  48 9d f9 eb                                      bl #0x310440
004a8f1c  06 30 95 e7                                      ldr r3, [r5, r6]
004a8f20  00 20 a0 e3                                      mov r2, #0
004a8f24  00 20 83 e5                                      str r2, [r3]
004a8f28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8f2c  e8 bb 4e 00 80 48 00 00 30 35 00 00              .byte 0xe8, 0xbb, 0x4e, 0x00, 0x80, 0x48, 0x00, 0x00, 0x30, 0x35, 0x00, 0x00

; FUNCTION 0x004a8f38, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::GameDifficulties
; alias: _ZN6Arrays16GameDifficulties8finalizeEv
; demangled: Arrays::GameDifficulties::finalize()
; decoder-mode: arm
004a8f38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8f3c  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a8f40  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a8f44  05 50 8f e0                                      add r5, pc, r5
004a8f48  07 30 95 e7                                      ldr r3, [r5, r7]
004a8f4c  00 30 93 e5                                      ldr r3, [r3]
004a8f50  00 00 53 e3                                      cmp r3, #0
004a8f54  2c 00 00 0a                                      beq #0x4a900c
004a8f58  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a8f5c  08 20 95 e7                                      ldr r2, [r5, r8]
004a8f60  00 20 92 e5                                      ldr r2, [r2]
004a8f64  00 00 52 e3                                      cmp r2, #0
004a8f68  12 00 00 0a                                      beq #0x4a8fb8
004a8f6c  00 40 a0 e3                                      mov r4, #0
004a8f70  04 60 a0 e1                                      mov r6, r4
004a8f74  01 00 00 ea                                      b #0x4a8f80
004a8f78  07 30 95 e7                                      ldr r3, [r5, r7]
004a8f7c  00 30 93 e5                                      ldr r3, [r3]
004a8f80  04 00 83 e0                                      add r0, r3, r4
004a8f84  04 30 93 e7                                      ldr r3, [r3, r4]
004a8f88  0f e0 a0 e1                                      mov lr, pc
004a8f8c  08 f0 93 e5                                      ldr pc, [r3, #8]
004a8f90  08 30 95 e7                                      ldr r3, [r5, r8]
004a8f94  01 60 86 e2                                      add r6, r6, #1
004a8f98  18 40 84 e2                                      add r4, r4, #0x18
004a8f9c  00 30 93 e5                                      ldr r3, [r3]
004a8fa0  06 00 53 e1                                      cmp r3, r6
004a8fa4  f3 ff ff 8a                                      bhi #0x4a8f78
004a8fa8  07 30 95 e7                                      ldr r3, [r5, r7]
004a8fac  00 30 93 e5                                      ldr r3, [r3]
004a8fb0  00 00 53 e3                                      cmp r3, #0
004a8fb4  11 00 00 0a                                      beq #0x4a9000
004a8fb8  04 20 13 e5                                      ldr r2, [r3, #-4]
004a8fbc  18 00 a0 e3                                      mov r0, #0x18
004a8fc0  90 32 20 e0                                      mla r0, r0, r2, r3
004a8fc4  00 00 53 e1                                      cmp r3, r0
004a8fc8  01 00 00 1a                                      bne #0x4a8fd4
004a8fcc  09 00 00 ea                                      b #0x4a8ff8
004a8fd0  04 00 a0 e1                                      mov r0, r4
004a8fd4  18 40 40 e2                                      sub r4, r0, #0x18
004a8fd8  18 30 10 e5                                      ldr r3, [r0, #-0x18]
004a8fdc  04 00 a0 e1                                      mov r0, r4
004a8fe0  0f e0 a0 e1                                      mov lr, pc
004a8fe4  00 f0 93 e5                                      ldr pc, [r3]
004a8fe8  07 30 95 e7                                      ldr r3, [r5, r7]
004a8fec  00 00 93 e5                                      ldr r0, [r3]
004a8ff0  04 00 50 e1                                      cmp r0, r4
004a8ff4  f5 ff ff 1a                                      bne #0x4a8fd0
004a8ff8  08 00 40 e2                                      sub r0, r0, #8
004a8ffc  0f 9d f9 eb                                      bl #0x310440
004a9000  07 30 95 e7                                      ldr r3, [r5, r7]
004a9004  00 20 a0 e3                                      mov r2, #0
004a9008  00 20 83 e5                                      str r2, [r3]
004a900c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9010  4c bb 4e 00 24 3b 00 00 30 35 00 00              .byte 0x4c, 0xbb, 0x4e, 0x00, 0x24, 0x3b, 0x00, 0x00, 0x30, 0x35, 0x00, 0x00

; FUNCTION 0x004af5e8, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::GameDifficulties
; alias: _ZN6Arrays16GameDifficulties4readEP11IStreamBase
; demangled: Arrays::GameDifficulties::read(IStreamBase*)
; decoder-mode: arm
004af5e8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004af5ec  0c d0 4d e2                                      sub sp, sp, #0xc
004af5f0  00 a0 a0 e1                                      mov sl, r0
004af5f4  25 91 f9 eb                                      bl #0x313a90
004af5f8  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004af5fc  01 30 a0 e3                                      mov r3, #1
004af600  00 00 53 e3                                      cmp r3, #0
004af604  04 00 8d e5                                      str r0, [sp, #4]
004af608  00 30 8d e5                                      str r3, [sp]
004af60c  06 60 8f e0                                      add r6, pc, r6
004af610  10 00 00 1a                                      bne #0x4af658
004af614  04 30 8d e2                                      add r3, sp, #4
004af618  02 20 83 e2                                      add r2, r3, #2
004af61c  01 30 83 e2                                      add r3, r3, #1
004af620  01 00 d2 e5                                      ldrb r0, [r2, #1]
004af624  01 10 53 e5                                      ldrb r1, [r3, #-1]
004af628  03 00 52 e1                                      cmp r2, r3
004af62c  01 10 20 e0                                      eor r1, r0, r1
004af630  01 10 43 e5                                      strb r1, [r3, #-1]
004af634  01 00 d2 e5                                      ldrb r0, [r2, #1]
004af638  00 10 21 e0                                      eor r1, r1, r0
004af63c  01 10 c2 e5                                      strb r1, [r2, #1]
004af640  01 00 53 e5                                      ldrb r0, [r3, #-1]
004af644  01 20 42 e2                                      sub r2, r2, #1
004af648  00 10 21 e0                                      eor r1, r1, r0
004af64c  01 10 43 e5                                      strb r1, [r3, #-1]
004af650  01 30 83 e2                                      add r3, r3, #1
004af654  f1 ff ff 8a                                      bhi #0x4af620
004af658  c0 70 9f e5                                      ldr r7, [pc, #0xc0]
004af65c  35 e6 ff eb                                      bl #0x4a8f38
004af660  04 40 9d e5                                      ldr r4, [sp, #4]
004af664  07 30 96 e7                                      ldr r3, [r6, r7]
004af668  01 10 a0 e3                                      mov r1, #1
004af66c  84 00 84 e0                                      add r0, r4, r4, lsl #1
004af670  01 00 80 e0                                      add r0, r0, r1
004af674  00 40 83 e5                                      str r4, [r3]
004af678  80 01 a0 e1                                      lsl r0, r0, #3
004af67c  ba 83 f9 eb                                      bl #0x31056c
004af680  18 30 a0 e3                                      mov r3, #0x18
004af684  00 00 54 e3                                      cmp r4, #0
004af688  18 00 80 e8                                      stm r0, {r3, r4}
004af68c  08 30 80 e2                                      add r3, r0, #8
004af690  08 00 00 0a                                      beq #0x4af6b8
004af694  88 10 9f e5                                      ldr r1, [pc, #0x88]
004af698  00 20 a0 e3                                      mov r2, #0
004af69c  01 10 96 e7                                      ldr r1, [r6, r1]
004af6a0  08 10 81 e2                                      add r1, r1, #8
004af6a4  01 20 82 e2                                      add r2, r2, #1
004af6a8  04 00 52 e1                                      cmp r2, r4
004af6ac  08 10 80 e5                                      str r1, [r0, #8]
004af6b0  18 00 80 e2                                      add r0, r0, #0x18
004af6b4  fa ff ff 1a                                      bne #0x4af6a4
004af6b8  07 20 96 e7                                      ldr r2, [r6, r7]
004af6bc  64 80 9f e5                                      ldr r8, [pc, #0x64]
004af6c0  00 10 92 e5                                      ldr r1, [r2]
004af6c4  08 20 96 e7                                      ldr r2, [r6, r8]
004af6c8  00 00 51 e3                                      cmp r1, #0
004af6cc  00 30 82 e5                                      str r3, [r2]
004af6d0  0f 00 00 0a                                      beq #0x4af714
004af6d4  00 40 a0 e3                                      mov r4, #0
004af6d8  04 50 a0 e1                                      mov r5, r4
004af6dc  01 00 00 ea                                      b #0x4af6e8
004af6e0  08 30 96 e7                                      ldr r3, [r6, r8]
004af6e4  00 30 93 e5                                      ldr r3, [r3]
004af6e8  04 00 83 e0                                      add r0, r3, r4
004af6ec  0a 10 a0 e1                                      mov r1, sl
004af6f0  04 30 93 e7                                      ldr r3, [r3, r4]
004af6f4  0f e0 a0 e1                                      mov lr, pc
004af6f8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004af6fc  07 30 96 e7                                      ldr r3, [r6, r7]
004af700  01 50 85 e2                                      add r5, r5, #1
004af704  18 40 84 e2                                      add r4, r4, #0x18
004af708  00 30 93 e5                                      ldr r3, [r3]
004af70c  05 00 53 e1                                      cmp r3, r5
004af710  f2 ff ff 8a                                      bhi #0x4af6e0
004af714  0c d0 8d e2                                      add sp, sp, #0xc
004af718  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004af71c  84 54 4e 00 30 35 00 00 a4 29 00 00 24 3b 00 00  .byte 0x84, 0x54, 0x4e, 0x00, 0x30, 0x35, 0x00, 0x00, 0xa4, 0x29, 0x00, 0x00, 0x24, 0x3b, 0x00, 0x00

; FUNCTION 0x004b57d4, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::GameDifficulties
; alias: _ZN6Arrays16GameDifficulties9readNamesEP11IStreamBase
; demangled: Arrays::GameDifficulties::readNames(IStreamBase*)
; decoder-mode: arm
004b57d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b57d8  00 70 a0 e1                                      mov r7, r0
004b57dc  1c d0 4d e2                                      sub sp, sp, #0x1c
004b57e0  ad cd ff eb                                      bl #0x4a8e9c
004b57e4  07 00 a0 e1                                      mov r0, r7
004b57e8  a8 78 f9 eb                                      bl #0x313a90
004b57ec  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b57f0  01 30 a0 e3                                      mov r3, #1
004b57f4  00 00 53 e3                                      cmp r3, #0
004b57f8  06 60 8f e0                                      add r6, pc, r6
004b57fc  14 00 8d e5                                      str r0, [sp, #0x14]
004b5800  0c 30 8d e5                                      str r3, [sp, #0xc]
004b5804  12 00 00 1a                                      bne #0x4b5854
004b5808  14 30 8d e2                                      add r3, sp, #0x14
004b580c  02 20 83 e2                                      add r2, r3, #2
004b5810  01 30 83 e2                                      add r3, r3, #1
004b5814  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5818  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b581c  03 00 52 e1                                      cmp r2, r3
004b5820  02 40 a0 e1                                      mov r4, r2
004b5824  01 10 20 e0                                      eor r1, r0, r1
004b5828  01 10 43 e5                                      strb r1, [r3, #-1]
004b582c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5830  00 10 21 e0                                      eor r1, r1, r0
004b5834  01 10 c2 e5                                      strb r1, [r2, #1]
004b5838  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b583c  01 20 42 e2                                      sub r2, r2, #1
004b5840  00 10 21 e0                                      eor r1, r1, r0
004b5844  01 10 43 e5                                      strb r1, [r3, #-1]
004b5848  01 30 83 e2                                      add r3, r3, #1
004b584c  f0 ff ff 8a                                      bhi #0x4b5814
004b5850  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b5854  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b5858  03 30 96 e7                                      ldr r3, [r6, r3]
004b585c  00 30 93 e5                                      ldr r3, [r3]
004b5860  00 00 53 e1                                      cmp r3, r0
004b5864  01 00 00 0a                                      beq #0x4b5870
004b5868  1c d0 8d e2                                      add sp, sp, #0x1c
004b586c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b5870  00 01 a0 e1                                      lsl r0, r0, #2
004b5874  01 10 a0 e3                                      mov r1, #1
004b5878  3b 6b f9 eb                                      bl #0x31056c
004b587c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b5880  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b5884  09 30 96 e7                                      ldr r3, [r6, sb]
004b5888  00 00 52 e3                                      cmp r2, #0
004b588c  00 00 83 e5                                      str r0, [r3]
004b5890  f4 ff ff 0a                                      beq #0x4b5868
004b5894  10 a0 8d e2                                      add sl, sp, #0x10
004b5898  01 80 a0 e3                                      mov r8, #1
004b589c  08 10 8a e0                                      add r1, sl, r8
004b58a0  02 30 8a e2                                      add r3, sl, #2
004b58a4  00 40 a0 e3                                      mov r4, #0
004b58a8  0a 00 8d e8                                      stm sp, {r1, r3}
004b58ac  07 00 a0 e1                                      mov r0, r7
004b58b0  0a 10 a0 e1                                      mov r1, sl
004b58b4  39 a6 fc eb                                      bl #0x3df1a0
004b58b8  00 00 58 e3                                      cmp r8, #0
004b58bc  0c 80 8d e5                                      str r8, [sp, #0xc]
004b58c0  0f 00 00 1a                                      bne #0x4b5904
004b58c4  00 30 9d e5                                      ldr r3, [sp]
004b58c8  04 20 9d e5                                      ldr r2, [sp, #4]
004b58cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b58d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b58d4  03 00 52 e1                                      cmp r2, r3
004b58d8  01 10 20 e0                                      eor r1, r0, r1
004b58dc  01 10 43 e5                                      strb r1, [r3, #-1]
004b58e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b58e4  00 10 21 e0                                      eor r1, r1, r0
004b58e8  01 10 c2 e5                                      strb r1, [r2, #1]
004b58ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b58f0  01 20 42 e2                                      sub r2, r2, #1
004b58f4  00 10 21 e0                                      eor r1, r1, r0
004b58f8  01 10 43 e5                                      strb r1, [r3, #-1]
004b58fc  01 30 83 e2                                      add r3, r3, #1
004b5900  f1 ff ff 8a                                      bhi #0x4b58cc
004b5904  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b5908  09 50 96 e7                                      ldr r5, [r6, sb]
004b590c  01 10 a0 e3                                      mov r1, #1
004b5910  01 00 80 e0                                      add r0, r0, r1
004b5914  00 b0 95 e5                                      ldr fp, [r5]
004b5918  13 6b f9 eb                                      bl #0x31056c
004b591c  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b5920  00 30 95 e5                                      ldr r3, [r5]
004b5924  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b5928  07 00 a0 e1                                      mov r0, r7
004b592c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b5930  00 30 a0 e3                                      mov r3, #0
004b5934  c6 86 f9 eb                                      bl #0x317454
004b5938  00 30 95 e5                                      ldr r3, [r5]
004b593c  00 10 a0 e3                                      mov r1, #0
004b5940  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b5944  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b5948  01 40 84 e2                                      add r4, r4, #1
004b594c  03 10 c2 e7                                      strb r1, [r2, r3]
004b5950  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b5954  04 00 53 e1                                      cmp r3, r4
004b5958  d3 ff ff 8a                                      bhi #0x4b58ac
004b595c  c1 ff ff ea                                      b #0x4b5868
; mapping-symbol data/literal pool
004b5960  98 f2 4d 00 30 35 00 00 80 48 00 00              .byte 0x98, 0xf2, 0x4d, 0x00, 0x30, 0x35, 0x00, 0x00, 0x80, 0x48, 0x00, 0x00
