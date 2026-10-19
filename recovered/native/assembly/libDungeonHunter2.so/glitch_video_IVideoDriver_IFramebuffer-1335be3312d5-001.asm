; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005aef9c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IVideoDriver::IFramebuffer
; alias: _ZN6glitch5video12IVideoDriver12IFramebufferD1Ev
; demangled: glitch::video::IVideoDriver::IFramebuffer::~IFramebuffer()
; decoder-mode: arm
005aef9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b0508, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::IVideoDriver::IFramebuffer
; alias: _ZN6glitch5video12IVideoDriver12IFramebufferD0Ev
; demangled: glitch::video::IVideoDriver::IFramebuffer::~IFramebuffer()
; decoder-mode: arm
005b0508  10 40 2d e9                                      push {r4, lr}
005b050c  00 40 a0 e1                                      mov r4, r0
005b0510  66 77 f5 eb                                      bl #0x30e2b0
005b0514  04 00 a0 e1                                      mov r0, r4
005b0518  10 80 bd e8                                      pop {r4, pc}
