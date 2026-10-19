; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005be8e4, declared_size=448, range_size=448, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor&) const
; decoder-mode: arm
005be8e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005be8e8  18 40 90 e5                                      ldr r4, [r0, #0x18]
005be8ec  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005be8f0  a0 c1 9f e5                                      ldr ip, [pc, #0x1a0]
005be8f4  03 70 a0 e1                                      mov r7, r3
005be8f8  05 50 64 e0                                      rsb r5, r4, r5
005be8fc  45 51 a0 e1                                      asr r5, r5, #2
005be900  0c c0 8f e0                                      add ip, pc, ip
005be904  85 60 85 e0                                      add r6, r5, r5, lsl #1
005be908  06 62 86 e0                                      add r6, r6, r6, lsl #4
005be90c  06 64 86 e0                                      add r6, r6, r6, lsl #8
005be910  06 68 86 e0                                      add r6, r6, r6, lsl #16
005be914  06 51 85 e0                                      add r5, r5, r6, lsl #2
005be918  05 00 51 e1                                      cmp r1, r5
005be91c  1a 00 00 2a                                      bhs #0x5be98c
005be920  14 30 a0 e3                                      mov r3, #0x14
005be924  93 41 24 e0                                      mla r4, r3, r1, r4
005be928  00 30 94 e5                                      ldr r3, [r4]
005be92c  00 00 53 e3                                      cmp r3, #0
005be930  13 00 00 0a                                      beq #0x5be984
005be934  60 11 9f e5                                      ldr r1, [pc, #0x160]
005be938  06 30 d4 e5                                      ldrb r3, [r4, #6]
005be93c  01 10 9c e7                                      ldr r1, [ip, r1]
005be940  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
005be944  01 08 11 e3                                      tst r1, #0x10000
005be948  0d 00 00 0a                                      beq #0x5be984
005be94c  08 10 94 e5                                      ldr r1, [r4, #8]
005be950  01 00 52 e1                                      cmp r2, r1
005be954  0a 00 00 2a                                      bhs #0x5be984
005be958  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
005be95c  0c 50 94 e5                                      ldr r5, [r4, #0xc]
005be960  10 00 53 e3                                      cmp r3, #0x10
005be964  05 40 86 e0                                      add r4, r6, r5
005be968  0a 00 00 0a                                      beq #0x5be998
005be96c  11 00 53 e3                                      cmp r3, #0x11
005be970  2b 00 00 0a                                      beq #0x5bea24
005be974  08 00 53 e3                                      cmp r3, #8
005be978  0c 00 00 0a                                      beq #0x5be9b0
005be97c  01 00 a0 e3                                      mov r0, #1
005be980  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005be984  00 00 a0 e3                                      mov r0, #0
005be988  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005be98c  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
005be990  03 40 9c e7                                      ldr r4, [ip, r3]
005be994  e3 ff ff ea                                      b #0x5be928
005be998  07 00 a0 e1                                      mov r0, r7
005be99c  04 10 a0 e1                                      mov r1, r4
005be9a0  04 20 a0 e3                                      mov r2, #4
005be9a4  af 3f f5 eb                                      bl #0x30e868
005be9a8  01 00 a0 e3                                      mov r0, #1
005be9ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005be9b0  43 14 a0 e3                                      mov r1, #0x43000000
005be9b4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005be9b8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005be9bc  ea 40 f5 eb                                      bl #0x30ed6c
005be9c0  36 fe 0b eb                                      bl #0x8be2a0
005be9c4  43 14 a0 e3                                      mov r1, #0x43000000
005be9c8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005be9cc  70 80 ef e6                                      uxtb r8, r0
005be9d0  05 00 96 e7                                      ldr r0, [r6, r5]
005be9d4  e4 40 f5 eb                                      bl #0x30ed6c
005be9d8  30 fe 0b eb                                      bl #0x8be2a0
005be9dc  43 14 a0 e3                                      mov r1, #0x43000000
005be9e0  7f 18 81 e2                                      add r1, r1, #0x7f0000
005be9e4  70 60 ef e6                                      uxtb r6, r0
005be9e8  04 00 94 e5                                      ldr r0, [r4, #4]
005be9ec  de 40 f5 eb                                      bl #0x30ed6c
005be9f0  2a fe 0b eb                                      bl #0x8be2a0
005be9f4  43 14 a0 e3                                      mov r1, #0x43000000
005be9f8  70 50 ef e6                                      uxtb r5, r0
005be9fc  7f 18 81 e2                                      add r1, r1, #0x7f0000
005bea00  08 00 94 e5                                      ldr r0, [r4, #8]
005bea04  d8 40 f5 eb                                      bl #0x30ed6c
005bea08  24 fe 0b eb                                      bl #0x8be2a0
005bea0c  00 60 c7 e5                                      strb r6, [r7]
005bea10  02 00 c7 e5                                      strb r0, [r7, #2]
005bea14  03 80 c7 e5                                      strb r8, [r7, #3]
005bea18  01 50 c7 e5                                      strb r5, [r7, #1]
005bea1c  01 00 a0 e3                                      mov r0, #1
005bea20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bea24  43 14 a0 e3                                      mov r1, #0x43000000
005bea28  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005bea2c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005bea30  cd 40 f5 eb                                      bl #0x30ed6c
005bea34  19 fe 0b eb                                      bl #0x8be2a0
005bea38  43 14 a0 e3                                      mov r1, #0x43000000
005bea3c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005bea40  70 80 ef e6                                      uxtb r8, r0
005bea44  05 00 96 e7                                      ldr r0, [r6, r5]
005bea48  c7 40 f5 eb                                      bl #0x30ed6c
005bea4c  13 fe 0b eb                                      bl #0x8be2a0
005bea50  43 14 a0 e3                                      mov r1, #0x43000000
005bea54  7f 18 81 e2                                      add r1, r1, #0x7f0000
005bea58  70 60 ef e6                                      uxtb r6, r0
005bea5c  04 00 94 e5                                      ldr r0, [r4, #4]
005bea60  c1 40 f5 eb                                      bl #0x30ed6c
005bea64  0d fe 0b eb                                      bl #0x8be2a0
005bea68  43 14 a0 e3                                      mov r1, #0x43000000
005bea6c  70 50 ef e6                                      uxtb r5, r0
005bea70  7f 18 81 e2                                      add r1, r1, #0x7f0000
005bea74  08 00 94 e5                                      ldr r0, [r4, #8]
005bea78  bb 40 f5 eb                                      bl #0x30ed6c
005bea7c  07 fe 0b eb                                      bl #0x8be2a0
005bea80  00 60 c7 e5                                      strb r6, [r7]
005bea84  02 00 c7 e5                                      strb r0, [r7, #2]
005bea88  03 80 c7 e5                                      strb r8, [r7, #3]
005bea8c  01 50 c7 e5                                      strb r5, [r7, #1]
005bea90  01 00 a0 e3                                      mov r0, #1
005bea94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005bea98  90 61 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x90, 0x61, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bf738, declared_size=164, range_size=164, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor&) const
; decoder-mode: arm
005bf738  70 40 2d e9                                      push {r4, r5, r6, lr}
005bf73c  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bf740  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bf744  88 c0 9f e5                                      ldr ip, [pc, #0x88]
005bf748  05 50 64 e0                                      rsb r5, r4, r5
005bf74c  45 51 a0 e1                                      asr r5, r5, #2
005bf750  0c c0 8f e0                                      add ip, pc, ip
005bf754  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bf758  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bf75c  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bf760  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bf764  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bf768  05 00 51 e1                                      cmp r1, r5
005bf76c  09 00 00 2a                                      bhs #0x5bf798
005bf770  14 c0 a0 e3                                      mov ip, #0x14
005bf774  9c 41 24 e0                                      mla r4, ip, r1, r4
005bf778  00 10 94 e5                                      ldr r1, [r4]
005bf77c  00 00 51 e3                                      cmp r1, #0
005bf780  02 00 00 0a                                      beq #0x5bf790
005bf784  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bf788  10 00 51 e3                                      cmp r1, #0x10
005bf78c  04 00 00 0a                                      beq #0x5bf7a4
005bf790  00 00 a0 e3                                      mov r0, #0
005bf794  70 80 bd e8                                      pop {r4, r5, r6, pc}
005bf798  38 10 9f e5                                      ldr r1, [pc, #0x38]
005bf79c  01 40 9c e7                                      ldr r4, [ip, r1]
005bf7a0  f4 ff ff ea                                      b #0x5bf778
005bf7a4  08 10 94 e5                                      ldr r1, [r4, #8]
005bf7a8  01 00 52 e1                                      cmp r2, r1
005bf7ac  f7 ff ff 2a                                      bhs #0x5bf790
005bf7b0  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005bf7b4  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bf7b8  03 00 a0 e1                                      mov r0, r3
005bf7bc  02 21 8c e0                                      add r2, ip, r2, lsl #2
005bf7c0  02 10 81 e0                                      add r1, r1, r2
005bf7c4  04 20 a0 e3                                      mov r2, #4
005bf7c8  26 3c f5 eb                                      bl #0x30e868
005bf7cc  01 00 a0 e3                                      mov r0, #1
005bf7d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005bf7d4  40 53 3d 00 14 28 00 00                          .byte 0x40, 0x53, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c00ac, declared_size=248, range_size=248, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColor>(unsigned short, glitch::video::SColor const*, int)
; decoder-mode: arm
005c00ac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c00b0  18 50 90 e5                                      ldr r5, [r0, #0x18]
005c00b4  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005c00b8  dc c0 9f e5                                      ldr ip, [pc, #0xdc]
005c00bc  04 40 65 e0                                      rsb r4, r5, r4
005c00c0  44 61 a0 e1                                      asr r6, r4, #2
005c00c4  02 40 a0 e1                                      mov r4, r2
005c00c8  86 70 86 e0                                      add r7, r6, r6, lsl #1
005c00cc  0c c0 8f e0                                      add ip, pc, ip
005c00d0  07 22 87 e0                                      add r2, r7, r7, lsl #4
005c00d4  03 70 a0 e1                                      mov r7, r3
005c00d8  02 24 82 e0                                      add r2, r2, r2, lsl #8
005c00dc  02 28 82 e0                                      add r2, r2, r2, lsl #16
005c00e0  02 61 86 e0                                      add r6, r6, r2, lsl #2
005c00e4  06 00 51 e1                                      cmp r1, r6
005c00e8  09 00 00 2a                                      bhs #0x5c0114
005c00ec  14 30 a0 e3                                      mov r3, #0x14
005c00f0  93 51 25 e0                                      mla r5, r3, r1, r5
005c00f4  00 30 95 e5                                      ldr r3, [r5]
005c00f8  00 00 53 e3                                      cmp r3, #0
005c00fc  02 00 00 0a                                      beq #0x5c010c
005c0100  06 30 d5 e5                                      ldrb r3, [r5, #6]
005c0104  10 00 53 e3                                      cmp r3, #0x10
005c0108  04 00 00 0a                                      beq #0x5c0120
005c010c  00 00 a0 e3                                      mov r0, #0
005c0110  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c0114  84 30 9f e5                                      ldr r3, [pc, #0x84]
005c0118  03 50 9c e7                                      ldr r5, [ip, r3]
005c011c  f4 ff ff ea                                      b #0x5c00f4
005c0120  00 00 57 e3                                      cmp r7, #0
005c0124  04 00 57 13                                      cmpne r7, #4
005c0128  00 60 a0 13                                      movne r6, #0
005c012c  01 60 a0 03                                      moveq r6, #1
005c0130  10 00 00 0a                                      beq #0x5c0178
005c0134  08 80 95 e5                                      ldr r8, [r5, #8]
005c0138  2c a0 90 e5                                      ldr sl, [r0, #0x2c]
005c013c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005c0140  00 00 58 e3                                      cmp r8, #0
005c0144  09 00 00 0a                                      beq #0x5c0170
005c0148  03 a0 8a e0                                      add sl, sl, r3
005c014c  06 50 a0 e1                                      mov r5, r6
005c0150  05 01 8a e0                                      add r0, sl, r5, lsl #2
005c0154  06 10 84 e0                                      add r1, r4, r6
005c0158  01 50 85 e2                                      add r5, r5, #1
005c015c  04 20 a0 e3                                      mov r2, #4
005c0160  c0 39 f5 eb                                      bl #0x30e868
005c0164  05 00 58 e1                                      cmp r8, r5
005c0168  07 60 86 e0                                      add r6, r6, r7
005c016c  f7 ff ff 1a                                      bne #0x5c0150
005c0170  01 00 a0 e3                                      mov r0, #1
005c0174  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c0178  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c017c  08 20 95 e5                                      ldr r2, [r5, #8]
005c0180  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005c0184  04 10 a0 e1                                      mov r1, r4
005c0188  02 21 a0 e1                                      lsl r2, r2, #2
005c018c  03 00 80 e0                                      add r0, r0, r3
005c0190  b4 39 f5 eb                                      bl #0x30e868
005c0194  01 00 a0 e3                                      mov r0, #1
005c0198  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005c019c  c4 49 3d 00 14 28 00 00                          .byte 0xc4, 0x49, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c14b8, declared_size=608, range_size=608, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColor>(unsigned short, glitch::video::SColor*, int) const
; decoder-mode: arm
005c14b8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c14bc  18 60 90 e5                                      ldr r6, [r0, #0x18]
005c14c0  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005c14c4  40 c2 9f e5                                      ldr ip, [pc, #0x240]
005c14c8  04 40 66 e0                                      rsb r4, r6, r4
005c14cc  44 71 a0 e1                                      asr r7, r4, #2
005c14d0  02 40 a0 e1                                      mov r4, r2
005c14d4  87 50 87 e0                                      add r5, r7, r7, lsl #1
005c14d8  0c c0 8f e0                                      add ip, pc, ip
005c14dc  05 22 85 e0                                      add r2, r5, r5, lsl #4
005c14e0  03 50 a0 e1                                      mov r5, r3
005c14e4  02 24 82 e0                                      add r2, r2, r2, lsl #8
005c14e8  02 28 82 e0                                      add r2, r2, r2, lsl #16
005c14ec  02 71 87 e0                                      add r7, r7, r2, lsl #2
005c14f0  07 00 51 e1                                      cmp r1, r7
005c14f4  17 00 00 2a                                      bhs #0x5c1558
005c14f8  14 30 a0 e3                                      mov r3, #0x14
005c14fc  93 61 26 e0                                      mla r6, r3, r1, r6
005c1500  00 30 96 e5                                      ldr r3, [r6]
005c1504  00 00 53 e3                                      cmp r3, #0
005c1508  10 00 00 0a                                      beq #0x5c1550
005c150c  fc 21 9f e5                                      ldr r2, [pc, #0x1fc]
005c1510  06 30 d6 e5                                      ldrb r3, [r6, #6]
005c1514  02 20 9c e7                                      ldr r2, [ip, r2]
005c1518  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c151c  01 08 12 e3                                      tst r2, #0x10000
005c1520  0a 00 00 0a                                      beq #0x5c1550
005c1524  01 20 75 e2                                      rsbs r2, r5, #1
005c1528  00 20 a0 33                                      movlo r2, #0
005c152c  00 00 55 e3                                      cmp r5, #0
005c1530  04 00 55 13                                      cmpne r5, #4
005c1534  0a 00 00 1a                                      bne #0x5c1564
005c1538  10 00 53 e3                                      cmp r3, #0x10
005c153c  5b 00 00 0a                                      beq #0x5c16b0
005c1540  00 00 52 e3                                      cmp r2, #0
005c1544  06 00 00 0a                                      beq #0x5c1564
005c1548  01 00 a0 e3                                      mov r0, #1
005c154c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c1550  00 00 a0 e3                                      mov r0, #0
005c1554  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c1558  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
005c155c  03 60 9c e7                                      ldr r6, [ip, r3]
005c1560  e6 ff ff ea                                      b #0x5c1500
005c1564  2c 80 90 e5                                      ldr r8, [r0, #0x2c]
005c1568  0c 20 96 e5                                      ldr r2, [r6, #0xc]
005c156c  10 00 53 e3                                      cmp r3, #0x10
005c1570  02 80 88 e0                                      add r8, r8, r2
005c1574  56 00 00 0a                                      beq #0x5c16d4
005c1578  11 00 53 e3                                      cmp r3, #0x11
005c157c  26 00 00 0a                                      beq #0x5c161c
005c1580  08 00 53 e3                                      cmp r3, #8
005c1584  ef ff ff 1a                                      bne #0x5c1548
005c1588  08 90 96 e5                                      ldr sb, [r6, #8]
005c158c  09 92 88 e0                                      add sb, r8, sb, lsl #4
005c1590  09 00 58 e1                                      cmp r8, sb
005c1594  01 00 00 1a                                      bne #0x5c15a0
005c1598  ea ff ff ea                                      b #0x5c1548
005c159c  05 40 84 e0                                      add r4, r4, r5
005c15a0  43 14 a0 e3                                      mov r1, #0x43000000
005c15a4  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005c15a8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c15ac  ee 35 f5 eb                                      bl #0x30ed6c
005c15b0  3a f3 0b eb                                      bl #0x8be2a0
005c15b4  43 14 a0 e3                                      mov r1, #0x43000000
005c15b8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c15bc  70 a0 ef e6                                      uxtb sl, r0
005c15c0  00 00 98 e5                                      ldr r0, [r8]
005c15c4  e8 35 f5 eb                                      bl #0x30ed6c
005c15c8  34 f3 0b eb                                      bl #0x8be2a0
005c15cc  43 14 a0 e3                                      mov r1, #0x43000000
005c15d0  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c15d4  70 60 ef e6                                      uxtb r6, r0
005c15d8  04 00 98 e5                                      ldr r0, [r8, #4]
005c15dc  e2 35 f5 eb                                      bl #0x30ed6c
005c15e0  2e f3 0b eb                                      bl #0x8be2a0
005c15e4  43 14 a0 e3                                      mov r1, #0x43000000
005c15e8  70 70 ef e6                                      uxtb r7, r0
005c15ec  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c15f0  08 00 98 e5                                      ldr r0, [r8, #8]
005c15f4  dc 35 f5 eb                                      bl #0x30ed6c
005c15f8  28 f3 0b eb                                      bl #0x8be2a0
005c15fc  10 80 88 e2                                      add r8, r8, #0x10
005c1600  08 00 59 e1                                      cmp sb, r8
005c1604  03 a0 c4 e5                                      strb sl, [r4, #3]
005c1608  02 00 c4 e5                                      strb r0, [r4, #2]
005c160c  01 70 c4 e5                                      strb r7, [r4, #1]
005c1610  00 60 c4 e5                                      strb r6, [r4]
005c1614  e0 ff ff 1a                                      bne #0x5c159c
005c1618  ca ff ff ea                                      b #0x5c1548
005c161c  08 90 96 e5                                      ldr sb, [r6, #8]
005c1620  09 92 88 e0                                      add sb, r8, sb, lsl #4
005c1624  09 00 58 e1                                      cmp r8, sb
005c1628  01 00 00 1a                                      bne #0x5c1634
005c162c  c5 ff ff ea                                      b #0x5c1548
005c1630  05 40 84 e0                                      add r4, r4, r5
005c1634  43 14 a0 e3                                      mov r1, #0x43000000
005c1638  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005c163c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c1640  c9 35 f5 eb                                      bl #0x30ed6c
005c1644  15 f3 0b eb                                      bl #0x8be2a0
005c1648  43 14 a0 e3                                      mov r1, #0x43000000
005c164c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c1650  70 a0 ef e6                                      uxtb sl, r0
005c1654  00 00 98 e5                                      ldr r0, [r8]
005c1658  c3 35 f5 eb                                      bl #0x30ed6c
005c165c  0f f3 0b eb                                      bl #0x8be2a0
005c1660  43 14 a0 e3                                      mov r1, #0x43000000
005c1664  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c1668  70 60 ef e6                                      uxtb r6, r0
005c166c  04 00 98 e5                                      ldr r0, [r8, #4]
005c1670  bd 35 f5 eb                                      bl #0x30ed6c
005c1674  09 f3 0b eb                                      bl #0x8be2a0
005c1678  43 14 a0 e3                                      mov r1, #0x43000000
005c167c  70 70 ef e6                                      uxtb r7, r0
005c1680  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c1684  08 00 98 e5                                      ldr r0, [r8, #8]
005c1688  b7 35 f5 eb                                      bl #0x30ed6c
005c168c  03 f3 0b eb                                      bl #0x8be2a0
005c1690  10 80 88 e2                                      add r8, r8, #0x10
005c1694  08 00 59 e1                                      cmp sb, r8
005c1698  03 a0 c4 e5                                      strb sl, [r4, #3]
005c169c  02 00 c4 e5                                      strb r0, [r4, #2]
005c16a0  01 70 c4 e5                                      strb r7, [r4, #1]
005c16a4  00 60 c4 e5                                      strb r6, [r4]
005c16a8  e0 ff ff 1a                                      bne #0x5c1630
005c16ac  a5 ff ff ea                                      b #0x5c1548
005c16b0  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c16b4  0c 30 96 e5                                      ldr r3, [r6, #0xc]
005c16b8  08 20 96 e5                                      ldr r2, [r6, #8]
005c16bc  04 00 a0 e1                                      mov r0, r4
005c16c0  03 10 81 e0                                      add r1, r1, r3
005c16c4  02 21 a0 e1                                      lsl r2, r2, #2
005c16c8  66 34 f5 eb                                      bl #0x30e868
005c16cc  01 00 a0 e3                                      mov r0, #1
005c16d0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c16d4  08 a0 96 e5                                      ldr sl, [r6, #8]
005c16d8  00 00 5a e3                                      cmp sl, #0
005c16dc  99 ff ff 0a                                      beq #0x5c1548
005c16e0  00 70 a0 e3                                      mov r7, #0
005c16e4  07 60 a0 e1                                      mov r6, r7
005c16e8  07 00 84 e0                                      add r0, r4, r7
005c16ec  06 11 88 e0                                      add r1, r8, r6, lsl #2
005c16f0  04 20 a0 e3                                      mov r2, #4
005c16f4  01 60 86 e2                                      add r6, r6, #1
005c16f8  5a 34 f5 eb                                      bl #0x30e868
005c16fc  06 00 5a e1                                      cmp sl, r6
005c1700  05 70 87 e0                                      add r7, r7, r5
005c1704  f7 ff ff 1a                                      bne #0x5c16e8
005c1708  8e ff ff ea                                      b #0x5c1548
; mapping-symbol data/literal pool
005c170c  b8 35 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xb8, 0x35, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c23e0, declared_size=248, range_size=248, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColor>(unsigned short, glitch::video::SColor*, int) const
; decoder-mode: arm
005c23e0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c23e4  18 50 90 e5                                      ldr r5, [r0, #0x18]
005c23e8  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005c23ec  dc c0 9f e5                                      ldr ip, [pc, #0xdc]
005c23f0  04 40 65 e0                                      rsb r4, r5, r4
005c23f4  44 61 a0 e1                                      asr r6, r4, #2
005c23f8  02 40 a0 e1                                      mov r4, r2
005c23fc  86 70 86 e0                                      add r7, r6, r6, lsl #1
005c2400  0c c0 8f e0                                      add ip, pc, ip
005c2404  07 22 87 e0                                      add r2, r7, r7, lsl #4
005c2408  03 70 a0 e1                                      mov r7, r3
005c240c  02 24 82 e0                                      add r2, r2, r2, lsl #8
005c2410  02 28 82 e0                                      add r2, r2, r2, lsl #16
005c2414  02 61 86 e0                                      add r6, r6, r2, lsl #2
005c2418  06 00 51 e1                                      cmp r1, r6
005c241c  09 00 00 2a                                      bhs #0x5c2448
005c2420  14 30 a0 e3                                      mov r3, #0x14
005c2424  93 51 25 e0                                      mla r5, r3, r1, r5
005c2428  00 30 95 e5                                      ldr r3, [r5]
005c242c  00 00 53 e3                                      cmp r3, #0
005c2430  02 00 00 0a                                      beq #0x5c2440
005c2434  06 30 d5 e5                                      ldrb r3, [r5, #6]
005c2438  10 00 53 e3                                      cmp r3, #0x10
005c243c  04 00 00 0a                                      beq #0x5c2454
005c2440  00 00 a0 e3                                      mov r0, #0
005c2444  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c2448  84 30 9f e5                                      ldr r3, [pc, #0x84]
005c244c  03 50 9c e7                                      ldr r5, [ip, r3]
005c2450  f4 ff ff ea                                      b #0x5c2428
005c2454  00 00 57 e3                                      cmp r7, #0
005c2458  04 00 57 13                                      cmpne r7, #4
005c245c  00 60 a0 13                                      movne r6, #0
005c2460  01 60 a0 03                                      moveq r6, #1
005c2464  10 00 00 0a                                      beq #0x5c24ac
005c2468  08 80 95 e5                                      ldr r8, [r5, #8]
005c246c  2c a0 90 e5                                      ldr sl, [r0, #0x2c]
005c2470  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005c2474  00 00 58 e3                                      cmp r8, #0
005c2478  09 00 00 0a                                      beq #0x5c24a4
005c247c  03 a0 8a e0                                      add sl, sl, r3
005c2480  06 50 a0 e1                                      mov r5, r6
005c2484  06 00 84 e0                                      add r0, r4, r6
005c2488  05 11 8a e0                                      add r1, sl, r5, lsl #2
005c248c  04 20 a0 e3                                      mov r2, #4
005c2490  01 50 85 e2                                      add r5, r5, #1
005c2494  f3 30 f5 eb                                      bl #0x30e868
005c2498  05 00 58 e1                                      cmp r8, r5
005c249c  07 60 86 e0                                      add r6, r6, r7
005c24a0  f7 ff ff 1a                                      bne #0x5c2484
005c24a4  01 00 a0 e3                                      mov r0, #1
005c24a8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c24ac  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c24b0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005c24b4  08 20 95 e5                                      ldr r2, [r5, #8]
005c24b8  04 00 a0 e1                                      mov r0, r4
005c24bc  03 10 81 e0                                      add r1, r1, r3
005c24c0  02 21 a0 e1                                      lsl r2, r2, #2
005c24c4  e7 30 f5 eb                                      bl #0x30e868
005c24c8  01 00 a0 e3                                      mov r0, #1
005c24cc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005c24d0  90 26 3d 00 14 28 00 00                          .byte 0x90, 0x26, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c30b0, declared_size=600, range_size=600, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColor>(unsigned short, glitch::video::SColor const*, int)
; decoder-mode: arm
005c30b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c30b4  18 60 90 e5                                      ldr r6, [r0, #0x18]
005c30b8  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005c30bc  38 c2 9f e5                                      ldr ip, [pc, #0x238]
005c30c0  04 40 66 e0                                      rsb r4, r6, r4
005c30c4  44 71 a0 e1                                      asr r7, r4, #2
005c30c8  02 40 a0 e1                                      mov r4, r2
005c30cc  87 50 87 e0                                      add r5, r7, r7, lsl #1
005c30d0  0c c0 8f e0                                      add ip, pc, ip
005c30d4  05 22 85 e0                                      add r2, r5, r5, lsl #4
005c30d8  03 50 a0 e1                                      mov r5, r3
005c30dc  02 24 82 e0                                      add r2, r2, r2, lsl #8
005c30e0  02 28 82 e0                                      add r2, r2, r2, lsl #16
005c30e4  02 71 87 e0                                      add r7, r7, r2, lsl #2
005c30e8  07 00 51 e1                                      cmp r1, r7
005c30ec  17 00 00 2a                                      bhs #0x5c3150
005c30f0  14 30 a0 e3                                      mov r3, #0x14
005c30f4  93 61 26 e0                                      mla r6, r3, r1, r6
005c30f8  00 30 96 e5                                      ldr r3, [r6]
005c30fc  00 00 53 e3                                      cmp r3, #0
005c3100  10 00 00 0a                                      beq #0x5c3148
005c3104  f4 21 9f e5                                      ldr r2, [pc, #0x1f4]
005c3108  06 30 d6 e5                                      ldrb r3, [r6, #6]
005c310c  02 20 9c e7                                      ldr r2, [ip, r2]
005c3110  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c3114  01 08 12 e3                                      tst r2, #0x10000
005c3118  0a 00 00 0a                                      beq #0x5c3148
005c311c  01 20 75 e2                                      rsbs r2, r5, #1
005c3120  00 20 a0 33                                      movlo r2, #0
005c3124  00 00 55 e3                                      cmp r5, #0
005c3128  04 00 55 13                                      cmpne r5, #4
005c312c  0a 00 00 1a                                      bne #0x5c315c
005c3130  10 00 53 e3                                      cmp r3, #0x10
005c3134  59 00 00 0a                                      beq #0x5c32a0
005c3138  00 00 52 e3                                      cmp r2, #0
005c313c  06 00 00 0a                                      beq #0x5c315c
005c3140  01 00 a0 e3                                      mov r0, #1
005c3144  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c3148  00 00 a0 e3                                      mov r0, #0
005c314c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c3150  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
005c3154  03 60 9c e7                                      ldr r6, [ip, r3]
005c3158  e6 ff ff ea                                      b #0x5c30f8
005c315c  2c 80 90 e5                                      ldr r8, [r0, #0x2c]
005c3160  0c 20 96 e5                                      ldr r2, [r6, #0xc]
005c3164  10 00 53 e3                                      cmp r3, #0x10
005c3168  02 80 88 e0                                      add r8, r8, r2
005c316c  54 00 00 0a                                      beq #0x5c32c4
005c3170  11 00 53 e3                                      cmp r3, #0x11
005c3174  25 00 00 0a                                      beq #0x5c3210
005c3178  08 00 53 e3                                      cmp r3, #8
005c317c  ef ff ff 1a                                      bne #0x5c3140
005c3180  08 90 96 e5                                      ldr sb, [r6, #8]
005c3184  09 92 88 e0                                      add sb, r8, sb, lsl #4
005c3188  09 00 58 e1                                      cmp r8, sb
005c318c  01 00 00 1a                                      bne #0x5c3198
005c3190  ea ff ff ea                                      b #0x5c3140
005c3194  05 40 84 e0                                      add r4, r4, r5
005c3198  00 00 d4 e5                                      ldrb r0, [r4]
005c319c  f0 2d f5 eb                                      bl #0x30e964
005c31a0  81 10 08 e3                                      movw r1, #0x8081
005c31a4  80 1b 43 e3                                      movt r1, #0x3b80
005c31a8  ef 2e f5 eb                                      bl #0x30ed6c
005c31ac  00 60 a0 e1                                      mov r6, r0
005c31b0  01 00 d4 e5                                      ldrb r0, [r4, #1]
005c31b4  ea 2d f5 eb                                      bl #0x30e964
005c31b8  81 10 08 e3                                      movw r1, #0x8081
005c31bc  80 1b 43 e3                                      movt r1, #0x3b80
005c31c0  e9 2e f5 eb                                      bl #0x30ed6c
005c31c4  00 70 a0 e1                                      mov r7, r0
005c31c8  02 00 d4 e5                                      ldrb r0, [r4, #2]
005c31cc  e4 2d f5 eb                                      bl #0x30e964
005c31d0  81 10 08 e3                                      movw r1, #0x8081
005c31d4  80 1b 43 e3                                      movt r1, #0x3b80
005c31d8  e3 2e f5 eb                                      bl #0x30ed6c
005c31dc  00 a0 a0 e1                                      mov sl, r0
005c31e0  03 00 d4 e5                                      ldrb r0, [r4, #3]
005c31e4  de 2d f5 eb                                      bl #0x30e964
005c31e8  81 10 08 e3                                      movw r1, #0x8081
005c31ec  80 1b 43 e3                                      movt r1, #0x3b80
005c31f0  dd 2e f5 eb                                      bl #0x30ed6c
005c31f4  08 a0 88 e5                                      str sl, [r8, #8]
005c31f8  0c 00 88 e5                                      str r0, [r8, #0xc]
005c31fc  04 70 88 e5                                      str r7, [r8, #4]
005c3200  10 60 88 e4                                      str r6, [r8], #0x10
005c3204  08 00 59 e1                                      cmp sb, r8
005c3208  e1 ff ff 1a                                      bne #0x5c3194
005c320c  cb ff ff ea                                      b #0x5c3140
005c3210  08 90 96 e5                                      ldr sb, [r6, #8]
005c3214  09 92 88 e0                                      add sb, r8, sb, lsl #4
005c3218  09 00 58 e1                                      cmp r8, sb
005c321c  01 00 00 1a                                      bne #0x5c3228
005c3220  c6 ff ff ea                                      b #0x5c3140
005c3224  05 40 84 e0                                      add r4, r4, r5
005c3228  00 00 d4 e5                                      ldrb r0, [r4]
005c322c  cc 2d f5 eb                                      bl #0x30e964
005c3230  81 10 08 e3                                      movw r1, #0x8081
005c3234  80 1b 43 e3                                      movt r1, #0x3b80
005c3238  cb 2e f5 eb                                      bl #0x30ed6c
005c323c  00 60 a0 e1                                      mov r6, r0
005c3240  01 00 d4 e5                                      ldrb r0, [r4, #1]
005c3244  c6 2d f5 eb                                      bl #0x30e964
005c3248  81 10 08 e3                                      movw r1, #0x8081
005c324c  80 1b 43 e3                                      movt r1, #0x3b80
005c3250  c5 2e f5 eb                                      bl #0x30ed6c
005c3254  00 70 a0 e1                                      mov r7, r0
005c3258  02 00 d4 e5                                      ldrb r0, [r4, #2]
005c325c  c0 2d f5 eb                                      bl #0x30e964
005c3260  81 10 08 e3                                      movw r1, #0x8081
005c3264  80 1b 43 e3                                      movt r1, #0x3b80
005c3268  bf 2e f5 eb                                      bl #0x30ed6c
005c326c  00 a0 a0 e1                                      mov sl, r0
005c3270  03 00 d4 e5                                      ldrb r0, [r4, #3]
005c3274  ba 2d f5 eb                                      bl #0x30e964
005c3278  81 10 08 e3                                      movw r1, #0x8081
005c327c  80 1b 43 e3                                      movt r1, #0x3b80
005c3280  b9 2e f5 eb                                      bl #0x30ed6c
005c3284  08 a0 88 e5                                      str sl, [r8, #8]
005c3288  0c 00 88 e5                                      str r0, [r8, #0xc]
005c328c  04 70 88 e5                                      str r7, [r8, #4]
005c3290  10 60 88 e4                                      str r6, [r8], #0x10
005c3294  08 00 59 e1                                      cmp sb, r8
005c3298  e1 ff ff 1a                                      bne #0x5c3224
005c329c  a7 ff ff ea                                      b #0x5c3140
005c32a0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c32a4  08 20 96 e5                                      ldr r2, [r6, #8]
005c32a8  0c 30 96 e5                                      ldr r3, [r6, #0xc]
005c32ac  04 10 a0 e1                                      mov r1, r4
005c32b0  02 21 a0 e1                                      lsl r2, r2, #2
005c32b4  03 00 80 e0                                      add r0, r0, r3
005c32b8  6a 2d f5 eb                                      bl #0x30e868
005c32bc  01 00 a0 e3                                      mov r0, #1
005c32c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c32c4  08 a0 96 e5                                      ldr sl, [r6, #8]
005c32c8  00 00 5a e3                                      cmp sl, #0
005c32cc  9b ff ff 0a                                      beq #0x5c3140
005c32d0  00 70 a0 e3                                      mov r7, #0
005c32d4  07 60 a0 e1                                      mov r6, r7
005c32d8  06 01 88 e0                                      add r0, r8, r6, lsl #2
005c32dc  07 10 84 e0                                      add r1, r4, r7
005c32e0  01 60 86 e2                                      add r6, r6, #1
005c32e4  04 20 a0 e3                                      mov r2, #4
005c32e8  5e 2d f5 eb                                      bl #0x30e868
005c32ec  06 00 5a e1                                      cmp sl, r6
005c32f0  05 70 87 e0                                      add r7, r7, r5
005c32f4  f7 ff ff 1a                                      bne #0x5c32d8
005c32f8  90 ff ff ea                                      b #0x5c3140
; mapping-symbol data/literal pool
005c32fc  c0 19 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xc0, 0x19, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c3d5c, declared_size=484, range_size=484, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor const&)
; decoder-mode: arm
005c3d5c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c3d60  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c3d64  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c3d68  c4 c1 9f e5                                      ldr ip, [pc, #0x1c4]
005c3d6c  10 d0 4d e2                                      sub sp, sp, #0x10
005c3d70  05 50 64 e0                                      rsb r5, r4, r5
005c3d74  45 51 a0 e1                                      asr r5, r5, #2
005c3d78  0c c0 8f e0                                      add ip, pc, ip
005c3d7c  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c3d80  03 70 a0 e1                                      mov r7, r3
005c3d84  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c3d88  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c3d8c  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c3d90  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c3d94  05 00 51 e1                                      cmp r1, r5
005c3d98  1b 00 00 2a                                      bhs #0x5c3e0c
005c3d9c  14 30 a0 e3                                      mov r3, #0x14
005c3da0  93 41 24 e0                                      mla r4, r3, r1, r4
005c3da4  00 30 94 e5                                      ldr r3, [r4]
005c3da8  00 00 53 e3                                      cmp r3, #0
005c3dac  13 00 00 0a                                      beq #0x5c3e00
005c3db0  80 11 9f e5                                      ldr r1, [pc, #0x180]
005c3db4  06 30 d4 e5                                      ldrb r3, [r4, #6]
005c3db8  01 10 9c e7                                      ldr r1, [ip, r1]
005c3dbc  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
005c3dc0  01 08 11 e3                                      tst r1, #0x10000
005c3dc4  0d 00 00 0a                                      beq #0x5c3e00
005c3dc8  08 10 94 e5                                      ldr r1, [r4, #8]
005c3dcc  01 00 52 e1                                      cmp r2, r1
005c3dd0  0a 00 00 2a                                      bhs #0x5c3e00
005c3dd4  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
005c3dd8  0c 50 94 e5                                      ldr r5, [r4, #0xc]
005c3ddc  10 00 53 e3                                      cmp r3, #0x10
005c3de0  05 40 86 e0                                      add r4, r6, r5
005c3de4  0b 00 00 0a                                      beq #0x5c3e18
005c3de8  11 00 53 e3                                      cmp r3, #0x11
005c3dec  33 00 00 0a                                      beq #0x5c3ec0
005c3df0  08 00 53 e3                                      cmp r3, #8
005c3df4  0d 00 00 0a                                      beq #0x5c3e30
005c3df8  01 00 a0 e3                                      mov r0, #1
005c3dfc  00 00 00 ea                                      b #0x5c3e04
005c3e00  00 00 a0 e3                                      mov r0, #0
005c3e04  10 d0 8d e2                                      add sp, sp, #0x10
005c3e08  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c3e0c  28 31 9f e5                                      ldr r3, [pc, #0x128]
005c3e10  03 40 9c e7                                      ldr r4, [ip, r3]
005c3e14  e2 ff ff ea                                      b #0x5c3da4
005c3e18  04 00 a0 e1                                      mov r0, r4
005c3e1c  07 10 a0 e1                                      mov r1, r7
005c3e20  04 20 a0 e3                                      mov r2, #4
005c3e24  8f 2a f5 eb                                      bl #0x30e868
005c3e28  01 00 a0 e3                                      mov r0, #1
005c3e2c  f4 ff ff ea                                      b #0x5c3e04
005c3e30  00 00 d7 e5                                      ldrb r0, [r7]
005c3e34  ca 2a f5 eb                                      bl #0x30e964
005c3e38  81 10 08 e3                                      movw r1, #0x8081
005c3e3c  80 1b 43 e3                                      movt r1, #0x3b80
005c3e40  c9 2b f5 eb                                      bl #0x30ed6c
005c3e44  01 a0 d7 e5                                      ldrb sl, [r7, #1]
005c3e48  00 80 a0 e1                                      mov r8, r0
005c3e4c  0a 00 a0 e1                                      mov r0, sl
005c3e50  c3 2a f5 eb                                      bl #0x30e964
005c3e54  81 10 08 e3                                      movw r1, #0x8081
005c3e58  80 1b 43 e3                                      movt r1, #0x3b80
005c3e5c  c2 2b f5 eb                                      bl #0x30ed6c
005c3e60  02 30 d7 e5                                      ldrb r3, [r7, #2]
005c3e64  04 00 8d e5                                      str r0, [sp, #4]
005c3e68  03 70 d7 e5                                      ldrb r7, [r7, #3]
005c3e6c  03 00 a0 e1                                      mov r0, r3
005c3e70  bb 2a f5 eb                                      bl #0x30e964
005c3e74  81 10 08 e3                                      movw r1, #0x8081
005c3e78  80 1b 43 e3                                      movt r1, #0x3b80
005c3e7c  ba 2b f5 eb                                      bl #0x30ed6c
005c3e80  08 00 8d e5                                      str r0, [sp, #8]
005c3e84  07 00 a0 e1                                      mov r0, r7
005c3e88  b5 2a f5 eb                                      bl #0x30e964
005c3e8c  81 10 08 e3                                      movw r1, #0x8081
005c3e90  80 1b 43 e3                                      movt r1, #0x3b80
005c3e94  b4 2b f5 eb                                      bl #0x30ed6c
005c3e98  0c 00 8d e5                                      str r0, [sp, #0xc]
005c3e9c  05 80 86 e7                                      str r8, [r6, r5]
005c3ea0  04 30 9d e5                                      ldr r3, [sp, #4]
005c3ea4  01 00 a0 e3                                      mov r0, #1
005c3ea8  04 30 84 e5                                      str r3, [r4, #4]
005c3eac  08 30 9d e5                                      ldr r3, [sp, #8]
005c3eb0  08 30 84 e5                                      str r3, [r4, #8]
005c3eb4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005c3eb8  0c 30 84 e5                                      str r3, [r4, #0xc]
005c3ebc  d0 ff ff ea                                      b #0x5c3e04
005c3ec0  00 00 d7 e5                                      ldrb r0, [r7]
005c3ec4  a6 2a f5 eb                                      bl #0x30e964
005c3ec8  81 10 08 e3                                      movw r1, #0x8081
005c3ecc  80 1b 43 e3                                      movt r1, #0x3b80
005c3ed0  a5 2b f5 eb                                      bl #0x30ed6c
005c3ed4  00 80 a0 e1                                      mov r8, r0
005c3ed8  01 00 d7 e5                                      ldrb r0, [r7, #1]
005c3edc  a0 2a f5 eb                                      bl #0x30e964
005c3ee0  81 10 08 e3                                      movw r1, #0x8081
005c3ee4  80 1b 43 e3                                      movt r1, #0x3b80
005c3ee8  9f 2b f5 eb                                      bl #0x30ed6c
005c3eec  00 90 a0 e1                                      mov sb, r0
005c3ef0  02 00 d7 e5                                      ldrb r0, [r7, #2]
005c3ef4  9a 2a f5 eb                                      bl #0x30e964
005c3ef8  81 10 08 e3                                      movw r1, #0x8081
005c3efc  80 1b 43 e3                                      movt r1, #0x3b80
005c3f00  99 2b f5 eb                                      bl #0x30ed6c
005c3f04  00 a0 a0 e1                                      mov sl, r0
005c3f08  03 00 d7 e5                                      ldrb r0, [r7, #3]
005c3f0c  94 2a f5 eb                                      bl #0x30e964
005c3f10  81 10 08 e3                                      movw r1, #0x8081
005c3f14  80 1b 43 e3                                      movt r1, #0x3b80
005c3f18  93 2b f5 eb                                      bl #0x30ed6c
005c3f1c  04 90 84 e5                                      str sb, [r4, #4]
005c3f20  0c 00 84 e5                                      str r0, [r4, #0xc]
005c3f24  08 a0 84 e5                                      str sl, [r4, #8]
005c3f28  01 00 a0 e3                                      mov r0, #1
005c3f2c  05 80 86 e7                                      str r8, [r6, r5]
005c3f30  b3 ff ff ea                                      b #0x5c3e04
; mapping-symbol data/literal pool
005c3f34  18 0d 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x18, 0x0d, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c47fc, declared_size=164, range_size=164, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor const&)
; decoder-mode: arm
005c47fc  70 40 2d e9                                      push {r4, r5, r6, lr}
005c4800  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4804  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4808  88 c0 9f e5                                      ldr ip, [pc, #0x88]
005c480c  05 50 64 e0                                      rsb r5, r4, r5
005c4810  45 51 a0 e1                                      asr r5, r5, #2
005c4814  0c c0 8f e0                                      add ip, pc, ip
005c4818  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c481c  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c4820  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c4824  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c4828  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c482c  05 00 51 e1                                      cmp r1, r5
005c4830  09 00 00 2a                                      bhs #0x5c485c
005c4834  14 c0 a0 e3                                      mov ip, #0x14
005c4838  9c 41 24 e0                                      mla r4, ip, r1, r4
005c483c  00 c0 94 e5                                      ldr ip, [r4]
005c4840  00 00 5c e3                                      cmp ip, #0
005c4844  02 00 00 0a                                      beq #0x5c4854
005c4848  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c484c  10 00 51 e3                                      cmp r1, #0x10
005c4850  04 00 00 0a                                      beq #0x5c4868
005c4854  00 00 a0 e3                                      mov r0, #0
005c4858  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c485c  38 10 9f e5                                      ldr r1, [pc, #0x38]
005c4860  01 40 9c e7                                      ldr r4, [ip, r1]
005c4864  f4 ff ff ea                                      b #0x5c483c
005c4868  08 10 94 e5                                      ldr r1, [r4, #8]
005c486c  01 00 52 e1                                      cmp r2, r1
005c4870  f7 ff ff 2a                                      bhs #0x5c4854
005c4874  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005c4878  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c487c  03 10 a0 e1                                      mov r1, r3
005c4880  02 21 8c e0                                      add r2, ip, r2, lsl #2
005c4884  02 00 80 e0                                      add r0, r0, r2
005c4888  04 20 a0 e3                                      mov r2, #4
005c488c  f5 27 f5 eb                                      bl #0x30e868
005c4890  01 00 a0 e3                                      mov r0, #1
005c4894  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c4898  7c 02 3d 00 14 28 00 00                          .byte 0x7c, 0x02, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00
