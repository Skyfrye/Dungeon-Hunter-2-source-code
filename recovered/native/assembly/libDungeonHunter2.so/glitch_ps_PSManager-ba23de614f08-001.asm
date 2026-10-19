; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00637b38, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZN6glitch2ps9PSManagerD1Ev
; demangled: glitch::ps::PSManager::~PSManager()
; decoder-mode: arm
00637b38  1e ff 2f e1                                      bx lr

; FUNCTION 0x0063b3d0, declared_size=124, range_size=124, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZN6glitch2ps9PSManager11getInstanceEv
; demangled: glitch::ps::PSManager::getInstance()
; decoder-mode: arm
0063b3d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0063b3d4  5c 40 9f e5                                      ldr r4, [pc, #0x5c]
0063b3d8  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0063b3dc  04 40 8f e0                                      add r4, pc, r4
0063b3e0  03 50 94 e7                                      ldr r5, [r4, r3]
0063b3e4  00 30 95 e5                                      ldr r3, [r5]
0063b3e8  01 00 13 e3                                      tst r3, #1
0063b3ec  02 00 00 0a                                      beq #0x63b3fc
0063b3f0  48 50 9f e5                                      ldr r5, [pc, #0x48]
0063b3f4  05 00 94 e7                                      ldr r0, [r4, r5]
0063b3f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063b3fc  05 00 a0 e1                                      mov r0, r5
0063b400  d9 4c f3 eb                                      bl #0x30e76c
0063b404  00 00 50 e3                                      cmp r0, #0
0063b408  f8 ff ff 0a                                      beq #0x63b3f0
0063b40c  05 00 a0 e1                                      mov r0, r5
0063b410  89 4d f3 eb                                      bl #0x30ea3c
0063b414  28 30 9f e5                                      ldr r3, [pc, #0x28]
0063b418  20 50 9f e5                                      ldr r5, [pc, #0x20]
0063b41c  03 10 94 e7                                      ldr r1, [r4, r3]
0063b420  20 30 9f e5                                      ldr r3, [pc, #0x20]
0063b424  05 00 94 e7                                      ldr r0, [r4, r5]
0063b428  03 20 94 e7                                      ldr r2, [r4, r3]
0063b42c  b4 4b f3 eb                                      bl #0x30e304
0063b430  05 00 94 e7                                      ldr r0, [r4, r5]
0063b434  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0063b438  b4 96 35 00 e0 30 00 00 f0 45 00 00 ac 22 00 00  .byte 0xb4, 0x96, 0x35, 0x00, 0xe0, 0x30, 0x00, 0x00, 0xf0, 0x45, 0x00, 0x00, 0xac, 0x22, 0x00, 0x00
0063b448  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0063df64, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn404_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063df64  65 0f 40 e2                                      sub r0, r0, #0x194
0063df68  0f 00 00 ea                                      b #0x63dfac

; FUNCTION 0x0063df6c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn392_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063df6c  62 0f 40 e2                                      sub r0, r0, #0x188
0063df70  0d 00 00 ea                                      b #0x63dfac

; FUNCTION 0x0063df74, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn248_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063df74  f8 00 40 e2                                      sub r0, r0, #0xf8
0063df78  0b 00 00 ea                                      b #0x63dfac

; FUNCTION 0x0063df7c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn228_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063df7c  e4 00 40 e2                                      sub r0, r0, #0xe4
0063df80  09 00 00 ea                                      b #0x63dfac

; FUNCTION 0x0063df84, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn168_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063df84  a8 00 40 e2                                      sub r0, r0, #0xa8
0063df88  07 00 00 ea                                      b #0x63dfac

; FUNCTION 0x0063df8c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn144_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063df8c  90 00 40 e2                                      sub r0, r0, #0x90
0063df90  05 00 00 ea                                      b #0x63dfac

; FUNCTION 0x0063df94, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn64_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063df94  40 00 40 e2                                      sub r0, r0, #0x40
0063df98  03 00 00 ea                                      b #0x63dfac

; FUNCTION 0x0063df9c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn44_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063df9c  2c 00 40 e2                                      sub r0, r0, #0x2c
0063dfa0  01 00 00 ea                                      b #0x63dfac

; FUNCTION 0x0063dfa4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn16_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063dfa4  10 00 40 e2                                      sub r0, r0, #0x10
0063dfa8  ff ff ff ea                                      b #0x63dfac

; FUNCTION 0x0063dfac, declared_size=544, range_size=544, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063dfac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063dfb0  08 52 9f e5                                      ldr r5, [pc, #0x208]
0063dfb4  08 72 9f e5                                      ldr r7, [pc, #0x208]
0063dfb8  08 32 9f e5                                      ldr r3, [pc, #0x208]
0063dfbc  05 50 8f e0                                      add r5, pc, r5
0063dfc0  07 20 95 e7                                      ldr r2, [r5, r7]
0063dfc4  03 30 95 e7                                      ldr r3, [r5, r3]
0063dfc8  0c d0 4d e2                                      sub sp, sp, #0xc
0063dfcc  4c 10 92 e5                                      ldr r1, [r2, #0x4c]
0063dfd0  00 40 a0 e1                                      mov r4, r0
0063dfd4  6c e0 83 e2                                      add lr, r3, #0x6c
0063dfd8  00 10 8d e5                                      str r1, [sp]
0063dfdc  46 1f 83 e2                                      add r1, r3, #0x118
0063dfe0  04 10 8d e5                                      str r1, [sp, #4]
0063dfe4  90 c0 83 e2                                      add ip, r3, #0x90
0063dfe8  4c 80 83 e2                                      add r8, r3, #0x4c
0063dfec  ac 00 83 e2                                      add r0, r3, #0xac
0063dff0  cc 10 83 e2                                      add r1, r3, #0xcc
0063dff4  0c b0 83 e2                                      add fp, r3, #0xc
0063dff8  7d 9f 83 e2                                      add sb, r3, #0x1f4
0063dffc  30 a0 83 e2                                      add sl, r3, #0x30
0063e000  04 60 a0 e1                                      mov r6, r4
0063e004  f8 30 83 e2                                      add r3, r3, #0xf8
0063e008  38 b2 86 e4                                      str fp, [r6], #0x238
0063e00c  2c 80 84 e5                                      str r8, [r4, #0x2c]
0063e010  40 e0 84 e5                                      str lr, [r4, #0x40]
0063e014  90 c0 84 e5                                      str ip, [r4, #0x90]
0063e018  38 92 84 e5                                      str sb, [r4, #0x238]
0063e01c  10 a0 84 e5                                      str sl, [r4, #0x10]
0063e020  a8 00 84 e5                                      str r0, [r4, #0xa8]
0063e024  e4 10 84 e5                                      str r1, [r4, #0xe4]
0063e028  f8 30 84 e5                                      str r3, [r4, #0xf8]
0063e02c  04 30 9d e5                                      ldr r3, [sp, #4]
0063e030  50 20 92 e5                                      ldr r2, [r2, #0x50]
0063e034  65 8f 84 e2                                      add r8, r4, #0x194
0063e038  88 31 84 e5                                      str r3, [r4, #0x188]
0063e03c  00 10 9d e5                                      ldr r1, [sp]
0063e040  94 11 84 e5                                      str r1, [r4, #0x194]
0063e044  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
0063e048  03 20 88 e7                                      str r2, [r8, r3]
0063e04c  9c 00 98 e5                                      ldr r0, [r8, #0x9c]
0063e050  96 40 f3 eb                                      bl #0x30e2b0
0063e054  00 30 a0 e3                                      mov r3, #0
0063e058  08 00 a0 e1                                      mov r0, r8
0063e05c  9c 30 88 e5                                      str r3, [r8, #0x9c]
0063e060  be f5 ff eb                                      bl #0x63b760
0063e064  a0 00 98 e5                                      ldr r0, [r8, #0xa0]
0063e068  00 00 50 e3                                      cmp r0, #0
0063e06c  00 00 00 0a                                      beq #0x63e074
0063e070  43 7d f3 eb                                      bl #0x31d584
0063e074  14 00 98 e5                                      ldr r0, [r8, #0x14]
0063e078  00 00 50 e3                                      cmp r0, #0
0063e07c  00 00 00 0a                                      beq #0x63e084
0063e080  3f 7d f3 eb                                      bl #0x31d584
0063e084  10 a0 98 e5                                      ldr sl, [r8, #0x10]
0063e088  00 00 5a e3                                      cmp sl, #0
0063e08c  04 00 00 0a                                      beq #0x63e0a4
0063e090  00 30 9a e5                                      ldr r3, [sl]
0063e094  01 30 43 e2                                      sub r3, r3, #1
0063e098  00 00 53 e3                                      cmp r3, #0
0063e09c  00 30 8a e5                                      str r3, [sl]
0063e0a0  41 00 00 0a                                      beq #0x63e1ac
0063e0a4  08 00 88 e2                                      add r0, r8, #8
0063e0a8  ce 4a f3 eb                                      bl #0x310be8
0063e0ac  07 80 95 e7                                      ldr r8, [r5, r7]
0063e0b0  62 ef 84 e2                                      add lr, r4, #0x188
0063e0b4  f8 20 84 e2                                      add r2, r4, #0xf8
0063e0b8  44 10 98 e5                                      ldr r1, [r8, #0x44]
0063e0bc  3c 30 98 e5                                      ldr r3, [r8, #0x3c]
0063e0c0  48 a0 98 e5                                      ldr sl, [r8, #0x48]
0063e0c4  88 11 84 e5                                      str r1, [r4, #0x188]
0063e0c8  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0063e0cc  40 c0 98 e5                                      ldr ip, [r8, #0x40]
0063e0d0  e4 00 84 e2                                      add r0, r4, #0xe4
0063e0d4  01 a0 8e e7                                      str sl, [lr, r1]
0063e0d8  f8 30 84 e5                                      str r3, [r4, #0xf8]
0063e0dc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e0e0  34 10 88 e2                                      add r1, r8, #0x34
0063e0e4  03 c0 82 e7                                      str ip, [r2, r3]
0063e0e8  60 f1 ff eb                                      bl #0x63a670
0063e0ec  2c 20 98 e5                                      ldr r2, [r8, #0x2c]
0063e0f0  24 30 98 e5                                      ldr r3, [r8, #0x24]
0063e0f4  30 c0 98 e5                                      ldr ip, [r8, #0x30]
0063e0f8  a8 20 84 e5                                      str r2, [r4, #0xa8]
0063e0fc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0063e100  a8 00 84 e2                                      add r0, r4, #0xa8
0063e104  28 10 98 e5                                      ldr r1, [r8, #0x28]
0063e108  02 c0 80 e7                                      str ip, [r0, r2]
0063e10c  90 30 84 e5                                      str r3, [r4, #0x90]
0063e110  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
0063e114  90 30 84 e2                                      add r3, r4, #0x90
0063e118  02 10 83 e7                                      str r1, [r3, r2]
0063e11c  04 30 93 e5                                      ldr r3, [r3, #4]
0063e120  00 00 53 e3                                      cmp r3, #0
0063e124  03 00 00 0a                                      beq #0x63e138
0063e128  03 00 a0 e1                                      mov r0, r3
0063e12c  00 30 93 e5                                      ldr r3, [r3]
0063e130  0f e0 a0 e1                                      mov lr, pc
0063e134  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0063e138  07 30 95 e7                                      ldr r3, [r5, r7]
0063e13c  40 e0 84 e2                                      add lr, r4, #0x40
0063e140  2c c0 84 e2                                      add ip, r4, #0x2c
0063e144  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0063e148  14 10 93 e5                                      ldr r1, [r3, #0x14]
0063e14c  20 70 93 e5                                      ldr r7, [r3, #0x20]
0063e150  40 20 84 e5                                      str r2, [r4, #0x40]
0063e154  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0063e158  18 50 93 e5                                      ldr r5, [r3, #0x18]
0063e15c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0063e160  00 70 8e e7                                      str r7, [lr, r0]
0063e164  2c 10 84 e5                                      str r1, [r4, #0x2c]
0063e168  0c 00 11 e5                                      ldr r0, [r1, #-0xc]
0063e16c  10 e0 93 e5                                      ldr lr, [r3, #0x10]
0063e170  04 10 93 e5                                      ldr r1, [r3, #4]
0063e174  00 50 8c e7                                      str r5, [ip, r0]
0063e178  10 20 84 e5                                      str r2, [r4, #0x10]
0063e17c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0063e180  10 c0 84 e2                                      add ip, r4, #0x10
0063e184  08 20 93 e5                                      ldr r2, [r3, #8]
0063e188  00 e0 8c e7                                      str lr, [ip, r0]
0063e18c  00 10 84 e5                                      str r1, [r4]
0063e190  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
0063e194  06 00 a0 e1                                      mov r0, r6
0063e198  03 20 84 e7                                      str r2, [r4, r3]
0063e19c  15 f0 ff eb                                      bl #0x63a1f8
0063e1a0  04 00 a0 e1                                      mov r0, r4
0063e1a4  0c d0 8d e2                                      add sp, sp, #0xc
0063e1a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0063e1ac  0a 00 a0 e1                                      mov r0, sl
0063e1b0  19 8a fd eb                                      bl #0x5a0a1c
0063e1b4  0a 00 a0 e1                                      mov r0, sl
0063e1b8  3c 40 f3 eb                                      bl #0x30e2b0
0063e1bc  b8 ff ff ea                                      b #0x63e0a4
; mapping-symbol data/literal pool
0063e1c0  d4 6a 35 00 c8 35 00 00 fc 41 00 00              .byte 0xd4, 0x6a, 0x35, 0x00, 0xc8, 0x35, 0x00, 0x00, 0xfc, 0x41, 0x00, 0x00

; FUNCTION 0x0063e1cc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZTv0_n12_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063e1cc  00 30 90 e5                                      ldr r3, [r0]
0063e1d0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e1d4  03 00 80 e0                                      add r0, r0, r3
0063e1d8  73 ff ff ea                                      b #0x63dfac

; FUNCTION 0x0063e1dc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn404_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063e1dc  65 0f 40 e2                                      sub r0, r0, #0x194
0063e1e0  0f 00 00 ea                                      b #0x63e224

; FUNCTION 0x0063e1e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn392_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063e1e4  62 0f 40 e2                                      sub r0, r0, #0x188
0063e1e8  0d 00 00 ea                                      b #0x63e224

; FUNCTION 0x0063e1ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn248_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063e1ec  f8 00 40 e2                                      sub r0, r0, #0xf8
0063e1f0  0b 00 00 ea                                      b #0x63e224

; FUNCTION 0x0063e1f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn228_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063e1f4  e4 00 40 e2                                      sub r0, r0, #0xe4
0063e1f8  09 00 00 ea                                      b #0x63e224

; FUNCTION 0x0063e1fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn168_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063e1fc  a8 00 40 e2                                      sub r0, r0, #0xa8
0063e200  07 00 00 ea                                      b #0x63e224

; FUNCTION 0x0063e204, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn144_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063e204  90 00 40 e2                                      sub r0, r0, #0x90
0063e208  05 00 00 ea                                      b #0x63e224

; FUNCTION 0x0063e20c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn64_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063e20c  40 00 40 e2                                      sub r0, r0, #0x40
0063e210  03 00 00 ea                                      b #0x63e224

; FUNCTION 0x0063e214, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn44_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063e214  2c 00 40 e2                                      sub r0, r0, #0x2c
0063e218  01 00 00 ea                                      b #0x63e224

; FUNCTION 0x0063e21c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn16_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063e21c  10 00 40 e2                                      sub r0, r0, #0x10
0063e220  ff ff ff ea                                      b #0x63e224

; FUNCTION 0x0063e224, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063e224  10 40 2d e9                                      push {r4, lr}
0063e228  00 40 a0 e1                                      mov r4, r0
0063e22c  5e ff ff eb                                      bl #0x63dfac
0063e230  04 00 a0 e1                                      mov r0, r4
0063e234  1d 40 f3 eb                                      bl #0x30e2b0
0063e238  04 00 a0 e1                                      mov r0, r4
0063e23c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0063e240, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZTv0_n12_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063e240  00 30 90 e5                                      ldr r3, [r0]
0063e244  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063e248  03 00 80 e0                                      add r0, r0, r3
0063e24c  f4 ff ff ea                                      b #0x63e224

; FUNCTION 0x0063ffdc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn404_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063ffdc  65 0f 40 e2                                      sub r0, r0, #0x194
0063ffe0  0f 00 00 ea                                      b #0x640024

; FUNCTION 0x0063ffe4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn392_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063ffe4  62 0f 40 e2                                      sub r0, r0, #0x188
0063ffe8  0d 00 00 ea                                      b #0x640024

; FUNCTION 0x0063ffec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn248_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063ffec  f8 00 40 e2                                      sub r0, r0, #0xf8
0063fff0  0b 00 00 ea                                      b #0x640024

; FUNCTION 0x0063fff4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn228_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063fff4  e4 00 40 e2                                      sub r0, r0, #0xe4
0063fff8  09 00 00 ea                                      b #0x640024

; FUNCTION 0x0063fffc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn168_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0063fffc  a8 00 40 e2                                      sub r0, r0, #0xa8
00640000  07 00 00 ea                                      b #0x640024

; FUNCTION 0x00640004, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn144_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00640004  90 00 40 e2                                      sub r0, r0, #0x90
00640008  05 00 00 ea                                      b #0x640024

; FUNCTION 0x0064000c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn64_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064000c  40 00 40 e2                                      sub r0, r0, #0x40
00640010  03 00 00 ea                                      b #0x640024

; FUNCTION 0x00640014, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn44_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00640014  2c 00 40 e2                                      sub r0, r0, #0x2c
00640018  01 00 00 ea                                      b #0x640024

; FUNCTION 0x0064001c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn16_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064001c  10 00 40 e2                                      sub r0, r0, #0x10
00640020  ff ff ff ea                                      b #0x640024

; FUNCTION 0x00640024, declared_size=544, range_size=544, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00640024  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00640028  08 52 9f e5                                      ldr r5, [pc, #0x208]
0064002c  08 72 9f e5                                      ldr r7, [pc, #0x208]
00640030  08 32 9f e5                                      ldr r3, [pc, #0x208]
00640034  05 50 8f e0                                      add r5, pc, r5
00640038  07 20 95 e7                                      ldr r2, [r5, r7]
0064003c  03 30 95 e7                                      ldr r3, [r5, r3]
00640040  0c d0 4d e2                                      sub sp, sp, #0xc
00640044  4c 10 92 e5                                      ldr r1, [r2, #0x4c]
00640048  00 40 a0 e1                                      mov r4, r0
0064004c  6c e0 83 e2                                      add lr, r3, #0x6c
00640050  00 10 8d e5                                      str r1, [sp]
00640054  46 1f 83 e2                                      add r1, r3, #0x118
00640058  04 10 8d e5                                      str r1, [sp, #4]
0064005c  90 c0 83 e2                                      add ip, r3, #0x90
00640060  4c 80 83 e2                                      add r8, r3, #0x4c
00640064  ac 00 83 e2                                      add r0, r3, #0xac
00640068  cc 10 83 e2                                      add r1, r3, #0xcc
0064006c  0c b0 83 e2                                      add fp, r3, #0xc
00640070  7d 9f 83 e2                                      add sb, r3, #0x1f4
00640074  30 a0 83 e2                                      add sl, r3, #0x30
00640078  04 60 a0 e1                                      mov r6, r4
0064007c  f8 30 83 e2                                      add r3, r3, #0xf8
00640080  38 b2 86 e4                                      str fp, [r6], #0x238
00640084  2c 80 84 e5                                      str r8, [r4, #0x2c]
00640088  40 e0 84 e5                                      str lr, [r4, #0x40]
0064008c  90 c0 84 e5                                      str ip, [r4, #0x90]
00640090  38 92 84 e5                                      str sb, [r4, #0x238]
00640094  10 a0 84 e5                                      str sl, [r4, #0x10]
00640098  a8 00 84 e5                                      str r0, [r4, #0xa8]
0064009c  e4 10 84 e5                                      str r1, [r4, #0xe4]
006400a0  f8 30 84 e5                                      str r3, [r4, #0xf8]
006400a4  04 30 9d e5                                      ldr r3, [sp, #4]
006400a8  50 20 92 e5                                      ldr r2, [r2, #0x50]
006400ac  65 8f 84 e2                                      add r8, r4, #0x194
006400b0  88 31 84 e5                                      str r3, [r4, #0x188]
006400b4  00 10 9d e5                                      ldr r1, [sp]
006400b8  94 11 84 e5                                      str r1, [r4, #0x194]
006400bc  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
006400c0  03 20 88 e7                                      str r2, [r8, r3]
006400c4  9c 00 98 e5                                      ldr r0, [r8, #0x9c]
006400c8  78 38 f3 eb                                      bl #0x30e2b0
006400cc  00 30 a0 e3                                      mov r3, #0
006400d0  08 00 a0 e1                                      mov r0, r8
006400d4  9c 30 88 e5                                      str r3, [r8, #0x9c]
006400d8  79 ed ff eb                                      bl #0x63b6c4
006400dc  a0 00 98 e5                                      ldr r0, [r8, #0xa0]
006400e0  00 00 50 e3                                      cmp r0, #0
006400e4  00 00 00 0a                                      beq #0x6400ec
006400e8  25 75 f3 eb                                      bl #0x31d584
006400ec  14 00 98 e5                                      ldr r0, [r8, #0x14]
006400f0  00 00 50 e3                                      cmp r0, #0
006400f4  00 00 00 0a                                      beq #0x6400fc
006400f8  21 75 f3 eb                                      bl #0x31d584
006400fc  10 a0 98 e5                                      ldr sl, [r8, #0x10]
00640100  00 00 5a e3                                      cmp sl, #0
00640104  04 00 00 0a                                      beq #0x64011c
00640108  00 30 9a e5                                      ldr r3, [sl]
0064010c  01 30 43 e2                                      sub r3, r3, #1
00640110  00 00 53 e3                                      cmp r3, #0
00640114  00 30 8a e5                                      str r3, [sl]
00640118  41 00 00 0a                                      beq #0x640224
0064011c  08 00 88 e2                                      add r0, r8, #8
00640120  b0 42 f3 eb                                      bl #0x310be8
00640124  07 80 95 e7                                      ldr r8, [r5, r7]
00640128  62 ef 84 e2                                      add lr, r4, #0x188
0064012c  f8 20 84 e2                                      add r2, r4, #0xf8
00640130  44 10 98 e5                                      ldr r1, [r8, #0x44]
00640134  3c 30 98 e5                                      ldr r3, [r8, #0x3c]
00640138  48 a0 98 e5                                      ldr sl, [r8, #0x48]
0064013c  88 11 84 e5                                      str r1, [r4, #0x188]
00640140  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
00640144  40 c0 98 e5                                      ldr ip, [r8, #0x40]
00640148  e4 00 84 e2                                      add r0, r4, #0xe4
0064014c  01 a0 8e e7                                      str sl, [lr, r1]
00640150  f8 30 84 e5                                      str r3, [r4, #0xf8]
00640154  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00640158  34 10 88 e2                                      add r1, r8, #0x34
0064015c  03 c0 82 e7                                      str ip, [r2, r3]
00640160  42 e9 ff eb                                      bl #0x63a670
00640164  2c 20 98 e5                                      ldr r2, [r8, #0x2c]
00640168  24 30 98 e5                                      ldr r3, [r8, #0x24]
0064016c  30 c0 98 e5                                      ldr ip, [r8, #0x30]
00640170  a8 20 84 e5                                      str r2, [r4, #0xa8]
00640174  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00640178  a8 00 84 e2                                      add r0, r4, #0xa8
0064017c  28 10 98 e5                                      ldr r1, [r8, #0x28]
00640180  02 c0 80 e7                                      str ip, [r0, r2]
00640184  90 30 84 e5                                      str r3, [r4, #0x90]
00640188  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
0064018c  90 30 84 e2                                      add r3, r4, #0x90
00640190  02 10 83 e7                                      str r1, [r3, r2]
00640194  04 30 93 e5                                      ldr r3, [r3, #4]
00640198  00 00 53 e3                                      cmp r3, #0
0064019c  03 00 00 0a                                      beq #0x6401b0
006401a0  03 00 a0 e1                                      mov r0, r3
006401a4  00 30 93 e5                                      ldr r3, [r3]
006401a8  0f e0 a0 e1                                      mov lr, pc
006401ac  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006401b0  07 30 95 e7                                      ldr r3, [r5, r7]
006401b4  40 e0 84 e2                                      add lr, r4, #0x40
006401b8  2c c0 84 e2                                      add ip, r4, #0x2c
006401bc  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
006401c0  14 10 93 e5                                      ldr r1, [r3, #0x14]
006401c4  20 70 93 e5                                      ldr r7, [r3, #0x20]
006401c8  40 20 84 e5                                      str r2, [r4, #0x40]
006401cc  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006401d0  18 50 93 e5                                      ldr r5, [r3, #0x18]
006401d4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006401d8  00 70 8e e7                                      str r7, [lr, r0]
006401dc  2c 10 84 e5                                      str r1, [r4, #0x2c]
006401e0  0c 00 11 e5                                      ldr r0, [r1, #-0xc]
006401e4  10 e0 93 e5                                      ldr lr, [r3, #0x10]
006401e8  04 10 93 e5                                      ldr r1, [r3, #4]
006401ec  00 50 8c e7                                      str r5, [ip, r0]
006401f0  10 20 84 e5                                      str r2, [r4, #0x10]
006401f4  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006401f8  10 c0 84 e2                                      add ip, r4, #0x10
006401fc  08 20 93 e5                                      ldr r2, [r3, #8]
00640200  00 e0 8c e7                                      str lr, [ip, r0]
00640204  00 10 84 e5                                      str r1, [r4]
00640208  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
0064020c  06 00 a0 e1                                      mov r0, r6
00640210  03 20 84 e7                                      str r2, [r4, r3]
00640214  f7 e7 ff eb                                      bl #0x63a1f8
00640218  04 00 a0 e1                                      mov r0, r4
0064021c  0c d0 8d e2                                      add sp, sp, #0xc
00640220  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00640224  0a 00 a0 e1                                      mov r0, sl
00640228  fb 81 fd eb                                      bl #0x5a0a1c
0064022c  0a 00 a0 e1                                      mov r0, sl
00640230  1e 38 f3 eb                                      bl #0x30e2b0
00640234  b8 ff ff ea                                      b #0x64011c
; mapping-symbol data/literal pool
00640238  5c 4a 35 00 14 23 00 00 ac 2c 00 00              .byte 0x5c, 0x4a, 0x35, 0x00, 0x14, 0x23, 0x00, 0x00, 0xac, 0x2c, 0x00, 0x00

; FUNCTION 0x00640244, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZTv0_n12_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00640244  00 30 90 e5                                      ldr r3, [r0]
00640248  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064024c  03 00 80 e0                                      add r0, r0, r3
00640250  73 ff ff ea                                      b #0x640024

; FUNCTION 0x00640254, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn404_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00640254  65 0f 40 e2                                      sub r0, r0, #0x194
00640258  0f 00 00 ea                                      b #0x64029c

; FUNCTION 0x0064025c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn392_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064025c  62 0f 40 e2                                      sub r0, r0, #0x188
00640260  0d 00 00 ea                                      b #0x64029c

; FUNCTION 0x00640264, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn248_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00640264  f8 00 40 e2                                      sub r0, r0, #0xf8
00640268  0b 00 00 ea                                      b #0x64029c

; FUNCTION 0x0064026c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn228_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064026c  e4 00 40 e2                                      sub r0, r0, #0xe4
00640270  09 00 00 ea                                      b #0x64029c

; FUNCTION 0x00640274, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn168_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00640274  a8 00 40 e2                                      sub r0, r0, #0xa8
00640278  07 00 00 ea                                      b #0x64029c

; FUNCTION 0x0064027c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn144_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064027c  90 00 40 e2                                      sub r0, r0, #0x90
00640280  05 00 00 ea                                      b #0x64029c

; FUNCTION 0x00640284, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn64_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00640284  40 00 40 e2                                      sub r0, r0, #0x40
00640288  03 00 00 ea                                      b #0x64029c

; FUNCTION 0x0064028c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn44_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064028c  2c 00 40 e2                                      sub r0, r0, #0x2c
00640290  01 00 00 ea                                      b #0x64029c

; FUNCTION 0x00640294, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn16_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00640294  10 00 40 e2                                      sub r0, r0, #0x10
00640298  ff ff ff ea                                      b #0x64029c

; FUNCTION 0x0064029c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064029c  10 40 2d e9                                      push {r4, lr}
006402a0  00 40 a0 e1                                      mov r4, r0
006402a4  5e ff ff eb                                      bl #0x640024
006402a8  04 00 a0 e1                                      mov r0, r4
006402ac  ff 37 f3 eb                                      bl #0x30e2b0
006402b0  04 00 a0 e1                                      mov r0, r4
006402b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006402b8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZTv0_n12_ZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
006402b8  00 30 90 e5                                      ldr r3, [r0]
006402bc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006402c0  03 00 80 e0                                      add r0, r0, r3
006402c4  f4 ff ff ea                                      b #0x64029c

; FUNCTION 0x00642558, declared_size=1104, range_size=1104, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinC1Ev
; demangled: glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::Mixin()
; decoder-mode: arm
00642558  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064255c  00 40 a0 e1                                      mov r4, r0
00642560  84 d0 4d e2                                      sub sp, sp, #0x84
00642564  10 74 9f e5                                      ldr r7, [pc, #0x410]
00642568  8e 0f 80 e2                                      add r0, r0, #0x238
0064256c  fb e3 ff eb                                      bl #0x63b560
00642570  08 24 9f e5                                      ldr r2, [pc, #0x408]
00642574  07 70 8f e0                                      add r7, pc, r7
00642578  15 3d 0c e3                                      movw r3, #0xcd15
0064257c  02 80 97 e7                                      ldr r8, [r7, r2]
00642580  00 50 a0 e3                                      mov r5, #0
00642584  5b 37 40 e3                                      movt r3, #0x75b
00642588  04 10 98 e9                                      ldmib r8, {r2, ip}
0064258c  0c 10 88 e2                                      add r1, r8, #0xc
00642590  00 20 84 e5                                      str r2, [r4]
00642594  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00642598  10 00 84 e2                                      add r0, r4, #0x10
0064259c  04 60 a0 e1                                      mov r6, r4
006425a0  02 c0 84 e7                                      str ip, [r4, r2]
006425a4  08 30 84 e5                                      str r3, [r4, #8]
006425a8  04 30 84 e5                                      str r3, [r4, #4]
006425ac  0c 50 84 e5                                      str r5, [r4, #0xc]
006425b0  1d fe ff eb                                      bl #0x641e2c
006425b4  14 10 88 e2                                      add r1, r8, #0x14
006425b8  2c 00 84 e2                                      add r0, r4, #0x2c
006425bc  6b fe ff eb                                      bl #0x641f70
006425c0  1c 10 88 e2                                      add r1, r8, #0x1c
006425c4  40 00 84 e2                                      add r0, r4, #0x40
006425c8  b6 fe ff eb                                      bl #0x6420a8
006425cc  24 10 88 e2                                      add r1, r8, #0x24
006425d0  90 00 84 e2                                      add r0, r4, #0x90
006425d4  f4 fb ff eb                                      bl #0x6415ac
006425d8  2c 10 88 e2                                      add r1, r8, #0x2c
006425dc  a8 00 84 e2                                      add r0, r4, #0xa8
006425e0  4f fc ff eb                                      bl #0x641724
006425e4  34 30 98 e5                                      ldr r3, [r8, #0x34]
006425e8  38 20 98 e5                                      ldr r2, [r8, #0x38]
006425ec  3c 10 88 e2                                      add r1, r8, #0x3c
006425f0  e4 30 84 e5                                      str r3, [r4, #0xe4]
006425f4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006425f8  f8 00 84 e2                                      add r0, r4, #0xf8
006425fc  71 af 84 e2                                      add sl, r4, #0x1c4
00642600  03 30 84 e0                                      add r3, r4, r3
00642604  e4 20 83 e5                                      str r2, [r3, #0xe4]
00642608  e8 50 84 e5                                      str r5, [r4, #0xe8]
0064260c  ec 50 84 e5                                      str r5, [r4, #0xec]
00642610  f0 50 84 e5                                      str r5, [r4, #0xf0]
00642614  f4 50 c4 e5                                      strb r5, [r4, #0xf4]
00642618  ef fc ff eb                                      bl #0x6419dc
0064261c  44 10 88 e2                                      add r1, r8, #0x44
00642620  62 0f 84 e2                                      add r0, r4, #0x188
00642624  d4 fd ff eb                                      bl #0x641d7c
00642628  4c 30 98 e5                                      ldr r3, [r8, #0x4c]
0064262c  50 10 98 e5                                      ldr r1, [r8, #0x50]
00642630  40 20 a0 e3                                      mov r2, #0x40
00642634  94 31 a6 e5                                      str r3, [r6, #0x194]!
00642638  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064263c  0a 00 a0 e1                                      mov r0, sl
00642640  01 80 a0 e3                                      mov r8, #1
00642644  03 10 86 e7                                      str r1, [r6, r3]
00642648  6f 3f a0 e3                                      mov r3, #0x1bc
0064264c  ff 10 a0 e3                                      mov r1, #0xff
00642650  b3 10 84 e1                                      strh r1, [r4, r3]
00642654  be 31 00 e3                                      movw r3, #0x1be
00642658  06 10 a0 e3                                      mov r1, #6
0064265c  b3 10 84 e1                                      strh r1, [r4, r3]
00642660  98 51 84 e5                                      str r5, [r4, #0x198]
00642664  9c 51 84 e5                                      str r5, [r4, #0x19c]
00642668  a4 51 84 e5                                      str r5, [r4, #0x1a4]
0064266c  a8 51 84 e5                                      str r5, [r4, #0x1a8]
00642670  ac 51 84 e5                                      str r5, [r4, #0x1ac]
00642674  b0 51 84 e5                                      str r5, [r4, #0x1b0]
00642678  b4 51 84 e5                                      str r5, [r4, #0x1b4]
0064267c  b8 51 84 e5                                      str r5, [r4, #0x1b8]
00642680  c0 51 84 e5                                      str r5, [r4, #0x1c0]
00642684  04 52 c4 e5                                      strb r5, [r4, #0x204]
00642688  05 10 a0 e1                                      mov r1, r5
0064268c  73 2f f3 eb                                      bl #0x30e460
00642690  94 11 94 e5                                      ldr r1, [r4, #0x194]
00642694  bf 24 a0 e3                                      mov r2, #0xbf000000
00642698  fe 35 a0 e3                                      mov r3, #0x3f800000
0064269c  02 25 82 e2                                      add r2, r2, #0x800000
006426a0  10 22 84 e5                                      str r2, [r4, #0x210]
006426a4  1c 32 84 e5                                      str r3, [r4, #0x21c]
006426a8  c4 31 84 e5                                      str r3, [r4, #0x1c4]
006426ac  d8 31 84 e5                                      str r3, [r4, #0x1d8]
006426b0  ec 31 84 e5                                      str r3, [r4, #0x1ec]
006426b4  00 32 84 e5                                      str r3, [r4, #0x200]
006426b8  04 82 c4 e5                                      strb r8, [r4, #0x204]
006426bc  08 22 84 e5                                      str r2, [r4, #0x208]
006426c0  0c 22 84 e5                                      str r2, [r4, #0x20c]
006426c4  14 32 84 e5                                      str r3, [r4, #0x214]
006426c8  18 32 84 e5                                      str r3, [r4, #0x218]
006426cc  20 82 c4 e5                                      strb r8, [r4, #0x220]
006426d0  24 52 84 e5                                      str r5, [r4, #0x224]
006426d4  28 52 84 e5                                      str r5, [r4, #0x228]
006426d8  30 52 84 e5                                      str r5, [r4, #0x230]
006426dc  34 52 84 e5                                      str r5, [r4, #0x234]
006426e0  0c 90 11 e5                                      ldr sb, [r1, #-0xc]
006426e4  98 12 9f e5                                      ldr r1, [pc, #0x298]
006426e8  09 90 86 e0                                      add sb, r6, sb
006426ec  01 10 8f e0                                      add r1, pc, r1
006426f0  09 00 a0 e1                                      mov r0, sb
006426f4  54 e3 ff eb                                      bl #0x63b44c
006426f8  70 20 8d e2                                      add r2, sp, #0x70
006426fc  22 3e 84 e2                                      add r3, r4, #0x220
00642700  70 00 8d e5                                      str r0, [sp, #0x70]
00642704  30 10 89 e2                                      add r1, sb, #0x30
00642708  78 00 8d e2                                      add r0, sp, #0x78
0064270c  74 30 8d e5                                      str r3, [sp, #0x74]
00642710  75 e0 ff eb                                      bl #0x63a8ec
00642714  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642718  68 12 9f e5                                      ldr r1, [pc, #0x268]
0064271c  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00642720  01 10 8f e0                                      add r1, pc, r1
00642724  09 90 86 e0                                      add sb, r6, sb
00642728  09 00 a0 e1                                      mov r0, sb
0064272c  46 e3 ff eb                                      bl #0x63b44c
00642730  60 20 8d e2                                      add r2, sp, #0x60
00642734  66 3f 84 e2                                      add r3, r4, #0x198
00642738  60 00 8d e5                                      str r0, [sp, #0x60]
0064273c  30 10 89 e2                                      add r1, sb, #0x30
00642740  68 00 8d e2                                      add r0, sp, #0x68
00642744  64 30 8d e5                                      str r3, [sp, #0x64]
00642748  67 e0 ff eb                                      bl #0x63a8ec
0064274c  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642750  34 12 9f e5                                      ldr r1, [pc, #0x234]
00642754  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00642758  01 10 8f e0                                      add r1, pc, r1
0064275c  09 90 86 e0                                      add sb, r6, sb
00642760  09 00 a0 e1                                      mov r0, sb
00642764  38 e3 ff eb                                      bl #0x63b44c
00642768  50 20 8d e2                                      add r2, sp, #0x50
0064276c  8d 3f 84 e2                                      add r3, r4, #0x234
00642770  50 00 8d e5                                      str r0, [sp, #0x50]
00642774  30 10 89 e2                                      add r1, sb, #0x30
00642778  58 00 8d e2                                      add r0, sp, #0x58
0064277c  54 30 8d e5                                      str r3, [sp, #0x54]
00642780  59 e0 ff eb                                      bl #0x63a8ec
00642784  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642788  00 12 9f e5                                      ldr r1, [pc, #0x200]
0064278c  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00642790  01 10 8f e0                                      add r1, pc, r1
00642794  09 90 86 e0                                      add sb, r6, sb
00642798  09 00 a0 e1                                      mov r0, sb
0064279c  2a e3 ff eb                                      bl #0x63b44c
006427a0  40 20 8d e2                                      add r2, sp, #0x40
006427a4  67 3f 84 e2                                      add r3, r4, #0x19c
006427a8  40 00 8d e5                                      str r0, [sp, #0x40]
006427ac  30 10 89 e2                                      add r1, sb, #0x30
006427b0  48 00 8d e2                                      add r0, sp, #0x48
006427b4  44 30 8d e5                                      str r3, [sp, #0x44]
006427b8  4b e0 ff eb                                      bl #0x63a8ec
006427bc  94 31 94 e5                                      ldr r3, [r4, #0x194]
006427c0  cc 11 9f e5                                      ldr r1, [pc, #0x1cc]
006427c4  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
006427c8  01 10 8f e0                                      add r1, pc, r1
006427cc  09 90 86 e0                                      add sb, r6, sb
006427d0  09 00 a0 e1                                      mov r0, sb
006427d4  1c e3 ff eb                                      bl #0x63b44c
006427d8  30 20 8d e2                                      add r2, sp, #0x30
006427dc  89 3f 84 e2                                      add r3, r4, #0x224
006427e0  30 00 8d e5                                      str r0, [sp, #0x30]
006427e4  30 10 89 e2                                      add r1, sb, #0x30
006427e8  38 00 8d e2                                      add r0, sp, #0x38
006427ec  34 30 8d e5                                      str r3, [sp, #0x34]
006427f0  3d e0 ff eb                                      bl #0x63a8ec
006427f4  94 31 94 e5                                      ldr r3, [r4, #0x194]
006427f8  98 11 9f e5                                      ldr r1, [pc, #0x198]
006427fc  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00642800  01 10 8f e0                                      add r1, pc, r1
00642804  09 90 86 e0                                      add sb, r6, sb
00642808  09 00 a0 e1                                      mov r0, sb
0064280c  0e e3 ff eb                                      bl #0x63b44c
00642810  20 20 8d e2                                      add r2, sp, #0x20
00642814  8b 3f 84 e2                                      add r3, r4, #0x22c
00642818  20 00 8d e5                                      str r0, [sp, #0x20]
0064281c  30 10 89 e2                                      add r1, sb, #0x30
00642820  28 00 8d e2                                      add r0, sp, #0x28
00642824  24 30 8d e5                                      str r3, [sp, #0x24]
00642828  2f e0 ff eb                                      bl #0x63a8ec
0064282c  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642830  64 11 9f e5                                      ldr r1, [pc, #0x164]
00642834  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00642838  01 10 8f e0                                      add r1, pc, r1
0064283c  09 90 86 e0                                      add sb, r6, sb
00642840  09 00 a0 e1                                      mov r0, sb
00642844  00 e3 ff eb                                      bl #0x63b44c
00642848  0d 20 a0 e1                                      mov r2, sp
0064284c  00 00 8d e5                                      str r0, [sp]
00642850  30 10 89 e2                                      add r1, sb, #0x30
00642854  08 00 8d e2                                      add r0, sp, #8
00642858  04 a0 8d e5                                      str sl, [sp, #4]
0064285c  22 e0 ff eb                                      bl #0x63a8ec
00642860  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642864  34 11 9f e5                                      ldr r1, [pc, #0x134]
00642868  0c a0 13 e5                                      ldr sl, [r3, #-0xc]
0064286c  01 10 8f e0                                      add r1, pc, r1
00642870  0a a0 86 e0                                      add sl, r6, sl
00642874  0a 00 a0 e1                                      mov r0, sl
00642878  f3 e2 ff eb                                      bl #0x63b44c
0064287c  82 3f 84 e2                                      add r3, r4, #0x208
00642880  10 00 8d e5                                      str r0, [sp, #0x10]
00642884  30 10 8a e2                                      add r1, sl, #0x30
00642888  18 00 8d e2                                      add r0, sp, #0x18
0064288c  10 20 8d e2                                      add r2, sp, #0x10
00642890  14 30 8d e5                                      str r3, [sp, #0x14]
00642894  14 e0 ff eb                                      bl #0x63a8ec
00642898  94 21 94 e5                                      ldr r2, [r4, #0x194]
0064289c  00 30 a0 e3                                      mov r3, #0
006428a0  3f c4 a0 e3                                      mov ip, #0x3f000000
006428a4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006428a8  05 10 a0 e1                                      mov r1, r5
006428ac  08 00 a0 e1                                      mov r0, r8
006428b0  02 20 86 e0                                      add r2, r6, r2
006428b4  04 50 c2 e5                                      strb r5, [r2, #4]
006428b8  94 21 94 e5                                      ldr r2, [r4, #0x194]
006428bc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006428c0  02 20 86 e0                                      add r2, r6, r2
006428c4  05 50 c2 e5                                      strb r5, [r2, #5]
006428c8  94 21 94 e5                                      ldr r2, [r4, #0x194]
006428cc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006428d0  02 20 86 e0                                      add r2, r6, r2
006428d4  08 c0 82 e5                                      str ip, [r2, #8]
006428d8  10 30 82 e5                                      str r3, [r2, #0x10]
006428dc  0c 30 82 e5                                      str r3, [r2, #0xc]
006428e0  94 21 94 e5                                      ldr r2, [r4, #0x194]
006428e4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006428e8  02 20 86 e0                                      add r2, r6, r2
006428ec  18 c0 82 e5                                      str ip, [r2, #0x18]
006428f0  1c 30 82 e5                                      str r3, [r2, #0x1c]
006428f4  14 30 82 e5                                      str r3, [r2, #0x14]
006428f8  94 31 94 e5                                      ldr r3, [r4, #0x194]
006428fc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00642900  03 60 86 e0                                      add r6, r6, r3
00642904  20 50 c6 e5                                      strb r5, [r6, #0x20]
00642908  27 c6 fb eb                                      bl #0x5341ac
0064290c  90 30 9f e5                                      ldr r3, [pc, #0x90]
00642910  30 02 84 e5                                      str r0, [r4, #0x230]
00642914  04 00 a0 e1                                      mov r0, r4
00642918  03 30 97 e7                                      ldr r3, [r7, r3]
0064291c  4e bf 83 e2                                      add fp, r3, #0x138
00642920  0c a0 83 e2                                      add sl, r3, #0xc
00642924  7d 8f 83 e2                                      add r8, r3, #0x1f4
00642928  30 70 83 e2                                      add r7, r3, #0x30
0064292c  4c 60 83 e2                                      add r6, r3, #0x4c
00642930  6c 50 83 e2                                      add r5, r3, #0x6c
00642934  90 c0 83 e2                                      add ip, r3, #0x90
00642938  ac 10 83 e2                                      add r1, r3, #0xac
0064293c  cc 20 83 e2                                      add r2, r3, #0xcc
00642940  f8 90 83 e2                                      add sb, r3, #0xf8
00642944  46 3f 83 e2                                      add r3, r3, #0x118
00642948  00 a0 84 e5                                      str sl, [r4]
0064294c  38 82 84 e5                                      str r8, [r4, #0x238]
00642950  10 70 84 e5                                      str r7, [r4, #0x10]
00642954  2c 60 84 e5                                      str r6, [r4, #0x2c]
00642958  40 50 84 e5                                      str r5, [r4, #0x40]
0064295c  90 c0 84 e5                                      str ip, [r4, #0x90]
00642960  a8 10 84 e5                                      str r1, [r4, #0xa8]
00642964  e4 20 84 e5                                      str r2, [r4, #0xe4]
00642968  f8 90 84 e5                                      str sb, [r4, #0xf8]
0064296c  88 31 84 e5                                      str r3, [r4, #0x188]
00642970  94 b1 84 e5                                      str fp, [r4, #0x194]
00642974  84 d0 8d e2                                      add sp, sp, #0x84
00642978  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0064297c  1c 25 35 00 14 23 00 00 84 2e 2a 00 c8 29 2a 00  .byte 0x1c, 0x25, 0x35, 0x00, 0x14, 0x23, 0x00, 0x00, 0x84, 0x2e, 0x2a, 0x00, 0xc8, 0x29, 0x2a, 0x00
0064298c  28 2e 2a 00 58 2a 2a 00 c8 2d 2a 00 a0 2d 2a 00  .byte 0x28, 0x2e, 0x2a, 0x00, 0x58, 0x2a, 0x2a, 0x00, 0xc8, 0x2d, 0x2a, 0x00, 0xa0, 0x2d, 0x2a, 0x00
0064299c  80 2d 2a 00 5c 2d 2a 00 ac 2c 00 00              .byte 0x80, 0x2d, 0x2a, 0x00, 0x5c, 0x2d, 0x2a, 0x00, 0xac, 0x2c, 0x00, 0x00

; FUNCTION 0x006429a8, declared_size=1104, range_size=1104, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZZN6glitch2ps9PSManager20createParticleSystemINS0_12GNPSParticleENS0_19GNPSGenerationModelIS3_EENS0_13GNPSSizeModelIS3_EENS0_14GNPSColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_15GNPSMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_13GNPSSpinModelIS3_EENS0_13GNPSLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinC1Ev
; demangled: glitch::ps::PSManager::createParticleSystem<glitch::ps::GNPSParticle, glitch::ps::GNPSGenerationModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSizeModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSColorModel<glitch::ps::GNPSParticle>, glitch::ps::PEmitterModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSMotionModel<glitch::ps::GNPSParticle>, glitch::ps::PForcesModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSSpinModel<glitch::ps::GNPSParticle>, glitch::ps::GNPSLifeModel<glitch::ps::GNPSParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::GNPSParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::GNPSParticle> > >()::Mixin::Mixin()
; decoder-mode: arm
006429a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006429ac  00 40 a0 e1                                      mov r4, r0
006429b0  84 d0 4d e2                                      sub sp, sp, #0x84
006429b4  10 74 9f e5                                      ldr r7, [pc, #0x410]
006429b8  8e 0f 80 e2                                      add r0, r0, #0x238
006429bc  e7 e2 ff eb                                      bl #0x63b560
006429c0  08 24 9f e5                                      ldr r2, [pc, #0x408]
006429c4  07 70 8f e0                                      add r7, pc, r7
006429c8  15 3d 0c e3                                      movw r3, #0xcd15
006429cc  02 80 97 e7                                      ldr r8, [r7, r2]
006429d0  00 50 a0 e3                                      mov r5, #0
006429d4  5b 37 40 e3                                      movt r3, #0x75b
006429d8  04 10 98 e9                                      ldmib r8, {r2, ip}
006429dc  0c 10 88 e2                                      add r1, r8, #0xc
006429e0  00 20 84 e5                                      str r2, [r4]
006429e4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006429e8  10 00 84 e2                                      add r0, r4, #0x10
006429ec  04 60 a0 e1                                      mov r6, r4
006429f0  02 c0 84 e7                                      str ip, [r4, r2]
006429f4  08 30 84 e5                                      str r3, [r4, #8]
006429f8  04 30 84 e5                                      str r3, [r4, #4]
006429fc  0c 50 84 e5                                      str r5, [r4, #0xc]
00642a00  09 fd ff eb                                      bl #0x641e2c
00642a04  14 10 88 e2                                      add r1, r8, #0x14
00642a08  2c 00 84 e2                                      add r0, r4, #0x2c
00642a0c  57 fd ff eb                                      bl #0x641f70
00642a10  1c 10 88 e2                                      add r1, r8, #0x1c
00642a14  40 00 84 e2                                      add r0, r4, #0x40
00642a18  a2 fd ff eb                                      bl #0x6420a8
00642a1c  24 10 88 e2                                      add r1, r8, #0x24
00642a20  90 00 84 e2                                      add r0, r4, #0x90
00642a24  e0 fa ff eb                                      bl #0x6415ac
00642a28  2c 10 88 e2                                      add r1, r8, #0x2c
00642a2c  a8 00 84 e2                                      add r0, r4, #0xa8
00642a30  3b fb ff eb                                      bl #0x641724
00642a34  34 30 98 e5                                      ldr r3, [r8, #0x34]
00642a38  38 20 98 e5                                      ldr r2, [r8, #0x38]
00642a3c  3c 10 88 e2                                      add r1, r8, #0x3c
00642a40  e4 30 84 e5                                      str r3, [r4, #0xe4]
00642a44  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00642a48  f8 00 84 e2                                      add r0, r4, #0xf8
00642a4c  71 af 84 e2                                      add sl, r4, #0x1c4
00642a50  03 30 84 e0                                      add r3, r4, r3
00642a54  e4 20 83 e5                                      str r2, [r3, #0xe4]
00642a58  e8 50 84 e5                                      str r5, [r4, #0xe8]
00642a5c  ec 50 84 e5                                      str r5, [r4, #0xec]
00642a60  f0 50 84 e5                                      str r5, [r4, #0xf0]
00642a64  f4 50 c4 e5                                      strb r5, [r4, #0xf4]
00642a68  db fb ff eb                                      bl #0x6419dc
00642a6c  44 10 88 e2                                      add r1, r8, #0x44
00642a70  62 0f 84 e2                                      add r0, r4, #0x188
00642a74  c0 fc ff eb                                      bl #0x641d7c
00642a78  4c 30 98 e5                                      ldr r3, [r8, #0x4c]
00642a7c  50 10 98 e5                                      ldr r1, [r8, #0x50]
00642a80  40 20 a0 e3                                      mov r2, #0x40
00642a84  94 31 a6 e5                                      str r3, [r6, #0x194]!
00642a88  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00642a8c  0a 00 a0 e1                                      mov r0, sl
00642a90  01 80 a0 e3                                      mov r8, #1
00642a94  03 10 86 e7                                      str r1, [r6, r3]
00642a98  6f 3f a0 e3                                      mov r3, #0x1bc
00642a9c  ff 10 a0 e3                                      mov r1, #0xff
00642aa0  b3 10 84 e1                                      strh r1, [r4, r3]
00642aa4  be 31 00 e3                                      movw r3, #0x1be
00642aa8  06 10 a0 e3                                      mov r1, #6
00642aac  b3 10 84 e1                                      strh r1, [r4, r3]
00642ab0  98 51 84 e5                                      str r5, [r4, #0x198]
00642ab4  9c 51 84 e5                                      str r5, [r4, #0x19c]
00642ab8  a4 51 84 e5                                      str r5, [r4, #0x1a4]
00642abc  a8 51 84 e5                                      str r5, [r4, #0x1a8]
00642ac0  ac 51 84 e5                                      str r5, [r4, #0x1ac]
00642ac4  b0 51 84 e5                                      str r5, [r4, #0x1b0]
00642ac8  b4 51 84 e5                                      str r5, [r4, #0x1b4]
00642acc  b8 51 84 e5                                      str r5, [r4, #0x1b8]
00642ad0  c0 51 84 e5                                      str r5, [r4, #0x1c0]
00642ad4  04 52 c4 e5                                      strb r5, [r4, #0x204]
00642ad8  05 10 a0 e1                                      mov r1, r5
00642adc  5f 2e f3 eb                                      bl #0x30e460
00642ae0  94 11 94 e5                                      ldr r1, [r4, #0x194]
00642ae4  bf 24 a0 e3                                      mov r2, #0xbf000000
00642ae8  fe 35 a0 e3                                      mov r3, #0x3f800000
00642aec  02 25 82 e2                                      add r2, r2, #0x800000
00642af0  10 22 84 e5                                      str r2, [r4, #0x210]
00642af4  1c 32 84 e5                                      str r3, [r4, #0x21c]
00642af8  c4 31 84 e5                                      str r3, [r4, #0x1c4]
00642afc  d8 31 84 e5                                      str r3, [r4, #0x1d8]
00642b00  ec 31 84 e5                                      str r3, [r4, #0x1ec]
00642b04  00 32 84 e5                                      str r3, [r4, #0x200]
00642b08  04 82 c4 e5                                      strb r8, [r4, #0x204]
00642b0c  08 22 84 e5                                      str r2, [r4, #0x208]
00642b10  0c 22 84 e5                                      str r2, [r4, #0x20c]
00642b14  14 32 84 e5                                      str r3, [r4, #0x214]
00642b18  18 32 84 e5                                      str r3, [r4, #0x218]
00642b1c  20 82 c4 e5                                      strb r8, [r4, #0x220]
00642b20  24 52 84 e5                                      str r5, [r4, #0x224]
00642b24  28 52 84 e5                                      str r5, [r4, #0x228]
00642b28  30 52 84 e5                                      str r5, [r4, #0x230]
00642b2c  34 52 84 e5                                      str r5, [r4, #0x234]
00642b30  0c 90 11 e5                                      ldr sb, [r1, #-0xc]
00642b34  98 12 9f e5                                      ldr r1, [pc, #0x298]
00642b38  09 90 86 e0                                      add sb, r6, sb
00642b3c  01 10 8f e0                                      add r1, pc, r1
00642b40  09 00 a0 e1                                      mov r0, sb
00642b44  40 e2 ff eb                                      bl #0x63b44c
00642b48  70 20 8d e2                                      add r2, sp, #0x70
00642b4c  22 3e 84 e2                                      add r3, r4, #0x220
00642b50  70 00 8d e5                                      str r0, [sp, #0x70]
00642b54  30 10 89 e2                                      add r1, sb, #0x30
00642b58  78 00 8d e2                                      add r0, sp, #0x78
00642b5c  74 30 8d e5                                      str r3, [sp, #0x74]
00642b60  61 df ff eb                                      bl #0x63a8ec
00642b64  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642b68  68 12 9f e5                                      ldr r1, [pc, #0x268]
00642b6c  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00642b70  01 10 8f e0                                      add r1, pc, r1
00642b74  09 90 86 e0                                      add sb, r6, sb
00642b78  09 00 a0 e1                                      mov r0, sb
00642b7c  32 e2 ff eb                                      bl #0x63b44c
00642b80  60 20 8d e2                                      add r2, sp, #0x60
00642b84  66 3f 84 e2                                      add r3, r4, #0x198
00642b88  60 00 8d e5                                      str r0, [sp, #0x60]
00642b8c  30 10 89 e2                                      add r1, sb, #0x30
00642b90  68 00 8d e2                                      add r0, sp, #0x68
00642b94  64 30 8d e5                                      str r3, [sp, #0x64]
00642b98  53 df ff eb                                      bl #0x63a8ec
00642b9c  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642ba0  34 12 9f e5                                      ldr r1, [pc, #0x234]
00642ba4  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00642ba8  01 10 8f e0                                      add r1, pc, r1
00642bac  09 90 86 e0                                      add sb, r6, sb
00642bb0  09 00 a0 e1                                      mov r0, sb
00642bb4  24 e2 ff eb                                      bl #0x63b44c
00642bb8  50 20 8d e2                                      add r2, sp, #0x50
00642bbc  8d 3f 84 e2                                      add r3, r4, #0x234
00642bc0  50 00 8d e5                                      str r0, [sp, #0x50]
00642bc4  30 10 89 e2                                      add r1, sb, #0x30
00642bc8  58 00 8d e2                                      add r0, sp, #0x58
00642bcc  54 30 8d e5                                      str r3, [sp, #0x54]
00642bd0  45 df ff eb                                      bl #0x63a8ec
00642bd4  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642bd8  00 12 9f e5                                      ldr r1, [pc, #0x200]
00642bdc  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00642be0  01 10 8f e0                                      add r1, pc, r1
00642be4  09 90 86 e0                                      add sb, r6, sb
00642be8  09 00 a0 e1                                      mov r0, sb
00642bec  16 e2 ff eb                                      bl #0x63b44c
00642bf0  40 20 8d e2                                      add r2, sp, #0x40
00642bf4  67 3f 84 e2                                      add r3, r4, #0x19c
00642bf8  40 00 8d e5                                      str r0, [sp, #0x40]
00642bfc  30 10 89 e2                                      add r1, sb, #0x30
00642c00  48 00 8d e2                                      add r0, sp, #0x48
00642c04  44 30 8d e5                                      str r3, [sp, #0x44]
00642c08  37 df ff eb                                      bl #0x63a8ec
00642c0c  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642c10  cc 11 9f e5                                      ldr r1, [pc, #0x1cc]
00642c14  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00642c18  01 10 8f e0                                      add r1, pc, r1
00642c1c  09 90 86 e0                                      add sb, r6, sb
00642c20  09 00 a0 e1                                      mov r0, sb
00642c24  08 e2 ff eb                                      bl #0x63b44c
00642c28  30 20 8d e2                                      add r2, sp, #0x30
00642c2c  89 3f 84 e2                                      add r3, r4, #0x224
00642c30  30 00 8d e5                                      str r0, [sp, #0x30]
00642c34  30 10 89 e2                                      add r1, sb, #0x30
00642c38  38 00 8d e2                                      add r0, sp, #0x38
00642c3c  34 30 8d e5                                      str r3, [sp, #0x34]
00642c40  29 df ff eb                                      bl #0x63a8ec
00642c44  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642c48  98 11 9f e5                                      ldr r1, [pc, #0x198]
00642c4c  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00642c50  01 10 8f e0                                      add r1, pc, r1
00642c54  09 90 86 e0                                      add sb, r6, sb
00642c58  09 00 a0 e1                                      mov r0, sb
00642c5c  fa e1 ff eb                                      bl #0x63b44c
00642c60  20 20 8d e2                                      add r2, sp, #0x20
00642c64  8b 3f 84 e2                                      add r3, r4, #0x22c
00642c68  20 00 8d e5                                      str r0, [sp, #0x20]
00642c6c  30 10 89 e2                                      add r1, sb, #0x30
00642c70  28 00 8d e2                                      add r0, sp, #0x28
00642c74  24 30 8d e5                                      str r3, [sp, #0x24]
00642c78  1b df ff eb                                      bl #0x63a8ec
00642c7c  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642c80  64 11 9f e5                                      ldr r1, [pc, #0x164]
00642c84  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00642c88  01 10 8f e0                                      add r1, pc, r1
00642c8c  09 90 86 e0                                      add sb, r6, sb
00642c90  09 00 a0 e1                                      mov r0, sb
00642c94  ec e1 ff eb                                      bl #0x63b44c
00642c98  0d 20 a0 e1                                      mov r2, sp
00642c9c  00 00 8d e5                                      str r0, [sp]
00642ca0  30 10 89 e2                                      add r1, sb, #0x30
00642ca4  08 00 8d e2                                      add r0, sp, #8
00642ca8  04 a0 8d e5                                      str sl, [sp, #4]
00642cac  0e df ff eb                                      bl #0x63a8ec
00642cb0  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642cb4  34 11 9f e5                                      ldr r1, [pc, #0x134]
00642cb8  0c a0 13 e5                                      ldr sl, [r3, #-0xc]
00642cbc  01 10 8f e0                                      add r1, pc, r1
00642cc0  0a a0 86 e0                                      add sl, r6, sl
00642cc4  0a 00 a0 e1                                      mov r0, sl
00642cc8  df e1 ff eb                                      bl #0x63b44c
00642ccc  82 3f 84 e2                                      add r3, r4, #0x208
00642cd0  10 00 8d e5                                      str r0, [sp, #0x10]
00642cd4  30 10 8a e2                                      add r1, sl, #0x30
00642cd8  18 00 8d e2                                      add r0, sp, #0x18
00642cdc  10 20 8d e2                                      add r2, sp, #0x10
00642ce0  14 30 8d e5                                      str r3, [sp, #0x14]
00642ce4  00 df ff eb                                      bl #0x63a8ec
00642ce8  94 21 94 e5                                      ldr r2, [r4, #0x194]
00642cec  00 30 a0 e3                                      mov r3, #0
00642cf0  3f c4 a0 e3                                      mov ip, #0x3f000000
00642cf4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00642cf8  05 10 a0 e1                                      mov r1, r5
00642cfc  08 00 a0 e1                                      mov r0, r8
00642d00  02 20 86 e0                                      add r2, r6, r2
00642d04  04 50 c2 e5                                      strb r5, [r2, #4]
00642d08  94 21 94 e5                                      ldr r2, [r4, #0x194]
00642d0c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00642d10  02 20 86 e0                                      add r2, r6, r2
00642d14  05 50 c2 e5                                      strb r5, [r2, #5]
00642d18  94 21 94 e5                                      ldr r2, [r4, #0x194]
00642d1c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00642d20  02 20 86 e0                                      add r2, r6, r2
00642d24  08 c0 82 e5                                      str ip, [r2, #8]
00642d28  10 30 82 e5                                      str r3, [r2, #0x10]
00642d2c  0c 30 82 e5                                      str r3, [r2, #0xc]
00642d30  94 21 94 e5                                      ldr r2, [r4, #0x194]
00642d34  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00642d38  02 20 86 e0                                      add r2, r6, r2
00642d3c  18 c0 82 e5                                      str ip, [r2, #0x18]
00642d40  1c 30 82 e5                                      str r3, [r2, #0x1c]
00642d44  14 30 82 e5                                      str r3, [r2, #0x14]
00642d48  94 31 94 e5                                      ldr r3, [r4, #0x194]
00642d4c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00642d50  03 60 86 e0                                      add r6, r6, r3
00642d54  20 50 c6 e5                                      strb r5, [r6, #0x20]
00642d58  13 c5 fb eb                                      bl #0x5341ac
00642d5c  90 30 9f e5                                      ldr r3, [pc, #0x90]
00642d60  30 02 84 e5                                      str r0, [r4, #0x230]
00642d64  04 00 a0 e1                                      mov r0, r4
00642d68  03 30 97 e7                                      ldr r3, [r7, r3]
00642d6c  4e bf 83 e2                                      add fp, r3, #0x138
00642d70  0c a0 83 e2                                      add sl, r3, #0xc
00642d74  7d 8f 83 e2                                      add r8, r3, #0x1f4
00642d78  30 70 83 e2                                      add r7, r3, #0x30
00642d7c  4c 60 83 e2                                      add r6, r3, #0x4c
00642d80  6c 50 83 e2                                      add r5, r3, #0x6c
00642d84  90 c0 83 e2                                      add ip, r3, #0x90
00642d88  ac 10 83 e2                                      add r1, r3, #0xac
00642d8c  cc 20 83 e2                                      add r2, r3, #0xcc
00642d90  f8 90 83 e2                                      add sb, r3, #0xf8
00642d94  46 3f 83 e2                                      add r3, r3, #0x118
00642d98  00 a0 84 e5                                      str sl, [r4]
00642d9c  38 82 84 e5                                      str r8, [r4, #0x238]
00642da0  10 70 84 e5                                      str r7, [r4, #0x10]
00642da4  2c 60 84 e5                                      str r6, [r4, #0x2c]
00642da8  40 50 84 e5                                      str r5, [r4, #0x40]
00642dac  90 c0 84 e5                                      str ip, [r4, #0x90]
00642db0  a8 10 84 e5                                      str r1, [r4, #0xa8]
00642db4  e4 20 84 e5                                      str r2, [r4, #0xe4]
00642db8  f8 90 84 e5                                      str sb, [r4, #0xf8]
00642dbc  88 31 84 e5                                      str r3, [r4, #0x188]
00642dc0  94 b1 84 e5                                      str fp, [r4, #0x194]
00642dc4  84 d0 8d e2                                      add sp, sp, #0x84
00642dc8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00642dcc  cc 20 35 00 c8 35 00 00 34 2a 2a 00 78 25 2a 00  .byte 0xcc, 0x20, 0x35, 0x00, 0xc8, 0x35, 0x00, 0x00, 0x34, 0x2a, 0x2a, 0x00, 0x78, 0x25, 0x2a, 0x00
00642ddc  d8 29 2a 00 08 26 2a 00 78 29 2a 00 50 29 2a 00  .byte 0xd8, 0x29, 0x2a, 0x00, 0x08, 0x26, 0x2a, 0x00, 0x78, 0x29, 0x2a, 0x00, 0x50, 0x29, 0x2a, 0x00
00642dec  30 29 2a 00 0c 29 2a 00 fc 41 00 00              .byte 0x30, 0x29, 0x2a, 0x00, 0x0c, 0x29, 0x2a, 0x00, 0xfc, 0x41, 0x00, 0x00

; FUNCTION 0x00642df8, declared_size=96, range_size=96, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZN6glitch2ps9PSManager16createGNPSSystemEb
; demangled: glitch::ps::PSManager::createGNPSSystem(bool)
; decoder-mode: arm
00642df8  70 40 2d e9                                      push {r4, r5, r6, lr}
00642dfc  00 50 51 e2                                      subs r5, r1, #0
00642e00  09 00 00 1a                                      bne #0x642e2c
00642e04  a5 0f a0 e3                                      mov r0, #0x294
00642e08  e7 c4 fb eb                                      bl #0x5341ac
00642e0c  05 10 a0 e1                                      mov r1, r5
00642e10  00 40 a0 e1                                      mov r4, r0
00642e14  8e 2f a0 e3                                      mov r2, #0x238
00642e18  90 2d f3 eb                                      bl #0x30e460
00642e1c  04 00 a0 e1                                      mov r0, r4
00642e20  e0 fe ff eb                                      bl #0x6429a8
00642e24  04 00 a0 e1                                      mov r0, r4
00642e28  70 80 bd e8                                      pop {r4, r5, r6, pc}
00642e2c  00 10 a0 e3                                      mov r1, #0
00642e30  a5 0f a0 e3                                      mov r0, #0x294
00642e34  dc c4 fb eb                                      bl #0x5341ac
00642e38  00 10 a0 e3                                      mov r1, #0
00642e3c  00 40 a0 e1                                      mov r4, r0
00642e40  8e 2f a0 e3                                      mov r2, #0x238
00642e44  85 2d f3 eb                                      bl #0x30e460
00642e48  04 00 a0 e1                                      mov r0, r4
00642e4c  c1 fd ff eb                                      bl #0x642558
00642e50  04 00 a0 e1                                      mov r0, r4
00642e54  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0064f40c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn220_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f40c  dc 00 40 e2                                      sub r0, r0, #0xdc
0064f410  0f 00 00 ea                                      b #0x64f454

; FUNCTION 0x0064f414, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn208_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f414  d0 00 40 e2                                      sub r0, r0, #0xd0
0064f418  0d 00 00 ea                                      b #0x64f454

; FUNCTION 0x0064f41c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn168_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f41c  a8 00 40 e2                                      sub r0, r0, #0xa8
0064f420  0b 00 00 ea                                      b #0x64f454

; FUNCTION 0x0064f424, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn148_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f424  94 00 40 e2                                      sub r0, r0, #0x94
0064f428  09 00 00 ea                                      b #0x64f454

; FUNCTION 0x0064f42c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn120_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f42c  78 00 40 e2                                      sub r0, r0, #0x78
0064f430  07 00 00 ea                                      b #0x64f454

; FUNCTION 0x0064f434, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn96_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f434  60 00 40 e2                                      sub r0, r0, #0x60
0064f438  05 00 00 ea                                      b #0x64f454

; FUNCTION 0x0064f43c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn56_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f43c  38 00 40 e2                                      sub r0, r0, #0x38
0064f440  03 00 00 ea                                      b #0x64f454

; FUNCTION 0x0064f444, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn36_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f444  24 00 40 e2                                      sub r0, r0, #0x24
0064f448  01 00 00 ea                                      b #0x64f454

; FUNCTION 0x0064f44c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn16_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f44c  10 00 40 e2                                      sub r0, r0, #0x10
0064f450  ff ff ff ea                                      b #0x64f454

; FUNCTION 0x0064f454, declared_size=544, range_size=544, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f454  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064f458  08 52 9f e5                                      ldr r5, [pc, #0x208]
0064f45c  08 72 9f e5                                      ldr r7, [pc, #0x208]
0064f460  08 32 9f e5                                      ldr r3, [pc, #0x208]
0064f464  05 50 8f e0                                      add r5, pc, r5
0064f468  07 20 95 e7                                      ldr r2, [r5, r7]
0064f46c  03 30 95 e7                                      ldr r3, [r5, r3]
0064f470  0c d0 4d e2                                      sub sp, sp, #0xc
0064f474  4c 10 92 e5                                      ldr r1, [r2, #0x4c]
0064f478  00 40 a0 e1                                      mov r4, r0
0064f47c  6c e0 83 e2                                      add lr, r3, #0x6c
0064f480  00 10 8d e5                                      str r1, [sp]
0064f484  46 1f 83 e2                                      add r1, r3, #0x118
0064f488  04 10 8d e5                                      str r1, [sp, #4]
0064f48c  90 c0 83 e2                                      add ip, r3, #0x90
0064f490  4c 80 83 e2                                      add r8, r3, #0x4c
0064f494  ac 00 83 e2                                      add r0, r3, #0xac
0064f498  cc 10 83 e2                                      add r1, r3, #0xcc
0064f49c  0c b0 83 e2                                      add fp, r3, #0xc
0064f4a0  7d 9f 83 e2                                      add sb, r3, #0x1f4
0064f4a4  30 a0 83 e2                                      add sl, r3, #0x30
0064f4a8  04 60 a0 e1                                      mov r6, r4
0064f4ac  f8 30 83 e2                                      add r3, r3, #0xf8
0064f4b0  80 b1 86 e4                                      str fp, [r6], #0x180
0064f4b4  24 80 84 e5                                      str r8, [r4, #0x24]
0064f4b8  38 e0 84 e5                                      str lr, [r4, #0x38]
0064f4bc  60 c0 84 e5                                      str ip, [r4, #0x60]
0064f4c0  80 91 84 e5                                      str sb, [r4, #0x180]
0064f4c4  10 a0 84 e5                                      str sl, [r4, #0x10]
0064f4c8  78 00 84 e5                                      str r0, [r4, #0x78]
0064f4cc  94 10 84 e5                                      str r1, [r4, #0x94]
0064f4d0  a8 30 84 e5                                      str r3, [r4, #0xa8]
0064f4d4  04 30 9d e5                                      ldr r3, [sp, #4]
0064f4d8  50 20 92 e5                                      ldr r2, [r2, #0x50]
0064f4dc  dc 80 84 e2                                      add r8, r4, #0xdc
0064f4e0  d0 30 84 e5                                      str r3, [r4, #0xd0]
0064f4e4  00 10 9d e5                                      ldr r1, [sp]
0064f4e8  dc 10 84 e5                                      str r1, [r4, #0xdc]
0064f4ec  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
0064f4f0  03 20 88 e7                                      str r2, [r8, r3]
0064f4f4  9c 00 98 e5                                      ldr r0, [r8, #0x9c]
0064f4f8  6c fb f2 eb                                      bl #0x30e2b0
0064f4fc  00 30 a0 e3                                      mov r3, #0
0064f500  08 00 a0 e1                                      mov r0, r8
0064f504  9c 30 88 e5                                      str r3, [r8, #0x9c]
0064f508  a4 f9 ff eb                                      bl #0x64dba0
0064f50c  a0 00 98 e5                                      ldr r0, [r8, #0xa0]
0064f510  00 00 50 e3                                      cmp r0, #0
0064f514  00 00 00 0a                                      beq #0x64f51c
0064f518  19 38 f3 eb                                      bl #0x31d584
0064f51c  14 00 98 e5                                      ldr r0, [r8, #0x14]
0064f520  00 00 50 e3                                      cmp r0, #0
0064f524  00 00 00 0a                                      beq #0x64f52c
0064f528  15 38 f3 eb                                      bl #0x31d584
0064f52c  10 a0 98 e5                                      ldr sl, [r8, #0x10]
0064f530  00 00 5a e3                                      cmp sl, #0
0064f534  04 00 00 0a                                      beq #0x64f54c
0064f538  00 30 9a e5                                      ldr r3, [sl]
0064f53c  01 30 43 e2                                      sub r3, r3, #1
0064f540  00 00 53 e3                                      cmp r3, #0
0064f544  00 30 8a e5                                      str r3, [sl]
0064f548  41 00 00 0a                                      beq #0x64f654
0064f54c  08 00 88 e2                                      add r0, r8, #8
0064f550  a4 05 f3 eb                                      bl #0x310be8
0064f554  07 80 95 e7                                      ldr r8, [r5, r7]
0064f558  d0 e0 84 e2                                      add lr, r4, #0xd0
0064f55c  a8 20 84 e2                                      add r2, r4, #0xa8
0064f560  44 10 98 e5                                      ldr r1, [r8, #0x44]
0064f564  3c 30 98 e5                                      ldr r3, [r8, #0x3c]
0064f568  48 a0 98 e5                                      ldr sl, [r8, #0x48]
0064f56c  d0 10 84 e5                                      str r1, [r4, #0xd0]
0064f570  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0064f574  40 c0 98 e5                                      ldr ip, [r8, #0x40]
0064f578  94 00 84 e2                                      add r0, r4, #0x94
0064f57c  01 a0 8e e7                                      str sl, [lr, r1]
0064f580  a8 30 84 e5                                      str r3, [r4, #0xa8]
0064f584  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064f588  34 10 88 e2                                      add r1, r8, #0x34
0064f58c  03 c0 82 e7                                      str ip, [r2, r3]
0064f590  5e f8 ff eb                                      bl #0x64d710
0064f594  2c 20 98 e5                                      ldr r2, [r8, #0x2c]
0064f598  24 30 98 e5                                      ldr r3, [r8, #0x24]
0064f59c  30 c0 98 e5                                      ldr ip, [r8, #0x30]
0064f5a0  78 20 84 e5                                      str r2, [r4, #0x78]
0064f5a4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0064f5a8  78 00 84 e2                                      add r0, r4, #0x78
0064f5ac  28 10 98 e5                                      ldr r1, [r8, #0x28]
0064f5b0  02 c0 80 e7                                      str ip, [r0, r2]
0064f5b4  60 30 84 e5                                      str r3, [r4, #0x60]
0064f5b8  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
0064f5bc  60 30 84 e2                                      add r3, r4, #0x60
0064f5c0  02 10 83 e7                                      str r1, [r3, r2]
0064f5c4  04 30 93 e5                                      ldr r3, [r3, #4]
0064f5c8  00 00 53 e3                                      cmp r3, #0
0064f5cc  03 00 00 0a                                      beq #0x64f5e0
0064f5d0  03 00 a0 e1                                      mov r0, r3
0064f5d4  00 30 93 e5                                      ldr r3, [r3]
0064f5d8  0f e0 a0 e1                                      mov lr, pc
0064f5dc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0064f5e0  07 30 95 e7                                      ldr r3, [r5, r7]
0064f5e4  38 e0 84 e2                                      add lr, r4, #0x38
0064f5e8  24 c0 84 e2                                      add ip, r4, #0x24
0064f5ec  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0064f5f0  14 10 93 e5                                      ldr r1, [r3, #0x14]
0064f5f4  20 70 93 e5                                      ldr r7, [r3, #0x20]
0064f5f8  38 20 84 e5                                      str r2, [r4, #0x38]
0064f5fc  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0064f600  18 50 93 e5                                      ldr r5, [r3, #0x18]
0064f604  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0064f608  00 70 8e e7                                      str r7, [lr, r0]
0064f60c  24 10 84 e5                                      str r1, [r4, #0x24]
0064f610  0c 00 11 e5                                      ldr r0, [r1, #-0xc]
0064f614  10 e0 93 e5                                      ldr lr, [r3, #0x10]
0064f618  04 10 93 e5                                      ldr r1, [r3, #4]
0064f61c  00 50 8c e7                                      str r5, [ip, r0]
0064f620  10 20 84 e5                                      str r2, [r4, #0x10]
0064f624  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0064f628  10 c0 84 e2                                      add ip, r4, #0x10
0064f62c  08 20 93 e5                                      ldr r2, [r3, #8]
0064f630  00 e0 8c e7                                      str lr, [ip, r0]
0064f634  00 10 84 e5                                      str r1, [r4]
0064f638  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
0064f63c  06 00 a0 e1                                      mov r0, r6
0064f640  03 20 84 e7                                      str r2, [r4, r3]
0064f644  13 f7 ff eb                                      bl #0x64d298
0064f648  04 00 a0 e1                                      mov r0, r4
0064f64c  0c d0 8d e2                                      add sp, sp, #0xc
0064f650  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064f654  0a 00 a0 e1                                      mov r0, sl
0064f658  ef 44 fd eb                                      bl #0x5a0a1c
0064f65c  0a 00 a0 e1                                      mov r0, sl
0064f660  12 fb f2 eb                                      bl #0x30e2b0
0064f664  b8 ff ff ea                                      b #0x64f54c
; mapping-symbol data/literal pool
0064f668  2c 56 34 00 3c 12 00 00 94 1b 00 00              .byte 0x2c, 0x56, 0x34, 0x00, 0x3c, 0x12, 0x00, 0x00, 0x94, 0x1b, 0x00, 0x00

; FUNCTION 0x0064f674, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZTv0_n12_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f674  00 30 90 e5                                      ldr r3, [r0]
0064f678  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064f67c  03 00 80 e0                                      add r0, r0, r3
0064f680  73 ff ff ea                                      b #0x64f454

; FUNCTION 0x0064f684, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn220_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f684  dc 00 40 e2                                      sub r0, r0, #0xdc
0064f688  0f 00 00 ea                                      b #0x64f6cc

; FUNCTION 0x0064f68c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn208_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f68c  d0 00 40 e2                                      sub r0, r0, #0xd0
0064f690  0d 00 00 ea                                      b #0x64f6cc

; FUNCTION 0x0064f694, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn168_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f694  a8 00 40 e2                                      sub r0, r0, #0xa8
0064f698  0b 00 00 ea                                      b #0x64f6cc

; FUNCTION 0x0064f69c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn148_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f69c  94 00 40 e2                                      sub r0, r0, #0x94
0064f6a0  09 00 00 ea                                      b #0x64f6cc

; FUNCTION 0x0064f6a4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn120_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f6a4  78 00 40 e2                                      sub r0, r0, #0x78
0064f6a8  07 00 00 ea                                      b #0x64f6cc

; FUNCTION 0x0064f6ac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn96_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f6ac  60 00 40 e2                                      sub r0, r0, #0x60
0064f6b0  05 00 00 ea                                      b #0x64f6cc

; FUNCTION 0x0064f6b4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn56_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f6b4  38 00 40 e2                                      sub r0, r0, #0x38
0064f6b8  03 00 00 ea                                      b #0x64f6cc

; FUNCTION 0x0064f6bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn36_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f6bc  24 00 40 e2                                      sub r0, r0, #0x24
0064f6c0  01 00 00 ea                                      b #0x64f6cc

; FUNCTION 0x0064f6c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn16_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f6c4  10 00 40 e2                                      sub r0, r0, #0x10
0064f6c8  ff ff ff ea                                      b #0x64f6cc

; FUNCTION 0x0064f6cc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f6cc  10 40 2d e9                                      push {r4, lr}
0064f6d0  00 40 a0 e1                                      mov r4, r0
0064f6d4  5e ff ff eb                                      bl #0x64f454
0064f6d8  04 00 a0 e1                                      mov r0, r4
0064f6dc  f3 fa f2 eb                                      bl #0x30e2b0
0064f6e0  04 00 a0 e1                                      mov r0, r4
0064f6e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0064f6e8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZTv0_n12_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0064f6e8  00 30 90 e5                                      ldr r3, [r0]
0064f6ec  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064f6f0  03 00 80 e0                                      add r0, r0, r3
0064f6f4  f4 ff ff ea                                      b #0x64f6cc

; FUNCTION 0x006536bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn220_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
006536bc  dc 00 40 e2                                      sub r0, r0, #0xdc
006536c0  0f 00 00 ea                                      b #0x653704

; FUNCTION 0x006536c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn208_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
006536c4  d0 00 40 e2                                      sub r0, r0, #0xd0
006536c8  0d 00 00 ea                                      b #0x653704

; FUNCTION 0x006536cc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn168_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
006536cc  a8 00 40 e2                                      sub r0, r0, #0xa8
006536d0  0b 00 00 ea                                      b #0x653704

; FUNCTION 0x006536d4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn148_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
006536d4  94 00 40 e2                                      sub r0, r0, #0x94
006536d8  09 00 00 ea                                      b #0x653704

; FUNCTION 0x006536dc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn120_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
006536dc  78 00 40 e2                                      sub r0, r0, #0x78
006536e0  07 00 00 ea                                      b #0x653704

; FUNCTION 0x006536e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn96_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
006536e4  60 00 40 e2                                      sub r0, r0, #0x60
006536e8  05 00 00 ea                                      b #0x653704

; FUNCTION 0x006536ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn56_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
006536ec  38 00 40 e2                                      sub r0, r0, #0x38
006536f0  03 00 00 ea                                      b #0x653704

; FUNCTION 0x006536f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn36_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
006536f4  24 00 40 e2                                      sub r0, r0, #0x24
006536f8  01 00 00 ea                                      b #0x653704

; FUNCTION 0x006536fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn16_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
006536fc  10 00 40 e2                                      sub r0, r0, #0x10
00653700  ff ff ff ea                                      b #0x653704

; FUNCTION 0x00653704, declared_size=544, range_size=544, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00653704  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00653708  08 52 9f e5                                      ldr r5, [pc, #0x208]
0065370c  08 72 9f e5                                      ldr r7, [pc, #0x208]
00653710  08 32 9f e5                                      ldr r3, [pc, #0x208]
00653714  05 50 8f e0                                      add r5, pc, r5
00653718  07 20 95 e7                                      ldr r2, [r5, r7]
0065371c  03 30 95 e7                                      ldr r3, [r5, r3]
00653720  0c d0 4d e2                                      sub sp, sp, #0xc
00653724  4c 10 92 e5                                      ldr r1, [r2, #0x4c]
00653728  00 40 a0 e1                                      mov r4, r0
0065372c  6c e0 83 e2                                      add lr, r3, #0x6c
00653730  00 10 8d e5                                      str r1, [sp]
00653734  46 1f 83 e2                                      add r1, r3, #0x118
00653738  04 10 8d e5                                      str r1, [sp, #4]
0065373c  90 c0 83 e2                                      add ip, r3, #0x90
00653740  4c 80 83 e2                                      add r8, r3, #0x4c
00653744  ac 00 83 e2                                      add r0, r3, #0xac
00653748  cc 10 83 e2                                      add r1, r3, #0xcc
0065374c  0c b0 83 e2                                      add fp, r3, #0xc
00653750  7d 9f 83 e2                                      add sb, r3, #0x1f4
00653754  30 a0 83 e2                                      add sl, r3, #0x30
00653758  04 60 a0 e1                                      mov r6, r4
0065375c  f8 30 83 e2                                      add r3, r3, #0xf8
00653760  80 b1 86 e4                                      str fp, [r6], #0x180
00653764  24 80 84 e5                                      str r8, [r4, #0x24]
00653768  38 e0 84 e5                                      str lr, [r4, #0x38]
0065376c  60 c0 84 e5                                      str ip, [r4, #0x60]
00653770  80 91 84 e5                                      str sb, [r4, #0x180]
00653774  10 a0 84 e5                                      str sl, [r4, #0x10]
00653778  78 00 84 e5                                      str r0, [r4, #0x78]
0065377c  94 10 84 e5                                      str r1, [r4, #0x94]
00653780  a8 30 84 e5                                      str r3, [r4, #0xa8]
00653784  04 30 9d e5                                      ldr r3, [sp, #4]
00653788  50 20 92 e5                                      ldr r2, [r2, #0x50]
0065378c  dc 80 84 e2                                      add r8, r4, #0xdc
00653790  d0 30 84 e5                                      str r3, [r4, #0xd0]
00653794  00 10 9d e5                                      ldr r1, [sp]
00653798  dc 10 84 e5                                      str r1, [r4, #0xdc]
0065379c  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
006537a0  03 20 88 e7                                      str r2, [r8, r3]
006537a4  9c 00 98 e5                                      ldr r0, [r8, #0x9c]
006537a8  c0 ea f2 eb                                      bl #0x30e2b0
006537ac  00 30 a0 e3                                      mov r3, #0
006537b0  08 00 a0 e1                                      mov r0, r8
006537b4  9c 30 88 e5                                      str r3, [r8, #0x9c]
006537b8  1f e9 ff eb                                      bl #0x64dc3c
006537bc  a0 00 98 e5                                      ldr r0, [r8, #0xa0]
006537c0  00 00 50 e3                                      cmp r0, #0
006537c4  00 00 00 0a                                      beq #0x6537cc
006537c8  6d 27 f3 eb                                      bl #0x31d584
006537cc  14 00 98 e5                                      ldr r0, [r8, #0x14]
006537d0  00 00 50 e3                                      cmp r0, #0
006537d4  00 00 00 0a                                      beq #0x6537dc
006537d8  69 27 f3 eb                                      bl #0x31d584
006537dc  10 a0 98 e5                                      ldr sl, [r8, #0x10]
006537e0  00 00 5a e3                                      cmp sl, #0
006537e4  04 00 00 0a                                      beq #0x6537fc
006537e8  00 30 9a e5                                      ldr r3, [sl]
006537ec  01 30 43 e2                                      sub r3, r3, #1
006537f0  00 00 53 e3                                      cmp r3, #0
006537f4  00 30 8a e5                                      str r3, [sl]
006537f8  41 00 00 0a                                      beq #0x653904
006537fc  08 00 88 e2                                      add r0, r8, #8
00653800  f8 f4 f2 eb                                      bl #0x310be8
00653804  07 80 95 e7                                      ldr r8, [r5, r7]
00653808  d0 e0 84 e2                                      add lr, r4, #0xd0
0065380c  a8 20 84 e2                                      add r2, r4, #0xa8
00653810  44 10 98 e5                                      ldr r1, [r8, #0x44]
00653814  3c 30 98 e5                                      ldr r3, [r8, #0x3c]
00653818  48 a0 98 e5                                      ldr sl, [r8, #0x48]
0065381c  d0 10 84 e5                                      str r1, [r4, #0xd0]
00653820  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
00653824  40 c0 98 e5                                      ldr ip, [r8, #0x40]
00653828  94 00 84 e2                                      add r0, r4, #0x94
0065382c  01 a0 8e e7                                      str sl, [lr, r1]
00653830  a8 30 84 e5                                      str r3, [r4, #0xa8]
00653834  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00653838  34 10 88 e2                                      add r1, r8, #0x34
0065383c  03 c0 82 e7                                      str ip, [r2, r3]
00653840  b2 e7 ff eb                                      bl #0x64d710
00653844  2c 20 98 e5                                      ldr r2, [r8, #0x2c]
00653848  24 30 98 e5                                      ldr r3, [r8, #0x24]
0065384c  30 c0 98 e5                                      ldr ip, [r8, #0x30]
00653850  78 20 84 e5                                      str r2, [r4, #0x78]
00653854  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00653858  78 00 84 e2                                      add r0, r4, #0x78
0065385c  28 10 98 e5                                      ldr r1, [r8, #0x28]
00653860  02 c0 80 e7                                      str ip, [r0, r2]
00653864  60 30 84 e5                                      str r3, [r4, #0x60]
00653868  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
0065386c  60 30 84 e2                                      add r3, r4, #0x60
00653870  02 10 83 e7                                      str r1, [r3, r2]
00653874  04 30 93 e5                                      ldr r3, [r3, #4]
00653878  00 00 53 e3                                      cmp r3, #0
0065387c  03 00 00 0a                                      beq #0x653890
00653880  03 00 a0 e1                                      mov r0, r3
00653884  00 30 93 e5                                      ldr r3, [r3]
00653888  0f e0 a0 e1                                      mov lr, pc
0065388c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00653890  07 30 95 e7                                      ldr r3, [r5, r7]
00653894  38 e0 84 e2                                      add lr, r4, #0x38
00653898  24 c0 84 e2                                      add ip, r4, #0x24
0065389c  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
006538a0  14 10 93 e5                                      ldr r1, [r3, #0x14]
006538a4  20 70 93 e5                                      ldr r7, [r3, #0x20]
006538a8  38 20 84 e5                                      str r2, [r4, #0x38]
006538ac  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006538b0  18 50 93 e5                                      ldr r5, [r3, #0x18]
006538b4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006538b8  00 70 8e e7                                      str r7, [lr, r0]
006538bc  24 10 84 e5                                      str r1, [r4, #0x24]
006538c0  0c 00 11 e5                                      ldr r0, [r1, #-0xc]
006538c4  10 e0 93 e5                                      ldr lr, [r3, #0x10]
006538c8  04 10 93 e5                                      ldr r1, [r3, #4]
006538cc  00 50 8c e7                                      str r5, [ip, r0]
006538d0  10 20 84 e5                                      str r2, [r4, #0x10]
006538d4  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006538d8  10 c0 84 e2                                      add ip, r4, #0x10
006538dc  08 20 93 e5                                      ldr r2, [r3, #8]
006538e0  00 e0 8c e7                                      str lr, [ip, r0]
006538e4  00 10 84 e5                                      str r1, [r4]
006538e8  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
006538ec  06 00 a0 e1                                      mov r0, r6
006538f0  03 20 84 e7                                      str r2, [r4, r3]
006538f4  67 e6 ff eb                                      bl #0x64d298
006538f8  04 00 a0 e1                                      mov r0, r4
006538fc  0c d0 8d e2                                      add sp, sp, #0xc
00653900  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00653904  0a 00 a0 e1                                      mov r0, sl
00653908  43 34 fd eb                                      bl #0x5a0a1c
0065390c  0a 00 a0 e1                                      mov r0, sl
00653910  66 ea f2 eb                                      bl #0x30e2b0
00653914  b8 ff ff ea                                      b #0x6537fc
; mapping-symbol data/literal pool
00653918  7c 13 34 00 b4 08 00 00 24 1a 00 00              .byte 0x7c, 0x13, 0x34, 0x00, 0xb4, 0x08, 0x00, 0x00, 0x24, 0x1a, 0x00, 0x00

; FUNCTION 0x00653924, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZTv0_n12_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
; demangled: virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00653924  00 30 90 e5                                      ldr r3, [r0]
00653928  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065392c  03 00 80 e0                                      add r0, r0, r3
00653930  73 ff ff ea                                      b #0x653704

; FUNCTION 0x00653934, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn220_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00653934  dc 00 40 e2                                      sub r0, r0, #0xdc
00653938  0f 00 00 ea                                      b #0x65397c

; FUNCTION 0x0065393c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn208_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0065393c  d0 00 40 e2                                      sub r0, r0, #0xd0
00653940  0d 00 00 ea                                      b #0x65397c

; FUNCTION 0x00653944, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn168_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00653944  a8 00 40 e2                                      sub r0, r0, #0xa8
00653948  0b 00 00 ea                                      b #0x65397c

; FUNCTION 0x0065394c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn148_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0065394c  94 00 40 e2                                      sub r0, r0, #0x94
00653950  09 00 00 ea                                      b #0x65397c

; FUNCTION 0x00653954, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn120_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00653954  78 00 40 e2                                      sub r0, r0, #0x78
00653958  07 00 00 ea                                      b #0x65397c

; FUNCTION 0x0065395c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn96_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0065395c  60 00 40 e2                                      sub r0, r0, #0x60
00653960  05 00 00 ea                                      b #0x65397c

; FUNCTION 0x00653964, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn56_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00653964  38 00 40 e2                                      sub r0, r0, #0x38
00653968  03 00 00 ea                                      b #0x65397c

; FUNCTION 0x0065396c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn36_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0065396c  24 00 40 e2                                      sub r0, r0, #0x24
00653970  01 00 00 ea                                      b #0x65397c

; FUNCTION 0x00653974, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZThn16_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: non-virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00653974  10 00 40 e2                                      sub r0, r0, #0x10
00653978  ff ff ff ea                                      b #0x65397c

; FUNCTION 0x0065397c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
0065397c  10 40 2d e9                                      push {r4, lr}
00653980  00 40 a0 e1                                      mov r4, r0
00653984  5e ff ff eb                                      bl #0x653704
00653988  04 00 a0 e1                                      mov r0, r4
0065398c  47 ea f2 eb                                      bl #0x30e2b0
00653990  04 00 a0 e1                                      mov r0, r4
00653994  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00653998, declared_size=16, range_size=16, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZTv0_n12_ZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD0Ev
; demangled: virtual thunk to glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::~Mixin()
; decoder-mode: arm
00653998  00 30 90 e5                                      ldr r3, [r0]
0065399c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006539a0  03 00 80 e0                                      add r0, r0, r3
006539a4  f4 ff ff ea                                      b #0x65397c

; FUNCTION 0x00654a74, declared_size=1104, range_size=1104, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinC1Ev
; demangled: glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSBillboardColorBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardNormalBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardPositionBaker<glitch::ps::SParticle>, glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::Mixin()
; decoder-mode: arm
00654a74  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00654a78  00 40 a0 e1                                      mov r4, r0
00654a7c  84 d0 4d e2                                      sub sp, sp, #0x84
00654a80  10 74 9f e5                                      ldr r7, [pc, #0x410]
00654a84  06 0d 80 e2                                      add r0, r0, #0x180
00654a88  d0 e1 ff eb                                      bl #0x64d1d0
00654a8c  08 24 9f e5                                      ldr r2, [pc, #0x408]
00654a90  07 70 8f e0                                      add r7, pc, r7
00654a94  15 3d 0c e3                                      movw r3, #0xcd15
00654a98  02 80 97 e7                                      ldr r8, [r7, r2]
00654a9c  00 50 a0 e3                                      mov r5, #0
00654aa0  5b 37 40 e3                                      movt r3, #0x75b
00654aa4  04 10 98 e9                                      ldmib r8, {r2, ip}
00654aa8  0c 10 88 e2                                      add r1, r8, #0xc
00654aac  00 20 84 e5                                      str r2, [r4]
00654ab0  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00654ab4  10 00 84 e2                                      add r0, r4, #0x10
00654ab8  04 60 a0 e1                                      mov r6, r4
00654abc  02 c0 84 e7                                      str ip, [r4, r2]
00654ac0  08 30 84 e5                                      str r3, [r4, #8]
00654ac4  04 30 84 e5                                      str r3, [r4, #4]
00654ac8  0c 50 84 e5                                      str r5, [r4, #0xc]
00654acc  bf fe ff eb                                      bl #0x6545d0
00654ad0  14 10 88 e2                                      add r1, r8, #0x14
00654ad4  24 00 84 e2                                      add r0, r4, #0x24
00654ad8  46 fe ff eb                                      bl #0x6543f8
00654adc  1c 10 88 e2                                      add r1, r8, #0x1c
00654ae0  38 00 84 e2                                      add r0, r4, #0x38
00654ae4  e9 fe ff eb                                      bl #0x654690
00654ae8  24 10 88 e2                                      add r1, r8, #0x24
00654aec  60 00 84 e2                                      add r0, r4, #0x60
00654af0  81 ff ff eb                                      bl #0x6548fc
00654af4  2c 10 88 e2                                      add r1, r8, #0x2c
00654af8  78 00 84 e2                                      add r0, r4, #0x78
00654afc  7a fd ff eb                                      bl #0x6540ec
00654b00  34 30 98 e5                                      ldr r3, [r8, #0x34]
00654b04  38 20 98 e5                                      ldr r2, [r8, #0x38]
00654b08  3c 10 88 e2                                      add r1, r8, #0x3c
00654b0c  94 30 84 e5                                      str r3, [r4, #0x94]
00654b10  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00654b14  a8 00 84 e2                                      add r0, r4, #0xa8
00654b18  43 af 84 e2                                      add sl, r4, #0x10c
00654b1c  03 30 84 e0                                      add r3, r4, r3
00654b20  94 20 83 e5                                      str r2, [r3, #0x94]
00654b24  98 50 84 e5                                      str r5, [r4, #0x98]
00654b28  9c 50 84 e5                                      str r5, [r4, #0x9c]
00654b2c  a0 50 84 e5                                      str r5, [r4, #0xa0]
00654b30  a4 50 c4 e5                                      strb r5, [r4, #0xa4]
00654b34  b7 fd ff eb                                      bl #0x654218
00654b38  44 10 88 e2                                      add r1, r8, #0x44
00654b3c  d0 00 84 e2                                      add r0, r4, #0xd0
00654b40  79 fe ff eb                                      bl #0x65452c
00654b44  4c 30 98 e5                                      ldr r3, [r8, #0x4c]
00654b48  50 10 98 e5                                      ldr r1, [r8, #0x50]
00654b4c  40 20 a0 e3                                      mov r2, #0x40
00654b50  dc 30 a6 e5                                      str r3, [r6, #0xdc]!
00654b54  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00654b58  0a 00 a0 e1                                      mov r0, sl
00654b5c  01 80 a0 e3                                      mov r8, #1
00654b60  03 10 86 e7                                      str r1, [r6, r3]
00654b64  41 3f a0 e3                                      mov r3, #0x104
00654b68  ff 10 a0 e3                                      mov r1, #0xff
00654b6c  b3 10 84 e1                                      strh r1, [r4, r3]
00654b70  06 31 00 e3                                      movw r3, #0x106
00654b74  06 10 a0 e3                                      mov r1, #6
00654b78  b3 10 84 e1                                      strh r1, [r4, r3]
00654b7c  e0 50 84 e5                                      str r5, [r4, #0xe0]
00654b80  e4 50 84 e5                                      str r5, [r4, #0xe4]
00654b84  ec 50 84 e5                                      str r5, [r4, #0xec]
00654b88  f0 50 84 e5                                      str r5, [r4, #0xf0]
00654b8c  f4 50 84 e5                                      str r5, [r4, #0xf4]
00654b90  f8 50 84 e5                                      str r5, [r4, #0xf8]
00654b94  fc 50 84 e5                                      str r5, [r4, #0xfc]
00654b98  00 51 84 e5                                      str r5, [r4, #0x100]
00654b9c  08 51 84 e5                                      str r5, [r4, #0x108]
00654ba0  4c 51 c4 e5                                      strb r5, [r4, #0x14c]
00654ba4  05 10 a0 e1                                      mov r1, r5
00654ba8  2c e6 f2 eb                                      bl #0x30e460
00654bac  dc 10 94 e5                                      ldr r1, [r4, #0xdc]
00654bb0  bf 24 a0 e3                                      mov r2, #0xbf000000
00654bb4  fe 35 a0 e3                                      mov r3, #0x3f800000
00654bb8  02 25 82 e2                                      add r2, r2, #0x800000
00654bbc  58 21 84 e5                                      str r2, [r4, #0x158]
00654bc0  64 31 84 e5                                      str r3, [r4, #0x164]
00654bc4  0c 31 84 e5                                      str r3, [r4, #0x10c]
00654bc8  20 31 84 e5                                      str r3, [r4, #0x120]
00654bcc  34 31 84 e5                                      str r3, [r4, #0x134]
00654bd0  48 31 84 e5                                      str r3, [r4, #0x148]
00654bd4  4c 81 c4 e5                                      strb r8, [r4, #0x14c]
00654bd8  50 21 84 e5                                      str r2, [r4, #0x150]
00654bdc  54 21 84 e5                                      str r2, [r4, #0x154]
00654be0  5c 31 84 e5                                      str r3, [r4, #0x15c]
00654be4  60 31 84 e5                                      str r3, [r4, #0x160]
00654be8  68 81 c4 e5                                      strb r8, [r4, #0x168]
00654bec  6c 51 84 e5                                      str r5, [r4, #0x16c]
00654bf0  70 51 84 e5                                      str r5, [r4, #0x170]
00654bf4  78 51 84 e5                                      str r5, [r4, #0x178]
00654bf8  7c 51 84 e5                                      str r5, [r4, #0x17c]
00654bfc  0c 90 11 e5                                      ldr sb, [r1, #-0xc]
00654c00  98 12 9f e5                                      ldr r1, [pc, #0x298]
00654c04  09 90 86 e0                                      add sb, r6, sb
00654c08  01 10 8f e0                                      add r1, pc, r1
00654c0c  09 00 a0 e1                                      mov r0, sb
00654c10  29 e1 ff eb                                      bl #0x64d0bc
00654c14  70 20 8d e2                                      add r2, sp, #0x70
00654c18  5a 3f 84 e2                                      add r3, r4, #0x168
00654c1c  70 00 8d e5                                      str r0, [sp, #0x70]
00654c20  30 10 89 e2                                      add r1, sb, #0x30
00654c24  78 00 8d e2                                      add r0, sp, #0x78
00654c28  74 30 8d e5                                      str r3, [sp, #0x74]
00654c2c  2e 97 ff eb                                      bl #0x63a8ec
00654c30  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00654c34  68 12 9f e5                                      ldr r1, [pc, #0x268]
00654c38  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00654c3c  01 10 8f e0                                      add r1, pc, r1
00654c40  09 90 86 e0                                      add sb, r6, sb
00654c44  09 00 a0 e1                                      mov r0, sb
00654c48  1b e1 ff eb                                      bl #0x64d0bc
00654c4c  60 20 8d e2                                      add r2, sp, #0x60
00654c50  e0 30 84 e2                                      add r3, r4, #0xe0
00654c54  60 00 8d e5                                      str r0, [sp, #0x60]
00654c58  30 10 89 e2                                      add r1, sb, #0x30
00654c5c  68 00 8d e2                                      add r0, sp, #0x68
00654c60  64 30 8d e5                                      str r3, [sp, #0x64]
00654c64  20 97 ff eb                                      bl #0x63a8ec
00654c68  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00654c6c  34 12 9f e5                                      ldr r1, [pc, #0x234]
00654c70  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00654c74  01 10 8f e0                                      add r1, pc, r1
00654c78  09 90 86 e0                                      add sb, r6, sb
00654c7c  09 00 a0 e1                                      mov r0, sb
00654c80  0d e1 ff eb                                      bl #0x64d0bc
00654c84  50 20 8d e2                                      add r2, sp, #0x50
00654c88  5f 3f 84 e2                                      add r3, r4, #0x17c
00654c8c  50 00 8d e5                                      str r0, [sp, #0x50]
00654c90  30 10 89 e2                                      add r1, sb, #0x30
00654c94  58 00 8d e2                                      add r0, sp, #0x58
00654c98  54 30 8d e5                                      str r3, [sp, #0x54]
00654c9c  12 97 ff eb                                      bl #0x63a8ec
00654ca0  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00654ca4  00 12 9f e5                                      ldr r1, [pc, #0x200]
00654ca8  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00654cac  01 10 8f e0                                      add r1, pc, r1
00654cb0  09 90 86 e0                                      add sb, r6, sb
00654cb4  09 00 a0 e1                                      mov r0, sb
00654cb8  ff e0 ff eb                                      bl #0x64d0bc
00654cbc  40 20 8d e2                                      add r2, sp, #0x40
00654cc0  e4 30 84 e2                                      add r3, r4, #0xe4
00654cc4  40 00 8d e5                                      str r0, [sp, #0x40]
00654cc8  30 10 89 e2                                      add r1, sb, #0x30
00654ccc  48 00 8d e2                                      add r0, sp, #0x48
00654cd0  44 30 8d e5                                      str r3, [sp, #0x44]
00654cd4  04 97 ff eb                                      bl #0x63a8ec
00654cd8  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00654cdc  cc 11 9f e5                                      ldr r1, [pc, #0x1cc]
00654ce0  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00654ce4  01 10 8f e0                                      add r1, pc, r1
00654ce8  09 90 86 e0                                      add sb, r6, sb
00654cec  09 00 a0 e1                                      mov r0, sb
00654cf0  f1 e0 ff eb                                      bl #0x64d0bc
00654cf4  30 20 8d e2                                      add r2, sp, #0x30
00654cf8  5b 3f 84 e2                                      add r3, r4, #0x16c
00654cfc  30 00 8d e5                                      str r0, [sp, #0x30]
00654d00  30 10 89 e2                                      add r1, sb, #0x30
00654d04  38 00 8d e2                                      add r0, sp, #0x38
00654d08  34 30 8d e5                                      str r3, [sp, #0x34]
00654d0c  f6 96 ff eb                                      bl #0x63a8ec
00654d10  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00654d14  98 11 9f e5                                      ldr r1, [pc, #0x198]
00654d18  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00654d1c  01 10 8f e0                                      add r1, pc, r1
00654d20  09 90 86 e0                                      add sb, r6, sb
00654d24  09 00 a0 e1                                      mov r0, sb
00654d28  e3 e0 ff eb                                      bl #0x64d0bc
00654d2c  20 20 8d e2                                      add r2, sp, #0x20
00654d30  5d 3f 84 e2                                      add r3, r4, #0x174
00654d34  20 00 8d e5                                      str r0, [sp, #0x20]
00654d38  30 10 89 e2                                      add r1, sb, #0x30
00654d3c  28 00 8d e2                                      add r0, sp, #0x28
00654d40  24 30 8d e5                                      str r3, [sp, #0x24]
00654d44  e8 96 ff eb                                      bl #0x63a8ec
00654d48  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00654d4c  64 11 9f e5                                      ldr r1, [pc, #0x164]
00654d50  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00654d54  01 10 8f e0                                      add r1, pc, r1
00654d58  09 90 86 e0                                      add sb, r6, sb
00654d5c  09 00 a0 e1                                      mov r0, sb
00654d60  d5 e0 ff eb                                      bl #0x64d0bc
00654d64  10 20 8d e2                                      add r2, sp, #0x10
00654d68  10 00 8d e5                                      str r0, [sp, #0x10]
00654d6c  30 10 89 e2                                      add r1, sb, #0x30
00654d70  18 00 8d e2                                      add r0, sp, #0x18
00654d74  14 a0 8d e5                                      str sl, [sp, #0x14]
00654d78  db 96 ff eb                                      bl #0x63a8ec
00654d7c  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00654d80  34 11 9f e5                                      ldr r1, [pc, #0x134]
00654d84  0c a0 13 e5                                      ldr sl, [r3, #-0xc]
00654d88  01 10 8f e0                                      add r1, pc, r1
00654d8c  0a a0 86 e0                                      add sl, r6, sl
00654d90  0a 00 a0 e1                                      mov r0, sl
00654d94  c8 e0 ff eb                                      bl #0x64d0bc
00654d98  15 3e 84 e2                                      add r3, r4, #0x150
00654d9c  00 00 8d e5                                      str r0, [sp]
00654da0  30 10 8a e2                                      add r1, sl, #0x30
00654da4  08 00 8d e2                                      add r0, sp, #8
00654da8  0d 20 a0 e1                                      mov r2, sp
00654dac  04 30 8d e5                                      str r3, [sp, #4]
00654db0  cd 96 ff eb                                      bl #0x63a8ec
00654db4  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
00654db8  00 30 a0 e3                                      mov r3, #0
00654dbc  3f c4 a0 e3                                      mov ip, #0x3f000000
00654dc0  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00654dc4  05 10 a0 e1                                      mov r1, r5
00654dc8  08 00 a0 e1                                      mov r0, r8
00654dcc  02 20 86 e0                                      add r2, r6, r2
00654dd0  04 50 c2 e5                                      strb r5, [r2, #4]
00654dd4  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
00654dd8  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00654ddc  02 20 86 e0                                      add r2, r6, r2
00654de0  05 50 c2 e5                                      strb r5, [r2, #5]
00654de4  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
00654de8  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00654dec  02 20 86 e0                                      add r2, r6, r2
00654df0  08 c0 82 e5                                      str ip, [r2, #8]
00654df4  10 30 82 e5                                      str r3, [r2, #0x10]
00654df8  0c 30 82 e5                                      str r3, [r2, #0xc]
00654dfc  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
00654e00  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00654e04  02 20 86 e0                                      add r2, r6, r2
00654e08  18 c0 82 e5                                      str ip, [r2, #0x18]
00654e0c  1c 30 82 e5                                      str r3, [r2, #0x1c]
00654e10  14 30 82 e5                                      str r3, [r2, #0x14]
00654e14  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00654e18  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00654e1c  03 60 86 e0                                      add r6, r6, r3
00654e20  20 50 c6 e5                                      strb r5, [r6, #0x20]
00654e24  e0 7c fb eb                                      bl #0x5341ac
00654e28  90 30 9f e5                                      ldr r3, [pc, #0x90]
00654e2c  78 01 84 e5                                      str r0, [r4, #0x178]
00654e30  04 00 a0 e1                                      mov r0, r4
00654e34  03 30 97 e7                                      ldr r3, [r7, r3]
00654e38  4e bf 83 e2                                      add fp, r3, #0x138
00654e3c  0c a0 83 e2                                      add sl, r3, #0xc
00654e40  7d 8f 83 e2                                      add r8, r3, #0x1f4
00654e44  30 70 83 e2                                      add r7, r3, #0x30
00654e48  4c 60 83 e2                                      add r6, r3, #0x4c
00654e4c  6c 50 83 e2                                      add r5, r3, #0x6c
00654e50  90 c0 83 e2                                      add ip, r3, #0x90
00654e54  ac 10 83 e2                                      add r1, r3, #0xac
00654e58  cc 20 83 e2                                      add r2, r3, #0xcc
00654e5c  f8 90 83 e2                                      add sb, r3, #0xf8
00654e60  46 3f 83 e2                                      add r3, r3, #0x118
00654e64  00 a0 84 e5                                      str sl, [r4]
00654e68  80 81 84 e5                                      str r8, [r4, #0x180]
00654e6c  10 70 84 e5                                      str r7, [r4, #0x10]
00654e70  24 60 84 e5                                      str r6, [r4, #0x24]
00654e74  38 50 84 e5                                      str r5, [r4, #0x38]
00654e78  60 c0 84 e5                                      str ip, [r4, #0x60]
00654e7c  78 10 84 e5                                      str r1, [r4, #0x78]
00654e80  94 20 84 e5                                      str r2, [r4, #0x94]
00654e84  a8 90 84 e5                                      str sb, [r4, #0xa8]
00654e88  d0 30 84 e5                                      str r3, [r4, #0xd0]
00654e8c  dc b0 84 e5                                      str fp, [r4, #0xdc]
00654e90  84 d0 8d e2                                      add sp, sp, #0x84
00654e94  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00654e98  00 00 34 00 3c 12 00 00 68 09 29 00 ac 04 29 00  .byte 0x00, 0x00, 0x34, 0x00, 0x3c, 0x12, 0x00, 0x00, 0x68, 0x09, 0x29, 0x00, 0xac, 0x04, 0x29, 0x00
00654ea8  0c 09 29 00 3c 05 29 00 ac 08 29 00 84 08 29 00  .byte 0x0c, 0x09, 0x29, 0x00, 0x3c, 0x05, 0x29, 0x00, 0xac, 0x08, 0x29, 0x00, 0x84, 0x08, 0x29, 0x00
00654eb8  64 08 29 00 40 08 29 00 94 1b 00 00              .byte 0x64, 0x08, 0x29, 0x00, 0x40, 0x08, 0x29, 0x00, 0x94, 0x1b, 0x00, 0x00

; FUNCTION 0x00654ec4, declared_size=1104, range_size=1104, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinC1Ev
; demangled: glitch::ps::PSManager::createParticleSystem<glitch::ps::SParticle, glitch::ps::PGenerationModel<glitch::ps::SParticle>, glitch::ps::PSizeModel<glitch::ps::SParticle>, glitch::ps::PColorModel<glitch::ps::SParticle>, glitch::ps::PEmitterModel<glitch::ps::SParticle>, glitch::ps::PMotionModel<glitch::ps::SParticle>, glitch::ps::PForcesModel<glitch::ps::SParticle>, glitch::ps::PSpinModel<glitch::ps::SParticle>, glitch::ps::PLifeModel<glitch::ps::SParticle>, glitch::ps::PRenderDataBillboardModel<glitch::ps::SParticle, glitch::ps::PSNullShaderParametersBaker, glitch::ps::PSNullColorBaker<glitch::ps::SParticle>, glitch::ps::PSGenericNormalBaker<glitch::ps::SParticle>, glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>, glitch::ps::PSGenericTexCoordsBaker<glitch::ps::SParticle> > >()::Mixin::Mixin()
; decoder-mode: arm
00654ec4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00654ec8  00 40 a0 e1                                      mov r4, r0
00654ecc  84 d0 4d e2                                      sub sp, sp, #0x84
00654ed0  10 74 9f e5                                      ldr r7, [pc, #0x410]
00654ed4  06 0d 80 e2                                      add r0, r0, #0x180
00654ed8  bc e0 ff eb                                      bl #0x64d1d0
00654edc  08 24 9f e5                                      ldr r2, [pc, #0x408]
00654ee0  07 70 8f e0                                      add r7, pc, r7
00654ee4  15 3d 0c e3                                      movw r3, #0xcd15
00654ee8  02 80 97 e7                                      ldr r8, [r7, r2]
00654eec  00 50 a0 e3                                      mov r5, #0
00654ef0  5b 37 40 e3                                      movt r3, #0x75b
00654ef4  04 10 98 e9                                      ldmib r8, {r2, ip}
00654ef8  0c 10 88 e2                                      add r1, r8, #0xc
00654efc  00 20 84 e5                                      str r2, [r4]
00654f00  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00654f04  10 00 84 e2                                      add r0, r4, #0x10
00654f08  04 60 a0 e1                                      mov r6, r4
00654f0c  02 c0 84 e7                                      str ip, [r4, r2]
00654f10  08 30 84 e5                                      str r3, [r4, #8]
00654f14  04 30 84 e5                                      str r3, [r4, #4]
00654f18  0c 50 84 e5                                      str r5, [r4, #0xc]
00654f1c  ab fd ff eb                                      bl #0x6545d0
00654f20  14 10 88 e2                                      add r1, r8, #0x14
00654f24  24 00 84 e2                                      add r0, r4, #0x24
00654f28  32 fd ff eb                                      bl #0x6543f8
00654f2c  1c 10 88 e2                                      add r1, r8, #0x1c
00654f30  38 00 84 e2                                      add r0, r4, #0x38
00654f34  d5 fd ff eb                                      bl #0x654690
00654f38  24 10 88 e2                                      add r1, r8, #0x24
00654f3c  60 00 84 e2                                      add r0, r4, #0x60
00654f40  6d fe ff eb                                      bl #0x6548fc
00654f44  2c 10 88 e2                                      add r1, r8, #0x2c
00654f48  78 00 84 e2                                      add r0, r4, #0x78
00654f4c  66 fc ff eb                                      bl #0x6540ec
00654f50  34 30 98 e5                                      ldr r3, [r8, #0x34]
00654f54  38 20 98 e5                                      ldr r2, [r8, #0x38]
00654f58  3c 10 88 e2                                      add r1, r8, #0x3c
00654f5c  94 30 84 e5                                      str r3, [r4, #0x94]
00654f60  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00654f64  a8 00 84 e2                                      add r0, r4, #0xa8
00654f68  43 af 84 e2                                      add sl, r4, #0x10c
00654f6c  03 30 84 e0                                      add r3, r4, r3
00654f70  94 20 83 e5                                      str r2, [r3, #0x94]
00654f74  98 50 84 e5                                      str r5, [r4, #0x98]
00654f78  9c 50 84 e5                                      str r5, [r4, #0x9c]
00654f7c  a0 50 84 e5                                      str r5, [r4, #0xa0]
00654f80  a4 50 c4 e5                                      strb r5, [r4, #0xa4]
00654f84  a3 fc ff eb                                      bl #0x654218
00654f88  44 10 88 e2                                      add r1, r8, #0x44
00654f8c  d0 00 84 e2                                      add r0, r4, #0xd0
00654f90  65 fd ff eb                                      bl #0x65452c
00654f94  4c 30 98 e5                                      ldr r3, [r8, #0x4c]
00654f98  50 10 98 e5                                      ldr r1, [r8, #0x50]
00654f9c  40 20 a0 e3                                      mov r2, #0x40
00654fa0  dc 30 a6 e5                                      str r3, [r6, #0xdc]!
00654fa4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00654fa8  0a 00 a0 e1                                      mov r0, sl
00654fac  01 80 a0 e3                                      mov r8, #1
00654fb0  03 10 86 e7                                      str r1, [r6, r3]
00654fb4  41 3f a0 e3                                      mov r3, #0x104
00654fb8  ff 10 a0 e3                                      mov r1, #0xff
00654fbc  b3 10 84 e1                                      strh r1, [r4, r3]
00654fc0  06 31 00 e3                                      movw r3, #0x106
00654fc4  06 10 a0 e3                                      mov r1, #6
00654fc8  b3 10 84 e1                                      strh r1, [r4, r3]
00654fcc  e0 50 84 e5                                      str r5, [r4, #0xe0]
00654fd0  e4 50 84 e5                                      str r5, [r4, #0xe4]
00654fd4  ec 50 84 e5                                      str r5, [r4, #0xec]
00654fd8  f0 50 84 e5                                      str r5, [r4, #0xf0]
00654fdc  f4 50 84 e5                                      str r5, [r4, #0xf4]
00654fe0  f8 50 84 e5                                      str r5, [r4, #0xf8]
00654fe4  fc 50 84 e5                                      str r5, [r4, #0xfc]
00654fe8  00 51 84 e5                                      str r5, [r4, #0x100]
00654fec  08 51 84 e5                                      str r5, [r4, #0x108]
00654ff0  4c 51 c4 e5                                      strb r5, [r4, #0x14c]
00654ff4  05 10 a0 e1                                      mov r1, r5
00654ff8  18 e5 f2 eb                                      bl #0x30e460
00654ffc  dc 10 94 e5                                      ldr r1, [r4, #0xdc]
00655000  bf 24 a0 e3                                      mov r2, #0xbf000000
00655004  fe 35 a0 e3                                      mov r3, #0x3f800000
00655008  02 25 82 e2                                      add r2, r2, #0x800000
0065500c  58 21 84 e5                                      str r2, [r4, #0x158]
00655010  64 31 84 e5                                      str r3, [r4, #0x164]
00655014  0c 31 84 e5                                      str r3, [r4, #0x10c]
00655018  20 31 84 e5                                      str r3, [r4, #0x120]
0065501c  34 31 84 e5                                      str r3, [r4, #0x134]
00655020  48 31 84 e5                                      str r3, [r4, #0x148]
00655024  4c 81 c4 e5                                      strb r8, [r4, #0x14c]
00655028  50 21 84 e5                                      str r2, [r4, #0x150]
0065502c  54 21 84 e5                                      str r2, [r4, #0x154]
00655030  5c 31 84 e5                                      str r3, [r4, #0x15c]
00655034  60 31 84 e5                                      str r3, [r4, #0x160]
00655038  68 81 c4 e5                                      strb r8, [r4, #0x168]
0065503c  6c 51 84 e5                                      str r5, [r4, #0x16c]
00655040  70 51 84 e5                                      str r5, [r4, #0x170]
00655044  78 51 84 e5                                      str r5, [r4, #0x178]
00655048  7c 51 84 e5                                      str r5, [r4, #0x17c]
0065504c  0c 90 11 e5                                      ldr sb, [r1, #-0xc]
00655050  98 12 9f e5                                      ldr r1, [pc, #0x298]
00655054  09 90 86 e0                                      add sb, r6, sb
00655058  01 10 8f e0                                      add r1, pc, r1
0065505c  09 00 a0 e1                                      mov r0, sb
00655060  15 e0 ff eb                                      bl #0x64d0bc
00655064  70 20 8d e2                                      add r2, sp, #0x70
00655068  5a 3f 84 e2                                      add r3, r4, #0x168
0065506c  70 00 8d e5                                      str r0, [sp, #0x70]
00655070  30 10 89 e2                                      add r1, sb, #0x30
00655074  78 00 8d e2                                      add r0, sp, #0x78
00655078  74 30 8d e5                                      str r3, [sp, #0x74]
0065507c  1a 96 ff eb                                      bl #0x63a8ec
00655080  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00655084  68 12 9f e5                                      ldr r1, [pc, #0x268]
00655088  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
0065508c  01 10 8f e0                                      add r1, pc, r1
00655090  09 90 86 e0                                      add sb, r6, sb
00655094  09 00 a0 e1                                      mov r0, sb
00655098  07 e0 ff eb                                      bl #0x64d0bc
0065509c  60 20 8d e2                                      add r2, sp, #0x60
006550a0  e0 30 84 e2                                      add r3, r4, #0xe0
006550a4  60 00 8d e5                                      str r0, [sp, #0x60]
006550a8  30 10 89 e2                                      add r1, sb, #0x30
006550ac  68 00 8d e2                                      add r0, sp, #0x68
006550b0  64 30 8d e5                                      str r3, [sp, #0x64]
006550b4  0c 96 ff eb                                      bl #0x63a8ec
006550b8  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
006550bc  34 12 9f e5                                      ldr r1, [pc, #0x234]
006550c0  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
006550c4  01 10 8f e0                                      add r1, pc, r1
006550c8  09 90 86 e0                                      add sb, r6, sb
006550cc  09 00 a0 e1                                      mov r0, sb
006550d0  f9 df ff eb                                      bl #0x64d0bc
006550d4  50 20 8d e2                                      add r2, sp, #0x50
006550d8  5f 3f 84 e2                                      add r3, r4, #0x17c
006550dc  50 00 8d e5                                      str r0, [sp, #0x50]
006550e0  30 10 89 e2                                      add r1, sb, #0x30
006550e4  58 00 8d e2                                      add r0, sp, #0x58
006550e8  54 30 8d e5                                      str r3, [sp, #0x54]
006550ec  fe 95 ff eb                                      bl #0x63a8ec
006550f0  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
006550f4  00 12 9f e5                                      ldr r1, [pc, #0x200]
006550f8  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
006550fc  01 10 8f e0                                      add r1, pc, r1
00655100  09 90 86 e0                                      add sb, r6, sb
00655104  09 00 a0 e1                                      mov r0, sb
00655108  eb df ff eb                                      bl #0x64d0bc
0065510c  40 20 8d e2                                      add r2, sp, #0x40
00655110  e4 30 84 e2                                      add r3, r4, #0xe4
00655114  40 00 8d e5                                      str r0, [sp, #0x40]
00655118  30 10 89 e2                                      add r1, sb, #0x30
0065511c  48 00 8d e2                                      add r0, sp, #0x48
00655120  44 30 8d e5                                      str r3, [sp, #0x44]
00655124  f0 95 ff eb                                      bl #0x63a8ec
00655128  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
0065512c  cc 11 9f e5                                      ldr r1, [pc, #0x1cc]
00655130  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
00655134  01 10 8f e0                                      add r1, pc, r1
00655138  09 90 86 e0                                      add sb, r6, sb
0065513c  09 00 a0 e1                                      mov r0, sb
00655140  dd df ff eb                                      bl #0x64d0bc
00655144  30 20 8d e2                                      add r2, sp, #0x30
00655148  5b 3f 84 e2                                      add r3, r4, #0x16c
0065514c  30 00 8d e5                                      str r0, [sp, #0x30]
00655150  30 10 89 e2                                      add r1, sb, #0x30
00655154  38 00 8d e2                                      add r0, sp, #0x38
00655158  34 30 8d e5                                      str r3, [sp, #0x34]
0065515c  e2 95 ff eb                                      bl #0x63a8ec
00655160  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00655164  98 11 9f e5                                      ldr r1, [pc, #0x198]
00655168  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
0065516c  01 10 8f e0                                      add r1, pc, r1
00655170  09 90 86 e0                                      add sb, r6, sb
00655174  09 00 a0 e1                                      mov r0, sb
00655178  cf df ff eb                                      bl #0x64d0bc
0065517c  20 20 8d e2                                      add r2, sp, #0x20
00655180  5d 3f 84 e2                                      add r3, r4, #0x174
00655184  20 00 8d e5                                      str r0, [sp, #0x20]
00655188  30 10 89 e2                                      add r1, sb, #0x30
0065518c  28 00 8d e2                                      add r0, sp, #0x28
00655190  24 30 8d e5                                      str r3, [sp, #0x24]
00655194  d4 95 ff eb                                      bl #0x63a8ec
00655198  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
0065519c  64 11 9f e5                                      ldr r1, [pc, #0x164]
006551a0  0c 90 13 e5                                      ldr sb, [r3, #-0xc]
006551a4  01 10 8f e0                                      add r1, pc, r1
006551a8  09 90 86 e0                                      add sb, r6, sb
006551ac  09 00 a0 e1                                      mov r0, sb
006551b0  c1 df ff eb                                      bl #0x64d0bc
006551b4  10 20 8d e2                                      add r2, sp, #0x10
006551b8  10 00 8d e5                                      str r0, [sp, #0x10]
006551bc  30 10 89 e2                                      add r1, sb, #0x30
006551c0  18 00 8d e2                                      add r0, sp, #0x18
006551c4  14 a0 8d e5                                      str sl, [sp, #0x14]
006551c8  c7 95 ff eb                                      bl #0x63a8ec
006551cc  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
006551d0  34 11 9f e5                                      ldr r1, [pc, #0x134]
006551d4  0c a0 13 e5                                      ldr sl, [r3, #-0xc]
006551d8  01 10 8f e0                                      add r1, pc, r1
006551dc  0a a0 86 e0                                      add sl, r6, sl
006551e0  0a 00 a0 e1                                      mov r0, sl
006551e4  b4 df ff eb                                      bl #0x64d0bc
006551e8  15 3e 84 e2                                      add r3, r4, #0x150
006551ec  00 00 8d e5                                      str r0, [sp]
006551f0  30 10 8a e2                                      add r1, sl, #0x30
006551f4  08 00 8d e2                                      add r0, sp, #8
006551f8  0d 20 a0 e1                                      mov r2, sp
006551fc  04 30 8d e5                                      str r3, [sp, #4]
00655200  b9 95 ff eb                                      bl #0x63a8ec
00655204  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
00655208  00 30 a0 e3                                      mov r3, #0
0065520c  3f c4 a0 e3                                      mov ip, #0x3f000000
00655210  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00655214  05 10 a0 e1                                      mov r1, r5
00655218  08 00 a0 e1                                      mov r0, r8
0065521c  02 20 86 e0                                      add r2, r6, r2
00655220  04 50 c2 e5                                      strb r5, [r2, #4]
00655224  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
00655228  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0065522c  02 20 86 e0                                      add r2, r6, r2
00655230  05 50 c2 e5                                      strb r5, [r2, #5]
00655234  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
00655238  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0065523c  02 20 86 e0                                      add r2, r6, r2
00655240  08 c0 82 e5                                      str ip, [r2, #8]
00655244  10 30 82 e5                                      str r3, [r2, #0x10]
00655248  0c 30 82 e5                                      str r3, [r2, #0xc]
0065524c  dc 20 94 e5                                      ldr r2, [r4, #0xdc]
00655250  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00655254  02 20 86 e0                                      add r2, r6, r2
00655258  18 c0 82 e5                                      str ip, [r2, #0x18]
0065525c  1c 30 82 e5                                      str r3, [r2, #0x1c]
00655260  14 30 82 e5                                      str r3, [r2, #0x14]
00655264  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
00655268  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065526c  03 60 86 e0                                      add r6, r6, r3
00655270  20 50 c6 e5                                      strb r5, [r6, #0x20]
00655274  cc 7b fb eb                                      bl #0x5341ac
00655278  90 30 9f e5                                      ldr r3, [pc, #0x90]
0065527c  78 01 84 e5                                      str r0, [r4, #0x178]
00655280  04 00 a0 e1                                      mov r0, r4
00655284  03 30 97 e7                                      ldr r3, [r7, r3]
00655288  4e bf 83 e2                                      add fp, r3, #0x138
0065528c  0c a0 83 e2                                      add sl, r3, #0xc
00655290  7d 8f 83 e2                                      add r8, r3, #0x1f4
00655294  30 70 83 e2                                      add r7, r3, #0x30
00655298  4c 60 83 e2                                      add r6, r3, #0x4c
0065529c  6c 50 83 e2                                      add r5, r3, #0x6c
006552a0  90 c0 83 e2                                      add ip, r3, #0x90
006552a4  ac 10 83 e2                                      add r1, r3, #0xac
006552a8  cc 20 83 e2                                      add r2, r3, #0xcc
006552ac  f8 90 83 e2                                      add sb, r3, #0xf8
006552b0  46 3f 83 e2                                      add r3, r3, #0x118
006552b4  00 a0 84 e5                                      str sl, [r4]
006552b8  80 81 84 e5                                      str r8, [r4, #0x180]
006552bc  10 70 84 e5                                      str r7, [r4, #0x10]
006552c0  24 60 84 e5                                      str r6, [r4, #0x24]
006552c4  38 50 84 e5                                      str r5, [r4, #0x38]
006552c8  60 c0 84 e5                                      str ip, [r4, #0x60]
006552cc  78 10 84 e5                                      str r1, [r4, #0x78]
006552d0  94 20 84 e5                                      str r2, [r4, #0x94]
006552d4  a8 90 84 e5                                      str sb, [r4, #0xa8]
006552d8  d0 30 84 e5                                      str r3, [r4, #0xd0]
006552dc  dc b0 84 e5                                      str fp, [r4, #0xdc]
006552e0  84 d0 8d e2                                      add sp, sp, #0x84
006552e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006552e8  b0 fb 33 00 b4 08 00 00 18 05 29 00 5c 00 29 00  .byte 0xb0, 0xfb, 0x33, 0x00, 0xb4, 0x08, 0x00, 0x00, 0x18, 0x05, 0x29, 0x00, 0x5c, 0x00, 0x29, 0x00
006552f8  bc 04 29 00 ec 00 29 00 5c 04 29 00 34 04 29 00  .byte 0xbc, 0x04, 0x29, 0x00, 0xec, 0x00, 0x29, 0x00, 0x5c, 0x04, 0x29, 0x00, 0x34, 0x04, 0x29, 0x00
00655308  14 04 29 00 f0 03 29 00 24 1a 00 00              .byte 0x14, 0x04, 0x29, 0x00, 0xf0, 0x03, 0x29, 0x00, 0x24, 0x1a, 0x00, 0x00

; FUNCTION 0x00655314, declared_size=96, range_size=96, mode=arm
; class-group: glitch::ps::PSManager
; alias: _ZN6glitch2ps9PSManager18createPCloudSystemEb
; demangled: glitch::ps::PSManager::createPCloudSystem(bool)
; decoder-mode: arm
00655314  70 40 2d e9                                      push {r4, r5, r6, lr}
00655318  00 50 51 e2                                      subs r5, r1, #0
0065531c  09 00 00 1a                                      bne #0x655348
00655320  77 0f a0 e3                                      mov r0, #0x1dc
00655324  a0 7b fb eb                                      bl #0x5341ac
00655328  05 10 a0 e1                                      mov r1, r5
0065532c  00 40 a0 e1                                      mov r4, r0
00655330  06 2d a0 e3                                      mov r2, #0x180
00655334  49 e4 f2 eb                                      bl #0x30e460
00655338  04 00 a0 e1                                      mov r0, r4
0065533c  e0 fe ff eb                                      bl #0x654ec4
00655340  04 00 a0 e1                                      mov r0, r4
00655344  70 80 bd e8                                      pop {r4, r5, r6, pc}
00655348  00 10 a0 e3                                      mov r1, #0
0065534c  77 0f a0 e3                                      mov r0, #0x1dc
00655350  95 7b fb eb                                      bl #0x5341ac
00655354  00 10 a0 e3                                      mov r1, #0
00655358  00 40 a0 e1                                      mov r4, r0
0065535c  06 2d a0 e3                                      mov r2, #0x180
00655360  3e e4 f2 eb                                      bl #0x30e460
00655364  04 00 a0 e1                                      mov r0, r4
00655368  c1 fd ff eb                                      bl #0x654a74
0065536c  04 00 a0 e1                                      mov r0, r4
00655370  70 80 bd e8                                      pop {r4, r5, r6, pc}
