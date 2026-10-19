; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005ba66c, declared_size=72, range_size=72, mode=arm
; class-group: boost::disable_if<boost::is_integral<glitch::video::E_SHADER_PARAMETER_VALUE_TYPE>, void>::type glitch::io::IAttributes
; alias: _ZN6glitch2io11IAttributes7addEnumINS_5video29E_SHADER_PARAMETER_VALUE_TYPEEEEN5boost10disable_ifINS5_11is_integralIT_EEvE4typeEPKcS8_b
; demangled: boost::disable_if<boost::is_integral<glitch::video::E_SHADER_PARAMETER_VALUE_TYPE>, void>::type glitch::io::IAttributes::addEnum<glitch::video::E_SHADER_PARAMETER_VALUE_TYPE>(char const*, glitch::video::E_SHADER_PARAMETER_VALUE_TYPE, bool)
; decoder-mode: arm
005ba66c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005ba670  00 40 a0 e1                                      mov r4, r0
005ba674  0c d0 4d e2                                      sub sp, sp, #0xc
005ba678  00 00 a0 e3                                      mov r0, #0
005ba67c  03 50 a0 e1                                      mov r5, r3
005ba680  01 70 a0 e1                                      mov r7, r1
005ba684  02 60 a0 e1                                      mov r6, r2
005ba688  89 b6 00 eb                                      bl #0x5e80b4
005ba68c  00 50 8d e5                                      str r5, [sp]
005ba690  00 30 a0 e1                                      mov r3, r0
005ba694  07 10 a0 e1                                      mov r1, r7
005ba698  04 00 a0 e1                                      mov r0, r4
005ba69c  06 20 a0 e1                                      mov r2, r6
005ba6a0  00 c0 94 e5                                      ldr ip, [r4]
005ba6a4  0f e0 a0 e1                                      mov lr, pc
005ba6a8  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005ba6ac  0c d0 8d e2                                      add sp, sp, #0xc
005ba6b0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
