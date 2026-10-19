; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a919c, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::RectTable
; alias: _ZN6Arrays9RectTable13finalizeNamesEv
; demangled: Arrays::RectTable::finalizeNames()
; decoder-mode: arm
004a919c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a91a0  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a91a4  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a91a8  05 50 8f e0                                      add r5, pc, r5
004a91ac  06 30 95 e7                                      ldr r3, [r5, r6]
004a91b0  00 30 93 e5                                      ldr r3, [r3]
004a91b4  00 00 53 e3                                      cmp r3, #0
004a91b8  1a 00 00 0a                                      beq #0x4a9228
004a91bc  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a91c0  07 20 95 e7                                      ldr r2, [r5, r7]
004a91c4  00 20 92 e5                                      ldr r2, [r2]
004a91c8  00 00 52 e3                                      cmp r2, #0
004a91cc  10 00 00 0a                                      beq #0x4a9214
004a91d0  00 40 a0 e3                                      mov r4, #0
004a91d4  01 00 00 ea                                      b #0x4a91e0
004a91d8  06 30 95 e7                                      ldr r3, [r5, r6]
004a91dc  00 30 93 e5                                      ldr r3, [r3]
004a91e0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a91e4  01 40 84 e2                                      add r4, r4, #1
004a91e8  00 00 50 e3                                      cmp r0, #0
004a91ec  02 00 00 0a                                      beq #0x4a91fc
004a91f0  92 9c f9 eb                                      bl #0x310440
004a91f4  06 30 95 e7                                      ldr r3, [r5, r6]
004a91f8  00 30 93 e5                                      ldr r3, [r3]
004a91fc  07 20 95 e7                                      ldr r2, [r5, r7]
004a9200  00 20 92 e5                                      ldr r2, [r2]
004a9204  04 00 52 e1                                      cmp r2, r4
004a9208  f2 ff ff 8a                                      bhi #0x4a91d8
004a920c  00 00 53 e3                                      cmp r3, #0
004a9210  01 00 00 0a                                      beq #0x4a921c
004a9214  03 00 a0 e1                                      mov r0, r3
004a9218  88 9c f9 eb                                      bl #0x310440
004a921c  06 30 95 e7                                      ldr r3, [r5, r6]
004a9220  00 20 a0 e3                                      mov r2, #0
004a9224  00 20 83 e5                                      str r2, [r3]
004a9228  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a922c  e8 b8 4e 00 68 47 00 00 cc 33 00 00              .byte 0xe8, 0xb8, 0x4e, 0x00, 0x68, 0x47, 0x00, 0x00, 0xcc, 0x33, 0x00, 0x00

