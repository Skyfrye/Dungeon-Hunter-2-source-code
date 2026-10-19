; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00585634, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ITriangleSelector
; alias: _ZN6glitch5scene17ITriangleSelectorD1Ev
; demangled: glitch::scene::ITriangleSelector::~ITriangleSelector()
; decoder-mode: arm
00585634  1e ff 2f e1                                      bx lr

; FUNCTION 0x00586480, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::ITriangleSelector
; alias: _ZN6glitch5scene17ITriangleSelectorD0Ev
; demangled: glitch::scene::ITriangleSelector::~ITriangleSelector()
; decoder-mode: arm
00586480  10 40 2d e9                                      push {r4, lr}
00586484  00 40 a0 e1                                      mov r4, r0
00586488  88 1f f6 eb                                      bl #0x30e2b0
0058648c  04 00 a0 e1                                      mov r0, r4
00586490  10 80 bd e8                                      pop {r4, pc}
