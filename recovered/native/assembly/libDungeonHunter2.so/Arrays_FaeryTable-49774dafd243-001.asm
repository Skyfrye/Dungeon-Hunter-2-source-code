; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a82b4, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::FaeryTable
; alias: _ZN6Arrays10FaeryTable13finalizeNamesEv
; demangled: Arrays::FaeryTable::finalizeNames()
; decoder-mode: arm
004a82b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a82b8  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a82bc  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a82c0  05 50 8f e0                                      add r5, pc, r5
004a82c4  06 30 95 e7                                      ldr r3, [r5, r6]
004a82c8  00 30 93 e5                                      ldr r3, [r3]
004a82cc  00 00 53 e3                                      cmp r3, #0
004a82d0  1a 00 00 0a                                      beq #0x4a8340
004a82d4  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a82d8  07 20 95 e7                                      ldr r2, [r5, r7]
004a82dc  00 20 92 e5                                      ldr r2, [r2]
004a82e0  00 00 52 e3                                      cmp r2, #0
004a82e4  10 00 00 0a                                      beq #0x4a832c
004a82e8  00 40 a0 e3                                      mov r4, #0
004a82ec  01 00 00 ea                                      b #0x4a82f8
004a82f0  06 30 95 e7                                      ldr r3, [r5, r6]
004a82f4  00 30 93 e5                                      ldr r3, [r3]
004a82f8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a82fc  01 40 84 e2                                      add r4, r4, #1
004a8300  00 00 50 e3                                      cmp r0, #0
004a8304  02 00 00 0a                                      beq #0x4a8314
004a8308  4c a0 f9 eb                                      bl #0x310440
004a830c  06 30 95 e7                                      ldr r3, [r5, r6]
004a8310  00 30 93 e5                                      ldr r3, [r3]
004a8314  07 20 95 e7                                      ldr r2, [r5, r7]
004a8318  00 20 92 e5                                      ldr r2, [r2]
004a831c  04 00 52 e1                                      cmp r2, r4
004a8320  f2 ff ff 8a                                      bhi #0x4a82f0
004a8324  00 00 53 e3                                      cmp r3, #0
004a8328  01 00 00 0a                                      beq #0x4a8334
004a832c  03 00 a0 e1                                      mov r0, r3
004a8330  42 a0 f9 eb                                      bl #0x310440
004a8334  06 30 95 e7                                      ldr r3, [r5, r6]
004a8338  00 20 a0 e3                                      mov r2, #0
004a833c  00 20 83 e5                                      str r2, [r3]
004a8340  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8344  d0 c7 4e 00 d0 0e 00 00 d4 30 00 00              .byte 0xd0, 0xc7, 0x4e, 0x00, 0xd0, 0x0e, 0x00, 0x00, 0xd4, 0x30, 0x00, 0x00

