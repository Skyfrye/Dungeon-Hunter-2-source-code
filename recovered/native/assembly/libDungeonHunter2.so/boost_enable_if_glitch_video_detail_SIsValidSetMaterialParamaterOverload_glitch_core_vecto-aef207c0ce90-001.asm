; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005bef98, declared_size=360, range_size=360, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float>&) const
; decoder-mode: arm
005bef98  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005bef9c  18 40 90 e5                                      ldr r4, [r0, #0x18]
005befa0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005befa4  48 c1 9f e5                                      ldr ip, [pc, #0x148]
005befa8  0c d0 4d e2                                      sub sp, sp, #0xc
005befac  05 50 64 e0                                      rsb r5, r4, r5
005befb0  45 51 a0 e1                                      asr r5, r5, #2
005befb4  0c c0 8f e0                                      add ip, pc, ip
005befb8  85 60 85 e0                                      add r6, r5, r5, lsl #1
005befbc  06 62 86 e0                                      add r6, r6, r6, lsl #4
005befc0  06 64 86 e0                                      add r6, r6, r6, lsl #8
005befc4  06 68 86 e0                                      add r6, r6, r6, lsl #16
005befc8  06 51 85 e0                                      add r5, r5, r6, lsl #2
005befcc  05 00 51 e1                                      cmp r1, r5
005befd0  1b 00 00 2a                                      bhs #0x5bf044
005befd4  14 50 a0 e3                                      mov r5, #0x14
005befd8  95 41 24 e0                                      mla r4, r5, r1, r4
005befdc  00 10 94 e5                                      ldr r1, [r4]
005befe0  00 00 51 e3                                      cmp r1, #0
005befe4  13 00 00 0a                                      beq #0x5bf038
005befe8  08 51 9f e5                                      ldr r5, [pc, #0x108]
005befec  06 10 d4 e5                                      ldrb r1, [r4, #6]
005beff0  05 c0 9c e7                                      ldr ip, [ip, r5]
005beff4  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
005beff8  01 0c 1c e3                                      tst ip, #0x100
005beffc  0d 00 00 0a                                      beq #0x5bf038
005bf000  08 c0 94 e5                                      ldr ip, [r4, #8]
005bf004  0c 00 52 e1                                      cmp r2, ip
005bf008  0a 00 00 2a                                      bhs #0x5bf038
005bf00c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005bf010  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005bf014  10 00 51 e3                                      cmp r1, #0x10
005bf018  02 40 80 e0                                      add r4, r0, r2
005bf01c  0b 00 00 0a                                      beq #0x5bf050
005bf020  11 00 51 e3                                      cmp r1, #0x11
005bf024  28 00 00 0a                                      beq #0x5bf0cc
005bf028  08 00 51 e3                                      cmp r1, #8
005bf02c  26 00 00 0a                                      beq #0x5bf0cc
005bf030  01 00 a0 e3                                      mov r0, #1
005bf034  00 00 00 ea                                      b #0x5bf03c
005bf038  00 00 a0 e3                                      mov r0, #0
005bf03c  0c d0 8d e2                                      add sp, sp, #0xc
005bf040  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005bf044  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
005bf048  01 40 9c e7                                      ldr r4, [ip, r1]
005bf04c  e2 ff ff ea                                      b #0x5befdc
005bf050  02 00 d0 e7                                      ldrb r0, [r0, r2]
005bf054  04 30 8d e5                                      str r3, [sp, #4]
005bf058  41 3e f5 eb                                      bl #0x30e964
005bf05c  81 10 08 e3                                      movw r1, #0x8081
005bf060  80 1b 43 e3                                      movt r1, #0x3b80
005bf064  40 3f f5 eb                                      bl #0x30ed6c
005bf068  00 70 a0 e1                                      mov r7, r0
005bf06c  01 00 d4 e5                                      ldrb r0, [r4, #1]
005bf070  3b 3e f5 eb                                      bl #0x30e964
005bf074  81 10 08 e3                                      movw r1, #0x8081
005bf078  80 1b 43 e3                                      movt r1, #0x3b80
005bf07c  3a 3f f5 eb                                      bl #0x30ed6c
005bf080  00 50 a0 e1                                      mov r5, r0
005bf084  02 00 d4 e5                                      ldrb r0, [r4, #2]
005bf088  35 3e f5 eb                                      bl #0x30e964
005bf08c  81 10 08 e3                                      movw r1, #0x8081
005bf090  80 1b 43 e3                                      movt r1, #0x3b80
005bf094  34 3f f5 eb                                      bl #0x30ed6c
005bf098  00 60 a0 e1                                      mov r6, r0
005bf09c  03 00 d4 e5                                      ldrb r0, [r4, #3]
005bf0a0  2f 3e f5 eb                                      bl #0x30e964
005bf0a4  81 10 08 e3                                      movw r1, #0x8081
005bf0a8  80 1b 43 e3                                      movt r1, #0x3b80
005bf0ac  2e 3f f5 eb                                      bl #0x30ed6c
005bf0b0  04 30 9d e5                                      ldr r3, [sp, #4]
005bf0b4  0c 00 83 e5                                      str r0, [r3, #0xc]
005bf0b8  00 70 83 e5                                      str r7, [r3]
005bf0bc  08 60 83 e5                                      str r6, [r3, #8]
005bf0c0  04 50 83 e5                                      str r5, [r3, #4]
005bf0c4  01 00 a0 e3                                      mov r0, #1
005bf0c8  db ff ff ea                                      b #0x5bf03c
005bf0cc  02 20 90 e7                                      ldr r2, [r0, r2]
005bf0d0  01 00 a0 e3                                      mov r0, #1
005bf0d4  00 20 83 e5                                      str r2, [r3]
005bf0d8  04 20 94 e5                                      ldr r2, [r4, #4]
005bf0dc  04 20 83 e5                                      str r2, [r3, #4]
005bf0e0  08 20 94 e5                                      ldr r2, [r4, #8]
005bf0e4  08 20 83 e5                                      str r2, [r3, #8]
005bf0e8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005bf0ec  0c 20 83 e5                                      str r2, [r3, #0xc]
005bf0f0  d1 ff ff ea                                      b #0x5bf03c
; mapping-symbol data/literal pool
005bf0f4  dc 5a 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xdc, 0x5a, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bf89c, declared_size=188, range_size=188, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float>&) const
; decoder-mode: arm
005bf89c  70 00 2d e9                                      push {r4, r5, r6}
005bf8a0  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bf8a4  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bf8a8  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
005bf8ac  05 50 64 e0                                      rsb r5, r4, r5
005bf8b0  45 51 a0 e1                                      asr r5, r5, #2
005bf8b4  0c c0 8f e0                                      add ip, pc, ip
005bf8b8  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bf8bc  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bf8c0  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bf8c4  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bf8c8  06 51 85 e0                                      add r5, r5, r6, lsl #2
005bf8cc  05 00 51 e1                                      cmp r1, r5
005bf8d0  1b 00 00 2a                                      bhs #0x5bf944
005bf8d4  14 c0 a0 e3                                      mov ip, #0x14
005bf8d8  9c 41 24 e0                                      mla r4, ip, r1, r4
005bf8dc  00 10 94 e5                                      ldr r1, [r4]
005bf8e0  00 00 51 e3                                      cmp r1, #0
005bf8e4  02 00 00 0a                                      beq #0x5bf8f4
005bf8e8  06 10 d4 e5                                      ldrb r1, [r4, #6]
005bf8ec  08 00 51 e3                                      cmp r1, #8
005bf8f0  02 00 00 0a                                      beq #0x5bf900
005bf8f4  00 00 a0 e3                                      mov r0, #0
005bf8f8  70 00 bd e8                                      pop {r4, r5, r6}
005bf8fc  1e ff 2f e1                                      bx lr
005bf900  08 10 94 e5                                      ldr r1, [r4, #8]
005bf904  01 00 52 e1                                      cmp r2, r1
005bf908  f9 ff ff 2a                                      bhs #0x5bf8f4
005bf90c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005bf910  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005bf914  01 00 a0 e3                                      mov r0, #1
005bf918  02 22 8c e0                                      add r2, ip, r2, lsl #4
005bf91c  02 c0 91 e7                                      ldr ip, [r1, r2]
005bf920  02 20 81 e0                                      add r2, r1, r2
005bf924  00 c0 83 e5                                      str ip, [r3]
005bf928  04 10 92 e5                                      ldr r1, [r2, #4]
005bf92c  04 10 83 e5                                      str r1, [r3, #4]
005bf930  08 10 92 e5                                      ldr r1, [r2, #8]
005bf934  08 10 83 e5                                      str r1, [r3, #8]
005bf938  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005bf93c  0c 20 83 e5                                      str r2, [r3, #0xc]
005bf940  ec ff ff ea                                      b #0x5bf8f8
005bf944  08 10 9f e5                                      ldr r1, [pc, #8]
005bf948  01 40 9c e7                                      ldr r4, [ip, r1]
005bf94c  e2 ff ff ea                                      b #0x5bf8dc
; mapping-symbol data/literal pool
005bf950  dc 51 3d 00 14 28 00 00                          .byte 0xdc, 0x51, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c01a4, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<float> >(unsigned short, glitch::core::vector4d<float> const*, int)
; decoder-mode: arm
005c01a4  70 40 2d e9                                      push {r4, r5, r6, lr}
005c01a8  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c01ac  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c01b0  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005c01b4  05 50 64 e0                                      rsb r5, r4, r5
005c01b8  45 51 a0 e1                                      asr r5, r5, #2
005c01bc  0c c0 8f e0                                      add ip, pc, ip
005c01c0  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c01c4  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c01c8  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c01cc  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c01d0  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c01d4  05 00 51 e1                                      cmp r1, r5
005c01d8  09 00 00 2a                                      bhs #0x5c0204
005c01dc  14 c0 a0 e3                                      mov ip, #0x14
005c01e0  9c 41 24 e0                                      mla r4, ip, r1, r4
005c01e4  00 10 94 e5                                      ldr r1, [r4]
005c01e8  00 00 51 e3                                      cmp r1, #0
005c01ec  02 00 00 0a                                      beq #0x5c01fc
005c01f0  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c01f4  08 00 51 e3                                      cmp r1, #8
005c01f8  04 00 00 0a                                      beq #0x5c0210
005c01fc  00 00 a0 e3                                      mov r0, #0
005c0200  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c0204  88 10 9f e5                                      ldr r1, [pc, #0x88]
005c0208  01 40 9c e7                                      ldr r4, [ip, r1]
005c020c  f4 ff ff ea                                      b #0x5c01e4
005c0210  00 00 53 e3                                      cmp r3, #0
005c0214  10 00 53 13                                      cmpne r3, #0x10
005c0218  13 00 00 0a                                      beq #0x5c026c
005c021c  08 c0 94 e5                                      ldr ip, [r4, #8]
005c0220  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c0224  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c0228  00 00 5c e3                                      cmp ip, #0
005c022c  0c 00 00 0a                                      beq #0x5c0264
005c0230  01 10 80 e0                                      add r1, r0, r1
005c0234  00 00 92 e5                                      ldr r0, [r2]
005c0238  01 c0 5c e2                                      subs ip, ip, #1
005c023c  00 00 81 e5                                      str r0, [r1]
005c0240  04 00 92 e5                                      ldr r0, [r2, #4]
005c0244  04 00 81 e5                                      str r0, [r1, #4]
005c0248  08 00 92 e5                                      ldr r0, [r2, #8]
005c024c  08 00 81 e5                                      str r0, [r1, #8]
005c0250  0c 00 92 e5                                      ldr r0, [r2, #0xc]
005c0254  03 20 82 e0                                      add r2, r2, r3
005c0258  0c 00 81 e5                                      str r0, [r1, #0xc]
005c025c  10 10 81 e2                                      add r1, r1, #0x10
005c0260  f3 ff ff 1a                                      bne #0x5c0234
005c0264  01 00 a0 e3                                      mov r0, #1
005c0268  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c026c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c0270  08 c0 94 e5                                      ldr ip, [r4, #8]
005c0274  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c0278  02 10 a0 e1                                      mov r1, r2
005c027c  0c 22 a0 e1                                      lsl r2, ip, #4
005c0280  03 00 80 e0                                      add r0, r0, r3
005c0284  77 39 f5 eb                                      bl #0x30e868
005c0288  01 00 a0 e3                                      mov r0, #1
005c028c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c0290  d4 48 3d 00 14 28 00 00                          .byte 0xd4, 0x48, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c1718, declared_size=596, range_size=596, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::core::vector4d<float> >(unsigned short, glitch::core::vector4d<float>*, int) const
; decoder-mode: arm
005c1718  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005c171c  18 50 90 e5                                      ldr r5, [r0, #0x18]
005c1720  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005c1724  34 c2 9f e5                                      ldr ip, [pc, #0x234]
005c1728  14 d0 4d e2                                      sub sp, sp, #0x14
005c172c  04 40 65 e0                                      rsb r4, r5, r4
005c1730  44 71 a0 e1                                      asr r7, r4, #2
005c1734  02 40 a0 e1                                      mov r4, r2
005c1738  87 60 87 e0                                      add r6, r7, r7, lsl #1
005c173c  0c c0 8f e0                                      add ip, pc, ip
005c1740  06 22 86 e0                                      add r2, r6, r6, lsl #4
005c1744  03 60 a0 e1                                      mov r6, r3
005c1748  02 24 82 e0                                      add r2, r2, r2, lsl #8
005c174c  02 28 82 e0                                      add r2, r2, r2, lsl #16
005c1750  02 71 87 e0                                      add r7, r7, r2, lsl #2
005c1754  07 00 51 e1                                      cmp r1, r7
005c1758  32 00 00 2a                                      bhs #0x5c1828
005c175c  14 30 a0 e3                                      mov r3, #0x14
005c1760  93 51 21 e0                                      mla r1, r3, r1, r5
005c1764  00 30 91 e5                                      ldr r3, [r1]
005c1768  00 00 53 e3                                      cmp r3, #0
005c176c  10 00 00 0a                                      beq #0x5c17b4
005c1770  ec 21 9f e5                                      ldr r2, [pc, #0x1ec]
005c1774  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c1778  02 20 9c e7                                      ldr r2, [ip, r2]
005c177c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c1780  01 0c 12 e3                                      tst r2, #0x100
005c1784  0a 00 00 0a                                      beq #0x5c17b4
005c1788  01 20 76 e2                                      rsbs r2, r6, #1
005c178c  00 20 a0 33                                      movlo r2, #0
005c1790  00 00 56 e3                                      cmp r6, #0
005c1794  10 00 56 13                                      cmpne r6, #0x10
005c1798  08 00 00 1a                                      bne #0x5c17c0
005c179c  08 00 53 e3                                      cmp r3, #8
005c17a0  35 00 00 0a                                      beq #0x5c187c
005c17a4  00 00 52 e3                                      cmp r2, #0
005c17a8  04 00 00 0a                                      beq #0x5c17c0
005c17ac  01 00 a0 e3                                      mov r0, #1
005c17b0  00 00 00 ea                                      b #0x5c17b8
005c17b4  00 00 a0 e3                                      mov r0, #0
005c17b8  14 d0 8d e2                                      add sp, sp, #0x14
005c17bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005c17c0  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005c17c4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c17c8  10 00 53 e3                                      cmp r3, #0x10
005c17cc  02 50 85 e0                                      add r5, r5, r2
005c17d0  32 00 00 0a                                      beq #0x5c18a0
005c17d4  11 00 53 e3                                      cmp r3, #0x11
005c17d8  15 00 00 0a                                      beq #0x5c1834
005c17dc  08 00 53 e3                                      cmp r3, #8
005c17e0  f1 ff ff 1a                                      bne #0x5c17ac
005c17e4  08 30 91 e5                                      ldr r3, [r1, #8]
005c17e8  00 00 53 e3                                      cmp r3, #0
005c17ec  ee ff ff 0a                                      beq #0x5c17ac
005c17f0  00 20 95 e5                                      ldr r2, [r5]
005c17f4  01 30 53 e2                                      subs r3, r3, #1
005c17f8  00 20 84 e5                                      str r2, [r4]
005c17fc  04 20 95 e5                                      ldr r2, [r5, #4]
005c1800  04 20 84 e5                                      str r2, [r4, #4]
005c1804  08 20 95 e5                                      ldr r2, [r5, #8]
005c1808  08 20 84 e5                                      str r2, [r4, #8]
005c180c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c1810  10 50 85 e2                                      add r5, r5, #0x10
005c1814  0c 20 84 e5                                      str r2, [r4, #0xc]
005c1818  06 40 84 e0                                      add r4, r4, r6
005c181c  f3 ff ff 1a                                      bne #0x5c17f0
005c1820  01 00 a0 e3                                      mov r0, #1
005c1824  e3 ff ff ea                                      b #0x5c17b8
005c1828  38 31 9f e5                                      ldr r3, [pc, #0x138]
005c182c  03 10 9c e7                                      ldr r1, [ip, r3]
005c1830  cb ff ff ea                                      b #0x5c1764
005c1834  08 20 91 e5                                      ldr r2, [r1, #8]
005c1838  02 22 85 e0                                      add r2, r5, r2, lsl #4
005c183c  02 00 55 e1                                      cmp r5, r2
005c1840  d9 ff ff 0a                                      beq #0x5c17ac
005c1844  00 30 95 e5                                      ldr r3, [r5]
005c1848  00 30 84 e5                                      str r3, [r4]
005c184c  04 30 95 e5                                      ldr r3, [r5, #4]
005c1850  04 30 84 e5                                      str r3, [r4, #4]
005c1854  08 30 95 e5                                      ldr r3, [r5, #8]
005c1858  08 30 84 e5                                      str r3, [r4, #8]
005c185c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005c1860  10 50 85 e2                                      add r5, r5, #0x10
005c1864  05 00 52 e1                                      cmp r2, r5
005c1868  0c 30 84 e5                                      str r3, [r4, #0xc]
005c186c  06 40 84 e0                                      add r4, r4, r6
005c1870  f3 ff ff 1a                                      bne #0x5c1844
005c1874  01 00 a0 e3                                      mov r0, #1
005c1878  ce ff ff ea                                      b #0x5c17b8
005c187c  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c1880  08 20 91 e5                                      ldr r2, [r1, #8]
005c1884  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c1888  04 00 a0 e1                                      mov r0, r4
005c188c  02 22 a0 e1                                      lsl r2, r2, #4
005c1890  03 10 8c e0                                      add r1, ip, r3
005c1894  f3 33 f5 eb                                      bl #0x30e868
005c1898  01 00 a0 e3                                      mov r0, #1
005c189c  c5 ff ff ea                                      b #0x5c17b8
005c18a0  08 b0 91 e5                                      ldr fp, [r1, #8]
005c18a4  0b b1 85 e0                                      add fp, r5, fp, lsl #2
005c18a8  0b 00 55 e1                                      cmp r5, fp
005c18ac  be ff ff 0a                                      beq #0x5c17ac
005c18b0  04 50 85 e2                                      add r5, r5, #4
005c18b4  0d 70 a0 e1                                      mov r7, sp
005c18b8  00 00 00 ea                                      b #0x5c18c0
005c18bc  06 40 84 e0                                      add r4, r4, r6
005c18c0  04 00 55 e5                                      ldrb r0, [r5, #-4]
005c18c4  26 34 f5 eb                                      bl #0x30e964
005c18c8  81 10 08 e3                                      movw r1, #0x8081
005c18cc  80 1b 43 e3                                      movt r1, #0x3b80
005c18d0  25 35 f5 eb                                      bl #0x30ed6c
005c18d4  03 a0 55 e5                                      ldrb sl, [r5, #-3]
005c18d8  00 80 a0 e1                                      mov r8, r0
005c18dc  02 90 55 e5                                      ldrb sb, [r5, #-2]
005c18e0  0a 00 a0 e1                                      mov r0, sl
005c18e4  01 a0 55 e5                                      ldrb sl, [r5, #-1]
005c18e8  00 80 8d e5                                      str r8, [sp]
005c18ec  1c 34 f5 eb                                      bl #0x30e964
005c18f0  81 10 08 e3                                      movw r1, #0x8081
005c18f4  80 1b 43 e3                                      movt r1, #0x3b80
005c18f8  1b 35 f5 eb                                      bl #0x30ed6c
005c18fc  04 00 8d e5                                      str r0, [sp, #4]
005c1900  09 00 a0 e1                                      mov r0, sb
005c1904  16 34 f5 eb                                      bl #0x30e964
005c1908  81 10 08 e3                                      movw r1, #0x8081
005c190c  80 1b 43 e3                                      movt r1, #0x3b80
005c1910  15 35 f5 eb                                      bl #0x30ed6c
005c1914  08 00 8d e5                                      str r0, [sp, #8]
005c1918  0a 00 a0 e1                                      mov r0, sl
005c191c  10 34 f5 eb                                      bl #0x30e964
005c1920  81 10 08 e3                                      movw r1, #0x8081
005c1924  80 1b 43 e3                                      movt r1, #0x3b80
005c1928  0f 35 f5 eb                                      bl #0x30ed6c
005c192c  0c 00 8d e5                                      str r0, [sp, #0xc]
005c1930  00 80 84 e5                                      str r8, [r4]
005c1934  04 30 97 e5                                      ldr r3, [r7, #4]
005c1938  05 00 5b e1                                      cmp fp, r5
005c193c  04 50 85 e2                                      add r5, r5, #4
005c1940  04 30 84 e5                                      str r3, [r4, #4]
005c1944  08 30 97 e5                                      ldr r3, [r7, #8]
005c1948  08 30 84 e5                                      str r3, [r4, #8]
005c194c  0c 30 97 e5                                      ldr r3, [r7, #0xc]
005c1950  0c 30 84 e5                                      str r3, [r4, #0xc]
005c1954  d8 ff ff 1a                                      bne #0x5c18bc
005c1958  01 00 a0 e3                                      mov r0, #1
005c195c  95 ff ff ea                                      b #0x5c17b8
; mapping-symbol data/literal pool
005c1960  54 33 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x54, 0x33, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c25e8, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::core::vector4d<float> >(unsigned short, glitch::core::vector4d<float>*, int) const
; decoder-mode: arm
005c25e8  70 40 2d e9                                      push {r4, r5, r6, lr}
005c25ec  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c25f0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c25f4  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005c25f8  05 50 64 e0                                      rsb r5, r4, r5
005c25fc  45 51 a0 e1                                      asr r5, r5, #2
005c2600  0c c0 8f e0                                      add ip, pc, ip
005c2604  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c2608  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c260c  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c2610  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c2614  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c2618  05 00 51 e1                                      cmp r1, r5
005c261c  09 00 00 2a                                      bhs #0x5c2648
005c2620  14 c0 a0 e3                                      mov ip, #0x14
005c2624  9c 41 24 e0                                      mla r4, ip, r1, r4
005c2628  00 10 94 e5                                      ldr r1, [r4]
005c262c  00 00 51 e3                                      cmp r1, #0
005c2630  02 00 00 0a                                      beq #0x5c2640
005c2634  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c2638  08 00 51 e3                                      cmp r1, #8
005c263c  04 00 00 0a                                      beq #0x5c2654
005c2640  00 00 a0 e3                                      mov r0, #0
005c2644  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c2648  88 10 9f e5                                      ldr r1, [pc, #0x88]
005c264c  01 40 9c e7                                      ldr r4, [ip, r1]
005c2650  f4 ff ff ea                                      b #0x5c2628
005c2654  00 00 53 e3                                      cmp r3, #0
005c2658  10 00 53 13                                      cmpne r3, #0x10
005c265c  13 00 00 0a                                      beq #0x5c26b0
005c2660  08 c0 94 e5                                      ldr ip, [r4, #8]
005c2664  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c2668  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c266c  00 00 5c e3                                      cmp ip, #0
005c2670  0c 00 00 0a                                      beq #0x5c26a8
005c2674  01 10 80 e0                                      add r1, r0, r1
005c2678  00 00 91 e5                                      ldr r0, [r1]
005c267c  01 c0 5c e2                                      subs ip, ip, #1
005c2680  00 00 82 e5                                      str r0, [r2]
005c2684  04 00 91 e5                                      ldr r0, [r1, #4]
005c2688  04 00 82 e5                                      str r0, [r2, #4]
005c268c  08 00 91 e5                                      ldr r0, [r1, #8]
005c2690  08 00 82 e5                                      str r0, [r2, #8]
005c2694  0c 00 91 e5                                      ldr r0, [r1, #0xc]
005c2698  10 10 81 e2                                      add r1, r1, #0x10
005c269c  0c 00 82 e5                                      str r0, [r2, #0xc]
005c26a0  03 20 82 e0                                      add r2, r2, r3
005c26a4  f3 ff ff 1a                                      bne #0x5c2678
005c26a8  01 00 a0 e3                                      mov r0, #1
005c26ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
005c26b0  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c26b4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c26b8  08 30 94 e5                                      ldr r3, [r4, #8]
005c26bc  02 00 a0 e1                                      mov r0, r2
005c26c0  01 10 8c e0                                      add r1, ip, r1
005c26c4  03 22 a0 e1                                      lsl r2, r3, #4
005c26c8  66 30 f5 eb                                      bl #0x30e868
005c26cc  01 00 a0 e3                                      mov r0, #1
005c26d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005c26d4  90 24 3d 00 14 28 00 00                          .byte 0x90, 0x24, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c3308, declared_size=524, range_size=524, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<float> >(unsigned short, glitch::core::vector4d<float> const*, int)
; decoder-mode: arm
005c3308  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c330c  18 60 90 e5                                      ldr r6, [r0, #0x18]
005c3310  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005c3314  ec c1 9f e5                                      ldr ip, [pc, #0x1ec]
005c3318  04 40 66 e0                                      rsb r4, r6, r4
005c331c  44 71 a0 e1                                      asr r7, r4, #2
005c3320  02 40 a0 e1                                      mov r4, r2
005c3324  87 50 87 e0                                      add r5, r7, r7, lsl #1
005c3328  0c c0 8f e0                                      add ip, pc, ip
005c332c  05 22 85 e0                                      add r2, r5, r5, lsl #4
005c3330  03 50 a0 e1                                      mov r5, r3
005c3334  02 24 82 e0                                      add r2, r2, r2, lsl #8
005c3338  02 28 82 e0                                      add r2, r2, r2, lsl #16
005c333c  02 71 87 e0                                      add r7, r7, r2, lsl #2
005c3340  07 00 51 e1                                      cmp r1, r7
005c3344  17 00 00 2a                                      bhs #0x5c33a8
005c3348  14 30 a0 e3                                      mov r3, #0x14
005c334c  93 61 21 e0                                      mla r1, r3, r1, r6
005c3350  00 30 91 e5                                      ldr r3, [r1]
005c3354  00 00 53 e3                                      cmp r3, #0
005c3358  10 00 00 0a                                      beq #0x5c33a0
005c335c  a8 21 9f e5                                      ldr r2, [pc, #0x1a8]
005c3360  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c3364  02 20 9c e7                                      ldr r2, [ip, r2]
005c3368  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c336c  01 0c 12 e3                                      tst r2, #0x100
005c3370  0a 00 00 0a                                      beq #0x5c33a0
005c3374  01 20 75 e2                                      rsbs r2, r5, #1
005c3378  00 20 a0 33                                      movlo r2, #0
005c337c  00 00 55 e3                                      cmp r5, #0
005c3380  10 00 55 13                                      cmpne r5, #0x10
005c3384  0a 00 00 1a                                      bne #0x5c33b4
005c3388  08 00 53 e3                                      cmp r3, #8
005c338c  2e 00 00 0a                                      beq #0x5c344c
005c3390  00 00 52 e3                                      cmp r2, #0
005c3394  06 00 00 0a                                      beq #0x5c33b4
005c3398  01 00 a0 e3                                      mov r0, #1
005c339c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c33a0  00 00 a0 e3                                      mov r0, #0
005c33a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c33a8  60 31 9f e5                                      ldr r3, [pc, #0x160]
005c33ac  03 10 9c e7                                      ldr r1, [ip, r3]
005c33b0  e6 ff ff ea                                      b #0x5c3350
005c33b4  2c c0 90 e5                                      ldr ip, [r0, #0x2c]
005c33b8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c33bc  10 00 53 e3                                      cmp r3, #0x10
005c33c0  02 c0 8c e0                                      add ip, ip, r2
005c33c4  29 00 00 0a                                      beq #0x5c3470
005c33c8  11 00 53 e3                                      cmp r3, #0x11
005c33cc  11 00 00 0a                                      beq #0x5c3418
005c33d0  08 00 53 e3                                      cmp r3, #8
005c33d4  ef ff ff 1a                                      bne #0x5c3398
005c33d8  08 30 91 e5                                      ldr r3, [r1, #8]
005c33dc  00 00 53 e3                                      cmp r3, #0
005c33e0  ec ff ff 0a                                      beq #0x5c3398
005c33e4  00 20 94 e5                                      ldr r2, [r4]
005c33e8  01 30 53 e2                                      subs r3, r3, #1
005c33ec  00 20 8c e5                                      str r2, [ip]
005c33f0  04 20 94 e5                                      ldr r2, [r4, #4]
005c33f4  04 20 8c e5                                      str r2, [ip, #4]
005c33f8  08 20 94 e5                                      ldr r2, [r4, #8]
005c33fc  08 20 8c e5                                      str r2, [ip, #8]
005c3400  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c3404  05 40 84 e0                                      add r4, r4, r5
005c3408  0c 20 8c e5                                      str r2, [ip, #0xc]
005c340c  10 c0 8c e2                                      add ip, ip, #0x10
005c3410  f3 ff ff 1a                                      bne #0x5c33e4
005c3414  df ff ff ea                                      b #0x5c3398
005c3418  08 70 91 e5                                      ldr r7, [r1, #8]
005c341c  07 72 8c e0                                      add r7, ip, r7, lsl #4
005c3420  07 00 5c e1                                      cmp ip, r7
005c3424  db ff ff 0a                                      beq #0x5c3398
005c3428  00 60 a0 e3                                      mov r6, #0
005c342c  06 30 84 e0                                      add r3, r4, r6
005c3430  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005c3434  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005c3438  10 c0 8c e2                                      add ip, ip, #0x10
005c343c  0c 00 57 e1                                      cmp r7, ip
005c3440  05 60 86 e0                                      add r6, r6, r5
005c3444  f8 ff ff 1a                                      bne #0x5c342c
005c3448  d2 ff ff ea                                      b #0x5c3398
005c344c  08 20 91 e5                                      ldr r2, [r1, #8]
005c3450  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c3454  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c3458  04 10 a0 e1                                      mov r1, r4
005c345c  02 22 a0 e1                                      lsl r2, r2, #4
005c3460  03 00 80 e0                                      add r0, r0, r3
005c3464  ff 2c f5 eb                                      bl #0x30e868
005c3468  01 00 a0 e3                                      mov r0, #1
005c346c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c3470  08 90 91 e5                                      ldr sb, [r1, #8]
005c3474  09 91 8c e0                                      add sb, ip, sb, lsl #2
005c3478  09 00 5c e1                                      cmp ip, sb
005c347c  c5 ff ff 0a                                      beq #0x5c3398
005c3480  04 60 8c e2                                      add r6, ip, #4
005c3484  01 00 00 ea                                      b #0x5c3490
005c3488  05 40 84 e0                                      add r4, r4, r5
005c348c  04 60 86 e2                                      add r6, r6, #4
005c3490  43 14 a0 e3                                      mov r1, #0x43000000
005c3494  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005c3498  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c349c  32 2e f5 eb                                      bl #0x30ed6c
005c34a0  7e eb 0b eb                                      bl #0x8be2a0
005c34a4  43 14 a0 e3                                      mov r1, #0x43000000
005c34a8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c34ac  70 a0 ef e6                                      uxtb sl, r0
005c34b0  00 00 94 e5                                      ldr r0, [r4]
005c34b4  2c 2e f5 eb                                      bl #0x30ed6c
005c34b8  78 eb 0b eb                                      bl #0x8be2a0
005c34bc  43 14 a0 e3                                      mov r1, #0x43000000
005c34c0  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c34c4  70 70 ef e6                                      uxtb r7, r0
005c34c8  04 00 94 e5                                      ldr r0, [r4, #4]
005c34cc  26 2e f5 eb                                      bl #0x30ed6c
005c34d0  72 eb 0b eb                                      bl #0x8be2a0
005c34d4  43 14 a0 e3                                      mov r1, #0x43000000
005c34d8  70 80 ef e6                                      uxtb r8, r0
005c34dc  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c34e0  08 00 94 e5                                      ldr r0, [r4, #8]
005c34e4  20 2e f5 eb                                      bl #0x30ed6c
005c34e8  6c eb 0b eb                                      bl #0x8be2a0
005c34ec  06 00 59 e1                                      cmp sb, r6
005c34f0  01 a0 46 e5                                      strb sl, [r6, #-1]
005c34f4  02 00 46 e5                                      strb r0, [r6, #-2]
005c34f8  03 80 46 e5                                      strb r8, [r6, #-3]
005c34fc  04 70 46 e5                                      strb r7, [r6, #-4]
005c3500  e0 ff ff 1a                                      bne #0x5c3488
005c3504  a3 ff ff ea                                      b #0x5c3398
; mapping-symbol data/literal pool
005c3508  68 17 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x68, 0x17, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4054, declared_size=380, range_size=380, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float> const&)
; decoder-mode: arm
005c4054  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c4058  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c405c  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c4060  5c c1 9f e5                                      ldr ip, [pc, #0x15c]
005c4064  03 70 a0 e1                                      mov r7, r3
005c4068  05 50 64 e0                                      rsb r5, r4, r5
005c406c  45 51 a0 e1                                      asr r5, r5, #2
005c4070  0c c0 8f e0                                      add ip, pc, ip
005c4074  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c4078  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c407c  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c4080  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c4084  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c4088  05 00 51 e1                                      cmp r1, r5
005c408c  1c 00 00 2a                                      bhs #0x5c4104
005c4090  14 30 a0 e3                                      mov r3, #0x14
005c4094  93 41 24 e0                                      mla r4, r3, r1, r4
005c4098  00 30 94 e5                                      ldr r3, [r4]
005c409c  00 00 53 e3                                      cmp r3, #0
005c40a0  14 00 00 0a                                      beq #0x5c40f8
005c40a4  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
005c40a8  06 30 d4 e5                                      ldrb r3, [r4, #6]
005c40ac  01 10 9c e7                                      ldr r1, [ip, r1]
005c40b0  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
005c40b4  01 0c 11 e3                                      tst r1, #0x100
005c40b8  0e 00 00 0a                                      beq #0x5c40f8
005c40bc  08 10 94 e5                                      ldr r1, [r4, #8]
005c40c0  01 00 52 e1                                      cmp r2, r1
005c40c4  0b 00 00 2a                                      bhs #0x5c40f8
005c40c8  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
005c40cc  0c 50 94 e5                                      ldr r5, [r4, #0xc]
005c40d0  10 00 53 e3                                      cmp r3, #0x10
005c40d4  05 40 86 e0                                      add r4, r6, r5
005c40d8  0c 00 00 0a                                      beq #0x5c4110
005c40dc  11 00 53 e3                                      cmp r3, #0x11
005c40e0  32 00 00 0a                                      beq #0x5c41b0
005c40e4  08 00 53 e3                                      cmp r3, #8
005c40e8  25 00 00 0a                                      beq #0x5c4184
005c40ec  01 c0 a0 e3                                      mov ip, #1
005c40f0  0c 00 a0 e1                                      mov r0, ip
005c40f4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c40f8  00 c0 a0 e3                                      mov ip, #0
005c40fc  0c 00 a0 e1                                      mov r0, ip
005c4100  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c4104  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
005c4108  03 40 9c e7                                      ldr r4, [ip, r3]
005c410c  e1 ff ff ea                                      b #0x5c4098
005c4110  43 14 a0 e3                                      mov r1, #0x43000000
005c4114  0c 00 97 e5                                      ldr r0, [r7, #0xc]
005c4118  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c411c  12 2b f5 eb                                      bl #0x30ed6c
005c4120  5e e8 0b eb                                      bl #0x8be2a0
005c4124  43 14 a0 e3                                      mov r1, #0x43000000
005c4128  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c412c  70 a0 ef e6                                      uxtb sl, r0
005c4130  00 00 97 e5                                      ldr r0, [r7]
005c4134  0c 2b f5 eb                                      bl #0x30ed6c
005c4138  58 e8 0b eb                                      bl #0x8be2a0
005c413c  43 14 a0 e3                                      mov r1, #0x43000000
005c4140  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c4144  70 80 ef e6                                      uxtb r8, r0
005c4148  04 00 97 e5                                      ldr r0, [r7, #4]
005c414c  06 2b f5 eb                                      bl #0x30ed6c
005c4150  52 e8 0b eb                                      bl #0x8be2a0
005c4154  43 14 a0 e3                                      mov r1, #0x43000000
005c4158  70 90 ef e6                                      uxtb sb, r0
005c415c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c4160  08 00 97 e5                                      ldr r0, [r7, #8]
005c4164  00 2b f5 eb                                      bl #0x30ed6c
005c4168  4c e8 0b eb                                      bl #0x8be2a0
005c416c  01 90 c4 e5                                      strb sb, [r4, #1]
005c4170  03 a0 c4 e5                                      strb sl, [r4, #3]
005c4174  02 00 c4 e5                                      strb r0, [r4, #2]
005c4178  01 c0 a0 e3                                      mov ip, #1
005c417c  05 80 c6 e7                                      strb r8, [r6, r5]
005c4180  da ff ff ea                                      b #0x5c40f0
005c4184  00 30 97 e5                                      ldr r3, [r7]
005c4188  01 c0 a0 e3                                      mov ip, #1
005c418c  0c 00 a0 e1                                      mov r0, ip
005c4190  05 30 86 e7                                      str r3, [r6, r5]
005c4194  04 30 97 e5                                      ldr r3, [r7, #4]
005c4198  04 30 84 e5                                      str r3, [r4, #4]
005c419c  08 30 97 e5                                      ldr r3, [r7, #8]
005c41a0  08 30 84 e5                                      str r3, [r4, #8]
005c41a4  0c 30 97 e5                                      ldr r3, [r7, #0xc]
005c41a8  0c 30 84 e5                                      str r3, [r4, #0xc]
005c41ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c41b0  01 c0 a0 e3                                      mov ip, #1
005c41b4  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
005c41b8  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005c41bc  0c 00 a0 e1                                      mov r0, ip
005c41c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005c41c4  20 0a 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x20, 0x0a, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4990, declared_size=188, range_size=188, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float> const&)
; decoder-mode: arm
005c4990  70 00 2d e9                                      push {r4, r5, r6}
005c4994  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c4998  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c499c  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
005c49a0  05 50 64 e0                                      rsb r5, r4, r5
005c49a4  45 51 a0 e1                                      asr r5, r5, #2
005c49a8  0c c0 8f e0                                      add ip, pc, ip
005c49ac  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c49b0  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c49b4  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c49b8  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c49bc  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c49c0  05 00 51 e1                                      cmp r1, r5
005c49c4  1b 00 00 2a                                      bhs #0x5c4a38
005c49c8  14 c0 a0 e3                                      mov ip, #0x14
005c49cc  9c 41 24 e0                                      mla r4, ip, r1, r4
005c49d0  00 10 94 e5                                      ldr r1, [r4]
005c49d4  00 00 51 e3                                      cmp r1, #0
005c49d8  02 00 00 0a                                      beq #0x5c49e8
005c49dc  06 10 d4 e5                                      ldrb r1, [r4, #6]
005c49e0  08 00 51 e3                                      cmp r1, #8
005c49e4  02 00 00 0a                                      beq #0x5c49f4
005c49e8  00 00 a0 e3                                      mov r0, #0
005c49ec  70 00 bd e8                                      pop {r4, r5, r6}
005c49f0  1e ff 2f e1                                      bx lr
005c49f4  08 10 94 e5                                      ldr r1, [r4, #8]
005c49f8  01 00 52 e1                                      cmp r2, r1
005c49fc  f9 ff ff 2a                                      bhs #0x5c49e8
005c4a00  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005c4a04  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c4a08  00 c0 93 e5                                      ldr ip, [r3]
005c4a0c  02 22 81 e0                                      add r2, r1, r2, lsl #4
005c4a10  02 10 80 e0                                      add r1, r0, r2
005c4a14  02 c0 80 e7                                      str ip, [r0, r2]
005c4a18  04 20 93 e5                                      ldr r2, [r3, #4]
005c4a1c  01 00 a0 e3                                      mov r0, #1
005c4a20  04 20 81 e5                                      str r2, [r1, #4]
005c4a24  08 20 93 e5                                      ldr r2, [r3, #8]
005c4a28  08 20 81 e5                                      str r2, [r1, #8]
005c4a2c  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005c4a30  0c 30 81 e5                                      str r3, [r1, #0xc]
005c4a34  ec ff ff ea                                      b #0x5c49ec
005c4a38  08 10 9f e5                                      ldr r1, [pc, #8]
005c4a3c  01 40 9c e7                                      ldr r4, [ip, r1]
005c4a40  e2 ff ff ea                                      b #0x5c49d0
; mapping-symbol data/literal pool
005c4a44  e8 00 3d 00 14 28 00 00                          .byte 0xe8, 0x00, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00
