; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061f51c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_30CSceneNodeQuaternionAngleMixinIfEEfLi4ENS1_17SUseDefaultValuesILi3EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061f51c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061f520  01 40 a0 e1                                      mov r4, r1
0061f524  00 10 a0 e3                                      mov r1, #0
0061f528  02 60 a0 e1                                      mov r6, r2
0061f52c  00 50 a0 e1                                      mov r5, r0
0061f530  3b 2a 01 eb                                      bl #0x669e24
0061f534  04 70 90 e5                                      ldr r7, [r0, #4]
0061f538  05 00 a0 e1                                      mov r0, r5
0061f53c  44 2a 01 eb                                      bl #0x669e54
0061f540  00 00 50 e3                                      cmp r0, #0
0061f544  02 00 00 1a                                      bne #0x61f554
0061f548  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061f54c  00 30 86 e5                                      str r3, [r6]
0061f550  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061f554  05 00 a0 e1                                      mov r0, r5
0061f558  42 2a 01 eb                                      bl #0x669e68
0061f55c  00 00 50 e3                                      cmp r0, #0
0061f560  f8 ff ff 0a                                      beq #0x61f548
0061f564  05 00 a0 e1                                      mov r0, r5
0061f568  3e 2a 01 eb                                      bl #0x669e68
0061f56c  00 20 90 e5                                      ldr r2, [r0]
0061f570  06 30 a0 e1                                      mov r3, r6
0061f574  04 20 83 e4                                      str r2, [r3], #4
0061f578  04 20 90 e5                                      ldr r2, [r0, #4]
0061f57c  04 20 86 e5                                      str r2, [r6, #4]
0061f580  08 20 90 e5                                      ldr r2, [r0, #8]
0061f584  04 20 83 e5                                      str r2, [r3, #4]
0061f588  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061f58c  08 20 83 e5                                      str r2, [r3, #8]
0061f590  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061f898, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_30CSceneNodeQuaternionAngleMixinIfEEfLi4ENS1_17SUseDefaultValuesILi3EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061f898  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061f89c  01 40 a0 e1                                      mov r4, r1
0061f8a0  00 10 a0 e3                                      mov r1, #0
0061f8a4  02 50 a0 e1                                      mov r5, r2
0061f8a8  03 80 a0 e1                                      mov r8, r3
0061f8ac  00 70 a0 e1                                      mov r7, r0
0061f8b0  20 60 9d e5                                      ldr r6, [sp, #0x20]
0061f8b4  5a 29 01 eb                                      bl #0x669e24
0061f8b8  04 90 90 e5                                      ldr sb, [r0, #4]
0061f8bc  07 00 a0 e1                                      mov r0, r7
0061f8c0  63 29 01 eb                                      bl #0x669e54
0061f8c4  00 00 50 e3                                      cmp r0, #0
0061f8c8  13 00 00 0a                                      beq #0x61f91c
0061f8cc  00 a0 a0 e3                                      mov sl, #0
0061f8d0  07 00 a0 e1                                      mov r0, r7
0061f8d4  63 29 01 eb                                      bl #0x669e68
0061f8d8  0a 30 90 e7                                      ldr r3, [r0, sl]
0061f8dc  0a 30 86 e7                                      str r3, [r6, sl]
0061f8e0  04 a0 8a e2                                      add sl, sl, #4
0061f8e4  0c 00 5a e3                                      cmp sl, #0xc
0061f8e8  f8 ff ff 1a                                      bne #0x61f8d0
0061f8ec  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061f8f0  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061f8f4  04 10 a0 e1                                      mov r1, r4
0061f8f8  ab ba f3 eb                                      bl #0x30e3ac
0061f8fc  00 10 a0 e1                                      mov r1, r0
0061f900  08 00 a0 e1                                      mov r0, r8
0061f904  18 bd f3 eb                                      bl #0x30ed6c
0061f908  00 10 a0 e1                                      mov r1, r0
0061f90c  04 00 a0 e1                                      mov r0, r4
0061f910  a3 bc f3 eb                                      bl #0x30eba4
0061f914  0c 00 86 e5                                      str r0, [r6, #0xc]
0061f918  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061f91c  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061f920  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061f924  04 10 a0 e1                                      mov r1, r4
0061f928  9f ba f3 eb                                      bl #0x30e3ac
0061f92c  00 10 a0 e1                                      mov r1, r0
0061f930  08 00 a0 e1                                      mov r0, r8
0061f934  0c bd f3 eb                                      bl #0x30ed6c
0061f938  00 10 a0 e1                                      mov r1, r0
0061f93c  04 00 a0 e1                                      mov r0, r4
0061f940  97 bc f3 eb                                      bl #0x30eba4
0061f944  00 00 86 e5                                      str r0, [r6]
0061f948  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
