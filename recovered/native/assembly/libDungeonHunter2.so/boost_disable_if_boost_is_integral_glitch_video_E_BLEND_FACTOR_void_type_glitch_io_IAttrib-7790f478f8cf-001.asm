; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e0a8c, declared_size=72, range_size=72, mode=arm
; class-group: boost::disable_if<boost::is_integral<glitch::video::E_BLEND_FACTOR>, void>::type glitch::io::IAttributes
; alias: _ZN6glitch2io11IAttributes7addEnumINS_5video14E_BLEND_FACTOREEEN5boost10disable_ifINS5_11is_integralIT_EEvE4typeEPKcS8_b.clone.2
; demangled: boost::disable_if<boost::is_integral<glitch::video::E_BLEND_FACTOR>, void>::type glitch::io::IAttributes::addEnum<glitch::video::E_BLEND_FACTOR>(char const*, glitch::video::E_BLEND_FACTOR, bool) [clone .clone.2]
; decoder-mode: arm
005e0a8c  70 40 2d e9                                      push {r4, r5, r6, lr}
005e0a90  00 40 a0 e1                                      mov r4, r0
005e0a94  08 d0 4d e2                                      sub sp, sp, #8
005e0a98  00 00 a0 e3                                      mov r0, #0
005e0a9c  02 50 a0 e1                                      mov r5, r2
005e0aa0  01 60 a0 e1                                      mov r6, r1
005e0aa4  a1 e9 03 eb                                      bl #0x6db130
005e0aa8  00 20 a0 e3                                      mov r2, #0
005e0aac  00 20 8d e5                                      str r2, [sp]
005e0ab0  00 30 a0 e1                                      mov r3, r0
005e0ab4  06 10 a0 e1                                      mov r1, r6
005e0ab8  04 00 a0 e1                                      mov r0, r4
005e0abc  05 20 a0 e1                                      mov r2, r5
005e0ac0  00 c0 94 e5                                      ldr ip, [r4]
005e0ac4  0f e0 a0 e1                                      mov lr, pc
005e0ac8  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005e0acc  08 d0 8d e2                                      add sp, sp, #8
005e0ad0  70 80 bd e8                                      pop {r4, r5, r6, pc}
