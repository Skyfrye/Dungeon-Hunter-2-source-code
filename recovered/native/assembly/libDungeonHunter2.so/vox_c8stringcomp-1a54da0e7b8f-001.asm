; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088a4d0, declared_size=24, range_size=24, mode=arm
; class-group: vox::c8stringcomp
; alias: _ZNK3vox12c8stringcompclEPKcS2_
; demangled: vox::c8stringcomp::operator()(char const*, char const*) const
; decoder-mode: arm
0088a4d0  10 40 2d e9                                      push {r4, lr}
0088a4d4  01 00 a0 e1                                      mov r0, r1
0088a4d8  02 10 a0 e1                                      mov r1, r2
0088a4dc  81 10 ea eb                                      bl #0x30e6e8
0088a4e0  a0 0f a0 e1                                      lsr r0, r0, #0x1f
0088a4e4  10 80 bd e8                                      pop {r4, pc}
