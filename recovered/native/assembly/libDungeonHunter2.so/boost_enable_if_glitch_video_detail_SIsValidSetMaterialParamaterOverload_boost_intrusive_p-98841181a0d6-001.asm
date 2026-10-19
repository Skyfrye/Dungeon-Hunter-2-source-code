; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005be68c, declared_size=264, range_size=264, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
005be68c  70 40 2d e9                                      push {r4, r5, r6, lr}
005be690  18 40 90 e5                                      ldr r4, [r0, #0x18]
005be694  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005be698  e8 c0 9f e5                                      ldr ip, [pc, #0xe8]
005be69c  05 50 64 e0                                      rsb r5, r4, r5
005be6a0  45 51 a0 e1                                      asr r5, r5, #2
005be6a4  0c c0 8f e0                                      add ip, pc, ip
005be6a8  85 60 85 e0                                      add r6, r5, r5, lsl #1
005be6ac  06 62 86 e0                                      add r6, r6, r6, lsl #4
005be6b0  06 64 86 e0                                      add r6, r6, r6, lsl #8
005be6b4  06 68 86 e0                                      add r6, r6, r6, lsl #16
005be6b8  06 51 85 e0                                      add r5, r5, r6, lsl #2
005be6bc  05 00 51 e1                                      cmp r1, r5
005be6c0  09 00 00 2a                                      bhs #0x5be6ec
005be6c4  14 50 a0 e3                                      mov r5, #0x14
005be6c8  95 41 24 e0                                      mla r4, r5, r1, r4
005be6cc  00 10 94 e5                                      ldr r1, [r4]
005be6d0  00 00 51 e3                                      cmp r1, #0
005be6d4  02 00 00 0a                                      beq #0x5be6e4
005be6d8  06 10 d4 e5                                      ldrb r1, [r4, #6]
005be6dc  12 00 51 e3                                      cmp r1, #0x12
005be6e0  04 00 00 0a                                      beq #0x5be6f8
005be6e4  00 00 a0 e3                                      mov r0, #0
005be6e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005be6ec  98 10 9f e5                                      ldr r1, [pc, #0x98]
005be6f0  01 40 9c e7                                      ldr r4, [ip, r1]
005be6f4  f4 ff ff ea                                      b #0x5be6cc
005be6f8  08 10 94 e5                                      ldr r1, [r4, #8]
005be6fc  01 00 52 e1                                      cmp r2, r1
005be700  f7 ff ff 2a                                      bhs #0x5be6e4
005be704  00 30 93 e5                                      ldr r3, [r3]
005be708  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005be70c  0c 40 94 e5                                      ldr r4, [r4, #0xc]
005be710  00 00 53 e3                                      cmp r3, #0
005be714  00 00 93 15                                      ldrne r0, [r3]
005be718  02 21 84 e0                                      add r2, r4, r2, lsl #2
005be71c  01 00 80 12                                      addne r0, r0, #1
005be720  00 00 83 15                                      strne r0, [r3]
005be724  02 00 91 e7                                      ldr r0, [r1, r2]
005be728  02 30 81 e7                                      str r3, [r1, r2]
005be72c  00 00 50 e3                                      cmp r0, #0
005be730  12 00 00 0a                                      beq #0x5be780
005be734  00 30 90 e5                                      ldr r3, [r0]
005be738  01 30 43 e2                                      sub r3, r3, #1
005be73c  00 00 53 e3                                      cmp r3, #0
005be740  00 30 80 e5                                      str r3, [r0]
005be744  0d 00 00 1a                                      bne #0x5be780
005be748  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005be74c  00 00 53 e3                                      cmp r3, #0
005be750  05 00 00 1a                                      bne #0x5be76c
005be754  34 30 9f e5                                      ldr r3, [pc, #0x34]
005be758  50 20 90 e5                                      ldr r2, [r0, #0x50]
005be75c  03 30 9c e7                                      ldr r3, [ip, r3]
005be760  00 10 93 e5                                      ldr r1, [r3]
005be764  00 10 82 e5                                      str r1, [r2]
005be768  00 20 83 e5                                      str r2, [r3]
005be76c  00 30 a0 e3                                      mov r3, #0
005be770  50 30 80 e5                                      str r3, [r0, #0x50]
005be774  cd 3e f5 eb                                      bl #0x30e2b0
005be778  01 00 a0 e3                                      mov r0, #1
005be77c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005be780  01 00 a0 e3                                      mov r0, #1
005be784  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005be788  ec 63 3d 00 14 28 00 00 c0 3c 00 00              .byte 0xec, 0x63, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005c2198, declared_size=336, range_size=336, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, boost::intrusive_ptr<glitch::video::CLight>*, int) const
; decoder-mode: arm
005c2198  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005c219c  18 c0 90 e5                                      ldr ip, [r0, #0x18]
005c21a0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c21a4  30 41 9f e5                                      ldr r4, [pc, #0x130]
005c21a8  02 60 a0 e1                                      mov r6, r2
005c21ac  05 50 6c e0                                      rsb r5, ip, r5
005c21b0  45 51 a0 e1                                      asr r5, r5, #2
005c21b4  04 40 8f e0                                      add r4, pc, r4
005c21b8  85 70 85 e0                                      add r7, r5, r5, lsl #1
005c21bc  03 80 a0 e1                                      mov r8, r3
005c21c0  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c21c4  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c21c8  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c21cc  07 51 85 e0                                      add r5, r5, r7, lsl #2
005c21d0  05 00 51 e1                                      cmp r1, r5
005c21d4  09 00 00 2a                                      bhs #0x5c2200
005c21d8  14 30 a0 e3                                      mov r3, #0x14
005c21dc  93 c1 2c e0                                      mla ip, r3, r1, ip
005c21e0  00 30 9c e5                                      ldr r3, [ip]
005c21e4  00 00 53 e3                                      cmp r3, #0
005c21e8  02 00 00 0a                                      beq #0x5c21f8
005c21ec  06 30 dc e5                                      ldrb r3, [ip, #6]
005c21f0  12 00 53 e3                                      cmp r3, #0x12
005c21f4  04 00 00 0a                                      beq #0x5c220c
005c21f8  00 00 a0 e3                                      mov r0, #0
005c21fc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005c2200  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
005c2204  03 c0 94 e7                                      ldr ip, [r4, r3]
005c2208  f4 ff ff ea                                      b #0x5c21e0
005c220c  00 00 58 e3                                      cmp r8, #0
005c2210  04 00 58 13                                      cmpne r8, #4
005c2214  00 70 a0 13                                      movne r7, #0
005c2218  01 70 a0 03                                      moveq r7, #1
005c221c  25 00 00 0a                                      beq #0x5c22b8
005c2220  08 50 9c e5                                      ldr r5, [ip, #8]
005c2224  2c a0 90 e5                                      ldr sl, [r0, #0x2c]
005c2228  0c 30 9c e5                                      ldr r3, [ip, #0xc]
005c222c  00 00 55 e3                                      cmp r5, #0
005c2230  1e 00 00 0a                                      beq #0x5c22b0
005c2234  a8 b0 9f e5                                      ldr fp, [pc, #0xa8]
005c2238  03 a0 8a e0                                      add sl, sl, r3
005c223c  07 90 a0 e1                                      mov sb, r7
005c2240  07 30 9a e7                                      ldr r3, [sl, r7]
005c2244  04 70 87 e2                                      add r7, r7, #4
005c2248  00 00 53 e3                                      cmp r3, #0
005c224c  00 20 93 15                                      ldrne r2, [r3]
005c2250  01 20 82 12                                      addne r2, r2, #1
005c2254  00 20 83 15                                      strne r2, [r3]
005c2258  00 20 96 e5                                      ldr r2, [r6]
005c225c  00 30 86 e5                                      str r3, [r6]
005c2260  08 60 86 e0                                      add r6, r6, r8
005c2264  00 00 52 e3                                      cmp r2, #0
005c2268  02 00 a0 e1                                      mov r0, r2
005c226c  0d 00 00 0a                                      beq #0x5c22a8
005c2270  00 30 92 e5                                      ldr r3, [r2]
005c2274  01 30 43 e2                                      sub r3, r3, #1
005c2278  00 00 53 e3                                      cmp r3, #0
005c227c  00 30 82 e5                                      str r3, [r2]
005c2280  08 00 00 1a                                      bne #0x5c22a8
005c2284  54 30 d2 e5                                      ldrb r3, [r2, #0x54]
005c2288  00 00 53 e3                                      cmp r3, #0
005c228c  0b 30 94 07                                      ldreq r3, [r4, fp]
005c2290  50 10 92 05                                      ldreq r1, [r2, #0x50]
005c2294  00 c0 93 05                                      ldreq ip, [r3]
005c2298  00 c0 81 05                                      streq ip, [r1]
005c229c  00 10 83 05                                      streq r1, [r3]
005c22a0  50 90 82 e5                                      str sb, [r2, #0x50]
005c22a4  01 30 f5 eb                                      bl #0x30e2b0
005c22a8  01 50 55 e2                                      subs r5, r5, #1
005c22ac  e3 ff ff 1a                                      bne #0x5c2240
005c22b0  01 00 a0 e3                                      mov r0, #1
005c22b4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005c22b8  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c22bc  0c 30 9c e5                                      ldr r3, [ip, #0xc]
005c22c0  08 20 9c e5                                      ldr r2, [ip, #8]
005c22c4  06 00 a0 e1                                      mov r0, r6
005c22c8  03 10 81 e0                                      add r1, r1, r3
005c22cc  02 21 a0 e1                                      lsl r2, r2, #2
005c22d0  64 31 f5 eb                                      bl #0x30e868
005c22d4  01 00 a0 e3                                      mov r0, #1
005c22d8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005c22dc  dc 28 3d 00 14 28 00 00 c0 3c 00 00              .byte 0xdc, 0x28, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005c518c, declared_size=324, range_size=324, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, boost::intrusive_ptr<glitch::video::CLight>*, int) const
; decoder-mode: arm
005c518c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005c5190  18 c0 90 e5                                      ldr ip, [r0, #0x18]
005c5194  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c5198  20 41 9f e5                                      ldr r4, [pc, #0x120]
005c519c  02 60 a0 e1                                      mov r6, r2
005c51a0  05 50 6c e0                                      rsb r5, ip, r5
005c51a4  45 51 a0 e1                                      asr r5, r5, #2
005c51a8  04 40 8f e0                                      add r4, pc, r4
005c51ac  85 70 85 e0                                      add r7, r5, r5, lsl #1
005c51b0  03 80 a0 e1                                      mov r8, r3
005c51b4  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c51b8  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c51bc  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c51c0  07 51 85 e0                                      add r5, r5, r7, lsl #2
005c51c4  05 00 51 e1                                      cmp r1, r5
005c51c8  14 00 00 2a                                      bhs #0x5c5220
005c51cc  14 30 a0 e3                                      mov r3, #0x14
005c51d0  93 c1 2c e0                                      mla ip, r3, r1, ip
005c51d4  00 30 9c e5                                      ldr r3, [ip]
005c51d8  00 00 53 e3                                      cmp r3, #0
005c51dc  0d 00 00 0a                                      beq #0x5c5218
005c51e0  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
005c51e4  06 30 dc e5                                      ldrb r3, [ip, #6]
005c51e8  02 20 94 e7                                      ldr r2, [r4, r2]
005c51ec  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c51f0  01 07 12 e3                                      tst r2, #0x40000
005c51f4  07 00 00 0a                                      beq #0x5c5218
005c51f8  00 00 58 e3                                      cmp r8, #0
005c51fc  03 00 00 0a                                      beq #0x5c5210
005c5200  12 00 53 e3                                      cmp r3, #0x12
005c5204  2c a0 90 e5                                      ldr sl, [r0, #0x2c]
005c5208  0c 30 9c e5                                      ldr r3, [ip, #0xc]
005c520c  06 00 00 0a                                      beq #0x5c522c
005c5210  01 00 a0 e3                                      mov r0, #1
005c5214  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005c5218  00 00 a0 e3                                      mov r0, #0
005c521c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005c5220  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
005c5224  03 c0 94 e7                                      ldr ip, [r4, r3]
005c5228  e9 ff ff ea                                      b #0x5c51d4
005c522c  08 50 9c e5                                      ldr r5, [ip, #8]
005c5230  00 00 55 e3                                      cmp r5, #0
005c5234  f5 ff ff 0a                                      beq #0x5c5210
005c5238  8c b0 9f e5                                      ldr fp, [pc, #0x8c]
005c523c  00 70 a0 e3                                      mov r7, #0
005c5240  03 a0 8a e0                                      add sl, sl, r3
005c5244  07 90 a0 e1                                      mov sb, r7
005c5248  07 30 9a e7                                      ldr r3, [sl, r7]
005c524c  04 70 87 e2                                      add r7, r7, #4
005c5250  00 00 53 e3                                      cmp r3, #0
005c5254  00 20 93 15                                      ldrne r2, [r3]
005c5258  01 20 82 12                                      addne r2, r2, #1
005c525c  00 20 83 15                                      strne r2, [r3]
005c5260  00 20 96 e5                                      ldr r2, [r6]
005c5264  00 30 86 e5                                      str r3, [r6]
005c5268  08 60 86 e0                                      add r6, r6, r8
005c526c  00 00 52 e3                                      cmp r2, #0
005c5270  02 00 a0 e1                                      mov r0, r2
005c5274  0d 00 00 0a                                      beq #0x5c52b0
005c5278  00 30 92 e5                                      ldr r3, [r2]
005c527c  01 30 43 e2                                      sub r3, r3, #1
005c5280  00 00 53 e3                                      cmp r3, #0
005c5284  00 30 82 e5                                      str r3, [r2]
005c5288  08 00 00 1a                                      bne #0x5c52b0
005c528c  54 30 d2 e5                                      ldrb r3, [r2, #0x54]
005c5290  00 00 53 e3                                      cmp r3, #0
005c5294  0b 30 94 07                                      ldreq r3, [r4, fp]
005c5298  50 10 92 05                                      ldreq r1, [r2, #0x50]
005c529c  00 c0 93 05                                      ldreq ip, [r3]
005c52a0  00 c0 81 05                                      streq ip, [r1]
005c52a4  00 10 83 05                                      streq r1, [r3]
005c52a8  50 90 82 e5                                      str sb, [r2, #0x50]
005c52ac  ff 23 f5 eb                                      bl #0x30e2b0
005c52b0  01 50 55 e2                                      subs r5, r5, #1
005c52b4  e3 ff ff 1a                                      bne #0x5c5248
005c52b8  01 00 a0 e3                                      mov r0, #1
005c52bc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005c52c0  e8 f8 3c 00 a4 2c 00 00 14 28 00 00 c0 3c 00 00  .byte 0xe8, 0xf8, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005c540c, declared_size=324, range_size=324, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, boost::intrusive_ptr<glitch::video::CLight> const*, int)
; decoder-mode: arm
005c540c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005c5410  18 c0 90 e5                                      ldr ip, [r0, #0x18]
005c5414  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c5418  20 41 9f e5                                      ldr r4, [pc, #0x120]
005c541c  02 60 a0 e1                                      mov r6, r2
005c5420  05 50 6c e0                                      rsb r5, ip, r5
005c5424  45 51 a0 e1                                      asr r5, r5, #2
005c5428  04 40 8f e0                                      add r4, pc, r4
005c542c  85 70 85 e0                                      add r7, r5, r5, lsl #1
005c5430  03 80 a0 e1                                      mov r8, r3
005c5434  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c5438  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c543c  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c5440  07 51 85 e0                                      add r5, r5, r7, lsl #2
005c5444  05 00 51 e1                                      cmp r1, r5
005c5448  14 00 00 2a                                      bhs #0x5c54a0
005c544c  14 30 a0 e3                                      mov r3, #0x14
005c5450  93 c1 2c e0                                      mla ip, r3, r1, ip
005c5454  00 30 9c e5                                      ldr r3, [ip]
005c5458  00 00 53 e3                                      cmp r3, #0
005c545c  0d 00 00 0a                                      beq #0x5c5498
005c5460  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
005c5464  06 30 dc e5                                      ldrb r3, [ip, #6]
005c5468  02 20 94 e7                                      ldr r2, [r4, r2]
005c546c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c5470  01 07 12 e3                                      tst r2, #0x40000
005c5474  07 00 00 0a                                      beq #0x5c5498
005c5478  00 00 58 e3                                      cmp r8, #0
005c547c  03 00 00 0a                                      beq #0x5c5490
005c5480  12 00 53 e3                                      cmp r3, #0x12
005c5484  2c a0 90 e5                                      ldr sl, [r0, #0x2c]
005c5488  0c 30 9c e5                                      ldr r3, [ip, #0xc]
005c548c  06 00 00 0a                                      beq #0x5c54ac
005c5490  01 00 a0 e3                                      mov r0, #1
005c5494  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005c5498  00 00 a0 e3                                      mov r0, #0
005c549c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005c54a0  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
005c54a4  03 c0 94 e7                                      ldr ip, [r4, r3]
005c54a8  e9 ff ff ea                                      b #0x5c5454
005c54ac  08 70 9c e5                                      ldr r7, [ip, #8]
005c54b0  00 00 57 e3                                      cmp r7, #0
005c54b4  f5 ff ff 0a                                      beq #0x5c5490
005c54b8  8c b0 9f e5                                      ldr fp, [pc, #0x8c]
005c54bc  00 50 a0 e3                                      mov r5, #0
005c54c0  03 a0 8a e0                                      add sl, sl, r3
005c54c4  05 90 a0 e1                                      mov sb, r5
005c54c8  00 30 96 e5                                      ldr r3, [r6]
005c54cc  08 60 86 e0                                      add r6, r6, r8
005c54d0  00 00 53 e3                                      cmp r3, #0
005c54d4  00 20 93 15                                      ldrne r2, [r3]
005c54d8  01 20 82 12                                      addne r2, r2, #1
005c54dc  00 20 83 15                                      strne r2, [r3]
005c54e0  05 20 9a e7                                      ldr r2, [sl, r5]
005c54e4  05 30 8a e7                                      str r3, [sl, r5]
005c54e8  04 50 85 e2                                      add r5, r5, #4
005c54ec  00 00 52 e3                                      cmp r2, #0
005c54f0  02 00 a0 e1                                      mov r0, r2
005c54f4  0d 00 00 0a                                      beq #0x5c5530
005c54f8  00 30 92 e5                                      ldr r3, [r2]
005c54fc  01 30 43 e2                                      sub r3, r3, #1
005c5500  00 00 53 e3                                      cmp r3, #0
005c5504  00 30 82 e5                                      str r3, [r2]
005c5508  08 00 00 1a                                      bne #0x5c5530
005c550c  54 30 d2 e5                                      ldrb r3, [r2, #0x54]
005c5510  00 00 53 e3                                      cmp r3, #0
005c5514  0b 30 94 07                                      ldreq r3, [r4, fp]
005c5518  50 10 92 05                                      ldreq r1, [r2, #0x50]
005c551c  00 c0 93 05                                      ldreq ip, [r3]
005c5520  00 c0 81 05                                      streq ip, [r1]
005c5524  00 10 83 05                                      streq r1, [r3]
005c5528  50 90 82 e5                                      str sb, [r2, #0x50]
005c552c  5f 23 f5 eb                                      bl #0x30e2b0
005c5530  01 70 57 e2                                      subs r7, r7, #1
005c5534  e3 ff ff 1a                                      bne #0x5c54c8
005c5538  01 00 a0 e3                                      mov r0, #1
005c553c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005c5540  68 f6 3c 00 a4 2c 00 00 14 28 00 00 c0 3c 00 00  .byte 0x68, 0xf6, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005c568c, declared_size=292, range_size=292, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, boost::intrusive_ptr<glitch::video::CLight> const*, int)
; decoder-mode: arm
005c568c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005c5690  18 c0 90 e5                                      ldr ip, [r0, #0x18]
005c5694  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c5698  04 41 9f e5                                      ldr r4, [pc, #0x104]
005c569c  02 60 a0 e1                                      mov r6, r2
005c56a0  05 50 6c e0                                      rsb r5, ip, r5
005c56a4  45 51 a0 e1                                      asr r5, r5, #2
005c56a8  04 40 8f e0                                      add r4, pc, r4
005c56ac  85 70 85 e0                                      add r7, r5, r5, lsl #1
005c56b0  07 72 87 e0                                      add r7, r7, r7, lsl #4
005c56b4  07 74 87 e0                                      add r7, r7, r7, lsl #8
005c56b8  07 78 87 e0                                      add r7, r7, r7, lsl #16
005c56bc  07 51 85 e0                                      add r5, r5, r7, lsl #2
005c56c0  05 00 51 e1                                      cmp r1, r5
005c56c4  09 00 00 2a                                      bhs #0x5c56f0
005c56c8  14 20 a0 e3                                      mov r2, #0x14
005c56cc  92 c1 2c e0                                      mla ip, r2, r1, ip
005c56d0  00 20 9c e5                                      ldr r2, [ip]
005c56d4  00 00 52 e3                                      cmp r2, #0
005c56d8  02 00 00 0a                                      beq #0x5c56e8
005c56dc  06 20 dc e5                                      ldrb r2, [ip, #6]
005c56e0  12 00 52 e3                                      cmp r2, #0x12
005c56e4  04 00 00 0a                                      beq #0x5c56fc
005c56e8  00 00 a0 e3                                      mov r0, #0
005c56ec  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005c56f0  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
005c56f4  02 c0 94 e7                                      ldr ip, [r4, r2]
005c56f8  f4 ff ff ea                                      b #0x5c56d0
005c56fc  08 70 9c e5                                      ldr r7, [ip, #8]
005c5700  00 00 53 e3                                      cmp r3, #0
005c5704  03 a0 a0 11                                      movne sl, r3
005c5708  04 a0 a0 03                                      moveq sl, #4
005c570c  00 00 57 e3                                      cmp r7, #0
005c5710  2c 80 90 e5                                      ldr r8, [r0, #0x2c]
005c5714  0c 30 9c e5                                      ldr r3, [ip, #0xc]
005c5718  1f 00 00 0a                                      beq #0x5c579c
005c571c  88 b0 9f e5                                      ldr fp, [pc, #0x88]
005c5720  00 50 a0 e3                                      mov r5, #0
005c5724  03 80 88 e0                                      add r8, r8, r3
005c5728  05 90 a0 e1                                      mov sb, r5
005c572c  00 30 96 e5                                      ldr r3, [r6]
005c5730  0a 60 86 e0                                      add r6, r6, sl
005c5734  00 00 53 e3                                      cmp r3, #0
005c5738  00 20 93 15                                      ldrne r2, [r3]
005c573c  01 20 82 12                                      addne r2, r2, #1
005c5740  00 20 83 15                                      strne r2, [r3]
005c5744  05 20 98 e7                                      ldr r2, [r8, r5]
005c5748  05 30 88 e7                                      str r3, [r8, r5]
005c574c  04 50 85 e2                                      add r5, r5, #4
005c5750  00 00 52 e3                                      cmp r2, #0
005c5754  02 00 a0 e1                                      mov r0, r2
005c5758  0d 00 00 0a                                      beq #0x5c5794
005c575c  00 10 92 e5                                      ldr r1, [r2]
005c5760  01 10 41 e2                                      sub r1, r1, #1
005c5764  00 00 51 e3                                      cmp r1, #0
005c5768  00 10 82 e5                                      str r1, [r2]
005c576c  08 00 00 1a                                      bne #0x5c5794
005c5770  54 30 d2 e5                                      ldrb r3, [r2, #0x54]
005c5774  00 00 53 e3                                      cmp r3, #0
005c5778  0b 30 94 07                                      ldreq r3, [r4, fp]
005c577c  50 10 92 05                                      ldreq r1, [r2, #0x50]
005c5780  00 c0 93 05                                      ldreq ip, [r3]
005c5784  00 c0 81 05                                      streq ip, [r1]
005c5788  00 10 83 05                                      streq r1, [r3]
005c578c  50 90 82 e5                                      str sb, [r2, #0x50]
005c5790  c6 22 f5 eb                                      bl #0x30e2b0
005c5794  01 70 57 e2                                      subs r7, r7, #1
005c5798  e3 ff ff 1a                                      bne #0x5c572c
005c579c  01 00 a0 e3                                      mov r0, #1
005c57a0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005c57a4  e8 f3 3c 00 14 28 00 00 c0 3c 00 00              .byte 0xe8, 0xf3, 0x3c, 0x00, 0x14, 0x28, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005c58ec, declared_size=188, range_size=188, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::CLight>&) const
; decoder-mode: arm
005c58ec  70 40 2d e9                                      push {r4, r5, r6, lr}
005c58f0  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c58f4  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c58f8  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
005c58fc  05 50 64 e0                                      rsb r5, r4, r5
005c5900  45 51 a0 e1                                      asr r5, r5, #2
005c5904  0c c0 8f e0                                      add ip, pc, ip
005c5908  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c590c  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c5910  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c5914  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c5918  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c591c  05 00 51 e1                                      cmp r1, r5
005c5920  1a 00 00 2a                                      bhs #0x5c5990
005c5924  14 50 a0 e3                                      mov r5, #0x14
005c5928  95 41 24 e0                                      mla r4, r5, r1, r4
005c592c  00 10 94 e5                                      ldr r1, [r4]
005c5930  00 00 51 e3                                      cmp r1, #0
005c5934  0e 00 00 0a                                      beq #0x5c5974
005c5938  60 50 9f e5                                      ldr r5, [pc, #0x60]
005c593c  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c5940  05 c0 9c e7                                      ldr ip, [ip, r5]
005c5944  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c5948  01 07 1c e3                                      tst ip, #0x40000
005c594c  08 00 00 0a                                      beq #0x5c5974
005c5950  08 c0 94 e5                                      ldr ip, [r4, #8]
005c5954  0c 00 52 e1                                      cmp r2, ip
005c5958  05 00 00 2a                                      bhs #0x5c5974
005c595c  12 00 51 e3                                      cmp r1, #0x12
005c5960  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c5964  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c5968  03 00 00 0a                                      beq #0x5c597c
005c596c  01 00 a0 e3                                      mov r0, #1
005c5970  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c5974  00 00 a0 e3                                      mov r0, #0
005c5978  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c597c  02 10 81 e0                                      add r1, r1, r2
005c5980  03 00 a0 e1                                      mov r0, r3
005c5984  31 d7 ff eb                                      bl #0x5bb650
005c5988  01 00 a0 e3                                      mov r0, #1
005c598c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c5990  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005c5994  01 40 9c e7                                      ldr r4, [ip, r1]
005c5998  e3 ff ff ea                                      b #0x5c592c
; mapping-symbol data/literal pool
005c599c  8c f1 3c 00 a4 2c 00 00 14 28 00 00              .byte 0x8c, 0xf1, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c5a40, declared_size=264, range_size=264, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::CLight>&) const
; decoder-mode: arm
005c5a40  70 40 2d e9                                      push {r4, r5, r6, lr}
005c5a44  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c5a48  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c5a4c  e8 c0 9f e5                                      ldr ip, [pc, #0xe8]
005c5a50  05 50 64 e0                                      rsb r5, r4, r5
005c5a54  45 51 a0 e1                                      asr r5, r5, #2
005c5a58  0c c0 8f e0                                      add ip, pc, ip
005c5a5c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c5a60  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c5a64  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c5a68  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c5a6c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c5a70  05 00 51 e1                                      cmp r1, r5
005c5a74  09 00 00 2a                                      bhs #0x5c5aa0
005c5a78  14 50 a0 e3                                      mov r5, #0x14
005c5a7c  95 41 24 e0                                      mla r4, r5, r1, r4
005c5a80  00 10 94 e5                                      ldr r1, [r4]
005c5a84  00 00 51 e3                                      cmp r1, #0
005c5a88  02 00 00 0a                                      beq #0x5c5a98
005c5a8c  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c5a90  12 00 51 e3                                      cmp r1, #0x12
005c5a94  04 00 00 0a                                      beq #0x5c5aac
005c5a98  00 00 a0 e3                                      mov r0, #0
005c5a9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c5aa0  98 10 9f e5                                      ldr r1, [pc, #0x98]
005c5aa4  01 40 9c e7                                      ldr r4, [ip, r1]
005c5aa8  f4 ff ff ea                                      b #0x5c5a80
005c5aac  08 10 94 e5                                      ldr r1, [r4, #8]
005c5ab0  01 00 52 e1                                      cmp r2, r1
005c5ab4  f7 ff ff 2a                                      bhs #0x5c5a98
005c5ab8  0c 40 94 e5                                      ldr r4, [r4, #0xc]
005c5abc  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c5ac0  02 21 84 e0                                      add r2, r4, r2, lsl #2
005c5ac4  02 20 91 e7                                      ldr r2, [r1, r2]
005c5ac8  00 00 52 e3                                      cmp r2, #0
005c5acc  00 10 92 15                                      ldrne r1, [r2]
005c5ad0  01 10 81 12                                      addne r1, r1, #1
005c5ad4  00 10 82 15                                      strne r1, [r2]
005c5ad8  00 00 93 e5                                      ldr r0, [r3]
005c5adc  00 20 83 e5                                      str r2, [r3]
005c5ae0  00 00 50 e3                                      cmp r0, #0
005c5ae4  12 00 00 0a                                      beq #0x5c5b34
005c5ae8  00 30 90 e5                                      ldr r3, [r0]
005c5aec  01 30 43 e2                                      sub r3, r3, #1
005c5af0  00 00 53 e3                                      cmp r3, #0
005c5af4  00 30 80 e5                                      str r3, [r0]
005c5af8  0d 00 00 1a                                      bne #0x5c5b34
005c5afc  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005c5b00  00 00 53 e3                                      cmp r3, #0
005c5b04  05 00 00 1a                                      bne #0x5c5b20
005c5b08  34 30 9f e5                                      ldr r3, [pc, #0x34]
005c5b0c  50 20 90 e5                                      ldr r2, [r0, #0x50]
005c5b10  03 30 9c e7                                      ldr r3, [ip, r3]
005c5b14  00 10 93 e5                                      ldr r1, [r3]
005c5b18  00 10 82 e5                                      str r1, [r2]
005c5b1c  00 20 83 e5                                      str r2, [r3]
005c5b20  00 30 a0 e3                                      mov r3, #0
005c5b24  50 30 80 e5                                      str r3, [r0, #0x50]
005c5b28  e0 21 f5 eb                                      bl #0x30e2b0
005c5b2c  01 00 a0 e3                                      mov r0, #1
005c5b30  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c5b34  01 00 a0 e3                                      mov r0, #1
005c5b38  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c5b3c  38 f0 3c 00 14 28 00 00 c0 3c 00 00              .byte 0x38, 0xf0, 0x3c, 0x00, 0x14, 0x28, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005c5be0, declared_size=188, range_size=188, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtIN5boost13intrusive_ptrINS0_6CLightEEEEENS8_9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<glitch::video::CLight> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<boost::intrusive_ptr<glitch::video::CLight> >(unsigned short, unsigned int, boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
005c5be0  70 40 2d e9                                      push {r4, r5, r6, lr}
005c5be4  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c5be8  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c5bec  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
005c5bf0  05 50 64 e0                                      rsb r5, r4, r5
005c5bf4  45 51 a0 e1                                      asr r5, r5, #2
005c5bf8  0c c0 8f e0                                      add ip, pc, ip
005c5bfc  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c5c00  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c5c04  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c5c08  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c5c0c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c5c10  05 00 51 e1                                      cmp r1, r5
005c5c14  1a 00 00 2a                                      bhs #0x5c5c84
005c5c18  14 50 a0 e3                                      mov r5, #0x14
005c5c1c  95 41 24 e0                                      mla r4, r5, r1, r4
005c5c20  00 10 94 e5                                      ldr r1, [r4]
005c5c24  00 00 51 e3                                      cmp r1, #0
005c5c28  0e 00 00 0a                                      beq #0x5c5c68
005c5c2c  60 50 9f e5                                      ldr r5, [pc, #0x60]
005c5c30  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c5c34  05 c0 9c e7                                      ldr ip, [ip, r5]
005c5c38  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c5c3c  01 07 1c e3                                      tst ip, #0x40000
005c5c40  08 00 00 0a                                      beq #0x5c5c68
005c5c44  08 c0 94 e5                                      ldr ip, [r4, #8]
005c5c48  0c 00 52 e1                                      cmp r2, ip
005c5c4c  05 00 00 2a                                      bhs #0x5c5c68
005c5c50  12 00 51 e3                                      cmp r1, #0x12
005c5c54  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c5c58  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c5c5c  03 00 00 0a                                      beq #0x5c5c70
005c5c60  01 00 a0 e3                                      mov r0, #1
005c5c64  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c5c68  00 00 a0 e3                                      mov r0, #0
005c5c6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c5c70  02 00 80 e0                                      add r0, r0, r2
005c5c74  03 10 a0 e1                                      mov r1, r3
005c5c78  74 d6 ff eb                                      bl #0x5bb650
005c5c7c  01 00 a0 e3                                      mov r0, #1
005c5c80  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c5c84  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005c5c88  01 40 9c e7                                      ldr r4, [ip, r1]
005c5c8c  e3 ff ff ea                                      b #0x5c5c20
; mapping-symbol data/literal pool
005c5c90  98 ee 3c 00 a4 2c 00 00 14 28 00 00              .byte 0x98, 0xee, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00
