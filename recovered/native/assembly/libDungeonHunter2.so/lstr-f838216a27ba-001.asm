; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003179ec, declared_size=24, range_size=24, mode=arm
; class-group: lstr
; alias: _ZNK4lstrclEPKcS1_
; demangled: lstr::operator()(char const*, char const*) const
; decoder-mode: arm
003179ec  10 40 2d e9                                      push {r4, lr}
003179f0  01 00 a0 e1                                      mov r0, r1
003179f4  02 10 a0 e1                                      mov r1, r2
003179f8  47 da ff eb                                      bl #0x30e31c
003179fc  a0 0f a0 e1                                      lsr r0, r0, #0x1f
00317a00  10 80 bd e8                                      pop {r4, pc}
