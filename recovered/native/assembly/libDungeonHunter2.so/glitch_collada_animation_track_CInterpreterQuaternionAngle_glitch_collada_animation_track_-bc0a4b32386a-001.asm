; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061f594, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIfEEfE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061f594  30 40 2d e9                                      push {r4, r5, lr}
0061f598  14 d0 4d e2                                      sub sp, sp, #0x14
0061f59c  00 30 a0 e3                                      mov r3, #0
0061f5a0  02 50 a0 e1                                      mov r5, r2
0061f5a4  0d 20 a0 e1                                      mov r2, sp
0061f5a8  08 30 8d e5                                      str r3, [sp, #8]
0061f5ac  00 30 8d e5                                      str r3, [sp]
0061f5b0  04 30 8d e5                                      str r3, [sp, #4]
0061f5b4  d8 ff ff eb                                      bl #0x61f51c
0061f5b8  05 00 a0 e1                                      mov r0, r5
0061f5bc  0d 20 a0 e1                                      mov r2, sp
0061f5c0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0061f5c4  0d 40 a0 e1                                      mov r4, sp
0061f5c8  fb b5 ff eb                                      bl #0x60cdbc
0061f5cc  14 d0 8d e2                                      add sp, sp, #0x14
0061f5d0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0061f5e4, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIfEEfE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061f5e4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0061f5e8  54 d0 4d e2                                      sub sp, sp, #0x54
0061f5ec  40 60 8d e2                                      add r6, sp, #0x40
0061f5f0  00 40 a0 e3                                      mov r4, #0
0061f5f4  00 70 a0 e1                                      mov r7, r0
0061f5f8  01 80 a0 e1                                      mov r8, r1
0061f5fc  30 50 8d e2                                      add r5, sp, #0x30
0061f600  02 10 a0 e1                                      mov r1, r2
0061f604  06 20 a0 e1                                      mov r2, r6
0061f608  03 a0 a0 e1                                      mov sl, r3
0061f60c  40 40 8d e5                                      str r4, [sp, #0x40]
0061f610  44 40 8d e5                                      str r4, [sp, #0x44]
0061f614  48 40 8d e5                                      str r4, [sp, #0x48]
0061f618  30 40 8d e5                                      str r4, [sp, #0x30]
0061f61c  34 40 8d e5                                      str r4, [sp, #0x34]
0061f620  38 40 8d e5                                      str r4, [sp, #0x38]
0061f624  bc ff ff eb                                      bl #0x61f51c
0061f628  07 00 a0 e1                                      mov r0, r7
0061f62c  08 10 a0 e1                                      mov r1, r8
0061f630  05 20 a0 e1                                      mov r2, r5
0061f634  20 70 8d e2                                      add r7, sp, #0x20
0061f638  b7 ff ff eb                                      bl #0x61f51c
0061f63c  fe 35 a0 e3                                      mov r3, #0x3f800000
0061f640  06 20 a0 e1                                      mov r2, r6
0061f644  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0061f648  10 60 8d e2                                      add r6, sp, #0x10
0061f64c  07 00 a0 e1                                      mov r0, r7
0061f650  1c 30 8d e5                                      str r3, [sp, #0x1c]
0061f654  2c 30 8d e5                                      str r3, [sp, #0x2c]
0061f658  18 40 8d e5                                      str r4, [sp, #0x18]
0061f65c  20 40 8d e5                                      str r4, [sp, #0x20]
0061f660  24 40 8d e5                                      str r4, [sp, #0x24]
0061f664  28 40 8d e5                                      str r4, [sp, #0x28]
0061f668  10 40 8d e5                                      str r4, [sp, #0x10]
0061f66c  14 40 8d e5                                      str r4, [sp, #0x14]
0061f670  d1 b5 ff eb                                      bl #0x60cdbc
0061f674  05 20 a0 e1                                      mov r2, r5
0061f678  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0061f67c  06 00 a0 e1                                      mov r0, r6
0061f680  cd b5 ff eb                                      bl #0x60cdbc
0061f684  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0061f688  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0061f68c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0061f690  02 e1 8e e2                                      add lr, lr, #0x80000000
0061f694  02 c1 8c e2                                      add ip, ip, #0x80000000
0061f698  02 31 83 e2                                      add r3, r3, #0x80000000
0061f69c  06 10 a0 e1                                      mov r1, r6
0061f6a0  07 20 a0 e1                                      mov r2, r7
0061f6a4  0d 00 a0 e1                                      mov r0, sp
0061f6a8  18 30 8d e5                                      str r3, [sp, #0x18]
0061f6ac  10 e0 8d e5                                      str lr, [sp, #0x10]
0061f6b0  14 c0 8d e5                                      str ip, [sp, #0x14]
0061f6b4  9e b9 ff eb                                      bl #0x60dd34
0061f6b8  04 10 9d e5                                      ldr r1, [sp, #4]
0061f6bc  08 30 9d e5                                      ldr r3, [sp, #8]
0061f6c0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0061f6c4  00 00 9d e5                                      ldr r0, [sp]
0061f6c8  04 10 8a e5                                      str r1, [sl, #4]
0061f6cc  0c 20 8a e5                                      str r2, [sl, #0xc]
0061f6d0  00 00 8a e5                                      str r0, [sl]
0061f6d4  08 30 8a e5                                      str r3, [sl, #8]
0061f6d8  54 d0 8d e2                                      add sp, sp, #0x54
0061f6dc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0061f6f4, declared_size=384, range_size=384, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIfEEfE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061f6f4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061f6f8  98 d0 4d e2                                      sub sp, sp, #0x98
0061f6fc  88 70 8d e2                                      add r7, sp, #0x88
0061f700  00 40 a0 e3                                      mov r4, #0
0061f704  03 80 a0 e1                                      mov r8, r3
0061f708  00 60 a0 e1                                      mov r6, r0
0061f70c  01 90 a0 e1                                      mov sb, r1
0061f710  78 a0 8d e2                                      add sl, sp, #0x78
0061f714  02 10 a0 e1                                      mov r1, r2
0061f718  07 20 a0 e1                                      mov r2, r7
0061f71c  bc 50 9d e5                                      ldr r5, [sp, #0xbc]
0061f720  88 40 8d e5                                      str r4, [sp, #0x88]
0061f724  8c 40 8d e5                                      str r4, [sp, #0x8c]
0061f728  90 40 8d e5                                      str r4, [sp, #0x90]
0061f72c  78 40 8d e5                                      str r4, [sp, #0x78]
0061f730  7c 40 8d e5                                      str r4, [sp, #0x7c]
0061f734  80 40 8d e5                                      str r4, [sp, #0x80]
0061f738  68 40 8d e5                                      str r4, [sp, #0x68]
0061f73c  6c 40 8d e5                                      str r4, [sp, #0x6c]
0061f740  70 40 8d e5                                      str r4, [sp, #0x70]
0061f744  74 ff ff eb                                      bl #0x61f51c
0061f748  08 10 a0 e1                                      mov r1, r8
0061f74c  06 00 a0 e1                                      mov r0, r6
0061f750  0a 20 a0 e1                                      mov r2, sl
0061f754  68 80 8d e2                                      add r8, sp, #0x68
0061f758  6f ff ff eb                                      bl #0x61f51c
0061f75c  06 00 a0 e1                                      mov r0, r6
0061f760  09 10 a0 e1                                      mov r1, sb
0061f764  58 60 8d e2                                      add r6, sp, #0x58
0061f768  08 20 a0 e1                                      mov r2, r8
0061f76c  6a ff ff eb                                      bl #0x61f51c
0061f770  fe 35 a0 e3                                      mov r3, #0x3f800000
0061f774  07 20 a0 e1                                      mov r2, r7
0061f778  94 10 9d e5                                      ldr r1, [sp, #0x94]
0061f77c  48 70 8d e2                                      add r7, sp, #0x48
0061f780  06 00 a0 e1                                      mov r0, r6
0061f784  34 30 8d e5                                      str r3, [sp, #0x34]
0061f788  64 30 8d e5                                      str r3, [sp, #0x64]
0061f78c  54 30 8d e5                                      str r3, [sp, #0x54]
0061f790  44 30 8d e5                                      str r3, [sp, #0x44]
0061f794  30 40 8d e5                                      str r4, [sp, #0x30]
0061f798  58 40 8d e5                                      str r4, [sp, #0x58]
0061f79c  5c 40 8d e5                                      str r4, [sp, #0x5c]
0061f7a0  60 40 8d e5                                      str r4, [sp, #0x60]
0061f7a4  48 40 8d e5                                      str r4, [sp, #0x48]
0061f7a8  4c 40 8d e5                                      str r4, [sp, #0x4c]
0061f7ac  50 40 8d e5                                      str r4, [sp, #0x50]
0061f7b0  38 40 8d e5                                      str r4, [sp, #0x38]
0061f7b4  3c 40 8d e5                                      str r4, [sp, #0x3c]
0061f7b8  40 40 8d e5                                      str r4, [sp, #0x40]
0061f7bc  28 40 8d e5                                      str r4, [sp, #0x28]
0061f7c0  2c 40 8d e5                                      str r4, [sp, #0x2c]
0061f7c4  7c b5 ff eb                                      bl #0x60cdbc
0061f7c8  0a 20 a0 e1                                      mov r2, sl
0061f7cc  84 10 9d e5                                      ldr r1, [sp, #0x84]
0061f7d0  07 00 a0 e1                                      mov r0, r7
0061f7d4  78 b5 ff eb                                      bl #0x60cdbc
0061f7d8  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
0061f7dc  04 c0 8d e2                                      add ip, sp, #4
0061f7e0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0061f7e4  b8 c0 9d e5                                      ldr ip, [sp, #0xb8]
0061f7e8  0e 00 96 e8                                      ldm r6, {r1, r2, r3}
0061f7ec  38 40 8d e2                                      add r4, sp, #0x38
0061f7f0  14 c0 8d e5                                      str ip, [sp, #0x14]
0061f7f4  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0061f7f8  28 60 8d e2                                      add r6, sp, #0x28
0061f7fc  04 00 a0 e1                                      mov r0, r4
0061f800  00 c0 8d e5                                      str ip, [sp]
0061f804  3d cd ff eb                                      bl #0x612d00
0061f808  08 20 a0 e1                                      mov r2, r8
0061f80c  74 10 9d e5                                      ldr r1, [sp, #0x74]
0061f810  06 00 a0 e1                                      mov r0, r6
0061f814  68 b5 ff eb                                      bl #0x60cdbc
0061f818  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0061f81c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0061f820  30 30 9d e5                                      ldr r3, [sp, #0x30]
0061f824  02 e1 8e e2                                      add lr, lr, #0x80000000
0061f828  02 c1 8c e2                                      add ip, ip, #0x80000000
0061f82c  02 31 83 e2                                      add r3, r3, #0x80000000
0061f830  06 10 a0 e1                                      mov r1, r6
0061f834  04 20 a0 e1                                      mov r2, r4
0061f838  18 00 8d e2                                      add r0, sp, #0x18
0061f83c  30 30 8d e5                                      str r3, [sp, #0x30]
0061f840  28 e0 8d e5                                      str lr, [sp, #0x28]
0061f844  2c c0 8d e5                                      str ip, [sp, #0x2c]
0061f848  39 b9 ff eb                                      bl #0x60dd34
0061f84c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0061f850  20 30 9d e5                                      ldr r3, [sp, #0x20]
0061f854  24 20 9d e5                                      ldr r2, [sp, #0x24]
0061f858  18 00 9d e5                                      ldr r0, [sp, #0x18]
0061f85c  04 10 85 e5                                      str r1, [r5, #4]
0061f860  0c 20 85 e5                                      str r2, [r5, #0xc]
0061f864  00 00 85 e5                                      str r0, [r5]
0061f868  08 30 85 e5                                      str r3, [r5, #8]
0061f86c  98 d0 8d e2                                      add sp, sp, #0x98
0061f870  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061f94c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIfEEfE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061f94c  10 40 2d e9                                      push {r4, lr}
0061f950  18 d0 4d e2                                      sub sp, sp, #0x18
0061f954  00 c0 a0 e3                                      mov ip, #0
0061f958  08 40 8d e2                                      add r4, sp, #8
0061f95c  10 c0 8d e5                                      str ip, [sp, #0x10]
0061f960  08 c0 8d e5                                      str ip, [sp, #8]
0061f964  0c c0 8d e5                                      str ip, [sp, #0xc]
0061f968  00 40 8d e5                                      str r4, [sp]
0061f96c  c9 ff ff eb                                      bl #0x61f898
0061f970  20 00 9d e5                                      ldr r0, [sp, #0x20]
0061f974  04 20 a0 e1                                      mov r2, r4
0061f978  14 10 9d e5                                      ldr r1, [sp, #0x14]
0061f97c  0e b5 ff eb                                      bl #0x60cdbc
0061f980  18 d0 8d e2                                      add sp, sp, #0x18
0061f984  10 80 bd e8                                      pop {r4, pc}
