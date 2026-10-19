; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006db6f0, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >
; alias: _ZNSt4priv11_Deque_baseISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEESaIS7_EED2Ev
; demangled: std::priv::_Deque_base<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >::~_Deque_base()
; decoder-mode: arm
006db6f0  70 40 2d e9                                      push {r4, r5, r6, lr}
006db6f4  00 60 a0 e1                                      mov r6, r0
006db6f8  20 00 90 e5                                      ldr r0, [r0, #0x20]
006db6fc  00 00 50 e3                                      cmp r0, #0
006db700  14 00 00 0a                                      beq #0x6db758
006db704  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
006db708  0c 40 96 e5                                      ldr r4, [r6, #0xc]
006db70c  04 50 85 e2                                      add r5, r5, #4
006db710  05 00 54 e1                                      cmp r4, r5
006db714  14 00 00 2a                                      bhs #0x6db76c
006db718  00 00 94 e5                                      ldr r0, [r4]
006db71c  80 10 a0 e3                                      mov r1, #0x80
006db720  04 40 84 e2                                      add r4, r4, #4
006db724  00 00 50 e3                                      cmp r0, #0
006db728  00 00 00 0a                                      beq #0x6db730
006db72c  f3 b5 00 eb                                      bl #0x708f00
006db730  04 00 55 e1                                      cmp r5, r4
006db734  f7 ff ff 8a                                      bhi #0x6db718
006db738  20 00 96 e5                                      ldr r0, [r6, #0x20]
006db73c  24 10 96 e5                                      ldr r1, [r6, #0x24]
006db740  00 00 50 e3                                      cmp r0, #0
006db744  03 00 00 0a                                      beq #0x6db758
006db748  01 11 a0 e1                                      lsl r1, r1, #2
006db74c  80 00 51 e3                                      cmp r1, #0x80
006db750  02 00 00 8a                                      bhi #0x6db760
006db754  e9 b5 00 eb                                      bl #0x708f00
006db758  06 00 a0 e1                                      mov r0, r6
006db75c  70 80 bd e8                                      pop {r4, r5, r6, pc}
006db760  d2 ca f0 eb                                      bl #0x30e2b0
006db764  06 00 a0 e1                                      mov r0, r6
006db768  70 80 bd e8                                      pop {r4, r5, r6, pc}
006db76c  24 10 96 e5                                      ldr r1, [r6, #0x24]
006db770  f4 ff ff ea                                      b #0x6db748

; FUNCTION 0x006db7d4, declared_size=172, range_size=172, mode=arm
; class-group: std::priv::_Deque_base<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >
; alias: _ZNSt4priv11_Deque_baseISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEESaIS7_EE17_M_initialize_mapEj
; demangled: std::priv::_Deque_base<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>, std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > >::_M_initialize_map(unsigned int)
; decoder-mode: arm
006db7d4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006db7d8  21 62 a0 e1                                      lsr r6, r1, #4
006db7dc  01 50 a0 e1                                      mov r5, r1
006db7e0  03 10 86 e2                                      add r1, r6, #3
006db7e4  08 00 51 e3                                      cmp r1, #8
006db7e8  08 10 a0 33                                      movlo r1, #8
006db7ec  00 40 a0 e1                                      mov r4, r0
006db7f0  24 10 80 e5                                      str r1, [r0, #0x24]
006db7f4  00 20 a0 e3                                      mov r2, #0
006db7f8  20 00 80 e2                                      add r0, r0, #0x20
006db7fc  dc ff ff eb                                      bl #0x6db774
006db800  24 b0 94 e5                                      ldr fp, [r4, #0x24]
006db804  01 60 86 e2                                      add r6, r6, #1
006db808  00 90 a0 e1                                      mov sb, r0
006db80c  0b b0 66 e0                                      rsb fp, r6, fp
006db810  ab b0 a0 e1                                      lsr fp, fp, #1
006db814  20 00 84 e5                                      str r0, [r4, #0x20]
006db818  0b a1 80 e0                                      add sl, r0, fp, lsl #2
006db81c  06 61 8a e0                                      add r6, sl, r6, lsl #2
006db820  06 00 5a e1                                      cmp sl, r6
006db824  06 00 00 2a                                      bhs #0x6db844
006db828  24 80 84 e2                                      add r8, r4, #0x24
006db82c  0a 70 a0 e1                                      mov r7, sl
006db830  08 00 a0 e1                                      mov r0, r8
006db834  a5 ff ff eb                                      bl #0x6db6d0
006db838  04 00 87 e4                                      str r0, [r7], #4
006db83c  07 00 56 e1                                      cmp r6, r7
006db840  fa ff ff 8a                                      bhi #0x6db830
006db844  0c a0 84 e5                                      str sl, [r4, #0xc]
006db848  0b 21 99 e7                                      ldr r2, [sb, fp, lsl #2]
006db84c  04 30 46 e2                                      sub r3, r6, #4
006db850  1c 30 84 e5                                      str r3, [r4, #0x1c]
006db854  80 30 82 e2                                      add r3, r2, #0x80
006db858  0c 00 84 e9                                      stmib r4, {r2, r3}
006db85c  04 30 16 e5                                      ldr r3, [r6, #-4]
006db860  0f 50 05 e2                                      and r5, r5, #0xf
006db864  00 20 84 e5                                      str r2, [r4]
006db868  85 51 83 e0                                      add r5, r3, r5, lsl #3
006db86c  80 20 83 e2                                      add r2, r3, #0x80
006db870  10 50 84 e5                                      str r5, [r4, #0x10]
006db874  18 20 84 e5                                      str r2, [r4, #0x18]
006db878  14 30 84 e5                                      str r3, [r4, #0x14]
006db87c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
