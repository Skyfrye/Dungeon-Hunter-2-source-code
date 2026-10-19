; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005fed24, declared_size=72, range_size=72, mode=arm
; class-group: boost::disable_if<boost::is_integral<glitch::video::E_TEXTURE_FILTER_TYPE>, void>::type glitch::io::IAttributes
; alias: _ZN6glitch2io11IAttributes7addEnumINS_5video21E_TEXTURE_FILTER_TYPEEEEN5boost10disable_ifINS5_11is_integralIT_EEvE4typeEPKcS8_b.clone.7
; demangled: boost::disable_if<boost::is_integral<glitch::video::E_TEXTURE_FILTER_TYPE>, void>::type glitch::io::IAttributes::addEnum<glitch::video::E_TEXTURE_FILTER_TYPE>(char const*, glitch::video::E_TEXTURE_FILTER_TYPE, bool) [clone .clone.7]
; decoder-mode: arm
005fed24  70 40 2d e9                                      push {r4, r5, r6, lr}
005fed28  00 40 a0 e1                                      mov r4, r0
005fed2c  08 d0 4d e2                                      sub sp, sp, #8
005fed30  00 00 a0 e3                                      mov r0, #0
005fed34  02 50 a0 e1                                      mov r5, r2
005fed38  01 60 a0 e1                                      mov r6, r1
005fed3c  57 fb ff eb                                      bl #0x5fdaa0
005fed40  00 20 a0 e3                                      mov r2, #0
005fed44  00 20 8d e5                                      str r2, [sp]
005fed48  00 30 a0 e1                                      mov r3, r0
005fed4c  06 10 a0 e1                                      mov r1, r6
005fed50  04 00 a0 e1                                      mov r0, r4
005fed54  05 20 a0 e1                                      mov r2, r5
005fed58  00 c0 94 e5                                      ldr ip, [r4]
005fed5c  0f e0 a0 e1                                      mov lr, pc
005fed60  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005fed64  08 d0 8d e2                                      add sp, sp, #8
005fed68  70 80 bd e8                                      pop {r4, r5, r6, pc}
