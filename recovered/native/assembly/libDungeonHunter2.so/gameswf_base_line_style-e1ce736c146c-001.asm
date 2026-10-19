; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007613b4, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::base_line_style
; alias: _ZN7gameswf15base_line_styleD1Ev
; demangled: gameswf::base_line_style::~base_line_style()
; decoder-mode: arm
007613b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007617c8, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::base_line_style
; alias: _ZN7gameswf15base_line_styleD0Ev
; demangled: gameswf::base_line_style::~base_line_style()
; decoder-mode: arm
007617c8  10 40 2d e9                                      push {r4, lr}
007617cc  00 40 a0 e1                                      mov r4, r0
007617d0  b6 b2 ee eb                                      bl #0x30e2b0
007617d4  04 00 a0 e1                                      mov r0, r4
007617d8  10 80 bd e8                                      pop {r4, pc}
