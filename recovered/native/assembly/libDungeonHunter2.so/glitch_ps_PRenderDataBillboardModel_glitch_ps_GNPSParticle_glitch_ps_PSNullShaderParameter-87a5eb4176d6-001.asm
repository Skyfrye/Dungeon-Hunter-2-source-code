; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00638790, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE22getRenderVertexStreamsEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::getRenderVertexStreams()
; decoder-mode: arm
00638790  10 30 91 e5                                      ldr r3, [r1, #0x10]
00638794  00 00 53 e3                                      cmp r3, #0
00638798  00 30 80 e5                                      str r3, [r0]
0063879c  00 20 93 15                                      ldrne r2, [r3]
006387a0  01 20 82 12                                      addne r2, r2, #1
006387a4  00 20 83 15                                      strne r2, [r3]
006387a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006387ac, declared_size=32, range_size=32, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n20_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE22getRenderVertexStreamsEv
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::getRenderVertexStreams()
; decoder-mode: arm
006387ac  10 40 2d e9                                      push {r4, lr}
006387b0  00 30 91 e5                                      ldr r3, [r1]
006387b4  00 40 a0 e1                                      mov r4, r0
006387b8  14 30 13 e5                                      ldr r3, [r3, #-0x14]
006387bc  03 10 81 e0                                      add r1, r1, r3
006387c0  f2 ff ff eb                                      bl #0x638790
006387c4  04 00 a0 e1                                      mov r0, r4
006387c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006387cc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZNK6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE25getRenderBufferSizeNeededEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::getRenderBufferSizeNeeded() const
; decoder-mode: arm
006387cc  98 00 90 e5                                      ldr r0, [r0, #0x98]
006387d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006387d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n24_NK6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE25getRenderBufferSizeNeededEv
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::getRenderBufferSizeNeeded() const
; decoder-mode: arm
006387d4  00 30 90 e5                                      ldr r3, [r0]
006387d8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006387dc  03 00 80 e0                                      add r0, r0, r3
006387e0  f9 ff ff ea                                      b #0x6387cc

; FUNCTION 0x006387e4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE15initPRenderDataEPS2_SD_
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::initPRenderData(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
006387e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006387e8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n148_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE15initPRenderDataEPS2_SD_
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::initPRenderData(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
006387e8  00 30 90 e5                                      ldr r3, [r0]
006387ec  94 30 13 e5                                      ldr r3, [r3, #-0x94]
006387f0  03 00 80 e0                                      add r0, r0, r3
006387f4  fa ff ff ea                                      b #0x6387e4

; FUNCTION 0x00639884, declared_size=572, range_size=572, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE16applyPRenderDataEPS2_SD_
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::applyPRenderData(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
00639884  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00639888  14 d0 4d e2                                      sub sp, sp, #0x14
0063988c  04 10 8d e5                                      str r1, [sp, #4]
00639890  02 00 51 e1                                      cmp r1, r2
00639894  02 a0 a0 e1                                      mov sl, r2
00639898  60 20 90 e5                                      ldr r2, [r0, #0x60]
0063989c  02 31 e0 e3                                      mvn r3, #0x80000000
006398a0  02 c5 e0 e3                                      mvn ip, #0x800000
006398a4  02 35 43 e2                                      sub r3, r3, #0x800000
006398a8  88 c0 80 e5                                      str ip, [r0, #0x88]
006398ac  7c 30 80 e5                                      str r3, [r0, #0x7c]
006398b0  80 c0 80 e5                                      str ip, [r0, #0x80]
006398b4  84 c0 80 e5                                      str ip, [r0, #0x84]
006398b8  74 30 80 e5                                      str r3, [r0, #0x74]
006398bc  78 30 80 e5                                      str r3, [r0, #0x78]
006398c0  00 20 8d e5                                      str r2, [sp]
006398c4  00 40 a0 e1                                      mov r4, r0
006398c8  64 90 90 e5                                      ldr sb, [r0, #0x64]
006398cc  68 b0 90 e5                                      ldr fp, [r0, #0x68]
006398d0  04 50 9d 05                                      ldreq r5, [sp, #4]
006398d4  4d 00 00 0a                                      beq #0x639a10
006398d8  04 50 9d e5                                      ldr r5, [sp, #4]
006398dc  00 10 95 e5                                      ldr r1, [r5]
006398e0  00 00 9d e5                                      ldr r0, [sp]
006398e4  b0 52 f3 eb                                      bl #0x30e3ac
006398e8  04 10 95 e5                                      ldr r1, [r5, #4]
006398ec  00 70 a0 e1                                      mov r7, r0
006398f0  09 00 a0 e1                                      mov r0, sb
006398f4  ac 52 f3 eb                                      bl #0x30e3ac
006398f8  08 10 95 e5                                      ldr r1, [r5, #8]
006398fc  00 80 a0 e1                                      mov r8, r0
00639900  0b 00 a0 e1                                      mov r0, fp
00639904  a8 52 f3 eb                                      bl #0x30e3ac
00639908  07 10 a0 e1                                      mov r1, r7
0063990c  00 60 a0 e1                                      mov r6, r0
00639910  07 00 a0 e1                                      mov r0, r7
00639914  14 55 f3 eb                                      bl #0x30ed6c
00639918  08 10 a0 e1                                      mov r1, r8
0063991c  00 70 a0 e1                                      mov r7, r0
00639920  08 00 a0 e1                                      mov r0, r8
00639924  10 55 f3 eb                                      bl #0x30ed6c
00639928  00 10 a0 e1                                      mov r1, r0
0063992c  07 00 a0 e1                                      mov r0, r7
00639930  9b 54 f3 eb                                      bl #0x30eba4
00639934  06 10 a0 e1                                      mov r1, r6
00639938  00 70 a0 e1                                      mov r7, r0
0063993c  06 00 a0 e1                                      mov r0, r6
00639940  09 55 f3 eb                                      bl #0x30ed6c
00639944  00 10 a0 e1                                      mov r1, r0
00639948  07 00 a0 e1                                      mov r0, r7
0063994c  94 54 f3 eb                                      bl #0x30eba4
00639950  00 80 95 e5                                      ldr r8, [r5]
00639954  98 00 85 e5                                      str r0, [r5, #0x98]
00639958  80 10 94 e5                                      ldr r1, [r4, #0x80]
0063995c  08 00 a0 e1                                      mov r0, r8
00639960  64 52 f3 eb                                      bl #0x30e2f8
00639964  04 70 95 e5                                      ldr r7, [r5, #4]
00639968  00 00 50 e3                                      cmp r0, #0
0063996c  08 60 95 e5                                      ldr r6, [r5, #8]
00639970  84 10 94 e5                                      ldr r1, [r4, #0x84]
00639974  80 80 84 15                                      strne r8, [r4, #0x80]
00639978  07 00 a0 e1                                      mov r0, r7
0063997c  5d 52 f3 eb                                      bl #0x30e2f8
00639980  00 00 50 e3                                      cmp r0, #0
00639984  88 10 94 e5                                      ldr r1, [r4, #0x88]
00639988  84 70 84 15                                      strne r7, [r4, #0x84]
0063998c  06 00 a0 e1                                      mov r0, r6
00639990  58 52 f3 eb                                      bl #0x30e2f8
00639994  00 00 50 e3                                      cmp r0, #0
00639998  74 10 94 e5                                      ldr r1, [r4, #0x74]
0063999c  88 60 84 15                                      strne r6, [r4, #0x88]
006399a0  08 00 a0 e1                                      mov r0, r8
006399a4  58 53 f3 eb                                      bl #0x30e70c
006399a8  00 00 50 e3                                      cmp r0, #0
006399ac  78 10 94 e5                                      ldr r1, [r4, #0x78]
006399b0  74 80 84 15                                      strne r8, [r4, #0x74]
006399b4  07 00 a0 e1                                      mov r0, r7
006399b8  53 53 f3 eb                                      bl #0x30e70c
006399bc  00 00 50 e3                                      cmp r0, #0
006399c0  78 70 84 15                                      strne r7, [r4, #0x78]
006399c4  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
006399c8  06 00 a0 e1                                      mov r0, r6
006399cc  4e 53 f3 eb                                      bl #0x30e70c
006399d0  9c 50 85 e2                                      add r5, r5, #0x9c
006399d4  00 00 50 e3                                      cmp r0, #0
006399d8  7c 60 84 15                                      strne r6, [r4, #0x7c]
006399dc  05 00 5a e1                                      cmp sl, r5
006399e0  bd ff ff 1a                                      bne #0x6398dc
006399e4  04 20 9d e5                                      ldr r2, [sp, #4]
006399e8  9c 50 a0 e3                                      mov r5, #0x9c
006399ec  9c 30 82 e2                                      add r3, r2, #0x9c
006399f0  0a a0 63 e0                                      rsb sl, r3, sl
006399f4  97 3f 06 e3                                      movw r3, #0x6f97
006399f8  2a a1 a0 e1                                      lsr sl, sl, #2
006399fc  f9 36 41 e3                                      movt r3, #0x16f9
00639a00  93 0a 03 e0                                      mul r3, r3, sl
00639a04  03 31 c3 e3                                      bic r3, r3, #0xc0000000
00639a08  93 55 25 e0                                      mla r5, r3, r5, r5
00639a0c  05 50 82 e0                                      add r5, r2, r5
00639a10  00 30 94 e5                                      ldr r3, [r4]
00639a14  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00639a18  03 00 84 e0                                      add r0, r4, r3
00639a1c  54 20 d0 e5                                      ldrb r2, [r0, #0x54]
00639a20  00 00 52 e3                                      cmp r2, #0
00639a24  05 00 00 1a                                      bne #0x639a40
00639a28  04 00 9d e5                                      ldr r0, [sp, #4]
00639a2c  05 10 a0 e1                                      mov r1, r5
00639a30  0c 20 8d e2                                      add r2, sp, #0xc
00639a34  72 ff ff eb                                      bl #0x639804
00639a38  14 d0 8d e2                                      add sp, sp, #0x14
00639a3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00639a40  03 30 94 e7                                      ldr r3, [r4, r3]
00639a44  0f e0 a0 e1                                      mov lr, pc
00639a48  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00639a4c  30 80 90 e5                                      ldr r8, [r0, #0x30]
00639a50  00 30 a0 e1                                      mov r3, r0
00639a54  74 00 94 e5                                      ldr r0, [r4, #0x74]
00639a58  08 10 a0 e1                                      mov r1, r8
00639a5c  38 60 93 e5                                      ldr r6, [r3, #0x38]
00639a60  34 70 93 e5                                      ldr r7, [r3, #0x34]
00639a64  4e 54 f3 eb                                      bl #0x30eba4
00639a68  07 10 a0 e1                                      mov r1, r7
00639a6c  74 00 84 e5                                      str r0, [r4, #0x74]
00639a70  78 00 94 e5                                      ldr r0, [r4, #0x78]
00639a74  4a 54 f3 eb                                      bl #0x30eba4
00639a78  06 10 a0 e1                                      mov r1, r6
00639a7c  78 00 84 e5                                      str r0, [r4, #0x78]
00639a80  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
00639a84  46 54 f3 eb                                      bl #0x30eba4
00639a88  08 10 a0 e1                                      mov r1, r8
00639a8c  7c 00 84 e5                                      str r0, [r4, #0x7c]
00639a90  80 00 94 e5                                      ldr r0, [r4, #0x80]
00639a94  42 54 f3 eb                                      bl #0x30eba4
00639a98  07 10 a0 e1                                      mov r1, r7
00639a9c  80 00 84 e5                                      str r0, [r4, #0x80]
00639aa0  84 00 94 e5                                      ldr r0, [r4, #0x84]
00639aa4  3e 54 f3 eb                                      bl #0x30eba4
00639aa8  06 10 a0 e1                                      mov r1, r6
00639aac  84 00 84 e5                                      str r0, [r4, #0x84]
00639ab0  88 00 94 e5                                      ldr r0, [r4, #0x88]
00639ab4  3a 54 f3 eb                                      bl #0x30eba4
00639ab8  88 00 84 e5                                      str r0, [r4, #0x88]
00639abc  d9 ff ff ea                                      b #0x639a28

; FUNCTION 0x00639ac0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n152_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE16applyPRenderDataEPS2_SD_
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::applyPRenderData(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
00639ac0  00 30 90 e5                                      ldr r3, [r0]
00639ac4  98 30 13 e5                                      ldr r3, [r3, #-0x98]
00639ac8  03 00 80 e0                                      add r0, r0, r3
00639acc  6c ff ff ea                                      b #0x639884

; FUNCTION 0x0063b6c4, declared_size=72, range_size=72, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE16deallocateBufferEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::deallocateBuffer()
; decoder-mode: arm
0063b6c4  10 40 2d e9                                      push {r4, lr}
0063b6c8  00 40 a0 e1                                      mov r4, r0
0063b6cc  90 00 90 e5                                      ldr r0, [r0, #0x90]
0063b6d0  00 00 50 e3                                      cmp r0, #0
0063b6d4  02 00 00 0a                                      beq #0x63b6e4
0063b6d8  8c 30 d4 e5                                      ldrb r3, [r4, #0x8c]
0063b6dc  00 00 53 e3                                      cmp r3, #0
0063b6e0  00 00 00 1a                                      bne #0x63b6e8
0063b6e4  10 80 bd e8                                      pop {r4, pc}
0063b6e8  22 48 00 eb                                      bl #0x64d778
0063b6ec  10 20 94 e5                                      ldr r2, [r4, #0x10]
0063b6f0  00 30 a0 e3                                      mov r3, #0
0063b6f4  90 30 84 e5                                      str r3, [r4, #0x90]
0063b6f8  14 00 92 e5                                      ldr r0, [r2, #0x14]
0063b6fc  03 10 a0 e1                                      mov r1, r3
0063b700  03 20 a0 e1                                      mov r2, r3
0063b704  10 40 bd e8                                      pop {r4, lr}
0063b708  69 99 fd ea                                      b #0x5a1cb4

; FUNCTION 0x0063b70c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE15setRenderBufferEPvj
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::setRenderBuffer(void*, unsigned int)
; decoder-mode: arm
0063b70c  70 40 2d e9                                      push {r4, r5, r6, lr}
0063b710  00 40 51 e2                                      subs r4, r1, #0
0063b714  02 60 a0 e1                                      mov r6, r2
0063b718  00 50 a0 e1                                      mov r5, r0
0063b71c  0a 00 00 0a                                      beq #0x63b74c
0063b720  e7 ff ff eb                                      bl #0x63b6c4
0063b724  10 20 95 e5                                      ldr r2, [r5, #0x10]
0063b728  00 30 a0 e3                                      mov r3, #0
0063b72c  8c 30 c5 e5                                      strb r3, [r5, #0x8c]
0063b730  90 40 85 e5                                      str r4, [r5, #0x90]
0063b734  94 60 85 e5                                      str r6, [r5, #0x94]
0063b738  14 00 92 e5                                      ldr r0, [r2, #0x14]
0063b73c  06 10 a0 e1                                      mov r1, r6
0063b740  04 20 a0 e1                                      mov r2, r4
0063b744  70 40 bd e8                                      pop {r4, r5, r6, lr}
0063b748  59 99 fd ea                                      b #0x5a1cb4
0063b74c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0063b750, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n28_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE15setRenderBufferEPvj
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::setRenderBuffer(void*, unsigned int)
; decoder-mode: arm
0063b750  00 30 90 e5                                      ldr r3, [r0]
0063b754  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0063b758  03 00 80 e0                                      add r0, r0, r3
0063b75c  ea ff ff ea                                      b #0x63b70c

; FUNCTION 0x0063fa14, declared_size=328, range_size=328, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE20initPRenderDataModelEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::initPRenderDataModel()
; decoder-mode: arm
0063fa14  70 40 2d e9                                      push {r4, r5, r6, lr}
0063fa18  00 30 90 e5                                      ldr r3, [r0]
0063fa1c  34 11 9f e5                                      ldr r1, [pc, #0x134]
0063fa20  10 d0 4d e2                                      sub sp, sp, #0x10
0063fa24  0c 60 13 e5                                      ldr r6, [r3, #-0xc]
0063fa28  01 10 8f e0                                      add r1, pc, r1
0063fa2c  00 50 a0 e1                                      mov r5, r0
0063fa30  06 60 80 e0                                      add r6, r0, r6
0063fa34  06 00 a0 e1                                      mov r0, r6
0063fa38  83 ee ff eb                                      bl #0x63b44c
0063fa3c  34 c0 96 e5                                      ldr ip, [r6, #0x34]
0063fa40  30 10 86 e2                                      add r1, r6, #0x30
0063fa44  00 40 a0 e1                                      mov r4, r0
0063fa48  00 00 5c e3                                      cmp ip, #0
0063fa4c  01 c0 a0 01                                      moveq ip, r1
0063fa50  0a 00 00 0a                                      beq #0x63fa80
0063fa54  01 20 a0 e1                                      mov r2, r1
0063fa58  00 00 00 ea                                      b #0x63fa60
0063fa5c  03 c0 a0 e1                                      mov ip, r3
0063fa60  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063fa64  03 00 54 e1                                      cmp r4, r3
0063fa68  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0063fa6c  08 30 9c 95                                      ldrls r3, [ip, #8]
0063fa70  02 c0 a0 81                                      movhi ip, r2
0063fa74  0c 20 a0 e1                                      mov r2, ip
0063fa78  00 00 53 e3                                      cmp r3, #0
0063fa7c  f6 ff ff 1a                                      bne #0x63fa5c
0063fa80  0c 00 51 e1                                      cmp r1, ip
0063fa84  2a 00 00 0a                                      beq #0x63fb34
0063fa88  10 20 9c e5                                      ldr r2, [ip, #0x10]
0063fa8c  0c 30 a0 e1                                      mov r3, ip
0063fa90  02 00 54 e1                                      cmp r4, r2
0063fa94  26 00 00 3a                                      blo #0x63fb34
0063fa98  04 10 95 e5                                      ldr r1, [r5, #4]
0063fa9c  14 30 93 e5                                      ldr r3, [r3, #0x14]
0063faa0  00 00 51 e3                                      cmp r1, #0
0063faa4  00 40 93 e5                                      ldr r4, [r3]
0063faa8  1f 00 00 0a                                      beq #0x63fb2c
0063faac  08 30 95 e5                                      ldr r3, [r5, #8]
0063fab0  00 00 53 e3                                      cmp r3, #0
0063fab4  1c 00 00 0a                                      beq #0x63fb2c
0063fab8  04 30 93 e5                                      ldr r3, [r3, #4]
0063fabc  10 00 85 e2                                      add r0, r5, #0x10
0063fac0  04 20 93 e5                                      ldr r2, [r3, #4]
0063fac4  73 ff ff eb                                      bl #0x63f898
0063fac8  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
0063facc  a0 20 95 e5                                      ldr r2, [r5, #0xa0]
0063fad0  00 30 a0 e3                                      mov r3, #0
0063fad4  91 04 04 e0                                      mul r4, r1, r4
0063fad8  01 10 a0 e3                                      mov r1, #1
0063fadc  03 00 52 e1                                      cmp r2, r3
0063fae0  24 30 85 e5                                      str r3, [r5, #0x24]
0063fae4  1c 30 85 e5                                      str r3, [r5, #0x1c]
0063fae8  20 30 85 e5                                      str r3, [r5, #0x20]
0063faec  98 40 85 e5                                      str r4, [r5, #0x98]
0063faf0  b8 12 c5 e1                                      strh r1, [r5, #0x28]
0063faf4  04 30 92 15                                      ldrne r3, [r2, #4]
0063faf8  01 30 83 12                                      addne r3, r3, #1
0063fafc  04 30 82 15                                      strne r3, [r2, #4]
0063fb00  14 00 95 e5                                      ldr r0, [r5, #0x14]
0063fb04  14 20 85 e5                                      str r2, [r5, #0x14]
0063fb08  00 00 50 e3                                      cmp r0, #0
0063fb0c  00 00 00 0a                                      beq #0x63fb14
0063fb10  9b 76 f3 eb                                      bl #0x31d584
0063fb14  08 30 95 e5                                      ldr r3, [r5, #8]
0063fb18  06 10 a0 e3                                      mov r1, #6
0063fb1c  00 20 a0 e3                                      mov r2, #0
0063fb20  04 00 93 e5                                      ldr r0, [r3, #4]
0063fb24  f7 3c fe eb                                      bl #0x5cef08
0063fb28  bc 00 c5 e1                                      strh r0, [r5, #0xc]
0063fb2c  10 d0 8d e2                                      add sp, sp, #0x10
0063fb30  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063fb34  0d 30 a0 e1                                      mov r3, sp
0063fb38  00 e0 a0 e3                                      mov lr, #0
0063fb3c  08 00 8d e2                                      add r0, sp, #8
0063fb40  0c 20 8d e2                                      add r2, sp, #0xc
0063fb44  10 40 8d e8                                      stm sp, {r4, lr}
0063fb48  0c c0 8d e5                                      str ip, [sp, #0xc]
0063fb4c  c8 eb ff eb                                      bl #0x63aa74
0063fb50  08 30 9d e5                                      ldr r3, [sp, #8]
0063fb54  cf ff ff ea                                      b #0x63fa98
; mapping-symbol data/literal pool
0063fb58  d0 57 2a 00                                      .byte 0xd0, 0x57, 0x2a, 0x00

; FUNCTION 0x0063fb5c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n144_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE20initPRenderDataModelEv
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::initPRenderDataModel()
; decoder-mode: arm
0063fb5c  00 30 90 e5                                      ldr r3, [r0]
0063fb60  90 30 13 e5                                      ldr r3, [r3, #-0x90]
0063fb64  03 00 80 e0                                      add r0, r0, r3
0063fb68  a9 ff ff ea                                      b #0x63fa14

; FUNCTION 0x0063fcc4, declared_size=204, range_size=204, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEED1Ev
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
0063fcc4  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
0063fcc8  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
0063fccc  70 40 2d e9                                      push {r4, r5, r6, lr}
0063fcd0  02 20 8f e0                                      add r2, pc, r2
0063fcd4  03 30 92 e7                                      ldr r3, [r2, r3]
0063fcd8  00 60 a0 e1                                      mov r6, r0
0063fcdc  00 40 a0 e1                                      mov r4, r0
0063fce0  0c 20 83 e2                                      add r2, r3, #0xc
0063fce4  a4 20 86 e4                                      str r2, [r6], #0xa4
0063fce8  c8 30 83 e2                                      add r3, r3, #0xc8
0063fcec  a4 30 80 e5                                      str r3, [r0, #0xa4]
0063fcf0  9c 00 90 e5                                      ldr r0, [r0, #0x9c]
0063fcf4  6d 39 f3 eb                                      bl #0x30e2b0
0063fcf8  00 30 a0 e3                                      mov r3, #0
0063fcfc  04 00 a0 e1                                      mov r0, r4
0063fd00  9c 30 84 e5                                      str r3, [r4, #0x9c]
0063fd04  6e ee ff eb                                      bl #0x63b6c4
0063fd08  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
0063fd0c  00 00 50 e3                                      cmp r0, #0
0063fd10  00 00 00 0a                                      beq #0x63fd18
0063fd14  1a 76 f3 eb                                      bl #0x31d584
0063fd18  14 00 94 e5                                      ldr r0, [r4, #0x14]
0063fd1c  00 00 50 e3                                      cmp r0, #0
0063fd20  00 00 00 0a                                      beq #0x63fd28
0063fd24  16 76 f3 eb                                      bl #0x31d584
0063fd28  10 50 94 e5                                      ldr r5, [r4, #0x10]
0063fd2c  00 00 55 e3                                      cmp r5, #0
0063fd30  04 00 00 0a                                      beq #0x63fd48
0063fd34  00 30 95 e5                                      ldr r3, [r5]
0063fd38  01 30 43 e2                                      sub r3, r3, #1
0063fd3c  00 00 53 e3                                      cmp r3, #0
0063fd40  00 30 85 e5                                      str r3, [r5]
0063fd44  05 00 00 0a                                      beq #0x63fd60
0063fd48  08 00 84 e2                                      add r0, r4, #8
0063fd4c  a5 43 f3 eb                                      bl #0x310be8
0063fd50  06 00 a0 e1                                      mov r0, r6
0063fd54  27 e9 ff eb                                      bl #0x63a1f8
0063fd58  04 00 a0 e1                                      mov r0, r4
0063fd5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063fd60  05 00 a0 e1                                      mov r0, r5
0063fd64  2c 83 fd eb                                      bl #0x5a0a1c
0063fd68  05 00 a0 e1                                      mov r0, r5
0063fd6c  4f 39 f3 eb                                      bl #0x30e2b0
0063fd70  08 00 84 e2                                      add r0, r4, #8
0063fd74  9b 43 f3 eb                                      bl #0x310be8
0063fd78  06 00 a0 e1                                      mov r0, r6
0063fd7c  1d e9 ff eb                                      bl #0x63a1f8
0063fd80  04 00 a0 e1                                      mov r0, r4
0063fd84  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0063fd88  c0 4d 35 00 04 06 00 00                          .byte 0xc0, 0x4d, 0x35, 0x00, 0x04, 0x06, 0x00, 0x00

; FUNCTION 0x0063fd90, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n12_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEED1Ev
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
0063fd90  00 30 90 e5                                      ldr r3, [r0]
0063fd94  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063fd98  03 00 80 e0                                      add r0, r0, r3
0063fd9c  c8 ff ff ea                                      b #0x63fcc4

; FUNCTION 0x0063fda0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEED0Ev
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
0063fda0  10 40 2d e9                                      push {r4, lr}
0063fda4  00 40 a0 e1                                      mov r4, r0
0063fda8  c5 ff ff eb                                      bl #0x63fcc4
0063fdac  04 00 a0 e1                                      mov r0, r4
0063fdb0  3e 39 f3 eb                                      bl #0x30e2b0
0063fdb4  04 00 a0 e1                                      mov r0, r4
0063fdb8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0063fdbc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n12_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEED0Ev
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
0063fdbc  00 30 90 e5                                      ldr r3, [r0]
0063fdc0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063fdc4  03 00 80 e0                                      add r0, r0, r3
0063fdc8  f4 ff ff ea                                      b #0x63fda0

; FUNCTION 0x00640fb0, declared_size=240, range_size=240, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE13getRenderDataEi
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::getRenderData(int)
; decoder-mode: arm
00640fb0  70 40 2d e9                                      push {r4, r5, r6, lr}
00640fb4  0c 00 90 e8                                      ldm r0, {r2, r3}
00640fb8  00 40 a0 e1                                      mov r4, r0
00640fbc  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
00640fc0  08 d0 4d e2                                      sub sp, sp, #8
00640fc4  14 20 93 e5                                      ldr r2, [r3, #0x14]
00640fc8  9c 00 90 e5                                      ldr r0, [r0, #0x9c]
00640fcc  10 30 94 e5                                      ldr r3, [r4, #0x10]
00640fd0  30 e0 84 e2                                      add lr, r4, #0x30
00640fd4  08 c0 84 e2                                      add ip, r4, #8
00640fd8  01 10 84 e0                                      add r1, r4, r1
00640fdc  00 e0 8d e5                                      str lr, [sp]
00640fe0  04 c0 8d e5                                      str ip, [sp, #4]
00640fe4  46 fe ff eb                                      bl #0x640904
00640fe8  04 30 94 e5                                      ldr r3, [r4, #4]
00640fec  14 50 93 e5                                      ldr r5, [r3, #0x14]
00640ff0  00 00 55 e3                                      cmp r5, #0
00640ff4  00 30 95 15                                      ldrne r3, [r5]
00640ff8  08 60 95 e5                                      ldr r6, [r5, #8]
00640ffc  01 30 83 12                                      addne r3, r3, #1
00641000  00 30 85 15                                      strne r3, [r5]
00641004  00 30 95 e5                                      ldr r3, [r5]
00641008  01 30 43 e2                                      sub r3, r3, #1
0064100c  00 00 53 e3                                      cmp r3, #0
00641010  00 30 85 e5                                      str r3, [r5]
00641014  03 00 00 1a                                      bne #0x641028
00641018  05 00 a0 e1                                      mov r0, r5
0064101c  7e 7e fd eb                                      bl #0x5a0a1c
00641020  05 00 a0 e1                                      mov r0, r5
00641024  a1 34 f3 eb                                      bl #0x30e2b0
00641028  00 20 94 e5                                      ldr r2, [r4]
0064102c  97 3f 06 e3                                      movw r3, #0x6f97
00641030  f9 36 49 e3                                      movt r3, #0x96f9
00641034  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00641038  10 10 94 e5                                      ldr r1, [r4, #0x10]
0064103c  00 00 84 e0                                      add r0, r4, r0
00641040  28 c0 90 e5                                      ldr ip, [r0, #0x28]
00641044  24 20 90 e5                                      ldr r2, [r0, #0x24]
00641048  10 00 84 e2                                      add r0, r4, #0x10
0064104c  0c 20 62 e0                                      rsb r2, r2, ip
00641050  42 21 a0 e1                                      asr r2, r2, #2
00641054  93 02 02 e0                                      mul r2, r3, r2
00641058  96 02 02 e0                                      mul r2, r6, r2
0064105c  00 60 a0 e3                                      mov r6, #0
00641060  08 20 81 e5                                      str r2, [r1, #8]
00641064  02 10 94 e8                                      ldm r4, {r1, ip}
00641068  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0064106c  20 c0 9c e5                                      ldr ip, [ip, #0x20]
00641070  01 10 84 e0                                      add r1, r4, r1
00641074  24 50 91 e5                                      ldr r5, [r1, #0x24]
00641078  28 10 91 e5                                      ldr r1, [r1, #0x28]
0064107c  24 20 84 e5                                      str r2, [r4, #0x24]
00641080  20 60 84 e5                                      str r6, [r4, #0x20]
00641084  01 20 65 e0                                      rsb r2, r5, r1
00641088  42 21 a0 e1                                      asr r2, r2, #2
0064108c  93 02 03 e0                                      mul r3, r3, r2
00641090  9c 03 03 e0                                      mul r3, ip, r3
00641094  1c 30 84 e5                                      str r3, [r4, #0x1c]
00641098  08 d0 8d e2                                      add sp, sp, #8
0064109c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006410a0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >
; alias: _ZTv0_n16_N6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE13getRenderDataEi
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> >::getRenderData(int)
; decoder-mode: arm
006410a0  00 30 90 e5                                      ldr r3, [r0]
006410a4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006410a8  03 00 80 e0                                      add r0, r0, r3
006410ac  bf ff ff ea                                      b #0x640fb0
