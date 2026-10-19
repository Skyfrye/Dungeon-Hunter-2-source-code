; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006ca900, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCollisionResponse
; alias: _ZThn4_N6glitch5scene35ISceneNodeAnimatorCollisionResponseD1Ev
; demangled: non-virtual thunk to glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006ca900  04 00 40 e2                                      sub r0, r0, #4
006ca904  ff ff ff ea                                      b #0x6ca908

; FUNCTION 0x006ca908, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35ISceneNodeAnimatorCollisionResponseD1Ev
; demangled: glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006ca908  40 30 9f e5                                      ldr r3, [pc, #0x40]
006ca90c  40 20 9f e5                                      ldr r2, [pc, #0x40]
006ca910  40 10 9f e5                                      ldr r1, [pc, #0x40]
006ca914  03 30 8f e0                                      add r3, pc, r3
006ca918  02 20 93 e7                                      ldr r2, [r3, r2]
006ca91c  01 10 93 e7                                      ldr r1, [r3, r1]
006ca920  10 40 2d e9                                      push {r4, lr}
006ca924  8c c0 82 e2                                      add ip, r2, #0x8c
006ca928  0c e0 82 e2                                      add lr, r2, #0xc
006ca92c  a8 20 82 e2                                      add r2, r2, #0xa8
006ca930  00 40 a0 e1                                      mov r4, r0
006ca934  00 e0 80 e5                                      str lr, [r0]
006ca938  0c 20 80 e5                                      str r2, [r0, #0xc]
006ca93c  04 c0 80 e5                                      str ip, [r0, #4]
006ca940  04 10 81 e2                                      add r1, r1, #4
006ca944  fb 3b fb eb                                      bl #0x599938
006ca948  04 00 a0 e1                                      mov r0, r4
006ca94c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006ca950  7c a1 2c 00 4c 43 00 00 c4 36 00 00              .byte 0x7c, 0xa1, 0x2c, 0x00, 0x4c, 0x43, 0x00, 0x00, 0xc4, 0x36, 0x00, 0x00

; FUNCTION 0x006ca95c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCollisionResponse
; alias: _ZTv0_n12_N6glitch5scene35ISceneNodeAnimatorCollisionResponseD1Ev
; demangled: virtual thunk to glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006ca95c  00 30 90 e5                                      ldr r3, [r0]
006ca960  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006ca964  03 00 80 e0                                      add r0, r0, r3
006ca968  e6 ff ff ea                                      b #0x6ca908

; FUNCTION 0x006caf58, declared_size=168, range_size=168, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35ISceneNodeAnimatorCollisionResponseC2Ev
; demangled: glitch::scene::ISceneNodeAnimatorCollisionResponse::ISceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006caf58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006caf5c  04 70 81 e2                                      add r7, r1, #4
006caf60  88 50 9f e5                                      ldr r5, [pc, #0x88]
006caf64  04 20 97 e5                                      ldr r2, [r7, #4]
006caf68  84 30 9f e5                                      ldr r3, [pc, #0x84]
006caf6c  05 50 8f e0                                      add r5, pc, r5
006caf70  00 20 80 e5                                      str r2, [r0]
006caf74  03 30 95 e7                                      ldr r3, [r5, r3]
006caf78  01 60 a0 e1                                      mov r6, r1
006caf7c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006caf80  08 10 97 e5                                      ldr r1, [r7, #8]
006caf84  08 30 83 e2                                      add r3, r3, #8
006caf88  00 40 a0 e1                                      mov r4, r0
006caf8c  02 10 80 e7                                      str r1, [r0, r2]
006caf90  04 30 80 e5                                      str r3, [r0, #4]
006caf94  7c 58 ff eb                                      bl #0x6a118c
006caf98  04 20 96 e5                                      ldr r2, [r6, #4]
006caf9c  54 30 9f e5                                      ldr r3, [pc, #0x54]
006cafa0  00 20 84 e5                                      str r2, [r4]
006cafa4  03 30 95 e7                                      ldr r3, [r5, r3]
006cafa8  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
006cafac  0c 00 97 e5                                      ldr r0, [r7, #0xc]
006cafb0  68 20 83 e2                                      add r2, r3, #0x68
006cafb4  40 30 9f e5                                      ldr r3, [pc, #0x40]
006cafb8  01 00 84 e7                                      str r0, [r4, r1]
006cafbc  04 20 84 e5                                      str r2, [r4, #4]
006cafc0  00 20 a0 e3                                      mov r2, #0
006cafc4  08 20 84 e5                                      str r2, [r4, #8]
006cafc8  00 20 96 e5                                      ldr r2, [r6]
006cafcc  03 30 95 e7                                      ldr r3, [r5, r3]
006cafd0  04 00 a0 e1                                      mov r0, r4
006cafd4  00 20 84 e5                                      str r2, [r4]
006cafd8  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006cafdc  14 10 96 e5                                      ldr r1, [r6, #0x14]
006cafe0  8c 30 83 e2                                      add r3, r3, #0x8c
006cafe4  02 10 84 e7                                      str r1, [r4, r2]
006cafe8  04 30 84 e5                                      str r3, [r4, #4]
006cafec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006caff0  24 9b 2c 00 4c 27 00 00 08 23 00 00 4c 43 00 00  .byte 0x24, 0x9b, 0x2c, 0x00, 0x4c, 0x27, 0x00, 0x00, 0x08, 0x23, 0x00, 0x00, 0x4c, 0x43, 0x00, 0x00

; FUNCTION 0x006cb384, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCollisionResponse
; alias: _ZThn4_N6glitch5scene35ISceneNodeAnimatorCollisionResponseD0Ev
; demangled: non-virtual thunk to glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006cb384  04 00 40 e2                                      sub r0, r0, #4
006cb388  ff ff ff ea                                      b #0x6cb38c

; FUNCTION 0x006cb38c, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCollisionResponse
; alias: _ZN6glitch5scene35ISceneNodeAnimatorCollisionResponseD0Ev
; demangled: glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006cb38c  48 30 9f e5                                      ldr r3, [pc, #0x48]
006cb390  48 20 9f e5                                      ldr r2, [pc, #0x48]
006cb394  48 10 9f e5                                      ldr r1, [pc, #0x48]
006cb398  03 30 8f e0                                      add r3, pc, r3
006cb39c  02 20 93 e7                                      ldr r2, [r3, r2]
006cb3a0  01 10 93 e7                                      ldr r1, [r3, r1]
006cb3a4  10 40 2d e9                                      push {r4, lr}
006cb3a8  8c c0 82 e2                                      add ip, r2, #0x8c
006cb3ac  0c e0 82 e2                                      add lr, r2, #0xc
006cb3b0  a8 20 82 e2                                      add r2, r2, #0xa8
006cb3b4  00 40 a0 e1                                      mov r4, r0
006cb3b8  00 e0 80 e5                                      str lr, [r0]
006cb3bc  0c 20 80 e5                                      str r2, [r0, #0xc]
006cb3c0  04 c0 80 e5                                      str ip, [r0, #4]
006cb3c4  04 10 81 e2                                      add r1, r1, #4
006cb3c8  5a 39 fb eb                                      bl #0x599938
006cb3cc  04 00 a0 e1                                      mov r0, r4
006cb3d0  b6 0b f1 eb                                      bl #0x30e2b0
006cb3d4  04 00 a0 e1                                      mov r0, r4
006cb3d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006cb3dc  f8 96 2c 00 4c 43 00 00 c4 36 00 00              .byte 0xf8, 0x96, 0x2c, 0x00, 0x4c, 0x43, 0x00, 0x00, 0xc4, 0x36, 0x00, 0x00

; FUNCTION 0x006cb3e8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCollisionResponse
; alias: _ZTv0_n12_N6glitch5scene35ISceneNodeAnimatorCollisionResponseD0Ev
; demangled: virtual thunk to glitch::scene::ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse()
; decoder-mode: arm
006cb3e8  00 30 90 e5                                      ldr r3, [r0]
006cb3ec  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cb3f0  03 00 80 e0                                      add r0, r0, r3
006cb3f4  e4 ff ff ea                                      b #0x6cb38c
