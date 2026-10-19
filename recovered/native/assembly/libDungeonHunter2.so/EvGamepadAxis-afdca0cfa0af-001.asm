; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0040691c, declared_size=4, range_size=4, mode=arm
; class-group: EvGamepadAxis
; alias: _ZN13EvGamepadAxisD1Ev
; demangled: EvGamepadAxis::~EvGamepadAxis()
; decoder-mode: arm
0040691c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00406928, declared_size=52, range_size=52, mode=arm
; class-group: EvGamepadAxis
; alias: _ZN13EvGamepadAxisD0Ev
; demangled: EvGamepadAxis::~EvGamepadAxis()
; decoder-mode: arm
00406928  24 30 9f e5                                      ldr r3, [pc, #0x24]
0040692c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00406930  10 40 2d e9                                      push {r4, lr}
00406934  03 30 8f e0                                      add r3, pc, r3
00406938  02 20 93 e7                                      ldr r2, [r3, r2]
0040693c  00 40 a0 e1                                      mov r4, r0
00406940  08 20 82 e2                                      add r2, r2, #8
00406944  00 20 80 e5                                      str r2, [r0]
00406948  bc 26 fc eb                                      bl #0x310440
0040694c  04 00 a0 e1                                      mov r0, r4
00406950  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00406954  5c e1 58 00 b0 0b 00 00                          .byte 0x5c, 0xe1, 0x58, 0x00, 0xb0, 0x0b, 0x00, 0x00
