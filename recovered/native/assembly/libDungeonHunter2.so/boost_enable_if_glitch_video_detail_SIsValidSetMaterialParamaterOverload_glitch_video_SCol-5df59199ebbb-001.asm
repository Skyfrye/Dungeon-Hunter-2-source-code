; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005be794, declared_size=336, range_size=336, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf&) const
; decoder-mode: arm
005be794  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005be798  18 50 90 e5                                      ldr r5, [r0, #0x18]
005be79c  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005be7a0  30 c1 9f e5                                      ldr ip, [pc, #0x130]
005be7a4  04 40 65 e0                                      rsb r4, r5, r4
005be7a8  44 61 a0 e1                                      asr r6, r4, #2
005be7ac  0c c0 8f e0                                      add ip, pc, ip
005be7b0  86 40 86 e0                                      add r4, r6, r6, lsl #1
005be7b4  04 72 84 e0                                      add r7, r4, r4, lsl #4
005be7b8  03 40 a0 e1                                      mov r4, r3
005be7bc  07 74 87 e0                                      add r7, r7, r7, lsl #8
005be7c0  07 78 87 e0                                      add r7, r7, r7, lsl #16
005be7c4  07 61 86 e0                                      add r6, r6, r7, lsl #2
005be7c8  06 00 51 e1                                      cmp r1, r6
005be7cc  1c 00 00 2a                                      bhs #0x5be844
005be7d0  14 30 a0 e3                                      mov r3, #0x14
005be7d4  93 51 25 e0                                      mla r5, r3, r1, r5
005be7d8  00 30 95 e5                                      ldr r3, [r5]
005be7dc  00 00 53 e3                                      cmp r3, #0
005be7e0  14 00 00 0a                                      beq #0x5be838
005be7e4  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
005be7e8  06 30 d5 e5                                      ldrb r3, [r5, #6]
005be7ec  01 10 9c e7                                      ldr r1, [ip, r1]
005be7f0  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
005be7f4  02 08 11 e3                                      tst r1, #0x20000
005be7f8  0e 00 00 0a                                      beq #0x5be838
005be7fc  08 10 95 e5                                      ldr r1, [r5, #8]
005be800  01 00 52 e1                                      cmp r2, r1
005be804  0b 00 00 2a                                      bhs #0x5be838
005be808  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005be80c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005be810  10 00 53 e3                                      cmp r3, #0x10
005be814  02 50 81 e0                                      add r5, r1, r2
005be818  0c 00 00 0a                                      beq #0x5be850
005be81c  11 00 53 e3                                      cmp r3, #0x11
005be820  27 00 00 0a                                      beq #0x5be8c4
005be824  08 00 53 e3                                      cmp r3, #8
005be828  25 00 00 0a                                      beq #0x5be8c4
005be82c  01 c0 a0 e3                                      mov ip, #1
005be830  0c 00 a0 e1                                      mov r0, ip
005be834  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005be838  00 c0 a0 e3                                      mov ip, #0
005be83c  0c 00 a0 e1                                      mov r0, ip
005be840  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005be844  94 30 9f e5                                      ldr r3, [pc, #0x94]
005be848  03 50 9c e7                                      ldr r5, [ip, r3]
005be84c  e1 ff ff ea                                      b #0x5be7d8
005be850  02 00 d1 e7                                      ldrb r0, [r1, r2]
005be854  42 40 f5 eb                                      bl #0x30e964
005be858  81 10 08 e3                                      movw r1, #0x8081
005be85c  80 1b 43 e3                                      movt r1, #0x3b80
005be860  41 41 f5 eb                                      bl #0x30ed6c
005be864  00 80 a0 e1                                      mov r8, r0
005be868  01 00 d5 e5                                      ldrb r0, [r5, #1]
005be86c  3c 40 f5 eb                                      bl #0x30e964
005be870  81 10 08 e3                                      movw r1, #0x8081
005be874  80 1b 43 e3                                      movt r1, #0x3b80
005be878  3b 41 f5 eb                                      bl #0x30ed6c
005be87c  00 60 a0 e1                                      mov r6, r0
005be880  02 00 d5 e5                                      ldrb r0, [r5, #2]
005be884  36 40 f5 eb                                      bl #0x30e964
005be888  81 10 08 e3                                      movw r1, #0x8081
005be88c  80 1b 43 e3                                      movt r1, #0x3b80
005be890  35 41 f5 eb                                      bl #0x30ed6c
005be894  00 70 a0 e1                                      mov r7, r0
005be898  03 00 d5 e5                                      ldrb r0, [r5, #3]
005be89c  30 40 f5 eb                                      bl #0x30e964
005be8a0  81 10 08 e3                                      movw r1, #0x8081
005be8a4  80 1b 43 e3                                      movt r1, #0x3b80
005be8a8  2f 41 f5 eb                                      bl #0x30ed6c
005be8ac  00 80 84 e5                                      str r8, [r4]
005be8b0  0c 00 84 e5                                      str r0, [r4, #0xc]
005be8b4  08 70 84 e5                                      str r7, [r4, #8]
005be8b8  04 60 84 e5                                      str r6, [r4, #4]
005be8bc  01 c0 a0 e3                                      mov ip, #1
005be8c0  da ff ff ea                                      b #0x5be830
005be8c4  01 c0 a0 e3                                      mov ip, #1
005be8c8  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005be8cc  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005be8d0  0c 00 a0 e1                                      mov r0, ip
005be8d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005be8d8  e4 62 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xe4, 0x62, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bf68c, declared_size=172, range_size=172, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf&) const
; decoder-mode: arm
005bf68c  f0 00 2d e9                                      push {r4, r5, r6, r7}
005bf690  18 50 90 e5                                      ldr r5, [r0, #0x18]
005bf694  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005bf698  90 c0 9f e5                                      ldr ip, [pc, #0x90]
005bf69c  04 40 65 e0                                      rsb r4, r5, r4
005bf6a0  44 61 a0 e1                                      asr r6, r4, #2
005bf6a4  0c c0 8f e0                                      add ip, pc, ip
005bf6a8  86 40 86 e0                                      add r4, r6, r6, lsl #1
005bf6ac  04 72 84 e0                                      add r7, r4, r4, lsl #4
005bf6b0  03 40 a0 e1                                      mov r4, r3
005bf6b4  07 74 87 e0                                      add r7, r7, r7, lsl #8
005bf6b8  07 78 87 e0                                      add r7, r7, r7, lsl #16
005bf6bc  07 61 86 e0                                      add r6, r6, r7, lsl #2
005bf6c0  06 00 51 e1                                      cmp r1, r6
005bf6c4  16 00 00 2a                                      bhs #0x5bf724
005bf6c8  14 30 a0 e3                                      mov r3, #0x14
005bf6cc  93 51 25 e0                                      mla r5, r3, r1, r5
005bf6d0  00 30 95 e5                                      ldr r3, [r5]
005bf6d4  00 00 53 e3                                      cmp r3, #0
005bf6d8  02 00 00 0a                                      beq #0x5bf6e8
005bf6dc  06 30 d5 e5                                      ldrb r3, [r5, #6]
005bf6e0  11 00 53 e3                                      cmp r3, #0x11
005bf6e4  03 00 00 0a                                      beq #0x5bf6f8
005bf6e8  00 c0 a0 e3                                      mov ip, #0
005bf6ec  0c 00 a0 e1                                      mov r0, ip
005bf6f0  f0 00 bd e8                                      pop {r4, r5, r6, r7}
005bf6f4  1e ff 2f e1                                      bx lr
005bf6f8  08 30 95 e5                                      ldr r3, [r5, #8]
005bf6fc  03 00 52 e1                                      cmp r2, r3
005bf700  f8 ff ff 2a                                      bhs #0x5bf6e8
005bf704  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005bf708  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
005bf70c  01 c0 a0 e3                                      mov ip, #1
005bf710  02 22 81 e0                                      add r2, r1, r2, lsl #4
005bf714  02 20 83 e0                                      add r2, r3, r2
005bf718  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
005bf71c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005bf720  f1 ff ff ea                                      b #0x5bf6ec
005bf724  08 30 9f e5                                      ldr r3, [pc, #8]
005bf728  03 50 9c e7                                      ldr r5, [ip, r3]
005bf72c  e7 ff ff ea                                      b #0x5bf6d0
; mapping-symbol data/literal pool
005bf730  ec 53 3d 00 14 28 00 00                          .byte 0xec, 0x53, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005bffb4, declared_size=248, range_size=248, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColorf>(unsigned short, glitch::video::SColorf const*, int)
; decoder-mode: arm
005bffb4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005bffb8  18 40 90 e5                                      ldr r4, [r0, #0x18]
005bffbc  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005bffc0  02 70 a0 e1                                      mov r7, r2
005bffc4  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005bffc8  05 50 64 e0                                      rsb r5, r4, r5
005bffcc  45 51 a0 e1                                      asr r5, r5, #2
005bffd0  0c c0 8f e0                                      add ip, pc, ip
005bffd4  85 60 85 e0                                      add r6, r5, r5, lsl #1
005bffd8  06 22 86 e0                                      add r2, r6, r6, lsl #4
005bffdc  03 60 a0 e1                                      mov r6, r3
005bffe0  02 24 82 e0                                      add r2, r2, r2, lsl #8
005bffe4  02 28 82 e0                                      add r2, r2, r2, lsl #16
005bffe8  02 51 85 e0                                      add r5, r5, r2, lsl #2
005bffec  05 00 51 e1                                      cmp r1, r5
005bfff0  09 00 00 2a                                      bhs #0x5c001c
005bfff4  14 30 a0 e3                                      mov r3, #0x14
005bfff8  93 41 24 e0                                      mla r4, r3, r1, r4
005bfffc  00 30 94 e5                                      ldr r3, [r4]
005c0000  00 00 53 e3                                      cmp r3, #0
005c0004  02 00 00 0a                                      beq #0x5c0014
005c0008  06 30 d4 e5                                      ldrb r3, [r4, #6]
005c000c  11 00 53 e3                                      cmp r3, #0x11
005c0010  04 00 00 0a                                      beq #0x5c0028
005c0014  00 00 a0 e3                                      mov r0, #0
005c0018  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c001c  84 30 9f e5                                      ldr r3, [pc, #0x84]
005c0020  03 40 9c e7                                      ldr r4, [ip, r3]
005c0024  f4 ff ff ea                                      b #0x5bfffc
005c0028  00 00 56 e3                                      cmp r6, #0
005c002c  10 00 56 13                                      cmpne r6, #0x10
005c0030  00 50 a0 13                                      movne r5, #0
005c0034  01 50 a0 03                                      moveq r5, #1
005c0038  10 00 00 0a                                      beq #0x5c0080
005c003c  08 80 94 e5                                      ldr r8, [r4, #8]
005c0040  2c a0 90 e5                                      ldr sl, [r0, #0x2c]
005c0044  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c0048  00 00 58 e3                                      cmp r8, #0
005c004c  09 00 00 0a                                      beq #0x5c0078
005c0050  03 a0 8a e0                                      add sl, sl, r3
005c0054  05 40 a0 e1                                      mov r4, r5
005c0058  04 c2 8a e0                                      add ip, sl, r4, lsl #4
005c005c  01 40 84 e2                                      add r4, r4, #1
005c0060  05 30 87 e0                                      add r3, r7, r5
005c0064  04 00 58 e1                                      cmp r8, r4
005c0068  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005c006c  06 50 85 e0                                      add r5, r5, r6
005c0070  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005c0074  f7 ff ff 1a                                      bne #0x5c0058
005c0078  01 00 a0 e3                                      mov r0, #1
005c007c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c0080  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c0084  08 20 94 e5                                      ldr r2, [r4, #8]
005c0088  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c008c  07 10 a0 e1                                      mov r1, r7
005c0090  02 22 a0 e1                                      lsl r2, r2, #4
005c0094  03 00 80 e0                                      add r0, r0, r3
005c0098  f2 39 f5 eb                                      bl #0x30e868
005c009c  01 00 a0 e3                                      mov r0, #1
005c00a0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005c00a4  c0 4a 3d 00 14 28 00 00                          .byte 0xc0, 0x4a, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c12b0, declared_size=520, range_size=520, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15getParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameterCvt<glitch::video::SColorf>(unsigned short, glitch::video::SColorf*, int) const
; decoder-mode: arm
005c12b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c12b4  18 60 90 e5                                      ldr r6, [r0, #0x18]
005c12b8  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005c12bc  e8 c1 9f e5                                      ldr ip, [pc, #0x1e8]
005c12c0  04 40 66 e0                                      rsb r4, r6, r4
005c12c4  44 71 a0 e1                                      asr r7, r4, #2
005c12c8  02 40 a0 e1                                      mov r4, r2
005c12cc  87 50 87 e0                                      add r5, r7, r7, lsl #1
005c12d0  0c c0 8f e0                                      add ip, pc, ip
005c12d4  05 22 85 e0                                      add r2, r5, r5, lsl #4
005c12d8  03 50 a0 e1                                      mov r5, r3
005c12dc  02 24 82 e0                                      add r2, r2, r2, lsl #8
005c12e0  02 28 82 e0                                      add r2, r2, r2, lsl #16
005c12e4  02 71 87 e0                                      add r7, r7, r2, lsl #2
005c12e8  07 00 51 e1                                      cmp r1, r7
005c12ec  17 00 00 2a                                      bhs #0x5c1350
005c12f0  14 30 a0 e3                                      mov r3, #0x14
005c12f4  93 61 26 e0                                      mla r6, r3, r1, r6
005c12f8  00 30 96 e5                                      ldr r3, [r6]
005c12fc  00 00 53 e3                                      cmp r3, #0
005c1300  10 00 00 0a                                      beq #0x5c1348
005c1304  a4 21 9f e5                                      ldr r2, [pc, #0x1a4]
005c1308  06 30 d6 e5                                      ldrb r3, [r6, #6]
005c130c  02 20 9c e7                                      ldr r2, [ip, r2]
005c1310  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c1314  02 08 12 e3                                      tst r2, #0x20000
005c1318  0a 00 00 0a                                      beq #0x5c1348
005c131c  01 20 75 e2                                      rsbs r2, r5, #1
005c1320  00 20 a0 33                                      movlo r2, #0
005c1324  00 00 55 e3                                      cmp r5, #0
005c1328  10 00 55 13                                      cmpne r5, #0x10
005c132c  0a 00 00 1a                                      bne #0x5c135c
005c1330  11 00 53 e3                                      cmp r3, #0x11
005c1334  2d 00 00 0a                                      beq #0x5c13f0
005c1338  00 00 52 e3                                      cmp r2, #0
005c133c  06 00 00 0a                                      beq #0x5c135c
005c1340  01 00 a0 e3                                      mov r0, #1
005c1344  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c1348  00 00 a0 e3                                      mov r0, #0
005c134c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c1350  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
005c1354  03 60 9c e7                                      ldr r6, [ip, r3]
005c1358  e6 ff ff ea                                      b #0x5c12f8
005c135c  2c 80 90 e5                                      ldr r8, [r0, #0x2c]
005c1360  0c 20 96 e5                                      ldr r2, [r6, #0xc]
005c1364  10 00 53 e3                                      cmp r3, #0x10
005c1368  02 80 88 e0                                      add r8, r8, r2
005c136c  28 00 00 0a                                      beq #0x5c1414
005c1370  11 00 53 e3                                      cmp r3, #0x11
005c1374  0f 00 00 0a                                      beq #0x5c13b8
005c1378  08 00 53 e3                                      cmp r3, #8
005c137c  ef ff ff 1a                                      bne #0x5c1340
005c1380  08 30 96 e5                                      ldr r3, [r6, #8]
005c1384  08 c0 a0 e1                                      mov ip, r8
005c1388  03 82 88 e0                                      add r8, r8, r3, lsl #4
005c138c  08 00 5c e1                                      cmp ip, r8
005c1390  ea ff ff 0a                                      beq #0x5c1340
005c1394  00 70 a0 e3                                      mov r7, #0
005c1398  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
005c139c  10 c0 8c e2                                      add ip, ip, #0x10
005c13a0  07 60 84 e0                                      add r6, r4, r7
005c13a4  0c 00 58 e1                                      cmp r8, ip
005c13a8  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
005c13ac  05 70 87 e0                                      add r7, r7, r5
005c13b0  f8 ff ff 1a                                      bne #0x5c1398
005c13b4  e1 ff ff ea                                      b #0x5c1340
005c13b8  08 a0 96 e5                                      ldr sl, [r6, #8]
005c13bc  00 00 5a e3                                      cmp sl, #0
005c13c0  de ff ff 0a                                      beq #0x5c1340
005c13c4  00 70 a0 e3                                      mov r7, #0
005c13c8  07 60 a0 e1                                      mov r6, r7
005c13cc  06 32 88 e0                                      add r3, r8, r6, lsl #4
005c13d0  01 60 86 e2                                      add r6, r6, #1
005c13d4  07 c0 84 e0                                      add ip, r4, r7
005c13d8  0a 00 56 e1                                      cmp r6, sl
005c13dc  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005c13e0  05 70 87 e0                                      add r7, r7, r5
005c13e4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005c13e8  f7 ff ff 1a                                      bne #0x5c13cc
005c13ec  d3 ff ff ea                                      b #0x5c1340
005c13f0  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c13f4  0c 30 96 e5                                      ldr r3, [r6, #0xc]
005c13f8  08 20 96 e5                                      ldr r2, [r6, #8]
005c13fc  04 00 a0 e1                                      mov r0, r4
005c1400  03 10 81 e0                                      add r1, r1, r3
005c1404  02 22 a0 e1                                      lsl r2, r2, #4
005c1408  16 35 f5 eb                                      bl #0x30e868
005c140c  01 00 a0 e3                                      mov r0, #1
005c1410  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c1414  08 90 96 e5                                      ldr sb, [r6, #8]
005c1418  09 91 88 e0                                      add sb, r8, sb, lsl #2
005c141c  09 00 58 e1                                      cmp r8, sb
005c1420  c6 ff ff 0a                                      beq #0x5c1340
005c1424  04 80 88 e2                                      add r8, r8, #4
005c1428  01 00 00 ea                                      b #0x5c1434
005c142c  05 40 84 e0                                      add r4, r4, r5
005c1430  04 80 88 e2                                      add r8, r8, #4
005c1434  04 00 58 e5                                      ldrb r0, [r8, #-4]
005c1438  49 35 f5 eb                                      bl #0x30e964
005c143c  81 10 08 e3                                      movw r1, #0x8081
005c1440  80 1b 43 e3                                      movt r1, #0x3b80
005c1444  48 36 f5 eb                                      bl #0x30ed6c
005c1448  00 60 a0 e1                                      mov r6, r0
005c144c  03 00 58 e5                                      ldrb r0, [r8, #-3]
005c1450  43 35 f5 eb                                      bl #0x30e964
005c1454  81 10 08 e3                                      movw r1, #0x8081
005c1458  80 1b 43 e3                                      movt r1, #0x3b80
005c145c  42 36 f5 eb                                      bl #0x30ed6c
005c1460  00 70 a0 e1                                      mov r7, r0
005c1464  02 00 58 e5                                      ldrb r0, [r8, #-2]
005c1468  3d 35 f5 eb                                      bl #0x30e964
005c146c  81 10 08 e3                                      movw r1, #0x8081
005c1470  80 1b 43 e3                                      movt r1, #0x3b80
005c1474  3c 36 f5 eb                                      bl #0x30ed6c
005c1478  00 a0 a0 e1                                      mov sl, r0
005c147c  01 00 58 e5                                      ldrb r0, [r8, #-1]
005c1480  37 35 f5 eb                                      bl #0x30e964
005c1484  81 10 08 e3                                      movw r1, #0x8081
005c1488  80 1b 43 e3                                      movt r1, #0x3b80
005c148c  36 36 f5 eb                                      bl #0x30ed6c
005c1490  08 00 59 e1                                      cmp sb, r8
005c1494  0c 00 84 e5                                      str r0, [r4, #0xc]
005c1498  08 a0 84 e5                                      str sl, [r4, #8]
005c149c  04 70 84 e5                                      str r7, [r4, #4]
005c14a0  00 60 84 e5                                      str r6, [r4]
005c14a4  e0 ff ff 1a                                      bne #0x5c142c
005c14a8  a4 ff ff ea                                      b #0x5c1340
; mapping-symbol data/literal pool
005c14ac  c0 37 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xc0, 0x37, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c22e8, declared_size=248, range_size=248, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12getParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::getParameter<glitch::video::SColorf>(unsigned short, glitch::video::SColorf*, int) const
; decoder-mode: arm
005c22e8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c22ec  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c22f0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c22f4  02 70 a0 e1                                      mov r7, r2
005c22f8  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005c22fc  05 50 64 e0                                      rsb r5, r4, r5
005c2300  45 51 a0 e1                                      asr r5, r5, #2
005c2304  0c c0 8f e0                                      add ip, pc, ip
005c2308  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c230c  06 22 86 e0                                      add r2, r6, r6, lsl #4
005c2310  03 60 a0 e1                                      mov r6, r3
005c2314  02 24 82 e0                                      add r2, r2, r2, lsl #8
005c2318  02 28 82 e0                                      add r2, r2, r2, lsl #16
005c231c  02 51 85 e0                                      add r5, r5, r2, lsl #2
005c2320  05 00 51 e1                                      cmp r1, r5
005c2324  09 00 00 2a                                      bhs #0x5c2350
005c2328  14 30 a0 e3                                      mov r3, #0x14
005c232c  93 41 24 e0                                      mla r4, r3, r1, r4
005c2330  00 30 94 e5                                      ldr r3, [r4]
005c2334  00 00 53 e3                                      cmp r3, #0
005c2338  02 00 00 0a                                      beq #0x5c2348
005c233c  06 30 d4 e5                                      ldrb r3, [r4, #6]
005c2340  11 00 53 e3                                      cmp r3, #0x11
005c2344  04 00 00 0a                                      beq #0x5c235c
005c2348  00 00 a0 e3                                      mov r0, #0
005c234c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c2350  84 30 9f e5                                      ldr r3, [pc, #0x84]
005c2354  03 40 9c e7                                      ldr r4, [ip, r3]
005c2358  f4 ff ff ea                                      b #0x5c2330
005c235c  00 00 56 e3                                      cmp r6, #0
005c2360  10 00 56 13                                      cmpne r6, #0x10
005c2364  00 50 a0 13                                      movne r5, #0
005c2368  01 50 a0 03                                      moveq r5, #1
005c236c  10 00 00 0a                                      beq #0x5c23b4
005c2370  08 80 94 e5                                      ldr r8, [r4, #8]
005c2374  2c a0 90 e5                                      ldr sl, [r0, #0x2c]
005c2378  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c237c  00 00 58 e3                                      cmp r8, #0
005c2380  09 00 00 0a                                      beq #0x5c23ac
005c2384  03 a0 8a e0                                      add sl, sl, r3
005c2388  05 40 a0 e1                                      mov r4, r5
005c238c  04 32 8a e0                                      add r3, sl, r4, lsl #4
005c2390  01 40 84 e2                                      add r4, r4, #1
005c2394  05 c0 87 e0                                      add ip, r7, r5
005c2398  04 00 58 e1                                      cmp r8, r4
005c239c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005c23a0  06 50 85 e0                                      add r5, r5, r6
005c23a4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005c23a8  f7 ff ff 1a                                      bne #0x5c238c
005c23ac  01 00 a0 e3                                      mov r0, #1
005c23b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c23b4  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005c23b8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c23bc  08 20 94 e5                                      ldr r2, [r4, #8]
005c23c0  07 00 a0 e1                                      mov r0, r7
005c23c4  03 10 81 e0                                      add r1, r1, r3
005c23c8  02 22 a0 e1                                      lsl r2, r2, #4
005c23cc  25 31 f5 eb                                      bl #0x30e868
005c23d0  01 00 a0 e3                                      mov r0, #1
005c23d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005c23d8  8c 27 3d 00 14 28 00 00                          .byte 0x8c, 0x27, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c2e9c, declared_size=532, range_size=532, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColorf>(unsigned short, glitch::video::SColorf const*, int)
; decoder-mode: arm
005c2e9c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c2ea0  18 60 90 e5                                      ldr r6, [r0, #0x18]
005c2ea4  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005c2ea8  f4 c1 9f e5                                      ldr ip, [pc, #0x1f4]
005c2eac  04 40 66 e0                                      rsb r4, r6, r4
005c2eb0  44 71 a0 e1                                      asr r7, r4, #2
005c2eb4  02 40 a0 e1                                      mov r4, r2
005c2eb8  87 50 87 e0                                      add r5, r7, r7, lsl #1
005c2ebc  0c c0 8f e0                                      add ip, pc, ip
005c2ec0  05 22 85 e0                                      add r2, r5, r5, lsl #4
005c2ec4  03 50 a0 e1                                      mov r5, r3
005c2ec8  02 24 82 e0                                      add r2, r2, r2, lsl #8
005c2ecc  02 28 82 e0                                      add r2, r2, r2, lsl #16
005c2ed0  02 71 87 e0                                      add r7, r7, r2, lsl #2
005c2ed4  07 00 51 e1                                      cmp r1, r7
005c2ed8  17 00 00 2a                                      bhs #0x5c2f3c
005c2edc  14 30 a0 e3                                      mov r3, #0x14
005c2ee0  93 61 26 e0                                      mla r6, r3, r1, r6
005c2ee4  00 30 96 e5                                      ldr r3, [r6]
005c2ee8  00 00 53 e3                                      cmp r3, #0
005c2eec  10 00 00 0a                                      beq #0x5c2f34
005c2ef0  b0 21 9f e5                                      ldr r2, [pc, #0x1b0]
005c2ef4  06 30 d6 e5                                      ldrb r3, [r6, #6]
005c2ef8  02 20 9c e7                                      ldr r2, [ip, r2]
005c2efc  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c2f00  02 08 12 e3                                      tst r2, #0x20000
005c2f04  0a 00 00 0a                                      beq #0x5c2f34
005c2f08  01 20 75 e2                                      rsbs r2, r5, #1
005c2f0c  00 20 a0 33                                      movlo r2, #0
005c2f10  00 00 55 e3                                      cmp r5, #0
005c2f14  10 00 55 13                                      cmpne r5, #0x10
005c2f18  0a 00 00 1a                                      bne #0x5c2f48
005c2f1c  11 00 53 e3                                      cmp r3, #0x11
005c2f20  30 00 00 0a                                      beq #0x5c2fe8
005c2f24  00 00 52 e3                                      cmp r2, #0
005c2f28  06 00 00 0a                                      beq #0x5c2f48
005c2f2c  01 00 a0 e3                                      mov r0, #1
005c2f30  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c2f34  00 00 a0 e3                                      mov r0, #0
005c2f38  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c2f3c  68 31 9f e5                                      ldr r3, [pc, #0x168]
005c2f40  03 60 9c e7                                      ldr r6, [ip, r3]
005c2f44  e6 ff ff ea                                      b #0x5c2ee4
005c2f48  2c 80 90 e5                                      ldr r8, [r0, #0x2c]
005c2f4c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
005c2f50  10 00 53 e3                                      cmp r3, #0x10
005c2f54  02 80 88 e0                                      add r8, r8, r2
005c2f58  2b 00 00 0a                                      beq #0x5c300c
005c2f5c  11 00 53 e3                                      cmp r3, #0x11
005c2f60  12 00 00 0a                                      beq #0x5c2fb0
005c2f64  08 00 53 e3                                      cmp r3, #8
005c2f68  ef ff ff 1a                                      bne #0x5c2f2c
005c2f6c  08 20 96 e5                                      ldr r2, [r6, #8]
005c2f70  02 22 88 e0                                      add r2, r8, r2, lsl #4
005c2f74  02 00 58 e1                                      cmp r8, r2
005c2f78  eb ff ff 0a                                      beq #0x5c2f2c
005c2f7c  00 30 94 e5                                      ldr r3, [r4]
005c2f80  00 30 88 e5                                      str r3, [r8]
005c2f84  04 30 94 e5                                      ldr r3, [r4, #4]
005c2f88  04 30 88 e5                                      str r3, [r8, #4]
005c2f8c  08 30 94 e5                                      ldr r3, [r4, #8]
005c2f90  08 30 88 e5                                      str r3, [r8, #8]
005c2f94  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005c2f98  05 40 84 e0                                      add r4, r4, r5
005c2f9c  0c 30 88 e5                                      str r3, [r8, #0xc]
005c2fa0  10 80 88 e2                                      add r8, r8, #0x10
005c2fa4  08 00 52 e1                                      cmp r2, r8
005c2fa8  f3 ff ff 1a                                      bne #0x5c2f7c
005c2fac  de ff ff ea                                      b #0x5c2f2c
005c2fb0  08 a0 96 e5                                      ldr sl, [r6, #8]
005c2fb4  00 00 5a e3                                      cmp sl, #0
005c2fb8  db ff ff 0a                                      beq #0x5c2f2c
005c2fbc  00 60 a0 e3                                      mov r6, #0
005c2fc0  06 c0 a0 e1                                      mov ip, r6
005c2fc4  0c 72 88 e0                                      add r7, r8, ip, lsl #4
005c2fc8  01 c0 8c e2                                      add ip, ip, #1
005c2fcc  06 30 84 e0                                      add r3, r4, r6
005c2fd0  0c 00 5a e1                                      cmp sl, ip
005c2fd4  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005c2fd8  05 60 86 e0                                      add r6, r6, r5
005c2fdc  0f 00 87 e8                                      stm r7, {r0, r1, r2, r3}
005c2fe0  f7 ff ff 1a                                      bne #0x5c2fc4
005c2fe4  d0 ff ff ea                                      b #0x5c2f2c
005c2fe8  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
005c2fec  08 20 96 e5                                      ldr r2, [r6, #8]
005c2ff0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
005c2ff4  04 10 a0 e1                                      mov r1, r4
005c2ff8  02 22 a0 e1                                      lsl r2, r2, #4
005c2ffc  03 00 80 e0                                      add r0, r0, r3
005c3000  18 2e f5 eb                                      bl #0x30e868
005c3004  01 00 a0 e3                                      mov r0, #1
005c3008  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c300c  08 90 96 e5                                      ldr sb, [r6, #8]
005c3010  09 91 88 e0                                      add sb, r8, sb, lsl #2
005c3014  09 00 58 e1                                      cmp r8, sb
005c3018  c3 ff ff 0a                                      beq #0x5c2f2c
005c301c  04 80 88 e2                                      add r8, r8, #4
005c3020  01 00 00 ea                                      b #0x5c302c
005c3024  05 40 84 e0                                      add r4, r4, r5
005c3028  04 80 88 e2                                      add r8, r8, #4
005c302c  43 14 a0 e3                                      mov r1, #0x43000000
005c3030  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005c3034  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c3038  4b 2f f5 eb                                      bl #0x30ed6c
005c303c  97 ec 0b eb                                      bl #0x8be2a0
005c3040  43 14 a0 e3                                      mov r1, #0x43000000
005c3044  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c3048  70 a0 ef e6                                      uxtb sl, r0
005c304c  00 00 94 e5                                      ldr r0, [r4]
005c3050  45 2f f5 eb                                      bl #0x30ed6c
005c3054  91 ec 0b eb                                      bl #0x8be2a0
005c3058  43 14 a0 e3                                      mov r1, #0x43000000
005c305c  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c3060  70 60 ef e6                                      uxtb r6, r0
005c3064  04 00 94 e5                                      ldr r0, [r4, #4]
005c3068  3f 2f f5 eb                                      bl #0x30ed6c
005c306c  8b ec 0b eb                                      bl #0x8be2a0
005c3070  43 14 a0 e3                                      mov r1, #0x43000000
005c3074  70 70 ef e6                                      uxtb r7, r0
005c3078  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c307c  08 00 94 e5                                      ldr r0, [r4, #8]
005c3080  39 2f f5 eb                                      bl #0x30ed6c
005c3084  85 ec 0b eb                                      bl #0x8be2a0
005c3088  08 00 59 e1                                      cmp sb, r8
005c308c  01 a0 48 e5                                      strb sl, [r8, #-1]
005c3090  02 00 48 e5                                      strb r0, [r8, #-2]
005c3094  03 70 48 e5                                      strb r7, [r8, #-3]
005c3098  04 60 48 e5                                      strb r6, [r8, #-4]
005c309c  e0 ff ff 1a                                      bne #0x5c3024
005c30a0  a1 ff ff ea                                      b #0x5c2f2c
; mapping-symbol data/literal pool
005c30a4  d4 1b 3d 00 a4 2c 00 00 14 28 00 00              .byte 0xd4, 0x1b, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c3be0, declared_size=380, range_size=380, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE15setParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameterCvt<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf const&)
; decoder-mode: arm
005c3be0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c3be4  18 40 90 e5                                      ldr r4, [r0, #0x18]
005c3be8  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
005c3bec  5c c1 9f e5                                      ldr ip, [pc, #0x15c]
005c3bf0  03 70 a0 e1                                      mov r7, r3
005c3bf4  05 50 64 e0                                      rsb r5, r4, r5
005c3bf8  45 51 a0 e1                                      asr r5, r5, #2
005c3bfc  0c c0 8f e0                                      add ip, pc, ip
005c3c00  85 60 85 e0                                      add r6, r5, r5, lsl #1
005c3c04  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c3c08  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c3c0c  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c3c10  06 51 85 e0                                      add r5, r5, r6, lsl #2
005c3c14  05 00 51 e1                                      cmp r1, r5
005c3c18  1c 00 00 2a                                      bhs #0x5c3c90
005c3c1c  14 30 a0 e3                                      mov r3, #0x14
005c3c20  93 41 24 e0                                      mla r4, r3, r1, r4
005c3c24  00 30 94 e5                                      ldr r3, [r4]
005c3c28  00 00 53 e3                                      cmp r3, #0
005c3c2c  14 00 00 0a                                      beq #0x5c3c84
005c3c30  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
005c3c34  06 30 d4 e5                                      ldrb r3, [r4, #6]
005c3c38  01 10 9c e7                                      ldr r1, [ip, r1]
005c3c3c  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
005c3c40  02 08 11 e3                                      tst r1, #0x20000
005c3c44  0e 00 00 0a                                      beq #0x5c3c84
005c3c48  08 10 94 e5                                      ldr r1, [r4, #8]
005c3c4c  01 00 52 e1                                      cmp r2, r1
005c3c50  0b 00 00 2a                                      bhs #0x5c3c84
005c3c54  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
005c3c58  0c 50 94 e5                                      ldr r5, [r4, #0xc]
005c3c5c  10 00 53 e3                                      cmp r3, #0x10
005c3c60  05 40 86 e0                                      add r4, r6, r5
005c3c64  0c 00 00 0a                                      beq #0x5c3c9c
005c3c68  11 00 53 e3                                      cmp r3, #0x11
005c3c6c  32 00 00 0a                                      beq #0x5c3d3c
005c3c70  08 00 53 e3                                      cmp r3, #8
005c3c74  25 00 00 0a                                      beq #0x5c3d10
005c3c78  01 c0 a0 e3                                      mov ip, #1
005c3c7c  0c 00 a0 e1                                      mov r0, ip
005c3c80  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c3c84  00 c0 a0 e3                                      mov ip, #0
005c3c88  0c 00 a0 e1                                      mov r0, ip
005c3c8c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c3c90  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
005c3c94  03 40 9c e7                                      ldr r4, [ip, r3]
005c3c98  e1 ff ff ea                                      b #0x5c3c24
005c3c9c  43 14 a0 e3                                      mov r1, #0x43000000
005c3ca0  0c 00 97 e5                                      ldr r0, [r7, #0xc]
005c3ca4  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c3ca8  2f 2c f5 eb                                      bl #0x30ed6c
005c3cac  7b e9 0b eb                                      bl #0x8be2a0
005c3cb0  43 14 a0 e3                                      mov r1, #0x43000000
005c3cb4  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c3cb8  70 a0 ef e6                                      uxtb sl, r0
005c3cbc  00 00 97 e5                                      ldr r0, [r7]
005c3cc0  29 2c f5 eb                                      bl #0x30ed6c
005c3cc4  75 e9 0b eb                                      bl #0x8be2a0
005c3cc8  43 14 a0 e3                                      mov r1, #0x43000000
005c3ccc  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c3cd0  70 80 ef e6                                      uxtb r8, r0
005c3cd4  04 00 97 e5                                      ldr r0, [r7, #4]
005c3cd8  23 2c f5 eb                                      bl #0x30ed6c
005c3cdc  6f e9 0b eb                                      bl #0x8be2a0
005c3ce0  43 14 a0 e3                                      mov r1, #0x43000000
005c3ce4  70 90 ef e6                                      uxtb sb, r0
005c3ce8  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c3cec  08 00 97 e5                                      ldr r0, [r7, #8]
005c3cf0  1d 2c f5 eb                                      bl #0x30ed6c
005c3cf4  69 e9 0b eb                                      bl #0x8be2a0
005c3cf8  01 90 c4 e5                                      strb sb, [r4, #1]
005c3cfc  03 a0 c4 e5                                      strb sl, [r4, #3]
005c3d00  02 00 c4 e5                                      strb r0, [r4, #2]
005c3d04  01 c0 a0 e3                                      mov ip, #1
005c3d08  05 80 c6 e7                                      strb r8, [r6, r5]
005c3d0c  da ff ff ea                                      b #0x5c3c7c
005c3d10  00 30 97 e5                                      ldr r3, [r7]
005c3d14  01 c0 a0 e3                                      mov ip, #1
005c3d18  0c 00 a0 e1                                      mov r0, ip
005c3d1c  05 30 86 e7                                      str r3, [r6, r5]
005c3d20  04 30 97 e5                                      ldr r3, [r7, #4]
005c3d24  04 30 84 e5                                      str r3, [r4, #4]
005c3d28  08 30 97 e5                                      ldr r3, [r7, #8]
005c3d2c  08 30 84 e5                                      str r3, [r4, #8]
005c3d30  0c 30 97 e5                                      ldr r3, [r7, #0xc]
005c3d34  0c 30 84 e5                                      str r3, [r4, #0xc]
005c3d38  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c3d3c  01 c0 a0 e3                                      mov ip, #1
005c3d40  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
005c3d44  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005c3d48  0c 00 a0 e1                                      mov r0, ip
005c3d4c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005c3d50  94 0e 3d 00 a4 2c 00 00 14 28 00 00              .byte 0x94, 0x0e, 0x3d, 0x00, 0xa4, 0x2c, 0x00, 0x00, 0x14, 0x28, 0x00, 0x00

; FUNCTION 0x005c4754, declared_size=168, range_size=168, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_31CGlobalMaterialParameterManagerENS1_30globalmaterialparametermanager10SEmptyBaseEE12setParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColorf>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager, glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColorf>(unsigned short, unsigned int, glitch::video::SColorf const&)
; decoder-mode: arm
005c4754  70 00 2d e9                                      push {r4, r5, r6}
005c4758  18 50 90 e5                                      ldr r5, [r0, #0x18]
005c475c  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005c4760  8c c0 9f e5                                      ldr ip, [pc, #0x8c]
005c4764  04 40 65 e0                                      rsb r4, r5, r4
005c4768  44 41 a0 e1                                      asr r4, r4, #2
005c476c  0c c0 8f e0                                      add ip, pc, ip
005c4770  84 60 84 e0                                      add r6, r4, r4, lsl #1
005c4774  06 62 86 e0                                      add r6, r6, r6, lsl #4
005c4778  06 64 86 e0                                      add r6, r6, r6, lsl #8
005c477c  06 68 86 e0                                      add r6, r6, r6, lsl #16
005c4780  06 41 84 e0                                      add r4, r4, r6, lsl #2
005c4784  04 00 51 e1                                      cmp r1, r4
005c4788  16 00 00 2a                                      bhs #0x5c47e8
005c478c  14 c0 a0 e3                                      mov ip, #0x14
005c4790  9c 51 25 e0                                      mla r5, ip, r1, r5
005c4794  00 10 95 e5                                      ldr r1, [r5]
005c4798  00 00 51 e3                                      cmp r1, #0
005c479c  02 00 00 0a                                      beq #0x5c47ac
005c47a0  06 10 d5 e5                                      ldrb r1, [r5, #6]
005c47a4  11 00 51 e3                                      cmp r1, #0x11
005c47a8  03 00 00 0a                                      beq #0x5c47bc
005c47ac  00 c0 a0 e3                                      mov ip, #0
005c47b0  0c 00 a0 e1                                      mov r0, ip
005c47b4  70 00 bd e8                                      pop {r4, r5, r6}
005c47b8  1e ff 2f e1                                      bx lr
005c47bc  08 10 95 e5                                      ldr r1, [r5, #8]
005c47c0  01 00 52 e1                                      cmp r2, r1
005c47c4  f8 ff ff 2a                                      bhs #0x5c47ac
005c47c8  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005c47cc  2c 40 90 e5                                      ldr r4, [r0, #0x2c]
005c47d0  01 c0 a0 e3                                      mov ip, #1
005c47d4  02 22 81 e0                                      add r2, r1, r2, lsl #4
005c47d8  02 40 84 e0                                      add r4, r4, r2
005c47dc  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005c47e0  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005c47e4  f1 ff ff ea                                      b #0x5c47b0
005c47e8  08 10 9f e5                                      ldr r1, [pc, #8]
005c47ec  01 50 9c e7                                      ldr r5, [ip, r1]
005c47f0  e7 ff ff ea                                      b #0x5c4794
; mapping-symbol data/literal pool
005c47f4  24 03 3d 00 14 28 00 00                          .byte 0x24, 0x03, 0x3d, 0x00, 0x14, 0x28, 0x00, 0x00
