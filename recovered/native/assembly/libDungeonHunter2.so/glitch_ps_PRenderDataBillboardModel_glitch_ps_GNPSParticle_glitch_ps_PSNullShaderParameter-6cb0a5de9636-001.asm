; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00638728, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE22getRenderVertexStreamsEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::getRenderVertexStreams()
; decoder-mode: arm
00638728  10 30 91 e5                                      ldr r3, [r1, #0x10]
0063872c  00 00 53 e3                                      cmp r3, #0
00638730  00 30 80 e5                                      str r3, [r0]
00638734  00 20 93 15                                      ldrne r2, [r3]
00638738  01 20 82 12                                      addne r2, r2, #1
0063873c  00 20 83 15                                      strne r2, [r3]
00638740  1e ff 2f e1                                      bx lr

; FUNCTION 0x00638744, declared_size=32, range_size=32, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n20_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE22getRenderVertexStreamsEv
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::getRenderVertexStreams()
; decoder-mode: arm
00638744  10 40 2d e9                                      push {r4, lr}
00638748  00 30 91 e5                                      ldr r3, [r1]
0063874c  00 40 a0 e1                                      mov r4, r0
00638750  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00638754  03 10 81 e0                                      add r1, r1, r3
00638758  f2 ff ff eb                                      bl #0x638728
0063875c  04 00 a0 e1                                      mov r0, r4
00638760  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00638764, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZNK6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE25getRenderBufferSizeNeededEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::getRenderBufferSizeNeeded() const
; decoder-mode: arm
00638764  98 00 90 e5                                      ldr r0, [r0, #0x98]
00638768  1e ff 2f e1                                      bx lr

; FUNCTION 0x0063876c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n24_NK6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE25getRenderBufferSizeNeededEv
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::getRenderBufferSizeNeeded() const
; decoder-mode: arm
0063876c  00 30 90 e5                                      ldr r3, [r0]
00638770  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00638774  03 00 80 e0                                      add r0, r0, r3
00638778  f9 ff ff ea                                      b #0x638764

; FUNCTION 0x0063877c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15initPRenderDataEPS2_SD_
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::initPRenderData(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063877c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00638780, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n148_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15initPRenderDataEPS2_SD_
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::initPRenderData(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
00638780  00 30 90 e5                                      ldr r3, [r0]
00638784  94 30 13 e5                                      ldr r3, [r3, #-0x94]
00638788  03 00 80 e0                                      add r0, r0, r3
0063878c  fa ff ff ea                                      b #0x63877c

; FUNCTION 0x00639ad0, declared_size=572, range_size=572, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE16applyPRenderDataEPS2_SD_
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::applyPRenderData(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
00639ad0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00639ad4  14 d0 4d e2                                      sub sp, sp, #0x14
00639ad8  04 10 8d e5                                      str r1, [sp, #4]
00639adc  02 00 51 e1                                      cmp r1, r2
00639ae0  02 a0 a0 e1                                      mov sl, r2
00639ae4  60 20 90 e5                                      ldr r2, [r0, #0x60]
00639ae8  02 31 e0 e3                                      mvn r3, #0x80000000
00639aec  02 c5 e0 e3                                      mvn ip, #0x800000
00639af0  02 35 43 e2                                      sub r3, r3, #0x800000
00639af4  88 c0 80 e5                                      str ip, [r0, #0x88]
00639af8  7c 30 80 e5                                      str r3, [r0, #0x7c]
00639afc  80 c0 80 e5                                      str ip, [r0, #0x80]
00639b00  84 c0 80 e5                                      str ip, [r0, #0x84]
00639b04  74 30 80 e5                                      str r3, [r0, #0x74]
00639b08  78 30 80 e5                                      str r3, [r0, #0x78]
00639b0c  00 20 8d e5                                      str r2, [sp]
00639b10  00 40 a0 e1                                      mov r4, r0
00639b14  64 90 90 e5                                      ldr sb, [r0, #0x64]
00639b18  68 b0 90 e5                                      ldr fp, [r0, #0x68]
00639b1c  04 50 9d 05                                      ldreq r5, [sp, #4]
00639b20  4d 00 00 0a                                      beq #0x639c5c
00639b24  04 50 9d e5                                      ldr r5, [sp, #4]
00639b28  00 10 95 e5                                      ldr r1, [r5]
00639b2c  00 00 9d e5                                      ldr r0, [sp]
00639b30  1d 52 f3 eb                                      bl #0x30e3ac
00639b34  04 10 95 e5                                      ldr r1, [r5, #4]
00639b38  00 70 a0 e1                                      mov r7, r0
00639b3c  09 00 a0 e1                                      mov r0, sb
00639b40  19 52 f3 eb                                      bl #0x30e3ac
00639b44  08 10 95 e5                                      ldr r1, [r5, #8]
00639b48  00 80 a0 e1                                      mov r8, r0
00639b4c  0b 00 a0 e1                                      mov r0, fp
00639b50  15 52 f3 eb                                      bl #0x30e3ac
00639b54  07 10 a0 e1                                      mov r1, r7
00639b58  00 60 a0 e1                                      mov r6, r0
00639b5c  07 00 a0 e1                                      mov r0, r7
00639b60  81 54 f3 eb                                      bl #0x30ed6c
00639b64  08 10 a0 e1                                      mov r1, r8
00639b68  00 70 a0 e1                                      mov r7, r0
00639b6c  08 00 a0 e1                                      mov r0, r8
00639b70  7d 54 f3 eb                                      bl #0x30ed6c
00639b74  00 10 a0 e1                                      mov r1, r0
00639b78  07 00 a0 e1                                      mov r0, r7
00639b7c  08 54 f3 eb                                      bl #0x30eba4
00639b80  06 10 a0 e1                                      mov r1, r6
00639b84  00 70 a0 e1                                      mov r7, r0
00639b88  06 00 a0 e1                                      mov r0, r6
00639b8c  76 54 f3 eb                                      bl #0x30ed6c
00639b90  00 10 a0 e1                                      mov r1, r0
00639b94  07 00 a0 e1                                      mov r0, r7
00639b98  01 54 f3 eb                                      bl #0x30eba4
00639b9c  00 80 95 e5                                      ldr r8, [r5]
00639ba0  98 00 85 e5                                      str r0, [r5, #0x98]
00639ba4  80 10 94 e5                                      ldr r1, [r4, #0x80]
00639ba8  08 00 a0 e1                                      mov r0, r8
00639bac  d1 51 f3 eb                                      bl #0x30e2f8
00639bb0  04 70 95 e5                                      ldr r7, [r5, #4]
00639bb4  00 00 50 e3                                      cmp r0, #0
00639bb8  08 60 95 e5                                      ldr r6, [r5, #8]
00639bbc  84 10 94 e5                                      ldr r1, [r4, #0x84]
00639bc0  80 80 84 15                                      strne r8, [r4, #0x80]
00639bc4  07 00 a0 e1                                      mov r0, r7
00639bc8  ca 51 f3 eb                                      bl #0x30e2f8
00639bcc  00 00 50 e3                                      cmp r0, #0
00639bd0  88 10 94 e5                                      ldr r1, [r4, #0x88]
00639bd4  84 70 84 15                                      strne r7, [r4, #0x84]
00639bd8  06 00 a0 e1                                      mov r0, r6
00639bdc  c5 51 f3 eb                                      bl #0x30e2f8
00639be0  00 00 50 e3                                      cmp r0, #0
00639be4  74 10 94 e5                                      ldr r1, [r4, #0x74]
00639be8  88 60 84 15                                      strne r6, [r4, #0x88]
00639bec  08 00 a0 e1                                      mov r0, r8
00639bf0  c5 52 f3 eb                                      bl #0x30e70c
00639bf4  00 00 50 e3                                      cmp r0, #0
00639bf8  78 10 94 e5                                      ldr r1, [r4, #0x78]
00639bfc  74 80 84 15                                      strne r8, [r4, #0x74]
00639c00  07 00 a0 e1                                      mov r0, r7
00639c04  c0 52 f3 eb                                      bl #0x30e70c
00639c08  00 00 50 e3                                      cmp r0, #0
00639c0c  78 70 84 15                                      strne r7, [r4, #0x78]
00639c10  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00639c14  06 00 a0 e1                                      mov r0, r6
00639c18  bb 52 f3 eb                                      bl #0x30e70c
00639c1c  9c 50 85 e2                                      add r5, r5, #0x9c
00639c20  00 00 50 e3                                      cmp r0, #0
00639c24  7c 60 84 15                                      strne r6, [r4, #0x7c]
00639c28  05 00 5a e1                                      cmp sl, r5
00639c2c  bd ff ff 1a                                      bne #0x639b28
00639c30  04 20 9d e5                                      ldr r2, [sp, #4]
00639c34  9c 50 a0 e3                                      mov r5, #0x9c
00639c38  9c 30 82 e2                                      add r3, r2, #0x9c
00639c3c  0a a0 63 e0                                      rsb sl, r3, sl
00639c40  97 3f 06 e3                                      movw r3, #0x6f97
00639c44  2a a1 a0 e1                                      lsr sl, sl, #2
00639c48  f9 36 41 e3                                      movt r3, #0x16f9
00639c4c  93 0a 03 e0                                      mul r3, r3, sl
00639c50  03 31 c3 e3                                      bic r3, r3, #0xc0000000
00639c54  93 55 25 e0                                      mla r5, r3, r5, r5
00639c58  05 50 82 e0                                      add r5, r2, r5
00639c5c  00 30 94 e5                                      ldr r3, [r4]
00639c60  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00639c64  03 00 84 e0                                      add r0, r4, r3
00639c68  54 20 d0 e5                                      ldrb r2, [r0, #0x54]
00639c6c  00 00 52 e3                                      cmp r2, #0
00639c70  05 00 00 1a                                      bne #0x639c8c
00639c74  04 00 9d e5                                      ldr r0, [sp, #4]
00639c78  05 10 a0 e1                                      mov r1, r5
00639c7c  0c 20 8d e2                                      add r2, sp, #0xc
00639c80  df fe ff eb                                      bl #0x639804
00639c84  14 d0 8d e2                                      add sp, sp, #0x14
00639c88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00639c8c  03 30 94 e7                                      ldr r3, [r4, r3]
00639c90  0f e0 a0 e1                                      mov lr, pc
00639c94  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00639c98  30 80 90 e5                                      ldr r8, [r0, #0x30]
00639c9c  00 30 a0 e1                                      mov r3, r0
00639ca0  74 00 94 e5                                      ldr r0, [r4, #0x74]
00639ca4  08 10 a0 e1                                      mov r1, r8
00639ca8  38 60 93 e5                                      ldr r6, [r3, #0x38]
00639cac  34 70 93 e5                                      ldr r7, [r3, #0x34]
00639cb0  bb 53 f3 eb                                      bl #0x30eba4
00639cb4  07 10 a0 e1                                      mov r1, r7
00639cb8  74 00 84 e5                                      str r0, [r4, #0x74]
00639cbc  78 00 94 e5                                      ldr r0, [r4, #0x78]
00639cc0  b7 53 f3 eb                                      bl #0x30eba4
00639cc4  06 10 a0 e1                                      mov r1, r6
00639cc8  78 00 84 e5                                      str r0, [r4, #0x78]
00639ccc  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
00639cd0  b3 53 f3 eb                                      bl #0x30eba4
00639cd4  08 10 a0 e1                                      mov r1, r8
00639cd8  7c 00 84 e5                                      str r0, [r4, #0x7c]
00639cdc  80 00 94 e5                                      ldr r0, [r4, #0x80]
00639ce0  af 53 f3 eb                                      bl #0x30eba4
00639ce4  07 10 a0 e1                                      mov r1, r7
00639ce8  80 00 84 e5                                      str r0, [r4, #0x80]
00639cec  84 00 94 e5                                      ldr r0, [r4, #0x84]
00639cf0  ab 53 f3 eb                                      bl #0x30eba4
00639cf4  06 10 a0 e1                                      mov r1, r6
00639cf8  84 00 84 e5                                      str r0, [r4, #0x84]
00639cfc  88 00 94 e5                                      ldr r0, [r4, #0x88]
00639d00  a7 53 f3 eb                                      bl #0x30eba4
00639d04  88 00 84 e5                                      str r0, [r4, #0x88]
00639d08  d9 ff ff ea                                      b #0x639c74

; FUNCTION 0x00639d0c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n152_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE16applyPRenderDataEPS2_SD_
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::applyPRenderData(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
00639d0c  00 30 90 e5                                      ldr r3, [r0]
00639d10  98 30 13 e5                                      ldr r3, [r3, #-0x98]
00639d14  03 00 80 e0                                      add r0, r0, r3
00639d18  6c ff ff ea                                      b #0x639ad0

; FUNCTION 0x0063b760, declared_size=72, range_size=72, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE16deallocateBufferEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::deallocateBuffer()
; decoder-mode: arm
0063b760  10 40 2d e9                                      push {r4, lr}
0063b764  00 40 a0 e1                                      mov r4, r0
0063b768  90 00 90 e5                                      ldr r0, [r0, #0x90]
0063b76c  00 00 50 e3                                      cmp r0, #0
0063b770  02 00 00 0a                                      beq #0x63b780
0063b774  8c 30 d4 e5                                      ldrb r3, [r4, #0x8c]
0063b778  00 00 53 e3                                      cmp r3, #0
0063b77c  00 00 00 1a                                      bne #0x63b784
0063b780  10 80 bd e8                                      pop {r4, pc}
0063b784  fb 47 00 eb                                      bl #0x64d778
0063b788  10 20 94 e5                                      ldr r2, [r4, #0x10]
0063b78c  00 30 a0 e3                                      mov r3, #0
0063b790  90 30 84 e5                                      str r3, [r4, #0x90]
0063b794  14 00 92 e5                                      ldr r0, [r2, #0x14]
0063b798  03 10 a0 e1                                      mov r1, r3
0063b79c  03 20 a0 e1                                      mov r2, r3
0063b7a0  10 40 bd e8                                      pop {r4, lr}
0063b7a4  42 99 fd ea                                      b #0x5a1cb4

; FUNCTION 0x0063b7a8, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15setRenderBufferEPvj
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::setRenderBuffer(void*, unsigned int)
; decoder-mode: arm
0063b7a8  70 40 2d e9                                      push {r4, r5, r6, lr}
0063b7ac  00 40 51 e2                                      subs r4, r1, #0
0063b7b0  02 60 a0 e1                                      mov r6, r2
0063b7b4  00 50 a0 e1                                      mov r5, r0
0063b7b8  0a 00 00 0a                                      beq #0x63b7e8
0063b7bc  e7 ff ff eb                                      bl #0x63b760
0063b7c0  10 20 95 e5                                      ldr r2, [r5, #0x10]
0063b7c4  00 30 a0 e3                                      mov r3, #0
0063b7c8  8c 30 c5 e5                                      strb r3, [r5, #0x8c]
0063b7cc  90 40 85 e5                                      str r4, [r5, #0x90]
0063b7d0  94 60 85 e5                                      str r6, [r5, #0x94]
0063b7d4  14 00 92 e5                                      ldr r0, [r2, #0x14]
0063b7d8  06 10 a0 e1                                      mov r1, r6
0063b7dc  04 20 a0 e1                                      mov r2, r4
0063b7e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0063b7e4  32 99 fd ea                                      b #0x5a1cb4
0063b7e8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0063b7ec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n28_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15setRenderBufferEPvj
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::setRenderBuffer(void*, unsigned int)
; decoder-mode: arm
0063b7ec  00 30 90 e5                                      ldr r3, [r0]
0063b7f0  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0063b7f4  03 00 80 e0                                      add r0, r0, r3
0063b7f8  ea ff ff ea                                      b #0x63b7a8

; FUNCTION 0x0063fb6c, declared_size=328, range_size=328, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE20initPRenderDataModelEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::initPRenderDataModel()
; decoder-mode: arm
0063fb6c  70 40 2d e9                                      push {r4, r5, r6, lr}
0063fb70  00 30 90 e5                                      ldr r3, [r0]
0063fb74  34 11 9f e5                                      ldr r1, [pc, #0x134]
0063fb78  10 d0 4d e2                                      sub sp, sp, #0x10
0063fb7c  0c 60 13 e5                                      ldr r6, [r3, #-0xc]
0063fb80  01 10 8f e0                                      add r1, pc, r1
0063fb84  00 50 a0 e1                                      mov r5, r0
0063fb88  06 60 80 e0                                      add r6, r0, r6
0063fb8c  06 00 a0 e1                                      mov r0, r6
0063fb90  2d ee ff eb                                      bl #0x63b44c
0063fb94  34 c0 96 e5                                      ldr ip, [r6, #0x34]
0063fb98  30 10 86 e2                                      add r1, r6, #0x30
0063fb9c  00 40 a0 e1                                      mov r4, r0
0063fba0  00 00 5c e3                                      cmp ip, #0
0063fba4  01 c0 a0 01                                      moveq ip, r1
0063fba8  0a 00 00 0a                                      beq #0x63fbd8
0063fbac  01 20 a0 e1                                      mov r2, r1
0063fbb0  00 00 00 ea                                      b #0x63fbb8
0063fbb4  03 c0 a0 e1                                      mov ip, r3
0063fbb8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063fbbc  03 00 54 e1                                      cmp r4, r3
0063fbc0  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0063fbc4  08 30 9c 95                                      ldrls r3, [ip, #8]
0063fbc8  02 c0 a0 81                                      movhi ip, r2
0063fbcc  0c 20 a0 e1                                      mov r2, ip
0063fbd0  00 00 53 e3                                      cmp r3, #0
0063fbd4  f6 ff ff 1a                                      bne #0x63fbb4
0063fbd8  0c 00 51 e1                                      cmp r1, ip
0063fbdc  2a 00 00 0a                                      beq #0x63fc8c
0063fbe0  10 20 9c e5                                      ldr r2, [ip, #0x10]
0063fbe4  0c 30 a0 e1                                      mov r3, ip
0063fbe8  02 00 54 e1                                      cmp r4, r2
0063fbec  26 00 00 3a                                      blo #0x63fc8c
0063fbf0  04 10 95 e5                                      ldr r1, [r5, #4]
0063fbf4  14 30 93 e5                                      ldr r3, [r3, #0x14]
0063fbf8  00 00 51 e3                                      cmp r1, #0
0063fbfc  00 40 93 e5                                      ldr r4, [r3]
0063fc00  1f 00 00 0a                                      beq #0x63fc84
0063fc04  08 30 95 e5                                      ldr r3, [r5, #8]
0063fc08  00 00 53 e3                                      cmp r3, #0
0063fc0c  1c 00 00 0a                                      beq #0x63fc84
0063fc10  04 30 93 e5                                      ldr r3, [r3, #4]
0063fc14  10 00 85 e2                                      add r0, r5, #0x10
0063fc18  04 20 93 e5                                      ldr r2, [r3, #4]
0063fc1c  1d ff ff eb                                      bl #0x63f898
0063fc20  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
0063fc24  a0 20 95 e5                                      ldr r2, [r5, #0xa0]
0063fc28  00 30 a0 e3                                      mov r3, #0
0063fc2c  91 04 04 e0                                      mul r4, r1, r4
0063fc30  01 10 a0 e3                                      mov r1, #1
0063fc34  03 00 52 e1                                      cmp r2, r3
0063fc38  24 30 85 e5                                      str r3, [r5, #0x24]
0063fc3c  1c 30 85 e5                                      str r3, [r5, #0x1c]
0063fc40  20 30 85 e5                                      str r3, [r5, #0x20]
0063fc44  98 40 85 e5                                      str r4, [r5, #0x98]
0063fc48  b8 12 c5 e1                                      strh r1, [r5, #0x28]
0063fc4c  04 30 92 15                                      ldrne r3, [r2, #4]
0063fc50  01 30 83 12                                      addne r3, r3, #1
0063fc54  04 30 82 15                                      strne r3, [r2, #4]
0063fc58  14 00 95 e5                                      ldr r0, [r5, #0x14]
0063fc5c  14 20 85 e5                                      str r2, [r5, #0x14]
0063fc60  00 00 50 e3                                      cmp r0, #0
0063fc64  00 00 00 0a                                      beq #0x63fc6c
0063fc68  45 76 f3 eb                                      bl #0x31d584
0063fc6c  08 30 95 e5                                      ldr r3, [r5, #8]
0063fc70  06 10 a0 e3                                      mov r1, #6
0063fc74  00 20 a0 e3                                      mov r2, #0
0063fc78  04 00 93 e5                                      ldr r0, [r3, #4]
0063fc7c  a1 3c fe eb                                      bl #0x5cef08
0063fc80  bc 00 c5 e1                                      strh r0, [r5, #0xc]
0063fc84  10 d0 8d e2                                      add sp, sp, #0x10
0063fc88  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063fc8c  0d 30 a0 e1                                      mov r3, sp
0063fc90  00 e0 a0 e3                                      mov lr, #0
0063fc94  08 00 8d e2                                      add r0, sp, #8
0063fc98  0c 20 8d e2                                      add r2, sp, #0xc
0063fc9c  10 40 8d e8                                      stm sp, {r4, lr}
0063fca0  0c c0 8d e5                                      str ip, [sp, #0xc]
0063fca4  72 eb ff eb                                      bl #0x63aa74
0063fca8  08 30 9d e5                                      ldr r3, [sp, #8]
0063fcac  cf ff ff ea                                      b #0x63fbf0
; mapping-symbol data/literal pool
0063fcb0  78 56 2a 00                                      .byte 0x78, 0x56, 0x2a, 0x00

; FUNCTION 0x0063fcb4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n144_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE20initPRenderDataModelEv
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::initPRenderDataModel()
; decoder-mode: arm
0063fcb4  00 30 90 e5                                      ldr r3, [r0]
0063fcb8  90 30 13 e5                                      ldr r3, [r3, #-0x90]
0063fcbc  03 00 80 e0                                      add r0, r0, r3
0063fcc0  a9 ff ff ea                                      b #0x63fb6c

; FUNCTION 0x0063fdcc, declared_size=204, range_size=204, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEED1Ev
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
0063fdcc  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
0063fdd0  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
0063fdd4  70 40 2d e9                                      push {r4, r5, r6, lr}
0063fdd8  02 20 8f e0                                      add r2, pc, r2
0063fddc  03 30 92 e7                                      ldr r3, [r2, r3]
0063fde0  00 60 a0 e1                                      mov r6, r0
0063fde4  00 40 a0 e1                                      mov r4, r0
0063fde8  0c 20 83 e2                                      add r2, r3, #0xc
0063fdec  a4 20 86 e4                                      str r2, [r6], #0xa4
0063fdf0  c8 30 83 e2                                      add r3, r3, #0xc8
0063fdf4  a4 30 80 e5                                      str r3, [r0, #0xa4]
0063fdf8  9c 00 90 e5                                      ldr r0, [r0, #0x9c]
0063fdfc  2b 39 f3 eb                                      bl #0x30e2b0
0063fe00  00 30 a0 e3                                      mov r3, #0
0063fe04  04 00 a0 e1                                      mov r0, r4
0063fe08  9c 30 84 e5                                      str r3, [r4, #0x9c]
0063fe0c  53 ee ff eb                                      bl #0x63b760
0063fe10  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
0063fe14  00 00 50 e3                                      cmp r0, #0
0063fe18  00 00 00 0a                                      beq #0x63fe20
0063fe1c  d8 75 f3 eb                                      bl #0x31d584
0063fe20  14 00 94 e5                                      ldr r0, [r4, #0x14]
0063fe24  00 00 50 e3                                      cmp r0, #0
0063fe28  00 00 00 0a                                      beq #0x63fe30
0063fe2c  d4 75 f3 eb                                      bl #0x31d584
0063fe30  10 50 94 e5                                      ldr r5, [r4, #0x10]
0063fe34  00 00 55 e3                                      cmp r5, #0
0063fe38  04 00 00 0a                                      beq #0x63fe50
0063fe3c  00 30 95 e5                                      ldr r3, [r5]
0063fe40  01 30 43 e2                                      sub r3, r3, #1
0063fe44  00 00 53 e3                                      cmp r3, #0
0063fe48  00 30 85 e5                                      str r3, [r5]
0063fe4c  05 00 00 0a                                      beq #0x63fe68
0063fe50  08 00 84 e2                                      add r0, r4, #8
0063fe54  63 43 f3 eb                                      bl #0x310be8
0063fe58  06 00 a0 e1                                      mov r0, r6
0063fe5c  e5 e8 ff eb                                      bl #0x63a1f8
0063fe60  04 00 a0 e1                                      mov r0, r4
0063fe64  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063fe68  05 00 a0 e1                                      mov r0, r5
0063fe6c  ea 82 fd eb                                      bl #0x5a0a1c
0063fe70  05 00 a0 e1                                      mov r0, r5
0063fe74  0d 39 f3 eb                                      bl #0x30e2b0
0063fe78  08 00 84 e2                                      add r0, r4, #8
0063fe7c  59 43 f3 eb                                      bl #0x310be8
0063fe80  06 00 a0 e1                                      mov r0, r6
0063fe84  db e8 ff eb                                      bl #0x63a1f8
0063fe88  04 00 a0 e1                                      mov r0, r4
0063fe8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0063fe90  b8 4c 35 00 40 0c 00 00                          .byte 0xb8, 0x4c, 0x35, 0x00, 0x40, 0x0c, 0x00, 0x00

; FUNCTION 0x0063fe98, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n12_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEED1Ev
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
0063fe98  00 30 90 e5                                      ldr r3, [r0]
0063fe9c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063fea0  03 00 80 e0                                      add r0, r0, r3
0063fea4  c8 ff ff ea                                      b #0x63fdcc

; FUNCTION 0x0063fea8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEED0Ev
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
0063fea8  10 40 2d e9                                      push {r4, lr}
0063feac  00 40 a0 e1                                      mov r4, r0
0063feb0  c5 ff ff eb                                      bl #0x63fdcc
0063feb4  04 00 a0 e1                                      mov r0, r4
0063feb8  fc 38 f3 eb                                      bl #0x30e2b0
0063febc  04 00 a0 e1                                      mov r0, r4
0063fec0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0063fec4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n12_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEED0Ev
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
0063fec4  00 30 90 e5                                      ldr r3, [r0]
0063fec8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063fecc  03 00 80 e0                                      add r0, r0, r3
0063fed0  f4 ff ff ea                                      b #0x63fea8

; FUNCTION 0x00640804, declared_size=240, range_size=240, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE13getRenderDataEi
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::getRenderData(int)
; decoder-mode: arm
00640804  70 40 2d e9                                      push {r4, r5, r6, lr}
00640808  0c 00 90 e8                                      ldm r0, {r2, r3}
0064080c  00 40 a0 e1                                      mov r4, r0
00640810  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
00640814  08 d0 4d e2                                      sub sp, sp, #8
00640818  14 20 93 e5                                      ldr r2, [r3, #0x14]
0064081c  9c 00 90 e5                                      ldr r0, [r0, #0x9c]
00640820  10 30 94 e5                                      ldr r3, [r4, #0x10]
00640824  30 e0 84 e2                                      add lr, r4, #0x30
00640828  08 c0 84 e2                                      add ip, r4, #8
0064082c  01 10 84 e0                                      add r1, r4, r1
00640830  00 e0 8d e5                                      str lr, [sp]
00640834  04 c0 8d e5                                      str ip, [sp, #4]
00640838  ee fe ff eb                                      bl #0x6403f8
0064083c  04 30 94 e5                                      ldr r3, [r4, #4]
00640840  14 50 93 e5                                      ldr r5, [r3, #0x14]
00640844  00 00 55 e3                                      cmp r5, #0
00640848  00 30 95 15                                      ldrne r3, [r5]
0064084c  08 60 95 e5                                      ldr r6, [r5, #8]
00640850  01 30 83 12                                      addne r3, r3, #1
00640854  00 30 85 15                                      strne r3, [r5]
00640858  00 30 95 e5                                      ldr r3, [r5]
0064085c  01 30 43 e2                                      sub r3, r3, #1
00640860  00 00 53 e3                                      cmp r3, #0
00640864  00 30 85 e5                                      str r3, [r5]
00640868  03 00 00 1a                                      bne #0x64087c
0064086c  05 00 a0 e1                                      mov r0, r5
00640870  69 80 fd eb                                      bl #0x5a0a1c
00640874  05 00 a0 e1                                      mov r0, r5
00640878  8c 36 f3 eb                                      bl #0x30e2b0
0064087c  00 20 94 e5                                      ldr r2, [r4]
00640880  97 3f 06 e3                                      movw r3, #0x6f97
00640884  f9 36 49 e3                                      movt r3, #0x96f9
00640888  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0064088c  10 10 94 e5                                      ldr r1, [r4, #0x10]
00640890  00 00 84 e0                                      add r0, r4, r0
00640894  28 c0 90 e5                                      ldr ip, [r0, #0x28]
00640898  24 20 90 e5                                      ldr r2, [r0, #0x24]
0064089c  10 00 84 e2                                      add r0, r4, #0x10
006408a0  0c 20 62 e0                                      rsb r2, r2, ip
006408a4  42 21 a0 e1                                      asr r2, r2, #2
006408a8  93 02 02 e0                                      mul r2, r3, r2
006408ac  96 02 02 e0                                      mul r2, r6, r2
006408b0  00 60 a0 e3                                      mov r6, #0
006408b4  08 20 81 e5                                      str r2, [r1, #8]
006408b8  02 10 94 e8                                      ldm r4, {r1, ip}
006408bc  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
006408c0  20 c0 9c e5                                      ldr ip, [ip, #0x20]
006408c4  01 10 84 e0                                      add r1, r4, r1
006408c8  24 50 91 e5                                      ldr r5, [r1, #0x24]
006408cc  28 10 91 e5                                      ldr r1, [r1, #0x28]
006408d0  24 20 84 e5                                      str r2, [r4, #0x24]
006408d4  20 60 84 e5                                      str r6, [r4, #0x20]
006408d8  01 20 65 e0                                      rsb r2, r5, r1
006408dc  42 21 a0 e1                                      asr r2, r2, #2
006408e0  93 02 03 e0                                      mul r3, r3, r2
006408e4  9c 03 03 e0                                      mul r3, ip, r3
006408e8  1c 30 84 e5                                      str r3, [r4, #0x1c]
006408ec  08 d0 8d e2                                      add sp, sp, #8
006408f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006408f4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n16_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE13getRenderDataEi
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> >::getRenderData(int)
; decoder-mode: arm
006408f4  00 30 90 e5                                      ldr r3, [r0]
006408f8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006408fc  03 00 80 e0                                      add r0, r0, r3
00640900  bf ff ff ea                                      b #0x640804
