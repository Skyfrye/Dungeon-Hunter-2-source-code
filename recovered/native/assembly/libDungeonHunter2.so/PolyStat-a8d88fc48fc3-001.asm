; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005102e8, declared_size=68, range_size=68, mode=arm
; class-group: PolyStat
; alias: _ZN8PolyStatD1Ev
; demangled: PolyStat::~PolyStat()
; decoder-mode: arm
005102e8  10 40 2d e9                                      push {r4, lr}
005102ec  00 40 a0 e1                                      mov r4, r0
005102f0  14 00 90 e5                                      ldr r0, [r0, #0x14]
005102f4  04 00 50 e1                                      cmp r0, r4
005102f8  06 00 00 0a                                      beq #0x510318
005102fc  00 00 50 e3                                      cmp r0, #0
00510300  04 00 00 0a                                      beq #0x510318
00510304  00 10 94 e5                                      ldr r1, [r4]
00510308  01 10 60 e0                                      rsb r1, r0, r1
0051030c  80 00 51 e3                                      cmp r1, #0x80
00510310  02 00 00 8a                                      bhi #0x510320
00510314  f9 e2 07 eb                                      bl #0x708f00
00510318  04 00 a0 e1                                      mov r0, r4
0051031c  10 80 bd e8                                      pop {r4, pc}
00510320  46 00 f8 eb                                      bl #0x310440
00510324  04 00 a0 e1                                      mov r0, r4
00510328  10 80 bd e8                                      pop {r4, pc}
