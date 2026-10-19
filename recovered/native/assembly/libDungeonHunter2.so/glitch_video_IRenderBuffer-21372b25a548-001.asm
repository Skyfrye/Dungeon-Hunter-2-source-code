; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005aefa0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IRenderBuffer
; alias: _ZN6glitch5video13IRenderBufferD1Ev
; demangled: glitch::video::IRenderBuffer::~IRenderBuffer()
; decoder-mode: arm
005aefa0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b04c0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::IRenderBuffer
; alias: _ZN6glitch5video13IRenderBufferD0Ev
; demangled: glitch::video::IRenderBuffer::~IRenderBuffer()
; decoder-mode: arm
005b04c0  10 40 2d e9                                      push {r4, lr}
005b04c4  00 40 a0 e1                                      mov r4, r0
005b04c8  78 77 f5 eb                                      bl #0x30e2b0
005b04cc  04 00 a0 e1                                      mov r0, r4
005b04d0  10 80 bd e8                                      pop {r4, pc}
