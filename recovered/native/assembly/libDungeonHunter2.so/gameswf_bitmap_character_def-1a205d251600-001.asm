; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075df0c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::bitmap_character_def
; alias: _ZN7gameswf20bitmap_character_defD1Ev
; demangled: gameswf::bitmap_character_def::~bitmap_character_def()
; decoder-mode: arm
0075df0c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0075df10  24 20 9f e5                                      ldr r2, [pc, #0x24]
0075df14  10 40 2d e9                                      push {r4, lr}
0075df18  03 30 8f e0                                      add r3, pc, r3
0075df1c  02 20 93 e7                                      ldr r2, [r3, r2]
0075df20  00 40 a0 e1                                      mov r4, r0
0075df24  08 20 82 e2                                      add r2, r2, #8
0075df28  00 20 80 e5                                      str r2, [r0]
0075df2c  d1 ff ff eb                                      bl #0x75de78
0075df30  04 00 a0 e1                                      mov r0, r4
0075df34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0075df38  78 6b 23 00 58 43 00 00                          .byte 0x78, 0x6b, 0x23, 0x00, 0x58, 0x43, 0x00, 0x00

; FUNCTION 0x0075df9c, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::bitmap_character_def
; alias: _ZN7gameswf20bitmap_character_defD0Ev
; demangled: gameswf::bitmap_character_def::~bitmap_character_def()
; decoder-mode: arm
0075df9c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0075dfa0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0075dfa4  10 40 2d e9                                      push {r4, lr}
0075dfa8  03 30 8f e0                                      add r3, pc, r3
0075dfac  02 20 93 e7                                      ldr r2, [r3, r2]
0075dfb0  00 40 a0 e1                                      mov r4, r0
0075dfb4  08 20 82 e2                                      add r2, r2, #8
0075dfb8  00 20 80 e5                                      str r2, [r0]
0075dfbc  ad ff ff eb                                      bl #0x75de78
0075dfc0  04 00 a0 e1                                      mov r0, r4
0075dfc4  b9 c0 ee eb                                      bl #0x30e2b0
0075dfc8  04 00 a0 e1                                      mov r0, r4
0075dfcc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0075dfd0  e8 6a 23 00 58 43 00 00                          .byte 0xe8, 0x6a, 0x23, 0x00, 0x58, 0x43, 0x00, 0x00
