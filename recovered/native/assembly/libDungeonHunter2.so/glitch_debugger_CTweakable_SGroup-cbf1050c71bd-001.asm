; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329d64, declared_size=40, range_size=40, mode=arm
; class-group: glitch::debugger::CTweakable::SGroup
; alias: _ZN6glitch8debugger10CTweakable6SGroupD1Ev
; demangled: glitch::debugger::CTweakable::SGroup::~SGroup()
; decoder-mode: arm
00329d64  10 40 2d e9                                      push {r4, lr}
00329d68  00 40 a0 e1                                      mov r4, r0
00329d6c  24 00 80 e2                                      add r0, r0, #0x24
00329d70  dd ff ff eb                                      bl #0x329cec
00329d74  18 00 84 e2                                      add r0, r4, #0x18
00329d78  6c a8 ff eb                                      bl #0x313f30
00329d7c  04 00 a0 e1                                      mov r0, r4
00329d80  09 a7 ff eb                                      bl #0x3139ac
00329d84  04 00 a0 e1                                      mov r0, r4
00329d88  10 80 bd e8                                      pop {r4, pc}
