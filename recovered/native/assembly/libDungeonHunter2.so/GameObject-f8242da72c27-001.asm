; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00340054, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject12IsGameObjectEv
; demangled: GameObject::IsGameObject() const
; decoder-mode: arm
00340054  01 00 a0 e3                                      mov r0, #1
00340058  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034005c, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject14IsUpdatingPathEv
; demangled: GameObject::IsUpdatingPath() const
; decoder-mode: arm
0034005c  01 00 a0 e3                                      mov r0, #1
00340060  1e ff 2f e1                                      bx lr

; FUNCTION 0x00340064, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject28IsUpdatingPositionFromVisualEv
; demangled: GameObject::IsUpdatingPositionFromVisual() const
; decoder-mode: arm
00340064  00 00 a0 e3                                      mov r0, #0
00340068  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034006c, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject29IsUpdatingPositionFromPhysicsEv
; demangled: GameObject::IsUpdatingPositionFromPhysics() const
; decoder-mode: arm
0034006c  01 00 a0 e3                                      mov r0, #1
00340070  1e ff 2f e1                                      bx lr

; FUNCTION 0x00340074, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject28IsUpdatingRotationFromVisualEv
; demangled: GameObject::IsUpdatingRotationFromVisual() const
; decoder-mode: arm
00340074  00 00 a0 e3                                      mov r0, #0
00340078  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034007c, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject29IsUpdatingRotationFromPhysicsEv
; demangled: GameObject::IsUpdatingRotationFromPhysics() const
; decoder-mode: arm
0034007c  00 00 a0 e3                                      mov r0, #0
00340080  1e ff 2f e1                                      bx lr

; FUNCTION 0x00340084, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject28IsUpdatingVisualWithRotationEv
; demangled: GameObject::IsUpdatingVisualWithRotation() const
; decoder-mode: arm
00340084  01 00 a0 e3                                      mov r0, #1
00340088  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034008c, declared_size=16, range_size=16, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject25IsValidatingFloorPositionEv
; demangled: GameObject::IsValidatingFloorPosition() const
; decoder-mode: arm
0034008c  84 00 d0 e5                                      ldrb r0, [r0, #0x84]
00340090  00 00 50 e3                                      cmp r0, #0
00340094  02 00 a0 13                                      movne r0, #2
00340098  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034009c, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject24IsValidatingCameraLimitsEv
; demangled: GameObject::IsValidatingCameraLimits() const
; decoder-mode: arm
0034009c  00 00 a0 e3                                      mov r0, #0
003400a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003400a4, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject19IsAvoidingObstaclesEv
; demangled: GameObject::IsAvoidingObstacles() const
; decoder-mode: arm
003400a4  00 00 a0 e3                                      mov r0, #0
003400a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003400ac, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject6IsDeadEv
; demangled: GameObject::IsDead() const
; decoder-mode: arm
003400ac  00 00 a0 e3                                      mov r0, #0
003400b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003400b4, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject5IsHitEv
; demangled: GameObject::IsHit() const
; decoder-mode: arm
003400b4  00 00 a0 e3                                      mov r0, #0
003400b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003400bc, declared_size=4, range_size=4, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject8InteractEPS_
; demangled: GameObject::Interact(GameObject*)
; decoder-mode: arm
003400bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003400c0, declared_size=28, range_size=28, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject10GetFXScaleEv
; demangled: GameObject::GetFXScale() const
; decoder-mode: arm
003400c0  20 21 91 e5                                      ldr r2, [r1, #0x120]
003400c4  00 20 80 e5                                      str r2, [r0]
003400c8  24 21 91 e5                                      ldr r2, [r1, #0x124]
003400cc  04 20 80 e5                                      str r2, [r0, #4]
003400d0  28 21 91 e5                                      ldr r2, [r1, #0x128]
003400d4  08 20 80 e5                                      str r2, [r0, #8]
003400d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003400dc, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject15GetFXScaleValueEv
; demangled: GameObject::GetFXScaleValue() const
; decoder-mode: arm
003400dc  00 00 e0 e3                                      mvn r0, #0
003400e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003400e4, declared_size=12, range_size=12, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject8GetSpeedEv
; demangled: GameObject::GetSpeed() const
; decoder-mode: arm
003400e4  01 01 a0 e3                                      mov r0, #0x40000000
003400e8  02 05 80 e2                                      add r0, r0, #0x800000
003400ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x003400f0, declared_size=12, range_size=12, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject16GetRotationSpeedEv
; demangled: GameObject::GetRotationSpeed() const
; decoder-mode: arm
003400f0  bf 04 a0 e3                                      mov r0, #0xbf000000
003400f4  02 05 80 e2                                      add r0, r0, #0x800000
003400f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003400fc, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject14GetFocusObjectEv
; demangled: GameObject::GetFocusObject() const
; decoder-mode: arm
003400fc  00 00 a0 e3                                      mov r0, #0
00340100  1e ff 2f e1                                      bx lr

; FUNCTION 0x00340104, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject10IsObstacleEv
; demangled: GameObject::IsObstacle() const
; decoder-mode: arm
00340104  00 00 a0 e3                                      mov r0, #0
00340108  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034010c, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject17GetObstacleRadiusEv
; demangled: GameObject::GetObstacleRadius() const
; decoder-mode: arm
0034010c  00 00 a0 e3                                      mov r0, #0
00340110  1e ff 2f e1                                      bx lr

; FUNCTION 0x00340114, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject19GetObstacleStrengthEv
; demangled: GameObject::GetObstacleStrength() const
; decoder-mode: arm
00340114  00 00 a0 e3                                      mov r0, #0
00340118  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034011c, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject10GetOpacityEv
; demangled: GameObject::GetOpacity() const
; decoder-mode: arm
0034011c  fe 05 a0 e3                                      mov r0, #0x3f800000
00340120  1e ff 2f e1                                      bx lr

; FUNCTION 0x00340124, declared_size=16, range_size=16, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject13getUDTypeNameEv
; demangled: GameObject::getUDTypeName() const
; decoder-mode: arm
00340124  04 00 9f e5                                      ldr r0, [pc, #4]
00340128  00 00 8f e0                                      add r0, pc, r0
0034012c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00340130  40 01 58 00                                      .byte 0x40, 0x01, 0x58, 0x00

; FUNCTION 0x003883a8, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject10IsAnimatedEv
; demangled: GameObject::IsAnimated() const
; decoder-mode: arm
003883a8  00 00 a0 e3                                      mov r0, #0
003883ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x003883b0, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject13IsInteractiveEPS_
; demangled: GameObject::IsInteractive(GameObject*) const
; decoder-mode: arm
003883b0  00 00 a0 e3                                      mov r0, #0
003883b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003883b8, declared_size=12, range_size=12, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject9IsZonableEv
; demangled: GameObject::IsZonable() const
; decoder-mode: arm
003883b8  ed 02 d0 e5                                      ldrb r0, [r0, #0x2ed]
003883bc  01 00 20 e2                                      eor r0, r0, #1
003883c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038aac0, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject11IsUpdatableEv
; demangled: GameObject::IsUpdatable() const
; decoder-mode: arm
0038aac0  01 00 a0 e3                                      mov r0, #1
0038aac4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038aac8, declared_size=152, range_size=152, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject18UpdateAbsoluteAABBEv
; demangled: GameObject::UpdateAbsoluteAABB()
; decoder-mode: arm
0038aac8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0038aacc  00 40 a0 e1                                      mov r4, r0
0038aad0  48 a1 94 e5                                      ldr sl, [r4, #0x148]
0038aad4  44 01 90 e5                                      ldr r0, [r0, #0x144]
0038aad8  4c 81 94 e5                                      ldr r8, [r4, #0x14c]
0038aadc  50 71 94 e5                                      ldr r7, [r4, #0x150]
0038aae0  54 61 94 e5                                      ldr r6, [r4, #0x154]
0038aae4  58 51 94 e5                                      ldr r5, [r4, #0x158]
0038aae8  60 11 94 e5                                      ldr r1, [r4, #0x160]
0038aaec  2c 01 84 e5                                      str r0, [r4, #0x12c]
0038aaf0  30 a1 84 e5                                      str sl, [r4, #0x130]
0038aaf4  34 81 84 e5                                      str r8, [r4, #0x134]
0038aaf8  38 71 84 e5                                      str r7, [r4, #0x138]
0038aafc  3c 61 84 e5                                      str r6, [r4, #0x13c]
0038ab00  40 51 84 e5                                      str r5, [r4, #0x140]
0038ab04  26 10 fe eb                                      bl #0x30eba4
0038ab08  64 11 94 e5                                      ldr r1, [r4, #0x164]
0038ab0c  2c 01 84 e5                                      str r0, [r4, #0x12c]
0038ab10  0a 00 a0 e1                                      mov r0, sl
0038ab14  22 10 fe eb                                      bl #0x30eba4
0038ab18  68 11 94 e5                                      ldr r1, [r4, #0x168]
0038ab1c  30 01 84 e5                                      str r0, [r4, #0x130]
0038ab20  08 00 a0 e1                                      mov r0, r8
0038ab24  1e 10 fe eb                                      bl #0x30eba4
0038ab28  60 11 94 e5                                      ldr r1, [r4, #0x160]
0038ab2c  34 01 84 e5                                      str r0, [r4, #0x134]
0038ab30  07 00 a0 e1                                      mov r0, r7
0038ab34  1a 10 fe eb                                      bl #0x30eba4
0038ab38  64 11 94 e5                                      ldr r1, [r4, #0x164]
0038ab3c  38 01 84 e5                                      str r0, [r4, #0x138]
0038ab40  06 00 a0 e1                                      mov r0, r6
0038ab44  16 10 fe eb                                      bl #0x30eba4
0038ab48  68 11 94 e5                                      ldr r1, [r4, #0x168]
0038ab4c  3c 01 84 e5                                      str r0, [r4, #0x13c]
0038ab50  05 00 a0 e1                                      mov r0, r5
0038ab54  12 10 fe eb                                      bl #0x30eba4
0038ab58  40 01 84 e5                                      str r0, [r4, #0x140]
0038ab5c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0038ab60, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject13MeetConditionEv
; demangled: GameObject::MeetCondition() const
; decoder-mode: arm
0038ab60  01 00 a0 e3                                      mov r0, #1
0038ab64  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038ab68, declared_size=164, range_size=164, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject10IsTouchingERK7Point3DIfE
; demangled: GameObject::IsTouching(Point3D<float> const&) const
; decoder-mode: arm
0038ab68  70 40 2d e9                                      push {r4, r5, r6, lr}
0038ab6c  00 50 91 e5                                      ldr r5, [r1]
0038ab70  01 60 a0 e1                                      mov r6, r1
0038ab74  00 40 a0 e1                                      mov r4, r0
0038ab78  05 10 a0 e1                                      mov r1, r5
0038ab7c  2c 01 90 e5                                      ldr r0, [r0, #0x12c]
0038ab80  89 0f fe eb                                      bl #0x30e9ac
0038ab84  00 00 50 e3                                      cmp r0, #0
0038ab88  1d 00 00 0a                                      beq #0x38ac04
0038ab8c  05 00 a0 e1                                      mov r0, r5
0038ab90  38 11 94 e5                                      ldr r1, [r4, #0x138]
0038ab94  84 0f fe eb                                      bl #0x30e9ac
0038ab98  00 00 50 e3                                      cmp r0, #0
0038ab9c  18 00 00 0a                                      beq #0x38ac04
0038aba0  04 50 96 e5                                      ldr r5, [r6, #4]
0038aba4  30 01 94 e5                                      ldr r0, [r4, #0x130]
0038aba8  05 10 a0 e1                                      mov r1, r5
0038abac  7e 0f fe eb                                      bl #0x30e9ac
0038abb0  00 00 50 e3                                      cmp r0, #0
0038abb4  12 00 00 0a                                      beq #0x38ac04
0038abb8  05 00 a0 e1                                      mov r0, r5
0038abbc  3c 11 94 e5                                      ldr r1, [r4, #0x13c]
0038abc0  79 0f fe eb                                      bl #0x30e9ac
0038abc4  00 00 50 e3                                      cmp r0, #0
0038abc8  0d 00 00 0a                                      beq #0x38ac04
0038abcc  08 50 96 e5                                      ldr r5, [r6, #8]
0038abd0  34 01 94 e5                                      ldr r0, [r4, #0x134]
0038abd4  05 10 a0 e1                                      mov r1, r5
0038abd8  73 0f fe eb                                      bl #0x30e9ac
0038abdc  00 00 50 e3                                      cmp r0, #0
0038abe0  07 00 00 0a                                      beq #0x38ac04
0038abe4  05 00 a0 e1                                      mov r0, r5
0038abe8  40 11 94 e5                                      ldr r1, [r4, #0x140]
0038abec  6e 0f fe eb                                      bl #0x30e9ac
0038abf0  00 00 50 e3                                      cmp r0, #0
0038abf4  00 00 a0 e3                                      mov r0, #0
0038abf8  01 00 a0 13                                      movne r0, #1
0038abfc  70 00 ef e6                                      uxtb r0, r0
0038ac00  70 80 bd e8                                      pop {r4, r5, r6, pc}
0038ac04  00 00 a0 e3                                      mov r0, #0
0038ac08  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0038ac0c, declared_size=292, range_size=292, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject8IsNearbyERK7Point3DIfEf
; demangled: GameObject::IsNearby(Point3D<float> const&, float) const
; decoder-mode: arm
0038ac0c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038ac10  00 30 a0 e1                                      mov r3, r0
0038ac14  2c 41 90 e5                                      ldr r4, [r0, #0x12c]
0038ac18  02 50 a0 e1                                      mov r5, r2
0038ac1c  02 00 a0 e1                                      mov r0, r2
0038ac20  40 21 93 e5                                      ldr r2, [r3, #0x140]
0038ac24  0c d0 4d e2                                      sub sp, sp, #0xc
0038ac28  01 70 a0 e1                                      mov r7, r1
0038ac2c  c2 14 a0 e3                                      mov r1, #0xc2000000
0038ac30  04 20 8d e5                                      str r2, [sp, #4]
0038ac34  32 17 81 e2                                      add r1, r1, #0xc80000
0038ac38  30 a1 93 e5                                      ldr sl, [r3, #0x130]
0038ac3c  34 b1 93 e5                                      ldr fp, [r3, #0x134]
0038ac40  38 81 93 e5                                      ldr r8, [r3, #0x138]
0038ac44  3c 91 93 e5                                      ldr sb, [r3, #0x13c]
0038ac48  47 10 fe eb                                      bl #0x30ed6c
0038ac4c  00 60 a0 e1                                      mov r6, r0
0038ac50  06 10 a0 e1                                      mov r1, r6
0038ac54  04 00 a0 e1                                      mov r0, r4
0038ac58  d1 0f fe eb                                      bl #0x30eba4
0038ac5c  00 40 97 e5                                      ldr r4, [r7]
0038ac60  04 10 a0 e1                                      mov r1, r4
0038ac64  50 0f fe eb                                      bl #0x30e9ac
0038ac68  00 00 50 e3                                      cmp r0, #0
0038ac6c  0b 00 00 0a                                      beq #0x38aca0
0038ac70  42 14 a0 e3                                      mov r1, #0x42000000
0038ac74  05 00 a0 e1                                      mov r0, r5
0038ac78  32 17 81 e2                                      add r1, r1, #0xc80000
0038ac7c  3a 10 fe eb                                      bl #0x30ed6c
0038ac80  00 50 a0 e1                                      mov r5, r0
0038ac84  05 10 a0 e1                                      mov r1, r5
0038ac88  08 00 a0 e1                                      mov r0, r8
0038ac8c  c4 0f fe eb                                      bl #0x30eba4
0038ac90  04 10 a0 e1                                      mov r1, r4
0038ac94  06 0e fe eb                                      bl #0x30e4b4
0038ac98  00 00 50 e3                                      cmp r0, #0
0038ac9c  02 00 00 1a                                      bne #0x38acac
0038aca0  00 00 a0 e3                                      mov r0, #0
0038aca4  0c d0 8d e2                                      add sp, sp, #0xc
0038aca8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038acac  04 40 97 e5                                      ldr r4, [r7, #4]
0038acb0  06 10 a0 e1                                      mov r1, r6
0038acb4  0a 00 a0 e1                                      mov r0, sl
0038acb8  b9 0f fe eb                                      bl #0x30eba4
0038acbc  04 10 a0 e1                                      mov r1, r4
0038acc0  39 0f fe eb                                      bl #0x30e9ac
0038acc4  00 00 50 e3                                      cmp r0, #0
0038acc8  f4 ff ff 0a                                      beq #0x38aca0
0038accc  05 10 a0 e1                                      mov r1, r5
0038acd0  09 00 a0 e1                                      mov r0, sb
0038acd4  b2 0f fe eb                                      bl #0x30eba4
0038acd8  04 10 a0 e1                                      mov r1, r4
0038acdc  f4 0d fe eb                                      bl #0x30e4b4
0038ace0  00 00 50 e3                                      cmp r0, #0
0038ace4  ed ff ff 0a                                      beq #0x38aca0
0038ace8  08 40 97 e5                                      ldr r4, [r7, #8]
0038acec  06 10 a0 e1                                      mov r1, r6
0038acf0  0b 00 a0 e1                                      mov r0, fp
0038acf4  aa 0f fe eb                                      bl #0x30eba4
0038acf8  04 10 a0 e1                                      mov r1, r4
0038acfc  2a 0f fe eb                                      bl #0x30e9ac
0038ad00  00 00 50 e3                                      cmp r0, #0
0038ad04  e5 ff ff 0a                                      beq #0x38aca0
0038ad08  05 10 a0 e1                                      mov r1, r5
0038ad0c  04 00 9d e5                                      ldr r0, [sp, #4]
0038ad10  a3 0f fe eb                                      bl #0x30eba4
0038ad14  04 10 a0 e1                                      mov r1, r4
0038ad18  e5 0d fe eb                                      bl #0x30e4b4
0038ad1c  00 00 50 e3                                      cmp r0, #0
0038ad20  00 00 a0 e3                                      mov r0, #0
0038ad24  01 00 a0 13                                      movne r0, #1
0038ad28  70 00 ef e6                                      uxtb r0, r0
0038ad2c  dc ff ff ea                                      b #0x38aca4

; FUNCTION 0x0038ad30, declared_size=68, range_size=68, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject15IsInteractiveExEPS_
; demangled: GameObject::IsInteractiveEx(GameObject*) const
; decoder-mode: arm
0038ad30  70 40 2d e9                                      push {r4, r5, r6, lr}
0038ad34  00 30 90 e5                                      ldr r3, [r0]
0038ad38  00 40 a0 e1                                      mov r4, r0
0038ad3c  01 50 a0 e1                                      mov r5, r1
0038ad40  0f e0 a0 e1                                      mov lr, pc
0038ad44  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0038ad48  00 00 50 e3                                      cmp r0, #0
0038ad4c  00 00 00 1a                                      bne #0x38ad54
0038ad50  70 80 bd e8                                      pop {r4, r5, r6, pc}
0038ad54  04 00 a0 e1                                      mov r0, r4
0038ad58  05 10 a0 e1                                      mov r1, r5
0038ad5c  00 30 94 e5                                      ldr r3, [r4]
0038ad60  0f e0 a0 e1                                      mov lr, pc
0038ad64  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0038ad68  01 00 90 e2                                      adds r0, r0, #1
0038ad6c  01 00 a0 13                                      movne r0, #1
0038ad70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0038ad74, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject18GetInteractionTypeEPS_
; demangled: GameObject::GetInteractionType(GameObject*) const
; decoder-mode: arm
0038ad74  00 00 e0 e3                                      mvn r0, #0
0038ad78  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038ad7c, declared_size=76, range_size=76, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject20GetInteractionRadiusEv
; demangled: GameObject::GetInteractionRadius() const
; decoder-mode: arm
0038ad7c  70 40 2d e9                                      push {r4, r5, r6, lr}
0038ad80  00 40 a0 e1                                      mov r4, r0
0038ad84  44 11 90 e5                                      ldr r1, [r0, #0x144]
0038ad88  50 01 90 e5                                      ldr r0, [r0, #0x150]
0038ad8c  86 0d fe eb                                      bl #0x30e3ac
0038ad90  48 11 94 e5                                      ldr r1, [r4, #0x148]
0038ad94  00 50 a0 e1                                      mov r5, r0
0038ad98  54 01 94 e5                                      ldr r0, [r4, #0x154]
0038ad9c  82 0d fe eb                                      bl #0x30e3ac
0038ada0  00 40 a0 e1                                      mov r4, r0
0038ada4  04 10 a0 e1                                      mov r1, r4
0038ada8  05 00 a0 e1                                      mov r0, r5
0038adac  51 0d fe eb                                      bl #0x30e2f8
0038adb0  00 00 50 e3                                      cmp r0, #0
0038adb4  04 50 a0 11                                      movne r5, r4
0038adb8  05 00 a0 e1                                      mov r0, r5
0038adbc  3f 14 a0 e3                                      mov r1, #0x3f000000
0038adc0  e9 0f fe eb                                      bl #0x30ed6c
0038adc4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0038adc8, declared_size=28, range_size=28, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject8SetScaleERK7Point3DIfE
; demangled: GameObject::SetScale(Point3D<float> const&)
; decoder-mode: arm
0038adc8  00 30 91 e5                                      ldr r3, [r1]
0038adcc  20 31 80 e5                                      str r3, [r0, #0x120]
0038add0  04 30 91 e5                                      ldr r3, [r1, #4]
0038add4  24 31 80 e5                                      str r3, [r0, #0x124]
0038add8  08 30 91 e5                                      ldr r3, [r1, #8]
0038addc  28 31 80 e5                                      str r3, [r0, #0x128]
0038ade0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038ade4, declared_size=28, range_size=28, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject14IsBatchVisibleEv
; demangled: GameObject::IsBatchVisible() const
; decoder-mode: arm
0038ade4  d8 32 90 e5                                      ldr r3, [r0, #0x2d8]
0038ade8  00 00 53 e3                                      cmp r3, #0
0038adec  08 30 93 15                                      ldrne r3, [r3, #8]
0038adf0  f0 02 d0 05                                      ldrbeq r0, [r0, #0x2f0]
0038adf4  1c 01 93 15                                      ldrne r0, [r3, #0x11c]
0038adf8  01 00 00 12                                      andne r0, r0, #1
0038adfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038ae2c, declared_size=708, range_size=708, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject15UpdateIdleSoundEv
; demangled: GameObject::UpdateIdleSound()
; decoder-mode: arm
0038ae2c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038ae30  a0 42 9f e5                                      ldr r4, [pc, #0x2a0]
0038ae34  a0 62 9f e5                                      ldr r6, [pc, #0x2a0]
0038ae38  2c d0 4d e2                                      sub sp, sp, #0x2c
0038ae3c  04 40 8f e0                                      add r4, pc, r4
0038ae40  06 30 94 e7                                      ldr r3, [r4, r6]
0038ae44  00 50 a0 e1                                      mov r5, r0
0038ae48  00 20 93 e5                                      ldr r2, [r3]
0038ae4c  00 00 52 e3                                      cmp r2, #0
0038ae50  14 00 00 0a                                      beq #0x38aea8
0038ae54  73 83 d0 e5                                      ldrb r8, [r0, #0x373]
0038ae58  00 00 58 e3                                      cmp r8, #0
0038ae5c  13 00 00 1a                                      bne #0x38aeb0
0038ae60  78 32 9f e5                                      ldr r3, [pc, #0x278]
0038ae64  03 a0 94 e7                                      ldr sl, [r4, r3]
0038ae68  0a 00 a0 e1                                      mov r0, sl
0038ae6c  c8 51 fe eb                                      bl #0x31f594
0038ae70  00 00 50 e3                                      cmp r0, #0
0038ae74  0b 00 00 0a                                      beq #0x38aea8
0038ae78  40 00 9a e5                                      ldr r0, [sl, #0x40]
0038ae7c  08 10 a0 e1                                      mov r1, r8
0038ae80  01 20 a0 e3                                      mov r2, #1
0038ae84  7b 8d ff eb                                      bl #0x36e478
0038ae88  60 36 90 e5                                      ldr r3, [r0, #0x660]
0038ae8c  00 00 53 e3                                      cmp r3, #0
0038ae90  04 00 00 0a                                      beq #0x38aea8
0038ae94  0a 00 a0 e1                                      mov r0, sl
0038ae98  bd 51 fe eb                                      bl #0x31f594
0038ae9c  30 31 90 e5                                      ldr r3, [r0, #0x130]
0038aea0  26 00 53 e3                                      cmp r3, #0x26
0038aea4  0c 00 00 0a                                      beq #0x38aedc
0038aea8  2c d0 8d e2                                      add sp, sp, #0x2c
0038aeac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038aeb0  72 23 d0 e5                                      ldrb r2, [r0, #0x372]
0038aeb4  00 00 52 e3                                      cmp r2, #0
0038aeb8  fa ff ff 0a                                      beq #0x38aea8
0038aebc  00 20 a0 e3                                      mov r2, #0
0038aec0  72 23 c0 e5                                      strb r2, [r0, #0x372]
0038aec4  37 2e a0 e3                                      mov r2, #0x370
0038aec8  f2 10 90 e1                                      ldrsh r1, [r0, r2]
0038aecc  00 00 93 e5                                      ldr r0, [r3]
0038aed0  fa 2f a0 e3                                      mov r2, #0x3e8
0038aed4  44 7c ff eb                                      bl #0x369fec
0038aed8  f2 ff ff ea                                      b #0x38aea8
0038aedc  00 12 9f e5                                      ldr r1, [pc, #0x200]
0038aee0  00 22 9f e5                                      ldr r2, [pc, #0x200]
0038aee4  2c 00 9a e5                                      ldr r0, [sl, #0x2c]
0038aee8  01 10 8f e0                                      add r1, pc, r1
0038aeec  02 20 8f e0                                      add r2, pc, r2
0038aef0  39 e7 04 eb                                      bl #0x4c4bdc
0038aef4  9a 0e fe eb                                      bl #0x30e964
0038aef8  ec 31 9f e5                                      ldr r3, [pc, #0x1ec]
0038aefc  00 70 a0 e1                                      mov r7, r0
0038af00  08 10 a0 e1                                      mov r1, r8
0038af04  03 30 94 e7                                      ldr r3, [r4, r3]
0038af08  40 00 9a e5                                      ldr r0, [sl, #0x40]
0038af0c  01 20 a0 e3                                      mov r2, #1
0038af10  08 c0 93 e5                                      ldr ip, [r3, #8]
0038af14  00 e0 93 e5                                      ldr lr, [r3]
0038af18  04 30 93 e5                                      ldr r3, [r3, #4]
0038af1c  24 c0 8d e5                                      str ip, [sp, #0x24]
0038af20  1c e0 8d e5                                      str lr, [sp, #0x1c]
0038af24  20 30 8d e5                                      str r3, [sp, #0x20]
0038af28  52 8d ff eb                                      bl #0x36e478
0038af2c  60 36 90 e5                                      ldr r3, [r0, #0x660]
0038af30  00 00 53 e3                                      cmp r3, #0
0038af34  63 00 00 0a                                      beq #0x38b0c8
0038af38  08 10 a0 e1                                      mov r1, r8
0038af3c  40 00 9a e5                                      ldr r0, [sl, #0x40]
0038af40  01 20 a0 e3                                      mov r2, #1
0038af44  4b 8d ff eb                                      bl #0x36e478
0038af48  60 36 90 e5                                      ldr r3, [r0, #0x660]
0038af4c  60 11 93 e5                                      ldr r1, [r3, #0x160]
0038af50  1c 10 8d e5                                      str r1, [sp, #0x1c]
0038af54  64 a1 93 e5                                      ldr sl, [r3, #0x164]
0038af58  20 a0 8d e5                                      str sl, [sp, #0x20]
0038af5c  68 81 93 e5                                      ldr r8, [r3, #0x168]
0038af60  24 80 8d e5                                      str r8, [sp, #0x24]
0038af64  60 01 95 e5                                      ldr r0, [r5, #0x160]
0038af68  0f 0d fe eb                                      bl #0x30e3ac
0038af6c  0a 10 a0 e1                                      mov r1, sl
0038af70  00 90 a0 e1                                      mov sb, r0
0038af74  64 01 95 e5                                      ldr r0, [r5, #0x164]
0038af78  0b 0d fe eb                                      bl #0x30e3ac
0038af7c  08 10 a0 e1                                      mov r1, r8
0038af80  00 b0 a0 e1                                      mov fp, r0
0038af84  68 01 95 e5                                      ldr r0, [r5, #0x168]
0038af88  07 0d fe eb                                      bl #0x30e3ac
0038af8c  09 10 a0 e1                                      mov r1, sb
0038af90  00 a0 a0 e1                                      mov sl, r0
0038af94  09 00 a0 e1                                      mov r0, sb
0038af98  73 0f fe eb                                      bl #0x30ed6c
0038af9c  0b 10 a0 e1                                      mov r1, fp
0038afa0  00 80 a0 e1                                      mov r8, r0
0038afa4  0b 00 a0 e1                                      mov r0, fp
0038afa8  6f 0f fe eb                                      bl #0x30ed6c
0038afac  00 10 a0 e1                                      mov r1, r0
0038afb0  08 00 a0 e1                                      mov r0, r8
0038afb4  fa 0e fe eb                                      bl #0x30eba4
0038afb8  0a 10 a0 e1                                      mov r1, sl
0038afbc  00 80 a0 e1                                      mov r8, r0
0038afc0  0a 00 a0 e1                                      mov r0, sl
0038afc4  68 0f fe eb                                      bl #0x30ed6c
0038afc8  00 10 a0 e1                                      mov r1, r0
0038afcc  08 00 a0 e1                                      mov r0, r8
0038afd0  f3 0e fe eb                                      bl #0x30eba4
0038afd4  32 0e fe eb                                      bl #0x30e8a4
0038afd8  78 0c fe eb                                      bl #0x30e1c0
0038afdc  af 0d fe eb                                      bl #0x30e6a0
0038afe0  72 33 d5 e5                                      ldrb r3, [r5, #0x372]
0038afe4  00 80 a0 e1                                      mov r8, r0
0038afe8  00 00 53 e3                                      cmp r3, #0
0038afec  16 00 00 0a                                      beq #0x38b04c
0038aff0  07 00 a0 e1                                      mov r0, r7
0038aff4  08 10 a0 e1                                      mov r1, r8
0038aff8  6b 0e fe eb                                      bl #0x30e9ac
0038affc  00 00 50 e3                                      cmp r0, #0
0038b000  a8 ff ff 0a                                      beq #0x38aea8
0038b004  07 00 a0 e1                                      mov r0, r7
0038b008  00 10 a0 e3                                      mov r1, #0
0038b00c  b9 0c fe eb                                      bl #0x30e2f8
0038b010  00 00 50 e3                                      cmp r0, #0
0038b014  a3 ff ff 0a                                      beq #0x38aea8
0038b018  06 30 94 e7                                      ldr r3, [r4, r6]
0038b01c  00 20 a0 e3                                      mov r2, #0
0038b020  72 23 c5 e5                                      strb r2, [r5, #0x372]
0038b024  00 00 93 e5                                      ldr r0, [r3]
0038b028  37 3e a0 e3                                      mov r3, #0x370
0038b02c  f3 10 95 e1                                      ldrsh r1, [r5, r3]
0038b030  fa 2f a0 e3                                      mov r2, #0x3e8
0038b034  1c 30 8d e2                                      add r3, sp, #0x1c
0038b038  00 70 8d e5                                      str r7, [sp]
0038b03c  75 7c ff eb                                      bl #0x36a218
0038b040  72 33 d5 e5                                      ldrb r3, [r5, #0x372]
0038b044  00 00 53 e3                                      cmp r3, #0
0038b048  96 ff ff 1a                                      bne #0x38aea8
0038b04c  08 10 a0 e1                                      mov r1, r8
0038b050  07 00 a0 e1                                      mov r0, r7
0038b054  a7 0c fe eb                                      bl #0x30e2f8
0038b058  00 00 50 e3                                      cmp r0, #0
0038b05c  91 ff ff 0a                                      beq #0x38aea8
0038b060  07 00 a0 e1                                      mov r0, r7
0038b064  00 10 a0 e3                                      mov r1, #0
0038b068  a2 0c fe eb                                      bl #0x30e2f8
0038b06c  00 00 50 e3                                      cmp r0, #0
0038b070  8c ff ff 0a                                      beq #0x38aea8
0038b074  06 30 94 e7                                      ldr r3, [r4, r6]
0038b078  01 c0 a0 e3                                      mov ip, #1
0038b07c  72 c3 c5 e5                                      strb ip, [r5, #0x372]
0038b080  60 71 95 e5                                      ldr r7, [r5, #0x160]
0038b084  64 61 95 e5                                      ldr r6, [r5, #0x164]
0038b088  68 41 95 e5                                      ldr r4, [r5, #0x168]
0038b08c  00 00 93 e5                                      ldr r0, [r3]
0038b090  bf e4 a0 e3                                      mov lr, #0xbf000000
0038b094  37 3e a0 e3                                      mov r3, #0x370
0038b098  f3 10 95 e1                                      ldrsh r1, [r5, r3]
0038b09c  02 e5 8e e2                                      add lr, lr, #0x800000
0038b0a0  0c 30 a0 e1                                      mov r3, ip
0038b0a4  10 20 8d e2                                      add r2, sp, #0x10
0038b0a8  10 70 8d e5                                      str r7, [sp, #0x10]
0038b0ac  14 60 8d e5                                      str r6, [sp, #0x14]
0038b0b0  18 40 8d e5                                      str r4, [sp, #0x18]
0038b0b4  08 e0 8d e5                                      str lr, [sp, #8]
0038b0b8  00 c0 8d e5                                      str ip, [sp]
0038b0bc  04 e0 8d e5                                      str lr, [sp, #4]
0038b0c0  44 81 ff eb                                      bl #0x36b5d8
0038b0c4  77 ff ff ea                                      b #0x38aea8
0038b0c8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0038b0cc  20 a0 9d e5                                      ldr sl, [sp, #0x20]
0038b0d0  24 80 9d e5                                      ldr r8, [sp, #0x24]
0038b0d4  a2 ff ff ea                                      b #0x38af64
; mapping-symbol data/literal pool
0038b0d8  54 9c 60 00 a4 0d 00 00 f4 37 00 00 70 74 53 00  .byte 0x54, 0x9c, 0x60, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x70, 0x74, 0x53, 0x00
0038b0e8  7c 74 53 00 2c 3f 00 00                          .byte 0x7c, 0x74, 0x53, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x0038b0f0, declared_size=32, range_size=32, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject10SetVisibleEb
; demangled: GameObject::SetVisible(bool)
; decoder-mode: arm
0038b0f0  00 00 51 e3                                      cmp r1, #0
0038b0f4  d8 32 90 e5                                      ldr r3, [r0, #0x2d8]
0038b0f8  8a 10 d0 15                                      ldrbne r1, [r0, #0x8a]
0038b0fc  00 00 53 e3                                      cmp r3, #0
0038b100  80 10 c0 e5                                      strb r1, [r0, #0x80]
0038b104  1e ff 2f 01                                      bxeq lr
0038b108  03 00 a0 e1                                      mov r0, r3
0038b10c  af 98 03 ea                                      b #0x4713d0

; FUNCTION 0x0038b110, declared_size=280, range_size=280, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject15SetRelativeAABBERK4aabbIfEb
; demangled: GameObject::SetRelativeAABB(aabb<float> const&, bool)
; decoder-mode: arm
0038b110  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038b114  00 50 91 e5                                      ldr r5, [r1]
0038b118  01 30 a0 e1                                      mov r3, r1
0038b11c  00 40 a0 e1                                      mov r4, r0
0038b120  44 51 80 e5                                      str r5, [r0, #0x144]
0038b124  04 70 91 e5                                      ldr r7, [r1, #4]
0038b128  05 10 a0 e1                                      mov r1, r5
0038b12c  48 71 80 e5                                      str r7, [r0, #0x148]
0038b130  08 20 93 e5                                      ldr r2, [r3, #8]
0038b134  4c 21 80 e5                                      str r2, [r0, #0x14c]
0038b138  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0038b13c  50 01 84 e5                                      str r0, [r4, #0x150]
0038b140  10 60 93 e5                                      ldr r6, [r3, #0x10]
0038b144  54 61 84 e5                                      str r6, [r4, #0x154]
0038b148  14 30 93 e5                                      ldr r3, [r3, #0x14]
0038b14c  58 31 84 e5                                      str r3, [r4, #0x158]
0038b150  95 0c fe eb                                      bl #0x30e3ac
0038b154  00 10 a0 e3                                      mov r1, #0
0038b158  00 80 a0 e1                                      mov r8, r0
0038b15c  8a 0b fe eb                                      bl #0x30df8c
0038b160  00 00 50 e3                                      cmp r0, #0
0038b164  07 00 00 0a                                      beq #0x38b188
0038b168  07 10 a0 e1                                      mov r1, r7
0038b16c  06 00 a0 e1                                      mov r0, r6
0038b170  8d 0c fe eb                                      bl #0x30e3ac
0038b174  00 10 a0 e3                                      mov r1, #0
0038b178  83 0b fe eb                                      bl #0x30df8c
0038b17c  00 00 50 e3                                      cmp r0, #0
0038b180  01 30 a0 13                                      movne r3, #1
0038b184  f9 32 c4 15                                      strbne r3, [r4, #0x2f9]
0038b188  41 14 a0 e3                                      mov r1, #0x41000000
0038b18c  08 00 a0 e1                                      mov r0, r8
0038b190  02 16 81 e2                                      add r1, r1, #0x200000
0038b194  5c 0d fe eb                                      bl #0x30e70c
0038b198  00 00 50 e3                                      cmp r0, #0
0038b19c  09 00 00 0a                                      beq #0x38b1c8
0038b1a0  01 11 a0 e3                                      mov r1, #0x40000000
0038b1a4  0a 16 81 e2                                      add r1, r1, #0xa00000
0038b1a8  05 00 a0 e1                                      mov r0, r5
0038b1ac  7e 0c fe eb                                      bl #0x30e3ac
0038b1b0  01 11 a0 e3                                      mov r1, #0x40000000
0038b1b4  44 01 84 e5                                      str r0, [r4, #0x144]
0038b1b8  0a 16 81 e2                                      add r1, r1, #0xa00000
0038b1bc  50 01 94 e5                                      ldr r0, [r4, #0x150]
0038b1c0  77 0e fe eb                                      bl #0x30eba4
0038b1c4  50 01 84 e5                                      str r0, [r4, #0x150]
0038b1c8  48 51 94 e5                                      ldr r5, [r4, #0x148]
0038b1cc  54 01 94 e5                                      ldr r0, [r4, #0x154]
0038b1d0  05 10 a0 e1                                      mov r1, r5
0038b1d4  74 0c fe eb                                      bl #0x30e3ac
0038b1d8  41 14 a0 e3                                      mov r1, #0x41000000
0038b1dc  02 16 81 e2                                      add r1, r1, #0x200000
0038b1e0  49 0d fe eb                                      bl #0x30e70c
0038b1e4  00 00 50 e3                                      cmp r0, #0
0038b1e8  09 00 00 0a                                      beq #0x38b214
0038b1ec  01 11 a0 e3                                      mov r1, #0x40000000
0038b1f0  0a 16 81 e2                                      add r1, r1, #0xa00000
0038b1f4  05 00 a0 e1                                      mov r0, r5
0038b1f8  6b 0c fe eb                                      bl #0x30e3ac
0038b1fc  01 11 a0 e3                                      mov r1, #0x40000000
0038b200  48 01 84 e5                                      str r0, [r4, #0x148]
0038b204  0a 16 81 e2                                      add r1, r1, #0xa00000
0038b208  54 01 94 e5                                      ldr r0, [r4, #0x154]
0038b20c  64 0e fe eb                                      bl #0x30eba4
0038b210  54 01 84 e5                                      str r0, [r4, #0x154]
0038b214  04 00 a0 e1                                      mov r0, r4
0038b218  2a fe ff eb                                      bl #0x38aac8
0038b21c  04 00 a0 e1                                      mov r0, r4
0038b220  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0038b224  1d 23 00 ea                                      b #0x393ea0

; FUNCTION 0x0038b228, declared_size=164, range_size=164, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject18GetInteractionSpotEv
; demangled: GameObject::GetInteractionSpot() const
; decoder-mode: arm
0038b228  30 40 2d e9                                      push {r4, r5, lr}
0038b22c  ec 32 d1 e5                                      ldrb r3, [r1, #0x2ec]
0038b230  01 50 a0 e1                                      mov r5, r1
0038b234  14 d0 4d e2                                      sub sp, sp, #0x14
0038b238  00 00 53 e3                                      cmp r3, #0
0038b23c  00 40 a0 e1                                      mov r4, r0
0038b240  e8 12 91 15                                      ldrne r1, [r1, #0x2e8]
0038b244  09 00 00 1a                                      bne #0x38b270
0038b248  d8 02 95 e5                                      ldr r0, [r5, #0x2d8]
0038b24c  01 30 a0 e3                                      mov r3, #1
0038b250  ec 32 c5 e5                                      strb r3, [r5, #0x2ec]
0038b254  00 00 50 e3                                      cmp r0, #0
0038b258  02 00 00 0a                                      beq #0x38b268
0038b25c  64 10 9f e5                                      ldr r1, [pc, #0x64]
0038b260  01 10 8f e0                                      add r1, pc, r1
0038b264  eb 95 03 eb                                      bl #0x470a18
0038b268  00 10 a0 e1                                      mov r1, r0
0038b26c  e8 02 85 e5                                      str r0, [r5, #0x2e8]
0038b270  00 00 51 e3                                      cmp r1, #0
0038b274  0a 00 00 0a                                      beq #0x38b2a4
0038b278  04 00 8d e2                                      add r0, sp, #4
0038b27c  bf 2f 08 eb                                      bl #0x597180
0038b280  08 20 9d e5                                      ldr r2, [sp, #8]
0038b284  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0038b288  04 10 9d e5                                      ldr r1, [sp, #4]
0038b28c  04 20 84 e5                                      str r2, [r4, #4]
0038b290  08 30 84 e5                                      str r3, [r4, #8]
0038b294  00 10 84 e5                                      str r1, [r4]
0038b298  04 00 a0 e1                                      mov r0, r4
0038b29c  14 d0 8d e2                                      add sp, sp, #0x14
0038b2a0  30 80 bd e8                                      pop {r4, r5, pc}
0038b2a4  05 00 a0 e1                                      mov r0, r5
0038b2a8  cb 20 00 eb                                      bl #0x3935dc
0038b2ac  00 30 90 e5                                      ldr r3, [r0]
0038b2b0  00 30 84 e5                                      str r3, [r4]
0038b2b4  04 30 90 e5                                      ldr r3, [r0, #4]
0038b2b8  04 30 84 e5                                      str r3, [r4, #4]
0038b2bc  08 30 90 e5                                      ldr r3, [r0, #8]
0038b2c0  08 30 84 e5                                      str r3, [r4, #8]
0038b2c4  f3 ff ff ea                                      b #0x38b298
; mapping-symbol data/literal pool
0038b2c8  20 71 53 00                                      .byte 0x20, 0x71, 0x53, 0x00

; FUNCTION 0x0038b300, declared_size=396, range_size=396, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject8IsNearbyEPKS_f
; demangled: GameObject::IsNearby(GameObject const*, float) const
; decoder-mode: arm
0038b300  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038b304  68 31 9f e5                                      ldr r3, [pc, #0x168]
0038b308  00 50 51 e2                                      subs r5, r1, #0
0038b30c  0c d0 4d e2                                      sub sp, sp, #0xc
0038b310  00 40 a0 e1                                      mov r4, r0
0038b314  03 30 8f e0                                      add r3, pc, r3
0038b318  02 60 a0 e1                                      mov r6, r2
0038b31c  3f 00 00 0a                                      beq #0x38b420
0038b320  c2 14 a0 e3                                      mov r1, #0xc2000000
0038b324  32 17 81 e2                                      add r1, r1, #0xc80000
0038b328  06 00 a0 e1                                      mov r0, r6
0038b32c  8e 0e fe eb                                      bl #0x30ed6c
0038b330  2c 81 94 e5                                      ldr r8, [r4, #0x12c]
0038b334  00 70 a0 e1                                      mov r7, r0
0038b338  07 10 a0 e1                                      mov r1, r7
0038b33c  08 00 a0 e1                                      mov r0, r8
0038b340  17 0e fe eb                                      bl #0x30eba4
0038b344  38 11 95 e5                                      ldr r1, [r5, #0x138]
0038b348  97 0d fe eb                                      bl #0x30e9ac
0038b34c  00 00 50 e3                                      cmp r0, #0
0038b350  40 b1 94 e5                                      ldr fp, [r4, #0x140]
0038b354  30 a1 94 e5                                      ldr sl, [r4, #0x130]
0038b358  34 91 94 e5                                      ldr sb, [r4, #0x134]
0038b35c  38 81 94 e5                                      ldr r8, [r4, #0x138]
0038b360  3c 41 94 e5                                      ldr r4, [r4, #0x13c]
0038b364  0b 00 00 0a                                      beq #0x38b398
0038b368  42 14 a0 e3                                      mov r1, #0x42000000
0038b36c  06 00 a0 e1                                      mov r0, r6
0038b370  32 17 81 e2                                      add r1, r1, #0xc80000
0038b374  7c 0e fe eb                                      bl #0x30ed6c
0038b378  00 60 a0 e1                                      mov r6, r0
0038b37c  06 10 a0 e1                                      mov r1, r6
0038b380  08 00 a0 e1                                      mov r0, r8
0038b384  06 0e fe eb                                      bl #0x30eba4
0038b388  2c 11 95 e5                                      ldr r1, [r5, #0x12c]
0038b38c  48 0c fe eb                                      bl #0x30e4b4
0038b390  00 00 50 e3                                      cmp r0, #0
0038b394  02 00 00 1a                                      bne #0x38b3a4
0038b398  00 00 a0 e3                                      mov r0, #0
0038b39c  0c d0 8d e2                                      add sp, sp, #0xc
0038b3a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038b3a4  07 10 a0 e1                                      mov r1, r7
0038b3a8  0a 00 a0 e1                                      mov r0, sl
0038b3ac  fc 0d fe eb                                      bl #0x30eba4
0038b3b0  3c 11 95 e5                                      ldr r1, [r5, #0x13c]
0038b3b4  7c 0d fe eb                                      bl #0x30e9ac
0038b3b8  00 00 50 e3                                      cmp r0, #0
0038b3bc  f5 ff ff 0a                                      beq #0x38b398
0038b3c0  06 10 a0 e1                                      mov r1, r6
0038b3c4  04 00 a0 e1                                      mov r0, r4
0038b3c8  f5 0d fe eb                                      bl #0x30eba4
0038b3cc  30 11 95 e5                                      ldr r1, [r5, #0x130]
0038b3d0  37 0c fe eb                                      bl #0x30e4b4
0038b3d4  00 00 50 e3                                      cmp r0, #0
0038b3d8  ee ff ff 0a                                      beq #0x38b398
0038b3dc  07 10 a0 e1                                      mov r1, r7
0038b3e0  09 00 a0 e1                                      mov r0, sb
0038b3e4  ee 0d fe eb                                      bl #0x30eba4
0038b3e8  40 11 95 e5                                      ldr r1, [r5, #0x140]
0038b3ec  6e 0d fe eb                                      bl #0x30e9ac
0038b3f0  00 00 50 e3                                      cmp r0, #0
0038b3f4  e7 ff ff 0a                                      beq #0x38b398
0038b3f8  06 10 a0 e1                                      mov r1, r6
0038b3fc  0b 00 a0 e1                                      mov r0, fp
0038b400  e7 0d fe eb                                      bl #0x30eba4
0038b404  34 11 95 e5                                      ldr r1, [r5, #0x134]
0038b408  29 0c fe eb                                      bl #0x30e4b4
0038b40c  00 00 50 e3                                      cmp r0, #0
0038b410  00 00 a0 e3                                      mov r0, #0
0038b414  01 00 a0 13                                      movne r0, #1
0038b418  70 00 ef e6                                      uxtb r0, r0
0038b41c  de ff ff ea                                      b #0x38b39c
0038b420  50 20 9f e5                                      ldr r2, [pc, #0x50]
0038b424  02 20 93 e7                                      ldr r2, [r3, r2]
0038b428  00 20 92 e5                                      ldr r2, [r2]
0038b42c  02 00 52 e3                                      cmp r2, #2
0038b430  00 50 85 05                                      streq r5, [r5]
0038b434  b9 ff ff 0a                                      beq #0x38b320
0038b438  01 00 52 e3                                      cmp r2, #1
0038b43c  b7 ff ff 1a                                      bne #0x38b320
0038b440  34 00 9f e5                                      ldr r0, [pc, #0x34]
0038b444  34 10 9f e5                                      ldr r1, [pc, #0x34]
0038b448  34 20 9f e5                                      ldr r2, [pc, #0x34]
0038b44c  00 00 93 e7                                      ldr r0, [r3, r0]
0038b450  30 30 9f e5                                      ldr r3, [pc, #0x30]
0038b454  8b c1 00 e3                                      movw ip, #0x18b
0038b458  01 10 8f e0                                      add r1, pc, r1
0038b45c  02 20 8f e0                                      add r2, pc, r2
0038b460  03 30 8f e0                                      add r3, pc, r3
0038b464  a8 00 80 e2                                      add r0, r0, #0xa8
0038b468  00 c0 8d e5                                      str ip, [sp]
0038b46c  e4 0a fe eb                                      bl #0x30e004
0038b470  aa ff ff ea                                      b #0x38b320
; mapping-symbol data/literal pool
0038b474  7c 97 60 00 c0 39 00 00 c0 19 00 00 80 2f 53 00  .byte 0x7c, 0x97, 0x60, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x80, 0x2f, 0x53, 0x00
0038b484  3c 6f 53 00 40 6f 53 00                          .byte 0x3c, 0x6f, 0x53, 0x00, 0x40, 0x6f, 0x53, 0x00

; FUNCTION 0x0038b48c, declared_size=140, range_size=140, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject14IsPlayerNearbyEf
; demangled: GameObject::IsPlayerNearby(float) const
; decoder-mode: arm
0038b48c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038b490  78 50 9f e5                                      ldr r5, [pc, #0x78]
0038b494  78 80 9f e5                                      ldr r8, [pc, #0x78]
0038b498  00 60 a0 e1                                      mov r6, r0
0038b49c  05 50 8f e0                                      add r5, pc, r5
0038b4a0  08 30 95 e7                                      ldr r3, [r5, r8]
0038b4a4  01 70 a0 e1                                      mov r7, r1
0038b4a8  40 00 93 e5                                      ldr r0, [r3, #0x40]
0038b4ac  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
0038b4b0  00 00 53 e3                                      cmp r3, #0
0038b4b4  13 00 00 da                                      ble #0x38b508
0038b4b8  00 40 a0 e3                                      mov r4, #0
0038b4bc  04 10 a0 e1                                      mov r1, r4
0038b4c0  01 20 a0 e3                                      mov r2, #1
0038b4c4  9e 8c ff eb                                      bl #0x36e744
0038b4c8  60 36 90 e5                                      ldr r3, [r0, #0x660]
0038b4cc  07 20 a0 e1                                      mov r2, r7
0038b4d0  06 00 a0 e1                                      mov r0, r6
0038b4d4  00 10 53 e2                                      subs r1, r3, #0
0038b4d8  01 40 84 e2                                      add r4, r4, #1
0038b4dc  04 00 00 0a                                      beq #0x38b4f4
0038b4e0  86 ff ff eb                                      bl #0x38b300
0038b4e4  00 00 50 e3                                      cmp r0, #0
0038b4e8  01 00 00 0a                                      beq #0x38b4f4
0038b4ec  01 00 a0 e3                                      mov r0, #1
0038b4f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038b4f4  08 30 95 e7                                      ldr r3, [r5, r8]
0038b4f8  40 00 93 e5                                      ldr r0, [r3, #0x40]
0038b4fc  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
0038b500  03 00 54 e1                                      cmp r4, r3
0038b504  ec ff ff ba                                      blt #0x38b4bc
0038b508  00 00 a0 e3                                      mov r0, #0
0038b50c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0038b510  f4 95 60 00 f4 37 00 00                          .byte 0xf4, 0x95, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0038b518, declared_size=280, range_size=280, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject10IsTouchingEPKS_
; demangled: GameObject::IsTouching(GameObject const*) const
; decoder-mode: arm
0038b518  30 40 2d e9                                      push {r4, r5, lr}
0038b51c  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0038b520  00 40 51 e2                                      subs r4, r1, #0
0038b524  0c d0 4d e2                                      sub sp, sp, #0xc
0038b528  00 50 a0 e1                                      mov r5, r0
0038b52c  03 30 8f e0                                      add r3, pc, r3
0038b530  23 00 00 0a                                      beq #0x38b5c4
0038b534  2c 01 95 e5                                      ldr r0, [r5, #0x12c]
0038b538  38 11 94 e5                                      ldr r1, [r4, #0x138]
0038b53c  1a 0d fe eb                                      bl #0x30e9ac
0038b540  00 00 50 e3                                      cmp r0, #0
0038b544  04 00 00 0a                                      beq #0x38b55c
0038b548  38 01 95 e5                                      ldr r0, [r5, #0x138]
0038b54c  2c 11 94 e5                                      ldr r1, [r4, #0x12c]
0038b550  d7 0b fe eb                                      bl #0x30e4b4
0038b554  00 00 50 e3                                      cmp r0, #0
0038b558  02 00 00 1a                                      bne #0x38b568
0038b55c  00 00 a0 e3                                      mov r0, #0
0038b560  0c d0 8d e2                                      add sp, sp, #0xc
0038b564  30 80 bd e8                                      pop {r4, r5, pc}
0038b568  30 01 95 e5                                      ldr r0, [r5, #0x130]
0038b56c  3c 11 94 e5                                      ldr r1, [r4, #0x13c]
0038b570  0d 0d fe eb                                      bl #0x30e9ac
0038b574  00 00 50 e3                                      cmp r0, #0
0038b578  f7 ff ff 0a                                      beq #0x38b55c
0038b57c  3c 01 95 e5                                      ldr r0, [r5, #0x13c]
0038b580  30 11 94 e5                                      ldr r1, [r4, #0x130]
0038b584  ca 0b fe eb                                      bl #0x30e4b4
0038b588  00 00 50 e3                                      cmp r0, #0
0038b58c  f2 ff ff 0a                                      beq #0x38b55c
0038b590  34 01 95 e5                                      ldr r0, [r5, #0x134]
0038b594  40 11 94 e5                                      ldr r1, [r4, #0x140]
0038b598  03 0d fe eb                                      bl #0x30e9ac
0038b59c  00 00 50 e3                                      cmp r0, #0
0038b5a0  ed ff ff 0a                                      beq #0x38b55c
0038b5a4  40 01 95 e5                                      ldr r0, [r5, #0x140]
0038b5a8  34 11 94 e5                                      ldr r1, [r4, #0x134]
0038b5ac  c0 0b fe eb                                      bl #0x30e4b4
0038b5b0  00 00 50 e3                                      cmp r0, #0
0038b5b4  00 00 a0 e3                                      mov r0, #0
0038b5b8  01 00 a0 13                                      movne r0, #1
0038b5bc  70 00 ef e6                                      uxtb r0, r0
0038b5c0  e6 ff ff ea                                      b #0x38b560
0038b5c4  50 20 9f e5                                      ldr r2, [pc, #0x50]
0038b5c8  02 20 93 e7                                      ldr r2, [r3, r2]
0038b5cc  00 20 92 e5                                      ldr r2, [r2]
0038b5d0  02 00 52 e3                                      cmp r2, #2
0038b5d4  00 40 84 05                                      streq r4, [r4]
0038b5d8  d5 ff ff 0a                                      beq #0x38b534
0038b5dc  01 00 52 e3                                      cmp r2, #1
0038b5e0  d3 ff ff 1a                                      bne #0x38b534
0038b5e4  34 00 9f e5                                      ldr r0, [pc, #0x34]
0038b5e8  34 10 9f e5                                      ldr r1, [pc, #0x34]
0038b5ec  34 20 9f e5                                      ldr r2, [pc, #0x34]
0038b5f0  00 00 93 e7                                      ldr r0, [r3, r0]
0038b5f4  30 30 9f e5                                      ldr r3, [pc, #0x30]
0038b5f8  7b c1 00 e3                                      movw ip, #0x17b
0038b5fc  01 10 8f e0                                      add r1, pc, r1
0038b600  02 20 8f e0                                      add r2, pc, r2
0038b604  03 30 8f e0                                      add r3, pc, r3
0038b608  a8 00 80 e2                                      add r0, r0, #0xa8
0038b60c  00 c0 8d e5                                      str ip, [sp]
0038b610  7b 0a fe eb                                      bl #0x30e004
0038b614  c6 ff ff ea                                      b #0x38b534
; mapping-symbol data/literal pool
0038b618  64 95 60 00 c0 39 00 00 c0 19 00 00 dc 2d 53 00  .byte 0x64, 0x95, 0x60, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xdc, 0x2d, 0x53, 0x00
0038b628  98 6d 53 00 9c 6d 53 00                          .byte 0x98, 0x6d, 0x53, 0x00, 0x9c, 0x6d, 0x53, 0x00

; FUNCTION 0x0038b630, declared_size=164, range_size=164, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject14IsHostTouchingEv
; demangled: GameObject::IsHostTouching() const
; decoder-mode: arm
0038b630  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038b634  00 70 a0 e1                                      mov r7, r0
0038b638  55 c8 11 eb                                      bl #0x7fd794
0038b63c  05 30 d0 e5                                      ldrb r3, [r0, #5]
0038b640  84 50 9f e5                                      ldr r5, [pc, #0x84]
0038b644  00 00 53 e3                                      cmp r3, #0
0038b648  05 50 8f e0                                      add r5, pc, r5
0038b64c  15 00 00 0a                                      beq #0x38b6a8
0038b650  78 60 9f e5                                      ldr r6, [pc, #0x78]
0038b654  06 30 95 e7                                      ldr r3, [r5, r6]
0038b658  40 00 93 e5                                      ldr r0, [r3, #0x40]
0038b65c  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
0038b660  00 00 53 e3                                      cmp r3, #0
0038b664  16 00 00 da                                      ble #0x38b6c4
0038b668  00 40 a0 e3                                      mov r4, #0
0038b66c  04 10 a0 e1                                      mov r1, r4
0038b670  01 20 a0 e3                                      mov r2, #1
0038b674  32 8c ff eb                                      bl #0x36e744
0038b678  00 80 a0 e1                                      mov r8, r0
0038b67c  ee 0e 12 eb                                      bl #0x80f23c
0038b680  00 00 50 e3                                      cmp r0, #0
0038b684  01 40 84 e2                                      add r4, r4, #1
0038b688  08 00 00 0a                                      beq #0x38b6b0
0038b68c  60 36 98 e5                                      ldr r3, [r8, #0x660]
0038b690  07 00 a0 e1                                      mov r0, r7
0038b694  00 10 53 e2                                      subs r1, r3, #0
0038b698  04 00 00 0a                                      beq #0x38b6b0
0038b69c  9d ff ff eb                                      bl #0x38b518
0038b6a0  00 00 50 e3                                      cmp r0, #0
0038b6a4  01 00 00 0a                                      beq #0x38b6b0
0038b6a8  01 00 a0 e3                                      mov r0, #1
0038b6ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038b6b0  06 30 95 e7                                      ldr r3, [r5, r6]
0038b6b4  40 00 93 e5                                      ldr r0, [r3, #0x40]
0038b6b8  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
0038b6bc  03 00 54 e1                                      cmp r4, r3
0038b6c0  e9 ff ff ba                                      blt #0x38b66c
0038b6c4  00 00 a0 e3                                      mov r0, #0
0038b6c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0038b6cc  48 94 60 00 f4 37 00 00                          .byte 0x48, 0x94, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0038b6d4, declared_size=132, range_size=132, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject20GetNumPlayerTouchingEv
; demangled: GameObject::GetNumPlayerTouching() const
; decoder-mode: arm
0038b6d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038b6d8  70 50 9f e5                                      ldr r5, [pc, #0x70]
0038b6dc  70 60 9f e5                                      ldr r6, [pc, #0x70]
0038b6e0  00 70 a0 e1                                      mov r7, r0
0038b6e4  05 50 8f e0                                      add r5, pc, r5
0038b6e8  06 30 95 e7                                      ldr r3, [r5, r6]
0038b6ec  40 00 93 e5                                      ldr r0, [r3, #0x40]
0038b6f0  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
0038b6f4  00 00 53 e3                                      cmp r3, #0
0038b6f8  00 80 a0 d3                                      movle r8, #0
0038b6fc  11 00 00 da                                      ble #0x38b748
0038b700  00 40 a0 e3                                      mov r4, #0
0038b704  04 80 a0 e1                                      mov r8, r4
0038b708  04 10 a0 e1                                      mov r1, r4
0038b70c  01 20 a0 e3                                      mov r2, #1
0038b710  0b 8c ff eb                                      bl #0x36e744
0038b714  60 36 90 e5                                      ldr r3, [r0, #0x660]
0038b718  01 40 84 e2                                      add r4, r4, #1
0038b71c  07 00 a0 e1                                      mov r0, r7
0038b720  00 10 53 e2                                      subs r1, r3, #0
0038b724  02 00 00 0a                                      beq #0x38b734
0038b728  7a ff ff eb                                      bl #0x38b518
0038b72c  00 00 50 e3                                      cmp r0, #0
0038b730  01 80 88 12                                      addne r8, r8, #1
0038b734  06 30 95 e7                                      ldr r3, [r5, r6]
0038b738  40 00 93 e5                                      ldr r0, [r3, #0x40]
0038b73c  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
0038b740  03 00 54 e1                                      cmp r4, r3
0038b744  ef ff ff ba                                      blt #0x38b708
0038b748  08 00 a0 e1                                      mov r0, r8
0038b74c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0038b750  ac 93 60 00 f4 37 00 00                          .byte 0xac, 0x93, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0038b8b8, declared_size=92, range_size=92, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject19RequireOnlineUpdateEv
; demangled: GameObject::RequireOnlineUpdate()
; decoder-mode: arm
0038b8b8  10 40 2d e9                                      push {r4, lr}
0038b8bc  00 40 a0 e1                                      mov r4, r0
0038b8c0  b3 c7 11 eb                                      bl #0x7fd794
0038b8c4  05 30 d0 e5                                      ldrb r3, [r0, #5]
0038b8c8  00 00 53 e3                                      cmp r3, #0
0038b8cc  08 00 00 0a                                      beq #0x38b8f4
0038b8d0  00 31 94 e5                                      ldr r3, [r4, #0x100]
0038b8d4  00 00 53 e3                                      cmp r3, #0
0038b8d8  05 00 00 0a                                      beq #0x38b8f4
0038b8dc  ac c7 11 eb                                      bl #0x7fd794
0038b8e0  33 c7 11 eb                                      bl #0x7fd5b4
0038b8e4  00 00 50 e3                                      cmp r0, #0
0038b8e8  02 00 00 0a                                      beq #0x38b8f8
0038b8ec  01 30 a0 e3                                      mov r3, #1
0038b8f0  19 31 c4 e5                                      strb r3, [r4, #0x119]
0038b8f4  10 80 bd e8                                      pop {r4, pc}
0038b8f8  00 30 94 e5                                      ldr r3, [r4]
0038b8fc  04 00 a0 e1                                      mov r0, r4
0038b900  0f e0 a0 e1                                      mov lr, pc
0038b904  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0038b908  00 00 50 e3                                      cmp r0, #0
0038b90c  f8 ff ff 1a                                      bne #0x38b8f4
0038b910  f5 ff ff ea                                      b #0x38b8ec

; FUNCTION 0x0038b914, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZThn36_N10GameObject11DeserializeEP11IStreamBase
; demangled: non-virtual thunk to GameObject::Deserialize(IStreamBase*)
; decoder-mode: arm
0038b914  24 00 40 e2                                      sub r0, r0, #0x24
0038b918  ff ff ff ea                                      b #0x38b91c

; FUNCTION 0x0038b91c, declared_size=192, range_size=192, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject11DeserializeEP11IStreamBase
; demangled: GameObject::Deserialize(IStreamBase*)
; decoder-mode: arm
0038b91c  30 40 2d e9                                      push {r4, r5, lr}
0038b920  01 50 a0 e1                                      mov r5, r1
0038b924  14 d0 4d e2                                      sub sp, sp, #0x14
0038b928  00 40 a0 e1                                      mov r4, r0
0038b92c  f1 c9 fe eb                                      bl #0x33e0f8
0038b930  0c 10 8d e2                                      add r1, sp, #0xc
0038b934  05 00 a0 e1                                      mov r0, r5
0038b938  86 ff ff eb                                      bl #0x38b758
0038b93c  70 12 94 e5                                      ldr r1, [r4, #0x270]
0038b940  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0038b944  78 30 9f e5                                      ldr r3, [pc, #0x78]
0038b948  02 00 51 e1                                      cmp r1, r2
0038b94c  03 30 8f e0                                      add r3, pc, r3
0038b950  08 00 00 0a                                      beq #0x38b978
0038b954  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0038b958  02 20 93 e7                                      ldr r2, [r3, r2]
0038b95c  00 20 92 e5                                      ldr r2, [r2]
0038b960  02 00 52 e3                                      cmp r2, #2
0038b964  00 30 a0 03                                      moveq r3, #0
0038b968  00 30 83 05                                      streq r3, [r3]
0038b96c  01 00 00 0a                                      beq #0x38b978
0038b970  01 00 52 e3                                      cmp r2, #1
0038b974  05 00 00 0a                                      beq #0x38b990
0038b978  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
0038b97c  00 00 50 e3                                      cmp r0, #0
0038b980  00 00 00 0a                                      beq #0x38b988
0038b984  91 96 03 eb                                      bl #0x4713d0
0038b988  14 d0 8d e2                                      add sp, sp, #0x14
0038b98c  30 80 bd e8                                      pop {r4, r5, pc}
0038b990  34 00 9f e5                                      ldr r0, [pc, #0x34]
0038b994  34 10 9f e5                                      ldr r1, [pc, #0x34]
0038b998  34 20 9f e5                                      ldr r2, [pc, #0x34]
0038b99c  00 00 93 e7                                      ldr r0, [r3, r0]
0038b9a0  30 30 9f e5                                      ldr r3, [pc, #0x30]
0038b9a4  1e c1 00 e3                                      movw ip, #0x11e
0038b9a8  01 10 8f e0                                      add r1, pc, r1
0038b9ac  02 20 8f e0                                      add r2, pc, r2
0038b9b0  03 30 8f e0                                      add r3, pc, r3
0038b9b4  a8 00 80 e2                                      add r0, r0, #0xa8
0038b9b8  00 c0 8d e5                                      str ip, [sp]
0038b9bc  90 09 fe eb                                      bl #0x30e004
0038b9c0  ec ff ff ea                                      b #0x38b978
; mapping-symbol data/literal pool
0038b9c4  44 91 60 00 c0 39 00 00 c0 19 00 00 30 2a 53 00  .byte 0x44, 0x91, 0x60, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x30, 0x2a, 0x53, 0x00
0038b9d4  3c 6a 53 00 f0 69 53 00                          .byte 0x3c, 0x6a, 0x53, 0x00, 0xf0, 0x69, 0x53, 0x00

; FUNCTION 0x0038b9dc, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZThn36_N10GameObject9SerializeEP11IStreamBase
; demangled: non-virtual thunk to GameObject::Serialize(IStreamBase*)
; decoder-mode: arm
0038b9dc  24 00 40 e2                                      sub r0, r0, #0x24
0038b9e0  ff ff ff ea                                      b #0x38b9e4

; FUNCTION 0x0038b9e4, declared_size=32, range_size=32, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject9SerializeEP11IStreamBase
; demangled: GameObject::Serialize(IStreamBase*)
; decoder-mode: arm
0038b9e4  70 40 2d e9                                      push {r4, r5, r6, lr}
0038b9e8  00 40 a0 e1                                      mov r4, r0
0038b9ec  01 50 a0 e1                                      mov r5, r1
0038b9f0  fe c9 fe eb                                      bl #0x33e1f0
0038b9f4  05 00 a0 e1                                      mov r0, r5
0038b9f8  27 1e 84 e2                                      add r1, r4, #0x270
0038b9fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
0038ba00  80 ff ff ea                                      b #0x38b808

; FUNCTION 0x0038ba04, declared_size=52, range_size=52, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject8DisabledEv
; demangled: GameObject::Disabled()
; decoder-mode: arm
0038ba04  10 40 2d e9                                      push {r4, lr}
0038ba08  00 40 a0 e1                                      mov r4, r0
0038ba0c  08 c9 fe eb                                      bl #0x33de34
0038ba10  cc 31 94 e5                                      ldr r3, [r4, #0x1cc]
0038ba14  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
0038ba18  08 30 c3 e3                                      bic r3, r3, #8
0038ba1c  00 00 50 e3                                      cmp r0, #0
0038ba20  cc 31 84 e5                                      str r3, [r4, #0x1cc]
0038ba24  00 00 00 0a                                      beq #0x38ba2c
0038ba28  50 8c 03 eb                                      bl #0x46eb70
0038ba2c  01 30 a0 e3                                      mov r3, #1
0038ba30  73 33 c4 e5                                      strb r3, [r4, #0x373]
0038ba34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0038ba38, declared_size=52, range_size=52, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject7EnabledEv
; demangled: GameObject::Enabled()
; decoder-mode: arm
0038ba38  10 40 2d e9                                      push {r4, lr}
0038ba3c  00 40 a0 e1                                      mov r4, r0
0038ba40  ef c8 fe eb                                      bl #0x33de04
0038ba44  cc 31 94 e5                                      ldr r3, [r4, #0x1cc]
0038ba48  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
0038ba4c  08 30 83 e3                                      orr r3, r3, #8
0038ba50  00 00 50 e3                                      cmp r0, #0
0038ba54  cc 31 84 e5                                      str r3, [r4, #0x1cc]
0038ba58  00 00 00 0a                                      beq #0x38ba60
0038ba5c  60 8c 03 eb                                      bl #0x46ebe4
0038ba60  00 30 a0 e3                                      mov r3, #0
0038ba64  73 33 c4 e5                                      strb r3, [r4, #0x373]
0038ba68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0038ba6c, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject15FlushTargetListEv
; demangled: GameObject::FlushTargetList()
; decoder-mode: arm
0038ba6c  c1 0f 80 e2                                      add r0, r0, #0x304
0038ba70  f0 57 04 ea                                      b #0x4a1a38

; FUNCTION 0x0038bd64, declared_size=248, range_size=248, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject21CheckSpawnProbabilityEv
; demangled: GameObject::CheckSpawnProbability()
; decoder-mode: arm
0038bd64  30 40 2d e9                                      push {r4, r5, lr}
0038bd68  14 d0 4d e2                                      sub sp, sp, #0x14
0038bd6c  04 40 8d e2                                      add r4, sp, #4
0038bd70  00 10 a0 e1                                      mov r1, r0
0038bd74  00 50 a0 e1                                      mov r5, r0
0038bd78  04 00 a0 e1                                      mov r0, r4
0038bd7c  ea c7 fe eb                                      bl #0x33dd2c
0038bd80  04 00 a0 e1                                      mov r0, r4
0038bd84  72 d0 fe eb                                      bl #0x33ff54
0038bd88  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
0038bd8c  00 30 50 e2                                      subs r3, r0, #0
0038bd90  04 40 8f e0                                      add r4, pc, r4
0038bd94  08 00 00 0a                                      beq #0x38bdbc
0038bd98  00 30 93 e5                                      ldr r3, [r3]
0038bd9c  0f e0 a0 e1                                      mov lr, pc
0038bda0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0038bda4  00 00 50 e3                                      cmp r0, #0
0038bda8  03 00 00 0a                                      beq #0x38bdbc
0038bdac  01 00 e0 e3                                      mvn r0, #1
0038bdb0  70 02 85 e5                                      str r0, [r5, #0x270]
0038bdb4  14 d0 8d e2                                      add sp, sp, #0x14
0038bdb8  30 80 bd e8                                      pop {r4, r5, pc}
0038bdbc  70 02 95 e5                                      ldr r0, [r5, #0x270]
0038bdc0  01 00 70 e3                                      cmn r0, #1
0038bdc4  fa ff ff 1a                                      bne #0x38bdb4
0038bdc8  71 c6 11 eb                                      bl #0x7fd794
0038bdcc  05 30 d0 e5                                      ldrb r3, [r0, #5]
0038bdd0  00 00 53 e3                                      cmp r3, #0
0038bdd4  1a 00 00 0a                                      beq #0x38be44
0038bdd8  08 31 95 e5                                      ldr r3, [r5, #0x108]
0038bddc  01 00 73 e3                                      cmn r3, #1
0038bde0  17 00 00 0a                                      beq #0x38be44
0038bde4  fc 00 95 e5                                      ldr r0, [r5, #0xfc]
0038bde8  00 00 50 e2                                      subs r0, r0, #0
0038bdec  01 00 a0 13                                      movne r0, #1
0038bdf0  91 ff ff eb                                      bl #0x38bc3c
0038bdf4  70 02 85 e5                                      str r0, [r5, #0x270]
0038bdf8  74 32 95 e5                                      ldr r3, [r5, #0x274]
0038bdfc  03 00 50 e1                                      cmp r0, r3
0038be00  e9 ff ff ba                                      blt #0x38bdac
0038be04  00 10 a0 e3                                      mov r1, #0
0038be08  00 30 95 e5                                      ldr r3, [r5]
0038be0c  05 00 a0 e1                                      mov r0, r5
0038be10  0f e0 a0 e1                                      mov lr, pc
0038be14  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0038be18  05 00 a0 e1                                      mov r0, r5
0038be1c  e4 c7 fe eb                                      bl #0x33ddb4
0038be20  00 30 a0 e3                                      mov r3, #0
0038be24  82 30 c5 e5                                      strb r3, [r5, #0x82]
0038be28  28 30 9f e5                                      ldr r3, [pc, #0x28]
0038be2c  05 10 a0 e1                                      mov r1, r5
0038be30  03 30 94 e7                                      ldr r3, [r4, r3]
0038be34  38 00 93 e5                                      ldr r0, [r3, #0x38]
0038be38  2e dd fe eb                                      bl #0x3432f8
0038be3c  70 02 95 e5                                      ldr r0, [r5, #0x270]
0038be40  db ff ff ea                                      b #0x38bdb4
0038be44  00 00 a0 e3                                      mov r0, #0
0038be48  7b ff ff eb                                      bl #0x38bc3c
0038be4c  70 02 85 e5                                      str r0, [r5, #0x270]
0038be50  e8 ff ff ea                                      b #0x38bdf8
; mapping-symbol data/literal pool
0038be54  00 8d 60 00 f4 37 00 00                          .byte 0x00, 0x8d, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0038be5c, declared_size=560, range_size=560, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject8InitPostEv
; demangled: GameObject::InitPost()
; decoder-mode: arm
0038be5c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038be60  00 40 a0 e1                                      mov r4, r0
0038be64  68 cb fe eb                                      bl #0x33ec0c
0038be68  04 00 a0 e1                                      mov r0, r4
0038be6c  bc ff ff eb                                      bl #0x38bd64
0038be70  74 32 94 e5                                      ldr r3, [r4, #0x274]
0038be74  04 52 9f e5                                      ldr r5, [pc, #0x204]
0038be78  03 00 50 e1                                      cmp r0, r3
0038be7c  05 50 8f e0                                      add r5, pc, r5
0038be80  69 00 00 aa                                      bge #0x38c02c
0038be84  20 01 94 e5                                      ldr r0, [r4, #0x120]
0038be88  00 30 a0 e3                                      mov r3, #0
0038be8c  17 17 0b e3                                      movw r1, #0xb717
0038be90  dc 32 84 e5                                      str r3, [r4, #0x2dc]
0038be94  d1 18 43 e3                                      movt r1, #0x38d1
0038be98  02 01 c0 e3                                      bic r0, r0, #0x80000000
0038be9c  1a 0a fe eb                                      bl #0x30e70c
0038bea0  00 00 50 e3                                      cmp r0, #0
0038bea4  24 01 94 e5                                      ldr r0, [r4, #0x124]
0038bea8  fe 35 a0 13                                      movne r3, #0x3f800000
0038beac  17 17 0b e3                                      movw r1, #0xb717
0038beb0  20 31 84 15                                      strne r3, [r4, #0x120]
0038beb4  d1 18 43 e3                                      movt r1, #0x38d1
0038beb8  02 01 c0 e3                                      bic r0, r0, #0x80000000
0038bebc  12 0a fe eb                                      bl #0x30e70c
0038bec0  00 00 50 e3                                      cmp r0, #0
0038bec4  28 01 94 e5                                      ldr r0, [r4, #0x128]
0038bec8  fe 35 a0 13                                      movne r3, #0x3f800000
0038becc  17 17 0b e3                                      movw r1, #0xb717
0038bed0  24 31 84 15                                      strne r3, [r4, #0x124]
0038bed4  d1 18 43 e3                                      movt r1, #0x38d1
0038bed8  02 01 c0 e3                                      bic r0, r0, #0x80000000
0038bedc  0a 0a fe eb                                      bl #0x30e70c
0038bee0  00 00 50 e3                                      cmp r0, #0
0038bee4  fe 35 a0 13                                      movne r3, #0x3f800000
0038bee8  35 1a 0f e3                                      movw r1, #0xfa35
0038beec  28 31 84 15                                      strne r3, [r4, #0x128]
0038bef0  6c 01 94 e5                                      ldr r0, [r4, #0x16c]
0038bef4  8e 1c 43 e3                                      movt r1, #0x3c8e
0038bef8  9b 0b fe eb                                      bl #0x30ed6c
0038befc  35 1a 0f e3                                      movw r1, #0xfa35
0038bf00  6c 01 84 e5                                      str r0, [r4, #0x16c]
0038bf04  8e 1c 43 e3                                      movt r1, #0x3c8e
0038bf08  70 01 94 e5                                      ldr r0, [r4, #0x170]
0038bf0c  96 0b fe eb                                      bl #0x30ed6c
0038bf10  35 1a 0f e3                                      movw r1, #0xfa35
0038bf14  70 01 84 e5                                      str r0, [r4, #0x170]
0038bf18  8e 1c 43 e3                                      movt r1, #0x3c8e
0038bf1c  74 01 94 e5                                      ldr r0, [r4, #0x174]
0038bf20  91 0b fe eb                                      bl #0x30ed6c
0038bf24  01 20 a0 e3                                      mov r2, #1
0038bf28  78 01 84 e5                                      str r0, [r4, #0x178]
0038bf2c  74 01 84 e5                                      str r0, [r4, #0x174]
0038bf30  16 1e 84 e2                                      add r1, r4, #0x160
0038bf34  04 00 a0 e1                                      mov r0, r4
0038bf38  9d 1f 00 eb                                      bl #0x393db4
0038bf3c  44 01 94 e5                                      ldr r0, [r4, #0x144]
0038bf40  20 11 94 e5                                      ldr r1, [r4, #0x120]
0038bf44  88 0b fe eb                                      bl #0x30ed6c
0038bf48  24 11 94 e5                                      ldr r1, [r4, #0x124]
0038bf4c  44 01 84 e5                                      str r0, [r4, #0x144]
0038bf50  48 01 94 e5                                      ldr r0, [r4, #0x148]
0038bf54  84 0b fe eb                                      bl #0x30ed6c
0038bf58  28 11 94 e5                                      ldr r1, [r4, #0x128]
0038bf5c  48 01 84 e5                                      str r0, [r4, #0x148]
0038bf60  4c 01 94 e5                                      ldr r0, [r4, #0x14c]
0038bf64  80 0b fe eb                                      bl #0x30ed6c
0038bf68  20 11 94 e5                                      ldr r1, [r4, #0x120]
0038bf6c  4c 01 84 e5                                      str r0, [r4, #0x14c]
0038bf70  50 01 94 e5                                      ldr r0, [r4, #0x150]
0038bf74  7c 0b fe eb                                      bl #0x30ed6c
0038bf78  24 11 94 e5                                      ldr r1, [r4, #0x124]
0038bf7c  50 01 84 e5                                      str r0, [r4, #0x150]
0038bf80  54 01 94 e5                                      ldr r0, [r4, #0x154]
0038bf84  78 0b fe eb                                      bl #0x30ed6c
0038bf88  28 11 94 e5                                      ldr r1, [r4, #0x128]
0038bf8c  54 01 84 e5                                      str r0, [r4, #0x154]
0038bf90  58 01 94 e5                                      ldr r0, [r4, #0x158]
0038bf94  74 0b fe eb                                      bl #0x30ed6c
0038bf98  58 01 84 e5                                      str r0, [r4, #0x158]
0038bf9c  04 00 a0 e1                                      mov r0, r4
0038bfa0  c8 fa ff eb                                      bl #0x38aac8
0038bfa4  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
0038bfa8  00 00 50 e3                                      cmp r0, #0
0038bfac  23 00 00 0a                                      beq #0x38c040
0038bfb0  af fe ff eb                                      bl #0x38ba74
0038bfb4  5c 31 d4 e5                                      ldrb r3, [r4, #0x15c]
0038bfb8  6c 73 94 e5                                      ldr r7, [r4, #0x36c]
0038bfbc  00 00 53 e3                                      cmp r3, #0
0038bfc0  00 30 a0 13                                      movne r3, #0
0038bfc4  28 30 c4 15                                      strbne r3, [r4, #0x28]
0038bfc8  68 33 94 e5                                      ldr r3, [r4, #0x368]
0038bfcc  07 00 53 e1                                      cmp r3, r7
0038bfd0  15 00 00 0a                                      beq #0x38c02c
0038bfd4  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0038bfd8  03 30 95 e7                                      ldr r3, [r5, r3]
0038bfdc  00 80 93 e5                                      ldr r8, [r3]
0038bfe0  00 00 58 e3                                      cmp r8, #0
0038bfe4  11 00 00 0a                                      beq #0x38c030
0038bfe8  98 30 9f e5                                      ldr r3, [pc, #0x98]
0038bfec  00 60 a0 e3                                      mov r6, #0
0038bff0  03 30 95 e7                                      ldr r3, [r5, r3]
0038bff4  00 50 93 e5                                      ldr r5, [r3]
0038bff8  02 00 00 ea                                      b #0x38c008
0038bffc  01 60 86 e2                                      add r6, r6, #1
0038c000  08 00 56 e1                                      cmp r6, r8
0038c004  09 00 00 0a                                      beq #0x38c030
0038c008  06 11 95 e7                                      ldr r1, [r5, r6, lsl #2]
0038c00c  07 00 a0 e1                                      mov r0, r7
0038c010  c1 08 fe eb                                      bl #0x30e31c
0038c014  00 00 50 e3                                      cmp r0, #0
0038c018  f7 ff ff 1a                                      bne #0x38bffc
0038c01c  76 60 ff e6                                      uxth r6, r6
0038c020  37 3e a0 e3                                      mov r3, #0x370
0038c024  b3 60 84 e1                                      strh r6, [r4, r3]
0038c028  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038c02c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038c030  ff 6f 0f e3                                      movw r6, #0xffff
0038c034  37 3e a0 e3                                      mov r3, #0x370
0038c038  b3 60 84 e1                                      strh r6, [r4, r3]
0038c03c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038c040  c1 d5 ff eb                                      bl #0x38174c
0038c044  00 00 50 e3                                      cmp r0, #0
0038c048  06 00 00 1a                                      bne #0x38c068
0038c04c  60 30 d4 e5                                      ldrb r3, [r4, #0x60]
0038c050  00 00 53 e3                                      cmp r3, #0
0038c054  03 00 00 0a                                      beq #0x38c068
0038c058  0c 31 d4 e5                                      ldrb r3, [r4, #0x10c]
0038c05c  00 00 53 e3                                      cmp r3, #0
0038c060  d8 02 84 15                                      strne r0, [r4, #0x2d8]
0038c064  d2 ff ff 1a                                      bne #0x38bfb4
0038c068  04 00 a0 e1                                      mov r0, r4
0038c06c  8f 23 00 eb                                      bl #0x394eb0
0038c070  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
0038c074  00 00 50 e3                                      cmp r0, #0
0038c078  cd ff ff 0a                                      beq #0x38bfb4
0038c07c  cb ff ff ea                                      b #0x38bfb0
; mapping-symbol data/literal pool
0038c080  14 8c 60 00 38 3d 00 00 a8 39 00 00              .byte 0x14, 0x8c, 0x60, 0x00, 0x38, 0x3d, 0x00, 0x00, 0xa8, 0x39, 0x00, 0x00

; FUNCTION 0x0038c130, declared_size=616, range_size=616, mode=arm
; class-group: GameObject
; alias: _ZN10GameObjectC1EN10ObjectBase6GO_IDSE
; demangled: GameObject::GameObject(ObjectBase::GO_IDS)
; decoder-mode: arm
0038c130  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0038c134  54 62 9f e5                                      ldr r6, [pc, #0x254]
0038c138  0c d0 4d e2                                      sub sp, sp, #0xc
0038c13c  00 40 a0 e1                                      mov r4, r0
0038c140  72 cc fe eb                                      bl #0x33f310
0038c144  48 22 9f e5                                      ldr r2, [pc, #0x248]
0038c148  06 60 8f e0                                      add r6, pc, r6
0038c14c  00 30 a0 e3                                      mov r3, #0
0038c150  02 20 96 e7                                      ldr r2, [r6, r2]
0038c154  00 50 a0 e3                                      mov r5, #0
0038c158  20 31 84 e5                                      str r3, [r4, #0x120]
0038c15c  e4 10 82 e2                                      add r1, r2, #0xe4
0038c160  08 00 82 e2                                      add r0, r2, #8
0038c164  d8 20 82 e2                                      add r2, r2, #0xd8
0038c168  04 20 84 e5                                      str r2, [r4, #4]
0038c16c  24 10 84 e5                                      str r1, [r4, #0x24]
0038c170  00 00 84 e5                                      str r0, [r4]
0038c174  24 31 84 e5                                      str r3, [r4, #0x124]
0038c178  28 31 84 e5                                      str r3, [r4, #0x128]
0038c17c  2c 31 84 e5                                      str r3, [r4, #0x12c]
0038c180  30 31 84 e5                                      str r3, [r4, #0x130]
0038c184  34 31 84 e5                                      str r3, [r4, #0x134]
0038c188  38 31 84 e5                                      str r3, [r4, #0x138]
0038c18c  3c 31 84 e5                                      str r3, [r4, #0x13c]
0038c190  40 31 84 e5                                      str r3, [r4, #0x140]
0038c194  44 31 84 e5                                      str r3, [r4, #0x144]
0038c198  48 31 84 e5                                      str r3, [r4, #0x148]
0038c19c  4c 31 84 e5                                      str r3, [r4, #0x14c]
0038c1a0  50 31 84 e5                                      str r3, [r4, #0x150]
0038c1a4  54 31 84 e5                                      str r3, [r4, #0x154]
0038c1a8  58 31 84 e5                                      str r3, [r4, #0x158]
0038c1ac  60 31 84 e5                                      str r3, [r4, #0x160]
0038c1b0  64 31 84 e5                                      str r3, [r4, #0x164]
0038c1b4  68 31 84 e5                                      str r3, [r4, #0x168]
0038c1b8  6c 31 84 e5                                      str r3, [r4, #0x16c]
0038c1bc  70 31 84 e5                                      str r3, [r4, #0x170]
0038c1c0  74 31 84 e5                                      str r3, [r4, #0x174]
0038c1c4  78 31 84 e5                                      str r3, [r4, #0x178]
0038c1c8  84 31 84 e5                                      str r3, [r4, #0x184]
0038c1cc  88 31 84 e5                                      str r3, [r4, #0x188]
0038c1d0  8c 31 84 e5                                      str r3, [r4, #0x18c]
0038c1d4  90 31 84 e5                                      str r3, [r4, #0x190]
0038c1d8  94 31 84 e5                                      str r3, [r4, #0x194]
0038c1dc  5c 51 c4 e5                                      strb r5, [r4, #0x15c]
0038c1e0  80 51 84 e5                                      str r5, [r4, #0x180]
0038c1e4  72 0f 84 e2                                      add r0, r4, #0x1c8
0038c1e8  98 31 84 e5                                      str r3, [r4, #0x198]
0038c1ec  c0 31 84 e5                                      str r3, [r4, #0x1c0]
0038c1f0  9c 31 84 e5                                      str r3, [r4, #0x19c]
0038c1f4  a0 31 84 e5                                      str r3, [r4, #0x1a0]
0038c1f8  a4 31 84 e5                                      str r3, [r4, #0x1a4]
0038c1fc  a8 31 84 e5                                      str r3, [r4, #0x1a8]
0038c200  ac 31 84 e5                                      str r3, [r4, #0x1ac]
0038c204  b0 31 84 e5                                      str r3, [r4, #0x1b0]
0038c208  b4 51 c4 e5                                      strb r5, [r4, #0x1b4]
0038c20c  b5 51 c4 e5                                      strb r5, [r4, #0x1b5]
0038c210  b8 31 84 e5                                      str r3, [r4, #0x1b8]
0038c214  bc 31 84 e5                                      str r3, [r4, #0x1bc]
0038c218  c4 51 c4 e5                                      strb r5, [r4, #0x1c4]
0038c21c  08 61 06 eb                                      bl #0x524644
0038c220  9e 3f 84 e2                                      add r3, r4, #0x278
0038c224  00 70 e0 e3                                      mvn r7, #0
0038c228  64 20 a0 e3                                      mov r2, #0x64
0038c22c  74 22 84 e5                                      str r2, [r4, #0x274]
0038c230  03 00 a0 e1                                      mov r0, r3
0038c234  88 32 84 e5                                      str r3, [r4, #0x288]
0038c238  8c 32 84 e5                                      str r3, [r4, #0x28c]
0038c23c  6c 52 84 e5                                      str r5, [r4, #0x26c]
0038c240  70 72 84 e5                                      str r7, [r4, #0x270]
0038c244  10 10 a0 e3                                      mov r1, #0x10
0038c248  0b 15 fe eb                                      bl #0x31167c
0038c24c  88 22 94 e5                                      ldr r2, [r4, #0x288]
0038c250  29 3e 84 e2                                      add r3, r4, #0x290
0038c254  03 00 a0 e1                                      mov r0, r3
0038c258  00 50 c2 e5                                      strb r5, [r2]
0038c25c  10 10 a0 e3                                      mov r1, #0x10
0038c260  a0 32 84 e5                                      str r3, [r4, #0x2a0]
0038c264  a4 32 84 e5                                      str r3, [r4, #0x2a4]
0038c268  03 15 fe eb                                      bl #0x31167c
0038c26c  a0 22 94 e5                                      ldr r2, [r4, #0x2a0]
0038c270  aa 3f 84 e2                                      add r3, r4, #0x2a8
0038c274  03 00 a0 e1                                      mov r0, r3
0038c278  00 50 c2 e5                                      strb r5, [r2]
0038c27c  10 10 a0 e3                                      mov r1, #0x10
0038c280  b8 32 84 e5                                      str r3, [r4, #0x2b8]
0038c284  bc 32 84 e5                                      str r3, [r4, #0x2bc]
0038c288  fb 14 fe eb                                      bl #0x31167c
0038c28c  b8 22 94 e5                                      ldr r2, [r4, #0x2b8]
0038c290  0b 3d 84 e2                                      add r3, r4, #0x2c0
0038c294  03 00 a0 e1                                      mov r0, r3
0038c298  00 50 c2 e5                                      strb r5, [r2]
0038c29c  10 10 a0 e3                                      mov r1, #0x10
0038c2a0  d0 32 84 e5                                      str r3, [r4, #0x2d0]
0038c2a4  d4 32 84 e5                                      str r3, [r4, #0x2d4]
0038c2a8  f3 14 fe eb                                      bl #0x31167c
0038c2ac  d0 32 94 e5                                      ldr r3, [r4, #0x2d0]
0038c2b0  01 c0 a0 e3                                      mov ip, #1
0038c2b4  c1 6f 84 e2                                      add r6, r4, #0x304
0038c2b8  00 50 c3 e5                                      strb r5, [r3]
0038c2bc  0c 20 a0 e1                                      mov r2, ip
0038c2c0  ee c2 c4 e5                                      strb ip, [r4, #0x2ee]
0038c2c4  fb c2 c4 e5                                      strb ip, [r4, #0x2fb]
0038c2c8  d8 52 84 e5                                      str r5, [r4, #0x2d8]
0038c2cc  dc 52 84 e5                                      str r5, [r4, #0x2dc]
0038c2d0  e0 52 84 e5                                      str r5, [r4, #0x2e0]
0038c2d4  e4 52 84 e5                                      str r5, [r4, #0x2e4]
0038c2d8  e8 52 84 e5                                      str r5, [r4, #0x2e8]
0038c2dc  ec 52 c4 e5                                      strb r5, [r4, #0x2ec]
0038c2e0  ed 52 c4 e5                                      strb r5, [r4, #0x2ed]
0038c2e4  ef 52 c4 e5                                      strb r5, [r4, #0x2ef]
0038c2e8  f0 52 c4 e5                                      strb r5, [r4, #0x2f0]
0038c2ec  f4 52 84 e5                                      str r5, [r4, #0x2f4]
0038c2f0  f8 52 c4 e5                                      strb r5, [r4, #0x2f8]
0038c2f4  f9 52 c4 e5                                      strb r5, [r4, #0x2f9]
0038c2f8  fa 52 c4 e5                                      strb r5, [r4, #0x2fa]
0038c2fc  fc 52 c4 e5                                      strb r5, [r4, #0x2fc]
0038c300  00 53 84 e5                                      str r5, [r4, #0x300]
0038c304  05 30 a0 e1                                      mov r3, r5
0038c308  05 10 a0 e1                                      mov r1, r5
0038c30c  06 00 a0 e1                                      mov r0, r6
0038c310  00 c0 8d e5                                      str ip, [sp]
0038c314  05 59 04 eb                                      bl #0x4a2730
0038c318  d6 3f 84 e2                                      add r3, r4, #0x358
0038c31c  03 00 a0 e1                                      mov r0, r3
0038c320  68 33 84 e5                                      str r3, [r4, #0x368]
0038c324  6c 33 84 e5                                      str r3, [r4, #0x36c]
0038c328  10 10 a0 e3                                      mov r1, #0x10
0038c32c  d2 14 fe eb                                      bl #0x31167c
0038c330  68 13 94 e5                                      ldr r1, [r4, #0x368]
0038c334  c2 24 a0 e3                                      mov r2, #0xc2000000
0038c338  42 34 a0 e3                                      mov r3, #0x42000000
0038c33c  00 50 c1 e5                                      strb r5, [r1]
0038c340  32 27 82 e2                                      add r2, r2, #0xc80000
0038c344  32 37 83 e2                                      add r3, r3, #0xc80000
0038c348  37 1e a0 e3                                      mov r1, #0x370
0038c34c  b1 70 84 e1                                      strh r7, [r4, r1]
0038c350  04 00 a0 e1                                      mov r0, r4
0038c354  4c 21 84 e5                                      str r2, [r4, #0x14c]
0038c358  58 31 84 e5                                      str r3, [r4, #0x158]
0038c35c  44 21 84 e5                                      str r2, [r4, #0x144]
0038c360  48 21 84 e5                                      str r2, [r4, #0x148]
0038c364  50 31 84 e5                                      str r3, [r4, #0x150]
0038c368  54 31 84 e5                                      str r3, [r4, #0x154]
0038c36c  73 53 c4 e5                                      strb r5, [r4, #0x373]
0038c370  72 53 c4 e5                                      strb r5, [r4, #0x372]
0038c374  d3 f9 ff eb                                      bl #0x38aac8
0038c378  06 00 a0 e1                                      mov r0, r6
0038c37c  04 10 a0 e1                                      mov r1, r4
0038c380  65 55 04 eb                                      bl #0x4a191c
0038c384  04 00 a0 e1                                      mov r0, r4
0038c388  0c d0 8d e2                                      add sp, sp, #0xc
0038c38c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0038c390  48 89 60 00 70 2d 00 00                          .byte 0x48, 0x89, 0x60, 0x00, 0x70, 0x2d, 0x00, 0x00

; FUNCTION 0x0038c398, declared_size=616, range_size=616, mode=arm
; class-group: GameObject
; alias: _ZN10GameObjectC2EN10ObjectBase6GO_IDSE
; demangled: GameObject::GameObject(ObjectBase::GO_IDS)
; decoder-mode: arm
0038c398  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0038c39c  54 62 9f e5                                      ldr r6, [pc, #0x254]
0038c3a0  0c d0 4d e2                                      sub sp, sp, #0xc
0038c3a4  00 40 a0 e1                                      mov r4, r0
0038c3a8  d8 cb fe eb                                      bl #0x33f310
0038c3ac  48 22 9f e5                                      ldr r2, [pc, #0x248]
0038c3b0  06 60 8f e0                                      add r6, pc, r6
0038c3b4  00 30 a0 e3                                      mov r3, #0
0038c3b8  02 20 96 e7                                      ldr r2, [r6, r2]
0038c3bc  00 50 a0 e3                                      mov r5, #0
0038c3c0  20 31 84 e5                                      str r3, [r4, #0x120]
0038c3c4  e4 10 82 e2                                      add r1, r2, #0xe4
0038c3c8  08 00 82 e2                                      add r0, r2, #8
0038c3cc  d8 20 82 e2                                      add r2, r2, #0xd8
0038c3d0  04 20 84 e5                                      str r2, [r4, #4]
0038c3d4  24 10 84 e5                                      str r1, [r4, #0x24]
0038c3d8  00 00 84 e5                                      str r0, [r4]
0038c3dc  24 31 84 e5                                      str r3, [r4, #0x124]
0038c3e0  28 31 84 e5                                      str r3, [r4, #0x128]
0038c3e4  2c 31 84 e5                                      str r3, [r4, #0x12c]
0038c3e8  30 31 84 e5                                      str r3, [r4, #0x130]
0038c3ec  34 31 84 e5                                      str r3, [r4, #0x134]
0038c3f0  38 31 84 e5                                      str r3, [r4, #0x138]
0038c3f4  3c 31 84 e5                                      str r3, [r4, #0x13c]
0038c3f8  40 31 84 e5                                      str r3, [r4, #0x140]
0038c3fc  44 31 84 e5                                      str r3, [r4, #0x144]
0038c400  48 31 84 e5                                      str r3, [r4, #0x148]
0038c404  4c 31 84 e5                                      str r3, [r4, #0x14c]
0038c408  50 31 84 e5                                      str r3, [r4, #0x150]
0038c40c  54 31 84 e5                                      str r3, [r4, #0x154]
0038c410  58 31 84 e5                                      str r3, [r4, #0x158]
0038c414  60 31 84 e5                                      str r3, [r4, #0x160]
0038c418  64 31 84 e5                                      str r3, [r4, #0x164]
0038c41c  68 31 84 e5                                      str r3, [r4, #0x168]
0038c420  6c 31 84 e5                                      str r3, [r4, #0x16c]
0038c424  70 31 84 e5                                      str r3, [r4, #0x170]
0038c428  74 31 84 e5                                      str r3, [r4, #0x174]
0038c42c  78 31 84 e5                                      str r3, [r4, #0x178]
0038c430  84 31 84 e5                                      str r3, [r4, #0x184]
0038c434  88 31 84 e5                                      str r3, [r4, #0x188]
0038c438  8c 31 84 e5                                      str r3, [r4, #0x18c]
0038c43c  90 31 84 e5                                      str r3, [r4, #0x190]
0038c440  94 31 84 e5                                      str r3, [r4, #0x194]
0038c444  5c 51 c4 e5                                      strb r5, [r4, #0x15c]
0038c448  80 51 84 e5                                      str r5, [r4, #0x180]
0038c44c  72 0f 84 e2                                      add r0, r4, #0x1c8
0038c450  98 31 84 e5                                      str r3, [r4, #0x198]
0038c454  c0 31 84 e5                                      str r3, [r4, #0x1c0]
0038c458  9c 31 84 e5                                      str r3, [r4, #0x19c]
0038c45c  a0 31 84 e5                                      str r3, [r4, #0x1a0]
0038c460  a4 31 84 e5                                      str r3, [r4, #0x1a4]
0038c464  a8 31 84 e5                                      str r3, [r4, #0x1a8]
0038c468  ac 31 84 e5                                      str r3, [r4, #0x1ac]
0038c46c  b0 31 84 e5                                      str r3, [r4, #0x1b0]
0038c470  b4 51 c4 e5                                      strb r5, [r4, #0x1b4]
0038c474  b5 51 c4 e5                                      strb r5, [r4, #0x1b5]
0038c478  b8 31 84 e5                                      str r3, [r4, #0x1b8]
0038c47c  bc 31 84 e5                                      str r3, [r4, #0x1bc]
0038c480  c4 51 c4 e5                                      strb r5, [r4, #0x1c4]
0038c484  6e 60 06 eb                                      bl #0x524644
0038c488  9e 3f 84 e2                                      add r3, r4, #0x278
0038c48c  00 70 e0 e3                                      mvn r7, #0
0038c490  64 20 a0 e3                                      mov r2, #0x64
0038c494  74 22 84 e5                                      str r2, [r4, #0x274]
0038c498  03 00 a0 e1                                      mov r0, r3
0038c49c  88 32 84 e5                                      str r3, [r4, #0x288]
0038c4a0  8c 32 84 e5                                      str r3, [r4, #0x28c]
0038c4a4  6c 52 84 e5                                      str r5, [r4, #0x26c]
0038c4a8  70 72 84 e5                                      str r7, [r4, #0x270]
0038c4ac  10 10 a0 e3                                      mov r1, #0x10
0038c4b0  71 14 fe eb                                      bl #0x31167c
0038c4b4  88 22 94 e5                                      ldr r2, [r4, #0x288]
0038c4b8  29 3e 84 e2                                      add r3, r4, #0x290
0038c4bc  03 00 a0 e1                                      mov r0, r3
0038c4c0  00 50 c2 e5                                      strb r5, [r2]
0038c4c4  10 10 a0 e3                                      mov r1, #0x10
0038c4c8  a0 32 84 e5                                      str r3, [r4, #0x2a0]
0038c4cc  a4 32 84 e5                                      str r3, [r4, #0x2a4]
0038c4d0  69 14 fe eb                                      bl #0x31167c
0038c4d4  a0 22 94 e5                                      ldr r2, [r4, #0x2a0]
0038c4d8  aa 3f 84 e2                                      add r3, r4, #0x2a8
0038c4dc  03 00 a0 e1                                      mov r0, r3
0038c4e0  00 50 c2 e5                                      strb r5, [r2]
0038c4e4  10 10 a0 e3                                      mov r1, #0x10
0038c4e8  b8 32 84 e5                                      str r3, [r4, #0x2b8]
0038c4ec  bc 32 84 e5                                      str r3, [r4, #0x2bc]
0038c4f0  61 14 fe eb                                      bl #0x31167c
0038c4f4  b8 22 94 e5                                      ldr r2, [r4, #0x2b8]
0038c4f8  0b 3d 84 e2                                      add r3, r4, #0x2c0
0038c4fc  03 00 a0 e1                                      mov r0, r3
0038c500  00 50 c2 e5                                      strb r5, [r2]
0038c504  10 10 a0 e3                                      mov r1, #0x10
0038c508  d0 32 84 e5                                      str r3, [r4, #0x2d0]
0038c50c  d4 32 84 e5                                      str r3, [r4, #0x2d4]
0038c510  59 14 fe eb                                      bl #0x31167c
0038c514  d0 32 94 e5                                      ldr r3, [r4, #0x2d0]
0038c518  01 c0 a0 e3                                      mov ip, #1
0038c51c  c1 6f 84 e2                                      add r6, r4, #0x304
0038c520  00 50 c3 e5                                      strb r5, [r3]
0038c524  0c 20 a0 e1                                      mov r2, ip
0038c528  ee c2 c4 e5                                      strb ip, [r4, #0x2ee]
0038c52c  fb c2 c4 e5                                      strb ip, [r4, #0x2fb]
0038c530  d8 52 84 e5                                      str r5, [r4, #0x2d8]
0038c534  dc 52 84 e5                                      str r5, [r4, #0x2dc]
0038c538  e0 52 84 e5                                      str r5, [r4, #0x2e0]
0038c53c  e4 52 84 e5                                      str r5, [r4, #0x2e4]
0038c540  e8 52 84 e5                                      str r5, [r4, #0x2e8]
0038c544  ec 52 c4 e5                                      strb r5, [r4, #0x2ec]
0038c548  ed 52 c4 e5                                      strb r5, [r4, #0x2ed]
0038c54c  ef 52 c4 e5                                      strb r5, [r4, #0x2ef]
0038c550  f0 52 c4 e5                                      strb r5, [r4, #0x2f0]
0038c554  f4 52 84 e5                                      str r5, [r4, #0x2f4]
0038c558  f8 52 c4 e5                                      strb r5, [r4, #0x2f8]
0038c55c  f9 52 c4 e5                                      strb r5, [r4, #0x2f9]
0038c560  fa 52 c4 e5                                      strb r5, [r4, #0x2fa]
0038c564  fc 52 c4 e5                                      strb r5, [r4, #0x2fc]
0038c568  00 53 84 e5                                      str r5, [r4, #0x300]
0038c56c  05 30 a0 e1                                      mov r3, r5
0038c570  05 10 a0 e1                                      mov r1, r5
0038c574  06 00 a0 e1                                      mov r0, r6
0038c578  00 c0 8d e5                                      str ip, [sp]
0038c57c  6b 58 04 eb                                      bl #0x4a2730
0038c580  d6 3f 84 e2                                      add r3, r4, #0x358
0038c584  03 00 a0 e1                                      mov r0, r3
0038c588  68 33 84 e5                                      str r3, [r4, #0x368]
0038c58c  6c 33 84 e5                                      str r3, [r4, #0x36c]
0038c590  10 10 a0 e3                                      mov r1, #0x10
0038c594  38 14 fe eb                                      bl #0x31167c
0038c598  68 13 94 e5                                      ldr r1, [r4, #0x368]
0038c59c  c2 24 a0 e3                                      mov r2, #0xc2000000
0038c5a0  42 34 a0 e3                                      mov r3, #0x42000000
0038c5a4  00 50 c1 e5                                      strb r5, [r1]
0038c5a8  32 27 82 e2                                      add r2, r2, #0xc80000
0038c5ac  32 37 83 e2                                      add r3, r3, #0xc80000
0038c5b0  37 1e a0 e3                                      mov r1, #0x370
0038c5b4  b1 70 84 e1                                      strh r7, [r4, r1]
0038c5b8  04 00 a0 e1                                      mov r0, r4
0038c5bc  4c 21 84 e5                                      str r2, [r4, #0x14c]
0038c5c0  58 31 84 e5                                      str r3, [r4, #0x158]
0038c5c4  44 21 84 e5                                      str r2, [r4, #0x144]
0038c5c8  48 21 84 e5                                      str r2, [r4, #0x148]
0038c5cc  50 31 84 e5                                      str r3, [r4, #0x150]
0038c5d0  54 31 84 e5                                      str r3, [r4, #0x154]
0038c5d4  73 53 c4 e5                                      strb r5, [r4, #0x373]
0038c5d8  72 53 c4 e5                                      strb r5, [r4, #0x372]
0038c5dc  39 f9 ff eb                                      bl #0x38aac8
0038c5e0  06 00 a0 e1                                      mov r0, r6
0038c5e4  04 10 a0 e1                                      mov r1, r4
0038c5e8  cb 54 04 eb                                      bl #0x4a191c
0038c5ec  04 00 a0 e1                                      mov r0, r4
0038c5f0  0c d0 8d e2                                      add sp, sp, #0xc
0038c5f4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0038c5f8  e0 86 60 00 70 2d 00 00                          .byte 0xe0, 0x86, 0x60, 0x00, 0x70, 0x2d, 0x00, 0x00

; FUNCTION 0x0038c600, declared_size=156, range_size=156, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject13DisableZoningEv
; demangled: GameObject::DisableZoning()
; decoder-mode: arm
0038c600  70 40 2d e9                                      push {r4, r5, r6, lr}
0038c604  ee 32 d0 e5                                      ldrb r3, [r0, #0x2ee]
0038c608  84 50 9f e5                                      ldr r5, [pc, #0x84]
0038c60c  00 40 a0 e1                                      mov r4, r0
0038c610  00 00 53 e3                                      cmp r3, #0
0038c614  05 50 8f e0                                      add r5, pc, r5
0038c618  0b 00 00 0a                                      beq #0x38c64c
0038c61c  f4 02 90 e5                                      ldr r0, [r0, #0x2f4]
0038c620  00 00 50 e3                                      cmp r0, #0
0038c624  01 00 00 0a                                      beq #0x38c630
0038c628  04 10 a0 e1                                      mov r1, r4
0038c62c  a6 28 00 eb                                      bl #0x3968cc
0038c630  60 30 9f e5                                      ldr r3, [pc, #0x60]
0038c634  04 10 a0 e1                                      mov r1, r4
0038c638  03 30 95 e7                                      ldr r3, [r5, r3]
0038c63c  38 00 93 e5                                      ldr r0, [r3, #0x38]
0038c640  cf de fe eb                                      bl #0x344184
0038c644  00 30 a0 e3                                      mov r3, #0
0038c648  ee 32 c4 e5                                      strb r3, [r4, #0x2ee]
0038c64c  00 30 94 e5                                      ldr r3, [r4]
0038c650  04 00 a0 e1                                      mov r0, r4
0038c654  3c 50 93 e5                                      ldr r5, [r3, #0x3c]
0038c658  0f e0 a0 e1                                      mov lr, pc
0038c65c  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
0038c660  00 00 50 e3                                      cmp r0, #0
0038c664  06 00 00 0a                                      beq #0x38c684
0038c668  ee 32 d4 e5                                      ldrb r3, [r4, #0x2ee]
0038c66c  00 00 53 e3                                      cmp r3, #0
0038c670  f0 12 d4 15                                      ldrbne r1, [r4, #0x2f0]
0038c674  02 00 00 0a                                      beq #0x38c684
0038c678  04 00 a0 e1                                      mov r0, r4
0038c67c  35 ff 2f e1                                      blx r5
0038c680  70 80 bd e8                                      pop {r4, r5, r6, pc}
0038c684  01 10 a0 e3                                      mov r1, #1
0038c688  04 00 a0 e1                                      mov r0, r4
0038c68c  35 ff 2f e1                                      blx r5
0038c690  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0038c694  7c 84 60 00 f4 37 00 00                          .byte 0x7c, 0x84, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0038c69c, declared_size=116, range_size=116, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject10ZoneExitedEv
; demangled: GameObject::ZoneExited()
; decoder-mode: arm
0038c69c  70 40 2d e9                                      push {r4, r5, r6, lr}
0038c6a0  ee 32 d0 e5                                      ldrb r3, [r0, #0x2ee]
0038c6a4  00 20 a0 e3                                      mov r2, #0
0038c6a8  00 50 a0 e1                                      mov r5, r0
0038c6ac  02 00 53 e1                                      cmp r3, r2
0038c6b0  f0 22 c0 e5                                      strb r2, [r0, #0x2f0]
0038c6b4  03 00 00 0a                                      beq #0x38c6c8
0038c6b8  d8 02 90 e5                                      ldr r0, [r0, #0x2d8]
0038c6bc  02 00 50 e1                                      cmp r0, r2
0038c6c0  00 00 00 0a                                      beq #0x38c6c8
0038c6c4  41 93 03 eb                                      bl #0x4713d0
0038c6c8  00 30 95 e5                                      ldr r3, [r5]
0038c6cc  05 00 a0 e1                                      mov r0, r5
0038c6d0  3c 40 93 e5                                      ldr r4, [r3, #0x3c]
0038c6d4  0f e0 a0 e1                                      mov lr, pc
0038c6d8  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
0038c6dc  00 00 50 e3                                      cmp r0, #0
0038c6e0  06 00 00 0a                                      beq #0x38c700
0038c6e4  ee 32 d5 e5                                      ldrb r3, [r5, #0x2ee]
0038c6e8  00 00 53 e3                                      cmp r3, #0
0038c6ec  f0 12 d5 15                                      ldrbne r1, [r5, #0x2f0]
0038c6f0  02 00 00 0a                                      beq #0x38c700
0038c6f4  05 00 a0 e1                                      mov r0, r5
0038c6f8  34 ff 2f e1                                      blx r4
0038c6fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0038c700  01 10 a0 e3                                      mov r1, #1
0038c704  05 00 a0 e1                                      mov r0, r5
0038c708  34 ff 2f e1                                      blx r4
0038c70c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0038c710, declared_size=128, range_size=128, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject11ZoneEnteredEv
; demangled: GameObject::ZoneEntered()
; decoder-mode: arm
0038c710  70 40 2d e9                                      push {r4, r5, r6, lr}
0038c714  ee 32 d0 e5                                      ldrb r3, [r0, #0x2ee]
0038c718  01 20 a0 e3                                      mov r2, #1
0038c71c  00 50 a0 e1                                      mov r5, r0
0038c720  00 00 53 e3                                      cmp r3, #0
0038c724  f0 22 c0 e5                                      strb r2, [r0, #0x2f0]
0038c728  06 00 00 0a                                      beq #0x38c748
0038c72c  d8 02 90 e5                                      ldr r0, [r0, #0x2d8]
0038c730  00 00 50 e3                                      cmp r0, #0
0038c734  03 00 00 0a                                      beq #0x38c748
0038c738  80 30 d5 e5                                      ldrb r3, [r5, #0x80]
0038c73c  00 00 53 e3                                      cmp r3, #0
0038c740  00 00 00 0a                                      beq #0x38c748
0038c744  21 93 03 eb                                      bl #0x4713d0
0038c748  00 30 95 e5                                      ldr r3, [r5]
0038c74c  05 00 a0 e1                                      mov r0, r5
0038c750  3c 40 93 e5                                      ldr r4, [r3, #0x3c]
0038c754  0f e0 a0 e1                                      mov lr, pc
0038c758  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
0038c75c  00 00 50 e3                                      cmp r0, #0
0038c760  06 00 00 0a                                      beq #0x38c780
0038c764  ee 32 d5 e5                                      ldrb r3, [r5, #0x2ee]
0038c768  00 00 53 e3                                      cmp r3, #0
0038c76c  f0 12 d5 15                                      ldrbne r1, [r5, #0x2f0]
0038c770  02 00 00 0a                                      beq #0x38c780
0038c774  05 00 a0 e1                                      mov r0, r5
0038c778  34 ff 2f e1                                      blx r4
0038c77c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0038c780  01 10 a0 e3                                      mov r1, #1
0038c784  05 00 a0 e1                                      mov r0, r5
0038c788  34 ff 2f e1                                      blx r4
0038c78c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0038c790, declared_size=236, range_size=236, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject12EnableZoningEv
; demangled: GameObject::EnableZoning()
; decoder-mode: arm
0038c790  70 40 2d e9                                      push {r4, r5, r6, lr}
0038c794  ee 22 d0 e5                                      ldrb r2, [r0, #0x2ee]
0038c798  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
0038c79c  00 40 a0 e1                                      mov r4, r0
0038c7a0  00 00 52 e3                                      cmp r2, #0
0038c7a4  03 30 8f e0                                      add r3, pc, r3
0038c7a8  1b 00 00 0a                                      beq #0x38c81c
0038c7ac  00 30 94 e5                                      ldr r3, [r4]
0038c7b0  04 00 a0 e1                                      mov r0, r4
0038c7b4  0f e0 a0 e1                                      mov lr, pc
0038c7b8  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
0038c7bc  00 00 50 e3                                      cmp r0, #0
0038c7c0  03 00 00 0a                                      beq #0x38c7d4
0038c7c4  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
0038c7c8  00 00 50 e3                                      cmp r0, #0
0038c7cc  00 00 00 0a                                      beq #0x38c7d4
0038c7d0  fe 92 03 eb                                      bl #0x4713d0
0038c7d4  00 30 94 e5                                      ldr r3, [r4]
0038c7d8  04 00 a0 e1                                      mov r0, r4
0038c7dc  3c 50 93 e5                                      ldr r5, [r3, #0x3c]
0038c7e0  0f e0 a0 e1                                      mov lr, pc
0038c7e4  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
0038c7e8  00 00 50 e3                                      cmp r0, #0
0038c7ec  06 00 00 0a                                      beq #0x38c80c
0038c7f0  ee 32 d4 e5                                      ldrb r3, [r4, #0x2ee]
0038c7f4  00 00 53 e3                                      cmp r3, #0
0038c7f8  f0 12 d4 15                                      ldrbne r1, [r4, #0x2f0]
0038c7fc  02 00 00 0a                                      beq #0x38c80c
0038c800  04 00 a0 e1                                      mov r0, r4
0038c804  35 ff 2f e1                                      blx r5
0038c808  70 80 bd e8                                      pop {r4, r5, r6, pc}
0038c80c  01 10 a0 e3                                      mov r1, #1
0038c810  04 00 a0 e1                                      mov r0, r4
0038c814  35 ff 2f e1                                      blx r5
0038c818  70 80 bd e8                                      pop {r4, r5, r6, pc}
0038c81c  01 20 a0 e3                                      mov r2, #1
0038c820  ee 22 c0 e5                                      strb r2, [r0, #0x2ee]
0038c824  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0038c828  00 10 a0 e1                                      mov r1, r0
0038c82c  02 30 93 e7                                      ldr r3, [r3, r2]
0038c830  38 00 93 e5                                      ldr r0, [r3, #0x38]
0038c834  9f e6 fe eb                                      bl #0x3462b8
0038c838  f4 02 94 e5                                      ldr r0, [r4, #0x2f4]
0038c83c  00 00 50 e3                                      cmp r0, #0
0038c840  d9 ff ff 0a                                      beq #0x38c7ac
0038c844  04 10 a0 e1                                      mov r1, r4
0038c848  b7 27 00 eb                                      bl #0x39672c
0038c84c  f4 32 94 e5                                      ldr r3, [r4, #0x2f4]
0038c850  89 33 d3 e5                                      ldrb r3, [r3, #0x389]
0038c854  00 00 53 e3                                      cmp r3, #0
0038c858  02 00 00 0a                                      beq #0x38c868
0038c85c  04 00 a0 e1                                      mov r0, r4
0038c860  aa ff ff eb                                      bl #0x38c710
0038c864  d0 ff ff ea                                      b #0x38c7ac
0038c868  04 00 a0 e1                                      mov r0, r4
0038c86c  8a ff ff eb                                      bl #0x38c69c
0038c870  cd ff ff ea                                      b #0x38c7ac
; mapping-symbol data/literal pool
0038c874  ec 82 60 00 f4 37 00 00                          .byte 0xec, 0x82, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0038c968, declared_size=640, range_size=640, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject4DrawEv
; demangled: GameObject::Draw() const
; decoder-mode: arm
0038c968  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038c96c  58 42 9f e5                                      ldr r4, [pc, #0x258]
0038c970  58 62 9f e5                                      ldr r6, [pc, #0x258]
0038c974  d8 32 90 e5                                      ldr r3, [r0, #0x2d8]
0038c978  04 40 8f e0                                      add r4, pc, r4
0038c97c  06 20 94 e7                                      ldr r2, [r4, r6]
0038c980  7c d0 4d e2                                      sub sp, sp, #0x7c
0038c984  00 00 53 e3                                      cmp r3, #0
0038c988  00 20 92 e5                                      ldr r2, [r2]
0038c98c  00 50 a0 e1                                      mov r5, r0
0038c990  74 20 8d e5                                      str r2, [sp, #0x74]
0038c994  03 00 00 0a                                      beq #0x38c9a8
0038c998  03 00 a0 e1                                      mov r0, r3
0038c99c  00 30 93 e5                                      ldr r3, [r3]
0038c9a0  0f e0 a0 e1                                      mov lr, pc
0038c9a4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0038c9a8  dc 32 95 e5                                      ldr r3, [r5, #0x2dc]
0038c9ac  00 00 53 e3                                      cmp r3, #0
0038c9b0  03 00 00 0a                                      beq #0x38c9c4
0038c9b4  03 00 a0 e1                                      mov r0, r3
0038c9b8  00 30 93 e5                                      ldr r3, [r3]
0038c9bc  0f e0 a0 e1                                      mov lr, pc
0038c9c0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0038c9c4  08 82 9f e5                                      ldr r8, [pc, #0x208]
0038c9c8  5c 70 8d e2                                      add r7, sp, #0x5c
0038c9cc  08 a0 94 e7                                      ldr sl, [r4, r8]
0038c9d0  0a 00 a0 e1                                      mov r0, sl
0038c9d4  ab ab fe eb                                      bl #0x337888
0038c9d8  f8 11 9f e5                                      ldr r1, [pc, #0x1f8]
0038c9dc  28 20 8d e2                                      add r2, sp, #0x28
0038c9e0  07 00 a0 e1                                      mov r0, r7
0038c9e4  01 10 8f e0                                      add r1, pc, r1
0038c9e8  bf 1d fe eb                                      bl #0x3140ec
0038c9ec  0a 00 a0 e1                                      mov r0, sl
0038c9f0  07 10 a0 e1                                      mov r1, r7
0038c9f4  23 ac fe eb                                      bl #0x337a88
0038c9f8  00 a0 a0 e1                                      mov sl, r0
0038c9fc  07 00 a0 e1                                      mov r0, r7
0038ca00  13 2e fe eb                                      bl #0x318254
0038ca04  00 00 5a e3                                      cmp sl, #0
0038ca08  5b 00 00 1a                                      bne #0x38cb7c
0038ca0c  08 a0 94 e7                                      ldr sl, [r4, r8]
0038ca10  44 70 8d e2                                      add r7, sp, #0x44
0038ca14  0a 00 a0 e1                                      mov r0, sl
0038ca18  9a ab fe eb                                      bl #0x337888
0038ca1c  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
0038ca20  24 20 8d e2                                      add r2, sp, #0x24
0038ca24  07 00 a0 e1                                      mov r0, r7
0038ca28  01 10 8f e0                                      add r1, pc, r1
0038ca2c  ae 1d fe eb                                      bl #0x3140ec
0038ca30  0a 00 a0 e1                                      mov r0, sl
0038ca34  07 10 a0 e1                                      mov r1, r7
0038ca38  12 ac fe eb                                      bl #0x337a88
0038ca3c  00 00 50 e3                                      cmp r0, #0
0038ca40  50 00 00 1a                                      bne #0x38cb88
0038ca44  07 00 a0 e1                                      mov r0, r7
0038ca48  01 2e fe eb                                      bl #0x318254
0038ca4c  08 80 94 e7                                      ldr r8, [r4, r8]
0038ca50  2c 70 8d e2                                      add r7, sp, #0x2c
0038ca54  08 00 a0 e1                                      mov r0, r8
0038ca58  8a ab fe eb                                      bl #0x337888
0038ca5c  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
0038ca60  20 20 8d e2                                      add r2, sp, #0x20
0038ca64  07 00 a0 e1                                      mov r0, r7
0038ca68  01 10 8f e0                                      add r1, pc, r1
0038ca6c  9e 1d fe eb                                      bl #0x3140ec
0038ca70  08 00 a0 e1                                      mov r0, r8
0038ca74  07 10 a0 e1                                      mov r1, r7
0038ca78  02 ac fe eb                                      bl #0x337a88
0038ca7c  00 80 a0 e1                                      mov r8, r0
0038ca80  07 00 a0 e1                                      mov r0, r7
0038ca84  f2 2d fe eb                                      bl #0x318254
0038ca88  00 00 58 e3                                      cmp r8, #0
0038ca8c  33 00 00 0a                                      beq #0x38cb60
0038ca90  4c a1 9f e5                                      ldr sl, [pc, #0x14c]
0038ca94  0a 30 94 e7                                      ldr r3, [r4, sl]
0038ca98  10 30 93 e5                                      ldr r3, [r3, #0x10]
0038ca9c  10 80 93 e5                                      ldr r8, [r3, #0x10]
0038caa0  ff 3f 0f e3                                      movw r3, #0xffff
0038caa4  dc 90 98 e5                                      ldr sb, [r8, #0xdc]
0038caa8  be 22 d9 e1                                      ldrh r2, [sb, #0x2e]
0038caac  03 00 52 e1                                      cmp r2, r3
0038cab0  3f 00 00 0a                                      beq #0x38cbb4
0038cab4  1c 70 8d e2                                      add r7, sp, #0x1c
0038cab8  07 00 a0 e1                                      mov r0, r7
0038cabc  09 10 a0 e1                                      mov r1, sb
0038cac0  01 30 a0 e3                                      mov r3, #1
0038cac4  86 41 09 eb                                      bl #0x5dd0e4
0038cac8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0038cacc  00 00 50 e3                                      cmp r0, #0
0038cad0  ff 20 a0 03                                      moveq r2, #0xff
0038cad4  01 00 00 0a                                      beq #0x38cae0
0038cad8  95 e4 08 eb                                      bl #0x5c5d34
0038cadc  00 20 a0 e1                                      mov r2, r0
0038cae0  08 00 a0 e1                                      mov r0, r8
0038cae4  07 10 a0 e1                                      mov r1, r7
0038cae8  00 30 a0 e3                                      mov r3, #0
0038caec  1d 82 08 eb                                      bl #0x5ad368
0038caf0  0a 30 94 e7                                      ldr r3, [r4, sl]
0038caf4  2c b1 95 e5                                      ldr fp, [r5, #0x12c]
0038caf8  30 91 95 e5                                      ldr sb, [r5, #0x130]
0038cafc  10 30 93 e5                                      ldr r3, [r3, #0x10]
0038cb00  34 a1 95 e5                                      ldr sl, [r5, #0x134]
0038cb04  38 81 95 e5                                      ldr r8, [r5, #0x138]
0038cb08  10 00 93 e5                                      ldr r0, [r3, #0x10]
0038cb0c  3c e1 95 e5                                      ldr lr, [r5, #0x13c]
0038cb10  40 c1 95 e5                                      ldr ip, [r5, #0x140]
0038cb14  00 30 90 e5                                      ldr r3, [r0]
0038cb18  00 10 a0 e3                                      mov r1, #0
0038cb1c  00 20 e0 e3                                      mvn r2, #0
0038cb20  28 30 93 e5                                      ldr r3, [r3, #0x28]
0038cb24  19 10 cd e5                                      strb r1, [sp, #0x19]
0038cb28  18 10 cd e5                                      strb r1, [sp, #0x18]
0038cb2c  1b 20 cd e5                                      strb r2, [sp, #0x1b]
0038cb30  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0038cb34  00 b0 8d e5                                      str fp, [sp]
0038cb38  04 90 8d e5                                      str sb, [sp, #4]
0038cb3c  08 a0 8d e5                                      str sl, [sp, #8]
0038cb40  0c 80 8d e5                                      str r8, [sp, #0xc]
0038cb44  10 e0 8d e5                                      str lr, [sp, #0x10]
0038cb48  14 c0 8d e5                                      str ip, [sp, #0x14]
0038cb4c  0d 10 a0 e1                                      mov r1, sp
0038cb50  18 20 9d e5                                      ldr r2, [sp, #0x18]
0038cb54  33 ff 2f e1                                      blx r3
0038cb58  07 00 a0 e1                                      mov r0, r7
0038cb5c  21 10 fe eb                                      bl #0x310be8
0038cb60  06 30 94 e7                                      ldr r3, [r4, r6]
0038cb64  74 20 9d e5                                      ldr r2, [sp, #0x74]
0038cb68  00 30 93 e5                                      ldr r3, [r3]
0038cb6c  03 00 52 e1                                      cmp r2, r3
0038cb70  14 00 00 1a                                      bne #0x38cbc8
0038cb74  7c d0 8d e2                                      add sp, sp, #0x7c
0038cb78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038cb7c  72 0f 85 e2                                      add r0, r5, #0x1c8
0038cb80  ea 5f 06 eb                                      bl #0x524b30
0038cb84  a0 ff ff ea                                      b #0x38ca0c
0038cb88  00 30 95 e5                                      ldr r3, [r5]
0038cb8c  05 00 a0 e1                                      mov r0, r5
0038cb90  0f e0 a0 e1                                      mov lr, pc
0038cb94  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
0038cb98  00 00 50 e3                                      cmp r0, #0
0038cb9c  a8 ff ff 0a                                      beq #0x38ca44
0038cba0  07 00 a0 e1                                      mov r0, r7
0038cba4  aa 2d fe eb                                      bl #0x318254
0038cba8  72 0f 85 e2                                      add r0, r5, #0x1c8
0038cbac  47 60 06 eb                                      bl #0x524cd0
0038cbb0  a5 ff ff ea                                      b #0x38ca4c
0038cbb4  09 00 a0 e1                                      mov r0, sb
0038cbb8  01 10 a0 e3                                      mov r1, #1
0038cbbc  d9 2f 09 eb                                      bl #0x5d8b28
0038cbc0  00 20 a0 e1                                      mov r2, r0
0038cbc4  ba ff ff ea                                      b #0x38cab4
0038cbc8  d0 05 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0038cbcc  18 81 60 00 ac 40 00 00 84 08 00 00 2c 5a 53 00  .byte 0x18, 0x81, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x2c, 0x5a, 0x53, 0x00
0038cbdc  00 5a 53 00 e0 59 53 00 f4 37 00 00              .byte 0x00, 0x5a, 0x53, 0x00, 0xe0, 0x59, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0038cbe8, declared_size=352, range_size=352, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject6UpdateEv
; demangled: GameObject::Update()
; decoder-mode: arm
0038cbe8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038cbec  38 51 9f e5                                      ldr r5, [pc, #0x138]
0038cbf0  38 71 9f e5                                      ldr r7, [pc, #0x138]
0038cbf4  00 40 a0 e1                                      mov r4, r0
0038cbf8  05 50 8f e0                                      add r5, pc, r5
0038cbfc  07 30 95 e7                                      ldr r3, [r5, r7]
0038cc00  2c 01 9f e5                                      ldr r0, [pc, #0x12c]
0038cc04  20 d0 4d e2                                      sub sp, sp, #0x20
0038cc08  00 30 93 e5                                      ldr r3, [r3]
0038cc0c  00 00 8f e0                                      add r0, pc, r0
0038cc10  04 60 8d e2                                      add r6, sp, #4
0038cc14  1c 30 8d e5                                      str r3, [sp, #0x1c]
0038cc18  a5 1a fe eb                                      bl #0x3136b4
0038cc1c  14 31 9f e5                                      ldr r3, [pc, #0x114]
0038cc20  03 80 95 e7                                      ldr r8, [r5, r3]
0038cc24  08 00 a0 e1                                      mov r0, r8
0038cc28  16 ab fe eb                                      bl #0x337888
0038cc2c  08 11 9f e5                                      ldr r1, [pc, #0x108]
0038cc30  0d 20 a0 e1                                      mov r2, sp
0038cc34  06 00 a0 e1                                      mov r0, r6
0038cc38  01 10 8f e0                                      add r1, pc, r1
0038cc3c  2a 1d fe eb                                      bl #0x3140ec
0038cc40  06 10 a0 e1                                      mov r1, r6
0038cc44  08 00 a0 e1                                      mov r0, r8
0038cc48  8e ab fe eb                                      bl #0x337a88
0038cc4c  06 00 a0 e1                                      mov r0, r6
0038cc50  7f 2d fe eb                                      bl #0x318254
0038cc54  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
0038cc58  03 30 95 e7                                      ldr r3, [r5, r3]
0038cc5c  38 30 93 e5                                      ldr r3, [r3, #0x38]
0038cc60  58 20 93 e5                                      ldr r2, [r3, #0x58]
0038cc64  01 20 82 e2                                      add r2, r2, #1
0038cc68  58 20 83 e5                                      str r2, [r3, #0x58]
0038cc6c  e4 12 94 e5                                      ldr r1, [r4, #0x2e4]
0038cc70  00 00 51 e3                                      cmp r1, #0
0038cc74  05 00 00 0a                                      beq #0x38cc90
0038cc78  00 30 94 e5                                      ldr r3, [r4]
0038cc7c  04 00 a0 e1                                      mov r0, r4
0038cc80  0f e0 a0 e1                                      mov lr, pc
0038cc84  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0038cc88  00 30 a0 e3                                      mov r3, #0
0038cc8c  e4 32 84 e5                                      str r3, [r4, #0x2e4]
0038cc90  74 31 94 e5                                      ldr r3, [r4, #0x174]
0038cc94  60 e1 94 e5                                      ldr lr, [r4, #0x160]
0038cc98  64 c1 94 e5                                      ldr ip, [r4, #0x164]
0038cc9c  6c 11 94 e5                                      ldr r1, [r4, #0x16c]
0038cca0  70 21 94 e5                                      ldr r2, [r4, #0x170]
0038cca4  68 01 94 e5                                      ldr r0, [r4, #0x168]
0038cca8  a4 31 84 e5                                      str r3, [r4, #0x1a4]
0038ccac  90 e1 84 e5                                      str lr, [r4, #0x190]
0038ccb0  94 c1 84 e5                                      str ip, [r4, #0x194]
0038ccb4  9c 11 84 e5                                      str r1, [r4, #0x19c]
0038ccb8  a0 21 84 e5                                      str r2, [r4, #0x1a0]
0038ccbc  98 01 84 e5                                      str r0, [r4, #0x198]
0038ccc0  04 00 a0 e1                                      mov r0, r4
0038ccc4  fd 1c 00 eb                                      bl #0x3940c0
0038ccc8  04 00 a0 e1                                      mov r0, r4
0038cccc  8f 1a 00 eb                                      bl #0x393710
0038ccd0  04 00 a0 e1                                      mov r0, r4
0038ccd4  bc 1d 00 eb                                      bl #0x3943cc
0038ccd8  04 00 a0 e1                                      mov r0, r4
0038ccdc  24 1c 00 eb                                      bl #0x393d74
0038cce0  04 00 a0 e1                                      mov r0, r4
0038cce4  f3 fa ff eb                                      bl #0x38b8b8
0038cce8  37 3e a0 e3                                      mov r3, #0x370
0038ccec  f3 30 94 e1                                      ldrsh r3, [r4, r3]
0038ccf0  00 00 53 e3                                      cmp r3, #0
0038ccf4  01 00 00 ba                                      blt #0x38cd00
0038ccf8  04 00 a0 e1                                      mov r0, r4
0038ccfc  4a f8 ff eb                                      bl #0x38ae2c
0038cd00  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0038cd04  00 00 8f e0                                      add r0, pc, r0
0038cd08  6a 1a fe eb                                      bl #0x3136b8
0038cd0c  07 30 95 e7                                      ldr r3, [r5, r7]
0038cd10  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0038cd14  00 30 93 e5                                      ldr r3, [r3]
0038cd18  03 00 52 e1                                      cmp r2, r3
0038cd1c  01 00 00 1a                                      bne #0x38cd28
0038cd20  20 d0 8d e2                                      add sp, sp, #0x20
0038cd24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038cd28  78 05 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0038cd2c  98 7e 60 00 ac 40 00 00 54 58 53 00 84 08 00 00  .byte 0x98, 0x7e, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x58, 0x53, 0x00, 0x84, 0x08, 0x00, 0x00
0038cd3c  60 37 53 00 f4 37 00 00 5c 57 53 00              .byte 0x60, 0x37, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x5c, 0x57, 0x53, 0x00

; FUNCTION 0x0038cd48, declared_size=408, range_size=408, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject9InitFinalEv
; demangled: GameObject::InitFinal()
; decoder-mode: arm
0038cd48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038cd4c  78 51 9f e5                                      ldr r5, [pc, #0x178]
0038cd50  78 61 9f e5                                      ldr r6, [pc, #0x178]
0038cd54  28 d0 4d e2                                      sub sp, sp, #0x28
0038cd58  05 50 8f e0                                      add r5, pc, r5
0038cd5c  06 30 95 e7                                      ldr r3, [r5, r6]
0038cd60  00 40 a0 e1                                      mov r4, r0
0038cd64  00 30 93 e5                                      ldr r3, [r3]
0038cd68  24 30 8d e5                                      str r3, [sp, #0x24]
0038cd6c  fc fb ff eb                                      bl #0x38bd64
0038cd70  74 32 94 e5                                      ldr r3, [r4, #0x274]
0038cd74  03 00 50 e1                                      cmp r0, r3
0038cd78  45 00 00 aa                                      bge #0x38ce94
0038cd7c  81 30 d4 e5                                      ldrb r3, [r4, #0x81]
0038cd80  00 00 53 e3                                      cmp r3, #0
0038cd84  42 00 00 1a                                      bne #0x38ce94
0038cd88  ed 32 d4 e5                                      ldrb r3, [r4, #0x2ed]
0038cd8c  00 00 53 e3                                      cmp r3, #0
0038cd90  46 00 00 1a                                      bne #0x38ceb0
0038cd94  44 11 94 e5                                      ldr r1, [r4, #0x144]
0038cd98  50 01 94 e5                                      ldr r0, [r4, #0x150]
0038cd9c  82 05 fe eb                                      bl #0x30e3ac
0038cda0  48 11 94 e5                                      ldr r1, [r4, #0x148]
0038cda4  00 70 a0 e1                                      mov r7, r0
0038cda8  54 01 94 e5                                      ldr r0, [r4, #0x154]
0038cdac  7e 05 fe eb                                      bl #0x30e3ac
0038cdb0  00 80 a0 e1                                      mov r8, r0
0038cdb4  08 10 a0 e1                                      mov r1, r8
0038cdb8  07 00 a0 e1                                      mov r0, r7
0038cdbc  52 06 fe eb                                      bl #0x30e70c
0038cdc0  00 00 50 e3                                      cmp r0, #0
0038cdc4  08 01 9f e5                                      ldr r0, [pc, #0x108]
0038cdc8  08 70 a0 11                                      movne r7, r8
0038cdcc  84 20 d4 e5                                      ldrb r2, [r4, #0x84]
0038cdd0  72 1f 84 e2                                      add r1, r4, #0x1c8
0038cdd4  16 3e 84 e2                                      add r3, r4, #0x160
0038cdd8  00 00 95 e7                                      ldr r0, [r5, r0]
0038cddc  00 70 8d e5                                      str r7, [sp]
0038cde0  04 40 8d e5                                      str r4, [sp, #4]
0038cde4  4b 67 06 eb                                      bl #0x526b18
0038cde8  44 70 94 e5                                      ldr r7, [r4, #0x44]
0038cdec  07 00 a0 e1                                      mov r0, r7
0038cdf0  17 04 fe eb                                      bl #0x30de54
0038cdf4  07 10 a0 e1                                      mov r1, r7
0038cdf8  00 20 87 e0                                      add r2, r7, r0
0038cdfc  95 0f 84 e2                                      add r0, r4, #0x254
0038ce00  f6 0e fe eb                                      bl #0x3109e0
0038ce04  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
0038ce08  00 00 50 e3                                      cmp r0, #0
0038ce0c  1e 00 00 0a                                      beq #0x38ce8c
0038ce10  17 fb ff eb                                      bl #0x38ba74
0038ce14  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
0038ce18  0c 70 8d e2                                      add r7, sp, #0xc
0038ce1c  88 22 94 e5                                      ldr r2, [r4, #0x288]
0038ce20  03 30 95 e7                                      ldr r3, [r5, r3]
0038ce24  8c 12 94 e5                                      ldr r1, [r4, #0x28c]
0038ce28  07 00 a0 e1                                      mov r0, r7
0038ce2c  10 30 93 e5                                      ldr r3, [r3, #0x10]
0038ce30  1c 80 93 e5                                      ldr r8, [r3, #0x1c]
0038ce34  1c 70 8d e5                                      str r7, [sp, #0x1c]
0038ce38  20 70 8d e5                                      str r7, [sp, #0x20]
0038ce3c  a5 8f 88 e2                                      add r8, r8, #0x294
0038ce40  28 12 fe eb                                      bl #0x3116e8
0038ce44  08 00 a0 e1                                      mov r0, r8
0038ce48  07 10 a0 e1                                      mov r1, r7
0038ce4c  5e fd 01 eb                                      bl #0x40c3cc
0038ce50  00 80 a0 e1                                      mov r8, r0
0038ce54  07 00 a0 e1                                      mov r0, r7
0038ce58  fd 2c fe eb                                      bl #0x318254
0038ce5c  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
0038ce60  40 80 83 e5                                      str r8, [r3, #0x40]
0038ce64  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
0038ce68  00 00 53 e3                                      cmp r3, #0
0038ce6c  06 00 00 0a                                      beq #0x38ce8c
0038ce70  08 00 93 e5                                      ldr r0, [r3, #8]
0038ce74  00 00 50 e3                                      cmp r0, #0
0038ce78  03 00 00 0a                                      beq #0x38ce8c
0038ce7c  58 10 9f e5                                      ldr r1, [pc, #0x58]
0038ce80  01 10 8f e0                                      add r1, pc, r1
0038ce84  9a 2d 08 eb                                      bl #0x5984f4
0038ce88  80 01 84 e5                                      str r0, [r4, #0x180]
0038ce8c  04 00 a0 e1                                      mov r0, r4
0038ce90  02 1c 00 eb                                      bl #0x393ea0
0038ce94  06 30 95 e7                                      ldr r3, [r5, r6]
0038ce98  24 20 9d e5                                      ldr r2, [sp, #0x24]
0038ce9c  00 30 93 e5                                      ldr r3, [r3]
0038cea0  03 00 52 e1                                      cmp r2, r3
0038cea4  07 00 00 1a                                      bne #0x38cec8
0038cea8  28 d0 8d e2                                      add sp, sp, #0x28
0038ceac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038ceb0  00 30 94 e5                                      ldr r3, [r4]
0038ceb4  04 00 a0 e1                                      mov r0, r4
0038ceb8  01 10 a0 e3                                      mov r1, #1
0038cebc  0f e0 a0 e1                                      mov lr, pc
0038cec0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0038cec4  b2 ff ff ea                                      b #0x38cd94
0038cec8  10 05 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0038cecc  38 7d 60 00 ac 40 00 00 04 12 00 00 f4 37 00 00  .byte 0x38, 0x7d, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00, 0x04, 0x12, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
0038cedc  f8 55 53 00                                      .byte 0xf8, 0x55, 0x53, 0x00

; FUNCTION 0x0038cee0, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZThn4_N10GameObject17DeclarePropertiesEv
; demangled: non-virtual thunk to GameObject::DeclareProperties()
; decoder-mode: arm
0038cee0  04 00 40 e2                                      sub r0, r0, #4
0038cee4  ff ff ff ea                                      b #0x38cee8

; FUNCTION 0x0038cee8, declared_size=604, range_size=604, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject17DeclarePropertiesEv
; demangled: GameObject::DeclareProperties()
; decoder-mode: arm
0038cee8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038ceec  08 62 9f e5                                      ldr r6, [pc, #0x208]
0038cef0  08 32 9f e5                                      ldr r3, [pc, #0x208]
0038cef4  4c d0 4d e2                                      sub sp, sp, #0x4c
0038cef8  06 60 8f e0                                      add r6, pc, r6
0038cefc  03 90 96 e7                                      ldr sb, [r6, r3]
0038cf00  04 50 80 e2                                      add r5, r0, #4
0038cf04  00 40 a0 e1                                      mov r4, r0
0038cf08  00 30 99 e5                                      ldr r3, [sb]
0038cf0c  9d bf 80 e2                                      add fp, r0, #0x274
0038cf10  ec 81 9f e5                                      ldr r8, [pc, #0x1ec]
0038cf14  44 30 8d e5                                      str r3, [sp, #0x44]
0038cf18  3d c8 fe eb                                      bl #0x33f014
0038cf1c  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
0038cf20  e4 11 9f e5                                      ldr r1, [pc, #0x1e4]
0038cf24  05 00 a0 e1                                      mov r0, r5
0038cf28  03 70 96 e7                                      ldr r7, [r6, r3]
0038cf2c  01 10 8f e0                                      add r1, pc, r1
0038cf30  16 2e 84 e2                                      add r2, r4, #0x160
0038cf34  00 c0 97 e5                                      ldr ip, [r7]
0038cf38  04 e0 97 e5                                      ldr lr, [r7, #4]
0038cf3c  08 a0 97 e5                                      ldr sl, [r7, #8]
0038cf40  18 30 8d e2                                      add r3, sp, #0x18
0038cf44  18 c0 8d e5                                      str ip, [sp, #0x18]
0038cf48  1c e0 8d e5                                      str lr, [sp, #0x1c]
0038cf4c  20 a0 8d e5                                      str sl, [sp, #0x20]
0038cf50  4f f2 ff eb                                      bl #0x389894
0038cf54  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
0038cf58  00 e0 97 e5                                      ldr lr, [r7]
0038cf5c  04 c0 97 e5                                      ldr ip, [r7, #4]
0038cf60  08 a0 97 e5                                      ldr sl, [r7, #8]
0038cf64  0c 30 8d e2                                      add r3, sp, #0xc
0038cf68  01 10 8f e0                                      add r1, pc, r1
0038cf6c  05 00 a0 e1                                      mov r0, r5
0038cf70  5b 2f 84 e2                                      add r2, r4, #0x16c
0038cf74  0c e0 8d e5                                      str lr, [sp, #0xc]
0038cf78  10 c0 8d e5                                      str ip, [sp, #0x10]
0038cf7c  14 a0 8d e5                                      str sl, [sp, #0x14]
0038cf80  43 f2 ff eb                                      bl #0x389894
0038cf84  88 11 9f e5                                      ldr r1, [pc, #0x188]
0038cf88  05 00 a0 e1                                      mov r0, r5
0038cf8c  29 2e 84 e2                                      add r2, r4, #0x290
0038cf90  01 10 8f e0                                      add r1, pc, r1
0038cf94  f8 c7 fe eb                                      bl #0x33ef7c
0038cf98  78 11 9f e5                                      ldr r1, [pc, #0x178]
0038cf9c  05 00 a0 e1                                      mov r0, r5
0038cfa0  aa 2f 84 e2                                      add r2, r4, #0x2a8
0038cfa4  01 10 8f e0                                      add r1, pc, r1
0038cfa8  f3 c7 fe eb                                      bl #0x33ef7c
0038cfac  68 11 9f e5                                      ldr r1, [pc, #0x168]
0038cfb0  05 00 a0 e1                                      mov r0, r5
0038cfb4  0b 2d 84 e2                                      add r2, r4, #0x2c0
0038cfb8  01 10 8f e0                                      add r1, pc, r1
0038cfbc  ee c7 fe eb                                      bl #0x33ef7c
0038cfc0  58 11 9f e5                                      ldr r1, [pc, #0x158]
0038cfc4  fe c5 a0 e3                                      mov ip, #0x3f800000
0038cfc8  05 00 a0 e1                                      mov r0, r5
0038cfcc  01 10 8f e0                                      add r1, pc, r1
0038cfd0  12 2e 84 e2                                      add r2, r4, #0x120
0038cfd4  0d 30 a0 e1                                      mov r3, sp
0038cfd8  08 c0 8d e5                                      str ip, [sp, #8]
0038cfdc  00 c0 8d e5                                      str ip, [sp]
0038cfe0  04 c0 8d e5                                      str ip, [sp, #4]
0038cfe4  2a f2 ff eb                                      bl #0x389894
0038cfe8  34 11 9f e5                                      ldr r1, [pc, #0x134]
0038cfec  bb 2f 84 e2                                      add r2, r4, #0x2ec
0038cff0  01 20 82 e2                                      add r2, r2, #1
0038cff4  01 10 8f e0                                      add r1, pc, r1
0038cff8  05 00 a0 e1                                      mov r0, r5
0038cffc  00 30 a0 e3                                      mov r3, #0
0038d000  29 c5 fe eb                                      bl #0x33e4ac
0038d004  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
0038d008  00 30 a0 e3                                      mov r3, #0
0038d00c  57 2f 84 e2                                      add r2, r4, #0x15c
0038d010  01 10 8f e0                                      add r1, pc, r1
0038d014  05 00 a0 e1                                      mov r0, r5
0038d018  23 c5 fe eb                                      bl #0x33e4ac
0038d01c  00 10 a0 e3                                      mov r1, #0
0038d020  24 00 a0 e3                                      mov r0, #0x24
0038d024  51 0d fe eb                                      bl #0x310570
0038d028  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
0038d02c  08 80 8f e0                                      add r8, pc, r8
0038d030  00 a0 a0 e1                                      mov sl, r0
0038d034  03 30 96 e7                                      ldr r3, [r6, r3]
0038d038  08 10 a0 e1                                      mov r1, r8
0038d03c  24 20 8d e2                                      add r2, sp, #0x24
0038d040  08 30 83 e2                                      add r3, r3, #8
0038d044  08 30 80 e4                                      str r3, [r0], #8
0038d048  27 1c fe eb                                      bl #0x3140ec
0038d04c  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
0038d050  64 20 a0 e3                                      mov r2, #0x64
0038d054  0b b0 65 e0                                      rsb fp, r5, fp
0038d058  03 30 96 e7                                      ldr r3, [r6, r3]
0038d05c  20 20 8a e5                                      str r2, [sl, #0x20]
0038d060  08 10 a0 e1                                      mov r1, r8
0038d064  08 30 83 e2                                      add r3, r3, #8
0038d068  00 30 8a e5                                      str r3, [sl]
0038d06c  0a 20 a0 e1                                      mov r2, sl
0038d070  05 00 a0 e1                                      mov r0, r5
0038d074  04 b0 8a e5                                      str fp, [sl, #4]
0038d078  19 1b 06 eb                                      bl #0x513ce4
0038d07c  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0038d080  2c 70 8d e2                                      add r7, sp, #0x2c
0038d084  28 20 8d e2                                      add r2, sp, #0x28
0038d088  01 10 8f e0                                      add r1, pc, r1
0038d08c  07 00 a0 e1                                      mov r0, r7
0038d090  15 1c fe eb                                      bl #0x3140ec
0038d094  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0038d098  07 30 a0 e1                                      mov r3, r7
0038d09c  9e 2f 84 e2                                      add r2, r4, #0x278
0038d0a0  01 10 8f e0                                      add r1, pc, r1
0038d0a4  05 00 a0 e1                                      mov r0, r5
0038d0a8  d5 c4 fe eb                                      bl #0x33e404
0038d0ac  07 00 a0 e1                                      mov r0, r7
0038d0b0  67 2c fe eb                                      bl #0x318254
0038d0b4  80 10 9f e5                                      ldr r1, [pc, #0x80]
0038d0b8  05 00 a0 e1                                      mov r0, r5
0038d0bc  d6 2f 84 e2                                      add r2, r4, #0x358
0038d0c0  01 10 8f e0                                      add r1, pc, r1
0038d0c4  ac c7 fe eb                                      bl #0x33ef7c
0038d0c8  70 10 9f e5                                      ldr r1, [pc, #0x70]
0038d0cc  60 20 84 e2                                      add r2, r4, #0x60
0038d0d0  01 30 a0 e3                                      mov r3, #1
0038d0d4  05 00 a0 e1                                      mov r0, r5
0038d0d8  01 10 8f e0                                      add r1, pc, r1
0038d0dc  f2 c4 fe eb                                      bl #0x33e4ac
0038d0e0  44 20 9d e5                                      ldr r2, [sp, #0x44]
0038d0e4  00 30 99 e5                                      ldr r3, [sb]
0038d0e8  03 00 52 e1                                      cmp r2, r3
0038d0ec  01 00 00 1a                                      bne #0x38d0f8
0038d0f0  4c d0 8d e2                                      add sp, sp, #0x4c
0038d0f4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038d0f8  84 04 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0038d0fc  98 7b 60 00 ac 40 00 00 a4 54 53 00 2c 3f 00 00  .byte 0x98, 0x7b, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa4, 0x54, 0x53, 0x00, 0x2c, 0x3f, 0x00, 0x00
0038d10c  fc 52 53 00 20 55 53 00 08 c9 53 00 f4 54 53 00  .byte 0xfc, 0x52, 0x53, 0x00, 0x20, 0x55, 0x53, 0x00, 0x08, 0xc9, 0x53, 0x00, 0xf4, 0x54, 0x53, 0x00
0038d11c  f0 54 53 00 b4 81 55 00 bc 54 53 00 b0 54 53 00  .byte 0xf0, 0x54, 0x53, 0x00, 0xb4, 0x81, 0x55, 0x00, 0xbc, 0x54, 0x53, 0x00, 0xb0, 0x54, 0x53, 0x00
0038d12c  30 23 00 00 90 25 00 00 58 54 53 00 50 54 53 00  .byte 0x30, 0x23, 0x00, 0x00, 0x90, 0x25, 0x00, 0x00, 0x58, 0x54, 0x53, 0x00, 0x50, 0x54, 0x53, 0x00
0038d13c  40 54 53 00 38 54 53 00                          .byte 0x40, 0x54, 0x53, 0x00, 0x38, 0x54, 0x53, 0x00

; FUNCTION 0x0038d220, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZThn36_N10GameObjectD1Ev
; demangled: non-virtual thunk to GameObject::~GameObject()
; decoder-mode: arm
0038d220  24 00 40 e2                                      sub r0, r0, #0x24
0038d224  ff ff ff ea                                      b #0x38d228

; FUNCTION 0x0038d228, declared_size=300, range_size=300, mode=arm
; class-group: GameObject
; alias: _ZN10GameObjectD1Ev
; demangled: GameObject::~GameObject()
; decoder-mode: arm
0038d228  70 40 2d e9                                      push {r4, r5, r6, lr}
0038d22c  14 51 9f e5                                      ldr r5, [pc, #0x114]
0038d230  14 31 9f e5                                      ldr r3, [pc, #0x114]
0038d234  d8 22 90 e5                                      ldr r2, [r0, #0x2d8]
0038d238  05 50 8f e0                                      add r5, pc, r5
0038d23c  03 30 95 e7                                      ldr r3, [r5, r3]
0038d240  00 40 a0 e1                                      mov r4, r0
0038d244  00 00 52 e3                                      cmp r2, #0
0038d248  e4 10 83 e2                                      add r1, r3, #0xe4
0038d24c  08 00 83 e2                                      add r0, r3, #8
0038d250  d8 30 83 e2                                      add r3, r3, #0xd8
0038d254  09 00 84 e8                                      stm r4, {r0, r3}
0038d258  24 10 84 e5                                      str r1, [r4, #0x24]
0038d25c  05 00 00 0a                                      beq #0x38d278
0038d260  00 30 92 e5                                      ldr r3, [r2]
0038d264  02 00 a0 e1                                      mov r0, r2
0038d268  0f e0 a0 e1                                      mov lr, pc
0038d26c  04 f0 93 e5                                      ldr pc, [r3, #4]
0038d270  00 30 a0 e3                                      mov r3, #0
0038d274  d8 32 84 e5                                      str r3, [r4, #0x2d8]
0038d278  dc 32 94 e5                                      ldr r3, [r4, #0x2dc]
0038d27c  00 00 53 e3                                      cmp r3, #0
0038d280  05 00 00 0a                                      beq #0x38d29c
0038d284  03 00 a0 e1                                      mov r0, r3
0038d288  00 30 93 e5                                      ldr r3, [r3]
0038d28c  0f e0 a0 e1                                      mov lr, pc
0038d290  04 f0 93 e5                                      ldr pc, [r3, #4]
0038d294  00 30 a0 e3                                      mov r3, #0
0038d298  dc 32 84 e5                                      str r3, [r4, #0x2dc]
0038d29c  e0 32 94 e5                                      ldr r3, [r4, #0x2e0]
0038d2a0  00 00 53 e3                                      cmp r3, #0
0038d2a4  05 00 00 0a                                      beq #0x38d2c0
0038d2a8  03 00 a0 e1                                      mov r0, r3
0038d2ac  00 30 93 e5                                      ldr r3, [r3]
0038d2b0  0f e0 a0 e1                                      mov lr, pc
0038d2b4  04 f0 93 e5                                      ldr pc, [r3, #4]
0038d2b8  00 30 a0 e3                                      mov r3, #0
0038d2bc  e0 32 84 e5                                      str r3, [r4, #0x2e0]
0038d2c0  00 33 94 e5                                      ldr r3, [r4, #0x300]
0038d2c4  00 00 53 e3                                      cmp r3, #0
0038d2c8  05 00 00 0a                                      beq #0x38d2e4
0038d2cc  03 00 a0 e1                                      mov r0, r3
0038d2d0  00 30 93 e5                                      ldr r3, [r3]
0038d2d4  0f e0 a0 e1                                      mov lr, pc
0038d2d8  04 f0 93 e5                                      ldr pc, [r3, #4]
0038d2dc  00 30 a0 e3                                      mov r3, #0
0038d2e0  00 33 84 e5                                      str r3, [r4, #0x300]
0038d2e4  37 3e a0 e3                                      mov r3, #0x370
0038d2e8  f3 10 94 e1                                      ldrsh r1, [r4, r3]
0038d2ec  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0038d2f0  00 20 a0 e3                                      mov r2, #0
0038d2f4  03 30 95 e7                                      ldr r3, [r5, r3]
0038d2f8  00 00 93 e5                                      ldr r0, [r3]
0038d2fc  3a 73 ff eb                                      bl #0x369fec
0038d300  d6 0f 84 e2                                      add r0, r4, #0x358
0038d304  d2 2b fe eb                                      bl #0x318254
0038d308  c1 0f 84 e2                                      add r0, r4, #0x304
0038d30c  9e ff ff eb                                      bl #0x38d18c
0038d310  0b 0d 84 e2                                      add r0, r4, #0x2c0
0038d314  ce 2b fe eb                                      bl #0x318254
0038d318  aa 0f 84 e2                                      add r0, r4, #0x2a8
0038d31c  cc 2b fe eb                                      bl #0x318254
0038d320  29 0e 84 e2                                      add r0, r4, #0x290
0038d324  ca 2b fe eb                                      bl #0x318254
0038d328  9e 0f 84 e2                                      add r0, r4, #0x278
0038d32c  c8 2b fe eb                                      bl #0x318254
0038d330  72 0f 84 e2                                      add r0, r4, #0x1c8
0038d334  05 5f 06 eb                                      bl #0x524f50
0038d338  04 00 a0 e1                                      mov r0, r4
0038d33c  95 c5 fe eb                                      bl #0x33e998
0038d340  04 00 a0 e1                                      mov r0, r4
0038d344  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0038d348  58 78 60 00 70 2d 00 00 a4 0d 00 00              .byte 0x58, 0x78, 0x60, 0x00, 0x70, 0x2d, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x0038d354, declared_size=8, range_size=8, mode=arm
; class-group: GameObject
; alias: _ZThn36_N10GameObjectD0Ev
; demangled: non-virtual thunk to GameObject::~GameObject()
; decoder-mode: arm
0038d354  24 00 40 e2                                      sub r0, r0, #0x24
0038d358  ff ff ff ea                                      b #0x38d35c

; FUNCTION 0x0038d35c, declared_size=28, range_size=28, mode=arm
; class-group: GameObject
; alias: _ZN10GameObjectD0Ev
; demangled: GameObject::~GameObject()
; decoder-mode: arm
0038d35c  10 40 2d e9                                      push {r4, lr}
0038d360  00 40 a0 e1                                      mov r4, r0
0038d364  af ff ff eb                                      bl #0x38d228
0038d368  04 00 a0 e1                                      mov r0, r4
0038d36c  33 0c fe eb                                      bl #0x310440
0038d370  04 00 a0 e1                                      mov r0, r4
0038d374  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0038d378, declared_size=300, range_size=300, mode=arm
; class-group: GameObject
; alias: _ZN10GameObjectD2Ev
; demangled: GameObject::~GameObject()
; decoder-mode: arm
0038d378  70 40 2d e9                                      push {r4, r5, r6, lr}
0038d37c  14 51 9f e5                                      ldr r5, [pc, #0x114]
0038d380  14 31 9f e5                                      ldr r3, [pc, #0x114]
0038d384  d8 22 90 e5                                      ldr r2, [r0, #0x2d8]
0038d388  05 50 8f e0                                      add r5, pc, r5
0038d38c  03 30 95 e7                                      ldr r3, [r5, r3]
0038d390  00 40 a0 e1                                      mov r4, r0
0038d394  00 00 52 e3                                      cmp r2, #0
0038d398  e4 10 83 e2                                      add r1, r3, #0xe4
0038d39c  08 00 83 e2                                      add r0, r3, #8
0038d3a0  d8 30 83 e2                                      add r3, r3, #0xd8
0038d3a4  09 00 84 e8                                      stm r4, {r0, r3}
0038d3a8  24 10 84 e5                                      str r1, [r4, #0x24]
0038d3ac  05 00 00 0a                                      beq #0x38d3c8
0038d3b0  00 30 92 e5                                      ldr r3, [r2]
0038d3b4  02 00 a0 e1                                      mov r0, r2
0038d3b8  0f e0 a0 e1                                      mov lr, pc
0038d3bc  04 f0 93 e5                                      ldr pc, [r3, #4]
0038d3c0  00 30 a0 e3                                      mov r3, #0
0038d3c4  d8 32 84 e5                                      str r3, [r4, #0x2d8]
0038d3c8  dc 32 94 e5                                      ldr r3, [r4, #0x2dc]
0038d3cc  00 00 53 e3                                      cmp r3, #0
0038d3d0  05 00 00 0a                                      beq #0x38d3ec
0038d3d4  03 00 a0 e1                                      mov r0, r3
0038d3d8  00 30 93 e5                                      ldr r3, [r3]
0038d3dc  0f e0 a0 e1                                      mov lr, pc
0038d3e0  04 f0 93 e5                                      ldr pc, [r3, #4]
0038d3e4  00 30 a0 e3                                      mov r3, #0
0038d3e8  dc 32 84 e5                                      str r3, [r4, #0x2dc]
0038d3ec  e0 32 94 e5                                      ldr r3, [r4, #0x2e0]
0038d3f0  00 00 53 e3                                      cmp r3, #0
0038d3f4  05 00 00 0a                                      beq #0x38d410
0038d3f8  03 00 a0 e1                                      mov r0, r3
0038d3fc  00 30 93 e5                                      ldr r3, [r3]
0038d400  0f e0 a0 e1                                      mov lr, pc
0038d404  04 f0 93 e5                                      ldr pc, [r3, #4]
0038d408  00 30 a0 e3                                      mov r3, #0
0038d40c  e0 32 84 e5                                      str r3, [r4, #0x2e0]
0038d410  00 33 94 e5                                      ldr r3, [r4, #0x300]
0038d414  00 00 53 e3                                      cmp r3, #0
0038d418  05 00 00 0a                                      beq #0x38d434
0038d41c  03 00 a0 e1                                      mov r0, r3
0038d420  00 30 93 e5                                      ldr r3, [r3]
0038d424  0f e0 a0 e1                                      mov lr, pc
0038d428  04 f0 93 e5                                      ldr pc, [r3, #4]
0038d42c  00 30 a0 e3                                      mov r3, #0
0038d430  00 33 84 e5                                      str r3, [r4, #0x300]
0038d434  37 3e a0 e3                                      mov r3, #0x370
0038d438  f3 10 94 e1                                      ldrsh r1, [r4, r3]
0038d43c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0038d440  00 20 a0 e3                                      mov r2, #0
0038d444  03 30 95 e7                                      ldr r3, [r5, r3]
0038d448  00 00 93 e5                                      ldr r0, [r3]
0038d44c  e6 72 ff eb                                      bl #0x369fec
0038d450  d6 0f 84 e2                                      add r0, r4, #0x358
0038d454  7e 2b fe eb                                      bl #0x318254
0038d458  c1 0f 84 e2                                      add r0, r4, #0x304
0038d45c  4a ff ff eb                                      bl #0x38d18c
0038d460  0b 0d 84 e2                                      add r0, r4, #0x2c0
0038d464  7a 2b fe eb                                      bl #0x318254
0038d468  aa 0f 84 e2                                      add r0, r4, #0x2a8
0038d46c  78 2b fe eb                                      bl #0x318254
0038d470  29 0e 84 e2                                      add r0, r4, #0x290
0038d474  76 2b fe eb                                      bl #0x318254
0038d478  9e 0f 84 e2                                      add r0, r4, #0x278
0038d47c  74 2b fe eb                                      bl #0x318254
0038d480  72 0f 84 e2                                      add r0, r4, #0x1c8
0038d484  b1 5e 06 eb                                      bl #0x524f50
0038d488  04 00 a0 e1                                      mov r0, r4
0038d48c  41 c5 fe eb                                      bl #0x33e998
0038d490  04 00 a0 e1                                      mov r0, r4
0038d494  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0038d498  08 77 60 00 70 2d 00 00 a4 0d 00 00              .byte 0x08, 0x77, 0x60, 0x00, 0x70, 0x2d, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x0038d5f8, declared_size=16, range_size=16, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject5_LockERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_Lock(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038d5f8  29 30 d2 e5                                      ldrb r3, [r2, #0x29]
0038d5fc  01 30 83 e2                                      add r3, r3, #1
0038d600  29 30 c2 e5                                      strb r3, [r2, #0x29]
0038d604  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d7a8, declared_size=20, range_size=20, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject7_UnlockERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_Unlock(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038d7a8  29 30 d2 e5                                      ldrb r3, [r2, #0x29]
0038d7ac  00 00 53 e3                                      cmp r3, #0
0038d7b0  01 30 43 12                                      subne r3, r3, #1
0038d7b4  29 30 c2 15                                      strbne r3, [r2, #0x29]
0038d7b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d7ec, declared_size=2648, range_size=2648, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject14createBindingsERN3sfc6script3lua6BinderE
; demangled: GameObject::createBindings(sfc::script::lua::Binder&)
; decoder-mode: arm
0038d7ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038d7f0  d0 58 9f e5                                      ldr r5, [pc, #0x8d0]
0038d7f4  01 40 a0 e1                                      mov r4, r1
0038d7f8  cc 38 9f e5                                      ldr r3, [pc, #0x8cc]
0038d7fc  cc 18 9f e5                                      ldr r1, [pc, #0x8cc]
0038d800  05 50 8f e0                                      add r5, pc, r5
0038d804  00 60 a0 e1                                      mov r6, r0
0038d808  03 20 95 e7                                      ldr r2, [r5, r3]
0038d80c  04 00 a0 e1                                      mov r0, r4
0038d810  01 10 8f e0                                      add r1, pc, r1
0038d814  b6 30 fe eb                                      bl #0x319af4
0038d818  b4 38 9f e5                                      ldr r3, [pc, #0x8b4]
0038d81c  b4 18 9f e5                                      ldr r1, [pc, #0x8b4]
0038d820  04 00 a0 e1                                      mov r0, r4
0038d824  03 20 95 e7                                      ldr r2, [r5, r3]
0038d828  01 10 8f e0                                      add r1, pc, r1
0038d82c  b0 30 fe eb                                      bl #0x319af4
0038d830  a4 28 9f e5                                      ldr r2, [pc, #0x8a4]
0038d834  a4 78 9f e5                                      ldr r7, [pc, #0x8a4]
0038d838  06 30 a0 e1                                      mov r3, r6
0038d83c  02 80 95 e7                                      ldr r8, [r5, r2]
0038d840  07 70 8f e0                                      add r7, pc, r7
0038d844  04 00 a0 e1                                      mov r0, r4
0038d848  07 10 a0 e1                                      mov r1, r7
0038d84c  08 20 a0 e1                                      mov r2, r8
0038d850  1f 33 fe eb                                      bl #0x31a4d4
0038d854  04 00 a0 e1                                      mov r0, r4
0038d858  07 10 a0 e1                                      mov r1, r7
0038d85c  08 20 a0 e1                                      mov r2, r8
0038d860  a3 30 fe eb                                      bl #0x319af4
0038d864  78 28 9f e5                                      ldr r2, [pc, #0x878]
0038d868  78 78 9f e5                                      ldr r7, [pc, #0x878]
0038d86c  06 30 a0 e1                                      mov r3, r6
0038d870  02 80 95 e7                                      ldr r8, [r5, r2]
0038d874  07 70 8f e0                                      add r7, pc, r7
0038d878  04 00 a0 e1                                      mov r0, r4
0038d87c  07 10 a0 e1                                      mov r1, r7
0038d880  08 20 a0 e1                                      mov r2, r8
0038d884  12 33 fe eb                                      bl #0x31a4d4
0038d888  04 00 a0 e1                                      mov r0, r4
0038d88c  07 10 a0 e1                                      mov r1, r7
0038d890  08 20 a0 e1                                      mov r2, r8
0038d894  96 30 fe eb                                      bl #0x319af4
0038d898  4c 38 9f e5                                      ldr r3, [pc, #0x84c]
0038d89c  4c 18 9f e5                                      ldr r1, [pc, #0x84c]
0038d8a0  04 00 a0 e1                                      mov r0, r4
0038d8a4  03 20 95 e7                                      ldr r2, [r5, r3]
0038d8a8  01 10 8f e0                                      add r1, pc, r1
0038d8ac  06 30 a0 e1                                      mov r3, r6
0038d8b0  07 33 fe eb                                      bl #0x31a4d4
0038d8b4  38 38 9f e5                                      ldr r3, [pc, #0x838]
0038d8b8  38 18 9f e5                                      ldr r1, [pc, #0x838]
0038d8bc  04 00 a0 e1                                      mov r0, r4
0038d8c0  03 20 95 e7                                      ldr r2, [r5, r3]
0038d8c4  01 10 8f e0                                      add r1, pc, r1
0038d8c8  06 30 a0 e1                                      mov r3, r6
0038d8cc  00 33 fe eb                                      bl #0x31a4d4
0038d8d0  24 28 9f e5                                      ldr r2, [pc, #0x824]
0038d8d4  24 78 9f e5                                      ldr r7, [pc, #0x824]
0038d8d8  06 30 a0 e1                                      mov r3, r6
0038d8dc  02 80 95 e7                                      ldr r8, [r5, r2]
0038d8e0  07 70 8f e0                                      add r7, pc, r7
0038d8e4  04 00 a0 e1                                      mov r0, r4
0038d8e8  07 10 a0 e1                                      mov r1, r7
0038d8ec  08 20 a0 e1                                      mov r2, r8
0038d8f0  f7 32 fe eb                                      bl #0x31a4d4
0038d8f4  04 00 a0 e1                                      mov r0, r4
0038d8f8  07 10 a0 e1                                      mov r1, r7
0038d8fc  08 20 a0 e1                                      mov r2, r8
0038d900  7b 30 fe eb                                      bl #0x319af4
0038d904  f8 27 9f e5                                      ldr r2, [pc, #0x7f8]
0038d908  f8 77 9f e5                                      ldr r7, [pc, #0x7f8]
0038d90c  06 30 a0 e1                                      mov r3, r6
0038d910  02 80 95 e7                                      ldr r8, [r5, r2]
0038d914  07 70 8f e0                                      add r7, pc, r7
0038d918  04 00 a0 e1                                      mov r0, r4
0038d91c  07 10 a0 e1                                      mov r1, r7
0038d920  08 20 a0 e1                                      mov r2, r8
0038d924  ea 32 fe eb                                      bl #0x31a4d4
0038d928  04 00 a0 e1                                      mov r0, r4
0038d92c  07 10 a0 e1                                      mov r1, r7
0038d930  08 20 a0 e1                                      mov r2, r8
0038d934  6e 30 fe eb                                      bl #0x319af4
0038d938  cc 27 9f e5                                      ldr r2, [pc, #0x7cc]
0038d93c  cc 77 9f e5                                      ldr r7, [pc, #0x7cc]
0038d940  06 30 a0 e1                                      mov r3, r6
0038d944  02 80 95 e7                                      ldr r8, [r5, r2]
0038d948  07 70 8f e0                                      add r7, pc, r7
0038d94c  04 00 a0 e1                                      mov r0, r4
0038d950  07 10 a0 e1                                      mov r1, r7
0038d954  08 20 a0 e1                                      mov r2, r8
0038d958  dd 32 fe eb                                      bl #0x31a4d4
0038d95c  04 00 a0 e1                                      mov r0, r4
0038d960  07 10 a0 e1                                      mov r1, r7
0038d964  08 20 a0 e1                                      mov r2, r8
0038d968  61 30 fe eb                                      bl #0x319af4
0038d96c  a0 27 9f e5                                      ldr r2, [pc, #0x7a0]
0038d970  a0 77 9f e5                                      ldr r7, [pc, #0x7a0]
0038d974  06 30 a0 e1                                      mov r3, r6
0038d978  02 80 95 e7                                      ldr r8, [r5, r2]
0038d97c  07 70 8f e0                                      add r7, pc, r7
0038d980  04 00 a0 e1                                      mov r0, r4
0038d984  07 10 a0 e1                                      mov r1, r7
0038d988  08 20 a0 e1                                      mov r2, r8
0038d98c  d0 32 fe eb                                      bl #0x31a4d4
0038d990  04 00 a0 e1                                      mov r0, r4
0038d994  07 10 a0 e1                                      mov r1, r7
0038d998  08 20 a0 e1                                      mov r2, r8
0038d99c  54 30 fe eb                                      bl #0x319af4
0038d9a0  74 27 9f e5                                      ldr r2, [pc, #0x774]
0038d9a4  74 77 9f e5                                      ldr r7, [pc, #0x774]
0038d9a8  06 30 a0 e1                                      mov r3, r6
0038d9ac  02 80 95 e7                                      ldr r8, [r5, r2]
0038d9b0  07 70 8f e0                                      add r7, pc, r7
0038d9b4  04 00 a0 e1                                      mov r0, r4
0038d9b8  07 10 a0 e1                                      mov r1, r7
0038d9bc  08 20 a0 e1                                      mov r2, r8
0038d9c0  c3 32 fe eb                                      bl #0x31a4d4
0038d9c4  04 00 a0 e1                                      mov r0, r4
0038d9c8  07 10 a0 e1                                      mov r1, r7
0038d9cc  08 20 a0 e1                                      mov r2, r8
0038d9d0  47 30 fe eb                                      bl #0x319af4
0038d9d4  48 27 9f e5                                      ldr r2, [pc, #0x748]
0038d9d8  48 77 9f e5                                      ldr r7, [pc, #0x748]
0038d9dc  06 30 a0 e1                                      mov r3, r6
0038d9e0  02 80 95 e7                                      ldr r8, [r5, r2]
0038d9e4  07 70 8f e0                                      add r7, pc, r7
0038d9e8  04 00 a0 e1                                      mov r0, r4
0038d9ec  07 10 a0 e1                                      mov r1, r7
0038d9f0  08 20 a0 e1                                      mov r2, r8
0038d9f4  b6 32 fe eb                                      bl #0x31a4d4
0038d9f8  04 00 a0 e1                                      mov r0, r4
0038d9fc  07 10 a0 e1                                      mov r1, r7
0038da00  08 20 a0 e1                                      mov r2, r8
0038da04  3a 30 fe eb                                      bl #0x319af4
0038da08  1c 27 9f e5                                      ldr r2, [pc, #0x71c]
0038da0c  1c 77 9f e5                                      ldr r7, [pc, #0x71c]
0038da10  06 30 a0 e1                                      mov r3, r6
0038da14  02 80 95 e7                                      ldr r8, [r5, r2]
0038da18  07 70 8f e0                                      add r7, pc, r7
0038da1c  04 00 a0 e1                                      mov r0, r4
0038da20  07 10 a0 e1                                      mov r1, r7
0038da24  08 20 a0 e1                                      mov r2, r8
0038da28  a9 32 fe eb                                      bl #0x31a4d4
0038da2c  04 00 a0 e1                                      mov r0, r4
0038da30  07 10 a0 e1                                      mov r1, r7
0038da34  08 20 a0 e1                                      mov r2, r8
0038da38  2d 30 fe eb                                      bl #0x319af4
0038da3c  f0 26 9f e5                                      ldr r2, [pc, #0x6f0]
0038da40  f0 76 9f e5                                      ldr r7, [pc, #0x6f0]
0038da44  06 30 a0 e1                                      mov r3, r6
0038da48  02 80 95 e7                                      ldr r8, [r5, r2]
0038da4c  07 70 8f e0                                      add r7, pc, r7
0038da50  04 00 a0 e1                                      mov r0, r4
0038da54  07 10 a0 e1                                      mov r1, r7
0038da58  08 20 a0 e1                                      mov r2, r8
0038da5c  9c 32 fe eb                                      bl #0x31a4d4
0038da60  04 00 a0 e1                                      mov r0, r4
0038da64  07 10 a0 e1                                      mov r1, r7
0038da68  08 20 a0 e1                                      mov r2, r8
0038da6c  20 30 fe eb                                      bl #0x319af4
0038da70  c4 36 9f e5                                      ldr r3, [pc, #0x6c4]
0038da74  c4 16 9f e5                                      ldr r1, [pc, #0x6c4]
0038da78  04 00 a0 e1                                      mov r0, r4
0038da7c  03 20 95 e7                                      ldr r2, [r5, r3]
0038da80  01 10 8f e0                                      add r1, pc, r1
0038da84  00 30 a0 e3                                      mov r3, #0
0038da88  91 32 fe eb                                      bl #0x31a4d4
0038da8c  b0 26 9f e5                                      ldr r2, [pc, #0x6b0]
0038da90  b0 76 9f e5                                      ldr r7, [pc, #0x6b0]
0038da94  06 30 a0 e1                                      mov r3, r6
0038da98  02 80 95 e7                                      ldr r8, [r5, r2]
0038da9c  07 70 8f e0                                      add r7, pc, r7
0038daa0  04 00 a0 e1                                      mov r0, r4
0038daa4  07 10 a0 e1                                      mov r1, r7
0038daa8  08 20 a0 e1                                      mov r2, r8
0038daac  88 32 fe eb                                      bl #0x31a4d4
0038dab0  04 00 a0 e1                                      mov r0, r4
0038dab4  07 10 a0 e1                                      mov r1, r7
0038dab8  08 20 a0 e1                                      mov r2, r8
0038dabc  0c 30 fe eb                                      bl #0x319af4
0038dac0  84 26 9f e5                                      ldr r2, [pc, #0x684]
0038dac4  84 76 9f e5                                      ldr r7, [pc, #0x684]
0038dac8  06 30 a0 e1                                      mov r3, r6
0038dacc  02 80 95 e7                                      ldr r8, [r5, r2]
0038dad0  07 70 8f e0                                      add r7, pc, r7
0038dad4  04 00 a0 e1                                      mov r0, r4
0038dad8  07 10 a0 e1                                      mov r1, r7
0038dadc  08 20 a0 e1                                      mov r2, r8
0038dae0  7b 32 fe eb                                      bl #0x31a4d4
0038dae4  04 00 a0 e1                                      mov r0, r4
0038dae8  07 10 a0 e1                                      mov r1, r7
0038daec  08 20 a0 e1                                      mov r2, r8
0038daf0  ff 2f fe eb                                      bl #0x319af4
0038daf4  58 26 9f e5                                      ldr r2, [pc, #0x658]
0038daf8  58 76 9f e5                                      ldr r7, [pc, #0x658]
0038dafc  06 30 a0 e1                                      mov r3, r6
0038db00  02 80 95 e7                                      ldr r8, [r5, r2]
0038db04  07 70 8f e0                                      add r7, pc, r7
0038db08  04 00 a0 e1                                      mov r0, r4
0038db0c  07 10 a0 e1                                      mov r1, r7
0038db10  08 20 a0 e1                                      mov r2, r8
0038db14  6e 32 fe eb                                      bl #0x31a4d4
0038db18  04 00 a0 e1                                      mov r0, r4
0038db1c  07 10 a0 e1                                      mov r1, r7
0038db20  08 20 a0 e1                                      mov r2, r8
0038db24  f2 2f fe eb                                      bl #0x319af4
0038db28  2c 26 9f e5                                      ldr r2, [pc, #0x62c]
0038db2c  2c 76 9f e5                                      ldr r7, [pc, #0x62c]
0038db30  06 30 a0 e1                                      mov r3, r6
0038db34  02 80 95 e7                                      ldr r8, [r5, r2]
0038db38  07 70 8f e0                                      add r7, pc, r7
0038db3c  04 00 a0 e1                                      mov r0, r4
0038db40  07 10 a0 e1                                      mov r1, r7
0038db44  08 20 a0 e1                                      mov r2, r8
0038db48  61 32 fe eb                                      bl #0x31a4d4
0038db4c  04 00 a0 e1                                      mov r0, r4
0038db50  07 10 a0 e1                                      mov r1, r7
0038db54  08 20 a0 e1                                      mov r2, r8
0038db58  e5 2f fe eb                                      bl #0x319af4
0038db5c  00 26 9f e5                                      ldr r2, [pc, #0x600]
0038db60  00 76 9f e5                                      ldr r7, [pc, #0x600]
0038db64  06 30 a0 e1                                      mov r3, r6
0038db68  02 80 95 e7                                      ldr r8, [r5, r2]
0038db6c  07 70 8f e0                                      add r7, pc, r7
0038db70  04 00 a0 e1                                      mov r0, r4
0038db74  07 10 a0 e1                                      mov r1, r7
0038db78  08 20 a0 e1                                      mov r2, r8
0038db7c  54 32 fe eb                                      bl #0x31a4d4
0038db80  04 00 a0 e1                                      mov r0, r4
0038db84  07 10 a0 e1                                      mov r1, r7
0038db88  08 20 a0 e1                                      mov r2, r8
0038db8c  d8 2f fe eb                                      bl #0x319af4
0038db90  d4 25 9f e5                                      ldr r2, [pc, #0x5d4]
0038db94  d4 75 9f e5                                      ldr r7, [pc, #0x5d4]
0038db98  06 30 a0 e1                                      mov r3, r6
0038db9c  02 80 95 e7                                      ldr r8, [r5, r2]
0038dba0  07 70 8f e0                                      add r7, pc, r7
0038dba4  04 00 a0 e1                                      mov r0, r4
0038dba8  07 10 a0 e1                                      mov r1, r7
0038dbac  08 20 a0 e1                                      mov r2, r8
0038dbb0  47 32 fe eb                                      bl #0x31a4d4
0038dbb4  04 00 a0 e1                                      mov r0, r4
0038dbb8  07 10 a0 e1                                      mov r1, r7
0038dbbc  08 20 a0 e1                                      mov r2, r8
0038dbc0  cb 2f fe eb                                      bl #0x319af4
0038dbc4  a8 25 9f e5                                      ldr r2, [pc, #0x5a8]
0038dbc8  a8 75 9f e5                                      ldr r7, [pc, #0x5a8]
0038dbcc  06 30 a0 e1                                      mov r3, r6
0038dbd0  02 80 95 e7                                      ldr r8, [r5, r2]
0038dbd4  07 70 8f e0                                      add r7, pc, r7
0038dbd8  04 00 a0 e1                                      mov r0, r4
0038dbdc  07 10 a0 e1                                      mov r1, r7
0038dbe0  08 20 a0 e1                                      mov r2, r8
0038dbe4  3a 32 fe eb                                      bl #0x31a4d4
0038dbe8  04 00 a0 e1                                      mov r0, r4
0038dbec  07 10 a0 e1                                      mov r1, r7
0038dbf0  08 20 a0 e1                                      mov r2, r8
0038dbf4  be 2f fe eb                                      bl #0x319af4
0038dbf8  7c 25 9f e5                                      ldr r2, [pc, #0x57c]
0038dbfc  7c 75 9f e5                                      ldr r7, [pc, #0x57c]
0038dc00  06 30 a0 e1                                      mov r3, r6
0038dc04  02 80 95 e7                                      ldr r8, [r5, r2]
0038dc08  07 70 8f e0                                      add r7, pc, r7
0038dc0c  04 00 a0 e1                                      mov r0, r4
0038dc10  07 10 a0 e1                                      mov r1, r7
0038dc14  08 20 a0 e1                                      mov r2, r8
0038dc18  2d 32 fe eb                                      bl #0x31a4d4
0038dc1c  04 00 a0 e1                                      mov r0, r4
0038dc20  07 10 a0 e1                                      mov r1, r7
0038dc24  08 20 a0 e1                                      mov r2, r8
0038dc28  b1 2f fe eb                                      bl #0x319af4
0038dc2c  50 25 9f e5                                      ldr r2, [pc, #0x550]
0038dc30  50 75 9f e5                                      ldr r7, [pc, #0x550]
0038dc34  06 30 a0 e1                                      mov r3, r6
0038dc38  02 80 95 e7                                      ldr r8, [r5, r2]
0038dc3c  07 70 8f e0                                      add r7, pc, r7
0038dc40  04 00 a0 e1                                      mov r0, r4
0038dc44  07 10 a0 e1                                      mov r1, r7
0038dc48  08 20 a0 e1                                      mov r2, r8
0038dc4c  20 32 fe eb                                      bl #0x31a4d4
0038dc50  04 00 a0 e1                                      mov r0, r4
0038dc54  07 10 a0 e1                                      mov r1, r7
0038dc58  08 20 a0 e1                                      mov r2, r8
0038dc5c  a4 2f fe eb                                      bl #0x319af4
0038dc60  24 25 9f e5                                      ldr r2, [pc, #0x524]
0038dc64  24 75 9f e5                                      ldr r7, [pc, #0x524]
0038dc68  06 30 a0 e1                                      mov r3, r6
0038dc6c  02 80 95 e7                                      ldr r8, [r5, r2]
0038dc70  07 70 8f e0                                      add r7, pc, r7
0038dc74  04 00 a0 e1                                      mov r0, r4
0038dc78  07 10 a0 e1                                      mov r1, r7
0038dc7c  08 20 a0 e1                                      mov r2, r8
0038dc80  13 32 fe eb                                      bl #0x31a4d4
0038dc84  04 00 a0 e1                                      mov r0, r4
0038dc88  07 10 a0 e1                                      mov r1, r7
0038dc8c  08 20 a0 e1                                      mov r2, r8
0038dc90  97 2f fe eb                                      bl #0x319af4
0038dc94  f8 24 9f e5                                      ldr r2, [pc, #0x4f8]
0038dc98  f8 74 9f e5                                      ldr r7, [pc, #0x4f8]
0038dc9c  06 30 a0 e1                                      mov r3, r6
0038dca0  02 80 95 e7                                      ldr r8, [r5, r2]
0038dca4  07 70 8f e0                                      add r7, pc, r7
0038dca8  04 00 a0 e1                                      mov r0, r4
0038dcac  07 10 a0 e1                                      mov r1, r7
0038dcb0  08 20 a0 e1                                      mov r2, r8
0038dcb4  06 32 fe eb                                      bl #0x31a4d4
0038dcb8  04 00 a0 e1                                      mov r0, r4
0038dcbc  07 10 a0 e1                                      mov r1, r7
0038dcc0  08 20 a0 e1                                      mov r2, r8
0038dcc4  8a 2f fe eb                                      bl #0x319af4
0038dcc8  cc 24 9f e5                                      ldr r2, [pc, #0x4cc]
0038dccc  cc 74 9f e5                                      ldr r7, [pc, #0x4cc]
0038dcd0  06 30 a0 e1                                      mov r3, r6
0038dcd4  02 80 95 e7                                      ldr r8, [r5, r2]
0038dcd8  07 70 8f e0                                      add r7, pc, r7
0038dcdc  04 00 a0 e1                                      mov r0, r4
0038dce0  07 10 a0 e1                                      mov r1, r7
0038dce4  08 20 a0 e1                                      mov r2, r8
0038dce8  f9 31 fe eb                                      bl #0x31a4d4
0038dcec  04 00 a0 e1                                      mov r0, r4
0038dcf0  07 10 a0 e1                                      mov r1, r7
0038dcf4  08 20 a0 e1                                      mov r2, r8
0038dcf8  7d 2f fe eb                                      bl #0x319af4
0038dcfc  a0 24 9f e5                                      ldr r2, [pc, #0x4a0]
0038dd00  a0 74 9f e5                                      ldr r7, [pc, #0x4a0]
0038dd04  06 30 a0 e1                                      mov r3, r6
0038dd08  02 80 95 e7                                      ldr r8, [r5, r2]
0038dd0c  07 70 8f e0                                      add r7, pc, r7
0038dd10  04 00 a0 e1                                      mov r0, r4
0038dd14  07 10 a0 e1                                      mov r1, r7
0038dd18  08 20 a0 e1                                      mov r2, r8
0038dd1c  ec 31 fe eb                                      bl #0x31a4d4
0038dd20  04 00 a0 e1                                      mov r0, r4
0038dd24  07 10 a0 e1                                      mov r1, r7
0038dd28  08 20 a0 e1                                      mov r2, r8
0038dd2c  70 2f fe eb                                      bl #0x319af4
0038dd30  74 24 9f e5                                      ldr r2, [pc, #0x474]
0038dd34  74 74 9f e5                                      ldr r7, [pc, #0x474]
0038dd38  06 30 a0 e1                                      mov r3, r6
0038dd3c  02 80 95 e7                                      ldr r8, [r5, r2]
0038dd40  07 70 8f e0                                      add r7, pc, r7
0038dd44  04 00 a0 e1                                      mov r0, r4
0038dd48  07 10 a0 e1                                      mov r1, r7
0038dd4c  08 20 a0 e1                                      mov r2, r8
0038dd50  df 31 fe eb                                      bl #0x31a4d4
0038dd54  04 00 a0 e1                                      mov r0, r4
0038dd58  07 10 a0 e1                                      mov r1, r7
0038dd5c  08 20 a0 e1                                      mov r2, r8
0038dd60  63 2f fe eb                                      bl #0x319af4
0038dd64  48 24 9f e5                                      ldr r2, [pc, #0x448]
0038dd68  48 74 9f e5                                      ldr r7, [pc, #0x448]
0038dd6c  06 30 a0 e1                                      mov r3, r6
0038dd70  02 80 95 e7                                      ldr r8, [r5, r2]
0038dd74  07 70 8f e0                                      add r7, pc, r7
0038dd78  04 00 a0 e1                                      mov r0, r4
0038dd7c  07 10 a0 e1                                      mov r1, r7
0038dd80  08 20 a0 e1                                      mov r2, r8
0038dd84  d2 31 fe eb                                      bl #0x31a4d4
0038dd88  04 00 a0 e1                                      mov r0, r4
0038dd8c  07 10 a0 e1                                      mov r1, r7
0038dd90  08 20 a0 e1                                      mov r2, r8
0038dd94  56 2f fe eb                                      bl #0x319af4
0038dd98  1c 24 9f e5                                      ldr r2, [pc, #0x41c]
0038dd9c  1c 74 9f e5                                      ldr r7, [pc, #0x41c]
0038dda0  06 30 a0 e1                                      mov r3, r6
0038dda4  02 80 95 e7                                      ldr r8, [r5, r2]
0038dda8  07 70 8f e0                                      add r7, pc, r7
0038ddac  04 00 a0 e1                                      mov r0, r4
0038ddb0  07 10 a0 e1                                      mov r1, r7
0038ddb4  08 20 a0 e1                                      mov r2, r8
0038ddb8  c5 31 fe eb                                      bl #0x31a4d4
0038ddbc  04 00 a0 e1                                      mov r0, r4
0038ddc0  07 10 a0 e1                                      mov r1, r7
0038ddc4  08 20 a0 e1                                      mov r2, r8
0038ddc8  49 2f fe eb                                      bl #0x319af4
0038ddcc  f0 23 9f e5                                      ldr r2, [pc, #0x3f0]
0038ddd0  f0 73 9f e5                                      ldr r7, [pc, #0x3f0]
0038ddd4  06 30 a0 e1                                      mov r3, r6
0038ddd8  02 80 95 e7                                      ldr r8, [r5, r2]
0038dddc  07 70 8f e0                                      add r7, pc, r7
0038dde0  04 00 a0 e1                                      mov r0, r4
0038dde4  07 10 a0 e1                                      mov r1, r7
0038dde8  08 20 a0 e1                                      mov r2, r8
0038ddec  b8 31 fe eb                                      bl #0x31a4d4
0038ddf0  04 00 a0 e1                                      mov r0, r4
0038ddf4  07 10 a0 e1                                      mov r1, r7
0038ddf8  08 20 a0 e1                                      mov r2, r8
0038ddfc  3c 2f fe eb                                      bl #0x319af4
0038de00  c4 23 9f e5                                      ldr r2, [pc, #0x3c4]
0038de04  c4 73 9f e5                                      ldr r7, [pc, #0x3c4]
0038de08  06 30 a0 e1                                      mov r3, r6
0038de0c  02 80 95 e7                                      ldr r8, [r5, r2]
0038de10  07 70 8f e0                                      add r7, pc, r7
0038de14  04 00 a0 e1                                      mov r0, r4
0038de18  07 10 a0 e1                                      mov r1, r7
0038de1c  08 20 a0 e1                                      mov r2, r8
0038de20  ab 31 fe eb                                      bl #0x31a4d4
0038de24  04 00 a0 e1                                      mov r0, r4
0038de28  07 10 a0 e1                                      mov r1, r7
0038de2c  08 20 a0 e1                                      mov r2, r8
0038de30  2f 2f fe eb                                      bl #0x319af4
0038de34  98 23 9f e5                                      ldr r2, [pc, #0x398]
0038de38  98 73 9f e5                                      ldr r7, [pc, #0x398]
0038de3c  06 30 a0 e1                                      mov r3, r6
0038de40  02 80 95 e7                                      ldr r8, [r5, r2]
0038de44  07 70 8f e0                                      add r7, pc, r7
0038de48  04 00 a0 e1                                      mov r0, r4
0038de4c  07 10 a0 e1                                      mov r1, r7
0038de50  08 20 a0 e1                                      mov r2, r8
0038de54  9e 31 fe eb                                      bl #0x31a4d4
0038de58  04 00 a0 e1                                      mov r0, r4
0038de5c  07 10 a0 e1                                      mov r1, r7
0038de60  08 20 a0 e1                                      mov r2, r8
0038de64  22 2f fe eb                                      bl #0x319af4
0038de68  6c 23 9f e5                                      ldr r2, [pc, #0x36c]
0038de6c  6c 73 9f e5                                      ldr r7, [pc, #0x36c]
0038de70  06 30 a0 e1                                      mov r3, r6
0038de74  02 80 95 e7                                      ldr r8, [r5, r2]
0038de78  07 70 8f e0                                      add r7, pc, r7
0038de7c  04 00 a0 e1                                      mov r0, r4
0038de80  07 10 a0 e1                                      mov r1, r7
0038de84  08 20 a0 e1                                      mov r2, r8
0038de88  91 31 fe eb                                      bl #0x31a4d4
0038de8c  04 00 a0 e1                                      mov r0, r4
0038de90  07 10 a0 e1                                      mov r1, r7
0038de94  08 20 a0 e1                                      mov r2, r8
0038de98  15 2f fe eb                                      bl #0x319af4
0038de9c  40 23 9f e5                                      ldr r2, [pc, #0x340]
0038dea0  40 73 9f e5                                      ldr r7, [pc, #0x340]
0038dea4  06 30 a0 e1                                      mov r3, r6
0038dea8  02 80 95 e7                                      ldr r8, [r5, r2]
0038deac  07 70 8f e0                                      add r7, pc, r7
0038deb0  04 00 a0 e1                                      mov r0, r4
0038deb4  07 10 a0 e1                                      mov r1, r7
0038deb8  08 20 a0 e1                                      mov r2, r8
0038debc  84 31 fe eb                                      bl #0x31a4d4
0038dec0  04 00 a0 e1                                      mov r0, r4
0038dec4  07 10 a0 e1                                      mov r1, r7
0038dec8  08 20 a0 e1                                      mov r2, r8
0038decc  08 2f fe eb                                      bl #0x319af4
0038ded0  14 23 9f e5                                      ldr r2, [pc, #0x314]
0038ded4  14 73 9f e5                                      ldr r7, [pc, #0x314]
0038ded8  06 30 a0 e1                                      mov r3, r6
0038dedc  02 80 95 e7                                      ldr r8, [r5, r2]
0038dee0  07 70 8f e0                                      add r7, pc, r7
0038dee4  04 00 a0 e1                                      mov r0, r4
0038dee8  07 10 a0 e1                                      mov r1, r7
0038deec  08 20 a0 e1                                      mov r2, r8
0038def0  77 31 fe eb                                      bl #0x31a4d4
0038def4  04 00 a0 e1                                      mov r0, r4
0038def8  07 10 a0 e1                                      mov r1, r7
0038defc  08 20 a0 e1                                      mov r2, r8
0038df00  fb 2e fe eb                                      bl #0x319af4
0038df04  e8 32 9f e5                                      ldr r3, [pc, #0x2e8]
0038df08  e8 12 9f e5                                      ldr r1, [pc, #0x2e8]
0038df0c  04 00 a0 e1                                      mov r0, r4
0038df10  03 20 95 e7                                      ldr r2, [r5, r3]
0038df14  01 10 8f e0                                      add r1, pc, r1
0038df18  00 30 a0 e3                                      mov r3, #0
0038df1c  6c 31 fe eb                                      bl #0x31a4d4
0038df20  d4 32 9f e5                                      ldr r3, [pc, #0x2d4]
0038df24  d4 12 9f e5                                      ldr r1, [pc, #0x2d4]
0038df28  04 00 a0 e1                                      mov r0, r4
0038df2c  03 20 95 e7                                      ldr r2, [r5, r3]
0038df30  01 10 8f e0                                      add r1, pc, r1
0038df34  06 30 a0 e1                                      mov r3, r6
0038df38  65 31 fe eb                                      bl #0x31a4d4
0038df3c  c0 22 9f e5                                      ldr r2, [pc, #0x2c0]
0038df40  c0 72 9f e5                                      ldr r7, [pc, #0x2c0]
0038df44  06 30 a0 e1                                      mov r3, r6
0038df48  02 80 95 e7                                      ldr r8, [r5, r2]
0038df4c  07 70 8f e0                                      add r7, pc, r7
0038df50  04 00 a0 e1                                      mov r0, r4
0038df54  07 10 a0 e1                                      mov r1, r7
0038df58  08 20 a0 e1                                      mov r2, r8
0038df5c  5c 31 fe eb                                      bl #0x31a4d4
0038df60  04 00 a0 e1                                      mov r0, r4
0038df64  07 10 a0 e1                                      mov r1, r7
0038df68  08 20 a0 e1                                      mov r2, r8
0038df6c  e0 2e fe eb                                      bl #0x319af4
0038df70  94 32 9f e5                                      ldr r3, [pc, #0x294]
0038df74  94 12 9f e5                                      ldr r1, [pc, #0x294]
0038df78  04 00 a0 e1                                      mov r0, r4
0038df7c  03 20 95 e7                                      ldr r2, [r5, r3]
0038df80  01 10 8f e0                                      add r1, pc, r1
0038df84  00 30 a0 e3                                      mov r3, #0
0038df88  51 31 fe eb                                      bl #0x31a4d4
0038df8c  80 22 9f e5                                      ldr r2, [pc, #0x280]
0038df90  80 72 9f e5                                      ldr r7, [pc, #0x280]
0038df94  06 30 a0 e1                                      mov r3, r6
0038df98  02 80 95 e7                                      ldr r8, [r5, r2]
0038df9c  07 70 8f e0                                      add r7, pc, r7
0038dfa0  04 00 a0 e1                                      mov r0, r4
0038dfa4  07 10 a0 e1                                      mov r1, r7
0038dfa8  08 20 a0 e1                                      mov r2, r8
0038dfac  48 31 fe eb                                      bl #0x31a4d4
0038dfb0  04 00 a0 e1                                      mov r0, r4
0038dfb4  07 10 a0 e1                                      mov r1, r7
0038dfb8  08 20 a0 e1                                      mov r2, r8
0038dfbc  cc 2e fe eb                                      bl #0x319af4
0038dfc0  54 22 9f e5                                      ldr r2, [pc, #0x254]
0038dfc4  54 72 9f e5                                      ldr r7, [pc, #0x254]
0038dfc8  06 30 a0 e1                                      mov r3, r6
0038dfcc  02 80 95 e7                                      ldr r8, [r5, r2]
0038dfd0  07 70 8f e0                                      add r7, pc, r7
0038dfd4  04 00 a0 e1                                      mov r0, r4
0038dfd8  07 10 a0 e1                                      mov r1, r7
0038dfdc  08 20 a0 e1                                      mov r2, r8
0038dfe0  3b 31 fe eb                                      bl #0x31a4d4
0038dfe4  04 00 a0 e1                                      mov r0, r4
0038dfe8  07 10 a0 e1                                      mov r1, r7
0038dfec  08 20 a0 e1                                      mov r2, r8
0038dff0  bf 2e fe eb                                      bl #0x319af4
0038dff4  28 22 9f e5                                      ldr r2, [pc, #0x228]
0038dff8  28 72 9f e5                                      ldr r7, [pc, #0x228]
0038dffc  06 30 a0 e1                                      mov r3, r6
0038e000  02 80 95 e7                                      ldr r8, [r5, r2]
0038e004  07 70 8f e0                                      add r7, pc, r7
0038e008  04 00 a0 e1                                      mov r0, r4
0038e00c  07 10 a0 e1                                      mov r1, r7
0038e010  08 20 a0 e1                                      mov r2, r8
0038e014  2e 31 fe eb                                      bl #0x31a4d4
0038e018  04 00 a0 e1                                      mov r0, r4
0038e01c  07 10 a0 e1                                      mov r1, r7
0038e020  08 20 a0 e1                                      mov r2, r8
0038e024  b2 2e fe eb                                      bl #0x319af4
0038e028  fc 21 9f e5                                      ldr r2, [pc, #0x1fc]
0038e02c  fc 71 9f e5                                      ldr r7, [pc, #0x1fc]
0038e030  06 30 a0 e1                                      mov r3, r6
0038e034  02 80 95 e7                                      ldr r8, [r5, r2]
0038e038  07 70 8f e0                                      add r7, pc, r7
0038e03c  04 00 a0 e1                                      mov r0, r4
0038e040  07 10 a0 e1                                      mov r1, r7
0038e044  08 20 a0 e1                                      mov r2, r8
0038e048  21 31 fe eb                                      bl #0x31a4d4
0038e04c  04 00 a0 e1                                      mov r0, r4
0038e050  07 10 a0 e1                                      mov r1, r7
0038e054  08 20 a0 e1                                      mov r2, r8
0038e058  a5 2e fe eb                                      bl #0x319af4
0038e05c  d0 21 9f e5                                      ldr r2, [pc, #0x1d0]
0038e060  d0 71 9f e5                                      ldr r7, [pc, #0x1d0]
0038e064  06 30 a0 e1                                      mov r3, r6
0038e068  02 80 95 e7                                      ldr r8, [r5, r2]
0038e06c  07 70 8f e0                                      add r7, pc, r7
0038e070  04 00 a0 e1                                      mov r0, r4
0038e074  07 10 a0 e1                                      mov r1, r7
0038e078  08 20 a0 e1                                      mov r2, r8
0038e07c  14 31 fe eb                                      bl #0x31a4d4
0038e080  04 00 a0 e1                                      mov r0, r4
0038e084  07 10 a0 e1                                      mov r1, r7
0038e088  08 20 a0 e1                                      mov r2, r8
0038e08c  98 2e fe eb                                      bl #0x319af4
0038e090  a4 21 9f e5                                      ldr r2, [pc, #0x1a4]
0038e094  a4 71 9f e5                                      ldr r7, [pc, #0x1a4]
0038e098  04 00 a0 e1                                      mov r0, r4
0038e09c  02 50 95 e7                                      ldr r5, [r5, r2]
0038e0a0  07 70 8f e0                                      add r7, pc, r7
0038e0a4  07 10 a0 e1                                      mov r1, r7
0038e0a8  05 20 a0 e1                                      mov r2, r5
0038e0ac  06 30 a0 e1                                      mov r3, r6
0038e0b0  07 31 fe eb                                      bl #0x31a4d4
0038e0b4  04 00 a0 e1                                      mov r0, r4
0038e0b8  07 10 a0 e1                                      mov r1, r7
0038e0bc  05 20 a0 e1                                      mov r2, r5
0038e0c0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0038e0c4  8a 2e fe ea                                      b #0x319af4
; mapping-symbol data/literal pool
0038e0c8  90 72 60 00 a8 11 00 00 10 4d 53 00 00 19 00 00  .byte 0x90, 0x72, 0x60, 0x00, 0xa8, 0x11, 0x00, 0x00, 0x10, 0x4d, 0x53, 0x00, 0x00, 0x19, 0x00, 0x00
0038e0d8  00 4d 53 00 b8 0f 00 00 f0 4c 53 00 98 16 00 00  .byte 0x00, 0x4d, 0x53, 0x00, 0xb8, 0x0f, 0x00, 0x00, 0xf0, 0x4c, 0x53, 0x00, 0x98, 0x16, 0x00, 0x00
0038e0e8  c4 4c 53 00 10 11 00 00 98 4c 53 00 84 23 00 00  .byte 0xc4, 0x4c, 0x53, 0x00, 0x10, 0x11, 0x00, 0x00, 0x98, 0x4c, 0x53, 0x00, 0x84, 0x23, 0x00, 0x00
0038e0f8  84 4c 53 00 24 30 00 00 78 4c 53 00 c8 4a 00 00  .byte 0x84, 0x4c, 0x53, 0x00, 0x24, 0x30, 0x00, 0x00, 0x78, 0x4c, 0x53, 0x00, 0xc8, 0x4a, 0x00, 0x00
0038e108  4c 4c 53 00 ac 2f 00 00 28 4c 53 00 34 3a 00 00  .byte 0x4c, 0x4c, 0x53, 0x00, 0xac, 0x2f, 0x00, 0x00, 0x28, 0x4c, 0x53, 0x00, 0x34, 0x3a, 0x00, 0x00
0038e118  04 4c 53 00 5c 19 00 00 d8 4b 53 00 ec 34 00 00  .byte 0x04, 0x4c, 0x53, 0x00, 0x5c, 0x19, 0x00, 0x00, 0xd8, 0x4b, 0x53, 0x00, 0xec, 0x34, 0x00, 0x00
0038e128  ac 4b 53 00 78 26 00 00 88 4b 53 00 b4 15 00 00  .byte 0xac, 0x4b, 0x53, 0x00, 0x78, 0x26, 0x00, 0x00, 0x88, 0x4b, 0x53, 0x00, 0xb4, 0x15, 0x00, 0x00
0038e138  64 4b 53 00 30 2a 00 00 40 4b 53 00 28 2a 00 00  .byte 0x64, 0x4b, 0x53, 0x00, 0x30, 0x2a, 0x00, 0x00, 0x40, 0x4b, 0x53, 0x00, 0x28, 0x2a, 0x00, 0x00
0038e148  3c 4b 53 00 94 41 00 00 18 4b 53 00 e8 0f 00 00  .byte 0x3c, 0x4b, 0x53, 0x00, 0x94, 0x41, 0x00, 0x00, 0x18, 0x4b, 0x53, 0x00, 0xe8, 0x0f, 0x00, 0x00
0038e158  f4 4a 53 00 88 2d 00 00 d0 4a 53 00 2c 36 00 00  .byte 0xf4, 0x4a, 0x53, 0x00, 0x88, 0x2d, 0x00, 0x00, 0xd0, 0x4a, 0x53, 0x00, 0x2c, 0x36, 0x00, 0x00
0038e168  ac 4a 53 00 ac 10 00 00 88 4a 53 00 64 3f 00 00  .byte 0xac, 0x4a, 0x53, 0x00, 0xac, 0x10, 0x00, 0x00, 0x88, 0x4a, 0x53, 0x00, 0x64, 0x3f, 0x00, 0x00
0038e178  64 4a 53 00 4c 4b 00 00 40 4a 53 00 b8 4a 00 00  .byte 0x64, 0x4a, 0x53, 0x00, 0x4c, 0x4b, 0x00, 0x00, 0x40, 0x4a, 0x53, 0x00, 0xb8, 0x4a, 0x00, 0x00
0038e188  14 4a 53 00 2c 40 00 00 00 4a 53 00 00 40 00 00  .byte 0x14, 0x4a, 0x53, 0x00, 0x2c, 0x40, 0x00, 0x00, 0x00, 0x4a, 0x53, 0x00, 0x00, 0x40, 0x00, 0x00
0038e198  ec 49 53 00 e8 47 00 00 d0 49 53 00 4c 1b 00 00  .byte 0xec, 0x49, 0x53, 0x00, 0xe8, 0x47, 0x00, 0x00, 0xd0, 0x49, 0x53, 0x00, 0x4c, 0x1b, 0x00, 0x00
0038e1a8  b4 49 53 00 bc 06 00 00 98 49 53 00 fc 1b 00 00  .byte 0xb4, 0x49, 0x53, 0x00, 0xbc, 0x06, 0x00, 0x00, 0x98, 0x49, 0x53, 0x00, 0xfc, 0x1b, 0x00, 0x00
0038e1b8  7c 49 53 00 60 46 00 00 60 49 53 00 e0 42 00 00  .byte 0x7c, 0x49, 0x53, 0x00, 0x60, 0x46, 0x00, 0x00, 0x60, 0x49, 0x53, 0x00, 0xe0, 0x42, 0x00, 0x00
0038e1c8  44 49 53 00 98 20 00 00 28 49 53 00 04 25 00 00  .byte 0x44, 0x49, 0x53, 0x00, 0x98, 0x20, 0x00, 0x00, 0x28, 0x49, 0x53, 0x00, 0x04, 0x25, 0x00, 0x00
0038e1d8  0c 49 53 00 e0 35 00 00 e8 48 53 00 f0 26 00 00  .byte 0x0c, 0x49, 0x53, 0x00, 0xe0, 0x35, 0x00, 0x00, 0xe8, 0x48, 0x53, 0x00, 0xf0, 0x26, 0x00, 0x00
0038e1e8  bc 48 53 00 70 22 00 00 90 48 53 00 c0 40 00 00  .byte 0xbc, 0x48, 0x53, 0x00, 0x70, 0x22, 0x00, 0x00, 0x90, 0x48, 0x53, 0x00, 0xc0, 0x40, 0x00, 0x00
0038e1f8  64 48 53 00 b4 0d 00 00 58 48 53 00 b8 42 00 00  .byte 0x64, 0x48, 0x53, 0x00, 0xb4, 0x0d, 0x00, 0x00, 0x58, 0x48, 0x53, 0x00, 0xb8, 0x42, 0x00, 0x00
0038e208  54 48 53 00 00 20 00 00 18 48 53 00 ac 44 00 00  .byte 0x54, 0x48, 0x53, 0x00, 0x00, 0x20, 0x00, 0x00, 0x18, 0x48, 0x53, 0x00, 0xac, 0x44, 0x00, 0x00
0038e218  0c 48 53 00 38 11 00 00 f0 47 53 00 b8 0e 00 00  .byte 0x0c, 0x48, 0x53, 0x00, 0x38, 0x11, 0x00, 0x00, 0xf0, 0x47, 0x53, 0x00, 0xb8, 0x0e, 0x00, 0x00
0038e228  cc 47 53 00 54 20 00 00 a0 47 53 00 b0 4b 00 00  .byte 0xcc, 0x47, 0x53, 0x00, 0x54, 0x20, 0x00, 0x00, 0xa0, 0x47, 0x53, 0x00, 0xb0, 0x4b, 0x00, 0x00
0038e238  84 47 53 00 60 4a 00 00 60 47 53 00              .byte 0x84, 0x47, 0x53, 0x00, 0x60, 0x4a, 0x00, 0x00, 0x60, 0x47, 0x53, 0x00

; FUNCTION 0x0038e700, declared_size=52, range_size=52, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject12_GetPositionERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_GetPosition(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038e700  70 40 2d e9                                      push {r4, r5, r6, lr}
0038e704  01 00 a0 e1                                      mov r0, r1
0038e708  02 40 a0 e1                                      mov r4, r2
0038e70c  01 50 a0 e1                                      mov r5, r1
0038e710  60 11 92 e5                                      ldr r1, [r2, #0x160]
0038e714  68 b9 ff eb                                      bl #0x37ccbc
0038e718  05 00 a0 e1                                      mov r0, r5
0038e71c  64 11 94 e5                                      ldr r1, [r4, #0x164]
0038e720  65 b9 ff eb                                      bl #0x37ccbc
0038e724  68 11 94 e5                                      ldr r1, [r4, #0x168]
0038e728  05 00 a0 e1                                      mov r0, r5
0038e72c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0038e730  61 b9 ff ea                                      b #0x37ccbc

; FUNCTION 0x0038e930, declared_size=64, range_size=64, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject18_GetTargetListSizeERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_GetTargetListSize(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038e930  10 40 2d e9                                      push {r4, lr}
0038e934  10 d0 4d e2                                      sub sp, sp, #0x10
0038e938  02 e0 a0 e1                                      mov lr, r2
0038e93c  0d c0 a0 e1                                      mov ip, sp
0038e940  c1 3f 82 e2                                      add r3, r2, #0x304
0038e944  01 40 a0 e1                                      mov r4, r1
0038e948  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0038e94c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0038e950  0d 10 a0 e1                                      mov r1, sp
0038e954  c5 0f 8e e2                                      add r0, lr, #0x314
0038e958  2c fb ff eb                                      bl #0x38d610
0038e95c  00 10 a0 e1                                      mov r1, r0
0038e960  04 00 a0 e1                                      mov r0, r4
0038e964  6e b8 ff eb                                      bl #0x37cb24
0038e968  10 d0 8d e2                                      add sp, sp, #0x10
0038e96c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0038e970, declared_size=28, range_size=28, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject18_IsTargetListEmptyERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_IsTargetListEmpty(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038e970  04 33 92 e5                                      ldr r3, [r2, #0x304]
0038e974  14 23 92 e5                                      ldr r2, [r2, #0x314]
0038e978  01 00 a0 e1                                      mov r0, r1
0038e97c  03 00 52 e1                                      cmp r2, r3
0038e980  00 10 a0 13                                      movne r1, #0
0038e984  01 10 a0 03                                      moveq r1, #1
0038e988  95 b7 ff ea                                      b #0x37c7e4

; FUNCTION 0x0038e98c, declared_size=52, range_size=52, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject8_HasPathERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_HasPath(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038e98c  00 32 b2 e5                                      ldr r3, [r2, #0x200]!
0038e990  01 00 a0 e1                                      mov r0, r1
0038e994  02 00 53 e1                                      cmp r3, r2
0038e998  00 10 a0 03                                      moveq r1, #0
0038e99c  06 00 00 0a                                      beq #0x38e9bc
0038e9a0  00 c0 a0 e3                                      mov ip, #0
0038e9a4  00 30 93 e5                                      ldr r3, [r3]
0038e9a8  01 c0 8c e2                                      add ip, ip, #1
0038e9ac  03 00 52 e1                                      cmp r2, r3
0038e9b0  fb ff ff 1a                                      bne #0x38e9a4
0038e9b4  00 10 5c e2                                      subs r1, ip, #0
0038e9b8  01 10 a0 13                                      movne r1, #1
0038e9bc  88 b7 ff ea                                      b #0x37c7e4

; FUNCTION 0x0038e9c0, declared_size=24, range_size=24, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject8_IsDecorERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_IsDecor(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038e9c0  f4 30 92 e5                                      ldr r3, [r2, #0xf4]
0038e9c4  01 00 a0 e1                                      mov r0, r1
0038e9c8  15 00 53 e3                                      cmp r3, #0x15
0038e9cc  00 10 a0 13                                      movne r1, #0
0038e9d0  01 10 a0 03                                      moveq r1, #1
0038e9d4  82 b7 ff ea                                      b #0x37c7e4

; FUNCTION 0x0038e9d8, declared_size=24, range_size=24, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject7_IsDoorERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_IsDoor(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038e9d8  f4 30 92 e5                                      ldr r3, [r2, #0xf4]
0038e9dc  01 00 a0 e1                                      mov r0, r1
0038e9e0  02 00 53 e3                                      cmp r3, #2
0038e9e4  00 10 a0 13                                      movne r1, #0
0038e9e8  01 10 a0 03                                      moveq r1, #1
0038e9ec  7c b7 ff ea                                      b #0x37c7e4

; FUNCTION 0x0038e9f0, declared_size=44, range_size=44, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject9_IsPlayerERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_IsPlayer(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038e9f0  10 40 2d e9                                      push {r4, lr}
0038e9f4  00 30 92 e5                                      ldr r3, [r2]
0038e9f8  02 00 a0 e1                                      mov r0, r2
0038e9fc  01 40 a0 e1                                      mov r4, r1
0038ea00  0f e0 a0 e1                                      mov lr, pc
0038ea04  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0038ea08  00 30 a0 e1                                      mov r3, r0
0038ea0c  03 10 a0 e1                                      mov r1, r3
0038ea10  04 00 a0 e1                                      mov r0, r4
0038ea14  10 40 bd e8                                      pop {r4, lr}
0038ea18  71 b7 ff ea                                      b #0x37c7e4

; FUNCTION 0x0038ea1c, declared_size=44, range_size=44, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject12_IsCharacterERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_IsCharacter(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038ea1c  10 40 2d e9                                      push {r4, lr}
0038ea20  00 30 92 e5                                      ldr r3, [r2]
0038ea24  02 00 a0 e1                                      mov r0, r2
0038ea28  01 40 a0 e1                                      mov r4, r1
0038ea2c  0f e0 a0 e1                                      mov lr, pc
0038ea30  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0038ea34  00 30 a0 e1                                      mov r3, r0
0038ea38  03 10 a0 e1                                      mov r1, r3
0038ea3c  04 00 a0 e1                                      mov r0, r4
0038ea40  10 40 bd e8                                      pop {r4, lr}
0038ea44  66 b7 ff ea                                      b #0x37c7e4

; FUNCTION 0x0038ea48, declared_size=44, range_size=44, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject7_IsDeadERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_IsDead(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038ea48  10 40 2d e9                                      push {r4, lr}
0038ea4c  00 30 92 e5                                      ldr r3, [r2]
0038ea50  02 00 a0 e1                                      mov r0, r2
0038ea54  01 40 a0 e1                                      mov r4, r1
0038ea58  0f e0 a0 e1                                      mov lr, pc
0038ea5c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0038ea60  00 30 a0 e1                                      mov r3, r0
0038ea64  03 10 a0 e1                                      mov r1, r3
0038ea68  04 00 a0 e1                                      mov r0, r4
0038ea6c  10 40 bd e8                                      pop {r4, lr}
0038ea70  5b b7 ff ea                                      b #0x37c7e4

; FUNCTION 0x0038ea74, declared_size=32, range_size=32, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject11_IsSwimmingERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_IsSwimming(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038ea74  10 40 2d e9                                      push {r4, lr}
0038ea78  72 0f 82 e2                                      add r0, r2, #0x1c8
0038ea7c  01 40 a0 e1                                      mov r4, r1
0038ea80  e1 55 06 eb                                      bl #0x52420c
0038ea84  00 10 a0 e1                                      mov r1, r0
0038ea88  04 00 a0 e1                                      mov r0, r4
0038ea8c  10 40 bd e8                                      pop {r4, lr}
0038ea90  53 b7 ff ea                                      b #0x37c7e4

; FUNCTION 0x0038ea94, declared_size=32, range_size=32, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject9_IsFlyingERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_IsFlying(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038ea94  10 40 2d e9                                      push {r4, lr}
0038ea98  72 0f 82 e2                                      add r0, r2, #0x1c8
0038ea9c  01 40 a0 e1                                      mov r4, r1
0038eaa0  d0 55 06 eb                                      bl #0x5241e8
0038eaa4  00 10 a0 e1                                      mov r1, r0
0038eaa8  04 00 a0 e1                                      mov r0, r4
0038eaac  10 40 bd e8                                      pop {r4, lr}
0038eab0  4b b7 ff ea                                      b #0x37c7e4

; FUNCTION 0x0038eab4, declared_size=32, range_size=32, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject10_IsInWaterERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_IsInWater(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038eab4  10 40 2d e9                                      push {r4, lr}
0038eab8  72 0f 82 e2                                      add r0, r2, #0x1c8
0038eabc  01 40 a0 e1                                      mov r4, r1
0038eac0  c3 55 06 eb                                      bl #0x5241d4
0038eac4  00 10 a0 e1                                      mov r1, r0
0038eac8  04 00 a0 e1                                      mov r0, r4
0038eacc  10 40 bd e8                                      pop {r4, lr}
0038ead0  43 b7 ff ea                                      b #0x37c7e4

; FUNCTION 0x0038ead4, declared_size=32, range_size=32, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject12_IsOverAHoleERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_IsOverAHole(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038ead4  10 40 2d e9                                      push {r4, lr}
0038ead8  72 0f 82 e2                                      add r0, r2, #0x1c8
0038eadc  01 40 a0 e1                                      mov r4, r1
0038eae0  b6 55 06 eb                                      bl #0x5241c0
0038eae4  00 10 a0 e1                                      mov r1, r0
0038eae8  04 00 a0 e1                                      mov r0, r4
0038eaec  10 40 bd e8                                      pop {r4, lr}
0038eaf0  3b b7 ff ea                                      b #0x37c7e4

; FUNCTION 0x0038eaf4, declared_size=12, range_size=12, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject8_GetSelfERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_GetSelf(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038eaf4  01 00 a0 e1                                      mov r0, r1
0038eaf8  02 10 a0 e1                                      mov r1, r2
0038eafc  bd b7 ff ea                                      b #0x37c9f8

; FUNCTION 0x0038eb68, declared_size=124, range_size=124, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject17_GetTargetListTopERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_GetTargetListTop(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038eb68  70 40 2d e9                                      push {r4, r5, r6, lr}
0038eb6c  14 33 92 e5                                      ldr r3, [r2, #0x314]
0038eb70  04 43 92 e5                                      ldr r4, [r2, #0x304]
0038eb74  01 50 a0 e1                                      mov r5, r1
0038eb78  04 00 53 e1                                      cmp r3, r4
0038eb7c  14 00 00 0a                                      beq #0x38ebd4
0038eb80  00 10 94 e5                                      ldr r1, [r4]
0038eb84  05 00 a0 e1                                      mov r0, r5
0038eb88  9a b7 ff eb                                      bl #0x37c9f8
0038eb8c  05 00 a0 e1                                      mov r0, r5
0038eb90  04 10 94 e5                                      ldr r1, [r4, #4]
0038eb94  48 b8 ff eb                                      bl #0x37ccbc
0038eb98  e0 1e 02 e3                                      movw r1, #0x2ee0
0038eb9c  08 00 94 e5                                      ldr r0, [r4, #8]
0038eba0  65 12 44 e3                                      movt r1, #0x4265
0038eba4  70 00 fe eb                                      bl #0x30ed6c
0038eba8  00 10 a0 e1                                      mov r1, r0
0038ebac  05 00 a0 e1                                      mov r0, r5
0038ebb0  41 b8 ff eb                                      bl #0x37ccbc
0038ebb4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0038ebb8  05 00 a0 e1                                      mov r0, r5
0038ebbc  01 10 01 e2                                      and r1, r1, #1
0038ebc0  07 b7 ff eb                                      bl #0x37c7e4
0038ebc4  10 10 94 e5                                      ldr r1, [r4, #0x10]
0038ebc8  05 00 a0 e1                                      mov r0, r5
0038ebcc  70 40 bd e8                                      pop {r4, r5, r6, lr}
0038ebd0  39 b8 ff ea                                      b #0x37ccbc
0038ebd4  01 00 a0 e1                                      mov r0, r1
0038ebd8  00 10 a0 e3                                      mov r1, #0
0038ebdc  70 40 bd e8                                      pop {r4, r5, r6, lr}
0038ebe0  c6 ff ff ea                                      b #0x38eb00

; FUNCTION 0x0038ebe4, declared_size=12, range_size=12, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject6_GetIDERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_GetID(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038ebe4  01 00 a0 e1                                      mov r0, r1
0038ebe8  02 10 a0 e1                                      mov r1, r2
0038ebec  c3 ff ff ea                                      b #0x38eb00

; FUNCTION 0x0038ebf0, declared_size=12, range_size=12, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject8_GetNameERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_GetName(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038ebf0  01 00 a0 e1                                      mov r0, r1
0038ebf4  44 10 92 e5                                      ldr r1, [r2, #0x44]
0038ebf8  33 b7 ff ea                                      b #0x37c8cc

; FUNCTION 0x0038ef60, declared_size=216, range_size=216, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject18LoadExternalScriptEPKcS1_
; demangled: GameObject::LoadExternalScript(char const*, char const*)
; decoder-mode: arm
0038ef60  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038ef64  00 33 90 e5                                      ldr r3, [r0, #0x300]
0038ef68  00 40 a0 e1                                      mov r4, r0
0038ef6c  01 50 a0 e1                                      mov r5, r1
0038ef70  00 00 53 e3                                      cmp r3, #0
0038ef74  02 60 a0 e1                                      mov r6, r2
0038ef78  05 00 00 0a                                      beq #0x38ef94
0038ef7c  03 00 a0 e1                                      mov r0, r3
0038ef80  00 30 93 e5                                      ldr r3, [r3]
0038ef84  0f e0 a0 e1                                      mov lr, pc
0038ef88  04 f0 93 e5                                      ldr pc, [r3, #4]
0038ef8c  00 30 a0 e3                                      mov r3, #0
0038ef90  00 33 84 e5                                      str r3, [r4, #0x300]
0038ef94  00 00 55 e3                                      cmp r5, #0
0038ef98  02 00 00 0a                                      beq #0x38efa8
0038ef9c  d0 30 d5 e1                                      ldrsb r3, [r5]
0038efa0  00 00 53 e3                                      cmp r3, #0
0038efa4  00 00 00 1a                                      bne #0x38efac
0038efa8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038efac  00 10 a0 e3                                      mov r1, #0
0038efb0  98 00 a0 e3                                      mov r0, #0x98
0038efb4  6d 05 fe eb                                      bl #0x310570
0038efb8  00 10 a0 e3                                      mov r1, #0
0038efbc  00 70 a0 e1                                      mov r7, r0
0038efc0  6f b5 ff eb                                      bl #0x37c584
0038efc4  00 73 84 e5                                      str r7, [r4, #0x300]
0038efc8  10 10 87 e2                                      add r1, r7, #0x10
0038efcc  00 30 94 e5                                      ldr r3, [r4]
0038efd0  04 00 a0 e1                                      mov r0, r4
0038efd4  0f e0 a0 e1                                      mov lr, pc
0038efd8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0038efdc  00 00 56 e3                                      cmp r6, #0
0038efe0  06 00 00 0a                                      beq #0x38f000
0038efe4  06 00 a0 e1                                      mov r0, r6
0038efe8  99 fb fd eb                                      bl #0x30de54
0038efec  00 33 94 e5                                      ldr r3, [r4, #0x300]
0038eff0  00 20 86 e0                                      add r2, r6, r0
0038eff4  06 10 a0 e1                                      mov r1, r6
0038eff8  68 00 83 e2                                      add r0, r3, #0x68
0038effc  77 06 fe eb                                      bl #0x3109e0
0038f000  05 10 a0 e1                                      mov r1, r5
0038f004  00 03 94 e5                                      ldr r0, [r4, #0x300]
0038f008  59 b1 ff eb                                      bl #0x37b574
0038f00c  00 50 50 e2                                      subs r5, r0, #0
0038f010  e4 ff ff 1a                                      bne #0x38efa8
0038f014  00 33 94 e5                                      ldr r3, [r4, #0x300]
0038f018  00 00 53 e3                                      cmp r3, #0
0038f01c  e1 ff ff 0a                                      beq #0x38efa8
0038f020  03 00 a0 e1                                      mov r0, r3
0038f024  00 30 93 e5                                      ldr r3, [r3]
0038f028  0f e0 a0 e1                                      mov lr, pc
0038f02c  04 f0 93 e5                                      ldr pc, [r3, #4]
0038f030  00 53 84 e5                                      str r5, [r4, #0x300]
0038f034  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0038fbb8, declared_size=64, range_size=64, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject14_PopTargetListERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_PopTargetList(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038fbb8  10 40 2d e9                                      push {r4, lr}
0038fbbc  10 d0 4d e2                                      sub sp, sp, #0x10
0038fbc0  02 e0 a0 e1                                      mov lr, r2
0038fbc4  0d c0 a0 e1                                      mov ip, sp
0038fbc8  c1 4f 82 e2                                      add r4, r2, #0x304
0038fbcc  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0038fbd0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0038fbd4  c5 0f 8e e2                                      add r0, lr, #0x314
0038fbd8  0d 10 a0 e1                                      mov r1, sp
0038fbdc  8b f6 ff eb                                      bl #0x38d610
0038fbe0  00 00 50 e3                                      cmp r0, #0
0038fbe4  01 00 00 0a                                      beq #0x38fbf0
0038fbe8  04 00 a0 e1                                      mov r0, r4
0038fbec  c9 ff ff eb                                      bl #0x38fb18
0038fbf0  10 d0 8d e2                                      add sp, sp, #0x10
0038fbf4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0038fbf8, declared_size=124, range_size=124, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject17_TargetListResortERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_TargetListResort(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038fbf8  10 40 2d e9                                      push {r4, lr}
0038fbfc  04 30 90 e5                                      ldr r3, [r0, #4]
0038fc00  08 d0 4d e2                                      sub sp, sp, #8
0038fc04  04 10 93 e5                                      ldr r1, [r3, #4]
0038fc08  00 c0 93 e5                                      ldr ip, [r3]
0038fc0c  01 30 6c e0                                      rsb r3, ip, r1
0038fc10  43 32 a0 e1                                      asr r3, r3, #4
0038fc14  83 11 83 e0                                      add r1, r3, r3, lsl #3
0038fc18  01 13 81 e0                                      add r1, r1, r1, lsl #6
0038fc1c  81 11 83 e0                                      add r1, r3, r1, lsl #3
0038fc20  81 17 81 e0                                      add r1, r1, r1, lsl #15
0038fc24  81 31 83 e0                                      add r3, r3, r1, lsl #3
0038fc28  00 00 53 e3                                      cmp r3, #0
0038fc2c  01 00 00 1a                                      bne #0x38fc38
0038fc30  08 d0 8d e2                                      add sp, sp, #8
0038fc34  10 80 bd e8                                      pop {r4, pc}
0038fc38  04 30 9c e5                                      ldr r3, [ip, #4]
0038fc3c  03 00 53 e3                                      cmp r3, #3
0038fc40  fa ff ff 1a                                      bne #0x38fc30
0038fc44  00 10 a0 e3                                      mov r1, #0
0038fc48  04 20 8d e5                                      str r2, [sp, #4]
0038fc4c  a9 af ff eb                                      bl #0x37baf8
0038fc50  04 20 9d e5                                      ldr r2, [sp, #4]
0038fc54  c1 4f 82 e2                                      add r4, r2, #0x304
0038fc58  e4 2f fe eb                                      bl #0x31bbf0
0038fc5c  1a fa fd eb                                      bl #0x30e4cc
0038fc60  00 10 a0 e1                                      mov r1, r0
0038fc64  04 00 a0 e1                                      mov r0, r4
0038fc68  08 d0 8d e2                                      add sp, sp, #8
0038fc6c  10 40 bd e8                                      pop {r4, lr}
0038fc70  4f 4e 04 ea                                      b #0x4a35b4

; FUNCTION 0x0038fc74, declared_size=124, range_size=124, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject7_DropFXERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_DropFX(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038fc74  10 40 2d e9                                      push {r4, lr}
0038fc78  04 20 90 e5                                      ldr r2, [r0, #4]
0038fc7c  64 40 9f e5                                      ldr r4, [pc, #0x64]
0038fc80  08 d0 4d e2                                      sub sp, sp, #8
0038fc84  0a 00 92 e8                                      ldm r2, {r1, r3}
0038fc88  04 40 8f e0                                      add r4, pc, r4
0038fc8c  03 30 61 e0                                      rsb r3, r1, r3
0038fc90  43 32 a0 e1                                      asr r3, r3, #4
0038fc94  83 21 83 e0                                      add r2, r3, r3, lsl #3
0038fc98  02 23 82 e0                                      add r2, r2, r2, lsl #6
0038fc9c  82 21 83 e0                                      add r2, r3, r2, lsl #3
0038fca0  82 27 82 e0                                      add r2, r2, r2, lsl #15
0038fca4  82 31 83 e0                                      add r3, r3, r2, lsl #3
0038fca8  00 00 53 e3                                      cmp r3, #0
0038fcac  01 00 00 1a                                      bne #0x38fcb8
0038fcb0  08 d0 8d e2                                      add sp, sp, #8
0038fcb4  10 80 bd e8                                      pop {r4, pc}
0038fcb8  04 30 91 e5                                      ldr r3, [r1, #4]
0038fcbc  02 00 53 e3                                      cmp r3, #2
0038fcc0  fa ff ff 1a                                      bne #0x38fcb0
0038fcc4  00 10 a0 e3                                      mov r1, #0
0038fcc8  8a af ff eb                                      bl #0x37baf8
0038fccc  2b 2e fe eb                                      bl #0x31b580
0038fcd0  14 30 9f e5                                      ldr r3, [pc, #0x14]
0038fcd4  08 10 8d e2                                      add r1, sp, #8
0038fcd8  04 00 21 e5                                      str r0, [r1, #-4]!
0038fcdc  03 00 94 e7                                      ldr r0, [r4, r3]
0038fce0  24 13 04 eb                                      bl #0x494978
0038fce4  f1 ff ff ea                                      b #0x38fcb0
; mapping-symbol data/literal pool
0038fce8  08 4e 60 00 08 1b 00 00                          .byte 0x08, 0x4e, 0x60, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x0038fcf0, declared_size=1820, range_size=1820, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject17_TargetListSearchERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_TargetListSearch(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0038fcf0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038fcf4  04 30 90 e5                                      ldr r3, [r0, #4]
0038fcf8  02 60 a0 e1                                      mov r6, r2
0038fcfc  ec 46 9f e5                                      ldr r4, [pc, #0x6ec]
0038fd00  06 00 93 e8                                      ldm r3, {r1, r2}
0038fd04  04 40 8f e0                                      add r4, pc, r4
0038fd08  6c d0 4d e2                                      sub sp, sp, #0x6c
0038fd0c  02 20 61 e0                                      rsb r2, r1, r2
0038fd10  42 22 a0 e1                                      asr r2, r2, #4
0038fd14  00 50 a0 e1                                      mov r5, r0
0038fd18  82 71 82 e0                                      add r7, r2, r2, lsl #3
0038fd1c  07 73 87 e0                                      add r7, r7, r7, lsl #6
0038fd20  87 71 82 e0                                      add r7, r2, r7, lsl #3
0038fd24  87 77 87 e0                                      add r7, r7, r7, lsl #15
0038fd28  87 71 82 e0                                      add r7, r2, r7, lsl #3
0038fd2c  00 70 67 e2                                      rsb r7, r7, #0
0038fd30  00 00 57 e3                                      cmp r7, #0
0038fd34  01 00 00 1a                                      bne #0x38fd40
0038fd38  6c d0 8d e2                                      add sp, sp, #0x6c
0038fd3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038fd40  04 20 91 e5                                      ldr r2, [r1, #4]
0038fd44  03 00 52 e3                                      cmp r2, #3
0038fd48  fa ff ff 1a                                      bne #0x38fd38
0038fd4c  01 00 57 e3                                      cmp r7, #1
0038fd50  0f 00 00 9a                                      bls #0x38fd94
0038fd54  01 10 a0 e3                                      mov r1, #1
0038fd58  66 af ff eb                                      bl #0x37baf8
0038fd5c  04 30 90 e5                                      ldr r3, [r0, #4]
0038fd60  03 00 53 e3                                      cmp r3, #3
0038fd64  f3 ff ff 1a                                      bne #0x38fd38
0038fd68  04 30 95 e5                                      ldr r3, [r5, #4]
0038fd6c  04 10 93 e5                                      ldr r1, [r3, #4]
0038fd70  00 20 93 e5                                      ldr r2, [r3]
0038fd74  01 20 62 e0                                      rsb r2, r2, r1
0038fd78  42 22 a0 e1                                      asr r2, r2, #4
0038fd7c  82 11 82 e0                                      add r1, r2, r2, lsl #3
0038fd80  01 13 81 e0                                      add r1, r1, r1, lsl #6
0038fd84  81 11 82 e0                                      add r1, r2, r1, lsl #3
0038fd88  81 17 81 e0                                      add r1, r1, r1, lsl #15
0038fd8c  81 21 82 e0                                      add r2, r2, r1, lsl #3
0038fd90  00 70 62 e2                                      rsb r7, r2, #0
0038fd94  64 11 96 e5                                      ldr r1, [r6, #0x164]
0038fd98  68 21 96 e5                                      ldr r2, [r6, #0x168]
0038fd9c  60 01 96 e5                                      ldr r0, [r6, #0x160]
0038fda0  60 10 8d e5                                      str r1, [sp, #0x60]
0038fda4  64 20 8d e5                                      str r2, [sp, #0x64]
0038fda8  5c 00 8d e5                                      str r0, [sp, #0x5c]
0038fdac  04 10 93 e5                                      ldr r1, [r3, #4]
0038fdb0  00 20 93 e5                                      ldr r2, [r3]
0038fdb4  01 20 62 e0                                      rsb r2, r2, r1
0038fdb8  42 22 a0 e1                                      asr r2, r2, #4
0038fdbc  82 11 82 e0                                      add r1, r2, r2, lsl #3
0038fdc0  01 13 81 e0                                      add r1, r1, r1, lsl #6
0038fdc4  81 11 82 e0                                      add r1, r2, r1, lsl #3
0038fdc8  81 17 81 e0                                      add r1, r1, r1, lsl #15
0038fdcc  81 21 82 e0                                      add r2, r2, r1, lsl #3
0038fdd0  00 20 62 e2                                      rsb r2, r2, #0
0038fdd4  02 00 52 e3                                      cmp r2, #2
0038fdd8  4b 00 00 8a                                      bhi #0x38ff0c
0038fddc  01 70 47 e2                                      sub r7, r7, #1
0038fde0  0c 26 9f e5                                      ldr r2, [pc, #0x60c]
0038fde4  0c c6 9f e5                                      ldr ip, [pc, #0x60c]
0038fde8  0c 06 9f e5                                      ldr r0, [pc, #0x60c]
0038fdec  02 10 94 e7                                      ldr r1, [r4, r2]
0038fdf0  0c c0 94 e7                                      ldr ip, [r4, ip]
0038fdf4  00 00 94 e7                                      ldr r0, [r4, r0]
0038fdf8  38 20 91 e5                                      ldr r2, [r1, #0x38]
0038fdfc  40 a0 91 e5                                      ldr sl, [r1, #0x40]
0038fe00  f8 15 9f e5                                      ldr r1, [pc, #0x5f8]
0038fe04  60 80 82 e2                                      add r8, r2, #0x60
0038fe08  08 c0 8c e2                                      add ip, ip, #8
0038fe0c  08 00 80 e2                                      add r0, r0, #8
0038fe10  00 e0 a0 e3                                      mov lr, #0
0038fe14  34 00 8d e5                                      str r0, [sp, #0x34]
0038fe18  44 c0 8d e5                                      str ip, [sp, #0x44]
0038fe1c  48 a0 8d e5                                      str sl, [sp, #0x48]
0038fe20  4c e0 8d e5                                      str lr, [sp, #0x4c]
0038fe24  38 80 8d e5                                      str r8, [sp, #0x38]
0038fe28  01 10 94 e7                                      ldr r1, [r4, r1]
0038fe2c  60 c0 92 e5                                      ldr ip, [r2, #0x60]
0038fe30  80 00 82 e2                                      add r0, r2, #0x80
0038fe34  08 10 81 e2                                      add r1, r1, #8
0038fe38  3c c0 8d e5                                      str ip, [sp, #0x3c]
0038fe3c  40 80 8d e5                                      str r8, [sp, #0x40]
0038fe40  20 10 8d e5                                      str r1, [sp, #0x20]
0038fe44  24 00 8d e5                                      str r0, [sp, #0x24]
0038fe48  80 20 92 e5                                      ldr r2, [r2, #0x80]
0038fe4c  2c 00 8d e5                                      str r0, [sp, #0x2c]
0038fe50  30 e0 8d e5                                      str lr, [sp, #0x30]
0038fe54  28 20 8d e5                                      str r2, [sp, #0x28]
0038fe58  0c 00 93 e8                                      ldm r3, {r2, r3}
0038fe5c  03 30 62 e0                                      rsb r3, r2, r3
0038fe60  43 32 a0 e1                                      asr r3, r3, #4
0038fe64  83 21 83 e0                                      add r2, r3, r3, lsl #3
0038fe68  02 23 82 e0                                      add r2, r2, r2, lsl #6
0038fe6c  82 21 83 e0                                      add r2, r3, r2, lsl #3
0038fe70  82 27 82 e0                                      add r2, r2, r2, lsl #15
0038fe74  82 31 83 e0                                      add r3, r3, r2, lsl #3
0038fe78  00 30 63 e2                                      rsb r3, r3, #0
0038fe7c  03 00 57 e1                                      cmp r7, r3
0038fe80  65 00 00 3a                                      blo #0x39001c
0038fe84  38 23 96 e5                                      ldr r2, [r6, #0x338]
0038fe88  80 00 12 e3                                      tst r2, #0x80
0038fe8c  c1 6f 86 12                                      addne r6, r6, #0x304
0038fe90  44 40 8d 12                                      addne r4, sp, #0x44
0038fe94  16 00 00 0a                                      beq #0x38fef4
0038fe98  01 00 53 e3                                      cmp r3, #1
0038fe9c  83 00 00 9a                                      bls #0x3900b0
0038fea0  00 10 a0 e3                                      mov r1, #0
0038fea4  05 00 a0 e1                                      mov r0, r5
0038fea8  12 af ff eb                                      bl #0x37baf8
0038feac  4f 2f fe eb                                      bl #0x31bbf0
0038feb0  01 10 a0 e3                                      mov r1, #1
0038feb4  00 70 a0 e1                                      mov r7, r0
0038feb8  05 00 a0 e1                                      mov r0, r5
0038febc  0d af ff eb                                      bl #0x37baf8
0038fec0  4a 2f fe eb                                      bl #0x31bbf0
0038fec4  35 1a 0f e3                                      movw r1, #0xfa35
0038fec8  8e 1c 43 e3                                      movt r1, #0x3c8e
0038fecc  a6 fb fd eb                                      bl #0x30ed6c
0038fed0  3f 14 a0 e3                                      mov r1, #0x3f000000
0038fed4  a4 fb fd eb                                      bl #0x30ed6c
0038fed8  5c 10 8d e2                                      add r1, sp, #0x5c
0038fedc  00 30 a0 e1                                      mov r3, r0
0038fee0  07 20 a0 e1                                      mov r2, r7
0038fee4  06 00 a0 e1                                      mov r0, r6
0038fee8  00 40 8d e5                                      str r4, [sp]
0038feec  35 4d 04 eb                                      bl #0x4a33c8
0038fef0  90 ff ff ea                                      b #0x38fd38
0038fef4  3c 23 96 e5                                      ldr r2, [r6, #0x33c]
0038fef8  c1 6f 86 e2                                      add r6, r6, #0x304
0038fefc  02 00 52 e3                                      cmp r2, #2
0038ff00  20 40 8d 12                                      addne r4, sp, #0x20
0038ff04  34 40 8d 02                                      addeq r4, sp, #0x34
0038ff08  e2 ff ff ea                                      b #0x38fe98
0038ff0c  05 00 a0 e1                                      mov r0, r5
0038ff10  02 10 a0 e3                                      mov r1, #2
0038ff14  f7 ae ff eb                                      bl #0x37baf8
0038ff18  04 30 90 e5                                      ldr r3, [r0, #4]
0038ff1c  07 00 53 e3                                      cmp r3, #7
0038ff20  05 01 00 0a                                      beq #0x39033c
0038ff24  04 30 95 e5                                      ldr r3, [r5, #4]
0038ff28  04 10 93 e5                                      ldr r1, [r3, #4]
0038ff2c  00 20 93 e5                                      ldr r2, [r3]
0038ff30  01 20 62 e0                                      rsb r2, r2, r1
0038ff34  42 22 a0 e1                                      asr r2, r2, #4
0038ff38  82 11 82 e0                                      add r1, r2, r2, lsl #3
0038ff3c  01 13 81 e0                                      add r1, r1, r1, lsl #6
0038ff40  81 11 82 e0                                      add r1, r2, r1, lsl #3
0038ff44  81 17 81 e0                                      add r1, r1, r1, lsl #15
0038ff48  81 21 82 e0                                      add r2, r2, r1, lsl #3
0038ff4c  00 20 62 e2                                      rsb r2, r2, #0
0038ff50  04 00 52 e3                                      cmp r2, #4
0038ff54  a0 ff ff 9a                                      bls #0x38fddc
0038ff58  02 10 a0 e3                                      mov r1, #2
0038ff5c  05 00 a0 e1                                      mov r0, r5
0038ff60  e4 ae ff eb                                      bl #0x37baf8
0038ff64  04 10 90 e5                                      ldr r1, [r0, #4]
0038ff68  03 00 51 e3                                      cmp r1, #3
0038ff6c  01 00 00 0a                                      beq #0x38ff78
0038ff70  04 30 95 e5                                      ldr r3, [r5, #4]
0038ff74  98 ff ff ea                                      b #0x38fddc
0038ff78  05 00 a0 e1                                      mov r0, r5
0038ff7c  dd ae ff eb                                      bl #0x37baf8
0038ff80  04 30 90 e5                                      ldr r3, [r0, #4]
0038ff84  03 00 53 e3                                      cmp r3, #3
0038ff88  f8 ff ff 1a                                      bne #0x38ff70
0038ff8c  05 00 a0 e1                                      mov r0, r5
0038ff90  04 10 a0 e3                                      mov r1, #4
0038ff94  d7 ae ff eb                                      bl #0x37baf8
0038ff98  04 00 90 e5                                      ldr r0, [r0, #4]
0038ff9c  03 00 50 e3                                      cmp r0, #3
0038ffa0  1c 00 8d e5                                      str r0, [sp, #0x1c]
0038ffa4  f1 ff ff 1a                                      bne #0x38ff70
0038ffa8  04 20 95 e5                                      ldr r2, [r5, #4]
0038ffac  b7 3d 06 e3                                      movw r3, #0x6db7
0038ffb0  db 36 4b e3                                      movt r3, #0xb6db
0038ffb4  06 00 92 e8                                      ldm r2, {r1, r2}
0038ffb8  02 20 61 e0                                      rsb r2, r1, r2
0038ffbc  42 22 a0 e1                                      asr r2, r2, #4
0038ffc0  93 02 03 e0                                      mul r3, r3, r2
0038ffc4  05 00 53 e3                                      cmp r3, #5
0038ffc8  44 00 00 8a                                      bhi #0x3900e0
0038ffcc  02 10 a0 e3                                      mov r1, #2
0038ffd0  05 00 a0 e1                                      mov r0, r5
0038ffd4  c7 ae ff eb                                      bl #0x37baf8
0038ffd8  04 2f fe eb                                      bl #0x31bbf0
0038ffdc  03 10 a0 e3                                      mov r1, #3
0038ffe0  00 80 a0 e1                                      mov r8, r0
0038ffe4  05 00 a0 e1                                      mov r0, r5
0038ffe8  c2 ae ff eb                                      bl #0x37baf8
0038ffec  ff 2e fe eb                                      bl #0x31bbf0
0038fff0  04 10 a0 e3                                      mov r1, #4
0038fff4  00 70 a0 e1                                      mov r7, r0
0038fff8  05 00 a0 e1                                      mov r0, r5
0038fffc  bd ae ff eb                                      bl #0x37baf8
00390000  fa 2e fe eb                                      bl #0x31bbf0
00390004  60 70 8d e5                                      str r7, [sp, #0x60]
00390008  5c 80 8d e5                                      str r8, [sp, #0x5c]
0039000c  64 00 8d e5                                      str r0, [sp, #0x64]
00390010  06 70 a0 e3                                      mov r7, #6
00390014  04 30 95 e5                                      ldr r3, [r5, #4]
00390018  70 ff ff ea                                      b #0x38fde0
0039001c  05 00 a0 e1                                      mov r0, r5
00390020  07 10 a0 e1                                      mov r1, r7
00390024  b3 ae ff eb                                      bl #0x37baf8
00390028  04 30 90 e5                                      ldr r3, [r0, #4]
0039002c  01 00 53 e3                                      cmp r3, #1
00390030  e3 00 00 0a                                      beq #0x3903c4
00390034  04 20 95 e5                                      ldr r2, [r5, #4]
00390038  00 30 92 e5                                      ldr r3, [r2]
0039003c  04 20 92 e5                                      ldr r2, [r2, #4]
00390040  02 30 63 e0                                      rsb r3, r3, r2
00390044  43 32 a0 e1                                      asr r3, r3, #4
00390048  83 21 83 e0                                      add r2, r3, r3, lsl #3
0039004c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00390050  82 21 83 e0                                      add r2, r3, r2, lsl #3
00390054  82 27 82 e0                                      add r2, r2, r2, lsl #15
00390058  82 31 83 e0                                      add r3, r3, r2, lsl #3
0039005c  00 30 63 e2                                      rsb r3, r3, #0
00390060  03 00 57 e1                                      cmp r7, r3
00390064  86 ff ff 2a                                      bhs #0x38fe84
00390068  05 00 a0 e1                                      mov r0, r5
0039006c  07 10 a0 e1                                      mov r1, r7
00390070  a0 ae ff eb                                      bl #0x37baf8
00390074  04 30 90 e5                                      ldr r3, [r0, #4]
00390078  04 00 53 e3                                      cmp r3, #4
0039007c  bb 00 00 0a                                      beq #0x390370
00390080  04 30 95 e5                                      ldr r3, [r5, #4]
00390084  04 20 93 e5                                      ldr r2, [r3, #4]
00390088  00 30 93 e5                                      ldr r3, [r3]
0039008c  02 30 63 e0                                      rsb r3, r3, r2
00390090  43 32 a0 e1                                      asr r3, r3, #4
00390094  83 21 83 e0                                      add r2, r3, r3, lsl #3
00390098  02 23 82 e0                                      add r2, r2, r2, lsl #6
0039009c  82 21 83 e0                                      add r2, r3, r2, lsl #3
003900a0  82 27 82 e0                                      add r2, r2, r2, lsl #15
003900a4  82 31 83 e0                                      add r3, r3, r2, lsl #3
003900a8  00 30 63 e2                                      rsb r3, r3, #0
003900ac  74 ff ff ea                                      b #0x38fe84
003900b0  00 10 a0 e3                                      mov r1, #0
003900b4  05 00 a0 e1                                      mov r0, r5
003900b8  8e ae ff eb                                      bl #0x37baf8
003900bc  cb 2e fe eb                                      bl #0x31bbf0
003900c0  db 3f 00 e3                                      movw r3, #0xfdb
003900c4  00 20 a0 e1                                      mov r2, r0
003900c8  5c 10 8d e2                                      add r1, sp, #0x5c
003900cc  06 00 a0 e1                                      mov r0, r6
003900d0  49 30 44 e3                                      movt r3, #0x4049
003900d4  00 40 8d e5                                      str r4, [sp]
003900d8  ba 4c 04 eb                                      bl #0x4a33c8
003900dc  15 ff ff ea                                      b #0x38fd38
003900e0  05 00 a0 e1                                      mov r0, r5
003900e4  05 10 a0 e3                                      mov r1, #5
003900e8  82 ae ff eb                                      bl #0x37baf8
003900ec  04 30 90 e5                                      ldr r3, [r0, #4]
003900f0  01 00 53 e3                                      cmp r3, #1
003900f4  b4 ff ff 1a                                      bne #0x38ffcc
003900f8  05 10 a0 e3                                      mov r1, #5
003900fc  05 00 a0 e1                                      mov r0, r5
00390100  7c ae ff eb                                      bl #0x37baf8
00390104  dd 2e fe eb                                      bl #0x31bc80
00390108  00 00 50 e3                                      cmp r0, #0
0039010c  ae ff ff 0a                                      beq #0x38ffcc
00390110  00 30 a0 e3                                      mov r3, #0
00390114  06 00 a0 e1                                      mov r0, r6
00390118  50 10 8d e2                                      add r1, sp, #0x50
0039011c  58 30 8d e5                                      str r3, [sp, #0x58]
00390120  50 30 8d e5                                      str r3, [sp, #0x50]
00390124  54 30 8d e5                                      str r3, [sp, #0x54]
00390128  6d 0e 00 eb                                      bl #0x393ae4
0039012c  d0 32 9f e5                                      ldr r3, [pc, #0x2d0]
00390130  60 c1 96 e5                                      ldr ip, [r6, #0x160]
00390134  64 21 96 e5                                      ldr r2, [r6, #0x164]
00390138  03 70 94 e7                                      ldr r7, [r4, r3]
0039013c  68 31 96 e5                                      ldr r3, [r6, #0x168]
00390140  02 10 a0 e3                                      mov r1, #2
00390144  05 00 a0 e1                                      mov r0, r5
00390148  64 30 8d e5                                      str r3, [sp, #0x64]
0039014c  04 30 97 e5                                      ldr r3, [r7, #4]
00390150  5c c0 8d e5                                      str ip, [sp, #0x5c]
00390154  60 20 8d e5                                      str r2, [sp, #0x60]
00390158  10 30 8d e5                                      str r3, [sp, #0x10]
0039015c  54 30 9d e5                                      ldr r3, [sp, #0x54]
00390160  08 b0 97 e5                                      ldr fp, [r7, #8]
00390164  00 a0 97 e5                                      ldr sl, [r7]
00390168  14 30 8d e5                                      str r3, [sp, #0x14]
0039016c  50 30 9d e5                                      ldr r3, [sp, #0x50]
00390170  58 90 9d e5                                      ldr sb, [sp, #0x58]
00390174  18 30 8d e5                                      str r3, [sp, #0x18]
00390178  5e ae ff eb                                      bl #0x37baf8
0039017c  9b 2e fe eb                                      bl #0x31bbf0
00390180  09 10 a0 e1                                      mov r1, sb
00390184  00 80 a0 e1                                      mov r8, r0
00390188  10 00 9d e5                                      ldr r0, [sp, #0x10]
0039018c  f6 fa fd eb                                      bl #0x30ed6c
00390190  14 10 9d e5                                      ldr r1, [sp, #0x14]
00390194  00 30 a0 e1                                      mov r3, r0
00390198  0b 00 a0 e1                                      mov r0, fp
0039019c  0c 30 8d e5                                      str r3, [sp, #0xc]
003901a0  f1 fa fd eb                                      bl #0x30ed6c
003901a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003901a8  00 10 a0 e1                                      mov r1, r0
003901ac  03 00 a0 e1                                      mov r0, r3
003901b0  7d f8 fd eb                                      bl #0x30e3ac
003901b4  00 10 a0 e1                                      mov r1, r0
003901b8  08 00 a0 e1                                      mov r0, r8
003901bc  ea fa fd eb                                      bl #0x30ed6c
003901c0  00 10 a0 e1                                      mov r1, r0
003901c4  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
003901c8  75 fa fd eb                                      bl #0x30eba4
003901cc  18 10 9d e5                                      ldr r1, [sp, #0x18]
003901d0  5c 00 8d e5                                      str r0, [sp, #0x5c]
003901d4  0b 00 a0 e1                                      mov r0, fp
003901d8  e3 fa fd eb                                      bl #0x30ed6c
003901dc  0a 10 a0 e1                                      mov r1, sl
003901e0  00 b0 a0 e1                                      mov fp, r0
003901e4  09 00 a0 e1                                      mov r0, sb
003901e8  df fa fd eb                                      bl #0x30ed6c
003901ec  00 10 a0 e1                                      mov r1, r0
003901f0  0b 00 a0 e1                                      mov r0, fp
003901f4  6c f8 fd eb                                      bl #0x30e3ac
003901f8  00 10 a0 e1                                      mov r1, r0
003901fc  08 00 a0 e1                                      mov r0, r8
00390200  d9 fa fd eb                                      bl #0x30ed6c
00390204  00 10 a0 e1                                      mov r1, r0
00390208  60 00 9d e5                                      ldr r0, [sp, #0x60]
0039020c  64 fa fd eb                                      bl #0x30eba4
00390210  0a 10 a0 e1                                      mov r1, sl
00390214  60 00 8d e5                                      str r0, [sp, #0x60]
00390218  14 00 9d e5                                      ldr r0, [sp, #0x14]
0039021c  d2 fa fd eb                                      bl #0x30ed6c
00390220  18 10 9d e5                                      ldr r1, [sp, #0x18]
00390224  00 a0 a0 e1                                      mov sl, r0
00390228  10 00 9d e5                                      ldr r0, [sp, #0x10]
0039022c  ce fa fd eb                                      bl #0x30ed6c
00390230  00 10 a0 e1                                      mov r1, r0
00390234  0a 00 a0 e1                                      mov r0, sl
00390238  5b f8 fd eb                                      bl #0x30e3ac
0039023c  00 10 a0 e1                                      mov r1, r0
00390240  08 00 a0 e1                                      mov r0, r8
00390244  c8 fa fd eb                                      bl #0x30ed6c
00390248  00 10 a0 e1                                      mov r1, r0
0039024c  64 00 9d e5                                      ldr r0, [sp, #0x64]
00390250  53 fa fd eb                                      bl #0x30eba4
00390254  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00390258  64 00 8d e5                                      str r0, [sp, #0x64]
0039025c  05 00 a0 e1                                      mov r0, r5
00390260  24 ae ff eb                                      bl #0x37baf8
00390264  61 2e fe eb                                      bl #0x31bbf0
00390268  54 10 9d e5                                      ldr r1, [sp, #0x54]
0039026c  00 80 a0 e1                                      mov r8, r0
00390270  bd fa fd eb                                      bl #0x30ed6c
00390274  58 10 9d e5                                      ldr r1, [sp, #0x58]
00390278  00 90 a0 e1                                      mov sb, r0
0039027c  08 00 a0 e1                                      mov r0, r8
00390280  b9 fa fd eb                                      bl #0x30ed6c
00390284  50 10 9d e5                                      ldr r1, [sp, #0x50]
00390288  00 a0 a0 e1                                      mov sl, r0
0039028c  08 00 a0 e1                                      mov r0, r8
00390290  b5 fa fd eb                                      bl #0x30ed6c
00390294  00 10 a0 e1                                      mov r1, r0
00390298  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0039029c  40 fa fd eb                                      bl #0x30eba4
003902a0  09 10 a0 e1                                      mov r1, sb
003902a4  5c 00 8d e5                                      str r0, [sp, #0x5c]
003902a8  60 00 9d e5                                      ldr r0, [sp, #0x60]
003902ac  3c fa fd eb                                      bl #0x30eba4
003902b0  0a 10 a0 e1                                      mov r1, sl
003902b4  60 00 8d e5                                      str r0, [sp, #0x60]
003902b8  64 00 9d e5                                      ldr r0, [sp, #0x64]
003902bc  38 fa fd eb                                      bl #0x30eba4
003902c0  04 10 a0 e3                                      mov r1, #4
003902c4  64 00 8d e5                                      str r0, [sp, #0x64]
003902c8  05 00 a0 e1                                      mov r0, r5
003902cc  09 ae ff eb                                      bl #0x37baf8
003902d0  46 2e fe eb                                      bl #0x31bbf0
003902d4  04 10 97 e5                                      ldr r1, [r7, #4]
003902d8  00 80 a0 e1                                      mov r8, r0
003902dc  a2 fa fd eb                                      bl #0x30ed6c
003902e0  08 10 97 e5                                      ldr r1, [r7, #8]
003902e4  00 90 a0 e1                                      mov sb, r0
003902e8  08 00 a0 e1                                      mov r0, r8
003902ec  9e fa fd eb                                      bl #0x30ed6c
003902f0  00 10 97 e5                                      ldr r1, [r7]
003902f4  00 a0 a0 e1                                      mov sl, r0
003902f8  08 00 a0 e1                                      mov r0, r8
003902fc  9a fa fd eb                                      bl #0x30ed6c
00390300  00 10 a0 e1                                      mov r1, r0
00390304  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00390308  25 fa fd eb                                      bl #0x30eba4
0039030c  09 10 a0 e1                                      mov r1, sb
00390310  5c 00 8d e5                                      str r0, [sp, #0x5c]
00390314  60 00 9d e5                                      ldr r0, [sp, #0x60]
00390318  21 fa fd eb                                      bl #0x30eba4
0039031c  0a 10 a0 e1                                      mov r1, sl
00390320  60 00 8d e5                                      str r0, [sp, #0x60]
00390324  64 00 9d e5                                      ldr r0, [sp, #0x64]
00390328  1d fa fd eb                                      bl #0x30eba4
0039032c  06 70 a0 e3                                      mov r7, #6
00390330  04 30 95 e5                                      ldr r3, [r5, #4]
00390334  64 00 8d e5                                      str r0, [sp, #0x64]
00390338  a8 fe ff ea                                      b #0x38fde0
0039033c  02 10 a0 e3                                      mov r1, #2
00390340  05 00 a0 e1                                      mov r0, r5
00390344  eb ad ff eb                                      bl #0x37baf8
00390348  94 2c fe eb                                      bl #0x31b5a0
0039034c  60 21 90 e5                                      ldr r2, [r0, #0x160]
00390350  04 30 95 e5                                      ldr r3, [r5, #4]
00390354  03 70 a0 e3                                      mov r7, #3
00390358  5c 20 8d e5                                      str r2, [sp, #0x5c]
0039035c  64 21 90 e5                                      ldr r2, [r0, #0x164]
00390360  60 20 8d e5                                      str r2, [sp, #0x60]
00390364  68 21 90 e5                                      ldr r2, [r0, #0x168]
00390368  64 20 8d e5                                      str r2, [sp, #0x64]
0039036c  9b fe ff ea                                      b #0x38fde0
00390370  07 10 a0 e1                                      mov r1, r7
00390374  05 00 a0 e1                                      mov r0, r5
00390378  de ad ff eb                                      bl #0x37baf8
0039037c  46 30 fe eb                                      bl #0x31c49c
00390380  c1 6f 86 e2                                      add r6, r6, #0x304
00390384  00 10 a0 e1                                      mov r1, r0
00390388  06 00 a0 e1                                      mov r0, r6
0039038c  e6 fc ff eb                                      bl #0x38f72c
00390390  04 30 95 e5                                      ldr r3, [r5, #4]
00390394  00 40 a0 e1                                      mov r4, r0
00390398  04 20 93 e5                                      ldr r2, [r3, #4]
0039039c  00 30 93 e5                                      ldr r3, [r3]
003903a0  02 30 63 e0                                      rsb r3, r3, r2
003903a4  43 32 a0 e1                                      asr r3, r3, #4
003903a8  83 21 83 e0                                      add r2, r3, r3, lsl #3
003903ac  02 23 82 e0                                      add r2, r2, r2, lsl #6
003903b0  82 21 83 e0                                      add r2, r3, r2, lsl #3
003903b4  82 27 82 e0                                      add r2, r2, r2, lsl #15
003903b8  82 31 83 e0                                      add r3, r3, r2, lsl #3
003903bc  00 30 63 e2                                      rsb r3, r3, #0
003903c0  b4 fe ff ea                                      b #0x38fe98
003903c4  07 10 a0 e1                                      mov r1, r7
003903c8  05 00 a0 e1                                      mov r0, r5
003903cc  c9 ad ff eb                                      bl #0x37baf8
003903d0  2a 2e fe eb                                      bl #0x31bc80
003903d4  00 00 50 e3                                      cmp r0, #0
003903d8  15 ff ff 0a                                      beq #0x390034
003903dc  24 10 9f e5                                      ldr r1, [pc, #0x24]
003903e0  c1 6f 86 e2                                      add r6, r6, #0x304
003903e4  06 00 a0 e1                                      mov r0, r6
003903e8  01 10 8f e0                                      add r1, pc, r1
003903ec  e6 ff ff ea                                      b #0x39038c
; mapping-symbol data/literal pool
003903f0  8c 4d 60 00 f4 37 00 00 88 28 00 00 30 26 00 00  .byte 0x8c, 0x4d, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x88, 0x28, 0x00, 0x00, 0x30, 0x26, 0x00, 0x00
00390400  64 35 00 00 40 43 00 00 d8 04 53 00              .byte 0x64, 0x35, 0x00, 0x00, 0x40, 0x43, 0x00, 0x00, 0xd8, 0x04, 0x53, 0x00

; FUNCTION 0x0039040c, declared_size=316, range_size=316, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject17_EnableCollisionsERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_EnableCollisions(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0039040c  70 40 2d e9                                      push {r4, r5, r6, lr}
00390410  04 30 90 e5                                      ldr r3, [r0, #4]
00390414  10 d0 4d e2                                      sub sp, sp, #0x10
00390418  00 50 a0 e1                                      mov r5, r0
0039041c  04 10 93 e5                                      ldr r1, [r3, #4]
00390420  00 c0 93 e5                                      ldr ip, [r3]
00390424  01 30 6c e0                                      rsb r3, ip, r1
00390428  43 32 a0 e1                                      asr r3, r3, #4
0039042c  83 11 83 e0                                      add r1, r3, r3, lsl #3
00390430  01 13 81 e0                                      add r1, r1, r1, lsl #6
00390434  81 11 83 e0                                      add r1, r3, r1, lsl #3
00390438  81 17 81 e0                                      add r1, r1, r1, lsl #15
0039043c  81 31 83 e0                                      add r3, r3, r1, lsl #3
00390440  00 00 53 e3                                      cmp r3, #0
00390444  01 00 00 1a                                      bne #0x390450
00390448  10 d0 8d e2                                      add sp, sp, #0x10
0039044c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00390450  04 60 9c e5                                      ldr r6, [ip, #4]
00390454  01 00 56 e3                                      cmp r6, #1
00390458  fa ff ff 1a                                      bne #0x390448
0039045c  00 10 a0 e3                                      mov r1, #0
00390460  0c 20 8d e5                                      str r2, [sp, #0xc]
00390464  a3 ad ff eb                                      bl #0x37baf8
00390468  04 2e fe eb                                      bl #0x31bc80
0039046c  04 10 95 e5                                      ldr r1, [r5, #4]
00390470  00 40 a0 e1                                      mov r4, r0
00390474  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00390478  00 30 91 e5                                      ldr r3, [r1]
0039047c  04 10 91 e5                                      ldr r1, [r1, #4]
00390480  01 30 63 e0                                      rsb r3, r3, r1
00390484  43 32 a0 e1                                      asr r3, r3, #4
00390488  83 11 83 e0                                      add r1, r3, r3, lsl #3
0039048c  01 13 81 e0                                      add r1, r1, r1, lsl #6
00390490  81 11 83 e0                                      add r1, r3, r1, lsl #3
00390494  81 17 81 e0                                      add r1, r1, r1, lsl #15
00390498  81 31 83 e0                                      add r3, r3, r1, lsl #3
0039049c  00 30 63 e2                                      rsb r3, r3, #0
003904a0  01 00 53 e3                                      cmp r3, #1
003904a4  14 00 00 9a                                      bls #0x3904fc
003904a8  06 10 a0 e1                                      mov r1, r6
003904ac  05 00 a0 e1                                      mov r0, r5
003904b0  90 ad ff eb                                      bl #0x37baf8
003904b4  04 10 90 e5                                      ldr r1, [r0, #4]
003904b8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003904bc  01 00 51 e3                                      cmp r1, #1
003904c0  0d 00 00 1a                                      bne #0x3904fc
003904c4  05 00 a0 e1                                      mov r0, r5
003904c8  8a ad ff eb                                      bl #0x37baf8
003904cc  eb 2d fe eb                                      bl #0x31bc80
003904d0  00 00 50 e3                                      cmp r0, #0
003904d4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003904d8  07 00 00 0a                                      beq #0x3904fc
003904dc  dc 02 92 e5                                      ldr r0, [r2, #0x2dc]
003904e0  00 00 50 e3                                      cmp r0, #0
003904e4  d7 ff ff 0a                                      beq #0x390448
003904e8  00 00 54 e3                                      cmp r4, #0
003904ec  0c 00 00 0a                                      beq #0x390524
003904f0  10 d0 8d e2                                      add sp, sp, #0x10
003904f4  70 40 bd e8                                      pop {r4, r5, r6, lr}
003904f8  db 79 03 ea                                      b #0x46ec6c
003904fc  00 00 54 e3                                      cmp r4, #0
00390500  03 00 00 1a                                      bne #0x390514
00390504  02 00 a0 e1                                      mov r0, r2
00390508  10 d0 8d e2                                      add sp, sp, #0x10
0039050c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00390510  26 11 00 ea                                      b #0x3949b0
00390514  02 00 a0 e1                                      mov r0, r2
00390518  10 d0 8d e2                                      add sp, sp, #0x10
0039051c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00390520  45 11 00 ea                                      b #0x394a3c
00390524  b2 32 d0 e1                                      ldrh r3, [r0, #0x22]
00390528  f4 12 d0 e1                                      ldrsh r1, [r0, #0x24]
0039052c  b0 22 d0 e1                                      ldrh r2, [r0, #0x20]
00390530  1c 30 c3 e3                                      bic r3, r3, #0x1c
00390534  03 38 a0 e1                                      lsl r3, r3, #0x10
00390538  00 40 8d e5                                      str r4, [sp]
0039053c  23 38 a0 e1                                      lsr r3, r3, #0x10
00390540  e8 79 03 eb                                      bl #0x46ece8
00390544  bf ff ff ea                                      b #0x390448

; FUNCTION 0x00390548, declared_size=220, range_size=220, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject21_SetTargetListSortingERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_SetTargetListSorting(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00390548  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0039054c  04 30 90 e5                                      ldr r3, [r0, #4]
00390550  02 50 a0 e1                                      mov r5, r2
00390554  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
00390558  06 00 93 e8                                      ldm r3, {r1, r2}
0039055c  04 40 8f e0                                      add r4, pc, r4
00390560  02 30 61 e0                                      rsb r3, r1, r2
00390564  43 32 a0 e1                                      asr r3, r3, #4
00390568  83 21 83 e0                                      add r2, r3, r3, lsl #3
0039056c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00390570  82 21 83 e0                                      add r2, r3, r2, lsl #3
00390574  82 27 82 e0                                      add r2, r2, r2, lsl #15
00390578  82 31 83 e0                                      add r3, r3, r2, lsl #3
0039057c  00 00 53 e3                                      cmp r3, #0
00390580  00 00 00 1a                                      bne #0x390588
00390584  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00390588  04 30 91 e5                                      ldr r3, [r1, #4]
0039058c  03 00 53 e3                                      cmp r3, #3
00390590  fb ff ff 1a                                      bne #0x390584
00390594  00 10 a0 e3                                      mov r1, #0
00390598  56 ad ff eb                                      bl #0x37baf8
0039059c  93 2d fe eb                                      bl #0x31bbf0
003905a0  c9 f7 fd eb                                      bl #0x30e4cc
003905a4  14 23 95 e5                                      ldr r2, [r5, #0x314]
003905a8  04 33 95 e5                                      ldr r3, [r5, #0x304]
003905ac  00 70 a0 e1                                      mov r7, r0
003905b0  03 00 52 e1                                      cmp r2, r3
003905b4  06 00 00 0a                                      beq #0x3905d4
003905b8  c1 6f 85 e2                                      add r6, r5, #0x304
003905bc  06 00 a0 e1                                      mov r0, r6
003905c0  54 fd ff eb                                      bl #0x38fb18
003905c4  14 23 95 e5                                      ldr r2, [r5, #0x314]
003905c8  04 33 95 e5                                      ldr r3, [r5, #0x304]
003905cc  03 00 52 e1                                      cmp r2, r3
003905d0  f9 ff ff 1a                                      bne #0x3905bc
003905d4  01 00 57 e3                                      cmp r7, #1
003905d8  09 00 00 0a                                      beq #0x390604
003905dc  02 00 57 e3                                      cmp r7, #2
003905e0  03 00 00 0a                                      beq #0x3905f4
003905e4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003905e8  03 30 94 e7                                      ldr r3, [r4, r3]
003905ec  2c 33 85 e5                                      str r3, [r5, #0x32c]
003905f0  e3 ff ff ea                                      b #0x390584
003905f4  20 30 9f e5                                      ldr r3, [pc, #0x20]
003905f8  03 30 94 e7                                      ldr r3, [r4, r3]
003905fc  2c 33 85 e5                                      str r3, [r5, #0x32c]
00390600  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00390604  14 30 9f e5                                      ldr r3, [pc, #0x14]
00390608  03 30 94 e7                                      ldr r3, [r4, r3]
0039060c  2c 33 85 e5                                      str r3, [r5, #0x32c]
00390610  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00390614  34 45 60 00 74 2c 00 00 d4 1f 00 00 c4 4a 00 00  .byte 0x34, 0x45, 0x60, 0x00, 0x74, 0x2c, 0x00, 0x00, 0xd4, 0x1f, 0x00, 0x00, 0xc4, 0x4a, 0x00, 0x00

; FUNCTION 0x00390624, declared_size=108, range_size=108, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject26_SetTargetListObjectFilterERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_SetTargetListObjectFilter(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00390624  04 e0 2d e5                                      str lr, [sp, #-4]!
00390628  04 30 90 e5                                      ldr r3, [r0, #4]
0039062c  0c d0 4d e2                                      sub sp, sp, #0xc
00390630  04 10 93 e5                                      ldr r1, [r3, #4]
00390634  00 c0 93 e5                                      ldr ip, [r3]
00390638  01 30 6c e0                                      rsb r3, ip, r1
0039063c  43 32 a0 e1                                      asr r3, r3, #4
00390640  83 11 83 e0                                      add r1, r3, r3, lsl #3
00390644  01 13 81 e0                                      add r1, r1, r1, lsl #6
00390648  81 11 83 e0                                      add r1, r3, r1, lsl #3
0039064c  81 17 81 e0                                      add r1, r1, r1, lsl #15
00390650  81 31 83 e0                                      add r3, r3, r1, lsl #3
00390654  00 00 53 e3                                      cmp r3, #0
00390658  01 00 00 1a                                      bne #0x390664
0039065c  0c d0 8d e2                                      add sp, sp, #0xc
00390660  00 80 bd e8                                      ldm sp!, {pc}
00390664  04 30 9c e5                                      ldr r3, [ip, #4]
00390668  03 00 53 e3                                      cmp r3, #3
0039066c  fa ff ff 1a                                      bne #0x39065c
00390670  00 10 a0 e3                                      mov r1, #0
00390674  04 20 8d e5                                      str r2, [sp, #4]
00390678  1e ad ff eb                                      bl #0x37baf8
0039067c  5b 2d fe eb                                      bl #0x31bbf0
00390680  91 f7 fd eb                                      bl #0x30e4cc
00390684  04 20 9d e5                                      ldr r2, [sp, #4]
00390688  3c 03 82 e5                                      str r0, [r2, #0x33c]
0039068c  f2 ff ff ea                                      b #0x39065c

; FUNCTION 0x00390690, declared_size=108, range_size=108, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject29_SetTargetListCharacterFilterERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_SetTargetListCharacterFilter(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00390690  04 e0 2d e5                                      str lr, [sp, #-4]!
00390694  04 30 90 e5                                      ldr r3, [r0, #4]
00390698  0c d0 4d e2                                      sub sp, sp, #0xc
0039069c  04 10 93 e5                                      ldr r1, [r3, #4]
003906a0  00 c0 93 e5                                      ldr ip, [r3]
003906a4  01 30 6c e0                                      rsb r3, ip, r1
003906a8  43 32 a0 e1                                      asr r3, r3, #4
003906ac  83 11 83 e0                                      add r1, r3, r3, lsl #3
003906b0  01 13 81 e0                                      add r1, r1, r1, lsl #6
003906b4  81 11 83 e0                                      add r1, r3, r1, lsl #3
003906b8  81 17 81 e0                                      add r1, r1, r1, lsl #15
003906bc  81 31 83 e0                                      add r3, r3, r1, lsl #3
003906c0  00 00 53 e3                                      cmp r3, #0
003906c4  01 00 00 1a                                      bne #0x3906d0
003906c8  0c d0 8d e2                                      add sp, sp, #0xc
003906cc  00 80 bd e8                                      ldm sp!, {pc}
003906d0  04 30 9c e5                                      ldr r3, [ip, #4]
003906d4  03 00 53 e3                                      cmp r3, #3
003906d8  fa ff ff 1a                                      bne #0x3906c8
003906dc  00 10 a0 e3                                      mov r1, #0
003906e0  04 20 8d e5                                      str r2, [sp, #4]
003906e4  03 ad ff eb                                      bl #0x37baf8
003906e8  40 2d fe eb                                      bl #0x31bbf0
003906ec  76 f7 fd eb                                      bl #0x30e4cc
003906f0  04 20 9d e5                                      ldr r2, [sp, #4]
003906f4  38 03 82 e5                                      str r0, [r2, #0x338]
003906f8  f2 ff ff ea                                      b #0x3906c8

; FUNCTION 0x003906fc, declared_size=400, range_size=400, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject12_DealDamagesERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_DealDamages(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
003906fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00390700  04 70 90 e5                                      ldr r7, [r0, #4]
00390704  01 50 a0 e1                                      mov r5, r1
00390708  02 40 a0 e1                                      mov r4, r2
0039070c  00 30 97 e5                                      ldr r3, [r7]
00390710  04 10 97 e5                                      ldr r1, [r7, #4]
00390714  64 61 9f e5                                      ldr r6, [pc, #0x164]
00390718  40 d0 4d e2                                      sub sp, sp, #0x40
0039071c  01 10 63 e0                                      rsb r1, r3, r1
00390720  41 12 a0 e1                                      asr r1, r1, #4
00390724  06 60 8f e0                                      add r6, pc, r6
00390728  81 21 81 e0                                      add r2, r1, r1, lsl #3
0039072c  00 80 a0 e1                                      mov r8, r0
00390730  02 23 82 e0                                      add r2, r2, r2, lsl #6
00390734  82 21 81 e0                                      add r2, r1, r2, lsl #3
00390738  82 27 82 e0                                      add r2, r2, r2, lsl #15
0039073c  82 11 81 e0                                      add r1, r1, r2, lsl #3
00390740  00 10 61 e2                                      rsb r1, r1, #0
00390744  02 00 51 e3                                      cmp r1, #2
00390748  01 00 00 8a                                      bhi #0x390754
0039074c  40 d0 8d e2                                      add sp, sp, #0x40
00390750  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00390754  00 00 51 e3                                      cmp r1, #0
00390758  03 00 00 1a                                      bne #0x39076c
0039075c  20 01 9f e5                                      ldr r0, [pc, #0x120]
00390760  00 00 8f e0                                      add r0, pc, r0
00390764  d1 e1 0d eb                                      bl #0x708eb0
00390768  00 30 97 e5                                      ldr r3, [r7]
0039076c  04 30 93 e5                                      ldr r3, [r3, #4]
00390770  07 00 53 e3                                      cmp r3, #7
00390774  f4 ff ff 1a                                      bne #0x39074c
00390778  08 00 a0 e1                                      mov r0, r8
0039077c  01 10 a0 e3                                      mov r1, #1
00390780  dc ac ff eb                                      bl #0x37baf8
00390784  04 30 90 e5                                      ldr r3, [r0, #4]
00390788  03 00 53 e3                                      cmp r3, #3
0039078c  ee ff ff 1a                                      bne #0x39074c
00390790  01 10 a0 e3                                      mov r1, #1
00390794  08 00 a0 e1                                      mov r0, r8
00390798  d6 ac ff eb                                      bl #0x37baf8
0039079c  fd f3 ff eb                                      bl #0x38d798
003907a0  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
003907a4  03 30 96 e7                                      ldr r3, [r6, r3]
003907a8  00 30 93 e5                                      ldr r3, [r3]
003907ac  03 00 50 e1                                      cmp r0, r3
003907b0  e5 ff ff 2a                                      bhs #0x39074c
003907b4  00 10 a0 e3                                      mov r1, #0
003907b8  08 00 a0 e1                                      mov r0, r8
003907bc  cd ac ff eb                                      bl #0x37baf8
003907c0  76 2b fe eb                                      bl #0x31b5a0
003907c4  00 70 50 e2                                      subs r7, r0, #0
003907c8  df ff ff 0a                                      beq #0x39074c
003907cc  34 60 8d e2                                      add r6, sp, #0x34
003907d0  06 00 a0 e1                                      mov r0, r6
003907d4  07 10 a0 e1                                      mov r1, r7
003907d8  53 b5 fe eb                                      bl #0x33dd2c
003907dc  06 00 a0 e1                                      mov r0, r6
003907e0  db bd fe eb                                      bl #0x33ff54
003907e4  00 60 50 e2                                      subs r6, r0, #0
003907e8  14 00 00 0a                                      beq #0x390840
003907ec  01 10 a0 e3                                      mov r1, #1
003907f0  08 00 a0 e1                                      mov r0, r8
003907f4  bf ac ff eb                                      bl #0x37baf8
003907f8  e6 f3 ff eb                                      bl #0x38d798
003907fc  0c 70 8d e2                                      add r7, sp, #0xc
00390800  00 30 a0 e1                                      mov r3, r0
00390804  00 80 a0 e3                                      mov r8, #0
00390808  07 00 a0 e1                                      mov r0, r7
0039080c  04 10 a0 e1                                      mov r1, r4
00390810  06 20 a0 e1                                      mov r2, r6
00390814  00 80 8d e5                                      str r8, [sp]
00390818  7f 7f 00 eb                                      bl #0x3b061c
0039081c  07 00 a0 e1                                      mov r0, r7
00390820  04 10 a0 e1                                      mov r1, r4
00390824  06 20 a0 e1                                      mov r2, r6
00390828  08 30 a0 e1                                      mov r3, r8
0039082c  61 7e 00 eb                                      bl #0x3b01b8
00390830  05 00 a0 e1                                      mov r0, r5
00390834  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00390838  b9 b0 ff eb                                      bl #0x37cb24
0039083c  c2 ff ff ea                                      b #0x39074c
00390840  00 30 97 e5                                      ldr r3, [r7]
00390844  07 00 a0 e1                                      mov r0, r7
00390848  04 10 a0 e1                                      mov r1, r4
0039084c  0f e0 a0 e1                                      mov lr, pc
00390850  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00390854  08 00 50 e3                                      cmp r0, #8
00390858  bb ff ff 1a                                      bne #0x39074c
0039085c  07 00 a0 e1                                      mov r0, r7
00390860  04 10 a0 e1                                      mov r1, r4
00390864  00 30 97 e5                                      ldr r3, [r7]
00390868  0f e0 a0 e1                                      mov lr, pc
0039086c  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00390870  05 00 a0 e1                                      mov r0, r5
00390874  06 10 a0 e1                                      mov r1, r6
00390878  d9 af ff eb                                      bl #0x37c7e4
0039087c  b2 ff ff ea                                      b #0x39074c
; mapping-symbol data/literal pool
00390880  6c 43 60 00 08 dd 52 00 0c 2f 00 00              .byte 0x6c, 0x43, 0x60, 0x00, 0x08, 0xdd, 0x52, 0x00, 0x0c, 0x2f, 0x00, 0x00

; FUNCTION 0x0039088c, declared_size=116, range_size=116, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject15_MarkAsSwimmingERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_MarkAsSwimming(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0039088c  04 e0 2d e5                                      str lr, [sp, #-4]!
00390890  04 30 90 e5                                      ldr r3, [r0, #4]
00390894  0c d0 4d e2                                      sub sp, sp, #0xc
00390898  04 10 93 e5                                      ldr r1, [r3, #4]
0039089c  00 c0 93 e5                                      ldr ip, [r3]
003908a0  01 30 6c e0                                      rsb r3, ip, r1
003908a4  43 32 a0 e1                                      asr r3, r3, #4
003908a8  83 11 83 e0                                      add r1, r3, r3, lsl #3
003908ac  01 13 81 e0                                      add r1, r1, r1, lsl #6
003908b0  81 11 83 e0                                      add r1, r3, r1, lsl #3
003908b4  81 17 81 e0                                      add r1, r1, r1, lsl #15
003908b8  81 31 83 e0                                      add r3, r3, r1, lsl #3
003908bc  00 00 53 e3                                      cmp r3, #0
003908c0  01 00 00 1a                                      bne #0x3908cc
003908c4  0c d0 8d e2                                      add sp, sp, #0xc
003908c8  00 80 bd e8                                      ldm sp!, {pc}
003908cc  04 30 9c e5                                      ldr r3, [ip, #4]
003908d0  01 00 53 e3                                      cmp r3, #1
003908d4  fa ff ff 1a                                      bne #0x3908c4
003908d8  00 10 a0 e3                                      mov r1, #0
003908dc  04 20 8d e5                                      str r2, [sp, #4]
003908e0  84 ac ff eb                                      bl #0x37baf8
003908e4  e5 2c fe eb                                      bl #0x31bc80
003908e8  04 20 9d e5                                      ldr r2, [sp, #4]
003908ec  00 10 a0 e1                                      mov r1, r0
003908f0  72 0f 82 e2                                      add r0, r2, #0x1c8
003908f4  0c d0 8d e2                                      add sp, sp, #0xc
003908f8  04 e0 9d e4                                      pop {lr}
003908fc  45 4e 06 ea                                      b #0x524218

; FUNCTION 0x00390900, declared_size=116, range_size=116, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject13_MarkAsFlyingERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_MarkAsFlying(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00390900  04 e0 2d e5                                      str lr, [sp, #-4]!
00390904  04 30 90 e5                                      ldr r3, [r0, #4]
00390908  0c d0 4d e2                                      sub sp, sp, #0xc
0039090c  04 10 93 e5                                      ldr r1, [r3, #4]
00390910  00 c0 93 e5                                      ldr ip, [r3]
00390914  01 30 6c e0                                      rsb r3, ip, r1
00390918  43 32 a0 e1                                      asr r3, r3, #4
0039091c  83 11 83 e0                                      add r1, r3, r3, lsl #3
00390920  01 13 81 e0                                      add r1, r1, r1, lsl #6
00390924  81 11 83 e0                                      add r1, r3, r1, lsl #3
00390928  81 17 81 e0                                      add r1, r1, r1, lsl #15
0039092c  81 31 83 e0                                      add r3, r3, r1, lsl #3
00390930  00 00 53 e3                                      cmp r3, #0
00390934  01 00 00 1a                                      bne #0x390940
00390938  0c d0 8d e2                                      add sp, sp, #0xc
0039093c  00 80 bd e8                                      ldm sp!, {pc}
00390940  04 30 9c e5                                      ldr r3, [ip, #4]
00390944  01 00 53 e3                                      cmp r3, #1
00390948  fa ff ff 1a                                      bne #0x390938
0039094c  00 10 a0 e3                                      mov r1, #0
00390950  04 20 8d e5                                      str r2, [sp, #4]
00390954  67 ac ff eb                                      bl #0x37baf8
00390958  c8 2c fe eb                                      bl #0x31bc80
0039095c  04 20 9d e5                                      ldr r2, [sp, #4]
00390960  00 10 a0 e1                                      mov r1, r0
00390964  72 0f 82 e2                                      add r0, r2, #0x1c8
00390968  0c d0 8d e2                                      add sp, sp, #0xc
0039096c  04 e0 9d e4                                      pop {lr}
00390970  1f 4e 06 ea                                      b #0x5241f4

; FUNCTION 0x00390974, declared_size=456, range_size=456, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject14_SetFXEndPointERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_SetFXEndPoint(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00390974  30 40 2d e9                                      push {r4, r5, lr}
00390978  04 20 90 e5                                      ldr r2, [r0, #4]
0039097c  14 d0 4d e2                                      sub sp, sp, #0x14
00390980  00 40 a0 e1                                      mov r4, r0
00390984  0a 00 92 e8                                      ldm r2, {r1, r3}
00390988  03 30 61 e0                                      rsb r3, r1, r3
0039098c  43 32 a0 e1                                      asr r3, r3, #4
00390990  83 21 83 e0                                      add r2, r3, r3, lsl #3
00390994  02 23 82 e0                                      add r2, r2, r2, lsl #6
00390998  82 21 83 e0                                      add r2, r3, r2, lsl #3
0039099c  82 27 82 e0                                      add r2, r2, r2, lsl #15
003909a0  82 31 83 e0                                      add r3, r3, r2, lsl #3
003909a4  00 30 63 e2                                      rsb r3, r3, #0
003909a8  02 00 53 e3                                      cmp r3, #2
003909ac  03 00 00 0a                                      beq #0x3909c0
003909b0  04 00 53 e3                                      cmp r3, #4
003909b4  01 00 00 0a                                      beq #0x3909c0
003909b8  14 d0 8d e2                                      add sp, sp, #0x14
003909bc  30 80 bd e8                                      pop {r4, r5, pc}
003909c0  04 20 91 e5                                      ldr r2, [r1, #4]
003909c4  02 00 52 e3                                      cmp r2, #2
003909c8  fa ff ff 1a                                      bne #0x3909b8
003909cc  02 00 53 e3                                      cmp r3, #2
003909d0  29 00 00 0a                                      beq #0x390a7c
003909d4  04 00 53 e3                                      cmp r3, #4
003909d8  39 00 00 0a                                      beq #0x390ac4
003909dc  00 10 a0 e3                                      mov r1, #0
003909e0  04 00 a0 e1                                      mov r0, r4
003909e4  43 ac ff eb                                      bl #0x37baf8
003909e8  e4 2a fe eb                                      bl #0x31b580
003909ec  04 20 94 e5                                      ldr r2, [r4, #4]
003909f0  00 30 a0 e3                                      mov r3, #0
003909f4  0c 30 8d e5                                      str r3, [sp, #0xc]
003909f8  04 30 8d e5                                      str r3, [sp, #4]
003909fc  08 30 8d e5                                      str r3, [sp, #8]
00390a00  00 30 92 e5                                      ldr r3, [r2]
00390a04  04 20 92 e5                                      ldr r2, [r2, #4]
00390a08  00 50 a0 e1                                      mov r5, r0
00390a0c  02 30 63 e0                                      rsb r3, r3, r2
00390a10  43 32 a0 e1                                      asr r3, r3, #4
00390a14  83 21 83 e0                                      add r2, r3, r3, lsl #3
00390a18  02 23 82 e0                                      add r2, r2, r2, lsl #6
00390a1c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00390a20  82 27 82 e0                                      add r2, r2, r2, lsl #15
00390a24  82 31 83 e0                                      add r3, r3, r2, lsl #3
00390a28  02 00 73 e3                                      cmn r3, #2
00390a2c  36 00 00 0a                                      beq #0x390b0c
00390a30  01 10 a0 e3                                      mov r1, #1
00390a34  04 00 a0 e1                                      mov r0, r4
00390a38  2e ac ff eb                                      bl #0x37baf8
00390a3c  6b 2c fe eb                                      bl #0x31bbf0
00390a40  02 10 a0 e3                                      mov r1, #2
00390a44  04 00 8d e5                                      str r0, [sp, #4]
00390a48  04 00 a0 e1                                      mov r0, r4
00390a4c  29 ac ff eb                                      bl #0x37baf8
00390a50  66 2c fe eb                                      bl #0x31bbf0
00390a54  03 10 a0 e3                                      mov r1, #3
00390a58  08 00 8d e5                                      str r0, [sp, #8]
00390a5c  04 00 a0 e1                                      mov r0, r4
00390a60  24 ac ff eb                                      bl #0x37baf8
00390a64  61 2c fe eb                                      bl #0x31bbf0
00390a68  0c 00 8d e5                                      str r0, [sp, #0xc]
00390a6c  05 00 a0 e1                                      mov r0, r5
00390a70  04 10 8d e2                                      add r1, sp, #4
00390a74  b9 06 04 eb                                      bl #0x492560
00390a78  ce ff ff ea                                      b #0x3909b8
00390a7c  04 00 a0 e1                                      mov r0, r4
00390a80  01 10 a0 e3                                      mov r1, #1
00390a84  1b ac ff eb                                      bl #0x37baf8
00390a88  04 30 90 e5                                      ldr r3, [r0, #4]
00390a8c  07 00 53 e3                                      cmp r3, #7
00390a90  c8 ff ff 1a                                      bne #0x3909b8
00390a94  04 30 94 e5                                      ldr r3, [r4, #4]
00390a98  04 20 93 e5                                      ldr r2, [r3, #4]
00390a9c  00 30 93 e5                                      ldr r3, [r3]
00390aa0  02 30 63 e0                                      rsb r3, r3, r2
00390aa4  43 32 a0 e1                                      asr r3, r3, #4
00390aa8  83 21 83 e0                                      add r2, r3, r3, lsl #3
00390aac  02 23 82 e0                                      add r2, r2, r2, lsl #6
00390ab0  82 21 83 e0                                      add r2, r3, r2, lsl #3
00390ab4  82 27 82 e0                                      add r2, r2, r2, lsl #15
00390ab8  82 31 83 e0                                      add r3, r3, r2, lsl #3
00390abc  00 30 63 e2                                      rsb r3, r3, #0
00390ac0  c3 ff ff ea                                      b #0x3909d4
00390ac4  04 00 a0 e1                                      mov r0, r4
00390ac8  01 10 a0 e3                                      mov r1, #1
00390acc  09 ac ff eb                                      bl #0x37baf8
00390ad0  04 30 90 e5                                      ldr r3, [r0, #4]
00390ad4  03 00 53 e3                                      cmp r3, #3
00390ad8  b6 ff ff 1a                                      bne #0x3909b8
00390adc  02 10 a0 e3                                      mov r1, #2
00390ae0  04 00 a0 e1                                      mov r0, r4
00390ae4  03 ac ff eb                                      bl #0x37baf8
00390ae8  04 10 90 e5                                      ldr r1, [r0, #4]
00390aec  03 00 51 e3                                      cmp r1, #3
00390af0  b0 ff ff 1a                                      bne #0x3909b8
00390af4  04 00 a0 e1                                      mov r0, r4
00390af8  fe ab ff eb                                      bl #0x37baf8
00390afc  04 30 90 e5                                      ldr r3, [r0, #4]
00390b00  03 00 53 e3                                      cmp r3, #3
00390b04  ab ff ff 1a                                      bne #0x3909b8
00390b08  b3 ff ff ea                                      b #0x3909dc
00390b0c  01 10 a0 e3                                      mov r1, #1
00390b10  04 00 a0 e1                                      mov r0, r4
00390b14  f7 ab ff eb                                      bl #0x37baf8
00390b18  a0 2a fe eb                                      bl #0x31b5a0
00390b1c  ae 0a 00 eb                                      bl #0x3935dc
00390b20  00 30 90 e5                                      ldr r3, [r0]
00390b24  04 30 8d e5                                      str r3, [sp, #4]
00390b28  04 30 90 e5                                      ldr r3, [r0, #4]
00390b2c  08 30 8d e5                                      str r3, [sp, #8]
00390b30  08 30 90 e5                                      ldr r3, [r0, #8]
00390b34  0c 30 8d e5                                      str r3, [sp, #0xc]
00390b38  cb ff ff ea                                      b #0x390a6c

; FUNCTION 0x00390b3c, declared_size=152, range_size=152, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject11_SetMaxPathERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_SetMaxPath(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00390b3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00390b40  04 30 90 e5                                      ldr r3, [r0, #4]
00390b44  02 50 a0 e1                                      mov r5, r2
00390b48  00 40 a0 e1                                      mov r4, r0
00390b4c  06 00 93 e8                                      ldm r3, {r1, r2}
00390b50  02 30 61 e0                                      rsb r3, r1, r2
00390b54  43 32 a0 e1                                      asr r3, r3, #4
00390b58  83 21 83 e0                                      add r2, r3, r3, lsl #3
00390b5c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00390b60  82 21 83 e0                                      add r2, r3, r2, lsl #3
00390b64  82 27 82 e0                                      add r2, r2, r2, lsl #15
00390b68  82 31 83 e0                                      add r3, r3, r2, lsl #3
00390b6c  00 00 53 e3                                      cmp r3, #0
00390b70  00 00 00 1a                                      bne #0x390b78
00390b74  70 80 bd e8                                      pop {r4, r5, r6, pc}
00390b78  04 30 91 e5                                      ldr r3, [r1, #4]
00390b7c  03 00 53 e3                                      cmp r3, #3
00390b80  fb ff ff 1a                                      bne #0x390b74
00390b84  00 30 95 e5                                      ldr r3, [r5]
00390b88  05 00 a0 e1                                      mov r0, r5
00390b8c  0f e0 a0 e1                                      mov lr, pc
00390b90  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00390b94  00 00 50 e3                                      cmp r0, #0
00390b98  f5 ff ff 0a                                      beq #0x390b74
00390b9c  05 00 a0 e1                                      mov r0, r5
00390ba0  35 49 00 eb                                      bl #0x3a307c
00390ba4  00 00 50 e3                                      cmp r0, #0
00390ba8  f1 ff ff 0a                                      beq #0x390b74
00390bac  00 10 a0 e3                                      mov r1, #0
00390bb0  04 00 a0 e1                                      mov r0, r4
00390bb4  cf ab ff eb                                      bl #0x37baf8
00390bb8  f6 f2 ff eb                                      bl #0x38d798
00390bbc  64 00 50 e3                                      cmp r0, #0x64
00390bc0  6c 02 85 e5                                      str r0, [r5, #0x26c]
00390bc4  ea ff ff 9a                                      bls #0x390b74
00390bc8  64 30 a0 e3                                      mov r3, #0x64
00390bcc  6c 32 85 e5                                      str r3, [r5, #0x26c]
00390bd0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00390bd4, declared_size=124, range_size=124, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject17_TargetListBackupERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_TargetListBackup(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00390bd4  04 e0 2d e5                                      str lr, [sp, #-4]!
00390bd8  04 30 90 e5                                      ldr r3, [r0, #4]
00390bdc  0c d0 4d e2                                      sub sp, sp, #0xc
00390be0  03 00 93 e8                                      ldm r3, {r0, r1}
00390be4  01 30 60 e0                                      rsb r3, r0, r1
00390be8  43 32 a0 e1                                      asr r3, r3, #4
00390bec  83 11 83 e0                                      add r1, r3, r3, lsl #3
00390bf0  01 13 81 e0                                      add r1, r1, r1, lsl #6
00390bf4  81 11 83 e0                                      add r1, r3, r1, lsl #3
00390bf8  81 17 81 e0                                      add r1, r1, r1, lsl #15
00390bfc  81 31 83 e0                                      add r3, r3, r1, lsl #3
00390c00  00 00 53 e3                                      cmp r3, #0
00390c04  05 00 00 1a                                      bne #0x390c20
00390c08  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00390c0c  c1 0f 82 e2                                      add r0, r2, #0x304
00390c10  01 10 8f e0                                      add r1, pc, r1
00390c14  0c d0 8d e2                                      add sp, sp, #0xc
00390c18  04 e0 9d e4                                      pop {lr}
00390c1c  a3 4a 04 ea                                      b #0x4a36b0
00390c20  04 30 90 e5                                      ldr r3, [r0, #4]
00390c24  04 00 53 e3                                      cmp r3, #4
00390c28  f6 ff ff 1a                                      bne #0x390c08
00390c2c  04 20 8d e5                                      str r2, [sp, #4]
00390c30  19 2e fe eb                                      bl #0x31c49c
00390c34  04 20 9d e5                                      ldr r2, [sp, #4]
00390c38  00 10 a0 e1                                      mov r1, r0
00390c3c  c1 0f 82 e2                                      add r0, r2, #0x304
00390c40  0c d0 8d e2                                      add sp, sp, #0xc
00390c44  04 e0 9d e4                                      pop {lr}
00390c48  98 4a 04 ea                                      b #0x4a36b0
; mapping-symbol data/literal pool
00390c4c  b0 fc 52 00                                      .byte 0xb0, 0xfc, 0x52, 0x00

; FUNCTION 0x00390c50, declared_size=716, range_size=716, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject16_SummonTimerTrapERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_SummonTimerTrap(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00390c50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00390c54  04 50 90 e5                                      ldr r5, [r0, #4]
00390c58  01 70 a0 e1                                      mov r7, r1
00390c5c  02 80 a0 e1                                      mov r8, r2
00390c60  00 30 95 e5                                      ldr r3, [r5]
00390c64  04 10 95 e5                                      ldr r1, [r5, #4]
00390c68  98 42 9f e5                                      ldr r4, [pc, #0x298]
00390c6c  10 d0 4d e2                                      sub sp, sp, #0x10
00390c70  01 10 63 e0                                      rsb r1, r3, r1
00390c74  41 12 a0 e1                                      asr r1, r1, #4
00390c78  04 40 8f e0                                      add r4, pc, r4
00390c7c  81 21 81 e0                                      add r2, r1, r1, lsl #3
00390c80  00 60 a0 e1                                      mov r6, r0
00390c84  02 23 82 e0                                      add r2, r2, r2, lsl #6
00390c88  82 21 81 e0                                      add r2, r1, r2, lsl #3
00390c8c  82 27 82 e0                                      add r2, r2, r2, lsl #15
00390c90  82 11 81 e0                                      add r1, r1, r2, lsl #3
00390c94  00 10 61 e2                                      rsb r1, r1, #0
00390c98  01 00 51 e3                                      cmp r1, #1
00390c9c  04 00 00 9a                                      bls #0x390cb4
00390ca0  00 00 51 e3                                      cmp r1, #0
00390ca4  04 00 00 0a                                      beq #0x390cbc
00390ca8  04 30 93 e5                                      ldr r3, [r3, #4]
00390cac  03 00 53 e3                                      cmp r3, #3
00390cb0  06 00 00 0a                                      beq #0x390cd0
00390cb4  10 d0 8d e2                                      add sp, sp, #0x10
00390cb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00390cbc  48 02 9f e5                                      ldr r0, [pc, #0x248]
00390cc0  00 00 8f e0                                      add r0, pc, r0
00390cc4  79 e0 0d eb                                      bl #0x708eb0
00390cc8  00 30 95 e5                                      ldr r3, [r5]
00390ccc  f5 ff ff ea                                      b #0x390ca8
00390cd0  00 10 a0 e3                                      mov r1, #0
00390cd4  06 00 a0 e1                                      mov r0, r6
00390cd8  86 ab ff eb                                      bl #0x37baf8
00390cdc  ad f2 ff eb                                      bl #0x38d798
00390ce0  28 32 9f e5                                      ldr r3, [pc, #0x228]
00390ce4  03 30 94 e7                                      ldr r3, [r4, r3]
00390ce8  00 30 93 e5                                      ldr r3, [r3]
00390cec  03 00 50 e1                                      cmp r0, r3
00390cf0  ef ff ff 2a                                      bhs #0x390cb4
00390cf4  04 50 96 e5                                      ldr r5, [r6, #4]
00390cf8  00 30 95 e5                                      ldr r3, [r5]
00390cfc  04 20 95 e5                                      ldr r2, [r5, #4]
00390d00  02 20 63 e0                                      rsb r2, r3, r2
00390d04  42 22 a0 e1                                      asr r2, r2, #4
00390d08  82 11 82 e0                                      add r1, r2, r2, lsl #3
00390d0c  01 13 81 e0                                      add r1, r1, r1, lsl #6
00390d10  81 11 82 e0                                      add r1, r2, r1, lsl #3
00390d14  81 17 81 e0                                      add r1, r1, r1, lsl #15
00390d18  81 21 82 e0                                      add r2, r2, r1, lsl #3
00390d1c  00 20 62 e2                                      rsb r2, r2, #0
00390d20  01 00 52 e3                                      cmp r2, #1
00390d24  03 00 00 8a                                      bhi #0x390d38
00390d28  e4 01 9f e5                                      ldr r0, [pc, #0x1e4]
00390d2c  00 00 8f e0                                      add r0, pc, r0
00390d30  5e e0 0d eb                                      bl #0x708eb0
00390d34  00 30 95 e5                                      ldr r3, [r5]
00390d38  74 30 93 e5                                      ldr r3, [r3, #0x74]
00390d3c  03 00 53 e3                                      cmp r3, #3
00390d40  db ff ff 1a                                      bne #0x390cb4
00390d44  01 10 a0 e3                                      mov r1, #1
00390d48  06 00 a0 e1                                      mov r0, r6
00390d4c  69 ab ff eb                                      bl #0x37baf8
00390d50  90 f2 ff eb                                      bl #0x38d798
00390d54  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
00390d58  03 30 94 e7                                      ldr r3, [r4, r3]
00390d5c  00 30 93 e5                                      ldr r3, [r3]
00390d60  03 00 50 e1                                      cmp r0, r3
00390d64  d2 ff ff 2a                                      bhs #0x390cb4
00390d68  00 10 a0 e3                                      mov r1, #0
00390d6c  06 00 a0 e1                                      mov r0, r6
00390d70  60 ab ff eb                                      bl #0x37baf8
00390d74  9d 2b fe eb                                      bl #0x31bbf0
00390d78  01 10 a0 e3                                      mov r1, #1
00390d7c  00 40 a0 e1                                      mov r4, r0
00390d80  06 00 a0 e1                                      mov r0, r6
00390d84  5b ab ff eb                                      bl #0x37baf8
00390d88  98 2b fe eb                                      bl #0x31bbf0
00390d8c  00 50 a0 e1                                      mov r5, r0
00390d90  04 00 a0 e1                                      mov r0, r4
00390d94  cc f5 fd eb                                      bl #0x30e4cc
00390d98  00 40 a0 e1                                      mov r4, r0
00390d9c  05 00 a0 e1                                      mov r0, r5
00390da0  c9 f5 fd eb                                      bl #0x30e4cc
00390da4  04 10 a0 e1                                      mov r1, r4
00390da8  00 20 a0 e1                                      mov r2, r0
00390dac  08 00 a0 e1                                      mov r0, r8
00390db0  5b 32 00 eb                                      bl #0x39d724
00390db4  04 20 96 e5                                      ldr r2, [r6, #4]
00390db8  00 40 a0 e1                                      mov r4, r0
00390dbc  00 30 92 e5                                      ldr r3, [r2]
00390dc0  04 20 92 e5                                      ldr r2, [r2, #4]
00390dc4  02 30 63 e0                                      rsb r3, r3, r2
00390dc8  43 32 a0 e1                                      asr r3, r3, #4
00390dcc  83 21 83 e0                                      add r2, r3, r3, lsl #3
00390dd0  02 23 82 e0                                      add r2, r2, r2, lsl #6
00390dd4  82 21 83 e0                                      add r2, r3, r2, lsl #3
00390dd8  82 27 82 e0                                      add r2, r2, r2, lsl #15
00390ddc  82 31 83 e0                                      add r3, r3, r2, lsl #3
00390de0  00 30 63 e2                                      rsb r3, r3, #0
00390de4  02 00 53 e3                                      cmp r3, #2
00390de8  03 00 00 8a                                      bhi #0x390dfc
00390dec  07 00 a0 e1                                      mov r0, r7
00390df0  04 10 a0 e1                                      mov r1, r4
00390df4  ff ae ff eb                                      bl #0x37c9f8
00390df8  ad ff ff ea                                      b #0x390cb4
00390dfc  06 00 a0 e1                                      mov r0, r6
00390e00  02 10 a0 e3                                      mov r1, #2
00390e04  3b ab ff eb                                      bl #0x37baf8
00390e08  04 30 90 e5                                      ldr r3, [r0, #4]
00390e0c  07 00 53 e3                                      cmp r3, #7
00390e10  33 00 00 0a                                      beq #0x390ee4
00390e14  04 20 96 e5                                      ldr r2, [r6, #4]
00390e18  04 10 92 e5                                      ldr r1, [r2, #4]
00390e1c  00 30 92 e5                                      ldr r3, [r2]
00390e20  01 30 63 e0                                      rsb r3, r3, r1
00390e24  43 32 a0 e1                                      asr r3, r3, #4
00390e28  83 21 83 e0                                      add r2, r3, r3, lsl #3
00390e2c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00390e30  82 21 83 e0                                      add r2, r3, r2, lsl #3
00390e34  82 27 82 e0                                      add r2, r2, r2, lsl #15
00390e38  82 31 83 e0                                      add r3, r3, r2, lsl #3
00390e3c  00 30 63 e2                                      rsb r3, r3, #0
00390e40  04 00 53 e3                                      cmp r3, #4
00390e44  e8 ff ff 9a                                      bls #0x390dec
00390e48  02 10 a0 e3                                      mov r1, #2
00390e4c  06 00 a0 e1                                      mov r0, r6
00390e50  28 ab ff eb                                      bl #0x37baf8
00390e54  04 10 90 e5                                      ldr r1, [r0, #4]
00390e58  03 00 51 e3                                      cmp r1, #3
00390e5c  e2 ff ff 1a                                      bne #0x390dec
00390e60  06 00 a0 e1                                      mov r0, r6
00390e64  23 ab ff eb                                      bl #0x37baf8
00390e68  04 30 90 e5                                      ldr r3, [r0, #4]
00390e6c  03 00 53 e3                                      cmp r3, #3
00390e70  dd ff ff 1a                                      bne #0x390dec
00390e74  06 00 a0 e1                                      mov r0, r6
00390e78  04 10 a0 e3                                      mov r1, #4
00390e7c  1d ab ff eb                                      bl #0x37baf8
00390e80  04 50 90 e5                                      ldr r5, [r0, #4]
00390e84  03 00 55 e3                                      cmp r5, #3
00390e88  d7 ff ff 1a                                      bne #0x390dec
00390e8c  02 10 a0 e3                                      mov r1, #2
00390e90  06 00 a0 e1                                      mov r0, r6
00390e94  17 ab ff eb                                      bl #0x37baf8
00390e98  54 2b fe eb                                      bl #0x31bbf0
00390e9c  05 10 a0 e1                                      mov r1, r5
00390ea0  00 80 a0 e1                                      mov r8, r0
00390ea4  06 00 a0 e1                                      mov r0, r6
00390ea8  12 ab ff eb                                      bl #0x37baf8
00390eac  4f 2b fe eb                                      bl #0x31bbf0
00390eb0  04 10 a0 e3                                      mov r1, #4
00390eb4  00 50 a0 e1                                      mov r5, r0
00390eb8  06 00 a0 e1                                      mov r0, r6
00390ebc  0d ab ff eb                                      bl #0x37baf8
00390ec0  4a 2b fe eb                                      bl #0x31bbf0
00390ec4  04 10 8d e2                                      add r1, sp, #4
00390ec8  0c 00 8d e5                                      str r0, [sp, #0xc]
00390ecc  01 20 a0 e3                                      mov r2, #1
00390ed0  04 00 a0 e1                                      mov r0, r4
00390ed4  04 80 8d e5                                      str r8, [sp, #4]
00390ed8  08 50 8d e5                                      str r5, [sp, #8]
00390edc  b4 0b 00 eb                                      bl #0x393db4
00390ee0  c1 ff ff ea                                      b #0x390dec
00390ee4  02 10 a0 e3                                      mov r1, #2
00390ee8  06 00 a0 e1                                      mov r0, r6
00390eec  01 ab ff eb                                      bl #0x37baf8
00390ef0  aa 29 fe eb                                      bl #0x31b5a0
00390ef4  01 20 a0 e3                                      mov r2, #1
00390ef8  16 1e 80 e2                                      add r1, r0, #0x160
00390efc  04 00 a0 e1                                      mov r0, r4
00390f00  ab 0b 00 eb                                      bl #0x393db4
00390f04  b8 ff ff ea                                      b #0x390dec
; mapping-symbol data/literal pool
00390f08  18 3e 60 00 a8 d7 52 00 f8 0d 00 00 3c d7 52 00  .byte 0x18, 0x3e, 0x60, 0x00, 0xa8, 0xd7, 0x52, 0x00, 0xf8, 0x0d, 0x00, 0x00, 0x3c, 0xd7, 0x52, 0x00
00390f18  0c 2f 00 00                                      .byte 0x0c, 0x2f, 0x00, 0x00

; FUNCTION 0x00390f1c, declared_size=1308, range_size=1308, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject10_IsInRangeERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_IsInRange(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00390f1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00390f20  04 70 90 e5                                      ldr r7, [r0, #4]
00390f24  01 60 a0 e1                                      mov r6, r1
00390f28  02 50 a0 e1                                      mov r5, r2
00390f2c  00 30 97 e5                                      ldr r3, [r7]
00390f30  04 10 97 e5                                      ldr r1, [r7, #4]
00390f34  e8 84 9f e5                                      ldr r8, [pc, #0x4e8]
00390f38  34 d0 4d e2                                      sub sp, sp, #0x34
00390f3c  01 10 63 e0                                      rsb r1, r3, r1
00390f40  41 12 a0 e1                                      asr r1, r1, #4
00390f44  08 80 8f e0                                      add r8, pc, r8
00390f48  81 21 81 e0                                      add r2, r1, r1, lsl #3
00390f4c  00 40 a0 e1                                      mov r4, r0
00390f50  02 23 82 e0                                      add r2, r2, r2, lsl #6
00390f54  82 21 81 e0                                      add r2, r1, r2, lsl #3
00390f58  82 27 82 e0                                      add r2, r2, r2, lsl #15
00390f5c  82 11 81 e0                                      add r1, r1, r2, lsl #3
00390f60  00 10 61 e2                                      rsb r1, r1, #0
00390f64  01 00 51 e3                                      cmp r1, #1
00390f68  0a 00 00 9a                                      bls #0x390f98
00390f6c  00 00 51 e3                                      cmp r1, #0
00390f70  03 20 a0 11                                      movne r2, r3
00390f74  79 00 00 0a                                      beq #0x391160
00390f78  04 20 92 e5                                      ldr r2, [r2, #4]
00390f7c  04 00 52 e3                                      cmp r2, #4
00390f80  11 00 00 0a                                      beq #0x390fcc
00390f84  00 00 51 e3                                      cmp r1, #0
00390f88  87 00 00 0a                                      beq #0x3911ac
00390f8c  04 30 93 e5                                      ldr r3, [r3, #4]
00390f90  07 00 53 e3                                      cmp r3, #7
00390f94  01 00 00 0a                                      beq #0x390fa0
00390f98  34 d0 8d e2                                      add sp, sp, #0x34
00390f9c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00390fa0  04 70 94 e5                                      ldr r7, [r4, #4]
00390fa4  00 30 97 e5                                      ldr r3, [r7]
00390fa8  04 20 97 e5                                      ldr r2, [r7, #4]
00390fac  02 20 63 e0                                      rsb r2, r3, r2
00390fb0  42 22 a0 e1                                      asr r2, r2, #4
00390fb4  82 11 82 e0                                      add r1, r2, r2, lsl #3
00390fb8  01 13 81 e0                                      add r1, r1, r1, lsl #6
00390fbc  81 11 82 e0                                      add r1, r2, r1, lsl #3
00390fc0  81 17 81 e0                                      add r1, r1, r1, lsl #15
00390fc4  81 11 82 e0                                      add r1, r2, r1, lsl #3
00390fc8  00 10 61 e2                                      rsb r1, r1, #0
00390fcc  01 00 51 e3                                      cmp r1, #1
00390fd0  7d 00 00 9a                                      bls #0x3911cc
00390fd4  74 30 93 e5                                      ldr r3, [r3, #0x74]
00390fd8  03 00 53 e3                                      cmp r3, #3
00390fdc  ed ff ff 1a                                      bne #0x390f98
00390fe0  04 00 a0 e1                                      mov r0, r4
00390fe4  02 10 a0 e3                                      mov r1, #2
00390fe8  c2 aa ff eb                                      bl #0x37baf8
00390fec  04 30 90 e5                                      ldr r3, [r0, #4]
00390ff0  03 00 53 e3                                      cmp r3, #3
00390ff4  e7 ff ff 1a                                      bne #0x390f98
00390ff8  04 00 a0 e1                                      mov r0, r4
00390ffc  00 10 a0 e3                                      mov r1, #0
00391000  bc aa ff eb                                      bl #0x37baf8
00391004  04 30 90 e5                                      ldr r3, [r0, #4]
00391008  04 00 53 e3                                      cmp r3, #4
0039100c  a7 00 00 0a                                      beq #0x3912b0
00391010  00 10 a0 e3                                      mov r1, #0
00391014  04 00 a0 e1                                      mov r0, r4
00391018  b6 aa ff eb                                      bl #0x37baf8
0039101c  5f 29 fe eb                                      bl #0x31b5a0
00391020  00 70 a0 e1                                      mov r7, r0
00391024  01 10 a0 e3                                      mov r1, #1
00391028  04 00 a0 e1                                      mov r0, r4
0039102c  b1 aa ff eb                                      bl #0x37baf8
00391030  ee 2a fe eb                                      bl #0x31bbf0
00391034  00 00 57 e3                                      cmp r7, #0
00391038  00 80 a0 e1                                      mov r8, r0
0039103c  67 00 00 0a                                      beq #0x3911e0
00391040  dc a2 97 e5                                      ldr sl, [r7, #0x2dc]
00391044  00 00 5a e3                                      cmp sl, #0
00391048  64 00 00 0a                                      beq #0x3911e0
0039104c  10 30 da e5                                      ldrb r3, [sl, #0x10]
00391050  00 00 53 e3                                      cmp r3, #0
00391054  61 00 00 0a                                      beq #0x3911e0
00391058  dc 02 95 e5                                      ldr r0, [r5, #0x2dc]
0039105c  00 00 50 e3                                      cmp r0, #0
00391060  5e 00 00 0a                                      beq #0x3911e0
00391064  b9 75 03 eb                                      bl #0x46e750
00391068  00 30 a0 e1                                      mov r3, r0
0039106c  0a 00 a0 e1                                      mov r0, sl
00391070  10 30 8d e5                                      str r3, [sp, #0x10]
00391074  b5 75 03 eb                                      bl #0x46e750
00391078  60 11 97 e5                                      ldr r1, [r7, #0x160]
0039107c  00 20 a0 e1                                      mov r2, r0
00391080  60 01 95 e5                                      ldr r0, [r5, #0x160]
00391084  0c 20 8d e5                                      str r2, [sp, #0xc]
00391088  c7 f4 fd eb                                      bl #0x30e3ac
0039108c  64 11 97 e5                                      ldr r1, [r7, #0x164]
00391090  00 90 a0 e1                                      mov sb, r0
00391094  64 01 95 e5                                      ldr r0, [r5, #0x164]
00391098  c3 f4 fd eb                                      bl #0x30e3ac
0039109c  68 11 97 e5                                      ldr r1, [r7, #0x168]
003910a0  00 b0 a0 e1                                      mov fp, r0
003910a4  68 01 95 e5                                      ldr r0, [r5, #0x168]
003910a8  bf f4 fd eb                                      bl #0x30e3ac
003910ac  09 10 a0 e1                                      mov r1, sb
003910b0  00 a0 a0 e1                                      mov sl, r0
003910b4  09 00 a0 e1                                      mov r0, sb
003910b8  2b f7 fd eb                                      bl #0x30ed6c
003910bc  0b 10 a0 e1                                      mov r1, fp
003910c0  00 90 a0 e1                                      mov sb, r0
003910c4  0b 00 a0 e1                                      mov r0, fp
003910c8  27 f7 fd eb                                      bl #0x30ed6c
003910cc  00 10 a0 e1                                      mov r1, r0
003910d0  09 00 a0 e1                                      mov r0, sb
003910d4  b2 f6 fd eb                                      bl #0x30eba4
003910d8  0a 10 a0 e1                                      mov r1, sl
003910dc  00 90 a0 e1                                      mov sb, r0
003910e0  0a 00 a0 e1                                      mov r0, sl
003910e4  20 f7 fd eb                                      bl #0x30ed6c
003910e8  00 10 a0 e1                                      mov r1, r0
003910ec  09 00 a0 e1                                      mov r0, sb
003910f0  ab f6 fd eb                                      bl #0x30eba4
003910f4  0a f4 fd eb                                      bl #0x30e124
003910f8  10 30 9d e5                                      ldr r3, [sp, #0x10]
003910fc  03 10 a0 e1                                      mov r1, r3
00391100  a9 f4 fd eb                                      bl #0x30e3ac
00391104  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00391108  02 10 a0 e1                                      mov r1, r2
0039110c  a6 f4 fd eb                                      bl #0x30e3ac
00391110  00 10 a0 e1                                      mov r1, r0
00391114  08 00 a0 e1                                      mov r0, r8
00391118  e5 f4 fd eb                                      bl #0x30e4b4
0039111c  00 00 50 e3                                      cmp r0, #0
00391120  3b 00 00 0a                                      beq #0x391214
00391124  04 30 94 e5                                      ldr r3, [r4, #4]
00391128  0c 00 93 e8                                      ldm r3, {r2, r3}
0039112c  03 30 62 e0                                      rsb r3, r2, r3
00391130  43 32 a0 e1                                      asr r3, r3, #4
00391134  83 21 83 e0                                      add r2, r3, r3, lsl #3
00391138  02 23 82 e0                                      add r2, r2, r2, lsl #6
0039113c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00391140  82 27 82 e0                                      add r2, r2, r2, lsl #15
00391144  82 31 83 e0                                      add r3, r3, r2, lsl #3
00391148  03 00 73 e3                                      cmn r3, #3
0039114c  6b 00 00 0a                                      beq #0x391300
00391150  06 00 a0 e1                                      mov r0, r6
00391154  01 10 a0 e3                                      mov r1, #1
00391158  a1 ad ff eb                                      bl #0x37c7e4
0039115c  8d ff ff ea                                      b #0x390f98
00391160  c0 02 9f e5                                      ldr r0, [pc, #0x2c0]
00391164  00 00 8f e0                                      add r0, pc, r0
00391168  50 df 0d eb                                      bl #0x708eb0
0039116c  00 20 97 e5                                      ldr r2, [r7]
00391170  04 70 94 e5                                      ldr r7, [r4, #4]
00391174  04 20 92 e5                                      ldr r2, [r2, #4]
00391178  00 30 97 e5                                      ldr r3, [r7]
0039117c  04 00 97 e5                                      ldr r0, [r7, #4]
00391180  04 00 52 e3                                      cmp r2, #4
00391184  00 00 63 e0                                      rsb r0, r3, r0
00391188  40 02 a0 e1                                      asr r0, r0, #4
0039118c  80 11 80 e0                                      add r1, r0, r0, lsl #3
00391190  01 13 81 e0                                      add r1, r1, r1, lsl #6
00391194  81 11 80 e0                                      add r1, r0, r1, lsl #3
00391198  81 17 81 e0                                      add r1, r1, r1, lsl #15
0039119c  81 11 80 e0                                      add r1, r0, r1, lsl #3
003911a0  00 10 61 e2                                      rsb r1, r1, #0
003911a4  76 ff ff 1a                                      bne #0x390f84
003911a8  87 ff ff ea                                      b #0x390fcc
003911ac  78 02 9f e5                                      ldr r0, [pc, #0x278]
003911b0  00 00 8f e0                                      add r0, pc, r0
003911b4  3d df 0d eb                                      bl #0x708eb0
003911b8  00 30 97 e5                                      ldr r3, [r7]
003911bc  04 30 93 e5                                      ldr r3, [r3, #4]
003911c0  07 00 53 e3                                      cmp r3, #7
003911c4  73 ff ff 1a                                      bne #0x390f98
003911c8  74 ff ff ea                                      b #0x390fa0
003911cc  5c 02 9f e5                                      ldr r0, [pc, #0x25c]
003911d0  00 00 8f e0                                      add r0, pc, r0
003911d4  35 df 0d eb                                      bl #0x708eb0
003911d8  00 30 97 e5                                      ldr r3, [r7]
003911dc  7c ff ff ea                                      b #0x390fd4
003911e0  08 10 a0 e1                                      mov r1, r8
003911e4  2c 01 95 e5                                      ldr r0, [r5, #0x12c]
003911e8  6f f4 fd eb                                      bl #0x30e3ac
003911ec  38 11 97 e5                                      ldr r1, [r7, #0x138]
003911f0  ed f5 fd eb                                      bl #0x30e9ac
003911f4  40 31 95 e5                                      ldr r3, [r5, #0x140]
003911f8  00 00 50 e3                                      cmp r0, #0
003911fc  30 b1 95 e5                                      ldr fp, [r5, #0x130]
00391200  34 a1 95 e5                                      ldr sl, [r5, #0x134]
00391204  38 11 95 e5                                      ldr r1, [r5, #0x138]
00391208  3c 91 95 e5                                      ldr sb, [r5, #0x13c]
0039120c  14 30 8d e5                                      str r3, [sp, #0x14]
00391210  03 00 00 1a                                      bne #0x391224
00391214  06 00 a0 e1                                      mov r0, r6
00391218  00 10 a0 e3                                      mov r1, #0
0039121c  70 ad ff eb                                      bl #0x37c7e4
00391220  5c ff ff ea                                      b #0x390f98
00391224  08 00 a0 e1                                      mov r0, r8
00391228  5d f6 fd eb                                      bl #0x30eba4
0039122c  2c 11 97 e5                                      ldr r1, [r7, #0x12c]
00391230  9f f4 fd eb                                      bl #0x30e4b4
00391234  00 00 50 e3                                      cmp r0, #0
00391238  f5 ff ff 0a                                      beq #0x391214
0039123c  08 10 a0 e1                                      mov r1, r8
00391240  0b 00 a0 e1                                      mov r0, fp
00391244  58 f4 fd eb                                      bl #0x30e3ac
00391248  3c 11 97 e5                                      ldr r1, [r7, #0x13c]
0039124c  d6 f5 fd eb                                      bl #0x30e9ac
00391250  00 00 50 e3                                      cmp r0, #0
00391254  ee ff ff 0a                                      beq #0x391214
00391258  09 10 a0 e1                                      mov r1, sb
0039125c  08 00 a0 e1                                      mov r0, r8
00391260  4f f6 fd eb                                      bl #0x30eba4
00391264  30 11 97 e5                                      ldr r1, [r7, #0x130]
00391268  91 f4 fd eb                                      bl #0x30e4b4
0039126c  00 00 50 e3                                      cmp r0, #0
00391270  e7 ff ff 0a                                      beq #0x391214
00391274  08 10 a0 e1                                      mov r1, r8
00391278  0a 00 a0 e1                                      mov r0, sl
0039127c  4a f4 fd eb                                      bl #0x30e3ac
00391280  40 11 97 e5                                      ldr r1, [r7, #0x140]
00391284  c8 f5 fd eb                                      bl #0x30e9ac
00391288  00 00 50 e3                                      cmp r0, #0
0039128c  e0 ff ff 0a                                      beq #0x391214
00391290  14 10 9d e5                                      ldr r1, [sp, #0x14]
00391294  08 00 a0 e1                                      mov r0, r8
00391298  41 f6 fd eb                                      bl #0x30eba4
0039129c  34 11 97 e5                                      ldr r1, [r7, #0x134]
003912a0  83 f4 fd eb                                      bl #0x30e4b4
003912a4  00 00 50 e3                                      cmp r0, #0
003912a8  d9 ff ff 0a                                      beq #0x391214
003912ac  9c ff ff ea                                      b #0x391124
003912b0  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
003912b4  00 10 a0 e3                                      mov r1, #0
003912b8  04 00 a0 e1                                      mov r0, r4
003912bc  03 30 98 e7                                      ldr r3, [r8, r3]
003912c0  24 70 8d e2                                      add r7, sp, #0x24
003912c4  38 80 93 e5                                      ldr r8, [r3, #0x38]
003912c8  0a aa ff eb                                      bl #0x37baf8
003912cc  72 2c fe eb                                      bl #0x31c49c
003912d0  00 c0 a0 e3                                      mov ip, #0
003912d4  00 20 a0 e1                                      mov r2, r0
003912d8  08 10 a0 e1                                      mov r1, r8
003912dc  07 00 a0 e1                                      mov r0, r7
003912e0  00 30 e0 e3                                      mvn r3, #0
003912e4  04 c0 8d e5                                      str ip, [sp, #4]
003912e8  00 c0 8d e5                                      str ip, [sp]
003912ec  6b e6 fe eb                                      bl #0x34aca0
003912f0  07 00 a0 e1                                      mov r0, r7
003912f4  fa ba fe eb                                      bl #0x33fee4
003912f8  00 70 a0 e1                                      mov r7, r0
003912fc  48 ff ff ea                                      b #0x391024
00391300  02 10 a0 e3                                      mov r1, #2
00391304  04 00 a0 e1                                      mov r0, r4
00391308  fa a9 ff eb                                      bl #0x37baf8
0039130c  37 2a fe eb                                      bl #0x31bbf0
00391310  00 30 a0 e3                                      mov r3, #0
00391314  00 90 a0 e1                                      mov sb, r0
00391318  18 10 8d e2                                      add r1, sp, #0x18
0039131c  05 00 a0 e1                                      mov r0, r5
00391320  20 30 8d e5                                      str r3, [sp, #0x20]
00391324  18 30 8d e5                                      str r3, [sp, #0x18]
00391328  1c 30 8d e5                                      str r3, [sp, #0x1c]
0039132c  ec 09 00 eb                                      bl #0x393ae4
00391330  60 11 95 e5                                      ldr r1, [r5, #0x160]
00391334  60 01 97 e5                                      ldr r0, [r7, #0x160]
00391338  1b f4 fd eb                                      bl #0x30e3ac
0039133c  64 11 95 e5                                      ldr r1, [r5, #0x164]
00391340  00 a0 a0 e1                                      mov sl, r0
00391344  64 01 97 e5                                      ldr r0, [r7, #0x164]
00391348  17 f4 fd eb                                      bl #0x30e3ac
0039134c  68 11 95 e5                                      ldr r1, [r5, #0x168]
00391350  00 80 a0 e1                                      mov r8, r0
00391354  68 01 97 e5                                      ldr r0, [r7, #0x168]
00391358  13 f4 fd eb                                      bl #0x30e3ac
0039135c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00391360  00 40 a0 e1                                      mov r4, r0
00391364  0a 00 a0 e1                                      mov r0, sl
00391368  7f f6 fd eb                                      bl #0x30ed6c
0039136c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00391370  00 50 a0 e1                                      mov r5, r0
00391374  08 00 a0 e1                                      mov r0, r8
00391378  7b f6 fd eb                                      bl #0x30ed6c
0039137c  00 10 a0 e1                                      mov r1, r0
00391380  05 00 a0 e1                                      mov r0, r5
00391384  06 f6 fd eb                                      bl #0x30eba4
00391388  20 10 9d e5                                      ldr r1, [sp, #0x20]
0039138c  00 50 a0 e1                                      mov r5, r0
00391390  04 00 a0 e1                                      mov r0, r4
00391394  74 f6 fd eb                                      bl #0x30ed6c
00391398  00 10 a0 e1                                      mov r1, r0
0039139c  05 00 a0 e1                                      mov r0, r5
003913a0  ff f5 fd eb                                      bl #0x30eba4
003913a4  0a 10 a0 e1                                      mov r1, sl
003913a8  00 50 a0 e1                                      mov r5, r0
003913ac  0a 00 a0 e1                                      mov r0, sl
003913b0  6d f6 fd eb                                      bl #0x30ed6c
003913b4  08 10 a0 e1                                      mov r1, r8
003913b8  00 70 a0 e1                                      mov r7, r0
003913bc  08 00 a0 e1                                      mov r0, r8
003913c0  69 f6 fd eb                                      bl #0x30ed6c
003913c4  00 10 a0 e1                                      mov r1, r0
003913c8  07 00 a0 e1                                      mov r0, r7
003913cc  f4 f5 fd eb                                      bl #0x30eba4
003913d0  04 10 a0 e1                                      mov r1, r4
003913d4  00 70 a0 e1                                      mov r7, r0
003913d8  04 00 a0 e1                                      mov r0, r4
003913dc  62 f6 fd eb                                      bl #0x30ed6c
003913e0  00 10 a0 e1                                      mov r1, r0
003913e4  07 00 a0 e1                                      mov r0, r7
003913e8  ed f5 fd eb                                      bl #0x30eba4
003913ec  4c f3 fd eb                                      bl #0x30e124
003913f0  00 10 a0 e1                                      mov r1, r0
003913f4  05 00 a0 e1                                      mov r0, r5
003913f8  25 f6 fd eb                                      bl #0x30ec94
003913fc  00 10 a0 e1                                      mov r1, r0
00391400  09 00 a0 e1                                      mov r0, sb
00391404  68 f5 fd eb                                      bl #0x30e9ac
00391408  00 00 50 e3                                      cmp r0, #0
0039140c  00 10 a0 e3                                      mov r1, #0
00391410  01 10 a0 13                                      movne r1, #1
00391414  06 00 a0 e1                                      mov r0, r6
00391418  01 10 01 e2                                      and r1, r1, #1
0039141c  f0 ac ff eb                                      bl #0x37c7e4
00391420  dc fe ff ea                                      b #0x390f98
; mapping-symbol data/literal pool
00391424  4c 3b 60 00 04 d3 52 00 b8 d2 52 00 98 d2 52 00  .byte 0x4c, 0x3b, 0x60, 0x00, 0x04, 0xd3, 0x52, 0x00, 0xb8, 0xd2, 0x52, 0x00, 0x98, 0xd2, 0x52, 0x00
00391434  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00391438, declared_size=568, range_size=568, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject19_GetDistanceBetweenERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_GetDistanceBetween(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00391438  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0039143c  04 70 90 e5                                      ldr r7, [r0, #4]
00391440  01 60 a0 e1                                      mov r6, r1
00391444  10 42 9f e5                                      ldr r4, [pc, #0x210]
00391448  0a 00 97 e8                                      ldm r7, {r1, r3}
0039144c  04 40 8f e0                                      add r4, pc, r4
00391450  24 d0 4d e2                                      sub sp, sp, #0x24
00391454  03 30 61 e0                                      rsb r3, r1, r3
00391458  43 32 a0 e1                                      asr r3, r3, #4
0039145c  00 50 a0 e1                                      mov r5, r0
00391460  83 21 83 e0                                      add r2, r3, r3, lsl #3
00391464  02 23 82 e0                                      add r2, r2, r2, lsl #6
00391468  82 21 83 e0                                      add r2, r3, r2, lsl #3
0039146c  82 27 82 e0                                      add r2, r2, r2, lsl #15
00391470  82 31 83 e0                                      add r3, r3, r2, lsl #3
00391474  00 30 63 e2                                      rsb r3, r3, #0
00391478  01 00 53 e3                                      cmp r3, #1
0039147c  04 00 00 9a                                      bls #0x391494
00391480  00 00 53 e3                                      cmp r3, #0
00391484  04 00 00 0a                                      beq #0x39149c
00391488  04 30 91 e5                                      ldr r3, [r1, #4]
0039148c  04 00 53 e3                                      cmp r3, #4
00391490  06 00 00 0a                                      beq #0x3914b0
00391494  24 d0 8d e2                                      add sp, sp, #0x24
00391498  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0039149c  bc 01 9f e5                                      ldr r0, [pc, #0x1bc]
003914a0  00 00 8f e0                                      add r0, pc, r0
003914a4  81 de 0d eb                                      bl #0x708eb0
003914a8  00 10 97 e5                                      ldr r1, [r7]
003914ac  f5 ff ff ea                                      b #0x391488
003914b0  05 00 a0 e1                                      mov r0, r5
003914b4  01 10 a0 e3                                      mov r1, #1
003914b8  8e a9 ff eb                                      bl #0x37baf8
003914bc  04 30 90 e5                                      ldr r3, [r0, #4]
003914c0  04 00 53 e3                                      cmp r3, #4
003914c4  f2 ff ff 1a                                      bne #0x391494
003914c8  04 70 95 e5                                      ldr r7, [r5, #4]
003914cc  90 81 9f e5                                      ldr r8, [pc, #0x190]
003914d0  09 00 97 e8                                      ldm r7, {r0, r3}
003914d4  08 20 94 e7                                      ldr r2, [r4, r8]
003914d8  03 30 60 e0                                      rsb r3, r0, r3
003914dc  43 32 a0 e1                                      asr r3, r3, #4
003914e0  38 a0 92 e5                                      ldr sl, [r2, #0x38]
003914e4  83 21 83 e0                                      add r2, r3, r3, lsl #3
003914e8  02 23 82 e0                                      add r2, r2, r2, lsl #6
003914ec  82 21 83 e0                                      add r2, r3, r2, lsl #3
003914f0  82 27 82 e0                                      add r2, r2, r2, lsl #15
003914f4  82 31 83 e0                                      add r3, r3, r2, lsl #3
003914f8  00 00 53 e3                                      cmp r3, #0
003914fc  03 00 00 1a                                      bne #0x391510
00391500  60 01 9f e5                                      ldr r0, [pc, #0x160]
00391504  00 00 8f e0                                      add r0, pc, r0
00391508  68 de 0d eb                                      bl #0x708eb0
0039150c  00 00 97 e5                                      ldr r0, [r7]
00391510  e1 2b fe eb                                      bl #0x31c49c
00391514  14 70 8d e2                                      add r7, sp, #0x14
00391518  00 20 a0 e1                                      mov r2, r0
0039151c  00 c0 a0 e3                                      mov ip, #0
00391520  00 30 e0 e3                                      mvn r3, #0
00391524  07 00 a0 e1                                      mov r0, r7
00391528  0a 10 a0 e1                                      mov r1, sl
0039152c  04 c0 8d e5                                      str ip, [sp, #4]
00391530  00 c0 8d e5                                      str ip, [sp]
00391534  d9 e5 fe eb                                      bl #0x34aca0
00391538  07 00 a0 e1                                      mov r0, r7
0039153c  68 ba fe eb                                      bl #0x33fee4
00391540  04 50 95 e5                                      ldr r5, [r5, #4]
00391544  00 70 a0 e1                                      mov r7, r0
00391548  08 20 94 e7                                      ldr r2, [r4, r8]
0039154c  09 00 95 e8                                      ldm r5, {r0, r3}
00391550  38 80 92 e5                                      ldr r8, [r2, #0x38]
00391554  03 30 60 e0                                      rsb r3, r0, r3
00391558  43 32 a0 e1                                      asr r3, r3, #4
0039155c  83 21 83 e0                                      add r2, r3, r3, lsl #3
00391560  02 23 82 e0                                      add r2, r2, r2, lsl #6
00391564  82 21 83 e0                                      add r2, r3, r2, lsl #3
00391568  82 27 82 e0                                      add r2, r2, r2, lsl #15
0039156c  82 31 83 e0                                      add r3, r3, r2, lsl #3
00391570  00 30 63 e2                                      rsb r3, r3, #0
00391574  01 00 53 e3                                      cmp r3, #1
00391578  03 00 00 8a                                      bhi #0x39158c
0039157c  e8 00 9f e5                                      ldr r0, [pc, #0xe8]
00391580  00 00 8f e0                                      add r0, pc, r0
00391584  49 de 0d eb                                      bl #0x708eb0
00391588  00 00 95 e5                                      ldr r0, [r5]
0039158c  70 00 80 e2                                      add r0, r0, #0x70
00391590  c1 2b fe eb                                      bl #0x31c49c
00391594  08 40 8d e2                                      add r4, sp, #8
00391598  08 10 a0 e1                                      mov r1, r8
0039159c  00 c0 a0 e3                                      mov ip, #0
003915a0  00 20 a0 e1                                      mov r2, r0
003915a4  00 30 e0 e3                                      mvn r3, #0
003915a8  04 00 a0 e1                                      mov r0, r4
003915ac  04 c0 8d e5                                      str ip, [sp, #4]
003915b0  00 c0 8d e5                                      str ip, [sp]
003915b4  b9 e5 fe eb                                      bl #0x34aca0
003915b8  04 00 a0 e1                                      mov r0, r4
003915bc  48 ba fe eb                                      bl #0x33fee4
003915c0  00 00 50 e3                                      cmp r0, #0
003915c4  00 00 57 13                                      cmpne r7, #0
003915c8  bf 14 a0 03                                      moveq r1, #0xbf000000
003915cc  00 40 a0 e1                                      mov r4, r0
003915d0  02 15 81 02                                      addeq r1, r1, #0x800000
003915d4  1d 00 00 0a                                      beq #0x391650
003915d8  60 11 90 e5                                      ldr r1, [r0, #0x160]
003915dc  60 01 97 e5                                      ldr r0, [r7, #0x160]
003915e0  71 f3 fd eb                                      bl #0x30e3ac
003915e4  64 11 94 e5                                      ldr r1, [r4, #0x164]
003915e8  00 a0 a0 e1                                      mov sl, r0
003915ec  64 01 97 e5                                      ldr r0, [r7, #0x164]
003915f0  6d f3 fd eb                                      bl #0x30e3ac
003915f4  68 11 94 e5                                      ldr r1, [r4, #0x168]
003915f8  00 80 a0 e1                                      mov r8, r0
003915fc  68 01 97 e5                                      ldr r0, [r7, #0x168]
00391600  69 f3 fd eb                                      bl #0x30e3ac
00391604  0a 10 a0 e1                                      mov r1, sl
00391608  00 50 a0 e1                                      mov r5, r0
0039160c  0a 00 a0 e1                                      mov r0, sl
00391610  d5 f5 fd eb                                      bl #0x30ed6c
00391614  08 10 a0 e1                                      mov r1, r8
00391618  00 40 a0 e1                                      mov r4, r0
0039161c  08 00 a0 e1                                      mov r0, r8
00391620  d1 f5 fd eb                                      bl #0x30ed6c
00391624  00 10 a0 e1                                      mov r1, r0
00391628  04 00 a0 e1                                      mov r0, r4
0039162c  5c f5 fd eb                                      bl #0x30eba4
00391630  05 10 a0 e1                                      mov r1, r5
00391634  00 40 a0 e1                                      mov r4, r0
00391638  05 00 a0 e1                                      mov r0, r5
0039163c  ca f5 fd eb                                      bl #0x30ed6c
00391640  00 10 a0 e1                                      mov r1, r0
00391644  04 00 a0 e1                                      mov r0, r4
00391648  55 f5 fd eb                                      bl #0x30eba4
0039164c  00 10 a0 e1                                      mov r1, r0
00391650  06 00 a0 e1                                      mov r0, r6
00391654  98 ad ff eb                                      bl #0x37ccbc
00391658  8d ff ff ea                                      b #0x391494
; mapping-symbol data/literal pool
0039165c  44 36 60 00 c8 cf 52 00 f4 37 00 00 64 cf 52 00  .byte 0x44, 0x36, 0x60, 0x00, 0xc8, 0xcf, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x64, 0xcf, 0x52, 0x00
0039166c  e8 ce 52 00                                      .byte 0xe8, 0xce, 0x52, 0x00

; FUNCTION 0x00391670, declared_size=716, range_size=716, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject18_SummonTriggerTrapERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_SummonTriggerTrap(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00391670  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00391674  04 50 90 e5                                      ldr r5, [r0, #4]
00391678  01 70 a0 e1                                      mov r7, r1
0039167c  02 80 a0 e1                                      mov r8, r2
00391680  00 30 95 e5                                      ldr r3, [r5]
00391684  04 10 95 e5                                      ldr r1, [r5, #4]
00391688  98 42 9f e5                                      ldr r4, [pc, #0x298]
0039168c  10 d0 4d e2                                      sub sp, sp, #0x10
00391690  01 10 63 e0                                      rsb r1, r3, r1
00391694  41 12 a0 e1                                      asr r1, r1, #4
00391698  04 40 8f e0                                      add r4, pc, r4
0039169c  81 21 81 e0                                      add r2, r1, r1, lsl #3
003916a0  00 60 a0 e1                                      mov r6, r0
003916a4  02 23 82 e0                                      add r2, r2, r2, lsl #6
003916a8  82 21 81 e0                                      add r2, r1, r2, lsl #3
003916ac  82 27 82 e0                                      add r2, r2, r2, lsl #15
003916b0  82 11 81 e0                                      add r1, r1, r2, lsl #3
003916b4  00 10 61 e2                                      rsb r1, r1, #0
003916b8  01 00 51 e3                                      cmp r1, #1
003916bc  04 00 00 9a                                      bls #0x3916d4
003916c0  00 00 51 e3                                      cmp r1, #0
003916c4  04 00 00 0a                                      beq #0x3916dc
003916c8  04 30 93 e5                                      ldr r3, [r3, #4]
003916cc  03 00 53 e3                                      cmp r3, #3
003916d0  06 00 00 0a                                      beq #0x3916f0
003916d4  10 d0 8d e2                                      add sp, sp, #0x10
003916d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003916dc  48 02 9f e5                                      ldr r0, [pc, #0x248]
003916e0  00 00 8f e0                                      add r0, pc, r0
003916e4  f1 dd 0d eb                                      bl #0x708eb0
003916e8  00 30 95 e5                                      ldr r3, [r5]
003916ec  f5 ff ff ea                                      b #0x3916c8
003916f0  00 10 a0 e3                                      mov r1, #0
003916f4  06 00 a0 e1                                      mov r0, r6
003916f8  fe a8 ff eb                                      bl #0x37baf8
003916fc  25 f0 ff eb                                      bl #0x38d798
00391700  28 32 9f e5                                      ldr r3, [pc, #0x228]
00391704  03 30 94 e7                                      ldr r3, [r4, r3]
00391708  00 30 93 e5                                      ldr r3, [r3]
0039170c  03 00 50 e1                                      cmp r0, r3
00391710  ef ff ff 2a                                      bhs #0x3916d4
00391714  04 50 96 e5                                      ldr r5, [r6, #4]
00391718  00 30 95 e5                                      ldr r3, [r5]
0039171c  04 20 95 e5                                      ldr r2, [r5, #4]
00391720  02 20 63 e0                                      rsb r2, r3, r2
00391724  42 22 a0 e1                                      asr r2, r2, #4
00391728  82 11 82 e0                                      add r1, r2, r2, lsl #3
0039172c  01 13 81 e0                                      add r1, r1, r1, lsl #6
00391730  81 11 82 e0                                      add r1, r2, r1, lsl #3
00391734  81 17 81 e0                                      add r1, r1, r1, lsl #15
00391738  81 21 82 e0                                      add r2, r2, r1, lsl #3
0039173c  00 20 62 e2                                      rsb r2, r2, #0
00391740  01 00 52 e3                                      cmp r2, #1
00391744  03 00 00 8a                                      bhi #0x391758
00391748  e4 01 9f e5                                      ldr r0, [pc, #0x1e4]
0039174c  00 00 8f e0                                      add r0, pc, r0
00391750  d6 dd 0d eb                                      bl #0x708eb0
00391754  00 30 95 e5                                      ldr r3, [r5]
00391758  74 30 93 e5                                      ldr r3, [r3, #0x74]
0039175c  03 00 53 e3                                      cmp r3, #3
00391760  db ff ff 1a                                      bne #0x3916d4
00391764  01 10 a0 e3                                      mov r1, #1
00391768  06 00 a0 e1                                      mov r0, r6
0039176c  e1 a8 ff eb                                      bl #0x37baf8
00391770  08 f0 ff eb                                      bl #0x38d798
00391774  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
00391778  03 30 94 e7                                      ldr r3, [r4, r3]
0039177c  00 30 93 e5                                      ldr r3, [r3]
00391780  03 00 50 e1                                      cmp r0, r3
00391784  d2 ff ff 2a                                      bhs #0x3916d4
00391788  00 10 a0 e3                                      mov r1, #0
0039178c  06 00 a0 e1                                      mov r0, r6
00391790  d8 a8 ff eb                                      bl #0x37baf8
00391794  15 29 fe eb                                      bl #0x31bbf0
00391798  01 10 a0 e3                                      mov r1, #1
0039179c  00 40 a0 e1                                      mov r4, r0
003917a0  06 00 a0 e1                                      mov r0, r6
003917a4  d3 a8 ff eb                                      bl #0x37baf8
003917a8  10 29 fe eb                                      bl #0x31bbf0
003917ac  00 50 a0 e1                                      mov r5, r0
003917b0  04 00 a0 e1                                      mov r0, r4
003917b4  44 f3 fd eb                                      bl #0x30e4cc
003917b8  00 40 a0 e1                                      mov r4, r0
003917bc  05 00 a0 e1                                      mov r0, r5
003917c0  41 f3 fd eb                                      bl #0x30e4cc
003917c4  04 10 a0 e1                                      mov r1, r4
003917c8  00 20 a0 e1                                      mov r2, r0
003917cc  08 00 a0 e1                                      mov r0, r8
003917d0  b0 32 00 eb                                      bl #0x39e298
003917d4  04 20 96 e5                                      ldr r2, [r6, #4]
003917d8  00 40 a0 e1                                      mov r4, r0
003917dc  00 30 92 e5                                      ldr r3, [r2]
003917e0  04 20 92 e5                                      ldr r2, [r2, #4]
003917e4  02 30 63 e0                                      rsb r3, r3, r2
003917e8  43 32 a0 e1                                      asr r3, r3, #4
003917ec  83 21 83 e0                                      add r2, r3, r3, lsl #3
003917f0  02 23 82 e0                                      add r2, r2, r2, lsl #6
003917f4  82 21 83 e0                                      add r2, r3, r2, lsl #3
003917f8  82 27 82 e0                                      add r2, r2, r2, lsl #15
003917fc  82 31 83 e0                                      add r3, r3, r2, lsl #3
00391800  00 30 63 e2                                      rsb r3, r3, #0
00391804  02 00 53 e3                                      cmp r3, #2
00391808  03 00 00 8a                                      bhi #0x39181c
0039180c  07 00 a0 e1                                      mov r0, r7
00391810  04 10 a0 e1                                      mov r1, r4
00391814  77 ac ff eb                                      bl #0x37c9f8
00391818  ad ff ff ea                                      b #0x3916d4
0039181c  06 00 a0 e1                                      mov r0, r6
00391820  02 10 a0 e3                                      mov r1, #2
00391824  b3 a8 ff eb                                      bl #0x37baf8
00391828  04 30 90 e5                                      ldr r3, [r0, #4]
0039182c  07 00 53 e3                                      cmp r3, #7
00391830  33 00 00 0a                                      beq #0x391904
00391834  04 20 96 e5                                      ldr r2, [r6, #4]
00391838  04 10 92 e5                                      ldr r1, [r2, #4]
0039183c  00 30 92 e5                                      ldr r3, [r2]
00391840  01 30 63 e0                                      rsb r3, r3, r1
00391844  43 32 a0 e1                                      asr r3, r3, #4
00391848  83 21 83 e0                                      add r2, r3, r3, lsl #3
0039184c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00391850  82 21 83 e0                                      add r2, r3, r2, lsl #3
00391854  82 27 82 e0                                      add r2, r2, r2, lsl #15
00391858  82 31 83 e0                                      add r3, r3, r2, lsl #3
0039185c  00 30 63 e2                                      rsb r3, r3, #0
00391860  04 00 53 e3                                      cmp r3, #4
00391864  e8 ff ff 9a                                      bls #0x39180c
00391868  02 10 a0 e3                                      mov r1, #2
0039186c  06 00 a0 e1                                      mov r0, r6
00391870  a0 a8 ff eb                                      bl #0x37baf8
00391874  04 10 90 e5                                      ldr r1, [r0, #4]
00391878  03 00 51 e3                                      cmp r1, #3
0039187c  e2 ff ff 1a                                      bne #0x39180c
00391880  06 00 a0 e1                                      mov r0, r6
00391884  9b a8 ff eb                                      bl #0x37baf8
00391888  04 30 90 e5                                      ldr r3, [r0, #4]
0039188c  03 00 53 e3                                      cmp r3, #3
00391890  dd ff ff 1a                                      bne #0x39180c
00391894  06 00 a0 e1                                      mov r0, r6
00391898  04 10 a0 e3                                      mov r1, #4
0039189c  95 a8 ff eb                                      bl #0x37baf8
003918a0  04 50 90 e5                                      ldr r5, [r0, #4]
003918a4  03 00 55 e3                                      cmp r5, #3
003918a8  d7 ff ff 1a                                      bne #0x39180c
003918ac  02 10 a0 e3                                      mov r1, #2
003918b0  06 00 a0 e1                                      mov r0, r6
003918b4  8f a8 ff eb                                      bl #0x37baf8
003918b8  cc 28 fe eb                                      bl #0x31bbf0
003918bc  05 10 a0 e1                                      mov r1, r5
003918c0  00 80 a0 e1                                      mov r8, r0
003918c4  06 00 a0 e1                                      mov r0, r6
003918c8  8a a8 ff eb                                      bl #0x37baf8
003918cc  c7 28 fe eb                                      bl #0x31bbf0
003918d0  04 10 a0 e3                                      mov r1, #4
003918d4  00 50 a0 e1                                      mov r5, r0
003918d8  06 00 a0 e1                                      mov r0, r6
003918dc  85 a8 ff eb                                      bl #0x37baf8
003918e0  c2 28 fe eb                                      bl #0x31bbf0
003918e4  04 10 8d e2                                      add r1, sp, #4
003918e8  0c 00 8d e5                                      str r0, [sp, #0xc]
003918ec  01 20 a0 e3                                      mov r2, #1
003918f0  04 00 a0 e1                                      mov r0, r4
003918f4  04 80 8d e5                                      str r8, [sp, #4]
003918f8  08 50 8d e5                                      str r5, [sp, #8]
003918fc  2c 09 00 eb                                      bl #0x393db4
00391900  c1 ff ff ea                                      b #0x39180c
00391904  02 10 a0 e3                                      mov r1, #2
00391908  06 00 a0 e1                                      mov r0, r6
0039190c  79 a8 ff eb                                      bl #0x37baf8
00391910  22 27 fe eb                                      bl #0x31b5a0
00391914  01 20 a0 e3                                      mov r2, #1
00391918  16 1e 80 e2                                      add r1, r0, #0x160
0039191c  04 00 a0 e1                                      mov r0, r4
00391920  23 09 00 eb                                      bl #0x393db4
00391924  b8 ff ff ea                                      b #0x39180c
; mapping-symbol data/literal pool
00391928  f8 33 60 00 88 cd 52 00 8c 0d 00 00 1c cd 52 00  .byte 0xf8, 0x33, 0x60, 0x00, 0x88, 0xcd, 0x52, 0x00, 0x8c, 0x0d, 0x00, 0x00, 0x1c, 0xcd, 0x52, 0x00
00391938  0c 2f 00 00                                      .byte 0x0c, 0x2f, 0x00, 0x00

; FUNCTION 0x0039193c, declared_size=2032, range_size=2032, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject7_SummonERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_Summon(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0039193c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00391940  04 80 90 e5                                      ldr r8, [r0, #4]
00391944  01 70 a0 e1                                      mov r7, r1
00391948  02 60 a0 e1                                      mov r6, r2
0039194c  00 30 98 e5                                      ldr r3, [r8]
00391950  04 10 98 e5                                      ldr r1, [r8, #4]
00391954  ac 47 9f e5                                      ldr r4, [pc, #0x7ac]
00391958  5c d0 4d e2                                      sub sp, sp, #0x5c
0039195c  01 10 63 e0                                      rsb r1, r3, r1
00391960  41 12 a0 e1                                      asr r1, r1, #4
00391964  04 40 8f e0                                      add r4, pc, r4
00391968  81 21 81 e0                                      add r2, r1, r1, lsl #3
0039196c  00 50 a0 e1                                      mov r5, r0
00391970  02 23 82 e0                                      add r2, r2, r2, lsl #6
00391974  82 21 81 e0                                      add r2, r1, r2, lsl #3
00391978  82 27 82 e0                                      add r2, r2, r2, lsl #15
0039197c  82 11 81 e0                                      add r1, r1, r2, lsl #3
00391980  00 10 61 e2                                      rsb r1, r1, #0
00391984  01 00 51 e3                                      cmp r1, #1
00391988  04 00 00 9a                                      bls #0x3919a0
0039198c  00 00 51 e3                                      cmp r1, #0
00391990  04 00 00 0a                                      beq #0x3919a8
00391994  04 30 93 e5                                      ldr r3, [r3, #4]
00391998  03 00 53 e3                                      cmp r3, #3
0039199c  06 00 00 0a                                      beq #0x3919bc
003919a0  5c d0 8d e2                                      add sp, sp, #0x5c
003919a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003919a8  5c 07 9f e5                                      ldr r0, [pc, #0x75c]
003919ac  00 00 8f e0                                      add r0, pc, r0
003919b0  3e dd 0d eb                                      bl #0x708eb0
003919b4  00 30 98 e5                                      ldr r3, [r8]
003919b8  f5 ff ff ea                                      b #0x391994
003919bc  00 10 a0 e3                                      mov r1, #0
003919c0  05 00 a0 e1                                      mov r0, r5
003919c4  4b a8 ff eb                                      bl #0x37baf8
003919c8  72 ef ff eb                                      bl #0x38d798
003919cc  3c 37 9f e5                                      ldr r3, [pc, #0x73c]
003919d0  03 30 94 e7                                      ldr r3, [r4, r3]
003919d4  00 30 93 e5                                      ldr r3, [r3]
003919d8  03 00 50 e1                                      cmp r0, r3
003919dc  ef ff ff 2a                                      bhs #0x3919a0
003919e0  04 80 95 e5                                      ldr r8, [r5, #4]
003919e4  00 30 98 e5                                      ldr r3, [r8]
003919e8  04 20 98 e5                                      ldr r2, [r8, #4]
003919ec  02 20 63 e0                                      rsb r2, r3, r2
003919f0  42 22 a0 e1                                      asr r2, r2, #4
003919f4  82 11 82 e0                                      add r1, r2, r2, lsl #3
003919f8  01 13 81 e0                                      add r1, r1, r1, lsl #6
003919fc  81 11 82 e0                                      add r1, r2, r1, lsl #3
00391a00  81 17 81 e0                                      add r1, r1, r1, lsl #15
00391a04  81 21 82 e0                                      add r2, r2, r1, lsl #3
00391a08  00 20 62 e2                                      rsb r2, r2, #0
00391a0c  01 00 52 e3                                      cmp r2, #1
00391a10  03 00 00 8a                                      bhi #0x391a24
00391a14  f8 06 9f e5                                      ldr r0, [pc, #0x6f8]
00391a18  00 00 8f e0                                      add r0, pc, r0
00391a1c  23 dd 0d eb                                      bl #0x708eb0
00391a20  00 30 98 e5                                      ldr r3, [r8]
00391a24  74 10 93 e5                                      ldr r1, [r3, #0x74]
00391a28  01 00 51 e3                                      cmp r1, #1
00391a2c  db ff ff 1a                                      bne #0x3919a0
00391a30  05 00 a0 e1                                      mov r0, r5
00391a34  2f a8 ff eb                                      bl #0x37baf8
00391a38  90 28 fe eb                                      bl #0x31bc80
00391a3c  6c c1 96 e5                                      ldr ip, [r6, #0x16c]
00391a40  74 11 96 e5                                      ldr r1, [r6, #0x174]
00391a44  00 90 a0 e1                                      mov sb, r0
00391a48  70 01 96 e5                                      ldr r0, [r6, #0x170]
00391a4c  04 20 95 e5                                      ldr r2, [r5, #4]
00391a50  00 30 a0 e3                                      mov r3, #0
00391a54  54 30 8d e5                                      str r3, [sp, #0x54]
00391a58  40 c0 8d e5                                      str ip, [sp, #0x40]
00391a5c  44 00 8d e5                                      str r0, [sp, #0x44]
00391a60  48 10 8d e5                                      str r1, [sp, #0x48]
00391a64  4c 30 8d e5                                      str r3, [sp, #0x4c]
00391a68  50 30 8d e5                                      str r3, [sp, #0x50]
00391a6c  00 30 92 e5                                      ldr r3, [r2]
00391a70  04 20 92 e5                                      ldr r2, [r2, #4]
00391a74  02 30 63 e0                                      rsb r3, r3, r2
00391a78  43 32 a0 e1                                      asr r3, r3, #4
00391a7c  83 21 83 e0                                      add r2, r3, r3, lsl #3
00391a80  02 23 82 e0                                      add r2, r2, r2, lsl #6
00391a84  82 21 83 e0                                      add r2, r3, r2, lsl #3
00391a88  82 27 82 e0                                      add r2, r2, r2, lsl #15
00391a8c  82 31 83 e0                                      add r3, r3, r2, lsl #3
00391a90  00 30 63 e2                                      rsb r3, r3, #0
00391a94  02 00 53 e3                                      cmp r3, #2
00391a98  9a 00 00 8a                                      bhi #0x391d08
00391a9c  d8 02 96 e5                                      ldr r0, [r6, #0x2d8]
00391aa0  00 00 50 e3                                      cmp r0, #0
00391aa4  dd 00 00 0a                                      beq #0x391e20
00391aa8  68 16 9f e5                                      ldr r1, [pc, #0x668]
00391aac  01 10 8f e0                                      add r1, pc, r1
00391ab0  d8 7b 03 eb                                      bl #0x470a18
00391ab4  00 10 50 e2                                      subs r1, r0, #0
00391ab8  d8 00 00 0a                                      beq #0x391e20
00391abc  28 00 8d e2                                      add r0, sp, #0x28
00391ac0  ae 15 08 eb                                      bl #0x597180
00391ac4  28 30 9d e5                                      ldr r3, [sp, #0x28]
00391ac8  4c 30 8d e5                                      str r3, [sp, #0x4c]
00391acc  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00391ad0  50 30 8d e5                                      str r3, [sp, #0x50]
00391ad4  30 30 9d e5                                      ldr r3, [sp, #0x30]
00391ad8  54 30 8d e5                                      str r3, [sp, #0x54]
00391adc  04 20 95 e5                                      ldr r2, [r5, #4]
00391ae0  00 30 92 e5                                      ldr r3, [r2]
00391ae4  04 20 92 e5                                      ldr r2, [r2, #4]
00391ae8  02 30 63 e0                                      rsb r3, r3, r2
00391aec  43 32 a0 e1                                      asr r3, r3, #4
00391af0  83 21 83 e0                                      add r2, r3, r3, lsl #3
00391af4  02 23 82 e0                                      add r2, r2, r2, lsl #6
00391af8  82 21 83 e0                                      add r2, r3, r2, lsl #3
00391afc  82 27 82 e0                                      add r2, r2, r2, lsl #15
00391b00  82 31 83 e0                                      add r3, r3, r2, lsl #3
00391b04  03 00 73 e3                                      cmn r3, #3
00391b08  71 00 00 0a                                      beq #0x391cd4
00391b0c  00 a0 a0 e3                                      mov sl, #0
00391b10  04 36 9f e5                                      ldr r3, [pc, #0x604]
00391b14  00 c0 a0 e3                                      mov ip, #0
00391b18  4c 80 8d e2                                      add r8, sp, #0x4c
00391b1c  03 00 94 e7                                      ldr r0, [r4, r3]
00391b20  0c 20 a0 e1                                      mov r2, ip
00391b24  08 10 a0 e1                                      mov r1, r8
00391b28  0c 30 a0 e1                                      mov r3, ip
00391b2c  00 c0 8d e5                                      str ip, [sp]
00391b30  04 c0 8d e5                                      str ip, [sp, #4]
00391b34  08 c0 8d e5                                      str ip, [sp, #8]
00391b38  72 4e 06 eb                                      bl #0x525508
00391b3c  00 00 50 e3                                      cmp r0, #0
00391b40  05 00 00 1a                                      bne #0x391b5c
00391b44  60 11 96 e5                                      ldr r1, [r6, #0x160]
00391b48  64 21 96 e5                                      ldr r2, [r6, #0x164]
00391b4c  68 31 96 e5                                      ldr r3, [r6, #0x168]
00391b50  4c 10 8d e5                                      str r1, [sp, #0x4c]
00391b54  50 20 8d e5                                      str r2, [sp, #0x50]
00391b58  54 30 8d e5                                      str r3, [sp, #0x54]
00391b5c  00 10 a0 e3                                      mov r1, #0
00391b60  05 00 a0 e1                                      mov r0, r5
00391b64  e3 a7 ff eb                                      bl #0x37baf8
00391b68  0a ef ff eb                                      bl #0x38d798
00391b6c  00 10 a0 e3                                      mov r1, #0
00391b70  01 20 a0 e1                                      mov r2, r1
00391b74  00 b0 a0 e1                                      mov fp, r0
00391b78  9e 6d 00 eb                                      bl #0x3ad1f8
00391b7c  00 50 50 e2                                      subs r5, r0, #0
00391b80  86 ff ff 0a                                      beq #0x3919a0
00391b84  08 10 a0 e1                                      mov r1, r8
00391b88  59 4f 00 eb                                      bl #0x3a58f4
00391b8c  01 20 a0 e3                                      mov r2, #1
00391b90  05 00 a0 e1                                      mov r0, r5
00391b94  08 10 a0 e1                                      mov r1, r8
00391b98  85 08 00 eb                                      bl #0x393db4
00391b9c  05 00 a0 e1                                      mov r0, r5
00391ba0  40 10 8d e2                                      add r1, sp, #0x40
00391ba4  3d 07 00 eb                                      bl #0x3938a0
00391ba8  01 20 a0 e3                                      mov r2, #1
00391bac  e4 34 01 e3                                      movw r3, #0x14e4
00391bb0  03 20 c5 e7                                      strb r2, [r5, r3]
00391bb4  f4 02 96 e5                                      ldr r0, [r6, #0x2f4]
00391bb8  00 00 50 e3                                      cmp r0, #0
00391bbc  03 00 00 0a                                      beq #0x391bd0
00391bc0  05 10 a0 e1                                      mov r1, r5
00391bc4  b1 13 00 eb                                      bl #0x396a90
00391bc8  00 00 50 e3                                      cmp r0, #0
00391bcc  08 00 00 1a                                      bne #0x391bf4
00391bd0  48 35 9f e5                                      ldr r3, [pc, #0x548]
00391bd4  05 10 a0 e1                                      mov r1, r5
00391bd8  03 30 94 e7                                      ldr r3, [r4, r3]
00391bdc  38 00 93 e5                                      ldr r0, [r3, #0x38]
00391be0  67 c9 fe eb                                      bl #0x344184
00391be4  01 30 a0 e3                                      mov r3, #1
00391be8  ef 32 c5 e5                                      strb r3, [r5, #0x2ef]
00391bec  05 00 a0 e1                                      mov r0, r5
00391bf0  c6 ea ff eb                                      bl #0x38c710
00391bf4  00 00 59 e3                                      cmp sb, #0
00391bf8  82 00 00 1a                                      bne #0x391e08
00391bfc  07 00 a0 e1                                      mov r0, r7
00391c00  05 10 a0 e1                                      mov r1, r5
00391c04  7b ab ff eb                                      bl #0x37c9f8
00391c08  00 00 5a e3                                      cmp sl, #0
00391c0c  05 00 00 da                                      ble #0x391c28
00391c10  d8 32 95 e5                                      ldr r3, [r5, #0x2d8]
00391c14  00 00 53 e3                                      cmp r3, #0
00391c18  02 00 00 0a                                      beq #0x391c28
00391c1c  08 00 93 e5                                      ldr r0, [r3, #8]
00391c20  0a 10 a0 e1                                      mov r1, sl
00391c24  1c 29 ff eb                                      bl #0x35c09c
00391c28  d9 ae 11 eb                                      bl #0x7fd794
00391c2c  05 30 d0 e5                                      ldrb r3, [r0, #5]
00391c30  00 00 53 e3                                      cmp r3, #0
00391c34  59 ff ff 0a                                      beq #0x3919a0
00391c38  e0 34 9f e5                                      ldr r3, [pc, #0x4e0]
00391c3c  05 10 a0 e1                                      mov r1, r5
00391c40  01 70 a0 e3                                      mov r7, #1
00391c44  03 30 94 e7                                      ldr r3, [r4, r3]
00391c48  38 00 93 e5                                      ldr r0, [r3, #0x38]
00391c4c  5b c5 fe eb                                      bl #0x3431c0
00391c50  10 31 96 e5                                      ldr r3, [r6, #0x110]
00391c54  18 71 c5 e5                                      strb r7, [r5, #0x118]
00391c58  10 31 85 e5                                      str r3, [r5, #0x110]
00391c5c  00 30 a0 e3                                      mov r3, #0
00391c60  14 31 85 e5                                      str r3, [r5, #0x114]
00391c64  8b 3c fe eb                                      bl #0x320e98
00391c68  34 30 90 e5                                      ldr r3, [r0, #0x34]
00391c6c  03 30 43 e2                                      sub r3, r3, #3
00391c70  07 00 53 e1                                      cmp r3, r7
00391c74  49 ff ff 8a                                      bhi #0x3919a0
00391c78  08 a1 96 e5                                      ldr sl, [r6, #0x108]
00391c7c  08 91 95 e5                                      ldr sb, [r5, #0x108]
00391c80  68 61 95 e5                                      ldr r6, [r5, #0x168]
00391c84  60 81 95 e5                                      ldr r8, [r5, #0x160]
00391c88  64 51 95 e5                                      ldr r5, [r5, #0x164]
00391c8c  4a e5 11 eb                                      bl #0x80b1bc
00391c90  00 40 a0 e1                                      mov r4, r0
00391c94  88 04 9f e5                                      ldr r0, [pc, #0x488]
00391c98  07 10 a0 e1                                      mov r1, r7
00391c9c  00 00 8f e0                                      add r0, pc, r0
00391ca0  67 e1 11 eb                                      bl #0x80a244
00391ca4  00 30 a0 e3                                      mov r3, #0
00391ca8  00 10 a0 e1                                      mov r1, r0
00391cac  50 90 80 e5                                      str sb, [r0, #0x50]
00391cb0  54 b0 80 e5                                      str fp, [r0, #0x54]
00391cb4  58 a0 80 e5                                      str sl, [r0, #0x58]
00391cb8  5c 80 80 e5                                      str r8, [r0, #0x5c]
00391cbc  60 50 80 e5                                      str r5, [r0, #0x60]
00391cc0  64 60 80 e5                                      str r6, [r0, #0x64]
00391cc4  68 30 c0 e5                                      strb r3, [r0, #0x68]
00391cc8  04 00 a0 e1                                      mov r0, r4
00391ccc  74 f1 11 eb                                      bl #0x80e2a4
00391cd0  32 ff ff ea                                      b #0x3919a0
00391cd4  05 00 a0 e1                                      mov r0, r5
00391cd8  02 10 a0 e3                                      mov r1, #2
00391cdc  85 a7 ff eb                                      bl #0x37baf8
00391ce0  04 30 90 e5                                      ldr r3, [r0, #4]
00391ce4  03 00 53 e3                                      cmp r3, #3
00391ce8  87 ff ff 1a                                      bne #0x391b0c
00391cec  02 10 a0 e3                                      mov r1, #2
00391cf0  05 00 a0 e1                                      mov r0, r5
00391cf4  7f a7 ff eb                                      bl #0x37baf8
00391cf8  bc 27 fe eb                                      bl #0x31bbf0
00391cfc  f2 f1 fd eb                                      bl #0x30e4cc
00391d00  00 a0 a0 e1                                      mov sl, r0
00391d04  81 ff ff ea                                      b #0x391b10
00391d08  05 00 a0 e1                                      mov r0, r5
00391d0c  02 10 a0 e3                                      mov r1, #2
00391d10  78 a7 ff eb                                      bl #0x37baf8
00391d14  04 30 90 e5                                      ldr r3, [r0, #4]
00391d18  07 00 53 e3                                      cmp r3, #7
00391d1c  e2 00 00 0a                                      beq #0x3920ac
00391d20  04 30 95 e5                                      ldr r3, [r5, #4]
00391d24  04 20 93 e5                                      ldr r2, [r3, #4]
00391d28  00 30 93 e5                                      ldr r3, [r3]
00391d2c  02 30 63 e0                                      rsb r3, r3, r2
00391d30  43 32 a0 e1                                      asr r3, r3, #4
00391d34  83 21 83 e0                                      add r2, r3, r3, lsl #3
00391d38  02 23 82 e0                                      add r2, r2, r2, lsl #6
00391d3c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00391d40  82 27 82 e0                                      add r2, r2, r2, lsl #15
00391d44  82 31 83 e0                                      add r3, r3, r2, lsl #3
00391d48  00 30 63 e2                                      rsb r3, r3, #0
00391d4c  04 00 53 e3                                      cmp r3, #4
00391d50  51 ff ff 9a                                      bls #0x391a9c
00391d54  02 10 a0 e3                                      mov r1, #2
00391d58  05 00 a0 e1                                      mov r0, r5
00391d5c  65 a7 ff eb                                      bl #0x37baf8
00391d60  04 10 90 e5                                      ldr r1, [r0, #4]
00391d64  03 00 51 e3                                      cmp r1, #3
00391d68  4b ff ff 1a                                      bne #0x391a9c
00391d6c  05 00 a0 e1                                      mov r0, r5
00391d70  60 a7 ff eb                                      bl #0x37baf8
00391d74  04 30 90 e5                                      ldr r3, [r0, #4]
00391d78  03 00 53 e3                                      cmp r3, #3
00391d7c  46 ff ff 1a                                      bne #0x391a9c
00391d80  05 00 a0 e1                                      mov r0, r5
00391d84  04 10 a0 e3                                      mov r1, #4
00391d88  5a a7 ff eb                                      bl #0x37baf8
00391d8c  04 30 90 e5                                      ldr r3, [r0, #4]
00391d90  03 00 53 e3                                      cmp r3, #3
00391d94  40 ff ff 1a                                      bne #0x391a9c
00391d98  04 20 95 e5                                      ldr r2, [r5, #4]
00391d9c  b7 3d 06 e3                                      movw r3, #0x6db7
00391da0  db 36 4b e3                                      movt r3, #0xb6db
00391da4  06 00 92 e8                                      ldm r2, {r1, r2}
00391da8  02 20 61 e0                                      rsb r2, r1, r2
00391dac  42 22 a0 e1                                      asr r2, r2, #4
00391db0  93 02 03 e0                                      mul r3, r3, r2
00391db4  05 00 53 e3                                      cmp r3, #5
00391db8  1f 00 00 8a                                      bhi #0x391e3c
00391dbc  02 10 a0 e3                                      mov r1, #2
00391dc0  05 00 a0 e1                                      mov r0, r5
00391dc4  4b a7 ff eb                                      bl #0x37baf8
00391dc8  88 27 fe eb                                      bl #0x31bbf0
00391dcc  03 10 a0 e3                                      mov r1, #3
00391dd0  00 a0 a0 e1                                      mov sl, r0
00391dd4  05 00 a0 e1                                      mov r0, r5
00391dd8  46 a7 ff eb                                      bl #0x37baf8
00391ddc  83 27 fe eb                                      bl #0x31bbf0
00391de0  04 10 a0 e3                                      mov r1, #4
00391de4  00 80 a0 e1                                      mov r8, r0
00391de8  05 00 a0 e1                                      mov r0, r5
00391dec  41 a7 ff eb                                      bl #0x37baf8
00391df0  7e 27 fe eb                                      bl #0x31bbf0
00391df4  4c a0 8d e5                                      str sl, [sp, #0x4c]
00391df8  50 80 8d e5                                      str r8, [sp, #0x50]
00391dfc  54 00 8d e5                                      str r0, [sp, #0x54]
00391e00  00 a0 a0 e3                                      mov sl, #0
00391e04  41 ff ff ea                                      b #0x391b10
00391e08  4f 0e 85 e2                                      add r0, r5, #0x4f0
00391e0c  00 10 a0 e3                                      mov r1, #0
00391e10  0c 00 80 e2                                      add r0, r0, #0xc
00391e14  01 20 a0 e1                                      mov r2, r1
00391e18  45 c2 00 eb                                      bl #0x3c2734
00391e1c  76 ff ff ea                                      b #0x391bfc
00391e20  60 11 96 e5                                      ldr r1, [r6, #0x160]
00391e24  64 21 96 e5                                      ldr r2, [r6, #0x164]
00391e28  68 31 96 e5                                      ldr r3, [r6, #0x168]
00391e2c  4c 10 8d e5                                      str r1, [sp, #0x4c]
00391e30  50 20 8d e5                                      str r2, [sp, #0x50]
00391e34  54 30 8d e5                                      str r3, [sp, #0x54]
00391e38  27 ff ff ea                                      b #0x391adc
00391e3c  05 00 a0 e1                                      mov r0, r5
00391e40  05 10 a0 e3                                      mov r1, #5
00391e44  2b a7 ff eb                                      bl #0x37baf8
00391e48  04 30 90 e5                                      ldr r3, [r0, #4]
00391e4c  01 00 53 e3                                      cmp r3, #1
00391e50  d9 ff ff 1a                                      bne #0x391dbc
00391e54  05 10 a0 e3                                      mov r1, #5
00391e58  05 00 a0 e1                                      mov r0, r5
00391e5c  25 a7 ff eb                                      bl #0x37baf8
00391e60  86 27 fe eb                                      bl #0x31bc80
00391e64  00 00 50 e3                                      cmp r0, #0
00391e68  d3 ff ff 0a                                      beq #0x391dbc
00391e6c  00 30 a0 e3                                      mov r3, #0
00391e70  06 00 a0 e1                                      mov r0, r6
00391e74  34 10 8d e2                                      add r1, sp, #0x34
00391e78  3c 30 8d e5                                      str r3, [sp, #0x3c]
00391e7c  34 30 8d e5                                      str r3, [sp, #0x34]
00391e80  38 30 8d e5                                      str r3, [sp, #0x38]
00391e84  16 07 00 eb                                      bl #0x393ae4
00391e88  98 32 9f e5                                      ldr r3, [pc, #0x298]
00391e8c  60 c1 96 e5                                      ldr ip, [r6, #0x160]
00391e90  64 21 96 e5                                      ldr r2, [r6, #0x164]
00391e94  03 80 94 e7                                      ldr r8, [r4, r3]
00391e98  68 31 96 e5                                      ldr r3, [r6, #0x168]
00391e9c  02 10 a0 e3                                      mov r1, #2
00391ea0  05 00 a0 e1                                      mov r0, r5
00391ea4  54 30 8d e5                                      str r3, [sp, #0x54]
00391ea8  04 30 98 e5                                      ldr r3, [r8, #4]
00391eac  4c c0 8d e5                                      str ip, [sp, #0x4c]
00391eb0  50 20 8d e5                                      str r2, [sp, #0x50]
00391eb4  14 30 8d e5                                      str r3, [sp, #0x14]
00391eb8  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00391ebc  08 b0 98 e5                                      ldr fp, [r8, #8]
00391ec0  18 30 8d e5                                      str r3, [sp, #0x18]
00391ec4  38 30 9d e5                                      ldr r3, [sp, #0x38]
00391ec8  1c 30 8d e5                                      str r3, [sp, #0x1c]
00391ecc  34 30 9d e5                                      ldr r3, [sp, #0x34]
00391ed0  20 30 8d e5                                      str r3, [sp, #0x20]
00391ed4  00 30 98 e5                                      ldr r3, [r8]
00391ed8  24 30 8d e5                                      str r3, [sp, #0x24]
00391edc  05 a7 ff eb                                      bl #0x37baf8
00391ee0  42 27 fe eb                                      bl #0x31bbf0
00391ee4  18 10 9d e5                                      ldr r1, [sp, #0x18]
00391ee8  00 a0 a0 e1                                      mov sl, r0
00391eec  14 00 9d e5                                      ldr r0, [sp, #0x14]
00391ef0  9d f3 fd eb                                      bl #0x30ed6c
00391ef4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00391ef8  00 30 a0 e1                                      mov r3, r0
00391efc  0b 00 a0 e1                                      mov r0, fp
00391f00  10 30 8d e5                                      str r3, [sp, #0x10]
00391f04  98 f3 fd eb                                      bl #0x30ed6c
00391f08  10 30 9d e5                                      ldr r3, [sp, #0x10]
00391f0c  00 10 a0 e1                                      mov r1, r0
00391f10  03 00 a0 e1                                      mov r0, r3
00391f14  24 f1 fd eb                                      bl #0x30e3ac
00391f18  00 10 a0 e1                                      mov r1, r0
00391f1c  0a 00 a0 e1                                      mov r0, sl
00391f20  91 f3 fd eb                                      bl #0x30ed6c
00391f24  00 10 a0 e1                                      mov r1, r0
00391f28  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00391f2c  1c f3 fd eb                                      bl #0x30eba4
00391f30  20 10 9d e5                                      ldr r1, [sp, #0x20]
00391f34  4c 00 8d e5                                      str r0, [sp, #0x4c]
00391f38  0b 00 a0 e1                                      mov r0, fp
00391f3c  8a f3 fd eb                                      bl #0x30ed6c
00391f40  24 10 9d e5                                      ldr r1, [sp, #0x24]
00391f44  00 b0 a0 e1                                      mov fp, r0
00391f48  18 00 9d e5                                      ldr r0, [sp, #0x18]
00391f4c  86 f3 fd eb                                      bl #0x30ed6c
00391f50  00 10 a0 e1                                      mov r1, r0
00391f54  0b 00 a0 e1                                      mov r0, fp
00391f58  13 f1 fd eb                                      bl #0x30e3ac
00391f5c  00 10 a0 e1                                      mov r1, r0
00391f60  0a 00 a0 e1                                      mov r0, sl
00391f64  80 f3 fd eb                                      bl #0x30ed6c
00391f68  00 10 a0 e1                                      mov r1, r0
00391f6c  50 00 9d e5                                      ldr r0, [sp, #0x50]
00391f70  0b f3 fd eb                                      bl #0x30eba4
00391f74  24 10 9d e5                                      ldr r1, [sp, #0x24]
00391f78  50 00 8d e5                                      str r0, [sp, #0x50]
00391f7c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00391f80  79 f3 fd eb                                      bl #0x30ed6c
00391f84  20 10 9d e5                                      ldr r1, [sp, #0x20]
00391f88  00 b0 a0 e1                                      mov fp, r0
00391f8c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00391f90  75 f3 fd eb                                      bl #0x30ed6c
00391f94  00 10 a0 e1                                      mov r1, r0
00391f98  0b 00 a0 e1                                      mov r0, fp
00391f9c  02 f1 fd eb                                      bl #0x30e3ac
00391fa0  00 10 a0 e1                                      mov r1, r0
00391fa4  0a 00 a0 e1                                      mov r0, sl
00391fa8  6f f3 fd eb                                      bl #0x30ed6c
00391fac  00 10 a0 e1                                      mov r1, r0
00391fb0  54 00 9d e5                                      ldr r0, [sp, #0x54]
00391fb4  fa f2 fd eb                                      bl #0x30eba4
00391fb8  03 10 a0 e3                                      mov r1, #3
00391fbc  54 00 8d e5                                      str r0, [sp, #0x54]
00391fc0  05 00 a0 e1                                      mov r0, r5
00391fc4  cb a6 ff eb                                      bl #0x37baf8
00391fc8  08 27 fe eb                                      bl #0x31bbf0
00391fcc  38 10 9d e5                                      ldr r1, [sp, #0x38]
00391fd0  00 a0 a0 e1                                      mov sl, r0
00391fd4  64 f3 fd eb                                      bl #0x30ed6c
00391fd8  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00391fdc  00 b0 a0 e1                                      mov fp, r0
00391fe0  0a 00 a0 e1                                      mov r0, sl
00391fe4  60 f3 fd eb                                      bl #0x30ed6c
00391fe8  34 10 9d e5                                      ldr r1, [sp, #0x34]
00391fec  00 30 a0 e1                                      mov r3, r0
00391ff0  0a 00 a0 e1                                      mov r0, sl
00391ff4  10 30 8d e5                                      str r3, [sp, #0x10]
00391ff8  5b f3 fd eb                                      bl #0x30ed6c
00391ffc  00 10 a0 e1                                      mov r1, r0
00392000  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00392004  e6 f2 fd eb                                      bl #0x30eba4
00392008  0b 10 a0 e1                                      mov r1, fp
0039200c  4c 00 8d e5                                      str r0, [sp, #0x4c]
00392010  50 00 9d e5                                      ldr r0, [sp, #0x50]
00392014  e2 f2 fd eb                                      bl #0x30eba4
00392018  10 30 9d e5                                      ldr r3, [sp, #0x10]
0039201c  50 00 8d e5                                      str r0, [sp, #0x50]
00392020  54 00 9d e5                                      ldr r0, [sp, #0x54]
00392024  03 10 a0 e1                                      mov r1, r3
00392028  dd f2 fd eb                                      bl #0x30eba4
0039202c  04 10 a0 e3                                      mov r1, #4
00392030  54 00 8d e5                                      str r0, [sp, #0x54]
00392034  05 00 a0 e1                                      mov r0, r5
00392038  ae a6 ff eb                                      bl #0x37baf8
0039203c  eb 26 fe eb                                      bl #0x31bbf0
00392040  04 10 98 e5                                      ldr r1, [r8, #4]
00392044  00 a0 a0 e1                                      mov sl, r0
00392048  47 f3 fd eb                                      bl #0x30ed6c
0039204c  08 10 98 e5                                      ldr r1, [r8, #8]
00392050  00 b0 a0 e1                                      mov fp, r0
00392054  0a 00 a0 e1                                      mov r0, sl
00392058  43 f3 fd eb                                      bl #0x30ed6c
0039205c  00 10 98 e5                                      ldr r1, [r8]
00392060  00 30 a0 e1                                      mov r3, r0
00392064  0a 00 a0 e1                                      mov r0, sl
00392068  10 30 8d e5                                      str r3, [sp, #0x10]
0039206c  3e f3 fd eb                                      bl #0x30ed6c
00392070  00 10 a0 e1                                      mov r1, r0
00392074  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00392078  c9 f2 fd eb                                      bl #0x30eba4
0039207c  0b 10 a0 e1                                      mov r1, fp
00392080  4c 00 8d e5                                      str r0, [sp, #0x4c]
00392084  50 00 9d e5                                      ldr r0, [sp, #0x50]
00392088  c5 f2 fd eb                                      bl #0x30eba4
0039208c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00392090  50 00 8d e5                                      str r0, [sp, #0x50]
00392094  54 00 9d e5                                      ldr r0, [sp, #0x54]
00392098  03 10 a0 e1                                      mov r1, r3
0039209c  c0 f2 fd eb                                      bl #0x30eba4
003920a0  00 a0 a0 e3                                      mov sl, #0
003920a4  54 00 8d e5                                      str r0, [sp, #0x54]
003920a8  98 fe ff ea                                      b #0x391b10
003920ac  02 10 a0 e3                                      mov r1, #2
003920b0  05 00 a0 e1                                      mov r0, r5
003920b4  8f a6 ff eb                                      bl #0x37baf8
003920b8  38 25 fe eb                                      bl #0x31b5a0
003920bc  60 21 90 e5                                      ldr r2, [r0, #0x160]
003920c0  00 30 a0 e1                                      mov r3, r0
003920c4  02 10 a0 e3                                      mov r1, #2
003920c8  4c 20 8d e5                                      str r2, [sp, #0x4c]
003920cc  64 21 93 e5                                      ldr r2, [r3, #0x164]
003920d0  05 00 a0 e1                                      mov r0, r5
003920d4  00 a0 a0 e3                                      mov sl, #0
003920d8  50 20 8d e5                                      str r2, [sp, #0x50]
003920dc  68 31 93 e5                                      ldr r3, [r3, #0x168]
003920e0  54 30 8d e5                                      str r3, [sp, #0x54]
003920e4  83 a6 ff eb                                      bl #0x37baf8
003920e8  2c 25 fe eb                                      bl #0x31b5a0
003920ec  6c 31 90 e5                                      ldr r3, [r0, #0x16c]
003920f0  40 30 8d e5                                      str r3, [sp, #0x40]
003920f4  70 31 90 e5                                      ldr r3, [r0, #0x170]
003920f8  44 30 8d e5                                      str r3, [sp, #0x44]
003920fc  74 31 90 e5                                      ldr r3, [r0, #0x174]
00392100  48 30 8d e5                                      str r3, [sp, #0x48]
00392104  81 fe ff ea                                      b #0x391b10
; mapping-symbol data/literal pool
00392108  2c 31 60 00 bc ca 52 00 04 42 00 00 50 ca 52 00  .byte 0x2c, 0x31, 0x60, 0x00, 0xbc, 0xca, 0x52, 0x00, 0x04, 0x42, 0x00, 0x00, 0x50, 0xca, 0x52, 0x00
00392118  ac 0d 53 00 04 12 00 00 f4 37 00 00 cc d1 52 00  .byte 0xac, 0x0d, 0x53, 0x00, 0x04, 0x12, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xcc, 0xd1, 0x52, 0x00
00392128  40 43 00 00                                      .byte 0x40, 0x43, 0x00, 0x00

; FUNCTION 0x0039212c, declared_size=672, range_size=672, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject12_PlaySound3DERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_PlaySound3D(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
0039212c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00392130  04 40 90 e5                                      ldr r4, [r0, #4]
00392134  00 70 a0 e1                                      mov r7, r0
00392138  02 a0 a0 e1                                      mov sl, r2
0039213c  09 00 94 e8                                      ldm r4, {r0, r3}
00392140  64 62 9f e5                                      ldr r6, [pc, #0x264]
00392144  28 d0 4d e2                                      sub sp, sp, #0x28
00392148  03 30 60 e0                                      rsb r3, r0, r3
0039214c  43 32 a0 e1                                      asr r3, r3, #4
00392150  06 60 8f e0                                      add r6, pc, r6
00392154  83 21 83 e0                                      add r2, r3, r3, lsl #3
00392158  02 23 82 e0                                      add r2, r2, r2, lsl #6
0039215c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00392160  82 27 82 e0                                      add r2, r2, r2, lsl #15
00392164  82 31 83 e0                                      add r3, r3, r2, lsl #3
00392168  00 00 53 e3                                      cmp r3, #0
0039216c  03 00 00 1a                                      bne #0x392180
00392170  38 02 9f e5                                      ldr r0, [pc, #0x238]
00392174  00 00 8f e0                                      add r0, pc, r0
00392178  4c db 0d eb                                      bl #0x708eb0
0039217c  00 00 94 e5                                      ldr r0, [r4]
00392180  c5 28 fe eb                                      bl #0x31c49c
00392184  28 32 9f e5                                      ldr r3, [pc, #0x228]
00392188  00 50 a0 e1                                      mov r5, r0
0039218c  03 30 96 e7                                      ldr r3, [r6, r3]
00392190  00 40 93 e5                                      ldr r4, [r3]
00392194  00 00 54 e3                                      cmp r4, #0
00392198  30 00 00 0a                                      beq #0x392260
0039219c  14 32 9f e5                                      ldr r3, [pc, #0x214]
003921a0  00 80 a0 e3                                      mov r8, #0
003921a4  03 30 96 e7                                      ldr r3, [r6, r3]
003921a8  00 90 93 e5                                      ldr sb, [r3]
003921ac  02 00 00 ea                                      b #0x3921bc
003921b0  01 80 88 e2                                      add r8, r8, #1
003921b4  04 00 58 e1                                      cmp r8, r4
003921b8  28 00 00 0a                                      beq #0x392260
003921bc  08 11 99 e7                                      ldr r1, [sb, r8, lsl #2]
003921c0  05 00 a0 e1                                      mov r0, r5
003921c4  54 f0 fd eb                                      bl #0x30e31c
003921c8  00 00 50 e3                                      cmp r0, #0
003921cc  f7 ff ff 1a                                      bne #0x3921b0
003921d0  04 20 97 e5                                      ldr r2, [r7, #4]
003921d4  0a 00 92 e8                                      ldm r2, {r1, r3}
003921d8  03 30 61 e0                                      rsb r3, r1, r3
003921dc  43 32 a0 e1                                      asr r3, r3, #4
003921e0  83 21 83 e0                                      add r2, r3, r3, lsl #3
003921e4  02 23 82 e0                                      add r2, r2, r2, lsl #6
003921e8  82 21 83 e0                                      add r2, r3, r2, lsl #3
003921ec  82 27 82 e0                                      add r2, r2, r2, lsl #15
003921f0  82 31 83 e0                                      add r3, r3, r2, lsl #3
003921f4  00 30 63 e2                                      rsb r3, r3, #0
003921f8  03 00 53 e3                                      cmp r3, #3
003921fc  19 00 00 9a                                      bls #0x392268
00392200  74 30 91 e5                                      ldr r3, [r1, #0x74]
00392204  03 00 53 e3                                      cmp r3, #3
00392208  25 00 00 0a                                      beq #0x3922a4
0039220c  68 e1 9a e5                                      ldr lr, [sl, #0x168]
00392210  60 51 9a e5                                      ldr r5, [sl, #0x160]
00392214  64 41 9a e5                                      ldr r4, [sl, #0x164]
00392218  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
0039221c  bf c4 a0 e3                                      mov ip, #0xbf000000
00392220  02 c5 8c e2                                      add ip, ip, #0x800000
00392224  03 30 96 e7                                      ldr r3, [r6, r3]
00392228  08 10 a0 e1                                      mov r1, r8
0039222c  1c 20 8d e2                                      add r2, sp, #0x1c
00392230  00 00 93 e5                                      ldr r0, [r3]
00392234  1c 50 8d e5                                      str r5, [sp, #0x1c]
00392238  00 30 a0 e3                                      mov r3, #0
0039223c  20 40 8d e5                                      str r4, [sp, #0x20]
00392240  24 e0 8d e5                                      str lr, [sp, #0x24]
00392244  01 e0 a0 e3                                      mov lr, #1
00392248  00 e0 8d e5                                      str lr, [sp]
0039224c  08 c0 8d e5                                      str ip, [sp, #8]
00392250  04 c0 8d e5                                      str ip, [sp, #4]
00392254  df 64 ff eb                                      bl #0x36b5d8
00392258  28 d0 8d e2                                      add sp, sp, #0x28
0039225c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00392260  00 80 e0 e3                                      mvn r8, #0
00392264  d9 ff ff ea                                      b #0x3921d0
00392268  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
0039226c  60 41 9a e5                                      ldr r4, [sl, #0x160]
00392270  64 51 9a e5                                      ldr r5, [sl, #0x164]
00392274  68 e1 9a e5                                      ldr lr, [sl, #0x168]
00392278  03 30 96 e7                                      ldr r3, [r6, r3]
0039227c  bf c4 a0 e3                                      mov ip, #0xbf000000
00392280  02 c5 8c e2                                      add ip, ip, #0x800000
00392284  00 00 93 e5                                      ldr r0, [r3]
00392288  08 10 a0 e1                                      mov r1, r8
0039228c  10 20 8d e2                                      add r2, sp, #0x10
00392290  00 30 a0 e3                                      mov r3, #0
00392294  10 40 8d e5                                      str r4, [sp, #0x10]
00392298  14 50 8d e5                                      str r5, [sp, #0x14]
0039229c  18 e0 8d e5                                      str lr, [sp, #0x18]
003922a0  e7 ff ff ea                                      b #0x392244
003922a4  02 10 a0 e3                                      mov r1, #2
003922a8  07 00 a0 e1                                      mov r0, r7
003922ac  11 a6 ff eb                                      bl #0x37baf8
003922b0  04 10 90 e5                                      ldr r1, [r0, #4]
003922b4  03 00 51 e3                                      cmp r1, #3
003922b8  d3 ff ff 1a                                      bne #0x39220c
003922bc  07 00 a0 e1                                      mov r0, r7
003922c0  0c a6 ff eb                                      bl #0x37baf8
003922c4  04 30 90 e5                                      ldr r3, [r0, #4]
003922c8  03 00 53 e3                                      cmp r3, #3
003922cc  ce ff ff 1a                                      bne #0x39220c
003922d0  04 40 97 e5                                      ldr r4, [r7, #4]
003922d4  b7 3d 06 e3                                      movw r3, #0x6db7
003922d8  db 36 4b e3                                      movt r3, #0xb6db
003922dc  05 00 94 e8                                      ldm r4, {r0, r2}
003922e0  02 20 60 e0                                      rsb r2, r0, r2
003922e4  42 22 a0 e1                                      asr r2, r2, #4
003922e8  93 02 03 e0                                      mul r3, r3, r2
003922ec  01 00 53 e3                                      cmp r3, #1
003922f0  03 00 00 8a                                      bhi #0x392304
003922f4  c4 00 9f e5                                      ldr r0, [pc, #0xc4]
003922f8  00 00 8f e0                                      add r0, pc, r0
003922fc  eb da 0d eb                                      bl #0x708eb0
00392300  00 00 94 e5                                      ldr r0, [r4]
00392304  70 00 80 e2                                      add r0, r0, #0x70
00392308  38 26 fe eb                                      bl #0x31bbf0
0039230c  04 40 97 e5                                      ldr r4, [r7, #4]
00392310  00 50 a0 e1                                      mov r5, r0
00392314  09 00 94 e8                                      ldm r4, {r0, r3}
00392318  03 30 60 e0                                      rsb r3, r0, r3
0039231c  43 32 a0 e1                                      asr r3, r3, #4
00392320  83 21 83 e0                                      add r2, r3, r3, lsl #3
00392324  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392328  82 21 83 e0                                      add r2, r3, r2, lsl #3
0039232c  82 27 82 e0                                      add r2, r2, r2, lsl #15
00392330  82 31 83 e0                                      add r3, r3, r2, lsl #3
00392334  00 30 63 e2                                      rsb r3, r3, #0
00392338  02 00 53 e3                                      cmp r3, #2
0039233c  03 00 00 8a                                      bhi #0x392350
00392340  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
00392344  00 00 8f e0                                      add r0, pc, r0
00392348  d8 da 0d eb                                      bl #0x708eb0
0039234c  00 00 94 e5                                      ldr r0, [r4]
00392350  e0 00 80 e2                                      add r0, r0, #0xe0
00392354  25 26 fe eb                                      bl #0x31bbf0
00392358  04 70 97 e5                                      ldr r7, [r7, #4]
0039235c  00 40 a0 e1                                      mov r4, r0
00392360  09 00 97 e8                                      ldm r7, {r0, r3}
00392364  03 30 60 e0                                      rsb r3, r0, r3
00392368  43 32 a0 e1                                      asr r3, r3, #4
0039236c  83 21 83 e0                                      add r2, r3, r3, lsl #3
00392370  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392374  82 21 83 e0                                      add r2, r3, r2, lsl #3
00392378  82 27 82 e0                                      add r2, r2, r2, lsl #15
0039237c  82 31 83 e0                                      add r3, r3, r2, lsl #3
00392380  00 30 63 e2                                      rsb r3, r3, #0
00392384  03 00 53 e3                                      cmp r3, #3
00392388  03 00 00 8a                                      bhi #0x39239c
0039238c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00392390  00 00 8f e0                                      add r0, pc, r0
00392394  c5 da 0d eb                                      bl #0x708eb0
00392398  00 00 97 e5                                      ldr r0, [r7]
0039239c  15 0e 80 e2                                      add r0, r0, #0x150
003923a0  12 26 fe eb                                      bl #0x31bbf0
003923a4  00 e0 a0 e1                                      mov lr, r0
003923a8  9a ff ff ea                                      b #0x392218
; mapping-symbol data/literal pool
003923ac  40 29 60 00 f4 c2 52 00 38 3d 00 00 a8 39 00 00  .byte 0x40, 0x29, 0x60, 0x00, 0xf4, 0xc2, 0x52, 0x00, 0x38, 0x3d, 0x00, 0x00, 0xa8, 0x39, 0x00, 0x00
003923bc  a4 0d 00 00 70 c1 52 00 24 c1 52 00 d8 c0 52 00  .byte 0xa4, 0x0d, 0x00, 0x00, 0x70, 0xc1, 0x52, 0x00, 0x24, 0xc1, 0x52, 0x00, 0xd8, 0xc0, 0x52, 0x00

; FUNCTION 0x003923cc, declared_size=596, range_size=596, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject7_PlayFXERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_PlayFX(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
003923cc  70 40 2d e9                                      push {r4, r5, r6, lr}
003923d0  04 30 90 e5                                      ldr r3, [r0, #4]
003923d4  30 42 9f e5                                      ldr r4, [pc, #0x230]
003923d8  20 d0 4d e2                                      sub sp, sp, #0x20
003923dc  04 10 93 e5                                      ldr r1, [r3, #4]
003923e0  00 c0 93 e5                                      ldr ip, [r3]
003923e4  04 40 8f e0                                      add r4, pc, r4
003923e8  00 50 a0 e1                                      mov r5, r0
003923ec  01 30 6c e0                                      rsb r3, ip, r1
003923f0  43 32 a0 e1                                      asr r3, r3, #4
003923f4  83 11 83 e0                                      add r1, r3, r3, lsl #3
003923f8  01 13 81 e0                                      add r1, r1, r1, lsl #6
003923fc  81 11 83 e0                                      add r1, r3, r1, lsl #3
00392400  81 17 81 e0                                      add r1, r1, r1, lsl #15
00392404  81 31 83 e0                                      add r3, r3, r1, lsl #3
00392408  00 00 53 e3                                      cmp r3, #0
0039240c  01 00 00 1a                                      bne #0x392418
00392410  20 d0 8d e2                                      add sp, sp, #0x20
00392414  70 80 bd e8                                      pop {r4, r5, r6, pc}
00392418  04 30 9c e5                                      ldr r3, [ip, #4]
0039241c  03 00 53 e3                                      cmp r3, #3
00392420  fa ff ff 1a                                      bne #0x392410
00392424  00 10 a0 e3                                      mov r1, #0
00392428  0c 20 8d e5                                      str r2, [sp, #0xc]
0039242c  b1 a5 ff eb                                      bl #0x37baf8
00392430  d8 ec ff eb                                      bl #0x38d798
00392434  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
00392438  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0039243c  03 30 94 e7                                      ldr r3, [r4, r3]
00392440  00 30 93 e5                                      ldr r3, [r3]
00392444  03 00 50 e1                                      cmp r0, r3
00392448  f0 ff ff 2a                                      bhs #0x392410
0039244c  04 60 95 e5                                      ldr r6, [r5, #4]
00392450  04 10 96 e5                                      ldr r1, [r6, #4]
00392454  00 30 96 e5                                      ldr r3, [r6]
00392458  01 30 63 e0                                      rsb r3, r3, r1
0039245c  43 32 a0 e1                                      asr r3, r3, #4
00392460  83 11 83 e0                                      add r1, r3, r3, lsl #3
00392464  01 13 81 e0                                      add r1, r1, r1, lsl #6
00392468  81 11 83 e0                                      add r1, r3, r1, lsl #3
0039246c  81 17 81 e0                                      add r1, r1, r1, lsl #15
00392470  81 31 83 e0                                      add r3, r3, r1, lsl #3
00392474  00 30 63 e2                                      rsb r3, r3, #0
00392478  03 00 53 e3                                      cmp r3, #3
0039247c  38 00 00 9a                                      bls #0x392564
00392480  00 30 a0 e3                                      mov r3, #0
00392484  1c 30 8d e5                                      str r3, [sp, #0x1c]
00392488  14 30 8d e5                                      str r3, [sp, #0x14]
0039248c  18 30 8d e5                                      str r3, [sp, #0x18]
00392490  0a 00 96 e8                                      ldm r6, {r1, r3}
00392494  03 30 61 e0                                      rsb r3, r1, r3
00392498  43 32 a0 e1                                      asr r3, r3, #4
0039249c  83 01 83 e0                                      add r0, r3, r3, lsl #3
003924a0  00 03 80 e0                                      add r0, r0, r0, lsl #6
003924a4  80 01 83 e0                                      add r0, r3, r0, lsl #3
003924a8  80 07 80 e0                                      add r0, r0, r0, lsl #15
003924ac  80 31 83 e0                                      add r3, r3, r0, lsl #3
003924b0  00 30 63 e2                                      rsb r3, r3, #0
003924b4  01 00 53 e3                                      cmp r3, #1
003924b8  05 00 00 8a                                      bhi #0x3924d4
003924bc  50 01 9f e5                                      ldr r0, [pc, #0x150]
003924c0  0c 20 8d e5                                      str r2, [sp, #0xc]
003924c4  00 00 8f e0                                      add r0, pc, r0
003924c8  78 da 0d eb                                      bl #0x708eb0
003924cc  00 10 96 e5                                      ldr r1, [r6]
003924d0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003924d4  74 30 91 e5                                      ldr r3, [r1, #0x74]
003924d8  03 00 53 e3                                      cmp r3, #3
003924dc  2c 00 00 0a                                      beq #0x392594
003924e0  68 01 92 e5                                      ldr r0, [r2, #0x168]
003924e4  60 11 92 e5                                      ldr r1, [r2, #0x160]
003924e8  64 31 92 e5                                      ldr r3, [r2, #0x164]
003924ec  1c 00 8d e5                                      str r0, [sp, #0x1c]
003924f0  14 10 8d e5                                      str r1, [sp, #0x14]
003924f4  18 30 8d e5                                      str r3, [sp, #0x18]
003924f8  04 50 95 e5                                      ldr r5, [r5, #4]
003924fc  09 00 95 e8                                      ldm r5, {r0, r3}
00392500  03 30 60 e0                                      rsb r3, r0, r3
00392504  43 32 a0 e1                                      asr r3, r3, #4
00392508  83 21 83 e0                                      add r2, r3, r3, lsl #3
0039250c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392510  82 21 83 e0                                      add r2, r3, r2, lsl #3
00392514  82 27 82 e0                                      add r2, r2, r2, lsl #15
00392518  82 31 83 e0                                      add r3, r3, r2, lsl #3
0039251c  00 00 53 e3                                      cmp r3, #0
00392520  03 00 00 1a                                      bne #0x392534
00392524  ec 00 9f e5                                      ldr r0, [pc, #0xec]
00392528  00 00 8f e0                                      add r0, pc, r0
0039252c  5f da 0d eb                                      bl #0x708eb0
00392530  00 00 95 e5                                      ldr r0, [r5]
00392534  ad 25 fe eb                                      bl #0x31bbf0
00392538  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
0039253c  03 40 94 e7                                      ldr r4, [r4, r3]
00392540  56 af 14 eb                                      bl #0x8be2a0
00392544  00 c0 a0 e3                                      mov ip, #0
00392548  00 10 a0 e1                                      mov r1, r0
0039254c  0c 30 a0 e1                                      mov r3, ip
00392550  04 00 a0 e1                                      mov r0, r4
00392554  14 20 8d e2                                      add r2, sp, #0x14
00392558  00 c0 8d e5                                      str ip, [sp]
0039255c  ec 0d 04 eb                                      bl #0x495d14
00392560  aa ff ff ea                                      b #0x392410
00392564  00 10 a0 e3                                      mov r1, #0
00392568  05 00 a0 e1                                      mov r0, r5
0039256c  0c 20 8d e5                                      str r2, [sp, #0xc]
00392570  60 a5 ff eb                                      bl #0x37baf8
00392574  87 ec ff eb                                      bl #0x38d798
00392578  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0039257c  00 10 a0 e1                                      mov r1, r0
00392580  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00392584  03 00 94 e7                                      ldr r0, [r4, r3]
00392588  00 30 a0 e3                                      mov r3, #0
0039258c  5c 0e 04 eb                                      bl #0x495f04
00392590  9e ff ff ea                                      b #0x392410
00392594  02 10 a0 e3                                      mov r1, #2
00392598  05 00 a0 e1                                      mov r0, r5
0039259c  0c 20 8d e5                                      str r2, [sp, #0xc]
003925a0  54 a5 ff eb                                      bl #0x37baf8
003925a4  04 10 90 e5                                      ldr r1, [r0, #4]
003925a8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003925ac  03 00 51 e3                                      cmp r1, #3
003925b0  ca ff ff 1a                                      bne #0x3924e0
003925b4  05 00 a0 e1                                      mov r0, r5
003925b8  4e a5 ff eb                                      bl #0x37baf8
003925bc  04 60 90 e5                                      ldr r6, [r0, #4]
003925c0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003925c4  03 00 56 e3                                      cmp r6, #3
003925c8  c4 ff ff 1a                                      bne #0x3924e0
003925cc  01 10 a0 e3                                      mov r1, #1
003925d0  05 00 a0 e1                                      mov r0, r5
003925d4  47 a5 ff eb                                      bl #0x37baf8
003925d8  84 25 fe eb                                      bl #0x31bbf0
003925dc  02 10 a0 e3                                      mov r1, #2
003925e0  14 00 8d e5                                      str r0, [sp, #0x14]
003925e4  05 00 a0 e1                                      mov r0, r5
003925e8  42 a5 ff eb                                      bl #0x37baf8
003925ec  7f 25 fe eb                                      bl #0x31bbf0
003925f0  06 10 a0 e1                                      mov r1, r6
003925f4  18 00 8d e5                                      str r0, [sp, #0x18]
003925f8  05 00 a0 e1                                      mov r0, r5
003925fc  3d a5 ff eb                                      bl #0x37baf8
00392600  7a 25 fe eb                                      bl #0x31bbf0
00392604  1c 00 8d e5                                      str r0, [sp, #0x1c]
00392608  ba ff ff ea                                      b #0x3924f8
; mapping-symbol data/literal pool
0039260c  ac 26 60 00 c4 06 00 00 a4 bf 52 00 40 bf 52 00  .byte 0xac, 0x26, 0x60, 0x00, 0xc4, 0x06, 0x00, 0x00, 0xa4, 0xbf, 0x52, 0x00, 0x40, 0xbf, 0x52, 0x00
0039261c  08 1b 00 00                                      .byte 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x00392620, declared_size=244, range_size=244, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject7_GrabFXERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_GrabFX(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00392620  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00392624  04 30 90 e5                                      ldr r3, [r0, #4]
00392628  01 60 a0 e1                                      mov r6, r1
0039262c  02 70 a0 e1                                      mov r7, r2
00392630  04 10 93 e5                                      ldr r1, [r3, #4]
00392634  00 30 93 e5                                      ldr r3, [r3]
00392638  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
0039263c  00 50 a0 e1                                      mov r5, r0
00392640  01 10 63 e0                                      rsb r1, r3, r1
00392644  41 12 a0 e1                                      asr r1, r1, #4
00392648  04 40 8f e0                                      add r4, pc, r4
0039264c  81 21 81 e0                                      add r2, r1, r1, lsl #3
00392650  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392654  82 21 81 e0                                      add r2, r1, r2, lsl #3
00392658  82 27 82 e0                                      add r2, r2, r2, lsl #15
0039265c  82 11 81 e0                                      add r1, r1, r2, lsl #3
00392660  00 00 51 e3                                      cmp r1, #0
00392664  00 00 00 1a                                      bne #0x39266c
00392668  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0039266c  04 30 93 e5                                      ldr r3, [r3, #4]
00392670  03 00 53 e3                                      cmp r3, #3
00392674  fb ff ff 1a                                      bne #0x392668
00392678  00 10 a0 e3                                      mov r1, #0
0039267c  1d a5 ff eb                                      bl #0x37baf8
00392680  44 ec ff eb                                      bl #0x38d798
00392684  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00392688  03 30 94 e7                                      ldr r3, [r4, r3]
0039268c  00 30 93 e5                                      ldr r3, [r3]
00392690  03 00 50 e1                                      cmp r0, r3
00392694  f3 ff ff 2a                                      bhs #0x392668
00392698  04 50 95 e5                                      ldr r5, [r5, #4]
0039269c  09 00 95 e8                                      ldm r5, {r0, r3}
003926a0  03 30 60 e0                                      rsb r3, r0, r3
003926a4  43 32 a0 e1                                      asr r3, r3, #4
003926a8  83 21 83 e0                                      add r2, r3, r3, lsl #3
003926ac  02 23 82 e0                                      add r2, r2, r2, lsl #6
003926b0  82 21 83 e0                                      add r2, r3, r2, lsl #3
003926b4  82 27 82 e0                                      add r2, r2, r2, lsl #15
003926b8  82 31 83 e0                                      add r3, r3, r2, lsl #3
003926bc  00 00 53 e3                                      cmp r3, #0
003926c0  03 00 00 1a                                      bne #0x3926d4
003926c4  40 00 9f e5                                      ldr r0, [pc, #0x40]
003926c8  00 00 8f e0                                      add r0, pc, r0
003926cc  f7 d9 0d eb                                      bl #0x708eb0
003926d0  00 00 95 e5                                      ldr r0, [r5]
003926d4  45 25 fe eb                                      bl #0x31bbf0
003926d8  30 30 9f e5                                      ldr r3, [pc, #0x30]
003926dc  03 40 94 e7                                      ldr r4, [r4, r3]
003926e0  ee ae 14 eb                                      bl #0x8be2a0
003926e4  07 20 a0 e1                                      mov r2, r7
003926e8  00 10 a0 e1                                      mov r1, r0
003926ec  04 00 a0 e1                                      mov r0, r4
003926f0  4e 0b 04 eb                                      bl #0x495430
003926f4  00 10 a0 e1                                      mov r1, r0
003926f8  06 00 a0 e1                                      mov r0, r6
003926fc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00392700  fe f0 ff ea                                      b #0x38eb00
; mapping-symbol data/literal pool
00392704  48 24 60 00 c4 06 00 00 a0 bd 52 00 08 1b 00 00  .byte 0x48, 0x24, 0x60, 0x00, 0xc4, 0x06, 0x00, 0x00, 0xa0, 0xbd, 0x52, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x00392714, declared_size=308, range_size=308, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject15_RegisterSummonERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_RegisterSummon(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00392714  70 40 2d e9                                      push {r4, r5, r6, lr}
00392718  04 20 90 e5                                      ldr r2, [r0, #4]
0039271c  18 41 9f e5                                      ldr r4, [pc, #0x118]
00392720  00 50 a0 e1                                      mov r5, r0
00392724  0a 00 92 e8                                      ldm r2, {r1, r3}
00392728  04 40 8f e0                                      add r4, pc, r4
0039272c  03 30 61 e0                                      rsb r3, r1, r3
00392730  43 32 a0 e1                                      asr r3, r3, #4
00392734  83 21 83 e0                                      add r2, r3, r3, lsl #3
00392738  02 23 82 e0                                      add r2, r2, r2, lsl #6
0039273c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00392740  82 27 82 e0                                      add r2, r2, r2, lsl #15
00392744  82 31 83 e0                                      add r3, r3, r2, lsl #3
00392748  00 00 53 e3                                      cmp r3, #0
0039274c  00 00 00 1a                                      bne #0x392754
00392750  70 80 bd e8                                      pop {r4, r5, r6, pc}
00392754  04 30 91 e5                                      ldr r3, [r1, #4]
00392758  03 00 53 e3                                      cmp r3, #3
0039275c  fb ff ff 1a                                      bne #0x392750
00392760  00 10 a0 e3                                      mov r1, #0
00392764  e3 a4 ff eb                                      bl #0x37baf8
00392768  0a ec ff eb                                      bl #0x38d798
0039276c  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00392770  03 30 94 e7                                      ldr r3, [r4, r3]
00392774  00 30 93 e5                                      ldr r3, [r3]
00392778  03 00 50 e1                                      cmp r0, r3
0039277c  f3 ff ff 2a                                      bhs #0x392750
00392780  04 40 95 e5                                      ldr r4, [r5, #4]
00392784  09 00 94 e8                                      ldm r4, {r0, r3}
00392788  03 30 60 e0                                      rsb r3, r0, r3
0039278c  43 32 a0 e1                                      asr r3, r3, #4
00392790  83 21 83 e0                                      add r2, r3, r3, lsl #3
00392794  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392798  82 21 83 e0                                      add r2, r3, r2, lsl #3
0039279c  82 27 82 e0                                      add r2, r2, r2, lsl #15
003927a0  82 31 83 e0                                      add r3, r3, r2, lsl #3
003927a4  00 00 53 e3                                      cmp r3, #0
003927a8  03 00 00 1a                                      bne #0x3927bc
003927ac  90 00 9f e5                                      ldr r0, [pc, #0x90]
003927b0  00 00 8f e0                                      add r0, pc, r0
003927b4  bd d9 0d eb                                      bl #0x708eb0
003927b8  00 00 94 e5                                      ldr r0, [r4]
003927bc  0b 25 fe eb                                      bl #0x31bbf0
003927c0  41 ef fd eb                                      bl #0x30e4cc
003927c4  04 20 95 e5                                      ldr r2, [r5, #4]
003927c8  00 40 a0 e1                                      mov r4, r0
003927cc  00 30 92 e5                                      ldr r3, [r2]
003927d0  04 20 92 e5                                      ldr r2, [r2, #4]
003927d4  02 30 63 e0                                      rsb r3, r3, r2
003927d8  43 32 a0 e1                                      asr r3, r3, #4
003927dc  83 21 83 e0                                      add r2, r3, r3, lsl #3
003927e0  02 23 82 e0                                      add r2, r2, r2, lsl #6
003927e4  82 21 83 e0                                      add r2, r3, r2, lsl #3
003927e8  82 27 82 e0                                      add r2, r2, r2, lsl #15
003927ec  82 31 83 e0                                      add r3, r3, r2, lsl #3
003927f0  00 30 63 e2                                      rsb r3, r3, #0
003927f4  01 00 53 e3                                      cmp r3, #1
003927f8  05 00 00 9a                                      bls #0x392814
003927fc  05 00 a0 e1                                      mov r0, r5
00392800  01 10 a0 e3                                      mov r1, #1
00392804  bb a4 ff eb                                      bl #0x37baf8
00392808  04 30 90 e5                                      ldr r3, [r0, #4]
0039280c  03 00 53 e3                                      cmp r3, #3
00392810  03 00 00 0a                                      beq #0x392824
00392814  01 10 a0 e3                                      mov r1, #1
00392818  04 00 a0 e1                                      mov r0, r4
0039281c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00392820  93 63 00 ea                                      b #0x3ab674
00392824  01 10 a0 e3                                      mov r1, #1
00392828  05 00 a0 e1                                      mov r0, r5
0039282c  b1 a4 ff eb                                      bl #0x37baf8
00392830  d8 eb ff eb                                      bl #0x38d798
00392834  00 10 a0 e1                                      mov r1, r0
00392838  f6 ff ff ea                                      b #0x392818
; mapping-symbol data/literal pool
0039283c  68 23 60 00 04 42 00 00 b8 bc 52 00              .byte 0x68, 0x23, 0x60, 0x00, 0x04, 0x42, 0x00, 0x00, 0xb8, 0xbc, 0x52, 0x00

; FUNCTION 0x00392848, declared_size=168, range_size=168, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject16_GetObjectByNameERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_GetObjectByName(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00392848  70 40 2d e9                                      push {r4, r5, r6, lr}
0039284c  04 20 90 e5                                      ldr r2, [r0, #4]
00392850  01 40 a0 e1                                      mov r4, r1
00392854  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00392858  03 00 92 e8                                      ldm r2, {r0, r1}
0039285c  03 30 8f e0                                      add r3, pc, r3
00392860  18 d0 4d e2                                      sub sp, sp, #0x18
00392864  01 20 60 e0                                      rsb r2, r0, r1
00392868  42 22 a0 e1                                      asr r2, r2, #4
0039286c  82 11 82 e0                                      add r1, r2, r2, lsl #3
00392870  01 13 81 e0                                      add r1, r1, r1, lsl #6
00392874  81 11 82 e0                                      add r1, r2, r1, lsl #3
00392878  81 17 81 e0                                      add r1, r1, r1, lsl #15
0039287c  81 21 82 e0                                      add r2, r2, r1, lsl #3
00392880  01 00 72 e3                                      cmn r2, #1
00392884  01 00 00 0a                                      beq #0x392890
00392888  18 d0 8d e2                                      add sp, sp, #0x18
0039288c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00392890  04 20 90 e5                                      ldr r2, [r0, #4]
00392894  04 00 52 e3                                      cmp r2, #4
00392898  fa ff ff 1a                                      bne #0x392888
0039289c  48 20 9f e5                                      ldr r2, [pc, #0x48]
003928a0  0c 50 8d e2                                      add r5, sp, #0xc
003928a4  02 30 93 e7                                      ldr r3, [r3, r2]
003928a8  38 60 93 e5                                      ldr r6, [r3, #0x38]
003928ac  fa 26 fe eb                                      bl #0x31c49c
003928b0  00 c0 a0 e3                                      mov ip, #0
003928b4  00 20 a0 e1                                      mov r2, r0
003928b8  06 10 a0 e1                                      mov r1, r6
003928bc  00 30 e0 e3                                      mvn r3, #0
003928c0  05 00 a0 e1                                      mov r0, r5
003928c4  04 c0 8d e5                                      str ip, [sp, #4]
003928c8  00 c0 8d e5                                      str ip, [sp]
003928cc  f3 e0 fe eb                                      bl #0x34aca0
003928d0  05 00 a0 e1                                      mov r0, r5
003928d4  82 b5 fe eb                                      bl #0x33fee4
003928d8  00 10 a0 e1                                      mov r1, r0
003928dc  04 00 a0 e1                                      mov r0, r4
003928e0  44 a8 ff eb                                      bl #0x37c9f8
003928e4  e7 ff ff ea                                      b #0x392888
; mapping-symbol data/literal pool
003928e8  34 22 60 00 f4 37 00 00                          .byte 0x34, 0x22, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003928f0, declared_size=656, range_size=656, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject12_SetPositionERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_SetPosition(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
003928f0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003928f4  04 30 90 e5                                      ldr r3, [r0, #4]
003928f8  02 40 a0 e1                                      mov r4, r2
003928fc  74 52 9f e5                                      ldr r5, [pc, #0x274]
00392900  06 00 93 e8                                      ldm r3, {r1, r2}
00392904  05 50 8f e0                                      add r5, pc, r5
00392908  24 d0 4d e2                                      sub sp, sp, #0x24
0039290c  02 30 61 e0                                      rsb r3, r1, r2
00392910  43 32 a0 e1                                      asr r3, r3, #4
00392914  00 60 a0 e1                                      mov r6, r0
00392918  83 21 83 e0                                      add r2, r3, r3, lsl #3
0039291c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392920  82 21 83 e0                                      add r2, r3, r2, lsl #3
00392924  82 27 82 e0                                      add r2, r2, r2, lsl #15
00392928  82 31 83 e0                                      add r3, r3, r2, lsl #3
0039292c  00 30 63 e2                                      rsb r3, r3, #0
00392930  01 00 53 e3                                      cmp r3, #1
00392934  1a 00 00 0a                                      beq #0x3929a4
00392938  03 00 53 e3                                      cmp r3, #3
0039293c  01 00 00 0a                                      beq #0x392948
00392940  24 d0 8d e2                                      add sp, sp, #0x24
00392944  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00392948  04 30 91 e5                                      ldr r3, [r1, #4]
0039294c  03 00 53 e3                                      cmp r3, #3
00392950  fa ff ff 1a                                      bne #0x392940
00392954  01 10 a0 e3                                      mov r1, #1
00392958  66 a4 ff eb                                      bl #0x37baf8
0039295c  04 30 90 e5                                      ldr r3, [r0, #4]
00392960  03 00 53 e3                                      cmp r3, #3
00392964  f5 ff ff 1a                                      bne #0x392940
00392968  06 00 a0 e1                                      mov r0, r6
0039296c  02 10 a0 e3                                      mov r1, #2
00392970  60 a4 ff eb                                      bl #0x37baf8
00392974  04 30 90 e5                                      ldr r3, [r0, #4]
00392978  03 00 53 e3                                      cmp r3, #3
0039297c  ef ff ff 1a                                      bne #0x392940
00392980  04 20 96 e5                                      ldr r2, [r6, #4]
00392984  b7 3d 06 e3                                      movw r3, #0x6db7
00392988  db 36 4b e3                                      movt r3, #0xb6db
0039298c  04 10 92 e5                                      ldr r1, [r2, #4]
00392990  00 20 92 e5                                      ldr r2, [r2]
00392994  01 20 62 e0                                      rsb r2, r2, r1
00392998  42 22 a0 e1                                      asr r2, r2, #4
0039299c  93 02 03 e0                                      mul r3, r3, r2
003929a0  32 00 00 ea                                      b #0x392a70
003929a4  04 30 91 e5                                      ldr r3, [r1, #4]
003929a8  04 00 53 e3                                      cmp r3, #4
003929ac  19 00 00 1a                                      bne #0x392a18
003929b0  06 00 a0 e1                                      mov r0, r6
003929b4  00 10 a0 e3                                      mov r1, #0
003929b8  4e a4 ff eb                                      bl #0x37baf8
003929bc  04 30 90 e5                                      ldr r3, [r0, #4]
003929c0  04 00 53 e3                                      cmp r3, #4
003929c4  57 00 00 0a                                      beq #0x392b28
003929c8  00 10 a0 e3                                      mov r1, #0
003929cc  06 00 a0 e1                                      mov r0, r6
003929d0  48 a4 ff eb                                      bl #0x37baf8
003929d4  f1 22 fe eb                                      bl #0x31b5a0
003929d8  00 50 a0 e1                                      mov r5, r0
003929dc  00 00 55 e3                                      cmp r5, #0
003929e0  d6 ff ff 0a                                      beq #0x392940
003929e4  04 00 a0 e1                                      mov r0, r4
003929e8  16 1e 85 e2                                      add r1, r5, #0x160
003929ec  01 20 a0 e3                                      mov r2, #1
003929f0  ef 04 00 eb                                      bl #0x393db4
003929f4  60 31 95 e5                                      ldr r3, [r5, #0x160]
003929f8  04 00 a0 e1                                      mov r0, r4
003929fc  e0 31 84 e5                                      str r3, [r4, #0x1e0]
00392a00  64 31 95 e5                                      ldr r3, [r5, #0x164]
00392a04  e4 31 84 e5                                      str r3, [r4, #0x1e4]
00392a08  68 31 95 e5                                      ldr r3, [r5, #0x168]
00392a0c  e8 31 84 e5                                      str r3, [r4, #0x1e8]
00392a10  1e 05 00 eb                                      bl #0x393e90
00392a14  c9 ff ff ea                                      b #0x392940
00392a18  00 10 a0 e3                                      mov r1, #0
00392a1c  35 a4 ff eb                                      bl #0x37baf8
00392a20  04 30 90 e5                                      ldr r3, [r0, #4]
00392a24  07 00 53 e3                                      cmp r3, #7
00392a28  32 00 00 0a                                      beq #0x392af8
00392a2c  06 00 a0 e1                                      mov r0, r6
00392a30  00 10 a0 e3                                      mov r1, #0
00392a34  2f a4 ff eb                                      bl #0x37baf8
00392a38  04 30 90 e5                                      ldr r3, [r0, #4]
00392a3c  02 00 53 e3                                      cmp r3, #2
00392a40  be ff ff 1a                                      bne #0x392940
00392a44  04 30 96 e5                                      ldr r3, [r6, #4]
00392a48  04 20 93 e5                                      ldr r2, [r3, #4]
00392a4c  00 30 93 e5                                      ldr r3, [r3]
00392a50  02 30 63 e0                                      rsb r3, r3, r2
00392a54  43 32 a0 e1                                      asr r3, r3, #4
00392a58  83 21 83 e0                                      add r2, r3, r3, lsl #3
00392a5c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392a60  82 21 83 e0                                      add r2, r3, r2, lsl #3
00392a64  82 27 82 e0                                      add r2, r2, r2, lsl #15
00392a68  82 31 83 e0                                      add r3, r3, r2, lsl #3
00392a6c  00 30 63 e2                                      rsb r3, r3, #0
00392a70  01 00 53 e3                                      cmp r3, #1
00392a74  cd ff ff 0a                                      beq #0x3929b0
00392a78  03 00 53 e3                                      cmp r3, #3
00392a7c  af ff ff 1a                                      bne #0x392940
00392a80  00 10 a0 e3                                      mov r1, #0
00392a84  06 00 a0 e1                                      mov r0, r6
00392a88  1a a4 ff eb                                      bl #0x37baf8
00392a8c  57 24 fe eb                                      bl #0x31bbf0
00392a90  01 10 a0 e3                                      mov r1, #1
00392a94  00 70 a0 e1                                      mov r7, r0
00392a98  06 00 a0 e1                                      mov r0, r6
00392a9c  15 a4 ff eb                                      bl #0x37baf8
00392aa0  52 24 fe eb                                      bl #0x31bbf0
00392aa4  02 10 a0 e3                                      mov r1, #2
00392aa8  00 50 a0 e1                                      mov r5, r0
00392aac  06 00 a0 e1                                      mov r0, r6
00392ab0  10 a4 ff eb                                      bl #0x37baf8
00392ab4  4d 24 fe eb                                      bl #0x31bbf0
00392ab8  08 10 8d e2                                      add r1, sp, #8
00392abc  10 00 8d e5                                      str r0, [sp, #0x10]
00392ac0  01 20 a0 e3                                      mov r2, #1
00392ac4  04 00 a0 e1                                      mov r0, r4
00392ac8  08 70 8d e5                                      str r7, [sp, #8]
00392acc  0c 50 8d e5                                      str r5, [sp, #0xc]
00392ad0  b7 04 00 eb                                      bl #0x393db4
00392ad4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00392ad8  10 30 9d e5                                      ldr r3, [sp, #0x10]
00392adc  08 10 9d e5                                      ldr r1, [sp, #8]
00392ae0  04 00 a0 e1                                      mov r0, r4
00392ae4  e4 21 84 e5                                      str r2, [r4, #0x1e4]
00392ae8  e0 11 84 e5                                      str r1, [r4, #0x1e0]
00392aec  e8 31 84 e5                                      str r3, [r4, #0x1e8]
00392af0  e6 04 00 eb                                      bl #0x393e90
00392af4  91 ff ff ea                                      b #0x392940
00392af8  04 30 96 e5                                      ldr r3, [r6, #4]
00392afc  04 20 93 e5                                      ldr r2, [r3, #4]
00392b00  00 30 93 e5                                      ldr r3, [r3]
00392b04  02 20 63 e0                                      rsb r2, r3, r2
00392b08  42 22 a0 e1                                      asr r2, r2, #4
00392b0c  82 31 82 e0                                      add r3, r2, r2, lsl #3
00392b10  03 33 83 e0                                      add r3, r3, r3, lsl #6
00392b14  83 31 82 e0                                      add r3, r2, r3, lsl #3
00392b18  83 37 83 e0                                      add r3, r3, r3, lsl #15
00392b1c  83 31 82 e0                                      add r3, r2, r3, lsl #3
00392b20  00 30 63 e2                                      rsb r3, r3, #0
00392b24  d1 ff ff ea                                      b #0x392a70
00392b28  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00392b2c  00 10 a0 e3                                      mov r1, #0
00392b30  06 00 a0 e1                                      mov r0, r6
00392b34  03 30 95 e7                                      ldr r3, [r5, r3]
00392b38  14 50 8d e2                                      add r5, sp, #0x14
00392b3c  38 60 93 e5                                      ldr r6, [r3, #0x38]
00392b40  ec a3 ff eb                                      bl #0x37baf8
00392b44  54 26 fe eb                                      bl #0x31c49c
00392b48  00 c0 a0 e3                                      mov ip, #0
00392b4c  00 20 a0 e1                                      mov r2, r0
00392b50  06 10 a0 e1                                      mov r1, r6
00392b54  05 00 a0 e1                                      mov r0, r5
00392b58  00 30 e0 e3                                      mvn r3, #0
00392b5c  04 c0 8d e5                                      str ip, [sp, #4]
00392b60  00 c0 8d e5                                      str ip, [sp]
00392b64  4d e0 fe eb                                      bl #0x34aca0
00392b68  05 00 a0 e1                                      mov r0, r5
00392b6c  dc b4 fe eb                                      bl #0x33fee4
00392b70  00 50 a0 e1                                      mov r5, r0
00392b74  98 ff ff ea                                      b #0x3929dc
; mapping-symbol data/literal pool
00392b78  8c 21 60 00 f4 37 00 00                          .byte 0x8c, 0x21, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00392b80, declared_size=1936, range_size=1936, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject21_TargetListSearchRectERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_TargetListSearchRect(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00392b80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00392b84  04 70 90 e5                                      ldr r7, [r0, #4]
00392b88  02 60 a0 e1                                      mov r6, r2
00392b8c  58 47 9f e5                                      ldr r4, [pc, #0x758]
00392b90  0a 00 97 e8                                      ldm r7, {r1, r3}
00392b94  04 40 8f e0                                      add r4, pc, r4
00392b98  3c d0 4d e2                                      sub sp, sp, #0x3c
00392b9c  03 30 61 e0                                      rsb r3, r1, r3
00392ba0  43 32 a0 e1                                      asr r3, r3, #4
00392ba4  00 50 a0 e1                                      mov r5, r0
00392ba8  83 21 83 e0                                      add r2, r3, r3, lsl #3
00392bac  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392bb0  82 21 83 e0                                      add r2, r3, r2, lsl #3
00392bb4  82 27 82 e0                                      add r2, r2, r2, lsl #15
00392bb8  82 31 83 e0                                      add r3, r3, r2, lsl #3
00392bbc  00 30 63 e2                                      rsb r3, r3, #0
00392bc0  01 00 53 e3                                      cmp r3, #1
00392bc4  04 00 00 9a                                      bls #0x392bdc
00392bc8  00 00 53 e3                                      cmp r3, #0
00392bcc  04 00 00 0a                                      beq #0x392be4
00392bd0  04 30 91 e5                                      ldr r3, [r1, #4]
00392bd4  03 00 53 e3                                      cmp r3, #3
00392bd8  08 00 00 0a                                      beq #0x392c00
00392bdc  3c d0 8d e2                                      add sp, sp, #0x3c
00392be0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00392be4  04 07 9f e5                                      ldr r0, [pc, #0x704]
00392be8  00 00 8f e0                                      add r0, pc, r0
00392bec  af d8 0d eb                                      bl #0x708eb0
00392bf0  00 10 97 e5                                      ldr r1, [r7]
00392bf4  04 30 91 e5                                      ldr r3, [r1, #4]
00392bf8  03 00 53 e3                                      cmp r3, #3
00392bfc  f6 ff ff 1a                                      bne #0x392bdc
00392c00  04 70 95 e5                                      ldr r7, [r5, #4]
00392c04  0c 00 97 e8                                      ldm r7, {r2, r3}
00392c08  03 30 62 e0                                      rsb r3, r2, r3
00392c0c  43 32 a0 e1                                      asr r3, r3, #4
00392c10  83 11 83 e0                                      add r1, r3, r3, lsl #3
00392c14  01 13 81 e0                                      add r1, r1, r1, lsl #6
00392c18  81 11 83 e0                                      add r1, r3, r1, lsl #3
00392c1c  81 17 81 e0                                      add r1, r1, r1, lsl #15
00392c20  81 31 83 e0                                      add r3, r3, r1, lsl #3
00392c24  00 30 63 e2                                      rsb r3, r3, #0
00392c28  01 00 53 e3                                      cmp r3, #1
00392c2c  03 00 00 8a                                      bhi #0x392c40
00392c30  bc 06 9f e5                                      ldr r0, [pc, #0x6bc]
00392c34  00 00 8f e0                                      add r0, pc, r0
00392c38  9c d8 0d eb                                      bl #0x708eb0
00392c3c  00 20 97 e5                                      ldr r2, [r7]
00392c40  74 70 92 e5                                      ldr r7, [r2, #0x74]
00392c44  03 00 57 e3                                      cmp r7, #3
00392c48  e3 ff ff 1a                                      bne #0x392bdc
00392c4c  04 20 95 e5                                      ldr r2, [r5, #4]
00392c50  68 31 96 e5                                      ldr r3, [r6, #0x168]
00392c54  60 01 96 e5                                      ldr r0, [r6, #0x160]
00392c58  64 11 96 e5                                      ldr r1, [r6, #0x164]
00392c5c  00 05 92 e8                                      ldm r2, {r8, sl}
00392c60  2c 00 8d e5                                      str r0, [sp, #0x2c]
00392c64  30 10 8d e5                                      str r1, [sp, #0x30]
00392c68  34 30 8d e5                                      str r3, [sp, #0x34]
00392c6c  00 30 92 e5                                      ldr r3, [r2]
00392c70  04 20 92 e5                                      ldr r2, [r2, #4]
00392c74  02 30 63 e0                                      rsb r3, r3, r2
00392c78  43 32 a0 e1                                      asr r3, r3, #4
00392c7c  83 21 83 e0                                      add r2, r3, r3, lsl #3
00392c80  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392c84  82 21 83 e0                                      add r2, r3, r2, lsl #3
00392c88  82 27 82 e0                                      add r2, r2, r2, lsl #15
00392c8c  82 31 83 e0                                      add r3, r3, r2, lsl #3
00392c90  00 30 63 e2                                      rsb r3, r3, #0
00392c94  02 00 53 e3                                      cmp r3, #2
00392c98  6b 00 00 8a                                      bhi #0x392e4c
00392c9c  0a 80 68 e0                                      rsb r8, r8, sl
00392ca0  48 82 a0 e1                                      asr r8, r8, #4
00392ca4  88 71 88 e0                                      add r7, r8, r8, lsl #3
00392ca8  07 73 87 e0                                      add r7, r7, r7, lsl #6
00392cac  87 71 88 e0                                      add r7, r8, r7, lsl #3
00392cb0  87 77 87 e0                                      add r7, r7, r7, lsl #15
00392cb4  87 71 88 e0                                      add r7, r8, r7, lsl #3
00392cb8  07 70 e0 e1                                      mvn r7, r7
00392cbc  03 00 57 e1                                      cmp r7, r3
00392cc0  30 00 00 3a                                      blo #0x392d88
00392cc4  38 33 96 e5                                      ldr r3, [r6, #0x338]
00392cc8  80 30 13 e2                                      ands r3, r3, #0x80
00392ccc  1a 00 00 0a                                      beq #0x392d3c
00392cd0  20 26 9f e5                                      ldr r2, [pc, #0x620]
00392cd4  20 c6 9f e5                                      ldr ip, [pc, #0x620]
00392cd8  00 30 a0 e3                                      mov r3, #0
00392cdc  02 20 94 e7                                      ldr r2, [r4, r2]
00392ce0  0c c0 94 e7                                      ldr ip, [r4, ip]
00392ce4  03 10 a0 e1                                      mov r1, r3
00392ce8  40 20 92 e5                                      ldr r2, [r2, #0x40]
00392cec  08 c0 8c e2                                      add ip, ip, #8
00392cf0  05 00 a0 e1                                      mov r0, r5
00392cf4  18 c0 8d e5                                      str ip, [sp, #0x18]
00392cf8  1c 20 8d e5                                      str r2, [sp, #0x1c]
00392cfc  20 30 8d e5                                      str r3, [sp, #0x20]
00392d00  7c a3 ff eb                                      bl #0x37baf8
00392d04  b9 23 fe eb                                      bl #0x31bbf0
00392d08  01 10 a0 e3                                      mov r1, #1
00392d0c  00 40 a0 e1                                      mov r4, r0
00392d10  05 00 a0 e1                                      mov r0, r5
00392d14  77 a3 ff eb                                      bl #0x37baf8
00392d18  b4 23 fe eb                                      bl #0x31bbf0
00392d1c  18 c0 8d e2                                      add ip, sp, #0x18
00392d20  00 30 a0 e1                                      mov r3, r0
00392d24  04 20 a0 e1                                      mov r2, r4
00392d28  c1 0f 86 e2                                      add r0, r6, #0x304
00392d2c  2c 10 8d e2                                      add r1, sp, #0x2c
00392d30  00 c0 8d e5                                      str ip, [sp]
00392d34  4d 40 04 eb                                      bl #0x4a2e70
00392d38  a7 ff ff ea                                      b #0x392bdc
00392d3c  3c 23 96 e5                                      ldr r2, [r6, #0x33c]
00392d40  02 00 52 e3                                      cmp r2, #2
00392d44  65 00 00 0a                                      beq #0x392ee0
00392d48  a8 05 9f e5                                      ldr r0, [pc, #0x5a8]
00392d4c  ac 25 9f e5                                      ldr r2, [pc, #0x5ac]
00392d50  03 10 a0 e1                                      mov r1, r3
00392d54  00 c0 94 e7                                      ldr ip, [r4, r0]
00392d58  02 20 94 e7                                      ldr r2, [r4, r2]
00392d5c  05 00 a0 e1                                      mov r0, r5
00392d60  38 c0 9c e5                                      ldr ip, [ip, #0x38]
00392d64  08 20 82 e2                                      add r2, r2, #8
00392d68  18 20 8d e5                                      str r2, [sp, #0x18]
00392d6c  80 20 8c e2                                      add r2, ip, #0x80
00392d70  1c 20 8d e5                                      str r2, [sp, #0x1c]
00392d74  80 c0 9c e5                                      ldr ip, [ip, #0x80]
00392d78  24 20 8d e5                                      str r2, [sp, #0x24]
00392d7c  28 30 8d e5                                      str r3, [sp, #0x28]
00392d80  20 c0 8d e5                                      str ip, [sp, #0x20]
00392d84  dd ff ff ea                                      b #0x392d00
00392d88  05 00 a0 e1                                      mov r0, r5
00392d8c  07 10 a0 e1                                      mov r1, r7
00392d90  58 a3 ff eb                                      bl #0x37baf8
00392d94  04 80 90 e5                                      ldr r8, [r0, #4]
00392d98  01 00 58 e3                                      cmp r8, #1
00392d9c  74 00 00 0a                                      beq #0x392f74
00392da0  04 30 95 e5                                      ldr r3, [r5, #4]
00392da4  0c 00 93 e8                                      ldm r3, {r2, r3}
00392da8  03 30 62 e0                                      rsb r3, r2, r3
00392dac  43 32 a0 e1                                      asr r3, r3, #4
00392db0  83 21 83 e0                                      add r2, r3, r3, lsl #3
00392db4  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392db8  82 21 83 e0                                      add r2, r3, r2, lsl #3
00392dbc  82 27 82 e0                                      add r2, r2, r2, lsl #15
00392dc0  82 31 83 e0                                      add r3, r3, r2, lsl #3
00392dc4  00 30 63 e2                                      rsb r3, r3, #0
00392dc8  03 00 57 e1                                      cmp r7, r3
00392dcc  bc ff ff 2a                                      bhs #0x392cc4
00392dd0  05 00 a0 e1                                      mov r0, r5
00392dd4  07 10 a0 e1                                      mov r1, r7
00392dd8  46 a3 ff eb                                      bl #0x37baf8
00392ddc  04 30 90 e5                                      ldr r3, [r0, #4]
00392de0  04 00 53 e3                                      cmp r3, #4
00392de4  b6 ff ff 1a                                      bne #0x392cc4
00392de8  07 10 a0 e1                                      mov r1, r7
00392dec  05 00 a0 e1                                      mov r0, r5
00392df0  40 a3 ff eb                                      bl #0x37baf8
00392df4  a8 25 fe eb                                      bl #0x31c49c
00392df8  c1 6f 86 e2                                      add r6, r6, #0x304
00392dfc  00 10 a0 e1                                      mov r1, r0
00392e00  06 00 a0 e1                                      mov r0, r6
00392e04  48 f2 ff eb                                      bl #0x38f72c
00392e08  00 10 a0 e3                                      mov r1, #0
00392e0c  00 40 a0 e1                                      mov r4, r0
00392e10  05 00 a0 e1                                      mov r0, r5
00392e14  37 a3 ff eb                                      bl #0x37baf8
00392e18  74 23 fe eb                                      bl #0x31bbf0
00392e1c  01 10 a0 e3                                      mov r1, #1
00392e20  00 70 a0 e1                                      mov r7, r0
00392e24  05 00 a0 e1                                      mov r0, r5
00392e28  32 a3 ff eb                                      bl #0x37baf8
00392e2c  6f 23 fe eb                                      bl #0x31bbf0
00392e30  07 20 a0 e1                                      mov r2, r7
00392e34  00 30 a0 e1                                      mov r3, r0
00392e38  2c 10 8d e2                                      add r1, sp, #0x2c
00392e3c  06 00 a0 e1                                      mov r0, r6
00392e40  00 40 8d e5                                      str r4, [sp]
00392e44  09 40 04 eb                                      bl #0x4a2e70
00392e48  63 ff ff ea                                      b #0x392bdc
00392e4c  05 00 a0 e1                                      mov r0, r5
00392e50  02 10 a0 e3                                      mov r1, #2
00392e54  27 a3 ff eb                                      bl #0x37baf8
00392e58  04 30 90 e5                                      ldr r3, [r0, #4]
00392e5c  07 00 53 e3                                      cmp r3, #7
00392e60  2d 00 00 0a                                      beq #0x392f1c
00392e64  04 30 95 e5                                      ldr r3, [r5, #4]
00392e68  04 20 93 e5                                      ldr r2, [r3, #4]
00392e6c  00 30 93 e5                                      ldr r3, [r3]
00392e70  02 30 63 e0                                      rsb r3, r3, r2
00392e74  43 32 a0 e1                                      asr r3, r3, #4
00392e78  83 21 83 e0                                      add r2, r3, r3, lsl #3
00392e7c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392e80  82 21 83 e0                                      add r2, r3, r2, lsl #3
00392e84  82 27 82 e0                                      add r2, r2, r2, lsl #15
00392e88  82 31 83 e0                                      add r3, r3, r2, lsl #3
00392e8c  00 30 63 e2                                      rsb r3, r3, #0
00392e90  04 00 53 e3                                      cmp r3, #4
00392e94  80 ff ff 9a                                      bls #0x392c9c
00392e98  02 10 a0 e3                                      mov r1, #2
00392e9c  05 00 a0 e1                                      mov r0, r5
00392ea0  14 a3 ff eb                                      bl #0x37baf8
00392ea4  04 10 90 e5                                      ldr r1, [r0, #4]
00392ea8  03 00 51 e3                                      cmp r1, #3
00392eac  44 00 00 0a                                      beq #0x392fc4
00392eb0  04 30 95 e5                                      ldr r3, [r5, #4]
00392eb4  04 20 93 e5                                      ldr r2, [r3, #4]
00392eb8  00 30 93 e5                                      ldr r3, [r3]
00392ebc  02 30 63 e0                                      rsb r3, r3, r2
00392ec0  43 32 a0 e1                                      asr r3, r3, #4
00392ec4  83 21 83 e0                                      add r2, r3, r3, lsl #3
00392ec8  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392ecc  82 21 83 e0                                      add r2, r3, r2, lsl #3
00392ed0  82 27 82 e0                                      add r2, r2, r2, lsl #15
00392ed4  82 31 83 e0                                      add r3, r3, r2, lsl #3
00392ed8  00 30 63 e2                                      rsb r3, r3, #0
00392edc  6e ff ff ea                                      b #0x392c9c
00392ee0  03 10 a0 e1                                      mov r1, r3
00392ee4  0c 34 9f e5                                      ldr r3, [pc, #0x40c]
00392ee8  14 24 9f e5                                      ldr r2, [pc, #0x414]
00392eec  05 00 a0 e1                                      mov r0, r5
00392ef0  03 30 94 e7                                      ldr r3, [r4, r3]
00392ef4  02 20 94 e7                                      ldr r2, [r4, r2]
00392ef8  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00392efc  08 20 82 e2                                      add r2, r2, #8
00392f00  18 20 8d e5                                      str r2, [sp, #0x18]
00392f04  60 30 8c e2                                      add r3, ip, #0x60
00392f08  1c 30 8d e5                                      str r3, [sp, #0x1c]
00392f0c  60 20 9c e5                                      ldr r2, [ip, #0x60]
00392f10  24 30 8d e5                                      str r3, [sp, #0x24]
00392f14  20 20 8d e5                                      str r2, [sp, #0x20]
00392f18  78 ff ff ea                                      b #0x392d00
00392f1c  02 10 a0 e3                                      mov r1, #2
00392f20  05 00 a0 e1                                      mov r0, r5
00392f24  f3 a2 ff eb                                      bl #0x37baf8
00392f28  9c 21 fe eb                                      bl #0x31b5a0
00392f2c  60 21 90 e5                                      ldr r2, [r0, #0x160]
00392f30  04 30 95 e5                                      ldr r3, [r5, #4]
00392f34  2c 20 8d e5                                      str r2, [sp, #0x2c]
00392f38  64 21 90 e5                                      ldr r2, [r0, #0x164]
00392f3c  30 20 8d e5                                      str r2, [sp, #0x30]
00392f40  68 21 90 e5                                      ldr r2, [r0, #0x168]
00392f44  34 20 8d e5                                      str r2, [sp, #0x34]
00392f48  04 20 93 e5                                      ldr r2, [r3, #4]
00392f4c  00 30 93 e5                                      ldr r3, [r3]
00392f50  02 30 63 e0                                      rsb r3, r3, r2
00392f54  43 32 a0 e1                                      asr r3, r3, #4
00392f58  83 21 83 e0                                      add r2, r3, r3, lsl #3
00392f5c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00392f60  82 21 83 e0                                      add r2, r3, r2, lsl #3
00392f64  82 27 82 e0                                      add r2, r2, r2, lsl #15
00392f68  82 31 83 e0                                      add r3, r3, r2, lsl #3
00392f6c  00 30 63 e2                                      rsb r3, r3, #0
00392f70  51 ff ff ea                                      b #0x392cbc
00392f74  07 10 a0 e1                                      mov r1, r7
00392f78  05 00 a0 e1                                      mov r0, r5
00392f7c  dd a2 ff eb                                      bl #0x37baf8
00392f80  3e 23 fe eb                                      bl #0x31bc80
00392f84  00 00 50 e3                                      cmp r0, #0
00392f88  84 ff ff 0a                                      beq #0x392da0
00392f8c  74 13 9f e5                                      ldr r1, [pc, #0x374]
00392f90  c1 6f 86 e2                                      add r6, r6, #0x304
00392f94  06 00 a0 e1                                      mov r0, r6
00392f98  01 10 8f e0                                      add r1, pc, r1
00392f9c  e2 f1 ff eb                                      bl #0x38f72c
00392fa0  00 10 a0 e3                                      mov r1, #0
00392fa4  00 40 a0 e1                                      mov r4, r0
00392fa8  05 00 a0 e1                                      mov r0, r5
00392fac  d1 a2 ff eb                                      bl #0x37baf8
00392fb0  0e 23 fe eb                                      bl #0x31bbf0
00392fb4  08 10 a0 e1                                      mov r1, r8
00392fb8  00 70 a0 e1                                      mov r7, r0
00392fbc  05 00 a0 e1                                      mov r0, r5
00392fc0  98 ff ff ea                                      b #0x392e28
00392fc4  05 00 a0 e1                                      mov r0, r5
00392fc8  ca a2 ff eb                                      bl #0x37baf8
00392fcc  04 30 90 e5                                      ldr r3, [r0, #4]
00392fd0  03 00 53 e3                                      cmp r3, #3
00392fd4  b5 ff ff 1a                                      bne #0x392eb0
00392fd8  05 00 a0 e1                                      mov r0, r5
00392fdc  04 10 a0 e3                                      mov r1, #4
00392fe0  c4 a2 ff eb                                      bl #0x37baf8
00392fe4  04 30 90 e5                                      ldr r3, [r0, #4]
00392fe8  03 00 53 e3                                      cmp r3, #3
00392fec  08 00 00 0a                                      beq #0x393014
00392ff0  04 20 95 e5                                      ldr r2, [r5, #4]
00392ff4  b7 3d 06 e3                                      movw r3, #0x6db7
00392ff8  db 36 4b e3                                      movt r3, #0xb6db
00392ffc  04 10 92 e5                                      ldr r1, [r2, #4]
00393000  00 20 92 e5                                      ldr r2, [r2]
00393004  01 20 62 e0                                      rsb r2, r2, r1
00393008  42 22 a0 e1                                      asr r2, r2, #4
0039300c  93 02 03 e0                                      mul r3, r3, r2
00393010  21 ff ff ea                                      b #0x392c9c
00393014  04 20 95 e5                                      ldr r2, [r5, #4]
00393018  b7 3d 06 e3                                      movw r3, #0x6db7
0039301c  db 36 4b e3                                      movt r3, #0xb6db
00393020  06 00 92 e8                                      ldm r2, {r1, r2}
00393024  02 20 61 e0                                      rsb r2, r1, r2
00393028  42 22 a0 e1                                      asr r2, r2, #4
0039302c  93 02 03 e0                                      mul r3, r3, r2
00393030  05 00 53 e3                                      cmp r3, #5
00393034  15 00 00 8a                                      bhi #0x393090
00393038  02 10 a0 e3                                      mov r1, #2
0039303c  05 00 a0 e1                                      mov r0, r5
00393040  ac a2 ff eb                                      bl #0x37baf8
00393044  e9 22 fe eb                                      bl #0x31bbf0
00393048  03 10 a0 e3                                      mov r1, #3
0039304c  00 80 a0 e1                                      mov r8, r0
00393050  05 00 a0 e1                                      mov r0, r5
00393054  a7 a2 ff eb                                      bl #0x37baf8
00393058  e4 22 fe eb                                      bl #0x31bbf0
0039305c  04 10 a0 e3                                      mov r1, #4
00393060  00 70 a0 e1                                      mov r7, r0
00393064  05 00 a0 e1                                      mov r0, r5
00393068  a2 a2 ff eb                                      bl #0x37baf8
0039306c  df 22 fe eb                                      bl #0x31bbf0
00393070  04 30 95 e5                                      ldr r3, [r5, #4]
00393074  30 70 8d e5                                      str r7, [sp, #0x30]
00393078  2c 80 8d e5                                      str r8, [sp, #0x2c]
0039307c  34 00 8d e5                                      str r0, [sp, #0x34]
00393080  04 20 93 e5                                      ldr r2, [r3, #4]
00393084  06 70 a0 e3                                      mov r7, #6
00393088  00 30 93 e5                                      ldr r3, [r3]
0039308c  af ff ff ea                                      b #0x392f50
00393090  05 00 a0 e1                                      mov r0, r5
00393094  05 10 a0 e3                                      mov r1, #5
00393098  96 a2 ff eb                                      bl #0x37baf8
0039309c  04 30 90 e5                                      ldr r3, [r0, #4]
003930a0  01 00 53 e3                                      cmp r3, #1
003930a4  e3 ff ff 1a                                      bne #0x393038
003930a8  05 10 a0 e3                                      mov r1, #5
003930ac  05 00 a0 e1                                      mov r0, r5
003930b0  90 a2 ff eb                                      bl #0x37baf8
003930b4  f1 22 fe eb                                      bl #0x31bc80
003930b8  00 00 50 e3                                      cmp r0, #0
003930bc  dd ff ff 0a                                      beq #0x393038
003930c0  00 30 a0 e3                                      mov r3, #0
003930c4  06 00 a0 e1                                      mov r0, r6
003930c8  18 10 8d e2                                      add r1, sp, #0x18
003930cc  20 30 8d e5                                      str r3, [sp, #0x20]
003930d0  18 30 8d e5                                      str r3, [sp, #0x18]
003930d4  1c 30 8d e5                                      str r3, [sp, #0x1c]
003930d8  81 02 00 eb                                      bl #0x393ae4
003930dc  28 32 9f e5                                      ldr r3, [pc, #0x228]
003930e0  60 c1 96 e5                                      ldr ip, [r6, #0x160]
003930e4  64 21 96 e5                                      ldr r2, [r6, #0x164]
003930e8  03 70 94 e7                                      ldr r7, [r4, r3]
003930ec  68 31 96 e5                                      ldr r3, [r6, #0x168]
003930f0  02 10 a0 e3                                      mov r1, #2
003930f4  05 00 a0 e1                                      mov r0, r5
003930f8  34 30 8d e5                                      str r3, [sp, #0x34]
003930fc  04 30 97 e5                                      ldr r3, [r7, #4]
00393100  2c c0 8d e5                                      str ip, [sp, #0x2c]
00393104  30 20 8d e5                                      str r2, [sp, #0x30]
00393108  0c 30 8d e5                                      str r3, [sp, #0xc]
0039310c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00393110  08 b0 97 e5                                      ldr fp, [r7, #8]
00393114  00 a0 97 e5                                      ldr sl, [r7]
00393118  10 30 8d e5                                      str r3, [sp, #0x10]
0039311c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00393120  20 90 9d e5                                      ldr sb, [sp, #0x20]
00393124  14 30 8d e5                                      str r3, [sp, #0x14]
00393128  72 a2 ff eb                                      bl #0x37baf8
0039312c  af 22 fe eb                                      bl #0x31bbf0
00393130  09 10 a0 e1                                      mov r1, sb
00393134  00 80 a0 e1                                      mov r8, r0
00393138  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0039313c  0a ef fd eb                                      bl #0x30ed6c
00393140  10 10 9d e5                                      ldr r1, [sp, #0x10]
00393144  00 30 a0 e1                                      mov r3, r0
00393148  0b 00 a0 e1                                      mov r0, fp
0039314c  08 30 8d e5                                      str r3, [sp, #8]
00393150  05 ef fd eb                                      bl #0x30ed6c
00393154  08 30 9d e5                                      ldr r3, [sp, #8]
00393158  00 10 a0 e1                                      mov r1, r0
0039315c  03 00 a0 e1                                      mov r0, r3
00393160  91 ec fd eb                                      bl #0x30e3ac
00393164  00 10 a0 e1                                      mov r1, r0
00393168  08 00 a0 e1                                      mov r0, r8
0039316c  fe ee fd eb                                      bl #0x30ed6c
00393170  00 10 a0 e1                                      mov r1, r0
00393174  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00393178  89 ee fd eb                                      bl #0x30eba4
0039317c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00393180  2c 00 8d e5                                      str r0, [sp, #0x2c]
00393184  0b 00 a0 e1                                      mov r0, fp
00393188  f7 ee fd eb                                      bl #0x30ed6c
0039318c  0a 10 a0 e1                                      mov r1, sl
00393190  00 b0 a0 e1                                      mov fp, r0
00393194  09 00 a0 e1                                      mov r0, sb
00393198  f3 ee fd eb                                      bl #0x30ed6c
0039319c  00 10 a0 e1                                      mov r1, r0
003931a0  0b 00 a0 e1                                      mov r0, fp
003931a4  80 ec fd eb                                      bl #0x30e3ac
003931a8  00 10 a0 e1                                      mov r1, r0
003931ac  08 00 a0 e1                                      mov r0, r8
003931b0  ed ee fd eb                                      bl #0x30ed6c
003931b4  00 10 a0 e1                                      mov r1, r0
003931b8  30 00 9d e5                                      ldr r0, [sp, #0x30]
003931bc  78 ee fd eb                                      bl #0x30eba4
003931c0  0a 10 a0 e1                                      mov r1, sl
003931c4  30 00 8d e5                                      str r0, [sp, #0x30]
003931c8  10 00 9d e5                                      ldr r0, [sp, #0x10]
003931cc  e6 ee fd eb                                      bl #0x30ed6c
003931d0  14 10 9d e5                                      ldr r1, [sp, #0x14]
003931d4  00 a0 a0 e1                                      mov sl, r0
003931d8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003931dc  e2 ee fd eb                                      bl #0x30ed6c
003931e0  00 10 a0 e1                                      mov r1, r0
003931e4  0a 00 a0 e1                                      mov r0, sl
003931e8  6f ec fd eb                                      bl #0x30e3ac
003931ec  00 10 a0 e1                                      mov r1, r0
003931f0  08 00 a0 e1                                      mov r0, r8
003931f4  dc ee fd eb                                      bl #0x30ed6c
003931f8  00 10 a0 e1                                      mov r1, r0
003931fc  34 00 9d e5                                      ldr r0, [sp, #0x34]
00393200  67 ee fd eb                                      bl #0x30eba4
00393204  03 10 a0 e3                                      mov r1, #3
00393208  34 00 8d e5                                      str r0, [sp, #0x34]
0039320c  05 00 a0 e1                                      mov r0, r5
00393210  38 a2 ff eb                                      bl #0x37baf8
00393214  75 22 fe eb                                      bl #0x31bbf0
00393218  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0039321c  00 80 a0 e1                                      mov r8, r0
00393220  d1 ee fd eb                                      bl #0x30ed6c
00393224  20 10 9d e5                                      ldr r1, [sp, #0x20]
00393228  00 90 a0 e1                                      mov sb, r0
0039322c  08 00 a0 e1                                      mov r0, r8
00393230  cd ee fd eb                                      bl #0x30ed6c
00393234  18 10 9d e5                                      ldr r1, [sp, #0x18]
00393238  00 a0 a0 e1                                      mov sl, r0
0039323c  08 00 a0 e1                                      mov r0, r8
00393240  c9 ee fd eb                                      bl #0x30ed6c
00393244  00 10 a0 e1                                      mov r1, r0
00393248  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0039324c  54 ee fd eb                                      bl #0x30eba4
00393250  09 10 a0 e1                                      mov r1, sb
00393254  2c 00 8d e5                                      str r0, [sp, #0x2c]
00393258  30 00 9d e5                                      ldr r0, [sp, #0x30]
0039325c  50 ee fd eb                                      bl #0x30eba4
00393260  0a 10 a0 e1                                      mov r1, sl
00393264  30 00 8d e5                                      str r0, [sp, #0x30]
00393268  34 00 9d e5                                      ldr r0, [sp, #0x34]
0039326c  4c ee fd eb                                      bl #0x30eba4
00393270  04 10 a0 e3                                      mov r1, #4
00393274  34 00 8d e5                                      str r0, [sp, #0x34]
00393278  05 00 a0 e1                                      mov r0, r5
0039327c  1d a2 ff eb                                      bl #0x37baf8
00393280  5a 22 fe eb                                      bl #0x31bbf0
00393284  04 10 97 e5                                      ldr r1, [r7, #4]
00393288  00 80 a0 e1                                      mov r8, r0
0039328c  b6 ee fd eb                                      bl #0x30ed6c
00393290  08 10 97 e5                                      ldr r1, [r7, #8]
00393294  00 90 a0 e1                                      mov sb, r0
00393298  08 00 a0 e1                                      mov r0, r8
0039329c  b2 ee fd eb                                      bl #0x30ed6c
003932a0  00 10 97 e5                                      ldr r1, [r7]
003932a4  00 a0 a0 e1                                      mov sl, r0
003932a8  08 00 a0 e1                                      mov r0, r8
003932ac  ae ee fd eb                                      bl #0x30ed6c
003932b0  00 10 a0 e1                                      mov r1, r0
003932b4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
003932b8  39 ee fd eb                                      bl #0x30eba4
003932bc  09 10 a0 e1                                      mov r1, sb
003932c0  2c 00 8d e5                                      str r0, [sp, #0x2c]
003932c4  30 00 9d e5                                      ldr r0, [sp, #0x30]
003932c8  35 ee fd eb                                      bl #0x30eba4
003932cc  0a 10 a0 e1                                      mov r1, sl
003932d0  30 00 8d e5                                      str r0, [sp, #0x30]
003932d4  34 00 9d e5                                      ldr r0, [sp, #0x34]
003932d8  31 ee fd eb                                      bl #0x30eba4
003932dc  06 70 a0 e3                                      mov r7, #6
003932e0  04 30 95 e5                                      ldr r3, [r5, #4]
003932e4  34 00 8d e5                                      str r0, [sp, #0x34]
003932e8  16 ff ff ea                                      b #0x392f48
; mapping-symbol data/literal pool
003932ec  fc 1e 60 00 80 b8 52 00 34 b8 52 00 f4 37 00 00  .byte 0xfc, 0x1e, 0x60, 0x00, 0x80, 0xb8, 0x52, 0x00, 0x34, 0xb8, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00
003932fc  88 28 00 00 64 35 00 00 30 26 00 00 28 d9 52 00  .byte 0x88, 0x28, 0x00, 0x00, 0x64, 0x35, 0x00, 0x00, 0x30, 0x26, 0x00, 0x00, 0x28, 0xd9, 0x52, 0x00
0039330c  40 43 00 00                                      .byte 0x40, 0x43, 0x00, 0x00

; FUNCTION 0x00393310, declared_size=308, range_size=308, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject5_RandERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_Rand(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00393310  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00393314  04 30 90 e5                                      ldr r3, [r0, #4]
00393318  01 60 a0 e1                                      mov r6, r1
0039331c  02 70 a0 e1                                      mov r7, r2
00393320  04 10 93 e5                                      ldr r1, [r3, #4]
00393324  00 30 93 e5                                      ldr r3, [r3]
00393328  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
0039332c  00 50 a0 e1                                      mov r5, r0
00393330  01 10 63 e0                                      rsb r1, r3, r1
00393334  41 12 a0 e1                                      asr r1, r1, #4
00393338  04 40 8f e0                                      add r4, pc, r4
0039333c  81 21 81 e0                                      add r2, r1, r1, lsl #3
00393340  02 23 82 e0                                      add r2, r2, r2, lsl #6
00393344  82 21 81 e0                                      add r2, r1, r2, lsl #3
00393348  82 27 82 e0                                      add r2, r2, r2, lsl #15
0039334c  82 11 81 e0                                      add r1, r1, r2, lsl #3
00393350  00 10 61 e2                                      rsb r1, r1, #0
00393354  01 00 51 e3                                      cmp r1, #1
00393358  1a 00 00 0a                                      beq #0x3933c8
0039335c  02 00 51 e3                                      cmp r1, #2
00393360  64 50 a0 13                                      movne r5, #0x64
00393364  00 80 a0 13                                      movne r8, #0
00393368  1a 00 00 0a                                      beq #0x3933d8
0039336c  08 a9 11 eb                                      bl #0x7fd794
00393370  07 a9 11 eb                                      bl #0x7fd794
00393374  05 30 d0 e5                                      ldrb r3, [r0, #5]
00393378  00 00 53 e3                                      cmp r3, #0
0039337c  05 00 00 1a                                      bne #0x393398
00393380  05 00 a0 e1                                      mov r0, r5
00393384  7b ec ff eb                                      bl #0x38e578
00393388  08 10 80 e0                                      add r1, r0, r8
0039338c  06 00 a0 e1                                      mov r0, r6
00393390  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00393394  e2 a5 ff ea                                      b #0x37cb24
00393398  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0039339c  fc 30 97 e5                                      ldr r3, [r7, #0xfc]
003933a0  05 00 a0 e1                                      mov r0, r5
003933a4  02 40 94 e7                                      ldr r4, [r4, r2]
003933a8  00 30 84 e5                                      str r3, [r4]
003933ac  71 ec ff eb                                      bl #0x38e578
003933b0  08 10 80 e0                                      add r1, r0, r8
003933b4  06 00 a0 e1                                      mov r0, r6
003933b8  d9 a5 ff eb                                      bl #0x37cb24
003933bc  00 30 94 e5                                      ldr r3, [r4]
003933c0  fc 30 87 e5                                      str r3, [r7, #0xfc]
003933c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003933c8  04 30 93 e5                                      ldr r3, [r3, #4]
003933cc  03 00 53 e3                                      cmp r3, #3
003933d0  13 00 00 0a                                      beq #0x393424
003933d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003933d8  04 30 93 e5                                      ldr r3, [r3, #4]
003933dc  03 00 53 e3                                      cmp r3, #3
003933e0  fb ff ff 1a                                      bne #0x3933d4
003933e4  01 10 a0 e3                                      mov r1, #1
003933e8  c2 a1 ff eb                                      bl #0x37baf8
003933ec  04 30 90 e5                                      ldr r3, [r0, #4]
003933f0  03 00 53 e3                                      cmp r3, #3
003933f4  f6 ff ff 1a                                      bne #0x3933d4
003933f8  00 10 a0 e3                                      mov r1, #0
003933fc  05 00 a0 e1                                      mov r0, r5
00393400  bc a1 ff eb                                      bl #0x37baf8
00393404  e3 e8 ff eb                                      bl #0x38d798
00393408  01 10 a0 e3                                      mov r1, #1
0039340c  00 80 a0 e1                                      mov r8, r0
00393410  05 00 a0 e1                                      mov r0, r5
00393414  b7 a1 ff eb                                      bl #0x37baf8
00393418  de e8 ff eb                                      bl #0x38d798
0039341c  00 50 68 e0                                      rsb r5, r8, r0
00393420  d1 ff ff ea                                      b #0x39336c
00393424  00 10 a0 e3                                      mov r1, #0
00393428  b2 a1 ff eb                                      bl #0x37baf8
0039342c  d9 e8 ff eb                                      bl #0x38d798
00393430  00 80 a0 e3                                      mov r8, #0
00393434  00 50 a0 e1                                      mov r5, r0
00393438  cb ff ff ea                                      b #0x39336c
; mapping-symbol data/literal pool
0039343c  58 17 60 00 94 0c 00 00                          .byte 0x58, 0x17, 0x60, 0x00, 0x94, 0x0c, 0x00, 0x00

; FUNCTION 0x00393444, declared_size=408, range_size=408, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject16_GetDistanceFromERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: GameObject::_GetDistanceFrom(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
00393444  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00393448  04 c0 90 e5                                      ldr ip, [r0, #4]
0039344c  01 50 a0 e1                                      mov r5, r1
00393450  02 40 a0 e1                                      mov r4, r2
00393454  42 00 9c e8                                      ldm ip, {r1, r6}
00393458  70 31 9f e5                                      ldr r3, [pc, #0x170]
0039345c  18 d0 4d e2                                      sub sp, sp, #0x18
00393460  06 60 61 e0                                      rsb r6, r1, r6
00393464  46 62 a0 e1                                      asr r6, r6, #4
00393468  03 30 8f e0                                      add r3, pc, r3
0039346c  86 21 86 e0                                      add r2, r6, r6, lsl #3
00393470  02 23 82 e0                                      add r2, r2, r2, lsl #6
00393474  82 21 86 e0                                      add r2, r6, r2, lsl #3
00393478  82 27 82 e0                                      add r2, r2, r2, lsl #15
0039347c  82 61 86 e0                                      add r6, r6, r2, lsl #3
00393480  00 00 56 e3                                      cmp r6, #0
00393484  01 00 00 1a                                      bne #0x393490
00393488  18 d0 8d e2                                      add sp, sp, #0x18
0039348c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00393490  04 20 91 e5                                      ldr r2, [r1, #4]
00393494  04 00 52 e3                                      cmp r2, #4
00393498  37 00 00 0a                                      beq #0x39357c
0039349c  07 00 52 e3                                      cmp r2, #7
003934a0  f8 ff ff 1a                                      bne #0x393488
003934a4  04 60 90 e5                                      ldr r6, [r0, #4]
003934a8  09 00 96 e8                                      ldm r6, {r0, r3}
003934ac  03 30 60 e0                                      rsb r3, r0, r3
003934b0  43 32 a0 e1                                      asr r3, r3, #4
003934b4  83 21 83 e0                                      add r2, r3, r3, lsl #3
003934b8  02 23 82 e0                                      add r2, r2, r2, lsl #6
003934bc  82 21 83 e0                                      add r2, r3, r2, lsl #3
003934c0  82 27 82 e0                                      add r2, r2, r2, lsl #15
003934c4  82 31 83 e0                                      add r3, r3, r2, lsl #3
003934c8  00 00 53 e3                                      cmp r3, #0
003934cc  03 00 00 1a                                      bne #0x3934e0
003934d0  fc 00 9f e5                                      ldr r0, [pc, #0xfc]
003934d4  00 00 8f e0                                      add r0, pc, r0
003934d8  74 d6 0d eb                                      bl #0x708eb0
003934dc  00 00 96 e5                                      ldr r0, [r6]
003934e0  2e 20 fe eb                                      bl #0x31b5a0
003934e4  00 60 a0 e1                                      mov r6, r0
003934e8  00 00 56 e3                                      cmp r6, #0
003934ec  bf 14 a0 03                                      moveq r1, #0xbf000000
003934f0  02 15 81 02                                      addeq r1, r1, #0x800000
003934f4  1d 00 00 0a                                      beq #0x393570
003934f8  60 11 94 e5                                      ldr r1, [r4, #0x160]
003934fc  60 01 96 e5                                      ldr r0, [r6, #0x160]
00393500  a9 eb fd eb                                      bl #0x30e3ac
00393504  64 11 94 e5                                      ldr r1, [r4, #0x164]
00393508  00 80 a0 e1                                      mov r8, r0
0039350c  64 01 96 e5                                      ldr r0, [r6, #0x164]
00393510  a5 eb fd eb                                      bl #0x30e3ac
00393514  68 11 94 e5                                      ldr r1, [r4, #0x168]
00393518  00 70 a0 e1                                      mov r7, r0
0039351c  68 01 96 e5                                      ldr r0, [r6, #0x168]
00393520  a1 eb fd eb                                      bl #0x30e3ac
00393524  08 10 a0 e1                                      mov r1, r8
00393528  00 60 a0 e1                                      mov r6, r0
0039352c  08 00 a0 e1                                      mov r0, r8
00393530  0d ee fd eb                                      bl #0x30ed6c
00393534  07 10 a0 e1                                      mov r1, r7
00393538  00 40 a0 e1                                      mov r4, r0
0039353c  07 00 a0 e1                                      mov r0, r7
00393540  09 ee fd eb                                      bl #0x30ed6c
00393544  00 10 a0 e1                                      mov r1, r0
00393548  04 00 a0 e1                                      mov r0, r4
0039354c  94 ed fd eb                                      bl #0x30eba4
00393550  06 10 a0 e1                                      mov r1, r6
00393554  00 40 a0 e1                                      mov r4, r0
00393558  06 00 a0 e1                                      mov r0, r6
0039355c  02 ee fd eb                                      bl #0x30ed6c
00393560  00 10 a0 e1                                      mov r1, r0
00393564  04 00 a0 e1                                      mov r0, r4
00393568  8d ed fd eb                                      bl #0x30eba4
0039356c  00 10 a0 e1                                      mov r1, r0
00393570  05 00 a0 e1                                      mov r0, r5
00393574  d0 a5 ff eb                                      bl #0x37ccbc
00393578  c2 ff ff ea                                      b #0x393488
0039357c  04 00 52 e3                                      cmp r2, #4
00393580  c7 ff ff 1a                                      bne #0x3934a4
00393584  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00393588  00 10 a0 e3                                      mov r1, #0
0039358c  0c 60 8d e2                                      add r6, sp, #0xc
00393590  02 30 93 e7                                      ldr r3, [r3, r2]
00393594  38 70 93 e5                                      ldr r7, [r3, #0x38]
00393598  56 a1 ff eb                                      bl #0x37baf8
0039359c  be 23 fe eb                                      bl #0x31c49c
003935a0  00 c0 a0 e3                                      mov ip, #0
003935a4  00 20 a0 e1                                      mov r2, r0
003935a8  07 10 a0 e1                                      mov r1, r7
003935ac  06 00 a0 e1                                      mov r0, r6
003935b0  00 30 e0 e3                                      mvn r3, #0
003935b4  04 c0 8d e5                                      str ip, [sp, #4]
003935b8  00 c0 8d e5                                      str ip, [sp]
003935bc  b7 dd fe eb                                      bl #0x34aca0
003935c0  06 00 a0 e1                                      mov r0, r6
003935c4  46 b2 fe eb                                      bl #0x33fee4
003935c8  00 60 a0 e1                                      mov r6, r0
003935cc  c5 ff ff ea                                      b #0x3934e8
; mapping-symbol data/literal pool
003935d0  28 16 60 00 94 af 52 00 f4 37 00 00              .byte 0x28, 0x16, 0x60, 0x00, 0x94, 0xaf, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003935dc, declared_size=36, range_size=36, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject17GetTargetPositionEv
; demangled: GameObject::GetTargetPosition() const
; decoder-mode: arm
003935dc  80 31 90 e5                                      ldr r3, [r0, #0x180]
003935e0  00 00 53 e3                                      cmp r3, #0
003935e4  03 00 00 0a                                      beq #0x3935f8
003935e8  80 30 d0 e5                                      ldrb r3, [r0, #0x80]
003935ec  00 00 53 e3                                      cmp r3, #0
003935f0  61 0f 80 12                                      addne r0, r0, #0x184
003935f4  1e ff 2f 11                                      bxne lr
003935f8  16 0e 80 e2                                      add r0, r0, #0x160
003935fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00393600, declared_size=28, range_size=28, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject14SetDestinationERK7Point3DIfE
; demangled: GameObject::SetDestination(Point3D<float> const&)
; decoder-mode: arm
00393600  00 30 91 e5                                      ldr r3, [r1]
00393604  a8 31 80 e5                                      str r3, [r0, #0x1a8]
00393608  04 30 91 e5                                      ldr r3, [r1, #4]
0039360c  ac 31 80 e5                                      str r3, [r0, #0x1ac]
00393610  08 30 91 e5                                      ldr r3, [r1, #8]
00393614  b0 31 80 e5                                      str r3, [r0, #0x1b0]
00393618  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039361c, declared_size=244, range_size=244, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject15IsAtDestinationEv
; demangled: GameObject::IsAtDestination() const
; decoder-mode: arm
0039361c  70 40 2d e9                                      push {r4, r5, r6, lr}
00393620  00 20 a0 e1                                      mov r2, r0
00393624  00 32 b2 e5                                      ldr r3, [r2, #0x200]!
00393628  00 40 a0 e1                                      mov r4, r0
0039362c  02 00 53 e1                                      cmp r3, r2
00393630  1c 00 00 0a                                      beq #0x3936a8
00393634  00 30 93 e5                                      ldr r3, [r3]
00393638  03 00 52 e1                                      cmp r2, r3
0039363c  fc ff ff 1a                                      bne #0x393634
00393640  60 11 94 e5                                      ldr r1, [r4, #0x160]
00393644  08 02 94 e5                                      ldr r0, [r4, #0x208]
00393648  57 eb fd eb                                      bl #0x30e3ac
0039364c  64 11 94 e5                                      ldr r1, [r4, #0x164]
00393650  00 60 a0 e1                                      mov r6, r0
00393654  0c 02 94 e5                                      ldr r0, [r4, #0x20c]
00393658  53 eb fd eb                                      bl #0x30e3ac
0039365c  06 10 a0 e1                                      mov r1, r6
00393660  00 50 a0 e1                                      mov r5, r0
00393664  06 00 a0 e1                                      mov r0, r6
00393668  bf ed fd eb                                      bl #0x30ed6c
0039366c  05 10 a0 e1                                      mov r1, r5
00393670  00 40 a0 e1                                      mov r4, r0
00393674  05 00 a0 e1                                      mov r0, r5
00393678  bb ed fd eb                                      bl #0x30ed6c
0039367c  00 10 a0 e1                                      mov r1, r0
00393680  04 00 a0 e1                                      mov r0, r4
00393684  46 ed fd eb                                      bl #0x30eba4
00393688  45 14 a0 e3                                      mov r1, #0x45000000
0039368c  32 17 81 e2                                      add r1, r1, #0xc80000
00393690  1d ec fd eb                                      bl #0x30e70c
00393694  00 00 50 e3                                      cmp r0, #0
00393698  00 00 a0 e3                                      mov r0, #0
0039369c  01 00 a0 13                                      movne r0, #1
003936a0  70 00 ef e6                                      uxtb r0, r0
003936a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003936a8  60 11 90 e5                                      ldr r1, [r0, #0x160]
003936ac  a8 01 90 e5                                      ldr r0, [r0, #0x1a8]
003936b0  3d eb fd eb                                      bl #0x30e3ac
003936b4  64 11 94 e5                                      ldr r1, [r4, #0x164]
003936b8  00 60 a0 e1                                      mov r6, r0
003936bc  ac 01 94 e5                                      ldr r0, [r4, #0x1ac]
003936c0  39 eb fd eb                                      bl #0x30e3ac
003936c4  06 10 a0 e1                                      mov r1, r6
003936c8  00 50 a0 e1                                      mov r5, r0
003936cc  06 00 a0 e1                                      mov r0, r6
003936d0  a5 ed fd eb                                      bl #0x30ed6c
003936d4  05 10 a0 e1                                      mov r1, r5
003936d8  00 40 a0 e1                                      mov r4, r0
003936dc  05 00 a0 e1                                      mov r0, r5
003936e0  a1 ed fd eb                                      bl #0x30ed6c
003936e4  00 10 a0 e1                                      mov r1, r0
003936e8  04 00 a0 e1                                      mov r0, r4
003936ec  2c ed fd eb                                      bl #0x30eba4
003936f0  45 14 a0 e3                                      mov r1, #0x45000000
003936f4  32 17 81 e2                                      add r1, r1, #0xc80000
003936f8  03 ec fd eb                                      bl #0x30e70c
003936fc  00 00 50 e3                                      cmp r0, #0
00393700  00 00 a0 e3                                      mov r0, #0
00393704  01 00 a0 13                                      movne r0, #1
00393708  70 00 ef e6                                      uxtb r0, r0
0039370c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00393710, declared_size=400, range_size=400, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject14UpdateRotationEv
; demangled: GameObject::UpdateRotation()
; decoder-mode: arm
00393710  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00393714  00 30 90 e5                                      ldr r3, [r0]
00393718  00 40 a0 e1                                      mov r4, r0
0039371c  0f e0 a0 e1                                      mov lr, pc
00393720  ac f0 93 e5                                      ldr pc, [r3, #0xac]
00393724  00 10 a0 e3                                      mov r1, #0
00393728  00 50 a0 e1                                      mov r5, r0
0039372c  f6 eb fd eb                                      bl #0x30e70c
00393730  60 31 9f e5                                      ldr r3, [pc, #0x160]
00393734  00 00 50 e3                                      cmp r0, #0
00393738  03 30 8f e0                                      add r3, pc, r3
0039373c  0e 00 00 0a                                      beq #0x39377c
00393740  78 31 94 e5                                      ldr r3, [r4, #0x178]
00393744  74 31 84 e5                                      str r3, [r4, #0x174]
00393748  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
0039374c  00 00 53 e3                                      cmp r3, #0
00393750  08 00 00 0a                                      beq #0x393778
00393754  00 30 94 e5                                      ldr r3, [r4]
00393758  04 00 a0 e1                                      mov r0, r4
0039375c  0f e0 a0 e1                                      mov lr, pc
00393760  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00393764  00 00 50 e3                                      cmp r0, #0
00393768  02 00 00 0a                                      beq #0x393778
0039376c  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
00393770  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00393774  73 7c 03 ea                                      b #0x472948
00393778  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0039377c  18 21 9f e5                                      ldr r2, [pc, #0x118]
00393780  02 00 93 e7                                      ldr r0, [r3, r2]
00393784  b8 2f fe eb                                      bl #0x31f66c
00393788  db 1f 00 e3                                      movw r1, #0xfdb
0039378c  00 60 a0 e1                                      mov r6, r0
00393790  49 11 44 e3                                      movt r1, #0x4149
00393794  05 00 a0 e1                                      mov r0, r5
00393798  73 ed fd eb                                      bl #0x30ed6c
0039379c  00 50 a0 e1                                      mov r5, r0
003937a0  06 00 a0 e1                                      mov r0, r6
003937a4  cd ea fd eb                                      bl #0x30e2e0
003937a8  6f 12 01 e3                                      movw r1, #0x126f
003937ac  83 1a 43 e3                                      movt r1, #0x3a83
003937b0  6d ed fd eb                                      bl #0x30ed6c
003937b4  00 10 a0 e1                                      mov r1, r0
003937b8  05 00 a0 e1                                      mov r0, r5
003937bc  6a ed fd eb                                      bl #0x30ed6c
003937c0  78 61 94 e5                                      ldr r6, [r4, #0x178]
003937c4  74 71 94 e5                                      ldr r7, [r4, #0x174]
003937c8  00 80 a0 e1                                      mov r8, r0
003937cc  06 00 a0 e1                                      mov r0, r6
003937d0  07 10 a0 e1                                      mov r1, r7
003937d4  f4 ea fd eb                                      bl #0x30e3ac
003937d8  db 1f 00 e3                                      movw r1, #0xfdb
003937dc  49 10 44 e3                                      movt r1, #0x4049
003937e0  00 50 a0 e1                                      mov r5, r0
003937e4  c3 ea fd eb                                      bl #0x30e2f8
003937e8  00 00 50 e3                                      cmp r0, #0
003937ec  1c 00 00 1a                                      bne #0x393864
003937f0  db 1f 00 e3                                      movw r1, #0xfdb
003937f4  05 00 a0 e1                                      mov r0, r5
003937f8  49 10 4c e3                                      movt r1, #0xc049
003937fc  c2 eb fd eb                                      bl #0x30e70c
00393800  00 00 50 e3                                      cmp r0, #0
00393804  04 00 00 0a                                      beq #0x39381c
00393808  db 1f 00 e3                                      movw r1, #0xfdb
0039380c  05 00 a0 e1                                      mov r0, r5
00393810  c9 10 44 e3                                      movt r1, #0x40c9
00393814  e2 ec fd eb                                      bl #0x30eba4
00393818  00 50 a0 e1                                      mov r5, r0
0039381c  02 01 c5 e3                                      bic r0, r5, #0x80000000
00393820  08 10 a0 e1                                      mov r1, r8
00393824  b8 eb fd eb                                      bl #0x30e70c
00393828  00 00 50 e3                                      cmp r0, #0
0039382c  74 61 84 15                                      strne r6, [r4, #0x174]
00393830  c4 ff ff 1a                                      bne #0x393748
00393834  05 00 a0 e1                                      mov r0, r5
00393838  00 10 a0 e3                                      mov r1, #0
0039383c  b2 eb fd eb                                      bl #0x30e70c
00393840  00 00 50 e3                                      cmp r0, #0
00393844  0c 00 00 0a                                      beq #0x39387c
00393848  07 00 a0 e1                                      mov r0, r7
0039384c  08 10 a0 e1                                      mov r1, r8
00393850  d5 ea fd eb                                      bl #0x30e3ac
00393854  00 30 a0 e3                                      mov r3, #0
00393858  74 01 84 e5                                      str r0, [r4, #0x174]
0039385c  7c 31 84 e5                                      str r3, [r4, #0x17c]
00393860  b8 ff ff ea                                      b #0x393748
00393864  db 1f 00 e3                                      movw r1, #0xfdb
00393868  05 00 a0 e1                                      mov r0, r5
0039386c  c9 10 44 e3                                      movt r1, #0x40c9
00393870  cd ea fd eb                                      bl #0x30e3ac
00393874  00 50 a0 e1                                      mov r5, r0
00393878  e7 ff ff ea                                      b #0x39381c
0039387c  08 00 a0 e1                                      mov r0, r8
00393880  07 10 a0 e1                                      mov r1, r7
00393884  c6 ec fd eb                                      bl #0x30eba4
00393888  01 30 a0 e3                                      mov r3, #1
0039388c  74 01 84 e5                                      str r0, [r4, #0x174]
00393890  7c 31 84 e5                                      str r3, [r4, #0x17c]
00393894  ab ff ff ea                                      b #0x393748
; mapping-symbol data/literal pool
00393898  58 13 60 00 f4 37 00 00                          .byte 0x58, 0x13, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003938a0, declared_size=88, range_size=88, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject11SetRotationERK7Point3DIfE
; demangled: GameObject::SetRotation(Point3D<float> const&)
; decoder-mode: arm
003938a0  00 30 91 e5                                      ldr r3, [r1]
003938a4  10 40 2d e9                                      push {r4, lr}
003938a8  6c 31 80 e5                                      str r3, [r0, #0x16c]
003938ac  04 30 91 e5                                      ldr r3, [r1, #4]
003938b0  d8 22 90 e5                                      ldr r2, [r0, #0x2d8]
003938b4  00 40 a0 e1                                      mov r4, r0
003938b8  70 31 80 e5                                      str r3, [r0, #0x170]
003938bc  08 30 91 e5                                      ldr r3, [r1, #8]
003938c0  00 00 52 e3                                      cmp r2, #0
003938c4  74 31 80 e5                                      str r3, [r0, #0x174]
003938c8  08 30 91 e5                                      ldr r3, [r1, #8]
003938cc  78 31 80 e5                                      str r3, [r0, #0x178]
003938d0  07 00 00 0a                                      beq #0x3938f4
003938d4  00 30 90 e5                                      ldr r3, [r0]
003938d8  0f e0 a0 e1                                      mov lr, pc
003938dc  70 f0 93 e5                                      ldr pc, [r3, #0x70]
003938e0  00 00 50 e3                                      cmp r0, #0
003938e4  02 00 00 0a                                      beq #0x3938f4
003938e8  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003938ec  10 40 bd e8                                      pop {r4, lr}
003938f0  14 7c 03 ea                                      b #0x472948
003938f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003938f8, declared_size=248, range_size=248, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject4StopEv
; demangled: GameObject::Stop()
; decoder-mode: arm
003938f8  70 40 2d e9                                      push {r4, r5, r6, lr}
003938fc  e0 50 9f e5                                      ldr r5, [pc, #0xe0]
00393900  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
00393904  00 40 a0 e1                                      mov r4, r0
00393908  05 50 8f e0                                      add r5, pc, r5
0039390c  03 00 95 e7                                      ldr r0, [r5, r3]
00393910  72 1f 84 e2                                      add r1, r4, #0x1c8
00393914  72 5c 06 eb                                      bl #0x52aae4
00393918  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0039391c  68 11 94 e5                                      ldr r1, [r4, #0x168]
00393920  60 c1 94 e5                                      ldr ip, [r4, #0x160]
00393924  64 01 94 e5                                      ldr r0, [r4, #0x164]
00393928  03 30 95 e7                                      ldr r3, [r5, r3]
0039392c  00 20 a0 e3                                      mov r2, #0
00393930  b0 11 84 e5                                      str r1, [r4, #0x1b0]
00393934  a8 c1 84 e5                                      str ip, [r4, #0x1a8]
00393938  ac 01 84 e5                                      str r0, [r4, #0x1ac]
0039393c  b5 21 c4 e5                                      strb r2, [r4, #0x1b5]
00393940  b4 21 c4 e5                                      strb r2, [r4, #0x1b4]
00393944  00 20 93 e5                                      ldr r2, [r3]
00393948  dc 12 94 e5                                      ldr r1, [r4, #0x2dc]
0039394c  b8 21 84 e5                                      str r2, [r4, #0x1b8]
00393950  04 20 93 e5                                      ldr r2, [r3, #4]
00393954  00 00 51 e3                                      cmp r1, #0
00393958  bc 21 84 e5                                      str r2, [r4, #0x1bc]
0039395c  08 30 93 e5                                      ldr r3, [r3, #8]
00393960  c0 31 84 e5                                      str r3, [r4, #0x1c0]
00393964  1d 00 00 0a                                      beq #0x3939e0
00393968  00 30 94 e5                                      ldr r3, [r4]
0039396c  04 00 a0 e1                                      mov r0, r4
00393970  0f e0 a0 e1                                      mov lr, pc
00393974  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00393978  00 00 50 e3                                      cmp r0, #0
0039397c  17 00 00 0a                                      beq #0x3939e0
00393980  00 50 a0 e3                                      mov r5, #0
00393984  05 20 a0 e1                                      mov r2, r5
00393988  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
0039398c  05 10 a0 e1                                      mov r1, r5
00393990  e0 6b 03 eb                                      bl #0x46e918
00393994  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
00393998  05 10 a0 e1                                      mov r1, r5
0039399c  f5 6b 03 eb                                      bl #0x46e978
003939a0  64 21 94 e5                                      ldr r2, [r4, #0x164]
003939a4  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
003939a8  60 11 94 e5                                      ldr r1, [r4, #0x160]
003939ac  33 6c 03 eb                                      bl #0x46ea80
003939b0  dc 32 94 e5                                      ldr r3, [r4, #0x2dc]
003939b4  14 30 93 e5                                      ldr r3, [r3, #0x14]
003939b8  b0 20 d3 e1                                      ldrh r2, [r3]
003939bc  54 50 83 e5                                      str r5, [r3, #0x54]
003939c0  8c 50 83 e5                                      str r5, [r3, #0x8c]
003939c4  08 20 82 e3                                      orr r2, r2, #8
003939c8  b0 20 c3 e1                                      strh r2, [r3]
003939cc  40 50 83 e5                                      str r5, [r3, #0x40]
003939d0  44 50 83 e5                                      str r5, [r3, #0x44]
003939d4  48 50 83 e5                                      str r5, [r3, #0x48]
003939d8  4c 50 83 e5                                      str r5, [r3, #0x4c]
003939dc  50 50 83 e5                                      str r5, [r3, #0x50]
003939e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003939e4  88 11 60 00 04 12 00 00 2c 3f 00 00              .byte 0x88, 0x11, 0x60, 0x00, 0x04, 0x12, 0x00, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x003939f0, declared_size=244, range_size=244, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject6PathToERK7Point3DIfE
; demangled: GameObject::PathTo(Point3D<float> const&)
; decoder-mode: arm
003939f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003939f4  84 30 d0 e5                                      ldrb r3, [r0, #0x84]
003939f8  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
003939fc  00 60 a0 e1                                      mov r6, r0
00393a00  00 00 53 e3                                      cmp r3, #0
00393a04  01 50 a0 e1                                      mov r5, r1
00393a08  04 40 8f e0                                      add r4, pc, r4
00393a0c  31 00 00 1a                                      bne #0x393ad8
00393a10  00 20 a0 e1                                      mov r2, r0
00393a14  00 32 b2 e5                                      ldr r3, [r2, #0x200]!
00393a18  02 00 53 e1                                      cmp r3, r2
00393a1c  24 00 00 0a                                      beq #0x393ab4
00393a20  00 30 93 e5                                      ldr r3, [r3]
00393a24  03 00 52 e1                                      cmp r2, r3
00393a28  fc ff ff 1a                                      bne #0x393a20
00393a2c  00 10 95 e5                                      ldr r1, [r5]
00393a30  08 02 96 e5                                      ldr r0, [r6, #0x208]
00393a34  5c ea fd eb                                      bl #0x30e3ac
00393a38  04 10 95 e5                                      ldr r1, [r5, #4]
00393a3c  00 70 a0 e1                                      mov r7, r0
00393a40  0c 02 96 e5                                      ldr r0, [r6, #0x20c]
00393a44  58 ea fd eb                                      bl #0x30e3ac
00393a48  08 10 95 e5                                      ldr r1, [r5, #8]
00393a4c  00 a0 a0 e1                                      mov sl, r0
00393a50  10 02 96 e5                                      ldr r0, [r6, #0x210]
00393a54  54 ea fd eb                                      bl #0x30e3ac
00393a58  07 10 a0 e1                                      mov r1, r7
00393a5c  00 80 a0 e1                                      mov r8, r0
00393a60  07 00 a0 e1                                      mov r0, r7
00393a64  c0 ec fd eb                                      bl #0x30ed6c
00393a68  0a 10 a0 e1                                      mov r1, sl
00393a6c  00 70 a0 e1                                      mov r7, r0
00393a70  0a 00 a0 e1                                      mov r0, sl
00393a74  bc ec fd eb                                      bl #0x30ed6c
00393a78  00 10 a0 e1                                      mov r1, r0
00393a7c  07 00 a0 e1                                      mov r0, r7
00393a80  47 ec fd eb                                      bl #0x30eba4
00393a84  08 10 a0 e1                                      mov r1, r8
00393a88  00 70 a0 e1                                      mov r7, r0
00393a8c  08 00 a0 e1                                      mov r0, r8
00393a90  b5 ec fd eb                                      bl #0x30ed6c
00393a94  00 10 a0 e1                                      mov r1, r0
00393a98  07 00 a0 e1                                      mov r0, r7
00393a9c  40 ec fd eb                                      bl #0x30eba4
00393aa0  47 14 a0 e3                                      mov r1, #0x47000000
00393aa4  71 19 81 e2                                      add r1, r1, #0x1c4000
00393aa8  12 ea fd eb                                      bl #0x30e2f8
00393aac  00 00 50 e3                                      cmp r0, #0
00393ab0  08 00 00 0a                                      beq #0x393ad8
00393ab4  24 20 9f e5                                      ldr r2, [pc, #0x24]
00393ab8  6c 32 96 e5                                      ldr r3, [r6, #0x26c]
00393abc  72 1f 86 e2                                      add r1, r6, #0x1c8
00393ac0  02 00 94 e7                                      ldr r0, [r4, r2]
00393ac4  00 00 53 e3                                      cmp r3, #0
00393ac8  1e 30 a0 03                                      moveq r3, #0x1e
00393acc  05 20 a0 e1                                      mov r2, r5
00393ad0  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00393ad4  1b 68 06 ea                                      b #0x52db48
00393ad8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00393adc  88 10 60 00 04 12 00 00                          .byte 0x88, 0x10, 0x60, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x00393ae4, declared_size=56, range_size=56, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject12GetLookAtVecER7Point3DIfE
; demangled: GameObject::GetLookAtVec(Point3D<float>&) const
; decoder-mode: arm
00393ae4  70 40 2d e9                                      push {r4, r5, r6, lr}
00393ae8  74 41 90 e5                                      ldr r4, [r0, #0x174]
00393aec  01 50 a0 e1                                      mov r5, r1
00393af0  04 00 a0 e1                                      mov r0, r4
00393af4  03 ec fd eb                                      bl #0x30eb08
00393af8  00 60 a0 e1                                      mov r6, r0
00393afc  04 00 a0 e1                                      mov r0, r4
00393b00  13 eb fd eb                                      bl #0x30e754
00393b04  00 30 a0 e3                                      mov r3, #0
00393b08  02 01 80 e2                                      add r0, r0, #0x80000000
00393b0c  00 60 85 e5                                      str r6, [r5]
00393b10  08 30 85 e5                                      str r3, [r5, #8]
00393b14  04 00 85 e5                                      str r0, [r5, #4]
00393b18  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00393b1c, declared_size=204, range_size=204, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject11LookTowardsERK7Point3DIfE
; demangled: GameObject::LookTowards(Point3D<float> const&)
; decoder-mode: arm
00393b1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00393b20  04 50 91 e5                                      ldr r5, [r1, #4]
00393b24  01 40 a0 e1                                      mov r4, r1
00393b28  00 60 a0 e1                                      mov r6, r0
00393b2c  00 10 a0 e3                                      mov r1, #0
00393b30  05 00 a0 e1                                      mov r0, r5
00393b34  14 e9 fd eb                                      bl #0x30df8c
00393b38  00 00 50 e3                                      cmp r0, #0
00393b3c  0e 00 00 0a                                      beq #0x393b7c
00393b40  00 40 94 e5                                      ldr r4, [r4]
00393b44  00 10 a0 e3                                      mov r1, #0
00393b48  04 00 a0 e1                                      mov r0, r4
00393b4c  e9 e9 fd eb                                      bl #0x30e2f8
00393b50  00 00 50 e3                                      cmp r0, #0
00393b54  1f 00 00 1a                                      bne #0x393bd8
00393b58  04 00 a0 e1                                      mov r0, r4
00393b5c  00 10 a0 e3                                      mov r1, #0
00393b60  e9 ea fd eb                                      bl #0x30e70c
00393b64  00 00 50 e3                                      cmp r0, #0
00393b68  19 00 00 0a                                      beq #0x393bd4
00393b6c  e4 3b 0c e3                                      movw r3, #0xcbe4
00393b70  96 30 44 e3                                      movt r3, #0x4096
00393b74  78 31 86 e5                                      str r3, [r6, #0x178]
00393b78  70 80 bd e8                                      pop {r4, r5, r6, pc}
00393b7c  02 11 85 e2                                      add r1, r5, #0x80000000
00393b80  00 00 94 e5                                      ldr r0, [r4]
00393b84  42 ec fd eb                                      bl #0x30ec94
00393b88  03 eb fd eb                                      bl #0x30e79c
00393b8c  78 01 86 e5                                      str r0, [r6, #0x178]
00393b90  00 50 a0 e1                                      mov r5, r0
00393b94  00 10 a0 e3                                      mov r1, #0
00393b98  04 00 94 e5                                      ldr r0, [r4, #4]
00393b9c  d5 e9 fd eb                                      bl #0x30e2f8
00393ba0  00 00 50 e3                                      cmp r0, #0
00393ba4  0a 00 00 0a                                      beq #0x393bd4
00393ba8  00 00 94 e5                                      ldr r0, [r4]
00393bac  00 10 a0 e3                                      mov r1, #0
00393bb0  d0 e9 fd eb                                      bl #0x30e2f8
00393bb4  00 00 50 e3                                      cmp r0, #0
00393bb8  db 0f 00 03                                      movweq r0, #0xfdb
00393bbc  db 0f 00 13                                      movwne r0, #0xfdb
00393bc0  49 00 4c 03                                      movteq r0, #0xc049
00393bc4  49 00 44 13                                      movtne r0, #0x4049
00393bc8  05 10 a0 e1                                      mov r1, r5
00393bcc  f4 eb fd eb                                      bl #0x30eba4
00393bd0  78 01 86 e5                                      str r0, [r6, #0x178]
00393bd4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00393bd8  db 3f 00 e3                                      movw r3, #0xfdb
00393bdc  c9 3f 43 e3                                      movt r3, #0x3fc9
00393be0  78 31 86 e5                                      str r3, [r6, #0x178]
00393be4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00393be8, declared_size=260, range_size=260, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject19SetHeadingDirectionERK7Point3DIfEb
; demangled: GameObject::SetHeadingDirection(Point3D<float> const&, bool)
; decoder-mode: arm
00393be8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00393bec  00 30 91 e5                                      ldr r3, [r1]
00393bf0  00 40 a0 e1                                      mov r4, r0
00393bf4  00 60 a0 e3                                      mov r6, #0
00393bf8  b8 31 80 e5                                      str r3, [r0, #0x1b8]
00393bfc  04 70 91 e5                                      ldr r7, [r1, #4]
00393c00  03 00 a0 e1                                      mov r0, r3
00393c04  c0 61 84 e5                                      str r6, [r4, #0x1c0]
00393c08  bc 71 84 e5                                      str r7, [r4, #0x1bc]
00393c0c  01 50 a0 e1                                      mov r5, r1
00393c10  03 10 a0 e1                                      mov r1, r3
00393c14  02 a0 a0 e1                                      mov sl, r2
00393c18  53 ec fd eb                                      bl #0x30ed6c
00393c1c  07 10 a0 e1                                      mov r1, r7
00393c20  00 80 a0 e1                                      mov r8, r0
00393c24  07 00 a0 e1                                      mov r0, r7
00393c28  4f ec fd eb                                      bl #0x30ed6c
00393c2c  00 10 a0 e1                                      mov r1, r0
00393c30  08 00 a0 e1                                      mov r0, r8
00393c34  da eb fd eb                                      bl #0x30eba4
00393c38  06 10 a0 e1                                      mov r1, r6
00393c3c  d8 eb fd eb                                      bl #0x30eba4
00393c40  17 17 0b e3                                      movw r1, #0xb717
00393c44  d1 18 43 e3                                      movt r1, #0x38d1
00393c48  00 70 a0 e1                                      mov r7, r0
00393c4c  a9 e9 fd eb                                      bl #0x30e2f8
00393c50  00 00 50 e3                                      cmp r0, #0
00393c54  00 60 a0 e3                                      mov r6, #0
00393c58  01 60 a0 13                                      movne r6, #1
00393c5c  76 60 ef e6                                      uxtb r6, r6
00393c60  b5 61 c4 e5                                      strb r6, [r4, #0x1b5]
00393c64  07 00 a0 e1                                      mov r0, r7
00393c68  fe 15 a0 e3                                      mov r1, #0x3f800000
00393c6c  a1 e9 fd eb                                      bl #0x30e2f8
00393c70  00 00 50 e3                                      cmp r0, #0
00393c74  08 00 00 1a                                      bne #0x393c9c
00393c78  00 00 56 e3                                      cmp r6, #0
00393c7c  01 00 00 0a                                      beq #0x393c88
00393c80  00 00 5a e3                                      cmp sl, #0
00393c84  00 00 00 1a                                      bne #0x393c8c
00393c88  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00393c8c  04 00 a0 e1                                      mov r0, r4
00393c90  05 10 a0 e1                                      mov r1, r5
00393c94  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00393c98  9f ff ff ea                                      b #0x393b1c
00393c9c  07 00 a0 e1                                      mov r0, r7
00393ca0  1f e9 fd eb                                      bl #0x30e124
00393ca4  00 10 a0 e1                                      mov r1, r0
00393ca8  fe 05 a0 e3                                      mov r0, #0x3f800000
00393cac  f8 eb fd eb                                      bl #0x30ec94
00393cb0  00 60 a0 e1                                      mov r6, r0
00393cb4  00 10 a0 e1                                      mov r1, r0
00393cb8  b8 01 94 e5                                      ldr r0, [r4, #0x1b8]
00393cbc  2a ec fd eb                                      bl #0x30ed6c
00393cc0  06 10 a0 e1                                      mov r1, r6
00393cc4  b8 01 84 e5                                      str r0, [r4, #0x1b8]
00393cc8  bc 01 94 e5                                      ldr r0, [r4, #0x1bc]
00393ccc  26 ec fd eb                                      bl #0x30ed6c
00393cd0  06 10 a0 e1                                      mov r1, r6
00393cd4  bc 01 84 e5                                      str r0, [r4, #0x1bc]
00393cd8  c0 01 94 e5                                      ldr r0, [r4, #0x1c0]
00393cdc  22 ec fd eb                                      bl #0x30ed6c
00393ce0  b5 61 d4 e5                                      ldrb r6, [r4, #0x1b5]
00393ce4  c0 01 84 e5                                      str r0, [r4, #0x1c0]
00393ce8  e2 ff ff ea                                      b #0x393c78

; FUNCTION 0x00393cec, declared_size=92, range_size=92, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject6LookAtERK7Point3DIfE
; demangled: GameObject::LookAt(Point3D<float> const&)
; decoder-mode: arm
00393cec  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00393cf0  00 40 a0 e1                                      mov r4, r0
00393cf4  14 d0 4d e2                                      sub sp, sp, #0x14
00393cf8  04 00 91 e5                                      ldr r0, [r1, #4]
00393cfc  01 50 a0 e1                                      mov r5, r1
00393d00  64 11 94 e5                                      ldr r1, [r4, #0x164]
00393d04  a8 e9 fd eb                                      bl #0x30e3ac
00393d08  68 11 94 e5                                      ldr r1, [r4, #0x168]
00393d0c  00 70 a0 e1                                      mov r7, r0
00393d10  08 00 95 e5                                      ldr r0, [r5, #8]
00393d14  a4 e9 fd eb                                      bl #0x30e3ac
00393d18  60 11 94 e5                                      ldr r1, [r4, #0x160]
00393d1c  00 60 a0 e1                                      mov r6, r0
00393d20  00 00 95 e5                                      ldr r0, [r5]
00393d24  a0 e9 fd eb                                      bl #0x30e3ac
00393d28  04 10 8d e2                                      add r1, sp, #4
00393d2c  04 00 8d e5                                      str r0, [sp, #4]
00393d30  04 00 a0 e1                                      mov r0, r4
00393d34  08 70 8d e5                                      str r7, [sp, #8]
00393d38  0c 60 8d e5                                      str r6, [sp, #0xc]
00393d3c  76 ff ff eb                                      bl #0x393b1c
00393d40  14 d0 8d e2                                      add sp, sp, #0x14
00393d44  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00393d48, declared_size=44, range_size=44, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject6LookAtEPS_
; demangled: GameObject::LookAt(GameObject*)
; decoder-mode: arm
00393d48  00 00 51 e3                                      cmp r1, #0
00393d4c  10 40 2d e9                                      push {r4, lr}
00393d50  00 40 a0 e1                                      mov r4, r0
00393d54  05 00 00 0a                                      beq #0x393d70
00393d58  01 00 a0 e1                                      mov r0, r1
00393d5c  1e fe ff eb                                      bl #0x3935dc
00393d60  00 10 a0 e1                                      mov r1, r0
00393d64  04 00 a0 e1                                      mov r0, r4
00393d68  10 40 bd e8                                      pop {r4, lr}
00393d6c  de ff ff ea                                      b #0x393cec
00393d70  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00393d74, declared_size=64, range_size=64, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject20UpdateTargetPositionEv
; demangled: GameObject::UpdateTargetPosition()
; decoder-mode: arm
00393d74  10 40 2d e9                                      push {r4, lr}
00393d78  80 11 90 e5                                      ldr r1, [r0, #0x180]
00393d7c  10 d0 4d e2                                      sub sp, sp, #0x10
00393d80  00 40 a0 e1                                      mov r4, r0
00393d84  00 00 51 e3                                      cmp r1, #0
00393d88  07 00 00 0a                                      beq #0x393dac
00393d8c  04 00 8d e2                                      add r0, sp, #4
00393d90  fa 0c 08 eb                                      bl #0x597180
00393d94  08 20 9d e5                                      ldr r2, [sp, #8]
00393d98  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00393d9c  04 10 9d e5                                      ldr r1, [sp, #4]
00393da0  88 21 84 e5                                      str r2, [r4, #0x188]
00393da4  8c 31 84 e5                                      str r3, [r4, #0x18c]
00393da8  84 11 84 e5                                      str r1, [r4, #0x184]
00393dac  10 d0 8d e2                                      add sp, sp, #0x10
00393db0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00393db4, declared_size=220, range_size=220, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject11SetPositionERK7Point3DIfEb
; demangled: GameObject::SetPosition(Point3D<float> const&, bool)
; decoder-mode: arm
00393db4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00393db8  e0 52 90 e5                                      ldr r5, [r0, #0x2e0]
00393dbc  00 40 a0 e1                                      mov r4, r0
00393dc0  01 60 a0 e1                                      mov r6, r1
00393dc4  00 00 55 e3                                      cmp r5, #0
00393dc8  02 70 a0 e1                                      mov r7, r2
00393dcc  16 00 00 0a                                      beq #0x393e2c
00393dd0  64 11 90 e5                                      ldr r1, [r0, #0x164]
00393dd4  04 00 96 e5                                      ldr r0, [r6, #4]
00393dd8  73 e9 fd eb                                      bl #0x30e3ac
00393ddc  68 11 94 e5                                      ldr r1, [r4, #0x168]
00393de0  00 a0 a0 e1                                      mov sl, r0
00393de4  08 00 96 e5                                      ldr r0, [r6, #8]
00393de8  6f e9 fd eb                                      bl #0x30e3ac
00393dec  60 11 94 e5                                      ldr r1, [r4, #0x160]
00393df0  00 80 a0 e1                                      mov r8, r0
00393df4  00 00 96 e5                                      ldr r0, [r6]
00393df8  6b e9 fd eb                                      bl #0x30e3ac
00393dfc  00 10 a0 e1                                      mov r1, r0
00393e00  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00393e04  66 eb fd eb                                      bl #0x30eba4
00393e08  0a 10 a0 e1                                      mov r1, sl
00393e0c  0c 00 85 e5                                      str r0, [r5, #0xc]
00393e10  10 00 95 e5                                      ldr r0, [r5, #0x10]
00393e14  62 eb fd eb                                      bl #0x30eba4
00393e18  08 10 a0 e1                                      mov r1, r8
00393e1c  10 00 85 e5                                      str r0, [r5, #0x10]
00393e20  14 00 95 e5                                      ldr r0, [r5, #0x14]
00393e24  5e eb fd eb                                      bl #0x30eba4
00393e28  14 00 85 e5                                      str r0, [r5, #0x14]
00393e2c  00 30 96 e5                                      ldr r3, [r6]
00393e30  04 00 a0 e1                                      mov r0, r4
00393e34  60 31 84 e5                                      str r3, [r4, #0x160]
00393e38  04 30 96 e5                                      ldr r3, [r6, #4]
00393e3c  64 31 84 e5                                      str r3, [r4, #0x164]
00393e40  08 30 96 e5                                      ldr r3, [r6, #8]
00393e44  68 31 84 e5                                      str r3, [r4, #0x168]
00393e48  1e db ff eb                                      bl #0x38aac8
00393e4c  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
00393e50  00 00 50 e3                                      cmp r0, #0
00393e54  02 00 00 0a                                      beq #0x393e64
00393e58  60 11 94 e5                                      ldr r1, [r4, #0x160]
00393e5c  64 21 94 e5                                      ldr r2, [r4, #0x164]
00393e60  06 6b 03 eb                                      bl #0x46ea80
00393e64  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
00393e68  00 00 50 e3                                      cmp r0, #0
00393e6c  00 00 00 0a                                      beq #0x393e74
00393e70  90 73 03 eb                                      bl #0x470cb8
00393e74  00 00 57 e3                                      cmp r7, #0
00393e78  00 00 00 1a                                      bne #0x393e80
00393e7c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00393e80  04 00 a0 e1                                      mov r0, r4
00393e84  06 10 a0 e1                                      mov r1, r6
00393e88  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00393e8c  db fd ff ea                                      b #0x393600

; FUNCTION 0x00393e90, declared_size=16, range_size=16, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject19ForceUpdatePositionEv
; demangled: GameObject::ForceUpdatePosition()
; decoder-mode: arm
00393e90  d8 02 90 e5                                      ldr r0, [r0, #0x2d8]
00393e94  00 00 50 e3                                      cmp r0, #0
00393e98  1e ff 2f 01                                      bxeq lr
00393e9c  4b 73 03 ea                                      b #0x470bd0

; FUNCTION 0x00393ea0, declared_size=240, range_size=240, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject14UpdatePFObjectEv
; demangled: GameObject::UpdatePFObject()
; decoder-mode: arm
00393ea0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00393ea4  c8 31 90 e5                                      ldr r3, [r0, #0x1c8]
00393ea8  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
00393eac  0c d0 4d e2                                      sub sp, sp, #0xc
00393eb0  00 00 53 e3                                      cmp r3, #0
00393eb4  00 40 a0 e1                                      mov r4, r0
00393eb8  05 50 8f e0                                      add r5, pc, r5
00393ebc  09 00 00 0a                                      beq #0x393ee8
00393ec0  00 30 90 e5                                      ldr r3, [r0]
00393ec4  0f e0 a0 e1                                      mov lr, pc
00393ec8  b4 f0 93 e5                                      ldr pc, [r3, #0xb4]
00393ecc  00 00 50 e3                                      cmp r0, #0
00393ed0  18 00 00 1a                                      bne #0x393f38
00393ed4  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
00393ed8  00 00 50 e3                                      cmp r0, #0
00393edc  03 00 00 0a                                      beq #0x393ef0
00393ee0  1a 6a 03 eb                                      bl #0x46e750
00393ee4  d0 01 84 e5                                      str r0, [r4, #0x1d0]
00393ee8  0c d0 8d e2                                      add sp, sp, #0xc
00393eec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00393ef0  44 11 94 e5                                      ldr r1, [r4, #0x144]
00393ef4  50 01 94 e5                                      ldr r0, [r4, #0x150]
00393ef8  2b e9 fd eb                                      bl #0x30e3ac
00393efc  48 11 94 e5                                      ldr r1, [r4, #0x148]
00393f00  00 50 a0 e1                                      mov r5, r0
00393f04  54 01 94 e5                                      ldr r0, [r4, #0x154]
00393f08  27 e9 fd eb                                      bl #0x30e3ac
00393f0c  00 60 a0 e1                                      mov r6, r0
00393f10  06 10 a0 e1                                      mov r1, r6
00393f14  05 00 a0 e1                                      mov r0, r5
00393f18  fb e9 fd eb                                      bl #0x30e70c
00393f1c  00 00 50 e3                                      cmp r0, #0
00393f20  06 50 a0 11                                      movne r5, r6
00393f24  05 00 a0 e1                                      mov r0, r5
00393f28  3f 14 a0 e3                                      mov r1, #0x3f000000
00393f2c  8e eb fd eb                                      bl #0x30ed6c
00393f30  d0 01 84 e5                                      str r0, [r4, #0x1d0]
00393f34  eb ff ff ea                                      b #0x393ee8
00393f38  00 30 94 e5                                      ldr r3, [r4]
00393f3c  04 00 a0 e1                                      mov r0, r4
00393f40  dc 72 94 e5                                      ldr r7, [r4, #0x2dc]
00393f44  0f e0 a0 e1                                      mov lr, pc
00393f48  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
00393f4c  00 30 94 e5                                      ldr r3, [r4]
00393f50  00 60 a0 e1                                      mov r6, r0
00393f54  04 00 a0 e1                                      mov r0, r4
00393f58  0f e0 a0 e1                                      mov lr, pc
00393f5c  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00393f60  24 30 9f e5                                      ldr r3, [pc, #0x24]
00393f64  00 70 57 e2                                      subs r7, r7, #0
00393f68  01 70 a0 13                                      movne r7, #1
00393f6c  00 00 8d e5                                      str r0, [sp]
00393f70  07 20 a0 e1                                      mov r2, r7
00393f74  03 00 95 e7                                      ldr r0, [r5, r3]
00393f78  72 1f 84 e2                                      add r1, r4, #0x1c8
00393f7c  06 30 a0 e1                                      mov r3, r6
00393f80  ab 50 06 eb                                      bl #0x528234
00393f84  d2 ff ff ea                                      b #0x393ed4
; mapping-symbol data/literal pool
00393f88  d8 0b 60 00 04 12 00 00                          .byte 0xd8, 0x0b, 0x60, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x003940c0, declared_size=632, range_size=632, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject10UpdatePathEv
; demangled: GameObject::UpdatePath()
; decoder-mode: arm
003940c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003940c4  58 62 9f e5                                      ldr r6, [pc, #0x258]
003940c8  58 72 9f e5                                      ldr r7, [pc, #0x258]
003940cc  60 c1 90 e5                                      ldr ip, [r0, #0x160]
003940d0  06 60 8f e0                                      add r6, pc, r6
003940d4  07 30 96 e7                                      ldr r3, [r6, r7]
003940d8  64 21 90 e5                                      ldr r2, [r0, #0x164]
003940dc  2c d0 4d e2                                      sub sp, sp, #0x2c
003940e0  00 10 93 e5                                      ldr r1, [r3]
003940e4  68 31 90 e5                                      ldr r3, [r0, #0x168]
003940e8  e0 c1 80 e5                                      str ip, [r0, #0x1e0]
003940ec  24 10 8d e5                                      str r1, [sp, #0x24]
003940f0  e8 31 80 e5                                      str r3, [r0, #0x1e8]
003940f4  e4 21 80 e5                                      str r2, [r0, #0x1e4]
003940f8  00 30 90 e5                                      ldr r3, [r0]
003940fc  00 50 a0 e1                                      mov r5, r0
00394100  0f e0 a0 e1                                      mov lr, pc
00394104  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00394108  00 00 50 e3                                      cmp r0, #0
0039410c  25 00 00 0a                                      beq #0x3941a8
00394110  05 30 a0 e1                                      mov r3, r5
00394114  00 42 b3 e5                                      ldr r4, [r3, #0x200]!
00394118  03 00 54 e1                                      cmp r4, r3
0039411c  0b 00 00 0a                                      beq #0x394150
00394120  00 40 94 e5                                      ldr r4, [r4]
00394124  04 00 53 e1                                      cmp r3, r4
00394128  fc ff ff 1a                                      bne #0x394120
0039412c  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
00394130  6a 8f 85 e2                                      add r8, r5, #0x1a8
00394134  72 1f 85 e2                                      add r1, r5, #0x1c8
00394138  03 00 96 e7                                      ldr r0, [r6, r3]
0039413c  08 20 a0 e1                                      mov r2, r8
00394140  bc 65 06 eb                                      bl #0x52d838
00394144  05 00 a0 e1                                      mov r0, r5
00394148  08 10 a0 e1                                      mov r1, r8
0039414c  2b fd ff eb                                      bl #0x393600
00394150  05 00 a0 e1                                      mov r0, r5
00394154  30 fd ff eb                                      bl #0x39361c
00394158  00 00 50 e3                                      cmp r0, #0
0039415c  1c 00 00 0a                                      beq #0x3941d4
00394160  b4 31 d5 e5                                      ldrb r3, [r5, #0x1b4]
00394164  00 00 53 e3                                      cmp r3, #0
00394168  05 00 00 0a                                      beq #0x394184
0039416c  00 32 95 e5                                      ldr r3, [r5, #0x200]
00394170  04 00 53 e1                                      cmp r3, r4
00394174  66 00 00 0a                                      beq #0x394314
00394178  00 30 93 e5                                      ldr r3, [r3]
0039417c  04 00 53 e1                                      cmp r3, r4
00394180  fc ff ff 1a                                      bne #0x394178
00394184  b5 31 d5 e5                                      ldrb r3, [r5, #0x1b5]
00394188  00 00 53 e3                                      cmp r3, #0
0039418c  0c 00 00 0a                                      beq #0x3941c4
00394190  cc 31 95 e5                                      ldr r3, [r5, #0x1cc]
00394194  c4 21 d5 e5                                      ldrb r2, [r5, #0x1c4]
00394198  02 30 83 e3                                      orr r3, r3, #2
0039419c  00 00 52 e3                                      cmp r2, #0
003941a0  cc 31 85 e5                                      str r3, [r5, #0x1cc]
003941a4  33 00 00 1a                                      bne #0x394278
003941a8  07 30 96 e7                                      ldr r3, [r6, r7]
003941ac  24 20 9d e5                                      ldr r2, [sp, #0x24]
003941b0  00 30 93 e5                                      ldr r3, [r3]
003941b4  03 00 52 e1                                      cmp r2, r3
003941b8  58 00 00 1a                                      bne #0x394320
003941bc  2c d0 8d e2                                      add sp, sp, #0x2c
003941c0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003941c4  cc 31 95 e5                                      ldr r3, [r5, #0x1cc]
003941c8  02 30 c3 e3                                      bic r3, r3, #2
003941cc  cc 31 85 e5                                      str r3, [r5, #0x1cc]
003941d0  f4 ff ff ea                                      b #0x3941a8
003941d4  01 40 a0 e3                                      mov r4, #1
003941d8  64 11 95 e5                                      ldr r1, [r5, #0x164]
003941dc  ac 01 95 e5                                      ldr r0, [r5, #0x1ac]
003941e0  b4 41 c5 e5                                      strb r4, [r5, #0x1b4]
003941e4  70 e8 fd eb                                      bl #0x30e3ac
003941e8  68 11 95 e5                                      ldr r1, [r5, #0x168]
003941ec  00 a0 a0 e1                                      mov sl, r0
003941f0  b0 01 95 e5                                      ldr r0, [r5, #0x1b0]
003941f4  6c e8 fd eb                                      bl #0x30e3ac
003941f8  60 11 95 e5                                      ldr r1, [r5, #0x160]
003941fc  00 80 a0 e1                                      mov r8, r0
00394200  a8 01 95 e5                                      ldr r0, [r5, #0x1a8]
00394204  68 e8 fd eb                                      bl #0x30e3ac
00394208  0d 10 a0 e1                                      mov r1, sp
0039420c  00 00 8d e5                                      str r0, [sp]
00394210  04 20 a0 e1                                      mov r2, r4
00394214  05 00 a0 e1                                      mov r0, r5
00394218  04 a0 8d e5                                      str sl, [sp, #4]
0039421c  08 80 8d e5                                      str r8, [sp, #8]
00394220  70 fe ff eb                                      bl #0x393be8
00394224  b5 31 d5 e5                                      ldrb r3, [r5, #0x1b5]
00394228  00 00 53 e3                                      cmp r3, #0
0039422c  e4 ff ff 0a                                      beq #0x3941c4
00394230  00 30 95 e5                                      ldr r3, [r5]
00394234  05 00 a0 e1                                      mov r0, r5
00394238  0f e0 a0 e1                                      mov lr, pc
0039423c  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00394240  00 00 50 e3                                      cmp r0, #0
00394244  ce ff ff 0a                                      beq #0x394184
00394248  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
0039424c  6e 8f 85 e2                                      add r8, r5, #0x1b8
00394250  72 1f 85 e2                                      add r1, r5, #0x1c8
00394254  03 00 96 e7                                      ldr r0, [r6, r3]
00394258  08 20 a0 e1                                      mov r2, r8
0039425c  98 4e 06 eb                                      bl #0x527cc4
00394260  05 00 a0 e1                                      mov r0, r5
00394264  08 10 a0 e1                                      mov r1, r8
00394268  04 20 a0 e1                                      mov r2, r4
0039426c  5d fe ff eb                                      bl #0x393be8
00394270  b5 31 d5 e5                                      ldrb r3, [r5, #0x1b5]
00394274  c3 ff ff ea                                      b #0x394188
00394278  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0039427c  0c 40 8d e2                                      add r4, sp, #0xc
00394280  03 80 96 e7                                      ldr r8, [r6, r3]
00394284  08 00 a0 e1                                      mov r0, r8
00394288  7e 8d fe eb                                      bl #0x337888
0039428c  04 00 a0 e1                                      mov r0, r4
00394290  15 10 a0 e3                                      mov r1, #0x15
00394294  1c 40 8d e5                                      str r4, [sp, #0x1c]
00394298  20 40 8d e5                                      str r4, [sp, #0x20]
0039429c  f6 f4 fd eb                                      bl #0x31167c
003942a0  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
003942a4  14 20 a0 e3                                      mov r2, #0x14
003942a8  20 00 9d e5                                      ldr r0, [sp, #0x20]
003942ac  01 10 8f e0                                      add r1, pc, r1
003942b0  6c e9 fd eb                                      bl #0x30e868
003942b4  14 30 80 e2                                      add r3, r0, #0x14
003942b8  1c 30 8d e5                                      str r3, [sp, #0x1c]
003942bc  00 30 a0 e3                                      mov r3, #0
003942c0  14 30 c0 e5                                      strb r3, [r0, #0x14]
003942c4  04 10 a0 e1                                      mov r1, r4
003942c8  08 00 a0 e1                                      mov r0, r8
003942cc  ed 8d fe eb                                      bl #0x337a88
003942d0  00 80 a0 e1                                      mov r8, r0
003942d4  01 80 28 e2                                      eor r8, r8, #1
003942d8  04 00 a0 e1                                      mov r0, r4
003942dc  b2 fd fd eb                                      bl #0x3139ac
003942e0  ff 00 18 e3                                      tst r8, #0xff
003942e4  af ff ff 0a                                      beq #0x3941a8
003942e8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003942ec  6e 4f 85 e2                                      add r4, r5, #0x1b8
003942f0  72 2f 85 e2                                      add r2, r5, #0x1c8
003942f4  04 10 a0 e1                                      mov r1, r4
003942f8  03 00 96 e7                                      ldr r0, [r6, r3]
003942fc  97 46 06 eb                                      bl #0x525d60
00394300  05 00 a0 e1                                      mov r0, r5
00394304  04 10 a0 e1                                      mov r1, r4
00394308  01 20 a0 e3                                      mov r2, #1
0039430c  35 fe ff eb                                      bl #0x393be8
00394310  a4 ff ff ea                                      b #0x3941a8
00394314  05 00 a0 e1                                      mov r0, r5
00394318  76 fd ff eb                                      bl #0x3938f8
0039431c  98 ff ff ea                                      b #0x394184
00394320  fa e7 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00394324  c0 09 60 00 ac 40 00 00 04 12 00 00 84 08 00 00  .byte 0xc0, 0x09, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00, 0x04, 0x12, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
00394334  bc e5 52 00                                      .byte 0xbc, 0xe5, 0x52, 0x00

; FUNCTION 0x00394338, declared_size=64, range_size=64, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject15SetVisualObjectEP12VisualObject
; demangled: GameObject::SetVisualObject(VisualObject*)
; decoder-mode: arm
00394338  70 40 2d e9                                      push {r4, r5, r6, lr}
0039433c  d8 32 90 e5                                      ldr r3, [r0, #0x2d8]
00394340  00 40 a0 e1                                      mov r4, r0
00394344  01 50 a0 e1                                      mov r5, r1
00394348  01 00 53 e1                                      cmp r3, r1
0039434c  08 00 00 0a                                      beq #0x394374
00394350  00 00 53 e3                                      cmp r3, #0
00394354  05 00 00 0a                                      beq #0x394370
00394358  03 00 a0 e1                                      mov r0, r3
0039435c  00 30 93 e5                                      ldr r3, [r3]
00394360  0f e0 a0 e1                                      mov lr, pc
00394364  04 f0 93 e5                                      ldr pc, [r3, #4]
00394368  00 30 a0 e3                                      mov r3, #0
0039436c  d8 32 84 e5                                      str r3, [r4, #0x2d8]
00394370  d8 52 84 e5                                      str r5, [r4, #0x2d8]
00394374  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00394378, declared_size=64, range_size=64, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject21SetCameraAnchorObjectEP10AnchorBase
; demangled: GameObject::SetCameraAnchorObject(AnchorBase*)
; decoder-mode: arm
00394378  70 40 2d e9                                      push {r4, r5, r6, lr}
0039437c  e0 32 90 e5                                      ldr r3, [r0, #0x2e0]
00394380  00 40 a0 e1                                      mov r4, r0
00394384  01 50 a0 e1                                      mov r5, r1
00394388  01 00 53 e1                                      cmp r3, r1
0039438c  08 00 00 0a                                      beq #0x3943b4
00394390  00 00 53 e3                                      cmp r3, #0
00394394  05 00 00 0a                                      beq #0x3943b0
00394398  03 00 a0 e1                                      mov r0, r3
0039439c  00 30 93 e5                                      ldr r3, [r3]
003943a0  0f e0 a0 e1                                      mov lr, pc
003943a4  04 f0 93 e5                                      ldr pc, [r3, #4]
003943a8  00 30 a0 e3                                      mov r3, #0
003943ac  e0 32 84 e5                                      str r3, [r4, #0x2e0]
003943b0  e0 52 84 e5                                      str r5, [r4, #0x2e0]
003943b4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003943b8, declared_size=20, range_size=20, mode=arm
; class-group: GameObject
; alias: _ZNK10GameObject23GetCameraAnchorPositionEv
; demangled: GameObject::GetCameraAnchorPosition() const
; decoder-mode: arm
003943b8  e0 32 90 e5                                      ldr r3, [r0, #0x2e0]
003943bc  00 00 53 e3                                      cmp r3, #0
003943c0  0c 00 83 12                                      addne r0, r3, #0xc
003943c4  16 0e 80 02                                      addeq r0, r0, #0x160
003943c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003943cc, declared_size=1508, range_size=1508, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject16UpdateSubObjectsEv
; demangled: GameObject::UpdateSubObjects()
; decoder-mode: arm
003943cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003943d0  d8 32 90 e5                                      ldr r3, [r0, #0x2d8]
003943d4  c8 55 9f e5                                      ldr r5, [pc, #0x5c8]
003943d8  24 d0 4d e2                                      sub sp, sp, #0x24
003943dc  00 00 53 e3                                      cmp r3, #0
003943e0  00 40 a0 e1                                      mov r4, r0
003943e4  05 50 8f e0                                      add r5, pc, r5
003943e8  03 00 00 0a                                      beq #0x3943fc
003943ec  03 00 a0 e1                                      mov r0, r3
003943f0  00 30 93 e5                                      ldr r3, [r3]
003943f4  0f e0 a0 e1                                      mov lr, pc
003943f8  08 f0 93 e5                                      ldr pc, [r3, #8]
003943fc  dc 32 94 e5                                      ldr r3, [r4, #0x2dc]
00394400  00 00 53 e3                                      cmp r3, #0
00394404  03 00 00 0a                                      beq #0x394418
00394408  03 00 a0 e1                                      mov r0, r3
0039440c  00 30 93 e5                                      ldr r3, [r3]
00394410  0f e0 a0 e1                                      mov lr, pc
00394414  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00394418  00 30 94 e5                                      ldr r3, [r4]
0039441c  04 00 a0 e1                                      mov r0, r4
00394420  0f e0 a0 e1                                      mov lr, pc
00394424  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00394428  00 30 94 e5                                      ldr r3, [r4]
0039442c  00 70 a0 e1                                      mov r7, r0
00394430  04 00 a0 e1                                      mov r0, r4
00394434  0f e0 a0 e1                                      mov lr, pc
00394438  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0039443c  00 80 a0 e1                                      mov r8, r0
00394440  04 00 a0 e1                                      mov r0, r4
00394444  74 fc ff eb                                      bl #0x39361c
00394448  dc 12 94 e5                                      ldr r1, [r4, #0x2dc]
0039444c  00 60 a0 e1                                      mov r6, r0
00394450  00 00 51 e3                                      cmp r1, #0
00394454  01 a0 a0 01                                      moveq sl, r1
00394458  2b 00 00 0a                                      beq #0x39450c
0039445c  14 30 91 e5                                      ldr r3, [r1, #0x14]
00394460  b0 30 d3 e1                                      ldrh r3, [r3]
00394464  08 00 13 e3                                      tst r3, #8
00394468  c4 00 00 0a                                      beq #0x394780
0039446c  00 a0 a0 e3                                      mov sl, #0
00394470  00 00 58 e3                                      cmp r8, #0
00394474  03 01 00 0a                                      beq #0x394888
00394478  60 11 94 e5                                      ldr r1, [r4, #0x160]
0039447c  a8 01 94 e5                                      ldr r0, [r4, #0x1a8]
00394480  c9 e7 fd eb                                      bl #0x30e3ac
00394484  64 11 94 e5                                      ldr r1, [r4, #0x164]
00394488  00 b0 a0 e1                                      mov fp, r0
0039448c  ac 01 94 e5                                      ldr r0, [r4, #0x1ac]
00394490  c5 e7 fd eb                                      bl #0x30e3ac
00394494  68 11 94 e5                                      ldr r1, [r4, #0x168]
00394498  00 90 a0 e1                                      mov sb, r0
0039449c  b0 01 94 e5                                      ldr r0, [r4, #0x1b0]
003944a0  c1 e7 fd eb                                      bl #0x30e3ac
003944a4  0b 10 a0 e1                                      mov r1, fp
003944a8  00 80 a0 e1                                      mov r8, r0
003944ac  0b 00 a0 e1                                      mov r0, fp
003944b0  0c b0 8d e5                                      str fp, [sp, #0xc]
003944b4  10 90 8d e5                                      str sb, [sp, #0x10]
003944b8  14 80 8d e5                                      str r8, [sp, #0x14]
003944bc  2a ea fd eb                                      bl #0x30ed6c
003944c0  09 10 a0 e1                                      mov r1, sb
003944c4  00 b0 a0 e1                                      mov fp, r0
003944c8  09 00 a0 e1                                      mov r0, sb
003944cc  26 ea fd eb                                      bl #0x30ed6c
003944d0  00 10 a0 e1                                      mov r1, r0
003944d4  0b 00 a0 e1                                      mov r0, fp
003944d8  b1 e9 fd eb                                      bl #0x30eba4
003944dc  08 10 a0 e1                                      mov r1, r8
003944e0  00 90 a0 e1                                      mov sb, r0
003944e4  08 00 a0 e1                                      mov r0, r8
003944e8  1f ea fd eb                                      bl #0x30ed6c
003944ec  00 10 a0 e1                                      mov r1, r0
003944f0  09 00 a0 e1                                      mov r0, sb
003944f4  aa e9 fd eb                                      bl #0x30eba4
003944f8  00 10 a0 e3                                      mov r1, #0
003944fc  00 80 a0 e1                                      mov r8, r0
00394500  7c e7 fd eb                                      bl #0x30e2f8
00394504  00 00 50 e3                                      cmp r0, #0
00394508  e3 00 00 1a                                      bne #0x39489c
0039450c  00 00 57 e3                                      cmp r7, #0
00394510  5d 00 00 0a                                      beq #0x39468c
00394514  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
00394518  00 00 50 e3                                      cmp r0, #0
0039451c  02 00 00 0a                                      beq #0x39452c
00394520  00 00 5a e3                                      cmp sl, #0
00394524  4e 00 00 0a                                      beq #0x394664
00394528  e2 71 03 eb                                      bl #0x470cb8
0039452c  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
00394530  00 00 50 e3                                      cmp r0, #0
00394534  02 00 00 0a                                      beq #0x394544
00394538  60 11 94 e5                                      ldr r1, [r4, #0x160]
0039453c  64 21 94 e5                                      ldr r2, [r4, #0x164]
00394540  4e 69 03 eb                                      bl #0x46ea80
00394544  00 30 94 e5                                      ldr r3, [r4]
00394548  04 00 a0 e1                                      mov r0, r4
0039454c  0f e0 a0 e1                                      mov lr, pc
00394550  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00394554  00 30 94 e5                                      ldr r3, [r4]
00394558  00 70 a0 e1                                      mov r7, r0
0039455c  04 00 a0 e1                                      mov r0, r4
00394560  0f e0 a0 e1                                      mov lr, pc
00394564  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00394568  00 00 57 e3                                      cmp r7, #0
0039456c  30 00 00 0a                                      beq #0x394634
00394570  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
00394574  00 00 53 e3                                      cmp r3, #0
00394578  2d 00 00 0a                                      beq #0x394634
0039457c  03 00 a0 e1                                      mov r0, r3
00394580  d1 71 03 eb                                      bl #0x470ccc
00394584  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
00394588  00 00 53 e3                                      cmp r3, #0
0039458c  0b 00 00 0a                                      beq #0x3945c0
00394590  00 30 94 e5                                      ldr r3, [r4]
00394594  04 00 a0 e1                                      mov r0, r4
00394598  0f e0 a0 e1                                      mov lr, pc
0039459c  70 f0 93 e5                                      ldr pc, [r3, #0x70]
003945a0  00 00 50 e3                                      cmp r0, #0
003945a4  01 00 00 0a                                      beq #0x3945b0
003945a8  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003945ac  e5 78 03 eb                                      bl #0x472948
003945b0  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003945b4  00 00 50 e3                                      cmp r0, #0
003945b8  00 00 00 0a                                      beq #0x3945c0
003945bc  a7 78 03 eb                                      bl #0x472860
003945c0  00 30 94 e5                                      ldr r3, [r4]
003945c4  04 00 a0 e1                                      mov r0, r4
003945c8  0f e0 a0 e1                                      mov lr, pc
003945cc  74 f0 93 e5                                      ldr pc, [r3, #0x74]
003945d0  00 00 50 e3                                      cmp r0, #0
003945d4  92 00 00 0a                                      beq #0x394824
003945d8  00 00 56 e3                                      cmp r6, #0
003945dc  05 00 00 0a                                      beq #0x3945f8
003945e0  60 11 94 e5                                      ldr r1, [r4, #0x160]
003945e4  64 21 94 e5                                      ldr r2, [r4, #0x164]
003945e8  68 31 94 e5                                      ldr r3, [r4, #0x168]
003945ec  a8 11 84 e5                                      str r1, [r4, #0x1a8]
003945f0  ac 21 84 e5                                      str r2, [r4, #0x1ac]
003945f4  b0 31 84 e5                                      str r3, [r4, #0x1b0]
003945f8  04 00 a0 e1                                      mov r0, r4
003945fc  31 d9 ff eb                                      bl #0x38aac8
00394600  e0 32 94 e5                                      ldr r3, [r4, #0x2e0]
00394604  00 00 53 e3                                      cmp r3, #0
00394608  07 00 00 0a                                      beq #0x39462c
0039460c  03 00 a0 e1                                      mov r0, r3
00394610  00 30 93 e5                                      ldr r3, [r3]
00394614  0f e0 a0 e1                                      mov lr, pc
00394618  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0039461c  e0 32 94 e5                                      ldr r3, [r4, #0x2e0]
00394620  04 20 93 e5                                      ldr r2, [r3, #4]
00394624  02 00 52 e3                                      cmp r2, #2
00394628  1c 00 00 0a                                      beq #0x3946a0
0039462c  24 d0 8d e2                                      add sp, sp, #0x24
00394630  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00394634  00 00 50 e3                                      cmp r0, #0
00394638  d1 ff ff 0a                                      beq #0x394584
0039463c  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
00394640  00 00 50 e3                                      cmp r0, #0
00394644  ce ff ff 0a                                      beq #0x394584
00394648  14 30 90 e5                                      ldr r3, [r0, #0x14]
0039464c  b0 30 d3 e1                                      ldrh r3, [r3]
00394650  08 00 13 e3                                      tst r3, #8
00394654  ca ff ff 1a                                      bne #0x394584
00394658  7e 68 03 eb                                      bl #0x46e858
0039465c  74 01 84 e5                                      str r0, [r4, #0x174]
00394660  c7 ff ff ea                                      b #0x394584
00394664  f8 72 03 eb                                      bl #0x47124c
00394668  dc 32 94 e5                                      ldr r3, [r4, #0x2dc]
0039466c  00 00 53 e3                                      cmp r3, #0
00394670  05 00 00 0a                                      beq #0x39468c
00394674  14 30 93 e5                                      ldr r3, [r3, #0x14]
00394678  00 10 a0 e3                                      mov r1, #0
0039467c  b0 20 d3 e1                                      ldrh r2, [r3]
00394680  8c 10 83 e5                                      str r1, [r3, #0x8c]
00394684  08 20 c2 e3                                      bic r2, r2, #8
00394688  b0 20 c3 e1                                      strh r2, [r3]
0039468c  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
00394690  00 00 50 e3                                      cmp r0, #0
00394694  a4 ff ff 0a                                      beq #0x39452c
00394698  86 71 03 eb                                      bl #0x470cb8
0039469c  a2 ff ff ea                                      b #0x39452c
003946a0  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
003946a4  03 00 53 e3                                      cmp r3, #3
003946a8  ad 00 00 0a                                      beq #0x394964
003946ac  04 00 53 e3                                      cmp r3, #4
003946b0  01 00 00 0a                                      beq #0x3946bc
003946b4  01 00 53 e3                                      cmp r3, #1
003946b8  db ff ff 1a                                      bne #0x39462c
003946bc  e4 32 9f e5                                      ldr r3, [pc, #0x2e4]
003946c0  03 00 95 e7                                      ldr r0, [r5, r3]
003946c4  b2 2b fe eb                                      bl #0x31f594
003946c8  28 51 90 e5                                      ldr r5, [r0, #0x128]
003946cc  25 30 d5 e5                                      ldrb r3, [r5, #0x25]
003946d0  00 00 53 e3                                      cmp r3, #0
003946d4  d4 ff ff 0a                                      beq #0x39462c
003946d8  e0 42 94 e5                                      ldr r4, [r4, #0x2e0]
003946dc  0d 00 a0 e1                                      mov r0, sp
003946e0  04 10 95 e5                                      ldr r1, [r5, #4]
003946e4  a5 0a 08 eb                                      bl #0x597180
003946e8  00 10 9d e5                                      ldr r1, [sp]
003946ec  0c 00 94 e5                                      ldr r0, [r4, #0xc]
003946f0  2d e7 fd eb                                      bl #0x30e3ac
003946f4  04 10 9d e5                                      ldr r1, [sp, #4]
003946f8  00 80 a0 e1                                      mov r8, r0
003946fc  10 00 94 e5                                      ldr r0, [r4, #0x10]
00394700  29 e7 fd eb                                      bl #0x30e3ac
00394704  08 10 9d e5                                      ldr r1, [sp, #8]
00394708  00 70 a0 e1                                      mov r7, r0
0039470c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00394710  25 e7 fd eb                                      bl #0x30e3ac
00394714  08 10 a0 e1                                      mov r1, r8
00394718  00 60 a0 e1                                      mov r6, r0
0039471c  08 00 a0 e1                                      mov r0, r8
00394720  91 e9 fd eb                                      bl #0x30ed6c
00394724  07 10 a0 e1                                      mov r1, r7
00394728  00 40 a0 e1                                      mov r4, r0
0039472c  07 00 a0 e1                                      mov r0, r7
00394730  8d e9 fd eb                                      bl #0x30ed6c
00394734  00 10 a0 e1                                      mov r1, r0
00394738  04 00 a0 e1                                      mov r0, r4
0039473c  18 e9 fd eb                                      bl #0x30eba4
00394740  06 10 a0 e1                                      mov r1, r6
00394744  00 40 a0 e1                                      mov r4, r0
00394748  06 00 a0 e1                                      mov r0, r6
0039474c  86 e9 fd eb                                      bl #0x30ed6c
00394750  00 10 a0 e1                                      mov r1, r0
00394754  04 00 a0 e1                                      mov r0, r4
00394758  11 e9 fd eb                                      bl #0x30eba4
0039475c  01 11 a0 e3                                      mov r1, #0x40000000
00394760  01 15 81 e2                                      add r1, r1, #0x400000
00394764  90 e8 fd eb                                      bl #0x30e9ac
00394768  00 00 50 e3                                      cmp r0, #0
0039476c  ae ff ff 0a                                      beq #0x39462c
00394770  05 00 a0 e1                                      mov r0, r5
00394774  00 10 a0 e3                                      mov r1, #0
00394778  a7 f3 01 eb                                      bl #0x41161c
0039477c  aa ff ff ea                                      b #0x39462c
00394780  18 00 8d e2                                      add r0, sp, #0x18
00394784  23 68 03 eb                                      bl #0x46e818
00394788  18 a0 9d e5                                      ldr sl, [sp, #0x18]
0039478c  60 11 94 e5                                      ldr r1, [r4, #0x160]
00394790  0a 00 a0 e1                                      mov r0, sl
00394794  04 e7 fd eb                                      bl #0x30e3ac
00394798  fe 15 a0 e3                                      mov r1, #0x3f800000
0039479c  02 01 c0 e3                                      bic r0, r0, #0x80000000
003947a0  d4 e6 fd eb                                      bl #0x30e2f8
003947a4  00 00 50 e3                                      cmp r0, #0
003947a8  07 00 00 1a                                      bne #0x3947cc
003947ac  64 11 94 e5                                      ldr r1, [r4, #0x164]
003947b0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003947b4  fc e6 fd eb                                      bl #0x30e3ac
003947b8  fe 15 a0 e3                                      mov r1, #0x3f800000
003947bc  02 01 c0 e3                                      bic r0, r0, #0x80000000
003947c0  cc e6 fd eb                                      bl #0x30e2f8
003947c4  00 00 50 e3                                      cmp r0, #0
003947c8  27 ff ff 0a                                      beq #0x39446c
003947cc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003947d0  00 30 94 e5                                      ldr r3, [r4]
003947d4  60 a1 84 e5                                      str sl, [r4, #0x160]
003947d8  64 21 84 e5                                      str r2, [r4, #0x164]
003947dc  04 00 a0 e1                                      mov r0, r4
003947e0  0f e0 a0 e1                                      mov lr, pc
003947e4  74 f0 93 e5                                      ldr pc, [r3, #0x74]
003947e8  01 00 50 e3                                      cmp r0, #1
003947ec  01 a0 a0 13                                      movne sl, #1
003947f0  1e ff ff 1a                                      bne #0x394470
003947f4  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
003947f8  16 1e 84 e2                                      add r1, r4, #0x160
003947fc  72 2f 84 e2                                      add r2, r4, #0x1c8
00394800  03 00 95 e7                                      ldr r0, [r5, r3]
00394804  5e 45 06 eb                                      bl #0x525d84
00394808  00 a0 50 e2                                      subs sl, r0, #0
0039480c  17 ff ff 1a                                      bne #0x394470
00394810  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
00394814  60 11 94 e5                                      ldr r1, [r4, #0x160]
00394818  64 21 94 e5                                      ldr r2, [r4, #0x164]
0039481c  97 68 03 eb                                      bl #0x46ea80
00394820  12 ff ff ea                                      b #0x394470
00394824  00 30 94 e5                                      ldr r3, [r4]
00394828  04 00 a0 e1                                      mov r0, r4
0039482c  0f e0 a0 e1                                      mov lr, pc
00394830  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00394834  00 00 50 e3                                      cmp r0, #0
00394838  37 00 00 1a                                      bne #0x39491c
0039483c  16 7e 84 e2                                      add r7, r4, #0x160
00394840  64 31 9f e5                                      ldr r3, [pc, #0x164]
00394844  07 10 a0 e1                                      mov r1, r7
00394848  72 2f 84 e2                                      add r2, r4, #0x1c8
0039484c  03 00 95 e7                                      ldr r0, [r5, r3]
00394850  4b 45 06 eb                                      bl #0x525d84
00394854  00 00 50 e3                                      cmp r0, #0
00394858  05 00 00 1a                                      bne #0x394874
0039485c  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
00394860  00 00 50 e3                                      cmp r0, #0
00394864  02 00 00 0a                                      beq #0x394874
00394868  60 11 94 e5                                      ldr r1, [r4, #0x160]
0039486c  64 21 94 e5                                      ldr r2, [r4, #0x164]
00394870  82 68 03 eb                                      bl #0x46ea80
00394874  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
00394878  00 00 50 e3                                      cmp r0, #0
0039487c  55 ff ff 0a                                      beq #0x3945d8
00394880  0c 71 03 eb                                      bl #0x470cb8
00394884  53 ff ff ea                                      b #0x3945d8
00394888  00 10 a0 e3                                      mov r1, #0
0039488c  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
00394890  01 20 a0 e1                                      mov r2, r1
00394894  1f 68 03 eb                                      bl #0x46e918
00394898  1b ff ff ea                                      b #0x39450c
0039489c  00 30 94 e5                                      ldr r3, [r4]
003948a0  04 00 a0 e1                                      mov r0, r4
003948a4  0f e0 a0 e1                                      mov lr, pc
003948a8  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
003948ac  43 14 a0 e3                                      mov r1, #0x43000000
003948b0  00 90 a0 e1                                      mov sb, r0
003948b4  32 17 81 e2                                      add r1, r1, #0xc80000
003948b8  08 00 a0 e1                                      mov r0, r8
003948bc  8d e6 fd eb                                      bl #0x30e2f8
003948c0  00 00 50 e3                                      cmp r0, #0
003948c4  2d 00 00 0a                                      beq #0x394980
003948c8  0c 00 8d e2                                      add r0, sp, #0xc
003948cc  f7 e1 fe eb                                      bl #0x34d0b0
003948d0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003948d4  09 00 a0 e1                                      mov r0, sb
003948d8  23 e9 fd eb                                      bl #0x30ed6c
003948dc  10 10 9d e5                                      ldr r1, [sp, #0x10]
003948e0  00 b0 a0 e1                                      mov fp, r0
003948e4  09 00 a0 e1                                      mov r0, sb
003948e8  0c b0 8d e5                                      str fp, [sp, #0xc]
003948ec  1e e9 fd eb                                      bl #0x30ed6c
003948f0  09 10 a0 e1                                      mov r1, sb
003948f4  00 80 a0 e1                                      mov r8, r0
003948f8  14 00 9d e5                                      ldr r0, [sp, #0x14]
003948fc  10 80 8d e5                                      str r8, [sp, #0x10]
00394900  19 e9 fd eb                                      bl #0x30ed6c
00394904  14 00 8d e5                                      str r0, [sp, #0x14]
00394908  0b 10 a0 e1                                      mov r1, fp
0039490c  08 20 a0 e1                                      mov r2, r8
00394910  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
00394914  ff 67 03 eb                                      bl #0x46e918
00394918  fb fe ff ea                                      b #0x39450c
0039491c  84 30 9f e5                                      ldr r3, [pc, #0x84]
00394920  03 00 95 e7                                      ldr r0, [r5, r3]
00394924  1a 2b fe eb                                      bl #0x31f594
00394928  00 00 50 e3                                      cmp r0, #0
0039492c  c2 ff ff 0a                                      beq #0x39483c
00394930  16 7e 84 e2                                      add r7, r4, #0x160
00394934  07 10 a0 e1                                      mov r1, r7
00394938  6e 2f 84 e2                                      add r2, r4, #0x1b8
0039493c  ec 92 01 eb                                      bl #0x3f94f4
00394940  00 00 50 e3                                      cmp r0, #0
00394944  bd ff ff 1a                                      bne #0x394840
00394948  e0 11 94 e5                                      ldr r1, [r4, #0x1e0]
0039494c  e4 21 94 e5                                      ldr r2, [r4, #0x1e4]
00394950  e8 31 94 e5                                      ldr r3, [r4, #0x1e8]
00394954  60 11 84 e5                                      str r1, [r4, #0x160]
00394958  64 21 84 e5                                      str r2, [r4, #0x164]
0039495c  68 31 84 e5                                      str r3, [r4, #0x168]
00394960  bd ff ff ea                                      b #0x39485c
00394964  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00394968  03 00 95 e7                                      ldr r0, [r5, r3]
0039496c  08 2b fe eb                                      bl #0x31f594
00394970  01 10 a0 e3                                      mov r1, #1
00394974  28 01 90 e5                                      ldr r0, [r0, #0x128]
00394978  27 f3 01 eb                                      bl #0x41161c
0039497c  2a ff ff ea                                      b #0x39462c
00394980  00 10 a0 e3                                      mov r1, #0
00394984  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
00394988  01 20 a0 e1                                      mov r2, r1
0039498c  e1 67 03 eb                                      bl #0x46e918
00394990  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
00394994  60 11 94 e5                                      ldr r1, [r4, #0x160]
00394998  64 21 94 e5                                      ldr r2, [r4, #0x164]
0039499c  37 68 03 eb                                      bl #0x46ea80
003949a0  d9 fe ff ea                                      b #0x39450c
; mapping-symbol data/literal pool
003949a4  ac 06 60 00 f4 37 00 00 04 12 00 00              .byte 0xac, 0x06, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x003949b0, declared_size=140, range_size=140, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject17DisableCollisionsEv
; demangled: GameObject::DisableCollisions()
; decoder-mode: arm
003949b0  70 40 2d e9                                      push {r4, r5, r6, lr}
003949b4  00 60 a0 e1                                      mov r6, r0
003949b8  dc 02 90 e5                                      ldr r0, [r0, #0x2dc]
003949bc  70 40 9f e5                                      ldr r4, [pc, #0x70]
003949c0  08 d0 4d e2                                      sub sp, sp, #8
003949c4  00 00 50 e3                                      cmp r0, #0
003949c8  04 40 8f e0                                      add r4, pc, r4
003949cc  00 00 00 0a                                      beq #0x3949d4
003949d0  66 68 03 eb                                      bl #0x46eb70
003949d4  00 30 96 e5                                      ldr r3, [r6]
003949d8  06 00 a0 e1                                      mov r0, r6
003949dc  0f e0 a0 e1                                      mov lr, pc
003949e0  b4 f0 93 e5                                      ldr pc, [r3, #0xb4]
003949e4  00 00 50 e3                                      cmp r0, #0
003949e8  0f 00 00 0a                                      beq #0x394a2c
003949ec  00 30 96 e5                                      ldr r3, [r6]
003949f0  06 00 a0 e1                                      mov r0, r6
003949f4  0f e0 a0 e1                                      mov lr, pc
003949f8  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
003949fc  00 30 96 e5                                      ldr r3, [r6]
00394a00  00 50 a0 e1                                      mov r5, r0
00394a04  06 00 a0 e1                                      mov r0, r6
00394a08  0f e0 a0 e1                                      mov lr, pc
00394a0c  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00394a10  20 30 9f e5                                      ldr r3, [pc, #0x20]
00394a14  00 00 8d e5                                      str r0, [sp]
00394a18  72 1f 86 e2                                      add r1, r6, #0x1c8
00394a1c  03 00 94 e7                                      ldr r0, [r4, r3]
00394a20  00 20 a0 e3                                      mov r2, #0
00394a24  05 30 a0 e1                                      mov r3, r5
00394a28  01 4e 06 eb                                      bl #0x528234
00394a2c  08 d0 8d e2                                      add sp, sp, #8
00394a30  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00394a34  c8 00 60 00 04 12 00 00                          .byte 0xc8, 0x00, 0x60, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x00394a3c, declared_size=140, range_size=140, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject16EnableCollisionsEv
; demangled: GameObject::EnableCollisions()
; decoder-mode: arm
00394a3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00394a40  00 60 a0 e1                                      mov r6, r0
00394a44  dc 02 90 e5                                      ldr r0, [r0, #0x2dc]
00394a48  70 40 9f e5                                      ldr r4, [pc, #0x70]
00394a4c  08 d0 4d e2                                      sub sp, sp, #8
00394a50  00 00 50 e3                                      cmp r0, #0
00394a54  04 40 8f e0                                      add r4, pc, r4
00394a58  00 00 00 0a                                      beq #0x394a60
00394a5c  60 68 03 eb                                      bl #0x46ebe4
00394a60  00 30 96 e5                                      ldr r3, [r6]
00394a64  06 00 a0 e1                                      mov r0, r6
00394a68  0f e0 a0 e1                                      mov lr, pc
00394a6c  b4 f0 93 e5                                      ldr pc, [r3, #0xb4]
00394a70  00 00 50 e3                                      cmp r0, #0
00394a74  0f 00 00 0a                                      beq #0x394ab8
00394a78  00 30 96 e5                                      ldr r3, [r6]
00394a7c  06 00 a0 e1                                      mov r0, r6
00394a80  0f e0 a0 e1                                      mov lr, pc
00394a84  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
00394a88  00 30 96 e5                                      ldr r3, [r6]
00394a8c  00 50 a0 e1                                      mov r5, r0
00394a90  06 00 a0 e1                                      mov r0, r6
00394a94  0f e0 a0 e1                                      mov lr, pc
00394a98  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00394a9c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00394aa0  00 00 8d e5                                      str r0, [sp]
00394aa4  72 1f 86 e2                                      add r1, r6, #0x1c8
00394aa8  03 00 94 e7                                      ldr r0, [r4, r3]
00394aac  01 20 a0 e3                                      mov r2, #1
00394ab0  05 30 a0 e1                                      mov r3, r5
00394ab4  de 4d 06 eb                                      bl #0x528234
00394ab8  08 d0 8d e2                                      add sp, sp, #8
00394abc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00394ac0  3c 00 60 00 04 12 00 00                          .byte 0x3c, 0x00, 0x60, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x00394bf8, declared_size=316, range_size=316, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject17SetPhysicalObjectEP14PhysicalObjectb
; demangled: GameObject::SetPhysicalObject(PhysicalObject*, bool)
; decoder-mode: arm
00394bf8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00394bfc  20 41 9f e5                                      ldr r4, [pc, #0x120]
00394c00  20 71 9f e5                                      ldr r7, [pc, #0x120]
00394c04  20 c1 9f e5                                      ldr ip, [pc, #0x120]
00394c08  04 40 8f e0                                      add r4, pc, r4
00394c0c  07 30 94 e7                                      ldr r3, [r4, r7]
00394c10  0c 80 94 e7                                      ldr r8, [r4, ip]
00394c14  20 d0 4d e2                                      sub sp, sp, #0x20
00394c18  00 30 93 e5                                      ldr r3, [r3]
00394c1c  04 50 8d e2                                      add r5, sp, #4
00394c20  00 a0 a0 e1                                      mov sl, r0
00394c24  08 00 a0 e1                                      mov r0, r8
00394c28  1c 30 8d e5                                      str r3, [sp, #0x1c]
00394c2c  02 90 a0 e1                                      mov sb, r2
00394c30  01 60 a0 e1                                      mov r6, r1
00394c34  13 8b fe eb                                      bl #0x337888
00394c38  05 00 a0 e1                                      mov r0, r5
00394c3c  0d 10 a0 e3                                      mov r1, #0xd
00394c40  14 50 8d e5                                      str r5, [sp, #0x14]
00394c44  18 50 8d e5                                      str r5, [sp, #0x18]
00394c48  8b f2 fd eb                                      bl #0x31167c
00394c4c  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00394c50  0c 20 a0 e3                                      mov r2, #0xc
00394c54  18 00 9d e5                                      ldr r0, [sp, #0x18]
00394c58  01 10 8f e0                                      add r1, pc, r1
00394c5c  01 e7 fd eb                                      bl #0x30e868
00394c60  0c 30 80 e2                                      add r3, r0, #0xc
00394c64  14 30 8d e5                                      str r3, [sp, #0x14]
00394c68  00 30 a0 e3                                      mov r3, #0
00394c6c  0c 30 c0 e5                                      strb r3, [r0, #0xc]
00394c70  05 10 a0 e1                                      mov r1, r5
00394c74  08 00 a0 e1                                      mov r0, r8
00394c78  82 8b fe eb                                      bl #0x337a88
00394c7c  00 80 a0 e1                                      mov r8, r0
00394c80  05 00 a0 e1                                      mov r0, r5
00394c84  48 fb fd eb                                      bl #0x3139ac
00394c88  00 00 58 e3                                      cmp r8, #0
00394c8c  0c 00 00 0a                                      beq #0x394cc4
00394c90  00 00 56 e3                                      cmp r6, #0
00394c94  03 00 00 0a                                      beq #0x394ca8
00394c98  06 00 a0 e1                                      mov r0, r6
00394c9c  00 30 96 e5                                      ldr r3, [r6]
00394ca0  0f e0 a0 e1                                      mov lr, pc
00394ca4  04 f0 93 e5                                      ldr pc, [r3, #4]
00394ca8  07 30 94 e7                                      ldr r3, [r4, r7]
00394cac  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00394cb0  00 30 93 e5                                      ldr r3, [r3]
00394cb4  03 00 52 e1                                      cmp r2, r3
00394cb8  18 00 00 1a                                      bne #0x394d20
00394cbc  20 d0 8d e2                                      add sp, sp, #0x20
00394cc0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00394cc4  dc 32 9a e5                                      ldr r3, [sl, #0x2dc]
00394cc8  06 00 53 e1                                      cmp r3, r6
00394ccc  0b 00 00 0a                                      beq #0x394d00
00394cd0  00 00 53 e3                                      cmp r3, #0
00394cd4  04 00 00 0a                                      beq #0x394cec
00394cd8  03 00 a0 e1                                      mov r0, r3
00394cdc  00 30 93 e5                                      ldr r3, [r3]
00394ce0  0f e0 a0 e1                                      mov lr, pc
00394ce4  04 f0 93 e5                                      ldr pc, [r3, #4]
00394ce8  dc 82 8a e5                                      str r8, [sl, #0x2dc]
00394cec  00 00 56 e3                                      cmp r6, #0
00394cf0  dc 62 8a e5                                      str r6, [sl, #0x2dc]
00394cf4  01 00 00 0a                                      beq #0x394d00
00394cf8  00 00 59 e3                                      cmp sb, #0
00394cfc  02 00 00 1a                                      bne #0x394d0c
00394d00  0a 00 a0 e1                                      mov r0, sl
00394d04  65 fc ff eb                                      bl #0x393ea0
00394d08  e6 ff ff ea                                      b #0x394ca8
00394d0c  06 00 a0 e1                                      mov r0, r6
00394d10  82 67 03 eb                                      bl #0x46eb20
00394d14  0a 00 a0 e1                                      mov r0, sl
00394d18  60 fc ff eb                                      bl #0x393ea0
00394d1c  e1 ff ff ea                                      b #0x394ca8
00394d20  7a e5 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00394d24  88 fe 5f 00 ac 40 00 00 84 08 00 00 28 dc 52 00  .byte 0x88, 0xfe, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x28, 0xdc, 0x52, 0x00

; FUNCTION 0x00394d34, declared_size=380, range_size=380, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject15SetVisualObjectEPKcS1_b
; demangled: GameObject::SetVisualObject(char const*, char const*, bool)
; decoder-mode: arm
00394d34  00 00 53 e3                                      cmp r3, #0
00394d38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00394d3c  00 40 a0 e1                                      mov r4, r0
00394d40  01 50 a0 e1                                      mov r5, r1
00394d44  02 60 a0 e1                                      mov r6, r2
00394d48  27 00 00 0a                                      beq #0x394dec
00394d4c  00 00 51 e3                                      cmp r1, #0
00394d50  29 8e 80 e2                                      add r8, r0, #0x290
00394d54  44 00 00 0a                                      beq #0x394e6c
00394d58  05 00 a0 e1                                      mov r0, r5
00394d5c  3c e4 fd eb                                      bl #0x30de54
00394d60  05 10 a0 e1                                      mov r1, r5
00394d64  00 20 85 e0                                      add r2, r5, r0
00394d68  08 00 a0 e1                                      mov r0, r8
00394d6c  1b ef fd eb                                      bl #0x3109e0
00394d70  00 00 56 e3                                      cmp r6, #0
00394d74  00 00 55 13                                      cmpne r5, #0
00394d78  aa 7f 84 e2                                      add r7, r4, #0x2a8
00394d7c  29 00 00 0a                                      beq #0x394e28
00394d80  06 00 a0 e1                                      mov r0, r6
00394d84  32 e4 fd eb                                      bl #0x30de54
00394d88  00 20 86 e0                                      add r2, r6, r0
00394d8c  06 10 a0 e1                                      mov r1, r6
00394d90  07 00 a0 e1                                      mov r0, r7
00394d94  11 ef fd eb                                      bl #0x3109e0
00394d98  a0 22 94 e5                                      ldr r2, [r4, #0x2a0]
00394d9c  a4 32 94 e5                                      ldr r3, [r4, #0x2a4]
00394da0  03 00 52 e1                                      cmp r2, r3
00394da4  29 00 00 0a                                      beq #0x394e50
00394da8  00 10 a0 e3                                      mov r1, #0
00394dac  ac 00 a0 e3                                      mov r0, #0xac
00394db0  ee ed fd eb                                      bl #0x310570
00394db4  07 30 a0 e1                                      mov r3, r7
00394db8  00 50 a0 e1                                      mov r5, r0
00394dbc  04 10 a0 e1                                      mov r1, r4
00394dc0  08 20 a0 e1                                      mov r2, r8
00394dc4  10 77 03 eb                                      bl #0x472a0c
00394dc8  08 30 95 e5                                      ldr r3, [r5, #8]
00394dcc  00 00 53 e3                                      cmp r3, #0
00394dd0  2f 00 00 0a                                      beq #0x394e94
00394dd4  04 00 a0 e1                                      mov r0, r4
00394dd8  05 10 a0 e1                                      mov r1, r5
00394ddc  55 fd ff eb                                      bl #0x394338
00394de0  08 30 95 e5                                      ldr r3, [r5, #8]
00394de4  04 42 83 e5                                      str r4, [r3, #0x204]
00394de8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00394dec  00 00 51 e3                                      cmp r1, #0
00394df0  1c 00 00 0a                                      beq #0x394e68
00394df4  01 00 a0 e1                                      mov r0, r1
00394df8  a4 12 94 e5                                      ldr r1, [r4, #0x2a4]
00394dfc  46 e5 fd eb                                      bl #0x30e31c
00394e00  00 00 50 e3                                      cmp r0, #0
00394e04  15 00 00 1a                                      bne #0x394e60
00394e08  00 00 56 e3                                      cmp r6, #0
00394e0c  04 00 00 0a                                      beq #0x394e24
00394e10  06 00 a0 e1                                      mov r0, r6
00394e14  bc 12 94 e5                                      ldr r1, [r4, #0x2bc]
00394e18  3f e5 fd eb                                      bl #0x30e31c
00394e1c  00 00 50 e3                                      cmp r0, #0
00394e20  0e 00 00 1a                                      bne #0x394e60
00394e24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00394e28  78 60 9f e5                                      ldr r6, [pc, #0x78]
00394e2c  07 00 a0 e1                                      mov r0, r7
00394e30  06 60 8f e0                                      add r6, pc, r6
00394e34  06 20 a0 e1                                      mov r2, r6
00394e38  06 10 a0 e1                                      mov r1, r6
00394e3c  e7 ee fd eb                                      bl #0x3109e0
00394e40  a0 22 94 e5                                      ldr r2, [r4, #0x2a0]
00394e44  a4 32 94 e5                                      ldr r3, [r4, #0x2a4]
00394e48  03 00 52 e1                                      cmp r2, r3
00394e4c  d5 ff ff 1a                                      bne #0x394da8
00394e50  04 00 a0 e1                                      mov r0, r4
00394e54  00 10 a0 e3                                      mov r1, #0
00394e58  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00394e5c  35 fd ff ea                                      b #0x394338
00394e60  29 8e 84 e2                                      add r8, r4, #0x290
00394e64  bb ff ff ea                                      b #0x394d58
00394e68  29 8e 80 e2                                      add r8, r0, #0x290
00394e6c  38 50 9f e5                                      ldr r5, [pc, #0x38]
00394e70  08 00 a0 e1                                      mov r0, r8
00394e74  aa 7f 84 e2                                      add r7, r4, #0x2a8
00394e78  05 50 8f e0                                      add r5, pc, r5
00394e7c  05 20 a0 e1                                      mov r2, r5
00394e80  05 10 a0 e1                                      mov r1, r5
00394e84  d5 ee fd eb                                      bl #0x3109e0
00394e88  05 60 a0 e1                                      mov r6, r5
00394e8c  05 20 a0 e1                                      mov r2, r5
00394e90  bd ff ff ea                                      b #0x394d8c
00394e94  05 00 a0 e1                                      mov r0, r5
00394e98  00 30 95 e5                                      ldr r3, [r5]
00394e9c  0f e0 a0 e1                                      mov lr, pc
00394ea0  04 f0 93 e5                                      ldr pc, [r3, #4]
00394ea4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00394ea8  d8 69 53 00 90 69 53 00                          .byte 0xd8, 0x69, 0x53, 0x00, 0x90, 0x69, 0x53, 0x00

; FUNCTION 0x00394eb0, declared_size=16, range_size=16, mode=arm
; class-group: GameObject
; alias: _ZN10GameObject16LoadVisualObjectEv
; demangled: GameObject::LoadVisualObject()
; decoder-mode: arm
00394eb0  bc 22 90 e5                                      ldr r2, [r0, #0x2bc]
00394eb4  a4 12 90 e5                                      ldr r1, [r0, #0x2a4]
00394eb8  01 30 a0 e3                                      mov r3, #1
00394ebc  9c ff ff ea                                      b #0x394d34
