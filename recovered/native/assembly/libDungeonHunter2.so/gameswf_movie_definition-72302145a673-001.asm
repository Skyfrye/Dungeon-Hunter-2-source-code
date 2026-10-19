; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00765164, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::movie_definition
; alias: _ZN7gameswf16movie_definitionD1Ev
; demangled: gameswf::movie_definition::~movie_definition()
; decoder-mode: arm
00765164  24 30 9f e5                                      ldr r3, [pc, #0x24]
00765168  24 20 9f e5                                      ldr r2, [pc, #0x24]
0076516c  10 40 2d e9                                      push {r4, lr}
00765170  03 30 8f e0                                      add r3, pc, r3
00765174  02 20 93 e7                                      ldr r2, [r3, r2]
00765178  00 40 a0 e1                                      mov r4, r0
0076517c  08 20 82 e2                                      add r2, r2, #8
00765180  00 20 80 e5                                      str r2, [r0]
00765184  3b e3 ff eb                                      bl #0x75de78
00765188  04 00 a0 e1                                      mov r0, r4
0076518c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00765190  20 f9 22 00 b4 3f 00 00                          .byte 0x20, 0xf9, 0x22, 0x00, 0xb4, 0x3f, 0x00, 0x00

; FUNCTION 0x00765398, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::movie_definition
; alias: _ZN7gameswf16movie_definitionD0Ev
; demangled: gameswf::movie_definition::~movie_definition()
; decoder-mode: arm
00765398  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0076539c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007653a0  10 40 2d e9                                      push {r4, lr}
007653a4  03 30 8f e0                                      add r3, pc, r3
007653a8  02 20 93 e7                                      ldr r2, [r3, r2]
007653ac  00 40 a0 e1                                      mov r4, r0
007653b0  08 20 82 e2                                      add r2, r2, #8
007653b4  00 20 80 e5                                      str r2, [r0]
007653b8  ae e2 ff eb                                      bl #0x75de78
007653bc  04 00 a0 e1                                      mov r0, r4
007653c0  ba a3 ee eb                                      bl #0x30e2b0
007653c4  04 00 a0 e1                                      mov r0, r4
007653c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007653cc  ec f6 22 00 b4 3f 00 00                          .byte 0xec, 0xf6, 0x22, 0x00, 0xb4, 0x3f, 0x00, 0x00
