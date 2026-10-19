; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004857c4, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt4priv11_Deque_baseISt5dequeIPN3rnd4TileESaIS4_EESaIS6_EED2Ev
; demangled: std::priv::_Deque_base<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::~_Deque_base()
; decoder-mode: arm
004857c4  70 40 2d e9                                      push {r4, r5, r6, lr}
004857c8  00 60 a0 e1                                      mov r6, r0
004857cc  20 00 90 e5                                      ldr r0, [r0, #0x20]
004857d0  00 00 50 e3                                      cmp r0, #0
004857d4  14 00 00 0a                                      beq #0x48582c
004857d8  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
004857dc  0c 40 96 e5                                      ldr r4, [r6, #0xc]
004857e0  04 50 85 e2                                      add r5, r5, #4
004857e4  05 00 54 e1                                      cmp r4, r5
004857e8  14 00 00 2a                                      bhs #0x485840
004857ec  00 00 94 e5                                      ldr r0, [r4]
004857f0  78 10 a0 e3                                      mov r1, #0x78
004857f4  04 40 84 e2                                      add r4, r4, #4
004857f8  00 00 50 e3                                      cmp r0, #0
004857fc  00 00 00 0a                                      beq #0x485804
00485800  be 0d 0a eb                                      bl #0x708f00
00485804  04 00 55 e1                                      cmp r5, r4
00485808  f7 ff ff 8a                                      bhi #0x4857ec
0048580c  20 00 96 e5                                      ldr r0, [r6, #0x20]
00485810  24 10 96 e5                                      ldr r1, [r6, #0x24]
00485814  00 00 50 e3                                      cmp r0, #0
00485818  03 00 00 0a                                      beq #0x48582c
0048581c  01 11 a0 e1                                      lsl r1, r1, #2
00485820  80 00 51 e3                                      cmp r1, #0x80
00485824  02 00 00 8a                                      bhi #0x485834
00485828  b4 0d 0a eb                                      bl #0x708f00
0048582c  06 00 a0 e1                                      mov r0, r6
00485830  70 80 bd e8                                      pop {r4, r5, r6, pc}
00485834  01 2b fa eb                                      bl #0x310440
00485838  06 00 a0 e1                                      mov r0, r6
0048583c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00485840  24 10 96 e5                                      ldr r1, [r6, #0x24]
00485844  f4 ff ff ea                                      b #0x48581c
