; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007613b0, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::base_fill_style
; alias: _ZN7gameswf15base_fill_styleD1Ev
; demangled: gameswf::base_fill_style::~base_fill_style()
; decoder-mode: arm
007613b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007617b4, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::base_fill_style
; alias: _ZN7gameswf15base_fill_styleD0Ev
; demangled: gameswf::base_fill_style::~base_fill_style()
; decoder-mode: arm
007617b4  10 40 2d e9                                      push {r4, lr}
007617b8  00 40 a0 e1                                      mov r4, r0
007617bc  bb b2 ee eb                                      bl #0x30e2b0
007617c0  04 00 a0 e1                                      mov r0, r4
007617c4  10 80 bd e8                                      pop {r4, pc}
