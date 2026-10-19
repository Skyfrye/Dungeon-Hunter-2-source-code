; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d9d88, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::stringi_hash<gameswf::as_color_transform_member>
; alias: _ZN7gameswf12stringi_hashINS_25as_color_transform_memberEED1Ev
; demangled: gameswf::stringi_hash<gameswf::as_color_transform_member>::~stringi_hash()
; decoder-mode: arm
007d9d88  10 40 2d e9                                      push {r4, lr}
007d9d8c  00 40 a0 e1                                      mov r4, r0
007d9d90  d4 ff ff eb                                      bl #0x7d9ce8
007d9d94  04 00 a0 e1                                      mov r0, r4
007d9d98  10 80 bd e8                                      pop {r4, pc}