; FUNCTION 0x004a9238, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::RectTable
; alias: _ZN6Arrays9RectTable8finalizeEv
; demangled: Arrays::RectTable::finalize()
; decoder-mode: arm
004a9238  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a923c  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a9240  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a9244  05 50 8f e0                                      add r5, pc, r5
004a9248  07 30 95 e7                                      ldr r3, [r5, r7]
004a924c  00 30 93 e5                                      ldr r3, [r3]
004a9250  00 00 53 e3                                      cmp r3, #0
004a9254  2c 00 00 0a                                      beq #0x4a930c
004a9258  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a925c  08 20 95 e7                                      ldr r2, [r5, r8]
004a9260  00 20 92 e5                                      ldr r2, [r2]
004a9264  00 00 52 e3                                      cmp r2, #0
004a9268  12 00 00 0a                                      beq #0x4a92b8
004a926c  00 40 a0 e3                                      mov r4, #0
004a9270  04 60 a0 e1                                      mov r6, r4
004a9274  01 00 00 ea                                      b #0x4a9280
004a9278  07 30 95 e7                                      ldr r3, [r5, r7]
004a927c  00 30 93 e5                                      ldr r3, [r3]
004a9280  04 00 83 e0                                      add r0, r3, r4
004a9284  04 30 93 e7                                      ldr r3, [r3, r4]
004a9288  0f e0 a0 e1                                      mov lr, pc
004a928c  08 f0 93 e5                                      ldr pc, [r3, #8]
004a9290  08 30 95 e7                                      ldr r3, [r5, r8]
004a9294  01 60 86 e2                                      add r6, r6, #1
004a9298  14 40 84 e2                                      add r4, r4, #0x14
004a929c  00 30 93 e5                                      ldr r3, [r3]
004a92a0  06 00 53 e1                                      cmp r3, r6
004a92a4  f3 ff ff 8a                                      bhi #0x4a9278
004a92a8  07 30 95 e7                                      ldr r3, [r5, r7]
004a92ac  00 30 93 e5                                      ldr r3, [r3]
004a92b0  00 00 53 e3                                      cmp r3, #0
004a92b4  11 00 00 0a                                      beq #0x4a9300
004a92b8  04 20 13 e5                                      ldr r2, [r3, #-4]
004a92bc  14 00 a0 e3                                      mov r0, #0x14
004a92c0  90 32 20 e0                                      mla r0, r0, r2, r3
004a92c4  00 00 53 e1                                      cmp r3, r0
004a92c8  01 00 00 1a                                      bne #0x4a92d4
004a92cc  09 00 00 ea                                      b #0x4a92f8
004a92d0  04 00 a0 e1                                      mov r0, r4
004a92d4  14 40 40 e2                                      sub r4, r0, #0x14
004a92d8  14 30 10 e5                                      ldr r3, [r0, #-0x14]
004a92dc  04 00 a0 e1                                      mov r0, r4
004a92e0  0f e0 a0 e1                                      mov lr, pc
004a92e4  00 f0 93 e5                                      ldr pc, [r3]
004a92e8  07 30 95 e7                                      ldr r3, [r5, r7]
004a92ec  00 00 93 e5                                      ldr r0, [r3]
004a92f0  04 00 50 e1                                      cmp r0, r4
004a92f4  f5 ff ff 1a                                      bne #0x4a92d0
004a92f8  08 00 40 e2                                      sub r0, r0, #8
004a92fc  4f 9c f9 eb                                      bl #0x310440
004a9300  07 30 95 e7                                      ldr r3, [r5, r7]
004a9304  00 20 a0 e3                                      mov r2, #0
004a9308  00 20 83 e5                                      str r2, [r3]
004a930c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a9310  4c b8 4e 00 6c 1c 00 00 cc 33 00 00              .byte 0x4c, 0xb8, 0x4e, 0x00, 0x6c, 0x1c, 0x00, 0x00, 0xcc, 0x33, 0x00, 0x00

; FUNCTION 0x004b3e18, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::RectTable
; alias: _ZN6Arrays9RectTable4readEP11IStreamBase
; demangled: Arrays::RectTable::read(IStreamBase*)
; decoder-mode: arm
004b3e18  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b3e1c  0c d0 4d e2                                      sub sp, sp, #0xc
004b3e20  00 a0 a0 e1                                      mov sl, r0
004b3e24  19 7f f9 eb                                      bl #0x313a90
004b3e28  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004b3e2c  01 30 a0 e3                                      mov r3, #1
004b3e30  00 00 53 e3                                      cmp r3, #0
004b3e34  04 00 8d e5                                      str r0, [sp, #4]
004b3e38  00 30 8d e5                                      str r3, [sp]
004b3e3c  06 60 8f e0                                      add r6, pc, r6
004b3e40  10 00 00 1a                                      bne #0x4b3e88
004b3e44  04 30 8d e2                                      add r3, sp, #4
004b3e48  02 20 83 e2                                      add r2, r3, #2
004b3e4c  01 30 83 e2                                      add r3, r3, #1
004b3e50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3e54  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b3e58  03 00 52 e1                                      cmp r2, r3
004b3e5c  01 10 20 e0                                      eor r1, r0, r1
004b3e60  01 10 43 e5                                      strb r1, [r3, #-1]
004b3e64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3e68  00 10 21 e0                                      eor r1, r1, r0
004b3e6c  01 10 c2 e5                                      strb r1, [r2, #1]
004b3e70  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b3e74  01 20 42 e2                                      sub r2, r2, #1
004b3e78  00 10 21 e0                                      eor r1, r1, r0
004b3e7c  01 10 43 e5                                      strb r1, [r3, #-1]
004b3e80  01 30 83 e2                                      add r3, r3, #1
004b3e84  f1 ff ff 8a                                      bhi #0x4b3e50
004b3e88  ea d4 ff eb                                      bl #0x4a9238
004b3e8c  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
004b3e90  04 40 9d e5                                      ldr r4, [sp, #4]
004b3e94  14 50 a0 e3                                      mov r5, #0x14
004b3e98  07 30 96 e7                                      ldr r3, [r6, r7]
004b3e9c  95 04 00 e0                                      mul r0, r5, r4
004b3ea0  00 40 83 e5                                      str r4, [r3]
004b3ea4  08 00 80 e2                                      add r0, r0, #8
004b3ea8  01 10 a0 e3                                      mov r1, #1
004b3eac  ae 71 f9 eb                                      bl #0x31056c
004b3eb0  00 00 54 e3                                      cmp r4, #0
004b3eb4  00 50 80 e5                                      str r5, [r0]
004b3eb8  04 40 80 e5                                      str r4, [r0, #4]
004b3ebc  08 30 80 e2                                      add r3, r0, #8
004b3ec0  08 00 00 0a                                      beq #0x4b3ee8
004b3ec4  88 10 9f e5                                      ldr r1, [pc, #0x88]
004b3ec8  00 20 a0 e3                                      mov r2, #0
004b3ecc  01 10 96 e7                                      ldr r1, [r6, r1]
004b3ed0  08 10 81 e2                                      add r1, r1, #8
004b3ed4  01 20 82 e2                                      add r2, r2, #1
004b3ed8  04 00 52 e1                                      cmp r2, r4
004b3edc  08 10 80 e5                                      str r1, [r0, #8]
004b3ee0  14 00 80 e2                                      add r0, r0, #0x14
004b3ee4  fa ff ff 1a                                      bne #0x4b3ed4
004b3ee8  07 20 96 e7                                      ldr r2, [r6, r7]
004b3eec  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b3ef0  00 10 92 e5                                      ldr r1, [r2]
004b3ef4  08 20 96 e7                                      ldr r2, [r6, r8]
004b3ef8  00 00 51 e3                                      cmp r1, #0
004b3efc  00 30 82 e5                                      str r3, [r2]
004b3f00  0f 00 00 0a                                      beq #0x4b3f44
004b3f04  00 40 a0 e3                                      mov r4, #0
004b3f08  04 50 a0 e1                                      mov r5, r4
004b3f0c  01 00 00 ea                                      b #0x4b3f18
004b3f10  08 30 96 e7                                      ldr r3, [r6, r8]
004b3f14  00 30 93 e5                                      ldr r3, [r3]
004b3f18  04 00 83 e0                                      add r0, r3, r4
004b3f1c  0a 10 a0 e1                                      mov r1, sl
004b3f20  04 30 93 e7                                      ldr r3, [r3, r4]
004b3f24  0f e0 a0 e1                                      mov lr, pc
004b3f28  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b3f2c  07 30 96 e7                                      ldr r3, [r6, r7]
004b3f30  01 50 85 e2                                      add r5, r5, #1
004b3f34  14 40 84 e2                                      add r4, r4, #0x14
004b3f38  00 30 93 e5                                      ldr r3, [r3]
004b3f3c  05 00 53 e1                                      cmp r3, r5
004b3f40  f2 ff ff 8a                                      bhi #0x4b3f10
004b3f44  0c d0 8d e2                                      add sp, sp, #0xc
004b3f48  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b3f4c  54 0c 4e 00 cc 33 00 00 f4 2a 00 00 6c 1c 00 00  .byte 0x54, 0x0c, 0x4e, 0x00, 0xcc, 0x33, 0x00, 0x00, 0xf4, 0x2a, 0x00, 0x00, 0x6c, 0x1c, 0x00, 0x00

; FUNCTION 0x004b77d4, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::RectTable
; alias: _ZN6Arrays9RectTable9readNamesEP11IStreamBase
; demangled: Arrays::RectTable::readNames(IStreamBase*)
; decoder-mode: arm
004b77d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b77d8  00 70 a0 e1                                      mov r7, r0
004b77dc  1c d0 4d e2                                      sub sp, sp, #0x1c
004b77e0  6d c6 ff eb                                      bl #0x4a919c
004b77e4  07 00 a0 e1                                      mov r0, r7
004b77e8  a8 70 f9 eb                                      bl #0x313a90
004b77ec  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b77f0  01 30 a0 e3                                      mov r3, #1
004b77f4  00 00 53 e3                                      cmp r3, #0
004b77f8  06 60 8f e0                                      add r6, pc, r6
004b77fc  14 00 8d e5                                      str r0, [sp, #0x14]
004b7800  0c 30 8d e5                                      str r3, [sp, #0xc]
004b7804  12 00 00 1a                                      bne #0x4b7854
004b7808  14 30 8d e2                                      add r3, sp, #0x14
004b780c  02 20 83 e2                                      add r2, r3, #2
004b7810  01 30 83 e2                                      add r3, r3, #1
004b7814  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7818  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b781c  03 00 52 e1                                      cmp r2, r3
004b7820  02 40 a0 e1                                      mov r4, r2
004b7824  01 10 20 e0                                      eor r1, r0, r1
004b7828  01 10 43 e5                                      strb r1, [r3, #-1]
004b782c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b7830  00 10 21 e0                                      eor r1, r1, r0
004b7834  01 10 c2 e5                                      strb r1, [r2, #1]
004b7838  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b783c  01 20 42 e2                                      sub r2, r2, #1
004b7840  00 10 21 e0                                      eor r1, r1, r0
004b7844  01 10 43 e5                                      strb r1, [r3, #-1]
004b7848  01 30 83 e2                                      add r3, r3, #1
004b784c  f0 ff ff 8a                                      bhi #0x4b7814
004b7850  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b7854  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b7858  03 30 96 e7                                      ldr r3, [r6, r3]
004b785c  00 30 93 e5                                      ldr r3, [r3]
004b7860  00 00 53 e1                                      cmp r3, r0
004b7864  01 00 00 0a                                      beq #0x4b7870
004b7868  1c d0 8d e2                                      add sp, sp, #0x1c
004b786c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b7870  00 01 a0 e1                                      lsl r0, r0, #2
004b7874  01 10 a0 e3                                      mov r1, #1
004b7878  3b 63 f9 eb                                      bl #0x31056c
004b787c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b7880  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b7884  09 30 96 e7                                      ldr r3, [r6, sb]
004b7888  00 00 52 e3                                      cmp r2, #0
004b788c  00 00 83 e5                                      str r0, [r3]
004b7890  f4 ff ff 0a                                      beq #0x4b7868
004b7894  10 a0 8d e2                                      add sl, sp, #0x10
004b7898  01 80 a0 e3                                      mov r8, #1
004b789c  08 10 8a e0                                      add r1, sl, r8
004b78a0  02 30 8a e2                                      add r3, sl, #2
004b78a4  00 40 a0 e3                                      mov r4, #0
004b78a8  0a 00 8d e8                                      stm sp, {r1, r3}
004b78ac  07 00 a0 e1                                      mov r0, r7
004b78b0  0a 10 a0 e1                                      mov r1, sl
004b78b4  39 9e fc eb                                      bl #0x3df1a0
004b78b8  00 00 58 e3                                      cmp r8, #0
004b78bc  0c 80 8d e5                                      str r8, [sp, #0xc]
004b78c0  0f 00 00 1a                                      bne #0x4b7904
004b78c4  00 30 9d e5                                      ldr r3, [sp]
004b78c8  04 20 9d e5                                      ldr r2, [sp, #4]
004b78cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b78d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b78d4  03 00 52 e1                                      cmp r2, r3
004b78d8  01 10 20 e0                                      eor r1, r0, r1
004b78dc  01 10 43 e5                                      strb r1, [r3, #-1]
004b78e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b78e4  00 10 21 e0                                      eor r1, r1, r0
004b78e8  01 10 c2 e5                                      strb r1, [r2, #1]
004b78ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b78f0  01 20 42 e2                                      sub r2, r2, #1
004b78f4  00 10 21 e0                                      eor r1, r1, r0
004b78f8  01 10 43 e5                                      strb r1, [r3, #-1]
004b78fc  01 30 83 e2                                      add r3, r3, #1
004b7900  f1 ff ff 8a                                      bhi #0x4b78cc
004b7904  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b7908  09 50 96 e7                                      ldr r5, [r6, sb]
004b790c  01 10 a0 e3                                      mov r1, #1
004b7910  01 00 80 e0                                      add r0, r0, r1
004b7914  00 b0 95 e5                                      ldr fp, [r5]
004b7918  13 63 f9 eb                                      bl #0x31056c
004b791c  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b7920  00 30 95 e5                                      ldr r3, [r5]
004b7924  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b7928  07 00 a0 e1                                      mov r0, r7
004b792c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b7930  00 30 a0 e3                                      mov r3, #0
004b7934  c6 7e f9 eb                                      bl #0x317454
004b7938  00 30 95 e5                                      ldr r3, [r5]
004b793c  00 10 a0 e3                                      mov r1, #0
004b7940  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b7944  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b7948  01 40 84 e2                                      add r4, r4, #1
004b794c  03 10 c2 e7                                      strb r1, [r2, r3]
004b7950  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b7954  04 00 53 e1                                      cmp r3, r4
004b7958  d3 ff ff 8a                                      bhi #0x4b78ac
004b795c  c1 ff ff ea                                      b #0x4b7868
; mapping-symbol data/literal pool
004b7960  98 d2 4d 00 cc 33 00 00 68 47 00 00              .byte 0x98, 0xd2, 0x4d, 0x00, 0xcc, 0x33, 0x00, 0x00, 0x68, 0x47, 0x00, 0x00

; FUNCTION 0x004b796c, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::RectTable
; alias: _ZN6Arrays9RectTable9skipNamesEP11IStreamBase
; demangled: Arrays::RectTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b796c  98 ff ff ea                                      b #0x4b77d4
