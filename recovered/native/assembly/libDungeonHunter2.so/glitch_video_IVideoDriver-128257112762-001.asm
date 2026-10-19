; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035eb10, declared_size=128, range_size=128, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver11setMaterialERKN5boost13intrusive_ptrINS0_9CMaterialEEERKNS3_IKNS0_27CMaterialVertexAttributeMapEEE
; demangled: glitch::video::IVideoDriver::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap const> const&)
; decoder-mode: arm
0035eb10  70 40 2d e9                                      push {r4, r5, r6, lr}
0035eb14  00 50 a0 e1                                      mov r5, r0
0035eb18  00 00 91 e5                                      ldr r0, [r1]
0035eb1c  02 60 a0 e1                                      mov r6, r2
0035eb20  01 40 a0 e1                                      mov r4, r1
0035eb24  82 9c 09 eb                                      bl #0x5c5d34
0035eb28  00 10 96 e5                                      ldr r1, [r6]
0035eb2c  00 20 a0 e1                                      mov r2, r0
0035eb30  00 00 51 e3                                      cmp r1, #0
0035eb34  13 00 00 0a                                      beq #0x35eb88
0035eb38  00 30 94 e5                                      ldr r3, [r4]
0035eb3c  00 00 53 e3                                      cmp r3, #0
0035eb40  10 00 00 0a                                      beq #0x35eb88
0035eb44  04 30 91 e5                                      ldr r3, [r1, #4]
0035eb48  0c 60 a0 e3                                      mov r6, #0xc
0035eb4c  c5 0e 04 e3                                      movw r0, #0x4ec5
0035eb50  18 c0 93 e5                                      ldr ip, [r3, #0x18]
0035eb54  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0035eb58  ec 04 4c e3                                      movt r0, #0xc4ec
0035eb5c  96 c2 2c e0                                      mla ip, r6, r2, ip
0035eb60  08 10 81 e2                                      add r1, r1, #8
0035eb64  08 c0 9c e5                                      ldr ip, [ip, #8]
0035eb68  0c 30 63 e0                                      rsb r3, r3, ip
0035eb6c  43 31 a0 e1                                      asr r3, r3, #2
0035eb70  90 03 03 e0                                      mul r3, r0, r3
0035eb74  03 31 81 e0                                      add r3, r1, r3, lsl #2
0035eb78  05 00 a0 e1                                      mov r0, r5
0035eb7c  04 10 a0 e1                                      mov r1, r4
0035eb80  70 40 bd e8                                      pop {r4, r5, r6, lr}
0035eb84  f7 39 09 ea                                      b #0x5ad368
0035eb88  00 30 a0 e3                                      mov r3, #0
0035eb8c  f9 ff ff ea                                      b #0x35eb78

; FUNCTION 0x0035ebd0, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver14drawMeshBufferERKN5boost13intrusive_ptrIKNS_5scene11CMeshBufferEEE
; demangled: glitch::video::IVideoDriver::drawMeshBuffer(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
; decoder-mode: arm
0035ebd0  10 40 2d e9                                      push {r4, lr}
0035ebd4  00 20 91 e5                                      ldr r2, [r1]
0035ebd8  10 d0 4d e2                                      sub sp, sp, #0x10
0035ebdc  00 00 52 e3                                      cmp r2, #0
0035ebe0  10 00 00 0a                                      beq #0x35ec28
0035ebe4  14 30 92 e5                                      ldr r3, [r2, #0x14]
0035ebe8  00 c0 90 e5                                      ldr ip, [r0]
0035ebec  0c 40 8d e2                                      add r4, sp, #0xc
0035ebf0  00 00 53 e3                                      cmp r3, #0
0035ebf4  58 c0 9c e5                                      ldr ip, [ip, #0x58]
0035ebf8  0c 30 8d e5                                      str r3, [sp, #0xc]
0035ebfc  00 20 93 15                                      ldrne r2, [r3]
0035ec00  01 20 82 12                                      addne r2, r2, #1
0035ec04  00 20 83 15                                      strne r2, [r3]
0035ec08  00 20 91 15                                      ldrne r2, [r1]
0035ec0c  00 10 8d e5                                      str r1, [sp]
0035ec10  04 10 a0 e1                                      mov r1, r4
0035ec14  30 30 82 e2                                      add r3, r2, #0x30
0035ec18  18 20 82 e2                                      add r2, r2, #0x18
0035ec1c  3c ff 2f e1                                      blx ip
0035ec20  04 00 a0 e1                                      mov r0, r4
0035ec24  d9 ff ff eb                                      bl #0x35eb90
0035ec28  10 d0 8d e2                                      add sp, sp, #0x10
0035ec2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005244ac, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver11setMaterialERKN5boost13intrusive_ptrINS0_9CMaterialEEEPKNS3_INS0_19CVertexAttributeMapEEE.clone.2
; demangled: glitch::video::IVideoDriver::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*) [clone .clone.2]
; decoder-mode: arm
005244ac  70 40 2d e9                                      push {r4, r5, r6, lr}
005244b0  00 30 91 e5                                      ldr r3, [r1]
005244b4  01 40 a0 e1                                      mov r4, r1
005244b8  00 50 a0 e1                                      mov r5, r0
005244bc  00 00 53 e3                                      cmp r3, #0
005244c0  ff 20 a0 03                                      moveq r2, #0xff
005244c4  02 00 00 0a                                      beq #0x5244d4
005244c8  03 00 a0 e1                                      mov r0, r3
005244cc  18 86 02 eb                                      bl #0x5c5d34
005244d0  00 20 a0 e1                                      mov r2, r0
005244d4  05 00 a0 e1                                      mov r0, r5
005244d8  04 10 a0 e1                                      mov r1, r4
005244dc  00 30 a0 e3                                      mov r3, #0
005244e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
005244e4  9f 23 02 ea                                      b #0x5ad368

; FUNCTION 0x0057f308, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver4drawERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingE.clone.1
; demangled: glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**) [clone .clone.1]
; decoder-mode: arm
0057f308  04 e0 2d e5                                      str lr, [sp, #-4]!
0057f30c  00 c0 90 e5                                      ldr ip, [r0]
0057f310  14 d0 4d e2                                      sub sp, sp, #0x14
0057f314  10 e0 8d e2                                      add lr, sp, #0x10
0057f318  00 30 a0 e3                                      mov r3, #0
0057f31c  58 c0 9c e5                                      ldr ip, [ip, #0x58]
0057f320  04 30 2e e5                                      str r3, [lr, #-4]!
0057f324  00 e0 8d e5                                      str lr, [sp]
0057f328  3c ff 2f e1                                      blx ip
0057f32c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0057f330  00 00 50 e3                                      cmp r0, #0
0057f334  00 00 00 0a                                      beq #0x57f33c
0057f338  91 78 f6 eb                                      bl #0x31d584
0057f33c  14 d0 8d e2                                      add sp, sp, #0x14
0057f340  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x005a8ae8, declared_size=140, range_size=140, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver24resetDefaultDynamicLightEv
; demangled: glitch::video::IVideoDriver::resetDefaultDynamicLight()
; decoder-mode: arm
005a8ae8  40 20 90 e5                                      ldr r2, [r0, #0x40]
005a8aec  00 30 a0 e3                                      mov r3, #0
005a8af0  fe 15 a0 e3                                      mov r1, #0x3f800000
005a8af4  04 30 82 e5                                      str r3, [r2, #4]
005a8af8  10 30 82 e5                                      str r3, [r2, #0x10]
005a8afc  0c 30 82 e5                                      str r3, [r2, #0xc]
005a8b00  08 30 82 e5                                      str r3, [r2, #8]
005a8b04  40 20 90 e5                                      ldr r2, [r0, #0x40]
005a8b08  14 30 82 e5                                      str r3, [r2, #0x14]
005a8b0c  20 30 82 e5                                      str r3, [r2, #0x20]
005a8b10  1c 30 82 e5                                      str r3, [r2, #0x1c]
005a8b14  18 30 82 e5                                      str r3, [r2, #0x18]
005a8b18  40 20 90 e5                                      ldr r2, [r0, #0x40]
005a8b1c  24 30 82 e5                                      str r3, [r2, #0x24]
005a8b20  30 30 82 e5                                      str r3, [r2, #0x30]
005a8b24  2c 30 82 e5                                      str r3, [r2, #0x2c]
005a8b28  28 30 82 e5                                      str r3, [r2, #0x28]
005a8b2c  40 20 90 e5                                      ldr r2, [r0, #0x40]
005a8b30  34 10 82 e5                                      str r1, [r2, #0x34]
005a8b34  3c 30 82 e5                                      str r3, [r2, #0x3c]
005a8b38  38 30 82 e5                                      str r3, [r2, #0x38]
005a8b3c  40 20 90 e5                                      ldr r2, [r0, #0x40]
005a8b40  40 30 82 e5                                      str r3, [r2, #0x40]
005a8b44  40 20 90 e5                                      ldr r2, [r0, #0x40]
005a8b48  48 30 82 e5                                      str r3, [r2, #0x48]
005a8b4c  44 30 82 e5                                      str r3, [r2, #0x44]
005a8b50  40 20 90 e5                                      ldr r2, [r0, #0x40]
005a8b54  4c 30 82 e5                                      str r3, [r2, #0x4c]
005a8b58  40 30 90 e5                                      ldr r3, [r0, #0x40]
005a8b5c  03 20 a0 e3                                      mov r2, #3
005a8b60  b8 25 c3 e1                                      strh r2, [r3, #0x58]
005a8b64  40 30 90 e5                                      ldr r3, [r0, #0x40]
005a8b68  00 20 a0 e3                                      mov r2, #0
005a8b6c  5a 20 c3 e5                                      strb r2, [r3, #0x5a]
005a8b70  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a8b74, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver10beginSceneEv
; demangled: glitch::video::IVideoDriver::beginScene()
; decoder-mode: arm
005a8b74  00 30 a0 e3                                      mov r3, #0
005a8b78  84 30 80 e5                                      str r3, [r0, #0x84]
005a8b7c  78 30 80 e5                                      str r3, [r0, #0x78]
005a8b80  7c 30 80 e5                                      str r3, [r0, #0x7c]
005a8b84  80 30 80 e5                                      str r3, [r0, #0x80]
005a8b88  01 00 a0 e3                                      mov r0, #1
005a8b8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a8b90, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver17onShaderDestroyedEPNS0_7IShaderE
; demangled: glitch::video::IVideoDriver::onShaderDestroyed(glitch::video::IShader*)
; decoder-mode: arm
005a8b90  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
005a8b94  01 00 53 e1                                      cmp r3, r1
005a8b98  00 30 a0 03                                      moveq r3, #0
005a8b9c  f4 30 80 05                                      streq r3, [r0, #0xf4]
005a8ba0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a8ba4, declared_size=56, range_size=56, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver19onMaterialDestroyedEPNS0_9CMaterialE
; demangled: glitch::video::IVideoDriver::onMaterialDestroyed(glitch::video::CMaterial*)
; decoder-mode: arm
005a8ba4  ec 30 90 e5                                      ldr r3, [r0, #0xec]
005a8ba8  03 00 51 e1                                      cmp r1, r3
005a8bac  00 30 a0 03                                      moveq r3, #0
005a8bb0  e8 30 80 05                                      streq r3, [r0, #0xe8]
005a8bb4  ec 30 80 05                                      streq r3, [r0, #0xec]
005a8bb8  f0 30 90 e5                                      ldr r3, [r0, #0xf0]
005a8bbc  00 20 e0 03                                      mvneq r2, #0
005a8bc0  f8 20 c0 05                                      strbeq r2, [r0, #0xf8]
005a8bc4  03 00 51 e1                                      cmp r1, r3
005a8bc8  00 30 e0 03                                      mvneq r3, #0
005a8bcc  f9 30 c0 05                                      strbeq r3, [r0, #0xf9]
005a8bd0  00 30 a0 03                                      moveq r3, #0
005a8bd4  f0 30 80 05                                      streq r3, [r0, #0xf0]
005a8bd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a8bdc, declared_size=236, range_size=236, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver14draw3DTriangleERKNS_4core10triangle3dIfEENS0_6SColorE
; demangled: glitch::video::IVideoDriver::draw3DTriangle(glitch::core::triangle3d<float> const&, glitch::video::SColor)
; decoder-mode: arm
005a8bdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a8be0  dc e0 9f e5                                      ldr lr, [pc, #0xdc]
005a8be4  20 c0 91 e5                                      ldr ip, [r1, #0x20]
005a8be8  00 a0 91 e5                                      ldr sl, [r1]
005a8bec  0e e0 8f e0                                      add lr, pc, lr
005a8bf0  0e 30 a0 e1                                      mov r3, lr
005a8bf4  04 80 91 e5                                      ldr r8, [r1, #4]
005a8bf8  08 70 91 e5                                      ldr r7, [r1, #8]
005a8bfc  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005a8c00  10 50 91 e5                                      ldr r5, [r1, #0x10]
005a8c04  14 40 91 e5                                      ldr r4, [r1, #0x14]
005a8c08  04 b0 93 e4                                      ldr fp, [r3], #4
005a8c0c  04 90 9e e5                                      ldr sb, [lr, #4]
005a8c10  18 e0 91 e5                                      ldr lr, [r1, #0x18]
005a8c14  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
005a8c18  54 d0 4d e2                                      sub sp, sp, #0x54
005a8c1c  24 50 8d e5                                      str r5, [sp, #0x24]
005a8c20  30 10 8d e5                                      str r1, [sp, #0x30]
005a8c24  04 10 93 e5                                      ldr r1, [r3, #4]
005a8c28  48 30 8d e2                                      add r3, sp, #0x48
005a8c2c  28 40 8d e5                                      str r4, [sp, #0x28]
005a8c30  2c e0 8d e5                                      str lr, [sp, #0x2c]
005a8c34  34 c0 8d e5                                      str ip, [sp, #0x34]
005a8c38  0c 20 8d e5                                      str r2, [sp, #0xc]
005a8c3c  22 4c a0 e1                                      lsr r4, r2, #0x18
005a8c40  72 c0 ef e6                                      uxtb ip, r2
005a8c44  52 e4 e7 e7                                      ubfx lr, r2, #8, #8
005a8c48  14 a0 8d e5                                      str sl, [sp, #0x14]
005a8c4c  18 80 8d e5                                      str r8, [sp, #0x18]
005a8c50  1c 70 8d e5                                      str r7, [sp, #0x1c]
005a8c54  20 60 8d e5                                      str r6, [sp, #0x20]
005a8c58  52 28 e7 e7                                      ubfx r2, r2, #0x10, #8
005a8c5c  04 90 83 e4                                      str sb, [r3], #4
005a8c60  03 50 a0 e3                                      mov r5, #3
005a8c64  00 10 83 e5                                      str r1, [r3]
005a8c68  44 b0 8d e5                                      str fp, [sp, #0x44]
005a8c6c  3a 20 cd e5                                      strb r2, [sp, #0x3a]
005a8c70  38 c0 cd e5                                      strb ip, [sp, #0x38]
005a8c74  3e 20 cd e5                                      strb r2, [sp, #0x3e]
005a8c78  3b 40 cd e5                                      strb r4, [sp, #0x3b]
005a8c7c  39 e0 cd e5                                      strb lr, [sp, #0x39]
005a8c80  3f 40 cd e5                                      strb r4, [sp, #0x3f]
005a8c84  3d e0 cd e5                                      strb lr, [sp, #0x3d]
005a8c88  14 10 8d e2                                      add r1, sp, #0x14
005a8c8c  3c c0 cd e5                                      strb ip, [sp, #0x3c]
005a8c90  38 30 8d e2                                      add r3, sp, #0x38
005a8c94  42 20 cd e5                                      strb r2, [sp, #0x42]
005a8c98  40 c0 cd e5                                      strb ip, [sp, #0x40]
005a8c9c  43 40 cd e5                                      strb r4, [sp, #0x43]
005a8ca0  41 e0 cd e5                                      strb lr, [sp, #0x41]
005a8ca4  04 50 8d e5                                      str r5, [sp, #4]
005a8ca8  00 50 8d e5                                      str r5, [sp]
005a8cac  00 c0 90 e5                                      ldr ip, [r0]
005a8cb0  44 20 8d e2                                      add r2, sp, #0x44
005a8cb4  0f e0 a0 e1                                      mov lr, pc
005a8cb8  20 f0 9c e5                                      ldr pc, [ip, #0x20]
005a8cbc  54 d0 8d e2                                      add sp, sp, #0x54
005a8cc0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005a8cc4  80 71 33 00                                      .byte 0x80, 0x71, 0x33, 0x00

; FUNCTION 0x005a8cc8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver16checkDriverResetEv
; demangled: glitch::video::IVideoDriver::checkDriverReset()
; decoder-mode: arm
005a8cc8  00 00 a0 e3                                      mov r0, #0
005a8ccc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a8cd0, declared_size=364, range_size=364, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver8onResizeERKNS_4core11dimension2dIiEE
; demangled: glitch::video::IVideoDriver::onResize(glitch::core::dimension2d<int> const&)
; decoder-mode: arm
005a8cd0  30 40 2d e9                                      push {r4, r5, lr}
005a8cd4  c8 30 90 e5                                      ldr r3, [r0, #0xc8]
005a8cd8  3c 21 90 e5                                      ldr r2, [r0, #0x13c]
005a8cdc  24 d0 4d e2                                      sub sp, sp, #0x24
005a8ce0  01 00 12 e3                                      tst r2, #1
005a8ce4  00 20 93 e5                                      ldr r2, [r3]
005a8ce8  04 00 91 15                                      ldrne r0, [r1, #4]
005a8cec  00 30 91 15                                      ldrne r3, [r1]
005a8cf0  00 00 91 05                                      ldreq r0, [r1]
005a8cf4  04 30 91 05                                      ldreq r3, [r1, #4]
005a8cf8  2c 10 92 e5                                      ldr r1, [r2, #0x2c]
005a8cfc  00 00 51 e3                                      cmp r1, #0
005a8d00  02 00 00 1a                                      bne #0x5a8d10
005a8d04  30 10 92 e5                                      ldr r1, [r2, #0x30]
005a8d08  00 00 51 e3                                      cmp r1, #0
005a8d0c  34 00 00 0a                                      beq #0x5a8de4
005a8d10  24 e0 92 e5                                      ldr lr, [r2, #0x24]
005a8d14  28 c0 92 e5                                      ldr ip, [r2, #0x28]
005a8d18  0c 40 92 e5                                      ldr r4, [r2, #0xc]
005a8d1c  10 10 92 e5                                      ldr r1, [r2, #0x10]
005a8d20  ce 5f ce e1                                      bic r5, lr, lr, asr #31
005a8d24  04 e0 8e e0                                      add lr, lr, r4
005a8d28  01 10 8c e0                                      add r1, ip, r1
005a8d2c  0e 00 50 e1                                      cmp r0, lr
005a8d30  00 e0 a0 b1                                      movlt lr, r0
005a8d34  0e e0 a0 a1                                      movge lr, lr
005a8d38  01 00 53 e1                                      cmp r3, r1
005a8d3c  03 10 a0 b1                                      movlt r1, r3
005a8d40  01 10 a0 a1                                      movge r1, r1
005a8d44  cc cf cc e1                                      bic ip, ip, ip, asr #31
005a8d48  0c 00 51 e1                                      cmp r1, ip
005a8d4c  01 c0 a0 b1                                      movlt ip, r1
005a8d50  0c c0 a0 a1                                      movge ip, ip
005a8d54  05 00 5e e1                                      cmp lr, r5
005a8d58  0e 50 a0 b1                                      movlt r5, lr
005a8d5c  05 50 a0 a1                                      movge r5, r5
005a8d60  0e e0 65 e0                                      rsb lr, r5, lr
005a8d64  01 10 6c e0                                      rsb r1, ip, r1
005a8d68  00 e0 6e e0                                      rsb lr, lr, r0
005a8d6c  03 10 61 e0                                      rsb r1, r1, r3
005a8d70  24 50 82 e5                                      str r5, [r2, #0x24]
005a8d74  28 c0 82 e5                                      str ip, [r2, #0x28]
005a8d78  30 10 82 e5                                      str r1, [r2, #0x30]
005a8d7c  2c e0 82 e5                                      str lr, [r2, #0x2c]
005a8d80  1c 50 92 e5                                      ldr r5, [r2, #0x1c]
005a8d84  14 c0 92 e5                                      ldr ip, [r2, #0x14]
005a8d88  00 00 6e e0                                      rsb r0, lr, r0
005a8d8c  03 30 61 e0                                      rsb r3, r1, r3
005a8d90  05 50 6c e0                                      rsb r5, ip, r5
005a8d94  04 00 55 e1                                      cmp r5, r4
005a8d98  20 e0 92 e5                                      ldr lr, [r2, #0x20]
005a8d9c  18 10 92 e5                                      ldr r1, [r2, #0x18]
005a8da0  12 00 00 0a                                      beq #0x5a8df0
005a8da4  00 10 92 e5                                      ldr r1, [r2]
005a8da8  0c 00 82 e5                                      str r0, [r2, #0xc]
005a8dac  10 30 82 e5                                      str r3, [r2, #0x10]
005a8db0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005a8db4  00 c0 8d e5                                      str ip, [sp]
005a8db8  18 c0 92 e5                                      ldr ip, [r2, #0x18]
005a8dbc  02 00 a0 e1                                      mov r0, r2
005a8dc0  0d 10 a0 e1                                      mov r1, sp
005a8dc4  04 c0 8d e5                                      str ip, [sp, #4]
005a8dc8  1c c0 92 e5                                      ldr ip, [r2, #0x1c]
005a8dcc  08 c0 8d e5                                      str ip, [sp, #8]
005a8dd0  20 20 92 e5                                      ldr r2, [r2, #0x20]
005a8dd4  0c 20 8d e5                                      str r2, [sp, #0xc]
005a8dd8  33 ff 2f e1                                      blx r3
005a8ddc  24 d0 8d e2                                      add sp, sp, #0x24
005a8de0  30 80 bd e8                                      pop {r4, r5, pc}
005a8de4  0c 40 92 e5                                      ldr r4, [r2, #0xc]
005a8de8  01 e0 a0 e1                                      mov lr, r1
005a8dec  e3 ff ff ea                                      b #0x5a8d80
005a8df0  10 40 92 e5                                      ldr r4, [r2, #0x10]
005a8df4  0e 10 61 e0                                      rsb r1, r1, lr
005a8df8  04 00 51 e1                                      cmp r1, r4
005a8dfc  e8 ff ff 1a                                      bne #0x5a8da4
005a8e00  00 c0 92 e5                                      ldr ip, [r2]
005a8e04  0c 00 82 e5                                      str r0, [r2, #0xc]
005a8e08  10 30 82 e5                                      str r3, [r2, #0x10]
005a8e0c  00 10 a0 e3                                      mov r1, #0
005a8e10  0c 30 9c e5                                      ldr r3, [ip, #0xc]
005a8e14  14 10 8d e5                                      str r1, [sp, #0x14]
005a8e18  10 10 8d e5                                      str r1, [sp, #0x10]
005a8e1c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005a8e20  10 c0 92 e5                                      ldr ip, [r2, #0x10]
005a8e24  02 00 a0 e1                                      mov r0, r2
005a8e28  18 10 8d e5                                      str r1, [sp, #0x18]
005a8e2c  1c c0 8d e5                                      str ip, [sp, #0x1c]
005a8e30  10 10 8d e2                                      add r1, sp, #0x10
005a8e34  33 ff 2f e1                                      blx r3
005a8e38  e7 ff ff ea                                      b #0x5a8ddc

; FUNCTION 0x005a8e3c, declared_size=180, range_size=180, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver28setFramebufferScreenInternalERKNS_4core4rectIiEE
; demangled: glitch::video::IVideoDriver::setFramebufferScreenInternal(glitch::core::rect<int> const&)
; decoder-mode: arm
005a8e3c  f0 05 2d e9                                      push {r4, r5, r6, r7, r8, sl}
005a8e40  c8 c0 91 e5                                      ldr ip, [r1, #0xc8]
005a8e44  00 c0 9c e5                                      ldr ip, [ip]
005a8e48  0c 40 9c e5                                      ldr r4, [ip, #0xc]
005a8e4c  00 40 80 e5                                      str r4, [r0]
005a8e50  10 40 9c e5                                      ldr r4, [ip, #0x10]
005a8e54  04 40 80 e5                                      str r4, [r0, #4]
005a8e58  c8 30 91 e5                                      ldr r3, [r1, #0xc8]
005a8e5c  0c 40 92 e5                                      ldr r4, [r2, #0xc]
005a8e60  04 10 92 e5                                      ldr r1, [r2, #4]
005a8e64  00 30 93 e5                                      ldr r3, [r3]
005a8e68  08 50 92 e5                                      ldr r5, [r2, #8]
005a8e6c  00 a0 92 e5                                      ldr sl, [r2]
005a8e70  10 60 93 e5                                      ldr r6, [r3, #0x10]
005a8e74  2c 80 93 e5                                      ldr r8, [r3, #0x2c]
005a8e78  0c 70 93 e5                                      ldr r7, [r3, #0xc]
005a8e7c  30 30 93 e5                                      ldr r3, [r3, #0x30]
005a8e80  ca 2f ca e1                                      bic r2, sl, sl, asr #31
005a8e84  07 70 88 e0                                      add r7, r8, r7
005a8e88  06 60 83 e0                                      add r6, r3, r6
005a8e8c  05 00 57 e1                                      cmp r7, r5
005a8e90  07 50 a0 b1                                      movlt r5, r7
005a8e94  05 50 a0 a1                                      movge r5, r5
005a8e98  04 00 56 e1                                      cmp r6, r4
005a8e9c  06 40 a0 b1                                      movlt r4, r6
005a8ea0  04 40 a0 a1                                      movge r4, r4
005a8ea4  c1 3f c1 e1                                      bic r3, r1, r1, asr #31
005a8ea8  03 00 54 e1                                      cmp r4, r3
005a8eac  04 30 a0 b1                                      movlt r3, r4
005a8eb0  03 30 a0 a1                                      movge r3, r3
005a8eb4  02 00 55 e1                                      cmp r5, r2
005a8eb8  05 20 a0 b1                                      movlt r2, r5
005a8ebc  02 20 a0 a1                                      movge r2, r2
005a8ec0  05 50 62 e0                                      rsb r5, r2, r5
005a8ec4  04 40 63 e0                                      rsb r4, r3, r4
005a8ec8  07 70 65 e0                                      rsb r7, r5, r7
005a8ecc  06 60 64 e0                                      rsb r6, r4, r6
005a8ed0  0c 50 8c e5                                      str r5, [ip, #0xc]
005a8ed4  2c 70 8c e5                                      str r7, [ip, #0x2c]
005a8ed8  30 60 8c e5                                      str r6, [ip, #0x30]
005a8edc  10 40 8c e5                                      str r4, [ip, #0x10]
005a8ee0  24 20 8c e5                                      str r2, [ip, #0x24]
005a8ee4  28 30 8c e5                                      str r3, [ip, #0x28]
005a8ee8  f0 05 bd e8                                      pop {r4, r5, r6, r7, r8, sl}
005a8eec  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a8ef0, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver20setFramebufferScreenERKNS_4core4rectIiEE
; demangled: glitch::video::IVideoDriver::setFramebufferScreen(glitch::core::rect<int> const&)
; decoder-mode: arm
005a8ef0  10 40 2d e9                                      push {r4, lr}
005a8ef4  00 40 a0 e1                                      mov r4, r0
005a8ef8  18 d0 4d e2                                      sub sp, sp, #0x18
005a8efc  01 20 a0 e1                                      mov r2, r1
005a8f00  10 00 8d e2                                      add r0, sp, #0x10
005a8f04  04 10 a0 e1                                      mov r1, r4
005a8f08  cb ff ff eb                                      bl #0x5a8e3c
005a8f0c  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
005a8f10  00 20 93 e5                                      ldr r2, [r3]
005a8f14  14 30 92 e5                                      ldr r3, [r2, #0x14]
005a8f18  18 00 82 e2                                      add r0, r2, #0x18
005a8f1c  03 10 90 e8                                      ldm r0, {r0, r1, ip}
005a8f20  01 10 63 e0                                      rsb r1, r3, r1
005a8f24  10 30 9d e5                                      ldr r3, [sp, #0x10]
005a8f28  03 00 51 e1                                      cmp r1, r3
005a8f2c  04 00 00 0a                                      beq #0x5a8f44
005a8f30  38 31 94 e5                                      ldr r3, [r4, #0x138]
005a8f34  01 30 83 e3                                      orr r3, r3, #1
005a8f38  38 31 84 e5                                      str r3, [r4, #0x138]
005a8f3c  18 d0 8d e2                                      add sp, sp, #0x18
005a8f40  10 80 bd e8                                      pop {r4, pc}
005a8f44  14 30 9d e5                                      ldr r3, [sp, #0x14]
005a8f48  0c 00 60 e0                                      rsb r0, r0, ip
005a8f4c  03 00 50 e1                                      cmp r0, r3
005a8f50  f6 ff ff 1a                                      bne #0x5a8f30
005a8f54  00 30 92 e5                                      ldr r3, [r2]
005a8f58  00 10 a0 e3                                      mov r1, #0
005a8f5c  02 00 a0 e1                                      mov r0, r2
005a8f60  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005a8f64  04 10 8d e5                                      str r1, [sp, #4]
005a8f68  00 10 8d e5                                      str r1, [sp]
005a8f6c  10 c0 92 e5                                      ldr ip, [r2, #0x10]
005a8f70  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005a8f74  0d 10 a0 e1                                      mov r1, sp
005a8f78  0c c0 8d e5                                      str ip, [sp, #0xc]
005a8f7c  08 20 8d e5                                      str r2, [sp, #8]
005a8f80  33 ff 2f e1                                      blx r3
005a8f84  e9 ff ff ea                                      b #0x5a8f30

; FUNCTION 0x005a8f88, declared_size=276, range_size=276, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver32fixUpProjectionMatrixOrientationERNS_4core8CMatrix4IfEE
; demangled: glitch::video::IVideoDriver::fixUpProjectionMatrixOrientation(glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
005a8f88  f0 05 2d e9                                      push {r4, r5, r6, r7, r8, sl}
005a8f8c  cc 20 90 e5                                      ldr r2, [r0, #0xcc]
005a8f90  c8 30 90 e5                                      ldr r3, [r0, #0xc8]
005a8f94  02 30 63 e0                                      rsb r3, r3, r2
005a8f98  43 31 a0 e1                                      asr r3, r3, #2
005a8f9c  01 00 53 e3                                      cmp r3, #1
005a8fa0  01 00 00 9a                                      bls #0x5a8fac
005a8fa4  f0 05 bd e8                                      pop {r4, r5, r6, r7, r8, sl}
005a8fa8  1e ff 2f e1                                      bx lr
005a8fac  3c 31 90 e5                                      ldr r3, [r0, #0x13c]
005a8fb0  00 00 53 e3                                      cmp r3, #0
005a8fb4  fa ff ff 0a                                      beq #0x5a8fa4
005a8fb8  01 00 53 e3                                      cmp r3, #1
005a8fbc  03 00 53 13                                      cmpne r3, #3
005a8fc0  11 00 00 1a                                      bne #0x5a900c
005a8fc4  00 70 91 e5                                      ldr r7, [r1]
005a8fc8  04 80 91 e5                                      ldr r8, [r1, #4]
005a8fcc  10 50 91 e5                                      ldr r5, [r1, #0x10]
005a8fd0  14 60 91 e5                                      ldr r6, [r1, #0x14]
005a8fd4  20 c0 91 e5                                      ldr ip, [r1, #0x20]
005a8fd8  24 40 91 e5                                      ldr r4, [r1, #0x24]
005a8fdc  30 20 91 e5                                      ldr r2, [r1, #0x30]
005a8fe0  34 00 91 e5                                      ldr r0, [r1, #0x34]
005a8fe4  00 a0 a0 e3                                      mov sl, #0
005a8fe8  40 a0 c1 e5                                      strb sl, [r1, #0x40]
005a8fec  00 80 81 e5                                      str r8, [r1]
005a8ff0  04 70 81 e5                                      str r7, [r1, #4]
005a8ff4  10 60 81 e5                                      str r6, [r1, #0x10]
005a8ff8  14 50 81 e5                                      str r5, [r1, #0x14]
005a8ffc  20 40 81 e5                                      str r4, [r1, #0x20]
005a9000  24 c0 81 e5                                      str ip, [r1, #0x24]
005a9004  30 00 81 e5                                      str r0, [r1, #0x30]
005a9008  34 20 81 e5                                      str r2, [r1, #0x34]
005a900c  02 20 43 e2                                      sub r2, r3, #2
005a9010  01 00 52 e3                                      cmp r2, #1
005a9014  11 00 00 9a                                      bls #0x5a9060
005a9018  01 30 43 e2                                      sub r3, r3, #1
005a901c  01 00 53 e3                                      cmp r3, #1
005a9020  df ff ff 8a                                      bhi #0x5a8fa4
005a9024  30 c0 91 e5                                      ldr ip, [r1, #0x30]
005a9028  00 00 91 e5                                      ldr r0, [r1]
005a902c  10 20 91 e5                                      ldr r2, [r1, #0x10]
005a9030  20 30 91 e5                                      ldr r3, [r1, #0x20]
005a9034  02 c1 8c e2                                      add ip, ip, #0x80000000
005a9038  02 01 80 e2                                      add r0, r0, #0x80000000
005a903c  02 21 82 e2                                      add r2, r2, #0x80000000
005a9040  02 31 83 e2                                      add r3, r3, #0x80000000
005a9044  30 c0 81 e5                                      str ip, [r1, #0x30]
005a9048  00 c0 a0 e3                                      mov ip, #0
005a904c  40 c0 c1 e5                                      strb ip, [r1, #0x40]
005a9050  00 00 81 e5                                      str r0, [r1]
005a9054  10 20 81 e5                                      str r2, [r1, #0x10]
005a9058  20 30 81 e5                                      str r3, [r1, #0x20]
005a905c  d0 ff ff ea                                      b #0x5a8fa4
005a9060  04 40 91 e5                                      ldr r4, [r1, #4]
005a9064  14 c0 91 e5                                      ldr ip, [r1, #0x14]
005a9068  24 00 91 e5                                      ldr r0, [r1, #0x24]
005a906c  34 20 91 e5                                      ldr r2, [r1, #0x34]
005a9070  02 41 84 e2                                      add r4, r4, #0x80000000
005a9074  02 c1 8c e2                                      add ip, ip, #0x80000000
005a9078  02 01 80 e2                                      add r0, r0, #0x80000000
005a907c  02 21 82 e2                                      add r2, r2, #0x80000000
005a9080  00 50 a0 e3                                      mov r5, #0
005a9084  40 50 c1 e5                                      strb r5, [r1, #0x40]
005a9088  04 40 81 e5                                      str r4, [r1, #4]
005a908c  14 c0 81 e5                                      str ip, [r1, #0x14]
005a9090  24 00 81 e5                                      str r0, [r1, #0x24]
005a9094  34 20 81 e5                                      str r2, [r1, #0x34]
005a9098  de ff ff ea                                      b #0x5a9018

; FUNCTION 0x005a909c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver17setMaxTextureSizeERKNS_4core11dimension2dIiEE
; demangled: glitch::video::IVideoDriver::setMaxTextureSize(glitch::core::dimension2d<int> const&)
; decoder-mode: arm
005a909c  00 30 91 e5                                      ldr r3, [r1]
005a90a0  44 30 80 e5                                      str r3, [r0, #0x44]
005a90a4  04 30 91 e5                                      ldr r3, [r1, #4]
005a90a8  48 30 80 e5                                      str r3, [r0, #0x48]
005a90ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a90b0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver9setOptionEjb
; demangled: glitch::video::IVideoDriver::setOption(unsigned int, bool)
; decoder-mode: arm
005a90b0  00 00 52 e3                                      cmp r2, #0
005a90b4  10 40 2d e9                                      push {r4, lr}
005a90b8  09 00 00 1a                                      bne #0x5a90e4
005a90bc  88 20 90 e5                                      ldr r2, [r0, #0x88]
005a90c0  01 0c 11 e3                                      tst r1, #0x100
005a90c4  01 10 c2 e1                                      bic r1, r2, r1
005a90c8  88 10 80 e5                                      str r1, [r0, #0x88]
005a90cc  00 00 00 1a                                      bne #0x5a90d4
005a90d0  10 80 bd e8                                      pop {r4, pc}
005a90d4  00 30 90 e5                                      ldr r3, [r0]
005a90d8  0f e0 a0 e1                                      mov lr, pc
005a90dc  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005a90e0  10 80 bd e8                                      pop {r4, pc}
005a90e4  88 20 90 e5                                      ldr r2, [r0, #0x88]
005a90e8  01 10 82 e1                                      orr r1, r2, r1
005a90ec  88 10 80 e5                                      str r1, [r0, #0x88]
005a90f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005a90f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver24getMaximalPrimitiveCountEv
; demangled: glitch::video::IVideoDriver::getMaximalPrimitiveCount() const
; decoder-mode: arm
005a90f4  00 00 e0 e3                                      mvn r0, #0
005a90f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a90fc, declared_size=1088, range_size=1088, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver4clipERNS_4core4rectIiEERNS3_IfEERKS4_PNS0_6SColorE
; demangled: glitch::video::IVideoDriver::clip(glitch::core::rect<int>&, glitch::core::rect<float>&, glitch::core::rect<int> const&, glitch::video::SColor*)
; decoder-mode: arm
005a90fc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005a9100  02 50 a0 e1                                      mov r5, r2
005a9104  00 80 90 e5                                      ldr r8, [r0]
005a9108  08 20 92 e5                                      ldr r2, [r2, #8]
005a910c  08 d0 4d e2                                      sub sp, sp, #8
005a9110  00 40 a0 e1                                      mov r4, r0
005a9114  02 00 58 e1                                      cmp r8, r2
005a9118  01 60 a0 e1                                      mov r6, r1
005a911c  03 70 a0 e1                                      mov r7, r3
005a9120  02 00 00 da                                      ble #0x5a9130
005a9124  00 00 a0 e3                                      mov r0, #0
005a9128  08 d0 8d e2                                      add sp, sp, #8
005a912c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005a9130  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005a9134  04 30 94 e5                                      ldr r3, [r4, #4]
005a9138  00 00 53 e1                                      cmp r3, r0
005a913c  f8 ff ff ca                                      bgt #0x5a9124
005a9140  08 90 94 e5                                      ldr sb, [r4, #8]
005a9144  00 30 95 e5                                      ldr r3, [r5]
005a9148  03 00 59 e1                                      cmp sb, r3
005a914c  f4 ff ff ba                                      blt #0x5a9124
005a9150  0c a0 94 e5                                      ldr sl, [r4, #0xc]
005a9154  04 30 95 e5                                      ldr r3, [r5, #4]
005a9158  03 00 5a e1                                      cmp sl, r3
005a915c  f0 ff ff ba                                      blt #0x5a9124
005a9160  09 00 52 e1                                      cmp r2, sb
005a9164  b8 00 00 ba                                      blt #0x5a944c
005a9168  00 00 5a e1                                      cmp sl, r0
005a916c  39 00 00 da                                      ble #0x5a9258
005a9170  0a 00 60 e0                                      rsb r0, r0, sl
005a9174  fa 95 f5 eb                                      bl #0x30e964
005a9178  00 80 a0 e1                                      mov r8, r0
005a917c  04 00 94 e5                                      ldr r0, [r4, #4]
005a9180  0a 00 60 e0                                      rsb r0, r0, sl
005a9184  f6 95 f5 eb                                      bl #0x30e964
005a9188  00 10 a0 e1                                      mov r1, r0
005a918c  08 00 a0 e1                                      mov r0, r8
005a9190  bf 96 f5 eb                                      bl #0x30ec94
005a9194  0c a0 96 e5                                      ldr sl, [r6, #0xc]
005a9198  00 80 a0 e1                                      mov r8, r0
005a919c  04 00 96 e5                                      ldr r0, [r6, #4]
005a91a0  0a 10 a0 e1                                      mov r1, sl
005a91a4  80 94 f5 eb                                      bl #0x30e3ac
005a91a8  00 10 a0 e1                                      mov r1, r0
005a91ac  08 00 a0 e1                                      mov r0, r8
005a91b0  ed 96 f5 eb                                      bl #0x30ed6c
005a91b4  00 10 a0 e1                                      mov r1, r0
005a91b8  0a 00 a0 e1                                      mov r0, sl
005a91bc  78 96 f5 eb                                      bl #0x30eba4
005a91c0  00 00 57 e3                                      cmp r7, #0
005a91c4  0c 00 86 e5                                      str r0, [r6, #0xc]
005a91c8  20 00 00 0a                                      beq #0x5a9250
005a91cc  04 a0 87 e2                                      add sl, r7, #4
005a91d0  0a 10 a0 e1                                      mov r1, sl
005a91d4  08 20 a0 e1                                      mov r2, r8
005a91d8  07 00 a0 e1                                      mov r0, r7
005a91dc  6a 5f fe eb                                      bl #0x540f8c
005a91e0  0d 10 a0 e1                                      mov r1, sp
005a91e4  50 ec e7 e7                                      ubfx lr, r0, #0x18, #8
005a91e8  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
005a91ec  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
005a91f0  00 00 cd e5                                      strb r0, [sp]
005a91f4  04 20 a0 e3                                      mov r2, #4
005a91f8  0a 00 a0 e1                                      mov r0, sl
005a91fc  08 a0 87 e2                                      add sl, r7, #8
005a9200  01 c0 cd e5                                      strb ip, [sp, #1]
005a9204  02 30 cd e5                                      strb r3, [sp, #2]
005a9208  03 e0 cd e5                                      strb lr, [sp, #3]
005a920c  95 95 f5 eb                                      bl #0x30e868
005a9210  08 20 a0 e1                                      mov r2, r8
005a9214  0a 10 a0 e1                                      mov r1, sl
005a9218  0c 00 87 e2                                      add r0, r7, #0xc
005a921c  5a 5f fe eb                                      bl #0x540f8c
005a9220  0d 10 a0 e1                                      mov r1, sp
005a9224  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005a9228  50 e4 e7 e7                                      ubfx lr, r0, #8, #8
005a922c  50 c8 e7 e7                                      ubfx ip, r0, #0x10, #8
005a9230  00 00 cd e5                                      strb r0, [sp]
005a9234  04 20 a0 e3                                      mov r2, #4
005a9238  0a 00 a0 e1                                      mov r0, sl
005a923c  0d 90 a0 e1                                      mov sb, sp
005a9240  01 e0 cd e5                                      strb lr, [sp, #1]
005a9244  02 c0 cd e5                                      strb ip, [sp, #2]
005a9248  03 30 cd e5                                      strb r3, [sp, #3]
005a924c  85 95 f5 eb                                      bl #0x30e868
005a9250  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005a9254  0c 30 84 e5                                      str r3, [r4, #0xc]
005a9258  00 00 95 e5                                      ldr r0, [r5]
005a925c  00 80 94 e5                                      ldr r8, [r4]
005a9260  08 00 50 e1                                      cmp r0, r8
005a9264  38 00 00 da                                      ble #0x5a934c
005a9268  00 00 68 e0                                      rsb r0, r8, r0
005a926c  bc 95 f5 eb                                      bl #0x30e964
005a9270  00 a0 a0 e1                                      mov sl, r0
005a9274  08 00 94 e5                                      ldr r0, [r4, #8]
005a9278  00 00 68 e0                                      rsb r0, r8, r0
005a927c  b8 95 f5 eb                                      bl #0x30e964
005a9280  00 10 a0 e1                                      mov r1, r0
005a9284  0a 00 a0 e1                                      mov r0, sl
005a9288  81 96 f5 eb                                      bl #0x30ec94
005a928c  00 a0 96 e5                                      ldr sl, [r6]
005a9290  00 80 a0 e1                                      mov r8, r0
005a9294  08 00 96 e5                                      ldr r0, [r6, #8]
005a9298  0a 10 a0 e1                                      mov r1, sl
005a929c  42 94 f5 eb                                      bl #0x30e3ac
005a92a0  00 10 a0 e1                                      mov r1, r0
005a92a4  08 00 a0 e1                                      mov r0, r8
005a92a8  af 96 f5 eb                                      bl #0x30ed6c
005a92ac  00 10 a0 e1                                      mov r1, r0
005a92b0  0a 00 a0 e1                                      mov r0, sl
005a92b4  3a 96 f5 eb                                      bl #0x30eba4
005a92b8  00 00 57 e3                                      cmp r7, #0
005a92bc  00 00 86 e5                                      str r0, [r6]
005a92c0  1f 00 00 0a                                      beq #0x5a9344
005a92c4  07 10 a0 e1                                      mov r1, r7
005a92c8  08 20 a0 e1                                      mov r2, r8
005a92cc  0c 00 87 e2                                      add r0, r7, #0xc
005a92d0  2d 5f fe eb                                      bl #0x540f8c
005a92d4  04 20 a0 e3                                      mov r2, #4
005a92d8  50 ec e7 e7                                      ubfx lr, r0, #0x18, #8
005a92dc  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
005a92e0  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
005a92e4  02 90 87 e0                                      add sb, r7, r2
005a92e8  00 00 cd e5                                      strb r0, [sp]
005a92ec  0d 10 a0 e1                                      mov r1, sp
005a92f0  07 00 a0 e1                                      mov r0, r7
005a92f4  01 c0 cd e5                                      strb ip, [sp, #1]
005a92f8  02 30 cd e5                                      strb r3, [sp, #2]
005a92fc  03 e0 cd e5                                      strb lr, [sp, #3]
005a9300  58 95 f5 eb                                      bl #0x30e868
005a9304  08 20 a0 e1                                      mov r2, r8
005a9308  09 10 a0 e1                                      mov r1, sb
005a930c  08 00 87 e2                                      add r0, r7, #8
005a9310  1d 5f fe eb                                      bl #0x540f8c
005a9314  0d 10 a0 e1                                      mov r1, sp
005a9318  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005a931c  50 e4 e7 e7                                      ubfx lr, r0, #8, #8
005a9320  50 c8 e7 e7                                      ubfx ip, r0, #0x10, #8
005a9324  00 00 cd e5                                      strb r0, [sp]
005a9328  04 20 a0 e3                                      mov r2, #4
005a932c  09 00 a0 e1                                      mov r0, sb
005a9330  0d a0 a0 e1                                      mov sl, sp
005a9334  01 e0 cd e5                                      strb lr, [sp, #1]
005a9338  02 c0 cd e5                                      strb ip, [sp, #2]
005a933c  03 30 cd e5                                      strb r3, [sp, #3]
005a9340  48 95 f5 eb                                      bl #0x30e868
005a9344  00 30 95 e5                                      ldr r3, [r5]
005a9348  00 30 84 e5                                      str r3, [r4]
005a934c  04 00 95 e5                                      ldr r0, [r5, #4]
005a9350  04 80 94 e5                                      ldr r8, [r4, #4]
005a9354  08 00 50 e1                                      cmp r0, r8
005a9358  01 00 a0 d3                                      movle r0, #1
005a935c  71 ff ff da                                      ble #0x5a9128
005a9360  00 00 68 e0                                      rsb r0, r8, r0
005a9364  7e 95 f5 eb                                      bl #0x30e964
005a9368  00 a0 a0 e1                                      mov sl, r0
005a936c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005a9370  00 00 68 e0                                      rsb r0, r8, r0
005a9374  7a 95 f5 eb                                      bl #0x30e964
005a9378  00 10 a0 e1                                      mov r1, r0
005a937c  0a 00 a0 e1                                      mov r0, sl
005a9380  43 96 f5 eb                                      bl #0x30ec94
005a9384  04 a0 96 e5                                      ldr sl, [r6, #4]
005a9388  00 80 a0 e1                                      mov r8, r0
005a938c  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005a9390  0a 10 a0 e1                                      mov r1, sl
005a9394  04 94 f5 eb                                      bl #0x30e3ac
005a9398  00 10 a0 e1                                      mov r1, r0
005a939c  08 00 a0 e1                                      mov r0, r8
005a93a0  71 96 f5 eb                                      bl #0x30ed6c
005a93a4  00 10 a0 e1                                      mov r1, r0
005a93a8  0a 00 a0 e1                                      mov r0, sl
005a93ac  fc 95 f5 eb                                      bl #0x30eba4
005a93b0  00 00 57 e3                                      cmp r7, #0
005a93b4  04 00 86 e5                                      str r0, [r6, #4]
005a93b8  1f 00 00 0a                                      beq #0x5a943c
005a93bc  07 10 a0 e1                                      mov r1, r7
005a93c0  08 20 a0 e1                                      mov r2, r8
005a93c4  04 00 87 e2                                      add r0, r7, #4
005a93c8  ef 5e fe eb                                      bl #0x540f8c
005a93cc  0c 60 87 e2                                      add r6, r7, #0xc
005a93d0  50 ec e7 e7                                      ubfx lr, r0, #0x18, #8
005a93d4  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
005a93d8  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
005a93dc  00 00 cd e5                                      strb r0, [sp]
005a93e0  0d 10 a0 e1                                      mov r1, sp
005a93e4  04 20 a0 e3                                      mov r2, #4
005a93e8  07 00 a0 e1                                      mov r0, r7
005a93ec  01 c0 cd e5                                      strb ip, [sp, #1]
005a93f0  02 30 cd e5                                      strb r3, [sp, #2]
005a93f4  03 e0 cd e5                                      strb lr, [sp, #3]
005a93f8  1a 95 f5 eb                                      bl #0x30e868
005a93fc  08 20 a0 e1                                      mov r2, r8
005a9400  06 10 a0 e1                                      mov r1, r6
005a9404  08 00 87 e2                                      add r0, r7, #8
005a9408  df 5e fe eb                                      bl #0x540f8c
005a940c  0d 10 a0 e1                                      mov r1, sp
005a9410  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005a9414  50 e4 e7 e7                                      ubfx lr, r0, #8, #8
005a9418  50 c8 e7 e7                                      ubfx ip, r0, #0x10, #8
005a941c  00 00 cd e5                                      strb r0, [sp]
005a9420  04 20 a0 e3                                      mov r2, #4
005a9424  06 00 a0 e1                                      mov r0, r6
005a9428  0d a0 a0 e1                                      mov sl, sp
005a942c  01 e0 cd e5                                      strb lr, [sp, #1]
005a9430  02 c0 cd e5                                      strb ip, [sp, #2]
005a9434  03 30 cd e5                                      strb r3, [sp, #3]
005a9438  0a 95 f5 eb                                      bl #0x30e868
005a943c  04 30 95 e5                                      ldr r3, [r5, #4]
005a9440  01 00 a0 e3                                      mov r0, #1
005a9444  04 30 84 e5                                      str r3, [r4, #4]
005a9448  36 ff ff ea                                      b #0x5a9128
005a944c  09 00 62 e0                                      rsb r0, r2, sb
005a9450  43 95 f5 eb                                      bl #0x30e964
005a9454  00 a0 a0 e1                                      mov sl, r0
005a9458  09 00 68 e0                                      rsb r0, r8, sb
005a945c  40 95 f5 eb                                      bl #0x30e964
005a9460  00 10 a0 e1                                      mov r1, r0
005a9464  0a 00 a0 e1                                      mov r0, sl
005a9468  09 96 f5 eb                                      bl #0x30ec94
005a946c  08 a0 96 e5                                      ldr sl, [r6, #8]
005a9470  00 80 a0 e1                                      mov r8, r0
005a9474  00 00 96 e5                                      ldr r0, [r6]
005a9478  0a 10 a0 e1                                      mov r1, sl
005a947c  ca 93 f5 eb                                      bl #0x30e3ac
005a9480  00 10 a0 e1                                      mov r1, r0
005a9484  08 00 a0 e1                                      mov r0, r8
005a9488  37 96 f5 eb                                      bl #0x30ed6c
005a948c  00 10 a0 e1                                      mov r1, r0
005a9490  0a 00 a0 e1                                      mov r0, sl
005a9494  c2 95 f5 eb                                      bl #0x30eba4
005a9498  00 00 57 e3                                      cmp r7, #0
005a949c  08 00 86 e5                                      str r0, [r6, #8]
005a94a0  20 00 00 0a                                      beq #0x5a9528
005a94a4  0c a0 87 e2                                      add sl, r7, #0xc
005a94a8  0a 10 a0 e1                                      mov r1, sl
005a94ac  08 20 a0 e1                                      mov r2, r8
005a94b0  07 00 a0 e1                                      mov r0, r7
005a94b4  b4 5e fe eb                                      bl #0x540f8c
005a94b8  0d 10 a0 e1                                      mov r1, sp
005a94bc  50 ec e7 e7                                      ubfx lr, r0, #0x18, #8
005a94c0  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
005a94c4  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
005a94c8  00 00 cd e5                                      strb r0, [sp]
005a94cc  04 20 a0 e3                                      mov r2, #4
005a94d0  0a 00 a0 e1                                      mov r0, sl
005a94d4  08 a0 87 e2                                      add sl, r7, #8
005a94d8  01 c0 cd e5                                      strb ip, [sp, #1]
005a94dc  02 30 cd e5                                      strb r3, [sp, #2]
005a94e0  03 e0 cd e5                                      strb lr, [sp, #3]
005a94e4  df 94 f5 eb                                      bl #0x30e868
005a94e8  08 20 a0 e1                                      mov r2, r8
005a94ec  0a 10 a0 e1                                      mov r1, sl
005a94f0  04 00 87 e2                                      add r0, r7, #4
005a94f4  a4 5e fe eb                                      bl #0x540f8c
005a94f8  0d 10 a0 e1                                      mov r1, sp
005a94fc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005a9500  50 e4 e7 e7                                      ubfx lr, r0, #8, #8
005a9504  50 c8 e7 e7                                      ubfx ip, r0, #0x10, #8
005a9508  00 00 cd e5                                      strb r0, [sp]
005a950c  04 20 a0 e3                                      mov r2, #4
005a9510  0a 00 a0 e1                                      mov r0, sl
005a9514  0d 90 a0 e1                                      mov sb, sp
005a9518  01 e0 cd e5                                      strb lr, [sp, #1]
005a951c  02 c0 cd e5                                      strb ip, [sp, #2]
005a9520  03 30 cd e5                                      strb r3, [sp, #3]
005a9524  cf 94 f5 eb                                      bl #0x30e868
005a9528  08 30 95 e5                                      ldr r3, [r5, #8]
005a952c  0c a0 94 e5                                      ldr sl, [r4, #0xc]
005a9530  08 30 84 e5                                      str r3, [r4, #8]
005a9534  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005a9538  0a ff ff ea                                      b #0x5a9168

; FUNCTION 0x005a953c, declared_size=188, range_size=188, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver15popRenderTargetEv
; demangled: glitch::video::IVideoDriver::popRenderTarget()
; decoder-mode: arm
005a953c  cc 30 91 e5                                      ldr r3, [r1, #0xcc]
005a9540  c8 20 91 e5                                      ldr r2, [r1, #0xc8]
005a9544  70 40 2d e9                                      push {r4, r5, r6, lr}
005a9548  03 00 52 e1                                      cmp r2, r3
005a954c  00 30 a0 03                                      moveq r3, #0
005a9550  01 50 a0 e1                                      mov r5, r1
005a9554  00 60 a0 e1                                      mov r6, r0
005a9558  00 30 80 05                                      streq r3, [r0]
005a955c  23 00 00 0a                                      beq #0x5a95f0
005a9560  04 40 13 e5                                      ldr r4, [r3, #-4]
005a9564  00 00 54 e3                                      cmp r4, #0
005a9568  04 30 94 15                                      ldrne r3, [r4, #4]
005a956c  01 30 83 12                                      addne r3, r3, #1
005a9570  04 30 84 15                                      strne r3, [r4, #4]
005a9574  cc 30 91 15                                      ldrne r3, [r1, #0xcc]
005a9578  c8 20 91 15                                      ldrne r2, [r1, #0xc8]
005a957c  03 30 62 e0                                      rsb r3, r2, r3
005a9580  43 31 a0 e1                                      asr r3, r3, #2
005a9584  01 00 53 e3                                      cmp r3, #1
005a9588  10 00 00 9a                                      bls #0x5a95d0
005a958c  00 30 94 e5                                      ldr r3, [r4]
005a9590  04 00 a0 e1                                      mov r0, r4
005a9594  0f e0 a0 e1                                      mov lr, pc
005a9598  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005a959c  cc 20 95 e5                                      ldr r2, [r5, #0xcc]
005a95a0  04 30 42 e2                                      sub r3, r2, #4
005a95a4  cc 30 85 e5                                      str r3, [r5, #0xcc]
005a95a8  04 00 12 e5                                      ldr r0, [r2, #-4]
005a95ac  00 00 50 e3                                      cmp r0, #0
005a95b0  01 00 00 0a                                      beq #0x5a95bc
005a95b4  f2 cf f5 eb                                      bl #0x31d584
005a95b8  cc 30 95 e5                                      ldr r3, [r5, #0xcc]
005a95bc  04 30 13 e5                                      ldr r3, [r3, #-4]
005a95c0  03 00 a0 e1                                      mov r0, r3
005a95c4  00 30 93 e5                                      ldr r3, [r3]
005a95c8  0f e0 a0 e1                                      mov lr, pc
005a95cc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005a95d0  00 00 54 e3                                      cmp r4, #0
005a95d4  00 40 86 e5                                      str r4, [r6]
005a95d8  04 00 00 0a                                      beq #0x5a95f0
005a95dc  04 30 94 e5                                      ldr r3, [r4, #4]
005a95e0  04 00 a0 e1                                      mov r0, r4
005a95e4  01 30 83 e2                                      add r3, r3, #1
005a95e8  04 30 84 e5                                      str r3, [r4, #4]
005a95ec  e4 cf f5 eb                                      bl #0x31d584
005a95f0  06 00 a0 e1                                      mov r0, r6
005a95f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005a95f8, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver13ensureBindingEPPNS0_14CDriverBindingE
; demangled: glitch::video::IVideoDriver::ensureBinding(glitch::video::CDriverBinding**)
; decoder-mode: arm
005a95f8  04 e0 2d e5                                      str lr, [sp, #-4]!
005a95fc  00 30 91 e5                                      ldr r3, [r1]
005a9600  0c d0 4d e2                                      sub sp, sp, #0xc
005a9604  00 00 53 e3                                      cmp r3, #0
005a9608  02 00 00 0a                                      beq #0x5a9618
005a960c  03 00 a0 e1                                      mov r0, r3
005a9610  0c d0 8d e2                                      add sp, sp, #0xc
005a9614  00 80 bd e8                                      ldm sp!, {pc}
005a9618  00 30 90 e5                                      ldr r3, [r0]
005a961c  04 10 8d e5                                      str r1, [sp, #4]
005a9620  0f e0 a0 e1                                      mov lr, pc
005a9624  f8 f1 93 e5                                      ldr pc, [r3, #0x1f8]
005a9628  04 10 9d e5                                      ldr r1, [sp, #4]
005a962c  00 30 a0 e1                                      mov r3, r0
005a9630  00 00 81 e5                                      str r0, [r1]
005a9634  f4 ff ff ea                                      b #0x5a960c

; FUNCTION 0x005a9638, declared_size=368, range_size=368, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver18captureFramebufferERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNS8_4rectIiEEhNS0_23E_TEXTURE_CUBE_MAP_FACEEb
; demangled: glitch::video::IVideoDriver::captureFramebuffer(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int> const&, glitch::core::rect<int> const&, unsigned char, glitch::video::E_TEXTURE_CUBE_MAP_FACE, bool)
; decoder-mode: arm
005a9638  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005a963c  00 40 91 e5                                      ldr r4, [r1]
005a9640  2c d0 4d e2                                      sub sp, sp, #0x2c
005a9644  00 c0 a0 e1                                      mov ip, r0
005a9648  00 00 54 e3                                      cmp r4, #0
005a964c  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
005a9650  48 00 dd e5                                      ldrb r0, [sp, #0x48]
005a9654  50 70 dd e5                                      ldrb r7, [sp, #0x50]
005a9658  02 00 00 0a                                      beq #0x5a9668
005a965c  3e 50 d4 e5                                      ldrb r5, [r4, #0x3e]
005a9660  00 00 55 e1                                      cmp r5, r0
005a9664  02 00 00 8a                                      bhi #0x5a9674
005a9668  00 00 a0 e3                                      mov r0, #0
005a966c  2c d0 8d e2                                      add sp, sp, #0x2c
005a9670  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005a9674  3f 50 d4 e5                                      ldrb r5, [r4, #0x3f]
005a9678  02 00 15 e3                                      tst r5, #2
005a967c  01 00 00 0a                                      beq #0x5a9688
005a9680  00 00 50 e3                                      cmp r0, #0
005a9684  f7 ff ff 1a                                      bne #0x5a9668
005a9688  38 50 94 e5                                      ldr r5, [r4, #0x38]
005a968c  03 50 05 e2                                      and r5, r5, #3
005a9690  02 00 55 e3                                      cmp r5, #2
005a9694  06 50 a0 03                                      moveq r5, #6
005a9698  01 50 a0 13                                      movne r5, #1
005a969c  05 00 56 e1                                      cmp r6, r5
005a96a0  f0 ff ff aa                                      bge #0x5a9668
005a96a4  00 50 92 e5                                      ldr r5, [r2]
005a96a8  20 80 94 e5                                      ldr r8, [r4, #0x20]
005a96ac  08 00 55 e1                                      cmp r5, r8
005a96b0  ec ff ff aa                                      bge #0x5a9668
005a96b4  04 20 92 e5                                      ldr r2, [r2, #4]
005a96b8  24 40 94 e5                                      ldr r4, [r4, #0x24]
005a96bc  04 00 52 e1                                      cmp r2, r4
005a96c0  e8 ff ff aa                                      bge #0x5a9668
005a96c4  0c 80 93 e5                                      ldr r8, [r3, #0xc]
005a96c8  10 04 93 e8                                      ldm r3, {r4, sl}
005a96cc  08 30 93 e5                                      ldr r3, [r3, #8]
005a96d0  00 00 55 e3                                      cmp r5, #0
005a96d4  14 a0 8d e5                                      str sl, [sp, #0x14]
005a96d8  18 30 8d e5                                      str r3, [sp, #0x18]
005a96dc  1c 80 8d e5                                      str r8, [sp, #0x1c]
005a96e0  20 50 8d e5                                      str r5, [sp, #0x20]
005a96e4  24 20 8d e5                                      str r2, [sp, #0x24]
005a96e8  10 40 8d e5                                      str r4, [sp, #0x10]
005a96ec  03 00 00 aa                                      bge #0x5a9700
005a96f0  04 50 65 e0                                      rsb r5, r5, r4
005a96f4  00 30 a0 e3                                      mov r3, #0
005a96f8  10 50 8d e5                                      str r5, [sp, #0x10]
005a96fc  20 30 8d e5                                      str r3, [sp, #0x20]
005a9700  14 80 9d e5                                      ldr r8, [sp, #0x14]
005a9704  00 00 52 e3                                      cmp r2, #0
005a9708  00 30 a0 b3                                      movlt r3, #0
005a970c  08 80 62 b0                                      rsblt r8, r2, r8
005a9710  14 80 8d b5                                      strlt r8, [sp, #0x14]
005a9714  24 30 8d b5                                      strlt r3, [sp, #0x24]
005a9718  cc 30 9c e5                                      ldr r3, [ip, #0xcc]
005a971c  18 40 9d e5                                      ldr r4, [sp, #0x18]
005a9720  04 30 13 e5                                      ldr r3, [r3, #-4]
005a9724  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
005a9728  04 00 52 e1                                      cmp r2, r4
005a972c  18 20 8d b5                                      strlt r2, [sp, #0x18]
005a9730  20 50 93 e5                                      ldr r5, [r3, #0x20]
005a9734  02 40 a0 b1                                      movlt r4, r2
005a9738  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005a973c  02 00 55 e1                                      cmp r5, r2
005a9740  1c 50 8d b5                                      strlt r5, [sp, #0x1c]
005a9744  14 a0 93 e5                                      ldr sl, [r3, #0x14]
005a9748  05 20 a0 b1                                      movlt r2, r5
005a974c  10 50 9d e5                                      ldr r5, [sp, #0x10]
005a9750  05 00 5a e1                                      cmp sl, r5
005a9754  10 a0 8d c5                                      strgt sl, [sp, #0x10]
005a9758  18 30 93 e5                                      ldr r3, [r3, #0x18]
005a975c  0a 50 a0 c1                                      movgt r5, sl
005a9760  08 00 53 e1                                      cmp r3, r8
005a9764  08 30 a0 d1                                      movle r3, r8
005a9768  14 30 8d c5                                      strgt r3, [sp, #0x14]
005a976c  03 00 52 e1                                      cmp r2, r3
005a9770  14 20 8d b5                                      strlt r2, [sp, #0x14]
005a9774  14 30 9d e5                                      ldr r3, [sp, #0x14]
005a9778  04 00 55 e1                                      cmp r5, r4
005a977c  10 40 8d c5                                      strgt r4, [sp, #0x10]
005a9780  03 00 52 e1                                      cmp r2, r3
005a9784  b7 ff ff ba                                      blt #0x5a9668
005a9788  c1 00 8d e8                                      stm sp, {r0, r6, r7}
005a978c  0c 00 a0 e1                                      mov r0, ip
005a9790  20 20 8d e2                                      add r2, sp, #0x20
005a9794  00 c0 9c e5                                      ldr ip, [ip]
005a9798  10 30 8d e2                                      add r3, sp, #0x10
005a979c  0f e0 a0 e1                                      mov lr, pc
005a97a0  9c f0 9c e5                                      ldr pc, [ip, #0x9c]
005a97a4  b0 ff ff ea                                      b #0x5a966c

; FUNCTION 0x005a97a8, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver18clearRenderBuffersEv
; demangled: glitch::video::IVideoDriver::clearRenderBuffers()
; decoder-mode: arm
005a97a8  70 40 2d e9                                      push {r4, r5, r6, lr}
005a97ac  54 41 90 e5                                      ldr r4, [r0, #0x154]
005a97b0  58 31 90 e5                                      ldr r3, [r0, #0x158]
005a97b4  00 50 a0 e1                                      mov r5, r0
005a97b8  03 00 54 e1                                      cmp r4, r3
005a97bc  07 00 00 0a                                      beq #0x5a97e0
005a97c0  04 30 94 e4                                      ldr r3, [r4], #4
005a97c4  03 00 a0 e1                                      mov r0, r3
005a97c8  00 30 93 e5                                      ldr r3, [r3]
005a97cc  0f e0 a0 e1                                      mov lr, pc
005a97d0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005a97d4  58 31 95 e5                                      ldr r3, [r5, #0x158]
005a97d8  03 00 54 e1                                      cmp r4, r3
005a97dc  f7 ff ff 1a                                      bne #0x5a97c0
005a97e0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005a9990, declared_size=308, range_size=308, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver9draw3DBoxERKNS_4core8aabbox3dIfEENS0_6SColorE
; demangled: glitch::video::IVideoDriver::draw3DBox(glitch::core::aabbox3d<float> const&, glitch::video::SColor)
; decoder-mode: arm
005a9990  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005a9994  c4 d0 4d e2                                      sub sp, sp, #0xc4
005a9998  10 80 8d e2                                      add r8, sp, #0x10
005a999c  00 a0 a0 e1                                      mov sl, r0
005a99a0  0c 20 8d e5                                      str r2, [sp, #0xc]
005a99a4  22 7c a0 e1                                      lsr r7, r2, #0x18
005a99a8  72 40 ef e6                                      uxtb r4, r2
005a99ac  52 54 e7 e7                                      ubfx r5, r2, #8, #8
005a99b0  52 68 e7 e7                                      ubfx r6, r2, #0x10, #8
005a99b4  00 30 a0 e3                                      mov r3, #0
005a99b8  0c 20 88 e2                                      add r2, r8, #0xc
005a99bc  6c 00 88 e2                                      add r0, r8, #0x6c
005a99c0  0c 30 02 e5                                      str r3, [r2, #-0xc]
005a99c4  08 30 02 e5                                      str r3, [r2, #-8]
005a99c8  04 30 02 e5                                      str r3, [r2, #-4]
005a99cc  0c 20 82 e2                                      add r2, r2, #0xc
005a99d0  00 00 52 e1                                      cmp r2, r0
005a99d4  f9 ff ff 1a                                      bne #0x5a99c0
005a99d8  01 00 a0 e1                                      mov r0, r1
005a99dc  08 10 a0 e1                                      mov r1, r8
005a99e0  14 6f ff eb                                      bl #0x585638
005a99e4  d4 e0 9f e5                                      ldr lr, [pc, #0xd4]
005a99e8  70 c0 8d e2                                      add ip, sp, #0x70
005a99ec  0e e0 8f e0                                      add lr, pc, lr
005a99f0  0c e0 8e e2                                      add lr, lr, #0xc
005a99f4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
005a99f8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005a99fc  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
005a9a00  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005a9a04  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
005a9a08  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005a9a0c  08 30 a0 e3                                      mov r3, #8
005a9a10  a3 70 cd e5                                      strb r7, [sp, #0xa3]
005a9a14  a2 60 cd e5                                      strb r6, [sp, #0xa2]
005a9a18  a1 50 cd e5                                      strb r5, [sp, #0xa1]
005a9a1c  a0 40 cd e5                                      strb r4, [sp, #0xa0]
005a9a20  a7 70 cd e5                                      strb r7, [sp, #0xa7]
005a9a24  a6 60 cd e5                                      strb r6, [sp, #0xa6]
005a9a28  a5 50 cd e5                                      strb r5, [sp, #0xa5]
005a9a2c  a4 40 cd e5                                      strb r4, [sp, #0xa4]
005a9a30  ab 70 cd e5                                      strb r7, [sp, #0xab]
005a9a34  aa 60 cd e5                                      strb r6, [sp, #0xaa]
005a9a38  00 30 8d e5                                      str r3, [sp]
005a9a3c  0c 30 a0 e3                                      mov r3, #0xc
005a9a40  04 30 8d e5                                      str r3, [sp, #4]
005a9a44  bf 70 cd e5                                      strb r7, [sp, #0xbf]
005a9a48  be 60 cd e5                                      strb r6, [sp, #0xbe]
005a9a4c  bd 50 cd e5                                      strb r5, [sp, #0xbd]
005a9a50  bc 40 cd e5                                      strb r4, [sp, #0xbc]
005a9a54  a9 50 cd e5                                      strb r5, [sp, #0xa9]
005a9a58  a8 40 cd e5                                      strb r4, [sp, #0xa8]
005a9a5c  af 70 cd e5                                      strb r7, [sp, #0xaf]
005a9a60  ae 60 cd e5                                      strb r6, [sp, #0xae]
005a9a64  ad 50 cd e5                                      strb r5, [sp, #0xad]
005a9a68  ac 40 cd e5                                      strb r4, [sp, #0xac]
005a9a6c  b3 70 cd e5                                      strb r7, [sp, #0xb3]
005a9a70  b2 60 cd e5                                      strb r6, [sp, #0xb2]
005a9a74  b1 50 cd e5                                      strb r5, [sp, #0xb1]
005a9a78  b0 40 cd e5                                      strb r4, [sp, #0xb0]
005a9a7c  b7 70 cd e5                                      strb r7, [sp, #0xb7]
005a9a80  b6 60 cd e5                                      strb r6, [sp, #0xb6]
005a9a84  b5 50 cd e5                                      strb r5, [sp, #0xb5]
005a9a88  b4 40 cd e5                                      strb r4, [sp, #0xb4]
005a9a8c  bb 70 cd e5                                      strb r7, [sp, #0xbb]
005a9a90  ba 60 cd e5                                      strb r6, [sp, #0xba]
005a9a94  b9 50 cd e5                                      strb r5, [sp, #0xb9]
005a9a98  b8 40 cd e5                                      strb r4, [sp, #0xb8]
005a9a9c  0a 00 a0 e1                                      mov r0, sl
005a9aa0  08 10 a0 e1                                      mov r1, r8
005a9aa4  00 c0 9a e5                                      ldr ip, [sl]
005a9aa8  70 20 8d e2                                      add r2, sp, #0x70
005a9aac  a0 30 8d e2                                      add r3, sp, #0xa0
005a9ab0  0f e0 a0 e1                                      mov lr, pc
005a9ab4  20 f0 9c e5                                      ldr pc, [ip, #0x20]
005a9ab8  c4 d0 8d e2                                      add sp, sp, #0xc4
005a9abc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
005a9ac0  80 63 33 00                                      .byte 0x80, 0x63, 0x33, 0x00

; FUNCTION 0x005a9fd4, declared_size=320, range_size=320, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver14setOrientationENS0_13E_ORIENTATIONE
; demangled: glitch::video::IVideoDriver::setOrientation(glitch::video::E_ORIENTATION)
; decoder-mode: arm
005a9fd4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a9fd8  3c 31 90 e5                                      ldr r3, [r0, #0x13c]
005a9fdc  3c d0 4d e2                                      sub sp, sp, #0x3c
005a9fe0  00 50 a0 e1                                      mov r5, r0
005a9fe4  01 00 53 e1                                      cmp r3, r1
005a9fe8  01 60 a0 e1                                      mov r6, r1
005a9fec  46 00 00 0a                                      beq #0x5aa10c
005a9ff0  c8 30 90 e5                                      ldr r3, [r0, #0xc8]
005a9ff4  28 70 8d e2                                      add r7, sp, #0x28
005a9ff8  07 10 a0 e1                                      mov r1, r7
005a9ffc  00 40 93 e5                                      ldr r4, [r3]
005aa000  18 80 8d e2                                      add r8, sp, #0x18
005aa004  0d a0 a0 e1                                      mov sl, sp
005aa008  14 30 94 e5                                      ldr r3, [r4, #0x14]
005aa00c  28 30 8d e5                                      str r3, [sp, #0x28]
005aa010  18 30 94 e5                                      ldr r3, [r4, #0x18]
005aa014  2c 30 8d e5                                      str r3, [sp, #0x2c]
005aa018  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005aa01c  30 30 8d e5                                      str r3, [sp, #0x30]
005aa020  20 30 94 e5                                      ldr r3, [r4, #0x20]
005aa024  34 30 8d e5                                      str r3, [sp, #0x34]
005aa028  2e ff ff eb                                      bl #0x5a9ce8
005aa02c  c8 30 95 e5                                      ldr r3, [r5, #0xc8]
005aa030  00 c0 a0 e3                                      mov ip, #0
005aa034  08 20 8d e2                                      add r2, sp, #8
005aa038  00 30 93 e5                                      ldr r3, [r3]
005aa03c  0d 00 a0 e1                                      mov r0, sp
005aa040  05 10 a0 e1                                      mov r1, r5
005aa044  24 e0 93 e5                                      ldr lr, [r3, #0x24]
005aa048  18 e0 8d e5                                      str lr, [sp, #0x18]
005aa04c  28 e0 93 e5                                      ldr lr, [r3, #0x28]
005aa050  1c e0 8d e5                                      str lr, [sp, #0x1c]
005aa054  24 b0 93 e5                                      ldr fp, [r3, #0x24]
005aa058  28 90 93 e5                                      ldr sb, [r3, #0x28]
005aa05c  10 e0 93 e5                                      ldr lr, [r3, #0x10]
005aa060  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005aa064  09 e0 8e e0                                      add lr, lr, sb
005aa068  0b 30 83 e0                                      add r3, r3, fp
005aa06c  20 30 8d e5                                      str r3, [sp, #0x20]
005aa070  24 e0 8d e5                                      str lr, [sp, #0x24]
005aa074  10 e0 94 e5                                      ldr lr, [r4, #0x10]
005aa078  2c 90 94 e5                                      ldr sb, [r4, #0x2c]
005aa07c  0c b0 94 e5                                      ldr fp, [r4, #0xc]
005aa080  30 30 94 e5                                      ldr r3, [r4, #0x30]
005aa084  0c c0 8d e5                                      str ip, [sp, #0xc]
005aa088  0b 90 89 e0                                      add sb, sb, fp
005aa08c  0e 30 83 e0                                      add r3, r3, lr
005aa090  08 c0 8d e5                                      str ip, [sp, #8]
005aa094  14 30 8d e5                                      str r3, [sp, #0x14]
005aa098  10 90 8d e5                                      str sb, [sp, #0x10]
005aa09c  66 fb ff eb                                      bl #0x5a8e3c
005aa0a0  05 00 a0 e1                                      mov r0, r5
005aa0a4  08 10 a0 e1                                      mov r1, r8
005aa0a8  0e ff ff eb                                      bl #0x5a9ce8
005aa0ac  3c 31 95 e5                                      ldr r3, [r5, #0x13c]
005aa0b0  01 20 06 e2                                      and r2, r6, #1
005aa0b4  05 00 a0 e1                                      mov r0, r5
005aa0b8  01 30 03 e2                                      and r3, r3, #1
005aa0bc  03 00 52 e1                                      cmp r2, r3
005aa0c0  10 20 94 15                                      ldrne r2, [r4, #0x10]
005aa0c4  0c 30 94 15                                      ldrne r3, [r4, #0xc]
005aa0c8  08 10 a0 e1                                      mov r1, r8
005aa0cc  0c 20 84 15                                      strne r2, [r4, #0xc]
005aa0d0  10 30 84 15                                      strne r3, [r4, #0x10]
005aa0d4  3c 61 85 e5                                      str r6, [r5, #0x13c]
005aa0d8  80 ff ff eb                                      bl #0x5a9ee0
005aa0dc  0d 00 a0 e1                                      mov r0, sp
005aa0e0  05 10 a0 e1                                      mov r1, r5
005aa0e4  08 20 a0 e1                                      mov r2, r8
005aa0e8  53 fb ff eb                                      bl #0x5a8e3c
005aa0ec  05 00 a0 e1                                      mov r0, r5
005aa0f0  07 10 a0 e1                                      mov r1, r7
005aa0f4  79 ff ff eb                                      bl #0x5a9ee0
005aa0f8  04 00 a0 e1                                      mov r0, r4
005aa0fc  07 10 a0 e1                                      mov r1, r7
005aa100  00 30 94 e5                                      ldr r3, [r4]
005aa104  0f e0 a0 e1                                      mov lr, pc
005aa108  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005aa10c  3c d0 8d e2                                      add sp, sp, #0x3c
005aa110  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005aa290, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver12removeUnusedEv
; demangled: glitch::video::IVideoDriver::removeUnused()
; decoder-mode: arm
005aa290  70 40 2d e9                                      push {r4, r5, r6, lr}
005aa294  d4 30 90 e5                                      ldr r3, [r0, #0xd4]
005aa298  00 40 a0 e1                                      mov r4, r0
005aa29c  14 00 93 e5                                      ldr r0, [r3, #0x14]
005aa2a0  16 d4 ff eb                                      bl #0x59f300
005aa2a4  dc 00 94 e5                                      ldr r0, [r4, #0xdc]
005aa2a8  9c c2 00 eb                                      bl #0x5dad20
005aa2ac  dc 50 94 e5                                      ldr r5, [r4, #0xdc]
005aa2b0  05 00 a0 e1                                      mov r0, r5
005aa2b4  f6 be 00 eb                                      bl #0x5d9e94
005aa2b8  00 10 a0 e3                                      mov r1, #0
005aa2bc  05 00 a0 e1                                      mov r0, r5
005aa2c0  6e bf 00 eb                                      bl #0x5da080
005aa2c4  e0 40 94 e5                                      ldr r4, [r4, #0xe0]
005aa2c8  04 00 a0 e1                                      mov r0, r4
005aa2cc  ee f7 00 eb                                      bl #0x5e828c
005aa2d0  04 00 a0 e1                                      mov r0, r4
005aa2d4  00 10 a0 e3                                      mov r1, #0
005aa2d8  70 40 bd e8                                      pop {r4, r5, r6, lr}
005aa2dc  25 ff 00 ea                                      b #0x5e9f78

; FUNCTION 0x005aa2e0, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver13createBindingEv
; demangled: glitch::video::IVideoDriver::createBinding()
; decoder-mode: arm
005aa2e0  70 40 2d e9                                      push {r4, r5, r6, lr}
005aa2e4  00 10 a0 e3                                      mov r1, #0
005aa2e8  00 50 a0 e1                                      mov r5, r0
005aa2ec  24 00 a0 e3                                      mov r0, #0x24
005aa2f0  ad 27 fe eb                                      bl #0x5341ac
005aa2f4  34 40 9f e5                                      ldr r4, [pc, #0x34]
005aa2f8  34 10 9f e5                                      ldr r1, [pc, #0x34]
005aa2fc  00 20 a0 e3                                      mov r2, #0
005aa300  04 40 8f e0                                      add r4, pc, r4
005aa304  01 10 94 e7                                      ldr r1, [r4, r1]
005aa308  20 50 80 e5                                      str r5, [r0, #0x20]
005aa30c  1c 20 80 e5                                      str r2, [r0, #0x1c]
005aa310  08 10 81 e2                                      add r1, r1, #8
005aa314  06 00 80 e8                                      stm r0, {r1, r2}
005aa318  08 20 80 e5                                      str r2, [r0, #8]
005aa31c  0c 20 80 e5                                      str r2, [r0, #0xc]
005aa320  10 20 80 e5                                      str r2, [r0, #0x10]
005aa324  b4 21 c0 e1                                      strh r2, [r0, #0x14]
005aa328  18 20 80 e5                                      str r2, [r0, #0x18]
005aa32c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005aa330  90 a7 3e 00 3c 48 00 00                          .byte 0x90, 0xa7, 0x3e, 0x00, 0x3c, 0x48, 0x00, 0x00

; FUNCTION 0x005aa51c, declared_size=220, range_size=220, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver19setMaterialInternalEPNS0_9CMaterialEhPKN5boost13intrusive_ptrINS0_19CVertexAttributeMapEEE
; demangled: glitch::video::IVideoDriver::setMaterialInternal(glitch::video::CMaterial*, unsigned char, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*)
; decoder-mode: arm
005aa51c  10 40 2d e9                                      push {r4, lr}
005aa520  00 40 a0 e1                                      mov r4, r0
005aa524  f0 00 90 e5                                      ldr r0, [r0, #0xf0]
005aa528  08 d0 4d e2                                      sub sp, sp, #8
005aa52c  e8 30 84 e5                                      str r3, [r4, #0xe8]
005aa530  00 00 51 e1                                      cmp r1, r0
005aa534  ec 10 84 e5                                      str r1, [r4, #0xec]
005aa538  f8 20 c4 e5                                      strb r2, [r4, #0xf8]
005aa53c  0e 00 00 0a                                      beq #0x5aa57c
005aa540  00 30 94 e5                                      ldr r3, [r4]
005aa544  04 00 a0 e1                                      mov r0, r4
005aa548  04 10 8d e5                                      str r1, [sp, #4]
005aa54c  00 20 8d e5                                      str r2, [sp]
005aa550  0f e0 a0 e1                                      mov lr, pc
005aa554  08 f2 93 e5                                      ldr pc, [r3, #0x208]
005aa558  04 10 9d e5                                      ldr r1, [sp, #4]
005aa55c  ec 00 94 e5                                      ldr r0, [r4, #0xec]
005aa560  f0 10 84 e5                                      str r1, [r4, #0xf0]
005aa564  00 20 9d e5                                      ldr r2, [sp]
005aa568  f8 10 d4 e5                                      ldrb r1, [r4, #0xf8]
005aa56c  f9 20 c4 e5                                      strb r2, [r4, #0xf9]
005aa570  08 d0 8d e2                                      add sp, sp, #8
005aa574  10 40 bd e8                                      pop {r4, lr}
005aa578  ca ff ff ea                                      b #0x5aa4a8
005aa57c  01 00 a0 e1                                      mov r0, r1
005aa580  04 10 8d e5                                      str r1, [sp, #4]
005aa584  00 20 8d e5                                      str r2, [sp]
005aa588  e9 6d 00 eb                                      bl #0x5c5d34
005aa58c  04 10 9d e5                                      ldr r1, [sp, #4]
005aa590  00 20 9d e5                                      ldr r2, [sp]
005aa594  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005aa598  33 30 a0 e1                                      lsr r3, r3, r0
005aa59c  01 00 13 e3                                      tst r3, #1
005aa5a0  e6 ff ff 1a                                      bne #0x5aa540
005aa5a4  f9 00 d4 e5                                      ldrb r0, [r4, #0xf9]
005aa5a8  02 00 50 e1                                      cmp r0, r2
005aa5ac  e3 ff ff 1a                                      bne #0x5aa540
005aa5b0  04 10 91 e5                                      ldr r1, [r1, #4]
005aa5b4  0c 20 a0 e3                                      mov r2, #0xc
005aa5b8  18 30 91 e5                                      ldr r3, [r1, #0x18]
005aa5bc  92 30 23 e0                                      mla r3, r2, r0, r3
005aa5c0  04 20 d3 e5                                      ldrb r2, [r3, #4]
005aa5c4  01 00 52 e3                                      cmp r2, #1
005aa5c8  05 00 00 9a                                      bls #0x5aa5e4
005aa5cc  04 00 a0 e1                                      mov r0, r4
005aa5d0  00 30 94 e5                                      ldr r3, [r4]
005aa5d4  0f e0 a0 e1                                      mov lr, pc
005aa5d8  0c f2 93 e5                                      ldr pc, [r3, #0x20c]
005aa5dc  08 d0 8d e2                                      add sp, sp, #8
005aa5e0  10 80 bd e8                                      pop {r4, pc}
005aa5e4  08 30 93 e5                                      ldr r3, [r3, #8]
005aa5e8  30 30 d3 e5                                      ldrb r3, [r3, #0x30]
005aa5ec  00 00 53 e3                                      cmp r3, #0
005aa5f0  f9 ff ff 0a                                      beq #0x5aa5dc
005aa5f4  f4 ff ff ea                                      b #0x5aa5cc

; FUNCTION 0x005aa5f8, declared_size=680, range_size=680, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver13createTextureEPKcRKNS0_12STextureDescE
; demangled: glitch::video::IVideoDriver::createTexture(char const*, glitch::video::STextureDesc const&)
; decoder-mode: arm
005aa5f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005aa5fc  00 80 93 e5                                      ldr r8, [r3]
005aa600  01 50 a0 e1                                      mov r5, r1
005aa604  9c 10 91 e5                                      ldr r1, [r1, #0x9c]
005aa608  06 c0 88 e2                                      add ip, r8, #6
005aa60c  1f c0 0c e2                                      and ip, ip, #0x1f
005aa610  01 e0 a0 e3                                      mov lr, #1
005aa614  1e cc 11 e0                                      ands ip, r1, lr, lsl ip
005aa618  5c 72 9f e5                                      ldr r7, [pc, #0x25c]
005aa61c  24 d0 4d e2                                      sub sp, sp, #0x24
005aa620  00 40 a0 e1                                      mov r4, r0
005aa624  07 70 8f e0                                      add r7, pc, r7
005aa628  10 00 00 1a                                      bne #0x5aa670
005aa62c  78 30 ff e6                                      uxth r3, r8
005aa630  ff 00 53 e3                                      cmp r3, #0xff
005aa634  1f 00 00 0a                                      beq #0x5aa6b8
005aa638  0c 00 a0 e1                                      mov r0, ip
005aa63c  10 20 8d e5                                      str r2, [sp, #0x10]
005aa640  08 4d 01 eb                                      bl #0x5fda68
005aa644  10 20 9d e5                                      ldr r2, [sp, #0x10]
005aa648  08 31 90 e7                                      ldr r3, [r0, r8, lsl #2]
005aa64c  2c 12 9f e5                                      ldr r1, [pc, #0x22c]
005aa650  03 00 a0 e3                                      mov r0, #3
005aa654  01 10 8f e0                                      add r1, pc, r1
005aa658  75 82 01 eb                                      bl #0x60b034
005aa65c  00 30 a0 e3                                      mov r3, #0
005aa660  00 30 84 e5                                      str r3, [r4]
005aa664  04 00 a0 e1                                      mov r0, r4
005aa668  24 d0 8d e2                                      add sp, sp, #0x24
005aa66c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005aa670  10 00 93 e5                                      ldr r0, [r3, #0x10]
005aa674  00 00 50 e3                                      cmp r0, #0
005aa678  11 00 00 0a                                      beq #0x5aa6c4
005aa67c  14 60 93 e5                                      ldr r6, [r3, #0x14]
005aa680  00 00 56 e3                                      cmp r6, #0
005aa684  18 a0 93 05                                      ldreq sl, [r3, #0x18]
005aa688  0f 00 00 0a                                      beq #0x5aa6cc
005aa68c  18 a0 93 e5                                      ldr sl, [r3, #0x18]
005aa690  00 00 5a e3                                      cmp sl, #0
005aa694  0c 00 00 0a                                      beq #0x5aa6cc
005aa698  10 00 11 e3                                      tst r1, #0x10
005aa69c  13 00 00 1a                                      bne #0x5aa6f0
005aa6a0  06 00 50 e1                                      cmp r0, r6
005aa6a4  6f 00 00 0a                                      beq #0x5aa868
005aa6a8  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
005aa6ac  00 30 a0 e1                                      mov r3, r0
005aa6b0  01 10 8f e0                                      add r1, pc, r1
005aa6b4  07 00 00 ea                                      b #0x5aa6d8
005aa6b8  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
005aa6bc  03 30 8f e0                                      add r3, pc, r3
005aa6c0  e1 ff ff ea                                      b #0x5aa64c
005aa6c4  18 a0 93 e5                                      ldr sl, [r3, #0x18]
005aa6c8  14 60 93 e5                                      ldr r6, [r3, #0x14]
005aa6cc  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
005aa6d0  00 30 a0 e1                                      mov r3, r0
005aa6d4  01 10 8f e0                                      add r1, pc, r1
005aa6d8  03 00 a0 e3                                      mov r0, #3
005aa6dc  40 04 8d e8                                      stm sp, {r6, sl}
005aa6e0  53 82 01 eb                                      bl #0x60b034
005aa6e4  00 30 a0 e3                                      mov r3, #0
005aa6e8  00 30 84 e5                                      str r3, [r4]
005aa6ec  dc ff ff ea                                      b #0x5aa664
005aa6f0  03 00 58 e3                                      cmp r8, #3
005aa6f4  10 00 00 0a                                      beq #0x5aa73c
005aa6f8  20 00 11 e3                                      tst r1, #0x20
005aa6fc  0e 00 00 1a                                      bne #0x5aa73c
005aa700  01 10 40 e2                                      sub r1, r0, #1
005aa704  00 00 11 e1                                      tst r1, r0
005aa708  03 00 00 0a                                      beq #0x5aa71c
005aa70c  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
005aa710  00 30 a0 e1                                      mov r3, r0
005aa714  01 10 8f e0                                      add r1, pc, r1
005aa718  ee ff ff ea                                      b #0x5aa6d8
005aa71c  01 10 46 e2                                      sub r1, r6, #1
005aa720  06 00 11 e1                                      tst r1, r6
005aa724  f8 ff ff 1a                                      bne #0x5aa70c
005aa728  01 00 58 e3                                      cmp r8, #1
005aa72c  02 00 00 1a                                      bne #0x5aa73c
005aa730  01 10 4a e2                                      sub r1, sl, #1
005aa734  0a 00 11 e1                                      tst r1, sl
005aa738  f3 ff ff 1a                                      bne #0x5aa70c
005aa73c  50 91 9f e5                                      ldr sb, [pc, #0x150]
005aa740  04 80 93 e5                                      ldr r8, [r3, #4]
005aa744  28 b0 a0 e3                                      mov fp, #0x28
005aa748  09 10 97 e7                                      ldr r1, [r7, sb]
005aa74c  10 20 8d e5                                      str r2, [sp, #0x10]
005aa750  14 30 8d e5                                      str r3, [sp, #0x14]
005aa754  9b 18 2b e0                                      mla fp, fp, r8, r1
005aa758  1c 80 8d e5                                      str r8, [sp, #0x1c]
005aa75c  24 c0 db e5                                      ldrb ip, [fp, #0x24]
005aa760  0c 10 a0 e1                                      mov r1, ip
005aa764  18 c0 8d e5                                      str ip, [sp, #0x18]
005aa768  ef 90 f5 eb                                      bl #0x30eb2c
005aa76c  00 00 51 e3                                      cmp r1, #0
005aa770  10 20 9d e5                                      ldr r2, [sp, #0x10]
005aa774  14 30 9d e5                                      ldr r3, [sp, #0x14]
005aa778  14 00 00 0a                                      beq #0x5aa7d0
005aa77c  78 10 ff e6                                      uxth r1, r8
005aa780  27 00 51 e3                                      cmp r1, #0x27
005aa784  27 00 00 1a                                      bne #0x5aa828
005aa788  08 31 9f e5                                      ldr r3, [pc, #0x108]
005aa78c  03 30 8f e0                                      add r3, pc, r3
005aa790  09 10 97 e7                                      ldr r1, [r7, sb]
005aa794  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
005aa798  28 00 a0 e3                                      mov r0, #0x28
005aa79c  18 50 9d e5                                      ldr r5, [sp, #0x18]
005aa7a0  90 1c 20 e0                                      mla r0, r0, ip, r1
005aa7a4  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
005aa7a8  26 c0 d0 e5                                      ldrb ip, [r0, #0x26]
005aa7ac  25 e0 d0 e5                                      ldrb lr, [r0, #0x25]
005aa7b0  01 10 8f e0                                      add r1, pc, r1
005aa7b4  03 00 a0 e3                                      mov r0, #3
005aa7b8  20 40 8d e8                                      stm sp, {r5, lr}
005aa7bc  08 c0 8d e5                                      str ip, [sp, #8]
005aa7c0  1b 82 01 eb                                      bl #0x60b034
005aa7c4  00 30 a0 e3                                      mov r3, #0
005aa7c8  00 30 84 e5                                      str r3, [r4]
005aa7cc  a4 ff ff ea                                      b #0x5aa664
005aa7d0  06 00 a0 e1                                      mov r0, r6
005aa7d4  25 10 db e5                                      ldrb r1, [fp, #0x25]
005aa7d8  10 20 8d e5                                      str r2, [sp, #0x10]
005aa7dc  14 30 8d e5                                      str r3, [sp, #0x14]
005aa7e0  d1 90 f5 eb                                      bl #0x30eb2c
005aa7e4  00 00 51 e3                                      cmp r1, #0
005aa7e8  10 20 9d e5                                      ldr r2, [sp, #0x10]
005aa7ec  14 30 9d e5                                      ldr r3, [sp, #0x14]
005aa7f0  e1 ff ff 1a                                      bne #0x5aa77c
005aa7f4  0a 00 a0 e1                                      mov r0, sl
005aa7f8  26 10 db e5                                      ldrb r1, [fp, #0x26]
005aa7fc  ca 90 f5 eb                                      bl #0x30eb2c
005aa800  00 00 51 e3                                      cmp r1, #0
005aa804  10 20 9d e5                                      ldr r2, [sp, #0x10]
005aa808  14 30 9d e5                                      ldr r3, [sp, #0x14]
005aa80c  da ff ff 1a                                      bne #0x5aa77c
005aa810  05 10 a0 e1                                      mov r1, r5
005aa814  00 c0 95 e5                                      ldr ip, [r5]
005aa818  04 00 a0 e1                                      mov r0, r4
005aa81c  0f e0 a0 e1                                      mov lr, pc
005aa820  04 f2 9c e5                                      ldr pc, [ip, #0x204]
005aa824  8e ff ff ea                                      b #0x5aa664
005aa828  00 00 a0 e3                                      mov r0, #0
005aa82c  10 20 8d e5                                      str r2, [sp, #0x10]
005aa830  14 30 8d e5                                      str r3, [sp, #0x14]
005aa834  42 0c 01 eb                                      bl #0x5ed944
005aa838  14 30 9d e5                                      ldr r3, [sp, #0x14]
005aa83c  09 10 97 e7                                      ldr r1, [r7, sb]
005aa840  10 20 9d e5                                      ldr r2, [sp, #0x10]
005aa844  04 30 93 e5                                      ldr r3, [r3, #4]
005aa848  1c 30 8d e5                                      str r3, [sp, #0x1c]
005aa84c  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
005aa850  08 31 90 e7                                      ldr r3, [r0, r8, lsl #2]
005aa854  28 00 a0 e3                                      mov r0, #0x28
005aa858  90 15 21 e0                                      mla r1, r0, r5, r1
005aa85c  24 10 d1 e5                                      ldrb r1, [r1, #0x24]
005aa860  18 10 8d e5                                      str r1, [sp, #0x18]
005aa864  c9 ff ff ea                                      b #0x5aa790
005aa868  01 00 58 e3                                      cmp r8, #1
005aa86c  9f ff ff 1a                                      bne #0x5aa6f0
005aa870  00 00 5a e1                                      cmp sl, r0
005aa874  8b ff ff 1a                                      bne #0x5aa6a8
005aa878  9e ff ff ea                                      b #0x5aa6f8
; mapping-symbol data/literal pool
005aa87c  6c a4 3e 00 54 57 33 00 70 57 33 00 a4 bd 31 00  .byte 0x6c, 0xa4, 0x3e, 0x00, 0x54, 0x57, 0x33, 0x00, 0x70, 0x57, 0x33, 0x00, 0xa4, 0xbd, 0x31, 0x00
005aa88c  04 57 33 00 5c 57 33 00 34 1f 00 00 d4 bc 31 00  .byte 0x04, 0x57, 0x33, 0x00, 0x5c, 0x57, 0x33, 0x00, 0x34, 0x1f, 0x00, 0x00, 0xd4, 0xbc, 0x31, 0x00
005aa89c  18 57 33 00                                      .byte 0x18, 0x57, 0x33, 0x00

; FUNCTION 0x005aa8a0, declared_size=160, range_size=160, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver19checkPrimitiveCountEj
; demangled: glitch::video::IVideoDriver::checkPrimitiveCount(unsigned int) const
; decoder-mode: arm
005aa8a0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005aa8a4  88 40 9f e5                                      ldr r4, [pc, #0x88]
005aa8a8  88 50 9f e5                                      ldr r5, [pc, #0x88]
005aa8ac  01 db 4d e2                                      sub sp, sp, #0x400
005aa8b0  04 40 8f e0                                      add r4, pc, r4
005aa8b4  05 30 94 e7                                      ldr r3, [r4, r5]
005aa8b8  0c d0 4d e2                                      sub sp, sp, #0xc
005aa8bc  01 70 a0 e1                                      mov r7, r1
005aa8c0  00 30 93 e5                                      ldr r3, [r3]
005aa8c4  04 34 8d e5                                      str r3, [sp, #0x404]
005aa8c8  00 30 90 e5                                      ldr r3, [r0]
005aa8cc  0f e0 a0 e1                                      mov lr, pc
005aa8d0  60 f0 93 e5                                      ldr pc, [r3, #0x60]
005aa8d4  07 00 50 e1                                      cmp r0, r7
005aa8d8  01 00 a0 23                                      movhs r0, #1
005aa8dc  0b 00 00 2a                                      bhs #0x5aa910
005aa8e0  54 10 9f e5                                      ldr r1, [pc, #0x54]
005aa8e4  08 60 8d e2                                      add r6, sp, #8
005aa8e8  04 60 46 e2                                      sub r6, r6, #4
005aa8ec  00 30 a0 e1                                      mov r3, r0
005aa8f0  01 10 8f e0                                      add r1, pc, r1
005aa8f4  07 20 a0 e1                                      mov r2, r7
005aa8f8  06 00 a0 e1                                      mov r0, r6
005aa8fc  78 90 f5 eb                                      bl #0x30eae4
005aa900  06 00 a0 e1                                      mov r0, r6
005aa904  03 10 a0 e3                                      mov r1, #3
005aa908  e4 80 01 eb                                      bl #0x60aca0
005aa90c  00 00 a0 e3                                      mov r0, #0
005aa910  05 30 94 e7                                      ldr r3, [r4, r5]
005aa914  04 24 9d e5                                      ldr r2, [sp, #0x404]
005aa918  00 30 93 e5                                      ldr r3, [r3]
005aa91c  03 00 52 e1                                      cmp r2, r3
005aa920  02 00 00 1a                                      bne #0x5aa930
005aa924  0c d0 8d e2                                      add sp, sp, #0xc
005aa928  01 db 8d e2                                      add sp, sp, #0x400
005aa92c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005aa930  76 8e f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005aa934  e0 a1 3e 00 ac 40 00 00 40 56 33 00              .byte 0xe0, 0xa1, 0x3e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x40, 0x56, 0x33, 0x00

; FUNCTION 0x005aa940, declared_size=256, range_size=256, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver15getDynamicLightEt
; demangled: glitch::video::IVideoDriver::getDynamicLight(unsigned short) const
; decoder-mode: arm
005aa940  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005aa944  dc 70 9f e5                                      ldr r7, [pc, #0xdc]
005aa948  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
005aa94c  00 50 a0 e1                                      mov r5, r0
005aa950  07 70 8f e0                                      add r7, pc, r7
005aa954  0c 30 97 e5                                      ldr r3, [r7, #0xc]
005aa958  04 40 8f e0                                      add r4, pc, r4
005aa95c  01 60 a0 e1                                      mov r6, r1
005aa960  01 80 13 e2                                      ands r8, r3, #1
005aa964  20 00 00 0a                                      beq #0x5aa9ec
005aa968  ba 33 d5 e1                                      ldrh r3, [r5, #0x3a]
005aa96c  06 00 53 e1                                      cmp r3, r6
005aa970  19 00 00 9a                                      bls #0x5aa9dc
005aa974  e4 10 95 e5                                      ldr r1, [r5, #0xe4]
005aa978  b8 33 d5 e1                                      ldrh r3, [r5, #0x38]
005aa97c  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
005aa980  18 c0 91 e5                                      ldr ip, [r1, #0x18]
005aa984  2c 00 91 e5                                      ldr r0, [r1, #0x2c]
005aa988  02 20 6c e0                                      rsb r2, ip, r2
005aa98c  42 21 a0 e1                                      asr r2, r2, #2
005aa990  82 10 82 e0                                      add r1, r2, r2, lsl #1
005aa994  01 12 81 e0                                      add r1, r1, r1, lsl #4
005aa998  01 14 81 e0                                      add r1, r1, r1, lsl #8
005aa99c  01 18 81 e0                                      add r1, r1, r1, lsl #16
005aa9a0  01 21 82 e0                                      add r2, r2, r1, lsl #2
005aa9a4  02 00 53 e1                                      cmp r3, r2
005aa9a8  08 00 00 3a                                      blo #0x5aa9d0
005aa9ac  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
005aa9b0  03 30 94 e7                                      ldr r3, [r4, r3]
005aa9b4  00 20 93 e5                                      ldr r2, [r3]
005aa9b8  00 00 52 e3                                      cmp r2, #0
005aa9bc  00 30 a0 03                                      moveq r3, #0
005aa9c0  0c 30 93 e5                                      ldr r3, [r3, #0xc]
005aa9c4  03 00 80 e0                                      add r0, r0, r3
005aa9c8  06 01 80 e0                                      add r0, r0, r6, lsl #2
005aa9cc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005aa9d0  14 20 a0 e3                                      mov r2, #0x14
005aa9d4  92 c3 23 e0                                      mla r3, r2, r3, ip
005aa9d8  f5 ff ff ea                                      b #0x5aa9b4
005aa9dc  50 00 9f e5                                      ldr r0, [pc, #0x50]
005aa9e0  00 00 8f e0                                      add r0, pc, r0
005aa9e4  10 00 80 e2                                      add r0, r0, #0x10
005aa9e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005aa9ec  0c a0 87 e2                                      add sl, r7, #0xc
005aa9f0  0a 00 a0 e1                                      mov r0, sl
005aa9f4  5c 8f f5 eb                                      bl #0x30e76c
005aa9f8  00 00 50 e3                                      cmp r0, #0
005aa9fc  d9 ff ff 0a                                      beq #0x5aa968
005aaa00  0a 00 a0 e1                                      mov r0, sl
005aaa04  10 80 87 e5                                      str r8, [r7, #0x10]
005aaa08  0b 90 f5 eb                                      bl #0x30ea3c
005aaa0c  24 30 9f e5                                      ldr r3, [pc, #0x24]
005aaa10  04 00 8a e2                                      add r0, sl, #4
005aaa14  03 10 94 e7                                      ldr r1, [r4, r3]
005aaa18  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
005aaa1c  03 20 94 e7                                      ldr r2, [r4, r3]
005aaa20  37 8e f5 eb                                      bl #0x30e304
005aaa24  cf ff ff ea                                      b #0x5aa968
; mapping-symbol data/literal pool
005aaa28  1c c0 44 00 38 a1 3e 00 14 28 00 00 8c bf 44 00  .byte 0x1c, 0xc0, 0x44, 0x00, 0x38, 0xa1, 0x3e, 0x00, 0x14, 0x28, 0x00, 0x00, 0x8c, 0xbf, 0x44, 0x00
005aaa38  28 2d 00 00 90 18 00 00                          .byte 0x28, 0x2d, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x005aaa40, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver15addDynamicLightERKN5boost13intrusive_ptrINS0_6CLightEEE
; demangled: glitch::video::IVideoDriver::addDynamicLight(boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
005aaa40  10 40 2d e9                                      push {r4, lr}
005aaa44  00 40 a0 e1                                      mov r4, r0
005aaa48  ba 23 d0 e1                                      ldrh r2, [r0, #0x3a]
005aaa4c  bc 03 d0 e1                                      ldrh r0, [r0, #0x3c]
005aaa50  02 00 50 e1                                      cmp r0, r2
005aaa54  09 00 00 9a                                      bls #0x5aaa80
005aaa58  b8 c3 d4 e1                                      ldrh ip, [r4, #0x38]
005aaa5c  01 30 a0 e1                                      mov r3, r1
005aaa60  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005aaa64  0c 20 82 e0                                      add r2, r2, ip
005aaa68  72 10 ff e6                                      uxth r1, r2
005aaa6c  00 20 a0 e3                                      mov r2, #0
005aaa70  05 4f 00 eb                                      bl #0x5be68c
005aaa74  ba 33 d4 e1                                      ldrh r3, [r4, #0x3a]
005aaa78  01 30 83 e2                                      add r3, r3, #1
005aaa7c  ba 33 c4 e1                                      strh r3, [r4, #0x3a]
005aaa80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005aaa84, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver22deleteAllDynamicLightsEv
; demangled: glitch::video::IVideoDriver::deleteAllDynamicLights()
; decoder-mode: arm
005aaa84  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005aaa88  b8 43 d0 e1                                      ldrh r4, [r0, #0x38]
005aaa8c  ba 63 d0 e1                                      ldrh r6, [r0, #0x3a]
005aaa90  00 50 a0 e1                                      mov r5, r0
005aaa94  06 60 84 e0                                      add r6, r4, r6
005aaa98  76 60 ff e6                                      uxth r6, r6
005aaa9c  06 00 54 e1                                      cmp r4, r6
005aaaa0  09 00 00 2a                                      bhs #0x5aaacc
005aaaa4  40 70 80 e2                                      add r7, r0, #0x40
005aaaa8  04 10 a0 e1                                      mov r1, r4
005aaaac  01 40 84 e2                                      add r4, r4, #1
005aaab0  e4 00 95 e5                                      ldr r0, [r5, #0xe4]
005aaab4  00 20 a0 e3                                      mov r2, #0
005aaab8  07 30 a0 e1                                      mov r3, r7
005aaabc  74 40 ff e6                                      uxth r4, r4
005aaac0  f1 4e 00 eb                                      bl #0x5be68c
005aaac4  04 00 56 e1                                      cmp r6, r4
005aaac8  f6 ff ff 8a                                      bhi #0x5aaaa8
005aaacc  00 30 a0 e3                                      mov r3, #0
005aaad0  ba 33 c5 e1                                      strh r3, [r5, #0x3a]
005aaad4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005aaad8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver22getTextureBindingCountEv
; demangled: glitch::video::IVideoDriver::getTextureBindingCount() const
; decoder-mode: arm
005aaad8  50 00 80 e2                                      add r0, r0, #0x50
005aaadc  bc bf 04 ea                                      b #0x6da9d4

; FUNCTION 0x005aaae0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver18getDrawCall2DCountEv
; demangled: glitch::video::IVideoDriver::getDrawCall2DCount() const
; decoder-mode: arm
005aaae0  50 00 80 e2                                      add r0, r0, #0x50
005aaae4  b8 bf 04 ea                                      b #0x6da9cc

; FUNCTION 0x005aaae8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver16getDrawCallCountEv
; demangled: glitch::video::IVideoDriver::getDrawCallCount() const
; decoder-mode: arm
005aaae8  50 00 80 e2                                      add r0, r0, #0x50
005aaaec  b4 bf 04 ea                                      b #0x6da9c4

; FUNCTION 0x005aaaf0, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver22getPrimitiveCountDrawnEj
; demangled: glitch::video::IVideoDriver::getPrimitiveCountDrawn(unsigned int) const
; decoder-mode: arm
005aaaf0  00 00 51 e3                                      cmp r1, #0
005aaaf4  05 00 00 0a                                      beq #0x5aab10
005aaaf8  01 00 51 e3                                      cmp r1, #1
005aaafc  01 00 00 0a                                      beq #0x5aab08
005aab00  50 00 80 e2                                      add r0, r0, #0x50
005aab04  ac bf 04 ea                                      b #0x6da9bc
005aab08  50 00 80 e2                                      add r0, r0, #0x50
005aab0c  a8 bf 04 ea                                      b #0x6da9b4
005aab10  50 00 80 e2                                      add r0, r0, #0x50
005aab14  a4 bf 04 ea                                      b #0x6da9ac

; FUNCTION 0x005aab18, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver6getFPSEv
; demangled: glitch::video::IVideoDriver::getFPS() const
; decoder-mode: arm
005aab18  50 00 80 e2                                      add r0, r0, #0x50
005aab1c  a0 bf 04 ea                                      b #0x6da9a4

; FUNCTION 0x005aab20, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver8endSceneEv
; demangled: glitch::video::IVideoDriver::endScene()
; decoder-mode: arm
005aab20  10 40 2d e9                                      push {r4, lr}
005aab24  08 d0 4d e2                                      sub sp, sp, #8
005aab28  00 40 a0 e1                                      mov r4, r0
005aab2c  66 81 01 eb                                      bl #0x60b0cc
005aab30  80 e0 94 e5                                      ldr lr, [r4, #0x80]
005aab34  84 c0 94 e5                                      ldr ip, [r4, #0x84]
005aab38  78 20 94 e5                                      ldr r2, [r4, #0x78]
005aab3c  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
005aab40  00 10 a0 e1                                      mov r1, r0
005aab44  50 00 84 e2                                      add r0, r4, #0x50
005aab48  00 e0 8d e5                                      str lr, [sp]
005aab4c  04 c0 8d e5                                      str ip, [sp, #4]
005aab50  a9 bf 04 eb                                      bl #0x6da9fc
005aab54  01 00 a0 e3                                      mov r0, #1
005aab58  08 d0 8d e2                                      add sp, sp, #8
005aab5c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005aab60, declared_size=860, range_size=860, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver4initEtth
; demangled: glitch::video::IVideoDriver::init(unsigned short, unsigned short, unsigned char)
; decoder-mode: arm
005aab60  2c c3 9f e5                                      ldr ip, [pc, #0x32c]
005aab64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005aab68  28 e3 9f e5                                      ldr lr, [pc, #0x328]
005aab6c  0c c0 8f e0                                      add ip, pc, ip
005aab70  02 70 a0 e1                                      mov r7, r2
005aab74  0e 20 9c e7                                      ldr r2, [ip, lr]
005aab78  6c d0 4d e2                                      sub sp, sp, #0x6c
005aab7c  10 c0 8d e5                                      str ip, [sp, #0x10]
005aab80  00 20 92 e5                                      ldr r2, [r2]
005aab84  2c e0 8d e5                                      str lr, [sp, #0x2c]
005aab88  00 00 57 e3                                      cmp r7, #0
005aab8c  35 31 c0 e5                                      strb r3, [r0, #0x135]
005aab90  be 13 c0 e1                                      strh r1, [r0, #0x3e]
005aab94  64 20 8d e5                                      str r2, [sp, #0x64]
005aab98  00 80 a0 e1                                      mov r8, r0
005aab9c  bc 73 c0 e1                                      strh r7, [r0, #0x3c]
005aaba0  e4 40 90 e5                                      ldr r4, [r0, #0xe4]
005aaba4  44 50 8d 02                                      addeq r5, sp, #0x44
005aaba8  79 00 00 1a                                      bne #0x5aad94
005aabac  e8 12 9f e5                                      ldr r1, [pc, #0x2e8]
005aabb0  1c 20 a0 e3                                      mov r2, #0x1c
005aabb4  11 30 a0 e3                                      mov r3, #0x11
005aabb8  01 10 8f e0                                      add r1, pc, r1
005aabbc  01 90 a0 e3                                      mov sb, #1
005aabc0  ff b0 a0 e3                                      mov fp, #0xff
005aabc4  04 00 a0 e1                                      mov r0, r4
005aabc8  00 0a 8d e8                                      stm sp, {sb, fp}
005aabcc  e8 45 00 eb                                      bl #0x5bc374
005aabd0  36 31 00 e3                                      movw r3, #0x136
005aabd4  b3 00 88 e1                                      strh r0, [r8, r3]
005aabd8  00 10 a0 e1                                      mov r1, r0
005aabdc  04 00 a0 e1                                      mov r0, r4
005aabe0  51 3c 00 eb                                      bl #0x5b9d2c
005aabe4  b4 32 9f e5                                      ldr r3, [pc, #0x2b4]
005aabe8  b4 a2 9f e5                                      ldr sl, [pc, #0x2b4]
005aabec  40 e0 8d e2                                      add lr, sp, #0x40
005aabf0  03 30 8f e0                                      add r3, pc, r3
005aabf4  20 30 8d e5                                      str r3, [sp, #0x20]
005aabf8  a8 32 9f e5                                      ldr r3, [pc, #0x2a8]
005aabfc  3c 10 8d e2                                      add r1, sp, #0x3c
005aac00  34 20 8d e2                                      add r2, sp, #0x34
005aac04  03 30 8f e0                                      add r3, pc, r3
005aac08  24 30 8d e5                                      str r3, [sp, #0x24]
005aac0c  98 32 9f e5                                      ldr r3, [pc, #0x298]
005aac10  fa 80 88 e2                                      add r8, r8, #0xfa
005aac14  0a a0 8f e0                                      add sl, pc, sl
005aac18  03 30 8f e0                                      add r3, pc, r3
005aac1c  28 30 8d e5                                      str r3, [sp, #0x28]
005aac20  00 60 a0 e3                                      mov r6, #0
005aac24  1c e0 8d e5                                      str lr, [sp, #0x1c]
005aac28  18 10 8d e5                                      str r1, [sp, #0x18]
005aac2c  14 20 8d e5                                      str r2, [sp, #0x14]
005aac30  06 30 a0 e1                                      mov r3, r6
005aac34  0a 10 a0 e1                                      mov r1, sl
005aac38  20 20 9d e5                                      ldr r2, [sp, #0x20]
005aac3c  05 00 a0 e1                                      mov r0, r5
005aac40  a7 8f f5 eb                                      bl #0x30eae4
005aac44  1f 20 a0 e3                                      mov r2, #0x1f
005aac48  10 30 a0 e3                                      mov r3, #0x10
005aac4c  05 10 a0 e1                                      mov r1, r5
005aac50  04 00 a0 e1                                      mov r0, r4
005aac54  00 0a 8d e8                                      stm sp, {sb, fp}
005aac58  c5 45 00 eb                                      bl #0x5bc374
005aac5c  00 10 a0 e1                                      mov r1, r0
005aac60  b0 00 c8 e1                                      strh r0, [r8]
005aac64  04 00 a0 e1                                      mov r0, r4
005aac68  2f 3c 00 eb                                      bl #0x5b9d2c
005aac6c  00 70 a0 e3                                      mov r7, #0
005aac70  7f c0 e0 e3                                      mvn ip, #0x7f
005aac74  b2 10 d8 e0                                      ldrh r1, [r8], #2
005aac78  07 20 a0 e1                                      mov r2, r7
005aac7c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005aac80  42 c0 cd e5                                      strb ip, [sp, #0x42]
005aac84  04 00 a0 e1                                      mov r0, r4
005aac88  00 c0 e0 e3                                      mvn ip, #0
005aac8c  40 c0 cd e5                                      strb ip, [sp, #0x40]
005aac90  43 c0 cd e5                                      strb ip, [sp, #0x43]
005aac94  41 70 cd e5                                      strb r7, [sp, #0x41]
005aac98  d7 66 00 eb                                      bl #0x5c47fc
005aac9c  06 30 a0 e1                                      mov r3, r6
005aaca0  0a 10 a0 e1                                      mov r1, sl
005aaca4  24 20 9d e5                                      ldr r2, [sp, #0x24]
005aaca8  05 00 a0 e1                                      mov r0, r5
005aacac  8c 8f f5 eb                                      bl #0x30eae4
005aacb0  05 10 a0 e1                                      mov r1, r5
005aacb4  1d 20 a0 e3                                      mov r2, #0x1d
005aacb8  05 30 a0 e3                                      mov r3, #5
005aacbc  04 00 a0 e1                                      mov r0, r4
005aacc0  00 0a 8d e8                                      stm sp, {sb, fp}
005aacc4  aa 45 00 eb                                      bl #0x5bc374
005aacc8  00 c0 a0 e1                                      mov ip, r0
005aaccc  fe e5 a0 e3                                      mov lr, #0x3f800000
005aacd0  07 20 a0 e1                                      mov r2, r7
005aacd4  18 30 9d e5                                      ldr r3, [sp, #0x18]
005aacd8  0c 10 a0 e1                                      mov r1, ip
005aacdc  04 00 a0 e1                                      mov r0, r4
005aace0  3c e0 8d e5                                      str lr, [sp, #0x3c]
005aace4  0c c0 8d e5                                      str ip, [sp, #0xc]
005aace8  b0 67 00 eb                                      bl #0x5c4bb0
005aacec  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005aacf0  04 00 a0 e1                                      mov r0, r4
005aacf4  0c 10 a0 e1                                      mov r1, ip
005aacf8  0b 3c 00 eb                                      bl #0x5b9d2c
005aacfc  06 30 a0 e1                                      mov r3, r6
005aad00  0a 10 a0 e1                                      mov r1, sl
005aad04  28 20 9d e5                                      ldr r2, [sp, #0x28]
005aad08  05 00 a0 e1                                      mov r0, r5
005aad0c  74 8f f5 eb                                      bl #0x30eae4
005aad10  05 10 a0 e1                                      mov r1, r5
005aad14  1e 20 a0 e3                                      mov r2, #0x1e
005aad18  06 30 a0 e3                                      mov r3, #6
005aad1c  04 00 a0 e1                                      mov r0, r4
005aad20  00 0a 8d e8                                      stm sp, {sb, fp}
005aad24  92 45 00 eb                                      bl #0x5bc374
005aad28  00 e0 a0 e3                                      mov lr, #0
005aad2c  00 c0 a0 e1                                      mov ip, r0
005aad30  0c 10 a0 e1                                      mov r1, ip
005aad34  07 20 a0 e1                                      mov r2, r7
005aad38  14 30 9d e5                                      ldr r3, [sp, #0x14]
005aad3c  34 e0 8d e5                                      str lr, [sp, #0x34]
005aad40  04 00 a0 e1                                      mov r0, r4
005aad44  fe e5 a0 e3                                      mov lr, #0x3f800000
005aad48  38 e0 8d e5                                      str lr, [sp, #0x38]
005aad4c  0c c0 8d e5                                      str ip, [sp, #0xc]
005aad50  6b 67 00 eb                                      bl #0x5c4b04
005aad54  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005aad58  04 00 a0 e1                                      mov r0, r4
005aad5c  01 60 86 e2                                      add r6, r6, #1
005aad60  0c 10 a0 e1                                      mov r1, ip
005aad64  f0 3b 00 eb                                      bl #0x5b9d2c
005aad68  04 00 56 e3                                      cmp r6, #4
005aad6c  af ff ff 1a                                      bne #0x5aac30
005aad70  10 20 9d e5                                      ldr r2, [sp, #0x10]
005aad74  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005aad78  01 30 92 e7                                      ldr r3, [r2, r1]
005aad7c  64 20 9d e5                                      ldr r2, [sp, #0x64]
005aad80  00 30 93 e5                                      ldr r3, [r3]
005aad84  03 00 52 e1                                      cmp r2, r3
005aad88  40 00 00 1a                                      bne #0x5aae90
005aad8c  6c d0 8d e2                                      add sp, sp, #0x6c
005aad90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005aad94  14 91 9f e5                                      ldr sb, [pc, #0x114]
005aad98  14 11 9f e5                                      ldr r1, [pc, #0x114]
005aad9c  44 50 8d e2                                      add r5, sp, #0x44
005aada0  09 90 8f e0                                      add sb, pc, sb
005aada4  01 10 8f e0                                      add r1, pc, r1
005aada8  09 20 a0 e1                                      mov r2, sb
005aadac  05 00 a0 e1                                      mov r0, r5
005aadb0  4b 8f f5 eb                                      bl #0x30eae4
005aadb4  12 20 a0 e3                                      mov r2, #0x12
005aadb8  02 30 a0 e1                                      mov r3, r2
005aadbc  00 60 a0 e3                                      mov r6, #0
005aadc0  05 10 a0 e1                                      mov r1, r5
005aadc4  01 b0 a0 e3                                      mov fp, #1
005aadc8  04 00 a0 e1                                      mov r0, r4
005aadcc  00 b0 8d e5                                      str fp, [sp]
005aadd0  04 60 8d e5                                      str r6, [sp, #4]
005aadd4  66 45 00 eb                                      bl #0x5bc374
005aadd8  40 a0 88 e2                                      add sl, r8, #0x40
005aaddc  00 10 a0 e1                                      mov r1, r0
005aade0  b8 03 c8 e1                                      strh r0, [r8, #0x38]
005aade4  04 00 a0 e1                                      mov r0, r4
005aade8  cf 3b 00 eb                                      bl #0x5b9d2c
005aadec  06 20 a0 e1                                      mov r2, r6
005aadf0  04 00 a0 e1                                      mov r0, r4
005aadf4  b8 13 d8 e1                                      ldrh r1, [r8, #0x38]
005aadf8  0a 30 a0 e1                                      mov r3, sl
005aadfc  22 4e 00 eb                                      bl #0x5be68c
005aae00  0b 00 57 e1                                      cmp r7, fp
005aae04  68 ff ff 9a                                      bls #0x5aabac
005aae08  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
005aae0c  14 80 8d e5                                      str r8, [sp, #0x14]
005aae10  0b 60 a0 e1                                      mov r6, fp
005aae14  03 30 8f e0                                      add r3, pc, r3
005aae18  03 80 a0 e1                                      mov r8, r3
005aae1c  06 30 a0 e1                                      mov r3, r6
005aae20  08 10 a0 e1                                      mov r1, r8
005aae24  09 20 a0 e1                                      mov r2, sb
005aae28  05 00 a0 e1                                      mov r0, r5
005aae2c  2c 8f f5 eb                                      bl #0x30eae4
005aae30  12 20 a0 e3                                      mov r2, #0x12
005aae34  76 c0 ef e6                                      uxtb ip, r6
005aae38  02 30 a0 e1                                      mov r3, r2
005aae3c  05 10 a0 e1                                      mov r1, r5
005aae40  04 c0 8d e5                                      str ip, [sp, #4]
005aae44  04 00 a0 e1                                      mov r0, r4
005aae48  01 c0 a0 e3                                      mov ip, #1
005aae4c  00 c0 8d e5                                      str ip, [sp]
005aae50  47 45 00 eb                                      bl #0x5bc374
005aae54  00 b0 a0 e1                                      mov fp, r0
005aae58  0b 10 a0 e1                                      mov r1, fp
005aae5c  04 00 a0 e1                                      mov r0, r4
005aae60  b1 3b 00 eb                                      bl #0x5b9d2c
005aae64  01 60 86 e2                                      add r6, r6, #1
005aae68  0a 30 a0 e1                                      mov r3, sl
005aae6c  04 00 a0 e1                                      mov r0, r4
005aae70  0b 10 a0 e1                                      mov r1, fp
005aae74  00 20 a0 e3                                      mov r2, #0
005aae78  03 4e 00 eb                                      bl #0x5be68c
005aae7c  76 30 ff e6                                      uxth r3, r6
005aae80  03 00 57 e1                                      cmp r7, r3
005aae84  e4 ff ff 8a                                      bhi #0x5aae1c
005aae88  14 80 9d e5                                      ldr r8, [sp, #0x14]
005aae8c  46 ff ff ea                                      b #0x5aabac
005aae90  1e 8d f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005aae94  24 9f 3e 00 ac 40 00 00 e0 53 33 00 c0 53 33 00  .byte 0x24, 0x9f, 0x3e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x53, 0x33, 0x00, 0xc0, 0x53, 0x33, 0x00
005aaea4  7c 53 33 00 bc 53 33 00 b8 53 33 00 e0 51 33 00  .byte 0x7c, 0x53, 0x33, 0x00, 0xbc, 0x53, 0x33, 0x00, 0xb8, 0x53, 0x33, 0x00, 0xe0, 0x51, 0x33, 0x00
005aaeb4  d4 51 33 00 7c 51 33 00                          .byte 0xd4, 0x51, 0x33, 0x00, 0x7c, 0x51, 0x33, 0x00

; FUNCTION 0x005aaebc, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver4drawERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingE.clone.5
; demangled: glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**) [clone .clone.5]
; decoder-mode: arm
005aaebc  04 e0 2d e5                                      str lr, [sp, #-4]!
005aaec0  00 c0 90 e5                                      ldr ip, [r0]
005aaec4  14 d0 4d e2                                      sub sp, sp, #0x14
005aaec8  10 e0 8d e2                                      add lr, sp, #0x10
005aaecc  00 30 a0 e3                                      mov r3, #0
005aaed0  58 c0 9c e5                                      ldr ip, [ip, #0x58]
005aaed4  04 30 2e e5                                      str r3, [lr, #-4]!
005aaed8  00 e0 8d e5                                      str lr, [sp]
005aaedc  3c ff 2f e1                                      blx ip
005aaee0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005aaee4  00 00 50 e3                                      cmp r0, #0
005aaee8  00 00 00 0a                                      beq #0x5aaef0
005aaeec  a4 c9 f5 eb                                      bl #0x31d584
005aaef0  14 d0 8d e2                                      add sp, sp, #0x14
005aaef4  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x005aaf1c, declared_size=988, range_size=988, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriverC2EPNS_7IDeviceEPNS0_14IShaderManagerEPNS0_24CMaterialRendererManagerEPNS0_15CTextureManagerEPNS0_31CGlobalMaterialParameterManagerERKN5boost13intrusive_ptrINS0_6CLightEEE
; demangled: glitch::video::IVideoDriver::IVideoDriver(glitch::IDevice*, glitch::video::IShaderManager*, glitch::video::CMaterialRendererManager*, glitch::video::CTextureManager*, glitch::video::CGlobalMaterialParameterManager*, boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
005aaf1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005aaf20  b0 73 9f e5                                      ldr r7, [pc, #0x3b0]
005aaf24  b0 c3 9f e5                                      ldr ip, [pc, #0x3b0]
005aaf28  b0 b3 9f e5                                      ldr fp, [pc, #0x3b0]
005aaf2c  07 70 8f e0                                      add r7, pc, r7
005aaf30  0c c0 97 e7                                      ldr ip, [r7, ip]
005aaf34  0b e0 97 e7                                      ldr lr, [r7, fp]
005aaf38  00 40 a0 e1                                      mov r4, r0
005aaf3c  01 50 a0 e3                                      mov r5, #1
005aaf40  08 00 8c e2                                      add r0, ip, #8
005aaf44  04 c0 a0 e1                                      mov ip, r4
005aaf48  00 e0 9e e5                                      ldr lr, [lr]
005aaf4c  04 50 84 e5                                      str r5, [r4, #4]
005aaf50  08 00 8c e4                                      str r0, [ip], #8
005aaf54  47 df 4d e2                                      sub sp, sp, #0x11c
005aaf58  18 c0 84 e5                                      str ip, [r4, #0x18]
005aaf5c  1c c0 84 e5                                      str ip, [r4, #0x1c]
005aaf60  00 30 8d e5                                      str r3, [sp]
005aaf64  40 31 9d e5                                      ldr r3, [sp, #0x140]
005aaf68  0c 00 a0 e1                                      mov r0, ip
005aaf6c  02 80 a0 e1                                      mov r8, r2
005aaf70  14 e1 8d e5                                      str lr, [sp, #0x114]
005aaf74  01 60 a0 e1                                      mov r6, r1
005aaf78  48 a1 9d e5                                      ldr sl, [sp, #0x148]
005aaf7c  04 30 8d e5                                      str r3, [sp, #4]
005aaf80  44 91 9d e5                                      ldr sb, [sp, #0x144]
005aaf84  e3 ff ff eb                                      bl #0x5aaf18
005aaf88  18 20 94 e5                                      ldr r2, [r4, #0x18]
005aaf8c  00 50 a0 e3                                      mov r5, #0
005aaf90  20 30 84 e2                                      add r3, r4, #0x20
005aaf94  00 50 c2 e5                                      strb r5, [r2]
005aaf98  03 00 a0 e1                                      mov r0, r3
005aaf9c  30 30 84 e5                                      str r3, [r4, #0x30]
005aafa0  34 30 84 e5                                      str r3, [r4, #0x34]
005aafa4  db ff ff eb                                      bl #0x5aaf18
005aafa8  30 30 94 e5                                      ldr r3, [r4, #0x30]
005aafac  50 00 84 e2                                      add r0, r4, #0x50
005aafb0  00 50 c3 e5                                      strb r5, [r3]
005aafb4  00 30 e0 e3                                      mvn r3, #0
005aafb8  be 53 c4 e1                                      strh r5, [r4, #0x3e]
005aafbc  ba 53 c4 e1                                      strh r5, [r4, #0x3a]
005aafc0  bc 53 c4 e1                                      strh r5, [r4, #0x3c]
005aafc4  b8 33 c4 e1                                      strh r3, [r4, #0x38]
005aafc8  00 30 9a e5                                      ldr r3, [sl]
005aafcc  00 a0 a0 e3                                      mov sl, #0
005aafd0  05 00 53 e1                                      cmp r3, r5
005aafd4  40 30 84 e5                                      str r3, [r4, #0x40]
005aafd8  00 20 93 15                                      ldrne r2, [r3]
005aafdc  08 50 a0 e3                                      mov r5, #8
005aafe0  01 20 82 12                                      addne r2, r2, #1
005aafe4  00 20 83 15                                      strne r2, [r3]
005aafe8  44 a0 84 e5                                      str sl, [r4, #0x44]
005aafec  48 a0 84 e5                                      str sl, [r4, #0x48]
005aaff0  4c 50 84 e5                                      str r5, [r4, #0x4c]
005aaff4  61 be 04 eb                                      bl #0x6da980
005aaff8  10 30 a0 e3                                      mov r3, #0x10
005aaffc  88 30 84 e5                                      str r3, [r4, #0x88]
005ab000  01 3b a0 e3                                      mov r3, #0x400
005ab004  0c 31 84 e5                                      str r3, [r4, #0x10c]
005ab008  d4 60 84 e5                                      str r6, [r4, #0xd4]
005ab00c  00 30 9d e5                                      ldr r3, [sp]
005ab010  00 20 e0 e3                                      mvn r2, #0
005ab014  36 01 00 e3                                      movw r0, #0x136
005ab018  dc 30 84 e5                                      str r3, [r4, #0xdc]
005ab01c  04 30 9d e5                                      ldr r3, [sp, #4]
005ab020  53 1f 84 e2                                      add r1, r4, #0x14c
005ab024  f8 20 c4 e5                                      strb r2, [r4, #0xf8]
005ab028  e0 30 84 e5                                      str r3, [r4, #0xe0]
005ab02c  f9 20 c4 e5                                      strb r2, [r4, #0xf9]
005ab030  d8 80 84 e5                                      str r8, [r4, #0xd8]
005ab034  e4 90 84 e5                                      str sb, [r4, #0xe4]
005ab038  78 a0 84 e5                                      str sl, [r4, #0x78]
005ab03c  7c a0 84 e5                                      str sl, [r4, #0x7c]
005ab040  80 a0 84 e5                                      str sl, [r4, #0x80]
005ab044  84 a0 84 e5                                      str sl, [r4, #0x84]
005ab048  a0 a0 84 e5                                      str sl, [r4, #0xa0]
005ab04c  a4 a0 84 e5                                      str sl, [r4, #0xa4]
005ab050  a8 a0 84 e5                                      str sl, [r4, #0xa8]
005ab054  ac a0 84 e5                                      str sl, [r4, #0xac]
005ab058  b0 a0 84 e5                                      str sl, [r4, #0xb0]
005ab05c  b4 a0 84 e5                                      str sl, [r4, #0xb4]
005ab060  b8 a0 84 e5                                      str sl, [r4, #0xb8]
005ab064  bc a0 84 e5                                      str sl, [r4, #0xbc]
005ab068  c0 a0 84 e5                                      str sl, [r4, #0xc0]
005ab06c  c4 a0 84 e5                                      str sl, [r4, #0xc4]
005ab070  c8 a0 84 e5                                      str sl, [r4, #0xc8]
005ab074  cc a0 84 e5                                      str sl, [r4, #0xcc]
005ab078  d0 a0 84 e5                                      str sl, [r4, #0xd0]
005ab07c  e8 a0 84 e5                                      str sl, [r4, #0xe8]
005ab080  ec a0 84 e5                                      str sl, [r4, #0xec]
005ab084  f0 a0 84 e5                                      str sl, [r4, #0xf0]
005ab088  f4 a0 84 e5                                      str sl, [r4, #0xf4]
005ab08c  04 a1 84 e5                                      str sl, [r4, #0x104]
005ab090  08 a1 84 e5                                      str sl, [r4, #0x108]
005ab094  10 a1 84 e5                                      str sl, [r4, #0x110]
005ab098  14 a1 84 e5                                      str sl, [r4, #0x114]
005ab09c  b0 20 84 e1                                      strh r2, [r4, r0]
005ab0a0  40 20 a0 e3                                      mov r2, #0x40
005ab0a4  18 a1 84 e5                                      str sl, [r4, #0x118]
005ab0a8  20 a1 84 e5                                      str sl, [r4, #0x120]
005ab0ac  24 a1 84 e5                                      str sl, [r4, #0x124]
005ab0b0  28 a1 84 e5                                      str sl, [r4, #0x128]
005ab0b4  2c a1 84 e5                                      str sl, [r4, #0x12c]
005ab0b8  30 a1 84 e5                                      str sl, [r4, #0x130]
005ab0bc  35 a1 c4 e5                                      strb sl, [r4, #0x135]
005ab0c0  38 a1 84 e5                                      str sl, [r4, #0x138]
005ab0c4  3c a1 84 e5                                      str sl, [r4, #0x13c]
005ab0c8  40 a1 84 e5                                      str sl, [r4, #0x140]
005ab0cc  44 a1 84 e5                                      str sl, [r4, #0x144]
005ab0d0  48 a1 84 e5                                      str sl, [r4, #0x148]
005ab0d4  4c a1 84 e5                                      str sl, [r4, #0x14c]
005ab0d8  04 a0 81 e5                                      str sl, [r1, #4]
005ab0dc  9c 20 84 e5                                      str r2, [r4, #0x9c]
005ab0e0  5c a1 84 e5                                      str sl, [r4, #0x15c]
005ab0e4  54 a1 84 e5                                      str sl, [r4, #0x154]
005ab0e8  58 a1 84 e5                                      str sl, [r4, #0x158]
005ab0ec  08 00 a0 e1                                      mov r0, r8
005ab0f0  00 30 98 e5                                      ldr r3, [r8]
005ab0f4  04 10 a0 e1                                      mov r1, r4
005ab0f8  01 20 a0 e3                                      mov r2, #1
005ab0fc  fa 80 84 e2                                      add r8, r4, #0xfa
005ab100  0f e0 a0 e1                                      mov lr, pc
005ab104  08 f0 93 e5                                      ldr pc, [r3, #8]
005ab108  ff 10 a0 e3                                      mov r1, #0xff
005ab10c  05 20 a0 e1                                      mov r2, r5
005ab110  08 00 a0 e1                                      mov r0, r8
005ab114  d1 8c f5 eb                                      bl #0x30e460
005ab118  40 10 94 e5                                      ldr r1, [r4, #0x40]
005ab11c  0a 00 51 e1                                      cmp r1, sl
005ab120  43 00 00 0a                                      beq #0x5ab234
005ab124  dc 10 94 e5                                      ldr r1, [r4, #0xdc]
005ab128  00 00 51 e3                                      cmp r1, #0
005ab12c  54 00 00 0a                                      beq #0x5ab284
005ab130  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
005ab134  00 00 51 e3                                      cmp r1, #0
005ab138  5b 00 00 0a                                      beq #0x5ab2ac
005ab13c  e4 10 94 e5                                      ldr r1, [r4, #0xe4]
005ab140  00 00 51 e3                                      cmp r1, #0
005ab144  30 00 00 0a                                      beq #0x5ab20c
005ab148  94 11 9f e5                                      ldr r1, [pc, #0x194]
005ab14c  94 21 9f e5                                      ldr r2, [pc, #0x194]
005ab150  14 60 8d e2                                      add r6, sp, #0x14
005ab154  01 10 8f e0                                      add r1, pc, r1
005ab158  02 20 8f e0                                      add r2, pc, r2
005ab15c  06 00 a0 e1                                      mov r0, r6
005ab160  5f 8e f5 eb                                      bl #0x30eae4
005ab164  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005ab168  06 10 a0 e1                                      mov r1, r6
005ab16c  81 40 00 eb                                      bl #0x5bb378
005ab170  ff 3f 0f e3                                      movw r3, #0xffff
005ab174  03 00 50 e1                                      cmp r0, r3
005ab178  b8 03 c4 e1                                      strh r0, [r4, #0x38]
005ab17c  16 00 00 0a                                      beq #0x5ab1dc
005ab180  64 a1 9f e5                                      ldr sl, [pc, #0x164]
005ab184  64 91 9f e5                                      ldr sb, [pc, #0x164]
005ab188  00 50 a0 e3                                      mov r5, #0
005ab18c  0a a0 8f e0                                      add sl, pc, sl
005ab190  09 90 8f e0                                      add sb, pc, sb
005ab194  05 30 a0 e1                                      mov r3, r5
005ab198  0a 10 a0 e1                                      mov r1, sl
005ab19c  09 20 a0 e1                                      mov r2, sb
005ab1a0  06 00 a0 e1                                      mov r0, r6
005ab1a4  4e 8e f5 eb                                      bl #0x30eae4
005ab1a8  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005ab1ac  06 10 a0 e1                                      mov r1, r6
005ab1b0  70 40 00 eb                                      bl #0x5bb378
005ab1b4  01 50 85 e2                                      add r5, r5, #1
005ab1b8  04 00 55 e3                                      cmp r5, #4
005ab1bc  b2 00 c8 e0                                      strh r0, [r8], #2
005ab1c0  f3 ff ff 1a                                      bne #0x5ab194
005ab1c4  28 11 9f e5                                      ldr r1, [pc, #0x128]
005ab1c8  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005ab1cc  01 10 8f e0                                      add r1, pc, r1
005ab1d0  68 40 00 eb                                      bl #0x5bb378
005ab1d4  36 31 00 e3                                      movw r3, #0x136
005ab1d8  b3 00 84 e1                                      strh r0, [r4, r3]
005ab1dc  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
005ab1e0  0b 30 97 e7                                      ldr r3, [r7, fp]
005ab1e4  00 10 a0 e3                                      mov r1, #0
005ab1e8  08 11 84 e5                                      str r1, [r4, #0x108]
005ab1ec  04 21 84 e5                                      str r2, [r4, #0x104]
005ab1f0  14 21 9d e5                                      ldr r2, [sp, #0x114]
005ab1f4  00 30 93 e5                                      ldr r3, [r3]
005ab1f8  04 00 a0 e1                                      mov r0, r4
005ab1fc  03 00 52 e1                                      cmp r2, r3
005ab200  33 00 00 1a                                      bne #0x5ab2d4
005ab204  47 df 8d e2                                      add sp, sp, #0x11c
005ab208  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ab20c  3c 00 a0 e3                                      mov r0, #0x3c
005ab210  e5 23 fe eb                                      bl #0x5341ac
005ab214  04 10 a0 e1                                      mov r1, r4
005ab218  00 50 a0 e1                                      mov r5, r0
005ab21c  0b 3b 00 eb                                      bl #0x5b9e50
005ab220  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ab224  e4 50 84 e5                                      str r5, [r4, #0xe4]
005ab228  20 30 83 e3                                      orr r3, r3, #0x20
005ab22c  38 31 84 e5                                      str r3, [r4, #0x138]
005ab230  e9 ff ff ea                                      b #0x5ab1dc
005ab234  10 50 8d e2                                      add r5, sp, #0x10
005ab238  05 00 a0 e1                                      mov r0, r5
005ab23c  1d d3 ff eb                                      bl #0x59feb8
005ab240  10 30 9d e5                                      ldr r3, [sp, #0x10]
005ab244  46 0f 8d e2                                      add r0, sp, #0x118
005ab248  0c 30 8d e5                                      str r3, [sp, #0xc]
005ab24c  0a 00 53 e1                                      cmp r3, sl
005ab250  00 20 93 15                                      ldrne r2, [r3]
005ab254  01 20 82 12                                      addne r2, r2, #1
005ab258  00 20 83 15                                      strne r2, [r3]
005ab25c  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
005ab260  40 20 94 e5                                      ldr r2, [r4, #0x40]
005ab264  40 30 84 e5                                      str r3, [r4, #0x40]
005ab268  0c 21 20 e5                                      str r2, [r0, #-0x10c]!
005ab26c  55 fc ff eb                                      bl #0x5aa3c8
005ab270  05 00 a0 e1                                      mov r0, r5
005ab274  53 fc ff eb                                      bl #0x5aa3c8
005ab278  04 00 a0 e1                                      mov r0, r4
005ab27c  19 f6 ff eb                                      bl #0x5a8ae8
005ab280  a7 ff ff ea                                      b #0x5ab124
005ab284  98 00 a0 e3                                      mov r0, #0x98
005ab288  c7 23 fe eb                                      bl #0x5341ac
005ab28c  04 10 a0 e1                                      mov r1, r4
005ab290  00 50 a0 e1                                      mov r5, r0
005ab294  22 b7 00 eb                                      bl #0x5d8f24
005ab298  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ab29c  dc 50 84 e5                                      str r5, [r4, #0xdc]
005ab2a0  10 30 83 e3                                      orr r3, r3, #0x10
005ab2a4  38 31 84 e5                                      str r3, [r4, #0x138]
005ab2a8  a0 ff ff ea                                      b #0x5ab130
005ab2ac  78 00 a0 e3                                      mov r0, #0x78
005ab2b0  bd 23 fe eb                                      bl #0x5341ac
005ab2b4  04 10 a0 e1                                      mov r1, r4
005ab2b8  00 50 a0 e1                                      mov r5, r0
005ab2bc  ee fd 00 eb                                      bl #0x5eaa7c
005ab2c0  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ab2c4  e0 50 84 e5                                      str r5, [r4, #0xe0]
005ab2c8  20 30 83 e3                                      orr r3, r3, #0x20
005ab2cc  38 31 84 e5                                      str r3, [r4, #0x138]
005ab2d0  99 ff ff ea                                      b #0x5ab13c
005ab2d4  0d 8c f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005ab2d8  64 9b 3e 00 84 2f 00 00 ac 40 00 00 24 4e 33 00  .byte 0x64, 0x9b, 0x3e, 0x00, 0x84, 0x2f, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x24, 0x4e, 0x33, 0x00
005ab2e8  28 4e 33 00 04 4e 33 00 20 4e 33 00 cc 4d 33 00  .byte 0x28, 0x4e, 0x33, 0x00, 0x04, 0x4e, 0x33, 0x00, 0x20, 0x4e, 0x33, 0x00, 0xcc, 0x4d, 0x33, 0x00

; FUNCTION 0x005ab2f8, declared_size=988, range_size=988, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriverC1EPNS_7IDeviceEPNS0_14IShaderManagerEPNS0_24CMaterialRendererManagerEPNS0_15CTextureManagerEPNS0_31CGlobalMaterialParameterManagerERKN5boost13intrusive_ptrINS0_6CLightEEE
; demangled: glitch::video::IVideoDriver::IVideoDriver(glitch::IDevice*, glitch::video::IShaderManager*, glitch::video::CMaterialRendererManager*, glitch::video::CTextureManager*, glitch::video::CGlobalMaterialParameterManager*, boost::intrusive_ptr<glitch::video::CLight> const&)
; decoder-mode: arm
005ab2f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ab2fc  b0 73 9f e5                                      ldr r7, [pc, #0x3b0]
005ab300  b0 c3 9f e5                                      ldr ip, [pc, #0x3b0]
005ab304  b0 b3 9f e5                                      ldr fp, [pc, #0x3b0]
005ab308  07 70 8f e0                                      add r7, pc, r7
005ab30c  0c c0 97 e7                                      ldr ip, [r7, ip]
005ab310  0b e0 97 e7                                      ldr lr, [r7, fp]
005ab314  00 40 a0 e1                                      mov r4, r0
005ab318  01 50 a0 e3                                      mov r5, #1
005ab31c  08 00 8c e2                                      add r0, ip, #8
005ab320  04 c0 a0 e1                                      mov ip, r4
005ab324  00 e0 9e e5                                      ldr lr, [lr]
005ab328  04 50 84 e5                                      str r5, [r4, #4]
005ab32c  08 00 8c e4                                      str r0, [ip], #8
005ab330  47 df 4d e2                                      sub sp, sp, #0x11c
005ab334  18 c0 84 e5                                      str ip, [r4, #0x18]
005ab338  1c c0 84 e5                                      str ip, [r4, #0x1c]
005ab33c  00 30 8d e5                                      str r3, [sp]
005ab340  40 31 9d e5                                      ldr r3, [sp, #0x140]
005ab344  0c 00 a0 e1                                      mov r0, ip
005ab348  02 80 a0 e1                                      mov r8, r2
005ab34c  14 e1 8d e5                                      str lr, [sp, #0x114]
005ab350  01 60 a0 e1                                      mov r6, r1
005ab354  48 a1 9d e5                                      ldr sl, [sp, #0x148]
005ab358  04 30 8d e5                                      str r3, [sp, #4]
005ab35c  44 91 9d e5                                      ldr sb, [sp, #0x144]
005ab360  ec fe ff eb                                      bl #0x5aaf18
005ab364  18 20 94 e5                                      ldr r2, [r4, #0x18]
005ab368  00 50 a0 e3                                      mov r5, #0
005ab36c  20 30 84 e2                                      add r3, r4, #0x20
005ab370  00 50 c2 e5                                      strb r5, [r2]
005ab374  03 00 a0 e1                                      mov r0, r3
005ab378  30 30 84 e5                                      str r3, [r4, #0x30]
005ab37c  34 30 84 e5                                      str r3, [r4, #0x34]
005ab380  e4 fe ff eb                                      bl #0x5aaf18
005ab384  30 30 94 e5                                      ldr r3, [r4, #0x30]
005ab388  50 00 84 e2                                      add r0, r4, #0x50
005ab38c  00 50 c3 e5                                      strb r5, [r3]
005ab390  00 30 e0 e3                                      mvn r3, #0
005ab394  be 53 c4 e1                                      strh r5, [r4, #0x3e]
005ab398  ba 53 c4 e1                                      strh r5, [r4, #0x3a]
005ab39c  bc 53 c4 e1                                      strh r5, [r4, #0x3c]
005ab3a0  b8 33 c4 e1                                      strh r3, [r4, #0x38]
005ab3a4  00 30 9a e5                                      ldr r3, [sl]
005ab3a8  00 a0 a0 e3                                      mov sl, #0
005ab3ac  05 00 53 e1                                      cmp r3, r5
005ab3b0  40 30 84 e5                                      str r3, [r4, #0x40]
005ab3b4  00 20 93 15                                      ldrne r2, [r3]
005ab3b8  08 50 a0 e3                                      mov r5, #8
005ab3bc  01 20 82 12                                      addne r2, r2, #1
005ab3c0  00 20 83 15                                      strne r2, [r3]
005ab3c4  44 a0 84 e5                                      str sl, [r4, #0x44]
005ab3c8  48 a0 84 e5                                      str sl, [r4, #0x48]
005ab3cc  4c 50 84 e5                                      str r5, [r4, #0x4c]
005ab3d0  6a bd 04 eb                                      bl #0x6da980
005ab3d4  10 30 a0 e3                                      mov r3, #0x10
005ab3d8  88 30 84 e5                                      str r3, [r4, #0x88]
005ab3dc  01 3b a0 e3                                      mov r3, #0x400
005ab3e0  0c 31 84 e5                                      str r3, [r4, #0x10c]
005ab3e4  d4 60 84 e5                                      str r6, [r4, #0xd4]
005ab3e8  00 30 9d e5                                      ldr r3, [sp]
005ab3ec  00 20 e0 e3                                      mvn r2, #0
005ab3f0  36 01 00 e3                                      movw r0, #0x136
005ab3f4  dc 30 84 e5                                      str r3, [r4, #0xdc]
005ab3f8  04 30 9d e5                                      ldr r3, [sp, #4]
005ab3fc  53 1f 84 e2                                      add r1, r4, #0x14c
005ab400  f8 20 c4 e5                                      strb r2, [r4, #0xf8]
005ab404  e0 30 84 e5                                      str r3, [r4, #0xe0]
005ab408  f9 20 c4 e5                                      strb r2, [r4, #0xf9]
005ab40c  d8 80 84 e5                                      str r8, [r4, #0xd8]
005ab410  e4 90 84 e5                                      str sb, [r4, #0xe4]
005ab414  78 a0 84 e5                                      str sl, [r4, #0x78]
005ab418  7c a0 84 e5                                      str sl, [r4, #0x7c]
005ab41c  80 a0 84 e5                                      str sl, [r4, #0x80]
005ab420  84 a0 84 e5                                      str sl, [r4, #0x84]
005ab424  a0 a0 84 e5                                      str sl, [r4, #0xa0]
005ab428  a4 a0 84 e5                                      str sl, [r4, #0xa4]
005ab42c  a8 a0 84 e5                                      str sl, [r4, #0xa8]
005ab430  ac a0 84 e5                                      str sl, [r4, #0xac]
005ab434  b0 a0 84 e5                                      str sl, [r4, #0xb0]
005ab438  b4 a0 84 e5                                      str sl, [r4, #0xb4]
005ab43c  b8 a0 84 e5                                      str sl, [r4, #0xb8]
005ab440  bc a0 84 e5                                      str sl, [r4, #0xbc]
005ab444  c0 a0 84 e5                                      str sl, [r4, #0xc0]
005ab448  c4 a0 84 e5                                      str sl, [r4, #0xc4]
005ab44c  c8 a0 84 e5                                      str sl, [r4, #0xc8]
005ab450  cc a0 84 e5                                      str sl, [r4, #0xcc]
005ab454  d0 a0 84 e5                                      str sl, [r4, #0xd0]
005ab458  e8 a0 84 e5                                      str sl, [r4, #0xe8]
005ab45c  ec a0 84 e5                                      str sl, [r4, #0xec]
005ab460  f0 a0 84 e5                                      str sl, [r4, #0xf0]
005ab464  f4 a0 84 e5                                      str sl, [r4, #0xf4]
005ab468  04 a1 84 e5                                      str sl, [r4, #0x104]
005ab46c  08 a1 84 e5                                      str sl, [r4, #0x108]
005ab470  10 a1 84 e5                                      str sl, [r4, #0x110]
005ab474  14 a1 84 e5                                      str sl, [r4, #0x114]
005ab478  b0 20 84 e1                                      strh r2, [r4, r0]
005ab47c  40 20 a0 e3                                      mov r2, #0x40
005ab480  18 a1 84 e5                                      str sl, [r4, #0x118]
005ab484  20 a1 84 e5                                      str sl, [r4, #0x120]
005ab488  24 a1 84 e5                                      str sl, [r4, #0x124]
005ab48c  28 a1 84 e5                                      str sl, [r4, #0x128]
005ab490  2c a1 84 e5                                      str sl, [r4, #0x12c]
005ab494  30 a1 84 e5                                      str sl, [r4, #0x130]
005ab498  35 a1 c4 e5                                      strb sl, [r4, #0x135]
005ab49c  38 a1 84 e5                                      str sl, [r4, #0x138]
005ab4a0  3c a1 84 e5                                      str sl, [r4, #0x13c]
005ab4a4  40 a1 84 e5                                      str sl, [r4, #0x140]
005ab4a8  44 a1 84 e5                                      str sl, [r4, #0x144]
005ab4ac  48 a1 84 e5                                      str sl, [r4, #0x148]
005ab4b0  4c a1 84 e5                                      str sl, [r4, #0x14c]
005ab4b4  04 a0 81 e5                                      str sl, [r1, #4]
005ab4b8  9c 20 84 e5                                      str r2, [r4, #0x9c]
005ab4bc  5c a1 84 e5                                      str sl, [r4, #0x15c]
005ab4c0  54 a1 84 e5                                      str sl, [r4, #0x154]
005ab4c4  58 a1 84 e5                                      str sl, [r4, #0x158]
005ab4c8  08 00 a0 e1                                      mov r0, r8
005ab4cc  00 30 98 e5                                      ldr r3, [r8]
005ab4d0  04 10 a0 e1                                      mov r1, r4
005ab4d4  01 20 a0 e3                                      mov r2, #1
005ab4d8  fa 80 84 e2                                      add r8, r4, #0xfa
005ab4dc  0f e0 a0 e1                                      mov lr, pc
005ab4e0  08 f0 93 e5                                      ldr pc, [r3, #8]
005ab4e4  ff 10 a0 e3                                      mov r1, #0xff
005ab4e8  05 20 a0 e1                                      mov r2, r5
005ab4ec  08 00 a0 e1                                      mov r0, r8
005ab4f0  da 8b f5 eb                                      bl #0x30e460
005ab4f4  40 10 94 e5                                      ldr r1, [r4, #0x40]
005ab4f8  0a 00 51 e1                                      cmp r1, sl
005ab4fc  43 00 00 0a                                      beq #0x5ab610
005ab500  dc 10 94 e5                                      ldr r1, [r4, #0xdc]
005ab504  00 00 51 e3                                      cmp r1, #0
005ab508  54 00 00 0a                                      beq #0x5ab660
005ab50c  e0 10 94 e5                                      ldr r1, [r4, #0xe0]
005ab510  00 00 51 e3                                      cmp r1, #0
005ab514  5b 00 00 0a                                      beq #0x5ab688
005ab518  e4 10 94 e5                                      ldr r1, [r4, #0xe4]
005ab51c  00 00 51 e3                                      cmp r1, #0
005ab520  30 00 00 0a                                      beq #0x5ab5e8
005ab524  94 11 9f e5                                      ldr r1, [pc, #0x194]
005ab528  94 21 9f e5                                      ldr r2, [pc, #0x194]
005ab52c  14 60 8d e2                                      add r6, sp, #0x14
005ab530  01 10 8f e0                                      add r1, pc, r1
005ab534  02 20 8f e0                                      add r2, pc, r2
005ab538  06 00 a0 e1                                      mov r0, r6
005ab53c  68 8d f5 eb                                      bl #0x30eae4
005ab540  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005ab544  06 10 a0 e1                                      mov r1, r6
005ab548  8a 3f 00 eb                                      bl #0x5bb378
005ab54c  ff 3f 0f e3                                      movw r3, #0xffff
005ab550  03 00 50 e1                                      cmp r0, r3
005ab554  b8 03 c4 e1                                      strh r0, [r4, #0x38]
005ab558  16 00 00 0a                                      beq #0x5ab5b8
005ab55c  64 a1 9f e5                                      ldr sl, [pc, #0x164]
005ab560  64 91 9f e5                                      ldr sb, [pc, #0x164]
005ab564  00 50 a0 e3                                      mov r5, #0
005ab568  0a a0 8f e0                                      add sl, pc, sl
005ab56c  09 90 8f e0                                      add sb, pc, sb
005ab570  05 30 a0 e1                                      mov r3, r5
005ab574  0a 10 a0 e1                                      mov r1, sl
005ab578  09 20 a0 e1                                      mov r2, sb
005ab57c  06 00 a0 e1                                      mov r0, r6
005ab580  57 8d f5 eb                                      bl #0x30eae4
005ab584  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005ab588  06 10 a0 e1                                      mov r1, r6
005ab58c  79 3f 00 eb                                      bl #0x5bb378
005ab590  01 50 85 e2                                      add r5, r5, #1
005ab594  04 00 55 e3                                      cmp r5, #4
005ab598  b2 00 c8 e0                                      strh r0, [r8], #2
005ab59c  f3 ff ff 1a                                      bne #0x5ab570
005ab5a0  28 11 9f e5                                      ldr r1, [pc, #0x128]
005ab5a4  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005ab5a8  01 10 8f e0                                      add r1, pc, r1
005ab5ac  71 3f 00 eb                                      bl #0x5bb378
005ab5b0  36 31 00 e3                                      movw r3, #0x136
005ab5b4  b3 00 84 e1                                      strh r0, [r4, r3]
005ab5b8  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
005ab5bc  0b 30 97 e7                                      ldr r3, [r7, fp]
005ab5c0  00 10 a0 e3                                      mov r1, #0
005ab5c4  08 11 84 e5                                      str r1, [r4, #0x108]
005ab5c8  04 21 84 e5                                      str r2, [r4, #0x104]
005ab5cc  14 21 9d e5                                      ldr r2, [sp, #0x114]
005ab5d0  00 30 93 e5                                      ldr r3, [r3]
005ab5d4  04 00 a0 e1                                      mov r0, r4
005ab5d8  03 00 52 e1                                      cmp r2, r3
005ab5dc  33 00 00 1a                                      bne #0x5ab6b0
005ab5e0  47 df 8d e2                                      add sp, sp, #0x11c
005ab5e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ab5e8  3c 00 a0 e3                                      mov r0, #0x3c
005ab5ec  ee 22 fe eb                                      bl #0x5341ac
005ab5f0  04 10 a0 e1                                      mov r1, r4
005ab5f4  00 50 a0 e1                                      mov r5, r0
005ab5f8  14 3a 00 eb                                      bl #0x5b9e50
005ab5fc  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ab600  e4 50 84 e5                                      str r5, [r4, #0xe4]
005ab604  20 30 83 e3                                      orr r3, r3, #0x20
005ab608  38 31 84 e5                                      str r3, [r4, #0x138]
005ab60c  e9 ff ff ea                                      b #0x5ab5b8
005ab610  10 50 8d e2                                      add r5, sp, #0x10
005ab614  05 00 a0 e1                                      mov r0, r5
005ab618  26 d2 ff eb                                      bl #0x59feb8
005ab61c  10 30 9d e5                                      ldr r3, [sp, #0x10]
005ab620  46 0f 8d e2                                      add r0, sp, #0x118
005ab624  0c 30 8d e5                                      str r3, [sp, #0xc]
005ab628  0a 00 53 e1                                      cmp r3, sl
005ab62c  00 20 93 15                                      ldrne r2, [r3]
005ab630  01 20 82 12                                      addne r2, r2, #1
005ab634  00 20 83 15                                      strne r2, [r3]
005ab638  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
005ab63c  40 20 94 e5                                      ldr r2, [r4, #0x40]
005ab640  40 30 84 e5                                      str r3, [r4, #0x40]
005ab644  0c 21 20 e5                                      str r2, [r0, #-0x10c]!
005ab648  5e fb ff eb                                      bl #0x5aa3c8
005ab64c  05 00 a0 e1                                      mov r0, r5
005ab650  5c fb ff eb                                      bl #0x5aa3c8
005ab654  04 00 a0 e1                                      mov r0, r4
005ab658  22 f5 ff eb                                      bl #0x5a8ae8
005ab65c  a7 ff ff ea                                      b #0x5ab500
005ab660  98 00 a0 e3                                      mov r0, #0x98
005ab664  d0 22 fe eb                                      bl #0x5341ac
005ab668  04 10 a0 e1                                      mov r1, r4
005ab66c  00 50 a0 e1                                      mov r5, r0
005ab670  2b b6 00 eb                                      bl #0x5d8f24
005ab674  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ab678  dc 50 84 e5                                      str r5, [r4, #0xdc]
005ab67c  10 30 83 e3                                      orr r3, r3, #0x10
005ab680  38 31 84 e5                                      str r3, [r4, #0x138]
005ab684  a0 ff ff ea                                      b #0x5ab50c
005ab688  78 00 a0 e3                                      mov r0, #0x78
005ab68c  c6 22 fe eb                                      bl #0x5341ac
005ab690  04 10 a0 e1                                      mov r1, r4
005ab694  00 50 a0 e1                                      mov r5, r0
005ab698  f7 fc 00 eb                                      bl #0x5eaa7c
005ab69c  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ab6a0  e0 50 84 e5                                      str r5, [r4, #0xe0]
005ab6a4  20 30 83 e3                                      orr r3, r3, #0x20
005ab6a8  38 31 84 e5                                      str r3, [r4, #0x138]
005ab6ac  99 ff ff ea                                      b #0x5ab518
005ab6b0  16 8b f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005ab6b4  88 97 3e 00 84 2f 00 00 ac 40 00 00 48 4a 33 00  .byte 0x88, 0x97, 0x3e, 0x00, 0x84, 0x2f, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x4a, 0x33, 0x00
005ab6c4  4c 4a 33 00 28 4a 33 00 44 4a 33 00 f0 49 33 00  .byte 0x4c, 0x4a, 0x33, 0x00, 0x28, 0x4a, 0x33, 0x00, 0x44, 0x4a, 0x33, 0x00, 0xf0, 0x49, 0x33, 0x00

; FUNCTION 0x005ab6d4, declared_size=308, range_size=308, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver16pushRenderTargetERKN5boost13intrusive_ptrINS0_13IRenderTargetEEE
; demangled: glitch::video::IVideoDriver::pushRenderTarget(boost::intrusive_ptr<glitch::video::IRenderTarget> const&)
; decoder-mode: arm
005ab6d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005ab6d8  38 21 90 e5                                      ldr r2, [r0, #0x138]
005ab6dc  cc 30 90 e5                                      ldr r3, [r0, #0xcc]
005ab6e0  d0 60 90 e5                                      ldr r6, [r0, #0xd0]
005ab6e4  04 20 82 e3                                      orr r2, r2, #4
005ab6e8  00 40 a0 e1                                      mov r4, r0
005ab6ec  06 00 53 e1                                      cmp r3, r6
005ab6f0  38 21 80 e5                                      str r2, [r0, #0x138]
005ab6f4  01 50 a0 e1                                      mov r5, r1
005ab6f8  11 00 00 0a                                      beq #0x5ab744
005ab6fc  00 20 91 e5                                      ldr r2, [r1]
005ab700  00 20 83 e5                                      str r2, [r3]
005ab704  00 00 52 e3                                      cmp r2, #0
005ab708  04 30 92 15                                      ldrne r3, [r2, #4]
005ab70c  01 30 83 12                                      addne r3, r3, #1
005ab710  04 30 82 15                                      strne r3, [r2, #4]
005ab714  cc 30 90 e5                                      ldr r3, [r0, #0xcc]
005ab718  04 30 83 e2                                      add r3, r3, #4
005ab71c  cc 30 80 e5                                      str r3, [r0, #0xcc]
005ab720  00 30 95 e5                                      ldr r3, [r5]
005ab724  03 00 a0 e1                                      mov r0, r3
005ab728  00 30 93 e5                                      ldr r3, [r3]
005ab72c  0f e0 a0 e1                                      mov lr, pc
005ab730  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005ab734  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ab738  04 30 c3 e3                                      bic r3, r3, #4
005ab73c  38 31 84 e5                                      str r3, [r4, #0x138]
005ab740  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005ab744  c8 30 90 e5                                      ldr r3, [r0, #0xc8]
005ab748  06 30 63 e0                                      rsb r3, r3, r6
005ab74c  43 31 a0 e1                                      asr r3, r3, #2
005ab750  01 00 53 e3                                      cmp r3, #1
005ab754  03 70 83 20                                      addhs r7, r3, r3
005ab758  01 70 83 32                                      addlo r7, r3, #1
005ab75c  07 01 77 e3                                      cmn r7, #0xc0000001
005ab760  24 00 00 9a                                      bls #0x5ab7f8
005ab764  03 70 e0 e3                                      mvn r7, #3
005ab768  07 00 a0 e1                                      mov r0, r7
005ab76c  00 10 a0 e3                                      mov r1, #0
005ab770  7c 93 f5 eb                                      bl #0x310568
005ab774  c8 c0 94 e5                                      ldr ip, [r4, #0xc8]
005ab778  00 80 a0 e1                                      mov r8, r0
005ab77c  06 60 6c e0                                      rsb r6, ip, r6
005ab780  46 61 a0 e1                                      asr r6, r6, #2
005ab784  00 00 56 e3                                      cmp r6, #0
005ab788  00 60 a0 d1                                      movle r6, r0
005ab78c  0b 00 00 da                                      ble #0x5ab7c0
005ab790  06 10 a0 e1                                      mov r1, r6
005ab794  00 20 a0 e3                                      mov r2, #0
005ab798  02 30 9c e7                                      ldr r3, [ip, r2]
005ab79c  00 00 53 e3                                      cmp r3, #0
005ab7a0  02 30 88 e7                                      str r3, [r8, r2]
005ab7a4  04 00 93 15                                      ldrne r0, [r3, #4]
005ab7a8  04 20 82 e2                                      add r2, r2, #4
005ab7ac  01 00 80 12                                      addne r0, r0, #1
005ab7b0  04 00 83 15                                      strne r0, [r3, #4]
005ab7b4  01 10 51 e2                                      subs r1, r1, #1
005ab7b8  f6 ff ff 1a                                      bne #0x5ab798
005ab7bc  06 61 88 e0                                      add r6, r8, r6, lsl #2
005ab7c0  00 30 95 e5                                      ldr r3, [r5]
005ab7c4  c8 00 84 e2                                      add r0, r4, #0xc8
005ab7c8  07 70 88 e0                                      add r7, r8, r7
005ab7cc  00 00 53 e3                                      cmp r3, #0
005ab7d0  00 30 86 e5                                      str r3, [r6]
005ab7d4  04 20 93 15                                      ldrne r2, [r3, #4]
005ab7d8  04 60 86 e2                                      add r6, r6, #4
005ab7dc  01 20 82 12                                      addne r2, r2, #1
005ab7e0  04 20 83 15                                      strne r2, [r3, #4]
005ab7e4  d3 fa ff eb                                      bl #0x5aa338
005ab7e8  cc 60 84 e5                                      str r6, [r4, #0xcc]
005ab7ec  d0 70 84 e5                                      str r7, [r4, #0xd0]
005ab7f0  c8 80 84 e5                                      str r8, [r4, #0xc8]
005ab7f4  c9 ff ff ea                                      b #0x5ab720
005ab7f8  07 00 53 e1                                      cmp r3, r7
005ab7fc  07 71 a0 91                                      lslls r7, r7, #2
005ab800  d8 ff ff 9a                                      bls #0x5ab768
005ab804  d6 ff ff ea                                      b #0x5ab764

; FUNCTION 0x005ac158, declared_size=336, range_size=336, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver20releaseProcessBufferENS0_21E_PROCESS_BUFFER_TYPEERKN5boost13intrusive_ptrINS0_14CVertexStreamsEEEjjPNS0_14CDriverBindingE
; demangled: glitch::video::IVideoDriver::releaseProcessBuffer(glitch::video::E_PROCESS_BUFFER_TYPE, boost::intrusive_ptr<glitch::video::CVertexStreams> const&, unsigned int, unsigned int, glitch::video::CDriverBinding*)
; decoder-mode: arm
005ac158  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005ac15c  00 60 51 e2                                      subs r6, r1, #0
005ac160  20 d0 4d e2                                      sub sp, sp, #0x20
005ac164  00 40 a0 e1                                      mov r4, r0
005ac168  02 50 a0 e1                                      mov r5, r2
005ac16c  03 80 a0 e1                                      mov r8, r3
005ac170  40 a0 9d e5                                      ldr sl, [sp, #0x40]
005ac174  44 90 9d e5                                      ldr sb, [sp, #0x44]
005ac178  1f 00 00 1a                                      bne #0x5ac1fc
005ac17c  1c 70 8d e2                                      add r7, sp, #0x1c
005ac180  03 10 a0 e1                                      mov r1, r3
005ac184  07 00 a0 e1                                      mov r0, r7
005ac188  18 c0 8d e2                                      add ip, sp, #0x18
005ac18c  0a 20 a0 e1                                      mov r2, sl
005ac190  05 30 a0 e1                                      mov r3, r5
005ac194  18 60 8d e5                                      str r6, [sp, #0x18]
005ac198  00 c0 8d e5                                      str ip, [sp]
005ac19c  a4 fe ff eb                                      bl #0x5abc34
005ac1a0  18 00 9d e5                                      ldr r0, [sp, #0x18]
005ac1a4  00 00 50 e3                                      cmp r0, #0
005ac1a8  00 00 00 0a                                      beq #0x5ac1b0
005ac1ac  f4 c4 f5 eb                                      bl #0x31d584
005ac1b0  c0 10 94 e5                                      ldr r1, [r4, #0xc0]
005ac1b4  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
005ac1b8  03 00 51 e1                                      cmp r1, r3
005ac1bc  35 00 00 0a                                      beq #0x5ac298
005ac1c0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005ac1c4  00 00 53 e3                                      cmp r3, #0
005ac1c8  00 30 81 e5                                      str r3, [r1]
005ac1cc  04 20 93 15                                      ldrne r2, [r3, #4]
005ac1d0  01 20 82 12                                      addne r2, r2, #1
005ac1d4  04 20 83 15                                      strne r2, [r3, #4]
005ac1d8  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
005ac1dc  04 30 83 e2                                      add r3, r3, #4
005ac1e0  c0 30 84 e5                                      str r3, [r4, #0xc0]
005ac1e4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005ac1e8  00 00 50 e3                                      cmp r0, #0
005ac1ec  00 00 00 0a                                      beq #0x5ac1f4
005ac1f0  e3 c4 f5 eb                                      bl #0x31d584
005ac1f4  20 d0 8d e2                                      add sp, sp, #0x20
005ac1f8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005ac1fc  01 00 56 e3                                      cmp r6, #1
005ac200  fb ff ff 1a                                      bne #0x5ac1f4
005ac204  00 70 92 e5                                      ldr r7, [r2]
005ac208  00 00 57 e3                                      cmp r7, #0
005ac20c  13 00 00 0a                                      beq #0x5ac260
005ac210  14 60 8d e2                                      add r6, sp, #0x14
005ac214  00 10 a0 e1                                      mov r1, r0
005ac218  04 20 89 e2                                      add r2, sb, #4
005ac21c  06 00 a0 e1                                      mov r0, r6
005ac220  fc f7 ff eb                                      bl #0x5aa218
005ac224  10 00 8d e2                                      add r0, sp, #0x10
005ac228  08 10 a0 e1                                      mov r1, r8
005ac22c  0a 20 a0 e1                                      mov r2, sl
005ac230  05 30 a0 e1                                      mov r3, r5
005ac234  00 60 8d e5                                      str r6, [sp]
005ac238  97 fe ff eb                                      bl #0x5abc9c
005ac23c  10 00 9d e5                                      ldr r0, [sp, #0x10]
005ac240  00 00 50 e3                                      cmp r0, #0
005ac244  00 00 00 0a                                      beq #0x5ac24c
005ac248  cd c4 f5 eb                                      bl #0x31d584
005ac24c  14 00 9d e5                                      ldr r0, [sp, #0x14]
005ac250  00 00 50 e3                                      cmp r0, #0
005ac254  e6 ff ff 0a                                      beq #0x5ac1f4
005ac258  c9 c4 f5 eb                                      bl #0x31d584
005ac25c  e4 ff ff ea                                      b #0x5ac1f4
005ac260  00 10 a0 e1                                      mov r1, r0
005ac264  04 20 89 e2                                      add r2, sb, #4
005ac268  0c 00 8d e2                                      add r0, sp, #0xc
005ac26c  e9 f7 ff eb                                      bl #0x5aa218
005ac270  04 00 99 e5                                      ldr r0, [sb, #4]
005ac274  07 10 a0 e1                                      mov r1, r7
005ac278  06 30 a0 e1                                      mov r3, r6
005ac27c  07 20 a0 e1                                      mov r2, r7
005ac280  8b d6 ff eb                                      bl #0x5a1cb4
005ac284  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005ac288  00 00 50 e3                                      cmp r0, #0
005ac28c  d8 ff ff 0a                                      beq #0x5ac1f4
005ac290  bb c4 f5 eb                                      bl #0x31d584
005ac294  d6 ff ff ea                                      b #0x5ac1f4
005ac298  bc 00 84 e2                                      add r0, r4, #0xbc
005ac29c  07 20 a0 e1                                      mov r2, r7
005ac2a0  bf fd ff eb                                      bl #0x5ab9a4
005ac2a4  ce ff ff ea                                      b #0x5ac1e4

; FUNCTION 0x005ac2a8, declared_size=392, range_size=392, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver11draw3DLinesEPNS_4core8vector3dIfEEPtPNS0_6SColorEjj
; demangled: glitch::video::IVideoDriver::draw3DLines(glitch::core::vector3d<float>*, unsigned short*, glitch::video::SColor*, unsigned int, unsigned int)
; decoder-mode: arm
005ac2a8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005ac2ac  20 d0 4d e2                                      sub sp, sp, #0x20
005ac2b0  38 50 9d e5                                      ldr r5, [sp, #0x38]
005ac2b4  00 40 a0 e1                                      mov r4, r0
005ac2b8  01 00 a0 e1                                      mov r0, r1
005ac2bc  0c 10 a0 e3                                      mov r1, #0xc
005ac2c0  02 60 a0 e1                                      mov r6, r2
005ac2c4  03 70 a0 e1                                      mov r7, r3
005ac2c8  00 20 a0 e1                                      mov r2, r0
005ac2cc  00 30 a0 e3                                      mov r3, #0
005ac2d0  91 05 01 e0                                      mul r1, r1, r5
005ac2d4  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
005ac2d8  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
005ac2dc  74 d6 ff eb                                      bl #0x5a1cb4
005ac2e0  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
005ac2e4  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
005ac2e8  04 00 52 e3                                      cmp r2, #4
005ac2ec  04 00 00 0a                                      beq #0x5ac304
005ac2f0  08 20 93 e5                                      ldr r2, [r3, #8]
005ac2f4  00 00 52 e3                                      cmp r2, #0
005ac2f8  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
005ac2fc  02 20 82 13                                      orrne r2, r2, #2
005ac300  12 20 c3 15                                      strbne r2, [r3, #0x12]
005ac304  07 20 a0 e1                                      mov r2, r7
005ac308  00 30 a0 e3                                      mov r3, #0
005ac30c  b4 00 94 e5                                      ldr r0, [r4, #0xb4]
005ac310  05 11 a0 e1                                      lsl r1, r5, #2
005ac314  66 d6 ff eb                                      bl #0x5a1cb4
005ac318  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
005ac31c  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
005ac320  04 00 52 e3                                      cmp r2, #4
005ac324  04 00 00 0a                                      beq #0x5ac33c
005ac328  08 20 93 e5                                      ldr r2, [r3, #8]
005ac32c  00 00 52 e3                                      cmp r2, #0
005ac330  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
005ac334  02 20 82 13                                      orrne r2, r2, #2
005ac338  12 20 c3 15                                      strbne r2, [r3, #0x12]
005ac33c  06 20 a0 e1                                      mov r2, r6
005ac340  00 30 a0 e3                                      mov r3, #0
005ac344  b8 00 94 e5                                      ldr r0, [r4, #0xb8]
005ac348  08 11 a0 e1                                      lsl r1, r8, #2
005ac34c  58 d6 ff eb                                      bl #0x5a1cb4
005ac350  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
005ac354  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
005ac358  04 00 52 e3                                      cmp r2, #4
005ac35c  04 00 00 0a                                      beq #0x5ac374
005ac360  08 20 93 e5                                      ldr r2, [r3, #8]
005ac364  00 00 52 e3                                      cmp r2, #0
005ac368  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
005ac36c  02 20 82 13                                      orrne r2, r2, #2
005ac370  12 20 c3 15                                      strbne r2, [r3, #0x12]
005ac374  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
005ac378  04 00 a0 e1                                      mov r0, r4
005ac37c  88 80 a0 e1                                      lsl r8, r8, #1
005ac380  08 50 83 e5                                      str r5, [r3, #8]
005ac384  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
005ac388  1c 10 8d e2                                      add r1, sp, #0x1c
005ac38c  1c 30 8d e5                                      str r3, [sp, #0x1c]
005ac390  00 00 53 e3                                      cmp r3, #0
005ac394  00 20 93 15                                      ldrne r2, [r3]
005ac398  01 20 82 12                                      addne r2, r2, #1
005ac39c  00 20 83 15                                      strne r2, [r3]
005ac3a0  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
005ac3a4  00 00 53 e3                                      cmp r3, #0
005ac3a8  04 30 8d e5                                      str r3, [sp, #4]
005ac3ac  04 20 93 15                                      ldrne r2, [r3, #4]
005ac3b0  01 20 82 12                                      addne r2, r2, #1
005ac3b4  04 20 83 15                                      strne r2, [r3, #4]
005ac3b8  00 30 a0 e3                                      mov r3, #0
005ac3bc  10 30 8d e5                                      str r3, [sp, #0x10]
005ac3c0  08 30 8d e5                                      str r3, [sp, #8]
005ac3c4  01 30 a0 e3                                      mov r3, #1
005ac3c8  b8 31 cd e1                                      strh r3, [sp, #0x18]
005ac3cc  04 20 8d e2                                      add r2, sp, #4
005ac3d0  03 30 a0 e3                                      mov r3, #3
005ac3d4  0c 80 8d e5                                      str r8, [sp, #0xc]
005ac3d8  14 50 8d e5                                      str r5, [sp, #0x14]
005ac3dc  ba 31 cd e1                                      strh r3, [sp, #0x1a]
005ac3e0  b5 fa ff eb                                      bl #0x5aaebc
005ac3e4  04 00 9d e5                                      ldr r0, [sp, #4]
005ac3e8  00 00 50 e3                                      cmp r0, #0
005ac3ec  00 00 00 0a                                      beq #0x5ac3f4
005ac3f0  63 c4 f5 eb                                      bl #0x31d584
005ac3f4  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
005ac3f8  00 00 54 e3                                      cmp r4, #0
005ac3fc  04 00 00 0a                                      beq #0x5ac414
005ac400  00 30 94 e5                                      ldr r3, [r4]
005ac404  01 30 43 e2                                      sub r3, r3, #1
005ac408  00 00 53 e3                                      cmp r3, #0
005ac40c  00 30 84 e5                                      str r3, [r4]
005ac410  01 00 00 0a                                      beq #0x5ac41c
005ac414  20 d0 8d e2                                      add sp, sp, #0x20
005ac418  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005ac41c  04 00 a0 e1                                      mov r0, r4
005ac420  7d d1 ff eb                                      bl #0x5a0a1c
005ac424  04 00 a0 e1                                      mov r0, r4
005ac428  a0 87 f5 eb                                      bl #0x30e2b0
005ac42c  f8 ff ff ea                                      b #0x5ac414

; FUNCTION 0x005ac430, declared_size=392, range_size=392, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver10draw3DLineERKNS_4core8vector3dIfEES6_NS0_6SColorE
; demangled: glitch::video::IVideoDriver::draw3DLine(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::video::SColor)
; decoder-mode: arm
005ac430  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ac434  00 90 91 e5                                      ldr sb, [r1]
005ac438  08 b0 91 e5                                      ldr fp, [r1, #8]
005ac43c  04 a0 91 e5                                      ldr sl, [r1, #4]
005ac440  08 10 92 e5                                      ldr r1, [r2, #8]
005ac444  54 d0 4d e2                                      sub sp, sp, #0x54
005ac448  00 c0 a0 e3                                      mov ip, #0
005ac44c  08 10 8d e5                                      str r1, [sp, #8]
005ac450  00 e0 92 e5                                      ldr lr, [r2]
005ac454  1c 10 8d e2                                      add r1, sp, #0x1c
005ac458  23 7c a0 e1                                      lsr r7, r3, #0x18
005ac45c  00 e0 8d e5                                      str lr, [sp]
005ac460  04 20 92 e5                                      ldr r2, [r2, #4]
005ac464  73 80 ef e6                                      uxtb r8, r3
005ac468  0c 30 8d e5                                      str r3, [sp, #0xc]
005ac46c  53 54 e7 e7                                      ubfx r5, r3, #8, #8
005ac470  04 c0 81 e4                                      str ip, [r1], #4
005ac474  53 68 e7 e7                                      ubfx r6, r3, #0x10, #8
005ac478  2c e0 8d e2                                      add lr, sp, #0x2c
005ac47c  00 c0 81 e5                                      str ip, [r1]
005ac480  04 20 8d e5                                      str r2, [sp, #4]
005ac484  18 90 8d e5                                      str sb, [sp, #0x18]
005ac488  1c a0 8d e5                                      str sl, [sp, #0x1c]
005ac48c  20 b0 8d e5                                      str fp, [sp, #0x20]
005ac490  17 70 cd e5                                      strb r7, [sp, #0x17]
005ac494  16 60 cd e5                                      strb r6, [sp, #0x16]
005ac498  15 50 cd e5                                      strb r5, [sp, #0x15]
005ac49c  14 80 cd e5                                      strb r8, [sp, #0x14]
005ac4a0  04 c0 8e e4                                      str ip, [lr], #4
005ac4a4  0c 30 a0 e1                                      mov r3, ip
005ac4a8  00 40 a0 e1                                      mov r4, r0
005ac4ac  b0 00 90 e5                                      ldr r0, [r0, #0xb0]
005ac4b0  00 c0 8e e5                                      str ip, [lr]
005ac4b4  00 c0 9d e5                                      ldr ip, [sp]
005ac4b8  04 e0 9d e5                                      ldr lr, [sp, #4]
005ac4bc  14 20 8d e2                                      add r2, sp, #0x14
005ac4c0  28 c0 8d e5                                      str ip, [sp, #0x28]
005ac4c4  08 c0 9d e5                                      ldr ip, [sp, #8]
005ac4c8  20 10 a0 e3                                      mov r1, #0x20
005ac4cc  27 70 cd e5                                      strb r7, [sp, #0x27]
005ac4d0  26 60 cd e5                                      strb r6, [sp, #0x26]
005ac4d4  25 50 cd e5                                      strb r5, [sp, #0x25]
005ac4d8  24 80 cd e5                                      strb r8, [sp, #0x24]
005ac4dc  2c e0 8d e5                                      str lr, [sp, #0x2c]
005ac4e0  30 c0 8d e5                                      str ip, [sp, #0x30]
005ac4e4  f2 d5 ff eb                                      bl #0x5a1cb4
005ac4e8  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
005ac4ec  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
005ac4f0  04 00 52 e3                                      cmp r2, #4
005ac4f4  04 00 00 0a                                      beq #0x5ac50c
005ac4f8  08 20 93 e5                                      ldr r2, [r3, #8]
005ac4fc  00 00 52 e3                                      cmp r2, #0
005ac500  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
005ac504  02 20 82 13                                      orrne r2, r2, #2
005ac508  12 20 c3 15                                      strbne r2, [r3, #0x12]
005ac50c  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
005ac510  02 20 a0 e3                                      mov r2, #2
005ac514  02 c0 a0 e3                                      mov ip, #2
005ac518  08 20 83 e5                                      str r2, [r3, #8]
005ac51c  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
005ac520  04 00 a0 e1                                      mov r0, r4
005ac524  ff e0 a0 e3                                      mov lr, #0xff
005ac528  00 00 53 e3                                      cmp r3, #0
005ac52c  4c 30 8d e5                                      str r3, [sp, #0x4c]
005ac530  00 20 93 15                                      ldrne r2, [r3]
005ac534  4c 10 8d e2                                      add r1, sp, #0x4c
005ac538  01 20 82 12                                      addne r2, r2, #1
005ac53c  00 20 83 15                                      strne r2, [r3]
005ac540  00 30 a0 e3                                      mov r3, #0
005ac544  40 30 8d e5                                      str r3, [sp, #0x40]
005ac548  34 30 8d e5                                      str r3, [sp, #0x34]
005ac54c  38 30 8d e5                                      str r3, [sp, #0x38]
005ac550  34 20 8d e2                                      add r2, sp, #0x34
005ac554  03 30 a0 e3                                      mov r3, #3
005ac558  44 c0 8d e5                                      str ip, [sp, #0x44]
005ac55c  3c c0 8d e5                                      str ip, [sp, #0x3c]
005ac560  b8 e4 cd e1                                      strh lr, [sp, #0x48]
005ac564  ba 34 cd e1                                      strh r3, [sp, #0x4a]
005ac568  53 fa ff eb                                      bl #0x5aaebc
005ac56c  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ac570  00 00 50 e3                                      cmp r0, #0
005ac574  00 00 00 0a                                      beq #0x5ac57c
005ac578  01 c4 f5 eb                                      bl #0x31d584
005ac57c  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
005ac580  00 00 54 e3                                      cmp r4, #0
005ac584  04 00 00 0a                                      beq #0x5ac59c
005ac588  00 30 94 e5                                      ldr r3, [r4]
005ac58c  01 30 43 e2                                      sub r3, r3, #1
005ac590  00 00 53 e3                                      cmp r3, #0
005ac594  00 30 84 e5                                      str r3, [r4]
005ac598  01 00 00 0a                                      beq #0x5ac5a4
005ac59c  54 d0 8d e2                                      add sp, sp, #0x54
005ac5a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ac5a4  04 00 a0 e1                                      mov r0, r4
005ac5a8  1b d1 ff eb                                      bl #0x5a0a1c
005ac5ac  04 00 a0 e1                                      mov r0, r4
005ac5b0  3e 87 f5 eb                                      bl #0x30e2b0
005ac5b4  f8 ff ff ea                                      b #0x5ac59c

; FUNCTION 0x005ac5b8, declared_size=516, range_size=516, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver11draw2DLinesEPNS_4core10position2dIiEEPtPNS0_6SColorEjj
; demangled: glitch::video::IVideoDriver::draw2DLines(glitch::core::position2d<int>*, unsigned short*, glitch::video::SColor*, unsigned int, unsigned int)
; decoder-mode: arm
005ac5b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ac5bc  34 d0 4d e2                                      sub sp, sp, #0x34
005ac5c0  58 50 9d e5                                      ldr r5, [sp, #0x58]
005ac5c4  00 60 a0 e1                                      mov r6, r0
005ac5c8  0c 00 a0 e3                                      mov r0, #0xc
005ac5cc  90 05 00 e0                                      mul r0, r0, r5
005ac5d0  01 70 a0 e1                                      mov r7, r1
005ac5d4  0d 00 8d e8                                      stm sp, {r0, r2, r3}
005ac5d8  05 20 fe eb                                      bl #0x5345f4
005ac5dc  00 00 55 e3                                      cmp r5, #0
005ac5e0  00 40 a0 e1                                      mov r4, r0
005ac5e4  17 00 00 0a                                      beq #0x5ac648
005ac5e8  00 b0 a0 e3                                      mov fp, #0
005ac5ec  0c 60 8d e5                                      str r6, [sp, #0xc]
005ac5f0  0b 80 a0 e1                                      mov r8, fp
005ac5f4  05 60 a0 e1                                      mov r6, r5
005ac5f8  0b 90 a0 e1                                      mov sb, fp
005ac5fc  07 50 a0 e1                                      mov r5, r7
005ac600  05 a0 a0 e1                                      mov sl, r5
005ac604  0b 00 ba e7                                      ldr r0, [sl, fp]!
005ac608  d5 88 f5 eb                                      bl #0x30e964
005ac60c  00 70 a0 e1                                      mov r7, r0
005ac610  04 00 9a e5                                      ldr r0, [sl, #4]
005ac614  d2 88 f5 eb                                      bl #0x30e964
005ac618  01 90 89 e2                                      add sb, sb, #1
005ac61c  08 30 84 e0                                      add r3, r4, r8
005ac620  00 10 a0 e3                                      mov r1, #0
005ac624  06 00 59 e1                                      cmp sb, r6
005ac628  08 70 84 e7                                      str r7, [r4, r8]
005ac62c  08 b0 8b e2                                      add fp, fp, #8
005ac630  04 00 83 e5                                      str r0, [r3, #4]
005ac634  08 10 83 e5                                      str r1, [r3, #8]
005ac638  0c 80 88 e2                                      add r8, r8, #0xc
005ac63c  ef ff ff 1a                                      bne #0x5ac600
005ac640  06 50 a0 e1                                      mov r5, r6
005ac644  0c 60 9d e5                                      ldr r6, [sp, #0xc]
005ac648  04 20 a0 e1                                      mov r2, r4
005ac64c  00 30 a0 e3                                      mov r3, #0
005ac650  00 10 9d e5                                      ldr r1, [sp]
005ac654  b0 00 96 e5                                      ldr r0, [r6, #0xb0]
005ac658  95 d5 ff eb                                      bl #0x5a1cb4
005ac65c  b0 30 96 e5                                      ldr r3, [r6, #0xb0]
005ac660  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
005ac664  04 00 52 e3                                      cmp r2, #4
005ac668  04 00 00 0a                                      beq #0x5ac680
005ac66c  08 20 93 e5                                      ldr r2, [r3, #8]
005ac670  00 00 52 e3                                      cmp r2, #0
005ac674  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
005ac678  02 20 82 13                                      orrne r2, r2, #2
005ac67c  12 20 c3 15                                      strbne r2, [r3, #0x12]
005ac680  08 20 9d e5                                      ldr r2, [sp, #8]
005ac684  00 30 a0 e3                                      mov r3, #0
005ac688  05 11 a0 e1                                      lsl r1, r5, #2
005ac68c  b4 00 96 e5                                      ldr r0, [r6, #0xb4]
005ac690  87 d5 ff eb                                      bl #0x5a1cb4
005ac694  b4 30 96 e5                                      ldr r3, [r6, #0xb4]
005ac698  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
005ac69c  04 00 52 e3                                      cmp r2, #4
005ac6a0  04 00 00 0a                                      beq #0x5ac6b8
005ac6a4  08 20 93 e5                                      ldr r2, [r3, #8]
005ac6a8  00 00 52 e3                                      cmp r2, #0
005ac6ac  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
005ac6b0  02 20 82 13                                      orrne r2, r2, #2
005ac6b4  12 20 c3 15                                      strbne r2, [r3, #0x12]
005ac6b8  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005ac6bc  04 20 9d e5                                      ldr r2, [sp, #4]
005ac6c0  b8 00 96 e5                                      ldr r0, [r6, #0xb8]
005ac6c4  03 11 a0 e1                                      lsl r1, r3, #2
005ac6c8  00 30 a0 e3                                      mov r3, #0
005ac6cc  78 d5 ff eb                                      bl #0x5a1cb4
005ac6d0  b8 30 96 e5                                      ldr r3, [r6, #0xb8]
005ac6d4  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
005ac6d8  04 00 52 e3                                      cmp r2, #4
005ac6dc  04 00 00 0a                                      beq #0x5ac6f4
005ac6e0  08 20 93 e5                                      ldr r2, [r3, #8]
005ac6e4  00 00 52 e3                                      cmp r2, #0
005ac6e8  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
005ac6ec  02 20 82 13                                      orrne r2, r2, #2
005ac6f0  12 20 c3 15                                      strbne r2, [r3, #0x12]
005ac6f4  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
005ac6f8  a8 20 96 e5                                      ldr r2, [r6, #0xa8]
005ac6fc  00 c0 a0 e3                                      mov ip, #0
005ac700  81 30 a0 e1                                      lsl r3, r1, #1
005ac704  08 30 82 e5                                      str r3, [r2, #8]
005ac708  a8 20 96 e5                                      ldr r2, [r6, #0xa8]
005ac70c  06 00 a0 e1                                      mov r0, r6
005ac710  2c 20 8d e5                                      str r2, [sp, #0x2c]
005ac714  00 00 52 e3                                      cmp r2, #0
005ac718  00 10 92 15                                      ldrne r1, [r2]
005ac71c  01 10 81 12                                      addne r1, r1, #1
005ac720  00 10 82 15                                      strne r1, [r2]
005ac724  b8 20 96 e5                                      ldr r2, [r6, #0xb8]
005ac728  00 00 52 e3                                      cmp r2, #0
005ac72c  14 20 8d e5                                      str r2, [sp, #0x14]
005ac730  04 10 92 15                                      ldrne r1, [r2, #4]
005ac734  01 10 81 12                                      addne r1, r1, #1
005ac738  04 10 82 15                                      strne r1, [r2, #4]
005ac73c  24 30 8d e5                                      str r3, [sp, #0x24]
005ac740  1c 30 8d e5                                      str r3, [sp, #0x1c]
005ac744  01 30 a0 e3                                      mov r3, #1
005ac748  b8 32 cd e1                                      strh r3, [sp, #0x28]
005ac74c  2c 10 8d e2                                      add r1, sp, #0x2c
005ac750  03 30 a0 e3                                      mov r3, #3
005ac754  14 20 8d e2                                      add r2, sp, #0x14
005ac758  20 c0 8d e5                                      str ip, [sp, #0x20]
005ac75c  18 c0 8d e5                                      str ip, [sp, #0x18]
005ac760  ba 32 cd e1                                      strh r3, [sp, #0x2a]
005ac764  d4 f9 ff eb                                      bl #0x5aaebc
005ac768  14 00 9d e5                                      ldr r0, [sp, #0x14]
005ac76c  00 00 50 e3                                      cmp r0, #0
005ac770  00 00 00 0a                                      beq #0x5ac778
005ac774  82 c3 f5 eb                                      bl #0x31d584
005ac778  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
005ac77c  00 00 55 e3                                      cmp r5, #0
005ac780  04 00 00 0a                                      beq #0x5ac798
005ac784  00 30 95 e5                                      ldr r3, [r5]
005ac788  01 30 43 e2                                      sub r3, r3, #1
005ac78c  00 00 53 e3                                      cmp r3, #0
005ac790  00 30 85 e5                                      str r3, [r5]
005ac794  03 00 00 0a                                      beq #0x5ac7a8
005ac798  04 00 a0 e1                                      mov r0, r4
005ac79c  b9 1f fe eb                                      bl #0x534688
005ac7a0  34 d0 8d e2                                      add sp, sp, #0x34
005ac7a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ac7a8  05 00 a0 e1                                      mov r0, r5
005ac7ac  9a d0 ff eb                                      bl #0x5a0a1c
005ac7b0  05 00 a0 e1                                      mov r0, r5
005ac7b4  bd 86 f5 eb                                      bl #0x30e2b0
005ac7b8  f6 ff ff ea                                      b #0x5ac798

; FUNCTION 0x005ac7bc, declared_size=404, range_size=404, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver10draw2DLineERKNS_4core10position2dIiEES6_NS0_6SColorE
; demangled: glitch::video::IVideoDriver::draw2DLine(glitch::core::position2d<int> const&, glitch::core::position2d<int> const&, glitch::video::SColor)
; decoder-mode: arm
005ac7bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ac7c0  4c d0 4d e2                                      sub sp, sp, #0x4c
005ac7c4  00 70 a0 e3                                      mov r7, #0
005ac7c8  01 50 a0 e1                                      mov r5, r1
005ac7cc  14 10 8d e2                                      add r1, sp, #0x14
005ac7d0  04 30 8d e5                                      str r3, [sp, #4]
005ac7d4  04 70 81 e4                                      str r7, [r1], #4
005ac7d8  73 60 ef e6                                      uxtb r6, r3
005ac7dc  23 ac a0 e1                                      lsr sl, r3, #0x18
005ac7e0  53 84 e7 e7                                      ubfx r8, r3, #8, #8
005ac7e4  53 98 e7 e7                                      ubfx sb, r3, #0x10, #8
005ac7e8  00 40 a0 e1                                      mov r4, r0
005ac7ec  04 00 95 e5                                      ldr r0, [r5, #4]
005ac7f0  00 70 81 e5                                      str r7, [r1]
005ac7f4  02 b0 a0 e1                                      mov fp, r2
005ac7f8  0c 60 cd e5                                      strb r6, [sp, #0xc]
005ac7fc  0f a0 cd e5                                      strb sl, [sp, #0xf]
005ac800  0e 90 cd e5                                      strb sb, [sp, #0xe]
005ac804  0d 80 cd e5                                      strb r8, [sp, #0xd]
005ac808  55 88 f5 eb                                      bl #0x30e964
005ac80c  00 30 a0 e1                                      mov r3, r0
005ac810  00 00 95 e5                                      ldr r0, [r5]
005ac814  00 30 8d e5                                      str r3, [sp]
005ac818  51 88 f5 eb                                      bl #0x30e964
005ac81c  00 30 9d e5                                      ldr r3, [sp]
005ac820  24 20 8d e2                                      add r2, sp, #0x24
005ac824  00 50 a0 e3                                      mov r5, #0
005ac828  14 30 8d e5                                      str r3, [sp, #0x14]
005ac82c  10 00 8d e5                                      str r0, [sp, #0x10]
005ac830  18 50 8d e5                                      str r5, [sp, #0x18]
005ac834  04 70 82 e4                                      str r7, [r2], #4
005ac838  04 00 9b e5                                      ldr r0, [fp, #4]
005ac83c  00 70 82 e5                                      str r7, [r2]
005ac840  1c 60 cd e5                                      strb r6, [sp, #0x1c]
005ac844  1f a0 cd e5                                      strb sl, [sp, #0x1f]
005ac848  1e 90 cd e5                                      strb sb, [sp, #0x1e]
005ac84c  1d 80 cd e5                                      strb r8, [sp, #0x1d]
005ac850  43 88 f5 eb                                      bl #0x30e964
005ac854  00 60 a0 e1                                      mov r6, r0
005ac858  00 00 9b e5                                      ldr r0, [fp]
005ac85c  40 88 f5 eb                                      bl #0x30e964
005ac860  20 00 8d e5                                      str r0, [sp, #0x20]
005ac864  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
005ac868  07 30 a0 e1                                      mov r3, r7
005ac86c  0c 20 8d e2                                      add r2, sp, #0xc
005ac870  20 10 a0 e3                                      mov r1, #0x20
005ac874  24 60 8d e5                                      str r6, [sp, #0x24]
005ac878  28 50 8d e5                                      str r5, [sp, #0x28]
005ac87c  0c d5 ff eb                                      bl #0x5a1cb4
005ac880  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
005ac884  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
005ac888  04 00 52 e3                                      cmp r2, #4
005ac88c  04 00 00 0a                                      beq #0x5ac8a4
005ac890  08 20 93 e5                                      ldr r2, [r3, #8]
005ac894  07 00 52 e1                                      cmp r2, r7
005ac898  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
005ac89c  02 20 82 13                                      orrne r2, r2, #2
005ac8a0  12 20 c3 15                                      strbne r2, [r3, #0x12]
005ac8a4  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
005ac8a8  02 20 a0 e3                                      mov r2, #2
005ac8ac  02 c0 a0 e3                                      mov ip, #2
005ac8b0  08 20 83 e5                                      str r2, [r3, #8]
005ac8b4  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
005ac8b8  04 00 a0 e1                                      mov r0, r4
005ac8bc  44 10 8d e2                                      add r1, sp, #0x44
005ac8c0  00 00 53 e3                                      cmp r3, #0
005ac8c4  44 30 8d e5                                      str r3, [sp, #0x44]
005ac8c8  00 20 93 15                                      ldrne r2, [r3]
005ac8cc  01 20 82 12                                      addne r2, r2, #1
005ac8d0  00 20 83 15                                      strne r2, [r3]
005ac8d4  00 30 a0 e3                                      mov r3, #0
005ac8d8  38 30 8d e5                                      str r3, [sp, #0x38]
005ac8dc  2c 30 8d e5                                      str r3, [sp, #0x2c]
005ac8e0  30 30 8d e5                                      str r3, [sp, #0x30]
005ac8e4  ff 30 a0 e3                                      mov r3, #0xff
005ac8e8  b0 34 cd e1                                      strh r3, [sp, #0x40]
005ac8ec  2c 20 8d e2                                      add r2, sp, #0x2c
005ac8f0  03 30 a0 e3                                      mov r3, #3
005ac8f4  3c c0 8d e5                                      str ip, [sp, #0x3c]
005ac8f8  34 c0 8d e5                                      str ip, [sp, #0x34]
005ac8fc  b2 34 cd e1                                      strh r3, [sp, #0x42]
005ac900  6d f9 ff eb                                      bl #0x5aaebc
005ac904  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005ac908  00 00 50 e3                                      cmp r0, #0
005ac90c  00 00 00 0a                                      beq #0x5ac914
005ac910  1b c3 f5 eb                                      bl #0x31d584
005ac914  44 40 9d e5                                      ldr r4, [sp, #0x44]
005ac918  00 00 54 e3                                      cmp r4, #0
005ac91c  04 00 00 0a                                      beq #0x5ac934
005ac920  00 30 94 e5                                      ldr r3, [r4]
005ac924  01 30 43 e2                                      sub r3, r3, #1
005ac928  00 00 53 e3                                      cmp r3, #0
005ac92c  00 30 84 e5                                      str r3, [r4]
005ac930  01 00 00 0a                                      beq #0x5ac93c
005ac934  4c d0 8d e2                                      add sp, sp, #0x4c
005ac938  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ac93c  04 00 a0 e1                                      mov r0, r4
005ac940  35 d0 ff eb                                      bl #0x5a0a1c
005ac944  04 00 a0 e1                                      mov r0, r4
005ac948  58 86 f5 eb                                      bl #0x30e2b0
005ac94c  f8 ff ff ea                                      b #0x5ac934

; FUNCTION 0x005ac950, declared_size=740, range_size=740, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver18drawFullScreenQuadEPKNS0_6SColorE
; demangled: glitch::video::IVideoDriver::drawFullScreenQuad(glitch::video::SColor const*)
; decoder-mode: arm
005ac950  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ac954  01 80 a0 e1                                      mov r8, r1
005ac958  4d df 4d e2                                      sub sp, sp, #0x134
005ac95c  00 30 90 e5                                      ldr r3, [r0]
005ac960  01 10 a0 e3                                      mov r1, #1
005ac964  00 40 a0 e1                                      mov r4, r0
005ac968  0f e0 a0 e1                                      mov lr, pc
005ac96c  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005ac970  90 b0 8d e2                                      add fp, sp, #0x90
005ac974  00 10 a0 e1                                      mov r1, r0
005ac978  0b 00 a0 e1                                      mov r0, fp
005ac97c  5d f9 ff eb                                      bl #0x5aaef8
005ac980  00 10 a0 e3                                      mov r1, #0
005ac984  00 30 94 e5                                      ldr r3, [r4]
005ac988  04 00 a0 e1                                      mov r0, r4
005ac98c  0f e0 a0 e1                                      mov lr, pc
005ac990  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005ac994  4c 30 8d e2                                      add r3, sp, #0x4c
005ac998  00 10 a0 e1                                      mov r1, r0
005ac99c  03 00 a0 e1                                      mov r0, r3
005ac9a0  00 30 8d e5                                      str r3, [sp]
005ac9a4  53 f9 ff eb                                      bl #0x5aaef8
005ac9a8  00 30 94 e5                                      ldr r3, [r4]
005ac9ac  02 10 a0 e3                                      mov r1, #2
005ac9b0  04 00 a0 e1                                      mov r0, r4
005ac9b4  0f e0 a0 e1                                      mov lr, pc
005ac9b8  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005ac9bc  08 c0 8d e2                                      add ip, sp, #8
005ac9c0  00 10 a0 e1                                      mov r1, r0
005ac9c4  60 52 9f e5                                      ldr r5, [pc, #0x260]
005ac9c8  0c 00 a0 e1                                      mov r0, ip
005ac9cc  04 c0 8d e5                                      str ip, [sp, #4]
005ac9d0  48 f9 ff eb                                      bl #0x5aaef8
005ac9d4  54 32 9f e5                                      ldr r3, [pc, #0x254]
005ac9d8  05 50 8f e0                                      add r5, pc, r5
005ac9dc  04 00 a0 e1                                      mov r0, r4
005ac9e0  03 60 95 e7                                      ldr r6, [r5, r3]
005ac9e4  01 10 a0 e3                                      mov r1, #1
005ac9e8  00 30 94 e5                                      ldr r3, [r4]
005ac9ec  06 20 a0 e1                                      mov r2, r6
005ac9f0  0f e0 a0 e1                                      mov lr, pc
005ac9f4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005ac9f8  06 20 a0 e1                                      mov r2, r6
005ac9fc  04 00 a0 e1                                      mov r0, r4
005aca00  00 10 a0 e3                                      mov r1, #0
005aca04  00 30 94 e5                                      ldr r3, [r4]
005aca08  0f e0 a0 e1                                      mov lr, pc
005aca0c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005aca10  06 20 a0 e1                                      mov r2, r6
005aca14  04 00 a0 e1                                      mov r0, r4
005aca18  02 10 a0 e3                                      mov r1, #2
005aca1c  00 30 94 e5                                      ldr r3, [r4]
005aca20  00 60 a0 e3                                      mov r6, #0
005aca24  0f e0 a0 e1                                      mov lr, pc
005aca28  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005aca2c  d8 30 8d e2                                      add r3, sp, #0xd8
005aca30  04 60 83 e4                                      str r6, [r3], #4
005aca34  13 7e 8d e2                                      add r7, sp, #0x130
005aca38  5c 60 27 e5                                      str r6, [r7, #-0x5c]!
005aca3c  04 60 83 e4                                      str r6, [r3], #4
005aca40  08 10 a0 e1                                      mov r1, r8
005aca44  04 20 a0 e3                                      mov r2, #4
005aca48  00 60 83 e5                                      str r6, [r3]
005aca4c  bf a4 a0 e3                                      mov sl, #0xbf000000
005aca50  07 00 a0 e1                                      mov r0, r7
005aca54  83 87 f5 eb                                      bl #0x30e868
005aca58  02 a5 8a e2                                      add sl, sl, #0x800000
005aca5c  e8 30 8d e2                                      add r3, sp, #0xe8
005aca60  00 50 a0 e3                                      mov r5, #0
005aca64  d8 a0 8d e5                                      str sl, [sp, #0xd8]
005aca68  dc a0 8d e5                                      str sl, [sp, #0xdc]
005aca6c  e0 50 8d e5                                      str r5, [sp, #0xe0]
005aca70  04 60 83 e4                                      str r6, [r3], #4
005aca74  04 60 83 e4                                      str r6, [r3], #4
005aca78  13 0e 8d e2                                      add r0, sp, #0x130
005aca7c  04 10 88 e2                                      add r1, r8, #4
005aca80  04 20 a0 e3                                      mov r2, #4
005aca84  00 60 83 e5                                      str r6, [r3]
005aca88  4c 60 20 e5                                      str r6, [r0, #-0x4c]!
005aca8c  75 87 f5 eb                                      bl #0x30e868
005aca90  fe 95 a0 e3                                      mov sb, #0x3f800000
005aca94  f8 30 8d e2                                      add r3, sp, #0xf8
005aca98  e8 a0 8d e5                                      str sl, [sp, #0xe8]
005aca9c  ec 90 8d e5                                      str sb, [sp, #0xec]
005acaa0  f0 50 8d e5                                      str r5, [sp, #0xf0]
005acaa4  04 60 83 e4                                      str r6, [r3], #4
005acaa8  04 60 83 e4                                      str r6, [r3], #4
005acaac  13 0e 8d e2                                      add r0, sp, #0x130
005acab0  08 10 88 e2                                      add r1, r8, #8
005acab4  04 20 a0 e3                                      mov r2, #4
005acab8  00 60 83 e5                                      str r6, [r3]
005acabc  3c 60 20 e5                                      str r6, [r0, #-0x3c]!
005acac0  68 87 f5 eb                                      bl #0x30e868
005acac4  42 3f 8d e2                                      add r3, sp, #0x108
005acac8  fc a0 8d e5                                      str sl, [sp, #0xfc]
005acacc  f8 90 8d e5                                      str sb, [sp, #0xf8]
005acad0  00 51 8d e5                                      str r5, [sp, #0x100]
005acad4  04 60 83 e4                                      str r6, [r3], #4
005acad8  04 60 83 e4                                      str r6, [r3], #4
005acadc  13 0e 8d e2                                      add r0, sp, #0x130
005acae0  0c 10 88 e2                                      add r1, r8, #0xc
005acae4  04 20 a0 e3                                      mov r2, #4
005acae8  00 60 83 e5                                      str r6, [r3]
005acaec  2c 60 20 e5                                      str r6, [r0, #-0x2c]!
005acaf0  5c 87 f5 eb                                      bl #0x30e868
005acaf4  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
005acaf8  07 20 a0 e1                                      mov r2, r7
005acafc  06 30 a0 e1                                      mov r3, r6
005acb00  40 10 a0 e3                                      mov r1, #0x40
005acb04  0c 91 8d e5                                      str sb, [sp, #0x10c]
005acb08  10 51 8d e5                                      str r5, [sp, #0x110]
005acb0c  08 91 8d e5                                      str sb, [sp, #0x108]
005acb10  67 d4 ff eb                                      bl #0x5a1cb4
005acb14  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
005acb18  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
005acb1c  04 00 52 e3                                      cmp r2, #4
005acb20  04 00 00 0a                                      beq #0x5acb38
005acb24  08 20 93 e5                                      ldr r2, [r3, #8]
005acb28  06 00 52 e1                                      cmp r2, r6
005acb2c  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
005acb30  02 20 82 13                                      orrne r2, r2, #2
005acb34  12 20 c3 15                                      strbne r2, [r3, #0x12]
005acb38  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
005acb3c  04 20 a0 e3                                      mov r2, #4
005acb40  01 ec 8d e2                                      add lr, sp, #0x100
005acb44  08 20 83 e5                                      str r2, [r3, #8]
005acb48  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
005acb4c  00 c0 a0 e3                                      mov ip, #0
005acb50  04 00 a0 e1                                      mov r0, r4
005acb54  00 00 53 e3                                      cmp r3, #0
005acb58  2c 31 8d e5                                      str r3, [sp, #0x12c]
005acb5c  00 20 93 15                                      ldrne r2, [r3]
005acb60  4b 1f 8d e2                                      add r1, sp, #0x12c
005acb64  01 20 82 12                                      addne r2, r2, #1
005acb68  00 20 83 15                                      strne r2, [r3]
005acb6c  04 30 a0 e3                                      mov r3, #4
005acb70  ba 32 ce e1                                      strh r3, [lr, #0x2a]
005acb74  1c 31 8d e5                                      str r3, [sp, #0x11c]
005acb78  24 31 8d e5                                      str r3, [sp, #0x124]
005acb7c  ff 30 a0 e3                                      mov r3, #0xff
005acb80  45 2f 8d e2                                      add r2, sp, #0x114
005acb84  b8 32 ce e1                                      strh r3, [lr, #0x28]
005acb88  20 c1 8d e5                                      str ip, [sp, #0x120]
005acb8c  14 c1 8d e5                                      str ip, [sp, #0x114]
005acb90  18 c1 8d e5                                      str ip, [sp, #0x118]
005acb94  c8 f8 ff eb                                      bl #0x5aaebc
005acb98  14 01 9d e5                                      ldr r0, [sp, #0x114]
005acb9c  00 00 50 e3                                      cmp r0, #0
005acba0  00 00 00 0a                                      beq #0x5acba8
005acba4  76 c2 f5 eb                                      bl #0x31d584
005acba8  2c 51 9d e5                                      ldr r5, [sp, #0x12c]
005acbac  00 00 55 e3                                      cmp r5, #0
005acbb0  04 00 00 0a                                      beq #0x5acbc8
005acbb4  00 30 95 e5                                      ldr r3, [r5]
005acbb8  01 30 43 e2                                      sub r3, r3, #1
005acbbc  00 00 53 e3                                      cmp r3, #0
005acbc0  00 30 85 e5                                      str r3, [r5]
005acbc4  13 00 00 0a                                      beq #0x5acc18
005acbc8  0b 20 a0 e1                                      mov r2, fp
005acbcc  04 00 a0 e1                                      mov r0, r4
005acbd0  00 30 94 e5                                      ldr r3, [r4]
005acbd4  01 10 a0 e3                                      mov r1, #1
005acbd8  0f e0 a0 e1                                      mov lr, pc
005acbdc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005acbe0  00 20 9d e5                                      ldr r2, [sp]
005acbe4  04 00 a0 e1                                      mov r0, r4
005acbe8  00 30 94 e5                                      ldr r3, [r4]
005acbec  00 10 a0 e3                                      mov r1, #0
005acbf0  0f e0 a0 e1                                      mov lr, pc
005acbf4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005acbf8  04 00 a0 e1                                      mov r0, r4
005acbfc  04 20 9d e5                                      ldr r2, [sp, #4]
005acc00  00 30 94 e5                                      ldr r3, [r4]
005acc04  02 10 a0 e3                                      mov r1, #2
005acc08  0f e0 a0 e1                                      mov lr, pc
005acc0c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005acc10  4d df 8d e2                                      add sp, sp, #0x134
005acc14  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005acc18  05 00 a0 e1                                      mov r0, r5
005acc1c  7e cf ff eb                                      bl #0x5a0a1c
005acc20  05 00 a0 e1                                      mov r0, r5
005acc24  a1 85 f5 eb                                      bl #0x30e2b0
005acc28  e6 ff ff ea                                      b #0x5acbc8
; mapping-symbol data/literal pool
005acc2c  b8 80 3e 00 30 28 00 00                          .byte 0xb8, 0x80, 0x3e, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x005acc34, declared_size=924, range_size=924, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver16getProcessBufferENS0_21E_PROCESS_BUFFER_TYPEEjjjRKN5boost13intrusive_ptrINS0_14CVertexStreamsEEEPPNS0_14CDriverBindingEb
; demangled: glitch::video::IVideoDriver::getProcessBuffer(glitch::video::E_PROCESS_BUFFER_TYPE, unsigned int, unsigned int, unsigned int, boost::intrusive_ptr<glitch::video::CVertexStreams> const&, glitch::video::CDriverBinding**, bool)
; decoder-mode: arm
005acc34  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005acc38  00 c0 51 e2                                      subs ip, r1, #0
005acc3c  20 d0 4d e2                                      sub sp, sp, #0x20
005acc40  02 50 a0 e1                                      mov r5, r2
005acc44  03 60 a0 e1                                      mov r6, r3
005acc48  00 40 a0 e1                                      mov r4, r0
005acc4c  40 80 9d e5                                      ldr r8, [sp, #0x40]
005acc50  44 a0 9d e5                                      ldr sl, [sp, #0x44]
005acc54  48 10 9d e5                                      ldr r1, [sp, #0x48]
005acc58  4c 70 dd e5                                      ldrb r7, [sp, #0x4c]
005acc5c  0d 00 00 1a                                      bne #0x5acc98
005acc60  00 00 51 e3                                      cmp r1, #0
005acc64  63 00 00 0a                                      beq #0x5acdf8
005acc68  00 30 91 e5                                      ldr r3, [r1]
005acc6c  00 00 53 e3                                      cmp r3, #0
005acc70  60 00 00 0a                                      beq #0x5acdf8
005acc74  04 20 93 e5                                      ldr r2, [r3, #4]
005acc78  00 00 52 e3                                      cmp r2, #0
005acc7c  5a 00 00 0a                                      beq #0x5acdec
005acc80  08 20 92 e5                                      ldr r2, [r2, #8]
005acc84  00 00 52 e3                                      cmp r2, #0
005acc88  57 00 00 0a                                      beq #0x5acdec
005acc8c  10 00 a0 e3                                      mov r0, #0x10
005acc90  20 d0 8d e2                                      add sp, sp, #0x20
005acc94  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005acc98  01 00 5c e3                                      cmp ip, #1
005acc9c  01 00 00 0a                                      beq #0x5acca8
005acca0  04 00 a0 e3                                      mov r0, #4
005acca4  f9 ff ff ea                                      b #0x5acc90
005acca8  52 f2 ff eb                                      bl #0x5a95f8
005accac  18 30 90 e5                                      ldr r3, [r0, #0x18]
005accb0  00 90 a0 e1                                      mov sb, r0
005accb4  00 00 53 e3                                      cmp r3, #0
005accb8  9b 00 00 0a                                      beq #0x5acf2c
005accbc  04 00 90 e5                                      ldr r0, [r0, #4]
005accc0  00 00 50 e3                                      cmp r0, #0
005accc4  03 00 00 0a                                      beq #0x5accd8
005accc8  00 30 a0 e3                                      mov r3, #0
005acccc  04 30 89 e5                                      str r3, [sb, #4]
005accd0  2b c2 f5 eb                                      bl #0x31d584
005accd4  18 30 99 e5                                      ldr r3, [sb, #0x18]
005accd8  00 20 a0 e3                                      mov r2, #0
005accdc  b4 21 c9 e1                                      strh r2, [sb, #0x14]
005acce0  08 20 89 e5                                      str r2, [sb, #8]
005acce4  0c 20 89 e5                                      str r2, [sb, #0xc]
005acce8  10 20 89 e5                                      str r2, [sb, #0x10]
005accec  1c c0 99 e5                                      ldr ip, [sb, #0x1c]
005accf0  14 20 93 e5                                      ldr r2, [r3, #0x14]
005accf4  20 00 93 e5                                      ldr r0, [r3, #0x20]
005accf8  14 10 a0 e3                                      mov r1, #0x14
005accfc  8c e1 92 e7                                      ldr lr, [r2, ip, lsl #3]
005acd00  8c 21 82 e0                                      add r2, r2, ip, lsl #3
005acd04  04 20 92 e5                                      ldr r2, [r2, #4]
005acd08  91 0e 2e e0                                      mla lr, r1, lr, r0
005acd0c  70 c0 93 e5                                      ldr ip, [r3, #0x70]
005acd10  bc e0 de e1                                      ldrh lr, [lr, #0xc]
005acd14  08 30 93 e5                                      ldr r3, [r3, #8]
005acd18  02 20 8e e0                                      add r2, lr, r2
005acd1c  9c 02 02 e0                                      mul r2, ip, r2
005acd20  02 e0 93 e7                                      ldr lr, [r3, r2]
005acd24  02 20 83 e0                                      add r2, r3, r2
005acd28  04 c0 92 e5                                      ldr ip, [r2, #4]
005acd2c  00 30 9e e5                                      ldr r3, [lr]
005acd30  8c 31 93 e7                                      ldr r3, [r3, ip, lsl #3]
005acd34  91 03 03 e0                                      mul r3, r1, r3
005acd38  03 40 90 e7                                      ldr r4, [r0, r3]
005acd3c  00 00 54 e3                                      cmp r4, #0
005acd40  0f 00 00 0a                                      beq #0x5acd84
005acd44  04 30 94 e5                                      ldr r3, [r4, #4]
005acd48  01 30 83 e2                                      add r3, r3, #1
005acd4c  04 30 84 e5                                      str r3, [r4, #4]
005acd50  18 30 99 e5                                      ldr r3, [sb, #0x18]
005acd54  1c c0 99 e5                                      ldr ip, [sb, #0x1c]
005acd58  14 00 93 e5                                      ldr r0, [r3, #0x14]
005acd5c  20 60 93 e5                                      ldr r6, [r3, #0x20]
005acd60  70 e0 93 e5                                      ldr lr, [r3, #0x70]
005acd64  8c 71 90 e7                                      ldr r7, [r0, ip, lsl #3]
005acd68  8c 01 80 e0                                      add r0, r0, ip, lsl #3
005acd6c  04 20 90 e5                                      ldr r2, [r0, #4]
005acd70  91 67 21 e0                                      mla r1, r1, r7, r6
005acd74  08 30 93 e5                                      ldr r3, [r3, #8]
005acd78  bc 10 d1 e1                                      ldrh r1, [r1, #0xc]
005acd7c  02 20 81 e0                                      add r2, r1, r2
005acd80  9e 32 22 e0                                      mla r2, lr, r2, r3
005acd84  14 30 94 e5                                      ldr r3, [r4, #0x14]
005acd88  b4 02 d2 e1                                      ldrh r0, [r2, #0x24]
005acd8c  00 00 53 e3                                      cmp r3, #0
005acd90  10 30 8d e5                                      str r3, [sp, #0x10]
005acd94  00 20 93 15                                      ldrne r2, [r3]
005acd98  00 50 65 e0                                      rsb r5, r5, r0
005acd9c  01 20 82 12                                      addne r2, r2, #1
005acda0  00 20 83 15                                      strne r2, [r3]
005acda4  10 30 9d 15                                      ldrne r3, [sp, #0x10]
005acda8  01 00 58 e3                                      cmp r8, #1
005acdac  14 20 83 e2                                      add r2, r3, #0x14
005acdb0  be 10 d2 e1                                      ldrh r1, [r2, #0xe]
005acdb4  91 05 05 e0                                      mul r5, r1, r5
005acdb8  46 00 00 0a                                      beq #0x5aced8
005acdbc  02 18 a0 e3                                      mov r1, #0x20000
005acdc0  01 10 81 e2                                      add r1, r1, #1
005acdc4  01 00 58 e1                                      cmp r8, r1
005acdc8  36 00 00 0a                                      beq #0x5acea8
005acdcc  00 00 9a e5                                      ldr r0, [sl]
005acdd0  01 c0 a0 e3                                      mov ip, #1
005acdd4  08 20 a0 e1                                      mov r2, r8
005acdd8  05 30 a0 e1                                      mov r3, r5
005acddc  10 10 8d e2                                      add r1, sp, #0x10
005acde0  00 c0 8d e5                                      str ip, [sp]
005acde4  9d cf ff eb                                      bl #0x5a0c60
005acde8  3e 00 00 ea                                      b #0x5acee8
005acdec  18 30 93 e5                                      ldr r3, [r3, #0x18]
005acdf0  00 00 53 e3                                      cmp r3, #0
005acdf4  a4 ff ff 1a                                      bne #0x5acc8c
005acdf8  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
005acdfc  bc 10 94 e5                                      ldr r1, [r4, #0xbc]
005ace00  00 20 a0 e3                                      mov r2, #0
005ace04  be 21 cd e1                                      strh r2, [sp, #0x1e]
005ace08  03 00 51 e1                                      cmp r1, r3
005ace0c  4d 00 00 0a                                      beq #0x5acf48
005ace10  04 30 13 e5                                      ldr r3, [r3, #-4]
005ace14  14 c0 8d e2                                      add ip, sp, #0x14
005ace18  10 00 8d e2                                      add r0, sp, #0x10
005ace1c  00 00 53 e3                                      cmp r3, #0
005ace20  14 30 8d e5                                      str r3, [sp, #0x14]
005ace24  04 20 93 15                                      ldrne r2, [r3, #4]
005ace28  05 10 a0 e1                                      mov r1, r5
005ace2c  01 20 82 12                                      addne r2, r2, #1
005ace30  04 20 83 15                                      strne r2, [r3, #4]
005ace34  04 c0 8d e5                                      str ip, [sp, #4]
005ace38  06 20 a0 e1                                      mov r2, r6
005ace3c  1e c0 8d e2                                      add ip, sp, #0x1e
005ace40  08 30 a0 e1                                      mov r3, r8
005ace44  00 a0 8d e5                                      str sl, [sp]
005ace48  08 c0 8d e5                                      str ip, [sp, #8]
005ace4c  12 fc ff eb                                      bl #0x5abe9c
005ace50  14 00 9d e5                                      ldr r0, [sp, #0x14]
005ace54  00 00 50 e3                                      cmp r0, #0
005ace58  00 00 00 0a                                      beq #0x5ace60
005ace5c  c8 c1 f5 eb                                      bl #0x31d584
005ace60  10 00 9d e5                                      ldr r0, [sp, #0x10]
005ace64  00 00 50 e3                                      cmp r0, #0
005ace68  08 00 a0 03                                      moveq r0, #8
005ace6c  87 ff ff 0a                                      beq #0x5acc90
005ace70  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
005ace74  04 20 43 e2                                      sub r2, r3, #4
005ace78  c0 20 84 e5                                      str r2, [r4, #0xc0]
005ace7c  04 30 13 e5                                      ldr r3, [r3, #-4]
005ace80  00 00 53 e3                                      cmp r3, #0
005ace84  02 00 00 0a                                      beq #0x5ace94
005ace88  03 00 a0 e1                                      mov r0, r3
005ace8c  bc c1 f5 eb                                      bl #0x31d584
005ace90  10 00 9d e5                                      ldr r0, [sp, #0x10]
005ace94  00 00 50 e3                                      cmp r0, #0
005ace98  80 ff ff 0a                                      beq #0x5acca0
005ace9c  b8 c1 f5 eb                                      bl #0x31d584
005acea0  04 00 a0 e3                                      mov r0, #4
005acea4  79 ff ff ea                                      b #0x5acc90
005acea8  00 00 9a e5                                      ldr r0, [sl]
005aceac  0c c0 d3 e5                                      ldrb ip, [r3, #0xc]
005aceb0  05 30 a0 e1                                      mov r3, r5
005aceb4  0c 10 d0 e5                                      ldrb r1, [r0, #0xc]
005aceb8  01 c0 8c e2                                      add ip, ip, #1
005acebc  7c c0 ef e6                                      uxtb ip, ip
005acec0  01 12 80 e0                                      add r1, r0, r1, lsl #4
005acec4  0c 22 82 e0                                      add r2, r2, ip, lsl #4
005acec8  24 10 81 e2                                      add r1, r1, #0x24
005acecc  21 fb ff eb                                      bl #0x5abb58
005aced0  10 20 9d e5                                      ldr r2, [sp, #0x10]
005aced4  14 20 82 e2                                      add r2, r2, #0x14
005aced8  00 00 9a e5                                      ldr r0, [sl]
005acedc  05 30 a0 e1                                      mov r3, r5
005acee0  14 10 80 e2                                      add r1, r0, #0x14
005acee4  1b fb ff eb                                      bl #0x5abb58
005acee8  10 50 9d e5                                      ldr r5, [sp, #0x10]
005aceec  00 00 55 e3                                      cmp r5, #0
005acef0  04 00 00 0a                                      beq #0x5acf08
005acef4  00 30 95 e5                                      ldr r3, [r5]
005acef8  01 30 43 e2                                      sub r3, r3, #1
005acefc  00 00 53 e3                                      cmp r3, #0
005acf00  00 30 85 e5                                      str r3, [r5]
005acf04  03 00 00 0a                                      beq #0x5acf18
005acf08  04 00 a0 e1                                      mov r0, r4
005acf0c  9c c1 f5 eb                                      bl #0x31d584
005acf10  05 00 a0 e3                                      mov r0, #5
005acf14  5d ff ff ea                                      b #0x5acc90
005acf18  05 00 a0 e1                                      mov r0, r5
005acf1c  be ce ff eb                                      bl #0x5a0a1c
005acf20  05 00 a0 e1                                      mov r0, r5
005acf24  e1 84 f5 eb                                      bl #0x30e2b0
005acf28  f6 ff ff ea                                      b #0x5acf08
005acf2c  04 10 a0 e1                                      mov r1, r4
005acf30  05 20 a0 e1                                      mov r2, r5
005acf34  06 30 a0 e1                                      mov r3, r6
005acf38  00 05 8d e8                                      stm sp, {r8, sl}
005acf3c  08 70 8d e5                                      str r7, [sp, #8]
005acf40  18 fc ff eb                                      bl #0x5abfa8
005acf44  51 ff ff ea                                      b #0x5acc90
005acf48  01 30 a0 e3                                      mov r3, #1
005acf4c  08 30 8d e5                                      str r3, [sp, #8]
005acf50  00 20 8d e5                                      str r2, [sp]
005acf54  04 20 8d e5                                      str r2, [sp, #4]
005acf58  18 70 8d e2                                      add r7, sp, #0x18
005acf5c  04 10 a0 e1                                      mov r1, r4
005acf60  04 30 a0 e3                                      mov r3, #4
005acf64  00 c0 94 e5                                      ldr ip, [r4]
005acf68  07 00 a0 e1                                      mov r0, r7
005acf6c  0f e0 a0 e1                                      mov lr, pc
005acf70  78 f0 9c e5                                      ldr pc, [ip, #0x78]
005acf74  c0 10 94 e5                                      ldr r1, [r4, #0xc0]
005acf78  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
005acf7c  03 00 51 e1                                      cmp r1, r3
005acf80  0e 00 00 0a                                      beq #0x5acfc0
005acf84  18 30 9d e5                                      ldr r3, [sp, #0x18]
005acf88  00 00 53 e3                                      cmp r3, #0
005acf8c  00 30 81 e5                                      str r3, [r1]
005acf90  04 20 93 15                                      ldrne r2, [r3, #4]
005acf94  01 20 82 12                                      addne r2, r2, #1
005acf98  04 20 83 15                                      strne r2, [r3, #4]
005acf9c  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
005acfa0  04 30 83 e2                                      add r3, r3, #4
005acfa4  c0 30 84 e5                                      str r3, [r4, #0xc0]
005acfa8  18 00 9d e5                                      ldr r0, [sp, #0x18]
005acfac  00 00 50 e3                                      cmp r0, #0
005acfb0  00 00 00 0a                                      beq #0x5acfb8
005acfb4  72 c1 f5 eb                                      bl #0x31d584
005acfb8  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
005acfbc  93 ff ff ea                                      b #0x5ace10
005acfc0  07 20 a0 e1                                      mov r2, r7
005acfc4  bc 00 84 e2                                      add r0, r4, #0xbc
005acfc8  75 fa ff eb                                      bl #0x5ab9a4
005acfcc  f5 ff ff ea                                      b #0x5acfa8

; FUNCTION 0x005acfd0, declared_size=396, range_size=396, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver18forceCommitTextureERKN5boost13intrusive_ptrINS0_8ITextureEEE
; demangled: glitch::video::IVideoDriver::forceCommitTexture(boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
005acfd0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005acfd4  88 70 90 e5                                      ldr r7, [r0, #0x88]
005acfd8  0c d0 4d e2                                      sub sp, sp, #0xc
005acfdc  00 40 a0 e1                                      mov r4, r0
005acfe0  02 0a 17 e3                                      tst r7, #0x2000
005acfe4  01 50 a0 e1                                      mov r5, r1
005acfe8  44 00 00 0a                                      beq #0x5ad100
005acfec  01 7c 17 e2                                      ands r7, r7, #0x100
005acff0  4d 00 00 1a                                      bne #0x5ad12c
005acff4  dc 60 94 e5                                      ldr r6, [r4, #0xdc]
005acff8  ff 3f 0f e3                                      movw r3, #0xffff
005acffc  bc 24 d6 e1                                      ldrh r2, [r6, #0x4c]
005ad000  03 00 52 e1                                      cmp r2, r3
005ad004  4f 00 00 0a                                      beq #0x5ad148
005ad008  06 10 a0 e1                                      mov r1, r6
005ad00c  04 00 8d e2                                      add r0, sp, #4
005ad010  01 30 a0 e3                                      mov r3, #1
005ad014  32 c0 00 eb                                      bl #0x5dd0e4
005ad018  00 10 95 e5                                      ldr r1, [r5]
005ad01c  00 20 a0 e3                                      mov r2, #0
005ad020  05 30 a0 e1                                      mov r3, r5
005ad024  38 10 91 e5                                      ldr r1, [r1, #0x38]
005ad028  04 00 9d e5                                      ldr r0, [sp, #4]
005ad02c  03 10 01 e2                                      and r1, r1, #3
005ad030  bb 80 00 eb                                      bl #0x5cd324
005ad034  00 30 95 e5                                      ldr r3, [r5]
005ad038  04 00 a0 e1                                      mov r0, r4
005ad03c  04 10 9d e5                                      ldr r1, [sp, #4]
005ad040  38 20 93 e5                                      ldr r2, [r3, #0x38]
005ad044  51 3f 84 e2                                      add r3, r4, #0x144
005ad048  ec 60 94 e5                                      ldr r6, [r4, #0xec]
005ad04c  03 20 02 e2                                      and r2, r2, #3
005ad050  e8 a0 94 e5                                      ldr sl, [r4, #0xe8]
005ad054  f8 80 d4 e5                                      ldrb r8, [r4, #0xf8]
005ad058  2f f5 ff eb                                      bl #0x5aa51c
005ad05c  00 30 95 e5                                      ldr r3, [r5]
005ad060  00 20 a0 e3                                      mov r2, #0
005ad064  04 00 9d e5                                      ldr r0, [sp, #4]
005ad068  38 10 93 e5                                      ldr r1, [r3, #0x38]
005ad06c  08 30 8d e2                                      add r3, sp, #8
005ad070  08 20 23 e5                                      str r2, [r3, #-8]!
005ad074  03 10 01 e2                                      and r1, r1, #3
005ad078  0d 30 a0 e1                                      mov r3, sp
005ad07c  a8 80 00 eb                                      bl #0x5cd324
005ad080  00 00 9d e5                                      ldr r0, [sp]
005ad084  00 00 50 e3                                      cmp r0, #0
005ad088  00 00 00 0a                                      beq #0x5ad090
005ad08c  3c c1 f5 eb                                      bl #0x31d584
005ad090  00 00 56 e3                                      cmp r6, #0
005ad094  ec 60 84 05                                      streq r6, [r4, #0xec]
005ad098  f8 80 c4 05                                      strbeq r8, [r4, #0xf8]
005ad09c  e8 a0 84 05                                      streq sl, [r4, #0xe8]
005ad0a0  04 00 00 0a                                      beq #0x5ad0b8
005ad0a4  06 10 a0 e1                                      mov r1, r6
005ad0a8  08 20 a0 e1                                      mov r2, r8
005ad0ac  0a 30 a0 e1                                      mov r3, sl
005ad0b0  04 00 a0 e1                                      mov r0, r4
005ad0b4  18 f5 ff eb                                      bl #0x5aa51c
005ad0b8  04 50 9d e5                                      ldr r5, [sp, #4]
005ad0bc  00 00 55 e3                                      cmp r5, #0
005ad0c0  04 00 00 0a                                      beq #0x5ad0d8
005ad0c4  00 30 95 e5                                      ldr r3, [r5]
005ad0c8  01 30 43 e2                                      sub r3, r3, #1
005ad0cc  00 00 53 e3                                      cmp r3, #0
005ad0d0  00 30 85 e5                                      str r3, [r5]
005ad0d4  0b 00 00 0a                                      beq #0x5ad108
005ad0d8  88 30 94 e5                                      ldr r3, [r4, #0x88]
005ad0dc  53 34 e0 e7                                      ubfx r3, r3, #8, #1
005ad0e0  03 00 57 e1                                      cmp r7, r3
005ad0e4  05 00 00 0a                                      beq #0x5ad100
005ad0e8  04 00 a0 e1                                      mov r0, r4
005ad0ec  07 20 a0 e1                                      mov r2, r7
005ad0f0  00 30 94 e5                                      ldr r3, [r4]
005ad0f4  01 1c a0 e3                                      mov r1, #0x100
005ad0f8  0f e0 a0 e1                                      mov lr, pc
005ad0fc  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
005ad100  0c d0 8d e2                                      add sp, sp, #0xc
005ad104  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005ad108  05 00 a0 e1                                      mov r0, r5
005ad10c  99 7b 00 eb                                      bl #0x5cbf78
005ad110  05 00 a0 e1                                      mov r0, r5
005ad114  65 84 f5 eb                                      bl #0x30e2b0
005ad118  88 30 94 e5                                      ldr r3, [r4, #0x88]
005ad11c  53 34 e0 e7                                      ubfx r3, r3, #8, #1
005ad120  03 00 57 e1                                      cmp r7, r3
005ad124  ef ff ff 1a                                      bne #0x5ad0e8
005ad128  f4 ff ff ea                                      b #0x5ad100
005ad12c  00 30 90 e5                                      ldr r3, [r0]
005ad130  01 1c a0 e3                                      mov r1, #0x100
005ad134  00 20 a0 e3                                      mov r2, #0
005ad138  0f e0 a0 e1                                      mov lr, pc
005ad13c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
005ad140  01 70 a0 e3                                      mov r7, #1
005ad144  aa ff ff ea                                      b #0x5acff4
005ad148  06 00 a0 e1                                      mov r0, r6
005ad14c  10 10 a0 e3                                      mov r1, #0x10
005ad150  74 ae 00 eb                                      bl #0x5d8b28
005ad154  00 20 a0 e1                                      mov r2, r0
005ad158  aa ff ff ea                                      b #0x5ad008

; FUNCTION 0x005ad15c, declared_size=524, range_size=524, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver18resetBatchMaterialERKN5boost13intrusive_ptrINS0_9CMaterialEEEh
; demangled: glitch::video::IVideoDriver::resetBatchMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&, unsigned char)
; decoder-mode: arm
005ad15c  70 40 2d e9                                      push {r4, r5, r6, lr}
005ad160  01 50 a0 e1                                      mov r5, r1
005ad164  00 10 91 e5                                      ldr r1, [r1]
005ad168  10 d0 4d e2                                      sub sp, sp, #0x10
005ad16c  00 40 a0 e1                                      mov r4, r0
005ad170  00 00 51 e3                                      cmp r1, #0
005ad174  02 60 a0 e1                                      mov r6, r2
005ad178  51 00 00 0a                                      beq #0x5ad2c4
005ad17c  04 30 91 e5                                      ldr r3, [r1, #4]
005ad180  0c 20 a0 e3                                      mov r2, #0xc
005ad184  0c 00 8d e2                                      add r0, sp, #0xc
005ad188  18 30 93 e5                                      ldr r3, [r3, #0x18]
005ad18c  92 36 23 e0                                      mla r3, r2, r6, r3
005ad190  08 30 93 e5                                      ldr r3, [r3, #8]
005ad194  20 10 93 e5                                      ldr r1, [r3, #0x20]
005ad198  fe dd 00 eb                                      bl #0x5e4998
005ad19c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005ad1a0  00 00 53 e3                                      cmp r3, #0
005ad1a4  04 20 93 15                                      ldrne r2, [r3, #4]
005ad1a8  01 20 82 12                                      addne r2, r2, #1
005ad1ac  04 20 83 15                                      strne r2, [r3, #4]
005ad1b0  28 01 94 e5                                      ldr r0, [r4, #0x128]
005ad1b4  28 31 84 e5                                      str r3, [r4, #0x128]
005ad1b8  00 00 50 e3                                      cmp r0, #0
005ad1bc  00 00 00 0a                                      beq #0x5ad1c4
005ad1c0  ef c0 f5 eb                                      bl #0x31d584
005ad1c4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005ad1c8  00 00 50 e3                                      cmp r0, #0
005ad1cc  00 00 00 0a                                      beq #0x5ad1d4
005ad1d0  eb c0 f5 eb                                      bl #0x31d584
005ad1d4  28 11 94 e5                                      ldr r1, [r4, #0x128]
005ad1d8  00 30 95 e5                                      ldr r3, [r5]
005ad1dc  04 00 8d e2                                      add r0, sp, #4
005ad1e0  00 20 91 e5                                      ldr r2, [r1]
005ad1e4  00 00 53 e3                                      cmp r3, #0
005ad1e8  10 c0 92 e5                                      ldr ip, [r2, #0x10]
005ad1ec  08 30 8d e5                                      str r3, [sp, #8]
005ad1f0  00 20 93 15                                      ldrne r2, [r3]
005ad1f4  01 20 82 12                                      addne r2, r2, #1
005ad1f8  00 20 83 15                                      strne r2, [r3]
005ad1fc  08 20 8d e2                                      add r2, sp, #8
005ad200  06 30 a0 e1                                      mov r3, r6
005ad204  3c ff 2f e1                                      blx ip
005ad208  04 30 9d e5                                      ldr r3, [sp, #4]
005ad20c  00 00 53 e3                                      cmp r3, #0
005ad210  00 20 93 15                                      ldrne r2, [r3]
005ad214  01 20 82 12                                      addne r2, r2, #1
005ad218  00 20 83 15                                      strne r2, [r3]
005ad21c  24 51 94 e5                                      ldr r5, [r4, #0x124]
005ad220  24 31 84 e5                                      str r3, [r4, #0x124]
005ad224  00 00 55 e3                                      cmp r5, #0
005ad228  04 00 00 0a                                      beq #0x5ad240
005ad22c  00 30 95 e5                                      ldr r3, [r5]
005ad230  01 30 43 e2                                      sub r3, r3, #1
005ad234  00 00 53 e3                                      cmp r3, #0
005ad238  00 30 85 e5                                      str r3, [r5]
005ad23c  34 00 00 0a                                      beq #0x5ad314
005ad240  04 50 9d e5                                      ldr r5, [sp, #4]
005ad244  00 00 55 e3                                      cmp r5, #0
005ad248  04 00 00 0a                                      beq #0x5ad260
005ad24c  00 30 95 e5                                      ldr r3, [r5]
005ad250  01 30 43 e2                                      sub r3, r3, #1
005ad254  00 00 53 e3                                      cmp r3, #0
005ad258  00 30 85 e5                                      str r3, [r5]
005ad25c  34 00 00 0a                                      beq #0x5ad334
005ad260  08 50 9d e5                                      ldr r5, [sp, #8]
005ad264  00 00 55 e3                                      cmp r5, #0
005ad268  04 00 00 0a                                      beq #0x5ad280
005ad26c  00 30 95 e5                                      ldr r3, [r5]
005ad270  01 30 43 e2                                      sub r3, r3, #1
005ad274  00 00 53 e3                                      cmp r3, #0
005ad278  00 30 85 e5                                      str r3, [r5]
005ad27c  34 00 00 0a                                      beq #0x5ad354
005ad280  28 01 94 e5                                      ldr r0, [r4, #0x128]
005ad284  20 21 94 e5                                      ldr r2, [r4, #0x120]
005ad288  00 30 90 e5                                      ldr r3, [r0]
005ad28c  00 00 52 e3                                      cmp r2, #0
005ad290  18 30 93 e5                                      ldr r3, [r3, #0x18]
005ad294  00 20 8d e5                                      str r2, [sp]
005ad298  04 10 92 15                                      ldrne r1, [r2, #4]
005ad29c  01 10 81 12                                      addne r1, r1, #1
005ad2a0  04 10 82 15                                      strne r1, [r2, #4]
005ad2a4  0d 10 a0 e1                                      mov r1, sp
005ad2a8  33 ff 2f e1                                      blx r3
005ad2ac  00 00 9d e5                                      ldr r0, [sp]
005ad2b0  00 00 50 e3                                      cmp r0, #0
005ad2b4  00 00 00 0a                                      beq #0x5ad2bc
005ad2b8  b1 c0 f5 eb                                      bl #0x31d584
005ad2bc  10 d0 8d e2                                      add sp, sp, #0x10
005ad2c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ad2c4  28 01 90 e5                                      ldr r0, [r0, #0x128]
005ad2c8  28 11 84 e5                                      str r1, [r4, #0x128]
005ad2cc  00 00 50 e3                                      cmp r0, #0
005ad2d0  00 00 00 0a                                      beq #0x5ad2d8
005ad2d4  aa c0 f5 eb                                      bl #0x31d584
005ad2d8  24 51 94 e5                                      ldr r5, [r4, #0x124]
005ad2dc  00 30 a0 e3                                      mov r3, #0
005ad2e0  24 31 84 e5                                      str r3, [r4, #0x124]
005ad2e4  03 00 55 e1                                      cmp r5, r3
005ad2e8  f3 ff ff 0a                                      beq #0x5ad2bc
005ad2ec  00 30 95 e5                                      ldr r3, [r5]
005ad2f0  01 30 43 e2                                      sub r3, r3, #1
005ad2f4  00 00 53 e3                                      cmp r3, #0
005ad2f8  00 30 85 e5                                      str r3, [r5]
005ad2fc  ee ff ff 1a                                      bne #0x5ad2bc
005ad300  05 00 a0 e1                                      mov r0, r5
005ad304  1b 7b 00 eb                                      bl #0x5cbf78
005ad308  05 00 a0 e1                                      mov r0, r5
005ad30c  e7 83 f5 eb                                      bl #0x30e2b0
005ad310  e9 ff ff ea                                      b #0x5ad2bc
005ad314  05 00 a0 e1                                      mov r0, r5
005ad318  16 7b 00 eb                                      bl #0x5cbf78
005ad31c  05 00 a0 e1                                      mov r0, r5
005ad320  e2 83 f5 eb                                      bl #0x30e2b0
005ad324  04 50 9d e5                                      ldr r5, [sp, #4]
005ad328  00 00 55 e3                                      cmp r5, #0
005ad32c  c6 ff ff 1a                                      bne #0x5ad24c
005ad330  ca ff ff ea                                      b #0x5ad260
005ad334  05 00 a0 e1                                      mov r0, r5
005ad338  0e 7b 00 eb                                      bl #0x5cbf78
005ad33c  05 00 a0 e1                                      mov r0, r5
005ad340  da 83 f5 eb                                      bl #0x30e2b0
005ad344  08 50 9d e5                                      ldr r5, [sp, #8]
005ad348  00 00 55 e3                                      cmp r5, #0
005ad34c  c6 ff ff 1a                                      bne #0x5ad26c
005ad350  ca ff ff ea                                      b #0x5ad280
005ad354  05 00 a0 e1                                      mov r0, r5
005ad358  06 7b 00 eb                                      bl #0x5cbf78
005ad35c  05 00 a0 e1                                      mov r0, r5
005ad360  d2 83 f5 eb                                      bl #0x30e2b0
005ad364  c5 ff ff ea                                      b #0x5ad280

; FUNCTION 0x005ad368, declared_size=588, range_size=588, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver11setMaterialERKN5boost13intrusive_ptrINS0_9CMaterialEEEhPKNS3_INS0_19CVertexAttributeMapEEE
; demangled: glitch::video::IVideoDriver::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&, unsigned char, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*)
; decoder-mode: arm
005ad368  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005ad36c  00 40 a0 e1                                      mov r4, r0
005ad370  88 00 90 e5                                      ldr r0, [r0, #0x88]
005ad374  02 50 a0 e1                                      mov r5, r2
005ad378  08 d0 4d e2                                      sub sp, sp, #8
005ad37c  01 2c 10 e2                                      ands r2, r0, #0x100
005ad380  01 60 a0 e1                                      mov r6, r1
005ad384  03 70 a0 e1                                      mov r7, r3
005ad388  00 80 91 e5                                      ldr r8, [r1]
005ad38c  52 00 00 0a                                      beq #0x5ad4dc
005ad390  00 00 58 e3                                      cmp r8, #0
005ad394  02 00 00 0a                                      beq #0x5ad3a4
005ad398  30 a1 94 e5                                      ldr sl, [r4, #0x130]
005ad39c  08 00 5a e1                                      cmp sl, r8
005ad3a0  73 00 00 0a                                      beq #0x5ad574
005ad3a4  00 80 a0 e3                                      mov r8, #0
005ad3a8  28 01 94 e5                                      ldr r0, [r4, #0x128]
005ad3ac  00 00 50 e3                                      cmp r0, #0
005ad3b0  7a 00 00 0a                                      beq #0x5ad5a0
005ad3b4  00 00 58 e3                                      cmp r8, #0
005ad3b8  53 00 00 1a                                      bne #0x5ad50c
005ad3bc  00 20 96 e5                                      ldr r2, [r6]
005ad3c0  00 30 90 e5                                      ldr r3, [r0]
005ad3c4  00 00 52 e3                                      cmp r2, #0
005ad3c8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
005ad3cc  04 20 8d e5                                      str r2, [sp, #4]
005ad3d0  00 10 92 15                                      ldrne r1, [r2]
005ad3d4  01 10 81 12                                      addne r1, r1, #1
005ad3d8  00 10 82 15                                      strne r1, [r2]
005ad3dc  04 10 8d e2                                      add r1, sp, #4
005ad3e0  05 20 a0 e1                                      mov r2, r5
005ad3e4  33 ff 2f e1                                      blx r3
005ad3e8  04 a0 9d e5                                      ldr sl, [sp, #4]
005ad3ec  01 00 20 e2                                      eor r0, r0, #1
005ad3f0  70 90 ef e6                                      uxtb sb, r0
005ad3f4  00 00 5a e3                                      cmp sl, #0
005ad3f8  08 00 00 0a                                      beq #0x5ad420
005ad3fc  00 30 9a e5                                      ldr r3, [sl]
005ad400  01 30 43 e2                                      sub r3, r3, #1
005ad404  00 00 53 e3                                      cmp r3, #0
005ad408  00 30 8a e5                                      str r3, [sl]
005ad40c  03 00 00 1a                                      bne #0x5ad420
005ad410  0a 00 a0 e1                                      mov r0, sl
005ad414  d7 7a 00 eb                                      bl #0x5cbf78
005ad418  0a 00 a0 e1                                      mov r0, sl
005ad41c  a3 83 f5 eb                                      bl #0x30e2b0
005ad420  00 00 59 e3                                      cmp sb, #0
005ad424  38 00 00 0a                                      beq #0x5ad50c
005ad428  04 00 a0 e1                                      mov r0, r4
005ad42c  00 30 94 e5                                      ldr r3, [r4]
005ad430  0f e0 a0 e1                                      mov lr, pc
005ad434  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005ad438  04 00 a0 e1                                      mov r0, r4
005ad43c  06 10 a0 e1                                      mov r1, r6
005ad440  05 20 a0 e1                                      mov r2, r5
005ad444  44 ff ff eb                                      bl #0x5ad15c
005ad448  2c 01 94 e5                                      ldr r0, [r4, #0x12c]
005ad44c  00 00 50 e3                                      cmp r0, #0
005ad450  07 00 00 0a                                      beq #0x5ad474
005ad454  c7 7a 00 eb                                      bl #0x5cbf78
005ad458  2c 01 94 e5                                      ldr r0, [r4, #0x12c]
005ad45c  89 1c fe eb                                      bl #0x534688
005ad460  00 30 a0 e3                                      mov r3, #0
005ad464  00 20 e0 e3                                      mvn r2, #0
005ad468  30 31 84 e5                                      str r3, [r4, #0x130]
005ad46c  34 21 c4 e5                                      strb r2, [r4, #0x134]
005ad470  2c 31 84 e5                                      str r3, [r4, #0x12c]
005ad474  00 00 96 e5                                      ldr r0, [r6]
005ad478  00 00 50 e3                                      cmp r0, #0
005ad47c  36 00 00 0a                                      beq #0x5ad55c
005ad480  00 10 a0 e3                                      mov r1, #0
005ad484  60 7a 00 eb                                      bl #0x5cbe0c
005ad488  2c 01 84 e5                                      str r0, [r4, #0x12c]
005ad48c  00 30 96 e5                                      ldr r3, [r6]
005ad490  34 51 c4 e5                                      strb r5, [r4, #0x134]
005ad494  05 10 a0 e1                                      mov r1, r5
005ad498  30 31 84 e5                                      str r3, [r4, #0x130]
005ad49c  00 00 96 e5                                      ldr r0, [r6]
005ad4a0  00 f4 ff eb                                      bl #0x5aa4a8
005ad4a4  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ad4a8  24 81 94 e5                                      ldr r8, [r4, #0x124]
005ad4ac  00 50 a0 e3                                      mov r5, #0
005ad4b0  08 30 c3 e3                                      bic r3, r3, #8
005ad4b4  38 31 84 e5                                      str r3, [r4, #0x138]
005ad4b8  00 00 58 e3                                      cmp r8, #0
005ad4bc  0d 00 00 0a                                      beq #0x5ad4f8
005ad4c0  04 00 a0 e1                                      mov r0, r4
005ad4c4  08 10 a0 e1                                      mov r1, r8
005ad4c8  05 20 a0 e1                                      mov r2, r5
005ad4cc  07 30 a0 e1                                      mov r3, r7
005ad4d0  11 f4 ff eb                                      bl #0x5aa51c
005ad4d4  08 d0 8d e2                                      add sp, sp, #8
005ad4d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005ad4dc  28 01 94 e5                                      ldr r0, [r4, #0x128]
005ad4e0  28 21 84 e5                                      str r2, [r4, #0x128]
005ad4e4  00 00 50 e3                                      cmp r0, #0
005ad4e8  f2 ff ff 0a                                      beq #0x5ad4b8
005ad4ec  24 c0 f5 eb                                      bl #0x31d584
005ad4f0  00 00 58 e3                                      cmp r8, #0
005ad4f4  f1 ff ff 1a                                      bne #0x5ad4c0
005ad4f8  00 30 e0 e3                                      mvn r3, #0
005ad4fc  e8 70 84 e5                                      str r7, [r4, #0xe8]
005ad500  ec 80 84 e5                                      str r8, [r4, #0xec]
005ad504  f8 30 c4 e5                                      strb r3, [r4, #0xf8]
005ad508  f1 ff ff ea                                      b #0x5ad4d4
005ad50c  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ad510  08 00 13 e3                                      tst r3, #8
005ad514  0e 00 00 0a                                      beq #0x5ad554
005ad518  28 01 94 e5                                      ldr r0, [r4, #0x128]
005ad51c  20 21 94 e5                                      ldr r2, [r4, #0x120]
005ad520  00 30 90 e5                                      ldr r3, [r0]
005ad524  00 00 52 e3                                      cmp r2, #0
005ad528  18 30 93 e5                                      ldr r3, [r3, #0x18]
005ad52c  00 20 8d e5                                      str r2, [sp]
005ad530  04 10 92 15                                      ldrne r1, [r2, #4]
005ad534  01 10 81 12                                      addne r1, r1, #1
005ad538  04 10 82 15                                      strne r1, [r2, #4]
005ad53c  0d 10 a0 e1                                      mov r1, sp
005ad540  33 ff 2f e1                                      blx r3
005ad544  00 00 9d e5                                      ldr r0, [sp]
005ad548  00 00 50 e3                                      cmp r0, #0
005ad54c  00 00 00 0a                                      beq #0x5ad554
005ad550  0b c0 f5 eb                                      bl #0x31d584
005ad554  00 00 58 e3                                      cmp r8, #0
005ad558  ba ff ff 0a                                      beq #0x5ad448
005ad55c  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ad560  24 81 94 e5                                      ldr r8, [r4, #0x124]
005ad564  00 50 a0 e3                                      mov r5, #0
005ad568  08 30 c3 e3                                      bic r3, r3, #8
005ad56c  38 31 84 e5                                      str r3, [r4, #0x138]
005ad570  d0 ff ff ea                                      b #0x5ad4b8
005ad574  0a 00 a0 e1                                      mov r0, sl
005ad578  ed 61 00 eb                                      bl #0x5c5d34
005ad57c  0c 30 9a e5                                      ldr r3, [sl, #0xc]
005ad580  33 30 a0 e1                                      lsr r3, r3, r0
005ad584  01 00 13 e3                                      tst r3, #1
005ad588  85 ff ff 1a                                      bne #0x5ad3a4
005ad58c  f8 30 d4 e5                                      ldrb r3, [r4, #0xf8]
005ad590  05 00 53 e1                                      cmp r3, r5
005ad594  82 ff ff 1a                                      bne #0x5ad3a4
005ad598  01 80 a0 e3                                      mov r8, #1
005ad59c  81 ff ff ea                                      b #0x5ad3a8
005ad5a0  04 00 a0 e1                                      mov r0, r4
005ad5a4  06 10 a0 e1                                      mov r1, r6
005ad5a8  05 20 a0 e1                                      mov r2, r5
005ad5ac  ea fe ff eb                                      bl #0x5ad15c
005ad5b0  e7 ff ff ea                                      b #0x5ad554

; FUNCTION 0x005ad5b4, declared_size=760, range_size=760, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriverD2Ev
; demangled: glitch::video::IVideoDriver::~IVideoDriver()
; decoder-mode: arm
005ad5b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005ad5b8  e0 72 9f e5                                      ldr r7, [pc, #0x2e0]
005ad5bc  e0 32 9f e5                                      ldr r3, [pc, #0x2e0]
005ad5c0  38 21 90 e5                                      ldr r2, [r0, #0x138]
005ad5c4  07 70 8f e0                                      add r7, pc, r7
005ad5c8  03 30 97 e7                                      ldr r3, [r7, r3]
005ad5cc  10 00 12 e3                                      tst r2, #0x10
005ad5d0  00 50 a0 e1                                      mov r5, r0
005ad5d4  08 30 83 e2                                      add r3, r3, #8
005ad5d8  00 30 80 e5                                      str r3, [r0]
005ad5dc  07 00 00 0a                                      beq #0x5ad600
005ad5e0  dc 40 90 e5                                      ldr r4, [r0, #0xdc]
005ad5e4  00 00 54 e3                                      cmp r4, #0
005ad5e8  04 00 00 0a                                      beq #0x5ad600
005ad5ec  04 00 a0 e1                                      mov r0, r4
005ad5f0  e2 b6 00 eb                                      bl #0x5db180
005ad5f4  04 00 a0 e1                                      mov r0, r4
005ad5f8  2c 83 f5 eb                                      bl #0x30e2b0
005ad5fc  38 21 95 e5                                      ldr r2, [r5, #0x138]
005ad600  20 00 12 e3                                      tst r2, #0x20
005ad604  10 00 00 0a                                      beq #0x5ad64c
005ad608  e0 40 95 e5                                      ldr r4, [r5, #0xe0]
005ad60c  00 00 54 e3                                      cmp r4, #0
005ad610  06 00 00 0a                                      beq #0x5ad630
005ad614  04 00 a0 e1                                      mov r0, r4
005ad618  c6 f2 00 eb                                      bl #0x5ea138
005ad61c  04 00 a0 e1                                      mov r0, r4
005ad620  22 83 f5 eb                                      bl #0x30e2b0
005ad624  38 31 95 e5                                      ldr r3, [r5, #0x138]
005ad628  20 00 13 e3                                      tst r3, #0x20
005ad62c  06 00 00 0a                                      beq #0x5ad64c
005ad630  e4 40 95 e5                                      ldr r4, [r5, #0xe4]
005ad634  00 00 54 e3                                      cmp r4, #0
005ad638  03 00 00 0a                                      beq #0x5ad64c
005ad63c  04 00 a0 e1                                      mov r0, r4
005ad640  c6 37 00 eb                                      bl #0x5bb560
005ad644  04 00 a0 e1                                      mov r0, r4
005ad648  18 83 f5 eb                                      bl #0x30e2b0
005ad64c  54 01 95 e5                                      ldr r0, [r5, #0x154]
005ad650  00 00 50 e3                                      cmp r0, #0
005ad654  00 00 00 0a                                      beq #0x5ad65c
005ad658  7c 8b f5 eb                                      bl #0x310450
005ad65c  51 6f 85 e2                                      add r6, r5, #0x144
005ad660  55 4f 85 e2                                      add r4, r5, #0x154
005ad664  04 30 14 e5                                      ldr r3, [r4, #-4]
005ad668  00 00 53 e3                                      cmp r3, #0
005ad66c  06 00 00 0a                                      beq #0x5ad68c
005ad670  00 20 93 e5                                      ldr r2, [r3]
005ad674  03 00 a0 e1                                      mov r0, r3
005ad678  01 20 42 e2                                      sub r2, r2, #1
005ad67c  00 00 52 e3                                      cmp r2, #0
005ad680  00 20 83 e5                                      str r2, [r3]
005ad684  00 00 00 1a                                      bne #0x5ad68c
005ad688  08 83 f5 eb                                      bl #0x30e2b0
005ad68c  04 40 44 e2                                      sub r4, r4, #4
005ad690  06 00 54 e1                                      cmp r4, r6
005ad694  f2 ff ff 1a                                      bne #0x5ad664
005ad698  40 41 95 e5                                      ldr r4, [r5, #0x140]
005ad69c  00 00 54 e3                                      cmp r4, #0
005ad6a0  04 00 00 0a                                      beq #0x5ad6b8
005ad6a4  00 30 94 e5                                      ldr r3, [r4]
005ad6a8  01 30 43 e2                                      sub r3, r3, #1
005ad6ac  00 00 53 e3                                      cmp r3, #0
005ad6b0  00 30 84 e5                                      str r3, [r4]
005ad6b4  6f 00 00 0a                                      beq #0x5ad878
005ad6b8  28 01 95 e5                                      ldr r0, [r5, #0x128]
005ad6bc  00 00 50 e3                                      cmp r0, #0
005ad6c0  00 00 00 0a                                      beq #0x5ad6c8
005ad6c4  ae bf f5 eb                                      bl #0x31d584
005ad6c8  24 41 95 e5                                      ldr r4, [r5, #0x124]
005ad6cc  00 00 54 e3                                      cmp r4, #0
005ad6d0  04 00 00 0a                                      beq #0x5ad6e8
005ad6d4  00 30 94 e5                                      ldr r3, [r4]
005ad6d8  01 30 43 e2                                      sub r3, r3, #1
005ad6dc  00 00 53 e3                                      cmp r3, #0
005ad6e0  00 30 84 e5                                      str r3, [r4]
005ad6e4  68 00 00 0a                                      beq #0x5ad88c
005ad6e8  11 0e 85 e2                                      add r0, r5, #0x110
005ad6ec  86 f8 ff eb                                      bl #0x5ab90c
005ad6f0  d8 30 95 e5                                      ldr r3, [r5, #0xd8]
005ad6f4  00 00 53 e3                                      cmp r3, #0
005ad6f8  03 00 00 0a                                      beq #0x5ad70c
005ad6fc  03 00 a0 e1                                      mov r0, r3
005ad700  00 30 93 e5                                      ldr r3, [r3]
005ad704  0f e0 a0 e1                                      mov lr, pc
005ad708  04 f0 93 e5                                      ldr pc, [r3, #4]
005ad70c  c8 00 85 e2                                      add r0, r5, #0xc8
005ad710  19 f3 ff eb                                      bl #0x5aa37c
005ad714  bc 00 85 e2                                      add r0, r5, #0xbc
005ad718  8e f8 ff eb                                      bl #0x5ab958
005ad71c  b8 00 95 e5                                      ldr r0, [r5, #0xb8]
005ad720  00 00 50 e3                                      cmp r0, #0
005ad724  00 00 00 0a                                      beq #0x5ad72c
005ad728  95 bf f5 eb                                      bl #0x31d584
005ad72c  b4 00 95 e5                                      ldr r0, [r5, #0xb4]
005ad730  00 00 50 e3                                      cmp r0, #0
005ad734  00 00 00 0a                                      beq #0x5ad73c
005ad738  91 bf f5 eb                                      bl #0x31d584
005ad73c  b0 00 95 e5                                      ldr r0, [r5, #0xb0]
005ad740  00 00 50 e3                                      cmp r0, #0
005ad744  00 00 00 0a                                      beq #0x5ad74c
005ad748  8d bf f5 eb                                      bl #0x31d584
005ad74c  ac 40 95 e5                                      ldr r4, [r5, #0xac]
005ad750  00 00 54 e3                                      cmp r4, #0
005ad754  04 00 00 0a                                      beq #0x5ad76c
005ad758  00 30 94 e5                                      ldr r3, [r4]
005ad75c  01 30 43 e2                                      sub r3, r3, #1
005ad760  00 00 53 e3                                      cmp r3, #0
005ad764  00 30 84 e5                                      str r3, [r4]
005ad768  3d 00 00 0a                                      beq #0x5ad864
005ad76c  a8 40 95 e5                                      ldr r4, [r5, #0xa8]
005ad770  00 00 54 e3                                      cmp r4, #0
005ad774  04 00 00 0a                                      beq #0x5ad78c
005ad778  00 30 94 e5                                      ldr r3, [r4]
005ad77c  01 30 43 e2                                      sub r3, r3, #1
005ad780  00 00 53 e3                                      cmp r3, #0
005ad784  00 30 84 e5                                      str r3, [r4]
005ad788  30 00 00 0a                                      beq #0x5ad850
005ad78c  a4 40 95 e5                                      ldr r4, [r5, #0xa4]
005ad790  00 00 54 e3                                      cmp r4, #0
005ad794  04 00 00 0a                                      beq #0x5ad7ac
005ad798  00 30 94 e5                                      ldr r3, [r4]
005ad79c  01 30 43 e2                                      sub r3, r3, #1
005ad7a0  00 00 53 e3                                      cmp r3, #0
005ad7a4  00 30 84 e5                                      str r3, [r4]
005ad7a8  23 00 00 0a                                      beq #0x5ad83c
005ad7ac  40 00 95 e5                                      ldr r0, [r5, #0x40]
005ad7b0  00 00 50 e3                                      cmp r0, #0
005ad7b4  10 00 00 0a                                      beq #0x5ad7fc
005ad7b8  00 30 90 e5                                      ldr r3, [r0]
005ad7bc  01 30 43 e2                                      sub r3, r3, #1
005ad7c0  00 00 53 e3                                      cmp r3, #0
005ad7c4  00 30 80 e5                                      str r3, [r0]
005ad7c8  0b 00 00 1a                                      bne #0x5ad7fc
005ad7cc  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005ad7d0  00 00 53 e3                                      cmp r3, #0
005ad7d4  05 00 00 1a                                      bne #0x5ad7f0
005ad7d8  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
005ad7dc  50 20 90 e5                                      ldr r2, [r0, #0x50]
005ad7e0  03 30 97 e7                                      ldr r3, [r7, r3]
005ad7e4  00 10 93 e5                                      ldr r1, [r3]
005ad7e8  00 10 82 e5                                      str r1, [r2]
005ad7ec  00 20 83 e5                                      str r2, [r3]
005ad7f0  00 30 a0 e3                                      mov r3, #0
005ad7f4  50 30 80 e5                                      str r3, [r0, #0x50]
005ad7f8  ac 82 f5 eb                                      bl #0x30e2b0
005ad7fc  20 30 85 e2                                      add r3, r5, #0x20
005ad800  14 00 93 e5                                      ldr r0, [r3, #0x14]
005ad804  03 00 50 e1                                      cmp r0, r3
005ad808  02 00 00 0a                                      beq #0x5ad818
005ad80c  00 00 50 e3                                      cmp r0, #0
005ad810  00 00 00 0a                                      beq #0x5ad818
005ad814  0d 8b f5 eb                                      bl #0x310450
005ad818  08 30 85 e2                                      add r3, r5, #8
005ad81c  14 00 93 e5                                      ldr r0, [r3, #0x14]
005ad820  03 00 50 e1                                      cmp r0, r3
005ad824  02 00 00 0a                                      beq #0x5ad834
005ad828  00 00 50 e3                                      cmp r0, #0
005ad82c  00 00 00 0a                                      beq #0x5ad834
005ad830  06 8b f5 eb                                      bl #0x310450
005ad834  05 00 a0 e1                                      mov r0, r5
005ad838  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005ad83c  04 00 a0 e1                                      mov r0, r4
005ad840  75 cc ff eb                                      bl #0x5a0a1c
005ad844  04 00 a0 e1                                      mov r0, r4
005ad848  98 82 f5 eb                                      bl #0x30e2b0
005ad84c  d6 ff ff ea                                      b #0x5ad7ac
005ad850  04 00 a0 e1                                      mov r0, r4
005ad854  70 cc ff eb                                      bl #0x5a0a1c
005ad858  04 00 a0 e1                                      mov r0, r4
005ad85c  93 82 f5 eb                                      bl #0x30e2b0
005ad860  c9 ff ff ea                                      b #0x5ad78c
005ad864  04 00 a0 e1                                      mov r0, r4
005ad868  6b cc ff eb                                      bl #0x5a0a1c
005ad86c  04 00 a0 e1                                      mov r0, r4
005ad870  8e 82 f5 eb                                      bl #0x30e2b0
005ad874  bc ff ff ea                                      b #0x5ad76c
005ad878  04 00 a0 e1                                      mov r0, r4
005ad87c  66 cc ff eb                                      bl #0x5a0a1c
005ad880  04 00 a0 e1                                      mov r0, r4
005ad884  89 82 f5 eb                                      bl #0x30e2b0
005ad888  8a ff ff ea                                      b #0x5ad6b8
005ad88c  04 00 a0 e1                                      mov r0, r4
005ad890  b8 79 00 eb                                      bl #0x5cbf78
005ad894  04 00 a0 e1                                      mov r0, r4
005ad898  84 82 f5 eb                                      bl #0x30e2b0
005ad89c  91 ff ff ea                                      b #0x5ad6e8
; mapping-symbol data/literal pool
005ad8a0  cc 74 3e 00 84 2f 00 00 c0 3c 00 00              .byte 0xcc, 0x74, 0x3e, 0x00, 0x84, 0x2f, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005ad8ac, declared_size=752, range_size=752, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver16drawPendingBatchEv
; demangled: glitch::video::IVideoDriver::drawPendingBatch()
; decoder-mode: arm
005ad8ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005ad8b0  20 51 90 e5                                      ldr r5, [r0, #0x120]
005ad8b4  90 d0 4d e2                                      sub sp, sp, #0x90
005ad8b8  00 40 a0 e1                                      mov r4, r0
005ad8bc  00 00 55 e3                                      cmp r5, #0
005ad8c0  6a 00 00 0a                                      beq #0x5ada70
005ad8c4  50 30 95 e5                                      ldr r3, [r5, #0x50]
005ad8c8  00 00 53 e3                                      cmp r3, #0
005ad8cc  15 00 00 0a                                      beq #0x5ad928
005ad8d0  58 60 95 e5                                      ldr r6, [r5, #0x58]
005ad8d4  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
005ad8d8  1f 20 03 e2                                      and r2, r3, #0x1f
005ad8dc  01 00 52 e3                                      cmp r2, #1
005ad8e0  65 00 00 9a                                      bls #0x5ada7c
005ad8e4  01 20 42 e2                                      sub r2, r2, #1
005ad8e8  1f 30 c3 e3                                      bic r3, r3, #0x1f
005ad8ec  03 30 82 e1                                      orr r3, r2, r3
005ad8f0  13 30 c6 e5                                      strb r3, [r6, #0x13]
005ad8f4  5c 60 95 e5                                      ldr r6, [r5, #0x5c]
005ad8f8  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
005ad8fc  1f 20 03 e2                                      and r2, r3, #0x1f
005ad900  01 00 52 e3                                      cmp r2, #1
005ad904  66 00 00 9a                                      bls #0x5adaa4
005ad908  01 20 42 e2                                      sub r2, r2, #1
005ad90c  1f 30 c3 e3                                      bic r3, r3, #0x1f
005ad910  03 30 82 e1                                      orr r3, r2, r3
005ad914  13 30 c6 e5                                      strb r3, [r6, #0x13]
005ad918  00 30 a0 e3                                      mov r3, #0
005ad91c  54 30 85 e5                                      str r3, [r5, #0x54]
005ad920  50 30 85 e5                                      str r3, [r5, #0x50]
005ad924  20 51 94 e5                                      ldr r5, [r4, #0x120]
005ad928  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
005ad92c  48 10 95 e5                                      ldr r1, [r5, #0x48]
005ad930  c5 84 f5 eb                                      bl #0x30ec4c
005ad934  00 00 50 e3                                      cmp r0, #0
005ad938  4c 00 00 0a                                      beq #0x5ada70
005ad93c  44 00 95 e5                                      ldr r0, [r5, #0x44]
005ad940  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
005ad944  c0 84 f5 eb                                      bl #0x30ec4c
005ad948  00 00 50 e3                                      cmp r0, #0
005ad94c  47 00 00 0a                                      beq #0x5ada70
005ad950  05 00 a0 e1                                      mov r0, r5
005ad954  4b ec ff eb                                      bl #0x5a8a88
005ad958  01 10 a0 e3                                      mov r1, #1
005ad95c  00 30 94 e5                                      ldr r3, [r4]
005ad960  04 00 a0 e1                                      mov r0, r4
005ad964  0f e0 a0 e1                                      mov lr, pc
005ad968  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005ad96c  48 70 8d e2                                      add r7, sp, #0x48
005ad970  00 10 a0 e1                                      mov r1, r0
005ad974  07 00 a0 e1                                      mov r0, r7
005ad978  5e f5 ff eb                                      bl #0x5aaef8
005ad97c  88 10 dd e5                                      ldrb r1, [sp, #0x88]
005ad980  00 00 51 e3                                      cmp r1, #0
005ad984  00 60 a0 13                                      movne r6, #0
005ad988  5a 00 00 0a                                      beq #0x5adaf8
005ad98c  28 31 94 e5                                      ldr r3, [r4, #0x128]
005ad990  e8 50 94 e5                                      ldr r5, [r4, #0xe8]
005ad994  03 00 a0 e1                                      mov r0, r3
005ad998  00 30 93 e5                                      ldr r3, [r3]
005ad99c  0f e0 a0 e1                                      mov lr, pc
005ad9a0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005ad9a4  20 21 94 e5                                      ldr r2, [r4, #0x120]
005ad9a8  e8 00 84 e5                                      str r0, [r4, #0xe8]
005ad9ac  00 10 94 e5                                      ldr r1, [r4]
005ad9b0  14 30 92 e5                                      ldr r3, [r2, #0x14]
005ad9b4  04 00 a0 e1                                      mov r0, r4
005ad9b8  00 c2 91 e5                                      ldr ip, [r1, #0x200]
005ad9bc  00 00 53 e3                                      cmp r3, #0
005ad9c0  8c 30 8d e5                                      str r3, [sp, #0x8c]
005ad9c4  00 20 93 15                                      ldrne r2, [r3]
005ad9c8  8c 10 8d e2                                      add r1, sp, #0x8c
005ad9cc  01 20 82 12                                      addne r2, r2, #1
005ad9d0  00 20 83 15                                      strne r2, [r3]
005ad9d4  20 21 94 15                                      ldrne r2, [r4, #0x120]
005ad9d8  00 30 a0 e3                                      mov r3, #0
005ad9dc  18 20 82 e2                                      add r2, r2, #0x18
005ad9e0  3c ff 2f e1                                      blx ip
005ad9e4  8c 80 9d e5                                      ldr r8, [sp, #0x8c]
005ad9e8  00 00 58 e3                                      cmp r8, #0
005ad9ec  04 00 00 0a                                      beq #0x5ada04
005ad9f0  00 30 98 e5                                      ldr r3, [r8]
005ad9f4  01 30 43 e2                                      sub r3, r3, #1
005ad9f8  00 00 53 e3                                      cmp r3, #0
005ad9fc  00 30 88 e5                                      str r3, [r8]
005ada00  2d 00 00 0a                                      beq #0x5adabc
005ada04  00 00 56 e3                                      cmp r6, #0
005ada08  e8 50 84 e5                                      str r5, [r4, #0xe8]
005ada0c  4b 00 00 1a                                      bne #0x5adb40
005ada10  20 01 94 e5                                      ldr r0, [r4, #0x120]
005ada14  97 2b 04 eb                                      bl #0x6b8878
005ada18  10 51 94 e5                                      ldr r5, [r4, #0x110]
005ada1c  14 11 94 e5                                      ldr r1, [r4, #0x114]
005ada20  1c 01 94 e5                                      ldr r0, [r4, #0x11c]
005ada24  01 10 65 e0                                      rsb r1, r5, r1
005ada28  01 00 80 e2                                      add r0, r0, #1
005ada2c  41 11 a0 e1                                      asr r1, r1, #2
005ada30  3d 84 f5 eb                                      bl #0x30eb2c
005ada34  1c 11 84 e5                                      str r1, [r4, #0x11c]
005ada38  01 51 95 e7                                      ldr r5, [r5, r1, lsl #2]
005ada3c  20 11 94 e5                                      ldr r1, [r4, #0x120]
005ada40  64 20 95 e5                                      ldr r2, [r5, #0x64]
005ada44  64 30 91 e5                                      ldr r3, [r1, #0x64]
005ada48  68 c0 91 e5                                      ldr ip, [r1, #0x68]
005ada4c  68 10 95 e5                                      ldr r1, [r5, #0x68]
005ada50  0c 00 63 e0                                      rsb r0, r3, ip
005ada54  01 10 62 e0                                      rsb r1, r2, r1
005ada58  01 00 50 e1                                      cmp r0, r1
005ada5c  3e 00 00 0a                                      beq #0x5adb5c
005ada60  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ada64  08 30 83 e3                                      orr r3, r3, #8
005ada68  38 31 84 e5                                      str r3, [r4, #0x138]
005ada6c  20 51 84 e5                                      str r5, [r4, #0x120]
005ada70  01 00 a0 e3                                      mov r0, #1
005ada74  90 d0 8d e2                                      add sp, sp, #0x90
005ada78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005ada7c  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
005ada80  20 00 13 e3                                      tst r3, #0x20
005ada84  11 00 00 1a                                      bne #0x5adad0
005ada88  00 30 a0 e3                                      mov r3, #0
005ada8c  13 30 c6 e5                                      strb r3, [r6, #0x13]
005ada90  5c 60 95 e5                                      ldr r6, [r5, #0x5c]
005ada94  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
005ada98  1f 20 03 e2                                      and r2, r3, #0x1f
005ada9c  01 00 52 e3                                      cmp r2, #1
005adaa0  98 ff ff 8a                                      bhi #0x5ad908
005adaa4  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
005adaa8  20 00 13 e3                                      tst r3, #0x20
005adaac  0c 00 00 1a                                      bne #0x5adae4
005adab0  00 30 a0 e3                                      mov r3, #0
005adab4  13 30 c6 e5                                      strb r3, [r6, #0x13]
005adab8  96 ff ff ea                                      b #0x5ad918
005adabc  08 00 a0 e1                                      mov r0, r8
005adac0  d5 cb ff eb                                      bl #0x5a0a1c
005adac4  08 00 a0 e1                                      mov r0, r8
005adac8  f8 81 f5 eb                                      bl #0x30e2b0
005adacc  cc ff ff ea                                      b #0x5ada04
005adad0  00 30 96 e5                                      ldr r3, [r6]
005adad4  06 00 a0 e1                                      mov r0, r6
005adad8  0f e0 a0 e1                                      mov lr, pc
005adadc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005adae0  e8 ff ff ea                                      b #0x5ada88
005adae4  00 30 96 e5                                      ldr r3, [r6]
005adae8  06 00 a0 e1                                      mov r0, r6
005adaec  0f e0 a0 e1                                      mov lr, pc
005adaf0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005adaf4  ed ff ff ea                                      b #0x5adab0
005adaf8  00 30 94 e5                                      ldr r3, [r4]
005adafc  04 50 8d e2                                      add r5, sp, #4
005adb00  40 20 a0 e3                                      mov r2, #0x40
005adb04  05 00 a0 e1                                      mov r0, r5
005adb08  6c 80 93 e5                                      ldr r8, [r3, #0x6c]
005adb0c  01 60 a0 e3                                      mov r6, #1
005adb10  52 82 f5 eb                                      bl #0x30e460
005adb14  fe 35 a0 e3                                      mov r3, #0x3f800000
005adb18  44 60 cd e5                                      strb r6, [sp, #0x44]
005adb1c  40 30 8d e5                                      str r3, [sp, #0x40]
005adb20  04 30 8d e5                                      str r3, [sp, #4]
005adb24  18 30 8d e5                                      str r3, [sp, #0x18]
005adb28  2c 30 8d e5                                      str r3, [sp, #0x2c]
005adb2c  05 20 a0 e1                                      mov r2, r5
005adb30  04 00 a0 e1                                      mov r0, r4
005adb34  06 10 a0 e1                                      mov r1, r6
005adb38  38 ff 2f e1                                      blx r8
005adb3c  92 ff ff ea                                      b #0x5ad98c
005adb40  07 20 a0 e1                                      mov r2, r7
005adb44  00 30 94 e5                                      ldr r3, [r4]
005adb48  04 00 a0 e1                                      mov r0, r4
005adb4c  01 10 a0 e3                                      mov r1, #1
005adb50  0f e0 a0 e1                                      mov lr, pc
005adb54  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005adb58  ac ff ff ea                                      b #0x5ada10
005adb5c  03 00 5c e1                                      cmp ip, r3
005adb60  c1 ff ff 0a                                      beq #0x5ada6c
005adb64  00 00 d3 e5                                      ldrb r0, [r3]
005adb68  00 10 d2 e5                                      ldrb r1, [r2]
005adb6c  01 00 50 e1                                      cmp r0, r1
005adb70  04 00 00 0a                                      beq #0x5adb88
005adb74  b9 ff ff ea                                      b #0x5ada60
005adb78  00 00 d3 e5                                      ldrb r0, [r3]
005adb7c  01 10 f2 e5                                      ldrb r1, [r2, #1]!
005adb80  01 00 50 e1                                      cmp r0, r1
005adb84  b5 ff ff 1a                                      bne #0x5ada60
005adb88  01 30 83 e2                                      add r3, r3, #1
005adb8c  0c 00 53 e1                                      cmp r3, ip
005adb90  f8 ff ff 1a                                      bne #0x5adb78
005adb94  20 51 84 e5                                      str r5, [r4, #0x120]
005adb98  b4 ff ff ea                                      b #0x5ada70

; FUNCTION 0x005adb9c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver5flushEv
; demangled: glitch::video::IVideoDriver::flush()
; decoder-mode: arm
005adb9c  42 ff ff ea                                      b #0x5ad8ac

; FUNCTION 0x005adba0, declared_size=1032, range_size=1032, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver11appendBatchERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingE
; demangled: glitch::video::IVideoDriver::appendBatch(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)
; decoder-mode: arm
005adba0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005adba4  20 81 90 e5                                      ldr r8, [r0, #0x120]
005adba8  10 a0 92 e5                                      ldr sl, [r2, #0x10]
005adbac  02 50 a0 e1                                      mov r5, r2
005adbb0  0c 20 92 e5                                      ldr r2, [r2, #0xc]
005adbb4  64 d0 4d e2                                      sub sp, sp, #0x64
005adbb8  00 40 a0 e1                                      mov r4, r0
005adbbc  01 60 a0 e1                                      mov r6, r1
005adbc0  38 00 98 e5                                      ldr r0, [r8, #0x38]
005adbc4  48 10 98 e5                                      ldr r1, [r8, #0x48]
005adbc8  0a a0 62 e0                                      rsb sl, r2, sl
005adbcc  03 90 a0 e1                                      mov sb, r3
005adbd0  1d 84 f5 eb                                      bl #0x30ec4c
005adbd4  c4 73 9f e5                                      ldr r7, [pc, #0x3c4]
005adbd8  00 00 5a e1                                      cmp sl, r0
005adbdc  07 70 8f e0                                      add r7, pc, r7
005adbe0  1a 00 00 9a                                      bls #0x5adc50
005adbe4  88 30 94 e5                                      ldr r3, [r4, #0x88]
005adbe8  02 0c 13 e3                                      tst r3, #0x200
005adbec  a5 00 00 0a                                      beq #0x5ade88
005adbf0  04 00 a0 e1                                      mov r0, r4
005adbf4  2c 11 94 e5                                      ldr r1, [r4, #0x12c]
005adbf8  34 21 d4 e5                                      ldrb r2, [r4, #0x134]
005adbfc  e8 30 94 e5                                      ldr r3, [r4, #0xe8]
005adc00  45 f2 ff eb                                      bl #0x5aa51c
005adc04  09 30 a0 e1                                      mov r3, sb
005adc08  06 10 a0 e1                                      mov r1, r6
005adc0c  05 20 a0 e1                                      mov r2, r5
005adc10  00 c0 94 e5                                      ldr ip, [r4]
005adc14  04 00 a0 e1                                      mov r0, r4
005adc18  0f e0 a0 e1                                      mov lr, pc
005adc1c  00 f2 9c e5                                      ldr pc, [ip, #0x200]
005adc20  88 30 94 e5                                      ldr r3, [r4, #0x88]
005adc24  02 0c 13 e3                                      tst r3, #0x200
005adc28  02 00 00 1a                                      bne #0x5adc38
005adc2c  01 00 a0 e3                                      mov r0, #1
005adc30  64 d0 8d e2                                      add sp, sp, #0x64
005adc34  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005adc38  04 00 a0 e1                                      mov r0, r4
005adc3c  24 11 94 e5                                      ldr r1, [r4, #0x124]
005adc40  00 20 a0 e3                                      mov r2, #0
005adc44  e8 30 94 e5                                      ldr r3, [r4, #0xe8]
005adc48  33 f2 ff eb                                      bl #0x5aa51c
005adc4c  f6 ff ff ea                                      b #0x5adc2c
005adc50  4c 10 98 e5                                      ldr r1, [r8, #0x4c]
005adc54  40 00 98 e5                                      ldr r0, [r8, #0x40]
005adc58  fb 83 f5 eb                                      bl #0x30ec4c
005adc5c  00 80 a0 e1                                      mov r8, r0
005adc60  05 00 a0 e1                                      mov r0, r5
005adc64  a5 c9 ff eb                                      bl #0x5a0300
005adc68  80 00 80 e0                                      add r0, r0, r0, lsl #1
005adc6c  08 00 50 e1                                      cmp r0, r8
005adc70  db ff ff 8a                                      bhi #0x5adbe4
005adc74  10 a0 95 e5                                      ldr sl, [r5, #0x10]
005adc78  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005adc7c  0c 31 94 e5                                      ldr r3, [r4, #0x10c]
005adc80  0a a0 62 e0                                      rsb sl, r2, sl
005adc84  03 00 5a e1                                      cmp sl, r3
005adc88  d5 ff ff 8a                                      bhi #0x5adbe4
005adc8c  b6 31 d5 e1                                      ldrh r3, [r5, #0x16]
005adc90  03 00 53 e3                                      cmp r3, #3
005adc94  d2 ff ff da                                      ble #0x5adbe4
005adc98  b4 31 d5 e1                                      ldrh r3, [r5, #0x14]
005adc9c  01 00 53 e3                                      cmp r3, #1
005adca0  02 00 00 0a                                      beq #0x5adcb0
005adca4  00 30 95 e5                                      ldr r3, [r5]
005adca8  00 00 53 e3                                      cmp r3, #0
005adcac  cc ff ff 1a                                      bne #0x5adbe4
005adcb0  05 00 a0 e1                                      mov r0, r5
005adcb4  20 81 94 e5                                      ldr r8, [r4, #0x120]
005adcb8  90 c9 ff eb                                      bl #0x5a0300
005adcbc  0a 10 a0 e1                                      mov r1, sl
005adcc0  80 20 80 e0                                      add r2, r0, r0, lsl #1
005adcc4  08 00 a0 e1                                      mov r0, r8
005adcc8  dc d0 ff eb                                      bl #0x5a2040
005adccc  00 00 50 e3                                      cmp r0, #0
005adcd0  83 00 00 0a                                      beq #0x5adee4
005adcd4  20 01 94 e5                                      ldr r0, [r4, #0x120]
005adcd8  77 d2 ff eb                                      bl #0x5a26bc
005adcdc  e8 80 94 e5                                      ldr r8, [r4, #0xe8]
005adce0  00 a0 96 e5                                      ldr sl, [r6]
005adce4  00 00 58 e3                                      cmp r8, #0
005adce8  94 00 00 0a                                      beq #0x5adf40
005adcec  00 30 98 e5                                      ldr r3, [r8]
005adcf0  04 30 83 e2                                      add r3, r3, #4
005adcf4  54 30 8d e5                                      str r3, [sp, #0x54]
005adcf8  2c 21 94 e5                                      ldr r2, [r4, #0x12c]
005adcfc  28 a1 94 e5                                      ldr sl, [r4, #0x128]
005add00  20 91 94 e5                                      ldr sb, [r4, #0x120]
005add04  4c 20 8d e5                                      str r2, [sp, #0x4c]
005add08  00 10 9a e5                                      ldr r1, [sl]
005add0c  34 21 d4 e5                                      ldrb r2, [r4, #0x134]
005add10  0a 00 a0 e1                                      mov r0, sl
005add14  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005add18  00 80 a0 e3                                      mov r8, #0
005add1c  50 30 8d e5                                      str r3, [sp, #0x50]
005add20  24 31 94 e5                                      ldr r3, [r4, #0x124]
005add24  3c 20 8d e5                                      str r2, [sp, #0x3c]
005add28  40 30 8d e5                                      str r3, [sp, #0x40]
005add2c  0f e0 a0 e1                                      mov lr, pc
005add30  14 f0 91 e5                                      ldr pc, [r1, #0x14]
005add34  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005add38  10 c0 95 e5                                      ldr ip, [r5, #0x10]
005add3c  00 b0 90 e5                                      ldr fp, [r0]
005add40  05 00 a0 e1                                      mov r0, r5
005add44  48 c0 8d e5                                      str ip, [sp, #0x48]
005add48  44 10 8d e5                                      str r1, [sp, #0x44]
005add4c  6b c9 ff eb                                      bl #0x5a0300
005add50  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005add54  40 30 9d e5                                      ldr r3, [sp, #0x40]
005add58  20 71 94 e5                                      ldr r7, [r4, #0x120]
005add5c  44 10 9d e5                                      ldr r1, [sp, #0x44]
005add60  00 20 8d e5                                      str r2, [sp]
005add64  10 30 8d e5                                      str r3, [sp, #0x10]
005add68  54 20 9d e5                                      ldr r2, [sp, #0x54]
005add6c  48 30 9d e5                                      ldr r3, [sp, #0x48]
005add70  18 c0 89 e2                                      add ip, sb, #0x18
005add74  04 b0 8b e2                                      add fp, fp, #4
005add78  14 90 89 e2                                      add sb, sb, #0x14
005add7c  0c c0 8d e5                                      str ip, [sp, #0xc]
005add80  04 20 8d e5                                      str r2, [sp, #4]
005add84  20 30 8d e5                                      str r3, [sp, #0x20]
005add88  08 90 8d e5                                      str sb, [sp, #8]
005add8c  14 b0 8d e5                                      str fp, [sp, #0x14]
005add90  18 40 8d e5                                      str r4, [sp, #0x18]
005add94  1c 10 8d e5                                      str r1, [sp, #0x1c]
005add98  28 00 8d e5                                      str r0, [sp, #0x28]
005add9c  24 80 8d e5                                      str r8, [sp, #0x24]
005adda0  48 10 97 e5                                      ldr r1, [r7, #0x48]
005adda4  3c 00 97 e5                                      ldr r0, [r7, #0x3c]
005adda8  a7 83 f5 eb                                      bl #0x30ec4c
005addac  2c 00 8d e5                                      str r0, [sp, #0x2c]
005addb0  4c 10 97 e5                                      ldr r1, [r7, #0x4c]
005addb4  44 00 97 e5                                      ldr r0, [r7, #0x44]
005addb8  a3 83 f5 eb                                      bl #0x30ec4c
005addbc  ab 7a 0a e3                                      movw r7, #0xaaab
005addc0  aa 7a 4a e3                                      movt r7, #0xaaaa
005addc4  97 c0 80 e0                                      umull ip, r0, r7, r0
005addc8  00 30 e0 e3                                      mvn r3, #0
005addcc  a0 00 a0 e1                                      lsr r0, r0, #1
005addd0  05 20 a0 e1                                      mov r2, r5
005addd4  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005addd8  06 10 a0 e1                                      mov r1, r6
005adddc  30 00 8d e5                                      str r0, [sp, #0x30]
005adde0  34 30 8d e5                                      str r3, [sp, #0x34]
005adde4  0a 00 a0 e1                                      mov r0, sl
005adde8  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005addec  3c ff 2f e1                                      blx ip
005addf0  20 61 94 e5                                      ldr r6, [r4, #0x120]
005addf4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005addf8  10 b0 95 e5                                      ldr fp, [r5, #0x10]
005addfc  3c a0 96 e5                                      ldr sl, [r6, #0x3c]
005ade00  48 90 96 e5                                      ldr sb, [r6, #0x48]
005ade04  0b b0 63 e0                                      rsb fp, r3, fp
005ade08  0a 00 a0 e1                                      mov r0, sl
005ade0c  09 10 a0 e1                                      mov r1, sb
005ade10  8d 83 f5 eb                                      bl #0x30ec4c
005ade14  7b b0 ff e6                                      uxth fp, fp
005ade18  70 b0 fb e6                                      uxtah fp, fp, r0
005ade1c  99 0b 09 e0                                      mul sb, sb, fp
005ade20  14 30 96 e5                                      ldr r3, [r6, #0x14]
005ade24  09 00 5a e1                                      cmp sl, sb
005ade28  09 a0 a0 31                                      movlo sl, sb
005ade2c  3c a0 86 e5                                      str sl, [r6, #0x3c]
005ade30  08 a0 83 e5                                      str sl, [r3, #8]
005ade34  20 41 94 e5                                      ldr r4, [r4, #0x120]
005ade38  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
005ade3c  44 00 94 e5                                      ldr r0, [r4, #0x44]
005ade40  81 83 f5 eb                                      bl #0x30ec4c
005ade44  97 20 87 e0                                      umull r2, r7, r7, r0
005ade48  05 00 a0 e1                                      mov r0, r5
005ade4c  2b c9 ff eb                                      bl #0x5a0300
005ade50  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
005ade54  a7 70 a0 e1                                      lsr r7, r7, #1
005ade58  07 70 80 e0                                      add r7, r0, r7
005ade5c  83 30 83 e0                                      add r3, r3, r3, lsl #1
005ade60  44 10 94 e5                                      ldr r1, [r4, #0x44]
005ade64  97 03 03 e0                                      mul r3, r7, r3
005ade68  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
005ade6c  01 00 53 e1                                      cmp r3, r1
005ade70  01 30 a0 31                                      movlo r3, r1
005ade74  20 30 84 e5                                      str r3, [r4, #0x20]
005ade78  28 20 84 e5                                      str r2, [r4, #0x28]
005ade7c  24 80 84 e5                                      str r8, [r4, #0x24]
005ade80  44 30 84 e5                                      str r3, [r4, #0x44]
005ade84  68 ff ff ea                                      b #0x5adc2c
005ade88  04 00 a0 e1                                      mov r0, r4
005ade8c  86 fe ff eb                                      bl #0x5ad8ac
005ade90  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ade94  08 00 13 e3                                      tst r3, #8
005ade98  54 ff ff 0a                                      beq #0x5adbf0
005ade9c  28 01 94 e5                                      ldr r0, [r4, #0x128]
005adea0  08 30 c3 e3                                      bic r3, r3, #8
005adea4  38 31 84 e5                                      str r3, [r4, #0x138]
005adea8  20 21 94 e5                                      ldr r2, [r4, #0x120]
005adeac  00 30 90 e5                                      ldr r3, [r0]
005adeb0  00 00 52 e3                                      cmp r2, #0
005adeb4  18 30 93 e5                                      ldr r3, [r3, #0x18]
005adeb8  58 20 8d e5                                      str r2, [sp, #0x58]
005adebc  04 10 92 15                                      ldrne r1, [r2, #4]
005adec0  01 10 81 12                                      addne r1, r1, #1
005adec4  04 10 82 15                                      strne r1, [r2, #4]
005adec8  58 10 8d e2                                      add r1, sp, #0x58
005adecc  33 ff 2f e1                                      blx r3
005aded0  58 00 9d e5                                      ldr r0, [sp, #0x58]
005aded4  00 00 50 e3                                      cmp r0, #0
005aded8  44 ff ff 0a                                      beq #0x5adbf0
005adedc  a8 bd f5 eb                                      bl #0x31d584
005adee0  42 ff ff ea                                      b #0x5adbf0
005adee4  04 00 a0 e1                                      mov r0, r4
005adee8  6f fe ff eb                                      bl #0x5ad8ac
005adeec  38 31 94 e5                                      ldr r3, [r4, #0x138]
005adef0  08 00 13 e3                                      tst r3, #8
005adef4  76 ff ff 0a                                      beq #0x5adcd4
005adef8  28 01 94 e5                                      ldr r0, [r4, #0x128]
005adefc  08 30 c3 e3                                      bic r3, r3, #8
005adf00  38 31 84 e5                                      str r3, [r4, #0x138]
005adf04  20 21 94 e5                                      ldr r2, [r4, #0x120]
005adf08  00 30 90 e5                                      ldr r3, [r0]
005adf0c  00 00 52 e3                                      cmp r2, #0
005adf10  18 30 93 e5                                      ldr r3, [r3, #0x18]
005adf14  5c 20 8d e5                                      str r2, [sp, #0x5c]
005adf18  04 10 92 15                                      ldrne r1, [r2, #4]
005adf1c  01 10 81 12                                      addne r1, r1, #1
005adf20  04 10 82 15                                      strne r1, [r2, #4]
005adf24  5c 10 8d e2                                      add r1, sp, #0x5c
005adf28  33 ff 2f e1                                      blx r3
005adf2c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005adf30  00 00 50 e3                                      cmp r0, #0
005adf34  66 ff ff 0a                                      beq #0x5adcd4
005adf38  91 bd f5 eb                                      bl #0x31d584
005adf3c  64 ff ff ea                                      b #0x5adcd4
005adf40  5c 90 9f e5                                      ldr sb, [pc, #0x5c]
005adf44  1e 20 a0 e3                                      mov r2, #0x1e
005adf48  ff 10 a0 e3                                      mov r1, #0xff
005adf4c  09 b0 97 e7                                      ldr fp, [r7, sb]
005adf50  0b 00 a0 e1                                      mov r0, fp
005adf54  41 81 f5 eb                                      bl #0x30e460
005adf58  10 30 9a e5                                      ldr r3, [sl, #0x10]
005adf5c  14 20 8a e2                                      add r2, sl, #0x14
005adf60  02 00 53 e1                                      cmp r3, r2
005adf64  0a 00 00 0a                                      beq #0x5adf94
005adf68  24 10 8a e2                                      add r1, sl, #0x24
005adf6c  03 10 61 e0                                      rsb r1, r1, r3
005adf70  0f 10 c1 e3                                      bic r1, r1, #0xf
005adf74  10 10 81 e2                                      add r1, r1, #0x10
005adf78  bc 31 da e1                                      ldrh r3, [sl, #0x1c]
005adf7c  48 22 a0 e1                                      asr r2, r8, #4
005adf80  10 80 88 e2                                      add r8, r8, #0x10
005adf84  01 00 58 e1                                      cmp r8, r1
005adf88  0b 20 c3 e7                                      strb r2, [r3, fp]
005adf8c  10 a0 8a e2                                      add sl, sl, #0x10
005adf90  f8 ff ff 1a                                      bne #0x5adf78
005adf94  09 90 97 e7                                      ldr sb, [r7, sb]
005adf98  54 90 8d e5                                      str sb, [sp, #0x54]
005adf9c  55 ff ff ea                                      b #0x5adcf8
; mapping-symbol data/literal pool
005adfa0  b4 6e 3e 00 b8 39 00 00                          .byte 0xb4, 0x6e, 0x3e, 0x00, 0xb8, 0x39, 0x00, 0x00

; FUNCTION 0x005adfa8, declared_size=56, range_size=56, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver4drawERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingERKNS3_IKNS_5scene11CMeshBufferEEE
; demangled: glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**, boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
; decoder-mode: arm
005adfa8  10 40 2d e9                                      push {r4, lr}
005adfac  08 c0 92 e5                                      ldr ip, [r2, #8]
005adfb0  00 40 a0 e1                                      mov r4, r0
005adfb4  00 00 5c e3                                      cmp ip, #0
005adfb8  05 00 00 0a                                      beq #0x5adfd4
005adfbc  88 c0 90 e5                                      ldr ip, [r0, #0x88]
005adfc0  01 0c 1c e3                                      tst ip, #0x100
005adfc4  03 00 00 1a                                      bne #0x5adfd8
005adfc8  00 c0 90 e5                                      ldr ip, [r0]
005adfcc  0f e0 a0 e1                                      mov lr, pc
005adfd0  00 f2 9c e5                                      ldr pc, [ip, #0x200]
005adfd4  10 80 bd e8                                      pop {r4, pc}
005adfd8  10 40 bd e8                                      pop {r4, lr}
005adfdc  ef fe ff ea                                      b #0x5adba0

; FUNCTION 0x005adfe0, declared_size=764, range_size=764, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver32clearImplementationDependentDataEv
; demangled: glitch::video::IVideoDriver::clearImplementationDependentData()
; decoder-mode: arm
005adfe0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005adfe4  40 51 90 e5                                      ldr r5, [r0, #0x140]
005adfe8  00 30 a0 e3                                      mov r3, #0
005adfec  0c d0 4d e2                                      sub sp, sp, #0xc
005adff0  03 00 55 e1                                      cmp r5, r3
005adff4  00 40 a0 e1                                      mov r4, r0
005adff8  40 31 80 e5                                      str r3, [r0, #0x140]
005adffc  04 00 00 0a                                      beq #0x5ae014
005ae000  00 30 95 e5                                      ldr r3, [r5]
005ae004  01 30 43 e2                                      sub r3, r3, #1
005ae008  00 00 53 e3                                      cmp r3, #0
005ae00c  00 30 85 e5                                      str r3, [r5]
005ae010  a2 00 00 0a                                      beq #0x5ae2a0
005ae014  00 60 a0 e3                                      mov r6, #0
005ae018  04 50 a0 e1                                      mov r5, r4
005ae01c  06 70 a0 e1                                      mov r7, r6
005ae020  44 31 95 e5                                      ldr r3, [r5, #0x144]
005ae024  01 60 86 e2                                      add r6, r6, #1
005ae028  44 71 85 e5                                      str r7, [r5, #0x144]
005ae02c  00 00 53 e3                                      cmp r3, #0
005ae030  03 00 a0 e1                                      mov r0, r3
005ae034  05 00 00 0a                                      beq #0x5ae050
005ae038  00 20 93 e5                                      ldr r2, [r3]
005ae03c  01 20 42 e2                                      sub r2, r2, #1
005ae040  00 00 52 e3                                      cmp r2, #0
005ae044  00 20 83 e5                                      str r2, [r3]
005ae048  00 00 00 1a                                      bne #0x5ae050
005ae04c  97 80 f5 eb                                      bl #0x30e2b0
005ae050  04 00 56 e3                                      cmp r6, #4
005ae054  04 50 85 e2                                      add r5, r5, #4
005ae058  f0 ff ff 1a                                      bne #0x5ae020
005ae05c  a4 50 94 e5                                      ldr r5, [r4, #0xa4]
005ae060  00 30 a0 e3                                      mov r3, #0
005ae064  a4 30 84 e5                                      str r3, [r4, #0xa4]
005ae068  03 00 55 e1                                      cmp r5, r3
005ae06c  04 00 00 0a                                      beq #0x5ae084
005ae070  00 30 95 e5                                      ldr r3, [r5]
005ae074  01 30 43 e2                                      sub r3, r3, #1
005ae078  00 00 53 e3                                      cmp r3, #0
005ae07c  00 30 85 e5                                      str r3, [r5]
005ae080  8b 00 00 0a                                      beq #0x5ae2b4
005ae084  a8 50 94 e5                                      ldr r5, [r4, #0xa8]
005ae088  00 30 a0 e3                                      mov r3, #0
005ae08c  a8 30 84 e5                                      str r3, [r4, #0xa8]
005ae090  03 00 55 e1                                      cmp r5, r3
005ae094  04 00 00 0a                                      beq #0x5ae0ac
005ae098  00 30 95 e5                                      ldr r3, [r5]
005ae09c  01 30 43 e2                                      sub r3, r3, #1
005ae0a0  00 00 53 e3                                      cmp r3, #0
005ae0a4  00 30 85 e5                                      str r3, [r5]
005ae0a8  77 00 00 0a                                      beq #0x5ae28c
005ae0ac  ac 50 94 e5                                      ldr r5, [r4, #0xac]
005ae0b0  00 30 a0 e3                                      mov r3, #0
005ae0b4  ac 30 84 e5                                      str r3, [r4, #0xac]
005ae0b8  03 00 55 e1                                      cmp r5, r3
005ae0bc  04 00 00 0a                                      beq #0x5ae0d4
005ae0c0  00 30 95 e5                                      ldr r3, [r5]
005ae0c4  01 30 43 e2                                      sub r3, r3, #1
005ae0c8  00 00 53 e3                                      cmp r3, #0
005ae0cc  00 30 85 e5                                      str r3, [r5]
005ae0d0  68 00 00 0a                                      beq #0x5ae278
005ae0d4  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
005ae0d8  00 30 a0 e3                                      mov r3, #0
005ae0dc  b0 30 84 e5                                      str r3, [r4, #0xb0]
005ae0e0  03 00 50 e1                                      cmp r0, r3
005ae0e4  00 00 00 0a                                      beq #0x5ae0ec
005ae0e8  25 bd f5 eb                                      bl #0x31d584
005ae0ec  b4 00 94 e5                                      ldr r0, [r4, #0xb4]
005ae0f0  00 30 a0 e3                                      mov r3, #0
005ae0f4  b4 30 84 e5                                      str r3, [r4, #0xb4]
005ae0f8  03 00 50 e1                                      cmp r0, r3
005ae0fc  00 00 00 0a                                      beq #0x5ae104
005ae100  1f bd f5 eb                                      bl #0x31d584
005ae104  b8 00 94 e5                                      ldr r0, [r4, #0xb8]
005ae108  00 30 a0 e3                                      mov r3, #0
005ae10c  b8 30 84 e5                                      str r3, [r4, #0xb8]
005ae110  03 00 50 e1                                      cmp r0, r3
005ae114  00 00 00 0a                                      beq #0x5ae11c
005ae118  19 bd f5 eb                                      bl #0x31d584
005ae11c  10 11 94 e5                                      ldr r1, [r4, #0x110]
005ae120  14 21 94 e5                                      ldr r2, [r4, #0x114]
005ae124  02 00 51 e1                                      cmp r1, r2
005ae128  02 00 00 0a                                      beq #0x5ae138
005ae12c  11 0e 84 e2                                      add r0, r4, #0x110
005ae130  04 30 8d e2                                      add r3, sp, #4
005ae134  fd 6d ff eb                                      bl #0x589930
005ae138  24 51 94 e5                                      ldr r5, [r4, #0x124]
005ae13c  00 30 a0 e3                                      mov r3, #0
005ae140  24 31 84 e5                                      str r3, [r4, #0x124]
005ae144  03 00 55 e1                                      cmp r5, r3
005ae148  04 00 00 0a                                      beq #0x5ae160
005ae14c  00 30 95 e5                                      ldr r3, [r5]
005ae150  01 30 43 e2                                      sub r3, r3, #1
005ae154  00 00 53 e3                                      cmp r3, #0
005ae158  00 30 85 e5                                      str r3, [r5]
005ae15c  59 00 00 0a                                      beq #0x5ae2c8
005ae160  2c 01 94 e5                                      ldr r0, [r4, #0x12c]
005ae164  00 00 50 e3                                      cmp r0, #0
005ae168  05 00 00 0a                                      beq #0x5ae184
005ae16c  81 77 00 eb                                      bl #0x5cbf78
005ae170  2c 01 94 e5                                      ldr r0, [r4, #0x12c]
005ae174  43 19 fe eb                                      bl #0x534688
005ae178  00 30 a0 e3                                      mov r3, #0
005ae17c  30 31 84 e5                                      str r3, [r4, #0x130]
005ae180  2c 31 84 e5                                      str r3, [r4, #0x12c]
005ae184  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ae188  20 00 13 e3                                      tst r3, #0x20
005ae18c  32 00 00 0a                                      beq #0x5ae25c
005ae190  b8 53 d4 e1                                      ldrh r5, [r4, #0x38]
005ae194  ff 3f 0f e3                                      movw r3, #0xffff
005ae198  03 00 55 e1                                      cmp r5, r3
005ae19c  2c 00 00 0a                                      beq #0x5ae254
005ae1a0  bc 63 d4 e1                                      ldrh r6, [r4, #0x3c]
005ae1a4  06 60 85 e0                                      add r6, r5, r6
005ae1a8  76 60 ff e6                                      uxth r6, r6
005ae1ac  06 00 55 e1                                      cmp r5, r6
005ae1b0  06 00 00 2a                                      bhs #0x5ae1d0
005ae1b4  05 10 a0 e1                                      mov r1, r5
005ae1b8  01 50 85 e2                                      add r5, r5, #1
005ae1bc  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005ae1c0  75 50 ff e6                                      uxth r5, r5
005ae1c4  e0 2e 00 eb                                      bl #0x5b9d4c
005ae1c8  05 00 56 e1                                      cmp r6, r5
005ae1cc  f8 ff ff 8a                                      bhi #0x5ae1b4
005ae1d0  00 30 e0 e3                                      mvn r3, #0
005ae1d4  36 51 00 e3                                      movw r5, #0x136
005ae1d8  b8 33 c4 e1                                      strh r3, [r4, #0x38]
005ae1dc  b5 10 94 e1                                      ldrh r1, [r4, r5]
005ae1e0  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005ae1e4  d8 2e 00 eb                                      bl #0x5b9d4c
005ae1e8  01 6c 84 e2                                      add r6, r4, #0x100
005ae1ec  00 30 e0 e3                                      mvn r3, #0
005ae1f0  b5 30 84 e1                                      strh r3, [r4, r5]
005ae1f4  02 60 86 e2                                      add r6, r6, #2
005ae1f8  fa 50 84 e2                                      add r5, r4, #0xfa
005ae1fc  b0 10 d5 e1                                      ldrh r1, [r5]
005ae200  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005ae204  d0 2e 00 eb                                      bl #0x5b9d4c
005ae208  b0 10 d5 e1                                      ldrh r1, [r5]
005ae20c  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005ae210  01 10 81 e2                                      add r1, r1, #1
005ae214  71 10 ff e6                                      uxth r1, r1
005ae218  cb 2e 00 eb                                      bl #0x5b9d4c
005ae21c  b0 10 d5 e1                                      ldrh r1, [r5]
005ae220  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005ae224  02 10 81 e2                                      add r1, r1, #2
005ae228  71 10 ff e6                                      uxth r1, r1
005ae22c  c6 2e 00 eb                                      bl #0x5b9d4c
005ae230  00 30 e0 e3                                      mvn r3, #0
005ae234  b2 30 c5 e0                                      strh r3, [r5], #2
005ae238  06 00 55 e1                                      cmp r5, r6
005ae23c  ee ff ff 1a                                      bne #0x5ae1fc
005ae240  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
005ae244  45 4b 00 eb                                      bl #0x5c0f60
005ae248  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ae24c  20 00 13 e3                                      tst r3, #0x20
005ae250  01 00 00 0a                                      beq #0x5ae25c
005ae254  e0 00 94 e5                                      ldr r0, [r4, #0xe0]
005ae258  60 ed 00 eb                                      bl #0x5e97e0
005ae25c  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
005ae260  03 00 a0 e1                                      mov r0, r3
005ae264  00 30 93 e5                                      ldr r3, [r3]
005ae268  0f e0 a0 e1                                      mov lr, pc
005ae26c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005ae270  0c d0 8d e2                                      add sp, sp, #0xc
005ae274  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005ae278  05 00 a0 e1                                      mov r0, r5
005ae27c  e6 c9 ff eb                                      bl #0x5a0a1c
005ae280  05 00 a0 e1                                      mov r0, r5
005ae284  09 80 f5 eb                                      bl #0x30e2b0
005ae288  91 ff ff ea                                      b #0x5ae0d4
005ae28c  05 00 a0 e1                                      mov r0, r5
005ae290  e1 c9 ff eb                                      bl #0x5a0a1c
005ae294  05 00 a0 e1                                      mov r0, r5
005ae298  04 80 f5 eb                                      bl #0x30e2b0
005ae29c  82 ff ff ea                                      b #0x5ae0ac
005ae2a0  05 00 a0 e1                                      mov r0, r5
005ae2a4  dc c9 ff eb                                      bl #0x5a0a1c
005ae2a8  05 00 a0 e1                                      mov r0, r5
005ae2ac  ff 7f f5 eb                                      bl #0x30e2b0
005ae2b0  57 ff ff ea                                      b #0x5ae014
005ae2b4  05 00 a0 e1                                      mov r0, r5
005ae2b8  d7 c9 ff eb                                      bl #0x5a0a1c
005ae2bc  05 00 a0 e1                                      mov r0, r5
005ae2c0  fa 7f f5 eb                                      bl #0x30e2b0
005ae2c4  6e ff ff ea                                      b #0x5ae084
005ae2c8  05 00 a0 e1                                      mov r0, r5
005ae2cc  29 77 00 eb                                      bl #0x5cbf78
005ae2d0  05 00 a0 e1                                      mov r0, r5
005ae2d4  f5 7f f5 eb                                      bl #0x30e2b0
005ae2d8  a0 ff ff ea                                      b #0x5ae160

; FUNCTION 0x005ae2dc, declared_size=760, range_size=760, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriverD1Ev
; demangled: glitch::video::IVideoDriver::~IVideoDriver()
; decoder-mode: arm
005ae2dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005ae2e0  e0 72 9f e5                                      ldr r7, [pc, #0x2e0]
005ae2e4  e0 32 9f e5                                      ldr r3, [pc, #0x2e0]
005ae2e8  38 21 90 e5                                      ldr r2, [r0, #0x138]
005ae2ec  07 70 8f e0                                      add r7, pc, r7
005ae2f0  03 30 97 e7                                      ldr r3, [r7, r3]
005ae2f4  10 00 12 e3                                      tst r2, #0x10
005ae2f8  00 50 a0 e1                                      mov r5, r0
005ae2fc  08 30 83 e2                                      add r3, r3, #8
005ae300  00 30 80 e5                                      str r3, [r0]
005ae304  07 00 00 0a                                      beq #0x5ae328
005ae308  dc 40 90 e5                                      ldr r4, [r0, #0xdc]
005ae30c  00 00 54 e3                                      cmp r4, #0
005ae310  04 00 00 0a                                      beq #0x5ae328
005ae314  04 00 a0 e1                                      mov r0, r4
005ae318  98 b3 00 eb                                      bl #0x5db180
005ae31c  04 00 a0 e1                                      mov r0, r4
005ae320  e2 7f f5 eb                                      bl #0x30e2b0
005ae324  38 21 95 e5                                      ldr r2, [r5, #0x138]
005ae328  20 00 12 e3                                      tst r2, #0x20
005ae32c  10 00 00 0a                                      beq #0x5ae374
005ae330  e0 40 95 e5                                      ldr r4, [r5, #0xe0]
005ae334  00 00 54 e3                                      cmp r4, #0
005ae338  06 00 00 0a                                      beq #0x5ae358
005ae33c  04 00 a0 e1                                      mov r0, r4
005ae340  7c ef 00 eb                                      bl #0x5ea138
005ae344  04 00 a0 e1                                      mov r0, r4
005ae348  d8 7f f5 eb                                      bl #0x30e2b0
005ae34c  38 31 95 e5                                      ldr r3, [r5, #0x138]
005ae350  20 00 13 e3                                      tst r3, #0x20
005ae354  06 00 00 0a                                      beq #0x5ae374
005ae358  e4 40 95 e5                                      ldr r4, [r5, #0xe4]
005ae35c  00 00 54 e3                                      cmp r4, #0
005ae360  03 00 00 0a                                      beq #0x5ae374
005ae364  04 00 a0 e1                                      mov r0, r4
005ae368  7c 34 00 eb                                      bl #0x5bb560
005ae36c  04 00 a0 e1                                      mov r0, r4
005ae370  ce 7f f5 eb                                      bl #0x30e2b0
005ae374  54 01 95 e5                                      ldr r0, [r5, #0x154]
005ae378  00 00 50 e3                                      cmp r0, #0
005ae37c  00 00 00 0a                                      beq #0x5ae384
005ae380  32 88 f5 eb                                      bl #0x310450
005ae384  51 6f 85 e2                                      add r6, r5, #0x144
005ae388  55 4f 85 e2                                      add r4, r5, #0x154
005ae38c  04 30 14 e5                                      ldr r3, [r4, #-4]
005ae390  00 00 53 e3                                      cmp r3, #0
005ae394  06 00 00 0a                                      beq #0x5ae3b4
005ae398  00 20 93 e5                                      ldr r2, [r3]
005ae39c  03 00 a0 e1                                      mov r0, r3
005ae3a0  01 20 42 e2                                      sub r2, r2, #1
005ae3a4  00 00 52 e3                                      cmp r2, #0
005ae3a8  00 20 83 e5                                      str r2, [r3]
005ae3ac  00 00 00 1a                                      bne #0x5ae3b4
005ae3b0  be 7f f5 eb                                      bl #0x30e2b0
005ae3b4  04 40 44 e2                                      sub r4, r4, #4
005ae3b8  06 00 54 e1                                      cmp r4, r6
005ae3bc  f2 ff ff 1a                                      bne #0x5ae38c
005ae3c0  40 41 95 e5                                      ldr r4, [r5, #0x140]
005ae3c4  00 00 54 e3                                      cmp r4, #0
005ae3c8  04 00 00 0a                                      beq #0x5ae3e0
005ae3cc  00 30 94 e5                                      ldr r3, [r4]
005ae3d0  01 30 43 e2                                      sub r3, r3, #1
005ae3d4  00 00 53 e3                                      cmp r3, #0
005ae3d8  00 30 84 e5                                      str r3, [r4]
005ae3dc  6f 00 00 0a                                      beq #0x5ae5a0
005ae3e0  28 01 95 e5                                      ldr r0, [r5, #0x128]
005ae3e4  00 00 50 e3                                      cmp r0, #0
005ae3e8  00 00 00 0a                                      beq #0x5ae3f0
005ae3ec  64 bc f5 eb                                      bl #0x31d584
005ae3f0  24 41 95 e5                                      ldr r4, [r5, #0x124]
005ae3f4  00 00 54 e3                                      cmp r4, #0
005ae3f8  04 00 00 0a                                      beq #0x5ae410
005ae3fc  00 30 94 e5                                      ldr r3, [r4]
005ae400  01 30 43 e2                                      sub r3, r3, #1
005ae404  00 00 53 e3                                      cmp r3, #0
005ae408  00 30 84 e5                                      str r3, [r4]
005ae40c  68 00 00 0a                                      beq #0x5ae5b4
005ae410  11 0e 85 e2                                      add r0, r5, #0x110
005ae414  3c f5 ff eb                                      bl #0x5ab90c
005ae418  d8 30 95 e5                                      ldr r3, [r5, #0xd8]
005ae41c  00 00 53 e3                                      cmp r3, #0
005ae420  03 00 00 0a                                      beq #0x5ae434
005ae424  03 00 a0 e1                                      mov r0, r3
005ae428  00 30 93 e5                                      ldr r3, [r3]
005ae42c  0f e0 a0 e1                                      mov lr, pc
005ae430  04 f0 93 e5                                      ldr pc, [r3, #4]
005ae434  c8 00 85 e2                                      add r0, r5, #0xc8
005ae438  cf ef ff eb                                      bl #0x5aa37c
005ae43c  bc 00 85 e2                                      add r0, r5, #0xbc
005ae440  44 f5 ff eb                                      bl #0x5ab958
005ae444  b8 00 95 e5                                      ldr r0, [r5, #0xb8]
005ae448  00 00 50 e3                                      cmp r0, #0
005ae44c  00 00 00 0a                                      beq #0x5ae454
005ae450  4b bc f5 eb                                      bl #0x31d584
005ae454  b4 00 95 e5                                      ldr r0, [r5, #0xb4]
005ae458  00 00 50 e3                                      cmp r0, #0
005ae45c  00 00 00 0a                                      beq #0x5ae464
005ae460  47 bc f5 eb                                      bl #0x31d584
005ae464  b0 00 95 e5                                      ldr r0, [r5, #0xb0]
005ae468  00 00 50 e3                                      cmp r0, #0
005ae46c  00 00 00 0a                                      beq #0x5ae474
005ae470  43 bc f5 eb                                      bl #0x31d584
005ae474  ac 40 95 e5                                      ldr r4, [r5, #0xac]
005ae478  00 00 54 e3                                      cmp r4, #0
005ae47c  04 00 00 0a                                      beq #0x5ae494
005ae480  00 30 94 e5                                      ldr r3, [r4]
005ae484  01 30 43 e2                                      sub r3, r3, #1
005ae488  00 00 53 e3                                      cmp r3, #0
005ae48c  00 30 84 e5                                      str r3, [r4]
005ae490  3d 00 00 0a                                      beq #0x5ae58c
005ae494  a8 40 95 e5                                      ldr r4, [r5, #0xa8]
005ae498  00 00 54 e3                                      cmp r4, #0
005ae49c  04 00 00 0a                                      beq #0x5ae4b4
005ae4a0  00 30 94 e5                                      ldr r3, [r4]
005ae4a4  01 30 43 e2                                      sub r3, r3, #1
005ae4a8  00 00 53 e3                                      cmp r3, #0
005ae4ac  00 30 84 e5                                      str r3, [r4]
005ae4b0  30 00 00 0a                                      beq #0x5ae578
005ae4b4  a4 40 95 e5                                      ldr r4, [r5, #0xa4]
005ae4b8  00 00 54 e3                                      cmp r4, #0
005ae4bc  04 00 00 0a                                      beq #0x5ae4d4
005ae4c0  00 30 94 e5                                      ldr r3, [r4]
005ae4c4  01 30 43 e2                                      sub r3, r3, #1
005ae4c8  00 00 53 e3                                      cmp r3, #0
005ae4cc  00 30 84 e5                                      str r3, [r4]
005ae4d0  23 00 00 0a                                      beq #0x5ae564
005ae4d4  40 00 95 e5                                      ldr r0, [r5, #0x40]
005ae4d8  00 00 50 e3                                      cmp r0, #0
005ae4dc  10 00 00 0a                                      beq #0x5ae524
005ae4e0  00 30 90 e5                                      ldr r3, [r0]
005ae4e4  01 30 43 e2                                      sub r3, r3, #1
005ae4e8  00 00 53 e3                                      cmp r3, #0
005ae4ec  00 30 80 e5                                      str r3, [r0]
005ae4f0  0b 00 00 1a                                      bne #0x5ae524
005ae4f4  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005ae4f8  00 00 53 e3                                      cmp r3, #0
005ae4fc  05 00 00 1a                                      bne #0x5ae518
005ae500  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
005ae504  50 20 90 e5                                      ldr r2, [r0, #0x50]
005ae508  03 30 97 e7                                      ldr r3, [r7, r3]
005ae50c  00 10 93 e5                                      ldr r1, [r3]
005ae510  00 10 82 e5                                      str r1, [r2]
005ae514  00 20 83 e5                                      str r2, [r3]
005ae518  00 30 a0 e3                                      mov r3, #0
005ae51c  50 30 80 e5                                      str r3, [r0, #0x50]
005ae520  62 7f f5 eb                                      bl #0x30e2b0
005ae524  20 30 85 e2                                      add r3, r5, #0x20
005ae528  14 00 93 e5                                      ldr r0, [r3, #0x14]
005ae52c  03 00 50 e1                                      cmp r0, r3
005ae530  02 00 00 0a                                      beq #0x5ae540
005ae534  00 00 50 e3                                      cmp r0, #0
005ae538  00 00 00 0a                                      beq #0x5ae540
005ae53c  c3 87 f5 eb                                      bl #0x310450
005ae540  08 30 85 e2                                      add r3, r5, #8
005ae544  14 00 93 e5                                      ldr r0, [r3, #0x14]
005ae548  03 00 50 e1                                      cmp r0, r3
005ae54c  02 00 00 0a                                      beq #0x5ae55c
005ae550  00 00 50 e3                                      cmp r0, #0
005ae554  00 00 00 0a                                      beq #0x5ae55c
005ae558  bc 87 f5 eb                                      bl #0x310450
005ae55c  05 00 a0 e1                                      mov r0, r5
005ae560  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005ae564  04 00 a0 e1                                      mov r0, r4
005ae568  2b c9 ff eb                                      bl #0x5a0a1c
005ae56c  04 00 a0 e1                                      mov r0, r4
005ae570  4e 7f f5 eb                                      bl #0x30e2b0
005ae574  d6 ff ff ea                                      b #0x5ae4d4
005ae578  04 00 a0 e1                                      mov r0, r4
005ae57c  26 c9 ff eb                                      bl #0x5a0a1c
005ae580  04 00 a0 e1                                      mov r0, r4
005ae584  49 7f f5 eb                                      bl #0x30e2b0
005ae588  c9 ff ff ea                                      b #0x5ae4b4
005ae58c  04 00 a0 e1                                      mov r0, r4
005ae590  21 c9 ff eb                                      bl #0x5a0a1c
005ae594  04 00 a0 e1                                      mov r0, r4
005ae598  44 7f f5 eb                                      bl #0x30e2b0
005ae59c  bc ff ff ea                                      b #0x5ae494
005ae5a0  04 00 a0 e1                                      mov r0, r4
005ae5a4  1c c9 ff eb                                      bl #0x5a0a1c
005ae5a8  04 00 a0 e1                                      mov r0, r4
005ae5ac  3f 7f f5 eb                                      bl #0x30e2b0
005ae5b0  8a ff ff ea                                      b #0x5ae3e0
005ae5b4  04 00 a0 e1                                      mov r0, r4
005ae5b8  6e 76 00 eb                                      bl #0x5cbf78
005ae5bc  04 00 a0 e1                                      mov r0, r4
005ae5c0  3a 7f f5 eb                                      bl #0x30e2b0
005ae5c4  91 ff ff ea                                      b #0x5ae410
; mapping-symbol data/literal pool
005ae5c8  a4 67 3e 00 84 2f 00 00 c0 3c 00 00              .byte 0xa4, 0x67, 0x3e, 0x00, 0x84, 0x2f, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005ae5d4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriverD0Ev
; demangled: glitch::video::IVideoDriver::~IVideoDriver()
; decoder-mode: arm
005ae5d4  10 40 2d e9                                      push {r4, lr}
005ae5d8  00 40 a0 e1                                      mov r4, r0
005ae5dc  3e ff ff eb                                      bl #0x5ae2dc
005ae5e0  04 00 a0 e1                                      mov r0, r4
005ae5e4  31 7f f5 eb                                      bl #0x30e2b0
005ae5e8  04 00 a0 e1                                      mov r0, r4
005ae5ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005ae5f0, declared_size=2476, range_size=2476, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver31initImplementationDependentDataEv
; demangled: glitch::video::IVideoDriver::initImplementationDependentData()
; decoder-mode: arm
005ae5f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005ae5f4  00 20 a0 e3                                      mov r2, #0
005ae5f8  b8 d0 4d e2                                      sub sp, sp, #0xb8
005ae5fc  01 30 a0 e3                                      mov r3, #1
005ae600  00 40 a0 e1                                      mov r4, r0
005ae604  08 30 8d e5                                      str r3, [sp, #8]
005ae608  00 20 8d e5                                      str r2, [sp]
005ae60c  04 20 8d e5                                      str r2, [sp, #4]
005ae610  b4 50 8d e2                                      add r5, sp, #0xb4
005ae614  00 c0 90 e5                                      ldr ip, [r0]
005ae618  04 10 a0 e1                                      mov r1, r4
005ae61c  04 30 a0 e3                                      mov r3, #4
005ae620  05 00 a0 e1                                      mov r0, r5
005ae624  0f e0 a0 e1                                      mov lr, pc
005ae628  78 f0 9c e5                                      ldr pc, [ip, #0x78]
005ae62c  c0 10 94 e5                                      ldr r1, [r4, #0xc0]
005ae630  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
005ae634  03 00 51 e1                                      cmp r1, r3
005ae638  4b 02 00 0a                                      beq #0x5aef6c
005ae63c  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
005ae640  00 00 53 e3                                      cmp r3, #0
005ae644  00 30 81 e5                                      str r3, [r1]
005ae648  04 20 93 15                                      ldrne r2, [r3, #4]
005ae64c  01 20 82 12                                      addne r2, r2, #1
005ae650  04 20 83 15                                      strne r2, [r3, #4]
005ae654  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
005ae658  04 30 83 e2                                      add r3, r3, #4
005ae65c  c0 30 84 e5                                      str r3, [r4, #0xc0]
005ae660  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
005ae664  00 00 50 e3                                      cmp r0, #0
005ae668  00 00 00 0a                                      beq #0x5ae670
005ae66c  c4 bb f5 eb                                      bl #0x31d584
005ae670  00 20 a0 e3                                      mov r2, #0
005ae674  01 30 a0 e3                                      mov r3, #1
005ae678  00 20 8d e5                                      str r2, [sp]
005ae67c  0c 00 8d e9                                      stmib sp, {r2, r3}
005ae680  b0 00 8d e2                                      add r0, sp, #0xb0
005ae684  04 30 a0 e3                                      mov r3, #4
005ae688  00 c0 94 e5                                      ldr ip, [r4]
005ae68c  04 10 a0 e1                                      mov r1, r4
005ae690  0f e0 a0 e1                                      mov lr, pc
005ae694  78 f0 9c e5                                      ldr pc, [ip, #0x78]
005ae698  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
005ae69c  00 00 53 e3                                      cmp r3, #0
005ae6a0  04 20 93 15                                      ldrne r2, [r3, #4]
005ae6a4  01 20 82 12                                      addne r2, r2, #1
005ae6a8  04 20 83 15                                      strne r2, [r3, #4]
005ae6ac  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
005ae6b0  b0 30 84 e5                                      str r3, [r4, #0xb0]
005ae6b4  00 00 50 e3                                      cmp r0, #0
005ae6b8  00 00 00 0a                                      beq #0x5ae6c0
005ae6bc  b0 bb f5 eb                                      bl #0x31d584
005ae6c0  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
005ae6c4  00 00 50 e3                                      cmp r0, #0
005ae6c8  00 00 00 0a                                      beq #0x5ae6d0
005ae6cc  ac bb f5 eb                                      bl #0x31d584
005ae6d0  00 20 a0 e3                                      mov r2, #0
005ae6d4  01 30 a0 e3                                      mov r3, #1
005ae6d8  00 20 8d e5                                      str r2, [sp]
005ae6dc  0c 00 8d e9                                      stmib sp, {r2, r3}
005ae6e0  ac 00 8d e2                                      add r0, sp, #0xac
005ae6e4  04 30 a0 e3                                      mov r3, #4
005ae6e8  00 c0 94 e5                                      ldr ip, [r4]
005ae6ec  04 10 a0 e1                                      mov r1, r4
005ae6f0  0f e0 a0 e1                                      mov lr, pc
005ae6f4  78 f0 9c e5                                      ldr pc, [ip, #0x78]
005ae6f8  ac 30 9d e5                                      ldr r3, [sp, #0xac]
005ae6fc  00 00 53 e3                                      cmp r3, #0
005ae700  04 20 93 15                                      ldrne r2, [r3, #4]
005ae704  01 20 82 12                                      addne r2, r2, #1
005ae708  04 20 83 15                                      strne r2, [r3, #4]
005ae70c  b4 00 94 e5                                      ldr r0, [r4, #0xb4]
005ae710  b4 30 84 e5                                      str r3, [r4, #0xb4]
005ae714  00 00 50 e3                                      cmp r0, #0
005ae718  00 00 00 0a                                      beq #0x5ae720
005ae71c  98 bb f5 eb                                      bl #0x31d584
005ae720  ac 00 9d e5                                      ldr r0, [sp, #0xac]
005ae724  00 00 50 e3                                      cmp r0, #0
005ae728  00 00 00 0a                                      beq #0x5ae730
005ae72c  94 bb f5 eb                                      bl #0x31d584
005ae730  01 20 a0 e3                                      mov r2, #1
005ae734  00 30 a0 e3                                      mov r3, #0
005ae738  08 20 8d e5                                      str r2, [sp, #8]
005ae73c  04 30 8d e5                                      str r3, [sp, #4]
005ae740  00 30 8d e5                                      str r3, [sp]
005ae744  a8 00 8d e2                                      add r0, sp, #0xa8
005ae748  04 30 a0 e3                                      mov r3, #4
005ae74c  00 c0 94 e5                                      ldr ip, [r4]
005ae750  04 10 a0 e1                                      mov r1, r4
005ae754  0f e0 a0 e1                                      mov lr, pc
005ae758  78 f0 9c e5                                      ldr pc, [ip, #0x78]
005ae75c  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
005ae760  00 00 53 e3                                      cmp r3, #0
005ae764  04 20 93 15                                      ldrne r2, [r3, #4]
005ae768  01 20 82 12                                      addne r2, r2, #1
005ae76c  04 20 83 15                                      strne r2, [r3, #4]
005ae770  b8 00 94 e5                                      ldr r0, [r4, #0xb8]
005ae774  b8 30 84 e5                                      str r3, [r4, #0xb8]
005ae778  00 00 50 e3                                      cmp r0, #0
005ae77c  00 00 00 0a                                      beq #0x5ae784
005ae780  7f bb f5 eb                                      bl #0x31d584
005ae784  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
005ae788  00 00 50 e3                                      cmp r0, #0
005ae78c  00 00 00 0a                                      beq #0x5ae794
005ae790  7b bb f5 eb                                      bl #0x31d584
005ae794  9c 30 94 e5                                      ldr r3, [r4, #0x9c]
005ae798  01 04 13 e3                                      tst r3, #0x1000000
005ae79c  56 01 00 1a                                      bne #0x5aecfc
005ae7a0  01 27 a0 e3                                      mov r2, #0x40000
005ae7a4  94 00 8d e2                                      add r0, sp, #0x94
005ae7a8  00 10 a0 e3                                      mov r1, #0
005ae7ac  14 cb ff eb                                      bl #0x5a1404
005ae7b0  94 30 9d e5                                      ldr r3, [sp, #0x94]
005ae7b4  00 00 53 e3                                      cmp r3, #0
005ae7b8  00 20 93 15                                      ldrne r2, [r3]
005ae7bc  01 20 82 12                                      addne r2, r2, #1
005ae7c0  00 20 83 15                                      strne r2, [r3]
005ae7c4  a4 50 94 e5                                      ldr r5, [r4, #0xa4]
005ae7c8  a4 30 84 e5                                      str r3, [r4, #0xa4]
005ae7cc  00 00 55 e3                                      cmp r5, #0
005ae7d0  04 00 00 0a                                      beq #0x5ae7e8
005ae7d4  00 30 95 e5                                      ldr r3, [r5]
005ae7d8  01 30 43 e2                                      sub r3, r3, #1
005ae7dc  00 00 53 e3                                      cmp r3, #0
005ae7e0  00 30 85 e5                                      str r3, [r5]
005ae7e4  3f 01 00 0a                                      beq #0x5aece8
005ae7e8  94 50 9d e5                                      ldr r5, [sp, #0x94]
005ae7ec  00 00 55 e3                                      cmp r5, #0
005ae7f0  04 00 00 0a                                      beq #0x5ae808
005ae7f4  00 30 95 e5                                      ldr r3, [r5]
005ae7f8  01 30 43 e2                                      sub r3, r3, #1
005ae7fc  00 00 53 e3                                      cmp r3, #0
005ae800  00 30 85 e5                                      str r3, [r5]
005ae804  32 01 00 0a                                      beq #0x5aecd4
005ae808  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
005ae80c  a4 00 94 e5                                      ldr r0, [r4, #0xa4]
005ae810  00 00 53 e3                                      cmp r3, #0
005ae814  74 30 8d e5                                      str r3, [sp, #0x74]
005ae818  04 20 93 15                                      ldrne r2, [r3, #4]
005ae81c  14 10 80 e2                                      add r1, r0, #0x14
005ae820  01 20 82 12                                      addne r2, r2, #1
005ae824  04 20 83 15                                      strne r2, [r3, #4]
005ae828  04 30 a0 e3                                      mov r3, #4
005ae82c  78 30 8d e5                                      str r3, [sp, #0x78]
005ae830  06 30 a0 e3                                      mov r3, #6
005ae834  7c 30 8d e5                                      str r3, [sp, #0x7c]
005ae838  03 30 a0 e3                                      mov r3, #3
005ae83c  b0 38 cd e1                                      strh r3, [sp, #0x80]
005ae840  74 20 8d e2                                      add r2, sp, #0x74
005ae844  10 30 a0 e3                                      mov r3, #0x10
005ae848  b2 38 cd e1                                      strh r3, [sp, #0x82]
005ae84c  de f4 ff eb                                      bl #0x5abbcc
005ae850  74 00 9d e5                                      ldr r0, [sp, #0x74]
005ae854  00 00 50 e3                                      cmp r0, #0
005ae858  00 00 00 0a                                      beq #0x5ae860
005ae85c  48 bb f5 eb                                      bl #0x31d584
005ae860  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
005ae864  a4 00 94 e5                                      ldr r0, [r4, #0xa4]
005ae868  00 00 53 e3                                      cmp r3, #0
005ae86c  64 30 8d e5                                      str r3, [sp, #0x64]
005ae870  04 20 93 15                                      ldrne r2, [r3, #4]
005ae874  24 10 80 e2                                      add r1, r0, #0x24
005ae878  01 20 82 12                                      addne r2, r2, #1
005ae87c  04 20 83 15                                      strne r2, [r3, #4]
005ae880  00 30 a0 e3                                      mov r3, #0
005ae884  68 30 8d e5                                      str r3, [sp, #0x68]
005ae888  01 30 a0 e3                                      mov r3, #1
005ae88c  6c 30 8d e5                                      str r3, [sp, #0x6c]
005ae890  04 30 a0 e3                                      mov r3, #4
005ae894  b0 37 cd e1                                      strh r3, [sp, #0x70]
005ae898  64 20 8d e2                                      add r2, sp, #0x64
005ae89c  10 30 a0 e3                                      mov r3, #0x10
005ae8a0  b2 37 cd e1                                      strh r3, [sp, #0x72]
005ae8a4  c8 f4 ff eb                                      bl #0x5abbcc
005ae8a8  64 00 9d e5                                      ldr r0, [sp, #0x64]
005ae8ac  00 00 50 e3                                      cmp r0, #0
005ae8b0  00 00 00 0a                                      beq #0x5ae8b8
005ae8b4  32 bb f5 eb                                      bl #0x31d584
005ae8b8  01 27 a0 e3                                      mov r2, #0x40000
005ae8bc  90 00 8d e2                                      add r0, sp, #0x90
005ae8c0  00 10 a0 e3                                      mov r1, #0
005ae8c4  ce ca ff eb                                      bl #0x5a1404
005ae8c8  90 30 9d e5                                      ldr r3, [sp, #0x90]
005ae8cc  00 00 53 e3                                      cmp r3, #0
005ae8d0  00 20 93 15                                      ldrne r2, [r3]
005ae8d4  01 20 82 12                                      addne r2, r2, #1
005ae8d8  00 20 83 15                                      strne r2, [r3]
005ae8dc  a8 50 94 e5                                      ldr r5, [r4, #0xa8]
005ae8e0  a8 30 84 e5                                      str r3, [r4, #0xa8]
005ae8e4  00 00 55 e3                                      cmp r5, #0
005ae8e8  04 00 00 0a                                      beq #0x5ae900
005ae8ec  00 30 95 e5                                      ldr r3, [r5]
005ae8f0  01 30 43 e2                                      sub r3, r3, #1
005ae8f4  00 00 53 e3                                      cmp r3, #0
005ae8f8  00 30 85 e5                                      str r3, [r5]
005ae8fc  ef 00 00 0a                                      beq #0x5aecc0
005ae900  90 50 9d e5                                      ldr r5, [sp, #0x90]
005ae904  00 00 55 e3                                      cmp r5, #0
005ae908  04 00 00 0a                                      beq #0x5ae920
005ae90c  00 30 95 e5                                      ldr r3, [r5]
005ae910  01 30 43 e2                                      sub r3, r3, #1
005ae914  00 00 53 e3                                      cmp r3, #0
005ae918  00 30 85 e5                                      str r3, [r5]
005ae91c  e2 00 00 0a                                      beq #0x5aecac
005ae920  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
005ae924  a8 00 94 e5                                      ldr r0, [r4, #0xa8]
005ae928  00 00 53 e3                                      cmp r3, #0
005ae92c  54 30 8d e5                                      str r3, [sp, #0x54]
005ae930  04 20 93 15                                      ldrne r2, [r3, #4]
005ae934  14 10 80 e2                                      add r1, r0, #0x14
005ae938  01 20 82 12                                      addne r2, r2, #1
005ae93c  04 20 83 15                                      strne r2, [r3, #4]
005ae940  00 30 a0 e3                                      mov r3, #0
005ae944  58 30 8d e5                                      str r3, [sp, #0x58]
005ae948  06 30 a0 e3                                      mov r3, #6
005ae94c  5c 30 8d e5                                      str r3, [sp, #0x5c]
005ae950  03 30 a0 e3                                      mov r3, #3
005ae954  b0 36 cd e1                                      strh r3, [sp, #0x60]
005ae958  54 20 8d e2                                      add r2, sp, #0x54
005ae95c  0c 30 a0 e3                                      mov r3, #0xc
005ae960  b2 36 cd e1                                      strh r3, [sp, #0x62]
005ae964  98 f4 ff eb                                      bl #0x5abbcc
005ae968  54 00 9d e5                                      ldr r0, [sp, #0x54]
005ae96c  00 00 50 e3                                      cmp r0, #0
005ae970  00 00 00 0a                                      beq #0x5ae978
005ae974  02 bb f5 eb                                      bl #0x31d584
005ae978  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
005ae97c  a8 00 94 e5                                      ldr r0, [r4, #0xa8]
005ae980  00 00 53 e3                                      cmp r3, #0
005ae984  44 30 8d e5                                      str r3, [sp, #0x44]
005ae988  04 20 93 15                                      ldrne r2, [r3, #4]
005ae98c  24 10 80 e2                                      add r1, r0, #0x24
005ae990  01 20 82 12                                      addne r2, r2, #1
005ae994  04 20 83 15                                      strne r2, [r3, #4]
005ae998  00 30 a0 e3                                      mov r3, #0
005ae99c  48 30 8d e5                                      str r3, [sp, #0x48]
005ae9a0  01 30 a0 e3                                      mov r3, #1
005ae9a4  4c 30 8d e5                                      str r3, [sp, #0x4c]
005ae9a8  44 20 8d e2                                      add r2, sp, #0x44
005ae9ac  04 30 a0 e3                                      mov r3, #4
005ae9b0  b0 35 cd e1                                      strh r3, [sp, #0x50]
005ae9b4  b2 35 cd e1                                      strh r3, [sp, #0x52]
005ae9b8  83 f4 ff eb                                      bl #0x5abbcc
005ae9bc  44 00 9d e5                                      ldr r0, [sp, #0x44]
005ae9c0  00 00 50 e3                                      cmp r0, #0
005ae9c4  00 00 00 0a                                      beq #0x5ae9cc
005ae9c8  ed ba f5 eb                                      bl #0x31d584
005ae9cc  01 27 a0 e3                                      mov r2, #0x40000
005ae9d0  8c 00 8d e2                                      add r0, sp, #0x8c
005ae9d4  01 10 a0 e3                                      mov r1, #1
005ae9d8  89 ca ff eb                                      bl #0x5a1404
005ae9dc  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
005ae9e0  00 00 53 e3                                      cmp r3, #0
005ae9e4  00 20 93 15                                      ldrne r2, [r3]
005ae9e8  01 20 82 12                                      addne r2, r2, #1
005ae9ec  00 20 83 15                                      strne r2, [r3]
005ae9f0  ac 50 94 e5                                      ldr r5, [r4, #0xac]
005ae9f4  ac 30 84 e5                                      str r3, [r4, #0xac]
005ae9f8  00 00 55 e3                                      cmp r5, #0
005ae9fc  04 00 00 0a                                      beq #0x5aea14
005aea00  00 30 95 e5                                      ldr r3, [r5]
005aea04  01 30 43 e2                                      sub r3, r3, #1
005aea08  00 00 53 e3                                      cmp r3, #0
005aea0c  00 30 85 e5                                      str r3, [r5]
005aea10  a0 00 00 0a                                      beq #0x5aec98
005aea14  8c 50 9d e5                                      ldr r5, [sp, #0x8c]
005aea18  00 00 55 e3                                      cmp r5, #0
005aea1c  04 00 00 0a                                      beq #0x5aea34
005aea20  00 30 95 e5                                      ldr r3, [r5]
005aea24  01 30 43 e2                                      sub r3, r3, #1
005aea28  00 00 53 e3                                      cmp r3, #0
005aea2c  00 30 85 e5                                      str r3, [r5]
005aea30  93 00 00 0a                                      beq #0x5aec84
005aea34  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
005aea38  ac 00 94 e5                                      ldr r0, [r4, #0xac]
005aea3c  00 00 53 e3                                      cmp r3, #0
005aea40  34 30 8d e5                                      str r3, [sp, #0x34]
005aea44  04 20 93 15                                      ldrne r2, [r3, #4]
005aea48  14 10 80 e2                                      add r1, r0, #0x14
005aea4c  01 20 82 12                                      addne r2, r2, #1
005aea50  04 20 83 15                                      strne r2, [r3, #4]
005aea54  0c 30 a0 e3                                      mov r3, #0xc
005aea58  38 30 8d e5                                      str r3, [sp, #0x38]
005aea5c  06 30 a0 e3                                      mov r3, #6
005aea60  3c 30 8d e5                                      str r3, [sp, #0x3c]
005aea64  03 30 a0 e3                                      mov r3, #3
005aea68  b0 34 cd e1                                      strh r3, [sp, #0x40]
005aea6c  34 20 8d e2                                      add r2, sp, #0x34
005aea70  18 30 a0 e3                                      mov r3, #0x18
005aea74  b2 34 cd e1                                      strh r3, [sp, #0x42]
005aea78  53 f4 ff eb                                      bl #0x5abbcc
005aea7c  34 00 9d e5                                      ldr r0, [sp, #0x34]
005aea80  00 00 50 e3                                      cmp r0, #0
005aea84  00 00 00 0a                                      beq #0x5aea8c
005aea88  bd ba f5 eb                                      bl #0x31d584
005aea8c  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
005aea90  ac 00 94 e5                                      ldr r0, [r4, #0xac]
005aea94  00 00 53 e3                                      cmp r3, #0
005aea98  24 30 8d e5                                      str r3, [sp, #0x24]
005aea9c  04 20 93 15                                      ldrne r2, [r3, #4]
005aeaa0  24 10 80 e2                                      add r1, r0, #0x24
005aeaa4  01 20 82 12                                      addne r2, r2, #1
005aeaa8  04 20 83 15                                      strne r2, [r3, #4]
005aeaac  00 30 a0 e3                                      mov r3, #0
005aeab0  28 30 8d e5                                      str r3, [sp, #0x28]
005aeab4  06 30 a0 e3                                      mov r3, #6
005aeab8  2c 30 8d e5                                      str r3, [sp, #0x2c]
005aeabc  02 30 a0 e3                                      mov r3, #2
005aeac0  b0 33 cd e1                                      strh r3, [sp, #0x30]
005aeac4  24 20 8d e2                                      add r2, sp, #0x24
005aeac8  18 30 a0 e3                                      mov r3, #0x18
005aeacc  b2 33 cd e1                                      strh r3, [sp, #0x32]
005aead0  3d f4 ff eb                                      bl #0x5abbcc
005aead4  24 00 9d e5                                      ldr r0, [sp, #0x24]
005aead8  00 00 50 e3                                      cmp r0, #0
005aeadc  00 00 00 0a                                      beq #0x5aeae4
005aeae0  a7 ba f5 eb                                      bl #0x31d584
005aeae4  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
005aeae8  ac 00 94 e5                                      ldr r0, [r4, #0xac]
005aeaec  00 00 53 e3                                      cmp r3, #0
005aeaf0  14 30 8d e5                                      str r3, [sp, #0x14]
005aeaf4  04 20 93 15                                      ldrne r2, [r3, #4]
005aeaf8  34 10 80 e2                                      add r1, r0, #0x34
005aeafc  01 20 82 12                                      addne r2, r2, #1
005aeb00  04 20 83 15                                      strne r2, [r3, #4]
005aeb04  08 30 a0 e3                                      mov r3, #8
005aeb08  18 30 8d e5                                      str r3, [sp, #0x18]
005aeb0c  01 30 a0 e3                                      mov r3, #1
005aeb10  1c 30 8d e5                                      str r3, [sp, #0x1c]
005aeb14  04 30 a0 e3                                      mov r3, #4
005aeb18  b0 32 cd e1                                      strh r3, [sp, #0x20]
005aeb1c  14 20 8d e2                                      add r2, sp, #0x14
005aeb20  18 30 a0 e3                                      mov r3, #0x18
005aeb24  b2 32 cd e1                                      strh r3, [sp, #0x22]
005aeb28  27 f4 ff eb                                      bl #0x5abbcc
005aeb2c  14 00 9d e5                                      ldr r0, [sp, #0x14]
005aeb30  00 00 50 e3                                      cmp r0, #0
005aeb34  00 00 00 0a                                      beq #0x5aeb3c
005aeb38  91 ba f5 eb                                      bl #0x31d584
005aeb3c  d4 30 94 e5                                      ldr r3, [r4, #0xd4]
005aeb40  00 10 a0 e3                                      mov r1, #0
005aeb44  70 00 a0 e3                                      mov r0, #0x70
005aeb48  a8 60 93 e5                                      ldr r6, [r3, #0xa8]
005aeb4c  a4 70 93 e5                                      ldr r7, [r3, #0xa4]
005aeb50  95 15 fe eb                                      bl #0x5341ac
005aeb54  04 c0 a0 e3                                      mov ip, #4
005aeb58  04 30 a0 e1                                      mov r3, r4
005aeb5c  07 10 a0 e1                                      mov r1, r7
005aeb60  06 20 a0 e1                                      mov r2, r6
005aeb64  00 c0 8d e5                                      str ip, [sp]
005aeb68  00 c0 e0 e3                                      mvn ip, #0
005aeb6c  00 50 a0 e1                                      mov r5, r0
005aeb70  04 c0 8d e5                                      str ip, [sp, #4]
005aeb74  4e 28 04 eb                                      bl #0x6b8cb4
005aeb78  00 00 55 e3                                      cmp r5, #0
005aeb7c  88 50 8d e5                                      str r5, [sp, #0x88]
005aeb80  04 30 95 15                                      ldrne r3, [r5, #4]
005aeb84  11 6e 84 e2                                      add r6, r4, #0x110
005aeb88  01 30 83 12                                      addne r3, r3, #1
005aeb8c  04 30 85 15                                      strne r3, [r5, #4]
005aeb90  14 11 94 e5                                      ldr r1, [r4, #0x114]
005aeb94  18 31 94 e5                                      ldr r3, [r4, #0x118]
005aeb98  03 00 51 e1                                      cmp r1, r3
005aeb9c  f6 00 00 0a                                      beq #0x5aef7c
005aeba0  88 30 9d e5                                      ldr r3, [sp, #0x88]
005aeba4  00 00 53 e3                                      cmp r3, #0
005aeba8  00 30 81 e5                                      str r3, [r1]
005aebac  04 20 93 15                                      ldrne r2, [r3, #4]
005aebb0  01 20 82 12                                      addne r2, r2, #1
005aebb4  04 20 83 15                                      strne r2, [r3, #4]
005aebb8  14 31 94 e5                                      ldr r3, [r4, #0x114]
005aebbc  04 30 83 e2                                      add r3, r3, #4
005aebc0  14 31 84 e5                                      str r3, [r4, #0x114]
005aebc4  88 00 9d e5                                      ldr r0, [sp, #0x88]
005aebc8  00 00 50 e3                                      cmp r0, #0
005aebcc  00 00 00 0a                                      beq #0x5aebd4
005aebd0  6b ba f5 eb                                      bl #0x31d584
005aebd4  d4 30 94 e5                                      ldr r3, [r4, #0xd4]
005aebd8  00 10 a0 e3                                      mov r1, #0
005aebdc  70 00 a0 e3                                      mov r0, #0x70
005aebe0  a8 70 93 e5                                      ldr r7, [r3, #0xa8]
005aebe4  a4 80 93 e5                                      ldr r8, [r3, #0xa4]
005aebe8  6f 15 fe eb                                      bl #0x5341ac
005aebec  04 c0 a0 e3                                      mov ip, #4
005aebf0  04 30 a0 e1                                      mov r3, r4
005aebf4  08 10 a0 e1                                      mov r1, r8
005aebf8  00 c0 8d e5                                      str ip, [sp]
005aebfc  07 20 a0 e1                                      mov r2, r7
005aec00  00 c0 e0 e3                                      mvn ip, #0
005aec04  00 50 a0 e1                                      mov r5, r0
005aec08  04 c0 8d e5                                      str ip, [sp, #4]
005aec0c  28 28 04 eb                                      bl #0x6b8cb4
005aec10  00 00 55 e3                                      cmp r5, #0
005aec14  84 50 8d e5                                      str r5, [sp, #0x84]
005aec18  04 30 95 15                                      ldrne r3, [r5, #4]
005aec1c  01 30 83 12                                      addne r3, r3, #1
005aec20  04 30 85 15                                      strne r3, [r5, #4]
005aec24  14 11 94 e5                                      ldr r1, [r4, #0x114]
005aec28  18 31 94 e5                                      ldr r3, [r4, #0x118]
005aec2c  03 00 51 e1                                      cmp r1, r3
005aec30  d5 00 00 0a                                      beq #0x5aef8c
005aec34  84 30 9d e5                                      ldr r3, [sp, #0x84]
005aec38  00 00 53 e3                                      cmp r3, #0
005aec3c  00 30 81 e5                                      str r3, [r1]
005aec40  04 20 93 15                                      ldrne r2, [r3, #4]
005aec44  01 20 82 12                                      addne r2, r2, #1
005aec48  04 20 83 15                                      strne r2, [r3, #4]
005aec4c  14 31 94 e5                                      ldr r3, [r4, #0x114]
005aec50  04 30 83 e2                                      add r3, r3, #4
005aec54  14 31 84 e5                                      str r3, [r4, #0x114]
005aec58  84 00 9d e5                                      ldr r0, [sp, #0x84]
005aec5c  00 00 50 e3                                      cmp r0, #0
005aec60  00 00 00 0a                                      beq #0x5aec68
005aec64  46 ba f5 eb                                      bl #0x31d584
005aec68  10 31 94 e5                                      ldr r3, [r4, #0x110]
005aec6c  00 20 a0 e3                                      mov r2, #0
005aec70  1c 21 84 e5                                      str r2, [r4, #0x11c]
005aec74  00 30 93 e5                                      ldr r3, [r3]
005aec78  20 31 84 e5                                      str r3, [r4, #0x120]
005aec7c  b8 d0 8d e2                                      add sp, sp, #0xb8
005aec80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005aec84  05 00 a0 e1                                      mov r0, r5
005aec88  63 c7 ff eb                                      bl #0x5a0a1c
005aec8c  05 00 a0 e1                                      mov r0, r5
005aec90  86 7d f5 eb                                      bl #0x30e2b0
005aec94  66 ff ff ea                                      b #0x5aea34
005aec98  05 00 a0 e1                                      mov r0, r5
005aec9c  5e c7 ff eb                                      bl #0x5a0a1c
005aeca0  05 00 a0 e1                                      mov r0, r5
005aeca4  81 7d f5 eb                                      bl #0x30e2b0
005aeca8  59 ff ff ea                                      b #0x5aea14
005aecac  05 00 a0 e1                                      mov r0, r5
005aecb0  59 c7 ff eb                                      bl #0x5a0a1c
005aecb4  05 00 a0 e1                                      mov r0, r5
005aecb8  7c 7d f5 eb                                      bl #0x30e2b0
005aecbc  17 ff ff ea                                      b #0x5ae920
005aecc0  05 00 a0 e1                                      mov r0, r5
005aecc4  54 c7 ff eb                                      bl #0x5a0a1c
005aecc8  05 00 a0 e1                                      mov r0, r5
005aeccc  77 7d f5 eb                                      bl #0x30e2b0
005aecd0  0a ff ff ea                                      b #0x5ae900
005aecd4  05 00 a0 e1                                      mov r0, r5
005aecd8  4f c7 ff eb                                      bl #0x5a0a1c
005aecdc  05 00 a0 e1                                      mov r0, r5
005aece0  72 7d f5 eb                                      bl #0x30e2b0
005aece4  c7 fe ff ea                                      b #0x5ae808
005aece8  05 00 a0 e1                                      mov r0, r5
005aecec  4a c7 ff eb                                      bl #0x5a0a1c
005aecf0  05 00 a0 e1                                      mov r0, r5
005aecf4  6d 7d f5 eb                                      bl #0x30e2b0
005aecf8  ba fe ff ea                                      b #0x5ae7e8
005aecfc  00 10 a0 e3                                      mov r1, #0
005aed00  0c 00 a0 e3                                      mov r0, #0xc
005aed04  27 15 fe eb                                      bl #0x5341a8
005aed08  00 30 a0 e3                                      mov r3, #0
005aed0c  08 30 80 e5                                      str r3, [r0, #8]
005aed10  00 30 80 e5                                      str r3, [r0]
005aed14  04 30 80 e5                                      str r3, [r0, #4]
005aed18  0c 30 a0 e3                                      mov r3, #0xc
005aed1c  00 30 8d e5                                      str r3, [sp]
005aed20  01 30 a0 e3                                      mov r3, #1
005aed24  00 20 a0 e3                                      mov r2, #0
005aed28  09 00 8d e9                                      stmib sp, {r0, r3}
005aed2c  a4 50 8d e2                                      add r5, sp, #0xa4
005aed30  02 30 a0 e1                                      mov r3, r2
005aed34  00 c0 94 e5                                      ldr ip, [r4]
005aed38  05 00 a0 e1                                      mov r0, r5
005aed3c  04 10 a0 e1                                      mov r1, r4
005aed40  0f e0 a0 e1                                      mov lr, pc
005aed44  78 f0 9c e5                                      ldr pc, [ip, #0x78]
005aed48  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
005aed4c  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
005aed50  08 00 12 e3                                      tst r2, #8
005aed54  72 00 00 1a                                      bne #0x5aef24
005aed58  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
005aed5c  04 00 52 e3                                      cmp r2, #4
005aed60  04 00 00 0a                                      beq #0x5aed78
005aed64  03 00 a0 e1                                      mov r0, r3
005aed68  01 10 a0 e3                                      mov r1, #1
005aed6c  00 30 93 e5                                      ldr r3, [r3]
005aed70  0f e0 a0 e1                                      mov lr, pc
005aed74  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005aed78  a0 00 8d e2                                      add r0, sp, #0xa0
005aed7c  00 10 a0 e3                                      mov r1, #0
005aed80  75 c9 ff eb                                      bl #0x5a135c
005aed84  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
005aed88  00 00 53 e3                                      cmp r3, #0
005aed8c  00 20 93 15                                      ldrne r2, [r3]
005aed90  01 20 82 12                                      addne r2, r2, #1
005aed94  00 20 83 15                                      strne r2, [r3]
005aed98  40 61 94 e5                                      ldr r6, [r4, #0x140]
005aed9c  40 31 84 e5                                      str r3, [r4, #0x140]
005aeda0  00 00 56 e3                                      cmp r6, #0
005aeda4  04 00 00 0a                                      beq #0x5aedbc
005aeda8  00 30 96 e5                                      ldr r3, [r6]
005aedac  01 30 43 e2                                      sub r3, r3, #1
005aedb0  00 00 53 e3                                      cmp r3, #0
005aedb4  00 30 86 e5                                      str r3, [r6]
005aedb8  61 00 00 0a                                      beq #0x5aef44
005aedbc  a0 60 9d e5                                      ldr r6, [sp, #0xa0]
005aedc0  00 00 56 e3                                      cmp r6, #0
005aedc4  04 00 00 0a                                      beq #0x5aeddc
005aedc8  00 30 96 e5                                      ldr r3, [r6]
005aedcc  01 30 43 e2                                      sub r3, r3, #1
005aedd0  00 00 53 e3                                      cmp r3, #0
005aedd4  00 30 86 e5                                      str r3, [r6]
005aedd8  54 00 00 0a                                      beq #0x5aef30
005aeddc  05 10 a0 e1                                      mov r1, r5
005aede0  00 20 e0 e3                                      mvn r2, #0
005aede4  40 01 94 e5                                      ldr r0, [r4, #0x140]
005aede8  f4 c9 ff eb                                      bl #0x5a15c0
005aedec  40 31 94 e5                                      ldr r3, [r4, #0x140]
005aedf0  01 10 a0 e3                                      mov r1, #1
005aedf4  00 20 a0 e3                                      mov r2, #0
005aedf8  08 10 83 e5                                      str r1, [r3, #8]
005aedfc  40 31 94 e5                                      ldr r3, [r4, #0x140]
005aee00  9f 20 cd e5                                      strb r2, [sp, #0x9f]
005aee04  9c 20 cd e5                                      strb r2, [sp, #0x9c]
005aee08  02 00 53 e1                                      cmp r3, r2
005aee0c  9d 20 cd e5                                      strb r2, [sp, #0x9d]
005aee10  9e 10 cd e5                                      strb r1, [sp, #0x9e]
005aee14  98 30 8d e5                                      str r3, [sp, #0x98]
005aee18  00 20 93 15                                      ldrne r2, [r3]
005aee1c  24 00 a0 e3                                      mov r0, #0x24
005aee20  01 20 82 10                                      addne r2, r2, r1
005aee24  00 20 83 15                                      strne r2, [r3]
005aee28  00 10 a0 e3                                      mov r1, #0
005aee2c  de 14 fe eb                                      bl #0x5341ac
005aee30  9c 30 8d e2                                      add r3, sp, #0x9c
005aee34  01 c0 a0 e3                                      mov ip, #1
005aee38  98 10 8d e2                                      add r1, sp, #0x98
005aee3c  02 20 a0 e3                                      mov r2, #2
005aee40  00 50 a0 e1                                      mov r5, r0
005aee44  00 c0 8d e5                                      str ip, [sp]
005aee48  79 c6 ff eb                                      bl #0x5a0834
005aee4c  00 00 55 e3                                      cmp r5, #0
005aee50  00 30 95 15                                      ldrne r3, [r5]
005aee54  01 30 83 12                                      addne r3, r3, #1
005aee58  00 30 85 15                                      strne r3, [r5]
005aee5c  44 01 94 e5                                      ldr r0, [r4, #0x144]
005aee60  44 51 84 e5                                      str r5, [r4, #0x144]
005aee64  00 00 50 e3                                      cmp r0, #0
005aee68  05 00 00 0a                                      beq #0x5aee84
005aee6c  00 30 90 e5                                      ldr r3, [r0]
005aee70  01 30 43 e2                                      sub r3, r3, #1
005aee74  00 00 53 e3                                      cmp r3, #0
005aee78  00 30 80 e5                                      str r3, [r0]
005aee7c  00 00 00 1a                                      bne #0x5aee84
005aee80  0a 7d f5 eb                                      bl #0x30e2b0
005aee84  98 50 9d e5                                      ldr r5, [sp, #0x98]
005aee88  00 00 55 e3                                      cmp r5, #0
005aee8c  04 00 00 0a                                      beq #0x5aeea4
005aee90  00 30 95 e5                                      ldr r3, [r5]
005aee94  01 30 43 e2                                      sub r3, r3, #1
005aee98  00 00 53 e3                                      cmp r3, #0
005aee9c  00 30 85 e5                                      str r3, [r5]
005aeea0  2c 00 00 0a                                      beq #0x5aef58
005aeea4  04 50 a0 e1                                      mov r5, r4
005aeea8  0c 60 84 e2                                      add r6, r4, #0xc
005aeeac  44 21 94 e5                                      ldr r2, [r4, #0x144]
005aeeb0  00 00 52 e3                                      cmp r2, #0
005aeeb4  00 30 92 15                                      ldrne r3, [r2]
005aeeb8  01 30 83 12                                      addne r3, r3, #1
005aeebc  00 30 82 15                                      strne r3, [r2]
005aeec0  48 31 95 e5                                      ldr r3, [r5, #0x148]
005aeec4  48 21 85 e5                                      str r2, [r5, #0x148]
005aeec8  04 50 85 e2                                      add r5, r5, #4
005aeecc  00 00 53 e3                                      cmp r3, #0
005aeed0  03 00 a0 e1                                      mov r0, r3
005aeed4  05 00 00 0a                                      beq #0x5aeef0
005aeed8  00 20 93 e5                                      ldr r2, [r3]
005aeedc  01 20 42 e2                                      sub r2, r2, #1
005aeee0  00 00 52 e3                                      cmp r2, #0
005aeee4  00 20 83 e5                                      str r2, [r3]
005aeee8  00 00 00 1a                                      bne #0x5aeef0
005aeeec  ef 7c f5 eb                                      bl #0x30e2b0
005aeef0  06 00 55 e1                                      cmp r5, r6
005aeef4  ec ff ff 1a                                      bne #0x5aeeac
005aeef8  04 00 a0 e1                                      mov r0, r4
005aeefc  00 30 94 e5                                      ldr r3, [r4]
005aef00  02 1a a0 e3                                      mov r1, #0x2000
005aef04  01 20 a0 e3                                      mov r2, #1
005aef08  0f e0 a0 e1                                      mov lr, pc
005aef0c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
005aef10  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
005aef14  00 00 50 e3                                      cmp r0, #0
005aef18  20 fe ff 0a                                      beq #0x5ae7a0
005aef1c  98 b9 f5 eb                                      bl #0x31d584
005aef20  1e fe ff ea                                      b #0x5ae7a0
005aef24  02 00 12 e3                                      tst r2, #2
005aef28  92 ff ff 0a                                      beq #0x5aed78
005aef2c  89 ff ff ea                                      b #0x5aed58
005aef30  06 00 a0 e1                                      mov r0, r6
005aef34  b8 c6 ff eb                                      bl #0x5a0a1c
005aef38  06 00 a0 e1                                      mov r0, r6
005aef3c  db 7c f5 eb                                      bl #0x30e2b0
005aef40  a5 ff ff ea                                      b #0x5aeddc
005aef44  06 00 a0 e1                                      mov r0, r6
005aef48  b3 c6 ff eb                                      bl #0x5a0a1c
005aef4c  06 00 a0 e1                                      mov r0, r6
005aef50  d6 7c f5 eb                                      bl #0x30e2b0
005aef54  98 ff ff ea                                      b #0x5aedbc
005aef58  05 00 a0 e1                                      mov r0, r5
005aef5c  ae c6 ff eb                                      bl #0x5a0a1c
005aef60  05 00 a0 e1                                      mov r0, r5
005aef64  d1 7c f5 eb                                      bl #0x30e2b0
005aef68  cd ff ff ea                                      b #0x5aeea4
005aef6c  05 20 a0 e1                                      mov r2, r5
005aef70  bc 00 84 e2                                      add r0, r4, #0xbc
005aef74  8a f2 ff eb                                      bl #0x5ab9a4
005aef78  b8 fd ff ea                                      b #0x5ae660
005aef7c  06 00 a0 e1                                      mov r0, r6
005aef80  88 20 8d e2                                      add r2, sp, #0x88
005aef84  1f f2 ff eb                                      bl #0x5ab808
005aef88  0d ff ff ea                                      b #0x5aebc4
005aef8c  06 00 a0 e1                                      mov r0, r6
005aef90  84 20 8d e2                                      add r2, sp, #0x84
005aef94  1b f2 ff eb                                      bl #0x5ab808
005aef98  2e ff ff ea                                      b #0x5aec58

; FUNCTION 0x005b1338, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver22unregisterRenderBufferEPNS0_13IRenderBufferE
; demangled: glitch::video::IVideoDriver::unregisterRenderBuffer(glitch::video::IRenderBuffer*)
; decoder-mode: arm
005b1338  10 40 2d e9                                      push {r4, lr}
005b133c  10 d0 4d e2                                      sub sp, sp, #0x10
005b1340  10 20 8d e2                                      add r2, sp, #0x10
005b1344  0c 10 22 e5                                      str r1, [r2, #-0xc]!
005b1348  00 40 a0 e1                                      mov r4, r0
005b134c  0c 30 8d e2                                      add r3, sp, #0xc
005b1350  54 01 90 e5                                      ldr r0, [r0, #0x154]
005b1354  58 11 94 e5                                      ldr r1, [r4, #0x158]
005b1358  50 f7 ff eb                                      bl #0x5af0a0
005b135c  58 31 94 e5                                      ldr r3, [r4, #0x158]
005b1360  03 00 50 e1                                      cmp r0, r3
005b1364  06 00 00 0a                                      beq #0x5b1384
005b1368  04 10 80 e2                                      add r1, r0, #4
005b136c  01 00 53 e1                                      cmp r3, r1
005b1370  01 00 00 0a                                      beq #0x5b137c
005b1374  01 20 53 e0                                      subs r2, r3, r1
005b1378  03 00 00 1a                                      bne #0x5b138c
005b137c  04 30 43 e2                                      sub r3, r3, #4
005b1380  58 31 84 e5                                      str r3, [r4, #0x158]
005b1384  10 d0 8d e2                                      add sp, sp, #0x10
005b1388  10 80 bd e8                                      pop {r4, pc}
005b138c  e9 72 f5 eb                                      bl #0x30df38
005b1390  58 31 94 e5                                      ldr r3, [r4, #0x158]
005b1394  f8 ff ff ea                                      b #0x5b137c

; FUNCTION 0x005d8624, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver16removeBatchBakerEv
; demangled: glitch::video::IVideoDriver::removeBatchBaker()
; decoder-mode: arm
005d8624  30 40 2d e9                                      push {r4, r5, lr}
005d8628  00 40 a0 e1                                      mov r4, r0
005d862c  28 01 90 e5                                      ldr r0, [r0, #0x128]
005d8630  00 30 a0 e3                                      mov r3, #0
005d8634  0c d0 4d e2                                      sub sp, sp, #0xc
005d8638  03 00 50 e1                                      cmp r0, r3
005d863c  28 31 84 e5                                      str r3, [r4, #0x128]
005d8640  00 00 00 0a                                      beq #0x5d8648
005d8644  ce 13 f5 eb                                      bl #0x31d584
005d8648  24 31 94 e5                                      ldr r3, [r4, #0x124]
005d864c  08 00 8d e2                                      add r0, sp, #8
005d8650  00 50 a0 e3                                      mov r5, #0
005d8654  04 30 20 e5                                      str r3, [r0, #-4]!
005d8658  24 51 84 e5                                      str r5, [r4, #0x124]
005d865c  61 e1 f4 eb                                      bl #0x310be8
005d8660  2c 01 94 e5                                      ldr r0, [r4, #0x12c]
005d8664  05 00 50 e1                                      cmp r0, r5
005d8668  04 00 00 0a                                      beq #0x5d8680
005d866c  41 ce ff eb                                      bl #0x5cbf78
005d8670  2c 01 94 e5                                      ldr r0, [r4, #0x12c]
005d8674  03 70 fd eb                                      bl #0x534688
005d8678  30 51 84 e5                                      str r5, [r4, #0x130]
005d867c  2c 51 84 e5                                      str r5, [r4, #0x12c]
005d8680  0c d0 8d e2                                      add sp, sp, #0xc
005d8684  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006498a0, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver16getProcessBufferENS0_21E_PROCESS_BUFFER_TYPEEjRKN5boost13intrusive_ptrINS_5scene11CMeshBufferEEEb
; demangled: glitch::video::IVideoDriver::getProcessBuffer(glitch::video::E_PROCESS_BUFFER_TYPE, unsigned int, boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&, bool)
; decoder-mode: arm
006498a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006498a4  00 40 93 e5                                      ldr r4, [r3]
006498a8  10 d0 4d e2                                      sub sp, sp, #0x10
006498ac  00 c0 90 e5                                      ldr ip, [r0]
006498b0  04 80 94 e5                                      ldr r8, [r4, #4]
006498b4  24 e0 94 e5                                      ldr lr, [r4, #0x24]
006498b8  28 50 dd e5                                      ldrb r5, [sp, #0x28]
006498bc  01 80 88 e2                                      add r8, r8, #1
006498c0  14 70 84 e2                                      add r7, r4, #0x14
006498c4  30 60 84 e2                                      add r6, r4, #0x30
006498c8  f0 c1 9c e5                                      ldr ip, [ip, #0x1f0]
006498cc  28 30 94 e5                                      ldr r3, [r4, #0x28]
006498d0  04 80 84 e5                                      str r8, [r4, #4]
006498d4  00 20 8d e5                                      str r2, [sp]
006498d8  0c 50 8d e5                                      str r5, [sp, #0xc]
006498dc  0e 20 a0 e1                                      mov r2, lr
006498e0  04 70 8d e5                                      str r7, [sp, #4]
006498e4  08 60 8d e5                                      str r6, [sp, #8]
006498e8  3c ff 2f e1                                      blx ip
006498ec  00 50 a0 e1                                      mov r5, r0
006498f0  04 00 a0 e1                                      mov r0, r4
006498f4  22 4f f3 eb                                      bl #0x31d584
006498f8  05 00 a0 e1                                      mov r0, r5
006498fc  10 d0 8d e2                                      add sp, sp, #0x10
00649900  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007d4ebc, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver4drawERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingE.clone.2
; demangled: glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**) [clone .clone.2]
; decoder-mode: arm
007d4ebc  04 e0 2d e5                                      str lr, [sp, #-4]!
007d4ec0  00 c0 90 e5                                      ldr ip, [r0]
007d4ec4  14 d0 4d e2                                      sub sp, sp, #0x14
007d4ec8  10 e0 8d e2                                      add lr, sp, #0x10
007d4ecc  00 30 a0 e3                                      mov r3, #0
007d4ed0  58 c0 9c e5                                      ldr ip, [ip, #0x58]
007d4ed4  04 30 2e e5                                      str r3, [lr, #-4]!
007d4ed8  00 e0 8d e5                                      str lr, [sp]
007d4edc  3c ff 2f e1                                      blx ip
007d4ee0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007d4ee4  00 00 50 e3                                      cmp r0, #0
007d4ee8  00 00 00 0a                                      beq #0x7d4ef0
007d4eec  a4 21 ed eb                                      bl #0x31d584
007d4ef0  14 d0 8d e2                                      add sp, sp, #0x14
007d4ef4  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x007d4ef8, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver11setMaterialERKN5boost13intrusive_ptrINS0_9CMaterialEEEPKNS3_INS0_19CVertexAttributeMapEEE.clone.3
; demangled: glitch::video::IVideoDriver::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*) [clone .clone.3]
; decoder-mode: arm
007d4ef8  70 40 2d e9                                      push {r4, r5, r6, lr}
007d4efc  00 30 91 e5                                      ldr r3, [r1]
007d4f00  01 40 a0 e1                                      mov r4, r1
007d4f04  00 50 a0 e1                                      mov r5, r0
007d4f08  00 00 53 e3                                      cmp r3, #0
007d4f0c  ff 20 a0 03                                      moveq r2, #0xff
007d4f10  02 00 00 0a                                      beq #0x7d4f20
007d4f14  03 00 a0 e1                                      mov r0, r3
007d4f18  85 c3 f7 eb                                      bl #0x5c5d34
007d4f1c  00 20 a0 e1                                      mov r2, r0
007d4f20  05 00 a0 e1                                      mov r0, r5
007d4f24  04 10 a0 e1                                      mov r1, r4
007d4f28  00 30 a0 e3                                      mov r3, #0
007d4f2c  70 40 bd e8                                      pop {r4, r5, r6, lr}
007d4f30  0c 61 f7 ea                                      b #0x5ad368
