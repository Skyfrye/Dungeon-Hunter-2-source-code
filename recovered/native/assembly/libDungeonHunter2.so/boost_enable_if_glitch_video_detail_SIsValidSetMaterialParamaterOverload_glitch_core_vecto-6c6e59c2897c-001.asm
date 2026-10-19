; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005bf1c8, declared_size=192, range_size=192, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float>&) const
; decoder-mode: arm
005bf1c8  70 00 2d e9                                      push {r4, r5, r6}
005bf1cc  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bf1d0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bf1d4  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
005bf1d8  05 50 64 e0                                      rsb r5, r4, r5
005bf1dc  45 51 a0 e1                                      asr r5, r5, #2
005bf1e0  0c c0 8f e0                                      add ip, pc, ip
005bf1e4  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bf1e8  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bf1ec  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bf1f0  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bf1f4  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bf1f8  05 00 51 e1                                      cmp r1, r5
005bf1fc  1b 00 00 2a                                      bhs #0x5bf270
005bf200  14 50 a0 e3                                      mov r5, #0x14
005bf204  95 41 24 e0                                      mla r4, r5, r1, r4
005bf208  00 10 94 e5                                      ldr r1, [r4]
005bf20c  00 00 51 e3                                      cmp r1, #0
005bf210  13 00 00 0a                                      beq #0x5bf264
005bf214  64 50 9f e5                                      ldr r5, [pc, #0x64]
005bf218  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bf21c  05 c0 9c e7                                      ldr ip, [ip, r5]
005bf220  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005bf224  40 00 1c e3                                      tst ip, #0x40
005bf228  0d 00 00 0a                                      beq #0x5bf264
005bf22c  08 c0 94 e5                                      ldr ip, [r4, #8]
005bf230  0c 00 52 e1                                      cmp r2, ip
005bf234  0a 00 00 2a                                      bhs #0x5bf264
005bf238  06 00 51 e3                                      cmp r1, #6
005bf23c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005bf240  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bf244  01 00 a0 13                                      movne r0, #1
005bf248  01 00 a0 03                                      moveq r0, #1
005bf24c  02 c0 91 07                                      ldreq ip, [r1, r2]
005bf250  02 20 81 00                                      addeq r2, r1, r2
005bf254  00 c0 83 05                                      streq ip, [r3]
005bf258  04 20 92 05                                      ldreq r2, [r2, #4]
005bf25c  04 20 83 05                                      streq r2, [r3, #4]
005bf260  00 00 00 ea                                      b #0x5bf268
005bf264  00 00 a0 e3                                      mov r0, #0
005bf268  70 00 bd e8                                      pop {r4, r5, r6}
005bf26c  1e ff 2f e1                                      bx lr
005bf270  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005bf274  01 40 9c e7                                      ldr r4, [ip, r1]
005bf278  e2 ff ff ea                                      b #0x5bf208
; mapping-symbol data/literal pool
005bf27c  b0 58 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xb0, 0x58, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bfa10, declared_size=172, range_size=172, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float>&) const
; decoder-mode: arm
005bfa10  70 00 2d e9                                      push {r4, r5, r6}
005bfa14  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bfa18  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bfa1c  90 c0 9f e5                                      ldr ip, [pc, #0x90]
005bfa20  05 50 64 e0                                      rsb r5, r4, r5
005bfa24  45 51 a0 e1                                      asr r5, r5, #2
005bfa28  0c c0 8f e0                                      add ip, pc, ip
005bfa2c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bfa30  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bfa34  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bfa38  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bfa3c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bfa40  05 00 51 e1                                      cmp r1, r5
005bfa44  17 00 00 2a                                      bhs #0x5bfaa8
005bfa48  14 c0 a0 e3                                      mov ip, #0x14
005bfa4c  9c 41 24 e0                                      mla r4, ip, r1, r4
005bfa50  00 10 94 e5                                      ldr r1, [r4]
005bfa54  00 00 51 e3                                      cmp r1, #0
005bfa58  02 00 00 0a                                      beq #0x5bfa68
005bfa5c  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bfa60  06 00 51 e3                                      cmp r1, #6
005bfa64  02 00 00 0a                                      beq #0x5bfa74
005bfa68  00 00 a0 e3                                      mov r0, #0
005bfa6c  70 00 bd e8                                      pop {r4, r5, r6}
005bfa70  1e ff 2f e1                                      bx lr
005bfa74  08 10 94 e5                                      ldr r1, [r4, #8]
005bfa78  01 00 52 e1                                      cmp r2, r1
005bfa7c  f9 ff ff 2a                                      bhs #0x5bfa68
005bfa80  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005bfa84  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bfa88  01 00 a0 e3                                      mov r0, #1
005bfa8c  82 21 8c e0                                      add r2, ip, r2, lsl #3
005bfa90  02 c0 91 e7                                      ldr ip, [r1, r2]
005bfa94  02 20 81 e0                                      add r2, r1, r2
005bfa98  00 c0 83 e5                                      str ip, [r3]
005bfa9c  04 20 92 e5                                      ldr r2, [r2, #4]
005bfaa0  04 20 83 e5                                      str r2, [r3, #4]
005bfaa4  f0 ff ff ea                                      b #0x5bfa6c
005bfaa8  08 10 9f e5                                      ldr r1, [pc, #8]
005bfaac  01 40 9c e7                                      ldr r4, [ip, r1]
005bfab0  e6 ff ff ea                                      b #0x5bfa50
; mapping-symbol data/literal pool
005bfab4  68 50 3d 00 14 28 00 00                          .byte 0x68, 0x50, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c038c, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<float> >(unsigned short, glitch::core::vector2d<float> const*, int)
; decoder-mode: arm
005c038c  70 40 2d e9                                      push {r4, r5, r6, lr}
005c0390  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c0394  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c0398  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005c039c  05 50 64 e0                                      rsb r5, r4, r5
005c03a0  45 51 a0 e1                                      asr r5, r5, #2
005c03a4  0c c0 8f e0                                      add ip, pc, ip
005c03a8  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c03ac  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c03b0  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c03b4  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c03b8  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c03bc  05 00 51 e1                                      cmp r1, r5
005c03c0  09 00 00 2a                                      bhs #0x5c03ec
005c03c4  14 c0 a0 e3                                      mov ip, #0x14
005c03c8  9c 41 24 e0                                      mla r4, ip, r1, r4
005c03cc  00 10 94 e5                                      ldr r1, [r4]
005c03d0  00 00 51 e3                                      cmp r1, #0
005c03d4  02 00 00 0a                                      beq #0x5c03e4
005c03d8  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c03dc  06 00 51 e3                                      cmp r1, #6
005c03e0  04 00 00 0a                                      beq #0x5c03f8
005c03e4  00 00 a0 e3                                      mov r0, #0
005c03e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c03ec  88 10 9f e5                                      ldr r1, [pc, #0x88]
005c03f0  01 40 9c e7                                      ldr r4, [ip, r1]
005c03f4  f4 ff ff ea                                      b #0x5c03cc
005c03f8  00 00 53 e3                                      cmp r3, #0
005c03fc  08 00 53 13                                      cmpne r3, #8
005c0400  00 60 a0 13                                      movne r6, #0
005c0404  01 60 a0 03                                      moveq r6, #1
005c0408  11 00 00 0a                                      beq #0x5c0454
005c040c  08 c0 94 e5                                      ldr ip, [r4, #8]
005c0410  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c0414  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c0418  00 00 5c e3                                      cmp ip, #0
005c041c  0a 00 00 0a                                      beq #0x5c044c
005c0420  01 50 85 e0                                      add r5, r5, r1
005c0424  06 00 a0 e1                                      mov r0, r6
005c0428  00 40 92 e5                                      ldr r4, [r2]
005c042c  05 10 a0 e1                                      mov r1, r5
005c0430  01 c0 5c e2                                      subs ip, ip, #1
005c0434  00 40 a1 e7                                      str r4, [r1, r0]!
005c0438  04 40 92 e5                                      ldr r4, [r2, #4]
005c043c  08 00 80 e2                                      add r0, r0, #8
005c0440  03 20 82 e0                                      add r2, r2, r3
005c0444  04 40 81 e5                                      str r4, [r1, #4]
005c0448  f6 ff ff 1a                                      bne #0x5c0428
005c044c  01 00 a0 e3                                      mov r0, #1
005c0450  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c0454  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c0458  08 c0 94 e5                                      ldr ip, [r4, #8]
005c045c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c0460  02 10 a0 e1                                      mov r1, r2
005c0464  8c 21 a0 e1                                      lsl r2, ip, #3
005c0468  03 00 80 e0                                      add r0, r0, r3
005c046c  fd 38 f5 eb                                      bl #0x30e868
005c0470  01 00 a0 e3                                      mov r0, #1
005c0474  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c0478  ec 46 3d 00 14 28 00 00                          .byte 0xec, 0x46, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c1a98, declared_size=292, range_size=292, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<float> >(unsigned short, glitch::core::vector2d<float>*, int) const
; decoder-mode: arm
005c1a98  70 40 2d e9                                      push {r4, r5, r6, lr}
005c1a9c  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c1aa0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c1aa4  04 c1 9f e5                                      ldr ip, [pc, #0x104]
005c1aa8  05 50 64 e0                                      rsb r5, r4, r5
005c1aac  45 51 a0 e1                                      asr r5, r5, #2
005c1ab0  0c c0 8f e0                                      add ip, pc, ip
005c1ab4  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c1ab8  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c1abc  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c1ac0  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c1ac4  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c1ac8  05 00 51 e1                                      cmp r1, r5
005c1acc  17 00 00 2a                                      bhs #0x5c1b30
005c1ad0  14 50 a0 e3                                      mov r5, #0x14
005c1ad4  95 41 24 e0                                      mla r4, r5, r1, r4
005c1ad8  00 10 94 e5                                      ldr r1, [r4]
005c1adc  00 00 51 e3                                      cmp r1, #0
005c1ae0  10 00 00 0a                                      beq #0x5c1b28
005c1ae4  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
005c1ae8  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c1aec  05 c0 9c e7                                      ldr ip, [ip, r5]
005c1af0  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c1af4  40 00 1c e3                                      tst ip, #0x40
005c1af8  0a 00 00 0a                                      beq #0x5c1b28
005c1afc  01 c0 73 e2                                      rsbs ip, r3, #1
005c1b00  00 c0 a0 33                                      movlo ip, #0
005c1b04  00 00 53 e3                                      cmp r3, #0
005c1b08  08 00 53 13                                      cmpne r3, #8
005c1b0c  0a 00 00 1a                                      bne #0x5c1b3c
005c1b10  06 00 51 e3                                      cmp r1, #6
005c1b14  1c 00 00 0a                                      beq #0x5c1b8c
005c1b18  00 00 5c e3                                      cmp ip, #0
005c1b1c  06 00 00 0a                                      beq #0x5c1b3c
005c1b20  01 00 a0 e3                                      mov r0, #1
005c1b24  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c1b28  00 00 a0 e3                                      mov r0, #0
005c1b2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c1b30  80 10 9f e5                                      ldr r1, [pc, #0x80]
005c1b34  01 40 9c e7                                      ldr r4, [ip, r1]
005c1b38  e6 ff ff ea                                      b #0x5c1ad8
005c1b3c  06 00 51 e3                                      cmp r1, #6
005c1b40  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c1b44  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c1b48  f4 ff ff 1a                                      bne #0x5c1b20
005c1b4c  08 00 94 e5                                      ldr r0, [r4, #8]
005c1b50  00 00 50 e3                                      cmp r0, #0
005c1b54  f1 ff ff 0a                                      beq #0x5c1b20
005c1b58  01 50 85 e0                                      add r5, r5, r1
005c1b5c  00 c0 a0 e3                                      mov ip, #0
005c1b60  05 10 a0 e1                                      mov r1, r5
005c1b64  0c 40 b1 e7                                      ldr r4, [r1, ip]!
005c1b68  01 00 50 e2                                      subs r0, r0, #1
005c1b6c  08 c0 8c e2                                      add ip, ip, #8
005c1b70  00 40 82 e5                                      str r4, [r2]
005c1b74  04 10 91 e5                                      ldr r1, [r1, #4]
005c1b78  04 10 82 e5                                      str r1, [r2, #4]
005c1b7c  03 20 82 e0                                      add r2, r2, r3
005c1b80  f6 ff ff 1a                                      bne #0x5c1b60
005c1b84  01 00 a0 e3                                      mov r0, #1
005c1b88  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c1b8c  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c1b90  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c1b94  08 30 94 e5                                      ldr r3, [r4, #8]
005c1b98  02 00 a0 e1                                      mov r0, r2
005c1b9c  01 10 8c e0                                      add r1, ip, r1
005c1ba0  83 21 a0 e1                                      lsl r2, r3, #3
005c1ba4  2f 33 f5 eb                                      bl #0x30e868
005c1ba8  01 00 a0 e3                                      mov r0, #1
005c1bac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c1bb0  e0 2f 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xe0, 0x2f, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c27d0, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<float> >(unsigned short, glitch::core::vector2d<float>*, int) const
; decoder-mode: arm
005c27d0  70 40 2d e9                                      push {r4, r5, r6, lr}
005c27d4  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c27d8  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c27dc  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005c27e0  05 50 64 e0                                      rsb r5, r4, r5
005c27e4  45 51 a0 e1                                      asr r5, r5, #2
005c27e8  0c c0 8f e0                                      add ip, pc, ip
005c27ec  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c27f0  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c27f4  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c27f8  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c27fc  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c2800  05 00 51 e1                                      cmp r1, r5
005c2804  09 00 00 2a                                      bhs #0x5c2830
005c2808  14 c0 a0 e3                                      mov ip, #0x14
005c280c  9c 41 24 e0                                      mla r4, ip, r1, r4
005c2810  00 10 94 e5                                      ldr r1, [r4]
005c2814  00 00 51 e3                                      cmp r1, #0
005c2818  02 00 00 0a                                      beq #0x5c2828
005c281c  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c2820  06 00 51 e3                                      cmp r1, #6
005c2824  04 00 00 0a                                      beq #0x5c283c
005c2828  00 00 a0 e3                                      mov r0, #0
005c282c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2830  88 10 9f e5                                      ldr r1, [pc, #0x88]
005c2834  01 40 9c e7                                      ldr r4, [ip, r1]
005c2838  f4 ff ff ea                                      b #0x5c2810
005c283c  00 00 53 e3                                      cmp r3, #0
005c2840  08 00 53 13                                      cmpne r3, #8
005c2844  00 60 a0 13                                      movne r6, #0
005c2848  01 60 a0 03                                      moveq r6, #1
005c284c  11 00 00 0a                                      beq #0x5c2898
005c2850  08 c0 94 e5                                      ldr ip, [r4, #8]
005c2854  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c2858  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c285c  00 00 5c e3                                      cmp ip, #0
005c2860  0a 00 00 0a                                      beq #0x5c2890
005c2864  01 50 85 e0                                      add r5, r5, r1
005c2868  06 00 a0 e1                                      mov r0, r6
005c286c  05 10 a0 e1                                      mov r1, r5
005c2870  00 40 b1 e7                                      ldr r4, [r1, r0]!
005c2874  01 c0 5c e2                                      subs ip, ip, #1
005c2878  08 00 80 e2                                      add r0, r0, #8
005c287c  00 40 82 e5                                      str r4, [r2]
005c2880  04 10 91 e5                                      ldr r1, [r1, #4]
005c2884  04 10 82 e5                                      str r1, [r2, #4]
005c2888  03 20 82 e0                                      add r2, r2, r3
005c288c  f6 ff ff 1a                                      bne #0x5c286c
005c2890  01 00 a0 e3                                      mov r0, #1
005c2894  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2898  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c289c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c28a0  08 30 94 e5                                      ldr r3, [r4, #8]
005c28a4  02 00 a0 e1                                      mov r0, r2
005c28a8  01 10 8c e0                                      add r1, ip, r1
005c28ac  83 21 a0 e1                                      lsl r2, r3, #3
005c28b0  ec 2f f5 eb                                      bl #0x30e868
005c28b4  01 00 a0 e3                                      mov r0, #1
005c28b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c28bc  a8 22 3d 00 14 28 00 00                          .byte 0xa8, 0x22, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c3640, declared_size=292, range_size=292, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<float> >(unsigned short, glitch::core::vector2d<float> const*, int)
; decoder-mode: arm
005c3640  70 40 2d e9                                      push {r4, r5, r6, lr}
005c3644  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c3648  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c364c  04 c1 9f e5                                      ldr ip, [pc, #0x104]
005c3650  05 50 64 e0                                      rsb r5, r4, r5
005c3654  45 51 a0 e1                                      asr r5, r5, #2
005c3658  0c c0 8f e0                                      add ip, pc, ip
005c365c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c3660  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c3664  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c3668  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c366c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c3670  05 00 51 e1                                      cmp r1, r5
005c3674  17 00 00 2a                                      bhs #0x5c36d8
005c3678  14 50 a0 e3                                      mov r5, #0x14
005c367c  95 41 24 e0                                      mla r4, r5, r1, r4
005c3680  00 10 94 e5                                      ldr r1, [r4]
005c3684  00 00 51 e3                                      cmp r1, #0
005c3688  10 00 00 0a                                      beq #0x5c36d0
005c368c  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
005c3690  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c3694  05 c0 9c e7                                      ldr ip, [ip, r5]
005c3698  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c369c  40 00 1c e3                                      tst ip, #0x40
005c36a0  0a 00 00 0a                                      beq #0x5c36d0
005c36a4  01 c0 73 e2                                      rsbs ip, r3, #1
005c36a8  00 c0 a0 33                                      movlo ip, #0
005c36ac  00 00 53 e3                                      cmp r3, #0
005c36b0  08 00 53 13                                      cmpne r3, #8
005c36b4  0a 00 00 1a                                      bne #0x5c36e4
005c36b8  06 00 51 e3                                      cmp r1, #6
005c36bc  1c 00 00 0a                                      beq #0x5c3734
005c36c0  00 00 5c e3                                      cmp ip, #0
005c36c4  06 00 00 0a                                      beq #0x5c36e4
005c36c8  01 00 a0 e3                                      mov r0, #1
005c36cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c36d0  00 00 a0 e3                                      mov r0, #0
005c36d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c36d8  80 10 9f e5                                      ldr r1, [pc, #0x80]
005c36dc  01 40 9c e7                                      ldr r4, [ip, r1]
005c36e0  e6 ff ff ea                                      b #0x5c3680
005c36e4  06 00 51 e3                                      cmp r1, #6
005c36e8  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c36ec  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c36f0  f4 ff ff 1a                                      bne #0x5c36c8
005c36f4  08 00 94 e5                                      ldr r0, [r4, #8]
005c36f8  00 00 50 e3                                      cmp r0, #0
005c36fc  f1 ff ff 0a                                      beq #0x5c36c8
005c3700  01 50 85 e0                                      add r5, r5, r1
005c3704  00 c0 a0 e3                                      mov ip, #0
005c3708  00 40 92 e5                                      ldr r4, [r2]
005c370c  05 10 a0 e1                                      mov r1, r5
005c3710  01 00 50 e2                                      subs r0, r0, #1
005c3714  0c 40 a1 e7                                      str r4, [r1, ip]!
005c3718  04 40 92 e5                                      ldr r4, [r2, #4]
005c371c  08 c0 8c e2                                      add ip, ip, #8
005c3720  03 20 82 e0                                      add r2, r2, r3
005c3724  04 40 81 e5                                      str r4, [r1, #4]
005c3728  f6 ff ff 1a                                      bne #0x5c3708
005c372c  01 00 a0 e3                                      mov r0, #1
005c3730  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c3734  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c3738  08 c0 94 e5                                      ldr ip, [r4, #8]
005c373c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c3740  02 10 a0 e1                                      mov r1, r2
005c3744  8c 21 a0 e1                                      lsl r2, ip, #3
005c3748  03 00 80 e0                                      add r0, r0, r3
005c374c  45 2c f5 eb                                      bl #0x30e868
005c3750  01 00 a0 e3                                      mov r0, #1
005c3754  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c3758  38 14 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x38, 0x14, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4298, declared_size=192, range_size=192, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float> const&)
; decoder-mode: arm
005c4298  70 00 2d e9                                      push {r4, r5, r6}
005c429c  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c42a0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c42a4  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
005c42a8  05 50 64 e0                                      rsb r5, r4, r5
005c42ac  45 51 a0 e1                                      asr r5, r5, #2
005c42b0  0c c0 8f e0                                      add ip, pc, ip
005c42b4  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c42b8  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c42bc  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c42c0  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c42c4  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c42c8  05 00 51 e1                                      cmp r1, r5
005c42cc  1b 00 00 2a                                      bhs #0x5c4340
005c42d0  14 50 a0 e3                                      mov r5, #0x14
005c42d4  95 41 24 e0                                      mla r4, r5, r1, r4
005c42d8  00 10 94 e5                                      ldr r1, [r4]
005c42dc  00 00 51 e3                                      cmp r1, #0
005c42e0  13 00 00 0a                                      beq #0x5c4334
005c42e4  64 50 9f e5                                      ldr r5, [pc, #0x64]
005c42e8  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c42ec  05 c0 9c e7                                      ldr ip, [ip, r5]
005c42f0  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c42f4  40 00 1c e3                                      tst ip, #0x40
005c42f8  0d 00 00 0a                                      beq #0x5c4334
005c42fc  08 c0 94 e5                                      ldr ip, [r4, #8]
005c4300  0c 00 52 e1                                      cmp r2, ip
005c4304  0a 00 00 2a                                      bhs #0x5c4334
005c4308  06 00 51 e3                                      cmp r1, #6
005c430c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c4310  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c4314  00 40 93 05                                      ldreq r4, [r3]
005c4318  01 00 a0 13                                      movne r0, #1
005c431c  02 c0 81 00                                      addeq ip, r1, r2
005c4320  02 40 81 07                                      streq r4, [r1, r2]
005c4324  04 30 93 05                                      ldreq r3, [r3, #4]
005c4328  01 00 a0 03                                      moveq r0, #1
005c432c  04 30 8c 05                                      streq r3, [ip, #4]
005c4330  00 00 00 ea                                      b #0x5c4338
005c4334  00 00 a0 e3                                      mov r0, #0
005c4338  70 00 bd e8                                      pop {r4, r5, r6}
005c433c  1e ff 2f e1                                      bx lr
005c4340  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005c4344  01 40 9c e7                                      ldr r4, [ip, r1]
005c4348  e2 ff ff ea                                      b #0x5c42d8
; mapping-symbol data/literal pool
005c434c  e0 07 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xe0, 0x07, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4b04, declared_size=172, range_size=172, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float> const&)
; decoder-mode: arm
005c4b04  70 00 2d e9                                      push {r4, r5, r6}
005c4b08  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4b0c  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4b10  90 c0 9f e5                                      ldr ip, [pc, #0x90]
005c4b14  05 50 64 e0                                      rsb r5, r4, r5
005c4b18  45 51 a0 e1                                      asr r5, r5, #2
005c4b1c  0c c0 8f e0                                      add ip, pc, ip
005c4b20  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c4b24  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c4b28  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c4b2c  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c4b30  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c4b34  05 00 51 e1                                      cmp r1, r5
005c4b38  17 00 00 2a                                      bhs #0x5c4b9c
005c4b3c  14 c0 a0 e3                                      mov ip, #0x14
005c4b40  9c 41 24 e0                                      mla r4, ip, r1, r4
005c4b44  00 10 94 e5                                      ldr r1, [r4]
005c4b48  00 00 51 e3                                      cmp r1, #0
005c4b4c  02 00 00 0a                                      beq #0x5c4b5c
005c4b50  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c4b54  06 00 51 e3                                      cmp r1, #6
005c4b58  02 00 00 0a                                      beq #0x5c4b68
005c4b5c  00 00 a0 e3                                      mov r0, #0
005c4b60  70 00 bd e8                                      pop {r4, r5, r6}
005c4b64  1e ff 2f e1                                      bx lr
005c4b68  08 10 94 e5                                      ldr r1, [r4, #8]
005c4b6c  01 00 52 e1                                      cmp r2, r1
005c4b70  f9 ff ff 2a                                      bhs #0x5c4b5c
005c4b74  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005c4b78  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c4b7c  00 00 93 e5                                      ldr r0, [r3]
005c4b80  82 21 8c e0                                      add r2, ip, r2, lsl #3
005c4b84  02 c0 81 e0                                      add ip, r1, r2
005c4b88  02 00 81 e7                                      str r0, [r1, r2]
005c4b8c  04 30 93 e5                                      ldr r3, [r3, #4]
005c4b90  01 00 a0 e3                                      mov r0, #1
005c4b94  04 30 8c e5                                      str r3, [ip, #4]
005c4b98  f0 ff ff ea                                      b #0x5c4b60
005c4b9c  08 10 9f e5                                      ldr r1, [pc, #8]
005c4ba0  01 40 9c e7                                      ldr r4, [ip, r1]
005c4ba4  e6 ff ff ea                                      b #0x5c4b44
; mapping-symbol data/literal pool
005c4ba8  74 ff 3c 00 14 28 00 00                          .byte 0x74, 0xff, 0x3c, 0x00, 0x14, 0x28, 0x00, 0x00
