; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006554a4, declared_size=1036, range_size=1036, mode=arm
; class-group: void glitch::video::CParticleSystemBaker<glitch::ps::SParticle>
; alias: _ZN6glitch5video20CParticleSystemBakerINS_2ps9SParticleEE4bakeINS2_16PSNullColorBakerIS3_EENS2_20PSGenericNormalBakerIS3_EENS2_22PSGenericPositionBakerIS3_EENS2_23PSGenericTexCoordsBakerIS3_EENS2_27PSNullShaderParametersBakerEEEvPKNS2_16IParticleContextIS3_EEPKNS0_14CVertexStreamsEPSJ_PKNS_4core8CMatrix4IfEERKN5boost13intrusive_ptrINS0_9CMaterialEEE
; demangled: void glitch::video::CParticleSystemBaker<glitch::ps::SParticle>::bake<glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle>, glitch::ps::PSNullShaderParametersBaker>(glitch::ps::IParticleContext<glitch::ps::SParticle> const*, glitch::video::CVertexStreams const*, glitch::video::CVertexStreams*, glitch::core::CMatrix4<float> const*, boost::intrusive_ptr<glitch::video::CMaterial> const&)
; decoder-mode: arm
006554a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006554a8  03 b0 a0 e1                                      mov fp, r3
006554ac  14 30 93 e5                                      ldr r3, [r3, #0x14]
006554b0  34 d0 4d e2                                      sub sp, sp, #0x34
006554b4  01 a0 a0 e1                                      mov sl, r1
006554b8  08 30 8d e5                                      str r3, [sp, #8]
006554bc  e4 33 9f e5                                      ldr r3, [pc, #0x3e4]
006554c0  00 20 8d e5                                      str r2, [sp]
006554c4  14 90 8b e2                                      add sb, fp, #0x14
006554c8  0c 30 8d e5                                      str r3, [sp, #0xc]
006554cc  08 30 9d e5                                      ldr r3, [sp, #8]
006554d0  00 00 53 e3                                      cmp r3, #0
006554d4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006554d8  08 10 9d 15                                      ldrne r1, [sp, #8]
006554dc  03 30 8f e0                                      add r3, pc, r3
006554e0  0c 30 8d e5                                      str r3, [sp, #0xc]
006554e4  04 30 91 15                                      ldrne r3, [r1, #4]
006554e8  be 40 d9 e1                                      ldrh r4, [sb, #0xe]
006554ec  01 30 83 12                                      addne r3, r3, #1
006554f0  04 30 81 15                                      strne r3, [r1, #4]
006554f4  00 20 9d e5                                      ldr r2, [sp]
006554f8  14 20 92 e5                                      ldr r2, [r2, #0x14]
006554fc  00 00 52 e3                                      cmp r2, #0
00655500  02 10 a0 11                                      movne r1, r2
00655504  04 20 8d e5                                      str r2, [sp, #4]
00655508  04 30 91 15                                      ldrne r3, [r1, #4]
0065550c  01 30 83 12                                      addne r3, r3, #1
00655510  04 30 81 15                                      strne r3, [r1, #4]
00655514  08 00 9d e5                                      ldr r0, [sp, #8]
00655518  02 10 a0 e3                                      mov r1, #2
0065551c  33 31 fd eb                                      bl #0x5a19f0
00655520  00 10 a0 e3                                      mov r1, #0
00655524  00 50 a0 e1                                      mov r5, r0
00655528  04 00 9d e5                                      ldr r0, [sp, #4]
0065552c  6a 31 fd eb                                      bl #0x5a1adc
00655530  00 10 9d e5                                      ldr r1, [sp]
00655534  28 20 9a e5                                      ldr r2, [sl, #0x28]
00655538  24 30 9a e5                                      ldr r3, [sl, #0x24]
0065553c  08 60 91 e5                                      ldr r6, [r1, #8]
00655540  00 80 a0 e1                                      mov r8, r0
00655544  02 30 63 e0                                      rsb r3, r3, r2
00655548  63 00 53 e3                                      cmp r3, #0x63
0065554c  96 04 06 e0                                      mul r6, r6, r4
00655550  0f 00 00 da                                      ble #0x655594
00655554  29 7c 05 e3                                      movw r7, #0x5c29
00655558  8f 72 4c e3                                      movt r7, #0xc28f
0065555c  00 40 a0 e3                                      mov r4, #0
00655560  05 00 a0 e1                                      mov r0, r5
00655564  06 20 a0 e1                                      mov r2, r6
00655568  08 10 a0 e1                                      mov r1, r8
0065556c  bd e4 f2 eb                                      bl #0x30e868
00655570  28 20 9a e5                                      ldr r2, [sl, #0x28]
00655574  24 30 9a e5                                      ldr r3, [sl, #0x24]
00655578  01 40 84 e2                                      add r4, r4, #1
0065557c  06 50 85 e0                                      add r5, r5, r6
00655580  02 30 63 e0                                      rsb r3, r3, r2
00655584  43 31 a0 e1                                      asr r3, r3, #2
00655588  97 03 03 e0                                      mul r3, r7, r3
0065558c  03 00 54 e1                                      cmp r4, r3
00655590  f2 ff ff ba                                      blt #0x655560
00655594  08 20 9d e5                                      ldr r2, [sp, #8]
00655598  13 30 d2 e5                                      ldrb r3, [r2, #0x13]
0065559c  1f 20 03 e2                                      and r2, r3, #0x1f
006555a0  01 00 52 e3                                      cmp r2, #1
006555a4  98 00 00 9a                                      bls #0x65580c
006555a8  08 10 9d e5                                      ldr r1, [sp, #8]
006555ac  01 20 42 e2                                      sub r2, r2, #1
006555b0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006555b4  03 30 82 e1                                      orr r3, r2, r3
006555b8  13 30 c1 e5                                      strb r3, [r1, #0x13]
006555bc  04 20 9d e5                                      ldr r2, [sp, #4]
006555c0  13 30 d2 e5                                      ldrb r3, [r2, #0x13]
006555c4  1f 20 03 e2                                      and r2, r3, #0x1f
006555c8  01 00 52 e3                                      cmp r2, #1
006555cc  86 00 00 9a                                      bls #0x6557ec
006555d0  04 10 9d e5                                      ldr r1, [sp, #4]
006555d4  01 20 42 e2                                      sub r2, r2, #1
006555d8  1f 30 c3 e3                                      bic r3, r3, #0x1f
006555dc  03 30 82 e1                                      orr r3, r2, r3
006555e0  13 30 c1 e5                                      strb r3, [r1, #0x13]
006555e4  24 80 8d e2                                      add r8, sp, #0x24
006555e8  00 40 a0 e3                                      mov r4, #0
006555ec  08 00 a0 e1                                      mov r0, r8
006555f0  09 10 a0 e1                                      mov r1, sb
006555f4  24 40 8d e5                                      str r4, [sp, #0x24]
006555f8  28 40 8d e5                                      str r4, [sp, #0x28]
006555fc  5c ff ff eb                                      bl #0x655374
00655600  0c 10 db e5                                      ldrb r1, [fp, #0xc]
00655604  1c 00 8d e2                                      add r0, sp, #0x1c
00655608  1c 40 8d e5                                      str r4, [sp, #0x1c]
0065560c  01 10 81 e2                                      add r1, r1, #1
00655610  71 10 ef e6                                      uxtb r1, r1
00655614  20 40 8d e5                                      str r4, [sp, #0x20]
00655618  01 12 89 e0                                      add r1, sb, r1, lsl #4
0065561c  54 ff ff eb                                      bl #0x655374
00655620  10 10 89 e2                                      add r1, sb, #0x10
00655624  14 00 8d e2                                      add r0, sp, #0x14
00655628  18 40 8d e5                                      str r4, [sp, #0x18]
0065562c  14 40 8d e5                                      str r4, [sp, #0x14]
00655630  75 ff ff eb                                      bl #0x65540c
00655634  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00655638  2c 00 8d e2                                      add r0, sp, #0x2c
0065563c  00 30 93 e5                                      ldr r3, [r3]
00655640  04 00 53 e1                                      cmp r3, r4
00655644  2c 30 8d e5                                      str r3, [sp, #0x2c]
00655648  00 20 93 15                                      ldrne r2, [r3]
0065564c  01 20 82 12                                      addne r2, r2, #1
00655650  00 20 83 15                                      strne r2, [r3]
00655654  63 ed f2 eb                                      bl #0x310be8
00655658  00 30 9a e5                                      ldr r3, [sl]
0065565c  0a 00 a0 e1                                      mov r0, sl
00655660  0f e0 a0 e1                                      mov lr, pc
00655664  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00655668  3c 32 9f e5                                      ldr r3, [pc, #0x23c]
0065566c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00655670  03 30 92 e7                                      ldr r3, [r2, r3]
00655674  00 00 83 e5                                      str r0, [r3]
00655678  24 60 9a e5                                      ldr r6, [sl, #0x24]
0065567c  28 b0 9a e5                                      ldr fp, [sl, #0x28]
00655680  0b 00 56 e1                                      cmp r6, fp
00655684  16 00 00 0a                                      beq #0x6556e4
00655688  00 90 a0 e3                                      mov sb, #0
0065568c  0a 00 a0 e1                                      mov r0, sl
00655690  06 10 a0 e1                                      mov r1, r6
00655694  fa e4 ff eb                                      bl #0x64ea84
00655698  00 30 9d e5                                      ldr r3, [sp]
0065569c  08 70 93 e5                                      ldr r7, [r3, #8]
006556a0  00 00 57 e3                                      cmp r7, #0
006556a4  0b 00 00 0a                                      beq #0x6556d8
006556a8  09 50 a0 e1                                      mov r5, sb
006556ac  00 40 a0 e3                                      mov r4, #0
006556b0  05 10 a0 e1                                      mov r1, r5
006556b4  04 20 a0 e1                                      mov r2, r4
006556b8  06 00 a0 e1                                      mov r0, r6
006556bc  01 40 84 e2                                      add r4, r4, #1
006556c0  08 30 a0 e1                                      mov r3, r8
006556c4  ea db ff eb                                      bl #0x64c674
006556c8  07 00 54 e1                                      cmp r4, r7
006556cc  01 50 85 e2                                      add r5, r5, #1
006556d0  f6 ff ff 1a                                      bne #0x6556b0
006556d4  04 90 89 e0                                      add sb, sb, r4
006556d8  64 60 86 e2                                      add r6, r6, #0x64
006556dc  0b 00 56 e1                                      cmp r6, fp
006556e0  e9 ff ff 1a                                      bne #0x65568c
006556e4  18 30 9d e5                                      ldr r3, [sp, #0x18]
006556e8  00 00 53 e3                                      cmp r3, #0
006556ec  0c 00 00 0a                                      beq #0x655724
006556f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006556f4  00 40 93 e5                                      ldr r4, [r3]
006556f8  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006556fc  1f 20 03 e2                                      and r2, r3, #0x1f
00655700  01 00 52 e3                                      cmp r2, #1
00655704  2c 00 00 9a                                      bls #0x6557bc
00655708  01 20 42 e2                                      sub r2, r2, #1
0065570c  1f 30 c3 e3                                      bic r3, r3, #0x1f
00655710  03 30 82 e1                                      orr r3, r2, r3
00655714  13 30 c4 e5                                      strb r3, [r4, #0x13]
00655718  00 30 a0 e3                                      mov r3, #0
0065571c  18 30 8d e5                                      str r3, [sp, #0x18]
00655720  14 30 8d e5                                      str r3, [sp, #0x14]
00655724  20 30 9d e5                                      ldr r3, [sp, #0x20]
00655728  00 00 53 e3                                      cmp r3, #0
0065572c  0c 00 00 0a                                      beq #0x655764
00655730  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00655734  00 40 93 e5                                      ldr r4, [r3]
00655738  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0065573c  1f 20 03 e2                                      and r2, r3, #0x1f
00655740  01 00 52 e3                                      cmp r2, #1
00655744  22 00 00 9a                                      bls #0x6557d4
00655748  01 20 42 e2                                      sub r2, r2, #1
0065574c  1f 30 c3 e3                                      bic r3, r3, #0x1f
00655750  03 30 82 e1                                      orr r3, r2, r3
00655754  13 30 c4 e5                                      strb r3, [r4, #0x13]
00655758  00 30 a0 e3                                      mov r3, #0
0065575c  20 30 8d e5                                      str r3, [sp, #0x20]
00655760  1c 30 8d e5                                      str r3, [sp, #0x1c]
00655764  28 30 9d e5                                      ldr r3, [sp, #0x28]
00655768  00 00 53 e3                                      cmp r3, #0
0065576c  0c 00 00 0a                                      beq #0x6557a4
00655770  24 30 9d e5                                      ldr r3, [sp, #0x24]
00655774  00 40 93 e5                                      ldr r4, [r3]
00655778  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0065577c  1f 20 03 e2                                      and r2, r3, #0x1f
00655780  01 00 52 e3                                      cmp r2, #1
00655784  28 00 00 9a                                      bls #0x65582c
00655788  01 20 42 e2                                      sub r2, r2, #1
0065578c  1f 30 c3 e3                                      bic r3, r3, #0x1f
00655790  03 30 82 e1                                      orr r3, r2, r3
00655794  13 30 c4 e5                                      strb r3, [r4, #0x13]
00655798  00 30 a0 e3                                      mov r3, #0
0065579c  28 30 8d e5                                      str r3, [sp, #0x28]
006557a0  24 30 8d e5                                      str r3, [sp, #0x24]
006557a4  04 00 9d e5                                      ldr r0, [sp, #4]
006557a8  75 1f f3 eb                                      bl #0x31d584
006557ac  08 00 9d e5                                      ldr r0, [sp, #8]
006557b0  73 1f f3 eb                                      bl #0x31d584
006557b4  34 d0 8d e2                                      add sp, sp, #0x34
006557b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006557bc  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006557c0  20 00 13 e3                                      tst r3, #0x20
006557c4  23 00 00 1a                                      bne #0x655858
006557c8  00 30 a0 e3                                      mov r3, #0
006557cc  13 30 c4 e5                                      strb r3, [r4, #0x13]
006557d0  d0 ff ff ea                                      b #0x655718
006557d4  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006557d8  20 00 13 e3                                      tst r3, #0x20
006557dc  18 00 00 1a                                      bne #0x655844
006557e0  00 30 a0 e3                                      mov r3, #0
006557e4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006557e8  da ff ff ea                                      b #0x655758
006557ec  04 20 9d e5                                      ldr r2, [sp, #4]
006557f0  12 30 d2 e5                                      ldrb r3, [r2, #0x12]
006557f4  20 00 13 e3                                      tst r3, #0x20
006557f8  20 00 00 1a                                      bne #0x655880
006557fc  04 10 9d e5                                      ldr r1, [sp, #4]
00655800  00 30 a0 e3                                      mov r3, #0
00655804  13 30 c1 e5                                      strb r3, [r1, #0x13]
00655808  75 ff ff ea                                      b #0x6555e4
0065580c  08 20 9d e5                                      ldr r2, [sp, #8]
00655810  12 30 d2 e5                                      ldrb r3, [r2, #0x12]
00655814  20 00 13 e3                                      tst r3, #0x20
00655818  13 00 00 1a                                      bne #0x65586c
0065581c  08 10 9d e5                                      ldr r1, [sp, #8]
00655820  00 30 a0 e3                                      mov r3, #0
00655824  13 30 c1 e5                                      strb r3, [r1, #0x13]
00655828  63 ff ff ea                                      b #0x6555bc
0065582c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00655830  20 00 13 e3                                      tst r3, #0x20
00655834  16 00 00 1a                                      bne #0x655894
00655838  00 30 a0 e3                                      mov r3, #0
0065583c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00655840  d4 ff ff ea                                      b #0x655798
00655844  00 30 94 e5                                      ldr r3, [r4]
00655848  04 00 a0 e1                                      mov r0, r4
0065584c  0f e0 a0 e1                                      mov lr, pc
00655850  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00655854  e1 ff ff ea                                      b #0x6557e0
00655858  00 30 94 e5                                      ldr r3, [r4]
0065585c  04 00 a0 e1                                      mov r0, r4
00655860  0f e0 a0 e1                                      mov lr, pc
00655864  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00655868  d6 ff ff ea                                      b #0x6557c8
0065586c  00 30 92 e5                                      ldr r3, [r2]
00655870  02 00 a0 e1                                      mov r0, r2
00655874  0f e0 a0 e1                                      mov lr, pc
00655878  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0065587c  e6 ff ff ea                                      b #0x65581c
00655880  00 30 92 e5                                      ldr r3, [r2]
00655884  02 00 a0 e1                                      mov r0, r2
00655888  0f e0 a0 e1                                      mov lr, pc
0065588c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00655890  d9 ff ff ea                                      b #0x6557fc
00655894  00 30 94 e5                                      ldr r3, [r4]
00655898  04 00 a0 e1                                      mov r0, r4
0065589c  0f e0 a0 e1                                      mov lr, pc
006558a0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006558a4  e3 ff ff ea                                      b #0x655838
; mapping-symbol data/literal pool
006558a8  b4 f5 33 00 58 0f 00 00                          .byte 0xb4, 0xf5, 0x33, 0x00, 0x58, 0x0f, 0x00, 0x00

; FUNCTION 0x006559b0, declared_size=1708, range_size=1708, mode=arm
; class-group: void glitch::video::CParticleSystemBaker<glitch::ps::SParticle>
; alias: _ZN6glitch5video20CParticleSystemBakerINS_2ps9SParticleEE4bakeINS2_21PSBillboardColorBakerIS3_EENS2_22PSBillboardNormalBakerIS3_EENS2_24PSBillboardPositionBakerIS3_EENS2_25PSBillboardTexCoordsBakerIS3_EENS2_27PSNullShaderParametersBakerEEEvPKNS2_16IParticleContextIS3_EEPKNS0_14CVertexStreamsEPSJ_PKNS_4core8CMatrix4IfEERKN5boost13intrusive_ptrINS0_9CMaterialEEE
; demangled: void glitch::video::CParticleSystemBaker<glitch::ps::SParticle>::bake<glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>, glitch::ps::PSNullShaderParametersBaker>(glitch::ps::IParticleContext<glitch::ps::SParticle> const*, glitch::video::CVertexStreams const*, glitch::video::CVertexStreams*, glitch::core::CMatrix4<float> const*, boost::intrusive_ptr<glitch::video::CMaterial> const&)
; decoder-mode: arm
006559b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006559b4  03 b0 a0 e1                                      mov fp, r3
006559b8  14 00 93 e5                                      ldr r0, [r3, #0x14]
006559bc  80 36 9f e5                                      ldr r3, [pc, #0x680]
006559c0  74 d0 4d e2                                      sub sp, sp, #0x74
006559c4  2c 20 8d e5                                      str r2, [sp, #0x2c]
006559c8  03 30 8f e0                                      add r3, pc, r3
006559cc  1c 30 8d e5                                      str r3, [sp, #0x1c]
006559d0  4c 00 8d e5                                      str r0, [sp, #0x4c]
006559d4  28 10 8d e5                                      str r1, [sp, #0x28]
006559d8  00 00 50 e3                                      cmp r0, #0
006559dc  04 30 90 15                                      ldrne r3, [r0, #4]
006559e0  14 a0 8b e2                                      add sl, fp, #0x14
006559e4  be 40 da e1                                      ldrh r4, [sl, #0xe]
006559e8  01 30 83 12                                      addne r3, r3, #1
006559ec  98 90 9d e5                                      ldr sb, [sp, #0x98]
006559f0  04 30 80 15                                      strne r3, [r0, #4]
006559f4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006559f8  14 10 91 e5                                      ldr r1, [r1, #0x14]
006559fc  00 00 51 e3                                      cmp r1, #0
00655a00  01 20 a0 11                                      movne r2, r1
00655a04  48 10 8d e5                                      str r1, [sp, #0x48]
00655a08  04 30 92 15                                      ldrne r3, [r2, #4]
00655a0c  02 10 a0 e3                                      mov r1, #2
00655a10  01 30 83 12                                      addne r3, r3, #1
00655a14  04 30 82 15                                      strne r3, [r2, #4]
00655a18  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00655a1c  f3 2f fd eb                                      bl #0x5a19f0
00655a20  00 10 a0 e3                                      mov r1, #0
00655a24  00 50 a0 e1                                      mov r5, r0
00655a28  48 00 9d e5                                      ldr r0, [sp, #0x48]
00655a2c  2a 30 fd eb                                      bl #0x5a1adc
00655a30  28 30 9d e5                                      ldr r3, [sp, #0x28]
00655a34  00 80 a0 e1                                      mov r8, r0
00655a38  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00655a3c  28 20 93 e5                                      ldr r2, [r3, #0x28]
00655a40  24 30 93 e5                                      ldr r3, [r3, #0x24]
00655a44  08 60 90 e5                                      ldr r6, [r0, #8]
00655a48  02 30 63 e0                                      rsb r3, r3, r2
00655a4c  63 00 53 e3                                      cmp r3, #0x63
00655a50  96 04 06 e0                                      mul r6, r6, r4
00655a54  12 00 00 da                                      ble #0x655aa4
00655a58  0c a0 8d e5                                      str sl, [sp, #0xc]
00655a5c  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00655a60  29 7c 05 e3                                      movw r7, #0x5c29
00655a64  8f 72 4c e3                                      movt r7, #0xc28f
00655a68  00 40 a0 e3                                      mov r4, #0
00655a6c  05 00 a0 e1                                      mov r0, r5
00655a70  06 20 a0 e1                                      mov r2, r6
00655a74  08 10 a0 e1                                      mov r1, r8
00655a78  7a e3 f2 eb                                      bl #0x30e868
00655a7c  28 20 9a e5                                      ldr r2, [sl, #0x28]
00655a80  24 30 9a e5                                      ldr r3, [sl, #0x24]
00655a84  01 40 84 e2                                      add r4, r4, #1
00655a88  06 50 85 e0                                      add r5, r5, r6
00655a8c  02 30 63 e0                                      rsb r3, r3, r2
00655a90  43 31 a0 e1                                      asr r3, r3, #2
00655a94  97 03 03 e0                                      mul r3, r7, r3
00655a98  03 00 54 e1                                      cmp r4, r3
00655a9c  f2 ff ff ba                                      blt #0x655a6c
00655aa0  0c a0 9d e5                                      ldr sl, [sp, #0xc]
00655aa4  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00655aa8  13 30 d1 e5                                      ldrb r3, [r1, #0x13]
00655aac  1f 20 03 e2                                      and r2, r3, #0x1f
00655ab0  01 00 52 e3                                      cmp r2, #1
00655ab4  30 01 00 9a                                      bls #0x655f7c
00655ab8  01 20 42 e2                                      sub r2, r2, #1
00655abc  1f 30 c3 e3                                      bic r3, r3, #0x1f
00655ac0  03 30 82 e1                                      orr r3, r2, r3
00655ac4  13 30 c1 e5                                      strb r3, [r1, #0x13]
00655ac8  48 10 9d e5                                      ldr r1, [sp, #0x48]
00655acc  13 30 d1 e5                                      ldrb r3, [r1, #0x13]
00655ad0  1f 20 03 e2                                      and r2, r3, #0x1f
00655ad4  01 00 52 e3                                      cmp r2, #1
00655ad8  33 01 00 9a                                      bls #0x655fac
00655adc  01 20 42 e2                                      sub r2, r2, #1
00655ae0  1f 30 c3 e3                                      bic r3, r3, #0x1f
00655ae4  03 30 82 e1                                      orr r3, r2, r3
00655ae8  13 30 c1 e5                                      strb r3, [r1, #0x13]
00655aec  00 40 a0 e3                                      mov r4, #0
00655af0  64 00 8d e2                                      add r0, sp, #0x64
00655af4  0a 10 a0 e1                                      mov r1, sl
00655af8  64 40 8d e5                                      str r4, [sp, #0x64]
00655afc  68 40 8d e5                                      str r4, [sp, #0x68]
00655b00  1b fe ff eb                                      bl #0x655374
00655b04  0c 10 db e5                                      ldrb r1, [fp, #0xc]
00655b08  5c 00 8d e2                                      add r0, sp, #0x5c
00655b0c  5c 40 8d e5                                      str r4, [sp, #0x5c]
00655b10  01 10 81 e2                                      add r1, r1, #1
00655b14  71 10 ef e6                                      uxtb r1, r1
00655b18  60 40 8d e5                                      str r4, [sp, #0x60]
00655b1c  01 12 8a e0                                      add r1, sl, r1, lsl #4
00655b20  13 fe ff eb                                      bl #0x655374
00655b24  10 10 8a e2                                      add r1, sl, #0x10
00655b28  54 00 8d e2                                      add r0, sp, #0x54
00655b2c  58 40 8d e5                                      str r4, [sp, #0x58]
00655b30  54 40 8d e5                                      str r4, [sp, #0x54]
00655b34  34 fe ff eb                                      bl #0x65540c
00655b38  0a 20 a0 e1                                      mov r2, sl
00655b3c  10 30 9b e5                                      ldr r3, [fp, #0x10]
00655b40  12 10 a0 e3                                      mov r1, #0x12
00655b44  0b 00 a0 e1                                      mov r0, fp
00655b48  e8 2b fd eb                                      bl #0x5a0af0
00655b4c  20 00 8d e5                                      str r0, [sp, #0x20]
00655b50  05 10 a0 e3                                      mov r1, #5
00655b54  00 00 90 e5                                      ldr r0, [r0]
00655b58  a4 2f fd eb                                      bl #0x5a19f0
00655b5c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00655b60  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00655b64  04 20 91 e5                                      ldr r2, [r1, #4]
00655b68  00 30 93 e5                                      ldr r3, [r3]
00655b6c  02 20 80 e0                                      add r2, r0, r2
00655b70  04 00 53 e1                                      cmp r3, r4
00655b74  24 20 8d e5                                      str r2, [sp, #0x24]
00655b78  6c 30 8d e5                                      str r3, [sp, #0x6c]
00655b7c  00 20 93 15                                      ldrne r2, [r3]
00655b80  6c 00 8d e2                                      add r0, sp, #0x6c
00655b84  01 20 82 12                                      addne r2, r2, #1
00655b88  00 20 83 15                                      strne r2, [r3]
00655b8c  b4 24 9f e5                                      ldr r2, [pc, #0x4b4]
00655b90  38 20 8d e5                                      str r2, [sp, #0x38]
00655b94  13 ec f2 eb                                      bl #0x310be8
00655b98  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00655b9c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00655ba0  08 20 99 e5                                      ldr r2, [sb, #8]
00655ba4  18 e0 99 e5                                      ldr lr, [sb, #0x18]
00655ba8  28 c0 99 e5                                      ldr ip, [sb, #0x28]
00655bac  00 30 91 e7                                      ldr r3, [r1, r0]
00655bb0  02 21 82 e2                                      add r2, r2, #0x80000000
00655bb4  02 e1 8e e2                                      add lr, lr, #0x80000000
00655bb8  02 c1 8c e2                                      add ip, ip, #0x80000000
00655bbc  00 20 83 e5                                      str r2, [r3]
00655bc0  08 c0 83 e5                                      str ip, [r3, #8]
00655bc4  04 e0 83 e5                                      str lr, [r3, #4]
00655bc8  09 10 a0 e1                                      mov r1, sb
00655bcc  28 00 9d e5                                      ldr r0, [sp, #0x28]
00655bd0  40 e0 ff eb                                      bl #0x64dcd8
00655bd4  28 20 9d e5                                      ldr r2, [sp, #0x28]
00655bd8  24 50 92 e5                                      ldr r5, [r2, #0x24]
00655bdc  28 30 92 e5                                      ldr r3, [r2, #0x28]
00655be0  03 00 55 e1                                      cmp r5, r3
00655be4  30 30 8d e5                                      str r3, [sp, #0x30]
00655be8  88 00 00 0a                                      beq #0x655e10
00655bec  58 04 9f e5                                      ldr r0, [pc, #0x458]
00655bf0  58 14 9f e5                                      ldr r1, [pc, #0x458]
00655bf4  58 24 9f e5                                      ldr r2, [pc, #0x458]
00655bf8  58 34 9f e5                                      ldr r3, [pc, #0x458]
00655bfc  34 00 8d e5                                      str r0, [sp, #0x34]
00655c00  3c 10 8d e5                                      str r1, [sp, #0x3c]
00655c04  40 20 8d e5                                      str r2, [sp, #0x40]
00655c08  44 30 8d e5                                      str r3, [sp, #0x44]
00655c0c  00 40 a0 e3                                      mov r4, #0
00655c10  28 00 9d e5                                      ldr r0, [sp, #0x28]
00655c14  05 10 a0 e1                                      mov r1, r5
00655c18  6e a9 01 eb                                      bl #0x6c01d8
00655c1c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00655c20  34 00 9d e5                                      ldr r0, [sp, #0x34]
00655c24  04 20 a0 e3                                      mov r2, #4
00655c28  00 70 91 e7                                      ldr r7, [r1, r0]
00655c2c  18 10 85 e2                                      add r1, r5, #0x18
00655c30  07 00 a0 e1                                      mov r0, r7
00655c34  0b e3 f2 eb                                      bl #0x30e868
00655c38  28 00 9d e5                                      ldr r0, [sp, #0x28]
00655c3c  05 10 a0 e1                                      mov r1, r5
00655c40  7c a9 01 eb                                      bl #0x6c0238
00655c44  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00655c48  08 30 92 e5                                      ldr r3, [r2, #8]
00655c4c  00 00 53 e3                                      cmp r3, #0
00655c50  6a 00 00 0a                                      beq #0x655e00
00655c54  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00655c58  40 20 9d e5                                      ldr r2, [sp, #0x40]
00655c5c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00655c60  03 30 84 e0                                      add r3, r4, r3
00655c64  02 20 91 e7                                      ldr r2, [r1, r2]
00655c68  00 60 91 e7                                      ldr r6, [r1, r0]
00655c6c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00655c70  0c 20 8d e5                                      str r2, [sp, #0xc]
00655c74  44 20 9d e5                                      ldr r2, [sp, #0x44]
00655c78  00 a0 91 e7                                      ldr sl, [r1, r0]
00655c7c  18 70 8d e5                                      str r7, [sp, #0x18]
00655c80  02 20 91 e7                                      ldr r2, [r1, r2]
00655c84  14 30 8d e5                                      str r3, [sp, #0x14]
00655c88  00 80 a0 e3                                      mov r8, #0
00655c8c  10 20 8d e5                                      str r2, [sp, #0x10]
00655c90  06 70 a0 e1                                      mov r7, r6
00655c94  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00655c98  00 00 95 e5                                      ldr r0, [r5]
00655c9c  44 90 95 e5                                      ldr sb, [r5, #0x44]
00655ca0  00 10 93 e5                                      ldr r1, [r3]
00655ca4  be e3 f2 eb                                      bl #0x30eba4
00655ca8  30 10 96 e5                                      ldr r1, [r6, #0x30]
00655cac  00 b0 a0 e1                                      mov fp, r0
00655cb0  09 00 a0 e1                                      mov r0, sb
00655cb4  2c e4 f2 eb                                      bl #0x30ed6c
00655cb8  00 10 a0 e1                                      mov r1, r0
00655cbc  0b 00 a0 e1                                      mov r0, fp
00655cc0  b7 e3 f2 eb                                      bl #0x30eba4
00655cc4  00 b0 a0 e1                                      mov fp, r0
00655cc8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00655ccc  04 10 90 e5                                      ldr r1, [r0, #4]
00655cd0  04 00 95 e5                                      ldr r0, [r5, #4]
00655cd4  b2 e3 f2 eb                                      bl #0x30eba4
00655cd8  34 10 96 e5                                      ldr r1, [r6, #0x34]
00655cdc  00 30 a0 e1                                      mov r3, r0
00655ce0  09 00 a0 e1                                      mov r0, sb
00655ce4  08 30 8d e5                                      str r3, [sp, #8]
00655ce8  1f e4 f2 eb                                      bl #0x30ed6c
00655cec  08 30 9d e5                                      ldr r3, [sp, #8]
00655cf0  00 10 a0 e1                                      mov r1, r0
00655cf4  03 00 a0 e1                                      mov r0, r3
00655cf8  a9 e3 f2 eb                                      bl #0x30eba4
00655cfc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00655d00  00 20 a0 e1                                      mov r2, r0
00655d04  08 00 95 e5                                      ldr r0, [r5, #8]
00655d08  08 10 93 e5                                      ldr r1, [r3, #8]
00655d0c  04 20 8d e5                                      str r2, [sp, #4]
00655d10  a3 e3 f2 eb                                      bl #0x30eba4
00655d14  38 10 96 e5                                      ldr r1, [r6, #0x38]
00655d18  00 30 a0 e1                                      mov r3, r0
00655d1c  09 00 a0 e1                                      mov r0, sb
00655d20  08 30 8d e5                                      str r3, [sp, #8]
00655d24  10 e4 f2 eb                                      bl #0x30ed6c
00655d28  08 30 9d e5                                      ldr r3, [sp, #8]
00655d2c  00 10 a0 e1                                      mov r1, r0
00655d30  0c 60 86 e2                                      add r6, r6, #0xc
00655d34  03 00 a0 e1                                      mov r0, r3
00655d38  99 e3 f2 eb                                      bl #0x30eba4
00655d3c  68 00 87 e5                                      str r0, [r7, #0x68]
00655d40  04 20 9d e5                                      ldr r2, [sp, #4]
00655d44  60 b0 87 e5                                      str fp, [r7, #0x60]
00655d48  64 20 87 e5                                      str r2, [r7, #0x64]
00655d4c  64 30 9d e5                                      ldr r3, [sp, #0x64]
00655d50  68 20 9d e5                                      ldr r2, [sp, #0x68]
00655d54  10 00 9d e5                                      ldr r0, [sp, #0x10]
00655d58  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
00655d5c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00655d60  00 c0 88 e0                                      add ip, r8, r0
00655d64  93 04 03 e0                                      mul r3, r3, r4
00655d68  03 b0 82 e7                                      str fp, [r2, r3]
00655d6c  64 00 97 e5                                      ldr r0, [r7, #0x64]
00655d70  03 30 82 e0                                      add r3, r2, r3
00655d74  04 20 a0 e3                                      mov r2, #4
00655d78  04 00 83 e5                                      str r0, [r3, #4]
00655d7c  68 00 97 e5                                      ldr r0, [r7, #0x68]
00655d80  08 00 83 e5                                      str r0, [r3, #8]
00655d84  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00655d88  60 00 9d e5                                      ldr r0, [sp, #0x60]
00655d8c  00 e0 9a e5                                      ldr lr, [sl]
00655d90  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
00655d94  93 04 03 e0                                      mul r3, r3, r4
00655d98  03 e0 80 e7                                      str lr, [r0, r3]
00655d9c  04 e0 9a e5                                      ldr lr, [sl, #4]
00655da0  03 30 80 e0                                      add r3, r0, r3
00655da4  04 e0 83 e5                                      str lr, [r3, #4]
00655da8  08 00 9a e5                                      ldr r0, [sl, #8]
00655dac  08 00 83 e5                                      str r0, [r3, #8]
00655db0  10 30 9d e5                                      ldr r3, [sp, #0x10]
00655db4  58 00 9d e5                                      ldr r0, [sp, #0x58]
00655db8  03 e0 98 e7                                      ldr lr, [r8, r3]
00655dbc  54 30 9d e5                                      ldr r3, [sp, #0x54]
00655dc0  08 80 88 e2                                      add r8, r8, #8
00655dc4  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
00655dc8  93 04 03 e0                                      mul r3, r3, r4
00655dcc  03 e0 80 e7                                      str lr, [r0, r3]
00655dd0  04 c0 9c e5                                      ldr ip, [ip, #4]
00655dd4  03 30 80 e0                                      add r3, r0, r3
00655dd8  04 c0 83 e5                                      str ip, [r3, #4]
00655ddc  20 30 9d e5                                      ldr r3, [sp, #0x20]
00655de0  be 00 d3 e1                                      ldrh r0, [r3, #0xe]
00655de4  24 30 9d e5                                      ldr r3, [sp, #0x24]
00655de8  90 34 20 e0                                      mla r0, r0, r4, r3
00655dec  9d e2 f2 eb                                      bl #0x30e868
00655df0  14 00 9d e5                                      ldr r0, [sp, #0x14]
00655df4  01 40 84 e2                                      add r4, r4, #1
00655df8  00 00 54 e1                                      cmp r4, r0
00655dfc  a4 ff ff 1a                                      bne #0x655c94
00655e00  30 10 9d e5                                      ldr r1, [sp, #0x30]
00655e04  64 50 85 e2                                      add r5, r5, #0x64
00655e08  01 00 55 e1                                      cmp r5, r1
00655e0c  7f ff ff 1a                                      bne #0x655c10
00655e10  24 20 9d e5                                      ldr r2, [sp, #0x24]
00655e14  00 00 52 e3                                      cmp r2, #0
00655e18  09 00 00 0a                                      beq #0x655e44
00655e1c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00655e20  00 40 93 e5                                      ldr r4, [r3]
00655e24  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00655e28  1f 20 03 e2                                      and r2, r3, #0x1f
00655e2c  01 00 52 e3                                      cmp r2, #1
00655e30  4b 00 00 9a                                      bls #0x655f64
00655e34  01 20 42 e2                                      sub r2, r2, #1
00655e38  1f 30 c3 e3                                      bic r3, r3, #0x1f
00655e3c  03 30 82 e1                                      orr r3, r2, r3
00655e40  13 30 c4 e5                                      strb r3, [r4, #0x13]
00655e44  58 30 9d e5                                      ldr r3, [sp, #0x58]
00655e48  00 00 53 e3                                      cmp r3, #0
00655e4c  0c 00 00 0a                                      beq #0x655e84
00655e50  54 30 9d e5                                      ldr r3, [sp, #0x54]
00655e54  00 40 93 e5                                      ldr r4, [r3]
00655e58  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00655e5c  1f 20 03 e2                                      and r2, r3, #0x1f
00655e60  01 00 52 e3                                      cmp r2, #1
00655e64  38 00 00 9a                                      bls #0x655f4c
00655e68  01 20 42 e2                                      sub r2, r2, #1
00655e6c  1f 30 c3 e3                                      bic r3, r3, #0x1f
00655e70  03 30 82 e1                                      orr r3, r2, r3
00655e74  13 30 c4 e5                                      strb r3, [r4, #0x13]
00655e78  00 30 a0 e3                                      mov r3, #0
00655e7c  58 30 8d e5                                      str r3, [sp, #0x58]
00655e80  54 30 8d e5                                      str r3, [sp, #0x54]
00655e84  60 30 9d e5                                      ldr r3, [sp, #0x60]
00655e88  00 00 53 e3                                      cmp r3, #0
00655e8c  0c 00 00 0a                                      beq #0x655ec4
00655e90  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00655e94  00 40 93 e5                                      ldr r4, [r3]
00655e98  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00655e9c  1f 20 03 e2                                      and r2, r3, #0x1f
00655ea0  01 00 52 e3                                      cmp r2, #1
00655ea4  22 00 00 9a                                      bls #0x655f34
00655ea8  01 20 42 e2                                      sub r2, r2, #1
00655eac  1f 30 c3 e3                                      bic r3, r3, #0x1f
00655eb0  03 30 82 e1                                      orr r3, r2, r3
00655eb4  13 30 c4 e5                                      strb r3, [r4, #0x13]
00655eb8  00 30 a0 e3                                      mov r3, #0
00655ebc  60 30 8d e5                                      str r3, [sp, #0x60]
00655ec0  5c 30 8d e5                                      str r3, [sp, #0x5c]
00655ec4  68 30 9d e5                                      ldr r3, [sp, #0x68]
00655ec8  00 00 53 e3                                      cmp r3, #0
00655ecc  0c 00 00 0a                                      beq #0x655f04
00655ed0  64 30 9d e5                                      ldr r3, [sp, #0x64]
00655ed4  00 40 93 e5                                      ldr r4, [r3]
00655ed8  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00655edc  1f 20 03 e2                                      and r2, r3, #0x1f
00655ee0  01 00 52 e3                                      cmp r2, #1
00655ee4  0c 00 00 9a                                      bls #0x655f1c
00655ee8  01 20 42 e2                                      sub r2, r2, #1
00655eec  1f 30 c3 e3                                      bic r3, r3, #0x1f
00655ef0  03 30 82 e1                                      orr r3, r2, r3
00655ef4  13 30 c4 e5                                      strb r3, [r4, #0x13]
00655ef8  00 30 a0 e3                                      mov r3, #0
00655efc  68 30 8d e5                                      str r3, [sp, #0x68]
00655f00  64 30 8d e5                                      str r3, [sp, #0x64]
00655f04  48 00 9d e5                                      ldr r0, [sp, #0x48]
00655f08  9d 1d f3 eb                                      bl #0x31d584
00655f0c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00655f10  9b 1d f3 eb                                      bl #0x31d584
00655f14  74 d0 8d e2                                      add sp, sp, #0x74
00655f18  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00655f1c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00655f20  20 00 13 e3                                      tst r3, #0x20
00655f24  41 00 00 1a                                      bne #0x656030
00655f28  00 30 a0 e3                                      mov r3, #0
00655f2c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00655f30  f0 ff ff ea                                      b #0x655ef8
00655f34  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00655f38  20 00 13 e3                                      tst r3, #0x20
00655f3c  2c 00 00 1a                                      bne #0x655ff4
00655f40  00 30 a0 e3                                      mov r3, #0
00655f44  13 30 c4 e5                                      strb r3, [r4, #0x13]
00655f48  da ff ff ea                                      b #0x655eb8
00655f4c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00655f50  20 00 13 e3                                      tst r3, #0x20
00655f54  21 00 00 1a                                      bne #0x655fe0
00655f58  00 30 a0 e3                                      mov r3, #0
00655f5c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00655f60  c4 ff ff ea                                      b #0x655e78
00655f64  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00655f68  20 00 13 e3                                      tst r3, #0x20
00655f6c  16 00 00 1a                                      bne #0x655fcc
00655f70  00 30 a0 e3                                      mov r3, #0
00655f74  13 30 c4 e5                                      strb r3, [r4, #0x13]
00655f78  b1 ff ff ea                                      b #0x655e44
00655f7c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00655f80  12 30 d2 e5                                      ldrb r3, [r2, #0x12]
00655f84  20 00 13 e3                                      tst r3, #0x20
00655f88  23 00 00 1a                                      bne #0x65601c
00655f8c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00655f90  00 30 a0 e3                                      mov r3, #0
00655f94  13 30 c0 e5                                      strb r3, [r0, #0x13]
00655f98  48 10 9d e5                                      ldr r1, [sp, #0x48]
00655f9c  13 30 d1 e5                                      ldrb r3, [r1, #0x13]
00655fa0  1f 20 03 e2                                      and r2, r3, #0x1f
00655fa4  01 00 52 e3                                      cmp r2, #1
00655fa8  cb fe ff 8a                                      bhi #0x655adc
00655fac  48 20 9d e5                                      ldr r2, [sp, #0x48]
00655fb0  12 30 d2 e5                                      ldrb r3, [r2, #0x12]
00655fb4  20 00 13 e3                                      tst r3, #0x20
00655fb8  12 00 00 1a                                      bne #0x656008
00655fbc  48 00 9d e5                                      ldr r0, [sp, #0x48]
00655fc0  00 30 a0 e3                                      mov r3, #0
00655fc4  13 30 c0 e5                                      strb r3, [r0, #0x13]
00655fc8  c7 fe ff ea                                      b #0x655aec
00655fcc  00 30 94 e5                                      ldr r3, [r4]
00655fd0  04 00 a0 e1                                      mov r0, r4
00655fd4  0f e0 a0 e1                                      mov lr, pc
00655fd8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00655fdc  e3 ff ff ea                                      b #0x655f70
00655fe0  00 30 94 e5                                      ldr r3, [r4]
00655fe4  04 00 a0 e1                                      mov r0, r4
00655fe8  0f e0 a0 e1                                      mov lr, pc
00655fec  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00655ff0  d8 ff ff ea                                      b #0x655f58
00655ff4  00 30 94 e5                                      ldr r3, [r4]
00655ff8  04 00 a0 e1                                      mov r0, r4
00655ffc  0f e0 a0 e1                                      mov lr, pc
00656000  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00656004  cd ff ff ea                                      b #0x655f40
00656008  00 30 92 e5                                      ldr r3, [r2]
0065600c  02 00 a0 e1                                      mov r0, r2
00656010  0f e0 a0 e1                                      mov lr, pc
00656014  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00656018  e7 ff ff ea                                      b #0x655fbc
0065601c  00 30 92 e5                                      ldr r3, [r2]
00656020  02 00 a0 e1                                      mov r0, r2
00656024  0f e0 a0 e1                                      mov lr, pc
00656028  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0065602c  d6 ff ff ea                                      b #0x655f8c
00656030  00 30 94 e5                                      ldr r3, [r4]
00656034  04 00 a0 e1                                      mov r0, r4
00656038  0f e0 a0 e1                                      mov lr, pc
0065603c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00656040  b8 ff ff ea                                      b #0x655f28
; mapping-symbol data/literal pool
00656044  c8 f0 33 00 ac 09 00 00 70 23 00 00 14 40 00 00  .byte 0xc8, 0xf0, 0x33, 0x00, 0xac, 0x09, 0x00, 0x00, 0x70, 0x23, 0x00, 0x00, 0x14, 0x40, 0x00, 0x00
00656054  1c 3c 00 00 40 26 00 00                          .byte 0x1c, 0x3c, 0x00, 0x00, 0x40, 0x26, 0x00, 0x00
