; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076d9d0, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::string_hash<gameswf::tu_loadlib*>
; alias: _ZN7gameswf11string_hashIPNS_10tu_loadlibEED1Ev
; demangled: gameswf::string_hash<gameswf::tu_loadlib*>::~string_hash()
; decoder-mode: arm
0076d9d0  10 40 2d e9                                      push {r4, lr}
0076d9d4  00 40 a0 e1                                      mov r4, r0
0076d9d8  d4 ff ff eb                                      bl #0x76d930
0076d9dc  04 00 a0 e1                                      mov r0, r4
0076d9e0  10 80 bd e8                                      pop {r4, pc}
