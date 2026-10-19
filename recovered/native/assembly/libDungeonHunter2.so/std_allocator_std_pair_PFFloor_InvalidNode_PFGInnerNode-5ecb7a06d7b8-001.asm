; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051c754, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<std::pair<PFFloor::InvalidNode*, PFGInnerNode*> >
; alias: _ZNSaISt4pairIPN7PFFloor11InvalidNodeEP12PFGInnerNodeEE11_M_allocateEjRj
; demangled: std::allocator<std::pair<PFFloor::InvalidNode*, PFGInnerNode*> >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0051c754  10 40 2d e9                                      push {r4, lr}
0051c758  1e 02 71 e3                                      cmn r1, #0xe0000001
0051c75c  08 d0 4d e2                                      sub sp, sp, #8
0051c760  02 40 a0 e1                                      mov r4, r2
0051c764  10 00 00 8a                                      bhi #0x51c7ac
0051c768  00 00 51 e3                                      cmp r1, #0
0051c76c  01 00 a0 01                                      moveq r0, r1
0051c770  01 00 00 1a                                      bne #0x51c77c
0051c774  08 d0 8d e2                                      add sp, sp, #8
0051c778  10 80 bd e8                                      pop {r4, pc}
0051c77c  81 01 a0 e1                                      lsl r0, r1, #3
0051c780  80 00 50 e3                                      cmp r0, #0x80
0051c784  04 00 8d e5                                      str r0, [sp, #4]
0051c788  05 00 00 8a                                      bhi #0x51c7a4
0051c78c  04 00 8d e2                                      add r0, sp, #4
0051c790  ca b1 07 eb                                      bl #0x708ec0
0051c794  04 30 9d e5                                      ldr r3, [sp, #4]
0051c798  a3 31 a0 e1                                      lsr r3, r3, #3
0051c79c  00 30 84 e5                                      str r3, [r4]
0051c7a0  f3 ff ff ea                                      b #0x51c774
0051c7a4  2a cf f7 eb                                      bl #0x310454
0051c7a8  f9 ff ff ea                                      b #0x51c794
0051c7ac  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0051c7b0  00 00 8f e0                                      add r0, pc, r0
0051c7b4  42 c6 f7 eb                                      bl #0x30e0c4
0051c7b8  01 00 a0 e3                                      mov r0, #1
0051c7bc  a1 c5 f7 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0051c7c0  c0 1c 3a 00                                      .byte 0xc0, 0x1c, 0x3a, 0x00
