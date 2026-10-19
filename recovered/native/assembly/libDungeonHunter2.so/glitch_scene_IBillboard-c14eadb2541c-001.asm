; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00580a20, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IBillboard
; alias: _ZN6glitch5scene10IBillboardD1Ev
; demangled: glitch::scene::IBillboard::~IBillboard()
; decoder-mode: arm
00580a20  1e ff 2f e1                                      bx lr

; FUNCTION 0x00580dd4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::IBillboard
; alias: _ZN6glitch5scene10IBillboardD0Ev
; demangled: glitch::scene::IBillboard::~IBillboard()
; decoder-mode: arm
00580dd4  10 40 2d e9                                      push {r4, lr}
00580dd8  00 40 a0 e1                                      mov r4, r0
00580ddc  33 35 f6 eb                                      bl #0x30e2b0
00580de0  04 00 a0 e1                                      mov r0, r4
00580de4  10 80 bd e8                                      pop {r4, pc}
