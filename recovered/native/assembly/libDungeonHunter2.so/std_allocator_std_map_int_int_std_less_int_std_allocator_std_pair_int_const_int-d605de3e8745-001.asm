; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00463bfc, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > > >
; alias: _ZNSaISt3mapIiiSt4lessIiESaISt4pairIKiiEEEE11_M_allocateEjRj
; demangled: std::allocator<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > > >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00463bfc  10 40 2d e9                                      push {r4, lr}
00463c00  aa 3a 0a e3                                      movw r3, #0xaaaa
00463c04  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00463c08  03 00 51 e1                                      cmp r1, r3
00463c0c  08 d0 4d e2                                      sub sp, sp, #8
00463c10  02 40 a0 e1                                      mov r4, r2
00463c14  14 00 00 8a                                      bhi #0x463c6c
00463c18  00 00 51 e3                                      cmp r1, #0
00463c1c  01 00 a0 01                                      moveq r0, r1
00463c20  01 00 00 1a                                      bne #0x463c2c
00463c24  08 d0 8d e2                                      add sp, sp, #8
00463c28  10 80 bd e8                                      pop {r4, pc}
00463c2c  18 00 a0 e3                                      mov r0, #0x18
00463c30  90 01 00 e0                                      mul r0, r0, r1
00463c34  80 00 50 e3                                      cmp r0, #0x80
00463c38  04 00 8d e5                                      str r0, [sp, #4]
00463c3c  08 00 00 8a                                      bhi #0x463c64
00463c40  04 00 8d e2                                      add r0, sp, #4
00463c44  9d 94 0a eb                                      bl #0x708ec0
00463c48  04 20 9d e5                                      ldr r2, [sp, #4]
00463c4c  ab 3a 0a e3                                      movw r3, #0xaaab
00463c50  aa 3a 4a e3                                      movt r3, #0xaaaa
00463c54  93 12 83 e0                                      umull r1, r3, r3, r2
00463c58  23 32 a0 e1                                      lsr r3, r3, #4
00463c5c  00 30 84 e5                                      str r3, [r4]
00463c60  ef ff ff ea                                      b #0x463c24
00463c64  fa b1 fa eb                                      bl #0x310454
00463c68  f6 ff ff ea                                      b #0x463c48
00463c6c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00463c70  00 00 8f e0                                      add r0, pc, r0
00463c74  12 a9 fa eb                                      bl #0x30e0c4
00463c78  01 00 a0 e3                                      mov r0, #1
00463c7c  71 a8 fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00463c80  00 a8 45 00                                      .byte 0x00, 0xa8, 0x45, 0x00
