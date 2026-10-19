; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006403f8, declared_size=1036, range_size=1036, mode=arm
; class-group: void glitch::video::CParticleSystemBaker<glitch::ps::GNPSParticle>
; alias: _ZN6glitch5video20CParticleSystemBakerINS_2ps12GNPSParticleEE4bakeINS2_16PSNullColorBakerIS3_EENS2_20PSGenericNormalBakerIS3_EENS2_22PSGenericPositionBakerIS3_EENS2_23PSGenericTexCoordsBakerIS3_EENS2_27PSNullShaderParametersBakerEEEvPKNS2_16IParticleContextIS3_EEPKNS0_14CVertexStreamsEPSJ_PKNS_4core8CMatrix4IfEERKN5boost13intrusive_ptrINS0_9CMaterialEEE
; demangled: void glitch::video::CParticleSystemBaker<glitch::ps::GNPSParticle>::bake<glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle>, glitch::ps::PSNullShaderParametersBaker>(glitch::ps::IParticleContext<glitch::ps::GNPSParticle> const*, glitch::video::CVertexStreams const*, glitch::video::CVertexStreams*, glitch::core::CMatrix4<float> const*, boost::intrusive_ptr<glitch::video::CMaterial> const&)
; decoder-mode: arm
006403f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006403fc  03 b0 a0 e1                                      mov fp, r3
00640400  14 30 93 e5                                      ldr r3, [r3, #0x14]
00640404  34 d0 4d e2                                      sub sp, sp, #0x34
00640408  01 a0 a0 e1                                      mov sl, r1
0064040c  08 30 8d e5                                      str r3, [sp, #8]
00640410  e4 33 9f e5                                      ldr r3, [pc, #0x3e4]
00640414  00 20 8d e5                                      str r2, [sp]
00640418  14 90 8b e2                                      add sb, fp, #0x14
0064041c  0c 30 8d e5                                      str r3, [sp, #0xc]
00640420  08 30 9d e5                                      ldr r3, [sp, #8]
00640424  00 00 53 e3                                      cmp r3, #0
00640428  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064042c  08 10 9d 15                                      ldrne r1, [sp, #8]
00640430  03 30 8f e0                                      add r3, pc, r3
00640434  0c 30 8d e5                                      str r3, [sp, #0xc]
00640438  04 30 91 15                                      ldrne r3, [r1, #4]
0064043c  be 40 d9 e1                                      ldrh r4, [sb, #0xe]
00640440  01 30 83 12                                      addne r3, r3, #1
00640444  04 30 81 15                                      strne r3, [r1, #4]
00640448  00 20 9d e5                                      ldr r2, [sp]
0064044c  14 20 92 e5                                      ldr r2, [r2, #0x14]
00640450  00 00 52 e3                                      cmp r2, #0
00640454  02 10 a0 11                                      movne r1, r2
00640458  04 20 8d e5                                      str r2, [sp, #4]
0064045c  04 30 91 15                                      ldrne r3, [r1, #4]
00640460  01 30 83 12                                      addne r3, r3, #1
00640464  04 30 81 15                                      strne r3, [r1, #4]
00640468  08 00 9d e5                                      ldr r0, [sp, #8]
0064046c  02 10 a0 e3                                      mov r1, #2
00640470  5e 85 fd eb                                      bl #0x5a19f0
00640474  00 10 a0 e3                                      mov r1, #0
00640478  00 50 a0 e1                                      mov r5, r0
0064047c  04 00 9d e5                                      ldr r0, [sp, #4]
00640480  95 85 fd eb                                      bl #0x5a1adc
00640484  00 10 9d e5                                      ldr r1, [sp]
00640488  28 20 9a e5                                      ldr r2, [sl, #0x28]
0064048c  24 30 9a e5                                      ldr r3, [sl, #0x24]
00640490  08 60 91 e5                                      ldr r6, [r1, #8]
00640494  00 80 a0 e1                                      mov r8, r0
00640498  02 30 63 e0                                      rsb r3, r3, r2
0064049c  9b 00 53 e3                                      cmp r3, #0x9b
006404a0  96 04 06 e0                                      mul r6, r6, r4
006404a4  0f 00 00 da                                      ble #0x6404e8
006404a8  97 7f 06 e3                                      movw r7, #0x6f97
006404ac  f9 76 49 e3                                      movt r7, #0x96f9
006404b0  00 40 a0 e3                                      mov r4, #0
006404b4  05 00 a0 e1                                      mov r0, r5
006404b8  06 20 a0 e1                                      mov r2, r6
006404bc  08 10 a0 e1                                      mov r1, r8
006404c0  e8 38 f3 eb                                      bl #0x30e868
006404c4  28 20 9a e5                                      ldr r2, [sl, #0x28]
006404c8  24 30 9a e5                                      ldr r3, [sl, #0x24]
006404cc  01 40 84 e2                                      add r4, r4, #1
006404d0  06 50 85 e0                                      add r5, r5, r6
006404d4  02 30 63 e0                                      rsb r3, r3, r2
006404d8  43 31 a0 e1                                      asr r3, r3, #2
006404dc  97 03 03 e0                                      mul r3, r7, r3
006404e0  03 00 54 e1                                      cmp r4, r3
006404e4  f2 ff ff ba                                      blt #0x6404b4
006404e8  08 20 9d e5                                      ldr r2, [sp, #8]
006404ec  13 30 d2 e5                                      ldrb r3, [r2, #0x13]
006404f0  1f 20 03 e2                                      and r2, r3, #0x1f
006404f4  01 00 52 e3                                      cmp r2, #1
006404f8  98 00 00 9a                                      bls #0x640760
006404fc  08 10 9d e5                                      ldr r1, [sp, #8]
00640500  01 20 42 e2                                      sub r2, r2, #1
00640504  1f 30 c3 e3                                      bic r3, r3, #0x1f
00640508  03 30 82 e1                                      orr r3, r2, r3
0064050c  13 30 c1 e5                                      strb r3, [r1, #0x13]
00640510  04 20 9d e5                                      ldr r2, [sp, #4]
00640514  13 30 d2 e5                                      ldrb r3, [r2, #0x13]
00640518  1f 20 03 e2                                      and r2, r3, #0x1f
0064051c  01 00 52 e3                                      cmp r2, #1
00640520  86 00 00 9a                                      bls #0x640740
00640524  04 10 9d e5                                      ldr r1, [sp, #4]
00640528  01 20 42 e2                                      sub r2, r2, #1
0064052c  1f 30 c3 e3                                      bic r3, r3, #0x1f
00640530  03 30 82 e1                                      orr r3, r2, r3
00640534  13 30 c1 e5                                      strb r3, [r1, #0x13]
00640538  24 80 8d e2                                      add r8, sp, #0x24
0064053c  00 40 a0 e3                                      mov r4, #0
00640540  08 00 a0 e1                                      mov r0, r8
00640544  09 10 a0 e1                                      mov r1, sb
00640548  24 40 8d e5                                      str r4, [sp, #0x24]
0064054c  28 40 8d e5                                      str r4, [sp, #0x28]
00640550  5c ff ff eb                                      bl #0x6402c8
00640554  0c 10 db e5                                      ldrb r1, [fp, #0xc]
00640558  1c 00 8d e2                                      add r0, sp, #0x1c
0064055c  1c 40 8d e5                                      str r4, [sp, #0x1c]
00640560  01 10 81 e2                                      add r1, r1, #1
00640564  71 10 ef e6                                      uxtb r1, r1
00640568  20 40 8d e5                                      str r4, [sp, #0x20]
0064056c  01 12 89 e0                                      add r1, sb, r1, lsl #4
00640570  54 ff ff eb                                      bl #0x6402c8
00640574  10 10 89 e2                                      add r1, sb, #0x10
00640578  14 00 8d e2                                      add r0, sp, #0x14
0064057c  18 40 8d e5                                      str r4, [sp, #0x18]
00640580  14 40 8d e5                                      str r4, [sp, #0x14]
00640584  75 ff ff eb                                      bl #0x640360
00640588  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0064058c  2c 00 8d e2                                      add r0, sp, #0x2c
00640590  00 30 93 e5                                      ldr r3, [r3]
00640594  04 00 53 e1                                      cmp r3, r4
00640598  2c 30 8d e5                                      str r3, [sp, #0x2c]
0064059c  00 20 93 15                                      ldrne r2, [r3]
006405a0  01 20 82 12                                      addne r2, r2, #1
006405a4  00 20 83 15                                      strne r2, [r3]
006405a8  8e 41 f3 eb                                      bl #0x310be8
006405ac  00 30 9a e5                                      ldr r3, [sl]
006405b0  0a 00 a0 e1                                      mov r0, sl
006405b4  0f e0 a0 e1                                      mov lr, pc
006405b8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006405bc  3c 32 9f e5                                      ldr r3, [pc, #0x23c]
006405c0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006405c4  03 30 92 e7                                      ldr r3, [r2, r3]
006405c8  00 00 83 e5                                      str r0, [r3]
006405cc  24 60 9a e5                                      ldr r6, [sl, #0x24]
006405d0  28 b0 9a e5                                      ldr fp, [sl, #0x28]
006405d4  0b 00 56 e1                                      cmp r6, fp
006405d8  16 00 00 0a                                      beq #0x640638
006405dc  00 90 a0 e3                                      mov sb, #0
006405e0  0a 00 a0 e1                                      mov r0, sl
006405e4  06 10 a0 e1                                      mov r1, r6
006405e8  84 f0 ff eb                                      bl #0x63c800
006405ec  00 30 9d e5                                      ldr r3, [sp]
006405f0  08 70 93 e5                                      ldr r7, [r3, #8]
006405f4  00 00 57 e3                                      cmp r7, #0
006405f8  0b 00 00 0a                                      beq #0x64062c
006405fc  09 50 a0 e1                                      mov r5, sb
00640600  00 40 a0 e3                                      mov r4, #0
00640604  05 10 a0 e1                                      mov r1, r5
00640608  04 20 a0 e1                                      mov r2, r4
0064060c  06 00 a0 e1                                      mov r0, r6
00640610  01 40 84 e2                                      add r4, r4, #1
00640614  08 30 a0 e1                                      mov r3, r8
00640618  cd e0 ff eb                                      bl #0x638954
0064061c  07 00 54 e1                                      cmp r4, r7
00640620  01 50 85 e2                                      add r5, r5, #1
00640624  f6 ff ff 1a                                      bne #0x640604
00640628  04 90 89 e0                                      add sb, sb, r4
0064062c  9c 60 86 e2                                      add r6, r6, #0x9c
00640630  0b 00 56 e1                                      cmp r6, fp
00640634  e9 ff ff 1a                                      bne #0x6405e0
00640638  18 30 9d e5                                      ldr r3, [sp, #0x18]
0064063c  00 00 53 e3                                      cmp r3, #0
00640640  0c 00 00 0a                                      beq #0x640678
00640644  14 30 9d e5                                      ldr r3, [sp, #0x14]
00640648  00 40 93 e5                                      ldr r4, [r3]
0064064c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00640650  1f 20 03 e2                                      and r2, r3, #0x1f
00640654  01 00 52 e3                                      cmp r2, #1
00640658  2c 00 00 9a                                      bls #0x640710
0064065c  01 20 42 e2                                      sub r2, r2, #1
00640660  1f 30 c3 e3                                      bic r3, r3, #0x1f
00640664  03 30 82 e1                                      orr r3, r2, r3
00640668  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064066c  00 30 a0 e3                                      mov r3, #0
00640670  18 30 8d e5                                      str r3, [sp, #0x18]
00640674  14 30 8d e5                                      str r3, [sp, #0x14]
00640678  20 30 9d e5                                      ldr r3, [sp, #0x20]
0064067c  00 00 53 e3                                      cmp r3, #0
00640680  0c 00 00 0a                                      beq #0x6406b8
00640684  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00640688  00 40 93 e5                                      ldr r4, [r3]
0064068c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00640690  1f 20 03 e2                                      and r2, r3, #0x1f
00640694  01 00 52 e3                                      cmp r2, #1
00640698  22 00 00 9a                                      bls #0x640728
0064069c  01 20 42 e2                                      sub r2, r2, #1
006406a0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006406a4  03 30 82 e1                                      orr r3, r2, r3
006406a8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006406ac  00 30 a0 e3                                      mov r3, #0
006406b0  20 30 8d e5                                      str r3, [sp, #0x20]
006406b4  1c 30 8d e5                                      str r3, [sp, #0x1c]
006406b8  28 30 9d e5                                      ldr r3, [sp, #0x28]
006406bc  00 00 53 e3                                      cmp r3, #0
006406c0  0c 00 00 0a                                      beq #0x6406f8
006406c4  24 30 9d e5                                      ldr r3, [sp, #0x24]
006406c8  00 40 93 e5                                      ldr r4, [r3]
006406cc  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006406d0  1f 20 03 e2                                      and r2, r3, #0x1f
006406d4  01 00 52 e3                                      cmp r2, #1
006406d8  28 00 00 9a                                      bls #0x640780
006406dc  01 20 42 e2                                      sub r2, r2, #1
006406e0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006406e4  03 30 82 e1                                      orr r3, r2, r3
006406e8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006406ec  00 30 a0 e3                                      mov r3, #0
006406f0  28 30 8d e5                                      str r3, [sp, #0x28]
006406f4  24 30 8d e5                                      str r3, [sp, #0x24]
006406f8  04 00 9d e5                                      ldr r0, [sp, #4]
006406fc  a0 73 f3 eb                                      bl #0x31d584
00640700  08 00 9d e5                                      ldr r0, [sp, #8]
00640704  9e 73 f3 eb                                      bl #0x31d584
00640708  34 d0 8d e2                                      add sp, sp, #0x34
0064070c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00640710  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00640714  20 00 13 e3                                      tst r3, #0x20
00640718  23 00 00 1a                                      bne #0x6407ac
0064071c  00 30 a0 e3                                      mov r3, #0
00640720  13 30 c4 e5                                      strb r3, [r4, #0x13]
00640724  d0 ff ff ea                                      b #0x64066c
00640728  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0064072c  20 00 13 e3                                      tst r3, #0x20
00640730  18 00 00 1a                                      bne #0x640798
00640734  00 30 a0 e3                                      mov r3, #0
00640738  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064073c  da ff ff ea                                      b #0x6406ac
00640740  04 20 9d e5                                      ldr r2, [sp, #4]
00640744  12 30 d2 e5                                      ldrb r3, [r2, #0x12]
00640748  20 00 13 e3                                      tst r3, #0x20
0064074c  20 00 00 1a                                      bne #0x6407d4
00640750  04 10 9d e5                                      ldr r1, [sp, #4]
00640754  00 30 a0 e3                                      mov r3, #0
00640758  13 30 c1 e5                                      strb r3, [r1, #0x13]
0064075c  75 ff ff ea                                      b #0x640538
00640760  08 20 9d e5                                      ldr r2, [sp, #8]
00640764  12 30 d2 e5                                      ldrb r3, [r2, #0x12]
00640768  20 00 13 e3                                      tst r3, #0x20
0064076c  13 00 00 1a                                      bne #0x6407c0
00640770  08 10 9d e5                                      ldr r1, [sp, #8]
00640774  00 30 a0 e3                                      mov r3, #0
00640778  13 30 c1 e5                                      strb r3, [r1, #0x13]
0064077c  63 ff ff ea                                      b #0x640510
00640780  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00640784  20 00 13 e3                                      tst r3, #0x20
00640788  16 00 00 1a                                      bne #0x6407e8
0064078c  00 30 a0 e3                                      mov r3, #0
00640790  13 30 c4 e5                                      strb r3, [r4, #0x13]
00640794  d4 ff ff ea                                      b #0x6406ec
00640798  00 30 94 e5                                      ldr r3, [r4]
0064079c  04 00 a0 e1                                      mov r0, r4
006407a0  0f e0 a0 e1                                      mov lr, pc
006407a4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006407a8  e1 ff ff ea                                      b #0x640734
006407ac  00 30 94 e5                                      ldr r3, [r4]
006407b0  04 00 a0 e1                                      mov r0, r4
006407b4  0f e0 a0 e1                                      mov lr, pc
006407b8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006407bc  d6 ff ff ea                                      b #0x64071c
006407c0  00 30 92 e5                                      ldr r3, [r2]
006407c4  02 00 a0 e1                                      mov r0, r2
006407c8  0f e0 a0 e1                                      mov lr, pc
006407cc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006407d0  e6 ff ff ea                                      b #0x640770
006407d4  00 30 92 e5                                      ldr r3, [r2]
006407d8  02 00 a0 e1                                      mov r0, r2
006407dc  0f e0 a0 e1                                      mov lr, pc
006407e0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006407e4  d9 ff ff ea                                      b #0x640750
006407e8  00 30 94 e5                                      ldr r3, [r4]
006407ec  04 00 a0 e1                                      mov r0, r4
006407f0  0f e0 a0 e1                                      mov lr, pc
006407f4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006407f8  e3 ff ff ea                                      b #0x64078c
; mapping-symbol data/literal pool
006407fc  60 46 35 00 a8 3c 00 00                          .byte 0x60, 0x46, 0x35, 0x00, 0xa8, 0x3c, 0x00, 0x00

; FUNCTION 0x00640904, declared_size=1708, range_size=1708, mode=arm
; class-group: void glitch::video::CParticleSystemBaker<glitch::ps::GNPSParticle>
; alias: _ZN6glitch5video20CParticleSystemBakerINS_2ps12GNPSParticleEE4bakeINS2_21PSBillboardColorBakerIS3_EENS2_22PSBillboardNormalBakerIS3_EENS2_24PSBillboardPositionBakerIS3_EENS2_25PSBillboardTexCoordsBakerIS3_EENS2_27PSNullShaderParametersBakerEEEvPKNS2_16IParticleContextIS3_EEPKNS0_14CVertexStreamsEPSJ_PKNS_4core8CMatrix4IfEERKN5boost13intrusive_ptrINS0_9CMaterialEEE
; demangled: void glitch::video::CParticleSystemBaker<glitch::ps::GNPSParticle>::bake<glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>, glitch::ps::PSNullShaderParametersBaker>(glitch::ps::IParticleContext<glitch::ps::GNPSParticle> const*, glitch::video::CVertexStreams const*, glitch::video::CVertexStreams*, glitch::core::CMatrix4<float> const*, boost::intrusive_ptr<glitch::video::CMaterial> const&)
; decoder-mode: arm
00640904  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00640908  03 b0 a0 e1                                      mov fp, r3
0064090c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00640910  80 36 9f e5                                      ldr r3, [pc, #0x680]
00640914  74 d0 4d e2                                      sub sp, sp, #0x74
00640918  2c 20 8d e5                                      str r2, [sp, #0x2c]
0064091c  03 30 8f e0                                      add r3, pc, r3
00640920  1c 30 8d e5                                      str r3, [sp, #0x1c]
00640924  4c 00 8d e5                                      str r0, [sp, #0x4c]
00640928  28 10 8d e5                                      str r1, [sp, #0x28]
0064092c  00 00 50 e3                                      cmp r0, #0
00640930  04 30 90 15                                      ldrne r3, [r0, #4]
00640934  14 a0 8b e2                                      add sl, fp, #0x14
00640938  be 40 da e1                                      ldrh r4, [sl, #0xe]
0064093c  01 30 83 12                                      addne r3, r3, #1
00640940  98 90 9d e5                                      ldr sb, [sp, #0x98]
00640944  04 30 80 15                                      strne r3, [r0, #4]
00640948  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0064094c  14 10 91 e5                                      ldr r1, [r1, #0x14]
00640950  00 00 51 e3                                      cmp r1, #0
00640954  01 20 a0 11                                      movne r2, r1
00640958  48 10 8d e5                                      str r1, [sp, #0x48]
0064095c  04 30 92 15                                      ldrne r3, [r2, #4]
00640960  02 10 a0 e3                                      mov r1, #2
00640964  01 30 83 12                                      addne r3, r3, #1
00640968  04 30 82 15                                      strne r3, [r2, #4]
0064096c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00640970  1e 84 fd eb                                      bl #0x5a19f0
00640974  00 10 a0 e3                                      mov r1, #0
00640978  00 50 a0 e1                                      mov r5, r0
0064097c  48 00 9d e5                                      ldr r0, [sp, #0x48]
00640980  55 84 fd eb                                      bl #0x5a1adc
00640984  28 30 9d e5                                      ldr r3, [sp, #0x28]
00640988  00 80 a0 e1                                      mov r8, r0
0064098c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00640990  28 20 93 e5                                      ldr r2, [r3, #0x28]
00640994  24 30 93 e5                                      ldr r3, [r3, #0x24]
00640998  08 60 90 e5                                      ldr r6, [r0, #8]
0064099c  02 30 63 e0                                      rsb r3, r3, r2
006409a0  9b 00 53 e3                                      cmp r3, #0x9b
006409a4  96 04 06 e0                                      mul r6, r6, r4
006409a8  12 00 00 da                                      ble #0x6409f8
006409ac  0c a0 8d e5                                      str sl, [sp, #0xc]
006409b0  28 a0 9d e5                                      ldr sl, [sp, #0x28]
006409b4  97 7f 06 e3                                      movw r7, #0x6f97
006409b8  f9 76 49 e3                                      movt r7, #0x96f9
006409bc  00 40 a0 e3                                      mov r4, #0
006409c0  05 00 a0 e1                                      mov r0, r5
006409c4  06 20 a0 e1                                      mov r2, r6
006409c8  08 10 a0 e1                                      mov r1, r8
006409cc  a5 37 f3 eb                                      bl #0x30e868
006409d0  28 20 9a e5                                      ldr r2, [sl, #0x28]
006409d4  24 30 9a e5                                      ldr r3, [sl, #0x24]
006409d8  01 40 84 e2                                      add r4, r4, #1
006409dc  06 50 85 e0                                      add r5, r5, r6
006409e0  02 30 63 e0                                      rsb r3, r3, r2
006409e4  43 31 a0 e1                                      asr r3, r3, #2
006409e8  97 03 03 e0                                      mul r3, r7, r3
006409ec  03 00 54 e1                                      cmp r4, r3
006409f0  f2 ff ff ba                                      blt #0x6409c0
006409f4  0c a0 9d e5                                      ldr sl, [sp, #0xc]
006409f8  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
006409fc  13 30 d1 e5                                      ldrb r3, [r1, #0x13]
00640a00  1f 20 03 e2                                      and r2, r3, #0x1f
00640a04  01 00 52 e3                                      cmp r2, #1
00640a08  30 01 00 9a                                      bls #0x640ed0
00640a0c  01 20 42 e2                                      sub r2, r2, #1
00640a10  1f 30 c3 e3                                      bic r3, r3, #0x1f
00640a14  03 30 82 e1                                      orr r3, r2, r3
00640a18  13 30 c1 e5                                      strb r3, [r1, #0x13]
00640a1c  48 10 9d e5                                      ldr r1, [sp, #0x48]
00640a20  13 30 d1 e5                                      ldrb r3, [r1, #0x13]
00640a24  1f 20 03 e2                                      and r2, r3, #0x1f
00640a28  01 00 52 e3                                      cmp r2, #1
00640a2c  33 01 00 9a                                      bls #0x640f00
00640a30  01 20 42 e2                                      sub r2, r2, #1
00640a34  1f 30 c3 e3                                      bic r3, r3, #0x1f
00640a38  03 30 82 e1                                      orr r3, r2, r3
00640a3c  13 30 c1 e5                                      strb r3, [r1, #0x13]
00640a40  00 40 a0 e3                                      mov r4, #0
00640a44  64 00 8d e2                                      add r0, sp, #0x64
00640a48  0a 10 a0 e1                                      mov r1, sl
00640a4c  64 40 8d e5                                      str r4, [sp, #0x64]
00640a50  68 40 8d e5                                      str r4, [sp, #0x68]
00640a54  1b fe ff eb                                      bl #0x6402c8
00640a58  0c 10 db e5                                      ldrb r1, [fp, #0xc]
00640a5c  5c 00 8d e2                                      add r0, sp, #0x5c
00640a60  5c 40 8d e5                                      str r4, [sp, #0x5c]
00640a64  01 10 81 e2                                      add r1, r1, #1
00640a68  71 10 ef e6                                      uxtb r1, r1
00640a6c  60 40 8d e5                                      str r4, [sp, #0x60]
00640a70  01 12 8a e0                                      add r1, sl, r1, lsl #4
00640a74  13 fe ff eb                                      bl #0x6402c8
00640a78  10 10 8a e2                                      add r1, sl, #0x10
00640a7c  54 00 8d e2                                      add r0, sp, #0x54
00640a80  58 40 8d e5                                      str r4, [sp, #0x58]
00640a84  54 40 8d e5                                      str r4, [sp, #0x54]
00640a88  34 fe ff eb                                      bl #0x640360
00640a8c  0a 20 a0 e1                                      mov r2, sl
00640a90  10 30 9b e5                                      ldr r3, [fp, #0x10]
00640a94  12 10 a0 e3                                      mov r1, #0x12
00640a98  0b 00 a0 e1                                      mov r0, fp
00640a9c  13 80 fd eb                                      bl #0x5a0af0
00640aa0  20 00 8d e5                                      str r0, [sp, #0x20]
00640aa4  05 10 a0 e3                                      mov r1, #5
00640aa8  00 00 90 e5                                      ldr r0, [r0]
00640aac  cf 83 fd eb                                      bl #0x5a19f0
00640ab0  20 10 9d e5                                      ldr r1, [sp, #0x20]
00640ab4  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00640ab8  04 20 91 e5                                      ldr r2, [r1, #4]
00640abc  00 30 93 e5                                      ldr r3, [r3]
00640ac0  02 20 80 e0                                      add r2, r0, r2
00640ac4  04 00 53 e1                                      cmp r3, r4
00640ac8  24 20 8d e5                                      str r2, [sp, #0x24]
00640acc  6c 30 8d e5                                      str r3, [sp, #0x6c]
00640ad0  00 20 93 15                                      ldrne r2, [r3]
00640ad4  6c 00 8d e2                                      add r0, sp, #0x6c
00640ad8  01 20 82 12                                      addne r2, r2, #1
00640adc  00 20 83 15                                      strne r2, [r3]
00640ae0  b4 24 9f e5                                      ldr r2, [pc, #0x4b4]
00640ae4  38 20 8d e5                                      str r2, [sp, #0x38]
00640ae8  3e 40 f3 eb                                      bl #0x310be8
00640aec  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00640af0  38 00 9d e5                                      ldr r0, [sp, #0x38]
00640af4  08 20 99 e5                                      ldr r2, [sb, #8]
00640af8  18 e0 99 e5                                      ldr lr, [sb, #0x18]
00640afc  28 c0 99 e5                                      ldr ip, [sb, #0x28]
00640b00  00 30 91 e7                                      ldr r3, [r1, r0]
00640b04  02 21 82 e2                                      add r2, r2, #0x80000000
00640b08  02 e1 8e e2                                      add lr, lr, #0x80000000
00640b0c  02 c1 8c e2                                      add ip, ip, #0x80000000
00640b10  00 20 83 e5                                      str r2, [r3]
00640b14  08 c0 83 e5                                      str ip, [r3, #8]
00640b18  04 e0 83 e5                                      str lr, [r3, #4]
00640b1c  09 10 a0 e1                                      mov r1, sb
00640b20  28 00 9d e5                                      ldr r0, [sp, #0x28]
00640b24  34 eb ff eb                                      bl #0x63b7fc
00640b28  28 20 9d e5                                      ldr r2, [sp, #0x28]
00640b2c  24 50 92 e5                                      ldr r5, [r2, #0x24]
00640b30  28 30 92 e5                                      ldr r3, [r2, #0x28]
00640b34  03 00 55 e1                                      cmp r5, r3
00640b38  30 30 8d e5                                      str r3, [sp, #0x30]
00640b3c  88 00 00 0a                                      beq #0x640d64
00640b40  58 04 9f e5                                      ldr r0, [pc, #0x458]
00640b44  58 14 9f e5                                      ldr r1, [pc, #0x458]
00640b48  58 24 9f e5                                      ldr r2, [pc, #0x458]
00640b4c  58 34 9f e5                                      ldr r3, [pc, #0x458]
00640b50  34 00 8d e5                                      str r0, [sp, #0x34]
00640b54  3c 10 8d e5                                      str r1, [sp, #0x3c]
00640b58  40 20 8d e5                                      str r2, [sp, #0x40]
00640b5c  44 30 8d e5                                      str r3, [sp, #0x44]
00640b60  00 40 a0 e3                                      mov r4, #0
00640b64  28 00 9d e5                                      ldr r0, [sp, #0x28]
00640b68  05 10 a0 e1                                      mov r1, r5
00640b6c  9a fd 01 eb                                      bl #0x6c01dc
00640b70  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00640b74  34 00 9d e5                                      ldr r0, [sp, #0x34]
00640b78  04 20 a0 e3                                      mov r2, #4
00640b7c  00 70 91 e7                                      ldr r7, [r1, r0]
00640b80  24 10 85 e2                                      add r1, r5, #0x24
00640b84  07 00 a0 e1                                      mov r0, r7
00640b88  36 37 f3 eb                                      bl #0x30e868
00640b8c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00640b90  05 10 a0 e1                                      mov r1, r5
00640b94  a8 fe 01 eb                                      bl #0x6c063c
00640b98  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00640b9c  08 30 92 e5                                      ldr r3, [r2, #8]
00640ba0  00 00 53 e3                                      cmp r3, #0
00640ba4  6a 00 00 0a                                      beq #0x640d54
00640ba8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00640bac  40 20 9d e5                                      ldr r2, [sp, #0x40]
00640bb0  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00640bb4  03 30 84 e0                                      add r3, r4, r3
00640bb8  02 20 91 e7                                      ldr r2, [r1, r2]
00640bbc  00 60 91 e7                                      ldr r6, [r1, r0]
00640bc0  38 00 9d e5                                      ldr r0, [sp, #0x38]
00640bc4  0c 20 8d e5                                      str r2, [sp, #0xc]
00640bc8  44 20 9d e5                                      ldr r2, [sp, #0x44]
00640bcc  00 a0 91 e7                                      ldr sl, [r1, r0]
00640bd0  18 70 8d e5                                      str r7, [sp, #0x18]
00640bd4  02 20 91 e7                                      ldr r2, [r1, r2]
00640bd8  14 30 8d e5                                      str r3, [sp, #0x14]
00640bdc  00 80 a0 e3                                      mov r8, #0
00640be0  10 20 8d e5                                      str r2, [sp, #0x10]
00640be4  06 70 a0 e1                                      mov r7, r6
00640be8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00640bec  00 00 95 e5                                      ldr r0, [r5]
00640bf0  60 90 95 e5                                      ldr sb, [r5, #0x60]
00640bf4  00 10 93 e5                                      ldr r1, [r3]
00640bf8  e9 37 f3 eb                                      bl #0x30eba4
00640bfc  30 10 96 e5                                      ldr r1, [r6, #0x30]
00640c00  00 b0 a0 e1                                      mov fp, r0
00640c04  09 00 a0 e1                                      mov r0, sb
00640c08  57 38 f3 eb                                      bl #0x30ed6c
00640c0c  00 10 a0 e1                                      mov r1, r0
00640c10  0b 00 a0 e1                                      mov r0, fp
00640c14  e2 37 f3 eb                                      bl #0x30eba4
00640c18  00 b0 a0 e1                                      mov fp, r0
00640c1c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00640c20  04 10 90 e5                                      ldr r1, [r0, #4]
00640c24  04 00 95 e5                                      ldr r0, [r5, #4]
00640c28  dd 37 f3 eb                                      bl #0x30eba4
00640c2c  34 10 96 e5                                      ldr r1, [r6, #0x34]
00640c30  00 30 a0 e1                                      mov r3, r0
00640c34  09 00 a0 e1                                      mov r0, sb
00640c38  08 30 8d e5                                      str r3, [sp, #8]
00640c3c  4a 38 f3 eb                                      bl #0x30ed6c
00640c40  08 30 9d e5                                      ldr r3, [sp, #8]
00640c44  00 10 a0 e1                                      mov r1, r0
00640c48  03 00 a0 e1                                      mov r0, r3
00640c4c  d4 37 f3 eb                                      bl #0x30eba4
00640c50  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00640c54  00 20 a0 e1                                      mov r2, r0
00640c58  08 00 95 e5                                      ldr r0, [r5, #8]
00640c5c  08 10 93 e5                                      ldr r1, [r3, #8]
00640c60  04 20 8d e5                                      str r2, [sp, #4]
00640c64  ce 37 f3 eb                                      bl #0x30eba4
00640c68  38 10 96 e5                                      ldr r1, [r6, #0x38]
00640c6c  00 30 a0 e1                                      mov r3, r0
00640c70  09 00 a0 e1                                      mov r0, sb
00640c74  08 30 8d e5                                      str r3, [sp, #8]
00640c78  3b 38 f3 eb                                      bl #0x30ed6c
00640c7c  08 30 9d e5                                      ldr r3, [sp, #8]
00640c80  00 10 a0 e1                                      mov r1, r0
00640c84  0c 60 86 e2                                      add r6, r6, #0xc
00640c88  03 00 a0 e1                                      mov r0, r3
00640c8c  c4 37 f3 eb                                      bl #0x30eba4
00640c90  68 00 87 e5                                      str r0, [r7, #0x68]
00640c94  04 20 9d e5                                      ldr r2, [sp, #4]
00640c98  60 b0 87 e5                                      str fp, [r7, #0x60]
00640c9c  64 20 87 e5                                      str r2, [r7, #0x64]
00640ca0  64 30 9d e5                                      ldr r3, [sp, #0x64]
00640ca4  68 20 9d e5                                      ldr r2, [sp, #0x68]
00640ca8  10 00 9d e5                                      ldr r0, [sp, #0x10]
00640cac  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
00640cb0  18 10 9d e5                                      ldr r1, [sp, #0x18]
00640cb4  00 c0 88 e0                                      add ip, r8, r0
00640cb8  93 04 03 e0                                      mul r3, r3, r4
00640cbc  03 b0 82 e7                                      str fp, [r2, r3]
00640cc0  64 00 97 e5                                      ldr r0, [r7, #0x64]
00640cc4  03 30 82 e0                                      add r3, r2, r3
00640cc8  04 20 a0 e3                                      mov r2, #4
00640ccc  04 00 83 e5                                      str r0, [r3, #4]
00640cd0  68 00 97 e5                                      ldr r0, [r7, #0x68]
00640cd4  08 00 83 e5                                      str r0, [r3, #8]
00640cd8  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00640cdc  60 00 9d e5                                      ldr r0, [sp, #0x60]
00640ce0  00 e0 9a e5                                      ldr lr, [sl]
00640ce4  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
00640ce8  93 04 03 e0                                      mul r3, r3, r4
00640cec  03 e0 80 e7                                      str lr, [r0, r3]
00640cf0  04 e0 9a e5                                      ldr lr, [sl, #4]
00640cf4  03 30 80 e0                                      add r3, r0, r3
00640cf8  04 e0 83 e5                                      str lr, [r3, #4]
00640cfc  08 00 9a e5                                      ldr r0, [sl, #8]
00640d00  08 00 83 e5                                      str r0, [r3, #8]
00640d04  10 30 9d e5                                      ldr r3, [sp, #0x10]
00640d08  58 00 9d e5                                      ldr r0, [sp, #0x58]
00640d0c  03 e0 98 e7                                      ldr lr, [r8, r3]
00640d10  54 30 9d e5                                      ldr r3, [sp, #0x54]
00640d14  08 80 88 e2                                      add r8, r8, #8
00640d18  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
00640d1c  93 04 03 e0                                      mul r3, r3, r4
00640d20  03 e0 80 e7                                      str lr, [r0, r3]
00640d24  04 c0 9c e5                                      ldr ip, [ip, #4]
00640d28  03 30 80 e0                                      add r3, r0, r3
00640d2c  04 c0 83 e5                                      str ip, [r3, #4]
00640d30  20 30 9d e5                                      ldr r3, [sp, #0x20]
00640d34  be 00 d3 e1                                      ldrh r0, [r3, #0xe]
00640d38  24 30 9d e5                                      ldr r3, [sp, #0x24]
00640d3c  90 34 20 e0                                      mla r0, r0, r4, r3
00640d40  c8 36 f3 eb                                      bl #0x30e868
00640d44  14 00 9d e5                                      ldr r0, [sp, #0x14]
00640d48  01 40 84 e2                                      add r4, r4, #1
00640d4c  00 00 54 e1                                      cmp r4, r0
00640d50  a4 ff ff 1a                                      bne #0x640be8
00640d54  30 10 9d e5                                      ldr r1, [sp, #0x30]
00640d58  9c 50 85 e2                                      add r5, r5, #0x9c
00640d5c  01 00 55 e1                                      cmp r5, r1
00640d60  7f ff ff 1a                                      bne #0x640b64
00640d64  24 20 9d e5                                      ldr r2, [sp, #0x24]
00640d68  00 00 52 e3                                      cmp r2, #0
00640d6c  09 00 00 0a                                      beq #0x640d98
00640d70  20 30 9d e5                                      ldr r3, [sp, #0x20]
00640d74  00 40 93 e5                                      ldr r4, [r3]
00640d78  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00640d7c  1f 20 03 e2                                      and r2, r3, #0x1f
00640d80  01 00 52 e3                                      cmp r2, #1
00640d84  4b 00 00 9a                                      bls #0x640eb8
00640d88  01 20 42 e2                                      sub r2, r2, #1
00640d8c  1f 30 c3 e3                                      bic r3, r3, #0x1f
00640d90  03 30 82 e1                                      orr r3, r2, r3
00640d94  13 30 c4 e5                                      strb r3, [r4, #0x13]
00640d98  58 30 9d e5                                      ldr r3, [sp, #0x58]
00640d9c  00 00 53 e3                                      cmp r3, #0
00640da0  0c 00 00 0a                                      beq #0x640dd8
00640da4  54 30 9d e5                                      ldr r3, [sp, #0x54]
00640da8  00 40 93 e5                                      ldr r4, [r3]
00640dac  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00640db0  1f 20 03 e2                                      and r2, r3, #0x1f
00640db4  01 00 52 e3                                      cmp r2, #1
00640db8  38 00 00 9a                                      bls #0x640ea0
00640dbc  01 20 42 e2                                      sub r2, r2, #1
00640dc0  1f 30 c3 e3                                      bic r3, r3, #0x1f
00640dc4  03 30 82 e1                                      orr r3, r2, r3
00640dc8  13 30 c4 e5                                      strb r3, [r4, #0x13]
00640dcc  00 30 a0 e3                                      mov r3, #0
00640dd0  58 30 8d e5                                      str r3, [sp, #0x58]
00640dd4  54 30 8d e5                                      str r3, [sp, #0x54]
00640dd8  60 30 9d e5                                      ldr r3, [sp, #0x60]
00640ddc  00 00 53 e3                                      cmp r3, #0
00640de0  0c 00 00 0a                                      beq #0x640e18
00640de4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00640de8  00 40 93 e5                                      ldr r4, [r3]
00640dec  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00640df0  1f 20 03 e2                                      and r2, r3, #0x1f
00640df4  01 00 52 e3                                      cmp r2, #1
00640df8  22 00 00 9a                                      bls #0x640e88
00640dfc  01 20 42 e2                                      sub r2, r2, #1
00640e00  1f 30 c3 e3                                      bic r3, r3, #0x1f
00640e04  03 30 82 e1                                      orr r3, r2, r3
00640e08  13 30 c4 e5                                      strb r3, [r4, #0x13]
00640e0c  00 30 a0 e3                                      mov r3, #0
00640e10  60 30 8d e5                                      str r3, [sp, #0x60]
00640e14  5c 30 8d e5                                      str r3, [sp, #0x5c]
00640e18  68 30 9d e5                                      ldr r3, [sp, #0x68]
00640e1c  00 00 53 e3                                      cmp r3, #0
00640e20  0c 00 00 0a                                      beq #0x640e58
00640e24  64 30 9d e5                                      ldr r3, [sp, #0x64]
00640e28  00 40 93 e5                                      ldr r4, [r3]
00640e2c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00640e30  1f 20 03 e2                                      and r2, r3, #0x1f
00640e34  01 00 52 e3                                      cmp r2, #1
00640e38  0c 00 00 9a                                      bls #0x640e70
00640e3c  01 20 42 e2                                      sub r2, r2, #1
00640e40  1f 30 c3 e3                                      bic r3, r3, #0x1f
00640e44  03 30 82 e1                                      orr r3, r2, r3
00640e48  13 30 c4 e5                                      strb r3, [r4, #0x13]
00640e4c  00 30 a0 e3                                      mov r3, #0
00640e50  68 30 8d e5                                      str r3, [sp, #0x68]
00640e54  64 30 8d e5                                      str r3, [sp, #0x64]
00640e58  48 00 9d e5                                      ldr r0, [sp, #0x48]
00640e5c  c8 71 f3 eb                                      bl #0x31d584
00640e60  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00640e64  c6 71 f3 eb                                      bl #0x31d584
00640e68  74 d0 8d e2                                      add sp, sp, #0x74
00640e6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00640e70  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00640e74  20 00 13 e3                                      tst r3, #0x20
00640e78  41 00 00 1a                                      bne #0x640f84
00640e7c  00 30 a0 e3                                      mov r3, #0
00640e80  13 30 c4 e5                                      strb r3, [r4, #0x13]
00640e84  f0 ff ff ea                                      b #0x640e4c
00640e88  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00640e8c  20 00 13 e3                                      tst r3, #0x20
00640e90  2c 00 00 1a                                      bne #0x640f48
00640e94  00 30 a0 e3                                      mov r3, #0
00640e98  13 30 c4 e5                                      strb r3, [r4, #0x13]
00640e9c  da ff ff ea                                      b #0x640e0c
00640ea0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00640ea4  20 00 13 e3                                      tst r3, #0x20
00640ea8  21 00 00 1a                                      bne #0x640f34
00640eac  00 30 a0 e3                                      mov r3, #0
00640eb0  13 30 c4 e5                                      strb r3, [r4, #0x13]
00640eb4  c4 ff ff ea                                      b #0x640dcc
00640eb8  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00640ebc  20 00 13 e3                                      tst r3, #0x20
00640ec0  16 00 00 1a                                      bne #0x640f20
00640ec4  00 30 a0 e3                                      mov r3, #0
00640ec8  13 30 c4 e5                                      strb r3, [r4, #0x13]
00640ecc  b1 ff ff ea                                      b #0x640d98
00640ed0  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00640ed4  12 30 d2 e5                                      ldrb r3, [r2, #0x12]
00640ed8  20 00 13 e3                                      tst r3, #0x20
00640edc  23 00 00 1a                                      bne #0x640f70
00640ee0  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00640ee4  00 30 a0 e3                                      mov r3, #0
00640ee8  13 30 c0 e5                                      strb r3, [r0, #0x13]
00640eec  48 10 9d e5                                      ldr r1, [sp, #0x48]
00640ef0  13 30 d1 e5                                      ldrb r3, [r1, #0x13]
00640ef4  1f 20 03 e2                                      and r2, r3, #0x1f
00640ef8  01 00 52 e3                                      cmp r2, #1
00640efc  cb fe ff 8a                                      bhi #0x640a30
00640f00  48 20 9d e5                                      ldr r2, [sp, #0x48]
00640f04  12 30 d2 e5                                      ldrb r3, [r2, #0x12]
00640f08  20 00 13 e3                                      tst r3, #0x20
00640f0c  12 00 00 1a                                      bne #0x640f5c
00640f10  48 00 9d e5                                      ldr r0, [sp, #0x48]
00640f14  00 30 a0 e3                                      mov r3, #0
00640f18  13 30 c0 e5                                      strb r3, [r0, #0x13]
00640f1c  c7 fe ff ea                                      b #0x640a40
00640f20  00 30 94 e5                                      ldr r3, [r4]
00640f24  04 00 a0 e1                                      mov r0, r4
00640f28  0f e0 a0 e1                                      mov lr, pc
00640f2c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00640f30  e3 ff ff ea                                      b #0x640ec4
00640f34  00 30 94 e5                                      ldr r3, [r4]
00640f38  04 00 a0 e1                                      mov r0, r4
00640f3c  0f e0 a0 e1                                      mov lr, pc
00640f40  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00640f44  d8 ff ff ea                                      b #0x640eac
00640f48  00 30 94 e5                                      ldr r3, [r4]
00640f4c  04 00 a0 e1                                      mov r0, r4
00640f50  0f e0 a0 e1                                      mov lr, pc
00640f54  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00640f58  cd ff ff ea                                      b #0x640e94
00640f5c  00 30 92 e5                                      ldr r3, [r2]
00640f60  02 00 a0 e1                                      mov r0, r2
00640f64  0f e0 a0 e1                                      mov lr, pc
00640f68  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00640f6c  e7 ff ff ea                                      b #0x640f10
00640f70  00 30 92 e5                                      ldr r3, [r2]
00640f74  02 00 a0 e1                                      mov r0, r2
00640f78  0f e0 a0 e1                                      mov lr, pc
00640f7c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00640f80  d6 ff ff ea                                      b #0x640ee0
00640f84  00 30 94 e5                                      ldr r3, [r4]
00640f88  04 00 a0 e1                                      mov r0, r4
00640f8c  0f e0 a0 e1                                      mov lr, pc
00640f90  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00640f94  b8 ff ff ea                                      b #0x640e7c
; mapping-symbol data/literal pool
00640f98  74 41 35 00 cc 32 00 00 20 34 00 00 b4 1f 00 00  .byte 0x74, 0x41, 0x35, 0x00, 0xcc, 0x32, 0x00, 0x00, 0x20, 0x34, 0x00, 0x00, 0xb4, 0x1f, 0x00, 0x00
00640fa8  c8 09 00 00 24 4b 00 00                          .byte 0xc8, 0x09, 0x00, 0x00, 0x24, 0x4b, 0x00, 0x00
