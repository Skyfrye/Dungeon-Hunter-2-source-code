; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00483cbc, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Deque_iterator_base<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > >
; alias: _ZNKSt4priv20_Deque_iterator_baseISt5dequeIPN3rnd4TileESaIS4_EEE11_M_subtractERKS7_
; demangled: std::priv::_Deque_iterator_base<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > >::_M_subtract(std::priv::_Deque_iterator_base<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > const&) const
; decoder-mode: arm
00483cbc  30 00 2d e9                                      push {r4, r5}
00483cc0  08 40 91 e5                                      ldr r4, [r1, #8]
00483cc4  00 c0 90 e5                                      ldr ip, [r0]
00483cc8  00 20 91 e5                                      ldr r2, [r1]
00483ccc  04 30 90 e5                                      ldr r3, [r0, #4]
00483cd0  0c 50 90 e5                                      ldr r5, [r0, #0xc]
00483cd4  04 20 62 e0                                      rsb r2, r2, r4
00483cd8  0c 30 63 e0                                      rsb r3, r3, ip
00483cdc  c2 21 a0 e1                                      asr r2, r2, #3
00483ce0  c3 31 a0 e1                                      asr r3, r3, #3
00483ce4  82 c0 82 e0                                      add ip, r2, r2, lsl #1
00483ce8  83 40 83 e0                                      add r4, r3, r3, lsl #1
00483cec  0c c2 8c e0                                      add ip, ip, ip, lsl #4
00483cf0  04 42 84 e0                                      add r4, r4, r4, lsl #4
00483cf4  0c 10 91 e5                                      ldr r1, [r1, #0xc]
00483cf8  04 04 84 e0                                      add r0, r4, r4, lsl #8
00483cfc  0c c4 8c e0                                      add ip, ip, ip, lsl #8
00483d00  05 10 61 e0                                      rsb r1, r1, r5
00483d04  0c c8 8c e0                                      add ip, ip, ip, lsl #16
00483d08  00 08 80 e0                                      add r0, r0, r0, lsl #16
00483d0c  41 11 a0 e1                                      asr r1, r1, #2
00483d10  0c 21 82 e0                                      add r2, r2, ip, lsl #2
00483d14  00 31 83 e0                                      add r3, r3, r0, lsl #2
00483d18  01 10 41 e2                                      sub r1, r1, #1
00483d1c  03 00 82 e0                                      add r0, r2, r3
00483d20  81 10 81 e0                                      add r1, r1, r1, lsl #1
00483d24  01 00 80 e0                                      add r0, r0, r1
00483d28  30 00 bd e8                                      pop {r4, r5}
00483d2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00483e54, declared_size=172, range_size=172, mode=arm
; class-group: std::priv::_Deque_iterator_base<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > >
; alias: _ZNSt4priv20_Deque_iterator_baseISt5dequeIPN3rnd4TileESaIS4_EEE10_M_advanceEi
; demangled: std::priv::_Deque_iterator_base<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > >::_M_advance(int)
; decoder-mode: arm
00483e54  00 30 90 e5                                      ldr r3, [r0]
00483e58  04 20 90 e5                                      ldr r2, [r0, #4]
00483e5c  04 40 2d e5                                      str r4, [sp, #-4]!
00483e60  03 20 62 e0                                      rsb r2, r2, r3
00483e64  c2 21 a0 e1                                      asr r2, r2, #3
00483e68  82 c0 82 e0                                      add ip, r2, r2, lsl #1
00483e6c  0c c2 8c e0                                      add ip, ip, ip, lsl #4
00483e70  0c c4 8c e0                                      add ip, ip, ip, lsl #8
00483e74  0c c8 8c e0                                      add ip, ip, ip, lsl #16
00483e78  0c 21 82 e0                                      add r2, r2, ip, lsl #2
00483e7c  02 20 81 e0                                      add r2, r1, r2
00483e80  02 c0 e0 e1                                      mvn ip, r2
00483e84  ac 4f a0 e1                                      lsr r4, ip, #0x1f
00483e88  02 00 52 e3                                      cmp r2, #2
00483e8c  00 40 a0 c3                                      movgt r4, #0
00483e90  01 40 04 d2                                      andle r4, r4, #1
00483e94  00 00 54 e3                                      cmp r4, #0
00483e98  14 00 00 1a                                      bne #0x483ef0
00483e9c  ab 3a 0a e3                                      movw r3, #0xaaab
00483ea0  aa 3a 4a e3                                      movt r3, #0xaaaa
00483ea4  00 00 52 e3                                      cmp r2, #0
00483ea8  93 12 83 c0                                      umullgt r1, r3, r3, r2
00483eac  93 1c 83 d0                                      umullle r1, r3, r3, ip
00483eb0  a3 30 a0 c1                                      lsrgt r3, r3, #1
00483eb4  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00483eb8  a3 30 e0 d1                                      mvnle r3, r3, lsr #1
00483ebc  83 c0 83 e0                                      add ip, r3, r3, lsl #1
00483ec0  02 20 6c e0                                      rsb r2, ip, r2
00483ec4  03 c1 81 e0                                      add ip, r1, r3, lsl #2
00483ec8  0c c0 80 e5                                      str ip, [r0, #0xc]
00483ecc  03 31 91 e7                                      ldr r3, [r1, r3, lsl #2]
00483ed0  28 10 a0 e3                                      mov r1, #0x28
00483ed4  91 32 22 e0                                      mla r2, r1, r2, r3
00483ed8  78 10 83 e2                                      add r1, r3, #0x78
00483edc  00 20 80 e5                                      str r2, [r0]
00483ee0  08 10 80 e5                                      str r1, [r0, #8]
00483ee4  04 30 80 e5                                      str r3, [r0, #4]
00483ee8  10 00 bd e8                                      ldm sp!, {r4}
00483eec  1e ff 2f e1                                      bx lr
00483ef0  28 20 a0 e3                                      mov r2, #0x28
00483ef4  92 31 23 e0                                      mla r3, r2, r1, r3
00483ef8  00 30 80 e5                                      str r3, [r0]
00483efc  f9 ff ff ea                                      b #0x483ee8
