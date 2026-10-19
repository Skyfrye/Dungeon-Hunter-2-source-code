; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e0a2c, declared_size=48, range_size=48, mode=arm
; class-group: glitch::video::E_COMPARE_FUNC glitch::io::IAttributes
; alias: _ZN6glitch2io11IAttributes7getEnumINS_5video14E_COMPARE_FUNCEEET_PKc
; demangled: glitch::video::E_COMPARE_FUNC glitch::io::IAttributes::getEnum<glitch::video::E_COMPARE_FUNC>(char const*)
; decoder-mode: arm
005e0a2c  70 40 2d e9                                      push {r4, r5, r6, lr}
005e0a30  00 30 90 e5                                      ldr r3, [r0]
005e0a34  00 50 a0 e1                                      mov r5, r0
005e0a38  00 00 a0 e3                                      mov r0, #0
005e0a3c  01 60 a0 e1                                      mov r6, r1
005e0a40  00 41 93 e5                                      ldr r4, [r3, #0x100]
005e0a44  cc e9 03 eb                                      bl #0x6db17c
005e0a48  06 10 a0 e1                                      mov r1, r6
005e0a4c  00 20 a0 e1                                      mov r2, r0
005e0a50  05 00 a0 e1                                      mov r0, r5
005e0a54  34 ff 2f e1                                      blx r4
005e0a58  70 80 bd e8                                      pop {r4, r5, r6, pc}
