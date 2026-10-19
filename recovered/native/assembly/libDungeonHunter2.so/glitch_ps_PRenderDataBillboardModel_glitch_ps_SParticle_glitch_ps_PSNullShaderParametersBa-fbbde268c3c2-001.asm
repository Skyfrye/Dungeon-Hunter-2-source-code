; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064c448, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE22getRenderVertexStreamsEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::getRenderVertexStreams()
; decoder-mode: arm
0064c448  10 30 91 e5                                      ldr r3, [r1, #0x10]
0064c44c  00 00 53 e3                                      cmp r3, #0
0064c450  00 30 80 e5                                      str r3, [r0]
0064c454  00 20 93 15                                      ldrne r2, [r3]
0064c458  01 20 82 12                                      addne r2, r2, #1
0064c45c  00 20 83 15                                      strne r2, [r3]
0064c460  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064c464, declared_size=32, range_size=32, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n20_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE22getRenderVertexStreamsEv
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::getRenderVertexStreams()
; decoder-mode: arm
0064c464  10 40 2d e9                                      push {r4, lr}
0064c468  00 30 91 e5                                      ldr r3, [r1]
0064c46c  00 40 a0 e1                                      mov r4, r0
0064c470  14 30 13 e5                                      ldr r3, [r3, #-0x14]
0064c474  03 10 81 e0                                      add r1, r1, r3
0064c478  f2 ff ff eb                                      bl #0x64c448
0064c47c  04 00 a0 e1                                      mov r0, r4
0064c480  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0064c484, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZNK6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE25getRenderBufferSizeNeededEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::getRenderBufferSizeNeeded() const
; decoder-mode: arm
0064c484  98 00 90 e5                                      ldr r0, [r0, #0x98]
0064c488  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064c48c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n24_NK6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE25getRenderBufferSizeNeededEv
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::getRenderBufferSizeNeeded() const
; decoder-mode: arm
0064c48c  00 30 90 e5                                      ldr r3, [r0]
0064c490  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0064c494  03 00 80 e0                                      add r0, r0, r3
0064c498  f9 ff ff ea                                      b #0x64c484

; FUNCTION 0x0064c49c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15initPRenderDataEPS2_SD_
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::initPRenderData(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c49c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064c4a0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n148_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15initPRenderDataEPS2_SD_
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::initPRenderData(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c4a0  00 30 90 e5                                      ldr r3, [r0]
0064c4a4  94 30 13 e5                                      ldr r3, [r3, #-0x94]
0064c4a8  03 00 80 e0                                      add r0, r0, r3
0064c4ac  fa ff ff ea                                      b #0x64c49c

; FUNCTION 0x0064dc3c, declared_size=72, range_size=72, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE16deallocateBufferEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::deallocateBuffer()
; decoder-mode: arm
0064dc3c  10 40 2d e9                                      push {r4, lr}
0064dc40  00 40 a0 e1                                      mov r4, r0
0064dc44  90 00 90 e5                                      ldr r0, [r0, #0x90]
0064dc48  00 00 50 e3                                      cmp r0, #0
0064dc4c  02 00 00 0a                                      beq #0x64dc5c
0064dc50  8c 30 d4 e5                                      ldrb r3, [r4, #0x8c]
0064dc54  00 00 53 e3                                      cmp r3, #0
0064dc58  00 00 00 1a                                      bne #0x64dc60
0064dc5c  10 80 bd e8                                      pop {r4, pc}
0064dc60  c4 fe ff eb                                      bl #0x64d778
0064dc64  10 20 94 e5                                      ldr r2, [r4, #0x10]
0064dc68  00 30 a0 e3                                      mov r3, #0
0064dc6c  90 30 84 e5                                      str r3, [r4, #0x90]
0064dc70  14 00 92 e5                                      ldr r0, [r2, #0x14]
0064dc74  03 10 a0 e1                                      mov r1, r3
0064dc78  03 20 a0 e1                                      mov r2, r3
0064dc7c  10 40 bd e8                                      pop {r4, lr}
0064dc80  0b 50 fd ea                                      b #0x5a1cb4

; FUNCTION 0x0064dc84, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15setRenderBufferEPvj
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::setRenderBuffer(void*, unsigned int)
; decoder-mode: arm
0064dc84  70 40 2d e9                                      push {r4, r5, r6, lr}
0064dc88  00 40 51 e2                                      subs r4, r1, #0
0064dc8c  02 60 a0 e1                                      mov r6, r2
0064dc90  00 50 a0 e1                                      mov r5, r0
0064dc94  0a 00 00 0a                                      beq #0x64dcc4
0064dc98  e7 ff ff eb                                      bl #0x64dc3c
0064dc9c  10 20 95 e5                                      ldr r2, [r5, #0x10]
0064dca0  00 30 a0 e3                                      mov r3, #0
0064dca4  8c 30 c5 e5                                      strb r3, [r5, #0x8c]
0064dca8  90 40 85 e5                                      str r4, [r5, #0x90]
0064dcac  94 60 85 e5                                      str r6, [r5, #0x94]
0064dcb0  14 00 92 e5                                      ldr r0, [r2, #0x14]
0064dcb4  06 10 a0 e1                                      mov r1, r6
0064dcb8  04 20 a0 e1                                      mov r2, r4
0064dcbc  70 40 bd e8                                      pop {r4, r5, r6, lr}
0064dcc0  fb 4f fd ea                                      b #0x5a1cb4
0064dcc4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0064dcc8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n28_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15setRenderBufferEPvj
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::setRenderBuffer(void*, unsigned int)
; decoder-mode: arm
0064dcc8  00 30 90 e5                                      ldr r3, [r0]
0064dccc  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0064dcd0  03 00 80 e0                                      add r0, r0, r3
0064dcd4  ea ff ff ea                                      b #0x64dc84

; FUNCTION 0x00652138, declared_size=572, range_size=572, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE16applyPRenderDataEPS2_SD_
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::applyPRenderData(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
00652138  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065213c  14 d0 4d e2                                      sub sp, sp, #0x14
00652140  04 10 8d e5                                      str r1, [sp, #4]
00652144  02 00 51 e1                                      cmp r1, r2
00652148  02 a0 a0 e1                                      mov sl, r2
0065214c  60 20 90 e5                                      ldr r2, [r0, #0x60]
00652150  02 31 e0 e3                                      mvn r3, #0x80000000
00652154  02 c5 e0 e3                                      mvn ip, #0x800000
00652158  02 35 43 e2                                      sub r3, r3, #0x800000
0065215c  88 c0 80 e5                                      str ip, [r0, #0x88]
00652160  7c 30 80 e5                                      str r3, [r0, #0x7c]
00652164  80 c0 80 e5                                      str ip, [r0, #0x80]
00652168  84 c0 80 e5                                      str ip, [r0, #0x84]
0065216c  74 30 80 e5                                      str r3, [r0, #0x74]
00652170  78 30 80 e5                                      str r3, [r0, #0x78]
00652174  00 20 8d e5                                      str r2, [sp]
00652178  00 40 a0 e1                                      mov r4, r0
0065217c  64 90 90 e5                                      ldr sb, [r0, #0x64]
00652180  68 b0 90 e5                                      ldr fp, [r0, #0x68]
00652184  04 50 9d 05                                      ldreq r5, [sp, #4]
00652188  4d 00 00 0a                                      beq #0x6522c4
0065218c  04 50 9d e5                                      ldr r5, [sp, #4]
00652190  00 10 95 e5                                      ldr r1, [r5]
00652194  00 00 9d e5                                      ldr r0, [sp]
00652198  83 f0 f2 eb                                      bl #0x30e3ac
0065219c  04 10 95 e5                                      ldr r1, [r5, #4]
006521a0  00 70 a0 e1                                      mov r7, r0
006521a4  09 00 a0 e1                                      mov r0, sb
006521a8  7f f0 f2 eb                                      bl #0x30e3ac
006521ac  08 10 95 e5                                      ldr r1, [r5, #8]
006521b0  00 80 a0 e1                                      mov r8, r0
006521b4  0b 00 a0 e1                                      mov r0, fp
006521b8  7b f0 f2 eb                                      bl #0x30e3ac
006521bc  07 10 a0 e1                                      mov r1, r7
006521c0  00 60 a0 e1                                      mov r6, r0
006521c4  07 00 a0 e1                                      mov r0, r7
006521c8  e7 f2 f2 eb                                      bl #0x30ed6c
006521cc  08 10 a0 e1                                      mov r1, r8
006521d0  00 70 a0 e1                                      mov r7, r0
006521d4  08 00 a0 e1                                      mov r0, r8
006521d8  e3 f2 f2 eb                                      bl #0x30ed6c
006521dc  00 10 a0 e1                                      mov r1, r0
006521e0  07 00 a0 e1                                      mov r0, r7
006521e4  6e f2 f2 eb                                      bl #0x30eba4
006521e8  06 10 a0 e1                                      mov r1, r6
006521ec  00 70 a0 e1                                      mov r7, r0
006521f0  06 00 a0 e1                                      mov r0, r6
006521f4  dc f2 f2 eb                                      bl #0x30ed6c
006521f8  00 10 a0 e1                                      mov r1, r0
006521fc  07 00 a0 e1                                      mov r0, r7
00652200  67 f2 f2 eb                                      bl #0x30eba4
00652204  00 80 95 e5                                      ldr r8, [r5]
00652208  60 00 85 e5                                      str r0, [r5, #0x60]
0065220c  80 10 94 e5                                      ldr r1, [r4, #0x80]
00652210  08 00 a0 e1                                      mov r0, r8
00652214  37 f0 f2 eb                                      bl #0x30e2f8
00652218  04 70 95 e5                                      ldr r7, [r5, #4]
0065221c  00 00 50 e3                                      cmp r0, #0
00652220  08 60 95 e5                                      ldr r6, [r5, #8]
00652224  84 10 94 e5                                      ldr r1, [r4, #0x84]
00652228  80 80 84 15                                      strne r8, [r4, #0x80]
0065222c  07 00 a0 e1                                      mov r0, r7
00652230  30 f0 f2 eb                                      bl #0x30e2f8
00652234  00 00 50 e3                                      cmp r0, #0
00652238  88 10 94 e5                                      ldr r1, [r4, #0x88]
0065223c  84 70 84 15                                      strne r7, [r4, #0x84]
00652240  06 00 a0 e1                                      mov r0, r6
00652244  2b f0 f2 eb                                      bl #0x30e2f8
00652248  00 00 50 e3                                      cmp r0, #0
0065224c  74 10 94 e5                                      ldr r1, [r4, #0x74]
00652250  88 60 84 15                                      strne r6, [r4, #0x88]
00652254  08 00 a0 e1                                      mov r0, r8
00652258  2b f1 f2 eb                                      bl #0x30e70c
0065225c  00 00 50 e3                                      cmp r0, #0
00652260  78 10 94 e5                                      ldr r1, [r4, #0x78]
00652264  74 80 84 15                                      strne r8, [r4, #0x74]
00652268  07 00 a0 e1                                      mov r0, r7
0065226c  26 f1 f2 eb                                      bl #0x30e70c
00652270  00 00 50 e3                                      cmp r0, #0
00652274  78 70 84 15                                      strne r7, [r4, #0x78]
00652278  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
0065227c  06 00 a0 e1                                      mov r0, r6
00652280  21 f1 f2 eb                                      bl #0x30e70c
00652284  64 50 85 e2                                      add r5, r5, #0x64
00652288  00 00 50 e3                                      cmp r0, #0
0065228c  7c 60 84 15                                      strne r6, [r4, #0x7c]
00652290  05 00 5a e1                                      cmp sl, r5
00652294  bd ff ff 1a                                      bne #0x652190
00652298  04 20 9d e5                                      ldr r2, [sp, #4]
0065229c  64 50 a0 e3                                      mov r5, #0x64
006522a0  64 30 82 e2                                      add r3, r2, #0x64
006522a4  0a a0 63 e0                                      rsb sl, r3, sl
006522a8  29 3c 05 e3                                      movw r3, #0x5c29
006522ac  2a a1 a0 e1                                      lsr sl, sl, #2
006522b0  8f 32 40 e3                                      movt r3, #0x28f
006522b4  93 0a 03 e0                                      mul r3, r3, sl
006522b8  03 31 c3 e3                                      bic r3, r3, #0xc0000000
006522bc  93 55 25 e0                                      mla r5, r3, r5, r5
006522c0  05 50 82 e0                                      add r5, r2, r5
006522c4  00 30 94 e5                                      ldr r3, [r4]
006522c8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006522cc  03 00 84 e0                                      add r0, r4, r3
006522d0  54 20 d0 e5                                      ldrb r2, [r0, #0x54]
006522d4  00 00 52 e3                                      cmp r2, #0
006522d8  05 00 00 1a                                      bne #0x6522f4
006522dc  04 00 9d e5                                      ldr r0, [sp, #4]
006522e0  05 10 a0 e1                                      mov r1, r5
006522e4  0c 20 8d e2                                      add r2, sp, #0xc
006522e8  df fe ff eb                                      bl #0x651e6c
006522ec  14 d0 8d e2                                      add sp, sp, #0x14
006522f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006522f4  03 30 94 e7                                      ldr r3, [r4, r3]
006522f8  0f e0 a0 e1                                      mov lr, pc
006522fc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00652300  30 80 90 e5                                      ldr r8, [r0, #0x30]
00652304  00 30 a0 e1                                      mov r3, r0
00652308  74 00 94 e5                                      ldr r0, [r4, #0x74]
0065230c  08 10 a0 e1                                      mov r1, r8
00652310  38 60 93 e5                                      ldr r6, [r3, #0x38]
00652314  34 70 93 e5                                      ldr r7, [r3, #0x34]
00652318  21 f2 f2 eb                                      bl #0x30eba4
0065231c  07 10 a0 e1                                      mov r1, r7
00652320  74 00 84 e5                                      str r0, [r4, #0x74]
00652324  78 00 94 e5                                      ldr r0, [r4, #0x78]
00652328  1d f2 f2 eb                                      bl #0x30eba4
0065232c  06 10 a0 e1                                      mov r1, r6
00652330  78 00 84 e5                                      str r0, [r4, #0x78]
00652334  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
00652338  19 f2 f2 eb                                      bl #0x30eba4
0065233c  08 10 a0 e1                                      mov r1, r8
00652340  7c 00 84 e5                                      str r0, [r4, #0x7c]
00652344  80 00 94 e5                                      ldr r0, [r4, #0x80]
00652348  15 f2 f2 eb                                      bl #0x30eba4
0065234c  07 10 a0 e1                                      mov r1, r7
00652350  80 00 84 e5                                      str r0, [r4, #0x80]
00652354  84 00 94 e5                                      ldr r0, [r4, #0x84]
00652358  11 f2 f2 eb                                      bl #0x30eba4
0065235c  06 10 a0 e1                                      mov r1, r6
00652360  84 00 84 e5                                      str r0, [r4, #0x84]
00652364  88 00 94 e5                                      ldr r0, [r4, #0x88]
00652368  0d f2 f2 eb                                      bl #0x30eba4
0065236c  88 00 84 e5                                      str r0, [r4, #0x88]
00652370  d9 ff ff ea                                      b #0x6522dc

; FUNCTION 0x00652374, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n152_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE16applyPRenderDataEPS2_SD_
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::applyPRenderData(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
00652374  00 30 90 e5                                      ldr r3, [r0]
00652378  98 30 13 e5                                      ldr r3, [r3, #-0x98]
0065237c  03 00 80 e0                                      add r0, r0, r3
00652380  6c ff ff ea                                      b #0x652138

; FUNCTION 0x006524dc, declared_size=328, range_size=328, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE20initPRenderDataModelEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::initPRenderDataModel()
; decoder-mode: arm
006524dc  70 40 2d e9                                      push {r4, r5, r6, lr}
006524e0  00 30 90 e5                                      ldr r3, [r0]
006524e4  34 11 9f e5                                      ldr r1, [pc, #0x134]
006524e8  10 d0 4d e2                                      sub sp, sp, #0x10
006524ec  0c 60 13 e5                                      ldr r6, [r3, #-0xc]
006524f0  01 10 8f e0                                      add r1, pc, r1
006524f4  00 50 a0 e1                                      mov r5, r0
006524f8  06 60 80 e0                                      add r6, r0, r6
006524fc  06 00 a0 e1                                      mov r0, r6
00652500  ed ea ff eb                                      bl #0x64d0bc
00652504  34 c0 96 e5                                      ldr ip, [r6, #0x34]
00652508  30 10 86 e2                                      add r1, r6, #0x30
0065250c  00 40 a0 e1                                      mov r4, r0
00652510  00 00 5c e3                                      cmp ip, #0
00652514  01 c0 a0 01                                      moveq ip, r1
00652518  0a 00 00 0a                                      beq #0x652548
0065251c  01 20 a0 e1                                      mov r2, r1
00652520  00 00 00 ea                                      b #0x652528
00652524  03 c0 a0 e1                                      mov ip, r3
00652528  10 30 9c e5                                      ldr r3, [ip, #0x10]
0065252c  03 00 54 e1                                      cmp r4, r3
00652530  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
00652534  08 30 9c 95                                      ldrls r3, [ip, #8]
00652538  02 c0 a0 81                                      movhi ip, r2
0065253c  0c 20 a0 e1                                      mov r2, ip
00652540  00 00 53 e3                                      cmp r3, #0
00652544  f6 ff ff 1a                                      bne #0x652524
00652548  0c 00 51 e1                                      cmp r1, ip
0065254c  2a 00 00 0a                                      beq #0x6525fc
00652550  10 20 9c e5                                      ldr r2, [ip, #0x10]
00652554  0c 30 a0 e1                                      mov r3, ip
00652558  02 00 54 e1                                      cmp r4, r2
0065255c  26 00 00 3a                                      blo #0x6525fc
00652560  04 10 95 e5                                      ldr r1, [r5, #4]
00652564  14 30 93 e5                                      ldr r3, [r3, #0x14]
00652568  00 00 51 e3                                      cmp r1, #0
0065256c  00 40 93 e5                                      ldr r4, [r3]
00652570  1f 00 00 0a                                      beq #0x6525f4
00652574  08 30 95 e5                                      ldr r3, [r5, #8]
00652578  00 00 53 e3                                      cmp r3, #0
0065257c  1c 00 00 0a                                      beq #0x6525f4
00652580  04 30 93 e5                                      ldr r3, [r3, #4]
00652584  10 00 85 e2                                      add r0, r5, #0x10
00652588  04 20 93 e5                                      ldr r2, [r3, #4]
0065258c  c1 b4 ff eb                                      bl #0x63f898
00652590  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
00652594  a0 20 95 e5                                      ldr r2, [r5, #0xa0]
00652598  00 30 a0 e3                                      mov r3, #0
0065259c  91 04 04 e0                                      mul r4, r1, r4
006525a0  01 10 a0 e3                                      mov r1, #1
006525a4  03 00 52 e1                                      cmp r2, r3
006525a8  24 30 85 e5                                      str r3, [r5, #0x24]
006525ac  1c 30 85 e5                                      str r3, [r5, #0x1c]
006525b0  20 30 85 e5                                      str r3, [r5, #0x20]
006525b4  98 40 85 e5                                      str r4, [r5, #0x98]
006525b8  b8 12 c5 e1                                      strh r1, [r5, #0x28]
006525bc  04 30 92 15                                      ldrne r3, [r2, #4]
006525c0  01 30 83 12                                      addne r3, r3, #1
006525c4  04 30 82 15                                      strne r3, [r2, #4]
006525c8  14 00 95 e5                                      ldr r0, [r5, #0x14]
006525cc  14 20 85 e5                                      str r2, [r5, #0x14]
006525d0  00 00 50 e3                                      cmp r0, #0
006525d4  00 00 00 0a                                      beq #0x6525dc
006525d8  e9 2b f3 eb                                      bl #0x31d584
006525dc  08 30 95 e5                                      ldr r3, [r5, #8]
006525e0  06 10 a0 e3                                      mov r1, #6
006525e4  00 20 a0 e3                                      mov r2, #0
006525e8  04 00 93 e5                                      ldr r0, [r3, #4]
006525ec  45 f2 fd eb                                      bl #0x5cef08
006525f0  bc 00 c5 e1                                      strh r0, [r5, #0xc]
006525f4  10 d0 8d e2                                      add sp, sp, #0x10
006525f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
006525fc  0d 30 a0 e1                                      mov r3, sp
00652600  00 e0 a0 e3                                      mov lr, #0
00652604  08 00 8d e2                                      add r0, sp, #8
00652608  0c 20 8d e2                                      add r2, sp, #0xc
0065260c  10 40 8d e8                                      stm sp, {r4, lr}
00652610  0c c0 8d e5                                      str ip, [sp, #0xc]
00652614  16 a1 ff eb                                      bl #0x63aa74
00652618  08 30 9d e5                                      ldr r3, [sp, #8]
0065261c  cf ff ff ea                                      b #0x652560
; mapping-symbol data/literal pool
00652620  08 2d 29 00                                      .byte 0x08, 0x2d, 0x29, 0x00

; FUNCTION 0x00652624, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n144_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE20initPRenderDataModelEv
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::initPRenderDataModel()
; decoder-mode: arm
00652624  00 30 90 e5                                      ldr r3, [r0]
00652628  90 30 13 e5                                      ldr r3, [r3, #-0x90]
0065262c  03 00 80 e0                                      add r0, r0, r3
00652630  a9 ff ff ea                                      b #0x6524dc

; FUNCTION 0x00653ab0, declared_size=204, range_size=204, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEED1Ev
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
00653ab0  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
00653ab4  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00653ab8  70 40 2d e9                                      push {r4, r5, r6, lr}
00653abc  02 20 8f e0                                      add r2, pc, r2
00653ac0  03 30 92 e7                                      ldr r3, [r2, r3]
00653ac4  00 60 a0 e1                                      mov r6, r0
00653ac8  00 40 a0 e1                                      mov r4, r0
00653acc  0c 20 83 e2                                      add r2, r3, #0xc
00653ad0  a4 20 86 e4                                      str r2, [r6], #0xa4
00653ad4  c8 30 83 e2                                      add r3, r3, #0xc8
00653ad8  a4 30 80 e5                                      str r3, [r0, #0xa4]
00653adc  9c 00 90 e5                                      ldr r0, [r0, #0x9c]
00653ae0  f2 e9 f2 eb                                      bl #0x30e2b0
00653ae4  00 30 a0 e3                                      mov r3, #0
00653ae8  04 00 a0 e1                                      mov r0, r4
00653aec  9c 30 84 e5                                      str r3, [r4, #0x9c]
00653af0  51 e8 ff eb                                      bl #0x64dc3c
00653af4  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
00653af8  00 00 50 e3                                      cmp r0, #0
00653afc  00 00 00 0a                                      beq #0x653b04
00653b00  9f 26 f3 eb                                      bl #0x31d584
00653b04  14 00 94 e5                                      ldr r0, [r4, #0x14]
00653b08  00 00 50 e3                                      cmp r0, #0
00653b0c  00 00 00 0a                                      beq #0x653b14
00653b10  9b 26 f3 eb                                      bl #0x31d584
00653b14  10 50 94 e5                                      ldr r5, [r4, #0x10]
00653b18  00 00 55 e3                                      cmp r5, #0
00653b1c  04 00 00 0a                                      beq #0x653b34
00653b20  00 30 95 e5                                      ldr r3, [r5]
00653b24  01 30 43 e2                                      sub r3, r3, #1
00653b28  00 00 53 e3                                      cmp r3, #0
00653b2c  00 30 85 e5                                      str r3, [r5]
00653b30  05 00 00 0a                                      beq #0x653b4c
00653b34  08 00 84 e2                                      add r0, r4, #8
00653b38  2a f4 f2 eb                                      bl #0x310be8
00653b3c  06 00 a0 e1                                      mov r0, r6
00653b40  d4 e5 ff eb                                      bl #0x64d298
00653b44  04 00 a0 e1                                      mov r0, r4
00653b48  70 80 bd e8                                      pop {r4, r5, r6, pc}
00653b4c  05 00 a0 e1                                      mov r0, r5
00653b50  b1 33 fd eb                                      bl #0x5a0a1c
00653b54  05 00 a0 e1                                      mov r0, r5
00653b58  d4 e9 f2 eb                                      bl #0x30e2b0
00653b5c  08 00 84 e2                                      add r0, r4, #8
00653b60  20 f4 f2 eb                                      bl #0x310be8
00653b64  06 00 a0 e1                                      mov r0, r6
00653b68  ca e5 ff eb                                      bl #0x64d298
00653b6c  04 00 a0 e1                                      mov r0, r4
00653b70  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00653b74  d4 0f 34 00 44 33 00 00                          .byte 0xd4, 0x0f, 0x34, 0x00, 0x44, 0x33, 0x00, 0x00

; FUNCTION 0x00653b7c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n12_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEED1Ev
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
00653b7c  00 30 90 e5                                      ldr r3, [r0]
00653b80  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653b84  03 00 80 e0                                      add r0, r0, r3
00653b88  c8 ff ff ea                                      b #0x653ab0

; FUNCTION 0x00653b8c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEED0Ev
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
00653b8c  10 40 2d e9                                      push {r4, lr}
00653b90  00 40 a0 e1                                      mov r4, r0
00653b94  c5 ff ff eb                                      bl #0x653ab0
00653b98  04 00 a0 e1                                      mov r0, r4
00653b9c  c3 e9 f2 eb                                      bl #0x30e2b0
00653ba0  04 00 a0 e1                                      mov r0, r4
00653ba4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00653ba8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n12_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEED0Ev
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
00653ba8  00 30 90 e5                                      ldr r3, [r0]
00653bac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653bb0  03 00 80 e0                                      add r0, r0, r3
00653bb4  f4 ff ff ea                                      b #0x653b8c

; FUNCTION 0x006558b0, declared_size=240, range_size=240, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE13getRenderDataEi
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::getRenderData(int)
; decoder-mode: arm
006558b0  70 40 2d e9                                      push {r4, r5, r6, lr}
006558b4  0c 00 90 e8                                      ldm r0, {r2, r3}
006558b8  00 40 a0 e1                                      mov r4, r0
006558bc  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
006558c0  08 d0 4d e2                                      sub sp, sp, #8
006558c4  14 20 93 e5                                      ldr r2, [r3, #0x14]
006558c8  9c 00 90 e5                                      ldr r0, [r0, #0x9c]
006558cc  10 30 94 e5                                      ldr r3, [r4, #0x10]
006558d0  30 e0 84 e2                                      add lr, r4, #0x30
006558d4  08 c0 84 e2                                      add ip, r4, #8
006558d8  01 10 84 e0                                      add r1, r4, r1
006558dc  00 e0 8d e5                                      str lr, [sp]
006558e0  04 c0 8d e5                                      str ip, [sp, #4]
006558e4  ee fe ff eb                                      bl #0x6554a4
006558e8  04 30 94 e5                                      ldr r3, [r4, #4]
006558ec  14 50 93 e5                                      ldr r5, [r3, #0x14]
006558f0  00 00 55 e3                                      cmp r5, #0
006558f4  00 30 95 15                                      ldrne r3, [r5]
006558f8  08 60 95 e5                                      ldr r6, [r5, #8]
006558fc  01 30 83 12                                      addne r3, r3, #1
00655900  00 30 85 15                                      strne r3, [r5]
00655904  00 30 95 e5                                      ldr r3, [r5]
00655908  01 30 43 e2                                      sub r3, r3, #1
0065590c  00 00 53 e3                                      cmp r3, #0
00655910  00 30 85 e5                                      str r3, [r5]
00655914  03 00 00 1a                                      bne #0x655928
00655918  05 00 a0 e1                                      mov r0, r5
0065591c  3e 2c fd eb                                      bl #0x5a0a1c
00655920  05 00 a0 e1                                      mov r0, r5
00655924  61 e2 f2 eb                                      bl #0x30e2b0
00655928  00 20 94 e5                                      ldr r2, [r4]
0065592c  29 3c 05 e3                                      movw r3, #0x5c29
00655930  8f 32 4c e3                                      movt r3, #0xc28f
00655934  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00655938  10 10 94 e5                                      ldr r1, [r4, #0x10]
0065593c  00 00 84 e0                                      add r0, r4, r0
00655940  28 c0 90 e5                                      ldr ip, [r0, #0x28]
00655944  24 20 90 e5                                      ldr r2, [r0, #0x24]
00655948  10 00 84 e2                                      add r0, r4, #0x10
0065594c  0c 20 62 e0                                      rsb r2, r2, ip
00655950  42 21 a0 e1                                      asr r2, r2, #2
00655954  93 02 02 e0                                      mul r2, r3, r2
00655958  96 02 02 e0                                      mul r2, r6, r2
0065595c  00 60 a0 e3                                      mov r6, #0
00655960  08 20 81 e5                                      str r2, [r1, #8]
00655964  02 10 94 e8                                      ldm r4, {r1, ip}
00655968  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0065596c  20 c0 9c e5                                      ldr ip, [ip, #0x20]
00655970  01 10 84 e0                                      add r1, r4, r1
00655974  24 50 91 e5                                      ldr r5, [r1, #0x24]
00655978  28 10 91 e5                                      ldr r1, [r1, #0x28]
0065597c  24 20 84 e5                                      str r2, [r4, #0x24]
00655980  20 60 84 e5                                      str r6, [r4, #0x20]
00655984  01 20 65 e0                                      rsb r2, r5, r1
00655988  42 21 a0 e1                                      asr r2, r2, #2
0065598c  93 02 03 e0                                      mul r3, r3, r2
00655990  9c 03 03 e0                                      mul r3, ip, r3
00655994  1c 30 84 e5                                      str r3, [r4, #0x1c]
00655998  08 d0 8d e2                                      add sp, sp, #8
0065599c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006559a0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n16_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE13getRenderDataEi
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> >::getRenderData(int)
; decoder-mode: arm
006559a0  00 30 90 e5                                      ldr r3, [r0]
006559a4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006559a8  03 00 80 e0                                      add r0, r0, r3
006559ac  bf ff ff ea                                      b #0x6558b0
