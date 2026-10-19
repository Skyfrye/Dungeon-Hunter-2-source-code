; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00613a10, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_25CSceneNodeQuaternionMixinIcEEfLi4ENS1_15SUseDefaultLerpIcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00613a10  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00613a14  20 d0 4d e2                                      sub sp, sp, #0x20
00613a18  01 40 a0 e1                                      mov r4, r1
00613a1c  00 10 a0 e1                                      mov r1, r0
00613a20  14 00 8d e2                                      add r0, sp, #0x14
00613a24  02 90 a0 e1                                      mov sb, r2
00613a28  e9 ff ff eb                                      bl #0x6139d4
00613a2c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00613a30  18 a0 9d e5                                      ldr sl, [sp, #0x18]
00613a34  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
00613a38  04 30 93 e5                                      ldr r3, [r3, #4]
00613a3c  00 50 a0 e3                                      mov r5, #0
00613a40  05 60 a0 e1                                      mov r6, r5
00613a44  04 41 83 e0                                      add r4, r3, r4, lsl #2
00613a48  04 70 8d e2                                      add r7, sp, #4
00613a4c  d6 00 94 e1                                      ldrsb r0, [r4, r6]
00613a50  c3 eb f3 eb                                      bl #0x30e964
00613a54  05 10 9a e7                                      ldr r1, [sl, r5]
00613a58  c3 ec f3 eb                                      bl #0x30ed6c
00613a5c  05 10 98 e7                                      ldr r1, [r8, r5]
00613a60  4f ec f3 eb                                      bl #0x30eba4
00613a64  01 60 86 e2                                      add r6, r6, #1
00613a68  04 00 56 e3                                      cmp r6, #4
00613a6c  05 00 87 e7                                      str r0, [r7, r5]
00613a70  04 50 85 e2                                      add r5, r5, #4
00613a74  f4 ff ff 1a                                      bne #0x613a4c
00613a78  04 c0 9d e5                                      ldr ip, [sp, #4]
00613a7c  08 00 9d e5                                      ldr r0, [sp, #8]
00613a80  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00613a84  10 10 9d e5                                      ldr r1, [sp, #0x10]
00613a88  09 30 a0 e1                                      mov r3, sb
00613a8c  04 c0 83 e4                                      str ip, [r3], #4
00613a90  04 00 89 e5                                      str r0, [sb, #4]
00613a94  08 10 83 e5                                      str r1, [r3, #8]
00613a98  04 20 83 e5                                      str r2, [r3, #4]
00613a9c  20 d0 8d e2                                      add sp, sp, #0x20
00613aa0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00613cc8, declared_size=196, range_size=196, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_25CSceneNodeQuaternionMixinIcEEfLi4ENS1_15SUseDefaultLerpIcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<char>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00613cc8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00613ccc  3c d0 4d e2                                      sub sp, sp, #0x3c
00613cd0  03 40 a0 e1                                      mov r4, r3
00613cd4  01 50 a0 e1                                      mov r5, r1
00613cd8  00 10 a0 e1                                      mov r1, r0
00613cdc  24 00 8d e2                                      add r0, sp, #0x24
00613ce0  02 b0 a0 e1                                      mov fp, r2
00613ce4  3a ff ff eb                                      bl #0x6139d4
00613ce8  04 10 a0 e1                                      mov r1, r4
00613cec  fe 05 a0 e3                                      mov r0, #0x3f800000
00613cf0  ad e9 f3 eb                                      bl #0x30e3ac
00613cf4  24 30 9d e5                                      ldr r3, [sp, #0x24]
00613cf8  34 40 8d e5                                      str r4, [sp, #0x34]
00613cfc  30 00 8d e5                                      str r0, [sp, #0x30]
00613d00  04 30 93 e5                                      ldr r3, [r3, #4]
00613d04  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00613d08  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00613d0c  04 90 8d e2                                      add sb, sp, #4
00613d10  00 40 a0 e3                                      mov r4, #0
00613d14  0b b1 83 e0                                      add fp, r3, fp, lsl #2
00613d18  05 51 83 e0                                      add r5, r3, r5, lsl #2
00613d1c  09 70 a0 e1                                      mov r7, sb
00613d20  04 60 a0 e1                                      mov r6, r4
00613d24  d6 00 95 e1                                      ldrsb r0, [r5, r6]
00613d28  0d eb f3 eb                                      bl #0x30e964
00613d2c  04 10 9a e7                                      ldr r1, [sl, r4]
00613d30  0d ec f3 eb                                      bl #0x30ed6c
00613d34  04 10 98 e7                                      ldr r1, [r8, r4]
00613d38  99 eb f3 eb                                      bl #0x30eba4
00613d3c  04 00 89 e7                                      str r0, [sb, r4]
00613d40  d6 00 9b e1                                      ldrsb r0, [fp, r6]
00613d44  06 eb f3 eb                                      bl #0x30e964
00613d48  04 10 9a e7                                      ldr r1, [sl, r4]
00613d4c  06 ec f3 eb                                      bl #0x30ed6c
00613d50  04 10 98 e7                                      ldr r1, [r8, r4]
00613d54  92 eb f3 eb                                      bl #0x30eba4
00613d58  01 60 86 e2                                      add r6, r6, #1
00613d5c  04 00 56 e3                                      cmp r6, #4
00613d60  10 00 87 e5                                      str r0, [r7, #0x10]
00613d64  04 40 84 e2                                      add r4, r4, #4
00613d68  04 70 87 e2                                      add r7, r7, #4
00613d6c  ec ff ff 1a                                      bne #0x613d24
00613d70  09 00 a0 e1                                      mov r0, sb
00613d74  60 30 9d e5                                      ldr r3, [sp, #0x60]
00613d78  30 10 8d e2                                      add r1, sp, #0x30
00613d7c  02 20 a0 e3                                      mov r2, #2
00613d80  d3 fc ff eb                                      bl #0x6130d4
00613d84  3c d0 8d e2                                      add sp, sp, #0x3c
00613d88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
