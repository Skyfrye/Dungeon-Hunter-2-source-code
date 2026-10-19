; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cac8c, declared_size=172, range_size=172, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidColorSourceCvt<glitch::video::SColorf>, void>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE14setParameterAtINS0_7SColorfEEEN5boost9enable_ifINS1_22SIsValidColorSourceCvtIT_EEvE4typeEPSC_RKNS0_6SColorE
; demangled: boost::enable_if<glitch::video::detail::SIsValidColorSourceCvt<glitch::video::SColorf>, void>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterAt<glitch::video::SColorf>(glitch::video::SColorf*, glitch::video::SColor const&)
; decoder-mode: arm
005cac8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005cac90  00 60 a0 e1                                      mov r6, r0
005cac94  10 d0 4d e2                                      sub sp, sp, #0x10
005cac98  00 00 d2 e5                                      ldrb r0, [r2]
005cac9c  03 50 d2 e5                                      ldrb r5, [r2, #3]
005caca0  01 80 d2 e5                                      ldrb r8, [r2, #1]
005caca4  02 70 d2 e5                                      ldrb r7, [r2, #2]
005caca8  01 40 a0 e1                                      mov r4, r1
005cacac  2c 0f f5 eb                                      bl #0x30e964
005cacb0  81 10 08 e3                                      movw r1, #0x8081
005cacb4  80 1b 43 e3                                      movt r1, #0x3b80
005cacb8  2b 10 f5 eb                                      bl #0x30ed6c
005cacbc  00 00 8d e5                                      str r0, [sp]
005cacc0  08 00 a0 e1                                      mov r0, r8
005cacc4  26 0f f5 eb                                      bl #0x30e964
005cacc8  81 10 08 e3                                      movw r1, #0x8081
005caccc  80 1b 43 e3                                      movt r1, #0x3b80
005cacd0  25 10 f5 eb                                      bl #0x30ed6c
005cacd4  04 00 8d e5                                      str r0, [sp, #4]
005cacd8  07 00 a0 e1                                      mov r0, r7
005cacdc  20 0f f5 eb                                      bl #0x30e964
005cace0  81 10 08 e3                                      movw r1, #0x8081
005cace4  80 1b 43 e3                                      movt r1, #0x3b80
005cace8  1f 10 f5 eb                                      bl #0x30ed6c
005cacec  08 00 8d e5                                      str r0, [sp, #8]
005cacf0  05 00 a0 e1                                      mov r0, r5
005cacf4  1a 0f f5 eb                                      bl #0x30e964
005cacf8  81 10 08 e3                                      movw r1, #0x8081
005cacfc  80 1b 43 e3                                      movt r1, #0x3b80
005cad00  19 10 f5 eb                                      bl #0x30ed6c
005cad04  0d 10 a0 e1                                      mov r1, sp
005cad08  0c 00 8d e5                                      str r0, [sp, #0xc]
005cad0c  04 00 a0 e1                                      mov r0, r4
005cad10  60 ff ff eb                                      bl #0x5caa98
005cad14  00 00 50 e3                                      cmp r0, #0
005cad18  00 30 e0 03                                      mvneq r3, #0
005cad1c  0c 30 86 05                                      streq r3, [r6, #0xc]
005cad20  10 30 86 05                                      streq r3, [r6, #0x10]
005cad24  0d 50 a0 e1                                      mov r5, sp
005cad28  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005cad2c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005cad30  10 d0 8d e2                                      add sp, sp, #0x10
005cad34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
