; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048e2c0, declared_size=112, range_size=112, mode=arm
; class-group: std::pair<rnd::Exit const*, rnd::ListElem>* std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >
; alias: _ZNSt6vectorISt4pairIPKN3rnd4ExitENS1_8ListElemEESaIS6_EE20_M_allocate_and_copyIPS6_EESA_RjT_SC_
; demangled: std::pair<rnd::Exit const*, rnd::ListElem>* std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >::_M_allocate_and_copy<std::pair<rnd::Exit const*, rnd::ListElem>*>(unsigned int&, std::pair<rnd::Exit const*, rnd::ListElem>*, std::pair<rnd::Exit const*, rnd::ListElem>*)
; decoder-mode: arm
0048e2c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048e2c4  08 00 80 e2                                      add r0, r0, #8
0048e2c8  02 40 a0 e1                                      mov r4, r2
0048e2cc  01 20 a0 e1                                      mov r2, r1
0048e2d0  00 10 91 e5                                      ldr r1, [r1]
0048e2d4  03 50 a0 e1                                      mov r5, r3
0048e2d8  4c f9 ff eb                                      bl #0x48c810
0048e2dc  05 50 64 e0                                      rsb r5, r4, r5
0048e2e0  3d 3f 0c e3                                      movw r3, #0xcf3d
0048e2e4  45 51 a0 e1                                      asr r5, r5, #2
0048e2e8  f3 3c 43 e3                                      movt r3, #0x3cf3
0048e2ec  93 05 05 e0                                      mul r5, r3, r5
0048e2f0  00 70 a0 e1                                      mov r7, r0
0048e2f4  00 00 55 e3                                      cmp r5, #0
0048e2f8  0a 00 00 da                                      ble #0x48e328
0048e2fc  00 60 a0 e3                                      mov r6, #0
0048e300  06 30 94 e7                                      ldr r3, [r4, r6]
0048e304  06 10 84 e0                                      add r1, r4, r6
0048e308  06 00 87 e0                                      add r0, r7, r6
0048e30c  06 30 87 e7                                      str r3, [r7, r6]
0048e310  04 00 80 e2                                      add r0, r0, #4
0048e314  04 10 81 e2                                      add r1, r1, #4
0048e318  d8 ff ff eb                                      bl #0x48e280
0048e31c  01 50 55 e2                                      subs r5, r5, #1
0048e320  54 60 86 e2                                      add r6, r6, #0x54
0048e324  f5 ff ff 1a                                      bne #0x48e300
0048e328  07 00 a0 e1                                      mov r0, r7
0048e32c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
