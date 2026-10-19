; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00588f84, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneManagerRootNode
; alias: _ZNK6glitch5scene21CSceneManagerRootNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneManagerRootNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00588f84  10 40 2d e9                                      push {r4, lr}
00588f88  10 31 90 e5                                      ldr r3, [r0, #0x110]
00588f8c  03 00 a0 e1                                      mov r0, r3
00588f90  00 30 93 e5                                      ldr r3, [r3]
00588f94  0f e0 a0 e1                                      mov lr, pc
00588f98  00 f0 93 e5                                      ldr pc, [r3]
00588f9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00588fa0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManagerRootNode
; alias: _ZTv0_n16_NK6glitch5scene21CSceneManagerRootNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CSceneManagerRootNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00588fa0  00 30 90 e5                                      ldr r3, [r0]
00588fa4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00588fa8  03 00 80 e0                                      add r0, r0, r3
00588fac  f4 ff ff ea                                      b #0x588f84

; FUNCTION 0x00588fb0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSceneManagerRootNode
; alias: _ZN6glitch5scene21CSceneManagerRootNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CSceneManagerRootNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00588fb0  10 40 2d e9                                      push {r4, lr}
00588fb4  10 31 90 e5                                      ldr r3, [r0, #0x110]
00588fb8  03 00 a0 e1                                      mov r0, r3
00588fbc  00 30 93 e5                                      ldr r3, [r3]
00588fc0  0f e0 a0 e1                                      mov lr, pc
00588fc4  04 f0 93 e5                                      ldr pc, [r3, #4]
00588fc8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00588fcc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManagerRootNode
; alias: _ZTv0_n20_N6glitch5scene21CSceneManagerRootNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CSceneManagerRootNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00588fcc  00 30 90 e5                                      ldr r3, [r0]
00588fd0  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00588fd4  03 00 80 e0                                      add r0, r0, r3
00588fd8  f4 ff ff ea                                      b #0x588fb0

; FUNCTION 0x00588fdc, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CSceneManagerRootNode
; alias: _ZNK6glitch5scene21CSceneManagerRootNode7getTypeEv
; demangled: glitch::scene::CSceneManagerRootNode::getType() const
; decoder-mode: arm
00588fdc  73 0d 06 e3                                      movw r0, #0x6d73
00588fe0  67 02 47 e3                                      movt r0, #0x7267
00588fe4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005899c8, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::CSceneManagerRootNode
; alias: _ZN6glitch5scene21CSceneManagerRootNodeD1Ev
; demangled: glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode()
; decoder-mode: arm
005899c8  54 30 9f e5                                      ldr r3, [pc, #0x54]
005899cc  54 10 9f e5                                      ldr r1, [pc, #0x54]
005899d0  54 20 9f e5                                      ldr r2, [pc, #0x54]
005899d4  03 30 8f e0                                      add r3, pc, r3
005899d8  01 10 93 e7                                      ldr r1, [r3, r1]
005899dc  10 40 2d e9                                      push {r4, lr}
005899e0  02 20 93 e7                                      ldr r2, [r3, r2]
005899e4  04 c0 91 e5                                      ldr ip, [r1, #4]
005899e8  14 e0 91 e5                                      ldr lr, [r1, #0x14]
005899ec  12 2e 82 e2                                      add r2, r2, #0x120
005899f0  48 21 80 e5                                      str r2, [r0, #0x148]
005899f4  00 c0 80 e5                                      str ip, [r0]
005899f8  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
005899fc  18 20 91 e5                                      ldr r2, [r1, #0x18]
00589a00  00 40 a0 e1                                      mov r4, r0
00589a04  0c e0 80 e7                                      str lr, [r0, ip]
00589a08  00 c0 90 e5                                      ldr ip, [r0]
00589a0c  08 10 81 e2                                      add r1, r1, #8
00589a10  0c 30 1c e5                                      ldr r3, [ip, #-0xc]
00589a14  03 20 80 e7                                      str r2, [r0, r3]
00589a18  a7 3c 00 eb                                      bl #0x598cbc
00589a1c  04 00 a0 e1                                      mov r0, r4
00589a20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00589a24  bc b0 40 00 64 10 00 00 3c 06 00 00              .byte 0xbc, 0xb0, 0x40, 0x00, 0x64, 0x10, 0x00, 0x00, 0x3c, 0x06, 0x00, 0x00

; FUNCTION 0x00589a30, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManagerRootNode
; alias: _ZTv0_n24_N6glitch5scene21CSceneManagerRootNodeD1Ev
; demangled: virtual thunk to glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode()
; decoder-mode: arm
00589a30  00 30 90 e5                                      ldr r3, [r0]
00589a34  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00589a38  03 00 80 e0                                      add r0, r0, r3
00589a3c  e1 ff ff ea                                      b #0x5899c8

; FUNCTION 0x00589a40, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManagerRootNode
; alias: _ZTv0_n12_N6glitch5scene21CSceneManagerRootNodeD1Ev
; demangled: virtual thunk to glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode()
; decoder-mode: arm
00589a40  00 30 90 e5                                      ldr r3, [r0]
00589a44  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00589a48  03 00 80 e0                                      add r0, r0, r3
00589a4c  dd ff ff ea                                      b #0x5899c8

; FUNCTION 0x0058a070, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CSceneManagerRootNode
; alias: _ZN6glitch5scene21CSceneManagerRootNodeC1EPNS0_13CSceneManagerE
; demangled: glitch::scene::CSceneManagerRootNode::CSceneManagerRootNode(glitch::scene::CSceneManager*)
; decoder-mode: arm
0058a070  70 40 2d e9                                      push {r4, r5, r6, lr}
0058a074  74 50 9f e5                                      ldr r5, [pc, #0x74]
0058a078  74 30 9f e5                                      ldr r3, [pc, #0x74]
0058a07c  74 20 9f e5                                      ldr r2, [pc, #0x74]
0058a080  05 50 8f e0                                      add r5, pc, r5
0058a084  03 30 95 e7                                      ldr r3, [r5, r3]
0058a088  02 20 95 e7                                      ldr r2, [r5, r2]
0058a08c  01 e0 a0 e3                                      mov lr, #1
0058a090  24 c0 93 e5                                      ldr ip, [r3, #0x24]
0058a094  08 20 82 e2                                      add r2, r2, #8
0058a098  4c e1 80 e5                                      str lr, [r0, #0x14c]
0058a09c  00 c0 80 e5                                      str ip, [r0]
0058a0a0  48 21 80 e5                                      str r2, [r0, #0x148]
0058a0a4  0c 20 1c e5                                      ldr r2, [ip, #-0xc]
0058a0a8  28 c0 93 e5                                      ldr ip, [r3, #0x28]
0058a0ac  01 60 a0 e1                                      mov r6, r1
0058a0b0  04 10 83 e2                                      add r1, r3, #4
0058a0b4  02 c0 80 e7                                      str ip, [r0, r2]
0058a0b8  00 20 e0 e3                                      mvn r2, #0
0058a0bc  00 40 a0 e1                                      mov r4, r0
0058a0c0  9b e6 ff eb                                      bl #0x583b34
0058a0c4  30 30 9f e5                                      ldr r3, [pc, #0x30]
0058a0c8  04 00 a0 e1                                      mov r0, r4
0058a0cc  06 10 a0 e1                                      mov r1, r6
0058a0d0  03 30 95 e7                                      ldr r3, [r5, r3]
0058a0d4  12 2e 83 e2                                      add r2, r3, #0x120
0058a0d8  1c 30 83 e2                                      add r3, r3, #0x1c
0058a0dc  00 30 84 e5                                      str r3, [r4]
0058a0e0  48 21 84 e5                                      str r2, [r4, #0x148]
0058a0e4  51 fb ff eb                                      bl #0x588e30
0058a0e8  04 00 a0 e1                                      mov r0, r4
0058a0ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0058a0f0  10 aa 40 00 64 10 00 00 44 2b 00 00 3c 06 00 00  .byte 0x10, 0xaa, 0x40, 0x00, 0x64, 0x10, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x3c, 0x06, 0x00, 0x00

; FUNCTION 0x0058c088, declared_size=112, range_size=112, mode=arm
; class-group: glitch::scene::CSceneManagerRootNode
; alias: _ZN6glitch5scene21CSceneManagerRootNodeD0Ev
; demangled: glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode()
; decoder-mode: arm
0058c088  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0058c08c  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0058c090  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0058c094  03 30 8f e0                                      add r3, pc, r3
0058c098  01 10 93 e7                                      ldr r1, [r3, r1]
0058c09c  10 40 2d e9                                      push {r4, lr}
0058c0a0  02 20 93 e7                                      ldr r2, [r3, r2]
0058c0a4  04 c0 91 e5                                      ldr ip, [r1, #4]
0058c0a8  14 e0 91 e5                                      ldr lr, [r1, #0x14]
0058c0ac  12 2e 82 e2                                      add r2, r2, #0x120
0058c0b0  48 21 80 e5                                      str r2, [r0, #0x148]
0058c0b4  00 c0 80 e5                                      str ip, [r0]
0058c0b8  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
0058c0bc  18 20 91 e5                                      ldr r2, [r1, #0x18]
0058c0c0  00 40 a0 e1                                      mov r4, r0
0058c0c4  0c e0 80 e7                                      str lr, [r0, ip]
0058c0c8  00 c0 90 e5                                      ldr ip, [r0]
0058c0cc  08 10 81 e2                                      add r1, r1, #8
0058c0d0  0c 30 1c e5                                      ldr r3, [ip, #-0xc]
0058c0d4  03 20 80 e7                                      str r2, [r0, r3]
0058c0d8  f7 32 00 eb                                      bl #0x598cbc
0058c0dc  04 00 a0 e1                                      mov r0, r4
0058c0e0  72 08 f6 eb                                      bl #0x30e2b0
0058c0e4  04 00 a0 e1                                      mov r0, r4
0058c0e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0058c0ec  fc 89 40 00 64 10 00 00 3c 06 00 00              .byte 0xfc, 0x89, 0x40, 0x00, 0x64, 0x10, 0x00, 0x00, 0x3c, 0x06, 0x00, 0x00

; FUNCTION 0x0058c0f8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManagerRootNode
; alias: _ZTv0_n24_N6glitch5scene21CSceneManagerRootNodeD0Ev
; demangled: virtual thunk to glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode()
; decoder-mode: arm
0058c0f8  00 30 90 e5                                      ldr r3, [r0]
0058c0fc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0058c100  03 00 80 e0                                      add r0, r0, r3
0058c104  df ff ff ea                                      b #0x58c088

; FUNCTION 0x0058c108, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSceneManagerRootNode
; alias: _ZTv0_n12_N6glitch5scene21CSceneManagerRootNodeD0Ev
; demangled: virtual thunk to glitch::scene::CSceneManagerRootNode::~CSceneManagerRootNode()
; decoder-mode: arm
0058c108  00 30 90 e5                                      ldr r3, [r0]
0058c10c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0058c110  03 00 80 e0                                      add r0, r0, r3
0058c114  db ff ff ea                                      b #0x58c088
