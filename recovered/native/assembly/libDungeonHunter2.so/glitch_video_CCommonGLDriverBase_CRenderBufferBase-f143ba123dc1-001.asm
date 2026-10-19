; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005af1d4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderBufferBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderBufferBaseD1Ev
; demangled: glitch::video::CCommonGLDriverBase::CRenderBufferBase::~CRenderBufferBase()
; decoder-mode: arm
005af1d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b04ac, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderBufferBase
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderBufferBaseD0Ev
; demangled: glitch::video::CCommonGLDriverBase::CRenderBufferBase::~CRenderBufferBase()
; decoder-mode: arm
005b04ac  10 40 2d e9                                      push {r4, lr}
005b04b0  00 40 a0 e1                                      mov r4, r0
005b04b4  7d 77 f5 eb                                      bl #0x30e2b0
005b04b8  04 00 a0 e1                                      mov r0, r4
005b04bc  10 80 bd e8                                      pop {r4, pc}
