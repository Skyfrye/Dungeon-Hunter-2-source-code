; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005beb84, declared_size=320, range_size=320, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE19setParameterElementIiEEN5boost9enable_ifINS1_43SIsValidSetMaterialParameterElementOverloadIT_EEbE4typeEtjhSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterElement<int>(unsigned short, unsigned int, unsigned char, int)
; decoder-mode: arm
005beb84  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005beb88  18 c0 90 e5                                      ldr ip, [r0, #0x18]
005beb8c  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005beb90  18 41 9f e5                                      ldr r4, [pc, #0x118]
005beb94  08 d0 4d e2                                      sub sp, sp, #8
005beb98  05 50 6c e0                                      rsb r5, ip, r5
005beb9c  45 51 a0 e1                                      asr r5, r5, #2
005beba0  04 40 8f e0                                      add r4, pc, r4
005beba4  85 60 85 e0                                      add r6, r5, r5, lsl #1
005beba8  20 70 9d e5                                      ldr r7, [sp, #0x20]
005bebac  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bebb0  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bebb4  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bebb8  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bebbc  05 00 51 e1                                      cmp r1, r5
005bebc0  1e 00 00 2a                                      bhs #0x5bec40
005bebc4  14 50 a0 e3                                      mov r5, #0x14
005bebc8  95 c1 2c e0                                      mla ip, r5, r1, ip
005bebcc  00 10 9c e5                                      ldr r1, [ip]
005bebd0  00 00 51 e3                                      cmp r1, #0
005bebd4  05 00 00 0a                                      beq #0x5bebf0
005bebd8  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
005bebdc  06 50 dc e5                                      ldrb r5, [ip, #6]
005bebe0  01 10 94 e7                                      ldr r1, [r4, r1]
005bebe4  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
005bebe8  01 00 51 e3                                      cmp r1, #1
005bebec  02 00 00 0a                                      beq #0x5bebfc
005bebf0  00 00 a0 e3                                      mov r0, #0
005bebf4  08 d0 8d e2                                      add sp, sp, #8
005bebf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bebfc  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
005bec00  06 60 94 e7                                      ldr r6, [r4, r6]
005bec04  05 60 d6 e7                                      ldrb r6, [r6, r5]
005bec08  06 00 53 e1                                      cmp r3, r6
005bec0c  f7 ff ff 2a                                      bhs #0x5bebf0
005bec10  08 60 9c e5                                      ldr r6, [ip, #8]
005bec14  06 00 52 e1                                      cmp r2, r6
005bec18  f4 ff ff 2a                                      bhs #0x5bebf0
005bec1c  0b 00 55 e3                                      cmp r5, #0xb
005bec20  09 00 00 0a                                      beq #0x5bec4c
005bec24  0c c0 9c e5                                      ldr ip, [ip, #0xc]
005bec28  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005bec2c  02 30 83 e0                                      add r3, r3, r2
005bec30  03 31 8c e0                                      add r3, ip, r3, lsl #2
005bec34  03 70 80 e7                                      str r7, [r0, r3]
005bec38  01 00 a0 e1                                      mov r0, r1
005bec3c  ec ff ff ea                                      b #0x5bebf4
005bec40  74 10 9f e5                                      ldr r1, [pc, #0x74]
005bec44  01 c0 94 e7                                      ldr ip, [r4, r1]
005bec48  df ff ff ea                                      b #0x5bebcc
005bec4c  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
005bec50  0c 50 9c e5                                      ldr r5, [ip, #0xc]
005bec54  05 80 96 e7                                      ldr r8, [r6, r5]
005bec58  00 00 58 e3                                      cmp r8, #0
005bec5c  08 00 00 0a                                      beq #0x5bec84
005bec60  00 20 a0 e3                                      mov r2, #0
005bec64  40 20 c8 e5                                      strb r2, [r8, #0x40]
005bec68  07 00 a0 e1                                      mov r0, r7
005bec6c  04 30 8d e5                                      str r3, [sp, #4]
005bec70  3b 3f f5 eb                                      bl #0x30e964
005bec74  04 30 9d e5                                      ldr r3, [sp, #4]
005bec78  03 01 88 e7                                      str r0, [r8, r3, lsl #2]
005bec7c  01 00 a0 e3                                      mov r0, #1
005bec80  db ff ff ea                                      b #0x5bebf4
005bec84  08 10 a0 e1                                      mov r1, r8
005bec88  44 00 a0 e3                                      mov r0, #0x44
005bec8c  04 30 8d e5                                      str r3, [sp, #4]
005bec90  34 46 f5 eb                                      bl #0x310568
005bec94  24 20 9f e5                                      ldr r2, [pc, #0x24]
005bec98  05 00 86 e7                                      str r0, [r6, r5]
005bec9c  02 10 94 e7                                      ldr r1, [r4, r2]
005beca0  7b ef ff eb                                      bl #0x5baa94
005beca4  05 80 96 e7                                      ldr r8, [r6, r5]
005beca8  04 30 9d e5                                      ldr r3, [sp, #4]
005becac  eb ff ff ea                                      b #0x5bec60
; mapping-symbol data/literal pool
005becb0  f0 5e 3d 00 ac 3b 00 00 ac 2b 00 00 14 28 00 00  .byte 0xf0, 0x5e, 0x3d, 0x00, 0xac, 0x3b, 0x00, 0x00, 0xac, 0x2b, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00
005becc0  30 28 00 00                                      .byte 0x30, 0x28, 0x00, 0x00
