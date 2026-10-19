; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00618064, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIsEEsE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00618064  30 40 2d e9                                      push {r4, r5, lr}
00618068  14 d0 4d e2                                      sub sp, sp, #0x14
0061806c  00 30 a0 e3                                      mov r3, #0
00618070  02 50 a0 e1                                      mov r5, r2
00618074  0d 20 a0 e1                                      mov r2, sp
00618078  08 30 8d e5                                      str r3, [sp, #8]
0061807c  00 30 8d e5                                      str r3, [sp]
00618080  04 30 8d e5                                      str r3, [sp, #4]
00618084  81 f2 ff eb                                      bl #0x614a90
00618088  05 00 a0 e1                                      mov r0, r5
0061808c  0d 20 a0 e1                                      mov r2, sp
00618090  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00618094  0d 40 a0 e1                                      mov r4, sp
00618098  47 d3 ff eb                                      bl #0x60cdbc
0061809c  14 d0 8d e2                                      add sp, sp, #0x14
006180a0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006180b4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIsEEsE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006180b4  10 40 2d e9                                      push {r4, lr}
006180b8  18 d0 4d e2                                      sub sp, sp, #0x18
006180bc  00 c0 a0 e3                                      mov ip, #0
006180c0  08 40 8d e2                                      add r4, sp, #8
006180c4  10 c0 8d e5                                      str ip, [sp, #0x10]
006180c8  08 c0 8d e5                                      str ip, [sp, #8]
006180cc  0c c0 8d e5                                      str ip, [sp, #0xc]
006180d0  00 40 8d e5                                      str r4, [sp]
006180d4  97 f2 ff eb                                      bl #0x614b38
006180d8  20 00 9d e5                                      ldr r0, [sp, #0x20]
006180dc  04 20 a0 e1                                      mov r2, r4
006180e0  14 10 9d e5                                      ldr r1, [sp, #0x14]
006180e4  34 d3 ff eb                                      bl #0x60cdbc
006180e8  18 d0 8d e2                                      add sp, sp, #0x18
006180ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0061810c, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIsEEsE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061810c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00618110  54 d0 4d e2                                      sub sp, sp, #0x54
00618114  40 60 8d e2                                      add r6, sp, #0x40
00618118  00 40 a0 e3                                      mov r4, #0
0061811c  00 70 a0 e1                                      mov r7, r0
00618120  01 80 a0 e1                                      mov r8, r1
00618124  30 50 8d e2                                      add r5, sp, #0x30
00618128  02 10 a0 e1                                      mov r1, r2
0061812c  06 20 a0 e1                                      mov r2, r6
00618130  03 a0 a0 e1                                      mov sl, r3
00618134  40 40 8d e5                                      str r4, [sp, #0x40]
00618138  44 40 8d e5                                      str r4, [sp, #0x44]
0061813c  48 40 8d e5                                      str r4, [sp, #0x48]
00618140  30 40 8d e5                                      str r4, [sp, #0x30]
00618144  34 40 8d e5                                      str r4, [sp, #0x34]
00618148  38 40 8d e5                                      str r4, [sp, #0x38]
0061814c  4f f2 ff eb                                      bl #0x614a90
00618150  07 00 a0 e1                                      mov r0, r7
00618154  08 10 a0 e1                                      mov r1, r8
00618158  05 20 a0 e1                                      mov r2, r5
0061815c  20 70 8d e2                                      add r7, sp, #0x20
00618160  4a f2 ff eb                                      bl #0x614a90
00618164  fe 35 a0 e3                                      mov r3, #0x3f800000
00618168  06 20 a0 e1                                      mov r2, r6
0061816c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00618170  10 60 8d e2                                      add r6, sp, #0x10
00618174  07 00 a0 e1                                      mov r0, r7
00618178  1c 30 8d e5                                      str r3, [sp, #0x1c]
0061817c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00618180  18 40 8d e5                                      str r4, [sp, #0x18]
00618184  20 40 8d e5                                      str r4, [sp, #0x20]
00618188  24 40 8d e5                                      str r4, [sp, #0x24]
0061818c  28 40 8d e5                                      str r4, [sp, #0x28]
00618190  10 40 8d e5                                      str r4, [sp, #0x10]
00618194  14 40 8d e5                                      str r4, [sp, #0x14]
00618198  07 d3 ff eb                                      bl #0x60cdbc
0061819c  05 20 a0 e1                                      mov r2, r5
006181a0  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006181a4  06 00 a0 e1                                      mov r0, r6
006181a8  03 d3 ff eb                                      bl #0x60cdbc
006181ac  10 e0 9d e5                                      ldr lr, [sp, #0x10]
006181b0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006181b4  18 30 9d e5                                      ldr r3, [sp, #0x18]
006181b8  02 e1 8e e2                                      add lr, lr, #0x80000000
006181bc  02 c1 8c e2                                      add ip, ip, #0x80000000
006181c0  02 31 83 e2                                      add r3, r3, #0x80000000
006181c4  06 10 a0 e1                                      mov r1, r6
006181c8  07 20 a0 e1                                      mov r2, r7
006181cc  0d 00 a0 e1                                      mov r0, sp
006181d0  18 30 8d e5                                      str r3, [sp, #0x18]
006181d4  10 e0 8d e5                                      str lr, [sp, #0x10]
006181d8  14 c0 8d e5                                      str ip, [sp, #0x14]
006181dc  d4 d6 ff eb                                      bl #0x60dd34
006181e0  04 10 9d e5                                      ldr r1, [sp, #4]
006181e4  08 30 9d e5                                      ldr r3, [sp, #8]
006181e8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006181ec  00 00 9d e5                                      ldr r0, [sp]
006181f0  04 10 8a e5                                      str r1, [sl, #4]
006181f4  0c 20 8a e5                                      str r2, [sl, #0xc]
006181f8  00 00 8a e5                                      str r0, [sl]
006181fc  08 30 8a e5                                      str r3, [sl, #8]
00618200  54 d0 8d e2                                      add sp, sp, #0x54
00618204  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0061821c, declared_size=384, range_size=384, mode=arm
; class-group: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>
; alias: _ZN6glitch7collada15animation_track27CInterpreterQuaternionAngleINS1_30CSceneNodeQuaternionAngleMixinIsEEsE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreterQuaternionAngle<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short>, short>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061821c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00618220  98 d0 4d e2                                      sub sp, sp, #0x98
00618224  88 70 8d e2                                      add r7, sp, #0x88
00618228  00 40 a0 e3                                      mov r4, #0
0061822c  03 80 a0 e1                                      mov r8, r3
00618230  00 60 a0 e1                                      mov r6, r0
00618234  01 90 a0 e1                                      mov sb, r1
00618238  78 a0 8d e2                                      add sl, sp, #0x78
0061823c  02 10 a0 e1                                      mov r1, r2
00618240  07 20 a0 e1                                      mov r2, r7
00618244  bc 50 9d e5                                      ldr r5, [sp, #0xbc]
00618248  88 40 8d e5                                      str r4, [sp, #0x88]
0061824c  8c 40 8d e5                                      str r4, [sp, #0x8c]
00618250  90 40 8d e5                                      str r4, [sp, #0x90]
00618254  78 40 8d e5                                      str r4, [sp, #0x78]
00618258  7c 40 8d e5                                      str r4, [sp, #0x7c]
0061825c  80 40 8d e5                                      str r4, [sp, #0x80]
00618260  68 40 8d e5                                      str r4, [sp, #0x68]
00618264  6c 40 8d e5                                      str r4, [sp, #0x6c]
00618268  70 40 8d e5                                      str r4, [sp, #0x70]
0061826c  07 f2 ff eb                                      bl #0x614a90
00618270  08 10 a0 e1                                      mov r1, r8
00618274  06 00 a0 e1                                      mov r0, r6
00618278  0a 20 a0 e1                                      mov r2, sl
0061827c  68 80 8d e2                                      add r8, sp, #0x68
00618280  02 f2 ff eb                                      bl #0x614a90
00618284  06 00 a0 e1                                      mov r0, r6
00618288  09 10 a0 e1                                      mov r1, sb
0061828c  58 60 8d e2                                      add r6, sp, #0x58
00618290  08 20 a0 e1                                      mov r2, r8
00618294  fd f1 ff eb                                      bl #0x614a90
00618298  fe 35 a0 e3                                      mov r3, #0x3f800000
0061829c  07 20 a0 e1                                      mov r2, r7
006182a0  94 10 9d e5                                      ldr r1, [sp, #0x94]
006182a4  48 70 8d e2                                      add r7, sp, #0x48
006182a8  06 00 a0 e1                                      mov r0, r6
006182ac  34 30 8d e5                                      str r3, [sp, #0x34]
006182b0  64 30 8d e5                                      str r3, [sp, #0x64]
006182b4  54 30 8d e5                                      str r3, [sp, #0x54]
006182b8  44 30 8d e5                                      str r3, [sp, #0x44]
006182bc  30 40 8d e5                                      str r4, [sp, #0x30]
006182c0  58 40 8d e5                                      str r4, [sp, #0x58]
006182c4  5c 40 8d e5                                      str r4, [sp, #0x5c]
006182c8  60 40 8d e5                                      str r4, [sp, #0x60]
006182cc  48 40 8d e5                                      str r4, [sp, #0x48]
006182d0  4c 40 8d e5                                      str r4, [sp, #0x4c]
006182d4  50 40 8d e5                                      str r4, [sp, #0x50]
006182d8  38 40 8d e5                                      str r4, [sp, #0x38]
006182dc  3c 40 8d e5                                      str r4, [sp, #0x3c]
006182e0  40 40 8d e5                                      str r4, [sp, #0x40]
006182e4  28 40 8d e5                                      str r4, [sp, #0x28]
006182e8  2c 40 8d e5                                      str r4, [sp, #0x2c]
006182ec  b2 d2 ff eb                                      bl #0x60cdbc
006182f0  0a 20 a0 e1                                      mov r2, sl
006182f4  84 10 9d e5                                      ldr r1, [sp, #0x84]
006182f8  07 00 a0 e1                                      mov r0, r7
006182fc  ae d2 ff eb                                      bl #0x60cdbc
00618300  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
00618304  04 c0 8d e2                                      add ip, sp, #4
00618308  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0061830c  b8 c0 9d e5                                      ldr ip, [sp, #0xb8]
00618310  0e 00 96 e8                                      ldm r6, {r1, r2, r3}
00618314  38 40 8d e2                                      add r4, sp, #0x38
00618318  14 c0 8d e5                                      str ip, [sp, #0x14]
0061831c  64 c0 9d e5                                      ldr ip, [sp, #0x64]
00618320  28 60 8d e2                                      add r6, sp, #0x28
00618324  04 00 a0 e1                                      mov r0, r4
00618328  00 c0 8d e5                                      str ip, [sp]
0061832c  73 ea ff eb                                      bl #0x612d00
00618330  08 20 a0 e1                                      mov r2, r8
00618334  74 10 9d e5                                      ldr r1, [sp, #0x74]
00618338  06 00 a0 e1                                      mov r0, r6
0061833c  9e d2 ff eb                                      bl #0x60cdbc
00618340  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00618344  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00618348  30 30 9d e5                                      ldr r3, [sp, #0x30]
0061834c  02 e1 8e e2                                      add lr, lr, #0x80000000
00618350  02 c1 8c e2                                      add ip, ip, #0x80000000
00618354  02 31 83 e2                                      add r3, r3, #0x80000000
00618358  06 10 a0 e1                                      mov r1, r6
0061835c  04 20 a0 e1                                      mov r2, r4
00618360  18 00 8d e2                                      add r0, sp, #0x18
00618364  30 30 8d e5                                      str r3, [sp, #0x30]
00618368  28 e0 8d e5                                      str lr, [sp, #0x28]
0061836c  2c c0 8d e5                                      str ip, [sp, #0x2c]
00618370  6f d6 ff eb                                      bl #0x60dd34
00618374  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00618378  20 30 9d e5                                      ldr r3, [sp, #0x20]
0061837c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00618380  18 00 9d e5                                      ldr r0, [sp, #0x18]
00618384  04 10 85 e5                                      str r1, [r5, #4]
00618388  0c 20 85 e5                                      str r2, [r5, #0xc]
0061838c  00 00 85 e5                                      str r0, [r5]
00618390  08 30 85 e5                                      str r3, [r5, #8]
00618394  98 d0 8d e2                                      add sp, sp, #0x98
00618398  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
