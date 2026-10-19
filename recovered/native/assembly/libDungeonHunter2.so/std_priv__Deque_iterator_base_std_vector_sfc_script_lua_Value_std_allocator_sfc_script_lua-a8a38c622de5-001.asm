; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031b618, declared_size=68, range_size=68, mode=arm
; class-group: std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*>
; alias: _ZNKSt4priv20_Deque_iterator_baseIPSt6vectorIN3sfc6script3lua5ValueESaIS5_EEE11_M_subtractERKS9_
; demangled: std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*>::_M_subtract(std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> const&) const
; decoder-mode: arm
0031b618  30 00 2d e9                                      push {r4, r5}
0031b61c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
0031b620  00 50 90 e5                                      ldr r5, [r0]
0031b624  04 20 90 e5                                      ldr r2, [r0, #4]
0031b628  0c 40 90 e5                                      ldr r4, [r0, #0xc]
0031b62c  08 30 91 e5                                      ldr r3, [r1, #8]
0031b630  00 10 91 e5                                      ldr r1, [r1]
0031b634  05 20 62 e0                                      rsb r2, r2, r5
0031b638  04 00 6c e0                                      rsb r0, ip, r4
0031b63c  03 30 61 e0                                      rsb r3, r1, r3
0031b640  42 21 a0 e1                                      asr r2, r2, #2
0031b644  40 01 a0 e1                                      asr r0, r0, #2
0031b648  43 31 82 e0                                      add r3, r2, r3, asr #2
0031b64c  01 00 40 e2                                      sub r0, r0, #1
0031b650  80 02 83 e0                                      add r0, r3, r0, lsl #5
0031b654  30 00 bd e8                                      pop {r4, r5}
0031b658  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031bad0, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*>
; alias: _ZNSt4priv20_Deque_iterator_baseIPSt6vectorIN3sfc6script3lua5ValueESaIS5_EEE10_M_advanceEi
; demangled: std::priv::_Deque_iterator_base<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*>::_M_advance(int)
; decoder-mode: arm
0031bad0  00 30 90 e5                                      ldr r3, [r0]
0031bad4  04 20 90 e5                                      ldr r2, [r0, #4]
0031bad8  04 40 2d e5                                      str r4, [sp, #-4]!
0031badc  03 20 62 e0                                      rsb r2, r2, r3
0031bae0  42 21 81 e0                                      add r2, r1, r2, asr #2
0031bae4  02 c0 e0 e1                                      mvn ip, r2
0031bae8  ac 4f a0 e1                                      lsr r4, ip, #0x1f
0031baec  1f 00 52 e3                                      cmp r2, #0x1f
0031baf0  00 40 a0 c3                                      movgt r4, #0
0031baf4  01 40 04 d2                                      andle r4, r4, #1
0031baf8  00 00 54 e3                                      cmp r4, #0
0031bafc  01 31 83 10                                      addne r3, r3, r1, lsl #2
0031bb00  00 30 80 15                                      strne r3, [r0]
0031bb04  0c 00 00 1a                                      bne #0x31bb3c
0031bb08  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0031bb0c  00 00 52 e3                                      cmp r2, #0
0031bb10  a2 32 a0 c1                                      lsrgt r3, r2, #5
0031bb14  ac 32 e0 d1                                      mvnle r3, ip, lsr #5
0031bb18  03 c1 81 e0                                      add ip, r1, r3, lsl #2
0031bb1c  0c c0 80 e5                                      str ip, [r0, #0xc]
0031bb20  83 22 42 e0                                      sub r2, r2, r3, lsl #5
0031bb24  03 31 91 e7                                      ldr r3, [r1, r3, lsl #2]
0031bb28  02 21 83 e0                                      add r2, r3, r2, lsl #2
0031bb2c  80 10 83 e2                                      add r1, r3, #0x80
0031bb30  00 20 80 e5                                      str r2, [r0]
0031bb34  08 10 80 e5                                      str r1, [r0, #8]
0031bb38  04 30 80 e5                                      str r3, [r0, #4]
0031bb3c  10 00 bd e8                                      ldm sp!, {r4}
0031bb40  1e ff 2f e1                                      bx lr
