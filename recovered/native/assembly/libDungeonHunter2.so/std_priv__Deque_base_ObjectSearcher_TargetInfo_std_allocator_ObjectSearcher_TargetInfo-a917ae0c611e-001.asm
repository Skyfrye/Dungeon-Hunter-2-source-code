; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038c87c, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<ObjectSearcher::TargetInfo, std::allocator<ObjectSearcher::TargetInfo> >
; alias: _ZNSt4priv11_Deque_baseIN14ObjectSearcher10TargetInfoESaIS2_EED2Ev
; demangled: std::priv::_Deque_base<ObjectSearcher::TargetInfo, std::allocator<ObjectSearcher::TargetInfo> >::~_Deque_base()
; decoder-mode: arm
0038c87c  70 40 2d e9                                      push {r4, r5, r6, lr}
0038c880  00 60 a0 e1                                      mov r6, r0
0038c884  20 00 90 e5                                      ldr r0, [r0, #0x20]
0038c888  00 00 50 e3                                      cmp r0, #0
0038c88c  14 00 00 0a                                      beq #0x38c8e4
0038c890  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
0038c894  0c 40 96 e5                                      ldr r4, [r6, #0xc]
0038c898  04 50 85 e2                                      add r5, r5, #4
0038c89c  05 00 54 e1                                      cmp r4, r5
0038c8a0  14 00 00 2a                                      bhs #0x38c8f8
0038c8a4  00 00 94 e5                                      ldr r0, [r4]
0038c8a8  78 10 a0 e3                                      mov r1, #0x78
0038c8ac  04 40 84 e2                                      add r4, r4, #4
0038c8b0  00 00 50 e3                                      cmp r0, #0
0038c8b4  00 00 00 0a                                      beq #0x38c8bc
0038c8b8  90 f1 0d eb                                      bl #0x708f00
0038c8bc  04 00 55 e1                                      cmp r5, r4
0038c8c0  f7 ff ff 8a                                      bhi #0x38c8a4
0038c8c4  20 00 96 e5                                      ldr r0, [r6, #0x20]
0038c8c8  24 10 96 e5                                      ldr r1, [r6, #0x24]
0038c8cc  00 00 50 e3                                      cmp r0, #0
0038c8d0  03 00 00 0a                                      beq #0x38c8e4
0038c8d4  01 11 a0 e1                                      lsl r1, r1, #2
0038c8d8  80 00 51 e3                                      cmp r1, #0x80
0038c8dc  02 00 00 8a                                      bhi #0x38c8ec
0038c8e0  86 f1 0d eb                                      bl #0x708f00
0038c8e4  06 00 a0 e1                                      mov r0, r6
0038c8e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0038c8ec  d3 0e fe eb                                      bl #0x310440
0038c8f0  06 00 a0 e1                                      mov r0, r6
0038c8f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0038c8f8  24 10 96 e5                                      ldr r1, [r6, #0x24]
0038c8fc  f4 ff ff ea                                      b #0x38c8d4

; FUNCTION 0x004a2240, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Deque_base<ObjectSearcher::TargetInfo, std::allocator<ObjectSearcher::TargetInfo> >
; alias: _ZNSt4priv11_Deque_baseIN14ObjectSearcher10TargetInfoESaIS2_EE17_M_initialize_mapEj.clone.4
; demangled: std::priv::_Deque_base<ObjectSearcher::TargetInfo, std::allocator<ObjectSearcher::TargetInfo> >::_M_initialize_map(unsigned int) [clone .clone.4]
; decoder-mode: arm
004a2240  08 30 a0 e3                                      mov r3, #8
004a2244  70 40 2d e9                                      push {r4, r5, r6, lr}
004a2248  03 10 a0 e1                                      mov r1, r3
004a224c  00 40 a0 e1                                      mov r4, r0
004a2250  24 30 80 e5                                      str r3, [r0, #0x24]
004a2254  00 20 a0 e3                                      mov r2, #0
004a2258  20 00 80 e2                                      add r0, r0, #0x20
004a225c  df ff ff eb                                      bl #0x4a21e0
004a2260  00 50 a0 e1                                      mov r5, r0
004a2264  20 00 84 e5                                      str r0, [r4, #0x20]
004a2268  04 00 a0 e1                                      mov r0, r4
004a226c  24 60 b0 e5                                      ldr r6, [r0, #0x24]!
004a2270  e5 fe ff eb                                      bl #0x4a1e0c
004a2274  01 60 46 e2                                      sub r6, r6, #1
004a2278  a6 60 a0 e1                                      lsr r6, r6, #1
004a227c  06 01 85 e7                                      str r0, [r5, r6, lsl #2]
004a2280  06 31 85 e0                                      add r3, r5, r6, lsl #2
004a2284  0c 30 84 e5                                      str r3, [r4, #0xc]
004a2288  06 21 95 e7                                      ldr r2, [r5, r6, lsl #2]
004a228c  1c 30 84 e5                                      str r3, [r4, #0x1c]
004a2290  78 30 82 e2                                      add r3, r2, #0x78
004a2294  0c 00 84 e9                                      stmib r4, {r2, r3}
004a2298  06 31 95 e7                                      ldr r3, [r5, r6, lsl #2]
004a229c  00 20 84 e5                                      str r2, [r4]
004a22a0  78 20 83 e2                                      add r2, r3, #0x78
004a22a4  10 30 84 e5                                      str r3, [r4, #0x10]
004a22a8  18 20 84 e5                                      str r2, [r4, #0x18]
004a22ac  14 30 84 e5                                      str r3, [r4, #0x14]
004a22b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
