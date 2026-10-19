; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006183c0, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIcEEcE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
006183c0  30 40 2d e9                                      push {r4, r5, lr}
006183c4  14 d0 4d e2                                      sub sp, sp, #0x14
006183c8  00 30 a0 e3                                      mov r3, #0
006183cc  02 50 a0 e1                                      mov r5, r2
006183d0  0d 20 a0 e1                                      mov r2, sp
006183d4  08 30 8d e5                                      str r3, [sp, #8]
006183d8  00 30 8d e5                                      str r3, [sp]
006183dc  04 30 8d e5                                      str r3, [sp, #4]
006183e0  17 f2 ff eb                                      bl #0x614c44
006183e4  05 00 a0 e1                                      mov r0, r5
006183e8  0d 20 a0 e1                                      mov r2, sp
006183ec  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006183f0  0d 40 a0 e1                                      mov r4, sp
006183f4  70 d2 ff eb                                      bl #0x60cdbc
006183f8  14 d0 8d e2                                      add sp, sp, #0x14
006183fc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00618410, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIcEEcE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00618410  10 40 2d e9                                      push {r4, lr}
00618414  18 d0 4d e2                                      sub sp, sp, #0x18
00618418  00 c0 a0 e3                                      mov ip, #0
0061841c  08 40 8d e2                                      add r4, sp, #8
00618420  10 c0 8d e5                                      str ip, [sp, #0x10]
00618424  08 c0 8d e5                                      str ip, [sp, #8]
00618428  0c c0 8d e5                                      str ip, [sp, #0xc]
0061842c  00 40 8d e5                                      str r4, [sp]
00618430  2c f2 ff eb                                      bl #0x614ce8
00618434  20 00 9d e5                                      ldr r0, [sp, #0x20]
00618438  04 20 a0 e1                                      mov r2, r4
0061843c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00618440  5d d2 ff eb                                      bl #0x60cdbc
00618444  18 d0 8d e2                                      add sp, sp, #0x18
00618448  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006184d8, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIcEEcE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
006184d8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006184dc  54 d0 4d e2                                      sub sp, sp, #0x54
006184e0  40 60 8d e2                                      add r6, sp, #0x40
006184e4  00 40 a0 e3                                      mov r4, #0
006184e8  00 70 a0 e1                                      mov r7, r0
006184ec  01 80 a0 e1                                      mov r8, r1
006184f0  30 50 8d e2                                      add r5, sp, #0x30
006184f4  02 10 a0 e1                                      mov r1, r2
006184f8  06 20 a0 e1                                      mov r2, r6
006184fc  03 a0 a0 e1                                      mov sl, r3
00618500  40 40 8d e5                                      str r4, [sp, #0x40]
00618504  44 40 8d e5                                      str r4, [sp, #0x44]
00618508  48 40 8d e5                                      str r4, [sp, #0x48]
0061850c  30 40 8d e5                                      str r4, [sp, #0x30]
00618510  34 40 8d e5                                      str r4, [sp, #0x34]
00618514  38 40 8d e5                                      str r4, [sp, #0x38]
00618518  c9 f1 ff eb                                      bl #0x614c44
0061851c  07 00 a0 e1                                      mov r0, r7
00618520  08 10 a0 e1                                      mov r1, r8
00618524  05 20 a0 e1                                      mov r2, r5
00618528  20 70 8d e2                                      add r7, sp, #0x20
0061852c  c4 f1 ff eb                                      bl #0x614c44
00618530  fe 35 a0 e3                                      mov r3, #0x3f800000
00618534  06 20 a0 e1                                      mov r2, r6
00618538  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0061853c  10 60 8d e2                                      add r6, sp, #0x10
00618540  07 00 a0 e1                                      mov r0, r7
00618544  1c 30 8d e5                                      str r3, [sp, #0x1c]
00618548  2c 30 8d e5                                      str r3, [sp, #0x2c]
0061854c  18 40 8d e5                                      str r4, [sp, #0x18]
00618550  20 40 8d e5                                      str r4, [sp, #0x20]
00618554  24 40 8d e5                                      str r4, [sp, #0x24]
00618558  28 40 8d e5                                      str r4, [sp, #0x28]
0061855c  10 40 8d e5                                      str r4, [sp, #0x10]
00618560  14 40 8d e5                                      str r4, [sp, #0x14]
00618564  14 d2 ff eb                                      bl #0x60cdbc
00618568  05 20 a0 e1                                      mov r2, r5
0061856c  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00618570  06 00 a0 e1                                      mov r0, r6
00618574  10 d2 ff eb                                      bl #0x60cdbc
00618578  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0061857c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00618580  18 30 9d e5                                      ldr r3, [sp, #0x18]
00618584  02 e1 8e e2                                      add lr, lr, #0x80000000
00618588  02 c1 8c e2                                      add ip, ip, #0x80000000
0061858c  02 31 83 e2                                      add r3, r3, #0x80000000
00618590  06 10 a0 e1                                      mov r1, r6
00618594  07 20 a0 e1                                      mov r2, r7
00618598  0d 00 a0 e1                                      mov r0, sp
0061859c  18 30 8d e5                                      str r3, [sp, #0x18]
006185a0  10 e0 8d e5                                      str lr, [sp, #0x10]
006185a4  14 c0 8d e5                                      str ip, [sp, #0x14]
006185a8  e1 d5 ff eb                                      bl #0x60dd34
006185ac  04 10 9d e5                                      ldr r1, [sp, #4]
006185b0  08 30 9d e5                                      ldr r3, [sp, #8]
006185b4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006185b8  00 00 9d e5                                      ldr r0, [sp]
006185bc  04 10 8a e5                                      str r1, [sl, #4]
006185c0  0c 20 8a e5                                      str r2, [sl, #0xc]
006185c4  00 00 8a e5                                      str r0, [sl]
006185c8  08 30 8a e5                                      str r3, [sl, #8]
006185cc  54 d0 8d e2                                      add sp, sp, #0x54
006185d0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x006185e8, declared_size=384, range_size=384, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIcEEcE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, char>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006185e8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006185ec  98 d0 4d e2                                      sub sp, sp, #0x98
006185f0  88 70 8d e2                                      add r7, sp, #0x88
006185f4  00 40 a0 e3                                      mov r4, #0
006185f8  03 80 a0 e1                                      mov r8, r3
006185fc  00 60 a0 e1                                      mov r6, r0
00618600  01 90 a0 e1                                      mov sb, r1
00618604  78 a0 8d e2                                      add sl, sp, #0x78
00618608  02 10 a0 e1                                      mov r1, r2
0061860c  07 20 a0 e1                                      mov r2, r7
00618610  bc 50 9d e5                                      ldr r5, [sp, #0xbc]
00618614  88 40 8d e5                                      str r4, [sp, #0x88]
00618618  8c 40 8d e5                                      str r4, [sp, #0x8c]
0061861c  90 40 8d e5                                      str r4, [sp, #0x90]
00618620  78 40 8d e5                                      str r4, [sp, #0x78]
00618624  7c 40 8d e5                                      str r4, [sp, #0x7c]
00618628  80 40 8d e5                                      str r4, [sp, #0x80]
0061862c  68 40 8d e5                                      str r4, [sp, #0x68]
00618630  6c 40 8d e5                                      str r4, [sp, #0x6c]
00618634  70 40 8d e5                                      str r4, [sp, #0x70]
00618638  81 f1 ff eb                                      bl #0x614c44
0061863c  08 10 a0 e1                                      mov r1, r8
00618640  06 00 a0 e1                                      mov r0, r6
00618644  0a 20 a0 e1                                      mov r2, sl
00618648  68 80 8d e2                                      add r8, sp, #0x68
0061864c  7c f1 ff eb                                      bl #0x614c44
00618650  06 00 a0 e1                                      mov r0, r6
00618654  09 10 a0 e1                                      mov r1, sb
00618658  58 60 8d e2                                      add r6, sp, #0x58
0061865c  08 20 a0 e1                                      mov r2, r8
00618660  77 f1 ff eb                                      bl #0x614c44
00618664  fe 35 a0 e3                                      mov r3, #0x3f800000
00618668  07 20 a0 e1                                      mov r2, r7
0061866c  94 10 9d e5                                      ldr r1, [sp, #0x94]
00618670  48 70 8d e2                                      add r7, sp, #0x48
00618674  06 00 a0 e1                                      mov r0, r6
00618678  34 30 8d e5                                      str r3, [sp, #0x34]
0061867c  64 30 8d e5                                      str r3, [sp, #0x64]
00618680  54 30 8d e5                                      str r3, [sp, #0x54]
00618684  44 30 8d e5                                      str r3, [sp, #0x44]
00618688  30 40 8d e5                                      str r4, [sp, #0x30]
0061868c  58 40 8d e5                                      str r4, [sp, #0x58]
00618690  5c 40 8d e5                                      str r4, [sp, #0x5c]
00618694  60 40 8d e5                                      str r4, [sp, #0x60]
00618698  48 40 8d e5                                      str r4, [sp, #0x48]
0061869c  4c 40 8d e5                                      str r4, [sp, #0x4c]
006186a0  50 40 8d e5                                      str r4, [sp, #0x50]
006186a4  38 40 8d e5                                      str r4, [sp, #0x38]
006186a8  3c 40 8d e5                                      str r4, [sp, #0x3c]
006186ac  40 40 8d e5                                      str r4, [sp, #0x40]
006186b0  28 40 8d e5                                      str r4, [sp, #0x28]
006186b4  2c 40 8d e5                                      str r4, [sp, #0x2c]
006186b8  bf d1 ff eb                                      bl #0x60cdbc
006186bc  0a 20 a0 e1                                      mov r2, sl
006186c0  84 10 9d e5                                      ldr r1, [sp, #0x84]
006186c4  07 00 a0 e1                                      mov r0, r7
006186c8  bb d1 ff eb                                      bl #0x60cdbc
006186cc  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
006186d0  04 c0 8d e2                                      add ip, sp, #4
006186d4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
006186d8  b8 c0 9d e5                                      ldr ip, [sp, #0xb8]
006186dc  0e 00 96 e8                                      ldm r6, {r1, r2, r3}
006186e0  38 40 8d e2                                      add r4, sp, #0x38
006186e4  14 c0 8d e5                                      str ip, [sp, #0x14]
006186e8  64 c0 9d e5                                      ldr ip, [sp, #0x64]
006186ec  28 60 8d e2                                      add r6, sp, #0x28
006186f0  04 00 a0 e1                                      mov r0, r4
006186f4  00 c0 8d e5                                      str ip, [sp]
006186f8  80 e9 ff eb                                      bl #0x612d00
006186fc  08 20 a0 e1                                      mov r2, r8
00618700  74 10 9d e5                                      ldr r1, [sp, #0x74]
00618704  06 00 a0 e1                                      mov r0, r6
00618708  ab d1 ff eb                                      bl #0x60cdbc
0061870c  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00618710  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00618714  30 30 9d e5                                      ldr r3, [sp, #0x30]
00618718  02 e1 8e e2                                      add lr, lr, #0x80000000
0061871c  02 c1 8c e2                                      add ip, ip, #0x80000000
00618720  02 31 83 e2                                      add r3, r3, #0x80000000
00618724  06 10 a0 e1                                      mov r1, r6
00618728  04 20 a0 e1                                      mov r2, r4
0061872c  18 00 8d e2                                      add r0, sp, #0x18
00618730  30 30 8d e5                                      str r3, [sp, #0x30]
00618734  28 e0 8d e5                                      str lr, [sp, #0x28]
00618738  2c c0 8d e5                                      str ip, [sp, #0x2c]
0061873c  7c d5 ff eb                                      bl #0x60dd34
00618740  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00618744  20 30 9d e5                                      ldr r3, [sp, #0x20]
00618748  24 20 9d e5                                      ldr r2, [sp, #0x24]
0061874c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00618750  04 10 85 e5                                      str r1, [r5, #4]
00618754  0c 20 85 e5                                      str r2, [r5, #0xc]
00618758  00 00 85 e5                                      str r0, [r5]
0061875c  08 30 85 e5                                      str r3, [r5, #8]
00618760  98 d0 8d e2                                      add sp, sp, #0x98
00618764  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
