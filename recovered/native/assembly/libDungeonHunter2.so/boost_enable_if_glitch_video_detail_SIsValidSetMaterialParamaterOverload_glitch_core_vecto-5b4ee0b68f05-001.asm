; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005bf360, declared_size=212, range_size=212, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<int> >(unsigned short, unsigned int, glitch::core::vector4d<int>&) const
; decoder-mode: arm
005bf360  70 00 2d e9                                      push {r4, r5, r6}
005bf364  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bf368  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bf36c  b4 c0 9f e5                                      ldr ip, [pc, #0xb4]
005bf370  05 50 64 e0                                      rsb r5, r4, r5
005bf374  45 51 a0 e1                                      asr r5, r5, #2
005bf378  0c c0 8f e0                                      add ip, pc, ip
005bf37c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bf380  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bf384  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bf388  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bf38c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bf390  05 00 51 e1                                      cmp r1, r5
005bf394  20 00 00 2a                                      bhs #0x5bf41c
005bf398  14 50 a0 e3                                      mov r5, #0x14
005bf39c  95 41 24 e0                                      mla r4, r5, r1, r4
005bf3a0  00 10 94 e5                                      ldr r1, [r4]
005bf3a4  00 00 51 e3                                      cmp r1, #0
005bf3a8  18 00 00 0a                                      beq #0x5bf410
005bf3ac  78 50 9f e5                                      ldr r5, [pc, #0x78]
005bf3b0  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bf3b4  05 c0 9c e7                                      ldr ip, [ip, r5]
005bf3b8  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005bf3bc  10 00 1c e3                                      tst ip, #0x10
005bf3c0  12 00 00 0a                                      beq #0x5bf410
005bf3c4  08 c0 94 e5                                      ldr ip, [r4, #8]
005bf3c8  0c 00 52 e1                                      cmp r2, ip
005bf3cc  0f 00 00 2a                                      bhs #0x5bf410
005bf3d0  04 00 51 e3                                      cmp r1, #4
005bf3d4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005bf3d8  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bf3dc  01 00 a0 13                                      movne r0, #1
005bf3e0  0b 00 00 1a                                      bne #0x5bf414
005bf3e4  02 c0 91 e7                                      ldr ip, [r1, r2]
005bf3e8  02 20 81 e0                                      add r2, r1, r2
005bf3ec  01 00 a0 e3                                      mov r0, #1
005bf3f0  00 c0 83 e5                                      str ip, [r3]
005bf3f4  04 10 92 e5                                      ldr r1, [r2, #4]
005bf3f8  04 10 83 e5                                      str r1, [r3, #4]
005bf3fc  08 10 92 e5                                      ldr r1, [r2, #8]
005bf400  08 10 83 e5                                      str r1, [r3, #8]
005bf404  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005bf408  0c 20 83 e5                                      str r2, [r3, #0xc]
005bf40c  00 00 00 ea                                      b #0x5bf414
005bf410  00 00 a0 e3                                      mov r0, #0
005bf414  70 00 bd e8                                      pop {r4, r5, r6}
005bf418  1e ff 2f e1                                      bx lr
005bf41c  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005bf420  01 40 9c e7                                      ldr r4, [ip, r1]
005bf424  dd ff ff ea                                      b #0x5bf3a0
; mapping-symbol data/literal pool
005bf428  18 57 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x18, 0x57, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bfb5c, declared_size=188, range_size=188, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<int> >(unsigned short, unsigned int, glitch::core::vector4d<int>&) const
; decoder-mode: arm
005bfb5c  70 00 2d e9                                      push {r4, r5, r6}
005bfb60  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bfb64  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bfb68  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
005bfb6c  05 50 64 e0                                      rsb r5, r4, r5
005bfb70  45 51 a0 e1                                      asr r5, r5, #2
005bfb74  0c c0 8f e0                                      add ip, pc, ip
005bfb78  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bfb7c  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bfb80  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bfb84  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bfb88  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bfb8c  05 00 51 e1                                      cmp r1, r5
005bfb90  1b 00 00 2a                                      bhs #0x5bfc04
005bfb94  14 c0 a0 e3                                      mov ip, #0x14
005bfb98  9c 41 24 e0                                      mla r4, ip, r1, r4
005bfb9c  00 10 94 e5                                      ldr r1, [r4]
005bfba0  00 00 51 e3                                      cmp r1, #0
005bfba4  02 00 00 0a                                      beq #0x5bfbb4
005bfba8  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bfbac  04 00 51 e3                                      cmp r1, #4
005bfbb0  02 00 00 0a                                      beq #0x5bfbc0
005bfbb4  00 00 a0 e3                                      mov r0, #0
005bfbb8  70 00 bd e8                                      pop {r4, r5, r6}
005bfbbc  1e ff 2f e1                                      bx lr
005bfbc0  08 10 94 e5                                      ldr r1, [r4, #8]
005bfbc4  01 00 52 e1                                      cmp r2, r1
005bfbc8  f9 ff ff 2a                                      bhs #0x5bfbb4
005bfbcc  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005bfbd0  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bfbd4  01 00 a0 e3                                      mov r0, #1
005bfbd8  02 22 8c e0                                      add r2, ip, r2, lsl #4
005bfbdc  02 c0 91 e7                                      ldr ip, [r1, r2]
005bfbe0  02 20 81 e0                                      add r2, r1, r2
005bfbe4  00 c0 83 e5                                      str ip, [r3]
005bfbe8  04 10 92 e5                                      ldr r1, [r2, #4]
005bfbec  04 10 83 e5                                      str r1, [r3, #4]
005bfbf0  08 10 92 e5                                      ldr r1, [r2, #8]
005bfbf4  08 10 83 e5                                      str r1, [r3, #8]
005bfbf8  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005bfbfc  0c 20 83 e5                                      str r2, [r3, #0xc]
005bfc00  ec ff ff ea                                      b #0x5bfbb8
005bfc04  08 10 9f e5                                      ldr r1, [pc, #8]
005bfc08  01 40 9c e7                                      ldr r4, [ip, r1]
005bfc0c  e2 ff ff ea                                      b #0x5bfb9c
; mapping-symbol data/literal pool
005bfc10  1c 4f 3d 00 14 28 00 00                          .byte 0x1c, 0x4f, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c0560, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<int> >(unsigned short, glitch::core::vector4d<int> const*, int)
; decoder-mode: arm
005c0560  70 40 2d e9                                      push {r4, r5, r6, lr}
005c0564  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c0568  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c056c  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005c0570  05 50 64 e0                                      rsb r5, r4, r5
005c0574  45 51 a0 e1                                      asr r5, r5, #2
005c0578  0c c0 8f e0                                      add ip, pc, ip
005c057c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c0580  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c0584  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c0588  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c058c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c0590  05 00 51 e1                                      cmp r1, r5
005c0594  09 00 00 2a                                      bhs #0x5c05c0
005c0598  14 c0 a0 e3                                      mov ip, #0x14
005c059c  9c 41 24 e0                                      mla r4, ip, r1, r4
005c05a0  00 10 94 e5                                      ldr r1, [r4]
005c05a4  00 00 51 e3                                      cmp r1, #0
005c05a8  02 00 00 0a                                      beq #0x5c05b8
005c05ac  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c05b0  04 00 51 e3                                      cmp r1, #4
005c05b4  04 00 00 0a                                      beq #0x5c05cc
005c05b8  00 00 a0 e3                                      mov r0, #0
005c05bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c05c0  88 10 9f e5                                      ldr r1, [pc, #0x88]
005c05c4  01 40 9c e7                                      ldr r4, [ip, r1]
005c05c8  f4 ff ff ea                                      b #0x5c05a0
005c05cc  00 00 53 e3                                      cmp r3, #0
005c05d0  10 00 53 13                                      cmpne r3, #0x10
005c05d4  13 00 00 0a                                      beq #0x5c0628
005c05d8  08 c0 94 e5                                      ldr ip, [r4, #8]
005c05dc  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c05e0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c05e4  00 00 5c e3                                      cmp ip, #0
005c05e8  0c 00 00 0a                                      beq #0x5c0620
005c05ec  01 10 80 e0                                      add r1, r0, r1
005c05f0  00 00 92 e5                                      ldr r0, [r2]
005c05f4  01 c0 5c e2                                      subs ip, ip, #1
005c05f8  00 00 81 e5                                      str r0, [r1]
005c05fc  04 00 92 e5                                      ldr r0, [r2, #4]
005c0600  04 00 81 e5                                      str r0, [r1, #4]
005c0604  08 00 92 e5                                      ldr r0, [r2, #8]
005c0608  08 00 81 e5                                      str r0, [r1, #8]
005c060c  0c 00 92 e5                                      ldr r0, [r2, #0xc]
005c0610  03 20 82 e0                                      add r2, r2, r3
005c0614  0c 00 81 e5                                      str r0, [r1, #0xc]
005c0618  10 10 81 e2                                      add r1, r1, #0x10
005c061c  f3 ff ff 1a                                      bne #0x5c05f0
005c0620  01 00 a0 e3                                      mov r0, #1
005c0624  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c0628  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c062c  08 c0 94 e5                                      ldr ip, [r4, #8]
005c0630  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c0634  02 10 a0 e1                                      mov r1, r2
005c0638  0c 22 a0 e1                                      lsl r2, ip, #4
005c063c  03 00 80 e0                                      add r0, r0, r3
005c0640  88 38 f5 eb                                      bl #0x30e868
005c0644  01 00 a0 e3                                      mov r0, #1
005c0648  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c064c  18 45 3d 00 14 28 00 00                          .byte 0x18, 0x45, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c1d08, declared_size=300, range_size=300, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<int> >(unsigned short, glitch::core::vector4d<int>*, int) const
; decoder-mode: arm
005c1d08  70 40 2d e9                                      push {r4, r5, r6, lr}
005c1d0c  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c1d10  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c1d14  0c c1 9f e5                                      ldr ip, [pc, #0x10c]
005c1d18  05 50 64 e0                                      rsb r5, r4, r5
005c1d1c  45 51 a0 e1                                      asr r5, r5, #2
005c1d20  0c c0 8f e0                                      add ip, pc, ip
005c1d24  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c1d28  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c1d2c  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c1d30  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c1d34  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c1d38  05 00 51 e1                                      cmp r1, r5
005c1d3c  17 00 00 2a                                      bhs #0x5c1da0
005c1d40  14 50 a0 e3                                      mov r5, #0x14
005c1d44  95 41 24 e0                                      mla r4, r5, r1, r4
005c1d48  00 10 94 e5                                      ldr r1, [r4]
005c1d4c  00 00 51 e3                                      cmp r1, #0
005c1d50  10 00 00 0a                                      beq #0x5c1d98
005c1d54  d0 50 9f e5                                      ldr r5, [pc, #0xd0]
005c1d58  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c1d5c  05 c0 9c e7                                      ldr ip, [ip, r5]
005c1d60  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c1d64  10 00 1c e3                                      tst ip, #0x10
005c1d68  0a 00 00 0a                                      beq #0x5c1d98
005c1d6c  01 c0 73 e2                                      rsbs ip, r3, #1
005c1d70  00 c0 a0 33                                      movlo ip, #0
005c1d74  00 00 53 e3                                      cmp r3, #0
005c1d78  10 00 53 13                                      cmpne r3, #0x10
005c1d7c  0a 00 00 1a                                      bne #0x5c1dac
005c1d80  04 00 51 e3                                      cmp r1, #4
005c1d84  1e 00 00 0a                                      beq #0x5c1e04
005c1d88  00 00 5c e3                                      cmp ip, #0
005c1d8c  06 00 00 0a                                      beq #0x5c1dac
005c1d90  01 00 a0 e3                                      mov r0, #1
005c1d94  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c1d98  00 00 a0 e3                                      mov r0, #0
005c1d9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c1da0  88 10 9f e5                                      ldr r1, [pc, #0x88]
005c1da4  01 40 9c e7                                      ldr r4, [ip, r1]
005c1da8  e6 ff ff ea                                      b #0x5c1d48
005c1dac  04 00 51 e3                                      cmp r1, #4
005c1db0  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c1db4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c1db8  f4 ff ff 1a                                      bne #0x5c1d90
005c1dbc  08 00 94 e5                                      ldr r0, [r4, #8]
005c1dc0  00 00 50 e3                                      cmp r0, #0
005c1dc4  f1 ff ff 0a                                      beq #0x5c1d90
005c1dc8  01 10 8c e0                                      add r1, ip, r1
005c1dcc  00 c0 91 e5                                      ldr ip, [r1]
005c1dd0  01 00 50 e2                                      subs r0, r0, #1
005c1dd4  00 c0 82 e5                                      str ip, [r2]
005c1dd8  04 c0 91 e5                                      ldr ip, [r1, #4]
005c1ddc  04 c0 82 e5                                      str ip, [r2, #4]
005c1de0  08 c0 91 e5                                      ldr ip, [r1, #8]
005c1de4  08 c0 82 e5                                      str ip, [r2, #8]
005c1de8  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c1dec  10 10 81 e2                                      add r1, r1, #0x10
005c1df0  0c c0 82 e5                                      str ip, [r2, #0xc]
005c1df4  03 20 82 e0                                      add r2, r2, r3
005c1df8  f3 ff ff 1a                                      bne #0x5c1dcc
005c1dfc  01 00 a0 e3                                      mov r0, #1
005c1e00  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c1e04  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c1e08  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c1e0c  08 30 94 e5                                      ldr r3, [r4, #8]
005c1e10  02 00 a0 e1                                      mov r0, r2
005c1e14  01 10 8c e0                                      add r1, ip, r1
005c1e18  03 22 a0 e1                                      lsl r2, r3, #4
005c1e1c  91 32 f5 eb                                      bl #0x30e868
005c1e20  01 00 a0 e3                                      mov r0, #1
005c1e24  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c1e28  70 2d 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x70, 0x2d, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c29a4, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<int> >(unsigned short, glitch::core::vector4d<int>*, int) const
; decoder-mode: arm
005c29a4  70 40 2d e9                                      push {r4, r5, r6, lr}
005c29a8  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c29ac  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c29b0  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005c29b4  05 50 64 e0                                      rsb r5, r4, r5
005c29b8  45 51 a0 e1                                      asr r5, r5, #2
005c29bc  0c c0 8f e0                                      add ip, pc, ip
005c29c0  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c29c4  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c29c8  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c29cc  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c29d0  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c29d4  05 00 51 e1                                      cmp r1, r5
005c29d8  09 00 00 2a                                      bhs #0x5c2a04
005c29dc  14 c0 a0 e3                                      mov ip, #0x14
005c29e0  9c 41 24 e0                                      mla r4, ip, r1, r4
005c29e4  00 10 94 e5                                      ldr r1, [r4]
005c29e8  00 00 51 e3                                      cmp r1, #0
005c29ec  02 00 00 0a                                      beq #0x5c29fc
005c29f0  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c29f4  04 00 51 e3                                      cmp r1, #4
005c29f8  04 00 00 0a                                      beq #0x5c2a10
005c29fc  00 00 a0 e3                                      mov r0, #0
005c2a00  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2a04  88 10 9f e5                                      ldr r1, [pc, #0x88]
005c2a08  01 40 9c e7                                      ldr r4, [ip, r1]
005c2a0c  f4 ff ff ea                                      b #0x5c29e4
005c2a10  00 00 53 e3                                      cmp r3, #0
005c2a14  10 00 53 13                                      cmpne r3, #0x10
005c2a18  13 00 00 0a                                      beq #0x5c2a6c
005c2a1c  08 c0 94 e5                                      ldr ip, [r4, #8]
005c2a20  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c2a24  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c2a28  00 00 5c e3                                      cmp ip, #0
005c2a2c  0c 00 00 0a                                      beq #0x5c2a64
005c2a30  01 10 80 e0                                      add r1, r0, r1
005c2a34  00 00 91 e5                                      ldr r0, [r1]
005c2a38  01 c0 5c e2                                      subs ip, ip, #1
005c2a3c  00 00 82 e5                                      str r0, [r2]
005c2a40  04 00 91 e5                                      ldr r0, [r1, #4]
005c2a44  04 00 82 e5                                      str r0, [r2, #4]
005c2a48  08 00 91 e5                                      ldr r0, [r1, #8]
005c2a4c  08 00 82 e5                                      str r0, [r2, #8]
005c2a50  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005c2a54  10 10 81 e2                                      add r1, r1, #0x10
005c2a58  0c 00 82 e5                                      str r0, [r2, #0xc]
005c2a5c  03 20 82 e0                                      add r2, r2, r3
005c2a60  f3 ff ff 1a                                      bne #0x5c2a34
005c2a64  01 00 a0 e3                                      mov r0, #1
005c2a68  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2a6c  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c2a70  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c2a74  08 30 94 e5                                      ldr r3, [r4, #8]
005c2a78  02 00 a0 e1                                      mov r0, r2
005c2a7c  01 10 8c e0                                      add r1, ip, r1
005c2a80  03 22 a0 e1                                      lsl r2, r3, #4
005c2a84  77 2f f5 eb                                      bl #0x30e868
005c2a88  01 00 a0 e3                                      mov r0, #1
005c2a8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c2a90  d4 20 3d 00 14 28 00 00                          .byte 0xd4, 0x20, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c38b0, declared_size=300, range_size=300, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<int> >(unsigned short, glitch::core::vector4d<int> const*, int)
; decoder-mode: arm
005c38b0  70 40 2d e9                                      push {r4, r5, r6, lr}
005c38b4  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c38b8  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c38bc  0c c1 9f e5                                      ldr ip, [pc, #0x10c]
005c38c0  05 50 64 e0                                      rsb r5, r4, r5
005c38c4  45 51 a0 e1                                      asr r5, r5, #2
005c38c8  0c c0 8f e0                                      add ip, pc, ip
005c38cc  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c38d0  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c38d4  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c38d8  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c38dc  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c38e0  05 00 51 e1                                      cmp r1, r5
005c38e4  17 00 00 2a                                      bhs #0x5c3948
005c38e8  14 50 a0 e3                                      mov r5, #0x14
005c38ec  95 41 24 e0                                      mla r4, r5, r1, r4
005c38f0  00 10 94 e5                                      ldr r1, [r4]
005c38f4  00 00 51 e3                                      cmp r1, #0
005c38f8  10 00 00 0a                                      beq #0x5c3940
005c38fc  d0 50 9f e5                                      ldr r5, [pc, #0xd0]
005c3900  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c3904  05 c0 9c e7                                      ldr ip, [ip, r5]
005c3908  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c390c  10 00 1c e3                                      tst ip, #0x10
005c3910  0a 00 00 0a                                      beq #0x5c3940
005c3914  01 c0 73 e2                                      rsbs ip, r3, #1
005c3918  00 c0 a0 33                                      movlo ip, #0
005c391c  00 00 53 e3                                      cmp r3, #0
005c3920  10 00 53 13                                      cmpne r3, #0x10
005c3924  0a 00 00 1a                                      bne #0x5c3954
005c3928  04 00 51 e3                                      cmp r1, #4
005c392c  1e 00 00 0a                                      beq #0x5c39ac
005c3930  00 00 5c e3                                      cmp ip, #0
005c3934  06 00 00 0a                                      beq #0x5c3954
005c3938  01 00 a0 e3                                      mov r0, #1
005c393c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c3940  00 00 a0 e3                                      mov r0, #0
005c3944  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c3948  88 10 9f e5                                      ldr r1, [pc, #0x88]
005c394c  01 40 9c e7                                      ldr r4, [ip, r1]
005c3950  e6 ff ff ea                                      b #0x5c38f0
005c3954  04 00 51 e3                                      cmp r1, #4
005c3958  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c395c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c3960  f4 ff ff 1a                                      bne #0x5c3938
005c3964  08 00 94 e5                                      ldr r0, [r4, #8]
005c3968  00 00 50 e3                                      cmp r0, #0
005c396c  f1 ff ff 0a                                      beq #0x5c3938
005c3970  01 10 8c e0                                      add r1, ip, r1
005c3974  00 c0 92 e5                                      ldr ip, [r2]
005c3978  01 00 50 e2                                      subs r0, r0, #1
005c397c  00 c0 81 e5                                      str ip, [r1]
005c3980  04 c0 92 e5                                      ldr ip, [r2, #4]
005c3984  04 c0 81 e5                                      str ip, [r1, #4]
005c3988  08 c0 92 e5                                      ldr ip, [r2, #8]
005c398c  08 c0 81 e5                                      str ip, [r1, #8]
005c3990  0c c0 92 e5                                      ldr ip, [r2, #0xc]
005c3994  03 20 82 e0                                      add r2, r2, r3
005c3998  0c c0 81 e5                                      str ip, [r1, #0xc]
005c399c  10 10 81 e2                                      add r1, r1, #0x10
005c39a0  f3 ff ff 1a                                      bne #0x5c3974
005c39a4  01 00 a0 e3                                      mov r0, #1
005c39a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c39ac  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c39b0  08 c0 94 e5                                      ldr ip, [r4, #8]
005c39b4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c39b8  02 10 a0 e1                                      mov r1, r2
005c39bc  0c 22 a0 e1                                      lsl r2, ip, #4
005c39c0  03 00 80 e0                                      add r0, r0, r3
005c39c4  a7 2b f5 eb                                      bl #0x30e868
005c39c8  01 00 a0 e3                                      mov r0, #1
005c39cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c39d0  c8 11 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xc8, 0x11, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c442c, declared_size=212, range_size=212, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<int> >(unsigned short, unsigned int, glitch::core::vector4d<int> const&)
; decoder-mode: arm
005c442c  70 00 2d e9                                      push {r4, r5, r6}
005c4430  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4434  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4438  b4 c0 9f e5                                      ldr ip, [pc, #0xb4]
005c443c  05 50 64 e0                                      rsb r5, r4, r5
005c4440  45 51 a0 e1                                      asr r5, r5, #2
005c4444  0c c0 8f e0                                      add ip, pc, ip
005c4448  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c444c  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c4450  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c4454  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c4458  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c445c  05 00 51 e1                                      cmp r1, r5
005c4460  20 00 00 2a                                      bhs #0x5c44e8
005c4464  14 50 a0 e3                                      mov r5, #0x14
005c4468  95 41 24 e0                                      mla r4, r5, r1, r4
005c446c  00 10 94 e5                                      ldr r1, [r4]
005c4470  00 00 51 e3                                      cmp r1, #0
005c4474  18 00 00 0a                                      beq #0x5c44dc
005c4478  78 50 9f e5                                      ldr r5, [pc, #0x78]
005c447c  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c4480  05 c0 9c e7                                      ldr ip, [ip, r5]
005c4484  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005c4488  10 00 1c e3                                      tst ip, #0x10
005c448c  12 00 00 0a                                      beq #0x5c44dc
005c4490  08 c0 94 e5                                      ldr ip, [r4, #8]
005c4494  0c 00 52 e1                                      cmp r2, ip
005c4498  0f 00 00 2a                                      bhs #0x5c44dc
005c449c  04 00 51 e3                                      cmp r1, #4
005c44a0  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c44a4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c44a8  01 00 a0 13                                      movne r0, #1
005c44ac  0b 00 00 1a                                      bne #0x5c44e0
005c44b0  00 40 93 e5                                      ldr r4, [r3]
005c44b4  01 20 8c e0                                      add r2, ip, r1
005c44b8  01 00 a0 e3                                      mov r0, #1
005c44bc  01 40 8c e7                                      str r4, [ip, r1]
005c44c0  04 10 93 e5                                      ldr r1, [r3, #4]
005c44c4  04 10 82 e5                                      str r1, [r2, #4]
005c44c8  08 10 93 e5                                      ldr r1, [r3, #8]
005c44cc  08 10 82 e5                                      str r1, [r2, #8]
005c44d0  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005c44d4  0c 30 82 e5                                      str r3, [r2, #0xc]
005c44d8  00 00 00 ea                                      b #0x5c44e0
005c44dc  00 00 a0 e3                                      mov r0, #0
005c44e0  70 00 bd e8                                      pop {r4, r5, r6}
005c44e4  1e ff 2f e1                                      bx lr
005c44e8  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005c44ec  01 40 9c e7                                      ldr r4, [ip, r1]
005c44f0  dd ff ff ea                                      b #0x5c446c
; mapping-symbol data/literal pool
005c44f4  4c 06 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x4c, 0x06, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4c50, declared_size=188, range_size=188, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<int> >(unsigned short, unsigned int, glitch::core::vector4d<int> const&)
; decoder-mode: arm
005c4c50  70 00 2d e9                                      push {r4, r5, r6}
005c4c54  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4c58  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4c5c  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
005c4c60  05 50 64 e0                                      rsb r5, r4, r5
005c4c64  45 51 a0 e1                                      asr r5, r5, #2
005c4c68  0c c0 8f e0                                      add ip, pc, ip
005c4c6c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c4c70  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c4c74  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c4c78  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c4c7c  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c4c80  05 00 51 e1                                      cmp r1, r5
005c4c84  1b 00 00 2a                                      bhs #0x5c4cf8
005c4c88  14 c0 a0 e3                                      mov ip, #0x14
005c4c8c  9c 41 24 e0                                      mla r4, ip, r1, r4
005c4c90  00 10 94 e5                                      ldr r1, [r4]
005c4c94  00 00 51 e3                                      cmp r1, #0
005c4c98  02 00 00 0a                                      beq #0x5c4ca8
005c4c9c  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c4ca0  04 00 51 e3                                      cmp r1, #4
005c4ca4  02 00 00 0a                                      beq #0x5c4cb4
005c4ca8  00 00 a0 e3                                      mov r0, #0
005c4cac  70 00 bd e8                                      pop {r4, r5, r6}
005c4cb0  1e ff 2f e1                                      bx lr
005c4cb4  08 10 94 e5                                      ldr r1, [r4, #8]
005c4cb8  01 00 52 e1                                      cmp r2, r1
005c4cbc  f9 ff ff 2a                                      bhs #0x5c4ca8
005c4cc0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c4cc4  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c4cc8  00 c0 93 e5                                      ldr ip, [r3]
005c4ccc  02 22 81 e0                                      add r2, r1, r2, lsl #4
005c4cd0  02 10 80 e0                                      add r1, r0, r2
005c4cd4  02 c0 80 e7                                      str ip, [r0, r2]
005c4cd8  04 20 93 e5                                      ldr r2, [r3, #4]
005c4cdc  01 00 a0 e3                                      mov r0, #1
005c4ce0  04 20 81 e5                                      str r2, [r1, #4]
005c4ce4  08 20 93 e5                                      ldr r2, [r3, #8]
005c4ce8  08 20 81 e5                                      str r2, [r1, #8]
005c4cec  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005c4cf0  0c 30 81 e5                                      str r3, [r1, #0xc]
005c4cf4  ec ff ff ea                                      b #0x5c4cac
005c4cf8  08 10 9f e5                                      ldr r1, [pc, #8]
005c4cfc  01 40 9c e7                                      ldr r4, [ip, r1]
005c4d00  e2 ff ff ea                                      b #0x5c4c90
; mapping-symbol data/literal pool
005c4d04  28 fe 3c 00 14 28 00 00                          .byte 0x28, 0xfe, 0x3c, 0x00, 0x14, 0x28, 0x00, 0x00
