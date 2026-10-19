; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c7994, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraFPS
; alias: _ZThn4_N6glitch5scene27ISceneNodeAnimatorCameraFPSD1Ev
; demangled: non-virtual thunk to glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c7994  04 00 40 e2                                      sub r0, r0, #4
006c7998  ff ff ff ea                                      b #0x6c799c

; FUNCTION 0x006c799c, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27ISceneNodeAnimatorCameraFPSD1Ev
; demangled: glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c799c  40 30 9f e5                                      ldr r3, [pc, #0x40]
006c79a0  40 20 9f e5                                      ldr r2, [pc, #0x40]
006c79a4  40 10 9f e5                                      ldr r1, [pc, #0x40]
006c79a8  03 30 8f e0                                      add r3, pc, r3
006c79ac  02 20 93 e7                                      ldr r2, [r3, r2]
006c79b0  01 10 93 e7                                      ldr r1, [r3, r1]
006c79b4  10 40 2d e9                                      push {r4, lr}
006c79b8  80 c0 82 e2                                      add ip, r2, #0x80
006c79bc  0c e0 82 e2                                      add lr, r2, #0xc
006c79c0  9c 20 82 e2                                      add r2, r2, #0x9c
006c79c4  00 40 a0 e1                                      mov r4, r0
006c79c8  00 e0 80 e5                                      str lr, [r0]
006c79cc  0c 20 80 e5                                      str r2, [r0, #0xc]
006c79d0  04 c0 80 e5                                      str ip, [r0, #4]
006c79d4  04 10 81 e2                                      add r1, r1, #4
006c79d8  d6 47 fb eb                                      bl #0x599938
006c79dc  04 00 a0 e1                                      mov r0, r4
006c79e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006c79e4  e8 d0 2c 00 00 33 00 00 d8 14 00 00              .byte 0xe8, 0xd0, 0x2c, 0x00, 0x00, 0x33, 0x00, 0x00, 0xd8, 0x14, 0x00, 0x00

; FUNCTION 0x006c79f0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraFPS
; alias: _ZTv0_n12_N6glitch5scene27ISceneNodeAnimatorCameraFPSD1Ev
; demangled: virtual thunk to glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c79f0  00 30 90 e5                                      ldr r3, [r0]
006c79f4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c79f8  03 00 80 e0                                      add r0, r0, r3
006c79fc  e6 ff ff ea                                      b #0x6c799c

; FUNCTION 0x006c8a2c, declared_size=168, range_size=168, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27ISceneNodeAnimatorCameraFPSC2Ev
; demangled: glitch::scene::ISceneNodeAnimatorCameraFPS::ISceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c8a2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006c8a30  04 70 81 e2                                      add r7, r1, #4
006c8a34  88 50 9f e5                                      ldr r5, [pc, #0x88]
006c8a38  04 20 97 e5                                      ldr r2, [r7, #4]
006c8a3c  84 30 9f e5                                      ldr r3, [pc, #0x84]
006c8a40  05 50 8f e0                                      add r5, pc, r5
006c8a44  00 20 80 e5                                      str r2, [r0]
006c8a48  03 30 95 e7                                      ldr r3, [r5, r3]
006c8a4c  01 60 a0 e1                                      mov r6, r1
006c8a50  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006c8a54  08 10 97 e5                                      ldr r1, [r7, #8]
006c8a58  08 30 83 e2                                      add r3, r3, #8
006c8a5c  00 40 a0 e1                                      mov r4, r0
006c8a60  02 10 80 e7                                      str r1, [r0, r2]
006c8a64  04 30 80 e5                                      str r3, [r0, #4]
006c8a68  c7 61 ff eb                                      bl #0x6a118c
006c8a6c  04 20 96 e5                                      ldr r2, [r6, #4]
006c8a70  54 30 9f e5                                      ldr r3, [pc, #0x54]
006c8a74  00 20 84 e5                                      str r2, [r4]
006c8a78  03 30 95 e7                                      ldr r3, [r5, r3]
006c8a7c  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
006c8a80  0c 00 97 e5                                      ldr r0, [r7, #0xc]
006c8a84  68 20 83 e2                                      add r2, r3, #0x68
006c8a88  40 30 9f e5                                      ldr r3, [pc, #0x40]
006c8a8c  01 00 84 e7                                      str r0, [r4, r1]
006c8a90  04 20 84 e5                                      str r2, [r4, #4]
006c8a94  00 20 a0 e3                                      mov r2, #0
006c8a98  08 20 84 e5                                      str r2, [r4, #8]
006c8a9c  00 20 96 e5                                      ldr r2, [r6]
006c8aa0  03 30 95 e7                                      ldr r3, [r5, r3]
006c8aa4  04 00 a0 e1                                      mov r0, r4
006c8aa8  00 20 84 e5                                      str r2, [r4]
006c8aac  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006c8ab0  14 10 96 e5                                      ldr r1, [r6, #0x14]
006c8ab4  80 30 83 e2                                      add r3, r3, #0x80
006c8ab8  02 10 84 e7                                      str r1, [r4, r2]
006c8abc  04 30 84 e5                                      str r3, [r4, #4]
006c8ac0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006c8ac4  50 c0 2c 00 4c 27 00 00 08 23 00 00 00 33 00 00  .byte 0x50, 0xc0, 0x2c, 0x00, 0x4c, 0x27, 0x00, 0x00, 0x08, 0x23, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00

; FUNCTION 0x006c8bb8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraFPS
; alias: _ZThn4_N6glitch5scene27ISceneNodeAnimatorCameraFPSD0Ev
; demangled: non-virtual thunk to glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c8bb8  04 00 40 e2                                      sub r0, r0, #4
006c8bbc  ff ff ff ea                                      b #0x6c8bc0

; FUNCTION 0x006c8bc0, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraFPS
; alias: _ZN6glitch5scene27ISceneNodeAnimatorCameraFPSD0Ev
; demangled: glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c8bc0  48 30 9f e5                                      ldr r3, [pc, #0x48]
006c8bc4  48 20 9f e5                                      ldr r2, [pc, #0x48]
006c8bc8  48 10 9f e5                                      ldr r1, [pc, #0x48]
006c8bcc  03 30 8f e0                                      add r3, pc, r3
006c8bd0  02 20 93 e7                                      ldr r2, [r3, r2]
006c8bd4  01 10 93 e7                                      ldr r1, [r3, r1]
006c8bd8  10 40 2d e9                                      push {r4, lr}
006c8bdc  80 c0 82 e2                                      add ip, r2, #0x80
006c8be0  0c e0 82 e2                                      add lr, r2, #0xc
006c8be4  9c 20 82 e2                                      add r2, r2, #0x9c
006c8be8  00 40 a0 e1                                      mov r4, r0
006c8bec  00 e0 80 e5                                      str lr, [r0]
006c8bf0  0c 20 80 e5                                      str r2, [r0, #0xc]
006c8bf4  04 c0 80 e5                                      str ip, [r0, #4]
006c8bf8  04 10 81 e2                                      add r1, r1, #4
006c8bfc  4d 43 fb eb                                      bl #0x599938
006c8c00  04 00 a0 e1                                      mov r0, r4
006c8c04  a9 15 f1 eb                                      bl #0x30e2b0
006c8c08  04 00 a0 e1                                      mov r0, r4
006c8c0c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006c8c10  c4 be 2c 00 00 33 00 00 d8 14 00 00              .byte 0xc4, 0xbe, 0x2c, 0x00, 0x00, 0x33, 0x00, 0x00, 0xd8, 0x14, 0x00, 0x00

; FUNCTION 0x006c8c1c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNodeAnimatorCameraFPS
; alias: _ZTv0_n12_N6glitch5scene27ISceneNodeAnimatorCameraFPSD0Ev
; demangled: virtual thunk to glitch::scene::ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS()
; decoder-mode: arm
006c8c1c  00 30 90 e5                                      ldr r3, [r0]
006c8c20  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c8c24  03 00 80 e0                                      add r0, r0, r3
006c8c28  e4 ff ff ea                                      b #0x6c8bc0
