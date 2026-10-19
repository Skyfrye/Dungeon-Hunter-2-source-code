; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064c4b0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE22getRenderVertexStreamsEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::getRenderVertexStreams()
; decoder-mode: arm
0064c4b0  10 30 91 e5                                      ldr r3, [r1, #0x10]
0064c4b4  00 00 53 e3                                      cmp r3, #0
0064c4b8  00 30 80 e5                                      str r3, [r0]
0064c4bc  00 20 93 15                                      ldrne r2, [r3]
0064c4c0  01 20 82 12                                      addne r2, r2, #1
0064c4c4  00 20 83 15                                      strne r2, [r3]
0064c4c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064c4cc, declared_size=32, range_size=32, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n20_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE22getRenderVertexStreamsEv
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::getRenderVertexStreams()
; decoder-mode: arm
0064c4cc  10 40 2d e9                                      push {r4, lr}
0064c4d0  00 30 91 e5                                      ldr r3, [r1]
0064c4d4  00 40 a0 e1                                      mov r4, r0
0064c4d8  14 30 13 e5                                      ldr r3, [r3, #-0x14]
0064c4dc  03 10 81 e0                                      add r1, r1, r3
0064c4e0  f2 ff ff eb                                      bl #0x64c4b0
0064c4e4  04 00 a0 e1                                      mov r0, r4
0064c4e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0064c4ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZNK6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE25getRenderBufferSizeNeededEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::getRenderBufferSizeNeeded() const
; decoder-mode: arm
0064c4ec  98 00 90 e5                                      ldr r0, [r0, #0x98]
0064c4f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064c4f4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n24_NK6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE25getRenderBufferSizeNeededEv
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::getRenderBufferSizeNeeded() const
; decoder-mode: arm
0064c4f4  00 30 90 e5                                      ldr r3, [r0]
0064c4f8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0064c4fc  03 00 80 e0                                      add r0, r0, r3
0064c500  f9 ff ff ea                                      b #0x64c4ec

; FUNCTION 0x0064c504, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE15initPRenderDataEPS2_SD_
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::initPRenderData(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c504  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064c508, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n148_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE15initPRenderDataEPS2_SD_
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::initPRenderData(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064c508  00 30 90 e5                                      ldr r3, [r0]
0064c50c  94 30 13 e5                                      ldr r3, [r3, #-0x94]
0064c510  03 00 80 e0                                      add r0, r0, r3
0064c514  fa ff ff ea                                      b #0x64c504

; FUNCTION 0x0064dba0, declared_size=72, range_size=72, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE16deallocateBufferEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::deallocateBuffer()
; decoder-mode: arm
0064dba0  10 40 2d e9                                      push {r4, lr}
0064dba4  00 40 a0 e1                                      mov r4, r0
0064dba8  90 00 90 e5                                      ldr r0, [r0, #0x90]
0064dbac  00 00 50 e3                                      cmp r0, #0
0064dbb0  02 00 00 0a                                      beq #0x64dbc0
0064dbb4  8c 30 d4 e5                                      ldrb r3, [r4, #0x8c]
0064dbb8  00 00 53 e3                                      cmp r3, #0
0064dbbc  00 00 00 1a                                      bne #0x64dbc4
0064dbc0  10 80 bd e8                                      pop {r4, pc}
0064dbc4  eb fe ff eb                                      bl #0x64d778
0064dbc8  10 20 94 e5                                      ldr r2, [r4, #0x10]
0064dbcc  00 30 a0 e3                                      mov r3, #0
0064dbd0  90 30 84 e5                                      str r3, [r4, #0x90]
0064dbd4  14 00 92 e5                                      ldr r0, [r2, #0x14]
0064dbd8  03 10 a0 e1                                      mov r1, r3
0064dbdc  03 20 a0 e1                                      mov r2, r3
0064dbe0  10 40 bd e8                                      pop {r4, lr}
0064dbe4  32 50 fd ea                                      b #0x5a1cb4

; FUNCTION 0x0064dbe8, declared_size=68, range_size=68, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE15setRenderBufferEPvj
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::setRenderBuffer(void*, unsigned int)
; decoder-mode: arm
0064dbe8  70 40 2d e9                                      push {r4, r5, r6, lr}
0064dbec  00 40 51 e2                                      subs r4, r1, #0
0064dbf0  02 60 a0 e1                                      mov r6, r2
0064dbf4  00 50 a0 e1                                      mov r5, r0
0064dbf8  0a 00 00 0a                                      beq #0x64dc28
0064dbfc  e7 ff ff eb                                      bl #0x64dba0
0064dc00  10 20 95 e5                                      ldr r2, [r5, #0x10]
0064dc04  00 30 a0 e3                                      mov r3, #0
0064dc08  8c 30 c5 e5                                      strb r3, [r5, #0x8c]
0064dc0c  90 40 85 e5                                      str r4, [r5, #0x90]
0064dc10  94 60 85 e5                                      str r6, [r5, #0x94]
0064dc14  14 00 92 e5                                      ldr r0, [r2, #0x14]
0064dc18  06 10 a0 e1                                      mov r1, r6
0064dc1c  04 20 a0 e1                                      mov r2, r4
0064dc20  70 40 bd e8                                      pop {r4, r5, r6, lr}
0064dc24  22 50 fd ea                                      b #0x5a1cb4
0064dc28  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0064dc2c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n28_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE15setRenderBufferEPvj
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::setRenderBuffer(void*, unsigned int)
; decoder-mode: arm
0064dc2c  00 30 90 e5                                      ldr r3, [r0]
0064dc30  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0064dc34  03 00 80 e0                                      add r0, r0, r3
0064dc38  ea ff ff ea                                      b #0x64dbe8

; FUNCTION 0x00651eec, declared_size=572, range_size=572, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE16applyPRenderDataEPS2_SD_
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::applyPRenderData(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
00651eec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00651ef0  14 d0 4d e2                                      sub sp, sp, #0x14
00651ef4  04 10 8d e5                                      str r1, [sp, #4]
00651ef8  02 00 51 e1                                      cmp r1, r2
00651efc  02 a0 a0 e1                                      mov sl, r2
00651f00  60 20 90 e5                                      ldr r2, [r0, #0x60]
00651f04  02 31 e0 e3                                      mvn r3, #0x80000000
00651f08  02 c5 e0 e3                                      mvn ip, #0x800000
00651f0c  02 35 43 e2                                      sub r3, r3, #0x800000
00651f10  88 c0 80 e5                                      str ip, [r0, #0x88]
00651f14  7c 30 80 e5                                      str r3, [r0, #0x7c]
00651f18  80 c0 80 e5                                      str ip, [r0, #0x80]
00651f1c  84 c0 80 e5                                      str ip, [r0, #0x84]
00651f20  74 30 80 e5                                      str r3, [r0, #0x74]
00651f24  78 30 80 e5                                      str r3, [r0, #0x78]
00651f28  00 20 8d e5                                      str r2, [sp]
00651f2c  00 40 a0 e1                                      mov r4, r0
00651f30  64 90 90 e5                                      ldr sb, [r0, #0x64]
00651f34  68 b0 90 e5                                      ldr fp, [r0, #0x68]
00651f38  04 50 9d 05                                      ldreq r5, [sp, #4]
00651f3c  4d 00 00 0a                                      beq #0x652078
00651f40  04 50 9d e5                                      ldr r5, [sp, #4]
00651f44  00 10 95 e5                                      ldr r1, [r5]
00651f48  00 00 9d e5                                      ldr r0, [sp]
00651f4c  16 f1 f2 eb                                      bl #0x30e3ac
00651f50  04 10 95 e5                                      ldr r1, [r5, #4]
00651f54  00 70 a0 e1                                      mov r7, r0
00651f58  09 00 a0 e1                                      mov r0, sb
00651f5c  12 f1 f2 eb                                      bl #0x30e3ac
00651f60  08 10 95 e5                                      ldr r1, [r5, #8]
00651f64  00 80 a0 e1                                      mov r8, r0
00651f68  0b 00 a0 e1                                      mov r0, fp
00651f6c  0e f1 f2 eb                                      bl #0x30e3ac
00651f70  07 10 a0 e1                                      mov r1, r7
00651f74  00 60 a0 e1                                      mov r6, r0
00651f78  07 00 a0 e1                                      mov r0, r7
00651f7c  7a f3 f2 eb                                      bl #0x30ed6c
00651f80  08 10 a0 e1                                      mov r1, r8
00651f84  00 70 a0 e1                                      mov r7, r0
00651f88  08 00 a0 e1                                      mov r0, r8
00651f8c  76 f3 f2 eb                                      bl #0x30ed6c
00651f90  00 10 a0 e1                                      mov r1, r0
00651f94  07 00 a0 e1                                      mov r0, r7
00651f98  01 f3 f2 eb                                      bl #0x30eba4
00651f9c  06 10 a0 e1                                      mov r1, r6
00651fa0  00 70 a0 e1                                      mov r7, r0
00651fa4  06 00 a0 e1                                      mov r0, r6
00651fa8  6f f3 f2 eb                                      bl #0x30ed6c
00651fac  00 10 a0 e1                                      mov r1, r0
00651fb0  07 00 a0 e1                                      mov r0, r7
00651fb4  fa f2 f2 eb                                      bl #0x30eba4
00651fb8  00 80 95 e5                                      ldr r8, [r5]
00651fbc  60 00 85 e5                                      str r0, [r5, #0x60]
00651fc0  80 10 94 e5                                      ldr r1, [r4, #0x80]
00651fc4  08 00 a0 e1                                      mov r0, r8
00651fc8  ca f0 f2 eb                                      bl #0x30e2f8
00651fcc  04 70 95 e5                                      ldr r7, [r5, #4]
00651fd0  00 00 50 e3                                      cmp r0, #0
00651fd4  08 60 95 e5                                      ldr r6, [r5, #8]
00651fd8  84 10 94 e5                                      ldr r1, [r4, #0x84]
00651fdc  80 80 84 15                                      strne r8, [r4, #0x80]
00651fe0  07 00 a0 e1                                      mov r0, r7
00651fe4  c3 f0 f2 eb                                      bl #0x30e2f8
00651fe8  00 00 50 e3                                      cmp r0, #0
00651fec  88 10 94 e5                                      ldr r1, [r4, #0x88]
00651ff0  84 70 84 15                                      strne r7, [r4, #0x84]
00651ff4  06 00 a0 e1                                      mov r0, r6
00651ff8  be f0 f2 eb                                      bl #0x30e2f8
00651ffc  00 00 50 e3                                      cmp r0, #0
00652000  74 10 94 e5                                      ldr r1, [r4, #0x74]
00652004  88 60 84 15                                      strne r6, [r4, #0x88]
00652008  08 00 a0 e1                                      mov r0, r8
0065200c  be f1 f2 eb                                      bl #0x30e70c
00652010  00 00 50 e3                                      cmp r0, #0
00652014  78 10 94 e5                                      ldr r1, [r4, #0x78]
00652018  74 80 84 15                                      strne r8, [r4, #0x74]
0065201c  07 00 a0 e1                                      mov r0, r7
00652020  b9 f1 f2 eb                                      bl #0x30e70c
00652024  00 00 50 e3                                      cmp r0, #0
00652028  78 70 84 15                                      strne r7, [r4, #0x78]
0065202c  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00652030  06 00 a0 e1                                      mov r0, r6
00652034  b4 f1 f2 eb                                      bl #0x30e70c
00652038  64 50 85 e2                                      add r5, r5, #0x64
0065203c  00 00 50 e3                                      cmp r0, #0
00652040  7c 60 84 15                                      strne r6, [r4, #0x7c]
00652044  05 00 5a e1                                      cmp sl, r5
00652048  bd ff ff 1a                                      bne #0x651f44
0065204c  04 20 9d e5                                      ldr r2, [sp, #4]
00652050  64 50 a0 e3                                      mov r5, #0x64
00652054  64 30 82 e2                                      add r3, r2, #0x64
00652058  0a a0 63 e0                                      rsb sl, r3, sl
0065205c  29 3c 05 e3                                      movw r3, #0x5c29
00652060  2a a1 a0 e1                                      lsr sl, sl, #2
00652064  8f 32 40 e3                                      movt r3, #0x28f
00652068  93 0a 03 e0                                      mul r3, r3, sl
0065206c  03 31 c3 e3                                      bic r3, r3, #0xc0000000
00652070  93 55 25 e0                                      mla r5, r3, r5, r5
00652074  05 50 82 e0                                      add r5, r2, r5
00652078  00 30 94 e5                                      ldr r3, [r4]
0065207c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00652080  03 00 84 e0                                      add r0, r4, r3
00652084  54 20 d0 e5                                      ldrb r2, [r0, #0x54]
00652088  00 00 52 e3                                      cmp r2, #0
0065208c  05 00 00 1a                                      bne #0x6520a8
00652090  04 00 9d e5                                      ldr r0, [sp, #4]
00652094  05 10 a0 e1                                      mov r1, r5
00652098  0c 20 8d e2                                      add r2, sp, #0xc
0065209c  72 ff ff eb                                      bl #0x651e6c
006520a0  14 d0 8d e2                                      add sp, sp, #0x14
006520a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006520a8  03 30 94 e7                                      ldr r3, [r4, r3]
006520ac  0f e0 a0 e1                                      mov lr, pc
006520b0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006520b4  30 80 90 e5                                      ldr r8, [r0, #0x30]
006520b8  00 30 a0 e1                                      mov r3, r0
006520bc  74 00 94 e5                                      ldr r0, [r4, #0x74]
006520c0  08 10 a0 e1                                      mov r1, r8
006520c4  38 60 93 e5                                      ldr r6, [r3, #0x38]
006520c8  34 70 93 e5                                      ldr r7, [r3, #0x34]
006520cc  b4 f2 f2 eb                                      bl #0x30eba4
006520d0  07 10 a0 e1                                      mov r1, r7
006520d4  74 00 84 e5                                      str r0, [r4, #0x74]
006520d8  78 00 94 e5                                      ldr r0, [r4, #0x78]
006520dc  b0 f2 f2 eb                                      bl #0x30eba4
006520e0  06 10 a0 e1                                      mov r1, r6
006520e4  78 00 84 e5                                      str r0, [r4, #0x78]
006520e8  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
006520ec  ac f2 f2 eb                                      bl #0x30eba4
006520f0  08 10 a0 e1                                      mov r1, r8
006520f4  7c 00 84 e5                                      str r0, [r4, #0x7c]
006520f8  80 00 94 e5                                      ldr r0, [r4, #0x80]
006520fc  a8 f2 f2 eb                                      bl #0x30eba4
00652100  07 10 a0 e1                                      mov r1, r7
00652104  80 00 84 e5                                      str r0, [r4, #0x80]
00652108  84 00 94 e5                                      ldr r0, [r4, #0x84]
0065210c  a4 f2 f2 eb                                      bl #0x30eba4
00652110  06 10 a0 e1                                      mov r1, r6
00652114  84 00 84 e5                                      str r0, [r4, #0x84]
00652118  88 00 94 e5                                      ldr r0, [r4, #0x88]
0065211c  a0 f2 f2 eb                                      bl #0x30eba4
00652120  88 00 84 e5                                      str r0, [r4, #0x88]
00652124  d9 ff ff ea                                      b #0x652090

; FUNCTION 0x00652128, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n152_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE16applyPRenderDataEPS2_SD_
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::applyPRenderData(glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
00652128  00 30 90 e5                                      ldr r3, [r0]
0065212c  98 30 13 e5                                      ldr r3, [r3, #-0x98]
00652130  03 00 80 e0                                      add r0, r0, r3
00652134  6c ff ff ea                                      b #0x651eec

; FUNCTION 0x00652384, declared_size=328, range_size=328, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE20initPRenderDataModelEv
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::initPRenderDataModel()
; decoder-mode: arm
00652384  70 40 2d e9                                      push {r4, r5, r6, lr}
00652388  00 30 90 e5                                      ldr r3, [r0]
0065238c  34 11 9f e5                                      ldr r1, [pc, #0x134]
00652390  10 d0 4d e2                                      sub sp, sp, #0x10
00652394  0c 60 13 e5                                      ldr r6, [r3, #-0xc]
00652398  01 10 8f e0                                      add r1, pc, r1
0065239c  00 50 a0 e1                                      mov r5, r0
006523a0  06 60 80 e0                                      add r6, r0, r6
006523a4  06 00 a0 e1                                      mov r0, r6
006523a8  43 eb ff eb                                      bl #0x64d0bc
006523ac  34 c0 96 e5                                      ldr ip, [r6, #0x34]
006523b0  30 10 86 e2                                      add r1, r6, #0x30
006523b4  00 40 a0 e1                                      mov r4, r0
006523b8  00 00 5c e3                                      cmp ip, #0
006523bc  01 c0 a0 01                                      moveq ip, r1
006523c0  0a 00 00 0a                                      beq #0x6523f0
006523c4  01 20 a0 e1                                      mov r2, r1
006523c8  00 00 00 ea                                      b #0x6523d0
006523cc  03 c0 a0 e1                                      mov ip, r3
006523d0  10 30 9c e5                                      ldr r3, [ip, #0x10]
006523d4  03 00 54 e1                                      cmp r4, r3
006523d8  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
006523dc  08 30 9c 95                                      ldrls r3, [ip, #8]
006523e0  02 c0 a0 81                                      movhi ip, r2
006523e4  0c 20 a0 e1                                      mov r2, ip
006523e8  00 00 53 e3                                      cmp r3, #0
006523ec  f6 ff ff 1a                                      bne #0x6523cc
006523f0  0c 00 51 e1                                      cmp r1, ip
006523f4  2a 00 00 0a                                      beq #0x6524a4
006523f8  10 20 9c e5                                      ldr r2, [ip, #0x10]
006523fc  0c 30 a0 e1                                      mov r3, ip
00652400  02 00 54 e1                                      cmp r4, r2
00652404  26 00 00 3a                                      blo #0x6524a4
00652408  04 10 95 e5                                      ldr r1, [r5, #4]
0065240c  14 30 93 e5                                      ldr r3, [r3, #0x14]
00652410  00 00 51 e3                                      cmp r1, #0
00652414  00 40 93 e5                                      ldr r4, [r3]
00652418  1f 00 00 0a                                      beq #0x65249c
0065241c  08 30 95 e5                                      ldr r3, [r5, #8]
00652420  00 00 53 e3                                      cmp r3, #0
00652424  1c 00 00 0a                                      beq #0x65249c
00652428  04 30 93 e5                                      ldr r3, [r3, #4]
0065242c  10 00 85 e2                                      add r0, r5, #0x10
00652430  04 20 93 e5                                      ldr r2, [r3, #4]
00652434  17 b5 ff eb                                      bl #0x63f898
00652438  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
0065243c  a0 20 95 e5                                      ldr r2, [r5, #0xa0]
00652440  00 30 a0 e3                                      mov r3, #0
00652444  91 04 04 e0                                      mul r4, r1, r4
00652448  01 10 a0 e3                                      mov r1, #1
0065244c  03 00 52 e1                                      cmp r2, r3
00652450  24 30 85 e5                                      str r3, [r5, #0x24]
00652454  1c 30 85 e5                                      str r3, [r5, #0x1c]
00652458  20 30 85 e5                                      str r3, [r5, #0x20]
0065245c  98 40 85 e5                                      str r4, [r5, #0x98]
00652460  b8 12 c5 e1                                      strh r1, [r5, #0x28]
00652464  04 30 92 15                                      ldrne r3, [r2, #4]
00652468  01 30 83 12                                      addne r3, r3, #1
0065246c  04 30 82 15                                      strne r3, [r2, #4]
00652470  14 00 95 e5                                      ldr r0, [r5, #0x14]
00652474  14 20 85 e5                                      str r2, [r5, #0x14]
00652478  00 00 50 e3                                      cmp r0, #0
0065247c  00 00 00 0a                                      beq #0x652484
00652480  3f 2c f3 eb                                      bl #0x31d584
00652484  08 30 95 e5                                      ldr r3, [r5, #8]
00652488  06 10 a0 e3                                      mov r1, #6
0065248c  00 20 a0 e3                                      mov r2, #0
00652490  04 00 93 e5                                      ldr r0, [r3, #4]
00652494  9b f2 fd eb                                      bl #0x5cef08
00652498  bc 00 c5 e1                                      strh r0, [r5, #0xc]
0065249c  10 d0 8d e2                                      add sp, sp, #0x10
006524a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006524a4  0d 30 a0 e1                                      mov r3, sp
006524a8  00 e0 a0 e3                                      mov lr, #0
006524ac  08 00 8d e2                                      add r0, sp, #8
006524b0  0c 20 8d e2                                      add r2, sp, #0xc
006524b4  10 40 8d e8                                      stm sp, {r4, lr}
006524b8  0c c0 8d e5                                      str ip, [sp, #0xc]
006524bc  6c a1 ff eb                                      bl #0x63aa74
006524c0  08 30 9d e5                                      ldr r3, [sp, #8]
006524c4  cf ff ff ea                                      b #0x652408
; mapping-symbol data/literal pool
006524c8  60 2e 29 00                                      .byte 0x60, 0x2e, 0x29, 0x00

; FUNCTION 0x006524cc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n144_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE20initPRenderDataModelEv
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::initPRenderDataModel()
; decoder-mode: arm
006524cc  00 30 90 e5                                      ldr r3, [r0]
006524d0  90 30 13 e5                                      ldr r3, [r3, #-0x90]
006524d4  03 00 80 e0                                      add r0, r0, r3
006524d8  a9 ff ff ea                                      b #0x652384

; FUNCTION 0x006539a8, declared_size=204, range_size=204, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEED1Ev
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
006539a8  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
006539ac  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
006539b0  70 40 2d e9                                      push {r4, r5, r6, lr}
006539b4  02 20 8f e0                                      add r2, pc, r2
006539b8  03 30 92 e7                                      ldr r3, [r2, r3]
006539bc  00 60 a0 e1                                      mov r6, r0
006539c0  00 40 a0 e1                                      mov r4, r0
006539c4  0c 20 83 e2                                      add r2, r3, #0xc
006539c8  a4 20 86 e4                                      str r2, [r6], #0xa4
006539cc  c8 30 83 e2                                      add r3, r3, #0xc8
006539d0  a4 30 80 e5                                      str r3, [r0, #0xa4]
006539d4  9c 00 90 e5                                      ldr r0, [r0, #0x9c]
006539d8  34 ea f2 eb                                      bl #0x30e2b0
006539dc  00 30 a0 e3                                      mov r3, #0
006539e0  04 00 a0 e1                                      mov r0, r4
006539e4  9c 30 84 e5                                      str r3, [r4, #0x9c]
006539e8  6c e8 ff eb                                      bl #0x64dba0
006539ec  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
006539f0  00 00 50 e3                                      cmp r0, #0
006539f4  00 00 00 0a                                      beq #0x6539fc
006539f8  e1 26 f3 eb                                      bl #0x31d584
006539fc  14 00 94 e5                                      ldr r0, [r4, #0x14]
00653a00  00 00 50 e3                                      cmp r0, #0
00653a04  00 00 00 0a                                      beq #0x653a0c
00653a08  dd 26 f3 eb                                      bl #0x31d584
00653a0c  10 50 94 e5                                      ldr r5, [r4, #0x10]
00653a10  00 00 55 e3                                      cmp r5, #0
00653a14  04 00 00 0a                                      beq #0x653a2c
00653a18  00 30 95 e5                                      ldr r3, [r5]
00653a1c  01 30 43 e2                                      sub r3, r3, #1
00653a20  00 00 53 e3                                      cmp r3, #0
00653a24  00 30 85 e5                                      str r3, [r5]
00653a28  05 00 00 0a                                      beq #0x653a44
00653a2c  08 00 84 e2                                      add r0, r4, #8
00653a30  6c f4 f2 eb                                      bl #0x310be8
00653a34  06 00 a0 e1                                      mov r0, r6
00653a38  16 e6 ff eb                                      bl #0x64d298
00653a3c  04 00 a0 e1                                      mov r0, r4
00653a40  70 80 bd e8                                      pop {r4, r5, r6, pc}
00653a44  05 00 a0 e1                                      mov r0, r5
00653a48  f3 33 fd eb                                      bl #0x5a0a1c
00653a4c  05 00 a0 e1                                      mov r0, r5
00653a50  16 ea f2 eb                                      bl #0x30e2b0
00653a54  08 00 84 e2                                      add r0, r4, #8
00653a58  62 f4 f2 eb                                      bl #0x310be8
00653a5c  06 00 a0 e1                                      mov r0, r6
00653a60  0c e6 ff eb                                      bl #0x64d298
00653a64  04 00 a0 e1                                      mov r0, r4
00653a68  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00653a6c  dc 10 34 00 70 1a 00 00                          .byte 0xdc, 0x10, 0x34, 0x00, 0x70, 0x1a, 0x00, 0x00

; FUNCTION 0x00653a74, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n12_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEED1Ev
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
00653a74  00 30 90 e5                                      ldr r3, [r0]
00653a78  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653a7c  03 00 80 e0                                      add r0, r0, r3
00653a80  c8 ff ff ea                                      b #0x6539a8

; FUNCTION 0x00653a84, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEED0Ev
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
00653a84  10 40 2d e9                                      push {r4, lr}
00653a88  00 40 a0 e1                                      mov r4, r0
00653a8c  c5 ff ff eb                                      bl #0x6539a8
00653a90  04 00 a0 e1                                      mov r0, r4
00653a94  05 ea f2 eb                                      bl #0x30e2b0
00653a98  04 00 a0 e1                                      mov r0, r4
00653a9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00653aa0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n12_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEED0Ev
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::~PRenderDataBillboardModel()
; decoder-mode: arm
00653aa0  00 30 90 e5                                      ldr r3, [r0]
00653aa4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653aa8  03 00 80 e0                                      add r0, r0, r3
00653aac  f4 ff ff ea                                      b #0x653a84

; FUNCTION 0x0065605c, declared_size=240, range_size=240, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE13getRenderDataEi
; demangled: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::getRenderData(int)
; decoder-mode: arm
0065605c  70 40 2d e9                                      push {r4, r5, r6, lr}
00656060  0c 00 90 e8                                      ldm r0, {r2, r3}
00656064  00 40 a0 e1                                      mov r4, r0
00656068  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
0065606c  08 d0 4d e2                                      sub sp, sp, #8
00656070  14 20 93 e5                                      ldr r2, [r3, #0x14]
00656074  9c 00 90 e5                                      ldr r0, [r0, #0x9c]
00656078  10 30 94 e5                                      ldr r3, [r4, #0x10]
0065607c  30 e0 84 e2                                      add lr, r4, #0x30
00656080  08 c0 84 e2                                      add ip, r4, #8
00656084  01 10 84 e0                                      add r1, r4, r1
00656088  00 e0 8d e5                                      str lr, [sp]
0065608c  04 c0 8d e5                                      str ip, [sp, #4]
00656090  46 fe ff eb                                      bl #0x6559b0
00656094  04 30 94 e5                                      ldr r3, [r4, #4]
00656098  14 50 93 e5                                      ldr r5, [r3, #0x14]
0065609c  00 00 55 e3                                      cmp r5, #0
006560a0  00 30 95 15                                      ldrne r3, [r5]
006560a4  08 60 95 e5                                      ldr r6, [r5, #8]
006560a8  01 30 83 12                                      addne r3, r3, #1
006560ac  00 30 85 15                                      strne r3, [r5]
006560b0  00 30 95 e5                                      ldr r3, [r5]
006560b4  01 30 43 e2                                      sub r3, r3, #1
006560b8  00 00 53 e3                                      cmp r3, #0
006560bc  00 30 85 e5                                      str r3, [r5]
006560c0  03 00 00 1a                                      bne #0x6560d4
006560c4  05 00 a0 e1                                      mov r0, r5
006560c8  53 2a fd eb                                      bl #0x5a0a1c
006560cc  05 00 a0 e1                                      mov r0, r5
006560d0  76 e0 f2 eb                                      bl #0x30e2b0
006560d4  00 20 94 e5                                      ldr r2, [r4]
006560d8  29 3c 05 e3                                      movw r3, #0x5c29
006560dc  8f 32 4c e3                                      movt r3, #0xc28f
006560e0  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006560e4  10 10 94 e5                                      ldr r1, [r4, #0x10]
006560e8  00 00 84 e0                                      add r0, r4, r0
006560ec  28 c0 90 e5                                      ldr ip, [r0, #0x28]
006560f0  24 20 90 e5                                      ldr r2, [r0, #0x24]
006560f4  10 00 84 e2                                      add r0, r4, #0x10
006560f8  0c 20 62 e0                                      rsb r2, r2, ip
006560fc  42 21 a0 e1                                      asr r2, r2, #2
00656100  93 02 02 e0                                      mul r2, r3, r2
00656104  96 02 02 e0                                      mul r2, r6, r2
00656108  00 60 a0 e3                                      mov r6, #0
0065610c  08 20 81 e5                                      str r2, [r1, #8]
00656110  02 10 94 e8                                      ldm r4, {r1, ip}
00656114  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
00656118  20 c0 9c e5                                      ldr ip, [ip, #0x20]
0065611c  01 10 84 e0                                      add r1, r4, r1
00656120  24 50 91 e5                                      ldr r5, [r1, #0x24]
00656124  28 10 91 e5                                      ldr r1, [r1, #0x28]
00656128  24 20 84 e5                                      str r2, [r4, #0x24]
0065612c  20 60 84 e5                                      str r6, [r4, #0x20]
00656130  01 20 65 e0                                      rsb r2, r5, r1
00656134  42 21 a0 e1                                      asr r2, r2, #2
00656138  93 02 03 e0                                      mul r3, r3, r2
0065613c  9c 03 03 e0                                      mul r3, ip, r3
00656140  1c 30 84 e5                                      str r3, [r4, #0x1c]
00656144  08 d0 8d e2                                      add sp, sp, #8
00656148  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065614c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >
; alias: _ZTv0_n16_N6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE13getRenderDataEi
; demangled: virtual thunk to glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> >::getRenderData(int)
; decoder-mode: arm
0065614c  00 30 90 e5                                      ldr r3, [r0]
00656150  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00656154  03 00 80 e0                                      add r0, r0, r3
00656158  bf ff ff ea                                      b #0x65605c
