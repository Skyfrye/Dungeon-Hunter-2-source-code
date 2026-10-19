; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00794750, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::point
; alias: _ZN7gameswf5point15twips_to_pixelsEv
; demangled: gameswf::point::twips_to_pixels()
; decoder-mode: arm
00794750  10 40 2d e9                                      push {r4, lr}
00794754  41 14 a0 e3                                      mov r1, #0x41000000
00794758  00 40 a0 e1                                      mov r4, r0
0079475c  0a 16 81 e2                                      add r1, r1, #0xa00000
00794760  00 00 90 e5                                      ldr r0, [r0]
00794764  4a e9 ed eb                                      bl #0x30ec94
00794768  41 14 a0 e3                                      mov r1, #0x41000000
0079476c  00 00 84 e5                                      str r0, [r4]
00794770  0a 16 81 e2                                      add r1, r1, #0xa00000
00794774  04 00 94 e5                                      ldr r0, [r4, #4]
00794778  45 e9 ed eb                                      bl #0x30ec94
0079477c  04 00 84 e5                                      str r0, [r4, #4]
00794780  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00794784, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::point
; alias: _ZN7gameswf5point15pixels_to_twipsEv
; demangled: gameswf::point::pixels_to_twips()
; decoder-mode: arm
00794784  10 40 2d e9                                      push {r4, lr}
00794788  41 14 a0 e3                                      mov r1, #0x41000000
0079478c  00 40 a0 e1                                      mov r4, r0
00794790  0a 16 81 e2                                      add r1, r1, #0xa00000
00794794  00 00 90 e5                                      ldr r0, [r0]
00794798  73 e9 ed eb                                      bl #0x30ed6c
0079479c  41 14 a0 e3                                      mov r1, #0x41000000
007947a0  00 00 84 e5                                      str r0, [r4]
007947a4  0a 16 81 e2                                      add r1, r1, #0xa00000
007947a8  04 00 94 e5                                      ldr r0, [r4, #4]
007947ac  6e e9 ed eb                                      bl #0x30ed6c
007947b0  04 00 84 e5                                      str r0, [r4, #4]
007947b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00796a64, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::point
; alias: _ZNK7gameswf5point10get_lengthEv
; demangled: gameswf::point::get_length() const
; decoder-mode: arm
00796a64  70 40 2d e9                                      push {r4, r5, r6, lr}
00796a68  00 30 a0 e1                                      mov r3, r0
00796a6c  00 00 90 e5                                      ldr r0, [r0]
00796a70  04 50 93 e5                                      ldr r5, [r3, #4]
00796a74  00 10 a0 e1                                      mov r1, r0
00796a78  bb e0 ed eb                                      bl #0x30ed6c
00796a7c  05 10 a0 e1                                      mov r1, r5
00796a80  00 40 a0 e1                                      mov r4, r0
00796a84  05 00 a0 e1                                      mov r0, r5
00796a88  b7 e0 ed eb                                      bl #0x30ed6c
00796a8c  00 10 a0 e1                                      mov r1, r0
00796a90  04 00 a0 e1                                      mov r0, r4
00796a94  42 e0 ed eb                                      bl #0x30eba4
00796a98  70 40 bd e8                                      pop {r4, r5, r6, lr}
00796a9c  a0 dd ed ea                                      b #0x30e124

; FUNCTION 0x00796aa0, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::point
; alias: _ZNK7gameswf5point13bitwise_equalERKS0_
; demangled: gameswf::point::bitwise_equal(gameswf::point const&) const
; decoder-mode: arm
00796aa0  10 40 2d e9                                      push {r4, lr}
00796aa4  08 20 a0 e3                                      mov r2, #8
00796aa8  cc de ed eb                                      bl #0x30e5e0
00796aac  01 00 70 e2                                      rsbs r0, r0, #1
00796ab0  00 00 a0 33                                      movlo r0, #0
00796ab4  10 80 bd e8                                      pop {r4, pc}
