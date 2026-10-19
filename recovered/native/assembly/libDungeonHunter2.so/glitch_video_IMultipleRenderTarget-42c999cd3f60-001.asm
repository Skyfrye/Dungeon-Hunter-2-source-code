; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005af1d8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IMultipleRenderTarget
; alias: _ZN6glitch5video21IMultipleRenderTargetD1Ev
; demangled: glitch::video::IMultipleRenderTarget::~IMultipleRenderTarget()
; decoder-mode: arm
005af1d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b0498, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::IMultipleRenderTarget
; alias: _ZN6glitch5video21IMultipleRenderTargetD0Ev
; demangled: glitch::video::IMultipleRenderTarget::~IMultipleRenderTarget()
; decoder-mode: arm
005b0498  10 40 2d e9                                      push {r4, lr}
005b049c  00 40 a0 e1                                      mov r4, r0
005b04a0  82 77 f5 eb                                      bl #0x30e2b0
005b04a4  04 00 a0 e1                                      mov r0, r4
005b04a8  10 80 bd e8                                      pop {r4, pc}
