; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00613294, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_25CSceneNodeQuaternionMixinIfEEfLi4ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00613294  70 40 2d e9                                      push {r4, r5, r6, lr}
00613298  01 40 a0 e1                                      mov r4, r1
0061329c  08 d0 4d e2                                      sub sp, sp, #8
006132a0  00 10 a0 e3                                      mov r1, #0
006132a4  03 50 a0 e1                                      mov r5, r3
006132a8  dd 5a 01 eb                                      bl #0x669e24
006132ac  05 10 a0 e1                                      mov r1, r5
006132b0  00 60 a0 e1                                      mov r6, r0
006132b4  fe 05 a0 e3                                      mov r0, #0x3f800000
006132b8  3b ec f3 eb                                      bl #0x30e3ac
006132bc  04 50 8d e5                                      str r5, [sp, #4]
006132c0  00 00 8d e5                                      str r0, [sp]
006132c4  04 00 96 e5                                      ldr r0, [r6, #4]
006132c8  18 30 9d e5                                      ldr r3, [sp, #0x18]
006132cc  0d 10 a0 e1                                      mov r1, sp
006132d0  04 02 80 e0                                      add r0, r0, r4, lsl #4
006132d4  02 20 a0 e3                                      mov r2, #2
006132d8  7d ff ff eb                                      bl #0x6130d4
006132dc  08 d0 8d e2                                      add sp, sp, #8
006132e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
