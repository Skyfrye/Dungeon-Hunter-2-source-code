; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a03cc, declared_size=48, range_size=48, mode=arm
; class-group: glitch::video::E_INDEX_TYPE glitch::io::IAttributes
; alias: _ZN6glitch2io11IAttributes7getEnumINS_5video12E_INDEX_TYPEEEET_i
; demangled: glitch::video::E_INDEX_TYPE glitch::io::IAttributes::getEnum<glitch::video::E_INDEX_TYPE>(int)
; decoder-mode: arm
005a03cc  70 40 2d e9                                      push {r4, r5, r6, lr}
005a03d0  00 30 90 e5                                      ldr r3, [r0]
005a03d4  00 50 a0 e1                                      mov r5, r0
005a03d8  00 00 a0 e3                                      mov r0, #0
005a03dc  01 60 a0 e1                                      mov r6, r1
005a03e0  04 41 93 e5                                      ldr r4, [r3, #0x104]
005a03e4  23 05 00 eb                                      bl #0x5a1878
005a03e8  06 10 a0 e1                                      mov r1, r6
005a03ec  00 20 a0 e1                                      mov r2, r0
005a03f0  05 00 a0 e1                                      mov r0, r5
005a03f4  34 ff 2f e1                                      blx r4
005a03f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
