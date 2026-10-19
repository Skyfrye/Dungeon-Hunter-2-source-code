; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061ee64, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi0EfEEfLi4ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061ee64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061ee68  01 40 a0 e1                                      mov r4, r1
0061ee6c  00 10 a0 e3                                      mov r1, #0
0061ee70  02 60 a0 e1                                      mov r6, r2
0061ee74  00 50 a0 e1                                      mov r5, r0
0061ee78  e9 2b 01 eb                                      bl #0x669e24
0061ee7c  04 70 90 e5                                      ldr r7, [r0, #4]
0061ee80  05 00 a0 e1                                      mov r0, r5
0061ee84  f2 2b 01 eb                                      bl #0x669e54
0061ee88  00 00 50 e3                                      cmp r0, #0
0061ee8c  02 00 00 1a                                      bne #0x61ee9c
0061ee90  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061ee94  00 30 86 e5                                      str r3, [r6]
0061ee98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061ee9c  05 00 a0 e1                                      mov r0, r5
0061eea0  f0 2b 01 eb                                      bl #0x669e68
0061eea4  00 00 50 e3                                      cmp r0, #0
0061eea8  f8 ff ff 0a                                      beq #0x61ee90
0061eeac  05 00 a0 e1                                      mov r0, r5
0061eeb0  ec 2b 01 eb                                      bl #0x669e68
0061eeb4  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061eeb8  06 30 a0 e1                                      mov r3, r6
0061eebc  04 20 83 e4                                      str r2, [r3], #4
0061eec0  04 20 90 e5                                      ldr r2, [r0, #4]
0061eec4  04 20 86 e5                                      str r2, [r6, #4]
0061eec8  08 20 90 e5                                      ldr r2, [r0, #8]
0061eecc  04 20 83 e5                                      str r2, [r3, #4]
0061eed0  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0061eed4  08 20 83 e5                                      str r2, [r3, #8]
0061eed8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061ef2c, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi0EfEEfLi4ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061ef2c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061ef30  01 40 a0 e1                                      mov r4, r1
0061ef34  00 10 a0 e3                                      mov r1, #0
0061ef38  02 50 a0 e1                                      mov r5, r2
0061ef3c  03 80 a0 e1                                      mov r8, r3
0061ef40  00 70 a0 e1                                      mov r7, r0
0061ef44  20 60 9d e5                                      ldr r6, [sp, #0x20]
0061ef48  b5 2b 01 eb                                      bl #0x669e24
0061ef4c  04 90 90 e5                                      ldr sb, [r0, #4]
0061ef50  07 00 a0 e1                                      mov r0, r7
0061ef54  be 2b 01 eb                                      bl #0x669e54
0061ef58  00 00 50 e3                                      cmp r0, #0
0061ef5c  13 00 00 0a                                      beq #0x61efb0
0061ef60  04 a1 99 e7                                      ldr sl, [sb, r4, lsl #2]
0061ef64  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061ef68  01 40 a0 e3                                      mov r4, #1
0061ef6c  0a 10 a0 e1                                      mov r1, sl
0061ef70  0d bd f3 eb                                      bl #0x30e3ac
0061ef74  00 10 a0 e1                                      mov r1, r0
0061ef78  08 00 a0 e1                                      mov r0, r8
0061ef7c  7a bf f3 eb                                      bl #0x30ed6c
0061ef80  00 10 a0 e1                                      mov r1, r0
0061ef84  0a 00 a0 e1                                      mov r0, sl
0061ef88  05 bf f3 eb                                      bl #0x30eba4
0061ef8c  00 00 86 e5                                      str r0, [r6]
0061ef90  07 00 a0 e1                                      mov r0, r7
0061ef94  b3 2b 01 eb                                      bl #0x669e68
0061ef98  04 31 90 e7                                      ldr r3, [r0, r4, lsl #2]
0061ef9c  04 31 86 e7                                      str r3, [r6, r4, lsl #2]
0061efa0  01 40 84 e2                                      add r4, r4, #1
0061efa4  04 00 54 e3                                      cmp r4, #4
0061efa8  f8 ff ff 1a                                      bne #0x61ef90
0061efac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061efb0  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061efb4  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061efb8  04 10 a0 e1                                      mov r1, r4
0061efbc  fa bc f3 eb                                      bl #0x30e3ac
0061efc0  00 10 a0 e1                                      mov r1, r0
0061efc4  08 00 a0 e1                                      mov r0, r8
0061efc8  67 bf f3 eb                                      bl #0x30ed6c
0061efcc  00 10 a0 e1                                      mov r1, r0
0061efd0  04 00 a0 e1                                      mov r0, r4
0061efd4  f2 be f3 eb                                      bl #0x30eba4
0061efd8  00 00 86 e5                                      str r0, [r6]
0061efdc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061f054, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi0EfEEfLi4ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061f054  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061f058  01 40 a0 e1                                      mov r4, r1
0061f05c  00 10 a0 e3                                      mov r1, #0
0061f060  02 50 a0 e1                                      mov r5, r2
0061f064  03 60 a0 e1                                      mov r6, r3
0061f068  00 70 a0 e1                                      mov r7, r0
0061f06c  6c 2b 01 eb                                      bl #0x669e24
0061f070  04 30 90 e5                                      ldr r3, [r0, #4]
0061f074  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061f078  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061f07c  ca bc f3 eb                                      bl #0x30e3ac
0061f080  00 40 a0 e1                                      mov r4, r0
0061f084  07 00 a0 e1                                      mov r0, r7
0061f088  71 2b 01 eb                                      bl #0x669e54
0061f08c  00 00 50 e3                                      cmp r0, #0
0061f090  01 00 00 1a                                      bne #0x61f09c
0061f094  00 40 86 e5                                      str r4, [r6]
0061f098  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061f09c  07 00 a0 e1                                      mov r0, r7
0061f0a0  70 2b 01 eb                                      bl #0x669e68
0061f0a4  06 30 a0 e1                                      mov r3, r6
0061f0a8  04 40 83 e4                                      str r4, [r3], #4
0061f0ac  04 20 90 e5                                      ldr r2, [r0, #4]
0061f0b0  04 20 86 e5                                      str r2, [r6, #4]
0061f0b4  08 20 90 e5                                      ldr r2, [r0, #8]
0061f0b8  04 20 83 e5                                      str r2, [r3, #4]
0061f0bc  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0061f0c0  08 20 83 e5                                      str r2, [r3, #8]
0061f0c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061f0dc, declared_size=220, range_size=220, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi0EfEEfLi4ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061f0dc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061f0e0  01 40 a0 e1                                      mov r4, r1
0061f0e4  00 10 a0 e3                                      mov r1, #0
0061f0e8  02 50 a0 e1                                      mov r5, r2
0061f0ec  03 90 a0 e1                                      mov sb, r3
0061f0f0  00 80 a0 e1                                      mov r8, r0
0061f0f4  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061f0f8  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061f0fc  48 2b 01 eb                                      bl #0x669e24
0061f100  04 60 90 e5                                      ldr r6, [r0, #4]
0061f104  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061f108  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061f10c  0b 10 a0 e1                                      mov r1, fp
0061f110  a5 bc f3 eb                                      bl #0x30e3ac
0061f114  0b 10 a0 e1                                      mov r1, fp
0061f118  00 40 a0 e1                                      mov r4, r0
0061f11c  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061f120  a1 bc f3 eb                                      bl #0x30e3ac
0061f124  00 60 a0 e1                                      mov r6, r0
0061f128  08 00 a0 e1                                      mov r0, r8
0061f12c  48 2b 01 eb                                      bl #0x669e54
0061f130  00 00 50 e3                                      cmp r0, #0
0061f134  0a 00 00 1a                                      bne #0x61f164
0061f138  04 10 a0 e1                                      mov r1, r4
0061f13c  06 00 a0 e1                                      mov r0, r6
0061f140  99 bc f3 eb                                      bl #0x30e3ac
0061f144  00 10 a0 e1                                      mov r1, r0
0061f148  0a 00 a0 e1                                      mov r0, sl
0061f14c  06 bf f3 eb                                      bl #0x30ed6c
0061f150  00 10 a0 e1                                      mov r1, r0
0061f154  04 00 a0 e1                                      mov r0, r4
0061f158  91 be f3 eb                                      bl #0x30eba4
0061f15c  00 00 87 e5                                      str r0, [r7]
0061f160  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061f164  08 00 a0 e1                                      mov r0, r8
0061f168  3e 2b 01 eb                                      bl #0x669e68
0061f16c  04 10 a0 e1                                      mov r1, r4
0061f170  00 50 a0 e1                                      mov r5, r0
0061f174  06 00 a0 e1                                      mov r0, r6
0061f178  8b bc f3 eb                                      bl #0x30e3ac
0061f17c  00 10 a0 e1                                      mov r1, r0
0061f180  0a 00 a0 e1                                      mov r0, sl
0061f184  f8 be f3 eb                                      bl #0x30ed6c
0061f188  00 10 a0 e1                                      mov r1, r0
0061f18c  04 00 a0 e1                                      mov r0, r4
0061f190  83 be f3 eb                                      bl #0x30eba4
0061f194  07 30 a0 e1                                      mov r3, r7
0061f198  04 00 83 e4                                      str r0, [r3], #4
0061f19c  04 20 95 e5                                      ldr r2, [r5, #4]
0061f1a0  04 20 87 e5                                      str r2, [r7, #4]
0061f1a4  08 20 95 e5                                      ldr r2, [r5, #8]
0061f1a8  04 20 83 e5                                      str r2, [r3, #4]
0061f1ac  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0061f1b0  08 20 83 e5                                      str r2, [r3, #8]
0061f1b4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
