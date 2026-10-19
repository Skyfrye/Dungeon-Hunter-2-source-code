; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061f9a4, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionXExIfEEfLi3ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061f9a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061f9a8  01 40 a0 e1                                      mov r4, r1
0061f9ac  00 10 a0 e3                                      mov r1, #0
0061f9b0  02 60 a0 e1                                      mov r6, r2
0061f9b4  00 50 a0 e1                                      mov r5, r0
0061f9b8  19 29 01 eb                                      bl #0x669e24
0061f9bc  04 70 90 e5                                      ldr r7, [r0, #4]
0061f9c0  05 00 a0 e1                                      mov r0, r5
0061f9c4  22 29 01 eb                                      bl #0x669e54
0061f9c8  00 00 50 e3                                      cmp r0, #0
0061f9cc  02 00 00 1a                                      bne #0x61f9dc
0061f9d0  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061f9d4  00 30 86 e5                                      str r3, [r6]
0061f9d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061f9dc  05 00 a0 e1                                      mov r0, r5
0061f9e0  20 29 01 eb                                      bl #0x669e68
0061f9e4  00 00 50 e3                                      cmp r0, #0
0061f9e8  f8 ff ff 0a                                      beq #0x61f9d0
0061f9ec  05 00 a0 e1                                      mov r0, r5
0061f9f0  1c 29 01 eb                                      bl #0x669e68
0061f9f4  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061f9f8  06 30 a0 e1                                      mov r3, r6
0061f9fc  04 20 83 e4                                      str r2, [r3], #4
0061fa00  04 20 90 e5                                      ldr r2, [r0, #4]
0061fa04  04 20 86 e5                                      str r2, [r6, #4]
0061fa08  08 20 90 e5                                      ldr r2, [r0, #8]
0061fa0c  04 20 83 e5                                      str r2, [r3, #4]
0061fa10  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061fa24, declared_size=184, range_size=184, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionXExIfEEfLi3ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061fa24  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061fa28  01 40 a0 e1                                      mov r4, r1
0061fa2c  00 10 a0 e3                                      mov r1, #0
0061fa30  02 50 a0 e1                                      mov r5, r2
0061fa34  03 80 a0 e1                                      mov r8, r3
0061fa38  00 60 a0 e1                                      mov r6, r0
0061fa3c  20 70 9d e5                                      ldr r7, [sp, #0x20]
0061fa40  f7 28 01 eb                                      bl #0x669e24
0061fa44  04 90 90 e5                                      ldr sb, [r0, #4]
0061fa48  06 00 a0 e1                                      mov r0, r6
0061fa4c  00 29 01 eb                                      bl #0x669e54
0061fa50  00 00 50 e3                                      cmp r0, #0
0061fa54  14 00 00 0a                                      beq #0x61faac
0061fa58  04 a1 99 e7                                      ldr sl, [sb, r4, lsl #2]
0061fa5c  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061fa60  07 40 a0 e1                                      mov r4, r7
0061fa64  0a 10 a0 e1                                      mov r1, sl
0061fa68  4f ba f3 eb                                      bl #0x30e3ac
0061fa6c  00 10 a0 e1                                      mov r1, r0
0061fa70  08 00 a0 e1                                      mov r0, r8
0061fa74  bc bc f3 eb                                      bl #0x30ed6c
0061fa78  00 10 a0 e1                                      mov r1, r0
0061fa7c  0a 00 a0 e1                                      mov r0, sl
0061fa80  47 bc f3 eb                                      bl #0x30eba4
0061fa84  04 00 84 e4                                      str r0, [r4], #4
0061fa88  06 00 a0 e1                                      mov r0, r6
0061fa8c  f5 28 01 eb                                      bl #0x669e68
0061fa90  04 30 90 e5                                      ldr r3, [r0, #4]
0061fa94  06 00 a0 e1                                      mov r0, r6
0061fa98  04 30 87 e5                                      str r3, [r7, #4]
0061fa9c  f1 28 01 eb                                      bl #0x669e68
0061faa0  08 30 90 e5                                      ldr r3, [r0, #8]
0061faa4  04 30 84 e5                                      str r3, [r4, #4]
0061faa8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061faac  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061fab0  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061fab4  04 10 a0 e1                                      mov r1, r4
0061fab8  3b ba f3 eb                                      bl #0x30e3ac
0061fabc  00 10 a0 e1                                      mov r1, r0
0061fac0  08 00 a0 e1                                      mov r0, r8
0061fac4  a8 bc f3 eb                                      bl #0x30ed6c
0061fac8  00 10 a0 e1                                      mov r1, r0
0061facc  04 00 a0 e1                                      mov r0, r4
0061fad0  33 bc f3 eb                                      bl #0x30eba4
0061fad4  00 00 87 e5                                      str r0, [r7]
0061fad8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061faf8, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionXExIfEEfLi3ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061faf8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061fafc  01 40 a0 e1                                      mov r4, r1
0061fb00  00 10 a0 e3                                      mov r1, #0
0061fb04  02 50 a0 e1                                      mov r5, r2
0061fb08  03 60 a0 e1                                      mov r6, r3
0061fb0c  00 70 a0 e1                                      mov r7, r0
0061fb10  c3 28 01 eb                                      bl #0x669e24
0061fb14  04 30 90 e5                                      ldr r3, [r0, #4]
0061fb18  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061fb1c  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061fb20  21 ba f3 eb                                      bl #0x30e3ac
0061fb24  00 40 a0 e1                                      mov r4, r0
0061fb28  07 00 a0 e1                                      mov r0, r7
0061fb2c  c8 28 01 eb                                      bl #0x669e54
0061fb30  00 00 50 e3                                      cmp r0, #0
0061fb34  01 00 00 1a                                      bne #0x61fb40
0061fb38  00 40 86 e5                                      str r4, [r6]
0061fb3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061fb40  07 00 a0 e1                                      mov r0, r7
0061fb44  c7 28 01 eb                                      bl #0x669e68
0061fb48  06 30 a0 e1                                      mov r3, r6
0061fb4c  04 40 83 e4                                      str r4, [r3], #4
0061fb50  04 20 90 e5                                      ldr r2, [r0, #4]
0061fb54  04 20 86 e5                                      str r2, [r6, #4]
0061fb58  08 20 90 e5                                      ldr r2, [r0, #8]
0061fb5c  04 20 83 e5                                      str r2, [r3, #4]
0061fb60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061fb78, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionXExIfEEfLi3ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061fb78  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061fb7c  01 40 a0 e1                                      mov r4, r1
0061fb80  00 10 a0 e3                                      mov r1, #0
0061fb84  02 50 a0 e1                                      mov r5, r2
0061fb88  03 90 a0 e1                                      mov sb, r3
0061fb8c  00 80 a0 e1                                      mov r8, r0
0061fb90  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061fb94  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061fb98  a1 28 01 eb                                      bl #0x669e24
0061fb9c  04 60 90 e5                                      ldr r6, [r0, #4]
0061fba0  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061fba4  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061fba8  0b 10 a0 e1                                      mov r1, fp
0061fbac  fe b9 f3 eb                                      bl #0x30e3ac
0061fbb0  0b 10 a0 e1                                      mov r1, fp
0061fbb4  00 40 a0 e1                                      mov r4, r0
0061fbb8  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061fbbc  fa b9 f3 eb                                      bl #0x30e3ac
0061fbc0  00 60 a0 e1                                      mov r6, r0
0061fbc4  08 00 a0 e1                                      mov r0, r8
0061fbc8  a1 28 01 eb                                      bl #0x669e54
0061fbcc  00 00 50 e3                                      cmp r0, #0
0061fbd0  0a 00 00 1a                                      bne #0x61fc00
0061fbd4  04 10 a0 e1                                      mov r1, r4
0061fbd8  06 00 a0 e1                                      mov r0, r6
0061fbdc  f2 b9 f3 eb                                      bl #0x30e3ac
0061fbe0  00 10 a0 e1                                      mov r1, r0
0061fbe4  0a 00 a0 e1                                      mov r0, sl
0061fbe8  5f bc f3 eb                                      bl #0x30ed6c
0061fbec  00 10 a0 e1                                      mov r1, r0
0061fbf0  04 00 a0 e1                                      mov r0, r4
0061fbf4  ea bb f3 eb                                      bl #0x30eba4
0061fbf8  00 00 87 e5                                      str r0, [r7]
0061fbfc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061fc00  08 00 a0 e1                                      mov r0, r8
0061fc04  97 28 01 eb                                      bl #0x669e68
0061fc08  04 10 a0 e1                                      mov r1, r4
0061fc0c  00 50 a0 e1                                      mov r5, r0
0061fc10  06 00 a0 e1                                      mov r0, r6
0061fc14  e4 b9 f3 eb                                      bl #0x30e3ac
0061fc18  00 10 a0 e1                                      mov r1, r0
0061fc1c  0a 00 a0 e1                                      mov r0, sl
0061fc20  51 bc f3 eb                                      bl #0x30ed6c
0061fc24  00 10 a0 e1                                      mov r1, r0
0061fc28  04 00 a0 e1                                      mov r0, r4
0061fc2c  dc bb f3 eb                                      bl #0x30eba4
0061fc30  07 30 a0 e1                                      mov r3, r7
0061fc34  04 00 83 e4                                      str r0, [r3], #4
0061fc38  04 20 95 e5                                      ldr r2, [r5, #4]
0061fc3c  04 20 87 e5                                      str r2, [r7, #4]
0061fc40  08 20 95 e5                                      ldr r2, [r5, #8]
0061fc44  04 20 83 e5                                      str r2, [r3, #4]
0061fc48  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
