; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e0ad4, declared_size=72, range_size=72, mode=arm
; class-group: boost::disable_if<boost::is_integral<glitch::video::E_COMPARE_FUNC>, void>::type glitch::io::IAttributes
; alias: _ZN6glitch2io11IAttributes7addEnumINS_5video14E_COMPARE_FUNCEEEN5boost10disable_ifINS5_11is_integralIT_EEvE4typeEPKcS8_b.clone.5
; demangled: boost::disable_if<boost::is_integral<glitch::video::E_COMPARE_FUNC>, void>::type glitch::io::IAttributes::addEnum<glitch::video::E_COMPARE_FUNC>(char const*, glitch::video::E_COMPARE_FUNC, bool) [clone .clone.5]
; decoder-mode: arm
005e0ad4  70 40 2d e9                                      push {r4, r5, r6, lr}
005e0ad8  00 40 a0 e1                                      mov r4, r0
005e0adc  08 d0 4d e2                                      sub sp, sp, #8
005e0ae0  00 00 a0 e3                                      mov r0, #0
005e0ae4  02 50 a0 e1                                      mov r5, r2
005e0ae8  01 60 a0 e1                                      mov r6, r1
005e0aec  a2 e9 03 eb                                      bl #0x6db17c
005e0af0  00 20 a0 e3                                      mov r2, #0
005e0af4  00 20 8d e5                                      str r2, [sp]
005e0af8  00 30 a0 e1                                      mov r3, r0
005e0afc  06 10 a0 e1                                      mov r1, r6
005e0b00  04 00 a0 e1                                      mov r0, r4
005e0b04  05 20 a0 e1                                      mov r2, r5
005e0b08  00 c0 94 e5                                      ldr ip, [r4]
005e0b0c  0f e0 a0 e1                                      mov lr, pc
005e0b10  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005e0b14  08 d0 8d e2                                      add sp, sp, #8
005e0b18  70 80 bd e8                                      pop {r4, r5, r6, pc}
