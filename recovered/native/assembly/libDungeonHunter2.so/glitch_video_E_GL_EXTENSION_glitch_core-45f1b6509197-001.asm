; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006dd6dc, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::E_GL_EXTENSION glitch::core
; alias: _ZN6glitch4core8getValueINS_5video14E_GL_EXTENSIONEEET_PKc
; demangled: glitch::video::E_GL_EXTENSION glitch::core::getValue<glitch::video::E_GL_EXTENSION>(char const*)
; decoder-mode: arm
006dd6dc  70 40 2d e9                                      push {r4, r5, r6, lr}
006dd6e0  00 60 a0 e1                                      mov r6, r0
006dd6e4  00 00 a0 e3                                      mov r0, #0
006dd6e8  56 04 00 eb                                      bl #0x6de848
006dd6ec  00 10 90 e5                                      ldr r1, [r0]
006dd6f0  00 50 a0 e1                                      mov r5, r0
006dd6f4  00 00 51 e3                                      cmp r1, #0
006dd6f8  0b 00 00 0a                                      beq #0x6dd72c
006dd6fc  01 40 a0 e3                                      mov r4, #1
006dd700  03 00 00 ea                                      b #0x6dd714
006dd704  04 11 95 e7                                      ldr r1, [r5, r4, lsl #2]
006dd708  01 40 84 e2                                      add r4, r4, #1
006dd70c  00 00 51 e3                                      cmp r1, #0
006dd710  05 00 00 0a                                      beq #0x6dd72c
006dd714  06 00 a0 e1                                      mov r0, r6
006dd718  ff c2 f0 eb                                      bl #0x30e31c
006dd71c  00 00 50 e3                                      cmp r0, #0
006dd720  f7 ff ff 1a                                      bne #0x6dd704
006dd724  01 00 44 e2                                      sub r0, r4, #1
006dd728  70 80 bd e8                                      pop {r4, r5, r6, pc}
006dd72c  ff 0f 0f e3                                      movw r0, #0xffff
006dd730  70 80 bd e8                                      pop {r4, r5, r6, pc}
