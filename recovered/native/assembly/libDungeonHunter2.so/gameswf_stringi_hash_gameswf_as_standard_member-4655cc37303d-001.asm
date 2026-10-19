; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076dba8, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::stringi_hash<gameswf::as_standard_member>
; alias: _ZN7gameswf12stringi_hashINS_18as_standard_memberEED1Ev
; demangled: gameswf::stringi_hash<gameswf::as_standard_member>::~stringi_hash()
; decoder-mode: arm
0076dba8  10 40 2d e9                                      push {r4, lr}
0076dbac  00 40 a0 e1                                      mov r4, r0
0076dbb0  d4 ff ff eb                                      bl #0x76db08
0076dbb4  04 00 a0 e1                                      mov r0, r4
0076dbb8  10 80 bd e8                                      pop {r4, pc}
