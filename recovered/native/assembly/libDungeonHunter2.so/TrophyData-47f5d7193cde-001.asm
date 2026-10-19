; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037f9cc, declared_size=4, range_size=4, mode=arm
; class-group: TrophyData
; alias: _ZN10TrophyDataD1Ev
; demangled: TrophyData::~TrophyData()
; decoder-mode: arm
0037f9cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0037fa80, declared_size=52, range_size=52, mode=arm
; class-group: TrophyData
; alias: _ZN10TrophyDataD0Ev
; demangled: TrophyData::~TrophyData()
; decoder-mode: arm
0037fa80  24 30 9f e5                                      ldr r3, [pc, #0x24]
0037fa84  24 20 9f e5                                      ldr r2, [pc, #0x24]
0037fa88  10 40 2d e9                                      push {r4, lr}
0037fa8c  03 30 8f e0                                      add r3, pc, r3
0037fa90  02 20 93 e7                                      ldr r2, [r3, r2]
0037fa94  00 40 a0 e1                                      mov r4, r0
0037fa98  08 20 82 e2                                      add r2, r2, #8
0037fa9c  00 20 80 e5                                      str r2, [r0]
0037faa0  66 42 fe eb                                      bl #0x310440
0037faa4  04 00 a0 e1                                      mov r0, r4
0037faa8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0037faac  04 50 61 00 6c 37 00 00                          .byte 0x04, 0x50, 0x61, 0x00, 0x6c, 0x37, 0x00, 0x00
