; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005becc4, declared_size=320, range_size=320, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<unsigned char>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE19setParameterElementIhEEN5boost9enable_ifINS1_43SIsValidSetMaterialParameterElementOverloadIT_EEbE4typeEtjhSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<unsigned char>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterElement<unsigned char>(unsigned short, unsigned int, unsigned char, unsigned char)
; decoder-mode: arm
005becc4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005becc8  18 c0 90 e5                                      ldr ip, [r0, #0x18]
005beccc  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005becd0  18 41 9f e5                                      ldr r4, [pc, #0x118]
005becd4  08 d0 4d e2                                      sub sp, sp, #8
005becd8  05 50 6c e0                                      rsb r5, ip, r5
005becdc  45 51 a0 e1                                      asr r5, r5, #2
005bece0  04 40 8f e0                                      add r4, pc, r4
005bece4  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bece8  20 70 dd e5                                      ldrb r7, [sp, #0x20]
005becec  06 62 86 e0                                      add r6, r6, r6, lsl #4
005becf0  06 64 86 e0                                      add r6, r6, r6, lsl #8
005becf4  06 68 86 e0                                      add r6, r6, r6, lsl #16
005becf8  06 51 85 e0                                      add r5, r5, r6, lsl #2
005becfc  05 00 51 e1                                      cmp r1, r5
005bed00  1e 00 00 2a                                      bhs #0x5bed80
005bed04  14 50 a0 e3                                      mov r5, #0x14
005bed08  95 c1 2c e0                                      mla ip, r5, r1, ip
005bed0c  00 10 9c e5                                      ldr r1, [ip]
005bed10  00 00 51 e3                                      cmp r1, #0
005bed14  16 00 00 0a                                      beq #0x5bed74
005bed18  d4 50 9f e5                                      ldr r5, [pc, #0xd4]
005bed1c  06 10 dc e5                                      ldrb r1, [ip, #6]
005bed20  05 50 94 e7                                      ldr r5, [r4, r5]
005bed24  01 51 95 e7                                      ldr r5, [r5, r1, lsl #2]
005bed28  00 00 55 e3                                      cmp r5, #0
005bed2c  10 00 00 1a                                      bne #0x5bed74
005bed30  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
005bed34  05 50 94 e7                                      ldr r5, [r4, r5]
005bed38  01 50 d5 e7                                      ldrb r5, [r5, r1]
005bed3c  05 00 53 e1                                      cmp r3, r5
005bed40  0b 00 00 2a                                      bhs #0x5bed74
005bed44  08 50 9c e5                                      ldr r5, [ip, #8]
005bed48  05 00 52 e1                                      cmp r2, r5
005bed4c  08 00 00 2a                                      bhs #0x5bed74
005bed50  0b 00 51 e3                                      cmp r1, #0xb
005bed54  0c 00 00 0a                                      beq #0x5bed8c
005bed58  2c 40 90 e5                                      ldr r4, [r0, #0x2c]
005bed5c  0c 10 9c e5                                      ldr r1, [ip, #0xc]
005bed60  01 00 a0 e3                                      mov r0, #1
005bed64  03 30 84 e0                                      add r3, r4, r3
005bed68  02 20 83 e0                                      add r2, r3, r2
005bed6c  01 70 c2 e7                                      strb r7, [r2, r1]
005bed70  00 00 00 ea                                      b #0x5bed78
005bed74  00 00 a0 e3                                      mov r0, #0
005bed78  08 d0 8d e2                                      add sp, sp, #8
005bed7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bed80  74 10 9f e5                                      ldr r1, [pc, #0x74]
005bed84  01 c0 94 e7                                      ldr ip, [r4, r1]
005bed88  df ff ff ea                                      b #0x5bed0c
005bed8c  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
005bed90  0c 50 9c e5                                      ldr r5, [ip, #0xc]
005bed94  05 80 96 e7                                      ldr r8, [r6, r5]
005bed98  00 00 58 e3                                      cmp r8, #0
005bed9c  08 00 00 0a                                      beq #0x5bedc4
005beda0  00 20 a0 e3                                      mov r2, #0
005beda4  40 20 c8 e5                                      strb r2, [r8, #0x40]
005beda8  07 00 a0 e1                                      mov r0, r7
005bedac  04 30 8d e5                                      str r3, [sp, #4]
005bedb0  4a 3d f5 eb                                      bl #0x30e2e0
005bedb4  04 30 9d e5                                      ldr r3, [sp, #4]
005bedb8  03 01 88 e7                                      str r0, [r8, r3, lsl #2]
005bedbc  01 00 a0 e3                                      mov r0, #1
005bedc0  ec ff ff ea                                      b #0x5bed78
005bedc4  08 10 a0 e1                                      mov r1, r8
005bedc8  44 00 a0 e3                                      mov r0, #0x44
005bedcc  04 30 8d e5                                      str r3, [sp, #4]
005bedd0  e4 45 f5 eb                                      bl #0x310568
005bedd4  24 20 9f e5                                      ldr r2, [pc, #0x24]
005bedd8  05 00 86 e7                                      str r0, [r6, r5]
005beddc  02 10 94 e7                                      ldr r1, [r4, r2]
005bede0  2b ef ff eb                                      bl #0x5baa94
005bede4  05 80 96 e7                                      ldr r8, [r6, r5]
005bede8  04 30 9d e5                                      ldr r3, [sp, #4]
005bedec  eb ff ff ea                                      b #0x5beda0
; mapping-symbol data/literal pool
005bedf0  b0 5d 3d 00 ac 3b 00 00 ac 2b 00 00 14 28 00 00  .byte 0xb0, 0x5d, 0x3d, 0x00, 0xac, 0x3b, 0x00, 0x00, 0xac, 0x2b, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00
005bee00  30 28 00 00                                      .byte 0x30, 0x28, 0x00, 0x00
