; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006136e0, declared_size=188, range_size=188, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>, short>
; alias: _ZN6glitch7collada15animation_track22CInterpreterQuaternionINS1_25CSceneNodeQuaternionMixinIsEEsE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>, short>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
006136e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006136e4  30 d0 4d e2                                      sub sp, sp, #0x30
006136e8  20 40 8d e2                                      add r4, sp, #0x20
006136ec  00 c0 a0 e3                                      mov ip, #0
006136f0  fe e5 a0 e3                                      mov lr, #0x3f800000
006136f4  01 80 a0 e1                                      mov r8, r1
006136f8  00 60 a0 e1                                      mov r6, r0
006136fc  02 10 a0 e1                                      mov r1, r2
00613700  10 50 8d e2                                      add r5, sp, #0x10
00613704  04 20 a0 e1                                      mov r2, r4
00613708  03 70 a0 e1                                      mov r7, r3
0061370c  18 c0 8d e5                                      str ip, [sp, #0x18]
00613710  1c e0 8d e5                                      str lr, [sp, #0x1c]
00613714  20 c0 8d e5                                      str ip, [sp, #0x20]
00613718  24 c0 8d e5                                      str ip, [sp, #0x24]
0061371c  28 c0 8d e5                                      str ip, [sp, #0x28]
00613720  2c e0 8d e5                                      str lr, [sp, #0x2c]
00613724  10 c0 8d e5                                      str ip, [sp, #0x10]
00613728  14 c0 8d e5                                      str ip, [sp, #0x14]
0061372c  c2 ff ff eb                                      bl #0x61363c
00613730  06 00 a0 e1                                      mov r0, r6
00613734  08 10 a0 e1                                      mov r1, r8
00613738  05 20 a0 e1                                      mov r2, r5
0061373c  be ff ff eb                                      bl #0x61363c
00613740  10 e0 9d e5                                      ldr lr, [sp, #0x10]
00613744  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00613748  18 30 9d e5                                      ldr r3, [sp, #0x18]
0061374c  02 e1 8e e2                                      add lr, lr, #0x80000000
00613750  02 c1 8c e2                                      add ip, ip, #0x80000000
00613754  02 31 83 e2                                      add r3, r3, #0x80000000
00613758  05 10 a0 e1                                      mov r1, r5
0061375c  04 20 a0 e1                                      mov r2, r4
00613760  0d 00 a0 e1                                      mov r0, sp
00613764  18 30 8d e5                                      str r3, [sp, #0x18]
00613768  10 e0 8d e5                                      str lr, [sp, #0x10]
0061376c  14 c0 8d e5                                      str ip, [sp, #0x14]
00613770  6f e9 ff eb                                      bl #0x60dd34
00613774  04 10 9d e5                                      ldr r1, [sp, #4]
00613778  08 30 9d e5                                      ldr r3, [sp, #8]
0061377c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00613780  00 00 9d e5                                      ldr r0, [sp]
00613784  04 10 87 e5                                      str r1, [r7, #4]
00613788  0c 20 87 e5                                      str r2, [r7, #0xc]
0061378c  00 00 87 e5                                      str r0, [r7]
00613790  08 30 87 e5                                      str r3, [r7, #8]
00613794  30 d0 8d e2                                      add sp, sp, #0x30
00613798  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006137b0, declared_size=288, range_size=288, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>, short>
; alias: _ZN6glitch7collada15animation_track22CInterpreterQuaternionINS1_25CSceneNodeQuaternionMixinIsEEsE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>, short>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006137b0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006137b4  6c d0 4d e2                                      sub sp, sp, #0x6c
006137b8  58 50 8d e2                                      add r5, sp, #0x58
006137bc  00 c0 a0 e3                                      mov ip, #0
006137c0  fe e5 a0 e3                                      mov lr, #0x3f800000
006137c4  03 60 a0 e1                                      mov r6, r3
006137c8  00 80 a0 e1                                      mov r8, r0
006137cc  48 70 8d e2                                      add r7, sp, #0x48
006137d0  01 a0 a0 e1                                      mov sl, r1
006137d4  02 10 a0 e1                                      mov r1, r2
006137d8  05 20 a0 e1                                      mov r2, r5
006137dc  34 e0 8d e5                                      str lr, [sp, #0x34]
006137e0  64 e0 8d e5                                      str lr, [sp, #0x64]
006137e4  54 e0 8d e5                                      str lr, [sp, #0x54]
006137e8  44 e0 8d e5                                      str lr, [sp, #0x44]
006137ec  8c 40 9d e5                                      ldr r4, [sp, #0x8c]
006137f0  30 c0 8d e5                                      str ip, [sp, #0x30]
006137f4  58 c0 8d e5                                      str ip, [sp, #0x58]
006137f8  5c c0 8d e5                                      str ip, [sp, #0x5c]
006137fc  60 c0 8d e5                                      str ip, [sp, #0x60]
00613800  48 c0 8d e5                                      str ip, [sp, #0x48]
00613804  4c c0 8d e5                                      str ip, [sp, #0x4c]
00613808  50 c0 8d e5                                      str ip, [sp, #0x50]
0061380c  38 c0 8d e5                                      str ip, [sp, #0x38]
00613810  3c c0 8d e5                                      str ip, [sp, #0x3c]
00613814  40 c0 8d e5                                      str ip, [sp, #0x40]
00613818  28 c0 8d e5                                      str ip, [sp, #0x28]
0061381c  2c c0 8d e5                                      str ip, [sp, #0x2c]
00613820  85 ff ff eb                                      bl #0x61363c
00613824  06 10 a0 e1                                      mov r1, r6
00613828  07 20 a0 e1                                      mov r2, r7
0061382c  08 00 a0 e1                                      mov r0, r8
00613830  28 60 8d e2                                      add r6, sp, #0x28
00613834  80 ff ff eb                                      bl #0x61363c
00613838  08 00 a0 e1                                      mov r0, r8
0061383c  0a 10 a0 e1                                      mov r1, sl
00613840  06 20 a0 e1                                      mov r2, r6
00613844  7c ff ff eb                                      bl #0x61363c
00613848  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
0061384c  04 c0 8d e2                                      add ip, sp, #4
00613850  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00613854  88 c0 9d e5                                      ldr ip, [sp, #0x88]
00613858  0e 00 95 e8                                      ldm r5, {r1, r2, r3}
0061385c  38 70 8d e2                                      add r7, sp, #0x38
00613860  14 c0 8d e5                                      str ip, [sp, #0x14]
00613864  64 c0 9d e5                                      ldr ip, [sp, #0x64]
00613868  07 00 a0 e1                                      mov r0, r7
0061386c  00 c0 8d e5                                      str ip, [sp]
00613870  22 fd ff eb                                      bl #0x612d00
00613874  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00613878  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0061387c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00613880  02 e1 8e e2                                      add lr, lr, #0x80000000
00613884  02 c1 8c e2                                      add ip, ip, #0x80000000
00613888  02 31 83 e2                                      add r3, r3, #0x80000000
0061388c  06 10 a0 e1                                      mov r1, r6
00613890  07 20 a0 e1                                      mov r2, r7
00613894  18 00 8d e2                                      add r0, sp, #0x18
00613898  30 30 8d e5                                      str r3, [sp, #0x30]
0061389c  28 e0 8d e5                                      str lr, [sp, #0x28]
006138a0  2c c0 8d e5                                      str ip, [sp, #0x2c]
006138a4  22 e9 ff eb                                      bl #0x60dd34
006138a8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006138ac  20 30 9d e5                                      ldr r3, [sp, #0x20]
006138b0  24 20 9d e5                                      ldr r2, [sp, #0x24]
006138b4  18 00 9d e5                                      ldr r0, [sp, #0x18]
006138b8  04 10 84 e5                                      str r1, [r4, #4]
006138bc  0c 20 84 e5                                      str r2, [r4, #0xc]
006138c0  00 00 84 e5                                      str r0, [r4]
006138c4  08 30 84 e5                                      str r3, [r4, #8]
006138c8  6c d0 8d e2                                      add sp, sp, #0x6c
006138cc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
