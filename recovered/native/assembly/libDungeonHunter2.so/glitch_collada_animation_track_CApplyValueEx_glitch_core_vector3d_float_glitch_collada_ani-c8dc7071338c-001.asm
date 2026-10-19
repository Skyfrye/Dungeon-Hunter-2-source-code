; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062329c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062329c  30 40 2d e9                                      push {r4, r5, lr}
006232a0  14 d0 4d e2                                      sub sp, sp, #0x14
006232a4  04 50 8d e2                                      add r5, sp, #4
006232a8  00 30 a0 e3                                      mov r3, #0
006232ac  02 40 a0 e1                                      mov r4, r2
006232b0  05 20 a0 e1                                      mov r2, r5
006232b4  0c 30 8d e5                                      str r3, [sp, #0xc]
006232b8  04 30 8d e5                                      str r3, [sp, #4]
006232bc  08 30 8d e5                                      str r3, [sp, #8]
006232c0  42 d2 ff eb                                      bl #0x617bd0
006232c4  04 00 a0 e1                                      mov r0, r4
006232c8  05 10 a0 e1                                      mov r1, r5
006232cc  00 30 94 e5                                      ldr r3, [r4]
006232d0  0f e0 a0 e1                                      mov lr, pc
006232d4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006232d8  14 d0 8d e2                                      add sp, sp, #0x14
006232dc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006232f4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006232f4  30 40 2d e9                                      push {r4, r5, lr}
006232f8  1c d0 4d e2                                      sub sp, sp, #0x1c
006232fc  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623300  00 c0 a0 e3                                      mov ip, #0
00623304  0c 50 8d e2                                      add r5, sp, #0xc
00623308  00 50 8d e5                                      str r5, [sp]
0062330c  14 c0 8d e5                                      str ip, [sp, #0x14]
00623310  0c c0 8d e5                                      str ip, [sp, #0xc]
00623314  10 c0 8d e5                                      str ip, [sp, #0x10]
00623318  57 d2 ff eb                                      bl #0x617c7c
0062331c  04 00 a0 e1                                      mov r0, r4
00623320  05 10 a0 e1                                      mov r1, r5
00623324  00 30 94 e5                                      ldr r3, [r4]
00623328  0f e0 a0 e1                                      mov lr, pc
0062332c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623330  1c d0 8d e2                                      add sp, sp, #0x1c
00623334  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062be7c, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062be7c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062be80  01 00 52 e3                                      cmp r2, #1
0062be84  1c d0 4d e2                                      sub sp, sp, #0x1c
0062be88  00 a0 a0 e3                                      mov sl, #0
0062be8c  02 40 a0 e1                                      mov r4, r2
0062be90  01 50 a0 e1                                      mov r5, r1
0062be94  04 30 8d e5                                      str r3, [sp, #4]
0062be98  14 a0 8d e5                                      str sl, [sp, #0x14]
0062be9c  2b 00 00 0a                                      beq #0x62bf50
0062bea0  00 00 52 e3                                      cmp r2, #0
0062bea4  0a b0 a0 01                                      moveq fp, sl
0062bea8  0a 90 a0 01                                      moveq sb, sl
0062beac  1d 00 00 0a                                      beq #0x62bf28
0062beb0  00 60 a0 e1                                      mov r6, r0
0062beb4  00 80 a0 e3                                      mov r8, #0
0062beb8  0a b0 a0 e1                                      mov fp, sl
0062bebc  0a 90 a0 e1                                      mov sb, sl
0062bec0  08 70 95 e7                                      ldr r7, [r5, r8]
0062bec4  00 10 96 e5                                      ldr r1, [r6]
0062bec8  04 80 88 e2                                      add r8, r8, #4
0062becc  07 00 a0 e1                                      mov r0, r7
0062bed0  a5 8b f3 eb                                      bl #0x30ed6c
0062bed4  00 10 a0 e1                                      mov r1, r0
0062bed8  0a 00 a0 e1                                      mov r0, sl
0062bedc  30 8b f3 eb                                      bl #0x30eba4
0062bee0  04 10 96 e5                                      ldr r1, [r6, #4]
0062bee4  00 a0 a0 e1                                      mov sl, r0
0062bee8  07 00 a0 e1                                      mov r0, r7
0062beec  9e 8b f3 eb                                      bl #0x30ed6c
0062bef0  00 10 a0 e1                                      mov r1, r0
0062bef4  0b 00 a0 e1                                      mov r0, fp
0062bef8  29 8b f3 eb                                      bl #0x30eba4
0062befc  08 10 96 e5                                      ldr r1, [r6, #8]
0062bf00  00 b0 a0 e1                                      mov fp, r0
0062bf04  07 00 a0 e1                                      mov r0, r7
0062bf08  97 8b f3 eb                                      bl #0x30ed6c
0062bf0c  00 10 a0 e1                                      mov r1, r0
0062bf10  09 00 a0 e1                                      mov r0, sb
0062bf14  22 8b f3 eb                                      bl #0x30eba4
0062bf18  01 40 54 e2                                      subs r4, r4, #1
0062bf1c  00 90 a0 e1                                      mov sb, r0
0062bf20  0c 60 86 e2                                      add r6, r6, #0xc
0062bf24  e5 ff ff 1a                                      bne #0x62bec0
0062bf28  18 10 8d e2                                      add r1, sp, #0x18
0062bf2c  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062bf30  10 b0 8d e5                                      str fp, [sp, #0x10]
0062bf34  08 90 81 e5                                      str sb, [r1, #8]
0062bf38  04 00 9d e5                                      ldr r0, [sp, #4]
0062bf3c  00 30 90 e5                                      ldr r3, [r0]
0062bf40  0f e0 a0 e1                                      mov lr, pc
0062bf44  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062bf48  1c d0 8d e2                                      add sp, sp, #0x1c
0062bf4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062bf50  00 30 a0 e1                                      mov r3, r0
0062bf54  04 c0 93 e4                                      ldr ip, [r3], #4
0062bf58  04 20 90 e5                                      ldr r2, [r0, #4]
0062bf5c  18 10 8d e2                                      add r1, sp, #0x18
0062bf60  04 30 93 e5                                      ldr r3, [r3, #4]
0062bf64  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062bf68  10 20 8d e5                                      str r2, [sp, #0x10]
0062bf6c  08 30 81 e5                                      str r3, [r1, #8]
0062bf70  f0 ff ff ea                                      b #0x62bf38

; FUNCTION 0x0062bf90, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062bf90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062bf94  01 00 52 e3                                      cmp r2, #1
0062bf98  1c d0 4d e2                                      sub sp, sp, #0x1c
0062bf9c  00 a0 a0 e3                                      mov sl, #0
0062bfa0  02 40 a0 e1                                      mov r4, r2
0062bfa4  01 50 a0 e1                                      mov r5, r1
0062bfa8  04 30 8d e5                                      str r3, [sp, #4]
0062bfac  14 a0 8d e5                                      str sl, [sp, #0x14]
0062bfb0  2b 00 00 0a                                      beq #0x62c064
0062bfb4  00 00 52 e3                                      cmp r2, #0
0062bfb8  0a b0 a0 01                                      moveq fp, sl
0062bfbc  0a 90 a0 01                                      moveq sb, sl
0062bfc0  1d 00 00 0a                                      beq #0x62c03c
0062bfc4  00 60 a0 e1                                      mov r6, r0
0062bfc8  00 80 a0 e3                                      mov r8, #0
0062bfcc  0a b0 a0 e1                                      mov fp, sl
0062bfd0  0a 90 a0 e1                                      mov sb, sl
0062bfd4  08 70 95 e7                                      ldr r7, [r5, r8]
0062bfd8  00 10 96 e5                                      ldr r1, [r6]
0062bfdc  04 80 88 e2                                      add r8, r8, #4
0062bfe0  07 00 a0 e1                                      mov r0, r7
0062bfe4  60 8b f3 eb                                      bl #0x30ed6c
0062bfe8  00 10 a0 e1                                      mov r1, r0
0062bfec  0a 00 a0 e1                                      mov r0, sl
0062bff0  eb 8a f3 eb                                      bl #0x30eba4
0062bff4  04 10 96 e5                                      ldr r1, [r6, #4]
0062bff8  00 a0 a0 e1                                      mov sl, r0
0062bffc  07 00 a0 e1                                      mov r0, r7
0062c000  59 8b f3 eb                                      bl #0x30ed6c
0062c004  00 10 a0 e1                                      mov r1, r0
0062c008  0b 00 a0 e1                                      mov r0, fp
0062c00c  e4 8a f3 eb                                      bl #0x30eba4
0062c010  08 10 96 e5                                      ldr r1, [r6, #8]
0062c014  00 b0 a0 e1                                      mov fp, r0
0062c018  07 00 a0 e1                                      mov r0, r7
0062c01c  52 8b f3 eb                                      bl #0x30ed6c
0062c020  00 10 a0 e1                                      mov r1, r0
0062c024  09 00 a0 e1                                      mov r0, sb
0062c028  dd 8a f3 eb                                      bl #0x30eba4
0062c02c  01 40 54 e2                                      subs r4, r4, #1
0062c030  00 90 a0 e1                                      mov sb, r0
0062c034  0c 60 86 e2                                      add r6, r6, #0xc
0062c038  e5 ff ff 1a                                      bne #0x62bfd4
0062c03c  18 10 8d e2                                      add r1, sp, #0x18
0062c040  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062c044  10 b0 8d e5                                      str fp, [sp, #0x10]
0062c048  08 90 81 e5                                      str sb, [r1, #8]
0062c04c  04 00 9d e5                                      ldr r0, [sp, #4]
0062c050  00 30 90 e5                                      ldr r3, [r0]
0062c054  0f e0 a0 e1                                      mov lr, pc
0062c058  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062c05c  1c d0 8d e2                                      add sp, sp, #0x1c
0062c060  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062c064  00 30 a0 e1                                      mov r3, r0
0062c068  04 c0 93 e4                                      ldr ip, [r3], #4
0062c06c  04 20 90 e5                                      ldr r2, [r0, #4]
0062c070  18 10 8d e2                                      add r1, sp, #0x18
0062c074  04 30 93 e5                                      ldr r3, [r3, #4]
0062c078  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062c07c  10 20 8d e5                                      str r2, [sp, #0x10]
0062c080  08 30 81 e5                                      str r3, [r1, #8]
0062c084  f0 ff ff ea                                      b #0x62c04c
