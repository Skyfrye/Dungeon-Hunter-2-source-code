; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005bf100, declared_size=200, range_size=200, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float>&) const
; decoder-mode: arm
005bf100  70 00 2d e9                                      push {r4, r5, r6}
005bf104  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bf108  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bf10c  a8 c0 9f e5                                      ldr ip, [pc, #0xa8]
005bf110  05 50 64 e0                                      rsb r5, r4, r5
005bf114  45 51 a0 e1                                      asr r5, r5, #2
005bf118  0c c0 8f e0                                      add ip, pc, ip
005bf11c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bf120  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bf124  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bf128  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bf12c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bf130  05 00 51 e1                                      cmp r1, r5
005bf134  1d 00 00 2a                                      bhs #0x5bf1b0
005bf138  14 50 a0 e3                                      mov r5, #0x14
005bf13c  95 41 24 e0                                      mla r4, r5, r1, r4
005bf140  00 10 94 e5                                      ldr r1, [r4]
005bf144  00 00 51 e3                                      cmp r1, #0
005bf148  15 00 00 0a                                      beq #0x5bf1a4
005bf14c  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
005bf150  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bf154  05 c0 9c e7                                      ldr ip, [ip, r5]
005bf158  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005bf15c  80 00 1c e3                                      tst ip, #0x80
005bf160  0f 00 00 0a                                      beq #0x5bf1a4
005bf164  08 c0 94 e5                                      ldr ip, [r4, #8]
005bf168  0c 00 52 e1                                      cmp r2, ip
005bf16c  0c 00 00 2a                                      bhs #0x5bf1a4
005bf170  07 00 51 e3                                      cmp r1, #7
005bf174  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005bf178  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bf17c  01 00 a0 13                                      movne r0, #1
005bf180  01 00 a0 03                                      moveq r0, #1
005bf184  02 c0 91 07                                      ldreq ip, [r1, r2]
005bf188  02 20 81 00                                      addeq r2, r1, r2
005bf18c  00 c0 83 05                                      streq ip, [r3]
005bf190  04 10 92 05                                      ldreq r1, [r2, #4]
005bf194  04 10 83 05                                      streq r1, [r3, #4]
005bf198  08 20 92 05                                      ldreq r2, [r2, #8]
005bf19c  08 20 83 05                                      streq r2, [r3, #8]
005bf1a0  00 00 00 ea                                      b #0x5bf1a8
005bf1a4  00 00 a0 e3                                      mov r0, #0
005bf1a8  70 00 bd e8                                      pop {r4, r5, r6}
005bf1ac  1e ff 2f e1                                      bx lr
005bf1b0  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005bf1b4  01 40 9c e7                                      ldr r4, [ip, r1]
005bf1b8  e0 ff ff ea                                      b #0x5bf140
; mapping-symbol data/literal pool
005bf1bc  78 59 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x78, 0x59, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bf958, declared_size=184, range_size=184, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float>&) const
; decoder-mode: arm
005bf958  70 00 2d e9                                      push {r4, r5, r6}
005bf95c  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bf960  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bf964  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
005bf968  05 50 64 e0                                      rsb r5, r4, r5
005bf96c  45 51 a0 e1                                      asr r5, r5, #2
005bf970  0c c0 8f e0                                      add ip, pc, ip
005bf974  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bf978  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bf97c  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bf980  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bf984  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bf988  05 00 51 e1                                      cmp r1, r5
005bf98c  1a 00 00 2a                                      bhs #0x5bf9fc
005bf990  14 c0 a0 e3                                      mov ip, #0x14
005bf994  9c 41 24 e0                                      mla r4, ip, r1, r4
005bf998  00 10 94 e5                                      ldr r1, [r4]
005bf99c  00 00 51 e3                                      cmp r1, #0
005bf9a0  02 00 00 0a                                      beq #0x5bf9b0
005bf9a4  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bf9a8  07 00 51 e3                                      cmp r1, #7
005bf9ac  02 00 00 0a                                      beq #0x5bf9bc
005bf9b0  00 00 a0 e3                                      mov r0, #0
005bf9b4  70 00 bd e8                                      pop {r4, r5, r6}
005bf9b8  1e ff 2f e1                                      bx lr
005bf9bc  08 10 94 e5                                      ldr r1, [r4, #8]
005bf9c0  01 00 52 e1                                      cmp r2, r1
005bf9c4  f9 ff ff 2a                                      bhs #0x5bf9b0
005bf9c8  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005bf9cc  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bf9d0  0c 00 a0 e3                                      mov r0, #0xc
005bf9d4  90 c2 22 e0                                      mla r2, r0, r2, ip
005bf9d8  01 00 a0 e3                                      mov r0, #1
005bf9dc  02 c0 91 e7                                      ldr ip, [r1, r2]
005bf9e0  02 20 81 e0                                      add r2, r1, r2
005bf9e4  00 c0 83 e5                                      str ip, [r3]
005bf9e8  04 10 92 e5                                      ldr r1, [r2, #4]
005bf9ec  04 10 83 e5                                      str r1, [r3, #4]
005bf9f0  08 20 92 e5                                      ldr r2, [r2, #8]
005bf9f4  08 20 83 e5                                      str r2, [r3, #8]
005bf9f8  ed ff ff ea                                      b #0x5bf9b4
005bf9fc  08 10 9f e5                                      ldr r1, [pc, #8]
005bfa00  01 40 9c e7                                      ldr r4, [ip, r1]
005bfa04  e3 ff ff ea                                      b #0x5bf998
; mapping-symbol data/literal pool
005bfa08  20 51 3d 00 14 28 00 00                          .byte 0x20, 0x51, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c0298, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<float> >(unsigned short, glitch::core::vector3d<float> const*, int)
; decoder-mode: arm
005c0298  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c029c  18 50 90 e5                                      ldr r5, [r0, #0x18]
005c02a0  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005c02a4  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
005c02a8  0c c0 65 e0                                      rsb ip, r5, ip
005c02ac  4c 61 a0 e1                                      asr r6, ip, #2
005c02b0  04 40 8f e0                                      add r4, pc, r4
005c02b4  86 70 86 e0                                      add r7, r6, r6, lsl #1
005c02b8  02 c0 a0 e1                                      mov ip, r2
005c02bc  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c02c0  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c02c4  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c02c8  07 61 86 e0                                      add r6, r6, r7, lsl #2
005c02cc  06 00 51 e1                                      cmp r1, r6
005c02d0  09 00 00 2a                                      bhs #0x5c02fc
005c02d4  14 20 a0 e3                                      mov r2, #0x14
005c02d8  92 51 25 e0                                      mla r5, r2, r1, r5
005c02dc  00 20 95 e5                                      ldr r2, [r5]
005c02e0  00 00 52 e3                                      cmp r2, #0
005c02e4  02 00 00 0a                                      beq #0x5c02f4
005c02e8  06 20 d5 e5                                      ldrb r2, [r5, #6]
005c02ec  07 00 52 e3                                      cmp r2, #7
005c02f0  04 00 00 0a                                      beq #0x5c0308
005c02f4  00 00 a0 e3                                      mov r0, #0
005c02f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c02fc  84 20 9f e5                                      ldr r2, [pc, #0x84]
005c0300  02 50 94 e7                                      ldr r5, [r4, r2]
005c0304  f4 ff ff ea                                      b #0x5c02dc
005c0308  00 00 53 e3                                      cmp r3, #0
005c030c  0c 00 53 13                                      cmpne r3, #0xc
005c0310  11 00 00 0a                                      beq #0x5c035c
005c0314  08 40 95 e5                                      ldr r4, [r5, #8]
005c0318  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c031c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c0320  00 00 54 e3                                      cmp r4, #0
005c0324  0a 00 00 0a                                      beq #0x5c0354
005c0328  02 20 81 e0                                      add r2, r1, r2
005c032c  00 10 9c e5                                      ldr r1, [ip]
005c0330  01 40 54 e2                                      subs r4, r4, #1
005c0334  00 10 82 e5                                      str r1, [r2]
005c0338  04 10 9c e5                                      ldr r1, [ip, #4]
005c033c  04 10 82 e5                                      str r1, [r2, #4]
005c0340  08 10 9c e5                                      ldr r1, [ip, #8]
005c0344  03 c0 8c e0                                      add ip, ip, r3
005c0348  08 10 82 e5                                      str r1, [r2, #8]
005c034c  0c 20 82 e2                                      add r2, r2, #0xc
005c0350  f5 ff ff 1a                                      bne #0x5c032c
005c0354  01 00 a0 e3                                      mov r0, #1
005c0358  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c035c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c0360  08 20 95 e5                                      ldr r2, [r5, #8]
005c0364  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005c0368  0c 10 a0 e3                                      mov r1, #0xc
005c036c  91 02 02 e0                                      mul r2, r1, r2
005c0370  03 00 80 e0                                      add r0, r0, r3
005c0374  0c 10 a0 e1                                      mov r1, ip
005c0378  3a 39 f5 eb                                      bl #0x30e868
005c037c  01 00 a0 e3                                      mov r0, #1
005c0380  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c0384  e0 47 3d 00 14 28 00 00                          .byte 0xe0, 0x47, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c196c, declared_size=300, range_size=300, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<float> >(unsigned short, glitch::core::vector3d<float>*, int) const
; decoder-mode: arm
005c196c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c1970  18 50 90 e5                                      ldr r5, [r0, #0x18]
005c1974  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005c1978  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
005c197c  0c c0 65 e0                                      rsb ip, r5, ip
005c1980  4c 61 a0 e1                                      asr r6, ip, #2
005c1984  04 40 8f e0                                      add r4, pc, r4
005c1988  86 70 86 e0                                      add r7, r6, r6, lsl #1
005c198c  02 c0 a0 e1                                      mov ip, r2
005c1990  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c1994  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c1998  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c199c  07 61 86 e0                                      add r6, r6, r7, lsl #2
005c19a0  06 00 51 e1                                      cmp r1, r6
005c19a4  17 00 00 2a                                      bhs #0x5c1a08
005c19a8  14 20 a0 e3                                      mov r2, #0x14
005c19ac  92 51 25 e0                                      mla r5, r2, r1, r5
005c19b0  00 20 95 e5                                      ldr r2, [r5]
005c19b4  00 00 52 e3                                      cmp r2, #0
005c19b8  10 00 00 0a                                      beq #0x5c1a00
005c19bc  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
005c19c0  06 20 d5 e5                                      ldrb r2, [r5, #6]
005c19c4  01 10 94 e7                                      ldr r1, [r4, r1]
005c19c8  02 11 91 e7                                      ldr r1, [r1, r2, lsl #2]
005c19cc  80 00 11 e3                                      tst r1, #0x80
005c19d0  0a 00 00 0a                                      beq #0x5c1a00
005c19d4  01 10 73 e2                                      rsbs r1, r3, #1
005c19d8  00 10 a0 33                                      movlo r1, #0
005c19dc  00 00 53 e3                                      cmp r3, #0
005c19e0  0c 00 53 13                                      cmpne r3, #0xc
005c19e4  0a 00 00 1a                                      bne #0x5c1a14
005c19e8  07 00 52 e3                                      cmp r2, #7
005c19ec  1c 00 00 0a                                      beq #0x5c1a64
005c19f0  00 00 51 e3                                      cmp r1, #0
005c19f4  06 00 00 0a                                      beq #0x5c1a14
005c19f8  01 00 a0 e3                                      mov r0, #1
005c19fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c1a00  00 00 a0 e3                                      mov r0, #0
005c1a04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c1a08  84 20 9f e5                                      ldr r2, [pc, #0x84]
005c1a0c  02 50 94 e7                                      ldr r5, [r4, r2]
005c1a10  e6 ff ff ea                                      b #0x5c19b0
005c1a14  07 00 52 e3                                      cmp r2, #7
005c1a18  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c1a1c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c1a20  f4 ff ff 1a                                      bne #0x5c19f8
005c1a24  08 10 95 e5                                      ldr r1, [r5, #8]
005c1a28  00 00 51 e3                                      cmp r1, #0
005c1a2c  f1 ff ff 0a                                      beq #0x5c19f8
005c1a30  02 20 80 e0                                      add r2, r0, r2
005c1a34  00 00 92 e5                                      ldr r0, [r2]
005c1a38  01 10 51 e2                                      subs r1, r1, #1
005c1a3c  00 00 8c e5                                      str r0, [ip]
005c1a40  04 00 92 e5                                      ldr r0, [r2, #4]
005c1a44  04 00 8c e5                                      str r0, [ip, #4]
005c1a48  08 00 92 e5                                      ldr r0, [r2, #8]
005c1a4c  0c 20 82 e2                                      add r2, r2, #0xc
005c1a50  08 00 8c e5                                      str r0, [ip, #8]
005c1a54  03 c0 8c e0                                      add ip, ip, r3
005c1a58  f5 ff ff 1a                                      bne #0x5c1a34
005c1a5c  01 00 a0 e3                                      mov r0, #1
005c1a60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c1a64  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c1a68  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c1a6c  08 30 95 e5                                      ldr r3, [r5, #8]
005c1a70  0c 00 a0 e1                                      mov r0, ip
005c1a74  02 10 81 e0                                      add r1, r1, r2
005c1a78  0c 20 a0 e3                                      mov r2, #0xc
005c1a7c  92 03 02 e0                                      mul r2, r2, r3
005c1a80  78 33 f5 eb                                      bl #0x30e868
005c1a84  01 00 a0 e3                                      mov r0, #1
005c1a88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c1a8c  0c 31 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x0c, 0x31, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c26dc, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<float> >(unsigned short, glitch::core::vector3d<float>*, int) const
; decoder-mode: arm
005c26dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c26e0  18 50 90 e5                                      ldr r5, [r0, #0x18]
005c26e4  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005c26e8  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
005c26ec  0c c0 65 e0                                      rsb ip, r5, ip
005c26f0  4c 61 a0 e1                                      asr r6, ip, #2
005c26f4  04 40 8f e0                                      add r4, pc, r4
005c26f8  86 70 86 e0                                      add r7, r6, r6, lsl #1
005c26fc  02 c0 a0 e1                                      mov ip, r2
005c2700  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c2704  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c2708  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c270c  07 61 86 e0                                      add r6, r6, r7, lsl #2
005c2710  06 00 51 e1                                      cmp r1, r6
005c2714  09 00 00 2a                                      bhs #0x5c2740
005c2718  14 20 a0 e3                                      mov r2, #0x14
005c271c  92 51 25 e0                                      mla r5, r2, r1, r5
005c2720  00 20 95 e5                                      ldr r2, [r5]
005c2724  00 00 52 e3                                      cmp r2, #0
005c2728  02 00 00 0a                                      beq #0x5c2738
005c272c  06 20 d5 e5                                      ldrb r2, [r5, #6]
005c2730  07 00 52 e3                                      cmp r2, #7
005c2734  04 00 00 0a                                      beq #0x5c274c
005c2738  00 00 a0 e3                                      mov r0, #0
005c273c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c2740  84 20 9f e5                                      ldr r2, [pc, #0x84]
005c2744  02 50 94 e7                                      ldr r5, [r4, r2]
005c2748  f4 ff ff ea                                      b #0x5c2720
005c274c  00 00 53 e3                                      cmp r3, #0
005c2750  0c 00 53 13                                      cmpne r3, #0xc
005c2754  11 00 00 0a                                      beq #0x5c27a0
005c2758  08 40 95 e5                                      ldr r4, [r5, #8]
005c275c  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c2760  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c2764  00 00 54 e3                                      cmp r4, #0
005c2768  0a 00 00 0a                                      beq #0x5c2798
005c276c  02 20 81 e0                                      add r2, r1, r2
005c2770  00 10 92 e5                                      ldr r1, [r2]
005c2774  01 40 54 e2                                      subs r4, r4, #1
005c2778  00 10 8c e5                                      str r1, [ip]
005c277c  04 10 92 e5                                      ldr r1, [r2, #4]
005c2780  04 10 8c e5                                      str r1, [ip, #4]
005c2784  08 10 92 e5                                      ldr r1, [r2, #8]
005c2788  0c 20 82 e2                                      add r2, r2, #0xc
005c278c  08 10 8c e5                                      str r1, [ip, #8]
005c2790  03 c0 8c e0                                      add ip, ip, r3
005c2794  f5 ff ff 1a                                      bne #0x5c2770
005c2798  01 00 a0 e3                                      mov r0, #1
005c279c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c27a0  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c27a4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c27a8  08 30 95 e5                                      ldr r3, [r5, #8]
005c27ac  0c 00 a0 e1                                      mov r0, ip
005c27b0  02 10 81 e0                                      add r1, r1, r2
005c27b4  0c 20 a0 e3                                      mov r2, #0xc
005c27b8  92 03 02 e0                                      mul r2, r2, r3
005c27bc  29 30 f5 eb                                      bl #0x30e868
005c27c0  01 00 a0 e3                                      mov r0, #1
005c27c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c27c8  9c 23 3d 00 14 28 00 00                          .byte 0x9c, 0x23, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c3514, declared_size=300, range_size=300, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<float> >(unsigned short, glitch::core::vector3d<float> const*, int)
; decoder-mode: arm
005c3514  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c3518  18 50 90 e5                                      ldr r5, [r0, #0x18]
005c351c  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005c3520  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
005c3524  0c c0 65 e0                                      rsb ip, r5, ip
005c3528  4c 61 a0 e1                                      asr r6, ip, #2
005c352c  04 40 8f e0                                      add r4, pc, r4
005c3530  86 70 86 e0                                      add r7, r6, r6, lsl #1
005c3534  02 c0 a0 e1                                      mov ip, r2
005c3538  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c353c  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c3540  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c3544  07 61 86 e0                                      add r6, r6, r7, lsl #2
005c3548  06 00 51 e1                                      cmp r1, r6
005c354c  17 00 00 2a                                      bhs #0x5c35b0
005c3550  14 20 a0 e3                                      mov r2, #0x14
005c3554  92 51 25 e0                                      mla r5, r2, r1, r5
005c3558  00 20 95 e5                                      ldr r2, [r5]
005c355c  00 00 52 e3                                      cmp r2, #0
005c3560  10 00 00 0a                                      beq #0x5c35a8
005c3564  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
005c3568  06 20 d5 e5                                      ldrb r2, [r5, #6]
005c356c  01 10 94 e7                                      ldr r1, [r4, r1]
005c3570  02 11 91 e7                                      ldr r1, [r1, r2, lsl #2]
005c3574  80 00 11 e3                                      tst r1, #0x80
005c3578  0a 00 00 0a                                      beq #0x5c35a8
005c357c  01 10 73 e2                                      rsbs r1, r3, #1
005c3580  00 10 a0 33                                      movlo r1, #0
005c3584  00 00 53 e3                                      cmp r3, #0
005c3588  0c 00 53 13                                      cmpne r3, #0xc
005c358c  0a 00 00 1a                                      bne #0x5c35bc
005c3590  07 00 52 e3                                      cmp r2, #7
005c3594  1c 00 00 0a                                      beq #0x5c360c
005c3598  00 00 51 e3                                      cmp r1, #0
005c359c  06 00 00 0a                                      beq #0x5c35bc
005c35a0  01 00 a0 e3                                      mov r0, #1
005c35a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c35a8  00 00 a0 e3                                      mov r0, #0
005c35ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c35b0  84 20 9f e5                                      ldr r2, [pc, #0x84]
005c35b4  02 50 94 e7                                      ldr r5, [r4, r2]
005c35b8  e6 ff ff ea                                      b #0x5c3558
005c35bc  07 00 52 e3                                      cmp r2, #7
005c35c0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c35c4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c35c8  f4 ff ff 1a                                      bne #0x5c35a0
005c35cc  08 10 95 e5                                      ldr r1, [r5, #8]
005c35d0  00 00 51 e3                                      cmp r1, #0
005c35d4  f1 ff ff 0a                                      beq #0x5c35a0
005c35d8  02 20 80 e0                                      add r2, r0, r2
005c35dc  00 00 9c e5                                      ldr r0, [ip]
005c35e0  01 10 51 e2                                      subs r1, r1, #1
005c35e4  00 00 82 e5                                      str r0, [r2]
005c35e8  04 00 9c e5                                      ldr r0, [ip, #4]
005c35ec  04 00 82 e5                                      str r0, [r2, #4]
005c35f0  08 00 9c e5                                      ldr r0, [ip, #8]
005c35f4  03 c0 8c e0                                      add ip, ip, r3
005c35f8  08 00 82 e5                                      str r0, [r2, #8]
005c35fc  0c 20 82 e2                                      add r2, r2, #0xc
005c3600  f5 ff ff 1a                                      bne #0x5c35dc
005c3604  01 00 a0 e3                                      mov r0, #1
005c3608  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c360c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c3610  08 20 95 e5                                      ldr r2, [r5, #8]
005c3614  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005c3618  0c 10 a0 e3                                      mov r1, #0xc
005c361c  91 02 02 e0                                      mul r2, r1, r2
005c3620  03 00 80 e0                                      add r0, r0, r3
005c3624  0c 10 a0 e1                                      mov r1, ip
005c3628  8e 2c f5 eb                                      bl #0x30e868
005c362c  01 00 a0 e3                                      mov r0, #1
005c3630  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c3634  64 15 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x64, 0x15, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c41d0, declared_size=200, range_size=200, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float> const&)
; decoder-mode: arm
005c41d0  70 00 2d e9                                      push {r4, r5, r6}
005c41d4  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c41d8  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c41dc  a8 c0 9f e5                                      ldr ip, [pc, #0xa8]
005c41e0  05 50 64 e0                                      rsb r5, r4, r5
005c41e4  45 51 a0 e1                                      asr r5, r5, #2
005c41e8  0c c0 8f e0                                      add ip, pc, ip
005c41ec  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c41f0  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c41f4  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c41f8  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c41fc  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c4200  05 00 51 e1                                      cmp r1, r5
005c4204  1d 00 00 2a                                      bhs #0x5c4280
005c4208  14 50 a0 e3                                      mov r5, #0x14
005c420c  95 41 24 e0                                      mla r4, r5, r1, r4
005c4210  00 10 94 e5                                      ldr r1, [r4]
005c4214  00 00 51 e3                                      cmp r1, #0
005c4218  15 00 00 0a                                      beq #0x5c4274
005c421c  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
005c4220  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c4224  05 c0 9c e7                                      ldr ip, [ip, r5]
005c4228  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c422c  80 00 1c e3                                      tst ip, #0x80
005c4230  0f 00 00 0a                                      beq #0x5c4274
005c4234  08 c0 94 e5                                      ldr ip, [r4, #8]
005c4238  0c 00 52 e1                                      cmp r2, ip
005c423c  0c 00 00 2a                                      bhs #0x5c4274
005c4240  07 00 51 e3                                      cmp r1, #7
005c4244  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c4248  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c424c  00 40 93 05                                      ldreq r4, [r3]
005c4250  01 00 a0 13                                      movne r0, #1
005c4254  01 20 8c 00                                      addeq r2, ip, r1
005c4258  01 40 8c 07                                      streq r4, [ip, r1]
005c425c  04 10 93 05                                      ldreq r1, [r3, #4]
005c4260  01 00 a0 03                                      moveq r0, #1
005c4264  04 10 82 05                                      streq r1, [r2, #4]
005c4268  08 30 93 05                                      ldreq r3, [r3, #8]
005c426c  08 30 82 05                                      streq r3, [r2, #8]
005c4270  00 00 00 ea                                      b #0x5c4278
005c4274  00 00 a0 e3                                      mov r0, #0
005c4278  70 00 bd e8                                      pop {r4, r5, r6}
005c427c  1e ff 2f e1                                      bx lr
005c4280  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005c4284  01 40 9c e7                                      ldr r4, [ip, r1]
005c4288  e0 ff ff ea                                      b #0x5c4210
; mapping-symbol data/literal pool
005c428c  a8 08 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xa8, 0x08, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4a4c, declared_size=184, range_size=184, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float> const&)
; decoder-mode: arm
005c4a4c  70 00 2d e9                                      push {r4, r5, r6}
005c4a50  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4a54  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4a58  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
005c4a5c  05 50 64 e0                                      rsb r5, r4, r5
005c4a60  45 51 a0 e1                                      asr r5, r5, #2
005c4a64  0c c0 8f e0                                      add ip, pc, ip
005c4a68  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c4a6c  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c4a70  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c4a74  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c4a78  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c4a7c  05 00 51 e1                                      cmp r1, r5
005c4a80  1a 00 00 2a                                      bhs #0x5c4af0
005c4a84  14 c0 a0 e3                                      mov ip, #0x14
005c4a88  9c 41 24 e0                                      mla r4, ip, r1, r4
005c4a8c  00 10 94 e5                                      ldr r1, [r4]
005c4a90  00 00 51 e3                                      cmp r1, #0
005c4a94  02 00 00 0a                                      beq #0x5c4aa4
005c4a98  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c4a9c  07 00 51 e3                                      cmp r1, #7
005c4aa0  02 00 00 0a                                      beq #0x5c4ab0
005c4aa4  00 00 a0 e3                                      mov r0, #0
005c4aa8  70 00 bd e8                                      pop {r4, r5, r6}
005c4aac  1e ff 2f e1                                      bx lr
005c4ab0  08 10 94 e5                                      ldr r1, [r4, #8]
005c4ab4  01 00 52 e1                                      cmp r2, r1
005c4ab8  f9 ff ff 2a                                      bhs #0x5c4aa4
005c4abc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c4ac0  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c4ac4  0c 00 a0 e3                                      mov r0, #0xc
005c4ac8  90 12 22 e0                                      mla r2, r0, r2, r1
005c4acc  00 40 93 e5                                      ldr r4, [r3]
005c4ad0  02 10 8c e0                                      add r1, ip, r2
005c4ad4  01 00 a0 e3                                      mov r0, #1
005c4ad8  02 40 8c e7                                      str r4, [ip, r2]
005c4adc  04 20 93 e5                                      ldr r2, [r3, #4]
005c4ae0  04 20 81 e5                                      str r2, [r1, #4]
005c4ae4  08 30 93 e5                                      ldr r3, [r3, #8]
005c4ae8  08 30 81 e5                                      str r3, [r1, #8]
005c4aec  ed ff ff ea                                      b #0x5c4aa8
005c4af0  08 10 9f e5                                      ldr r1, [pc, #8]
005c4af4  01 40 9c e7                                      ldr r4, [ip, r1]
005c4af8  e3 ff ff ea                                      b #0x5c4a8c
; mapping-symbol data/literal pool
005c4afc  2c 00 3d 00 14 28 00 00                          .byte 0x2c, 0x00, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00
