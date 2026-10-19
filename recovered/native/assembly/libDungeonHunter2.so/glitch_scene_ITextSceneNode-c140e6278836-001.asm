; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006d5a7c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ITextSceneNode
; alias: _ZThn4_N6glitch5scene14ITextSceneNodeD1Ev
; demangled: non-virtual thunk to glitch::scene::ITextSceneNode::~ITextSceneNode()
; decoder-mode: arm
006d5a7c  04 00 40 e2                                      sub r0, r0, #4
006d5a80  ff ff ff ea                                      b #0x6d5a84

; FUNCTION 0x006d5a84, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::ITextSceneNode
; alias: _ZN6glitch5scene14ITextSceneNodeD1Ev
; demangled: glitch::scene::ITextSceneNode::~ITextSceneNode()
; decoder-mode: arm
006d5a84  44 30 9f e5                                      ldr r3, [pc, #0x44]
006d5a88  44 20 9f e5                                      ldr r2, [pc, #0x44]
006d5a8c  44 10 9f e5                                      ldr r1, [pc, #0x44]
006d5a90  03 30 8f e0                                      add r3, pc, r3
006d5a94  02 20 93 e7                                      ldr r2, [r3, r2]
006d5a98  01 10 93 e7                                      ldr r1, [r3, r1]
006d5a9c  10 40 2d e9                                      push {r4, lr}
006d5aa0  00 40 a0 e1                                      mov r4, r0
006d5aa4  10 c0 82 e2                                      add ip, r2, #0x10
006d5aa8  05 0d 82 e2                                      add r0, r2, #0x140
006d5aac  3c 20 82 e2                                      add r2, r2, #0x3c
006d5ab0  34 01 84 e5                                      str r0, [r4, #0x134]
006d5ab4  00 c0 84 e5                                      str ip, [r4]
006d5ab8  04 20 84 e5                                      str r2, [r4, #4]
006d5abc  04 10 81 e2                                      add r1, r1, #4
006d5ac0  04 00 84 e2                                      add r0, r4, #4
006d5ac4  7c 0c fb eb                                      bl #0x598cbc
006d5ac8  04 00 a0 e1                                      mov r0, r4
006d5acc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006d5ad0  00 f0 2b 00 b0 39 00 00 14 1a 00 00              .byte 0x00, 0xf0, 0x2b, 0x00, 0xb0, 0x39, 0x00, 0x00, 0x14, 0x1a, 0x00, 0x00

; FUNCTION 0x006d5adc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ITextSceneNode
; alias: _ZTv0_n24_N6glitch5scene14ITextSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::ITextSceneNode::~ITextSceneNode()
; decoder-mode: arm
006d5adc  00 30 90 e5                                      ldr r3, [r0]
006d5ae0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006d5ae4  03 00 80 e0                                      add r0, r0, r3
006d5ae8  e5 ff ff ea                                      b #0x6d5a84

; FUNCTION 0x006d5aec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ITextSceneNode
; alias: _ZTv0_n12_N6glitch5scene14ITextSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::ITextSceneNode::~ITextSceneNode()
; decoder-mode: arm
006d5aec  00 30 90 e5                                      ldr r3, [r0]
006d5af0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d5af4  03 00 80 e0                                      add r0, r0, r3
006d5af8  e1 ff ff ea                                      b #0x6d5a84

; FUNCTION 0x006d5b5c, declared_size=164, range_size=164, mode=arm
; class-group: glitch::scene::ITextSceneNode
; alias: _ZN6glitch5scene14ITextSceneNodeC2EiRKNS_4core8vector3dIfEE
; demangled: glitch::scene::ITextSceneNode::ITextSceneNode(int, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006d5b5c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006d5b60  90 e0 9f e5                                      ldr lr, [pc, #0x90]
006d5b64  90 50 9f e5                                      ldr r5, [pc, #0x90]
006d5b68  2c d0 4d e2                                      sub sp, sp, #0x2c
006d5b6c  0e e0 8f e0                                      add lr, pc, lr
006d5b70  05 50 9e e7                                      ldr r5, [lr, r5]
006d5b74  0c 70 8d e2                                      add r7, sp, #0xc
006d5b78  00 40 a0 e1                                      mov r4, r0
006d5b7c  08 50 85 e2                                      add r5, r5, #8
006d5b80  04 50 80 e4                                      str r5, [r0], #4
006d5b84  fe c5 a0 e3                                      mov ip, #0x3f800000
006d5b88  01 50 a0 e1                                      mov r5, r1
006d5b8c  00 60 a0 e3                                      mov r6, #0
006d5b90  00 70 8d e5                                      str r7, [sp]
006d5b94  04 10 81 e2                                      add r1, r1, #4
006d5b98  1c 70 8d e2                                      add r7, sp, #0x1c
006d5b9c  14 60 8d e5                                      str r6, [sp, #0x14]
006d5ba0  24 c0 8d e5                                      str ip, [sp, #0x24]
006d5ba4  04 70 8d e5                                      str r7, [sp, #4]
006d5ba8  0c 60 8d e5                                      str r6, [sp, #0xc]
006d5bac  10 60 8d e5                                      str r6, [sp, #0x10]
006d5bb0  18 c0 8d e5                                      str ip, [sp, #0x18]
006d5bb4  1c c0 8d e5                                      str ip, [sp, #0x1c]
006d5bb8  20 c0 8d e5                                      str ip, [sp, #0x20]
006d5bbc  3f 0d fb eb                                      bl #0x5990c0
006d5bc0  00 30 95 e5                                      ldr r3, [r5]
006d5bc4  04 00 a0 e1                                      mov r0, r4
006d5bc8  00 30 84 e5                                      str r3, [r4]
006d5bcc  10 20 95 e5                                      ldr r2, [r5, #0x10]
006d5bd0  04 20 84 e5                                      str r2, [r4, #4]
006d5bd4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d5bd8  14 20 95 e5                                      ldr r2, [r5, #0x14]
006d5bdc  03 20 84 e7                                      str r2, [r4, r3]
006d5be0  00 30 94 e5                                      ldr r3, [r4]
006d5be4  18 20 95 e5                                      ldr r2, [r5, #0x18]
006d5be8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006d5bec  03 20 84 e7                                      str r2, [r4, r3]
006d5bf0  2c d0 8d e2                                      add sp, sp, #0x2c
006d5bf4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
006d5bf8  24 ef 2b 00 c4 0a 00 00                          .byte 0x24, 0xef, 0x2b, 0x00, 0xc4, 0x0a, 0x00, 0x00

; FUNCTION 0x006d685c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ITextSceneNode
; alias: _ZThn4_N6glitch5scene14ITextSceneNodeD0Ev
; demangled: non-virtual thunk to glitch::scene::ITextSceneNode::~ITextSceneNode()
; decoder-mode: arm
006d685c  04 00 40 e2                                      sub r0, r0, #4
006d6860  ff ff ff ea                                      b #0x6d6864

; FUNCTION 0x006d6864, declared_size=96, range_size=96, mode=arm
; class-group: glitch::scene::ITextSceneNode
; alias: _ZN6glitch5scene14ITextSceneNodeD0Ev
; demangled: glitch::scene::ITextSceneNode::~ITextSceneNode()
; decoder-mode: arm
006d6864  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
006d6868  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
006d686c  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
006d6870  03 30 8f e0                                      add r3, pc, r3
006d6874  02 20 93 e7                                      ldr r2, [r3, r2]
006d6878  01 10 93 e7                                      ldr r1, [r3, r1]
006d687c  10 40 2d e9                                      push {r4, lr}
006d6880  00 40 a0 e1                                      mov r4, r0
006d6884  10 c0 82 e2                                      add ip, r2, #0x10
006d6888  05 0d 82 e2                                      add r0, r2, #0x140
006d688c  3c 20 82 e2                                      add r2, r2, #0x3c
006d6890  00 c0 84 e5                                      str ip, [r4]
006d6894  04 20 84 e5                                      str r2, [r4, #4]
006d6898  34 01 84 e5                                      str r0, [r4, #0x134]
006d689c  04 10 81 e2                                      add r1, r1, #4
006d68a0  04 00 84 e2                                      add r0, r4, #4
006d68a4  04 09 fb eb                                      bl #0x598cbc
006d68a8  04 00 a0 e1                                      mov r0, r4
006d68ac  7f de f0 eb                                      bl #0x30e2b0
006d68b0  04 00 a0 e1                                      mov r0, r4
006d68b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006d68b8  20 e2 2b 00 b0 39 00 00 14 1a 00 00              .byte 0x20, 0xe2, 0x2b, 0x00, 0xb0, 0x39, 0x00, 0x00, 0x14, 0x1a, 0x00, 0x00

; FUNCTION 0x006d68c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ITextSceneNode
; alias: _ZTv0_n24_N6glitch5scene14ITextSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::ITextSceneNode::~ITextSceneNode()
; decoder-mode: arm
006d68c4  00 30 90 e5                                      ldr r3, [r0]
006d68c8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006d68cc  03 00 80 e0                                      add r0, r0, r3
006d68d0  e3 ff ff ea                                      b #0x6d6864

; FUNCTION 0x006d68d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ITextSceneNode
; alias: _ZTv0_n12_N6glitch5scene14ITextSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::ITextSceneNode::~ITextSceneNode()
; decoder-mode: arm
006d68d4  00 30 90 e5                                      ldr r3, [r0]
006d68d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d68dc  03 00 80 e0                                      add r0, r0, r3
006d68e0  df ff ff ea                                      b #0x6d6864
