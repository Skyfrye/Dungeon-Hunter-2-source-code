; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c3bec, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManagerC2EPNS0_13CSceneManagerEPNS_5video12IVideoDriverE
; demangled: glitch::scene::CSceneCollisionManager::CSceneCollisionManager(glitch::scene::CSceneManager*, glitch::video::IVideoDriver*)
; decoder-mode: arm
006c3bec  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
006c3bf0  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
006c3bf4  30 00 2d e9                                      push {r4, r5}
006c3bf8  03 30 8f e0                                      add r3, pc, r3
006c3bfc  0c c0 93 e7                                      ldr ip, [r3, ip]
006c3c00  00 40 a0 e3                                      mov r4, #0
006c3c04  01 50 a0 e3                                      mov r5, #1
006c3c08  08 c0 8c e2                                      add ip, ip, #8
006c3c0c  00 00 52 e3                                      cmp r2, #0
006c3c10  04 50 80 e5                                      str r5, [r0, #4]
006c3c14  00 c0 80 e5                                      str ip, [r0]
006c3c18  08 10 80 e5                                      str r1, [r0, #8]
006c3c1c  18 40 80 e5                                      str r4, [r0, #0x18]
006c3c20  0c 20 80 e5                                      str r2, [r0, #0xc]
006c3c24  10 40 80 e5                                      str r4, [r0, #0x10]
006c3c28  14 40 80 e5                                      str r4, [r0, #0x14]
006c3c2c  04 30 92 15                                      ldrne r3, [r2, #4]
006c3c30  05 30 83 10                                      addne r3, r3, r5
006c3c34  04 30 82 15                                      strne r3, [r2, #4]
006c3c38  30 00 bd e8                                      pop {r4, r5}
006c3c3c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006c3c40  98 0e 2d 00 6c 1a 00 00                          .byte 0x98, 0x0e, 0x2d, 0x00, 0x6c, 0x1a, 0x00, 0x00

; FUNCTION 0x006c3c48, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManagerC1EPNS0_13CSceneManagerEPNS_5video12IVideoDriverE
; demangled: glitch::scene::CSceneCollisionManager::CSceneCollisionManager(glitch::scene::CSceneManager*, glitch::video::IVideoDriver*)
; decoder-mode: arm
006c3c48  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
006c3c4c  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
006c3c50  30 00 2d e9                                      push {r4, r5}
006c3c54  03 30 8f e0                                      add r3, pc, r3
006c3c58  0c c0 93 e7                                      ldr ip, [r3, ip]
006c3c5c  00 40 a0 e3                                      mov r4, #0
006c3c60  01 50 a0 e3                                      mov r5, #1
006c3c64  08 c0 8c e2                                      add ip, ip, #8
006c3c68  00 00 52 e3                                      cmp r2, #0
006c3c6c  04 50 80 e5                                      str r5, [r0, #4]
006c3c70  00 c0 80 e5                                      str ip, [r0]
006c3c74  08 10 80 e5                                      str r1, [r0, #8]
006c3c78  18 40 80 e5                                      str r4, [r0, #0x18]
006c3c7c  0c 20 80 e5                                      str r2, [r0, #0xc]
006c3c80  10 40 80 e5                                      str r4, [r0, #0x10]
006c3c84  14 40 80 e5                                      str r4, [r0, #0x14]
006c3c88  04 30 92 15                                      ldrne r3, [r2, #4]
006c3c8c  05 30 83 10                                      addne r3, r3, r5
006c3c90  04 30 82 15                                      strne r3, [r2, #4]
006c3c94  30 00 bd e8                                      pop {r4, r5}
006c3c98  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006c3c9c  3c 0e 2d 00 6c 1a 00 00                          .byte 0x3c, 0x0e, 0x2d, 0x00, 0x6c, 0x1a, 0x00, 0x00

; FUNCTION 0x006c3ca4, declared_size=252, range_size=252, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManager35getSceneNodeFromScreenCoordinatesBBENS_4core10position2dIiEEib
; demangled: glitch::scene::CSceneCollisionManager::getSceneNodeFromScreenCoordinatesBB(glitch::core::position2d<int>, int, bool)
; decoder-mode: arm
006c3ca4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c3ca8  00 40 a0 e1                                      mov r4, r0
006c3cac  00 c0 94 e5                                      ldr ip, [r4]
006c3cb0  04 00 91 e5                                      ldr r0, [r1, #4]
006c3cb4  00 10 91 e5                                      ldr r1, [r1]
006c3cb8  4c d0 4d e2                                      sub sp, sp, #0x4c
006c3cbc  14 c0 9c e5                                      ldr ip, [ip, #0x14]
006c3cc0  02 50 a0 e1                                      mov r5, r2
006c3cc4  40 10 8d e5                                      str r1, [sp, #0x40]
006c3cc8  44 00 8d e5                                      str r0, [sp, #0x44]
006c3ccc  0c 30 8d e5                                      str r3, [sp, #0xc]
006c3cd0  28 00 8d e2                                      add r0, sp, #0x28
006c3cd4  04 10 a0 e1                                      mov r1, r4
006c3cd8  40 20 8d e2                                      add r2, sp, #0x40
006c3cdc  00 30 a0 e3                                      mov r3, #0
006c3ce0  3c ff 2f e1                                      blx ip
006c3ce4  28 70 9d e5                                      ldr r7, [sp, #0x28]
006c3ce8  34 60 9d e5                                      ldr r6, [sp, #0x34]
006c3cec  07 00 a0 e1                                      mov r0, r7
006c3cf0  06 10 a0 e1                                      mov r1, r6
006c3cf4  a4 28 f1 eb                                      bl #0x30df8c
006c3cf8  00 00 50 e3                                      cmp r0, #0
006c3cfc  0f 00 00 0a                                      beq #0x6c3d40
006c3d00  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
006c3d04  38 80 9d e5                                      ldr r8, [sp, #0x38]
006c3d08  0a 00 a0 e1                                      mov r0, sl
006c3d0c  08 10 a0 e1                                      mov r1, r8
006c3d10  9d 28 f1 eb                                      bl #0x30df8c
006c3d14  00 00 50 e3                                      cmp r0, #0
006c3d18  1d 00 00 0a                                      beq #0x6c3d94
006c3d1c  30 b0 9d e5                                      ldr fp, [sp, #0x30]
006c3d20  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
006c3d24  0b 00 a0 e1                                      mov r0, fp
006c3d28  09 10 a0 e1                                      mov r1, sb
006c3d2c  96 28 f1 eb                                      bl #0x30df8c
006c3d30  00 00 50 e3                                      cmp r0, #0
006c3d34  05 00 00 0a                                      beq #0x6c3d50
006c3d38  00 00 a0 e3                                      mov r0, #0
006c3d3c  12 00 00 ea                                      b #0x6c3d8c
006c3d40  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
006c3d44  30 b0 9d e5                                      ldr fp, [sp, #0x30]
006c3d48  38 80 9d e5                                      ldr r8, [sp, #0x38]
006c3d4c  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
006c3d50  00 30 94 e5                                      ldr r3, [r4]
006c3d54  04 00 a0 e1                                      mov r0, r4
006c3d58  05 20 a0 e1                                      mov r2, r5
006c3d5c  20 c0 93 e5                                      ldr ip, [r3, #0x20]
006c3d60  00 30 a0 e3                                      mov r3, #0
006c3d64  00 30 8d e5                                      str r3, [sp]
006c3d68  10 70 8d e5                                      str r7, [sp, #0x10]
006c3d6c  14 a0 8d e5                                      str sl, [sp, #0x14]
006c3d70  18 b0 8d e5                                      str fp, [sp, #0x18]
006c3d74  1c 60 8d e5                                      str r6, [sp, #0x1c]
006c3d78  20 80 8d e5                                      str r8, [sp, #0x20]
006c3d7c  24 90 8d e5                                      str sb, [sp, #0x24]
006c3d80  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c3d84  10 10 8d e2                                      add r1, sp, #0x10
006c3d88  3c ff 2f e1                                      blx ip
006c3d8c  4c d0 8d e2                                      add sp, sp, #0x4c
006c3d90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c3d94  30 b0 9d e5                                      ldr fp, [sp, #0x30]
006c3d98  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
006c3d9c  eb ff ff ea                                      b #0x6c3d50

; FUNCTION 0x006c40d0, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManagerD1Ev
; demangled: glitch::scene::CSceneCollisionManager::~CSceneCollisionManager()
; decoder-mode: arm
006c40d0  10 40 2d e9                                      push {r4, lr}
006c40d4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006c40d8  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
006c40dc  00 40 a0 e1                                      mov r4, r0
006c40e0  03 30 8f e0                                      add r3, pc, r3
006c40e4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006c40e8  02 20 93 e7                                      ldr r2, [r3, r2]
006c40ec  00 00 50 e3                                      cmp r0, #0
006c40f0  08 20 82 e2                                      add r2, r2, #8
006c40f4  00 20 84 e5                                      str r2, [r4]
006c40f8  00 00 00 0a                                      beq #0x6c4100
006c40fc  20 65 f1 eb                                      bl #0x31d584
006c4100  10 00 94 e5                                      ldr r0, [r4, #0x10]
006c4104  00 00 50 e3                                      cmp r0, #0
006c4108  00 00 00 0a                                      beq #0x6c4110
006c410c  cf 30 f1 eb                                      bl #0x310450
006c4110  04 00 a0 e1                                      mov r0, r4
006c4114  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006c4118  b0 09 2d 00 6c 1a 00 00                          .byte 0xb0, 0x09, 0x2d, 0x00, 0x6c, 0x1a, 0x00, 0x00

; FUNCTION 0x006c4120, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManagerD2Ev
; demangled: glitch::scene::CSceneCollisionManager::~CSceneCollisionManager()
; decoder-mode: arm
006c4120  10 40 2d e9                                      push {r4, lr}
006c4124  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006c4128  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
006c412c  00 40 a0 e1                                      mov r4, r0
006c4130  03 30 8f e0                                      add r3, pc, r3
006c4134  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006c4138  02 20 93 e7                                      ldr r2, [r3, r2]
006c413c  00 00 50 e3                                      cmp r0, #0
006c4140  08 20 82 e2                                      add r2, r2, #8
006c4144  00 20 84 e5                                      str r2, [r4]
006c4148  00 00 00 0a                                      beq #0x6c4150
006c414c  0c 65 f1 eb                                      bl #0x31d584
006c4150  10 00 94 e5                                      ldr r0, [r4, #0x10]
006c4154  00 00 50 e3                                      cmp r0, #0
006c4158  00 00 00 0a                                      beq #0x6c4160
006c415c  bb 30 f1 eb                                      bl #0x310450
006c4160  04 00 a0 e1                                      mov r0, r4
006c4164  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006c4168  60 09 2d 00 6c 1a 00 00                          .byte 0x60, 0x09, 0x2d, 0x00, 0x6c, 0x1a, 0x00, 0x00

; FUNCTION 0x006c4170, declared_size=312, range_size=312, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManager13getLowestRootEffffPf
; demangled: glitch::scene::CSceneCollisionManager::getLowestRoot(float, float, float, float, float*)
; decoder-mode: arm
006c4170  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006c4174  02 00 a0 e1                                      mov r0, r2
006c4178  01 50 a0 e1                                      mov r5, r1
006c417c  02 10 a0 e1                                      mov r1, r2
006c4180  03 70 a0 e1                                      mov r7, r3
006c4184  02 40 a0 e1                                      mov r4, r2
006c4188  f7 2a f1 eb                                      bl #0x30ed6c
006c418c  81 14 a0 e3                                      mov r1, #0x81000000
006c4190  00 60 a0 e1                                      mov r6, r0
006c4194  c1 10 a0 e1                                      asr r1, r1, #1
006c4198  05 00 a0 e1                                      mov r0, r5
006c419c  f2 2a f1 eb                                      bl #0x30ed6c
006c41a0  07 10 a0 e1                                      mov r1, r7
006c41a4  f0 2a f1 eb                                      bl #0x30ed6c
006c41a8  00 10 a0 e1                                      mov r1, r0
006c41ac  06 00 a0 e1                                      mov r0, r6
006c41b0  7b 2a f1 eb                                      bl #0x30eba4
006c41b4  00 10 a0 e3                                      mov r1, #0
006c41b8  00 60 a0 e1                                      mov r6, r0
006c41bc  52 29 f1 eb                                      bl #0x30e70c
006c41c0  00 00 50 e3                                      cmp r0, #0
006c41c4  20 70 9d e5                                      ldr r7, [sp, #0x20]
006c41c8  24 80 9d e5                                      ldr r8, [sp, #0x24]
006c41cc  01 00 00 0a                                      beq #0x6c41d8
006c41d0  00 00 a0 e3                                      mov r0, #0
006c41d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006c41d8  06 00 a0 e1                                      mov r0, r6
006c41dc  d0 27 f1 eb                                      bl #0x30e124
006c41e0  05 10 a0 e1                                      mov r1, r5
006c41e4  00 a0 a0 e1                                      mov sl, r0
006c41e8  05 00 a0 e1                                      mov r0, r5
006c41ec  6c 2a f1 eb                                      bl #0x30eba4
006c41f0  0a 10 a0 e1                                      mov r1, sl
006c41f4  00 60 a0 e1                                      mov r6, r0
006c41f8  02 01 84 e2                                      add r0, r4, #0x80000000
006c41fc  6a 28 f1 eb                                      bl #0x30e3ac
006c4200  06 10 a0 e1                                      mov r1, r6
006c4204  a2 2a f1 eb                                      bl #0x30ec94
006c4208  04 10 a0 e1                                      mov r1, r4
006c420c  00 50 a0 e1                                      mov r5, r0
006c4210  0a 00 a0 e1                                      mov r0, sl
006c4214  64 28 f1 eb                                      bl #0x30e3ac
006c4218  06 10 a0 e1                                      mov r1, r6
006c421c  9c 2a f1 eb                                      bl #0x30ec94
006c4220  00 40 a0 e1                                      mov r4, r0
006c4224  04 10 a0 e1                                      mov r1, r4
006c4228  05 00 a0 e1                                      mov r0, r5
006c422c  31 28 f1 eb                                      bl #0x30e2f8
006c4230  00 00 50 e3                                      cmp r0, #0
006c4234  05 30 a0 e1                                      mov r3, r5
006c4238  04 50 a0 11                                      movne r5, r4
006c423c  05 00 a0 e1                                      mov r0, r5
006c4240  00 10 a0 e3                                      mov r1, #0
006c4244  03 40 a0 11                                      movne r4, r3
006c4248  2a 28 f1 eb                                      bl #0x30e2f8
006c424c  00 00 50 e3                                      cmp r0, #0
006c4250  07 00 00 0a                                      beq #0x6c4274
006c4254  05 00 a0 e1                                      mov r0, r5
006c4258  07 10 a0 e1                                      mov r1, r7
006c425c  2a 29 f1 eb                                      bl #0x30e70c
006c4260  00 00 50 e3                                      cmp r0, #0
006c4264  02 00 00 0a                                      beq #0x6c4274
006c4268  00 50 88 e5                                      str r5, [r8]
006c426c  01 00 a0 e3                                      mov r0, #1
006c4270  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006c4274  04 00 a0 e1                                      mov r0, r4
006c4278  00 10 a0 e3                                      mov r1, #0
006c427c  1d 28 f1 eb                                      bl #0x30e2f8
006c4280  00 00 50 e3                                      cmp r0, #0
006c4284  d1 ff ff 0a                                      beq #0x6c41d0
006c4288  07 10 a0 e1                                      mov r1, r7
006c428c  04 00 a0 e1                                      mov r0, r4
006c4290  1d 29 f1 eb                                      bl #0x30e70c
006c4294  00 00 50 e3                                      cmp r0, #0
006c4298  cc ff ff 0a                                      beq #0x6c41d0
006c429c  00 40 88 e5                                      str r4, [r8]
006c42a0  01 00 a0 e3                                      mov r0, #1
006c42a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006c42a8, declared_size=5068, range_size=5068, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManager24testTriangleIntersectionEPNS1_14SCollisionDataERKNS_4core10triangle3dIfEE
; demangled: glitch::scene::CSceneCollisionManager::testTriangleIntersection(glitch::scene::CSceneCollisionManager::SCollisionData*, glitch::core::triangle3d<float> const&)
; decoder-mode: arm
006c42a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c42ac  02 50 a0 e1                                      mov r5, r2
006c42b0  84 d0 4d e2                                      sub sp, sp, #0x84
006c42b4  0c 20 82 e2                                      add r2, r2, #0xc
006c42b8  18 30 85 e2                                      add r3, r5, #0x18
006c42bc  00 60 a0 e3                                      mov r6, #0
006c42c0  01 40 a0 e1                                      mov r4, r1
006c42c4  3c 00 8d e5                                      str r0, [sp, #0x3c]
006c42c8  05 10 a0 e1                                      mov r1, r5
006c42cc  60 00 8d e2                                      add r0, sp, #0x60
006c42d0  60 60 8d e5                                      str r6, [sp, #0x60]
006c42d4  64 60 8d e5                                      str r6, [sp, #0x64]
006c42d8  68 60 8d e5                                      str r6, [sp, #0x68]
006c42dc  3e 76 fa eb                                      bl #0x561bdc
006c42e0  60 90 9d e5                                      ldr sb, [sp, #0x60]
006c42e4  30 10 94 e5                                      ldr r1, [r4, #0x30]
006c42e8  64 a0 9d e5                                      ldr sl, [sp, #0x64]
006c42ec  09 00 a0 e1                                      mov r0, sb
006c42f0  9d 2a f1 eb                                      bl #0x30ed6c
006c42f4  34 10 94 e5                                      ldr r1, [r4, #0x34]
006c42f8  00 70 a0 e1                                      mov r7, r0
006c42fc  0a 00 a0 e1                                      mov r0, sl
006c4300  99 2a f1 eb                                      bl #0x30ed6c
006c4304  00 10 a0 e1                                      mov r1, r0
006c4308  07 00 a0 e1                                      mov r0, r7
006c430c  24 2a f1 eb                                      bl #0x30eba4
006c4310  68 80 9d e5                                      ldr r8, [sp, #0x68]
006c4314  00 70 a0 e1                                      mov r7, r0
006c4318  38 10 94 e5                                      ldr r1, [r4, #0x38]
006c431c  08 00 a0 e1                                      mov r0, r8
006c4320  91 2a f1 eb                                      bl #0x30ed6c
006c4324  00 10 a0 e1                                      mov r1, r0
006c4328  07 00 a0 e1                                      mov r0, r7
006c432c  1c 2a f1 eb                                      bl #0x30eba4
006c4330  06 10 a0 e1                                      mov r1, r6
006c4334  9c 29 f1 eb                                      bl #0x30e9ac
006c4338  00 00 50 e3                                      cmp r0, #0
006c433c  5a 03 00 0a                                      beq #0x6c50ac
006c4340  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
006c4344  09 00 a0 e1                                      mov r0, sb
006c4348  24 10 8d e5                                      str r1, [sp, #0x24]
006c434c  40 20 94 e5                                      ldr r2, [r4, #0x40]
006c4350  28 20 8d e5                                      str r2, [sp, #0x28]
006c4354  84 2a f1 eb                                      bl #0x30ed6c
006c4358  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c435c  00 60 a0 e1                                      mov r6, r0
006c4360  0a 00 a0 e1                                      mov r0, sl
006c4364  80 2a f1 eb                                      bl #0x30ed6c
006c4368  44 30 94 e5                                      ldr r3, [r4, #0x44]
006c436c  00 10 a0 e1                                      mov r1, r0
006c4370  06 00 a0 e1                                      mov r0, r6
006c4374  30 30 8d e5                                      str r3, [sp, #0x30]
006c4378  09 2a f1 eb                                      bl #0x30eba4
006c437c  30 10 9d e5                                      ldr r1, [sp, #0x30]
006c4380  00 60 a0 e1                                      mov r6, r0
006c4384  08 00 a0 e1                                      mov r0, r8
006c4388  77 2a f1 eb                                      bl #0x30ed6c
006c438c  00 10 a0 e1                                      mov r1, r0
006c4390  06 00 a0 e1                                      mov r0, r6
006c4394  02 2a f1 eb                                      bl #0x30eba4
006c4398  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006c439c  00 2a f1 eb                                      bl #0x30eba4
006c43a0  18 00 8d e5                                      str r0, [sp, #0x18]
006c43a4  24 b0 94 e5                                      ldr fp, [r4, #0x24]
006c43a8  09 00 a0 e1                                      mov r0, sb
006c43ac  28 60 94 e5                                      ldr r6, [r4, #0x28]
006c43b0  0b 10 a0 e1                                      mov r1, fp
006c43b4  6c 2a f1 eb                                      bl #0x30ed6c
006c43b8  06 10 a0 e1                                      mov r1, r6
006c43bc  00 70 a0 e1                                      mov r7, r0
006c43c0  0a 00 a0 e1                                      mov r0, sl
006c43c4  68 2a f1 eb                                      bl #0x30ed6c
006c43c8  00 10 a0 e1                                      mov r1, r0
006c43cc  07 00 a0 e1                                      mov r0, r7
006c43d0  f3 29 f1 eb                                      bl #0x30eba4
006c43d4  2c 70 94 e5                                      ldr r7, [r4, #0x2c]
006c43d8  00 30 a0 e1                                      mov r3, r0
006c43dc  08 00 a0 e1                                      mov r0, r8
006c43e0  07 10 a0 e1                                      mov r1, r7
006c43e4  14 30 8d e5                                      str r3, [sp, #0x14]
006c43e8  5f 2a f1 eb                                      bl #0x30ed6c
006c43ec  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c43f0  00 10 a0 e1                                      mov r1, r0
006c43f4  03 00 a0 e1                                      mov r0, r3
006c43f8  e9 29 f1 eb                                      bl #0x30eba4
006c43fc  bd 17 03 e3                                      movw r1, #0x37bd
006c4400  00 30 a0 e1                                      mov r3, r0
006c4404  86 15 43 e3                                      movt r1, #0x3586
006c4408  02 01 c0 e3                                      bic r0, r0, #0x80000000
006c440c  14 30 8d e5                                      str r3, [sp, #0x14]
006c4410  65 29 f1 eb                                      bl #0x30e9ac
006c4414  00 00 50 e3                                      cmp r0, #0
006c4418  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c441c  24 03 00 0a                                      beq #0x6c50b4
006c4420  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006c4424  fe 15 a0 e3                                      mov r1, #0x3f800000
006c4428  02 01 cc e3                                      bic r0, ip, #0x80000000
006c442c  20 28 f1 eb                                      bl #0x30e4b4
006c4430  00 00 50 e3                                      cmp r0, #0
006c4434  1c 03 00 1a                                      bne #0x6c50ac
006c4438  0b 10 a0 e1                                      mov r1, fp
006c443c  0b 00 a0 e1                                      mov r0, fp
006c4440  49 2a f1 eb                                      bl #0x30ed6c
006c4444  06 10 a0 e1                                      mov r1, r6
006c4448  00 80 a0 e1                                      mov r8, r0
006c444c  06 00 a0 e1                                      mov r0, r6
006c4450  45 2a f1 eb                                      bl #0x30ed6c
006c4454  00 10 a0 e1                                      mov r1, r0
006c4458  08 00 a0 e1                                      mov r0, r8
006c445c  d0 29 f1 eb                                      bl #0x30eba4
006c4460  07 10 a0 e1                                      mov r1, r7
006c4464  00 80 a0 e1                                      mov r8, r0
006c4468  07 00 a0 e1                                      mov r0, r7
006c446c  3e 2a f1 eb                                      bl #0x30ed6c
006c4470  00 10 a0 e1                                      mov r1, r0
006c4474  08 00 a0 e1                                      mov r0, r8
006c4478  c9 29 f1 eb                                      bl #0x30eba4
006c447c  2c 00 8d e5                                      str r0, [sp, #0x2c]
006c4480  00 80 95 e5                                      ldr r8, [r5]
006c4484  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c4488  04 a0 95 e5                                      ldr sl, [r5, #4]
006c448c  08 00 a0 e1                                      mov r0, r8
006c4490  c5 27 f1 eb                                      bl #0x30e3ac
006c4494  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c4498  00 30 a0 e1                                      mov r3, r0
006c449c  0a 00 a0 e1                                      mov r0, sl
006c44a0  08 90 95 e5                                      ldr sb, [r5, #8]
006c44a4  14 30 8d e5                                      str r3, [sp, #0x14]
006c44a8  bf 27 f1 eb                                      bl #0x30e3ac
006c44ac  30 10 9d e5                                      ldr r1, [sp, #0x30]
006c44b0  00 20 a0 e1                                      mov r2, r0
006c44b4  09 00 a0 e1                                      mov r0, sb
006c44b8  10 20 8d e5                                      str r2, [sp, #0x10]
006c44bc  ba 27 f1 eb                                      bl #0x30e3ac
006c44c0  08 10 a0 e1                                      mov r1, r8
006c44c4  00 c0 a0 e1                                      mov ip, r0
006c44c8  24 00 9d e5                                      ldr r0, [sp, #0x24]
006c44cc  0c c0 8d e5                                      str ip, [sp, #0xc]
006c44d0  b5 27 f1 eb                                      bl #0x30e3ac
006c44d4  00 10 a0 e1                                      mov r1, r0
006c44d8  0b 00 a0 e1                                      mov r0, fp
006c44dc  22 2a f1 eb                                      bl #0x30ed6c
006c44e0  0a 10 a0 e1                                      mov r1, sl
006c44e4  00 80 a0 e1                                      mov r8, r0
006c44e8  28 00 9d e5                                      ldr r0, [sp, #0x28]
006c44ec  ae 27 f1 eb                                      bl #0x30e3ac
006c44f0  00 10 a0 e1                                      mov r1, r0
006c44f4  06 00 a0 e1                                      mov r0, r6
006c44f8  1b 2a f1 eb                                      bl #0x30ed6c
006c44fc  00 10 a0 e1                                      mov r1, r0
006c4500  08 00 a0 e1                                      mov r0, r8
006c4504  a6 29 f1 eb                                      bl #0x30eba4
006c4508  09 10 a0 e1                                      mov r1, sb
006c450c  00 80 a0 e1                                      mov r8, r0
006c4510  30 00 9d e5                                      ldr r0, [sp, #0x30]
006c4514  a4 27 f1 eb                                      bl #0x30e3ac
006c4518  00 10 a0 e1                                      mov r1, r0
006c451c  07 00 a0 e1                                      mov r0, r7
006c4520  11 2a f1 eb                                      bl #0x30ed6c
006c4524  00 10 a0 e1                                      mov r1, r0
006c4528  08 00 a0 e1                                      mov r0, r8
006c452c  9c 29 f1 eb                                      bl #0x30eba4
006c4530  00 10 a0 e1                                      mov r1, r0
006c4534  9a 29 f1 eb                                      bl #0x30eba4
006c4538  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c453c  00 a0 a0 e1                                      mov sl, r0
006c4540  03 10 a0 e1                                      mov r1, r3
006c4544  03 00 a0 e1                                      mov r0, r3
006c4548  07 2a f1 eb                                      bl #0x30ed6c
006c454c  10 20 9d e5                                      ldr r2, [sp, #0x10]
006c4550  00 80 a0 e1                                      mov r8, r0
006c4554  02 10 a0 e1                                      mov r1, r2
006c4558  02 00 a0 e1                                      mov r0, r2
006c455c  02 2a f1 eb                                      bl #0x30ed6c
006c4560  00 10 a0 e1                                      mov r1, r0
006c4564  08 00 a0 e1                                      mov r0, r8
006c4568  8d 29 f1 eb                                      bl #0x30eba4
006c456c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006c4570  00 80 a0 e1                                      mov r8, r0
006c4574  0c 10 a0 e1                                      mov r1, ip
006c4578  0c 00 a0 e1                                      mov r0, ip
006c457c  fa 29 f1 eb                                      bl #0x30ed6c
006c4580  00 10 a0 e1                                      mov r1, r0
006c4584  08 00 a0 e1                                      mov r0, r8
006c4588  fe 85 a0 e3                                      mov r8, #0x3f800000
006c458c  84 29 f1 eb                                      bl #0x30eba4
006c4590  08 10 a0 e1                                      mov r1, r8
006c4594  84 27 f1 eb                                      bl #0x30e3ac
006c4598  7c c0 8d e2                                      add ip, sp, #0x7c
006c459c  18 c0 8d e5                                      str ip, [sp, #0x18]
006c45a0  00 30 a0 e1                                      mov r3, r0
006c45a4  0a 20 a0 e1                                      mov r2, sl
006c45a8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006c45ac  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006c45b0  00 80 8d e5                                      str r8, [sp]
006c45b4  04 c0 8d e5                                      str ip, [sp, #4]
006c45b8  ec fe ff eb                                      bl #0x6c4170
006c45bc  00 00 50 e3                                      cmp r0, #0
006c45c0  1b 03 00 0a                                      beq #0x6c5234
006c45c4  00 10 95 e5                                      ldr r1, [r5]
006c45c8  7c c0 9d e5                                      ldr ip, [sp, #0x7c]
006c45cc  4c 10 8d e5                                      str r1, [sp, #0x4c]
006c45d0  04 20 95 e5                                      ldr r2, [r5, #4]
006c45d4  4c 90 9d e5                                      ldr sb, [sp, #0x4c]
006c45d8  50 20 8d e5                                      str r2, [sp, #0x50]
006c45dc  08 30 95 e5                                      ldr r3, [r5, #8]
006c45e0  58 c0 8d e5                                      str ip, [sp, #0x58]
006c45e4  54 30 8d e5                                      str r3, [sp, #0x54]
006c45e8  14 10 95 e5                                      ldr r1, [r5, #0x14]
006c45ec  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006c45f0  10 a0 95 e5                                      ldr sl, [r5, #0x10]
006c45f4  1c 10 8d e5                                      str r1, [sp, #0x1c]
006c45f8  20 30 8d e5                                      str r3, [sp, #0x20]
006c45fc  44 20 8d e5                                      str r2, [sp, #0x44]
006c4600  01 30 a0 e3                                      mov r3, #1
006c4604  5c 30 8d e5                                      str r3, [sp, #0x5c]
006c4608  09 10 a0 e1                                      mov r1, sb
006c460c  66 27 f1 eb                                      bl #0x30e3ac
006c4610  44 10 9d e5                                      ldr r1, [sp, #0x44]
006c4614  00 80 a0 e1                                      mov r8, r0
006c4618  0a 00 a0 e1                                      mov r0, sl
006c461c  62 27 f1 eb                                      bl #0x30e3ac
006c4620  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c4624  00 a0 a0 e1                                      mov sl, r0
006c4628  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c462c  5e 27 f1 eb                                      bl #0x30e3ac
006c4630  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c4634  1c 00 8d e5                                      str r0, [sp, #0x1c]
006c4638  09 00 a0 e1                                      mov r0, sb
006c463c  5a 27 f1 eb                                      bl #0x30e3ac
006c4640  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c4644  34 00 8d e5                                      str r0, [sp, #0x34]
006c4648  44 00 9d e5                                      ldr r0, [sp, #0x44]
006c464c  56 27 f1 eb                                      bl #0x30e3ac
006c4650  30 10 9d e5                                      ldr r1, [sp, #0x30]
006c4654  38 00 8d e5                                      str r0, [sp, #0x38]
006c4658  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c465c  52 27 f1 eb                                      bl #0x30e3ac
006c4660  08 10 a0 e1                                      mov r1, r8
006c4664  40 00 8d e5                                      str r0, [sp, #0x40]
006c4668  08 00 a0 e1                                      mov r0, r8
006c466c  be 29 f1 eb                                      bl #0x30ed6c
006c4670  0a 10 a0 e1                                      mov r1, sl
006c4674  00 90 a0 e1                                      mov sb, r0
006c4678  0a 00 a0 e1                                      mov r0, sl
006c467c  ba 29 f1 eb                                      bl #0x30ed6c
006c4680  00 10 a0 e1                                      mov r1, r0
006c4684  09 00 a0 e1                                      mov r0, sb
006c4688  45 29 f1 eb                                      bl #0x30eba4
006c468c  00 90 a0 e1                                      mov sb, r0
006c4690  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c4694  00 10 a0 e1                                      mov r1, r0
006c4698  b3 29 f1 eb                                      bl #0x30ed6c
006c469c  00 10 a0 e1                                      mov r1, r0
006c46a0  09 00 a0 e1                                      mov r0, sb
006c46a4  3e 29 f1 eb                                      bl #0x30eba4
006c46a8  08 10 a0 e1                                      mov r1, r8
006c46ac  20 00 8d e5                                      str r0, [sp, #0x20]
006c46b0  0b 00 a0 e1                                      mov r0, fp
006c46b4  ac 29 f1 eb                                      bl #0x30ed6c
006c46b8  0a 10 a0 e1                                      mov r1, sl
006c46bc  00 90 a0 e1                                      mov sb, r0
006c46c0  06 00 a0 e1                                      mov r0, r6
006c46c4  a8 29 f1 eb                                      bl #0x30ed6c
006c46c8  00 10 a0 e1                                      mov r1, r0
006c46cc  09 00 a0 e1                                      mov r0, sb
006c46d0  33 29 f1 eb                                      bl #0x30eba4
006c46d4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c46d8  00 90 a0 e1                                      mov sb, r0
006c46dc  07 00 a0 e1                                      mov r0, r7
006c46e0  a1 29 f1 eb                                      bl #0x30ed6c
006c46e4  00 10 a0 e1                                      mov r1, r0
006c46e8  09 00 a0 e1                                      mov r0, sb
006c46ec  2c 29 f1 eb                                      bl #0x30eba4
006c46f0  34 10 9d e5                                      ldr r1, [sp, #0x34]
006c46f4  00 90 a0 e1                                      mov sb, r0
006c46f8  08 00 a0 e1                                      mov r0, r8
006c46fc  9a 29 f1 eb                                      bl #0x30ed6c
006c4700  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c4704  00 30 a0 e1                                      mov r3, r0
006c4708  0a 00 a0 e1                                      mov r0, sl
006c470c  14 30 8d e5                                      str r3, [sp, #0x14]
006c4710  95 29 f1 eb                                      bl #0x30ed6c
006c4714  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4718  00 10 a0 e1                                      mov r1, r0
006c471c  03 00 a0 e1                                      mov r0, r3
006c4720  1f 29 f1 eb                                      bl #0x30eba4
006c4724  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006c4728  00 30 a0 e1                                      mov r3, r0
006c472c  40 10 9d e5                                      ldr r1, [sp, #0x40]
006c4730  02 c1 8c e2                                      add ip, ip, #0x80000000
006c4734  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c4738  44 c0 8d e5                                      str ip, [sp, #0x44]
006c473c  14 30 8d e5                                      str r3, [sp, #0x14]
006c4740  89 29 f1 eb                                      bl #0x30ed6c
006c4744  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4748  00 10 a0 e1                                      mov r1, r0
006c474c  03 00 a0 e1                                      mov r0, r3
006c4750  13 29 f1 eb                                      bl #0x30eba4
006c4754  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c4758  2c 00 8d e5                                      str r0, [sp, #0x2c]
006c475c  44 00 9d e5                                      ldr r0, [sp, #0x44]
006c4760  81 29 f1 eb                                      bl #0x30ed6c
006c4764  09 10 a0 e1                                      mov r1, sb
006c4768  00 30 a0 e1                                      mov r3, r0
006c476c  09 00 a0 e1                                      mov r0, sb
006c4770  14 30 8d e5                                      str r3, [sp, #0x14]
006c4774  7c 29 f1 eb                                      bl #0x30ed6c
006c4778  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c477c  00 10 a0 e1                                      mov r1, r0
006c4780  03 00 a0 e1                                      mov r0, r3
006c4784  06 29 f1 eb                                      bl #0x30eba4
006c4788  34 10 9d e5                                      ldr r1, [sp, #0x34]
006c478c  00 c0 a0 e1                                      mov ip, r0
006c4790  0b 00 a0 e1                                      mov r0, fp
006c4794  0c c0 8d e5                                      str ip, [sp, #0xc]
006c4798  73 29 f1 eb                                      bl #0x30ed6c
006c479c  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c47a0  00 30 a0 e1                                      mov r3, r0
006c47a4  06 00 a0 e1                                      mov r0, r6
006c47a8  14 30 8d e5                                      str r3, [sp, #0x14]
006c47ac  6e 29 f1 eb                                      bl #0x30ed6c
006c47b0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c47b4  00 10 a0 e1                                      mov r1, r0
006c47b8  03 00 a0 e1                                      mov r0, r3
006c47bc  f8 28 f1 eb                                      bl #0x30eba4
006c47c0  40 10 9d e5                                      ldr r1, [sp, #0x40]
006c47c4  00 30 a0 e1                                      mov r3, r0
006c47c8  07 00 a0 e1                                      mov r0, r7
006c47cc  14 30 8d e5                                      str r3, [sp, #0x14]
006c47d0  65 29 f1 eb                                      bl #0x30ed6c
006c47d4  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c47d8  00 10 a0 e1                                      mov r1, r0
006c47dc  03 00 a0 e1                                      mov r0, r3
006c47e0  ef 28 f1 eb                                      bl #0x30eba4
006c47e4  00 10 a0 e1                                      mov r1, r0
006c47e8  ed 28 f1 eb                                      bl #0x30eba4
006c47ec  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c47f0  5d 29 f1 eb                                      bl #0x30ed6c
006c47f4  03 11 a0 e3                                      mov r1, #0xc0000000
006c47f8  00 30 a0 e1                                      mov r3, r0
006c47fc  09 00 a0 e1                                      mov r0, sb
006c4800  14 30 8d e5                                      str r3, [sp, #0x14]
006c4804  58 29 f1 eb                                      bl #0x30ed6c
006c4808  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006c480c  56 29 f1 eb                                      bl #0x30ed6c
006c4810  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4814  00 10 a0 e1                                      mov r1, r0
006c4818  03 00 a0 e1                                      mov r0, r3
006c481c  e0 28 f1 eb                                      bl #0x30eba4
006c4820  00 20 a0 e1                                      mov r2, r0
006c4824  34 00 9d e5                                      ldr r0, [sp, #0x34]
006c4828  10 20 8d e5                                      str r2, [sp, #0x10]
006c482c  00 10 a0 e1                                      mov r1, r0
006c4830  4d 29 f1 eb                                      bl #0x30ed6c
006c4834  00 30 a0 e1                                      mov r3, r0
006c4838  38 00 9d e5                                      ldr r0, [sp, #0x38]
006c483c  14 30 8d e5                                      str r3, [sp, #0x14]
006c4840  00 10 a0 e1                                      mov r1, r0
006c4844  48 29 f1 eb                                      bl #0x30ed6c
006c4848  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c484c  00 10 a0 e1                                      mov r1, r0
006c4850  03 00 a0 e1                                      mov r0, r3
006c4854  d2 28 f1 eb                                      bl #0x30eba4
006c4858  00 30 a0 e1                                      mov r3, r0
006c485c  40 00 9d e5                                      ldr r0, [sp, #0x40]
006c4860  14 30 8d e5                                      str r3, [sp, #0x14]
006c4864  00 10 a0 e1                                      mov r1, r0
006c4868  3f 29 f1 eb                                      bl #0x30ed6c
006c486c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4870  00 10 a0 e1                                      mov r1, r0
006c4874  03 00 a0 e1                                      mov r0, r3
006c4878  c9 28 f1 eb                                      bl #0x30eba4
006c487c  00 10 a0 e1                                      mov r1, r0
006c4880  fe 05 a0 e3                                      mov r0, #0x3f800000
006c4884  c8 26 f1 eb                                      bl #0x30e3ac
006c4888  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c488c  36 29 f1 eb                                      bl #0x30ed6c
006c4890  00 30 a0 e1                                      mov r3, r0
006c4894  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006c4898  14 30 8d e5                                      str r3, [sp, #0x14]
006c489c  00 10 a0 e1                                      mov r1, r0
006c48a0  31 29 f1 eb                                      bl #0x30ed6c
006c48a4  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c48a8  00 10 a0 e1                                      mov r1, r0
006c48ac  03 00 a0 e1                                      mov r0, r3
006c48b0  bb 28 f1 eb                                      bl #0x30eba4
006c48b4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006c48b8  00 30 a0 e1                                      mov r3, r0
006c48bc  10 20 9d e5                                      ldr r2, [sp, #0x10]
006c48c0  0c 10 a0 e1                                      mov r1, ip
006c48c4  58 c0 9d e5                                      ldr ip, [sp, #0x58]
006c48c8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006c48cc  00 c0 8d e5                                      str ip, [sp]
006c48d0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006c48d4  04 c0 8d e5                                      str ip, [sp, #4]
006c48d8  24 fe ff eb                                      bl #0x6c4170
006c48dc  00 00 50 e3                                      cmp r0, #0
006c48e0  0d 00 00 0a                                      beq #0x6c491c
006c48e4  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006c48e8  48 10 8d e5                                      str r1, [sp, #0x48]
006c48ec  48 00 9d e5                                      ldr r0, [sp, #0x48]
006c48f0  09 10 a0 e1                                      mov r1, sb
006c48f4  1c 29 f1 eb                                      bl #0x30ed6c
006c48f8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006c48fc  aa 26 f1 eb                                      bl #0x30e3ac
006c4900  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c4904  e2 28 f1 eb                                      bl #0x30ec94
006c4908  00 10 a0 e3                                      mov r1, #0
006c490c  00 90 a0 e1                                      mov sb, r0
006c4910  e7 26 f1 eb                                      bl #0x30e4b4
006c4914  00 00 50 e3                                      cmp r0, #0
006c4918  0f 03 00 1a                                      bne #0x6c555c
006c491c  58 30 9d e5                                      ldr r3, [sp, #0x58]
006c4920  48 30 8d e5                                      str r3, [sp, #0x48]
006c4924  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006c4928  18 00 95 e5                                      ldr r0, [r5, #0x18]
006c492c  03 10 a0 e1                                      mov r1, r3
006c4930  14 30 8d e5                                      str r3, [sp, #0x14]
006c4934  9c 26 f1 eb                                      bl #0x30e3ac
006c4938  10 20 95 e5                                      ldr r2, [r5, #0x10]
006c493c  00 80 a0 e1                                      mov r8, r0
006c4940  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
006c4944  02 10 a0 e1                                      mov r1, r2
006c4948  10 20 8d e5                                      str r2, [sp, #0x10]
006c494c  96 26 f1 eb                                      bl #0x30e3ac
006c4950  14 c0 95 e5                                      ldr ip, [r5, #0x14]
006c4954  00 a0 a0 e1                                      mov sl, r0
006c4958  20 00 95 e5                                      ldr r0, [r5, #0x20]
006c495c  0c 10 a0 e1                                      mov r1, ip
006c4960  0c c0 8d e5                                      str ip, [sp, #0xc]
006c4964  90 26 f1 eb                                      bl #0x30e3ac
006c4968  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c496c  00 90 a0 e1                                      mov sb, r0
006c4970  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c4974  03 00 a0 e1                                      mov r0, r3
006c4978  8b 26 f1 eb                                      bl #0x30e3ac
006c497c  10 20 9d e5                                      ldr r2, [sp, #0x10]
006c4980  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c4984  34 00 8d e5                                      str r0, [sp, #0x34]
006c4988  02 00 a0 e1                                      mov r0, r2
006c498c  86 26 f1 eb                                      bl #0x30e3ac
006c4990  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006c4994  30 10 9d e5                                      ldr r1, [sp, #0x30]
006c4998  38 00 8d e5                                      str r0, [sp, #0x38]
006c499c  0c 00 a0 e1                                      mov r0, ip
006c49a0  81 26 f1 eb                                      bl #0x30e3ac
006c49a4  08 10 a0 e1                                      mov r1, r8
006c49a8  40 00 8d e5                                      str r0, [sp, #0x40]
006c49ac  08 00 a0 e1                                      mov r0, r8
006c49b0  ed 28 f1 eb                                      bl #0x30ed6c
006c49b4  0a 10 a0 e1                                      mov r1, sl
006c49b8  00 30 a0 e1                                      mov r3, r0
006c49bc  0a 00 a0 e1                                      mov r0, sl
006c49c0  14 30 8d e5                                      str r3, [sp, #0x14]
006c49c4  e8 28 f1 eb                                      bl #0x30ed6c
006c49c8  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c49cc  00 10 a0 e1                                      mov r1, r0
006c49d0  03 00 a0 e1                                      mov r0, r3
006c49d4  72 28 f1 eb                                      bl #0x30eba4
006c49d8  09 10 a0 e1                                      mov r1, sb
006c49dc  00 30 a0 e1                                      mov r3, r0
006c49e0  09 00 a0 e1                                      mov r0, sb
006c49e4  14 30 8d e5                                      str r3, [sp, #0x14]
006c49e8  df 28 f1 eb                                      bl #0x30ed6c
006c49ec  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c49f0  00 10 a0 e1                                      mov r1, r0
006c49f4  03 00 a0 e1                                      mov r0, r3
006c49f8  69 28 f1 eb                                      bl #0x30eba4
006c49fc  08 10 a0 e1                                      mov r1, r8
006c4a00  1c 00 8d e5                                      str r0, [sp, #0x1c]
006c4a04  0b 00 a0 e1                                      mov r0, fp
006c4a08  d7 28 f1 eb                                      bl #0x30ed6c
006c4a0c  0a 10 a0 e1                                      mov r1, sl
006c4a10  00 30 a0 e1                                      mov r3, r0
006c4a14  06 00 a0 e1                                      mov r0, r6
006c4a18  14 30 8d e5                                      str r3, [sp, #0x14]
006c4a1c  d2 28 f1 eb                                      bl #0x30ed6c
006c4a20  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4a24  00 10 a0 e1                                      mov r1, r0
006c4a28  03 00 a0 e1                                      mov r0, r3
006c4a2c  5c 28 f1 eb                                      bl #0x30eba4
006c4a30  09 10 a0 e1                                      mov r1, sb
006c4a34  00 30 a0 e1                                      mov r3, r0
006c4a38  07 00 a0 e1                                      mov r0, r7
006c4a3c  14 30 8d e5                                      str r3, [sp, #0x14]
006c4a40  c9 28 f1 eb                                      bl #0x30ed6c
006c4a44  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4a48  00 10 a0 e1                                      mov r1, r0
006c4a4c  03 00 a0 e1                                      mov r0, r3
006c4a50  53 28 f1 eb                                      bl #0x30eba4
006c4a54  34 10 9d e5                                      ldr r1, [sp, #0x34]
006c4a58  20 00 8d e5                                      str r0, [sp, #0x20]
006c4a5c  08 00 a0 e1                                      mov r0, r8
006c4a60  c1 28 f1 eb                                      bl #0x30ed6c
006c4a64  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c4a68  00 30 a0 e1                                      mov r3, r0
006c4a6c  0a 00 a0 e1                                      mov r0, sl
006c4a70  14 30 8d e5                                      str r3, [sp, #0x14]
006c4a74  bc 28 f1 eb                                      bl #0x30ed6c
006c4a78  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4a7c  00 10 a0 e1                                      mov r1, r0
006c4a80  03 00 a0 e1                                      mov r0, r3
006c4a84  46 28 f1 eb                                      bl #0x30eba4
006c4a88  40 10 9d e5                                      ldr r1, [sp, #0x40]
006c4a8c  00 30 a0 e1                                      mov r3, r0
006c4a90  09 00 a0 e1                                      mov r0, sb
006c4a94  14 30 8d e5                                      str r3, [sp, #0x14]
006c4a98  b3 28 f1 eb                                      bl #0x30ed6c
006c4a9c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4aa0  00 10 a0 e1                                      mov r1, r0
006c4aa4  03 00 a0 e1                                      mov r0, r3
006c4aa8  3d 28 f1 eb                                      bl #0x30eba4
006c4aac  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c4ab0  2c 00 8d e5                                      str r0, [sp, #0x2c]
006c4ab4  44 00 9d e5                                      ldr r0, [sp, #0x44]
006c4ab8  ab 28 f1 eb                                      bl #0x30ed6c
006c4abc  00 30 a0 e1                                      mov r3, r0
006c4ac0  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c4ac4  14 30 8d e5                                      str r3, [sp, #0x14]
006c4ac8  00 10 a0 e1                                      mov r1, r0
006c4acc  a6 28 f1 eb                                      bl #0x30ed6c
006c4ad0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4ad4  00 10 a0 e1                                      mov r1, r0
006c4ad8  03 00 a0 e1                                      mov r0, r3
006c4adc  30 28 f1 eb                                      bl #0x30eba4
006c4ae0  34 10 9d e5                                      ldr r1, [sp, #0x34]
006c4ae4  00 c0 a0 e1                                      mov ip, r0
006c4ae8  0b 00 a0 e1                                      mov r0, fp
006c4aec  0c c0 8d e5                                      str ip, [sp, #0xc]
006c4af0  9d 28 f1 eb                                      bl #0x30ed6c
006c4af4  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c4af8  00 30 a0 e1                                      mov r3, r0
006c4afc  06 00 a0 e1                                      mov r0, r6
006c4b00  14 30 8d e5                                      str r3, [sp, #0x14]
006c4b04  98 28 f1 eb                                      bl #0x30ed6c
006c4b08  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4b0c  00 10 a0 e1                                      mov r1, r0
006c4b10  03 00 a0 e1                                      mov r0, r3
006c4b14  22 28 f1 eb                                      bl #0x30eba4
006c4b18  40 10 9d e5                                      ldr r1, [sp, #0x40]
006c4b1c  00 30 a0 e1                                      mov r3, r0
006c4b20  07 00 a0 e1                                      mov r0, r7
006c4b24  14 30 8d e5                                      str r3, [sp, #0x14]
006c4b28  8f 28 f1 eb                                      bl #0x30ed6c
006c4b2c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4b30  00 10 a0 e1                                      mov r1, r0
006c4b34  03 00 a0 e1                                      mov r0, r3
006c4b38  19 28 f1 eb                                      bl #0x30eba4
006c4b3c  00 10 a0 e1                                      mov r1, r0
006c4b40  17 28 f1 eb                                      bl #0x30eba4
006c4b44  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c4b48  87 28 f1 eb                                      bl #0x30ed6c
006c4b4c  03 11 a0 e3                                      mov r1, #0xc0000000
006c4b50  00 30 a0 e1                                      mov r3, r0
006c4b54  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c4b58  14 30 8d e5                                      str r3, [sp, #0x14]
006c4b5c  82 28 f1 eb                                      bl #0x30ed6c
006c4b60  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006c4b64  80 28 f1 eb                                      bl #0x30ed6c
006c4b68  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4b6c  00 10 a0 e1                                      mov r1, r0
006c4b70  03 00 a0 e1                                      mov r0, r3
006c4b74  0a 28 f1 eb                                      bl #0x30eba4
006c4b78  00 20 a0 e1                                      mov r2, r0
006c4b7c  34 00 9d e5                                      ldr r0, [sp, #0x34]
006c4b80  10 20 8d e5                                      str r2, [sp, #0x10]
006c4b84  00 10 a0 e1                                      mov r1, r0
006c4b88  77 28 f1 eb                                      bl #0x30ed6c
006c4b8c  00 30 a0 e1                                      mov r3, r0
006c4b90  38 00 9d e5                                      ldr r0, [sp, #0x38]
006c4b94  14 30 8d e5                                      str r3, [sp, #0x14]
006c4b98  00 10 a0 e1                                      mov r1, r0
006c4b9c  72 28 f1 eb                                      bl #0x30ed6c
006c4ba0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4ba4  00 10 a0 e1                                      mov r1, r0
006c4ba8  03 00 a0 e1                                      mov r0, r3
006c4bac  fc 27 f1 eb                                      bl #0x30eba4
006c4bb0  00 30 a0 e1                                      mov r3, r0
006c4bb4  40 00 9d e5                                      ldr r0, [sp, #0x40]
006c4bb8  14 30 8d e5                                      str r3, [sp, #0x14]
006c4bbc  00 10 a0 e1                                      mov r1, r0
006c4bc0  69 28 f1 eb                                      bl #0x30ed6c
006c4bc4  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4bc8  00 10 a0 e1                                      mov r1, r0
006c4bcc  03 00 a0 e1                                      mov r0, r3
006c4bd0  f3 27 f1 eb                                      bl #0x30eba4
006c4bd4  00 10 a0 e1                                      mov r1, r0
006c4bd8  fe 05 a0 e3                                      mov r0, #0x3f800000
006c4bdc  f2 25 f1 eb                                      bl #0x30e3ac
006c4be0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c4be4  60 28 f1 eb                                      bl #0x30ed6c
006c4be8  00 30 a0 e1                                      mov r3, r0
006c4bec  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006c4bf0  14 30 8d e5                                      str r3, [sp, #0x14]
006c4bf4  00 10 a0 e1                                      mov r1, r0
006c4bf8  5b 28 f1 eb                                      bl #0x30ed6c
006c4bfc  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4c00  00 10 a0 e1                                      mov r1, r0
006c4c04  03 00 a0 e1                                      mov r0, r3
006c4c08  e5 27 f1 eb                                      bl #0x30eba4
006c4c0c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006c4c10  00 30 a0 e1                                      mov r3, r0
006c4c14  10 20 9d e5                                      ldr r2, [sp, #0x10]
006c4c18  0c 10 a0 e1                                      mov r1, ip
006c4c1c  48 c0 9d e5                                      ldr ip, [sp, #0x48]
006c4c20  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006c4c24  00 c0 8d e5                                      str ip, [sp]
006c4c28  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006c4c2c  04 c0 8d e5                                      str ip, [sp, #4]
006c4c30  4e fd ff eb                                      bl #0x6c4170
006c4c34  00 00 50 e3                                      cmp r0, #0
006c4c38  0d 00 00 0a                                      beq #0x6c4c74
006c4c3c  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006c4c40  34 10 8d e5                                      str r1, [sp, #0x34]
006c4c44  34 00 9d e5                                      ldr r0, [sp, #0x34]
006c4c48  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c4c4c  46 28 f1 eb                                      bl #0x30ed6c
006c4c50  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006c4c54  d4 25 f1 eb                                      bl #0x30e3ac
006c4c58  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c4c5c  0c 28 f1 eb                                      bl #0x30ec94
006c4c60  00 10 a0 e3                                      mov r1, #0
006c4c64  1c 00 8d e5                                      str r0, [sp, #0x1c]
006c4c68  11 26 f1 eb                                      bl #0x30e4b4
006c4c6c  00 00 50 e3                                      cmp r0, #0
006c4c70  1f 02 00 1a                                      bne #0x6c54f4
006c4c74  48 30 9d e5                                      ldr r3, [sp, #0x48]
006c4c78  34 30 8d e5                                      str r3, [sp, #0x34]
006c4c7c  18 80 95 e5                                      ldr r8, [r5, #0x18]
006c4c80  00 00 95 e5                                      ldr r0, [r5]
006c4c84  08 10 a0 e1                                      mov r1, r8
006c4c88  c7 25 f1 eb                                      bl #0x30e3ac
006c4c8c  1c 00 8d e5                                      str r0, [sp, #0x1c]
006c4c90  1c a0 95 e5                                      ldr sl, [r5, #0x1c]
006c4c94  04 00 95 e5                                      ldr r0, [r5, #4]
006c4c98  0a 10 a0 e1                                      mov r1, sl
006c4c9c  c2 25 f1 eb                                      bl #0x30e3ac
006c4ca0  20 00 8d e5                                      str r0, [sp, #0x20]
006c4ca4  20 90 95 e5                                      ldr sb, [r5, #0x20]
006c4ca8  08 00 95 e5                                      ldr r0, [r5, #8]
006c4cac  09 10 a0 e1                                      mov r1, sb
006c4cb0  bd 25 f1 eb                                      bl #0x30e3ac
006c4cb4  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c4cb8  2c 00 8d e5                                      str r0, [sp, #0x2c]
006c4cbc  08 00 a0 e1                                      mov r0, r8
006c4cc0  b9 25 f1 eb                                      bl #0x30e3ac
006c4cc4  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c4cc8  38 00 8d e5                                      str r0, [sp, #0x38]
006c4ccc  0a 00 a0 e1                                      mov r0, sl
006c4cd0  b5 25 f1 eb                                      bl #0x30e3ac
006c4cd4  30 10 9d e5                                      ldr r1, [sp, #0x30]
006c4cd8  28 00 8d e5                                      str r0, [sp, #0x28]
006c4cdc  09 00 a0 e1                                      mov r0, sb
006c4ce0  b1 25 f1 eb                                      bl #0x30e3ac
006c4ce4  00 90 a0 e1                                      mov sb, r0
006c4ce8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c4cec  00 10 a0 e1                                      mov r1, r0
006c4cf0  1d 28 f1 eb                                      bl #0x30ed6c
006c4cf4  00 80 a0 e1                                      mov r8, r0
006c4cf8  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c4cfc  00 10 a0 e1                                      mov r1, r0
006c4d00  19 28 f1 eb                                      bl #0x30ed6c
006c4d04  00 10 a0 e1                                      mov r1, r0
006c4d08  08 00 a0 e1                                      mov r0, r8
006c4d0c  a4 27 f1 eb                                      bl #0x30eba4
006c4d10  00 80 a0 e1                                      mov r8, r0
006c4d14  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006c4d18  00 10 a0 e1                                      mov r1, r0
006c4d1c  12 28 f1 eb                                      bl #0x30ed6c
006c4d20  00 10 a0 e1                                      mov r1, r0
006c4d24  08 00 a0 e1                                      mov r0, r8
006c4d28  9d 27 f1 eb                                      bl #0x30eba4
006c4d2c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c4d30  24 00 8d e5                                      str r0, [sp, #0x24]
006c4d34  0b 00 a0 e1                                      mov r0, fp
006c4d38  0b 28 f1 eb                                      bl #0x30ed6c
006c4d3c  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c4d40  00 80 a0 e1                                      mov r8, r0
006c4d44  06 00 a0 e1                                      mov r0, r6
006c4d48  07 28 f1 eb                                      bl #0x30ed6c
006c4d4c  00 10 a0 e1                                      mov r1, r0
006c4d50  08 00 a0 e1                                      mov r0, r8
006c4d54  92 27 f1 eb                                      bl #0x30eba4
006c4d58  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006c4d5c  00 80 a0 e1                                      mov r8, r0
006c4d60  07 00 a0 e1                                      mov r0, r7
006c4d64  00 28 f1 eb                                      bl #0x30ed6c
006c4d68  00 10 a0 e1                                      mov r1, r0
006c4d6c  08 00 a0 e1                                      mov r0, r8
006c4d70  8b 27 f1 eb                                      bl #0x30eba4
006c4d74  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c4d78  00 80 a0 e1                                      mov r8, r0
006c4d7c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c4d80  f9 27 f1 eb                                      bl #0x30ed6c
006c4d84  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c4d88  00 a0 a0 e1                                      mov sl, r0
006c4d8c  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c4d90  f5 27 f1 eb                                      bl #0x30ed6c
006c4d94  00 10 a0 e1                                      mov r1, r0
006c4d98  0a 00 a0 e1                                      mov r0, sl
006c4d9c  80 27 f1 eb                                      bl #0x30eba4
006c4da0  09 10 a0 e1                                      mov r1, sb
006c4da4  00 a0 a0 e1                                      mov sl, r0
006c4da8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006c4dac  ee 27 f1 eb                                      bl #0x30ed6c
006c4db0  00 10 a0 e1                                      mov r1, r0
006c4db4  0a 00 a0 e1                                      mov r0, sl
006c4db8  79 27 f1 eb                                      bl #0x30eba4
006c4dbc  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c4dc0  00 a0 a0 e1                                      mov sl, r0
006c4dc4  44 00 9d e5                                      ldr r0, [sp, #0x44]
006c4dc8  e7 27 f1 eb                                      bl #0x30ed6c
006c4dcc  08 10 a0 e1                                      mov r1, r8
006c4dd0  00 30 a0 e1                                      mov r3, r0
006c4dd4  08 00 a0 e1                                      mov r0, r8
006c4dd8  14 30 8d e5                                      str r3, [sp, #0x14]
006c4ddc  e2 27 f1 eb                                      bl #0x30ed6c
006c4de0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c4de4  00 10 a0 e1                                      mov r1, r0
006c4de8  03 00 a0 e1                                      mov r0, r3
006c4dec  6c 27 f1 eb                                      bl #0x30eba4
006c4df0  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c4df4  00 20 a0 e1                                      mov r2, r0
006c4df8  0b 00 a0 e1                                      mov r0, fp
006c4dfc  10 20 8d e5                                      str r2, [sp, #0x10]
006c4e00  d9 27 f1 eb                                      bl #0x30ed6c
006c4e04  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c4e08  00 b0 a0 e1                                      mov fp, r0
006c4e0c  06 00 a0 e1                                      mov r0, r6
006c4e10  d5 27 f1 eb                                      bl #0x30ed6c
006c4e14  00 10 a0 e1                                      mov r1, r0
006c4e18  0b 00 a0 e1                                      mov r0, fp
006c4e1c  60 27 f1 eb                                      bl #0x30eba4
006c4e20  09 10 a0 e1                                      mov r1, sb
006c4e24  00 60 a0 e1                                      mov r6, r0
006c4e28  07 00 a0 e1                                      mov r0, r7
006c4e2c  ce 27 f1 eb                                      bl #0x30ed6c
006c4e30  00 10 a0 e1                                      mov r1, r0
006c4e34  06 00 a0 e1                                      mov r0, r6
006c4e38  59 27 f1 eb                                      bl #0x30eba4
006c4e3c  00 10 a0 e1                                      mov r1, r0
006c4e40  57 27 f1 eb                                      bl #0x30eba4
006c4e44  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c4e48  c7 27 f1 eb                                      bl #0x30ed6c
006c4e4c  03 11 a0 e3                                      mov r1, #0xc0000000
006c4e50  00 60 a0 e1                                      mov r6, r0
006c4e54  08 00 a0 e1                                      mov r0, r8
006c4e58  c3 27 f1 eb                                      bl #0x30ed6c
006c4e5c  0a 10 a0 e1                                      mov r1, sl
006c4e60  c1 27 f1 eb                                      bl #0x30ed6c
006c4e64  00 10 a0 e1                                      mov r1, r0
006c4e68  06 00 a0 e1                                      mov r0, r6
006c4e6c  4c 27 f1 eb                                      bl #0x30eba4
006c4e70  00 70 a0 e1                                      mov r7, r0
006c4e74  38 00 9d e5                                      ldr r0, [sp, #0x38]
006c4e78  00 10 a0 e1                                      mov r1, r0
006c4e7c  ba 27 f1 eb                                      bl #0x30ed6c
006c4e80  00 60 a0 e1                                      mov r6, r0
006c4e84  28 00 9d e5                                      ldr r0, [sp, #0x28]
006c4e88  00 10 a0 e1                                      mov r1, r0
006c4e8c  b6 27 f1 eb                                      bl #0x30ed6c
006c4e90  00 10 a0 e1                                      mov r1, r0
006c4e94  06 00 a0 e1                                      mov r0, r6
006c4e98  41 27 f1 eb                                      bl #0x30eba4
006c4e9c  09 10 a0 e1                                      mov r1, sb
006c4ea0  00 60 a0 e1                                      mov r6, r0
006c4ea4  09 00 a0 e1                                      mov r0, sb
006c4ea8  af 27 f1 eb                                      bl #0x30ed6c
006c4eac  00 10 a0 e1                                      mov r1, r0
006c4eb0  06 00 a0 e1                                      mov r0, r6
006c4eb4  3a 27 f1 eb                                      bl #0x30eba4
006c4eb8  00 10 a0 e1                                      mov r1, r0
006c4ebc  fe 05 a0 e3                                      mov r0, #0x3f800000
006c4ec0  39 25 f1 eb                                      bl #0x30e3ac
006c4ec4  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c4ec8  a7 27 f1 eb                                      bl #0x30ed6c
006c4ecc  0a 10 a0 e1                                      mov r1, sl
006c4ed0  00 60 a0 e1                                      mov r6, r0
006c4ed4  0a 00 a0 e1                                      mov r0, sl
006c4ed8  a3 27 f1 eb                                      bl #0x30ed6c
006c4edc  00 10 a0 e1                                      mov r1, r0
006c4ee0  06 00 a0 e1                                      mov r0, r6
006c4ee4  2e 27 f1 eb                                      bl #0x30eba4
006c4ee8  34 c0 9d e5                                      ldr ip, [sp, #0x34]
006c4eec  10 20 9d e5                                      ldr r2, [sp, #0x10]
006c4ef0  00 30 a0 e1                                      mov r3, r0
006c4ef4  00 c0 8d e5                                      str ip, [sp]
006c4ef8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006c4efc  02 10 a0 e1                                      mov r1, r2
006c4f00  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006c4f04  07 20 a0 e1                                      mov r2, r7
006c4f08  04 c0 8d e5                                      str ip, [sp, #4]
006c4f0c  97 fc ff eb                                      bl #0x6c4170
006c4f10  00 00 50 e3                                      cmp r0, #0
006c4f14  72 01 00 0a                                      beq #0x6c54e4
006c4f18  7c 60 9d e5                                      ldr r6, [sp, #0x7c]
006c4f1c  08 10 a0 e1                                      mov r1, r8
006c4f20  06 00 a0 e1                                      mov r0, r6
006c4f24  90 27 f1 eb                                      bl #0x30ed6c
006c4f28  0a 10 a0 e1                                      mov r1, sl
006c4f2c  1e 25 f1 eb                                      bl #0x30e3ac
006c4f30  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c4f34  56 27 f1 eb                                      bl #0x30ec94
006c4f38  00 10 a0 e3                                      mov r1, #0
006c4f3c  00 70 a0 e1                                      mov r7, r0
006c4f40  5b 25 f1 eb                                      bl #0x30e4b4
006c4f44  00 00 50 e3                                      cmp r0, #0
006c4f48  65 01 00 0a                                      beq #0x6c54e4
006c4f4c  07 00 a0 e1                                      mov r0, r7
006c4f50  fe 15 a0 e3                                      mov r1, #0x3f800000
006c4f54  94 26 f1 eb                                      bl #0x30e9ac
006c4f58  00 00 50 e3                                      cmp r0, #0
006c4f5c  60 01 00 0a                                      beq #0x6c54e4
006c4f60  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c4f64  07 00 a0 e1                                      mov r0, r7
006c4f68  7f 27 f1 eb                                      bl #0x30ed6c
006c4f6c  18 10 95 e5                                      ldr r1, [r5, #0x18]
006c4f70  0b 27 f1 eb                                      bl #0x30eba4
006c4f74  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c4f78  4c 00 8d e5                                      str r0, [sp, #0x4c]
006c4f7c  07 00 a0 e1                                      mov r0, r7
006c4f80  79 27 f1 eb                                      bl #0x30ed6c
006c4f84  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
006c4f88  05 27 f1 eb                                      bl #0x30eba4
006c4f8c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006c4f90  50 00 8d e5                                      str r0, [sp, #0x50]
006c4f94  07 00 a0 e1                                      mov r0, r7
006c4f98  73 27 f1 eb                                      bl #0x30ed6c
006c4f9c  20 10 95 e5                                      ldr r1, [r5, #0x20]
006c4fa0  ff 26 f1 eb                                      bl #0x30eba4
006c4fa4  34 60 8d e5                                      str r6, [sp, #0x34]
006c4fa8  54 00 8d e5                                      str r0, [sp, #0x54]
006c4fac  24 00 94 e5                                      ldr r0, [r4, #0x24]
006c4fb0  28 80 94 e5                                      ldr r8, [r4, #0x28]
006c4fb4  2c 60 94 e5                                      ldr r6, [r4, #0x2c]
006c4fb8  00 10 a0 e1                                      mov r1, r0
006c4fbc  6a 27 f1 eb                                      bl #0x30ed6c
006c4fc0  08 10 a0 e1                                      mov r1, r8
006c4fc4  00 70 a0 e1                                      mov r7, r0
006c4fc8  08 00 a0 e1                                      mov r0, r8
006c4fcc  66 27 f1 eb                                      bl #0x30ed6c
006c4fd0  00 10 a0 e1                                      mov r1, r0
006c4fd4  07 00 a0 e1                                      mov r0, r7
006c4fd8  f1 26 f1 eb                                      bl #0x30eba4
006c4fdc  06 10 a0 e1                                      mov r1, r6
006c4fe0  00 70 a0 e1                                      mov r7, r0
006c4fe4  06 00 a0 e1                                      mov r0, r6
006c4fe8  5f 27 f1 eb                                      bl #0x30ed6c
006c4fec  00 10 a0 e1                                      mov r1, r0
006c4ff0  07 00 a0 e1                                      mov r0, r7
006c4ff4  ea 26 f1 eb                                      bl #0x30eba4
006c4ff8  29 26 f1 eb                                      bl #0x30e8a4
006c4ffc  6f 24 f1 eb                                      bl #0x30e1c0
006c5000  a6 25 f1 eb                                      bl #0x30e6a0
006c5004  00 10 a0 e1                                      mov r1, r0
006c5008  34 00 9d e5                                      ldr r0, [sp, #0x34]
006c500c  56 27 f1 eb                                      bl #0x30ed6c
006c5010  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
006c5014  00 60 a0 e1                                      mov r6, r0
006c5018  00 00 53 e3                                      cmp r3, #0
006c501c  04 00 00 0a                                      beq #0x6c5034
006c5020  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006c5024  06 10 a0 e1                                      mov r1, r6
006c5028  b2 24 f1 eb                                      bl #0x30e2f8
006c502c  00 00 50 e3                                      cmp r0, #0
006c5030  1d 00 00 0a                                      beq #0x6c50ac
006c5034  4c 60 84 e5                                      str r6, [r4, #0x4c]
006c5038  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
006c503c  50 20 84 e5                                      str r2, [r4, #0x50]
006c5040  50 30 9d e5                                      ldr r3, [sp, #0x50]
006c5044  80 20 94 e5                                      ldr r2, [r4, #0x80]
006c5048  54 30 84 e5                                      str r3, [r4, #0x54]
006c504c  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006c5050  01 30 a0 e3                                      mov r3, #1
006c5054  48 30 c4 e5                                      strb r3, [r4, #0x48]
006c5058  58 c0 84 e5                                      str ip, [r4, #0x58]
006c505c  00 30 95 e5                                      ldr r3, [r5]
006c5060  01 20 82 e2                                      add r2, r2, #1
006c5064  5c 30 84 e5                                      str r3, [r4, #0x5c]
006c5068  04 30 95 e5                                      ldr r3, [r5, #4]
006c506c  60 30 84 e5                                      str r3, [r4, #0x60]
006c5070  08 30 95 e5                                      ldr r3, [r5, #8]
006c5074  64 30 84 e5                                      str r3, [r4, #0x64]
006c5078  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006c507c  68 30 84 e5                                      str r3, [r4, #0x68]
006c5080  10 30 95 e5                                      ldr r3, [r5, #0x10]
006c5084  6c 30 84 e5                                      str r3, [r4, #0x6c]
006c5088  14 30 95 e5                                      ldr r3, [r5, #0x14]
006c508c  70 30 84 e5                                      str r3, [r4, #0x70]
006c5090  18 30 95 e5                                      ldr r3, [r5, #0x18]
006c5094  74 30 84 e5                                      str r3, [r4, #0x74]
006c5098  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
006c509c  78 30 84 e5                                      str r3, [r4, #0x78]
006c50a0  20 30 95 e5                                      ldr r3, [r5, #0x20]
006c50a4  80 20 84 e5                                      str r2, [r4, #0x80]
006c50a8  7c 30 84 e5                                      str r3, [r4, #0x7c]
006c50ac  84 d0 8d e2                                      add sp, sp, #0x84
006c50b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c50b4  03 10 a0 e1                                      mov r1, r3
006c50b8  fe 05 a0 e3                                      mov r0, #0x3f800000
006c50bc  f4 26 f1 eb                                      bl #0x30ec94
006c50c0  20 00 8d e5                                      str r0, [sp, #0x20]
006c50c4  bf 04 a0 e3                                      mov r0, #0xbf000000
006c50c8  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c50cc  02 05 80 e2                                      add r0, r0, #0x800000
006c50d0  b5 24 f1 eb                                      bl #0x30e3ac
006c50d4  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c50d8  23 27 f1 eb                                      bl #0x30ed6c
006c50dc  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c50e0  1c 00 8d e5                                      str r0, [sp, #0x1c]
006c50e4  fe 05 a0 e3                                      mov r0, #0x3f800000
006c50e8  af 24 f1 eb                                      bl #0x30e3ac
006c50ec  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c50f0  1d 27 f1 eb                                      bl #0x30ed6c
006c50f4  00 10 a0 e1                                      mov r1, r0
006c50f8  18 00 8d e5                                      str r0, [sp, #0x18]
006c50fc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c5100  7c 24 f1 eb                                      bl #0x30e2f8
006c5104  00 00 50 e3                                      cmp r0, #0
006c5108  1c 10 9d 05                                      ldreq r1, [sp, #0x1c]
006c510c  18 30 9d e5                                      ldr r3, [sp, #0x18]
006c5110  18 10 8d 05                                      streq r1, [sp, #0x18]
006c5114  18 00 9d e5                                      ldr r0, [sp, #0x18]
006c5118  fe 15 a0 e3                                      mov r1, #0x3f800000
006c511c  1c 30 8d 05                                      streq r3, [sp, #0x1c]
006c5120  74 24 f1 eb                                      bl #0x30e2f8
006c5124  00 00 50 e3                                      cmp r0, #0
006c5128  df ff ff 1a                                      bne #0x6c50ac
006c512c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c5130  00 10 a0 e3                                      mov r1, #0
006c5134  74 25 f1 eb                                      bl #0x30e70c
006c5138  00 00 50 e3                                      cmp r0, #0
006c513c  da ff ff 1a                                      bne #0x6c50ac
006c5140  18 00 9d e5                                      ldr r0, [sp, #0x18]
006c5144  00 10 a0 e3                                      mov r1, #0
006c5148  6f 25 f1 eb                                      bl #0x30e70c
006c514c  00 00 50 e3                                      cmp r0, #0
006c5150  00 20 a0 13                                      movne r2, #0
006c5154  18 20 8d 15                                      strne r2, [sp, #0x18]
006c5158  05 00 00 1a                                      bne #0x6c5174
006c515c  18 00 9d e5                                      ldr r0, [sp, #0x18]
006c5160  fe 15 a0 e3                                      mov r1, #0x3f800000
006c5164  68 25 f1 eb                                      bl #0x30e70c
006c5168  00 00 50 e3                                      cmp r0, #0
006c516c  fe 35 a0 03                                      moveq r3, #0x3f800000
006c5170  18 30 8d 05                                      streq r3, [sp, #0x18]
006c5174  09 10 a0 e1                                      mov r1, sb
006c5178  24 00 9d e5                                      ldr r0, [sp, #0x24]
006c517c  8a 24 f1 eb                                      bl #0x30e3ac
006c5180  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c5184  00 90 a0 e1                                      mov sb, r0
006c5188  0b 00 a0 e1                                      mov r0, fp
006c518c  f6 26 f1 eb                                      bl #0x30ed6c
006c5190  00 10 a0 e1                                      mov r1, r0
006c5194  09 00 a0 e1                                      mov r0, sb
006c5198  81 26 f1 eb                                      bl #0x30eba4
006c519c  0a 10 a0 e1                                      mov r1, sl
006c51a0  70 00 8d e5                                      str r0, [sp, #0x70]
006c51a4  28 00 9d e5                                      ldr r0, [sp, #0x28]
006c51a8  7f 24 f1 eb                                      bl #0x30e3ac
006c51ac  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c51b0  00 a0 a0 e1                                      mov sl, r0
006c51b4  06 00 a0 e1                                      mov r0, r6
006c51b8  eb 26 f1 eb                                      bl #0x30ed6c
006c51bc  00 10 a0 e1                                      mov r1, r0
006c51c0  0a 00 a0 e1                                      mov r0, sl
006c51c4  76 26 f1 eb                                      bl #0x30eba4
006c51c8  08 10 a0 e1                                      mov r1, r8
006c51cc  74 00 8d e5                                      str r0, [sp, #0x74]
006c51d0  30 00 9d e5                                      ldr r0, [sp, #0x30]
006c51d4  74 24 f1 eb                                      bl #0x30e3ac
006c51d8  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c51dc  00 60 a0 e1                                      mov r6, r0
006c51e0  07 00 a0 e1                                      mov r0, r7
006c51e4  e0 26 f1 eb                                      bl #0x30ed6c
006c51e8  00 10 a0 e1                                      mov r1, r0
006c51ec  06 00 a0 e1                                      mov r0, r6
006c51f0  6b 26 f1 eb                                      bl #0x30eba4
006c51f4  70 10 8d e2                                      add r1, sp, #0x70
006c51f8  78 00 8d e5                                      str r0, [sp, #0x78]
006c51fc  05 00 a0 e1                                      mov r0, r5
006c5200  e6 fa ff eb                                      bl #0x6c3da0
006c5204  00 00 50 e3                                      cmp r0, #0
006c5208  fe 00 00 1a                                      bne #0x6c5608
006c520c  3c c0 94 e5                                      ldr ip, [r4, #0x3c]
006c5210  24 c0 8d e5                                      str ip, [sp, #0x24]
006c5214  40 10 94 e5                                      ldr r1, [r4, #0x40]
006c5218  28 10 8d e5                                      str r1, [sp, #0x28]
006c521c  44 20 94 e5                                      ldr r2, [r4, #0x44]
006c5220  30 20 8d e5                                      str r2, [sp, #0x30]
006c5224  24 b0 94 e5                                      ldr fp, [r4, #0x24]
006c5228  28 60 94 e5                                      ldr r6, [r4, #0x28]
006c522c  2c 70 94 e5                                      ldr r7, [r4, #0x2c]
006c5230  80 fc ff ea                                      b #0x6c4438
006c5234  0c a0 95 e5                                      ldr sl, [r5, #0xc]
006c5238  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c523c  10 90 95 e5                                      ldr sb, [r5, #0x10]
006c5240  0a 00 a0 e1                                      mov r0, sl
006c5244  58 24 f1 eb                                      bl #0x30e3ac
006c5248  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c524c  00 30 a0 e1                                      mov r3, r0
006c5250  09 00 a0 e1                                      mov r0, sb
006c5254  14 30 8d e5                                      str r3, [sp, #0x14]
006c5258  53 24 f1 eb                                      bl #0x30e3ac
006c525c  30 10 9d e5                                      ldr r1, [sp, #0x30]
006c5260  00 20 a0 e1                                      mov r2, r0
006c5264  14 00 95 e5                                      ldr r0, [r5, #0x14]
006c5268  10 20 8d e5                                      str r2, [sp, #0x10]
006c526c  4e 24 f1 eb                                      bl #0x30e3ac
006c5270  0a 10 a0 e1                                      mov r1, sl
006c5274  00 c0 a0 e1                                      mov ip, r0
006c5278  24 00 9d e5                                      ldr r0, [sp, #0x24]
006c527c  0c c0 8d e5                                      str ip, [sp, #0xc]
006c5280  49 24 f1 eb                                      bl #0x30e3ac
006c5284  00 10 a0 e1                                      mov r1, r0
006c5288  0b 00 a0 e1                                      mov r0, fp
006c528c  b6 26 f1 eb                                      bl #0x30ed6c
006c5290  09 10 a0 e1                                      mov r1, sb
006c5294  00 a0 a0 e1                                      mov sl, r0
006c5298  28 00 9d e5                                      ldr r0, [sp, #0x28]
006c529c  42 24 f1 eb                                      bl #0x30e3ac
006c52a0  00 10 a0 e1                                      mov r1, r0
006c52a4  06 00 a0 e1                                      mov r0, r6
006c52a8  af 26 f1 eb                                      bl #0x30ed6c
006c52ac  00 10 a0 e1                                      mov r1, r0
006c52b0  0a 00 a0 e1                                      mov r0, sl
006c52b4  3a 26 f1 eb                                      bl #0x30eba4
006c52b8  14 10 95 e5                                      ldr r1, [r5, #0x14]
006c52bc  00 a0 a0 e1                                      mov sl, r0
006c52c0  30 00 9d e5                                      ldr r0, [sp, #0x30]
006c52c4  38 24 f1 eb                                      bl #0x30e3ac
006c52c8  00 10 a0 e1                                      mov r1, r0
006c52cc  07 00 a0 e1                                      mov r0, r7
006c52d0  a5 26 f1 eb                                      bl #0x30ed6c
006c52d4  00 10 a0 e1                                      mov r1, r0
006c52d8  0a 00 a0 e1                                      mov r0, sl
006c52dc  30 26 f1 eb                                      bl #0x30eba4
006c52e0  00 10 a0 e1                                      mov r1, r0
006c52e4  2e 26 f1 eb                                      bl #0x30eba4
006c52e8  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c52ec  00 90 a0 e1                                      mov sb, r0
006c52f0  03 10 a0 e1                                      mov r1, r3
006c52f4  03 00 a0 e1                                      mov r0, r3
006c52f8  9b 26 f1 eb                                      bl #0x30ed6c
006c52fc  10 20 9d e5                                      ldr r2, [sp, #0x10]
006c5300  00 a0 a0 e1                                      mov sl, r0
006c5304  02 10 a0 e1                                      mov r1, r2
006c5308  02 00 a0 e1                                      mov r0, r2
006c530c  96 26 f1 eb                                      bl #0x30ed6c
006c5310  00 10 a0 e1                                      mov r1, r0
006c5314  0a 00 a0 e1                                      mov r0, sl
006c5318  21 26 f1 eb                                      bl #0x30eba4
006c531c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006c5320  00 a0 a0 e1                                      mov sl, r0
006c5324  0c 10 a0 e1                                      mov r1, ip
006c5328  0c 00 a0 e1                                      mov r0, ip
006c532c  8e 26 f1 eb                                      bl #0x30ed6c
006c5330  00 10 a0 e1                                      mov r1, r0
006c5334  0a 00 a0 e1                                      mov r0, sl
006c5338  19 26 f1 eb                                      bl #0x30eba4
006c533c  08 10 a0 e1                                      mov r1, r8
006c5340  19 24 f1 eb                                      bl #0x30e3ac
006c5344  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006c5348  00 30 a0 e1                                      mov r3, r0
006c534c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006c5350  00 80 8d e5                                      str r8, [sp]
006c5354  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006c5358  09 20 a0 e1                                      mov r2, sb
006c535c  04 c0 8d e5                                      str ip, [sp, #4]
006c5360  82 fb ff eb                                      bl #0x6c4170
006c5364  00 00 50 e3                                      cmp r0, #0
006c5368  95 00 00 1a                                      bne #0x6c55c4
006c536c  18 a0 95 e5                                      ldr sl, [r5, #0x18]
006c5370  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c5374  1c 90 95 e5                                      ldr sb, [r5, #0x1c]
006c5378  0a 00 a0 e1                                      mov r0, sl
006c537c  0a 24 f1 eb                                      bl #0x30e3ac
006c5380  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c5384  00 30 a0 e1                                      mov r3, r0
006c5388  09 00 a0 e1                                      mov r0, sb
006c538c  14 30 8d e5                                      str r3, [sp, #0x14]
006c5390  05 24 f1 eb                                      bl #0x30e3ac
006c5394  30 10 9d e5                                      ldr r1, [sp, #0x30]
006c5398  00 20 a0 e1                                      mov r2, r0
006c539c  20 00 95 e5                                      ldr r0, [r5, #0x20]
006c53a0  10 20 8d e5                                      str r2, [sp, #0x10]
006c53a4  00 24 f1 eb                                      bl #0x30e3ac
006c53a8  0a 10 a0 e1                                      mov r1, sl
006c53ac  00 c0 a0 e1                                      mov ip, r0
006c53b0  24 00 9d e5                                      ldr r0, [sp, #0x24]
006c53b4  0c c0 8d e5                                      str ip, [sp, #0xc]
006c53b8  fb 23 f1 eb                                      bl #0x30e3ac
006c53bc  00 10 a0 e1                                      mov r1, r0
006c53c0  0b 00 a0 e1                                      mov r0, fp
006c53c4  68 26 f1 eb                                      bl #0x30ed6c
006c53c8  09 10 a0 e1                                      mov r1, sb
006c53cc  00 a0 a0 e1                                      mov sl, r0
006c53d0  28 00 9d e5                                      ldr r0, [sp, #0x28]
006c53d4  f4 23 f1 eb                                      bl #0x30e3ac
006c53d8  00 10 a0 e1                                      mov r1, r0
006c53dc  06 00 a0 e1                                      mov r0, r6
006c53e0  61 26 f1 eb                                      bl #0x30ed6c
006c53e4  00 10 a0 e1                                      mov r1, r0
006c53e8  0a 00 a0 e1                                      mov r0, sl
006c53ec  ec 25 f1 eb                                      bl #0x30eba4
006c53f0  20 10 95 e5                                      ldr r1, [r5, #0x20]
006c53f4  00 a0 a0 e1                                      mov sl, r0
006c53f8  30 00 9d e5                                      ldr r0, [sp, #0x30]
006c53fc  ea 23 f1 eb                                      bl #0x30e3ac
006c5400  00 10 a0 e1                                      mov r1, r0
006c5404  07 00 a0 e1                                      mov r0, r7
006c5408  57 26 f1 eb                                      bl #0x30ed6c
006c540c  00 10 a0 e1                                      mov r1, r0
006c5410  0a 00 a0 e1                                      mov r0, sl
006c5414  e2 25 f1 eb                                      bl #0x30eba4
006c5418  00 10 a0 e1                                      mov r1, r0
006c541c  e0 25 f1 eb                                      bl #0x30eba4
006c5420  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c5424  00 90 a0 e1                                      mov sb, r0
006c5428  03 10 a0 e1                                      mov r1, r3
006c542c  03 00 a0 e1                                      mov r0, r3
006c5430  4d 26 f1 eb                                      bl #0x30ed6c
006c5434  10 20 9d e5                                      ldr r2, [sp, #0x10]
006c5438  00 a0 a0 e1                                      mov sl, r0
006c543c  02 10 a0 e1                                      mov r1, r2
006c5440  02 00 a0 e1                                      mov r0, r2
006c5444  48 26 f1 eb                                      bl #0x30ed6c
006c5448  00 10 a0 e1                                      mov r1, r0
006c544c  0a 00 a0 e1                                      mov r0, sl
006c5450  d3 25 f1 eb                                      bl #0x30eba4
006c5454  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006c5458  00 a0 a0 e1                                      mov sl, r0
006c545c  0c 10 a0 e1                                      mov r1, ip
006c5460  0c 00 a0 e1                                      mov r0, ip
006c5464  40 26 f1 eb                                      bl #0x30ed6c
006c5468  00 10 a0 e1                                      mov r1, r0
006c546c  0a 00 a0 e1                                      mov r0, sl
006c5470  cb 25 f1 eb                                      bl #0x30eba4
006c5474  08 10 a0 e1                                      mov r1, r8
006c5478  cb 23 f1 eb                                      bl #0x30e3ac
006c547c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006c5480  00 30 a0 e1                                      mov r3, r0
006c5484  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006c5488  00 80 8d e5                                      str r8, [sp]
006c548c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006c5490  09 20 a0 e1                                      mov r2, sb
006c5494  04 c0 8d e5                                      str ip, [sp, #4]
006c5498  34 fb ff eb                                      bl #0x6c4170
006c549c  00 00 50 e3                                      cmp r0, #0
006c54a0  61 00 00 1a                                      bne #0x6c562c
006c54a4  00 10 a0 e3                                      mov r1, #0
006c54a8  4c 10 8d e5                                      str r1, [sp, #0x4c]
006c54ac  58 80 8d e5                                      str r8, [sp, #0x58]
006c54b0  5c 00 8d e5                                      str r0, [sp, #0x5c]
006c54b4  04 20 95 e5                                      ldr r2, [r5, #4]
006c54b8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006c54bc  00 90 95 e5                                      ldr sb, [r5]
006c54c0  10 a0 95 e5                                      ldr sl, [r5, #0x10]
006c54c4  44 20 8d e5                                      str r2, [sp, #0x44]
006c54c8  14 30 95 e5                                      ldr r3, [r5, #0x14]
006c54cc  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c54d0  08 c0 95 e5                                      ldr ip, [r5, #8]
006c54d4  50 10 8d e5                                      str r1, [sp, #0x50]
006c54d8  54 10 8d e5                                      str r1, [sp, #0x54]
006c54dc  20 c0 8d e5                                      str ip, [sp, #0x20]
006c54e0  48 fc ff ea                                      b #0x6c4608
006c54e4  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
006c54e8  00 00 51 e3                                      cmp r1, #0
006c54ec  ee fe ff 0a                                      beq #0x6c50ac
006c54f0  ad fe ff ea                                      b #0x6c4fac
006c54f4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c54f8  fe 15 a0 e3                                      mov r1, #0x3f800000
006c54fc  2a 25 f1 eb                                      bl #0x30e9ac
006c5500  00 00 50 e3                                      cmp r0, #0
006c5504  da fd ff 0a                                      beq #0x6c4c74
006c5508  08 10 a0 e1                                      mov r1, r8
006c550c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c5510  15 26 f1 eb                                      bl #0x30ed6c
006c5514  0c 10 95 e5                                      ldr r1, [r5, #0xc]
006c5518  a1 25 f1 eb                                      bl #0x30eba4
006c551c  0a 10 a0 e1                                      mov r1, sl
006c5520  4c 00 8d e5                                      str r0, [sp, #0x4c]
006c5524  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c5528  0f 26 f1 eb                                      bl #0x30ed6c
006c552c  10 10 95 e5                                      ldr r1, [r5, #0x10]
006c5530  9b 25 f1 eb                                      bl #0x30eba4
006c5534  09 10 a0 e1                                      mov r1, sb
006c5538  50 00 8d e5                                      str r0, [sp, #0x50]
006c553c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c5540  09 26 f1 eb                                      bl #0x30ed6c
006c5544  14 10 95 e5                                      ldr r1, [r5, #0x14]
006c5548  95 25 f1 eb                                      bl #0x30eba4
006c554c  01 20 a0 e3                                      mov r2, #1
006c5550  54 00 8d e5                                      str r0, [sp, #0x54]
006c5554  5c 20 8d e5                                      str r2, [sp, #0x5c]
006c5558  c7 fd ff ea                                      b #0x6c4c7c
006c555c  09 00 a0 e1                                      mov r0, sb
006c5560  fe 15 a0 e3                                      mov r1, #0x3f800000
006c5564  10 25 f1 eb                                      bl #0x30e9ac
006c5568  00 00 50 e3                                      cmp r0, #0
006c556c  ea fc ff 0a                                      beq #0x6c491c
006c5570  08 10 a0 e1                                      mov r1, r8
006c5574  09 00 a0 e1                                      mov r0, sb
006c5578  fb 25 f1 eb                                      bl #0x30ed6c
006c557c  00 10 95 e5                                      ldr r1, [r5]
006c5580  87 25 f1 eb                                      bl #0x30eba4
006c5584  0a 10 a0 e1                                      mov r1, sl
006c5588  4c 00 8d e5                                      str r0, [sp, #0x4c]
006c558c  09 00 a0 e1                                      mov r0, sb
006c5590  f5 25 f1 eb                                      bl #0x30ed6c
006c5594  04 10 95 e5                                      ldr r1, [r5, #4]
006c5598  81 25 f1 eb                                      bl #0x30eba4
006c559c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c55a0  50 00 8d e5                                      str r0, [sp, #0x50]
006c55a4  09 00 a0 e1                                      mov r0, sb
006c55a8  ef 25 f1 eb                                      bl #0x30ed6c
006c55ac  08 10 95 e5                                      ldr r1, [r5, #8]
006c55b0  7b 25 f1 eb                                      bl #0x30eba4
006c55b4  01 20 a0 e3                                      mov r2, #1
006c55b8  54 00 8d e5                                      str r0, [sp, #0x54]
006c55bc  5c 20 8d e5                                      str r2, [sp, #0x5c]
006c55c0  d7 fc ff ea                                      b #0x6c4924
006c55c4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
006c55c8  7c c0 9d e5                                      ldr ip, [sp, #0x7c]
006c55cc  4c 10 8d e5                                      str r1, [sp, #0x4c]
006c55d0  10 20 95 e5                                      ldr r2, [r5, #0x10]
006c55d4  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006c55d8  50 20 8d e5                                      str r2, [sp, #0x50]
006c55dc  14 30 95 e5                                      ldr r3, [r5, #0x14]
006c55e0  58 c0 8d e5                                      str ip, [sp, #0x58]
006c55e4  50 a0 9d e5                                      ldr sl, [sp, #0x50]
006c55e8  54 30 8d e5                                      str r3, [sp, #0x54]
006c55ec  04 10 95 e5                                      ldr r1, [r5, #4]
006c55f0  00 90 95 e5                                      ldr sb, [r5]
006c55f4  44 10 8d e5                                      str r1, [sp, #0x44]
006c55f8  08 20 95 e5                                      ldr r2, [r5, #8]
006c55fc  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c5600  20 20 8d e5                                      str r2, [sp, #0x20]
006c5604  fd fb ff ea                                      b #0x6c4600
006c5608  18 60 9d e5                                      ldr r6, [sp, #0x18]
006c560c  70 30 9d e5                                      ldr r3, [sp, #0x70]
006c5610  74 c0 9d e5                                      ldr ip, [sp, #0x74]
006c5614  78 10 9d e5                                      ldr r1, [sp, #0x78]
006c5618  4c 30 8d e5                                      str r3, [sp, #0x4c]
006c561c  50 c0 8d e5                                      str ip, [sp, #0x50]
006c5620  54 10 8d e5                                      str r1, [sp, #0x54]
006c5624  34 60 8d e5                                      str r6, [sp, #0x34]
006c5628  5f fe ff ea                                      b #0x6c4fac
006c562c  7c c0 9d e5                                      ldr ip, [sp, #0x7c]
006c5630  58 c0 8d e5                                      str ip, [sp, #0x58]
006c5634  18 10 95 e5                                      ldr r1, [r5, #0x18]
006c5638  4c 10 8d e5                                      str r1, [sp, #0x4c]
006c563c  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
006c5640  50 20 8d e5                                      str r2, [sp, #0x50]
006c5644  20 30 95 e5                                      ldr r3, [r5, #0x20]
006c5648  54 30 8d e5                                      str r3, [sp, #0x54]
006c564c  04 c0 95 e5                                      ldr ip, [r5, #4]
006c5650  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006c5654  00 90 95 e5                                      ldr sb, [r5]
006c5658  10 a0 95 e5                                      ldr sl, [r5, #0x10]
006c565c  44 c0 8d e5                                      str ip, [sp, #0x44]
006c5660  14 10 95 e5                                      ldr r1, [r5, #0x14]
006c5664  1c 10 8d e5                                      str r1, [sp, #0x1c]
006c5668  08 20 95 e5                                      ldr r2, [r5, #8]
006c566c  20 20 8d e5                                      str r2, [sp, #0x20]
006c5670  e2 fb ff ea                                      b #0x6c4600

; FUNCTION 0x006c5674, declared_size=308, range_size=308, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManager24getSceneNodeFromCameraBBEPNS0_16ICameraSceneNodeEib
; demangled: glitch::scene::CSceneCollisionManager::getSceneNodeFromCameraBB(glitch::scene::ICameraSceneNode*, int, bool)
; decoder-mode: arm
006c5674  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c5678  00 50 51 e2                                      subs r5, r1, #0
006c567c  00 40 a0 e1                                      mov r4, r0
006c5680  44 d0 4d e2                                      sub sp, sp, #0x44
006c5684  02 a0 a0 e1                                      mov sl, r2
006c5688  03 80 a0 e1                                      mov r8, r3
006c568c  05 00 a0 01                                      moveq r0, r5
006c5690  42 00 00 0a                                      beq #0x6c57a0
006c5694  34 00 8d e2                                      add r0, sp, #0x34
006c5698  b8 46 fb eb                                      bl #0x597180
006c569c  00 30 95 e5                                      ldr r3, [r5]
006c56a0  05 00 a0 e1                                      mov r0, r5
006c56a4  0f e0 a0 e1                                      mov lr, pc
006c56a8  08 f1 93 e5                                      ldr pc, [r3, #0x108]
006c56ac  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c56b0  00 30 a0 e1                                      mov r3, r0
006c56b4  04 00 90 e5                                      ldr r0, [r0, #4]
006c56b8  08 60 93 e5                                      ldr r6, [r3, #8]
006c56bc  00 90 93 e5                                      ldr sb, [r3]
006c56c0  39 23 f1 eb                                      bl #0x30e3ac
006c56c4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006c56c8  00 70 a0 e1                                      mov r7, r0
006c56cc  06 00 a0 e1                                      mov r0, r6
006c56d0  35 23 f1 eb                                      bl #0x30e3ac
006c56d4  34 10 9d e5                                      ldr r1, [sp, #0x34]
006c56d8  00 60 a0 e1                                      mov r6, r0
006c56dc  09 00 a0 e1                                      mov r0, sb
006c56e0  31 23 f1 eb                                      bl #0x30e3ac
006c56e4  28 00 8d e5                                      str r0, [sp, #0x28]
006c56e8  28 00 8d e2                                      add r0, sp, #0x28
006c56ec  2c 70 8d e5                                      str r7, [sp, #0x2c]
006c56f0  30 60 8d e5                                      str r6, [sp, #0x30]
006c56f4  79 64 f2 eb                                      bl #0x35e8e0
006c56f8  00 30 95 e5                                      ldr r3, [r5]
006c56fc  00 b0 a0 e1                                      mov fp, r0
006c5700  05 00 a0 e1                                      mov r0, r5
006c5704  0f e0 a0 e1                                      mov lr, pc
006c5708  20 f1 93 e5                                      ldr pc, [r3, #0x120]
006c570c  34 70 9d e5                                      ldr r7, [sp, #0x34]
006c5710  00 10 9b e5                                      ldr r1, [fp]
006c5714  00 50 a0 e1                                      mov r5, r0
006c5718  93 25 f1 eb                                      bl #0x30ed6c
006c571c  07 10 a0 e1                                      mov r1, r7
006c5720  1f 25 f1 eb                                      bl #0x30eba4
006c5724  38 60 9d e5                                      ldr r6, [sp, #0x38]
006c5728  04 10 9b e5                                      ldr r1, [fp, #4]
006c572c  00 90 a0 e1                                      mov sb, r0
006c5730  05 00 a0 e1                                      mov r0, r5
006c5734  8c 25 f1 eb                                      bl #0x30ed6c
006c5738  06 10 a0 e1                                      mov r1, r6
006c573c  18 25 f1 eb                                      bl #0x30eba4
006c5740  00 30 a0 e1                                      mov r3, r0
006c5744  05 00 a0 e1                                      mov r0, r5
006c5748  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
006c574c  08 10 9b e5                                      ldr r1, [fp, #8]
006c5750  0c 30 8d e5                                      str r3, [sp, #0xc]
006c5754  84 25 f1 eb                                      bl #0x30ed6c
006c5758  05 10 a0 e1                                      mov r1, r5
006c575c  10 25 f1 eb                                      bl #0x30eba4
006c5760  00 10 94 e5                                      ldr r1, [r4]
006c5764  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c5768  0a 20 a0 e1                                      mov r2, sl
006c576c  20 c0 91 e5                                      ldr ip, [r1, #0x20]
006c5770  20 30 8d e5                                      str r3, [sp, #0x20]
006c5774  00 30 a0 e3                                      mov r3, #0
006c5778  24 00 8d e5                                      str r0, [sp, #0x24]
006c577c  00 30 8d e5                                      str r3, [sp]
006c5780  10 70 8d e5                                      str r7, [sp, #0x10]
006c5784  14 60 8d e5                                      str r6, [sp, #0x14]
006c5788  18 50 8d e5                                      str r5, [sp, #0x18]
006c578c  1c 90 8d e5                                      str sb, [sp, #0x1c]
006c5790  04 00 a0 e1                                      mov r0, r4
006c5794  08 30 a0 e1                                      mov r3, r8
006c5798  10 10 8d e2                                      add r1, sp, #0x10
006c579c  3c ff 2f e1                                      blx ip
006c57a0  44 d0 8d e2                                      add sp, sp, #0x44
006c57a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006c57a8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManagerD0Ev
; demangled: glitch::scene::CSceneCollisionManager::~CSceneCollisionManager()
; decoder-mode: arm
006c57a8  10 40 2d e9                                      push {r4, lr}
006c57ac  00 40 a0 e1                                      mov r4, r0
006c57b0  46 fa ff eb                                      bl #0x6c40d0
006c57b4  04 00 a0 e1                                      mov r0, r4
006c57b8  bc 22 f1 eb                                      bl #0x30e2b0
006c57bc  04 00 a0 e1                                      mov r0, r4
006c57c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006c57d8, declared_size=488, range_size=488, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManager34getScreenCoordinatesFrom3DPositionENS_4core8vector3dIfEEPNS0_16ICameraSceneNodeE
; demangled: glitch::scene::CSceneCollisionManager::getScreenCoordinatesFrom3DPosition(glitch::core::vector3d<float>, glitch::scene::ICameraSceneNode*)
; decoder-mode: arm
006c57d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c57dc  08 c0 91 e5                                      ldr ip, [r1, #8]
006c57e0  64 d0 4d e2                                      sub sp, sp, #0x64
006c57e4  00 40 a0 e1                                      mov r4, r0
006c57e8  00 00 5c e3                                      cmp ip, #0
006c57ec  02 50 a0 e1                                      mov r5, r2
006c57f0  03 60 a0 e1                                      mov r6, r3
006c57f4  6c 00 00 0a                                      beq #0x6c59ac
006c57f8  0c 30 91 e5                                      ldr r3, [r1, #0xc]
006c57fc  00 00 53 e3                                      cmp r3, #0
006c5800  69 00 00 0a                                      beq #0x6c59ac
006c5804  00 00 56 e3                                      cmp r6, #0
006c5808  64 00 00 0a                                      beq #0x6c59a0
006c580c  cc 20 93 e5                                      ldr r2, [r3, #0xcc]
006c5810  06 00 a0 e1                                      mov r0, r6
006c5814  00 30 96 e5                                      ldr r3, [r6]
006c5818  04 20 12 e5                                      ldr r2, [r2, #-4]
006c581c  0c 80 8d e2                                      add r8, sp, #0xc
006c5820  00 70 a0 e3                                      mov r7, #0
006c5824  18 10 92 e5                                      ldr r1, [r2, #0x18]
006c5828  04 10 8d e5                                      str r1, [sp, #4]
006c582c  1c a0 92 e5                                      ldr sl, [r2, #0x1c]
006c5830  14 90 92 e5                                      ldr sb, [r2, #0x14]
006c5834  20 b0 92 e5                                      ldr fp, [r2, #0x20]
006c5838  0f e0 a0 e1                                      mov lr, pc
006c583c  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
006c5840  41 20 a0 e3                                      mov r2, #0x41
006c5844  00 10 a0 e1                                      mov r1, r0
006c5848  08 00 a0 e1                                      mov r0, r8
006c584c  4c 70 cd e5                                      strb r7, [sp, #0x4c]
006c5850  04 24 f1 eb                                      bl #0x30e868
006c5854  00 30 96 e5                                      ldr r3, [r6]
006c5858  06 00 a0 e1                                      mov r0, r6
006c585c  0f e0 a0 e1                                      mov lr, pc
006c5860  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
006c5864  00 10 a0 e1                                      mov r1, r0
006c5868  08 00 a0 e1                                      mov r0, r8
006c586c  99 27 f9 eb                                      bl #0x50f6d8
006c5870  08 30 95 e5                                      ldr r3, [r5, #8]
006c5874  00 20 95 e5                                      ldr r2, [r5]
006c5878  04 e0 95 e5                                      ldr lr, [r5, #4]
006c587c  58 c0 8d e2                                      add ip, sp, #0x58
006c5880  04 70 8c e4                                      str r7, [ip], #4
006c5884  00 70 8c e5                                      str r7, [ip]
006c5888  08 00 a0 e1                                      mov r0, r8
006c588c  50 10 8d e2                                      add r1, sp, #0x50
006c5890  fe 55 a0 e3                                      mov r5, #0x3f800000
006c5894  50 20 8d e5                                      str r2, [sp, #0x50]
006c5898  54 e0 8d e5                                      str lr, [sp, #0x54]
006c589c  58 30 8d e5                                      str r3, [sp, #0x58]
006c58a0  5c 50 8d e5                                      str r5, [sp, #0x5c]
006c58a4  d3 34 f1 eb                                      bl #0x312bf8
006c58a8  5c 60 9d e5                                      ldr r6, [sp, #0x5c]
006c58ac  00 10 a0 e3                                      mov r1, #0
006c58b0  06 00 a0 e1                                      mov r0, r6
006c58b4  94 23 f1 eb                                      bl #0x30e70c
006c58b8  07 00 50 e1                                      cmp r0, r7
006c58bc  32 00 00 1a                                      bne #0x6c598c
006c58c0  06 00 a0 e1                                      mov r0, r6
006c58c4  00 10 a0 e3                                      mov r1, #0
006c58c8  af 21 f1 eb                                      bl #0x30df8c
006c58cc  00 00 50 e3                                      cmp r0, #0
006c58d0  03 00 00 1a                                      bne #0x6c58e4
006c58d4  05 00 a0 e1                                      mov r0, r5
006c58d8  06 10 a0 e1                                      mov r1, r6
006c58dc  ec 24 f1 eb                                      bl #0x30ec94
006c58e0  00 50 a0 e1                                      mov r5, r0
006c58e4  0a a0 69 e0                                      rsb sl, sb, sl
006c58e8  aa af 8a e0                                      add sl, sl, sl, lsr #31
006c58ec  04 30 9d e5                                      ldr r3, [sp, #4]
006c58f0  ca a0 a0 e1                                      asr sl, sl, #1
006c58f4  0a 00 a0 e1                                      mov r0, sl
006c58f8  0b b0 63 e0                                      rsb fp, r3, fp
006c58fc  18 24 f1 eb                                      bl #0x30e964
006c5900  50 10 9d e5                                      ldr r1, [sp, #0x50]
006c5904  18 25 f1 eb                                      bl #0x30ed6c
006c5908  00 10 a0 e1                                      mov r1, r0
006c590c  05 00 a0 e1                                      mov r0, r5
006c5910  15 25 f1 eb                                      bl #0x30ed6c
006c5914  3f 14 a0 e3                                      mov r1, #0x3f000000
006c5918  a1 24 f1 eb                                      bl #0x30eba4
006c591c  e5 24 f1 eb                                      bl #0x30ecb8
006c5920  ab bf 8b e0                                      add fp, fp, fp, lsr #31
006c5924  00 60 a0 e1                                      mov r6, r0
006c5928  cb b0 a0 e1                                      asr fp, fp, #1
006c592c  0b 00 a0 e1                                      mov r0, fp
006c5930  0b 24 f1 eb                                      bl #0x30e964
006c5934  54 10 9d e5                                      ldr r1, [sp, #0x54]
006c5938  00 70 a0 e1                                      mov r7, r0
006c593c  05 00 a0 e1                                      mov r0, r5
006c5940  09 25 f1 eb                                      bl #0x30ed6c
006c5944  00 10 a0 e1                                      mov r1, r0
006c5948  07 00 a0 e1                                      mov r0, r7
006c594c  06 25 f1 eb                                      bl #0x30ed6c
006c5950  3f 14 a0 e3                                      mov r1, #0x3f000000
006c5954  92 24 f1 eb                                      bl #0x30eba4
006c5958  d6 24 f1 eb                                      bl #0x30ecb8
006c595c  00 50 a0 e1                                      mov r5, r0
006c5960  06 00 a0 e1                                      mov r0, r6
006c5964  d8 22 f1 eb                                      bl #0x30e4cc
006c5968  0a a0 80 e0                                      add sl, r0, sl
006c596c  00 a0 84 e5                                      str sl, [r4]
006c5970  05 00 a0 e1                                      mov r0, r5
006c5974  d4 22 f1 eb                                      bl #0x30e4cc
006c5978  0b b0 60 e0                                      rsb fp, r0, fp
006c597c  04 b0 84 e5                                      str fp, [r4, #4]
006c5980  04 00 a0 e1                                      mov r0, r4
006c5984  64 d0 8d e2                                      add sp, sp, #0x64
006c5988  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c598c  27 3c e0 e3                                      mvn r3, #0x2700
006c5990  0f 30 43 e2                                      sub r3, r3, #0xf
006c5994  04 30 84 e5                                      str r3, [r4, #4]
006c5998  00 30 84 e5                                      str r3, [r4]
006c599c  f7 ff ff ea                                      b #0x6c5980
006c59a0  e4 60 9c e5                                      ldr r6, [ip, #0xe4]
006c59a4  00 00 56 e3                                      cmp r6, #0
006c59a8  97 ff ff 1a                                      bne #0x6c580c
006c59ac  83 34 a0 e3                                      mov r3, #0x83000000
006c59b0  c3 3a a0 e1                                      asr r3, r3, #0x15
006c59b4  04 30 84 e5                                      str r3, [r4, #4]
006c59b8  00 30 84 e5                                      str r3, [r4]
006c59bc  ef ff ff ea                                      b #0x6c5980

; FUNCTION 0x006c59c0, declared_size=896, range_size=896, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManager27getRayFromScreenCoordinatesENS_4core10position2dIiEEPNS0_16ICameraSceneNodeE
; demangled: glitch::scene::CSceneCollisionManager::getRayFromScreenCoordinates(glitch::core::position2d<int>, glitch::scene::ICameraSceneNode*)
; decoder-mode: arm
006c59c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c59c4  00 c0 a0 e3                                      mov ip, #0
006c59c8  14 c0 80 e5                                      str ip, [r0, #0x14]
006c59cc  00 c0 80 e5                                      str ip, [r0]
006c59d0  04 c0 80 e5                                      str ip, [r0, #4]
006c59d4  08 c0 80 e5                                      str ip, [r0, #8]
006c59d8  0c c0 80 e5                                      str ip, [r0, #0xc]
006c59dc  10 c0 80 e5                                      str ip, [r0, #0x10]
006c59e0  01 a0 a0 e1                                      mov sl, r1
006c59e4  08 10 91 e5                                      ldr r1, [r1, #8]
006c59e8  44 d0 4d e2                                      sub sp, sp, #0x44
006c59ec  00 40 a0 e1                                      mov r4, r0
006c59f0  00 00 51 e3                                      cmp r1, #0
006c59f4  02 90 a0 e1                                      mov sb, r2
006c59f8  03 70 a0 e1                                      mov r7, r3
006c59fc  8e 00 00 0a                                      beq #0x6c5c3c
006c5a00  00 00 53 e3                                      cmp r3, #0
006c5a04  c9 00 00 0a                                      beq #0x6c5d30
006c5a08  00 30 97 e5                                      ldr r3, [r7]
006c5a0c  07 00 a0 e1                                      mov r0, r7
006c5a10  0f e0 a0 e1                                      mov lr, pc
006c5a14  44 f1 93 e5                                      ldr pc, [r3, #0x144]
006c5a18  2c c0 80 e2                                      add ip, r0, #0x2c
006c5a1c  0c 80 80 e2                                      add r8, r0, #0xc
006c5a20  5c b0 80 e2                                      add fp, r0, #0x5c
006c5a24  00 50 a0 e3                                      mov r5, #0
006c5a28  0c 20 a0 e1                                      mov r2, ip
006c5a2c  00 60 a0 e1                                      mov r6, r0
006c5a30  0b 10 a0 e1                                      mov r1, fp
006c5a34  34 30 8d e2                                      add r3, sp, #0x34
006c5a38  08 00 a0 e1                                      mov r0, r8
006c5a3c  04 c0 8d e5                                      str ip, [sp, #4]
006c5a40  34 50 8d e5                                      str r5, [sp, #0x34]
006c5a44  38 50 8d e5                                      str r5, [sp, #0x38]
006c5a48  3c 50 8d e5                                      str r5, [sp, #0x3c]
006c5a4c  e1 ee f1 eb                                      bl #0x3415d8
006c5a50  3c 20 86 e2                                      add r2, r6, #0x3c
006c5a54  28 30 8d e2                                      add r3, sp, #0x28
006c5a58  0b 10 a0 e1                                      mov r1, fp
006c5a5c  08 00 a0 e1                                      mov r0, r8
006c5a60  28 50 8d e5                                      str r5, [sp, #0x28]
006c5a64  2c 50 8d e5                                      str r5, [sp, #0x2c]
006c5a68  30 50 8d e5                                      str r5, [sp, #0x30]
006c5a6c  d9 ee f1 eb                                      bl #0x3415d8
006c5a70  34 10 9d e5                                      ldr r1, [sp, #0x34]
006c5a74  28 00 9d e5                                      ldr r0, [sp, #0x28]
006c5a78  4b 22 f1 eb                                      bl #0x30e3ac
006c5a7c  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c5a80  0c 00 8d e5                                      str r0, [sp, #0xc]
006c5a84  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006c5a88  47 22 f1 eb                                      bl #0x30e3ac
006c5a8c  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006c5a90  10 00 8d e5                                      str r0, [sp, #0x10]
006c5a94  30 00 9d e5                                      ldr r0, [sp, #0x30]
006c5a98  43 22 f1 eb                                      bl #0x30e3ac
006c5a9c  04 c0 9d e5                                      ldr ip, [sp, #4]
006c5aa0  1c 30 8d e2                                      add r3, sp, #0x1c
006c5aa4  14 00 8d e5                                      str r0, [sp, #0x14]
006c5aa8  0c 20 a0 e1                                      mov r2, ip
006c5aac  08 00 a0 e1                                      mov r0, r8
006c5ab0  4c 10 86 e2                                      add r1, r6, #0x4c
006c5ab4  24 50 8d e5                                      str r5, [sp, #0x24]
006c5ab8  1c 50 8d e5                                      str r5, [sp, #0x1c]
006c5abc  20 50 8d e5                                      str r5, [sp, #0x20]
006c5ac0  c4 ee f1 eb                                      bl #0x3415d8
006c5ac4  34 10 9d e5                                      ldr r1, [sp, #0x34]
006c5ac8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c5acc  36 22 f1 eb                                      bl #0x30e3ac
006c5ad0  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c5ad4  08 00 8d e5                                      str r0, [sp, #8]
006c5ad8  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c5adc  32 22 f1 eb                                      bl #0x30e3ac
006c5ae0  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006c5ae4  00 b0 a0 e1                                      mov fp, r0
006c5ae8  24 00 9d e5                                      ldr r0, [sp, #0x24]
006c5aec  2e 22 f1 eb                                      bl #0x30e3ac
006c5af0  0c 30 9a e5                                      ldr r3, [sl, #0xc]
006c5af4  00 80 a0 e1                                      mov r8, r0
006c5af8  00 00 99 e5                                      ldr r0, [sb]
006c5afc  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
006c5b00  04 c0 13 e5                                      ldr ip, [r3, #-4]
006c5b04  1c 10 9c e5                                      ldr r1, [ip, #0x1c]
006c5b08  14 30 9c e5                                      ldr r3, [ip, #0x14]
006c5b0c  18 20 9c e5                                      ldr r2, [ip, #0x18]
006c5b10  20 50 9c e5                                      ldr r5, [ip, #0x20]
006c5b14  01 30 63 e0                                      rsb r3, r3, r1
006c5b18  04 30 8d e5                                      str r3, [sp, #4]
006c5b1c  05 50 62 e0                                      rsb r5, r2, r5
006c5b20  8f 23 f1 eb                                      bl #0x30e964
006c5b24  04 30 9d e5                                      ldr r3, [sp, #4]
006c5b28  00 a0 a0 e1                                      mov sl, r0
006c5b2c  03 00 a0 e1                                      mov r0, r3
006c5b30  8b 23 f1 eb                                      bl #0x30e964
006c5b34  00 10 a0 e1                                      mov r1, r0
006c5b38  0a 00 a0 e1                                      mov r0, sl
006c5b3c  54 24 f1 eb                                      bl #0x30ec94
006c5b40  00 a0 a0 e1                                      mov sl, r0
006c5b44  04 00 99 e5                                      ldr r0, [sb, #4]
006c5b48  85 23 f1 eb                                      bl #0x30e964
006c5b4c  00 90 a0 e1                                      mov sb, r0
006c5b50  05 00 a0 e1                                      mov r0, r5
006c5b54  82 23 f1 eb                                      bl #0x30e964
006c5b58  00 10 a0 e1                                      mov r1, r0
006c5b5c  09 00 a0 e1                                      mov r0, sb
006c5b60  4b 24 f1 eb                                      bl #0x30ec94
006c5b64  00 30 97 e5                                      ldr r3, [r7]
006c5b68  00 50 a0 e1                                      mov r5, r0
006c5b6c  07 00 a0 e1                                      mov r0, r7
006c5b70  0f e0 a0 e1                                      mov lr, pc
006c5b74  50 f1 93 e5                                      ldr pc, [r3, #0x150]
006c5b78  00 00 50 e3                                      cmp r0, #0
006c5b7c  31 00 00 1a                                      bne #0x6c5c48
006c5b80  00 30 96 e5                                      ldr r3, [r6]
006c5b84  00 30 84 e5                                      str r3, [r4]
006c5b88  04 30 96 e5                                      ldr r3, [r6, #4]
006c5b8c  04 30 84 e5                                      str r3, [r4, #4]
006c5b90  08 30 96 e5                                      ldr r3, [r6, #8]
006c5b94  08 30 84 e5                                      str r3, [r4, #8]
006c5b98  10 10 9d e5                                      ldr r1, [sp, #0x10]
006c5b9c  0a 00 a0 e1                                      mov r0, sl
006c5ba0  71 24 f1 eb                                      bl #0x30ed6c
006c5ba4  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c5ba8  fd 23 f1 eb                                      bl #0x30eba4
006c5bac  0b 10 a0 e1                                      mov r1, fp
006c5bb0  00 60 a0 e1                                      mov r6, r0
006c5bb4  05 00 a0 e1                                      mov r0, r5
006c5bb8  6b 24 f1 eb                                      bl #0x30ed6c
006c5bbc  00 10 a0 e1                                      mov r1, r0
006c5bc0  06 00 a0 e1                                      mov r0, r6
006c5bc4  f6 23 f1 eb                                      bl #0x30eba4
006c5bc8  14 10 9d e5                                      ldr r1, [sp, #0x14]
006c5bcc  00 60 a0 e1                                      mov r6, r0
006c5bd0  0a 00 a0 e1                                      mov r0, sl
006c5bd4  64 24 f1 eb                                      bl #0x30ed6c
006c5bd8  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006c5bdc  f0 23 f1 eb                                      bl #0x30eba4
006c5be0  08 10 a0 e1                                      mov r1, r8
006c5be4  00 70 a0 e1                                      mov r7, r0
006c5be8  05 00 a0 e1                                      mov r0, r5
006c5bec  5e 24 f1 eb                                      bl #0x30ed6c
006c5bf0  00 10 a0 e1                                      mov r1, r0
006c5bf4  07 00 a0 e1                                      mov r0, r7
006c5bf8  e9 23 f1 eb                                      bl #0x30eba4
006c5bfc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006c5c00  00 70 a0 e1                                      mov r7, r0
006c5c04  0a 00 a0 e1                                      mov r0, sl
006c5c08  57 24 f1 eb                                      bl #0x30ed6c
006c5c0c  34 10 9d e5                                      ldr r1, [sp, #0x34]
006c5c10  e3 23 f1 eb                                      bl #0x30eba4
006c5c14  08 10 9d e5                                      ldr r1, [sp, #8]
006c5c18  00 80 a0 e1                                      mov r8, r0
006c5c1c  05 00 a0 e1                                      mov r0, r5
006c5c20  51 24 f1 eb                                      bl #0x30ed6c
006c5c24  00 10 a0 e1                                      mov r1, r0
006c5c28  08 00 a0 e1                                      mov r0, r8
006c5c2c  dc 23 f1 eb                                      bl #0x30eba4
006c5c30  10 60 84 e5                                      str r6, [r4, #0x10]
006c5c34  0c 00 84 e5                                      str r0, [r4, #0xc]
006c5c38  14 70 84 e5                                      str r7, [r4, #0x14]
006c5c3c  04 00 a0 e1                                      mov r0, r4
006c5c40  44 d0 8d e2                                      add sp, sp, #0x44
006c5c44  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c5c48  3f 14 a0 e3                                      mov r1, #0x3f000000
006c5c4c  0a 00 a0 e1                                      mov r0, sl
006c5c50  d5 21 f1 eb                                      bl #0x30e3ac
006c5c54  3f 14 a0 e3                                      mov r1, #0x3f000000
006c5c58  00 90 a0 e1                                      mov sb, r0
006c5c5c  05 00 a0 e1                                      mov r0, r5
006c5c60  d1 21 f1 eb                                      bl #0x30e3ac
006c5c64  10 10 9d e5                                      ldr r1, [sp, #0x10]
006c5c68  00 70 a0 e1                                      mov r7, r0
006c5c6c  09 00 a0 e1                                      mov r0, sb
006c5c70  3d 24 f1 eb                                      bl #0x30ed6c
006c5c74  04 10 96 e5                                      ldr r1, [r6, #4]
006c5c78  c9 23 f1 eb                                      bl #0x30eba4
006c5c7c  0b 10 a0 e1                                      mov r1, fp
006c5c80  00 30 a0 e1                                      mov r3, r0
006c5c84  07 00 a0 e1                                      mov r0, r7
006c5c88  04 30 8d e5                                      str r3, [sp, #4]
006c5c8c  36 24 f1 eb                                      bl #0x30ed6c
006c5c90  04 30 9d e5                                      ldr r3, [sp, #4]
006c5c94  00 10 a0 e1                                      mov r1, r0
006c5c98  03 00 a0 e1                                      mov r0, r3
006c5c9c  c0 23 f1 eb                                      bl #0x30eba4
006c5ca0  14 10 9d e5                                      ldr r1, [sp, #0x14]
006c5ca4  00 20 a0 e1                                      mov r2, r0
006c5ca8  09 00 a0 e1                                      mov r0, sb
006c5cac  00 20 8d e5                                      str r2, [sp]
006c5cb0  2d 24 f1 eb                                      bl #0x30ed6c
006c5cb4  08 10 96 e5                                      ldr r1, [r6, #8]
006c5cb8  b9 23 f1 eb                                      bl #0x30eba4
006c5cbc  08 10 a0 e1                                      mov r1, r8
006c5cc0  00 30 a0 e1                                      mov r3, r0
006c5cc4  07 00 a0 e1                                      mov r0, r7
006c5cc8  04 30 8d e5                                      str r3, [sp, #4]
006c5ccc  26 24 f1 eb                                      bl #0x30ed6c
006c5cd0  04 30 9d e5                                      ldr r3, [sp, #4]
006c5cd4  00 10 a0 e1                                      mov r1, r0
006c5cd8  03 00 a0 e1                                      mov r0, r3
006c5cdc  b0 23 f1 eb                                      bl #0x30eba4
006c5ce0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006c5ce4  00 30 a0 e1                                      mov r3, r0
006c5ce8  09 00 a0 e1                                      mov r0, sb
006c5cec  04 30 8d e5                                      str r3, [sp, #4]
006c5cf0  1d 24 f1 eb                                      bl #0x30ed6c
006c5cf4  00 10 96 e5                                      ldr r1, [r6]
006c5cf8  a9 23 f1 eb                                      bl #0x30eba4
006c5cfc  08 10 9d e5                                      ldr r1, [sp, #8]
006c5d00  00 60 a0 e1                                      mov r6, r0
006c5d04  07 00 a0 e1                                      mov r0, r7
006c5d08  17 24 f1 eb                                      bl #0x30ed6c
006c5d0c  00 10 a0 e1                                      mov r1, r0
006c5d10  06 00 a0 e1                                      mov r0, r6
006c5d14  a2 23 f1 eb                                      bl #0x30eba4
006c5d18  00 20 9d e5                                      ldr r2, [sp]
006c5d1c  00 00 84 e5                                      str r0, [r4]
006c5d20  04 20 84 e5                                      str r2, [r4, #4]
006c5d24  04 30 9d e5                                      ldr r3, [sp, #4]
006c5d28  08 30 84 e5                                      str r3, [r4, #8]
006c5d2c  99 ff ff ea                                      b #0x6c5b98
006c5d30  e4 70 91 e5                                      ldr r7, [r1, #0xe4]
006c5d34  00 00 57 e3                                      cmp r7, #0
006c5d38  bf ff ff 0a                                      beq #0x6c5c3c
006c5d3c  31 ff ff ea                                      b #0x6c5a08

; FUNCTION 0x006c5d40, declared_size=1344, range_size=1344, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManager15getPickedNodeBBEPNS0_10ISceneNodeERKNS_4core6line3dIfEEibRfRS3_
; demangled: glitch::scene::CSceneCollisionManager::getPickedNodeBB(glitch::scene::ISceneNode*, glitch::core::line3d<float> const&, int, bool, float&, glitch::scene::ISceneNode*&)
; decoder-mode: arm
006c5d40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c5d44  49 df 4d e2                                      sub sp, sp, #0x124
006c5d48  48 81 dd e5                                      ldrb r8, [sp, #0x148]
006c5d4c  5c 40 8d e2                                      add r4, sp, #0x5c
006c5d50  02 70 a0 e1                                      mov r7, r2
006c5d54  20 30 8d e5                                      str r3, [sp, #0x20]
006c5d58  00 c0 a0 e3                                      mov ip, #0
006c5d5c  3c 40 8d e5                                      str r4, [sp, #0x3c]
006c5d60  40 00 8d e5                                      str r0, [sp, #0x40]
006c5d64  0c 30 84 e2                                      add r3, r4, #0xc
006c5d68  6c 20 84 e2                                      add r2, r4, #0x6c
006c5d6c  0c c0 03 e5                                      str ip, [r3, #-0xc]
006c5d70  08 c0 03 e5                                      str ip, [r3, #-8]
006c5d74  04 c0 03 e5                                      str ip, [r3, #-4]
006c5d78  0c 30 83 e2                                      add r3, r3, #0xc
006c5d7c  02 00 53 e1                                      cmp r3, r2
006c5d80  f9 ff ff 1a                                      bne #0x6c5d6c
006c5d84  01 60 a0 e1                                      mov r6, r1
006c5d88  f4 40 b6 e5                                      ldr r4, [r6, #0xf4]!
006c5d8c  06 00 54 e1                                      cmp r4, r6
006c5d90  d0 00 00 0a                                      beq #0x6c60d8
006c5d94  bc c0 8d e2                                      add ip, sp, #0xbc
006c5d98  50 c0 8d e5                                      str ip, [sp, #0x50]
006c5d9c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006c5da0  01 0c 8d e2                                      add r0, sp, #0x100
006c5da4  47 2f 8d e2                                      add r2, sp, #0x11c
006c5da8  46 3f 8d e2                                      add r3, sp, #0x118
006c5dac  08 c0 8c e2                                      add ip, ip, #8
006c5db0  44 00 8d e5                                      str r0, [sp, #0x44]
006c5db4  48 20 8d e5                                      str r2, [sp, #0x48]
006c5db8  4c 30 8d e5                                      str r3, [sp, #0x4c]
006c5dbc  54 c0 8d e5                                      str ip, [sp, #0x54]
006c5dc0  00 00 54 e3                                      cmp r4, #0
006c5dc4  04 50 a0 01                                      moveq r5, r4
006c5dc8  04 50 44 12                                      subne r5, r4, #4
006c5dcc  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
006c5dd0  01 00 13 e3                                      tst r3, #1
006c5dd4  bc 00 00 0a                                      beq #0x6c60cc
006c5dd8  00 00 58 e3                                      cmp r8, #0
006c5ddc  cd 00 00 1a                                      bne #0x6c6118
006c5de0  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c5de4  00 00 50 e3                                      cmp r0, #0
006c5de8  d1 00 00 1a                                      bne #0x6c6134
006c5dec  40 20 a0 e3                                      mov r2, #0x40
006c5df0  00 10 a0 e3                                      mov r1, #0
006c5df4  50 00 9d e5                                      ldr r0, [sp, #0x50]
006c5df8  98 21 f1 eb                                      bl #0x30e460
006c5dfc  fe 35 a0 e3                                      mov r3, #0x3f800000
006c5e00  01 c0 a0 e3                                      mov ip, #1
006c5e04  fc c0 cd e5                                      strb ip, [sp, #0xfc]
006c5e08  bc 30 8d e5                                      str r3, [sp, #0xbc]
006c5e0c  d0 30 8d e5                                      str r3, [sp, #0xd0]
006c5e10  e4 30 8d e5                                      str r3, [sp, #0xe4]
006c5e14  f8 30 8d e5                                      str r3, [sp, #0xf8]
006c5e18  00 30 95 e5                                      ldr r3, [r5]
006c5e1c  05 00 a0 e1                                      mov r0, r5
006c5e20  0f e0 a0 e1                                      mov lr, pc
006c5e24  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006c5e28  50 10 9d e5                                      ldr r1, [sp, #0x50]
006c5e2c  23 75 f1 eb                                      bl #0x3232c0
006c5e30  00 00 50 e3                                      cmp r0, #0
006c5e34  a4 00 00 0a                                      beq #0x6c60cc
006c5e38  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
006c5e3c  00 b0 97 e5                                      ldr fp, [r7]
006c5e40  04 90 97 e5                                      ldr sb, [r7, #4]
006c5e44  02 10 a0 e1                                      mov r1, r2
006c5e48  0b 00 a0 e1                                      mov r0, fp
006c5e4c  14 20 8d e5                                      str r2, [sp, #0x14]
006c5e50  c5 23 f1 eb                                      bl #0x30ed6c
006c5e54  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
006c5e58  00 30 a0 e1                                      mov r3, r0
006c5e5c  09 00 a0 e1                                      mov r0, sb
006c5e60  08 a0 97 e5                                      ldr sl, [r7, #8]
006c5e64  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c5e68  bf 23 f1 eb                                      bl #0x30ed6c
006c5e6c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c5e70  00 10 a0 e1                                      mov r1, r0
006c5e74  03 00 a0 e1                                      mov r0, r3
006c5e78  49 23 f1 eb                                      bl #0x30eba4
006c5e7c  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
006c5e80  00 30 a0 e1                                      mov r3, r0
006c5e84  0a 00 a0 e1                                      mov r0, sl
006c5e88  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c5e8c  b6 23 f1 eb                                      bl #0x30ed6c
006c5e90  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c5e94  00 10 a0 e1                                      mov r1, r0
006c5e98  03 00 a0 e1                                      mov r0, r3
006c5e9c  40 23 f1 eb                                      bl #0x30eba4
006c5ea0  ec 10 9d e5                                      ldr r1, [sp, #0xec]
006c5ea4  3e 23 f1 eb                                      bl #0x30eba4
006c5ea8  c0 c0 9d e5                                      ldr ip, [sp, #0xc0]
006c5eac  00 01 8d e5                                      str r0, [sp, #0x100]
006c5eb0  0b 00 a0 e1                                      mov r0, fp
006c5eb4  0c 10 a0 e1                                      mov r1, ip
006c5eb8  18 c0 8d e5                                      str ip, [sp, #0x18]
006c5ebc  aa 23 f1 eb                                      bl #0x30ed6c
006c5ec0  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
006c5ec4  00 30 a0 e1                                      mov r3, r0
006c5ec8  09 00 a0 e1                                      mov r0, sb
006c5ecc  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c5ed0  a5 23 f1 eb                                      bl #0x30ed6c
006c5ed4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c5ed8  00 10 a0 e1                                      mov r1, r0
006c5edc  03 00 a0 e1                                      mov r0, r3
006c5ee0  2f 23 f1 eb                                      bl #0x30eba4
006c5ee4  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
006c5ee8  00 30 a0 e1                                      mov r3, r0
006c5eec  0a 00 a0 e1                                      mov r0, sl
006c5ef0  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c5ef4  9c 23 f1 eb                                      bl #0x30ed6c
006c5ef8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c5efc  00 10 a0 e1                                      mov r1, r0
006c5f00  03 00 a0 e1                                      mov r0, r3
006c5f04  26 23 f1 eb                                      bl #0x30eba4
006c5f08  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
006c5f0c  24 23 f1 eb                                      bl #0x30eba4
006c5f10  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
006c5f14  04 01 8d e5                                      str r0, [sp, #0x104]
006c5f18  0b 00 a0 e1                                      mov r0, fp
006c5f1c  92 23 f1 eb                                      bl #0x30ed6c
006c5f20  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
006c5f24  00 b0 a0 e1                                      mov fp, r0
006c5f28  09 00 a0 e1                                      mov r0, sb
006c5f2c  8e 23 f1 eb                                      bl #0x30ed6c
006c5f30  00 10 a0 e1                                      mov r1, r0
006c5f34  0b 00 a0 e1                                      mov r0, fp
006c5f38  19 23 f1 eb                                      bl #0x30eba4
006c5f3c  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
006c5f40  00 90 a0 e1                                      mov sb, r0
006c5f44  0a 00 a0 e1                                      mov r0, sl
006c5f48  87 23 f1 eb                                      bl #0x30ed6c
006c5f4c  00 10 a0 e1                                      mov r1, r0
006c5f50  09 00 a0 e1                                      mov r0, sb
006c5f54  12 23 f1 eb                                      bl #0x30eba4
006c5f58  f4 10 9d e5                                      ldr r1, [sp, #0xf4]
006c5f5c  10 23 f1 eb                                      bl #0x30eba4
006c5f60  14 20 9d e5                                      ldr r2, [sp, #0x14]
006c5f64  0c b0 97 e5                                      ldr fp, [r7, #0xc]
006c5f68  10 90 97 e5                                      ldr sb, [r7, #0x10]
006c5f6c  02 10 a0 e1                                      mov r1, r2
006c5f70  14 a0 97 e5                                      ldr sl, [r7, #0x14]
006c5f74  08 01 8d e5                                      str r0, [sp, #0x108]
006c5f78  0b 00 a0 e1                                      mov r0, fp
006c5f7c  7a 23 f1 eb                                      bl #0x30ed6c
006c5f80  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
006c5f84  00 30 a0 e1                                      mov r3, r0
006c5f88  09 00 a0 e1                                      mov r0, sb
006c5f8c  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c5f90  75 23 f1 eb                                      bl #0x30ed6c
006c5f94  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c5f98  00 10 a0 e1                                      mov r1, r0
006c5f9c  03 00 a0 e1                                      mov r0, r3
006c5fa0  ff 22 f1 eb                                      bl #0x30eba4
006c5fa4  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
006c5fa8  00 30 a0 e1                                      mov r3, r0
006c5fac  0a 00 a0 e1                                      mov r0, sl
006c5fb0  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c5fb4  6c 23 f1 eb                                      bl #0x30ed6c
006c5fb8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c5fbc  00 10 a0 e1                                      mov r1, r0
006c5fc0  03 00 a0 e1                                      mov r0, r3
006c5fc4  f6 22 f1 eb                                      bl #0x30eba4
006c5fc8  00 10 a0 e1                                      mov r1, r0
006c5fcc  ec 00 9d e5                                      ldr r0, [sp, #0xec]
006c5fd0  f3 22 f1 eb                                      bl #0x30eba4
006c5fd4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006c5fd8  0c 01 8d e5                                      str r0, [sp, #0x10c]
006c5fdc  0b 00 a0 e1                                      mov r0, fp
006c5fe0  0c 10 a0 e1                                      mov r1, ip
006c5fe4  60 23 f1 eb                                      bl #0x30ed6c
006c5fe8  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
006c5fec  00 30 a0 e1                                      mov r3, r0
006c5ff0  09 00 a0 e1                                      mov r0, sb
006c5ff4  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c5ff8  5b 23 f1 eb                                      bl #0x30ed6c
006c5ffc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c6000  00 10 a0 e1                                      mov r1, r0
006c6004  03 00 a0 e1                                      mov r0, r3
006c6008  e5 22 f1 eb                                      bl #0x30eba4
006c600c  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
006c6010  00 30 a0 e1                                      mov r3, r0
006c6014  0a 00 a0 e1                                      mov r0, sl
006c6018  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c601c  52 23 f1 eb                                      bl #0x30ed6c
006c6020  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c6024  00 10 a0 e1                                      mov r1, r0
006c6028  03 00 a0 e1                                      mov r0, r3
006c602c  dc 22 f1 eb                                      bl #0x30eba4
006c6030  00 10 a0 e1                                      mov r1, r0
006c6034  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
006c6038  d9 22 f1 eb                                      bl #0x30eba4
006c603c  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
006c6040  10 01 8d e5                                      str r0, [sp, #0x110]
006c6044  0b 00 a0 e1                                      mov r0, fp
006c6048  47 23 f1 eb                                      bl #0x30ed6c
006c604c  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
006c6050  00 b0 a0 e1                                      mov fp, r0
006c6054  09 00 a0 e1                                      mov r0, sb
006c6058  43 23 f1 eb                                      bl #0x30ed6c
006c605c  00 10 a0 e1                                      mov r1, r0
006c6060  0b 00 a0 e1                                      mov r0, fp
006c6064  ce 22 f1 eb                                      bl #0x30eba4
006c6068  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
006c606c  00 90 a0 e1                                      mov sb, r0
006c6070  0a 00 a0 e1                                      mov r0, sl
006c6074  3c 23 f1 eb                                      bl #0x30ed6c
006c6078  00 10 a0 e1                                      mov r1, r0
006c607c  09 00 a0 e1                                      mov r0, sb
006c6080  c7 22 f1 eb                                      bl #0x30eba4
006c6084  00 10 a0 e1                                      mov r1, r0
006c6088  f4 00 9d e5                                      ldr r0, [sp, #0xf4]
006c608c  c4 22 f1 eb                                      bl #0x30eba4
006c6090  14 01 8d e5                                      str r0, [sp, #0x114]
006c6094  00 30 95 e5                                      ldr r3, [r5]
006c6098  05 00 a0 e1                                      mov r0, r5
006c609c  0f e0 a0 e1                                      mov lr, pc
006c60a0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006c60a4  44 10 8d e2                                      add r1, sp, #0x44
006c60a8  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
006c60ac  00 a0 a0 e1                                      mov sl, r0
006c60b0  94 fe fa eb                                      bl #0x585b08
006c60b4  00 00 50 e3                                      cmp r0, #0
006c60b8  25 00 00 1a                                      bne #0x6c6154
006c60bc  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
006c60c0  01 30 03 e2                                      and r3, r3, #1
006c60c4  00 00 53 e3                                      cmp r3, #0
006c60c8  04 00 00 1a                                      bne #0x6c60e0
006c60cc  00 40 94 e5                                      ldr r4, [r4]
006c60d0  04 00 56 e1                                      cmp r6, r4
006c60d4  39 ff ff 1a                                      bne #0x6c5dc0
006c60d8  49 df 8d e2                                      add sp, sp, #0x124
006c60dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c60e0  4c c1 9d e5                                      ldr ip, [sp, #0x14c]
006c60e4  05 10 a0 e1                                      mov r1, r5
006c60e8  40 00 9d e5                                      ldr r0, [sp, #0x40]
006c60ec  04 c0 8d e5                                      str ip, [sp, #4]
006c60f0  50 c1 9d e5                                      ldr ip, [sp, #0x150]
006c60f4  07 20 a0 e1                                      mov r2, r7
006c60f8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006c60fc  00 80 8d e5                                      str r8, [sp]
006c6100  08 c0 8d e5                                      str ip, [sp, #8]
006c6104  0d ff ff eb                                      bl #0x6c5d40
006c6108  00 40 94 e5                                      ldr r4, [r4]
006c610c  04 00 56 e1                                      cmp r6, r4
006c6110  2a ff ff 1a                                      bne #0x6c5dc0
006c6114  ef ff ff ea                                      b #0x6c60d8
006c6118  05 00 a0 e1                                      mov r0, r5
006c611c  26 44 fb eb                                      bl #0x5971bc
006c6120  00 00 50 e3                                      cmp r0, #0
006c6124  e4 ff ff 1a                                      bne #0x6c60bc
006c6128  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c612c  00 00 50 e3                                      cmp r0, #0
006c6130  2d ff ff 0a                                      beq #0x6c5dec
006c6134  00 30 95 e5                                      ldr r3, [r5]
006c6138  05 00 a0 e1                                      mov r0, r5
006c613c  0f e0 a0 e1                                      mov lr, pc
006c6140  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
006c6144  20 20 9d e5                                      ldr r2, [sp, #0x20]
006c6148  02 00 10 e1                                      tst r0, r2
006c614c  26 ff ff 1a                                      bne #0x6c5dec
006c6150  d9 ff ff ea                                      b #0x6c60bc
006c6154  0a 00 a0 e1                                      mov r0, sl
006c6158  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006c615c  35 fd fa eb                                      bl #0x585638
006c6160  00 11 9d e5                                      ldr r1, [sp, #0x100]
006c6164  04 31 9d e5                                      ldr r3, [sp, #0x104]
006c6168  08 01 9d e5                                      ldr r0, [sp, #0x108]
006c616c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006c6170  54 a0 9d e5                                      ldr sl, [sp, #0x54]
006c6174  00 20 a0 e3                                      mov r2, #0
006c6178  34 70 8d e5                                      str r7, [sp, #0x34]
006c617c  38 80 8d e5                                      str r8, [sp, #0x38]
006c6180  24 00 8d e5                                      str r0, [sp, #0x24]
006c6184  68 90 8c e2                                      add sb, ip, #0x68
006c6188  01 b0 a0 e1                                      mov fp, r1
006c618c  28 40 8d e5                                      str r4, [sp, #0x28]
006c6190  2c 60 8d e5                                      str r6, [sp, #0x2c]
006c6194  30 50 8d e5                                      str r5, [sp, #0x30]
006c6198  02 70 a0 e1                                      mov r7, r2
006c619c  03 80 a0 e1                                      mov r8, r3
006c61a0  08 00 1a e5                                      ldr r0, [sl, #-8]
006c61a4  0b 10 a0 e1                                      mov r1, fp
006c61a8  7f 20 f1 eb                                      bl #0x30e3ac
006c61ac  08 10 a0 e1                                      mov r1, r8
006c61b0  00 50 a0 e1                                      mov r5, r0
006c61b4  04 00 1a e5                                      ldr r0, [sl, #-4]
006c61b8  7b 20 f1 eb                                      bl #0x30e3ac
006c61bc  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c61c0  00 60 a0 e1                                      mov r6, r0
006c61c4  00 00 9a e5                                      ldr r0, [sl]
006c61c8  77 20 f1 eb                                      bl #0x30e3ac
006c61cc  05 10 a0 e1                                      mov r1, r5
006c61d0  00 40 a0 e1                                      mov r4, r0
006c61d4  05 00 a0 e1                                      mov r0, r5
006c61d8  e3 22 f1 eb                                      bl #0x30ed6c
006c61dc  06 10 a0 e1                                      mov r1, r6
006c61e0  00 50 a0 e1                                      mov r5, r0
006c61e4  06 00 a0 e1                                      mov r0, r6
006c61e8  df 22 f1 eb                                      bl #0x30ed6c
006c61ec  00 10 a0 e1                                      mov r1, r0
006c61f0  05 00 a0 e1                                      mov r0, r5
006c61f4  6a 22 f1 eb                                      bl #0x30eba4
006c61f8  04 10 a0 e1                                      mov r1, r4
006c61fc  00 50 a0 e1                                      mov r5, r0
006c6200  04 00 a0 e1                                      mov r0, r4
006c6204  d8 22 f1 eb                                      bl #0x30ed6c
006c6208  00 10 a0 e1                                      mov r1, r0
006c620c  05 00 a0 e1                                      mov r0, r5
006c6210  63 22 f1 eb                                      bl #0x30eba4
006c6214  00 40 a0 e1                                      mov r4, r0
006c6218  04 10 a0 e1                                      mov r1, r4
006c621c  07 00 a0 e1                                      mov r0, r7
006c6220  39 21 f1 eb                                      bl #0x30e70c
006c6224  0c a0 8a e2                                      add sl, sl, #0xc
006c6228  00 00 50 e3                                      cmp r0, #0
006c622c  04 70 a0 11                                      movne r7, r4
006c6230  09 00 5a e1                                      cmp sl, sb
006c6234  d9 ff ff 1a                                      bne #0x6c61a0
006c6238  4c 31 9d e5                                      ldr r3, [sp, #0x14c]
006c623c  07 20 a0 e1                                      mov r2, r7
006c6240  02 10 a0 e1                                      mov r1, r2
006c6244  00 00 93 e5                                      ldr r0, [r3]
006c6248  14 20 8d e5                                      str r2, [sp, #0x14]
006c624c  29 20 f1 eb                                      bl #0x30e2f8
006c6250  00 00 50 e3                                      cmp r0, #0
006c6254  30 50 9d e5                                      ldr r5, [sp, #0x30]
006c6258  50 c1 9d 15                                      ldrne ip, [sp, #0x150]
006c625c  28 40 9d e5                                      ldr r4, [sp, #0x28]
006c6260  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
006c6264  34 70 9d e5                                      ldr r7, [sp, #0x34]
006c6268  38 80 9d e5                                      ldr r8, [sp, #0x38]
006c626c  14 20 9d e5                                      ldr r2, [sp, #0x14]
006c6270  00 50 8c 15                                      strne r5, [ip]
006c6274  4c 01 9d 15                                      ldrne r0, [sp, #0x14c]
006c6278  00 20 80 15                                      strne r2, [r0]
006c627c  8e ff ff ea                                      b #0x6c60bc

; FUNCTION 0x006c6280, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManager21getSceneNodeFromRayBBENS_4core6line3dIfEEibPNS0_10ISceneNodeE
; demangled: glitch::scene::CSceneCollisionManager::getSceneNodeFromRayBB(glitch::core::line3d<float>, int, bool, glitch::scene::ISceneNode*)
; decoder-mode: arm
006c6280  30 40 2d e9                                      push {r4, r5, lr}
006c6284  1c d0 4d e2                                      sub sp, sp, #0x1c
006c6288  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006c628c  00 e0 a0 e3                                      mov lr, #0
006c6290  14 e0 8d e5                                      str lr, [sp, #0x14]
006c6294  02 e1 e0 e3                                      mvn lr, #0x80000000
006c6298  02 e5 4e e2                                      sub lr, lr, #0x800000
006c629c  00 00 5c e3                                      cmp ip, #0
006c62a0  10 e0 8d e5                                      str lr, [sp, #0x10]
006c62a4  03 e0 a0 e1                                      mov lr, r3
006c62a8  08 30 90 05                                      ldreq r3, [r0, #8]
006c62ac  01 50 a0 e1                                      mov r5, r1
006c62b0  02 40 a0 e1                                      mov r4, r2
006c62b4  04 c0 93 05                                      ldreq ip, [r3, #4]
006c62b8  05 20 a0 e1                                      mov r2, r5
006c62bc  04 30 a0 e1                                      mov r3, r4
006c62c0  0c 10 a0 e1                                      mov r1, ip
006c62c4  10 c0 8d e2                                      add ip, sp, #0x10
006c62c8  04 c0 8d e5                                      str ip, [sp, #4]
006c62cc  14 c0 8d e2                                      add ip, sp, #0x14
006c62d0  00 e0 8d e5                                      str lr, [sp]
006c62d4  08 c0 8d e5                                      str ip, [sp, #8]
006c62d8  98 fe ff eb                                      bl #0x6c5d40
006c62dc  14 00 9d e5                                      ldr r0, [sp, #0x14]
006c62e0  1c d0 8d e2                                      add sp, sp, #0x1c
006c62e4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006c62e8, declared_size=2332, range_size=2332, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManager17getCollisionPointERKNS_4core6line3dIfEEPNS0_17ITriangleSelectorERNS2_8vector3dIfEERNS2_10triangle3dIfEE
; demangled: glitch::scene::CSceneCollisionManager::getCollisionPoint(glitch::core::line3d<float> const&, glitch::scene::ITriangleSelector*, glitch::core::vector3d<float>&, glitch::core::triangle3d<float>&)
; decoder-mode: arm
006c62e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c62ec  00 40 52 e2                                      subs r4, r2, #0
006c62f0  bc d0 4d e2                                      sub sp, sp, #0xbc
006c62f4  00 70 a0 e1                                      mov r7, r0
006c62f8  01 a0 a0 e1                                      mov sl, r1
006c62fc  38 30 8d e5                                      str r3, [sp, #0x38]
006c6300  ec 01 00 0a                                      beq #0x6c6ab8
006c6304  00 30 94 e5                                      ldr r3, [r4]
006c6308  04 00 a0 e1                                      mov r0, r4
006c630c  0f e0 a0 e1                                      mov lr, pc
006c6310  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006c6314  14 30 97 e5                                      ldr r3, [r7, #0x14]
006c6318  00 50 a0 e1                                      mov r5, r0
006c631c  10 00 97 e5                                      ldr r0, [r7, #0x10]
006c6320  03 30 60 e0                                      rsb r3, r0, r3
006c6324  43 31 a0 e1                                      asr r3, r3, #2
006c6328  14 00 8d e5                                      str r0, [sp, #0x14]
006c632c  83 21 a0 e1                                      lsl r2, r3, #3
006c6330  02 20 63 e0                                      rsb r2, r3, r2
006c6334  02 23 82 e0                                      add r2, r2, r2, lsl #6
006c6338  82 21 83 e0                                      add r2, r3, r2, lsl #3
006c633c  82 17 a0 e1                                      lsl r1, r2, #0xf
006c6340  01 20 62 e0                                      rsb r2, r2, r1
006c6344  82 31 83 e0                                      add r3, r3, r2, lsl #3
006c6348  03 00 55 e1                                      cmp r5, r3
006c634c  c8 01 00 ca                                      bgt #0x6c6a74
006c6350  00 30 9a e5                                      ldr r3, [sl]
006c6354  0c 90 9a e5                                      ldr sb, [sl, #0xc]
006c6358  08 20 9a e5                                      ldr r2, [sl, #8]
006c635c  04 b0 9a e5                                      ldr fp, [sl, #4]
006c6360  00 c0 a0 e3                                      mov ip, #0
006c6364  03 00 a0 e1                                      mov r0, r3
006c6368  09 10 a0 e1                                      mov r1, sb
006c636c  b4 c0 8d e5                                      str ip, [sp, #0xb4]
006c6370  8c 20 8d e5                                      str r2, [sp, #0x8c]
006c6374  78 30 8d e5                                      str r3, [sp, #0x78]
006c6378  80 20 8d e5                                      str r2, [sp, #0x80]
006c637c  84 30 8d e5                                      str r3, [sp, #0x84]
006c6380  7c b0 8d e5                                      str fp, [sp, #0x7c]
006c6384  88 b0 8d e5                                      str fp, [sp, #0x88]
006c6388  df 20 f1 eb                                      bl #0x30e70c
006c638c  10 80 9a e5                                      ldr r8, [sl, #0x10]
006c6390  00 00 50 e3                                      cmp r0, #0
006c6394  0b 00 a0 e1                                      mov r0, fp
006c6398  08 10 a0 e1                                      mov r1, r8
006c639c  14 60 9a e5                                      ldr r6, [sl, #0x14]
006c63a0  84 90 8d 15                                      strne sb, [sp, #0x84]
006c63a4  d8 20 f1 eb                                      bl #0x30e70c
006c63a8  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
006c63ac  00 00 50 e3                                      cmp r0, #0
006c63b0  06 00 a0 e1                                      mov r0, r6
006c63b4  88 80 8d 15                                      strne r8, [sp, #0x88]
006c63b8  ce 1f f1 eb                                      bl #0x30e2f8
006c63bc  78 10 9d e5                                      ldr r1, [sp, #0x78]
006c63c0  00 00 50 e3                                      cmp r0, #0
006c63c4  09 00 a0 e1                                      mov r0, sb
006c63c8  8c 60 8d 15                                      strne r6, [sp, #0x8c]
006c63cc  ce 20 f1 eb                                      bl #0x30e70c
006c63d0  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006c63d4  00 00 50 e3                                      cmp r0, #0
006c63d8  08 00 a0 e1                                      mov r0, r8
006c63dc  78 90 8d 15                                      strne sb, [sp, #0x78]
006c63e0  c9 20 f1 eb                                      bl #0x30e70c
006c63e4  80 10 9d e5                                      ldr r1, [sp, #0x80]
006c63e8  00 00 50 e3                                      cmp r0, #0
006c63ec  06 00 a0 e1                                      mov r0, r6
006c63f0  7c 80 8d 15                                      strne r8, [sp, #0x7c]
006c63f4  c4 20 f1 eb                                      bl #0x30e70c
006c63f8  00 00 50 e3                                      cmp r0, #0
006c63fc  80 60 8d 15                                      strne r6, [sp, #0x80]
006c6400  78 e0 8d e2                                      add lr, sp, #0x78
006c6404  00 c0 94 e5                                      ldr ip, [r4]
006c6408  00 e0 8d e5                                      str lr, [sp]
006c640c  00 e0 a0 e3                                      mov lr, #0
006c6410  04 e0 8d e5                                      str lr, [sp, #4]
006c6414  05 20 a0 e1                                      mov r2, r5
006c6418  b4 30 8d e2                                      add r3, sp, #0xb4
006c641c  04 00 a0 e1                                      mov r0, r4
006c6420  14 10 9d e5                                      ldr r1, [sp, #0x14]
006c6424  0f e0 a0 e1                                      mov lr, pc
006c6428  14 f0 9c e5                                      ldr pc, [ip, #0x14]
006c642c  04 10 9a e5                                      ldr r1, [sl, #4]
006c6430  10 00 9a e5                                      ldr r0, [sl, #0x10]
006c6434  dc 1f f1 eb                                      bl #0x30e3ac
006c6438  08 10 9a e5                                      ldr r1, [sl, #8]
006c643c  00 50 a0 e1                                      mov r5, r0
006c6440  14 00 9a e5                                      ldr r0, [sl, #0x14]
006c6444  d8 1f f1 eb                                      bl #0x30e3ac
006c6448  00 10 9a e5                                      ldr r1, [sl]
006c644c  00 40 a0 e1                                      mov r4, r0
006c6450  0c 00 9a e5                                      ldr r0, [sl, #0xc]
006c6454  d4 1f f1 eb                                      bl #0x30e3ac
006c6458  9c 00 8d e5                                      str r0, [sp, #0x9c]
006c645c  9c 00 8d e2                                      add r0, sp, #0x9c
006c6460  a0 50 8d e5                                      str r5, [sp, #0xa0]
006c6464  a4 40 8d e5                                      str r4, [sp, #0xa4]
006c6468  1c 61 f2 eb                                      bl #0x35e8e0
006c646c  00 30 90 e5                                      ldr r3, [r0]
006c6470  00 80 9a e5                                      ldr r8, [sl]
006c6474  0c 90 9a e5                                      ldr sb, [sl, #0xc]
006c6478  a8 30 8d e5                                      str r3, [sp, #0xa8]
006c647c  04 20 90 e5                                      ldr r2, [r0, #4]
006c6480  00 30 a0 e3                                      mov r3, #0
006c6484  09 10 a0 e1                                      mov r1, sb
006c6488  ac 20 8d e5                                      str r2, [sp, #0xac]
006c648c  08 20 90 e5                                      ldr r2, [r0, #8]
006c6490  08 00 a0 e1                                      mov r0, r8
006c6494  98 30 8d e5                                      str r3, [sp, #0x98]
006c6498  b0 20 8d e5                                      str r2, [sp, #0xb0]
006c649c  90 30 8d e5                                      str r3, [sp, #0x90]
006c64a0  94 30 8d e5                                      str r3, [sp, #0x94]
006c64a4  c0 1f f1 eb                                      bl #0x30e3ac
006c64a8  04 20 9a e5                                      ldr r2, [sl, #4]
006c64ac  00 40 a0 e1                                      mov r4, r0
006c64b0  18 20 8d e5                                      str r2, [sp, #0x18]
006c64b4  10 30 9a e5                                      ldr r3, [sl, #0x10]
006c64b8  02 00 a0 e1                                      mov r0, r2
006c64bc  03 10 a0 e1                                      mov r1, r3
006c64c0  1c 30 8d e5                                      str r3, [sp, #0x1c]
006c64c4  b8 1f f1 eb                                      bl #0x30e3ac
006c64c8  00 50 a0 e1                                      mov r5, r0
006c64cc  08 00 9a e5                                      ldr r0, [sl, #8]
006c64d0  20 00 8d e5                                      str r0, [sp, #0x20]
006c64d4  14 10 9a e5                                      ldr r1, [sl, #0x14]
006c64d8  24 10 8d e5                                      str r1, [sp, #0x24]
006c64dc  b2 1f f1 eb                                      bl #0x30e3ac
006c64e0  04 10 a0 e1                                      mov r1, r4
006c64e4  00 60 a0 e1                                      mov r6, r0
006c64e8  04 00 a0 e1                                      mov r0, r4
006c64ec  1e 22 f1 eb                                      bl #0x30ed6c
006c64f0  05 10 a0 e1                                      mov r1, r5
006c64f4  00 40 a0 e1                                      mov r4, r0
006c64f8  05 00 a0 e1                                      mov r0, r5
006c64fc  1a 22 f1 eb                                      bl #0x30ed6c
006c6500  00 10 a0 e1                                      mov r1, r0
006c6504  04 00 a0 e1                                      mov r0, r4
006c6508  a5 21 f1 eb                                      bl #0x30eba4
006c650c  06 10 a0 e1                                      mov r1, r6
006c6510  00 40 a0 e1                                      mov r4, r0
006c6514  06 00 a0 e1                                      mov r0, r6
006c6518  13 22 f1 eb                                      bl #0x30ed6c
006c651c  00 10 a0 e1                                      mov r1, r0
006c6520  04 00 a0 e1                                      mov r0, r4
006c6524  9e 21 f1 eb                                      bl #0x30eba4
006c6528  09 10 a0 e1                                      mov r1, sb
006c652c  3c 00 8d e5                                      str r0, [sp, #0x3c]
006c6530  08 00 a0 e1                                      mov r0, r8
006c6534  74 20 f1 eb                                      bl #0x30e70c
006c6538  00 00 50 e3                                      cmp r0, #0
006c653c  09 30 a0 01                                      moveq r3, sb
006c6540  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c6544  18 00 9d e5                                      ldr r0, [sp, #0x18]
006c6548  08 90 a0 01                                      moveq sb, r8
006c654c  03 80 a0 01                                      moveq r8, r3
006c6550  6d 20 f1 eb                                      bl #0x30e70c
006c6554  00 00 50 e3                                      cmp r0, #0
006c6558  1c 30 9d 05                                      ldreq r3, [sp, #0x1c]
006c655c  18 20 9d 05                                      ldreq r2, [sp, #0x18]
006c6560  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c6564  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c6568  18 30 8d 05                                      streq r3, [sp, #0x18]
006c656c  1c 20 8d 05                                      streq r2, [sp, #0x1c]
006c6570  65 20 f1 eb                                      bl #0x30e70c
006c6574  00 00 50 e3                                      cmp r0, #0
006c6578  24 30 9d 05                                      ldreq r3, [sp, #0x24]
006c657c  20 00 9d 05                                      ldreq r0, [sp, #0x20]
006c6580  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
006c6584  20 30 8d 05                                      streq r3, [sp, #0x20]
006c6588  24 00 8d 05                                      streq r0, [sp, #0x24]
006c658c  00 00 51 e3                                      cmp r1, #0
006c6590  14 10 8d e5                                      str r1, [sp, #0x14]
006c6594  47 01 00 da                                      ble #0x6c6ab8
006c6598  02 21 e0 e3                                      mvn r2, #0x80000000
006c659c  00 40 a0 e3                                      mov r4, #0
006c65a0  02 25 42 e2                                      sub r2, r2, #0x800000
006c65a4  a8 30 8d e2                                      add r3, sp, #0xa8
006c65a8  90 00 8d e2                                      add r0, sp, #0x90
006c65ac  34 20 8d e5                                      str r2, [sp, #0x34]
006c65b0  04 50 a0 e1                                      mov r5, r4
006c65b4  2c 40 8d e5                                      str r4, [sp, #0x2c]
006c65b8  40 30 8d e5                                      str r3, [sp, #0x40]
006c65bc  44 00 8d e5                                      str r0, [sp, #0x44]
006c65c0  30 a0 8d e5                                      str sl, [sp, #0x30]
006c65c4  10 60 97 e5                                      ldr r6, [r7, #0x10]
006c65c8  08 10 a0 e1                                      mov r1, r8
006c65cc  04 a0 96 e7                                      ldr sl, [r6, r4]
006c65d0  04 60 86 e0                                      add r6, r6, r4
006c65d4  0a 00 a0 e1                                      mov r0, sl
006c65d8  4b 20 f1 eb                                      bl #0x30e70c
006c65dc  00 00 50 e3                                      cmp r0, #0
006c65e0  09 00 00 0a                                      beq #0x6c660c
006c65e4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
006c65e8  08 10 a0 e1                                      mov r1, r8
006c65ec  46 20 f1 eb                                      bl #0x30e70c
006c65f0  00 00 50 e3                                      cmp r0, #0
006c65f4  04 00 00 0a                                      beq #0x6c660c
006c65f8  18 00 96 e5                                      ldr r0, [r6, #0x18]
006c65fc  08 10 a0 e1                                      mov r1, r8
006c6600  41 20 f1 eb                                      bl #0x30e70c
006c6604  00 00 50 e3                                      cmp r0, #0
006c6608  28 00 00 1a                                      bne #0x6c66b0
006c660c  09 00 a0 e1                                      mov r0, sb
006c6610  0a 10 a0 e1                                      mov r1, sl
006c6614  3c 20 f1 eb                                      bl #0x30e70c
006c6618  00 00 50 e3                                      cmp r0, #0
006c661c  09 00 00 0a                                      beq #0x6c6648
006c6620  0c 00 96 e5                                      ldr r0, [r6, #0xc]
006c6624  09 10 a0 e1                                      mov r1, sb
006c6628  32 1f f1 eb                                      bl #0x30e2f8
006c662c  00 00 50 e3                                      cmp r0, #0
006c6630  04 00 00 0a                                      beq #0x6c6648
006c6634  18 00 96 e5                                      ldr r0, [r6, #0x18]
006c6638  09 10 a0 e1                                      mov r1, sb
006c663c  2d 1f f1 eb                                      bl #0x30e2f8
006c6640  00 00 50 e3                                      cmp r0, #0
006c6644  19 00 00 1a                                      bne #0x6c66b0
006c6648  04 b0 96 e5                                      ldr fp, [r6, #4]
006c664c  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c6650  0b 00 a0 e1                                      mov r0, fp
006c6654  2c 20 f1 eb                                      bl #0x30e70c
006c6658  00 00 50 e3                                      cmp r0, #0
006c665c  04 00 00 0a                                      beq #0x6c6674
006c6660  10 00 96 e5                                      ldr r0, [r6, #0x10]
006c6664  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c6668  27 20 f1 eb                                      bl #0x30e70c
006c666c  00 00 50 e3                                      cmp r0, #0
006c6670  e9 00 00 1a                                      bne #0x6c6a1c
006c6674  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c6678  0b 10 a0 e1                                      mov r1, fp
006c667c  22 20 f1 eb                                      bl #0x30e70c
006c6680  00 00 50 e3                                      cmp r0, #0
006c6684  11 00 00 0a                                      beq #0x6c66d0
006c6688  10 00 96 e5                                      ldr r0, [r6, #0x10]
006c668c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c6690  18 1f f1 eb                                      bl #0x30e2f8
006c6694  00 00 50 e3                                      cmp r0, #0
006c6698  0c 00 00 0a                                      beq #0x6c66d0
006c669c  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
006c66a0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c66a4  13 1f f1 eb                                      bl #0x30e2f8
006c66a8  00 00 50 e3                                      cmp r0, #0
006c66ac  07 00 00 0a                                      beq #0x6c66d0
006c66b0  14 20 9d e5                                      ldr r2, [sp, #0x14]
006c66b4  01 50 85 e2                                      add r5, r5, #1
006c66b8  24 40 84 e2                                      add r4, r4, #0x24
006c66bc  05 00 52 e1                                      cmp r2, r5
006c66c0  bf ff ff ca                                      bgt #0x6c65c4
006c66c4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006c66c8  bc d0 8d e2                                      add sp, sp, #0xbc
006c66cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c66d0  08 00 96 e5                                      ldr r0, [r6, #8]
006c66d4  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c66d8  28 00 8d e5                                      str r0, [sp, #0x28]
006c66dc  0a 20 f1 eb                                      bl #0x30e70c
006c66e0  00 00 50 e3                                      cmp r0, #0
006c66e4  d7 00 00 1a                                      bne #0x6c6a48
006c66e8  24 00 9d e5                                      ldr r0, [sp, #0x24]
006c66ec  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c66f0  05 20 f1 eb                                      bl #0x30e70c
006c66f4  00 00 50 e3                                      cmp r0, #0
006c66f8  09 00 00 0a                                      beq #0x6c6724
006c66fc  14 00 96 e5                                      ldr r0, [r6, #0x14]
006c6700  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c6704  fb 1e f1 eb                                      bl #0x30e2f8
006c6708  00 00 50 e3                                      cmp r0, #0
006c670c  04 00 00 0a                                      beq #0x6c6724
006c6710  20 00 96 e5                                      ldr r0, [r6, #0x20]
006c6714  24 10 9d e5                                      ldr r1, [sp, #0x24]
006c6718  f6 1e f1 eb                                      bl #0x30e2f8
006c671c  00 00 50 e3                                      cmp r0, #0
006c6720  e2 ff ff 1a                                      bne #0x6c66b0
006c6724  30 10 9d e5                                      ldr r1, [sp, #0x30]
006c6728  00 10 91 e5                                      ldr r1, [r1]
006c672c  48 10 8d e5                                      str r1, [sp, #0x48]
006c6730  48 00 9d e5                                      ldr r0, [sp, #0x48]
006c6734  0a 10 a0 e1                                      mov r1, sl
006c6738  1b 1f f1 eb                                      bl #0x30e3ac
006c673c  30 20 9d e5                                      ldr r2, [sp, #0x30]
006c6740  00 30 a0 e1                                      mov r3, r0
006c6744  0b 10 a0 e1                                      mov r1, fp
006c6748  04 20 92 e5                                      ldr r2, [r2, #4]
006c674c  10 30 8d e5                                      str r3, [sp, #0x10]
006c6750  02 00 a0 e1                                      mov r0, r2
006c6754  4c 20 8d e5                                      str r2, [sp, #0x4c]
006c6758  13 1f f1 eb                                      bl #0x30e3ac
006c675c  00 20 a0 e1                                      mov r2, r0
006c6760  30 00 9d e5                                      ldr r0, [sp, #0x30]
006c6764  28 10 9d e5                                      ldr r1, [sp, #0x28]
006c6768  08 a0 90 e5                                      ldr sl, [r0, #8]
006c676c  08 20 8d e5                                      str r2, [sp, #8]
006c6770  0a 00 a0 e1                                      mov r0, sl
006c6774  0c 1f f1 eb                                      bl #0x30e3ac
006c6778  10 30 9d e5                                      ldr r3, [sp, #0x10]
006c677c  00 c0 a0 e1                                      mov ip, r0
006c6780  0c c0 8d e5                                      str ip, [sp, #0xc]
006c6784  03 10 a0 e1                                      mov r1, r3
006c6788  03 00 a0 e1                                      mov r0, r3
006c678c  76 21 f1 eb                                      bl #0x30ed6c
006c6790  08 20 9d e5                                      ldr r2, [sp, #8]
006c6794  00 b0 a0 e1                                      mov fp, r0
006c6798  02 10 a0 e1                                      mov r1, r2
006c679c  02 00 a0 e1                                      mov r0, r2
006c67a0  71 21 f1 eb                                      bl #0x30ed6c
006c67a4  00 10 a0 e1                                      mov r1, r0
006c67a8  0b 00 a0 e1                                      mov r0, fp
006c67ac  fc 20 f1 eb                                      bl #0x30eba4
006c67b0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006c67b4  00 b0 a0 e1                                      mov fp, r0
006c67b8  0c 10 a0 e1                                      mov r1, ip
006c67bc  0c 00 a0 e1                                      mov r0, ip
006c67c0  69 21 f1 eb                                      bl #0x30ed6c
006c67c4  00 10 a0 e1                                      mov r1, r0
006c67c8  0b 00 a0 e1                                      mov r0, fp
006c67cc  f4 20 f1 eb                                      bl #0x30eba4
006c67d0  00 10 a0 e1                                      mov r1, r0
006c67d4  34 00 9d e5                                      ldr r0, [sp, #0x34]
006c67d8  73 20 f1 eb                                      bl #0x30e9ac
006c67dc  00 00 50 e3                                      cmp r0, #0
006c67e0  b7 00 00 1a                                      bne #0x6c6ac4
006c67e4  06 00 a0 e1                                      mov r0, r6
006c67e8  30 10 9d e5                                      ldr r1, [sp, #0x30]
006c67ec  40 20 9d e5                                      ldr r2, [sp, #0x40]
006c67f0  44 30 9d e5                                      ldr r3, [sp, #0x44]
006c67f4  58 fe fa eb                                      bl #0x58615c
006c67f8  00 00 50 e3                                      cmp r0, #0
006c67fc  fd 00 00 0a                                      beq #0x6c6bf8
006c6800  30 20 9d e5                                      ldr r2, [sp, #0x30]
006c6804  90 b0 9d e5                                      ldr fp, [sp, #0x90]
006c6808  00 10 92 e5                                      ldr r1, [r2]
006c680c  0b 00 a0 e1                                      mov r0, fp
006c6810  e5 1e f1 eb                                      bl #0x30e3ac
006c6814  94 30 9d e5                                      ldr r3, [sp, #0x94]
006c6818  00 a0 a0 e1                                      mov sl, r0
006c681c  30 00 9d e5                                      ldr r0, [sp, #0x30]
006c6820  28 30 8d e5                                      str r3, [sp, #0x28]
006c6824  04 10 90 e5                                      ldr r1, [r0, #4]
006c6828  03 00 a0 e1                                      mov r0, r3
006c682c  de 1e f1 eb                                      bl #0x30e3ac
006c6830  98 10 9d e5                                      ldr r1, [sp, #0x98]
006c6834  30 20 9d e5                                      ldr r2, [sp, #0x30]
006c6838  00 30 a0 e1                                      mov r3, r0
006c683c  48 10 8d e5                                      str r1, [sp, #0x48]
006c6840  08 10 92 e5                                      ldr r1, [r2, #8]
006c6844  48 00 9d e5                                      ldr r0, [sp, #0x48]
006c6848  10 30 8d e5                                      str r3, [sp, #0x10]
006c684c  d6 1e f1 eb                                      bl #0x30e3ac
006c6850  0a 10 a0 e1                                      mov r1, sl
006c6854  00 20 a0 e1                                      mov r2, r0
006c6858  0a 00 a0 e1                                      mov r0, sl
006c685c  08 20 8d e5                                      str r2, [sp, #8]
006c6860  41 21 f1 eb                                      bl #0x30ed6c
006c6864  10 30 9d e5                                      ldr r3, [sp, #0x10]
006c6868  00 a0 a0 e1                                      mov sl, r0
006c686c  03 10 a0 e1                                      mov r1, r3
006c6870  03 00 a0 e1                                      mov r0, r3
006c6874  3c 21 f1 eb                                      bl #0x30ed6c
006c6878  00 10 a0 e1                                      mov r1, r0
006c687c  0a 00 a0 e1                                      mov r0, sl
006c6880  c7 20 f1 eb                                      bl #0x30eba4
006c6884  08 20 9d e5                                      ldr r2, [sp, #8]
006c6888  00 a0 a0 e1                                      mov sl, r0
006c688c  02 10 a0 e1                                      mov r1, r2
006c6890  02 00 a0 e1                                      mov r0, r2
006c6894  34 21 f1 eb                                      bl #0x30ed6c
006c6898  00 10 a0 e1                                      mov r1, r0
006c689c  0a 00 a0 e1                                      mov r0, sl
006c68a0  bf 20 f1 eb                                      bl #0x30eba4
006c68a4  00 10 a0 e1                                      mov r1, r0
006c68a8  00 a0 a0 e1                                      mov sl, r0
006c68ac  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006c68b0  90 1e f1 eb                                      bl #0x30e2f8
006c68b4  30 30 9d e5                                      ldr r3, [sp, #0x30]
006c68b8  00 00 50 e3                                      cmp r0, #0
006c68bc  30 00 9d e5                                      ldr r0, [sp, #0x30]
006c68c0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006c68c4  10 30 93 e5                                      ldr r3, [r3, #0x10]
006c68c8  14 10 90 e5                                      ldr r1, [r0, #0x14]
006c68cc  c9 00 00 0a                                      beq #0x6c6bf8
006c68d0  48 00 9d e5                                      ldr r0, [sp, #0x48]
006c68d4  08 20 8d e5                                      str r2, [sp, #8]
006c68d8  10 30 8d e5                                      str r3, [sp, #0x10]
006c68dc  b2 1e f1 eb                                      bl #0x30e3ac
006c68e0  10 30 9d e5                                      ldr r3, [sp, #0x10]
006c68e4  00 c0 a0 e1                                      mov ip, r0
006c68e8  28 00 9d e5                                      ldr r0, [sp, #0x28]
006c68ec  03 10 a0 e1                                      mov r1, r3
006c68f0  0c c0 8d e5                                      str ip, [sp, #0xc]
006c68f4  ac 1e f1 eb                                      bl #0x30e3ac
006c68f8  08 20 9d e5                                      ldr r2, [sp, #8]
006c68fc  00 30 a0 e1                                      mov r3, r0
006c6900  0b 00 a0 e1                                      mov r0, fp
006c6904  02 10 a0 e1                                      mov r1, r2
006c6908  10 30 8d e5                                      str r3, [sp, #0x10]
006c690c  a6 1e f1 eb                                      bl #0x30e3ac
006c6910  00 10 a0 e1                                      mov r1, r0
006c6914  14 21 f1 eb                                      bl #0x30ed6c
006c6918  10 30 9d e5                                      ldr r3, [sp, #0x10]
006c691c  00 20 a0 e1                                      mov r2, r0
006c6920  08 20 8d e5                                      str r2, [sp, #8]
006c6924  03 10 a0 e1                                      mov r1, r3
006c6928  03 00 a0 e1                                      mov r0, r3
006c692c  0e 21 f1 eb                                      bl #0x30ed6c
006c6930  08 20 9d e5                                      ldr r2, [sp, #8]
006c6934  00 10 a0 e1                                      mov r1, r0
006c6938  02 00 a0 e1                                      mov r0, r2
006c693c  98 20 f1 eb                                      bl #0x30eba4
006c6940  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006c6944  00 30 a0 e1                                      mov r3, r0
006c6948  10 30 8d e5                                      str r3, [sp, #0x10]
006c694c  0c 10 a0 e1                                      mov r1, ip
006c6950  0c 00 a0 e1                                      mov r0, ip
006c6954  04 21 f1 eb                                      bl #0x30ed6c
006c6958  10 30 9d e5                                      ldr r3, [sp, #0x10]
006c695c  00 10 a0 e1                                      mov r1, r0
006c6960  03 00 a0 e1                                      mov r0, r3
006c6964  8e 20 f1 eb                                      bl #0x30eba4
006c6968  00 10 a0 e1                                      mov r1, r0
006c696c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006c6970  60 1e f1 eb                                      bl #0x30e2f8
006c6974  00 00 50 e3                                      cmp r0, #0
006c6978  b4 20 9d 05                                      ldreq r2, [sp, #0xb4]
006c697c  14 20 8d 05                                      streq r2, [sp, #0x14]
006c6980  4a ff ff 0a                                      beq #0x6c66b0
006c6984  34 00 9d e5                                      ldr r0, [sp, #0x34]
006c6988  0a 10 a0 e1                                      mov r1, sl
006c698c  59 1e f1 eb                                      bl #0x30e2f8
006c6990  00 00 50 e3                                      cmp r0, #0
006c6994  b4 30 9d 05                                      ldreq r3, [sp, #0xb4]
006c6998  14 30 8d 05                                      streq r3, [sp, #0x14]
006c699c  43 ff ff 0a                                      beq #0x6c66b0
006c69a0  00 30 96 e5                                      ldr r3, [r6]
006c69a4  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
006c69a8  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
006c69ac  34 a0 8d e5                                      str sl, [sp, #0x34]
006c69b0  14 00 8d e5                                      str r0, [sp, #0x14]
006c69b4  00 30 81 e5                                      str r3, [r1]
006c69b8  04 30 96 e5                                      ldr r3, [r6, #4]
006c69bc  01 20 a0 e3                                      mov r2, #1
006c69c0  2c 20 8d e5                                      str r2, [sp, #0x2c]
006c69c4  04 30 81 e5                                      str r3, [r1, #4]
006c69c8  08 30 96 e5                                      ldr r3, [r6, #8]
006c69cc  08 30 81 e5                                      str r3, [r1, #8]
006c69d0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006c69d4  0c 30 81 e5                                      str r3, [r1, #0xc]
006c69d8  10 30 96 e5                                      ldr r3, [r6, #0x10]
006c69dc  10 30 81 e5                                      str r3, [r1, #0x10]
006c69e0  14 30 96 e5                                      ldr r3, [r6, #0x14]
006c69e4  14 30 81 e5                                      str r3, [r1, #0x14]
006c69e8  18 30 96 e5                                      ldr r3, [r6, #0x18]
006c69ec  18 30 81 e5                                      str r3, [r1, #0x18]
006c69f0  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
006c69f4  1c 30 81 e5                                      str r3, [r1, #0x1c]
006c69f8  20 30 96 e5                                      ldr r3, [r6, #0x20]
006c69fc  20 30 81 e5                                      str r3, [r1, #0x20]
006c6a00  38 30 9d e5                                      ldr r3, [sp, #0x38]
006c6a04  00 b0 83 e5                                      str fp, [r3]
006c6a08  28 00 9d e5                                      ldr r0, [sp, #0x28]
006c6a0c  04 00 83 e5                                      str r0, [r3, #4]
006c6a10  48 10 9d e5                                      ldr r1, [sp, #0x48]
006c6a14  08 10 83 e5                                      str r1, [r3, #8]
006c6a18  24 ff ff ea                                      b #0x6c66b0
006c6a1c  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
006c6a20  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c6a24  38 1f f1 eb                                      bl #0x30e70c
006c6a28  00 00 50 e3                                      cmp r0, #0
006c6a2c  10 ff ff 0a                                      beq #0x6c6674
006c6a30  14 20 9d e5                                      ldr r2, [sp, #0x14]
006c6a34  01 50 85 e2                                      add r5, r5, #1
006c6a38  24 40 84 e2                                      add r4, r4, #0x24
006c6a3c  05 00 52 e1                                      cmp r2, r5
006c6a40  df fe ff ca                                      bgt #0x6c65c4
006c6a44  1e ff ff ea                                      b #0x6c66c4
006c6a48  14 00 96 e5                                      ldr r0, [r6, #0x14]
006c6a4c  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c6a50  2d 1f f1 eb                                      bl #0x30e70c
006c6a54  00 00 50 e3                                      cmp r0, #0
006c6a58  22 ff ff 0a                                      beq #0x6c66e8
006c6a5c  20 00 96 e5                                      ldr r0, [r6, #0x20]
006c6a60  20 10 9d e5                                      ldr r1, [sp, #0x20]
006c6a64  28 1f f1 eb                                      bl #0x30e70c
006c6a68  00 00 50 e3                                      cmp r0, #0
006c6a6c  0f ff ff 1a                                      bne #0x6c66b0
006c6a70  1c ff ff ea                                      b #0x6c66e8
006c6a74  00 30 a0 e3                                      mov r3, #0
006c6a78  05 10 a0 e1                                      mov r1, r5
006c6a7c  10 00 87 e2                                      add r0, r7, #0x10
006c6a80  54 20 8d e2                                      add r2, sp, #0x54
006c6a84  74 30 8d e5                                      str r3, [sp, #0x74]
006c6a88  54 30 8d e5                                      str r3, [sp, #0x54]
006c6a8c  58 30 8d e5                                      str r3, [sp, #0x58]
006c6a90  5c 30 8d e5                                      str r3, [sp, #0x5c]
006c6a94  60 30 8d e5                                      str r3, [sp, #0x60]
006c6a98  64 30 8d e5                                      str r3, [sp, #0x64]
006c6a9c  68 30 8d e5                                      str r3, [sp, #0x68]
006c6aa0  6c 30 8d e5                                      str r3, [sp, #0x6c]
006c6aa4  70 30 8d e5                                      str r3, [sp, #0x70]
006c6aa8  d3 04 fb eb                                      bl #0x587dfc
006c6aac  10 10 97 e5                                      ldr r1, [r7, #0x10]
006c6ab0  14 10 8d e5                                      str r1, [sp, #0x14]
006c6ab4  25 fe ff ea                                      b #0x6c6350
006c6ab8  00 30 a0 e3                                      mov r3, #0
006c6abc  2c 30 8d e5                                      str r3, [sp, #0x2c]
006c6ac0  ff fe ff ea                                      b #0x6c66c4
006c6ac4  0c 10 96 e5                                      ldr r1, [r6, #0xc]
006c6ac8  48 00 9d e5                                      ldr r0, [sp, #0x48]
006c6acc  36 1e f1 eb                                      bl #0x30e3ac
006c6ad0  10 10 96 e5                                      ldr r1, [r6, #0x10]
006c6ad4  00 b0 a0 e1                                      mov fp, r0
006c6ad8  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006c6adc  32 1e f1 eb                                      bl #0x30e3ac
006c6ae0  14 10 96 e5                                      ldr r1, [r6, #0x14]
006c6ae4  00 30 a0 e1                                      mov r3, r0
006c6ae8  0a 00 a0 e1                                      mov r0, sl
006c6aec  10 30 8d e5                                      str r3, [sp, #0x10]
006c6af0  2d 1e f1 eb                                      bl #0x30e3ac
006c6af4  0b 10 a0 e1                                      mov r1, fp
006c6af8  00 20 a0 e1                                      mov r2, r0
006c6afc  0b 00 a0 e1                                      mov r0, fp
006c6b00  08 20 8d e5                                      str r2, [sp, #8]
006c6b04  98 20 f1 eb                                      bl #0x30ed6c
006c6b08  10 30 9d e5                                      ldr r3, [sp, #0x10]
006c6b0c  00 b0 a0 e1                                      mov fp, r0
006c6b10  03 10 a0 e1                                      mov r1, r3
006c6b14  03 00 a0 e1                                      mov r0, r3
006c6b18  93 20 f1 eb                                      bl #0x30ed6c
006c6b1c  00 10 a0 e1                                      mov r1, r0
006c6b20  0b 00 a0 e1                                      mov r0, fp
006c6b24  1e 20 f1 eb                                      bl #0x30eba4
006c6b28  08 20 9d e5                                      ldr r2, [sp, #8]
006c6b2c  00 b0 a0 e1                                      mov fp, r0
006c6b30  02 10 a0 e1                                      mov r1, r2
006c6b34  02 00 a0 e1                                      mov r0, r2
006c6b38  8b 20 f1 eb                                      bl #0x30ed6c
006c6b3c  00 10 a0 e1                                      mov r1, r0
006c6b40  0b 00 a0 e1                                      mov r0, fp
006c6b44  16 20 f1 eb                                      bl #0x30eba4
006c6b48  00 10 a0 e1                                      mov r1, r0
006c6b4c  34 00 9d e5                                      ldr r0, [sp, #0x34]
006c6b50  95 1f f1 eb                                      bl #0x30e9ac
006c6b54  00 00 50 e3                                      cmp r0, #0
006c6b58  21 ff ff 0a                                      beq #0x6c67e4
006c6b5c  18 10 96 e5                                      ldr r1, [r6, #0x18]
006c6b60  48 00 9d e5                                      ldr r0, [sp, #0x48]
006c6b64  10 1e f1 eb                                      bl #0x30e3ac
006c6b68  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
006c6b6c  00 b0 a0 e1                                      mov fp, r0
006c6b70  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006c6b74  0c 1e f1 eb                                      bl #0x30e3ac
006c6b78  20 10 96 e5                                      ldr r1, [r6, #0x20]
006c6b7c  00 30 a0 e1                                      mov r3, r0
006c6b80  0a 00 a0 e1                                      mov r0, sl
006c6b84  10 30 8d e5                                      str r3, [sp, #0x10]
006c6b88  07 1e f1 eb                                      bl #0x30e3ac
006c6b8c  0b 10 a0 e1                                      mov r1, fp
006c6b90  00 20 a0 e1                                      mov r2, r0
006c6b94  0b 00 a0 e1                                      mov r0, fp
006c6b98  08 20 8d e5                                      str r2, [sp, #8]
006c6b9c  72 20 f1 eb                                      bl #0x30ed6c
006c6ba0  10 30 9d e5                                      ldr r3, [sp, #0x10]
006c6ba4  00 a0 a0 e1                                      mov sl, r0
006c6ba8  03 10 a0 e1                                      mov r1, r3
006c6bac  03 00 a0 e1                                      mov r0, r3
006c6bb0  6d 20 f1 eb                                      bl #0x30ed6c
006c6bb4  00 10 a0 e1                                      mov r1, r0
006c6bb8  0a 00 a0 e1                                      mov r0, sl
006c6bbc  f8 1f f1 eb                                      bl #0x30eba4
006c6bc0  08 20 9d e5                                      ldr r2, [sp, #8]
006c6bc4  00 a0 a0 e1                                      mov sl, r0
006c6bc8  02 10 a0 e1                                      mov r1, r2
006c6bcc  02 00 a0 e1                                      mov r0, r2
006c6bd0  65 20 f1 eb                                      bl #0x30ed6c
006c6bd4  00 10 a0 e1                                      mov r1, r0
006c6bd8  0a 00 a0 e1                                      mov r0, sl
006c6bdc  f0 1f f1 eb                                      bl #0x30eba4
006c6be0  00 10 a0 e1                                      mov r1, r0
006c6be4  34 00 9d e5                                      ldr r0, [sp, #0x34]
006c6be8  6f 1f f1 eb                                      bl #0x30e9ac
006c6bec  00 00 50 e3                                      cmp r0, #0
006c6bf0  ae fe ff 1a                                      bne #0x6c66b0
006c6bf4  fa fe ff ea                                      b #0x6c67e4
006c6bf8  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
006c6bfc  14 10 8d e5                                      str r1, [sp, #0x14]
006c6c00  aa fe ff ea                                      b #0x6c66b0

; FUNCTION 0x006c6c04, declared_size=1776, range_size=1776, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManager16collideWithWorldEiRNS1_14SCollisionDataENS_4core8vector3dIfEES6_
; demangled: glitch::scene::CSceneCollisionManager::collideWithWorld(int, glitch::scene::CSceneCollisionManager::SCollisionData&, glitch::core::vector3d<float>, glitch::core::vector3d<float>)
; decoder-mode: arm
006c6c04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c6c08  e4 d0 4d e2                                      sub sp, sp, #0xe4
006c6c0c  14 20 8d e5                                      str r2, [sp, #0x14]
006c6c10  05 00 52 e3                                      cmp r2, #5
006c6c14  84 20 93 e5                                      ldr r2, [r3, #0x84]
006c6c18  03 40 a0 e1                                      mov r4, r3
006c6c1c  00 90 a0 e1                                      mov sb, r0
006c6c20  01 50 a0 e1                                      mov r5, r1
006c6c24  08 61 9d e5                                      ldr r6, [sp, #0x108]
006c6c28  0c 71 9d e5                                      ldr r7, [sp, #0x10c]
006c6c2c  18 20 8d e5                                      str r2, [sp, #0x18]
006c6c30  08 00 00 da                                      ble #0x6c6c58
006c6c34  00 30 96 e5                                      ldr r3, [r6]
006c6c38  00 30 80 e5                                      str r3, [r0]
006c6c3c  04 30 96 e5                                      ldr r3, [r6, #4]
006c6c40  04 30 80 e5                                      str r3, [r0, #4]
006c6c44  08 30 96 e5                                      ldr r3, [r6, #8]
006c6c48  08 30 80 e5                                      str r3, [r0, #8]
006c6c4c  09 00 a0 e1                                      mov r0, sb
006c6c50  e4 d0 8d e2                                      add sp, sp, #0xe4
006c6c54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c6c58  00 30 97 e5                                      ldr r3, [r7]
006c6c5c  30 00 84 e2                                      add r0, r4, #0x30
006c6c60  24 30 84 e5                                      str r3, [r4, #0x24]
006c6c64  04 30 97 e5                                      ldr r3, [r7, #4]
006c6c68  28 30 84 e5                                      str r3, [r4, #0x28]
006c6c6c  08 30 97 e5                                      ldr r3, [r7, #8]
006c6c70  2c 30 84 e5                                      str r3, [r4, #0x2c]
006c6c74  00 30 97 e5                                      ldr r3, [r7]
006c6c78  30 30 84 e5                                      str r3, [r4, #0x30]
006c6c7c  04 30 97 e5                                      ldr r3, [r7, #4]
006c6c80  34 30 84 e5                                      str r3, [r4, #0x34]
006c6c84  08 30 97 e5                                      ldr r3, [r7, #8]
006c6c88  38 30 84 e5                                      str r3, [r4, #0x38]
006c6c8c  13 5f f2 eb                                      bl #0x35e8e0
006c6c90  00 30 96 e5                                      ldr r3, [r6]
006c6c94  18 a0 94 e5                                      ldr sl, [r4, #0x18]
006c6c98  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
006c6c9c  3c 30 84 e5                                      str r3, [r4, #0x3c]
006c6ca0  04 30 96 e5                                      ldr r3, [r6, #4]
006c6ca4  20 b0 94 e5                                      ldr fp, [r4, #0x20]
006c6ca8  00 20 a0 e3                                      mov r2, #0
006c6cac  40 30 84 e5                                      str r3, [r4, #0x40]
006c6cb0  08 30 96 e5                                      ldr r3, [r6, #8]
006c6cb4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006c6cb8  48 20 c4 e5                                      strb r2, [r4, #0x48]
006c6cbc  44 30 84 e5                                      str r3, [r4, #0x44]
006c6cc0  02 31 e0 e3                                      mvn r3, #0x80000000
006c6cc4  02 35 43 e2                                      sub r3, r3, #0x800000
006c6cc8  4c 30 84 e5                                      str r3, [r4, #0x4c]
006c6ccc  0a 00 a0 e1                                      mov r0, sl
006c6cd0  94 a0 8d e5                                      str sl, [sp, #0x94]
006c6cd4  98 80 8d e5                                      str r8, [sp, #0x98]
006c6cd8  9c b0 8d e5                                      str fp, [sp, #0x9c]
006c6cdc  a0 a0 8d e5                                      str sl, [sp, #0xa0]
006c6ce0  a4 80 8d e5                                      str r8, [sp, #0xa4]
006c6ce4  a8 b0 8d e5                                      str fp, [sp, #0xa8]
006c6ce8  ad 1f f1 eb                                      bl #0x30eba4
006c6cec  0c 00 8d e5                                      str r0, [sp, #0xc]
006c6cf0  10 10 94 e5                                      ldr r1, [r4, #0x10]
006c6cf4  08 00 a0 e1                                      mov r0, r8
006c6cf8  a9 1f f1 eb                                      bl #0x30eba4
006c6cfc  10 00 8d e5                                      str r0, [sp, #0x10]
006c6d00  14 10 94 e5                                      ldr r1, [r4, #0x14]
006c6d04  0b 00 a0 e1                                      mov r0, fp
006c6d08  a5 1f f1 eb                                      bl #0x30eba4
006c6d0c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006c6d10  00 b0 a0 e1                                      mov fp, r0
006c6d14  0a 00 a0 e1                                      mov r0, sl
006c6d18  7b 1e f1 eb                                      bl #0x30e70c
006c6d1c  00 00 50 e3                                      cmp r0, #0
006c6d20  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
006c6d24  10 10 9d e5                                      ldr r1, [sp, #0x10]
006c6d28  08 00 a0 e1                                      mov r0, r8
006c6d2c  a0 30 8d 15                                      strne r3, [sp, #0xa0]
006c6d30  75 1e f1 eb                                      bl #0x30e70c
006c6d34  00 00 50 e3                                      cmp r0, #0
006c6d38  10 c0 9d 15                                      ldrne ip, [sp, #0x10]
006c6d3c  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
006c6d40  0b 00 a0 e1                                      mov r0, fp
006c6d44  a4 c0 8d 15                                      strne ip, [sp, #0xa4]
006c6d48  6a 1d f1 eb                                      bl #0x30e2f8
006c6d4c  94 10 9d e5                                      ldr r1, [sp, #0x94]
006c6d50  00 00 50 e3                                      cmp r0, #0
006c6d54  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006c6d58  a8 b0 8d 15                                      strne fp, [sp, #0xa8]
006c6d5c  6a 1e f1 eb                                      bl #0x30e70c
006c6d60  00 00 50 e3                                      cmp r0, #0
006c6d64  0c 20 9d 15                                      ldrne r2, [sp, #0xc]
006c6d68  98 10 9d e5                                      ldr r1, [sp, #0x98]
006c6d6c  10 00 9d e5                                      ldr r0, [sp, #0x10]
006c6d70  94 20 8d 15                                      strne r2, [sp, #0x94]
006c6d74  64 1e f1 eb                                      bl #0x30e70c
006c6d78  00 00 50 e3                                      cmp r0, #0
006c6d7c  10 30 9d 15                                      ldrne r3, [sp, #0x10]
006c6d80  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
006c6d84  0b 00 a0 e1                                      mov r0, fp
006c6d88  98 30 8d 15                                      strne r3, [sp, #0x98]
006c6d8c  5e 1e f1 eb                                      bl #0x30e70c
006c6d90  00 00 50 e3                                      cmp r0, #0
006c6d94  9c b0 8d 15                                      strne fp, [sp, #0x9c]
006c6d98  00 10 94 e5                                      ldr r1, [r4]
006c6d9c  94 00 9d e5                                      ldr r0, [sp, #0x94]
006c6da0  81 1d f1 eb                                      bl #0x30e3ac
006c6da4  94 00 8d e5                                      str r0, [sp, #0x94]
006c6da8  04 10 94 e5                                      ldr r1, [r4, #4]
006c6dac  98 00 9d e5                                      ldr r0, [sp, #0x98]
006c6db0  7d 1d f1 eb                                      bl #0x30e3ac
006c6db4  98 00 8d e5                                      str r0, [sp, #0x98]
006c6db8  08 10 94 e5                                      ldr r1, [r4, #8]
006c6dbc  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
006c6dc0  79 1d f1 eb                                      bl #0x30e3ac
006c6dc4  9c 00 8d e5                                      str r0, [sp, #0x9c]
006c6dc8  00 10 94 e5                                      ldr r1, [r4]
006c6dcc  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
006c6dd0  73 1f f1 eb                                      bl #0x30eba4
006c6dd4  a0 00 8d e5                                      str r0, [sp, #0xa0]
006c6dd8  04 10 94 e5                                      ldr r1, [r4, #4]
006c6ddc  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
006c6de0  6f 1f f1 eb                                      bl #0x30eba4
006c6de4  a4 00 8d e5                                      str r0, [sp, #0xa4]
006c6de8  08 10 94 e5                                      ldr r1, [r4, #8]
006c6dec  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
006c6df0  6b 1f f1 eb                                      bl #0x30eba4
006c6df4  88 30 94 e5                                      ldr r3, [r4, #0x88]
006c6df8  a8 00 8d e5                                      str r0, [sp, #0xa8]
006c6dfc  00 a0 a0 e3                                      mov sl, #0
006c6e00  03 00 a0 e1                                      mov r0, r3
006c6e04  00 30 93 e5                                      ldr r3, [r3]
006c6e08  0f e0 a0 e1                                      mov lr, pc
006c6e0c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006c6e10  00 b0 a0 e1                                      mov fp, r0
006c6e14  00 30 a0 e3                                      mov r3, #0
006c6e18  2c c0 8d e2                                      add ip, sp, #0x2c
006c6e1c  10 00 85 e2                                      add r0, r5, #0x10
006c6e20  0b 10 a0 e1                                      mov r1, fp
006c6e24  70 20 8d e2                                      add r2, sp, #0x70
006c6e28  0c c0 8d e5                                      str ip, [sp, #0xc]
006c6e2c  90 30 8d e5                                      str r3, [sp, #0x90]
006c6e30  70 30 8d e5                                      str r3, [sp, #0x70]
006c6e34  74 30 8d e5                                      str r3, [sp, #0x74]
006c6e38  78 30 8d e5                                      str r3, [sp, #0x78]
006c6e3c  7c 30 8d e5                                      str r3, [sp, #0x7c]
006c6e40  80 30 8d e5                                      str r3, [sp, #0x80]
006c6e44  84 30 8d e5                                      str r3, [sp, #0x84]
006c6e48  88 30 8d e5                                      str r3, [sp, #0x88]
006c6e4c  8c 30 8d e5                                      str r3, [sp, #0x8c]
006c6e50  fe 85 a0 e3                                      mov r8, #0x3f800000
006c6e54  e8 03 fb eb                                      bl #0x587dfc
006c6e58  40 20 a0 e3                                      mov r2, #0x40
006c6e5c  0a 10 a0 e1                                      mov r1, sl
006c6e60  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006c6e64  7d 1d f1 eb                                      bl #0x30e460
006c6e68  00 10 94 e5                                      ldr r1, [r4]
006c6e6c  08 00 a0 e1                                      mov r0, r8
006c6e70  68 80 8d e5                                      str r8, [sp, #0x68]
006c6e74  86 1f f1 eb                                      bl #0x30ec94
006c6e78  04 10 94 e5                                      ldr r1, [r4, #4]
006c6e7c  00 20 a0 e1                                      mov r2, r0
006c6e80  08 00 a0 e1                                      mov r0, r8
006c6e84  08 20 8d e5                                      str r2, [sp, #8]
006c6e88  81 1f f1 eb                                      bl #0x30ec94
006c6e8c  10 00 8d e5                                      str r0, [sp, #0x10]
006c6e90  08 10 94 e5                                      ldr r1, [r4, #8]
006c6e94  08 00 a0 e1                                      mov r0, r8
006c6e98  7d 1f f1 eb                                      bl #0x30ec94
006c6e9c  08 20 9d e5                                      ldr r2, [sp, #8]
006c6ea0  88 c0 94 e5                                      ldr ip, [r4, #0x88]
006c6ea4  10 10 95 e5                                      ldr r1, [r5, #0x10]
006c6ea8  2c 20 8d e5                                      str r2, [sp, #0x2c]
006c6eac  10 20 9d e5                                      ldr r2, [sp, #0x10]
006c6eb0  e0 30 8d e2                                      add r3, sp, #0xe0
006c6eb4  04 a0 23 e5                                      str sl, [r3, #-4]!
006c6eb8  54 00 8d e5                                      str r0, [sp, #0x54]
006c6ebc  40 20 8d e5                                      str r2, [sp, #0x40]
006c6ec0  6c a0 cd e5                                      strb sl, [sp, #0x6c]
006c6ec4  00 80 9c e5                                      ldr r8, [ip]
006c6ec8  0c 00 a0 e1                                      mov r0, ip
006c6ecc  94 c0 8d e2                                      add ip, sp, #0x94
006c6ed0  00 c0 8d e5                                      str ip, [sp]
006c6ed4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006c6ed8  0b 20 a0 e1                                      mov r2, fp
006c6edc  04 c0 8d e5                                      str ip, [sp, #4]
006c6ee0  0f e0 a0 e1                                      mov lr, pc
006c6ee4  14 f0 98 e5                                      ldr pc, [r8, #0x14]
006c6ee8  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
006c6eec  0a 00 53 e1                                      cmp r3, sl
006c6ef0  0a 00 00 da                                      ble #0x6c6f20
006c6ef4  0a 80 a0 e1                                      mov r8, sl
006c6ef8  10 20 95 e5                                      ldr r2, [r5, #0x10]
006c6efc  05 00 a0 e1                                      mov r0, r5
006c6f00  04 10 a0 e1                                      mov r1, r4
006c6f04  08 20 82 e0                                      add r2, r2, r8
006c6f08  e6 f4 ff eb                                      bl #0x6c42a8
006c6f0c  dc 30 9d e5                                      ldr r3, [sp, #0xdc]
006c6f10  01 a0 8a e2                                      add sl, sl, #1
006c6f14  24 80 88 e2                                      add r8, r8, #0x24
006c6f18  0a 00 53 e1                                      cmp r3, sl
006c6f1c  f5 ff ff ca                                      bgt #0x6c6ef8
006c6f20  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
006c6f24  00 00 53 e3                                      cmp r3, #0
006c6f28  dd 00 00 0a                                      beq #0x6c72a4
006c6f2c  00 b0 96 e5                                      ldr fp, [r6]
006c6f30  00 80 97 e5                                      ldr r8, [r7]
006c6f34  0b 00 a0 e1                                      mov r0, fp
006c6f38  08 10 a0 e1                                      mov r1, r8
006c6f3c  18 1f f1 eb                                      bl #0x30eba4
006c6f40  1c 00 8d e5                                      str r0, [sp, #0x1c]
006c6f44  04 20 96 e5                                      ldr r2, [r6, #4]
006c6f48  0c 20 8d e5                                      str r2, [sp, #0xc]
006c6f4c  04 10 97 e5                                      ldr r1, [r7, #4]
006c6f50  02 00 a0 e1                                      mov r0, r2
006c6f54  12 1f f1 eb                                      bl #0x30eba4
006c6f58  20 00 8d e5                                      str r0, [sp, #0x20]
006c6f5c  08 60 96 e5                                      ldr r6, [r6, #8]
006c6f60  08 10 97 e5                                      ldr r1, [r7, #8]
006c6f64  06 00 a0 e1                                      mov r0, r6
006c6f68  0d 1f f1 eb                                      bl #0x30eba4
006c6f6c  24 00 8d e5                                      str r0, [sp, #0x24]
006c6f70  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c6f74  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006c6f78  4d 1d f1 eb                                      bl #0x30e4b4
006c6f7c  00 00 50 e3                                      cmp r0, #0
006c6f80  81 00 00 1a                                      bne #0x6c718c
006c6f84  50 a0 94 e5                                      ldr sl, [r4, #0x50]
006c6f88  54 80 94 e5                                      ldr r8, [r4, #0x54]
006c6f8c  58 70 94 e5                                      ldr r7, [r4, #0x58]
006c6f90  0a 10 a0 e1                                      mov r1, sl
006c6f94  0b 00 a0 e1                                      mov r0, fp
006c6f98  03 1d f1 eb                                      bl #0x30e3ac
006c6f9c  08 10 a0 e1                                      mov r1, r8
006c6fa0  c4 00 8d e5                                      str r0, [sp, #0xc4]
006c6fa4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006c6fa8  ff 1c f1 eb                                      bl #0x30e3ac
006c6fac  07 10 a0 e1                                      mov r1, r7
006c6fb0  c8 00 8d e5                                      str r0, [sp, #0xc8]
006c6fb4  06 00 a0 e1                                      mov r0, r6
006c6fb8  fb 1c f1 eb                                      bl #0x30e3ac
006c6fbc  cc 00 8d e5                                      str r0, [sp, #0xcc]
006c6fc0  c4 00 8d e2                                      add r0, sp, #0xc4
006c6fc4  45 5e f2 eb                                      bl #0x35e8e0
006c6fc8  0a 10 a0 e1                                      mov r1, sl
006c6fcc  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
006c6fd0  65 1f f1 eb                                      bl #0x30ed6c
006c6fd4  08 10 a0 e1                                      mov r1, r8
006c6fd8  00 a0 a0 e1                                      mov sl, r0
006c6fdc  c8 00 9d e5                                      ldr r0, [sp, #0xc8]
006c6fe0  61 1f f1 eb                                      bl #0x30ed6c
006c6fe4  00 10 a0 e1                                      mov r1, r0
006c6fe8  0a 00 a0 e1                                      mov r0, sl
006c6fec  ec 1e f1 eb                                      bl #0x30eba4
006c6ff0  07 10 a0 e1                                      mov r1, r7
006c6ff4  00 80 a0 e1                                      mov r8, r0
006c6ff8  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
006c6ffc  5a 1f f1 eb                                      bl #0x30ed6c
006c7000  00 10 a0 e1                                      mov r1, r0
006c7004  08 00 a0 e1                                      mov r0, r8
006c7008  e5 1e f1 eb                                      bl #0x30eba4
006c700c  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
006c7010  02 81 80 e2                                      add r8, r0, #0x80000000
006c7014  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c7018  53 1f f1 eb                                      bl #0x30ed6c
006c701c  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
006c7020  00 70 a0 e1                                      mov r7, r0
006c7024  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c7028  4f 1f f1 eb                                      bl #0x30ed6c
006c702c  00 10 a0 e1                                      mov r1, r0
006c7030  07 00 a0 e1                                      mov r0, r7
006c7034  da 1e f1 eb                                      bl #0x30eba4
006c7038  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
006c703c  00 70 a0 e1                                      mov r7, r0
006c7040  24 00 9d e5                                      ldr r0, [sp, #0x24]
006c7044  48 1f f1 eb                                      bl #0x30ed6c
006c7048  00 10 a0 e1                                      mov r1, r0
006c704c  07 00 a0 e1                                      mov r0, r7
006c7050  d3 1e f1 eb                                      bl #0x30eba4
006c7054  00 10 a0 e1                                      mov r1, r0
006c7058  08 00 a0 e1                                      mov r0, r8
006c705c  d0 1e f1 eb                                      bl #0x30eba4
006c7060  00 a0 a0 e1                                      mov sl, r0
006c7064  0a 10 a0 e1                                      mov r1, sl
006c7068  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
006c706c  3e 1f f1 eb                                      bl #0x30ed6c
006c7070  00 10 a0 e1                                      mov r1, r0
006c7074  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006c7078  cb 1c f1 eb                                      bl #0x30e3ac
006c707c  50 10 94 e5                                      ldr r1, [r4, #0x50]
006c7080  c9 1c f1 eb                                      bl #0x30e3ac
006c7084  0a 10 a0 e1                                      mov r1, sl
006c7088  00 70 a0 e1                                      mov r7, r0
006c708c  c8 00 9d e5                                      ldr r0, [sp, #0xc8]
006c7090  35 1f f1 eb                                      bl #0x30ed6c
006c7094  00 10 a0 e1                                      mov r1, r0
006c7098  20 00 9d e5                                      ldr r0, [sp, #0x20]
006c709c  c2 1c f1 eb                                      bl #0x30e3ac
006c70a0  54 10 94 e5                                      ldr r1, [r4, #0x54]
006c70a4  c0 1c f1 eb                                      bl #0x30e3ac
006c70a8  0a 10 a0 e1                                      mov r1, sl
006c70ac  00 80 a0 e1                                      mov r8, r0
006c70b0  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
006c70b4  2c 1f f1 eb                                      bl #0x30ed6c
006c70b8  00 10 a0 e1                                      mov r1, r0
006c70bc  24 00 9d e5                                      ldr r0, [sp, #0x24]
006c70c0  b9 1c f1 eb                                      bl #0x30e3ac
006c70c4  58 10 94 e5                                      ldr r1, [r4, #0x58]
006c70c8  b7 1c f1 eb                                      bl #0x30e3ac
006c70cc  07 10 a0 e1                                      mov r1, r7
006c70d0  00 a0 a0 e1                                      mov sl, r0
006c70d4  07 00 a0 e1                                      mov r0, r7
006c70d8  23 1f f1 eb                                      bl #0x30ed6c
006c70dc  08 10 a0 e1                                      mov r1, r8
006c70e0  00 30 a0 e1                                      mov r3, r0
006c70e4  08 00 a0 e1                                      mov r0, r8
006c70e8  08 30 8d e5                                      str r3, [sp, #8]
006c70ec  1e 1f f1 eb                                      bl #0x30ed6c
006c70f0  08 30 9d e5                                      ldr r3, [sp, #8]
006c70f4  00 10 a0 e1                                      mov r1, r0
006c70f8  03 00 a0 e1                                      mov r0, r3
006c70fc  a8 1e f1 eb                                      bl #0x30eba4
006c7100  0a 10 a0 e1                                      mov r1, sl
006c7104  00 30 a0 e1                                      mov r3, r0
006c7108  0a 00 a0 e1                                      mov r0, sl
006c710c  08 30 8d e5                                      str r3, [sp, #8]
006c7110  15 1f f1 eb                                      bl #0x30ed6c
006c7114  08 30 9d e5                                      ldr r3, [sp, #8]
006c7118  00 10 a0 e1                                      mov r1, r0
006c711c  03 00 a0 e1                                      mov r0, r3
006c7120  9f 1e f1 eb                                      bl #0x30eba4
006c7124  de 1d f1 eb                                      bl #0x30e8a4
006c7128  24 1c f1 eb                                      bl #0x30e1c0
006c712c  5b 1d f1 eb                                      bl #0x30e6a0
006c7130  00 10 a0 e1                                      mov r1, r0
006c7134  18 00 9d e5                                      ldr r0, [sp, #0x18]
006c7138  6e 1c f1 eb                                      bl #0x30e2f8
006c713c  00 00 50 e3                                      cmp r0, #0
006c7140  66 00 00 1a                                      bne #0x6c72e0
006c7144  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006c7148  05 10 a0 e1                                      mov r1, r5
006c714c  04 30 a0 e1                                      mov r3, r4
006c7150  01 20 8c e2                                      add r2, ip, #1
006c7154  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006c7158  09 00 a0 e1                                      mov r0, sb
006c715c  b8 b0 8d e5                                      str fp, [sp, #0xb8]
006c7160  bc c0 8d e5                                      str ip, [sp, #0xbc]
006c7164  b8 c0 8d e2                                      add ip, sp, #0xb8
006c7168  00 c0 8d e5                                      str ip, [sp]
006c716c  ac c0 8d e2                                      add ip, sp, #0xac
006c7170  c0 60 8d e5                                      str r6, [sp, #0xc0]
006c7174  ac 70 8d e5                                      str r7, [sp, #0xac]
006c7178  b0 80 8d e5                                      str r8, [sp, #0xb0]
006c717c  b4 a0 8d e5                                      str sl, [sp, #0xb4]
006c7180  04 c0 8d e5                                      str ip, [sp, #4]
006c7184  9e fe ff eb                                      bl #0x6c6c04
006c7188  af fe ff ea                                      b #0x6c6c4c
006c718c  08 20 97 e5                                      ldr r2, [r7, #8]
006c7190  04 30 97 e5                                      ldr r3, [r7, #4]
006c7194  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006c7198  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c719c  d8 20 8d e5                                      str r2, [sp, #0xd8]
006c71a0  d4 30 8d e5                                      str r3, [sp, #0xd4]
006c71a4  d0 80 8d e5                                      str r8, [sp, #0xd0]
006c71a8  7f 1c f1 eb                                      bl #0x30e3ac
006c71ac  d0 a0 8d e2                                      add sl, sp, #0xd0
006c71b0  00 60 a0 e1                                      mov r6, r0
006c71b4  0a 00 a0 e1                                      mov r0, sl
006c71b8  c8 5d f2 eb                                      bl #0x35e8e0
006c71bc  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
006c71c0  06 00 a0 e1                                      mov r0, r6
006c71c4  e8 1e f1 eb                                      bl #0x30ed6c
006c71c8  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
006c71cc  00 80 a0 e1                                      mov r8, r0
006c71d0  06 00 a0 e1                                      mov r0, r6
006c71d4  d0 80 8d e5                                      str r8, [sp, #0xd0]
006c71d8  e3 1e f1 eb                                      bl #0x30ed6c
006c71dc  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
006c71e0  00 70 a0 e1                                      mov r7, r0
006c71e4  06 00 a0 e1                                      mov r0, r6
006c71e8  d4 70 8d e5                                      str r7, [sp, #0xd4]
006c71ec  de 1e f1 eb                                      bl #0x30ed6c
006c71f0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
006c71f4  00 60 a0 e1                                      mov r6, r0
006c71f8  08 00 a0 e1                                      mov r0, r8
006c71fc  d8 60 8d e5                                      str r6, [sp, #0xd8]
006c7200  67 1e f1 eb                                      bl #0x30eba4
006c7204  40 10 94 e5                                      ldr r1, [r4, #0x40]
006c7208  00 b0 a0 e1                                      mov fp, r0
006c720c  07 00 a0 e1                                      mov r0, r7
006c7210  63 1e f1 eb                                      bl #0x30eba4
006c7214  0c 00 8d e5                                      str r0, [sp, #0xc]
006c7218  44 10 94 e5                                      ldr r1, [r4, #0x44]
006c721c  06 00 a0 e1                                      mov r0, r6
006c7220  5f 1e f1 eb                                      bl #0x30eba4
006c7224  00 60 a0 e1                                      mov r6, r0
006c7228  0a 00 a0 e1                                      mov r0, sl
006c722c  ab 5d f2 eb                                      bl #0x35e8e0
006c7230  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
006c7234  18 00 9d e5                                      ldr r0, [sp, #0x18]
006c7238  cb 1e f1 eb                                      bl #0x30ed6c
006c723c  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
006c7240  00 70 a0 e1                                      mov r7, r0
006c7244  18 00 9d e5                                      ldr r0, [sp, #0x18]
006c7248  c7 1e f1 eb                                      bl #0x30ed6c
006c724c  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
006c7250  00 30 a0 e1                                      mov r3, r0
006c7254  18 00 9d e5                                      ldr r0, [sp, #0x18]
006c7258  08 30 8d e5                                      str r3, [sp, #8]
006c725c  c2 1e f1 eb                                      bl #0x30ed6c
006c7260  00 10 a0 e1                                      mov r1, r0
006c7264  50 00 94 e5                                      ldr r0, [r4, #0x50]
006c7268  4f 1c f1 eb                                      bl #0x30e3ac
006c726c  07 10 a0 e1                                      mov r1, r7
006c7270  50 00 84 e5                                      str r0, [r4, #0x50]
006c7274  00 a0 a0 e1                                      mov sl, r0
006c7278  54 00 94 e5                                      ldr r0, [r4, #0x54]
006c727c  4a 1c f1 eb                                      bl #0x30e3ac
006c7280  54 00 84 e5                                      str r0, [r4, #0x54]
006c7284  08 30 9d e5                                      ldr r3, [sp, #8]
006c7288  00 80 a0 e1                                      mov r8, r0
006c728c  58 00 94 e5                                      ldr r0, [r4, #0x58]
006c7290  03 10 a0 e1                                      mov r1, r3
006c7294  44 1c f1 eb                                      bl #0x30e3ac
006c7298  00 70 a0 e1                                      mov r7, r0
006c729c  58 00 84 e5                                      str r0, [r4, #0x58]
006c72a0  3a ff ff ea                                      b #0x6c6f90
006c72a4  04 10 97 e5                                      ldr r1, [r7, #4]
006c72a8  04 00 96 e5                                      ldr r0, [r6, #4]
006c72ac  3c 1e f1 eb                                      bl #0x30eba4
006c72b0  08 10 97 e5                                      ldr r1, [r7, #8]
006c72b4  00 50 a0 e1                                      mov r5, r0
006c72b8  08 00 96 e5                                      ldr r0, [r6, #8]
006c72bc  38 1e f1 eb                                      bl #0x30eba4
006c72c0  00 10 97 e5                                      ldr r1, [r7]
006c72c4  00 40 a0 e1                                      mov r4, r0
006c72c8  00 00 96 e5                                      ldr r0, [r6]
006c72cc  34 1e f1 eb                                      bl #0x30eba4
006c72d0  04 50 89 e5                                      str r5, [sb, #4]
006c72d4  00 00 89 e5                                      str r0, [sb]
006c72d8  08 40 89 e5                                      str r4, [sb, #8]
006c72dc  5a fe ff ea                                      b #0x6c6c4c
006c72e0  00 b0 89 e5                                      str fp, [sb]
006c72e4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c72e8  08 60 89 e5                                      str r6, [sb, #8]
006c72ec  04 30 89 e5                                      str r3, [sb, #4]
006c72f0  55 fe ff ea                                      b #0x6c6c4c

; FUNCTION 0x006c72f4, declared_size=1068, range_size=1068, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManager25collideEllipsoidWithWorldEPNS0_17ITriangleSelectorERKNS_4core8vector3dIfEES8_S8_fS8_RNS4_10triangle3dIfEERb
; demangled: glitch::scene::CSceneCollisionManager::collideEllipsoidWithWorld(glitch::scene::ITriangleSelector*, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, float, glitch::core::vector3d<float> const&, glitch::core::triangle3d<float>&, bool&)
; decoder-mode: arm
006c72f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c72f8  00 a0 52 e2                                      subs sl, r2, #0
006c72fc  43 df 4d e2                                      sub sp, sp, #0x10c
006c7300  00 60 a0 e1                                      mov r6, r0
006c7304  01 80 a0 e1                                      mov r8, r1
006c7308  03 b0 a0 e1                                      mov fp, r3
006c730c  30 91 9d e5                                      ldr sb, [sp, #0x130]
006c7310  3c 71 9d e5                                      ldr r7, [sp, #0x13c]
006c7314  40 41 9d e5                                      ldr r4, [sp, #0x140]
006c7318  05 00 00 0a                                      beq #0x6c7334
006c731c  00 50 a0 e3                                      mov r5, #0
006c7320  00 00 99 e5                                      ldr r0, [sb]
006c7324  05 10 a0 e1                                      mov r1, r5
006c7328  17 1b f1 eb                                      bl #0x30df8c
006c732c  00 00 50 e3                                      cmp r0, #0
006c7330  08 00 00 0a                                      beq #0x6c7358
006c7334  00 30 9b e5                                      ldr r3, [fp]
006c7338  00 30 86 e5                                      str r3, [r6]
006c733c  04 30 9b e5                                      ldr r3, [fp, #4]
006c7340  04 30 86 e5                                      str r3, [r6, #4]
006c7344  08 30 9b e5                                      ldr r3, [fp, #8]
006c7348  08 30 86 e5                                      str r3, [r6, #8]
006c734c  06 00 a0 e1                                      mov r0, r6
006c7350  43 df 8d e2                                      add sp, sp, #0x10c
006c7354  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c7358  04 00 99 e5                                      ldr r0, [sb, #4]
006c735c  05 10 a0 e1                                      mov r1, r5
006c7360  09 1b f1 eb                                      bl #0x30df8c
006c7364  00 00 50 e3                                      cmp r0, #0
006c7368  f1 ff ff 1a                                      bne #0x6c7334
006c736c  08 00 99 e5                                      ldr r0, [sb, #8]
006c7370  05 10 a0 e1                                      mov r1, r5
006c7374  04 1b f1 eb                                      bl #0x30df8c
006c7378  00 00 50 e3                                      cmp r0, #0
006c737c  ec ff ff 1a                                      bne #0x6c7334
006c7380  34 e1 9d e5                                      ldr lr, [sp, #0x134]
006c7384  08 10 9b e5                                      ldr r1, [fp, #8]
006c7388  00 00 9b e5                                      ldr r0, [fp]
006c738c  08 30 9e e5                                      ldr r3, [lr, #8]
006c7390  04 c0 9b e5                                      ldr ip, [fp, #4]
006c7394  00 20 9e e5                                      ldr r2, [lr]
006c7398  00 b0 99 e5                                      ldr fp, [sb]
006c739c  04 e0 9e e5                                      ldr lr, [lr, #4]
006c73a0  28 00 8d e5                                      str r0, [sp, #0x28]
006c73a4  2c c0 8d e5                                      str ip, [sp, #0x2c]
006c73a8  20 e0 8d e5                                      str lr, [sp, #0x20]
006c73ac  30 10 8d e5                                      str r1, [sp, #0x30]
006c73b0  1c 20 8d e5                                      str r2, [sp, #0x1c]
006c73b4  24 30 8d e5                                      str r3, [sp, #0x24]
006c73b8  34 50 8d e5                                      str r5, [sp, #0x34]
006c73bc  38 50 8d e5                                      str r5, [sp, #0x38]
006c73c0  3c 50 8d e5                                      str r5, [sp, #0x3c]
006c73c4  40 50 8d e5                                      str r5, [sp, #0x40]
006c73c8  44 50 8d e5                                      str r5, [sp, #0x44]
006c73cc  48 50 8d e5                                      str r5, [sp, #0x48]
006c73d0  4c 50 8d e5                                      str r5, [sp, #0x4c]
006c73d4  50 50 8d e5                                      str r5, [sp, #0x50]
006c73d8  54 50 8d e5                                      str r5, [sp, #0x54]
006c73dc  60 50 8d e5                                      str r5, [sp, #0x60]
006c73e0  64 50 8d e5                                      str r5, [sp, #0x64]
006c73e4  68 50 8d e5                                      str r5, [sp, #0x68]
006c73e8  6c 50 8d e5                                      str r5, [sp, #0x6c]
006c73ec  70 50 8d e5                                      str r5, [sp, #0x70]
006c73f0  74 50 8d e5                                      str r5, [sp, #0x74]
006c73f4  78 50 8d e5                                      str r5, [sp, #0x78]
006c73f8  7c 50 8d e5                                      str r5, [sp, #0x7c]
006c73fc  80 50 8d e5                                      str r5, [sp, #0x80]
006c7400  84 50 8d e5                                      str r5, [sp, #0x84]
006c7404  88 50 8d e5                                      str r5, [sp, #0x88]
006c7408  10 b0 8d e5                                      str fp, [sp, #0x10]
006c740c  8c 50 8d e5                                      str r5, [sp, #0x8c]
006c7410  08 30 99 e5                                      ldr r3, [sb, #8]
006c7414  04 c0 99 e5                                      ldr ip, [sb, #4]
006c7418  10 90 8d e2                                      add sb, sp, #0x10
006c741c  18 30 8d e5                                      str r3, [sp, #0x18]
006c7420  02 31 e0 e3                                      mvn r3, #0x80000000
006c7424  02 35 43 e2                                      sub r3, r3, #0x800000
006c7428  5c 30 8d e5                                      str r3, [sp, #0x5c]
006c742c  38 31 9d e5                                      ldr r3, [sp, #0x138]
006c7430  00 b0 a0 e3                                      mov fp, #0
006c7434  fc 00 8d e2                                      add r0, sp, #0xfc
006c7438  18 10 89 e2                                      add r1, sb, #0x18
006c743c  09 20 a0 e1                                      mov r2, sb
006c7440  14 c0 8d e5                                      str ip, [sp, #0x14]
006c7444  94 30 8d e5                                      str r3, [sp, #0x94]
006c7448  98 a0 8d e5                                      str sl, [sp, #0x98]
006c744c  90 b0 8d e5                                      str fp, [sp, #0x90]
006c7450  8f 4b fb eb                                      bl #0x59a294
006c7454  f0 00 8d e2                                      add r0, sp, #0xf0
006c7458  0c 10 89 e2                                      add r1, sb, #0xc
006c745c  09 20 a0 e1                                      mov r2, sb
006c7460  8b 4b fb eb                                      bl #0x59a294
006c7464  fc c0 9d e5                                      ldr ip, [sp, #0xfc]
006c7468  e4 00 8d e2                                      add r0, sp, #0xe4
006c746c  08 10 a0 e1                                      mov r1, r8
006c7470  d8 c0 8d e5                                      str ip, [sp, #0xd8]
006c7474  00 c1 9d e5                                      ldr ip, [sp, #0x100]
006c7478  0b 20 a0 e1                                      mov r2, fp
006c747c  09 30 a0 e1                                      mov r3, sb
006c7480  dc c0 8d e5                                      str ip, [sp, #0xdc]
006c7484  04 c1 9d e5                                      ldr ip, [sp, #0x104]
006c7488  e0 c0 8d e5                                      str ip, [sp, #0xe0]
006c748c  f0 c0 9d e5                                      ldr ip, [sp, #0xf0]
006c7490  cc c0 8d e5                                      str ip, [sp, #0xcc]
006c7494  f4 c0 9d e5                                      ldr ip, [sp, #0xf4]
006c7498  d0 c0 8d e5                                      str ip, [sp, #0xd0]
006c749c  f8 c0 9d e5                                      ldr ip, [sp, #0xf8]
006c74a0  d4 c0 8d e5                                      str ip, [sp, #0xd4]
006c74a4  d8 c0 8d e2                                      add ip, sp, #0xd8
006c74a8  00 c0 8d e5                                      str ip, [sp]
006c74ac  cc c0 8d e2                                      add ip, sp, #0xcc
006c74b0  04 c0 8d e5                                      str ip, [sp, #4]
006c74b4  d2 fd ff eb                                      bl #0x6c6c04
006c74b8  44 21 9d e5                                      ldr r2, [sp, #0x144]
006c74bc  05 10 a0 e1                                      mov r1, r5
006c74c0  00 b0 c2 e5                                      strb fp, [r2]
006c74c4  00 00 97 e5                                      ldr r0, [r7]
006c74c8  af 1a f1 eb                                      bl #0x30df8c
006c74cc  0b 00 50 e1                                      cmp r0, fp
006c74d0  86 00 00 1a                                      bne #0x6c76f0
006c74d4  14 10 9d e5                                      ldr r1, [sp, #0x14]
006c74d8  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
006c74dc  22 1e f1 eb                                      bl #0x30ed6c
006c74e0  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c74e4  00 a0 a0 e1                                      mov sl, r0
006c74e8  ec 00 9d e5                                      ldr r0, [sp, #0xec]
006c74ec  1e 1e f1 eb                                      bl #0x30ed6c
006c74f0  10 10 9d e5                                      ldr r1, [sp, #0x10]
006c74f4  00 b0 a0 e1                                      mov fp, r0
006c74f8  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
006c74fc  1a 1e f1 eb                                      bl #0x30ed6c
006c7500  00 c0 97 e5                                      ldr ip, [r7]
006c7504  04 30 97 e5                                      ldr r3, [r7, #4]
006c7508  08 e0 97 e5                                      ldr lr, [r7, #8]
006c750c  07 10 a0 e1                                      mov r1, r7
006c7510  00 50 a0 e3                                      mov r5, #0
006c7514  28 00 8d e5                                      str r0, [sp, #0x28]
006c7518  09 20 a0 e1                                      mov r2, sb
006c751c  c0 00 8d e2                                      add r0, sp, #0xc0
006c7520  30 b0 8d e5                                      str fp, [sp, #0x30]
006c7524  1c c0 8d e5                                      str ip, [sp, #0x1c]
006c7528  20 30 8d e5                                      str r3, [sp, #0x20]
006c752c  24 e0 8d e5                                      str lr, [sp, #0x24]
006c7530  90 50 8d e5                                      str r5, [sp, #0x90]
006c7534  2c a0 8d e5                                      str sl, [sp, #0x2c]
006c7538  55 4b fb eb                                      bl #0x59a294
006c753c  05 20 a0 e1                                      mov r2, r5
006c7540  e4 50 9d e5                                      ldr r5, [sp, #0xe4]
006c7544  c0 c0 9d e5                                      ldr ip, [sp, #0xc0]
006c7548  c4 e0 9d e5                                      ldr lr, [sp, #0xc4]
006c754c  b4 50 8d e5                                      str r5, [sp, #0xb4]
006c7550  e8 50 9d e5                                      ldr r5, [sp, #0xe8]
006c7554  c8 70 9d e5                                      ldr r7, [sp, #0xc8]
006c7558  08 10 a0 e1                                      mov r1, r8
006c755c  b8 50 8d e5                                      str r5, [sp, #0xb8]
006c7560  ec 50 9d e5                                      ldr r5, [sp, #0xec]
006c7564  09 30 a0 e1                                      mov r3, sb
006c7568  9c 00 8d e2                                      add r0, sp, #0x9c
006c756c  bc 50 8d e5                                      str r5, [sp, #0xbc]
006c7570  b4 50 8d e2                                      add r5, sp, #0xb4
006c7574  00 50 8d e5                                      str r5, [sp]
006c7578  a8 50 8d e2                                      add r5, sp, #0xa8
006c757c  a8 c0 8d e5                                      str ip, [sp, #0xa8]
006c7580  f0 c0 8d e5                                      str ip, [sp, #0xf0]
006c7584  ac e0 8d e5                                      str lr, [sp, #0xac]
006c7588  b0 70 8d e5                                      str r7, [sp, #0xb0]
006c758c  04 50 8d e5                                      str r5, [sp, #4]
006c7590  f4 e0 8d e5                                      str lr, [sp, #0xf4]
006c7594  f8 70 8d e5                                      str r7, [sp, #0xf8]
006c7598  99 fd ff eb                                      bl #0x6c6c04
006c759c  90 30 9d e5                                      ldr r3, [sp, #0x90]
006c75a0  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
006c75a4  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
006c75a8  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
006c75ac  44 b1 9d e5                                      ldr fp, [sp, #0x144]
006c75b0  01 c0 73 e2                                      rsbs ip, r3, #1
006c75b4  00 c0 a0 33                                      movlo ip, #0
006c75b8  00 c0 cb e5                                      strb ip, [fp]
006c75bc  e4 00 8d e5                                      str r0, [sp, #0xe4]
006c75c0  e8 10 8d e5                                      str r1, [sp, #0xe8]
006c75c4  ec 20 8d e5                                      str r2, [sp, #0xec]
006c75c8  00 00 53 e3                                      cmp r3, #0
006c75cc  38 00 00 0a                                      beq #0x6c76b4
006c75d0  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
006c75d4  88 30 9d e5                                      ldr r3, [sp, #0x88]
006c75d8  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006c75dc  70 b0 9d e5                                      ldr fp, [sp, #0x70]
006c75e0  74 90 9d e5                                      ldr sb, [sp, #0x74]
006c75e4  78 a0 9d e5                                      ldr sl, [sp, #0x78]
006c75e8  7c 80 9d e5                                      ldr r8, [sp, #0x7c]
006c75ec  80 70 9d e5                                      ldr r7, [sp, #0x80]
006c75f0  84 50 9d e5                                      ldr r5, [sp, #0x84]
006c75f4  20 20 84 e5                                      str r2, [r4, #0x20]
006c75f8  1c 30 84 e5                                      str r3, [r4, #0x1c]
006c75fc  00 00 84 e5                                      str r0, [r4]
006c7600  04 b0 84 e5                                      str fp, [r4, #4]
006c7604  08 90 84 e5                                      str sb, [r4, #8]
006c7608  0c a0 84 e5                                      str sl, [r4, #0xc]
006c760c  10 80 84 e5                                      str r8, [r4, #0x10]
006c7610  14 70 84 e5                                      str r7, [r4, #0x14]
006c7614  18 50 84 e5                                      str r5, [r4, #0x18]
006c7618  10 10 9d e5                                      ldr r1, [sp, #0x10]
006c761c  08 20 8d e5                                      str r2, [sp, #8]
006c7620  0c 30 8d e5                                      str r3, [sp, #0xc]
006c7624  d0 1d f1 eb                                      bl #0x30ed6c
006c7628  00 00 84 e5                                      str r0, [r4]
006c762c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006c7630  0b 00 a0 e1                                      mov r0, fp
006c7634  cc 1d f1 eb                                      bl #0x30ed6c
006c7638  04 00 84 e5                                      str r0, [r4, #4]
006c763c  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c7640  09 00 a0 e1                                      mov r0, sb
006c7644  c8 1d f1 eb                                      bl #0x30ed6c
006c7648  08 00 84 e5                                      str r0, [r4, #8]
006c764c  10 10 9d e5                                      ldr r1, [sp, #0x10]
006c7650  0a 00 a0 e1                                      mov r0, sl
006c7654  c4 1d f1 eb                                      bl #0x30ed6c
006c7658  0c 00 84 e5                                      str r0, [r4, #0xc]
006c765c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006c7660  08 00 a0 e1                                      mov r0, r8
006c7664  c0 1d f1 eb                                      bl #0x30ed6c
006c7668  10 00 84 e5                                      str r0, [r4, #0x10]
006c766c  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c7670  07 00 a0 e1                                      mov r0, r7
006c7674  bc 1d f1 eb                                      bl #0x30ed6c
006c7678  14 00 84 e5                                      str r0, [r4, #0x14]
006c767c  10 10 9d e5                                      ldr r1, [sp, #0x10]
006c7680  05 00 a0 e1                                      mov r0, r5
006c7684  b8 1d f1 eb                                      bl #0x30ed6c
006c7688  18 00 84 e5                                      str r0, [r4, #0x18]
006c768c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c7690  14 10 9d e5                                      ldr r1, [sp, #0x14]
006c7694  03 00 a0 e1                                      mov r0, r3
006c7698  b3 1d f1 eb                                      bl #0x30ed6c
006c769c  1c 00 84 e5                                      str r0, [r4, #0x1c]
006c76a0  08 20 9d e5                                      ldr r2, [sp, #8]
006c76a4  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c76a8  02 00 a0 e1                                      mov r0, r2
006c76ac  ae 1d f1 eb                                      bl #0x30ed6c
006c76b0  20 00 84 e5                                      str r0, [r4, #0x20]
006c76b4  10 10 9d e5                                      ldr r1, [sp, #0x10]
006c76b8  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
006c76bc  aa 1d f1 eb                                      bl #0x30ed6c
006c76c0  14 10 9d e5                                      ldr r1, [sp, #0x14]
006c76c4  00 50 a0 e1                                      mov r5, r0
006c76c8  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
006c76cc  a6 1d f1 eb                                      bl #0x30ed6c
006c76d0  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c76d4  00 40 a0 e1                                      mov r4, r0
006c76d8  ec 00 9d e5                                      ldr r0, [sp, #0xec]
006c76dc  a2 1d f1 eb                                      bl #0x30ed6c
006c76e0  00 50 86 e5                                      str r5, [r6]
006c76e4  04 40 86 e5                                      str r4, [r6, #4]
006c76e8  08 00 86 e5                                      str r0, [r6, #8]
006c76ec  16 ff ff ea                                      b #0x6c734c
006c76f0  04 00 97 e5                                      ldr r0, [r7, #4]
006c76f4  05 10 a0 e1                                      mov r1, r5
006c76f8  23 1a f1 eb                                      bl #0x30df8c
006c76fc  00 00 50 e3                                      cmp r0, #0
006c7700  73 ff ff 0a                                      beq #0x6c74d4
006c7704  05 10 a0 e1                                      mov r1, r5
006c7708  08 00 97 e5                                      ldr r0, [r7, #8]
006c770c  1e 1a f1 eb                                      bl #0x30df8c
006c7710  00 00 50 e3                                      cmp r0, #0
006c7714  90 30 9d 15                                      ldrne r3, [sp, #0x90]
006c7718  aa ff ff 1a                                      bne #0x6c75c8
006c771c  6c ff ff ea                                      b #0x6c74d4

; FUNCTION 0x006c7720, declared_size=196, range_size=196, mode=arm
; class-group: glitch::scene::CSceneCollisionManager
; alias: _ZN6glitch5scene22CSceneCollisionManager26getCollisionResultPositionEPNS0_17ITriangleSelectorERKNS_4core8vector3dIfEES8_S8_RNS4_10triangle3dIfEERbfS8_
; demangled: glitch::scene::CSceneCollisionManager::getCollisionResultPosition(glitch::scene::ITriangleSelector*, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::triangle3d<float>&, bool&, float, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006c7720  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006c7724  00 70 52 e2                                      subs r7, r2, #0
006c7728  18 d0 4d e2                                      sub sp, sp, #0x18
006c772c  00 40 a0 e1                                      mov r4, r0
006c7730  01 80 a0 e1                                      mov r8, r1
006c7734  03 60 a0 e1                                      mov r6, r3
006c7738  30 50 9d e5                                      ldr r5, [sp, #0x30]
006c773c  04 00 00 0a                                      beq #0x6c7754
006c7740  00 00 95 e5                                      ldr r0, [r5]
006c7744  00 10 a0 e3                                      mov r1, #0
006c7748  0f 1a f1 eb                                      bl #0x30df8c
006c774c  00 00 50 e3                                      cmp r0, #0
006c7750  08 00 00 0a                                      beq #0x6c7778
006c7754  00 30 96 e5                                      ldr r3, [r6]
006c7758  00 30 84 e5                                      str r3, [r4]
006c775c  04 30 96 e5                                      ldr r3, [r6, #4]
006c7760  04 30 84 e5                                      str r3, [r4, #4]
006c7764  08 30 96 e5                                      ldr r3, [r6, #8]
006c7768  08 30 84 e5                                      str r3, [r4, #8]
006c776c  04 00 a0 e1                                      mov r0, r4
006c7770  18 d0 8d e2                                      add sp, sp, #0x18
006c7774  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006c7778  04 00 95 e5                                      ldr r0, [r5, #4]
006c777c  00 10 a0 e3                                      mov r1, #0
006c7780  01 1a f1 eb                                      bl #0x30df8c
006c7784  00 00 50 e3                                      cmp r0, #0
006c7788  f1 ff ff 1a                                      bne #0x6c7754
006c778c  08 00 95 e5                                      ldr r0, [r5, #8]
006c7790  00 10 a0 e3                                      mov r1, #0
006c7794  fc 19 f1 eb                                      bl #0x30df8c
006c7798  00 00 50 e3                                      cmp r0, #0
006c779c  ec ff ff 1a                                      bne #0x6c7754
006c77a0  34 c0 9d e5                                      ldr ip, [sp, #0x34]
006c77a4  08 10 a0 e1                                      mov r1, r8
006c77a8  07 20 a0 e1                                      mov r2, r7
006c77ac  04 c0 8d e5                                      str ip, [sp, #4]
006c77b0  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006c77b4  06 30 a0 e1                                      mov r3, r6
006c77b8  04 00 a0 e1                                      mov r0, r4
006c77bc  08 c0 8d e5                                      str ip, [sp, #8]
006c77c0  44 c0 9d e5                                      ldr ip, [sp, #0x44]
006c77c4  00 50 8d e5                                      str r5, [sp]
006c77c8  0c c0 8d e5                                      str ip, [sp, #0xc]
006c77cc  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006c77d0  10 c0 8d e5                                      str ip, [sp, #0x10]
006c77d4  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006c77d8  14 c0 8d e5                                      str ip, [sp, #0x14]
006c77dc  c4 fe ff eb                                      bl #0x6c72f4
006c77e0  e1 ff ff ea                                      b #0x6c776c
