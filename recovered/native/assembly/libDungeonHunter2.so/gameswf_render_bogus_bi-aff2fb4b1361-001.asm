; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00773974, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::render::bogus_bi
; alias: _ZN7gameswf6render8bogus_biD1Ev
; demangled: gameswf::render::bogus_bi::~bogus_bi()
; decoder-mode: arm
00773974  24 30 9f e5                                      ldr r3, [pc, #0x24]
00773978  24 20 9f e5                                      ldr r2, [pc, #0x24]
0077397c  10 40 2d e9                                      push {r4, lr}
00773980  03 30 8f e0                                      add r3, pc, r3
00773984  02 20 93 e7                                      ldr r2, [r3, r2]
00773988  00 40 a0 e1                                      mov r4, r0
0077398c  08 20 82 e2                                      add r2, r2, #8
00773990  00 20 80 e5                                      str r2, [r0]
00773994  c2 a8 ff eb                                      bl #0x75dca4
00773998  04 00 a0 e1                                      mov r0, r4
0077399c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007739a0  10 11 22 00 88 21 00 00                          .byte 0x10, 0x11, 0x22, 0x00, 0x88, 0x21, 0x00, 0x00

; FUNCTION 0x00773cf8, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::render::bogus_bi
; alias: _ZN7gameswf6render8bogus_biD0Ev
; demangled: gameswf::render::bogus_bi::~bogus_bi()
; decoder-mode: arm
00773cf8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00773cfc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00773d00  10 40 2d e9                                      push {r4, lr}
00773d04  03 30 8f e0                                      add r3, pc, r3
00773d08  02 20 93 e7                                      ldr r2, [r3, r2]
00773d0c  00 40 a0 e1                                      mov r4, r0
00773d10  08 20 82 e2                                      add r2, r2, #8
00773d14  00 20 80 e5                                      str r2, [r0]
00773d18  e1 a7 ff eb                                      bl #0x75dca4
00773d1c  04 00 a0 e1                                      mov r0, r4
00773d20  62 69 ee eb                                      bl #0x30e2b0
00773d24  04 00 a0 e1                                      mov r0, r4
00773d28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00773d2c  8c 0d 22 00 88 21 00 00                          .byte 0x8c, 0x0d, 0x22, 0x00, 0x88, 0x21, 0x00, 0x00
