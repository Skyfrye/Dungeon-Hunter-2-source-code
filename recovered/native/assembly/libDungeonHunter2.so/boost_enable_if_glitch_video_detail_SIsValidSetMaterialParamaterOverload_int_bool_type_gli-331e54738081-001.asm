; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005bf5bc, declared_size=208, range_size=208, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<int>(unsigned short, unsigned int, int&) const
; decoder-mode: arm
005bf5bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005bf5c0  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bf5c4  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bf5c8  b0 c0 9f e5                                      ldr ip, [pc, #0xb0]
005bf5cc  03 70 a0 e1                                      mov r7, r3
005bf5d0  05 50 64 e0                                      rsb r5, r4, r5
005bf5d4  45 51 a0 e1                                      asr r5, r5, #2
005bf5d8  0c c0 8f e0                                      add ip, pc, ip
005bf5dc  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bf5e0  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bf5e4  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bf5e8  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bf5ec  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bf5f0  05 00 51 e1                                      cmp r1, r5
005bf5f4  1e 00 00 2a                                      bhs #0x5bf674
005bf5f8  14 30 a0 e3                                      mov r3, #0x14
005bf5fc  93 41 24 e0                                      mla r4, r3, r1, r4
005bf600  00 30 94 e5                                      ldr r3, [r4]
005bf604  00 00 53 e3                                      cmp r3, #0
005bf608  13 00 00 0a                                      beq #0x5bf65c
005bf60c  70 10 9f e5                                      ldr r1, [pc, #0x70]
005bf610  06 30 d4 e5                                      ldrb r3, [r4, #6]
005bf614  01 10 9c e7                                      ldr r1, [ip, r1]
005bf618  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
005bf61c  02 00 11 e3                                      tst r1, #2
005bf620  0d 00 00 0a                                      beq #0x5bf65c
005bf624  08 10 94 e5                                      ldr r1, [r4, #8]
005bf628  01 00 52 e1                                      cmp r2, r1
005bf62c  0a 00 00 2a                                      bhs #0x5bf65c
005bf630  01 00 53 e3                                      cmp r3, #1
005bf634  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bf638  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005bf63c  08 00 00 0a                                      beq #0x5bf664
005bf640  05 00 53 e3                                      cmp r3, #5
005bf644  02 00 00 1a                                      bne #0x5bf654
005bf648  02 00 91 e7                                      ldr r0, [r1, r2]
005bf64c  9e 3b f5 eb                                      bl #0x30e4cc
005bf650  00 00 87 e5                                      str r0, [r7]
005bf654  01 00 a0 e3                                      mov r0, #1
005bf658  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bf65c  00 00 a0 e3                                      mov r0, #0
005bf660  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bf664  02 20 91 e7                                      ldr r2, [r1, r2]
005bf668  03 00 a0 e1                                      mov r0, r3
005bf66c  00 20 87 e5                                      str r2, [r7]
005bf670  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bf674  0c 30 9f e5                                      ldr r3, [pc, #0xc]
005bf678  03 40 9c e7                                      ldr r4, [ip, r3]
005bf67c  df ff ff ea                                      b #0x5bf600
; mapping-symbol data/literal pool
005bf680  b8 54 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xb8, 0x54, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bfe68, declared_size=332, range_size=332, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<int>(unsigned short, int const*, int)
; decoder-mode: arm
005bfe68  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005bfe6c  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bfe70  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bfe74  2c c1 9f e5                                      ldr ip, [pc, #0x12c]
005bfe78  02 60 a0 e1                                      mov r6, r2
005bfe7c  05 50 64 e0                                      rsb r5, r4, r5
005bfe80  45 51 a0 e1                                      asr r5, r5, #2
005bfe84  0c c0 8f e0                                      add ip, pc, ip
005bfe88  85 70 85 e0                                      add r7, r5, r5, lsl #1
005bfe8c  03 80 a0 e1                                      mov r8, r3
005bfe90  07 72 87 e0                                      add r7, r7, r7, lsl #4
005bfe94  07 74 87 e0                                      add r7, r7, r7, lsl #8
005bfe98  07 78 87 e0                                      add r7, r7, r7, lsl #16
005bfe9c  07 51 85 e0                                      add r5, r5, r7, lsl #2
005bfea0  05 00 51 e1                                      cmp r1, r5
005bfea4  17 00 00 2a                                      bhs #0x5bff08
005bfea8  14 30 a0 e3                                      mov r3, #0x14
005bfeac  93 41 24 e0                                      mla r4, r3, r1, r4
005bfeb0  00 30 94 e5                                      ldr r3, [r4]
005bfeb4  00 00 53 e3                                      cmp r3, #0
005bfeb8  10 00 00 0a                                      beq #0x5bff00
005bfebc  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
005bfec0  06 50 d4 e5                                      ldrb r5, [r4, #6]
005bfec4  03 30 9c e7                                      ldr r3, [ip, r3]
005bfec8  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
005bfecc  02 00 13 e3                                      tst r3, #2
005bfed0  0a 00 00 0a                                      beq #0x5bff00
005bfed4  01 30 78 e2                                      rsbs r3, r8, #1
005bfed8  00 30 a0 33                                      movlo r3, #0
005bfedc  00 00 58 e3                                      cmp r8, #0
005bfee0  04 00 58 13                                      cmpne r8, #4
005bfee4  0a 00 00 1a                                      bne #0x5bff14
005bfee8  01 00 55 e3                                      cmp r5, #1
005bfeec  24 00 00 0a                                      beq #0x5bff84
005bfef0  00 00 53 e3                                      cmp r3, #0
005bfef4  06 00 00 0a                                      beq #0x5bff14
005bfef8  01 00 a0 e3                                      mov r0, #1
005bfefc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bff00  00 00 a0 e3                                      mov r0, #0
005bff04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bff08  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
005bff0c  03 40 9c e7                                      ldr r4, [ip, r3]
005bff10  e6 ff ff ea                                      b #0x5bfeb0
005bff14  2c 70 90 e5                                      ldr r7, [r0, #0x2c]
005bff18  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005bff1c  01 00 55 e3                                      cmp r5, #1
005bff20  03 70 87 e0                                      add r7, r7, r3
005bff24  0c 00 00 0a                                      beq #0x5bff5c
005bff28  05 00 55 e3                                      cmp r5, #5
005bff2c  f1 ff ff 1a                                      bne #0x5bfef8
005bff30  08 50 94 e5                                      ldr r5, [r4, #8]
005bff34  00 00 55 e3                                      cmp r5, #0
005bff38  ee ff ff 0a                                      beq #0x5bfef8
005bff3c  00 40 a0 e3                                      mov r4, #0
005bff40  08 00 96 e6                                      ldr r0, [r6], r8
005bff44  86 3a f5 eb                                      bl #0x30e964
005bff48  04 01 87 e7                                      str r0, [r7, r4, lsl #2]
005bff4c  01 40 84 e2                                      add r4, r4, #1
005bff50  04 00 55 e1                                      cmp r5, r4
005bff54  f9 ff ff 1a                                      bne #0x5bff40
005bff58  e6 ff ff ea                                      b #0x5bfef8
005bff5c  08 10 94 e5                                      ldr r1, [r4, #8]
005bff60  00 00 51 e3                                      cmp r1, #0
005bff64  e3 ff ff 0a                                      beq #0x5bfef8
005bff68  00 30 a0 e3                                      mov r3, #0
005bff6c  08 20 96 e6                                      ldr r2, [r6], r8
005bff70  03 21 87 e7                                      str r2, [r7, r3, lsl #2]
005bff74  01 30 83 e2                                      add r3, r3, #1
005bff78  01 00 53 e1                                      cmp r3, r1
005bff7c  fa ff ff 1a                                      bne #0x5bff6c
005bff80  dc ff ff ea                                      b #0x5bfef8
005bff84  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005bff88  08 20 94 e5                                      ldr r2, [r4, #8]
005bff8c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005bff90  06 10 a0 e1                                      mov r1, r6
005bff94  02 21 a0 e1                                      lsl r2, r2, #2
005bff98  03 00 80 e0                                      add r0, r0, r3
005bff9c  31 3a f5 eb                                      bl #0x30e868
005bffa0  05 00 a0 e1                                      mov r0, r5
005bffa4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005bffa8  0c 4c 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x0c, 0x4c, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c083c, declared_size=224, range_size=224, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<int>(unsigned short, int const*, int)
; decoder-mode: arm
005c083c  70 40 2d e9                                      push {r4, r5, r6, lr}
005c0840  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c0844  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c0848  c4 c0 9f e5                                      ldr ip, [pc, #0xc4]
005c084c  05 50 64 e0                                      rsb r5, r4, r5
005c0850  45 51 a0 e1                                      asr r5, r5, #2
005c0854  0c c0 8f e0                                      add ip, pc, ip
005c0858  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c085c  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c0860  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c0864  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c0868  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c086c  05 00 51 e1                                      cmp r1, r5
005c0870  09 00 00 2a                                      bhs #0x5c089c
005c0874  14 c0 a0 e3                                      mov ip, #0x14
005c0878  9c 41 24 e0                                      mla r4, ip, r1, r4
005c087c  00 10 94 e5                                      ldr r1, [r4]
005c0880  00 00 51 e3                                      cmp r1, #0
005c0884  02 00 00 0a                                      beq #0x5c0894
005c0888  06 50 d4 e5                                      ldrb r5, [r4, #6]
005c088c  01 00 55 e3                                      cmp r5, #1
005c0890  04 00 00 0a                                      beq #0x5c08a8
005c0894  00 00 a0 e3                                      mov r0, #0
005c0898  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c089c  74 10 9f e5                                      ldr r1, [pc, #0x74]
005c08a0  01 40 9c e7                                      ldr r4, [ip, r1]
005c08a4  f4 ff ff ea                                      b #0x5c087c
005c08a8  00 00 53 e3                                      cmp r3, #0
005c08ac  04 00 53 13                                      cmpne r3, #4
005c08b0  00 10 a0 13                                      movne r1, #0
005c08b4  01 10 a0 03                                      moveq r1, #1
005c08b8  0c 00 00 0a                                      beq #0x5c08f0
005c08bc  08 c0 94 e5                                      ldr ip, [r4, #8]
005c08c0  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c08c4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005c08c8  00 00 5c e3                                      cmp ip, #0
005c08cc  05 00 00 0a                                      beq #0x5c08e8
005c08d0  00 40 85 e0                                      add r4, r5, r0
005c08d4  03 00 92 e6                                      ldr r0, [r2], r3
005c08d8  01 01 84 e7                                      str r0, [r4, r1, lsl #2]
005c08dc  01 10 81 e2                                      add r1, r1, #1
005c08e0  01 00 5c e1                                      cmp ip, r1
005c08e4  fa ff ff 1a                                      bne #0x5c08d4
005c08e8  01 00 a0 e3                                      mov r0, #1
005c08ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c08f0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c08f4  08 c0 94 e5                                      ldr ip, [r4, #8]
005c08f8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c08fc  02 10 a0 e1                                      mov r1, r2
005c0900  0c 21 a0 e1                                      lsl r2, ip, #2
005c0904  03 00 80 e0                                      add r0, r0, r3
005c0908  d6 37 f5 eb                                      bl #0x30e868
005c090c  05 00 a0 e1                                      mov r0, r5
005c0910  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c0914  3c 42 3d 00 14 28 00 00                          .byte 0x3c, 0x42, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c2084, declared_size=276, range_size=276, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<int>(unsigned short, int*, int) const
; decoder-mode: arm
005c2084  70 40 2d e9                                      push {r4, r5, r6, lr}
005c2088  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c208c  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c2090  f4 c0 9f e5                                      ldr ip, [pc, #0xf4]
005c2094  05 50 64 e0                                      rsb r5, r4, r5
005c2098  45 51 a0 e1                                      asr r5, r5, #2
005c209c  0c c0 8f e0                                      add ip, pc, ip
005c20a0  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c20a4  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c20a8  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c20ac  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c20b0  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c20b4  05 00 51 e1                                      cmp r1, r5
005c20b8  17 00 00 2a                                      bhs #0x5c211c
005c20bc  14 50 a0 e3                                      mov r5, #0x14
005c20c0  95 41 24 e0                                      mla r4, r5, r1, r4
005c20c4  00 10 94 e5                                      ldr r1, [r4]
005c20c8  00 00 51 e3                                      cmp r1, #0
005c20cc  10 00 00 0a                                      beq #0x5c2114
005c20d0  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
005c20d4  06 50 d4 e5                                      ldrb r5, [r4, #6]
005c20d8  01 10 9c e7                                      ldr r1, [ip, r1]
005c20dc  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
005c20e0  02 00 11 e3                                      tst r1, #2
005c20e4  0a 00 00 0a                                      beq #0x5c2114
005c20e8  01 10 73 e2                                      rsbs r1, r3, #1
005c20ec  00 10 a0 33                                      movlo r1, #0
005c20f0  00 00 53 e3                                      cmp r3, #0
005c20f4  04 00 53 13                                      cmpne r3, #4
005c20f8  0a 00 00 1a                                      bne #0x5c2128
005c20fc  01 00 55 e3                                      cmp r5, #1
005c2100  18 00 00 0a                                      beq #0x5c2168
005c2104  00 00 51 e3                                      cmp r1, #0
005c2108  06 00 00 0a                                      beq #0x5c2128
005c210c  01 00 a0 e3                                      mov r0, #1
005c2110  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2114  00 00 a0 e3                                      mov r0, #0
005c2118  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c211c  70 10 9f e5                                      ldr r1, [pc, #0x70]
005c2120  01 40 9c e7                                      ldr r4, [ip, r1]
005c2124  e6 ff ff ea                                      b #0x5c20c4
005c2128  01 00 55 e3                                      cmp r5, #1
005c212c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c2130  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c2134  f4 ff ff 1a                                      bne #0x5c210c
005c2138  08 c0 94 e5                                      ldr ip, [r4, #8]
005c213c  00 00 5c e3                                      cmp ip, #0
005c2140  f1 ff ff 0a                                      beq #0x5c210c
005c2144  01 40 80 e0                                      add r4, r0, r1
005c2148  00 10 a0 e3                                      mov r1, #0
005c214c  01 01 94 e7                                      ldr r0, [r4, r1, lsl #2]
005c2150  01 10 81 e2                                      add r1, r1, #1
005c2154  0c 00 51 e1                                      cmp r1, ip
005c2158  03 00 82 e6                                      str r0, [r2], r3
005c215c  fa ff ff 1a                                      bne #0x5c214c
005c2160  01 00 a0 e3                                      mov r0, #1
005c2164  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2168  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c216c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c2170  08 30 94 e5                                      ldr r3, [r4, #8]
005c2174  02 00 a0 e1                                      mov r0, r2
005c2178  01 10 8c e0                                      add r1, ip, r1
005c217c  03 21 a0 e1                                      lsl r2, r3, #2
005c2180  b8 31 f5 eb                                      bl #0x30e868
005c2184  05 00 a0 e1                                      mov r0, r5
005c2188  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c218c  f4 29 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xf4, 0x29, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c2c80, declared_size=224, range_size=224, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<int>(unsigned short, int*, int) const
; decoder-mode: arm
005c2c80  70 40 2d e9                                      push {r4, r5, r6, lr}
005c2c84  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c2c88  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c2c8c  c4 c0 9f e5                                      ldr ip, [pc, #0xc4]
005c2c90  05 50 64 e0                                      rsb r5, r4, r5
005c2c94  45 51 a0 e1                                      asr r5, r5, #2
005c2c98  0c c0 8f e0                                      add ip, pc, ip
005c2c9c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c2ca0  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c2ca4  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c2ca8  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c2cac  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c2cb0  05 00 51 e1                                      cmp r1, r5
005c2cb4  09 00 00 2a                                      bhs #0x5c2ce0
005c2cb8  14 c0 a0 e3                                      mov ip, #0x14
005c2cbc  9c 41 24 e0                                      mla r4, ip, r1, r4
005c2cc0  00 10 94 e5                                      ldr r1, [r4]
005c2cc4  00 00 51 e3                                      cmp r1, #0
005c2cc8  02 00 00 0a                                      beq #0x5c2cd8
005c2ccc  06 50 d4 e5                                      ldrb r5, [r4, #6]
005c2cd0  01 00 55 e3                                      cmp r5, #1
005c2cd4  04 00 00 0a                                      beq #0x5c2cec
005c2cd8  00 00 a0 e3                                      mov r0, #0
005c2cdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2ce0  74 10 9f e5                                      ldr r1, [pc, #0x74]
005c2ce4  01 40 9c e7                                      ldr r4, [ip, r1]
005c2ce8  f4 ff ff ea                                      b #0x5c2cc0
005c2cec  00 00 53 e3                                      cmp r3, #0
005c2cf0  04 00 53 13                                      cmpne r3, #4
005c2cf4  00 10 a0 13                                      movne r1, #0
005c2cf8  01 10 a0 03                                      moveq r1, #1
005c2cfc  0c 00 00 0a                                      beq #0x5c2d34
005c2d00  08 c0 94 e5                                      ldr ip, [r4, #8]
005c2d04  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c2d08  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005c2d0c  00 00 5c e3                                      cmp ip, #0
005c2d10  05 00 00 0a                                      beq #0x5c2d2c
005c2d14  00 40 85 e0                                      add r4, r5, r0
005c2d18  01 01 94 e7                                      ldr r0, [r4, r1, lsl #2]
005c2d1c  01 10 81 e2                                      add r1, r1, #1
005c2d20  01 00 5c e1                                      cmp ip, r1
005c2d24  03 00 82 e6                                      str r0, [r2], r3
005c2d28  fa ff ff 1a                                      bne #0x5c2d18
005c2d2c  01 00 a0 e3                                      mov r0, #1
005c2d30  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2d34  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c2d38  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c2d3c  08 30 94 e5                                      ldr r3, [r4, #8]
005c2d40  02 00 a0 e1                                      mov r0, r2
005c2d44  01 10 8c e0                                      add r1, ip, r1
005c2d48  03 21 a0 e1                                      lsl r2, r3, #2
005c2d4c  c5 2e f5 eb                                      bl #0x30e868
005c2d50  05 00 a0 e1                                      mov r0, r5
005c2d54  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c2d58  f8 1d 3d 00 14 28 00 00                          .byte 0xf8, 0x1d, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c3b40, declared_size=160, range_size=160, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<int>(unsigned short, unsigned int, int&) const
; decoder-mode: arm
005c3b40  70 00 2d e9                                      push {r4, r5, r6}
005c3b44  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c3b48  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c3b4c  84 c0 9f e5                                      ldr ip, [pc, #0x84]
005c3b50  05 50 64 e0                                      rsb r5, r4, r5
005c3b54  45 51 a0 e1                                      asr r5, r5, #2
005c3b58  0c c0 8f e0                                      add ip, pc, ip
005c3b5c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c3b60  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c3b64  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c3b68  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c3b6c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c3b70  05 00 51 e1                                      cmp r1, r5
005c3b74  14 00 00 2a                                      bhs #0x5c3bcc
005c3b78  14 c0 a0 e3                                      mov ip, #0x14
005c3b7c  9c 41 24 e0                                      mla r4, ip, r1, r4
005c3b80  00 10 94 e5                                      ldr r1, [r4]
005c3b84  00 00 51 e3                                      cmp r1, #0
005c3b88  02 00 00 0a                                      beq #0x5c3b98
005c3b8c  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c3b90  01 00 51 e3                                      cmp r1, #1
005c3b94  02 00 00 0a                                      beq #0x5c3ba4
005c3b98  00 00 a0 e3                                      mov r0, #0
005c3b9c  70 00 bd e8                                      pop {r4, r5, r6}
005c3ba0  1e ff 2f e1                                      bx lr
005c3ba4  08 c0 94 e5                                      ldr ip, [r4, #8]
005c3ba8  0c 00 52 e1                                      cmp r2, ip
005c3bac  f9 ff ff 2a                                      bhs #0x5c3b98
005c3bb0  0c 40 94 e5                                      ldr r4, [r4, #0xc]
005c3bb4  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c3bb8  01 00 a0 e1                                      mov r0, r1
005c3bbc  02 21 84 e0                                      add r2, r4, r2, lsl #2
005c3bc0  02 20 9c e7                                      ldr r2, [ip, r2]
005c3bc4  00 20 83 e5                                      str r2, [r3]
005c3bc8  f3 ff ff ea                                      b #0x5c3b9c
005c3bcc  08 10 9f e5                                      ldr r1, [pc, #8]
005c3bd0  01 40 9c e7                                      ldr r4, [ip, r1]
005c3bd4  e9 ff ff ea                                      b #0x5c3b80
; mapping-symbol data/literal pool
005c3bd8  38 0f 3d 00 14 28 00 00                          .byte 0x38, 0x0f, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4688, declared_size=204, range_size=204, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<int>(unsigned short, unsigned int, int const&)
; decoder-mode: arm
005c4688  70 40 2d e9                                      push {r4, r5, r6, lr}
005c468c  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4690  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4694  ac c0 9f e5                                      ldr ip, [pc, #0xac]
005c4698  05 50 64 e0                                      rsb r5, r4, r5
005c469c  45 51 a0 e1                                      asr r5, r5, #2
005c46a0  0c c0 8f e0                                      add ip, pc, ip
005c46a4  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c46a8  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c46ac  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c46b0  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c46b4  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c46b8  05 00 51 e1                                      cmp r1, r5
005c46bc  1e 00 00 2a                                      bhs #0x5c473c
005c46c0  14 50 a0 e3                                      mov r5, #0x14
005c46c4  95 41 24 e0                                      mla r4, r5, r1, r4
005c46c8  00 10 94 e5                                      ldr r1, [r4]
005c46cc  00 00 51 e3                                      cmp r1, #0
005c46d0  13 00 00 0a                                      beq #0x5c4724
005c46d4  70 50 9f e5                                      ldr r5, [pc, #0x70]
005c46d8  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c46dc  05 c0 9c e7                                      ldr ip, [ip, r5]
005c46e0  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c46e4  02 00 1c e3                                      tst ip, #2
005c46e8  0d 00 00 0a                                      beq #0x5c4724
005c46ec  08 c0 94 e5                                      ldr ip, [r4, #8]
005c46f0  0c 00 52 e1                                      cmp r2, ip
005c46f4  0a 00 00 2a                                      bhs #0x5c4724
005c46f8  01 00 51 e3                                      cmp r1, #1
005c46fc  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c4700  0c 40 94 e5                                      ldr r4, [r4, #0xc]
005c4704  08 00 00 0a                                      beq #0x5c472c
005c4708  05 00 51 e3                                      cmp r1, #5
005c470c  02 00 00 1a                                      bne #0x5c471c
005c4710  00 00 93 e5                                      ldr r0, [r3]
005c4714  92 28 f5 eb                                      bl #0x30e964
005c4718  04 00 85 e7                                      str r0, [r5, r4]
005c471c  01 00 a0 e3                                      mov r0, #1
005c4720  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c4724  00 00 a0 e3                                      mov r0, #0
005c4728  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c472c  00 30 93 e5                                      ldr r3, [r3]
005c4730  01 00 a0 e1                                      mov r0, r1
005c4734  04 30 85 e7                                      str r3, [r5, r4]
005c4738  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c473c  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005c4740  01 40 9c e7                                      ldr r4, [ip, r1]
005c4744  df ff ff ea                                      b #0x5c46c8
; mapping-symbol data/literal pool
005c4748  f0 03 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xf0, 0x03, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4e70, declared_size=160, range_size=160, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<int>(unsigned short, unsigned int, int const&)
; decoder-mode: arm
005c4e70  70 00 2d e9                                      push {r4, r5, r6}
005c4e74  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4e78  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4e7c  84 c0 9f e5                                      ldr ip, [pc, #0x84]
005c4e80  05 50 64 e0                                      rsb r5, r4, r5
005c4e84  45 51 a0 e1                                      asr r5, r5, #2
005c4e88  0c c0 8f e0                                      add ip, pc, ip
005c4e8c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c4e90  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c4e94  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c4e98  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c4e9c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c4ea0  05 00 51 e1                                      cmp r1, r5
005c4ea4  14 00 00 2a                                      bhs #0x5c4efc
005c4ea8  14 c0 a0 e3                                      mov ip, #0x14
005c4eac  9c 41 24 e0                                      mla r4, ip, r1, r4
005c4eb0  00 10 94 e5                                      ldr r1, [r4]
005c4eb4  00 00 51 e3                                      cmp r1, #0
005c4eb8  02 00 00 0a                                      beq #0x5c4ec8
005c4ebc  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c4ec0  01 00 51 e3                                      cmp r1, #1
005c4ec4  02 00 00 0a                                      beq #0x5c4ed4
005c4ec8  00 00 a0 e3                                      mov r0, #0
005c4ecc  70 00 bd e8                                      pop {r4, r5, r6}
005c4ed0  1e ff 2f e1                                      bx lr
005c4ed4  08 c0 94 e5                                      ldr ip, [r4, #8]
005c4ed8  0c 00 52 e1                                      cmp r2, ip
005c4edc  f9 ff ff 2a                                      bhs #0x5c4ec8
005c4ee0  0c 40 94 e5                                      ldr r4, [r4, #0xc]
005c4ee4  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c4ee8  00 30 93 e5                                      ldr r3, [r3]
005c4eec  02 21 84 e0                                      add r2, r4, r2, lsl #2
005c4ef0  01 00 a0 e1                                      mov r0, r1
005c4ef4  02 30 8c e7                                      str r3, [ip, r2]
005c4ef8  f3 ff ff ea                                      b #0x5c4ecc
005c4efc  08 10 9f e5                                      ldr r1, [pc, #8]
005c4f00  01 40 9c e7                                      ldr r4, [ip, r1]
005c4f04  e9 ff ff ea                                      b #0x5c4eb0
; mapping-symbol data/literal pool
005c4f08  08 fc 3c 00 14 28 00 00                          .byte 0x08, 0xfc, 0x3c, 0x00, 0x14, 0x28, 0x00, 0x00
