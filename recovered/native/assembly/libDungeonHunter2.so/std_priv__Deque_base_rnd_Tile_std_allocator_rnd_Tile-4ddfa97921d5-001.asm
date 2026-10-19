; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00485168, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt4priv11_Deque_baseIPN3rnd4TileESaIS3_EED2Ev
; demangled: std::priv::_Deque_base<rnd::Tile*, std::allocator<rnd::Tile*> >::~_Deque_base()
; decoder-mode: arm
00485168  70 40 2d e9                                      push {r4, r5, r6, lr}
0048516c  00 60 a0 e1                                      mov r6, r0
00485170  20 00 90 e5                                      ldr r0, [r0, #0x20]
00485174  00 00 50 e3                                      cmp r0, #0
00485178  14 00 00 0a                                      beq #0x4851d0
0048517c  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
00485180  0c 40 96 e5                                      ldr r4, [r6, #0xc]
00485184  04 50 85 e2                                      add r5, r5, #4
00485188  05 00 54 e1                                      cmp r4, r5
0048518c  14 00 00 2a                                      bhs #0x4851e4
00485190  00 00 94 e5                                      ldr r0, [r4]
00485194  80 10 a0 e3                                      mov r1, #0x80
00485198  04 40 84 e2                                      add r4, r4, #4
0048519c  00 00 50 e3                                      cmp r0, #0
004851a0  00 00 00 0a                                      beq #0x4851a8
004851a4  55 0f 0a eb                                      bl #0x708f00
004851a8  04 00 55 e1                                      cmp r5, r4
004851ac  f7 ff ff 8a                                      bhi #0x485190
004851b0  20 00 96 e5                                      ldr r0, [r6, #0x20]
004851b4  24 10 96 e5                                      ldr r1, [r6, #0x24]
004851b8  00 00 50 e3                                      cmp r0, #0
004851bc  03 00 00 0a                                      beq #0x4851d0
004851c0  01 11 a0 e1                                      lsl r1, r1, #2
004851c4  80 00 51 e3                                      cmp r1, #0x80
004851c8  02 00 00 8a                                      bhi #0x4851d8
004851cc  4b 0f 0a eb                                      bl #0x708f00
004851d0  06 00 a0 e1                                      mov r0, r6
004851d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
004851d8  98 2c fa eb                                      bl #0x310440
004851dc  06 00 a0 e1                                      mov r0, r6
004851e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
004851e4  24 10 96 e5                                      ldr r1, [r6, #0x24]
004851e8  f4 ff ff ea                                      b #0x4851c0

; FUNCTION 0x004866e0, declared_size=172, range_size=172, mode=arm
; class-group: std::priv::_Deque_base<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt4priv11_Deque_baseIPN3rnd4TileESaIS3_EE17_M_initialize_mapEj
; demangled: std::priv::_Deque_base<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_initialize_map(unsigned int)
; decoder-mode: arm
004866e0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
004866e4  a1 62 a0 e1                                      lsr r6, r1, #5
004866e8  01 50 a0 e1                                      mov r5, r1
004866ec  03 10 86 e2                                      add r1, r6, #3
004866f0  08 00 51 e3                                      cmp r1, #8
004866f4  08 10 a0 33                                      movlo r1, #8
004866f8  00 40 a0 e1                                      mov r4, r0
004866fc  24 10 80 e5                                      str r1, [r0, #0x24]
00486700  00 20 a0 e3                                      mov r2, #0
00486704  20 00 80 e2                                      add r0, r0, #0x20
00486708  4a f9 ff eb                                      bl #0x484c38
0048670c  24 b0 94 e5                                      ldr fp, [r4, #0x24]
00486710  01 60 86 e2                                      add r6, r6, #1
00486714  00 90 a0 e1                                      mov sb, r0
00486718  0b b0 66 e0                                      rsb fp, r6, fp
0048671c  ab b0 a0 e1                                      lsr fp, fp, #1
00486720  20 00 84 e5                                      str r0, [r4, #0x20]
00486724  0b a1 80 e0                                      add sl, r0, fp, lsl #2
00486728  06 61 8a e0                                      add r6, sl, r6, lsl #2
0048672c  06 00 5a e1                                      cmp sl, r6
00486730  06 00 00 2a                                      bhs #0x486750
00486734  24 80 84 e2                                      add r8, r4, #0x24
00486738  0a 70 a0 e1                                      mov r7, sl
0048673c  08 00 a0 e1                                      mov r0, r8
00486740  de ff ff eb                                      bl #0x4866c0
00486744  04 00 87 e4                                      str r0, [r7], #4
00486748  07 00 56 e1                                      cmp r6, r7
0048674c  fa ff ff 8a                                      bhi #0x48673c
00486750  0c a0 84 e5                                      str sl, [r4, #0xc]
00486754  0b 21 99 e7                                      ldr r2, [sb, fp, lsl #2]
00486758  04 30 46 e2                                      sub r3, r6, #4
0048675c  1c 30 84 e5                                      str r3, [r4, #0x1c]
00486760  80 30 82 e2                                      add r3, r2, #0x80
00486764  0c 00 84 e9                                      stmib r4, {r2, r3}
00486768  04 30 16 e5                                      ldr r3, [r6, #-4]
0048676c  1f 50 05 e2                                      and r5, r5, #0x1f
00486770  00 20 84 e5                                      str r2, [r4]
00486774  05 51 83 e0                                      add r5, r3, r5, lsl #2
00486778  80 20 83 e2                                      add r2, r3, #0x80
0048677c  10 50 84 e5                                      str r5, [r4, #0x10]
00486780  18 20 84 e5                                      str r2, [r4, #0x18]
00486784  14 30 84 e5                                      str r3, [r4, #0x14]
00486788  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
