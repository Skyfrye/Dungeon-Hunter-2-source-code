; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004122c4, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<Dragable, std::allocator<Dragable> >
; alias: _ZNSt6vectorI8DragableSaIS0_EE19_M_clear_after_moveEv
; demangled: std::vector<Dragable, std::allocator<Dragable> >::_M_clear_after_move()
; decoder-mode: arm
004122c4  70 40 2d e9                                      push {r4, r5, r6, lr}
004122c8  04 40 90 e5                                      ldr r4, [r0, #4]
004122cc  00 50 90 e5                                      ldr r5, [r0]
004122d0  00 60 a0 e1                                      mov r6, r0
004122d4  05 00 54 e1                                      cmp r4, r5
004122d8  05 00 00 0a                                      beq #0x4122f4
004122dc  54 40 44 e2                                      sub r4, r4, #0x54
004122e0  04 00 a0 e1                                      mov r0, r4
004122e4  db fe ff eb                                      bl #0x411e58
004122e8  04 00 55 e1                                      cmp r5, r4
004122ec  fa ff ff 1a                                      bne #0x4122dc
004122f0  00 40 96 e5                                      ldr r4, [r6]
004122f4  00 00 54 e3                                      cmp r4, #0
004122f8  08 30 96 e5                                      ldr r3, [r6, #8]
004122fc  0e 00 00 0a                                      beq #0x41233c
00412300  03 10 64 e0                                      rsb r1, r4, r3
00412304  3d 3f 0c e3                                      movw r3, #0xcf3d
00412308  41 11 a0 e1                                      asr r1, r1, #2
0041230c  f3 3c 43 e3                                      movt r3, #0x3cf3
00412310  93 01 03 e0                                      mul r3, r3, r1
00412314  54 10 a0 e3                                      mov r1, #0x54
00412318  91 03 01 e0                                      mul r1, r1, r3
0041231c  80 00 51 e3                                      cmp r1, #0x80
00412320  02 00 00 8a                                      bhi #0x412330
00412324  04 00 a0 e1                                      mov r0, r4
00412328  70 40 bd e8                                      pop {r4, r5, r6, lr}
0041232c  f3 da 0b ea                                      b #0x708f00
00412330  04 00 a0 e1                                      mov r0, r4
00412334  70 40 bd e8                                      pop {r4, r5, r6, lr}
00412338  40 f8 fb ea                                      b #0x310440
0041233c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004123a8, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<Dragable, std::allocator<Dragable> >
; alias: _ZNSt6vectorI8DragableSaIS0_EED1Ev
; demangled: std::vector<Dragable, std::allocator<Dragable> >::~vector()
; decoder-mode: arm
004123a8  70 40 2d e9                                      push {r4, r5, r6, lr}
004123ac  04 50 90 e5                                      ldr r5, [r0, #4]
004123b0  00 60 90 e5                                      ldr r6, [r0]
004123b4  00 40 a0 e1                                      mov r4, r0
004123b8  06 00 55 e1                                      cmp r5, r6
004123bc  04 00 00 0a                                      beq #0x4123d4
004123c0  54 50 45 e2                                      sub r5, r5, #0x54
004123c4  05 00 a0 e1                                      mov r0, r5
004123c8  a2 fe ff eb                                      bl #0x411e58
004123cc  05 00 56 e1                                      cmp r6, r5
004123d0  fa ff ff 1a                                      bne #0x4123c0
004123d4  00 00 94 e5                                      ldr r0, [r4]
004123d8  00 00 50 e3                                      cmp r0, #0
004123dc  0a 00 00 0a                                      beq #0x41240c
004123e0  08 10 94 e5                                      ldr r1, [r4, #8]
004123e4  3d 3f 0c e3                                      movw r3, #0xcf3d
004123e8  f3 3c 43 e3                                      movt r3, #0x3cf3
004123ec  01 10 60 e0                                      rsb r1, r0, r1
004123f0  41 11 a0 e1                                      asr r1, r1, #2
004123f4  93 01 03 e0                                      mul r3, r3, r1
004123f8  54 10 a0 e3                                      mov r1, #0x54
004123fc  91 03 01 e0                                      mul r1, r1, r3
00412400  80 00 51 e3                                      cmp r1, #0x80
00412404  02 00 00 8a                                      bhi #0x412414
00412408  bc da 0b eb                                      bl #0x708f00
0041240c  04 00 a0 e1                                      mov r0, r4
00412410  70 80 bd e8                                      pop {r4, r5, r6, pc}
00412414  09 f8 fb eb                                      bl #0x310440
00412418  04 00 a0 e1                                      mov r0, r4
0041241c  70 80 bd e8                                      pop {r4, r5, r6, pc}
