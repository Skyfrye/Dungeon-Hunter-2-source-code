; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e09cc, declared_size=48, range_size=48, mode=arm
; class-group: glitch::video::E_BLEND_FACTOR glitch::io::IAttributes
; alias: _ZN6glitch2io11IAttributes7getEnumINS_5video14E_BLEND_FACTOREEET_PKc
; demangled: glitch::video::E_BLEND_FACTOR glitch::io::IAttributes::getEnum<glitch::video::E_BLEND_FACTOR>(char const*)
; decoder-mode: arm
005e09cc  70 40 2d e9                                      push {r4, r5, r6, lr}
005e09d0  00 30 90 e5                                      ldr r3, [r0]
005e09d4  00 50 a0 e1                                      mov r5, r0
005e09d8  00 00 a0 e3                                      mov r0, #0
005e09dc  01 60 a0 e1                                      mov r6, r1
005e09e0  00 41 93 e5                                      ldr r4, [r3, #0x100]
005e09e4  d1 e9 03 eb                                      bl #0x6db130
005e09e8  06 10 a0 e1                                      mov r1, r6
005e09ec  00 20 a0 e1                                      mov r2, r0
005e09f0  05 00 a0 e1                                      mov r0, r5
005e09f4  34 ff 2f e1                                      blx r4
005e09f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
