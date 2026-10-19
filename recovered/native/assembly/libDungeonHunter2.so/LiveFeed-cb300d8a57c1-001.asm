; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0083ab64, declared_size=64, range_size=64, mode=arm
; class-group: _LiveFeed
; alias: _ZN9_LiveFeedD1Ev
; demangled: _LiveFeed::~_LiveFeed()
; decoder-mode: arm
0083ab64  10 40 2d e9                                      push {r4, lr}
0083ab68  00 40 a0 e1                                      mov r4, r0
0083ab6c  00 00 90 e5                                      ldr r0, [r0]
0083ab70  00 00 50 e3                                      cmp r0, #0
0083ab74  02 00 00 0a                                      beq #0x83ab84
0083ab78  4e 4d eb eb                                      bl #0x30e0b8
0083ab7c  00 30 a0 e3                                      mov r3, #0
0083ab80  00 30 84 e5                                      str r3, [r4]
0083ab84  04 00 94 e5                                      ldr r0, [r4, #4]
0083ab88  00 00 50 e3                                      cmp r0, #0
0083ab8c  02 00 00 0a                                      beq #0x83ab9c
0083ab90  48 4d eb eb                                      bl #0x30e0b8
0083ab94  00 30 a0 e3                                      mov r3, #0
0083ab98  04 30 84 e5                                      str r3, [r4, #4]
0083ab9c  04 00 a0 e1                                      mov r0, r4
0083aba0  10 80 bd e8                                      pop {r4, pc}
