; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042daa4, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<MenuFX*, std::allocator<MenuFX*> >
; alias: _ZNSt4priv11_Deque_baseIP6MenuFXSaIS2_EED2Ev
; demangled: std::priv::_Deque_base<MenuFX*, std::allocator<MenuFX*> >::~_Deque_base()
; decoder-mode: arm
0042daa4  70 40 2d e9                                      push {r4, r5, r6, lr}
0042daa8  00 60 a0 e1                                      mov r6, r0
0042daac  20 00 90 e5                                      ldr r0, [r0, #0x20]
0042dab0  00 00 50 e3                                      cmp r0, #0
0042dab4  14 00 00 0a                                      beq #0x42db0c
0042dab8  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
0042dabc  0c 40 96 e5                                      ldr r4, [r6, #0xc]
0042dac0  04 50 85 e2                                      add r5, r5, #4
0042dac4  05 00 54 e1                                      cmp r4, r5
0042dac8  14 00 00 2a                                      bhs #0x42db20
0042dacc  00 00 94 e5                                      ldr r0, [r4]
0042dad0  80 10 a0 e3                                      mov r1, #0x80
0042dad4  04 40 84 e2                                      add r4, r4, #4
0042dad8  00 00 50 e3                                      cmp r0, #0
0042dadc  00 00 00 0a                                      beq #0x42dae4
0042dae0  06 6d 0b eb                                      bl #0x708f00
0042dae4  04 00 55 e1                                      cmp r5, r4
0042dae8  f7 ff ff 8a                                      bhi #0x42dacc
0042daec  20 00 96 e5                                      ldr r0, [r6, #0x20]
0042daf0  24 10 96 e5                                      ldr r1, [r6, #0x24]
0042daf4  00 00 50 e3                                      cmp r0, #0
0042daf8  03 00 00 0a                                      beq #0x42db0c
0042dafc  01 11 a0 e1                                      lsl r1, r1, #2
0042db00  80 00 51 e3                                      cmp r1, #0x80
0042db04  02 00 00 8a                                      bhi #0x42db14
0042db08  fc 6c 0b eb                                      bl #0x708f00
0042db0c  06 00 a0 e1                                      mov r0, r6
0042db10  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042db14  49 8a fb eb                                      bl #0x310440
0042db18  06 00 a0 e1                                      mov r0, r6
0042db1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042db20  24 10 96 e5                                      ldr r1, [r6, #0x24]
0042db24  f4 ff ff ea                                      b #0x42dafc

; FUNCTION 0x00431948, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<MenuFX*, std::allocator<MenuFX*> >
; alias: _ZNSt4priv11_Deque_baseIP6MenuFXSaIS2_EE17_M_initialize_mapEj.clone.7
; demangled: std::priv::_Deque_base<MenuFX*, std::allocator<MenuFX*> >::_M_initialize_map(unsigned int) [clone .clone.7]
; decoder-mode: arm
00431948  70 40 2d e9                                      push {r4, r5, r6, lr}
0043194c  08 30 a0 e3                                      mov r3, #8
00431950  00 40 a0 e1                                      mov r4, r0
00431954  08 d0 4d e2                                      sub sp, sp, #8
00431958  03 10 a0 e1                                      mov r1, r3
0043195c  24 30 80 e5                                      str r3, [r0, #0x24]
00431960  00 20 a0 e3                                      mov r2, #0
00431964  20 00 80 e2                                      add r0, r0, #0x20
00431968  b2 f1 ff eb                                      bl #0x42e038
0043196c  80 30 a0 e3                                      mov r3, #0x80
00431970  00 50 a0 e1                                      mov r5, r0
00431974  08 00 8d e2                                      add r0, sp, #8
00431978  24 60 94 e5                                      ldr r6, [r4, #0x24]
0043197c  04 30 20 e5                                      str r3, [r0, #-4]!
00431980  20 50 84 e5                                      str r5, [r4, #0x20]
00431984  4d 5d 0b eb                                      bl #0x708ec0
00431988  01 60 46 e2                                      sub r6, r6, #1
0043198c  a6 60 a0 e1                                      lsr r6, r6, #1
00431990  06 01 85 e7                                      str r0, [r5, r6, lsl #2]
00431994  06 31 85 e0                                      add r3, r5, r6, lsl #2
00431998  0c 30 84 e5                                      str r3, [r4, #0xc]
0043199c  06 21 95 e7                                      ldr r2, [r5, r6, lsl #2]
004319a0  1c 30 84 e5                                      str r3, [r4, #0x1c]
004319a4  80 30 82 e2                                      add r3, r2, #0x80
004319a8  0c 00 84 e9                                      stmib r4, {r2, r3}
004319ac  06 31 95 e7                                      ldr r3, [r5, r6, lsl #2]
004319b0  00 20 84 e5                                      str r2, [r4]
004319b4  80 20 83 e2                                      add r2, r3, #0x80
004319b8  10 30 84 e5                                      str r3, [r4, #0x10]
004319bc  18 20 84 e5                                      str r2, [r4, #0x18]
004319c0  14 30 84 e5                                      str r3, [r4, #0x14]
004319c4  08 d0 8d e2                                      add sp, sp, #8
004319c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
