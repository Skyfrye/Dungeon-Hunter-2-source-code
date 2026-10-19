; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050a474, declared_size=76, range_size=76, mode=arm
; class-group: AssetManager::SceneNode
; alias: _ZN12AssetManager9SceneNodeD1Ev
; demangled: AssetManager::SceneNode::~SceneNode()
; decoder-mode: arm
0050a474  10 40 2d e9                                      push {r4, lr}
0050a478  38 30 9f e5                                      ldr r3, [pc, #0x38]
0050a47c  38 20 9f e5                                      ldr r2, [pc, #0x38]
0050a480  08 10 90 e5                                      ldr r1, [r0, #8]
0050a484  03 30 8f e0                                      add r3, pc, r3
0050a488  02 20 93 e7                                      ldr r2, [r3, r2]
0050a48c  00 00 51 e3                                      cmp r1, #0
0050a490  00 40 a0 e1                                      mov r4, r0
0050a494  08 20 82 e2                                      add r2, r2, #8
0050a498  00 20 80 e5                                      str r2, [r0]
0050a49c  03 00 00 0a                                      beq #0x50a4b0
0050a4a0  00 30 91 e5                                      ldr r3, [r1]
0050a4a4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0050a4a8  00 00 81 e0                                      add r0, r1, r0
0050a4ac  34 4c f8 eb                                      bl #0x31d584
0050a4b0  04 00 a0 e1                                      mov r0, r4
0050a4b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0050a4b8  0c a6 48 00 20 49 00 00                          .byte 0x0c, 0xa6, 0x48, 0x00, 0x20, 0x49, 0x00, 0x00

; FUNCTION 0x0050a794, declared_size=84, range_size=84, mode=arm
; class-group: AssetManager::SceneNode
; alias: _ZN12AssetManager9SceneNodeD0Ev
; demangled: AssetManager::SceneNode::~SceneNode()
; decoder-mode: arm
0050a794  10 40 2d e9                                      push {r4, lr}
0050a798  40 30 9f e5                                      ldr r3, [pc, #0x40]
0050a79c  40 20 9f e5                                      ldr r2, [pc, #0x40]
0050a7a0  08 10 90 e5                                      ldr r1, [r0, #8]
0050a7a4  03 30 8f e0                                      add r3, pc, r3
0050a7a8  02 20 93 e7                                      ldr r2, [r3, r2]
0050a7ac  00 00 51 e3                                      cmp r1, #0
0050a7b0  00 40 a0 e1                                      mov r4, r0
0050a7b4  08 20 82 e2                                      add r2, r2, #8
0050a7b8  00 20 80 e5                                      str r2, [r0]
0050a7bc  03 00 00 0a                                      beq #0x50a7d0
0050a7c0  00 30 91 e5                                      ldr r3, [r1]
0050a7c4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0050a7c8  00 00 81 e0                                      add r0, r1, r0
0050a7cc  6c 4b f8 eb                                      bl #0x31d584
0050a7d0  04 00 a0 e1                                      mov r0, r4
0050a7d4  19 17 f8 eb                                      bl #0x310440
0050a7d8  04 00 a0 e1                                      mov r0, r4
0050a7dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0050a7e0  ec a2 48 00 20 49 00 00                          .byte 0xec, 0xa2, 0x48, 0x00, 0x20, 0x49, 0x00, 0x00
