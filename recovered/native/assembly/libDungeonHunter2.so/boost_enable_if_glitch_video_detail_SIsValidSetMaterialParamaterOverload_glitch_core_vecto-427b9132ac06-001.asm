; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005c66d4, declared_size=224, range_size=224, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float> const&)
; decoder-mode: arm
005c66d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c66d8  00 40 a0 e1                                      mov r4, r0
005c66dc  04 00 90 e5                                      ldr r0, [r0, #4]
005c66e0  03 50 a0 e1                                      mov r5, r3
005c66e4  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005c66e8  01 00 5c e1                                      cmp ip, r1
005c66ec  01 00 00 8a                                      bhi #0x5c66f8
005c66f0  00 00 a0 e3                                      mov r0, #0
005c66f4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c66f8  20 30 90 e5                                      ldr r3, [r0, #0x20]
005c66fc  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c6700  fa ff ff 0a                                      beq #0x5c66f0
005c6704  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c6708  08 00 53 e3                                      cmp r3, #8
005c670c  f7 ff ff 1a                                      bne #0x5c66f0
005c6710  08 30 91 e5                                      ldr r3, [r1, #8]
005c6714  03 00 52 e1                                      cmp r2, r3
005c6718  f4 ff ff 2a                                      bhs #0x5c66f0
005c671c  0c 80 91 e5                                      ldr r8, [r1, #0xc]
005c6720  00 70 95 e5                                      ldr r7, [r5]
005c6724  20 a0 84 e2                                      add sl, r4, #0x20
005c6728  02 82 88 e0                                      add r8, r8, r2, lsl #4
005c672c  08 00 9a e7                                      ldr r0, [sl, r8]
005c6730  07 10 a0 e1                                      mov r1, r7
005c6734  14 1e f5 eb                                      bl #0x30df8c
005c6738  00 00 50 e3                                      cmp r0, #0
005c673c  08 60 8a e0                                      add r6, sl, r8
005c6740  0e 00 00 0a                                      beq #0x5c6780
005c6744  04 00 96 e5                                      ldr r0, [r6, #4]
005c6748  04 10 95 e5                                      ldr r1, [r5, #4]
005c674c  0e 1e f5 eb                                      bl #0x30df8c
005c6750  00 00 50 e3                                      cmp r0, #0
005c6754  09 00 00 0a                                      beq #0x5c6780
005c6758  08 00 96 e5                                      ldr r0, [r6, #8]
005c675c  08 10 95 e5                                      ldr r1, [r5, #8]
005c6760  09 1e f5 eb                                      bl #0x30df8c
005c6764  00 00 50 e3                                      cmp r0, #0
005c6768  04 00 00 0a                                      beq #0x5c6780
005c676c  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005c6770  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005c6774  04 1e f5 eb                                      bl #0x30df8c
005c6778  00 00 50 e3                                      cmp r0, #0
005c677c  03 00 00 1a                                      bne #0x5c6790
005c6780  00 30 e0 e3                                      mvn r3, #0
005c6784  0c 30 84 e5                                      str r3, [r4, #0xc]
005c6788  10 30 84 e5                                      str r3, [r4, #0x10]
005c678c  00 70 95 e5                                      ldr r7, [r5]
005c6790  08 70 8a e7                                      str r7, [sl, r8]
005c6794  04 30 95 e5                                      ldr r3, [r5, #4]
005c6798  01 00 a0 e3                                      mov r0, #1
005c679c  04 30 86 e5                                      str r3, [r6, #4]
005c67a0  08 30 95 e5                                      ldr r3, [r5, #8]
005c67a4  08 30 86 e5                                      str r3, [r6, #8]
005c67a8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005c67ac  0c 30 86 e5                                      str r3, [r6, #0xc]
005c67b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005c7128, declared_size=124, range_size=124, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float>&) const
; decoder-mode: arm
005c7128  04 40 2d e5                                      str r4, [sp, #-4]!
005c712c  04 c0 90 e5                                      ldr ip, [r0, #4]
005c7130  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c7134  01 00 54 e1                                      cmp r4, r1
005c7138  05 00 00 9a                                      bls #0x5c7154
005c713c  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c7140  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c7144  02 00 00 0a                                      beq #0x5c7154
005c7148  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c714c  08 00 5c e3                                      cmp ip, #8
005c7150  02 00 00 0a                                      beq #0x5c7160
005c7154  00 00 a0 e3                                      mov r0, #0
005c7158  10 00 bd e8                                      ldm sp!, {r4}
005c715c  1e ff 2f e1                                      bx lr
005c7160  08 c0 91 e5                                      ldr ip, [r1, #8]
005c7164  0c 00 52 e1                                      cmp r2, ip
005c7168  f9 ff ff 2a                                      bhs #0x5c7154
005c716c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c7170  20 10 80 e2                                      add r1, r0, #0x20
005c7174  01 00 a0 e3                                      mov r0, #1
005c7178  02 22 8c e0                                      add r2, ip, r2, lsl #4
005c717c  02 c0 91 e7                                      ldr ip, [r1, r2]
005c7180  02 20 81 e0                                      add r2, r1, r2
005c7184  00 c0 83 e5                                      str ip, [r3]
005c7188  04 10 92 e5                                      ldr r1, [r2, #4]
005c718c  04 10 83 e5                                      str r1, [r3, #4]
005c7190  08 10 92 e5                                      ldr r1, [r2, #8]
005c7194  08 10 83 e5                                      str r1, [r3, #8]
005c7198  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005c719c  0c 20 83 e5                                      str r2, [r3, #0xc]
005c71a0  ec ff ff ea                                      b #0x5c7158

; FUNCTION 0x005c7694, declared_size=308, range_size=308, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float>&) const
; decoder-mode: arm
005c7694  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005c7698  04 40 90 e5                                      ldr r4, [r0, #4]
005c769c  1c c1 9f e5                                      ldr ip, [pc, #0x11c]
005c76a0  0c d0 4d e2                                      sub sp, sp, #0xc
005c76a4  be 50 d4 e1                                      ldrh r5, [r4, #0xe]
005c76a8  0c c0 8f e0                                      add ip, pc, ip
005c76ac  01 00 55 e1                                      cmp r5, r1
005c76b0  16 00 00 9a                                      bls #0x5c7710
005c76b4  20 40 94 e5                                      ldr r4, [r4, #0x20]
005c76b8  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005c76bc  13 00 00 0a                                      beq #0x5c7710
005c76c0  fc 40 9f e5                                      ldr r4, [pc, #0xfc]
005c76c4  06 50 d1 e5                                      ldrb r5, [r1, #6]
005c76c8  04 c0 9c e7                                      ldr ip, [ip, r4]
005c76cc  05 c1 9c e7                                      ldr ip, [ip, r5, lsl #2]
005c76d0  01 0c 1c e3                                      tst ip, #0x100
005c76d4  0d 00 00 0a                                      beq #0x5c7710
005c76d8  08 c0 91 e5                                      ldr ip, [r1, #8]
005c76dc  0c 00 52 e1                                      cmp r2, ip
005c76e0  0a 00 00 2a                                      bhs #0x5c7710
005c76e4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c76e8  20 00 80 e2                                      add r0, r0, #0x20
005c76ec  10 00 55 e3                                      cmp r5, #0x10
005c76f0  02 40 80 e0                                      add r4, r0, r2
005c76f4  08 00 00 0a                                      beq #0x5c771c
005c76f8  11 00 55 e3                                      cmp r5, #0x11
005c76fc  25 00 00 0a                                      beq #0x5c7798
005c7700  08 00 55 e3                                      cmp r5, #8
005c7704  23 00 00 0a                                      beq #0x5c7798
005c7708  01 00 a0 e3                                      mov r0, #1
005c770c  00 00 00 ea                                      b #0x5c7714
005c7710  00 00 a0 e3                                      mov r0, #0
005c7714  0c d0 8d e2                                      add sp, sp, #0xc
005c7718  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005c771c  02 00 d0 e7                                      ldrb r0, [r0, r2]
005c7720  04 30 8d e5                                      str r3, [sp, #4]
005c7724  8e 1c f5 eb                                      bl #0x30e964
005c7728  81 10 08 e3                                      movw r1, #0x8081
005c772c  80 1b 43 e3                                      movt r1, #0x3b80
005c7730  8d 1d f5 eb                                      bl #0x30ed6c
005c7734  00 70 a0 e1                                      mov r7, r0
005c7738  01 00 d4 e5                                      ldrb r0, [r4, #1]
005c773c  88 1c f5 eb                                      bl #0x30e964
005c7740  81 10 08 e3                                      movw r1, #0x8081
005c7744  80 1b 43 e3                                      movt r1, #0x3b80
005c7748  87 1d f5 eb                                      bl #0x30ed6c
005c774c  00 50 a0 e1                                      mov r5, r0
005c7750  02 00 d4 e5                                      ldrb r0, [r4, #2]
005c7754  82 1c f5 eb                                      bl #0x30e964
005c7758  81 10 08 e3                                      movw r1, #0x8081
005c775c  80 1b 43 e3                                      movt r1, #0x3b80
005c7760  81 1d f5 eb                                      bl #0x30ed6c
005c7764  00 60 a0 e1                                      mov r6, r0
005c7768  03 00 d4 e5                                      ldrb r0, [r4, #3]
005c776c  7c 1c f5 eb                                      bl #0x30e964
005c7770  81 10 08 e3                                      movw r1, #0x8081
005c7774  80 1b 43 e3                                      movt r1, #0x3b80
005c7778  7b 1d f5 eb                                      bl #0x30ed6c
005c777c  04 30 9d e5                                      ldr r3, [sp, #4]
005c7780  0c 00 83 e5                                      str r0, [r3, #0xc]
005c7784  00 70 83 e5                                      str r7, [r3]
005c7788  08 60 83 e5                                      str r6, [r3, #8]
005c778c  04 50 83 e5                                      str r5, [r3, #4]
005c7790  01 00 a0 e3                                      mov r0, #1
005c7794  de ff ff ea                                      b #0x5c7714
005c7798  02 20 90 e7                                      ldr r2, [r0, r2]
005c779c  01 00 a0 e3                                      mov r0, #1
005c77a0  00 20 83 e5                                      str r2, [r3]
005c77a4  04 20 94 e5                                      ldr r2, [r4, #4]
005c77a8  04 20 83 e5                                      str r2, [r3, #4]
005c77ac  08 20 94 e5                                      ldr r2, [r4, #8]
005c77b0  08 20 83 e5                                      str r2, [r3, #8]
005c77b4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c77b8  0c 20 83 e5                                      str r2, [r3, #0xc]
005c77bc  d4 ff ff ea                                      b #0x5c7714
; mapping-symbol data/literal pool
005c77c0  e8 d3 3c 00 a4 2c 00 00                          .byte 0xe8, 0xd3, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c7e90, declared_size=532, range_size=532, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameterCvt<glitch::core::vector4d<float> >(unsigned short, glitch::core::vector4d<float>*, int) const
; decoder-mode: arm
005c7e90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005c7e94  04 50 90 e5                                      ldr r5, [r0, #4]
005c7e98  fc c1 9f e5                                      ldr ip, [pc, #0x1fc]
005c7e9c  14 d0 4d e2                                      sub sp, sp, #0x14
005c7ea0  be 60 d5 e1                                      ldrh r6, [r5, #0xe]
005c7ea4  0c c0 8f e0                                      add ip, pc, ip
005c7ea8  02 40 a0 e1                                      mov r4, r2
005c7eac  01 00 56 e1                                      cmp r6, r1
005c7eb0  03 60 a0 e1                                      mov r6, r3
005c7eb4  13 00 00 9a                                      bls #0x5c7f08
005c7eb8  20 30 95 e5                                      ldr r3, [r5, #0x20]
005c7ebc  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c7ec0  10 00 00 0a                                      beq #0x5c7f08
005c7ec4  d4 21 9f e5                                      ldr r2, [pc, #0x1d4]
005c7ec8  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c7ecc  02 20 9c e7                                      ldr r2, [ip, r2]
005c7ed0  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
005c7ed4  01 0c 12 e3                                      tst r2, #0x100
005c7ed8  0a 00 00 0a                                      beq #0x5c7f08
005c7edc  01 20 76 e2                                      rsbs r2, r6, #1
005c7ee0  00 20 a0 33                                      movlo r2, #0
005c7ee4  00 00 56 e3                                      cmp r6, #0
005c7ee8  10 00 56 13                                      cmpne r6, #0x10
005c7eec  08 00 00 1a                                      bne #0x5c7f14
005c7ef0  08 00 53 e3                                      cmp r3, #8
005c7ef4  30 00 00 0a                                      beq #0x5c7fbc
005c7ef8  00 00 52 e3                                      cmp r2, #0
005c7efc  04 00 00 0a                                      beq #0x5c7f14
005c7f00  01 00 a0 e3                                      mov r0, #1
005c7f04  00 00 00 ea                                      b #0x5c7f0c
005c7f08  00 00 a0 e3                                      mov r0, #0
005c7f0c  14 d0 8d e2                                      add sp, sp, #0x14
005c7f10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005c7f14  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c7f18  20 50 80 e2                                      add r5, r0, #0x20
005c7f1c  10 00 53 e3                                      cmp r3, #0x10
005c7f20  02 50 85 e0                                      add r5, r5, r2
005c7f24  2d 00 00 0a                                      beq #0x5c7fe0
005c7f28  11 00 53 e3                                      cmp r3, #0x11
005c7f2c  11 00 00 0a                                      beq #0x5c7f78
005c7f30  08 00 53 e3                                      cmp r3, #8
005c7f34  f1 ff ff 1a                                      bne #0x5c7f00
005c7f38  08 30 91 e5                                      ldr r3, [r1, #8]
005c7f3c  00 00 53 e3                                      cmp r3, #0
005c7f40  ee ff ff 0a                                      beq #0x5c7f00
005c7f44  00 20 95 e5                                      ldr r2, [r5]
005c7f48  01 30 53 e2                                      subs r3, r3, #1
005c7f4c  00 20 84 e5                                      str r2, [r4]
005c7f50  04 20 95 e5                                      ldr r2, [r5, #4]
005c7f54  04 20 84 e5                                      str r2, [r4, #4]
005c7f58  08 20 95 e5                                      ldr r2, [r5, #8]
005c7f5c  08 20 84 e5                                      str r2, [r4, #8]
005c7f60  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005c7f64  10 50 85 e2                                      add r5, r5, #0x10
005c7f68  0c 20 84 e5                                      str r2, [r4, #0xc]
005c7f6c  06 40 84 e0                                      add r4, r4, r6
005c7f70  f3 ff ff 1a                                      bne #0x5c7f44
005c7f74  e1 ff ff ea                                      b #0x5c7f00
005c7f78  08 20 91 e5                                      ldr r2, [r1, #8]
005c7f7c  02 22 85 e0                                      add r2, r5, r2, lsl #4
005c7f80  02 00 55 e1                                      cmp r5, r2
005c7f84  dd ff ff 0a                                      beq #0x5c7f00
005c7f88  00 30 95 e5                                      ldr r3, [r5]
005c7f8c  00 30 84 e5                                      str r3, [r4]
005c7f90  04 30 95 e5                                      ldr r3, [r5, #4]
005c7f94  04 30 84 e5                                      str r3, [r4, #4]
005c7f98  08 30 95 e5                                      ldr r3, [r5, #8]
005c7f9c  08 30 84 e5                                      str r3, [r4, #8]
005c7fa0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005c7fa4  10 50 85 e2                                      add r5, r5, #0x10
005c7fa8  05 00 52 e1                                      cmp r2, r5
005c7fac  0c 30 84 e5                                      str r3, [r4, #0xc]
005c7fb0  06 40 84 e0                                      add r4, r4, r6
005c7fb4  f3 ff ff 1a                                      bne #0x5c7f88
005c7fb8  d0 ff ff ea                                      b #0x5c7f00
005c7fbc  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c7fc0  08 20 91 e5                                      ldr r2, [r1, #8]
005c7fc4  20 10 80 e2                                      add r1, r0, #0x20
005c7fc8  03 10 81 e0                                      add r1, r1, r3
005c7fcc  04 00 a0 e1                                      mov r0, r4
005c7fd0  02 22 a0 e1                                      lsl r2, r2, #4
005c7fd4  23 1a f5 eb                                      bl #0x30e868
005c7fd8  01 00 a0 e3                                      mov r0, #1
005c7fdc  ca ff ff ea                                      b #0x5c7f0c
005c7fe0  08 b0 91 e5                                      ldr fp, [r1, #8]
005c7fe4  0b b1 85 e0                                      add fp, r5, fp, lsl #2
005c7fe8  0b 00 55 e1                                      cmp r5, fp
005c7fec  c3 ff ff 0a                                      beq #0x5c7f00
005c7ff0  04 50 85 e2                                      add r5, r5, #4
005c7ff4  0d 70 a0 e1                                      mov r7, sp
005c7ff8  00 00 00 ea                                      b #0x5c8000
005c7ffc  06 40 84 e0                                      add r4, r4, r6
005c8000  04 00 55 e5                                      ldrb r0, [r5, #-4]
005c8004  56 1a f5 eb                                      bl #0x30e964
005c8008  81 10 08 e3                                      movw r1, #0x8081
005c800c  80 1b 43 e3                                      movt r1, #0x3b80
005c8010  55 1b f5 eb                                      bl #0x30ed6c
005c8014  03 a0 55 e5                                      ldrb sl, [r5, #-3]
005c8018  00 80 a0 e1                                      mov r8, r0
005c801c  02 90 55 e5                                      ldrb sb, [r5, #-2]
005c8020  0a 00 a0 e1                                      mov r0, sl
005c8024  01 a0 55 e5                                      ldrb sl, [r5, #-1]
005c8028  00 80 8d e5                                      str r8, [sp]
005c802c  4c 1a f5 eb                                      bl #0x30e964
005c8030  81 10 08 e3                                      movw r1, #0x8081
005c8034  80 1b 43 e3                                      movt r1, #0x3b80
005c8038  4b 1b f5 eb                                      bl #0x30ed6c
005c803c  04 00 8d e5                                      str r0, [sp, #4]
005c8040  09 00 a0 e1                                      mov r0, sb
005c8044  46 1a f5 eb                                      bl #0x30e964
005c8048  81 10 08 e3                                      movw r1, #0x8081
005c804c  80 1b 43 e3                                      movt r1, #0x3b80
005c8050  45 1b f5 eb                                      bl #0x30ed6c
005c8054  08 00 8d e5                                      str r0, [sp, #8]
005c8058  0a 00 a0 e1                                      mov r0, sl
005c805c  40 1a f5 eb                                      bl #0x30e964
005c8060  81 10 08 e3                                      movw r1, #0x8081
005c8064  80 1b 43 e3                                      movt r1, #0x3b80
005c8068  3f 1b f5 eb                                      bl #0x30ed6c
005c806c  0c 00 8d e5                                      str r0, [sp, #0xc]
005c8070  00 80 84 e5                                      str r8, [r4]
005c8074  04 30 97 e5                                      ldr r3, [r7, #4]
005c8078  05 00 5b e1                                      cmp fp, r5
005c807c  04 50 85 e2                                      add r5, r5, #4
005c8080  04 30 84 e5                                      str r3, [r4, #4]
005c8084  08 30 97 e5                                      ldr r3, [r7, #8]
005c8088  08 30 84 e5                                      str r3, [r4, #8]
005c808c  0c 30 97 e5                                      ldr r3, [r7, #0xc]
005c8090  0c 30 84 e5                                      str r3, [r4, #0xc]
005c8094  d8 ff ff 1a                                      bne #0x5c7ffc
005c8098  98 ff ff ea                                      b #0x5c7f00
; mapping-symbol data/literal pool
005c809c  ec cb 3c 00 a4 2c 00 00                          .byte 0xec, 0xcb, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c88bc, declared_size=180, range_size=180, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::getParameter<glitch::core::vector4d<float> >(unsigned short, glitch::core::vector4d<float>*, int) const
; decoder-mode: arm
005c88bc  10 40 2d e9                                      push {r4, lr}
005c88c0  04 c0 90 e5                                      ldr ip, [r0, #4]
005c88c4  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c88c8  01 00 54 e1                                      cmp r4, r1
005c88cc  05 00 00 9a                                      bls #0x5c88e8
005c88d0  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c88d4  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c88d8  02 00 00 0a                                      beq #0x5c88e8
005c88dc  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c88e0  08 00 5c e3                                      cmp ip, #8
005c88e4  01 00 00 0a                                      beq #0x5c88f0
005c88e8  00 00 a0 e3                                      mov r0, #0
005c88ec  10 80 bd e8                                      pop {r4, pc}
005c88f0  00 00 53 e3                                      cmp r3, #0
005c88f4  10 00 53 13                                      cmpne r3, #0x10
005c88f8  13 00 00 0a                                      beq #0x5c894c
005c88fc  08 c0 91 e5                                      ldr ip, [r1, #8]
005c8900  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c8904  00 00 5c e3                                      cmp ip, #0
005c8908  0d 00 00 0a                                      beq #0x5c8944
005c890c  20 00 80 e2                                      add r0, r0, #0x20
005c8910  01 00 80 e0                                      add r0, r0, r1
005c8914  00 10 90 e5                                      ldr r1, [r0]
005c8918  01 c0 5c e2                                      subs ip, ip, #1
005c891c  00 10 82 e5                                      str r1, [r2]
005c8920  04 10 90 e5                                      ldr r1, [r0, #4]
005c8924  04 10 82 e5                                      str r1, [r2, #4]
005c8928  08 10 90 e5                                      ldr r1, [r0, #8]
005c892c  08 10 82 e5                                      str r1, [r2, #8]
005c8930  0c 10 90 e5                                      ldr r1, [r0, #0xc]
005c8934  10 00 80 e2                                      add r0, r0, #0x10
005c8938  0c 10 82 e5                                      str r1, [r2, #0xc]
005c893c  03 20 82 e0                                      add r2, r2, r3
005c8940  f3 ff ff 1a                                      bne #0x5c8914
005c8944  01 00 a0 e3                                      mov r0, #1
005c8948  10 80 bd e8                                      pop {r4, pc}
005c894c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c8950  08 30 91 e5                                      ldr r3, [r1, #8]
005c8954  20 10 80 e2                                      add r1, r0, #0x20
005c8958  0c 10 81 e0                                      add r1, r1, ip
005c895c  02 00 a0 e1                                      mov r0, r2
005c8960  03 22 a0 e1                                      lsl r2, r3, #4
005c8964  bf 17 f5 eb                                      bl #0x30e868
005c8968  01 00 a0 e3                                      mov r0, #1
005c896c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005c9258, declared_size=492, range_size=492, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector4d<float> >(unsigned short, glitch::core::vector4d<float> const*, int)
; decoder-mode: arm
005c9258  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005c925c  04 c0 90 e5                                      ldr ip, [r0, #4]
005c9260  d4 61 9f e5                                      ldr r6, [pc, #0x1d4]
005c9264  02 40 a0 e1                                      mov r4, r2
005c9268  be 50 dc e1                                      ldrh r5, [ip, #0xe]
005c926c  06 60 8f e0                                      add r6, pc, r6
005c9270  01 00 55 e1                                      cmp r5, r1
005c9274  03 50 a0 e1                                      mov r5, r3
005c9278  18 00 00 9a                                      bls #0x5c92e0
005c927c  20 30 9c e5                                      ldr r3, [ip, #0x20]
005c9280  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005c9284  15 00 00 0a                                      beq #0x5c92e0
005c9288  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
005c928c  06 20 d1 e5                                      ldrb r2, [r1, #6]
005c9290  03 30 96 e7                                      ldr r3, [r6, r3]
005c9294  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005c9298  01 0c 13 e3                                      tst r3, #0x100
005c929c  0f 00 00 0a                                      beq #0x5c92e0
005c92a0  00 30 e0 e3                                      mvn r3, #0
005c92a4  01 20 75 e2                                      rsbs r2, r5, #1
005c92a8  00 20 a0 33                                      movlo r2, #0
005c92ac  0c 30 80 e5                                      str r3, [r0, #0xc]
005c92b0  00 00 55 e3                                      cmp r5, #0
005c92b4  10 00 55 13                                      cmpne r5, #0x10
005c92b8  10 30 80 e5                                      str r3, [r0, #0x10]
005c92bc  06 30 d1 15                                      ldrbne r3, [r1, #6]
005c92c0  08 00 00 1a                                      bne #0x5c92e8
005c92c4  06 30 d1 e5                                      ldrb r3, [r1, #6]
005c92c8  08 00 53 e3                                      cmp r3, #8
005c92cc  2b 00 00 0a                                      beq #0x5c9380
005c92d0  00 00 52 e3                                      cmp r2, #0
005c92d4  03 00 00 0a                                      beq #0x5c92e8
005c92d8  01 00 a0 e3                                      mov r0, #1
005c92dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c92e0  00 00 a0 e3                                      mov r0, #0
005c92e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c92e8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005c92ec  20 c0 80 e2                                      add ip, r0, #0x20
005c92f0  10 00 53 e3                                      cmp r3, #0x10
005c92f4  02 c0 8c e0                                      add ip, ip, r2
005c92f8  29 00 00 0a                                      beq #0x5c93a4
005c92fc  11 00 53 e3                                      cmp r3, #0x11
005c9300  11 00 00 0a                                      beq #0x5c934c
005c9304  08 00 53 e3                                      cmp r3, #8
005c9308  f2 ff ff 1a                                      bne #0x5c92d8
005c930c  08 30 91 e5                                      ldr r3, [r1, #8]
005c9310  00 00 53 e3                                      cmp r3, #0
005c9314  ef ff ff 0a                                      beq #0x5c92d8
005c9318  00 20 94 e5                                      ldr r2, [r4]
005c931c  01 30 53 e2                                      subs r3, r3, #1
005c9320  00 20 8c e5                                      str r2, [ip]
005c9324  04 20 94 e5                                      ldr r2, [r4, #4]
005c9328  04 20 8c e5                                      str r2, [ip, #4]
005c932c  08 20 94 e5                                      ldr r2, [r4, #8]
005c9330  08 20 8c e5                                      str r2, [ip, #8]
005c9334  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005c9338  05 40 84 e0                                      add r4, r4, r5
005c933c  0c 20 8c e5                                      str r2, [ip, #0xc]
005c9340  10 c0 8c e2                                      add ip, ip, #0x10
005c9344  f3 ff ff 1a                                      bne #0x5c9318
005c9348  e2 ff ff ea                                      b #0x5c92d8
005c934c  08 70 91 e5                                      ldr r7, [r1, #8]
005c9350  07 72 8c e0                                      add r7, ip, r7, lsl #4
005c9354  07 00 5c e1                                      cmp ip, r7
005c9358  de ff ff 0a                                      beq #0x5c92d8
005c935c  00 60 a0 e3                                      mov r6, #0
005c9360  06 30 84 e0                                      add r3, r4, r6
005c9364  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005c9368  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005c936c  10 c0 8c e2                                      add ip, ip, #0x10
005c9370  0c 00 57 e1                                      cmp r7, ip
005c9374  05 60 86 e0                                      add r6, r6, r5
005c9378  f8 ff ff 1a                                      bne #0x5c9360
005c937c  d5 ff ff ea                                      b #0x5c92d8
005c9380  08 20 91 e5                                      ldr r2, [r1, #8]
005c9384  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005c9388  20 00 80 e2                                      add r0, r0, #0x20
005c938c  04 10 a0 e1                                      mov r1, r4
005c9390  03 00 80 e0                                      add r0, r0, r3
005c9394  02 22 a0 e1                                      lsl r2, r2, #4
005c9398  32 15 f5 eb                                      bl #0x30e868
005c939c  01 00 a0 e3                                      mov r0, #1
005c93a0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005c93a4  08 90 91 e5                                      ldr sb, [r1, #8]
005c93a8  09 91 8c e0                                      add sb, ip, sb, lsl #2
005c93ac  09 00 5c e1                                      cmp ip, sb
005c93b0  c8 ff ff 0a                                      beq #0x5c92d8
005c93b4  04 60 8c e2                                      add r6, ip, #4
005c93b8  01 00 00 ea                                      b #0x5c93c4
005c93bc  05 40 84 e0                                      add r4, r4, r5
005c93c0  04 60 86 e2                                      add r6, r6, #4
005c93c4  43 14 a0 e3                                      mov r1, #0x43000000
005c93c8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005c93cc  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c93d0  65 16 f5 eb                                      bl #0x30ed6c
005c93d4  b1 d3 0b eb                                      bl #0x8be2a0
005c93d8  43 14 a0 e3                                      mov r1, #0x43000000
005c93dc  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c93e0  70 a0 ef e6                                      uxtb sl, r0
005c93e4  00 00 94 e5                                      ldr r0, [r4]
005c93e8  5f 16 f5 eb                                      bl #0x30ed6c
005c93ec  ab d3 0b eb                                      bl #0x8be2a0
005c93f0  43 14 a0 e3                                      mov r1, #0x43000000
005c93f4  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c93f8  70 70 ef e6                                      uxtb r7, r0
005c93fc  04 00 94 e5                                      ldr r0, [r4, #4]
005c9400  59 16 f5 eb                                      bl #0x30ed6c
005c9404  a5 d3 0b eb                                      bl #0x8be2a0
005c9408  43 14 a0 e3                                      mov r1, #0x43000000
005c940c  70 80 ef e6                                      uxtb r8, r0
005c9410  7f 18 81 e2                                      add r1, r1, #0x7f0000
005c9414  08 00 94 e5                                      ldr r0, [r4, #8]
005c9418  53 16 f5 eb                                      bl #0x30ed6c
005c941c  9f d3 0b eb                                      bl #0x8be2a0
005c9420  06 00 59 e1                                      cmp sb, r6
005c9424  01 a0 46 e5                                      strb sl, [r6, #-1]
005c9428  02 00 46 e5                                      strb r0, [r6, #-2]
005c942c  03 80 46 e5                                      strb r8, [r6, #-3]
005c9430  04 70 46 e5                                      strb r7, [r6, #-4]
005c9434  e0 ff ff 1a                                      bne #0x5c93bc
005c9438  a6 ff ff ea                                      b #0x5c92d8
; mapping-symbol data/literal pool
005c943c  24 b8 3c 00 a4 2c 00 00                          .byte 0x24, 0xb8, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005c9d3c, declared_size=192, range_size=192, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameter<glitch::core::vector4d<float> >(unsigned short, glitch::core::vector4d<float> const*, int)
; decoder-mode: arm
005c9d3c  10 40 2d e9                                      push {r4, lr}
005c9d40  04 c0 90 e5                                      ldr ip, [r0, #4]
005c9d44  be 40 dc e1                                      ldrh r4, [ip, #0xe]
005c9d48  01 00 54 e1                                      cmp r4, r1
005c9d4c  05 00 00 9a                                      bls #0x5c9d68
005c9d50  20 c0 9c e5                                      ldr ip, [ip, #0x20]
005c9d54  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005c9d58  02 00 00 0a                                      beq #0x5c9d68
005c9d5c  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005c9d60  08 00 5c e3                                      cmp ip, #8
005c9d64  01 00 00 0a                                      beq #0x5c9d70
005c9d68  00 00 a0 e3                                      mov r0, #0
005c9d6c  10 80 bd e8                                      pop {r4, pc}
005c9d70  00 c0 e0 e3                                      mvn ip, #0
005c9d74  00 00 53 e3                                      cmp r3, #0
005c9d78  10 00 53 13                                      cmpne r3, #0x10
005c9d7c  0c c0 80 e5                                      str ip, [r0, #0xc]
005c9d80  10 c0 80 e5                                      str ip, [r0, #0x10]
005c9d84  13 00 00 0a                                      beq #0x5c9dd8
005c9d88  08 c0 91 e5                                      ldr ip, [r1, #8]
005c9d8c  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005c9d90  00 00 5c e3                                      cmp ip, #0
005c9d94  0d 00 00 0a                                      beq #0x5c9dd0
005c9d98  20 00 80 e2                                      add r0, r0, #0x20
005c9d9c  01 00 80 e0                                      add r0, r0, r1
005c9da0  00 10 92 e5                                      ldr r1, [r2]
005c9da4  01 c0 5c e2                                      subs ip, ip, #1
005c9da8  00 10 80 e5                                      str r1, [r0]
005c9dac  04 10 92 e5                                      ldr r1, [r2, #4]
005c9db0  04 10 80 e5                                      str r1, [r0, #4]
005c9db4  08 10 92 e5                                      ldr r1, [r2, #8]
005c9db8  08 10 80 e5                                      str r1, [r0, #8]
005c9dbc  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005c9dc0  03 20 82 e0                                      add r2, r2, r3
005c9dc4  0c 10 80 e5                                      str r1, [r0, #0xc]
005c9dc8  10 00 80 e2                                      add r0, r0, #0x10
005c9dcc  f3 ff ff 1a                                      bne #0x5c9da0
005c9dd0  01 00 a0 e3                                      mov r0, #1
005c9dd4  10 80 bd e8                                      pop {r4, pc}
005c9dd8  08 30 91 e5                                      ldr r3, [r1, #8]
005c9ddc  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005c9de0  20 00 80 e2                                      add r0, r0, #0x20
005c9de4  02 10 a0 e1                                      mov r1, r2
005c9de8  0c 00 80 e0                                      add r0, r0, ip
005c9dec  03 22 a0 e1                                      lsl r2, r3, #4
005c9df0  9c 12 f5 eb                                      bl #0x30e868
005c9df4  01 00 a0 e3                                      mov r0, #1
005c9df8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005ce768, declared_size=500, range_size=500, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float> const&)
; decoder-mode: arm
005ce768  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ce76c  04 c0 90 e5                                      ldr ip, [r0, #4]
005ce770  00 40 a0 e1                                      mov r4, r0
005ce774  d8 01 9f e5                                      ldr r0, [pc, #0x1d8]
005ce778  be 50 dc e1                                      ldrh r5, [ip, #0xe]
005ce77c  0c d0 4d e2                                      sub sp, sp, #0xc
005ce780  00 00 8f e0                                      add r0, pc, r0
005ce784  01 00 55 e1                                      cmp r5, r1
005ce788  03 60 a0 e1                                      mov r6, r3
005ce78c  16 00 00 9a                                      bls #0x5ce7ec
005ce790  20 30 9c e5                                      ldr r3, [ip, #0x20]
005ce794  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005ce798  13 00 00 0a                                      beq #0x5ce7ec
005ce79c  b4 c1 9f e5                                      ldr ip, [pc, #0x1b4]
005ce7a0  06 30 d1 e5                                      ldrb r3, [r1, #6]
005ce7a4  0c 00 90 e7                                      ldr r0, [r0, ip]
005ce7a8  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
005ce7ac  01 0c 10 e3                                      tst r0, #0x100
005ce7b0  0d 00 00 0a                                      beq #0x5ce7ec
005ce7b4  08 00 91 e5                                      ldr r0, [r1, #8]
005ce7b8  00 00 52 e1                                      cmp r2, r0
005ce7bc  0a 00 00 2a                                      bhs #0x5ce7ec
005ce7c0  0c 70 91 e5                                      ldr r7, [r1, #0xc]
005ce7c4  20 80 84 e2                                      add r8, r4, #0x20
005ce7c8  10 00 53 e3                                      cmp r3, #0x10
005ce7cc  07 50 88 e0                                      add r5, r8, r7
005ce7d0  09 00 00 0a                                      beq #0x5ce7fc
005ce7d4  11 00 53 e3                                      cmp r3, #0x11
005ce7d8  47 00 00 0a                                      beq #0x5ce8fc
005ce7dc  08 00 53 e3                                      cmp r3, #8
005ce7e0  2d 00 00 0a                                      beq #0x5ce89c
005ce7e4  01 c0 a0 e3                                      mov ip, #1
005ce7e8  00 00 00 ea                                      b #0x5ce7f0
005ce7ec  00 c0 a0 e3                                      mov ip, #0
005ce7f0  0c 00 a0 e1                                      mov r0, ip
005ce7f4  0c d0 8d e2                                      add sp, sp, #0xc
005ce7f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ce7fc  43 14 a0 e3                                      mov r1, #0x43000000
005ce800  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005ce804  7f 18 81 e2                                      add r1, r1, #0x7f0000
005ce808  57 01 f5 eb                                      bl #0x30ed6c
005ce80c  a3 be 0b eb                                      bl #0x8be2a0
005ce810  43 14 a0 e3                                      mov r1, #0x43000000
005ce814  70 90 ef e6                                      uxtb sb, r0
005ce818  7f 18 81 e2                                      add r1, r1, #0x7f0000
005ce81c  00 00 96 e5                                      ldr r0, [r6]
005ce820  51 01 f5 eb                                      bl #0x30ed6c
005ce824  9d be 0b eb                                      bl #0x8be2a0
005ce828  43 14 a0 e3                                      mov r1, #0x43000000
005ce82c  70 a0 ef e6                                      uxtb sl, r0
005ce830  7f 18 81 e2                                      add r1, r1, #0x7f0000
005ce834  04 00 96 e5                                      ldr r0, [r6, #4]
005ce838  4b 01 f5 eb                                      bl #0x30ed6c
005ce83c  97 be 0b eb                                      bl #0x8be2a0
005ce840  43 14 a0 e3                                      mov r1, #0x43000000
005ce844  70 b0 ef e6                                      uxtb fp, r0
005ce848  7f 18 81 e2                                      add r1, r1, #0x7f0000
005ce84c  08 00 96 e5                                      ldr r0, [r6, #8]
005ce850  45 01 f5 eb                                      bl #0x30ed6c
005ce854  91 be 0b eb                                      bl #0x8be2a0
005ce858  70 00 ef e6                                      uxtb r0, r0
005ce85c  07 90 cd e5                                      strb sb, [sp, #7]
005ce860  06 00 cd e5                                      strb r0, [sp, #6]
005ce864  05 b0 cd e5                                      strb fp, [sp, #5]
005ce868  04 a0 cd e5                                      strb sl, [sp, #4]
005ce86c  04 30 9d e5                                      ldr r3, [sp, #4]
005ce870  07 20 98 e7                                      ldr r2, [r8, r7]
005ce874  01 c0 a0 e3                                      mov ip, #1
005ce878  03 00 52 e1                                      cmp r2, r3
005ce87c  00 30 e0 13                                      mvnne r3, #0
005ce880  0c 30 84 15                                      strne r3, [r4, #0xc]
005ce884  10 30 84 15                                      strne r3, [r4, #0x10]
005ce888  01 b0 c5 e5                                      strb fp, [r5, #1]
005ce88c  03 90 c5 e5                                      strb sb, [r5, #3]
005ce890  02 00 c5 e5                                      strb r0, [r5, #2]
005ce894  07 a0 c8 e7                                      strb sl, [r8, r7]
005ce898  d4 ff ff ea                                      b #0x5ce7f0
005ce89c  00 a0 96 e5                                      ldr sl, [r6]
005ce8a0  07 00 98 e7                                      ldr r0, [r8, r7]
005ce8a4  0a 10 a0 e1                                      mov r1, sl
005ce8a8  b7 fd f4 eb                                      bl #0x30df8c
005ce8ac  00 00 50 e3                                      cmp r0, #0
005ce8b0  04 00 00 0a                                      beq #0x5ce8c8
005ce8b4  04 00 95 e5                                      ldr r0, [r5, #4]
005ce8b8  04 10 96 e5                                      ldr r1, [r6, #4]
005ce8bc  b2 fd f4 eb                                      bl #0x30df8c
005ce8c0  00 00 50 e3                                      cmp r0, #0
005ce8c4  17 00 00 1a                                      bne #0x5ce928
005ce8c8  00 30 e0 e3                                      mvn r3, #0
005ce8cc  0c 30 84 e5                                      str r3, [r4, #0xc]
005ce8d0  10 30 84 e5                                      str r3, [r4, #0x10]
005ce8d4  00 a0 96 e5                                      ldr sl, [r6]
005ce8d8  07 a0 88 e7                                      str sl, [r8, r7]
005ce8dc  04 30 96 e5                                      ldr r3, [r6, #4]
005ce8e0  01 c0 a0 e3                                      mov ip, #1
005ce8e4  04 30 85 e5                                      str r3, [r5, #4]
005ce8e8  08 30 96 e5                                      ldr r3, [r6, #8]
005ce8ec  08 30 85 e5                                      str r3, [r5, #8]
005ce8f0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
005ce8f4  0c 30 85 e5                                      str r3, [r5, #0xc]
005ce8f8  bc ff ff ea                                      b #0x5ce7f0
005ce8fc  06 10 a0 e1                                      mov r1, r6
005ce900  05 00 a0 e1                                      mov r0, r5
005ce904  63 f0 ff eb                                      bl #0x5caa98
005ce908  00 00 50 e3                                      cmp r0, #0
005ce90c  00 30 e0 03                                      mvneq r3, #0
005ce910  0c 30 84 05                                      streq r3, [r4, #0xc]
005ce914  10 30 84 05                                      streq r3, [r4, #0x10]
005ce918  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
005ce91c  01 c0 a0 e3                                      mov ip, #1
005ce920  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
005ce924  b1 ff ff ea                                      b #0x5ce7f0
005ce928  08 00 95 e5                                      ldr r0, [r5, #8]
005ce92c  08 10 96 e5                                      ldr r1, [r6, #8]
005ce930  95 fd f4 eb                                      bl #0x30df8c
005ce934  00 00 50 e3                                      cmp r0, #0
005ce938  e2 ff ff 0a                                      beq #0x5ce8c8
005ce93c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005ce940  0c 10 96 e5                                      ldr r1, [r6, #0xc]
005ce944  90 fd f4 eb                                      bl #0x30df8c
005ce948  00 00 50 e3                                      cmp r0, #0
005ce94c  e1 ff ff 1a                                      bne #0x5ce8d8
005ce950  dc ff ff ea                                      b #0x5ce8c8
; mapping-symbol data/literal pool
005ce954  10 63 3c 00 a4 2c 00 00                          .byte 0x10, 0x63, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00