; FUNCTION 0x004a8350, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::FaeryTable
; alias: _ZN6Arrays10FaeryTable8finalizeEv
; demangled: Arrays::FaeryTable::finalize()
; decoder-mode: arm
004a8350  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a8354  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a8358  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a835c  05 50 8f e0                                      add r5, pc, r5
004a8360  07 30 95 e7                                      ldr r3, [r5, r7]
004a8364  00 30 93 e5                                      ldr r3, [r3]
004a8368  00 00 53 e3                                      cmp r3, #0
004a836c  2c 00 00 0a                                      beq #0x4a8424
004a8370  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a8374  08 20 95 e7                                      ldr r2, [r5, r8]
004a8378  00 20 92 e5                                      ldr r2, [r2]
004a837c  00 00 52 e3                                      cmp r2, #0
004a8380  12 00 00 0a                                      beq #0x4a83d0
004a8384  00 40 a0 e3                                      mov r4, #0
004a8388  04 60 a0 e1                                      mov r6, r4
004a838c  01 00 00 ea                                      b #0x4a8398
004a8390  07 30 95 e7                                      ldr r3, [r5, r7]
004a8394  00 30 93 e5                                      ldr r3, [r3]
004a8398  04 00 83 e0                                      add r0, r3, r4
004a839c  04 30 93 e7                                      ldr r3, [r3, r4]
004a83a0  0f e0 a0 e1                                      mov lr, pc
004a83a4  08 f0 93 e5                                      ldr pc, [r3, #8]
004a83a8  08 30 95 e7                                      ldr r3, [r5, r8]
004a83ac  01 60 86 e2                                      add r6, r6, #1
004a83b0  24 40 84 e2                                      add r4, r4, #0x24
004a83b4  00 30 93 e5                                      ldr r3, [r3]
004a83b8  06 00 53 e1                                      cmp r3, r6
004a83bc  f3 ff ff 8a                                      bhi #0x4a8390
004a83c0  07 30 95 e7                                      ldr r3, [r5, r7]
004a83c4  00 30 93 e5                                      ldr r3, [r3]
004a83c8  00 00 53 e3                                      cmp r3, #0
004a83cc  11 00 00 0a                                      beq #0x4a8418
004a83d0  04 20 13 e5                                      ldr r2, [r3, #-4]
004a83d4  24 00 a0 e3                                      mov r0, #0x24
004a83d8  90 32 20 e0                                      mla r0, r0, r2, r3
004a83dc  00 00 53 e1                                      cmp r3, r0
004a83e0  01 00 00 1a                                      bne #0x4a83ec
004a83e4  09 00 00 ea                                      b #0x4a8410
004a83e8  04 00 a0 e1                                      mov r0, r4
004a83ec  24 40 40 e2                                      sub r4, r0, #0x24
004a83f0  24 30 10 e5                                      ldr r3, [r0, #-0x24]
004a83f4  04 00 a0 e1                                      mov r0, r4
004a83f8  0f e0 a0 e1                                      mov lr, pc
004a83fc  00 f0 93 e5                                      ldr pc, [r3]
004a8400  07 30 95 e7                                      ldr r3, [r5, r7]
004a8404  00 00 93 e5                                      ldr r0, [r3]
004a8408  04 00 50 e1                                      cmp r0, r4
004a840c  f5 ff ff 1a                                      bne #0x4a83e8
004a8410  08 00 40 e2                                      sub r0, r0, #8
004a8414  09 a0 f9 eb                                      bl #0x310440
004a8418  07 30 95 e7                                      ldr r3, [r5, r7]
004a841c  00 20 a0 e3                                      mov r2, #0
004a8420  00 20 83 e5                                      str r2, [r3]
004a8424  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a8428  34 c7 4e 00 f8 0e 00 00 d4 30 00 00              .byte 0x34, 0xc7, 0x4e, 0x00, 0xf8, 0x0e, 0x00, 0x00, 0xd4, 0x30, 0x00, 0x00

; FUNCTION 0x004b2468, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::FaeryTable
; alias: _ZN6Arrays10FaeryTable9readNamesEP11IStreamBase
; demangled: Arrays::FaeryTable::readNames(IStreamBase*)
; decoder-mode: arm
004b2468  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b246c  00 70 a0 e1                                      mov r7, r0
004b2470  1c d0 4d e2                                      sub sp, sp, #0x1c
004b2474  8e d7 ff eb                                      bl #0x4a82b4
004b2478  07 00 a0 e1                                      mov r0, r7
004b247c  83 85 f9 eb                                      bl #0x313a90
004b2480  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b2484  01 30 a0 e3                                      mov r3, #1
004b2488  00 00 53 e3                                      cmp r3, #0
004b248c  06 60 8f e0                                      add r6, pc, r6
004b2490  14 00 8d e5                                      str r0, [sp, #0x14]
004b2494  0c 30 8d e5                                      str r3, [sp, #0xc]
004b2498  12 00 00 1a                                      bne #0x4b24e8
004b249c  14 30 8d e2                                      add r3, sp, #0x14
004b24a0  02 20 83 e2                                      add r2, r3, #2
004b24a4  01 30 83 e2                                      add r3, r3, #1
004b24a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b24ac  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b24b0  03 00 52 e1                                      cmp r2, r3
004b24b4  02 40 a0 e1                                      mov r4, r2
004b24b8  01 10 20 e0                                      eor r1, r0, r1
004b24bc  01 10 43 e5                                      strb r1, [r3, #-1]
004b24c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b24c4  00 10 21 e0                                      eor r1, r1, r0
004b24c8  01 10 c2 e5                                      strb r1, [r2, #1]
004b24cc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b24d0  01 20 42 e2                                      sub r2, r2, #1
004b24d4  00 10 21 e0                                      eor r1, r1, r0
004b24d8  01 10 43 e5                                      strb r1, [r3, #-1]
004b24dc  01 30 83 e2                                      add r3, r3, #1
004b24e0  f0 ff ff 8a                                      bhi #0x4b24a8
004b24e4  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b24e8  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b24ec  03 30 96 e7                                      ldr r3, [r6, r3]
004b24f0  00 30 93 e5                                      ldr r3, [r3]
004b24f4  00 00 53 e1                                      cmp r3, r0
004b24f8  01 00 00 0a                                      beq #0x4b2504
004b24fc  1c d0 8d e2                                      add sp, sp, #0x1c
004b2500  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b2504  00 01 a0 e1                                      lsl r0, r0, #2
004b2508  01 10 a0 e3                                      mov r1, #1
004b250c  16 78 f9 eb                                      bl #0x31056c
004b2510  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b2514  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b2518  09 30 96 e7                                      ldr r3, [r6, sb]
004b251c  00 00 52 e3                                      cmp r2, #0
004b2520  00 00 83 e5                                      str r0, [r3]
004b2524  f4 ff ff 0a                                      beq #0x4b24fc
004b2528  10 a0 8d e2                                      add sl, sp, #0x10
004b252c  01 80 a0 e3                                      mov r8, #1
004b2530  08 10 8a e0                                      add r1, sl, r8
004b2534  02 30 8a e2                                      add r3, sl, #2
004b2538  00 40 a0 e3                                      mov r4, #0
004b253c  0a 00 8d e8                                      stm sp, {r1, r3}
004b2540  07 00 a0 e1                                      mov r0, r7
004b2544  0a 10 a0 e1                                      mov r1, sl
004b2548  14 b3 fc eb                                      bl #0x3df1a0
004b254c  00 00 58 e3                                      cmp r8, #0
004b2550  0c 80 8d e5                                      str r8, [sp, #0xc]
004b2554  0f 00 00 1a                                      bne #0x4b2598
004b2558  00 30 9d e5                                      ldr r3, [sp]
004b255c  04 20 9d e5                                      ldr r2, [sp, #4]
004b2560  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2564  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2568  03 00 52 e1                                      cmp r2, r3
004b256c  01 10 20 e0                                      eor r1, r0, r1
004b2570  01 10 43 e5                                      strb r1, [r3, #-1]
004b2574  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2578  00 10 21 e0                                      eor r1, r1, r0
004b257c  01 10 c2 e5                                      strb r1, [r2, #1]
004b2580  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b2584  01 20 42 e2                                      sub r2, r2, #1
004b2588  00 10 21 e0                                      eor r1, r1, r0
004b258c  01 10 43 e5                                      strb r1, [r3, #-1]
004b2590  01 30 83 e2                                      add r3, r3, #1
004b2594  f1 ff ff 8a                                      bhi #0x4b2560
004b2598  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b259c  09 50 96 e7                                      ldr r5, [r6, sb]
004b25a0  01 10 a0 e3                                      mov r1, #1
004b25a4  01 00 80 e0                                      add r0, r0, r1
004b25a8  00 b0 95 e5                                      ldr fp, [r5]
004b25ac  ee 77 f9 eb                                      bl #0x31056c
004b25b0  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b25b4  00 30 95 e5                                      ldr r3, [r5]
004b25b8  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b25bc  07 00 a0 e1                                      mov r0, r7
004b25c0  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b25c4  00 30 a0 e3                                      mov r3, #0
004b25c8  a1 93 f9 eb                                      bl #0x317454
004b25cc  00 30 95 e5                                      ldr r3, [r5]
004b25d0  00 10 a0 e3                                      mov r1, #0
004b25d4  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b25d8  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b25dc  01 40 84 e2                                      add r4, r4, #1
004b25e0  03 10 c2 e7                                      strb r1, [r2, r3]
004b25e4  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b25e8  04 00 53 e1                                      cmp r3, r4
004b25ec  d3 ff ff 8a                                      bhi #0x4b2540
004b25f0  c1 ff ff ea                                      b #0x4b24fc
; mapping-symbol data/literal pool
004b25f4  04 26 4e 00 d4 30 00 00 d0 0e 00 00              .byte 0x04, 0x26, 0x4e, 0x00, 0xd4, 0x30, 0x00, 0x00, 0xd0, 0x0e, 0x00, 0x00

; FUNCTION 0x004b2600, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::FaeryTable
; alias: _ZN6Arrays10FaeryTable9skipNamesEP11IStreamBase
; demangled: Arrays::FaeryTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b2600  98 ff ff ea                                      b #0x4b2468

; FUNCTION 0x004bbfe0, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::FaeryTable
; alias: _ZN6Arrays10FaeryTable4readEP11IStreamBase
; demangled: Arrays::FaeryTable::read(IStreamBase*)
; decoder-mode: arm
004bbfe0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bbfe4  0c d0 4d e2                                      sub sp, sp, #0xc
004bbfe8  00 a0 a0 e1                                      mov sl, r0
004bbfec  a7 5e f9 eb                                      bl #0x313a90
004bbff0  24 61 9f e5                                      ldr r6, [pc, #0x124]
004bbff4  01 30 a0 e3                                      mov r3, #1
004bbff8  00 00 53 e3                                      cmp r3, #0
004bbffc  04 00 8d e5                                      str r0, [sp, #4]
004bc000  00 30 8d e5                                      str r3, [sp]
004bc004  06 60 8f e0                                      add r6, pc, r6
004bc008  10 00 00 1a                                      bne #0x4bc050
004bc00c  04 30 8d e2                                      add r3, sp, #4
004bc010  02 20 83 e2                                      add r2, r3, #2
004bc014  01 30 83 e2                                      add r3, r3, #1
004bc018  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc01c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bc020  03 00 52 e1                                      cmp r2, r3
004bc024  01 10 20 e0                                      eor r1, r0, r1
004bc028  01 10 43 e5                                      strb r1, [r3, #-1]
004bc02c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bc030  00 10 21 e0                                      eor r1, r1, r0
004bc034  01 10 c2 e5                                      strb r1, [r2, #1]
004bc038  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bc03c  01 20 42 e2                                      sub r2, r2, #1
004bc040  00 10 21 e0                                      eor r1, r1, r0
004bc044  01 10 43 e5                                      strb r1, [r3, #-1]
004bc048  01 30 83 e2                                      add r3, r3, #1
004bc04c  f1 ff ff 8a                                      bhi #0x4bc018
004bc050  be b0 ff eb                                      bl #0x4a8350
004bc054  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004bc058  04 40 9d e5                                      ldr r4, [sp, #4]
004bc05c  24 50 a0 e3                                      mov r5, #0x24
004bc060  07 30 96 e7                                      ldr r3, [r6, r7]
004bc064  95 04 00 e0                                      mul r0, r5, r4
004bc068  00 40 83 e5                                      str r4, [r3]
004bc06c  08 00 80 e2                                      add r0, r0, #8
004bc070  01 10 a0 e3                                      mov r1, #1
004bc074  3c 51 f9 eb                                      bl #0x31056c
004bc078  00 00 54 e3                                      cmp r4, #0
004bc07c  00 50 80 e5                                      str r5, [r0]
004bc080  04 40 80 e5                                      str r4, [r0, #4]
004bc084  08 30 80 e2                                      add r3, r0, #8
004bc088  0a 00 00 0a                                      beq #0x4bc0b8
004bc08c  90 10 9f e5                                      ldr r1, [pc, #0x90]
004bc090  00 20 a0 e3                                      mov r2, #0
004bc094  02 c0 a0 e1                                      mov ip, r2
004bc098  01 10 96 e7                                      ldr r1, [r6, r1]
004bc09c  08 10 81 e2                                      add r1, r1, #8
004bc0a0  01 20 82 e2                                      add r2, r2, #1
004bc0a4  04 00 52 e1                                      cmp r2, r4
004bc0a8  08 10 80 e5                                      str r1, [r0, #8]
004bc0ac  20 c0 80 e5                                      str ip, [r0, #0x20]
004bc0b0  24 00 80 e2                                      add r0, r0, #0x24
004bc0b4  f9 ff ff 1a                                      bne #0x4bc0a0
004bc0b8  07 20 96 e7                                      ldr r2, [r6, r7]
004bc0bc  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bc0c0  00 10 92 e5                                      ldr r1, [r2]
004bc0c4  08 20 96 e7                                      ldr r2, [r6, r8]
004bc0c8  00 00 51 e3                                      cmp r1, #0
004bc0cc  00 30 82 e5                                      str r3, [r2]
004bc0d0  0f 00 00 0a                                      beq #0x4bc114
004bc0d4  00 40 a0 e3                                      mov r4, #0
004bc0d8  04 50 a0 e1                                      mov r5, r4
004bc0dc  01 00 00 ea                                      b #0x4bc0e8
004bc0e0  08 30 96 e7                                      ldr r3, [r6, r8]
004bc0e4  00 30 93 e5                                      ldr r3, [r3]
004bc0e8  04 00 83 e0                                      add r0, r3, r4
004bc0ec  0a 10 a0 e1                                      mov r1, sl
004bc0f0  04 30 93 e7                                      ldr r3, [r3, r4]
004bc0f4  0f e0 a0 e1                                      mov lr, pc
004bc0f8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bc0fc  07 30 96 e7                                      ldr r3, [r6, r7]
004bc100  01 50 85 e2                                      add r5, r5, #1
004bc104  24 40 84 e2                                      add r4, r4, #0x24
004bc108  00 30 93 e5                                      ldr r3, [r3]
004bc10c  05 00 53 e1                                      cmp r3, r5
004bc110  f2 ff ff 8a                                      bhi #0x4bc0e0
004bc114  0c d0 8d e2                                      add sp, sp, #0xc
004bc118  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bc11c  8c 8a 4d 00 d4 30 00 00 28 28 00 00 f8 0e 00 00  .byte 0x8c, 0x8a, 0x4d, 0x00, 0xd4, 0x30, 0x00, 0x00, 0x28, 0x28, 0x00, 0x00, 0xf8, 0x0e, 0x00, 0x00
