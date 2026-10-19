; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048c810, declared_size=140, range_size=140, mode=arm
; class-group: std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> >
; alias: _ZNSaISt4pairIPKN3rnd4ExitENS0_8ListElemEEE11_M_allocateEjRj
; demangled: std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0048c810  10 40 2d e9                                      push {r4, lr}
0048c814  c3 30 03 e3                                      movw r3, #0x30c3
0048c818  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0048c81c  03 00 51 e1                                      cmp r1, r3
0048c820  08 d0 4d e2                                      sub sp, sp, #8
0048c824  02 40 a0 e1                                      mov r4, r2
0048c828  15 00 00 8a                                      bhi #0x48c884
0048c82c  00 00 51 e3                                      cmp r1, #0
0048c830  01 00 a0 01                                      moveq r0, r1
0048c834  01 00 00 1a                                      bne #0x48c840
0048c838  08 d0 8d e2                                      add sp, sp, #8
0048c83c  10 80 bd e8                                      pop {r4, pc}
0048c840  54 00 a0 e3                                      mov r0, #0x54
0048c844  90 01 00 e0                                      mul r0, r0, r1
0048c848  80 00 50 e3                                      cmp r0, #0x80
0048c84c  04 00 8d e5                                      str r0, [sp, #4]
0048c850  09 00 00 8a                                      bhi #0x48c87c
0048c854  04 00 8d e2                                      add r0, sp, #4
0048c858  98 f1 09 eb                                      bl #0x708ec0
0048c85c  04 20 9d e5                                      ldr r2, [sp, #4]
0048c860  31 3c 00 e3                                      movw r3, #0xc31
0048c864  c3 30 43 e3                                      movt r3, #0x30c3
0048c868  22 21 a0 e1                                      lsr r2, r2, #2
0048c86c  93 12 83 e0                                      umull r1, r3, r3, r2
0048c870  23 31 a0 e1                                      lsr r3, r3, #2
0048c874  00 30 84 e5                                      str r3, [r4]
0048c878  ee ff ff ea                                      b #0x48c838
0048c87c  f4 0e fa eb                                      bl #0x310454
0048c880  f5 ff ff ea                                      b #0x48c85c
0048c884  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0048c888  00 00 8f e0                                      add r0, pc, r0
0048c88c  0c 06 fa eb                                      bl #0x30e0c4
0048c890  01 00 a0 e3                                      mov r0, #1
0048c894  6b 05 fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0048c898  e8 1b 43 00                                      .byte 0xe8, 0x1b, 0x43, 0x00
