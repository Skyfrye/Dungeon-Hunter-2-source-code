; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cf118, declared_size=116, range_size=116, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::core::vector3d<int> >(unsigned short, unsigned int, glitch::core::vector3d<int> const&)
; decoder-mode: arm
005cf118  04 40 2d e5                                      str r4, [sp, #-4]!
005cf11c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cf120  01 00 5c e1                                      cmp ip, r1
005cf124  05 00 00 9a                                      bls #0x5cf140
005cf128  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cf12c  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cf130  02 00 00 0a                                      beq #0x5cf140
005cf134  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cf138  03 00 5c e3                                      cmp ip, #3
005cf13c  02 00 00 0a                                      beq #0x5cf14c
005cf140  00 00 a0 e3                                      mov r0, #0
005cf144  10 00 bd e8                                      ldm sp!, {r4}
005cf148  1e ff 2f e1                                      bx lr
005cf14c  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf150  0c 00 52 e1                                      cmp r2, ip
005cf154  f9 ff ff 2a                                      bhs #0x5cf140
005cf158  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cf15c  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005cf160  0c 00 a0 e3                                      mov r0, #0xc
005cf164  90 12 22 e0                                      mla r2, r0, r2, r1
005cf168  00 40 93 e5                                      ldr r4, [r3]
005cf16c  02 10 8c e0                                      add r1, ip, r2
005cf170  01 00 a0 e3                                      mov r0, #1
005cf174  02 40 8c e7                                      str r4, [ip, r2]
005cf178  04 20 93 e5                                      ldr r2, [r3, #4]
005cf17c  04 20 81 e5                                      str r2, [r1, #4]
005cf180  08 30 93 e5                                      ldr r3, [r3, #8]
005cf184  08 30 81 e5                                      str r3, [r1, #8]
005cf188  ed ff ff ea                                      b #0x5cf144

; FUNCTION 0x005cf574, declared_size=144, range_size=144, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::core::vector3d<int> >(unsigned short, unsigned int, glitch::core::vector3d<int> const&)
; decoder-mode: arm
005cf574  30 00 2d e9                                      push {r4, r5}
005cf578  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005cf57c  78 c0 9f e5                                      ldr ip, [pc, #0x78]
005cf580  01 00 54 e1                                      cmp r4, r1
005cf584  0c c0 8f e0                                      add ip, pc, ip
005cf588  18 00 00 9a                                      bls #0x5cf5f0
005cf58c  20 40 90 e5                                      ldr r4, [r0, #0x20]
005cf590  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005cf594  15 00 00 0a                                      beq #0x5cf5f0
005cf598  60 50 9f e5                                      ldr r5, [pc, #0x60]
005cf59c  06 40 d1 e5                                      ldrb r4, [r1, #6]
005cf5a0  05 c0 9c e7                                      ldr ip, [ip, r5]
005cf5a4  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005cf5a8  08 00 1c e3                                      tst ip, #8
005cf5ac  0f 00 00 0a                                      beq #0x5cf5f0
005cf5b0  08 c0 91 e5                                      ldr ip, [r1, #8]
005cf5b4  0c 00 52 e1                                      cmp r2, ip
005cf5b8  0c 00 00 2a                                      bhs #0x5cf5f0
005cf5bc  03 00 54 e3                                      cmp r4, #3
005cf5c0  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005cf5c4  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cf5c8  00 40 93 05                                      ldreq r4, [r3]
005cf5cc  01 00 a0 13                                      movne r0, #1
005cf5d0  01 20 8c 00                                      addeq r2, ip, r1
005cf5d4  01 40 8c 07                                      streq r4, [ip, r1]
005cf5d8  04 10 93 05                                      ldreq r1, [r3, #4]
005cf5dc  01 00 a0 03                                      moveq r0, #1
005cf5e0  04 10 82 05                                      streq r1, [r2, #4]
005cf5e4  08 30 93 05                                      ldreq r3, [r3, #8]
005cf5e8  08 30 82 05                                      streq r3, [r2, #8]
005cf5ec  00 00 00 ea                                      b #0x5cf5f4
005cf5f0  00 00 a0 e3                                      mov r0, #0
005cf5f4  30 00 bd e8                                      pop {r4, r5}
005cf5f8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005cf5fc  0c 55 3c 00 a4 2c 00 00                          .byte 0x0c, 0x55, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005cfd44, declared_size=108, range_size=108, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::core::vector3d<int> >(unsigned short, unsigned int, glitch::core::vector3d<int>&) const
; decoder-mode: arm
005cfd44  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005cfd48  01 00 5c e1                                      cmp ip, r1
005cfd4c  05 00 00 9a                                      bls #0x5cfd68
005cfd50  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005cfd54  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005cfd58  02 00 00 0a                                      beq #0x5cfd68
005cfd5c  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005cfd60  03 00 5c e3                                      cmp ip, #3
005cfd64  01 00 00 0a                                      beq #0x5cfd70
005cfd68  00 00 a0 e3                                      mov r0, #0
005cfd6c  1e ff 2f e1                                      bx lr
005cfd70  08 c0 91 e5                                      ldr ip, [r1, #8]
005cfd74  0c 00 52 e1                                      cmp r2, ip
005cfd78  fa ff ff 2a                                      bhs #0x5cfd68
005cfd7c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005cfd80  24 10 90 e5                                      ldr r1, [r0, #0x24]
005cfd84  0c 00 a0 e3                                      mov r0, #0xc
005cfd88  90 c2 22 e0                                      mla r2, r0, r2, ip
005cfd8c  01 00 a0 e3                                      mov r0, #1
005cfd90  02 c0 91 e7                                      ldr ip, [r1, r2]
005cfd94  02 20 81 e0                                      add r2, r1, r2
005cfd98  00 c0 83 e5                                      str ip, [r3]
005cfd9c  04 10 92 e5                                      ldr r1, [r2, #4]
005cfda0  04 10 83 e5                                      str r1, [r3, #4]
005cfda4  08 20 92 e5                                      ldr r2, [r2, #8]
005cfda8  08 20 83 e5                                      str r2, [r3, #8]
005cfdac  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d0198, declared_size=144, range_size=144, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::core::vector3d<int> >(unsigned short, unsigned int, glitch::core::vector3d<int>&) const
; decoder-mode: arm
005d0198  30 00 2d e9                                      push {r4, r5}
005d019c  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d01a0  78 c0 9f e5                                      ldr ip, [pc, #0x78]
005d01a4  01 00 54 e1                                      cmp r4, r1
005d01a8  0c c0 8f e0                                      add ip, pc, ip
005d01ac  18 00 00 9a                                      bls #0x5d0214
005d01b0  20 40 90 e5                                      ldr r4, [r0, #0x20]
005d01b4  01 12 94 e0                                      adds r1, r4, r1, lsl #4
005d01b8  15 00 00 0a                                      beq #0x5d0214
005d01bc  60 50 9f e5                                      ldr r5, [pc, #0x60]
005d01c0  06 40 d1 e5                                      ldrb r4, [r1, #6]
005d01c4  05 c0 9c e7                                      ldr ip, [ip, r5]
005d01c8  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
005d01cc  08 00 1c e3                                      tst ip, #8
005d01d0  0f 00 00 0a                                      beq #0x5d0214
005d01d4  08 c0 91 e5                                      ldr ip, [r1, #8]
005d01d8  0c 00 52 e1                                      cmp r2, ip
005d01dc  0c 00 00 2a                                      bhs #0x5d0214
005d01e0  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d01e4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d01e8  03 00 54 e3                                      cmp r4, #3
005d01ec  01 00 a0 13                                      movne r0, #1
005d01f0  02 10 90 07                                      ldreq r1, [r0, r2]
005d01f4  02 20 80 00                                      addeq r2, r0, r2
005d01f8  01 00 a0 03                                      moveq r0, #1
005d01fc  00 10 83 05                                      streq r1, [r3]
005d0200  04 10 92 05                                      ldreq r1, [r2, #4]
005d0204  04 10 83 05                                      streq r1, [r3, #4]
005d0208  08 20 92 05                                      ldreq r2, [r2, #8]
005d020c  08 20 83 05                                      streq r2, [r3, #8]
005d0210  00 00 00 ea                                      b #0x5d0218
005d0214  00 00 a0 e3                                      mov r0, #0
005d0218  30 00 bd e8                                      pop {r4, r5}
005d021c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005d0220  e8 48 3c 00 a4 2c 00 00                          .byte 0xe8, 0x48, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d1250, declared_size=240, range_size=240, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameterCvt<glitch::core::vector3d<int> >(unsigned short, glitch::core::vector3d<int>*, int) const
; decoder-mode: arm
005d1250  70 40 2d e9                                      push {r4, r5, r6, lr}
005d1254  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d1258  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
005d125c  01 00 5c e1                                      cmp ip, r1
005d1260  04 40 8f e0                                      add r4, pc, r4
005d1264  02 c0 a0 e1                                      mov ip, r2
005d1268  13 00 00 9a                                      bls #0x5d12bc
005d126c  20 20 90 e5                                      ldr r2, [r0, #0x20]
005d1270  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005d1274  10 00 00 0a                                      beq #0x5d12bc
005d1278  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
005d127c  06 20 d1 e5                                      ldrb r2, [r1, #6]
005d1280  05 40 94 e7                                      ldr r4, [r4, r5]
005d1284  02 41 94 e7                                      ldr r4, [r4, r2, lsl #2]
005d1288  08 00 14 e3                                      tst r4, #8
005d128c  0a 00 00 0a                                      beq #0x5d12bc
005d1290  01 40 73 e2                                      rsbs r4, r3, #1
005d1294  00 40 a0 33                                      movlo r4, #0
005d1298  00 00 53 e3                                      cmp r3, #0
005d129c  0c 00 53 13                                      cmpne r3, #0xc
005d12a0  07 00 00 1a                                      bne #0x5d12c4
005d12a4  03 00 52 e3                                      cmp r2, #3
005d12a8  18 00 00 0a                                      beq #0x5d1310
005d12ac  00 00 54 e3                                      cmp r4, #0
005d12b0  03 00 00 0a                                      beq #0x5d12c4
005d12b4  01 00 a0 e3                                      mov r0, #1
005d12b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d12bc  00 00 a0 e3                                      mov r0, #0
005d12c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d12c4  03 00 52 e3                                      cmp r2, #3
005d12c8  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d12cc  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d12d0  f7 ff ff 1a                                      bne #0x5d12b4
005d12d4  08 10 91 e5                                      ldr r1, [r1, #8]
005d12d8  00 00 51 e3                                      cmp r1, #0
005d12dc  f4 ff ff 0a                                      beq #0x5d12b4
005d12e0  02 20 80 e0                                      add r2, r0, r2
005d12e4  00 00 92 e5                                      ldr r0, [r2]
005d12e8  01 10 51 e2                                      subs r1, r1, #1
005d12ec  00 00 8c e5                                      str r0, [ip]
005d12f0  04 00 92 e5                                      ldr r0, [r2, #4]
005d12f4  04 00 8c e5                                      str r0, [ip, #4]
005d12f8  08 00 92 e5                                      ldr r0, [r2, #8]
005d12fc  0c 20 82 e2                                      add r2, r2, #0xc
005d1300  08 00 8c e5                                      str r0, [ip, #8]
005d1304  03 c0 8c e0                                      add ip, ip, r3
005d1308  f5 ff ff 1a                                      bne #0x5d12e4
005d130c  e8 ff ff ea                                      b #0x5d12b4
005d1310  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d1314  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d1318  08 30 91 e5                                      ldr r3, [r1, #8]
005d131c  02 10 80 e0                                      add r1, r0, r2
005d1320  0c 20 a0 e3                                      mov r2, #0xc
005d1324  92 03 02 e0                                      mul r2, r2, r3
005d1328  0c 00 a0 e1                                      mov r0, ip
005d132c  4d f5 f4 eb                                      bl #0x30e868
005d1330  01 00 a0 e3                                      mov r0, #1
005d1334  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d1338  30 38 3c 00 a4 2c 00 00                          .byte 0x30, 0x38, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d19c4, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::getParameter<glitch::core::vector3d<int> >(unsigned short, glitch::core::vector3d<int>*, int) const
; decoder-mode: arm
005d19c4  10 40 2d e9                                      push {r4, lr}
005d19c8  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d19cc  02 c0 a0 e1                                      mov ip, r2
005d19d0  01 00 54 e1                                      cmp r4, r1
005d19d4  05 00 00 9a                                      bls #0x5d19f0
005d19d8  20 20 90 e5                                      ldr r2, [r0, #0x20]
005d19dc  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005d19e0  02 00 00 0a                                      beq #0x5d19f0
005d19e4  06 20 d1 e5                                      ldrb r2, [r1, #6]
005d19e8  03 00 52 e3                                      cmp r2, #3
005d19ec  01 00 00 0a                                      beq #0x5d19f8
005d19f0  00 00 a0 e3                                      mov r0, #0
005d19f4  10 80 bd e8                                      pop {r4, pc}
005d19f8  00 00 53 e3                                      cmp r3, #0
005d19fc  0c 00 53 13                                      cmpne r3, #0xc
005d1a00  11 00 00 0a                                      beq #0x5d1a4c
005d1a04  08 40 91 e5                                      ldr r4, [r1, #8]
005d1a08  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d1a0c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d1a10  00 00 54 e3                                      cmp r4, #0
005d1a14  0a 00 00 0a                                      beq #0x5d1a44
005d1a18  02 20 80 e0                                      add r2, r0, r2
005d1a1c  00 10 92 e5                                      ldr r1, [r2]
005d1a20  01 40 54 e2                                      subs r4, r4, #1
005d1a24  00 10 8c e5                                      str r1, [ip]
005d1a28  04 10 92 e5                                      ldr r1, [r2, #4]
005d1a2c  04 10 8c e5                                      str r1, [ip, #4]
005d1a30  08 10 92 e5                                      ldr r1, [r2, #8]
005d1a34  0c 20 82 e2                                      add r2, r2, #0xc
005d1a38  08 10 8c e5                                      str r1, [ip, #8]
005d1a3c  03 c0 8c e0                                      add ip, ip, r3
005d1a40  f5 ff ff 1a                                      bne #0x5d1a1c
005d1a44  01 00 a0 e3                                      mov r0, #1
005d1a48  10 80 bd e8                                      pop {r4, pc}
005d1a4c  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d1a50  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d1a54  08 30 91 e5                                      ldr r3, [r1, #8]
005d1a58  02 10 80 e0                                      add r1, r0, r2
005d1a5c  0c 20 a0 e3                                      mov r2, #0xc
005d1a60  92 03 02 e0                                      mul r2, r2, r3
005d1a64  0c 00 a0 e1                                      mov r0, ip
005d1a68  7e f3 f4 eb                                      bl #0x30e868
005d1a6c  01 00 a0 e3                                      mov r0, #1
005d1a70  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d256c, declared_size=240, range_size=240, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterCvt<glitch::core::vector3d<int> >(unsigned short, glitch::core::vector3d<int> const*, int)
; decoder-mode: arm
005d256c  70 40 2d e9                                      push {r4, r5, r6, lr}
005d2570  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d2574  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
005d2578  01 00 5c e1                                      cmp ip, r1
005d257c  04 40 8f e0                                      add r4, pc, r4
005d2580  02 c0 a0 e1                                      mov ip, r2
005d2584  13 00 00 9a                                      bls #0x5d25d8
005d2588  20 20 90 e5                                      ldr r2, [r0, #0x20]
005d258c  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005d2590  10 00 00 0a                                      beq #0x5d25d8
005d2594  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
005d2598  06 20 d1 e5                                      ldrb r2, [r1, #6]
005d259c  05 40 94 e7                                      ldr r4, [r4, r5]
005d25a0  02 41 94 e7                                      ldr r4, [r4, r2, lsl #2]
005d25a4  08 00 14 e3                                      tst r4, #8
005d25a8  0a 00 00 0a                                      beq #0x5d25d8
005d25ac  01 40 73 e2                                      rsbs r4, r3, #1
005d25b0  00 40 a0 33                                      movlo r4, #0
005d25b4  00 00 53 e3                                      cmp r3, #0
005d25b8  0c 00 53 13                                      cmpne r3, #0xc
005d25bc  07 00 00 1a                                      bne #0x5d25e0
005d25c0  03 00 52 e3                                      cmp r2, #3
005d25c4  18 00 00 0a                                      beq #0x5d262c
005d25c8  00 00 54 e3                                      cmp r4, #0
005d25cc  03 00 00 0a                                      beq #0x5d25e0
005d25d0  01 00 a0 e3                                      mov r0, #1
005d25d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d25d8  00 00 a0 e3                                      mov r0, #0
005d25dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d25e0  03 00 52 e3                                      cmp r2, #3
005d25e4  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d25e8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d25ec  f7 ff ff 1a                                      bne #0x5d25d0
005d25f0  08 10 91 e5                                      ldr r1, [r1, #8]
005d25f4  00 00 51 e3                                      cmp r1, #0
005d25f8  f4 ff ff 0a                                      beq #0x5d25d0
005d25fc  02 20 80 e0                                      add r2, r0, r2
005d2600  00 00 9c e5                                      ldr r0, [ip]
005d2604  01 10 51 e2                                      subs r1, r1, #1
005d2608  00 00 82 e5                                      str r0, [r2]
005d260c  04 00 9c e5                                      ldr r0, [ip, #4]
005d2610  04 00 82 e5                                      str r0, [r2, #4]
005d2614  08 00 9c e5                                      ldr r0, [ip, #8]
005d2618  03 c0 8c e0                                      add ip, ip, r3
005d261c  08 00 82 e5                                      str r0, [r2, #8]
005d2620  0c 20 82 e2                                      add r2, r2, #0xc
005d2624  f5 ff ff 1a                                      bne #0x5d2600
005d2628  e8 ff ff ea                                      b #0x5d25d0
005d262c  08 20 91 e5                                      ldr r2, [r1, #8]
005d2630  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2634  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2638  0c 10 a0 e3                                      mov r1, #0xc
005d263c  91 02 02 e0                                      mul r2, r1, r2
005d2640  03 00 80 e0                                      add r0, r0, r3
005d2644  0c 10 a0 e1                                      mov r1, ip
005d2648  86 f0 f4 eb                                      bl #0x30e868
005d264c  01 00 a0 e3                                      mov r0, #1
005d2650  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005d2654  14 25 3c 00 a4 2c 00 00                          .byte 0x14, 0x25, 0x3c, 0x00, 0xa4, 0x2c, 0x00, 0x00

; FUNCTION 0x005d2d1c, declared_size=176, range_size=176, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<int> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameter<glitch::core::vector3d<int> >(unsigned short, glitch::core::vector3d<int> const*, int)
; decoder-mode: arm
005d2d1c  10 40 2d e9                                      push {r4, lr}
005d2d20  be 40 d0 e1                                      ldrh r4, [r0, #0xe]
005d2d24  02 c0 a0 e1                                      mov ip, r2
005d2d28  01 00 54 e1                                      cmp r4, r1
005d2d2c  05 00 00 9a                                      bls #0x5d2d48
005d2d30  20 20 90 e5                                      ldr r2, [r0, #0x20]
005d2d34  01 12 92 e0                                      adds r1, r2, r1, lsl #4
005d2d38  02 00 00 0a                                      beq #0x5d2d48
005d2d3c  06 20 d1 e5                                      ldrb r2, [r1, #6]
005d2d40  03 00 52 e3                                      cmp r2, #3
005d2d44  01 00 00 0a                                      beq #0x5d2d50
005d2d48  00 00 a0 e3                                      mov r0, #0
005d2d4c  10 80 bd e8                                      pop {r4, pc}
005d2d50  00 00 53 e3                                      cmp r3, #0
005d2d54  0c 00 53 13                                      cmpne r3, #0xc
005d2d58  11 00 00 0a                                      beq #0x5d2da4
005d2d5c  08 40 91 e5                                      ldr r4, [r1, #8]
005d2d60  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2d64  0c 20 91 e5                                      ldr r2, [r1, #0xc]
005d2d68  00 00 54 e3                                      cmp r4, #0
005d2d6c  0a 00 00 0a                                      beq #0x5d2d9c
005d2d70  02 20 80 e0                                      add r2, r0, r2
005d2d74  00 10 9c e5                                      ldr r1, [ip]
005d2d78  01 40 54 e2                                      subs r4, r4, #1
005d2d7c  00 10 82 e5                                      str r1, [r2]
005d2d80  04 10 9c e5                                      ldr r1, [ip, #4]
005d2d84  04 10 82 e5                                      str r1, [r2, #4]
005d2d88  08 10 9c e5                                      ldr r1, [ip, #8]
005d2d8c  03 c0 8c e0                                      add ip, ip, r3
005d2d90  08 10 82 e5                                      str r1, [r2, #8]
005d2d94  0c 20 82 e2                                      add r2, r2, #0xc
005d2d98  f5 ff ff 1a                                      bne #0x5d2d74
005d2d9c  01 00 a0 e3                                      mov r0, #1
005d2da0  10 80 bd e8                                      pop {r4, pc}
005d2da4  08 20 91 e5                                      ldr r2, [r1, #8]
005d2da8  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005d2dac  24 00 90 e5                                      ldr r0, [r0, #0x24]
005d2db0  0c 10 a0 e3                                      mov r1, #0xc
005d2db4  91 02 02 e0                                      mul r2, r1, r2
005d2db8  03 00 80 e0                                      add r0, r0, r3
005d2dbc  0c 10 a0 e1                                      mov r1, ip
005d2dc0  a8 ee f4 eb                                      bl #0x30e868
005d2dc4  01 00 a0 e3                                      mov r0, #1
005d2dc8  10 80 bd e8                                      pop {r4, pc}
