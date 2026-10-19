; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b8dd8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver::CFramebuffer
; alias: _ZN6glitch5video11CNullDriver12CFramebuffer4bindEv
; demangled: glitch::video::CNullDriver::CFramebuffer::bind()
; decoder-mode: arm
005b8dd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b8ddc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver::CFramebuffer
; alias: _ZN6glitch5video11CNullDriver12CFramebuffer6unbindEv
; demangled: glitch::video::CNullDriver::CFramebuffer::unbind()
; decoder-mode: arm
005b8ddc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9100, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CNullDriver::CFramebuffer
; alias: _ZN6glitch5video11CNullDriver12CFramebufferD1Ev
; demangled: glitch::video::CNullDriver::CFramebuffer::~CFramebuffer()
; decoder-mode: arm
005b9100  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9104, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CNullDriver::CFramebuffer
; alias: _ZN6glitch5video11CNullDriver12CFramebufferD0Ev
; demangled: glitch::video::CNullDriver::CFramebuffer::~CFramebuffer()
; decoder-mode: arm
005b9104  10 40 2d e9                                      push {r4, lr}
005b9108  00 40 a0 e1                                      mov r4, r0
005b910c  67 54 f5 eb                                      bl #0x30e2b0
005b9110  04 00 a0 e1                                      mov r0, r4
005b9114  10 80 bd e8                                      pop {r4, pc}
