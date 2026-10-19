; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005bf4fc, declared_size=192, range_size=192, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<int> >(unsigned short, unsigned int, glitch::core::vector2d<int>&) const
; decoder-mode: arm
005bf4fc  70 00 2d e9                                      push {r4, r5, r6}
005bf500  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bf504  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bf508  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
005bf50c  05 50 64 e0                                      rsb r5, r4, r5
005bf510  45 51 a0 e1                                      asr r5, r5, #2
005bf514  0c c0 8f e0                                      add ip, pc, ip
005bf518  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bf51c  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bf520  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bf524  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bf528  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bf52c  05 00 51 e1                                      cmp r1, r5
005bf530  1b 00 00 2a                                      bhs #0x5bf5a4
005bf534  14 50 a0 e3                                      mov r5, #0x14
005bf538  95 41 24 e0                                      mla r4, r5, r1, r4
005bf53c  00 10 94 e5                                      ldr r1, [r4]
005bf540  00 00 51 e3                                      cmp r1, #0
005bf544  13 00 00 0a                                      beq #0x5bf598
005bf548  64 50 9f e5                                      ldr r5, [pc, #0x64]
005bf54c  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bf550  05 c0 9c e7                                      ldr ip, [ip, r5]
005bf554  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005bf558  04 00 1c e3                                      tst ip, #4
005bf55c  0d 00 00 0a                                      beq #0x5bf598
005bf560  08 c0 94 e5                                      ldr ip, [r4, #8]
005bf564  0c 00 52 e1                                      cmp r2, ip
005bf568  0a 00 00 2a                                      bhs #0x5bf598
005bf56c  02 00 51 e3                                      cmp r1, #2
005bf570  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005bf574  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bf578  01 00 a0 13                                      movne r0, #1
005bf57c  01 00 a0 03                                      moveq r0, #1
005bf580  02 c0 91 07                                      ldreq ip, [r1, r2]
005bf584  02 20 81 00                                      addeq r2, r1, r2
005bf588  00 c0 83 05                                      streq ip, [r3]
005bf58c  04 20 92 05                                      ldreq r2, [r2, #4]
005bf590  04 20 83 05                                      streq r2, [r3, #4]
005bf594  00 00 00 ea                                      b #0x5bf59c
005bf598  00 00 a0 e3                                      mov r0, #0
005bf59c  70 00 bd e8                                      pop {r4, r5, r6}
005bf5a0  1e ff 2f e1                                      bx lr
005bf5a4  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005bf5a8  01 40 9c e7                                      ldr r4, [ip, r1]
005bf5ac  e2 ff ff ea                                      b #0x5bf53c
; mapping-symbol data/literal pool
005bf5b0  7c 55 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x7c, 0x55, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bfd44, declared_size=292, range_size=292, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<int> >(unsigned short, glitch::core::vector2d<int> const*, int)
; decoder-mode: arm
005bfd44  70 40 2d e9                                      push {r4, r5, r6, lr}
005bfd48  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bfd4c  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bfd50  04 c1 9f e5                                      ldr ip, [pc, #0x104]
005bfd54  05 50 64 e0                                      rsb r5, r4, r5
005bfd58  45 51 a0 e1                                      asr r5, r5, #2
005bfd5c  0c c0 8f e0                                      add ip, pc, ip
005bfd60  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bfd64  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bfd68  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bfd6c  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bfd70  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bfd74  05 00 51 e1                                      cmp r1, r5
005bfd78  17 00 00 2a                                      bhs #0x5bfddc
005bfd7c  14 50 a0 e3                                      mov r5, #0x14
005bfd80  95 41 24 e0                                      mla r4, r5, r1, r4
005bfd84  00 10 94 e5                                      ldr r1, [r4]
005bfd88  00 00 51 e3                                      cmp r1, #0
005bfd8c  10 00 00 0a                                      beq #0x5bfdd4
005bfd90  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
005bfd94  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bfd98  05 c0 9c e7                                      ldr ip, [ip, r5]
005bfd9c  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005bfda0  04 00 1c e3                                      tst ip, #4
005bfda4  0a 00 00 0a                                      beq #0x5bfdd4
005bfda8  01 c0 73 e2                                      rsbs ip, r3, #1
005bfdac  00 c0 a0 33                                      movlo ip, #0
005bfdb0  00 00 53 e3                                      cmp r3, #0
005bfdb4  08 00 53 13                                      cmpne r3, #8
005bfdb8  0a 00 00 1a                                      bne #0x5bfde8
005bfdbc  02 00 51 e3                                      cmp r1, #2
005bfdc0  1c 00 00 0a                                      beq #0x5bfe38
005bfdc4  00 00 5c e3                                      cmp ip, #0
005bfdc8  06 00 00 0a                                      beq #0x5bfde8
005bfdcc  01 00 a0 e3                                      mov r0, #1
005bfdd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005bfdd4  00 00 a0 e3                                      mov r0, #0
005bfdd8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005bfddc  80 10 9f e5                                      ldr r1, [pc, #0x80]
005bfde0  01 40 9c e7                                      ldr r4, [ip, r1]
005bfde4  e6 ff ff ea                                      b #0x5bfd84
005bfde8  02 00 51 e3                                      cmp r1, #2
005bfdec  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005bfdf0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005bfdf4  f4 ff ff 1a                                      bne #0x5bfdcc
005bfdf8  08 00 94 e5                                      ldr r0, [r4, #8]
005bfdfc  00 00 50 e3                                      cmp r0, #0
005bfe00  f1 ff ff 0a                                      beq #0x5bfdcc
005bfe04  01 50 85 e0                                      add r5, r5, r1
005bfe08  00 c0 a0 e3                                      mov ip, #0
005bfe0c  00 40 92 e5                                      ldr r4, [r2]
005bfe10  05 10 a0 e1                                      mov r1, r5
005bfe14  01 00 50 e2                                      subs r0, r0, #1
005bfe18  0c 40 a1 e7                                      str r4, [r1, ip]!
005bfe1c  04 40 92 e5                                      ldr r4, [r2, #4]
005bfe20  08 c0 8c e2                                      add ip, ip, #8
005bfe24  03 20 82 e0                                      add r2, r2, r3
005bfe28  04 40 81 e5                                      str r4, [r1, #4]
005bfe2c  f6 ff ff 1a                                      bne #0x5bfe0c
005bfe30  01 00 a0 e3                                      mov r0, #1
005bfe34  70 80 bd e8                                      pop {r4, r5, r6, pc}
005bfe38  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005bfe3c  08 c0 94 e5                                      ldr ip, [r4, #8]
005bfe40  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005bfe44  02 10 a0 e1                                      mov r1, r2
005bfe48  8c 21 a0 e1                                      lsl r2, ip, #3
005bfe4c  03 00 80 e0                                      add r0, r0, r3
005bfe50  84 3a f5 eb                                      bl #0x30e868
005bfe54  01 00 a0 e3                                      mov r0, #1
005bfe58  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005bfe5c  34 4d 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x34, 0x4d, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c0748, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<int> >(unsigned short, glitch::core::vector2d<int> const*, int)
; decoder-mode: arm
005c0748  70 40 2d e9                                      push {r4, r5, r6, lr}
005c074c  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c0750  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c0754  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005c0758  05 50 64 e0                                      rsb r5, r4, r5
005c075c  45 51 a0 e1                                      asr r5, r5, #2
005c0760  0c c0 8f e0                                      add ip, pc, ip
005c0764  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c0768  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c076c  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c0770  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c0774  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c0778  05 00 51 e1                                      cmp r1, r5
005c077c  09 00 00 2a                                      bhs #0x5c07a8
005c0780  14 c0 a0 e3                                      mov ip, #0x14
005c0784  9c 41 24 e0                                      mla r4, ip, r1, r4
005c0788  00 10 94 e5                                      ldr r1, [r4]
005c078c  00 00 51 e3                                      cmp r1, #0
005c0790  02 00 00 0a                                      beq #0x5c07a0
005c0794  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c0798  02 00 51 e3                                      cmp r1, #2
005c079c  04 00 00 0a                                      beq #0x5c07b4
005c07a0  00 00 a0 e3                                      mov r0, #0
005c07a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c07a8  88 10 9f e5                                      ldr r1, [pc, #0x88]
005c07ac  01 40 9c e7                                      ldr r4, [ip, r1]
005c07b0  f4 ff ff ea                                      b #0x5c0788
005c07b4  00 00 53 e3                                      cmp r3, #0
005c07b8  08 00 53 13                                      cmpne r3, #8
005c07bc  00 60 a0 13                                      movne r6, #0
005c07c0  01 60 a0 03                                      moveq r6, #1
005c07c4  11 00 00 0a                                      beq #0x5c0810
005c07c8  08 c0 94 e5                                      ldr ip, [r4, #8]
005c07cc  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c07d0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c07d4  00 00 5c e3                                      cmp ip, #0
005c07d8  0a 00 00 0a                                      beq #0x5c0808
005c07dc  01 50 85 e0                                      add r5, r5, r1
005c07e0  06 00 a0 e1                                      mov r0, r6
005c07e4  00 40 92 e5                                      ldr r4, [r2]
005c07e8  05 10 a0 e1                                      mov r1, r5
005c07ec  01 c0 5c e2                                      subs ip, ip, #1
005c07f0  00 40 a1 e7                                      str r4, [r1, r0]!
005c07f4  04 40 92 e5                                      ldr r4, [r2, #4]
005c07f8  08 00 80 e2                                      add r0, r0, #8
005c07fc  03 20 82 e0                                      add r2, r2, r3
005c0800  04 40 81 e5                                      str r4, [r1, #4]
005c0804  f6 ff ff 1a                                      bne #0x5c07e4
005c0808  01 00 a0 e3                                      mov r0, #1
005c080c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c0810  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c0814  08 c0 94 e5                                      ldr ip, [r4, #8]
005c0818  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c081c  02 10 a0 e1                                      mov r1, r2
005c0820  8c 21 a0 e1                                      lsl r2, ip, #3
005c0824  03 00 80 e0                                      add r0, r0, r3
005c0828  0e 38 f5 eb                                      bl #0x30e868
005c082c  01 00 a0 e3                                      mov r0, #1
005c0830  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c0834  30 43 3d 00 14 28 00 00                          .byte 0x30, 0x43, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c1f60, declared_size=292, range_size=292, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector2d<int> >(unsigned short, glitch::core::vector2d<int>*, int) const
; decoder-mode: arm
005c1f60  70 40 2d e9                                      push {r4, r5, r6, lr}
005c1f64  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c1f68  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c1f6c  04 c1 9f e5                                      ldr ip, [pc, #0x104]
005c1f70  05 50 64 e0                                      rsb r5, r4, r5
005c1f74  45 51 a0 e1                                      asr r5, r5, #2
005c1f78  0c c0 8f e0                                      add ip, pc, ip
005c1f7c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c1f80  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c1f84  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c1f88  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c1f8c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c1f90  05 00 51 e1                                      cmp r1, r5
005c1f94  17 00 00 2a                                      bhs #0x5c1ff8
005c1f98  14 50 a0 e3                                      mov r5, #0x14
005c1f9c  95 41 24 e0                                      mla r4, r5, r1, r4
005c1fa0  00 10 94 e5                                      ldr r1, [r4]
005c1fa4  00 00 51 e3                                      cmp r1, #0
005c1fa8  10 00 00 0a                                      beq #0x5c1ff0
005c1fac  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
005c1fb0  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c1fb4  05 c0 9c e7                                      ldr ip, [ip, r5]
005c1fb8  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c1fbc  04 00 1c e3                                      tst ip, #4
005c1fc0  0a 00 00 0a                                      beq #0x5c1ff0
005c1fc4  01 c0 73 e2                                      rsbs ip, r3, #1
005c1fc8  00 c0 a0 33                                      movlo ip, #0
005c1fcc  00 00 53 e3                                      cmp r3, #0
005c1fd0  08 00 53 13                                      cmpne r3, #8
005c1fd4  0a 00 00 1a                                      bne #0x5c2004
005c1fd8  02 00 51 e3                                      cmp r1, #2
005c1fdc  1c 00 00 0a                                      beq #0x5c2054
005c1fe0  00 00 5c e3                                      cmp ip, #0
005c1fe4  06 00 00 0a                                      beq #0x5c2004
005c1fe8  01 00 a0 e3                                      mov r0, #1
005c1fec  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c1ff0  00 00 a0 e3                                      mov r0, #0
005c1ff4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c1ff8  80 10 9f e5                                      ldr r1, [pc, #0x80]
005c1ffc  01 40 9c e7                                      ldr r4, [ip, r1]
005c2000  e6 ff ff ea                                      b #0x5c1fa0
005c2004  02 00 51 e3                                      cmp r1, #2
005c2008  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c200c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c2010  f4 ff ff 1a                                      bne #0x5c1fe8
005c2014  08 00 94 e5                                      ldr r0, [r4, #8]
005c2018  00 00 50 e3                                      cmp r0, #0
005c201c  f1 ff ff 0a                                      beq #0x5c1fe8
005c2020  01 50 85 e0                                      add r5, r5, r1
005c2024  00 c0 a0 e3                                      mov ip, #0
005c2028  05 10 a0 e1                                      mov r1, r5
005c202c  0c 40 b1 e7                                      ldr r4, [r1, ip]!
005c2030  01 00 50 e2                                      subs r0, r0, #1
005c2034  08 c0 8c e2                                      add ip, ip, #8
005c2038  00 40 82 e5                                      str r4, [r2]
005c203c  04 10 91 e5                                      ldr r1, [r1, #4]
005c2040  04 10 82 e5                                      str r1, [r2, #4]
005c2044  03 20 82 e0                                      add r2, r2, r3
005c2048  f6 ff ff 1a                                      bne #0x5c2028
005c204c  01 00 a0 e3                                      mov r0, #1
005c2050  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2054  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c2058  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c205c  08 30 94 e5                                      ldr r3, [r4, #8]
005c2060  02 00 a0 e1                                      mov r0, r2
005c2064  01 10 8c e0                                      add r1, ip, r1
005c2068  83 21 a0 e1                                      lsl r2, r3, #3
005c206c  fd 31 f5 eb                                      bl #0x30e868
005c2070  01 00 a0 e3                                      mov r0, #1
005c2074  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c2078  18 2b 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x18, 0x2b, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c2b8c, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<int> >(unsigned short, glitch::core::vector2d<int>*, int) const
; decoder-mode: arm
005c2b8c  70 40 2d e9                                      push {r4, r5, r6, lr}
005c2b90  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c2b94  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c2b98  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005c2b9c  05 50 64 e0                                      rsb r5, r4, r5
005c2ba0  45 51 a0 e1                                      asr r5, r5, #2
005c2ba4  0c c0 8f e0                                      add ip, pc, ip
005c2ba8  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c2bac  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c2bb0  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c2bb4  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c2bb8  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c2bbc  05 00 51 e1                                      cmp r1, r5
005c2bc0  09 00 00 2a                                      bhs #0x5c2bec
005c2bc4  14 c0 a0 e3                                      mov ip, #0x14
005c2bc8  9c 41 24 e0                                      mla r4, ip, r1, r4
005c2bcc  00 10 94 e5                                      ldr r1, [r4]
005c2bd0  00 00 51 e3                                      cmp r1, #0
005c2bd4  02 00 00 0a                                      beq #0x5c2be4
005c2bd8  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c2bdc  02 00 51 e3                                      cmp r1, #2
005c2be0  04 00 00 0a                                      beq #0x5c2bf8
005c2be4  00 00 a0 e3                                      mov r0, #0
005c2be8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2bec  88 10 9f e5                                      ldr r1, [pc, #0x88]
005c2bf0  01 40 9c e7                                      ldr r4, [ip, r1]
005c2bf4  f4 ff ff ea                                      b #0x5c2bcc
005c2bf8  00 00 53 e3                                      cmp r3, #0
005c2bfc  08 00 53 13                                      cmpne r3, #8
005c2c00  00 60 a0 13                                      movne r6, #0
005c2c04  01 60 a0 03                                      moveq r6, #1
005c2c08  11 00 00 0a                                      beq #0x5c2c54
005c2c0c  08 c0 94 e5                                      ldr ip, [r4, #8]
005c2c10  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c2c14  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c2c18  00 00 5c e3                                      cmp ip, #0
005c2c1c  0a 00 00 0a                                      beq #0x5c2c4c
005c2c20  01 50 85 e0                                      add r5, r5, r1
005c2c24  06 00 a0 e1                                      mov r0, r6
005c2c28  05 10 a0 e1                                      mov r1, r5
005c2c2c  00 40 b1 e7                                      ldr r4, [r1, r0]!
005c2c30  01 c0 5c e2                                      subs ip, ip, #1
005c2c34  08 00 80 e2                                      add r0, r0, #8
005c2c38  00 40 82 e5                                      str r4, [r2]
005c2c3c  04 10 91 e5                                      ldr r1, [r1, #4]
005c2c40  04 10 82 e5                                      str r1, [r2, #4]
005c2c44  03 20 82 e0                                      add r2, r2, r3
005c2c48  f6 ff ff 1a                                      bne #0x5c2c28
005c2c4c  01 00 a0 e3                                      mov r0, #1
005c2c50  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2c54  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c2c58  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c2c5c  08 30 94 e5                                      ldr r3, [r4, #8]
005c2c60  02 00 a0 e1                                      mov r0, r2
005c2c64  01 10 8c e0                                      add r1, ip, r1
005c2c68  83 21 a0 e1                                      lsl r2, r3, #3
005c2c6c  fd 2e f5 eb                                      bl #0x30e868
005c2c70  01 00 a0 e3                                      mov r0, #1
005c2c74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c2c78  ec 1e 3d 00 14 28 00 00                          .byte 0xec, 0x1e, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c3a94, declared_size=172, range_size=172, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector2d<int> >(unsigned short, unsigned int, glitch::core::vector2d<int>&) const
; decoder-mode: arm
005c3a94  70 00 2d e9                                      push {r4, r5, r6}
005c3a98  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c3a9c  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c3aa0  90 c0 9f e5                                      ldr ip, [pc, #0x90]
005c3aa4  05 50 64 e0                                      rsb r5, r4, r5
005c3aa8  45 51 a0 e1                                      asr r5, r5, #2
005c3aac  0c c0 8f e0                                      add ip, pc, ip
005c3ab0  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c3ab4  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c3ab8  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c3abc  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c3ac0  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c3ac4  05 00 51 e1                                      cmp r1, r5
005c3ac8  17 00 00 2a                                      bhs #0x5c3b2c
005c3acc  14 c0 a0 e3                                      mov ip, #0x14
005c3ad0  9c 41 24 e0                                      mla r4, ip, r1, r4
005c3ad4  00 10 94 e5                                      ldr r1, [r4]
005c3ad8  00 00 51 e3                                      cmp r1, #0
005c3adc  02 00 00 0a                                      beq #0x5c3aec
005c3ae0  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c3ae4  02 00 51 e3                                      cmp r1, #2
005c3ae8  02 00 00 0a                                      beq #0x5c3af8
005c3aec  00 00 a0 e3                                      mov r0, #0
005c3af0  70 00 bd e8                                      pop {r4, r5, r6}
005c3af4  1e ff 2f e1                                      bx lr
005c3af8  08 10 94 e5                                      ldr r1, [r4, #8]
005c3afc  01 00 52 e1                                      cmp r2, r1
005c3b00  f9 ff ff 2a                                      bhs #0x5c3aec
005c3b04  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005c3b08  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c3b0c  01 00 a0 e3                                      mov r0, #1
005c3b10  82 21 8c e0                                      add r2, ip, r2, lsl #3
005c3b14  02 c0 91 e7                                      ldr ip, [r1, r2]
005c3b18  02 20 81 e0                                      add r2, r1, r2
005c3b1c  00 c0 83 e5                                      str ip, [r3]
005c3b20  04 20 92 e5                                      ldr r2, [r2, #4]
005c3b24  04 20 83 e5                                      str r2, [r3, #4]
005c3b28  f0 ff ff ea                                      b #0x5c3af0
005c3b2c  08 10 9f e5                                      ldr r1, [pc, #8]
005c3b30  01 40 9c e7                                      ldr r4, [ip, r1]
005c3b34  e6 ff ff ea                                      b #0x5c3ad4
; mapping-symbol data/literal pool
005c3b38  e4 0f 3d 00 14 28 00 00                          .byte 0xe4, 0x0f, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c45c8, declared_size=192, range_size=192, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector2d<int> >(unsigned short, unsigned int, glitch::core::vector2d<int> const&)
; decoder-mode: arm
005c45c8  70 00 2d e9                                      push {r4, r5, r6}
005c45cc  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c45d0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c45d4  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
005c45d8  05 50 64 e0                                      rsb r5, r4, r5
005c45dc  45 51 a0 e1                                      asr r5, r5, #2
005c45e0  0c c0 8f e0                                      add ip, pc, ip
005c45e4  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c45e8  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c45ec  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c45f0  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c45f4  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c45f8  05 00 51 e1                                      cmp r1, r5
005c45fc  1b 00 00 2a                                      bhs #0x5c4670
005c4600  14 50 a0 e3                                      mov r5, #0x14
005c4604  95 41 24 e0                                      mla r4, r5, r1, r4
005c4608  00 10 94 e5                                      ldr r1, [r4]
005c460c  00 00 51 e3                                      cmp r1, #0
005c4610  13 00 00 0a                                      beq #0x5c4664
005c4614  64 50 9f e5                                      ldr r5, [pc, #0x64]
005c4618  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c461c  05 c0 9c e7                                      ldr ip, [ip, r5]
005c4620  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c4624  04 00 1c e3                                      tst ip, #4
005c4628  0d 00 00 0a                                      beq #0x5c4664
005c462c  08 c0 94 e5                                      ldr ip, [r4, #8]
005c4630  0c 00 52 e1                                      cmp r2, ip
005c4634  0a 00 00 2a                                      bhs #0x5c4664
005c4638  02 00 51 e3                                      cmp r1, #2
005c463c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c4640  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c4644  00 40 93 05                                      ldreq r4, [r3]
005c4648  01 00 a0 13                                      movne r0, #1
005c464c  02 c0 81 00                                      addeq ip, r1, r2
005c4650  02 40 81 07                                      streq r4, [r1, r2]
005c4654  04 30 93 05                                      ldreq r3, [r3, #4]
005c4658  01 00 a0 03                                      moveq r0, #1
005c465c  04 30 8c 05                                      streq r3, [ip, #4]
005c4660  00 00 00 ea                                      b #0x5c4668
005c4664  00 00 a0 e3                                      mov r0, #0
005c4668  70 00 bd e8                                      pop {r4, r5, r6}
005c466c  1e ff 2f e1                                      bx lr
005c4670  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005c4674  01 40 9c e7                                      ldr r4, [ip, r1]
005c4678  e2 ff ff ea                                      b #0x5c4608
; mapping-symbol data/literal pool
005c467c  b0 04 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xb0, 0x04, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4dc4, declared_size=172, range_size=172, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<int> >(unsigned short, unsigned int, glitch::core::vector2d<int> const&)
; decoder-mode: arm
005c4dc4  70 00 2d e9                                      push {r4, r5, r6}
005c4dc8  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4dcc  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4dd0  90 c0 9f e5                                      ldr ip, [pc, #0x90]
005c4dd4  05 50 64 e0                                      rsb r5, r4, r5
005c4dd8  45 51 a0 e1                                      asr r5, r5, #2
005c4ddc  0c c0 8f e0                                      add ip, pc, ip
005c4de0  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c4de4  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c4de8  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c4dec  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c4df0  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c4df4  05 00 51 e1                                      cmp r1, r5
005c4df8  17 00 00 2a                                      bhs #0x5c4e5c
005c4dfc  14 c0 a0 e3                                      mov ip, #0x14
005c4e00  9c 41 24 e0                                      mla r4, ip, r1, r4
005c4e04  00 10 94 e5                                      ldr r1, [r4]
005c4e08  00 00 51 e3                                      cmp r1, #0
005c4e0c  02 00 00 0a                                      beq #0x5c4e1c
005c4e10  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c4e14  02 00 51 e3                                      cmp r1, #2
005c4e18  02 00 00 0a                                      beq #0x5c4e28
005c4e1c  00 00 a0 e3                                      mov r0, #0
005c4e20  70 00 bd e8                                      pop {r4, r5, r6}
005c4e24  1e ff 2f e1                                      bx lr
005c4e28  08 10 94 e5                                      ldr r1, [r4, #8]
005c4e2c  01 00 52 e1                                      cmp r2, r1
005c4e30  f9 ff ff 2a                                      bhs #0x5c4e1c
005c4e34  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005c4e38  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c4e3c  00 00 93 e5                                      ldr r0, [r3]
005c4e40  82 21 8c e0                                      add r2, ip, r2, lsl #3
005c4e44  02 c0 81 e0                                      add ip, r1, r2
005c4e48  02 00 81 e7                                      str r0, [r1, r2]
005c4e4c  04 30 93 e5                                      ldr r3, [r3, #4]
005c4e50  01 00 a0 e3                                      mov r0, #1
005c4e54  04 30 8c e5                                      str r3, [ip, #4]
005c4e58  f0 ff ff ea                                      b #0x5c4e20
005c4e5c  08 10 9f e5                                      ldr r1, [pc, #8]
005c4e60  01 40 9c e7                                      ldr r4, [ip, r1]
005c4e64  e6 ff ff ea                                      b #0x5c4e04
; mapping-symbol data/literal pool
005c4e68  b4 fc 3c 00 14 28 00 00                          .byte 0xb4, 0xfc, 0x3c, 0x00, 0x14, 0x28, 0x00, 0x00
