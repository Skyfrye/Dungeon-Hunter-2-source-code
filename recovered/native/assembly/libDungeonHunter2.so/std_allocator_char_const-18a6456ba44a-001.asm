; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048c89c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<char const*>
; alias: _ZNSaIPKcE11_M_allocateEjRj
; demangled: std::allocator<char const*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0048c89c  10 40 2d e9                                      push {r4, lr}
0048c8a0  07 01 71 e3                                      cmn r1, #0xc0000001
0048c8a4  08 d0 4d e2                                      sub sp, sp, #8
0048c8a8  02 40 a0 e1                                      mov r4, r2
0048c8ac  10 00 00 8a                                      bhi #0x48c8f4
0048c8b0  00 00 51 e3                                      cmp r1, #0
0048c8b4  01 00 a0 01                                      moveq r0, r1
0048c8b8  01 00 00 1a                                      bne #0x48c8c4
0048c8bc  08 d0 8d e2                                      add sp, sp, #8
0048c8c0  10 80 bd e8                                      pop {r4, pc}
0048c8c4  01 01 a0 e1                                      lsl r0, r1, #2
0048c8c8  80 00 50 e3                                      cmp r0, #0x80
0048c8cc  04 00 8d e5                                      str r0, [sp, #4]
0048c8d0  05 00 00 8a                                      bhi #0x48c8ec
0048c8d4  04 00 8d e2                                      add r0, sp, #4
0048c8d8  78 f1 09 eb                                      bl #0x708ec0
0048c8dc  04 30 9d e5                                      ldr r3, [sp, #4]
0048c8e0  23 31 a0 e1                                      lsr r3, r3, #2
0048c8e4  00 30 84 e5                                      str r3, [r4]
0048c8e8  f3 ff ff ea                                      b #0x48c8bc
0048c8ec  d8 0e fa eb                                      bl #0x310454
0048c8f0  f9 ff ff ea                                      b #0x48c8dc
0048c8f4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0048c8f8  00 00 8f e0                                      add r0, pc, r0
0048c8fc  f0 05 fa eb                                      bl #0x30e0c4
0048c900  01 00 a0 e3                                      mov r0, #1
0048c904  4f 05 fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0048c908  78 1b 43 00                                      .byte 0x78, 0x1b, 0x43, 0x00
