; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051032c, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<PolyStat>
; alias: _ZNSaI8PolyStatE11_M_allocateEjRj
; demangled: std::allocator<PolyStat>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0051032c  10 40 2d e9                                      push {r4, lr}
00510330  49 32 09 e3                                      movw r3, #0x9249
00510334  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00510338  03 00 51 e1                                      cmp r1, r3
0051033c  08 d0 4d e2                                      sub sp, sp, #8
00510340  02 40 a0 e1                                      mov r4, r2
00510344  14 00 00 8a                                      bhi #0x51039c
00510348  00 00 51 e3                                      cmp r1, #0
0051034c  01 00 a0 01                                      moveq r0, r1
00510350  01 00 00 1a                                      bne #0x51035c
00510354  08 d0 8d e2                                      add sp, sp, #8
00510358  10 80 bd e8                                      pop {r4, pc}
0051035c  1c 00 a0 e3                                      mov r0, #0x1c
00510360  90 01 00 e0                                      mul r0, r0, r1
00510364  80 00 50 e3                                      cmp r0, #0x80
00510368  04 00 8d e5                                      str r0, [sp, #4]
0051036c  08 00 00 8a                                      bhi #0x510394
00510370  04 00 8d e2                                      add r0, sp, #4
00510374  d1 e2 07 eb                                      bl #0x708ec0
00510378  04 20 9d e5                                      ldr r2, [sp, #4]
0051037c  25 39 04 e3                                      movw r3, #0x4925
00510380  92 34 42 e3                                      movt r3, #0x2492
00510384  22 21 a0 e1                                      lsr r2, r2, #2
00510388  93 12 83 e0                                      umull r1, r3, r3, r2
0051038c  00 30 84 e5                                      str r3, [r4]
00510390  ef ff ff ea                                      b #0x510354
00510394  2e 00 f8 eb                                      bl #0x310454
00510398  f6 ff ff ea                                      b #0x510378
0051039c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
005103a0  00 00 8f e0                                      add r0, pc, r0
005103a4  46 f7 f7 eb                                      bl #0x30e0c4
005103a8  01 00 a0 e3                                      mov r0, #1
005103ac  a5 f6 f7 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
005103b0  d0 e0 3a 00                                      .byte 0xd0, 0xe0, 0x3a, 0x00
