; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052d9b4, declared_size=404, range_size=404, mode=arm
; class-group: std::deque<unsigned int, std::allocator<unsigned int> >
; alias: _ZNSt5dequeIjSaIjEE18_M_push_back_aux_vERKj
; demangled: std::deque<unsigned int, std::allocator<unsigned int> >::_M_push_back_aux_v(unsigned int const&)
; decoder-mode: arm
0052d9b4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0052d9b8  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
0052d9bc  20 20 90 e5                                      ldr r2, [r0, #0x20]
0052d9c0  24 30 90 e5                                      ldr r3, [r0, #0x24]
0052d9c4  01 50 a0 e1                                      mov r5, r1
0052d9c8  0a 10 62 e0                                      rsb r1, r2, sl
0052d9cc  41 11 43 e0                                      sub r1, r3, r1, asr #2
0052d9d0  01 00 51 e3                                      cmp r1, #1
0052d9d4  08 d0 4d e2                                      sub sp, sp, #8
0052d9d8  00 40 a0 e1                                      mov r4, r0
0052d9dc  11 00 00 9a                                      bls #0x52da28
0052d9e0  80 30 a0 e3                                      mov r3, #0x80
0052d9e4  08 00 8d e2                                      add r0, sp, #8
0052d9e8  04 30 20 e5                                      str r3, [r0, #-4]!
0052d9ec  33 6d 07 eb                                      bl #0x708ec0
0052d9f0  04 00 8a e5                                      str r0, [sl, #4]
0052d9f4  00 20 95 e5                                      ldr r2, [r5]
0052d9f8  10 30 94 e5                                      ldr r3, [r4, #0x10]
0052d9fc  00 20 83 e5                                      str r2, [r3]
0052da00  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0052da04  04 20 83 e2                                      add r2, r3, #4
0052da08  1c 20 84 e5                                      str r2, [r4, #0x1c]
0052da0c  04 30 93 e5                                      ldr r3, [r3, #4]
0052da10  80 20 83 e2                                      add r2, r3, #0x80
0052da14  10 30 84 e5                                      str r3, [r4, #0x10]
0052da18  18 20 84 e5                                      str r2, [r4, #0x18]
0052da1c  14 30 84 e5                                      str r3, [r4, #0x14]
0052da20  08 d0 8d e2                                      add sp, sp, #8
0052da24  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0052da28  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0052da2c  0a 70 61 e0                                      rsb r7, r1, sl
0052da30  47 71 a0 e1                                      asr r7, r7, #2
0052da34  01 70 87 e2                                      add r7, r7, #1
0052da38  01 90 87 e2                                      add sb, r7, #1
0052da3c  89 00 53 e1                                      cmp r3, sb, lsl #1
0052da40  0a 00 00 9a                                      bls #0x52da70
0052da44  03 60 69 e0                                      rsb r6, sb, r3
0052da48  a6 60 a0 e1                                      lsr r6, r6, #1
0052da4c  06 61 82 e0                                      add r6, r2, r6, lsl #2
0052da50  06 00 51 e1                                      cmp r1, r6
0052da54  2e 00 00 9a                                      bls #0x52db14
0052da58  04 20 8a e2                                      add r2, sl, #4
0052da5c  01 20 52 e0                                      subs r2, r2, r1
0052da60  1e 00 00 0a                                      beq #0x52dae0
0052da64  06 00 a0 e1                                      mov r0, r6
0052da68  32 81 f7 eb                                      bl #0x30df38
0052da6c  1b 00 00 ea                                      b #0x52dae0
0052da70  00 00 53 e3                                      cmp r3, #0
0052da74  03 20 a0 11                                      movne r2, r3
0052da78  01 20 a0 03                                      moveq r2, #1
0052da7c  02 80 83 e2                                      add r8, r3, #2
0052da80  02 80 88 e0                                      add r8, r8, r2
0052da84  08 10 a0 e1                                      mov r1, r8
0052da88  00 20 a0 e3                                      mov r2, #0
0052da8c  20 00 80 e2                                      add r0, r0, #0x20
0052da90  77 d4 ff eb                                      bl #0x522c74
0052da94  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0052da98  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0052da9c  08 60 69 e0                                      rsb r6, sb, r8
0052daa0  a6 60 a0 e1                                      lsr r6, r6, #1
0052daa4  04 20 82 e2                                      add r2, r2, #4
0052daa8  01 20 52 e0                                      subs r2, r2, r1
0052daac  00 a0 a0 e1                                      mov sl, r0
0052dab0  06 61 80 e0                                      add r6, r0, r6, lsl #2
0052dab4  20 00 00 1a                                      bne #0x52db3c
0052dab8  20 00 94 e5                                      ldr r0, [r4, #0x20]
0052dabc  24 10 94 e5                                      ldr r1, [r4, #0x24]
0052dac0  00 00 50 e3                                      cmp r0, #0
0052dac4  03 00 00 0a                                      beq #0x52dad8
0052dac8  01 11 a0 e1                                      lsl r1, r1, #2
0052dacc  80 00 51 e3                                      cmp r1, #0x80
0052dad0  17 00 00 8a                                      bhi #0x52db34
0052dad4  09 6d 07 eb                                      bl #0x708f00
0052dad8  20 a0 84 e5                                      str sl, [r4, #0x20]
0052dadc  24 80 84 e5                                      str r8, [r4, #0x24]
0052dae0  0c 60 84 e5                                      str r6, [r4, #0xc]
0052dae4  00 30 96 e5                                      ldr r3, [r6]
0052dae8  01 70 47 e2                                      sub r7, r7, #1
0052daec  07 a1 86 e0                                      add sl, r6, r7, lsl #2
0052daf0  80 20 83 e2                                      add r2, r3, #0x80
0052daf4  08 20 84 e5                                      str r2, [r4, #8]
0052daf8  04 30 84 e5                                      str r3, [r4, #4]
0052dafc  1c a0 84 e5                                      str sl, [r4, #0x1c]
0052db00  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
0052db04  80 20 83 e2                                      add r2, r3, #0x80
0052db08  18 20 84 e5                                      str r2, [r4, #0x18]
0052db0c  14 30 84 e5                                      str r3, [r4, #0x14]
0052db10  b2 ff ff ea                                      b #0x52d9e0
0052db14  04 20 8a e2                                      add r2, sl, #4
0052db18  02 20 61 e0                                      rsb r2, r1, r2
0052db1c  00 00 52 e3                                      cmp r2, #0
0052db20  ee ff ff da                                      ble #0x52dae0
0052db24  07 01 86 e0                                      add r0, r6, r7, lsl #2
0052db28  00 00 62 e0                                      rsb r0, r2, r0
0052db2c  01 81 f7 eb                                      bl #0x30df38
0052db30  ea ff ff ea                                      b #0x52dae0
0052db34  41 8a f7 eb                                      bl #0x310440
0052db38  e6 ff ff ea                                      b #0x52dad8
0052db3c  06 00 a0 e1                                      mov r0, r6
0052db40  fc 80 f7 eb                                      bl #0x30df38
0052db44  db ff ff ea                                      b #0x52dab8
