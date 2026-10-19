; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048c9f8, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<rnd::RPElem>
; alias: _ZNSaIN3rnd6RPElemEE11_M_allocateEjRj
; demangled: std::allocator<rnd::RPElem>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0048c9f8  10 40 2d e9                                      push {r4, lr}
0048c9fc  aa 3a 0a e3                                      movw r3, #0xaaaa
0048ca00  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0048ca04  03 00 51 e1                                      cmp r1, r3
0048ca08  08 d0 4d e2                                      sub sp, sp, #8
0048ca0c  02 40 a0 e1                                      mov r4, r2
0048ca10  14 00 00 8a                                      bhi #0x48ca68
0048ca14  00 00 51 e3                                      cmp r1, #0
0048ca18  01 00 a0 01                                      moveq r0, r1
0048ca1c  01 00 00 1a                                      bne #0x48ca28
0048ca20  08 d0 8d e2                                      add sp, sp, #8
0048ca24  10 80 bd e8                                      pop {r4, pc}
0048ca28  18 00 a0 e3                                      mov r0, #0x18
0048ca2c  90 01 00 e0                                      mul r0, r0, r1
0048ca30  80 00 50 e3                                      cmp r0, #0x80
0048ca34  04 00 8d e5                                      str r0, [sp, #4]
0048ca38  08 00 00 8a                                      bhi #0x48ca60
0048ca3c  04 00 8d e2                                      add r0, sp, #4
0048ca40  1e f1 09 eb                                      bl #0x708ec0
0048ca44  04 20 9d e5                                      ldr r2, [sp, #4]
0048ca48  ab 3a 0a e3                                      movw r3, #0xaaab
0048ca4c  aa 3a 4a e3                                      movt r3, #0xaaaa
0048ca50  93 12 83 e0                                      umull r1, r3, r3, r2
0048ca54  23 32 a0 e1                                      lsr r3, r3, #4
0048ca58  00 30 84 e5                                      str r3, [r4]
0048ca5c  ef ff ff ea                                      b #0x48ca20
0048ca60  7b 0e fa eb                                      bl #0x310454
0048ca64  f6 ff ff ea                                      b #0x48ca44
0048ca68  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0048ca6c  00 00 8f e0                                      add r0, pc, r0
0048ca70  93 05 fa eb                                      bl #0x30e0c4
0048ca74  01 00 a0 e3                                      mov r0, #1
0048ca78  f2 04 fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0048ca7c  04 1a 43 00                                      .byte 0x04, 0x1a, 0x43, 0x00
