; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00388628, declared_size=52, range_size=52, mode=arm
; class-group: POColmap
; alias: _ZN8POColmapD1Ev
; demangled: POColmap::~POColmap()
; decoder-mode: arm
00388628  24 30 9f e5                                      ldr r3, [pc, #0x24]
0038862c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00388630  10 40 2d e9                                      push {r4, lr}
00388634  03 30 8f e0                                      add r3, pc, r3
00388638  02 20 93 e7                                      ldr r2, [r3, r2]
0038863c  00 40 a0 e1                                      mov r4, r0
00388640  08 20 82 e2                                      add r2, r2, #8
00388644  00 20 80 e5                                      str r2, [r0]
00388648  34 9a 03 eb                                      bl #0x46ef20
0038864c  04 00 a0 e1                                      mov r0, r4
00388650  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00388654  5c c4 60 00 cc 2d 00 00                          .byte 0x5c, 0xc4, 0x60, 0x00, 0xcc, 0x2d, 0x00, 0x00

; FUNCTION 0x00388dcc, declared_size=60, range_size=60, mode=arm
; class-group: POColmap
; alias: _ZN8POColmapD0Ev
; demangled: POColmap::~POColmap()
; decoder-mode: arm
00388dcc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00388dd0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00388dd4  10 40 2d e9                                      push {r4, lr}
00388dd8  03 30 8f e0                                      add r3, pc, r3
00388ddc  02 20 93 e7                                      ldr r2, [r3, r2]
00388de0  00 40 a0 e1                                      mov r4, r0
00388de4  08 20 82 e2                                      add r2, r2, #8
00388de8  00 20 80 e5                                      str r2, [r0]
00388dec  4b 98 03 eb                                      bl #0x46ef20
00388df0  04 00 a0 e1                                      mov r0, r4
00388df4  91 1d fe eb                                      bl #0x310440
00388df8  04 00 a0 e1                                      mov r0, r4
00388dfc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00388e00  b8 bc 60 00 cc 2d 00 00                          .byte 0xb8, 0xbc, 0x60, 0x00, 0xcc, 0x2d, 0x00, 0x00
