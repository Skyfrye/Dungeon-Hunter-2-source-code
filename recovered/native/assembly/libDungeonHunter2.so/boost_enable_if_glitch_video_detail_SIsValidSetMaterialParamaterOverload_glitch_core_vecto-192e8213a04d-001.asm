; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005bf434, declared_size=200, range_size=200, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<int> >(unsigned short, unsigned int, glitch::core::vector3d<int>&) const
; decoder-mode: arm
005bf434  70 00 2d e9                                      push {r4, r5, r6}
005bf438  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bf43c  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bf440  a8 c0 9f e5                                      ldr ip, [pc, #0xa8]
005bf444  05 50 64 e0                                      rsb r5, r4, r5
005bf448  45 51 a0 e1                                      asr r5, r5, #2
005bf44c  0c c0 8f e0                                      add ip, pc, ip
005bf450  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bf454  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bf458  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bf45c  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bf460  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bf464  05 00 51 e1                                      cmp r1, r5
005bf468  1d 00 00 2a                                      bhs #0x5bf4e4
005bf46c  14 50 a0 e3                                      mov r5, #0x14
005bf470  95 41 24 e0                                      mla r4, r5, r1, r4
005bf474  00 10 94 e5                                      ldr r1, [r4]
005bf478  00 00 51 e3                                      cmp r1, #0
005bf47c  15 00 00 0a                                      beq #0x5bf4d8
005bf480  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
005bf484  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bf488  05 c0 9c e7                                      ldr ip, [ip, r5]
005bf48c  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005bf490  08 00 1c e3                                      tst ip, #8
005bf494  0f 00 00 0a                                      beq #0x5bf4d8
005bf498  08 c0 94 e5                                      ldr ip, [r4, #8]
005bf49c  0c 00 52 e1                                      cmp r2, ip
005bf4a0  0c 00 00 2a                                      bhs #0x5bf4d8
005bf4a4  03 00 51 e3                                      cmp r1, #3
005bf4a8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005bf4ac  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bf4b0  01 00 a0 13                                      movne r0, #1
005bf4b4  01 00 a0 03                                      moveq r0, #1
005bf4b8  02 c0 91 07                                      ldreq ip, [r1, r2]
005bf4bc  02 20 81 00                                      addeq r2, r1, r2
005bf4c0  00 c0 83 05                                      streq ip, [r3]
005bf4c4  04 10 92 05                                      ldreq r1, [r2, #4]
005bf4c8  04 10 83 05                                      streq r1, [r3, #4]
005bf4cc  08 20 92 05                                      ldreq r2, [r2, #8]
005bf4d0  08 20 83 05                                      streq r2, [r3, #8]
005bf4d4  00 00 00 ea                                      b #0x5bf4dc
005bf4d8  00 00 a0 e3                                      mov r0, #0
005bf4dc  70 00 bd e8                                      pop {r4, r5, r6}
005bf4e0  1e ff 2f e1                                      bx lr
005bf4e4  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005bf4e8  01 40 9c e7                                      ldr r4, [ip, r1]
005bf4ec  e0 ff ff ea                                      b #0x5bf474
; mapping-symbol data/literal pool
005bf4f0  44 56 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x44, 0x56, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bfc18, declared_size=300, range_size=300, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<int> >(unsigned short, glitch::core::vector3d<int> const*, int)
; decoder-mode: arm
005bfc18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005bfc1c  18 50 90 e5                                      ldr r5, [r0, #0x18]
005bfc20  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005bfc24  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
005bfc28  0c c0 65 e0                                      rsb ip, r5, ip
005bfc2c  4c 61 a0 e1                                      asr r6, ip, #2
005bfc30  04 40 8f e0                                      add r4, pc, r4
005bfc34  86 70 86 e0                                      add r7, r6, r6, lsl #1
005bfc38  02 c0 a0 e1                                      mov ip, r2
005bfc3c  07 72 87 e0                                      add r7, r7, r7, lsl #4
005bfc40  07 74 87 e0                                      add r7, r7, r7, lsl #8
005bfc44  07 78 87 e0                                      add r7, r7, r7, lsl #16
005bfc48  07 61 86 e0                                      add r6, r6, r7, lsl #2
005bfc4c  06 00 51 e1                                      cmp r1, r6
005bfc50  17 00 00 2a                                      bhs #0x5bfcb4
005bfc54  14 20 a0 e3                                      mov r2, #0x14
005bfc58  92 51 25 e0                                      mla r5, r2, r1, r5
005bfc5c  00 20 95 e5                                      ldr r2, [r5]
005bfc60  00 00 52 e3                                      cmp r2, #0
005bfc64  10 00 00 0a                                      beq #0x5bfcac
005bfc68  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
005bfc6c  06 20 d5 e5                                      ldrb r2, [r5, #6]
005bfc70  01 10 94 e7                                      ldr r1, [r4, r1]
005bfc74  02 11 91 e7                                      ldr r1, [r1, r2, lsl #2]
005bfc78  08 00 11 e3                                      tst r1, #8
005bfc7c  0a 00 00 0a                                      beq #0x5bfcac
005bfc80  01 10 73 e2                                      rsbs r1, r3, #1
005bfc84  00 10 a0 33                                      movlo r1, #0
005bfc88  00 00 53 e3                                      cmp r3, #0
005bfc8c  0c 00 53 13                                      cmpne r3, #0xc
005bfc90  0a 00 00 1a                                      bne #0x5bfcc0
005bfc94  03 00 52 e3                                      cmp r2, #3
005bfc98  1c 00 00 0a                                      beq #0x5bfd10
005bfc9c  00 00 51 e3                                      cmp r1, #0
005bfca0  06 00 00 0a                                      beq #0x5bfcc0
005bfca4  01 00 a0 e3                                      mov r0, #1
005bfca8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bfcac  00 00 a0 e3                                      mov r0, #0
005bfcb0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bfcb4  84 20 9f e5                                      ldr r2, [pc, #0x84]
005bfcb8  02 50 94 e7                                      ldr r5, [r4, r2]
005bfcbc  e6 ff ff ea                                      b #0x5bfc5c
005bfcc0  03 00 52 e3                                      cmp r2, #3
005bfcc4  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005bfcc8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005bfccc  f4 ff ff 1a                                      bne #0x5bfca4
005bfcd0  08 10 95 e5                                      ldr r1, [r5, #8]
005bfcd4  00 00 51 e3                                      cmp r1, #0
005bfcd8  f1 ff ff 0a                                      beq #0x5bfca4
005bfcdc  02 20 80 e0                                      add r2, r0, r2
005bfce0  00 00 9c e5                                      ldr r0, [ip]
005bfce4  01 10 51 e2                                      subs r1, r1, #1
005bfce8  00 00 82 e5                                      str r0, [r2]
005bfcec  04 00 9c e5                                      ldr r0, [ip, #4]
005bfcf0  04 00 82 e5                                      str r0, [r2, #4]
005bfcf4  08 00 9c e5                                      ldr r0, [ip, #8]
005bfcf8  03 c0 8c e0                                      add ip, ip, r3
005bfcfc  08 00 82 e5                                      str r0, [r2, #8]
005bfd00  0c 20 82 e2                                      add r2, r2, #0xc
005bfd04  f5 ff ff 1a                                      bne #0x5bfce0
005bfd08  01 00 a0 e3                                      mov r0, #1
005bfd0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bfd10  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005bfd14  08 20 95 e5                                      ldr r2, [r5, #8]
005bfd18  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005bfd1c  0c 10 a0 e3                                      mov r1, #0xc
005bfd20  91 02 02 e0                                      mul r2, r1, r2
005bfd24  03 00 80 e0                                      add r0, r0, r3
005bfd28  0c 10 a0 e1                                      mov r1, ip
005bfd2c  cd 3a f5 eb                                      bl #0x30e868
005bfd30  01 00 a0 e3                                      mov r0, #1
005bfd34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005bfd38  60 4e 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x60, 0x4e, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c0654, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<int> >(unsigned short, glitch::core::vector3d<int> const*, int)
; decoder-mode: arm
005c0654  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c0658  18 50 90 e5                                      ldr r5, [r0, #0x18]
005c065c  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005c0660  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
005c0664  0c c0 65 e0                                      rsb ip, r5, ip
005c0668  4c 61 a0 e1                                      asr r6, ip, #2
005c066c  04 40 8f e0                                      add r4, pc, r4
005c0670  86 70 86 e0                                      add r7, r6, r6, lsl #1
005c0674  02 c0 a0 e1                                      mov ip, r2
005c0678  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c067c  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c0680  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c0684  07 61 86 e0                                      add r6, r6, r7, lsl #2
005c0688  06 00 51 e1                                      cmp r1, r6
005c068c  09 00 00 2a                                      bhs #0x5c06b8
005c0690  14 20 a0 e3                                      mov r2, #0x14
005c0694  92 51 25 e0                                      mla r5, r2, r1, r5
005c0698  00 20 95 e5                                      ldr r2, [r5]
005c069c  00 00 52 e3                                      cmp r2, #0
005c06a0  02 00 00 0a                                      beq #0x5c06b0
005c06a4  06 20 d5 e5                                      ldrb r2, [r5, #6]
005c06a8  03 00 52 e3                                      cmp r2, #3
005c06ac  04 00 00 0a                                      beq #0x5c06c4
005c06b0  00 00 a0 e3                                      mov r0, #0
005c06b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c06b8  84 20 9f e5                                      ldr r2, [pc, #0x84]
005c06bc  02 50 94 e7                                      ldr r5, [r4, r2]
005c06c0  f4 ff ff ea                                      b #0x5c0698
005c06c4  00 00 53 e3                                      cmp r3, #0
005c06c8  0c 00 53 13                                      cmpne r3, #0xc
005c06cc  11 00 00 0a                                      beq #0x5c0718
005c06d0  08 40 95 e5                                      ldr r4, [r5, #8]
005c06d4  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c06d8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c06dc  00 00 54 e3                                      cmp r4, #0
005c06e0  0a 00 00 0a                                      beq #0x5c0710
005c06e4  02 20 81 e0                                      add r2, r1, r2
005c06e8  00 10 9c e5                                      ldr r1, [ip]
005c06ec  01 40 54 e2                                      subs r4, r4, #1
005c06f0  00 10 82 e5                                      str r1, [r2]
005c06f4  04 10 9c e5                                      ldr r1, [ip, #4]
005c06f8  04 10 82 e5                                      str r1, [r2, #4]
005c06fc  08 10 9c e5                                      ldr r1, [ip, #8]
005c0700  03 c0 8c e0                                      add ip, ip, r3
005c0704  08 10 82 e5                                      str r1, [r2, #8]
005c0708  0c 20 82 e2                                      add r2, r2, #0xc
005c070c  f5 ff ff 1a                                      bne #0x5c06e8
005c0710  01 00 a0 e3                                      mov r0, #1
005c0714  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c0718  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c071c  08 20 95 e5                                      ldr r2, [r5, #8]
005c0720  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005c0724  0c 10 a0 e3                                      mov r1, #0xc
005c0728  91 02 02 e0                                      mul r2, r1, r2
005c072c  03 00 80 e0                                      add r0, r0, r3
005c0730  0c 10 a0 e1                                      mov r1, ip
005c0734  4b 38 f5 eb                                      bl #0x30e868
005c0738  01 00 a0 e3                                      mov r0, #1
005c073c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c0740  24 44 3d 00 14 28 00 00                          .byte 0x24, 0x44, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c1e34, declared_size=300, range_size=300, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector3d<int> >(unsigned short, glitch::core::vector3d<int>*, int) const
; decoder-mode: arm
005c1e34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c1e38  18 50 90 e5                                      ldr r5, [r0, #0x18]
005c1e3c  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005c1e40  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
005c1e44  0c c0 65 e0                                      rsb ip, r5, ip
005c1e48  4c 61 a0 e1                                      asr r6, ip, #2
005c1e4c  04 40 8f e0                                      add r4, pc, r4
005c1e50  86 70 86 e0                                      add r7, r6, r6, lsl #1
005c1e54  02 c0 a0 e1                                      mov ip, r2
005c1e58  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c1e5c  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c1e60  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c1e64  07 61 86 e0                                      add r6, r6, r7, lsl #2
005c1e68  06 00 51 e1                                      cmp r1, r6
005c1e6c  17 00 00 2a                                      bhs #0x5c1ed0
005c1e70  14 20 a0 e3                                      mov r2, #0x14
005c1e74  92 51 25 e0                                      mla r5, r2, r1, r5
005c1e78  00 20 95 e5                                      ldr r2, [r5]
005c1e7c  00 00 52 e3                                      cmp r2, #0
005c1e80  10 00 00 0a                                      beq #0x5c1ec8
005c1e84  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
005c1e88  06 20 d5 e5                                      ldrb r2, [r5, #6]
005c1e8c  01 10 94 e7                                      ldr r1, [r4, r1]
005c1e90  02 11 91 e7                                      ldr r1, [r1, r2, lsl #2]
005c1e94  08 00 11 e3                                      tst r1, #8
005c1e98  0a 00 00 0a                                      beq #0x5c1ec8
005c1e9c  01 10 73 e2                                      rsbs r1, r3, #1
005c1ea0  00 10 a0 33                                      movlo r1, #0
005c1ea4  00 00 53 e3                                      cmp r3, #0
005c1ea8  0c 00 53 13                                      cmpne r3, #0xc
005c1eac  0a 00 00 1a                                      bne #0x5c1edc
005c1eb0  03 00 52 e3                                      cmp r2, #3
005c1eb4  1c 00 00 0a                                      beq #0x5c1f2c
005c1eb8  00 00 51 e3                                      cmp r1, #0
005c1ebc  06 00 00 0a                                      beq #0x5c1edc
005c1ec0  01 00 a0 e3                                      mov r0, #1
005c1ec4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c1ec8  00 00 a0 e3                                      mov r0, #0
005c1ecc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c1ed0  84 20 9f e5                                      ldr r2, [pc, #0x84]
005c1ed4  02 50 94 e7                                      ldr r5, [r4, r2]
005c1ed8  e6 ff ff ea                                      b #0x5c1e78
005c1edc  03 00 52 e3                                      cmp r2, #3
005c1ee0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c1ee4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c1ee8  f4 ff ff 1a                                      bne #0x5c1ec0
005c1eec  08 10 95 e5                                      ldr r1, [r5, #8]
005c1ef0  00 00 51 e3                                      cmp r1, #0
005c1ef4  f1 ff ff 0a                                      beq #0x5c1ec0
005c1ef8  02 20 80 e0                                      add r2, r0, r2
005c1efc  00 00 92 e5                                      ldr r0, [r2]
005c1f00  01 10 51 e2                                      subs r1, r1, #1
005c1f04  00 00 8c e5                                      str r0, [ip]
005c1f08  04 00 92 e5                                      ldr r0, [r2, #4]
005c1f0c  04 00 8c e5                                      str r0, [ip, #4]
005c1f10  08 00 92 e5                                      ldr r0, [r2, #8]
005c1f14  0c 20 82 e2                                      add r2, r2, #0xc
005c1f18  08 00 8c e5                                      str r0, [ip, #8]
005c1f1c  03 c0 8c e0                                      add ip, ip, r3
005c1f20  f5 ff ff 1a                                      bne #0x5c1efc
005c1f24  01 00 a0 e3                                      mov r0, #1
005c1f28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c1f2c  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c1f30  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c1f34  08 30 95 e5                                      ldr r3, [r5, #8]
005c1f38  0c 00 a0 e1                                      mov r0, ip
005c1f3c  02 10 81 e0                                      add r1, r1, r2
005c1f40  0c 20 a0 e3                                      mov r2, #0xc
005c1f44  92 03 02 e0                                      mul r2, r2, r3
005c1f48  46 32 f5 eb                                      bl #0x30e868
005c1f4c  01 00 a0 e3                                      mov r0, #1
005c1f50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c1f54  44 2c 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x44, 0x2c, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c2a98, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<int> >(unsigned short, glitch::core::vector3d<int>*, int) const
; decoder-mode: arm
005c2a98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c2a9c  18 50 90 e5                                      ldr r5, [r0, #0x18]
005c2aa0  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
005c2aa4  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
005c2aa8  0c c0 65 e0                                      rsb ip, r5, ip
005c2aac  4c 61 a0 e1                                      asr r6, ip, #2
005c2ab0  04 40 8f e0                                      add r4, pc, r4
005c2ab4  86 70 86 e0                                      add r7, r6, r6, lsl #1
005c2ab8  02 c0 a0 e1                                      mov ip, r2
005c2abc  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c2ac0  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c2ac4  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c2ac8  07 61 86 e0                                      add r6, r6, r7, lsl #2
005c2acc  06 00 51 e1                                      cmp r1, r6
005c2ad0  09 00 00 2a                                      bhs #0x5c2afc
005c2ad4  14 20 a0 e3                                      mov r2, #0x14
005c2ad8  92 51 25 e0                                      mla r5, r2, r1, r5
005c2adc  00 20 95 e5                                      ldr r2, [r5]
005c2ae0  00 00 52 e3                                      cmp r2, #0
005c2ae4  02 00 00 0a                                      beq #0x5c2af4
005c2ae8  06 20 d5 e5                                      ldrb r2, [r5, #6]
005c2aec  03 00 52 e3                                      cmp r2, #3
005c2af0  04 00 00 0a                                      beq #0x5c2b08
005c2af4  00 00 a0 e3                                      mov r0, #0
005c2af8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c2afc  84 20 9f e5                                      ldr r2, [pc, #0x84]
005c2b00  02 50 94 e7                                      ldr r5, [r4, r2]
005c2b04  f4 ff ff ea                                      b #0x5c2adc
005c2b08  00 00 53 e3                                      cmp r3, #0
005c2b0c  0c 00 53 13                                      cmpne r3, #0xc
005c2b10  11 00 00 0a                                      beq #0x5c2b5c
005c2b14  08 40 95 e5                                      ldr r4, [r5, #8]
005c2b18  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c2b1c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c2b20  00 00 54 e3                                      cmp r4, #0
005c2b24  0a 00 00 0a                                      beq #0x5c2b54
005c2b28  02 20 81 e0                                      add r2, r1, r2
005c2b2c  00 10 92 e5                                      ldr r1, [r2]
005c2b30  01 40 54 e2                                      subs r4, r4, #1
005c2b34  00 10 8c e5                                      str r1, [ip]
005c2b38  04 10 92 e5                                      ldr r1, [r2, #4]
005c2b3c  04 10 8c e5                                      str r1, [ip, #4]
005c2b40  08 10 92 e5                                      ldr r1, [r2, #8]
005c2b44  0c 20 82 e2                                      add r2, r2, #0xc
005c2b48  08 10 8c e5                                      str r1, [ip, #8]
005c2b4c  03 c0 8c e0                                      add ip, ip, r3
005c2b50  f5 ff ff 1a                                      bne #0x5c2b2c
005c2b54  01 00 a0 e3                                      mov r0, #1
005c2b58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c2b5c  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c2b60  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c2b64  08 30 95 e5                                      ldr r3, [r5, #8]
005c2b68  0c 00 a0 e1                                      mov r0, ip
005c2b6c  02 10 81 e0                                      add r1, r1, r2
005c2b70  0c 20 a0 e3                                      mov r2, #0xc
005c2b74  92 03 02 e0                                      mul r2, r2, r3
005c2b78  3a 2f f5 eb                                      bl #0x30e868
005c2b7c  01 00 a0 e3                                      mov r0, #1
005c2b80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c2b84  e0 1f 3d 00 14 28 00 00                          .byte 0xe0, 0x1f, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c39dc, declared_size=184, range_size=184, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector3d<int> >(unsigned short, unsigned int, glitch::core::vector3d<int>&) const
; decoder-mode: arm
005c39dc  70 00 2d e9                                      push {r4, r5, r6}
005c39e0  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c39e4  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c39e8  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
005c39ec  05 50 64 e0                                      rsb r5, r4, r5
005c39f0  45 51 a0 e1                                      asr r5, r5, #2
005c39f4  0c c0 8f e0                                      add ip, pc, ip
005c39f8  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c39fc  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c3a00  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c3a04  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c3a08  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c3a0c  05 00 51 e1                                      cmp r1, r5
005c3a10  1a 00 00 2a                                      bhs #0x5c3a80
005c3a14  14 c0 a0 e3                                      mov ip, #0x14
005c3a18  9c 41 24 e0                                      mla r4, ip, r1, r4
005c3a1c  00 10 94 e5                                      ldr r1, [r4]
005c3a20  00 00 51 e3                                      cmp r1, #0
005c3a24  02 00 00 0a                                      beq #0x5c3a34
005c3a28  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c3a2c  03 00 51 e3                                      cmp r1, #3
005c3a30  02 00 00 0a                                      beq #0x5c3a40
005c3a34  00 00 a0 e3                                      mov r0, #0
005c3a38  70 00 bd e8                                      pop {r4, r5, r6}
005c3a3c  1e ff 2f e1                                      bx lr
005c3a40  08 10 94 e5                                      ldr r1, [r4, #8]
005c3a44  01 00 52 e1                                      cmp r2, r1
005c3a48  f9 ff ff 2a                                      bhs #0x5c3a34
005c3a4c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005c3a50  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c3a54  0c 00 a0 e3                                      mov r0, #0xc
005c3a58  90 c2 22 e0                                      mla r2, r0, r2, ip
005c3a5c  01 00 a0 e3                                      mov r0, #1
005c3a60  02 c0 91 e7                                      ldr ip, [r1, r2]
005c3a64  02 20 81 e0                                      add r2, r1, r2
005c3a68  00 c0 83 e5                                      str ip, [r3]
005c3a6c  04 10 92 e5                                      ldr r1, [r2, #4]
005c3a70  04 10 83 e5                                      str r1, [r3, #4]
005c3a74  08 20 92 e5                                      ldr r2, [r2, #8]
005c3a78  08 20 83 e5                                      str r2, [r3, #8]
005c3a7c  ed ff ff ea                                      b #0x5c3a38
005c3a80  08 10 9f e5                                      ldr r1, [pc, #8]
005c3a84  01 40 9c e7                                      ldr r4, [ip, r1]
005c3a88  e3 ff ff ea                                      b #0x5c3a1c
; mapping-symbol data/literal pool
005c3a8c  9c 10 3d 00 14 28 00 00                          .byte 0x9c, 0x10, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4500, declared_size=200, range_size=200, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector3d<int> >(unsigned short, unsigned int, glitch::core::vector3d<int> const&)
; decoder-mode: arm
005c4500  70 00 2d e9                                      push {r4, r5, r6}
005c4504  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4508  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c450c  a8 c0 9f e5                                      ldr ip, [pc, #0xa8]
005c4510  05 50 64 e0                                      rsb r5, r4, r5
005c4514  45 51 a0 e1                                      asr r5, r5, #2
005c4518  0c c0 8f e0                                      add ip, pc, ip
005c451c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c4520  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c4524  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c4528  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c452c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c4530  05 00 51 e1                                      cmp r1, r5
005c4534  1d 00 00 2a                                      bhs #0x5c45b0
005c4538  14 50 a0 e3                                      mov r5, #0x14
005c453c  95 41 24 e0                                      mla r4, r5, r1, r4
005c4540  00 10 94 e5                                      ldr r1, [r4]
005c4544  00 00 51 e3                                      cmp r1, #0
005c4548  15 00 00 0a                                      beq #0x5c45a4
005c454c  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
005c4550  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c4554  05 c0 9c e7                                      ldr ip, [ip, r5]
005c4558  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c455c  08 00 1c e3                                      tst ip, #8
005c4560  0f 00 00 0a                                      beq #0x5c45a4
005c4564  08 c0 94 e5                                      ldr ip, [r4, #8]
005c4568  0c 00 52 e1                                      cmp r2, ip
005c456c  0c 00 00 2a                                      bhs #0x5c45a4
005c4570  03 00 51 e3                                      cmp r1, #3
005c4574  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c4578  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c457c  00 40 93 05                                      ldreq r4, [r3]
005c4580  01 00 a0 13                                      movne r0, #1
005c4584  01 20 8c 00                                      addeq r2, ip, r1
005c4588  01 40 8c 07                                      streq r4, [ip, r1]
005c458c  04 10 93 05                                      ldreq r1, [r3, #4]
005c4590  01 00 a0 03                                      moveq r0, #1
005c4594  04 10 82 05                                      streq r1, [r2, #4]
005c4598  08 30 93 05                                      ldreq r3, [r3, #8]
005c459c  08 30 82 05                                      streq r3, [r2, #8]
005c45a0  00 00 00 ea                                      b #0x5c45a8
005c45a4  00 00 a0 e3                                      mov r0, #0
005c45a8  70 00 bd e8                                      pop {r4, r5, r6}
005c45ac  1e ff 2f e1                                      bx lr
005c45b0  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005c45b4  01 40 9c e7                                      ldr r4, [ip, r1]
005c45b8  e0 ff ff ea                                      b #0x5c4540
; mapping-symbol data/literal pool
005c45bc  78 05 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x78, 0x05, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4d0c, declared_size=184, range_size=184, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector3d<int> >(unsigned short, unsigned int, glitch::core::vector3d<int> const&)
; decoder-mode: arm
005c4d0c  70 00 2d e9                                      push {r4, r5, r6}
005c4d10  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4d14  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4d18  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
005c4d1c  05 50 64 e0                                      rsb r5, r4, r5
005c4d20  45 51 a0 e1                                      asr r5, r5, #2
005c4d24  0c c0 8f e0                                      add ip, pc, ip
005c4d28  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c4d2c  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c4d30  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c4d34  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c4d38  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c4d3c  05 00 51 e1                                      cmp r1, r5
005c4d40  1a 00 00 2a                                      bhs #0x5c4db0
005c4d44  14 c0 a0 e3                                      mov ip, #0x14
005c4d48  9c 41 24 e0                                      mla r4, ip, r1, r4
005c4d4c  00 10 94 e5                                      ldr r1, [r4]
005c4d50  00 00 51 e3                                      cmp r1, #0
005c4d54  02 00 00 0a                                      beq #0x5c4d64
005c4d58  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c4d5c  03 00 51 e3                                      cmp r1, #3
005c4d60  02 00 00 0a                                      beq #0x5c4d70
005c4d64  00 00 a0 e3                                      mov r0, #0
005c4d68  70 00 bd e8                                      pop {r4, r5, r6}
005c4d6c  1e ff 2f e1                                      bx lr
005c4d70  08 10 94 e5                                      ldr r1, [r4, #8]
005c4d74  01 00 52 e1                                      cmp r2, r1
005c4d78  f9 ff ff 2a                                      bhs #0x5c4d64
005c4d7c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c4d80  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c4d84  0c 00 a0 e3                                      mov r0, #0xc
005c4d88  90 12 22 e0                                      mla r2, r0, r2, r1
005c4d8c  00 40 93 e5                                      ldr r4, [r3]
005c4d90  02 10 8c e0                                      add r1, ip, r2
005c4d94  01 00 a0 e3                                      mov r0, #1
005c4d98  02 40 8c e7                                      str r4, [ip, r2]
005c4d9c  04 20 93 e5                                      ldr r2, [r3, #4]
005c4da0  04 20 81 e5                                      str r2, [r1, #4]
005c4da4  08 30 93 e5                                      ldr r3, [r3, #8]
005c4da8  08 30 81 e5                                      str r3, [r1, #8]
005c4dac  ed ff ff ea                                      b #0x5c4d68
005c4db0  08 10 9f e5                                      ldr r1, [pc, #8]
005c4db4  01 40 9c e7                                      ldr r4, [ip, r1]
005c4db8  e3 ff ff ea                                      b #0x5c4d4c
; mapping-symbol data/literal pool
005c4dbc  6c fd 3c 00 14 28 00 00                          .byte 0x6c, 0xfd, 0x3c, 0x00, 0x14, 0x28, 0x00, 0x00
