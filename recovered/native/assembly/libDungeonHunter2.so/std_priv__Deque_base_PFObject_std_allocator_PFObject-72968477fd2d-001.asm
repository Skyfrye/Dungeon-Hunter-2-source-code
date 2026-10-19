; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052360c, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<PFObject*, std::allocator<PFObject*> >
; alias: _ZNSt4priv11_Deque_baseIP8PFObjectSaIS2_EED2Ev
; demangled: std::priv::_Deque_base<PFObject*, std::allocator<PFObject*> >::~_Deque_base()
; decoder-mode: arm
0052360c  70 40 2d e9                                      push {r4, r5, r6, lr}
00523610  00 60 a0 e1                                      mov r6, r0
00523614  20 00 90 e5                                      ldr r0, [r0, #0x20]
00523618  00 00 50 e3                                      cmp r0, #0
0052361c  14 00 00 0a                                      beq #0x523674
00523620  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
00523624  0c 40 96 e5                                      ldr r4, [r6, #0xc]
00523628  04 50 85 e2                                      add r5, r5, #4
0052362c  05 00 54 e1                                      cmp r4, r5
00523630  14 00 00 2a                                      bhs #0x523688
00523634  00 00 94 e5                                      ldr r0, [r4]
00523638  80 10 a0 e3                                      mov r1, #0x80
0052363c  04 40 84 e2                                      add r4, r4, #4
00523640  00 00 50 e3                                      cmp r0, #0
00523644  00 00 00 0a                                      beq #0x52364c
00523648  2c 96 07 eb                                      bl #0x708f00
0052364c  04 00 55 e1                                      cmp r5, r4
00523650  f7 ff ff 8a                                      bhi #0x523634
00523654  20 00 96 e5                                      ldr r0, [r6, #0x20]
00523658  24 10 96 e5                                      ldr r1, [r6, #0x24]
0052365c  00 00 50 e3                                      cmp r0, #0
00523660  03 00 00 0a                                      beq #0x523674
00523664  01 11 a0 e1                                      lsl r1, r1, #2
00523668  80 00 51 e3                                      cmp r1, #0x80
0052366c  02 00 00 8a                                      bhi #0x52367c
00523670  22 96 07 eb                                      bl #0x708f00
00523674  06 00 a0 e1                                      mov r0, r6
00523678  70 80 bd e8                                      pop {r4, r5, r6, pc}
0052367c  6f b3 f7 eb                                      bl #0x310440
00523680  06 00 a0 e1                                      mov r0, r6
00523684  70 80 bd e8                                      pop {r4, r5, r6, pc}
00523688  24 10 96 e5                                      ldr r1, [r6, #0x24]
0052368c  f4 ff ff ea                                      b #0x523664

; FUNCTION 0x00526d98, declared_size=172, range_size=172, mode=arm
; class-group: std::priv::_Deque_base<PFObject*, std::allocator<PFObject*> >
; alias: _ZNSt4priv11_Deque_baseIP8PFObjectSaIS2_EE17_M_initialize_mapEj
; demangled: std::priv::_Deque_base<PFObject*, std::allocator<PFObject*> >::_M_initialize_map(unsigned int)
; decoder-mode: arm
00526d98  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00526d9c  a1 62 a0 e1                                      lsr r6, r1, #5
00526da0  01 50 a0 e1                                      mov r5, r1
00526da4  03 10 86 e2                                      add r1, r6, #3
00526da8  08 00 51 e3                                      cmp r1, #8
00526dac  08 10 a0 33                                      movlo r1, #8
00526db0  00 40 a0 e1                                      mov r4, r0
00526db4  24 10 80 e5                                      str r1, [r0, #0x24]
00526db8  00 20 a0 e3                                      mov r2, #0
00526dbc  20 00 80 e2                                      add r0, r0, #0x20
00526dc0  d4 ff ff eb                                      bl #0x526d18
00526dc4  24 b0 94 e5                                      ldr fp, [r4, #0x24]
00526dc8  01 60 86 e2                                      add r6, r6, #1
00526dcc  00 90 a0 e1                                      mov sb, r0
00526dd0  0b b0 66 e0                                      rsb fp, r6, fp
00526dd4  ab b0 a0 e1                                      lsr fp, fp, #1
00526dd8  20 00 84 e5                                      str r0, [r4, #0x20]
00526ddc  0b a1 80 e0                                      add sl, r0, fp, lsl #2
00526de0  06 61 8a e0                                      add r6, sl, r6, lsl #2
00526de4  06 00 5a e1                                      cmp sl, r6
00526de8  06 00 00 2a                                      bhs #0x526e08
00526dec  24 80 84 e2                                      add r8, r4, #0x24
00526df0  0a 70 a0 e1                                      mov r7, sl
00526df4  08 00 a0 e1                                      mov r0, r8
00526df8  de ff ff eb                                      bl #0x526d78
00526dfc  04 00 87 e4                                      str r0, [r7], #4
00526e00  07 00 56 e1                                      cmp r6, r7
00526e04  fa ff ff 8a                                      bhi #0x526df4
00526e08  0c a0 84 e5                                      str sl, [r4, #0xc]
00526e0c  0b 21 99 e7                                      ldr r2, [sb, fp, lsl #2]
00526e10  04 30 46 e2                                      sub r3, r6, #4
00526e14  1c 30 84 e5                                      str r3, [r4, #0x1c]
00526e18  80 30 82 e2                                      add r3, r2, #0x80
00526e1c  0c 00 84 e9                                      stmib r4, {r2, r3}
00526e20  04 30 16 e5                                      ldr r3, [r6, #-4]
00526e24  1f 50 05 e2                                      and r5, r5, #0x1f
00526e28  00 20 84 e5                                      str r2, [r4]
00526e2c  05 51 83 e0                                      add r5, r3, r5, lsl #2
00526e30  80 20 83 e2                                      add r2, r3, #0x80
00526e34  10 50 84 e5                                      str r5, [r4, #0x10]
00526e38  18 20 84 e5                                      str r2, [r4, #0x18]
00526e3c  14 30 84 e5                                      str r3, [r4, #0x14]
00526e40  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
