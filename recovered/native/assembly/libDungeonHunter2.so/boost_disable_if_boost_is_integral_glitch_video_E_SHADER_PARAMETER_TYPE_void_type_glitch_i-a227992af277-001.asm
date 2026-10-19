; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005baab4, declared_size=76, range_size=76, mode=arm
; class-group: boost::disable_if<boost::is_integral<glitch::video::E_SHADER_PARAMETER_TYPE>, void>::type glitch::io::IAttributes
; alias: _ZN6glitch2io11IAttributes7addEnumINS_5video23E_SHADER_PARAMETER_TYPEEEEN5boost10disable_ifINS5_11is_integralIT_EEvE4typeEPKcS8_b.clone.2
; demangled: boost::disable_if<boost::is_integral<glitch::video::E_SHADER_PARAMETER_TYPE>, void>::type glitch::io::IAttributes::addEnum<glitch::video::E_SHADER_PARAMETER_TYPE>(char const*, glitch::video::E_SHADER_PARAMETER_TYPE, bool) [clone .clone.2]
; decoder-mode: arm
005baab4  70 40 2d e9                                      push {r4, r5, r6, lr}
005baab8  00 40 a0 e1                                      mov r4, r0
005baabc  08 d0 4d e2                                      sub sp, sp, #8
005baac0  00 00 a0 e3                                      mov r0, #0
005baac4  01 50 a0 e1                                      mov r5, r1
005baac8  02 60 a0 e1                                      mov r6, r2
005baacc  74 b5 00 eb                                      bl #0x5e80a4
005baad0  24 10 9f e5                                      ldr r1, [pc, #0x24]
005baad4  00 60 8d e5                                      str r6, [sp]
005baad8  00 30 a0 e1                                      mov r3, r0
005baadc  01 10 8f e0                                      add r1, pc, r1
005baae0  04 00 a0 e1                                      mov r0, r4
005baae4  05 20 a0 e1                                      mov r2, r5
005baae8  00 c0 94 e5                                      ldr ip, [r4]
005baaec  0f e0 a0 e1                                      mov lr, pc
005baaf0  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005baaf4  08 d0 8d e2                                      add sp, sp, #8
005baaf8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005baafc  9c 7e 30 00                                      .byte 0x9c, 0x7e, 0x30, 0x00
