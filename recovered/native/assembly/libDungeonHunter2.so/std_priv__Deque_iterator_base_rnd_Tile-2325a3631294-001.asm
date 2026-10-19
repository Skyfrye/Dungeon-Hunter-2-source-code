; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00483d30, declared_size=68, range_size=68, mode=arm
; class-group: std::priv::_Deque_iterator_base<rnd::Tile*>
; alias: _ZNKSt4priv20_Deque_iterator_baseIPN3rnd4TileEE11_M_subtractERKS4_
; demangled: std::priv::_Deque_iterator_base<rnd::Tile*>::_M_subtract(std::priv::_Deque_iterator_base<rnd::Tile*> const&) const
; decoder-mode: arm
00483d30  30 00 2d e9                                      push {r4, r5}
00483d34  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00483d38  00 50 90 e5                                      ldr r5, [r0]
00483d3c  04 20 90 e5                                      ldr r2, [r0, #4]
00483d40  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00483d44  08 30 91 e5                                      ldr r3, [r1, #8]
00483d48  00 10 91 e5                                      ldr r1, [r1]
00483d4c  05 20 62 e0                                      rsb r2, r2, r5
00483d50  04 00 6c e0                                      rsb r0, ip, r4
00483d54  03 30 61 e0                                      rsb r3, r1, r3
00483d58  42 21 a0 e1                                      asr r2, r2, #2
00483d5c  40 01 a0 e1                                      asr r0, r0, #2
00483d60  43 31 82 e0                                      add r3, r2, r3, asr #2
00483d64  01 00 40 e2                                      sub r0, r0, #1
00483d68  80 02 83 e0                                      add r0, r3, r0, lsl #5
00483d6c  30 00 bd e8                                      pop {r4, r5}
00483d70  1e ff 2f e1                                      bx lr

; FUNCTION 0x00483d74, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Deque_iterator_base<rnd::Tile*>
; alias: _ZNSt4priv20_Deque_iterator_baseIPN3rnd4TileEE10_M_advanceEi
; demangled: std::priv::_Deque_iterator_base<rnd::Tile*>::_M_advance(int)
; decoder-mode: arm
00483d74  00 30 90 e5                                      ldr r3, [r0]
00483d78  04 20 90 e5                                      ldr r2, [r0, #4]
00483d7c  04 40 2d e5                                      str r4, [sp, #-4]!
00483d80  03 20 62 e0                                      rsb r2, r2, r3
00483d84  42 21 81 e0                                      add r2, r1, r2, asr #2
00483d88  02 c0 e0 e1                                      mvn ip, r2
00483d8c  ac 4f a0 e1                                      lsr r4, ip, #0x1f
00483d90  1f 00 52 e3                                      cmp r2, #0x1f
00483d94  00 40 a0 c3                                      movgt r4, #0
00483d98  01 40 04 d2                                      andle r4, r4, #1
00483d9c  00 00 54 e3                                      cmp r4, #0
00483da0  01 31 83 10                                      addne r3, r3, r1, lsl #2
00483da4  00 30 80 15                                      strne r3, [r0]
00483da8  0c 00 00 1a                                      bne #0x483de0
00483dac  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00483db0  00 00 52 e3                                      cmp r2, #0
00483db4  a2 32 a0 c1                                      lsrgt r3, r2, #5
00483db8  ac 32 e0 d1                                      mvnle r3, ip, lsr #5
00483dbc  03 c1 81 e0                                      add ip, r1, r3, lsl #2
00483dc0  0c c0 80 e5                                      str ip, [r0, #0xc]
00483dc4  83 22 42 e0                                      sub r2, r2, r3, lsl #5
00483dc8  03 31 91 e7                                      ldr r3, [r1, r3, lsl #2]
00483dcc  02 21 83 e0                                      add r2, r3, r2, lsl #2
00483dd0  80 10 83 e2                                      add r1, r3, #0x80
00483dd4  00 20 80 e5                                      str r2, [r0]
00483dd8  08 10 80 e5                                      str r1, [r0, #8]
00483ddc  04 30 80 e5                                      str r3, [r0, #4]
00483de0  10 00 bd e8                                      ldm sp!, {r4}
00483de4  1e ff 2f e1                                      bx lr
