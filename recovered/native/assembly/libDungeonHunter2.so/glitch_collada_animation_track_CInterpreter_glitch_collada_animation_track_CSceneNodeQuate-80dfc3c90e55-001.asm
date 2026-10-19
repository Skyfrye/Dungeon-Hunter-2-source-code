; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00614a90, declared_size=168, range_size=168, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_30CSceneNodeQuaternionAngleMixinIsEEfLi4ENS1_17SUseDefaultValuesILi3EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00614a90  70 40 2d e9                                      push {r4, r5, r6, lr}
00614a94  00 40 a0 e1                                      mov r4, r0
00614a98  10 d0 4d e2                                      sub sp, sp, #0x10
00614a9c  01 50 a0 e1                                      mov r5, r1
00614aa0  04 00 8d e2                                      add r0, sp, #4
00614aa4  04 10 a0 e1                                      mov r1, r4
00614aa8  02 60 a0 e1                                      mov r6, r2
00614aac  bd fc ff eb                                      bl #0x613da8
00614ab0  04 30 9d e5                                      ldr r3, [sp, #4]
00614ab4  85 50 a0 e1                                      lsl r5, r5, #1
00614ab8  04 30 93 e5                                      ldr r3, [r3, #4]
00614abc  f5 00 93 e1                                      ldrsh r0, [r3, r5]
00614ac0  a7 e7 f3 eb                                      bl #0x30e964
00614ac4  08 30 9d e5                                      ldr r3, [sp, #8]
00614ac8  00 10 93 e5                                      ldr r1, [r3]
00614acc  a6 e8 f3 eb                                      bl #0x30ed6c
00614ad0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00614ad4  00 10 93 e5                                      ldr r1, [r3]
00614ad8  31 e8 f3 eb                                      bl #0x30eba4
00614adc  00 50 a0 e1                                      mov r5, r0
00614ae0  04 00 a0 e1                                      mov r0, r4
00614ae4  da 54 01 eb                                      bl #0x669e54
00614ae8  00 00 50 e3                                      cmp r0, #0
00614aec  02 00 00 1a                                      bne #0x614afc
00614af0  00 50 86 e5                                      str r5, [r6]
00614af4  10 d0 8d e2                                      add sp, sp, #0x10
00614af8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00614afc  04 00 a0 e1                                      mov r0, r4
00614b00  d8 54 01 eb                                      bl #0x669e68
00614b04  00 00 50 e3                                      cmp r0, #0
00614b08  f8 ff ff 0a                                      beq #0x614af0
00614b0c  04 00 a0 e1                                      mov r0, r4
00614b10  d4 54 01 eb                                      bl #0x669e68
00614b14  00 20 90 e5                                      ldr r2, [r0]
00614b18  06 30 a0 e1                                      mov r3, r6
00614b1c  04 20 83 e4                                      str r2, [r3], #4
00614b20  04 20 90 e5                                      ldr r2, [r0, #4]
00614b24  04 20 86 e5                                      str r2, [r6, #4]
00614b28  08 20 90 e5                                      ldr r2, [r0, #8]
00614b2c  08 50 83 e5                                      str r5, [r3, #8]
00614b30  04 20 83 e5                                      str r2, [r3, #4]
00614b34  ee ff ff ea                                      b #0x614af4

; FUNCTION 0x00614b38, declared_size=268, range_size=268, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_30CSceneNodeQuaternionAngleMixinIsEEfLi4ENS1_17SUseDefaultValuesILi3EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00614b38  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00614b3c  00 40 a0 e1                                      mov r4, r0
00614b40  14 d0 4d e2                                      sub sp, sp, #0x14
00614b44  01 50 a0 e1                                      mov r5, r1
00614b48  04 00 8d e2                                      add r0, sp, #4
00614b4c  04 10 a0 e1                                      mov r1, r4
00614b50  02 60 a0 e1                                      mov r6, r2
00614b54  03 90 a0 e1                                      mov sb, r3
00614b58  38 70 9d e5                                      ldr r7, [sp, #0x38]
00614b5c  91 fc ff eb                                      bl #0x613da8
00614b60  04 30 9d e5                                      ldr r3, [sp, #4]
00614b64  85 50 a0 e1                                      lsl r5, r5, #1
00614b68  86 60 a0 e1                                      lsl r6, r6, #1
00614b6c  04 a0 93 e5                                      ldr sl, [r3, #4]
00614b70  08 30 9d e5                                      ldr r3, [sp, #8]
00614b74  f5 00 9a e1                                      ldrsh r0, [sl, r5]
00614b78  00 b0 93 e5                                      ldr fp, [r3]
00614b7c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00614b80  00 80 93 e5                                      ldr r8, [r3]
00614b84  76 e7 f3 eb                                      bl #0x30e964
00614b88  0b 10 a0 e1                                      mov r1, fp
00614b8c  76 e8 f3 eb                                      bl #0x30ed6c
00614b90  08 10 a0 e1                                      mov r1, r8
00614b94  02 e8 f3 eb                                      bl #0x30eba4
00614b98  00 50 a0 e1                                      mov r5, r0
00614b9c  f6 00 9a e1                                      ldrsh r0, [sl, r6]
00614ba0  6f e7 f3 eb                                      bl #0x30e964
00614ba4  00 10 a0 e1                                      mov r1, r0
00614ba8  0b 00 a0 e1                                      mov r0, fp
00614bac  6e e8 f3 eb                                      bl #0x30ed6c
00614bb0  00 10 a0 e1                                      mov r1, r0
00614bb4  08 00 a0 e1                                      mov r0, r8
00614bb8  f9 e7 f3 eb                                      bl #0x30eba4
00614bbc  00 80 a0 e1                                      mov r8, r0
00614bc0  04 00 a0 e1                                      mov r0, r4
00614bc4  a2 54 01 eb                                      bl #0x669e54
00614bc8  00 00 50 e3                                      cmp r0, #0
00614bcc  12 00 00 0a                                      beq #0x614c1c
00614bd0  00 60 a0 e3                                      mov r6, #0
00614bd4  04 00 a0 e1                                      mov r0, r4
00614bd8  a2 54 01 eb                                      bl #0x669e68
00614bdc  06 30 90 e7                                      ldr r3, [r0, r6]
00614be0  06 30 87 e7                                      str r3, [r7, r6]
00614be4  04 60 86 e2                                      add r6, r6, #4
00614be8  0c 00 56 e3                                      cmp r6, #0xc
00614bec  f8 ff ff 1a                                      bne #0x614bd4
00614bf0  05 10 a0 e1                                      mov r1, r5
00614bf4  08 00 a0 e1                                      mov r0, r8
00614bf8  eb e5 f3 eb                                      bl #0x30e3ac
00614bfc  00 10 a0 e1                                      mov r1, r0
00614c00  09 00 a0 e1                                      mov r0, sb
00614c04  58 e8 f3 eb                                      bl #0x30ed6c
00614c08  05 10 a0 e1                                      mov r1, r5
00614c0c  e4 e7 f3 eb                                      bl #0x30eba4
00614c10  0c 00 87 e5                                      str r0, [r7, #0xc]
00614c14  14 d0 8d e2                                      add sp, sp, #0x14
00614c18  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00614c1c  05 10 a0 e1                                      mov r1, r5
00614c20  08 00 a0 e1                                      mov r0, r8
00614c24  e0 e5 f3 eb                                      bl #0x30e3ac
00614c28  00 10 a0 e1                                      mov r1, r0
00614c2c  09 00 a0 e1                                      mov r0, sb
00614c30  4d e8 f3 eb                                      bl #0x30ed6c
00614c34  05 10 a0 e1                                      mov r1, r5
00614c38  d9 e7 f3 eb                                      bl #0x30eba4
00614c3c  00 00 87 e5                                      str r0, [r7]
00614c40  f3 ff ff ea                                      b #0x614c14
