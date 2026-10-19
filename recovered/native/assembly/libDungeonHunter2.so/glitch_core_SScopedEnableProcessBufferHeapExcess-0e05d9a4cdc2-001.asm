; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d93c8, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::SScopedEnableProcessBufferHeapExcess
; alias: _ZN6glitch4core36SScopedEnableProcessBufferHeapExcessC1Eb.clone.1
; demangled: glitch::core::SScopedEnableProcessBufferHeapExcess::SScopedEnableProcessBufferHeapExcess(bool) [clone .clone.1]
; decoder-mode: arm
005d93c8  10 40 2d e9                                      push {r4, lr}
005d93cc  00 40 a0 e1                                      mov r4, r0
005d93d0  9f 6b fd eb                                      bl #0x534254
005d93d4  00 00 c4 e5                                      strb r0, [r4]
005d93d8  01 00 a0 e3                                      mov r0, #1
005d93dc  a1 6b fd eb                                      bl #0x534268
005d93e0  04 00 a0 e1                                      mov r0, r4
005d93e4  10 80 bd e8                                      pop {r4, pc}
