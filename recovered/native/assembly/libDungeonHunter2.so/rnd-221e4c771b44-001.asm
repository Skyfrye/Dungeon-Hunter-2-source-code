; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00489aa4, declared_size=72, range_size=72, mode=arm
; class-group: rnd
; alias: _ZN3rnd9TryIsZeroEPKc
; demangled: rnd::TryIsZero(char const*)
; decoder-mode: arm
00489aa4  38 10 9f e5                                      ldr r1, [pc, #0x38]
00489aa8  10 40 2d e9                                      push {r4, lr}
00489aac  01 10 8f e0                                      add r1, pc, r1
00489ab0  00 40 a0 e1                                      mov r4, r0
00489ab4  0b 13 fa eb                                      bl #0x30e6e8
00489ab8  00 00 50 e3                                      cmp r0, #0
00489abc  06 00 00 0a                                      beq #0x489adc
00489ac0  20 10 9f e5                                      ldr r1, [pc, #0x20]
00489ac4  04 00 a0 e1                                      mov r0, r4
00489ac8  01 10 8f e0                                      add r1, pc, r1
00489acc  05 13 fa eb                                      bl #0x30e6e8
00489ad0  01 00 70 e2                                      rsbs r0, r0, #1
00489ad4  00 00 a0 33                                      movlo r0, #0
00489ad8  10 80 bd e8                                      pop {r4, pc}
00489adc  01 00 a0 e3                                      mov r0, #1
00489ae0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00489ae4  e4 39 44 00 40 1d 44 00                          .byte 0xe4, 0x39, 0x44, 0x00, 0x40, 0x1d, 0x44, 0x00
