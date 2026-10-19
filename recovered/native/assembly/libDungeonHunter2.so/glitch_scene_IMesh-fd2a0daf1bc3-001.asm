; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00596c68, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IMesh
; alias: _ZN6glitch5scene5IMeshD1Ev
; demangled: glitch::scene::IMesh::~IMesh()
; decoder-mode: arm
00596c68  1e ff 2f e1                                      bx lr

; FUNCTION 0x00596c6c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IMesh
; alias: _ZNK6glitch5scene5IMesh15getUserPropertyEv
; demangled: glitch::scene::IMesh::getUserProperty() const
; decoder-mode: arm
00596c6c  00 00 a0 e3                                      mov r0, #0
00596c70  1e ff 2f e1                                      bx lr

; FUNCTION 0x00596c94, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::IMesh
; alias: _ZN6glitch5scene5IMeshD0Ev
; demangled: glitch::scene::IMesh::~IMesh()
; decoder-mode: arm
00596c94  10 40 2d e9                                      push {r4, lr}
00596c98  00 40 a0 e1                                      mov r4, r0
00596c9c  83 dd f5 eb                                      bl #0x30e2b0
00596ca0  04 00 a0 e1                                      mov r0, r4
00596ca4  10 80 bd e8                                      pop {r4, pc}
