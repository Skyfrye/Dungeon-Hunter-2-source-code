; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00522cd4, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<unsigned int, std::allocator<unsigned int> >
; alias: _ZNSt4priv11_Deque_baseIjSaIjEE17_M_initialize_mapEj.clone.2
; demangled: std::priv::_Deque_base<unsigned int, std::allocator<unsigned int> >::_M_initialize_map(unsigned int) [clone .clone.2]
; decoder-mode: arm
00522cd4  70 40 2d e9                                      push {r4, r5, r6, lr}
00522cd8  08 30 a0 e3                                      mov r3, #8
00522cdc  00 40 a0 e1                                      mov r4, r0
00522ce0  08 d0 4d e2                                      sub sp, sp, #8
00522ce4  03 10 a0 e1                                      mov r1, r3
00522ce8  24 30 80 e5                                      str r3, [r0, #0x24]
00522cec  00 20 a0 e3                                      mov r2, #0
00522cf0  20 00 80 e2                                      add r0, r0, #0x20
00522cf4  de ff ff eb                                      bl #0x522c74
00522cf8  80 30 a0 e3                                      mov r3, #0x80
00522cfc  00 50 a0 e1                                      mov r5, r0
00522d00  08 00 8d e2                                      add r0, sp, #8
00522d04  24 60 94 e5                                      ldr r6, [r4, #0x24]
00522d08  04 30 20 e5                                      str r3, [r0, #-4]!
00522d0c  20 50 84 e5                                      str r5, [r4, #0x20]
00522d10  6a 98 07 eb                                      bl #0x708ec0
00522d14  01 60 46 e2                                      sub r6, r6, #1
00522d18  a6 60 a0 e1                                      lsr r6, r6, #1
00522d1c  06 01 85 e7                                      str r0, [r5, r6, lsl #2]
00522d20  06 31 85 e0                                      add r3, r5, r6, lsl #2
00522d24  0c 30 84 e5                                      str r3, [r4, #0xc]
00522d28  06 21 95 e7                                      ldr r2, [r5, r6, lsl #2]
00522d2c  1c 30 84 e5                                      str r3, [r4, #0x1c]
00522d30  80 30 82 e2                                      add r3, r2, #0x80
00522d34  0c 00 84 e9                                      stmib r4, {r2, r3}
00522d38  06 31 95 e7                                      ldr r3, [r5, r6, lsl #2]
00522d3c  00 20 84 e5                                      str r2, [r4]
00522d40  80 20 83 e2                                      add r2, r3, #0x80
00522d44  10 30 84 e5                                      str r3, [r4, #0x10]
00522d48  18 20 84 e5                                      str r2, [r4, #0x18]
00522d4c  14 30 84 e5                                      str r3, [r4, #0x14]
00522d50  08 d0 8d e2                                      add sp, sp, #8
00522d54  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005237e0, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<unsigned int, std::allocator<unsigned int> >
; alias: _ZNSt4priv11_Deque_baseIjSaIjEED2Ev
; demangled: std::priv::_Deque_base<unsigned int, std::allocator<unsigned int> >::~_Deque_base()
; decoder-mode: arm
005237e0  70 40 2d e9                                      push {r4, r5, r6, lr}
005237e4  00 60 a0 e1                                      mov r6, r0
005237e8  20 00 90 e5                                      ldr r0, [r0, #0x20]
005237ec  00 00 50 e3                                      cmp r0, #0
005237f0  14 00 00 0a                                      beq #0x523848
005237f4  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
005237f8  0c 40 96 e5                                      ldr r4, [r6, #0xc]
005237fc  04 50 85 e2                                      add r5, r5, #4
00523800  05 00 54 e1                                      cmp r4, r5
00523804  14 00 00 2a                                      bhs #0x52385c
00523808  00 00 94 e5                                      ldr r0, [r4]
0052380c  80 10 a0 e3                                      mov r1, #0x80
00523810  04 40 84 e2                                      add r4, r4, #4
00523814  00 00 50 e3                                      cmp r0, #0
00523818  00 00 00 0a                                      beq #0x523820
0052381c  b7 95 07 eb                                      bl #0x708f00
00523820  04 00 55 e1                                      cmp r5, r4
00523824  f7 ff ff 8a                                      bhi #0x523808
00523828  20 00 96 e5                                      ldr r0, [r6, #0x20]
0052382c  24 10 96 e5                                      ldr r1, [r6, #0x24]
00523830  00 00 50 e3                                      cmp r0, #0
00523834  03 00 00 0a                                      beq #0x523848
00523838  01 11 a0 e1                                      lsl r1, r1, #2
0052383c  80 00 51 e3                                      cmp r1, #0x80
00523840  02 00 00 8a                                      bhi #0x523850
00523844  ad 95 07 eb                                      bl #0x708f00
00523848  06 00 a0 e1                                      mov r0, r6
0052384c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00523850  fa b2 f7 eb                                      bl #0x310440
00523854  06 00 a0 e1                                      mov r0, r6
00523858  70 80 bd e8                                      pop {r4, r5, r6, pc}
0052385c  24 10 96 e5                                      ldr r1, [r6, #0x24]
00523860  f4 ff ff ea                                      b #0x523838
