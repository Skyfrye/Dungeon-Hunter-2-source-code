; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005beaa4, declared_size=224, range_size=224, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::ITexture>&) const
; decoder-mode: arm
005beaa4  70 40 2d e9                                      push {r4, r5, r6, lr}
005beaa8  18 40 90 e5                                      ldr r4, [r0, #0x18]
005beaac  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005beab0  c4 c0 9f e5                                      ldr ip, [pc, #0xc4]
005beab4  05 50 64 e0                                      rsb r5, r4, r5
005beab8  45 51 a0 e1                                      asr r5, r5, #2
005beabc  0c c0 8f e0                                      add ip, pc, ip
005beac0  85 60 85 e0                                      add r6, r5, r5, lsl #1
005beac4  06 62 86 e0                                      add r6, r6, r6, lsl #4
005beac8  06 64 86 e0                                      add r6, r6, r6, lsl #8
005beacc  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bead0  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bead4  05 00 51 e1                                      cmp r1, r5
005bead8  22 00 00 2a                                      bhs #0x5beb68
005beadc  14 c0 a0 e3                                      mov ip, #0x14
005beae0  9c 41 24 e0                                      mla r4, ip, r1, r4
005beae4  00 10 94 e5                                      ldr r1, [r4]
005beae8  00 00 51 e3                                      cmp r1, #0
005beaec  0f 00 00 0a                                      beq #0x5beb30
005beaf0  06 10 d4 e5                                      ldrb r1, [r4, #6]
005beaf4  0c 10 41 e2                                      sub r1, r1, #0xc
005beaf8  03 00 51 e3                                      cmp r1, #3
005beafc  0b 00 00 8a                                      bhi #0x5beb30
005beb00  08 c0 94 e5                                      ldr ip, [r4, #8]
005beb04  0c 00 52 e1                                      cmp r2, ip
005beb08  08 00 00 2a                                      bhs #0x5beb30
005beb0c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005beb10  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005beb14  03 00 51 e3                                      cmp r1, #3
005beb18  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
005beb1c  14 00 00 ea                                      b #0x5beb74
005beb20  04 00 00 ea                                      b #0x5beb38
005beb24  03 00 00 ea                                      b #0x5beb38
005beb28  02 00 00 ea                                      b #0x5beb38
005beb2c  01 00 00 ea                                      b #0x5beb38
005beb30  00 00 a0 e3                                      mov r0, #0
005beb34  70 80 bd e8                                      pop {r4, r5, r6, pc}
005beb38  02 20 90 e7                                      ldr r2, [r0, r2]
005beb3c  00 00 52 e3                                      cmp r2, #0
005beb40  04 10 92 15                                      ldrne r1, [r2, #4]
005beb44  01 10 81 12                                      addne r1, r1, #1
005beb48  04 10 82 15                                      strne r1, [r2, #4]
005beb4c  00 00 93 e5                                      ldr r0, [r3]
005beb50  00 20 83 e5                                      str r2, [r3]
005beb54  00 00 50 e3                                      cmp r0, #0
005beb58  05 00 00 0a                                      beq #0x5beb74
005beb5c  88 7a f5 eb                                      bl #0x31d584
005beb60  01 00 a0 e3                                      mov r0, #1
005beb64  70 80 bd e8                                      pop {r4, r5, r6, pc}
005beb68  10 10 9f e5                                      ldr r1, [pc, #0x10]
005beb6c  01 40 9c e7                                      ldr r4, [ip, r1]
005beb70  db ff ff ea                                      b #0x5beae4
005beb74  01 00 a0 e3                                      mov r0, #1
005beb78  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005beb7c  d4 5f 3d 00 14 28 00 00                          .byte 0xd4, 0x5f, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bf7dc, declared_size=192, range_size=192, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::ITexture>&) const
; decoder-mode: arm
005bf7dc  70 40 2d e9                                      push {r4, r5, r6, lr}
005bf7e0  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bf7e4  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bf7e8  a4 c0 9f e5                                      ldr ip, [pc, #0xa4]
005bf7ec  05 50 64 e0                                      rsb r5, r4, r5
005bf7f0  45 51 a0 e1                                      asr r5, r5, #2
005bf7f4  0c c0 8f e0                                      add ip, pc, ip
005bf7f8  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bf7fc  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bf800  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bf804  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bf808  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bf80c  05 00 51 e1                                      cmp r1, r5
005bf810  1c 00 00 2a                                      bhs #0x5bf888
005bf814  14 c0 a0 e3                                      mov ip, #0x14
005bf818  9c 41 24 e0                                      mla r4, ip, r1, r4
005bf81c  00 10 94 e5                                      ldr r1, [r4]
005bf820  00 00 51 e3                                      cmp r1, #0
005bf824  15 00 00 0a                                      beq #0x5bf880
005bf828  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bf82c  0c 10 41 e2                                      sub r1, r1, #0xc
005bf830  03 00 51 e3                                      cmp r1, #3
005bf834  11 00 00 8a                                      bhi #0x5bf880
005bf838  08 10 94 e5                                      ldr r1, [r4, #8]
005bf83c  01 00 52 e1                                      cmp r2, r1
005bf840  0e 00 00 2a                                      bhs #0x5bf880
005bf844  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005bf848  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bf84c  02 21 8c e0                                      add r2, ip, r2, lsl #2
005bf850  02 20 91 e7                                      ldr r2, [r1, r2]
005bf854  00 00 52 e3                                      cmp r2, #0
005bf858  04 10 92 15                                      ldrne r1, [r2, #4]
005bf85c  01 10 81 12                                      addne r1, r1, #1
005bf860  04 10 82 15                                      strne r1, [r2, #4]
005bf864  00 00 93 e5                                      ldr r0, [r3]
005bf868  00 20 83 e5                                      str r2, [r3]
005bf86c  00 00 50 e3                                      cmp r0, #0
005bf870  00 00 00 0a                                      beq #0x5bf878
005bf874  42 77 f5 eb                                      bl #0x31d584
005bf878  01 00 a0 e3                                      mov r0, #1
005bf87c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005bf880  00 00 a0 e3                                      mov r0, #0
005bf884  70 80 bd e8                                      pop {r4, r5, r6, pc}
005bf888  08 10 9f e5                                      ldr r1, [pc, #8]
005bf88c  01 40 9c e7                                      ldr r4, [ip, r1]
005bf890  e1 ff ff ea                                      b #0x5bf81c
; mapping-symbol data/literal pool
005bf894  9c 52 3d 00 14 28 00 00                          .byte 0x9c, 0x52, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c0bd4, declared_size=192, range_size=192, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, boost::intrusive_ptr<glitch::video::ITexture> const*, int)
; decoder-mode: arm
005c0bd4  70 40 2d e9                                      push {r4, r5, r6, lr}
005c0bd8  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c0bdc  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c0be0  a4 c0 9f e5                                      ldr ip, [pc, #0xa4]
005c0be4  05 50 64 e0                                      rsb r5, r4, r5
005c0be8  45 51 a0 e1                                      asr r5, r5, #2
005c0bec  0c c0 8f e0                                      add ip, pc, ip
005c0bf0  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c0bf4  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c0bf8  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c0bfc  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c0c00  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c0c04  05 00 51 e1                                      cmp r1, r5
005c0c08  1a 00 00 2a                                      bhs #0x5c0c78
005c0c0c  14 c0 a0 e3                                      mov ip, #0x14
005c0c10  9c 41 24 e0                                      mla r4, ip, r1, r4
005c0c14  00 10 94 e5                                      ldr r1, [r4]
005c0c18  00 00 51 e3                                      cmp r1, #0
005c0c1c  0f 00 00 0a                                      beq #0x5c0c60
005c0c20  06 c0 d4 e5                                      ldrb ip, [r4, #6]
005c0c24  0c c0 4c e2                                      sub ip, ip, #0xc
005c0c28  03 00 5c e3                                      cmp ip, #3
005c0c2c  0b 00 00 8a                                      bhi #0x5c0c60
005c0c30  00 00 53 e3                                      cmp r3, #0
005c0c34  12 00 00 0a                                      beq #0x5c0c84
005c0c38  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c0c3c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c0c40  01 10 80 e0                                      add r1, r0, r1
005c0c44  03 00 5c e3                                      cmp ip, #3
005c0c48  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
005c0c4c  0c 00 00 ea                                      b #0x5c0c84
005c0c50  04 00 00 ea                                      b #0x5c0c68
005c0c54  03 00 00 ea                                      b #0x5c0c68
005c0c58  02 00 00 ea                                      b #0x5c0c68
005c0c5c  01 00 00 ea                                      b #0x5c0c68
005c0c60  00 00 a0 e3                                      mov r0, #0
005c0c64  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c0c68  04 00 a0 e1                                      mov r0, r4
005c0c6c  de ea ff eb                                      bl #0x5bb7ec
005c0c70  01 00 a0 e3                                      mov r0, #1
005c0c74  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c0c78  10 10 9f e5                                      ldr r1, [pc, #0x10]
005c0c7c  01 40 9c e7                                      ldr r4, [ip, r1]
005c0c80  e3 ff ff ea                                      b #0x5c0c14
005c0c84  01 00 a0 e3                                      mov r0, #1
005c0c88  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c0c8c  a4 3e 3d 00 14 28 00 00                          .byte 0xa4, 0x3e, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c0c94, declared_size=156, range_size=156, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, boost::intrusive_ptr<glitch::video::ITexture> const*, int)
; decoder-mode: arm
005c0c94  70 40 2d e9                                      push {r4, r5, r6, lr}
005c0c98  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c0c9c  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c0ca0  80 c0 9f e5                                      ldr ip, [pc, #0x80]
005c0ca4  05 50 64 e0                                      rsb r5, r4, r5
005c0ca8  45 51 a0 e1                                      asr r5, r5, #2
005c0cac  0c c0 8f e0                                      add ip, pc, ip
005c0cb0  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c0cb4  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c0cb8  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c0cbc  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c0cc0  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c0cc4  05 00 51 e1                                      cmp r1, r5
005c0cc8  13 00 00 2a                                      bhs #0x5c0d1c
005c0ccc  14 c0 a0 e3                                      mov ip, #0x14
005c0cd0  9c 41 24 e0                                      mla r4, ip, r1, r4
005c0cd4  00 10 94 e5                                      ldr r1, [r4]
005c0cd8  00 00 51 e3                                      cmp r1, #0
005c0cdc  0c 00 00 0a                                      beq #0x5c0d14
005c0ce0  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c0ce4  0c 10 41 e2                                      sub r1, r1, #0xc
005c0ce8  03 00 51 e3                                      cmp r1, #3
005c0cec  08 00 00 8a                                      bhi #0x5c0d14
005c0cf0  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c0cf4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c0cf8  00 00 53 e3                                      cmp r3, #0
005c0cfc  04 00 a0 e1                                      mov r0, r4
005c0d00  04 30 a0 03                                      moveq r3, #4
005c0d04  01 10 8c e0                                      add r1, ip, r1
005c0d08  b7 ea ff eb                                      bl #0x5bb7ec
005c0d0c  01 00 a0 e3                                      mov r0, #1
005c0d10  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c0d14  00 00 a0 e3                                      mov r0, #0
005c0d18  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c0d1c  08 10 9f e5                                      ldr r1, [pc, #8]
005c0d20  01 40 9c e7                                      ldr r4, [ip, r1]
005c0d24  ea ff ff ea                                      b #0x5c0cd4
; mapping-symbol data/literal pool
005c0d28  e4 3d 3d 00 14 28 00 00                          .byte 0xe4, 0x3d, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c24d8, declared_size=272, range_size=272, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, boost::intrusive_ptr<glitch::video::ITexture>*, int) const
; decoder-mode: arm
005c24d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c24dc  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c24e0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c24e4  f4 c0 9f e5                                      ldr ip, [pc, #0xf4]
005c24e8  02 60 a0 e1                                      mov r6, r2
005c24ec  05 50 64 e0                                      rsb r5, r4, r5
005c24f0  45 51 a0 e1                                      asr r5, r5, #2
005c24f4  0c c0 8f e0                                      add ip, pc, ip
005c24f8  85 70 85 e0                                      add r7, r5, r5, lsl #1
005c24fc  03 80 a0 e1                                      mov r8, r3
005c2500  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c2504  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c2508  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c250c  07 51 85 e0                                      add r5, r5, r7, lsl #2
005c2510  05 00 51 e1                                      cmp r1, r5
005c2514  25 00 00 2a                                      bhs #0x5c25b0
005c2518  14 30 a0 e3                                      mov r3, #0x14
005c251c  93 41 21 e0                                      mla r1, r3, r1, r4
005c2520  00 30 91 e5                                      ldr r3, [r1]
005c2524  00 00 53 e3                                      cmp r3, #0
005c2528  1e 00 00 0a                                      beq #0x5c25a8
005c252c  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c2530  0c 30 43 e2                                      sub r3, r3, #0xc
005c2534  03 00 53 e3                                      cmp r3, #3
005c2538  1a 00 00 8a                                      bhi #0x5c25a8
005c253c  00 00 58 e3                                      cmp r8, #0
005c2540  04 00 58 13                                      cmpne r8, #4
005c2544  00 40 a0 13                                      movne r4, #0
005c2548  01 40 a0 03                                      moveq r4, #1
005c254c  1a 00 00 0a                                      beq #0x5c25bc
005c2550  08 50 91 e5                                      ldr r5, [r1, #8]
005c2554  2c 70 90 e5                                      ldr r7, [r0, #0x2c]
005c2558  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c255c  00 00 55 e3                                      cmp r5, #0
005c2560  0e 00 00 0a                                      beq #0x5c25a0
005c2564  03 70 87 e0                                      add r7, r7, r3
005c2568  04 30 97 e7                                      ldr r3, [r7, r4]
005c256c  04 40 84 e2                                      add r4, r4, #4
005c2570  00 00 53 e3                                      cmp r3, #0
005c2574  04 20 93 15                                      ldrne r2, [r3, #4]
005c2578  01 20 82 12                                      addne r2, r2, #1
005c257c  04 20 83 15                                      strne r2, [r3, #4]
005c2580  00 00 96 e5                                      ldr r0, [r6]
005c2584  00 30 86 e5                                      str r3, [r6]
005c2588  08 60 86 e0                                      add r6, r6, r8
005c258c  00 00 50 e3                                      cmp r0, #0
005c2590  00 00 00 0a                                      beq #0x5c2598
005c2594  fa 6b f5 eb                                      bl #0x31d584
005c2598  01 50 55 e2                                      subs r5, r5, #1
005c259c  f1 ff ff 1a                                      bne #0x5c2568
005c25a0  01 00 a0 e3                                      mov r0, #1
005c25a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c25a8  00 00 a0 e3                                      mov r0, #0
005c25ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c25b0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005c25b4  03 10 9c e7                                      ldr r1, [ip, r3]
005c25b8  d8 ff ff ea                                      b #0x5c2520
005c25bc  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c25c0  08 20 91 e5                                      ldr r2, [r1, #8]
005c25c4  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c25c8  06 00 a0 e1                                      mov r0, r6
005c25cc  02 21 a0 e1                                      lsl r2, r2, #2
005c25d0  03 10 8c e0                                      add r1, ip, r3
005c25d4  a3 30 f5 eb                                      bl #0x30e868
005c25d8  01 00 a0 e3                                      mov r0, #1
005c25dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005c25e0  9c 25 3d 00 14 28 00 00                          .byte 0x9c, 0x25, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c3f40, declared_size=276, range_size=276, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
005c3f40  70 40 2d e9                                      push {r4, r5, r6, lr}
005c3f44  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c3f48  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c3f4c  f8 c0 9f e5                                      ldr ip, [pc, #0xf8]
005c3f50  05 50 64 e0                                      rsb r5, r4, r5
005c3f54  45 51 a0 e1                                      asr r5, r5, #2
005c3f58  0c c0 8f e0                                      add ip, pc, ip
005c3f5c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c3f60  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c3f64  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c3f68  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c3f6c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c3f70  05 00 51 e1                                      cmp r1, r5
005c3f74  2a 00 00 2a                                      bhs #0x5c4024
005c3f78  14 c0 a0 e3                                      mov ip, #0x14
005c3f7c  9c 41 24 e0                                      mla r4, ip, r1, r4
005c3f80  00 10 94 e5                                      ldr r1, [r4]
005c3f84  00 00 51 e3                                      cmp r1, #0
005c3f88  18 00 00 0a                                      beq #0x5c3ff0
005c3f8c  00 30 93 e5                                      ldr r3, [r3]
005c3f90  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c3f94  00 00 53 e3                                      cmp r3, #0
005c3f98  26 00 00 0a                                      beq #0x5c4038
005c3f9c  38 c0 93 e5                                      ldr ip, [r3, #0x38]
005c3fa0  03 c0 0c e2                                      and ip, ip, #3
005c3fa4  0c c0 8c e2                                      add ip, ip, #0xc
005c3fa8  0c 00 51 e1                                      cmp r1, ip
005c3fac  00 c0 a0 13                                      movne ip, #0
005c3fb0  01 c0 a0 03                                      moveq ip, #1
005c3fb4  00 00 5c e3                                      cmp ip, #0
005c3fb8  0c 00 00 0a                                      beq #0x5c3ff0
005c3fbc  08 c0 94 e5                                      ldr ip, [r4, #8]
005c3fc0  0c 00 52 e1                                      cmp r2, ip
005c3fc4  09 00 00 2a                                      bhs #0x5c3ff0
005c3fc8  0c 10 41 e2                                      sub r1, r1, #0xc
005c3fcc  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c3fd0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c3fd4  03 00 51 e3                                      cmp r1, #3
005c3fd8  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
005c3fdc  13 00 00 ea                                      b #0x5c4030
005c3fe0  04 00 00 ea                                      b #0x5c3ff8
005c3fe4  03 00 00 ea                                      b #0x5c3ff8
005c3fe8  02 00 00 ea                                      b #0x5c3ff8
005c3fec  01 00 00 ea                                      b #0x5c3ff8
005c3ff0  00 00 a0 e3                                      mov r0, #0
005c3ff4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c3ff8  00 00 53 e3                                      cmp r3, #0
005c3ffc  04 10 93 15                                      ldrne r1, [r3, #4]
005c4000  01 10 81 12                                      addne r1, r1, #1
005c4004  04 10 83 15                                      strne r1, [r3, #4]
005c4008  02 00 9c e7                                      ldr r0, [ip, r2]
005c400c  02 30 8c e7                                      str r3, [ip, r2]
005c4010  00 00 50 e3                                      cmp r0, #0
005c4014  05 00 00 0a                                      beq #0x5c4030
005c4018  59 65 f5 eb                                      bl #0x31d584
005c401c  01 00 a0 e3                                      mov r0, #1
005c4020  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c4024  24 10 9f e5                                      ldr r1, [pc, #0x24]
005c4028  01 40 9c e7                                      ldr r4, [ip, r1]
005c402c  d3 ff ff ea                                      b #0x5c3f80
005c4030  01 00 a0 e3                                      mov r0, #1
005c4034  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c4038  0c c0 41 e2                                      sub ip, r1, #0xc
005c403c  03 00 5c e3                                      cmp ip, #3
005c4040  00 c0 a0 83                                      movhi ip, #0
005c4044  01 c0 a0 93                                      movls ip, #1
005c4048  d9 ff ff ea                                      b #0x5c3fb4
; mapping-symbol data/literal pool
005c404c  38 0b 3d 00 14 28 00 00                          .byte 0x38, 0x0b, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c48a0, declared_size=240, range_size=240, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
005c48a0  70 40 2d e9                                      push {r4, r5, r6, lr}
005c48a4  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c48a8  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c48ac  d4 c0 9f e5                                      ldr ip, [pc, #0xd4]
005c48b0  05 50 64 e0                                      rsb r5, r4, r5
005c48b4  45 51 a0 e1                                      asr r5, r5, #2
005c48b8  0c c0 8f e0                                      add ip, pc, ip
005c48bc  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c48c0  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c48c4  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c48c8  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c48cc  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c48d0  05 00 51 e1                                      cmp r1, r5
005c48d4  23 00 00 2a                                      bhs #0x5c4968
005c48d8  14 c0 a0 e3                                      mov ip, #0x14
005c48dc  9c 41 24 e0                                      mla r4, ip, r1, r4
005c48e0  00 10 94 e5                                      ldr r1, [r4]
005c48e4  00 00 51 e3                                      cmp r1, #0
005c48e8  1c 00 00 0a                                      beq #0x5c4960
005c48ec  00 30 93 e5                                      ldr r3, [r3]
005c48f0  06 c0 d4 e5                                      ldrb ip, [r4, #6]
005c48f4  00 00 53 e3                                      cmp r3, #0
005c48f8  1d 00 00 0a                                      beq #0x5c4974
005c48fc  38 10 93 e5                                      ldr r1, [r3, #0x38]
005c4900  03 10 01 e2                                      and r1, r1, #3
005c4904  0c 10 81 e2                                      add r1, r1, #0xc
005c4908  01 00 5c e1                                      cmp ip, r1
005c490c  00 10 a0 13                                      movne r1, #0
005c4910  01 10 a0 03                                      moveq r1, #1
005c4914  00 00 51 e3                                      cmp r1, #0
005c4918  10 00 00 0a                                      beq #0x5c4960
005c491c  08 10 94 e5                                      ldr r1, [r4, #8]
005c4920  01 00 52 e1                                      cmp r2, r1
005c4924  0d 00 00 2a                                      bhs #0x5c4960
005c4928  00 00 53 e3                                      cmp r3, #0
005c492c  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c4930  04 00 93 15                                      ldrne r0, [r3, #4]
005c4934  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005c4938  01 00 80 12                                      addne r0, r0, #1
005c493c  04 00 83 15                                      strne r0, [r3, #4]
005c4940  02 21 8c e0                                      add r2, ip, r2, lsl #2
005c4944  02 00 91 e7                                      ldr r0, [r1, r2]
005c4948  02 30 81 e7                                      str r3, [r1, r2]
005c494c  00 00 50 e3                                      cmp r0, #0
005c4950  00 00 00 0a                                      beq #0x5c4958
005c4954  0a 63 f5 eb                                      bl #0x31d584
005c4958  01 00 a0 e3                                      mov r0, #1
005c495c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c4960  00 00 a0 e3                                      mov r0, #0
005c4964  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c4968  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
005c496c  01 40 9c e7                                      ldr r4, [ip, r1]
005c4970  da ff ff ea                                      b #0x5c48e0
005c4974  0c 10 4c e2                                      sub r1, ip, #0xc
005c4978  03 00 51 e3                                      cmp r1, #3
005c497c  00 10 a0 83                                      movhi r1, #0
005c4980  01 10 a0 93                                      movls r1, #1
005c4984  e2 ff ff ea                                      b #0x5c4914
; mapping-symbol data/literal pool
005c4988  d8 01 3d 00 14 28 00 00                          .byte 0xd8, 0x01, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4fa8, declared_size=484, range_size=484, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtIN5boost13intrusive_ptrINS0_8ITextureEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::ITexture> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture> >(unsigned short, boost::intrusive_ptr<glitch::video::ITexture>*, int) const
; decoder-mode: arm
005c4fa8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005c4fac  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4fb0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4fb4  c8 c1 9f e5                                      ldr ip, [pc, #0x1c8]
005c4fb8  02 60 a0 e1                                      mov r6, r2
005c4fbc  05 50 64 e0                                      rsb r5, r4, r5
005c4fc0  45 51 a0 e1                                      asr r5, r5, #2
005c4fc4  0c c0 8f e0                                      add ip, pc, ip
005c4fc8  85 70 85 e0                                      add r7, r5, r5, lsl #1
005c4fcc  03 80 a0 e1                                      mov r8, r3
005c4fd0  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c4fd4  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c4fd8  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c4fdc  07 51 85 e0                                      add r5, r5, r7, lsl #2
005c4fe0  05 00 51 e1                                      cmp r1, r5
005c4fe4  2a 00 00 2a                                      bhs #0x5c5094
005c4fe8  14 30 a0 e3                                      mov r3, #0x14
005c4fec  93 41 24 e0                                      mla r4, r3, r1, r4
005c4ff0  00 30 94 e5                                      ldr r3, [r4]
005c4ff4  00 00 53 e3                                      cmp r3, #0
005c4ff8  0f 00 00 0a                                      beq #0x5c503c
005c4ffc  06 30 d4 e5                                      ldrb r3, [r4, #6]
005c5000  0c 30 43 e2                                      sub r3, r3, #0xc
005c5004  03 00 53 e3                                      cmp r3, #3
005c5008  0b 00 00 8a                                      bhi #0x5c503c
005c500c  00 00 58 e3                                      cmp r8, #0
005c5010  1d 00 00 0a                                      beq #0x5c508c
005c5014  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c5018  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c501c  02 50 85 e0                                      add r5, r5, r2
005c5020  03 00 53 e3                                      cmp r3, #3
005c5024  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005c5028  17 00 00 ea                                      b #0x5c508c
005c502c  2e 00 00 ea                                      b #0x5c50ec
005c5030  40 00 00 ea                                      b #0x5c5138
005c5034  02 00 00 ea                                      b #0x5c5044
005c5038  18 00 00 ea                                      b #0x5c50a0
005c503c  00 00 a0 e3                                      mov r0, #0
005c5040  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c5044  08 40 94 e5                                      ldr r4, [r4, #8]
005c5048  00 00 54 e3                                      cmp r4, #0
005c504c  0e 00 00 0a                                      beq #0x5c508c
005c5050  00 70 a0 e3                                      mov r7, #0
005c5054  07 30 95 e7                                      ldr r3, [r5, r7]
005c5058  04 70 87 e2                                      add r7, r7, #4
005c505c  00 00 53 e3                                      cmp r3, #0
005c5060  04 20 93 15                                      ldrne r2, [r3, #4]
005c5064  01 20 82 12                                      addne r2, r2, #1
005c5068  04 20 83 15                                      strne r2, [r3, #4]
005c506c  00 00 96 e5                                      ldr r0, [r6]
005c5070  00 30 86 e5                                      str r3, [r6]
005c5074  08 60 86 e0                                      add r6, r6, r8
005c5078  00 00 50 e3                                      cmp r0, #0
005c507c  00 00 00 0a                                      beq #0x5c5084
005c5080  3f 61 f5 eb                                      bl #0x31d584
005c5084  01 40 54 e2                                      subs r4, r4, #1
005c5088  f1 ff ff 1a                                      bne #0x5c5054
005c508c  01 00 a0 e3                                      mov r0, #1
005c5090  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005c5094  ec 30 9f e5                                      ldr r3, [pc, #0xec]
005c5098  03 40 9c e7                                      ldr r4, [ip, r3]
005c509c  d3 ff ff ea                                      b #0x5c4ff0
005c50a0  08 40 94 e5                                      ldr r4, [r4, #8]
005c50a4  00 00 54 e3                                      cmp r4, #0
005c50a8  f7 ff ff 0a                                      beq #0x5c508c
005c50ac  00 70 a0 e3                                      mov r7, #0
005c50b0  07 30 95 e7                                      ldr r3, [r5, r7]
005c50b4  04 70 87 e2                                      add r7, r7, #4
005c50b8  00 00 53 e3                                      cmp r3, #0
005c50bc  04 20 93 15                                      ldrne r2, [r3, #4]
005c50c0  01 20 82 12                                      addne r2, r2, #1
005c50c4  04 20 83 15                                      strne r2, [r3, #4]
005c50c8  00 00 96 e5                                      ldr r0, [r6]
005c50cc  00 30 86 e5                                      str r3, [r6]
005c50d0  08 60 86 e0                                      add r6, r6, r8
005c50d4  00 00 50 e3                                      cmp r0, #0
005c50d8  00 00 00 0a                                      beq #0x5c50e0
005c50dc  28 61 f5 eb                                      bl #0x31d584
005c50e0  01 40 54 e2                                      subs r4, r4, #1
005c50e4  f1 ff ff 1a                                      bne #0x5c50b0
005c50e8  e7 ff ff ea                                      b #0x5c508c
005c50ec  08 40 94 e5                                      ldr r4, [r4, #8]
005c50f0  00 00 54 e3                                      cmp r4, #0
005c50f4  e4 ff ff 0a                                      beq #0x5c508c
005c50f8  00 70 a0 e3                                      mov r7, #0
005c50fc  07 30 95 e7                                      ldr r3, [r5, r7]
005c5100  04 70 87 e2                                      add r7, r7, #4
005c5104  00 00 53 e3                                      cmp r3, #0
005c5108  04 20 93 15                                      ldrne r2, [r3, #4]
005c510c  01 20 82 12                                      addne r2, r2, #1
005c5110  04 20 83 15                                      strne r2, [r3, #4]
005c5114  00 00 96 e5                                      ldr r0, [r6]
005c5118  00 30 86 e5                                      str r3, [r6]
005c511c  08 60 86 e0                                      add r6, r6, r8
005c5120  00 00 50 e3                                      cmp r0, #0
005c5124  00 00 00 0a                                      beq #0x5c512c
005c5128  15 61 f5 eb                                      bl #0x31d584
005c512c  01 40 54 e2                                      subs r4, r4, #1
005c5130  f1 ff ff 1a                                      bne #0x5c50fc
005c5134  d4 ff ff ea                                      b #0x5c508c
005c5138  08 40 94 e5                                      ldr r4, [r4, #8]
005c513c  00 00 54 e3                                      cmp r4, #0
005c5140  d1 ff ff 0a                                      beq #0x5c508c
005c5144  00 70 a0 e3                                      mov r7, #0
005c5148  07 30 95 e7                                      ldr r3, [r5, r7]
005c514c  04 70 87 e2                                      add r7, r7, #4
005c5150  00 00 53 e3                                      cmp r3, #0
005c5154  04 20 93 15                                      ldrne r2, [r3, #4]
005c5158  01 20 82 12                                      addne r2, r2, #1
005c515c  04 20 83 15                                      strne r2, [r3, #4]
005c5160  00 00 96 e5                                      ldr r0, [r6]
005c5164  00 30 86 e5                                      str r3, [r6]
005c5168  08 60 86 e0                                      add r6, r6, r8
005c516c  00 00 50 e3                                      cmp r0, #0
005c5170  00 00 00 0a                                      beq #0x5c5178
005c5174  02 61 f5 eb                                      bl #0x31d584
005c5178  01 40 54 e2                                      subs r4, r4, #1
005c517c  f1 ff ff 1a                                      bne #0x5c5148
005c5180  c1 ff ff ea                                      b #0x5c508c
; mapping-symbol data/literal pool
005c5184  cc fa 3c 00 14 28 00 00                          .byte 0xcc, 0xfa, 0x3c, 0x00, 0x14, 0x28, 0x00, 0x00
