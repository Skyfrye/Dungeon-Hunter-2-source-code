; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00608870, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IBatchBaker
; alias: _ZN6glitch5video11IBatchBakerD1Ev
; demangled: glitch::video::IBatchBaker::~IBatchBaker()
; decoder-mode: arm
00608870  1e ff 2f e1                                      bx lr

; FUNCTION 0x00609a04, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::IBatchBaker
; alias: _ZN6glitch5video11IBatchBakerD0Ev
; demangled: glitch::video::IBatchBaker::~IBatchBaker()
; decoder-mode: arm
00609a04  10 40 2d e9                                      push {r4, lr}
00609a08  00 40 a0 e1                                      mov r4, r0
00609a0c  27 12 f4 eb                                      bl #0x30e2b0
00609a10  04 00 a0 e1                                      mov r0, r4
00609a14  10 80 bd e8                                      pop {r4, pc}
