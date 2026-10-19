; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052a12c, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<SearchFailCache::Entry>
; alias: _ZNSaIN15SearchFailCache5EntryEE11_M_allocateEjRj
; demangled: std::allocator<SearchFailCache::Entry>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0052a12c  10 40 2d e9                                      push {r4, lr}
0052a130  55 35 05 e3                                      movw r3, #0x5555
0052a134  03 37 83 e1                                      orr r3, r3, r3, lsl #14
0052a138  03 00 51 e1                                      cmp r1, r3
0052a13c  08 d0 4d e2                                      sub sp, sp, #8
0052a140  02 40 a0 e1                                      mov r4, r2
0052a144  14 00 00 8a                                      bhi #0x52a19c
0052a148  00 00 51 e3                                      cmp r1, #0
0052a14c  01 00 a0 01                                      moveq r0, r1
0052a150  01 00 00 1a                                      bne #0x52a15c
0052a154  08 d0 8d e2                                      add sp, sp, #8
0052a158  10 80 bd e8                                      pop {r4, pc}
0052a15c  0c 00 a0 e3                                      mov r0, #0xc
0052a160  90 01 00 e0                                      mul r0, r0, r1
0052a164  80 00 50 e3                                      cmp r0, #0x80
0052a168  04 00 8d e5                                      str r0, [sp, #4]
0052a16c  08 00 00 8a                                      bhi #0x52a194
0052a170  04 00 8d e2                                      add r0, sp, #4
0052a174  51 7b 07 eb                                      bl #0x708ec0
0052a178  04 20 9d e5                                      ldr r2, [sp, #4]
0052a17c  ab 3a 0a e3                                      movw r3, #0xaaab
0052a180  aa 3a 4a e3                                      movt r3, #0xaaaa
0052a184  93 12 83 e0                                      umull r1, r3, r3, r2
0052a188  a3 31 a0 e1                                      lsr r3, r3, #3
0052a18c  00 30 84 e5                                      str r3, [r4]
0052a190  ef ff ff ea                                      b #0x52a154
0052a194  ae 98 f7 eb                                      bl #0x310454
0052a198  f6 ff ff ea                                      b #0x52a178
0052a19c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0052a1a0  00 00 8f e0                                      add r0, pc, r0
0052a1a4  c6 8f f7 eb                                      bl #0x30e0c4
0052a1a8  01 00 a0 e3                                      mov r0, #1
0052a1ac  25 8f f7 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0052a1b0  d0 42 39 00                                      .byte 0xd0, 0x42, 0x39, 0x00
