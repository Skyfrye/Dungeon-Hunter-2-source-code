; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c0aa8, declared_size=300, range_size=300, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE19setParameterElementIfEEN5boost9enable_ifINS1_43SIsValidSetMaterialParameterElementOverloadIT_EEbE4typeEtjhSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterElement<float>(unsigned short, unsigned int, unsigned char, float)
; decoder-mode: arm
005c0aa8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005c0aac  18 c0 90 e5                                      ldr ip, [r0, #0x18]
005c0ab0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c0ab4  04 41 9f e5                                      ldr r4, [pc, #0x104]
005c0ab8  0c d0 4d e2                                      sub sp, sp, #0xc
005c0abc  05 50 6c e0                                      rsb r5, ip, r5
005c0ac0  45 51 a0 e1                                      asr r5, r5, #2
005c0ac4  04 40 8f e0                                      add r4, pc, r4
005c0ac8  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c0acc  20 70 9d e5                                      ldr r7, [sp, #0x20]
005c0ad0  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c0ad4  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c0ad8  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c0adc  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c0ae0  05 00 51 e1                                      cmp r1, r5
005c0ae4  1e 00 00 2a                                      bhs #0x5c0b64
005c0ae8  14 50 a0 e3                                      mov r5, #0x14
005c0aec  95 c1 2c e0                                      mla ip, r5, r1, ip
005c0af0  00 10 9c e5                                      ldr r1, [ip]
005c0af4  00 00 51 e3                                      cmp r1, #0
005c0af8  05 00 00 0a                                      beq #0x5c0b14
005c0afc  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
005c0b00  06 10 dc e5                                      ldrb r1, [ip, #6]
005c0b04  05 50 94 e7                                      ldr r5, [r4, r5]
005c0b08  01 51 95 e7                                      ldr r5, [r5, r1, lsl #2]
005c0b0c  05 00 55 e3                                      cmp r5, #5
005c0b10  02 00 00 0a                                      beq #0x5c0b20
005c0b14  00 00 a0 e3                                      mov r0, #0
005c0b18  0c d0 8d e2                                      add sp, sp, #0xc
005c0b1c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005c0b20  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
005c0b24  05 50 94 e7                                      ldr r5, [r4, r5]
005c0b28  01 50 d5 e7                                      ldrb r5, [r5, r1]
005c0b2c  05 00 53 e1                                      cmp r3, r5
005c0b30  f7 ff ff 2a                                      bhs #0x5c0b14
005c0b34  08 50 9c e5                                      ldr r5, [ip, #8]
005c0b38  05 00 52 e1                                      cmp r2, r5
005c0b3c  f4 ff ff 2a                                      bhs #0x5c0b14
005c0b40  0b 00 51 e3                                      cmp r1, #0xb
005c0b44  09 00 00 0a                                      beq #0x5c0b70
005c0b48  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005c0b4c  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c0b50  02 30 83 e0                                      add r3, r3, r2
005c0b54  03 31 8c e0                                      add r3, ip, r3, lsl #2
005c0b58  03 70 81 e7                                      str r7, [r1, r3]
005c0b5c  01 00 a0 e3                                      mov r0, #1
005c0b60  ec ff ff ea                                      b #0x5c0b18
005c0b64  60 10 9f e5                                      ldr r1, [pc, #0x60]
005c0b68  01 c0 94 e7                                      ldr ip, [r4, r1]
005c0b6c  df ff ff ea                                      b #0x5c0af0
005c0b70  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
005c0b74  0c 50 9c e5                                      ldr r5, [ip, #0xc]
005c0b78  05 10 96 e7                                      ldr r1, [r6, r5]
005c0b7c  00 00 51 e3                                      cmp r1, #0
005c0b80  04 00 00 0a                                      beq #0x5c0b98
005c0b84  00 20 a0 e3                                      mov r2, #0
005c0b88  40 20 c1 e5                                      strb r2, [r1, #0x40]
005c0b8c  01 00 a0 e3                                      mov r0, #1
005c0b90  03 71 81 e7                                      str r7, [r1, r3, lsl #2]
005c0b94  df ff ff ea                                      b #0x5c0b18
005c0b98  44 00 a0 e3                                      mov r0, #0x44
005c0b9c  04 30 8d e5                                      str r3, [sp, #4]
005c0ba0  70 3e f5 eb                                      bl #0x310568
005c0ba4  24 20 9f e5                                      ldr r2, [pc, #0x24]
005c0ba8  05 00 86 e7                                      str r0, [r6, r5]
005c0bac  02 10 94 e7                                      ldr r1, [r4, r2]
005c0bb0  b7 e7 ff eb                                      bl #0x5baa94
005c0bb4  05 10 96 e7                                      ldr r1, [r6, r5]
005c0bb8  04 30 9d e5                                      ldr r3, [sp, #4]
005c0bbc  f0 ff ff ea                                      b #0x5c0b84
; mapping-symbol data/literal pool
005c0bc0  cc 3f 3d 00 ac 3b 00 00 ac 2b 00 00 14 28 00 00  .byte 0xcc, 0x3f, 0x3d, 0x00, 0xac, 0x3b, 0x00, 0x00, 0xac, 0x2b, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00
005c0bd0  30 28 00 00                                      .byte 0x30, 0x28, 0x00, 0x00
