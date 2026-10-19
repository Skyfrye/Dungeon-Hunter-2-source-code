; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031be6c, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >
; alias: _ZNSt4priv11_Deque_baseIPSt6vectorIN3sfc6script3lua5ValueESaIS5_EESaIS8_EED2Ev
; demangled: std::priv::_Deque_base<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >::~_Deque_base()
; decoder-mode: arm
0031be6c  70 40 2d e9                                      push {r4, r5, r6, lr}
0031be70  00 60 a0 e1                                      mov r6, r0
0031be74  20 00 90 e5                                      ldr r0, [r0, #0x20]
0031be78  00 00 50 e3                                      cmp r0, #0
0031be7c  14 00 00 0a                                      beq #0x31bed4
0031be80  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
0031be84  0c 40 96 e5                                      ldr r4, [r6, #0xc]
0031be88  04 50 85 e2                                      add r5, r5, #4
0031be8c  05 00 54 e1                                      cmp r4, r5
0031be90  14 00 00 2a                                      bhs #0x31bee8
0031be94  00 00 94 e5                                      ldr r0, [r4]
0031be98  80 10 a0 e3                                      mov r1, #0x80
0031be9c  04 40 84 e2                                      add r4, r4, #4
0031bea0  00 00 50 e3                                      cmp r0, #0
0031bea4  00 00 00 0a                                      beq #0x31beac
0031bea8  14 b4 0f eb                                      bl #0x708f00
0031beac  04 00 55 e1                                      cmp r5, r4
0031beb0  f7 ff ff 8a                                      bhi #0x31be94
0031beb4  20 00 96 e5                                      ldr r0, [r6, #0x20]
0031beb8  24 10 96 e5                                      ldr r1, [r6, #0x24]
0031bebc  00 00 50 e3                                      cmp r0, #0
0031bec0  03 00 00 0a                                      beq #0x31bed4
0031bec4  01 11 a0 e1                                      lsl r1, r1, #2
0031bec8  80 00 51 e3                                      cmp r1, #0x80
0031becc  02 00 00 8a                                      bhi #0x31bedc
0031bed0  0a b4 0f eb                                      bl #0x708f00
0031bed4  06 00 a0 e1                                      mov r0, r6
0031bed8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031bedc  57 d1 ff eb                                      bl #0x310440
0031bee0  06 00 a0 e1                                      mov r0, r6
0031bee4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031bee8  24 10 96 e5                                      ldr r1, [r6, #0x24]
0031beec  f4 ff ff ea                                      b #0x31bec4

; FUNCTION 0x0031c1e4, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Deque_base<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >
; alias: _ZNSt4priv11_Deque_baseIPSt6vectorIN3sfc6script3lua5ValueESaIS5_EESaIS8_EE17_M_initialize_mapEj.clone.9
; demangled: std::priv::_Deque_base<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >::_M_initialize_map(unsigned int) [clone .clone.9]
; decoder-mode: arm
0031c1e4  08 30 a0 e3                                      mov r3, #8
0031c1e8  70 40 2d e9                                      push {r4, r5, r6, lr}
0031c1ec  03 10 a0 e1                                      mov r1, r3
0031c1f0  00 40 a0 e1                                      mov r4, r0
0031c1f4  24 30 80 e5                                      str r3, [r0, #0x24]
0031c1f8  00 20 a0 e3                                      mov r2, #0
0031c1fc  20 00 80 e2                                      add r0, r0, #0x20
0031c200  de fe ff eb                                      bl #0x31bd80
0031c204  00 50 a0 e1                                      mov r5, r0
0031c208  20 00 84 e5                                      str r0, [r4, #0x20]
0031c20c  04 00 a0 e1                                      mov r0, r4
0031c210  24 60 b0 e5                                      ldr r6, [r0, #0x24]!
0031c214  ea ff ff eb                                      bl #0x31c1c4
0031c218  01 60 46 e2                                      sub r6, r6, #1
0031c21c  a6 60 a0 e1                                      lsr r6, r6, #1
0031c220  06 01 85 e7                                      str r0, [r5, r6, lsl #2]
0031c224  06 31 85 e0                                      add r3, r5, r6, lsl #2
0031c228  0c 30 84 e5                                      str r3, [r4, #0xc]
0031c22c  06 21 95 e7                                      ldr r2, [r5, r6, lsl #2]
0031c230  1c 30 84 e5                                      str r3, [r4, #0x1c]
0031c234  80 30 82 e2                                      add r3, r2, #0x80
0031c238  0c 00 84 e9                                      stmib r4, {r2, r3}
0031c23c  06 31 95 e7                                      ldr r3, [r5, r6, lsl #2]
0031c240  00 20 84 e5                                      str r2, [r4]
0031c244  80 20 83 e2                                      add r2, r3, #0x80
0031c248  10 30 84 e5                                      str r3, [r4, #0x10]
0031c24c  18 20 84 e5                                      str r2, [r4, #0x18]
0031c250  14 30 84 e5                                      str r3, [r4, #0x14]
0031c254  70 80 bd e8                                      pop {r4, r5, r6, pc}
