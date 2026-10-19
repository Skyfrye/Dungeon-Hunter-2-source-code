; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035abc4, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::IMeshSceneNode
; alias: _ZN6glitch5scene14IMeshSceneNodeD1Ev
; demangled: glitch::scene::IMeshSceneNode::~IMeshSceneNode()
; decoder-mode: arm
0035abc4  38 30 9f e5                                      ldr r3, [pc, #0x38]
0035abc8  38 20 9f e5                                      ldr r2, [pc, #0x38]
0035abcc  38 10 9f e5                                      ldr r1, [pc, #0x38]
0035abd0  03 30 8f e0                                      add r3, pc, r3
0035abd4  02 20 93 e7                                      ldr r2, [r3, r2]
0035abd8  01 10 93 e7                                      ldr r1, [r3, r1]
0035abdc  10 40 2d e9                                      push {r4, lr}
0035abe0  4a cf 82 e2                                      add ip, r2, #0x128
0035abe4  1c 20 82 e2                                      add r2, r2, #0x1c
0035abe8  00 40 a0 e1                                      mov r4, r0
0035abec  00 20 80 e5                                      str r2, [r0]
0035abf0  30 c1 80 e5                                      str ip, [r0, #0x130]
0035abf4  04 10 81 e2                                      add r1, r1, #4
0035abf8  2f f8 08 eb                                      bl #0x598cbc
0035abfc  04 00 a0 e1                                      mov r0, r4
0035ac00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0035ac04  c0 9e 63 00 3c 2e 00 00 24 4c 00 00              .byte 0xc0, 0x9e, 0x63, 0x00, 0x3c, 0x2e, 0x00, 0x00, 0x24, 0x4c, 0x00, 0x00

; FUNCTION 0x0035ac10, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IMeshSceneNode
; alias: _ZTv0_n24_N6glitch5scene14IMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::IMeshSceneNode::~IMeshSceneNode()
; decoder-mode: arm
0035ac10  00 30 90 e5                                      ldr r3, [r0]
0035ac14  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035ac18  03 00 80 e0                                      add r0, r0, r3
0035ac1c  e8 ff ff ea                                      b #0x35abc4

; FUNCTION 0x0035ac20, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IMeshSceneNode
; alias: _ZTv0_n12_N6glitch5scene14IMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::IMeshSceneNode::~IMeshSceneNode()
; decoder-mode: arm
0035ac20  00 30 90 e5                                      ldr r3, [r0]
0035ac24  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035ac28  03 00 80 e0                                      add r0, r0, r3
0035ac2c  e4 ff ff ea                                      b #0x35abc4

; FUNCTION 0x0035b3dc, declared_size=124, range_size=124, mode=arm
; class-group: glitch::scene::IMeshSceneNode
; alias: _ZN6glitch5scene14IMeshSceneNodeD0Ev
; demangled: glitch::scene::IMeshSceneNode::~IMeshSceneNode()
; decoder-mode: arm
0035b3dc  70 40 2d e9                                      push {r4, r5, r6, lr}
0035b3e0  60 50 9f e5                                      ldr r5, [pc, #0x60]
0035b3e4  60 30 9f e5                                      ldr r3, [pc, #0x60]
0035b3e8  60 60 9f e5                                      ldr r6, [pc, #0x60]
0035b3ec  05 50 8f e0                                      add r5, pc, r5
0035b3f0  03 30 95 e7                                      ldr r3, [r5, r3]
0035b3f4  06 60 95 e7                                      ldr r6, [r5, r6]
0035b3f8  00 40 a0 e1                                      mov r4, r0
0035b3fc  4a 2f 83 e2                                      add r2, r3, #0x128
0035b400  1c 30 83 e2                                      add r3, r3, #0x1c
0035b404  04 10 86 e2                                      add r1, r6, #4
0035b408  00 30 80 e5                                      str r3, [r0]
0035b40c  30 21 80 e5                                      str r2, [r0, #0x130]
0035b410  29 f6 08 eb                                      bl #0x598cbc
0035b414  18 20 96 e5                                      ldr r2, [r6, #0x18]
0035b418  34 30 9f e5                                      ldr r3, [pc, #0x34]
0035b41c  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
0035b420  00 20 84 e5                                      str r2, [r4]
0035b424  03 30 95 e7                                      ldr r3, [r5, r3]
0035b428  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0035b42c  04 00 a0 e1                                      mov r0, r4
0035b430  08 30 83 e2                                      add r3, r3, #8
0035b434  02 10 84 e7                                      str r1, [r4, r2]
0035b438  30 31 84 e5                                      str r3, [r4, #0x130]
0035b43c  ff d3 fe eb                                      bl #0x310440
0035b440  04 00 a0 e1                                      mov r0, r4
0035b444  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035b448  a4 96 63 00 3c 2e 00 00 24 4c 00 00 44 2b 00 00  .byte 0xa4, 0x96, 0x63, 0x00, 0x3c, 0x2e, 0x00, 0x00, 0x24, 0x4c, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x0035b458, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IMeshSceneNode
; alias: _ZTv0_n24_N6glitch5scene14IMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::IMeshSceneNode::~IMeshSceneNode()
; decoder-mode: arm
0035b458  00 30 90 e5                                      ldr r3, [r0]
0035b45c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035b460  03 00 80 e0                                      add r0, r0, r3
0035b464  dc ff ff ea                                      b #0x35b3dc

; FUNCTION 0x0035b468, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IMeshSceneNode
; alias: _ZTv0_n12_N6glitch5scene14IMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::IMeshSceneNode::~IMeshSceneNode()
; decoder-mode: arm
0035b468  00 30 90 e5                                      ldr r3, [r0]
0035b46c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b470  03 00 80 e0                                      add r0, r0, r3
0035b474  d8 ff ff ea                                      b #0x35b3dc

; FUNCTION 0x00596cc8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::scene::IMeshSceneNode
; alias: _ZN6glitch5scene14IMeshSceneNode30setNodeHierarchyAsShadowCasterEb
; demangled: glitch::scene::IMeshSceneNode::setNodeHierarchyAsShadowCaster(bool)
; decoder-mode: arm
00596cc8  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
00596ccc  00 00 51 e3                                      cmp r1, #0
00596cd0  02 3b 83 13                                      orrne r3, r3, #0x800
00596cd4  02 3b c3 03                                      biceq r3, r3, #0x800
00596cd8  1c 31 80 e5                                      str r3, [r0, #0x11c]
00596cdc  07 02 00 ea                                      b #0x597500
